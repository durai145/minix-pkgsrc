# $NetBSD: Makefile,v 1.10 2012/01/18 14:35:03 adam Exp $

PKGREVISION=		3
PERDITION_COMMENT=	Berkeley DB user database module
PERDITION_PKGNAME=	bdb
BUILD_DIRS=		makebdb perdition/db/bdb

BDB_ACCEPTED=		db4 db5

BUILDLINK_TRANSFORM+=	l:db:${BDB_TYPE}
.include "../../mk/bdb.buildlink3.mk"
.include "../../mail/perdition/buildlink3.mk"
.include "../../mail/perdition/Makefile.common"
