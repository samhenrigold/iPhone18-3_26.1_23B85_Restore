@interface TPFootnoteContainerLayout
- (BOOL)isEmpty;
- (CGRect)autosizedFrameForTextLayout:(id)layout textSize:(CGSize)size;
- (CGRect)footnoteSeparatorLineFrame;
- (CGRect)nonAutosizedFrameForTextLayout:(id)layout;
- (TPFootnoteContainerLayout)initWithFootnoteMarkProvider:(id)provider vertical:(BOOL)vertical lineWidth:(double)width maxFootnoteBlockHeight:(double)height footnoteSpacing:(double)spacing;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)target;
- (double)blockHeight;
- (double)maxAutoGrowBlockHeightForTextLayout:(id)layout;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width target:(id)target outWidth:(double *)outWidth outGap:(double *)gap;
- (id)computeLayoutGeometry;
- (id)dependentsOfTextLayout:(id)layout;
- (id)markStringForFootnoteReferenceStorage:(id)storage;
- (id)markStringForFootnoteReferenceStorage:(id)storage ignoreDeletedFootnotes:(BOOL)footnotes forceDocumentEndnotes:(BOOL)endnotes;
- (void)addFootnoteLayout:(id)layout;
- (void)removeAllFootnoteLayouts;
- (void)removeFootnoteLayout:(id)layout;
- (void)removeFootnoteLayoutWithInfo:(id)info;
- (void)setFootnoteSpacing:(int64_t)spacing;
- (void)setIncludeFootnoteSeparatorLine:(BOOL)line;
- (void)trimFootnoteLayoutsFromIndex:(unint64_t)index;
- (void)validate;
@end

@implementation TPFootnoteContainerLayout

- (TPFootnoteContainerLayout)initWithFootnoteMarkProvider:(id)provider vertical:(BOOL)vertical lineWidth:(double)width maxFootnoteBlockHeight:(double)height footnoteSpacing:(double)spacing
{
  providerCopy = provider;
  v13 = objc_alloc_init(TPFootnoteContainerInfo);
  v49.receiver = self;
  v49.super_class = TPFootnoteContainerLayout;
  v18 = [(TPFootnoteContainerLayout *)&v49 initWithInfo:v13];
  if (v18)
  {
    if (!providerCopy)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v19, v20, v21, v22, "[TPFootnoteContainerLayout initWithFootnoteMarkProvider:vertical:lineWidth:maxFootnoteBlockHeight:footnoteSpacing:]", v15, v16, v17);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerLayout.m", v26, v27, v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v34, v35, v36, v37, v38, v24, v33, 48, 0, "invalid nil value for '%{public}s'", "footnoteMarkProvider");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v44, v45, v46, v47, v40, v41, v42, v43);
    }

    v18->_vertical = vertical;
    v18->_lineWidth = width;
    v18->_maxFootnoteBlockHeight = height;
    v18->_footnoteSpacing = spacing;
    v18->_includeFootnoteSeparatorLine = 1;
    objc_storeWeak(&v18->_footnoteMarkProvider, providerCopy);
  }

  return v18;
}

- (void)addFootnoteLayout:(id)layout
{
  layoutCopy = layout;
  v14 = objc_msgSend_children(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v23 = objc_msgSend_containsObject_(v14, v15, v19, v20, v21, v22, layoutCopy, v16, v17, v18);

  if (v23)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v28, v29, v30, v31, "[TPFootnoteContainerLayout addFootnoteLayout:]", v25, v26, v27);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerLayout.m", v35, v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v43, v44, v45, v46, v47, v33, v42, 63, 0, "Footnote container layout already has this footnote layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v53, v54, v55, v56, v49, v50, v51, v52);
  }

  else
  {
    v66.receiver = self;
    v66.super_class = TPFootnoteContainerLayout;
    [(TPFootnoteContainerLayout *)&v66 addChild:layoutCopy];
    objc_msgSend_invalidateSize(self, v57, v62, v63, v64, v65, v58, v59, v60, v61);
  }
}

