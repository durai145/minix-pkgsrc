$NetBSD$

--- xpcom/base/nsDebugImpl.cpp.orig	2012-11-17 15:49:20.000000000 +0000
+++ xpcom/base/nsDebugImpl.cpp
@@ -520,7 +520,7 @@ Break(const char *aMsg)
 #endif
 }
 
-static const nsDebugImpl kImpl;
+static nsDebugImpl kImpl;
 
 NS_METHOD
 nsDebugImpl::Create(nsISupports* outer, const nsIID& aIID, void* *aInstancePtr)
