# $NetBSD: Makefile,v 1.23 2012/10/03 21:59:02 wiz Exp $
#

DISTNAME=	WWW-Amazon-Wishlist-2.006
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
SVR4_PKGNAME=	p5waw
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=WWW/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/WWW-Amazon-Wishlist/
COMMENT=	Perl5 module to get details from your Amazon wishlist
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews

DEPENDS+=	p5-libwww-[0-9]*:../../www/p5-libwww
DEPENDS+=	p5-HTML-Tree>=0:../../www/p5-HTML-Tree

PERL5_PACKLIST=		auto/WWW/Amazon/Wishlist/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
