@interface MDLVoxelArray
- (BOOL)voxelExistsAtIndex:(MDLVoxelIndex)index allowAnyX:(BOOL)allowAnyX allowAnyY:(BOOL)allowAnyY allowAnyZ:(BOOL)allowAnyZ allowAnyShell:(BOOL)allowAnyShell;
- (MDLMesh)coarseMeshUsingAllocator:(id)allocator;
- (MDLMesh)meshUsingAllocator:(id)allocator;
- (MDLVoxelArray)init;
- (MDLVoxelArray)initWithAsset:(MDLAsset *)asset divisions:(int)divisions interiorNBWidth:(float)interiorNBWidth exteriorNBWidth:(float)exteriorNBWidth patchRadius:(float)patchRadius;
- (MDLVoxelArray)initWithAsset:(MDLAsset *)asset divisions:(int)divisions interiorShells:(int)interiorShells exteriorShells:(int)exteriorShells patchRadius:(float)patchRadius;
- (MDLVoxelArray)initWithAsset:(MDLAsset *)asset divisions:(int)divisions patchRadius:(float)patchRadius;
- (MDLVoxelArray)initWithData:(NSData *)voxelData boundingBox:(MDLAxisAlignedBoundingBox *)boundingBox voxelExtent:(float)voxelExtent;
- (MDLVoxelIndex)indexOfSpatialLocation:(vector_float3)location;
- (MDLVoxelIndexExtent)voxelIndexExtent;
- (NSData)voxelIndices;
- (NSData)voxelsWithinExtent:(MDLVoxelIndexExtent)extent;
- (id).cxx_construct;
- (id)coarseVoxelMeshWithStyle:(unint64_t)style;
- (vector<int,)boxesPerLayer;
- (vector_float3)spatialLocationOfIndex:(MDLVoxelIndex)index;
- (void)convertToSignedShellField;
- (void)differenceWithVoxels:(MDLVoxelArray *)voxels;
- (void)dilateNarrowBandInteriorWidthTo:(float)to AndExteriorWidthTo:(float)widthTo;
- (void)erodeNarrowBandInteriorWidthTo:(float)to AndExteriorWidthTo:(float)widthTo selector:(SEL)selector;
- (void)intersectWithVoxels:(MDLVoxelArray *)voxels;
- (void)recalculateExtents;
- (void)setShellFieldExteriorThickness:(float)shellFieldExteriorThickness;
- (void)setShellFieldInteriorThickness:(float)shellFieldInteriorThickness;
- (void)setVoxelAtIndex:(MDLVoxelIndex)index;
- (void)setVoxelsForMesh:(MDLMesh *)mesh divisions:(int)divisions interiorNBWidth:(float)interiorNBWidth exteriorNBWidth:(float)exteriorNBWidth patchRadius:(float)patchRadius;
- (void)setVoxelsForMesh:(MDLMesh *)mesh divisions:(int)divisions interiorShells:(int)interiorShells exteriorShells:(int)exteriorShells patchRadius:(float)patchRadius;
- (void)setVoxelsForMesh:(MDLMesh *)mesh divisions:(int)divisions patchRadius:(float)patchRadius;
- (void)unionWithVoxels:(MDLVoxelArray *)voxels;
@end

@implementation MDLVoxelArray

- (void)recalculateExtents
{
  anon_60 = self->_anon_60;
  *&v3 = 0x8000000080000000;
  *(&v3 + 1) = 0x8000000080000000;
  v4.i64[0] = 0x100000001;
  v4.i64[1] = 0x100000001;
  v5 = vnegq_f32(v4);
  *self->_anon_60 = v3;
  *&self->_anon_60[16] = v5;
  if (self->_voxels.__table_.__size_)
  {
    next = self->_voxels.__table_.__first_node_.__next_;
    if (next)
    {
      v7.i64[0] = 0x100000001;
      v7.i64[1] = 0x100000001;
      v5 = vnegq_f32(v7);
      *&v3 = 0x8000000080000000;
      *(&v3 + 1) = 0x8000000080000000;
      v8 = vdupq_n_s64(1uLL);
      v9 = vdupq_n_s64(2uLL);
      v10 = vdupq_n_s64(4uLL);
      v11 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
      v12 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v13 = *(next + 6);
        v14 = (next + 16);
        v15 = vld1q_dup_f64(v14);
        v16 = 0uLL;
        v17 = 24;
        v18 = xmmword_239F9AD60;
        v19 = xmmword_239F9AD50;
        v20 = xmmword_239F9AD40;
        v21 = xmmword_239F9AD30;
        v22 = 0uLL;
        v23 = 0uLL;
        do
        {
          v24 = v21;
          v25.i64[0] = 3 * v21.i64[0];
          v26 = v20;
          v25.i64[1] = 3 * v24.i64[1];
          v27.i64[0] = 3 * v20.i64[0];
          v27.i64[1] = 3 * v26.i64[1];
          v28 = v23;
          v29 = v22;
          v30 = v16;
          v16 = vorrq_s8(v16, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v8, v27), v15), vnegq_s64(vaddq_s64(v26, v26))), vshlq_u64(vandq_s8(vshlq_u64(v8, v25), v15), vnegq_s64(vaddq_s64(v24, v24)))));
          v31 = vaddq_s64(v25, v19);
          v32 = vaddq_s64(v27, v18);
          v23 = vorrq_s8(v23, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v9, v27), v15), vmvnq_s8(v32)), vshlq_u64(vandq_s8(vshlq_u64(v9, v25), v15), vmvnq_s8(v31))));
          v22 = vorrq_s8(v22, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v10, v27), v15), vsubq_s64(v11, v32)), vshlq_u64(vandq_s8(vshlq_u64(v10, v25), v15), vsubq_s64(v11, v31))));
          v19 = vaddq_s64(v19, v12);
          v18 = vaddq_s64(v18, v12);
          v21 = vaddq_s64(v24, v10);
          v20 = vaddq_s64(v26, v10);
          v17 -= 4;
        }

        while (v17);
        v33 = vdupq_n_s64(0x15uLL);
        v34 = vuzp1q_s32(vcgtq_u64(v33, v26), vcgtq_u64(v33, v24));
        v35 = vbslq_s8(v34, v16, v30);
        v36 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
        v37 = v36.i32[0] | v36.i32[1];
        if ((v36.i32[0] | v36.i32[1]) > v5.i32[0])
        {
          v5.i32[0] = v36.i32[0] | v36.i32[1];
          *&self->_anon_60[16] = v5;
        }

        v38 = vbslq_s8(v34, v23, v28);
        v39 = vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
        if ((v39.i32[0] | v39.i32[1]) > v5.i32[1])
        {
          v5.i32[1] = v39.i32[0] | v39.i32[1];
          *&self->_anon_60[16] = v5;
        }

        v40 = vbslq_s8(v34, v22, v29);
        v41 = vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
        if ((v41.i32[0] | v41.i32[1]) > v5.i32[2])
        {
          v5.i32[2] = v41.i32[0] | v41.i32[1];
          *&self->_anon_60[16] = v5;
        }

        if (v13 > v5.i32[3])
        {
          v5.i32[3] = v13;
          *&self->_anon_60[16] = v5;
        }

        if (v37 < v3)
        {
          LODWORD(v3) = v37;
          *anon_60 = v3;
        }

        if ((v39.i32[0] | v39.i32[1]) < SDWORD1(v3))
        {
          DWORD1(v3) = v39.i32[0] | v39.i32[1];
          *anon_60 = v3;
        }

        if ((v41.i32[0] | v41.i32[1]) < SDWORD2(v3))
        {
          DWORD2(v3) = v41.i32[0] | v41.i32[1];
          *anon_60 = v3;
        }

        if (v13 < SHIDWORD(v3))
        {
          HIDWORD(v3) = v13;
          *anon_60 = v3;
        }

        next = *next;
      }

      while (next);
    }

    *v5.f32 = vcvt_f32_s32(*&v3);
    v5.f32[2] = SDWORD2(v3);
    __asm { FMOV            V0.4S, #1.0 }

    *&self->_anon_80[16] = vmlaq_n_f32(*self->_originatingOffset, vaddq_f32(v5, _Q0), self->_voxelExtent);
    v47 = *&self->_anon_60[16];
    *v47.f32 = vcvt_f32_s32(*v47.f32);
    v47.f32[2] = v47.i32[2];
    *self->_anon_80 = vmlaq_n_f32(*self->_originatingOffset, vaddq_f32(v47, _Q0), self->_voxelExtent);
  }

  else
  {
    v48.i64[0] = 0x80000000800000;
    v48.i64[1] = 0x80000000800000;
    *self->_anon_80 = v48;
    *&self->_anon_80[16] = vnegq_f32(v48);
  }
}

- (MDLVoxelArray)init
{
  v20.receiver = self;
  v20.super_class = MDLVoxelArray;
  v2 = [(MDLObject *)&v20 init];
  v3 = v2;
  if (v2)
  {
    *v15 = 0u;
    *__p = 0u;
    *&__p[16] = 1065353216;
    sub_239F1D21C(&v2->_voxels, v15);
    sub_239E7B644(v15);
    sub_239ED981C(v15);
    p_mortonCoder = &v3->mortonCoder;
    begin = v3->mortonCoder.mortonkeyX.__begin_;
    if (begin)
    {
      v3->mortonCoder.mortonkeyX.__end_ = begin;
      operator delete(begin);
      p_mortonCoder->mortonkeyX.__begin_ = 0;
      v3->mortonCoder.mortonkeyX.__end_ = 0;
      v3->mortonCoder.mortonkeyX.__cap_ = 0;
    }

    *&p_mortonCoder->mortonkeyX.__begin_ = *v15;
    v3->mortonCoder.mortonkeyX.__cap_ = *__p;
    v15[0] = 0;
    v15[1] = 0;
    *__p = 0;
    v6 = v3->mortonCoder.mortonkeyY.__begin_;
    if (v6)
    {
      v3->mortonCoder.mortonkeyY.__end_ = v6;
      operator delete(v6);
      v3->mortonCoder.mortonkeyY.__begin_ = 0;
      v3->mortonCoder.mortonkeyY.__end_ = 0;
      v3->mortonCoder.mortonkeyY.__cap_ = 0;
    }

    *&v3->mortonCoder.mortonkeyY.__begin_ = *&__p[8];
    v3->mortonCoder.mortonkeyY.__cap_ = v17;
    *&__p[8] = 0;
    *&__p[16] = 0;
    v17 = 0;
    v7 = v3->mortonCoder.mortonkeyZ.__begin_;
    if (v7)
    {
      v3->mortonCoder.mortonkeyZ.__end_ = v7;
      operator delete(v7);
      v3->mortonCoder.mortonkeyZ.__begin_ = 0;
      v3->mortonCoder.mortonkeyZ.__end_ = 0;
      v3->mortonCoder.mortonkeyZ.__cap_ = 0;
      v7 = *&__p[8];
    }

    *&v3->mortonCoder.mortonkeyZ.__begin_ = v18;
    v3->mortonCoder.mortonkeyZ.__cap_ = v19;
    v18 = 0uLL;
    v19 = 0;
    if (v7)
    {
      *&__p[16] = v7;
      operator delete(v7);
    }

    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }

    *v3->_anon_60 = 0;
    *&v3->_anon_60[8] = 0;
    *&v3->_anon_60[16] = xmmword_239F9E090;
    __asm { FMOV            V1.4S, #-1.0 }

    *v3->_anon_80 = _Q1;
    *&v3->_anon_80[16] = 0u;
    *v3->_originatingOffset = 0u;
    v3->_voxelExtent = 1.0;
    sub_239F1D2C0(&v3->_octreeData.__ptr_, 0);
    v3->_levelSet = 0;
    v3->_interiorThickness = 0.0;
    v3->_exteriorThickness = 0.0;
    v13 = v3;
  }

  return v3;
}