- (void)removeFootnoteLayout:(id)layout
{
  layoutCopy = layout;
  v13 = objc_msgSend_children(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v22 = objc_msgSend_containsObject_(v13, v14, v18, v19, v20, v21, layoutCopy, v15, v16, v17);

  if (v22)
  {
    objc_msgSend_removeFromParent(layoutCopy, v23, v28, v29, v30, v31, v24, v25, v26, v27);
    objc_msgSend_invalidateSize(self, v32, v37, v38, v39, v40, v33, v34, v35, v36);
  }

  else
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v28, v29, v30, v31, "[TPFootnoteContainerLayout removeFootnoteLayout:]", v25, v26, v27);
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerLayout.m", v44, v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v52, v53, v54, v55, v56, v42, v51, 92, 0, "Footnote container layout doesn't have this footnote layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v62, v63, v64, v65, v58, v59, v60, v61);
  }
}

- (void)removeFootnoteLayoutWithInfo:(id)info
{
  v49 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = objc_msgSend_children(self, v5, 0, v10, v11, v12, v6, v7, v8, v9, 0);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v16, v17, v18, v19, &v44, v48, 16, v15);
  if (v20)
  {
    v30 = v20;
    v31 = *v45;
LABEL_3:
    v32 = 0;
    while (1)
    {
      if (*v45 != v31)
      {
        objc_enumerationMutation(v13);
      }

      v33 = *(*(&v44 + 1) + 8 * v32);
      v34 = objc_msgSend_info(v33, v21, v26, v27, v28, v29, v22, v23, v24, v25);

      if (v34 == infoCopy)
      {
        break;
      }

      if (v30 == ++v32)
      {
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v21, v26, v27, v28, v29, &v44, v48, 16, v25);
        if (v30)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v35 = v33;

    if (!v35)
    {
      goto LABEL_13;
    }

    objc_msgSend_removeFootnoteLayout_(self, v36, v40, v41, v42, v43, v35, v37, v38, v39);
    v13 = v35;
  }

LABEL_12:

LABEL_13:
}

