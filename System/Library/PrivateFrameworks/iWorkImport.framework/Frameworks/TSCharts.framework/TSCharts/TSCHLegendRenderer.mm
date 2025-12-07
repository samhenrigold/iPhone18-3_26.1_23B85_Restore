@interface TSCHLegendRenderer
- (BOOL)canRenderSelectionPath:(id)path;
- (CGPoint)textEditingPixelAlignmentOffset;
- (id)allRenderingFills;
- (id)legendLayoutItem;
- (id)p_selectionPathForCell:(id)cell;
- (void)addSelection:(id)selection toCGPath:(CGPath *)path useWrapWidth:(BOOL)width;
- (void)p_draw3DLineBadgeIntoContext:(CGContext *)context forCell:(id)cell;
- (void)p_drawBadgeForCell:(id)cell intoContext:(CGContext *)context;
- (void)p_drawDefaultBadgeIntoContext:(CGContext *)context forCell:(id)cell;
- (void)p_drawDonutBadgeIntoContext:(CGContext *)context forCell:(id)cell;
- (void)p_drawLabelForCell:(id)cell intoContext:(CGContext *)context rangePtr:(_NSRange *)ptr;
- (void)p_drawLineAreaBadgeIntoContext:(CGContext *)context forCell:(id)cell;
- (void)p_drawPieBadgeIntoContext:(CGContext *)context forCell:(id)cell;
- (void)p_renderIntoContext:(CGContext *)context visible:(CGRect)visible;
- (void)renderIntoContext:(CGContext *)context selection:(id)selection;
@end

@implementation TSCHLegendRenderer

- (id)p_selectionPathForCell:(id)cell
{
  v34[1] = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  v8 = objc_msgSend_cellType(cellCopy, v4, v5, v6, v7);
  v9 = off_27A6B9668;
  if (v8)
  {
    v9 = off_27A6B9670;
  }

  v10 = *v9;
  v11 = [TSCHSelectionPath alloc];
  v12 = MEMORY[0x277CCABB0];
  v17 = objc_msgSend_seriesIndex(cellCopy, v13, v14, v15, v16);

  v22 = objc_msgSend_numberWithUnsignedInteger_(v12, v18, v19, v20, v21, v17);
  v34[0] = v22;
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, v24, v25, v26, v34, 1);
  v32 = objc_msgSend_initWithType_name_arguments_(v11, v28, v29, v30, v31, @"text", v10, v27);

  return v32;
}

- (id)legendLayoutItem
{
  objc_opt_class();
  v7 = objc_msgSend_layoutItem(self, v3, v4, v5, v6);
  v8 = TSUCheckedDynamicCast();

  return v8;
}

- (void)p_drawDefaultBadgeIntoContext:(CGContext *)context forCell:(id)cell
{
  cellCopy = cell;
  v11 = objc_msgSend_legendLayoutItem(self, v7, v8, v9, v10);
  v66 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF398] + 16);
  v65.origin = *MEMORY[0x277CBF398];
  v65.size = v12;
  memset(&v64, 0, sizeof(v64));
  objc_msgSend_seriesIndex(cellCopy, v13, 0.0, v12.width, v14);
  objc_msgSend_cellType(cellCopy, v15, v16, v17, v18);
  if (v11)
  {
    objc_msgSend_transformForRenderingBadge_cellType_outElementSize_outClipRect_(v11, v19, v20, v21);
  }

  else
  {
    memset(&v64, 0, sizeof(v64));
  }

  if (!CGRectIsNull(v65))
  {
    CGContextSaveGState(context);
    v63 = v64;
    CGContextConcatCTM(context, &v63);
    TSURectWithSize();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_27628CB34(context, v22, v24, v26, v28, 0.0);
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v40 = objc_msgSend_fill(cellCopy, v38, v30, v32, v34);
    if (v40)
    {
      objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v39, v31, v33, v35, v40, context, v37);
    }

    v44 = objc_msgSend_stroke(cellCopy, v39, v41, v42, v43);
    if (objc_msgSend_shouldRender(v44, v45, v46, v47, v48))
    {
      objc_msgSend_effectiveStrokeWidth(cellCopy, v49, v50, v51, v52);
      sub_27628CB34(context, v23, v25, v27, v29, v53 + v53);
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      objc_msgSend_applyToContext_insideStroke_(v44, v62, v54, v56, v58, context, 1);
      CGContextClipToRectSafe();
      v67.origin.x = v55;
      v67.origin.y = v57;
      v67.size.width = v59;
      v67.size.height = v61;
      CGContextStrokeRect(context, v67);
    }

    CGContextRestoreGState(context);
  }
}