- (MDLVoxelArray)initWithAsset:(MDLAsset *)asset divisions:(int)divisions patchRadius:(float)patchRadius
{
  v9 = asset;
  if (divisions <= 0)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v10, v14, @"ModelIOException", @"[%@ %@]: divisions must be greater than 0", v19, v20, v21, v22, v15, v16, v17, v18, v12, v13);
  }

  if (patchRadius < 0.0)
  {
    v23 = MEMORY[0x277CBEAD8];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v23, v27, @"ModelIOException", @"[%@ %@]: patchRadius must be greater or equal to 0", v32, v33, v34, v35, v28, v29, v30, v31, v25, v26);
  }

  v54.receiver = self;
  v54.super_class = MDLVoxelArray;
  v36 = [(MDLObject *)&v54 init];
  v37 = v36;
  if (v36)
  {
    *v49 = 0u;
    *__p = 0u;
    *&__p[16] = 1065353216;
    sub_239F1D21C(&v36->_voxels, v49);
    sub_239E7B644(v49);
    sub_239ED981C(v49);
    p_mortonCoder = &v37->mortonCoder;
    begin = v37->mortonCoder.mortonkeyX.__begin_;
    if (begin)
    {
      v37->mortonCoder.mortonkeyX.__end_ = begin;
      operator delete(begin);
      p_mortonCoder->mortonkeyX.__begin_ = 0;
      v37->mortonCoder.mortonkeyX.__end_ = 0;
      v37->mortonCoder.mortonkeyX.__cap_ = 0;
    }

    *&p_mortonCoder->mortonkeyX.__begin_ = *v49;
    v37->mortonCoder.mortonkeyX.__cap_ = *__p;
    v49[0] = 0;
    v49[1] = 0;
    *__p = 0;
    v40 = v37->mortonCoder.mortonkeyY.__begin_;
    if (v40)
    {
      v37->mortonCoder.mortonkeyY.__end_ = v40;
      operator delete(v40);
      v37->mortonCoder.mortonkeyY.__begin_ = 0;
      v37->mortonCoder.mortonkeyY.__end_ = 0;
      v37->mortonCoder.mortonkeyY.__cap_ = 0;
    }

    *&v37->mortonCoder.mortonkeyY.__begin_ = *&__p[8];
    v37->mortonCoder.mortonkeyY.__cap_ = v51;
    *&__p[8] = 0;
    *&__p[16] = 0;
    v51 = 0;
    v41 = v37->mortonCoder.mortonkeyZ.__begin_;
    if (v41)
    {
      v37->mortonCoder.mortonkeyZ.__end_ = v41;
      operator delete(v41);
      v37->mortonCoder.mortonkeyZ.__begin_ = 0;
      v37->mortonCoder.mortonkeyZ.__end_ = 0;
      v37->mortonCoder.mortonkeyZ.__cap_ = 0;
      v41 = *&__p[8];
    }

    *&v37->mortonCoder.mortonkeyZ.__begin_ = v52;
    v37->mortonCoder.mortonkeyZ.__cap_ = v53;
    v52 = 0uLL;
    v53 = 0;
    if (v41)
    {
      *&__p[16] = v41;
      operator delete(v41);
    }

    if (v49[0])
    {
      v49[1] = v49[0];
      operator delete(v49[0]);
    }

    *v37->_anon_60 = 0;
    *&v37->_anon_60[8] = 0;
    *&v37->_anon_60[16] = xmmword_239F9E090;
    __asm { FMOV            V0.4S, #-1.0 }

    *v37->_anon_80 = _Q0;
    *&v37->_anon_80[16] = 0u;
    v37->_voxelExtent = 1.0;
    sub_239F1D2C0(&v37->_octreeData.__ptr_, 0);
    v37->_levelSet = 0;
    v37->_interiorThickness = 0.0;
    v37->_exteriorThickness = 0.0;
    *v37->_originatingOffset = 0u;
    if (v9)
    {
      operator new();
    }

    v47 = v37;
  }

  return v37;
}

- (MDLVoxelArray)initWithData:(NSData *)voxelData boundingBox:(MDLAxisAlignedBoundingBox *)boundingBox voxelExtent:(float)voxelExtent
{
  v7 = v6;
  v95 = v5;
  v96 = *&voxelExtent;
  v10 = voxelData;
  if (v7 <= 0.0)
  {
    v11 = MEMORY[0x277CBEAD8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v11, v15, @"ModelIOException", @"[%@ %@]: voxelExtent must be greater than 0", v20, v21, v22, v23, v16, v17, v18, v19, v13, v14);
  }

  v24 = vmovn_s32(vcgtq_f32(v96, v95));
  if ((v24.i8[0] & 1) == 0 || (v24.i8[2] & 1) == 0 || (v24.i8[4] & 1) == 0)
  {
    v25 = MEMORY[0x277CBEAD8];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v25, v29, @"ModelIOException", @"[%@ %@]: maxBounds must be strictly greater than minBounds", v34, v35, v36, v37, v30, v31, v32, v33, v27, v28);
  }

  v102.receiver = self;
  v102.super_class = MDLVoxelArray;
  v38 = [(MDLObject *)&v102 init];
  v39 = v38;
  if (v38)
  {
    *v97 = 0u;
    *__p = 0u;
    *&__p[16] = 1065353216;
    sub_239F1D21C(&v38->_voxels, v97);
    sub_239E7B644(v97);
    sub_239ED981C(v97);
    p_mortonCoder = &v39->mortonCoder;
    begin = v39->mortonCoder.mortonkeyX.__begin_;
    if (begin)
    {
      v39->mortonCoder.mortonkeyX.__end_ = begin;
      operator delete(begin);
      p_mortonCoder->mortonkeyX.__begin_ = 0;
      v39->mortonCoder.mortonkeyX.__end_ = 0;
      v39->mortonCoder.mortonkeyX.__cap_ = 0;
    }

    *&p_mortonCoder->mortonkeyX.__begin_ = *v97;
    v39->mortonCoder.mortonkeyX.__cap_ = *__p;
    v97[0] = 0;
    v97[1] = 0;
    *__p = 0;
    v42 = v39->mortonCoder.mortonkeyY.__begin_;
    if (v42)
    {
      v39->mortonCoder.mortonkeyY.__end_ = v42;
      operator delete(v42);
      v39->mortonCoder.mortonkeyY.__begin_ = 0;
      v39->mortonCoder.mortonkeyY.__end_ = 0;
      v39->mortonCoder.mortonkeyY.__cap_ = 0;
    }

    *&v39->mortonCoder.mortonkeyY.__begin_ = *&__p[8];
    v39->mortonCoder.mortonkeyY.__cap_ = v99;
    *&__p[8] = 0;
    *&__p[16] = 0;
    v99 = 0;
    v43 = v39->mortonCoder.mortonkeyZ.__begin_;
    if (v43)
    {
      v39->mortonCoder.mortonkeyZ.__end_ = v43;
      operator delete(v43);
      v39->mortonCoder.mortonkeyZ.__begin_ = 0;
      v39->mortonCoder.mortonkeyZ.__end_ = 0;
      v39->mortonCoder.mortonkeyZ.__cap_ = 0;
    }

    *&v39->mortonCoder.mortonkeyZ.__begin_ = v100;
    v39->mortonCoder.mortonkeyZ.__cap_ = v101;
    v100 = 0uLL;
    v101 = 0;
    if (*&__p[8])
    {
      *&__p[16] = *&__p[8];
      operator delete(*&__p[8]);
    }

    if (v97[0])
    {
      v97[1] = v97[0];
      operator delete(v97[0]);
    }

    *v39->_anon_60 = 0;
    *&v39->_anon_60[8] = 0;
    *&v39->_anon_60[16] = xmmword_239F9E090;
    *v39->_anon_80 = v96;
    *&v39->_anon_80[16] = v95;
    *v39->_originatingOffset = 0u;
    v39->_voxelExtent = v7;
    sub_239F1D2C0(&v39->_octreeData.__ptr_, 0);
    v39->_levelSet = 0;
    v39->_interiorThickness = 0.0;
    v39->_exteriorThickness = 0.0;
    if (v10)
    {
      v44 = v10;
      if (objc_msgSend_bytes(v44, v45, v46, v47, v52, v53, v54, v55, v48, v49, v50, v51))
      {
        v56 = v10;
        v68 = objc_msgSend_bytes(v56, v57, v58, v59, v64, v65, v66, v67, v60, v61, v62, v63);
        v80 = objc_msgSend_length(v10, v69, v70, v71, v76, v77, v78, v79, v72, v73, v74, v75);
        if (v80 >= 0x10)
        {
          v92 = v80 >> 4;
          do
          {
            v88 = *v68;
            if ((*v68 & 0x80000000) == 0 && (v88.n128_u32[1] & 0x80000000) == 0 && (v88.n128_u32[2] & 0x80000000) == 0)
            {
              v97[0] = (p_mortonCoder->mortonkeyZ.__begin_[v88.n128_u8[8]] | ((p_mortonCoder->mortonkeyY.__begin_[v88.n128_u8[5]] | p_mortonCoder->mortonkeyZ.__begin_[v88.n128_u8[9]] | p_mortonCoder->mortonkeyX.__begin_[HIBYTE(v68->n128_u16[0])]) << 24) | p_mortonCoder->mortonkeyY.__begin_[v88.n128_u8[4]] | p_mortonCoder->mortonkeyX.__begin_[v68->n128_u8[0]]);
              LODWORD(v97[1]) = v88.n128_u32[3];
              sub_239F1D34C(&v39->_voxels.__table_.__bucket_list_.__ptr_, v97, v97);
              ++v68;
            }

            --v92;
          }

          while (v92);
        }

        objc_msgSend_recalculateExtents(v39, v81, v82, v83, v88, v89, v90, v91, v84, v85, v86, v87);
      }
    }

    v93 = v39;
  }

  return v39;
}

- (BOOL)voxelExistsAtIndex:(MDLVoxelIndex)index allowAnyX:(BOOL)allowAnyX allowAnyY:(BOOL)allowAnyY allowAnyZ:(BOOL)allowAnyZ allowAnyShell:(BOOL)allowAnyShell
{
  p_voxels = &self->_voxels;
  if (allowAnyX || allowAnyY || allowAnyZ || allowAnyShell)
  {
    next = p_voxels->__table_.__first_node_.__next_;
    if (next)
    {
      v12 = vdupq_n_s64(1uLL);
      v13 = vdupq_n_s64(2uLL);
      v14 = vdupq_n_s64(4uLL);
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
      v16 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
      while (1)
      {
        v17 = (next + 16);
        v18 = vld1q_dup_f64(v17);
        v19 = 0uLL;
        v20 = 24;
        v21 = xmmword_239F9AD60;
        v22 = xmmword_239F9AD50;
        v23 = xmmword_239F9AD40;
        v24 = xmmword_239F9AD30;
        v25 = 0uLL;
        v26 = 0uLL;
        do
        {
          v27 = v24;
          v28.i64[0] = 3 * v24.i64[0];
          v29 = v23;
          v28.i64[1] = 3 * v27.i64[1];
          v30.i64[0] = 3 * v23.i64[0];
          v30.i64[1] = 3 * v29.i64[1];
          v31 = v26;
          v32 = v25;
          v33 = v19;
          v19 = vorrq_s8(v19, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v12, v30), v18), vnegq_s64(vaddq_s64(v29, v29))), vshlq_u64(vandq_s8(vshlq_u64(v12, v28), v18), vnegq_s64(vaddq_s64(v27, v27)))));
          v34 = vaddq_s64(v28, v22);
          v35 = vaddq_s64(v30, v21);
          v26 = vorrq_s8(v26, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v13, v30), v18), vmvnq_s8(v35)), vshlq_u64(vandq_s8(vshlq_u64(v13, v28), v18), vmvnq_s8(v34))));
          v25 = vorrq_s8(v25, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v14, v30), v18), vsubq_s64(v15, v35)), vshlq_u64(vandq_s8(vshlq_u64(v14, v28), v18), vsubq_s64(v15, v34))));
          v22 = vaddq_s64(v22, v16);
          v21 = vaddq_s64(v21, v16);
          v24 = vaddq_s64(v27, v14);
          v23 = vaddq_s64(v29, v14);
          v20 -= 4;
        }

        while (v20);
        v36 = vdupq_n_s64(0x15uLL);
        v37 = vuzp1q_s32(vcgtq_u64(v36, v29), vcgtq_u64(v36, v27));
        v38 = vbslq_s8(v37, v26, v31);
        v39 = vbslq_s8(v37, v19, v33);
        *v39.i8 = vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
        v40 = v39.i32[0] | v39.i32[1];
        v41 = vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
        v42 = v40 == index.i32[0] || allowAnyX;
        v43 = (v41.i32[0] | v41.i32[1]) == index.i32[1] || allowAnyY;
        if (v42 && v43)
        {
          v45 = vdupq_n_s64(0x15uLL);
          v46 = vbslq_s8(vuzp1q_s32(vcgtq_u64(v45, v29), vcgtq_u64(v45, v27)), v25, v32);
          *v46.i8 = vorr_s8(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
          v47 = (v46.i32[0] | v46.i32[1]) == index.i32[2] || allowAnyZ;
          v48 = *(next + 6) == index.i32[3] || allowAnyShell;
          if (v47 && v48)
          {
            break;
          }
        }

        next = *next;
        if (!next)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    p_mortonCoder = &self->mortonCoder;
    v49 = p_mortonCoder->mortonkeyZ.__begin_[index.u8[8]] | ((p_mortonCoder->mortonkeyY.__begin_[index.u8[5]] | p_mortonCoder->mortonkeyZ.__begin_[index.u8[9]] | p_mortonCoder->mortonkeyX.__begin_[index.u8[1]]) << 24) | p_mortonCoder->mortonkeyY.__begin_[index.u8[4]] | p_mortonCoder->mortonkeyX.__begin_[index.u8[0]];
    return sub_239E7C134(p_voxels, &v49) != 0;
  }
}

