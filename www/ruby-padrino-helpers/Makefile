# $NetBSD$

DISTNAME=	padrino-helpers-${RUBY_PADRINO_VERS}
CATEGORIES=	www

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	${RUBY_PADRINO_SITE}
COMMENT=	Helpers for padrino
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-padrino-core>=${RUBY_PADRINO_VERS}:../../www/ruby-padrino-core
DEPENDS+=	${RUBY_PKGPREFIX}-i18n>=0.6<1:../../devel/ruby-i18n

.include "../../www/ruby-padrino/Makefile.common"
.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
