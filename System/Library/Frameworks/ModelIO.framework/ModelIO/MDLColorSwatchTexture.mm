@interface MDLColorSwatchTexture
- (MDLColorSwatchTexture)initWithColorGradientFrom:(CGColorRef)color1 toColor:(CGColorRef)color2 name:(NSString *)name textureDimensions:(vector_int2)textureDimensions;
- (MDLColorSwatchTexture)initWithColorTemperatureGradientFrom:(float)colorTemperature1 toColorTemperature:(float)colorTemperature2 name:(NSString *)name textureDimensions:(vector_int2)textureDimensions;
- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector;
@end

@implementation MDLColorSwatchTexture

- (MDLColorSwatchTexture)initWithColorTemperatureGradientFrom:(float)colorTemperature1 toColorTemperature:(float)colorTemperature2 name:(NSString *)name textureDimensions:(vector_int2)textureDimensions
{
  v9 = name;
  v26.receiver = self;
  v26.super_class = MDLColorSwatchTexture;
  v16 = [(MDLTexture *)&v26 init];
  if (v16)
  {
    if (v9)
    {
      v21 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v10, v9, v11, v17, v18, v19, v20, v12, v13, v14, v15);
      v22 = v16->super._name;
      v16->super._name = v21;
    }

    *v16->super._anon_118 = textureDimensions;
    *&v16->super._anon_118[8] = 4 * textureDimensions.i32[0];
    v16->super._textureData.channelCount = 4;
    *(&v16->super._hasAlphaValues + 2) = colorTemperature1;
    v16->_colorTemperature1 = colorTemperature2;
    v16->super._channelEncoding = 1;
    v16->_type = 0;
    v16->super._selfCreating = 1;
    v23 = v16;
  }

  return v16;
}

- (MDLColorSwatchTexture)initWithColorGradientFrom:(CGColorRef)color1 toColor:(CGColorRef)color2 name:(NSString *)name textureDimensions:(vector_int2)textureDimensions
{
  v9 = name;
  v26.receiver = self;
  v26.super_class = MDLColorSwatchTexture;
  v16 = [(MDLTexture *)&v26 init];
  if (v16)
  {
    if (v9)
    {
      v21 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v10, v9, v11, v17, v18, v19, v20, v12, v13, v14, v15);
      v22 = v16->super._name;
      v16->super._name = v21;
    }

    *v16->super._anon_118 = textureDimensions;
    *&v16->super._anon_118[8] = 4 * textureDimensions.i32[0];
    v16->super._textureData.channelCount = 4;
    v16->_color1 = color1;
    v16->_color2 = color2;
    v16->super._channelEncoding = 1;
    v16->_type = 1;
    v16->super._selfCreating = 1;
    v23 = v16;
  }

  return v16;
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
  v95 = v8.n128_u64[0];
  v41 = objc_msgSend_allocateDataAtLevel_(self, a2, level, selector, v8, v9, v10, v11, v4, v5, v6, v7);
  v42 = v41;
  v54 = objc_msgSend_mutableBytes(v42, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);
  v57.i32[0] = 0;
  v58.i32[1] = v95.i32[1];
  v58.i32[0] = 1;
  v59 = vbsl_s8(vdup_lane_s32(vcgt_s32(v57, v95), 0), v58, v95);
  v60 = v59.u32[0] | 0x100000000;
  v61 = vbsl_s8(vdup_lane_s32(vcgt_s32(v57, vdup_lane_s32(v59, 1)), 0), v60, v59);
  v62 = v61.i32[0] >> level;
  if (v61.i32[1] >> level <= 1)
  {
    v63 = 1;
  }

  else
  {
    v63 = (v61.i32[1] >> level);
  }

  if (v62 <= 1)
  {
    v64 = 1;
  }

  else
  {
    v64 = v62;
  }

  v61.i32[0] = 1.0;
  v65 = 1.0 / v63;
  v66 = (4 * v64);
  if (self->_type)
  {
    color1 = self->_color1;
    if (color1 && self->_color2)
    {
      *v68.f32 = sub_239E84A8C(color1);
      v96 = v68;
      *v69.f32 = sub_239E84A8C(self->_color2);
      v94 = v69;
      v73 = 0;
      v93 = vdupq_n_s32(0x437F0000u);
      do
      {
        v74 = v65 * v73;
        v70.n64_f32[0] = 1.0 - v74;
        *v75.i64 = sub_239E84C14(vmlaq_n_f32(vmulq_n_f32(v96, v74), v94, 1.0 - v74), v70.n64_f64[0], *v94.i64, *v96.i64, v71.n64_f64[0], v72);
        v75.i32[3] = 1.0;
        v70.n64_u32[1] = v93.u32[1];
        *v75.f32 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v75, v93)));
        v76 = vuzp1_s8(*v75.f32, *v75.f32).u32[0];
        v77 = v64;
        v78 = v54;
        do
        {
          *v78++ = v76;
          --v77;
        }

        while (v77);
        ++v73;
        v54 += v66;
      }

      while (v73 != v63);
    }

    else
    {
      v79 = 0;
      v61.i32[0] = 1.0;
      v80 = vdupq_n_s32(0x437F0000u);
      do
      {
        *&v60 = v65 * v79;
        v81 = vdupq_lane_s32(v60, 0);
        v81.i32[3] = 1.0;
        v60 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_f32(v81, v80))), v61);
        v82 = v64;
        v83 = v54;
        do
        {
          *v83++ = v60;
          --v82;
        }

        while (v82);
        ++v79;
        v54 += v66;
      }

      while (v79 != v63);
    }
  }

  else
  {
    v84 = 0;
    v85 = vdupq_n_s32(0x437F0000u);
    v55.i32[0] = 1170939904;
    do
    {
      v56.f32[0] = self->_colorTemperature1 + ((v65 * v84) * (*(&self->super._hasAlphaValues + 2) - self->_colorTemperature1));
      v86.i64[0] = 0;
      v86.i32[2] = 0;
      if (v56.f32[0] >= 1000.0 && v56.f32[0] <= 40000.0)
      {
        v87 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v55, v56)), 0);
        v88 = vaddq_f32(vdivq_f32(vbslq_s8(v87, xmmword_239F9B9E0, xmmword_239F9B9D0), vaddq_f32(vbslq_s8(v87, xmmword_239F9BA00, xmmword_239F9B9F0), vdupq_lane_s32(*v56.f32, 0))), vbslq_s8(v87, xmmword_239F9B9C0, xmmword_239F9B9B0));
        v88.i32[3] = 0;
        v89 = vmaxnmq_f32(v88, 0);
        v89.i32[3] = 0;
        v86 = vminnmq_f32(v89, xmmword_239F9BA10);
      }

      v86.i32[3] = 1.0;
      v56 = vcvtq_s32_f32(vmulq_f32(v86, v85));
      *v56.f32 = vuzp1_s8(vmovn_s32(v56), v61);
      v90 = v64;
      v91 = v54;
      do
      {
        *v91++ = v56.i32[0];
        --v90;
      }

      while (v90);
      ++v84;
      v54 += v66;
    }

    while (v84 != v63);
  }

  return v41;
}

@end