- (NSData)voxelsWithinExtent:(MDLVoxelIndexExtent)extent
{
  v107 = extent;
  p_voxels = &self->_voxels;
  next = self->_voxels.__table_.__first_node_.__next_;
  if (next)
  {
    v5 = 0;
    v6 = vdupq_n_s64(1uLL);
    v7 = vdupq_n_s64(2uLL);
    v8 = vdupq_n_s64(4uLL);
    v9 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
    v10 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
    v96 = vdupq_n_s64(0x15uLL);
    v104 = v7;
    v105 = v6;
    v101 = v9;
    v103 = v8;
    v99 = v10;
    do
    {
      v11 = (next + 16);
      v12 = vld1q_dup_f64(v11);
      v13 = 0uLL;
      v14 = 24;
      v15 = xmmword_239F9AD60;
      v16 = xmmword_239F9AD50;
      v17 = xmmword_239F9AD40;
      v18 = xmmword_239F9AD30;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v21 = v18;
        v22.i64[0] = 3 * v18.i64[0];
        v23 = v17;
        v22.i64[1] = 3 * v21.i64[1];
        v24.i64[0] = 3 * v17.i64[0];
        v24.i64[1] = 3 * v23.i64[1];
        v25 = v20;
        v26 = v19;
        v27 = v13;
        v13 = vorrq_s8(v13, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v6, v24), v12), vnegq_s64(vaddq_s64(v23, v23))), vshlq_u64(vandq_s8(vshlq_u64(v6, v22), v12), vnegq_s64(vaddq_s64(v21, v21)))));
        v28 = vaddq_s64(v22, v16);
        v29 = vaddq_s64(v24, v15);
        v20 = vorrq_s8(v20, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v7, v24), v12), vmvnq_s8(v29)), vshlq_u64(vandq_s8(vshlq_u64(v7, v22), v12), vmvnq_s8(v28))));
        v19 = vorrq_s8(v19, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v8, v24), v12), vsubq_s64(v9, v29)), vshlq_u64(vandq_s8(vshlq_u64(v8, v22), v12), vsubq_s64(v9, v28))));
        v16 = vaddq_s64(v16, v10);
        v15 = vaddq_s64(v15, v10);
        v18 = vaddq_s64(v21, v8);
        v17 = vaddq_s64(v23, v8);
        v14 -= 4;
      }

      while (v14);
      v30 = vuzp1q_s32(vcgtq_u64(v96, v23), vcgtq_u64(v96, v21));
      v31 = vbslq_s8(v30, v20, v25);
      v32 = vbslq_s8(v30, v19, v26);
      v33 = vbslq_s8(v30, v13, v27);
      *v33.i8 = vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v34 = v33.i32[0] | v33.i32[1];
      *v33.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      v35 = v33.i32[0] | v33.i32[1];
      *v33.i8 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
      v33.i64[0] = __PAIR64__(v33.i32[0] | v33.i32[1], v34);
      v33.i32[2] = v35;
      v33.i32[3] = *(next + 6);
      v36 = sub_239F19240(&v107, v33);
      v10 = v99;
      v9 = v101;
      v8 = v103;
      v7 = v104;
      v6 = v105;
      v5 += v36;
      next = *next;
    }

    while (next);
    if (v5)
    {
      v37 = objc_alloc(MEMORY[0x277CBEB28]);
      v5 = objc_msgSend_initWithLength_(v37, v38, 16 * v5, v39, v44, v45, v46, v47, v40, v41, v42, v43);
      v48 = v5;
      v60 = objc_msgSend_mutableBytes(v48, v49, v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
      v61 = p_voxels->__table_.__first_node_.__next_;
      if (v61)
      {
        v62 = v60;
        v63 = vdupq_n_s64(1uLL);
        v64 = vdupq_n_s64(2uLL);
        v65 = vdupq_n_s64(4uLL);
        v66 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
        v67 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
        v94 = vdupq_n_s64(0x15uLL);
        v95 = v67;
        v102 = v63;
        v98 = v65;
        v100 = v64;
        v97 = v66;
        do
        {
          v68 = (v61 + 16);
          v69 = vld1q_dup_f64(v68);
          v70 = 0uLL;
          v71 = 24;
          v72 = xmmword_239F9AD60;
          v73 = xmmword_239F9AD50;
          v74 = xmmword_239F9AD40;
          v75 = xmmword_239F9AD30;
          v76 = 0uLL;
          v77 = 0uLL;
          do
          {
            v78 = v75;
            v79.i64[0] = 3 * v75.i64[0];
            v80 = v74;
            v79.i64[1] = 3 * v78.i64[1];
            v81.i64[0] = 3 * v74.i64[0];
            v81.i64[1] = 3 * v80.i64[1];
            v82 = v77;
            v83 = v76;
            v84 = v70;
            v70 = vorrq_s8(v70, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v63, v81), v69), vnegq_s64(vaddq_s64(v80, v80))), vshlq_u64(vandq_s8(vshlq_u64(v63, v79), v69), vnegq_s64(vaddq_s64(v78, v78)))));
            v85 = vaddq_s64(v79, v73);
            v86 = vaddq_s64(v81, v72);
            v77 = vorrq_s8(v77, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v64, v81), v69), vmvnq_s8(v86)), vshlq_u64(vandq_s8(vshlq_u64(v64, v79), v69), vmvnq_s8(v85))));
            v76 = vorrq_s8(v76, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v65, v81), v69), vsubq_s64(v66, v86)), vshlq_u64(vandq_s8(vshlq_u64(v65, v79), v69), vsubq_s64(v66, v85))));
            v73 = vaddq_s64(v73, v67);
            v72 = vaddq_s64(v72, v67);
            v75 = vaddq_s64(v78, v65);
            v74 = vaddq_s64(v80, v65);
            v71 -= 4;
          }

          while (v71);
          v87 = vuzp1q_s32(vcgtq_u64(v94, v80), vcgtq_u64(v94, v78));
          v88 = vbslq_s8(v87, v77, v82);
          v89 = vbslq_s8(v87, v76, v83);
          v90 = vbslq_s8(v87, v70, v84);
          *v90.i8 = vorr_s8(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
          v91 = v90.i32[0] | v90.i32[1];
          *v90.i8 = vorr_s8(*v89.i8, *&vextq_s8(v89, v89, 8uLL));
          v92 = v90.i32[0] | v90.i32[1];
          *v90.i8 = vorr_s8(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
          v90.i64[0] = __PAIR64__(v90.i32[0] | v90.i32[1], v91);
          v90.i64[1] = __PAIR64__(*(v61 + 6), v92);
          v106 = v90;
          if (sub_239F19240(&v107, v90))
          {
            *v62++ = v106;
          }

          v61 = *v61;
          v64 = v100;
          v63 = v102;
          v66 = v97;
          v65 = v98;
          v67 = v95;
        }

        while (v61);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSData)voxelIndices
{
  p_voxels = &self->_voxels;
  size = self->_voxels.__table_.__size_;
  if (size)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB28]);
    size = objc_msgSend_initWithLength_(v4, v5, 16 * size, v6, v11, v12, v13, v14, v7, v8, v9, v10);
    v15 = size;
    v27 = objc_msgSend_mutableBytes(v15, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    next = p_voxels->__table_.__first_node_.__next_;
    if (next)
    {
      v29 = vdupq_n_s64(1uLL);
      v30 = vdupq_n_s64(2uLL);
      v31 = vdupq_n_s64(4uLL);
      v32 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
      v33 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
      v34 = vdupq_n_s64(0x15uLL);
      do
      {
        v35 = (next + 16);
        v36 = vld1q_dup_f64(v35);
        v37 = 0uLL;
        v38 = 24;
        v39 = xmmword_239F9AD60;
        v40 = xmmword_239F9AD50;
        v41 = xmmword_239F9AD40;
        v42 = xmmword_239F9AD30;
        v43 = 0uLL;
        v44 = 0uLL;
        do
        {
          v45 = v42;
          v46.i64[0] = 3 * v42.i64[0];
          v47 = v41;
          v46.i64[1] = 3 * v45.i64[1];
          v48.i64[0] = 3 * v41.i64[0];
          v48.i64[1] = 3 * v47.i64[1];
          v49 = v44;
          v50 = v43;
          v51 = v37;
          v37 = vorrq_s8(v37, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v29, v48), v36), vnegq_s64(vaddq_s64(v47, v47))), vshlq_u64(vandq_s8(vshlq_u64(v29, v46), v36), vnegq_s64(vaddq_s64(v45, v45)))));
          v52 = vaddq_s64(v46, v40);
          v53 = vaddq_s64(v48, v39);
          v44 = vorrq_s8(v44, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v30, v48), v36), vmvnq_s8(v53)), vshlq_u64(vandq_s8(vshlq_u64(v30, v46), v36), vmvnq_s8(v52))));
          v43 = vorrq_s8(v43, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v31, v48), v36), vsubq_s64(v32, v53)), vshlq_u64(vandq_s8(vshlq_u64(v31, v46), v36), vsubq_s64(v32, v52))));
          v40 = vaddq_s64(v40, v33);
          v39 = vaddq_s64(v39, v33);
          v42 = vaddq_s64(v45, v31);
          v41 = vaddq_s64(v47, v31);
          v38 -= 4;
        }

        while (v38);
        v54 = vuzp1q_s32(vcgtq_u64(v34, v47), vcgtq_u64(v34, v45));
        v55 = vbslq_s8(v54, v44, v49);
        v56 = vbslq_s8(v54, v43, v50);
        v57 = vbslq_s8(v54, v37, v51);
        *v57.i8 = vorr_s8(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
        v58 = v57.i32[0] | v57.i32[1];
        *v57.i8 = vorr_s8(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
        v59 = v57.i32[0] | v57.i32[1];
        *v57.i8 = vorr_s8(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
        v57.i64[0] = __PAIR64__(v57.i32[0] | v57.i32[1], v58);
        v57.i64[1] = __PAIR64__(*(next + 6), v59);
        *v27++ = v57;
        next = *next;
      }

      while (next);
    }
  }

  return size;
}

- (void)setVoxelAtIndex:(MDLVoxelIndex)index
{
  if (((index.i32[0] | index.i32[1] | index.i32[2]) & 0x80000000) == 0)
  {
    v15 = self->mortonCoder.mortonkeyZ.__begin_[index.u8[8]] | ((self->mortonCoder.mortonkeyY.__begin_[index.u8[5]] | self->mortonCoder.mortonkeyZ.__begin_[index.u8[9]] | self->mortonCoder.mortonkeyX.__begin_[index.u8[1]]) << 24) | self->mortonCoder.mortonkeyY.__begin_[index.u8[4]] | self->mortonCoder.mortonkeyX.__begin_[index.u8[0]];
    v16 = index.i32[3];
    sub_239F1D34C(&self->_voxels.__table_.__bucket_list_.__ptr_, &v15, &v15);
    objc_msgSend_recalculateExtents(self, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  }

  sub_239F1D2C0(&self->_octreeData.__ptr_, 0);
  self->_levelSet = 0;
  self->_interiorThickness = 0.0;
  self->_exteriorThickness = 0.0;
}

- (void)setVoxelsForMesh:(MDLMesh *)mesh divisions:(int)divisions patchRadius:(float)patchRadius
{
  v8 = mesh;
  if (divisions <= 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v9, v13, @"ModelIOException", @"[%@ %@]: divisions must be greater than 0", v18, v19, v20, v21, v14, v15, v16, v17, v11, v12);
  }

  if (patchRadius < 0.0)
  {
    v22 = MEMORY[0x277CBEAD8];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v22, v26, @"ModelIOException", @"[%@ %@]: patchRadius must be greater or equal to 0", v31, v32, v33, v34, v27, v28, v29, v30, v24, v25);
  }

  if (v8)
  {
    operator new();
  }
}

