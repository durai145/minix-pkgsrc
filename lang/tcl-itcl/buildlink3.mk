# $NetBSD$

BUILDLINK_TREE+=	tcl-itcl

.if !defined(TCL_ITCL_BUILDLINK3_MK)
TCL_ITCL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.tcl-itcl+=	tcl-itcl>=3.4.1
BUILDLINK_PKGSRCDIR.tcl-itcl?=	../../lang/tcl-itcl

.include "../../x11/tk/buildlink3.mk"
.endif	# TCL_ITCL_BUILDLINK3_MK

BUILDLINK_TREE+=	-tcl-itcl
