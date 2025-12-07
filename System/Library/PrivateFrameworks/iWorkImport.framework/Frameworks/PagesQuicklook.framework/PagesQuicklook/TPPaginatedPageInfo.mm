@interface TPPaginatedPageInfo
- (BOOL)isDocumentSetupPage;
- (CGRect)pageFrame;
- (NSArray)floatingDrawableInfos;
- (TPDrawablesZOrder)drawablesZOrder;
- (TPPageLayoutInfoProvider)layoutInfoProvider;
- (TPPaginatedPageInfo)initWithPageIndex:(unint64_t)index documentRoot:(id)root layoutInfoProvider:(id)provider;
- (id)orderedDrawables:(id)drawables;
- (id)pageController;
@end

@implementation TPPaginatedPageInfo

- (TPPaginatedPageInfo)initWithPageIndex:(unint64_t)index documentRoot:(id)root layoutInfoProvider:(id)provider
{
  providerCopy = provider;
  v44.receiver = self;
  v44.super_class = TPPaginatedPageInfo;
  v13 = [(TPPageInfo *)&v44 initWithPageIndex:index documentRoot:root];
  if (v13)
  {
    if (!providerCopy)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v14, v15, v16, v17, "[TPPaginatedPageInfo initWithPageIndex:documentRoot:layoutInfoProvider:]", v10, v11, v12);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageInfo.m", v21, v22, v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v29, v30, v31, v32, v33, v19, v28, 34, 0, "invalid nil value for '%{public}s'", "layoutInfoProvider");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v39, v40, v41, v42, v35, v36, v37, v38);
    }

    objc_storeWeak(&v13->_layoutInfoProvider, providerCopy);
  }

  return v13;
}

- (NSArray)floatingDrawableInfos
{
  if (objc_msgSend_isDocumentSetupPage(self, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    v20 = 0;
  }

  else
  {
    v21 = objc_msgSend_documentRoot(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
    v31 = objc_msgSend_floatingDrawables(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v41 = objc_msgSend_pageIndex(self, v32, v37, v38, v39, v40, v33, v34, v35, v36);
    v20 = objc_msgSend_orderedDrawablesOnPageIndex_(v31, v42, v46, v47, v48, v49, v41, v43, v44, v45);
  }

  return v20;
}

- (TPDrawablesZOrder)drawablesZOrder
{
  v10 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_drawablesZOrder(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (BOOL)isDocumentSetupPage
{
  v11 = objc_msgSend_pageIndex(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);

  return objc_msgSend_isDocSetupPageIndex_(TPPageInfo, v10, v15, v16, v17, v18, v11, v12, v13, v14);
}

- (id)orderedDrawables:(id)drawables
{
  drawablesCopy = drawables;
  v14 = objc_msgSend_documentRoot(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v24 = objc_msgSend_drawablesZOrder(v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v33 = objc_msgSend_orderedDrawables_(v24, v25, v29, v30, v31, v32, drawablesCopy, v26, v27, v28);

  return v33;
}

- (id)pageController
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_layoutInfoProvider);
  v13 = objc_msgSend_pageController(WeakRetained, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v14 = TSUDynamicCast();

  return v14;
}

- (CGRect)pageFrame
{
  v11 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_msgSend_pageSize(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v22 = v21;
  v24 = v23;

  v34 = objc_msgSend_pageController(self, v25, v30, v31, v32, v33, v26, v27, v28, v29);
  v44 = objc_msgSend_pageIndex(self, v35, v40, v41, v42, v43, v36, v37, v38, v39);
  isDocSetupPageIndex = objc_msgSend_isDocSetupPageIndex_(TPPageInfo, v45, v49, v50, v51, v52, v44, v46, v47, v48);
  v68 = objc_msgSend_pageIndex(self, v54, v59, v60, v61, v62, v55, v56, v57, v58);
  if ((isDocSetupPageIndex & 1) != 0 || !v34)
  {
    v74 = *MEMORY[0x277CBF348];
    v76 = *(MEMORY[0x277CBF348] + 8);
    if (v68 == objc_msgSend_documentSetupRightSidePageIndex(TPPageInfo, v63, v69, v70, v71, v72, v64, v65, v66, v67))
    {
      v86 = objc_msgSend_layoutInfoProvider(self, v77, v82, v83, v84, v85, v78, v79, v80, v81);
      v96 = objc_msgSend_pageIndex(self, v87, v92, v93, v94, v95, v88, v89, v90, v91);
      shouldUseFacingPagesForPageIndex = objc_msgSend_shouldUseFacingPagesForPageIndex_(v86, v97, v101, v102, v103, v104, v96, v98, v99, v100);

      if (shouldUseFacingPagesForPageIndex)
      {
        v76 = 0.0;
        v74 = v22 + 1.0;
      }
    }
  }

  else
  {
    objc_msgSend_pageOriginForPageIndex_allowAfterPaginationPoint_(v34, v63, v69, v70, v71, v72, v68, 0, v66, v67);
    v74 = v73;
    v76 = v75;
  }

  v106 = v74;
  v107 = v76;
  v108 = v22;
  v109 = v24;
  result.size.height = v109;
  result.size.width = v108;
  result.origin.y = v107;
  result.origin.x = v106;
  return result;
}

- (TPPageLayoutInfoProvider)layoutInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutInfoProvider);

  return WeakRetained;
}

@end