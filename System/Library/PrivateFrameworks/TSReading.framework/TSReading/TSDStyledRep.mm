@interface TSDStyledRep
- (BOOL)shouldHideSelectionHighlightDueToRectangularPath;
- (BOOL)shouldShowSelectionHighlight;
- (CGImage)newShadowImageWithSize:(CGSize)size unflipped:(BOOL)unflipped withChildren:(BOOL)children;
- (CGImage)p_newReflectionImageWithSize:(CGSize)size applyOpacity:(BOOL)opacity viewScale:(double)scale withBlock:(id)block;
- (CGRect)clipRect;
- (CGRect)p_clipRectInRootForTransform:(CGAffineTransform *)transform;
- (CGRect)p_rectWithEffectsAppliedToRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform;
- (CGRect)rectWithEffectsAppliedToRect:(CGRect)rect;
- (CGRect)reflectionLayerFrame;
- (CGRect)reflectionLayerFrameInRoot;
- (NSString)description;
- (TSDReflection)reflection;
- (TSDShadow)shadow;
- (double)opacity;
- (id)additionalLayersUnderLayer;
- (id)styledInfo;
- (id)textureForContext:(id)context;
- (void)createReflectionLayer;
- (void)dealloc;
- (void)didUpdateEffectLayersForLayer:(id)layer;
- (void)disposeReflectionLayer;
- (void)drawGradientWithAlphaOverReflection:(CGContext *)reflection applyingOpacity:(BOOL)opacity reflectionSize:(CGSize)size;
- (void)drawInContext:(CGContext *)context;
- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content withStroke:(BOOL)stroke withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)drawReflectionInContext:(CGContext *)context drawChildren:(BOOL)children;
- (void)drawReflectionInContext:(CGContext *)context withTransparencyLayer:(BOOL)layer applyingOpacity:(BOOL)opacity shouldClipGradient:(BOOL)gradient withBlock:(id)block;
- (void)drawReflectionIntoReflectionFrameInContext:(CGContext *)context withTransparencyLayer:(BOOL)layer applyingOpacity:(BOOL)opacity drawChildren:(BOOL)children;
- (void)drawShadowInContext:(CGContext *)context withChildren:(BOOL)children withDrawableOpacity:(BOOL)opacity;
- (void)p_drawReflectionInContext:(CGContext *)context;
- (void)p_drawReflectionIntoReflectionFrameInContext:(CGContext *)context withTransparencyLayer:(BOOL)layer applyingOpacity:(BOOL)opacity shouldClipGradient:(BOOL)gradient withBlock:(id)block;
- (void)positionShadowLayer:(id)layer forShadow:(id)shadow withNaturalBounds:(CGRect)bounds;
- (void)processChangedProperty:(int)property;
- (void)setNeedsDisplay;
- (void)viewScaleDidChange;
- (void)willUpdateEffectLayersForLayer:(id)layer;
@end

@implementation TSDStyledRep

- (void)dealloc
{
  [(CALayer *)self->mReflectionLayer setDelegate:0];

  self->mReflectionLayer = 0;
  self->mShadowLayer = 0;
  v3.receiver = self;
  v3.super_class = TSDStyledRep;
  [(TSDRep *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TSDRep *)self info];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  info = [(TSDRep *)self info];
  [(TSDRep *)self layout];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  layout = [(TSDRep *)self layout];
  [(TSDRep *)self frameInUnscaledCanvas];
  return [v3 stringWithFormat:@"<%@ %p info=<%@ %p> layout=<%@ %p> frameInUnscaledCanvas=%@>", v5, self, v7, info, v10, layout, NSStringFromCGRect(v13)];
}

- (id)styledInfo
{
  layout = [(TSDRep *)self layout];

  return [(TSDLayout *)layout info];
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = TSDStyledRep;
  [(TSDRep *)&v3 setNeedsDisplay];
  [(TSDStyledRep *)self invalidateShadowLayer];
  [(CALayer *)self->mReflectionLayer setNeedsDisplay];
}

- (void)viewScaleDidChange
{
  mFlags = self->mFlags;
  v4.receiver = self;
  v4.super_class = TSDStyledRep;
  [(TSDRep *)&v4 viewScaleDidChange];
  *&self->mFlags = *&self->mFlags & 0xFE | mFlags & 1;
}

