@interface TSCHChartRadialElementsRenderer
- (CGLayer)p_newPreRenderedImageWithContext:(CGContext *)context wedgePath:(CGPath *)path fullWedgePath:(CGPath *)wedgePath fill:(id)fill stroke:(id)stroke shadow:(id)shadow outUserSpaceLayerBounds:(CGRect *)bounds;
- (CGRect)chartLayoutSpaceRenderingRect;
- (double)p_calculateIntersectionAreaForRectangle:(CGRect)rectangle circleCenter:(CGPoint)center circleRadius:(double)radius;
- (id)allRenderingFills;
- (void)drawAll;
- (void)drawAllButSeriesIndicies:(id)indicies;
- (void)drawOnlySeriesIndicies:(id)indicies;
- (void)p_drawLinePathsIntoContext:(CGContext *)context linePath:(CGPath *)path tailPath:(CGPath *)tailPath headPath:(CGPath *)headPath fillTail:(BOOL)tail fillHead:(BOOL)head stroke:(id)stroke;
- (void)p_drawOnlyShadow:(id)shadow forImage:(CGLayer *)image intoRect:(CGRect)rect intoContext:(CGContext *)context atViewScale:(double)scale usingBlendMode:(int)mode opacity:(double)opacity;
- (void)p_drawOnlyShapeImage:(CGLayer *)image intoRect:(CGRect)rect intoContext:(CGContext *)context usingBlendMode:(int)mode opacity:(double)opacity;
- (void)p_drawWedgePathIntoContext:(CGContext *)context path:(CGPath *)path fill:(id)fill stroke:(id)stroke opacity:(double)opacity withinBounds:(CGRect)bounds;
- (void)p_renderIntoContext:(CGContext *)context visible:(CGRect)visible;
- (void)renderLabelWithPieLabel:(id)label combinedLabelTransform:(CGAffineTransform *)transform context:(CGContext *)context paragraphStyle:(id)style;
- (void)renderLabelsWithWedgeLayoutInfo:(id)info paragraphStyle:(id)style context:(CGContext *)context;
@end

@implementation TSCHChartRadialElementsRenderer

- (void)p_drawOnlyShapeImage:(CGLayer *)image intoRect:(CGRect)rect intoContext:(CGContext *)context usingBlendMode:(int)mode opacity:(double)opacity
{
  if (image)
  {
    if (context)
    {
      height = rect.size.height;
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      if (!CGRectIsNull(rect))
      {
        CGContextSaveGState(context);
        CGContextSetAlpha(context, opacity);
        CGContextSetBlendMode(context, mode);
        objc_msgSend_drawCGLayer_inContext_rect_(TSCHRenderUtilities, v15, x, y, width, image, context, height);

        CGContextRestoreGState(context);
      }
    }
  }
}

- (void)p_drawOnlyShadow:(id)shadow forImage:(CGLayer *)image intoRect:(CGRect)rect intoContext:(CGContext *)context atViewScale:(double)scale usingBlendMode:(int)mode opacity:(double)opacity
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  shadowCopy = shadow;
  if (image)
  {
    v43 = shadowCopy;
    hasShadow = objc_msgSend_hasShadow_(TSCHStyleUtilities, shadowCopy, v19, v20, v21, shadowCopy);
    shadowCopy = v43;
    if (context)
    {
      if (hasShadow)
      {
        v46.origin.x = x;
        v46.origin.y = y;
        v46.size.width = width;
        v46.size.height = height;
        IsNull = CGRectIsNull(v46);
        shadowCopy = v43;
        if (!IsNull)
        {
          CGContextSaveGState(context);
          CGContextSetAlpha(context, opacity);
          CGContextSetBlendMode(context, mode);
          objc_msgSend_offset(v43, v24, v25, v26);
          v28 = fabs(v27);
          objc_msgSend_radius(v43, v29, v27, v30, v31);
          v33 = -(v28 + fabs(v32));
          v47.origin.x = x;
          v47.origin.y = y;
          v47.size.width = width;
          v47.size.height = height;
          v48 = CGRectInset(v47, v33, v33);
          v48.origin.x = v48.size.width + v48.size.width;
          v48.origin.y = 0.0;
          v34 = CGContextConvertSizeToDeviceSpace(context, v48.origin);
          v45.width = ceil(v34.width);
          v45.height = ceil(v34.height);
          v35 = CGContextConvertSizeToUserSpace(context, v45);
          CGContextClipToRectSafe();
          v40 = sub_27631FD2C(context, v36, v37, v38, v39);
          objc_msgSend_applyToContext_viewScale_flipped_extraOffset_(v43, v41, scale, v35.width, v35.height, context, v40);
          objc_msgSend_drawCGLayer_inContext_rect_(TSCHRenderUtilities, v42, x - v35.width, y - v35.height, width, image, context, height);
          CGContextRestoreGState(context);
          shadowCopy = v43;
        }
      }
    }
  }
}

