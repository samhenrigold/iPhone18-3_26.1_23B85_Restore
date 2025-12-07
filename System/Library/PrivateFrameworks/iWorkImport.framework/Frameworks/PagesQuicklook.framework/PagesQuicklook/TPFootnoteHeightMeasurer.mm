@interface TPFootnoteHeightMeasurer
- (BOOL)canHaveFootnotesFromPreviousTarget:(id)target;
- (BOOL)footnoteContainerFitsForTarget:(id)target;
- (BOOL)footnoteContainerIsOnSamePageAsTarget:(id)target;
- (TPFootnoteHeightMeasurer)initWithFootnoteMarkProvider:(id)provider documentRoot:(id)root pageDelegate:(id)delegate maxFootnoteLineWidth:(double)width maxFootnoteBlockHeight:(double)height vertical:(BOOL)vertical footnoteSpacing:(double)spacing;
- (double)footnoteBlockHeightForTarget:(id)target;
- (id)documentRoot;
- (void)addFootnoteReferenceStorage:(id)storage;
- (void)removeAllFootnoteReferenceStorages;
- (void)removeFootnoteReferenceStorage:(id)storage;
- (void)setContainerLineWidth:(double)width;
- (void)setFootnoteSpacing:(int64_t)spacing;
- (void)tearDown;
@end

@implementation TPFootnoteHeightMeasurer

- (TPFootnoteHeightMeasurer)initWithFootnoteMarkProvider:(id)provider documentRoot:(id)root pageDelegate:(id)delegate maxFootnoteLineWidth:(double)width maxFootnoteBlockHeight:(double)height vertical:(BOOL)vertical footnoteSpacing:(double)spacing
{
  verticalCopy = vertical;
  v148[1] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  rootCopy = root;
  delegateCopy = delegate;
  v147.receiver = self;
  v147.super_class = TPFootnoteHeightMeasurer;
  v23 = [(TPFootnoteHeightMeasurer *)&v147 init];
  if (providerCopy)
  {
    if (delegateCopy)
    {
      goto LABEL_3;
    }

LABEL_7:
    v122 = MEMORY[0x277D81150];
    v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v24, v25, v26, v27, "[TPFootnoteHeightMeasurer initWithFootnoteMarkProvider:documentRoot:pageDelegate:maxFootnoteLineWidth:maxFootnoteBlockHeight:vertical:footnoteSpacing:]", v20, v21, v22);
    v132 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, v128, v129, v130, v131, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteHeightMeasurer.m", v125, v126, v127);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v122, v133, v134, v135, v136, v137, v123, v132, 45, 0, "invalid nil value for '%{public}s'", "pageDelegate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v138, v143, v144, v145, v146, v139, v140, v141, v142);
    if (!v23)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v97 = MEMORY[0x277D81150];
  v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v24, v25, v26, v27, "[TPFootnoteHeightMeasurer initWithFootnoteMarkProvider:documentRoot:pageDelegate:maxFootnoteLineWidth:maxFootnoteBlockHeight:vertical:footnoteSpacing:]", v20, v21, v22);
  v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v99, v103, v104, v105, v106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteHeightMeasurer.m", v100, v101, v102);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v97, v108, v109, v110, v111, v112, v98, v107, 44, 0, "invalid nil value for '%{public}s'", "footnoteMarkProvider");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v113, v118, v119, v120, v121, v114, v115, v116, v117);
  if (!delegateCopy)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v23)
  {
LABEL_4:
    v28 = [TPFootnoteContainerLayout alloc];
    v29.n128_f64[0] = width;
    v30.n128_f64[0] = height;
    v31.n128_f64[0] = spacing;
    v36 = objc_msgSend_initWithFootnoteMarkProvider_vertical_lineWidth_maxFootnoteBlockHeight_footnoteSpacing_(v28, v32, v29, v30, v31, v35, providerCopy, verticalCopy, v33, v34);
    footnoteContainerLayout = v23->_footnoteContainerLayout;
    v23->_footnoteContainerLayout = v36;

    objc_storeWeak(&v23->_documentRoot, rootCopy);
    v38 = objc_alloc(MEMORY[0x277D801E0]);
    v39 = objc_opt_class();
    v47 = objc_msgSend_initWithLayoutControllerClass_delegate_(v38, v40, v43, v44, v45, v46, v39, v23, v41, v42);
    canvas = v23->_canvas;
    v23->_canvas = v47;

    v58 = objc_msgSend_layoutController(v23->_canvas, v49, v54, v55, v56, v57, v50, v51, v52, v53);
    v68 = objc_msgSend_rootLayout(v58, v59, v64, v65, v66, v67, v60, v61, v62, v63);
    v148[0] = v23->_footnoteContainerLayout;
    v76 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v69, v72, v73, v74, v75, v148, 1, v70, v71);
    objc_msgSend_setChildren_(v68, v77, v81, v82, v83, v84, v76, v78, v79, v80);

    v85 = objc_alloc(MEMORY[0x277D81218]);
    v94 = objc_msgSend_initWithMaxSize_(v85, v86, v90, v91, v92, v93, 5, v87, v88, v89);
    footnoteLayoutCache = v23->_footnoteLayoutCache;
    v23->_footnoteLayoutCache = v94;

    objc_storeWeak(&v23->_pageDelegate, delegateCopy);
  }