- (CGRect)clipRect
{
  [(TSDStyledRep *)self clipRectWithoutEffects];

  [(TSDStyledRep *)self rectWithEffectsAppliedToRect:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_clipRectInRootForTransform:(CGAffineTransform *)transform
{
  [(TSDStyledRep *)self clipRectWithoutEffects];
  v5 = *&transform->c;
  *&v11.a = *&transform->a;
  *&v11.c = v5;
  *&v11.tx = *&transform->tx;
  v13 = CGRectApplyAffineTransform(v12, &v11);
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&v11.a = *MEMORY[0x277CBF2C0];
  *&v11.c = v6;
  *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(TSDStyledRep *)self p_rectWithEffectsAppliedToRect:&v11 additionalTransform:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)p_drawReflectionInContext:(CGContext *)context
{
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  TSDSetCGContextInfo(context, 0, 0, 1, 0, v5);
  [(TSDStyledRep *)self reflectionLayerFrameInRoot];
  v7 = v6;
  [-[TSDStyledRep styledLayout](self "styledLayout")];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(TSDCanvas *)self->super.mCanvas viewScale];
  v17 = TSDMultiplyRectScalar(v9, v11, v13, v15, v16);
  v19 = TSDSubtractPoints(v17, v18, v7);
  CGContextTranslateCTM(context, v19, v20);
  [(TSDCanvas *)self->super.mCanvas viewScale];
  CGContextScaleCTM(context, v21, v21);

  [(TSDStyledRep *)self drawReflectionIntoReflectionFrameInContext:context withTransparencyLayer:0 applyingOpacity:0 drawChildren:1];
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  if (self->mReflectionLayer == layer)
  {
    [(TSDRep *)self i_configureFontSmoothingForContext:context layer:layer];

    [(TSDStyledRep *)self p_drawReflectionInContext:context];
  }
}

- (double)opacity
{
  styledLayout = [(TSDStyledRep *)self styledLayout];

  [styledLayout opacity];
  return result;
}

- (CGRect)rectWithEffectsAppliedToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layout = [(TSDRep *)self layout];
  if (layout)
  {
    objc_msgSend_transformInRoot(layout);
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  CGAffineTransformInvert(&v14, &v13);
  [(TSDStyledRep *)self p_rectWithEffectsAppliedToRect:&v14 additionalTransform:x, y, width, height];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)p_rectWithEffectsAppliedToRect:(CGRect)rect additionalTransform:(CGAffineTransform *)transform
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TSDRep *)self info];
  if (objc_opt_respondsToSelector())
  {
    shadow = [(TSDStyledRep *)self shadow];
    if (shadow)
    {
      v11 = shadow;
      if ([(TSDShadow *)shadow isEnabled])
      {
        v12 = *&transform->c;
        *&v35.a = *&transform->a;
        *&v35.c = v12;
        *&v35.tx = *&transform->tx;
        [(TSDShadow *)v11 shadowBoundsForRect:&v35 additionalTransform:x, y, width, height];
        x = v13;
        y = v14;
        width = v15;
        height = v16;
      }
    }
  }

  if ([(TSDStyledRep *)self reflection])
  {
    [-[TSDStyledRep styledLayout](self "styledLayout")];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if ([(TSDAbstractLayout *)[(TSDRep *)self layout] parent])
    {
      [-[TSDAbstractLayout geometryInRoot](-[TSDAbstractLayout parent](-[TSDRep layout](self "layout")];
      v18 = TSDAddPoints(v18, v20, v25);
      v20 = v26;
    }

    v27 = *&transform->c;
    *&v35.a = *&transform->a;
    *&v35.c = v27;
    *&v35.tx = *&transform->tx;
    v28 = v18;
    *&v27 = v20;
    v29 = v22;
    v30 = v24;
    v39 = CGRectApplyAffineTransform(*(&v27 - 8), &v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v37 = CGRectUnion(v36, v39);
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (TSDReflection)reflection
{
  if (self->mIsUpdatingReflectionOpacity)
  {
    return &self->mDynamicReflection->super;
  }

  styledInfo = [(TSDStyledRep *)self styledInfo];

  return [styledInfo reflection];
}

- (TSDShadow)shadow
{
  if (self->mIsUpdatingShadow)
  {
    return self->mDynamicShadow;
  }

  styledInfo = [(TSDStyledRep *)self styledInfo];

  return [styledInfo shadow];
}

- (void)createReflectionLayer
{
  v3 = objc_alloc_init(TSDTilingLayer);
  self->mReflectionLayer = &v3->super;
  [(TSDTilingLayer *)v3 setDelegate:self];
  [(TSDTilingLayer *)v3 setDrawsInBackground:1];
  [(TSDTilingLayer *)v3 setNeedsDisplay];
  tilingMode = [(TSDRep *)self tilingMode];

  [(TSDTilingLayer *)v3 setTilingMode:tilingMode];
}

- (void)disposeReflectionLayer
{
  [(CALayer *)self->mReflectionLayer setDelegate:0];

  self->mReflectionLayer = 0;
}

- (void)willUpdateEffectLayersForLayer:(id)layer
{
  shadow = [(TSDStyledRep *)self shadow];
  if (shadow && [(TSDShadow *)shadow isEnabled]&& [(TSDStyledRep *)self shouldShowShadow])
  {
    if (!self->mShadowLayer)
    {
      self->mShadowLayer = objc_alloc_init(MEMORY[0x277CD9ED0]);
      [(TSDStyledRep *)self invalidateShadowLayer];
    }
  }

  else
  {
    mShadowLayer = self->mShadowLayer;
    if (mShadowLayer)
    {

      self->mShadowLayer = 0;
    }
  }

  if ([(TSDStyledRep *)self reflection]&& [(TSDStyledRep *)self shouldShowReflection])
  {
    if (!self->mReflectionLayer)
    {

      [(TSDStyledRep *)self createReflectionLayer];
    }
  }

  else if (self->mReflectionLayer)
  {

    [(TSDStyledRep *)self disposeReflectionLayer];
  }
}

- (CGRect)reflectionLayerFrameInRoot
{
  [-[TSDStyledRep styledLayout](self "styledLayout")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSDCanvas *)self->super.mCanvas viewScale];
  v12 = TSDMultiplyRectScalar(v4, v6, v8, v10, v11);

  return CGRectIntegral(*&v12);
}

- (CGRect)reflectionLayerFrame
{
  [-[TSDStyledRep styledLayout](self "styledLayout")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSDCanvas *)self->super.mCanvas viewScale];
  v12 = TSDMultiplyRectScalar(v4, v6, v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([(TSDRep *)self parentRep])
  {
    [[(TSDRep *)self parentRep] layerFrameInScaledCanvas];
    v20 = v19;
    v12 = TSDAddPoints(v12, v14, v19);
    v14 = v21;
  }

  else
  {
    v20 = *MEMORY[0x277CBF3A0];
  }

  v31.origin.x = v12;
  v31.origin.y = v14;
  v31.size.width = v16;
  v31.size.height = v18;
  v32 = CGRectIntegral(v31);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  if ([(TSDRep *)self parentRep])
  {
    x = TSDSubtractPoints(x, y, v20);
    y = v26;
  }

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)didUpdateEffectLayersForLayer:(id)layer
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
  isInvisible = [(TSDStyledRep *)self isInvisible];
  mShadowLayer = self->mShadowLayer;
  if (isInvisible)
  {
    [(CALayer *)mShadowLayer setContents:0];
  }

  else if (mShadowLayer)
  {
    shadow = [(TSDStyledRep *)self shadow];
    if (!shadow)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledRep didUpdateEffectLayersForLayer:]"];
      [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledRep.m"), 365, @"invalid nil value for '%s'", "shadow"}];
    }

    if (![(TSDShadow *)shadow isEnabled])
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledRep didUpdateEffectLayersForLayer:]"];
      [currentHandler2 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledRep.m"), 366, @"shouldn't have shadow layer if shadow is not enabled"}];
    }

    if (shadow && [(TSDShadow *)shadow isEnabled])
    {
      [(TSDStyledRep *)self opacity];
      v12 = v11;
      [(TSDShadow *)shadow opacity];
      v14 = v12 * v13;
      [(CALayer *)self->mShadowLayer opacity];
      v16 = v15;
      if (v14 != v16)
      {
        *&v16 = v14;
        [(CALayer *)self->mShadowLayer setOpacity:v16];
      }

      if (v14 != 0.0 && ![(CALayer *)self->mShadowLayer contents])
      {
        [(TSDStyledRep *)self invalidateShadowLayer];
      }

      v17 = self->mShadowLayer;
      [-[TSDStyledRep styledLayout](self "styledLayout")];
      [(TSDStyledRep *)self positionShadowLayer:v17 forShadow:shadow withNaturalBounds:?];
    }
  }

  if (self->mShadowLayer)
  {
    shadow2 = [(TSDStyledRep *)self shadow];
    if (!shadow2)
    {
      currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledRep didUpdateEffectLayersForLayer:]"];
      [currentHandler3 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledRep.m"), 398, @"invalid nil value for '%s'", "shadow"}];
    }

    if (![(TSDShadow *)shadow2 isEnabled])
    {
      currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledRep didUpdateEffectLayersForLayer:]"];
      [currentHandler4 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledRep.m"), 399, @"shouldn't have shadow layer if shadow is not enabled"}];
    }

    if (shadow2 && [(TSDShadow *)shadow2 isEnabled])
    {
      [(TSDStyledRep *)self opacity];
      v24 = v23;
      [(TSDShadow *)shadow2 opacity];
      v26 = v24 * v25;
      [(CALayer *)self->mShadowLayer opacity];
      v28 = v27;
      if (v26 != v28)
      {
        *&v28 = v26;
        [(CALayer *)self->mShadowLayer setOpacity:v28];
      }

      v29 = self->mShadowLayer;
      [-[TSDStyledRep styledLayout](self "styledLayout")];
      [(TSDStyledRep *)self positionShadowLayer:v29 forShadow:shadow2 withNaturalBounds:?];
    }

    if (*&self->mFlags)
    {
      [(CALayer *)self->mShadowLayer bounds];
      v31 = v30;
      v33 = v32;
      [(TSDRep *)self scaleToConvertNaturalToLayerRelative];
      v35 = [(TSDStyledRep *)self newShadowImageWithSize:0 unflipped:1 withChildren:TSDMultiplySizeScalar(v31, v33, 1.0 / v34)];
      [(CALayer *)self->mShadowLayer setContents:v35];
      *&self->mFlags &= ~1u;
      CGImageRelease(v35);
    }
  }

  if (self->mReflectionLayer)
  {
    [(TSDStyledRep *)self reflectionLayerFrameInRoot];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    memset(&v53[1], 0, sizeof(CGAffineTransform));
    objc_msgSend_parentLayerInverseTransformInRootForZeroAnchor(self);
    v44 = TSDCenterOfRect(v37, v39, v41, v43);
    v52 = v53[1];
    TSDTransformConvertForNewOrigin(&v52, v53, v44, v45);
    v53[1] = v53[0];
    [(CALayer *)self->mReflectionLayer setIfDifferentFrame:v53 orTransform:v37, v39, v41, v43];
    [(TSDStyledRep *)self opacity];
    v47 = v46;
    [(TSDReflection *)[(TSDStyledRep *)self reflection] opacity];
    v49 = v47 * v48;
    [(CALayer *)self->mReflectionLayer opacity];
    v51 = v50;
    if (v49 != v51)
    {
      *&v51 = v49;
      [(CALayer *)self->mReflectionLayer setOpacity:v51];
    }
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)positionShadowLayer:(id)layer forShadow:(id)shadow withNaturalBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(TSDRep *)self scaleToConvertNaturalToLayerRelative];
  v13 = v12;
  if ([shadow isDropShadow])
  {
    TSDMultiplyRectScalar(x, y, width, height, v13);
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
    [(TSDRep *)self computeDirectLayerFrame:&v93 andTransform:&v90];
    v14 = TSDCenterOfRect(*&v93, *(&v93 + 1), *&v94, *(&v94 + 1));
    v16 = v15;
    [shadow offsetDelta];
    v19 = TSDMultiplyPointScalar(v17, v18, v13);
    v22 = TSDRoundedPoint(v20, v19, v21);
    [layer setPosition:{TSDAddPoints(v14, v16, v22)}];
    [layer setBounds:TSDRectWithSize()];
    v87 = v90;
    v88 = v91;
    v89 = v92;
    v23 = &v87;
  }

  else
  {
    if ([shadow isContactShadow])
    {
      [(TSDShadow *)[(TSDStyledRep *)self shadow] boundsForRep:self];
      v28 = TSDMultiplyRectScalar(v24, v25, v26, v27, v13);
      v32 = TSDCenterOfRect(v28, v29, v30, v31);
      v34 = v33;
      [shadow offset];
      v36 = TSDMultiplyPointScalar(0.0, v35, v13);
      v39 = TSDRoundedPoint(v37, v36, v38);
      v40 = v32;
      v41 = v34;
    }

    else
    {
      if (![shadow isCurvedShadow])
      {
        goto LABEL_13;
      }

      objc_opt_class();
      v42 = TSUDynamicCast();
      [(TSDShadow *)[(TSDStyledRep *)self shadow] boundsForRep:self];
      v47 = TSDMultiplyRectScalar(v43, v44, v45, v46, v13);
      v51 = TSDCenterOfRect(v47, v48, v49, v50);
      v53 = v52;
      [v42 offsetFromCurve];
      [v42 curve];
      if (v54 > 0.0)
      {
        v55 = TSDAddPoints(v51, v53, 0.0);
        v51 = TSDRoundedPoint(v56, v55, v57);
        v53 = v58;
      }

      [shadow offsetDelta];
      v61 = TSDMultiplyPointScalar(v59, v60, v13);
      v39 = TSDRoundedPoint(v62, v61, v63);
      v40 = v51;
      v41 = v53;
    }

    v64 = TSDAddPoints(v40, v41, v39);
    v66 = v65;
    if ([(TSDRep *)self parentRep])
    {
      [[(TSDRep *)self parentRep] layerFrameInScaledCanvas];
      v64 = v64 - v67;
      v66 = v66 - v68;
    }

    [layer setPosition:{v64, v66}];
    [layer setBounds:TSDRectWithSize()];
    v69 = *(MEMORY[0x277CBF2C0] + 16);
    v90 = *MEMORY[0x277CBF2C0];
    v91 = v69;
    v92 = *(MEMORY[0x277CBF2C0] + 32);
    v23 = &v90;
  }

  [layer setAffineTransform:{v23, v87, v88, v89, v90, v91, v92}];
