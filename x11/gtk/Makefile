# $NetBSD: Makefile,v 1.128 2012/10/23 10:24:17 wiz Exp $

DISTNAME=		gtk+-1.2.10
PKGREVISION=		11
CATEGORIES=		x11
MASTER_SITES=		ftp://ftp.gtk.org/pub/gtk/v1.2/ \
			${MASTER_SITE_GNOME:=sources/gtk+/1.2/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.gtk.org/
COMMENT=		GIMP Toolkit v1 - libraries for building X11 user interfaces

PKG_INSTALLATION_TYPES=	overwrite pkgviews

.include "../../mk/bsd.prefs.mk"

USE_X11BASE=		yes
USE_TOOLS+=		gmake msgfmt perl
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES+=		c99
USE_LIBTOOL=		yes
PKGCONFIG_OVERRIDE=	gdk.pc.in
PKGCONFIG_OVERRIDE+=	gtk+.pc.in
INFO_FILES=		# PLIST

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-xinput=xfree \
			--with-native-locale=yes \
			--sysconfdir=${PREFIX}/share
CONFIGURE_ENV+=		X_LDFLAGS=${X_LDFLAGS:Q}

MAKE_ENV+=		PKGLOCALEDIR=${PKGLOCALEDIR:Q}
PLIST_SUBST+=		LOCALBASE=${LOCALBASE:Q}

# The following ensures that `gtk-config --libs' includes the correct linker
# flags for linking the X11 libs.
#
X_LDFLAGS=		${X11_LDFLAGS}

GTK_VERSION=		${DISTNAME:S/gtk+-//}
GTK_MAJOR_VERSION=	${GTK_VERSION:C/\..*//}
GTK_MINOR_VERSION=	${GTK_VERSION:C/[^.]*\.//:C/\..*//}
GTK_MICRO_VERSION=	${GTK_VERSION:C/.*\.//}

# We patch the version info in the configure scripts for reasons related to
# shared library numbering, but we don't want it to leak into the various
# installed files.  Explicitly replace the version number with the correct
# one derived from the package name.
#
pre-configure:
	@cd ${WRKSRC};							\
	files="gtk-config.in docs/gtk-config.1.in gdk.pc.in gtk+.pc.in gtk/gtkfeatures.h.in"; \
	for file in $${files}; do					\
		${MV} -f $${file} $${file}.fixme;			\
		${SED}	-e "s|@GTK_MAJOR_VERSION@|${GTK_MAJOR_VERSION}|g" \
			-e "s|@GTK_MINOR_VERSION@|${GTK_MINOR_VERSION}|g" \
			-e "s|@GTK_MICRO_VERSION@|${GTK_MICRO_VERSION}|g" \
			-e "s|@VERSION@|${GTK_VERSION}|g"		\
			$${file}.fixme > $${file};			\
		${RM} $${file}.fixme;					\
	done

BUILDLINK_DEPMETHOD.libXt?=	build

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXi/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
