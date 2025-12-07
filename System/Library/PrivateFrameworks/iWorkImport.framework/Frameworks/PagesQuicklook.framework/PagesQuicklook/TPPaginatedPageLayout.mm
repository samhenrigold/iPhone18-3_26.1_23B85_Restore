@interface TPPaginatedPageLayout
- (BOOL)allowIntersectionOfChildLayout:(id)layout;
- (BOOL)allowsFootnotes;
- (BOOL)canHavePreviousPageFootnotes;
- (BOOL)hasFooters;
- (BOOL)hasHeaders;
- (BOOL)isReadyForBodyLayout;
- (BOOL)marginsAreMirrored;
- (BOOL)p_isHeaderFooterLayout:(id)layout;
- (BOOL)shouldHeaderFooterBeVisible:(int64_t)visible;
- (BOOL)textIsVertical;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)bodyRect;
- (CGRect)footnoteContainerFrameWithSize:(CGSize)size;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (CGSize)maximumFrameSizeForChild:(id)child;
- (Class)backgroundFillOwningInfoClass;
- (Class)repClassForTextLayout:(id)layout;
- (NSArray)floatingDrawableLayouts;
- (NSFastEnumeration)childTextLayoutsForExteriorWrap;
- (TPBodyLayout)bodyLayout;
- (TPMasterDrawableProvider)masterDrawableProvider;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (double)blockHeightAvailableForFootnotes;
- (double)maxAutoGrowBlockHeightForTextLayout:(id)layout;
- (double)maxAutoGrowLineWidthForTextLayout:(id)layout;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (id)additionalDependenciesForChildLayout:(id)layout;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)dependentsOfTextLayout:(id)layout;
- (id)existingAttachmentLayoutForInfo:(id)info;
- (id)headerFooterProvider;
- (id)layoutForChildInfo:(id)info;
- (id)layoutsCausingWrapOnTextLayoutTarget:(id)target ignoreIntersection:(BOOL)intersection;
- (id)layoutsForChildInfo:(id)info;
- (id)layoutsForProvidingGuidesForChildLayouts;
- (id)p_childLayoutInParentLayout:(id)layout forChildInfo:(id)info;
- (id)p_existingChildLayoutForInfo:(id)info;
- (id)p_generateChildTextLayoutsForExteriorWrap;
- (id)p_insertBodyLayout;
- (id)p_insertChildLayoutForInfo:(id)info;
- (id)p_insertFootnoteContainerLayout;
- (id)p_insertValidatedChildLayoutForInfo:(id)info;
- (id)p_insertValidatedFloatingLayouts;
- (id)p_insertValidatedMasterLayouts;
- (id)p_orderedChildInfos;
- (id)primaryLayoutForInfo:(id)info;
- (id)sectionTemplateDrawableProvider;
- (int)naturalAlignmentForTextLayout:(id)layout;
- (pair<double,)p_sideMargins;
- (unint64_t)autosizeFlagsForTextLayout:(id)layout;
- (unint64_t)pageIndex;
- (void)addAttachmentLayout:(id)layout;
- (void)beginResizeWrapInvalidationCluster;
- (void)dealloc;
- (void)endResizeWrapInvalidationCluster;
- (void)evacuateOldChildLayoutCache;
- (void)inflateFootnotesInFootnoteContainer:(id)container;
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)invalidateBodyAndMarginLayouts;
- (void)invalidateFootnoteContainers;
- (void)invalidateFootnoteSeparatorLine;
- (void)invalidateHeaderFooterLayouts;
- (void)invalidateHeaderFooterLayoutsCache;
- (void)invalidateLayoutsForPageCountChange;
- (void)invalidatePosition;
- (void)invalidateSize;
- (void)p_addLayoutIfAttached:(id)attached;
- (void)p_addLayoutsForInfos:(id)infos toArray:(id)array;
- (void)p_clearChildTextLayoutCache;
- (void)p_populateOldChildLayoutsWithLayouts:(id)layouts;
- (void)p_removeInlineLayoutsFromPageLayout;
- (void)p_removeNoLongerInlineLayoutsFromBodyLayout;
- (void)p_sortChildLayouts;
- (void)p_updateFromLayoutInfoProvider;
- (void)p_validateTextLayoutsForExteriorWrapAffectedByAnchoredAttachments;
- (void)parentDidChange;
- (void)parentWillChangeTo:(id)to;
- (void)processWidowAndInflation;
- (void)rebuildChildLayoutsOnNextValidationForcingTextLayoutOnTopLevelObjects:(BOOL)objects;
- (void)replaceChild:(id)child with:(id)with;
- (void)setChildren:(id)children;
- (void)setNeedsInflation;
- (void)validate;
- (void)wrappableChildInvalidated:(id)invalidated;
@end

@implementation TPPaginatedPageLayout

- (void)dealloc
{
  if (self->_oldChildLayouts)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPaginatedPageLayout dealloc]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 133, 0, "_oldChildLayouts should have been released at the end of -validate or after laying out the body");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  objc_msgSend_setParent_(self->_footnoteContainerLayout, a2, v5, v6, v7, v8, 0, v2, v3, v4);
  v35.receiver = self;
  v35.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v35 dealloc];
}

- (BOOL)shouldHeaderFooterBeVisible:(int64_t)visible
{
  v6.receiver = self;
  v6.super_class = TPPaginatedPageLayout;
  return [(TSWPPageLayout *)&v6 shouldHeaderFooterBeVisible:visible]&& self->_shouldHeaderFooterBeVisible;
}

- (Class)backgroundFillOwningInfoClass
{
  v11 = objc_msgSend_pageIndex(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_info(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v31 = objc_msgSend_documentRoot(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v32, v35, v36, v37, v38, v11, v31, v33, v34);
  v39 = objc_opt_class();

  return v39;
}

- (id)headerFooterProvider
{
  if (!self->_headerFooterProvider)
  {
    v11 = objc_msgSend_pageIndex(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
    v21 = objc_msgSend_info(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    v31 = objc_msgSend_documentRoot(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v32, v35, v36, v37, v38, v11, v31, v33, v34);

    if ((isPageTemplatePageIndex_documentRoot & 1) == 0)
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v44, v45, v46, v47, "[TPPaginatedPageLayout headerFooterProvider]", v41, v42, v43);
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v51, v52, v53);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v59, v60, v61, v62, v63, v49, v58, 166, 0, "Page must be laid out before fetching header/footer provider OR the page index is for a page template which lacks header/footer providers.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v69, v70, v71, v72, v65, v66, v67, v68);
    }
  }

  headerFooterProvider = self->_headerFooterProvider;

  return headerFooterProvider;
}

- (id)sectionTemplateDrawableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sectionTemplateDrawableProvider);

  if (!WeakRetained)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v8, v9, v10, v11, "[TPPaginatedPageLayout sectionTemplateDrawableProvider]", v5, v6, v7);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v23, v24, v25, v26, v27, v13, v22, 175, 0, "Page must be laid out before fetching master drawable provider");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  v37 = objc_loadWeakRetained(&self->_sectionTemplateDrawableProvider);

  return v37;
}

