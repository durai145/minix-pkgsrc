# $NetBSD: buildlink3.mk,v 1.23 2010/06/13 22:45:27 wiz Exp $

BUILDLINK_TREE+=	gnome-spell

.if !defined(GNOME_SPELL_BUILDLINK3_MK)
GNOME_SPELL_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnome-spell+=		gnome-spell>=1.0.5
BUILDLINK_ABI_DEPENDS.gnome-spell+=	gnome-spell>=1.0.8nb5
BUILDLINK_PKGSRCDIR.gnome-spell?=	../../textproc/gnome-spell

.include "../../devel/libbonobo/buildlink3.mk"
.include "../../devel/libbonoboui/buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../net/ORBit2/buildlink3.mk"
.include "../../textproc/aspell/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # GNOME_SPELL_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnome-spell
