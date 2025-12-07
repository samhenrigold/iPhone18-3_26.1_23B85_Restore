@interface DiagnosticHUDLayer
+ (id)layer;
- (CGRect)previewLayerVisibleRect;
- (CGSize)cameraResolution;
- (DiagnosticHUDLayer)init;
- (void)layoutSublayers;
- (void)refreshFrameIndicator;
- (void)setAdjustingFocus:(BOOL)focus pointOfInterestSupported:(BOOL)supported focusPoint:(CGPoint)point;
- (void)setBoxPoints:(id)points;
- (void)setPreviewLayer:(id)layer visibleRect:(CGRect)rect cameraResolution:(CGSize)resolution;
@end

@implementation DiagnosticHUDLayer

+ (id)layer
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (DiagnosticHUDLayer)init
{
  v54.receiver = self;
  v54.super_class = DiagnosticHUDLayer;
  v2 = [(DiagnosticHUDLayer *)&v54 init];
  if (v2)
  {
    v3 = +[CRColor greenColor];
    [(DiagnosticHUDLayer *)v2 setFreshPointColor:?];

    v4 = +[CRColor yellowColor];
    [(DiagnosticHUDLayer *)v2 setStalePointColor:?];

    layer = [MEMORY[0x277CD9F90] layer];
    [(DiagnosticHUDLayer *)v2 setCameraAreaLayer:?];

    v6 = +[CRColor blackColor];
    [v6 CGColor];
    cameraAreaLayer = [(DiagnosticHUDLayer *)v2 cameraAreaLayer];
    [cameraAreaLayer setBackgroundColor:?];

    v8 = +[CRColor yellowColor];
    [v8 CGColor];
    cameraAreaLayer2 = [(DiagnosticHUDLayer *)v2 cameraAreaLayer];
    [cameraAreaLayer2 setFillColor:?];

    cameraAreaLayer3 = [(DiagnosticHUDLayer *)v2 cameraAreaLayer];
    [cameraAreaLayer3 setOpacity:?];

    cameraAreaLayer4 = [(DiagnosticHUDLayer *)v2 cameraAreaLayer];
    [(DiagnosticHUDLayer *)v2 addSublayer:?];

    array = [MEMORY[0x277CBEB18] array];
    [(DiagnosticHUDLayer *)v2 setPointLayers:?];

    v13 = 0.0;
    v14 = 4;
    do
    {
      layer2 = [MEMORY[0x277CD9F90] layer];
      [layer2 setBounds:?];
      [layer2 setHidden:?];
      [layer2 bounds];
      CGPathCreateWithEllipseInRect(v55, 0);
      [layer2 setPath:?];
      [(DiagnosticHUDLayer *)v2 addSublayer:?];
      pointLayers = [(DiagnosticHUDLayer *)v2 pointLayers];
      [pointLayers addObject:?];

      v13 = v13 + 1.0;
      --v14;
    }

    while (v14);
    layer3 = [MEMORY[0x277CD9F90] layer];
    [(DiagnosticHUDLayer *)v2 setFocusIndicatorLayer:?];

    focusIndicatorLayer = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [focusIndicatorLayer setBounds:?];

    focusIndicatorLayer2 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [focusIndicatorLayer2 setHidden:?];

    focusIndicatorLayer3 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [focusIndicatorLayer3 bounds];
    CGPathCreateWithEllipseInRect(v56, 0);
    focusIndicatorLayer4 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [focusIndicatorLayer4 setPath:?];

    v22 = +[CRColor blueColor];
    [v22 CGColor];
    focusIndicatorLayer5 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [focusIndicatorLayer5 setFillColor:?];

    focusIndicatorLayer6 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [(DiagnosticHUDLayer *)v2 addSublayer:?];

    layer4 = [MEMORY[0x277CD9F90] layer];
    [(DiagnosticHUDLayer *)v2 setFocusPointLayer:?];

    focusPointLayer = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer setBounds:?];

    focusPointLayer2 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer2 setHidden:?];

    focusPointLayer3 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer3 bounds];
    CGPathCreateWithEllipseInRect(v57, 0);
    focusPointLayer4 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer4 setPath:?];

    focusPointLayer5 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer5 setOpacity:?];

    v31 = +[CRColor clearColor];
    [v31 CGColor];
    focusPointLayer6 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer6 setFillColor:?];

    v33 = +[CRColor grayColor];
    [v33 CGColor];
    focusPointLayer7 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer7 setStrokeColor:?];

    focusPointLayer8 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer8 setLineWidth:?];

    focusPointLayer9 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer9 bounds];
    CGRectGetWidth(v58);

    v37 = MEMORY[0x277CBEA60];
    v38 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v40 = [v37 arrayWithObjects:{v39, 0}];
    focusPointLayer10 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer10 setLineDashPattern:?];

    focusPointLayer11 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [(DiagnosticHUDLayer *)v2 addSublayer:?];

    layer5 = [MEMORY[0x277CD9F90] layer];
    [(DiagnosticHUDLayer *)v2 setFrameIndicator:?];

    frameIndicator = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [frameIndicator setBounds:?];

    frameIndicator2 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [frameIndicator2 bounds];
    CGPathCreateWithEllipseInRect(v59, 0);
    frameIndicator3 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [frameIndicator3 setPath:?];

    frameIndicator4 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [frameIndicator4 setOpacity:?];

    v48 = +[CRColor redColor];
    [v48 CGColor];
    frameIndicator5 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [frameIndicator5 setFillColor:?];

    v50 = +[CRColor grayColor];
    [v50 CGColor];
    frameIndicator6 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [frameIndicator6 setStrokeColor:?];

    frameIndicator7 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [(DiagnosticHUDLayer *)v2 addSublayer:?];
  }

  return v2;
}

