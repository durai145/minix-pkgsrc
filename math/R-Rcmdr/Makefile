# $NetBSD: Makefile,v 1.6 2011/09/26 19:36:54 ryoon Exp $

CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	${R_HOMEPAGE_BASE}/Rcmdr/
COMMENT=	Platform-independent basic-statistics GUI for R
LICENSE=	gnu-gpl-v2

R_PKGNAME=	Rcmdr
R_PKGVER=	1.8-4

DEPENDS+=	R-car>=2.0.12:../../math/R-car

.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
