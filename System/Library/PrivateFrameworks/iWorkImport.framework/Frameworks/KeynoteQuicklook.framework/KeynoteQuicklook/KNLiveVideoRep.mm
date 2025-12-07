@interface KNLiveVideoRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject mixingTypeContext:(id)context;
+ (id)p_sourceSymbolDrawingHelperForSource:(id)source reusingSourceSymbolDrawingHelperIfPossible:(id)possible;
- (BOOL)isPlaceholder;
- (BOOL)p_hasBackgroundFill;
- (BOOL)p_shouldRenderFrameStroke;
- (BOOL)p_shouldRenderStroke:(id)stroke;
- (BOOL)p_shouldUseImageTexture;
- (CGImage)newTextureMaskImageForViewScale:(double)scale includeFrameMask:(BOOL)mask maskRect:(CGRect *)rect;
- (CGRect)p_antialiasingDefeatedRectForRect:(CGRect)rect inContext:(CGContext *)context;
- (CGRect)p_antialiasingDefeatedVideoMaskBoundsInContext:(CGContext *)context;
- (KNLiveVideoInfo)liveVideoInfo;
- (KNLiveVideoLayout)liveVideoLayout;
- (KNLiveVideoRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)newVideoBackgroundFillTextureWithClipBounds:(CGRect)bounds offset:(CGPoint)offset transform:(CGAffineTransform *)transform contentRect:(CGRect)rect;
- (id)p_effectiveColorSet;
- (id)p_posterImageProvider;
- (id)textureForDescription:(id)description;
- (void)calculateTextureClipBounds:(CGRect *)bounds andOffset:(CGPoint *)offset withTransform:(CGAffineTransform *)transform andRectOnCanvas:(CGRect *)canvas textureDescription:(id)description isUsingImageTexture:(BOOL)texture;
- (void)dealloc;
- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test;
- (void)p_drawBackgroundFillRect:(CGRect)rect inContext:(CGContext *)context;
- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content withStroke:(BOOL)stroke opacity:(double)opacity withMask:(BOOL)mask forShadowOrHitTest:(BOOL)test;
- (void)p_drawOffStateRepresentationInContext:(CGContext *)context forShadowOrHitTest:(BOOL)test;
- (void)p_drawPosterImageWithProvider:(id)provider inContext:(CGContext *)context;
- (void)p_drawShadowOrHitTestImageInContext:(CGContext *)context;
- (void)p_drawSymbolInContext:(CGContext *)context;
- (void)p_updateFrameRep;
- (void)willBeRemoved;
@end

@implementation KNLiveVideoRep

- (KNLiveVideoRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v5.receiver = self;
  v5.super_class = KNLiveVideoRep;
  return [(TSDRep *)&v5 initWithLayout:layout canvas:canvas];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = KNLiveVideoRep;
  [(TSDStyledRep *)&v2 dealloc];
}

