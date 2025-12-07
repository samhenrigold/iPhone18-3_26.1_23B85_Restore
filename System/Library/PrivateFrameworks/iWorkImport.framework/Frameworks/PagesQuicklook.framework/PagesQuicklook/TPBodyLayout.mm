@interface TPBodyLayout
+ (CGSize)minimumBodySize;
- (BOOL)canHaveFootnotesFromPreviousTarget:(id)target;
- (BOOL)containsStartOfPencilAnnotation:(id)annotation;
- (BOOL)containsStartOfRange:(_NSRange)range;
- (BOOL)excludeFromNearestVisibleRectSearchForSelectionPath:(id)path;
- (BOOL)invalidateForPageCountChange;
- (BOOL)isFootnoteContainerOnSamePageAsTarget:(id)target;
- (BOOL)isLayoutOffscreen;
- (BOOL)layoutIsValid;
- (BOOL)marginsAreMirrored;
- (BOOL)processWidowAndInflation;
- (BOOL)selectionMustBeEntirelyOnscreenToCountAsVisibleInSelectionPath:(id)path;
- (BOOL)shouldInvalidateSizeWhenInvalidateSizeOfReliedOnLayout:(id)layout;
- (BOOL)textIsVertical;
- (CGPoint)activityLineUnscaledEndPointForSearchReference:(id)reference;
- (CGPoint)anchorPoint;
- (CGPoint)anchoredAttachmentPositionFromLayoutPosition:(CGPoint)position;
- (CGPoint)calculatePointFromSearchReference:(id)reference;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGPoint)layoutPositionFromAnchoredAttachmentPosition:(CGPoint)position;
- (CGPoint)position;
- (CGRect)p_rectForSelection:(id)selection useParagraphModeRects:(BOOL)rects;
- (CGRect)rectForPresentingAnnotationPopoverForSelectionPath:(id)path;
- (CGRect)rectForSelection:(id)selection;
- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)path;
- (CGRect)rectInRootForSelectionPath:(id)path;
- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path;
- (CGRect)targetRectForCanvasRect:(CGRect)rect;
- (CGSize)currentSize;
- (CGSize)maxSize;
- (CGSize)maximumFrameSizeForChild:(id)child;
- (CGSize)minSize;
- (TSDCanvas)canvas;
- (TSDHint)nextTargetFirstChildHint;
- (TSWPFootnoteHeightMeasurer)footnoteHeightMeasurer;
- (TSWPOffscreenColumn)nextTargetFirstColumn;
- (TSWPOffscreenColumn)previousTargetLastColumn;
- (TSWPStorage)storage;
- (TSWPTopicNumberHints)nextTargetTopicNumberHints;
- (double)contentBlockHeight;
- (double)maxAnchorInBlockDirection;
- (id)addPartitionableAttachmentLayout:(id)layout;
- (id)columnMetricsForCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (id)computeLayoutGeometry;
- (id)containedPencilAnnotations;
- (id)currentAnchoredDrawableLayouts;
- (id)existingAttachmentLayoutForInfo:(id)info;
- (id)layoutForInlineDrawable:(id)drawable;
- (id)p_layoutForDrawable:(id)drawable inContainingLayout:(id)layout;
- (id)pageController;
- (id)unscaledCommentFlagAnchorInfoForSearchReference:(id)reference;
- (id)unscaledContentRectsToAvoidPencilAnnotationOverlap;
- (id)validatedLayoutForAnchoredDrawable:(id)drawable;
- (unint64_t)pageCount;
- (unint64_t)pageNumber;
- (void)addAttachmentLayout:(id)layout;
- (void)clearHiddenInlineDrawableLayoutMarks;
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)invalidateSize;
- (void)markHiddenInlineDrawableLayout:(id)layout;
- (void)p_addLayoutIfAttached:(id)attached;
- (void)p_killDrawableLayouts:(id)layouts;
- (void)parentWillChangeTo:(id)to;
- (void)replaceChild:(id)child with:(id)with;
- (void)resetFootnoteHeightMeasurer;
- (void)setChildren:(id)children;
- (void)setNeedsInflation;
- (void)updateStartCharIndexWithDirtyRanges:(id)ranges;
- (void)validate;
- (void)willBeRemovedFromLayoutController:(id)controller;
- (void)willInflate;
@end

@implementation TPBodyLayout

+ (CGSize)minimumBodySize
{
  v2 = 72.0;
  v3 = 72.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path
{
  v147 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  objc_opt_class();
  v17 = objc_msgSend_mostSpecificSelectionOfClass_(pathCopy, v9, v13, v14, v15, v16, 0, v10, v11, v12);
  v18 = TSUCheckedDynamicCast();

  if (v18)
  {
    if ((objc_msgSend_isValid(v18, v19, v24, v25, v26, v27, v20, v21, v22, v23) & 1) == 0)
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v33, v34, v35, v36, "[TPBodyLayout rectInRootOfAutoZoomContextOfSelectionPath:]", v30, v31, v32);
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm", v40, v41, v42);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v48, v49, v50, v51, v52, v38, v47, 123, 0, "invalid text selection");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v58, v59, v60, v61, v54, v55, v56, v57);
    }

    if (objc_msgSend_isValid(v18, v28, v33, v34, v35, v36, v29, v30, v31, v32))
    {
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v70 = objc_msgSend_columns(self, v62, 0, v67, v68, v69, v63, v64, v65, v66, 0);
      v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, v73, v74, v75, v76, &v142, v146, 16, v72);
      if (v82)
      {
        v87 = *v143;
        do
        {
          for (i = 0; i != v82; ++i)
          {
            if (*v143 != v87)
            {
              objc_enumerationMutation(v70);
            }

            v89 = *(*(&v142 + 1) + 8 * i);
            v90 = objc_msgSend_range(v89, length, v83, v84, v85, v86, v78, v79, v80, v81);
            v92 = v91;
            v149.location = objc_msgSend_DEPRECATED_range(v18, v91, v97, v98, v99, v100, v93, v94, v95, v96);
            v149.length = v101;
            v148.location = v90;
            v148.length = v92;
            length = NSIntersectionRange(v148, v149).length;
            if (!length)
            {
              v102 = objc_msgSend_range(v89, 0, v83, v84, v85, v86, v78, v79, v80, v81);
              v104 = v103;
              v113 = objc_msgSend_DEPRECATED_range(v18, v103, v109, v110, v111, v112, v105, v106, v107, v108);
              if (v102 > v113 || &v104[v102] < &length[v113])
              {
                continue;
              }
            }

            objc_msgSend_frameBounds(v89, length, v83, v84, v85, v86, v78, v79, v80, v81);
            v152.origin.x = v5;
            v152.origin.y = v6;
            v152.size.width = v7;
            v152.size.height = v8;
            *v83.n128_u64 = CGRectUnion(v150, v152);
            v5 = v83.n128_f64[0];
            v6 = v84.n128_f64[0];
            v7 = v85.n128_f64[0];
            v8 = v86.n128_f64[0];
          }

          v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, length, v83, v84, v85, v86, &v142, v146, 16, v81);
        }

        while (v82);
      }
    }
  }

  v115.n128_f64[0] = v5;
  v116.n128_f64[0] = v6;
  v117.n128_f64[0] = v7;
  v118.n128_f64[0] = v8;
  objc_msgSend_rectInRoot_(self, v119, v115, v116, v117, v118, v120, v121, v122, v123);
  v125 = v124.n128_u64[0];
  v127 = v126.n128_u64[0];
  objc_msgSend_rectInRootForSelectionPath_(self, v128, v124, v132, v126, v133, pathCopy, v129, v130, v131);
  v135 = v134;
  v137 = v136;

  v138 = *&v125;
  v139 = v135;
  v140 = *&v127;
  v141 = v137;
  result.size.height = v141;
  result.size.width = v140;
  result.origin.y = v139;
  result.origin.x = v138;
  return result;
}

