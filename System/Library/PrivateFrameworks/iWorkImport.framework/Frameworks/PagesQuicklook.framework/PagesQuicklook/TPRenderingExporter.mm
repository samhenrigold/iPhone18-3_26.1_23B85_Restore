@interface TPRenderingExporter
- (BOOL)drawCurrentPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page;
- (BOOL)incrementPage;
- (BOOL)preparePage:(unint64_t)page;
- (CGRect)boundsRect;
- (CGRect)unscaledClipRect;
- (NSMutableArray)outputPageList;
- (TPPaginatedPageController)pageController;
- (TPRenderingExporter)initWithDocumentRoot:(id)root;
- (double)progressForCurrentPage;
- (double)totalProgess;
- (id)currentInfos;
- (unint64_t)pageCount;
- (void)invalidateOutputPageList;
- (void)p_addHyperLinksInContext:(CGContext *)context forCanvas:(id)canvas;
- (void)setIncludeBackgrounds:(BOOL)backgrounds;
- (void)setIncludeComments:(BOOL)comments;
- (void)setOptions:(id)options;
- (void)setup;
- (void)setupPencilAnnotationsAndHyperlinks;
- (void)teardown;
@end

@implementation TPRenderingExporter

- (TPRenderingExporter)initWithDocumentRoot:(id)root
{
  rootCopy = root;
  v46.receiver = self;
  v46.super_class = TPRenderingExporter;
  v5 = [(TSARenderingExporter *)&v46 initWithDocumentRoot:rootCopy];
  v6 = v5;
  if (v5)
  {
    v5->_lastPageIndexForLayout = -1;
    v5->_startPageIndex = 0;
    v5->_lastPageIndex = -1;
    v7 = [TPPdfHyperlinkController alloc];
    v16 = objc_msgSend_initWithDocumentRoot_(v7, v8, v12, v13, v14, v15, rootCopy, v9, v10, v11);
    hyperlinkController = v6->_hyperlinkController;
    v6->_hyperlinkController = v16;

    v6->_includeComments = 0;
    v6->_includeBackgrounds = 1;
    v6->_includePencilAnnotations = 0;
    v26 = objc_msgSend_paginatedPageControllerForDelegate_(TPPaginatedPageController, v18, v22, v23, v24, v25, rootCopy, v19, v20, v21);
    pageController = v6->_pageController;
    v6->_pageController = v26;

    v6->_tornDown = 0;
    v37 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v28, v33, v34, v35, v36, v29, v30, v31, v32);
    objc_msgSend_postNotificationName_object_(v37, v38, v41, v42, v43, v44, *MEMORY[0x277D81028], *(&v6->super.super.isa + *MEMORY[0x277D7FFD8]), v39, v40);
  }

  return v6;
}

