@interface TPPaginatedPageController
+ (id)existingOwnedPaginatedPageControllerForDelegate:(id)delegate;
+ (id)ownedPaginatedPageControllerForDelegate:(id)delegate;
+ (id)paginatedPageControllerForDelegate:(id)delegate;
+ (void)disownPaginatedPageControllerForDelegate:(id)delegate;
+ (void)initialize;
- (BOOL)canProvideInfoForPageIndex:(unint64_t)index;
- (BOOL)canProvideNumberingInfoForPageIndex:(unint64_t)index;
- (BOOL)isPageLayoutRightToLeft;
- (BOOL)isPaginationComplete;
- (BOOL)isPaginationCompleteForSelection:(id)selection inFlow:(id)flow;
- (BOOL)isPaginationInProgress;
- (BOOL)isSectionInfo:(id)info onPage:(unint64_t)page;
- (BOOL)okToAnchorDrawable:(id)drawable toPageIndex:(unint64_t)index;
- (BOOL)okToAnchorDrawables:(id)drawables toPageIndex:(unint64_t)index;
- (BOOL)p_canAnchorDrawable:(id)drawable toPageLayout:(id)layout;
- (BOOL)p_couldBeFirstPageIndex:(unint64_t)index forPartitionedAttachmentCharIndex:(unint64_t)charIndex;
- (BOOL)p_didLayOut;
- (BOOL)p_isBodyLayoutComplete;
- (BOOL)p_layOutNextPageOnceWithOffscreenLayoutController;
- (BOOL)pageAtIndexHasBody:(unint64_t)body;
- (BOOL)pageBeginsWithPaginatedAttachment:(unint64_t)attachment;
- (BOOL)pageEndsWithPaginatedAttachment:(unint64_t)attachment;
- (BOOL)performBackgroundPagination;
- (BOOL)shouldHeaderFooterBeVisibleForPageIndex:(unint64_t)index;
- (BOOL)shouldUseFacingPagesForPageIndex:(unint64_t)index;
- (CGPoint)pageOriginForPageIndex:(unint64_t)index allowAfterPaginationPoint:(BOOL)point;
- (CGRect)pageRectForPageIndex:(unint64_t)index allowAfterPaginationPoint:(BOOL)point;
- (CGSize)canvasSizeToFitAllPagesForPageViewState:(int64_t)state;
- (TPPageControllerDelegate)delegate;
- (TPPaginatedPageController)initWithDelegate:(id)delegate;
- (_NSRange)anchoredRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (_NSRange)bodyRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (_NSRange)documentPageRangeOfSectionIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (_NSRange)footnoteLayoutRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (_NSRange)p_anchoredRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination allowAfterPaginationPoint:(BOOL)point;
- (_NSRange)p_bodyRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination allowAfterPaginationPoint:(BOOL)point;
- (_NSRange)p_footnoteLayoutRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination allowAfterPaginationPoint:(BOOL)point;
- (_NSRange)p_pageRangeAffectedByInfo:(id)info;
- (_NSRange)p_pageRangeForRange:(_NSRange)range forcePagination:(BOOL)pagination includingEmptyPages:(BOOL)pages caretAffinity:(int64_t)affinity leadingCharIndex:(unint64_t)index outEndIsValid:(BOOL *)valid;
- (_NSRange)pageRangeForSelection:(id)selection includingEmptyPages:(BOOL)pages outEndIsValid:(BOOL *)valid;
- (_NSRange)sectionBodyRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (_NSRange)sectionPageRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination outEndIsValid:(BOOL *)valid;
- (_NSRange)validPageRangeForSelection:(id)selection;
- (double)verticalPageSeparation;
- (id)anchoredDrawablesOnPageIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (id)backgroundFillForPageIndex:(unint64_t)index;
- (id)displayPageNumberForCharIndex:(unint64_t)index withSystemFormatting:(BOOL)formatting;
- (id)displayPageNumberForPageIndex:(unint64_t)index withSystemFormatting:(BOOL)formatting;
- (id)footnoteLayoutController;
- (id)headerFooterProviderForPageIndex:(unint64_t)index;
- (id)i_columnAfterPageIndex:(unint64_t)index;
- (id)i_columnPriorToPageIndex:(unint64_t)index;
- (id)i_firstChildHintAfterPageIndex:(unint64_t)index;
- (id)i_pageHintForPageIndex:(unint64_t)index;
- (id)i_pageIndexPathForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination allowAfterPaginationPoint:(BOOL)point;
- (id)i_textPageHintPrecedingPageIndex:(unint64_t *)index;
- (id)i_topicNumberHintsAfterPageIndex:(unint64_t)index;
- (id)metricsCacheForStorage:(id)storage;
- (id)numberOfPagesInEachSection;
- (id)offscreenLayoutController;
- (id)p_cachedPageLayoutForPageIndex:(unint64_t)index preferredLayoutController:(id)controller;
- (id)p_lastValidPageHint;
- (id)p_lastValidTextPageHint:(unint64_t *)hint;
- (id)p_pageHintForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination allowAfterPaginationPoint:(BOOL)point;
- (id)p_pageHintForPageIndexPath:(id)path;
- (id)p_pageHintPrecedingPageIndexPath:(id)path;
- (id)p_pageIndicesForFlow:(id)flow withSelection:(id)selection forcePagination:(BOOL)pagination;
- (id)p_pageInfoForPageAtIndex:(unint64_t)index;
- (id)p_pageInfosForBodySelection:(id)selection;
- (id)p_pageInfosForFlow:(id)flow withSelection:(id)selection;
- (id)p_pageMasterForPageIndex:(unint64_t)index inSection:(id)section sectionHint:(id)hint;
- (id)p_sectionAtSectionIndex:(unint64_t)index;
- (id)p_sectionHintForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination allowAfterPaginationPoint:(BOOL)point;
- (id)p_textPageHintFollowingPageIndexPath:(id)path;
- (id)p_textPageHintPrecedingPageIndexPath:(id)path;
- (id)pageIndexesForSelection:(id)selection forcePagination:(BOOL)pagination outEndIsValid:(BOOL *)valid;
- (id)pageIndicesForPartitionableAttachmentAtBodyCharIndex:(unint64_t)index selectionPath:(id)path forcePagination:(BOOL)pagination;
- (id)pageInfoForPageIndex:(unint64_t)index;
- (id)pageNumberFormatForSectionOnPageIndex:(unint64_t)index;
- (id)sectionForPageIndex:(unint64_t)index;
- (id)sectionTemplateDrawableProviderForPageIndex:(unint64_t)index;
- (id)topicNumbersForStorage:(id)storage;
- (int64_t)pageKindForPageIndex:(unint64_t)index;
- (unint64_t)adjacentPageIndexForPageIndex:(unint64_t)index;
- (unint64_t)calculatePageIndexFromCanvasPoint:(CGPoint)point;
- (unint64_t)contentFlagsForPageIndex:(unint64_t)index;
- (unint64_t)p_backupPageIndexForCharIndex:(unint64_t)index;
- (unint64_t)p_firstPageColumn;
- (unint64_t)p_lastValidCharIndex;
- (unint64_t)p_lastValidFootnoteIndex;
- (unint64_t)p_lastValidTextPageIndex;
- (unint64_t)p_pageHintIndexForAnchoredCharIndex:(unint64_t)index;
- (unint64_t)p_pageHintIndexForCharIndex:(unint64_t)index;
- (unint64_t)p_pageIndexContainingIndex:(unint64_t)index ofType:(unint64_t)type;
- (unint64_t)p_pageIndexForAnchoredCharIndex:(unint64_t)index forcePagination:(BOOL)pagination searchAfterPaginationPoint:(BOOL)point;
- (unint64_t)p_pageIndexForCharIndex:(unint64_t)index includeEmptyPages:(BOOL)pages caretAffinity:(int64_t)affinity forcePagination:(BOOL)pagination searchAfterPaginationPoint:(BOOL)point;
- (unint64_t)p_pageIndexForFootnoteIndex:(unint64_t)index forcePagination:(BOOL)pagination searchAfterPaginationPoint:(BOOL)point;
- (unint64_t)p_pageNumberForContinuousSectionsAtPageIndex:(unint64_t)index finalPage:(BOOL)page;
- (unint64_t)p_textPageIndexPrecedingPageIndex:(unint64_t)index;
- (unint64_t)pageCountForPageIndex:(unint64_t)index;
- (unint64_t)pageHeightCountForPageViewState:(int64_t)state;
- (unint64_t)pageIndexForAnchoredAttachment:(id)attachment forcePagination:(BOOL)pagination;
- (unint64_t)pageIndexForAnchoredCharIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (unint64_t)pageIndexForCharIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (unint64_t)pageIndexForFootnoteIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (unint64_t)pageIndexFromCanvasPoint:(CGPoint)point;
- (unint64_t)pageNumberForPageIndex:(unint64_t)index;
- (unint64_t)sectionIndexForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (unint64_t)sectionPageIndexForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination;
- (void)accquireLockAndPerformAction:(id)action;
- (void)addPaginationObserver:(id)observer;
- (void)backgroundPaginationDidEnd;
- (void)canvasDidValidateLayouts:(id)layouts;
- (void)changeTrackingVisibilityDidChange;
- (void)d_timePaginationResettingMetrics:(BOOL)metrics;
- (void)dealloc;
- (void)enumerateHeaderFooterFragmentsOnPageIndex:(unint64_t)index usingBlock:(id)block;
- (void)i_inflateColumnsInBodyLayout:(id)layout;
- (void)i_inflateFootnotesInFootnoteContainer:(id)container;
- (void)i_inflateTextFlowsOnPage:(id)page;
- (void)i_invalidateFlows:(id)flows startingPage:(id)page;
- (void)i_invalidatePageIndex:(unint64_t)index;
- (void)i_rebuildCachedLayoutChildrenFromStartPage:(unint64_t)page toEndPage:(unint64_t)endPage setNeedsLayout:(BOOL)layout;
- (void)i_registerPageLayout:(id)layout;
- (void)i_setNeedsDynamicLayoutForLayoutController:(id)controller onPageIndex:(unint64_t)index;
- (void)i_trimPageAtIndex:(unint64_t)index toCharIndex:(unint64_t)charIndex removeFootnoteReferenceCount:(unint64_t)count removeAutoNumberFootnoteCount:(unint64_t)footnoteCount;
- (void)i_unregisterPageLayout:(id)layout;
- (void)invalidateAllPageLayoutsSizeAndPosition;
- (void)layoutManager:(id)manager didClearDirtyRangeWithDelta:(int64_t)delta afterCharIndex:(unint64_t)index;
- (void)layoutManagerNeedsLayout:(id)layout;
- (void)p_advanceSectionIndex;
- (void)p_checkForBackUp;
- (void)p_destroyBodyLayoutState;
- (void)p_hasBodyChanged:(id)changed;
- (void)p_invalidatePageIndex:(unint64_t)index;
- (void)p_invalidateThumbnailForPageIndex:(unint64_t)index;
- (void)p_invalidateThumbnailsFromSectionIndexToEnd:(unint64_t)end;
- (void)p_invalidateThumbnailsFromSectionToEnd:(id)end;
- (void)p_layOutFootnotesIntoPageLayout:(id)layout;
- (void)p_layOutIntoPageLayout:(id)layout outDidSync:(BOOL *)sync;
- (void)p_layOutNextPageForLayoutController:(id)controller dirtyRange:(id)range;
- (void)p_layOutTextIntoPageLayout:(id)layout didSync:(BOOL *)sync initialFootnoteIndex:(unint64_t *)index;
- (void)p_notifyObserversDidLayoutWhileSyncing:(BOOL)syncing;
- (void)p_paginateThroughPageIndex:(unint64_t)index forLayoutController:(id)controller clearOffscreenInfos:(BOOL)infos;
- (void)p_performPaginationResetAndMetricsReset:(BOOL)reset;
- (void)p_performWithCachedPageLayouts:(id)layouts;
- (void)p_preparePageHintForNextPage;
- (void)p_preparePaginationStateForNextPage;
- (void)p_prepareSectionHintForNextPage;
- (void)p_processBodyLayoutInvalidation;
- (void)p_processWidowsAndInflationForLayoutController:(id)controller;
- (void)p_rebuildPageLayoutsContainingDrawableUUIDs:(id)ds;
- (void)p_removeDeletedFootnotesOnPageLayout:(id)layout;
- (void)p_removeFinishedPageGenerators;
- (void)p_resetPageGenerators;
- (void)p_setNeedsLayoutFromSectionIndexToEnd:(unint64_t)end;
- (void)p_setNeedsLayoutOnPageIndex:(unint64_t)index;
- (void)p_syncFromNextPageWithDirtyRanges:(id)ranges pageTextRange:(const _NSRange *)range;
- (void)p_updateNonTextHintAtPageIndexPath:(id)path pageLayout:(id)layout;
- (void)p_updatePageCount;
- (void)p_updateTextHintAtPageIndexPath:(id)path withTarget:(id)target;
- (void)p_withPageLayoutAtIndex:(unint64_t)index preferredLayoutController:(id)controller executeBlock:(id)block;
- (void)paginateThroughPageIndex:(unint64_t)index forLayoutController:(id)controller;
- (void)performBlockForExport:(id)export;
- (void)removePaginationObserver:(id)observer;
- (void)restoreFromLayoutState:(id)state;
- (void)teardown;
- (void)withPageLayoutAtIndex:(unint64_t)index preferredLayoutController:(id)controller executeBlock:(id)block;
@end

@implementation TPPaginatedPageController

- (BOOL)canProvideInfoForPageIndex:(unint64_t)index
{
  v32 = 0;
  v33 = &v32;
  v6.n128_u64[0] = 0x2020000000;
  v34 = 0x2020000000;
  v35 = 0;
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v13, v16, v17, v18, v19, index, v12, v14, v15);

  if (isPageTemplatePageIndex_documentRoot)
  {
    v29 = 1;
    *(v33 + 24) = 1;
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v25.n128_u64[0] = 3221225472;
    v31[1] = 3221225472;
    v31[2] = sub_275FFA868;
    v31[3] = &unk_27A6A8B30;
    v31[4] = self;
    v31[5] = &v32;
    v31[6] = index;
    objc_msgSend_accquireLockAndPerformAction_(self, v21, v25, v26, v27, v28, v31, v22, v23, v24);
    v29 = *(v33 + 24);
  }

  _Block_object_dispose(&v32, 8);
  return v29 & 1;
}

- (BOOL)canProvideNumberingInfoForPageIndex:(unint64_t)index
{
  v32 = 0;
  v33 = &v32;
  v6.n128_u64[0] = 0x2020000000;
  v34 = 0x2020000000;
  v35 = 0;
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v13, v16, v17, v18, v19, index, v12, v14, v15);

  if (isPageTemplatePageIndex_documentRoot)
  {
    v29 = 1;
    *(v33 + 24) = 1;
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v25.n128_u64[0] = 3221225472;
    v31[1] = 3221225472;
    v31[2] = sub_275FFAA04;
    v31[3] = &unk_27A6A8B58;
    v31[4] = self;
    v31[5] = &v32;
    v31[6] = index;
    objc_msgSend_accquireLockAndPerformAction_(self, v21, v25, v26, v27, v28, v31, v22, v23, v24);
    v29 = *(v33 + 24);
  }

  _Block_object_dispose(&v32, 8);
  return v29 & 1;
}

- (id)backgroundFillForPageIndex:(unint64_t)index
{
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  v22 = objc_msgSend_documentRoot(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v32 = objc_msgSend_settings(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  if (objc_msgSend_hasBody(v32, v33, v38, v39, v40, v41, v34, v35, v36, v37))
  {

    goto LABEL_8;
  }

  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v42, v45, v46, v47, v48, index, v12, v43, v44);

  if (!isPageTemplatePageIndex_documentRoot)
  {
LABEL_8:
    v209 = 0;
    v210 = &v209;
    v211 = 0x3032000000;
    v212 = sub_275FFADAC;
    v213 = sub_275FFADBC;
    v214 = 0;
    v208[0] = MEMORY[0x277D85DD0];
    v53.n128_u64[0] = 3221225472;
    v208[1] = 3221225472;
    v208[2] = sub_275FFADC4;
    v208[3] = &unk_27A6A8B58;
    v208[4] = self;
    v208[5] = &v209;
    v208[6] = index;
    objc_msgSend_accquireLockAndPerformAction_(self, v49, v53, v54, v55, v56, v208, v50, v51, v52);
    v162 = v210[5];
    if (v162)
    {
      v164 = objc_msgSend_sectionIndex(v162, v153, v158, v159, v160, v161, v154, v155, v156, v157);
      if (v164 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v197 = objc_msgSend_p_sectionAtSectionIndex_(self, v163, v168, v169, v170, v171, v164, v165, v166, v167);
        v152 = objc_msgSend_backgroundFill(v197, v198, v203, v204, v205, v206, v199, v200, v201, v202);

        goto LABEL_13;
      }

      v172 = MEMORY[0x277D81150];
      v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v163, v168, v169, v170, v171, "[TPPaginatedPageController(LayoutInfoProvider) backgroundFillForPageIndex:]", v165, v166, v167);
      v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, v178, v179, v180, v181, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController_LayoutInfoProvider.m", v175, v176, v177);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v172, v183, v184, v185, v186, v187, v173, v182, 87, 0, "unable to determine section index for page index %lu", index);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v188, v193, v194, v195, v196, v189, v190, v191, v192);
    }

    v152 = 0;
LABEL_13:
    _Block_object_dispose(&v209, 8);

    goto LABEL_14;
  }

  v58 = objc_msgSend_pageTemplateIndexFromPageIndex_documentRoot_(TPPageInfo, v49, v53, v54, v55, v56, index, v12, v51, v52);
  v68 = objc_msgSend_pageTemplates(v12, v59, v64, v65, v66, v67, v60, v61, v62, v63);
  v78 = objc_msgSend_count(v68, v69, v74, v75, v76, v77, v70, v71, v72, v73);

  if (v58 >= v78)
  {
    v88 = MEMORY[0x277D81150];
    v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v84, v85, v86, v87, "[TPPaginatedPageController(LayoutInfoProvider) backgroundFillForPageIndex:]", v81, v82, v83);
    v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, v94, v95, v96, v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController_LayoutInfoProvider.m", v91, v92, v93);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v88, v99, v100, v101, v102, v103, v89, v98, 75, 0, "bad template index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v109, v110, v111, v112, v105, v106, v107, v108);
  }

  v113 = objc_msgSend_pageTemplates(v12, v79, v84, v85, v86, v87, v80, v81, v82, v83);
  v123 = objc_msgSend_count(v113, v114, v119, v120, v121, v122, v115, v116, v117, v118);

  if (v58 >= v123)
  {
    v152 = 0;
  }

  else
  {
    v133 = objc_msgSend_pageTemplates(v12, v124, v129, v130, v131, v132, v125, v126, v127, v128);
    v142 = objc_msgSend_objectAtIndexedSubscript_(v133, v134, v138, v139, v140, v141, v58, v135, v136, v137);

    v152 = objc_msgSend_backgroundFill(v142, v143, v148, v149, v150, v151, v144, v145, v146, v147);
  }

LABEL_14:

  return v152;
}

- (id)sectionForPageIndex:(unint64_t)index
{
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  v22 = objc_msgSend_documentRoot(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v32 = objc_msgSend_settings(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  if (objc_msgSend_hasBody(v32, v33, v38, v39, v40, v41, v34, v35, v36, v37))
  {
  }

  else
  {
    isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v42, v45, v46, v47, v48, index, v12, v43, v44);

    if (isPageTemplatePageIndex_documentRoot)
    {
      v58 = 0;
      goto LABEL_11;
    }
  }

  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = sub_275FFADAC;
  v109 = sub_275FFADBC;
  v110 = 0;
  v104[0] = MEMORY[0x277D85DD0];
  v53.n128_u64[0] = 3221225472;
  v104[1] = 3221225472;
  v104[2] = sub_275FFB044;
  v104[3] = &unk_27A6A8B58;
  v104[4] = self;
  v104[5] = &v105;
  v104[6] = index;
  objc_msgSend_accquireLockAndPerformAction_(self, v49, v53, v54, v55, v56, v104, v50, v51, v52);
  v68 = v106[5];
  if (v68)
  {
    v70 = objc_msgSend_sectionIndex(v68, v59, v64, v65, v66, v67, v60, v61, v62, v63);
    if (v70 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v58 = objc_msgSend_p_sectionAtSectionIndex_(self, v69, v74, v75, v76, v77, v70, v71, v72, v73);
      goto LABEL_10;
    }

    v78 = MEMORY[0x277D81150];
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v74, v75, v76, v77, "[TPPaginatedPageController(LayoutInfoProvider) sectionForPageIndex:]", v71, v72, v73);
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController_LayoutInfoProvider.m", v81, v82, v83);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v89, v90, v91, v92, v93, v79, v88, 112, 0, "unable to determine section index for page index %lu", index);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v99, v100, v101, v102, v95, v96, v97, v98);
  }

  v58 = 0;
LABEL_10:
  _Block_object_dispose(&v105, 8);

LABEL_11:

  return v58;
}

- (id)headerFooterProviderForPageIndex:(unint64_t)index
{
  v32 = 0;
  v33 = &v32;
  v6.n128_u64[0] = 0x3032000000;
  v34 = 0x3032000000;
  v35 = sub_275FFADAC;
  v36 = sub_275FFADBC;
  v37 = 0;
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v13, v16, v17, v18, v19, index, v12, v14, v15);

  if ((isPageTemplatePageIndex_documentRoot & 1) == 0)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v25.n128_u64[0] = 3221225472;
    v31[1] = 3221225472;
    v31[2] = sub_275FFB1E8;
    v31[3] = &unk_27A6A8B30;
    v31[4] = self;
    v31[5] = &v32;
    v31[6] = index;
    objc_msgSend_accquireLockAndPerformAction_(self, v21, v25, v26, v27, v28, v31, v22, v23, v24);
  }

  v29 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v29;
}

- (BOOL)shouldHeaderFooterBeVisibleForPageIndex:(unint64_t)index
{
  v31 = 0;
  v32 = &v31;
  v6.n128_u64[0] = 0x2020000000;
  v33 = 0x2020000000;
  v34 = 1;
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  if (objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v13, v16, v17, v18, v19, index, v12, v14, v15))
  {
    v28 = 0;
    *(v32 + 24) = 0;
  }

  else
  {
    v30[0] = MEMORY[0x277D85DD0];
    v24.n128_u64[0] = 3221225472;
    v30[1] = 3221225472;
    v30[2] = sub_275FFB44C;
    v30[3] = &unk_27A6A8B30;
    v30[4] = self;
    v30[5] = &v31;
    v30[6] = index;
    objc_msgSend_accquireLockAndPerformAction_(self, v20, v24, v25, v26, v27, v30, v21, v22, v23);
    v28 = *(v32 + 24);
  }

  _Block_object_dispose(&v31, 8);
  return v28 & 1;
}

- (id)sectionTemplateDrawableProviderForPageIndex:(unint64_t)index
{
  v158 = 0;
  v159 = &v158;
  v6.n128_u64[0] = 0x3032000000;
  v160 = 0x3032000000;
  v161 = sub_275FFADAC;
  v162 = sub_275FFADBC;
  v163 = 0;
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v13, v16, v17, v18, v19, index, v12, v14, v15);

  if (isPageTemplatePageIndex_documentRoot)
  {
    v30 = objc_msgSend_documentRoot(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v38 = objc_msgSend_pageTemplateIndexFromPageIndex_documentRoot_(TPPageInfo, v31, v34, v35, v36, v37, index, v30, v32, v33);

    v48 = objc_msgSend_documentRoot(self, v39, v44, v45, v46, v47, v40, v41, v42, v43);
    v58 = objc_msgSend_pageTemplates(v48, v49, v54, v55, v56, v57, v50, v51, v52, v53);
    v68 = objc_msgSend_count(v58, v59, v64, v65, v66, v67, v60, v61, v62, v63);

    if (v38 >= v68)
    {
      v78 = MEMORY[0x277D81150];
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v74, v75, v76, v77, "[TPPaginatedPageController(LayoutInfoProvider) sectionTemplateDrawableProviderForPageIndex:]", v71, v72, v73);
      v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController_LayoutInfoProvider.m", v81, v82, v83);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v89, v90, v91, v92, v93, v79, v88, 203, 0, "bad template index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v99, v100, v101, v102, v95, v96, v97, v98);
    }

    v103 = objc_msgSend_documentRoot(self, v69, v74, v75, v76, v77, v70, v71, v72, v73);
    v113 = objc_msgSend_pageTemplates(v103, v104, v109, v110, v111, v112, v105, v106, v107, v108);
    v123 = objc_msgSend_count(v113, v114, v119, v120, v121, v122, v115, v116, v117, v118);

    if (v38 < v123)
    {
      v133 = objc_msgSend_documentRoot(self, v124, v129, v130, v131, v132, v125, v126, v127, v128);
      v143 = objc_msgSend_pageTemplates(v133, v134, v139, v140, v141, v142, v135, v136, v137, v138);
      v152 = objc_msgSend_objectAtIndexedSubscript_(v143, v144, v148, v149, v150, v151, v38, v145, v146, v147);
      v153 = TSUProtocolCast();
      v154 = v159[5];
      v159[5] = v153;
    }
  }

  else
  {
    v157[0] = MEMORY[0x277D85DD0];
    v26.n128_u64[0] = 3221225472;
    v157[1] = 3221225472;
    v157[2] = sub_275FFB890;
    v157[3] = &unk_27A6A8B30;
    v157[4] = self;
    v157[5] = &v158;
    v157[6] = index;
    objc_msgSend_accquireLockAndPerformAction_(self, v21, v26, v27, v28, v29, v157, v23, v24, v25);
  }

  v155 = v159[5];
  _Block_object_dispose(&v158, 8);

  return v155;
}

- (unint64_t)pageNumberForPageIndex:(unint64_t)index
{
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v13, v16, v17, v18, v19, index, v12, v14, v15);

  if (isPageTemplatePageIndex_documentRoot)
  {
    v30 = objc_msgSend_documentRoot(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v38 = objc_msgSend_pageTemplateIndexFromPageIndex_documentRoot_(TPPageInfo, v31, v34, v35, v36, v37, index, v30, v32, v33);

    return v38 + 1;
  }

  else
  {

    return MEMORY[0x2821F9670](self, sel_p_pageNumberForContinuousSectionsAtPageIndex_finalPage_, v26, v27, v28, v29);
  }
}

- (unint64_t)pageCountForPageIndex:(unint64_t)index
{
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v13, v16, v17, v18, v19, index, v12, v14, v15);

  if (isPageTemplatePageIndex_documentRoot)
  {
    v30 = objc_msgSend_documentRoot(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v40 = objc_msgSend_pageTemplates(v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
    v50 = objc_msgSend_count(v40, v41, v46, v47, v48, v49, v42, v43, v44, v45);

    return v50;
  }

  else
  {

    return MEMORY[0x2821F9670](self, sel_p_pageNumberForContinuousSectionsAtPageIndex_finalPage_, v26, v27, v28, v29);
  }
}

- (id)pageNumberFormatForSectionOnPageIndex:(unint64_t)index
{
  v87 = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277D80E68];
  v13 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, v6, v7, v8, v9, index, v3, v4, v5);
  v22 = objc_msgSend_defaultPageNumberFormatForLocale_(v12, v14, v18, v19, v20, v21, v13, v15, v16, v17);

  v32 = objc_msgSend_documentRoot(self, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  LOBYTE(v13) = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v33, v36, v37, v38, v39, index, v32, v34, v35);

  if ((v13 & 1) == 0)
  {
    v48 = objc_msgSend_headerFooterProviderForPageIndex_(self, v40, v44, v45, v46, v47, index, v41, v42, v43);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v57 = objc_msgSend_headerFooterFragmentEnumerator(v48, v49, 0, v54, v55, v56, v50, v51, v52, v53, 0);
    v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, v60, v61, v62, v63, &v82, v86, 16, v59);
    if (v64)
    {
      v74 = v64;
      v75 = *v83;
      while (2)
      {
        for (i = 0; i != v74; ++i)
        {
          if (*v83 != v75)
          {
            objc_enumerationMutation(v57);
          }

          v77 = *(*(&v82 + 1) + 8 * i);
          v78 = objc_msgSend_firstPageNumberAttachment(v77, v65, v70, v71, v72, v73, v66, v67, v68, v69);
          if (!v78)
          {
            v78 = objc_msgSend_firstPageCountAttachment(v77, v65, v70, v71, v72, v73, v66, v67, v68, v69);
            if (!v78)
            {
              continue;
            }
          }

          v79 = v78;
          v80 = objc_msgSend_numberFormat(v78, v65, v70, v71, v72, v73, v66, v67, v68, v69);

          v22 = v80;
          goto LABEL_13;
        }

        v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v65, v70, v71, v72, v73, &v82, v86, 16, v69);
        if (v74)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v22;
}

- (id)displayPageNumberForCharIndex:(unint64_t)index withSystemFormatting:(BOOL)formatting
{
  objc_msgSend_pageIndexForCharIndex_forcePagination_(self, a2, v6, v7, v8, v9, index, 0, v4, v5);

  return MEMORY[0x2821F9670](self, sel_displayPageNumberForPageIndex_withSystemFormatting_, v11, v12, v13, v14);
}

- (id)displayPageNumberForPageIndex:(unint64_t)index withSystemFormatting:(BOOL)formatting
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = &stru_288501738;
  }

  else
  {
    formattingCopy = formatting;
    v14 = objc_msgSend_pageNumberForPageIndex_(self, a2, v6, v7, v8, v9, index, formatting, v4, v5);
    if (v14 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v14;
    }

    if (formattingCopy)
    {
      v24 = objc_alloc_init(MEMORY[0x277CCABB8]);
      objc_msgSend_setNumberStyle_(v24, v25, v29, v30, v31, v32, 1, v26, v27, v28);
      v41 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v33, v37, v38, v39, v40, v23, v34, v35, v36);
      v10 = objc_msgSend_stringFromNumber_(v24, v42, v46, v47, v48, v49, v41, v43, v44, v45);
    }

    else
    {
      v24 = objc_msgSend_pageNumberFormatForSectionOnPageIndex_(self, v15, v19, v20, v21, v22, index, v16, v17, v18);
      v10 = objc_msgSend_stringFromNumber_forFormatName_(MEMORY[0x277D80E68], v50, v53, v54, v55, v56, v23, v24, v51, v52);
    }
  }

  return v10;
}

- (unint64_t)contentFlagsForPageIndex:(unint64_t)index
{
  v92 = 0;
  v93 = &v92;
  v6.n128_u64[0] = 0x2020000000;
  v94 = 0x2020000000;
  v95 = 31;
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v13, v16, v17, v18, v19, index, v12, v14, v15);

  if (isPageTemplatePageIndex_documentRoot)
  {
    v30 = 6;
    v93[3] = 6;
  }

  else
  {
    v31 = objc_msgSend_documentRoot(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v41 = objc_msgSend_bodyStorage(v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);
    v51 = objc_msgSend_footnoteCount(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);

    if (!v51)
    {
      v93[3] &= ~0x10uLL;
    }

    v61 = objc_msgSend_documentRoot(self, v52, v57, v58, v59, v60, v53, v54, v55, v56);
    v71 = objc_msgSend_settings(v61, v62, v67, v68, v69, v70, v63, v64, v65, v66);

    if ((objc_msgSend_hasHeaders(v71, v72, v77, v78, v79, v80, v73, v74, v75, v76) & 1) == 0 && (objc_msgSend_hasFooters(v71, v81, v86, v87, v88, v89, v82, v83, v84, v85) & 1) == 0)
    {
      v93[3] &= ~8uLL;
    }

    v91[0] = MEMORY[0x277D85DD0];
    v86.n128_u64[0] = 3221225472;
    v91[1] = 3221225472;
    v91[2] = sub_275FFBFC0;
    v91[3] = &unk_27A6A8B30;
    v91[4] = self;
    v91[5] = &v92;
    v91[6] = index;
    objc_msgSend_accquireLockAndPerformAction_(self, v81, v86, v87, v88, v89, v91, v83, v84, v85);

    v30 = v93[3];
  }

  _Block_object_dispose(&v92, 8);
  return v30;
}

- (BOOL)shouldUseFacingPagesForPageIndex:(unint64_t)index
{
  v10 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  v20 = objc_msgSend_settings(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  hasFacingPages = objc_msgSend_hasFacingPages(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

  return hasFacingPages;
}

- (BOOL)isSectionInfo:(id)info onPage:(unint64_t)page
{
  infoCopy = info;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_275FFC268;
  v17[3] = &unk_27A6A8B80;
  v7 = infoCopy;
  v18 = v7;
  selfCopy = self;
  v20 = &v22;
  pageCopy = page;
  objc_msgSend_accquireLockAndPerformAction_(self, v8, v12, v13, v14, v15, v17, v9, v10, v11);
  LOBYTE(page) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return page;
}

- (void)enumerateHeaderFooterFragmentsOnPageIndex:(unint64_t)index usingBlock:(id)block
{
  blockCopy = block;
  v16 = objc_msgSend_documentRoot(self, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v26 = objc_msgSend_settings(v16, v17, v22, v23, v24, v25, v18, v19, v20, v21);

  hasHeaders = objc_msgSend_hasHeaders(v26, v27, v32, v33, v34, v35, v28, v29, v30, v31);
  hasFooters = objc_msgSend_hasFooters(v26, v37, v42, v43, v44, v45, v38, v39, v40, v41);
  v55 = hasFooters;
  if (((hasHeaders & 1) != 0 || hasFooters) && objc_msgSend_shouldHeaderFooterBeVisibleForPageIndex_(self, v47, v51, v52, v53, v54, index, v48, v49, v50))
  {
    v90 = v26;
    v64 = objc_msgSend_headerFooterProviderForPageIndex_(self, v56, v60, v61, v62, v63, index, v57, v58, v59);
    v74 = objc_msgSend_usesSingleHeaderFooter(v64, v65, v70, v71, v72, v73, v66, v67, v68, v69);
    v82 = 1;
    if (!v55)
    {
      v82 = 2;
    }

    if (hasHeaders)
    {
      v83 = 0;
    }

    else
    {
      v83 = v82;
    }

    if (v74)
    {
      v84 = 2;
    }

    else
    {
      v84 = 3;
    }

    v85 = v74;
    do
    {
      v86 = v85;
      do
      {
        v87 = objc_msgSend_headerFooter_fragmentAtIndex_(v64, v75, v78, v79, v80, v81, v83, v86, v76, v77);
        v91 = 0;
        blockCopy[2](blockCopy, v83, v86, v87, &v91);
        v88 = v91;

        if (v88)
        {
          break;
        }

        ++v86;
      }

      while (v86 < v84);
      if (v83)
      {
        v89 = 0;
      }

      else
      {
        v89 = v55;
      }

      v83 = 1;
    }

    while ((v89 & 1) != 0);

    v26 = v90;
  }
}

- (id)p_sectionAtSectionIndex:(unint64_t)index
{
  v11 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  v21 = objc_msgSend_bodyStorage(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  if (objc_msgSend_sectionCount(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26) <= index)
  {
    v38 = 0;
  }

  else
  {
    v38 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(v21, v31, v34, v35, v36, v37, index, 0, v32, v33);
  }

  return v38;
}

- (id)p_pageMasterForPageIndex:(unint64_t)index inSection:(id)section sectionHint:(id)hint
{
  sectionCopy = section;
  hintCopy = hint;
  if (objc_msgSend_sectionTemplateFirstPageDifferent(sectionCopy, v9, v14, v15, v16, v17, v10, v11, v12, v13) && objc_msgSend_documentStartPageIndex(hintCopy, v18, v23, v24, v25, v26, v19, v20, v21, v22) == index)
  {
    objc_msgSend_sectionTemplatePageForType_(sectionCopy, v18, v23, v24, v25, v26, 0, v20, v21, v22);
  }

  else if ((index & objc_msgSend_sectionTemplateEvenOddPagesDifferent(sectionCopy, v18, v23, v24, v25, v26, v19, v20, v21, v22)) != 0)
  {
    objc_msgSend_sectionTemplatePageForType_(sectionCopy, v27, v31, v32, v33, v34, 1, v28, v29, v30);
  }

  else
  {
    objc_msgSend_sectionTemplatePageForType_(sectionCopy, v27, v31, v32, v33, v34, 2, v28, v29, v30);
  }
  v35 = ;

  return v35;
}

- (unint64_t)p_pageNumberForContinuousSectionsAtPageIndex:(unint64_t)index finalPage:(BOOL)page
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_275FFC6D4;
  v12[3] = &unk_27A6A8BA8;
  v12[5] = &v14;
  v12[6] = index;
  v12[4] = self;
  pageCopy = page;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v12, page, v4, v5);
  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v10;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v11 = objc_msgSend_weakToWeakObjectsMapTable(MEMORY[0x277CCAB00], v2, v7, v8, v9, v10, v3, v4, v5, v6);
    v12 = qword_280A404E0;
    qword_280A404E0 = v11;

    v22 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v13, v18, v19, v20, v21, v14, v15, v16, v17);
    v23 = qword_280A404E8;
    qword_280A404E8 = v22;
  }
}