- (CGRect)rectInRootForSelectionPath:(id)path
{
  pathCopy = path;
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v9 = objc_opt_class();
  v22 = objc_msgSend_mostSpecificSelectionOfClass_(pathCopy, v10, v14, v15, v16, v17, v9, v11, v12, v13);
  if (v22)
  {
    objc_msgSend_rectForSelection_(self, v18, v23, v24, v25, v26, v22, v19, v20, v21);
    objc_msgSend_rectInRoot_(self, v27, v32, v33, v34, v35, v28, v29, v30, v31);
    v5 = v36;
    v6 = v37;
    v7 = v38;
    v8 = v39;
  }

  v40 = v5;
  v41 = v6;
  v42 = v7;
  v43 = v8;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (BOOL)selectionMustBeEntirelyOnscreenToCountAsVisibleInSelectionPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  v13 = objc_msgSend_mostSpecificSelectionOfClass_(pathCopy, v5, v9, v10, v11, v12, 0, v6, v7, v8);
  v14 = TSUDynamicCast();

  if (v14 && (objc_msgSend_isInsertionPoint(v14, v15, v20, v21, v22, v23, v16, v17, v18, v19) & 1) != 0)
  {
    v24 = 1;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = TPBodyLayout;
    v24 = [(TPBodyLayout *)&v26 selectionMustBeEntirelyOnscreenToCountAsVisibleInSelectionPath:pathCopy];
  }

  return v24;
}

- (CGRect)rectForSelection:(id)selection
{
  objc_msgSend_p_rectForSelection_useParagraphModeRects_(self, a2, v5, v6, v7, v8, selection, 1, v3, v4);
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)rectInRootForPresentingAnnotationPopoverForSelectionPath:(id)path
{
  pathCopy = path;
  objc_msgSend_rectForPresentingAnnotationPopoverForSelectionPath_(self, v5, v9, v10, v11, v12, pathCopy, v6, v7, v8);
  objc_msgSend_rectInRoot_(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (id)containedPencilAnnotations
{
  v11 = MEMORY[0x277D80DC0];
  v12 = objc_msgSend_columns(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_rangeOfColumns_(v11, v13, v17, v18, v19, v20, v12, v14, v15, v16);
  v23 = v22;

  v33 = objc_msgSend_storage(self, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v41 = objc_msgSend_pencilAnnotationsInContainedTextRange_(v33, v34, v37, v38, v39, v40, v21, v23, v35, v36);

  return v41;
}

- (id)unscaledContentRectsToAvoidPencilAnnotationOverlap
{
  v11 = objc_msgSend_columns(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_contentRectsToAvoidPencilAnnotationOverlapWithColumns_(MEMORY[0x277D80DC0], v12, v16, v17, v18, v19, v11, v13, v14, v15);
  v31[0] = MEMORY[0x277D85DD0];
  v21.n128_u64[0] = 3221225472;
  v31[1] = 3221225472;
  v31[2] = sub_275FBBA9C;
  v31[3] = &unk_27A6A8220;
  v31[4] = self;
  v29 = objc_msgSend_tsu_arrayByMappingObjectsUsingBlock_(v20, v22, v21, v26, v27, v28, v31, v23, v24, v25);

  return v29;
}

- (BOOL)containsStartOfPencilAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = MEMORY[0x277D80DC0];
  v15 = objc_msgSend_columns(self, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v24 = objc_msgSend_rangeOfColumns_(v5, v16, v20, v21, v22, v23, v15, v17, v18, v19);
  v26 = v25;

  objc_opt_class();
  v27 = TSUCheckedDynamicCast();
  v37 = objc_msgSend_storage(self, v28, v33, v34, v35, v36, v29, v30, v31, v32);
  v46 = objc_msgSend_rangeForPencilAnnotation_(v37, v38, v42, v43, v44, v45, v27, v39, v40, v41);
  v48 = v47;

  v50.location = v46;
  v50.length = v48;
  v51.location = v24;
  v51.length = v26;
  LOBYTE(v24) = NSIntersectionRange(v50, v51).location == v46;

  return v24;
}

- (BOOL)containsStartOfRange:(_NSRange)range
{
  location = range.location;
  v10 = MEMORY[0x277D80DC0];
  v11 = objc_msgSend_columns(self, a2, v5, v6, v7, v8, range.location, range.length, v3, v4);
  v20 = objc_msgSend_rangeOfColumns_(v10, v12, v16, v17, v18, v19, v11, v13, v14, v15);
  v22 = v21;

  return location >= v20 && location - v20 < v22;
}

- (CGRect)rectForPresentingAnnotationPopoverForSelectionPath:(id)path
{
  pathCopy = path;
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v9 = objc_opt_class();
  v21 = objc_msgSend_mostSpecificSelectionOfClass_(pathCopy, v10, v14, v15, v16, v17, v9, v11, v12, v13);
  if (v21)
  {
    objc_msgSend_p_rectForSelection_useParagraphModeRects_(self, v18, v22, v23, v24, v25, v21, 0, v19, v20);
    v5 = v26;
    v6 = v27;
    v7 = v28;
    v8 = v29;
  }

  v30 = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)p_rectForSelection:(id)selection useParagraphModeRects:(BOOL)rects
{
  rectsCopy = rects;
  selectionCopy = selection;
  v7 = MEMORY[0x277D80DC0];
  v17 = objc_msgSend_columns(self, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  objc_msgSend_rectForSelection_withColumns_useParagraphModeRects_(v7, v18, v20, v21, v22, v23, selectionCopy, v17, rectsCopy, v19);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)p_killDrawableLayouts:(id)layouts
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = objc_msgSend_copy(layouts, a2, v6, v7, v8, v9, layouts, v3, v4, v5);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v13, v14, v15, v16, &v30, v34, 16, v12);
  if (v22)
  {
    v27 = *v31;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(v10);
        }

        v29 = *(*(&v30 + 1) + 8 * i);
        if ((objc_msgSend_isBeingManipulated(v29, v17, v23, v24, v25, v26, v18, v19, v20, v21, v30) & 1) == 0)
        {
          objc_msgSend_removeFromParent(v29, v17, v23, v24, v25, v26, v18, v19, v20, v21);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, v23, v24, v25, v26, &v30, v34, 16, v21);
    }

    while (v22);
  }
}

- (void)setNeedsInflation
{
  columns = self->_columns;
  self->_columns = 0;
}

- (void)updateStartCharIndexWithDirtyRanges:(id)ranges
{
  v218 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  if (objc_msgSend_count(self->_columns, v5, v10, v11, v12, v13, v6, v7, v8, v9))
  {
    v212 = rangesCopy;
    v22 = objc_msgSend_objectAtIndexedSubscript_(self->_columns, v14, v18, v19, v20, v21, 0, v15, v16, v17);
    v32 = objc_msgSend_range(v22, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    v42 = objc_msgSend_info(self, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    v52 = objc_msgSend_pageHint(v42, v43, v48, v49, v50, v51, v44, v45, v46, v47);

    v211 = v52;
    if (v52)
    {
      v62 = objc_msgSend_firstHint(v52, v53, v58, v59, v60, v61, v54, v55, v56, v57);
      v72 = objc_msgSend_range(v62, v63, v68, v69, v70, v71, v64, v65, v66, v67);

      v91 = v72 - v32;
      if (objc_msgSend_isEmpty(rangesCopy, v73, v78, v79, v80, v81, v74, v75, v76, v77))
      {
        v92 = 0;
      }

      else
      {
        v118 = objc_msgSend_superRange(rangesCopy, v82, v87, v88, v89, v90, v83, v84, v85, v86);
        v92 = &v82[v118 - v91];
      }

      v210 = v22;
      if (v92 > objc_msgSend_range(v22, v82, v87, v88, v89, v90, v83, v84, v85, v86))
      {
        v128 = objc_msgSend_storageChangeCount(v22, v119, v124, v125, v126, v127, v120, v121, v122, v123);
        v138 = objc_msgSend_info(self, v129, v134, v135, v136, v137, v130, v131, v132, v133);
        v148 = objc_msgSend_bodyStorage(v138, v139, v144, v145, v146, v147, v140, v141, v142, v143);
        v158 = objc_msgSend_changeCount(v148, v149, v154, v155, v156, v157, v150, v151, v152, v153);

        v167 = v128 == v158;
        v22 = v210;
        if (!v167)
        {
          v209 = MEMORY[0x277D81150];
          v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v159, v163, v164, v165, v166, "[TPBodyLayout updateStartCharIndexWithDirtyRanges:]", v160, v161, v162);
          v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v169, v173, v174, v175, v176, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm", v170, v171, v172);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v209, v178, v179, v180, v181, v182, v168, v177, 270, 0, "dirty range should not overlap range being sync'd");

          v22 = v210;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v183, v188, v189, v190, v191, v184, v185, v186, v187);
        }
      }

      if (v72 != v32)
      {
        v215 = 0u;
        v216 = 0u;
        v213 = 0u;
        v214 = 0u;
        v192 = self->_columns;
        v202 = objc_msgSend_countByEnumeratingWithState_objects_count_(v192, v193, v195, v196, v197, v198, &v213, v217, 16, v194);
        if (v202)
        {
          v207 = *v214;
          do
          {
            for (i = 0; i != v202; ++i)
            {
              if (*v214 != v207)
              {
                objc_enumerationMutation(v192);
              }

              objc_msgSend_incrementRanges_startingAt_(*(*(&v213 + 1) + 8 * i), v199, v203, v204, v205, v206, v91, v92, v200, v201);
            }

            v202 = objc_msgSend_countByEnumeratingWithState_objects_count_(v192, v199, v203, v204, v205, v206, &v213, v217, 16, v201);
          }

          while (v202);
        }
      }
    }

    else
    {
      v93 = MEMORY[0x277D81150];
      v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v58, v59, v60, v61, "[TPBodyLayout updateStartCharIndexWithDirtyRanges:]", v55, v56, v57);
      v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, v99, v100, v101, v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm", v96, v97, v98);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v104, v105, v106, v107, v108, v94, v103, 263, 0, "invalid nil value for '%{public}s'", "pageHint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v114, v115, v116, v117, v110, v111, v112, v113);
    }

    rangesCopy = v212;
  }
}

