# $NetBSD$

DISTNAME=	cjkutils.doc
PKGNAME=	tex-${DISTNAME:S/./-/}-4.8.2
TEXLIVE_REV=	23089

MAINTAINER=	rxg@NetBSD.org,hubertf@NetBSD.org
COMMENT=	Documentation for tex-cjkutils

TEX_TEXMF_DIRS+=	${PREFIX}/share/texmf

TEXLIVE_IGNORE_PATTERNS+=	texmf/doc/man

.include "../../print/texlive/package.mk"
.include "../../mk/bsd.pkg.mk"
