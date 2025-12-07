@interface TSCHChartTitleRenderer
+ (id)defaultParagraphStyleForCenteredTitleEllipsisWithChartInfo:(id)info originalParagraphStyle:(id)style scaleTextPercent:(double)percent titleRootedLayoutRect:(CGRect)rect;
- (BOOL)canEditTextForSelectionPath:(id)path;
- (BOOL)canRenderSelectionPath:(id)path;
- (BOOL)shouldPlaceTitleAtCenter;
- (CGRect)frameForEditingTextForSelectionPath:(id)path;
- (CGRect)p_rawFrameForEditingTextForSelectionPath:(id)path;
- (id)textLayoutPropertiesWithWrapWidth:(double)width;
- (void)addSelection:(id)selection toCGPath:(CGPath *)path useWrapWidth:(BOOL)width;
- (void)p_drawTitle:(CGContext *)title rangePtr:(_NSRange *)ptr;
- (void)renderIntoContext:(CGContext *)context selection:(id)selection;
- (void)useEditedString:(id)string;
@end

@implementation TSCHChartTitleRenderer

- (void)useEditedString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  v9 = objc_msgSend_layoutItem(self, v5, v6, v7, v8);
  v14 = TSUDynamicCast();

  objc_msgSend_setEditedString_(v14, v10, v11, v12, v13, stringCopy);
}

- (void)p_drawTitle:(CGContext *)title rangePtr:(_NSRange *)ptr
{
  objc_opt_class();
  v11 = objc_msgSend_layoutItem(self, v7, v8, v9, v10);
  v12 = TSUDynamicCast();

  v17 = objc_msgSend_layoutItem(self, v13, v14, v15, v16);
  objc_msgSend_rootedLayoutRect(v17, v18, v19, v20, v21);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v32 = *(MEMORY[0x277CBF398] + 16);
  v169.origin = *MEMORY[0x277CBF398];
  v169.size = v32;
  v33 = *MEMORY[0x277CBF3A8];
  v34 = 0.0;
  v168 = *MEMORY[0x277CBF3A8];
  memset(&v167, 0, sizeof(v167));
  if (v12)
  {
    objc_msgSend_transformForRenderingOutElementSize_outClipRect_(v12, 0.0, *&v33, v31);
  }

  v35 = objc_msgSend_titleText(v12, v30, v34, *&v33, v31);
  if (!CGRectIsNull(v169) && objc_msgSend_length(v35, v36, v37, v38, v39))
  {
    CGContextSaveGState(title);
    transform = v167;
    CGContextConcatCTM(title, &transform);
    v44 = objc_msgSend_titleSelectionPath(v12, v40, v41, v42, v43);
    v49 = objc_msgSend_textDrawingFlagForSelectionPath_(self, v45, v46, v47, v48, v44);

    if (v49 != 2)
    {
      if (v49 == 1)
      {
        v54 = objc_msgSend_yellowColor(MEMORY[0x277D81180], v50, v51, v52, v53);
        v59 = objc_msgSend_CGColor(v54, v55, v56, v57, v58);
        CGContextSetFillColorWithColor(title, v59);

        TSURectWithSize();
        v171 = CGRectInset(v170, -3.0, -1.0);
        CGContextFillRect(title, v171);
      }

      v60 = TSDCGContextGetPdfTagger();
      v61 = TSUProtocolCast();

      v163 = v61;
      objc_msgSend_beginChartTitle(v61, v62, v63, v64, v65, &unk_2885C1490);
      CGContextClipToRectSafe();
      v70 = objc_msgSend_chartInfo(self, v66, v67, v68, v69);
      v75 = objc_msgSend_titleParagraphStyleIndex(v12, v71, v72, v73, v74);
      v80 = objc_msgSend_paragraphStyleAtIndex_(v70, v76, v77, v78, v79, v75);
      if (objc_msgSend_shouldPlaceTitleAtCenter(self, v81, v82, v83, v84))
      {
        objc_msgSend_sharedInteriorWrappingText(TSCHText, v85, v86, v87, v88);
      }

      else
      {
        objc_msgSend_sharedText(TSCHText, v85, v86, v87, v88);
      }
      v165 = ;
      v164 = objc_msgSend_textLayoutPropertiesWithWrapWidth_(self, v89, v27, v90, v91);
      memset(&transform, 0, sizeof(transform));
      objc_msgSend_initializeTextLayoutResults(TSCHText, 0.0, v92, v93);
      if (ptr)
      {
        location = ptr->location;
        length = ptr->length;
      }

      else
      {
        length = objc_msgSend_length(v35, v94, v95, v96, v97);
        location = 0;
      }

      objc_msgSend_viewScale(self, v94, v95, v96, v97);
      v101 = v100;
      v105 = objc_msgSend_textStyleProvidingSource(v12, v102, v100, v103, v104);
      objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_range_viewScale_layoutProperties_styleProvidingSource_outTextLayoutResults_(v165, v106, v27, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v35, v80, title, location, length, v164, v101, v105, &transform);

      if (LOBYTE(transform.ty) == 1)
      {
        a = transform.a;
        b = transform.b;
        c = transform.c;
        d = transform.d;
        v115 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v107, v108, v109, v110, @"%C", 8230);
        v120 = objc_msgSend_chartInfo(self, v116, v117, v118, v119);
        v122 = objc_msgSend_defaultParagraphStyleForCenteredTitleEllipsisWithChartInfo_originalParagraphStyle_scaleTextPercent_titleRootedLayoutRect_(TSCHChartTitleRenderer, v121, transform.tx, v23, v25, v120, v80, v27, v29);

        v127 = objc_msgSend_sharedText(TSCHText, v123, v124, v125, v126);
        objc_msgSend_textStyleProvidingSource(v12, v128, v129, v130, v131);
        v132 = v162 = v70;
        objc_msgSend_measureText_paragraphStyle_wrapWidth_checkNumberTemplates_layoutProperties_styleProvidingSource_outErasableFrame_outTextLayoutResults_(v127, v133, v27, v134, v135, v115, v122, 1, 0, v132, 0, 0);
        v137 = v136;

        TSURoundedMaxY();
        if (v138 >= v29 - v137)
        {
          v139 = v29 - v137;
        }

        else
        {
          v139 = v138;
        }

        v172.origin.x = a;
        v172.origin.y = b;
        v172.size.width = c;
        v172.size.height = d;
        IsNull = CGRectIsNull(v172);
        v143 = v29 * 0.5;
        if (IsNull)
        {
          v144 = v29 * 0.5 - v137 * 0.5;
        }

        else
        {
          v144 = v139;
        }

        v145 = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v141, v27, v143, v142);
        v150 = objc_msgSend_length(v115, v146, v147, v148, v149);
        objc_msgSend_viewScale(self, v151, v152, v153, v154);
        v156 = v155;
        v160 = objc_msgSend_textStyleProvidingSource(v12, v157, v155, v158, v159);
        objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_range_viewScale_layoutProperties_styleProvidingSource_outTextLayoutResults_(v127, v161, v27, 0.0, v144, v115, v122, title, 0, v150, v145, v156, v160, 0);

        v70 = v162;
      }

      objc_msgSend_endChartTitle(v163, v107, v108, v109, v110);
    }

    CGContextRestoreGState(title);
  }
}

