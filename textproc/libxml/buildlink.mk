# $NetBSD: buildlink.mk,v 1.3 2001/07/01 22:59:30 jlam Exp $
#
# This Makefile fragment is included by packages that use libxml.
#
# To use this Makefile fragment, simply:
#
# (1) Optionally define BUILDLINK_DEPENDS.libxml to the dependency patthern
#     for the version of libxml desired.
# (2) Include this Makefile fragment in the package Makefile,
# (3) Add ${BUILDLINK_DIR}/include to the front of the C preprocessor's header
#     search path, and
# (4) Add ${BUILDLINK_DIR}/lib to the front of the linker's library search
#     path.

.if !defined(LIBXML_BUILDLINK_MK)
LIBXML_BUILDLINK_MK=	# defined

.include "../../mk/bsd.buildlink.mk"

BUILDLINK_DEPENDS.libxml?=	libxml>=1.8.11
DEPENDS+=	${BUILDLINK_DEPENDS.libxml}:../../textproc/libxml

BUILDLINK_PREFIX.libxml=	${LOCALBASE}
BUILDLINK_FILES.libxml=		include/gnome-xml/*
BUILDLINK_FILES.libxml+=	lib/libxml.*
BUILDLINK_FILES.libxml+=	lib/xmlConf.sh

.include "../../devel/zlib/buildlink.mk"

BUILDLINK_TARGETS.libxml=	libxml-buildlink
BUILDLINK_TARGETS.libxml+=	libxml-buildlink-config-wrapper
BUILDLINK_TARGETS+=		${BUILDLINK_TARGETS.libxml}

BUILDLINK_CONFIG.libxml=		${LOCALBASE}/bin/xml-config
BUILDLINK_CONFIG_WRAPPER.libxml=	${BUILDLINK_DIR}/bin/xml-config

.if defined(USE_CONFIG_WRAPPER) && defined(GNU_CONFIGURE)
XML_CONFIG?=		${BUILDLINK_CONFIG_WRAPPER.libxml}
CONFIGURE_ENV+=		XML_CONFIG="${XML_CONFIG}"
.endif

pre-configure: ${BUILDLINK_TARGETS.libxml}
libxml-buildlink: _BUILDLINK_USE
libxml-buildlink-config-wrapper: _BUILDLINK_CONFIG_WRAPPER_USE

.endif	# LIBXML_BUILDLINK_MK
