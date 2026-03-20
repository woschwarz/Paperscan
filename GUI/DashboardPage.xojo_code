#tag WebPage
Begin WebPage DashboardPage
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
   Title           =   "Dashboard"
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
      Position        =   1
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
      LayoutDirection =   0
      LayoutType      =   0
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
      Begin WebFileUploader FileUploader1
         Caption         =   "#Strings.ImportDocument"
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Filter          =   "application/pdf"
         HasFileNameField=   False
         Height          =   38
         Hint            =   ""
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
         MaximumBytes    =   0
         MaximumFileCount=   1
         PanelIndex      =   0
         Parent          =   "rctFormContent"
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   77
         UploadTimeout   =   0
         Visible         =   True
         Width           =   428
         _mPanelIndex    =   -1
      End
      Begin WebLabel lblDocumentCount
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   24.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   753
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   0
         Parent          =   "rctFormContent"
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Documents Total"
         TextAlignment   =   3
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   77
         Underline       =   False
         Visible         =   True
         Width           =   427
         _mPanelIndex    =   -1
      End
      Begin WebListBox FileList
         AllowRowReordering=   False
         ColumnCount     =   3
         ColumnWidths    =   "90,*,230"
         ControlID       =   ""
         CSSClasses      =   ""
         DefaultRowHeight=   49
         Enabled         =   True
         GridLineStyle   =   2
         HasBorder       =   True
         HasHeader       =   True
         HeaderHeight    =   0
         Height          =   558
         HighlightSortedColumn=   True
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   "Type	File	Date"
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
         RowSelectionType=   1
         Scope           =   2
         SearchCriteria  =   ""
         SelectedRowColor=   &c51926B00
         SelectedRowIndex=   0
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   222
         Visible         =   True
         Width           =   1160
         _mPanelIndex    =   -1
      End
      Begin WebLabel lblLastImportetDocuments
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   24.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   0
         Parent          =   "rctFormContent"
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "#Strings.LatestimportedDocuments"
         TextAlignment   =   1
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   170
         Underline       =   False
         Visible         =   True
         Width           =   427
         _mPanelIndex    =   -1
      End
   End
   Begin ViewerDialog PDFViewer
      ControlCount    =   0
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      Height          =   870
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   0
      Position        =   0
      Scope           =   0
      TabIndex        =   9
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   1000
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Opening()
		  Update
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub LoadList()
		  Var rs As RowSet = Session.imcDB.GetLatestDocuments(10)
		  
		  Var icon As String = "<raw><div style='text-align:center'>" + App.kSVGpdf + "</div></raw>"
		  
		  If rs <> Nil Then
		    
		    // Clear Listbox
		    FileList.RemoveAllRows
		    
		    For Each row As DatabaseRow In rs
		      
		      #If DebugBuild Then System.DebugLog rs.Column("filename").StringValue
		      
		      FileList.AddRow(icon, "<raw><span style='cursor:pointer'>" + row.Column("filename").StringValue + "</span></raw>", row.Column("created_at").StringValue)
		      'FileList.AddRow("pic", row.Column("filename").StringValue, row.Column("created_at").StringValue)
		      FileList.CellTagAt(FileList.LastAddedRowIndex, 0) = row.Column("id").StringValue
		      'FileList.CellValueAt(FileList.LastAddedRowIndex, 0) = pic
		      
		    Next
		    
		    rs.Close
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update()
		  lblDocumentCount.Text = Session.imcDB.GetDocumentCount.ToString + " " + Strings.DocumentsTotal
		  LoadList
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
#tag Events FileUploader1
	#tag Event
		Sub UploadFinished(files() As WebUploadedFile)
		  Var saveFile As FolderItem
		  
		  For Each file As WebUploadedFile In Files
		    saveFile = App.inputFolder.Child(file.Name)
		    
		    Try
		      file.Save(saveFile)
		      Var r As ImportResult = DocumentParser.ParsePDF(saveFile.Name)
		      If r.Success = False Then
		        MessageBox "Error Import " + saveFile.Name
		      End If
		      
		    Catch e As IOException
		      System.DebugLog(e.ErrorNumber.ToString)
		    End Try
		    
		  Next
		  
		  Update
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub FileAdded(filename As String, bytes As UInt64, mimeType As String)
		  Me.StartUpload
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.Indicator = WebUIControl.Indicators.Primary
		  'Me.Caption = "📥 " + Strings.ImportDocument
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FileList
	#tag Event
		Sub Pressed(row As Integer, column As Integer)
		  If  row >=0 And column = 1 Then
		    
		    PDFViewer.Show
		    PDFViewer.ShowPDFbyID(Me.CellTagAt(row, 0))
		    
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.HeaderHeight = 35
		  Me.HeaderAt(0) = Strings.Type
		  Me.HeaderAt(1) = Strings.Filename
		  Me.HeaderAt(2) = Strings.Date
		  Me.Style.Value("border") = "0;"
		  
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