- (void)p_drawWedgePathIntoContext:(CGContext *)context path:(CGPath *)path fill:(id)fill stroke:(id)stroke opacity:(double)opacity withinBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  fillCopy = fill;
  strokeCopy = stroke;
  CGContextSaveGState(context);
  CGContextSetAlpha(context, opacity);
  objc_opt_class();
  v19 = TSUDynamicCast();
  if (v19)
  {
    objc_msgSend_drawImageFill_inContext_path_withinBounds_(TSCHRenderUtilities, v18, x, y, width, v19, context, path, height);
  }

  else if (fillCopy)
  {
    objc_msgSend_drawFill_inContext_path_(TSCHRenderUtilities, v18, v20, v21, v22, fillCopy, context, path);
  }

  if (strokeCopy && objc_msgSend_shouldRender(strokeCopy, v18, v20, v21, v22))
  {
    objc_msgSend_width(strokeCopy, v23, v24, v25, v26);
    if (v28 <= 0.5)
    {
      objc_msgSend_tsk_visionBincompatOrNative_DoNotUseWithoutCRBApproval(MEMORY[0x277D75418], v27, v28, 0.5, v29);
    }

    else
    {
      v30 = objc_msgSend_chartRep(self, v27, v28, 0.5, v29);
      isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v30, v31, v32, v33, v34);

      if ((objc_msgSend_tsk_visionBincompatOrNative_DoNotUseWithoutCRBApproval(MEMORY[0x277D75418], v36, v37, v38, v39) & 1) == 0 && !isDrawingIntoPDF)
      {
        objc_msgSend_applyToContext_insideStroke_(strokeCopy, v40, v41, v42, v43, context, 1);
        CGContextAddPathSafe();
        CGContextStrokePath(context);
        MutableCopy = CGPathCreateMutableCopy(path);
        objc_msgSend_width(strokeCopy, v45, v46, v47, v48);
        v50 = v49 * -2.0;
        objc_msgSend_width(strokeCopy, v51, v49, v52, v53);
        v55 = v54 * -2.0;
        v62.origin.x = x;
        v62.origin.y = y;
        v62.size.width = width;
        v62.size.height = height;
        CGRectInset(v62, v50, v55);
        CGPathAddRectSafe();
        CGContextSetBlendMode(context, kCGBlendModeClear);
        CGContextAddPathSafe();
        CGContextEOFillPath(context);
        CGPathRelease(MutableCopy);
        goto LABEL_13;
      }
    }

    CGContextAddPathSafe();
    CGContextClip(context);
    objc_msgSend_applyToContext_insideStroke_(strokeCopy, v56, v57, v58, v59, context, 1);
    CGContextAddPathSafe();
    CGContextStrokePath(context);
  }

LABEL_13:
  CGContextRestoreGState(context);
}

