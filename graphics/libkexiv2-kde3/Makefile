# $NetBSD: Makefile,v 1.8 2013/02/09 22:11:30 ryoon Exp $
#

DISTNAME=	libkexiv2-0.1.9
PKGREVISION=	11
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kipi/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.kipi-plugins.org/
COMMENT=	KDE wrapper for exiv2
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes
SET_LIBDIR=	yes

PKGCONFIG_OVERRIDE+=	libkexiv2/libkexiv2.pc.in

.include "../../meta-pkgs/kde3/kde3.mk"
.include "../../graphics/exiv2/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
