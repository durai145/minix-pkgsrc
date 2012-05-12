$NetBSD: patch-ipc_chromium_src_base_process__util.h,v 1.1 2012/03/06 12:34:09 ryoon Exp $

# Reported upstream: https://bugzilla.mozilla.org/show_bug.cgi?id=753046

--- ipc/chromium/src/base/process_util.h.orig	2011-12-21 00:28:19.000000000 +0100
+++ ipc/chromium/src/base/process_util.h	2012-01-31 13:14:54.000000000 +0100
@@ -14,7 +14,6 @@
 #include <windows.h>
 #include <tlhelp32.h>
 #elif defined(OS_LINUX)
-#include <dirent.h>
 #include <limits.h>
 #include <sys/types.h>
 #elif defined(OS_MACOSX)
@@ -280,6 +279,7 @@
   const ProcessEntry* NextProcessEntry();
 
  private:
+#if !defined(OS_BSD)
   // Determines whether there's another process (regardless of executable)
   // left in the list of all processes.  Returns true and sets entry_ to
   // that process's info if there is one, false otherwise.
@@ -292,18 +292,24 @@
   void InitProcessEntry(ProcessEntry* entry);
 
   std::wstring executable_name_;
+#endif
 
 #if defined(OS_WIN)
   HANDLE snapshot_;
   bool started_iteration_;
 #elif defined(OS_LINUX)
   DIR *procfs_dir_;
+#elif defined(OS_BSD)
+  std::vector<ProcessEntry> content;
+  size_t nextEntry;
 #elif defined(OS_MACOSX)
   std::vector<kinfo_proc> kinfo_procs_;
   size_t index_of_kinfo_proc_;
 #endif
+#if !defined(OS_BSD)
   ProcessEntry entry_;
   const ProcessFilter* filter_;
+#endif
 
   DISALLOW_EVIL_CONSTRUCTORS(NamedProcessIterator);
 };