LABEL_13:
  [layer frame];
  v71 = v70;
  v73 = v72;
  superlayer = [layer superlayer];
  if (superlayer)
  {
    superlayer2 = superlayer;
    do
    {
      [superlayer2 frame];
      v71 = TSDAddPoints(v71, v73, v76);
      v73 = v77;
      superlayer2 = [superlayer2 superlayer];
    }

    while (superlayer2);
  }

  [layer position];
  v79 = v78;
  v81 = v80;
  contentsScale = [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  v84 = TSDRoundedPointForScale(contentsScale, v71, v73, v83);
  v86 = TSDSubtractPoints(v84, v85, v71);
  [layer setPosition:{TSDAddPoints(v79, v81, v86)}];
}

- (CGImage)newShadowImageWithSize:(CGSize)size unflipped:(BOOL)unflipped withChildren:(BOOL)children
{
  unflippedCopy = unflipped;
  height = size.height;
  width = size.width;
  v9 = &selRef_drawInContextWithoutEffectsForAlphaOnly_;
  if (!children)
  {
    v9 = &selRef_drawInContextWithoutEffectsOrChildrenForAlphaOnly_;
  }

  v10 = *v9;
  shadow = [(TSDStyledRep *)self shadow];

  return [(TSDStyledRep *)self newShadowImageWithSize:shadow shadow:v10 drawSelector:unflippedCopy unflipped:width, height];
}

- (CGImage)p_newReflectionImageWithSize:(CGSize)size applyOpacity:(BOOL)opacity viewScale:(double)scale withBlock:(id)block
{
  opacityCopy = opacity;
  v10 = TSDCeilSize(size.width);
  if (v10 <= 0.0)
  {
    return 0;
  }

  if (v11 <= 0.0)
  {
    return 0;
  }

  v12 = TSDBitmapContextCreate(11, v10);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  CGContextScaleCTM(v12, scale, scale);
  TSDSetCGContextInfo(v13, [(TSDCanvas *)[(TSDRep *)self canvas] isPrinting], [(TSDCanvas *)[(TSDRep *)self canvas] isDrawingIntoPDF], 0, [(TSDCanvas *)[(TSDRep *)self canvas] shouldSuppressBackgrounds], 1.0);
  [(TSDStyledRep *)self p_drawReflectionIntoReflectionFrameInContext:v13 withTransparencyLayer:0 applyingOpacity:opacityCopy shouldClipGradient:0 withBlock:block];
  Image = CGBitmapContextCreateImage(v13);
  CGContextRelease(v13);
  return Image;
}

