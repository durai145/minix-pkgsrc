$NetBSD$

--- src/repositories/hdb/OW_AssocDb.hpp.orig	2013-03-25 15:20:50.000000000 +0000
+++ src/repositories/hdb/OW_AssocDb.hpp
@@ -50,6 +50,8 @@
 #include "OW_IntrusiveReference.hpp"
 #include "OW_IntrusiveCountableBase.hpp"
 
+#include <cstring>
+
 namespace OW_NAMESPACE
 {
 
