# $NetBSD: options.mk,v 1.1 2005/06/01 19:50:26 wiz Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.aterm
PKG_SUPPORTED_OPTIONS=	aterm-big5 aterm-greek aterm-kanji aterm-xterm-scroll

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Materm-big5)
CONFIGURE_ARGS+=--enable-big5
.endif

.if !empty(PKG_OPTIONS:Materm-greek)
CONFIGURE_ARGS+=--enable-greek
.endif

.if !empty(PKG_OPTIONS:Materm-kanji)
CONFIGURE_ARGS+=--enable-kanji
.endif

.if !empty(PKG_OPTIONS:Materm-xterm-scroll)
CONFIGURE_ARGS+=--enable-xterm-scroll
.endif