- (void)drawGradientWithAlphaOverReflection:(CGContext *)reflection applyingOpacity:(BOOL)opacity reflectionSize:(CGSize)size
{
  height = size.height;
  opacityCopy = opacity;
  v19 = *MEMORY[0x277D85DE8];
  v9 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  v10 = 1.0;
  if (opacityCopy)
  {
    [(TSDReflection *)[(TSDStyledRep *)self reflection] opacity];
  }

  *v9 = v10;
  [(TSDReflection *)[(TSDStyledRep *)self reflection] fadeAcceleration];
  *(v9 + 1) = v11;
  *range = xmmword_26CA666B0;
  v17 = unk_26CA666C0;
  *domain = xmmword_26CA65130;
  v15 = *byte_287D34AC8;
  v12 = CGFunctionCreate(v9, 1uLL, domain, 2uLL, range, &v15);
  v13 = TSUDeviceGrayColorSpace();
  v20.x = 0.0;
  v20.y = height;
  Axial = CGShadingCreateAxial(v13, *MEMORY[0x277CBF348], v20, v12, 1, 1);
  CGContextSetBlendMode(reflection, kCGBlendModeDestinationIn);
  CGContextDrawShading(reflection, Axial);
  CGShadingRelease(Axial);
  CGFunctionRelease(v12);
}

- (void)p_drawReflectionIntoReflectionFrameInContext:(CGContext *)context withTransparencyLayer:(BOOL)layer applyingOpacity:(BOOL)opacity shouldClipGradient:(BOOL)gradient withBlock:(id)block
{
  gradientCopy = gradient;
  opacityCopy = opacity;
  layerCopy = layer;
  styledLayout = [(TSDStyledRep *)self styledLayout];
  [styledLayout reflectionFrame];
  v15 = v14;
  v17 = v16;
  CGContextSaveGState(context);
  if (layerCopy)
  {
    v40.origin.x = TSDRectWithSize();
    CGContextBeginTransparencyLayerWithRect(context, v40, 0);
  }

  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v19 = v18 * TSDCGContextAssociatedScreenScale(context);
  v20 = TSDAliasRound(v19);
  CGContextTranslateCTM(context, 0.0, v20 / v19);
  [(TSDAbstractLayout *)[(TSDRep *)self layout] alignmentFrame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [-[TSDStyledRep styledLayout](self "styledLayout")];
  MaxY = CGRectGetMaxY(v41);
  v42.origin.x = v22;
  v42.origin.y = v24;
  v42.size.width = v26;
  v42.size.height = v28;
  v30 = CGRectGetMaxY(v42);
  CGContextTranslateCTM(context, 0.0, MaxY - v30 + MaxY - v30);
  [styledLayout alignmentFrameInRoot];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.0, v38);
  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextTranslateCTM(context, -v32, -v34);
  if (styledLayout)
  {
    objc_msgSend_transformInRoot(styledLayout);
  }

  else
  {
    memset(&v39, 0, sizeof(v39));
  }

  CGContextConcatCTM(context, &v39);
  TSDCGContextSetIsReflection(context, 1);
  (*(block + 2))(block, context);
  TSDCGContextSetIsReflection(context, 0);
  CGContextRestoreGState(context);
  if (gradientCopy)
  {
    v43.size.width = v36 + 2.0;
    v43.origin.x = -1.0;
    v43.origin.y = 0.0;
    v43.size.height = v38;
    CGContextClipToRect(context, v43);
  }

  [(TSDStyledRep *)self drawGradientWithAlphaOverReflection:context applyingOpacity:opacityCopy reflectionSize:v15, v17, *&v39.a, *&v39.c, *&v39.tx];
  if (layerCopy)
  {
    CGContextEndTransparencyLayer(context);
  }

  CGContextRestoreGState(context);
}

- (void)drawReflectionIntoReflectionFrameInContext:(CGContext *)context withTransparencyLayer:(BOOL)layer applyingOpacity:(BOOL)opacity drawChildren:(BOOL)children
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __110__TSDStyledRep_drawReflectionIntoReflectionFrameInContext_withTransparencyLayer_applyingOpacity_drawChildren___block_invoke;
  v6[3] = &unk_279D494C8;
  v6[4] = self;
  childrenCopy = children;
  [(TSDStyledRep *)self p_drawReflectionIntoReflectionFrameInContext:context withTransparencyLayer:layer applyingOpacity:opacity shouldClipGradient:0 withBlock:v6];
}

- (void)drawShadowInContext:(CGContext *)context withChildren:(BOOL)children withDrawableOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  childrenCopy = children;
  shadow = [(TSDStyledRep *)self shadow];
  if (shadow)
  {
    v10 = shadow;
    if ([(TSDShadow *)shadow isEnabled])
    {
      if ([(TSDStyledRep *)self shouldShowShadow])
      {
        [(TSDShadow *)v10 boundsInNaturalSpaceForRep:self];
        x = v11;
        y = v13;
        width = v15;
        height = v17;
        v19 = [(TSDStyledRep *)self newShadowImageWithSize:0 unflipped:childrenCopy withChildren:v15, v17];
        if (v19)
        {
          v20 = v19;
          CGContextSaveGState(context);
          [(TSDShadow *)v10 opacity];
          v22 = v21;
          if (opacityCopy)
          {
            [(TSDStyledRep *)self opacity];
            v22 = v22 * v23;
          }

          if (v22 < 1.0)
          {
            CGContextSetAlpha(context, v22);
          }

          if ([(TSDShadow *)v10 isDropShadow])
          {
            [(TSDShadow *)v10 offsetDelta];
            v25 = v24;
            v27 = v26;
            styledLayout = [(TSDStyledRep *)self styledLayout];
            if (styledLayout)
            {
              objc_msgSend_transformInRoot(styledLayout);
            }

            else
            {
              memset(&v56, 0, sizeof(v56));
            }

            CGAffineTransformInvert(&transform, &v56);
            v46 = TSDDeltaApplyAffineTransform(&transform, v25, v27);
            v48 = v47;
            v58.origin.x = x;
            v58.origin.y = y;
            v58.size.width = width;
            v58.size.height = height;
            v59 = CGRectOffset(v58, v46, v48);
            x = v59.origin.x;
            y = v59.origin.y;
            width = v59.size.width;
            height = v59.size.height;
          }

          else
          {
            if ([(TSDShadow *)v10 isContactShadow])
            {
              [-[TSDStyledRep styledLayout](self "styledLayout")];
              v30 = v29;
              [-[TSDStyledRep styledLayout](self "styledLayout")];
              v32 = v31;
              v34 = v33;
              layout = [(TSDRep *)self layout];
              if (layout)
              {
                objc_msgSend_transformInRoot(layout);
              }

              else
              {
                memset(&v56, 0, sizeof(v56));
              }

              CGAffineTransformInvert(&transform, &v56);
              CGContextConcatCTM(context, &transform);
              CGContextTranslateCTM(context, v32, v34);
              [(TSDShadow *)v10 offset];
              CGContextTranslateCTM(context, 0.0, v30 + v49);
              CGContextTranslateCTM(context, 0.0, v30);
              CGContextScaleCTM(context, 1.0, -1.0);
              goto LABEL_24;
            }

            if (![(TSDShadow *)v10 isCurvedShadow])
            {
LABEL_24:
              v60.origin.x = x;
              v60.origin.y = y;
              v60.size.width = width;
              v60.size.height = height;
              CGContextDrawImage(context, v60, v20);
              CGImageRelease(v20);
              CGContextRestoreGState(context);
              return;
            }

            objc_opt_class();
            v36 = TSUDynamicCast();
            [(TSDLayoutGeometry *)[(TSDAbstractLayout *)[(TSDRep *)self layout] geometry] frame];
            v38 = v37;
            v40 = v39;
            v42 = v41;
            v44 = v43;
            if ([(TSDAbstractLayout *)[(TSDRep *)self layout] parent])
            {
              parent = [(TSDAbstractLayout *)[(TSDRep *)self layout] parent];
              if (parent)
              {
                objc_msgSend_transformInRoot(parent);
              }

              else
              {
                memset(&transform, 0, sizeof(transform));
              }

              v61.origin.x = v38;
              v61.origin.y = v40;
              v61.size.width = v42;
              v61.size.height = v44;
              v62 = CGRectApplyAffineTransform(v61, &transform);
              v38 = v62.origin.x;
              v40 = v62.origin.y;
            }

            layout2 = [(TSDRep *)self layout];
            if (layout2)
            {
              objc_msgSend_transformInRoot(layout2);
            }

            else
            {
              memset(&v56, 0, sizeof(v56));
            }

            CGAffineTransformInvert(&transform, &v56);
            CGContextConcatCTM(context, &transform);
            CGContextTranslateCTM(context, v38, v40);
            [(TSDShadow *)v10 offsetDelta];
            v52 = v51;
            [(TSDShadow *)v10 offsetDelta];
            CGContextTranslateCTM(context, v52, v53);
            [v36 curve];
            if (v54 > 0.0)
            {
              [v36 offsetFromCurve];
              *&v55 = v55;
              CGContextTranslateCTM(context, 0.0, *&v55);
            }

            v59.origin.x = x;
            v59.origin.y = y;
            v59.size.width = width;
            v59.size.height = height;
          }

          TSDAffineTransformForFlips(0, 1, &transform, v59.origin.x, v59.origin.y, v59.size.width, v59.size.height);
          CGContextConcatCTM(context, &transform);
          goto LABEL_24;
        }
      }
    }
  }
}

