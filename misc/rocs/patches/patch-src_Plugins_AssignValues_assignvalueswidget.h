$NetBSD$

--- src/Plugins/AssignValues/assignvalueswidget.h.orig	2011-11-17 20:57:24.000000000 +0000
+++ src/Plugins/AssignValues/assignvalueswidget.h
@@ -21,8 +21,10 @@
 
 #include <QWidget>
 
+#ifndef Q_MOC_RUN
 #include <boost/graph/adjacency_list.hpp>
 #include <boost/graph/topology.hpp>
+#endif
 #include <KDialog>
 #include "Rocs_Typedefs.h"
 
