@interface AKHeartAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect;
+ (CGPath)_newPathScaledToModelSpaceForAnnotation:(id)annotation;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKHeartAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [annotationCopy strokeWidth];
  v13 = v12 * -4.0;
  v39.origin.x = v5;
  v39.origin.y = v7;
  v39.size.width = v9;
  v39.size.height = v11;
  v40 = CGRectInset(v39, v13, v13);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  [annotationCopy rotationAngle];
  [AKGeometryHelper boundsOfRotatedRectangle:x angle:y, width, height, v18];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if ([annotationCopy hasShadow])
  {
    [AKAnnotationRendererUtilities outsetRectForShadow:annotationCopy onAnnotation:v20, v22, v24, v26];
    v20 = v27;
    v22 = v28;
    v24 = v29;
    v26 = v30;
  }

  v41.origin.x = v20;
  v41.origin.y = v22;
  v41.size.width = v24;
  v41.size.height = v26;
  v42 = CGRectInset(v41, -1.0, -1.0);
  v31 = v42.origin.x;
  v32 = v42.origin.y;
  v33 = v42.size.width;
  v34 = v42.size.height;

  v35 = v31;
  v36 = v32;
  v37 = v33;
  v38 = v34;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  annotationCopy = annotation;
  [annotationCopy strokeWidth];
  v11 = v10;
  [annotationCopy originalModelBaseScaleFactor];
  v13 = v12;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  if (CGRectIsEmpty(v26))
  {
    [annotationCopy rectangle];
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v28 = CGRectInset(v27, v11 * 0.5 + v13 * 2.0, v11 * 0.5 + v13 * 2.0);
  v18 = v28.origin.x;
  v19 = v28.origin.y;
  v20 = v28.size.width;
  v21 = v28.size.height;

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  annotationCopy = annotation;
  [annotationCopy strokeWidth];
  v10 = v9 * 0.5;
  [annotationCopy originalModelBaseScaleFactor];
  v12 = v11;

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;

  return CGRectInset(*&v13, -(v10 + v12 * 2.0), -(v10 + v12 * 2.0));
}

