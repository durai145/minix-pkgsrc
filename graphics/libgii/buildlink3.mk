# $NetBSD: buildlink3.mk,v 1.2 2004/10/03 00:14:55 tv Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBGII_BUILDLINK3_MK:=	${LIBGII_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libgii
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibgii}
BUILDLINK_PACKAGES+=	libgii

.if !empty(LIBGII_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libgii+=	libgii>=0.9.0
BUILDLINK_PKGSRCDIR.libgii?=	../../graphics/libgii

USE_X11=	yes

.endif	# LIBGII_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
