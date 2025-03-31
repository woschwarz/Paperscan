#tag Class
Protected Class App
Inherits WebApplication
	#tag Event
		Sub Opening(args() As String)
		  // Set Folders
		  databaseFolder = SpecialFolder.Documents.Child("Paperscan").Child("Data")
		  inputFolder = SpecialFolder.Documents.Child("Paperscan").Child("Input")
		  mediaFolder = SpecialFolder.Documents.Child("Paperscan").Child("Media")
		  
		  documentFolder = SpecialFolder.Documents.Child("Paperscan").Child("Media").Child("Documents")
		  thumbnailFolder = SpecialFolder.Documents.Child("Paperscan").Child("Media").Child("Thumbnails")
		End Sub
	#tag EndEvent


	#tag Note, Name = ReadMe
		Paperscan by Wolfgang Schwarz, Donauwoerth, Germany (https://github.com/woschwarz/paperscan)
		PDF Management with SQLite Database
		
		Programmed with Xojo (https://www.xojo.com)
		
		Additional programs are required for the shell commands:
		- ghostscript
		- pdftotext
		
		On macOs open Terminal and install Homebrew (https://brew.sh/de/):
		# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
		
		Install ghostscript and pdftotext:
		# brew install ghostscript
		# brew install poppler
		
		Under Linux use apt-get or similar 
	#tag EndNote

	#tag Note, Name = ToDo
		- ParsePDF OCR
		- Switch from Listbox to Grid with thumbnail
		- User login
		- More filter options
		- Add Correspondent
		- Add Logger
		- Add Dashboard
		- Add Settings Menu
	#tag EndNote


	#tag Property, Flags = &h0
		databaseFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		documentFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		inputFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		mediaFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		thumbnailFolder As FolderItem
	#tag EndProperty


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
