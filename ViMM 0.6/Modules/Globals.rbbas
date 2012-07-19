#tag ModuleProtected Module Globals	#tag Method, Flags = &h0		Function GetLabelIndex(ForItem as FolderItem) As Integer		  Dim ae As AppleEvent		  'Dim f As FolderItem		  Dim file As AppleEventObjectSpecifier		  Dim myPath as string		  'Dim o As AppleEventObjectSpecifier		  		  If ForItem = Nil then return 0		  ae = NewAppleEvent( "core", "getd", "MACS" ) //The "Get" apple event		  myPath = ForItem.AbsolutePath		  		  file = GetNamedObjectDescriptor( "alis", Nil, myPath ) //"Converts" a file to an AppleEvent object		  		  ae.ObjectSpecifierParam( "----" ) = GetPropertyObjectDescriptor( file, "labi" ) //This references the label index property of the "file" object.		  		  If Not ae.Send then		  End If		  		  Return ae.ReplyInteger		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function IsLeopard() As Boolean		  const kMacOSXMin = &h1050		  		  #if TargetMacOS then		    Dim res As Integer		    Dim b As Boolean = System.Gestalt( "sysv", res )		    If res >= kMacOSXMin then Return True		  #endif		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function IsLion() As Boolean		  const kMacOSXMin = &h1070		  		  #If TargetMacOS then		    Dim res As Integer		    Dim b As Boolean = System.Gestalt( "sysv", res )		    If res >= kMacOSXMin then Return True		  #EndIf		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function IsPanther() As Boolean		  const kMacOSXMin = &h1030		  		  #if TargetMacOS then		    Dim res As Integer		    Dim b As Boolean = System.Gestalt( "sysv", res )		    if res >= kMacOSXMin then Return True		  #endif		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function IsSnowLeopard() As Boolean		  const kMacOSXMin = &h1060		  		  #if TargetMacOS then		    Dim res As Integer		    Dim b As Boolean = System.Gestalt( "sysv", res )		    if res >= kMacOSXMin then Return True		  #endif		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function IsTiger() As Boolean		  const kMacOSXMin = &h1040		  		  #if TargetMacOS then		    Dim res As Integer		    Dim b As Boolean = System.Gestalt( "sysv", res )		    if res >= kMacOSXMin then Return True		  #endif		End Function	#tag EndMethod	#tag Method, Flags = &h0		Sub Log(Message as String, LogLevel as Integer = System.LogLevelError)		  System.Log LogLevel, Message		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Function MsgDlg(w as Window, Type as Integer = 1, headerText as String, subText as String, okCaption as String, cancelCaption as String, otherCaption as String = "") As Integer		  Dim Msg as New MessageDialog    // Declare the MessageDialog object		  Dim dlgBtn as MessageDialogButton    // For handling the result		  Msg.Icon = Type    // Display warning icon		  		  // OK Button		  Msg.ActionButton.Caption = okCaption		  		  // Show the "Cancel" button if available		  If cancelCaption <> "" Then		    Msg.CancelButton.Caption = cancelCaption		    Msg.CancelButton.Visible = True		  End If		  		  // Show the "Alternate" button if available		  If otherCaption <> "" Then		    Msg.AlternateActionButton.Caption = otherCaption		    Msg.AlternateActionButton.Visible = True		  End If		  		  Msg.Message = headerText		  Msg.Explanation = subText		  		  If w <> Nil Then dlgBtn = Msg.ShowModalWithin(w) Else dlgBtn = Msg.ShowModal		  'dlgBtn = Msg.ShowModal		  Select Case dlgBtn		  Case Msg.ActionButton		    Return 1		  Case Msg.AlternateActionButton		    Return 3		  Case Msg.CancelButton		    Return 2		  End Select		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function NameExtension(Extends TheFile as FolderItem) As String		  Dim FileName      as String = TheFile.Name		  Dim FileSplit()   as String = FileName.Split(".")		  Dim FileExtension as String = FileSplit( FileSplit.Ubound )		  		  Return FileExtension		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function NameWithoutExtension(Extends TheFile as FolderItem) As String		  Dim FileName      as String = TheFile.Name		  Dim FileSplit()   as String = FileName.Split(".")		  Dim FileExtension as String = FileSplit( FileSplit.Ubound )		  		  Return FileName.Left( FileName.Len - ( FileExtension.Len + 1 ) )		  'Return FileName.Left( FileExtension.Len + 1 )		  'Return FileName.ReplaceAll( "." + FileExtension, "" )		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function QdlgWindow(Message as String, Explanation as String, OKCaption as String = "OK", CancelCaption as String = "Cancel", AlternateCaption as String = "") As Boolean		  Dim dlg as New MessageDialog		  Dim btn as New MessageDialogButton		  		  // Dialog window settings		  dlg.Message = Message		  dlg.Explanation = Explanation		  		  dlg.ActionButton.Caption = OKCaption		  dlg.ActionButton.Visible = True		  		  dlg.CancelButton.Caption = CancelCaption		  dlg.CancelButton.Visible = True		  		  If AlternateCaption <> "" Then		    dlg.AlternateActionButton.Caption = AlternateCaption		  End If		  'If AlternateCaption <> "" then		  'dlg.AlternateActionButton.Caption = AlternateCaption		  'dlg.AlternateActionButton.Visible = True		  'End If		  		  // Show dialog window		  btn = dlg.ShowModal		  		  Select case btn		  case dlg.ActionButton		    Return True		  case dlg.CancelButton		    Return False		    'case dlg.AlternateActionButton		    'Return 3		  end Select		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function RegExThis(Source As String, SrchPattern As String, RplcPattern As String = "") As String		  // RegEx		  Dim myRegEx As new RegEx		  Dim myMatch As RegExMatch		  myRegEx.Options.TreatTargetAsOneLine = True		  myRegEx.SearchPattern = SrchPattern		  myRegEx.ReplacementPattern = RplcPattern		  		  // Pop up all matches one by one		  myMatch = myRegEx.Search( Source )		  While myMatch <> Nil		    Source = myRegEx.Replace( Source )		    myMatch = myRegEx.Search()		  Wend		  		  Return Source		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function RemoveLinks(Content as String) As String		  // RegEx		  Dim myRegEx As new RegEx		  Dim myMatch As RegExMatch		  myRegEx.Options.TreatTargetAsOneLine = True		  myRegEx.SearchPattern = "<a href=[\x21-\x7E]*\>"		  myRegEx.ReplacementPattern = ""		  		  // Pop up all matches one by one		  myMatch = myRegEx.Search( content )		  While myMatch <> Nil		    content = myRegEx.Replace( content )		    myMatch = myRegEx.Search()		  Wend		  content = content.ReplaceAll( "</a>", "" )		  		  Return Content		End Function	#tag EndMethod	#tag Method, Flags = &h0		Sub SaveImage(img As Picture, TheFile as FolderItem, Type as FileType)		  If Type = FileTypes.ImageJpeg Then		    If TheFile <> Nil Then TheFile.Name = TheFile.NameWithoutExtension + ".jpg"		    img.Save( TheFile, Picture.SaveAsJPEG, 65 )'Picture.QualityHigh )		  ElseIf Type = FileTypes.ImagePng  Then		    If TheFile <> Nil Then TheFile.Name = TheFile.NameWithoutExtension + ".png"		    img.Save( TheFile, Picture.SaveAsPNG, Picture.QualityMax )		  End If		  		  If TheFile.LastErrorCode <> 0 Then Return		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Sub SetLabelIndex(ForItem as Folderitem, LabelIndex as Integer)		  // 0 = Clear		  // 1 = Orange		  // 2 = Red		  // 3 = Yellow		  // 4 = Blue		  // 5 = Purple		  // 6 = Green		  // 7 = Gray		  		  Dim ae As AppleEvent		  Dim f As FolderItem		  Dim file As AppleEventObjectSpecifier		  Dim myPath as string		  Dim o As AppleEventObjectSpecifier		  		  If ForItem = Nil then Return		  ae = NewAppleEvent( "core", "setd", "MACS" ) //The "Set" apple event		  myPath = ForItem.AbsolutePath		  		  file = GetNamedObjectDescriptor( "alis", Nil, myPath ) //"Converts" a file to an AppleEvent object		  		  ae.ObjectSpecifierParam( "----" ) = GetPropertyObjectDescriptor( file, "labi" ) //This references the label index property of the "file" object.		  		  ae.IntegerParam("data") = LabelIndex //The label index		  If Not ae.Send then		  End If		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Sub ShowInFinder(f as Folderitem)		  If f = Nil or NOT f.Exists Then Return		  		  Dim ae as AppleEvent = NewAppleEvent("misc", "slct", "MACS" )		  ae.FolderItemParam("----") = f		  If ae.Send Then		    ae = NewAppleEvent("misc", "actv", "MACS")		    If ae.Send Then		      '#If DebugBuild Then MsgBox "Success"		    Else		      '#If DebugBuild Then MsgBox "Activate Failed"		    End If		  Else		    '#If DebugBuild Then MsgBox "Select Failed"		  End If		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Sub SmoothResize(w as Window, Width as Integer, Height as Integer, align as Integer)		  // Added 11/13/2001 by Jarvis Badgley		  // Edited 12/05/2001 by Jarvis Badgley		  // Modified 2/3/2002 by Kevin Ballard		  // ---		  // Rewritten 2/22/2002 by Kevin Ballard		  // Based off of code by Jean-Francois Roy <bahamut@mac.com>		  // ---		  // Modified 8/23/02 by Kevin Ballard		  // Modified 12/14/02 by Pedro fp <mail@pedro.net.au>		  // Modified 12/14/02 by Kevin Ballard		  //		  // Align numbers:		  //     0) Lock upper left		  //     1) Lock upper right		  //     2) Lock lower left		  //     3) Lock lower right		  //     4) Lock top center		  //     5) Lock left center		  //     6) Lock bottom center		  //     7) Lock right center		  		  		  #If targetmacos then		    Dim err, t, l as Integer		    Dim rect as MemoryBlock		    		    #If TargetCarbon then		      Declare Function TransitionWindow Lib CarbonLib (window as WindowPtr, effect as Integer, action as Integer, rect as Ptr) as Integer		      Declare Function GetWindowBounds  Lib CarbonLib (window As WindowPtr, regionCode As Integer, globalBounds As Ptr) as Integer		    #ElseIf TargetCocoa then		      Declare Function TransitionWindow Lib CocoaLib (window as WindowPtr, effect as Integer, action as Integer, rect as Ptr) as Integer		      Declare Function GetWindowBounds  Lib CocoaLib (window As WindowPtr, regionCode As Integer, globalBounds As Ptr) as Integer		      		      w.SmoothResizeMBS( Width, Height )		      w.Width = Width		      w.Height = Height		      Return		    #ElseIf TargetWin32		      Declare Function TransitionWindow Lib "WindowsLib" (window as WindowPtr, effect as Integer, action as Integer, rect as Ptr) as Integer		      Declare Function GetWindowBounds  Lib "WindowsLib" (window As WindowPtr, regionCode As Integer, globalBounds As Ptr) as Integer		    #EndIf		    		    // we get the old window region		    rect = New MemoryBlock(8)		    err = GetWindowBounds(w, 32, rect)		    		    t = w.Top // Need to know where the top and left of the window go		    l = w.Left		    Select Case align // Use deltas in measurements, not absolutes		    Case 0 // Lock upper left		      rect.Short(4) = rect.Short(4) + (height - w.height)		      rect.Short(6) = rect.Short(6) + (width - w.width)		    Case 1 // Lock upper right		      rect.Short(2) = rect.Short(2) - (width - w.width)		      rect.Short(4) = rect.Short(4) + (height - w.height)		      l = l - (width - w.width) // Left side moves		    Case 2 // Lock lower left		      rect.Short(0) = rect.Short(0) - (height - w.height)		      rect.Short(6) = rect.Short(6) + (width - w.width)		      t = t - (height - w.height) // Top side moves		    Case 3 // Lock lower right		      rect.Short(0) = rect.Short(0) - (height - w.height)		      rect.Short(2) = rect.Short(2) - (width - w.width)		      t = t - (height - w.height) // Top side moves		      l = l - (width - w.width) // Left side moves		    Case 4 // Lock top center		      rect.Short(2) = rect.Short(2) - (width - w.width) / 2		      rect.Short(4) = rect.Short(4) + (height - w.height)		      rect.Short(6) = rect.Short(6) + (width - w.width) / 2		      l = l - (width - w.width)/2 // Both sides move		    Case 5 // Lock left center		      rect.Short(0) = rect.Short(0) - (height - w.height) / 2		      rect.Short(4) = rect.Short(4) + (height - w.height) / 2		      rect.Short(6) = rect.Short(6) + (width - w.width)		      t = t - (height - w.height) / 2 // Top moves		    Case 6 // Lock bottom center		      rect.Short(0) = rect.Short(0) - (height - w.height)		      rect.Short(2) = rect.Short(2) - (width - w.width) / 2		      rect.Short(6) = rect.Short(6) + (width - w.width) / 2		      t = t - (height - w.height) // Top moves		      l = l - (width - w.width) / 2 // Left moves		    Case 7 // Lock right center		      rect.Short(0) = rect.Short(0) - (height - w.height) / 2		      rect.Short(2) = rect.Short(2) - (width - w.width)		      rect.Short(4) = rect.Short(4) + (height - w.height) / 2		      t = t - (height - w.height) / 2// Top moves		      l = l - (width - w.width) // Left moves		    End Select // If none of these, don't change		    		    // transition		    err = TransitionWindow(w, 3, 4, rect)		    		    // have to manually set the window's new height after resizing the window		    w.Top = t		    w.Left = l		    w.Width = width		    w.Height = height		    		    w.Refresh		  #endif		  #if TargetWin32 then		    w.width=width		    w.height=height		  #endif		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Sub SocketError(Code as Integer, sckt as HTTPSocket)		  //HTTPSocket error codes and user notification		  Dim ErrorString As String		  ErrorString = "HTTP Error: " + str(code) + " occured." + chr(13) + chr(13)		  		  Select case code		  case 100		    ErrorString = ErrorString + "Driver error"		  case 102		    ErrorString = ErrorString + "Connection Lost"		  case 103		    ErrorString = ErrorString + "Unresolved Host"		  case 105		    ErrorString = ErrorString + "Port Bind Error"		  case 106		    ErrorString = ErrorString + "Invalid Socket State"		  case 107		    ErrorString = ErrorString + "Invalid Port"		  case 108		    ErrorString = ErrorString + "Out Of Memory"		  case 400		    ErrorString = ErrorString + "Bad Request"		  case 401		    ErrorString = ErrorString + "Unauthorized"		  case 414		    ErrorString = ErrorString + "Request-URI Too Long"		  case 500		    ErrorString = ErrorString + "Internal Server Error"		  case 505		    ErrorString = ErrorString + "HTTP Version Not Supported"		  case 509		    ErrorString = ErrorString + "Bandwidth Limit Exceeded"		  else		    ErrorString = ErrorString + "Unknown or Undefined. Error Code"		  end Select		  		  'wndProgress.Close		  MsgBox ErrorString		End Sub	#tag EndMethod	#tag Method, Flags = &h0		Function String2Entities(s as String) As String		  s = s.ReplaceAll(" ", "+"  )		  s = s.ReplaceAll("&", "%26")		  		  's = s.ReplaceAll("Ärk", "%C4")		  's = s.ReplaceAll("Ërk", "%CB")		  's = s.ReplaceAll("Ïrk", "%CF")		  's = s.ReplaceAll("Ð", "E")		  's = s.ReplaceAll("Örk", "%D6")		  's = s.ReplaceAll("×", "")		  's = s.ReplaceAll("Ürk", "%DC")		  's = s.ReplaceAll("Þ", "")		  's = s.ReplaceAll("Þ", "%DE")		  's = s.ReplaceAll("ß", "")		  's = s.ReplaceAll("ð", "%F0")		  's = s.ReplaceAll("÷", "")		  's = s.ReplaceAll("÷", "%F7")		  's = s.ReplaceAll("þ", "")		  's = s.ReplaceAll("þ", "%FE")		  s = s.ReplaceAll("Ḁ", "A")		  s = s.ReplaceAll("ḉ", "c")		  s = s.ReplaceAll("Ḟ", "F")		  s = s.ReplaceAll("Ḡ", "G")		  s = s.ReplaceAll("Ḣ", "H")		  s = s.ReplaceAll("Ḥ", "H")		  s = s.ReplaceAll("Ḧ", "H")		  s = s.ReplaceAll("Ṙ", "R")		  s = s.ReplaceAll("Ṡ", "S")		  s = s.ReplaceAll("Ṣ", "S")		  s = s.ReplaceAll("Ṥ", "S")		  s = s.ReplaceAll("Ṧ", "S")		  s = s.ReplaceAll("Ṵ", "U")		  s = s.ReplaceAll("Ṽ", "V")		  s = s.ReplaceAll("Ẁ", "W")		  s = s.ReplaceAll("Ẃ", "W")		  s = s.ReplaceAll("Ẅ", "W")		  s = s.ReplaceAll("Ẇ", "W")		  s = s.ReplaceAll("Ẑ", "Z")		  s = s.ReplaceAll("Ả", "A")		  s = s.ReplaceAll("Ẻ", "E")		  s = s.ReplaceAll("Ẽ", "E")		  s = s.ReplaceAll("Ề", "E")		  s = s.ReplaceAll("Ỉ", "I")		  s = s.ReplaceAll("À", "A")		  s = s.ReplaceAll("Á", "A")		  s = s.ReplaceAll("Â", "A")		  s = s.ReplaceAll("Ã", "A")		  s = s.ReplaceAll("Ä", "A")		  s = s.ReplaceAll("Å", "A")		  s = s.ReplaceAll("Æ", "AE")		  s = s.ReplaceAll("Ç", "C")		  s = s.ReplaceAll("È", "E")		  s = s.ReplaceAll("É", "E")		  s = s.ReplaceAll("Ê", "E")		  s = s.ReplaceAll("Ë", "E")		  s = s.ReplaceAll("Ì", "I")		  s = s.ReplaceAll("Í", "I")		  s = s.ReplaceAll("Î", "I")		  s = s.ReplaceAll("Ï", "I")		  s = s.ReplaceAll("Ñ", "N")		  s = s.ReplaceAll("Ò", "O")		  s = s.ReplaceAll("Ó", "O")		  s = s.ReplaceAll("Ô", "O")		  s = s.ReplaceAll("Õ", "O")		  s = s.ReplaceAll("Ö", "O")		  s = s.ReplaceAll("Ø", "O")		  s = s.ReplaceAll("Ù", "U")		  s = s.ReplaceAll("Ú", "U")		  s = s.ReplaceAll("Û", "U")		  s = s.ReplaceAll("õ", "o")		  s = s.ReplaceAll("Ü", "U")		  s = s.ReplaceAll("Ý", "Y")		  s = s.ReplaceAll("ßre", "s")		  s = s.ReplaceAll("à", "a")		  s = s.ReplaceAll("á", "a")		  s = s.ReplaceAll("â", "a")		  s = s.ReplaceAll("ã", "a")		  s = s.ReplaceAll("ä", "a")		  s = s.ReplaceAll("å", "a")		  s = s.ReplaceAll("æ", "ae")		  s = s.ReplaceAll("ç", "c")		  s = s.ReplaceAll("è", "e")		  s = s.ReplaceAll("é", "e")		  s = s.ReplaceAll("ê", "e")		  s = s.ReplaceAll("ë", "e")		  s = s.ReplaceAll("ì", "i")		  s = s.ReplaceAll("í", "i")		  s = s.ReplaceAll("î", "i")		  s = s.ReplaceAll("ï", "i")		  s = s.ReplaceAll("ð", "d")		  s = s.ReplaceAll("ñ", "n")		  s = s.ReplaceAll("ò", "o")		  s = s.ReplaceAll("ó", "o")		  s = s.ReplaceAll("ô", "o")		  s = s.ReplaceAll("ö", "o")		  s = s.ReplaceAll("ø", "o")		  s = s.ReplaceAll("ù", "u")		  s = s.ReplaceAll("ú", "u")		  s = s.ReplaceAll("û", "u")		  s = s.ReplaceAll("ü", "u")		  s = s.ReplaceAll("ý", "y")		  s = s.ReplaceAll("ÿ", "y")		  s = s.ReplaceAll("Ā", "A")		  s = s.ReplaceAll("Ă", "A")		  s = s.ReplaceAll("Ą", "A")		  s = s.ReplaceAll("Ć", "C")		  s = s.ReplaceAll("ć", "c")		  s = s.ReplaceAll("ĉ", "c")		  s = s.ReplaceAll("Č", "C")		  s = s.ReplaceAll("Ē", "E")		  s = s.ReplaceAll("Ĕ", "E")		  s = s.ReplaceAll("Ė", "E")		  s = s.ReplaceAll("Ě", "E")		  s = s.ReplaceAll("Ĝ", "G")		  s = s.ReplaceAll("Ğ", "G")		  s = s.ReplaceAll("Ġ", "G")		  s = s.ReplaceAll("Ĥ", "H")		  s = s.ReplaceAll("Ĩ", "I")		  s = s.ReplaceAll("Ŏ", "O")		  s = s.ReplaceAll("Ő", "O")		  s = s.ReplaceAll("Ŕ", "R")		  s = s.ReplaceAll("Ř", "R")		  s = s.ReplaceAll("Ś", "S")		  s = s.ReplaceAll("Ŝ", "S")		  s = s.ReplaceAll("Ş", "S")		  s = s.ReplaceAll("Š", "S")		  s = s.ReplaceAll("Ũ", "U")		  s = s.ReplaceAll("Ů", "U")		  s = s.ReplaceAll("ů", "u")		  s = s.ReplaceAll("Ű", "U")		  s = s.ReplaceAll("Ų", "U")		  s = s.ReplaceAll("Ź", "Z")		  s = s.ReplaceAll("Ż", "Z")		  s = s.ReplaceAll("Ž", "Z")		  s = s.ReplaceAll("Ɛ", "E")		  s = s.ReplaceAll("Ǎ", "A")		  s = s.ReplaceAll("Ǒ", "O")		  s = s.ReplaceAll("Ǔ", "U")		  s = s.ReplaceAll("Ǧ", "G")		  s = s.ReplaceAll("Ǵ", "G")		  s = s.ReplaceAll("ǽ", "ae")		  s = s.ReplaceAll("Ȁ", "A")		  s = s.ReplaceAll("Ȃ", "A")		  s = s.ReplaceAll("Ȅ", "E")		  s = s.ReplaceAll("Ȇ", "E")		  s = s.ReplaceAll("Ȍ", "O")		  s = s.ReplaceAll("Ȑ", "R")		  s = s.ReplaceAll("Ȓ", "R")		  s = s.ReplaceAll("Ȕ", "U")		  s = s.ReplaceAll("Ș", "S")		  s = s.ReplaceAll("Ȟ", "H")		  s = s.ReplaceAll("Ȧ", "A")		  s = s.ReplaceAll("Ȩ", "E")		  		  		  's = s.ReplaceAll("%", "%25")		  's = s.ReplaceAll("?", "%3F")		  's = s.ReplaceAll("=", "%3D")		  's = s.ReplaceAll("@", "%40")		  		  ''s = s.ReplaceAll("/", "%2F")		  's = s.ReplaceAll("À", "%C0")		  's = s.ReplaceAll("Á", "%C1")		  's = s.ReplaceAll("Â", "%C2")		  's = s.ReplaceAll("Ã", "%C3")		  's = s.ReplaceAll("Ärk", "%C4")		  's = s.ReplaceAll("Å", "%C5")		  's = s.ReplaceAll("Æ", "%C6")		  's = s.ReplaceAll("Ç", "%C7")		  's = s.ReplaceAll("È", "%C8")		  's = s.ReplaceAll("É", "%C9")		  's = s.ReplaceAll("Ê", "%CA")		  's = s.ReplaceAll("Ërk", "%CB")		  's = s.ReplaceAll("Ì", "%CC")		  's = s.ReplaceAll("Í", "%CD")		  's = s.ReplaceAll("Î", "%CE")		  's = s.ReplaceAll("Ïrk", "%CF")		  's = s.ReplaceAll("Ð", "%D0")		  's = s.ReplaceAll("Ñ", "%D1")		  's = s.ReplaceAll("Ò", "%D2")		  's = s.ReplaceAll("Ó", "%D3")		  's = s.ReplaceAll("Ô", "%D4")		  's = s.ReplaceAll("Õ", "%D5")		  's = s.ReplaceAll("Örk", "%D6")		  's = s.ReplaceAll("×", "%D7")		  's = s.ReplaceAll("Ø", "%D8")		  's = s.ReplaceAll("Ù", "%D9")		  's = s.ReplaceAll("Ú", "%DA")		  's = s.ReplaceAll("Û", "%DB")		  's = s.ReplaceAll("Ürk", "%DC")		  's = s.ReplaceAll("Ý", "%DD")		  's = s.ReplaceAll("Þ", "%DE")		  's = s.ReplaceAll("ßre", "%DF")		  's = s.ReplaceAll("à", "%E0")		  's = s.ReplaceAll("á", "%E1")		  's = s.ReplaceAll("â", "%E2")		  's = s.ReplaceAll("ã", "%E3")		  's = s.ReplaceAll("ä", "%E4")		  's = s.ReplaceAll("å", "%E5")		  's = s.ReplaceAll("æ", "%E6")		  's = s.ReplaceAll("ç", "%E7")		  's = s.ReplaceAll("è", "%E8")		  's = s.ReplaceAll("é", "%E9")		  's = s.ReplaceAll("ê", "%EA")		  's = s.ReplaceAll("ë", "%EB")		  's = s.ReplaceAll("ì", "%EC")		  's = s.ReplaceAll("í", "%ED")		  's = s.ReplaceAll("î", "%EE")		  's = s.ReplaceAll("ï", "%EF")		  's = s.ReplaceAll("ð", "%F0")		  's = s.ReplaceAll("ñ", "%F1")		  's = s.ReplaceAll("ò", "%F2")		  's = s.ReplaceAll("ó", "%F3")		  's = s.ReplaceAll("ô", "%F4")		  's = s.ReplaceAll("õ", "%F5")		  's = s.ReplaceAll("ö", "%F6")		  's = s.ReplaceAll("÷", "%F7")		  's = s.ReplaceAll("ø", "%F8")		  's = s.ReplaceAll("ù", "%F9")		  's = s.ReplaceAll("ú", "%FA")		  's = s.ReplaceAll("û", "%FB")		  's = s.ReplaceAll("ü", "%FC")		  's = s.ReplaceAll("ý", "%FD")		  's = s.ReplaceAll("þ", "%FE")		  's = s.ReplaceAll("ÿ", "%FF")		  		  Return s		End Function	#tag EndMethod	#tag Method, Flags = &h0		Function URL2Picture(URL as String, Unique as String, FileTypeExtension as String = "jpg", f as FolderItem = Nil) As Picture		  Dim sckt as new HTTPSocket		  Dim TheFile as FolderItem		  Dim FileSaved as Boolean		  		  sckt.Yield = True		  // URL = String2Entities( URL )		  		  If f <> Nil then		    TheFile = f.Child( Unique + "." + FileTypeExtension )		  Else		    TheFile = SpecialFolder.Temporary.Child( Unique + "." + FileTypeExtension )		  End If		  		  If TheFile <> Nil and URL <> "" then		    		    // Save file if one doesn't exist already.		    If f <> Nil and TheFile.Exists then		      FileSaved = True // Don't want to overwrite existing images.		    ElseIf System.Network.IsConnected then		      If TheFile.Exists then TheFile.Delete		      FileSaved = sckt.Get( URL, TheFile, Prefs.integerForKey("TimeOut") )		      sckt.Close		    End If		    		    If NOT FileSaved then		      Dim FileSystemErrorCode as Integer = sckt.LastErrorCode		      // sckt.Close // For extra measure		      If TheFile.Exists then TheFile.Delete // Don't leave partially downloaded files.		      // MsgBox "Error: " + str( FileSystemErrorCode ) + chr(13) + chr(13) + "Connection timed out, please try again later."		      Return Nil		    Else		      // sckt.Close // For extra measure		      Return Picture.Open( TheFile )		    End If		    		  End If		End Function	#tag EndMethod	#tag Constant, Name = CarbonLib, Type = String, Dynamic = False, Default = \"Carbon.framework", Scope = Public	#tag EndConstant	#tag Constant, Name = CocoaLib, Type = String, Dynamic = False, Default = \"Cocoa.framework", Scope = Public	#tag EndConstant	#tag ViewBehavior		#tag ViewProperty			Name="Index"			Visible=true			Group="ID"			InitialValue="-2147483648"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Left"			Visible=true			Group="Position"			InitialValue="0"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Name"			Visible=true			Group="ID"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Super"			Visible=true			Group="ID"			InheritedFrom="Object"		#tag EndViewProperty		#tag ViewProperty			Name="Top"			Visible=true			Group="Position"			InitialValue="0"			InheritedFrom="Object"		#tag EndViewProperty	#tag EndViewBehaviorEnd Module#tag EndModule