- (void)p_drawLinePathsIntoContext:(CGContext *)context linePath:(CGPath *)path tailPath:(CGPath *)tailPath headPath:(CGPath *)headPath fillTail:(BOOL)tail fillHead:(BOOL)head stroke:(id)stroke
{
  tailCopy = tail;
  headCopy = head;
  strokeCopy = stroke;
  v100 = objc_msgSend_color(strokeCopy, v12, v13, v14);
  objc_msgSend_alphaComponent(v100, v15, v16, v17, v18);
  v20 = v19;
  v24 = objc_msgSend_colorWithAlphaComponent_(v100, v21, 1.0, v22, v23);
  v25 = objc_alloc(MEMORY[0x277D803C0]);
  objc_msgSend_width(strokeCopy, v26, v27, v28, v29);
  v31 = v30;
  v35 = objc_msgSend_cap(strokeCopy, v32, v30, v33, v34);
  v40 = objc_msgSend_join(strokeCopy, v36, v37, v38, v39);
  v45 = objc_msgSend_pattern(strokeCopy, v41, v42, v43, v44);
  v49 = objc_msgSend_initWithColor_width_cap_join_pattern_(v25, v46, v31, v47, v48, v24, v35, v40, v45);

  v50 = objc_alloc(MEMORY[0x277D801F8]);
  v55 = objc_msgSend_initWithColor_(v50, v51, v52, v53, v54, v24);
  v56 = MEMORY[0x277D803C0];
  objc_msgSend_width(strokeCopy, v57, v58, v59, v60);
  v62 = v61;
  v66 = objc_msgSend_cap(strokeCopy, v63, v61, v64, v65);
  v71 = objc_msgSend_join(strokeCopy, v67, v68, v69, v70);

  v76 = objc_msgSend_emptyPattern(MEMORY[0x277D803C8], v72, v73, v74, v75);
  v80 = objc_msgSend_strokeWithColor_width_cap_join_pattern_(v56, v77, v62, v78, v79, v24, v66, v71, v76);

  CGContextSaveGState(context);
  CGContextSetAlpha(context, v20);
  CGContextBeginTransparencyLayer(context, 0);
  if (tailPath)
  {
    if (tailCopy)
    {
      objc_msgSend_drawFill_inContext_path_(TSCHRenderUtilities, v81, v82, v83, v84, v55, context, tailPath);
    }

    else
    {
      CGContextSaveGState(context);
      objc_msgSend_applyToContext_(v80, v85, v86, v87, v88, context);
      CGContextAddPathSafe();
      CGContextStrokePath(context);
      CGContextRestoreGState(context);
    }
  }

  if (headPath)
  {
    if (headCopy)
    {
      objc_msgSend_drawFill_inContext_path_(TSCHRenderUtilities, v81, v82, v83, v84, v55, context, headPath);
    }

    else
    {
      CGContextSaveGState(context);
      objc_msgSend_applyToContext_(v80, v89, v90, v91, v92, context);
      CGContextAddPathSafe();
      CGContextStrokePath(context);
      CGContextRestoreGState(context);
    }
  }

  CGContextSaveGState(context);
  objc_msgSend_applyToContext_(v49, v93, v94, v95, v96, context);
  CGContextAddPathSafe();
  CGContextStrokePath(context);
  CGContextRestoreGState(context);
  CGContextEndTransparencyLayer(context);
  CGContextRestoreGState(context);
}

