#tag WindowBegin Window wndClean   BackColor       =   &hFFFFFF   Backdrop        =   ""   CloseButton     =   True   Composite       =   False   Frame           =   0   FullScreen      =   False   HasBackColor    =   False   Height          =   1.64e+2   ImplicitInstance=   True   LiveResize      =   False   MacProcID       =   0   MaxHeight       =   32000   MaximizeButton  =   False   MaxWidth        =   32000   MenuBar         =   ""   MenuBarVisible  =   True   MinHeight       =   64   MinimizeButton  =   True   MinWidth        =   64   Placement       =   3   Resizeable      =   False   Title           =   "#Loc.Clean"   Visible         =   True   Width           =   4.68e+2   Begin Canvas cvsSweep      AcceptFocus     =   ""      AcceptTabs      =   ""      AutoDeactivate  =   True      Backdrop        =   333015082      DoubleBuffer    =   False      Enabled         =   True      EraseBackground =   True      Height          =   64      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Left            =   20      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Scope           =   0      TabIndex        =   0      TabPanelIndex   =   0      TabStop         =   True      Top             =   14      UseFocusRing    =   True      Visible         =   True      Width           =   64   End   Begin PopupMenu popMode      AutoDeactivate  =   True      Bold            =   ""      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      InitialValue    =   ""      Italic          =   ""      Left            =   134      ListIndex       =   0      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Scope           =   0      TabIndex        =   1      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   88      Underline       =   ""      Visible         =   True      Width           =   200   End   Begin ccCancelSave btnsCancelSave      AcceptFocus     =   ""      AcceptTabs      =   True      AutoDeactivate  =   True      BackColor       =   &hFFFFFF      Backdrop        =   ""      Enabled         =   True      EraseBackground =   True      HasBackColor    =   False      Height          =   22      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Left            =   248      LockBottom      =   False      LockedInPosition=   False      LockLeft        =   False      LockRight       =   True      LockTop         =   False      Scope           =   0      TabIndex        =   2      TabPanelIndex   =   0      TabStop         =   True      Top             =   122      UseFocusRing    =   ""      Visible         =   True      Width           =   200   End   Begin Label lblArray      AutoDeactivate  =   True      Bold            =   True      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   20      HelpTag         =   ""      Index           =   0      InitialParent   =   ""      Italic          =   ""      Left            =   96      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Multiline       =   ""      Scope           =   0      Selectable      =   False      TabIndex        =   3      TabPanelIndex   =   0      TabStop         =   True      Text            =   "#txtTitle"      TextAlign       =   0      TextColor       =   &h000000      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   14      Transparent     =   False      Underline       =   ""      Visible         =   True      Width           =   352   End   Begin Label lblArray      AutoDeactivate  =   True      Bold            =   ""      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   30      HelpTag         =   ""      Index           =   1      InitialParent   =   ""      Italic          =   ""      Left            =   96      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Multiline       =   True      Scope           =   0      Selectable      =   False      TabIndex        =   4      TabPanelIndex   =   0      TabStop         =   True      Text            =   "#txtMessage"      TextAlign       =   0      TextColor       =   &h000000      TextFont        =   "System"      TextSize        =   11      TextUnit        =   0      Top             =   46      Transparent     =   False      Underline       =   ""      Visible         =   True      Width           =   352   End   Begin Thread ThrClean      Enabled         =   True      Height          =   32      Index           =   -2147483648      Left            =   416      LockedInPosition=   False      Priority        =   5      Scope           =   0      StackSize       =   0      TabIndex        =   5      TabPanelIndex   =   0      TabStop         =   True      Top             =   183      Visible         =   True      Width           =   32   End   Begin ProgressBar pgCleaned      AutoDeactivate  =   True      Enabled         =   True      Height          =   18      HelpTag         =   ""      Index           =   -2147483648      InitialParent   =   ""      Left            =   20      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Maximum         =   0      Scope           =   0      TabIndex        =   6      TabPanelIndex   =   0      TabStop         =   True      Top             =   124      Value           =   0      Visible         =   False      Width           =   211   EndEnd#tag EndWindow#tag WindowCode	#tag Event		Sub Close()		  ThrClean.Kill		End Sub	#tag EndEvent	#tag Property, Flags = &h1		Protected Choice As String	#tag EndProperty	#tag Constant, Name = txtMessage, Type = String, Dynamic = True, Default = \"Depending on your choice\x2C the .nfo files\x2C extra art images and/or <media> will be deleted when you clean your files.", Scope = Public		#Tag Instance, Platform = Any, Language = en, Definition  = \"Depending on your choice\x2C the .nfo files\x2C extra art images and/or <media> will be deleted when you clean your files."		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Afhangende van je keuze\x2C de .nfo bestanden\x2C extra plaatjes en/of <media> zullen worden gewist wanneer je je bestanden verschoont."		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Beroende p\xC3\xA5 dina val\x2C nfo-filer\x2C extra art-bilder och/eller <media> kommer att raderas n\xC3\xA4r du rensar filer."		#Tag Instance, Platform = Any, Language = de, Definition  = \"Abh\xC3\xA4ngig von der Auswahl werden alle NFO- Dateien\x2C Extra Fanarts und/oder <media> gel\xC3\xB6scht."	#tag EndConstant	#tag Constant, Name = txtTitle, Type = String, Dynamic = True, Default = \"Choose what you want to clean:", Scope = Public		#Tag Instance, Platform = Any, Language = en, Definition  = \"Choose what you want to clean:"		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Kies wat je wilt schoonmaken:"		#Tag Instance, Platform = Any, Language = sv, Definition  = \"V\xC3\xA4lj det du vill rensa:"		#Tag Instance, Platform = Any, Language = de, Definition  = \"W\xC3\xA4hle was bereinigt werden soll:"	#tag EndConstant#tag EndWindowCode#tag Events cvsSweep	#tag Event		Sub Paint(g As Graphics)		  If App.ScalingFactor = 2 Then		    g.DrawPicture tb_clean4x, 0, 0, 64, 64, 0, 0, tb_clean4x.Width, tb_clean4x.Height		  Else		    g.DrawPicture tb_clean2x, 0, 0		  End If		End Sub	#tag EndEvent	#tag Event		Sub Open()		  Me.Backdrop = Nil		End Sub	#tag EndEvent#tag EndEvents#tag Events popMode	#tag Event		Sub Open()		  Me.AddRow Loc.kAll                                          // All		  Me.AddRow "-"                                                       // ----		  Me.AddRow Loc.kMetadata                                     // Metadata		  Me.AddRow Loc.kImages.Titlecase                             // Images		  If wndMain.ppMain.Value = 0 Then Me.AddRow Loc.kTrailers    // Trailers		  If wndMain.ppMain.Value = 1 Then Me.AddRow Loc.kThemeSongs  // Theme Songs		  		  Me.ListIndex = 0		End Sub	#tag EndEvent#tag EndEvents#tag Events btnsCancelSave	#tag Event		Sub Open()		  Me.CaptionOK = Loc.Clean		End Sub	#tag EndEvent	#tag Event		Sub ActionCancel()		  Close		End Sub	#tag EndEvent	#tag Event		Sub ActionOK()		  'Dim Choice as String		  		  Select case popMode.ListIndex		    		  Case 0		    Choice = "All"		    		  case 2		    Choice = "Metadata"		    		  case 3		    Choice = "Images"		    		  case 4		    Choice = "Media"		    		  End Select		  		  btnsCancelSave.btnRight.Enabled = False		  popMode.Enabled = False		  pgCleaned.Visible = True		  		  If wndMain.ppMain.Value = 0 Then ThrClean.Run 'ViMMCore.MassClean( wndMain.lstMovies, Choice )		  		  		  		  'CommonCore.ReloadList		End Sub	#tag EndEvent#tag EndEvents#tag Events lblArray	#tag Event		Sub Open()		  If wndMain.ppMain.Value = 0 Then		    Me.Text = Me.Text.ReplaceAll( "<media>", Loc.kTrailers )		  Else		    Me.Text = Me.Text.ReplaceAll( "<media>", Loc.kThemeSongs )		  End If		End Sub	#tag EndEvent#tag EndEvents#tag Events ThrClean	#tag Event		Sub Run()		  btnsCancelSave.btnLeft.Caption = Loc.dlgStop		  ViMMCore.MassClean( CommonCore.ActiveListbox, Choice )		  Close		End Sub	#tag EndEvent#tag EndEvents