- (TPBodyLayout)bodyLayout
{
  v11 = objc_msgSend_layoutController(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_info(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v31 = objc_msgSend_bodyInfo(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  v39 = objc_msgSend_layoutForInfo_childOfLayout_(v11, v32, v35, v36, v37, v38, v31, self, v33, v34);

  return v39;
}

- (CGRect)bodyRect
{
  v11 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_documentRoot(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  objc_msgSend_pageSize(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  v32 = v31.n128_f64[0];
  v34 = v33.n128_f64[0];
  objc_msgSend_topMargin(v21, v35, v31, v33, v40, v41, v36, v37, v38, v39);
  v43 = v42.n128_f64[0];
  objc_msgSend_bottomMargin(v21, v44, v42, v49, v50, v51, v45, v46, v47, v48);
  v53 = v52.n128_f64[0];
  if (objc_msgSend_shouldHeaderFooterBeVisible_(self, v54, v52, v58, v59, v60, 0, v55, v56, v57))
  {
    objc_msgSend_headerMargin(v21, v61, v66, v67, v68, v69, v62, v63, v64, v65);
    v71 = v70.n128_f64[0];
    objc_msgSend_headerHeight(self, v72, v70, v77, v78, v79, v73, v74, v75, v76);
    v66.n128_f64[0] = v71 + v66.n128_f64[0];
    if (v43 < v66.n128_f64[0])
    {
      v43 = v66.n128_f64[0];
    }
  }

  v89 = v34 - v53;
  if (objc_msgSend_shouldHeaderFooterBeVisible_(self, v61, v66, v67, v68, v69, 1, v63, v64, v65))
  {
    objc_msgSend_footerMargin(v21, v80, v85, v86, v87, v88, v81, v82, v83, v84);
    v91 = v90.n128_f64[0];
    objc_msgSend_footerHeight(self, v92, v90, v97, v98, v99, v93, v94, v95, v96);
    v86.n128_f64[0] = v34 - v91;
    v85.n128_f64[0] = v34 - v91 - v85.n128_f64[0];
    if (v85.n128_f64[0] < v89)
    {
      v89 = v85.n128_f64[0];
    }
  }

  objc_msgSend_p_sideMargins(self, v80, v85, v86, v87, v88, v81, v82, v83, v84);
  v101 = v100;
  v103 = v32 - v102 - v100;

  v104 = v101;
  v105 = v43;
  v106 = v103;
  v107 = v89 - v43;
  result.size.height = v107;
  result.size.width = v106;
  result.origin.y = v105;
  result.origin.x = v104;
  return result;
}

- (BOOL)allowsFootnotes
{
  if ((self->_contentFlags & 0x10) != 0)
  {
    v12 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
    v22 = objc_msgSend_documentRoot(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    if (objc_msgSend_laysOutBodyVertically(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27))
    {
      v41 = objc_msgSend_info(self, v32, v37, v38, v39, v40, v33, v34, v35, v36);
      v51 = objc_msgSend_documentRoot(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);
      v61 = objc_msgSend_settings(v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
      hasFacingPages = objc_msgSend_hasFacingPages(v61, v62, v67, v68, v69, v70, v63, v64, v65, v66);

      if (hasFacingPages && !self->_overrideAllowFootnotes)
      {
        v81 = objc_msgSend_info(self, v72, v77, v78, v79, v80, v73, v74, v75, v76);
        v91 = objc_msgSend_pageIndex(v81, v82, v87, v88, v89, v90, v83, v84, v85, v86);

        v10 = v91 ^ 1;
        return v10 & 1;
      }
    }

    else
    {
    }

    v10 = 1;
    return v10 & 1;
  }

  v10 = 0;
  return v10 & 1;
}

- (BOOL)canHavePreviousPageFootnotes
{
  if ((self->_contentFlags & 0x10) == 0)
  {
    goto LABEL_6;
  }

  v11 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_documentRoot(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  if ((objc_msgSend_laysOutBodyVertically(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26) & 1) == 0)
  {

    goto LABEL_6;
  }

  v40 = objc_msgSend_info(self, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v50 = objc_msgSend_documentRoot(v40, v41, v46, v47, v48, v49, v42, v43, v44, v45);
  v60 = objc_msgSend_settings(v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
  hasFacingPages = objc_msgSend_hasFacingPages(v60, v61, v66, v67, v68, v69, v62, v63, v64, v65);

  if (!hasFacingPages)
  {
LABEL_6:
    v91 = 0;
    return v91 & 1;
  }

  v80 = objc_msgSend_info(self, v71, v76, v77, v78, v79, v72, v73, v74, v75);
  v90 = objc_msgSend_pageIndex(v80, v81, v86, v87, v88, v89, v82, v83, v84, v85);

  v91 = v90 ^ 1;
  return v91 & 1;
}

- (BOOL)hasHeaders
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_documentRoot(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_settings(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  hasHeaders = objc_msgSend_hasHeaders(v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);

  return hasHeaders;
}

- (BOOL)hasFooters
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_documentRoot(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_settings(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  hasFooters = objc_msgSend_hasFooters(v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);

  return hasFooters;
}

- (void)invalidateLayoutsForPageCountChange
{
  v172 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  selfCopy = self;
  v12 = objc_msgSend_info(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v13 = TSUDynamicCast();

  if (v13)
  {
    v167 = 0;
    v168 = &v167;
    v169 = 0x2020000000;
    v170 = 0;
    v161 = 0;
    v162 = &v161;
    v163 = 0x3042000000;
    v164 = sub_275FC4BDC;
    v165 = sub_275FC4BE8;
    v166 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_275FC4BF0;
    aBlock[3] = &unk_27A6A8378;
    aBlock[4] = &v167;
    aBlock[5] = &v161;
    obj = _Block_copy(aBlock);
    objc_storeWeak(v162 + 5, obj);
    v23 = objc_msgSend_children(selfCopy, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    objc_msgSend_enumerateObjectsUsingBlock_(v23, v24, v28, v29, v30, v31, obj, v25, v26, v27);

    if (*(v168 + 24) == 1)
    {
      objc_msgSend_invalidate(selfCopy, v32, v37, v38, v39, v40, v33, v34, v35, v36);
      v153 = objc_opt_new();
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v49 = objc_msgSend_floatingDrawableInfos(v13, v41, 0, v46, v47, v48, v42, v43, v44, v45);
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, v52, v53, v54, v55, &v156, v171, 16, v51);
      if (v56)
      {
        v57 = *v157;
        v154 = v49;
        while (2)
        {
          for (i = 0; i != v56; ++i)
          {
            if (*v157 != v57)
            {
              objc_enumerationMutation(v154);
            }

            objc_opt_class();
            v59 = TSUDynamicCast();
            v69 = objc_msgSend_textStorage(v59, v60, v65, v66, v67, v68, v61, v62, v63, v64);
            if (objc_msgSend_isLinked(v59, v70, v75, v76, v77, v78, v71, v72, v73, v74) && objc_msgSend_attachmentCount(v69, v79, v84, v85, v86, v87, v80, v81, v82, v83) && (objc_msgSend_containsObject_(v153, v88, v92, v93, v94, v95, v69, v89, v90, v91) & 1) == 0)
            {
              v109 = objc_msgSend_attachmentCount(v69, v96, v101, v102, v103, v104, v97, v98, v99, v100);
              if (v109)
              {
                v114 = 0;
                while (1)
                {
                  v115 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v69, v105, v110, v111, v112, v113, v114, 0, v107, v108);
                  v125 = (objc_msgSend_elementKind(v115, v116, v121, v122, v123, v124, v117, v118, v119, v120) & 0x20) == 0;

                  if (!v125)
                  {
                    break;
                  }

                  if (v109 == ++v114)
                  {
                    goto LABEL_15;
                  }
                }

                v133 = objc_msgSend_pageController(v13, v105, v110, v111, v112, v113, v126, v106, v107, v108);
                v143 = objc_msgSend_pageIndex(selfCopy, v134, v139, v140, v141, v142, v135, v136, v137, v138);
                objc_msgSend_i_invalidatePageIndex_(v133, v144, v148, v149, v150, v151, v143, v145, v146, v147);

                v49 = v154;
                goto LABEL_20;
              }

LABEL_15:
              objc_msgSend_addObject_(v153, v105, v110, v111, v112, v113, v69, v106, v107, v108);
            }
          }

          v49 = v154;
          v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v154, v127, v129, v130, v131, v132, &v156, v171, 16, v128);
          if (v56)
          {
            continue;
          }

          break;
        }
      }

LABEL_20:
    }

    _Block_object_dispose(&v161, 8);
    objc_destroyWeak(&v166);
    _Block_object_dispose(&v167, 8);
  }
}

- (id)primaryLayoutForInfo:(id)info
{
  v71 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = objc_opt_class();
  if (objc_msgSend_canPartitionInline(v5, v6, v11, v12, v13, v14, v7, v8, v9, v10) && (objc_msgSend_owningAttachmentNoRecurse(infoCopy, v15, v20, v21, v22, v23, v16, v17, v18, v19), v24 = objc_claimAutoreleasedReturnValue(), isAttachedToBodyText = objc_msgSend_isAttachedToBodyText(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29), v24, isAttachedToBodyText))
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v36 = objc_msgSend_bodyLayout(self, v15, 0, v21, v22, v23, v35, v17, v18, v19, 0);
    v46 = objc_msgSend_columns(v36, v37, v42, v43, v44, v45, v38, v39, v40, v41);

    v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, v49, v50, v51, v52, &v66, v70, 16, v48);
    if (v57)
    {
      v62 = *v67;
LABEL_5:
      v63 = 0;
      while (1)
      {
        if (*v67 != v62)
        {
          objc_enumerationMutation(v46);
        }

        v64 = objc_msgSend_partitionedLayoutForInfo_(*(*(&v66 + 1) + 8 * v63), v53, v58, v59, v60, v61, infoCopy, v54, v55, v56);
        if (v64)
        {
          break;
        }

        if (v57 == ++v63)
        {
          v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v53, v58, v59, v60, v61, &v66, v70, 16, v56);
          if (v57)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v64 = 0;
    }
  }

  else
  {
    v64 = objc_msgSend_layoutForChildInfo_(self, v15, v20, v21, v22, v23, infoCopy, v17, v18, v19);
  }

  return v64;
}

- (id)layoutForChildInfo:(id)info
{
  v9 = objc_msgSend_p_childLayoutInParentLayout_forChildInfo_(self, a2, v5, v6, v7, v8, self, info, v3, v4);

  return v9;
}

- (id)p_childLayoutInParentLayout:(id)layout forChildInfo:(id)info
{
  v35 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  infoCopy = info;
  sub_275FC5090(self, infoCopy);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v8 = v31 = 0u;
  v15 = 0;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v11, v12, v13, v14, &v30, v34, 16, v10);
  if (v20)
  {
    v25 = *v31;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v8);
        }

        v27 = *(*(&v30 + 1) + 8 * i);
        if (!v15 || objc_msgSend_orderedBefore_(*(*(&v30 + 1) + 8 * i), v16, v21, v22, v23, v24, v15, v17, v18, v19, v30))
        {
          v28 = v27;

          v15 = v28;
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, v21, v22, v23, v24, &v30, v34, 16, v19);
    }

    while (v20);
  }

  return v15;
}

- (id)layoutsForChildInfo:(id)info
{
  v3 = sub_275FC5090(self, info);
  v13 = objc_msgSend_copy(v3, v4, v9, v10, v11, v12, v5, v6, v7, v8);

  return v13;
}

- (BOOL)isReadyForBodyLayout
{
  if (!self->_childLayoutsValid || !self->_headerFooterProvider)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionTemplateDrawableProvider);
  v3 = WeakRetained != 0;

  return v3;
}

- (id)layoutsForProvidingGuidesForChildLayouts
{
  v11 = objc_msgSend_children(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_arrayByAddingObject_(v11, v12, v16, v17, v18, v19, self, v13, v14, v15);

  return v20;
}

- (unint64_t)pageIndex
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_pageIndex(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (void)parentWillChangeTo:(id)to
{
  toCopy = to;
  v34.receiver = self;
  v34.super_class = TPPaginatedPageLayout;
  [(TSWPPageLayout *)&v34 parentWillChangeTo:toCopy];
  if (!toCopy)
  {
    objc_opt_class();
    v14 = objc_msgSend_info(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    v24 = objc_msgSend_pageController(v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
    v25 = TSUDynamicCast();
    objc_msgSend_i_unregisterPageLayout_(v25, v26, v30, v31, v32, v33, self, v27, v28, v29);
  }
}

- (void)parentDidChange
{
  v210.receiver = self;
  v210.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v210 parentDidChange];
  v12 = objc_msgSend_parent(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);

  if (v12)
  {
    v22 = objc_msgSend_info(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);

    if (!v22)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v28, v29, v30, v31, "[TPPaginatedPageLayout parentDidChange]", v25, v26, v27);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v35, v36, v37);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v43, v44, v45, v46, v47, v33, v42, 405, 0, "invalid nil value for '%{public}s'", "self.info");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v53, v54, v55, v56, v49, v50, v51, v52);
    }

    v57 = objc_msgSend_rootLayout(self, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    v67 = objc_msgSend_layoutController(v57, v58, v63, v64, v65, v66, v59, v60, v61, v62);
    v82 = objc_msgSend_canvas(v67, v68, v73, v74, v75, v76, v69, v70, v71, v72);
    if (v82)
    {
      v87 = objc_msgSend_rootLayout(self, v77, v83, v84, v85, v86, v78, v79, v80, v81);
      v97 = objc_msgSend_layoutController(v87, v88, v93, v94, v95, v96, v89, v90, v91, v92);
      v107 = objc_msgSend_canvas(v97, v98, v103, v104, v105, v106, v99, v100, v101, v102);
      v117 = objc_msgSend_infosToDisplay(v107, v108, v113, v114, v115, v116, v109, v110, v111, v112);
      v127 = objc_msgSend_info(self, v118, v123, v124, v125, v126, v119, v120, v121, v122);
      v136 = objc_msgSend_containsObject_(v117, v128, v132, v133, v134, v135, v127, v129, v130, v131);

      if ((v136 & 1) == 0)
      {
        v146 = MEMORY[0x277D81150];
        v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, v142, v143, v144, v145, "[TPPaginatedPageLayout parentDidChange]", v139, v140, v141);
        v156 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v148, v152, v153, v154, v155, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v149, v150, v151);
        v166 = objc_msgSend_info(self, v157, v162, v163, v164, v165, v158, v159, v160, v161);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v146, v167, v168, v169, v170, v171, v147, v156, 406, 0, "unexpected page layout added for page: %@", v166);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v172, v177, v178, v179, v180, v173, v174, v175, v176);
      }
    }

    else
    {
    }

    objc_msgSend_invalidateChildren(self, v137, v142, v143, v144, v145, v138, v139, v140, v141);
    objc_opt_class();
    v190 = objc_msgSend_info(self, v181, v186, v187, v188, v189, v182, v183, v184, v185);
    v200 = objc_msgSend_pageController(v190, v191, v196, v197, v198, v199, v192, v193, v194, v195);
    v201 = TSUDynamicCast();
    objc_msgSend_i_registerPageLayout_(v201, v202, v206, v207, v208, v209, self, v203, v204, v205);
  }
}

- (void)replaceChild:(id)child with:(id)with
{
  childCopy = child;
  withCopy = with;
  if (childCopy != withCopy)
  {
    objc_msgSend_removeObject_(self->_anchoredDrawableLayouts, v7, v12, v13, v14, v15, childCopy, v8, v9, v10);
  }

  v25.receiver = self;
  v25.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v25 replaceChild:childCopy with:withCopy];
  objc_msgSend_p_clearChildTextLayoutCache(self, v16, v21, v22, v23, v24, v17, v18, v19, v20);
}

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  childCopy = child;
  objc_msgSend_p_addLayoutIfAttached_(self, v7, v11, v12, v13, v14, childCopy, v8, v9, v10);
  v24.receiver = self;
  v24.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v24 insertChild:childCopy atIndex:index];
  objc_msgSend_p_clearChildTextLayoutCache(self, v15, v20, v21, v22, v23, v16, v17, v18, v19);
}

- (void)setChildren:(id)children
{
  v47 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  objc_msgSend_removeAllObjects(self->_anchoredDrawableLayouts, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = childrenCopy;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v17, v18, v19, v20, &v42, v46, 16, v16);
  if (v25)
  {
    v30 = *v43;
    do
    {
      v31 = 0;
      do
      {
        if (*v43 != v30)
        {
          objc_enumerationMutation(v14);
        }

        objc_msgSend_p_addLayoutIfAttached_(self, v21, v26, v27, v28, v29, *(*(&v42 + 1) + 8 * v31++), v22, v23, v24);
      }

      while (v25 != v31);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v21, v26, v27, v28, v29, &v42, v46, 16, v24);
    }

    while (v25);
  }

  v41.receiver = self;
  v41.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v41 setChildren:v14];
  objc_msgSend_p_clearChildTextLayoutCache(self, v32, v37, v38, v39, v40, v33, v34, v35, v36);
}