- (void)drawReflectionInContext:(CGContext *)context withTransparencyLayer:(BOOL)layer applyingOpacity:(BOOL)opacity shouldClipGradient:(BOOL)gradient withBlock:(id)block
{
  gradientCopy = gradient;
  opacityCopy = opacity;
  layerCopy = layer;
  if ([(TSDStyledRep *)self reflection]&& [(TSDStyledRep *)self shouldShowReflection])
  {
    styledLayout = [(TSDStyledRep *)self styledLayout];
    v14 = styledLayout;
    if (styledLayout)
    {
      objc_msgSend_transformInRoot(styledLayout);
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
    }

    CGAffineTransformInvert(&transform, &v31);
    CGContextConcatCTM(context, &transform);
    [v14 reflectionFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    if ([(TSDCanvas *)[(TSDRep *)self canvas] isDrawingIntoPDF])
    {
      v23 = [(TSDStyledRep *)self p_newReflectionImageWithSize:opacityCopy applyOpacity:block viewScale:TSDMultiplySizeScalar(v20 withBlock:v22, 4.16666651)];
      if (v23)
      {
        v24 = v23;
        if ([v14 parent])
        {
          [objc_msgSend(objc_msgSend(v14 "parent")];
          v16 = TSDAddPoints(v16, v18, v25);
          v18 = v26;
        }

        v33.origin.x = v16;
        v33.origin.y = v18;
        v33.size.width = v20;
        v33.size.height = v22;
        MinY = CGRectGetMinY(v33);
        v34.origin.x = v16;
        v34.origin.y = v18;
        v34.size.width = v20;
        v34.size.height = v22;
        MaxY = CGRectGetMaxY(v34);
        CGContextTranslateCTM(context, 0.0, MinY + MaxY);
        CGContextScaleCTM(context, 1.0, -1.0);
        v35.origin.x = v16;
        v35.origin.y = v18;
        v35.size.width = v20;
        v35.size.height = v22;
        CGContextDrawImage(context, v35, v24);
        CGImageRelease(v24);
      }
    }

    else
    {
      CGContextTranslateCTM(context, v16, v18);
      [objc_msgSend(v14 "parent")];
      CGContextTranslateCTM(context, v29, v30);
      [(TSDStyledRep *)self p_drawReflectionIntoReflectionFrameInContext:context withTransparencyLayer:layerCopy applyingOpacity:opacityCopy shouldClipGradient:gradientCopy withBlock:block];
    }
  }
}

- (void)drawReflectionInContext:(CGContext *)context drawChildren:(BOOL)children
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__TSDStyledRep_drawReflectionInContext_drawChildren___block_invoke;
  v4[3] = &unk_279D494C8;
  v4[4] = self;
  childrenCopy = children;
  [(TSDStyledRep *)self drawReflectionInContext:context withTransparencyLayer:1 applyingOpacity:1 shouldClipGradient:0 withBlock:v4];
}

- (void)drawInContext:(CGContext *)context
{
  if (([-[TSDStyledRep styledLayout](self "styledLayout")] & 1) == 0)
  {
    [(TSDStyledRep *)self drawShadowInContext:context withChildren:1 withDrawableOpacity:1];
    [(TSDStyledRep *)self drawInContextWithoutEffects:context withContent:1 withStroke:1 withOpacity:1 forAlphaOnly:0 drawChildren:0];
    [(TSDStyledRep *)self opacity];
    v6 = v5;
    if (v5 == 1.0)
    {

      [(TSDStyledRep *)self drawReflectionInContext:context drawChildren:1];
    }

    else
    {
      CGContextSaveGState(context);
      CGContextSetAlpha(context, v6);
      [(TSDStyledRep *)self drawReflectionInContext:context drawChildren:1];

      CGContextRestoreGState(context);
    }
  }
}

- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content withStroke:(BOOL)stroke withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledRep drawInContextWithoutEffects:withContent:withStroke:withOpacity:forAlphaOnly:drawChildren:]"];
  [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledRep.m"), 911, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDStyledRep drawInContextWithoutEffects:withContent:withStroke:withOpacity:forAlphaOnly:drawChildren:]"), 0}]);
}

- (void)processChangedProperty:(int)property
{
  v5.receiver = self;
  v5.super_class = TSDStyledRep;
  [(TSDRep *)&v5 processChangedProperty:?];
  if (property == 518 || property == 520)
  {
    if (self->mIsUpdatingShadow)
    {
      [(TSDStyledRep *)self invalidateShadowLayer];
    }
  }

  else
  {
    if (property != 519)
    {
      return;
    }

    [(CALayer *)self->mReflectionLayer setNeedsDisplay];
  }

  [(TSDCanvas *)self->super.mCanvas layoutInvalidated];
}

