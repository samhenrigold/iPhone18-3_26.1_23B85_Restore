@interface TPPageController
- (BOOL)okToAnchorDrawable:(id)drawable toPageIndex:(unint64_t)index;
- (BOOL)okToAnchorDrawables:(id)drawables toPageIndex:(unint64_t)index;
- (BOOL)textIsVerticalForFootnoteReferenceStorage:(id)storage;
- (TPDocumentRoot)documentRoot;
- (TPPageController)initWithDocumentRoot:(id)root;
- (_NSRange)bodyRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (_NSRange)documentPageRangeOfSectionIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (_NSRange)footnoteLayoutRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (id)markStringForFootnoteReferenceStorage:(id)storage ignoreDeletedFootnotes:(BOOL)footnotes forceDocumentEndnotes:(BOOL)endnotes;
- (id)pageInfoForPageIndex:(unint64_t)index;
- (int64_t)nominalFootnoteKind;
- (int64_t)nominalFootnoteNumbering;
- (unint64_t)p_autoNumberForStorage:(id)storage ignoreDeletedFootnotes:(BOOL)footnotes footnoteKind:(int64_t)kind;
- (unint64_t)pageIndexFromCanvasPoint:(CGPoint)point;
- (unint64_t)sectionIndexForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (void)accquireLockAndPerformAction:(id)action;
- (void)changeTrackingVisibilityDidChange;
- (void)dealloc;
- (void)paginateThroughPageIndex:(unint64_t)index forLayoutController:(id)controller;
- (void)teardown;
- (void)withPageLayoutAtIndex:(unint64_t)index preferredLayoutController:(id)controller executeBlock:(id)block;
@end

@implementation TPPageController

- (TPPageController)initWithDocumentRoot:(id)root
{
  rootCopy = root;
  v30.receiver = self;
  v30.super_class = TPPageController;
  v5 = [(TPPageController *)&v30 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_documentRoot, rootCopy);
    v7 = objc_alloc(MEMORY[0x277D80FA0]);
    WeakRetained = objc_loadWeakRetained(&v6->_documentRoot);
    v18 = objc_msgSend_bodyStorage(WeakRetained, v9, v14, v15, v16, v17, v10, v11, v12, v13);
    v27 = objc_msgSend_initWithStorage_(v7, v19, v23, v24, v25, v26, v18, v20, v21, v22);
    bodyTopicNumbers = v6->_bodyTopicNumbers;
    v6->_bodyTopicNumbers = v27;
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_teardown(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v11.receiver = self;
  v11.super_class = TPPageController;
  [(TPPageController *)&v11 dealloc];
}

- (void)teardown
{
  objc_storeWeak(&self->_documentRoot, 0);
  bodyTopicNumbers = self->_bodyTopicNumbers;
  self->_bodyTopicNumbers = 0;
}

- (void)paginateThroughPageIndex:(unint64_t)index forLayoutController:(id)controller
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageController paginateThroughPageIndex:forLayoutController:]", controller, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 41, 0, "subclass should override");

  v35 = MEMORY[0x277D81150];

  objc_msgSend_logFullBacktrace(v35, v26, v31, v32, v33, v34, v27, v28, v29, v30);
}

- (_NSRange)bodyRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageController bodyRangeForPageIndex:forcePagination:]", pagination, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 45, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  v35 = *MEMORY[0x277D81490];
  v36 = *(MEMORY[0x277D81490] + 8);
  result.length = v36;
  result.location = v35;
  return result;
}

- (_NSRange)footnoteLayoutRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageController footnoteLayoutRangeForPageIndex:forcePagination:]", pagination, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 50, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  v35 = *MEMORY[0x277D81490];
  v36 = *(MEMORY[0x277D81490] + 8);
  result.length = v36;
  result.location = v35;
  return result;
}

- (_NSRange)documentPageRangeOfSectionIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageController documentPageRangeOfSectionIndex:forcePagination:]", pagination, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 65, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  v35 = *MEMORY[0x277D81490];
  v36 = *(MEMORY[0x277D81490] + 8);
  result.length = v36;
  result.location = v35;
  return result;
}

- (unint64_t)sectionIndexForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageController sectionIndexForPageIndex:forcePagination:]", pagination, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 70, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  return 0;
}

- (id)pageInfoForPageIndex:(unint64_t)index
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageController pageInfoForPageIndex:]", v3, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 75, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  return 0;
}

