# $NetBSD: buildlink3.mk,v 1.9 2005/09/05 07:34:05 adam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
GNUTLS_BUILDLINK3_MK:=	${GNUTLS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	gnutls
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngnutls}
BUILDLINK_PACKAGES+=	gnutls

.if !empty(GNUTLS_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.gnutls+=	gnutls>=1.0.13
BUILDLINK_RECOMMENDED.gnutls+=	gnutls>=1.3.2
BUILDLINK_PKGSRCDIR.gnutls?=	../../security/gnutls
.endif	# GNUTLS_BUILDLINK3_MK

.include "../../archivers/lzo/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libcfg+/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../security/libgcrypt/buildlink3.mk"
.include "../../security/libtasn1/buildlink3.mk"
.include "../../security/opencdk/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