- (void)p_drawLineAreaBadgeIntoContext:(CGContext *)context forCell:(id)cell
{
  cellCopy = cell;
  v11 = objc_msgSend_legendLayoutItem(self, v7, v8, v9, v10);
  v153 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF398] + 16);
  v152.origin = *MEMORY[0x277CBF398];
  v152.size = v12;
  memset(&v151, 0, sizeof(v151));
  objc_msgSend_seriesIndex(cellCopy, v13, 0.0, v12.width, v14);
  objc_msgSend_cellType(cellCopy, v15, v16, v17, v18);
  if (v11)
  {
    objc_msgSend_transformForRenderingBadge_cellType_outElementSize_outClipRect_(v11, v19, v20, v21);
  }

  else
  {
    memset(&v151, 0, sizeof(v151));
  }

  HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed();
  if (!CGRectIsNull(v152))
  {
    CGContextSaveGState(context);
    transform = v151;
    CGContextConcatCTM(context, &transform);
    width_low = objc_msgSend_symbolType(cellCopy, v23, v24, v25, v26);
    TSURectWithSize();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    objc_msgSend_badgeFillFrame(cellCopy, v36, v28, v30, v32);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_27628CB34(context, v29, v31, v33, v35, 0.0);
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    rect.origin.x = v38;
    rect.origin.y = v40;
    v53 = v38;
    v54 = v46;
    v146 = v42;
    v147 = v44;
    sub_27628CB34(context, v53, v40, v42, v44, 0.0);
    rect.size.width = v55;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = objc_msgSend_stroke(cellCopy, v62, v55, v56, v58);
    v68 = objc_msgSend_fill(cellCopy, v64, v65, v66, v67);
    v73 = objc_msgSend_symbolStroke(cellCopy, v69, v70, v71, v72);
    v78 = objc_msgSend_symbolFill(cellCopy, v74, v75, v76, v77);
    if (v68)
    {
      CGContextSaveGState(context);
      CGContextClipToRectSafe();
      objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v79, rect.size.width, v57, v59, v68, context, v61);
      CGContextRestoreGState(context);
    }

    v80 = v59 * 0.6;
    CGContextSaveGState(context);
    if (width_low == 7)
    {
      v85 = 0;
    }

    else if ((objc_msgSend_badgeType(cellCopy, v81, v82, v83, v84) != 1 || objc_msgSend_lineType(cellCopy, v81, v82, v83, v84)) && objc_msgSend_shouldRender(v63, v81, v82, v83, v84))
    {
      LODWORD(rect.size.width) = width_low;
      v86 = objc_msgSend_pattern(v63, v81, v82, v83, v84);
      if (v86 && (v87 = v86, v145 = HasBackgroundsSuppressed, objc_msgSend_pattern(v63, v81, v82, v83, v84), v88 = objc_claimAutoreleasedReturnValue(), v93 = objc_msgSend_patternType(v88, v89, v90, v91, v92), v88, v87, v93 != 2))
      {
        v154.origin.x = v54;
        v154.origin.y = v48;
        v154.size.width = v50;
        v154.size.height = v52;
        CGContextBeginTransparencyLayerWithRect(context, v154, 0);
        CGContextSetBlendMode(context, kCGBlendModeCopy);
        CGContextSaveGState(context);
        TSUCenterOfRect();
        v97 = objc_msgSend_newClipPathForSymbol_at_width_stroke_(TSCHRenderUtilities, v94, v95, v96, v80, LODWORD(rect.size.width), v73);
        if (v97)
        {
          v155.origin.x = v54;
          v155.origin.y = v48;
          v155.size.width = v50;
          v155.size.height = v52;
          CGContextAddRect(context, v155);
          CGContextAddPathSafe();
          CGContextEOClip(context);
        }

        else
        {
          CGContextClipToRectSafe();
        }

        objc_msgSend_applyToContext_(v63, v98, v99, v100, v101, context);
        v106 = objc_msgSend_badgeType(cellCopy, v102, v103, v104, v105);
        if (v68 && v106 == 6 && !LODWORD(rect.size.width))
        {
          objc_msgSend_width(v63, v107, v108, v109, v110);
          sub_27628CB34(context, rect.origin.x, rect.origin.y, v146, v147, v111);
          v116 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v112, v113, v114, v115);
          objc_msgSend_addPathToContext_(v116, v117, v118, v119, v120, context);
        }

        else
        {
          v156.origin.y = rect.origin.y;
          v156.origin.x = rect.origin.x;
          v156.size.width = v146;
          v156.size.height = v147;
          MinX = CGRectGetMinX(v156);
          v157.origin.x = rect.origin.x;
          v157.origin.y = rect.origin.y;
          v157.size.width = v146;
          v157.size.height = v147;
          MinY = CGRectGetMinY(v157);
          transform.a = MinX;
          transform.b = MinY;
          v158.origin.x = rect.origin.x;
          v158.origin.y = rect.origin.y;
          v158.size.width = v146;
          v158.size.height = v147;
          MaxX = CGRectGetMaxX(v158);
          v159.origin.x = rect.origin.x;
          v159.origin.y = rect.origin.y;
          v159.size.width = v146;
          v159.size.height = v147;
          rect.size.height = MaxX;
          v149 = CGRectGetMinY(v159);
          objc_msgSend_width(v63, v126, v149, MaxX, v127);
          v129 = v128;
          v133 = objc_msgSend_cap(v63, v130, v128, v131, v132);
          sub_27628C654(context, &transform.a, &rect.size.height, v133, v129);
          CGContextMoveToPoint(context, transform.a, transform.b);
          CGContextAddLineToPoint(context, rect.size.height, v149);
        }

        if (v145)
        {
          objc_msgSend_blackColor(MEMORY[0x277D81180], v121, v122, v123, v124);
        }

        else
        {
          objc_msgSend_color(v63, v122, v123, v124);
        }
        v134 = ;
        v139 = objc_msgSend_CGColor(v134, v135, v136, v137, v138);
        CGContextSetStrokeColorWithColor(context, v139);

        CGContextStrokePath(context);
        if (v97)
        {
          CGPathRelease(v97);
        }

        CGContextRestoreGState(context);
        v85 = 1;
      }

      else
      {
        v85 = 0;
      }

      width_low = LODWORD(rect.size.width);
    }

    else
    {
      v85 = 0;
    }

    if ((objc_msgSend_shouldRender(v73, v81, v82, v83, v84) & 1) != 0 || v78)
    {
      TSUCenterOfRect();
      objc_msgSend_drawSymbol_inContext_at_width_fill_stroke_(TSCHRenderUtilities, v140, v141, v142, v80, width_low, context, v78, v73);
    }

    if (v85)
    {
      CGContextEndTransparencyLayer(context);
    }

    CGContextRestoreGState(context);
    CGContextRestoreGState(context);
  }
}