+ (id)paginatedPageControllerForDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = qword_280A404E0;
  objc_sync_enter(v5);
  v19 = objc_msgSend_objectForKeyedSubscript_(qword_280A404E0, v6, v10, v11, v12, v13, delegateCopy, v7, v8, v9);
  if (!v19)
  {
    v24 = [self alloc];
    v19 = objc_msgSend_initWithDelegate_(v24, v25, v29, v30, v31, v32, delegateCopy, v26, v27, v28);
    objc_msgSend_setObject_forKeyedSubscript_(qword_280A404E0, v33, v36, v37, v38, v39, v19, delegateCopy, v34, v35);
  }

  v40 = objc_msgSend_delegate(v19, v14, v20, v21, v22, v23, v15, v16, v17, v18);

  if (v40 != delegateCopy)
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v45, v46, v47, v48, "+[TPPaginatedPageController paginatedPageControllerForDelegate:]", v42, v43, v44);
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v52, v53, v54);
    v69 = objc_msgSend_delegate(v19, v60, v65, v66, v67, v68, v61, v62, v63, v64);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v70, v71, v72, v73, v74, v50, v59, 236, 0, "Page controller's delegate doesn't match expected.  %@ != %@", v69, delegateCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v80, v81, v82, v83, v76, v77, v78, v79);
  }

  objc_sync_exit(v5);

  return v19;
}

+ (id)ownedPaginatedPageControllerForDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = qword_280A404E8;
  objc_sync_enter(v5);
  v14 = objc_msgSend_objectForKeyedSubscript_(qword_280A404E8, v6, v10, v11, v12, v13, delegateCopy, v7, v8, v9);
  if (!v14)
  {
    v15 = qword_280A404E0;
    objc_sync_enter(v15);
    v14 = objc_msgSend_objectForKeyedSubscript_(qword_280A404E0, v16, v20, v21, v22, v23, delegateCopy, v17, v18, v19);
    if (!v14)
    {
      v31 = [self alloc];
      v14 = objc_msgSend_initWithDelegate_(v31, v32, v36, v37, v38, v39, delegateCopy, v33, v34, v35);
      objc_msgSend_setObject_forKeyedSubscript_(qword_280A404E0, v40, v43, v44, v45, v46, v14, delegateCopy, v41, v42);
    }

    objc_msgSend_setObject_forKeyedSubscript_(qword_280A404E8, v24, v27, v28, v29, v30, v14, delegateCopy, v25, v26);
    objc_sync_exit(v15);
  }

  objc_sync_exit(v5);

  return v14;
}

+ (id)existingOwnedPaginatedPageControllerForDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = qword_280A404E8;
  objc_sync_enter(v4);
  v13 = objc_msgSend_objectForKeyedSubscript_(qword_280A404E8, v5, v9, v10, v11, v12, delegateCopy, v6, v7, v8);
  objc_sync_exit(v4);

  return v13;
}

+ (void)disownPaginatedPageControllerForDelegate:(id)delegate
{
  delegateCopy = delegate;
  v3 = qword_280A404E8;
  objc_sync_enter(v3);
  v4 = qword_280A404E0;
  objc_sync_enter(v4);
  objc_msgSend_removeObjectForKey_(qword_280A404E8, v5, v9, v10, v11, v12, delegateCopy, v6, v7, v8);
  objc_msgSend_removeObjectForKey_(qword_280A404E0, v13, v17, v18, v19, v20, delegateCopy, v14, v15, v16);
  objc_sync_exit(v4);

  objc_sync_exit(v3);
}

- (TPPaginatedPageController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14 = objc_msgSend_documentRoot(delegateCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v340.receiver = self;
  v340.super_class = TPPaginatedPageController;
  v15 = [(TPPageController *)&v340 initWithDocumentRoot:v14];

  v25 = objc_msgSend_documentRoot(v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  if (objc_msgSend_writingDirection(v25, v26, v31, v32, v33, v34, v27, v28, v29, v30) == 4)
  {
  }

  else
  {
    v52 = objc_msgSend_documentRoot(v15, v35, v40, v41, v42, v43, v36, v37, v38, v39);
    v62 = objc_msgSend_writingDirection(v52, v53, v58, v59, v60, v61, v54, v55, v56, v57);

    if (v62 != 3)
    {
      goto LABEL_5;
    }
  }

  v63 = MEMORY[0x277D81150];
  v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v48, v49, v50, v51, "[TPPaginatedPageController initWithDelegate:]", v45, v46, v47);
  v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v66, v67, v68);
  v83 = objc_msgSend_documentRoot(v15, v74, v79, v80, v81, v82, v75, v76, v77, v78);
  v93 = objc_msgSend_writingDirection(v83, v84, v89, v90, v91, v92, v85, v86, v87, v88);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v94, v95, v96, v97, v98, v64, v73, 277, 0, "Unexpected writing direction %lu. Page layout will probably be wrong.", v93);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v99, v104, v105, v106, v107, v100, v101, v102, v103);
LABEL_5:
  if (v15)
  {
    WeakRetained = objc_loadWeakRetained(v15 + 1);
    objc_storeWeak(v15 + 34, delegateCopy);
    v109 = objc_alloc(MEMORY[0x277D801E0]);
    v110 = objc_opt_class();
    v118 = objc_msgSend_initWithLayoutControllerClass_delegate_(v109, v111, v114, v115, v116, v117, v110, 0, v112, v113);
    objc_opt_class();
    v128 = objc_msgSend_layoutController(v118, v119, v124, v125, v126, v127, v120, v121, v122, v123);
    v129 = TSUDynamicCast();

    if (!v129)
    {
      v138 = MEMORY[0x277D81150];
      v139 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, v134, v135, v136, v137, "[TPPaginatedPageController initWithDelegate:]", v131, v132, v133);
      v148 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, v144, v145, v146, v147, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v141, v142, v143);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v138, v149, v150, v151, v152, v153, v139, v148, 284, 0, "invalid nil value for '%{public}s'", "layoutController");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v154, v159, v160, v161, v162, v155, v156, v157, v158);
    }

    v163 = [TPPageControllerCanvasDelegate alloc];
    v171 = objc_msgSend_initWithDocumentRoot_canvas_(v163, v164, v167, v168, v169, v170, WeakRetained, v118, v165, v166);
    v172 = *(v15 + 13);
    *(v15 + 13) = v171;

    objc_msgSend_setDelegate_(v118, v173, v177, v178, v179, v180, *(v15 + 13), v174, v175, v176);
    v181 = [TPFootnoteLayoutController alloc];
    v190 = objc_msgSend_initWithPaginatedPageController_(v181, v182, v186, v187, v188, v189, v15, v183, v184, v185);
    v191 = *(v15 + 14);
    *(v15 + 14) = v190;

    v192 = objc_alloc(MEMORY[0x277D80E78]);
    v202 = objc_msgSend_bodyStorage(WeakRetained, v193, v198, v199, v200, v201, v194, v195, v196, v197);
    v210 = objc_msgSend_initWithStorage_owner_(v192, v203, v206, v207, v208, v209, v202, v15, v204, v205);
    v211 = *(v15 + 12);
    *(v15 + 12) = v210;

    v212 = objc_alloc_init(_TtC14PagesQuicklook17TPPageLayoutCache);
    v213 = *(v15 + 9);
    *(v15 + 9) = v212;

    v214 = [_TtC14PagesQuicklook17TPPaginationState alloc];
    v224 = objc_msgSend_bodyStorage(WeakRetained, v215, v220, v221, v222, v223, v216, v217, v218, v219);
    v233 = objc_msgSend_initWithBodyStorage_(v214, v225, v229, v230, v231, v232, v224, v226, v227, v228);
    v234 = *(v15 + 10);
    *(v15 + 10) = v233;

    v244 = objc_msgSend_copy(*(v15 + 10), v235, v240, v241, v242, v243, v236, v237, v238, v239);
    v245 = *(v15 + 11);
    *(v15 + 11) = v244;

    v246 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v247 = *(v15 + 16);
    *(v15 + 16) = v246;

    *(v15 + 17) = 1;
    v248 = [TPTextFlowLayoutController alloc];
    v257 = objc_msgSend_initWithPageController_(v248, v249, v253, v254, v255, v256, v15, v250, v251, v252);
    v258 = *(v15 + 24);
    *(v15 + 24) = v257;

    v259 = [TPTextWrapController alloc];
    v268 = objc_msgSend_initWithDocumentRoot_(v259, v260, v264, v265, v266, v267, WeakRetained, v261, v262, v263);
    v269 = *(v15 + 25);
    *(v15 + 25) = v268;

    v279 = objc_msgSend_settings(WeakRetained, v270, v275, v276, v277, v278, v271, v272, v273, v274);

    if (!v279)
    {
      v289 = MEMORY[0x277D81150];
      v290 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v280, v285, v286, v287, v288, "[TPPaginatedPageController initWithDelegate:]", v282, v283, v284);
      v299 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v291, v295, v296, v297, v298, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v292, v293, v294);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v289, v300, v301, v302, v303, v304, v290, v299, 305, 0, "invalid nil value for '%{public}s'", "documentRoot.settings");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v305, v310, v311, v312, v313, v306, v307, v308, v309);
    }

    objc_msgSend_horizontalPageSeparation(v15, v280, v285, v286, v287, v288, v281, v282, v283, v284);
    *(v15 + 26) = v314.n128_u64[0];
    objc_msgSend_verticalPageSeparation(v15, v315, v314, v320, v321, v322, v316, v317, v318, v319);
    *(v15 + 27) = v323;
    *(v15 + 32) = 0x7FFFFFFFFFFFFFFFLL;
    v324 = *MEMORY[0x277D81490];
    *(v15 + 15) = *MEMORY[0x277D81490];
    *(v15 + 36) = -1;
    v333 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v325, v324, v330, v331, v332, v326, v327, v328, v329);
    objc_msgSend_addObserver_selector_name_object_(v333, v334, v335, v336, v337, v338, v15, sel_p_hasBodyChanged_, @"TPHasBodyChanged", WeakRetained);
    *(v15 + 20) = 0x7FFFFFFFFFFFFFFFLL;
    *(v15 + 21) = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v15;
}

- (void)teardown
{
  if (!self->_isTornDown)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v5.n128_u64[0] = 3221225472;
    v11[1] = 3221225472;
    v11[2] = sub_27601580C;
    v11[3] = &unk_27A6A8768;
    v11[4] = self;
    objc_msgSend_accquireLockAndPerformAction_(self, a2, v5, v6, v7, v8, v11, v2, v3, v4);
  }

  v10.receiver = self;
  v10.super_class = TPPaginatedPageController;
  [(TPPageController *)&v10 teardown];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TPPaginatedPageController;
  [(TPPageController *)&v2 dealloc];
}

- (void)restoreFromLayoutState:(id)state
{
  v238 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v233 = 0;
  v234 = &v233;
  v5.n128_u64[0] = 0x2020000000;
  v235 = 0x2020000000;
  v236 = 1;
  if (objc_msgSend_bodyLength(stateCopy, v6, v5, v11, v12, v13, v7, v8, v9, v10) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((v234[3] & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v23 = objc_msgSend_documentRoot(self, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  v33 = objc_msgSend_bodyStorage(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v43 = objc_msgSend_length(v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);

  if (objc_msgSend_bodyLength(stateCopy, v44, v49, v50, v51, v52, v45, v46, v47, v48) != v43)
  {
    v62 = MEMORY[0x277D81150];
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v58, v59, v60, v61, "[TPPaginatedPageController restoreFromLayoutState:]", v55, v56, v57);
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v65, v66, v67);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v73, v74, v75, v76, v77, v63, v72, 448, 0, "Archived layout state is invalid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v83, v84, v85, v86, v79, v80, v81, v82);
  }

  v87 = objc_msgSend_bodyLength(stateCopy, v53, v58, v59, v60, v61, v54, v55, v56, v57);
  *(v234 + 24) = v87 == v43;
  if (v87 == v43)
  {
LABEL_7:
    v88 = objc_msgSend_missingFonts(stateCopy, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    v98 = objc_msgSend_documentRoot(self, v89, v94, v95, v96, v97, v90, v91, v92, v93);
    v108 = objc_msgSend_unavailableDocumentFonts(v98, v99, v104, v105, v106, v107, v100, v101, v102, v103);
    isEqualToSet = objc_msgSend_isEqualToSet_(v88, v109, v113, v114, v115, v116, v108, v110, v111, v112);

    if ((isEqualToSet & 1) == 0)
    {
      *(v234 + 24) = 0;
    }
  }

LABEL_9:
  v118 = objc_msgSend_documentRoot(self, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  v128 = objc_msgSend_delegate(v118, v119, v124, v125, v126, v127, v120, v121, v122, v123);
  v224 = &unk_288546938;
  v129 = TSUProtocolCast();

  if (*(v234 + 24) != 1)
  {
    goto LABEL_23;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (v234[3])
    {
      goto LABEL_12;
    }

LABEL_23:
    v206 = objc_msgSend_documentRoot(self, v130, v135, v136, v137, v138, v131, v132, v133, v134, v224);
    objc_msgSend_invalidateViewState(v206, v215, v220, v221, v222, v223, v216, v217, v218, v219);
    goto LABEL_24;
  }

  hasPersistenceWarningsOfKind = objc_msgSend_hasPersistenceWarningsOfKind_(v129, v130, v135, v136, v137, v138, 0, v132, v133, v134, &unk_288546938);
  *(v234 + 24) = hasPersistenceWarningsOfKind ^ 1;
  if (hasPersistenceWarningsOfKind)
  {
    goto LABEL_23;
  }

LABEL_12:
  v140 = objc_alloc(MEMORY[0x277CBEB18]);
  v150 = objc_msgSend_sectionHints(stateCopy, v141, v146, v147, v148, v149, v142, v143, v144, v145);
  v160 = objc_msgSend_count(v150, v151, v156, v157, v158, v159, v152, v153, v154, v155);
  v169 = objc_msgSend_initWithCapacity_(v140, v161, v165, v166, v167, v168, v160, v162, v163, v164);

  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  v178 = objc_msgSend_sectionHints(stateCopy, v170, 0, v175, v176, v177, v171, v172, v173, v174);
  v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v179, v181, v182, v183, v184, &v229, v237, 16, v180);
  if (v190)
  {
    v195 = *v230;
    do
    {
      for (i = 0; i != v190; ++i)
      {
        if (*v230 != v195)
        {
          objc_enumerationMutation(v178);
        }

        v201 = objc_msgSend_copyForArchiving(*(*(&v229 + 1) + 8 * i), v185, v191, v192, v193, v194, v186, v187, v188, v189, v224);
        if (v201)
        {
          objc_msgSend_addObject_(v169, v197, v202, v203, v204, v205, v201, v198, v199, v200);
        }
      }

      v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v185, v191, v192, v193, v194, &v229, v237, 16, v189);
    }

    while (v190);
  }

  v225[0] = MEMORY[0x277D85DD0];
  v225[1] = 3221225472;
  v225[2] = sub_276015EE0;
  v225[3] = &unk_27A6A9108;
  v225[4] = self;
  v226 = stateCopy;
  v228 = &v233;
  v206 = v169;
  v227 = v206;
  objc_msgSend_accquireLockAndPerformAction_(self, v207, v211, v212, v213, v214, v225, v208, v209, v210);

LABEL_24:
  _Block_object_dispose(&v233, 8);
}

- (void)accquireLockAndPerformAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isTornDown)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v10, v11, v12, v13, "[TPPaginatedPageController accquireLockAndPerformAction:]", v7, v8, v9);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v17, v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v25, v26, v27, v28, v29, v15, v24, 630, 0, "Nil _pageGeneratorStack; page controller shouldn't be called after teardown");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v35, v36, v37, v38, v31, v32, v33, v34);
  }

  v39 = objc_msgSend_documentRoot(selfCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  if (v39)
  {
    isTornDown = selfCopy->_isTornDown;

    if (!isTornDown)
    {
      objc_msgSend_setIsInvalid_(selfCopy->_paginationState, v41, v45, v46, v47, v48, 0, v42, v43, v44);
      objc_msgSend_coalesce(selfCopy->_pageLayoutCache, v49, v54, v55, v56, v57, v50, v51, v52, v53);
      actionCopy[2]();
      if (objc_msgSend_isInvalid(selfCopy->_paginationState, v58, v63, v64, v65, v66, v59, v60, v61, v62))
      {
        v76 = objc_msgSend_copyForCaching(selfCopy->_paginationState, v67, v72, v73, v74, v75, v68, v69, v70, v71);
        cachedPaginationState = selfCopy->_cachedPaginationState;
        selfCopy->_cachedPaginationState = v76;
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)paginateThroughPageIndex:(unint64_t)index forLayoutController:(id)controller
{
  controllerCopy = controller;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276016D54;
  v16[3] = &unk_27A6A84B8;
  v17 = controllerCopy;
  indexCopy = index;
  v16[4] = self;
  v7 = controllerCopy;
  objc_msgSend_accquireLockAndPerformAction_(self, v8, v12, v13, v14, v15, v16, v9, v10, v11);
}

- (void)canvasDidValidateLayouts:(id)layouts
{
  if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v6, v7, v8, v9, layouts, v3, v4, v5))
  {
    self->_bodyLayoutInvalidated = 0;
  }
}

- (id)pageIndexesForSelection:(id)selection forcePagination:(BOOL)pagination outEndIsValid:(BOOL *)valid
{
  selectionCopy = selection;
  v9 = objc_opt_new();
  if (objc_msgSend_isValid(selectionCopy, v10, v15, v16, v17, v18, v11, v12, v13, v14) && (v28 = objc_msgSend_superRange(selectionCopy, v19, v24, v25, v26, v27, v20, v21, v22, v23), v30 = v29, objc_msgSend_documentRoot(self, v29, v35, v36, v37, v38, v31, v32, v33, v34), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend_bodyStorage(v39, v40, v45, v46, v47, v48, v41, v42, v43, v44), v49 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend_length(v49, v50, v55, v56, v57, v58, v51, v52, v53, v54), v49, v39, &v30[v28] > v59))
  {
    v68 = MEMORY[0x277D81150];
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v64, v65, v66, v67, "[TPPaginatedPageController pageIndexesForSelection:forcePagination:outEndIsValid:]", v61, v62, v63);
    v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v71, v72, v73);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v79, v80, v81, v82, v83, v69, v78, 706, 0, "illegal selection past end of storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v84, v89, v90, v91, v92, v85, v86, v87, v88);
  }

  else
  {
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = sub_276016FC0;
    v102[3] = &unk_27A6A9158;
    v103 = selectionCopy;
    selfCopy = self;
    paginationCopy = pagination;
    v105 = v9;
    validCopy = valid;
    objc_msgSend_accquireLockAndPerformAction_(self, v93, v97, v98, v99, v100, v102, v94, v95, v96);
  }

  return v9;
}

- (_NSRange)pageRangeForSelection:(id)selection includingEmptyPages:(BOOL)pages outEndIsValid:(BOOL *)valid
{
  pagesCopy = pages;
  selectionCopy = selection;
  IsValid = *MEMORY[0x277D81510];
  v9 = *(MEMORY[0x277D81510] + 8);
  if (objc_msgSend_isValid(selectionCopy, v10, v15, v16, v17, v18, v11, v12, v13, v14) && (v28 = objc_msgSend_superRange(selectionCopy, v19, v24, v25, v26, v27, v20, v21, v22, v23), v30 = v29, objc_msgSend_documentRoot(self, v29, v35, v36, v37, v38, v31, v32, v33, v34), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend_bodyStorage(v39, v40, v45, v46, v47, v48, v41, v42, v43, v44), v49 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend_length(v49, v50, v55, v56, v57, v58, v51, v52, v53, v54), v49, v39, &v30[v28] > v59))
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v24, v25, v26, v27, "[TPPaginatedPageController pageRangeForSelection:includingEmptyPages:outEndIsValid:]", v21, v22, v23);
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v66, v67, v68, v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v63, v64, v65);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v71, v72, v73, v74, v75, v61, v70, 737, 0, "illegal selection past end of storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v81, v82, v83, v84, v77, v78, v79, v80);
  }

  else if (objc_msgSend_isValid(selectionCopy, v19, v24, v25, v26, v27, v20, v21, v22, v23))
  {
    v94 = objc_msgSend_superRange(selectionCopy, v85, v90, v91, v92, v93, v86, v87, v88, v89);
    v96 = v95;
    v105 = objc_msgSend_caretLFAffinity(selectionCopy, v95, v101, v102, v103, v104, v97, v98, v99, v100);
    v115 = objc_msgSend_leadingCharIndex(selectionCopy, v106, v111, v112, v113, v114, v107, v108, v109, v110);
    IsValid = objc_msgSend_p_pageRangeForRange_forcePagination_includingEmptyPages_caretAffinity_leadingCharIndex_outEndIsValid_(self, v116, v117, v118, v119, v120, v94, v96, 0, pagesCopy, v105, v115, valid);
    v9 = v121;
  }

  v122 = IsValid;
  v123 = v9;
  result.length = v123;
  result.location = v122;
  return result;
}

- (_NSRange)p_pageRangeForRange:(_NSRange)range forcePagination:(BOOL)pagination includingEmptyPages:(BOOL)pages caretAffinity:(int64_t)affinity leadingCharIndex:(unint64_t)index outEndIsValid:(BOOL *)valid
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x4012000000;
  v26 = sub_27601745C;
  v27 = nullsub_2;
  v28 = &unk_2760658C2;
  v11 = *MEMORY[0x277D81510];
  v29 = *MEMORY[0x277D81510];
  if (valid)
  {
    *valid = 0;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v11.n128_u64[0] = 3221225472;
  v16[1] = 3221225472;
  v16[2] = sub_27601746C;
  v16[3] = &unk_27A6A9180;
  rangeCopy = range;
  pagesCopy = pages;
  v16[4] = self;
  v16[5] = &v23;
  indexCopy = index;
  validCopy = valid;
  affinityCopy = affinity;
  paginationCopy = pagination;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v11, v8, v9, v10, v16, range.length, pagination, pages);
  v12 = v24[6];
  v13 = v24[7];
  _Block_object_dispose(&v23, 8);
  v14 = v12;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)validPageRangeForSelection:(id)selection
{
  selectionCopy = selection;
  v22 = 0;
  v23 = &v22;
  v24 = 0x4012000000;
  v25 = sub_27601745C;
  v26 = nullsub_2;
  v27 = &unk_2760658C2;
  v28 = *MEMORY[0x277D81490];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_276017BD8;
  v18[3] = &unk_27A6A91A8;
  v19 = selectionCopy;
  selfCopy = self;
  v21 = &v22;
  v5 = selectionCopy;
  objc_msgSend_accquireLockAndPerformAction_(self, v6, v10, v11, v12, v13, v18, v7, v8, v9);
  v14 = v23[6];
  v15 = v23[7];

  _Block_object_dispose(&v22, 8);
  v16 = v14;
  v17 = v15;
  result.length = v17;
  result.location = v16;
  return result;
}

- (_NSRange)bodyRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4012000000;
  v19 = sub_27601745C;
  v20 = nullsub_2;
  v21 = &unk_2760658C2;
  v22 = *MEMORY[0x277D81490];
  v9.n128_u64[1] = *(&v22 + 1);
  v14[0] = MEMORY[0x277D85DD0];
  v9.n128_u64[0] = 3221225472;
  v14[1] = 3221225472;
  v14[2] = sub_276017DF8;
  v14[3] = &unk_27A6A91D0;
  v14[4] = self;
  v14[5] = &v16;
  v14[6] = index;
  paginationCopy = pagination;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v9, v6, v7, v8, v14, pagination, v4, v5);
  v10 = v17[6];
  v11 = v17[7];
  _Block_object_dispose(&v16, 8);
  v12 = v10;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)anchoredRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4012000000;
  v19 = sub_27601745C;
  v20 = nullsub_2;
  v21 = &unk_2760658C2;
  v22 = *MEMORY[0x277D81490];
  v9.n128_u64[1] = *(&v22 + 1);
  v14[0] = MEMORY[0x277D85DD0];
  v9.n128_u64[0] = 3221225472;
  v14[1] = 3221225472;
  v14[2] = sub_276017F3C;
  v14[3] = &unk_27A6A91D0;
  v14[4] = self;
  v14[5] = &v16;
  v14[6] = index;
  paginationCopy = pagination;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v9, v6, v7, v8, v14, pagination, v4, v5);
  v10 = v17[6];
  v11 = v17[7];
  _Block_object_dispose(&v16, 8);
  v12 = v10;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)anchoredDrawablesOnPageIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v11 = objc_msgSend_anchoredRangeForPageIndex_forcePagination_(self, a2, v6, v7, v8, v9, index, pagination, v4, v5);
  v13 = v12;
  v22 = objc_msgSend_documentRoot(self, v12, v18, v19, v20, v21, v14, v15, v16, v17);
  v32 = objc_msgSend_bodyStorage(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);

  v40 = objc_msgSend_attachmentIndexRangeForTextRange_(v32, v33, v36, v37, v38, v39, v11, v13, v34, v35);
  v42 = v41;
  if (v40 >= v40 + v41)
  {
    v43 = 0;
  }

  else
  {
    v43 = 0;
    do
    {
      objc_opt_class();
      v51 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v32, v44, v47, v48, v49, v50, v40, 0, v45, v46);
      v52 = TSUDynamicCast();

      if (v52 && objc_msgSend_isDrawable(v52, v53, v58, v59, v60, v61, v54, v55, v56, v57) && objc_msgSend_isAnchored(v52, v62, v67, v68, v69, v70, v63, v64, v65, v66) && (objc_msgSend_isPartitioned(v52, v71, v76, v77, v78, v79, v72, v73, v74, v75) & 1) == 0)
      {
        if (v43)
        {
          v89 = objc_msgSend_drawable(v52, v80, v85, v86, v87, v88, v81, v82, v83, v84);
          objc_msgSend_addObject_(v43, v90, v94, v95, v96, v97, v89, v91, v92, v93);
        }

        else
        {
          v98 = MEMORY[0x277CBEB18];
          v89 = objc_msgSend_drawable(v52, v80, v85, v86, v87, v88, v81, v82, v83, v84);
          v43 = objc_msgSend_arrayWithObject_(v98, v99, v103, v104, v105, v106, v89, v100, v101, v102);
        }
      }

      ++v40;
      --v42;
    }

    while (v42);
  }

  return v43;
}

- (_NSRange)footnoteLayoutRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4012000000;
  v19 = sub_27601745C;
  v20 = nullsub_2;
  v21 = &unk_2760658C2;
  v22 = *MEMORY[0x277D81490];
  v9.n128_u64[1] = *(&v22 + 1);
  v14[0] = MEMORY[0x277D85DD0];
  v9.n128_u64[0] = 3221225472;
  v14[1] = 3221225472;
  v14[2] = sub_27601825C;
  v14[3] = &unk_27A6A91D0;
  v14[4] = self;
  v14[5] = &v16;
  v14[6] = index;
  paginationCopy = pagination;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v9, v6, v7, v8, v14, pagination, v4, v5);
  v10 = v17[6];
  v11 = v17[7];
  _Block_object_dispose(&v16, 8);
  v12 = v10;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (BOOL)pageBeginsWithPaginatedAttachment:(unint64_t)attachment
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_27601835C;
  v12[3] = &unk_27A6A91F8;
  v12[5] = &v13;
  v12[6] = attachment;
  v12[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v12, v3, v4, v5);
  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (BOOL)pageEndsWithPaginatedAttachment:(unint64_t)attachment
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_276018550;
  v12[3] = &unk_27A6A91F8;
  v12[5] = &v13;
  v12[6] = attachment;
  v12[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v12, v3, v4, v5);
  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (BOOL)pageAtIndexHasBody:(unint64_t)body
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_276018744;
  v12[3] = &unk_27A6A91F8;
  v12[5] = &v13;
  v12[6] = body;
  v12[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v12, v3, v4, v5);
  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (unint64_t)pageIndexForCharIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v12[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_276018938;
  v12[3] = &unk_27A6A91D0;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = index;
  paginationCopy = pagination;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v12, pagination, v4, v5);
  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (unint64_t)pageIndexForAnchoredCharIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v12[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_276018A48;
  v12[3] = &unk_27A6A91D0;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = index;
  paginationCopy = pagination;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v12, pagination, v4, v5);
  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (unint64_t)pageIndexForAnchoredAttachment:(id)attachment forcePagination:(BOOL)pagination
{
  paginationCopy = pagination;
  attachmentCopy = attachment;
  v16 = attachmentCopy;
  if (attachmentCopy)
  {
    CharIndex = objc_msgSend_findCharIndex(attachmentCopy, v7, v12, v13, v14, v15, v8, v9, v10, v11);
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    if (CharIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = objc_msgSend_pageIndexForAnchoredCharIndex_forcePagination_(self, v17, v21, v22, v23, v24, CharIndex, paginationCopy, v19, v20);
    }
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v25;
}

- (unint64_t)pageIndexForFootnoteIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v12[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_276018BD0;
  v12[3] = &unk_27A6A91D0;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = index;
  paginationCopy = pagination;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v12, pagination, v4, v5);
  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (_NSRange)documentPageRangeOfSectionIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4012000000;
  v19 = sub_27601745C;
  v20 = nullsub_2;
  v21 = &unk_2760658C2;
  v22 = *MEMORY[0x277D81490];
  v9.n128_u64[1] = *(&v22 + 1);
  v14[0] = MEMORY[0x277D85DD0];
  v9.n128_u64[0] = 3221225472;
  v14[1] = 3221225472;
  v14[2] = sub_276018D14;
  v14[3] = &unk_27A6A9220;
  paginationCopy = pagination;
  v14[5] = &v16;
  v14[6] = index;
  v14[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v9, v6, v7, v8, v14, pagination, v4, v5);
  v10 = v17[6];
  v11 = v17[7];
  _Block_object_dispose(&v16, 8);
  v12 = v10;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (unint64_t)sectionIndexForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v12[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_276018F44;
  v12[3] = &unk_27A6A9220;
  v12[5] = &v14;
  v12[6] = index;
  paginationCopy = pagination;
  v12[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v12, pagination, v4, v5);
  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (_NSRange)sectionBodyRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4012000000;
  v18 = sub_27601745C;
  v19 = nullsub_2;
  v20 = &unk_2760658C2;
  v21 = xmmword_27605FD20;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2760190C4;
  v13[3] = &unk_27A6A9220;
  v13[5] = &v15;
  v13[6] = index;
  paginationCopy = pagination;
  v13[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, 0xC0000000uLL, v6, v7, v8, v13, pagination, v4, v5);
  v9 = v16[6];
  v10 = v16[7];
  _Block_object_dispose(&v15, 8);
  v11 = v9;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (unint64_t)sectionPageIndexForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v12[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_276019328;
  v12[3] = &unk_27A6A9220;
  v12[5] = &v14;
  v12[6] = index;
  paginationCopy = pagination;
  v12[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v12, pagination, v4, v5);
  v10 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (_NSRange)sectionPageRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination outEndIsValid:(BOOL *)valid
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4012000000;
  v18 = sub_27601745C;
  v19 = nullsub_2;
  v20 = &unk_2760658C2;
  v21 = xmmword_27605FD20;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2760194AC;
  v13[3] = &unk_27A6A9248;
  paginationCopy = pagination;
  v13[4] = self;
  v13[5] = &v15;
  v13[6] = index;
  v13[7] = valid;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, 0xC0000000uLL, v6, v7, v8, v13, pagination, valid, v5);
  v9 = v16[6];
  v10 = v16[7];
  _Block_object_dispose(&v15, 8);
  v11 = v9;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)pageInfoForPageIndex:(unint64_t)index
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2760196AC;
  v17 = sub_2760196BC;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_2760196C4;
  v12[3] = &unk_27A6A91F8;
  v12[5] = &v13;
  v12[6] = index;
  v12[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v12, v3, v4, v5);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)numberOfPagesInEachSection
{
  v22 = 0;
  v23 = &v22;
  v6.n128_u64[0] = 0x3032000000;
  v24 = 0x3032000000;
  v25 = sub_2760196AC;
  v26 = sub_2760196BC;
  v27 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21[0] = MEMORY[0x277D85DD0];
  v11.n128_u64[0] = 3221225472;
  v21[1] = 3221225472;
  v21[2] = sub_276019954;
  v21[3] = &unk_27A6A9270;
  v21[4] = self;
  v21[5] = &v22;
  objc_msgSend_accquireLockAndPerformAction_(self, v12, v11, v16, v17, v18, v21, v13, v14, v15);
  v19 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v19;
}

- (id)pageIndicesForPartitionableAttachmentAtBodyCharIndex:(unint64_t)index selectionPath:(id)path forcePagination:(BOOL)pagination
{
  pathCopy = path;
  v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_276019C14;
  v23[3] = &unk_27A6A9158;
  v23[4] = self;
  indexCopy = index;
  paginationCopy = pagination;
  v10 = pathCopy;
  v24 = v10;
  v11 = v9;
  v25 = v11;
  objc_msgSend_accquireLockAndPerformAction_(self, v12, v16, v17, v18, v19, v23, v13, v14, v15);
  v20 = v25;
  v21 = v11;

  return v11;
}

- (void)withPageLayoutAtIndex:(unint64_t)index preferredLayoutController:(id)controller executeBlock:(id)block
{
  controllerCopy = controller;
  blockCopy = block;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_27601A1F0;
  v20[3] = &unk_27A6A92B8;
  v20[4] = self;
  v21 = controllerCopy;
  v22 = blockCopy;
  indexCopy = index;
  v10 = blockCopy;
  v11 = controllerCopy;
  objc_msgSend_accquireLockAndPerformAction_(self, v12, v16, v17, v18, v19, v20, v13, v14, v15);
}