+ (id)defaultParagraphStyleForCenteredTitleEllipsisWithChartInfo:(id)info originalParagraphStyle:(id)style scaleTextPercent:(double)percent titleRootedLayoutRect:(CGRect)rect
{
  width = rect.size.width;
  styleCopy = style;
  v15 = objc_msgSend_context(info, v10, v11, v12, v13);
  if (!v15)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v16, v17, v18, "+[TSCHChartTitleRenderer defaultParagraphStyleForCenteredTitleEllipsisWithChartInfo:originalParagraphStyle:scaleTextPercent:titleRootedLayoutRect:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartTitleRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 170, 0, "unable to find a object context for editing chart text.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v34 = objc_msgSend_fullyPopulatedStyleFromStyle_context_(TSCHStyleUtilities, v14, v16, v17, v18, styleCopy, v15);
  objc_msgSend_floatValueForProperty_(v34, v35, v36, v37, v38, 17);
  v41 = percent / 100.0 * v40;
  if (v41 >= width * 0.05 * 1.3)
  {
    v41 = width * 0.05 * 1.3;
  }

  objc_msgSend_setCGFloatValue_forProperty_(v34, v39, fmax(v41, 12.0), 12.0, 1.3, 17);
  objc_msgSend_setValue_forProperty_(v34, v42, v43, v44, v45, @"HelveticaNeue", 16);
  objc_msgSend_removeValueForProperty_(v34, v46, v47, v48, v49, 38);
  objc_msgSend_removeValueForProperty_(v34, v50, v51, v52, v53, 40);
  objc_msgSend_setIntValue_forProperty_(v34, v54, v55, v56, v57, 0, 23);
  objc_msgSend_setIntValue_forProperty_(v34, v58, v59, v60, v61, 0, 27);
  objc_msgSend_setIntValue_forProperty_(v34, v62, v63, v64, v65, 0, 19);
  objc_msgSend_setIntValue_forProperty_(v34, v66, v67, v68, v69, 0, 20);
  objc_msgSend_setIntValue_forProperty_(v34, v70, v71, v72, v73, 2, 86);

  return v34;
}

