@interface TSTStarRatingRenderer
+ (CGPath)p_newStarPath:(double)path;
+ (void)renderRating:(double)rating intoContext:(CGContext *)context rect:(CGRect)rect showDots:(BOOL)dots color:(CGColor *)color useMinimalSpace:(BOOL)space;
@end

@implementation TSTStarRatingRenderer

+ (CGPath)p_newStarPath:(double)path
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

+ (void)renderRating:(double)rating intoContext:(CGContext *)context rect:(CGRect)rect showDots:(BOOL)dots color:(CGColor *)color useMinimalSpace:(BOOL)space
{
  spaceCopy = space;
  dotsCopy = dots;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  CGContextClipToRectSafe();
  if (width / 5.0 >= height)
  {
    v20 = height;
  }

  else
  {
    v20 = width / 5.0;
  }

  v21 = objc_msgSend_p_newStarPath_(self, v17, v18, v19, v20 / 2.5, *&rating);
  BoundingBox = CGPathGetBoundingBox(v21);
  v37 = BoundingBox.size.width;
  v38 = BoundingBox.origin.x;
  v35 = BoundingBox.size.height;
  v36 = BoundingBox.origin.y;
  v22 = v20 / 20.0;
  if (v20 / 20.0 < 1.0)
  {
    v22 = 1.0;
  }

  CGContextSetLineWidth(context, v22);
  if (spaceCopy)
  {
    v23 = v20;
  }

  else
  {
    v23 = width / 5.0;
  }

  v24 = width / 5.0 * 0.5;
  v25 = 0.5;
  if (spaceCopy)
  {
    v24 = v20 / 2.5;
  }

  v26 = x + v24;
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MidY = CGRectGetMidY(v41);
  CGContextTranslateCTM(context, v26, MidY + v20 * 0.0500000007);
  v28 = 0;
  if (!dotsCopy)
  {
    v25 = 0.75;
  }

  v29 = 0.25;
  v34 = v25;
  do
  {
    CGContextBeginPath(context);
    v30 = v33 - v28;
    if (v30 >= v25)
    {
      CGContextAddPathSafe();
      CGContextSetFillColorWithColor(context, color);
      CGContextFillPath(context);
      goto LABEL_24;
    }

    if (v30 > v29 && !dotsCopy)
    {
      v31 = v37 * v30;
      v42.origin.x = v38;
      v42.origin.y = v36;
      v42.size.width = v31;
      v42.size.height = v35;
      CGRectGetMaxX(v42);
      v43.origin.x = v38;
      v43.origin.y = v36;
      v43.size.width = v37;
      v43.size.height = v35;
      CGRectGetMaxX(v43);
      v44.origin.x = v38;
      v44.origin.y = v36;
      v44.size.width = v31;
      v44.size.height = v35;
      CGRectGetMaxX(v44);
      CGContextSaveGState(context);
      CGContextClipToRectSafe();
      CGContextAddPathSafe();
      CGContextSetFillColorWithColor(context, color);
      CGContextFillPath(context);
      CGContextRestoreGState(context);
      CGContextSaveGState(context);
      v25 = v34;
      v29 = 0.25;
      CGContextClipToRectSafe();
      CGContextSaveGState(context);
      CGContextAddPathSafe();
      CGContextClip(context);
      CGContextSaveGState(context);
      CGContextAddPathSafe();
      CGContextSetStrokeColorWithColor(context, color);
      CGContextStrokePath(context);
      CGContextRestoreGState(context);
LABEL_22:
      CGContextRestoreGState(context);
      goto LABEL_23;
    }

    CGContextSaveGState(context);
    if (!dotsCopy)
    {
      CGContextAddPathSafe();
      CGContextClip(context);
      CGContextSaveGState(context);
      CGContextAddPathSafe();
      CGContextSetStrokeColorWithColor(context, color);
      CGContextStrokePath(context);
      goto LABEL_22;
    }

    CGContextSetFillColorWithColor(context, color);
    v45.origin.x = v20 * 0.25 * -0.5;
    v45.size.width = v20 * 0.25;
    v45.origin.y = v45.origin.x;
    v45.size.height = v20 * 0.25;
    CGContextFillEllipseInRect(context, v45);
    CGContextDrawPath(context, kCGPathFillStroke);
LABEL_23:
    CGContextRestoreGState(context);
LABEL_24:
    CGContextTranslateCTM(context, v23, 0.0);
    ++v28;
  }

  while (v28 != 5);
  CGPathRelease(v21);

  CGContextRestoreGState(context);
}

@end