- (void)unionWithVoxels:(MDLVoxelArray *)voxels
{
  v11 = voxels;
  v15 = 0uLL;
  v20 = 0u;
  v21 = 0u;
  v22 = 1065353216;
  for (i = v11->_voxels.__table_.__first_node_.__next_; i; i = *i)
  {
    v19 = i[1];
    DWORD2(v19) = 0;
    sub_239F1D584(&v20, &v19, &v19);
  }

  p_voxels = &self->_voxels;
  for (j = self->_voxels.__table_.__first_node_.__next_; j; j = *j)
  {
    v19 = j[1];
    DWORD2(v19) = 0;
    sub_239F1D584(&v20, &v19, &v19);
  }

  if (p_voxels != &v20)
  {
    LODWORD(self->_voxels.__table_.__max_load_factor_) = v22;
    sub_239F1D7B4(p_voxels, v21, 0);
  }

  objc_msgSend_recalculateExtents(self, v4, v5, v6, v15, v12, v13, v14, v7, v8, v9, v10);
  sub_239F1D2C0(&self->_octreeData.__ptr_, 0);
  self->_levelSet = 0;
  self->_interiorThickness = 0.0;
  self->_exteriorThickness = 0.0;
  sub_239E7B644(&v20);
}

- (void)intersectWithVoxels:(MDLVoxelArray *)voxels
{
  v11 = voxels;
  v15 = 0uLL;
  v18 = 0u;
  v19 = 0u;
  v20 = 1065353216;
  for (i = self->_voxels.__table_.__first_node_.__next_; i; i = *i)
  {
    v17 = i[1];
    if (sub_239E7C134(&v11->_voxels.__table_.__bucket_list_.__ptr_, &v17))
    {
      DWORD2(v17) = 0;
      sub_239F1D584(&v18, &v17, &v17);
    }
  }

  if (&self->_voxels != &v18)
  {
    LODWORD(self->_voxels.__table_.__max_load_factor_) = v20;
    sub_239F1D7B4(&self->_voxels.__table_.__bucket_list_.__ptr_, v19, 0);
  }

  objc_msgSend_recalculateExtents(self, v4, v5, v6, v15, v12, v13, v14, v7, v8, v9, v10);
  sub_239F1D2C0(&self->_octreeData.__ptr_, 0);
  self->_levelSet = 0;
  self->_interiorThickness = 0.0;
  self->_exteriorThickness = 0.0;
  sub_239E7B644(&v18);
}

- (void)differenceWithVoxels:(MDLVoxelArray *)voxels
{
  v11 = voxels;
  v15 = 0uLL;
  v18 = 0u;
  v19 = 0u;
  v20 = 1065353216;
  for (i = self->_voxels.__table_.__first_node_.__next_; i; i = *i)
  {
    v17 = i[1];
    if (!sub_239E7C134(&v11->_voxels.__table_.__bucket_list_.__ptr_, &v17))
    {
      DWORD2(v17) = 0;
      sub_239F1D584(&v18, &v17, &v17);
    }
  }

  if (&self->_voxels != &v18)
  {
    LODWORD(self->_voxels.__table_.__max_load_factor_) = v20;
    sub_239F1D7B4(&self->_voxels.__table_.__bucket_list_.__ptr_, v19, 0);
  }

  objc_msgSend_recalculateExtents(self, v4, v5, v6, v15, v12, v13, v14, v7, v8, v9, v10);
  sub_239F1D2C0(&self->_octreeData.__ptr_, 0);
  self->_levelSet = 0;
  self->_interiorThickness = 0.0;
  self->_exteriorThickness = 0.0;
  sub_239E7B644(&v18);
}

- (MDLVoxelIndex)indexOfSpatialLocation:(vector_float3)location
{
  v4.i32[0] = LODWORD(self->_voxelExtent);
  *v5.i32 = *v4.i32 * 0.5;
  v6 = vsubq_f32(vsubq_f32(v3, *self->_originatingOffset), vdupq_lane_s32(v5, 0));
  __asm { FMOV            V2.4S, #1.0 }

  v12 = vmulq_f32(v6, vdivq_f32(_Q2, vdupq_lane_s32(v4, 0)));
  *result.i8 = vcvt_s32_f32(vrnda_f32(*v12.f32));
  result.i64[1] = llroundf(v12.f32[2]);
  return result;
}

- (vector_float3)spatialLocationOfIndex:(MDLVoxelIndex)index
{
  __asm { FMOV            V2.4S, #1.0 }

  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)convertToSignedShellField
{
  ptr = self->_octreeData.__ptr_;
  if (ptr && *ptr)
  {
    sub_239E77634(ptr);
    sub_239E77598(self->_octreeData.__ptr_);
    v15 = 0u;
    v16 = 0u;
    v17 = 1065353216;
    sub_239F17CD0(&self->mortonCoder.mortonkeyX.__begin_, &v15, *self->_octreeData.__ptr_);
    if (&self->_voxels != &v15)
    {
      LODWORD(self->_voxels.__table_.__max_load_factor_) = v17;
      sub_239F1D7B4(&self->_voxels.__table_.__bucket_list_.__ptr_, v16, 0);
    }

    objc_msgSend_recalculateExtents(self, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
    self->_levelSet = 1;
    sub_239E7B644(&v15);
  }
}

- (void)setShellFieldInteriorThickness:(float)shellFieldInteriorThickness
{
  if (shellFieldInteriorThickness < 0.0)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v15, v19, @"ModelIOException", @"[%@ %@]: thickness must be greater or equal to 0", v24, v25, v26, v27, v20, v21, v22, v23, v17, v18);
  }

  interiorThickness = self->_interiorThickness;
  if (interiorThickness != shellFieldInteriorThickness)
  {
    v9.n128_u32[0] = LODWORD(self->_exteriorThickness);
    if (interiorThickness >= shellFieldInteriorThickness)
    {
      v30.n128_f32[0] = shellFieldInteriorThickness;
      objc_msgSend_erodeNarrowBandInteriorWidthTo_AndExteriorWidthTo_selector_(self, a2, a2, v4, v30, v9, v10, v11, v5, v6, v7, v8);
    }

    else
    {
      v29.n128_f32[0] = shellFieldInteriorThickness;
      objc_msgSend_dilateNarrowBandInteriorWidthTo_AndExteriorWidthTo_(self, a2, v3, v4, v29, v9, v10, v11, v5, v6, v7, v8);
    }

    self->_interiorThickness = shellFieldInteriorThickness;
  }
}

- (void)setShellFieldExteriorThickness:(float)shellFieldExteriorThickness
{
  v12 = shellFieldExteriorThickness;
  if (shellFieldExteriorThickness < 0.0)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v15, v19, @"ModelIOException", @"[%@ %@]: thickness must be greater or equal to 0", v24, v25, v26, v27, v20, v21, v22, v23, v17, v18);
  }

  exteriorThickness = self->_exteriorThickness;
  if (exteriorThickness != v12)
  {
    shellFieldExteriorThickness = self->_interiorThickness;
    if (exteriorThickness >= v12)
    {
      v9.n128_f32[0] = v12;
      objc_msgSend_erodeNarrowBandInteriorWidthTo_AndExteriorWidthTo_selector_(self, a2, a2, v4, *&shellFieldExteriorThickness, v9, v10, v11, v5, v6, v7, v8);
    }

    else
    {
      v9.n128_f32[0] = v12;
      objc_msgSend_dilateNarrowBandInteriorWidthTo_AndExteriorWidthTo_(self, a2, v3, v4, *&shellFieldExteriorThickness, v9, v10, v11, v5, v6, v7, v8);
    }

    self->_exteriorThickness = v12;
  }
}

- (void)dilateNarrowBandInteriorWidthTo:(float)to AndExteriorWidthTo:(float)widthTo
{
  ptr = self->_octreeData.__ptr_;
  if (ptr && *ptr && self->_levelSet)
  {
    sub_239E77B30(ptr, to, widthTo);
    sub_239E77598(self->_octreeData.__ptr_);
    v17 = 0u;
    v18 = 0u;
    v19 = 1065353216;
    sub_239F17CD0(&self->mortonCoder.mortonkeyX.__begin_, &v17, *self->_octreeData.__ptr_);
    if (&self->_voxels != &v17)
    {
      LODWORD(self->_voxels.__table_.__max_load_factor_) = v19;
      sub_239F1D7B4(&self->_voxels.__table_.__bucket_list_.__ptr_, v18, 0);
    }

    objc_msgSend_recalculateExtents(self, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
    sub_239E7B644(&v17);
  }
}

- (void)erodeNarrowBandInteriorWidthTo:(float)to AndExteriorWidthTo:(float)widthTo selector:(SEL)selector
{
  if (to < 0.0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v9, v13, @"ModelIOException", @"[%@ %@]: interiorNBWidth must be greater or equal to 0", v18, v19, v20, v21, v14, v15, v16, v17, v11, v12);
  }

  if (widthTo < 0.0)
  {
    v22 = MEMORY[0x277CBEAD8];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v22, v26, @"ModelIOException", @"[%@ %@]: exteriorNBWidth must be greater or equal to 0", v31, v32, v33, v34, v27, v28, v29, v30, v24, v25);
  }

  ptr = self->_octreeData.__ptr_;
  if (ptr && *ptr && self->_levelSet)
  {
    sub_239E78130(ptr, to, widthTo);
    v47 = 0u;
    v48 = 0u;
    v49 = 1065353216;
    sub_239F17CD0(&self->mortonCoder.mortonkeyX.__begin_, &v47, *self->_octreeData.__ptr_);
    if (&self->_voxels != &v47)
    {
      LODWORD(self->_voxels.__table_.__max_load_factor_) = v49;
      sub_239F1D7B4(&self->_voxels.__table_.__bucket_list_.__ptr_, v48, 0);
    }

    objc_msgSend_recalculateExtents(self, v36, v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);
    sub_239E7B644(&v47);
  }
}

