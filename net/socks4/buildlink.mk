# $NetBSD: buildlink.mk,v 1.7 2001/07/27 13:33:33 jlam Exp $
#
# This Makefile fragment is included by packages that use socks4.
#
# To use this Makefile fragment, simply:
#
# (1) Optionally define BUILDLINK_DEPENDS.socks4 to the dependency pattern
#     for the version of socks4 desired.
# (2) Include this Makefile fragment in the package Makefile,
# (3) Add ${BUILDLINK_DIR}/include to the front of the C preprocessor's header
#     search path, and
# (4) Add ${BUILDLINK_DIR}/lib to the front of the linker's library search
#     path.

.if !defined(SOCKS4_BUILDLINK_MK)
SOCKS4_BUILDLINK_MK=	# defined

.include "../../mk/bsd.buildlink.mk"

BUILDLINK_DEPENDS.socks4?=	socks4>=2.2
DEPENDS+=	${BUILDLINK_DEPENDS.socks4}:../../net/socks4

EVAL_PREFIX+=			BUILDLINK_PREFIX.socks4=socks4
BUILDLINK_PREFIX.socks4_DEFAULT=	${LOCALBASE}
BUILDLINK_FILES.socks4=		lib/libsocks4.*
REPLACE_LIBNAMES_SED=		-e "s|-lsocks[^4]|-lsocks4|g"
REPLACE_LIBNAMES_SED+=		-e "s|-lsocks$|-lsocks4|g"

BUILDLINK_TARGETS.socks4=	socks4-buildlink
BUILDLINK_TARGETS.socks4+=	socks4-buildlink-libsock
BUILDLINK_TARGETS+=		${BUILDLINK_TARGETS.socks4}

pre-configure: ${BUILDLINK_TARGETS.socks4}
socks4-buildlink: _BUILDLINK_USE

socks4-buildlink-libsock:
	${_PKG_SILENT}${_PKG_DEBUG}					\
	cd ${BUILDLINK_DIR}/lib; for lib in libsocks4.*; do		\
		dest=`${ECHO} $${lib} | ${SED} "s|libsocks4\.|libsocks.|g"`; \
		${RM} -f $${dest};					\
		${LN} -sf $${lib} $${dest};				\
	done

.endif	# SOCKS4_BUILDLINK_MK