- (BOOL)canRenderSelectionPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  v9 = objc_msgSend_layoutItem(self, v5, v6, v7, v8);
  v10 = TSUDynamicCast();

  v15 = objc_msgSend_titleSelectionPath(v10, v11, v12, v13, v14);
  isEqual = objc_msgSend_isEqual_(pathCopy, v16, v17, v18, v19, v15);

  return isEqual;
}

- (void)renderIntoContext:(CGContext *)context selection:(id)selection
{
  selectionCopy = selection;
  objc_opt_class();
  v11 = objc_msgSend_layoutItem(self, v7, v8, v9, v10);
  v12 = TSUDynamicCast();

  v17 = objc_msgSend_path(selectionCopy, v13, v14, v15, v16);
  v22 = objc_msgSend_titleSelectionPath(v12, v18, v19, v20, v21);
  isEqual = objc_msgSend_isEqual_(v17, v23, v24, v25, v26, v22);

  if (isEqual)
  {
    v36[0] = objc_msgSend_range(selectionCopy, v28, v29, v30, v31);
    v36[1] = v32;
    objc_msgSend_p_drawTitle_rangePtr_(self, v32, v33, v34, v35, context, v36);
  }
}

- (void)addSelection:(id)selection toCGPath:(CGPath *)path useWrapWidth:(BOOL)width
{
  selectionCopy = selection;
  v11 = objc_msgSend_path(selectionCopy, v7, v8, v9, v10);
  if (objc_msgSend_canEditTextForSelectionPath_(self, v12, v13, v14, v15, v11))
  {
    objc_opt_class();
    v20 = objc_msgSend_layoutItem(self, v16, v17, v18, v19);
    v21 = TSUDynamicCast();

    v22 = *(MEMORY[0x277CBF398] + 16);
    v33.origin = *MEMORY[0x277CBF398];
    v33.size = v22;
    v23 = MEMORY[0x277CBF3A8];
    v32 = *MEMORY[0x277CBF3A8];
    v26 = objc_msgSend_range(selectionCopy, v24, 0.0, *&v32, v25, 0, 0, 0, 0, 0, 0);
    if (v21)
    {
      objc_msgSend_searchSelectionTransformForRenderingRange_outElementSize_outClipRect_(v21, v28, v29, v30, v27, v26, v27, &v32, &v33);
    }

    if (!CGRectIsNull(v33) && (*v23 != *&v32 || v23[1] != *(&v32 + 1)))
    {
      TSURectWithSize();
      CGPathAddRectSafe();
    }
  }
}

