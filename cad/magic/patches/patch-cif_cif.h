$NetBSD$

--- cif/cif.h.orig	2013-03-02 22:30:15.000000000 +0000
+++ cif/cif.h
@@ -50,7 +50,7 @@ extern void CIFTechInit();
 extern bool CIFTechLine();
 extern void CIFTechFinal();
 extern void CIFTechOutputScale();
-extern void CIFTechInputScale();
+extern void CIFTechInputScale(int, int, bool);
 extern bool CIFTechLimitScale();
 extern void CIFReadTechStyleInit();
 extern void CIFReadTechInit();
$NetBSD$

--- cif/cif.h.orig	2013-03-02 22:30:15.000000000 +0000
+++ cif/cif.h
@@ -50,7 +50,7 @@ extern void CIFTechInit();
 extern bool CIFTechLine();
 extern void CIFTechFinal();
 extern void CIFTechOutputScale();
-extern void CIFTechInputScale();
+extern void CIFTechInputScale(int, int, bool);
 extern bool CIFTechLimitScale();
 extern void CIFReadTechStyleInit();
 extern void CIFReadTechInit();