- (BOOL)processWidowAndInflation
{
  v239 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_lastObject(self->_columns, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v231 = v10;
  if (v10)
  {
    v20 = objc_msgSend_range(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
    v22 = v21;
    v31 = objc_msgSend_info(self, v21, v27, v28, v29, v30, v23, v24, v25, v26);
    v41 = objc_msgSend_pageHint(v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);

    v229 = v41;
    if (v41)
    {
      v51 = objc_msgSend_lastHint(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);
      v61 = objc_msgSend_range(v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
      v62 = &v22[v20];
      v64 = v61 + v63;

      if (v64 != v62)
      {
        v74 = objc_msgSend_info(self, v65, v70, v71, v72, v73, v66, v67, v68, v69);
        v233 = objc_msgSend_bodyStorage(v74, v75, v80, v81, v82, v83, v76, v77, v78, v79);

        v93 = objc_msgSend_range(v231, v84, v89, v90, v91, v92, v85, v86, v87, v88);
        if (v64 <= &v94[v93])
        {
          v101 = &v94[v93];
        }

        else
        {
          v101 = v64;
        }

        if (v64 >= &v94[v93])
        {
          v102 = &v94[v93];
        }

        else
        {
          v102 = v64;
        }

        v103 = &v101[-v102];
        objc_msgSend_footnoteRangeForTextRange_(v233, v94, v97, v98, v99, v100, v102, &v101[-v102], v95, v96);
        v105 = v104;
        v112 = objc_msgSend_autoNumberFootnoteCountForRange_(v233, v104, v108, v109, v110, v111, v102, v103, v106, v107);
        objc_msgSend_trimToCharIndex_inTarget_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_(v231, v113, v114, v115, v116, v117, v64, self, v105, v112);
        v118 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v130 = objc_msgSend_attachmentIndexRangeForTextRange_(v233, v119, v122, v123, v124, v125, v102, v103, v120, v121);
        v230 = &v126[v130];
        if (v130 < &v126[v130])
        {
          do
          {
            objc_opt_class();
            v142 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v233, v135, v138, v139, v140, v141, v130, 0, v136, v137);
            v143 = TSUDynamicCast();

            if (v143 && (objc_msgSend_isAnchored(v143, v144, v149, v150, v151, v152, v145, v146, v147, v148) & 1) == 0)
            {
              v236 = 0u;
              v237 = 0u;
              v234 = 0u;
              v235 = 0u;
              v161 = objc_msgSend_children(self, v153, 0, v158, v159, v160, v154, v155, v156, v157);
              v173 = objc_msgSend_countByEnumeratingWithState_objects_count_(v161, v162, v164, v165, v166, v167, &v234, v238, 16, v163);
              if (v173)
              {
                v178 = *v235;
                do
                {
                  for (i = 0; i != v173; ++i)
                  {
                    if (*v235 != v178)
                    {
                      objc_enumerationMutation(v161);
                    }

                    v180 = *(*(&v234 + 1) + 8 * i);
                    v181 = objc_msgSend_info(v180, v168, v174, v175, v176, v177, v169, v170, v171, v172);
                    v191 = objc_msgSend_owningAttachment(v181, v182, v187, v188, v189, v190, v183, v184, v185, v186);
                    v192 = v191 == v143;

                    if (v192)
                    {
                      objc_msgSend_addObject_(v118, v168, v174, v175, v176, v177, v180, v170, v171, v172);
                    }
                  }

                  v173 = objc_msgSend_countByEnumeratingWithState_objects_count_(v161, v168, v174, v175, v176, v177, &v234, v238, 16, v172);
                }

                while (v173);
              }
            }

            ++v130;
          }

          while (v130 != v230);
        }

        objc_msgSend_p_killDrawableLayouts_(self, v126, v131, v132, v133, v134, v118, v127, v128, v129);
        objc_msgSend_setNeedsDisplay(self, v193, v198, v199, v200, v201, v194, v195, v196, v197);

        v202 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v203 = MEMORY[0x277D81150];
      v204 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v47, v48, v49, v50, "[TPBodyLayout processWidowAndInflation]", v44, v45, v46);
      v213 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v205, v209, v210, v211, v212, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm", v206, v207, v208);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v203, v214, v215, v216, v217, v218, v204, v213, 295, 0, "invalid nil value for '%{public}s'", "pageHint", 0);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v219, v224, v225, v226, v227, v220, v221, v222, v223);
    }

    v202 = 0;
LABEL_28:

    goto LABEL_29;
  }

  objc_msgSend_invalidate(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v202 = 0;
LABEL_29:

  return v202;
}

- (double)contentBlockHeight
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = self->_columns;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, v5, v6, v7, v8, &v24, v28, 16, v4);
  if (v14)
  {
    v19 = *v25;
    v20 = 0.0;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v2);
        }

        v22 = *(*(&v24 + 1) + 8 * i);
        objc_msgSend_textBlockBottom(v22, v9, v15, v16, v17, v18, v10, v11, v12, v13, v24);
        if (v15.n128_f64[0] > v20)
        {
          objc_msgSend_textBlockBottom(v22, v9, v15, v16, v17, v18, v10, v11, v12, v13);
          v20 = v15.n128_f64[0];
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v9, v15, v16, v17, v18, &v24, v28, 16, v13);
    }

    while (v14);
  }

  else
  {
    v20 = 0.0;
  }

  return v20;
}