- (void)p_addLayoutIfAttached:(id)attached
{
  attachedCopy = attached;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v14 = objc_msgSend_info(v4, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v24 = objc_msgSend_owningAttachment(v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  isDrawable = objc_msgSend_isDrawable(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);

  if (isDrawable)
  {
    anchoredDrawableLayouts = self->_anchoredDrawableLayouts;
    if (!anchoredDrawableLayouts)
    {
      v44 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v45 = self->_anchoredDrawableLayouts;
      self->_anchoredDrawableLayouts = v44;

      anchoredDrawableLayouts = self->_anchoredDrawableLayouts;
    }

    objc_msgSend_addObject_(anchoredDrawableLayouts, v35, v39, v40, v41, v42, v4, v36, v37, v38);
  }
}

- (CGSize)maximumFrameSizeForChild:(id)child
{
  childCopy = child;
  v14 = objc_msgSend_info(childCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v24 = objc_msgSend_owningAttachmentNoRecurse(v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);

  if (v24 && objc_msgSend_isAnchored(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29) && (objc_opt_class(), TSUDynamicCast(), v34 = objc_claimAutoreleasedReturnValue(), isHTMLWrap = objc_msgSend_isHTMLWrap(v34, v35, v40, v41, v42, v43, v36, v37, v38, v39), v34, isHTMLWrap))
  {
    v54 = objc_msgSend_bodyLayout(self, v45, v50, v51, v52, v53, v46, v47, v48, v49);
    objc_msgSend_maximumFrameSizeForChild_(v54, v55, v59, v60, v61, v62, childCopy, v56, v57, v58);
    v64 = v63;
    v66 = v65;
  }

  else
  {
    v71.receiver = self;
    v71.super_class = TPPaginatedPageLayout;
    [(TPPaginatedPageLayout *)&v71 maximumFrameSizeForChild:childCopy];
    v64 = v67;
    v66 = v68;
  }

  v69 = v64;
  v70 = v66;
  result.height = v70;
  result.width = v69;
  return result;
}

- (BOOL)allowIntersectionOfChildLayout:(id)layout
{
  layoutCopy = layout;
  v55.receiver = self;
  v55.super_class = TPPaginatedPageLayout;
  if ([(TPPaginatedPageLayout *)&v55 allowIntersectionOfChildLayout:layoutCopy])
  {
    v14 = objc_msgSend_info(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    v24 = objc_msgSend_documentRoot(v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);

    if (objc_msgSend_isCollaborativeClient(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29))
    {
      v43 = objc_msgSend_info(layoutCopy, v34, v39, v40, v41, v42, v35, v36, v37, v38);
      isSectionInfo = objc_msgSend_isSectionInfo_(v24, v44, v48, v49, v50, v51, v43, v45, v46, v47);

      v53 = isSectionInfo ^ 1;
    }

    else
    {
      v53 = 1;
    }
  }

  else
  {
    v53 = 0;
  }

  return v53 & 1;
}

- (id)computeLayoutGeometry
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_msgSend_pageFrame(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = objc_alloc(MEMORY[0x277D80300]);
  v29.n128_u64[0] = v21;
  v30.n128_u64[0] = v23;
  v31.n128_u64[0] = v25;
  v32.n128_u64[0] = v27;
  v38 = objc_msgSend_initWithFrame_(v28, v33, v29, v30, v31, v32, v34, v35, v36, v37);

  return v38;
}

- (id)dependentLayouts
{
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v25 = objc_msgSend_bodyLayout(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  if (v25)
  {
    objc_msgSend_addObject_(v11, v21, v26, v27, v28, v29, v25, v22, v23, v24);
  }

  v30 = 0;
  v31 = self + *MEMORY[0x277D80FC0];
  v32 = 1;
  do
  {
    v33 = 0;
    v34 = v32;
    v35 = &v31[24 * v30];
    do
    {
      v40 = *&v35[v33];
      if (v40)
      {
        objc_msgSend_addObject_(v11, v36, v41, v42, v43, v44, v40, v37, v38, v39);
      }

      v33 += 8;
    }

    while (v33 != 24);
    v32 = 0;
    v30 = 1;
  }

  while ((v34 & 1) != 0);

  return v11;
}

- (void)invalidatePosition
{
  v39.receiver = self;
  v39.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v39 invalidatePosition];
  v12 = objc_msgSend_floatingDrawableLayouts(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  objc_msgSend_makeObjectsPerformSelector_(v12, v13, v17, v18, v19, v20, sel_invalidateExteriorWrap, v14, v15, v16);

  v30 = objc_msgSend_anchoredDrawableLayouts(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  objc_msgSend_makeObjectsPerformSelector_(v30, v31, v35, v36, v37, v38, sel_invalidateExteriorWrap, v32, v33, v34);
}

- (void)invalidateSize
{
  v37 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = TPPaginatedPageLayout;
  [(TPPaginatedPageLayout *)&v35 invalidateSize];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = objc_msgSend_dependentLayouts(self, v3, 0, v8, v9, v10, v4, v5, v6, v7, 0);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v14, v15, v16, v17, &v31, v36, 16, v13);
  if (v23)
  {
    v28 = *v32;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(v11);
        }

        v30 = *(*(&v31 + 1) + 8 * i);
        if (objc_msgSend_layoutState(v30, v18, v24, v25, v26, v27, v19, v20, v21, v22) != 2)
        {
          objc_msgSend_invalidateFrame(v30, v18, v24, v25, v26, v27, v19, v20, v21, v22);
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v18, v24, v25, v26, v27, &v31, v36, 16, v22);
    }

    while (v23);
  }
}

- (id)p_generateChildTextLayoutsForExteriorWrap
{
  objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v160 = v159 = self;
  v20 = objc_msgSend_children(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v35 = objc_msgSend_count(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  if (v35)
  {
    v158 = v20;
    v45 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v30, v36, v37, v38, v39, v20, v32, v33, v34);
    for (i = 0; i < objc_msgSend_count(v45, v40, v46, v47, v48, v49, v41, v42, v43, v44); ++i)
    {
      v59 = objc_msgSend_objectAtIndexedSubscript_(v45, v51, v55, v56, v57, v58, i, v52, v53, v54);
      objc_opt_class();
      v60 = TSUDynamicCast();
      v70 = objc_msgSend_children(v59, v61, v66, v67, v68, v69, v62, v63, v64, v65);
      v80 = objc_msgSend_count(v70, v71, v76, v77, v78, v79, v72, v73, v74, v75);

      if (v80 || v60)
      {
        if (i >= v35 || (objc_msgSend_info(v59, v81, v86, v87, v88, v89, v82, v83, v84, v85), (v95 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend_info(v159, v90, v96, v97, v98, v99, v91, v92, v93, v94), v100 = objc_claimAutoreleasedReturnValue(), objc_msgSend_documentRoot(v100, v101, v106, v107, v108, v109, v102, v103, v104, v105), v110 = objc_claimAutoreleasedReturnValue(), objc_msgSend_info(v59, v111, v116, v117, v118, v119, v112, v113, v114, v115), v120 = objc_claimAutoreleasedReturnValue(), isSectionInfo = objc_msgSend_isSectionInfo_(v110, v121, v125, v126, v127, v128, v120, v122, v123, v124), v120, v110, v100, v95, (isSectionInfo & 1) == 0))
        {
          v130 = objc_msgSend_children(v59, v81, v86, v87, v88, v89, v82, v83, v84, v85);
          objc_msgSend_addObjectsFromArray_(v45, v131, v135, v136, v137, v138, v130, v132, v133, v134);

          if (v60)
          {
            if (objc_msgSend_shouldWrapAroundExternalDrawables(v60, v139, v144, v145, v146, v147, v140, v141, v142, v143))
            {
              objc_msgSend_addObject_(v160, v148, v152, v153, v154, v155, v60, v149, v150, v151);
            }
          }
        }
      }
    }

    v20 = v158;
  }

  v156 = objc_msgSend_copy(v160, v30, v36, v37, v38, v39, v31, v32, v33, v34);

  return v156;
}

- (void)p_clearChildTextLayoutCache
{
  if (self->_childTextLayoutsForExteriorWrapCache)
  {
    if (*MEMORY[0x277D814A8] != -1)
    {
      sub_2760381B0();
    }

    childTextLayoutsForExteriorWrapCache = self->_childTextLayoutsForExteriorWrapCache;
  }

  else
  {
    childTextLayoutsForExteriorWrapCache = 0;
  }

  self->_childTextLayoutsForExteriorWrapCache = 0;
}

- (NSFastEnumeration)childTextLayoutsForExteriorWrap
{
  if (self->_childTextLayoutsForExteriorWrapCache)
  {
    ++self->_childTextLayoutCacheHits;
  }

  else
  {
    v11 = objc_msgSend_p_generateChildTextLayoutsForExteriorWrap(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
    childTextLayoutsForExteriorWrapCache = self->_childTextLayoutsForExteriorWrapCache;
    self->_childTextLayoutsForExteriorWrapCache = v11;

    self->_childTextLayoutCacheHits = 0;
  }

  v13 = self->_childTextLayoutsForExteriorWrapCache;

  return v13;
}

- (NSArray)floatingDrawableLayouts
{
  objc_opt_class();
  v12 = objc_msgSend_info(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v13 = TSUDynamicCast();

  if (v13)
  {
    v23 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v19, v20, v21, v22, v15, v16, v17, v18);
    v33 = objc_msgSend_floatingDrawableInfos(v13, v24, v29, v30, v31, v32, v25, v26, v27, v28);
    objc_msgSend_p_addLayoutsForInfos_toArray_(self, v34, v37, v38, v39, v40, v33, v23, v35, v36);
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  return v23;
}

- (void)processWidowAndInflation
{
  v102 = objc_msgSend_bodyLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_processWidowAndInflation(v102, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  if (v20 && (objc_msgSend_isEmpty(self->_footnoteContainerLayout, v21, v26, v27, v28, v29, v22, v23, v24, v25) & 1) == 0)
  {
    v103 = objc_msgSend_info(self, v30, v35, v36, v37, v38, v31, v32, v33, v34);
    v48 = objc_msgSend_pageController(v103, v39, v44, v45, v46, v47, v40, v41, v42, v43);
    v58 = objc_msgSend_pageIndex(v103, v49, v54, v55, v56, v57, v50, v51, v52, v53);
    v66 = objc_msgSend_footnoteLayoutRangeForPageIndex_forcePagination_(v48, v59, v62, v63, v64, v65, v58, 0, v60, v61);
    v68 = v67;

    if (v66 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v77 = MEMORY[0x277D81150];
      v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v73, v74, v75, v76, "[TPPaginatedPageLayout processWidowAndInflation]", v70, v71, v72);
      v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v80, v81, v82);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v88, v89, v90, v91, v92, v78, v87, 652, 0, "Should have a found a valid footnote layout range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v98, v99, v100, v101, v94, v95, v96, v97);
    }

    objc_msgSend_trimFootnoteLayoutsFromIndex_(self->_footnoteContainerLayout, v69, v73, v74, v75, v76, v68, v70, v71, v72);
  }
}

- (void)invalidateHeaderFooterLayoutsCache
{
  objc_msgSend_i_clearHeaderFooterLayouts(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_msgSend_rebuildChildLayoutsOnNextValidationForcingTextLayoutOnTopLevelObjects_(self, v11, v15, v16, v17, v18, 0, v12, v13, v14);

  objc_msgSend_invalidate(self, v19, v24, v25, v26, v27, v20, v21, v22, v23);
}

- (void)invalidateHeaderFooterLayouts
{
  v85 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_headerFooterProviderValid(self, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    if (objc_msgSend_i_updateHeaderFooterLayouts(self, v11, v16, v17, v18, v19, v12, v13, v14, v15))
    {
      objc_msgSend_rebuildChildLayoutsOnNextValidationForcingTextLayoutOnTopLevelObjects_(self, v20, v24, v25, v26, v27, 0, v21, v22, v23);

      objc_msgSend_invalidate(self, v28, v33, v34, v35, v36, v29, v30, v31, v32);
    }

    else
    {
      v37 = 0;
      v38 = self + *MEMORY[0x277D80FC0];
      v39 = 1;
      do
      {
        v40 = 0;
        v41 = v39;
        v42 = &v38[24 * v37];
        do
        {
          v43 = *&v42[8 * v40];
          objc_msgSend_invalidateFrame(v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v61 = objc_msgSend_dependentLayouts(v43, v53, 0, v58, v59, v60, v54, v55, v56, v57, 0);
          v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, v64, v65, v66, v67, &v80, v84, 16, v63);
          if (v73)
          {
            v78 = *v81;
            do
            {
              for (i = 0; i != v73; ++i)
              {
                if (*v81 != v78)
                {
                  objc_enumerationMutation(v61);
                }

                objc_msgSend_invalidateFrame(*(*(&v80 + 1) + 8 * i), v68, v74, v75, v76, v77, v69, v70, v71, v72);
              }

              v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v68, v74, v75, v76, v77, &v80, v84, 16, v72);
            }

            while (v73);
          }

          ++v40;
        }

        while (v40 != 3);
        v39 = 0;
        v37 = 1;
      }

      while ((v41 & 1) != 0);
    }
  }
}

- (void)invalidateBodyAndMarginLayouts
{
  v11 = objc_msgSend_bodyLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);

  if (v11)
  {
    v30 = objc_msgSend_bodyLayout(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    objc_msgSend_invalidateFrame(v30, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  }
}

- (void)invalidateFootnoteSeparatorLine
{
  v39 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_documentRoot(v39, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_footnoteKind(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25) != 1;
  objc_msgSend_setIncludeFootnoteSeparatorLine_(self->_footnoteContainerLayout, v31, v35, v36, v37, v38, v30, v32, v33, v34);
}

- (void)invalidateFootnoteContainers
{
  v11 = objc_msgSend_bodyLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_msgSend_resetFootnoteHeightMeasurer(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  objc_msgSend_removeFromParent(self->_footnoteContainerLayout, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  footnoteContainerLayout = self->_footnoteContainerLayout;
  self->_footnoteContainerLayout = 0;

  self->_childLayoutsValid = 0;
}

- (void)rebuildChildLayoutsOnNextValidationForcingTextLayoutOnTopLevelObjects:(BOOL)objects
{
  self->_childLayoutsValid = 0;
  if (objects)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3042000000;
    v27 = sub_275FC4BDC;
    v28 = sub_275FC4BE8;
    v29 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_275FC6D8C;
    aBlock[3] = &unk_27A6A83A0;
    aBlock[4] = &v24;
    v4 = _Block_copy(aBlock);
    objc_storeWeak(v25 + 5, v4);
    v14 = objc_msgSend_children(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    objc_msgSend_enumerateObjectsUsingBlock_(v14, v15, v19, v20, v21, v22, v4, v16, v17, v18);

    _Block_object_dispose(&v24, 8);
    objc_destroyWeak(&v29);
  }
}

- (void)setNeedsInflation
{
  v11 = objc_msgSend_bodyLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_msgSend_setNeedsInflation(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  objc_opt_class();
  v30 = objc_msgSend_footnoteContainerLayout(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v40 = TSUDynamicCast();

  objc_msgSend_setNeedsInflation(v40, v31, v36, v37, v38, v39, v32, v33, v34, v35);
}

- (double)blockHeightAvailableForFootnotes
{
  v11 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_documentRoot(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  if (objc_msgSend_laysOutBodyVertically(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26))
  {
    objc_msgSend_bodyRect(self, v31, v36, v37, v38, v39, v32, v33, v34, v35);
    v45.n128_f64[0] = CGRectGetWidth(v63);
  }

  else
  {
    objc_msgSend_bodyRect(self, v31, v36, v37, v38, v39, v32, v33, v34, v35);
    v45.n128_f64[0] = CGRectGetHeight(v64);
  }

  v49 = v45.n128_f64[0];
  v50 = objc_msgSend_bodyLayout(self, v40, v45, v46, v47, v48, v41, v42, v43, v44);
  objc_msgSend_contentBlockHeight(v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
  v61 = v49 - v60;

  return v61;
}

- (void)inflateFootnotesInFootnoteContainer:(id)container
{
  containerCopy = container;
  v13 = objc_msgSend_footnoteContainerLayout(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);

  if (v13 != containerCopy)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "[TPPaginatedPageLayout inflateFootnotesInFootnoteContainer:]", v15, v16, v17);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v25, v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v33, v34, v35, v36, v37, v23, v32, 760, 0, "Why are we trying to inflate a footnote container layout that isn't ours?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v43, v44, v45, v46, v39, v40, v41, v42);
  }

  objc_opt_class();
  v56 = objc_msgSend_info(self, v47, v52, v53, v54, v55, v48, v49, v50, v51);
  v66 = objc_msgSend_pageController(v56, v57, v62, v63, v64, v65, v58, v59, v60, v61);
  v67 = TSUDynamicCast();
  objc_msgSend_i_inflateFootnotesInFootnoteContainer_(v67, v68, v72, v73, v74, v75, containerCopy, v69, v70, v71);
}

- (CGRect)footnoteContainerFrameWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  objc_msgSend_bodyRect(self, a2, size, *&size.height, v7, v8, v3, v4, v5, v6);
  v13 = v12.n128_f64[0];
  v15 = v14.n128_f64[0];
  v17 = v16.n128_f64[0];
  v19 = v18.n128_f64[0];
  v25 = objc_msgSend_info(self, v20, v12, v14, v16, v18, v21, v22, v23, v24);
  v35 = objc_msgSend_documentRoot(v25, v26, v31, v32, v33, v34, v27, v28, v29, v30);
  v45 = objc_msgSend_laysOutBodyVertically(v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);

  if (v45)
  {
    v55 = objc_msgSend_bodyLayout(self, v46, v51, v52, v53, v54, v47, v48, v49, v50);
    v56 = v55 != 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = objc_msgSend_info(self, v46, v51, v52, v53, v54, v47, v48, v49, v50);
  v67 = objc_msgSend_documentRoot(v57, v58, v63, v64, v65, v66, v59, v60, v61, v62);
  v77 = objc_msgSend_footnoteKind(v67, v68, v73, v74, v75, v76, v69, v70, v71, v72) == 0 && v56;

  if (v77 == 1)
  {
    if (v45)
    {
      v87 = objc_msgSend_bodyLayout(self, v78, v83, v84, v85, v86, v79, v80, v81, v82);
      v97 = objc_msgSend_columns(v87, v88, v93, v94, v95, v96, v89, v90, v91, v92);
      v107 = objc_msgSend_lastObject(v97, v98, v103, v104, v105, v106, v99, v100, v101, v102);
      objc_msgSend_frameBounds(v107, v108, v113, v114, v115, v116, v109, v110, v111, v112);
      v118 = v117;

      v13 = v13 + v118 - width;
    }

    else
    {
      v135.origin.x = v13;
      v135.origin.y = v15;
      v135.size.width = v17;
      v135.size.height = v19;
      v15 = CGRectGetMaxY(v135) - height;
    }
  }

  else
  {
    v119 = objc_msgSend_bodyLayout(self, v78, v83, v84, v85, v86, v79, v80, v81, v82);
    objc_msgSend_contentBlockHeight(v119, v120, v125, v126, v127, v128, v121, v122, v123, v124);
    v130 = v129;
    if (v45)
    {
      v13 = v13 + v17 - v129 - width;
    }

    else
    {
      v136.origin.x = v13;
      v136.origin.y = v15;
      v136.size.width = v17;
      v136.size.height = v19;
      v15 = v130 + CGRectGetMinY(v136);
    }
  }

  v131 = v13;
  v132 = v15;
  v133 = width;
  v134 = height;
  result.size.height = v134;
  result.size.width = v133;
  result.origin.y = v132;
  result.origin.x = v131;
  return result;
}

- (id)layoutsCausingWrapOnTextLayoutTarget:(id)target ignoreIntersection:(BOOL)intersection
{
  v367 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v334 = targetCopy;
  objc_opt_class();
  v16 = objc_msgSend_info(self, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v17 = TSUDynamicCast();

  v335 = v17;
  if (!v17 || (objc_msgSend_shouldWrapAroundExternalDrawables(targetCopy, v18, v23, v24, v25, v26, v19, v20, v21, v22) & 1) == 0)
  {
    v115 = 0;
    goto LABEL_83;
  }

  v36 = objc_msgSend_parent(targetCopy, v27, v32, v33, v34, v35, v28, v29, v30, v31);
  selfCopy = self;
  objc_opt_class();
  v346 = TSUClassAndProtocolCast();

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_275FC7D24;
  aBlock[3] = &unk_27A6A83C8;
  intersectionCopy = intersection;
  v344 = targetCopy;
  v362 = v344;
  v37 = _Block_copy(aBlock);
  objc_msgSend_isInGroup(v344, v38, v43, v44, v45, v46, v39, v40, v41, v42, &unk_28851B9A0, &unk_28853CDB0);
  v56 = objc_msgSend_info(v346, v47, v52, v53, v54, v55, v48, v49, v50, v51);
  v71 = objc_msgSend_owningAttachment(v56, v57, v62, v63, v64, v65, v58, v59, v60, v61);
  if (!v71)
  {

    goto LABEL_8;
  }

  v76 = objc_msgSend_info(v346, v66, v72, v73, v74, v75, v67, v68, v69, v70);
  v86 = objc_msgSend_owningAttachment(v76, v77, v82, v83, v84, v85, v78, v79, v80, v81);
  isAnchored = objc_msgSend_isAnchored(v86, v87, v92, v93, v94, v95, v88, v89, v90, v91);

  if (isAnchored)
  {
LABEL_8:
    v116 = objc_msgSend_floatingDrawableLayouts(selfCopy, v97, v102, v103, v104, v105, v98, v99, v100, v101);
    v126 = objc_msgSend_anchoredDrawableLayouts(selfCopy, v117, v122, v123, v124, v125, v118, v119, v120, v121);
    v136 = objc_msgSend_allObjects(v126, v127, v132, v133, v134, v135, v128, v129, v130, v131);
    v145 = objc_msgSend_arrayByAddingObjectsFromArray_(v116, v137, v141, v142, v143, v144, v136, v138, v139, v140);
    v333 = objc_msgSend_mutableCopy(v145, v146, v151, v152, v153, v154, v147, v148, v149, v150);

    goto LABEL_9;
  }

  v333 = objc_opt_new();
LABEL_9:
  v337 = objc_msgSend_drawablesZOrder(v335, v106, v111, v112, v113, v114, v107, v108, v109, v110);
  objc_opt_class();
  v160 = TSUDynamicCast();
  if (v160)
  {
    do
    {
      v165 = objc_msgSend_info(v160, v155, v161, v162, v163, v164, v156, v157, v158, v159);
      v340 = objc_msgSend_zOrderOfDrawable_(v337, v166, v170, v171, v172, v173, v165, v167, v168, v169);

      objc_opt_class();
      v183 = objc_msgSend_parent(v160, v174, v179, v180, v181, v182, v175, v176, v177, v178);
      v336 = TSUDynamicCast();

      v184 = v336;
      if (v340 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v160 = v336;
    }

    while (v336);
    if (v340 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v185 = MEMORY[0x277CBEB58];
      v186 = objc_msgSend_count(v333, v155, v161, v162, v163, v164, v156, v157, v158, v159);
      v115 = objc_msgSend_setWithCapacity_(v185, v187, v191, v192, v193, v194, v186, v188, v189, v190);
      v359 = 0u;
      v360 = 0u;
      v357 = 0u;
      v358 = 0u;
      obj = v333;
      v343 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v195, v197, v198, v199, v200, &v357, v366, 16, v196);
      if (!v343)
      {
        goto LABEL_79;
      }

      v342 = *v358;
      if (v346)
      {
        v207 = v346 == selfCopy;
      }

      else
      {
        v207 = 1;
      }

      v208 = v207;
      v338 = v208;
      while (1)
      {
        for (i = 0; i != v343; ++i)
        {
          if (*v358 != v342)
          {
            objc_enumerationMutation(obj);
          }

          v210 = *(*(&v357 + 1) + 8 * i);
          if (v210 != v344 && v210 != v346)
          {
            v341 = i;
            v212 = v346;
            v222 = v212;
            if (v338)
            {
              v223 = 1;
              v224 = v212;
            }

            else
            {
              v225 = v212;
              do
              {
                v224 = objc_msgSend_parent(v225, v213, v218, v219, v220, v221, v214, v215, v216, v217);

                if (v224)
                {
                  v226 = v224 == selfCopy;
                }

                else
                {
                  v226 = 1;
                }

                v223 = v226;
                if (v224 == v210)
                {
                  break;
                }

                v225 = v224;
              }

              while ((v223 & 1) == 0);
            }

            if (objc_opt_respondsToSelector())
            {
              v236 = v210;
              objc_msgSend_descendentWrappables(v236, v237, v242, v243, v244, v245, v238, v239, v240, v241);
            }

            else
            {
              v236 = 0;
              objc_msgSend_descendentWrappables(0, v227, v232, v233, v234, v235, v228, v229, v230, v231);
            }
            v347 = ;
            v345 = v236;
            if (!v236)
            {
              goto LABEL_49;
            }

            if (v346)
            {
              v255 = objc_msgSend_indexOfObject_(v347, v246, v251, v252, v253, v254, v222, v248, v249, v250);
            }

            else
            {
              v255 = objc_msgSend_indexOfObject_(v347, v246, v251, v252, v253, v254, v344, v248, v249, v250);
            }

            v265 = v255;
            if (v255 == 0x7FFFFFFFFFFFFFFFLL || v255 == objc_msgSend_count(v347, v256, v261, v262, v263, v264, v257, v258, v259, v260) - 1)
            {
              if (v265 != objc_msgSend_count(v347, v256, v261, v262, v263, v264, v257, v258, v259, v260) - 1)
              {
LABEL_49:
                v266 = objc_msgSend_info(v210, v246, v251, v252, v253, v254, v247, v248, v249, v250);
                v275 = objc_msgSend_zOrderOfDrawable_(v337, v267, v271, v272, v273, v274, v266, v268, v269, v270);

                if (v275 >= v340)
                {
                  if (v223 && (objc_opt_respondsToSelector() & 1) != 0 && v37[2](v37, v210))
                  {
                    objc_msgSend_addObject_(v115, v276, v280, v281, v282, v283, v210, v277, v278, v279);
                  }

                  if (v345)
                  {
                    v351 = 0u;
                    v352 = 0u;
                    v349 = 0u;
                    v350 = 0u;
                    v284 = v347;
                    v291 = objc_msgSend_countByEnumeratingWithState_objects_count_(v284, v285, v287, v288, v289, v290, &v349, v364, 16, v286);
                    if (v291)
                    {
                      v292 = *v350;
                      do
                      {
                        for (j = 0; j != v291; ++j)
                        {
                          if (*v350 != v292)
                          {
                            objc_enumerationMutation(v284);
                          }

                          v294 = *(*(&v349 + 1) + 8 * j);
                          objc_opt_class();
                          v295 = TSUDynamicCast();
                          v296 = v37[2](v37, v295);

                          if (v296)
                          {
                            objc_msgSend_addObject_(v115, v297, v301, v302, v303, v304, v294, v298, v299, v300);
                          }
                        }

                        v291 = objc_msgSend_countByEnumeratingWithState_objects_count_(v284, v297, v301, v302, v303, v304, &v349, v364, 16, v300);
                      }

                      while (v291);
                    }

                    goto LABEL_75;
                  }
                }
              }
            }

            else
            {
              v305 = objc_msgSend_count(v347, v256, v261, v262, v263, v264, v257, v258, v259, v260);
              v313 = objc_msgSend_subarrayWithRange_(v347, v306, v309, v310, v311, v312, v265 + 1, v305 - (v265 + 1), v307, v308);
              v355 = 0u;
              v356 = 0u;
              v353 = 0u;
              v354 = 0u;
              v284 = v313;
              v320 = objc_msgSend_countByEnumeratingWithState_objects_count_(v284, v314, v316, v317, v318, v319, &v353, v365, 16, v315);
              if (v320)
              {
                v321 = *v354;
                do
                {
                  for (k = 0; k != v320; ++k)
                  {
                    if (*v354 != v321)
                    {
                      objc_enumerationMutation(v284);
                    }

                    v323 = *(*(&v353 + 1) + 8 * k);
                    if (v37[2](v37, v323))
                    {
                      objc_msgSend_addObject_(v115, v324, v328, v329, v330, v331, v323, v325, v326, v327);
                    }
                  }

                  v320 = objc_msgSend_countByEnumeratingWithState_objects_count_(v284, v324, v328, v329, v330, v331, &v353, v365, 16, v327);
                }

                while (v320);
              }

LABEL_75:
            }

            i = v341;
            continue;
          }
        }

        v343 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v201, v203, v204, v205, v206, &v357, v366, 16, v202);
        if (!v343)
        {
LABEL_79:

          v184 = v336;
          goto LABEL_82;
        }
      }
    }
  }

  else
  {
    v184 = 0;
  }

  v115 = 0;
LABEL_82:

LABEL_83:

  return v115;
}

- (id)existingAttachmentLayoutForInfo:(id)info
{
  v10 = objc_msgSend_p_existingChildLayoutForInfo_(self, a2, v6, v7, v8, v9, info, v3, v4, v5);

  return v10;
}

- (void)addAttachmentLayout:(id)layout
{
  layoutCopy = layout;
  v74 = layoutCopy;
  if (layoutCopy)
  {
    objc_msgSend_addChild_(self, layoutCopy, v9, v10, v11, v12, layoutCopy, v6, v7, v8);
    objc_msgSend_updateChildrenFromInfo(v74, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    v31 = objc_msgSend_layoutController(self, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    objc_msgSend_validateLayoutWithDependencies_(v31, v32, v36, v37, v38, v39, v74, v33, v34, v35);

    objc_msgSend_p_sortChildLayouts(self, v40, v45, v46, v47, v48, v41, v42, v43, v44);
  }

  else
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v9, v10, v11, v12, "[TPPaginatedPageLayout addAttachmentLayout:]", v6, v7, v8);
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v52, v53, v54);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v60, v61, v62, v63, v64, v50, v59, 930, 0, "invalid nil value for '%{public}s'", "node");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v70, v71, v72, v73, v66, v67, v68, v69);
  }
}

- (id)additionalDependenciesForChildLayout:(id)layout
{
  v83[1] = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v14 = objc_msgSend_bodyLayout(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v24 = v14;
  if (v14)
  {
    if (v14 == layoutCopy)
    {
      v73 = objc_msgSend_footnoteContainerLayout(self, v15, v20, v21, v22, v23, v16, v17, v18, v19);
      v35 = v73;
      if (v73)
      {
        v83[0] = v73;
        v72 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v74, v77, v78, v79, v80, v83, 1, v75, v76);
      }

      else
      {
        v72 = 0;
      }
    }

    else
    {
      objc_opt_class();
      v34 = objc_msgSend_info(self, v25, v30, v31, v32, v33, v26, v27, v28, v29);
      v35 = TSUDynamicCast();

      v45 = objc_msgSend_floatingDrawableInfos(v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
      v55 = objc_msgSend_info(layoutCopy, v46, v51, v52, v53, v54, v47, v48, v49, v50);
      v64 = objc_msgSend_containsObject_(v45, v56, v60, v61, v62, v63, v55, v57, v58, v59);

      if (v64)
      {
        v82 = v24;
        v72 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v65, v68, v69, v70, v71, &v82, 1, v66, v67);
      }

      else
      {
        v72 = 0;
      }
    }
  }

  else
  {
    v72 = 0;
  }

  return v72;
}

- (void)beginResizeWrapInvalidationCluster
{
  inInvalidationClusterCount = self->_inInvalidationClusterCount;
  if (!inInvalidationClusterCount)
  {
    self->_childTextLayoutsNeedInvalidationForExteriorWrap = 0;
  }

  self->_inInvalidationClusterCount = inInvalidationClusterCount + 1;
}

- (void)endResizeWrapInvalidationCluster
{
  inInvalidationClusterCount = self->_inInvalidationClusterCount;
  if (inInvalidationClusterCount <= 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPaginatedPageLayout endResizeWrapInvalidationCluster]", v2, v3, v4);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v14, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v23, v24, v25, v26, v12, v21, 978, 0, "Closing an invalidation cluster when one is not open!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v32, v33, v34, v35, v28, v29, v30, v31);
    inInvalidationClusterCount = self->_inInvalidationClusterCount;
  }

  v36 = inInvalidationClusterCount - 1;
  self->_inInvalidationClusterCount = v36;
  if (!v36 && self->_childTextLayoutsNeedInvalidationForExteriorWrap)
  {
    objc_msgSend_wrappableChildInvalidated_(self, a2, v5, v6, v7, v8, 0, v2, v3, v4);
    self->_childTextLayoutsNeedInvalidationForExteriorWrap = 0;
  }
}

- (void)wrappableChildInvalidated:(id)invalidated
{
  v136 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  if (self->_inInvalidationClusterCount < 1)
  {
    if ((objc_msgSend_isValidating(self, v4, v10, v11, v12, v13, v5, v6, v7, v8) & 1) == 0)
    {
      v130 = objc_msgSend_set(MEMORY[0x277CBEB58], v14, v19, v20, v21, v22, v15, v16, v17, v18);
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      selfCopy = self;
      v31 = objc_msgSend_childTextLayoutsForExteriorWrap(self, v23, 0, v28, v29, v30, v24, v25, v26, v27);
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, v34, v35, v36, v37, &v131, v135, 16, v33);
      if (v43)
      {
        v48 = *v132;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v132 != v48)
            {
              objc_enumerationMutation(v31);
            }

            v50 = *(*(&v131 + 1) + 8 * i);
            if (objc_msgSend_textLayoutValid(v50, v38, v44, v45, v46, v47, v39, v40, v41, v42, v128))
            {
              v60 = objc_msgSend_parent(v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
              v61 = v60 == invalidatedCopy;

              if (!v61)
              {
                if (objc_msgSend_parentAutosizes(v50, v62, v67, v68, v69, v70, v63, v64, v65, v66))
                {
                  objc_msgSend_invalidateSize(v50, v71, v76, v77, v78, v79, v72, v73, v74, v75);
                }

                else
                {
                  objc_msgSend_invalidateTextLayout(v50, v71, v76, v77, v78, v79, v72, v73, v74, v75);
                }
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v80 = objc_msgSend_info(v50, v38, v44, v45, v46, v47, v39, v40, v41, v42);
              v90 = objc_msgSend_parentInfo(v80, v81, v86, v87, v88, v89, v82, v83, v84, v85);
              v128 = &unk_288540768;
              v91 = TSUCheckedProtocolCast();

              if (v91)
              {
                objc_msgSend_addObject_(v130, v92, v96, v97, v98, v99, v91, v93, v94, v95, &unk_288540768);
              }
            }
          }

          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v38, v44, v45, v46, v47, &v131, v135, 16, v42);
        }

        while (v43);
      }

      objc_opt_class();
      v109 = objc_msgSend_info(selfCopy, v100, v105, v106, v107, v108, v101, v102, v103, v104);
      v119 = objc_msgSend_pageController(v109, v110, v115, v116, v117, v118, v111, v112, v113, v114);
      v120 = TSUDynamicCast();
      objc_msgSend_i_invalidateFlows_startingPage_(v120, v121, v124, v125, v126, v127, v130, selfCopy, v122, v123);
    }
  }

  else
  {
    self->_childTextLayoutsNeedInvalidationForExteriorWrap = 1;
  }
}

- (unint64_t)autosizeFlagsForTextLayout:(id)layout
{
  layoutCopy = layout;
  v14 = objc_msgSend_storage(layoutCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  if (objc_msgSend_wpKind(v14, v15, v20, v21, v22, v23, v16, v17, v18, v19) != 1)
  {

    goto LABEL_7;
  }

  v33 = objc_msgSend_children(self, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v42 = objc_msgSend_containsObject_(v33, v34, v38, v39, v40, v41, layoutCopy, v35, v36, v37);

  if (!v42)
  {
LABEL_7:
    v52 = 96;
    goto LABEL_8;
  }

  if (objc_msgSend_usesSingleHeaderFooter(self->_headerFooterProvider, v43, v48, v49, v50, v51, v44, v45, v46, v47))
  {
    v52 = 3;
  }

  else
  {
    v52 = 15;
  }

LABEL_8:

  return v52;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)layout
{
  v3.n128_u64[0] = *MEMORY[0x277CBF3A8];
  v4.n128_u64[0] = *(MEMORY[0x277CBF3A8] + 8);
  (MEMORY[0x2821F9670])(self, sel_autosizedFrameForTextLayout_textSize_, v3, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  v17 = objc_msgSend_storage(layoutCopy, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v27 = objc_msgSend_wpKind(v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);

  if (v27 == 1)
  {
    v37 = objc_msgSend_info(self, v28, v33, v34, v35, v36, v29, v30, v31, v32);
    v47 = objc_msgSend_documentRoot(v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);
    objc_msgSend_pageSize(v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
    v58 = v57.n128_f64[0];
    v60 = v59.n128_f64[0];
    objc_msgSend_p_sideMargins(self, v61, v57, v59, v66, v67, v62, v63, v64, v65);
    v77 = v73.n128_f64[0];
    v78 = (&self->super.super.super.super.super.isa + *MEMORY[0x277D80FC0]);
    if (*v78 != layoutCopy && v78[3] != layoutCopy)
    {
      v79 = v74.n128_f64[0];
      if (v78[1] == layoutCopy || v78[4] == layoutCopy)
      {
        if (objc_msgSend_usesSingleHeaderFooter(self->_headerFooterProvider, v68, v73, v74, v75, v76, v69, v70, v71, v72))
        {
          v73.n128_f64[0] = v58 - v79;
          width = v58 - v79 - v77;
        }

        else
        {
          v74.n128_u64[0] = 0.5;
          v73.n128_f64[0] = (v58 - v77 - v79 - width) * 0.5;
          v77 = v77 + v73.n128_f64[0];
        }
      }

      else
      {
        if (v78[2] != layoutCopy && v78[5] != layoutCopy)
        {
          v80 = MEMORY[0x277D81150];
          v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v73, v74, v75, v76, "[TPPaginatedPageLayout autosizedFrameForTextLayout:textSize:]", v70, v71, v72);
          v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v86, v87, v88, v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v83, v84, v85);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v91, v92, v93, v94, v95, v81, v90, 1083, 0, "unexpected layout");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v101, v102, v103, v104, v97, v98, v99, v100);
        }

        v73.n128_f64[0] = v58 - v79;
        v77 = v58 - v79 - width;
      }
    }

    if (*v78 == layoutCopy || v78[1] == layoutCopy || v78[2] == layoutCopy)
    {
      objc_msgSend_headerMargin(v47, v68, v73, v74, v75, v76, v69, v70, v71, v72);
      v105 = v132;
    }

    else
    {
      if (v78[3] != layoutCopy && v78[4] != layoutCopy && v78[5] != layoutCopy)
      {
        v106 = MEMORY[0x277D81150];
        v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, v73, v74, v75, v76, "[TPPaginatedPageLayout autosizedFrameForTextLayout:textSize:]", v70, v71, v72);
        v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, v112, v113, v114, v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v109, v110, v111);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v106, v117, v118, v119, v120, v121, v107, v116, 1098, 0, "unexpected layout");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v127, v128, v129, v130, v123, v124, v125, v126);
      }

      objc_msgSend_footerMargin(v47, v68, v73, v74, v75, v76, v69, v70, v71, v72);
      v105 = v60 - v131 - height;
    }
  }

  else
  {
    v77 = *MEMORY[0x277CBF398];
    v105 = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
  }

  v133 = v77;
  v134 = v105;
  v135 = width;
  v136 = height;
  result.size.height = v136;
  result.size.width = v135;
  result.origin.y = v134;
  result.origin.x = v133;
  return result;
}

- (id)dependentsOfTextLayout:(id)layout
{
  layoutCopy = layout;
  v19 = objc_msgSend_bodyLayout(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  if (v19)
  {
    v24 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v14, v20, v21, v22, v23, v19, v16, v17, v18);
  }

  else
  {
    v24 = 0;
  }

  v25 = self + *MEMORY[0x277D80FC0];
  v26 = *(v25 + 1);
  if (v26 == layoutCopy || *(v25 + 4) == layoutCopy)
  {
    if (!v24)
    {
      v24 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v20, v21, v22, v23, v15, v16, v17, v18);
      v26 = *(v25 + 1);
    }

    v27 = &v25[24 * (v26 != layoutCopy)];
    if (*v27)
    {
      objc_msgSend_addObject_(v24, v14, v20, v21, v22, v23, *v27, v16, v17, v18);
    }

    v28 = v27[2];
    if (v28)
    {
      objc_msgSend_addObject_(v24, v14, v20, v21, v22, v23, v28, v16, v17, v18);
    }
  }

  return v24;
}

