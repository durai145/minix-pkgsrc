# $NetBSD: bsd.fetch.mk,v 1.2 2006/06/06 03:35:42 jlam Exp $
#
# This Makefile fragment is included by bsd.pkg.mk and defines the
# relevant variables and targets for the "fetch" step.
#
# The following are the "public" targets provided by this module:
#
#    fetch
#
# The following targets may be overridden in a package Makefile:
#
#    pre-fetch, do-fetch, post-fetch
#

.include "${PKGSRCDIR}/mk/fetch/sites.mk"
.include "${PKGSRCDIR}/mk/fetch/fetch.mk"
.include "${PKGSRCDIR}/mk/fetch/fetch-list.mk"
.include "${PKGSRCDIR}/mk/fetch/distclean.mk"