- (CGSize)maximumFrameSizeForChild:(id)child
{
  v220 = *MEMORY[0x277D85DE8];
  childCopy = child;
  v14 = objc_msgSend_pageLayout(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v24 = objc_msgSend_info(v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v34 = objc_msgSend_documentRoot(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);
  v44 = objc_msgSend_laysOutBodyVertically(v34, v35, v40, v41, v42, v43, v36, v37, v38, v39);

  objc_opt_class();
  v54 = objc_msgSend_info(childCopy, v45, v50, v51, v52, v53, v46, v47, v48, v49);
  v64 = objc_msgSend_owningAttachment(v54, v55, v60, v61, v62, v63, v56, v57, v58, v59);
  v65 = TSUDynamicCast();

  if (!v65)
  {
    goto LABEL_31;
  }

  if (objc_msgSend_isAnchored(v65, v66, v71, v72, v73, v74, v67, v68, v69, v70))
  {
    objc_opt_class();
    v84 = TSUDynamicCast();
    if ((objc_msgSend_isHTMLWrap(v84, v85, v90, v91, v92, v93, v86, v87, v88, v89) & 1) == 0)
    {

      goto LABEL_31;
    }

    columns = self->_columns;

    if (!columns)
    {
      goto LABEL_31;
    }
  }

  else if (!self->_columns)
  {
    goto LABEL_31;
  }

  v208 = childCopy;
  CharIndex = objc_msgSend_findCharIndex(v65, v75, v80, v81, v82, v83, v76, v77, v78, v79);
  v105 = objc_msgSend_geometry(self, v96, v101, v102, v103, v104, v97, v98, v99, v100);
  objc_msgSend_frame(v105, v106, v111, v112, v113, v114, v107, v108, v109, v110);
  v116 = v115;

  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v117 = self->_columns;
  v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v118, v120, v121, v122, v123, &v214, v219, 16, v119);
  if (v129)
  {
    v134 = *v215;
    while (2)
    {
      for (i = 0; i != v129; ++i)
      {
        if (*v215 != v134)
        {
          objc_enumerationMutation(v117);
        }

        v136 = *(*(&v214 + 1) + 8 * i);
        if ((objc_msgSend_layoutResultFlags(v136, v124, v130, v131, v132, v133, v125, v126, v127, v128) & 0x80000000) != 0)
        {
          objc_msgSend_frameBounds(v136, v124, v130, v131, v132, v133, v125, v126, v127, v128);
          v168 = v166.n128_f64[0];
          childCopy = v208;
          if (v44)
          {
            v207 = v167.n128_f64[0];
            v164.n128_f64[0] = CGRectGetMaxX(*v164.n128_u64);
            v168 = v164.n128_f64[0];
          }

          else
          {
            v207 = v116 - v165.n128_f64[0];
          }

          v174 = objc_msgSend_parentStorage(v65, v159, v164, v165, v166, v167, v160, v161, v162, v163);
          v182 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v174, v175, v178, v179, v180, v181, CharIndex, 0, v176, v177);

          objc_msgSend_floatValueForProperty_(v182, v183, v187, v188, v189, v190, 81, v184, v185, v186);
          v192 = v191.n128_f32[0];
          objc_msgSend_floatValueForProperty_(v182, v193, v191, v197, v198, v199, 82, v194, v195, v196);
          v201 = v192 + v200;
          v202 = v207 - v201;
          v203 = v168 - v201;
          if (v44)
          {
            v205 = v168;
          }

          else
          {
            v205 = v203;
          }

          if (v44)
          {
            v207 = v202;
          }

          goto LABEL_32;
        }
      }

      v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v117, v124, v130, v131, v132, v133, &v214, v219, 16, v128);
      if (v129)
      {
        continue;
      }

      break;
    }
  }

  childCopy = v208;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v137 = self->_columns;
  v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v138, v140, v141, v142, v143, &v210, v218, 16, v139);
  if (v149)
  {
    v154 = *v211;
    do
    {
      for (j = 0; j != v149; ++j)
      {
        if (*v211 != v154)
        {
          objc_enumerationMutation(v137);
        }

        v156 = *(*(&v210 + 1) + 8 * j);
        v157 = objc_msgSend_range(v156, v144, v150, v151, v152, v153, v145, v146, v147, v148);
        if (CharIndex >= v157 && CharIndex - v157 < v144)
        {
          objc_msgSend_frameBounds(v156, v144, v150, v151, v152, v153, v145, v146, v147, v148);
          v205 = v204;
          v207 = v206;

          childCopy = v208;
          goto LABEL_32;
        }
      }

      v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v137, v144, v150, v151, v152, v153, &v210, v218, 16, v148);
      childCopy = v208;
    }

    while (v149);
  }

