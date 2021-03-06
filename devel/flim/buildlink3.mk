# $NetBSD: buildlink3.mk,v 1.1 2007/10/29 12:41:17 uebayasi Exp $
#

BUILDLINK_TREE+=	flim

.if !defined(FLIM_BUILDLINK3_MK)
FLIM_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.flim+=	${EMACS_PKGNAME_PREFIX}flim>=1.14
BUILDLINK_PKGSRCDIR.flim?=	../../devel/flim

BUILDLINK_CONTENTS_FILTER.flim=	${EGREP} '.*\.el$$|.*\.elc$$'

.include "../../devel/apel/buildlink3.mk"
.endif # FLIM_BUILDLINK3_MK

BUILDLINK_TREE+=	-flim