- (Class)repClassForTextLayout:(id)layout
{
  layoutCopy = layout;
  if ((objc_msgSend_p_isHeaderFooterLayout_(self, v5, v9, v10, v11, v12, layoutCopy, v6, v7, v8) & 1) == 0)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "[TPPaginatedPageLayout repClassForTextLayout:]", v14, v15, v16);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v24, v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v32, v33, v34, v35, v36, v22, v31, 1147, 0, "unexpected layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v42, v43, v44, v45, v38, v39, v40, v41);
  }

  v46 = objc_opt_class();
  v47 = v46;

  return v46;
}

- (double)maxAutoGrowLineWidthForTextLayout:(id)layout
{
  layoutCopy = layout;
  if (objc_msgSend_p_isHeaderFooterLayout_(self, v5, v9, v10, v11, v12, layoutCopy, v6, v7, v8))
  {
    v22 = objc_msgSend_info(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    v32 = objc_msgSend_documentRoot(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);

    objc_msgSend_pageSize(v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    v43 = v42.n128_f64[0];
    v45 = v44.n128_f64[0];
    objc_msgSend_headerMargin(v32, v46, v42, v44, v51, v52, v47, v48, v49, v50);
    v54 = v53.n128_f64[0];
    objc_msgSend_leftMargin(v32, v55, v53, v60, v61, v62, v56, v57, v58, v59);
    v64 = v63.n128_f64[0];
    objc_msgSend_leftMargin(v32, v65, v63, v70, v71, v72, v66, v67, v68, v69);
    v74 = v73.n128_f64[0];
    objc_msgSend_rightMargin(v32, v75, v73, v80, v81, v82, v76, v77, v78, v79);
    v84 = v83.n128_f64[0];
    objc_msgSend_footerMargin(v32, v85, v83, v90, v91, v92, v86, v87, v88, v89);
    v121.size.width = v43 - v74 - v84;
    v121.size.height = v45 - v93;
    v121.origin.x = v54;
    v121.origin.y = v64;
    Width = CGRectGetWidth(v121);
  }

  else
  {
    v95 = MEMORY[0x277D81150];
    v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v18, v19, v20, v21, "[TPPaginatedPageLayout maxAutoGrowLineWidthForTextLayout:]", v15, v16, v17);
    v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v97, v101, v102, v103, v104, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v98, v99, v100);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v95, v106, v107, v108, v109, v110, v96, v105, 1157, 0, "unexpected layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v116, v117, v118, v119, v112, v113, v114, v115);
    Width = 4000.0;
  }

  return Width;
}