- (CGLayer)p_newPreRenderedImageWithContext:(CGContext *)context wedgePath:(CGPath *)path fullWedgePath:(CGPath *)wedgePath fill:(id)fill stroke:(id)stroke shadow:(id)shadow outUserSpaceLayerBounds:(CGRect *)bounds
{
  fillCopy = fill;
  strokeCopy = stroke;
  shadowCopy = shadow;
  BoundingBox = CGPathGetBoundingBox(path);
  v19 = rint(BoundingBox.origin.x);
  if (vabdd_f64(v19, BoundingBox.origin.x) >= 0.001)
  {
    x = BoundingBox.origin.x;
  }

  else
  {
    x = v19;
  }

  v21 = rint(BoundingBox.origin.y);
  if (vabdd_f64(v21, BoundingBox.origin.y) >= 0.001)
  {
    y = BoundingBox.origin.y;
  }

  else
  {
    y = v21;
  }

  v23 = rint(BoundingBox.size.width);
  if (vabdd_f64(v23, BoundingBox.size.width) >= 0.001)
  {
    width = BoundingBox.size.width;
  }

  else
  {
    width = v23;
  }

  v25 = rint(BoundingBox.size.height);
  v26 = vabdd_f64(v25, BoundingBox.size.height);
  if (v26 >= 0.001)
  {
    height = BoundingBox.size.height;
  }

  else
  {
    height = v25;
  }

  if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v18, v25, v26, BoundingBox.size.width, shadowCopy) && (objc_msgSend_opacity(shadowCopy, v28, v29, v30, v31), v32 > 0.0) && ((objc_msgSend_offset(shadowCopy, v32, v33, v34), v36 > 0.0) || (objc_msgSend_radius(shadowCopy, v35, v36, v37, v38), v39 > 0.0)))
  {
    objc_msgSend_shadowBoundsForRect_(shadowCopy, v35, x, y, width, height);
    v70.origin.x = v40;
    v70.origin.y = v41;
    v70.size.width = v42;
    v70.size.height = v43;
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v64 = CGRectUnion(v63, v70);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    v44 = 1;
  }

  else
  {
    v44 = 0;
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(context);
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  v66 = CGRectIntersection(ClipBoundingBox, v71);
  v45 = v66.origin.x;
  v46 = v66.origin.y;
  v47 = v66.size.width;
  v48 = v66.size.height;
  v50 = 0;
  if (!CGRectIsEmpty(v66) && fabs(v47) >= 0.005 && fabs(v48) >= 0.005)
  {
    if (v44)
    {
      objc_msgSend_shadowBoundsForRect_additionalAngle_(shadowCopy, v49, v45, v46, v47, v48, 180.0);
      v72.origin.x = v51;
      v72.origin.y = v52;
      v72.size.width = v53;
      v72.size.height = v54;
      v67.origin.x = v45;
      v67.origin.y = v46;
      v67.size.width = v47;
      v67.size.height = v48;
      v68 = CGRectUnion(v67, v72);
      v45 = v68.origin.x;
      v46 = v68.origin.y;
      v47 = v68.size.width;
      v48 = v68.size.height;
    }

    v55 = *(MEMORY[0x277CBF398] + 16);
    v60 = *MEMORY[0x277CBF398];
    v61 = v55;
    v50 = objc_msgSend_newCGLayerForUserSpaceRect_inContext_outUserSpaceLayerBounds_(TSCHRenderUtilities, v49, v45, v46, v47, context, &v60, v48);
    Context = CGLayerGetContext(v50);
    TSDCGContextShouldRenderHDRContent();
    TSDCGContextSetShouldRenderHDRContent();
    CGContextSaveGState(Context);
    CGContextSetBlendMode(Context, kCGBlendModeNormal);
    PathBoundingBox = CGPathGetPathBoundingBox(wedgePath);
    objc_msgSend_p_drawWedgePathIntoContext_path_fill_stroke_opacity_withinBounds_(self, v57, 1.0, PathBoundingBox.origin.x, PathBoundingBox.origin.y, Context, path, fillCopy, strokeCopy, PathBoundingBox.size.width, PathBoundingBox.size.height);
    CGContextRestoreGState(Context);
    if (bounds)
    {
      v58 = v61;
      bounds->origin = v60;
      bounds->size = v58;
    }
  }

  return v50;
}

