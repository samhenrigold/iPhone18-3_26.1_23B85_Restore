@interface TPPageInfo
+ (BOOL)isAlternativePageIndex:(unint64_t)index documentRoot:(id)root;
+ (BOOL)isPageTemplatePageIndex:(unint64_t)index documentRoot:(id)root;
+ (unint64_t)pageIndexFromPageTemplateIndex:(unint64_t)index;
+ (unint64_t)pageTemplateIndexFromPageIndex:(unint64_t)index documentRoot:(id)root;
- (BOOL)isEqual:(id)equal;
- (CGRect)pageFrame;
- (NSArray)childInfos;
- (TPDocumentRoot)documentRoot;
- (TPPageController)pageController;
- (TPPageInfo)initWithPageIndex:(unint64_t)index documentRoot:(id)root;
- (void)dealloc;
- (void)setGeometry:(id)geometry;
- (void)setParentInfo:(id)info;
@end

@implementation TPPageInfo

- (TPPageInfo)initWithPageIndex:(unint64_t)index documentRoot:(id)root
{
  rootCopy = root;
  v124.receiver = self;
  v124.super_class = TPPageInfo;
  v11 = [(TPPageInfo *)&v124 init];
  if (v11)
  {
    if (!rootCopy)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v12, v13, v14, v15, "[TPPageInfo initWithPageIndex:documentRoot:]", v8, v9, v10);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m", v19, v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v28, v29, v30, v31, v17, v26, 50, 0, "invalid nil value for '%{public}s'", "documentRoot");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
    }

    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v12, v13, v14, v15, "[TPPageInfo initWithPageIndex:documentRoot:]", v8, v9, v10);
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m", v44, v45, v46);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v52, v53, v54, v55, v56, v42, v51, 51, 0, "Invalid page index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v62, v63, v64, v65, v58, v59, v60, v61);
    }

    objc_storeWeak(&v11->_documentRoot, rootCopy);
    v11->_pageIndex = index;
    if ((objc_msgSend_isDocSetupPageIndex_(TPPageInfo, v66, v70, v71, v72, v73, index, v67, v68, v69) & 1) == 0)
    {
      v74 = objc_opt_class();
      if (objc_msgSend_hasBodyInfo(v74, v75, v80, v81, v82, v83, v76, v77, v78, v79))
      {
        v84 = objc_opt_class();
        v94 = objc_alloc(objc_msgSend_bodyInfoClass(v84, v85, v90, v91, v92, v93, v86, v87, v88, v89));
        v104 = objc_msgSend_bodyStorage(rootCopy, v95, v100, v101, v102, v103, v96, v97, v98, v99);
        v113 = objc_msgSend_initWithBodyStorage_(v94, v105, v109, v110, v111, v112, v104, v106, v107, v108);
        bodyInfo = v11->_bodyInfo;
        v11->_bodyInfo = v113;

        objc_msgSend_setParentInfo_(v11->_bodyInfo, v115, v119, v120, v121, v122, v11, v116, v117, v118);
      }
    }
  }

  return v11;
}

- (void)dealloc
{
  objc_msgSend_setParentInfo_(self->_bodyInfo, a2, v5, v6, v7, v8, 0, v2, v3, v4);
  v10.receiver = self;
  v10.super_class = TPPageInfo;
  [(TPPageInfo *)&v10 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v15 = objc_msgSend_documentRoot(self, v6, v11, v12, v13, v14, v7, v8, v9, v10);
    v25 = objc_msgSend_documentRoot(v5, v16, v21, v22, v23, v24, v17, v18, v19, v20);

    if (v15 != v25)
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v31, v32, v33, v34, "[TPPageInfo isEqual:]", v28, v29, v30);
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m", v38, v39, v40);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v46, v47, v48, v49, v50, v36, v45, 76, 0, "Should never need to compare pageInfos from different documents");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v56, v57, v58, v59, v52, v53, v54, v55);
    }

    pageIndex = self->_pageIndex;
    v61 = pageIndex == objc_msgSend_pageIndex(v5, v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  else
  {
    v61 = 0;
  }

  return v61;
}

- (TPPageController)pageController
{
  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageInfo pageController]", v2, v3, v4);
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m", v12, v13, v14);
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v22, v23, v24, v25, v26, v10, v19, 91, 0, "Abstract method not overridden by %{public}@", v21);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  v36 = MEMORY[0x277CBEAD8];
  v37 = *MEMORY[0x277CBE658];
  v38 = MEMORY[0x277CCACA8];
  v39 = objc_opt_class();
  v40 = NSStringFromClass(v39);
  v49 = objc_msgSend_stringWithFormat_(v38, v41, v45, v46, v47, v48, @"Abstract method not overridden by %@: %s", v42, v43, v44, v40, "[TPPageInfo pageController]");
  v56 = objc_msgSend_exceptionWithName_reason_userInfo_(v36, v50, v52, v53, v54, v55, v37, v49, 0, v51);
  v57 = v56;

  objc_exception_throw(v56);
}

