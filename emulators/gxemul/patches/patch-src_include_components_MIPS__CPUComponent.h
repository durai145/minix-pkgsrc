$NetBSD$

--- src/include/components/MIPS_CPUComponent.h.orig	2012-11-19 20:10:20.000000000 +0000
+++ src/include/components/MIPS_CPUComponent.h
@@ -196,7 +196,7 @@ protected:
 	virtual bool FunctionTraceReturnImpl(int64_t& retval);
 
 	virtual int GetDyntransICshift() const;
-	virtual void (*GetDyntransToBeTranslated())(CPUDyntransComponent*, DyntransIC*) const;
+	virtual DyntransIC_t GetDyntransToBeTranslated() const;
 
 	virtual void ShowRegisters(GXemul* gxemul, const vector<string>& arguments) const;
 