- (void)p_renderIntoContext:(CGContext *)context visible:(CGRect)visible
{
  if (!context)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, visible.origin.x, visible.origin.y, visible.size.width, "[TSCHChartRadialElementsRenderer p_renderIntoContext:visible:]", visible.size.height);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 323, 0, "invalid nil value for '%{public}s'", "pContext");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  v21 = objc_msgSend_chartRep(self, a2, visible.origin.x, visible.origin.y, visible.size.width, visible.size.height);
  v26 = objc_msgSend_renderSeriesIndexSet(v21, v22, v23, v24, v25);
  if (objc_msgSend_count(v26, v27, v28, v29, v30))
  {
    HasBackgroundsSuppressed = TSDCGContextHasBackgroundsSuppressed();
    v35 = objc_msgSend_model(self, v31, v32, v33, v34);
    v155 = objc_msgSend_numberOfSeries(v35, v36, v37, v38, v39);
    objc_opt_class();
    v44 = objc_msgSend_layoutItem(self, v40, v41, v42, v43);
    v45 = TSUDynamicCast();

    if (!v45)
    {
      v50 = MEMORY[0x277D81150];
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "[TSCHChartRadialElementsRenderer p_renderIntoContext:visible:]");
      v52 = v51 = v35;
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialElementsRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v58, v59, v60, v61, v52, v57, 336, 0, "invalid nil value for '%{public}s'", "layoutItem");

      v35 = v51;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
    }

    isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v21, v46, v47, v48, v49);
    objc_msgSend_tLayerRectForContext_(self, v67, v68, v69, v70, context);
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    objc_msgSend_viewScale(self, v79, v71, v73, v75);
    v81 = v80;
    v89 = &dword_2764D6000;
    if (objc_msgSend_renderElements(v21, v82, v80, v83, v84))
    {
      v156 = v35;
      v90 = objc_msgSend_model(self, v85, v86, v87, v88);
      if (objc_msgSend_groupedShadowsForChartModel_(TSCHStyleUtilities, v91, v92, v93, v94, v90))
      {
        v99 = 1;
      }

      else
      {
        v99 = objc_msgSend_shadowsEnabled(v21, v95, v96, v97, v98) ^ 1;
      }

      Context = 0;
      v102 = *(MEMORY[0x277CBF398] + 16);
      v177 = *MEMORY[0x277CBF398];
      *v178 = v102;
      v157 = isDrawingIntoPDF;
      if (v99)
      {
        v103 = 0;
        v89 = &dword_2764D6000;
      }

      else
      {
        v89 = &dword_2764D6000;
        if (isDrawingIntoPDF)
        {
          v103 = 0;
        }

        else
        {
          v103 = 0;
          if ((HasBackgroundsSuppressed & 1) == 0)
          {
            v104 = objc_msgSend_newCGLayerForUserSpaceRect_inContext_outUserSpaceLayerBounds_(TSCHRenderUtilities, v100, v72, v74, v76, context, &v177, v78);
            v103 = v104;
            if (v104)
            {
              Context = CGLayerGetContext(v104);
              if (Context)
              {
                TSDCGContextAssociatedScreenScale();
                TSDSetCGContextInfo();
                sub_27631FDD8(Context, 1, v105, v106, v107);
              }
            }

            else
            {
              Context = 0;
            }
          }
        }
      }

      CGContextSaveGState(context);
      if (!v99 || (HasBackgroundsSuppressed & 1) != 0)
      {
        CGContextSetBlendMode(context, kCGBlendModeNormal);
        v179.origin.x = v72;
        v179.origin.y = v74;
        v179.size.width = v76;
        v179.size.height = v78;
        CGContextBeginTransparencyLayerWithRect(context, v179, 0);
      }

      else
      {
        if (v155)
        {
          v112 = objc_msgSend_seriesAtIndex_(v35, v108, v109, v110, v111, 0);
          objc_msgSend_objectValueForProperty_(v112, v113, v114, v115, v116, 1172);
        }

        else
        {
          v112 = 0;
          objc_msgSend_objectValueForProperty_(0, v108, v109, v110, v111, 1172);
        }
        v117 = ;
        if (objc_msgSend_hasShadow_(TSCHStyleUtilities, v118, v119, v120, v121, v117) && objc_msgSend_shadowsEnabled(v21, v122, v123, v124, v125) && (objc_msgSend_renderElementsWithoutShadows(v21, v126, v127, v128, v129) & 1) == 0 && (objc_msgSend_renderElementsShadowOnly(v21, v130, v131, v132, v133) & 1) == 0)
        {
          v138 = sub_27631FD2C(context, v134, v135, v136, v137);
          objc_msgSend_applyToContext_viewScale_flipped_(v117, v139, v81, v140, v141, context, v138);
        }

        v180.origin.x = v72;
        v180.origin.y = v74;
        v180.size.width = v76;
        v180.size.height = v78;
        CGContextBeginTransparencyLayerWithRect(context, v180, 0);
        CGContextSetBlendMode(context, kCGBlendModePlusLighter);

        v35 = v156;
        v89 = &dword_2764D6000;
      }

      v163[0] = MEMORY[0x277D85DD0];
      v163[1] = *(v89 + 2);
      v163[2] = sub_27625DA84;
      v163[3] = &unk_27A6B7000;
      v163[4] = self;
      v164 = v35;
      v165 = v45;
      contextCopy = context;
      v174 = HasBackgroundsSuppressed;
      v175 = v157;
      v176 = v99;
      v168 = v81;
      v169 = v72;
      v170 = v74;
      v171 = v76;
      v172 = v78;
      v166 = v21;
      v173 = Context;
      objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v26, v142, v143, v144, v145, 2, v163);
      if ((v99 & 1) == 0 && Context && (v157 & 1) == 0)
      {
        CGContextSaveGState(context);
        CGContextSetBlendMode(context, kCGBlendModePlusLighter);
        objc_msgSend_drawCGLayer_inContext_rect_(TSCHRenderUtilities, v146, *&v177, *(&v177 + 1), v178[0], v103, context, v178[1]);
        sub_27631FF58(Context, v147, v148, v149, v150);
        TSDClearCGContextInfo();
        CGContextRestoreGState(context);
      }

      if (v103)
      {
        CGLayerRelease(v103);
      }

      CGContextEndTransparencyLayer(context);
      CGContextRestoreGState(context);
    }

    if (objc_msgSend_renderLabels(v21, v85, v86, v87, v88))
    {
      v159[0] = MEMORY[0x277D85DD0];
      v159[1] = *(v89 + 2);
      v159[2] = sub_27625E308;
      v159[3] = &unk_27A6B7028;
      v159[4] = self;
      v160 = v45;
      contextCopy2 = context;
      v161 = v35;
      objc_msgSend_enumerateIndexesWithOptions_usingBlock_(v26, v151, v152, v153, v154, 2, v159);
    }
  }
}