- (void)setParentInfo:(id)info
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageInfo setParentInfo:]", v3, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 102, 0, "pages have no parents");

  v35 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v35, v26, v31, v32, v33, v34, v27, v28, v29, v30);
}

- (void)setGeometry:(id)geometry
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageInfo setGeometry:]", v3, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 113, 0, "can't set geometry on a page");

  v35 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v35, v26, v31, v32, v33, v34, v27, v28, v29, v30);
}

- (NSArray)childInfos
{
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = v11;
  bodyInfo = self->_bodyInfo;
  if (bodyInfo)
  {
    objc_msgSend_addObject_(v11, v12, v16, v17, v18, v19, bodyInfo, v13, v14, v15);
  }

  return v20;
}

+ (BOOL)isPageTemplatePageIndex:(unint64_t)index documentRoot:(id)root
{
  rootCopy = root;
  if (!rootCopy)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v11, v12, v13, v14, "+[TPPageInfo isPageTemplatePageIndex:documentRoot:]", v7, v8, v9);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m", v18, v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v26, v27, v28, v29, v30, v16, v25, 200, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v36, v37, v38, v39, v32, v33, v34, v35);
  }

  v40 = objc_msgSend_pageTemplates(rootCopy, v5, v11, v12, v13, v14, v6, v7, v8, v9);
  v50 = objc_msgSend_count(v40, v41, v46, v47, v48, v49, v42, v43, v44, v45) + 1592629870;

  if ((~index & 0x7FFFFFFFFFFFFFFFLL) != 0 && v50 <= index)
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v55, v56, v57, v58, "+[TPPageInfo isPageTemplatePageIndex:documentRoot:]", v52, v53, v54);
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m", v62, v63, v64);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v70, v71, v72, v73, v74, v60, v69, 204, 0, "Expect pageIndex cannot be greater than max of page templates (pageIndex = %lu).", index);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v80, v81, v82, v83, v76, v77, v78, v79);
  }

  v85 = index > 0x5EED9A6D && v50 > index;

  return v85;
}

+ (BOOL)isAlternativePageIndex:(unint64_t)index documentRoot:(id)root
{
  rootCopy = root;
  if (!rootCopy)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v11, v12, v13, v14, "+[TPPageInfo isAlternativePageIndex:documentRoot:]", v7, v8, v9);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m", v18, v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v26, v27, v28, v29, v30, v16, v25, 214, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v36, v37, v38, v39, v32, v33, v34, v35);
  }

  if (objc_msgSend_isDocSetupPageIndex_(self, v6, v11, v12, v13, v14, index, v7, v8, v9))
  {
    isPageTemplatePageIndex_documentRoot = 1;
  }

  else
  {
    isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(self, v40, v43, v44, v45, v46, index, rootCopy, v41, v42);
  }

  return isPageTemplatePageIndex_documentRoot;
}

+ (unint64_t)pageIndexFromPageTemplateIndex:(unint64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL && (index >= 0x5EED9A6E || objc_msgSend_isDocSetupPageIndex_(self, a2, v6, v7, v8, v9, index, v3, v4, v5)))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "+[TPPageInfo pageIndexFromPageTemplateIndex:]", v3, v4, v5);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 222, 0, "Input template index should be 0 based and not related to an alternative page index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return index + 1592629870;
  }
}

+ (unint64_t)pageTemplateIndexFromPageIndex:(unint64_t)index documentRoot:(id)root
{
  if ((objc_msgSend_isPageTemplatePageIndex_documentRoot_(self, a2, v6, v7, v8, v9, index, root, v4, v5) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "+[TPPageInfo pageTemplateIndexFromPageIndex:documentRoot:]", v12, v13, v14);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m", v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v30, v31, v32, v33, v34, v20, v29, 227, 0, "Input pageIndex should be for a page template.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v40, v41, v42, v43, v36, v37, v38, v39);
  }

  return index - 1592629870;
}

- (CGRect)pageFrame
{
  x = self->_pageFrame.origin.x;
  y = self->_pageFrame.origin.y;
  width = self->_pageFrame.size.width;
  height = self->_pageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TPDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

@end