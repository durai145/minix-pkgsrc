# $NetBSD: Makefile,v 1.30 2012/12/16 01:52:35 obache Exp $
#

VERSION=		3.1.4
DISTNAME=		xen-${VERSION}
PKGNAME=		xentools3-${VERSION}
PKGREVISION=		13
CATEGORIES=		sysutils
MASTER_SITES=	http://bits.xensource.com/oss-xen/release/${VERSION}/
EXTRACT_SUFX=		.tar.gz

MAINTAINER=		bouyer@NetBSD.org
HOMEPAGE=		http://xen.org/
COMMENT=		Userland Tools for Xen

#DEPENDS+=		${PYPKGPREFIX}-twisted-[0-9]*:../../net/py-twisted
DEPENDS+=		${PYPKGPREFIX}-readline-[0-9]*:../../devel/py-readline

MAKE_JOBS_SAFE=		no

PKG_SYSCONFSUBDIR=	xen

ONLY_FOR_PLATFORM=	Linux-2.[46]*-i386 Linux-2.[46]*-x86_64
ONLY_FOR_PLATFORM+=	NetBSD-*-i386 NetBSD-*-x86_64

CONFLICTS+=		libxen-[0-9]*
CONFLICTS+=		xentools20-[0-9]*
CONFLICTS+=		xentools30-* xentools33-*
CONFLICTS+=		xenstoretools-*

