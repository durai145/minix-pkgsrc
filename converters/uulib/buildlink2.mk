# $NetBSD: buildlink2.mk,v 1.2 2002/08/25 19:22:02 jlam Exp $

.if !defined(UULIB_BUILDLINK2_MK)
UULIB_BUILDLINK2_MK=	# defined

BUILDLINK_PACKAGES+=		uulib
BUILDLINK_DEPENDS.uulib?=	uulib>=0.5.18
BUILDLINK_PKGSRCDIR.uulib?=	../../converters/uulib

EVAL_PREFIX+=		BUILDLINK_PREFIX.uulib=uulib
BUILDLINK_PREFIX.uulib_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.uulib=	include/uu.h
BUILDLINK_FILES.uulib+=	lib/libuu.*

BUILDLINK_TARGETS+=	uulib-buildlink

uulib-buildlink: _BUILDLINK_USE

.endif	# UULIB_BUILDLINK2_MK