- (MDLMesh)coarseMeshUsingAllocator:(id)allocator
{
  v285 = allocator;
  ptr = self->_octreeData.__ptr_;
  if (ptr)
  {
    v5 = log2f(*(ptr + 2));
    v6 = sub_239E71D1C(ptr, v5, 1, 0);
    goto LABEL_85;
  }

  v310 = 0;
  v311 = 0;
  v312 = 0;
  v307 = 0;
  v308 = 0;
  v309 = 0;
  v304 = 0;
  v305 = 0;
  v306 = 0;
  v301 = 0;
  v302 = 0;
  v303 = 0;
  p_voxels = &self->_voxels;
  next = self->_voxels.__table_.__first_node_.__next_;
  if (next)
  {
    v8 = self->_voxels.__table_.__first_node_.__next_;
    do
    {
      v9 = v8[6];
      if (v9 >= 0)
      {
        v10 = v8[6];
      }

      else
      {
        v10 = -v9;
      }

      if (v10 > 0x10)
      {
        break;
      }

      v8 = *v8;
    }

    while (v8);
    v11 = 0;
    p_mortonCoder = &self->mortonCoder;
    v292 = vdupq_n_s64(1uLL);
    v290 = vdupq_n_s64(4uLL);
    v291 = vdupq_n_s64(2uLL);
    v288 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
    v289 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
    v287 = vdupq_n_s64(0x15uLL);
    v286 = v10;
    while (1)
    {
      v294 = v11;
      v12 = *(next + 6);
      v293 = next;
      v13 = (next + 16);
      v14 = vld1q_dup_f64(v13);
      v15 = 0uLL;
      v16 = 24;
      v17 = xmmword_239F9AD60;
      v18 = xmmword_239F9AD50;
      v19 = xmmword_239F9AD40;
      v20 = xmmword_239F9AD30;
      v21 = 0uLL;
      v22 = 0uLL;
      do
      {
        v23 = v20;
        v24.i64[0] = 3 * v20.i64[0];
        v25 = v19;
        v24.i64[1] = 3 * v23.i64[1];
        v26.i64[0] = 3 * v19.i64[0];
        v26.i64[1] = 3 * v25.i64[1];
        v27 = v22;
        v28 = v21;
        v29 = v15;
        v15 = vorrq_s8(v15, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v292, v26), v14), vnegq_s64(vaddq_s64(v25, v25))), vshlq_u64(vandq_s8(vshlq_u64(v292, v24), v14), vnegq_s64(vaddq_s64(v23, v23)))));
        v30 = vaddq_s64(v24, v18);
        v31 = vaddq_s64(v26, v17);
        v22 = vorrq_s8(v22, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v291, v26), v14), vmvnq_s8(v31)), vshlq_u64(vandq_s8(vshlq_u64(v291, v24), v14), vmvnq_s8(v30))));
        v21 = vorrq_s8(v21, vuzp1q_s32(vshlq_u64(vandq_s8(vshlq_u64(v290, v26), v14), vsubq_s64(v289, v31)), vshlq_u64(vandq_s8(vshlq_u64(v290, v24), v14), vsubq_s64(v289, v30))));
        v18 = vaddq_s64(v18, v288);
        v17 = vaddq_s64(v17, v288);
        v20 = vaddq_s64(v23, v290);
        v19 = vaddq_s64(v25, v290);
        v16 -= 4;
      }

      while (v16);
      v32 = vuzp1q_s32(vcgtq_u64(v287, v25), vcgtq_u64(v287, v23));
      v33 = vbslq_s8(v32, v22, v27);
      v34 = vbslq_s8(v32, v21, v28);
      v35 = vbslq_s8(v32, v15, v29);
      *v35.i8 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
      v36 = v35.i32[0] | v35.i32[1];
      *v35.i8 = vorr_s8(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
      v37 = v35.i32[0] | v35.i32[1];
      v38 = vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v39 = v38.i32[0] | v38.i32[1];
      v40 = (v38.i8[0] | v38.i8[4]);
      if (v36 <= 1)
      {
        v41 = 2;
      }

      else
      {
        v300 = p_mortonCoder->mortonkeyZ.__begin_[v37] | ((p_mortonCoder->mortonkeyY.__begin_[((v38.i16[0] | v38.i16[2]) >> 8)] | p_mortonCoder->mortonkeyZ.__begin_[BYTE1(v37)] | p_mortonCoder->mortonkeyX.__begin_[((v36 - 1) >> 8)]) << 24) | p_mortonCoder->mortonkeyY.__begin_[(v38.i8[0] | v38.i8[4])] | p_mortonCoder->mortonkeyX.__begin_[(v36 - 1)];
        v41 = 2 * (sub_239E7C134(p_voxels, &v300) == 0);
      }

      v298 = v12;
      v300 = p_mortonCoder->mortonkeyZ.__begin_[v37] | ((p_mortonCoder->mortonkeyY.__begin_[BYTE1(v39)] | p_mortonCoder->mortonkeyZ.__begin_[BYTE1(v37)] | p_mortonCoder->mortonkeyX.__begin_[((v36 + 1) >> 8)]) << 24) | p_mortonCoder->mortonkeyY.__begin_[v40] | p_mortonCoder->mortonkeyX.__begin_[(v36 + 1)];
      v42 = v41 | (sub_239E7C134(p_voxels, &v300) == 0);
      if (v39 < 2)
      {
        v44 = v42 | 8;
        v43 = v36;
      }

      else
      {
        v43 = v36;
        v300 = p_mortonCoder->mortonkeyZ.__begin_[v37] | ((p_mortonCoder->mortonkeyY.__begin_[((v39 - 1) >> 8)] | p_mortonCoder->mortonkeyX.__begin_[BYTE1(v36)] | p_mortonCoder->mortonkeyZ.__begin_[BYTE1(v37)]) << 24) | p_mortonCoder->mortonkeyY.__begin_[(v39 - 1)] | p_mortonCoder->mortonkeyX.__begin_[v36];
        v44 = v42 | (8 * (sub_239E7C134(p_voxels, &v300) == 0));
      }

      v300 = p_mortonCoder->mortonkeyZ.__begin_[v37] | ((p_mortonCoder->mortonkeyY.__begin_[((v39 + 1) >> 8)] | p_mortonCoder->mortonkeyZ.__begin_[BYTE1(v37)] | p_mortonCoder->mortonkeyX.__begin_[BYTE1(v36)]) << 24) | p_mortonCoder->mortonkeyY.__begin_[(v39 + 1)] | p_mortonCoder->mortonkeyX.__begin_[v43];
      v45 = v44 | (4 * (sub_239E7C134(p_voxels, &v300) == 0));
      if (v37 < 2)
      {
        v46 = v45 | 0x20;
      }

      else
      {
        v300 = p_mortonCoder->mortonkeyZ.__begin_[(v37 - 1)] | ((p_mortonCoder->mortonkeyY.__begin_[BYTE1(v39)] | p_mortonCoder->mortonkeyZ.__begin_[((v37 - 1) >> 8)] | p_mortonCoder->mortonkeyX.__begin_[BYTE1(v36)]) << 24) | p_mortonCoder->mortonkeyY.__begin_[v40] | p_mortonCoder->mortonkeyX.__begin_[v43];
        v46 = v45 | (32 * (sub_239E7C134(p_voxels, &v300) == 0));
      }

      v300 = p_mortonCoder->mortonkeyZ.__begin_[(v37 + 1)] | ((p_mortonCoder->mortonkeyY.__begin_[BYTE1(v39)] | p_mortonCoder->mortonkeyZ.__begin_[((v37 + 1) >> 8)] | p_mortonCoder->mortonkeyX.__begin_[BYTE1(v36)]) << 24) | p_mortonCoder->mortonkeyY.__begin_[v40] | p_mortonCoder->mortonkeyX.__begin_[v43];
      v47 = v46 | (16 * (sub_239E7C134(p_voxels, &v300) == 0));
      if (v47)
      {
        break;
      }

      v53 = v293;
      v11 = v294;
LABEL_68:
      next = *v53;
      if (!next)
      {
        goto LABEL_69;
      }
    }

    v48.f32[0] = v36;
    v48.f32[1] = v39;
    v48.f32[2] = v37;
    v49 = vdupq_n_s32(0x3B800000u);
    v50 = vmulq_f32(v48, v49);
    LODWORD(v300) = v298;
    v297 = vaddq_f32(v50, v49);
    v299 = v50;
    if ((v47 & 0x20) != 0)
    {
      v313[0] = v50.i32[0];
      sub_239E798A4(&v310, v313);
      v52 = v294;
      v313[0] = v299.i32[1];
      sub_239E798A4(&v310, v313);
      v313[0] = v299.i32[2];
      sub_239E798A4(&v310, v313);
      v313[0] = v297.i32[0];
      sub_239E798A4(&v310, v313);
      v313[0] = v299.i32[1];
      sub_239E798A4(&v310, v313);
      v313[0] = v299.i32[2];
      sub_239E798A4(&v310, v313);
      v313[0] = v299.i32[0];
      sub_239E798A4(&v310, v313);
      v313[0] = v297.i32[1];
      sub_239E798A4(&v310, v313);
      v313[0] = v299.i32[2];
      sub_239E798A4(&v310, v313);
      v313[0] = v297.i32[0];
      sub_239E798A4(&v310, v313);
      v313[0] = v297.i32[1];
      sub_239E798A4(&v310, v313);
      v313[0] = v299.i32[2];
      sub_239E798A4(&v310, v313);
      if (v286 >= 0x11)
      {
        v54 = 4;
        do
        {
          sub_239E73254(&v304, &v300);
          --v54;
        }

        while (v54);
      }

      v55 = 4;
      do
      {
        v313[0] = -1082130432;
        sub_239E798A4(&v307, v313);
        v313[0] = 0;
        sub_239E798A4(&v307, v313);
        v313[0] = 0;
        sub_239E798A4(&v307, v313);
        --v55;
      }

      while (v55);
      v313[0] = v294;
      sub_239E73254(&v301, v313);
      v313[0] = v294 + 2;
      sub_239E73254(&v301, v313);
      v313[0] = v294 + 1;
      sub_239E73254(&v301, v313);
      v313[0] = v294 + 1;
      sub_239E73254(&v301, v313);
      v313[0] = v294 + 2;
      sub_239E73254(&v301, v313);
      v313[0] = v294 + 3;
      sub_239E73254(&v301, v313);
      v51 = 4;
      v50.i32[0] = v299.i32[0];
      if ((v47 & 2) == 0)
      {
LABEL_25:
        if ((v47 & 0x10) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v51 = 0;
      v52 = v294;
      if ((v47 & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    v313[0] = v50.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[2];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[2];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[2];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[2];
    sub_239E798A4(&v310, v313);
    if (v286 >= 0x11)
    {
      v56 = 4;
      do
      {
        sub_239E73254(&v304, &v300);
        --v56;
      }

      while (v56);
    }

    v57 = 4;
    do
    {
      v313[0] = 0;
      sub_239E798A4(&v307, v313);
      v313[0] = 0;
      sub_239E798A4(&v307, v313);
      v313[0] = -1082130432;
      sub_239E798A4(&v307, v313);
      --v57;
    }

    while (v57);
    v313[0] = v51 + v52;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 2;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 1;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 1;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 2;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 3;
    sub_239E73254(&v301, v313);
    v51 += 4;
    v50.i32[0] = v299.i32[0];
    if ((v47 & 0x10) == 0)
    {
LABEL_26:
      if ((v47 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_49;
    }

LABEL_43:
    v313[0] = v50.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[2];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[2];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[2];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[2];
    sub_239E798A4(&v310, v313);
    if (v286 >= 0x11)
    {
      v58 = 4;
      do
      {
        sub_239E73254(&v304, &v300);
        --v58;
      }

      while (v58);
    }

    v59 = 4;
    do
    {
      v313[0] = 1065353216;
      sub_239E798A4(&v307, v313);
      v313[0] = 0;
      sub_239E798A4(&v307, v313);
      v313[0] = 0;
      sub_239E798A4(&v307, v313);
      --v59;
    }

    while (v59);
    v313[0] = v51 + v52;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 1;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 2;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 1;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 3;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 2;
    sub_239E73254(&v301, v313);
    v51 += 4;
    v50.i32[0] = v299.i32[0];
    if ((v47 & 1) == 0)
    {
LABEL_27:
      if ((v47 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_55;
    }

LABEL_49:
    v313[0] = v297.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[2];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[2];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[2];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[2];
    sub_239E798A4(&v310, v313);
    if (v286 >= 0x11)
    {
      v60 = 4;
      do
      {
        sub_239E73254(&v304, &v300);
        --v60;
      }

      while (v60);
    }

    v61 = 4;
    do
    {
      v313[0] = 0;
      sub_239E798A4(&v307, v313);
      v313[0] = 0;
      sub_239E798A4(&v307, v313);
      v313[0] = 1065353216;
      sub_239E798A4(&v307, v313);
      --v61;
    }

    while (v61);
    v313[0] = v51 + v52;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 3;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 2;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 1;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 3;
    sub_239E73254(&v301, v313);
    v51 += 4;
    v50.i32[0] = v299.i32[0];
    if ((v47 & 8) == 0)
    {
LABEL_28:
      if ((v47 & 4) == 0)
      {
LABEL_67:
        v11 = v51 + v52;
        v53 = v293;
        goto LABEL_68;
      }

LABEL_61:
      v313[0] = v50.i32[0];
      sub_239E798A4(&v310, v313);
      v313[0] = v297.i32[1];
      sub_239E798A4(&v310, v313);
      v313[0] = v299.i32[2];
      sub_239E798A4(&v310, v313);
      v313[0] = v297.i32[0];
      sub_239E798A4(&v310, v313);
      v313[0] = v297.i32[1];
      sub_239E798A4(&v310, v313);
      v313[0] = v299.i32[2];
      sub_239E798A4(&v310, v313);
      v313[0] = v299.i32[0];
      sub_239E798A4(&v310, v313);
      v313[0] = v297.i32[1];
      sub_239E798A4(&v310, v313);
      v313[0] = v297.i32[2];
      sub_239E798A4(&v310, v313);
      v313[0] = v297.i32[0];
      sub_239E798A4(&v310, v313);
      v313[0] = v297.i32[1];
      sub_239E798A4(&v310, v313);
      v313[0] = v297.i32[2];
      sub_239E798A4(&v310, v313);
      if (v286 >= 0x11)
      {
        v64 = 4;
        do
        {
          sub_239E73254(&v304, &v300);
          --v64;
        }

        while (v64);
      }

      v65 = 4;
      do
      {
        v313[0] = 0;
        sub_239E798A4(&v307, v313);
        v313[0] = 1065353216;
        sub_239E798A4(&v307, v313);
        v313[0] = 0;
        sub_239E798A4(&v307, v313);
        --v65;
      }

      while (v65);
      v313[0] = v51 + v52;
      sub_239E73254(&v301, v313);
      v313[0] = v51 + v52 + 2;
      sub_239E73254(&v301, v313);
      v313[0] = v51 + v52 + 1;
      sub_239E73254(&v301, v313);
      v313[0] = v51 + v52 + 1;
      sub_239E73254(&v301, v313);
      v313[0] = v51 + v52 + 2;
      sub_239E73254(&v301, v313);
      v313[0] = v51 + v52 + 3;
      sub_239E73254(&v301, v313);
      v51 += 4;
      goto LABEL_67;
    }

LABEL_55:
    v313[0] = v50.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[2];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[2];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[2];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[0];
    sub_239E798A4(&v310, v313);
    v313[0] = v299.i32[1];
    sub_239E798A4(&v310, v313);
    v313[0] = v297.i32[2];
    sub_239E798A4(&v310, v313);
    if (v286 >= 0x11)
    {
      v62 = 4;
      do
      {
        sub_239E73254(&v304, &v300);
        --v62;
      }

      while (v62);
    }

    v63 = 4;
    do
    {
      v313[0] = 0;
      sub_239E798A4(&v307, v313);
      v313[0] = -1082130432;
      sub_239E798A4(&v307, v313);
      v313[0] = 0;
      sub_239E798A4(&v307, v313);
      --v63;
    }

    while (v63);
    v313[0] = v51 + v52;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 1;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 3;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 3;
    sub_239E73254(&v301, v313);
    v313[0] = v51 + v52 + 2;
    sub_239E73254(&v301, v313);
    v51 += 4;
    v50.i32[0] = v299.i32[0];
    if ((v47 & 4) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_61;
  }

LABEL_69:
  v72 = [MDLMesh alloc];
  v77 = v285;
  if (!v285)
  {
    v77 = objc_alloc_init(MDLMeshBufferDataAllocator);
  }

  v6 = objc_msgSend_initWithBufferAllocator_(v72, v66, v77, v67, v73, v74, v75, v76, v68, v69, v70, v71);
  if (!v285)
  {
  }

  v88 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v78, @"%@-%@", v79, v84, v85, v86, v87, v80, v81, v82, v83, @"Voxel", @"position");
  v98 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v89, v310, v311 - v310, v94, v95, v96, v97, v90, v91, v92, v93);
  objc_msgSend_addAttributeWithName_format_type_data_stride_(v6, v99, v88, 786435, v101, v102, v103, v104, @"position", v98, 12, v100);

  v115 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v105, @"%@-%@", v106, v111, v112, v113, v114, v107, v108, v109, v110, @"Voxel", @"normal");
  v125 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v116, v307, v308 - v307, v121, v122, v123, v124, v117, v118, v119, v120);
  objc_msgSend_addAttributeWithName_format_type_data_stride_(v6, v126, v115, 786435, v128, v129, v130, v131, @"normal", v125, 12, v127);

  if (v305 != v304)
  {
    v142 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v132, @"%@-%@", v133, v138, v139, v140, v141, v134, v135, v136, v137, @"Voxel", @"color");
    v152 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v143, v304, v305 - v304, v148, v149, v150, v151, v144, v145, v146, v147);
    objc_msgSend_addAttributeWithName_format_type_data_stride_(v6, v153, v142, 65540, v155, v156, v157, v158, @"color", v152, 4, v154);
  }

  v159 = objc_alloc(MEMORY[0x277CBEA90]);
  v168 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v159, v160, v301, v302 - v301, v164, v165, v166, v167, 0, v161, v162, v163);
  v180 = objc_msgSend_allocator(v6, v169, v170, v171, v176, v177, v178, v179, v172, v173, v174, v175);
  v190 = objc_msgSend_newBufferWithData_type_(v180, v181, v168, 2, v186, v187, v188, v189, v182, v183, v184, v185);

  if (objc_msgSend_conformsToProtocol_(v190, v191, &unk_284D24D98, v192, v197, v198, v199, v200, v193, v194, v195, v196))
  {
    v201 = v190;
    v212 = objc_msgSend_stringByAppendingString_(@"Voxel", v202, @"-Indices", v203, v208, v209, v210, v211, v204, v205, v206, v207);
    objc_msgSend_setName_(v201, v213, v212, v214, v219, v220, v221, v222, v215, v216, v217, v218);
  }

  v223 = [MDLMaterial alloc];
  v234 = objc_msgSend_stringByAppendingString_(@"Voxel", v224, @"-Material", v225, v230, v231, v232, v233, v226, v227, v228, v229);
  v235 = objc_opt_new();
  v245 = objc_msgSend_initWithName_scatteringFunction_(v223, v236, v234, v235, v241, v242, v243, v244, v237, v238, v239, v240);

  v246 = [MDLSubmesh alloc];
  v252 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v246, v247, @"submesh", v190, v248, v249, v250, v251, (v302 - v301) >> 2, 32, 2, v245, 0);
  objc_msgSend_setVertexCount_(v6, v253, ((v311 - v310) >> 2) / 3uLL, v254, v259, v260, v261, v262, v255, v256, v257, v258);
  v263 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_addObject_(v263, v264, v252, v265, v270, v271, v272, v273, v266, v267, v268, v269);
  objc_msgSend_setSubmeshes_(v6, v274, v263, v275, v280, v281, v282, v283, v276, v277, v278, v279);

  if (v301)
  {
    v302 = v301;
    operator delete(v301);
  }

  if (v304)
  {
    v305 = v304;
    operator delete(v304);
  }

  if (v307)
  {
    v308 = v307;
    operator delete(v307);
  }

  if (v310)
  {
    v311 = v310;
    operator delete(v310);
  }

LABEL_85:

  return v6;
}