WRKSRC=			${WRKDIR}/xen-${VERSION}/tools
CHECK_PORTABILITY_SKIP=	examples/* xm-test/ramdisk/make-release.sh

EGDIR=			${PREFIX}/share/examples/xen
MESSAGE_SUBST=		EGDIR=${EGDIR}

USE_TOOLS+=		perl 	#for pod2man
USE_TOOLS+=		gmake
MAKE_ENV+=		CONFIG_NetBSD=yes
MAKE_ENV+=		CONFIG_MBOOTPACK=no
MAKE_ENV+=		EGDIR=${EGDIR:Q}
MAKE_ENV+=		MV=${MV:Q} PYTHON=${PYTHONBIN:Q} SED=${SED:Q}
.if ${MACHINE_ARCH} == "i386"
MAKE_ENV+=		XEN_TARGET_ARCH="x86_32" XEN_COMPILE_ARCH="x86_32"
.elif  ${MACHINE_ARCH} == "x86_64"
MAKE_ENV+=		XEN_TARGET_ARCH="x86_64" XEN_COMPILE_ARCH="x86_64"
.else
MAKE_ENV+=		XEN_TARGET_ARCH="unsupported"
.endif
PY_PATCHPLIST=		yes
PYTHON_PATCH_SCRIPTS+=	misc/xm
PYTHON_PATCH_SCRIPTS+=	misc/netfix
PYTHON_PATCH_SCRIPTS+=	misc/xen-bugtool
PYTHON_PATCH_SCRIPTS+=	misc/xencons
PYTHON_PATCH_SCRIPTS+=	misc/xend
PYTHON_PATCH_SCRIPTS+=	misc/xensymoops
PYTHON_PATCH_SCRIPTS+=	misc/xen-python-path
PYTHON_PATCH_SCRIPTS+=	pygrub/src/pygrub
PYTHON_PATCH_SCRIPTS+=	python/xen/util/*.py
PYTHON_PATCH_SCRIPTS+=	python/xen/xend/*.py
PYTHON_PATCH_SCRIPTS+=	python/xen/xm/*.py
PYTHON_PATCH_SCRIPTS+=	python/xen/util/*.py
PYTHON_PATCH_SCRIPTS+=	python/*.py
PYTHON_PATCH_SCRIPTS+=	security/python/xensec_gen/cgi-bin/policy.cgi
PYTHON_PATCH_SCRIPTS+=	security/python/xensec_gen/*.py
PYTHON_PATCH_SCRIPTS+=	security/python/*.py
PYTHON_PATCH_SCRIPTS+=	security/*.py
PYTHON_PATCH_SCRIPTS+=	xenmon/*.py
PYTHON_PATCH_SCRIPTS+=	xentrace/xentrace_format

SUBST_CLASSES+=		paths
SUBST_STAGE.paths=	pre-configure
SUBST_FILES.paths=	ioemu/vl.c
SUBST_SED.paths=	-e "s|/usr/sbin|${PREFIX}/sbin|g"
SUBST_MESSAGE.paths=	Fixing hardcoded paths.

SUBST_CLASSES+=		pathsvar
SUBST_STAGE.pathsvar=	pre-configure
SUBST_FILES.pathsvar=	examples/init.d/sysconfig.xendomains \
			examples/xend-config.sxp \
			python/xen/xend/server/relocate.py \
			python/xen/xend/XendOptions.py \
			security/Makefile security/python/xensec_gen/main.py \
			xenstore/xs_lib.c
SUBST_SED.pathsvar=	-e "s|/var/lib|${VARBASE}/run|g"

SUBST_CLASSES+=		py
SUBST_STAGE.py=		pre-configure
SUBST_FILES.py=		pygrub/Makefile
SUBST_FILES.py+=	python/Makefile
SUBST_FILES.py+=	security/Makefile
SUBST_FILES.py+=	../xen/include/public/foreign/Makefile
SUBST_SED.py=		-e "s,python,${PYTHONBIN},g"

SUBST_CLASSES+=		conf
SUBST_STAGE.conf=	pre-configure
SUBST_FILES.conf=	python/xen/xend/XendOptions.py
SUBST_FILES.conf+=	python/xen/xend/osdep.py
SUBST_FILES.conf+=	python/xen/xm/create.py
SUBST_FILES.conf+=	python/xen/xm/addlabel.py
SUBST_FILES.conf+=	python/xen/xm/getlabel.py
SUBST_FILES.conf+=	python/xen/xm/rmlabel.py
SUBST_SED.conf=		-e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g"

SUBST_CLASSES+=		prefix
SUBST_STAGE.prefix=	pre-configure
SUBST_FILES.prefix=	python/xen/util/auxbin.py
SUBST_FILES.prefix+=	python/xen/xend/osdep.py
SUBST_FILES.prefix+=	misc/xen-python-path
SUBST_SED.prefix=	-e "s,@PREFIX@,${PREFIX},g"

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD"
SUBST_CLASSES+=		proc
SUBST_STAGE.proc=	pre-configure
SUBST_FILES.proc=	python/xen/xend/XendVnet.py
SUBST_FILES.proc+=	xenstore/xs_lib.c
SUBST_SED.proc=		-e "s|/proc|/kern|g"
PROCPATH=		/kern
.else
PROCPATH=		/proc
.endif

RCD_SCRIPTS=		xend xenbackendd xendomains
FILES_SUBST+=		RCD_INTERPRETER=${PYTHONBIN:Q}
FILES_SUBST+=		PROCPATH=${PROCPATH:Q}
FILES_SUBST+=		PKG_SYSCONFDIR=${PKG_SYSCONFDIR:Q}

XEND_SCRIPTS=		block vif-bridge vif-ip xen-subr

CONF_FILES=		${EGDIR}/xend-config.sxp \
			${PKG_SYSCONFDIR}/xend-config.sxp
.for s in ${XEND_SCRIPTS}
CONF_FILES_PERMS+=	${EGDIR}/${s} ${PKG_SYSCONFDIR}/scripts/${s}	\
			${REAL_ROOT_USER} ${REAL_ROOT_GROUP} 0755
.endfor

OWN_DIRS=		${PKG_SYSCONFDIR}/scripts /var/log/xen

pre-build:
.if !exists(/usr/include/xen/xenio.h)
	${MKDIR} ${WRKSRC}/libxc/xen
	${TEST} -f ${WRKSRC}/libxc/xen/xenio.h || \
		${CP} ${FILESDIR}/xenio.h ${WRKSRC}/libxc/xen
	${TEST} -f ${WRKSRC}/libxc/xen/xenio3.h || \
		${CP} ${FILESDIR}/xenio3.h ${WRKSRC}/libxc/xen
.endif
	${CP} ${FILESDIR}/NetBSD.mk ${WRKSRC}/../config/
	pod2man ${WRKSRC}/../docs/man/xend-config.sxp.pod.5  |\
	    sed -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
	    >${WRKDIR}/xend-config.sxp.5
	pod2man ${WRKSRC}/../docs/man/xmdomain.cfg.pod.5 |\
	    sed -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
	    >${WRKDIR}/xmdomain.cfg.5
	pod2man ${WRKSRC}/../docs/man/xm.pod.1 |\
	    sed -e "s,@XENDCONFDIR@,${PKG_SYSCONFDIR},g" \
	    >${WRKDIR}/xm.1

.if ${OPSYS} == "NetBSD"
post-build:
	cd ${FILESDIR}; for src in *-nbsd; do				\
		dst="$${src%-nbsd}";					\
		${SED}	-e "s|@PKG_SYSCONFDIR@|${PKG_SYSCONFDIR}|g"	\
			-e "s|@PREFIX@|${PREFIX}|g"			\
			$$src > ${WRKSRC}/examples/$$dst;		\
	done
	${CC} ${CFLAGS}  ${LDFLAGS} \
	    -DVBD_SCRIPT=\"${PKG_SYSCONFDIR}/scripts/block\" \
	    -DLOG_FILE=\"${VARBASE}/log/xenbackendd.log\" \
	    -DPID_FILE=\"${VARBASE}/run/xenbackendd.pid\" \
	    -o ${WRKDIR}/xenbackendd.bin ${FILESDIR}/xenbackendd.c \
	    -I${WRKSRC}/libxc -L${WRKSRC}/libxc \
	    -I${WRKSRC}/xenstore -L${WRKSRC}/xenstore \
	    -lxenctrl -lxenstore

.endif

INSTALLATION_DIRS=	${PKGMANDIR}/man1 ${PKGMANDIR}/man5 ${EGDIR}

post-install:
	${INSTALL_PROGRAM} ${WRKDIR}/xenbackendd.bin ${DESTDIR}${PREFIX}/sbin/xenbackendd
	for f in xend-config.sxp xmexample1 xmexample2 xmexample3 netbsd1; do \
		${INSTALL_DATA} ${WRKSRC}/examples/$$f ${DESTDIR}${EGDIR}/$$f;	\
	done
.for s in ${XEND_SCRIPTS}
	${INSTALL_SCRIPT} ${WRKSRC}/examples/${s} ${DESTDIR}${EGDIR}/${s}
.endfor
	${RM} -rf ${DESTDIR}${PREFIX}/lib/xen
	${INSTALL_DATA} ${WRKDIR}/xend-config.sxp.5 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man5
	${INSTALL_DATA} ${WRKDIR}/xmdomain.cfg.5 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man5
	${INSTALL_DATA} ${WRKDIR}/xm.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../textproc/py-xml/buildlink3.mk"
#.include "../../devel/zlib/buildlink3.mk"
#.include "../../www/curl/buildlink3.mk"
.include "../../devel/py-curses/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
