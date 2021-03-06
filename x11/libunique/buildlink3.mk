# $NetBSD: buildlink3.mk,v 1.16 2012/10/08 23:00:42 adam Exp $

BUILDLINK_TREE+=	libunique

.if !defined(LIBUNIQUE_BUILDLINK3_MK)
LIBUNIQUE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libunique+=	libunique>=1.0.4
BUILDLINK_ABI_DEPENDS.libunique+=	libunique>=1.1.6nb14
BUILDLINK_PKGSRCDIR.libunique?=	../../x11/libunique

pkgbase := libunique
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.libunique:Mdbus)
.include "../../sysutils/dbus-glib/buildlink3.mk"
.endif

.include "../../x11/gtk2/buildlink3.mk"
.endif # LIBUNIQUE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libunique
