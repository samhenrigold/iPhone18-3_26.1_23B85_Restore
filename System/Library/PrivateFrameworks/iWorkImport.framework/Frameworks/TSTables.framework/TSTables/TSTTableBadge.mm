@interface TSTTableBadge
+ (id)badgeWithType:(int)type color:(id)color viewScale:(double)scale frame:(CGRect)frame;
- (CGRect)frame;
- (double)p_commentBrightnessFactor;
- (void)drawInContext:(CGContext *)context;
- (void)p_drawCellCommentBadgeInContext:(CGContext *)context;
- (void)p_drawCellErrorIndicatorInContext:(CGContext *)context;
- (void)p_drawCellWarningBadgeInContext:(CGContext *)context;
@end

@implementation TSTTableBadge

- (void)p_drawCellErrorIndicatorInContext:(CGContext *)context
{
  objc_msgSend_viewScale(self, a2, context, v3);
  v7 = v6;
  objc_msgSend_frame(self, v8, v9, v10);
  v17 = sub_221445528(v11, v12, v13, v14);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v7 * v20;
  if (v7 * v20 <= 2.0)
  {
    objc_msgSend_stringByAppendingString_(@"TSTErrorMessageIcon", v15, @"-2", v16);
  }

  else if (v24 <= 4.0)
  {
    objc_msgSend_stringByAppendingString_(@"TSTErrorMessageIcon", v15, @"-4", v16);
  }

  else if (v24 <= 8.0)
  {
    objc_msgSend_stringByAppendingString_(@"TSTErrorMessageIcon", v15, @"-8", v16);
  }

  else if (v24 <= 16.0)
  {
    objc_msgSend_stringByAppendingString_(@"TSTErrorMessageIcon", v15, @"-16", v16);
  }

  else if (v24 <= 32.0)
  {
    objc_msgSend_stringByAppendingString_(@"TSTErrorMessageIcon", v15, @"-32", v16);
  }

  else
  {
    objc_msgSend_stringByAppendingString_(@"TSTErrorMessageIcon", v15, @"-64", v16);
  }
  v25 = ;
  v26 = sub_2214453B4(v25);

  memset(&v35, 0, sizeof(v35));
  CGContextGetUserSpaceToDeviceSpaceTransform(&v35, context);
  v33 = v35;
  memset(&v34, 0, sizeof(v34));
  CGAffineTransformInvert(&v34, &v33);
  v36.origin.x = v17;
  v36.origin.y = v19;
  v36.size.width = v21;
  v36.size.height = v23;
  CGRectGetMinX(v36);
  v37.origin.x = v17;
  v37.origin.y = v19;
  v37.size.width = v21;
  v37.size.height = v23;
  CGRectGetMaxY(v37);
  TSURoundedPoint();
  v31 = v34.ty + v27 * v34.d + v34.b * v28;
  v32 = v34.tx + v27 * v34.c + v34.a * v28;
  TSURoundedSize();
  CGContextSaveGState(context);
  CGContextClipToRectSafe();
  CGContextTranslateCTM(context, v32, v31);
  CGContextScaleCTM(context, 1.0, -1.0);
  v30 = objc_msgSend_CGImageForSize_inContext_orContentsScaleProvider_(v26, v29, context, 0, v21, v23);
  TSURectWithSize();
  CGContextDrawImage(context, v38, v30);
  CGContextRestoreGState(context);
}

- (double)p_commentBrightnessFactor
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  result = 0.800000012;
  if (v2)
  {
    return 0.640000019;
  }

  return result;
}

- (void)p_drawCellCommentBadgeInContext:(CGContext *)context
{
  objc_msgSend_frame(self, a2, context, v3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v55 = objc_msgSend_color(self, v14, v15, v16);
  objc_msgSend_p_commentBrightnessFactor(self, v17, v18, v19);
  v21 = v20;
  v22 = objc_alloc(MEMORY[0x277D81180]);
  objc_msgSend_hueComponent(v55, v23, v24, v25);
  v27 = v26;
  objc_msgSend_saturationComponent(v55, v28, v29, v30);
  v32 = v31;
  objc_msgSend_brightnessComponent(v55, v33, v34, v35);
  v37 = v21 * v36;
  objc_msgSend_alphaComponent(v55, v38, v39, v40);
  v45 = objc_msgSend_initWithHue_saturation_brightness_alpha_(v22, v41, v42, v43, v27, v32, v37, v44);
  CGContextSaveGState(context);
  v46 = sub_2214458D8(v7, v9, v11, v13);
  CGContextAddPathSafe();
  v50 = objc_msgSend_CGColor(v45, v47, v48, v49);
  CGContextSetStrokeColorWithColor(context, v50);
  CGContextSetLineWidth(context, 0.5);
  v54 = objc_msgSend_CGColor(v55, v51, v52, v53);
  CGContextSetFillColorWithColor(context, v54);
  CGContextDrawPath(context, kCGPathFillStroke);
  CGPathRelease(v46);
  CGContextRestoreGState(context);
}

- (void)p_drawCellWarningBadgeInContext:(CGContext *)context
{
  v6 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, context, v3);
  v10 = objc_msgSend_showsCellWarningIndicator(v6, v7, v8, v9);

  if (v10)
  {
    objc_msgSend_frame(self, v11, v12, v13);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    CGRectGetMinX(v20);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGRectGetMinY(v21);
    CGContextSaveGState(context);
    Mutable = CGPathCreateMutable();
    CGPathMoveToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathAddLineToPointSafe();
    CGPathCloseSubpath(Mutable);
    CGContextAddPathSafe();
    CGContextSetRGBFillColor(context, 0.0700000003, 0.400000006, 0.99000001, 0.976000011);
    CGContextFillPath(context);
    CGPathRelease(Mutable);

    CGContextRestoreGState(context);
  }
}

+ (id)badgeWithType:(int)type color:(id)color viewScale:(double)scale frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = *&type;
  colorCopy = color;
  v13 = objc_alloc_init(TSTTableBadge);
  objc_msgSend_setBadgeType_(v13, v14, v11, v15);
  objc_msgSend_setColor_(v13, v16, colorCopy, v17);

  objc_msgSend_setViewScale_(v13, v18, v19, v20, scale);
  objc_msgSend_setFrame_(v13, v21, v22, v23, x, y, width, height);

  return v13;
}

- (void)drawInContext:(CGContext *)context
{
  v6 = objc_msgSend_badgeType(self, a2, context, v3);
  switch(v6)
  {
    case 3:

      MEMORY[0x2821F9670](self, sel_p_drawCellErrorIndicatorInContext_, context, v7);
      break;
    case 2:

      MEMORY[0x2821F9670](self, sel_p_drawCellWarningBadgeInContext_, context, v7);
      break;
    case 1:

      MEMORY[0x2821F9670](self, sel_p_drawCellCommentBadgeInContext_, context, v7);
      break;
  }
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end