#tag Class
Protected Class App
Inherits WebApplication
	#tag Event
		Sub Opening(args() As String)
		  // Set and create Folders if they do not exist
		  Var f As FolderItem = SpecialFolder.UserHome
		  
		  System.DebugLog("UserHome = " + f.NativePath)
		  System.DebugLog("Parent = " +f.Name)
		  
		  // Check the current UserHome folder name. If this is called Paperscan then it does not need to be created.
		  If f <> Nil And f.Parent <> Nil Then
		    
		    // If this is called Paperscan then it does not need to be created (for Docker Containers)
		    If f.Name <> "Paperscan" Then
		      
		      Var papserscanFolder As FolderItem = f.Child("Paperscan")
		      If Not papserscanFolder.Exists Then papserscanFolder.CreateFolder
		      
		      f = SpecialFolder.UserHome.Child("Paperscan")
		      System.DebugLog("UserHome = " + f.NativePath)
		      
		    End If
		    
		  End If
		  
		  //Childs
		  databaseFolder = f.Child("Data")
		  inputFolder = f.Child("Input")
		  mediaFolder = f.Child("Media")
		  
		  If Not databaseFolder.Exists Then databaseFolder.CreateFolder
		  If Not inputFolder.Exists Then inputFolder.CreateFolder
		  If Not mediaFolder.Exists Then mediaFolder.CreateFolder
		  System.DebugLog("Child Folders created")
		  
		  //Child Media
		  documentFolder = mediaFolder.Child("Documents")
		  thumbnailFolder = mediaFolder.Child("Thumbnails")
		  
		  If Not thumbnailFolder.Exists Then thumbnailFolder.CreateFolder
		  If Not documentFolder.Exists Then documentFolder.CreateFolder
		  System.DebugLog("Media Child Folders created")
		End Sub
	#tag EndEvent


	#tag Note, Name = ReadMe
		PaperScan - Developed by Wolfgang Schwarz, Germany
		
		A lightweight PDF Management with SQLite Database
		
		Written in Xojo (https://www.xojo.com)
		
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
		
		For more information, visit: https://github.com/woschwarz
		
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