LABEL_5:

  return v23;
}

- (void)tearDown
{
  v11 = objc_msgSend_layoutController(self->_canvas, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_rootLayout(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  objc_msgSend_setChildren_(v21, v22, v26, v27, v28, v29, MEMORY[0x277CBEBF8], v23, v24, v25);

  canvas = self->_canvas;

  objc_msgSend_teardown(canvas, v30, v35, v36, v37, v38, v31, v32, v33, v34);
}

- (void)addFootnoteReferenceStorage:(id)storage
{
  v107 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  if (!storageCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v9, v10, v11, v12, "[TPFootnoteHeightMeasurer addFootnoteReferenceStorage:]", v5, v6, v7);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteHeightMeasurer.m", v16, v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v24, v25, v26, v27, v28, v14, v23, 85, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v34, v35, v36, v37, v30, v31, v32, v33);
  }

  v38 = objc_msgSend_objectForKey_(self->_footnoteLayoutCache, v4, v9, v10, v11, v12, storageCopy, v5, v6, v7);
  if (v38)
  {
    v48 = v38;
    objc_msgSend_addFootnoteLayout_(self->_footnoteContainerLayout, v39, v44, v45, v46, v47, v38, v41, v42, v43);
    v49 = objc_alloc_init(MEMORY[0x277CBEB58]);
    objc_msgSend_recursivelyAddLayoutAndChildrenToSet_(v48, v50, v54, v55, v56, v57, v49, v51, v52, v53);
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v58 = v49;
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, v61, v62, v63, v64, &v102, v106, 16, v60);
    if (v65)
    {
      v75 = v65;
      v76 = *v103;
      do
      {
        for (i = 0; i != v75; ++i)
        {
          if (*v103 != v76)
          {
            objc_enumerationMutation(v58);
          }

          objc_msgSend_invalidateChildren(*(*(&v102 + 1) + 8 * i), v66, v71, v72, v73, v74, v67, v68, v69, v70);
        }

        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v66, v71, v72, v73, v74, &v102, v106, 16, v70);
      }

      while (v75);
    }
  }

  else
  {
    v78 = objc_alloc(objc_msgSend_layoutClass(storageCopy, v39, v44, v45, v46, v47, v40, v41, v42, v43));
    v48 = objc_msgSend_initWithInfo_(v78, v79, v83, v84, v85, v86, storageCopy, v80, v81, v82);
    objc_msgSend_setObject_forKey_(self->_footnoteLayoutCache, v87, v90, v91, v92, v93, v48, storageCopy, v88, v89);
    objc_msgSend_addFootnoteLayout_(self->_footnoteContainerLayout, v94, v98, v99, v100, v101, v48, v95, v96, v97);
  }
}

- (void)removeFootnoteReferenceStorage:(id)storage
{
  storageCopy = storage;
  v45 = storageCopy;
  if (!storageCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, v8, v9, v10, v11, "[TPFootnoteHeightMeasurer removeFootnoteReferenceStorage:]", v5, v6, v7);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteHeightMeasurer.m", v15, v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v23, v24, v25, v26, v27, v13, v22, 111, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v33, v34, v35, v36, v29, v30, v31, v32);
    storageCopy = 0;
  }

  objc_msgSend_removeObjectForKey_(self->_footnoteLayoutCache, storageCopy, v8, v9, v10, v11, storageCopy, v5, v6, v7);
  objc_msgSend_removeFootnoteLayoutWithInfo_(self->_footnoteContainerLayout, v37, v41, v42, v43, v44, v45, v38, v39, v40);
}

