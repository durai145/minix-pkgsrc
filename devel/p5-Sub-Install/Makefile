# $NetBSD: Makefile,v 1.8 2012/10/03 21:55:37 wiz Exp $

DISTNAME=	Sub-Install-0.926
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Sub/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Sub-Install/
COMMENT=	Install subroutines into packages easily
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=		auto/Sub/Install/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