- (double)maxAutoGrowBlockHeightForTextLayout:(id)layout
{
  layoutCopy = layout;
  if ((objc_msgSend_p_isHeaderFooterLayout_(self, v5, v9, v10, v11, v12, layoutCopy, v6, v7, v8) & 1) == 0)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v18, v19, v20, v21, "[TPPaginatedPageLayout maxAutoGrowBlockHeightForTextLayout:]", v15, v16, v17);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v25, v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v33, v34, v35, v36, v37, v23, v32, 1172, 0, "unexpected layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v43, v44, v45, v46, v39, v40, v41, v42);
  }

  v47 = objc_msgSend_info(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v57 = objc_msgSend_documentRoot(v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);

  objc_msgSend_pageSize(v57, v58, v63, v64, v65, v66, v59, v60, v61, v62);
  v68 = v67.n128_f64[0];
  v70 = v69.n128_f64[0];
  objc_msgSend_headerMargin(v57, v71, v67, v69, v76, v77, v72, v73, v74, v75);
  v79 = v78.n128_f64[0];
  objc_msgSend_leftMargin(v57, v80, v78, v85, v86, v87, v81, v82, v83, v84);
  v89 = v88.n128_f64[0];
  objc_msgSend_leftMargin(v57, v90, v88, v95, v96, v97, v91, v92, v93, v94);
  v99 = v98.n128_f64[0];
  objc_msgSend_rightMargin(v57, v100, v98, v105, v106, v107, v101, v102, v103, v104);
  v109 = v108.n128_f64[0];
  objc_msgSend_footerMargin(v57, v110, v108, v115, v116, v117, v111, v112, v113, v114);
  v121.size.width = v68 - v99 - v109;
  v121.size.height = v70 - v118;
  v121.origin.x = v79;
  v121.origin.y = v89;
  v119 = CGRectGetHeight(v121) * 0.400000006;

  return v119;
}

