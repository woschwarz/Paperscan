#tag WebPage
Begin WebPage UploadPage
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   CSSClasses      =   ""
   Enabled         =   False
   Height          =   400
   ImplicitInstance=   True
   Index           =   -2147483648
   Indicator       =   0
   IsImplicitInstance=   False
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   MinimumHeight   =   400
   MinimumWidth    =   600
   PanelIndex      =   0
   ScaleFactor     =   0.0
   TabIndex        =   0
   Title           =   "Upload"
   Top             =   0
   Visible         =   True
   Width           =   600
   _ImplicitInstance=   False
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebFileUploader FileUploader1
      Caption         =   "Choose a PDF file"
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      Filter          =   ""
      HasFileNameField=   True
      Height          =   38
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   ""
      Left            =   143
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MaximumBytes    =   0
      MaximumFileCount=   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      UploadTimeout   =   0
      Visible         =   True
      Width           =   321
      _mPanelIndex    =   -1
   End
   Begin WebButton btnUpload
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Upload"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   480
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebListBox UploadList
      AllowRowReordering=   False
      ColumnCount     =   3
      ColumnWidths    =   ""
      ControlID       =   ""
      CSSClasses      =   ""
      DefaultRowHeight=   49
      Enabled         =   True
      GridLineStyle   =   3
      HasBorder       =   True
      HasHeader       =   True
      HeaderHeight    =   0
      Height          =   233
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   "Filename	Date	Size"
      LastAddedRowIndex=   0
      LastColumnIndex =   0
      LastRowIndex    =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      NoRowsMessage   =   ""
      PanelIndex      =   0
      ProcessingMessage=   ""
      RowCount        =   0
      RowSelectionType=   1
      Scope           =   2
      SearchCriteria  =   ""
      SelectedRowColor=   &c0d6efd
      SelectedRowIndex=   0
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   96
      Visible         =   True
      Width           =   560
      _mPanelIndex    =   -1
   End
   Begin WebButton btnImportAll
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Import All"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   460
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   342
      Visible         =   True
      Width           =   120
      _mPanelIndex    =   -1
   End
   Begin WebLabel lblStatus
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   4
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   342
      Underline       =   False
      Visible         =   True
      Width           =   421
      _mPanelIndex    =   -1
   End
   Begin WebButton btnBack
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "< Back"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   5
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Opening()
		  LoadFileList
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub LoadFileList()
		  Var size As Integer
		  
		  If App.inputFolder Is Nil Then
		    Return
		  End If
		  
		  // Clear Listbox
		  UploadList.RemoveAllRows
		  
		  
		  For Each file As Folderitem In App.inputFolder.Children
		    If file <> Nil And file.Visible Then
		      UploadList.AddRow(file.Name)
		      
		      Var modDate As String
		      modDate = file.ModificationDateTime.ToString(Locale.Current, DateTime.FormatStyles.Short, DateTime.FormatStyles.Short)
		      UploadList.CellValueAt(UploadList.LastAddedRowIndex, 1) = modDate
		      
		      size = file.Length
		      
		      UploadList.CellValueAt(UploadList.LastAddedRowIndex, 2) = Str(size) + " bytes"
		      
		    End If
		    
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ParsePDF(pdfFilename As String)
		  lblStatus.Text = "Start parsing " + pdfFilename
		  System.DebugLog("Start parsing " + pdfFilename)
		  
		  Var f As FolderItem
		  f = New FolderItem(App.inputFolder.Child(pdfFilename)) 
		  
		  
		  Var parsedPDF As String = DocumentParser.GetText(f)
		  
		  If parsedPDF = "Error" Then 
		    lblStatus.Text = "Errorcode " + Str(DocumentParser.lastExitCode)
		    Exit
		  End If
		  
		  
		  If Len(parsedPDF) > 25 Then
		    // Document has more than 25 characters, then it will be processed
		    
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
		    
		    // Make a Thumbnail Image
		    Var g As FolderItem = App.thumbnailFolder.Child(pdfFileName)
		    If DocumentParser.MakeThumbnail(f, g) Then
		      System.DebugLog("Thumbnail created")
		    Else
		      System.DebugLog("Thumbnail error")
		    End If
		    
		    // Move PDF File to Media/Document Folder
		    Var h As FolderItem = App.documentFolder.Child(pdfFileName)
		    If h <> Nil Then
		      f.MoveTo(h)
		    End If
		    
		  Else
		    // Document has less than 25 characters, then run OCR
		    
		    'ToDo
		    
		  End If
		  
		  If DocumentParser.lastExitCode = 0 Then
		    lblStatus.Text = "Parsing finished"
		  End If
		  
		  Exception err As IOException
		    System.DebugLog("an IO exception occurred (UploadFileContainer/ProcessPDF/Moveto)")
		    
		    
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events FileUploader1
	#tag Event
		Sub UploadFinished(files() As WebUploadedFile)
		  Var saveFile As FolderItem
		  
		  For Each file As WebUploadedFile In Files
		    saveFile = App.inputFolder.Child(file.Name)
		    
		    Try
		      file.Save(saveFile)
		    Catch e As IOException
		      System.DebugLog(e.ErrorNumber.ToText)
		      // File Error, skip file
		      Continue
		    End Try
		  Next
		  
		  LoadFileList
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnUpload
	#tag Event
		Sub Pressed()
		  FileUploader1.StartUpload
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnImportAll
	#tag Event
		Sub Pressed()
		  // Import all Files from Input Folder
		  
		  If App.inputFolder Is Nil Then
		    Return
		  End If
		  
		  
		  For Each file As Folderitem In App.inputFolder.Children
		    
		    If file <> Nil And file.Visible Then
		      ParsePDF(file.name)
		    End If
		    
		  Next
		  
		  LoadFileList
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnBack
	#tag Event
		Sub Pressed()
		  MainPage.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="PanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
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
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="ControlID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="Behavior"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignWidth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabOrderWrap"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Visual Controls"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Indicator"
		Visible=false
		Group="Visual Controls"
		InitialValue=""
		Type="WebUIControl.Indicators"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Primary"
			"2 - Secondary"
			"3 - Success"
			"4 - Danger"
			"5 - Warning"
			"6 - Info"
			"7 - Light"
			"8 - Dark"
			"9 - Link"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="WebView"
		InitialValue="LayoutDirections.LeftToRight"
		Type="LayoutDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - LeftToRight"
			"1 - RightToLeft"
			"2 - TopToBottom"
			"3 - BottomToTop"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScaleFactor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Double"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
