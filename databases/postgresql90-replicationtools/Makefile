# $NetBSD: Makefile,v 1.7 2013/02/06 23:21:58 jperkin Exp $

PKGNAME=	${DISTNAME:C/-/90-replicationtools-/}
COMMENT=	PostgreSQL replication tools

.include "../../databases/postgresql90/Makefile.common"

BUILD_DIRS+=		contrib/pg_archivecleanup
BUILD_DIRS+=		contrib/pg_standby

.include "../../databases/postgresql90-client/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