- (int)naturalAlignmentForTextLayout:(id)layout
{
  layoutCopy = layout;
  if ((objc_msgSend_usesSingleHeaderFooter(self->_headerFooterProvider, v5, v10, v11, v12, v13, v6, v7, v8, v9) & 1) != 0 || (objc_msgSend_storage(layoutCopy, v14, v19, v20, v21, v22, v15, v16, v17, v18), v23 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend_wpKind(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28), v23, v33 != 1))
  {
    v71 = 4;
  }

  else
  {
    v43 = objc_msgSend_info(self, v34, v39, v40, v41, v42, v35, v36, v37, v38);
    v53 = objc_msgSend_documentRoot(v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);
    v63 = objc_msgSend_storage(layoutCopy, v54, v59, v60, v61, v62, v55, v56, v57, v58);
    v71 = objc_msgSend_naturalAlignmentAtCharIndex_inTextStorage_(v53, v64, v67, v68, v69, v70, 0, v63, v65, v66);
  }

  return v71;
}

- (void)validate
{
  isValidating = objc_msgSend_isValidating(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (isValidating)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v16, v17, v18, v19, "[TPPaginatedPageLayout validate]", v12, v13, v14);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v23, v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v31, v32, v33, v34, v35, v21, v30, 1206, 0, "Reentrant call to -validate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v41, v42, v43, v44, v37, v38, v39, v40);
  }

  objc_msgSend_setValidating_(self, v11, v16, v17, v18, v19, 1, v12, v13, v14);
  v450.receiver = self;
  v450.super_class = TPPaginatedPageLayout;
  [(TPPageLayout *)&v450 validate];
  objc_msgSend_p_updateFromLayoutInfoProvider(self, v45, v50, v51, v52, v53, v46, v47, v48, v49);
  if (!self->_childLayoutsValid)
  {
    objc_msgSend_p_removeInlineLayoutsFromPageLayout(self, v54, v59, v60, v61, v62, v55, v56, v57, v58);
    objc_msgSend_p_removeNoLongerInlineLayoutsFromBodyLayout(self, v63, v68, v69, v70, v71, v64, v65, v66, v67);
    oldChildLayouts = self->_oldChildLayouts;
    self->_oldChildLayouts = 0;

    v73 = objc_alloc_init(MEMORY[0x277D81308]);
    v74 = self->_oldChildLayouts;
    self->_oldChildLayouts = v73;

    v84 = objc_msgSend_children(self, v75, v80, v81, v82, v83, v76, v77, v78, v79);
    objc_msgSend_p_populateOldChildLayoutsWithLayouts_(self, v85, v89, v90, v91, v92, v84, v86, v87, v88);

    v439 = objc_opt_new();
    contentFlags = self->_contentFlags;
    if (contentFlags)
    {
      v103 = objc_msgSend_p_insertBodyLayout(self, v93, v98, v99, v100, v101, v94, v95, v96, v97);
      objc_msgSend_tsu_addNonNilObject_(v439, v104, v108, v109, v110, v111, v103, v105, v106, v107);

      contentFlags = self->_contentFlags;
    }

    if ((contentFlags & 2) != 0)
    {
      v112 = objc_msgSend_p_insertValidatedFloatingLayouts(self, v93, v98, v99, v100, v101, v94, v95, v96, v97);
      objc_msgSend_addObjectsFromArray_(v439, v113, v117, v118, v119, v120, v112, v114, v115, v116);

      contentFlags = self->_contentFlags;
    }

    if ((contentFlags & 4) != 0)
    {
      v121 = objc_msgSend_p_insertValidatedMasterLayouts(self, v93, v98, v99, v100, v101, v94, v95, v96, v97);
      objc_msgSend_addObjectsFromArray_(v439, v122, v126, v127, v128, v129, v121, v123, v124, v125);

      contentFlags = self->_contentFlags;
    }

    if ((contentFlags & 8) != 0)
    {
      LOBYTE(v446) = 0;
      v130 = objc_msgSend_i_insertValidatedHeaderFooterLayouts_(self, v93, v98, v99, v100, v101, &v446, v95, v96, v97);
      objc_msgSend_addObjectsFromArray_(v439, v131, v135, v136, v137, v138, v130, v132, v133, v134);

      if (v446 == 1)
      {
        v139 = objc_msgSend_bodyLayout(self, v93, v98, v99, v100, v101, v94, v95, v96, v97);
        objc_msgSend_invalidateSize(v139, v140, v145, v146, v147, v148, v141, v142, v143, v144);
        objc_msgSend_invalidatePosition(v139, v149, v154, v155, v156, v157, v150, v151, v152, v153);
      }

      contentFlags = self->_contentFlags;
    }

    if ((contentFlags & 0x10) != 0)
    {
      v158 = objc_msgSend_p_insertFootnoteContainerLayout(self, v93, v98, v99, v100, v101, v94, v95, v96, v97);
      objc_msgSend_tsu_addNonNilObject_(v439, v159, v163, v164, v165, v166, v158, v160, v161, v162);
    }

    objc_msgSend_setChildren_(self, v93, v98, v99, v100, v101, v439, v95, v96, v97);
    objc_msgSend_p_sortChildLayouts(self, v167, v172, v173, v174, v175, v168, v169, v170, v171);
    v185 = self->_contentFlags;
    if (v185)
    {
      v191 = objc_msgSend_bodyLayout(self, v176, v181, v182, v183, v184, v177, v178, v179, v180);
      if (v191)
      {
        v196 = objc_msgSend_layoutController(self, v186, v192, v193, v194, v195, v187, v188, v189, v190);
        objc_msgSend_validateLayoutWithDependencies_(v196, v197, v201, v202, v203, v204, v191, v198, v199, v200);
      }

      objc_msgSend_p_validateTextLayoutsForExteriorWrapAffectedByAnchoredAttachments(self, v186, v192, v193, v194, v195, v187, v188, v189, v190);

      v185 = self->_contentFlags;
    }

    if ((v185 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    v210 = objc_msgSend_footnoteContainerLayout(self, v176, v181, v182, v183, v184, v177, v178, v179, v180);
    if (!v210)
    {
LABEL_42:

      v185 = self->_contentFlags;
LABEL_43:
      if ((v185 & 1) == 0 || !objc_msgSend_count(self->_oldChildLayouts, v176, v181, v182, v183, v184, v177, v178, v179, v180))
      {
        v404 = self->_oldChildLayouts;
        self->_oldChildLayouts = 0;
      }

      self->_childLayoutsValid = 1;

      goto LABEL_47;
    }

    v215 = objc_msgSend_layoutController(self, v205, v211, v212, v213, v214, v206, v207, v208, v209);
    objc_msgSend_validateLayoutWithDependencies_(v215, v216, v220, v221, v222, v223, v210, v217, v218, v219);

    v238 = objc_msgSend_bodyLayout(self, v224, v229, v230, v231, v232, v225, v226, v227, v228);
    if (!v238 || (objc_msgSend_children(v210, v233, v239, v240, v241, v242, v234, v235, v236, v237), v243 = objc_claimAutoreleasedReturnValue(), v253 = objc_msgSend_count(v243, v244, v249, v250, v251, v252, v245, v246, v247, v248), v243, !v253))
    {
LABEL_41:

      goto LABEL_42;
    }

    objc_msgSend_alignmentFrame(v238, v254, v259, v260, v261, v262, v255, v256, v257, v258);
    v264 = v263.n128_f64[0];
    v266 = v265.n128_f64[0];
    objc_msgSend_alignmentFrame(v210, v267, v272, v273, v263, v265, v268, v269, v270, v271);
    v275 = v274.n128_f64[0];
    v277 = v276.n128_f64[0];
    v279 = v278.n128_f64[0];
    v281 = v280.n128_f64[0];
    IsVertical = objc_msgSend_textIsVertical(v238, v282, v274, v276, v278, v280, v283, v284, v285, v286);
    v434 = TSUNearlyContainsRect();
    v437 = IsVertical;
    if (IsVertical)
    {
      TSURectGetMaxPoint();
      TSURectGetMaxPoint();
    }

    v435 = TSUPointsAlmostEqual();
    v446 = 0;
    v447 = &v446;
    v288.n128_u64[0] = 0x2020000000;
    v448 = 0x2020000000;
    v449 = 1;
    v442 = 0;
    v443 = &v442;
    v444 = 0x2020000000;
    v445 = 0x7FF0000000000000;
    v297 = objc_msgSend_columns(v238, v289, v288, v294, v295, v296, v290, v291, v292, v293);
    v441[0] = MEMORY[0x277D85DD0];
    v298.n128_u64[0] = 3221225472;
    v441[1] = 3221225472;
    v441[2] = sub_275FC9850;
    v441[3] = &unk_27A6A83F0;
    v441[4] = &v446;
    v441[5] = &v442;
    objc_msgSend_enumerateObjectsUsingBlock_(v297, v299, v298, v303, v304, v305, v441, v300, v301, v302);

    v315 = objc_msgSend_geometry(v238, v306, v311, v312, v313, v314, v307, v308, v309, v310);
    objc_msgSend_frame(v315, v316, v321, v322, v323, v324, v317, v318, v319, v320);
    v443[3] = v325 + v443[3];

    if (v447[3] & v435)
    {
      if (IsVertical)
      {
        v335 = v279 > v264;
LABEL_30:
        v337 = objc_msgSend_info(self, v326, v331, v332, v333, v334, v327, v328, v329, v330);
        v438 = objc_msgSend_documentRoot(v337, v338, v343, v344, v345, v346, v339, v340, v341, v342);
        v356 = objc_msgSend_settings(v438, v347, v352, v353, v354, v355, v348, v349, v350, v351);
        v436 = v335;
        if (objc_msgSend_hasFacingPages(v356, v357, v362, v363, v364, v365, v358, v359, v360, v361))
        {
          v366 = v443[3];
          v451.origin.x = v275;
          v451.origin.y = v277;
          v451.size.width = v279;
          v451.size.height = v281;
          MaxX = CGRectGetMaxX(v451);
          v368 = v337;
          v336 = vabdd_f64(v366, MaxX) < 0.00999999978 || v366 == MaxX;
        }

        else
        {
          v368 = v337;
          v336 = 0;
        }

        v335 = v436;
        goto LABEL_37;
      }

      v336 = 0;
      v335 = v281 > v266;
    }

    else
    {
      v335 = 0;
      v336 = 0;
      if (v437)
      {
        goto LABEL_30;
      }
    }

LABEL_37:
    if (((v434 | v335) & 1) == 0 && !v336)
    {
      v369 = MEMORY[0x277D81150];
      v370 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v326, v331, v332, v333, v334, "[TPPaginatedPageLayout validate]", v328, v329, v330);
      v379 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v371, v375, v376, v377, v378, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v372, v373, v374);
      v389 = objc_msgSend_pageIndex(self, v380, v385, v386, v387, v388, v381, v382, v383, v384);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v369, v390, v391, v392, v393, v394, v370, v379, 1308, 0, "footnote layout spills outside of body rect on page #%lu", v389 + 1);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v395, v400, v401, v402, v403, v396, v397, v398, v399);
    }

    _Block_object_dispose(&v442, 8);
    _Block_object_dispose(&v446, 8);
    goto LABEL_41;
  }

LABEL_47:
  if ((self->_contentFlags & 2) != 0)
  {
    objc_opt_class();
    v414 = objc_msgSend_info(self, v405, v410, v411, v412, v413, v406, v407, v408, v409);
    v424 = objc_msgSend_pageController(v414, v415, v420, v421, v422, v423, v416, v417, v418, v419);
    v425 = TSUDynamicCast();

    v440[0] = MEMORY[0x277D85DD0];
    v426.n128_u64[0] = 3221225472;
    v440[1] = 3221225472;
    v440[2] = sub_275FC98E8;
    v440[3] = &unk_27A6A8418;
    v440[4] = v425;
    v440[5] = self;
    objc_msgSend_accquireLockAndPerformAction_(v425, v427, v426, v431, v432, v433, v440, v428, v429, v430);
  }

  objc_msgSend_setValidating_(self, v54, v59, v60, v61, v62, isValidating, v56, v57, v58);
}

