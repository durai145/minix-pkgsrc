# $NetBSD: Makefile,v 1.10 2010/10/12 16:43:00 joerg Exp $

DISTNAME=	xfsprogs-2.7.3.src
PKGNAME=	${DISTNAME:S/.src//}
PKGREVISION=	3
CATEGORIES=	sysutils
MASTER_SITES=	ftp://oss.sgi.com/projects/xfs/cmd_tars/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://oss.sgi.com/projects/xfs/
COMMENT=	XFS filesystem manipulation utilities

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake autoconf msgfmt
USE_LIBTOOL=	yes
CONFIGURE_ARGS+=--enable-readline
CONFIGURE_ENV+=	INSTALL_USER=${ROOT_USER} INSTALL_GROUP=${ROOT_GROUP}
INSTALL_SH_OVERRIDE=	no

INSTALL_MAKE_FLAGS+=	prefix=${DESTDIR}${PREFIX} \
			PKG_MAN_DIR=${DESTDIR}${PREFIX}/${PKGMANDIR}

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}
BUILD_TARGET=

.include "../../devel/readline/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
