@interface TPHeaderFooterFragmentEnumerator
- (TPHeaderFooterFragmentEnumerator)initWithSectionTemplatePage:(id)page;
- (id)nextObject;
- (void)p_incrementFragmentIndex;
- (void)p_incrementHeaderFooterType;
@end

@implementation TPHeaderFooterFragmentEnumerator

- (TPHeaderFooterFragmentEnumerator)initWithSectionTemplatePage:(id)page
{
  pageCopy = page;
  v9.receiver = self;
  v9.super_class = TPHeaderFooterFragmentEnumerator;
  v6 = [(TPHeaderFooterFragmentEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sectionTemplatePage, page);
    v7->_fragmentIndex = -1;
    v7->_headerFooterType = 0;
  }

  return v7;
}

- (id)nextObject
{
  objc_msgSend_p_incrementFragmentIndex(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (objc_msgSend_fragmentIndex(self, v11, v16, v17, v18, v19, v12, v13, v14, v15) > 2)
  {
    objc_msgSend_p_incrementHeaderFooterType(self, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    self->_fragmentIndex = 0;
  }

  if (objc_msgSend_headerFooterType(self, v20, v25, v26, v27, v28, v21, v22, v23, v24) >= 2)
  {
    v66 = 0;
  }

  else
  {
    v38 = objc_msgSend_sectionTemplatePage(self, v29, v34, v35, v36, v37, v30, v31, v32, v33);
    v48 = objc_msgSend_headerFooterType(self, v39, v44, v45, v46, v47, v40, v41, v42, v43);
    v58 = objc_msgSend_fragmentIndex(self, v49, v54, v55, v56, v57, v50, v51, v52, v53);
    v66 = objc_msgSend_headerFooter_fragmentAtIndex_(v38, v59, v62, v63, v64, v65, v48, v58, v60, v61);
  }

  return v66;
}

- (void)p_incrementFragmentIndex
{
  v11 = objc_msgSend_fragmentIndex(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (v11 > 0)
  {
    if (v11 == 1)
    {
      selfCopy4 = self;
      goto LABEL_13;
    }

    if (v11 == 2)
    {
      selfCopy4 = self;
      goto LABEL_13;
    }
  }

  else
  {
    if (v11 == -1)
    {
      selfCopy4 = self;
      goto LABEL_13;
    }

    if (!v11)
    {
      selfCopy4 = self;
LABEL_13:

      MEMORY[0x2821F9670](selfCopy4, sel_setFragmentIndex_, v16, v17, v18, v19);
      return;
    }
  }

  v21 = MEMORY[0x277D81150];
  v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "[TPHeaderFooterFragmentEnumerator p_incrementFragmentIndex]", v13, v14, v15);
  v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm", v24, v25, v26);
  v41 = objc_msgSend_fragmentIndex(self, v32, v37, v38, v39, v40, v33, v34, v35, v36);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v42, v43, v44, v45, v46, v22, v31, 132, 0, "Tried to increment invalid fragment index value %d", v41);

  v56 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v56, v47, v52, v53, v54, v55, v48, v49, v50, v51);
}

- (void)p_incrementHeaderFooterType
{
  if ((objc_msgSend_headerFooterType(self, a2, v6, v7, v8, v9, v2, v3, v4, v5) + 1) <= 2)
  {

    MEMORY[0x2821F9670](self, sel_setHeaderFooterType_, v11, v12, v13, v14);
  }
}

@end