- (void)evacuateOldChildLayoutCache
{
  oldChildLayouts = self->_oldChildLayouts;
  self->_oldChildLayouts = 0;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)target
{
  v3 = *MEMORY[0x277D81428];
  v4 = *(MEMORY[0x277D81428] + 8);
  v5 = *(MEMORY[0x277D81428] + 16);
  v6 = *(MEMORY[0x277D81428] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap
{
  if (outWidth)
  {
    *outWidth = width;
  }

  if (gap)
  {
    *gap = 0.0;
  }

  return 0.0;
}

- (BOOL)textIsVertical
{
  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPaginatedPageLayout textIsVertical]", v2, v3, v4);
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v12, v13, v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v20, v21, v22, v23, v24, v10, v19, 1394, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v30, v31, v32, v33, v26, v27, v28, v29);
  v34 = MEMORY[0x277CBEAD8];
  v35 = *MEMORY[0x277CBE658];
  v44 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, v40, v41, v42, v43, @"%s: %s", v37, v38, v39, "Do not call method", "[TPPaginatedPageLayout textIsVertical]");
  v51 = objc_msgSend_exceptionWithName_reason_userInfo_(v34, v45, v47, v48, v49, v50, v35, v44, 0, v46);
  v52 = v51;

  objc_exception_throw(v51);
}

- (BOOL)marginsAreMirrored
{
  v11 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_documentRoot(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  v31 = objc_msgSend_settings(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  hasFacingPages = objc_msgSend_hasFacingPages(v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);

  if (hasFacingPages)
  {
    v51 = objc_msgSend_info(self, v42, v47, v48, v49, v50, v43, v44, v45, v46);
    v61 = objc_msgSend_pageIndex(v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
    v80 = (objc_msgSend_laysOutBodyVertically(v21, v62, v67, v68, v69, v70, v63, v64, v65, v66) & 1) == 0 && objc_msgSend_writingDirection(v21, v71, v76, v77, v78, v79, v72, v73, v74, v75) != 2;
    v81 = (v61 & 1) == v80;
  }

  else
  {
    v81 = 0;
  }

  return v81;
}

- (id)p_orderedChildInfos
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_opt_class();
  v11 = TSUDynamicCast();
  v21 = objc_msgSend_bodyInfo(v10, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v31 = objc_msgSend_floatingDrawableInfos(v11, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  if (objc_msgSend_count(v31, v32, v37, v38, v39, v40, v33, v34, v35, v36))
  {
    v150 = objc_msgSend_documentRoot(v10, v41, v46, v47, v48, v49, v42, v43, v44, v45);
    v59 = objc_msgSend_bodyStorage(v150, v50, v55, v56, v57, v58, v51, v52, v53, v54);
    v60 = objc_alloc(MEMORY[0x277CBEB58]);
    v69 = objc_msgSend_initWithArray_(v60, v61, v65, v66, v67, v68, v31, v62, v63, v64);
    v78 = v69;
    if (v21)
    {
      objc_msgSend_addObject_(v69, v70, v74, v75, v76, v77, v59, v71, v72, v73);
    }

    v79 = objc_msgSend_orderedDrawables_(v11, v70, v74, v75, v76, v77, v78, v71, v72, v73);
    v89 = objc_msgSend_mutableCopy(v79, v80, v85, v86, v87, v88, v81, v82, v83, v84);

    if (v21)
    {
      v102 = objc_msgSend_indexOfObject_(v89, v90, v94, v95, v96, v97, v59, v91, v92, v93);
      if (v102 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v149 = MEMORY[0x277D81150];
        v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v103, v104, v105, v106, "[TPPaginatedPageLayout p_orderedChildInfos]", v99, v100, v101);
        v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, v112, v113, v114, v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v109, v110, v111);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v149, v117, v118, v119, v120, v121, v107, v116, 1461, 0, "cannot find index of body storage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v127, v128, v129, v130, v123, v124, v125, v126);
      }

      objc_msgSend_setObject_atIndexedSubscript_(v89, v98, v103, v104, v105, v106, v21, v102, v100, v101);
    }
  }

  else if (v21)
  {
    v131 = objc_alloc(MEMORY[0x277CBEB18]);
    v89 = objc_msgSend_initWithCapacity_(v131, v132, v136, v137, v138, v139, 1, v133, v134, v135);
    objc_msgSend_addObject_(v89, v140, v144, v145, v146, v147, v21, v141, v142, v143);
  }

  else
  {
    v89 = 0;
  }

  return v89;
}

- (void)p_updateFromLayoutInfoProvider
{
  v144 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_layoutInfoProvider(v144, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_pageIndex(v144, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  if (!objc_msgSend_canProvideInfoForPageIndex_(v20, v31, v35, v36, v37, v38, v30, v32, v33, v34))
  {
    v77 = MEMORY[0x277D81150];
    v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v43, v44, v45, v46, "[TPPaginatedPageLayout p_updateFromLayoutInfoProvider]", v40, v41, v42);
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageLayout.mm", v80, v81, v82);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v88, v89, v90, v91, v92, v78, v87, 1519, 0, "Unable to configure page.  Pagination not complete?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v98, v99, v100, v101, v94, v95, v96, v97);
    goto LABEL_9;
  }

  v47 = objc_msgSend_headerFooterProviderForPageIndex_(v20, v39, v43, v44, v45, v46, v30, v40, v41, v42);
  v56 = objc_msgSend_sectionTemplateDrawableProviderForPageIndex_(v20, v48, v52, v53, v54, v55, v30, v49, v50, v51);
  v66 = objc_msgSend_pageIndex(v144, v57, v62, v63, v64, v65, v58, v59, v60, v61);
  v75 = objc_msgSend_contentFlagsForPageIndex_(v20, v67, v71, v72, v73, v74, v66, v68, v69, v70);
  if (v47 != self->_headerFooterProvider)
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_sectionTemplateDrawableProvider);
  if (v56 != WeakRetained)
  {

LABEL_7:
    objc_storeStrong(&self->_headerFooterProvider, v47);
    objc_storeWeak(&self->_sectionTemplateDrawableProvider, v56);
    self->_contentFlags = v75;
    self->_childLayoutsValid = 0;
    goto LABEL_8;
  }

  contentFlags = self->_contentFlags;

  if (v75 != contentFlags)
  {
    goto LABEL_7;
  }

LABEL_8:
  self->_pageNumber = objc_msgSend_pageNumberForPageIndex_(v20, v103, v107, v108, v109, v110, v30, v104, v105, v106);
  self->_pageCount = objc_msgSend_pageCountForPageIndex_(v20, v111, v115, v116, v117, v118, v30, v112, v113, v114);
  self->_shouldHeaderFooterBeVisible = objc_msgSend_shouldHeaderFooterBeVisibleForPageIndex_(v20, v119, v123, v124, v125, v126, v30, v120, v121, v122);
  v135 = objc_msgSend_backgroundFillForPageIndex_(v20, v127, v131, v132, v133, v134, v30, v128, v129, v130);
  objc_msgSend_setBackgroundFill_(self, v136, v140, v141, v142, v143, v135, v137, v138, v139);

LABEL_9:
}

- (id)p_insertChildLayoutForInfo:(id)info
{
  infoCopy = info;
  v18 = objc_msgSend_p_existingChildLayoutForInfo_(self, v5, v9, v10, v11, v12, infoCopy, v6, v7, v8);
  if (!v18)
  {
    v23 = objc_alloc(objc_msgSend_layoutClass(infoCopy, v13, v19, v20, v21, v22, v14, v15, v16, v17));
    v18 = objc_msgSend_initWithInfo_(v23, v24, v28, v29, v30, v31, infoCopy, v25, v26, v27);
  }

  v32 = objc_msgSend_parent(v18, v13, v19, v20, v21, v22, v14, v15, v16, v17);

  if (v32 != self)
  {
    objc_msgSend_addChild_(self, v33, v37, v38, v39, v40, v18, v34, v35, v36);
  }

  return v18;
}

- (id)p_insertValidatedChildLayoutForInfo:(id)info
{
  v11 = objc_msgSend_p_insertChildLayoutForInfo_(self, a2, v6, v7, v8, v9, info, v3, v4, v5);
  v21 = v11;
  if (v11)
  {
    objc_msgSend_updateChildrenFromInfo(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    v31 = objc_msgSend_layoutController(self, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    objc_msgSend_validateLayoutWithDependencies_(v31, v32, v36, v37, v38, v39, v21, v33, v34, v35);
  }

  return v21;
}

- (id)p_existingChildLayoutForInfo:(id)info
{
  infoCopy = info;
  v14 = objc_msgSend_layoutController(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v22 = objc_msgSend_layoutForInfo_childOfLayout_(v14, v15, v18, v19, v20, v21, infoCopy, self, v16, v17);

  if (!v22)
  {
    v22 = objc_msgSend_objectForKeyedSubscript_(self->_oldChildLayouts, v23, v27, v28, v29, v30, infoCopy, v24, v25, v26);
  }

  return v22;
}

- (id)p_insertValidatedMasterLayouts
{
  v110 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_sectionTemplateDrawableProvider);
  v14 = objc_msgSend_sectionTemplateDrawables(WeakRetained, v5, v10, v11, v12, v13, v6, v7, v8, v9, 0);

  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v17, v18, v19, v20, &v105, v109, 16, v16);
  if (v25)
  {
    v30 = *v106;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v106 != v30)
        {
          objc_enumerationMutation(v14);
        }

        v32 = objc_msgSend_p_insertChildLayoutForInfo_(self, v21, v26, v27, v28, v29, *(*(&v105 + 1) + 8 * i), v22, v23, v24);
        objc_msgSend_updateChildrenFromInfo(v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
        objc_msgSend_addObject_(v3, v42, v46, v47, v48, v49, v32, v43, v44, v45);
        if (objc_msgSend_invalidGeometry(v32, v50, v55, v56, v57, v58, v51, v52, v53, v54))
        {
          v68 = objc_msgSend_layoutController(self, v59, v64, v65, v66, v67, v60, v61, v62, v63);
          objc_msgSend_invalidateLayout_(v68, v69, v73, v74, v75, v76, v32, v70, v71, v72);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v21, v26, v27, v28, v29, &v105, v109, 16, v24);
    }

    while (v25);
  }

  v86 = objc_msgSend_layoutController(self, v77, v82, v83, v84, v85, v78, v79, v80, v81);
  v95 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v87, v91, v92, v93, v94, v3, v88, v89, v90);
  objc_msgSend_validateLayoutsWithDependencies_(v86, v96, v100, v101, v102, v103, v95, v97, v98, v99);

  return v3;
}

- (id)p_insertValidatedFloatingLayouts
{
  v238 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  selfCopy = self;
  v12 = objc_msgSend_info(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v13 = TSUDynamicCast();

  v224 = v13;
  if (v13)
  {
    v223 = objc_msgSend_floatingDrawableInfos(v13, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    v226 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (objc_msgSend_count(v223, v23, v28, v29, v30, v31, v24, v25, v26, v27))
    {
      v41 = objc_msgSend_info(selfCopy, v32, v37, v38, v39, v40, v33, v34, v35, v36);
      v51 = objc_msgSend_bodyInfo(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);

      v222 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v61 = objc_msgSend_children(selfCopy, v52, v57, v58, v59, v60, v53, v54, v55, v56);
      objc_msgSend_makeObjectsPerformSelector_withObject_(v61, v62, v65, v66, v67, v68, sel_recursivelyAddLayoutAndChildrenToSet_, v222, v63, v64);

      objc_msgSend_p_orderedChildInfos(selfCopy, v69, v74, v75, v76, v77, v70, v71, v72, v73);
      v234 = 0u;
      v235 = 0u;
      v232 = 0u;
      obj = v233 = 0u;
      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v78, v80, v81, v82, v83, &v232, v237, 16, v79);
      if (v88)
      {
        v93 = *v233;
        do
        {
          for (i = 0; i != v88; ++i)
          {
            if (*v233 != v93)
            {
              objc_enumerationMutation(obj);
            }

            v95 = *(*(&v232 + 1) + 8 * i);
            if (v95 != v51)
            {
              v96 = objc_msgSend_p_insertChildLayoutForInfo_(selfCopy, v84, v89, v90, v91, v92, v95, v85, v86, v87);
              objc_msgSend_updateChildrenFromInfo(v96, v97, v102, v103, v104, v105, v98, v99, v100, v101);
              objc_msgSend_addObject_(v226, v106, v110, v111, v112, v113, v96, v107, v108, v109);
            }
          }

          v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v84, v89, v90, v91, v92, &v232, v237, 16, v87);
        }

        while (v88);
      }

      v114 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v124 = objc_msgSend_children(selfCopy, v115, v120, v121, v122, v123, v116, v117, v118, v119);
      objc_msgSend_makeObjectsPerformSelector_withObject_(v124, v125, v128, v129, v130, v131, sel_recursivelyAddLayoutAndChildrenToSet_, v114, v126, v127);

      objc_msgSend_minusSet_(v114, v132, v136, v137, v138, v139, v222, v133, v134, v135);
      v230 = 0u;
      v231 = 0u;
      v228 = 0u;
      v229 = 0u;
      v140 = v222;
      v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v140, v141, v143, v144, v145, v146, &v228, v236, 16, v142);
      if (v147)
      {
        v148 = *v229;
        do
        {
          for (j = 0; j != v147; ++j)
          {
            if (*v229 != v148)
            {
              objc_enumerationMutation(v140);
            }

            objc_opt_class();
            v150 = TSUDynamicCast();
            if (objc_msgSend_textLayoutValid(v150, v151, v156, v157, v158, v159, v152, v153, v154, v155))
            {
              v169 = objc_msgSend_reliedOnLayouts(v150, v160, v165, v166, v167, v168, v161, v162, v163, v164);
              v178 = objc_msgSend_intersectsSet_(v169, v170, v174, v175, v176, v177, v114, v171, v172, v173);

              if (v178)
              {
                objc_msgSend_invalidateTextLayout(v150, v179, v184, v185, v186, v187, v180, v181, v182, v183);
              }
            }
          }

          v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(v140, v188, v190, v191, v192, v193, &v228, v236, 16, v189);
        }

        while (v147);
      }

      v203 = objc_msgSend_layoutController(selfCopy, v194, v199, v200, v201, v202, v195, v196, v197, v198);
      v212 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v204, v208, v209, v210, v211, v226, v205, v206, v207);
      objc_msgSend_validateLayoutsWithDependencies_(v203, v213, v217, v218, v219, v220, v212, v214, v215, v216);
    }
  }

  else
  {
    v226 = MEMORY[0x277CBEBF8];
  }

  return v226;
}