- (void)p_drawPieBadgeIntoContext:(CGContext *)context forCell:(id)cell
{
  cellCopy = cell;
  v11 = objc_msgSend_legendLayoutItem(self, v7, v8, v9, v10);
  v54 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF398] + 16);
  v53.origin = *MEMORY[0x277CBF398];
  v53.size = v12;
  memset(&v52, 0, sizeof(v52));
  objc_msgSend_seriesIndex(cellCopy, v13, 0.0, v12.width, v14);
  objc_msgSend_cellType(cellCopy, v15, v16, v17, v18);
  if (v11)
  {
    objc_msgSend_transformForRenderingBadge_cellType_outElementSize_outClipRect_(v11, v19, v20, v21);
  }

  else
  {
    memset(&v52, 0, sizeof(v52));
  }

  if (!CGRectIsNull(v53))
  {
    v26 = objc_msgSend_fill(cellCopy, v22, v23, v24, v25);
    v31 = objc_msgSend_stroke(cellCopy, v27, v28, v29, v30);
    CGContextSaveGState(context);
    v51 = v52;
    CGContextConcatCTM(context, &v51);
    TSURectWithSize();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    objc_msgSend_effectiveStrokeWidth(cellCopy, v40, v32, v34, v36);
    sub_27628CB34(context, v33, v35, v37, v39, v41 + v41);
    Mutable = CGPathCreateMutable();
    CGPathAddEllipseInRectSafe();
    CGContextAddPathSafe();
    CGContextClip(context);
    if (v26)
    {
      objc_msgSend_drawFill_inContext_path_(TSCHRenderUtilities, v43, v44, v45, v46, v26, context, Mutable);
    }

    if (objc_msgSend_shouldRender(v31, v43, v44, v45, v46))
    {
      objc_msgSend_applyToContext_insideStroke_(v31, v47, v48, v49, v50, context, 1);
      CGContextAddPathSafe();
      CGContextStrokePath(context);
    }

    CGPathRelease(Mutable);
    CGContextRestoreGState(context);
  }
}

