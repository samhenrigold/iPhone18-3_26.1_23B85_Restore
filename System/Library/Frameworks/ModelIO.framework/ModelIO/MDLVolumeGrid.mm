@interface MDLVolumeGrid
- (MDLVolumeGrid)initWithAsset:(id)asset divisions:(int)divisions;
- (MDLVolumeGrid)initWithObject:(id)object divisions:(int)divisions;
- (id)meshWithStyle:(unint64_t)style;
- (unint64_t)trianglesIntersectingRayWithOrigin:(MDLVolumeGrid *)self direction:(SEL)direction count:(unint64_t *)count;
@end

@implementation MDLVolumeGrid

- (MDLVolumeGrid)initWithObject:(id)object divisions:(int)divisions
{
  objectCopy = object;
  v7.receiver = self;
  v7.super_class = MDLVolumeGrid;
  if ([(MDLVolumeGrid *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (MDLVolumeGrid)initWithAsset:(id)asset divisions:(int)divisions
{
  assetCopy = asset;
  v7.receiver = self;
  v7.super_class = MDLVolumeGrid;
  if ([(MDLVolumeGrid *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (id)meshWithStyle:(unint64_t)style
{
  ptr = self->_octree.__ptr_;
  if (ptr)
  {
    ptr = sub_239EBFBE4(ptr, *(ptr + 144), style == 2, style == 1);
    v3 = vars8;
  }

  return ptr;
}

- (unint64_t)trianglesIntersectingRayWithOrigin:(MDLVolumeGrid *)self direction:(SEL)direction count:(unint64_t *)count
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = vmulq_f32(v4, v4);
  v6 = vaddv_f32(*v5.f32) + v5.f32[2];
  if (v6 <= 0.00000011921)
  {
    return 0;
  }

  v26 = 0u;
  v27 = 0u;
  v28 = 1065353216;
  memset(v29, 0, sizeof(v29));
  LODWORD(v29[0]) = 2139095039;
  v23 = 0;
  v25 = 0;
  v17 = _Q0;
  v18 = vmulq_n_f32(v4, 1.0 / v6);
  __asm { FMOV            V0.2S, #1.0 }

  *&_Q0 = vdiv_f32(*&_Q0, *v18.f32);
  *(&_Q0 + 2) = 1.0 / v18.f32[2];
  v19 = _Q0;
  v20 = *&_Q0 < 0.0;
  v21 = *(&_Q0 + 1) < 0.0;
  v22 = (1.0 / v18.f32[2]) < 0.0;
  v24 = 0x7F7FFFFF3C800000;
  sub_239EBFA9C(self->_octree.__ptr_, &v17, v29, &v26);
  v12 = malloc_type_malloc(8 * *(&v27 + 1), 0x100004000313F17uLL);
  v13 = v12;
  v14 = v27;
  if (v27)
  {
    v15 = 0;
    do
    {
      v12[v15++] = *(v14 + 16);
      v14 = *v14;
    }

    while (v14);
    v14 = v15;
  }

  *count = v14;
  sub_239E7B644(&v26);
  return v13;
}

@end