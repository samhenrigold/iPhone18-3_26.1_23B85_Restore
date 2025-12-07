@interface KNLiveVideoLayout
- (BOOL)isVideoMaskPathRectangular;
- (CGPoint)p_normalizedOffset;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameInRoot;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform;
- (CGRect)boundsForStandardKnobs;
- (CGRect)p_computeAlignmentFrameInRoot:(BOOL)root;
- (CGRect)p_computeAlignmentFrameWithTransform:(CGAffineTransform *)transform;
- (CGRect)videoBoundsForNaturalSize:(CGSize)size;
- (CGRect)videoMaskBounds;
- (KNLiveVideoInfo)liveVideoInfo;
- (KNLiveVideoLayout)initWithInfo:(id)info;
- (TSDFill)backgroundFill;
- (double)maskCornerRadius;
- (double)scale;
- (double)scaleForInlineClampingUnrotatedSize:(CGSize)size withTransform:(CGAffineTransform *)transform;
- (id)computeLayoutGeometry;
- (id)p_makeRoundedRectangleMaskPathSource;
- (id)pathForClippingConnectionLines;
- (id)stroke;
- (id)videoMaskPathForBounds:(CGRect)bounds;
- (int64_t)backgroundKind;
- (int64_t)effectiveMaskKind;
- (void)p_invalidateAlignmentFrame;
- (void)processChangedProperty:(int)property;
- (void)setGeometry:(id)geometry;
@end

@implementation KNLiveVideoLayout

- (KNLiveVideoLayout)initWithInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = KNLiveVideoLayout;
  return [(KNLiveVideoLayout *)&v4 initWithInfo:info];
}

- (KNLiveVideoInfo)liveVideoInfo
{
  objc_opt_class();
  info = [(KNLiveVideoLayout *)self info];
  v4 = TSUCheckedDynamicCast();

  return v4;
}

- (void)processChangedProperty:(int)property
{
  v7.receiver = self;
  v7.super_class = KNLiveVideoLayout;
  [(KNLiveVideoLayout *)&v7 processChangedProperty:?];
  if (property > 4578)
  {
    if (property == 4579)
    {
      [(KNLiveVideoLayout *)self p_invalidateAlignmentFrame];
      return;
    }

    if (property != 4580)
    {
      return;
    }

    [(KNLiveVideoLayout *)self p_invalidateAlignmentFrame];
    goto LABEL_8;
  }

  if (property != 517)
  {
    if (property != 4577)
    {
      return;
    }

LABEL_8:
    [(KNLiveVideoLayout *)self invalidate];
    return;
  }

  [(KNLiveVideoLayout *)self invalidateFrame];
  [(KNLiveVideoLayout *)self p_invalidateAlignmentFrame];
  [(KNLiveVideoLayout *)self invalidateExteriorWrap];
  info = [(KNLiveVideoLayout *)self info];
  if (([info isInlineWithText] & 1) != 0 || objc_msgSend(info, "isAnchoredToText"))
  {
    wrapInvalidationParent = [(KNLiveVideoLayout *)self wrapInvalidationParent];
    [wrapInvalidationParent wrappableChildInvalidated:self];
  }
}

