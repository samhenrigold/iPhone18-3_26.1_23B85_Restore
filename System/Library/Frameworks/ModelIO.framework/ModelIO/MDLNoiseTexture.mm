@interface MDLNoiseTexture
- (MDLNoiseTexture)initCellularNoiseWithFrequency:(float)frequency name:(NSString *)name textureDimensions:(vector_int2)textureDimensions channelEncoding:(MDLTextureChannelEncoding)channelEncoding;
- (MDLNoiseTexture)initScalarNoiseWithSmoothness:(float)smoothness name:(NSString *)name textureDimensions:(vector_int2)textureDimensions channelCount:(int)channelCount channelEncoding:(MDLTextureChannelEncoding)channelEncoding grayscale:(BOOL)grayscale;
- (MDLNoiseTexture)initVectorNoiseWithSmoothness:(float)smoothness name:(NSString *)name textureDimensions:(vector_int2)textureDimensions channelEncoding:(MDLTextureChannelEncoding)channelEncoding;
- (id)_generateCellularNoiseAtLevel:(int64_t)level selector:(SEL)selector;
- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector;
@end

@implementation MDLNoiseTexture

- (id)_generateCellularNoiseAtLevel:(int64_t)level selector:(SEL)selector
{
  if (self->super._textureData.channelCount != 1)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v15, v19, @"ModelIOException", @"[%@ %@]: Only single channel textures supported for cellular noise", v24, v25, v26, v27, v20, v21, v22, v23, v17, v18);
  }

  v8.n128_u64[0] = *self->super._anon_118;
  v72 = v8.n128_u64[0];
  smoothness = self->_smoothness;
  v29 = objc_msgSend_allocateDataAtLevel_(self, a2, level, selector, v8, v9, v10, v11, v4, v5, v6, v7);
  v30 = v29;
  v42 = objc_msgSend_mutableBytes(v30, v31, v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  v43.i32[0] = 0;
  v44.i32[1] = v72.i32[1];
  v44.i32[0] = 1;
  v45 = vbsl_s8(vdup_lane_s32(vcgt_s32(v43, v72), 0), v44, v72);
  v46 = vbsl_s8(vdup_lane_s32(vcgt_s32(v43, vdup_lane_s32(v45, 1)), 0), (v45.u32[0] | 0x100000000), v45);
  v47 = v46.i32[1] >> level;
  if (v46.i32[0] >> level <= 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = (v46.i32[0] >> level);
  }

  v73 = smoothness * (1 << level);
  channelCount = self->super._textureData.channelCount;
  v50 = sub_239F6B868(self->super._channelEncoding);
  v52 = 0;
  if (v47 <= 1)
  {
    v53 = 1;
  }

  else
  {
    v53 = v47;
  }

  do
  {
    v54 = 0;
    do
    {
      *&v55 = v54;
      *(&v55 + 1) = v52;
      v56 = vmulq_n_f32(v55, v73);
      v57 = vcvtms_s32_f32(v56.f32[2]);
      *v59.f32 = vrndm_f32(*v56.f32);
      v58 = vcvt_s32_f32(*v59.f32);
      v59.i64[1] = COERCE_UNSIGNED_INT(floorf(v56.f32[2]));
      v60 = -1;
      v61 = 3.4028e38;
      do
      {
        for (i = -1; i != 2; ++i)
        {
          for (j = -1; j != 2; ++j)
          {
            v64 = 12345 - 131238505 * ((16777619 * ((i + v58.i32[1]) ^ (16777619 * ((v60 + v58.i32[0]) ^ 0x811C9DC5)))) ^ (v57 + j));
            v65 = v64;
            v66 = 1103515245 * v64 + 12345;
            v51.f32[0] = v60 + (v65 * 2.3283e-10);
            v51.f32[1] = i + (v66 * 2.3283e-10);
            v51.f32[2] = j + ((1103515245 * v66 + 12345) * 2.3283e-10);
            v67 = vsubq_f32(v56, vaddq_f32(v59, v51));
            v51 = vmulq_f32(v67, v67);
            v68 = vaddv_f32(*v51.f32);
            if ((v68 + v51.f32[2]) < v61)
            {
              v61 = v68 + v51.f32[2];
            }
          }
        }

        ++v60;
      }

      while (v60 != 2);
      v69 = sqrtf(v61);
      if (v69 > 1.0)
      {
        v69 = 1.0;
      }

      v70 = v69 * 255.0;
      if (v70 > 255.0)
      {
        v70 = 255.0;
      }

      if (v70 < 0.0)
      {
        v70 = 0.0;
      }

      *(v42 + channelCount * v48 * (v50 / 8) * v52 + v54++) = v70;
    }

    while (v54 != v48);
    ++v52;
  }

  while (v52 != v53);

  return v29;
}

- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector
{
  if (!*&self->_grayScale)
  {
    v42 = objc_msgSend__generateCellularNoiseAtLevel_selector_(self, a2, level, selector, v8, v9, v10, v11, v4, v5, v6, v7);
    goto LABEL_41;
  }

  if (self->super._channelEncoding != 1)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v15, v19, @"ModelIOException", @"[%@ %@]: Only 8 bit textures supported", v24, v25, v26, v27, v20, v21, v22, v23, v17, v18);
  }

  channelCount = self->super._textureData.channelCount;
  if (*(&self->super._hasAlphaValues + 1))
  {
    if (channelCount == 4)
    {
      goto LABEL_14;
    }

    v29 = MEMORY[0x277CBEAD8];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v29, v33, @"ModelIOException", @"[%@ %@]: Only 4 channel textures supported for vector noise", v38, v39, v40, v41, v34, v35, v36, v37, v31, v32);
    goto LABEL_13;
  }

  if (channelCount != 1 && channelCount != 4)
  {
    v44 = MEMORY[0x277CBEAD8];
    v45 = objc_opt_class();
    v31 = NSStringFromClass(v45);
    v32 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v44, v46, @"ModelIOException", @"[%@ %@]: Only 1 and 4 channel textures supported for scalar noise", v51, v52, v53, v54, v47, v48, v49, v50, v31, v32);
LABEL_13:
  }

LABEL_14:
  v8.n128_u32[0] = 0;
  v9.n128_u64[0] = *self->super._anon_118;
  v55 = v9;
  v55.n128_u32[0] = 1;
  v9.n128_u64[0] = vbsl_s8(vdup_lane_s32(vcgt_s32(v8.n128_u64[0], v9.n128_u64[0]), 0), v55.n128_u64[0], v9.n128_u64[0]);
  v56 = v9;
  v56.n128_u32[1] = 1;
  v8.n128_u64[0] = vbsl_s8(vdup_lane_s32(vcgt_s32(v8.n128_u64[0], vdup_lane_s32(v9.n128_u64[0], 1)), 0), v56.n128_u64[0], v9.n128_u64[0]);
  v111 = v8.n128_i32[1];
  if (v8.n128_i32[0] >> level <= 1)
  {
    v57 = 1;
  }

  else
  {
    v57 = (v8.n128_i32[0] >> level);
  }

  v42 = objc_msgSend_allocateDataAtLevel_(self, a2, level, selector, v8, v9, v56, v55, v4, v5, v6, v7);
  v58 = v42;
  v70 = objc_msgSend_mutableBytes(v58, v59, v60, v61, v66, v67, v68, v69, v62, v63, v64, v65);
  v71 = v111 >> level;
  v72 = (1 << level);
  if (*(&self->super._hasAlphaValues + 1))
  {
    v73 = __exp10(((*(&self->super._hasAlphaValues + 2) * -2.0) + 3.0));
    v74 = 0;
    v75 = 0;
    *&v73 = v73;
    v76 = *&v73 * 0.00024414;
    v77 = v72 * 26.026;
    if (v71 <= 1)
    {
      v78 = 1;
    }

    else
    {
      v78 = v71;
    }

    do
    {
      v79 = 0;
      v80 = v74;
      do
      {
        v113[0] = 0;
        v112 = 0.0;
        v81 = sub_239E84CE8(v113 + 1, v113, &v112, v76 * v79, v76 * v75, 0.0, 0.0);
        *(v70 + v80) = ((v77 * *(v113 + 1)) + 127.5);
        *(v70 + v80 + 1) = ((v77 * *v113) + 127.5);
        *(v70 + v80 + 2) = ((v77 * v112) + 127.5);
        *(v70 + v80 + 3) = ((v81 * 127.5) + 127.5);
        ++v79;
        v80 += 4;
      }

      while (v57 != v79);
      ++v75;
      v74 += 4 * v57;
    }

    while (v75 != v78);
  }

  else
  {
    v82 = v72;
    v83 = *(&self->super._hasAlphaValues + 2);
    if (v71 <= 1)
    {
      v84 = 1;
    }

    else
    {
      v84 = v71;
    }

    if (self->super._textureData.channelCount == 4)
    {
      v106 = v42;
      v85 = 0;
      v86 = 0;
      v87 = __exp10(((v83 * -2.0) + 3.0)) * v82;
      v89 = v87 * 0.00024414;
      v110 = vdupq_n_s32(0x42FF0000u);
      do
      {
        v90 = 0;
        v91 = v89 * v86;
        v92 = v85;
        do
        {
          v93 = v89 * v90;
          v88.f32[0] = v89 * v86;
          v88.i32[0] = sub_239F3883C(v93, *v88.i64);
          if (self->_vectorNoise)
          {
            v94 = 1.0;
            v95 = v88.i32[0];
            v96 = v88.f32[0];
          }

          else
          {
            v109 = v88.i32[0];
            v88.f32[0] = v91 + 1234.0;
            v108 = sub_239F3883C(v93 + 1337.0, *v88.i64);
            *&v97 = v91 + 11100.0;
            v107 = sub_239F3883C(v93 + -853.0, v97);
            *&v98 = v91 + -8732.0;
            v94 = sub_239F3883C(v93 + 611.0, v98);
            v95 = LODWORD(v108);
            v88.i32[0] = v109;
            v96 = v107;
          }

          v88.i32[1] = v95;
          v88.i64[1] = __PAIR64__(LODWORD(v94), LODWORD(v96));
          v99 = vmlaq_f32(v110, v110, v88);
          *(v70 + v92) = v99.f32[0];
          *(v70 + v92 + 1) = v99.f32[1];
          *(v70 + v92 + 2) = v99.f32[2];
          *(v70 + v92 + 3) = v99.f32[3];
          ++v90;
          v92 += 4;
        }

        while (v57 != v90);
        ++v86;
        v85 += 4 * v57;
      }

      while (v86 != v84);
      v42 = v106;
    }

    else
    {
      v100 = 0;
      v101 = __exp10(((v83 * -2.0) + 3.0)) * v82;
      v103 = v101 * 0.00024414;
      do
      {
        v104 = 0;
        do
        {
          *&v102 = v103 * v100;
          *(v70 + v104) = ((sub_239F3883C(v103 * v104, v102) * 127.5) + 127.5);
          ++v104;
        }

        while (v57 != v104);
        ++v100;
        v70 += v57;
      }

      while (v100 != v84);
    }
  }

