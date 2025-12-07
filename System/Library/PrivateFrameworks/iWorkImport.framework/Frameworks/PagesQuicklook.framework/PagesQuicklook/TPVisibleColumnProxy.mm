@interface TPVisibleColumnProxy
- (BOOL)lastLineIsEmptyAndHasListLabel;
- (BOOL)terminatedByBreak;
- (TPVisibleColumnProxy)initWithPageIndex:(unint64_t)index pageController:(id)controller flowInfo:(id)info;
- (_NSRange)anchoredRange;
- (_NSRange)range;
- (id)p_targetFirstHint;
- (id)p_targetLastHint;
- (unint64_t)nextWidowPullsDownFromCharIndex;
- (unint64_t)startAnchoredCharIndex;
- (unint64_t)startCharIndex;
- (void)trimToCharIndex:(unint64_t)index inTarget:(id)target removeFootnoteReferenceCount:(unint64_t)count removeAutoNumberFootnoteCount:(unint64_t)footnoteCount;
@end

@implementation TPVisibleColumnProxy

- (TPVisibleColumnProxy)initWithPageIndex:(unint64_t)index pageController:(id)controller flowInfo:(id)info
{
  controllerCopy = controller;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = TPVisibleColumnProxy;
  v11 = [(TPVisibleColumnProxy *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_pageIndex = index;
    objc_storeStrong(&v11->_pageController, controller);
    objc_storeStrong(&v12->_flowInfo, info);
  }

  return v12;
}

- (unint64_t)startCharIndex
{
  v10 = objc_msgSend_p_targetFirstHint(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_range(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (_NSRange)range
{
  v11 = objc_msgSend_p_targetFirstHint(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_range(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v23 = v22;
  v32 = objc_msgSend_p_targetLastHint(self, v22, v28, v29, v30, v31, v24, v25, v26, v27);
  v48.location = objc_msgSend_range(v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  v48.length = v42;
  v46.location = v21;
  v46.length = v23;
  v43 = NSUnionRange(v46, v48);

  location = v43.location;
  length = v43.length;
  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)startAnchoredCharIndex
{
  v10 = objc_msgSend_p_targetFirstHint(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_anchoredRange(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (_NSRange)anchoredRange
{
  v11 = objc_msgSend_p_targetFirstHint(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_anchoredRange(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v23 = v22;
  v32 = objc_msgSend_p_targetLastHint(self, v22, v28, v29, v30, v31, v24, v25, v26, v27);
  v48.location = objc_msgSend_anchoredRange(v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  v48.length = v42;
  v46.location = v21;
  v46.length = v23;
  v43 = NSUnionRange(v46, v48);

  location = v43.location;
  length = v43.length;
  result.length = length;
  result.location = location;
  return result;
}

- (unint64_t)nextWidowPullsDownFromCharIndex
{
  v10 = objc_msgSend_p_targetLastHint(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  WidowPullsDownFromCharIndex = objc_msgSend_nextWidowPullsDownFromCharIndex(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return WidowPullsDownFromCharIndex;
}

- (BOOL)lastLineIsEmptyAndHasListLabel
{
  v10 = objc_msgSend_p_targetLastHint(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  HasListLabel = objc_msgSend_lastLineIsEmptyAndHasListLabel(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return HasListLabel;
}

- (BOOL)terminatedByBreak
{
  v10 = objc_msgSend_p_targetLastHint(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_terminatedByBreak(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (void)trimToCharIndex:(unint64_t)index inTarget:(id)target removeFootnoteReferenceCount:(unint64_t)count removeAutoNumberFootnoteCount:(unint64_t)footnoteCount
{
  flowInfo = self->_flowInfo;
  pageController = self->_pageController;
  if (flowInfo)
  {
    v20 = objc_msgSend_i_flowLayoutController(pageController, a2, v6, v7, v8, v9, index, target, count, footnoteCount);
    objc_msgSend_i_trimFlow_pageIndex_toCharIndex_(v20, v14, v16, v17, v18, v19, self->_flowInfo, self->_pageIndex, index, v15);
  }

  else
  {

    (MEMORY[0x2821F9670])(pageController, sel_i_trimPageAtIndex_toCharIndex_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_);
  }
}

- (id)p_targetFirstHint
{
  flowInfo = self->_flowInfo;
  pageController = self->_pageController;
  if (flowInfo)
  {
    v13 = objc_msgSend_i_flowLayoutController(pageController, a2, v6, v7, v8, v9, v2, v3, v4, v5);
    v21 = objc_msgSend_hintForFlow_pageIndex_(v13, v14, v17, v18, v19, v20, self->_flowInfo, self->_pageIndex, v15, v16);
  }

  else
  {
    v13 = objc_msgSend_i_pageHintForPageIndex_(pageController, a2, v6, v7, v8, v9, self->_pageIndex, v3, v4, v5);
    if (objc_msgSend_pageKind(v13, v22, v27, v28, v29, v30, v23, v24, v25, v26) != 1)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v36, v37, v38, v39, "[TPVisibleColumnProxy p_targetFirstHint]", v33, v34, v35);
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPVisibleColumnProxy.m", v43, v44, v45);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v51, v52, v53, v54, v55, v41, v50, 94, 0, "Must have a text page hint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v61, v62, v63, v64, v57, v58, v59, v60);
    }

    v21 = objc_msgSend_firstHint(v13, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  }

  v65 = v21;

  return v65;
}

- (id)p_targetLastHint
{
  flowInfo = self->_flowInfo;
  pageController = self->_pageController;
  if (flowInfo)
  {
    v13 = objc_msgSend_i_flowLayoutController(pageController, a2, v6, v7, v8, v9, v2, v3, v4, v5);
    v21 = objc_msgSend_hintForFlow_pageIndex_(v13, v14, v17, v18, v19, v20, self->_flowInfo, self->_pageIndex, v15, v16);
  }

  else
  {
    v13 = objc_msgSend_i_pageHintForPageIndex_(pageController, a2, v6, v7, v8, v9, self->_pageIndex, v3, v4, v5);
    if (objc_msgSend_pageKind(v13, v22, v27, v28, v29, v30, v23, v24, v25, v26) != 1)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v36, v37, v38, v39, "[TPVisibleColumnProxy p_targetLastHint]", v33, v34, v35);
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPVisibleColumnProxy.m", v43, v44, v45);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v51, v52, v53, v54, v55, v41, v50, 106, 0, "Must have a text page hint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v61, v62, v63, v64, v57, v58, v59, v60);
    }

    v21 = objc_msgSend_lastHint(v13, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  }

  v65 = v21;

  return v65;
}

@end