- (MDLMesh)meshUsingAllocator:(id)allocator
{
  v544 = *MEMORY[0x277D85DE8];
  v508 = allocator;
  ptr = self->_octreeData.__ptr_;
  if (ptr && *ptr && self->_levelSet)
  {
    v5 = sub_239E78750(ptr);
  }

  else
  {
    if (!v508)
    {
      v508 = objc_opt_new();
    }

    memset(v543, 0, sizeof(v543));
    bzero(v542, 0x400uLL);
    v6 = 0;
    for (i = 0; i != 8; ++i)
    {
      for (j = 1; j < 5; j *= 2)
      {
        if (i <= (j ^ i))
        {
          v9 = v543 + v6;
          v6 += 2;
          *v9 = i;
          v9[1] = j ^ i;
        }
      }
    }

    v10 = 0;
    v11.i64[0] = 0x100000001;
    v11.i64[1] = 0x100000001;
    v12 = vdupq_n_s64(8uLL);
    do
    {
      v13 = 0;
      v14 = vdupq_n_s32(v10);
      v15 = 0uLL;
      v16 = xmmword_239F9E0B0;
      v17 = xmmword_239F9E0A0;
      do
      {
        v18 = &v543[v13];
        v546 = vld2q_f32(v18);
        v15 = vorrq_s8(vbicq_s8(vshlq_u32(v11, vshrn_high_n_s64(vshrn_n_s64(v16, 1uLL), v17, 1uLL)), vceqzq_s32(vandq_s8(veorq_s8(vshlq_u32(v14, vnegq_s32(v546.val[1])), vshlq_u32(v14, vnegq_s32(v546.val[0]))), v11))), v15);
        v17 = vaddq_s64(v17, v12);
        v16 = vaddq_s64(v16, v12);
        v13 += 2;
      }

      while (v13 != 6);
      v19 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
      v542[v10++] = v19.i32[0] | v19.i32[1];
    }

    while (v10 != 256);
    v533 = 0;
    v534 = 0;
    v535 = 0;
    sub_239EB2474(&v533, 0x1000uLL);
    objc_msgSend_voxelIndexExtent(self, v20, v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
    v518 = v31;
    objc_msgSend_voxelIndexExtent(self, v32, v33, v34, v39, v31, v40, v41, v35, v36, v37, v38);
    v515 = v42;
    objc_msgSend_voxelIndexExtent(self, v43, v44, v45, v42, v50, v51, v52, v46, v47, v48, v49);
    v513 = v60;
    selfCopy = self;
    v61 = v515;
    v62 = vsubq_s32(v518, v515);
    v63 = v62.i32[1];
    v519 = v62;
    v64 = v62.i32[0];
    __p = 0;
    v531 = 0;
    v532 = 0;
    v527 = 0;
    v528 = 0;
    v529 = 0;
    v540 = 0;
    v65 = v62.i32[0] + 4;
    v538[0] = 1;
    v538[1] = v62.i32[0] + 4;
    v66 = v62.i32[1] + 4;
    v67 = (v62.i32[0] + 4) * (v62.i32[1] + 4);
    v539 = v67;
    memset(v537, 0, sizeof(v537));
    v68 = 2 * v67;
    if (v68 > (v534 - v533) >> 2)
    {
      sub_239EB2474(&v533, v68);
    }

    v69 = v519;
    v70 = v519.n128_u32[2];
    v541 = 0;
    if (v519.n128_i32[2] >= -1)
    {
      v511 = 0;
      v71.i64[0] = -1;
      v71.i64[1] = -1;
      v61 = v513;
      v69 = vaddq_s32(v513, v71);
      v509 = v64 + 1;
      v72 = v63 + 1;
      v69.n128_u32[2] = v513.i32[2] - 1;
      v520 = v69;
      v507 = v70 + 1;
      v73 = 1;
      v74 = &OBJC_IVAR___MDLCamera__projection;
      v503 = v64;
      v504 = v63;
      v501 = v66;
      v502 = v65;
      v500 = v63 + 1;
      do
      {
        HIDWORD(v540) = 0;
        if (v63 >= -1)
        {
          v514 = 0;
          v75 = v65 + v65 * v73 * v66 + 1;
          v505 = v73;
          v506 = v67;
          do
          {
            LODWORD(v540) = 0;
            if (v64 >= -1)
            {
              v76 = 0;
              v77 = v74[30];
              v79 = v75;
              do
              {
                v510 = v79;
                v80 = 0;
                LODWORD(v81) = 0;
                v82 = 0;
                v83 = 1;
                do
                {
                  v84 = 0;
                  v512 = v83;
                  v85 = v82 + v511;
                  v86 = 1;
                  do
                  {
                    v87 = 0;
                    v516 = v86;
                    v88 = v84 + v514;
                    v89 = v81;
                    v90 = 1;
                    v81 = v81;
                    do
                    {
                      v69.n128_u32[0] = v87 + v76;
                      v69.n128_u32[1] = v88;
                      v91 = v90;
                      v69.n128_u32[2] = v85;
                      v92 = vaddq_s32(v69, v520);
                      p_mortonCoder = &selfCopy->mortonCoder;
                      *&v526 = p_mortonCoder->mortonkeyZ.__begin_[v92.u8[8]] | ((p_mortonCoder->mortonkeyY.__begin_[v92.u8[5]] | p_mortonCoder->mortonkeyZ.__begin_[v92.u8[9]] | p_mortonCoder->mortonkeyX.__begin_[v92.u8[1]]) << 24) | p_mortonCoder->mortonkeyY.__begin_[v92.u8[4]] | p_mortonCoder->mortonkeyX.__begin_[v92.u8[0]];
                      v93 = sub_239E7C134((&selfCopy->super.super.isa + v77), &v526);
                      v90 = 0;
                      if (v93)
                      {
                        v69.n128_f32[0] = 1.0;
                      }

                      else
                      {
                        v69.n128_f32[0] = -1.0;
                      }

                      *(v537 + v81) = v69.n128_u32[0];
                      v87 = 1;
                      v94 = 1 << v89;
                      if (v93)
                      {
                        v94 = 0;
                      }

                      v80 |= v94;
                      ++v81;
                      ++v89;
                    }

                    while ((v91 & 1) != 0);
                    v86 = 0;
                    v84 = 1;
                  }

                  while ((v516 & 1) != 0);
                  v83 = 0;
                  v82 = 1;
                }

                while ((v512 & 1) != 0);
                v95 = v510;
                if (v80 && v80 != 255)
                {
                  v96 = 0;
                  v97 = 0;
                  v98 = v542[v80];
                  v99 = 0uLL;
                  do
                  {
                    if ((v98 >> v96))
                    {
                      v100 = v543 + 2 * v96;
                      v101 = *v100;
                      v102 = v100[1];
                      v103 = *(v537 + v101);
                      ++v97;
                      v104 = *(v537 + v102);
                      v105 = v103 - v104;
                      if (v103 != v104)
                      {
                        v106 = 0;
                        v61.n128_f64[0] = (v103 / v105);
                        v107 = 1;
                        do
                        {
                          v108 = v99.n128_u32[3];
                          v109 = (&v525 & 0xFFFFFFFFFFFFFFF3 | (4 * (v106 & 3)));
                          v525 = v99;
                          if ((v107 & v101) != 0)
                          {
                            v110 = 1.0;
                          }

                          else
                          {
                            v110 = 0.0;
                          }

                          if ((v107 & v101) != 0)
                          {
                            v111 = 1.0 - v61.n128_f64[0];
                          }

                          else
                          {
                            v111 = v61.n128_f64[0];
                          }

                          if ((v107 & v101) != (v107 & v102))
                          {
                            v110 = v111;
                          }

                          v112 = v110 + *v109;
                          *v109 = v112;
                          v99 = v525;
                          v99.n128_u32[3] = v108;
                          ++v106;
                          v107 *= 2;
                        }

                        while (v106 != 3);
                      }
                    }

                    ++v96;
                  }

                  while (v96 != 12);
                  v113 = 0;
                  v61.n128_f32[0] = 1.0 / v97;
                  do
                  {
                    v114 = *(&v540 + v113);
                    v524 = v99;
                    *(&v524 & 0xFFFFFFFFFFFFFFF3 | (4 * (v113 & 3))) = v114 + (*(&v524 & 0xFFFFFFFFFFFFFFF3 | (4 * (v113 & 3))) * v61.n128_f32[0]);
                    v59 = v524;
                    v58 = v524;
                    v58.n128_u32[3] = v99.n128_u32[3];
                    ++v113;
                    v99 = v58;
                  }

                  while (v113 != 3);
                  v517 = v524;
                  v115 = __p;
                  v116 = v531;
                  v117 = (v531 - __p) >> 4;
                  *(v533 + v510) = v117;
                  if (v116 >= v532)
                  {
                    if ((v117 + 1) >> 60)
                    {
                      sub_239E797B4();
                    }

                    v119 = v532 - v115;
                    v120 = v119 >> 3;
                    if (v119 >> 3 <= (v117 + 1))
                    {
                      v120 = v117 + 1;
                    }

                    if (v119 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v121 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v121 = v120;
                    }

                    if (v121)
                    {
                      sub_239E91AC8(&__p, v121);
                    }

                    *(16 * v117) = v517;
                    v118 = 16 * v117 + 16;
                    v122 = (16 * v117 - (v531 - __p));
                    memcpy(v122, __p, v531 - __p);
                    v123 = __p;
                    __p = v122;
                    v531 = v118;
                    v532 = 0;
                    if (v123)
                    {
                      operator delete(v123);
                    }
                  }

                  else
                  {
                    v69 = v517;
                    *v116 = v517;
                    v118 = &v116[1];
                  }

                  v531 = v118;
                  v124 = -3;
                  v95 = v510;
                  do
                  {
                    if ((v98 >> (v124 + 3)))
                    {
                      v125 = v124 + 4;
                      if (v124 == -1)
                      {
                        v125 = 0;
                      }

                      if (*(&v540 + v125))
                      {
                        v126 = v124 == -3 ? 2 : v124 + 2;
                        if (*(&v540 + v126))
                        {
                          v127 = v538[v125];
                          v128 = v538[v126];
                          v129 = v510 - v127;
                          if (v80)
                          {
                            DWORD1(v130) = *(v533 + v129);
                            DWORD2(v130) = *(v533 + v129 - v128);
                            HIDWORD(v130) = *(v533 + v510 - v128);
                          }

                          else
                          {
                            DWORD1(v130) = *(v533 + v510 - v128);
                            DWORD2(v130) = *(v533 + v129 - v128);
                            HIDWORD(v130) = *(v533 + v129);
                          }

                          LODWORD(v130) = *(v533 + v510);
                          v526 = v130;
                          sub_239E8E4FC(&v527, &v526);
                        }
                      }
                    }
                  }

                  while (!__CFADD__(v124++, 1));
                }

                LODWORD(v540) = v76 + 1;
                v79 = v95 + 1;
                v132 = v76++ == v509;
              }

              while (!v132);
              v75 = v79;
              v64 = v503;
              v63 = v504;
              v66 = v501;
              v65 = v502;
              v73 = v505;
              v67 = v506;
              v72 = v500;
              v74 = &OBJC_IVAR___MDLCamera__projection;
            }

            HIDWORD(v540) = v514 + 1;
            v75 += 2;
            v132 = v514++ == v72;
          }

          while (!v132);
        }

        v541 = v511 + 1;
        v73 ^= 1u;
        v67 = -v67;
        v539 = v67;
        v132 = v511++ == v507;
      }

      while (!v132);
    }

    v523 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v68, 8 * (((v528 - v527) >> 3) + ((v528 - v527) >> 4)), v53, v69, v61, v58, v59, v54, v55, v56, v57);
    v133 = v523;
    v145 = objc_msgSend_mutableBytes(v523, v134, v135, v136, v141, v142, v143, v144, v137, v138, v139, v140);
    v155 = v527;
    v156 = v528;
    while (v155 != v156)
    {
      v157 = *v155++;
      v152 = vuzp1q_s32(v157, vuzp2q_s32(v157, vdupq_lane_s32(*v157.i8, 0)));
      *v145 = v152;
      v151 = vextq_s8(v157, v157, 8uLL);
      v151.n128_u64[0] = vrev64_s32(v151.n128_u64[0]);
      *(v145 + 16) = v151.n128_u64[0];
      v145 += 24;
    }

    v521 = objc_msgSend_newBufferWithData_type_(v508, v146, v523, 2, v151, v152, v153, v154, v147, v148, v149, v150);
    if (objc_msgSend_conformsToProtocol_(v521, v158, &unk_284D24D98, v159, v164, v165, v166, v167, v160, v161, v162, v163))
    {
      v168 = v521;
      v179 = objc_msgSend_stringByAppendingString_(@"Voxels", v169, @"-Indices", v170, v175, v176, v177, v178, v171, v172, v173, v174);
      objc_msgSend_setName_(v168, v180, v179, v181, v186, v187, v188, v189, v182, v183, v184, v185);
    }

    v190 = [MDLSubmesh alloc];
    v191 = v527;
    v192 = v528;
    v193 = [MDLMaterial alloc];
    v204 = objc_msgSend_stringByAppendingString_(@"Voxels", v194, @"-Material", v195, v200, v201, v202, v203, v196, v197, v198, v199);
    v205 = objc_opt_new();
    v215 = objc_msgSend_initWithName_scatteringFunction_(v193, v206, v204, v205, v211, v212, v213, v214, v207, v208, v209, v210);
    v222 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v190, v216, v521, 2 * (((v192 - v191) >> 3) + ((v192 - v191) >> 4)), v218, v219, v220, v221, 32, 2, v215, v217);

    v233 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v223, 4 * (((v531 - __p) >> 3) + ((v531 - __p) >> 4)), v224, v229, v230, v231, v232, v225, v226, v227, v228);
    v234 = v233;
    v246 = objc_msgSend_mutableBytes(v233, v235, v236, v237, v242, v243, v244, v245, v238, v239, v240, v241);
    v256 = __p;
    v257 = v531;
    while (v256 != v257)
    {
      v258 = *v256++;
      v252 = v258;
      v259 = v246 + 1;
      *v246 = v258.n128_u64[0];
      v246 = (v246 + 12);
      *v259 = v258.n128_u32[2];
    }

    v260 = objc_msgSend_newBufferWithData_type_(v508, v247, v233, 1, v252, v253, v254, v255, v248, v249, v250, v251);
    if (objc_msgSend_conformsToProtocol_(v260, v261, &unk_284D24D98, v262, v267, v268, v269, v270, v263, v264, v265, v266))
    {
      v271 = v260;
      v282 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v272, @"%@-%@", v273, v278, v279, v280, v281, v274, v275, v276, v277, @"Voxels", @"position");
      objc_msgSend_setName_(v271, v283, v282, v284, v289, v290, v291, v292, v285, v286, v287, v288);
    }

    v293 = objc_opt_new();
    v305 = objc_msgSend_attributes(v293, v294, v295, v296, v301, v302, v303, v304, v297, v298, v299, v300);
    v316 = objc_msgSend_objectAtIndexedSubscript_(v305, v306, 0, v307, v312, v313, v314, v315, v308, v309, v310, v311);
    objc_msgSend_setName_(v316, v317, @"position", v318, v323, v324, v325, v326, v319, v320, v321, v322);

    v338 = objc_msgSend_attributes(v293, v327, v328, v329, v334, v335, v336, v337, v330, v331, v332, v333);
    v349 = objc_msgSend_objectAtIndexedSubscript_(v338, v339, 0, v340, v345, v346, v347, v348, v341, v342, v343, v344);
    objc_msgSend_setFormat_(v349, v350, 786435, v351, v356, v357, v358, v359, v352, v353, v354, v355);

    v371 = objc_msgSend_attributes(v293, v360, v361, v362, v367, v368, v369, v370, v363, v364, v365, v366);
    v382 = objc_msgSend_objectAtIndexedSubscript_(v371, v372, 0, v373, v378, v379, v380, v381, v374, v375, v376, v377);
    objc_msgSend_setOffset_(v382, v383, 0, v384, v389, v390, v391, v392, v385, v386, v387, v388);

    v404 = objc_msgSend_attributes(v293, v393, v394, v395, v400, v401, v402, v403, v396, v397, v398, v399);
    v415 = objc_msgSend_objectAtIndexedSubscript_(v404, v405, 0, v406, v411, v412, v413, v414, v407, v408, v409, v410);
    objc_msgSend_setBufferIndex_(v415, v416, 0, v417, v422, v423, v424, v425, v418, v419, v420, v421);

    v437 = objc_msgSend_layouts(v293, v426, v427, v428, v433, v434, v435, v436, v429, v430, v431, v432);
    v448 = objc_msgSend_objectAtIndexedSubscript_(v437, v438, 0, v439, v444, v445, v446, v447, v440, v441, v442, v443);
    objc_msgSend_setStride_(v448, v449, 12, v450, v455, v456, v457, v458, v451, v452, v453, v454);

    v459 = [MDLMesh alloc];
    v461 = __p;
    v460 = v531;
    v536 = v222;
    v471 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v462, &v536, 1, v467, v468, v469, v470, v463, v464, v465, v466);
    v5 = objc_msgSend_initWithVertexBuffer_vertexCount_descriptor_submeshes_(v459, v472, v260, (v460 - v461) >> 4, v475, v476, v477, v478, v293, v471, v473, v474);

    objc_msgSend_setName_(v5, v479, @"Voxels", v480, v485, v486, v487, v488, v481, v482, v483, v484);
    v489.n128_u32[0] = 1045220557;
    objc_msgSend_addNormalsWithAttributeNamed_creaseThreshold_(v5, v490, @"normal", v491, v489, v496, v497, v498, v492, v493, v494, v495);

    if (v527)
    {
      v528 = v527;
      operator delete(v527);
    }

    if (__p)
    {
      v531 = __p;
      operator delete(__p);
    }

    if (v533)
    {
      v534 = v533;
      operator delete(v533);
    }
  }

  return v5;
}