+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  annotationCopy = annotation;
  [annotationCopy strokeWidth];
  v11 = v10 * 0.5;
  [annotationCopy originalModelBaseScaleFactor];
  v13 = v11 + v12 * 2.0;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v38 = CGRectInset(v37, v13, v13);
  v14 = v38.origin.x;
  v15 = v38.origin.y;
  v16 = v38.size.width;
  v17 = v38.size.height;
  v32 = CGRectGetWidth(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v18 = CGRectGetWidth(v39);
  Mutable = CGPathCreateMutable();
  if (![AKGeometryHelper isUnpresentableRect:v14, v15, v16, v17])
  {
    v20 = v32 / v18;
    v21 = [self _newPathScaledToModelSpaceForAnnotation:annotationCopy];
    BoundingBox = CGPathGetBoundingBox(v21);
    v22 = BoundingBox.origin.x;
    v23 = BoundingBox.origin.y;
    v24 = BoundingBox.size.width;
    v25 = BoundingBox.size.height;
    memset(&m, 0, sizeof(m));
    v26 = -CGRectGetMidX(BoundingBox);
    v41.origin.x = v22;
    v41.origin.y = v23;
    v41.size.width = v24;
    v41.size.height = v25;
    MidY = CGRectGetMidY(v41);
    CGAffineTransformMakeTranslation(&m, v26, -MidY);
    CGAffineTransformMakeScale(&t2, v20, v20);
    t1 = m;
    CGAffineTransformConcat(&v35, &t1, &t2);
    m = v35;
    v42.origin.x = v22;
    v42.origin.y = v23;
    v42.size.width = v24;
    v42.size.height = v25;
    MidX = CGRectGetMidX(v42);
    v43.origin.x = v22;
    v43.origin.y = v23;
    v43.size.width = v24;
    v43.size.height = v25;
    v29 = CGRectGetMidY(v43);
    CGAffineTransformMakeTranslation(&t2, MidX, v29);
    t1 = m;
    CGAffineTransformConcat(&v35, &t1, &t2);
    m = v35;
    CGPathAddPath(Mutable, &m, v21);
    CGPathRelease(v21);
  }

  MutableCopy = CGPathCreateMutableCopy(Mutable);
  CGPathRelease(Mutable);

  return MutableCopy;
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  annotationCopy = annotation;
  optionsCopy = options;
  nilCopy = nil;
  CGContextSaveGState(context);
  [optionsCopy allowHDR];
  v13 = [self _newPathScaledToModelSpaceForAnnotation:annotationCopy];
  if (v13)
  {
    v14 = v13;
    [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:objc_msgSend(optionsCopy pageControllerOrNil:{"forDisplay"), nilCopy}];
    hasShadow = [annotationCopy hasShadow];
    if (hasShadow)
    {
      [AKAnnotationRendererUtilities beginShadowInContext:context forAnnotation:annotationCopy];
    }

    CGContextSaveGState(context);
    memset(&v30[1], 0, sizeof(CGAffineTransform));
    objc_msgSend_rotationTransformForRectangularAnnotation_hasRotation_(AKGeometryHelper);
    v30[0] = v30[1];
    CGContextConcatCTM(context, v30);
    CGContextSaveGState(context);
    fillColor = [annotationCopy fillColor];
    if (fillColor)
    {
      v17 = fillColor;
      fillColor2 = [annotationCopy fillColor];
      Alpha = CGColorGetAlpha([fillColor2 CGColor]);

      if (Alpha != 0.0)
      {
        v20 = [annotationCopy fillColorForOptions:optionsCopy];
        CGContextSetFillColorWithColor(context, [v20 CGColor]);

        CGContextAddPath(context, v14);
        CGContextFillPath(context);
      }
    }

    strokeColor = [annotationCopy strokeColor];

    if (strokeColor)
    {
      if ([annotationCopy brushStyle])
      {
        brushStyle = [annotationCopy brushStyle];
        strokeColor2 = [annotationCopy strokeColor];
        [annotationCopy strokeWidth];
        v24 = [AKTSDBrushStroke strokeWithType:brushStyle color:strokeColor2 width:?];

        v25 = [AKTSDBezierPath bezierPathWithCGPath:v14];
        v26 = objc_alloc_init(AKTSDShape);
        [(AKTSDShape *)v26 setStroke:v24];
        [(AKTSDShape *)v26 setPath:v25];
        [(AKTSDShape *)v26 drawInContext:context];
      }

      else
      {
        [annotationCopy strokeWidth];
        v28 = v27;
        v29 = [annotationCopy strokeColorForOptions:optionsCopy];
        CGContextSetStrokeColorWithColor(context, [v29 CGColor]);

        [AKAnnotationRendererUtilities setStandardLineStateInContext:context forLineWidth:v28];
        if ([annotationCopy isDashed])
        {
          [AKAnnotationRendererUtilities setStandardLineDashInContext:context forLineWidth:v28];
        }

        CGContextAddPath(context, v14);
        CGContextStrokePath(context);
      }
    }

    CGContextRestoreGState(context);
    [AKTextAnnotationRenderHelper renderAnnotationText:annotationCopy intoContext:context options:optionsCopy pageControllerOrNil:nilCopy];
    CGContextRestoreGState(context);
    if (hasShadow)
    {
      [AKAnnotationRendererUtilities endShadowInContext:context];
    }

    CGPathRelease(v14);
  }

  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness
{
  y = border.y;
  x = border.x;
  annotationCopy = annotation;
  v10 = [self _newPathScaledToModelSpaceForAnnotation:annotationCopy];
  [annotationCopy strokeWidth];
  if (thicknessCopy <= thickness)
  {
    thicknessCopy = thickness;
  }

  v12 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v10 withStrokeWidth:thicknessCopy];
  memset(&m, 0, sizeof(m));
  objc_msgSend_rotationTransformForRectangularAnnotation_hasRotation_(AKGeometryHelper);

  v15 = m;
  CGAffineTransformInvert(&v16, &v15);
  m = v16;
  v18.x = x;
  v18.y = y;
  v13 = CGPathContainsPoint(v12, &m, v18, 0);
  CGPathRelease(v12);
  CGPathRelease(v10);
  return v13;
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation
{
  y = inside.y;
  x = inside.x;
  annotationCopy = annotation;
  v8 = [self _newPathScaledToModelSpaceForAnnotation:annotationCopy];
  memset(&m, 0, sizeof(m));
  objc_msgSend_rotationTransformForRectangularAnnotation_hasRotation_(AKGeometryHelper);

  v10 = m;
  CGAffineTransformInvert(&v11, &v10);
  m = v11;
  v13.x = x;
  v13.y = y;
  LOBYTE(annotationCopy) = CGPathContainsPoint(v8, &m, v13, 0);
  CGPathRelease(v8);
  return annotationCopy;
}

+ (CGPath)_newPathScaledToModelSpaceForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [annotationCopy rectangle];
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;
  MidX = CGRectGetMidX(v65);
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  MidY = CGRectGetMidY(v66);
  +[AKGeometryHelper adjustRect:forExifOrientation:aboutCenter:](AKGeometryHelper, "adjustRect:forExifOrientation:aboutCenter:", +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [annotationCopy originalExifOrientation]), x, y, width, height, MidX, MidY);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  Mutable = CGPathCreateMutable();
  if (Mutable)
  {
    v67.origin.x = v11;
    v67.origin.y = v13;
    v67.size.width = v15;
    v67.size.height = v17;
    v19 = CGRectGetMidX(v67);
    v68.origin.x = v11;
    v68.origin.y = v13;
    v68.size.width = v15;
    v68.size.height = v17;
    MinY = CGRectGetMinY(v68);
    CGPathMoveToPoint(Mutable, 0, v19, MinY);
    v69.origin.x = v11;
    v69.origin.y = v13;
    v69.size.width = v15;
    v69.size.height = v17;
    MinX = CGRectGetMinX(v69);
    v70.origin.x = v11;
    v70.origin.y = v13;
    v70.size.width = v15;
    v70.size.height = v17;
    v22 = CGRectGetMinY(v70);
    v71.origin.x = v11;
    v71.origin.y = v13;
    v71.size.width = v15;
    v71.size.height = v17;
    v58 = 0x3FD6666666666666;
    v23 = v22 + CGRectGetHeight(v71) * 0.35;
    v72.origin.x = v11;
    v72.origin.y = v13;
    v72.size.width = v15;
    v72.size.height = v17;
    v60 = MidX;
    v24 = CGRectGetMinX(v72);
    v73.origin.x = v11;
    v73.origin.y = v13;
    v73.size.width = v15;
    v73.size.height = v17;
    v59 = MidY;
    v25 = CGRectGetMinY(v73);
    v74.origin.x = v11;
    v74.origin.y = v13;
    v74.size.width = v15;
    v74.size.height = v17;
    v26 = CGRectGetHeight(v74);
    CGPathAddQuadCurveToPoint(Mutable, 0, MinX, v23, v24, v25 + v26 * 0.7);
    v75.origin.x = v11;
    v75.origin.y = v13;
    v75.size.width = v15;
    v75.size.height = v17;
    v27 = CGRectGetMinX(v75);
    v76.origin.x = v11;
    v76.origin.y = v13;
    v76.size.width = v15;
    v76.size.height = v17;
    v28 = v27 + CGRectGetWidth(v76) * 0.01;
    v77.origin.x = v11;
    v77.origin.y = v13;
    v77.size.width = v15;
    v77.size.height = v17;
    MaxY = CGRectGetMaxY(v77);
    v78.origin.x = v11;
    v78.origin.y = v13;
    v78.size.width = v15;
    v78.size.height = v17;
    v30 = CGRectGetMinX(v78);
    v79.origin.x = v11;
    v79.origin.y = v13;
    v79.size.width = v15;
    v79.size.height = v17;
    v31 = v30 + CGRectGetWidth(v79) * 0.25;
    v80.origin.x = v11;
    v80.origin.y = v13;
    v80.size.width = v15;
    v80.size.height = v17;
    v32 = CGRectGetMaxY(v80);
    CGPathAddQuadCurveToPoint(Mutable, 0, v28, MaxY, v31, v32);
    v81.origin.x = v11;
    v81.origin.y = v13;
    v81.size.width = v15;
    v81.size.height = v17;
    v33 = CGRectGetMidX(v81);
    v82.origin.x = v11;
    v82.origin.y = v13;
    v82.size.width = v15;
    v82.size.height = v17;
    v34 = CGRectGetMaxY(v82);
    v83.origin.x = v11;
    v83.origin.y = v13;
    v83.size.width = v15;
    v83.size.height = v17;
    v35 = CGRectGetMidX(v83);
    v84.origin.x = v11;
    v84.origin.y = v13;
    v84.size.width = v15;
    v84.size.height = v17;
    v36 = CGRectGetMinY(v84);
    v85.origin.x = v11;
    v85.origin.y = v13;
    v85.size.width = v15;
    v85.size.height = v17;
    v37 = CGRectGetHeight(v85);
    CGPathAddQuadCurveToPoint(Mutable, 0, v33, v34, v35, v36 + v37 * 0.7);
    v86.origin.x = v11;
    v86.origin.y = v13;
    v86.size.width = v15;
    v86.size.height = v17;
    v38 = CGRectGetMidX(v86);
    v87.origin.x = v11;
    v87.origin.y = v13;
    v87.size.width = v15;
    v87.size.height = v17;
    v39 = CGRectGetMaxY(v87);
    v88.origin.x = v11;
    v88.origin.y = v13;
    v88.size.width = v15;
    v88.size.height = v17;
    v40 = CGRectGetMinX(v88);
    v89.origin.x = v11;
    v89.origin.y = v13;
    v89.size.width = v15;
    v89.size.height = v17;
    v41 = v40 + CGRectGetWidth(v89) * 0.75;
    v90.origin.x = v11;
    v90.origin.y = v13;
    v90.size.width = v15;
    v90.size.height = v17;
    v42 = CGRectGetMaxY(v90);
    CGPathAddQuadCurveToPoint(Mutable, 0, v38, v39, v41, v42);
    v91.origin.x = v11;
    v91.origin.y = v13;
    v91.size.width = v15;
    v91.size.height = v17;
    MaxX = CGRectGetMaxX(v91);
    v92.origin.x = v11;
    v92.origin.y = v13;
    v92.size.width = v15;
    v92.size.height = v17;
    v44 = CGRectGetMaxY(v92);
    v93.origin.x = v11;
    v93.origin.y = v13;
    v93.size.width = v15;
    v93.size.height = v17;
    v45 = CGRectGetMaxX(v93);
    v94.origin.x = v11;
    v94.origin.y = v13;
    v94.size.width = v15;
    v94.size.height = v17;
    v46 = CGRectGetMinY(v94);
    v95.origin.x = v11;
    v95.origin.y = v13;
    v95.size.width = v15;
    v95.size.height = v17;
    v47 = CGRectGetHeight(v95);
    CGPathAddQuadCurveToPoint(Mutable, 0, MaxX, v44, v45, v46 + v47 * 0.7);
    v96.origin.x = v11;
    v96.origin.y = v13;
    v96.size.width = v15;
    v96.size.height = v17;
    v48 = CGRectGetMaxX(v96);
    v97.origin.x = v11;
    v97.origin.y = v13;
    v97.size.width = v15;
    v97.size.height = v17;
    v49 = CGRectGetMinY(v97);
    v98.origin.x = v11;
    v98.origin.y = v13;
    v98.size.width = v15;
    v98.size.height = v17;
    v50 = v49 + CGRectGetHeight(v98) * 0.35;
    v99.origin.x = v11;
    v99.origin.y = v13;
    v99.size.width = v15;
    v99.size.height = v17;
    v51 = CGRectGetMidX(v99);
    v100.origin.x = v11;
    v100.origin.y = v13;
    v100.size.width = v15;
    v100.size.height = v17;
    v52 = CGRectGetMinY(v100);
    v53 = v48;
    v54 = v50;
    MidY = v59;
    MidX = v60;
    CGPathAddQuadCurveToPoint(Mutable, 0, v53, v54, v51, v52);
    CGPathCloseSubpath(Mutable);
  }

  v55 = *(MEMORY[0x277CBF2C0] + 16);
  *&v64.a = *MEMORY[0x277CBF2C0];
  *&v64.c = v55;
  *&v64.tx = *(MEMORY[0x277CBF2C0] + 32);
  if ([annotationCopy verticallyFlipped])
  {
    [annotationCopy rectangle];
    objc_msgSend_verticalFlipTransformForRect_(AKGeometryHelper);
    t1 = v64;
    CGAffineTransformConcat(&v64, &t1, &t2);
  }

  objc_msgSend_affineTransformForExifOrientation_aboutCenter_(AKGeometryHelper, MidX, MidY);
  v61 = v64;
  CGAffineTransformConcat(&t2, &v61, &t1);
  v64 = t2;
  if (Mutable)
  {
    v56 = MEMORY[0x245CAE590](Mutable, &v64);
    CGPathRelease(Mutable);
  }

  else
  {
    v56 = 0;
  }

  return v56;
}

@end