- (id)additionalLayersUnderLayer
{
  if (!self->mShadowLayer && !self->mReflectionLayer)
  {
    return 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  if (self->mShadowLayer && [(TSDStyledRep *)self shouldShowShadow])
  {
    [array addObject:self->mShadowLayer];
  }

  if (self->mReflectionLayer && [(TSDStyledRep *)self shouldShowReflection])
  {
    [array addObject:self->mReflectionLayer];
  }

  return array;
}

- (BOOL)shouldHideSelectionHighlightDueToRectangularPath
{
  i_wrapPath = [(TSDLayout *)[(TSDRep *)self layout] i_wrapPath];
  if (!i_wrapPath)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledRep shouldHideSelectionHighlightDueToRectangularPath]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledRep.m"), 987, @"invalid nil value for '%s'", "wrapPath"}];
  }

  if ([-[TSDStyledRep styledLayout](self "styledLayout")] && objc_msgSend(objc_msgSend(-[TSDStyledRep styledLayout](self, "styledLayout"), "stroke"), "isFrame") && (objc_msgSend(objc_msgSend(-[TSDStyledRep styledLayout](self, "styledLayout"), "stroke"), "hasMask") & 1) != 0 || -[TSDInteractiveCanvasController usesAlternateDrawableSelectionHighlight](-[TSDRep interactiveCanvasController](self, "interactiveCanvasController"), "usesAlternateDrawableSelectionHighlight"))
  {
    goto LABEL_7;
  }

  if ([i_wrapPath isRectangular])
  {
    goto LABEL_9;
  }

  objc_opt_class();
  [(TSDStyledRep *)self pathSourceForSelectionHighlightBehavior];
  v6 = TSUDynamicCast();
  if (!v6)
  {
    return v6;
  }

  v7 = v6;
  if ([v6 type] || (objc_msgSend(v7, "scalar"), v9 = v8, -[TSDCanvas viewScale](-[TSDRep canvas](self, "canvas"), "viewScale"), v9 * v10 >= 10.0))
  {
LABEL_7:
    LOBYTE(v6) = 0;
  }

  else
  {
LABEL_9:
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)shouldShowSelectionHighlight
{
  v5.receiver = self;
  v5.super_class = TSDStyledRep;
  shouldShowSelectionHighlight = [(TSDRep *)&v5 shouldShowSelectionHighlight];
  if (shouldShowSelectionHighlight)
  {
    LOBYTE(shouldShowSelectionHighlight) = ![(TSDStyledRep *)self shouldHideSelectionHighlightDueToRectangularPath];
  }

  return shouldShowSelectionHighlight;
}

