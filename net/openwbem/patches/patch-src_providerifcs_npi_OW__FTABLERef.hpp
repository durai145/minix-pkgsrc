$NetBSD$

--- src/providerifcs/npi/OW_FTABLERef.hpp.orig	2013-03-25 15:26:20.000000000 +0000
+++ src/providerifcs/npi/OW_FTABLERef.hpp
@@ -29,7 +29,7 @@
 *******************************************************************************/
 #ifndef OW_FTABLE_REF_HPP_
 #define OW_FTABLE_REF_HPP_
-//#include <string.h>
+#include <cstring>
 #include "OW_config.h"
 #include "OW_CIMOMHandleIFC.hpp"
 #include "OW_CIMDataType.hpp"
