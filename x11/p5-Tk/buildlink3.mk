# $NetBSD$

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
P5_TK_BUILDLINK3_MK:=	${P5_TK_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	p5-Tk
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Np5-Tk}
BUILDLINK_PACKAGES+=	p5-Tk

.if !empty(P5_TK_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.p5-Tk+=	p5-Tk>=804.027
BUILDLINK_PKGSRCDIR.p5-Tk?=	../../x11/p5-Tk
BUILDLINK_CONTENTS_FILTER.p5-Tk= \
        ${EGREP} '(include.*/|\.def$$|\.m$$|\.t$$|\.h$$|\.idl$$|\.pc$$|/lib[^/]*\.[^/]*$$)'
.endif	# P5_TK_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