- (void)p_drawDonutBadgeIntoContext:(CGContext *)context forCell:(id)cell
{
  cellCopy = cell;
  v11 = objc_msgSend_legendLayoutItem(self, v7, v8, v9, v10);
  v66 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF398] + 16);
  v65.origin = *MEMORY[0x277CBF398];
  v65.size = v12;
  memset(&v64, 0, sizeof(v64));
  objc_msgSend_seriesIndex(cellCopy, v13, 0.0, v12.width, v14);
  objc_msgSend_cellType(cellCopy, v15, v16, v17, v18);
  if (v11)
  {
    objc_msgSend_transformForRenderingBadge_cellType_outElementSize_outClipRect_(v11, v19, v20, v21);
  }

  else
  {
    memset(&v64, 0, sizeof(v64));
  }

  if (!CGRectIsNull(v65))
  {
    v26 = objc_msgSend_fill(cellCopy, v22, v23, v24, v25);
    v31 = objc_msgSend_stroke(cellCopy, v27, v28, v29, v30);
    CGContextSaveGState(context);
    transform = v64;
    CGContextConcatCTM(context, &transform);
    if (*&v66 >= *(&v66 + 1))
    {
      v32 = *(&v66 + 1);
    }

    else
    {
      v32 = *&v66;
    }

    v33 = (*&v66 - v32) * 0.5;
    v34 = (*(&v66 + 1) - v32) * 0.5;
    v67.origin.x = v33;
    v67.origin.y = v34;
    v67.size.width = v32;
    v67.size.height = v32;
    CGRectGetMidX(v67);
    v68.origin.x = v33;
    v68.origin.y = v34;
    v68.size.width = v32;
    v68.size.height = v32;
    MidY = CGRectGetMidY(v68);
    v39 = objc_msgSend_series(cellCopy, v36, MidY, v37, v38);
    v44 = objc_msgSend_chartInfo(v39, v40, v41, v42, v43);

    v49 = objc_msgSend_valueForProperty_(v44, v45, v46, v47, v48, 1103);
    objc_msgSend_floatValue(v49, v50, v51, v52, v53);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddArcSafe();
    CGPathAddLineToPointSafe();
    CGPathAddArcSafe();
    if (v26)
    {
      objc_msgSend_drawFill_inContext_path_(TSCHRenderUtilities, v55, v56, v57, v58, v26, context, Mutable);
    }

    if (objc_msgSend_shouldRender(v31, v55, v56, v57, v58))
    {
      objc_msgSend_applyToContext_insideStroke_(v31, v59, v60, v61, v62, context, 1);
      CGContextAddPathSafe();
      CGContextStrokePath(context);
    }

    CGPathRelease(Mutable);
    CGContextRestoreGState(context);
  }
}

