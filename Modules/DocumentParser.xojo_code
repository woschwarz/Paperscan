#tag Module
Protected Module DocumentParser
	#tag Method, Flags = &h0
		Function GetText(filename As Folderitem) As String
		  Var shcommand As String
		  
		  // The correct path must be used in Debug mode
		  #If DebugBuild Then
		    shcommand = "/opt/homebrew/bin/" //macOS
		  #EndIf
		  
		  shcommand = shcommand  + "pdftotext -layout -enc UTF-8 '" + filename.NativePath + "' -"
		  
		  System.DebugLog(shcommand)
		  
		  Var s As Shell
		  s = New Shell
		  
		  s.Execute(shcommand)
		  
		  If s.ExitCode = 0 Then
		    lastExitCode = s.ExitCode
		    System.DebugLog("pdftotext ok")
		    Return s.Result
		    
		  Else
		    lastExitCode = s.ExitCode
		    System.DebugLog("pdftotext Errorcode " + s.ExitCode.ToString + ", Result: " + s.Result)
		    Return "Error"
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MakeThumbnail(inputFile As FolderItem, outputFile As FolderItem) As Boolean
		  Var shcommand As String
		  
		  // The correct path must be used in Debug mode
		  #If DebugBuild Then
		    shcommand = "/opt/homebrew/bin/" //macOS
		  #EndIf
		  
		  shcommand = shcommand + "gs -q -dNOPAUSE -sDEVICE=png16m -sOutputFile='" + outputFile.NativePath + ".png' -dLastPage=1 '" + inputFile.NativePath + "' -c quit"
		  
		  Var s As Shell
		  s = New Shell
		  
		  s.Execute(shcommand)
		  
		  If s.ExitCode = 0 Then
		    lastExitCode = s.ExitCode
		    System.DebugLog("Thumbnail ok")
		    Return True
		  Else
		    lastExitCode = s.ExitCode
		    System.DebugLog("Thumbnail Errorcode " + s.ExitCode.ToString + ", Result: " + s.Result)
		    Return False
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ParsePDF(pdfFilename As String)
		  System.DebugLog("Start parsing " + pdfFilename)
		  
		  Var f As FolderItem
		  f = New FolderItem(App.inputFolder.Child(pdfFilename)) 
		  
		  
		  Var parsedPDF As String = GetText(f)
		  
		  If parsedPDF = "Error" Then 
		    Exit
		  End If
		  
		  
		  If Len(parsedPDF) > 25 Then
		    // Document has more than 25 characters, then it will be processed
		    
		    // Make a Thumbnail Image
		    Var g As FolderItem = App.thumbnailFolder.Child(pdfFileName)
		    If MakeThumbnail(f, g) Then
		      System.DebugLog("Thumbnail created")
		    Else
		      System.DebugLog("Thumbnail error")
		    End If
		    
		    // Move PDF File to Media/Document Folder and save in Database
		    Var h As FolderItem = App.documentFolder.Child(pdfFileName)
		    If h <> Nil Then
		      f.MoveTo(h) 'If the Filename is already exists it cannot be moved
		      
		      // Save in Database
		      Var row As New DatabaseRow
		      
		      row.Column("filename").StringValue = f.Name
		      row.Column("content").StringValue = parsedPDF
		      row.Column("created").StringValue = f.CreationDateTime.SQLDateTime
		      row.Column("modified").StringValue = f.ModificationDateTime.SQLDateTime
		      row.Column("added").StringValue = DateTime.Now.SQLDateTime
		      
		      Try
		        Session.imcDB.AddRow("documents", row)
		        System.DebugLog("Importin DB " + pdfFileName)
		      Catch e As DatabaseException
		        MessageBox("Error: " + e.Message)
		        System.DebugLog(e.Message)
		      End Try
		      
		      
		    End If
		    
		  Else
		    // Document has less than 25 characters, then run OCR
		    
		    'ToDo
		    
		  End If
		  
		  If lastExitCode = 0 Then
		    // Parsing finished
		  End If
		  
		  Exception err As IOException
		    System.DebugLog("an IO exception occurred (UploadFileContainer/ProcessPDF/Moveto)")
		    
		    
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