- (void)removeAllFootnoteLayouts
{
  if ((objc_msgSend_isEmpty(self, a2, v6, v7, v8, v9, v2, v3, v4, v5) & 1) == 0)
  {
    objc_msgSend_setChildren_(self, v11, v15, v16, v17, v18, MEMORY[0x277CBEBF8], v12, v13, v14);

    objc_msgSend_invalidateSize(self, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  }
}

- (void)setFootnoteSpacing:(int64_t)spacing
{
  v6.n128_f64[0] = spacing;
  self->_footnoteSpacing = spacing;
  objc_msgSend_invalidateFrame(self, a2, v6, v7, v8, v9, spacing, v3, v4, v5);
}

- (void)trimFootnoteLayoutsFromIndex:(unint64_t)index
{
  v40 = objc_msgSend_children(self, a2, v6, v7, v8, v9, index, v3, v4, v5);
  v21 = objc_msgSend_count(v40, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  if (v21 > index)
  {
    v30 = v21;
    do
    {
      v31 = objc_msgSend_objectAtIndexedSubscript_(v40, v22, v26, v27, v28, v29, --v30, v23, v24, v25);
      objc_msgSend_removeFootnoteLayout_(self, v32, v36, v37, v38, v39, v31, v33, v34, v35);
    }

    while (v30 > index);
  }
}

- (BOOL)isEmpty
{
  v10 = objc_msgSend_children(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_count(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15) == 0;

  return v20;
}

- (double)blockHeight
{
  if (objc_msgSend_isEmpty(self, a2, v6, v7, v8, v9, v2, v3, v4, v5))
  {
    return 0.0;
  }

  vertical = self->_vertical;
  objc_msgSend_frame(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  if (vertical)
  {

    return CGRectGetWidth(*&v22);
  }

  else
  {

    return CGRectGetHeight(*&v22);
  }
}

- (void)setIncludeFootnoteSeparatorLine:(BOOL)line
{
  if (self->_includeFootnoteSeparatorLine != line)
  {
    self->_includeFootnoteSeparatorLine = line;
    objc_msgSend_invalidateSize(self, a2, v6, v7, v8, v9, line, v3, v4, v5);
  }
}

- (CGRect)footnoteSeparatorLineFrame
{
  if (self->_includeFootnoteSeparatorLine)
  {
    if (self->_vertical)
    {
      v10 = objc_msgSend_geometry(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
      objc_msgSend_frame(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
      v21 = v20;
      v23 = v22;

      v24 = v21 + -8.0;
      v25 = 0.0;
      v26 = 0.0;
      v27 = v23 / 3.0;
    }

    else
    {
      v26 = 8.0;
      v27 = 0.0;
      v25 = 100.0;
      v24 = 0.0;
    }
  }

  else
  {
    v24 = *MEMORY[0x277CBF398];
    v26 = *(MEMORY[0x277CBF398] + 8);
    v25 = *(MEMORY[0x277CBF398] + 16);
    v27 = *(MEMORY[0x277CBF398] + 24);
  }

  result.size.height = v27;
  result.size.width = v25;
  result.origin.y = v26;
  result.origin.x = v24;
  return result;
}

- (void)validate
{
  v148 = *MEMORY[0x277D85DE8];
  if (self->_vertical)
  {
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v10 = objc_msgSend_children(self, a2, 0, v6, v7, v8, v2, v3, v4, v5);
    v20 = objc_msgSend_reverseObjectEnumerator(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, v23, v24, v25, v26, &v142, v147, 16, v22);
    if (v27)
    {
      v37 = v27;
      v38 = *v143;
      v39 = 0.0;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v143 != v38)
          {
            objc_enumerationMutation(v20);
          }

          v41 = *(*(&v142 + 1) + 8 * i);
          v42 = objc_msgSend_geometry(v41, v28, v33, v34, v35, v36, v29, v30, v31, v32);
          v52 = objc_msgSend_mutableCopy(v42, v43, v48, v49, v50, v51, v44, v45, v46, v47);

          CGAffineTransformMakeTranslation(&v141, v39, 0.0);
          v140 = v141;
          objc_msgSend_setTransform_(v52, v53, *&v141.tx, *&v141.c, v57, v58, &v140, v54, v55, v56);
          objc_msgSend_setGeometry_(v41, v59, v63, v64, v65, v66, v52, v60, v61, v62);
          objc_msgSend_size(v52, v67, v72, v73, v74, v75, v68, v69, v70, v71);
          v39 = v39 + v76 + self->_footnoteSpacing;
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v28, v33, v34, v35, v36, &v142, v147, 16, v32);
      }

      while (v37);
    }
  }

  else
  {
    includeFootnoteSeparatorLine = self->_includeFootnoteSeparatorLine;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v20 = objc_msgSend_children(self, a2, 0, v6, v7, v8, v2, v3, v4, v5);
    v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v78, v80, v81, v82, v83, &v136, v146, 16, v79);
    if (v84)
    {
      v94 = v84;
      v90.n128_u64[0] = 0;
      v91.n128_u64[0] = 16.0;
      if (includeFootnoteSeparatorLine)
      {
        v95 = 16.0;
      }

      else
      {
        v95 = 0.0;
      }

      v96 = *v137;
      do
      {
        for (j = 0; j != v94; ++j)
        {
          if (*v137 != v96)
          {
            objc_enumerationMutation(v20);
          }

          v98 = *(*(&v136 + 1) + 8 * j);
          v99 = objc_msgSend_geometry(v98, v85, v90, v91, v92, v93, v86, v87, v88, v89);
          v109 = objc_msgSend_mutableCopy(v99, v100, v105, v106, v107, v108, v101, v102, v103, v104);

          CGAffineTransformMakeTranslation(&v135, 0.0, v95);
          v140 = v135;
          objc_msgSend_setTransform_(v109, v110, *&v135.tx, *&v135.c, v114, v115, &v140, v111, v112, v113);
          objc_msgSend_setGeometry_(v98, v116, v120, v121, v122, v123, v109, v117, v118, v119);
          objc_msgSend_size(v109, v124, v129, v130, v131, v132, v125, v126, v127, v128);
          v95 = v95 + v133 + self->_footnoteSpacing;
        }

        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v85, v90, v91, v92, v93, &v136, v146, 16, v89);
      }

      while (v94);
    }
  }

  v134.receiver = self;
  v134.super_class = TPFootnoteContainerLayout;
  [(TPFootnoteContainerLayout *)&v134 validate];
}

- (id)computeLayoutGeometry
{
  v7.n128_u64[0] = 1.0;
  if (self->_vertical)
  {
    lineWidth = self->_lineWidth;
  }

  else
  {
    lineWidth = 1.0;
  }

  if (self->_vertical)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = self->_lineWidth;
  }

  v6.n128_u64[0] = *&self->_lineWidth;
  if ((objc_msgSend_isEmpty(self, a2, v6, v7, v8, v9, v2, v3, v4, v5) & 1) == 0)
  {
    vertical = self->_vertical;
    v23 = objc_msgSend_children(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
    v33 = v23;
    if (vertical)
    {
      v34 = objc_msgSend_firstObject(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);

      objc_msgSend_frame(v34, v35, v40, v41, v42, v43, v36, v37, v38, v39);
      MaxX = CGRectGetMaxX(v92);
      if (self->_includeFootnoteSeparatorLine)
      {
        v12 = MaxX + 16.0;
      }

      else
      {
        v12 = MaxX;
      }
    }

    else
    {
      v34 = objc_msgSend_lastObject(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);

      objc_msgSend_frame(v34, v45, v50, v51, v52, v53, v46, v47, v48, v49);
      lineWidth = CGRectGetMaxY(v93);
    }
  }

  if (self->_vertical)
  {
    v18.n128_f64[0] = v12;
  }

  else
  {
    v18.n128_f64[0] = lineWidth;
  }

  if (v18.n128_f64[0] <= 0.0)
  {
    v54 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v18, v19, v20, v21, "[TPFootnoteContainerLayout computeLayoutGeometry]", v15, v16, v17);
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteContainerLayout.m", v57, v58, v59);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v65, v66, v67, v68, v69, v55, v64, 250, 0, "Can't have a layout with zero height");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v75, v76, v77, v78, v71, v72, v73, v74);
  }

  v79 = objc_alloc(MEMORY[0x277D80300]);
  v80.n128_u64[0] = 0;
  v81.n128_u64[0] = 0;
  v82.n128_f64[0] = v12;
  v83.n128_f64[0] = lineWidth;
  v89 = objc_msgSend_initWithFrame_(v79, v84, v80, v81, v82, v83, v85, v86, v87, v88);

  return v89;
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
  lineWidth = self->_lineWidth;
  if (self->_vertical)
  {
    width = size.width;
  }

  else
  {
    width = self->_lineWidth;
  }

  if (!self->_vertical)
  {
    lineWidth = size.height;
  }

  v6 = 0.0;
  v7 = 0.0;
  result.size.height = lineWidth;
  result.size.width = width;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)dependentsOfTextLayout:(id)layout
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = self;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, v6, v7, v8, v11, 1, v3, v4);

  return v9;
}