- (void)p_draw3DLineBadgeIntoContext:(CGContext *)context forCell:(id)cell
{
  cellCopy = cell;
  v11 = objc_msgSend_legendLayoutItem(self, v7, v8, v9, v10);
  v40 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF398] + 16);
  v39.origin = *MEMORY[0x277CBF398];
  v39.size = v12;
  memset(&v38, 0, sizeof(v38));
  objc_msgSend_seriesIndex(cellCopy, v13, 0.0, v12.width, v14);
  objc_msgSend_cellType(cellCopy, v15, v16, v17, v18);
  if (v11)
  {
    objc_msgSend_transformForRenderingBadge_cellType_outElementSize_outClipRect_(v11, v19, v20, v21);
  }

  else
  {
    memset(&v38, 0, sizeof(v38));
  }

  if (!CGRectIsNull(v39))
  {
    CGContextSaveGState(context);
    v37 = v38;
    CGContextConcatCTM(context, &v37);
    *(&v40 + 1) = *(&v40 + 1) * 0.25;
    TSURectWithCenterAndSize();
    sub_27628CB34(context, v22, v23, v24, v25, 0.0);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v36 = objc_msgSend_fill(cellCopy, v34, v26, v28, v30);
    if (v36)
    {
      objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v35, v27, v29, v31, v36, context, v33);
    }

    CGContextRestoreGState(context);
  }
}

- (void)p_drawBadgeForCell:(id)cell intoContext:(CGContext *)context
{
  cellCopy = cell;
  CGContextSaveGState(context);
  v10 = objc_msgSend_badgeType(cellCopy, v6, v7, v8, v9);
  if (v10 > 6)
  {
    goto LABEL_8;
  }

  if (((1 << v10) & 0x46) != 0)
  {
    objc_msgSend_p_drawLineAreaBadgeIntoContext_forCell_(self, v11, v12, v13, v14, context, cellCopy);
    goto LABEL_9;
  }

  v11 = cellCopy;
  if (((1 << v10) & 0x28) != 0)
  {
    objc_msgSend_p_drawPieBadgeIntoContext_forCell_(self, cellCopy, v12, v13, v14, context, cellCopy);
    goto LABEL_9;
  }

  if (v10 == 4)
  {
    objc_msgSend_p_draw3DLineBadgeIntoContext_forCell_(self, cellCopy, v12, v13, v14, context, cellCopy);
  }

  else
  {
LABEL_8:
    objc_msgSend_p_drawDefaultBadgeIntoContext_forCell_(self, v11, v12, v13, v14, context, cellCopy);
  }

LABEL_9:
  CGContextRestoreGState(context);
}

