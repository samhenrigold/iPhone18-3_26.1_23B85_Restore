@interface AKBitmapFIFO
- (AKBitmapFIFO)initWithFIFO:(id)o;
- (CGPath)newPathFromCurrentBitmap;
- (CGPoint)_convertPointToScreenBacking:(CGPoint)backing;
- (CGRect)bitmapRectInView;
- (CGRect)unionDirtyRect;
- (CGSize)bitmapSize;
- (void)_addPointToBitmap:(AKBitmapFIFO *)self;
- (void)_addSinglePointToBitmap:(AKBitmapFIFO *)self;
- (void)_addToDirtyRect:(CGRect)rect;
- (void)_applyDirtyRectToView;
- (void)_clearAllBitmapData;
- (void)_clearCachedPath;
- (void)_createBitmapContextIfNecessary;
- (void)_createBitmapIfNecessary;
- (void)_updateBitmapSizeFromViewIfNecessary;
- (void)addPoint:(AKBitmapFIFO *)self;
- (void)clear;
- (void)flush;
- (void)setIsInLiveDraw:(BOOL)draw;
- (void)setView:(id)view;
- (void)teardown;
@end

@implementation AKBitmapFIFO

- (AKBitmapFIFO)initWithFIFO:(id)o
{
  v8.receiver = self;
  v8.super_class = AKBitmapFIFO;
  v3 = [(CHPointFIFO *)&v8 initWithFIFO:o];
  v4 = v3;
  if (v3)
  {
    [(AKBitmapFIFO *)v3 setBitmapSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    [(AKBitmapFIFO *)v4 setBitmapSizeHasBeenUpdatedOnceForLiveDraw:0];
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    v7[0] = *MEMORY[0x277CBF2C0];
    v7[1] = v5;
    v7[2] = *(MEMORY[0x277CBF2C0] + 32);
    [(AKBitmapFIFO *)v4 setViewToBitmapTransform:v7];
    [(AKBitmapFIFO *)v4 setBitmapSizeMultiplier:1.0];
    [(AKBitmapFIFO *)v4 setLastPoint:0.0];
    [(AKBitmapFIFO *)v4 setUnionDirtyRect:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  }

  return v4;
}

- (void)teardown
{
  [(AKBitmapFIFO *)self setView:0];

  [(AKBitmapFIFO *)self _clearAllBitmapData];
}

- (void)addPoint:(AKBitmapFIFO *)self
{
  v4 = v2;
  [(AKBitmapFIFO *)self _clearCachedPath];
  [(AKBitmapFIFO *)self _createBitmapContextIfNecessary];
  [(AKBitmapFIFO *)self _addPointToBitmap:v4];

  MEMORY[0x2821F9670](self, sel_emitPoint_);
}

- (void)flush
{
  v3.receiver = self;
  v3.super_class = AKBitmapFIFO;
  [(CHPointFIFO *)&v3 flush];
  [(AKBitmapFIFO *)self setLastPoint:0.0];
  [(AKBitmapFIFO *)self resetDirtyRect];
}

- (void)clear
{
  v4.receiver = self;
  v4.super_class = AKBitmapFIFO;
  [(CHPointFIFO *)&v4 clear];
  [(AKBitmapFIFO *)self _clearCachedPath];
  [(AKBitmapFIFO *)self _clearAllBitmapData];
  view = [(AKBitmapFIFO *)self view];
  [view setNeedsDisplay];

  [(AKBitmapFIFO *)self setLastPoint:0.0];
  [(AKBitmapFIFO *)self resetDirtyRect];
}

- (void)setIsInLiveDraw:(BOOL)draw
{
  if (self->_isInLiveDraw != draw)
  {
    self->_isInLiveDraw = draw;
    [(AKBitmapFIFO *)self setBitmapSizeHasBeenUpdatedOnceForLiveDraw:0];
  }
}

- (void)setView:(id)view
{
  viewCopy = view;
  if (self->_view != viewCopy)
  {
    v6 = viewCopy;
    [(AKBitmapFIFO *)self clear];
    objc_storeStrong(&self->_view, view);
    [(AKBitmapFIFO *)self _updateBitmapSizeFromViewIfNecessary];
    viewCopy = v6;
  }
}

- (CGRect)bitmapRectInView
{
  view = [(AKBitmapFIFO *)self view];
  [view bounds];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  if (![AKGeometryHelper isUnpresentableRect:?])
  {
    v12 = *MEMORY[0x277CBF348];
    v13 = *(MEMORY[0x277CBF348] + 8);
    [(AKBitmapFIFO *)self _convertPointToScreenBacking:1.0, 0.0];
    v15 = v14;
    v17 = v16;
    [(AKBitmapFIFO *)self _convertPointToScreenBacking:v12, v13];
    v19 = vabdd_f64(v15, v18);
    v21 = vabdd_f64(v17, v20);
    if (v19 < v21)
    {
      v19 = v21;
    }

    v22 = 1.0 / v19 * -200.0;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v28 = CGRectInset(v27, v22, v22);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGPath)newPathFromCurrentBitmap
{
  cachedPath = self->_cachedPath;
  if (!cachedPath)
  {
    v4 = [[AKPotrace alloc] initWithCGImage:[(AKBitmapFIFO *)self currentBitmap] flipped:1 whiteIsInside:1];
    v5 = v4;
    if (v4)
    {
      [(AKPotrace *)v4 setTurdsize:0];
      cGPath = [(AKPotrace *)v5 CGPath];
      memset(&v9, 0, sizeof(v9));
      objc_msgSend_viewToBitmapTransform(self);
      CGAffineTransformInvert(&v9, &v8);
      self->_cachedPath = MEMORY[0x245CAE590](cGPath, &v9);
    }

    cachedPath = self->_cachedPath;
  }

  return CGPathCreateMutableCopy(cachedPath);
}

- (void)_clearCachedPath
{
  cachedPath = self->_cachedPath;
  if (cachedPath)
  {
    CGPathRelease(cachedPath);
    self->_cachedPath = 0;
  }
}

- (CGPoint)_convertPointToScreenBacking:(CGPoint)backing
{
  y = backing.y;
  x = backing.x;
  view = [(AKBitmapFIFO *)self view];
  window = [view window];
  [view convertPoint:window toView:{x, y}];
  [window convertPoint:0 toWindow:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_updateBitmapSizeFromViewIfNecessary
{
  if (![(AKBitmapFIFO *)self isInLiveDraw]|| ![(AKBitmapFIFO *)self bitmapSizeHasBeenUpdatedOnceForLiveDraw])
  {
    [(AKBitmapFIFO *)self bitmapRectInView];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if (![AKGeometryHelper isUnpresentableRect:?])
    {
      memset(&v64, 0, sizeof(v64));
      v65.origin.x = v4;
      v65.origin.y = v6;
      v65.size.width = v8;
      v65.size.height = v10;
      v11 = -CGRectGetMidX(v65);
      v66.origin.x = v4;
      v66.origin.y = v6;
      v66.size.width = v8;
      v66.size.height = v10;
      MidY = CGRectGetMidY(v66);
      CGAffineTransformMakeTranslation(&v64, v11, -MidY);
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = sub_23F488F98;
      v63[3] = &unk_278C7BDC8;
      v63[4] = self;
      [AKGeometryHelper exifOrientationWithConversionBlock:v63];
      memset(&v62, 0, sizeof(v62));
      objc_msgSend_affineTransformForExifOrientation_aboutCenter_(AKGeometryHelper, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
      v67.origin.x = v4;
      v67.origin.y = v6;
      v67.size.width = v8;
      v67.size.height = v10;
      MinX = CGRectGetMinX(v67);
      v68.origin.x = v4;
      v68.origin.y = v6;
      v68.size.width = v8;
      v68.size.height = v10;
      MinY = CGRectGetMinY(v68);
      v69.origin.x = v4;
      v69.origin.y = v6;
      v69.size.width = v8;
      v69.size.height = v10;
      MaxX = CGRectGetMaxX(v69);
      v70.origin.x = v4;
      v70.origin.y = v6;
      v70.size.width = v8;
      v70.size.height = v10;
      MaxY = CGRectGetMaxY(v70);
      [(AKBitmapFIFO *)self _convertPointToScreenBacking:MinX, MinY];
      v18 = v17;
      v20 = v19;
      [(AKBitmapFIFO *)self _convertPointToScreenBacking:MaxX, MaxY];
      v71.size.width = v21 - v18;
      v71.size.height = v22 - v20;
      v71.origin.x = v18;
      v71.origin.y = v20;
      v72 = CGRectStandardize(v71);
      x = v72.origin.x;
      y = v72.origin.y;
      width = v72.size.width;
      height = v72.size.height;
      v61 = v62;
      v72.origin.x = v4;
      v72.origin.y = v6;
      v72.size.width = v8;
      v72.size.height = v10;
      v73 = CGRectApplyAffineTransform(v72, &v61);
      v53 = v6;
      v54 = v4;
      v27 = v73.origin.x;
      v48 = v73.origin.y;
      rect = v73.origin.x;
      rect_16 = v10;
      rect_24 = v8;
      v28 = v73.size.width;
      v29 = v73.size.height;
      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      v30 = CGRectGetWidth(v73);
      v74.origin.x = v27;
      v74.origin.y = v48;
      v74.size.width = v28;
      v74.size.height = v29;
      rect_8 = v30 / CGRectGetWidth(v74);
      v75.origin.x = x;
      v31 = x;
      v75.origin.y = y;
      v75.size.width = width;
      v75.size.height = height;
      v32 = CGRectGetHeight(v75);
      v76.origin.x = rect;
      v76.origin.y = v48;
      v76.size.width = v28;
      v76.size.height = v29;
      v33 = CGRectGetHeight(v76);
      memset(&v61, 0, sizeof(v61));
      CGAffineTransformMakeScale(&v61, rect_8, v32 / v33);
      memset(&v60, 0, sizeof(v60));
      v77.origin.x = v31;
      v77.origin.y = y;
      v77.size.width = width;
      v77.size.height = height;
      v34 = CGRectGetWidth(v77) * 0.5;
      v78.origin.x = v31;
      v78.origin.y = y;
      v78.size.width = width;
      v78.size.height = height;
      v35 = CGRectGetHeight(v78);
      CGAffineTransformMakeTranslation(&v60, v34, v35 * 0.5);
      memset(&v59, 0, sizeof(v59));
      [(AKBitmapFIFO *)self bitmapSizeMultiplier];
      v37 = v36;
      [(AKBitmapFIFO *)self bitmapSizeMultiplier];
      CGAffineTransformMakeScale(&v59, v37, v38);
      v39 = *(MEMORY[0x277CBF2C0] + 16);
      *&v58.a = *MEMORY[0x277CBF2C0];
      *&v58.c = v39;
      *&v58.tx = *(MEMORY[0x277CBF2C0] + 32);
      *&t1.a = *&v58.a;
      *&t1.c = v39;
      *&t1.tx = *&v58.tx;
      t2 = v64;
      CGAffineTransformConcat(&v58, &t1, &t2);
      t2 = v58;
      v55 = v62;
      CGAffineTransformConcat(&t1, &t2, &v55);
      v58 = t1;
      t2 = t1;
      v55 = v61;
      CGAffineTransformConcat(&t1, &t2, &v55);
      v58 = t1;
      t2 = t1;
      v55 = v60;
      CGAffineTransformConcat(&t1, &t2, &v55);
      v58 = t1;
      t2 = t1;
      v55 = v59;
      CGAffineTransformConcat(&t1, &t2, &v55);
      v58 = t1;
      v79.origin.y = v53;
      v79.origin.x = v54;
      v79.size.height = rect_16;
      v79.size.width = rect_24;
      v80 = CGRectApplyAffineTransform(v79, &t1);
      v40 = v80.origin.x;
      v41 = v80.origin.y;
      v42 = v80.size.width;
      v43 = v80.size.height;
      v44 = floor(CGRectGetWidth(v80));
      v81.origin.x = v40;
      v81.origin.y = v41;
      v81.size.width = v42;
      v81.size.height = v43;
      v45 = floor(CGRectGetHeight(v81));
      if (![AKGeometryHelper isUnpresentableRect:0.0, 0.0, v44, v45])
      {
        [(AKBitmapFIFO *)self bitmapSize];
        if (v44 != v47 || v45 != v46 || (objc_msgSend_viewToBitmapTransform(self), t2 = v58, !CGAffineTransformEqualToTransform(&t2, &t1)))
        {
          [(AKBitmapFIFO *)self setBitmapSize:v44, v45];
          t1 = v58;
          [(AKBitmapFIFO *)self setViewToBitmapTransform:&t1];
          [(AKBitmapFIFO *)self _clearAllBitmapData];
          if ([(AKBitmapFIFO *)self isInLiveDraw])
          {
            [(AKBitmapFIFO *)self setBitmapSizeHasBeenUpdatedOnceForLiveDraw:1];
          }
        }
      }
    }
  }
}

- (void)_addPointToBitmap:(AKBitmapFIFO *)self
{
  v14 = v2;
  CGImageRelease(self->_bitmapImage);
  self->_bitmapImage = 0;
  [(AKBitmapFIFO *)self lastPoint];
  v5 = v4;
  if (v4.f32[0] != 0.0 || v4.f32[1] != 0.0 || v4.f32[2] != 0.0)
  {
    v4.i32[0] = v14.i32[2];
    if (v4.f32[2] < v14.f32[2])
    {
      v4.f32[0] = v4.f32[2];
    }

    v6 = fmax(v4.f32[0] * 0.25, 0.01);
    v16 = vsubq_f32(v14, v5);
    v18 = v5;
    *v7.i32 = hypotf(v16.f32[0], v16.f32[1]);
    v8 = v18;
    v9 = *v7.i32;
    if (v6 < *v7.i32)
    {
      v10 = vcvtmd_u64_f64(v9 / v6);
      v11.i64[0] = vdivq_f32(v16, vdupq_lane_s32(v7, 0)).u64[0];
      v11.i64[1] = v16.i64[1];
      if (v16.f32[2] != 0.0)
      {
        v11.f32[2] = v16.f32[2] / v16.f32[2];
      }

      if (v10)
      {
        v12 = v9 / (v10 + 1);
        v17 = vmulq_n_f32(v11, v12);
        for (i = 1; i <= v10; ++i)
        {
          [(AKBitmapFIFO *)self _addSinglePointToBitmap:*vmlaq_n_f32(v8, v17, i).i64, *&v14];
          v8 = v18;
        }
      }
    }
  }

  [(AKBitmapFIFO *)self _addSinglePointToBitmap:*v14.i64, *&v14];
  [(AKBitmapFIFO *)self setLastPoint:v15];

  MEMORY[0x2821F9670](self, sel__applyDirtyRectToView);
}

- (void)_createBitmapContextIfNecessary
{
  [(AKBitmapFIFO *)self _updateBitmapSizeFromViewIfNecessary];
  [(AKBitmapFIFO *)self bitmapSize];
  v4 = v3;
  v5 = round(v3);
  [(AKBitmapFIFO *)self bitmapSize];
  v7 = v6;
  if (![AKGeometryHelper isUnpresentableRect:0.0, 0.0, v5, round(v6)]&& !self->_bitmapContext)
  {
    v8 = vcvtad_u64_f64(v4);
    v9 = vcvtad_u64_f64(v7);
    if (self->_bitmapDataPtr || is_mul_ok(v8, v9) && (v13 = malloc_type_calloc(v8 * v9, 1uLL, 0x100004077774924uLL), (self->_bitmapDataPtr = v13) != 0))
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      if (DeviceGray)
      {
        v11 = DeviceGray;
        if (!self->_bitmapContext)
        {
          v12 = CGBitmapContextCreate(self->_bitmapDataPtr, v8, v9, 8uLL, v8, DeviceGray, 0);
          self->_bitmapContext = v12;
          if (!v12)
          {
            [(AKBitmapFIFO *)self _clearAllBitmapData];
          }
        }

        CGColorSpaceRelease(v11);
      }
    }

    else
    {

      [(AKBitmapFIFO *)self _clearAllBitmapData];
    }
  }
}

- (void)_createBitmapIfNecessary
{
  if (!self->_bitmapImage)
  {
    [(AKBitmapFIFO *)self _createBitmapContextIfNecessary];
    bitmapContext = self->_bitmapContext;
    if (bitmapContext)
    {
      self->_bitmapImage = CGBitmapContextCreateImage(bitmapContext);
    }
  }
}

- (void)_clearAllBitmapData
{
  bitmapImage = self->_bitmapImage;
  if (bitmapImage)
  {
    CGImageRelease(bitmapImage);
    self->_bitmapImage = 0;
  }

  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    CGContextRelease(bitmapContext);
    self->_bitmapContext = 0;
  }

  bitmapDataPtr = self->_bitmapDataPtr;
  if (bitmapDataPtr)
  {
    free(bitmapDataPtr);
    self->_bitmapDataPtr = 0;
  }
}

- (void)_addSinglePointToBitmap:(AKBitmapFIFO *)self
{
  v14 = v2;
  bitmapContext = self->_bitmapContext;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  CGContextSetFillColorWithColor(bitmapContext, [whiteColor CGColor]);

  CGContextSaveGState(self->_bitmapContext);
  v6 = self->_bitmapContext;
  objc_msgSend_viewToBitmapTransform(self);
  CGContextConcatCTM(v6, &transform);
  v16.origin.x = *&v14 - *(&v14 + 2) * 0.5;
  v16.origin.y = *(&v14 + 1) - *(&v14 + 2) * 0.5;
  v16.size.width = *(&v14 + 2);
  v16.size.height = *(&v14 + 2);
  CGContextFillEllipseInRect(self->_bitmapContext, v16);
  [(AKBitmapFIFO *)self shadowRadiusInView];
  v8 = *&v14 - (*(&v14 + 2) + v7 * 2.0) * 0.5;
  [(AKBitmapFIFO *)self shadowRadiusInView];
  v10 = *(&v14 + 1) - (*(&v14 + 2) + v9 * 2.0) * 0.5;
  [(AKBitmapFIFO *)self shadowRadiusInView];
  v12 = *(&v14 + 2) + v11 * 2.0;
  [(AKBitmapFIFO *)self shadowRadiusInView];
  [(AKBitmapFIFO *)self _addToDirtyRect:v8, v10, v12, *(&v14 + 2) + v13 * 2.0];
  CGContextRestoreGState(self->_bitmapContext);
}

- (void)_addToDirtyRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(AKBitmapFIFO *)self unionDirtyRect];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v10 = CGRectUnion(v9, v11);

  [(AKBitmapFIFO *)self setUnionDirtyRect:v10.origin.x, v10.origin.y, v10.size.width, v10.size.height];
}

- (void)_applyDirtyRectToView
{
  [(AKBitmapFIFO *)self unionDirtyRect];
  if (!CGRectIsNull(v5))
  {
    view = [(AKBitmapFIFO *)self view];
    [(AKBitmapFIFO *)self unionDirtyRect];
    [view setNeedsDisplayInRect:?];
  }
}

- (CGSize)bitmapSize
{
  objc_copyStruct(v4, &self->_bitmapSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)unionDirtyRect
{
  objc_copyStruct(v6, &self->_unionDirtyRect, 32, 1, 0);
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

@end