- (CGRect)p_rawFrameForEditingTextForSelectionPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  v9 = objc_msgSend_layoutItem(self, v5, v6, v7, v8);
  v10 = TSUDynamicCast();

  v15 = objc_msgSend_titleSelectionPath(v10, v11, v12, v13, v14);
  isEqual = objc_msgSend_isEqual_(pathCopy, v16, v17, v18, v19, v15);

  if (isEqual)
  {
    v22 = *(MEMORY[0x277CBF398] + 16);
    v39.origin = *MEMORY[0x277CBF398];
    v39.size = v22;
    v23 = *MEMORY[0x277CBF3A8];
    v38 = *MEMORY[0x277CBF3A8];
    memset(&v37[1], 0, 48);
    if (v10)
    {
      objc_msgSend_transformForRenderingOutElementSize_outClipRect_(v10, 0.0, *&v23, v21);
    }

    if (CGRectIsNull(v39))
    {
      v37[0].receiver = self;
      v37[0].super_class = TSCHChartTitleRenderer;
      [(objc_super *)v37 frameForEditingTextForSelectionPath:pathCopy];
    }

    else
    {
      TSURectWithSize();
      v36 = *&v37[1].receiver;
      *&v24 = CGRectApplyAffineTransform(v41, &v36);
    }
  }

  else
  {
    v40.receiver = self;
    v40.super_class = TSCHChartTitleRenderer;
    [(TSCHRenderer *)&v40 frameForEditingTextForSelectionPath:pathCopy];
  }

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;

  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (BOOL)canEditTextForSelectionPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  v9 = objc_msgSend_layoutItem(self, v5, v6, v7, v8);
  v10 = TSUDynamicCast();

  v15 = objc_msgSend_titleSelectionPath(v10, v11, v12, v13, v14);
  isEqual = objc_msgSend_isEqual_(pathCopy, v16, v17, v18, v19, v15);

  if (isEqual && objc_msgSend_isTitleOn(v10, v21, v22, v23, v24))
  {
    objc_msgSend_p_rawFrameForEditingTextForSelectionPath_(self, v25, v26, v27, v28, pathCopy);
    self->_startingEditingFrame.origin.x = v29;
    self->_startingEditingFrame.origin.y = v30;
    self->_startingEditingFrame.size.width = v31;
    self->_startingEditingFrame.size.height = v32;
    v33 = 1;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = TSCHChartTitleRenderer;
    v33 = [(TSCHRenderer *)&v35 canEditTextForSelectionPath:pathCopy];
  }

  return v33;
}

- (CGRect)frameForEditingTextForSelectionPath:(id)path
{
  pathCopy = path;
  objc_msgSend_p_rawFrameForEditingTextForSelectionPath_(self, v5, v6, v7, v8, pathCopy);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  p_startingEditingFrame = &self->_startingEditingFrame;
  height = self->_startingEditingFrame.size.height;
  if (v16 != height)
  {
    x = p_startingEditingFrame->origin.x;
    y = self->_startingEditingFrame.origin.y;
    width = self->_startingEditingFrame.size.width;
    if (!CGRectEqualToRect(*(&height - 3), *MEMORY[0x277CBF3A0]))
    {
      v26 = objc_msgSend_name(pathCopy, v22, v23, v24, v25);
      isEqual = objc_msgSend_isEqual_(v26, v27, v28, v29, v30, @"chartTitle");

      if (isEqual)
      {
        if (objc_msgSend_shouldPlaceTitleAtCenter(self, v32, v33, v34, v35))
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v36 = objc_msgSend_name(pathCopy, v32, v33, v34, v35);
      v41 = objc_msgSend_isEqual_(v36, v37, v38, v39, v40, @"chartDataSetName");

      if (v41)
      {
        v46 = objc_msgSend_chartInfo(self, v42, v43, v44, v45);
        v51 = objc_msgSend_intValueForProperty_defaultValue_(v46, v47, v48, v49, v50, 1098, 0);

        if (v51 == 1)
        {
LABEL_8:
          v12 = v12 - (v16 - p_startingEditingFrame->size.height);
        }
      }
    }
  }

LABEL_9:

  v52 = v10;
  v53 = v12;
  v54 = v14;
  v55 = v16;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (BOOL)shouldPlaceTitleAtCenter
{
  objc_opt_class();
  v7 = objc_msgSend_layoutItem(self, v3, v4, v5, v6);
  v8 = TSUDynamicCast();

  if (v8)
  {
    shouldPlaceTitleAtCenter = objc_msgSend_shouldPlaceTitleAtCenter(v8, v9, v10, v11, v12);
  }

  else
  {
    shouldPlaceTitleAtCenter = 0;
  }

  return shouldPlaceTitleAtCenter;
}

- (id)textLayoutPropertiesWithWrapWidth:(double)width
{
  objc_opt_class();
  v9 = objc_msgSend_layoutItem(self, v5, v6, v7, v8);
  v10 = TSUDynamicCast();

  if (objc_msgSend_shouldPlaceTitleAtCenter(self, v11, v12, v13, v14) && v10)
  {
    v18 = objc_msgSend_placeTitleAtCenterPropertiesForWrapWidth_(TSCHTextLayoutProperties, v15, width, v16, v17);
  }

  else
  {
    v18 = objc_msgSend_defaultPropertiesForWrapWidth_(TSCHTextLayoutProperties, v15, width, v16, v17);
  }

  v19 = v18;

  return v19;
}

@end