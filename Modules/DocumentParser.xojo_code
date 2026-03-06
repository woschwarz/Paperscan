#tag Module
Protected Module DocumentParser
	#tag Method, Flags = &h0
		Function ExtractTextFromFile(filename As Folderitem) As String
		  Var shcommand As String
		  
		  // The correct path must be used in Debug mode
		  #If TargetMacOs and DebugBuild Then
		    shcommand = "/opt/homebrew/bin/" //macOS
		  #EndIf
		  
		  shcommand = shcommand  + "pdftotext -layout -enc UTF-8 '" + filename.NativePath + "' -"
		  
		  System.DebugLog(shcommand)
		  
		  Var sh As New Shell
		  sh.Execute(shcommand)
		  
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
		  Var shcommand As String
		  
		  // The correct path must be used in Debug mode
		  #If TargetMacOs And DebugBuild Then
		    shcommand = "/opt/homebrew/bin/" //macOS
		  #EndIf
		  
		  shcommand = shcommand + "gs -q -dNOPAUSE -sDEVICE=png16m -sOutputFile='" + outputFile.NativePath + ".png' -dLastPage=1 '" + inputFile.NativePath + "' -c quit"
		  
		  Var sh As New Shell
		  sh.Execute(shcommand)
		  
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
		Sub ParsePDF(pdfFilename As String)
		  System.DebugLog("Start parsing " + pdfFilename)
		  
		  Var f As FolderItem
		  f = New FolderItem(App.inputFolder.Child(pdfFilename)) 
		  
		  Var parsedPDF As String = ExtractTextFromFile(f).Trim
		  If parsedPDF = "Error" Then Exit
		  
		  
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
		    Var g As FolderItem = App.thumbnailFolder.Child(pdfFileName)
		    If MakeThumbnail(f, g) Then
		      System.DebugLog("Thumbnail created")
		    Else
		      System.DebugLog("Thumbnail error")
		    End If
		    
		    // Move PDF File to Media/Document Folder and save into Database
		    Var h As FolderItem = App.documentFolder.Child(pdfFileName)
		    
		    // If the Filename is already exists, it cannot be moved
		    If h <> Nil Then
		      
		      Try
		        f.MoveTo(h) 
		      Catch e As IOException
		        System.DebugLog("An IO exception occurred with MoveTo " + e.Message + " (Error: " + e.ErrorNumber.toString + ")")
		        Exit
		      End Try
		      
		    End If
		    
		    // Save into DB
		    Var row As New DatabaseRow
		    
		    row.Column("filename").StringValue = f.Name
		    row.Column("content").StringValue = parsedPDF
		    row.Column("created").StringValue = CreationDate
		    row.Column("modified").StringValue = ModificationDate
		    row.Column("added").StringValue = DateTime.Now.SQLDateTime
		    
		    Try
		      Session.imcDB.AddRow("documents", row)
		      System.DebugLog("Import in DB " + pdfFileName)
		    Catch e As DatabaseException
		      MessageBox("DB Error: " + e.Message)
		      System.DebugLog(e.Message)
		    End Try
		    
		  End If
		  
		  If lastExitCode = 0 Then
		    // Parsing finished
		  End If
		  
		End Sub
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