- (id)coarseVoxelMeshWithStyle:(unint64_t)style
{
  ptr = self->_octreeData.__ptr_;
  v5 = log2f(*(ptr + 2));

  return sub_239E71D1C(ptr, v5, style == 2, style == 1);
}

- (vector<int,)boxesPerLayer
{
  ptr = self->_octreeData.__ptr_;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  return sub_239E99F5C(retstr, *(ptr + 6), *(ptr + 7), (*(ptr + 7) - *(ptr + 6)) >> 2);
}

- (MDLVoxelArray)initWithAsset:(MDLAsset *)asset divisions:(int)divisions interiorShells:(int)interiorShells exteriorShells:(int)exteriorShells patchRadius:(float)patchRadius
{
  v10 = *&divisions;
  v13 = asset;
  if (v10 > 0)
  {
    if ((interiorShells & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v27 = MEMORY[0x277CBEAD8];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v27, v31, @"ModelIOException", @"[%@ %@]: interiorShells must be greater or equal to 0", v36, v37, v38, v39, v32, v33, v34, v35, v29, v30);

    if ((exteriorShells & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = MEMORY[0x277CBEAD8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = NSStringFromSelector(a2);
  objc_msgSend_raise_format_(v14, v18, @"ModelIOException", @"[%@ %@]: divisions must be greater than 0", v23, v24, v25, v26, v19, v20, v21, v22, v16, v17);

  if (interiorShells < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((exteriorShells & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  v40 = MEMORY[0x277CBEAD8];
  v41 = objc_opt_class();
  v42 = NSStringFromClass(v41);
  v43 = NSStringFromSelector(a2);
  objc_msgSend_raise_format_(v40, v44, @"ModelIOException", @"[%@ %@]: exteriorShells must be greater or equal to 0", v49, v50, v51, v52, v45, v46, v47, v48, v42, v43);

LABEL_8:
  if (patchRadius < 0.0)
  {
    v53 = MEMORY[0x277CBEAD8];
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v56 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v53, v57, @"ModelIOException", @"[%@ %@]: patchRadius must be greater or equal to 0", v62, v63, v64, v65, v58, v59, v60, v61, v55, v56);
  }

  v66 = [MDLVoxelArray alloc];
  v67.n128_f32[0] = patchRadius;
  v76 = objc_msgSend_initWithAsset_divisions_patchRadius_(v66, v68, v13, v10, v67, v73, v74, v75, v69, v70, v71, v72);
  objc_msgSend_convertToSignedShellField(v76, v77, v78, v79, v84, v85, v86, v87, v80, v81, v82, v83);
  v97.n128_u64[0] = 0;
  v98.n128_u64[0] = 0;
  if (interiorShells >= 2)
  {
    voxelExtent = v76->_voxelExtent;
    v95.n128_f64[0] = (voxelExtent + voxelExtent);
    v96.n128_f64[0] = vcvtd_n_f64_u32(interiorShells - 1, 1uLL);
    v98.n128_f64[0] = v95.n128_f64[0] + v96.n128_f64[0] * voxelExtent;
    v98.n128_f32[0] = v98.n128_f64[0];
  }

  if (exteriorShells >= 2)
  {
    v100 = v76->_voxelExtent;
    v95.n128_f64[0] = (v100 + v100);
    v96.n128_f64[0] = vcvtd_n_f64_u32(exteriorShells - 1, 1uLL);
    v97.n128_f64[0] = v95.n128_f64[0] + v96.n128_f64[0] * v100;
    v97.n128_f32[0] = v97.n128_f64[0];
  }

  objc_msgSend_dilateNarrowBandInteriorWidthTo_AndExteriorWidthTo_(v76, v88, v89, v90, v98, v97, v95, v96, v91, v92, v93, v94);

  return v76;
}

- (MDLVoxelArray)initWithAsset:(MDLAsset *)asset divisions:(int)divisions interiorNBWidth:(float)interiorNBWidth exteriorNBWidth:(float)exteriorNBWidth patchRadius:(float)patchRadius
{
  v10 = *&divisions;
  v13 = asset;
  if (v10 <= 0)
  {
    v14 = MEMORY[0x277CBEAD8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v14, v18, @"ModelIOException", @"[%@ %@]: divisions must be greater than 0", v23, v24, v25, v26, v19, v20, v21, v22, v16, v17);
  }

  if (interiorNBWidth < 0.0)
  {
    v27 = MEMORY[0x277CBEAD8];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v27, v31, @"ModelIOException", @"[%@ %@]: interiorNBWidth must be greater or equal to 0", v36, v37, v38, v39, v32, v33, v34, v35, v29, v30);
  }

  if (exteriorNBWidth < 0.0)
  {
    v40 = MEMORY[0x277CBEAD8];
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v43 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v40, v44, @"ModelIOException", @"[%@ %@]: exteriorNBWidth must be greater or equal to 0", v49, v50, v51, v52, v45, v46, v47, v48, v42, v43);
  }

  if (patchRadius < 0.0)
  {
    v53 = MEMORY[0x277CBEAD8];
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    v56 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v53, v57, @"ModelIOException", @"[%@ %@]: patchRadius must be greater or equal to 0", v62, v63, v64, v65, v58, v59, v60, v61, v55, v56);
  }

  v66 = [MDLVoxelArray alloc];
  v67.n128_f32[0] = patchRadius;
  v76 = objc_msgSend_initWithAsset_divisions_patchRadius_(v66, v68, v13, v10, v67, v73, v74, v75, v69, v70, v71, v72);
  objc_msgSend_convertToSignedShellField(v76, v77, v78, v79, v84, v85, v86, v87, v80, v81, v82, v83);
  v88.n128_f32[0] = interiorNBWidth;
  v89.n128_f32[0] = exteriorNBWidth;
  objc_msgSend_dilateNarrowBandInteriorWidthTo_AndExteriorWidthTo_(v76, v90, v91, v92, v88, v89, v97, v98, v93, v94, v95, v96);

  return v76;
}

- (void)setVoxelsForMesh:(MDLMesh *)mesh divisions:(int)divisions interiorShells:(int)interiorShells exteriorShells:(int)exteriorShells patchRadius:(float)patchRadius
{
  v10 = *&divisions;
  v98 = mesh;
  if (v10 > 0)
  {
    if ((interiorShells & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v35 = MEMORY[0x277CBEAD8];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v35, v39, @"ModelIOException", @"[%@ %@]: interiorShells must be greater or equal to 0", v44, v45, v46, v47, v40, v41, v42, v43, v37, v38);

    if ((exteriorShells & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v22 = MEMORY[0x277CBEAD8];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v25 = NSStringFromSelector(a2);
  objc_msgSend_raise_format_(v22, v26, @"ModelIOException", @"[%@ %@]: divisions must be greater than 0", v31, v32, v33, v34, v27, v28, v29, v30, v24, v25);

  if (interiorShells < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((exteriorShells & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  v48 = MEMORY[0x277CBEAD8];
  v49 = objc_opt_class();
  v50 = NSStringFromClass(v49);
  v51 = NSStringFromSelector(a2);
  objc_msgSend_raise_format_(v48, v52, @"ModelIOException", @"[%@ %@]: exteriorShells must be greater or equal to 0", v57, v58, v59, v60, v53, v54, v55, v56, v50, v51);

LABEL_8:
  if (patchRadius < 0.0)
  {
    v61 = MEMORY[0x277CBEAD8];
    v62 = objc_opt_class();
    v63 = NSStringFromClass(v62);
    v64 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v61, v65, @"ModelIOException", @"[%@ %@]: patchRadius must be greater or equal to 0", v70, v71, v72, v73, v66, v67, v68, v69, v63, v64);
  }

  if (v98)
  {
    v18.n128_f32[0] = patchRadius;
    objc_msgSend_setVoxelsForMesh_divisions_patchRadius_(self, v13, v98, v10, v18, v19, v20, v21, v14, v15, v16, v17);
    objc_msgSend_convertToSignedShellField(self, v74, v75, v76, v81, v82, v83, v84, v77, v78, v79, v80);
    v94.n128_u64[0] = 0;
    v95.n128_u64[0] = 0;
    if (interiorShells >= 2)
    {
      voxelExtent = self->_voxelExtent;
      v92.n128_f64[0] = (voxelExtent + voxelExtent);
      v93.n128_f64[0] = vcvtd_n_f64_u32(interiorShells - 1, 1uLL);
      v95.n128_f64[0] = v92.n128_f64[0] + v93.n128_f64[0] * voxelExtent;
      v95.n128_f32[0] = v95.n128_f64[0];
    }

    if (exteriorShells >= 2)
    {
      v97 = self->_voxelExtent;
      v92.n128_f64[0] = (v97 + v97);
      v93.n128_f64[0] = vcvtd_n_f64_u32(exteriorShells - 1, 1uLL);
      v94.n128_f64[0] = v92.n128_f64[0] + v93.n128_f64[0] * v97;
      v94.n128_f32[0] = v94.n128_f64[0];
    }

    objc_msgSend_dilateNarrowBandInteriorWidthTo_AndExteriorWidthTo_(self, v85, v86, v87, v95, v94, v92, v93, v88, v89, v90, v91);
  }

  MEMORY[0x2821F9730]();
}

- (void)setVoxelsForMesh:(MDLMesh *)mesh divisions:(int)divisions interiorNBWidth:(float)interiorNBWidth exteriorNBWidth:(float)exteriorNBWidth patchRadius:(float)patchRadius
{
  v10 = *&divisions;
  v96 = mesh;
  if (v10 <= 0)
  {
    v22 = MEMORY[0x277CBEAD8];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v22, v26, @"ModelIOException", @"[%@ %@]: divisions must be greater than 0", v31, v32, v33, v34, v27, v28, v29, v30, v24, v25);
  }

  if (interiorNBWidth < 0.0)
  {
    v35 = MEMORY[0x277CBEAD8];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v35, v39, @"ModelIOException", @"[%@ %@]: interiorNBWidth must be greater or equal to 0", v44, v45, v46, v47, v40, v41, v42, v43, v37, v38);
  }

  if (exteriorNBWidth < 0.0)
  {
    v48 = MEMORY[0x277CBEAD8];
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    v51 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v48, v52, @"ModelIOException", @"[%@ %@]: exteriorNBWidth must be greater or equal to 0", v57, v58, v59, v60, v53, v54, v55, v56, v50, v51);
  }

  if (patchRadius < 0.0)
  {
    v61 = MEMORY[0x277CBEAD8];
    v62 = objc_opt_class();
    v63 = NSStringFromClass(v62);
    v64 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v61, v65, @"ModelIOException", @"[%@ %@]: patchRadius must be greater or equal to 0", v70, v71, v72, v73, v66, v67, v68, v69, v63, v64);
  }

  if (v96)
  {
    v18.n128_f32[0] = patchRadius;
    objc_msgSend_setVoxelsForMesh_divisions_patchRadius_(self, v13, v96, v10, v18, v19, v20, v21, v14, v15, v16, v17);
    objc_msgSend_convertToSignedShellField(self, v74, v75, v76, v81, v82, v83, v84, v77, v78, v79, v80);
    v85.n128_f32[0] = interiorNBWidth;
    v86.n128_f32[0] = exteriorNBWidth;
    objc_msgSend_dilateNarrowBandInteriorWidthTo_AndExteriorWidthTo_(self, v87, v88, v89, v85, v86, v94, v95, v90, v91, v92, v93);
  }
}

- (MDLVoxelIndexExtent)voxelIndexExtent
{
  v2 = *self->_anon_60;
  v3 = *&self->_anon_60[16];
  result.maximumExtent = v3;
  result.minimumExtent = v2;
  return result;
}

- (id).cxx_construct
{
  self->_voxels.__table_.__bucket_list_ = 0u;
  *&self->_voxels.__table_.__first_node_.__next_ = 0u;
  self->_voxels.__table_.__max_load_factor_ = 1.0;
  sub_239ED981C(&self->mortonCoder);
  self->_octreeData.__ptr_ = 0;
  return self;
}

@end