# $NetBSD: Makefile,v 1.5 2008/06/20 01:09:09 joerg Exp $
#

DISTNAME=		synce-librapi2-0.9.1
PKGREVISION=		1
CATEGORIES=		comms
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=synce/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://synce.sourceforge.net/
COMMENT=		Utilities/libraries to make RAPI calls on WinCE devices

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

REPLACE_INTERPRETER+=	sh
REPLACE.sh.old=		/bin/bash
REPLACE.sh.new=		${SH}
REPLACE_FILES.sh=	script/synce-*.in

.include "../../comms/synce-libsynce/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