- (KNLiveVideoInfo)liveVideoInfo
{
  objc_opt_class();
  info = [(TSDRep *)self info];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (KNLiveVideoLayout)liveVideoLayout
{
  objc_opt_class();
  layout = [(TSDRep *)self layout];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (void)willBeRemoved
{
  v2.receiver = self;
  v2.super_class = KNLiveVideoRep;
  [(TSDRep *)&v2 willBeRemoved];
}

- (BOOL)isPlaceholder
{
  liveVideoInfo = [(KNLiveVideoRep *)self liveVideoInfo];
  isPlaceholder = [liveVideoInfo isPlaceholder];

  return isPlaceholder;
}

- (void)drawInContextWithoutEffects:(CGContext *)effects withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity forAlphaOnly:(BOOL)only drawChildren:(BOOL)children keepingChildrenPassingTest:(id)test
{
  if (opacity)
  {
    [(TSDStyledRep *)self opacity:effects];
  }

  MEMORY[0x2821F9670](self, sel_p_drawInContext_withContent_withStroke_opacity_withMask_forShadowOrHitTest_);
}

- (void)p_drawInContext:(CGContext *)context withContent:(BOOL)content withStroke:(BOOL)stroke opacity:(double)opacity withMask:(BOOL)mask forShadowOrHitTest:(BOOL)test
{
  testCopy = test;
  maskCopy = mask;
  strokeCopy = stroke;
  contentCopy = content;
  liveVideoLayout = [(KNLiveVideoRep *)self liveVideoLayout];
  v16 = liveVideoLayout;
  if (liveVideoLayout)
  {
    if (([liveVideoLayout isInvisible] & 1) == 0)
    {
      [(KNLiveVideoRep *)self p_updateFrameRep];
      layout = [(TSDRep *)self layout];
      stroke = [layout stroke];

      if (stroke && ([stroke shouldRender] & 1) == 0)
      {

        stroke = 0;
      }

      v19 = opacity < 1.0 && strokeCopy;
      v20 = v19 && contentCopy;
      if (v19 && contentCopy && (CGContextSaveGState(context), CGContextSetAlpha(context, opacity), stroke))
      {
        CGContextBeginTransparencyLayer(context, 0);
        v21 = 1;
      }

      else
      {
        v21 = 0;
      }

      [(KNLiveVideoRep *)self p_antialiasingDefeatedVideoMaskBoundsInContext:context];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      if (contentCopy)
      {
        CGContextSaveGState(context);
        if (maskCopy && *&self->super.mFlags)
        {
          objc_opt_class();
          v33 = TSUDynamicCast();
          v34 = v33;
          if (v33 && [v33 hasMask])
          {
            [v34 coverageRect:{v26, v28, v30, v32}];
            [*&self->super.mFlags applyMaskForRectWithCoverage:context toContext:?];
          }
        }

        [(KNLiveVideoRep *)self p_drawOffStateRepresentationInContext:context forShadowOrHitTest:testCopy];
        CGContextRestoreGState(context);
      }

      if (strokeCopy && stroke)
      {
        CGContextSaveGState(context);
        if ([stroke isFrame])
        {
          if ([v16 shouldRenderFrameStroke])
          {
            v35 = *&self->super.mFlags;
            CGContextGetCTM(&v38, context);
            TSUTransformScale();
            [v35 frameRect:context inContext:v26 withTotalScale:{v28, v30, v32, v36}];
          }
        }

        else
        {
          v37 = [v16 videoMaskPathForBounds:{v26, v28, v30, v32}];
          [stroke paintPath:objc_msgSend(v37 inContext:{"CGPath"), context}];
        }

        CGContextRestoreGState(context);
      }

      if (v21)
      {
        CGContextEndTransparencyLayer(context);
      }

      if (v20)
      {
        CGContextRestoreGState(context);
      }
    }
  }

  else
  {
    v22 = MEMORY[0x277D81150];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoRep p_drawInContext:withContent:withStroke:opacity:withMask:forShadowOrHitTest:]"];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoRep.m"];
    [v22 handleFailureInFunction:v23 file:v24 lineNumber:192 isFatal:0 description:{"invalid nil value for '%{public}s'", "liveVideoLayout"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }
}

- (void)p_drawOffStateRepresentationInContext:(CGContext *)context forShadowOrHitTest:(BOOL)test
{
  if (test)
  {

    MEMORY[0x2821F9670](self, sel_p_drawShadowOrHitTestImageInContext_);
  }

  else
  {
    [(KNLiveVideoRep *)self p_antialiasingDefeatedVideoMaskBoundsInContext:context];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    liveVideoLayout = [(KNLiveVideoRep *)self liveVideoLayout];
    v17 = [liveVideoLayout videoMaskPathForBounds:{v7, v9, v11, v13}];

    v15 = v17;
    [v17 CGPath];
    CGContextAddPathSafe();
    CGContextClip(context);
    p_posterImageProvider = [(KNLiveVideoRep *)self p_posterImageProvider];
    if (p_posterImageProvider)
    {
      [(KNLiveVideoRep *)self p_drawPosterImageWithProvider:p_posterImageProvider inContext:context];
    }

    else
    {
      [(KNLiveVideoRep *)self p_drawSymbolInContext:context];
    }
  }
}

- (void)p_drawShadowOrHitTestImageInContext:(CGContext *)context
{
  [(KNLiveVideoRep *)self p_antialiasingDefeatedVideoMaskBoundsInContext:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  liveVideoLayout = [(KNLiveVideoRep *)self liveVideoLayout];
  v16 = [liveVideoLayout videoMaskPathForBounds:{v6, v8, v10, v12}];

  blackColor = [MEMORY[0x277D81180] blackColor];
  CGContextSetFillColorWithColor(context, [blackColor CGColor]);

  v15 = v16;
  [v16 CGPath];
  CGContextAddPathSafe();
  CGContextFillPath(context);
}

- (void)p_drawPosterImageWithProvider:(id)provider inContext:(CGContext *)context
{
  providerCopy = provider;
  [providerCopy naturalSize];
  v7 = v6;
  v9 = v8;
  liveVideoLayout = [(KNLiveVideoRep *)self liveVideoLayout];
  [liveVideoLayout videoBoundsForNaturalSize:{v7, v9}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(KNLiveVideoRep *)self p_antialiasingDefeatedRectForRect:context inContext:v12, v14, v16, v18];
  [providerCopy drawImageInContext:context rect:?];
}

- (void)p_drawSymbolInContext:(CGContext *)context
{
  v40[2] = *MEMORY[0x277D85DE8];
  [(KNLiveVideoRep *)self p_antialiasingDefeatedVideoMaskBoundsInContext:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  CGContextClipToRectSafe();
  p_effectiveColorSet = [(KNLiveVideoRep *)self p_effectiveColorSet];
  v14 = TSUSRGBColorSpace();
  backgroundGradientTopColor = [p_effectiveColorSet backgroundGradientTopColor];
  v40[0] = [backgroundGradientTopColor CGColor];
  backgroundGradientBottomColor = [p_effectiveColorSet backgroundGradientBottomColor];
  v40[1] = [backgroundGradientBottomColor CGColor];
  v17 = CGGradientCreateWithColors(v14, [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2], 0);

  v43.origin.x = v6;
  v43.origin.y = v8;
  v43.size.width = v10;
  v43.size.height = v12;
  MidX = CGRectGetMidX(v43);
  v44.origin.x = v6;
  v44.origin.y = v8;
  v44.size.width = v10;
  v44.size.height = v12;
  MinY = CGRectGetMinY(v44);
  v45.origin.x = v6;
  v45.origin.y = v8;
  v45.size.width = v10;
  v45.size.height = v12;
  v20 = CGRectGetMidX(v45);
  v46.origin.x = v6;
  v46.origin.y = v8;
  v46.size.width = v10;
  v46.size.height = v12;
  v42.y = CGRectGetMaxY(v46);
  v41.x = MidX;
  v41.y = MinY;
  v42.x = v20;
  CGContextDrawLinearGradient(context, v17, v41, v42, 0);
  CGGradientRelease(v17);
  v47.origin.x = v6;
  v47.origin.y = v8;
  v47.size.width = v10;
  v47.size.height = v12;
  v21 = CGRectGetWidth(v47) + -80.0;
  v48.origin.x = v6;
  v48.origin.y = v8;
  v48.size.width = v10;
  v48.size.height = v12;
  v22 = fmax(v21, 50.0);
  v23 = fmax(CGRectGetHeight(v48) + -80.0, 50.0);
  v49.origin.x = v6;
  v49.origin.y = v8;
  v49.size.width = v10;
  v49.size.height = v12;
  Width = CGRectGetWidth(v49);
  v50.origin.x = v6;
  v50.origin.y = v8;
  v50.size.width = v10;
  v50.size.height = v12;
  Height = CGRectGetHeight(v50);
  if (v22 <= Width && v23 <= Height)
  {
    TSUCenterOfRect();
    TSURectWithCenterAndSize();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = objc_opt_class();
    liveVideoInfo = [(KNLiveVideoRep *)self liveVideoInfo];
    source = [liveVideoInfo source];
    v38 = [v35 p_sourceSymbolDrawingHelperForSource:source reusingSourceSymbolDrawingHelperIfPossible:self->_frameRep];
    frameRep = self->_frameRep;
    self->_frameRep = v38;

    [(TSDFrameRep *)self->_frameRep drawIn:context context:0 includeBackground:v28, v30, v32, v34];
  }
}

+ (id)p_sourceSymbolDrawingHelperForSource:(id)source reusingSourceSymbolDrawingHelperIfPossible:(id)possible
{
  sourceCopy = source;
  possibleCopy = possible;
  symbolAbbreviationText = [sourceCopy symbolAbbreviationText];
  if (sourceCopy)
  {
    symbolImageIdentifier = [sourceCopy symbolImageIdentifier];
    symbolTintColorIdentifier = [sourceCopy symbolTintColorIdentifier];
  }

  else
  {
    symbolImageIdentifier = +[KNLiveVideoSource defaultSymbolImageIdentifier];
    symbolTintColorIdentifier = +[KNLiveVideoSource defaultSymbolTintColorIdentifier];
  }

  v10 = symbolTintColorIdentifier;
  if (!possibleCopy)
  {
    goto LABEL_11;
  }

  abbreviationText = [(KNLiveVideoSourceSymbolDrawingHelper *)possibleCopy abbreviationText];
  v12 = abbreviationText;
  if (symbolAbbreviationText | abbreviationText && ![abbreviationText isEqual:symbolAbbreviationText] || -[KNLiveVideoSourceSymbolDrawingHelper imageIdentifier](possibleCopy, "imageIdentifier") != symbolImageIdentifier)
  {

    goto LABEL_11;
  }

  tintColorIdentifier = [(KNLiveVideoSourceSymbolDrawingHelper *)possibleCopy tintColorIdentifier];

  v14 = possibleCopy;
  if (tintColorIdentifier != v10)
  {
LABEL_11:
    v14 = [[_TtC16KeynoteQuicklook36KNLiveVideoSourceSymbolDrawingHelper alloc] initWithAbbreviationText:symbolAbbreviationText imageIdentifier:symbolImageIdentifier tintColorIdentifier:v10];
  }

  return v14;
}

- (CGRect)p_antialiasingDefeatedVideoMaskBoundsInContext:(CGContext *)context
{
  liveVideoLayout = [(KNLiveVideoRep *)self liveVideoLayout];
  [liveVideoLayout videoMaskBounds];
  [(KNLiveVideoRep *)self p_antialiasingDefeatedRectForRect:context inContext:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)p_effectiveColorSet
{
  liveVideoInfo = [(KNLiveVideoRep *)self liveVideoInfo];
  source = [liveVideoInfo source];

  posterImageData = [source posterImageData];

  if (posterImageData)
  {
    symbolTintColorIdentifier = 0;
  }

  else
  {
    symbolTintColorIdentifier = [source symbolTintColorIdentifier];
  }

  v6 = [KNLiveVideoSource colorSetForSymbolTintColorIdentifier:symbolTintColorIdentifier];

  return v6;
}

- (id)p_posterImageProvider
{
  liveVideoInfo = [(KNLiveVideoRep *)self liveVideoInfo];
  source = [liveVideoInfo source];
  posterImageData = [source posterImageData];

  if (posterImageData && ([posterImageData needsDownload] & 1) == 0)
  {
    objc_opt_class();
    mEMORY[0x277D802D0] = [MEMORY[0x277D802D0] sharedPool];
    v7 = [mEMORY[0x277D802D0] providerForData:posterImageData shouldValidate:1];
    v8 = TSUDynamicCast();

    [v8 naturalSize];
    v10 = v9;
    v12 = v11;
    v5 = 0;
    if (([v8 isError] & 1) == 0 && v10 > 0.0 && v12 > 0.0)
    {
      v5 = v8;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)p_antialiasingDefeatedRectForRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  canvas = [(TSDRep *)self canvas];
  if (![canvas isDrawingIntoPDF] || (objc_msgSend(canvas, "isPrinting") & 1) == 0)
  {
    memset(&v28, 0, sizeof(v28));
    layout = [(TSDRep *)self layout];
    geometryInRoot = [layout geometryInRoot];
    v12 = geometryInRoot;
    if (geometryInRoot)
    {
      objc_msgSend_transform(geometryInRoot);
    }

    else
    {
      memset(&v28, 0, sizeof(v28));
    }

    v27 = v28;
    if (TSUIsTransformAxisAligned())
    {
      v27 = v28;
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      CGRectApplyAffineTransform(v29, &v27);
      TSDCGContextAssociatedScreenScale();
      canvas2 = [(TSDRep *)self canvas];
      [canvas2 viewScale];

      TSURoundedRectForScale();
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v26 = v28;
      CGAffineTransformInvert(&v27, &v26);
      v30.origin.x = v15;
      v30.origin.y = v17;
      v30.size.width = v19;
      v30.size.height = v21;
      v31 = CGRectApplyAffineTransform(v30, &v27);
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
    }
  }

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)p_updateFrameRep
{
  layout = [(TSDRep *)self layout];
  stroke = [layout stroke];

  if (-[KNLiveVideoRep p_shouldRenderStroke:](self, "p_shouldRenderStroke:", stroke) && [stroke isFrame])
  {
    objc_opt_class();
    v4 = TSUCheckedDynamicCast();
    v5 = *&self->super.mFlags;
    if (!v5)
    {
      goto LABEL_10;
    }

    frame = [v5 frame];

    v7 = *&self->super.mFlags;
    if (frame != v4)
    {
      *&self->super.mFlags = 0;

      v7 = *&self->super.mFlags;
    }

    if (!v7)
    {
LABEL_10:
      if (v4)
      {
        v8 = [objc_alloc(MEMORY[0x277D80258]) initWithTSDFrame:v4];
        v9 = *&self->super.mFlags;
        *&self->super.mFlags = v8;
      }
    }
  }

  else
  {
    v4 = *&self->super.mFlags;
    if (!v4)
    {
      goto LABEL_13;
    }

    *&self->super.mFlags = 0;
  }

LABEL_13:
}

- (BOOL)p_shouldRenderFrameStroke
{
  liveVideoLayout = [(KNLiveVideoRep *)self liveVideoLayout];
  shouldRenderFrameStroke = [liveVideoLayout shouldRenderFrameStroke];

  return shouldRenderFrameStroke;
}

- (BOOL)p_shouldRenderStroke:(id)stroke
{
  strokeCopy = stroke;
  if (strokeCopy && [MEMORY[0x277CBEB68] null] != strokeCopy && objc_msgSend(strokeCopy, "shouldRender"))
  {
    if ([strokeCopy isFrame])
    {
      p_shouldRenderFrameStroke = [(KNLiveVideoRep *)self p_shouldRenderFrameStroke];
    }

    else
    {
      p_shouldRenderFrameStroke = 1;
    }
  }

  else
  {
    p_shouldRenderFrameStroke = 0;
  }

  return p_shouldRenderFrameStroke;
}

- (BOOL)p_hasBackgroundFill
{
  liveVideoLayout = [(KNLiveVideoRep *)self liveVideoLayout];
  v3 = [liveVideoLayout backgroundKind] == 1;

  return v3;
}

- (void)p_drawBackgroundFillRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  liveVideoLayout = [(KNLiveVideoRep *)self liveVideoLayout];
  backgroundFill = [liveVideoLayout backgroundFill];

  [backgroundFill paintRect:context inContext:{x, y, width, height}];
}

- (id)textureForDescription:(id)description
{
  v7.receiver = self;
  v7.super_class = KNLiveVideoRep;
  v3 = [(TSDStyledRep *)&v7 textureForDescription:description];
  v4 = v3;
  if (v3)
  {
    [v3 setObjectType:10];
    v5 = v4;
  }

  return v4;
}

- (CGImage)newTextureMaskImageForViewScale:(double)scale includeFrameMask:(BOOL)mask maskRect:(CGRect *)rect
{
  maskCopy = mask;
  [(KNLiveVideoRep *)self p_updateFrameRep];
  liveVideoLayout = [(KNLiveVideoRep *)self liveVideoLayout];
  v10 = liveVideoLayout;
  if (liveVideoLayout)
  {
    isVideoMaskPathRectangular = [liveVideoLayout isVideoMaskPathRectangular];
    objc_opt_class();
    layout = [(TSDRep *)self layout];
    stroke = [layout stroke];
    v14 = TSUDynamicCast();

    if (maskCopy && v14 && *&self->super.mFlags)
    {
      if (([v14 hasMask] & 1) == 0 && ((isVideoMaskPathRectangular ^ 1) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if (isVideoMaskPathRectangular)
    {
LABEL_7:
      Image = 0;
LABEL_23:

      goto LABEL_24;
    }

    [v10 videoMaskBounds];
    if (maskCopy)
    {
      [v14 coverageRect:{v16, v17, v18, v19}];
      v21 = v20;
      v46 = v22;
      v24 = v23;
      v26 = v25;
      if ([v14 shouldRenderForSizeIncludingCoverage:{v23, v25}])
      {
        Image = [*&self->super.mFlags newFrameForMask:1 size:1 forCALayer:v24 viewScale:{v26, scale}];
        if ((isVideoMaskPathRectangular & 1) == 0)
        {
LABEL_18:
          v44 = v24;
          v45 = v26;
          TSUMultiplySizeScalar();
          TSURoundedSize();
          TSURectWithSize();
          v42 = v31;
          v43 = v32;
          v34 = v33;
          v36 = v35;
          v37 = TSDBitmapContextCreate();
          v30 = v46;
          TSUSubtractPoints();
          TSURectWithOriginAndSize();
          TSUMultiplyRectScalar();
          TSURoundedRect();
          v38 = [v10 videoMaskPathForBounds:?];
          [v38 CGPath];

          CGContextAddPathSafe();
          CGContextClip(v37);
          if (Image)
          {
            CGContextSaveGState(v37);
            v47.origin.x = v42;
            v47.origin.y = v43;
            v47.size.width = v34;
            v47.size.height = v36;
            Height = CGRectGetHeight(v47);
            CGContextTranslateCTM(v37, 0.0, Height);
            CGContextScaleCTM(v37, 1.0, -1.0);
            v48.origin.x = v42;
            v48.origin.y = v43;
            v48.size.width = v34;
            v48.size.height = v36;
            CGContextDrawImage(v37, v48, Image);
            CGContextRestoreGState(v37);
          }

          else
          {
            whiteColor = [MEMORY[0x277D81180] whiteColor];
            CGContextSetFillColorWithColor(v37, [whiteColor CGColor]);

            v49.origin.x = v42;
            v49.origin.y = v43;
            v49.size.width = v34;
            v49.size.height = v36;
            CGContextFillRect(v37, v49);
          }

          CGImageRelease(Image);
          Image = CGBitmapContextCreateImage(v37);
          CGContextRelease(v37);
          v24 = v44;
          v26 = v45;
          if (!rect)
          {
            goto LABEL_23;
          }

LABEL_22:
          rect->origin.x = v21;
          rect->origin.y = v30;
          rect->size.width = v24;
          rect->size.height = v26;
          goto LABEL_23;
        }
      }

      else
      {
        Image = 0;
        if ((isVideoMaskPathRectangular & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      Image = 0;
      v26 = v19;
      v24 = v18;
      v46 = v17;
      v21 = v16;
      if ((isVideoMaskPathRectangular & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v30 = v46;
    if (!rect)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v27 = MEMORY[0x277D81150];
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLiveVideoRep newTextureMaskImageForViewScale:includeFrameMask:maskRect:]"];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNLiveVideoRep.m"];
  [v27 handleFailureInFunction:v28 file:v29 lineNumber:2721 isFatal:0 description:{"invalid nil value for '%{public}s'", "liveVideoLayout"}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  Image = 0;
LABEL_24:

  return Image;
}

- (id)newVideoBackgroundFillTextureWithClipBounds:(CGRect)bounds offset:(CGPoint)offset transform:(CGAffineTransform *)transform contentRect:(CGRect)rect
{
  y = offset.y;
  x = offset.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v11 = bounds.origin.y;
  v12 = bounds.origin.x;
  if (![(KNLiveVideoRep *)self p_hasBackgroundFill])
  {
    return 0;
  }

  liveVideoLayout = [(KNLiveVideoRep *)self liveVideoLayout];
  backgroundFill = [liveVideoLayout backgroundFill];

  if (backgroundFill && ([backgroundFill isClear] & 1) == 0)
  {
    canvas = [(TSDRep *)self canvas];
    [canvas viewScale];
    v19 = v18;

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_275DD0518;
    aBlock[3] = &unk_27A698EB0;
    *&aBlock[5] = v12;
    *&aBlock[6] = v11;
    *&aBlock[7] = width;
    *&aBlock[8] = height;
    aBlock[9] = v19;
    v20 = *&transform->c;
    v24 = *&transform->a;
    v25 = v20;
    v26 = *&transform->tx;
    aBlock[4] = self;
    v21 = _Block_copy(aBlock);
    v16 = [objc_alloc(MEMORY[0x277D803E8]) initWithSize:v21 offset:width renderBlock:{height, x, y}];
    [v16 setTextureOpacity:1.0];
    [v16 setContentRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)p_shouldUseImageTexture
{
  layout = [(TSDRep *)self layout];
  stroke = [layout stroke];

  if (stroke)
  {
    v5 = ![(KNLiveVideoRep *)self p_shouldRenderStroke:stroke];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)calculateTextureClipBounds:(CGRect *)bounds andOffset:(CGPoint *)offset withTransform:(CGAffineTransform *)transform andRectOnCanvas:(CGRect *)canvas textureDescription:(id)description isUsingImageTexture:(BOOL)texture
{
  descriptionCopy = description;
  v14.receiver = self;
  v14.super_class = KNLiveVideoRep;
  [(TSDStyledRep *)&v14 calculateTextureClipBounds:bounds andOffset:offset withTransform:transform andRectOnCanvas:canvas textureDescription:descriptionCopy isUsingImageTexture:[(KNLiveVideoRep *)self p_shouldUseImageTexture]];
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)object incomingObject:(id)incomingObject mixingTypeContext:(id)context
{
  contextCopy = context;
  incomingObjectCopy = incomingObject;
  objectCopy = object;
  objc_opt_class();
  v10 = TSUDynamicCast();

  liveVideoInfo = [v10 liveVideoInfo];
  objc_opt_class();
  v12 = TSUDynamicCast();

  liveVideoInfo2 = [v12 liveVideoInfo];
  v14 = liveVideoInfo2;
  v15 = 0.0;
  if (v10 && liveVideoInfo && v12 && liveVideoInfo2)
  {
    if ([liveVideoInfo mixingTypeWithObject:liveVideoInfo2 context:contextCopy] == 1)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 1.0;
    }
  }

  return v15;
}

@end