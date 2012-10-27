$NetBSD$

--- wsocket/nmst_is_active.c.orig	2012-10-26 16:08:24.000000000 +0000
+++ wsocket/nmst_is_active.c
@@ -28,7 +28,7 @@
 
 #include <nemesi/wsocket.h>
 
-inline int nmst_is_active(nms_transport * transport)
+int nmst_is_active(nms_transport * transport)
 {
 	return ((transport->type != SOCK_NONE) && (transport->fd >= 0));
 }