- (void)layoutSublayers
{
  previewLayer = [(DiagnosticHUDLayer *)self previewLayer];

  if (previewLayer)
  {
    [(DiagnosticHUDLayer *)self cameraResolution];
    if (v5 == *MEMORY[0x277CBF3A8] && v4 == *(MEMORY[0x277CBF3A8] + 8))
    {
      cameraAreaLayer = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer setPath:?];
    }

    else
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:?];
      [(DiagnosticHUDLayer *)self cameraResolution];
      [(DiagnosticHUDLayer *)self cameraResolution];
      cameraAreaLayer2 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer2 setBounds:?];

      [(DiagnosticHUDLayer *)self bounds];
      Width = CGRectGetWidth(v44);
      [(DiagnosticHUDLayer *)self bounds];
      Height = CGRectGetHeight(v45);
      [(DiagnosticHUDLayer *)self bounds];
      if (Width <= Height)
      {
        v14 = CGRectGetHeight(*&v10);
      }

      else
      {
        v14 = CGRectGetWidth(*&v10);
      }

      v16 = v14 / 5.0;
      [(DiagnosticHUDLayer *)self bounds];
      v17 = CGRectGetWidth(v46);
      [(DiagnosticHUDLayer *)self bounds];
      v18 = CGRectGetHeight(v47);
      [(DiagnosticHUDLayer *)self bounds];
      if (v17 <= v18)
      {
        CGRectGetWidth(*&v19);
      }

      else
      {
        CGRectGetHeight(*&v19);
      }

      cameraAreaLayer3 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer3 bounds];
      v24 = v16 / CGRectGetWidth(v48);

      CGAffineTransformMakeScale(&v43, v24, v24);
      cameraAreaLayer4 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer4 setAffineTransform:{*&v43.a, *&v43.b, *&v43.c, *&v43.d, *&v43.tx, *&v43.ty}];

      cameraAreaLayer5 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer5 setAnchorPoint:?];

      [(DiagnosticHUDLayer *)self bounds];
      CGRectGetMaxX(v49);
      [(DiagnosticHUDLayer *)self bounds];
      CGRectGetMaxY(v50);
      cameraAreaLayer6 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer6 setPosition:?];

      [(DiagnosticHUDLayer *)self visibleRect];
      MinX = CGRectGetMinX(v51);
      [(DiagnosticHUDLayer *)self cameraResolution];
      v30 = MinX * v29;
      [(DiagnosticHUDLayer *)self visibleRect];
      MinY = CGRectGetMinY(v52);
      [(DiagnosticHUDLayer *)self cameraResolution];
      v33 = MinY * v32;
      [(DiagnosticHUDLayer *)self visibleRect];
      v34 = CGRectGetWidth(v53);
      [(DiagnosticHUDLayer *)self cameraResolution];
      v36 = v34 * v35;
      [(DiagnosticHUDLayer *)self visibleRect];
      v37 = CGRectGetHeight(v54);
      [(DiagnosticHUDLayer *)self cameraResolution];
      v55.size.height = v37 * v38;
      v55.origin.x = v30;
      v55.origin.y = v33;
      v55.size.width = v36;
      v39 = CGPathCreateWithRect(v55, 0);
      CFAutorelease(v39);
      cameraAreaLayer7 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer7 setPath:?];

      [MEMORY[0x277CD9FF0] commit];
    }
  }

  [(DiagnosticHUDLayer *)self bounds];
  CGRectGetMaxX(v56);
  [(DiagnosticHUDLayer *)self bounds];
  CGRectGetMinY(v57);
  focusIndicatorLayer = [(DiagnosticHUDLayer *)self focusIndicatorLayer];
  [focusIndicatorLayer setPosition:?];

  [(DiagnosticHUDLayer *)self bounds];
  CGRectGetMinX(v58);
  [(DiagnosticHUDLayer *)self bounds];
  CGRectGetMinY(v59);
  frameIndicator = [(DiagnosticHUDLayer *)self frameIndicator];
  [frameIndicator setPosition:?];
}

