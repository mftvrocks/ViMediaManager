#tag WindowBegin Window wndRenameTags   BackColor       =   &hFFFFFF   Backdrop        =   ""   CloseButton     =   True   Composite       =   False   Frame           =   3   FullScreen      =   False   HasBackColor    =   False   Height          =   2.82e+2   ImplicitInstance=   True   LiveResize      =   False   MacProcID       =   0   MaxHeight       =   32000   MaximizeButton  =   False   MaxWidth        =   32000   MenuBar         =   ""   MenuBarVisible  =   True   MinHeight       =   64   MinimizeButton  =   True   MinWidth        =   64   Placement       =   3   Resizeable      =   False   Title           =   "#TitleRenameTags"   Visible         =   True   Width           =   3.5e+2   Begin ListboxPRO lstTags      AlternatingRows =   True      AutoDeactivate  =   True      AutoHideScrollbars=   True      Bold            =   ""      Border          =   True      ColumnCount     =   2      ColumnsResizable=   ""      ColumnWidths    =   "60, *"      DataField       =   ""      DataSource      =   ""      DefaultRowHeight=   18      Enabled         =   True      EnableDrag      =   ""      EnableDragReorder=   ""      GridLinesHorizontal=   0      GridLinesVertical=   0      HasHeading      =   False      HeadingIndex    =   -1      Height          =   165      HelpTag         =   ""      Hierarchical    =   ""      Index           =   -2147483648      InitialParent   =   ""      InitialValue    =   ""      Italic          =   ""      Left            =   0      LockBottom      =   False      LockedInPosition=   False      LockLeft        =   True      LockRight       =   True      LockTop         =   True      RequiresSelection=   ""      Scope           =   0      ScrollbarHorizontal=   ""      ScrollBarVertical=   True      SelectionGradient=   True      SelectionType   =   0      SourceList      =   False      TabIndex        =   0      TabPanelIndex   =   0      TabStop         =   True      TextFont        =   "System"      TextSize        =   13      TextUnit        =   0      Top             =   0      TypeToSearch    =   False      Underline       =   ""      UseFocusRing    =   False      Visible         =   True      Width           =   350      _ScrollWidth    =   -1   End   Begin Label lblArray      AutoDeactivate  =   True      Bold            =   ""      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   55      HelpTag         =   ""      Index           =   1      InitialParent   =   ""      Italic          =   ""      Left            =   20      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Multiline       =   True      Scope           =   0      Selectable      =   False      TabIndex        =   1      TabPanelIndex   =   0      TabStop         =   True      Text            =   "#kExampleMovies"      TextAlign       =   0      TextColor       =   &h000000      TextFont        =   "System"      TextSize        =   10      TextUnit        =   0      Top             =   207      Transparent     =   False      Underline       =   ""      Visible         =   True      Width           =   310   End   Begin Label lblArray      AutoDeactivate  =   True      Bold            =   True      DataField       =   ""      DataSource      =   ""      Enabled         =   True      Height          =   18      HelpTag         =   ""      Index           =   0      InitialParent   =   ""      Italic          =   ""      Left            =   20      LockBottom      =   ""      LockedInPosition=   False      LockLeft        =   True      LockRight       =   ""      LockTop         =   True      Multiline       =   True      Scope           =   0      Selectable      =   False      TabIndex        =   2      TabPanelIndex   =   0      TabStop         =   True      Text            =   "#Loc.kExamples"      TextAlign       =   0      TextColor       =   &h000000      TextFont        =   "System"      TextSize        =   0      TextUnit        =   0      Top             =   177      Transparent     =   False      Underline       =   ""      Visible         =   True      Width           =   310   EndEnd#tag EndWindow#tag WindowCode	#tag Method, Flags = &h0		Sub Init(Mode as String = "Movie")		  Self.Show		  		  If Mode = "Movie" Then		    lstTags.AddRow "$T", Loc.mTitle.ReplaceAll(":","")		    lstTags.AddRow "$S", Loc.mTitleSort.ReplaceAll(":","")		    lstTags.AddRow "$O", Loc.mTitleOriginal.ReplaceAll(":","")		    lstTags.AddRow "$Y", Loc.mYear.ReplaceAll(":","")		    lstTags.AddRow "$R", Loc.kResolution		    lstTags.AddRow "$C", Menu.ViewSortByStudio		    lstTags.AddRow "$M", Loc.mMPAARating.ReplaceAll(":", "")		    lstTags.AddRow "$#", Loc.mRating.ReplaceAll(":","")		    lstTags.AddRow ".",  kReplaceSpacesWithDots		    		    lblArray(1).Text = kExampleMovies		  ElseIf Mode = "TVShows" Then		    lstTags.AddRow "$T", Loc.mTitle.ReplaceAll(":","")		    lstTags.AddRow "$S", Loc.mTitleSort.ReplaceAll(":","")		    lstTags.AddRow "$O", Loc.mTitleOriginal.ReplaceAll(":","")		    lstTags.AddRow "$Y", Loc.mYear.ReplaceAll(":","")		    lstTags.AddRow "$C", Menu.ViewSortByStudio		    lstTags.AddRow "$#", Loc.mRating.ReplaceAll(":","")		    lstTags.AddRow ".",  kReplaceSpacesWithDots		    		    lblArray(1).Text = kExampleTVShows		  End If		End Sub	#tag EndMethod	#tag Constant, Name = kExampleMovies, Type = String, Dynamic = True, Default = \"$T ($Y) \x3D  Stars Wars: Episode IV - A New Hope (1977)\r[$M] $S ($R) \x3D [Rated PG-13] Addams Family\x2C The (720p)\r$O.[$Y] \x3D Back.to.the.Future.III.[1985]", Scope = Protected		#Tag Instance, Platform = Any, Language = en, Definition  = \"$T ($Y) \x3D  Stars Wars: Episode IV - A New Hope (1977)\r[$M] $S ($R) \x3D [Rated PG-13] Addams Family\x2C The (720p)\r$O.[$Y] \x3D Back.to.the.Future.III.[1985]"		#Tag Instance, Platform = Any, Language = nl, Definition  = \"$T ($Y) \x3D  Stars Wars: Episode IV - A New Hope (1977)\r[$M] $S ($R) \x3D [Rated PG-13] Addams Family\x2C The (720p)\r$O.[$Y] \x3D Back.to.the.Future.III.[1985]"		#Tag Instance, Platform = Any, Language = sv, Definition  = \"$T ($Y) \x3D  Stars Wars: Episod IV - Ett nytt hopp (1977)\r[$M] $S ($R) \x3D [Rated PG-13] Addams Familjen\x2C The (720p)\r$O.[$Y] \x3D Tillbaka.till.framtiden.III.[1985]"		#Tag Instance, Platform = Any, Language = de, Definition  = \"$T ($Y) \x3D  Stars Wars: Episode IV - Eine neue Hoffnung (1977)\r[$M] $S ($R) \x3D [12] Addams Family\x2C Die (720p)\r$O.[$Y] \x3D Zur\xC3\xBCck.in.die.Zukunft.III.[1985]"	#tag EndConstant	#tag Constant, Name = kExampleTVShows, Type = String, Dynamic = True, Default = \"$T ($Y) \x3D The Big Bang Theory (2007)\r[$C] $S / $M \x3D [CBS] Big Bang Theory\x2C The / TV-PG\r$O.[$Y] \x3D The.Big.Bang.Theory.[2007]", Scope = Protected		#Tag Instance, Platform = Any, Language = en, Definition  = \"$T ($Y) \x3D The Big Bang Theory (2007)\r[$C] $S / $M \x3D [CBS] Big Bang Theory\x2C The / TV-PG\r$O.[$Y] \x3D The.Big.Bang.Theory.[2007]"		#Tag Instance, Platform = Any, Language = nl, Definition  = \"$T ($Y) \x3D The Big Bang Theory (2007)\r[$C] $S / $M \x3D [CBS] Big Bang Theory\x2C The / TV-PG\r$O.[$Y] \x3D The.Big.Bang.Theory.[2007]"		#Tag Instance, Platform = Any, Language = sv, Definition  = \"$T ($Y) \x3D The Big Bang Theory (2007)\r[$C] $S / $M \x3D [CBS] Big Bang Theory\x2C The / TV-PG\r$O.[$Y] \x3D The.Big.Bang.Theory.[2007]"		#Tag Instance, Platform = Any, Language = de, Definition  = \"$T ($Y) \x3D The Big Bang Theory (2007)\r[$C] $S / $M \x3D [CBS] Big Bang Theory\x2C The / TV-PG\r$O.[$Y] \x3D The.Big.Bang.Theory.[2007]"	#tag EndConstant	#tag Constant, Name = kReplaceSpacesWithDots, Type = String, Dynamic = True, Default = \"Replace spaces with dots", Scope = Protected		#Tag Instance, Platform = Any, Language = en, Definition  = \"Replace spaces with dots"		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Vervang spaties met punten"		#Tag Instance, Platform = Any, Language = sv, Definition  = \"Ers\xC3\xA4tt mellanslag med punkter"		#Tag Instance, Platform = Any, Language = de, Definition  = \"Leerzeichen durch Punkte ersetzen"	#tag EndConstant	#tag Constant, Name = TitleRenameTags, Type = String, Dynamic = True, Default = \"Rename Tags", Scope = Protected		#Tag Instance, Platform = Any, Language = en, Definition  = \"Rename Tags"		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Hernaming Tags"		#Tag Instance, Platform = Any, Language = sv, Definition  = \"D\xC3\xB6p om Tags"		#Tag Instance, Platform = Any, Language = de, Definition  = \"Tags umbenennen"	#tag EndConstant#tag EndWindowCode#tag Events lblArray	#tag Event		Sub Open()		  If Me.Index = 0 Then Me.Text = Me.Text + ":"		End Sub	#tag EndEvent#tag EndEvents