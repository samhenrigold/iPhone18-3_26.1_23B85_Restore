@interface PVEffectFrame
+ (id)frameWithEffect:(id)effect atTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeTextFrames:(BOOL)frames minimumHitSize:(double)size hitSizeThreshold:(double)threshold viewSize:(CGSize)self0 viewOrigin:(int)self1;
- (CGPoint)center;
- (CGPoint)midpoint;
- (CGRect)objectBounds;
- (CGRect)outputROI;
- (CGRect)viewSpaceObjectBounds;
- (CGSize)effectSize;
- (CGSize)viewSize;
- (PVCGPointQuad)cornerPoints;
- (PVEffectFrame)initWithEffect:(id)effect atTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeTextFrames:(BOOL)frames minimumHitSize:(double)size hitSizeThreshold:(double)threshold viewSize:(CGSize)self0 viewOrigin:(int)self1;
- (__n128)setTransform:(__int128 *)transform;
- (__n128)setTransformInfo:(__int128 *)info;
- (__n128)transform;
- (__n128)transformInfo;
- (id)description;
- (void)dealloc;
- (void)setCornerPoints:(PVCGPointQuad *)points;
- (void)setExpandedHitAreaPath:(CGPath *)path;
- (void)setHitAreaPath:(CGPath *)path;
- (void)setTime:(id *)time;
@end

@implementation PVEffectFrame

- (void)dealloc
{
  CGPathRelease(self->_hitAreaPath);
  CGPathRelease(self->_expandedHitAreaPath);
  v3.receiver = self;
  v3.super_class = PVEffectFrame;
  [(PVEffectFrame *)&v3 dealloc];
}

+ (id)frameWithEffect:(id)effect atTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeTextFrames:(BOOL)frames minimumHitSize:(double)size hitSizeThreshold:(double)threshold viewSize:(CGSize)self0 viewOrigin:(int)self1
{
  v11 = *&origin;
  height = viewSize.height;
  width = viewSize.width;
  framesCopy = frames;
  shadowCopy = shadow;
  frameCopy = frame;
  effectCopy = effect;
  v22 = [self alloc];
  v25 = *time;
  v23 = [v22 initWithEffect:effectCopy atTime:&v25 forcePosterFrame:frameCopy includeDropShadow:shadowCopy includeTextFrames:framesCopy minimumHitSize:v11 hitSizeThreshold:size viewSize:threshold viewOrigin:{width, height}];

  return v23;
}

