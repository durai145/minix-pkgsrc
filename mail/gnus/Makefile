# $NetBSD: Makefile,v 1.20 2012/10/08 12:19:12 asau Exp $

DISTNAME=	gnus-5.10.8
PKGNAME=	${EMACS_PKGNAME_PREFIX}${DISTNAME}
PKGREVISION=	1
CATEGORIES=	mail news
MASTER_SITES=	http://gnus.org/dist/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gnus.org/
COMMENT=	Gnus is a flexible message reader running under GNU Emacs

#EMACS_VERSIONS_ACCEPTED=	emacs21 emacs20 xemacs211 xemacs215

DEPENDS+=	digest>=20010101:../../pkgtools/digest

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-lispdir=${EMACS_LISPPREFIX}/gnus
CONFIGURE_ARGS+=	--with-etcdir=${PREFIX}/share/gnus
CONFIGURE_ENV+=		EMACS=${EMACS_BIN:Q}
EMACS_MODULES+=		base

# Avoid conflicting with Emacsen provided gnus info files
GNU_CONFIGURE_INFODIR=	${PREFIX}/share/doc/gnus/info

USE_TOOLS+=		makeinfo
INFO_FILES=		# PLIST

.include "../../editors/emacs/modules.mk"
.include "../../mk/bsd.pkg.mk"