- (void)withPageLayoutAtIndex:(unint64_t)index preferredLayoutController:(id)controller executeBlock:(id)block
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageController withPageLayoutAtIndex:preferredLayoutController:executeBlock:]", controller, block, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 94, 0, "subclass should override");

  v35 = MEMORY[0x277D81150];

  objc_msgSend_logFullBacktrace(v35, v26, v31, v32, v33, v34, v27, v28, v29, v30);
}

- (void)accquireLockAndPerformAction:(id)action
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageController accquireLockAndPerformAction:]", v3, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 100, 0, "subclass should override");

  v35 = MEMORY[0x277D81150];

  objc_msgSend_logFullBacktrace(v35, v26, v31, v32, v33, v34, v27, v28, v29, v30);
}

- (BOOL)okToAnchorDrawable:(id)drawable toPageIndex:(unint64_t)index
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageController okToAnchorDrawable:toPageIndex:]", index, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 119, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  return 0;
}

- (BOOL)okToAnchorDrawables:(id)drawables toPageIndex:(unint64_t)index
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageController okToAnchorDrawables:toPageIndex:]", index, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 124, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  return 0;
}

- (unint64_t)pageIndexFromCanvasPoint:(CGPoint)point
{
  v8 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, point, *&point.y, v6, v7, "[TPPageController pageIndexFromCanvasPoint:]", v3, v4, v5);
  v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v11, v12, v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v19, v20, v21, v22, v23, v9, v18, 129, 0, "subclass should override");

  objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v24, v29, v30, v31, v32, v25, v26, v27, v28);
  return 0;
}

- (void)changeTrackingVisibilityDidChange
{
  v11 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_accessController(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v30[0] = MEMORY[0x277D85DD0];
  v22.n128_u64[0] = 3221225472;
  v30[1] = 3221225472;
  v30[2] = sub_275FD9EEC;
  v30[3] = &unk_27A6A8648;
  v30[4] = self;
  objc_msgSend_performWrite_(v21, v23, v22, v27, v28, v29, v30, v24, v25, v26);
}

- (int64_t)nominalFootnoteKind
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v12 = objc_msgSend_settings(WeakRetained, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v22 = objc_msgSend_footnoteKind(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);

  return v22;
}

- (int64_t)nominalFootnoteNumbering
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v12 = objc_msgSend_settings(WeakRetained, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v22 = objc_msgSend_footnoteNumbering(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);

  return v22;
}

- (id)markStringForFootnoteReferenceStorage:(id)storage ignoreDeletedFootnotes:(BOOL)footnotes forceDocumentEndnotes:(BOOL)endnotes
{
  footnotesCopy = footnotes;
  storageCopy = storage;
  objc_opt_class();
  v18 = objc_msgSend_owningAttachment(storageCopy, v9, v14, v15, v16, v17, v10, v11, v12, v13);
  v19 = TSUDynamicCast();

  if (!v19)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v25, v26, v27, v28, "[TPPageController markStringForFootnoteReferenceStorage:ignoreDeletedFootnotes:forceDocumentEndnotes:]", v22, v23, v24);
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v32, v33, v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v40, v41, v42, v43, v44, v30, v39, 168, 0, "invalid nil value for '%{public}s'", "footnoteAttachment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v50, v51, v52, v53, v46, v47, v48, v49);
  }

  v54 = objc_msgSend_parentStorage(v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v65 = objc_msgSend_bodyStorage(WeakRetained, v56, v61, v62, v63, v64, v57, v58, v59, v60);

  if (v54 != v65)
  {
    v75 = MEMORY[0x277D81150];
    v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v71, v72, v73, v74, "[TPPageController markStringForFootnoteReferenceStorage:ignoreDeletedFootnotes:forceDocumentEndnotes:]", v68, v69, v70);
    v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v81, v82, v83, v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v78, v79, v80);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v75, v86, v87, v88, v89, v90, v76, v85, 170, 0, "Footnote reference attachment parent storage is not the body storage.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v96, v97, v98, v99, v92, v93, v94, v95);
  }

  v100 = objc_msgSend_customMarkString(v19, v66, v71, v72, v73, v74, v67, v68, v69, v70);
  v110 = v100;
  if (v100)
  {
    v111 = v100;
LABEL_7:
    v112 = v111;
    goto LABEL_8;
  }

  if (endnotes)
  {
    v114 = objc_msgSend_p_autoNumberForStorage_ignoreDeletedFootnotes_footnoteKind_(self, v101, v106, v107, v108, v109, storageCopy, footnotesCopy, 1, v105);
  }

  else
  {
    v123 = objc_msgSend_nominalFootnoteKind(self, v101, v106, v107, v108, v109, v102, v103, v104, v105);
    v114 = objc_msgSend_p_autoNumberForStorage_ignoreDeletedFootnotes_footnoteKind_(self, v124, v126, v127, v128, v129, storageCopy, footnotesCopy, v123, v125);
  }

  if (v114 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v130 = MEMORY[0x277D81150];
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, v119, v120, v121, v122, "[TPPageController markStringForFootnoteReferenceStorage:ignoreDeletedFootnotes:forceDocumentEndnotes:]", v116, v117, v118);
    v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, v136, v137, v138, v139, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v133, v134, v135);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v141, v142, v143, v144, v145, v131, v140, 177, 0, "Could not find the footnote auto number");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v146, v151, v152, v153, v154, v147, v148, v149, v150);
    v112 = @"?";
    goto LABEL_8;
  }

  v155 = v114;
  v156 = objc_loadWeakRetained(&self->_documentRoot);
  v166 = objc_msgSend_settings(v156, v157, v162, v163, v164, v165, v158, v159, v160, v161);
  v176 = objc_msgSend_footnoteFormat(v166, v167, v172, v173, v174, v175, v168, v169, v170, v171);

  switch(v176)
  {
    case 1:
      objc_msgSend_tswp_stringForValue_withListNumberFormat_(MEMORY[0x277CCACA8], v177, v181, v182, v183, v184, v155, 67, v179, v180);
      goto LABEL_22;
    case 2:
      objc_msgSend_tswp_stringForValue_withListNumberFormat_(MEMORY[0x277CCACA8], v177, v181, v182, v183, v184, v155, 66, v179, v180);
      v111 = LABEL_22:;
      goto LABEL_7;
    case 5:
      v111 = objc_msgSend_tswp_stringForValue_withPageNumberFormat_(MEMORY[0x277CCACA8], v177, v181, v182, v183, v184, v155, 5, v179, v180);
      goto LABEL_7;
  }

  v185 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v177, v181, v182, v183, v184, v155, v178, v179, v180);
  v112 = objc_msgSend_stringValue(v185, v186, v191, v192, v193, v194, v187, v188, v189, v190);