- (double)maxAutoGrowBlockHeightForTextLayout:(id)layout
{
  result = self->_maxFootnoteBlockHeight;
  if (self->_includeFootnoteSeparatorLine)
  {
    return result + -16.0;
  }

  return result;
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

- (id)markStringForFootnoteReferenceStorage:(id)storage
{
  storageCopy = storage;
  WeakRetained = objc_loadWeakRetained(&self->_footnoteMarkProvider);
  v14 = objc_msgSend_markStringForFootnoteReferenceStorage_(WeakRetained, v6, v10, v11, v12, v13, storageCopy, v7, v8, v9);

  return v14;
}

- (id)markStringForFootnoteReferenceStorage:(id)storage ignoreDeletedFootnotes:(BOOL)footnotes forceDocumentEndnotes:(BOOL)endnotes
{
  endnotesCopy = endnotes;
  footnotesCopy = footnotes;
  storageCopy = storage;
  WeakRetained = objc_loadWeakRetained(&self->_footnoteMarkProvider);
  v16 = objc_msgSend_markStringForFootnoteReferenceStorage_ignoreDeletedFootnotes_forceDocumentEndnotes_(WeakRetained, v10, v12, v13, v14, v15, storageCopy, footnotesCopy, endnotesCopy, v11);

  return v16;
}

@end