- (PVEffectFrame)initWithEffect:(id)effect atTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeTextFrames:(BOOL)frames minimumHitSize:(double)size hitSizeThreshold:(double)threshold viewSize:(CGSize)self0 viewOrigin:(int)self1
{
  v11 = *&origin;
  width = viewSize.width;
  height = viewSize.height;
  framesCopy = frames;
  shadowCopy = shadow;
  frameCopy = frame;
  effectCopy = effect;
  v86.receiver = self;
  v86.super_class = PVEffectFrame;
  v20 = [(PVEffectFrame *)&v86 init];
  v21 = v20;
  if (v20)
  {
    v22 = *&time->var0;
    *(v20 + 17) = time->var3;
    *(v20 + 120) = v22;
    v20[8] = frameCopy;
    *(v20 + 3) = [effectCopy origin];
    [effectCopy outputSize];
    *(v21 + 9) = v23;
    *(v21 + 10) = v24;
    *(v21 + 4) = v11;
    v25 = height;
    *(v21 + 11) = width;
    *(v21 + 12) = height;
    if (effectCopy)
    {
      v78 = *&time->var0;
      *&v79 = time->var3;
      objc_msgSend_cornersAtTime_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin_(effectCopy, 1.0, 1.0, width, height);
      v25 = height;
    }

    else
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
    }

    v26 = v90;
    *(v21 + 13) = v89;
    *(v21 + 14) = v26;
    v27 = v92;
    *(v21 + 15) = v91;
    *(v21 + 16) = v27;
    v89 = 0uLL;
    v90 = 0u;
    v78 = *&time->var0;
    *&v79 = time->var3;
    [effectCopy convertPointToView:&v89 atTime:&v78 forcePosterFrame:frameCopy includeTransformAnimation:1 includePlayableAspectScale:1 viewSize:v11 viewOrigin:{width, v25}];
    *(v21 + 13) = v28;
    *(v21 + 14) = v29;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v89 = *&time->var0;
    *&v90 = time->var3;
    v30 = [effectCopy transformAtTime:&v89 forcePosterFrame:frameCopy viewSize:v11 viewOrigin:{width, height}];
    v31 = v30;
    if (v30)
    {
      objc_msgSend_SIMDDouble4x4(v30);
    }

    else
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
    }

    v32 = +[PVHostApplicationDelegateHandler sharedInstance];
    wantsToIncludeCoordinateSystemTranslationInEffectViewTransform = [v32 wantsToIncludeCoordinateSystemTranslationInEffectViewTransform];
    if (v11 == 1 && (wantsToIncludeCoordinateSystemTranslationInEffectViewTransform & 1) == 0)
    {
      v34.f64[0] = width;
      v34.f64[1] = height;
      __asm { FMOV            V1.2D, #0.5 }

      v93 = v82;
      v94 = v83;
      v95 = v84;
      *&STACK[0x500] = v85;
      v89 = v78;
      v90 = v79;
      v91 = v80;
      v92 = v81;
      v87 = vmulq_f64(v34, _Q1);
      v88 = 0u;
      pv_simd_matrix_translate(&v89, &v87, &v70);
      v82 = v74;
      v83 = v75;
      v84 = v76;
      v85 = v77;
      v78 = v70;
      v79 = v71;
      v80 = v72;
      v81 = v73;
    }

    v40 = v82;
    v41 = v83;
    *(v21 + 21) = v82;
    *(v21 + 22) = v41;
    v42 = v84;
    v43 = v85;
    *(v21 + 23) = v84;
    *(v21 + 24) = v43;
    v44 = v78;
    v45 = v79;
    *(v21 + 17) = v78;
    *(v21 + 18) = v45;
    v46 = v80;
    v47 = v81;
    *(v21 + 19) = v80;
    *(v21 + 20) = v47;
    v48.f64[0] = width;
    v48.f64[1] = height;
    v93 = v40;
    v94 = v41;
    v95 = v42;
    *&STACK[0x500] = v43;
    v89 = v44;
    v90 = v45;
    v91 = v46;
    v92 = v47;
    [effectCopy outputROI];
    *(v21 + 18) = v49;
    *(v21 + 19) = v50;
    *(v21 + 20) = v51;
    *(v21 + 21) = v52;
    v89 = 0u;
    v90 = 0u;
    v70 = *&time->var0;
    *&v71 = time->var3;
    if ([effectCopy bounds:&v89 atTime:&v70 forcePosterFrame:frameCopy includeDropShadow:shadowCopy includeMasks:1])
    {
      v53 = v90;
      *(v21 + 11) = v89;
      *(v21 + 12) = v53;
    }

    *(v21 + 6) = size;
    *(v21 + 7) = threshold;
    v70 = *&time->var0;
    *&v71 = time->var3;
    v54 = [effectCopy hitAreaPointsAtTime:&v70 forcePosterFrame:frameCopy includeDropShadow:shadowCopy scale:v11 viewSize:1.0 viewOrigin:{1.0, width, height}];
    v55 = *(v21 + 3);
    *(v21 + 3) = v54;

    v70 = *&time->var0;
    *&v71 = time->var3;
    *(v21 + 4) = [effectCopy createPathsForHitTestingAtTime:&v70 forcePosterFrame:frameCopy scale:1 adjustForMinimumSize:v11 minimumSize:v21 + 40 sizeThreshold:1.0 viewSize:1.0 viewOrigin:size outExpandedPath:{threshold, width, height}];
    if (framesCopy)
    {
      v70 = *&time->var0;
      *&v71 = time->var3;
      v56 = [effectCopy textTransformsAtTime:&v70 forcePosterFrame:frameCopy viewSize:v11 viewOrigin:{width, height}];
      v70 = *&time->var0;
      *&v71 = time->var3;
      v57 = [effectCopy textEditingBoundsAtTime:&v70 forcePosterFrame:frameCopy useParagraphBounds:1 includeDropShadow:0 includeMasks:1];
      v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v56, "count")}];
      var18[0] = MEMORY[0x277D85DD0];
      var18[1] = *"";
      var18[2] = __144__PVEffectFrame_initWithEffect_atTime_forcePosterFrame_includeDropShadow_includeTextFrames_minimumHitSize_hitSizeThreshold_viewSize_viewOrigin___block_invoke;
      var18[3] = &unk_279AA5A78;
      vars8 = effectCopy;
      v68 = v32;
      v69 = v58;
      v59 = v57;
      v60 = v56;
      [v60 enumerateObjectsUsingBlock:var18];
      v61 = *(v21 + 8);
      *(v21 + 8) = v69;
      v62 = v69;
    }
  }

  return v21;
}

