# $NetBSD: buildlink3.mk,v 1.3 2010/06/13 22:44:40 wiz Exp $

BUILDLINK_TREE+=	p5-cairo

.if !defined(P5_CAIRO_BUILDLINK3_MK)
P5_CAIRO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.p5-cairo+=	p5-cairo>=1.023
BUILDLINK_ABI_DEPENDS.p5-cairo?=	p5-cairo>=1.061nb3
BUILDLINK_PKGSRCDIR.p5-cairo?=	../../graphics/p5-cairo

.include "../../graphics/cairo/buildlink3.mk"
.endif # P5_CAIRO_BUILDLINK3_MK

BUILDLINK_TREE+=	-p5-cairo