- (id)computeLayoutGeometry
{
  layoutGeometryFromInfo = [(KNLiveVideoLayout *)self layoutGeometryFromInfo];
  if ([(KNLiveVideoLayout *)self layoutState]== 3)
  {
    originalPureGeometry = [(KNLiveVideoLayout *)self originalPureGeometry];
    v5 = objc_alloc(MEMORY[0x277D80300]);
    [originalPureGeometry size];
    v7 = v6;
    v9 = v8;
    if (layoutGeometryFromInfo)
    {
      objc_msgSend_transform(layoutGeometryFromInfo);
    }

    else
    {
      memset(&v55, 0, sizeof(v55));
    }

    v10 = [v5 initWithSize:&v55 transform:{v7, v9}];
  }

  else
  {
    v10 = layoutGeometryFromInfo;
  }

  parent = [(KNLiveVideoLayout *)self parent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v10 size];
    v14 = v13;
    v16 = v15;
    if (v10)
    {
      objc_msgSend_transform(v10);
    }

    else
    {
      memset(&v55, 0, sizeof(v55));
    }

    [(KNLiveVideoLayout *)self scaleForInlineClampingUnrotatedSize:&v55 withTransform:v14, v16];
    CGAffineTransformMakeScale(&v55, v18, v18);
    v17 = [v10 geometryByTransformingBy:&v55];
  }

  else
  {
    v17 = v10;
  }

  v19 = v17;
  stroke = [(KNLiveVideoLayout *)self stroke];
  v21 = stroke;
  if (stroke && [stroke shouldRender])
  {
    objc_opt_class();
    v22 = TSUDynamicCast();
    if ([v21 isFrame] && v22)
    {
      [v19 size];
      TSURectWithSize();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [v22 coverageRect:?];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = [v19 mutableCopy];
      [v39 setSize:{v36, v38}];
      if (v39)
      {
        objc_msgSend_transform(v39);
      }

      else
      {
        memset(&v55, 0, sizeof(v55));
      }

      CGAffineTransformTranslate(&v54, &v55, v32, v34);
      v55 = v54;
      [v39 setTransform:&v55];
      v59.origin.x = v24;
      v59.origin.y = v26;
      v59.size.width = v28;
      v59.size.height = v30;
      v60 = CGRectOffset(v59, -v32, -v34);
      x = v60.origin.x;
      y = v60.origin.y;
      width = v60.size.width;
      height = v60.size.height;
      [v22 coverageRectWithoutAdornment:?];
      v48 = [v22 shouldRenderForSizeIncludingCoverage:{v51, v52}];
    }

    else
    {
      [v21 renderedWidth];
      v50 = v49 * 0.5;
      v39 = [v19 geometryByOutsettingBy:{v50, v50}];
      [v19 size];
      TSURectWithSize();
      v58 = CGRectOffset(v57, v50, v50);
      x = v58.origin.x;
      y = v58.origin.y;
      width = v58.size.width;
      height = v58.size.height;
      v48 = 0;
    }
  }

  else
  {
    v39 = v19;
    [v39 size];
    TSURectWithSize();
    x = v40;
    y = v42;
    width = v44;
    height = v46;
    v48 = 0;
  }

  self->_videoMaskBounds.origin.x = x;
  self->_videoMaskBounds.origin.y = y;
  self->_videoMaskBounds.size.width = width;
  self->_videoMaskBounds.size.height = height;
  self->_shouldRenderFrameStroke = v48;

  return v39;
}

- (void)setGeometry:(id)geometry
{
  geometryCopy = geometry;
  if (self->_isCachedAlignmentFrameValid)
  {
    geometry = [(KNLiveVideoLayout *)self geometry];
    v6 = geometry;
    if (geometry && ([geometry differsInMoreThanTranslationFrom:geometryCopy] & 1) == 0)
    {
      if (geometryCopy)
      {
        objc_msgSend_transform(geometryCopy);
      }

      objc_msgSend_transform(v6, *(MEMORY[0x277CBF348] + 8));
      TSUSubtractPoints();
      TSUAddPoints();
      self->_cachedAlignmentFrame.origin.x = v7;
      self->_cachedAlignmentFrame.origin.y = v8;
    }

    else
    {
      [(KNLiveVideoLayout *)self p_invalidateAlignmentFrame];
    }
  }

  v9.receiver = self;
  v9.super_class = KNLiveVideoLayout;
  [(KNLiveVideoLayout *)&v9 setGeometry:geometryCopy];
}

- (CGRect)boundsForStandardKnobs
{
  x = self->_videoMaskBounds.origin.x;
  y = self->_videoMaskBounds.origin.y;
  width = self->_videoMaskBounds.size.width;
  height = self->_videoMaskBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)scaleForInlineClampingUnrotatedSize:(CGSize)size withTransform:(CGAffineTransform *)transform
{
  v6 = [objc_alloc(MEMORY[0x277D801C8]) initWithNaturalSize:{size.width, size.height}];
  v7 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v7;
  v11[2] = *&transform->tx;
  [(TSDStyledLayout *)self scaleToApplyToPathSourceNaturalSizeApplyingLayoutTransform:v11 withStartingPathSource:v6];
  v9 = v8;

  return v9;
}

