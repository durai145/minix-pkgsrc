# $NetBSD: Makefile,v 1.14 2013/02/16 11:23:45 wiz Exp $

PKGNAME=	${DISTNAME:C:-:-gtk-:}

USE_LANGUAGES+=		c c++
INSTALL_ENV+=		INSTALL_ROOT=${DESTDIR}${PREFIX}

CONFIGURE_ARGS+=	--disable-cli --disable-daemon --with-gtk

CONFLICTS+=		Transmission-gui-[0-9]*

.include "../../net/transmission/Makefile.common"

post-build:
	cd ${WRKSRC}/gtk && ${SETENV} ${MAKE_ENV} make
	cd ${WRKSRC}/po && ${SETENV} ${MAKE_ENV} make

do-install:
	cd ${WRKSRC}/gtk && ${SETENV} ${INSTALL_ENV} make install
	cd ${WRKSRC}/po && ${SETENV} ${INSTALL_ENV} make install

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
