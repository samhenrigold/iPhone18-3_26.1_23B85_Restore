@interface MDLCheckerboardTexture
- (MDLCheckerboardTexture)initWithDivisions:(float)divisions name:(NSString *)name dimensions:(vector_int2)dimensions channelCount:(int)channelCount channelEncoding:(MDLTextureChannelEncoding)channelEncoding color1:(CGColorRef)color1 color2:(CGColorRef)color2;
- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector;
- (void)dealloc;
- (void)setColor1:(CGColorRef)color1;
- (void)setColor2:(CGColorRef)color2;
- (void)setDivisions:(float)divisions;
@end

@implementation MDLCheckerboardTexture

- (void)dealloc
{
  v3 = *&self->_divisions;
  if (v3)
  {
    CFRelease(v3);
  }

  color1 = self->_color1;
  if (color1)
  {
    CFRelease(color1);
  }

  v5.receiver = self;
  v5.super_class = MDLCheckerboardTexture;
  [(MDLCheckerboardTexture *)&v5 dealloc];
}

- (void)setDivisions:(float)divisions
{
  if (*(&self->super._hasAlphaValues + 2) != divisions)
  {
    *(&self->super._hasAlphaValues + 2) = divisions;
  }
}

- (void)setColor1:(CGColorRef)color1
{
  if (color1)
  {
    objc_msgSend_clearTexelData(self, a2, color1, v3, v8, v9, v10, v11, v4, v5, v6, v7);
    v14 = *&self->_divisions;
    if (v14)
    {
      CGColorRelease(v14);
    }

    *&self->_divisions = CGColorCreateCopy(color1);
  }
}

- (void)setColor2:(CGColorRef)color2
{
  if (color2)
  {
    objc_msgSend_clearTexelData(self, a2, color2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
    color1 = self->_color1;
    if (color1)
    {
      CGColorRelease(color1);
    }

    self->_color1 = CGColorCreateCopy(color2);
  }
}

- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector
{
  if (self->super._channelEncoding != 1)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v15, v19, @"ModelIOException", @"[%@ %@]: Only 8 bit textures supported", v24, v25, v26, v27, v20, v21, v22, v23, v17, v18);
  }

  if (self->super._textureData.channelCount != 4)
  {
    v28 = MEMORY[0x277CBEAD8];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v28, v32, @"ModelIOException", @"[%@ %@]: Only 4 channel textures supported", v37, v38, v39, v40, v33, v34, v35, v36, v30, v31);
  }

  v8.n128_u64[0] = *self->super._anon_118;
  v83 = v8.n128_u64[0];
  v41 = objc_msgSend_allocateDataAtLevel_(self, a2, level, selector, v8, v9, v10, v11, v4, v5, v6, v7);
  v42 = v41;
  v54 = objc_msgSend_mutableBytes(v42, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);
  Components = CGColorGetComponents(*&self->_divisions);
  v56 = CGColorGetComponents(self->_color1);
  v58.i32[0] = 0;
  v59.i32[0] = 0;
  v60 = 0;
  v61.i32[1] = v83.i32[1];
  v61.i32[0] = 1;
  v62 = vbsl_s8(vdup_lane_s32(vcgt_s32(v58, v83), 0), v61, v83);
  v63 = vmax_s32(vshl_s32(vbsl_s8(vdup_lane_s32(vcgt_s32(v58, vdup_lane_s32(v62, 1)), 0), (v62.u32[0] | 0x100000000), v62), vneg_s32(vdup_n_s32(level))), 0x100000001);
  v65 = *Components;
  v64 = *(Components + 2);
  v67 = *v56;
  v66 = *(v56 + 2);
  v68 = vcvt_f32_u32(v63);
  v69 = v63.u32[0];
  v70 = (4 * v63.i32[0]);
  v71 = vdupq_n_s32(0x437F0000u);
  v72 = v63.u32[1];
  __asm { FMOV            V6.2S, #1.0 }

  v78 = vdiv_f32(_D6, v68);
  v79.i64[0] = 0x100000001;
  v79.i64[1] = 0x100000001;
  do
  {
    v80 = 0;
    do
    {
      *v57.i32 = v80;
      *&v57.i32[1] = v60;
      *v57.i8 = vcvt_s32_f32(vmul_f32(vmul_n_f32(*v57.i8, *(&self->super._hasAlphaValues + 2)), v78));
      *v57.i8 = vadd_s32(vdup_lane_s32(*v57.i8, 1), *v57.i8);
      v81 = vdupq_lane_s32(*&vceqq_s32(vandq_s8(v57, v79), v59), 0);
      v57 = vcvtq_s32_f32(vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vbslq_s8(v81, v67, v65)), vbslq_s8(v81, v66, v64)), v71));
      *(v54 + 4 * v80++) = vuzp1_s8(vmovn_s32(v57), *v59.i8).u32[0];
    }

    while (v69 != v80);
    ++v60;
    v54 += v70;
  }

  while (v60 != v72);

  return v41;
}

- (MDLCheckerboardTexture)initWithDivisions:(float)divisions name:(NSString *)name dimensions:(vector_int2)dimensions channelCount:(int)channelCount channelEncoding:(MDLTextureChannelEncoding)channelEncoding color1:(CGColorRef)color1 color2:(CGColorRef)color2
{
  v16 = name;
  v32.receiver = self;
  v32.super_class = MDLCheckerboardTexture;
  v23 = [(MDLTexture *)&v32 init];
  if (v23)
  {
    if (v16)
    {
      v28 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v17, v16, v18, v24, v25, v26, v27, v19, v20, v21, v22);
      v29 = v23->super._name;
      v23->super._name = v28;
    }

    *v23->super._anon_118 = dimensions;
    *(&v23->super._hasAlphaValues + 2) = divisions;
    *&v23->_divisions = CGColorCreateCopy(color1);
    v23->_color1 = CGColorCreateCopy(color2);
    *&v23->super._anon_118[8] = (4 * *v23->super._anon_118);
    v23->super._textureData.channelCount = channelCount;
    v23->super._channelEncoding = channelEncoding;
    v23->super._selfCreating = 1;
    v30 = v23;
  }

  return v23;
}

@end