- (id)offscreenLayoutController
{
  v10 = objc_msgSend_canvas(self->_offscreenSearchDelegate, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_layoutController(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (BOOL)isPaginationCompleteForSelection:(id)selection inFlow:(id)flow
{
  selectionCopy = selection;
  flowCopy = flow;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_27601AA24;
  v19[3] = &unk_27A6A92E0;
  v19[4] = self;
  v20 = flowCopy;
  v21 = selectionCopy;
  v22 = &v23;
  v8 = selectionCopy;
  v9 = flowCopy;
  objc_msgSend_accquireLockAndPerformAction_(self, v10, v14, v15, v16, v17, v19, v11, v12, v13);
  LOBYTE(self) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return self;
}

- (BOOL)isPaginationComplete
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v11[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v11[1] = 3221225472;
  v11[2] = sub_27601AB74;
  v11[3] = &unk_27A6A9308;
  v11[4] = self;
  v11[5] = &v12;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v5, v6, v7, v8, v11, v2, v3, v4);
  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (BOOL)isPaginationInProgress
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v11[1] = 3221225472;
  v11[2] = sub_27601AC64;
  v11[3] = &unk_27A6A9308;
  v11[4] = self;
  v11[5] = &v12;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v5, v6, v7, v8, v11, v2, v3, v4);
  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (id)footnoteLayoutController
{
  footnoteLayoutController = self->_footnoteLayoutController;
  if (!footnoteLayoutController)
  {
    v4 = [TPFootnoteLayoutController alloc];
    v13 = objc_msgSend_initWithPaginatedPageController_(v4, v5, v9, v10, v11, v12, self, v6, v7, v8);
    v14 = self->_footnoteLayoutController;
    self->_footnoteLayoutController = v13;

    footnoteLayoutController = self->_footnoteLayoutController;
  }

  return footnoteLayoutController;
}

- (BOOL)p_canAnchorDrawable:(id)drawable toPageLayout:(id)layout
{
  v280 = *MEMORY[0x277D85DE8];
  drawableCopy = drawable;
  layoutCopy = layout;
  v17 = objc_msgSend_bodyLayout(layoutCopy, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v269 = v17;
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), TSUDynamicCast(), v27 = objc_claimAutoreleasedReturnValue(), (v28 = v27) != 0) && (v29 = objc_msgSend_containsDisallowedElementKind_(v27, v18, v23, v24, v25, v26, 4, v20, v21, v22), v28, v29))
    {
      if (objc_msgSend_textIsVertical(v17, v18, v23, v24, v25, v26, v19, v20, v21, v22))
      {
        LOBYTE(v17) = 0;
        goto LABEL_49;
      }
    }

    v30 = objc_msgSend_columns(v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    v268 = v30;
    if (!v30 || !objc_msgSend_count(v30, v31, v36, v37, v38, v39, v32, v33, v34, v35))
    {
      LOBYTE(v17) = 0;
LABEL_48:

      goto LABEL_49;
    }

    v49 = objc_msgSend_firstObject(v268, v40, v45, v46, v47, v48, v41, v42, v43, v44);
    v58 = objc_msgSend_singleLinePartitionedInfoAtStart_(v49, v50, v54, v55, v56, v57, 1, v51, v52, v53);

    v267 = v58;
    if (v58)
    {
      v68 = objc_msgSend_lastObject(v268, v59, v64, v65, v66, v67, v60, v61, v62, v63);
      v77 = objc_msgSend_singleLinePartitionedInfoAtStart_(v68, v69, v73, v74, v75, v76, 0, v70, v71, v72);

      if (v77 == v58)
      {
        LOBYTE(v17) = 0;
        goto LABEL_47;
      }
    }

    v276 = 0u;
    v277 = 0u;
    v274 = 0u;
    v275 = 0u;
    v78 = v268;
    v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v79, v81, v82, v83, v84, &v274, v279, 16, v80);
    if (v90)
    {
      v265 = layoutCopy;
      v95 = 0;
      v96 = 0;
      v97 = *v275;
      while (2)
      {
        for (i = 0; i != v90; ++i)
        {
          if (*v275 != v97)
          {
            objc_enumerationMutation(v78);
          }

          v99 = *(*(&v274 + 1) + 8 * i);
          v96 |= objc_msgSend_onlyHasPartitionedAttachments(v99, v85, v91, v92, v93, v94, v86, v87, v88, v89);
          if (objc_msgSend_lineCount(v99, v100, v105, v106, v107, v108, v101, v102, v103, v104))
          {
            v95 = 1;
            if ((objc_msgSend_onlyHasAnchoredDrawable(v99, v85, v91, v92, v93, v94, v86, v87, v88, v89) & 1) == 0)
            {
              v109 = 0;
              goto LABEL_23;
            }
          }
        }

        v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v85, v91, v92, v93, v94, &v274, v279, 16, v89);
        if (v90)
        {
          continue;
        }

        break;
      }

      v109 = 1;
LABEL_23:
      layoutCopy = v265;
    }

    else
    {
      v95 = 0;
      LOBYTE(v96) = 0;
      v109 = 1;
    }

    v119 = objc_msgSend_documentRoot(self, v110, v115, v116, v117, v118, v111, v112, v113, v114);
    v129 = v119;
    if (v96)
    {
      goto LABEL_26;
    }

    if (v95)
    {
      if ((v109 & 1) == 0)
      {
        v264 = v119;
        v266 = layoutCopy;
        v263 = drawableCopy;
        v131 = *MEMORY[0x277D81490];
        v130 = *(MEMORY[0x277D81490] + 8);
        v270 = 0u;
        v271 = 0u;
        v272 = 0u;
        v273 = 0u;
        v132 = v78;
        v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v133, v135, v136, v137, v138, &v270, v278, 16, v134);
        if (!v144)
        {

          drawableCopy = v263;
          goto LABEL_55;
        }

        v149 = *v271;
        location = v131;
        length = v130;
        do
        {
          for (j = 0; j != v144; ++j)
          {
            if (*v271 != v149)
            {
              objc_enumerationMutation(v132);
            }

            v153 = *(*(&v270 + 1) + 8 * j);
            if (location == 0x7FFFFFFFFFFFFFFFLL)
            {
              location = objc_msgSend_anchoredRange(*(*(&v270 + 1) + 8 * j), v139, v145, v146, v147, v148, v140, v141, v142, v143);
              length = v154;
              v163 = objc_msgSend_range(v153, v154, v159, v160, v161, v162, v155, v156, v157, v158);
            }

            else
            {
              v283.location = objc_msgSend_anchoredRange(*(*(&v270 + 1) + 8 * j), v139, v145, v146, v147, v148, v140, v141, v142, v143);
              v283.length = v164;
              v281.location = location;
              v281.length = length;
              v165 = NSUnionRange(v281, v283);
              location = v165.location;
              length = v165.length;
              v284.location = objc_msgSend_range(v153, v165.length, v170, v171, v172, v173, v166, v167, v168, v169);
              v284.length = v174;
              v282.location = v131;
              v282.length = v130;
              v175 = NSUnionRange(v282, v284);
              v139 = v175.length;
              v163 = v175.location;
            }

            v131 = v163;
            v130 = v139;
          }

          v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v139, v145, v146, v147, v148, &v270, v278, 16, v143);
        }

        while (v144);

        drawableCopy = v263;
        layoutCopy = v266;
        if (location <= v131 || location < v131 + v130)
        {
LABEL_55:
          v233 = objc_msgSend_sectionTemplatePageOwningInfo_(v264, v176, v180, v181, v182, v183, drawableCopy, v177, v178, v179, v263);
          LODWORD(v17) = v233 == 0;

          if (v17)
          {
            v129 = v264;
            if (objc_msgSend_elementKind(drawableCopy, v234, v239, v240, v241, v242, v235, v236, v237, v238) != 4)
            {
              LOBYTE(v17) = 1;
              goto LABEL_27;
            }

            v252 = objc_msgSend_bodyLayout(layoutCopy, v243, v248, v249, v250, v251, v244, v245, v246, v247);
            IsVertical = objc_msgSend_textIsVertical(v252, v253, v258, v259, v260, v261, v254, v255, v256, v257);

            LOBYTE(v17) = IsVertical ^ 1;
          }

          goto LABEL_60;
        }

        LOBYTE(v17) = 0;
LABEL_60:
        v129 = v264;
        goto LABEL_27;
      }
    }

    else if (drawableCopy && objc_msgSend_elementKind(drawableCopy, v120, v125, v126, v127, v128, v121, v122, v123, v124) == 4)
    {
      v264 = v129;
      v195 = objc_msgSend_floatingDrawables(v129, v186, v191, v192, v193, v194, v187, v188, v189, v190);
      v205 = objc_msgSend_pageIndex(layoutCopy, v196, v201, v202, v203, v204, v197, v198, v199, v200);
      v214 = objc_msgSend_drawablesOnPageIndex_(v195, v206, v210, v211, v212, v213, v205, v207, v208, v209);

      if (objc_msgSend_count(v214, v215, v220, v221, v222, v223, v216, v217, v218, v219) == 1)
      {
        v232 = objc_msgSend_member_(v214, v224, v228, v229, v230, v231, drawableCopy, v225, v226, v227);
        LOBYTE(v17) = v232 != 0;
      }

      else
      {
        LOBYTE(v17) = 0;
      }

      goto LABEL_60;
    }

LABEL_26:
    LOBYTE(v17) = 0;
LABEL_27:

LABEL_47:
    goto LABEL_48;
  }

LABEL_49:

  return v17 & 1;
}

- (BOOL)okToAnchorDrawable:(id)drawable toPageIndex:(unint64_t)index
{
  indexCopy = index;
  v12 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], a2, v6, v7, v8, v9, drawable, index, v4, v5);
  LOBYTE(indexCopy) = objc_msgSend_okToAnchorDrawables_toPageIndex_(self, v13, v16, v17, v18, v19, v12, indexCopy, v14, v15);

  return indexCopy;
}

- (BOOL)okToAnchorDrawables:(id)drawables toPageIndex:(unint64_t)index
{
  drawablesCopy = drawables;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_27601B464;
  v17[3] = &unk_27A6A9358;
  v17[4] = self;
  v18 = drawablesCopy;
  v19 = &v21;
  indexCopy = index;
  v7 = drawablesCopy;
  objc_msgSend_accquireLockAndPerformAction_(self, v8, v12, v13, v14, v15, v17, v9, v10, v11);
  LOBYTE(self) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return self;
}

- (void)addPaginationObserver:(id)observer
{
  observerCopy = observer;
  v13 = observerCopy;
  if (observerCopy)
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_27601B928;
    v47[3] = &unk_27A6A8418;
    v47[4] = self;
    v48 = observerCopy;
    objc_msgSend_accquireLockAndPerformAction_(self, v14, v18, v19, v20, v21, v47, v15, v16, v17);
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v9, v10, v11, v12, "[TPPaginatedPageController addPaginationObserver:]", v6, v7, v8);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v25, v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v33, v34, v35, v36, v37, v23, v32, 1571, 0, "invalid nil value for '%{public}s'", "observer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v43, v44, v45, v46, v39, v40, v41, v42);
  }
}

- (void)removePaginationObserver:(id)observer
{
  observerCopy = observer;
  v13 = observerCopy;
  if (observerCopy)
  {
    if (self->_layoutObservers)
    {
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = sub_27601BBA8;
      v72[3] = &unk_27A6A8418;
      v72[4] = self;
      v73 = observerCopy;
      objc_msgSend_accquireLockAndPerformAction_(self, v14, v18, v19, v20, v21, v72, v15, v16, v17);

      goto LABEL_7;
    }
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v9, v10, v11, v12, "[TPPaginatedPageController removePaginationObserver:]", v6, v7, v8);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v25, v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v33, v34, v35, v36, v37, v23, v32, 1584, 0, "invalid nil value for '%{public}s'", "observer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v43, v44, v45, v46, v39, v40, v41, v42);
    if (self->_layoutObservers)
    {
      goto LABEL_7;
    }
  }

  if (!self->_isTornDown)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v9, v10, v11, v12, "[TPPaginatedPageController removePaginationObserver:]", v6, v7, v8);
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v50, v51, v52);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v58, v59, v60, v61, v62, v48, v57, 1592, 0, "_layoutObservers shouldn't be nil unless the page controller has been torn down");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v68, v69, v70, v71, v64, v65, v66, v67);
  }

LABEL_7:
}

- (void)layoutManagerNeedsLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_bodyLayoutManager != layoutCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v9, v10, v11, v12, "[TPPaginatedPageController layoutManagerNeedsLayout:]", v6, v7, v8);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v16, v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v24, v25, v26, v27, v28, v14, v23, 1983, 0, "bad layout manager");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v34, v35, v36, v37, v30, v31, v32, v33);
  }

  self->_layoutInvalidationPending = 0;
  objc_msgSend_p_processBodyLayoutInvalidation(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
}

- (void)p_processBodyLayoutInvalidation
{
  v9[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_27601BD48;
  v9[3] = &unk_27A6A8768;
  v9[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v5, v6, v7, v8, v9, v2, v3, v4);
}

- (id)topicNumbersForStorage:(id)storage
{
  storageCopy = storage;
  v14 = objc_msgSend_documentRoot(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v29 = objc_msgSend_bodyStorage(v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  if (v29 == storageCopy)
  {
    v34 = objc_msgSend_bodyTopicNumbers(self, v24, v30, v31, v32, v33, v25, v26, v27, v28);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (void)layoutManager:(id)manager didClearDirtyRangeWithDelta:(int64_t)delta afterCharIndex:(unint64_t)index
{
  if ((objc_msgSend_isPaginating(self, a2, v6, v7, v8, v9, manager, delta, index, v5) & 1) == 0)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v18, v19, v20, v21, "[TPPaginatedPageController layoutManager:didClearDirtyRangeWithDelta:afterCharIndex:]", v15, v16, v17);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v25, v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v33, v34, v35, v36, v37, v23, v32, 2125, 0, "should only clear dirty range during layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v43, v44, v45, v46, v39, v40, v41, v42);
  }

  if (delta)
  {
    v47 = objc_msgSend_sectionHints(self->_paginationState, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    v57 = objc_msgSend_documentPageIndex(self->_paginationState, v48, v53, v54, v55, v56, v49, v50, v51, v52);
    sub_275FFD28C(v94, v47, v57 + 1);

    while (1)
    {
      v67 = sub_275FFD320(v94, v58, v59, v60, v61, v62, v63, v64, v65, v66);

      if (!v67)
      {
        break;
      }

      if (sub_275FFD3B8(v94, v68, v69, v70, v71, v72, v73, v74, v75, v76) != 5)
      {
        v86 = sub_275FFD320(v94, v77, v78, v79, v80, v81, v82, v83, v84, v85);
        objc_msgSend_offsetStartCharIndexBy_charIndex_(v86, v87, v90, v91, v92, v93, delta, index, v88, v89);
      }

      sub_275FFCF2C(v94, v77, v78, v79, v80, v81, v82, v83, v84, v85);
    }

    sub_275FFD2D0(v94);
  }
}

- (id)metricsCacheForStorage:(id)storage
{
  storageCopy = storage;
  v14 = objc_msgSend_documentRoot(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v29 = objc_msgSend_bodyStorage(v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  if (v29 != storageCopy)
  {
    goto LABEL_4;
  }

  v34 = objc_msgSend_documentRoot(self, v24, v30, v31, v32, v33, v25, v26, v27, v28);
  if (objc_msgSend_isDocumentCurrentlyImporting(v34, v35, v40, v41, v42, v43, v36, v37, v38, v39))
  {

LABEL_4:
LABEL_5:
    v53 = 0;
    goto LABEL_6;
  }

  v55 = objc_msgSend_allowParagraphMetrics(self, v44, v49, v50, v51, v52, v45, v46, v47, v48);

  if (!v55)
  {
    goto LABEL_5;
  }

  v53 = self->_bodyLayoutMetricsCache;
LABEL_6:

  return v53;
}

- (BOOL)isPageLayoutRightToLeft
{
  v11 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (objc_msgSend_writingDirection(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16) == 2)
  {
    v30 = 1;
  }

  else
  {
    v31 = objc_msgSend_documentRoot(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v30 = objc_msgSend_laysOutBodyVertically(v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);
  }

  return v30;
}

- (CGPoint)pageOriginForPageIndex:(unint64_t)index allowAfterPaginationPoint:(BOOL)point
{
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, point, v4, v5);
  objc_msgSend_pageSize(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v23 = v22;
  v25 = v24;

  v35 = objc_msgSend_delegate(self, v26, v31, v32, v33, v34, v27, v28, v29, v30);
  v45 = objc_msgSend_pageViewState(v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);

  if (v45 == 1)
  {
    v125 = 0;
    v126 = &v125;
    v127 = 0x2020000000;
    v128 = 0x7FFFFFFFFFFFFFFFLL;
    v121 = 0;
    v122 = &v121;
    v123 = 0x2020000000;
    v124 = 0x7FFFFFFFFFFFFFFFLL;
    v46 = self->_cachedPaginationState;
    if (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(v46, v47, v51, v52, v53, v54, index, v48, v49, v50))
    {
      v64 = objc_msgSend_pageHintForPageIndex_(v46, v55, v60, v61, v62, v63, index, v57, v58, v59);
      v74 = v64;
      if (v64)
      {
        v75 = objc_msgSend_pageColumn(v64, v65, v70, v71, v72, v73, v66, v67, v68, v69);
        v126[3] = v75;
        v85 = objc_msgSend_pageRow(v74, v76, v81, v82, v83, v84, v77, v78, v79, v80);
        v122[3] = v85;
      }

      else
      {
        v89 = MEMORY[0x277D81150];
        v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v70, v71, v72, v73, "[TPPaginatedPageController pageOriginForPageIndex:allowAfterPaginationPoint:]", v67, v68, v69);
        v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, v95, v96, v97, v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v92, v93, v94);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v100, v101, v102, v103, v104, v90, v99, 2170, 0, "invalid nil value for '%{public}s'", "pageHint");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v110, v111, v112, v113, v106, v107, v108, v109);
      }
    }

    else if (index)
    {
      v120[0] = MEMORY[0x277D85DD0];
      v60.n128_u64[0] = 3221225472;
      v120[1] = 3221225472;
      v120[2] = sub_27601CB8C;
      v120[3] = &unk_27A6A9380;
      v120[4] = self;
      v120[5] = &v125;
      v120[6] = &v121;
      v120[7] = index;
      objc_msgSend_accquireLockAndPerformAction_(self, v55, v60, v61, v62, v63, v120, v57, v58, v59);
    }

    else
    {
      PageColumn = objc_msgSend_p_firstPageColumn(self, v55, v60, v61, v62, v63, v56, v57, v58, v59);
      v126[3] = PageColumn;
      v122[3] = 0;
    }

    v114 = v126;
    v115 = v126[3];
    v116 = v122;
    if (v115 == 0x7FFFFFFFFFFFFFFFLL || (v117 = v122[3], v117 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v117 = 0;
      v126[3] = 0;
      v116[3] = 0;
      v115 = v114[3];
    }

    v87 = (v23 + self->_horizontalGapBetweenPages) * v115;
    v86 = (v25 + self->_verticalGapBetweenPages) * v117;

    _Block_object_dispose(&v121, 8);
    _Block_object_dispose(&v125, 8);
  }

  else
  {
    v86 = (v25 + self->_verticalGapBetweenPages) * index;
    v87 = 0.0;
  }

  v118 = v87;
  v119 = v86;
  result.y = v119;
  result.x = v118;
  return result;
}

- (CGRect)pageRectForPageIndex:(unint64_t)index allowAfterPaginationPoint:(BOOL)point
{
  objc_msgSend_pageOriginForPageIndex_allowAfterPaginationPoint_(self, a2, v6, v7, v8, v9, index, point, v4, v5);
  v12 = v11.n128_u64[0];
  v14 = v13.n128_u64[0];
  v22 = objc_msgSend_documentRoot(self, v15, v11, v13, v20, v21, v16, v17, v18, v19);
  objc_msgSend_pageSize(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  v33 = v32;
  v35 = v34;

  v36 = *&v12;
  v37 = *&v14;
  v38 = v33;
  v39 = v35;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (unint64_t)pageIndexFromCanvasPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  result = objc_msgSend_pageCount(self, a2, point, *&point.y, v7, v8, v3, v4, v5, v6);
  if (result)
  {
    v22 = result;
    v18.n128_f64[0] = x;
    v19.n128_f64[0] = y;
    result = objc_msgSend_calculatePageIndexFromCanvasPoint_(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    if (result >= v22 - 1)
    {
      return v22 - 1;
    }
  }

  return result;
}

- (int64_t)pageKindForPageIndex:(unint64_t)index
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_27601CF18;
  v12[3] = &unk_27A6A93A8;
  v12[4] = self;
  v12[5] = &v13;
  v12[6] = index;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v12, v3, v4, v5);
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (unint64_t)calculatePageIndexFromCanvasPoint:(CGPoint)point
{
  v7.n128_u64[0] = 0;
  if (point.x >= 0.0)
  {
    x = point.x;
  }

  else
  {
    x = 0.0;
  }

  if (point.y >= 0.0)
  {
    y = point.y;
  }

  else
  {
    y = 0.0;
  }

  v12 = objc_msgSend_documentRoot(self, a2, point, *&point.y, v7, v8, v3, v4, v5, v6);
  objc_msgSend_pageSize(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v23 = v22;
  v25 = v24;

  v35 = objc_msgSend_delegate(self, v26, v31, v32, v33, v34, v27, v28, v29, v30);
  v45 = objc_msgSend_pageViewState(v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);

  if (v45 == 1)
  {
    v55 = objc_msgSend_documentRoot(self, v46, v51, v52, v53, v54, v47, v48, v49, v50);
    v65 = objc_msgSend_settings(v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);
    hasFacingPages = objc_msgSend_hasFacingPages(v65, v66, v71, v72, v73, v74, v67, v68, v69, v70);

    objc_msgSend_horizontalPageSeparation(self, v76, v81, v82, v83, v84, v77, v78, v79, v80);
    v86 = v85.n128_f64[0];
    objc_msgSend_verticalPageSeparation(self, v87, v85, v92, v93, v94, v88, v89, v90, v91);
    v102.n128_f64[0] = y + v103.n128_f64[0] * 0.5;
    v103.n128_f64[0] = v102.n128_f64[0] / (v25 + v103.n128_f64[0]);
    v104 = v103.n128_f64[0];
    if (v103.n128_f64[0] < 0)
    {
      v105 = MEMORY[0x277D81150];
      v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v103, v102, v100, v101, "[TPPaginatedPageController calculatePageIndexFromCanvasPoint:]", v97, v98, v99);
      v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, v111, v112, v113, v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v108, v109, v110);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v105, v116, v117, v118, v119, v120, v106, v115, 2277, 0, "CanvasPointPageRow must be non-negative (cast later to NSUInteger)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v121, v126, v127, v128, v129, v122, v123, v124, v125);
    }

    v103.n128_f64[0] = v86 * 0.5;
    v130 = v23 + v86;
    v131 = objc_msgSend_pageCount(self, v95, v103, v102, v100, v101, v96, v97, v98, v99);
    v141 = (v131 - 1) >> 1;
    if (v141 >= v104)
    {
      v141 = v104;
    }

    v142 = (v131 + 1) >> 1;
    if (v142 >= v104)
    {
      v142 = v104;
    }

    v143 = v131 - 1;
    if (hasFacingPages)
    {
      v144 = v142;
    }

    else
    {
      v144 = v141;
    }

    v145 = (x + v86 * 0.5 >= v130) ^ objc_msgSend_isPageLayoutRightToLeft(self, v132, v137, v138, v139, v140, v133, v134, v135, v136) | (2 * v144);
    if (v145)
    {
      v146 = hasFacingPages;
    }

    else
    {
      v146 = 0;
    }

    v147 = v145 - v146;
    if (v147 >= v143)
    {
      return v143;
    }

    else
    {
      return v147;
    }
  }

  else
  {
    v51.n128_f64[0] = y / (v25 + self->_verticalGapBetweenPages);
    v149 = v51.n128_f64[0];
    if (v51.n128_f64[0] < 0)
    {
      v150 = MEMORY[0x277D81150];
      v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v51, v52, v53, v54, "[TPPaginatedPageController calculatePageIndexFromCanvasPoint:]", v48, v49, v50);
      v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, v156, v157, v158, v159, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v153, v154, v155);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v161, v162, v163, v164, v165, v151, v160, 2299, 0, "CanvasPointPageGap must be greater than or equal to zero (cast later to NSUInteger)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v166, v171, v172, v173, v174, v167, v168, v169, v170);
    }

    return v149;
  }
}

- (unint64_t)pageHeightCountForPageViewState:(int64_t)state
{
  v14 = 0;
  v15 = &v14;
  v6.n128_u64[0] = 0x2020000000;
  v16 = 0x2020000000;
  v17 = 0;
  if (state == 1)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v6.n128_u64[0] = 3221225472;
    v13[1] = 3221225472;
    v13[2] = sub_27601D310;
    v13[3] = &unk_27A6A9270;
    v13[4] = self;
    v13[5] = &v14;
    objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v13, v3, v4, v5);
    v10 = v15[3];
  }

  else
  {
    v11 = objc_msgSend_pageCount(self, a2, v6, v7, v8, v9, state, v3, v4, v5);
    if (v11 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v11;
    }

    v15[3] = v10;
  }

  _Block_object_dispose(&v14, 8);
  return v10;
}

- (CGSize)canvasSizeToFitAllPagesForPageViewState:(int64_t)state
{
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, state, v3, v4, v5);
  objc_msgSend_pageSize(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v23 = v22;
  v25 = v24;

  if (state == 1)
  {
    v30.n128_u64[0] = *&self->_horizontalGapBetweenPages;
    v31.n128_u64[0] = 2.0;
    v23 = v30.n128_f64[0] + v23 * 2.0;
  }

  v34 = objc_msgSend_pageHeightCountForPageViewState_(self, v26, v30, v31, v32, v33, state, v27, v28, v29);
  v35 = v34;
  v36 = self->_verticalGapBetweenPages * (v34 - 1);
  if ((atomic_load_explicit(byte_280A404F0, memory_order_acquire) & 1) == 0)
  {
    v39 = v36;
    v40 = v34;
    sub_276038454();
    v36 = v39;
    v35 = v40;
  }

  v37 = v36 + v25 * v35;
  if (*&qword_280A404F8 != v23 || *&qword_280A40500 != v37)
  {
    qword_280A404F8 = *&v23;
    qword_280A40500 = *&v37;
  }

  v38 = v23;
  result.height = v37;
  result.width = v38;
  return result;
}

- (void)changeTrackingVisibilityDidChange
{
  v12.receiver = self;
  v12.super_class = TPPaginatedPageController;
  [(TPPageController *)&v12 changeTrackingVisibilityDidChange];
  objc_msgSend_invalidateAllPageLayoutsSizeAndPosition(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
}

- (void)invalidateAllPageLayoutsSizeAndPosition
{
  v9[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_27601D694;
  v9[3] = &unk_27A6A8768;
  v9[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v5, v6, v7, v8, v9, v2, v3, v4);
}

- (double)verticalPageSeparation
{
  v10 = objc_msgSend_delegate(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v25 = objc_msgSend_documentRoot(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  if (!v25)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v26, v27, v28, v29, "[TPPaginatedPageController verticalPageSeparation]", v22, v23, v24);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v33, v34, v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v41, v42, v43, v44, v45, v31, v40, 2396, 0, "invalid nil value for '%{public}s'", "docRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v51, v52, v53, v54, v47, v48, v49, v50);
  }

  v55 = objc_msgSend_settings(v25, v20, v26, v27, v28, v29, v21, v22, v23, v24);
  v74 = 12.0;
  if ((objc_msgSend_hasFacingPages(v55, v56, v61, v62, v63, v64, v57, v58, v59, v60) & 1) == 0 && objc_msgSend_pageViewState(v10, v65, v70, v71, v72, v73, v66, v67, v68, v69) != 1)
  {
    v84 = objc_msgSend_settings(v25, v75, v80, v81, v82, v83, v76, v77, v78, v79);
    if (objc_msgSend_hasBody(v84, v85, v90, v91, v92, v93, v86, v87, v88, v89))
    {
      v74 = 0.0;
    }

    else
    {
      v74 = 12.0;
    }
  }

  return v74;
}

- (unint64_t)adjacentPageIndexForPageIndex:(unint64_t)index
{
  v12 = objc_msgSend_delegate(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  v22 = objc_msgSend_pageViewState(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);

  v23 = 0x7FFFFFFFFFFFFFFFLL;
  if (v22 == 1)
  {
    v104 = 0;
    v105 = &v104;
    v106 = 0x2020000000;
    v107 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = self->_cachedPaginationState;
    if (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(v24, v25, v29, v30, v31, v32, index, v26, v27, v28))
    {
      v42 = objc_msgSend_pageHintForPageIndex_(v24, v33, v38, v39, v40, v41, index, v35, v36, v37);
      v52 = v42;
      if (v42)
      {
        v53 = objc_msgSend_pageColumn(v42, v43, v48, v49, v50, v51, v44, v45, v46, v47);
        v105[3] = v53;
      }

      else
      {
        v64 = MEMORY[0x277D81150];
        v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v48, v49, v50, v51, "[TPPaginatedPageController adjacentPageIndexForPageIndex:]", v45, v46, v47);
        v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v67, v68, v69);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v75, v76, v77, v78, v79, v65, v74, 2412, 0, "invalid nil value for '%{public}s'", "pageHint");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v85, v86, v87, v88, v81, v82, v83, v84);
      }
    }

    else if (index)
    {
      v103[0] = MEMORY[0x277D85DD0];
      v38.n128_u64[0] = 3221225472;
      v103[1] = 3221225472;
      v103[2] = sub_27601DBF4;
      v103[3] = &unk_27A6A91F8;
      v103[4] = self;
      v103[5] = &v104;
      v103[6] = index;
      objc_msgSend_accquireLockAndPerformAction_(self, v33, v38, v39, v40, v41, v103, v35, v36, v37);
    }

    else
    {
      PageColumn = objc_msgSend_p_firstPageColumn(self, v33, v38, v39, v40, v41, v34, v35, v36, v37);
      v105[3] = PageColumn;
    }

    v23 = 0x7FFFFFFFFFFFFFFFLL;
    if (v105[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v89 = objc_msgSend_documentPageIndex(self->_paginationState, v54, v59, v60, v61, v62, v55, v56, v57, v58);
      isPageLayoutRightToLeft = objc_msgSend_isPageLayoutRightToLeft(self, v90, v95, v96, v97, v98, v91, v92, v93, v94);
      v100 = v105[3];
      if (index || (v101 = v100 == isPageLayoutRightToLeft, v100 = isPageLayoutRightToLeft, v101))
      {
        if (v100 != isPageLayoutRightToLeft || (v23 = index + 1, index + 1 >= v89))
        {
          if (index != 0 && v100 != isPageLayoutRightToLeft)
          {
            v23 = index - 1;
          }

          else
          {
            v23 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }
      }
    }

    _Block_object_dispose(&v104, 8);
  }

  return v23;
}

- (void)i_rebuildCachedLayoutChildrenFromStartPage:(unint64_t)page toEndPage:(unint64_t)endPage setNeedsLayout:(BOOL)layout
{
  layoutCopy = layout;
  v55 = *MEMORY[0x277D85DE8];
  objc_msgSend_pageLayoutsFromStartIndex_toEndIndex_(self->_pageLayoutCache, a2, v6, v7, v8, v9, page, endPage, layout, v5);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v12 = v51 = 0u;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v15, v16, v17, v18, &v50, v54, 16, v14);
  if (v24)
  {
    v29 = *v51;
    do
    {
      v30 = 0;
      do
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(v12);
        }

        v31 = *(*(&v50 + 1) + 8 * v30);
        if (layoutCopy)
        {
          v32 = objc_msgSend_pageIndex(*(*(&v50 + 1) + 8 * v30), v19, v25, v26, v27, v28, v20, v21, v22, v23, v50);
          objc_msgSend_p_setNeedsLayoutOnPageIndex_(self, v33, v37, v38, v39, v40, v32, v34, v35, v36);
        }

        objc_msgSend_rebuildChildLayoutsOnNextValidationForcingTextLayoutOnTopLevelObjects_(v31, v19, v25, v26, v27, v28, layoutCopy, v21, v22, v23, v50);
        objc_msgSend_invalidate(v31, v41, v46, v47, v48, v49, v42, v43, v44, v45);
        ++v30;
      }

      while (v24 != v30);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v19, v25, v26, v27, v28, &v50, v54, 16, v23);
    }

    while (v24);
  }
}

- (void)p_performWithCachedPageLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v14 = objc_msgSend_pageLayouts(self->_pageLayoutCache, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_27601DF98;
  v24[3] = &unk_27A6A93D0;
  v15 = layoutsCopy;
  v25 = v15;
  objc_msgSend_enumerateObjectsUsingBlock_(v14, v16, v20, v21, v22, v23, v24, v17, v18, v19);
}

- (void)p_rebuildPageLayoutsContainingDrawableUUIDs:(id)ds
{
  dsCopy = ds;
  if (objc_msgSend_count(dsCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9))
  {
    v14 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_27601E198;
    v33[3] = &unk_27A6A93F8;
    v34 = dsCopy;
    v15 = v14;
    v35 = v15;
    objc_msgSend_p_performWithCachedPageLayouts_(self, v16, v20, v21, v22, v23, v33, v17, v18, v19);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_27601E408;
    v32[3] = &unk_27A6A8558;
    v32[4] = self;
    objc_msgSend_enumerateIndexesUsingBlock_(v15, v24, v28, v29, v30, v31, v32, v25, v26, v27);
  }
}