- (id)textureForContext:(id)context
{
  if (!-[TSDRep texture](self, "texture") || ![context isEqual:self->super.mTextureContext] || -[TSDRep temporaryMixingLayout](self, "temporaryMixingLayout"))
  {
    isMagicMove = [context isMagicMove];
    shouldAddMagicMoveObjectOnly = [context shouldAddMagicMoveObjectOnly];
    shouldNotAddContainedReps = [context shouldNotAddContainedReps];
    v8 = [-[TSDStyledRep styledInfo](self "styledInfo")];
    [(TSDCanvas *)self->super.mCanvas viewScale];
    v10 = v9;
    v11 = objc_alloc_init(TSDTextureSet);
    [(TSDTextureSet *)v11 setIsMagicMove:isMagicMove];
    v205 = v10;
    if (![context shouldSeparateShadow] || !v8 || shouldAddMagicMoveObjectOnly & 1 | ((objc_msgSend(v8, "isEnabled") & 1) == 0))
    {
LABEL_27:
      memset(&v222, 0, sizeof(v222));
      layout = [(TSDRep *)self layout];
      if (layout)
      {
        objc_msgSend_transformInRoot(layout);
      }

      else
      {
        memset(&v222, 0, sizeof(v222));
      }

      mTextureActionAttributes = self->super.mTextureActionAttributes;
      if (mTextureActionAttributes)
      {
        v118 = [(NSDictionary *)mTextureActionAttributes valueForKey:@"sfx-action-rotation-angle"];
        if (v118)
        {
          v119 = v118;
          [(TSDRep *)self centerForRotation];
          v121 = v120;
          v123 = v122;
          v220 = v222;
          CGAffineTransformTranslate(&v221, &v220, v120, v122);
          v222 = v221;
          [v119 floatValue];
          v220 = v222;
          CGAffineTransformRotate(&v221, &v220, v124 * 0.0174532925);
          v222 = v221;
          v220 = v221;
          CGAffineTransformTranslate(&v221, &v220, -v121, -v123);
          v222 = v221;
        }
      }

      if (isMagicMove)
      {
        v220 = v222;
        objc_msgSend_unRotatedTransform_(self);
        v222 = v221;
      }

      v125 = shouldNotAddContainedReps ^ 1;
      [(TSDRep *)self naturalBounds];
      v221 = v222;
      v227 = CGRectApplyAffineTransform(v226, &v221);
      v203 = TSDMultiplyRectScalar(v227.origin.x, v227.origin.y, v227.size.width, v227.size.height, v10);
      v221 = v222;
      [(TSDStyledRep *)self p_clipRectInRootForTransform:&v221];
      x = v126;
      y = v128;
      width = v130;
      height = v132;
      if (isMagicMove && [context shouldSeparateReflection] && objc_msgSend(context, "shouldSeparateShadow"))
      {
        [(TSDStyledRep *)self clipRectWithoutEffects];
        v221 = v222;
        v229 = CGRectApplyAffineTransform(v228, &v221);
        x = v229.origin.x;
        y = v229.origin.y;
        width = v229.size.width;
        height = v229.size.height;
      }

      [(TSDStyledRep *)self clipRectWithoutEffects];
      v221 = v222;
      v231 = CGRectApplyAffineTransform(v230, &v221);
      v134 = v231.origin.x;
      v135 = v231.origin.y;
      v136 = v231.size.width;
      v137 = v231.size.height;
      v231.origin.x = x;
      v231.origin.y = y;
      v231.size.width = width;
      v231.size.height = height;
      v241.origin.x = v134;
      v241.origin.y = v135;
      v241.size.width = v136;
      v241.size.height = v137;
      if (!CGRectEqualToRect(v231, v241))
      {
        v138 = TSDCenterOfRect(v134, v135, v136, v137);
        v140 = v139;
        v141 = TSDCenterOfRect(x, y, width, height);
        v143 = TSDMultiplySizeScalar(vabdd_f64(v141, v138), vabdd_f64(v142, v140), 2.0);
        v144 = TSDAddSizes(width, height, v143);
        x = TSDRectWithCenterAndSize(v138, v140, v144);
        y = v145;
        width = v146;
        height = v147;
      }

      v232.origin.x = TSDMultiplyRectScalar(x, y, width, height, v205);
      v233 = CGRectIntegral(v232);
      v234 = CGRectInset(v233, -1.0, -1.0);
      v148 = v234.size.width;
      v149 = v234.size.height;
      v214[0] = MEMORY[0x277D85DD0];
      v214[1] = 3221225472;
      v214[2] = __34__TSDStyledRep_textureForContext___block_invoke_2;
      v214[3] = &unk_279D49518;
      v218 = isMagicMove;
      v215 = v234;
      v216 = v205;
      v217 = v222;
      v214[4] = self;
      v214[5] = context;
      v219 = shouldNotAddContainedReps ^ 1;
      v150 = TSDSubtractPoints(v234.origin.x, v234.origin.y, v203);
      v151 = [[TSDTexturedRectangle alloc] initWithSize:v214 offset:v148 renderBlock:v149, v150, v151];
      [(TSDTexturedRectangle *)v151 setTextureType:5];
      [(TSDTexturedRectangle *)v151 setTextureOpacity:1.0];
      [(TSDStyledRep *)self opacity];
      [(TSDTextureSet *)v11 setTextureOpacity:?];
      [(TSDTextureSet *)v11 addRenderable:v151];

      objc_opt_class();
      [(TSDLayout *)[(TSDRep *)self layout] stroke];
      v153 = TSUDynamicCast();
      if ([context shouldSeparateStroke] && v153 && objc_msgSend(v153, "shouldRender"))
      {
        [(TSDStyledRep *)self clipRect];
        if (isMagicMove)
        {
          [(TSDRep *)self naturalBounds];
        }

        v221 = v222;
        v235 = CGRectApplyAffineTransform(*&v154, &v221);
        v236.origin.x = TSDMultiplyRectScalar(v235.origin.x, v235.origin.y, v235.size.width, v235.size.height, v205);
        v237 = CGRectIntegral(v236);
        v238 = CGRectInset(v237, -1.0, -1.0);
        v158 = v238.size.width;
        v159 = v238.size.height;
        v208[0] = MEMORY[0x277D85DD0];
        v208[1] = 3221225472;
        v208[2] = __34__TSDStyledRep_textureForContext___block_invoke_3;
        v208[3] = &unk_279D49540;
        v212 = isMagicMove;
        v208[4] = self;
        v209 = v238;
        v210 = v205;
        v211 = v222;
        v213 = v125;
        v160 = TSDSubtractPoints(v238.origin.x, v238.origin.y, v203);
        v161 = [[TSDTexturedRectangle alloc] initWithSize:v208 offset:v158 renderBlock:v159, v160, v161];
        [(TSDTexturedRectangle *)v161 setTextureType:8];
        [(TSDTexturedRectangle *)v161 setTextureOpacity:1.0];
        [(TSDTextureSet *)v11 addRenderable:v161];
      }

      if ([context shouldSeparateReflection])
      {
        reflection = [(TSDStyledRep *)self reflection];
        if (!((reflection == 0) | shouldAddMagicMoveObjectOnly & 1))
        {
          v164 = reflection;
          [-[TSDStyledRep styledLayout](self "styledLayout")];
          v239.origin.x = TSDMultiplyRectScalar(v165, v166, v167, v168, v205);
          v240 = CGRectIntegral(v239);
          v169 = v240.origin.x;
          v170 = v240.origin.y;
          v201 = v240.size.height;
          v204 = v240.size.width;
          [(TSDRep *)self naturalBounds];
          [(TSDRep *)self convertNaturalRectToUnscaledCanvas:?];
          v172 = v171;
          v174 = v173;
          v176 = v175;
          v178 = v177;
          [(TSDRep *)self naturalBounds];
          v183 = TSDCenterRectOverRect(v179, v180, v181, v182, v172, v174, v176, v178);
          v187 = TSDMultiplyRectScalar(v183, v184, v185, v186, v205);
          v188 = TSDSubtractPoints(v169, v170, v187);
          v206[0] = MEMORY[0x277D85DD0];
          v206[1] = 3221225472;
          v206[2] = __34__TSDStyledRep_textureForContext___block_invoke_4;
          v206[3] = &unk_279D49568;
          *&v206[5] = v169;
          *&v206[6] = v170;
          *&v206[7] = v204;
          *&v206[8] = v201;
          *&v206[9] = v205;
          v206[4] = self;
          v207 = v125;
          v189 = [[TSDTexturedRectangle alloc] initWithSize:v206 offset:v204 renderBlock:v201, v188, v189];
          [(TSDTexturedRectangle *)v189 setTextureType:9];
          [(TSDReflection *)v164 opacity];
          [(TSDTexturedRectangle *)v189 setTextureOpacity:?];
          [(TSDTextureSet *)v11 addRenderable:v189];
        }
      }

      if (([context shouldNotCacheTexture] & 1) == 0)
      {
        [(TSDRep *)self setTexture:v11];
        [(TSDRep *)self setTextureContext:context];
      }

      return v11;
    }

    *&v222.a = 0uLL;
    v12 = [context shouldNotAddContainedReps] ^ 1;
    [(TSDShadow *)[(TSDStyledRep *)self shadow] boundsForRep:self];
    v17 = TSDMultiplyRectScalar(v13, v14, v15, v16, v10);
    v191 = v18;
    v192 = v17;
    [(TSDShadow *)[(TSDStyledRep *)self shadow] boundsInNaturalSpaceForRep:self];
    v197 = v20;
    v199 = v19;
    v193 = v22;
    v194 = v21;
    v23 = TSDMultiplyRectScalar(v19, v20, v21, v22, v10);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = TSDRectWithSize();
    v32 = v31;
    v34 = v33;
    v202 = v35;
    if ([v8 isCurvedShadow])
    {
      [(TSDRep *)self naturalBounds];
      v40 = TSDMultiplyRectScalar(v36, v37, v38, v39, v10);
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v47 = TSDRectWithSize();
      TSDCenterRectOverRect(v40, v42, v44, v46, v47, v48, v49, v50);
      TSDRectWithOriginAndSize();
      v55 = TSDRectByExpandingBoundingRectToContentRect(v23, v25, v27, v29, v51, v52, v53, v54, 0.2, 0.3, 0.8, 0.7);
      v59 = v58;
      v30 = 0.2;
      v32 = 0.3;
      *&v34 = 0.8;
      v202 = 0.7;
    }

    else
    {
      v57 = v29;
      v59 = v27;
      v56 = v25;
      v55 = v23;
    }

    v196 = v32;
    v223[0] = MEMORY[0x277D85DD0];
    v223[1] = 3221225472;
    v223[2] = __34__TSDStyledRep_textureForContext___block_invoke;
    v223[3] = &unk_279D494F0;
    *&v223[6] = v199;
    *&v223[7] = v197;
    *&v223[8] = v194;
    *&v223[9] = v193;
    v224 = v12;
    v223[4] = self;
    v223[5] = v8;
    *&v223[10] = v55;
    *&v223[11] = v56;
    v198 = v59;
    v200 = v57;
    *&v223[12] = v59;
    *&v223[13] = v57;
    *&v223[14] = v23;
    *&v223[15] = v25;
    *&v223[16] = v27;
    *&v223[17] = v29;
    if ([v8 isDropShadow])
    {
      v61 = *&v34;
      [v8 offset];
      v63 = v62;
      [v8 angle];
      TSDOriginRotate(&v222.a, v63, v64 * 0.0174532925);
      v10 = v205;
      v65 = TSDMultiplyPointScalar(v222.a, v222.b, v205);
      v222.a = v65;
      v222.b = v66;
      [v8 radius];
      v68 = v65 - v67 * v205;
      b = v222.b;
      [v8 radius];
      v71 = b - v70 * v205;
      v32 = v196;
    }

    else
    {
      v195 = v30;
      v10 = v205;
      v61 = *&v34;
      if ([v8 isContactShadow])
      {
        [v8 offset];
        v73 = TSDMultiplyPointScalar(0.0, v72, v205);
        v76 = TSDRoundedPoint(v74, v73, v75);
        [(TSDRep *)self naturalBounds];
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v84 = v83;
        [(TSDRep *)self naturalBounds];
        [(TSDRep *)self convertNaturalRectToUnscaledCanvas:?];
        v89 = TSDCenterRectOverRect(v78, v80, v82, v84, v85, v86, v87, v88);
        v93 = TSDMultiplyRectScalar(v89, v90, v91, v92, v205);
        v94 = TSDSubtractPoints(v192, v191, v93);
        v68 = TSDAddPoints(v94, v95, v76);
        v71 = v96;
      }

      else
      {
        if ([v8 isCurvedShadow])
        {
          [(TSDRep *)self naturalBounds];
          TSDMultiplyRectScalar(v97, v98, v99, v100, v205);
          v103 = (v198 - v101) * -0.5;
          v104 = (v200 - v102) * -0.5;
          objc_opt_class();
          v105 = TSUDynamicCast();
          [v105 curve];
          if (v106 > 0.0)
          {
            [v105 offsetFromCurve];
            v108 = TSDMultiplyPointScalar(0.0, v107, v205);
            v103 = TSDAddPoints(v103, v104, v108);
            v104 = v109;
          }

          [v8 offsetDelta];
          v112 = TSDMultiplyPointScalar(v110, v111, v205);
          v68 = TSDAddPoints(v103, v104, v112);
          v71 = v113;
          goto LABEL_23;
        }

        v68 = *MEMORY[0x277CBF348];
        v71 = *(MEMORY[0x277CBF348] + 8);
      }

      v30 = v195;
      v32 = v196;
    }

LABEL_23:
    v114 = [[TSDTexturedRectangle alloc] initWithSize:v223 offset:v198 renderBlock:v200, v68, v71];
    if ([v8 isContactShadow])
    {
      v115 = 3;
    }

    else
    {
      v115 = 2;
    }

    [(TSDTexturedRectangle *)v114 setTextureType:v115];
    [v8 opacity];
    [(TSDTexturedRectangle *)v114 setTextureOpacity:?];
    [(TSDTexturedRectangle *)v114 setContentRect:v30, v32, v61, v202];
    [(TSDTextureSet *)v11 addRenderable:v114];

    goto LABEL_27;
  }

  return [(TSDRep *)self texture];
}