- (void)p_drawLabelForCell:(id)cell intoContext:(CGContext *)context rangePtr:(_NSRange *)ptr
{
  cellCopy = cell;
  v13 = objc_msgSend_legendLayoutItem(self, v9, v10, v11, v12);
  v106 = *MEMORY[0x277CBF3A8];
  v14 = *(MEMORY[0x277CBF398] + 16);
  v105.origin = *MEMORY[0x277CBF398];
  v105.size = v14;
  memset(&v104, 0, sizeof(v104));
  objc_msgSend_seriesIndex(cellCopy, v15, 0.0, v14.width, v16);
  objc_msgSend_cellType(cellCopy, v17, v18, v19, v20);
  if (v13)
  {
    objc_msgSend_transformForRenderingLabel_cellType_outElementSize_outClipRect_(v13, v21, v22, v23);
  }

  else
  {
    memset(&v104, 0, sizeof(v104));
  }

  if (!CGRectIsNull(v105))
  {
    CGContextSaveGState(context);
    transform = v104;
    CGContextConcatCTM(context, &transform);
    TSURectWithSize();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = objc_msgSend_p_selectionPathForCell_(self, v32, v24, v26, v28, cellCopy);
    v38 = objc_msgSend_textDrawingFlagForSelectionPath_(self, v34, v35, v36, v37, v33);

    if (v38 != 2)
    {
      if (v38 == 1)
      {
        v43 = objc_msgSend_yellowColor(MEMORY[0x277D81180], v39, v40, v41, v42);
        v48 = objc_msgSend_CGColor(v43, v44, v45, v46, v47);
        CGContextSetFillColorWithColor(context, v48);

        v53 = objc_msgSend_yellowColor(MEMORY[0x277D81180], v49, v50, v51, v52);
        v58 = objc_msgSend_CGColor(v53, v54, v55, v56, v57);
        CGContextSetStrokeColorWithColor(context, v58);

        v109.origin.x = v25;
        v109.origin.y = v27;
        v109.size.width = v29;
        v109.size.height = v31;
        CGContextFillRect(context, v109);
      }

      v59 = objc_msgSend_chartInfo(self, v39, v40, v41, v42);
      v64 = objc_msgSend_legend(v59, v60, v61, v62, v63);
      v69 = objc_msgSend_intValueForProperty_defaultValue_(v64, v65, v66, v67, v68, 1214, 0);

      v74 = objc_msgSend_paragraphStyleAtIndex_(v59, v70, v71, v72, v73, v69);
      v79 = objc_msgSend_labelString(cellCopy, v75, v76, v77, v78);
      v84 = v79;
      if (ptr)
      {
        location = ptr->location;
        length = ptr->length;
      }

      else
      {
        location = 0;
        length = -1;
      }

      v107.length = objc_msgSend_length(v79, v80, v81, v82, v83);
      v107.location = 0;
      v108.location = location;
      v108.length = length;
      v87 = NSIntersectionRange(v107, v108);
      v91 = objc_msgSend_sharedText(TSCHText, v87.length, v88, v89, v90);
      objc_msgSend_viewScale(self, v92, v93, v94, v95);
      v97 = v96;
      v101 = objc_msgSend_textStyleProvidingSource(v13, v98, v96, v99, v100);
      objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_range_viewScale_layoutProperties_styleProvidingSource_outTextLayoutResults_(v91, v102, 0.0, v25, v27, v84, v74, context, v87.location, v87.length, 0, v97, v101, 0);
    }

    CGContextRestoreGState(context);
  }
}

