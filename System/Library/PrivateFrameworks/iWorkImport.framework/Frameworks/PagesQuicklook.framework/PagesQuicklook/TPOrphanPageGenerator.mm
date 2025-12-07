@interface TPOrphanPageGenerator
- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state;
- (TPOrphanPageGenerator)initWithDocumentRoot:(id)root;
- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state;
@end

@implementation TPOrphanPageGenerator

- (TPOrphanPageGenerator)initWithDocumentRoot:(id)root
{
  rootCopy = root;
  v42.receiver = self;
  v42.super_class = TPOrphanPageGenerator;
  v5 = [(TPOrphanPageGenerator *)&v42 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_documentRoot, rootCopy);

    if (!rootCopy)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v12, v13, v14, v15, "[TPOrphanPageGenerator initWithDocumentRoot:]", v9, v10, v11);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPOrphanPageGenerator.m", v19, v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v28, v29, v30, v31, v17, v26, 28, 0, "Orphan page generator must be created with a document controller");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)wantsPageInSectionHint:(id)hint withState:(id)state
{
  v45 = objc_msgSend_onLastSection(v5, v6, v11, v12, v13, v14, v7, v8, v9, v10) && (WeakRetained = objc_loadWeakRetained(&self->_documentRoot), objc_msgSend_floatingDrawables(WeakRetained, v16, v21, v22, v23, v24, v17, v18, v19, v20), v25 = v5 = state;

  return v45;
}

- (void)createOrUpdatePageHintInSectionHint:(id)hint withState:(id)state
{
  hintCopy = hint;
  v15 = objc_msgSend_pageIndex(state, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v32 = objc_msgSend_pageHintForPageIndex_(hintCopy, v16, v20, v21, v22, v23, v15, v17, v18, v19);

  objc_msgSend_setPageKind_(v32, v24, v28, v29, v30, v31, 3, v25, v26, v27);
}

@end