- (void)renderLabelsWithWedgeLayoutInfo:(id)info paragraphStyle:(id)style context:(CGContext *)context
{
  v82 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  styleCopy = style;
  objc_opt_class();
  v14 = objc_msgSend_layoutItem(self, v10, v11, v12, v13);
  v15 = TSUDynamicCast();

  v75 = v15;
  v20 = objc_msgSend_model(v15, v16, v17, v18, v19);
  v25 = objc_msgSend_wedgeElement(infoCopy, v21, v22, v23, v24);
  v30 = objc_msgSend_series(v25, v26, v27, v28, v29);
  v35 = objc_msgSend_seriesIndex(v30, v31, v32, v33, v34);
  v40 = objc_msgSend_pieSeriesModelCacheForSeries_(v20, v36, v37, v38, v39, v35);

  if (!v40)
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "[TSCHChartRadialElementsRenderer renderLabelsWithWedgeLayoutInfo:paragraphStyle:context:]");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialElementsRenderer.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v52, v53, v54, v55, v46, v51, 614, 0, "invalid nil value for '%{public}s'", "seriesModelCache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57, v58, v59);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v60 = objc_msgSend_pieLabels(infoCopy, v41, 0.0, v43, v44);
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, v62, v63, v64, &v77, v81, 16);
  if (v65)
  {
    v70 = v65;
    v71 = *v78;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v78 != v71)
        {
          objc_enumerationMutation(v60);
        }

        v73 = *(*(&v77 + 1) + 8 * i);
        if (infoCopy)
        {
          objc_msgSend_combinedLabelTransformIntoPieChartCoordinateSpace(infoCopy, v67, v68, v69);
        }

        else
        {
          v74 = 0.0;
          memset(v76, 0, sizeof(v76));
        }

        objc_msgSend_renderLabelWithPieLabel_combinedLabelTransform_context_paragraphStyle_(self, v66, v74, v68, v69, v73, v76, context, styleCopy);
      }

      v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v66, v67, v68, v69, &v77, v81, 16);
    }

    while (v70);
  }
}

