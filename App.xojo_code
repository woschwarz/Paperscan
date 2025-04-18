#tag Class
Protected Class App
Inherits WebApplication
	#tag Event
		Sub Opening(args() As String)
		  // Set and create Folders
		  Var paperscanFolder As FolderItem = SpecialFolder.Documents.Child("Paperscan")
		  If Not paperscanFolder.Exists Then paperscanFolder.CreateFolder
		  
		  //Child
		  databaseFolder = SpecialFolder.Documents.Child("Paperscan").Child("Data")
		  inputFolder = SpecialFolder.Documents.Child("Paperscan").Child("Input")
		  mediaFolder = SpecialFolder.Documents.Child("Paperscan").Child("Media")
		  
		  If Not databaseFolder.Exists Then databaseFolder.CreateFolder
		  If Not inputFolder.Exists Then inputFolder.CreateFolder
		  If Not mediaFolder.Exists Then mediaFolder.CreateFolder
		  
		  //Child Media
		  documentFolder = SpecialFolder.Documents.Child("Paperscan").Child("Media").Child("Documents")
		  thumbnailFolder = SpecialFolder.Documents.Child("Paperscan").Child("Media").Child("Thumbnails")
		  
		  If Not thumbnailFolder.Exists Then thumbnailFolder.CreateFolder
		  If Not documentFolder.Exists Then documentFolder.CreateFolder
		End Sub
	#tag EndEvent


	#tag Note, Name = ReadMe
		PaperScan by Wolfgang Schwarz, Donauwoerth, Germany (https://github.com/woschwarz/paperscan)
		A lightweight PDF Management with SQLite Database
		
		Programmed with Xojo (https://www.xojo.com)
		
		Additional programs are required for the shell commands:
		- ghostscript
		- pdftotext (poppler-utils)
		
		On macOS open Terminal and install Homebrew (https://brew.sh/de/):
		# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
		
		Install ghostscript and pdftotext:
		# brew install ghostscript
		# brew install poppler
		
		Under Linux use apt-get or similar 
		# apt-get install ghostscript
		# apt-get install poppler-utils
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