- (_NSRange)p_pageRangeAffectedByInfo:(id)info
{
  v265 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = *MEMORY[0x277D81490];
  v6 = *(MEMORY[0x277D81490] + 8);
  v259 = infoCopy;
  objc_opt_class();
  v16 = objc_msgSend_owningAttachment(infoCopy, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v17 = TSUDynamicCast();
  v27 = objc_msgSend_topLevelAttachment(v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);

  v37 = objc_msgSend_documentRoot(self, v28, v33, v34, v35, v36, v29, v30, v31, v32);
  v47 = objc_msgSend_bodyStorage(v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);

  objc_opt_class();
  v48 = TSUDynamicCast();
  v58 = v48;
  if (v48)
  {
    CharIndex = objc_msgSend_findCharIndex(v48, v49, v54, v55, v56, v57, v50, v51, v52, v53);
    v60 = v58;
    v70 = objc_msgSend_parentStorage(v58, v61, v66, v67, v68, v69, v62, v63, v64, v65);
    v80 = v70;
    if (CharIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v70 == v47)
      {
        isPartitioned = objc_msgSend_isPartitioned(v60, v71, v76, v77, v78, v79, v72, v73, v74, v75);
        if (CharIndex)
        {
          v203 = isPartitioned;
        }

        else
        {
          v203 = 0;
        }

        v204 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(self, v198, v199, v200, v201, v202, CharIndex - v203, 0, 0, 0, 1);
        if (objc_msgSend_isPartitioned(v60, v205, v210, v211, v212, v213, v206, v207, v208, v209))
        {
          if (v204 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v223 = objc_msgSend_length(v47, v214, v219, v220, v221, v222, v215, v216, v217, v218);
            v232 = CharIndex + 1;
            if (CharIndex + 1 >= v223 || (LaidOutDocumentPageIndex = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(self, v224, v228, v229, v230, v231, v232, 0, 1, 0, 1), LaidOutDocumentPageIndex == 0x7FFFFFFFFFFFFFFFLL))
            {
              LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, v224, v228, v229, v230, v231, v232, v225, v226, v227);
              if (LaidOutDocumentPageIndex == 0x7FFFFFFFFFFFFFFFLL)
              {
                LaidOutDocumentPageIndex = v204;
              }
            }

            if (v204 <= LaidOutDocumentPageIndex + 1)
            {
              v234 = LaidOutDocumentPageIndex + 1;
            }

            else
            {
              v234 = v204;
            }

            if (v204 >= LaidOutDocumentPageIndex + 1)
            {
              v5 = LaidOutDocumentPageIndex + 1;
            }

            else
            {
              v5 = v204;
            }

            v6 = v234 - v5;
          }
        }

        else
        {
          v235 = objc_msgSend_p_pageIndexForAnchoredCharIndex_forcePagination_searchAfterPaginationPoint_(self, v214, v219, v220, v221, v222, CharIndex, 0, 1, v218);
          v244 = objc_msgSend_p_backupPageIndexForCharIndex_(self, v236, v240, v241, v242, v243, CharIndex, v237, v238, v239);
          v251 = v244;
          if (v235)
          {
            if (v235 + 1 == v204 && v244 != v235 - 1)
            {
              objc_msgSend_p_bodyRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v245, v247, v248, v249, v250, v235, 0, 1, v246);
              if (!v252)
              {
                --v235;
              }
            }
          }

          if (v251 >= v204)
          {
            v253 = v204;
          }

          else
          {
            v253 = v251;
          }

          if (v253 >= v235)
          {
            v253 = v235;
          }

          if (v253 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v204 <= v251)
            {
              v254 = v251;
            }

            else
            {
              v254 = v204;
            }

            if (v251 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v254 = v204;
            }

            if (v204 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v254 = v251;
            }

            if (v235 <= v254)
            {
              v255 = v254;
            }

            else
            {
              v255 = v235;
            }

            if (v254 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v255 = v235;
            }

            if (v235 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v256 = v254;
            }

            else
            {
              v256 = v255;
            }

            v6 = v256 - v253 + 1;
            v5 = v253;
          }
        }
      }

      else
      {
        v81 = objc_msgSend_parentInfo(v70, v71, v76, v77, v78, v79, v72, v73, v74, v75);
        objc_opt_class();
        v82 = TSUCheckedClassAndProtocolCast();

        v5 = objc_msgSend_p_pageRangeAffectedByInfo_(self, v83, v87, v88, v89, v90, v82, v84, v85, v86, &unk_2885108A0);
        v6 = v91;
      }
    }

    v58 = v60;
  }

  else
  {
    objc_opt_class();
    v97 = TSUDynamicCast();
    if (v97)
    {
      v103 = objc_msgSend_footnoteIndexForFootnote_(v47, v92, v98, v99, v100, v101, v97, v94, v95, v96);
      if (v103 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v109 = objc_msgSend_p_pageIndexForFootnoteIndex_forcePagination_searchAfterPaginationPoint_(self, v102, v105, v106, v107, v108, v103, 0, 1, v104);
        if (v109 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v110 = v109 - 1;
          if (!v109)
          {
            v110 = 0;
          }

          if (v110 <= v109 + 1)
          {
            v111 = v109 + 1;
          }

          else
          {
            v111 = v110;
          }

          if (v110 >= v109 + 1)
          {
            v5 = v109 + 1;
          }

          else
          {
            v5 = v110;
          }

          v6 = v111 - v5;
        }
      }
    }

    else
    {
      v258 = v47;
      v112 = 0;
      for (i = v259; ; i = v112)
      {
        v259 = i;
        v114 = objc_msgSend_parentInfo(i, v92, v98, v99, v100, v101, v93, v94, v95, v96, v257);
        objc_opt_class();
        v257 = &unk_2885108A0;
        v115 = TSUClassAndProtocolCast();

        if (!v115)
        {
          break;
        }

        v112 = v115;
      }

      v125 = objc_msgSend_documentRoot(self, v116, v121, v122, v123, v124, v117, v118, v119, v120, &unk_2885108A0);
      v58 = 0;
      v135 = objc_msgSend_floatingDrawables(v125, v126, v131, v132, v133, v134, v127, v128, v129, v130);

      v144 = objc_msgSend_pageIndexForDrawable_(v135, v136, v140, v141, v142, v143, v259, v137, v138, v139);
      if (v144 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = v144;
        v6 = 1;
      }

      objc_opt_class();
      v145 = TSUDynamicCast();
      if (objc_msgSend_isLinked(v145, v146, v151, v152, v153, v154, v147, v148, v149, v150))
      {
        v262 = 0u;
        v263 = 0u;
        v260 = 0u;
        v261 = 0u;
        v163 = objc_msgSend_textFlow(v145, v155, 0, v160, v161, v162, v156, v157, v158, v159);
        v173 = objc_msgSend_textboxes(v163, v164, v169, v170, v171, v172, v165, v166, v167, v168);

        v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v173, v174, v176, v177, v178, v179, &v260, v264, 16, v175);
        if (v184)
        {
          v189 = 0;
          v190 = *v261;
          do
          {
            for (j = 0; j != v184; ++j)
            {
              if (*v261 != v190)
              {
                objc_enumerationMutation(v173);
              }

              v192 = *(*(&v260 + 1) + 8 * j);
              if (v189)
              {
                v193 = objc_msgSend_pageIndexForDrawable_(v135, v180, v185, v186, v187, v188, v192, v181, v182, v183);
                if (v193 >= v6 + v5 && v193 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v6 = v193 - v5 + 1;
                }

                v189 = 1;
              }

              else
              {
                v189 = v192 == v145;
              }
            }

            v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v173, v180, v185, v186, v187, v188, &v260, v264, 16, v183);
          }

          while (v184);
        }

        v47 = v258;
        v97 = 0;
        v58 = 0;
      }
    }
  }

  v195 = v5;
  v196 = v6;
  result.length = v196;
  result.location = v195;
  return result;
}

- (unint64_t)p_backupPageIndexForCharIndex:(unint64_t)index
{
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  v22 = objc_msgSend_bodyStorage(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);

  v31 = objc_msgSend_paragraphIndexAtCharIndex_(v22, v23, v27, v28, v29, v30, index, v24, v25, v26);
  if (v31)
  {
    v62 = *MEMORY[0x277D81490];
    v38 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v22, v32, v62, v35, v36, v37, v31 - 1, &v62, v33, v34);
    if (objc_msgSend_intValueForProperty_(v38, v39, v43, v44, v45, v46, 90, v40, v41, v42))
    {
      v52 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(self, v47, v48, v49, v50, v51, v62.n128_i64[0], 0, 0, 0, 1);
      v59 = v52;
      if (v52 && v52 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v60 = objc_msgSend_p_bodyRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v53, v55, v56, v57, v58, v52, 0, 1, v54);
        v59 -= v62.n128_u64[0] == v60;
      }
    }

    else
    {
      v59 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v59 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v59;
}

- (unint64_t)p_firstPageColumn
{
  v11 = objc_msgSend_delegate(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_documentRoot(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  v31 = objc_msgSend_settings(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  hasFacingPages = objc_msgSend_hasFacingPages(v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);

  if (hasFacingPages)
  {
    isPageLayoutRightToLeft = objc_msgSend_isPageLayoutRightToLeft(self, v42, v47, v48, v49, v50, v43, v44, v45, v46) ^ 1;
  }

  else
  {
    isPageLayoutRightToLeft = objc_msgSend_isPageLayoutRightToLeft(self, v42, v47, v48, v49, v50, v43, v44, v45, v46);
  }

  v52 = isPageLayoutRightToLeft;

  return v52;
}

- (void)p_hasBodyChanged:(id)changed
{
  changedCopy = changed;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_27601ED74;
  v14[3] = &unk_27A6A8418;
  v14[4] = self;
  v15 = changedCopy;
  v5 = changedCopy;
  objc_msgSend_accquireLockAndPerformAction_(self, v6, v10, v11, v12, v13, v14, v7, v8, v9);
}

- (void)p_setNeedsLayoutFromSectionIndexToEnd:(unint64_t)end
{
  v12 = objc_msgSend_sectionHints(self->_paginationState, a2, v6, v7, v8, v9, end, v3, v4, v5);
  v22 = objc_msgSend_count(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);

  if (v22 <= end)
  {
    v60 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v32 = objc_msgSend_sectionHints(self->_paginationState, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    v41 = objc_msgSend_objectAtIndexedSubscript_(v32, v33, v37, v38, v39, v40, end, v34, v35, v36);

    v51 = objc_msgSend_documentPageRange(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);
    v60 = v51;
    if (v51 > 0x7FFFFFFFFFFFFFFELL)
    {
      v60 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      completePageCount = &v52[v51];
      v62 = &v52[v51 - 1];
      if (v62 <= 0x7FFFFFFFFFFFFFFDLL)
      {
        if (self->_completePageCount <= v62)
        {
          completePageCount = &v52[v51 - 1];
        }

        else
        {
          completePageCount = self->_completePageCount;
        }
      }

      if (v51 <= completePageCount)
      {
        v63 = v51;
        do
        {
          objc_msgSend_p_invalidatePageIndex_(self, v52, v56, v57, v58, v59, v63++, v53, v54, v55);
        }

        while (v63 <= completePageCount);
      }
    }
  }

  v64 = objc_msgSend_sectionHints(self->_paginationState, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  v74 = objc_msgSend_count(v64, v65, v70, v71, v72, v73, v66, v67, v68, v69);

  if (v74 > end)
  {
    objc_msgSend_trimSectionHintsFromIndex_(self->_paginationState, v75, v80, v81, v82, v83, end, v77, v78, v79);
  }

  if (self->_completePageCount >= v60)
  {
    v84 = v60 - 1;
    if (!v60)
    {
      v84 = 0;
    }
  }

  else
  {
    if (v60 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    v84 = 0;
  }

  self->_completePageCount = v84;
LABEL_22:

  objc_msgSend_p_interruptBackgroundPagination(self, v75, v80, v81, v82, v83, v76, v77, v78, v79);
}

- (void)p_setNeedsLayoutOnPageIndex:(unint64_t)index
{
  v68 = *MEMORY[0x277D85DE8];
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v13, v16, v17, v18, v19, index, v12, v14, v15);

  if ((isPageTemplatePageIndex_documentRoot & 1) == 0)
  {
    objc_msgSend_p_invalidatePageIndex_(self, v21, v25, v26, v27, v28, index, v22, v23, v24);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v29 = self->_layoutObservers;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, v32, v33, v34, v35, &v63, v67, 16, v31);
    if (v36)
    {
      v37 = *v64;
      do
      {
        v38 = 0;
        do
        {
          if (*v64 != v37)
          {
            objc_enumerationMutation(v29);
          }

          v39 = TSUProtocolCast();
          objc_msgSend_needLayoutForPageController_(v39, v40, v44, v45, v46, v47, self, v41, v42, v43, &unk_288546998);

          ++v38;
        }

        while (v36 != v38);
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v48, v50, v51, v52, v53, &v63, v67, 16, v49);
      }

      while (v36);
    }

    objc_msgSend_p_interruptBackgroundPagination(self, v54, v59, v60, v61, v62, v55, v56, v57, v58);
  }
}

- (void)p_invalidatePageIndex:(unint64_t)index
{
  LaidOutDocumentPageIndex = index;
  if (objc_msgSend_isPaginating(self, a2, v6, v7, v8, v9, index, v3, v4, v5))
  {
    v21 = MEMORY[0x277D81150];
    v173 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v17, v18, v19, v20, "[TPPaginatedPageController p_invalidatePageIndex:]", v14, v15, v16);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v23, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v31, v32, v33, v34, v35, v173, v30, 3551, 0, "shouldn't invalidate a page while in the middle of pagination");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v36, v41, v42, v43, v44, v37, v38, v39, v40);
  }

  if (objc_msgSend_p_isPaginationComplete(self, v12, v17, v18, v19, v20, v13, v14, v15, v16) && (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, v45, v49, v50, v51, v52, LaidOutDocumentPageIndex, v46, v47, v48) & 1) == 0)
  {
    LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, v45, v49, v50, v51, v52, v53, v54, v55, v48);
  }

  v56 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v45, v49, v50, v51, v52, LaidOutDocumentPageIndex, 0, 1, v48);
  if (v56)
  {
    v174 = v56;
    v64 = objc_msgSend_p_pageHintForPageIndexPath_(self, v56, v60, v61, v62, v63, v56, v57, v58, v59);
    v74 = v64;
    if (v64)
    {
      v75 = objc_msgSend_pageKind(v64, v65, v70, v71, v72, v73, v66, v67, v68, v69);
      v84 = v75;
      if ((v75 - 3) <= 1)
      {
        v86 = objc_msgSend_p_textPageIndexPrecedingPageIndex_(self, v76, v80, v81, v82, v83, LaidOutDocumentPageIndex, v77, v78, v79);
        if (v86 != 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_msgSend_p_invalidatePageIndex_(self, v85, v90, v91, v92, v93, v86, v87, v88, v89);
        }

LABEL_20:
        objc_msgSend_setPageKind_(v74, v85, v90, v91, v92, v93, 5, v87, v88, v89);
        goto LABEL_21;
      }

      if (v75 != 5)
      {
        if (objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(self->_paginationState, v76, v80, v81, v82, v83, LaidOutDocumentPageIndex, v77, v78, v79))
        {
          if (v84 == 1 || (objc_msgSend_flowHints(v74, v119, v124, v125, v126, v127, v120, v121, v122, v123), v128 = objc_claimAutoreleasedReturnValue(), v138 = objc_msgSend_count(v128, v129, v134, v135, v136, v137, v130, v131, v132, v133), v128, v138))
          {
            self->_checkedForBackUp = 0;
          }
        }

        if (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, v119, v124, v125, v126, v127, LaidOutDocumentPageIndex, v121, v122, v123))
        {
          objc_msgSend_restartPaginationFromPageIndexPath_documentPageIndex_(self->_paginationState, v85, v90, v91, v92, v93, v174, LaidOutDocumentPageIndex, v88, v89);
          objc_msgSend_removeAllObjects(self->_pageGeneratorStack, v139, v144, v145, v146, v147, v140, v141, v142, v143);
          objc_msgSend_p_destroyBodyLayoutState(self, v148, v153, v154, v155, v156, v149, v150, v151, v152);
          objc_msgSend_setBodyCharIndex_(self->_paginationState, v157, v161, v162, v163, v164, 0x7FFFFFFFFFFFFFFFLL, v158, v159, v160);
          objc_msgSend_setFootnoteIndex_(self->_paginationState, v165, v169, v170, v171, v172, 0x7FFFFFFFFFFFFFFFLL, v166, v167, v168);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v94 = MEMORY[0x277D81150];
      v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v70, v71, v72, v73, "[TPPaginatedPageController p_invalidatePageIndex:]", v67, v68, v69);
      v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, v100, v101, v102, v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v97, v98, v99);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v94, v105, v106, v107, v108, v109, v95, v104, 3562, 0, "invalid nil value for '%{public}s'", "pageHint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v115, v116, v117, v118, v111, v112, v113, v114);
    }

LABEL_21:

    v56 = v174;
  }
}

- (void)p_destroyBodyLayoutState
{
  if (objc_msgSend_bodyLayoutState(self->_paginationState, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    bodyLayoutManager = self->_bodyLayoutManager;
    v21 = objc_msgSend_bodyLayoutState(self->_paginationState, v11, v16, v17, v18, v19, v12, v13, v14, v15);
    objc_msgSend_destroyLayoutState_(bodyLayoutManager, v22, v26, v27, v28, v29, v21, v23, v24, v25);
    paginationState = self->_paginationState;

    objc_msgSend_setBodyLayoutState_(paginationState, v30, v34, v35, v36, v37, 0, v31, v32, v33);
  }
}

- (BOOL)p_isBodyLayoutComplete
{
  if (objc_msgSend_p_isPaginationComplete(self, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    return 1;
  }

  v21 = objc_msgSend_bodyCharIndex(self->_paginationState, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v31 = objc_msgSend_documentRoot(self, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  v41 = objc_msgSend_bodyStorage(v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);
  v20 = v21 == objc_msgSend_length(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46) && objc_msgSend_bodyLayoutState(self->_paginationState, v51, v56, v57, v58, v59, v52, v53, v54, v55) == 0;

  return v20;
}

- (unint64_t)p_lastValidCharIndex
{
  v10 = objc_msgSend_p_lastValidPageHint(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = v10;
  if (v10)
  {
    v21 = objc_msgSend_range(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
    v23 = v21 + v22;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (unint64_t)p_lastValidFootnoteIndex
{
  v10 = objc_msgSend_p_lastValidPageHint(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = v10;
  if (v10)
  {
    v21 = objc_msgSend_footnoteLayoutRange(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
    v23 = v21 + v22;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)p_cachedPageLayoutForPageIndex:(unint64_t)index preferredLayoutController:(id)controller
{
  v62 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  objc_msgSend_pageLayoutsWithPageIndex_(self->_pageLayoutCache, v7, v11, v12, v13, v14, index, v8, v9, v10);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v15 = v58 = 0u;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, v18, v19, v20, v21, &v57, v61, 16, v17);
  if (v22)
  {
    v23 = 0;
    v24 = *v58;
LABEL_3:
    v25 = 0;
    v26 = v23;
    while (1)
    {
      if (*v58 != v24)
      {
        objc_enumerationMutation(v15);
      }

      v23 = *(*(&v57 + 1) + 8 * v25);

      if (!controllerCopy)
      {
        break;
      }

      v36 = objc_msgSend_layoutController(v23, v27, v32, v33, v34, v35, v28, v29, v30, v31, v57);
      v37 = v36 == controllerCopy;

      if (v37)
      {
        goto LABEL_10;
      }

      ++v25;
      v26 = v23;
      if (v22 == v25)
      {
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v38, v40, v41, v42, v43, &v57, v61, 16, v39);
        if (v22)
        {
          goto LABEL_3;
        }

LABEL_10:

        goto LABEL_12;
      }
    }
  }

  else
  {

    v23 = 0;
    v53 = 0;
    if (!controllerCopy)
    {
      goto LABEL_19;
    }

LABEL_12:
    v54 = objc_msgSend_layoutController(v23, v44, v49, v50, v51, v52, v45, v46, v47, v48, v57);
    v55 = v54 == controllerCopy;

    if (!v55)
    {
      v53 = 0;
LABEL_17:

      goto LABEL_19;
    }
  }

  if (v23)
  {
    objc_opt_class();
    v53 = TSUCheckedDynamicCast();
    goto LABEL_17;
  }

  v53 = 0;
LABEL_19:

  return v53;
}

- (void)p_withPageLayoutAtIndex:(unint64_t)index preferredLayoutController:(id)controller executeBlock:(id)block
{
  v372[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  blockCopy = block;
  if ((objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(self->_paginationState, v9, v13, v14, v15, v16, index, v10, v11, v12) & 1) == 0 && (!objc_msgSend_p_isPaginationComplete(self, v17, v22, v23, v24, v25, v18, v19, v20, v21) || self->_lastKnownPageCount < index))
  {
    v28 = objc_msgSend_documentRoot(self, v17, v22, v23, v24, v25, v26, v27, v20, v21);
    isAlternativePageIndex_documentRoot = objc_msgSend_isAlternativePageIndex_documentRoot_(TPPageInfo, v29, v32, v33, v34, v35, index, v28, v30, v31);

    if ((isAlternativePageIndex_documentRoot & 1) == 0)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v22, v23, v24, v25, "[TPPaginatedPageController p_withPageLayoutAtIndex:preferredLayoutController:executeBlock:]", v37, v20, v21);
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v41, v42, v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v49, v50, v51, v52, v53, v39, v48, 3683, 0, "trying to generate a layout for a page past where we need layout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v59, v60, v61, v62, v55, v56, v57, v58);
    }
  }

  v63 = objc_msgSend_p_cachedPageLayoutForPageIndex_preferredLayoutController_(self, v17, v22, v23, v24, v25, index, controllerCopy, v20, v21);
  v73 = v63;
  if (v63 && (objc_msgSend_bodyLayout(v63, v64, v69, v70, v71, v72, v65, v66, v67, v68), v74 = objc_claimAutoreleasedReturnValue(), v84 = objc_msgSend_needsInflation(v74, v75, v80, v81, v82, v83, v76, v77, v78, v79), v74, (v84 & 1) == 0))
  {
    objc_msgSend_p_removeDeletedFootnotesOnPageLayout_(self, v64, v69, v70, v71, v72, v73, v66, v67, v68);
    v253 = objc_msgSend_layoutController(v73, v244, v249, v250, v251, v252, v245, v246, v247, v248);
    objc_msgSend_invalidateLayout_(v253, v254, v258, v259, v260, v261, v73, v255, v256, v257);

    v271 = objc_msgSend_bodyLayout(v73, v262, v267, v268, v269, v270, v263, v264, v265, v266);
    v281 = objc_msgSend_needsInflation(v271, v272, v277, v278, v279, v280, v273, v274, v275, v276);

    v291 = objc_msgSend_layoutController(v73, v282, v287, v288, v289, v290, v283, v284, v285, v286);
    objc_msgSend_validateLayoutWithDependencies_(v291, v292, v296, v297, v298, v299, v73, v293, v294, v295);

    v309 = objc_msgSend_bodyLayout(v73, v300, v305, v306, v307, v308, v301, v302, v303, v304);
    v319 = objc_msgSend_needsInflation(v309, v310, v315, v316, v317, v318, v311, v312, v313, v314);

    if (v319)
    {
      v328 = MEMORY[0x277D81150];
      v329 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v320, v324, v325, v326, v327, "[TPPaginatedPageController p_withPageLayoutAtIndex:preferredLayoutController:executeBlock:]", v321, v322, v323);
      v338 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v330, v334, v335, v336, v337, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v331, v332, v333);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v328, v339, v340, v341, v342, v343, v329, v338, 3697, 0, "Page should not need inflation after validation (%d)", v281);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v344, v349, v350, v351, v352, v345, v346, v347, v348);
    }

    v147 = v73;
  }

  else
  {
    v85 = objc_msgSend_canvas(self->_offscreenSearchDelegate, v64, v69, v70, v71, v72, v65, v66, v67, v68);
    v95 = objc_msgSend_layoutController(v85, v86, v91, v92, v93, v94, v87, v88, v89, v90);

    v104 = objc_msgSend_p_pageInfoForPageAtIndex_(self, v96, v100, v101, v102, v103, index, v97, v98, v99);
    v114 = objc_msgSend_canvas(self->_offscreenSearchDelegate, v105, v110, v111, v112, v113, v106, v107, v108, v109);
    v372[0] = v104;
    v122 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v115, v118, v119, v120, v121, v372, 1, v116, v117);
    objc_msgSend_setInfosToDisplay_(v114, v123, v127, v128, v129, v130, v122, v124, v125, v126);

    objc_msgSend_validateLayouts(v95, v131, v136, v137, v138, v139, v132, v133, v134, v135);
    v147 = objc_msgSend_p_cachedPageLayoutForPageIndex_preferredLayoutController_(self, v140, v143, v144, v145, v146, index, v95, v141, v142);

    v162 = objc_msgSend_bodyLayout(v147, v148, v153, v154, v155, v156, v149, v150, v151, v152);
    if (v162)
    {
      v167 = objc_msgSend_bodyLayout(v147, v157, v163, v164, v165, v166, v158, v159, v160, v161);
      v177 = objc_msgSend_needsInflation(v167, v168, v173, v174, v175, v176, v169, v170, v171, v172);

      if (v177)
      {
        v186 = MEMORY[0x277D81150];
        v187 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v178, v182, v183, v184, v185, "[TPPaginatedPageController p_withPageLayoutAtIndex:preferredLayoutController:executeBlock:]", v179, v180, v181);
        v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v188, v192, v193, v194, v195, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v189, v190, v191);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v186, v197, v198, v199, v200, v201, v187, v196, 3709, 0, "Newly created page should not need inflation");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v202, v207, v208, v209, v210, v203, v204, v205, v206);
      }
    }

    if (!v147)
    {
      v219 = MEMORY[0x277D81150];
      v220 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v211, v215, v216, v217, v218, "[TPPaginatedPageController p_withPageLayoutAtIndex:preferredLayoutController:executeBlock:]", v212, v213, v214);
      v229 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v221, v225, v226, v227, v228, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v222, v223, v224);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v219, v230, v231, v232, v233, v234, v220, v229, 3711, 0, "should have found or created a page layout %d", v73 == 0);

      v147 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v235, v240, v241, v242, v243, v236, v237, v238, v239);
    }
  }

  blockCopy[2](blockCopy, v147);
  if (objc_msgSend_withPageLayoutRecursionCount(self, v353, v358, v359, v360, v361, v354, v355, v356, v357) <= 0)
  {
    objc_msgSend_evacuateOldChildLayoutCache(v147, v362, v367, v368, v369, v370, v363, v364, v365, v366);
  }
}

- (id)p_pageInfoForPageAtIndex:(unint64_t)index
{
  v5 = objc_alloc(objc_opt_class());
  v15 = objc_msgSend_documentRoot(self, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v22 = objc_msgSend_initWithPageIndex_documentRoot_layoutInfoProvider_(v5, v16, v18, v19, v20, v21, index, v15, self, v17);

  return v22;
}

- (unint64_t)p_pageIndexForCharIndex:(unint64_t)index includeEmptyPages:(BOOL)pages caretAffinity:(int64_t)affinity forcePagination:(BOOL)pagination searchAfterPaginationPoint:(BOOL)point
{
  pointCopy = point;
  paginationCopy = pagination;
  indexCopy = index;
  v15 = objc_msgSend_documentRoot(self, a2, v7, v8, v9, v10, index, pages, affinity, pagination);
  v25 = objc_msgSend_bodyStorage(v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);

  v283 = v25;
  if (indexCopy)
  {
    if (objc_msgSend_length(v25, v26, v31, v32, v33, v34, v27, v28, v29, v30) < indexCopy)
    {
      v44 = MEMORY[0x277D81150];
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v40, v41, v42, v43, "[TPPaginatedPageController p_pageIndexForCharIndex:includeEmptyPages:caretAffinity:forcePagination:searchAfterPaginationPoint:]", v37, v38, v39);
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v47, v48, v49);
      v64 = objc_msgSend_length(v25, v55, v60, v61, v62, v63, v56, v57, v58, v59);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v65, v66, v67, v68, v69, v45, v54, 3756, 0, "Given char index is beyond the storage: %lu vs %lu", v64, indexCopy);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v70, v75, v76, v77, v78, v71, v72, v73, v74);
    }

    if (objc_msgSend_length(v25, v35, v40, v41, v42, v43, v36, v37, v38, v39))
    {
      if (objc_msgSend_length(v25, v79, v84, v85, v86, v87, v80, v81, v82, v83) <= indexCopy - 1)
      {
        v98 = 0;
      }

      else
      {
        v96 = objc_msgSend_characterAtIndex_(v25, v88, v92, v93, v94, v95, indexCopy - 1, v89, v90, v91);
        v97 = IsParagraphBreakingCharacter();
        if (v96 == 8232)
        {
          v98 = 1;
        }

        else
        {
          v98 = v97;
        }
      }

      v100 = objc_msgSend_p_pageIndexContainingIndex_ofType_(self, v88, v92, v93, v94, v95, indexCopy - 1, 0, v90, v91);
    }

    else
    {
      v98 = 0;
      v100 = objc_msgSend_p_pageIndexContainingIndex_ofType_(self, v79, v84, v85, v86, v87, indexCopy - 1, 0, v82, v83);
    }

    v99 = v100;
  }

  else
  {
    v98 = 0;
    v99 = 0;
  }

  if (v99 > objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, v26, v31, v32, v33, v34, v27, v28, v29, v30))
  {
    v109 = MEMORY[0x277D81150];
    v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v105, v106, v107, v108, "[TPPaginatedPageController p_pageIndexForCharIndex:includeEmptyPages:caretAffinity:forcePagination:searchAfterPaginationPoint:]", v102, v103, v104);
    v111 = indexCopy;
    v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, v116, v117, v118, v119, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v113, v114, v115);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v121, v122, v123, v124, v125, v110, v120, 3760, 0, "Start page index should be a valid index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v126, v131, v132, v133, v134, v127, v128, v129, v130);
    indexCopy = v111;
  }

  v286 = indexCopy;
  while (1)
  {
    v135 = paginationCopy && (v99 != self->_didLayOutPageIndex);
    v141 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v101, v105, v106, v107, v108, v99, v135, pointCopy, v104);
    if (!v141 || !pointCopy && (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, v136, v142, v143, v144, v145, v99, v138, v139, v140) & 1) == 0)
    {
      break;
    }

    if (objc_msgSend_pageKind(v141, v136, v142, v143, v144, v145, v137, v138, v139, v140) != 1 || !objc_msgSend_lineCount(v141, v146, v151, v152, v153, v154, v147, v148, v149, v150) && !pages)
    {
      v155 = objc_msgSend_documentRoot(self, v146, v151, v152, v153, v154, v147, v148, v149, v150);
      v165 = objc_msgSend_settings(v155, v156, v161, v162, v163, v164, v157, v158, v159, v160);
      if (objc_msgSend_hasBody(v165, v166, v171, v172, v173, v174, v167, v168, v169, v170))
      {
        v184 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_28:

        goto LABEL_42;
      }

      v185 = objc_msgSend_pageKind(v141, v175, v180, v181, v182, v183, v176, v177, v178, v179);

      if (v185 != 6)
      {
        goto LABEL_41;
      }
    }

    v186 = objc_msgSend_range(v141, v146, v151, v152, v153, v154, v147, v148, v149, v150);
    v196 = v186;
    v184 = v99;
    if (&v187[v186] > v286)
    {
      goto LABEL_42;
    }

    v184 = &v187[v186] == v286 ? v99 : 0x7FFFFFFFFFFFFFFFLL;
    if (((&v187[v186] == v286) & ((affinity != 1) | v98)) != 1)
    {
      goto LABEL_42;
    }

    if (!(v187 | affinity))
    {
      v216 = v283;
      v155 = objc_msgSend_firstChildHint(v141, v187, v192, v193, v194, v195, v188, v189, v190, v191);
      v226 = objc_msgSend_firstChildHint(v141, v217, v222, v223, v224, v225, v218, v219, v220, v221);
      v165 = v226;
      if (!(v155 | v226))
      {
        goto LABEL_59;
      }

      v282 = 1;
      if (v155 && v226 && v155 == v226)
      {
        v282 = (objc_opt_respondsToSelector() & 1) != 0 ? objc_msgSend_isFirstHint(v155, v236, v241, v242, v243, v244, v237, v238, v239, v240) : 1;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v245 = MEMORY[0x277D81150];
          v281 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v227, v232, v233, v234, v235, "[TPPaginatedPageController p_pageIndexForCharIndex:includeEmptyPages:caretAffinity:forcePagination:searchAfterPaginationPoint:]", v229, v230, v231);
          v280 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v246, v250, v251, v252, v253, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v247, v248, v249);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v245, v254, v255, v256, v257, v258, v281, v280, 3793, 0, "partition hints must respond to -isFirstHint");

          v216 = v283;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v259, v264, v265, v266, v267, v260, v261, v262, v263);
        }
      }

      if (objc_msgSend_pageKind(v141, v227, v232, v233, v234, v235, v228, v229, v230, v231) == 1)
      {
        v277 = objc_msgSend_length(v216, v268, v273, v274, v275, v276, v269, v270, v271, v272);
        v278 = (v155 != 0) & v282;
        if (v196 >= v277)
        {
          v278 = 1;
        }

        if (v278)
        {
          v184 = v99;
        }

        else
        {
          v184 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
LABEL_59:
        v184 = v99;
      }

      goto LABEL_28;
    }

    v197 = objc_msgSend_lastChildHint(v141, v187, v192, v193, v194, v195, v188, v189, v190, v191);

    v184 = v99;
    if (!v197)
    {
      if (objc_msgSend_p_isPaginationComplete(self, v198, v203, v204, v205, v206, v199, v200, v201, v202))
      {
        if (v99 == objc_msgSend_p_lastValidTextPageIndex(self, v207, v212, v213, v214, v215, v208, v209, v210, v211))
        {
          v184 = v99;
        }

        else
        {
          v184 = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_42;
      }

LABEL_41:
      v184 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_42:

    ++v99;
    if (v184 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_61;
    }
  }

  v184 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_61:

  return v184;
}

- (_NSRange)p_bodyRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination allowAfterPaginationPoint:(BOOL)point
{
  v11 = *MEMORY[0x277D81490];
  v10 = *(MEMORY[0x277D81490] + 8);
  v12 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v6, v7, v8, v9, index, pagination, point, v5);
  v22 = v12;
  if (v12)
  {
    v11 = objc_msgSend_range(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    v10 = v23;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v27, v28, v29, v30, "[TPPaginatedPageController p_bodyRangeForPageIndex:forcePagination:allowAfterPaginationPoint:]", v24, v25, v26);
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v34, v35, v36);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v42, v43, v44, v45, v46, v32, v41, 3826, 0, "Bogus page hint body range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v52, v53, v54, v55, v48, v49, v50, v51);
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v56 = v11;
  v57 = v10;
  result.length = v57;
  result.location = v56;
  return result;
}

- (_NSRange)p_anchoredRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination allowAfterPaginationPoint:(BOOL)point
{
  v11 = *MEMORY[0x277D81490];
  v10 = *(MEMORY[0x277D81490] + 8);
  v12 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v6, v7, v8, v9, index, pagination, point, v5);
  v22 = v12;
  if (v12)
  {
    if (objc_msgSend_pageKind(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17) == 1)
    {
      v11 = objc_msgSend_anchoredRange(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
      v10 = v32;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v40 = MEMORY[0x277D81150];
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v36, v37, v38, v39, "[TPPaginatedPageController p_anchoredRangeForPageIndex:forcePagination:allowAfterPaginationPoint:]", v33, v34, v35);
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v43, v44, v45);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v51, v52, v53, v54, v55, v41, v50, 3840, 0, "Bogus page hint anchored range");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v61, v62, v63, v64, v57, v58, v59, v60);
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  v65 = v11;
  v66 = v10;
  result.length = v66;
  result.location = v65;
  return result;
}

- (_NSRange)p_footnoteLayoutRangeForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination allowAfterPaginationPoint:(BOOL)point
{
  v10 = *MEMORY[0x277D81490];
  v11 = *(MEMORY[0x277D81490] + 8);
  v12 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v6, v7, v8, v9, index, pagination, point, v5);
  v22 = v12;
  if (v12 && objc_msgSend_pageKind(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17) != 5)
  {
    v10 = objc_msgSend_footnoteLayoutRange(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    v11 = v32;
  }

  v33 = v10;
  v34 = v11;
  result.length = v34;
  result.location = v33;
  return result;
}

- (unint64_t)p_pageIndexContainingIndex:(unint64_t)index ofType:(unint64_t)type
{
  typeCopy = type;
  indexCopy = index;
  LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, a2, v6, v7, v8, v9, index, type, v4, v5);
  if (LaidOutDocumentPageIndex <= 0x7FFFFFFFFFFFFFFELL)
  {
    v20 = LaidOutDocumentPageIndex;
    v21 = 0;
    while (1)
    {
      v19 = (v21 + v20) >> 1;
      v22 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v13, v15, v16, v17, v18, v19, 0, 0, v14);
      v65 = v22;
      if (!typeCopy)
      {
        v32 = objc_msgSend_range(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
        goto LABEL_10;
      }

      if (typeCopy == 1)
      {
        break;
      }

      if (typeCopy == 2)
      {
        v32 = objc_msgSend_footnoteLayoutRange(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
LABEL_10:
        v33 = v32;
        v34 = v23;
        goto LABEL_12;
      }

      v34 = 0;
      v33 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
      if (v33 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v28, v29, v30, v31, "[TPPaginatedPageController p_pageIndexContainingIndex:ofType:]", v25, v26, v27);
        v37 = typeCopy;
        v38 = indexCopy;
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v40, v41, v42);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v48, v49, v50, v51, v52, v36, v47, 3892, 0, "Index range should be valid for laid out pages.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v58, v59, v60, v61, v54, v55, v56, v57);
        indexCopy = v38;
        typeCopy = v37;
      }

      if (v33 <= indexCopy)
      {
        v62 = v65;
        if (&v34[v33] > indexCopy)
        {

          return v19;
        }

        v21 = v19 + 1;
      }

      else
      {
        v20 = v19 - 1;
        v62 = v65;
      }

      if (v21 > v20)
      {
        return v19;
      }
    }

    v32 = objc_msgSend_anchoredRange(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    goto LABEL_10;
  }

  return 0;
}

- (BOOL)p_couldBeFirstPageIndex:(unint64_t)index forPartitionedAttachmentCharIndex:(unint64_t)charIndex
{
  if (!index)
  {
    return 1;
  }

  v11 = 1;
  v12 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v5, v6, v7, v8, index, 0, 1, v4);
  if (v12)
  {
    objc_opt_class();
    v22 = objc_msgSend_documentRoot(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    v32 = objc_msgSend_bodyStorage(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    v41 = objc_msgSend_attachmentAtCharIndex_(v32, v33, v37, v38, v39, v40, charIndex, v34, v35, v36);
    v42 = TSUCheckedDynamicCast();

    if ((objc_msgSend_isPartitioned(v42, v43, v48, v49, v50, v51, v44, v45, v46, v47) & 1) == 0)
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v57, v58, v59, v60, "[TPPaginatedPageController p_couldBeFirstPageIndex:forPartitionedAttachmentCharIndex:]", v54, v55, v56);
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v64, v65, v66);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v72, v73, v74, v75, v76, v62, v71, 3931, 0, "attachment should be partitionable");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v82, v83, v84, v85, v78, v79, v80, v81);
    }

    v86 = objc_msgSend_drawable(v42, v52, v57, v58, v59, v60, v53, v54, v55, v56);
    v96 = objc_msgSend_objectUUID(v86, v87, v92, v93, v94, v95, v88, v89, v90, v91);

    v106 = objc_msgSend_startingPartitionedAttachments(v12, v97, v102, v103, v104, v105, v98, v99, v100, v101);
    v11 = objc_msgSend_containsObject_(v106, v107, v111, v112, v113, v114, v96, v108, v109, v110);
  }

  return v11;
}