- (void)renderLabelWithPieLabel:(id)label combinedLabelTransform:(CGAffineTransform *)transform context:(CGContext *)context paragraphStyle:(id)style
{
  labelCopy = label;
  styleCopy = style;
  objc_msgSend_tLayerRectForContext_(self, v12, v13, v14, v15, context);
  v19 = v18;
  v20 = v16;
  v21 = v17;
  v23 = v22;
  memset(&v57, 0, sizeof(v57));
  if (labelCopy)
  {
    objc_msgSend_transform(labelCopy, 0.0, v16, v17);
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v24 = *&transform->c;
  *&v55.a = *&transform->a;
  *&v55.c = v24;
  *&v55.tx = *&transform->tx;
  CGAffineTransformConcat(&v57, &v55, &t2);
  objc_msgSend_erasableFrame(labelCopy, v25, v26, v27, v28);
  if (!CGRectIsNull(v58))
  {
    objc_msgSend_erasableFrame(labelCopy, v29, v30, v31, v32);
    t2 = v57;
    v62 = CGRectApplyAffineTransform(v59, &t2);
    v60.origin.x = v19;
    v60.origin.y = v20;
    v60.size.width = v21;
    v60.size.height = v23;
    if (CGRectIntersectsRect(v60, v62))
    {
      CGContextSaveGState(context);
      t2 = v57;
      CGContextConcatCTM(context, &t2);
      objc_msgSend_erasableFrame(labelCopy, v33, v34, v35, v36);
      CGContextBeginTransparencyLayerWithRect(context, v61, 0);
      v41 = objc_msgSend_sharedText(TSCHText, v37, v38, v39, v40);
      v46 = objc_msgSend_title(labelCopy, v42, v43, v44, v45);
      objc_msgSend_viewScale(self, v47, v48, v49, v50);
      objc_msgSend_drawText_paragraphStyle_intoContext_viewScale_(v41, v51, v52, v53, v54, v46, styleCopy, context);

      CGContextEndTransparencyLayer(context);
      CGContextRestoreGState(context);
    }
  }
}

- (void)drawOnlySeriesIndicies:(id)indicies
{
  if (self->_partialRenderingSeriesIndexSet != indicies)
  {
    v7 = objc_msgSend_copy(indicies, a2, v3, v4, v5);
    partialRenderingSeriesIndexSet = self->_partialRenderingSeriesIndexSet;
    self->_partialRenderingSeriesIndexSet = v7;
  }

  self->_partialRenderingInclusionFlag = 1;
}

- (void)drawAllButSeriesIndicies:(id)indicies
{
  if (self->_partialRenderingSeriesIndexSet != indicies)
  {
    v7 = objc_msgSend_copy(indicies, a2, v3, v4, v5);
    partialRenderingSeriesIndexSet = self->_partialRenderingSeriesIndexSet;
    self->_partialRenderingSeriesIndexSet = v7;
  }

  self->_partialRenderingInclusionFlag = 0;
}

- (void)drawAll
{
  partialRenderingSeriesIndexSet = self->_partialRenderingSeriesIndexSet;
  self->_partialRenderingSeriesIndexSet = 0;

  self->_partialRenderingInclusionFlag = 0;
}

- (CGRect)chartLayoutSpaceRenderingRect
{
  if (self->_partialRenderingInclusionFlag)
  {
    objc_opt_class();
    v7 = objc_msgSend_layoutItem(self, v3, v4, v5, v6);
    v8 = TSUDynamicCast();

    if (!v8)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCHChartRadialElementsRenderer chartLayoutSpaceRenderingRect]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartRadialElementsRenderer.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 671, 0, "invalid nil value for '%{public}s'", "layoutItem");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }

    v64 = 0;
    v65 = &v64;
    v66 = 0x4010000000;
    v67 = &unk_27657B92B;
    v28 = *(MEMORY[0x277CBF398] + 16);
    v68 = *MEMORY[0x277CBF398];
    v69 = v28;
    v29 = objc_msgSend_model(self, v9, *&v68, *&v28, v12);
    v34 = objc_msgSend_seriesList(v29, v30, v31, v32, v33);

    partialRenderingSeriesIndexSet = self->_partialRenderingSeriesIndexSet;
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = sub_27625EFE0;
    v60[3] = &unk_27A6B7050;
    v36 = v34;
    v61 = v36;
    v37 = v8;
    v62 = v37;
    v63 = &v64;
    objc_msgSend_enumerateIndexesWithOptions_usingBlock_(partialRenderingSeriesIndexSet, v38, v39, v40, v41, 2, v60);
    if (CGRectIsNull(v65[1]))
    {
      v59.receiver = self;
      v59.super_class = TSCHChartRadialElementsRenderer;
      [(TSCHRenderer *)&v59 chartLayoutSpaceRenderingRect];
      x = v42;
      y = v44;
      width = v46;
      height = v48;
      p_x = &v65->origin.x;
      v65[1].origin.x = v42;
      p_x[5] = v44;
      p_x[6] = v46;
      p_x[7] = v48;
    }

    else
    {
      x = v65[1].origin.x;
      y = v65[1].origin.y;
      width = v65[1].size.width;
      height = v65[1].size.height;
    }

    _Block_object_dispose(&v64, 8);
  }

  else
  {
    v70.receiver = self;
    v70.super_class = TSCHChartRadialElementsRenderer;
    [(TSCHRenderer *)&v70 chartLayoutSpaceRenderingRect];
    x = v51;
    y = v52;
    width = v53;
    height = v54;
  }

  v55 = x;
  v56 = y;
  v57 = width;
  v58 = height;
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

