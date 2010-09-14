# $NetBSD: buildlink3.mk,v 1.3 2010/06/13 22:45:52 wiz Exp $

BUILDLINK_TREE+=	qwt

.if !defined(QWT_BUILDLINK3_MK)
QWT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qwt+=	qwt>=5.2.0
BUILDLINK_ABI_DEPENDS.qwt?=	qwt>=5.2.1nb1
BUILDLINK_PKGSRCDIR.qwt?=	../../x11/qwt-qt4

.include "../../x11/qt4-libs/buildlink3.mk"
.endif	# QWT_BUILDLINK3_MK

BUILDLINK_TREE+=	-qwt