- (NSMutableArray)outputPageList
{
  outputPageList = self->_outputPageList;
  if (!outputPageList)
  {
    v12 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
    v13 = self->_outputPageList;
    self->_outputPageList = v12;

    v23 = objc_msgSend_pageController(self, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    if (objc_msgSend_lastPageIndexForLayout(self, v24, v29, v30, v31, v32, v25, v26, v27, v28) == -1)
    {
      PageIndex = objc_msgSend_lastPageIndex(self, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    }

    else
    {
      PageIndex = objc_msgSend_lastPageIndexForLayout(self, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    }

    v136[0] = MEMORY[0x277D85DD0];
    v47.n128_u64[0] = 3221225472;
    v136[1] = 3221225472;
    v136[2] = sub_275FF4D3C;
    v136[3] = &unk_27A6A8AB0;
    v136[4] = v23;
    v136[5] = PageIndex;
    objc_msgSend_performBlockWithImager_(self, v43, v47, v48, v49, v50, v136, v44, v45, v46);
    isPaginationComplete = objc_msgSend_isPaginationComplete(v23, v51, v56, v57, v58, v59, v52, v53, v54, v55);
    objc_msgSend_setDidLimitPageLayout_(self, v61, v65, v66, v67, v68, isPaginationComplete ^ 1u, v62, v63, v64);
    LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(v23, v69, v74, v75, v76, v77, v70, v71, v72, v73);
    v88 = objc_msgSend_lastPageIndex(self, v79, v84, v85, v86, v87, v80, v81, v82, v83);
    if (LaidOutDocumentPageIndex >= v88)
    {
      v98 = v88;
    }

    else
    {
      v98 = LaidOutDocumentPageIndex;
    }

    started = objc_msgSend_startPageIndex(self, v89, v94, v95, v96, v97, v90, v91, v92, v93);
    if (started <= v98)
    {
      v109 = started;
      do
      {
        if ((objc_msgSend_includeComments(self, v100, v105, v106, v107, v108, v101, v102, v103, v104) & 1) == 0)
        {
          v110 = objc_alloc_init(TPRenderingExporterPageEntry);
          objc_msgSend_setDocumentPageIndex_(v110, v111, v115, v116, v117, v118, v109, v112, v113, v114);
          objc_msgSend_setCommentOverflowPageIndex_(v110, v119, v123, v124, v125, v126, 0, v120, v121, v122);
          objc_msgSend_addObject_(self->_outputPageList, v127, v131, v132, v133, v134, v110, v128, v129, v130);
        }

        ++v109;
      }

      while (v109 <= v98);
    }

    outputPageList = self->_outputPageList;
  }

  return outputPageList;
}

- (void)invalidateOutputPageList
{
  objc_msgSend_setOutputPageList_(self, a2, v5, v6, v7, v8, 0, v2, v3, v4);

  objc_msgSend_setInternalPageCount_(self, v10, v14, v15, v16, v17, 0, v11, v12, v13);
}

- (void)setIncludeComments:(BOOL)comments
{
  if (self->_includeComments != comments)
  {
    objc_msgSend_invalidateOutputPageList(self, a2, v6, v7, v8, v9, comments, v3, v4, v5);
    self->_includeComments = comments;
  }
}

- (void)setIncludeBackgrounds:(BOOL)backgrounds
{
  if (self->_includeBackgrounds != backgrounds)
  {
    objc_msgSend_invalidateOutputPageList(self, a2, v6, v7, v8, v9, backgrounds, v3, v4, v5);
    self->_includeBackgrounds = backgrounds;
    v28 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v12, v17, v18, v19, v20, v13, v14, v15, v16);
    objc_msgSend_postNotificationName_object_(v28, v21, v24, v25, v26, v27, *MEMORY[0x277D81028], *(&self->super.super.isa + *MEMORY[0x277D7FFD8]), v22, v23);
  }
}

- (void)setupPencilAnnotationsAndHyperlinks
{
  v9[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_275FF4FB8;
  v9[3] = &unk_27A6A8B00;
  v9[4] = self;
  objc_msgSend_performBlockWithImager_(self, a2, v5, v6, v7, v8, v9, v2, v3, v4);
}

- (void)setup
{
  v20.receiver = self;
  v20.super_class = TPRenderingExporter;
  [(TSARenderingExporter *)&v20 setup];
  objc_msgSend_setupPencilAnnotationsAndHyperlinks(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  objc_msgSend_setPageIndex_(self, v12, v16, v17, v18, v19, 0x7FFFFFFFFFFFFFFFLL, v13, v14, v15);
}

- (void)teardown
{
  objc_msgSend_setHyperlinkController_(self, a2, v5, v6, v7, v8, 0, v2, v3, v4);
  objc_msgSend_setPageIndex_(self, v10, v14, v15, v16, v17, 0x7FFFFFFFFFFFFFFFLL, v11, v12, v13);
  self->_tornDown = 1;
  v18.receiver = self;
  v18.super_class = TPRenderingExporter;
  [(TSARenderingExporter *)&v18 teardown];
}

- (BOOL)drawCurrentPageInContext:(CGContext *)context viewScale:(double)scale unscaledClipRect:(CGRect)rect createPage:(BOOL)page
{
  pageCopy = page;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (page)
  {
    TSURectWithSize();
    mediaBox.origin.x = v14;
    mediaBox.origin.y = v15;
    mediaBox.size.width = v16;
    mediaBox.size.height = v17;
    CGContextBeginPage(context, &mediaBox);
  }

  CGContextSaveGState(context);
  CGContextScaleCTM(context, scale, scale);
  CGContextSaveGState(context);
  v29[0] = MEMORY[0x277D85DD0];
  v18.n128_u64[0] = 3221225472;
  v29[1] = 3221225472;
  v29[2] = sub_275FF5320;
  v29[3] = &unk_27A6A8B00;
  v29[4] = self;
  objc_msgSend_performBlockWithImager_(self, v19, v18, v23, v24, v25, v29, v20, v21, v22);
  v28.receiver = self;
  v28.super_class = TPRenderingExporter;
  height = [(TSARenderingExporter *)&v28 drawCurrentPageInContext:context viewScale:0 unscaledClipRect:1.0 createPage:x, y, width, height];
  CGContextRestoreGState(context);
  CGContextRestoreGState(context);
  if (pageCopy)
  {
    CGContextEndPage(context);
  }

  return height;
}

- (void)p_addHyperLinksInContext:(CGContext *)context forCanvas:(id)canvas
{
  v108 = *MEMORY[0x277D85DE8];
  canvasCopy = canvas;
  objc_opt_class();
  v12 = TSUDynamicCast();
  if (v12)
  {
    v17 = objc_msgSend_hyperlinkController(self, v7, v13, v14, v15, v16, v8, v9, v10, v11);
    objc_msgSend_unscaledClipRect(self, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    objc_msgSend_setCanvasRect_(v17, v27, v32, v33, v34, v35, v28, v29, v30, v31);

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v44 = objc_msgSend_allReps(canvasCopy, v36, 0, v41, v42, v43, v37, v38, v39, v40, 0);
    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, v47, v48, v49, v50, &v103, v107, 16, v46);
    if (v51)
    {
      v61 = v51;
      v62 = *v104;
      do
      {
        v63 = 0;
        do
        {
          if (*v104 != v62)
          {
            objc_enumerationMutation(v44);
          }

          v64 = *(*(&v103 + 1) + 8 * v63);
          v65 = objc_msgSend_hyperlinkController(self, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          objc_msgSend_addHyperlinksForRep_(v65, v66, v70, v71, v72, v73, v64, v67, v68, v69);

          ++v63;
        }

        while (v61 != v63);
        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v52, v57, v58, v59, v60, &v103, v107, 16, v56);
      }

      while (v61);
    }

    objc_msgSend_pageSize(v12, v74, v79, v80, v81, v82, v75, v76, v77, v78);
    v84 = v83.n128_u64[0];
    v86 = v85.n128_u64[0];
    v94 = objc_msgSend_hyperlinkController(self, v87, v83, v85, v92, v93, v88, v89, v90, v91);
    v95.n128_u64[0] = 0;
    v96.n128_u64[0] = 0;
    v97.n128_u64[0] = v84;
    v98.n128_u64[0] = v86;
    objc_msgSend_commitHyperlinksToPDF_targetRect_(v94, v99, v95, v96, v97, v98, context, v100, v101, v102);
  }
}

- (TPPaginatedPageController)pageController
{
  if (objc_msgSend_tornDown(self, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "[TPRenderingExporter pageController]", v12, v13, v14);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPRenderingExporter.m", v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v30, v31, v32, v33, v34, v20, v29, 522, 0, "Misuse of pageController after teardown");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v40, v41, v42, v43, v36, v37, v38, v39);
  }

  pageController = self->_pageController;

  return pageController;
}

- (void)setOptions:(id)options
{
  v50.receiver = self;
  v50.super_class = TPRenderingExporter;
  optionsCopy = options;
  [(TSARenderingExporter *)&v50 setOptions:optionsCopy];
  v13 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v5, v9, v10, v11, v12, @"kTPExportFromPage", v6, v7, v8, v50.receiver, v50.super_class);
  v22 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v14, v18, v19, v20, v21, @"kTPExportToPage", v15, v16, v17);

  if (v13)
  {
    v32 = objc_msgSend_unsignedIntValue(v13, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    if (v32)
    {
      objc_msgSend_setStartPageIndex_(self, v33, v37, v38, v39, v40, v32 - 1, v34, v35, v36);
    }

    else
    {
      objc_msgSend_setStartPageIndex_(self, v33, v37, v38, v39, v40, 1, v34, v35, v36);
    }
  }

  if (v22)
  {
    v41 = objc_msgSend_unsignedIntValue(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    if (v41)
    {
      objc_msgSend_setLastPageIndex_(self, v42, v46, v47, v48, v49, v41 - 1, v43, v44, v45);
    }

    else
    {
      objc_msgSend_setLastPageIndex_(self, v42, v46, v47, v48, v49, 1, v43, v44, v45);
    }
  }
}

- (CGRect)boundsRect
{
  v10 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_msgSend_pageSize(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v21 = v20;
  v23 = v22;

  v24 = 0.0;
  v25 = 0.0;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)unscaledClipRect
{
  if (objc_msgSend_pageIndex(self, a2, v6, v7, v8, v9, v2, v3, v4, v5) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
  }

  else
  {
    v20 = objc_msgSend_pageIndex(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  v21 = objc_msgSend_outputPageList(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, v26, v27, v28, v29, v20, v23, v24, v25);

  v40 = objc_msgSend_pageController(self, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v50 = objc_msgSend_documentPageIndex(v30, v41, v46, v47, v48, v49, v42, v43, v44, v45);
  objc_msgSend_pageRectForPageIndex_allowAfterPaginationPoint_(v40, v51, v54, v55, v56, v57, v50, 0, v52, v53);
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v66 = v59;
  v67 = v61;
  v68 = v63;
  v69 = v65;
  result.size.height = v69;
  result.size.width = v68;
  result.origin.y = v67;
  result.origin.x = v66;
  return result;
}

- (id)currentInfos
{
  v105[1] = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_outputPageList(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_pageIndex(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v30 = objc_msgSend_objectAtIndexedSubscript_(v11, v22, v26, v27, v28, v29, v21, v23, v24, v25);

  if (v30)
  {
    if (objc_msgSend_isDocumentPage(v30, v31, v36, v37, v38, v39, v32, v33, v34, v35) && objc_msgSend_documentPageIndex(v30, v40, v45, v46, v47, v48, v41, v42, v43, v44) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v59 = objc_msgSend_pageController(self, v49, v54, v55, v56, v57, v50, v51, v52, v53);
      v69 = objc_msgSend_documentPageIndex(v30, v60, v65, v66, v67, v68, v61, v62, v63, v64);
      objc_msgSend_paginateThroughPageIndex_(v59, v70, v74, v75, v76, v77, v69 + 1, v71, v72, v73);
      v87 = objc_msgSend_documentPageIndex(v30, v78, v83, v84, v85, v86, v79, v80, v81, v82);
      v96 = objc_msgSend_pageInfoForPageIndex_(v59, v88, v92, v93, v94, v95, v87, v89, v90, v91);
      v105[0] = v96;
      v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v97, v100, v101, v102, v103, v105, 1, v98, v99);
    }

    else
    {
      v58 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v58 = 0;
  }

  return v58;
}

- (BOOL)preparePage:(unint64_t)page
{
  v12 = objc_msgSend_pageController(self, a2, v6, v7, v8, v9, page, v3, v4, v5);
  v22 = objc_msgSend_outputPageList(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v23 = page - 1;
  v32 = objc_msgSend_objectAtIndexedSubscript_(v22, v24, v28, v29, v30, v31, page - 1, v25, v26, v27);

  if (objc_msgSend_isDocumentPage(v32, v33, v38, v39, v40, v41, v34, v35, v36, v37) && objc_msgSend_bodyRangeForPageIndex_forcePagination_(v12, v42, v46, v47, v48, v49, v23, 1, v44, v45) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v50 = 0;
  }

  else
  {
    objc_msgSend_setPageIndex_(self, v42, v46, v47, v48, v49, v23, v43, v44, v45);
    v50 = 1;
  }

  return v50;
}

- (BOOL)incrementPage
{
  if (objc_msgSend_pageIndex(self, a2, v6, v7, v8, v9, v2, v3, v4, v5) == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_setPageIndex_(self, v11, v16, v17, v18, v19, 0, v13, v14, v15);
  }

  else
  {
    v29 = objc_msgSend_pageIndex(self, v11, v16, v17, v18, v19, v12, v13, v14, v15) + 1;
    objc_msgSend_setPageIndex_(self, v30, v34, v35, v36, v37, v29, v31, v32, v33);
  }

  v38 = objc_msgSend_pageIndex(self, v20, v25, v26, v27, v28, v21, v22, v23, v24);
  v48 = objc_msgSend_outputPageList(self, v39, v44, v45, v46, v47, v40, v41, v42, v43);
  v58 = objc_msgSend_count(v48, v49, v54, v55, v56, v57, v50, v51, v52, v53);

  if (v38 >= v58)
  {
    return 0;
  }

  v68 = objc_msgSend_pageController(self, v59, v64, v65, v66, v67, v60, v61, v62, v63);
  v78 = objc_msgSend_outputPageList(self, v69, v74, v75, v76, v77, v70, v71, v72, v73);
  v88 = objc_msgSend_pageIndex(self, v79, v84, v85, v86, v87, v80, v81, v82, v83);
  v97 = objc_msgSend_objectAtIndexedSubscript_(v78, v89, v93, v94, v95, v96, v88, v90, v91, v92);

  objc_msgSend_isDocumentPage(v97, v98, v103, v104, v105, v106, v99, v100, v101, v102);
  v116 = objc_msgSend_documentPageIndex(v97, v107, v112, v113, v114, v115, v108, v109, v110, v111);
  v124 = objc_msgSend_bodyRangeForPageIndex_forcePagination_(v68, v117, v120, v121, v122, v123, v116, 1, v118, v119) != 0x7FFFFFFFFFFFFFFFLL;

  return v124;
}

- (double)totalProgess
{
  v10 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_bodyStorage(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_length(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

  if (v30 <= 1)
  {
    return 1;
  }

  else
  {
    return v30;
  }
}

- (double)progressForCurrentPage
{
  v11 = objc_msgSend_outputPageList(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_pageIndex(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v30 = objc_msgSend_objectAtIndexedSubscript_(v11, v22, v26, v27, v28, v29, v21, v23, v24, v25);

  v40 = objc_msgSend_pageController(self, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v50 = objc_msgSend_documentPageIndex(v30, v41, v46, v47, v48, v49, v42, v43, v44, v45);
  objc_msgSend_bodyRangeForPageIndex_forcePagination_(v40, v51, v54, v55, v56, v57, v50, 1, v52, v53);
  if (v58 <= 1)
  {
    v59 = 1;
  }

  else
  {
    v59 = v58;
  }

  v60 = v59;

  return v60;
}

- (unint64_t)pageCount
{
  if (!objc_msgSend_internalPageCount(self, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    v20 = objc_msgSend_outputPageList(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
    v30 = objc_msgSend_count(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    objc_msgSend_setInternalPageCount_(self, v31, v35, v36, v37, v38, v30, v32, v33, v34);
  }

  return objc_msgSend_internalPageCount(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
}

@end