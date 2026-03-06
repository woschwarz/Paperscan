#tag WebPage
Begin WebPage UploadPage
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   CSSClasses      =   ""
   Enabled         =   False
   Height          =   800
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
   Width           =   1200
   _ImplicitInstance=   False
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin MainWebToolbar MainToolbar
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FullWidth       =   True
      Height          =   56
      Index           =   -2147483648
      Indicator       =   1
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelIndex      =   0
      Position        =   ""
      Scope           =   0
      TabIndex        =   5
      TabStop         =   True
      Title           =   ""
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   1200
      _mPanelIndex    =   -1
   End
   Begin WebRectangle rctFormContent
      BorderColor     =   &c000000FF
      BorderThickness =   0
      ControlCount    =   0
      ControlID       =   ""
      CornerSize      =   -1
      CSSClasses      =   ""
      Enabled         =   True
      FillColor       =   &cFFFFFF
      HasFillColor    =   False
      Height          =   743
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   "LayoutDirections.LeftToRight"
      LayoutType      =   "LayoutTypes.Fixed"
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   6
      TabStop         =   True
      Tooltip         =   ""
      Top             =   57
      Visible         =   True
      Width           =   1200
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin WebListBox UploadList
         AllowRowReordering=   False
         ColumnCount     =   4
         ColumnWidths    =   "*,200,200,70"
         ControlID       =   ""
         CSSClasses      =   ""
         DefaultRowHeight=   49
         Enabled         =   True
         GridLineStyle   =   2
         HasBorder       =   False
         HasHeader       =   True
         HeaderHeight    =   0
         Height          =   597
         HighlightSortedColumn=   False
         Index           =   -2147483648
         Indicator       =   ""
         InitialValue    =   "Filename	Date	Size	Action"
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
         NoRowsMessage   =   "This list is empty."
         PanelIndex      =   0
         Parent          =   "rctFormContent"
         ProcessingMessage=   ""
         RowCount        =   0
         RowSelectionType=   0
         Scope           =   2
         SearchCriteria  =   ""
         SelectedRowColor=   &c51926B00
         SelectedRowIndex=   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   135
         Visible         =   True
         Width           =   1160
         _mPanelIndex    =   -1
      End
      Begin WebButton btnUpload
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "#Strings.Upload"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   1060
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   0
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   76
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebFileUploader FileUploader1
         Caption         =   "#Strings.ChoosePDF"
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Filter          =   "application/pdf"
         HasFileNameField=   True
         Height          =   38
         Hint            =   ""
         Index           =   -2147483648
         Indicator       =   ""
         Left            =   20
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
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   76
         UploadTimeout   =   0
         Visible         =   True
         Width           =   1021
         _mPanelIndex    =   -1
      End
      Begin WebButton btnImportAll
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "#Strings.Import"
         ControlID       =   ""
         CSSClasses      =   ""
         Default         =   False
         Enabled         =   False
         Height          =   38
         Index           =   -2147483648
         Indicator       =   1
         Left            =   1060
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         LockVertical    =   False
         Outlined        =   False
         PanelIndex      =   0
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   742
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
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   742
         Underline       =   False
         Visible         =   True
         Width           =   1021
         _mPanelIndex    =   -1
      End
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Shown()
		  lblStatus.Text = ""
		  Update
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
		  
		  // Create a Webstyle for Trash
		  Var style As New WebStyle
		  style.Value("text-align") = "center"
		  style.Cursor = Webstyle.Cursors.Pointer
		  Var cellRenderer As New WebListBoxStyleRenderer(style, "🗑️")
		  
		  // Fill Listbox 
		  For Each file As Folderitem In App.inputFolder.Children
		    If file <> Nil And file.Visible And Not file.IsFolder Then
		      UploadList.AddRow(file.Name)
		      
		      Var modDate As String
		      modDate = file.ModificationDateTime.ToString(Locale.Current, DateTime.FormatStyles.Short, DateTime.FormatStyles.Short)
		      UploadList.CellTextAt(UploadList.LastAddedRowIndex, 1) = modDate
		      
		      size = file.Length
		      
		      UploadList.CellTextAt(UploadList.LastAddedRowIndex, 2) = Str(size) + " bytes"
		      UploadList.CellRendererAt(UploadList.LastAddedRowIndex, 3) = cellRenderer
		    End If
		    
		  Next
		  
		  If UploadList.RowCount <= 0 Then
		    btnImportAll.Enabled = False
		  Else
		    btnImportAll.Enabled = True
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update()
		  LoadFileList
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events rctFormContent
	#tag Event
		Sub Opening()
		  'Me.LayoutType = LayoutTypes.Flex
		  Me.Style.Value("gap") = "20px;"
		  Me.Style.Value("max-width") = "1200px;"
		  Me.Style.Value("margin") = "auto;"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UploadList
	#tag Event
		Sub Opening()
		  Me.HeaderHeight = 35
		  Me.HeaderAt(0) = Strings.Filename
		  Me.HeaderAt(1) = Strings.Date
		  Me.HeaderAt(2) = Strings.Size
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed(row As Integer, column As Integer)
		  If  row >=0 And column = 3 Then
		    Var f As Folderitem = App.inputFolder.Child(Me.CellTextAt(row, 0))
		    
		    Try
		      f.Remove
		      LoadFileList
		    Catch error As IOException
		      MessageBox(error.Message)
		    End Try
		    
		  End If
		  
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
#tag Events FileUploader1
	#tag Event
		Sub UploadFinished(files() As WebUploadedFile)
		  Var saveFile As FolderItem
		  
		  For Each file As WebUploadedFile In Files
		    saveFile = App.inputFolder.Child(file.Name)
		    
		    Try
		      file.Save(saveFile)
		    Catch e As IOException
		      System.DebugLog(e.ErrorNumber.ToString)
		      // File Error, skip file
		      Continue
		    End Try
		  Next
		  
		  LoadFileList
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
		  
		  Me.Caption = "<raw><span class=""spinner-border spinner-border-sm""></span></raw> Parsing..."
		  Var i As Integer
		  
		  For Each file As Folderitem In App.inputFolder.Children
		    
		    If file <> Nil And file.Visible And Not file.IsFolder Then
		      lblStatus.Text = "Start parsing " + file.name
		      DocumentParser.ParsePDF(file.name)
		      i = i + 1
		      'ToDo: Check Parse Errors
		    End If
		    
		    lblStatus.Text = Str(i) + " Documents parsed"
		    
		  Next
		  
		  LoadFileList
		  Me.Caption = Strings.Import
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
