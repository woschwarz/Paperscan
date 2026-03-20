#tag Module
Protected Module DocumentParser
	#tag Method, Flags = &h0
		Function ExtractTextFromFile(filename As Folderitem) As String
		  Var sh As New Shell
		  Var shellcmd As String
		  
		  // The correct path must be used in Debug mode
		  #If TargetMacOs and DebugBuild Then
		    shellcmd = "/opt/homebrew/bin/" //macOS
		  #EndIf
		  
		  shellcmd = shellcmd  + "pdftotext -layout -enc UTF-8 " + filename.ShellPath + " -"
		  sh.Execute(shellcmd)
		  
		  #If DebugBuild Then System.DebugLog(shellcmd)
		  
		  If sh.ExitCode = 0 Then
		    lastExitCode = sh.ExitCode
		    System.DebugLog("pdftotext ok")
		    Var content As String = NormalizeSpaces(sh.Result)
		    Return content
		    
		  Else
		    lastExitCode = sh.ExitCode
		    System.DebugLog("pdftotext Errorcode " + sh.ExitCode.ToString + ", Result: " + sh.Result)
		    Return "Error"
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MakeThumbnail(inputFile As FolderItem, outputFile As FolderItem) As Boolean
		  Var sh As New Shell
		  Var shellcmd As String
		  Var outputPng As FolderItem = outputFile.Parent.Child(outputFile.Name + ".png")
		  
		  // The correct path must be used in Debug mode
		  #If TargetMacOs And DebugBuild Then
		    shellcmd = "/opt/homebrew/bin/" //macOS
		  #EndIf
		  
		  shellcmd = shellcmd + "gs -q -dNOPAUSE -sDEVICE=png16m -sOutputFile=" + outputPng.ShellPath + " -dLastPage=1 " + inputFile.ShellPath + " -c quit"
		  sh.Execute(shellcmd)
		  
		  If sh.ExitCode = 0 Then
		    lastExitCode = sh.ExitCode
		    System.DebugLog("Thumbnail ok")
		    Return True
		  Else
		    lastExitCode = sh.ExitCode
		    System.DebugLog("Thumbnail Errorcode " + sh.ExitCode.ToString + ", Result: " + sh.Result)
		    Return False
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NormalizeSpaces(input As String) As String
		  Var rx As New RegEx
		  rx.SearchPattern = "\s{2,}" 
		  rx.ReplacementPattern = " "
		  rx.Options.ReplaceAllMatches = True 
		  
		  Var result As String = rx.Replace(input).Trim
		  
		  Return result.Trim
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ParsePDF(pdfFilename As String) As ImportResult
		  System.DebugLog("Start parsing " + pdfFilename)
		  
		  Var f As FolderItem
		  f = New FolderItem(App.inputFolder.Child(pdfFilename)) 
		  
		  Var result As New ImportResult
		  result.StartedAt = DateTime.Now
		  result.SourceFile = If(pdfFilename <> "", pdfFilename, "")
		  result.Status = "failed"
		  result.Success = False
		  
		  
		  Try
		    // Parse Text
		    Var parsedPDF As String = ExtractTextFromFile(f).Trim
		    If parsedPDF = "Error" Then 
		      result.Message = "Text extraction failed."
		      result.FinishedAt = DateTime.Now
		      Return result
		    End If
		    
		    
		    If parsedPDF.Length <= 25 Then
		      // PDF contains less than 25 characters. 
		      // It is probably an image-based PDF without markable text. 
		      // Text recognition (OCR) must be performed.
		      
		      'ToDo
		    End If
		    
		    If parsedPDF.Length > 25 Then
		      // Document has more than 25 characters, then it will be processed
		      
		      // Caching Filedata Variables
		      Var CreationDate As String = f.CreationDateTime.SQLDateTime
		      Var ModificationDate As String = f.ModificationDateTime.SQLDateTime
		      
		      // Make a Thumbnail Image
		      Var thumbTarget As FolderItem = App.thumbnailFolder.Child(pdfFileName)
		      If Not MakeThumbnail(f, thumbTarget) Then
		        result.Message = "Thumbnail creation failed"
		        result.FinishedAt = DateTime.Now
		        Return Result
		      End If
		      
		      // Move PDF File to Media/Document Folder and save into Database
		      Var targetPdf As FolderItem = App.documentFolder.Child(pdfFileName)
		      f.MoveTo(targetPdf)
		      
		      // Save into DB
		      Var row As New DatabaseRow
		      
		      row.Column("company_id").IntegerValue = Session.mCompanyID
		      row.Column("filename").StringValue = f.Name
		      row.Column("content").StringValue = parsedPDF
		      row.Column("mime_type").StringValue = f.Type
		      row.Column("original_filename").StringValue = f.Name
		      row.Column("original_created_at").StringValue = CreationDate
		      row.Column("original_modified_at").StringValue = ModificationDate
		      row.Column("created_at").StringValue = DateTime.Now.SQLDateTime
		      row.Column("created_by").StringValue = Session.mUserName
		      
		      Session.imcDB.AddRow("documents", row)
		      System.DebugLog("Import in DB " + pdfFileName)
		      
		      result.Success = True
		      result.Status = "done"
		      result.Message = "Imported successfully."
		      
		    End If
		    
		  Catch e As DatabaseException
		    MessageBox ("DB Error: " + e.Message)
		    System.DebugLog(e.Message)
		    
		  Catch e As IOException
		    System.DebugLog("An IO exception occurred with MoveTo " + e.Message + " (Error: " + e.ErrorNumber.toString + ")")
		    
		  Catch e As RuntimeException
		    System.DebugLog("Runtime error: " + e.Message)
		    
		  End Try
		  
		  result.FinishedAt = DateTime.Now
		  Return result
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		lastExitCode As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastExitCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
