@interface TSCHChartBackgroundRenderer
- (id)allRenderingFills;
- (void)p_renderIntoContext:(CGContext *)context visible:(CGRect)visible;
- (void)p_renderIntoContext:(CGContext *)context visible:(CGRect)visible style:(id)style;
@end

@implementation TSCHChartBackgroundRenderer

- (void)p_renderIntoContext:(CGContext *)context visible:(CGRect)visible style:(id)style
{
  styleCopy = style;
  v11 = objc_msgSend_chartInfo(self, v7, v8, v9, v10);
  v16 = objc_msgSend_chartRep(self, v12, v13, v14, v15);
  v21 = objc_msgSend_chartType(v11, v17, v18, v19, v20);
  if (objc_msgSend_supportsBackgroundFill(v21, v22, v23, v24, v25))
  {
    v30 = objc_msgSend_objectValueForProperty_(styleCopy, v26, v27, v28, v29, 1076);
    v35 = objc_msgSend_objectValueForProperty_(styleCopy, v31, v32, v33, v34, 1077);
    v40 = objc_msgSend_layoutItem(self, v36, v37, v38, v39);
    objc_msgSend_rootedDrawingRect(v40, v41, v42, v43, v44);
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v57 = 0.0;
    if (v35 && objc_msgSend_shouldRender(v35, v53, v54, v55, v56))
    {
      objc_msgSend_width(v35, v58, v59, v60, v61);
      *&v62 = v62;
      v57 = *&v62;
    }

    sub_27628CB34(context, v46, v48, v50, v52, v57);
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    objc_opt_class();
    v71 = TSUDynamicCast();
    v75 = objc_msgSend_color(v71, v72, v73, v74);
    v80 = objc_msgSend_CGColor(v75, v76, v77, v78, v79);

    if (!v80 || (Alpha = CGColorGetAlpha(v80), Alpha > 0.0) || objc_msgSend_forceRenderBlankBackground(v16, v81, Alpha, v83, v84))
    {
      objc_msgSend_drawFill_inContext_frame_(TSCHRenderUtilities, v81, v64, v66, v68, v30, context, v70);
    }

    if (v35 && objc_msgSend_shouldRender(v35, v81, v85, v86, v87))
    {
      CGContextSetLineWidth(context, v57);
      CGContextSetLineCap(context, kCGLineCapButt);
      CGContextSetLineJoin(context, kCGLineJoinMiter);
      CGContextSetMiterLimit(context, 1.0);
      v91 = objc_msgSend_color(v35, v88, v89, v90);
      v96 = objc_msgSend_CGColor(v91, v92, v93, v94, v95);
      CGContextSetStrokeColorWithColor(context, v96);

      v99.origin.x = v64;
      v99.origin.y = v66;
      v99.size.width = v68;
      v99.size.height = v70;
      CGContextStrokeRect(context, v99);
    }
  }
}

- (void)p_renderIntoContext:(CGContext *)context visible:(CGRect)visible
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  v11 = objc_msgSend_chartInfo(self, a2, visible.origin.x, visible.origin.y, visible.size.width);
  objc_msgSend_p_renderIntoContext_visible_style_(self, v10, x, y, width, context, v11, height);
}

- (id)allRenderingFills
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_chartInfo(self, v4, v5, v6, v7);
  v13 = objc_msgSend_objectValueForProperty_(v8, v9, v10, v11, v12, 1076);

  if (v13)
  {
    objc_msgSend_addObject_(v3, v14, v15, v16, v17, v13);
  }

  v18 = objc_msgSend_copy(v3, v14, v15, v16, v17);

  return v18;
}

@end