LABEL_31:
  v209.receiver = self;
  v209.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v209 maximumFrameSizeForChild:childCopy];
  v205 = v169;
  v207 = v170;
LABEL_32:
  if (v205 >= 18.0)
  {
    v171 = v205;
  }

  else
  {
    v171 = 18.0;
  }

  if (!v44)
  {
    v205 = v171;
  }

  if ((v44 & (v207 < 18.0)) != 0)
  {
    v207 = 18.0;
  }

  v172 = v205;
  v173 = v207;
  result.height = v173;
  result.width = v172;
  return result;
}

- (id)computeLayoutGeometry
{
  v10 = objc_msgSend_pageLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = v10;
  if (v10)
  {
    objc_msgSend_bodyRect(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
    v29 = v25.n128_f64[0];
    v30 = v26.n128_f64[0];
    v31 = v27.n128_f64[0];
    v32 = v28.n128_f64[0];
    if (v27.n128_f64[0] < 0.0)
    {
      v33 = MEMORY[0x277D81150];
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v25, v26, v27, v28, "[TPBodyLayout computeLayoutGeometry]", v22, v23, v24);
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm", v36, v37, v38);
      v98.origin.x = v29;
      v98.origin.y = v30;
      v98.size.width = v31;
      v98.size.height = v32;
      v44 = NSStringFromCGRect(v98);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v45, v46, v47, v48, v49, v34, v43, 445, 0, "Body rect width is illegal %{public}@", v44);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v55, v56, v57, v58, v51, v52, v53, v54);
    }

    if (v32 < 0.0)
    {
      v59 = MEMORY[0x277D81150];
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v25, v26, v27, v28, "[TPBodyLayout computeLayoutGeometry]", v22, v23, v24);
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm", v62, v63, v64);
      v99.origin.x = v29;
      v99.origin.y = v30;
      v99.size.width = v31;
      v99.size.height = v32;
      v70 = NSStringFromCGRect(v99);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v71, v72, v73, v74, v75, v60, v69, 446, 0, "Body rect height is illegal %{public}@", v70);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v81, v82, v83, v84, v77, v78, v79, v80);
    }

    if (v31 < 72.0 && fabs(v31 + -72.0) >= 0.00999999978 && *MEMORY[0x277D81500] != -1)
    {
      sub_276038188();
    }

    if (v32 < 72.0 && fabs(v32 + -72.0) >= 0.00999999978 && *MEMORY[0x277D81500] != -1)
    {
      sub_27603819C();
    }

    if (v31 < 72.0)
    {
      v31 = 72.0;
    }

    if (v32 < 72.0)
    {
      v32 = 72.0;
    }
  }

  else
  {
    v30 = 0.0;
    v32 = 72.0;
    v31 = 72.0;
    v29 = 0.0;
  }

  v85 = objc_alloc(MEMORY[0x277D80300]);
  v86.n128_f64[0] = v29;
  v87.n128_f64[0] = v30;
  v88.n128_f64[0] = v31;
  v89.n128_f64[0] = v32;
  v95 = objc_msgSend_initWithFrame_(v85, v90, v86, v87, v88, v89, v91, v92, v93, v94);

  return v95;
}

- (CGPoint)capturedInfoPositionForAttachment
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)validate
{
  v137.receiver = self;
  v137.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v137 validate];
  if (objc_msgSend_needsInflation(self, v3, v8, v9, v10, v11, v4, v5, v6, v7))
  {
    v21 = objc_msgSend_currentInlineDrawableLayouts(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    objc_msgSend_p_killDrawableLayouts_(self, v22, v26, v27, v28, v29, v21, v23, v24, v25);

    v39 = objc_msgSend_currentAnchoredDrawableLayouts(self, v30, v35, v36, v37, v38, v31, v32, v33, v34);
    objc_msgSend_p_killDrawableLayouts_(self, v40, v44, v45, v46, v47, v39, v41, v42, v43);

    v57 = objc_msgSend_footnoteHeightMeasurer(self, v48, v53, v54, v55, v56, v49, v50, v51, v52);
    objc_msgSend_removeAllFootnoteReferenceStorages(v57, v58, v63, v64, v65, v66, v59, v60, v61, v62);

    v76 = objc_msgSend_info(self, v67, v72, v73, v74, v75, v68, v69, v70, v71);
    objc_msgSend_inflateBodyLayout_(v76, v77, v81, v82, v83, v84, self, v78, v79, v80);

    v94 = objc_msgSend_parent(self, v85, v90, v91, v92, v93, v86, v87, v88, v89);
    objc_msgSend_evacuateOldChildLayoutCache(v94, v95, v100, v101, v102, v103, v96, v97, v98, v99);
  }

  if (objc_msgSend_needsInflation(self, v12, v17, v18, v19, v20, v13, v14, v15, v16))
  {
    v112 = MEMORY[0x277D81150];
    v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, v108, v109, v110, v111, "[TPBodyLayout validate]", v105, v106, v107);
    v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, v118, v119, v120, v121, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm", v115, v116, v117);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v123, v124, v125, v126, v127, v113, v122, 497, 0, "still need inflation after validation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v128, v133, v134, v135, v136, v129, v130, v131, v132);
  }
}

- (void)willInflate
{
  if ((objc_msgSend_needsInflation(self, a2, v6, v7, v8, v9, v2, v3, v4, v5) & 1) == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v15, v16, v17, v18, "[TPBodyLayout willInflate]", v12, v13, v14);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm", v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v30, v31, v32, v33, v34, v20, v29, 502, 0, "Shouldn't call willInflate unless inflation is needed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v40, v41, v42, v43, v36, v37, v38, v39);
  }

  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  columns = self->_columns;
  self->_columns = v44;
}

- (BOOL)shouldInvalidateSizeWhenInvalidateSizeOfReliedOnLayout:(id)layout
{
  layoutCopy = layout;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TPBodyLayout;
    v5 = [(TPBodyLayout *)&v7 shouldInvalidateSizeWhenInvalidateSizeOfReliedOnLayout:layoutCopy];
  }

  return v5;
}