- (double)p_calculateIntersectionAreaForRectangle:(CGRect)rectangle circleCenter:(CGPoint)center circleRadius:(double)radius
{
  y = center.y;
  x = center.x;
  height = rectangle.size.height;
  width = rectangle.size.width;
  v10 = rectangle.origin.y;
  v11 = rectangle.origin.x;
  MaxY = CGRectGetMaxY(rectangle);
  v38.origin.x = v11;
  v38.origin.y = v10;
  v38.size.width = width;
  v38.size.height = height;
  MaxX = CGRectGetMaxX(v38);
  v14 = MaxX;
  v15 = MaxY < y && MaxX < x;
  if (!v15 || (TSUDistance(), v17 = v16, result = 0.0, v17 <= radius))
  {
    v19 = v10 > y && v14 < x;
    if (!v19 || (TSUDistance(), v21 = v20, result = 0.0, v21 <= radius))
    {
      if (MaxY >= y || v11 <= x || (TSUDistance(), v23 = v22, result = 0.0, v23 <= radius))
      {
        if (v10 <= y || v11 <= x || (TSUDistance(), v25 = v24, result = 0.0, v25 <= radius))
        {
          if (y >= v10 && y <= MaxY || (vabdd_f64(y, v10) <= vabdd_f64(y, MaxY) ? (v26 = v10) : (v26 = MaxY), radiusCopy = radius, vabdd_f64(v26, y) <= radius))
          {
            TSURoundForScale();
            v31 = v30;
            TSURoundForScale();
            v28 = v32;
            v29 = v31 + 0.01;
            radiusCopy = radius;
          }

          else
          {
            v28 = 0.0;
            v29 = 0.01;
          }

          result = 0.0;
          if (v29 <= v28)
          {
            v33 = radiusCopy;
            v34 = (v33 * v33);
            result = 0.0;
            do
            {
              v35 = sqrt(v34 - (v29 + -0.005 - x) * (v29 + -0.005 - x));
              v36 = y - v35;
              if (v10 >= y - v35)
              {
                v36 = v10;
              }

              v37 = y + v35;
              if (MaxY < v37)
              {
                v37 = MaxY;
              }

              result = result + (v37 - v36) * 0.01;
              v29 = v29 + 0.01;
            }

            while (v29 <= v28);
          }
        }
      }
    }
  }

  return result;
}

- (id)allRenderingFills
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_model(self, v4, v5, v6, v7);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = objc_msgSend_seriesList(v8, v9, 0.0, v10, v11, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v46, v50, 16);
  if (v17)
  {
    v22 = v17;
    v23 = *v47;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v12);
        }

        v25 = objc_msgSend_seriesIndex(*(*(&v46 + 1) + 8 * i), v18, v19, v20, v21);
        v30 = objc_msgSend_pieSeriesModelCacheForSeries_(v8, v26, v27, v28, v29, v25);
        v36 = objc_msgSend_seriesFill(v30, v31, v32, v33, v34);
        if (v36)
        {
          objc_msgSend_addObject_(v3, v35, v37, v38, v39, v36);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, v19, v20, v21, &v46, v50, 16);
    }

    while (v22);
  }

  v44 = objc_msgSend_copy(v3, v40, v41, v42, v43);

  return v44;
}

@end