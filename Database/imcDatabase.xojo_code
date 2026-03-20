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
		  Try
		    Var sql As String = "SELECT * FROM documents WHERE id = ?"
		    Var rs As RowSet = Self.SelectSQL(sql, id)
		    
		    #If DebugBuild Then System.DebugLog(sql)
		    
		    Return rs
		    
		  Catch error As DatabaseException
		    System.DebugLog("FindFileByID Error: " + error.Message)
		  End Try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindFileByName(Optional searchName As String) As RowSet
		  Try
		    Var sql As String 
		    var rs As RowSet
		    
		    If searchName <> "" Then
		      sql  = "SELECT id, filename, content, created_at FROM documents WHERE filename LIKE ? OR content LIKE ? ORDER BY filename"
		      rs  = Self.SelectSQL(sql, "%" + searchName + "%", "%" + searchName + "%")
		    Else
		      sql = "SELECT id, filename, content, created_at FROM documents ORDER BY created_at DESC"
		      rs = Self.SelectSQL(sql)
		    End If
		    
		    #If DebugBuild Then System.DebugLog(sql)
		    
		    Return rs
		    
		  Catch error As DatabaseException
		    System.DebugLog("FindFileByName Error: " + error.Message)
		  End Try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDocumentCount() As Integer
		  Try
		    Var rs As RowSet = Self.SelectSQL("SELECT COUNT(1) AS total_count FROM documents WHERE deleted_at IS NULL")
		    If rs = Nil Or rs.AfterLastRow Then Return 0
		    Return rs.Column("total_count").IntegerValue
		    
		  Catch error As DatabaseException
		    System.DebugLog("Document Count Error: " + error.Message)
		  End Try
		  
		  Return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetLatestDocuments(limit As Integer = 10) As RowSet
		  Try
		    Var sql As String = "SELECT id, filename, created_at FROM documents WHERE deleted_at IS NULL ORDER BY created_at DESC LIMIT ?"
		    Return Self.SelectSQL(sql, limit)
		  Catch e As DatabaseException
		    System.DebugLog("GetLatestDocuments Error: " + e.Message)
		    Return Nil
		  End Try
		End Function
	#tag EndMethod


	#tag Constant, Name = kCreateDatabase, Type = String, Dynamic = False, Default = \"CREATE TABLE \"company\"(\n\t\"id\" Integer PRIMARY KEY AUTOINCREMENT\x2C\n\t\"name\" Text NOT NULL\x2C\n\t\"created_at\" DateTime NOT NULL\x2C\n\t\"updated_at\" DateTime NOT NULL\x2C\n\t\"deleted_by\" Text\x2C\n\t\"deleted_at\" DateTime );\n\nINSERT INTO \"company\" (\"id\"\x2C\"name\"\x2C\"created_at\"\x2C\"updated_at\") VALUES ( 1\x2C \'my organization\'\x2C \'1970-01-01 01:00:00.000\'\x2C \'1970-01-01 01:00:00.000\');\n\nCREATE TABLE \"db_info\"(\n\t\"version\" Integer NOT NULL );\n\nINSERT INTO \"db_info\" (\"version\") VALUES ( 1 );\n\nCREATE TABLE \"documents\"(\n\t\"id\" Integer PRIMARY KEY AUTOINCREMENT\x2C\n\t\"company_id\" Integer NOT NULL\x2C\n\t\"filename\" Text NOT NULL\x2C\n\t\"content\" Text NOT NULL DEFAULT \'\'\x2C\n\t\"original_filename\" Text NOT NULL\x2C\n\t\"original_size\" Integer NOT NULL DEFAULT 0\x2C\n\t\"original_sha256_hash\" Text\x2C\n\t\"original_created_at\" DateTime NOT NULL\x2C\n\t\"original_modified_at\" DateTime NOT NULL\x2C\n\t\"mime_type\" Text NOT NULL\x2C\n\t\"created_at\" DateTime NOT NULL\x2C\n\t\"updated_at\" DateTime\x2C\n\t\"is_deleted\" Integer NOT NULL DEFAULT false\x2C\n\t\"deleted_at\" DateTime\x2C\n\t\"created_by\" Text\x2C\n\t\"deleted_by\" Text );\n\nCREATE TABLE \"documents_tags\"(\n\t\"document_id\" Integer NOT NULL\x2C\n\t\"tag_id\" Integer NOT NULL\x2C\nPRIMARY KEY ( \"document_id\"\x2C \"tag_id\" ) );\n\nCREATE TABLE \"log\"(\n\t\"id\" Integer PRIMARY KEY AUTOINCREMENT\x2C\n\t\"document_id\" Integer\x2C\n\t\"user_id\" Integer\x2C\n\t\"event\" Text NOT NULL\x2C\n\t\"event_data\" Text\x2C\n\t\"created_at\" DateTime NOT NULL );\n\nCREATE TABLE \"tags\"(\n\t\"id\" Integer PRIMARY KEY AUTOINCREMENT\x2C\n\t\"company_id\" Integer NOT NULL\x2C\n\t\"name\" Text NOT NULL\x2C\n\t\"color\" Text NOT NULL\x2C\n\t\"description\" Text\x2C\n\t\"created_at\" DateTime NOT NULL\x2C\n\t\"updated_at\" DateTime NOT NULL );\n\nCREATE TABLE \"users\"(\n\t\"id\" Integer PRIMARY KEY AUTOINCREMENT\x2C\n\t\"full_name\" Text\x2C\n\t\"password\" Text NOT NULL\x2C\n\t\"image\" Text\x2C\n\t\"color_mode\" TEXT\x2C\n\t\"email\" Text NOT NULL\x2C\n\t\"email_verified\" Integer NOT NULL DEFAULT false\x2C\n\t\"two_factor_enabled\" Integer NOT NULL DEFAULT false\x2C\n\t\"is_admin\" Integer\x2C\n\t\"created_at\" DateTime NOT NULL\x2C\n\t\"updated_at\" DateTime\x2C\nCONSTRAINT \"unique_email\" UNIQUE ( email ) );\n\nINSERT INTO \"users\" (\"id\"\x2C\"full_name\"\x2C\"password\"\x2C\"email\"\x2C\"is_admin\"\x2C \"created_at\") VALUES ( 1\x2C \'Administrator\'\x2C \'\'\x2C\'admin@example.com\'\x2C \'true\'\x2C \'1970-01-01 01:00:00.000\');\n\n\nCREATE TABLE \"webhooks\"(\n\t\"id\" Integer PRIMARY KEY AUTOINCREMENT\x2C\n\t\"company_id\" Integer NOT NULL\x2C\n\t\"name\" Text NOT NULL\x2C\n\t\"url\" Text NOT NULL\x2C\n\t\"secret\" Text\x2C\n\t\"active\" Integer NOT NULL DEFAULT True\x2C\n\t\"created_at\" DateTime NOT NULL\x2C\n\t\"updated_at\" DateTime\x2C\n\t\"deleted_at\" DateTime );", Scope = Public
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
