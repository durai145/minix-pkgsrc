$NetBSD: patch-mozilla_ipc_chromium_src_chrome_common_ipc__channel__posix.cc,v 1.1 2012/09/06 12:08:51 ryoon Exp $

--- mozilla/ipc/chromium/src/chrome/common/ipc_channel_posix.cc.orig	2012-11-18 10:19:38.000000000 +0000
+++ mozilla/ipc/chromium/src/chrome/common/ipc_channel_posix.cc
@@ -7,6 +7,7 @@
 #include <errno.h>
 #include <fcntl.h>
 #include <stddef.h>
+#include <unistd.h>
 #include <sys/types.h>
 #include <sys/socket.h>
 #include <sys/stat.h>