- (void)p_renderIntoContext:(CGContext *)context visible:(CGRect)visible
{
  v139 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_legendLayoutItem(self, a2, visible.origin.x, visible.origin.y, visible.size.width, visible.size.height);
  v11 = objc_msgSend_legendLayoutItem(self, v7, v8, v9, v10);
  v16 = objc_msgSend_legendModelCache(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_chartRep(self, v17, v18, v19, v20);
  objc_msgSend_tLayerRectForContext_(self, v22, v23, v24, v25, context);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (objc_msgSend_legendOn(v16, v34, v26, v28, v30))
  {
    objc_msgSend_rootedLayoutRect(v6, v35, v36, v37, v38);
    v130 = v40;
    v132 = v39;
    v126 = v42;
    v128 = v41;
    objc_msgSend_rootedDrawingRect(v6, v43, v39, v40, v41);
    x = v140.origin.x;
    y = v140.origin.y;
    width = v140.size.width;
    height = v140.size.height;
    v144.origin.x = v27;
    v144.origin.y = v29;
    v144.size.width = v31;
    v144.size.height = v33;
    if (CGRectIntersectsRect(v140, v144))
    {
      CGContextSaveGState(context);
      v52 = objc_msgSend_shadow(v16, v48, v49, v50, v51);
      if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v53, v54, v55, v56, v52) && objc_msgSend_shadowsEnabled(v21, v57, v58, v59, v60))
      {
        objc_msgSend_viewScale(self, v57, v58, v59, v60);
        v124 = v61;
        v65 = sub_27631FD2C(context, v62, v61, v63, v64);
        objc_msgSend_applyToContext_viewScale_flipped_(v52, v66, v124, v67, v68, context, v65);
        v141.origin.x = x;
        v141.origin.y = y;
        v141.size.width = width;
        v141.size.height = height;
        v145.origin.x = v27;
        v145.origin.y = v29;
        v145.size.width = v31;
        v145.size.height = v33;
        v142 = CGRectIntersection(v141, v145);
        CGContextBeginTransparencyLayerWithRect(context, v142, 0);
        v125 = 1;
      }

      else
      {
        v125 = 0;
      }

      objc_msgSend_opacity(v16, v57, v58, v59, v60);
      CGContextSetAlpha(context, v69);
      CGContextSaveGState(context);
      objc_msgSend_effectiveStrokeWidth(v16, v70, v71, v72, v73);
      sub_27628CB34(context, v132, v130, v128, v126, v74);
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v85 = objc_msgSend_fill(v16, v83, v75, v77, v79);
      if (v85)
      {
        objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v84, v76, v78, v80, v85, context, v82);
      }

      v129 = v85;
      v131 = v52;
      v133 = v21;
      v89 = objc_msgSend_stroke(v16, v84, v86, v87, v88);
      if (objc_msgSend_shouldRender(v89, v90, v91, v92, v93))
      {
        objc_msgSend_applyToContext_insideStroke_(v89, v94, v95, v96, v97, context, 0);
        v143.origin.x = v76;
        v143.origin.y = v78;
        v143.size.width = v80;
        v143.size.height = v82;
        CGContextStrokeRect(context, v143);
      }

      v127 = v89;
      CGContextRestoreGState(context);
      CGContextSaveGState(context);
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v101 = objc_msgSend_cells(v16, v98, 0.0, v99, v100);
      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v102, v103, v104, v105, &v134, v138, 16);
      if (v106)
      {
        v107 = v106;
        v108 = *v135;
        do
        {
          for (i = 0; i != v107; ++i)
          {
            if (*v135 != v108)
            {
              objc_enumerationMutation(v101);
            }

            v110 = *(*(&v134 + 1) + 8 * i);
            v111 = objc_autoreleasePoolPush();
            objc_msgSend_p_drawBadgeForCell_intoContext_(self, v112, v113, v114, v115, v110, context);
            objc_msgSend_p_drawLabelForCell_intoContext_rangePtr_(self, v116, v117, v118, v119, v110, context, 0);
            objc_autoreleasePoolPop(v111);
          }

          v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v101, v120, v121, v122, v123, &v134, v138, 16);
        }

        while (v107);
      }

      CGContextRestoreGState(context);
      if (v125)
      {
        CGContextEndTransparencyLayer(context);
      }

      CGContextRestoreGState(context);

      v21 = v133;
    }
  }
}