void __144__PVEffectFrame_initWithEffect_atTime_forcePosterFrame_includeDropShadow_includeTextFrames_minimumHitSize_hitSizeThreshold_viewSize_viewOrigin___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float64x2_t a10, float64x2_t a12, float64x2_t a, CGPoint b, CGPoint c, __int128 a9, __int128 a11, CGPoint d, __int128 a17, float64x2_t a18, __int128 a19, float64x2_t a20, CGPoint a21, CGPoint a22, CGPoint a23, CGPoint a24, float64x2_t a25, __int128 a26, CGPoint a27, CGPoint a28, CGPoint a29, float64x2_t a30, __int128 a31, CGPoint a32, CGPoint a33, CGPoint a34, CGPoint a35, __int128 a36, float64x2_t a37, __int128 a38, float64x2_t a39)
{
  v41 = [PVEffectFrame alloc];
  v42 = *(a1 + 32);
  v43 = *(a1 + 132);
  v44 = *(a1 + 133);
  v45 = *(a1 + 72);
  v46 = *(a1 + 80);
  v47 = *(a1 + 128);
  a32 = *(a1 + 104);
  a33.x = *(a1 + 120);
  v48 = [(PVEffectFrame *)v41 initWithEffect:v42 atTime:&a32 forcePosterFrame:v43 includeDropShadow:v44 includeTextFrames:0 minimumHitSize:v47 hitSizeThreshold:v45 viewSize:v46 viewOrigin:*(a1 + 88), *(a1 + 96)];
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v49 = *(a1 + 32);
  if (v49)
  {
    a32 = *(a1 + 104);
    a33.x = *(a1 + 120);
    objc_msgSend_textCornersAtTime_index_forcePosterFrame_includeDropShadow_scale_viewSize_viewOrigin_(v49, 1.0, 1.0, *(a1 + 88), *(a1 + 96));
  }

  if (*(a1 + 128) == 1)
  {
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
  }

  a32 = v70;
  a33 = v71;
  a34 = v72;
  a35 = v73;
  [(PVEffectFrame *)v48 setCornerPoints:&a32];
  v68 = 0;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0;
  v62 = 0u;
  v63 = 0;
  v50 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v51 = v50;
  if (v50)
  {
    objc_msgSend_SIMDDouble4x4(v50);
  }

  else
  {
    v68 = 0;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0;
    v62 = 0u;
    v63 = 0;
  }

  if (([*(a1 + 48) wantsToIncludeCoordinateSystemTranslationInEffectViewTransform] & 1) == 0 && *(a1 + 128) == 1)
  {
    __asm { FMOV            V1.2D, #0.5 }

    v57 = vmulq_f64(*(a1 + 88), _Q1);
    a36 = v66;
    a37 = v67;
    a38 = v68;
    a39 = v69;
    a32 = v62;
    a33 = v63;
    a34 = v64;
    a35 = v65;
    a30 = v57;
    a31 = 0u;
    pv_simd_matrix_translate(&a32, &a30, &var30);
    v66 = a9;
    v67 = a11;
    v68 = d;
    v69 = a17;
    v62 = var30.a;
    v63 = var30.b;
    v64 = var30.c;
    v65 = var30.d;
  }

  a36 = v66;
  a37 = v67;
  a38 = v68;
  a39 = v69;
  a32 = v62;
  a33 = v63;
  a34 = v64;
  a35 = v65;
  [(PVEffectFrame *)v48 setTransform:&a32];
  a36 = xmmword_260342820;
  a37 = qword_260342830;
  a38 = xmmword_260342840;
  a39 = qword_260342850;
  a32 = pv_transform_info_identity;
  a33 = *algn_2603427F0;
  a34 = xmmword_260342800;
  a35 = qword_260342810;
  v58 = *(a1 + 88);
  var30.a = v62;
  var30.b = v63;
  var30.c = v64;
  var30.d = v65;
  pv_transform_info_make(&var30, &a32, v58);
  var30.a = a32;
  var30.b = a33;
  var30.c = a34;
  var30.d = a35;
  [(PVEffectFrame *)v48 setTransformInfo:&var30];
  v59 = [*(a1 + 56) objectAtIndexedSubscript:a3];
  [v59 CGRectValue];
  [(PVEffectFrame *)v48 setObjectBounds:?];

  if (v48)
  {
    objc_msgSend_cornerPoints(v48);
  }

  else
  {
    memset(&var30, 0, sizeof(var30));
  }

  v60 = PVCGPointQuad_to_NSArray(&var30);
  [(PVEffectFrame *)v48 setHitAreaPoints:v60];

  [*(a1 + 64) addObject:v48];
}

- (CGRect)viewSpaceObjectBounds
{
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  [(PVEffectFrame *)self objectBounds];
  PVCGPointQuad_from_CGRect(&v49, v54);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  objc_msgSend_transform(self);
  v33 = 0;
  v34 = &v33;
  v35 = 0x6010000000;
  v36 = &unk_260C3B1FE;
  v37 = *PVCGPointQuadZero;
  v38 = *&PVCGPointQuadZero[16];
  v39 = *&PVCGPointQuadZero[32];
  v40 = *&PVCGPointQuadZero[48];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = *"";
  v22 = __38__PVEffectFrame_viewSpaceObjectBounds__block_invoke;
  v23 = &unk_279AA5AA0;
  v26 = v43;
  v27 = v44;
  v24 = v41;
  v25 = v42;
  v30 = v47;
  v31 = v48;
  v28 = v45;
  v29 = v46;
  v32 = &v33;
  v20.a = v49;
  v20.b = v50;
  v20.c = v51;
  v20.d = v52;
  v3 = v21;
  v4 = 0;
  do
  {
    v53 = v20;
    point_at_index = PVCGPointQuad_get_point_at_index(&v53, v4);
    (v22)(v3, v4, point_at_index);
    v4 = (v4 + 1);
  }

  while (v4 != 4);

  v6 = *(v34 + 3);
  v53.a = *(v34 + 2);
  v53.b = v6;
  v7 = *(v34 + 5);
  v53.c = *(v34 + 4);
  v53.d = v7;
  pv_bounding_CGRect(&v53);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  _Block_object_dispose(&v33, 8);
  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

CGFloat *__38__PVEffectFrame_viewSpaceObjectBounds__block_invoke(uint64_t a1, int a2, __n128 a3, double a4)
{
  a3.n128_f64[1] = a4;
  v6 = *(a1 + 112);
  v12[4] = *(a1 + 96);
  v12[5] = v6;
  v7 = *(a1 + 144);
  v12[6] = *(a1 + 128);
  v12[7] = v7;
  v8 = *(a1 + 48);
  v12[0] = *(a1 + 32);
  v12[1] = v8;
  v9 = *(a1 + 80);
  v12[2] = *(a1 + 64);
  v12[3] = v9;
  v11[0] = a3;
  v11[1] = 0u;
  pv_simd_matrix_transform_vector(v12, v11, v13);
  return PVCGPointQuad_set_point_at_index((*(*(a1 + 160) + 8) + 32), v13[0], a2);
}

- (CGPoint)midpoint
{
  objc_msgSend_cornerPoints(self, a2);
  quad_center = pv_CGPoint_get_quad_center(&v4);
  result.y = v3;
  result.x = quad_center;
  return result;
}

- (void)setHitAreaPath:(CGPath *)path
{
  CGPathRetain(path);
  CGPathRelease(self->_hitAreaPath);
  self->_hitAreaPath = path;
}

- (void)setExpandedHitAreaPath:(CGPath *)path
{
  CGPathRetain(path);
  CGPathRelease(self->_expandedHitAreaPath);
  self->_expandedHitAreaPath = path;
}

- (id)description
{
  v25 = MEMORY[0x277CCACA8];
  v28.receiver = self;
  v28.super_class = PVEffectFrame;
  v24 = [(PVEffectFrame *)&v28 description];
  objc_msgSend_time(self);
  v23 = CMTimeCopyDescription(0, &time);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[PVEffectFrame forcePosterFrame](self, "forcePosterFrame")}];
  v4 = MEMORY[0x277CCACA8];
  effectOrigin = [(PVEffectFrame *)self effectOrigin];
  if (effectOrigin >= 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = effectOrigin;
  }

  v22 = [v4 stringWithUTF8String:PVCoordinateSystemOriginNames[v6]];
  [(PVEffectFrame *)self effectSize];
  v21 = NSStringFromCGSize(v30);
  [(PVEffectFrame *)self center];
  v7 = NSStringFromCGPoint(v31);
  v8 = MEMORY[0x277CCACA8];
  viewOrigin = [(PVEffectFrame *)self viewOrigin];
  if (viewOrigin >= 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = viewOrigin;
  }

  v20 = [v8 stringWithUTF8String:PVCoordinateSystemOriginNames[v10]];
  [(PVEffectFrame *)self viewSize];
  v19 = NSStringFromCGSize(v32);
  objc_msgSend_cornerPoints(self);
  v11 = NSStringFromPVCGPointQuad(&time, 3);
  [(PVEffectFrame *)self objectBounds];
  v18 = NSStringFromCGRect(v33);
  hitAreaPoints = [(PVEffectFrame *)self hitAreaPoints];
  objc_msgSend_transform(self);
  v13 = NSStringFromSIMDDouble4x4(&time.value, 4);
  v14 = MEMORY[0x277CCABB0];
  textFrames = [(PVEffectFrame *)self textFrames];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(textFrames, "count")}];
  v26 = [v25 stringWithFormat:@"%@\ntime: %@\nforcePosterFrame: %@\neffectOrigin: %@\neffectSize: %@\n\ncenter: %@\n\nviewOrigin: %@\nviewSize: %@\n\ncornerPoints:\n%@\n\nobjectBounds: %@\n\nhitAreaPoints: %@\n\ntransform:\n%@\n\ntextFrames (count): %@", v24, v23, v3, v22, v21, v7, v20, v19, v11, v18, hitAreaPoints, v13, v16];

  return v26;
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

