$NetBSD$

--- lib/engine/addressbook/book-impl.h.orig	2013-03-28 17:33:03.000000000 +0000
+++ lib/engine/addressbook/book-impl.h
@@ -204,7 +204,7 @@ void
 Ekiga::BookImpl<ContactType>::add_contact (gmref_ptr<ContactType> contact)
 {
   contact->questions.add_handler (questions.make_slot ());
-  add_object (contact);
+  this->add_object (contact);
 }
 
 
