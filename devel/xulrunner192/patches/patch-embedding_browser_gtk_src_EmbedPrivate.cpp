$NetBSD$

--- embedding/browser/gtk/src/EmbedPrivate.cpp.orig	2012-11-17 18:28:43.000000000 +0000
+++ embedding/browser/gtk/src/EmbedPrivate.cpp
@@ -109,7 +109,7 @@ public:
   NS_DECL_NSIDIRECTORYSERVICEPROVIDER2
 };
 
-static const GTKEmbedDirectoryProvider kDirectoryProvider;
+static GTKEmbedDirectoryProvider kDirectoryProvider;
 
 NS_IMPL_QUERY_INTERFACE2(GTKEmbedDirectoryProvider,
                          nsIDirectoryServiceProvider,
