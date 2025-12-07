@interface TPFootnoteContainerInfo
- (id)copyWithContext:(id)context;
- (void)clearBackPointerToParentInfoIfNeeded:(id)needed;
- (void)setGeometry:(id)geometry;
- (void)setOwningAttachment:(id)attachment;
- (void)setPrimitiveGeometry:(id)geometry;
@end

@implementation TPFootnoteContainerInfo

- (void)setGeometry:(id)geometry
{
  v11 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPFootnoteContainerInfo setGeometry:]", v3, v4, v5);
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerInfo.m", v14, v15, v16);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 60, 0, "Nothing should try to set a geometry on %@", self);

  v36 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v36, v27, v32, v33, v34, v35, v28, v29, v30, v31);
}

- (void)setPrimitiveGeometry:(id)geometry
{
  v11 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPFootnoteContainerInfo setPrimitiveGeometry:]", v3, v4, v5);
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerInfo.m", v14, v15, v16);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 64, 0, "Nothing should try to set a primitive geometry on %@", self);

  v36 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v36, v27, v32, v33, v34, v35, v28, v29, v30, v31);
}

- (void)setOwningAttachment:(id)attachment
{
  v11 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPFootnoteContainerInfo setOwningAttachment:]", v3, v4, v5);
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerInfo.m", v14, v15, v16);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 72, 0, "%@ cannot be owned by an attachment because it is not a subclass of TSDDrawableInfo", self);

  v36 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v36, v27, v32, v33, v34, v35, v28, v29, v30, v31);
}

- (void)clearBackPointerToParentInfoIfNeeded:(id)needed
{
  neededCopy = needed;
  v14 = objc_msgSend_parentInfo(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);

  if (v14 == neededCopy)
  {

    objc_msgSend_setParentInfo_(self, v15, v19, v20, v21, v22, 0, v16, v17, v18);
  }
}

- (id)copyWithContext:(id)context
{
  v11 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPFootnoteContainerInfo copyWithContext:]", v3, v4, v5);
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerInfo.m", v14, v15, v16);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 100, 0, "Nothing should try to make a copy of %@", self);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);

  return objc_alloc_init(TPFootnoteContainerInfo);
}

@end