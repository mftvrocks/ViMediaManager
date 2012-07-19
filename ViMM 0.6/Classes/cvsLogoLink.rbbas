#tag ClassProtected Class cvsLogoLinkInherits Canvas	#tag Event		Function MouseDown(X As Integer, Y As Integer) As Boolean		  If IsContextualClick then		    Dim base as new MenuItem		    base.Append new MenuItem ( Menu.CMMCopyLink )		    Dim HitItem as MenuItem = base.PopUp		    If HitItem <> Nil and HitItem.Text = Menu.CMMCopyLink Then		      Dim c as new Clipboard		      c.Text = URL		    End If		  Else		    MyState = 2		    Me.Invalidate		    Return True		  End If		End Function	#tag EndEvent	#tag Event		Sub MouseDrag(X As Integer, Y As Integer)		  If x < 0 or x > me.Width or _		    y < 0 or y > me.Height Then		    MyState = 0		    Me.Invalidate		  ElseIf x > 0 or x < me.Width or y > 0 or y < me.Height Then		    MyState = 2		    Me.Invalidate		  End If		End Sub	#tag EndEvent	#tag Event		Sub MouseEnter()		  MyState = 1		  Me.Invalidate		  MouseCursor = System.Cursors.FingerPointer		End Sub	#tag EndEvent	#tag Event		Sub MouseExit()		  MyState = 0		  Me.Invalidate		  MouseCursor = System.Cursors.StandardPointer		End Sub	#tag EndEvent	#tag Event		Sub MouseUp(X As Integer, Y As Integer)		  If X > 0 and Y > 0 and X < Width and Y < Height then		    MyState = 1		    Me.Invalidate		    		    ShowURL URL		  Else		    MyState = 0		    Me.Invalidate		  End If		End Sub	#tag EndEvent	#tag Event		Sub Open()		  Backdrop = Nil		  Width = Logo.Width		  Height = Logo.Height		End Sub	#tag EndEvent	#tag Event		Sub Paint(g As Graphics)		  If Logo = Nil Then Return		  		  g.DrawPicture Logo, 0, 0, Logo.Width, Logo.Height		End Sub	#tag EndEvent	#tag Property, Flags = &h0		Logo As Picture	#tag EndProperty	#tag Property, Flags = &h0		MyState As Integer	#tag EndProperty	#tag Property, Flags = &h0		URL As String	#tag EndProperty	#tag ViewBehavior		#tag ViewProperty			Name="AcceptFocus"			Visible=true			Group="Behavior"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="AcceptTabs"			Visible=true			Group="Behavior"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="AutoDeactivate"			Visible=true			Group="Appearance"			InitialValue="True"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="Backdrop"			Visible=true			Group="Appearance"			Type="Picture"			EditorType="Picture"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="DoubleBuffer"			Visible=true			Group="Behavior"			InitialValue="False"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="Enabled"			Visible=true			Group="Appearance"			InitialValue="True"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="EraseBackground"			Visible=true			Group="Behavior"			InitialValue="True"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="Height"			Visible=true			Group="Position"			InitialValue="100"			Type="Integer"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="HelpTag"			Visible=true			Group="Appearance"			Type="String"			EditorType="MultiLineEditor"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="Index"			Visible=true			Group="ID"			Type="Integer"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="InitialParent"			Group="Initial State"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="Left"			Visible=true			Group="Position"			Type="Integer"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="LockBottom"			Visible=true			Group="Position"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="LockLeft"			Visible=true			Group="Position"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="LockRight"			Visible=true			Group="Position"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="LockTop"			Visible=true			Group="Position"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="Logo"			Visible=true			Group="Behavior"			Type="Picture"		#tag EndViewProperty		#tag ViewProperty			Name="MyState"			Group="Behavior"			Type="Integer"		#tag EndViewProperty		#tag ViewProperty			Name="Name"			Visible=true			Group="ID"			Type="String"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="Super"			Visible=true			Group="ID"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="TabIndex"			Visible=true			Group="Position"			InitialValue="0"			Type="Integer"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="TabPanelIndex"			Group="Position"			InitialValue="0"			Type="Integer"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="TabStop"			Visible=true			Group="Position"			InitialValue="True"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="Top"			Visible=true			Group="Position"			Type="Integer"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="URL"			Visible=true			Group="Behavior"			Type="String"			EditorType="MultiLineEditor"		#tag EndViewProperty		#tag ViewProperty			Name="UseFocusRing"			Visible=true			Group="Appearance"			InitialValue="True"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="Visible"			Visible=true			Group="Appearance"			InitialValue="True"			Type="Boolean"			InheritedFrom="Canvas"		#tag EndViewProperty		#tag ViewProperty			Name="Width"			Visible=true			Group="Position"			InitialValue="100"			Type="Integer"			InheritedFrom="Canvas"		#tag EndViewProperty	#tag EndViewBehaviorEnd Class#tag EndClass