- (void)setBoxPoints:(id)points
{
  pointsCopy = points;
  [MEMORY[0x277CD9FF0] begin];
  v4 = [MEMORY[0x277CD9E10] animationWithKeyPath:?];
  freshPointColor = [(DiagnosticHUDLayer *)self freshPointColor];
  [freshPointColor CGColor];
  [v4 setFromValue:?];

  stalePointColor = [(DiagnosticHUDLayer *)self stalePointColor];
  [stalePointColor CGColor];
  [v4 setToValue:?];

  [v4 setDuration:?];
  for (i = 0; i != 4; ++i)
  {
    v8 = [pointsCopy objectAtIndex:?];
    pointLayers = [(DiagnosticHUDLayer *)self pointLayers];
    v10 = [pointLayers objectAtIndex:?];

    [v10 removeAllAnimations];
    [v10 setHidden:?];
    [v8 CGPointValue];
    [v10 setPosition:?];
    v11 = MEMORY[0x277CBEAC0];
    null = [MEMORY[0x277CBEB68] null];
    null2 = [MEMORY[0x277CBEB68] null];
    v14 = [v11 dictionaryWithObjectsAndKeys:{@"hidden", null2, @"position", 0}];
    [v10 setActions:?];

    [v10 addAnimation:? forKey:?];
    toValue = [v4 toValue];
    [v10 setFillColor:?];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)setPreviewLayer:(id)layer visibleRect:(CGRect)rect cameraResolution:(CGSize)resolution
{
  [(DiagnosticHUDLayer *)self setPreviewLayer:?];
  [(DiagnosticHUDLayer *)self setPreviewLayerVisibleRect:?];
  [(DiagnosticHUDLayer *)self setCameraResolution:?];

  [(DiagnosticHUDLayer *)self setNeedsLayout];
}

- (void)setAdjustingFocus:(BOOL)focus pointOfInterestSupported:(BOOL)supported focusPoint:(CGPoint)point
{
  supportedCopy = supported;
  focusCopy = focus;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:?];
  focusIndicatorLayer = [(DiagnosticHUDLayer *)self focusIndicatorLayer];
  [focusIndicatorLayer setHidden:?];

  focusPointLayer = [(DiagnosticHUDLayer *)self focusPointLayer];
  focusPointLayer3 = focusPointLayer;
  if (supportedCopy)
  {
    [focusPointLayer setHidden:?];

    if (focusCopy)
    {
      +[CRColor blueColor];
    }

    else
    {
      +[CRColor grayColor];
    }
    v11 = ;
    [v11 CGColor];
    focusPointLayer2 = [(DiagnosticHUDLayer *)self focusPointLayer];
    [focusPointLayer2 setStrokeColor:?];

    focusPointLayer3 = [(DiagnosticHUDLayer *)self focusPointLayer];
    [focusPointLayer3 setPosition:?];
  }

  else
  {
    [focusPointLayer setHidden:?];
  }

  v13 = MEMORY[0x277CD9FF0];

  [v13 commit];
}

- (void)refreshFrameIndicator
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:?];
  frameIndicator = [(DiagnosticHUDLayer *)self frameIndicator];
  [frameIndicator setHidden:?];

  [MEMORY[0x277CD9FF0] setCompletionBlock:?];
  [MEMORY[0x277CD9FF0] commit];
}

void *__43__DiagnosticHUDLayer_refreshFrameIndicator__block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:?];
  [MEMORY[0x277CD9FF0] setAnimationDuration:?];
  v2 = [*(a1 + 32) frameIndicator];
  [v2 setHidden:?];

  v3 = MEMORY[0x277CD9FF0];

  return [v3 commit];
}

- (CGRect)previewLayerVisibleRect
{
  objc_copyStruct(v6, &self->_previewLayerVisibleRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)cameraResolution
{
  objc_copyStruct(v4, &self->_cameraResolution, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end