- (void)removeAllFootnoteReferenceStorages
{
  objc_msgSend_isEmpty(self->_footnoteContainerLayout, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  footnoteContainerLayout = self->_footnoteContainerLayout;

  objc_msgSend_removeAllFootnoteLayouts(footnoteContainerLayout, v11, v16, v17, v18, v19, v12, v13, v14, v15);
}

- (BOOL)canHaveFootnotesFromPreviousTarget:(id)target
{
  targetCopy = target;
  WeakRetained = objc_loadWeakRetained(&self->_pageDelegate);
  HaveFootnotesFromPreviousTarget = objc_msgSend_canHaveFootnotesFromPreviousTarget_(WeakRetained, v6, v10, v11, v12, v13, targetCopy, v7, v8, v9);

  return HaveFootnotesFromPreviousTarget;
}

- (BOOL)footnoteContainerIsOnSamePageAsTarget:(id)target
{
  targetCopy = target;
  WeakRetained = objc_loadWeakRetained(&self->_pageDelegate);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_pageDelegate);
    isFootnoteContainerOnSamePageAsTarget = objc_msgSend_isFootnoteContainerOnSamePageAsTarget_(v6, v7, v11, v12, v13, v14, targetCopy, v8, v9, v10);
  }

  else
  {
    isFootnoteContainerOnSamePageAsTarget = 1;
  }

  return isFootnoteContainerOnSamePageAsTarget;
}

- (BOOL)footnoteContainerFitsForTarget:(id)target
{
  targetCopy = target;
  footnoteContainerLayout = self->_footnoteContainerLayout;
  if (footnoteContainerLayout && (objc_msgSend_isEmpty(footnoteContainerLayout, v4, v10, v11, v12, v13, v5, v6, v7, v8) & 1) == 0)
  {
    v25 = objc_msgSend_layoutController(self->_canvas, v15, v20, v21, v22, v23, v16, v17, v18, v19);
    objc_msgSend_validateLayoutWithDependencies_(v25, v26, v30, v31, v32, v33, self->_footnoteContainerLayout, v27, v28, v29);

    objc_msgSend_blockHeight(self->_footnoteContainerLayout, v34, v39, v40, v41, v42, v35, v36, v37, v38);
    v44 = v43.n128_f64[0];
    objc_msgSend_maxBlockHeight(self->_footnoteContainerLayout, v45, v43, v50, v51, v52, v46, v47, v48, v49);
    v24 = v44 <= v53;
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

- (void)setContainerLineWidth:(double)width
{
  objc_msgSend_setLineWidth_(self->_footnoteContainerLayout, a2, *&width, v7, v8, v9, v3, v4, v5, v6);

  MEMORY[0x2821F9670](self, sel_p_clearFootnoteLayoutCache, v11, v12, v13, v14);
}

- (void)setFootnoteSpacing:(int64_t)spacing
{
  objc_msgSend_setFootnoteSpacing_(self->_footnoteContainerLayout, a2, v6, v7, v8, v9, spacing, v3, v4, v5);

  MEMORY[0x2821F9670](self, sel_p_clearFootnoteLayoutCache, v11, v12, v13, v14);
}

- (id)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

- (double)footnoteBlockHeightForTarget:(id)target
{
  targetCopy = target;
  footnoteContainerLayout = self->_footnoteContainerLayout;
  v15 = 0.0;
  if (footnoteContainerLayout)
  {
    if ((objc_msgSend_isEmpty(footnoteContainerLayout, v4, v10, v11, v12, v13, v5, v6, v7, v8) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_pageDelegate);
      isFootnoteContainerOnSamePageAsTarget = objc_msgSend_isFootnoteContainerOnSamePageAsTarget_(WeakRetained, v17, v21, v22, v23, v24, targetCopy, v18, v19, v20);

      if (isFootnoteContainerOnSamePageAsTarget)
      {
        v27 = objc_msgSend_layoutController(self->_canvas, v4, v10, v11, v12, v13, v26, v6, v7, v8);
        objc_msgSend_validateLayoutWithDependencies_(v27, v28, v32, v33, v34, v35, self->_footnoteContainerLayout, v29, v30, v31);

        objc_msgSend_blockHeight(self->_footnoteContainerLayout, v36, v41, v42, v43, v44, v37, v38, v39, v40);
        v15 = v10.n128_f64[0];
      }
    }
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v45 = 0x7FEFFFFFFFFFFFFFLL;
    v10.n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
    if (v15 > 0.0 && v15 > 1.79769313e308)
    {
      v49 = "Out-of-bounds type assignment was clamped to max";
LABEL_17:
      v15 = *&v45;
      v50 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v10, v11, v12, v13, "[TPFootnoteHeightMeasurer footnoteBlockHeightForTarget:]", v6, v7, v8);
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFootnoteHeightMeasurer.m", v53, v54, v55);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v61, v62, v63, v64, v65, v51, v60, 139, 0, v49);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v71, v72, v73, v74, v67, v68, v69, v70);
      goto LABEL_15;
    }

    v45 = 0xFFEFFFFFFFFFFFFFLL;
    v10.n128_u64[0] = 0xFFEFFFFFFFFFFFFFLL;
    if (v15 < 0.0 && v15 < -1.79769313e308)
    {
      v49 = "Out-of-bounds type assignment was clamped to min";
      goto LABEL_17;
    }
  }

LABEL_15:

  return v15;
}

@end