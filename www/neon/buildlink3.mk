# $NetBSD$

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
NEON_BUILDLINK3_MK:=	${NEON_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	neon
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nneon}
BUILDLINK_PACKAGES+=	neon

.if !empty(NEON_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.neon+=	neon>=0.24.4
BUILDLINK_PKGSRCDIR.neon?=	../../www/neon

.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../textproc/expat/buildlink3.mk"

.endif	# NEON_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