- (void)invalidateSize
{
  v44 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v42 invalidateSize];
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v11 = objc_msgSend_currentAnchoredDrawableLayouts(self, v3, 0, v8, v9, v10, v4, v5, v6, v7, 0, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v14, v15, v16, v17, &v38, v43, 16, v13);
  if (v18)
  {
    v19 = *v39;
    do
    {
      v20 = 0;
      do
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v11);
        }

        objc_opt_class();
        v21 = TSUDynamicCast();
        v31 = v21;
        if (v21)
        {
          objc_msgSend_invalidateExteriorWrap(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v32, v34, v35, v36, v37, &v38, v43, 16, v33);
    }

    while (v18);
  }
}

- (void)parentWillChangeTo:(id)to
{
  v3.receiver = self;
  v3.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v3 parentWillChangeTo:to];
}

- (void)replaceChild:(id)child with:(id)with
{
  childCopy = child;
  withCopy = with;
  if (childCopy != withCopy)
  {
    objc_msgSend_removeObject_(self->_inlineDrawableLayouts, v7, v12, v13, v14, v15, childCopy, v8, v9, v10);
  }

  v16.receiver = self;
  v16.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v16 replaceChild:childCopy with:withCopy];
}

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  childCopy = child;
  objc_msgSend_p_addLayoutIfAttached_(self, v7, v11, v12, v13, v14, childCopy, v8, v9, v10);
  v15.receiver = self;
  v15.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v15 insertChild:childCopy atIndex:index];
}

- (void)setChildren:(id)children
{
  v38 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  objc_msgSend_removeAllObjects(self->_inlineDrawableLayouts, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = childrenCopy;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, v17, v18, v19, v20, &v33, v37, 16, v16);
  if (v25)
  {
    v30 = *v34;
    do
    {
      v31 = 0;
      do
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(v14);
        }

        objc_msgSend_p_addLayoutIfAttached_(self, v21, v26, v27, v28, v29, *(*(&v33 + 1) + 8 * v31++), v22, v23, v24);
      }

      while (v25 != v31);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v21, v26, v27, v28, v29, &v33, v37, 16, v24);
    }

    while (v25);
  }

  v32.receiver = self;
  v32.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v32 setChildren:v14];
}