- (void)p_validateTextLayoutsForExteriorWrapAffectedByAnchoredAttachments
{
  v148 = *MEMORY[0x277D85DE8];
  v140 = 0;
  v141 = &v140;
  v142 = 0x4012000000;
  v143 = sub_275FCAD88;
  v144 = nullsub_1;
  v145 = &unk_2760658C2;
  v146 = *MEMORY[0x277D81490];
  v10 = objc_msgSend_bodyLayout(self, a2, v146, v6, v7, v8, v2, v3, v4, v5);
  v20 = objc_msgSend_columns(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v139[0] = MEMORY[0x277D85DD0];
  v21.n128_u64[0] = 3221225472;
  v139[1] = 3221225472;
  v139[2] = sub_275FCAD98;
  v139[3] = &unk_27A6A8268;
  v139[4] = &v140;
  objc_msgSend_enumerateObjectsUsingBlock_(v20, v22, v21, v26, v27, v28, v139, v23, v24, v25);

  if (v141[7])
  {
    v38 = objc_msgSend_layoutController(self, v29, v34, v35, v36, v37, v30, v31, v32, v33);
    v48 = objc_msgSend_info(self, v39, v44, v45, v46, v47, v40, v41, v42, v43);
    v58 = objc_msgSend_documentRoot(v48, v49, v54, v55, v56, v57, v50, v51, v52, v53);
    v68 = objc_msgSend_bodyStorage(v58, v59, v64, v65, v66, v67, v60, v61, v62, v63);

    v76 = objc_msgSend_attachmentIndexRangeForTextRange_(v68, v69, v72, v73, v74, v75, v141[6], v141[7], v70, v71);
    v78 = v77;
    if (v76 < v76 + v77)
    {
      while (1)
      {
        objc_opt_class();
        v86 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v68, v79, v82, v83, v84, v85, v76, 0, v80, v81);
        v87 = TSUDynamicCast();

        if (v87)
        {
          if (objc_msgSend_isAnchored(v87, v88, v93, v94, v95, v96, v89, v90, v91, v92))
          {
            break;
          }
        }

        ++v76;
        if (!--v78)
        {
          goto LABEL_17;
        }
      }

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v105 = objc_msgSend_childTextLayoutsForExteriorWrap(self, v97, 0, v102, v103, v104, v98, v99, v100, v101, 0);
      v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v106, v108, v109, v110, v111, &v135, v147, 16, v107);
      if (v117)
      {
        v122 = *v136;
        do
        {
          for (i = 0; i != v117; ++i)
          {
            if (*v136 != v122)
            {
              objc_enumerationMutation(v105);
            }

            v124 = *(*(&v135 + 1) + 8 * i);
            v130 = objc_msgSend_layoutController(v124, v112, v118, v119, v120, v121, v113, v114, v115, v116);
            if (v130 == v38)
            {
              objc_msgSend_tp_validateTextLayoutForcibly(v124, v125, v131, v132, v133, v134, v126, v127, v128, v129);
            }
          }

          v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v112, v118, v119, v120, v121, &v135, v147, 16, v116);
        }

        while (v117);
      }
    }

LABEL_17:
  }

  _Block_object_dispose(&v140, 8);
}

- (id)p_insertBodyLayout
{
  v11 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_bodyInfo(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v30 = objc_msgSend_p_insertChildLayoutForInfo_(self, v22, v26, v27, v28, v29, v21, v23, v24, v25);

  return v30;
}

- (id)p_insertFootnoteContainerLayout
{
  v11 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_documentRoot(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  footnoteContainerLayout = self->_footnoteContainerLayout;
  if (!footnoteContainerLayout)
  {
    objc_msgSend_bodyRect(self, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v33 = v32.n128_f64[0];
    v35 = v34.n128_f64[0];
    v43 = objc_msgSend_laysOutBodyVertically(v21, v36, v41, v42, v32, v34, v37, v38, v39, v40);
    v53 = objc_msgSend_settings(v21, v44, v49, v50, v51, v52, v45, v46, v47, v48);
    hasFacingPages = objc_msgSend_hasFacingPages(v53, v54, v59, v60, v61, v62, v55, v56, v57, v58);

    if (v43)
    {
      v73 = v35;
    }

    else
    {
      v73 = v33;
    }

    if (v43)
    {
      v35 = v33;
    }

    objc_msgSend_footnoteGap(v21, v64, v69, v70, v71, v72, v65, v66, v67, v68);
    v75 = v74;
    v76 = [TPInflatableFootnoteContainerLayout alloc];
    v86 = objc_msgSend_info(self, v77, v82, v83, v84, v85, v78, v79, v80, v81);
    v99 = objc_msgSend_pageController(v86, v87, v92, v93, v94, v95, v88, v89, v90, v91);
    v103.n128_u64[0] = 0x3FECCCCCC0000000;
    if ((v43 & hasFacingPages) != 0)
    {
      v103.n128_f64[0] = 1.0;
    }

    v100.n128_f64[0] = v35 * v103.n128_f64[0];
    v103.n128_f64[0] = v73;
    v101.n128_u64[0] = v75;
    v104 = objc_msgSend_initWithFootnoteMarkProvider_vertical_lineWidth_maxFootnoteBlockHeight_footnoteSpacing_(v76, v96, v103, v100, v101, v102, v99, v43, v97, v98);
    v105 = self->_footnoteContainerLayout;
    self->_footnoteContainerLayout = v104;

    v115 = objc_msgSend_footnoteKind(v21, v106, v111, v112, v113, v114, v107, v108, v109, v110) != 1;
    objc_msgSend_setIncludeFootnoteSeparatorLine_(self->_footnoteContainerLayout, v116, v120, v121, v122, v123, v115, v117, v118, v119);
    footnoteContainerLayout = self->_footnoteContainerLayout;
  }

  v124 = objc_msgSend_parent(footnoteContainerLayout, v22, v27, v28, v29, v30, v23, v24, v25, v26);

  if (v124 != self)
  {
    objc_msgSend_addChild_(self, v125, v129, v130, v131, v132, self->_footnoteContainerLayout, v126, v127, v128);
  }

  v133 = self->_footnoteContainerLayout;
  v134 = v133;

  return v133;
}

- (void)p_populateOldChildLayoutsWithLayouts:(id)layouts
{
  v48 = *MEMORY[0x277D85DE8];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  layoutsCopy = layouts;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(layoutsCopy, v5, v7, v8, v9, v10, &v43, v47, 16, v6);
  if (v16)
  {
    v21 = *v44;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(layoutsCopy);
        }

        v23 = *(*(&v43 + 1) + 8 * i);
        v29 = objc_msgSend_info(v23, v11, v17, v18, v19, v20, v12, v13, v14, v15, v43);
        if (v29)
        {
          objc_msgSend_setObject_forUncopiedKey_(self->_oldChildLayouts, v24, v30, v31, v32, v33, v23, v29, v27, v28);
        }

        v34 = objc_msgSend_children(v23, v24, v30, v31, v32, v33, v25, v26, v27, v28);
        objc_msgSend_p_populateOldChildLayoutsWithLayouts_(self, v35, v39, v40, v41, v42, v34, v36, v37, v38);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(layoutsCopy, v11, v17, v18, v19, v20, &v43, v47, 16, v15);
    }

    while (v16);
  }
}

- (void)p_sortChildLayouts
{
  objc_opt_class();
  v12 = objc_msgSend_info(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v13 = TSUDynamicCast();

  if (v13)
  {
    objc_opt_class();
    v23 = objc_msgSend_children(self, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    v24 = TSUCheckedDynamicCast();

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_275FCB39C;
    v33[3] = &unk_27A6A8440;
    v33[4] = self;
    v34 = v13;
    objc_msgSend_sortUsingComparator_(v24, v25, v29, v30, v31, v32, v33, v26, v27, v28);
  }
}

- (BOOL)p_isHeaderFooterLayout:(id)layout
{
  layoutCopy = layout;
  v5 = 0;
  v6 = MEMORY[0x277D80FC0];
  while (!v5)
  {
    v5 = 0;
    while (!v5)
    {
      v5 = *(&self->super.super.super.super.super.isa + *v6) == layoutCopy;
      operator++();
    }

    operator++();
  }

  return v5;
}

- (void)p_removeInlineLayoutsFromPageLayout
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_children(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_copy(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v21 = v20;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v24, v25, v26, v27, &v52, v56, 16, v23);
  if (v33)
  {
    v38 = *v53;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v53 != v38)
        {
          objc_enumerationMutation(v21);
        }

        v40 = *(*(&v52 + 1) + 8 * i);
        v41 = objc_msgSend_info(v40, v28, v34, v35, v36, v37, v29, v30, v31, v32, v52);
        isInlineWithText = objc_msgSend_isInlineWithText(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);

        if (isInlineWithText)
        {
          objc_msgSend_removeFromParent(v40, v28, v34, v35, v36, v37, v29, v30, v31, v32);
        }
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v28, v34, v35, v36, v37, &v52, v56, 16, v32);
    }

    while (v33);
  }
}

- (void)p_removeNoLongerInlineLayoutsFromBodyLayout
{
  v67 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_bodyLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_children(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_copy(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v31 = v30;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, v34, v35, v36, v37, &v62, v66, 16, v33);
  if (v43)
  {
    v48 = *v63;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(v31);
        }

        v50 = *(*(&v62 + 1) + 8 * i);
        v51 = objc_msgSend_info(v50, v38, v44, v45, v46, v47, v39, v40, v41, v42, v62);
        isInlineWithText = objc_msgSend_isInlineWithText(v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);

        if ((isInlineWithText & 1) == 0)
        {
          objc_msgSend_removeFromParent(v50, v38, v44, v45, v46, v47, v39, v40, v41, v42);
        }
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v38, v44, v45, v46, v47, &v62, v66, 16, v42);
    }

    while (v43);
  }
}

- (pair<double,)p_sideMargins
{
  v11 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_documentRoot(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  if (objc_msgSend_marginsAreMirrored(self, v22, v27, v28, v29, v30, v23, v24, v25, v26))
  {
    objc_msgSend_rightMargin(v21, v31, v36, v37, v38, v39, v32, v33, v34, v35);
    v41 = v40.n128_u64[0];
    objc_msgSend_leftMargin(v21, v42, v40, v47, v48, v49, v43, v44, v45, v46);
  }

  else
  {
    objc_msgSend_leftMargin(v21, v31, v36, v37, v38, v39, v32, v33, v34, v35);
    v41 = v51.n128_u64[0];
    objc_msgSend_rightMargin(v21, v52, v51, v57, v58, v59, v53, v54, v55, v56);
  }

  v60 = v50;

  v61 = *&v41;
  v62 = v60;
  result.var1 = v62;
  result.var0 = v61;
  return result;
}

- (TPMasterDrawableProvider)masterDrawableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_masterDrawableProvider);

  return WeakRetained;
}

- (void)p_addLayoutsForInfos:(id)infos toArray:(id)array
{
  v103 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  arrayCopy = array;
  v92 = objc_msgSend_layoutController(self, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = infosCopy;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, v18, v19, v20, v21, &v97, v102, 16, v17);
  if (v26)
  {
    v90 = *v98;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v98 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v97 + 1) + 8 * i);
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v32 = objc_msgSend_layoutsForInfo_(v92, v22, 0, v27, v28, v29, v31, v23, v24, v25);
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, v35, v36, v37, v38, &v93, v101, 16, v34);
        if (v39)
        {
          v40 = 0;
          v41 = *v94;
LABEL_8:
          v42 = 0;
          v43 = v40;
          while (1)
          {
            if (*v94 != v41)
            {
              objc_enumerationMutation(v32);
            }

            v40 = *(*(&v93 + 1) + 8 * v42);

            v53 = objc_msgSend_parent(v40, v44, v49, v50, v51, v52, v45, v46, v47, v48);
            v54 = v53 == self;

            if (v54)
            {
              break;
            }

            ++v42;
            v43 = v40;
            if (v39 == v42)
            {
              v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v55, v57, v58, v59, v60, &v93, v101, 16, v56);
              if (v39)
              {
                goto LABEL_8;
              }

              goto LABEL_15;
            }
          }

          if (v40)
          {
            goto LABEL_18;
          }
        }

        else
        {
LABEL_15:
        }

        v70 = objc_alloc(objc_msgSend_layoutClass(v31, v61, v66, v67, v68, v69, v62, v63, v64, v65));
        v40 = objc_msgSend_initWithInfo_(v70, v71, v75, v76, v77, v78, v31, v72, v73, v74);
        objc_msgSend_updateChildrenFromInfo(v40, v79, v84, v85, v86, v87, v80, v81, v82, v83);
LABEL_18:
        objc_msgSend_addObject_(arrayCopy, v61, v66, v67, v68, v69, v40, v63, v64, v65);
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, v88, v27, v28, v29, &v97, v102, 16, v25);
    }

    while (v26);
  }
}

@end