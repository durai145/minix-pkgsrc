# $NetBSD: buildlink3.mk,v 1.10 2012/03/03 00:12:11 wiz Exp $

BUILDLINK_TREE+=	gtkmm-utils

.if !defined(GTKMM_UTILS_BUILDLINK3_MK)
GTKMM_UTILS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gtkmm-utils+=	gtkmm-utils>=0.4.1
BUILDLINK_ABI_DEPENDS.gtkmm-utils+=	gtkmm-utils>=0.4.1nb8
BUILDLINK_PKGSRCDIR.gtkmm-utils?=	../../x11/gtkmm-utils

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/glibmm/buildlink3.mk"
.include "../../devel/libsigc++/buildlink3.mk"
.include "../../x11/gtkmm/buildlink3.mk"
.endif # GTKMM_UTILS_BUILDLINK3_MK

BUILDLINK_TREE+=	-gtkmm-utils