LABEL_8:

  return v112;
}

- (BOOL)textIsVerticalForFootnoteReferenceStorage:(id)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v13 = objc_msgSend_laysOutBodyVertically(WeakRetained, v4, v9, v10, v11, v12, v5, v6, v7, v8);

  return v13;
}

- (unint64_t)p_autoNumberForStorage:(id)storage ignoreDeletedFootnotes:(BOOL)footnotes footnoteKind:(int64_t)kind
{
  storageCopy = storage;
  v260 = objc_msgSend_nominalFootnoteNumbering(self, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  if (objc_msgSend_laysOutBodyVertically(WeakRetained, v17, v22, v23, v24, v25, v18, v19, v20, v21))
  {
    v26 = objc_loadWeakRetained(&self->_documentRoot);
    v36 = objc_msgSend_settings(v26, v27, v32, v33, v34, v35, v28, v29, v30, v31);
    hasFacingPages = objc_msgSend_hasFacingPages(v36, v37, v42, v43, v44, v45, v38, v39, v40, v41);
  }

  else
  {
    hasFacingPages = 0;
  }

  v47 = objc_loadWeakRetained(&self->_documentRoot);
  v57 = objc_msgSend_bodyStorage(v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
  v67 = objc_msgSend_footnoteCount(v57, v58, v63, v64, v65, v66, v59, v60, v61, v62);

  if (!v67)
  {
LABEL_44:
    v73 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_45;
  }

  v258 = hasFacingPages;
  v68 = 0;
  v70 = kind != 1 && v260 != 0;
  v72 = kind == 2 || v260 == 2;
  v262 = v72;
  v263 = v70;
  v73 = 1;
  v259 = 0x7FFFFFFFFFFFFFFFLL;
  v261 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v266 = 0x7FFFFFFFFFFFFFFFLL;
    v74 = objc_loadWeakRetained(&self->_documentRoot);
    v84 = objc_msgSend_bodyStorage(v74, v75, v80, v81, v82, v83, v76, v77, v78, v79);
    v92 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(v84, v85, v88, v89, v90, v91, v68, &v266, v86, v87);

    v93 = objc_loadWeakRetained(&self->_documentRoot);
    v103 = objc_msgSend_bodyStorage(v93, v94, v99, v100, v101, v102, v95, v96, v97, v98);
    if (objc_msgSend_hasHiddenTextAtCharIndex_(v103, v104, v108, v109, v110, v111, v266, v105, v106, v107))
    {

      goto LABEL_43;
    }

    if (!footnotes)
    {
      break;
    }

    v112 = objc_loadWeakRetained(&self->_documentRoot);
    v122 = objc_msgSend_bodyStorage(v112, v113, v118, v119, v120, v121, v114, v115, v116, v117);
    hasDeletedTextAtCharIndex_range = objc_msgSend_hasDeletedTextAtCharIndex_range_(v122, v123, v126, v127, v128, v129, v266, 0, v124, v125);

    if ((hasDeletedTextAtCharIndex_range & 1) == 0)
    {
      if (v92)
      {
        goto LABEL_23;
      }

      goto LABEL_31;
    }

LABEL_43:

    if (v67 == ++v68)
    {
      goto LABEL_44;
    }
  }

  if (v92)
  {
    goto LABEL_23;
  }

LABEL_31:
  v185 = MEMORY[0x277D81150];
  v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v131, v136, v137, v138, v139, "[TPPageController p_autoNumberForStorage:ignoreDeletedFootnotes:footnoteKind:]", v133, v134, v135);
  v195 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v187, v191, v192, v193, v194, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v188, v189, v190);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v185, v196, v197, v198, v199, v200, v186, v195, 235, 0, "Failed to find footnote attachment");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v201, v206, v207, v208, v209, v202, v203, v204, v205);