- (unint64_t)p_pageIndexForAnchoredCharIndex:(unint64_t)index forcePagination:(BOOL)pagination searchAfterPaginationPoint:(BOOL)point
{
  paginationState = self->_paginationState;
  if (!paginationState)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  pointCopy = point;
  paginationCopy = pagination;
  if (index)
  {
    v15 = objc_msgSend_p_pageIndexContainingIndex_ofType_(self, a2, v6, v7, v8, v9, index - 1, 1, point, v5);
    if (v15 > objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, v16, v21, v22, v23, v24, v17, v18, v19, v20))
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v29, v30, v31, v32, "[TPPaginatedPageController p_pageIndexForAnchoredCharIndex:forcePagination:searchAfterPaginationPoint:]", v26, v27, v28);
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v36, v37, v38);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v44, v45, v46, v47, v48, v34, v43, 3952, 0, "Start page index should be a valid index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v54, v55, v56, v57, v50, v51, v52, v53);
    }
  }

  else
  {
    objc_msgSend_lastLaidOutDocumentPageIndex(paginationState, a2, v6, v7, v8, v9, 0, pagination, point, v5);
    v15 = 0;
  }

  while (1)
  {
    v63 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v25, v29, v30, v31, v32, v15, paginationCopy, pointCopy, v28);
    if (!v63 || !pointCopy && (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, v58, v64, v65, v66, v67, v15, v60, v61, v62) & 1) == 0)
    {
      break;
    }

    if (objc_msgSend_pageKind(v63, v58, v64, v65, v66, v67, v59, v60, v61, v62) != 1)
    {
      goto LABEL_16;
    }

    v77 = objc_msgSend_anchoredRange(v63, v68, v73, v74, v75, v76, v69, v70, v71, v72);
    v87 = v15;
    if (&v78[v77] <= index)
    {
      if (&v78[v77] == index && objc_msgSend_p_isPaginationComplete(self, v78, v83, v84, v85, v86, v79, v80, v81, v82))
      {
        if (v15 == objc_msgSend_p_lastValidTextPageIndex(self, v88, v93, v94, v95, v96, v89, v90, v91, v92))
        {
          v87 = v15;
        }

        else
        {
          v87 = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_17;
      }

LABEL_16:
      v87 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_17:

    ++v15;
    if (v87 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v87;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)p_pageHintIndexForCharIndex:(unint64_t)index
{
  v125 = 0;
  v126 = &v125;
  v6.n128_u64[0] = 0x2020000000;
  v127 = 0x2020000000;
  v128 = 0;
  v121 = 0;
  v122 = &v121;
  v123 = 0x2020000000;
  v124 = 0;
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  v22 = objc_msgSend_settings(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  hasBody = objc_msgSend_hasBody(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);

  if (hasBody)
  {
    v42 = objc_msgSend_sectionHints(self->_paginationState, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    v120[0] = MEMORY[0x277D85DD0];
    v43.n128_u64[0] = 3221225472;
    v120[1] = 3221225472;
    v120[2] = sub_276020F54;
    v120[3] = &unk_27A6A9420;
    v120[4] = &v125;
    v120[5] = &v121;
    v120[6] = index;
    objc_msgSend_enumerateObjectsUsingBlock_(v42, v44, v43, v48, v49, v50, v120, v45, v46, v47);
  }

  else
  {
    v122[3] = index;
    v51 = objc_msgSend_sectionHints(self->_paginationState, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    v61 = objc_msgSend_count(v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);

    if (v61 <= index)
    {
      goto LABEL_7;
    }

    v71 = objc_msgSend_sectionHints(self->_paginationState, v62, v67, v68, v69, v70, v63, v64, v65, v66);
    v42 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, v76, v77, v78, v79, v122[3], v73, v74, v75);

    if (objc_msgSend_pageCount(v42, v80, v85, v86, v87, v88, v81, v82, v83, v84))
    {
      v98 = objc_msgSend_pageHints(v42, v89, v94, v95, v96, v97, v90, v91, v92, v93);
      v107 = objc_msgSend_objectAtIndexedSubscript_(v98, v99, v103, v104, v105, v106, 0, v100, v101, v102);
      v117 = objc_msgSend_pageKind(v107, v108, v113, v114, v115, v116, v109, v110, v111, v112) == 6;
      *(v126 + 24) = v117;
    }
  }

LABEL_7:
  if (*(v126 + 24) == 1)
  {
    v118 = v122[3];
  }

  else
  {
    v118 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v121, 8);
  _Block_object_dispose(&v125, 8);
  return v118;
}

- (unint64_t)p_pageHintIndexForAnchoredCharIndex:(unint64_t)index
{
  v58 = 0;
  v59 = &v58;
  v6.n128_u64[0] = 0x2020000000;
  v60 = 0x2020000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  v22 = objc_msgSend_settings(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  hasBody = objc_msgSend_hasBody(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);

  if (hasBody)
  {
    v42 = objc_msgSend_sectionHints(self->_paginationState, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    v53[0] = MEMORY[0x277D85DD0];
    v43.n128_u64[0] = 3221225472;
    v53[1] = 3221225472;
    v53[2] = sub_276021260;
    v53[3] = &unk_27A6A9420;
    v53[4] = &v58;
    v53[5] = &v54;
    v53[6] = index;
    objc_msgSend_enumerateObjectsUsingBlock_(v42, v44, v43, v48, v49, v50, v53, v45, v46, v47);
  }

  if (*(v59 + 24) == 1)
  {
    v51 = v55[3];
  }

  else
  {
    v51 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  return v51;
}

- (unint64_t)p_pageIndexForFootnoteIndex:(unint64_t)index forcePagination:(BOOL)pagination searchAfterPaginationPoint:(BOOL)point
{
  pointCopy = point;
  paginationCopy = pagination;
  if (index)
  {
    v14 = objc_msgSend_p_pageIndexContainingIndex_ofType_(self, a2, v6, v7, v8, v9, index - 1, 2, point, v5);
  }

  else
  {
    v14 = 0;
  }

  if (v14 > objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, a2, v6, v7, v8, v9, index, pagination, point, v5))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v19, v20, v21, v22, "[TPPaginatedPageController p_pageIndexForFootnoteIndex:forcePagination:searchAfterPaginationPoint:]", v16, v17, v18);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v26, v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v34, v35, v36, v37, v38, v24, v33, 4051, 0, "Start page index should be a valid index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v44, v45, v46, v47, v40, v41, v42, v43);
  }

  while (1)
  {
    v53 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v15, v19, v20, v21, v22, v14, paginationCopy, pointCopy, v18);
    if (!v53 || !pointCopy && (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, v48, v54, v55, v56, v57, v14, v50, v51, v52) & 1) == 0)
    {
      break;
    }

    v67 = 0x7FFFFFFFFFFFFFFFLL;
    if (objc_msgSend_pageKind(v53, v48, v54, v55, v56, v57, v49, v50, v51, v52) != 5)
    {
      v68 = objc_msgSend_footnoteLayoutRange(v53, v58, v63, v64, v65, v66, v59, v60, v61, v62);
      if (v68 + v69 <= index)
      {
        v67 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v67 = v14;
      }
    }

    ++v14;
    if (v67 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v67;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)p_processWidowsAndInflationForLayoutController:(id)controller
{
  v58 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (controllerCopy)
  {
    v14 = objc_msgSend_documentPageIndex(self->_paginationState, v4, v10, v11, v12, v13, v5, v6, v7, v8);
    objc_msgSend_pageLayoutsUpToPageIndex_(self->_pageLayoutCache, v15, v19, v20, v21, v22, v14, v16, v17, v18);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v23 = v54 = 0u;
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, v26, v27, v28, v29, &v53, v57, 16, v25);
    if (v35)
    {
      v40 = *v54;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v54 != v40)
          {
            objc_enumerationMutation(v23);
          }

          v42 = *(*(&v53 + 1) + 8 * i);
          v43 = objc_msgSend_layoutController(v42, v30, v36, v37, v38, v39, v31, v32, v33, v34, v53);
          v44 = v43 == controllerCopy;

          if (v44)
          {
            objc_msgSend_processWidowAndInflation(v42, v30, v36, v37, v38, v39, v31, v32, v33, v34);
            objc_msgSend_processWidowAndInflationOnPage_(self->_flowController, v45, v49, v50, v51, v52, v42, v46, v47, v48);
          }
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v30, v36, v37, v38, v39, &v53, v57, 16, v34);
      }

      while (v35);
    }
  }
}

- (id)p_pageInfosForBodySelection:(id)selection
{
  selectionCopy = selection;
  v16 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v10, v11, v12, v13, v6, v7, v8, v9);
  if (selectionCopy)
  {
    v21 = objc_msgSend_pageIndexesForSelection_forcePagination_outEndIsValid_(self, v14, v17, v18, v19, v20, selectionCopy, 0, 0, v15);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_27602182C;
    v31[3] = &unk_27A6A9448;
    v32 = v16;
    selfCopy = self;
    objc_msgSend_enumerateIndexesUsingBlock_(v21, v22, v26, v27, v28, v29, v31, v23, v24, v25);
  }

  return v16;
}

- (id)p_pageIndicesForFlow:(id)flow withSelection:(id)selection forcePagination:(BOOL)pagination
{
  paginationCopy = pagination;
  v286 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  selectionCopy = selection;
  v277 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v280 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v33 = objc_msgSend_documentRoot(self, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v43 = objc_msgSend_floatingDrawables(v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);

  v273 = objc_msgSend_DEPRECATED_range(selectionCopy, v44, v49, v50, v51, v52, v45, v46, v47, v48);
  range1 = v53;
  isInsertionPoint = objc_msgSend_isInsertionPoint(selectionCopy, v53, v58, v59, v60, v61, v54, v55, v56, v57);
  v265 = objc_msgSend_caretLFAffinity(selectionCopy, v63, v68, v69, v70, v71, v64, v65, v66, v67);
  v264 = objc_msgSend_textStorage(flowCopy, v72, v77, v78, v79, v80, v73, v74, v75, v76);
  v272 = objc_msgSend_length(v264, v81, v86, v87, v88, v89, v82, v83, v84, v85);
  v99 = objc_msgSend_isInsertionPoint(selectionCopy, v90, v95, v96, v97, v98, v91, v92, v93, v94);
  if (v265 == 1)
  {
    v109 = 0;
  }

  else
  {
    v109 = v99;
  }

  if (v109 == 1)
  {
    v270 = objc_msgSend_leadingCharIndex(selectionCopy, v100, v105, v106, v107, v108, v101, v102, v103, v104);
  }

  else
  {
    v270 = v273;
  }

  v283 = 0u;
  v284 = 0u;
  v281 = 0u;
  v282 = 0u;
  obj = objc_msgSend_textboxes(flowCopy, v100, 0, v106, v107, v108, v101, v102, v103, v104);
  v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v110, v112, v113, v114, v115, &v281, v285, 16, v111);
  if (v120)
  {
    v125 = *v282;
    v268 = isInsertionPoint ^ 1;
    v263 = v270 - 1;
    do
    {
      for (i = 0; i != v120; ++i)
      {
        if (*v282 != v125)
        {
          objc_enumerationMutation(obj);
        }

        v131 = objc_msgSend_pageIndexForDrawable_(v43, v116, v121, v122, v123, v124, *(*(&v281 + 1) + 8 * i), v117, v118, v119, v263);
        if (v131 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v136 = MEMORY[0x277D81150];
          v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v127, v132, v133, v134, v135, "[TPPaginatedPageController p_pageIndicesForFlow:withSelection:forcePagination:]", v128, v129, v130);
          v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, v142, v143, v144, v145, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v139, v140, v141);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v136, v147, v148, v149, v150, v151, v137, v146, 4115, 0, "Page index not found for text box in flow");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v152, v157, v158, v159, v160, v153, v154, v155, v156);
          continue;
        }

        if (selectionCopy)
        {
          if ((objc_msgSend_containsIndex_(v280, v127, v132, v133, v134, v135, v131, v128, v129, v130) & 1) == 0)
          {
            v169 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v161, v165, v166, v167, v168, v131, paginationCopy, 0, v164);
            v179 = v169;
            if (!v169)
            {
              goto LABEL_47;
            }

            v180 = objc_msgSend_flowHints(v169, v170, v175, v176, v177, v178, v171, v172, v173, v174);
            v189 = objc_msgSend_objectForKeyedSubscript_(v180, v181, v185, v186, v187, v188, flowCopy, v182, v183, v184);
            v199 = v189;
            if (!v189)
            {
              goto LABEL_46;
            }

            v200 = objc_msgSend_range(v189, v190, v195, v196, v197, v198, v191, v192, v193, v194);
            v202 = v201;
            if (!objc_msgSend_lineFragmentCount(v199, v201, v207, v208, v209, v210, v203, v204, v205, v206) || v200 == *MEMORY[0x277D81490] && v202 == *(MEMORY[0x277D81490] + 8))
            {
              goto LABEL_46;
            }

            if (v200 + v202 > v272)
            {
              v266 = MEMORY[0x277D81150];
              v271 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v211, v215, v216, v217, v218, "[TPPaginatedPageController p_pageIndicesForFlow:withSelection:forcePagination:]", v212, v213, v214);
              v227 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v219, v223, v224, v225, v226, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v220, v221, v222);
              v228 = v266;
              v267 = v227;
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v228, v229, v230, v231, v232, v233, v271, v227, 4128, 0, "Bad flow hint past end of text storage");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v234, v239, v240, v241, v242, v235, v236, v237, v238);
            }

            v288.location = v273;
            v288.length = range1;
            v289.location = v200;
            v289.length = v202;
            v252 = NSIntersectionRange(v288, v289);
            length = v252.length;
            v253 = v252.length != 0;
            if (v253 | v268 & 1)
            {
LABEL_24:
              if (!v253)
              {
LABEL_25:
                v254 = objc_msgSend_superRange(selectionCopy, length, v248, v249, v250, v251, v244, v245, v246, v247);
                if (v254 + v255 < v200)
                {

                  goto LABEL_51;
                }

LABEL_46:

LABEL_47:
                goto LABEL_48;
              }
            }

            else
            {
              v256 = v200 + v202;
              if (v265 != 1)
              {
                v256 = v200;
              }

              v258 = v270 != v200 && v273 - v200 < v202 && v273 >= v200;
              if (!v258 && v270 != v256)
              {
                if (v270 != v200 + v202 || !v272 || v270 != v272)
                {
                  goto LABEL_25;
                }

                v259 = objc_msgSend_characterAtIndex_(v264, v252.length, v248, v249, v250, v251, v263, v245, v246, v247);
                v261 = IsParagraphBreakingCharacter() ^ 1;
                if (v259 == 8232)
                {
                  LOBYTE(v261) = 0;
                }

                if ((v261 & 1) == 0)
                {
                  v253 = objc_msgSend_endOfLayout(v199, length, v248, v249, v250, v251, v260, v245, v246, v247);
                  goto LABEL_24;
                }
              }
            }

            objc_msgSend_addIndex_(v277, length, v248, v249, v250, v251, v131, v245, v246, v247);
            goto LABEL_46;
          }
        }

        else
        {
          objc_msgSend_addIndex_(v277, v127, v132, v133, v134, v135, v131, v128, v129, v130);
        }

LABEL_48:
        objc_msgSend_addIndex_(v280, v161, v165, v166, v167, v168, v131, v162, v163, v164);
      }

      v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v116, v121, v122, v123, v124, &v281, v285, 16, v119);
    }

    while (v120);
  }

LABEL_51:

  return v277;
}

- (id)p_pageInfosForFlow:(id)flow withSelection:(id)selection
{
  v10 = objc_msgSend_p_pageIndicesForFlow_withSelection_forcePagination_(self, a2, v5, v6, v7, v8, flow, selection, 1, v4);
  v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v31[0] = MEMORY[0x277D85DD0];
  v21.n128_u64[0] = 3221225472;
  v31[1] = 3221225472;
  v31[2] = sub_276021F78;
  v31[3] = &unk_27A6A9448;
  v31[4] = self;
  v31[5] = v20;
  objc_msgSend_enumerateIndexesUsingBlock_(v10, v22, v21, v26, v27, v28, v31, v23, v24, v25);
  v29 = v20;

  return v20;
}

- (void)p_checkForBackUp
{
  if (!self->_checkedForBackUp)
  {
    self->_checkedForBackUp = 1;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    if (objc_msgSend_pageIndex(self->_paginationState, a2, v6, v7, v8, v9, v2, v3, v4, v5))
    {
      v151 = 0x7FFFFFFFFFFFFFFFLL;
      v21 = objc_msgSend_p_lastValidTextPageHint_(self, v11, v16, v17, v18, v19, &v151, v13, v14, v15);
      v22 = v21;
      if (v21)
      {
        bodyLayoutManager = self->_bodyLayoutManager;
        v24 = objc_msgSend_lastColumn(v21, v11, v16, v17, v18, v19, v12, v13, v14, v15);
        LODWORD(bodyLayoutManager) = objc_msgSend_needsLayoutInColumn_(bodyLayoutManager, v25, v29, v30, v31, v32, v24, v26, v27, v28);

        if (bodyLayoutManager)
        {
          v20 = v151;
        }

        else
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }

    else
    {
      v22 = 0;
    }

    if (objc_msgSend_documentPageIndex(self->_paginationState, v11, v16, v17, v18, v19, v12, v13, v14, v15))
    {
      flowController = self->_flowController;
      v43 = objc_msgSend_documentPageIndex(self->_paginationState, v33, v38, v39, v40, v41, v34, v35, v36, v37);
      v52 = objc_msgSend_pageIndexNeedingLayoutPreviousToPageIndex_(flowController, v44, v48, v49, v50, v51, v43, v45, v46, v47);
      if (v52 < v20)
      {
        v53 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v33, v38, v39, v40, v41, v52, 0, 0, v37);
        v54 = v53;
        if (v53)
        {
          v55 = v53;

          v22 = v55;
          v20 = v52;
        }
      }
    }

    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v56 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v33, v38, v39, v40, v41, v20, 0, 0, v37);
      objc_msgSend_backUpToPageIndexPath_documentPageIndex_(self->_paginationState, v57, v60, v61, v62, v63, v56, v20, v58, v59);
      objc_msgSend_p_destroyBodyLayoutState(self, v64, v69, v70, v71, v72, v65, v66, v67, v68);
      v82 = objc_msgSend_range(v22, v73, v78, v79, v80, v81, v74, v75, v76, v77);
      objc_msgSend_setBodyCharIndex_(self->_paginationState, v83, v87, v88, v89, v90, v82, v84, v85, v86);
      v100 = objc_msgSend_footnoteLayoutRange(v22, v91, v96, v97, v98, v99, v92, v93, v94, v95);
      objc_msgSend_setFootnoteIndex_(self->_paginationState, v101, v105, v106, v107, v108, v100, v102, v103, v104);
      if (objc_msgSend_bodyCharIndex(self->_paginationState, v109, v114, v115, v116, v117, v110, v111, v112, v113) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v126 = MEMORY[0x277D81150];
        v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, v122, v123, v124, v125, "[TPPaginatedPageController p_checkForBackUp]", v119, v120, v121);
        v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, v132, v133, v134, v135, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v129, v130, v131);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v137, v138, v139, v140, v141, v127, v136, 4213, 0, "Last valid text page should have a valid body range");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v142, v147, v148, v149, v150, v143, v144, v145, v146);
      }
    }
  }
}

- (void)p_paginateThroughPageIndex:(unint64_t)index forLayoutController:(id)controller clearOffscreenInfos:(BOOL)infos
{
  infosCopy = infos;
  v230 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (self->_paginationState)
  {
    v17 = objc_msgSend_documentRoot(self, v7, v13, v14, v15, v16, v8, v9, v10, v11);
    isAlternativePageIndex_documentRoot = objc_msgSend_isAlternativePageIndex_documentRoot_(TPPageInfo, v18, v21, v22, v23, v24, index, v17, v19, v20);

    if ((isAlternativePageIndex_documentRoot & 1) == 0)
    {
      if (objc_msgSend_isPaginating(self, v26, v31, v32, v33, v34, v27, v28, v29, v30))
      {
        v43 = MEMORY[0x277D81150];
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v39, v40, v41, v42, "[TPPaginatedPageController p_paginateThroughPageIndex:forLayoutController:clearOffscreenInfos:]", v36, v37, v38);
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v46, v47, v48);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v54, v55, v56, v57, v58, v44, v53, 4226, 0, "shouldn't trigger pagination during pagination");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v64, v65, v66, v67, v60, v61, v62, v63);
      }

      currentPageBeingLaidOut = self->_currentPageBeingLaidOut;
      if (currentPageBeingLaidOut <= index && currentPageBeingLaidOut != 0x7FFFFFFFFFFFFFFFLL)
      {
        v70 = MEMORY[0x277D81150];
        v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v39, v40, v41, v42, "[TPPaginatedPageController p_paginateThroughPageIndex:forLayoutController:clearOffscreenInfos:]", v36, v37, v38);
        v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v73, v74, v75);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v81, v82, v83, v84, v85, v71, v80, 4230, 0, "shouldn't trigger layout of another page during layout");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v86, v91, v92, v93, v94, v87, v88, v89, v90);
        currentPageBeingLaidOut = self->_currentPageBeingLaidOut;
      }

      if (currentPageBeingLaidOut == 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_p_processWidowsAndInflationForLayoutController_(self, v35, v39, v40, v41, v42, controllerCopy, v36, v37, v38);
        if ((objc_msgSend_p_isPaginationComplete(self, v95, v100, v101, v102, v103, v96, v97, v98, v99) & 1) == 0)
        {
          self->_currentPageBeingLaidOut = objc_msgSend_documentPageIndex(self->_paginationState, v104, v109, v110, v111, v112, v105, v106, v107, v108);
          v122 = objc_msgSend_dirtyRanges(self->_bodyLayoutManager, v113, v118, v119, v120, v121, v114, v115, v116, v117);
          v132 = objc_msgSend_copy(v122, v123, v128, v129, v130, v131, v124, v125, v126, v127);

          objc_msgSend_p_checkForBackUp(self, v133, v138, v139, v140, v141, v134, v135, v136, v137);
          v151 = 0;
          while (objc_msgSend_documentPageIndex(self->_paginationState, v142, v147, v148, v149, v150, v143, v144, v145, v146) <= index && (objc_msgSend_p_isPaginationComplete(self, v152, v157, v158, v159, v160, v153, v154, v155, v156) & 1) == 0)
          {
            objc_msgSend_p_layOutNextPageForLayoutController_dirtyRange_(self, v152, v157, v158, v159, v160, controllerCopy, v132, v155, v156);
            self->_currentPageBeingLaidOut = objc_msgSend_documentPageIndex(self->_paginationState, v161, v166, v167, v168, v169, v162, v163, v164, v165);
            v151 = 1;
          }

          if (v151)
          {
            if (infosCopy)
            {
              v170 = objc_msgSend_canvas(self->_offscreenSearchDelegate, v152, v157, v158, v159, v160, v153, v154, v155, v156);
              objc_msgSend_setInfosToDisplay_(v170, v171, v175, v176, v177, v178, 0, v172, v173, v174);
            }

            objc_msgSend_p_processWidowsAndInflationForLayoutController_(self, v152, v157, v158, v159, v160, controllerCopy, v154, v155, v156);
            objc_msgSend_p_didLayOut(self, v179, v184, v185, v186, v187, v180, v181, v182, v183);
            v188 = controllerCopy;
            if (v188)
            {
              v198 = v188;
              objc_msgSend_notifyThatLayoutsChangedOutsideOfLayout(v188, v189, v194, v195, v196, v197, v190, v191, v192, v193);
            }

            else
            {
              v227 = 0u;
              v228 = 0u;
              v225 = 0u;
              v226 = 0u;
              v199 = self->_layoutObservers;
              v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v199, v200, v202, v203, v204, v205, &v225, v229, 16, v201);
              if (v206)
              {
                v207 = *v226;
                do
                {
                  for (i = 0; i != v206; ++i)
                  {
                    if (*v226 != v207)
                    {
                      objc_enumerationMutation(v199);
                    }

                    v209 = TSUProtocolCast();
                    objc_msgSend_layoutsChangedOutsideOfLayoutForPageController_(v209, v210, v214, v215, v216, v217, self, v211, v212, v213, &unk_288546998);
                  }

                  v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(v199, v218, v220, v221, v222, v223, &v225, v229, 16, v219);
                }

                while (v206);
              }

              v198 = 0;
            }
          }

          self->_currentPageBeingLaidOut = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }
}

- (void)p_layOutNextPageForLayoutController:(id)controller dirtyRange:(id)range
{
  controllerCopy = controller;
  rangeCopy = range;
  v8 = objc_autoreleasePoolPush();
  v18 = objc_msgSend_documentRoot(self, v9, v14, v15, v16, v17, v10, v11, v12, v13);

  if (!v18)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v24, v25, v26, v27, "[TPPaginatedPageController p_layOutNextPageForLayoutController:dirtyRange:]", v21, v22, v23);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v31, v32, v33);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v39, v40, v41, v42, v43, v29, v38, 4295, 0, "invalid nil value for '%{public}s'", "self.documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v49, v50, v51, v52, v45, v46, v47, v48);
  }

  v53 = objc_msgSend_sectionHints(self->_paginationState, v19, v24, v25, v26, v27, v20, v21, v22, v23);

  if (!v53)
  {
    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v59, v60, v61, v62, "[TPPaginatedPageController p_layOutNextPageForLayoutController:dirtyRange:]", v56, v57, v58);
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v66, v67, v68);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v74, v75, v76, v77, v78, v64, v73, 4296, 0, "invalid nil value for '%{public}s'", "_paginationState.sectionHints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v84, v85, v86, v87, v80, v81, v82, v83);
  }

  v88 = objc_msgSend_sectionIndex(self->_paginationState, v54, v59, v60, v61, v62, v55, v56, v57, v58);
  v98 = objc_msgSend_sectionHints(self->_paginationState, v89, v94, v95, v96, v97, v90, v91, v92, v93);
  v108 = objc_msgSend_count(v98, v99, v104, v105, v106, v107, v100, v101, v102, v103);

  if (v88 > v108)
  {
    v118 = MEMORY[0x277D81150];
    v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, v114, v115, v116, v117, "[TPPaginatedPageController p_layOutNextPageForLayoutController:dirtyRange:]", v111, v112, v113);
    v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, v124, v125, v126, v127, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v121, v122, v123);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v129, v130, v131, v132, v133, v119, v128, 4297, 0, "Section index is past the last section hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v134, v139, v140, v141, v142, v135, v136, v137, v138);
  }

  if (objc_msgSend_isPaginating(self, v109, v114, v115, v116, v117, v110, v111, v112, v113))
  {
    v152 = MEMORY[0x277D81150];
    v153 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, v148, v149, v150, v151, "[TPPaginatedPageController p_layOutNextPageForLayoutController:dirtyRange:]", v145, v146, v147);
    v162 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v154, v158, v159, v160, v161, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v155, v156, v157);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v152, v163, v164, v165, v166, v167, v153, v162, 4298, 0, "already laying out a page");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v168, v173, v174, v175, v176, v169, v170, v171, v172);
  }

  objc_msgSend_p_preparePaginationStateForNextPage(self, v143, v148, v149, v150, v151, v144, v145, v146, v147);
  objc_msgSend_p_prepareSectionHintForNextPage(self, v177, v182, v183, v184, v185, v178, v179, v180, v181);
  objc_msgSend_p_preparePageHintForNextPage(self, v186, v191, v192, v193, v194, v187, v188, v189, v190);
  v447 = 0;
  v448 = &v447;
  v195.n128_u64[0] = 0x2020000000;
  v449 = 0x2020000000;
  v450 = 0;
  objc_msgSend_setIsPaginating_(self, v196, v195, v200, v201, v202, 1, v197, v198, v199);
  v440 = 0;
  v441 = &v440;
  v442 = 0x4012000000;
  v443 = sub_27601745C;
  v444 = nullsub_2;
  v445 = &unk_2760658C2;
  v446 = *MEMORY[0x277D81490];
  v211 = objc_msgSend_documentPageIndex(self->_paginationState, v203, v446, v208, v209, v210, v204, v205, v206, v207);
  v439[0] = MEMORY[0x277D85DD0];
  v212.n128_u64[0] = 3221225472;
  v439[1] = 3221225472;
  v439[2] = sub_276022DC8;
  v439[3] = &unk_27A6A9470;
  v439[4] = self;
  v439[5] = &v447;
  v439[6] = &v440;
  objc_msgSend_p_withPageLayoutAtIndex_preferredLayoutController_executeBlock_(self, v213, v212, v215, v216, v217, v211, controllerCopy, v439, v214);
  if (*(v448 + 24) == 1)
  {
    v227 = v441[6];
    v228 = v441[7];
    v229 = objc_msgSend_documentRoot(self, v218, v223, v224, v225, v226, v219, v220, v221, v222);
    v239 = objc_msgSend_bodyStorage(v229, v230, v235, v236, v237, v238, v231, v232, v233, v234);
    v246 = v239;
    if (v239)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v239, v242, v243, v244, v245, v240, v228 + v227, 0, v241);
    }

    else
    {
      v438 = 0;
      memset(v437, 0, sizeof(v437));
    }

    v247 = TSWPParagraphEnumerator::paragraphTextRange(v437);
    v255 = objc_msgSend_dirtyRangesIntersecting_(rangeCopy, v248, v251, v252, v253, v254, v247, v248, v249, v250);
    if ((objc_msgSend_isEmpty(v255, v256, v261, v262, v263, v264, v257, v258, v259, v260) & 1) == 0)
    {
      *(v448 + 24) = 0;
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(v437);
  }

  objc_msgSend_advancePageIndex(self->_paginationState, v218, v223, v224, v225, v226, v219, v220, v221, v222);
  v274 = objc_msgSend_documentPageIndex(self->_paginationState, v265, v270, v271, v272, v273, v266, v267, v268, v269);
  v287 = objc_msgSend_i_pageHintForPageIndex_(self, v275, v279, v280, v281, v282, v274 - 1, v276, v277, v278);
  if (!v287)
  {
    v292 = MEMORY[0x277D81150];
    v293 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v283, v288, v289, v290, v291, "[TPPaginatedPageController p_layOutNextPageForLayoutController:dirtyRange:]", v284, v285, v286);
    v302 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v294, v298, v299, v300, v301, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v295, v296, v297);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v292, v303, v304, v305, v306, v307, v293, v302, 4340, 0, "invalid nil value for '%{public}s'", "pageHint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v308, v313, v314, v315, v316, v309, v310, v311, v312);
  }

  objc_msgSend_setIsPaginating_(self, v283, v288, v289, v290, v291, 0, v284, v285, v286);
  objc_msgSend_p_notifyObserversDidLayoutWhileSyncing_(self, v317, v321, v322, v323, v324, 0, v318, v319, v320);
  LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, v325, v330, v331, v332, v333, v326, v327, v328, v329);
  objc_msgSend_p_invalidateThumbnailForPageIndex_(self, v335, v339, v340, v341, v342, LaidOutDocumentPageIndex, v336, v337, v338);
  v352 = objc_msgSend_documentRoot(self, v343, v348, v349, v350, v351, v344, v345, v346, v347);
  v362 = objc_msgSend_settings(v352, v353, v358, v359, v360, v361, v354, v355, v356, v357);
  if (!objc_msgSend_hasBody(v362, v363, v368, v369, v370, v371, v364, v365, v366, v367))
  {

    goto LABEL_24;
  }

  if (v448[3])
  {
  }

  else
  {
    isBodyLayoutComplete = objc_msgSend_p_isBodyLayoutComplete(self, v372, v377, v378, v379, v380, v373, v374, v375, v376);

    if ((isBodyLayoutComplete & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  objc_msgSend_p_syncFromNextPageWithDirtyRanges_pageTextRange_(self, v381, v384, v385, v386, v387, rangeCopy, (v441 + 6), v382, v383);
LABEL_24:
  objc_msgSend_p_removeFinishedPageGenerators(self, v381, v384, v385, v386, v387, v388, v389, v382, v383);
  if (!objc_msgSend_count(self->_pageGeneratorStack, v391, v396, v397, v398, v399, v392, v393, v394, v395))
  {
    objc_msgSend_p_advanceSectionIndex(self, v400, v405, v406, v407, v408, v401, v402, v403, v404);
  }

  v409 = objc_msgSend_documentRoot(self, v400, v405, v406, v407, v408, v401, v402, v403, v404);
  v419 = objc_msgSend_settings(v409, v410, v415, v416, v417, v418, v411, v412, v413, v414);
  if (objc_msgSend_hasBody(v419, v420, v425, v426, v427, v428, v421, v422, v423, v424))
  {
  }

  else
  {
    v429 = *(v448 + 24);

    if (v429 == 1)
    {
      objc_msgSend_p_syncFromNextPageWithDirtyRanges_pageTextRange_(self, v430, v433, v434, v435, v436, rangeCopy, (v441 + 6), v431, v432);
    }
  }

  _Block_object_dispose(&v440, 8);
  _Block_object_dispose(&v447, 8);
  objc_autoreleasePoolPop(v8);
}

- (void)p_layOutIntoPageLayout:(id)layout outDidSync:(BOOL *)sync
{
  v585 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v577 = 0u;
  v578 = 0u;
  v579 = 0u;
  v580 = 0u;
  v15 = objc_msgSend_childTextLayoutsForExteriorWrap(layoutCopy, v7, 0, v12, v13, v14, v8, v9, v10, v11);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, v18, v19, v20, v21, &v577, v584, 16, v17);
  if (v27)
  {
    v32 = *v578;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v578 != v32)
        {
          objc_enumerationMutation(v15);
        }

        v34 = *(*(&v577 + 1) + 8 * i);
        if (objc_msgSend_isLinked(v34, v22, v28, v29, v30, v31, v23, v24, v25, v26))
        {
          objc_msgSend_invalidateTextLayout(v34, v22, v28, v29, v30, v31, v23, v24, v25, v26);
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v22, v28, v29, v30, v31, &v577, v584, 16, v26);
    }

    while (v27);
  }

  v576 = 0x7FFFFFFFFFFFFFFFLL;
  if (objc_msgSend_allowsBody(layoutCopy, v35, v40, v41, v42, v43, v36, v37, v38, v39))
  {
    objc_msgSend_p_layOutTextIntoPageLayout_didSync_initialFootnoteIndex_(self, v44, v48, v49, v50, v51, layoutCopy, sync, &v576, v47);
    objc_msgSend_layOutFlowsIfNeededOnPage_(self->_flowController, v52, v56, v57, v58, v59, layoutCopy, v53, v54, v55);
    v69 = objc_msgSend_pageIndexPath(self->_paginationState, v60, v65, v66, v67, v68, v61, v62, v63, v64);
    v79 = objc_msgSend_bodyLayout(layoutCopy, v70, v75, v76, v77, v78, v71, v72, v73, v74);
    objc_msgSend_p_updateTextHintAtPageIndexPath_withTarget_(self, v80, v83, v84, v85, v86, v69, v79, v81, v82);

    v96 = objc_msgSend_pageIndexPath(self->_paginationState, v87, v92, v93, v94, v95, v88, v89, v90, v91);
    v105 = objc_msgSend_p_pageHintForPageIndexPath_(self, v97, v101, v102, v103, v104, v96, v98, v99, v100);

    v115 = objc_msgSend_range(v105, v106, v111, v112, v113, v114, v107, v108, v109, v110);
    objc_msgSend_setBodyCharIndex_(self->_paginationState, v116, v120, v121, v122, v123, &v116[v115], v117, v118, v119);
    goto LABEL_20;
  }

  objc_msgSend_layOutFlowsIfNeededOnPage_(self->_flowController, v44, v48, v49, v50, v51, layoutCopy, v45, v46, v47);
  v133 = objc_msgSend_pageIndexPath(self->_paginationState, v124, v129, v130, v131, v132, v125, v126, v127, v128);
  v105 = objc_msgSend_p_pageHintForPageIndexPath_(self, v134, v138, v139, v140, v141, v133, v135, v136, v137);

  if (objc_msgSend_pageKind(v105, v142, v147, v148, v149, v150, v143, v144, v145, v146) == 6)
  {
    v160 = objc_msgSend_pageIndexPath(self->_paginationState, v151, v156, v157, v158, v159, v152, v153, v154, v155);
    v170 = objc_msgSend_documentRoot(self, v161, v166, v167, v168, v169, v162, v163, v164, v165);
    v180 = objc_msgSend_bodyStorage(v170, v171, v176, v177, v178, v179, v172, v173, v174, v175);
    objc_msgSend_updateRangeForIndexPath_withStorage_(v105, v181, v184, v185, v186, v187, v160, v180, v182, v183);
  }

  objc_msgSend_range(v105, v151, v156, v157, v158, v159, v152, v153, v154, v155);
  if ((v188 || objc_msgSend_pageKind(v105, 0, v193, v194, v195, v196, v189, v190, v191, v192) == 6) && objc_msgSend_pageKind(v105, v188, v193, v194, v195, v196, v189, v190, v191, v192) == 6)
  {
    bodyLayoutManager = self->_bodyLayoutManager;
    v198 = objc_msgSend_range(v105, v188, v193, v194, v195, v196, v189, v190, v191, v192);
    objc_msgSend_removeDirtyRange_(bodyLayoutManager, v199, v202, v203, v204, v205, v198, v199, v200, v201);
  }

  v206 = objc_msgSend_pageIndexPath(self->_paginationState, v188, v193, v194, v195, v196, v189, v190, v191, v192);
  objc_msgSend_p_updateNonTextHintAtPageIndexPath_pageLayout_(self, v207, v210, v211, v212, v213, v206, layoutCopy, v208, v209);

  v223 = objc_msgSend_pageIndexPath(self->_paginationState, v214, v219, v220, v221, v222, v215, v216, v217, v218);
  if (objc_msgSend_pageIndex(v223, v224, v229, v230, v231, v232, v225, v226, v227, v228))
  {
    goto LABEL_19;
  }

  objc_msgSend_range(v105, v233, v238, v239, v240, v241, v234, v235, v236, v237);
  v450 = v449 == 0;

  if (!v450)
  {
    v460 = objc_msgSend_pageIndexPath(self->_paginationState, v451, v456, v457, v458, v459, v452, v453, v454, v455);
    v470 = objc_msgSend_sectionIndex(v460, v461, v466, v467, v468, v469, v462, v463, v464, v465);
    v480 = objc_msgSend_sectionHints(self->_paginationState, v471, v476, v477, v478, v479, v472, v473, v474, v475);
    LODWORD(v470) = v470 + 1 < objc_msgSend_count(v480, v481, v486, v487, v488, v489, v482, v483, v484, v485);

    if (v470)
    {
      v499 = objc_msgSend_pageIndexPath(self->_paginationState, v490, v495, v496, v497, v498, v491, v492, v493, v494);
      v223 = objc_msgSend_copy(v499, v500, v505, v506, v507, v508, v501, v502, v503, v504);

      v518 = objc_msgSend_sectionIndex(v223, v509, v514, v515, v516, v517, v510, v511, v512, v513);
      objc_msgSend_setSectionIndex_(v223, v519, v523, v524, v525, v526, v518 + 1, v520, v521, v522);
      v535 = objc_msgSend_p_pageHintForPageIndexPath_(self, v527, v531, v532, v533, v534, v223, v528, v529, v530);
      if (objc_msgSend_pageKind(v535, v536, v541, v542, v543, v544, v537, v538, v539, v540) != 5)
      {
        v554 = objc_msgSend_range(v105, v545, v550, v551, v552, v553, v546, v547, v548, v549);
        *sync = &v563[v554] == objc_msgSend_range(v535, v563, v559, v560, v561, v562, v555, v556, v557, v558);
      }

LABEL_19:
    }
  }

