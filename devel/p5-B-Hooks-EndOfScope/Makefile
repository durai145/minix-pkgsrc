# $NetBSD: Makefile,v 1.11 2012/10/03 21:54:37 wiz Exp $

DISTNAME=	B-Hooks-EndOfScope-0.11
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=B/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/B-Hooks-EndOfScope/
COMMENT=	Perl 5 module to execute code after a scope finished compilation
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Sub-Exporter>0:../../devel/p5-Sub-Exporter
DEPENDS+=	p5-Variable-Magic>=0.48:../../devel/p5-Variable-Magic

#USE_LANGUAGES=	c
PERL5_PACKLIST=	auto/B/Hooks/EndOfScope/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