- (BOOL)canRenderSelectionPath:(id)path
{
  pathCopy = path;
  v8 = objc_msgSend_type(pathCopy, v4, v5, v6, v7);
  if (objc_msgSend_isEqual_(v8, v9, v10, v11, v12, @"text"))
  {
    v17 = objc_msgSend_name(pathCopy, v13, v14, v15, v16);
    if (objc_msgSend_isEqual_(v17, v18, v19, v20, v21, @"seriesName"))
    {
      isEqual = 1;
    }

    else
    {
      v27 = objc_msgSend_name(pathCopy, v22, v23, v24, v25);
      isEqual = objc_msgSend_isEqual_(v27, v28, v29, v30, v31, @"trendLineName");
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)renderIntoContext:(CGContext *)context selection:(id)selection
{
  selectionCopy = selection;
  v11 = objc_msgSend_path(selectionCopy, v7, v8, v9, v10);
  if (objc_msgSend_canRenderSelectionPath_(self, v12, v13, v14, v15, v11))
  {
    v20 = objc_msgSend_legendLayoutItem(self, v16, v17, v18, v19);
    v25 = objc_msgSend_legendModelCache(v20, v21, v22, v23, v24);

    objc_opt_class();
    v30 = objc_msgSend_argumentAtIndex_(v11, v26, v27, v28, v29, 0);
    v31 = TSUCheckedDynamicCast();
    v36 = objc_msgSend_intValue(v31, v32, v33, v34, v35);

    v41 = objc_msgSend_name(v11, v37, v38, v39, v40);
    LODWORD(v30) = objc_msgSend_isEqual_(v41, v42, v43, v44, v45, @"seriesName");

    v51 = objc_msgSend_cellForSeriesIndex_cellType_(v25, v46, v47, v48, v49, v36, v30 ^ 1);
    if (v51)
    {
      v59[0] = objc_msgSend_range(selectionCopy, v50, v52, v53, v54);
      v59[1] = v55;
      objc_msgSend_p_drawLabelForCell_intoContext_rangePtr_(self, v55, v56, v57, v58, v51, context, v59);
    }
  }
}

- (void)addSelection:(id)selection toCGPath:(CGPath *)path useWrapWidth:(BOOL)width
{
  selectionCopy = selection;
  v11 = objc_msgSend_path(selectionCopy, v7, v8, v9, v10);
  if (objc_msgSend_canEditTextForSelectionPath_(self, v12, v13, v14, v15, v11))
  {
    v20 = objc_msgSend_legendLayoutItem(self, v16, v17, v18, v19);
    objc_opt_class();
    v25 = objc_msgSend_argumentAtIndex_(v11, v21, v22, v23, v24, 0);
    v26 = TSUCheckedDynamicCast();
    v31 = objc_msgSend_intValue(v26, v27, v28, v29, v30);

    v36 = objc_msgSend_name(v11, v32, v33, v34, v35);
    isEqual = objc_msgSend_isEqual_(v36, v37, v38, v39, v40, @"seriesName");

    v42 = MEMORY[0x277CBF3A8];
    v52 = *MEMORY[0x277CBF3A8];
    v43 = *(MEMORY[0x277CBF398] + 16);
    v51.origin = *MEMORY[0x277CBF398];
    v51.size = v43;
    v46 = objc_msgSend_range(selectionCopy, v44, 0.0, v43.width, v45, 0, 0, 0, 0, 0, 0);
    if (v20)
    {
      objc_msgSend_transformForRenderingLabel_cellType_range_outElementSize_outClipRect_(v20, v48, v49, v50, v47, v31, isEqual ^ 1u, v46, v47, &v52, &v51);
    }

    if (!CGRectIsNull(v51) && (*v42 != *&v52 || v42[1] != *(&v52 + 1)))
    {
      TSURectWithSize();
      CGPathAddRectSafe();
    }
  }
}

- (id)allRenderingFills
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_legendLayoutItem(self, v4, v5, v6, v7);
  v13 = objc_msgSend_legendModelCache(v8, v9, v10, v11, v12);

  v19 = objc_msgSend_fill(v13, v14, v15, v16, v17);
  if (v19)
  {
    objc_msgSend_addObject_(v3, v18, v20, v21, v22, v19);
  }

  v23 = objc_msgSend_copy(v3, v18, v20, v21, v22);

  return v23;
}

- (CGPoint)textEditingPixelAlignmentOffset
{
  x = self->_textEditingPixelAlignmentOffset.x;
  y = self->_textEditingPixelAlignmentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end