LABEL_20:

  v574 = 0u;
  v575 = 0u;
  v572 = 0u;
  v573 = 0u;
  v250 = objc_msgSend_childTextLayoutsForExteriorWrap(layoutCopy, v242, 0, v247, v248, v249, v243, v244, v245, v246);
  v262 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v251, v253, v254, v255, v256, &v572, v583, 16, v252);
  if (v262)
  {
    v267 = *v573;
    do
    {
      for (j = 0; j != v262; ++j)
      {
        if (*v573 != v267)
        {
          objc_enumerationMutation(v250);
        }

        v269 = *(*(&v572 + 1) + 8 * j);
        if ((objc_msgSend_isLinked(v269, v257, v263, v264, v265, v266, v258, v259, v260, v261) & 1) == 0)
        {
          if (objc_msgSend_parentAutosizes(v269, v257, v263, v264, v265, v266, v258, v259, v260, v261))
          {
            objc_msgSend_invalidateSize(v269, v270, v275, v276, v277, v278, v271, v272, v273, v274);
          }

          else
          {
            objc_msgSend_invalidateTextLayout(v269, v270, v275, v276, v277, v278, v271, v272, v273, v274);
          }
        }
      }

      v262 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v257, v263, v264, v265, v266, &v572, v583, 16, v261);
    }

    while (v262);
  }

  if (objc_msgSend_allowsFootnotes(layoutCopy, v279, v284, v285, v286, v287, v280, v281, v282, v283))
  {
    objc_msgSend_p_layOutFootnotesIntoPageLayout_(self, v288, v293, v294, v295, v296, layoutCopy, v290, v291, v292);
  }

  else if (objc_msgSend_allowsBody(layoutCopy, v288, v293, v294, v295, v296, v289, v290, v291, v292))
  {
    v306 = objc_msgSend_pageIndexPath(self->_paginationState, v297, v302, v303, v304, v305, v298, v299, v300, v301);
    v315 = objc_msgSend_p_pageHintForPageIndexPath_(self, v307, v311, v312, v313, v314, v306, v308, v309, v310);

    objc_msgSend_setFootnoteLayoutRange_(v315, v316, v319, v320, v321, v322, v576, 0, v317, v318);
    v332 = objc_msgSend_footnoteContainerLayout(layoutCopy, v323, v328, v329, v330, v331, v324, v325, v326, v327);
    objc_msgSend_removeAllFootnoteLayouts(v332, v333, v338, v339, v340, v341, v334, v335, v336, v337);
  }

  v342 = objc_msgSend_documentPageIndex(self->_paginationState, v297, v302, v303, v304, v305, v298, v299, v300, v301);
  objc_msgSend_pageLayoutsWithPageIndex_(self->_pageLayoutCache, v343, v347, v348, v349, v350, v342, v344, v345, v346);
  v570 = 0u;
  v571 = 0u;
  v568 = 0u;
  v351 = v569 = 0u;
  v363 = objc_msgSend_countByEnumeratingWithState_objects_count_(v351, v352, v354, v355, v356, v357, &v568, v582, 16, v353);
  if (v363)
  {
    v368 = *v569;
    do
    {
      for (k = 0; k != v363; ++k)
      {
        if (*v569 != v368)
        {
          objc_enumerationMutation(v351);
        }

        v370 = *(*(&v568 + 1) + 8 * k);
        if (v370 != layoutCopy)
        {
          objc_msgSend_setNeedsInflation(v370, v358, v364, v365, v366, v367, v359, v360, v361, v362);
        }
      }

      v363 = objc_msgSend_countByEnumeratingWithState_objects_count_(v351, v358, v364, v365, v366, v367, &v568, v582, 16, v362);
    }

    while (v363);
  }

  if (objc_msgSend_allowsBody(layoutCopy, v371, v376, v377, v378, v379, v372, v373, v374, v375))
  {
    v389 = objc_msgSend_bodyLayout(layoutCopy, v380, v385, v386, v387, v388, v381, v382, v383, v384);
    v399 = objc_msgSend_needsInflation(v389, v390, v395, v396, v397, v398, v391, v392, v393, v394);

    if (v399)
    {
      v400 = MEMORY[0x277D81150];
      v401 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v380, v385, v386, v387, v388, "[TPPaginatedPageController p_layOutIntoPageLayout:outDidSync:]", v382, v383, v384);
      v410 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v402, v406, v407, v408, v409, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v403, v404, v405);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v400, v411, v412, v413, v414, v415, v401, v410, 4477, 0, "Body layout should not need inflation immediately after layout.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v416, v421, v422, v423, v424, v417, v418, v419, v420);
    }
  }

  self->_didLayOutPageIndex = objc_msgSend_pageIndex(layoutCopy, v380, v385, v386, v387, v388, v381, v382, v383, v384);
  v564 = 0u;
  v565 = 0u;
  v566 = 0u;
  v567 = 0u;
  v425 = self->_layoutObservers;
  v432 = objc_msgSend_countByEnumeratingWithState_objects_count_(v425, v426, v428, v429, v430, v431, &v564, v581, 16, v427);
  if (v432)
  {
    v433 = *v565;
    do
    {
      for (m = 0; m != v432; ++m)
      {
        if (*v565 != v433)
        {
          objc_enumerationMutation(v425);
        }

        v435 = TSUProtocolCast();
        objc_msgSend_pageController_didLayOutPageLayout_(v435, v436, v439, v440, v441, v442, self, layoutCopy, v437, v438, &unk_288546998);
      }

      v432 = objc_msgSend_countByEnumeratingWithState_objects_count_(v425, v443, v445, v446, v447, v448, &v564, v581, 16, v444);
    }

    while (v432);
  }

  self->_didLayOutPageIndex = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)p_layOutTextIntoPageLayout:(id)layout didSync:(BOOL *)sync initialFootnoteIndex:(unint64_t *)index
{
  layoutCopy = layout;
  *index = objc_msgSend_footnoteIndex(self->_paginationState, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v26 = objc_msgSend_bodyLayout(layoutCopy, v17, v22, v23, v24, v25, v18, v19, v20, v21);
  v36 = objc_msgSend_documentRoot(self, v27, v32, v33, v34, v35, v28, v29, v30, v31);
  v533 = objc_msgSend_bodyStorage(v36, v37, v42, v43, v44, v45, v38, v39, v40, v41);

  if (!v26)
  {
    goto LABEL_33;
  }

  if (objc_msgSend_needsInflation(v26, v46, v51, v52, v53, v54, v47, v48, v49, v50))
  {
    v64 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v60, v61, v62, v63, "[TPPaginatedPageController p_layOutTextIntoPageLayout:didSync:initialFootnoteIndex:]", v57, v58, v59);
    v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v67, v68, v69);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v75, v76, v77, v78, v79, v65, v74, 4506, 0, "Body layout shouldn't need inflation when laying out body text");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v85, v86, v87, v88, v81, v82, v83, v84);
  }

  v89 = objc_msgSend_pageIndex(layoutCopy, v55, v60, v61, v62, v63, v56, v57, v58, v59);
  v532 = objc_msgSend_footnoteHeightMeasurer(v26, v90, v95, v96, v97, v98, v91, v92, v93, v94);
  if (!objc_msgSend_footnoteCount(v533, v99, v104, v105, v106, v107, v100, v101, v102, v103))
  {
    goto LABEL_22;
  }

  objc_msgSend_removeAllFootnoteReferenceStorages(v532, v108, v113, v114, v115, v116, v109, v110, v111, v112);
  v126 = objc_msgSend_documentRoot(self, v117, v122, v123, v124, v125, v118, v119, v120, v121);
  if ((objc_msgSend_laysOutBodyVertically(v126, v127, v132, v133, v134, v135, v128, v129, v130, v131) & 1) == 0)
  {

LABEL_22:
    hasFacingPages = 0;
    goto LABEL_23;
  }

  v145 = objc_msgSend_documentRoot(self, v136, v141, v142, v143, v144, v137, v138, v139, v140);
  v155 = objc_msgSend_settings(v145, v146, v151, v152, v153, v154, v147, v148, v149, v150);
  hasFacingPages = objc_msgSend_hasFacingPages(v155, v156, v161, v162, v163, v164, v157, v158, v159, v160);

  if ((v89 & 1) != 0 || v89 == 0)
  {
    v167 = 0;
  }

  else
  {
    v167 = hasFacingPages;
  }

  if (v167 != 1)
  {
    goto LABEL_23;
  }

  v539 = 0x7FFFFFFFFFFFFFFFLL;
  v168 = objc_msgSend_p_lastValidTextPageHint_(self, v108, v113, v114, v115, v116, &v539, v110, v111, v112);
  v178 = v168;
  v179 = v539 + 1;
  if (v539 + 1 == v89 && v168)
  {
    if (!objc_msgSend_hasForcedFootnotes(v168, v169, v174, v175, v176, v177, v170, v171, v172, v173))
    {
      v538 = 0;
      v493 = objc_msgSend_rangeAndChildHints_(v178, v169, v174, v175, v176, v177, &v538, v171, v172, v173);
      v530 = v494;
      v495 = v493;
      v537[0] = MEMORY[0x277D85DD0];
      v537[1] = 3221225472;
      v537[2] = sub_276023F90;
      v537[3] = &unk_27A6A9498;
      v537[4] = v533;
      v537[5] = v532;
      v190 = v538;
      objc_msgSend_enumerateFootnoteAttachmentsInTextRange_usingBlock_(v533, v496, v498, v499, v500, v501, v495, v530, v537, v497);
      goto LABEL_37;
    }

    v179 = v539 + 1;
  }

  if (v179 != v89)
  {
    v180 = objc_msgSend_i_pageHintForPageIndex_(self, v169, v174, v175, v176, v177, v89 - 1, v171, v172, v173);
    v190 = v180;
    if (!v180)
    {
      v502 = MEMORY[0x277D81150];
      v527 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v181, v186, v187, v188, v189, "[TPPaginatedPageController p_layOutTextIntoPageLayout:didSync:initialFootnoteIndex:]", v183, v184, v185);
      v528 = 0;
      v208 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v503, v507, v508, v509, v510, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v504, v505, v506);
      v209 = v527;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v502, v511, v512, v513, v514, v515, v527, v208, 4537, 0, "invalid nil value for '%{public}s'", "truePreviousPageHint");
      goto LABEL_36;
    }

    if (objc_msgSend_pageKind(v180, v181, v186, v187, v188, v189, v182, v183, v184, v185) == 5)
    {
      v199 = MEMORY[0x277D81150];
      v525 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v191, v195, v196, v197, v198, "[TPPaginatedPageController p_layOutTextIntoPageLayout:didSync:initialFootnoteIndex:]", v192, v193, v194);
      v528 = v190;
      v208 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v200, v204, v205, v206, v207, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v201, v202, v203);
      v209 = v525;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v199, v210, v211, v212, v213, v214, v525, v208, 4539, 0, "Previous page hint was unexpectedly dirty");
LABEL_36:

      v190 = v528;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v516, v521, v522, v523, v524, v517, v518, v519, v520);
    }

LABEL_37:
  }

  hasFacingPages = 1;
LABEL_23:
  objc_msgSend_setOverrideAllowFootnotes_(layoutCopy, v108, v113, v114, v115, v116, 0, v110, v111, v112);
  bodyLayoutManager = self->_bodyLayoutManager;
  v225 = objc_msgSend_bodyLayoutState(self->_paginationState, v216, v221, v222, v223, v224, v217, v218, v219, v220);
  v232 = objc_msgSend_layOutIntoTarget_withLayoutState_outSync_(bodyLayoutManager, v226, v228, v229, v230, v231, v26, v225, sync, v227);
  objc_msgSend_setBodyLayoutState_(self->_paginationState, v233, v237, v238, v239, v240, v232, v234, v235, v236);
  if (hasFacingPages && (v89 & 1) != 0 && objc_msgSend_hasFootnotes(v532, v241, v246, v247, v248, v249, v242, v243, v244, v245))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_27602402C;
    aBlock[3] = &unk_27A6A94C0;
    v529 = v26;
    v535 = v529;
    selfCopy = self;
    v250 = _Block_copy(aBlock);
    if ((v250[2])())
    {
      objc_msgSend_setFootnoteIndex_(self->_paginationState, v251, v255, v256, v257, v258, 0x7FFFFFFFFFFFFFFFLL, v252, v253, v254);
      objc_msgSend_removeAllFootnoteReferenceStorages(v532, v259, v264, v265, v266, v267, v260, v261, v262, v263);
      objc_msgSend_resetFootnoteHeightMeasurer(v529, v268, v273, v274, v275, v276, v269, v270, v271, v272);
      objc_msgSend_setOverrideAllowFootnotes_(layoutCopy, v277, v281, v282, v283, v284, 1, v278, v279, v280);
      objc_msgSend_p_destroyBodyLayoutState(self, v285, v290, v291, v292, v293, v286, v287, v288, v289);
      objc_msgSend_p_preparePaginationStateForNextPage(self, v294, v299, v300, v301, v302, v295, v296, v297, v298);
      *index = objc_msgSend_footnoteIndex(self->_paginationState, v303, v308, v309, v310, v311, v304, v305, v306, v307);
      v312 = self->_bodyLayoutManager;
      v322 = objc_msgSend_bodyLayoutState(self->_paginationState, v313, v318, v319, v320, v321, v314, v315, v316, v317);
      v329 = objc_msgSend_layOutIntoTarget_withLayoutState_outSync_(v312, v323, v325, v326, v327, v328, v529, v322, sync, v324);
      objc_msgSend_setBodyLayoutState_(self->_paginationState, v330, v334, v335, v336, v337, v329, v331, v332, v333);
      if ((v250[2](v250) & 1) == 0)
      {
        v526 = objc_msgSend_sectionHint(self->_paginationState, v338, v343, v344, v345, v346, v339, v340, v341, v342);
        v356 = objc_msgSend_pageIndex(self->_paginationState, v347, v352, v353, v354, v355, v348, v349, v350, v351);
        v366 = objc_msgSend_pageHints(v526, v357, v362, v363, v364, v365, v358, v359, v360, v361);
        v376 = objc_msgSend_count(v366, v367, v372, v373, v374, v375, v368, v369, v370, v371);

        if (v356 + 1 < v376)
        {
          v386 = objc_msgSend_pageHints(v526, v377, v382, v383, v384, v385, v378, v379, v380, v381);
          v396 = objc_msgSend_pageIndex(self->_paginationState, v387, v392, v393, v394, v395, v388, v389, v390, v391);
          v405 = objc_msgSend_objectAtIndexedSubscript_(v386, v397, v401, v402, v403, v404, v396 + 1, v398, v399, v400);
          objc_msgSend_setPageKind_(v405, v406, v410, v411, v412, v413, 5, v407, v408, v409);
        }

        objc_msgSend_setFootnoteIndex_(self->_paginationState, v377, v382, v383, v384, v385, 0x7FFFFFFFFFFFFFFFLL, v379, v380, v381);
        objc_msgSend_removeAllFootnoteReferenceStorages(v532, v414, v419, v420, v421, v422, v415, v416, v417, v418);
        objc_msgSend_resetFootnoteHeightMeasurer(v529, v423, v428, v429, v430, v431, v424, v425, v426, v427);
        objc_msgSend_setOverrideAllowFootnotes_(layoutCopy, v432, v436, v437, v438, v439, 0, v433, v434, v435);
        objc_msgSend_p_destroyBodyLayoutState(self, v440, v445, v446, v447, v448, v441, v442, v443, v444);
        objc_msgSend_p_preparePaginationStateForNextPage(self, v449, v454, v455, v456, v457, v450, v451, v452, v453);
        *index = objc_msgSend_footnoteIndex(self->_paginationState, v458, v463, v464, v465, v466, v459, v460, v461, v462);
        v467 = self->_bodyLayoutManager;
        v477 = objc_msgSend_bodyLayoutState(self->_paginationState, v468, v473, v474, v475, v476, v469, v470, v471, v472);
        v484 = objc_msgSend_layOutIntoTarget_withLayoutState_outSync_(v467, v478, v480, v481, v482, v483, v529, v477, sync, v479);
        objc_msgSend_setBodyLayoutState_(self->_paginationState, v485, v489, v490, v491, v492, v484, v486, v487, v488);
      }
    }
  }

LABEL_33:
}

- (void)p_layOutFootnotesIntoPageLayout:(id)layout
{
  layoutCopy = layout;
  ValidFootnoteIndex = objc_msgSend_p_lastValidFootnoteIndex(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  if (objc_msgSend_footnoteIndex(self->_paginationState, v15, v20, v21, v22, v23, v16, v17, v18, v19) != ValidFootnoteIndex)
  {
    objc_msgSend_setFootnoteIndex_(self->_paginationState, v24, v29, v30, v31, v32, ValidFootnoteIndex, v26, v27, v28);
  }

  v33 = objc_msgSend_pageIndexPath(self->_paginationState, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v42 = objc_msgSend_p_pageHintForPageIndexPath_(self, v34, v38, v39, v40, v41, v33, v35, v36, v37);

  v252 = layoutCopy;
  v57 = objc_msgSend_footnoteContainerLayout(v252, v43, v48, v49, v50, v51, v44, v45, v46, v47);
  if (!v57)
  {
    goto LABEL_8;
  }

  v62 = objc_msgSend_footnoteContainerLayout(v252, v52, v58, v59, v60, v61, v53, v54, v55, v56);
  v72 = objc_msgSend_layoutController(v62, v63, v68, v69, v70, v71, v64, v65, v66, v67);

  if (!v72)
  {
    v57 = 0;
LABEL_8:
    objc_msgSend_setFootnoteLayoutRange_(v42, v52, v58, v59, v60, v61, *MEMORY[0x277D81510], *(MEMORY[0x277D81510] + 8), v55, v56);
    goto LABEL_9;
  }

  v251 = v42;
  footnoteLayoutController = self->_footnoteLayoutController;
  v76 = objc_msgSend_footnoteIndex(self->_paginationState, v52, v58, v59, v60, v61, v73, v74, v55, v56);
  v250 = objc_msgSend_footnoteContainerLayout(v252, v77, v82, v83, v84, v85, v78, v79, v80, v81);
  v249 = v76;
  objc_msgSend_blockHeightAvailableForFootnotes(v252, v86, v91, v92, v93, v94, v87, v88, v89, v90);
  v96 = v95.n128_u64[0];
  v105 = objc_msgSend_range(v42, v97, v95, v102, v103, v104, v98, v99, v100, v101);
  v107 = v106;
  v116 = objc_msgSend_sectionCharRange(self->_paginationState, v106, v112, v113, v114, v115, v108, v109, v110, v111);
  v118 = v117;
  Section = objc_msgSend_onLastSection(self->_paginationState, v117, v123, v124, v125, v126, v119, v120, v121, v122);
  v137 = objc_msgSend_sectionHint(self->_paginationState, v128, v133, v134, v135, v136, v129, v130, v131, v132);
  v147 = objc_msgSend_pageIndex(self->_paginationState, v138, v143, v144, v145, v146, v139, v140, v141, v142);
  v148.n128_u64[0] = v96;
  isLastSection_sectionHint_pageHintIndex = objc_msgSend_layOutFootnotesFromIndex_intoFootnoteContainer_maxBlockHeight_pageCharRange_sectionCharRange_isLastSection_sectionHint_pageHintIndex_(footnoteLayoutController, v149, v148, v150, v151, v152, v249, v250, v105, v107, v116, v118, Section, v137, v147);
  v57 = v154;

  if (isLastSection_sectionHint_pageHintIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = v251;
    objc_msgSend_setFootnoteLayoutRange_(v251, v155, v160, v161, v162, v163, *MEMORY[0x277D81510], *(MEMORY[0x277D81510] + 8), v158, v159);
LABEL_9:
    isLastSection_sectionHint_pageHintIndex = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  v42 = v251;
  v173 = objc_msgSend_allowsFootnotes(v252, v155, v160, v161, v162, v163, v156, v157, v158, v159);
  v182 = v57;
  if ((v173 & 1) == 0)
  {
    v183 = objc_msgSend_documentRoot(self, v174, v178, v179, v180, v181, v175, v57, v176, v177);
    if (objc_msgSend_laysOutBodyVertically(v183, v184, v189, v190, v191, v192, v185, v186, v187, v188))
    {
      v202 = objc_msgSend_documentRoot(self, v193, v198, v199, v200, v201, v194, v195, v196, v197);
      v212 = objc_msgSend_settings(v202, v203, v208, v209, v210, v211, v204, v205, v206, v207);
      hasFacingPages = objc_msgSend_hasFacingPages(v212, v213, v218, v219, v220, v221, v214, v215, v216, v217);

      if (hasFacingPages)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v224 = MEMORY[0x277D81150];
    v225 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v174, v178, v179, v180, v181, "[TPPaginatedPageController p_layOutFootnotesIntoPageLayout:]", v223, v176, v177);
    v234 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v226, v230, v231, v232, v233, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v227, v228, v229);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v224, v235, v236, v237, v238, v239, v225, v234, 4631, 0, "Footnotes laid out but disallowed unexpectedly");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v240, v245, v246, v247, v248, v241, v242, v243, v244);
LABEL_25:
    v182 = 0;
  }

  objc_msgSend_setFootnoteLayoutRange_(v251, v174, v178, v179, v180, v181, isLastSection_sectionHint_pageHintIndex, v182, v176, v177);
LABEL_10:
  if (v57 == *(MEMORY[0x277D81490] + 8) && isLastSection_sectionHint_pageHintIndex == *MEMORY[0x277D81490])
  {
    objc_msgSend_setFootnoteIndex_(self->_paginationState, v164, v168, v169, v170, v171, 0, v165, v166, v167);
  }

  else
  {
    objc_msgSend_setFootnoteIndex_(self->_paginationState, v164, v168, v169, v170, v171, v57 + isLastSection_sectionHint_pageHintIndex, v165, v166, v167);
  }
}

- (void)p_performPaginationResetAndMetricsReset:(BOOL)reset
{
  objc_msgSend_p_setNeedsLayoutOnPageIndex_(self, a2, v6, v7, v8, v9, 0, v3, v4, v5);
  objc_msgSend_removeAllSectionHints(self->_paginationState, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  self->_lastKnownPageCount = 1;
  self->_completePageCount = 0;
}

- (void)p_removeDeletedFootnotesOnPageLayout:(id)layout
{
  footnoteLayoutController = self->_footnoteLayoutController;
  v19 = objc_msgSend_footnoteContainerLayout(layout, a2, v6, v7, v8, v9, layout, v3, v4, v5);
  objc_msgSend_removeDeletedFootnoteInContainer_(footnoteLayoutController, v11, v15, v16, v17, v18, v19, v12, v13, v14);
}

- (void)p_updateTextHintAtPageIndexPath:(id)path withTarget:(id)target
{
  pathCopy = path;
  targetCopy = target;
  if (!targetCopy)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v12, v13, v14, v15, "[TPPaginatedPageController p_updateTextHintAtPageIndexPath:withTarget:]", v8, v9, v10);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v19, v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v27, v28, v29, v30, v31, v17, v26, 4677, 0, "Cannot update a text page hint without a target");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
  }

  v41 = objc_msgSend_p_pageHintForPageIndexPath_(self, v7, v12, v13, v14, v15, pathCopy, v8, v9, v10);
  if (objc_msgSend_pageKind(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46) != 1)
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v55, v56, v57, v58, "[TPPaginatedPageController p_updateTextHintAtPageIndexPath:withTarget:]", v52, v53, v54);
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v62, v63, v64);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v70, v71, v72, v73, v74, v60, v69, 4680, 0, "Trying to update text attributes of non-text page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v80, v81, v82, v83, v76, v77, v78, v79);
  }

  if (targetCopy && v41)
  {
    v84 = objc_opt_new();
    v409 = objc_opt_new();
    v408 = objc_opt_new();
    v410 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v85, v89, v90, v91, v92, 2, v86, v87, v88);
    v415 = 0;
    v413 = 0;
    v414 = 0;
    bodyLayoutManager = self->_bodyLayoutManager;
    v103 = objc_msgSend_bodyLayoutState(self->_paginationState, v94, v99, v100, v101, v102, v95, v96, v97, v98);
    objc_msgSend_deflateTarget_intoHints_childHints_anchoredDrawablePositions_startingPartitionedAttachments_topicNumberHints_layoutState_(bodyLayoutManager, v104, v105, v106, v107, v108, targetCopy, v84, v410, &v415, &v414, &v413, v103);
    if (!objc_msgSend_count(v84, v109, v114, v115, v116, v117, v110, v111, v112, v113))
    {
      v126 = MEMORY[0x277D81150];
      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, v122, v123, v124, v125, "[TPPaginatedPageController p_updateTextHintAtPageIndexPath:withTarget:]", v119, v120, v121);
      v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, v132, v133, v134, v135, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v129, v130, v131);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v137, v138, v139, v140, v141, v127, v136, 4698, 0, "Failed to deflate into hints");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v142, v147, v148, v149, v150, v143, v144, v145, v146);
    }

    objc_msgSend_setHints_topicNumberHints_(v41, v118, v122, v123, v124, v125, v84, v413, v120, v121);
    flowController = self->_flowController;
    v161 = objc_msgSend_pageLayout(targetCopy, v152, v157, v158, v159, v160, v153, v154, v155, v156);
    objc_msgSend_deflatePage_intoHints_topicNumberHints_(flowController, v162, v164, v165, v166, v167, v161, v409, v408, v163);

    objc_msgSend_setFlowHints_flowTopicNumberHints_(v41, v168, v171, v172, v173, v174, v409, v408, v169, v170);
    objc_msgSend_setChildHints_(v41, v175, v179, v180, v181, v182, v410, v176, v177, v178);
    objc_msgSend_setAnchoredDrawablePositions_(v41, v183, v187, v188, v189, v190, v415, v184, v185, v186);
    objc_msgSend_setStartingPartitionedAttachments_(v41, v191, v195, v196, v197, v198, v414, v192, v193, v194);
    v208 = objc_msgSend_info(targetCopy, v199, v204, v205, v206, v207, v200, v201, v202, v203);
    v218 = objc_msgSend_bodyStorage(v208, v209, v214, v215, v216, v217, v210, v211, v212, v213);
    v228 = objc_msgSend_range(v41, v219, v224, v225, v226, v227, v220, v221, v222, v223);
    v236 = objc_msgSend_autoNumberFootnoteCountForRange_(v218, v229, v232, v233, v234, v235, v228, v229, v230, v231);

    v245 = objc_msgSend_p_textPageHintPrecedingPageIndexPath_(self, v237, v241, v242, v243, v244, pathCopy, v238, v239, v240);
    v255 = v245;
    if (v245)
    {
      v256 = objc_msgSend_footnoteAutoNumberRange(v245, v246, v251, v252, v253, v254, v247, v248, v249, v250);
      objc_msgSend_setFootnoteAutoNumberRange_(v41, v257, v260, v261, v262, v263, &v257[v256], v236, v258, v259);
    }

    else
    {
      objc_msgSend_setFootnoteAutoNumberRange_(v41, v246, v251, v252, v253, v254, 0, v236, v249, v250);
    }

    v273 = objc_msgSend_pageLayout(targetCopy, v264, v269, v270, v271, v272, v265, v266, v267, v268);
    v283 = objc_msgSend_overrideAllowFootnotes(v273, v274, v279, v280, v281, v282, v275, v276, v277, v278);
    objc_msgSend_setHasForcedFootnotes_(v41, v284, v288, v289, v290, v291, v283, v285, v286, v287);

    v301 = objc_msgSend_documentRoot(self, v292, v297, v298, v299, v300, v293, v294, v295, v296);
    v311 = objc_msgSend_bodyStorage(v301, v302, v307, v308, v309, v310, v303, v304, v305, v306);

    v321 = objc_msgSend_footnoteCount(v311, v312, v317, v318, v319, v320, v313, v314, v315, v316);
    v412 = 0;
    if (v321)
    {
      v329 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(v311, v322, v325, v326, v327, v328, v321 - 1, &v412, v323, v324);
    }

    else
    {
      objc_msgSend_setFootnoteLayoutRange_(v41, v322, v325, v326, v327, v328, *MEMORY[0x277D81510], *(MEMORY[0x277D81510] + 8), v323, v324);
    }

    v339 = v412;
    v340 = objc_msgSend_range(v41, v330, v335, v336, v337, v338, v331, v332, v333, v334);
    if (v339 < &v341[v340])
    {
      v350 = objc_msgSend_footnoteAutoNumberRange(v41, v341, v346, v347, v348, v349, v342, v343, v344, v345);
      v352 = v351;
      v361 = objc_msgSend_sectionHints(self->_paginationState, v351, v357, v358, v359, v360, v353, v354, v355, v356);
      sub_275FFD180(v411, v361, pathCopy, 1);
      v362 = &v352[v350];

      while (1)
      {
        v372 = sub_275FFD320(v411, v363, v364, v365, v366, v367, v368, v369, v370, v371);

        if (!v372)
        {
          break;
        }

        if (sub_275FFD3B8(v411, v373, v374, v375, v376, v377, v378, v379, v380, v381) == 1)
        {
          if (sub_275FFD4E8(v411, v382, v383, v384, v385, v386, v387, v388, v389, v390) == v362 && !v391)
          {
            break;
          }

          v400 = sub_275FFD320(v411, v391, v392, v393, v394, v395, v396, v397, v398, v399);
          objc_msgSend_setFootnoteAutoNumberRange_(v400, v401, v404, v405, v406, v407, v362, 0, v402, v403);
        }

        sub_275FFCF2C(v411, v382, v383, v384, v385, v386, v387, v388, v389, v390);
      }

      sub_275FFD2D0(v411);
    }
  }
}

