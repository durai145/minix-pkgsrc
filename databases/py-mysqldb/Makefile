# $NetBSD: Makefile,v 1.36 2012/10/16 07:39:10 wiz Exp $

DISTNAME=	MySQL-python-${DIST_VERSION}
PKGNAME=	${PYPKGPREFIX}-mysqldb-${DIST_VERSION:S/c/rc/}
DIST_VERSION=	1.2.3
PKGREVISION=	3
CATEGORIES=	databases python
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mysql-python/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://sourceforge.net/projects/mysql-python
COMMENT=	MySQL interface for Python
LICENSE=	gnu-gpl-v2

EGG_NAME=	${DISTNAME:S/MySQL-/MySQL_/}

.include "../../mk/mysql.buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