LABEL_41:

  return v42;
}

- (MDLNoiseTexture)initVectorNoiseWithSmoothness:(float)smoothness name:(NSString *)name textureDimensions:(vector_int2)textureDimensions channelEncoding:(MDLTextureChannelEncoding)channelEncoding
{
  v6 = channelEncoding;
  v9 = name;
  v26.receiver = self;
  v26.super_class = MDLNoiseTexture;
  v16 = [(MDLTexture *)&v26 init];
  if (v16)
  {
    if (v9)
    {
      v21 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v10, v9, v11, v17, v18, v19, v20, v12, v13, v14, v15);
    }

    else
    {
      v21 = &stru_284D18478;
    }

    v22 = v16->super._name;
    v16->super._name = &v21->isa;

    *v16->super._anon_118 = textureDimensions;
    v16->super._textureData.channelCount = 4;
    v16->super._channelEncoding = 1;
    *&v16->super._anon_118[8] = (v6 & 0xF) * (4 * textureDimensions.i32[0]);
    *(&v16->super._hasAlphaValues + 1) = 1;
    *(&v16->super._hasAlphaValues + 2) = smoothness;
    v16->super._selfCreating = 1;
    v16->_vectorNoise = 0;
    *&v16->_grayScale = 1;
    v23 = v16;
  }

  return v16;
}

- (MDLNoiseTexture)initScalarNoiseWithSmoothness:(float)smoothness name:(NSString *)name textureDimensions:(vector_int2)textureDimensions channelCount:(int)channelCount channelEncoding:(MDLTextureChannelEncoding)channelEncoding grayscale:(BOOL)grayscale
{
  v9 = channelEncoding;
  v13 = name;
  v30.receiver = self;
  v30.super_class = MDLNoiseTexture;
  v20 = [(MDLTexture *)&v30 init];
  if (v20)
  {
    if (v13)
    {
      v25 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v14, v13, v15, v21, v22, v23, v24, v16, v17, v18, v19);
    }

    else
    {
      v25 = &stru_284D18478;
    }

    v26 = v20->super._name;
    v20->super._name = &v25->isa;

    *v20->super._anon_118 = textureDimensions;
    v20->super._textureData.channelCount = channelCount;
    v20->super._channelEncoding = 1;
    *&v20->super._anon_118[8] = (v9 & 0xF) * (textureDimensions.i32[0] * channelCount);
    *(&v20->super._hasAlphaValues + 1) = 0;
    *(&v20->super._hasAlphaValues + 2) = smoothness;
    v20->super._selfCreating = 1;
    v20->_vectorNoise = grayscale;
    *&v20->_grayScale = 1;
    v27 = v20;
  }

  return v20;
}

- (MDLNoiseTexture)initCellularNoiseWithFrequency:(float)frequency name:(NSString *)name textureDimensions:(vector_int2)textureDimensions channelEncoding:(MDLTextureChannelEncoding)channelEncoding
{
  v6 = channelEncoding;
  v9 = name;
  v27.receiver = self;
  v27.super_class = MDLNoiseTexture;
  v10 = [(MDLTexture *)&v27 init];
  v21 = v10;
  if (v10)
  {
    v10->_smoothness = frequency;
    if (v9)
    {
      v22 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v11, v9, v12, v17, v18, v19, v20, v13, v14, v15, v16);
    }

    else
    {
      v22 = &stru_284D18478;
    }

    v23 = v21->super._name;
    v21->super._name = &v22->isa;

    *v21->super._anon_118 = textureDimensions;
    v21->super._textureData.channelCount = 1;
    v21->super._channelEncoding = 1;
    *&v21->super._anon_118[8] = (v6 & 0xF) * textureDimensions.i32[0];
    *(&v21->super._hasAlphaValues + 1) = 0;
    *(&v21->super._hasAlphaValues + 2) = 0;
    v21->super._selfCreating = 1;
    v21->_vectorNoise = 1;
    *&v21->_grayScale = 0;
    v24 = v21;
  }

  return v21;
}

@end