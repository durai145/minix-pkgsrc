# $NetBSD: dlopen.buildlink3.mk,v 1.8 2004/11/26 09:32:06 jlam Exp $
#
# This fragment provides a NROFF macro, and includes a dependency
# on textproc/groff if needed.  This does not depend on the OS providing
# groff; if any system-supplied nroff is available, it is accepted.
#

.include "../../mk/bsd.prefs.mk"

.if !defined(NROFF)
.  if exists(/usr/bin/nroff)
NROFF?=			/usr/bin/nroff
.  else
.    include "../../textproc/groff/buildlink3.mk"
NROFF?=			${BUILDLINK_PREFIX.groff}/bin/nroff
.  endif
.endif