LABEL_23:
  if (v266 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v140 = MEMORY[0x277D81150];
    v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v131, v136, v137, v138, v139, "[TPPageController p_autoNumberForStorage:ignoreDeletedFootnotes:footnoteKind:]", v133, v134, v135);
    v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, v146, v147, v148, v149, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v143, v144, v145);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v151, v152, v153, v154, v155, v141, v150, 236, 0, "footnote char index should not be NSNotFound");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v156, v161, v162, v163, v164, v157, v158, v159, v160);
  }

  if (v263)
  {
    if (v262)
    {
      v165 = objc_loadWeakRetained(&self->_documentRoot);
      v175 = objc_msgSend_bodyStorage(v165, v166, v171, v172, v173, v174, v167, v168, v169, v170);
      v184 = objc_msgSend_sectionIndexForCharIndex_(v175, v176, v180, v181, v182, v183, v266, v177, v178, v179);

      if (v184 != v261)
      {
        v73 = 1;
      }

      v261 = v184;
    }

    else if (v260 == 1)
    {
      PageIndexNeedingLayout = objc_msgSend_pageIndexForCharIndex_forcePagination_(self, v131, v136, v137, v138, v139, v266, 0, v134, v135);
      if (PageIndexNeedingLayout == 0x7FFFFFFFFFFFFFFFLL)
      {
        PageIndexNeedingLayout = objc_msgSend_firstPageIndexNeedingLayout(self, v131, v136, v137, v138, v139, v132, v133, v134, v135);
      }

      v211 = v259;
      if (PageIndexNeedingLayout != v259)
      {
        v212 = (PageIndexNeedingLayout & 1) == 0;
        if ((v258 & v212) == 0)
        {
          v211 = PageIndexNeedingLayout;
        }

        v259 = v211;
        if ((v258 & v212) == 0)
        {
          v73 = 1;
        }
      }
    }
  }

  v213 = objc_msgSend_containedStorage(v92, v131, v136, v137, v138, v139, v132, v133, v134, v135);

  v223 = objc_msgSend_customMarkString(v92, v214, v219, v220, v221, v222, v215, v216, v217, v218);

  if (v213 != storageCopy)
  {
    if (!v223)
    {
      ++v73;
    }

    goto LABEL_43;
  }

  if (v223)
  {
    v233 = MEMORY[0x277D81150];
    v234 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v224, v228, v229, v230, v231, "[TPPageController p_autoNumberForStorage:ignoreDeletedFootnotes:footnoteKind:]", v225, v226, v227);
    v243 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v235, v239, v240, v241, v242, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController.m", v236, v237, v238);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v233, v244, v245, v246, v247, v248, v234, v243, 268, 0, "Tried to get the autonumber of a custom mark footnote");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v249, v254, v255, v256, v257, v250, v251, v252, v253);
  }

LABEL_45:
  return v73;
}

- (TPDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

@end