- (void)p_updateNonTextHintAtPageIndexPath:(id)path pageLayout:(id)layout
{
  pathCopy = path;
  layoutCopy = layout;
  v15 = objc_msgSend_p_pageHintForPageIndexPath_(self, v7, v11, v12, v13, v14, pathCopy, v8, v9, v10);
  if (objc_msgSend_pageKind(v15, v16, v21, v22, v23, v24, v17, v18, v19, v20) == 1)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v29, v30, v31, v32, "[TPPaginatedPageController p_updateNonTextHintAtPageIndexPath:pageLayout:]", v26, v27, v28);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v36, v37, v38);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v44, v45, v46, v47, v48, v34, v43, 4765, 0, "Wrong way to update text page hints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v54, v55, v56, v57, v50, v51, v52, v53);
  }

  v58 = objc_msgSend_p_pageHintPrecedingPageIndexPath_(self, v25, v29, v30, v31, v32, pathCopy, v26, v27, v28);
  v68 = v58;
  if (v58)
  {
    v69 = objc_msgSend_range(v58, v59, v64, v65, v66, v67, v60, v61, v62, v63);
    v71 = v70;
    v80 = objc_msgSend_footnoteAutoNumberRange(v68, v70, v76, v77, v78, v79, v72, v73, v74, v75);
    v82 = v81;
    v91 = objc_msgSend_footnoteLayoutRange(v68, v81, v87, v88, v89, v90, v83, v84, v85, v86);
    v92 = &v71[v69];
    v93 = &v82[v80];
    v95 = v91 + v94;
  }

  else
  {
    v95 = 0;
    v93 = 0;
    v92 = 0;
  }

  v96 = objc_opt_new();
  objc_msgSend_setNextWidowPullsDownFromCharIndex_(v96, v97, v101, v102, v103, v104, v92, v98, v99, v100);
  v114 = objc_msgSend_documentRoot(self, v105, v110, v111, v112, v113, v106, v107, v108, v109);
  v124 = objc_msgSend_settings(v114, v115, v120, v121, v122, v123, v116, v117, v118, v119);
  hasBody = objc_msgSend_hasBody(v124, v125, v130, v131, v132, v133, v126, v127, v128, v129);

  if (hasBody)
  {
    objc_msgSend_setRange_(v96, v135, v140, v141, v142, v143, v92, 0, v138, v139);
  }

  else
  {
    v151 = objc_msgSend_documentRoot(self, v135, v140, v141, v142, v143, v136, v137, v138, v139);
    v161 = objc_msgSend_bodyStorage(v151, v152, v157, v158, v159, v160, v153, v154, v155, v156);
    v169 = objc_msgSend_sectionAtCharIndex_effectiveRange_(v161, v162, v165, v166, v167, v168, v92, v251, v163, v164);

    objc_msgSend_setRange_(v96, v170, v173, v174, v175, v176, v251[0], v251[1], v171, v172);
  }

  objc_msgSend_setAnchoredRange_(v96, v144, v147, v148, v149, v150, v92, 0, v145, v146);
  v177.n128_u64[0] = *MEMORY[0x277CBF398];
  v178.n128_u64[0] = *(MEMORY[0x277CBF398] + 8);
  v179.n128_u64[0] = *(MEMORY[0x277CBF398] + 16);
  v180.n128_u64[0] = *(MEMORY[0x277CBF398] + 24);
  objc_msgSend_setFrameBounds_(v96, v181, v177, v178, v179, v180, v182, v183, v184, v185);
  v194 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v186, v190, v191, v192, v193, v96, v187, v188, v189);
  v195 = objc_opt_new();
  objc_msgSend_setHints_topicNumberHints_(v15, v196, v199, v200, v201, v202, v194, v195, v197, v198);

  v203 = objc_opt_new();
  v204 = objc_opt_new();
  objc_msgSend_deflatePage_intoHints_topicNumberHints_(self->_flowController, v205, v207, v208, v209, v210, layoutCopy, v203, v204, v206);
  objc_msgSend_setFlowHints_flowTopicNumberHints_(v15, v211, v214, v215, v216, v217, v203, v204, v212, v213);
  objc_msgSend_setFootnoteAutoNumberRange_(v15, v218, v221, v222, v223, v224, v93, 0, v219, v220);
  objc_msgSend_setFootnoteLayoutRange_(v15, v225, v228, v229, v230, v231, v95, 0, v226, v227);
  v241 = objc_msgSend_dictionary(MEMORY[0x277D81308], v232, v237, v238, v239, v240, v233, v234, v235, v236);
  objc_msgSend_setAnchoredDrawablePositions_(v15, v242, v246, v247, v248, v249, v241, v243, v244, v245);
}

- (void)p_preparePaginationStateForNextPage
{
  if (!objc_msgSend_bodyLayoutState(self->_paginationState, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    objc_msgSend_p_checkForBackUp(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
    v111 = objc_msgSend_documentPageIndex(self->_paginationState, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    v37 = objc_msgSend_i_textPageHintPrecedingPageIndex_(self, v29, v33, v34, v35, v36, &v111, v30, v31, v32);
    v47 = v37;
    if (v37)
    {
      bodyLayoutManager = self->_bodyLayoutManager;
      v49 = objc_msgSend_lastHint(v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);
      v59 = objc_msgSend_lastChildHint(v47, v50, v55, v56, v57, v58, v51, v52, v53, v54);
      Target_childHint = objc_msgSend_layoutStateForLayoutAfterHint_firstTarget_childHint_(bodyLayoutManager, v60, v62, v63, v64, v65, v49, 0, v59, v61);
      objc_msgSend_setBodyLayoutState_(self->_paginationState, v67, v71, v72, v73, v74, Target_childHint, v68, v69, v70);
    }
  }

  if (objc_msgSend_bodyCharIndex(self->_paginationState, v11, v16, v17, v18, v19, v12, v13, v14, v15) == 0x7FFFFFFFFFFFFFFFLL)
  {
    ValidCharIndex = objc_msgSend_p_lastValidCharIndex(self, v75, v80, v81, v82, v83, v76, v77, v78, v79);
    if (ValidCharIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setBodyCharIndex_(self->_paginationState, v85, v89, v90, v91, v92, 0, v86, v87, v88);
    }

    else
    {
      objc_msgSend_setBodyCharIndex_(self->_paginationState, v85, v89, v90, v91, v92, ValidCharIndex, v86, v87, v88);
    }
  }

  if (objc_msgSend_footnoteIndex(self->_paginationState, v75, v80, v81, v82, v83, v76, v77, v78, v79) == 0x7FFFFFFFFFFFFFFFLL)
  {
    ValidFootnoteIndex = objc_msgSend_p_lastValidFootnoteIndex(self, v93, v98, v99, v100, v101, v94, v95, v96, v97);
    if (ValidFootnoteIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setFootnoteIndex_(self->_paginationState, v103, v107, v108, v109, v110, 0, v104, v105, v106);
    }

    else
    {
      objc_msgSend_setFootnoteIndex_(self->_paginationState, v103, v107, v108, v109, v110, ValidFootnoteIndex, v104, v105, v106);
    }
  }
}

- (void)p_prepareSectionHintForNextPage
{
  v11 = objc_msgSend_sectionHints(self->_paginationState, a2, v6, v7, v8, v9, v2, v3, v4, v5);

  if (!v11)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v17, v18, v19, v20, "[TPPaginatedPageController p_prepareSectionHintForNextPage]", v14, v15, v16);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v24, v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v32, v33, v34, v35, v36, v22, v31, 4839, 0, "invalid nil value for '%{public}s'", "_paginationState.sectionHints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v42, v43, v44, v45, v38, v39, v40, v41);
  }

  v46 = objc_msgSend_sectionHints(self->_paginationState, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  if (v46)
  {
    v56 = objc_msgSend_sectionIndex(self->_paginationState, v47, v52, v53, v54, v55, v48, v49, v50, v51);
    v66 = objc_msgSend_sectionHints(self->_paginationState, v57, v62, v63, v64, v65, v58, v59, v60, v61);
    v76 = objc_msgSend_count(v66, v67, v72, v73, v74, v75, v68, v69, v70, v71);

    if (v56 >= v76)
    {
      v104 = objc_alloc_init(TPSectionHint);
      v114 = objc_msgSend_documentPageIndex(self->_paginationState, v105, v110, v111, v112, v113, v106, v107, v108, v109);
      objc_msgSend_setDocumentStartPageIndex_(v104, v115, v119, v120, v121, v122, v114, v116, v117, v118);
      v149 = v104;
      objc_msgSend_addSectionHint_(self->_paginationState, v123, v127, v128, v129, v130, v104, v124, v125, v126);
    }

    else
    {
      v86 = objc_msgSend_sectionHints(self->_paginationState, v77, v82, v83, v84, v85, v78, v79, v80, v81);
      v149 = objc_msgSend_objectAtIndexedSubscript_(v86, v87, v91, v92, v93, v94, v56, v88, v89, v90);
    }

    if (!objc_msgSend_pageIndex(self->_paginationState, v95, v100, v101, v102, v103, v96, v97, v98, v99))
    {
      v140 = objc_msgSend_documentPageIndex(self->_paginationState, v131, v136, v137, v138, v139, v132, v133, v134, v135);
      objc_msgSend_setDocumentStartPageIndex_(v149, v141, v145, v146, v147, v148, v140, v142, v143, v144);
    }
  }
}

- (void)p_preparePageHintForNextPage
{
  if (objc_msgSend_isPaginationComplete(self->_paginationState, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    v20 = MEMORY[0x277D81150];
    v294 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v16, v17, v18, v19, "[TPPaginatedPageController p_preparePageHintForNextPage]", v13, v14, v15);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v30, v31, v32, v33, v34, v294, v29, 4868, 0, "Shouldn't be be any 'next' page when pagination is complete");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v40, v41, v42, v43, v36, v37, v38, v39);
  }

  v49 = objc_msgSend_count(self->_pageGeneratorStack, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  if (!v49)
  {
    objc_msgSend_p_resetPageGenerators(self, v44, v50, v51, v52, v53, v45, v46, v47, v48);
  }

  v295 = objc_msgSend_sectionHint(self->_paginationState, v44, v50, v51, v52, v53, v45, v46, v47, v48);
  while (1)
  {
    if (!objc_msgSend_count(self->_pageGeneratorStack, v54, v59, v60, v61, v62, v55, v56, v57, v58))
    {
      v90 = MEMORY[0x277D81150];
      v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v68, v69, v70, v71, "[TPPaginatedPageController p_preparePageHintForNextPage]", v65, v66, v67);
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v92, v96, v97, v98, v99, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v93, v94, v95);
      v110 = objc_msgSend_sectionIndex(self->_paginationState, v101, v106, v107, v108, v109, v102, v103, v104, v105);
      v120 = objc_msgSend_pageIndex(self->_paginationState, v111, v116, v117, v118, v119, v112, v113, v114, v115);
      v130 = objc_msgSend_documentPageIndex(self->_paginationState, v121, v126, v127, v128, v129, v122, v123, v124, v125);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v90, v131, v132, v133, v134, v135, v91, v100, 4928, 0, "Failed to find a page generator; failed to set up page hint for section index %lu page index %lu (%lu). Stack count was %lu", v110, v120, v130, v49);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v136, v141, v142, v143, v144, v137, v138, v139, v140);
      goto LABEL_23;
    }

    v72 = objc_msgSend_lastObject(self->_pageGeneratorStack, v63, v68, v69, v70, v71, v64, v65, v66, v67);
    if (objc_msgSend_wantsPageInSectionHint_withState_(v72, v73, v76, v77, v78, v79, v295, self->_paginationState, v74, v75))
    {
      break;
    }

    v89 = objc_msgSend_tsu_pop(self->_pageGeneratorStack, v80, v85, v86, v87, v88, v81, v82, v83, v84);
  }

  objc_msgSend_createOrUpdatePageHintInSectionHint_withState_(v72, v80, v85, v86, v87, v88, v295, self->_paginationState, v83, v84);
  v154 = objc_msgSend_pageIndex(self->_paginationState, v145, v150, v151, v152, v153, v146, v147, v148, v149);
  v163 = objc_msgSend_pageHintForPageIndex_(v295, v155, v159, v160, v161, v162, v154, v156, v157, v158);
  v173 = objc_msgSend_p_lastValidPageHint(self, v164, v169, v170, v171, v172, v165, v166, v167, v168);
  if (objc_msgSend_documentPageIndex(self->_paginationState, v174, v179, v180, v181, v182, v175, v176, v177, v178))
  {
    if (!objc_msgSend_documentPageIndex(self->_paginationState, v183, v188, v189, v190, v191, v184, v185, v186, v187))
    {
      v201 = MEMORY[0x277D81150];
      v202 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v192, v197, v198, v199, v200, "[TPPaginatedPageController p_preparePageHintForNextPage]", v194, v195, v196);
      v211 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v203, v207, v208, v209, v210, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v204, v205, v206);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v201, v212, v213, v214, v215, v216, v202, v211, 4899, 0, "Page index should be > 0 here");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v217, v222, v223, v224, v225, v218, v219, v220, v221);
    }

    v226 = objc_msgSend_pageColumn(v173, v192, v197, v198, v199, v200, v193, v194, v195, v196);
    v236 = objc_msgSend_documentRoot(self, v227, v232, v233, v234, v235, v228, v229, v230, v231);
    v246 = objc_msgSend_writingDirection(v236, v237, v242, v243, v244, v245, v238, v239, v240, v241);

    if (v246 == 1)
    {
      v256 = v226 != 1;
LABEL_18:
      objc_msgSend_setPageColumn_(v163, v247, v252, v253, v254, v255, v256, v249, v250, v251);
      goto LABEL_19;
    }

    if (objc_msgSend_isPageLayoutRightToLeft(self, v247, v252, v253, v254, v255, v248, v249, v250, v251))
    {
      v256 = v226 == 0;
      goto LABEL_18;
    }
  }

  else
  {
    objc_msgSend_setPageRow_(v163, v183, v188, v189, v190, v191, 0, v185, v186, v187);
    PageColumn = objc_msgSend_p_firstPageColumn(self, v257, v262, v263, v264, v265, v258, v259, v260, v261);
    objc_msgSend_setPageColumn_(v163, v267, v271, v272, v273, v274, PageColumn, v268, v269, v270);
    v226 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_19:
  if (v226 == (objc_msgSend_isPageLayoutRightToLeft(self, v247, v252, v253, v254, v255, v275, v249, v250, v251) ^ 1))
  {
    v286 = objc_msgSend_pageRow(v173, v276, v281, v282, v283, v284, v277, v278, v279, v280) + 1;
  }

  else
  {
    v286 = objc_msgSend_pageRow(v173, v276, v281, v282, v283, v284, v277, v278, v279, v280);
  }

  objc_msgSend_setPageRow_(v163, v285, v290, v291, v292, v293, v286, v287, v288, v289);

LABEL_23:
}

- (void)p_resetPageGenerators
{
  v75 = objc_alloc_init(TPFillerPageGenerator);
  v3 = objc_alloc_init(TPTextPageGenerator);
  v4 = [TPEndnotePageGenerator alloc];
  v13 = objc_msgSend_initWithFootnoteLayoutController_(v4, v5, v9, v10, v11, v12, self->_footnoteLayoutController, v6, v7, v8);
  v14 = [TPOrphanPageGenerator alloc];
  v24 = objc_msgSend_documentRoot(self, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v33 = objc_msgSend_initWithDocumentRoot_(v14, v25, v29, v30, v31, v32, v24, v26, v27, v28);

  v34 = objc_alloc_init(TPPageLayoutPageGenerator);
  objc_msgSend_tsu_push_(self->_pageGeneratorStack, v35, v39, v40, v41, v42, v33, v36, v37, v38);
  objc_msgSend_tsu_push_(self->_pageGeneratorStack, v43, v47, v48, v49, v50, v13, v44, v45, v46);
  objc_msgSend_tsu_push_(self->_pageGeneratorStack, v51, v55, v56, v57, v58, v34, v52, v53, v54);
  objc_msgSend_tsu_push_(self->_pageGeneratorStack, v59, v63, v64, v65, v66, v3, v60, v61, v62);
  objc_msgSend_tsu_push_(self->_pageGeneratorStack, v67, v71, v72, v73, v74, v75, v68, v69, v70);
}

- (void)p_syncFromNextPageWithDirtyRanges:(id)ranges pageTextRange:(const _NSRange *)range
{
  v959 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  selfCopy = self;
  v15 = objc_msgSend_documentRoot(self, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v25 = objc_msgSend_settings(v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  if (objc_msgSend_hasBody(v25, v26, v31, v32, v33, v34, v27, v28, v29, v30))
  {
    v44 = objc_msgSend_pageIndex(selfCopy->_paginationState, v35, v40, v41, v42, v43, v36, v37, v38, v39);

    if (!v44)
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v49, v50, v51, v52, "[TPPaginatedPageController p_syncFromNextPageWithDirtyRanges:pageTextRange:]", v46, v47, v48);
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v56, v57, v58);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v64, v65, v66, v67, v68, v54, v63, 4952, 0, "Shouldn't be syncing if we haven't laid out any pages in this section");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v74, v75, v76, v77, v70, v71, v72, v73);
    }
  }

  else
  {
  }

  v944 = objc_msgSend_dirtyRangesIntersecting_(rangesCopy, v45, v49, v50, v51, v52, 0, range->length + range->location, v47, v48);
  v934 = objc_msgSend_mutableCopy(rangesCopy, v78, v83, v84, v85, v86, v79, v80, v81, v82);
  objc_msgSend_subtract_(v934, v87, v91, v92, v93, v94, v944, v88, v89, v90);
  v104 = objc_msgSend_superRange(v934, v95, v100, v101, v102, v103, v96, v97, v98, v99);
  v939 = v105;
  v940 = v104;
  v938 = objc_msgSend_sectionHint(selfCopy->_paginationState, v105, v110, v111, v112, v113, v106, v107, v108, v109);
  v935 = objc_msgSend_documentPageIndex(selfCopy->_paginationState, v114, v119, v120, v121, v122, v115, v116, v117, v118);
  v937 = objc_msgSend_pageCount(v938, v123, v128, v129, v130, v131, v124, v125, v126, v127);
  v941 = objc_msgSend_p_lastValidPageHint(selfCopy, v132, v137, v138, v139, v140, v133, v134, v135, v136);
  v150 = objc_msgSend_documentRoot(selfCopy, v141, v146, v147, v148, v149, v142, v143, v144, v145);
  v160 = objc_msgSend_bodyStorage(v150, v151, v156, v157, v158, v159, v152, v153, v154, v155);
  v170 = objc_msgSend_sectionIndex(selfCopy->_paginationState, v161, v166, v167, v168, v169, v162, v163, v164, v165);
  v178 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(v160, v171, v174, v175, v176, v177, v170, &v955, v172, v173);

  v179 = objc_opt_new();
  LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(selfCopy->_paginationState, v180, v185, v186, v187, v188, v181, v182, v183, v184);
  v946 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(selfCopy, v190, v192, v193, v194, v195, LaidOutDocumentPageIndex, 0, 0, v191);
  v205 = objc_msgSend_documentRoot(selfCopy, v196, v201, v202, v203, v204, v197, v198, v199, v200);
  v215 = objc_msgSend_flowInfoContainer(v205, v206, v211, v212, v213, v214, v207, v208, v209, v210);
  v225 = objc_msgSend_flowInfos(v215, v216, v221, v222, v223, v224, v217, v218, v219, v220);
  v942 = objc_msgSend_count(v225, v226, v231, v232, v233, v234, v227, v228, v229, v230);

  do
  {
    v943 = objc_msgSend_p_pageHintForPageIndexPath_(selfCopy, v235, v239, v240, v241, v242, v946, v236, v237, v238);
    v252 = objc_msgSend_flowHints(v943, v243, v248, v249, v250, v251, v244, v245, v246, v247);
    v953 = 0u;
    v954 = 0u;
    v951 = 0u;
    v952 = 0u;
    v253 = v252;
    v264 = objc_msgSend_countByEnumeratingWithState_objects_count_(v253, v254, v256, v257, v258, v259, &v951, v958, 16, v255);
    if (v264)
    {
      v269 = *v952;
      do
      {
        for (i = 0; i != v264; ++i)
        {
          if (*v952 != v269)
          {
            objc_enumerationMutation(v253);
          }

          v271 = *(*(&v951 + 1) + 8 * i);
          v272 = objc_msgSend_objectForKeyedSubscript_(v179, v260, v265, v266, v267, v268, v271, v261, v262, v263);
          v273 = v272 == 0;

          if (v273)
          {
            v274 = objc_msgSend_objectForKeyedSubscript_(v253, v260, v265, v266, v267, v268, v271, v261, v262, v263);
            v284 = objc_msgSend_range(v274, v275, v280, v281, v282, v283, v276, v277, v278, v279);
            v286 = v285;

            v294 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v287, v290, v291, v292, v293, v284, v286, v288, v289);
            objc_msgSend_setObject_forUncopiedKey_(v179, v295, v298, v299, v300, v301, v294, v271, v296, v297);
          }
        }

        v264 = objc_msgSend_countByEnumeratingWithState_objects_count_(v253, v260, v265, v266, v267, v268, &v951, v958, 16, v263);
      }

      while (v264);
    }

    if (!objc_msgSend_pageIndex(v946, v302, v307, v308, v309, v310, v303, v304, v305, v306) && objc_msgSend_sectionIndex(v946, v311, v316, v317, v318, v319, v312, v313, v314, v315))
    {
      while (objc_msgSend_sectionIndex(v946, v311, v316, v317, v318, v319, v312, v313, v314, v315))
      {
        v348 = objc_msgSend_sectionIndex(v946, v339, v344, v345, v346, v347, v340, v341, v342, v343);
        objc_msgSend_setSectionIndex_(v946, v349, v353, v354, v355, v356, v348 - 1, v350, v351, v352);
        v366 = objc_msgSend_sectionHints(selfCopy->_paginationState, v357, v362, v363, v364, v365, v358, v359, v360, v361);
        v376 = objc_msgSend_sectionIndex(v946, v367, v372, v373, v374, v375, v368, v369, v370, v371);
        v385 = objc_msgSend_objectAtIndexedSubscript_(v366, v377, v381, v382, v383, v384, v376, v378, v379, v380);
        v395 = objc_msgSend_pageCount(v385, v386, v391, v392, v393, v394, v387, v388, v389, v390);

        if (v395)
        {
          objc_msgSend_setPageIndex_(v946, v311, v316, v317, v318, v319, v395 - 1, v313, v314, v315);
          goto LABEL_18;
        }
      }

      goto LABEL_18;
    }

    if (objc_msgSend_pageIndex(v946, v311, v316, v317, v318, v319, v312, v313, v314, v315))
    {
      v329 = objc_msgSend_pageIndex(v946, v320, v325, v326, v327, v328, v321, v322, v323, v324);
      objc_msgSend_setPageIndex_(v946, v330, v334, v335, v336, v337, v329 - 1, v331, v332, v333);
LABEL_18:
      v338 = 1;
      goto LABEL_24;
    }

    v338 = 0;
LABEL_24:

    if (objc_msgSend_count(v179, v396, v401, v402, v403, v404, v397, v398, v399, v400) < v942)
    {
      v406 = v338;
    }

    else
    {
      v406 = 0;
    }
  }

  while ((v406 & 1) != 0);
  v407 = objc_msgSend_documentRoot(selfCopy, v235, v239, v240, v241, v242, v405, v236, v237, v238);
  v417 = objc_msgSend_settings(v407, v408, v413, v414, v415, v416, v409, v410, v411, v412);
  hasBody = objc_msgSend_hasBody(v417, v418, v423, v424, v425, v426, v419, v420, v421, v422);

  if (hasBody)
  {
    v437 = 0;
    while (objc_msgSend_pageIndex(selfCopy->_paginationState, v428, v433, v434, v435, v436, v429, v430, v431, v432) < v937)
    {
      v447 = objc_msgSend_bodyCharIndex(selfCopy->_paginationState, v438, v443, v444, v445, v446, v439, v440, v441, v442);
      if (v447 >= v956 + v955)
      {
        v448 = objc_msgSend_bodyCharIndex(selfCopy->_paginationState, v438, v443, v444, v445, v446, v439, v440, v441, v442);
        if (v448 != v956 + v955)
        {
          break;
        }

        v449 = objc_msgSend_bodyCharIndex(selfCopy->_paginationState, v438, v443, v444, v445, v446, v439, v440, v441, v442);
        v459 = objc_msgSend_documentRoot(selfCopy, v450, v455, v456, v457, v458, v451, v452, v453, v454);
        v469 = objc_msgSend_bodyStorage(v459, v460, v465, v466, v467, v468, v461, v462, v463, v464);
        LODWORD(v449) = v449 == objc_msgSend_length(v469, v470, v475, v476, v477, v478, v471, v472, v473, v474);

        if (!v449)
        {
          break;
        }
      }

      v479 = objc_msgSend_pageIndex(selfCopy->_paginationState, v438, v443, v444, v445, v446, v439, v440, v441, v442);
      v493 = objc_msgSend_pageHintForPageIndex_(v938, v480, v484, v485, v486, v487, v479, v481, v482, v483);
      if (!v493)
      {
        v498 = MEMORY[0x277D81150];
        v499 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v488, v494, v495, v496, v497, "[TPPaginatedPageController p_syncFromNextPageWithDirtyRanges:pageTextRange:]", v490, v491, v492);
        v508 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v500, v504, v505, v506, v507, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v501, v502, v503);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v498, v509, v510, v511, v512, v513, v499, v508, 5011, 0, "invalid nil value for '%{public}s'", "nextPageHint");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v514, v519, v520, v521, v522, v515, v516, v517, v518);
      }

      if (objc_msgSend_pageKind(v493, v488, v494, v495, v496, v497, v489, v490, v491, v492) == 3)
      {
        v532 = objc_msgSend_documentRoot(selfCopy, v523, v528, v529, v530, v531, v524, v525, v526, v527);
        v542 = objc_msgSend_floatingDrawables(v532, v533, v538, v539, v540, v541, v534, v535, v536, v537);
        v552 = objc_msgSend_pageIndex(selfCopy->_paginationState, v543, v548, v549, v550, v551, v544, v545, v546, v547);
        v561 = objc_msgSend_drawablesOnPageIndex_(v542, v553, v557, v558, v559, v560, v552, v554, v555, v556);
        v571 = objc_msgSend_count(v561, v562, v567, v568, v569, v570, v563, v564, v565, v566) != 0;
      }

      else
      {
        v571 = 0;
      }

      if (objc_msgSend_pageKind(v493, v523, v528, v529, v530, v531, v524, v525, v526, v527) == 1)
      {
        if (!(v571 | ((objc_msgSend_p_isBodyLayoutComplete(selfCopy, v572, v577, v578, v579, v580, v573, v574, v575, v576) & 1) == 0)))
        {
          goto LABEL_62;
        }
      }

      else if (!v571)
      {
        goto LABEL_62;
      }

      v581 = objc_msgSend_range(v493, v572, v577, v578, v579, v580, v573, v574, v575, v576);
      v583 = v582;
      v960.length = v939;
      v960.location = v940;
      v962.location = v581;
      v962.length = v583;
      if (NSIntersectionRange(v960, v962).length)
      {
        goto LABEL_62;
      }

      if (v581 + v583 == v940)
      {
        goto LABEL_62;
      }

      v592 = objc_msgSend_documentRoot(selfCopy, 0, v588, v589, v590, v591, v584, v585, v586, v587);
      v602 = objc_msgSend_bodyStorage(v592, v593, v598, v599, v600, v601, v594, v595, v596, v597);
      v609 = objc_msgSend_syncsWithEndOfPageHint_bodyStorage_flowRanges_(v493, v603, v605, v606, v607, v608, v941, v602, v179, v604);

      if ((v609 & 1) == 0)
      {
        goto LABEL_62;
      }

      objc_msgSend_advancePageIndex(selfCopy->_paginationState, v610, v615, v616, v617, v618, v611, v612, v613, v614);
      v628 = objc_msgSend_range(v493, v619, v624, v625, v626, v627, v620, v621, v622, v623);
      objc_msgSend_setBodyCharIndex_(selfCopy->_paginationState, v629, v633, v634, v635, v636, &v629[v628], v630, v631, v632);
      v646 = objc_msgSend_footnoteLayoutRange(v493, v637, v642, v643, v644, v645, v638, v639, v640, v641);
      objc_msgSend_setFootnoteIndex_(selfCopy->_paginationState, v647, v651, v652, v653, v654, &v647[v646], v648, v649, v650);
      objc_msgSend_p_notifyObserversDidLayoutWhileSyncing_(selfCopy, v655, v659, v660, v661, v662, 1, v656, v657, v658);
      v663 = v493;

      if (objc_msgSend_pageKind(v663, v664, v669, v670, v671, v672, v665, v666, v667, v668) == 1)
      {
        v673 = v663;

        v437 = v673;
      }

      v941 = v663;
    }
  }

  else
  {
    v493 = objc_msgSend_sectionHints(selfCopy->_paginationState, v428, v433, v434, v435, v436, v429, v430, v431, v432);
    v683 = objc_msgSend_count(v493, v674, v679, v680, v681, v682, v675, v676, v677, v678);
    while (1)
    {

      if (objc_msgSend_sectionIndex(selfCopy->_paginationState, v684, v689, v690, v691, v692, v685, v686, v687, v688) >= v683 || objc_msgSend_pageIndex(selfCopy->_paginationState, v438, v443, v444, v445, v446, v439, v440, v441, v442))
      {
        v437 = 0;
        goto LABEL_63;
      }

      v493 = objc_msgSend_sectionHint(selfCopy->_paginationState, v438, v443, v444, v445, v446, v439, v440, v441, v442);
      if (!objc_msgSend_pageCount(v493, v693, v698, v699, v700, v701, v694, v695, v696, v697))
      {
        break;
      }

      v710 = objc_msgSend_pageHintForPageIndex_(v493, v702, v706, v707, v708, v709, 0, v703, v704, v705);
      if (objc_msgSend_pageKind(v710, v711, v716, v717, v718, v719, v712, v713, v714, v715) != 6 || (v729 = objc_msgSend_range(v710, v720, v725, v726, v727, v728, v721, v722, v723, v724), v731 = v730, v961.length = v939, v961.location = v940, v963.location = v729, v963.length = v731, NSIntersectionRange(v961, v963).length) || v729 + v731 == v940 || !objc_msgSend_syncsFlowRanges_withEndOfPageHint_(v710, 0, v734, v735, v736, v737, v179, v941, v732, v733))
      {

        goto LABEL_61;
      }

      objc_msgSend_advancePageIndex(selfCopy->_paginationState, v738, v743, v744, v745, v746, v739, v740, v741, v742);
      objc_msgSend_advanceSectionIndex(selfCopy->_paginationState, v747, v752, v753, v754, v755, v748, v749, v750, v751);
      v765 = objc_msgSend_range(v710, v756, v761, v762, v763, v764, v757, v758, v759, v760);
      objc_msgSend_setBodyCharIndex_(selfCopy->_paginationState, v766, v770, v771, v772, v773, &v766[v765], v767, v768, v769);
      v783 = objc_msgSend_footnoteLayoutRange(v710, v774, v779, v780, v781, v782, v775, v776, v777, v778);
      objc_msgSend_setFootnoteIndex_(selfCopy->_paginationState, v784, v788, v789, v790, v791, &v784[v783], v785, v786, v787);
      objc_msgSend_p_notifyObserversDidLayoutWhileSyncing_(selfCopy, v792, v796, v797, v798, v799, 1, v793, v794, v795);

      v941 = v710;
    }

    v800 = MEMORY[0x277D81150];
    v801 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v702, v706, v707, v708, v709, "[TPPaginatedPageController p_syncFromNextPageWithDirtyRanges:pageTextRange:]", v703, v704, v705);
    v810 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v802, v806, v807, v808, v809, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v803, v804, v805);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v800, v811, v812, v813, v814, v815, v801, v810, 5050, 0, "Expected section hint to contain at least 1 page");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v816, v821, v822, v823, v824, v817, v818, v819, v820);
LABEL_61:
    v437 = 0;
LABEL_62:
  }

LABEL_63:
  v825 = objc_msgSend_documentPageIndex(selfCopy->_paginationState, v438, v443, v444, v445, v446, v439, v440, v441, v442);
  objc_msgSend_pageLayoutsInRange_(selfCopy->_pageLayoutCache, v826, v829, v830, v831, v832, v935, v825 - v935, v827, v828);
  v949 = 0u;
  v950 = 0u;
  v947 = 0u;
  v833 = v948 = 0u;
  v845 = objc_msgSend_countByEnumeratingWithState_objects_count_(v833, v834, v836, v837, v838, v839, &v947, v957, 16, v835);
  if (v845)
  {
    v850 = *v948;
    do
    {
      for (j = 0; j != v845; ++j)
      {
        if (*v948 != v850)
        {
          objc_enumerationMutation(v833);
        }

        v852 = objc_msgSend_bodyLayout(*(*(&v947 + 1) + 8 * j), v840, v846, v847, v848, v849, v841, v842, v843, v844);
        v862 = v852;
        if (v852 && (objc_msgSend_needsInflation(v852, v853, v858, v859, v860, v861, v854, v855, v856, v857) & 1) == 0)
        {
          objc_msgSend_updateStartCharIndexWithDirtyRanges_(v862, v863, v867, v868, v869, v870, v944, v864, v865, v866);
        }
      }

      v845 = objc_msgSend_countByEnumeratingWithState_objects_count_(v833, v840, v846, v847, v848, v849, &v947, v957, 16, v844);
    }

    while (v845);
  }

  if (objc_msgSend_documentPageIndex(selfCopy->_paginationState, v871, v876, v877, v878, v879, v872, v873, v874, v875) > v935)
  {
    objc_msgSend_p_destroyBodyLayoutState(selfCopy, v880, v885, v886, v887, v888, v881, v882, v883, v884);
    if (v437)
    {
      if (selfCopy->_currentPageBeingLaidOut != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_documentPageIndex(selfCopy->_paginationState, v889, v894, v895, v896, v897, v890, v891, v892, v893) == selfCopy->_currentPageBeingLaidOut)
      {
        bodyLayoutManager = selfCopy->_bodyLayoutManager;
        v908 = objc_msgSend_lastHint(v437, v898, v903, v904, v905, v906, v899, v900, v901, v902);
        v918 = objc_msgSend_lastChildHint(v437, v909, v914, v915, v916, v917, v910, v911, v912, v913);
        Target_childHint = objc_msgSend_layoutStateForLayoutAfterHint_firstTarget_childHint_(bodyLayoutManager, v919, v921, v922, v923, v924, v908, 0, v918, v920);
        objc_msgSend_setBodyLayoutState_(selfCopy->_paginationState, v926, v930, v931, v932, v933, Target_childHint, v927, v928, v929);
      }
    }
  }
}

- (void)p_removeFinishedPageGenerators
{
  v47 = objc_msgSend_sectionHint(self->_paginationState, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  while (objc_msgSend_count(self->_pageGeneratorStack, v11, v16, v17, v18, v19, v12, v13, v14, v15))
  {
    v29 = objc_msgSend_lastObject(self->_pageGeneratorStack, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    if (objc_msgSend_wantsPageInSectionHint_withState_(v29, v30, v33, v34, v35, v36, v47, self->_paginationState, v31, v32))
    {

      break;
    }

    v46 = objc_msgSend_tsu_pop(self->_pageGeneratorStack, v37, v42, v43, v44, v45, v38, v39, v40, v41);
  }
}

- (void)p_advanceSectionIndex
{
  v11 = objc_msgSend_sectionIndex(self->_paginationState, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_sectionHints(self->_paginationState, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v245 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, v26, v27, v28, v29, v11, v23, v24, v25);

  if (!objc_msgSend_pageCount(v245, v30, v35, v36, v37, v38, v31, v32, v33, v34))
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v44, v45, v46, v47, "[TPPaginatedPageController p_advanceSectionIndex]", v41, v42, v43);
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v51, v52, v53);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v59, v60, v61, v62, v63, v49, v58, 5127, 0, "Shouldn't be advancing past an empty section");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v69, v70, v71, v72, v65, v66, v67, v68);
  }

  v73 = objc_msgSend_pageIndex(self->_paginationState, v39, v44, v45, v46, v47, v40, v41, v42, v43);
  objc_msgSend_trimPageHintsFromPageIndex_(v245, v74, v78, v79, v80, v81, v73, v75, v76, v77);
  objc_msgSend_advanceSectionIndex(self->_paginationState, v82, v87, v88, v89, v90, v83, v84, v85, v86);
  for (i = v11 + 1; ; ++i)
  {
    v106 = objc_msgSend_sectionIndex(self->_paginationState, v91, v96, v97, v98, v99, v92, v93, v94, v95);
    paginationState = self->_paginationState;
    if (i >= v106)
    {
      break;
    }

    v112 = objc_msgSend_sectionHints(paginationState, v101, v107, v108, v109, v110, v102, v103, v104, v105);
    v122 = objc_msgSend_count(v112, v113, v118, v119, v120, v121, v114, v115, v116, v117);

    if (i >= v122)
    {
      v141 = objc_alloc_init(TPSectionHint);
      objc_msgSend_addSectionHint_(self->_paginationState, v150, v154, v155, v156, v157, v141, v151, v152, v153);
    }

    else
    {
      v132 = objc_msgSend_sectionHints(self->_paginationState, v123, v128, v129, v130, v131, v124, v125, v126, v127);
      v141 = objc_msgSend_objectAtIndexedSubscript_(v132, v133, v137, v138, v139, v140, i, v134, v135, v136);
    }

    objc_msgSend_setPageHints_(v141, v142, v146, v147, v148, v149, 0, v143, v144, v145);
    v167 = objc_msgSend_documentPageIndex(self->_paginationState, v158, v163, v164, v165, v166, v159, v160, v161, v162);
    objc_msgSend_setDocumentStartPageIndex_(v141, v168, v172, v173, v174, v175, v167, v169, v170, v171);
  }

  v176 = objc_msgSend_sectionIndex(paginationState, v101, v107, v108, v109, v110, v102, v103, v104, v105);
  v186 = objc_msgSend_sectionHints(self->_paginationState, v177, v182, v183, v184, v185, v178, v179, v180, v181);
  v196 = objc_msgSend_count(v186, v187, v192, v193, v194, v195, v188, v189, v190, v191);

  if (v176 < v196)
  {
    v206 = objc_msgSend_sectionHint(self->_paginationState, v197, v202, v203, v204, v205, v198, v199, v200, v201);
    started = objc_msgSend_documentStartPageIndex(v206, v207, v212, v213, v214, v215, v208, v209, v210, v211);
    if (started != objc_msgSend_documentPageIndex(self->_paginationState, v217, v222, v223, v224, v225, v218, v219, v220, v221))
    {
      v235 = self->_paginationState;
      v236 = objc_msgSend_sectionIndex(v235, v226, v231, v232, v233, v234, v227, v228, v229, v230);
      objc_msgSend_trimSectionHintsFromIndex_(v235, v237, v241, v242, v243, v244, v236, v238, v239, v240);
    }
  }
}

