$NetBSD$

--- dynipclient.c.orig	2011-09-25 09:35:33.000000000 +0000
+++ dynipclient.c
@@ -51,4 +51,6 @@
  */
 
+#include <stdlib.h>
+
 #include "dynipgbl.h"
 #include "dynipclient.h"
