# $NetBSD: buildlink3.mk,v 1.1.1.1 2010/05/01 15:09:44 tonnerre Exp $

BUILDLINK_TREE+=	libcassandra

.if !defined(LIBCASSANDRA_BUILDLINK3_MK)
LIBCASSANDRA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libcassandra+=	libcassandra>=20100501
BUILDLINK_ABI_DEPENDS.libcassandra+=	libcassandra>=20100501
BUILDLINK_PKGSRCDIR.libcassandra?=	../../databases/libcassandra
.endif # LIBCASSANDRA_BUILDLINK3_MK

BUILDLINK_TREE+=	-libcassandra