- (CGSize)effectSize
{
  width = self->_effectSize.width;
  height = self->_effectSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PVCGPointQuad)cornerPoints
{
  c = self[3].c;
  retstr->a = self[3].b;
  retstr->b = c;
  a = self[4].a;
  retstr->c = self[3].d;
  retstr->d = a;
  return self;
}

- (void)setCornerPoints:(PVCGPointQuad *)points
{
  a = points->a;
  b = points->b;
  d = points->d;
  self->_cornerPoints.c = points->c;
  self->_cornerPoints.d = d;
  self->_cornerPoints.a = a;
  self->_cornerPoints.b = b;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)outputROI
{
  x = self->_outputROI.origin.x;
  y = self->_outputROI.origin.y;
  width = self->_outputROI.size.width;
  height = self->_outputROI.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)objectBounds
{
  x = self->_objectBounds.origin.x;
  y = self->_objectBounds.origin.y;
  width = self->_objectBounds.size.width;
  height = self->_objectBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__n128)transform
{
  v2 = *(self + 352);
  *(a2 + 64) = *(self + 336);
  *(a2 + 80) = v2;
  v3 = *(self + 384);
  *(a2 + 96) = *(self + 368);
  *(a2 + 112) = v3;
  v4 = *(self + 288);
  *a2 = *(self + 272);
  *(a2 + 16) = v4;
  result = *(self + 304);
  v6 = *(self + 320);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)setTransform:(__int128 *)transform
{
  v3 = *transform;
  v4 = transform[1];
  v5 = transform[3];
  *(self + 304) = transform[2];
  *(self + 320) = v5;
  *(self + 272) = v3;
  *(self + 288) = v4;
  result = transform[4];
  v7 = transform[5];
  v8 = transform[7];
  *(self + 368) = transform[6];
  *(self + 384) = v8;
  *(self + 336) = result;
  *(self + 352) = v7;
  return result;
}

- (__n128)transformInfo
{
  v2 = *(self + 480);
  *(a2 + 64) = *(self + 464);
  *(a2 + 80) = v2;
  v3 = *(self + 512);
  *(a2 + 96) = *(self + 496);
  *(a2 + 112) = v3;
  v4 = *(self + 416);
  *a2 = *(self + 400);
  *(a2 + 16) = v4;
  result = *(self + 432);
  v6 = *(self + 448);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)setTransformInfo:(__int128 *)info
{
  v3 = *info;
  v4 = info[1];
  v5 = info[3];
  *(self + 432) = info[2];
  *(self + 448) = v5;
  *(self + 400) = v3;
  *(self + 416) = v4;
  result = info[4];
  v7 = info[5];
  v8 = info[7];
  *(self + 496) = info[6];
  *(self + 512) = v8;
  *(self + 464) = result;
  *(self + 480) = v7;
  return result;
}

@end