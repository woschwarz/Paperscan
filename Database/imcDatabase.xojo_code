#tag Class
Protected Class imcDatabase
Inherits SQLiteDatabase
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  Var dbFile As FolderItem
		  
		  #If DebugBuild Then
		    dbFile = App.databaseFolder.Child("paperscan.sqlite")
		  #Else
		    //ToDo: choose another Folder
		    dbFile = App.databaseFolder.Child("paperscan.sqlite")
		  #EndIf
		  
		  
		  Var firstRun As Boolean
		  
		  Me.DatabaseFile = dbFile
		  
		  Try
		    If Not dbFile.Exists Then
		      
		      Me.CreateDatabase()
		      
		      firstrun = True
		      
		    End If
		    
		    If Me.Connect Then
		      
		      // Creates the Tables at first time
		      If firstRun Then CreateTables
		      
		      // Set the DB in multiuser Mode
		      Me.WriteAheadLogging = True
		      
		      System.DebugLog("Database Connected")
		      
		    Else
		      
		      System.DebugLog("Error: No connected to DB file.")
		      
		    End If
		    
		  Catch e As IOException
		    System.DebugLog e.Message
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub CreateTables()
		  Try
		    Me.ExecuteSQL kCreateDatabase
		  Catch e As DatabaseException
		    System.DebugLog e.Message
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindFileByID(id As String) As RowSet
		  Var sql As String = "SELECT * FROM documents WHERE id = ?"
		  Var rs As RowSet = Self.SelectSQL(sql, id)
		  
		  System.DebugLog(sql)
		  
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindFileByName(Optional searchName AS String) As RowSet
		  Var sql As String = "SELECT * FROM documents WHERE filename LIKE ? OR content LIKE ? ORDER BY filename"
		  Var rs As RowSet = Self.SelectSQL(sql, "%" + searchName + "%", "%" + searchName + "%")
		  
		  System.DebugLog(sql)
		  
		  Return rs
		  
		  
		End Function
	#tag EndMethod


	#tag Constant, Name = kCreateDatabase, Type = String, Dynamic = False, Default = \"CREATE TABLE documents (id INTEGER\x2C status TEXT\x2C title TEXT\x2C filename TEXT\x2C content TEXT\x2C file_type TEXT\x2C document_type_id INTEGER\x2C correspondent_id INTEGER\x2C mime_type TEXT\x2C archive_checksum TEXT\x2C created DATETIME\x2C modified DATETIME\x2C added DATETIME\x2C PRIMARY KEY(id));\nCREATE TABLE document_tags (id INTEGER\x2C document_id INTEGER\x2C tag_id INTEGER\x2C PRIMARY KEY(id));\nCREATE TABLE correspondent (id INTEGER\x2C name TEXT\x2C match TEXT\x2C matching_algorithm INTEGER\x2C is_sensitive BOOL\x2C PRIMARY KEY(id));\nCREATE TABLE document_type (id INTEGER\x2C name TEXT\x2C match TEXT\x2C matching_algorithm INTEGER\x2C is_sensitive BOOL\x2C PRIMARY KEY(id));\nCREATE TABLE log (id INTEGER\x2C level TEXT\x2C message TEXT\x2C created DATETIME\x2C PRIMARY KEY(id));\nCREATE TABLE core_tags (id INTEGER\x2C name TEXT\x2C colour TEXT\x2C match TEXT\x2C matching_algorithm INTEGER\x2C is_sensitive BOOL\x2C PRIMARY KEY(id));", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="DatabaseName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Host"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
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
			InitialValue=""
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
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="EncryptionKey"
			Visible=true
			Group=""
			InitialValue=""
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Timeout"
			Visible=true
			Group=""
			InitialValue=""
			Type="Double"
			EditorType="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugMode"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadYieldInterval"
			Visible=true
			Group=""
			InitialValue=""
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WriteAheadLogging"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LoadExtensions"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LibraryVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
