# $NetBSD: buildlink2.mk,v 1.7 2003/06/29 11:45:01 jmmv Exp $
#
# This Makefile fragment is included by packages that use xosd.
#
# This file was created automatically using createbuildlink 2.4.
#

.if !defined(XOSD_BUILDLINK2_MK)
XOSD_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=			xosd
BUILDLINK_DEPENDS.xosd?=		xosd>=2.2.5
BUILDLINK_PKGSRCDIR.xosd?=		../../x11/xosd

EVAL_PREFIX+=	BUILDLINK_PREFIX.xosd=xosd
BUILDLINK_PREFIX.xosd_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.xosd+=	include/xosd.h
BUILDLINK_FILES.xosd+=	lib/libxosd.*

BUILDLINK_TARGETS+=	xosd-buildlink

xosd-buildlink: _BUILDLINK_USE

.endif	# XOSD_BUILDLINK2_MK
