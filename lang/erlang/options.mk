# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.erlang
PKG_SUPPORTED_OPTIONS=	java

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mjava)
USE_JAVA=		yes
USE_JAVA2=		yes
.include "../../mk/java-vm.mk"
PLIST_SRC+=		PLIST.java
.endif