- (void)p_addLayoutIfAttached:(id)attached
{
  attachedCopy = attached;
  v13 = objc_msgSend_info(attachedCopy, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v23 = objc_msgSend_owningAttachment(v13, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  isDrawable = objc_msgSend_isDrawable(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);

  if (isDrawable)
  {
    inlineDrawableLayouts = self->_inlineDrawableLayouts;
    if (!inlineDrawableLayouts)
    {
      v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v44 = self->_inlineDrawableLayouts;
      self->_inlineDrawableLayouts = v43;

      inlineDrawableLayouts = self->_inlineDrawableLayouts;
    }

    objc_msgSend_addObject_(inlineDrawableLayouts, v34, v38, v39, v40, v41, attachedCopy, v35, v36, v37);
  }
}

- (id)columnMetricsForCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  v12 = objc_msgSend_info(self, a2, v6, v7, v8, v9, index, range, v4, v5);
  v22 = objc_msgSend_bodyStorage(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v30 = objc_msgSend_columnStyleAtCharIndex_effectiveRange_(v22, v23, v26, v27, v28, v29, index, range, v24, v25);

  return v30;
}

- (BOOL)marginsAreMirrored
{
  v10 = objc_msgSend_pageLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_marginsAreMirrored(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (TSWPStorage)storage
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_bodyStorage(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (TSWPOffscreenColumn)previousTargetLastColumn
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_previousTargetLastColumn(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (TSWPOffscreenColumn)nextTargetFirstColumn
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_nextTargetFirstColumn(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (TSWPTopicNumberHints)nextTargetTopicNumberHints
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_nextTargetTopicNumberHints(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (TSWPFootnoteHeightMeasurer)footnoteHeightMeasurer
{
  v11 = objc_msgSend_pageLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_info(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  v31 = objc_msgSend_documentRoot(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  if (!objc_msgSend_footnotesShouldAffectBodyLayout(v31, v32, v37, v38, v39, v40, v33, v34, v35, v36) || (objc_msgSend_info(self, v41, v46, v47, v48, v49, v42, v43, v44, v45), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend_bodyStorage(v50, v51, v56, v57, v58, v59, v52, v53, v54, v55), v60 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend_footnoteCount(v60, v61, v66, v67, v68, v69, v62, v63, v64, v65), v60, v50, !v70))
  {
    objc_msgSend_tearDown(self->_footnoteHeightMeasurer, v41, v46, v47, v48, v49, v42, v43, v44, v45);
    footnoteHeightMeasurer = self->_footnoteHeightMeasurer;
    self->_footnoteHeightMeasurer = 0;
LABEL_11:

    goto LABEL_12;
  }

  if (!self->_footnoteHeightMeasurer)
  {
    objc_msgSend_currentSize(self, v41, v46, v47, v48, v49, v42, v43, v44, v45);
    v72 = v71.n128_f64[0];
    v74 = v73.n128_f64[0];
    v82 = objc_msgSend_laysOutBodyVertically(v31, v75, v71, v73, v80, v81, v76, v77, v78, v79);
    if (v82)
    {
      *&v83 = v74;
    }

    else
    {
      *&v83 = v72;
    }

    if (!v82)
    {
      v72 = v74;
    }

    v84 = [TPFootnoteHeightMeasurer alloc];
    footnoteHeightMeasurer = objc_msgSend_pageController(self, v85, v90, v91, v92, v93, v86, v87, v88, v89);
    v104 = objc_msgSend_laysOutBodyVertically(v31, v95, v100, v101, v102, v103, v96, v97, v98, v99);
    v114 = objc_msgSend_settings(v31, v105, v110, v111, v112, v113, v106, v107, v108, v109);
    v124 = objc_msgSend_footnoteGap(v114, v115, v120, v121, v122, v123, v116, v117, v118, v119);
    v125.n128_f64[0] = v72 * 0.899999976;
    v126.n128_f64[0] = v124;
    v127.n128_u64[0] = v83;
    v130 = objc_msgSend_initWithFootnoteMarkProvider_documentRoot_pageDelegate_maxFootnoteLineWidth_maxFootnoteBlockHeight_vertical_footnoteSpacing_(v84, v128, v127, v125, v126, v129, footnoteHeightMeasurer, v31, self, v104);
    v131 = self->_footnoteHeightMeasurer;
    self->_footnoteHeightMeasurer = v130;

    goto LABEL_11;
  }

LABEL_12:
  v132 = self->_footnoteHeightMeasurer;
  v133 = v132;

  return v132;
}

- (void)resetFootnoteHeightMeasurer
{
  objc_msgSend_tearDown(self->_footnoteHeightMeasurer, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  footnoteHeightMeasurer = self->_footnoteHeightMeasurer;
  self->_footnoteHeightMeasurer = 0;
}

- (void)willBeRemovedFromLayoutController:(id)controller
{
  controllerCopy = controller;
  objc_msgSend_resetFootnoteHeightMeasurer(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v14.receiver = self;
  v14.super_class = TPBodyLayout;
  [(TPBodyLayout *)&v14 willBeRemovedFromLayoutController:controllerCopy];
}

- (TSDHint)nextTargetFirstChildHint
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_nextTargetFirstChildHint(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (CGSize)minSize
{
  v10 = objc_msgSend_geometry(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_msgSend_size(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v21 = v20;
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGSize)maxSize
{
  v10 = objc_msgSend_geometry(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_msgSend_size(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v21 = v20;
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGSize)currentSize
{
  v10 = objc_msgSend_geometry(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  objc_msgSend_size(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v21 = v20;
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGPoint)position
{
  v6.n128_u64[0] = *(MEMORY[0x277CBF348] + 8);
  v24 = v6.n128_f64[0];
  v25 = *MEMORY[0x277CBF348];
  v9 = objc_msgSend_geometry(self, a2, v6, *MEMORY[0x277CBF348], v7, v8, v2, v3, v4, v5);
  v18 = v9;
  if (v9)
  {
    objc_msgSend_transform(v9, v14, v15, v16, v17, v10, v11, v12, v13);
    v19 = v27;
    v20 = v28;
    v21 = v29;
  }

  else
  {
    v21 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  v26 = vaddq_f64(v21, vmlaq_n_f64(vmulq_n_f64(v20, v24), v19, *&v25));

  v23 = v26.f64[1];
  v22 = v26.f64[0];
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGPoint)anchorPoint
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)targetRectForCanvasRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  objc_msgSend_frameInRoot(self, a2, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, v3, v4, v5, v6);
  v12 = -v11;
  v14 = -v13;
  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;

  return CGRectOffset(*&v15, v12, v14);
}

- (TSDCanvas)canvas
{
  v10 = objc_msgSend_layoutController(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_canvas(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (id)addPartitionableAttachmentLayout:(id)layout
{
  layoutCopy = layout;
  objc_msgSend_addAttachmentLayout_(self, v5, v9, v10, v11, v12, layoutCopy, v6, v7, v8);

  return layoutCopy;
}

- (BOOL)layoutIsValid
{
  v11 = objc_msgSend_pageController(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (objc_msgSend_isPaginationComplete(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16))
  {
    v30 = 1;
  }

  else
  {
    PageIndexNeedingLayout = objc_msgSend_firstPageIndexNeedingLayout(v11, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v41 = objc_msgSend_parent(self, v32, v37, v38, v39, v40, v33, v34, v35, v36);
    v51 = objc_msgSend_info(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);
    v30 = PageIndexNeedingLayout > objc_msgSend_pageIndex(v51, v52, v57, v58, v59, v60, v53, v54, v55, v56) + 1;
  }

  return v30;
}

- (BOOL)isFootnoteContainerOnSamePageAsTarget:(id)target
{
  if (target != self)
  {
    return 0;
  }

  v11 = objc_msgSend_pageLayout(self, a2, v6, v7, v8, v9, target, v3, v4, v5);
  v10 = objc_msgSend_allowsFootnotes(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  return v10;
}

- (BOOL)canHaveFootnotesFromPreviousTarget:(id)target
{
  if (target != self)
  {
    return 0;
  }

  v11 = objc_msgSend_pageLayout(self, a2, v6, v7, v8, v9, target, v3, v4, v5);
  HavePreviousPageFootnotes = objc_msgSend_canHavePreviousPageFootnotes(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  return HavePreviousPageFootnotes;
}

- (void)clearHiddenInlineDrawableLayoutMarks
{
  markedHiddenInlineDrawableLayouts = self->_markedHiddenInlineDrawableLayouts;
  self->_markedHiddenInlineDrawableLayouts = 0;
}

- (void)markHiddenInlineDrawableLayout:(id)layout
{
  layoutCopy = layout;
  markedHiddenInlineDrawableLayouts = self->_markedHiddenInlineDrawableLayouts;
  v15 = layoutCopy;
  if (!markedHiddenInlineDrawableLayouts)
  {
    v13 = objc_opt_new();
    v14 = self->_markedHiddenInlineDrawableLayouts;
    self->_markedHiddenInlineDrawableLayouts = v13;

    markedHiddenInlineDrawableLayouts = self->_markedHiddenInlineDrawableLayouts;
    layoutCopy = v15;
  }

  objc_msgSend_addObject_(markedHiddenInlineDrawableLayouts, layoutCopy, v8, v9, v10, v11, layoutCopy, v5, v6, v7);
}

- (id)existingAttachmentLayoutForInfo:(id)info
{
  infoCopy = info;
  v14 = objc_msgSend_layoutController(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v22 = objc_msgSend_layoutForInfo_childOfLayout_(v14, v15, v18, v19, v20, v21, infoCopy, self, v16, v17);

  return v22;
}

- (void)addAttachmentLayout:(id)layout
{
  layoutCopy = layout;
  v92 = layoutCopy;
  if (!layoutCopy)
  {
    v69 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v10, v11, v12, v13, "[TPBodyLayout addAttachmentLayout:]", v7, v8, v9);
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm", v71, v72, v73);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v78, v79, v80, v81, v82, v54, v63, 799, 0, "layout is nil");
    goto LABEL_7;
  }

  v14 = objc_msgSend_parent(layoutCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);

  if (v14 != self)
  {
    objc_msgSend_addChild_(self, v15, v20, v21, v22, v23, v92, v17, v18, v19);
  }

  v24 = objc_msgSend_info(v92, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v34 = objc_msgSend_owningAttachment(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);
  isAnchored = objc_msgSend_isAnchored(v34, v35, v40, v41, v42, v43, v36, v37, v38, v39);

  if (isAnchored)
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v49, v50, v51, v52, "[TPBodyLayout addAttachmentLayout:]", v46, v47, v48);
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm", v56, v57, v58);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v64, v65, v66, v67, v68, v54, v63, 805, 0, "Body attachment child should be inline");
LABEL_7:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v88, v89, v90, v91, v84, v85, v86, v87);
  }
}

- (CGPoint)calculatePointFromSearchReference:(id)reference
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)activityLineUnscaledEndPointForSearchReference:(id)reference
{
  v3 = *MEMORY[0x277D814D0];
  v4 = *(MEMORY[0x277D814D0] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)unscaledCommentFlagAnchorInfoForSearchReference:(id)reference
{
  v4 = objc_alloc(MEMORY[0x277D80638]);
  objc_msgSend_frameInRoot(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v15 = v14.n128_u64[0];
  v17 = v16.n128_u64[0];
  objc_msgSend_frameInRoot(self, v18, v14, v16, v23, v24, v19, v20, v21, v22);
  v26.n128_u64[0] = v25;
  v28.n128_u64[0] = v27;
  v29.n128_u64[0] = v15;
  v30.n128_u64[0] = v17;
  isVertical = objc_msgSend_initWithLeftAnchor_rightAnchor_isVertical_(v4, v31, v29, v30, v26, v28, 0, v32, v33, v34);

  return isVertical;
}

- (BOOL)excludeFromNearestVisibleRectSearchForSelectionPath:(id)path
{
  pathCopy = path;
  v5 = MEMORY[0x277D80DC0];
  v15 = objc_msgSend_columns(self, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  objc_msgSend_rangeOfColumns_(v5, v16, v20, v21, v22, v23, v15, v17, v18, v19);
  v25 = v24;

  v26 = objc_opt_class();
  v35 = objc_msgSend_mostSpecificSelectionOfClass_(pathCopy, v27, v31, v32, v33, v34, v26, v28, v29, v30);
  v45 = v35;
  if (v25 || (objc_msgSend_DEPRECATED_range(v35, v36, v41, v42, v43, v44, v37, v38, v39, v40), !v47))
  {
    LOBYTE(v46) = 0;
  }

  else
  {
    v56 = objc_msgSend_columns(self, v47, v52, v53, v54, v55, v48, v49, v50, v51);
    v66 = objc_msgSend_lastObject(v56, v57, v62, v63, v64, v65, v58, v59, v60, v61);
    v46 = objc_msgSend_onlyHasPartitionedAttachments(v66, v67, v72, v73, v74, v75, v68, v69, v70, v71) ^ 1;
  }

  return v46;
}

- (id)p_layoutForDrawable:(id)drawable inContainingLayout:(id)layout
{
  drawableCopy = drawable;
  layoutCopy = layout;
  if (!drawableCopy)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v11, v12, v13, v14, "[TPBodyLayout p_layoutForDrawable:inContainingLayout:]", v7, v8, v9);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm", v18, v19, v20);
    v26 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v27, v28, v29, v30, v31, v16, v25, 1129, 0, "Invalid request to validate layout of nil drawable in %{public}@ %@", v26, layoutCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v37, v38, v39, v40, v33, v34, v35, v36);
  }

  v46 = objc_msgSend_existingAttachmentLayoutForInfo_(layoutCopy, v6, v11, v12, v13, v14, drawableCopy, v7, v8, v9);
  if (v46 || (v51 = objc_alloc(objc_msgSend_layoutClass(drawableCopy, v41, v47, v48, v49, v50, v42, v43, v44, v45)), (v46 = objc_msgSend_initWithInfo_(v51, v52, v56, v57, v58, v59, drawableCopy, v53, v54, v55)) != 0))
  {
    v60 = objc_msgSend_parent(v46, v41, v47, v48, v49, v50, v42, v43, v44, v45);

    if (v60 != layoutCopy)
    {
      objc_msgSend_addAttachmentLayout_(layoutCopy, v61, v65, v66, v67, v68, v46, v62, v63, v64);
    }
  }

  else
  {
    v69 = MEMORY[0x277D81150];
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v47, v48, v49, v50, "[TPBodyLayout p_layoutForDrawable:inContainingLayout:]", v43, v44, v45);
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v75, v76, v77, v78, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBodyLayout.mm", v72, v73, v74);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v80, v81, v82, v83, v84, v70, v79, 1138, 0, "Failed to create a layout for info %@", drawableCopy);

    v46 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v90, v91, v92, v93, v86, v87, v88, v89);
  }

  return v46;
}

- (id)layoutForInlineDrawable:(id)drawable
{
  v9 = objc_msgSend_p_layoutForDrawable_inContainingLayout_(self, a2, v5, v6, v7, v8, drawable, self, v3, v4);

  return v9;
}

- (id)validatedLayoutForAnchoredDrawable:(id)drawable
{
  drawableCopy = drawable;
  v14 = objc_msgSend_parent(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v22 = objc_msgSend_p_layoutForDrawable_inContainingLayout_(self, v15, v18, v19, v20, v21, drawableCopy, v14, v16, v17);

  return v22;
}

- (id)currentAnchoredDrawableLayouts
{
  v10 = objc_msgSend_pageLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_anchoredDrawableLayouts(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_allObjects(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

  return v30;
}

- (double)maxAnchorInBlockDirection
{
  v11 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (objc_msgSend_laysOutVertically(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16))
  {
    v30 = objc_msgSend_parent(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    objc_msgSend_frame(v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
    v40.n128_f64[0] = CGRectGetWidth(v73);
    v41 = v40.n128_f64[0];
    objc_msgSend_position(self, v42, v40, v47, v48, v49, v43, v44, v45, v46);
    v51 = v41 - v50;
  }

  else
  {
    v30 = objc_msgSend_parent(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    objc_msgSend_frame(v30, v52, v57, v58, v59, v60, v53, v54, v55, v56);
    v61.n128_f64[0] = CGRectGetHeight(v74);
    v62 = v61.n128_f64[0];
    objc_msgSend_position(self, v63, v61, v68, v69, v70, v64, v65, v66, v67);
    v51 = v62 - v71;
  }

  return v51;
}

- (BOOL)isLayoutOffscreen
{
  v10 = objc_msgSend_layoutController(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  isLayoutOffscreen = objc_msgSend_isLayoutOffscreen(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return isLayoutOffscreen;
}

- (CGPoint)layoutPositionFromAnchoredAttachmentPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  objc_msgSend_transform(self, position, *&position.y, v6, v7, a2, v3, v4, v5);
  v8 = vaddq_f64(v14, vmlaq_n_f64(vmulq_n_f64(v13, y), v12, x));
  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (CGPoint)anchoredAttachmentPositionFromLayoutPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  objc_msgSend_transform(self, position, *&position.y, v6, v7, a2, v3, v4, v5);
  CGAffineTransformInvert(&v13, &v12);
  v8 = vaddq_f64(*&v13.tx, vmlaq_n_f64(vmulq_n_f64(*&v13.c, y), *&v13.a, x));
  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (unint64_t)pageNumber
{
  v10 = objc_msgSend_parent(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = v10;
  if (v10)
  {
    v21 = objc_msgSend_pageNumber(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v21;
}

- (unint64_t)pageCount
{
  v10 = objc_msgSend_parent(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_pageCount(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (BOOL)invalidateForPageCountChange
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  columns = self->_columns;
  v31[0] = MEMORY[0x277D85DD0];
  v5.n128_u64[0] = 3221225472;
  v31[1] = 3221225472;
  v31[2] = sub_275FBEE78;
  v31[3] = &unk_27A6A8268;
  v31[4] = &v32;
  objc_msgSend_enumerateObjectsUsingBlock_(columns, a2, v5, v6, v7, v8, v31, v2, v3, v4);
  if (*(v33 + 24) == 1)
  {
    objc_msgSend_setNeedsInflation(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
    objc_msgSend_invalidateSize(self, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    v29 = *(v33 + 24);
  }

  else
  {
    v29 = 0;
  }

  _Block_object_dispose(&v32, 8);
  return v29 & 1;
}

- (BOOL)textIsVertical
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_laysOutVertically(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (id)pageController
{
  v10 = objc_msgSend_pageLayout(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_info(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_pageController(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

  return v30;
}

@end