- (BOOL)p_didLayOut
{
  v111 = *MEMORY[0x277D85DE8];
  self->_cachedPageIndex = 0x7FFFFFFFFFFFFFFFLL;
  v10 = *MEMORY[0x277D81490];
  self->_cachedBodyTextRange = *MEMORY[0x277D81490];
  isPaginationComplete = objc_msgSend_p_isPaginationComplete(self, a2, v10, v6, v7, v8, v2, v3, v4, v5);
  paginationState = self->_paginationState;
  if (isPaginationComplete)
  {
    v22 = objc_msgSend_sectionIndex(self->_paginationState, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    objc_msgSend_trimSectionHintsFromIndex_(paginationState, v23, v27, v28, v29, v30, v22, v24, v25, v26);
    pageLayoutCache = self->_pageLayoutCache;
    PageIndexNeedingLayout = objc_msgSend_firstPageIndexNeedingLayout(self, v32, v37, v38, v39, v40, v33, v34, v35, v36);
    objc_msgSend_pageLayoutsFromStartIndex_(pageLayoutCache, v42, v46, v47, v48, v49, PageIndexNeedingLayout, v43, v44, v45);
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v50 = v107 = 0u;
    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, v53, v54, v55, v56, &v106, v110, 16, v52);
    if (v62)
    {
      v67 = *v107;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v107 != v67)
          {
            objc_enumerationMutation(v50);
          }

          objc_msgSend_setNeedsInflation(*(*(&v106 + 1) + 8 * i), v57, v63, v64, v65, v66, v58, v59, v60, v61, v106);
        }

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v57, v63, v64, v65, v66, &v106, v110, 16, v61);
      }

      while (v62);
    }
  }

  else
  {
    v78 = objc_msgSend_documentPageIndex(self->_paginationState, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    objc_msgSend_p_invalidateThumbnailForPageIndex_(self, v79, v83, v84, v85, v86, v78, v80, v81, v82);
  }

  if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v69, v74, v75, v76, v77, v70, v71, v72, v73, v106))
  {
    objc_msgSend_p_updatePageCount(self, v87, v92, v93, v94, v95, v88, v89, v90, v91);
  }

  else
  {
    self->_shouldUpdatePageCount = 1;
    if (objc_msgSend_p_isPaginationComplete(self, v87, v92, v93, v94, v95, v88, v89, v90, v91))
    {
      objc_msgSend_backgroundPaginationDidEnd(self, v96, v101, v102, v103, v104, v97, v98, v99, v100);
    }
  }

  return objc_msgSend_p_isPaginationComplete(self, v96, v101, v102, v103, v104, v97, v98, v99, v100);
}

- (void)p_updatePageCount
{
  v9[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_276026C10;
  v9[3] = &unk_27A6A8768;
  v9[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v5, v6, v7, v8, v9, v2, v3, v4);
}

- (id)p_pageHintForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination allowAfterPaginationPoint:(BOOL)point
{
  v17 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v6, v7, v8, v9, index, pagination, point, v5);
  if (v17)
  {
    v22 = objc_msgSend_sectionHints(self->_paginationState, v12, v18, v19, v20, v21, v13, v14, v15, v16);
    v32 = objc_msgSend_sectionIndex(v17, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    v41 = objc_msgSend_objectAtIndexedSubscript_(v22, v33, v37, v38, v39, v40, v32, v34, v35, v36);

    v51 = objc_msgSend_pageIndex(v17, v42, v47, v48, v49, v50, v43, v44, v45, v46);
    v60 = objc_msgSend_pageHintForPageIndex_(v41, v52, v56, v57, v58, v59, v51, v53, v54, v55);
    v70 = v60;
    if (!point && objc_msgSend_pageKind(v60, v61, v66, v67, v68, v69, v62, v63, v64, v65) == 5)
    {
      v79 = MEMORY[0x277D81150];
      v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v75, v76, v77, v78, "[TPPaginatedPageController p_pageHintForPageIndex:forcePagination:allowAfterPaginationPoint:]", v72, v73, v74);
      v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, v85, v86, v87, v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v82, v83, v84);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v90, v91, v92, v93, v94, v80, v89, 5278, 0, "Shouldn't be finding a dirty page hint here");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v95, v100, v101, v102, v103, v96, v97, v98, v99);
    }
  }

  else
  {
    v70 = 0;
  }

  return v70;
}

- (id)p_sectionHintForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination allowAfterPaginationPoint:(BOOL)point
{
  v16 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v6, v7, v8, v9, index, pagination, point, v5);
  if (v16)
  {
    v21 = objc_msgSend_sectionHints(self->_paginationState, v11, v17, v18, v19, v20, v12, v13, v14, v15);
    v31 = objc_msgSend_sectionIndex(v16, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v40 = objc_msgSend_objectAtIndexedSubscript_(v21, v32, v36, v37, v38, v39, v31, v33, v34, v35);
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id)p_pageHintForPageIndexPath:(id)path
{
  pathCopy = path;
  v14 = objc_msgSend_sectionIndex(pathCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v253 = objc_msgSend_pageIndex(pathCopy, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v33 = objc_msgSend_sectionHints(self->_paginationState, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v43 = objc_msgSend_count(v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);

  if (v14 >= v43)
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v49, v50, v51, v52, "[TPPaginatedPageController p_pageHintForPageIndexPath:]", v46, v47, v48);
    v251 = pathCopy;
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v56, v57, v58);
    v73 = objc_msgSend_sectionHints(self->_paginationState, v64, v69, v70, v71, v72, v65, v66, v67, v68);
    v83 = objc_msgSend_count(v73, v74, v79, v80, v81, v82, v75, v76, v77, v78);
    v93 = objc_msgSend_documentRoot(self, v84, v89, v90, v91, v92, v85, v86, v87, v88);
    v103 = objc_msgSend_settings(v93, v94, v99, v100, v101, v102, v95, v96, v97, v98);
    hasBody = objc_msgSend_hasBody(v103, v104, v109, v110, v111, v112, v105, v106, v107, v108);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v114, v115, v116, v117, v118, v54, v63, 5305, 0, "No section hint for this section index (%lu/%lu) hasBody: %d", v14, v83, hasBody);

    pathCopy = v251;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v119, v124, v125, v126, v127, v120, v121, v122, v123);
  }

  v128 = objc_msgSend_sectionHints(self->_paginationState, v44, v49, v50, v51, v52, v45, v46, v47, v48);
  v138 = objc_msgSend_count(v128, v129, v134, v135, v136, v137, v130, v131, v132, v133);

  if (v14 >= v138)
  {
    v249 = 0;
  }

  else
  {
    v148 = objc_msgSend_sectionHints(self->_paginationState, v139, v144, v145, v146, v147, v140, v141, v142, v143);
    v157 = objc_msgSend_objectAtIndexedSubscript_(v148, v149, v153, v154, v155, v156, v14, v150, v151, v152);

    if (v253 >= objc_msgSend_pageCount(v157, v158, v163, v164, v165, v166, v159, v160, v161, v162))
    {
      v176 = MEMORY[0x277D81150];
      v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, v172, v173, v174, v175, "[TPPaginatedPageController p_pageHintForPageIndexPath:]", v169, v170, v171);
      v252 = pathCopy;
      v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v178, v182, v183, v184, v185, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v179, v180, v181);
      v196 = objc_msgSend_pageCount(v157, v187, v192, v193, v194, v195, v188, v189, v190, v191);
      v206 = objc_msgSend_documentRoot(self, v197, v202, v203, v204, v205, v198, v199, v200, v201);
      v216 = objc_msgSend_settings(v206, v207, v212, v213, v214, v215, v208, v209, v210, v211);
      v226 = objc_msgSend_hasBody(v216, v217, v222, v223, v224, v225, v218, v219, v220, v221);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v176, v227, v228, v229, v230, v231, v177, v186, 5308, 0, "No page hint for this page index (%lu/%lu), section: %lu hasBody: %d", v253, v196, v14, v226);

      pathCopy = v252;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v232, v237, v238, v239, v240, v233, v234, v235, v236);
    }

    if (v253 >= objc_msgSend_pageCount(v157, v167, v172, v173, v174, v175, v168, v169, v170, v171))
    {
      v249 = 0;
    }

    else
    {
      v249 = objc_msgSend_pageHintForPageIndex_(v157, v241, v245, v246, v247, v248, v253, v242, v243, v244);
    }
  }

  return v249;
}

- (id)p_pageHintPrecedingPageIndexPath:(id)path
{
  pathCopy = path;
  v14 = objc_msgSend_sectionHints(self->_paginationState, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  sub_275FFD180(v26, v14, pathCopy, -1);

  v24 = sub_275FFD320(v26, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  sub_275FFD2D0(v26);

  return v24;
}

- (id)p_textPageHintPrecedingPageIndexPath:(id)path
{
  pathCopy = path;
  v14 = objc_msgSend_sectionHints(self->_paginationState, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  sub_275FFD180(v44, v14, pathCopy, -1);

  while (1)
  {
    v24 = sub_275FFD320(v44, v15, v16, v17, v18, v19, v20, v21, v22, v23);

    if (!v24)
    {
      break;
    }

    if (sub_275FFD3B8(v44, v25, v26, v27, v28, v29, v30, v31, v32, v33) == 1)
    {
      v24 = sub_275FFD320(v44, v34, v35, v36, v37, v38, v39, v40, v41, v42);
      break;
    }

    sub_275FFCD14(v44, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  }

  sub_275FFD2D0(v44);

  return v24;
}

- (id)p_textPageHintFollowingPageIndexPath:(id)path
{
  pathCopy = path;
  v14 = objc_msgSend_sectionHints(self->_paginationState, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  sub_275FFD180(v44, v14, pathCopy, 1);

  while (1)
  {
    v24 = sub_275FFD320(v44, v15, v16, v17, v18, v19, v20, v21, v22, v23);

    if (!v24)
    {
      break;
    }

    if (sub_275FFD3B8(v44, v25, v26, v27, v28, v29, v30, v31, v32, v33) == 1)
    {
      v24 = sub_275FFD320(v44, v34, v35, v36, v37, v38, v39, v40, v41, v42);
      break;
    }

    sub_275FFCF2C(v44, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  }

  sub_275FFD2D0(v44);

  return v24;
}

- (id)p_lastValidPageHint
{
  LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, a2, v6, v7, v8, v9, v2, v3, v4, v5);

  return objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v11, v14, v15, v16, v17, LaidOutDocumentPageIndex, 0, 0, v13);
}

- (id)p_lastValidTextPageHint:(unint64_t *)hint
{
  *hint = objc_msgSend_documentPageIndex(self->_paginationState, a2, v6, v7, v8, v9, hint, v3, v4, v5);

  return objc_msgSend_i_textPageHintPrecedingPageIndex_(self, v12, v16, v17, v18, v19, hint, v13, v14, v15);
}

- (unint64_t)p_lastValidTextPageIndex
{
  v12 = objc_msgSend_documentPageIndex(self->_paginationState, a2, v6, v7, v8, v9, v2, v3, v4, v5);

  return objc_msgSend_p_textPageIndexPrecedingPageIndex_(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
}

- (unint64_t)p_textPageIndexPrecedingPageIndex:(unint64_t)index
{
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (index)
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPaginatedPageController p_textPageIndexPrecedingPageIndex:]", v3, v4, v5);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v16, v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v24, v25, v26, v27, v28, v14, v23, 5375, 0, "Bogus page index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v34, v35, v36, v37, v30, v31, v32, v33);
    }

    v38 = objc_msgSend_sectionHints(self->_paginationState, a2, v6, v7, v8, v9, index, v3, v4, v5);
    sub_275FFD28C(v77, v38, index - 1);

    while (1)
    {
      v48 = sub_275FFD320(v77, v39, v40, v41, v42, v43, v44, v45, v46, v47);

      if (!v48)
      {
        break;
      }

      if (sub_275FFD3B8(v77, v49, v50, v51, v52, v53, v54, v55, v56, v57) == 1 || sub_275FFD3B8(v77, v58, v59, v60, v61, v62, v63, v64, v65, v66) == 6)
      {
        v10 = sub_275FFD698(v77);
        goto LABEL_11;
      }

      sub_275FFCD14(v77, v67, v68, v69, v70, v71, v72, v73, v74, v75);
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:
    sub_275FFD2D0(v77);
  }

  return v10;
}

- (void)performBlockForExport:(id)export
{
  exportCopy = export;
  offscreenSearchDelegate = self->_offscreenSearchDelegate;
  MustIncludeAdornmentsCounter = objc_msgSend_textLayoutMustIncludeAdornmentsCounter(offscreenSearchDelegate, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  objc_msgSend_setTextLayoutMustIncludeAdornmentsCounter_(offscreenSearchDelegate, v15, v19, v20, v21, v22, MustIncludeAdornmentsCounter + 1, v16, v17, v18);
  exportCopy[2]();
  v23 = self->_offscreenSearchDelegate;
  v33 = objc_msgSend_textLayoutMustIncludeAdornmentsCounter(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  objc_msgSend_setTextLayoutMustIncludeAdornmentsCounter_(v23, v34, v38, v39, v40, v41, v33 - 1, v35, v36, v37);
}

- (void)p_notifyObserversDidLayoutWhileSyncing:(BOOL)syncing
{
  syncingCopy = syncing;
  v45 = *MEMORY[0x277D85DE8];
  LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, a2, v6, v7, v8, v9, syncing, v3, v4, v5);
  LaidOutSectionIndex = objc_msgSend_lastLaidOutSectionIndex(self->_paginationState, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v23 = self->_layoutObservers;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, v26, v27, v28, v29, &v40, v44, 16, v25);
  if (v30)
  {
    v31 = *v41;
    do
    {
      v32 = 0;
      do
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(v23);
        }

        v33 = *(*(&v40 + 1) + 8 * v32);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_pageController_didLayOutPageAtIndex_sectionIndex_syncing_(v33, v34, v36, v37, v38, v39, self, LaidOutDocumentPageIndex, LaidOutSectionIndex, syncingCopy, v40);
        }

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v34, v36, v37, v38, v39, &v40, v44, 16, v35);
    }

    while (v30);
  }
}

- (BOOL)performBackgroundPagination
{
  v23 = 0;
  v24 = &v23;
  v6.n128_u64[0] = 0x2020000000;
  v25 = 0x2020000000;
  v26 = 0;
  v11 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);

  if (v11)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v16.n128_u64[0] = 3221225472;
    v22[1] = 3221225472;
    v22[2] = sub_276027F9C;
    v22[3] = &unk_27A6A9308;
    v22[4] = self;
    v22[5] = &v23;
    objc_msgSend_accquireLockAndPerformAction_(self, v12, v16, v17, v18, v19, v22, v13, v14, v15);
    v20 = *(v24 + 24);
  }

  else
  {
    v20 = 1;
    *(v24 + 24) = 1;
  }

  _Block_object_dispose(&v23, 8);
  return v20 & 1;
}

- (void)backgroundPaginationDidEnd
{
  if (self->_shouldUpdatePageCount)
  {
    v6[3] = v2;
    v6[4] = v3;
    objc_initWeak(v6, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_27602809C;
    v4[3] = &unk_27A6A9538;
    objc_copyWeak(&v5, v6);
    dispatch_async(MEMORY[0x277D85CD0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(v6);
  }
}

- (BOOL)p_layOutNextPageOnceWithOffscreenLayoutController
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v11[1] = 3221225472;
  v11[2] = sub_2760281E8;
  v11[3] = &unk_27A6A9270;
  v11[4] = self;
  v11[5] = &v12;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v5, v6, v7, v8, v11, v2, v3, v4);
  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (void)p_invalidateThumbnailsFromSectionToEnd:(id)end
{
  endCopy = end;
  v13 = objc_msgSend_documentRoot(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v23 = objc_msgSend_bodyStorage(v13, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  v32 = objc_msgSend_sectionIndexForSection_(v23, v24, v28, v29, v30, v31, endCopy, v25, v26, v27);

  if (v32 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_p_invalidateThumbnailsFromSectionIndexToEnd_(self, v33, v37, v38, v39, v40, 0, v34, v35, v36);
  }

  else
  {
    objc_msgSend_p_invalidateThumbnailsFromSectionIndexToEnd_(self, v33, v37, v38, v39, v40, v32, v34, v35, v36);
  }
}

- (void)p_invalidateThumbnailsFromSectionIndexToEnd:(unint64_t)end
{
  v12 = objc_msgSend_sectionHints(self->_paginationState, a2, v6, v7, v8, v9, end, v3, v4, v5);
  v22 = objc_msgSend_count(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);

  if (v22 > end)
  {
    v32 = objc_msgSend_sectionHints(self->_paginationState, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    v62 = objc_msgSend_objectAtIndexedSubscript_(v32, v33, v37, v38, v39, v40, end, v34, v35, v36);

    v50 = objc_msgSend_documentPageRange(v62, v41, v46, v47, v48, v49, v42, v43, v44, v45);
    v59 = v50;
    if (v50 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v60 = &v51[v50];
      if (&v51[v50 - 1] <= 0x7FFFFFFFFFFFFFFDLL)
      {
        completePageCount = self->_completePageCount;
        if (completePageCount <= v60)
        {
          completePageCount = &v51[v50];
        }

        v60 = (completePageCount - 1);
      }

      while (v59 <= v60)
      {
        objc_msgSend_p_invalidateThumbnailForPageIndex_(self, v51, v55, v56, v57, v58, v59++, v52, v53, v54);
      }
    }
  }
}

- (void)p_invalidateThumbnailForPageIndex:(unint64_t)index
{
  v60 = *MEMORY[0x277D85DE8];
  v12 = objc_msgSend_documentRoot(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  objc_msgSend_invalidateThumbnailForPageIndex_(v12, v13, v17, v18, v19, v20, index, v14, v15, v16);
  v29 = objc_msgSend_thumbnailIdentifierForPageIndex_(v12, v21, v25, v26, v27, v28, index, v22, v23, v24);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v30 = self->_layoutObservers;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, v33, v34, v35, v36, &v55, v59, 16, v32);
  if (v37)
  {
    v38 = *v56;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(v30);
        }

        v40 = TSUProtocolCast();
        v48 = v40;
        if (v40)
        {
          objc_msgSend_pageController_didInvalidateThumbnailWithIdentifier_(v40, v41, v44, v45, v46, v47, self, v29, v42, v43, &unk_288546A58);
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v49, v51, v52, v53, v54, &v55, v59, 16, v50);
    }

    while (v37);
  }
}

- (id)i_pageHintForPageIndex:(unint64_t)index
{
  v13 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v4, v5, v6, v7, index, 0, 0, v3);
  if (v13)
  {
    v18 = objc_msgSend_p_pageHintForPageIndexPath_(self, v9, v14, v15, v16, v17, v13, v10, v11, v12);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)i_pageIndexPathForPageIndex:(unint64_t)index forcePagination:(BOOL)pagination allowAfterPaginationPoint:(BOOL)point
{
  if (pagination)
  {
    objc_msgSend_p_paginateThroughPageIndex_forLayoutController_clearOffscreenInfos_(self, a2, v6, v7, v8, v9, index, 0, 0, v5);
  }

  if (point || objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, a2, v6, v7, v8, v9, index, pagination, point, v5))
  {
    v13 = objc_msgSend_sectionHints(self->_paginationState, a2, v6, v7, v8, v9, index, pagination, point, v5);
    v27 = objc_msgSend_count(v13, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    if (v27)
    {
      v32 = 0;
      v33 = 0;
      while (1)
      {
        v34 = objc_msgSend_objectAtIndexedSubscript_(v13, v23, v28, v29, v30, v31, v32, v24, v25, v26);
        v44 = objc_msgSend_pageCount(v34, v35, v40, v41, v42, v43, v36, v37, v38, v39) + v33;
        if (v44 > index)
        {
          break;
        }

        ++v32;
        v33 = v44;
        if (v27 == v32)
        {
          goto LABEL_9;
        }
      }

      v46 = [TPPageIndexPath alloc];
      v45 = objc_msgSend_initWithSectionIndex_pageIndex_(v46, v47, v50, v51, v52, v53, v32, index - v33, v48, v49);
    }

    else
    {
LABEL_9:
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

- (void)i_trimPageAtIndex:(unint64_t)index toCharIndex:(unint64_t)charIndex removeFootnoteReferenceCount:(unint64_t)count removeAutoNumberFootnoteCount:(unint64_t)footnoteCount
{
  if ((objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, a2, v6, v7, v8, v9, index, charIndex, count, footnoteCount) & 1) == 0)
  {
    v24 = MEMORY[0x277D81150];
    v242 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v20, v21, v22, v23, "[TPPaginatedPageController i_trimPageAtIndex:toCharIndex:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]", v17, v18, v19);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v26, v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v34, v35, v36, v37, v38, v242, v33, 5624, 0, "trimming on or after where layout is");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v44, v45, v46, v47, v40, v41, v42, v43);
  }

  if (objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, v15, v20, v21, v22, v23, v16, v17, v18, v19) != index)
  {
    v56 = MEMORY[0x277D81150];
    v243 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v52, v53, v54, v55, "[TPPaginatedPageController i_trimPageAtIndex:toCharIndex:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]", v49, v50, v51);
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v61, v62, v63, v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v58, v59, v60);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v66, v67, v68, v69, v70, v243, v65, 5625, 0, "trimming on an unexpected page");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v76, v77, v78, v79, v72, v73, v74, v75);
  }

  v80 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v48, v52, v53, v54, v55, index, 0, 0, v51);
  v244 = v80;
  if (v80)
  {
    v89 = objc_msgSend_p_pageHintForPageIndexPath_(self, v80, v85, v86, v87, v88, v80, v82, v83, v84);
    if (objc_msgSend_pageKind(v89, v90, v95, v96, v97, v98, v91, v92, v93, v94) != 1)
    {
      v108 = MEMORY[0x277D81150];
      v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, v104, v105, v106, v107, "[TPPaginatedPageController i_trimPageAtIndex:toCharIndex:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]", v101, v102, v103);
      v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, v114, v115, v116, v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v111, v112, v113);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v108, v119, v120, v121, v122, v123, v109, v118, 5632, 0, "Can't trim a non-text page");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v124, v129, v130, v131, v132, v125, v126, v127, v128);
    }

    v133 = objc_msgSend_documentRoot(self, v99, v104, v105, v106, v107, v100, v101, v102, v103);
    v143 = objc_msgSend_settings(v133, v134, v139, v140, v141, v142, v135, v136, v137, v138);
    v153 = objc_msgSend_footnoteKind(v143, v144, v149, v150, v151, v152, v145, v146, v147, v148);

    v163 = objc_msgSend_lastColumn(v89, v154, v159, v160, v161, v162, v155, v156, v157, v158);
    v169 = v163;
    if ((v153 - 1) >= 2)
    {
      objc_msgSend_trimToCharIndex_inTarget_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_(v163, v164, v165, v166, v167, v168, charIndex, 0, count, footnoteCount);
    }

    else
    {
      objc_msgSend_trimToCharIndex_inTarget_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_(v163, v164, v165, v166, v167, v168, charIndex, 0, 0, footnoteCount);
    }

    objc_msgSend_footnoteLayoutRange(v89, v170, v175, v176, v177, v178, v171, v172, v173, v174);
    if (v179)
    {
      footnoteLayoutController = self->_footnoteLayoutController;
      v189 = objc_msgSend_range(v89, v179, v184, v185, v186, v187, v180, v181, v182, v183);
      v202 = objc_msgSend_footnoteLayoutRangeForPageCharRange_(footnoteLayoutController, v190, v193, v194, v195, v196, v189, v190, v191, v192);
      if (v202 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v207 = v197;
        v208 = objc_msgSend_footnoteLayoutRange(v89, v197, v203, v204, v205, v206, v198, v199, v200, v201);
        if (v208 <= &v207[v202])
        {
          v216 = &v207[v202];
        }

        else
        {
          v216 = v208;
        }

        if (v208 >= &v207[v202])
        {
          objc_msgSend_setFootnoteLayoutRange_(v89, v209, v212, v213, v214, v215, &v207[v202], v216 - &v207[v202], v210, v211);
        }

        else
        {
          objc_msgSend_setFootnoteLayoutRange_(v89, v209, v212, v213, v214, v215, v208, v216 - v208, v210, v211);
        }
      }
    }
  }

  else
  {
    v217 = MEMORY[0x277D81150];
    v218 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, v85, v86, v87, v88, "[TPPaginatedPageController i_trimPageAtIndex:toCharIndex:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]", v82, v83, v84);
    v227 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v219, v223, v224, v225, v226, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v220, v221, v222);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v217, v228, v229, v230, v231, v232, v218, v227, 5628, 0, "invalid nil value for '%{public}s'", "pageIndexPath");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v233, v238, v239, v240, v241, v234, v235, v236, v237);
  }
}

- (id)i_columnPriorToPageIndex:(unint64_t)index
{
  if ((objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(self->_paginationState, a2, v6, v7, v8, v9, index, v3, v4, v5) & 1) == 0)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "[TPPaginatedPageController i_columnPriorToPageIndex:]", v13, v14, v15);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v23, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v31, v32, v33, v34, v35, v21, v30, 5660, 0, "requesting a column from a page that needs layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v41, v42, v43, v44, v37, v38, v39, v40);
  }

  v45 = objc_msgSend_p_textPageIndexPrecedingPageIndex_(self, v12, v16, v17, v18, v19, index, v13, v14, v15);
  if (v45 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v53 = 0;
  }

  else
  {
    v54 = v45;
    v57 = objc_msgSend_p_cachedPageLayoutForPageIndex_preferredLayoutController_(self, v46, v49, v50, v51, v52, v45, 0, v47, v48);
    if (!v57 || (v62 = [TPVisibleColumnProxy alloc], (v53 = objc_msgSend_initWithPageIndex_pageController_(v62, v63, v66, v67, v68, v69, v54, self, v64, v65)) == 0))
    {
      v70 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v55, v58, v59, v60, v61, v54, 0, 0, v56);
      v53 = objc_msgSend_lastColumn(v70, v71, v76, v77, v78, v79, v72, v73, v74, v75);
    }
  }

  return v53;
}

- (id)i_topicNumberHintsAfterPageIndex:(unint64_t)index
{
  if ((objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(self->_paginationState, a2, v6, v7, v8, v9, index, v3, v4, v5) & 1) == 0)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "[TPPaginatedPageController i_topicNumberHintsAfterPageIndex:]", v13, v14, v15);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v23, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v31, v32, v33, v34, v35, v21, v30, 5687, 0, "requesting topicNumberHints past one page after where we've laid out to / are currently laying out");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v41, v42, v43, v44, v37, v38, v39, v40);
  }

  v49 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v12, v16, v17, v18, v19, index, 0, 1, v15);
  if (v49)
  {
    v54 = objc_msgSend_p_textPageHintFollowingPageIndexPath_(self, v45, v50, v51, v52, v53, v49, v46, v47, v48);
    v64 = objc_msgSend_topicNumberHints(v54, v55, v60, v61, v62, v63, v56, v57, v58, v59);
  }

  else
  {
    v65 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v50, v51, v52, v53, "[TPPaginatedPageController i_topicNumberHintsAfterPageIndex:]", v46, v47, v48);
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v68, v69, v70);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v76, v77, v78, v79, v80, v66, v75, 5691, 0, "invalid nil value for '%{public}s'", "pageIndexPath");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v86, v87, v88, v89, v82, v83, v84, v85);
    v64 = 0;
  }

  return v64;
}

- (id)i_columnAfterPageIndex:(unint64_t)index
{
  if ((objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(self->_paginationState, a2, v6, v7, v8, v9, index, v3, v4, v5) & 1) == 0)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "[TPPaginatedPageController i_columnAfterPageIndex:]", v13, v14, v15);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v23, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v31, v32, v33, v34, v35, v21, v30, 5703, 0, "requesting a column past one page after where we've laid out to / are currently laying out");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v41, v42, v43, v44, v37, v38, v39, v40);
  }

  v49 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v12, v16, v17, v18, v19, index, 0, 1, v15);
  if (v49)
  {
    v54 = objc_msgSend_p_textPageHintFollowingPageIndexPath_(self, v45, v50, v51, v52, v53, v49, v46, v47, v48);
    v64 = objc_msgSend_firstColumn(v54, v55, v60, v61, v62, v63, v56, v57, v58, v59);
  }

  else
  {
    v65 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v50, v51, v52, v53, "[TPPaginatedPageController i_columnAfterPageIndex:]", v46, v47, v48);
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v68, v69, v70);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v76, v77, v78, v79, v80, v66, v75, 5708, 0, "invalid nil value for '%{public}s'", "pageIndexPath");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v86, v87, v88, v89, v82, v83, v84, v85);
    v64 = 0;
  }

  return v64;
}

- (id)i_firstChildHintAfterPageIndex:(unint64_t)index
{
  if ((objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(self->_paginationState, a2, v6, v7, v8, v9, index, v3, v4, v5) & 1) == 0)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "[TPPaginatedPageController i_firstChildHintAfterPageIndex:]", v13, v14, v15);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v23, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v31, v32, v33, v34, v35, v21, v30, 5720, 0, "requesting a column past one page after where we've laid out to / are currently laying out");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v41, v42, v43, v44, v37, v38, v39, v40);
  }

  v49 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v12, v16, v17, v18, v19, index, 0, 1, v15);
  if (v49)
  {
    v54 = objc_msgSend_p_textPageHintFollowingPageIndexPath_(self, v45, v50, v51, v52, v53, v49, v46, v47, v48);
    v64 = objc_msgSend_firstChildHint(v54, v55, v60, v61, v62, v63, v56, v57, v58, v59);
  }

  else
  {
    v65 = MEMORY[0x277D81150];
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v50, v51, v52, v53, "[TPPaginatedPageController i_firstChildHintAfterPageIndex:]", v46, v47, v48);
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v68, v69, v70);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v76, v77, v78, v79, v80, v66, v75, 5725, 0, "invalid nil value for '%{public}s'", "pageIndexPath");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v86, v87, v88, v89, v82, v83, v84, v85);
    v64 = 0;
  }

  return v64;
}

- (void)i_inflateColumnsInBodyLayout:(id)layout
{
  layoutCopy = layout;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2760293DC;
  v14[3] = &unk_27A6A8418;
  v15 = layoutCopy;
  selfCopy = self;
  v5 = layoutCopy;
  objc_msgSend_accquireLockAndPerformAction_(self, v6, v10, v11, v12, v13, v14, v7, v8, v9);
}

- (void)i_inflateFootnotesInFootnoteContainer:(id)container
{
  containerCopy = container;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276029F7C;
  v14[3] = &unk_27A6A8418;
  v14[4] = self;
  v15 = containerCopy;
  v5 = containerCopy;
  objc_msgSend_accquireLockAndPerformAction_(self, v6, v10, v11, v12, v13, v14, v7, v8, v9);
}

- (void)i_inflateTextFlowsOnPage:(id)page
{
  pageCopy = page;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_27602A1E8;
  v14[3] = &unk_27A6A8418;
  v14[4] = self;
  v15 = pageCopy;
  v5 = pageCopy;
  objc_msgSend_accquireLockAndPerformAction_(self, v6, v10, v11, v12, v13, v14, v7, v8, v9);
}

- (id)i_textPageHintPrecedingPageIndex:(unint64_t *)index
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2760196AC;
  v17 = sub_2760196BC;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_27602A520;
  v12[3] = &unk_27A6A91F8;
  v12[5] = &v13;
  v12[6] = index;
  v12[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v12, v3, v4, v5);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (void)i_invalidatePageIndex:(unint64_t)index
{
  v10[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v10[1] = 3221225472;
  v10[2] = sub_27602A72C;
  v10[3] = &unk_27A6A9588;
  v10[4] = self;
  v10[5] = index;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v10, v3, v4, v5);
}

- (void)i_invalidateFlows:(id)flows startingPage:(id)page
{
  flowsCopy = flows;
  pageCopy = page;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_27602A81C;
  v18[3] = &unk_27A6A95B0;
  v18[4] = self;
  v19 = flowsCopy;
  v20 = pageCopy;
  v8 = pageCopy;
  v9 = flowsCopy;
  objc_msgSend_accquireLockAndPerformAction_(self, v10, v14, v15, v16, v17, v18, v11, v12, v13);
}

- (void)i_registerPageLayout:(id)layout
{
  layoutCopy = layout;
  if (!layoutCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v9, v10, v11, v12, "[TPPaginatedPageController i_registerPageLayout:]", v6, v7, v8);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v16, v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v24, v25, v26, v27, v28, v14, v23, 5901, 0, "can't register or unregister nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v34, v35, v36, v37, v30, v31, v32, v33);
  }

  v38 = objc_msgSend_info(layoutCopy, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v48 = objc_msgSend_pageController(v38, v39, v44, v45, v46, v47, v40, v41, v42, v43);

  if (v48 != self)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v53, v54, v55, v56, "[TPPaginatedPageController i_registerPageLayout:]", v50, v51, v52);
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v60, v61, v62);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v68, v69, v70, v71, v72, v58, v67, 5902, 0, "wrong page controller");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v78, v79, v80, v81, v74, v75, v76, v77);
  }

  if (layoutCopy)
  {
    objc_msgSend_enqueueInsertion_(self->_pageLayoutCache, v49, v53, v54, v55, v56, layoutCopy, v50, v51, v52);
  }
}

- (void)i_unregisterPageLayout:(id)layout
{
  layoutCopy = layout;
  if (!layoutCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v9, v10, v11, v12, "[TPPaginatedPageController i_unregisterPageLayout:]", v6, v7, v8);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v16, v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v24, v25, v26, v27, v28, v14, v23, 5911, 0, "can't register or unregister nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v34, v35, v36, v37, v30, v31, v32, v33);
  }

  v38 = objc_msgSend_info(layoutCopy, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v48 = objc_msgSend_pageController(v38, v39, v44, v45, v46, v47, v40, v41, v42, v43);

  if (v48 != self)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v53, v54, v55, v56, "[TPPaginatedPageController i_unregisterPageLayout:]", v50, v51, v52);
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm", v60, v61, v62);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v68, v69, v70, v71, v72, v58, v67, 5912, 0, "wrong page controller");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v78, v79, v80, v81, v74, v75, v76, v77);
  }

  if (layoutCopy)
  {
    objc_msgSend_enqueueRemoval_(self->_pageLayoutCache, v49, v53, v54, v55, v56, layoutCopy, v50, v51, v52);
  }
}

- (void)i_setNeedsDynamicLayoutForLayoutController:(id)controller onPageIndex:(unint64_t)index
{
  v10[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v10[1] = 3221225472;
  v10[2] = sub_27602AC48;
  v10[3] = &unk_27A6A9588;
  v10[4] = self;
  v10[5] = index;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v10, index, v4, v5);
}

- (TPPageControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)d_timePaginationResettingMetrics:(BOOL)metrics
{
  v10[0] = MEMORY[0x277D85DD0];
  v6.n128_u64[0] = 3221225472;
  v10[1] = 3221225472;
  v10[2] = sub_27602AFDC;
  v10[3] = &unk_27A6A94E8;
  v10[4] = self;
  metricsCopy = metrics;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v6, v7, v8, v9, v10, v3, v4, v5);
}

@end