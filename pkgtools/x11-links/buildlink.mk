# $NetBSD: buildlink.mk,v 1.3 2001/10/07 20:16:43 veego Exp $
#
# This Makefile fragment is included by packages that use X11.
#
# To use this Makefile fragment, simply:
#
# (1) Include this Makefile fragment in the package Makefile,
# (2) Add ${BUILDLINK_DIR}/include to the front of the C preprocessor's header
#     search path, and
# (3) Add ${BUILDLINK_DIR}/lib to the front of the linker's library search
#     path.

.if !defined(X11_LINKS_BUILDLINK_MK)
X11_LINKS_BUILDLINK_MK=	# defined

.include "../../mk/bsd.buildlink.mk"

BUILDLINK_PREFIX.X11=	${X11BASE}

# The files listed below are the union of the sets of files installed by
# the supported XFree86 distributions, minus the set of files representing
# bits that may be added via pkgsrc, e.g. Xpm, freetype2, etc.
#
BUILDLINK_FILES.X11=	include/DPS/ColorSB.h
BUILDLINK_FILES.X11+=	include/DPS/ColorSBP.h
BUILDLINK_FILES.X11+=	include/DPS/DPSScrollW.h
BUILDLINK_FILES.X11+=	include/DPS/DPSScrollWP.h
BUILDLINK_FILES.X11+=	include/DPS/FontCreatP.h
BUILDLINK_FILES.X11+=	include/DPS/FontCreato.h
BUILDLINK_FILES.X11+=	include/DPS/FontSB.h
BUILDLINK_FILES.X11+=	include/DPS/FontSBP.h
BUILDLINK_FILES.X11+=	include/DPS/FontSamplP.h
BUILDLINK_FILES.X11+=	include/DPS/FontSample.h
BUILDLINK_FILES.X11+=	include/DPS/PSres.h
BUILDLINK_FILES.X11+=	include/DPS/XDPS.h
BUILDLINK_FILES.X11+=	include/DPS/XDPSlib.h
BUILDLINK_FILES.X11+=	include/DPS/XDPSproto.h
BUILDLINK_FILES.X11+=	include/DPS/dpsNXargs.h
BUILDLINK_FILES.X11+=	include/DPS/dpsXclient.h
BUILDLINK_FILES.X11+=	include/DPS/dpsXcommon.h
BUILDLINK_FILES.X11+=	include/DPS/dpsXpreview.h
BUILDLINK_FILES.X11+=	include/DPS/dpsXshare.h
BUILDLINK_FILES.X11+=	include/DPS/dpsXuserpath.h
BUILDLINK_FILES.X11+=	include/DPS/dpsclient.h
BUILDLINK_FILES.X11+=	include/DPS/dpsconfig.h
BUILDLINK_FILES.X11+=	include/DPS/dpsexcept.h
BUILDLINK_FILES.X11+=	include/DPS/dpsfriends.h
BUILDLINK_FILES.X11+=	include/DPS/dpsops.h
BUILDLINK_FILES.X11+=	include/DPS/psops.h
BUILDLINK_FILES.X11+=	include/X11/Composite.h
BUILDLINK_FILES.X11+=	include/X11/CompositeP.h
BUILDLINK_FILES.X11+=	include/X11/ConstrainP.h
BUILDLINK_FILES.X11+=	include/X11/Constraint.h
BUILDLINK_FILES.X11+=	include/X11/Core.h
BUILDLINK_FILES.X11+=	include/X11/CoreP.h
BUILDLINK_FILES.X11+=	include/X11/DECkeysym.h
BUILDLINK_FILES.X11+=	include/X11/HPkeysym.h
BUILDLINK_FILES.X11+=	include/X11/ICE/ICE.h
BUILDLINK_FILES.X11+=	include/X11/ICE/ICEconn.h
BUILDLINK_FILES.X11+=	include/X11/ICE/ICElib.h
BUILDLINK_FILES.X11+=	include/X11/ICE/ICEmsg.h
BUILDLINK_FILES.X11+=	include/X11/ICE/ICEproto.h
BUILDLINK_FILES.X11+=	include/X11/ICE/ICEutil.h
BUILDLINK_FILES.X11+=	include/X11/Intrinsic.h
BUILDLINK_FILES.X11+=	include/X11/IntrinsicP.h
BUILDLINK_FILES.X11+=	include/X11/Object.h
BUILDLINK_FILES.X11+=	include/X11/ObjectP.h
BUILDLINK_FILES.X11+=	include/X11/PEX5/PEX.h
BUILDLINK_FILES.X11+=	include/X11/PEX5/PEXlib.h
BUILDLINK_FILES.X11+=	include/X11/PEX5/PEXlibint.h
BUILDLINK_FILES.X11+=	include/X11/PEX5/PEXproto.h
BUILDLINK_FILES.X11+=	include/X11/PEX5/PEXprotost.h
BUILDLINK_FILES.X11+=	include/X11/PM/PM.h
BUILDLINK_FILES.X11+=	include/X11/PM/PMproto.h
BUILDLINK_FILES.X11+=	include/X11/RectObj.h
BUILDLINK_FILES.X11+=	include/X11/RectObjP.h
BUILDLINK_FILES.X11+=	include/X11/SM/SM.h
BUILDLINK_FILES.X11+=	include/X11/SM/SMlib.h
BUILDLINK_FILES.X11+=	include/X11/SM/SMproto.h
BUILDLINK_FILES.X11+=	include/X11/Shell.h
BUILDLINK_FILES.X11+=	include/X11/ShellP.h
BUILDLINK_FILES.X11+=	include/X11/StringDefs.h
BUILDLINK_FILES.X11+=	include/X11/Sunkeysym.h
BUILDLINK_FILES.X11+=	include/X11/Vendor.h
BUILDLINK_FILES.X11+=	include/X11/VendorP.h
BUILDLINK_FILES.X11+=	include/X11/X.h
BUILDLINK_FILES.X11+=	include/X11/X10.h
BUILDLINK_FILES.X11+=	include/X11/XF86keysym.h
BUILDLINK_FILES.X11+=	include/X11/XKBlib.h
BUILDLINK_FILES.X11+=	include/X11/XWDFile.h
BUILDLINK_FILES.X11+=	include/X11/Xalloca.h
BUILDLINK_FILES.X11+=	include/X11/Xarch.h
BUILDLINK_FILES.X11+=	include/X11/Xatom.h
BUILDLINK_FILES.X11+=	include/X11/Xauth.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/AllWidgets.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/AsciiSink.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/AsciiSinkP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/AsciiSrc.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/AsciiSrcP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/AsciiText.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/AsciiTextP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Box.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/BoxP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Cardinals.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Command.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/CommandP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Dialog.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/DialogP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Form.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/FormP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Grip.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/GripP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Label.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/LabelP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/List.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/ListP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/MenuButtoP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/MenuButton.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/MultiSink.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/MultiSinkP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/MultiSrc.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/MultiSrcP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Paned.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/PanedP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Panner.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/PannerP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Porthole.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/PortholeP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Repeater.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/RepeaterP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Reports.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Scrollbar.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/ScrollbarP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Simple.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/SimpleMenP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/SimpleMenu.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/SimpleP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Sme.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/SmeBSB.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/SmeBSBP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/SmeLine.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/SmeLineP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/SmeP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/StripCharP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/StripChart.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Template.c
BUILDLINK_FILES.X11+=	include/X11/Xaw/Template.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/TemplateP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Text.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/TextP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/TextSink.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/TextSinkP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/TextSrc.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/TextSrcP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Tip.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/TipP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Toggle.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/ToggleP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Tree.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/TreeP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/VendorEP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/Viewport.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/ViewportP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/XawImP.h
BUILDLINK_FILES.X11+=	include/X11/Xaw/XawInit.h
BUILDLINK_FILES.X11+=	include/X11/Xcms.h
BUILDLINK_FILES.X11+=	include/X11/Xdefs.h
BUILDLINK_FILES.X11+=	include/X11/Xdmcp.h
BUILDLINK_FILES.X11+=	include/X11/Xft/Xft.h
BUILDLINK_FILES.X11+=	include/X11/Xft/XftFreetype.h
BUILDLINK_FILES.X11+=	include/X11/Xfuncproto.h
BUILDLINK_FILES.X11+=	include/X11/Xfuncs.h
BUILDLINK_FILES.X11+=	include/X11/Xlib.h
BUILDLINK_FILES.X11+=	include/X11/Xlibint.h
BUILDLINK_FILES.X11+=	include/X11/Xlocale.h
BUILDLINK_FILES.X11+=	include/X11/Xmd.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/Atoms.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/CharSet.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/CloseHook.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/Converters.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/CurUtil.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/CvtCache.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/DisplayQue.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/Drawing.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/Editres.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/EditresP.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/Error.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/ExtAgent.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/Initer.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/Lookup.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/Misc.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/StdCmap.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/StdSel.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/SysUtil.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/WidgetNode.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/WinUtil.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/Xct.h
BUILDLINK_FILES.X11+=	include/X11/Xmu/Xmu.h
BUILDLINK_FILES.X11+=	include/X11/Xos.h
BUILDLINK_FILES.X11+=	include/X11/Xos_r.h
BUILDLINK_FILES.X11+=	include/X11/Xosdefs.h
BUILDLINK_FILES.X11+=	include/X11/Xpoll.h
BUILDLINK_FILES.X11+=	include/X11/Xproto.h
BUILDLINK_FILES.X11+=	include/X11/Xprotostr.h
BUILDLINK_FILES.X11+=	include/X11/Xresource.h
BUILDLINK_FILES.X11+=	include/X11/Xthreads.h
BUILDLINK_FILES.X11+=	include/X11/Xutil.h
BUILDLINK_FILES.X11+=	include/X11/ap_keysym.h
BUILDLINK_FILES.X11+=	include/X11/bitmaps/1x1
BUILDLINK_FILES.X11+=	include/X11/bitmaps/2x2
BUILDLINK_FILES.X11+=	include/X11/bitmaps/Dashes
BUILDLINK_FILES.X11+=	include/X11/bitmaps/Down
BUILDLINK_FILES.X11+=	include/X11/bitmaps/Excl
BUILDLINK_FILES.X11+=	include/X11/bitmaps/FlipHoriz
BUILDLINK_FILES.X11+=	include/X11/bitmaps/FlipVert
BUILDLINK_FILES.X11+=	include/X11/bitmaps/Fold
BUILDLINK_FILES.X11+=	include/X11/bitmaps/Left
BUILDLINK_FILES.X11+=	include/X11/bitmaps/Right
BUILDLINK_FILES.X11+=	include/X11/bitmaps/RotateLeft
BUILDLINK_FILES.X11+=	include/X11/bitmaps/RotateRight
BUILDLINK_FILES.X11+=	include/X11/bitmaps/Stipple
BUILDLINK_FILES.X11+=	include/X11/bitmaps/Term
BUILDLINK_FILES.X11+=	include/X11/bitmaps/Up
BUILDLINK_FILES.X11+=	include/X11/bitmaps/black
BUILDLINK_FILES.X11+=	include/X11/bitmaps/black6
BUILDLINK_FILES.X11+=	include/X11/bitmaps/box6
BUILDLINK_FILES.X11+=	include/X11/bitmaps/boxes
BUILDLINK_FILES.X11+=	include/X11/bitmaps/calculator
BUILDLINK_FILES.X11+=	include/X11/bitmaps/card.xbm
BUILDLINK_FILES.X11+=	include/X11/bitmaps/cntr_ptr
BUILDLINK_FILES.X11+=	include/X11/bitmaps/cntr_ptrmsk
BUILDLINK_FILES.X11+=	include/X11/bitmaps/cross_weave
BUILDLINK_FILES.X11+=	include/X11/bitmaps/dimple1
BUILDLINK_FILES.X11+=	include/X11/bitmaps/dimple3
BUILDLINK_FILES.X11+=	include/X11/bitmaps/dot
BUILDLINK_FILES.X11+=	include/X11/bitmaps/down.xbm
BUILDLINK_FILES.X11+=	include/X11/bitmaps/dropbar7
BUILDLINK_FILES.X11+=	include/X11/bitmaps/dropbar8
BUILDLINK_FILES.X11+=	include/X11/bitmaps/escherknot
BUILDLINK_FILES.X11+=	include/X11/bitmaps/flagdown
BUILDLINK_FILES.X11+=	include/X11/bitmaps/flagup
BUILDLINK_FILES.X11+=	include/X11/bitmaps/flipped_gray
BUILDLINK_FILES.X11+=	include/X11/bitmaps/gray
BUILDLINK_FILES.X11+=	include/X11/bitmaps/gray1
BUILDLINK_FILES.X11+=	include/X11/bitmaps/gray3
BUILDLINK_FILES.X11+=	include/X11/bitmaps/grid16
BUILDLINK_FILES.X11+=	include/X11/bitmaps/grid2
BUILDLINK_FILES.X11+=	include/X11/bitmaps/grid4
BUILDLINK_FILES.X11+=	include/X11/bitmaps/grid8
BUILDLINK_FILES.X11+=	include/X11/bitmaps/hlines2
BUILDLINK_FILES.X11+=	include/X11/bitmaps/hlines3
BUILDLINK_FILES.X11+=	include/X11/bitmaps/icon
BUILDLINK_FILES.X11+=	include/X11/bitmaps/keyboard.xbm
BUILDLINK_FILES.X11+=	include/X11/bitmaps/keyboard16
BUILDLINK_FILES.X11+=	include/X11/bitmaps/ldblarrow
BUILDLINK_FILES.X11+=	include/X11/bitmaps/left.xbm
BUILDLINK_FILES.X11+=	include/X11/bitmaps/left_ptr
BUILDLINK_FILES.X11+=	include/X11/bitmaps/left_ptrmsk
BUILDLINK_FILES.X11+=	include/X11/bitmaps/letters
BUILDLINK_FILES.X11+=	include/X11/bitmaps/light_gray
BUILDLINK_FILES.X11+=	include/X11/bitmaps/mailempty
BUILDLINK_FILES.X11+=	include/X11/bitmaps/mailemptymsk
BUILDLINK_FILES.X11+=	include/X11/bitmaps/mailfull
BUILDLINK_FILES.X11+=	include/X11/bitmaps/mailfullmsk
BUILDLINK_FILES.X11+=	include/X11/bitmaps/mensetmanus
BUILDLINK_FILES.X11+=	include/X11/bitmaps/menu10
BUILDLINK_FILES.X11+=	include/X11/bitmaps/menu12
BUILDLINK_FILES.X11+=	include/X11/bitmaps/menu16
BUILDLINK_FILES.X11+=	include/X11/bitmaps/menu6
BUILDLINK_FILES.X11+=	include/X11/bitmaps/menu8
BUILDLINK_FILES.X11+=	include/X11/bitmaps/monitor.xbm
BUILDLINK_FILES.X11+=	include/X11/bitmaps/mouse.xbm
BUILDLINK_FILES.X11+=	include/X11/bitmaps/narrower.xbm
BUILDLINK_FILES.X11+=	include/X11/bitmaps/noletters
BUILDLINK_FILES.X11+=	include/X11/bitmaps/opendot
BUILDLINK_FILES.X11+=	include/X11/bitmaps/opendotMask
BUILDLINK_FILES.X11+=	include/X11/bitmaps/plaid
BUILDLINK_FILES.X11+=	include/X11/bitmaps/rdblarrow
BUILDLINK_FILES.X11+=	include/X11/bitmaps/right.xbm
BUILDLINK_FILES.X11+=	include/X11/bitmaps/right_ptr
BUILDLINK_FILES.X11+=	include/X11/bitmaps/right_ptrmsk
BUILDLINK_FILES.X11+=	include/X11/bitmaps/root_weave
BUILDLINK_FILES.X11+=	include/X11/bitmaps/scales
BUILDLINK_FILES.X11+=	include/X11/bitmaps/shorter.xbm
BUILDLINK_FILES.X11+=	include/X11/bitmaps/sipb
BUILDLINK_FILES.X11+=	include/X11/bitmaps/star
BUILDLINK_FILES.X11+=	include/X11/bitmaps/starMask
BUILDLINK_FILES.X11+=	include/X11/bitmaps/stipple
BUILDLINK_FILES.X11+=	include/X11/bitmaps/taller.xbm
BUILDLINK_FILES.X11+=	include/X11/bitmaps/target
BUILDLINK_FILES.X11+=	include/X11/bitmaps/terminal
BUILDLINK_FILES.X11+=	include/X11/bitmaps/tie_fighter
BUILDLINK_FILES.X11+=	include/X11/bitmaps/up.xbm
BUILDLINK_FILES.X11+=	include/X11/bitmaps/vlines2
BUILDLINK_FILES.X11+=	include/X11/bitmaps/vlines3
BUILDLINK_FILES.X11+=	include/X11/bitmaps/weird_size
BUILDLINK_FILES.X11+=	include/X11/bitmaps/wide_weave
BUILDLINK_FILES.X11+=	include/X11/bitmaps/wider.xbm
BUILDLINK_FILES.X11+=	include/X11/bitmaps/wingdogs
BUILDLINK_FILES.X11+=	include/X11/bitmaps/woman
BUILDLINK_FILES.X11+=	include/X11/bitmaps/xfd_icon
BUILDLINK_FILES.X11+=	include/X11/bitmaps/xlogo11
BUILDLINK_FILES.X11+=	include/X11/bitmaps/xlogo16
BUILDLINK_FILES.X11+=	include/X11/bitmaps/xlogo32
BUILDLINK_FILES.X11+=	include/X11/bitmaps/xlogo64
BUILDLINK_FILES.X11+=	include/X11/bitmaps/xsnow
BUILDLINK_FILES.X11+=	include/X11/cursorfont.h
BUILDLINK_FILES.X11+=	include/X11/extensions/MITMisc.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Print.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Printstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XEVI.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XEVIstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XI.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XIE.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XIElib.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XIEproto.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XIEprotost.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XInput.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XIproto.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XKB.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XKBbells.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XKBconfig.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XKBfile.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XKBgeom.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XKBproto.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XKBrules.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XKBsrv.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XKBstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XKBui.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XKM.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XKMformat.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XLbx.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XShm.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XTest.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xag.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xagsrv.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xagstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xcup.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xcupstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xdbe.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xdbeproto.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xext.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xinerama.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xrandr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xrender.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xv.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XvMC.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XvMClib.h
BUILDLINK_FILES.X11+=	include/X11/extensions/XvMCproto.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xvlib.h
BUILDLINK_FILES.X11+=	include/X11/extensions/Xvproto.h
BUILDLINK_FILES.X11+=	include/X11/extensions/dpms.h
BUILDLINK_FILES.X11+=	include/X11/extensions/dpmsstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/fontcache.h
BUILDLINK_FILES.X11+=	include/X11/extensions/fontcacheP.h
BUILDLINK_FILES.X11+=	include/X11/extensions/fontcachstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/lbxbuf.h
BUILDLINK_FILES.X11+=	include/X11/extensions/lbxbufstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/lbxdeltastr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/lbximage.h
BUILDLINK_FILES.X11+=	include/X11/extensions/lbxopts.h
BUILDLINK_FILES.X11+=	include/X11/extensions/lbxstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/lbxzlib.h
BUILDLINK_FILES.X11+=	include/X11/extensions/multibuf.h
BUILDLINK_FILES.X11+=	include/X11/extensions/panoramiXext.h
BUILDLINK_FILES.X11+=	include/X11/extensions/panoramiXproto.h
BUILDLINK_FILES.X11+=	include/X11/extensions/record.h
BUILDLINK_FILES.X11+=	include/X11/extensions/recordstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/randr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/randrproto.h
BUILDLINK_FILES.X11+=	include/X11/extensions/render.h
BUILDLINK_FILES.X11+=	include/X11/extensions/renderproto.h
BUILDLINK_FILES.X11+=	include/X11/extensions/saver.h
BUILDLINK_FILES.X11+=	include/X11/extensions/saverproto.h
BUILDLINK_FILES.X11+=	include/X11/extensions/scrnsaver.h
BUILDLINK_FILES.X11+=	include/X11/extensions/security.h
BUILDLINK_FILES.X11+=	include/X11/extensions/securstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/shape.h
BUILDLINK_FILES.X11+=	include/X11/extensions/sync.h
BUILDLINK_FILES.X11+=	include/X11/extensions/xf86bigfont.h
BUILDLINK_FILES.X11+=	include/X11/extensions/xf86bigfstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/xf86dga.h
BUILDLINK_FILES.X11+=	include/X11/extensions/xf86dga1.h
BUILDLINK_FILES.X11+=	include/X11/extensions/xf86dga1str.h
BUILDLINK_FILES.X11+=	include/X11/extensions/xf86dgastr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/xf86misc.h
BUILDLINK_FILES.X11+=	include/X11/extensions/xf86mscstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/xf86vmode.h
BUILDLINK_FILES.X11+=	include/X11/extensions/xf86vmstr.h
BUILDLINK_FILES.X11+=	include/X11/extensions/xtestext1.h
BUILDLINK_FILES.X11+=	include/X11/fonts/FS.h
BUILDLINK_FILES.X11+=	include/X11/fonts/FSlib.h
BUILDLINK_FILES.X11+=	include/X11/fonts/FSproto.h
BUILDLINK_FILES.X11+=	include/X11/fonts/codeconv/cconvversion.h
BUILDLINK_FILES.X11+=	include/X11/fonts/codeconv/xttcap.h
BUILDLINK_FILES.X11+=	include/X11/fonts/codeconv/xttcconv.h
BUILDLINK_FILES.X11+=	include/X11/fonts/codeconv/xttcconvP.h
BUILDLINK_FILES.X11+=	include/X11/fonts/codeconv/xttcommon.h
BUILDLINK_FILES.X11+=	include/X11/fonts/codeconv/xttversion.h
BUILDLINK_FILES.X11+=	include/X11/fonts/fsmasks.h
BUILDLINK_FILES.X11+=	include/X11/keysym.h
BUILDLINK_FILES.X11+=	include/X11/keysymdef.h
BUILDLINK_FILES.X11+=	include/xf86Optrec.h
BUILDLINK_FILES.X11+=	include/xf86Parser.h
BUILDLINK_FILES.X11+=	lib/libFS.a
BUILDLINK_FILES.X11+=	lib/libICE.a
BUILDLINK_FILES.X11+=	lib/libICE.so
BUILDLINK_FILES.X11+=	lib/libICE.so.6
BUILDLINK_FILES.X11+=	lib/libICE.so.6.3
BUILDLINK_FILES.X11+=	lib/libPEX5.a
BUILDLINK_FILES.X11+=	lib/libPEX5.so
BUILDLINK_FILES.X11+=	lib/libPEX5.so.6
BUILDLINK_FILES.X11+=	lib/libPEX5.so.6.0
BUILDLINK_FILES.X11+=	lib/libSM.a
BUILDLINK_FILES.X11+=	lib/libSM.so
BUILDLINK_FILES.X11+=	lib/libSM.so.6
BUILDLINK_FILES.X11+=	lib/libSM.so.6.0
BUILDLINK_FILES.X11+=	lib/libX11.a
BUILDLINK_FILES.X11+=	lib/libX11.so
BUILDLINK_FILES.X11+=	lib/libX11.so.6
BUILDLINK_FILES.X11+=	lib/libX11.so.6.1
BUILDLINK_FILES.X11+=	lib/libX11.so.6.2
BUILDLINK_FILES.X11+=	lib/libXIE.a
BUILDLINK_FILES.X11+=	lib/libXIE.so
BUILDLINK_FILES.X11+=	lib/libXIE.so.6
BUILDLINK_FILES.X11+=	lib/libXIE.so.6.0
BUILDLINK_FILES.X11+=	lib/libXau.a
BUILDLINK_FILES.X11+=	lib/libXaw.a
BUILDLINK_FILES.X11+=	lib/libXaw.so
BUILDLINK_FILES.X11+=	lib/libXaw.so.6
BUILDLINK_FILES.X11+=	lib/libXaw.so.6.1
BUILDLINK_FILES.X11+=	lib/libXaw.so.7
BUILDLINK_FILES.X11+=	lib/libXaw.so.7.0
BUILDLINK_FILES.X11+=	lib/libXdmcp.a
BUILDLINK_FILES.X11+=	lib/libXext.a
BUILDLINK_FILES.X11+=	lib/libXext.so
BUILDLINK_FILES.X11+=	lib/libXext.so.6
BUILDLINK_FILES.X11+=	lib/libXext.so.6.3
BUILDLINK_FILES.X11+=	lib/libXext.so.6.4
BUILDLINK_FILES.X11+=	lib/libXfont.a
BUILDLINK_FILES.X11+=	lib/libXfont.so
BUILDLINK_FILES.X11+=	lib/libXfont.so.1
BUILDLINK_FILES.X11+=	lib/libXfont.so.1.3
BUILDLINK_FILES.X11+=	lib/libXfont.so.1.4
BUILDLINK_FILES.X11+=	lib/libXfontcache.a
BUILDLINK_FILES.X11+=	lib/libXft.a
BUILDLINK_FILES.X11+=	lib/libXft.so
BUILDLINK_FILES.X11+=	lib/libXft.so.1
BUILDLINK_FILES.X11+=	lib/libXft.so.1.0
BUILDLINK_FILES.X11+=	lib/libXft.so.1.1
BUILDLINK_FILES.X11+=	lib/libXi.a
BUILDLINK_FILES.X11+=	lib/libXi.so
BUILDLINK_FILES.X11+=	lib/libXi.so.6
BUILDLINK_FILES.X11+=	lib/libXi.so.6.0
BUILDLINK_FILES.X11+=	lib/libXinerama.a
BUILDLINK_FILES.X11+=	lib/libXmu.a
BUILDLINK_FILES.X11+=	lib/libXmu.so
BUILDLINK_FILES.X11+=	lib/libXmu.so.6
BUILDLINK_FILES.X11+=	lib/libXmu.so.6.2
BUILDLINK_FILES.X11+=	lib/libXmuu.a
BUILDLINK_FILES.X11+=	lib/libXmuu.so
BUILDLINK_FILES.X11+=	lib/libXmuu.so.1
BUILDLINK_FILES.X11+=	lib/libXmuu.so.1.0
BUILDLINK_FILES.X11+=	lib/libXp.a
BUILDLINK_FILES.X11+=	lib/libXp.so
BUILDLINK_FILES.X11+=	lib/libXp.so.6
BUILDLINK_FILES.X11+=	lib/libXp.so.6.2
BUILDLINK_FILES.X11+=	lib/libXrandr.a
BUILDLINK_FILES.X11+=	lib/libXrandr.so
BUILDLINK_FILES.X11+=	lib/libXrandr.so.1
BUILDLINK_FILES.X11+=	lib/libXrandr.so.1.0
BUILDLINK_FILES.X11+=	lib/libXrender.a
BUILDLINK_FILES.X11+=	lib/libXrender.so
BUILDLINK_FILES.X11+=	lib/libXrender.so.1
BUILDLINK_FILES.X11+=	lib/libXrender.so.1.0
BUILDLINK_FILES.X11+=	lib/libXss.a
BUILDLINK_FILES.X11+=	lib/libXt.a
BUILDLINK_FILES.X11+=	lib/libXt.so
BUILDLINK_FILES.X11+=	lib/libXt.so.6
BUILDLINK_FILES.X11+=	lib/libXt.so.6.0
BUILDLINK_FILES.X11+=	lib/libXtst.a
BUILDLINK_FILES.X11+=	lib/libXtst.so
BUILDLINK_FILES.X11+=	lib/libXtst.so.6
BUILDLINK_FILES.X11+=	lib/libXtst.so.6.1
BUILDLINK_FILES.X11+=	lib/libXv.a
BUILDLINK_FILES.X11+=	lib/libXvMC.a
BUILDLINK_FILES.X11+=	lib/libXxf86dga.a
BUILDLINK_FILES.X11+=	lib/libXxf86misc.a
BUILDLINK_FILES.X11+=	lib/libXxf86vm.a
BUILDLINK_FILES.X11+=	lib/libdps.a
BUILDLINK_FILES.X11+=	lib/libdps.so
BUILDLINK_FILES.X11+=	lib/libdps.so.1
BUILDLINK_FILES.X11+=	lib/libdps.so.1.0
BUILDLINK_FILES.X11+=	lib/libdpstk.a
BUILDLINK_FILES.X11+=	lib/libdpstk.so
BUILDLINK_FILES.X11+=	lib/libdpstk.so.1
BUILDLINK_FILES.X11+=	lib/libdpstk.so.1.0
BUILDLINK_FILES.X11+=	lib/libfntstubs.a
BUILDLINK_FILES.X11+=	lib/libfontenc.a
BUILDLINK_FILES.X11+=	lib/liboldX.a
BUILDLINK_FILES.X11+=	lib/liboldX.so
BUILDLINK_FILES.X11+=	lib/liboldX.so.6
BUILDLINK_FILES.X11+=	lib/liboldX.so.6.0
BUILDLINK_FILES.X11+=	lib/libpsres.a
BUILDLINK_FILES.X11+=	lib/libpsres.so
BUILDLINK_FILES.X11+=	lib/libpsres.so.1
BUILDLINK_FILES.X11+=	lib/libpsres.so.1.0
BUILDLINK_FILES.X11+=	lib/libxf86config.a
BUILDLINK_FILES.X11+=	lib/libxkbfile.a
BUILDLINK_FILES.X11+=	lib/libxkbui.a

BUILDLINK_TARGETS.X11=	X11-buildlink
BUILDLINK_TARGETS+=	${BUILDLINK_TARGETS.X11}

pre-configure: ${BUILDLINK_TARGETS.X11}
X11-buildlink: _BUILDLINK_USE

.endif	# X11_LINKS_BUILDLINK_MK