- (CGRect)alignmentFrame
{
  if (self->_isCachedAlignmentFrameValid)
  {
    x = self->_cachedAlignmentFrame.origin.x;
    y = self->_cachedAlignmentFrame.origin.y;
    width = self->_cachedAlignmentFrame.size.width;
    height = self->_cachedAlignmentFrame.size.height;
  }

  else
  {
    [(KNLiveVideoLayout *)self p_computeAlignmentFrameInRoot:0];
    self->_cachedAlignmentFrame.origin.x = x;
    self->_cachedAlignmentFrame.origin.y = y;
    self->_cachedAlignmentFrame.size.width = width;
    self->_cachedAlignmentFrame.size.height = height;
    self->_isCachedAlignmentFrameValid = 1;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)p_invalidateAlignmentFrame
{
  v2 = *(MEMORY[0x277CBF398] + 16);
  self->_cachedAlignmentFrame.origin = *MEMORY[0x277CBF398];
  self->_cachedAlignmentFrame.size = v2;
  self->_isCachedAlignmentFrameValid = 0;
  [(KNLiveVideoLayout *)self invalidateExteriorWrap];
}

- (CGRect)alignmentFrameInRoot
{
  parent = [(KNLiveVideoLayout *)self parent];
  if (!parent || (-[KNLiveVideoLayout layoutController](self, "layoutController"), v4 = objc_claimAutoreleasedReturnValue(), [v4 rootLayout], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, parent == v5))
  {
    [(KNLiveVideoLayout *)self alignmentFrame];
  }

  else
  {
    [(KNLiveVideoLayout *)self p_computeAlignmentFrameInRoot:0];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v5;
  *&t1.tx = *&transform->tx;
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&t2.a = *MEMORY[0x277CBF2C0];
  *&t2.c = v6;
  *&t2.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v14.receiver = self;
    v14.super_class = KNLiveVideoLayout;
    v7 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v7;
    *&t1.tx = *&transform->tx;
    [(TSDStyledLayout *)&v14 baseFrameForFrameForCullingWithAdditionalTransform:&t1];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
    objc_msgSend_transform(self);
    v12 = *&transform->c;
    *&v13.a = *&transform->a;
    *&v13.c = v12;
    *&v13.tx = *&transform->tx;
    CGAffineTransformConcat(&t1, &t2, &v13);
    t2 = t1;
    [(KNLiveVideoLayout *)self p_computeAlignmentFrameWithTransform:&t2];
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)p_computeAlignmentFrameInRoot:(BOOL)root
{
  rootCopy = root;
  memset(&v24, 0, sizeof(v24));
  geometry = [(KNLiveVideoLayout *)self geometry];
  v6 = geometry;
  if (geometry)
  {
    objc_msgSend_transform(geometry);
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
  }

  parent = [(KNLiveVideoLayout *)self parent];
  v8 = parent;
  if (parent && rootCopy)
  {
    objc_msgSend_transformInRoot(parent);
    v21 = v24;
    CGAffineTransformConcat(&v23, &v21, &t2);
    v24 = v23;
  }

  v23 = v24;
  [(KNLiveVideoLayout *)self p_computeAlignmentFrameWithTransform:&v23];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)p_computeAlignmentFrameWithTransform:(CGAffineTransform *)transform
{
  [(KNLiveVideoLayout *)self videoMaskBounds];
  v5 = [(KNLiveVideoLayout *)self videoMaskPathForBounds:?];
  stroke = [(KNLiveVideoLayout *)self stroke];
  [stroke boundsForPath:v5];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *&transform->c;
  *&v35.a = *&transform->a;
  *&v35.c = v15;
  *&v35.tx = *&transform->tx;
  CGAffineTransformTranslate(&v36, &v35, -v7, -v9);
  v16 = *&v36.c;
  *&transform->a = *&v36.a;
  *&transform->c = v16;
  *&transform->tx = *&v36.tx;
  if ([stroke isFrame])
  {
    v17 = *&transform->c;
    *&v36.a = *&transform->a;
    *&v36.c = v17;
    *&v36.tx = *&transform->tx;
    v18 = v8;
    *&v17 = v10;
    v19 = v12;
    v20 = v14;
    v37 = CGRectApplyAffineTransform(*(&v17 - 8), &v36);
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
  }

  else
  {
    v25 = *&transform->c;
    *&v35.a = *&transform->a;
    *&v35.c = v25;
    v26 = [v5 copy];
    *&v36.a = *&v35.a;
    *&v36.c = *&v35.c;
    v36.tx = 0.0;
    v36.ty = 0.0;
    [v26 transformUsingAffineTransform:&v36];
    [stroke boundsForPath:v26];
    width = v27;
    height = v28;
    TSUAddPoints();
    x = v29;
    y = v30;
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

- (CGRect)videoBoundsForNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [KNLiveVideoMaskGeometry alloc];
  [(KNLiveVideoLayout *)self videoMaskBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(KNLiveVideoLayout *)self scale];
  v16 = v15;
  [(KNLiveVideoLayout *)self p_normalizedOffset];
  v19 = [(KNLiveVideoMaskGeometry *)v6 initWithMaskBounds:v8 scale:v10 normalizedOffset:v12, v14, v16, v17, v18];
  [(KNLiveVideoMaskGeometry *)v19 videoBoundsForNaturalSize:width, height];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (id)pathForClippingConnectionLines
{
  [(KNLiveVideoLayout *)self videoMaskBounds];

  return [(KNLiveVideoLayout *)self videoMaskPathForBounds:?];
}

- (id)stroke
{
  liveVideoInfo = [(KNLiveVideoLayout *)self liveVideoInfo];
  stroke = [liveVideoInfo stroke];

  return stroke;
}

- (double)scale
{
  liveVideoInfo = [(KNLiveVideoLayout *)self liveVideoInfo];
  [liveVideoInfo scale];
  v4 = v3;

  return v4;
}

- (CGPoint)p_normalizedOffset
{
  liveVideoInfo = [(KNLiveVideoLayout *)self liveVideoInfo];
  [liveVideoInfo normalizedOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (int64_t)effectiveMaskKind
{
  liveVideoInfo = [(KNLiveVideoLayout *)self liveVideoInfo];
  effectiveMaskKind = [liveVideoInfo effectiveMaskKind];

  return effectiveMaskKind;
}

- (double)maskCornerRadius
{
  liveVideoInfo = [(KNLiveVideoLayout *)self liveVideoInfo];
  [liveVideoInfo maskCornerRadius];
  v4 = v3;

  return v4;
}

- (BOOL)isVideoMaskPathRectangular
{
  effectiveMaskKind = [(KNLiveVideoLayout *)self effectiveMaskKind];
  [(KNLiveVideoLayout *)self maskCornerRadius];
  return v4 <= 0.0 && effectiveMaskKind == 0;
}

- (id)videoMaskPathForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  effectiveMaskKind = [(KNLiveVideoLayout *)self effectiveMaskKind];
  if (effectiveMaskKind == 1)
  {
    TSUFitOrFillSizeInRect();
    v14 = [MEMORY[0x277D81160] bezierPathWithOvalInRect:?];
  }

  else
  {
    if (effectiveMaskKind)
    {
      bezierPath = 0;
      goto LABEL_9;
    }

    [(KNLiveVideoLayout *)self maskCornerRadius];
    if (v9 > 0.0)
    {
      p_makeRoundedRectangleMaskPathSource = [(KNLiveVideoLayout *)self p_makeRoundedRectangleMaskPathSource];
      [p_makeRoundedRectangleMaskPathSource scaleToNaturalSize:{width, height}];
      bezierPath = [p_makeRoundedRectangleMaskPathSource bezierPath];
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      MinX = CGRectGetMinX(v18);
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      MinY = CGRectGetMinY(v19);
      CGAffineTransformMakeTranslation(&v16, MinX, MinY);
      [bezierPath transformUsingAffineTransform:&v16];

      goto LABEL_9;
    }

    v14 = [MEMORY[0x277D81160] bezierPathWithRect:{x, y, width, height}];
  }

  bezierPath = v14;
LABEL_9:

  return bezierPath;
}

- (id)p_makeRoundedRectangleMaskPathSource
{
  v3 = MEMORY[0x277D803A0];
  liveVideoInfo = [(KNLiveVideoLayout *)self liveVideoInfo];
  [liveVideoInfo maskCornerRadius];
  v6 = v5;
  [(KNLiveVideoLayout *)self videoMaskBounds];
  v9 = [v3 roundedRectangleWithScalar:1 naturalSize:v6 continuousCurve:{v7, v8}];

  return v9;
}

- (int64_t)backgroundKind
{
  liveVideoInfo = [(KNLiveVideoLayout *)self liveVideoInfo];
  effectiveBackgroundKind = [liveVideoInfo effectiveBackgroundKind];

  return effectiveBackgroundKind;
}

- (TSDFill)backgroundFill
{
  liveVideoInfo = [(KNLiveVideoLayout *)self liveVideoInfo];
  backgroundFill = [liveVideoInfo backgroundFill];

  return backgroundFill;
}

- (CGRect)videoMaskBounds
{
  x = self->_videoMaskBounds.origin.x;
  y = self->_videoMaskBounds.origin.y;
  width = self->_videoMaskBounds.size.width;
  height = self->_videoMaskBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end