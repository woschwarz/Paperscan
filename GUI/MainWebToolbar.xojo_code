#tag Class
Protected Class MainWebToolbar
Inherits WebToolbar
	#tag Event
		Sub MenuSelected(item As WebToolbarButton, hitItem As WebMenuItem)
		  If item.Tag = "User" Then
		    
		    Select Case hitItem.Tag
		      
		    Case "Settings"
		      SettingsPage.Show
		      
		    Case "light"
		      Session.ColorMode = WebSession.ColorModes.Light
		      
		    Case "dark"
		      Session.ColorMode = WebSession.ColorModes.Dark
		      
		    Case "about"
		      Var dlg As New AboutDialog
		      dlg.Show
		      
		    End Select
		    
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  Var iconColor As Color = Color.White
		  
		  Self.Title = "PaperScan"
		  Self.Icon = WebPicture.BootstrapIcon("stack-overflow", iconColor)
		  
		  // Archive Button
		  Var btn As New WebToolbarButton
		  btn.Style = WebToolbarButton.ButtonStyles.PushButton 
		  btn.Caption = Strings.Documents
		  btn.Tag = "archive"
		  'btn.Icon = WebPicture.BootstrapIcon("file-pdf")
		  Self.AddItem(btn)
		  
		  // Upload Button
		  btn = New WebToolbarButton
		  btn.Style = WebToolbarButton.ButtonStyles.PushButton
		  btn.Caption = Strings.UploadDocuments
		  btn.Tag = "upload"
		  'btn.Icon = WebPicture.BootstrapIcon("upload", iconColor)
		  'btn.Badge = Str(MainModules.CountFiles(App.inputFolder))
		  Self.AddItem(btn)
		  
		  // Flexible Space
		  btn = New WebToolbarButton
		  btn.Style = WebToolbarButton.ButtonStyles.FlexibleSpace
		  Self.AddItem(btn)
		  
		  // Menu Button
		  btn = New WebToolbarButton
		  btn.Style = WebToolbarButton.ButtonStyles.Menu
		  btn.Icon = WebPicture.BootstrapIcon("sliders", iconColor)
		  'btn.Caption = ""
		  btn.Tag = "user"
		  
		  Var m As New WebMenuItem
		  m.Text = Strings.Settings
		  m.tag = "settings"
		  btn.Menu.AddMenuItem(m)
		  
		  m = New WebMenuItem
		  m.Text = "Light Mode"
		  m.tag = "light"
		  btn.Menu.AddMenuItem(m)
		  
		  m = New WebMenuItem
		  m.Text = "Dark Mode"
		  m.tag = "dark"
		  btn.Menu.AddMenuItem(m)
		  
		  btn.Menu.AddSeparator()
		  
		  m = New WebMenuItem
		  m.Text = Strings.About + " " + App.ExecutableFile.Name
		  m.tag = "about"
		  btn.Menu.AddMenuItem(m)
		  
		  Self.AddItem(btn)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Pressed(item As WebToolbarButton)
		  Select Case item.Tag
		  Case "archive"
		    Session.CurrentPage.Close
		    MainPage.Show
		    'MainPage.Update
		    
		  Case "about"
		    Var dlg As New AboutDialog
		    dlg.Show
		    
		  Case "upload"
		    Session.CurrentPage.Close
		    UploadPage.Show
		    UploadPage.Update
		    
		  End Select
		  
		End Sub
	#tag EndEvent


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
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
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
			Name="Visible"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
			Name="Indicator"
			Visible=true
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
			Name="TabIndex"
			Visible=true
			Group="Visual Controls"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Visible=true
			Group="Toolbar"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullWidth"
			Visible=true
			Group="Toolbar"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Position"
			Visible=true
			Group="Toolbar"
			InitialValue=""
			Type="WebToolbar.Positions"
			EditorType="Enum"
			#tag EnumValues
				"0 - Inset"
				"1 - Top"
				"2 - Bottom"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=false
			Group=""
			InitialValue="600"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=false
			Group=""
			InitialValue="56"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
