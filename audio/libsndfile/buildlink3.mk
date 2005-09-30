# $NetBSD: buildlink3.mk,v 1.3 2004/10/03 00:13:07 tv Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBSNDFILE_BUILDLINK3_MK:=	${LIBSNDFILE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libsndfile
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibsndfile}
BUILDLINK_PACKAGES+=	libsndfile

.if !empty(LIBSNDFILE_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libsndfile+=		libsndfile>=1.0.0
BUILDLINK_RECOMMENDED.libsndfile+=	libsndfile>=1.0.10nb1
BUILDLINK_PKGSRCDIR.libsndfile?=	../../audio/libsndfile
.endif	# LIBSNDFILE_BUILDLINK3_MK

.include "../../audio/flac/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
