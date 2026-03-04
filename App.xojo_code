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


	#tag Constant, Name = kSVGpdf, Type = String, Dynamic = False, Default = \"<svg xmlns\x3D\"http://www.w3.org/2000/svg\" width\x3D\"28\" height\x3D\"28\" fill\x3D\"currentColor\" class\x3D\"bi bi-filetype-pdf\" viewBox\x3D\"0 0 16 16\">\n  <path fill-rule\x3D\"evenodd\" d\x3D\"M14 4.5V14a2 2 0 0 1-2 2h-1v-1h1a1 1 0 0 0 1-1V4.5h-2A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v9H2V2a2 2 0 0 1 2-2h5.5zM1.6 11.85H0v3.999h.791v-1.342h.803q.43 0 .732-.173.305-.175.463-.474a1.4 1.4 0 0 0 .161-.677q0-.375-.158-.677a1.2 1.2 0 0 0-.46-.477q-.3-.18-.732-.179m.545 1.333a.8.8 0 0 1-.085.38.57.57 0 0 1-.238.241.8.8 0 0 1-.375.082H.788V12.48h.66q.327 0 .512.181.185.183.185.522m1.217-1.333v3.999h1.46q.602 0 .998-.237a1.45 1.45 0 0 0 .595-.689q.196-.45.196-1.084 0-.63-.196-1.075a1.43 1.43 0 0 0-.589-.68q-.396-.234-1.005-.234zm.791.645h.563q.371 0 .609.152a.9.9 0 0 1 .354.454q.118.302.118.753a2.3 2.3 0 0 1-.068.592 1.1 1.1 0 0 1-.196.422.8.8 0 0 1-.334.252 1.3 1.3 0 0 1-.483.082h-.563zm3.743 1.763v1.591h-.79V11.85h2.548v.653H7.896v1.117h1.606v.638z\"/>\n</svg>", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
