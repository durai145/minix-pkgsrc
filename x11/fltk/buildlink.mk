# $NetBSD: buildlink.mk,v 1.5 2001/06/11 01:59:38 jlam Exp $
#
# This Makefile fragment is included by packages that use FLTK.
#
# To use this Makefile fragment, simply:
#
# (1) Optionally define BUILDLINK_DEPENDS.fltk to the dependency pattern
#     for the version of FLTK desired.
# (2) Include this Makefile fragment in the package Makefile,
# (3) Add ${BUILDLINK_DIR}/include to the front of the C preprocessor's header
#     search path, and
# (4) Add ${BUILDLINK_DIR}/lib to the front of the linker's library search
#     path.

.if !defined(FLTK_BUILDLINK_MK)
FLTK_BUILDLINK_MK=	# defined

BUILDLINK_DEPENDS.fltk?=	fltk>=1.0.9
DEPENDS+=	${BUILDLINK_DEPENDS.fltk}:../../x11/fltk

BUILDLINK_PREFIX.fltk=	${X11PREFIX}
BUILDLINK_FILES.fltk=	include/FL/*
BUILDLINK_FILES.fltk+=	lib/libfltk.*

.include "../../graphics/Mesa/buildlink.mk"

BUILDLINK_TARGETS.fltk=	fltk-buildlink
BUILDLINK_TARGETS+=	${BUILDLINK_TARGETS.fltk}

pre-configure: ${BUILDLINK_TARGETS.fltk}
fltk-buildlink: _BUILDLINK_USE

.include "../../mk/bsd.buildlink.mk"

.endif	# FLTK_BUILDLINK_MK
