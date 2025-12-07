@interface TPPageRep
- (BOOL)childRepIsMasterDrawable:(id)drawable;
- (BOOL)childRepIsOnDocSetupCanvas:(id)canvas;
- (BOOL)directlyManagesLayerContent;
- (BOOL)isOpaque;
- (BOOL)p_pageRequiresHorizontalSeparator;
- (id)backgroundFill;
- (id)bodyReps;
- (id)colorBehindBodyTextLayer:(id)layer;
- (id)parentRepForMagnification;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)willBeRemoved;
@end

@implementation TPPageRep

- (void)dealloc
{
  if (self->_horizontalSeparatorLayer)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v5, v6, v7, v8, "[TPPageRep dealloc]", v2, v3, v4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageRep.m", v13, v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 125, 0, "child layers must already be cleared");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v31, v32, v33, v34, v27, v28, v29, v30);
  }

  v35.receiver = self;
  v35.super_class = TPPageRep;
  [(TSDRep *)&v35 dealloc];
}

- (id)backgroundFill
{
  v11 = objc_msgSend_canvas(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);

  if (shouldSuppressBackgrounds)
  {
    v31 = 0;
  }

  else
  {
    v32 = objc_msgSend_layout(self, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v31 = objc_msgSend_backgroundFill(v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  }

  return v31;
}

- (BOOL)isOpaque
{
  v10 = objc_msgSend_backgroundFill(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  isOpaque = objc_msgSend_isOpaque(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return isOpaque;
}

- (id)colorBehindBodyTextLayer:(id)layer
{
  v10 = objc_msgSend_layout(self, a2, v6, v7, v8, v9, layer, v3, v4, v5);
  v20 = objc_msgSend_backgroundFill(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  if (v20)
  {
    v30 = objc_msgSend_backgroundFill(v10, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v40 = objc_msgSend_referenceColor(v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  }

  else
  {
    v41 = objc_msgSend_sectionTemplateDrawableProvider(v10, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v51 = objc_msgSend_countOfSectionTemplateDrawables(v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);

    if (v51)
    {
      v40 = 0;
    }

    else
    {
      v40 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v52, v57, v58, v59, v60, v53, v54, v55, v56);
    }
  }

  return v40;
}

- (void)willBeRemoved
{
  v5.receiver = self;
  v5.super_class = TPPageRep;
  [(TSDRep *)&v5 willBeRemoved];
  horizontalSeparatorLayer = self->_horizontalSeparatorLayer;
  self->_horizontalSeparatorLayer = 0;

  verticalSeparatorLayer = self->_verticalSeparatorLayer;
  self->_verticalSeparatorLayer = 0;
}

- (BOOL)childRepIsOnDocSetupCanvas:(id)canvas
{
  v10 = objc_msgSend_info(self, a2, v6, v7, v8, v9, canvas, v3, v4, v5);
  isDocumentSetupPage = objc_msgSend_isDocumentSetupPage(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return isDocumentSetupPage;
}

- (BOOL)childRepIsMasterDrawable:(id)drawable
{
  drawableCopy = drawable;
  v14 = objc_msgSend_layout(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v24 = objc_msgSend_info(drawableCopy, v15, v20, v21, v22, v23, v16, v17, v18, v19);

  objc_opt_class();
  v25 = TSDTopmostInfoFromInfo();
  v26 = TSUDynamicCast();

  if (v24)
  {
    v36 = objc_msgSend_sectionTemplateDrawableProvider(v14, v27, v32, v33, v34, v35, v28, v29, v30, v31);
    v46 = objc_msgSend_sectionTemplateDrawables(v36, v37, v42, v43, v44, v45, v38, v39, v40, v41);
    v55 = objc_msgSend_containsObject_(v46, v47, v51, v52, v53, v54, v26, v48, v49, v50);
  }

  else
  {
    v55 = 0;
  }

  return v55;
}

- (BOOL)p_pageRequiresHorizontalSeparator
{
  objc_opt_class();
  v12 = objc_msgSend_info(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v22 = objc_msgSend_pageController(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v23 = TSUCheckedDynamicCast();

  v33 = objc_msgSend_layout(self, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  v43 = objc_msgSend_geometry(v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);
  objc_msgSend_frame(v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);
  if (v59.n128_f64[0] <= 0.0)
  {
    v81 = 0;
  }

  else
  {
    v62 = objc_msgSend_info(self, v53, v58, v59, v60, v61, v54, v55, v56, v57);
    if (objc_msgSend_isDocumentSetupPage(v62, v63, v68, v69, v70, v71, v64, v65, v66, v67))
    {
      v81 = 0;
    }

    else
    {
      objc_msgSend_verticalPageSeparation(v23, v72, v77, v78, v79, v80, v73, v74, v75, v76);
      v81 = v82 == 0.0;
    }
  }

  return v81;
}

- (BOOL)directlyManagesLayerContent
{
  if (self->_fillCanApplyToCALayer)
  {
    return 1;
  }

  v11 = objc_msgSend_backgroundFill(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v10 = v11 == 0;

  return v10;
}

- (void)drawInContext:(CGContext *)context
{
  v12 = objc_msgSend_backgroundFill(self, a2, v6, v7, v8, v9, context, v3, v4, v5);
  if (v12)
  {
    v30 = v12;
    Mutable = CGPathCreateMutable();
    objc_msgSend_naturalBounds(self, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    CGPathAddRectSafe();
    objc_msgSend_paintPath_inContext_(v30, v23, v26, v27, v28, v29, Mutable, context, v24, v25);
    CGPathRelease(Mutable);
    v12 = v30;
  }
}

- (id)bodyReps
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_childReps(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_275FCCCD8;
  v24[3] = &unk_27A6A8468;
  v14 = v3;
  v25 = v14;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v15, v19, v20, v21, v22, v24, v16, v17, v18);

  return v14;
}

- (id)parentRepForMagnification
{
  v10 = objc_msgSend_bodyReps(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_tsu_onlyObject(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

@end