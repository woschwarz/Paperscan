#tag Module
Protected Module DocumentParser
	#tag Method, Flags = &h0
		Function GetText(filename As Folderitem) As String
		  Var shcommand As String = "pdftotext -layout -enc UTF-8 '" + filename.NativePath + "' -"
		  
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
		  Var shcommand As String = "gs -q -dNOPAUSE -sDEVICE=png16m -sOutputFile='" + outputFile.NativePath + ".png' -dLastPage=1 '" + inputFile.NativePath + "' -c quit"
		  
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
	#tag EndViewBehavior
End Module
#tag EndModule