void __34__TSDStyledRep_textureForContext___block_invoke(uint64_t a1, CGContextRef c)
{
  CGContextSaveGState(c);
  v4 = [*(a1 + 32) newShadowImageWithSize:1 unflipped:*(a1 + 144) withChildren:{*(a1 + 64), *(a1 + 72)}];
  if ([*(a1 + 40) isCurvedShadow])
  {
    memset(&v21, 0, sizeof(v21));
    v5 = [*(a1 + 32) layout];
    if (v5)
    {
      objc_msgSend_transformInRoot(v5);
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v6 = [*(a1 + 32) layout];
    if (v6)
    {
      objc_msgSend_transformInRoot(v6);
      v7 = v17;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = -v7;
    v9 = [*(a1 + 32) layout];
    if (v9)
    {
      objc_msgSend_transformInRoot(v9);
      v10 = v16;
    }

    else
    {
      v10 = 0.0;
    }

    CGAffineTransformMakeTranslation(&t2, v8, -v10);
    CGAffineTransformConcat(&v20, &t1, &t2);
    CGAffineTransformInvert(&v21, &v20);
    memset(&v20, 0, sizeof(v20));
    CGAffineTransformMakeTranslation(&v20, *(a1 + 96) * 0.5, *(a1 + 104) * 0.5);
    t1 = v20;
    CGContextConcatCTM(c, &t1);
    t1 = v21;
    CGContextConcatCTM(c, &t1);
    t2 = v20;
    CGAffineTransformInvert(&t1, &t2);
    CGContextConcatCTM(c, &t1);
    v11 = *(a1 + 112);
    v12 = *(a1 + 120);
    v13 = TSDCenterRectOverRect(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), v11, v12, *(a1 + 128), *(a1 + 136));
    v14 = TSDSubtractPoints(v11, v12, v13);
    CGAffineTransformMakeTranslation(&t1, v14, v15);
    CGContextConcatCTM(c, &t1);
  }

  else if ([*(a1 + 40) isContactShadow])
  {
    CGContextTranslateCTM(c, 0.0, *(a1 + 136));
    CGContextScaleCTM(c, 1.0, -1.0);
  }

  v22.origin.x = TSDRectWithSize();
  CGContextDrawImage(c, v22, v4);
  CGImageRelease(v4);
  CGContextRestoreGState(c);
}

uint64_t __34__TSDStyledRep_textureForContext___block_invoke_2(uint64_t a1, CGContextRef c)
{
  CGContextSetAllowsFontSmoothing(c, 0);
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextSetShouldSubpixelQuantizeFonts(c, 0);
  if (*(a1 + 136) == 1)
  {
    v4 = [*(a1 + 32) layout];
    if (v4)
    {
      objc_msgSend_transformInRoot(v4);
    }

    else
    {
      memset(&v8, 0, sizeof(v8));
    }

    v5 = TSDTransformAngle(&v8.a);
    TSDCGContextUpdateLayoutAngle(c, v5);
  }

  CGContextTranslateCTM(c, -*(a1 + 48), -*(a1 + 56));
  CGContextScaleCTM(c, *(a1 + 80), *(a1 + 80));
  v6 = *(a1 + 104);
  *&v8.a = *(a1 + 88);
  *&v8.c = v6;
  *&v8.tx = *(a1 + 120);
  CGContextConcatCTM(c, &v8);
  if (([*(a1 + 40) shouldSeparateShadow] & 1) == 0)
  {
    [*(a1 + 32) drawShadowInContext:c withChildren:*(a1 + 137) withDrawableOpacity:0];
  }

  [*(a1 + 32) drawInContextWithoutEffects:c withContent:1 withStroke:1 withOpacity:0 forAlphaOnly:0 drawChildren:*(a1 + 137)];
  result = [*(a1 + 40) shouldSeparateReflection];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) drawReflectionInContext:c drawChildren:*(a1 + 137)];
  }

  return result;
}

uint64_t __34__TSDStyledRep_textureForContext___block_invoke_3(uint64_t a1, CGContextRef c)
{
  if (*(a1 + 128) == 1)
  {
    v4 = [*(a1 + 32) layout];
    if (v4)
    {
      objc_msgSend_transformInRoot(v4);
    }

    else
    {
      memset(&v8, 0, sizeof(v8));
    }

    v5 = TSDTransformAngle(&v8.a);
    TSDCGContextUpdateLayoutAngle(c, v5);
  }

  CGContextTranslateCTM(c, -*(a1 + 40), -*(a1 + 48));
  CGContextScaleCTM(c, *(a1 + 72), *(a1 + 72));
  v6 = *(a1 + 96);
  *&v8.a = *(a1 + 80);
  *&v8.c = v6;
  *&v8.tx = *(a1 + 112);
  CGContextConcatCTM(c, &v8);
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextSetShouldSubpixelQuantizeFonts(c, 0);
  return [*(a1 + 32) drawInContextWithoutEffects:c withContent:0 withStroke:1 withOpacity:0 forAlphaOnly:0 drawChildren:*(a1 + 129)];
}

uint64_t __34__TSDStyledRep_textureForContext___block_invoke_4(uint64_t a1, CGContextRef c)
{
  CGContextTranslateCTM(c, -*(a1 + 40), -*(a1 + 48));
  CGContextScaleCTM(c, *(a1 + 72), *(a1 + 72));
  v4 = [*(a1 + 32) layout];
  if (v4)
  {
    objc_msgSend_transformInRoot(v4);
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  CGContextConcatCTM(c, &transform);
  CGContextSetAllowsFontSubpixelQuantization(c, 0);
  CGContextSetShouldSubpixelQuantizeFonts(c, 0);
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__TSDStyledRep_textureForContext___block_invoke_5;
  v7[3] = &unk_279D494C8;
  v7[4] = v5;
  v8 = *(a1 + 80);
  return [v5 drawReflectionInContext:c withTransparencyLayer:0 applyingOpacity:0 shouldClipGradient:0 withBlock:v7];
}

@end