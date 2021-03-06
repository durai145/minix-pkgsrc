# $NetBSD: buildlink3.mk,v 1.4 2013/02/06 23:21:30 jperkin Exp $

BUILDLINK_TREE+=	mysql-server

.if !defined(MYSQL_SERVER_BUILDLINK3_MK)
MYSQL_SERVER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mysql-server+=	mysql-server>=5.6.10
BUILDLINK_ABI_DEPENDS.mysql-server?=	mysql-server>=5.6.10
BUILDLINK_PKGSRCDIR.mysql-server?=	../../databases/mysql56-server
BUILDLINK_LIBDIRS.mysql-server?=	lib

.endif	# MYSQL_SERVER_BUILDLINK3_MK

BUILDLINK_TREE+=	-mysql-server
