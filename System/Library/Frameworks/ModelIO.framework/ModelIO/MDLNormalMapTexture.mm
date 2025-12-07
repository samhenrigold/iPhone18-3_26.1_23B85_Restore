@interface MDLNormalMapTexture
- (MDLNormalMapTexture)initByGeneratingNormalMapWithTexture:(MDLTexture *)sourceTexture name:(NSString *)name smoothness:(float)smoothness contrast:(float)contrast;
- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector;
@end

@implementation MDLNormalMapTexture

- (id)generateDataAtLevel:(int64_t)level selector:(SEL)selector
{
  if (self->super._channelEncoding != 1)
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v13, v17, @"ModelIOException", @"[%@ %@]: Only 8 bit textures supported", v22, v23, v24, v25, v18, v19, v20, v21, v15, v16);
  }

  if (self->super._textureData.channelCount != 4)
  {
    v26 = MEMORY[0x277CBEAD8];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = NSStringFromSelector(selector);
    objc_msgSend_raise_format_(v26, v30, @"ModelIOException", @"[%@ %@]: Only 4 channel textures supported", v35, v36, v37, v38, v31, v32, v33, v34, v28, v29);
  }

  v8.n128_u32[0] = 0;
  v9.n128_u64[0] = *self->super._anon_118;
  v39 = v9;
  v39.n128_u32[0] = 1;
  v9.n128_u64[0] = vbsl_s8(vdup_lane_s32(vcgt_s32(v8.n128_u64[0], v9.n128_u64[0]), 0), v39.n128_u64[0], v9.n128_u64[0]);
  v40 = v9;
  v40.n128_u32[1] = 1;
  v8.n128_u64[0] = vbsl_s8(vdup_lane_s32(vcgt_s32(v8.n128_u64[0], vdup_lane_s32(v9.n128_u64[0], 1)), 0), v40.n128_u64[0], v9.n128_u64[0]);
  if (v8.n128_i32[0] >> level <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = v8.n128_i32[0] >> level;
  }

  if (v8.n128_i32[1] >> level <= 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = v8.n128_i32[1] >> level;
  }

  v43 = objc_msgSend_allocateDataAtLevel_(self, a2, level, selector, v8, v9, v40, v39, v4, v5, v6, v7);
  v44 = v43;
  v56 = objc_msgSend_mutableBytes(v44, v45, v46, v47, v52, v53, v54, v55, v48, v49, v50, v51);
  v68 = objc_msgSend_texelDataWithTopLeftOrigin(self->_sourceTexture, v57, v58, v59, v64, v65, v66, v67, v60, v61, v62, v63);
  v69 = v68;
  v81 = objc_msgSend_bytes(v69, v70, v71, v72, v77, v78, v79, v80, v73, v74, v75, v76);
  v93 = objc_msgSend_length(v43, v82, v83, v84, v89, v90, v91, v92, v85, v86, v87, v88);
  memcpy(v56, v81, v93);
  sub_239F72130(v41, v42, v56, *(&self->super._hasAlphaValues + 2), self->_smoothness);

  return v43;
}

- (MDLNormalMapTexture)initByGeneratingNormalMapWithTexture:(MDLTexture *)sourceTexture name:(NSString *)name smoothness:(float)smoothness contrast:(float)contrast
{
  v11 = sourceTexture;
  v12 = name;
  v30.receiver = self;
  v30.super_class = MDLNormalMapTexture;
  v20 = [(MDLTexture *)&v30 init];
  if (v20)
  {
    if (v12)
    {
      v25 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v13, v12, v15, v21, v22, v23, v24, v16, v17, v18, v19);
      v26 = v20->super._name;
      v20->super._name = v25;
    }

    objc_msgSend_dimensions(v11, v13, v14, v15, v21, v22, v23, v24, v16, v17, v18, v19);
    *v20->super._anon_118 = v27;
    *&v20->super._anon_118[8] = 4 * v27;
    v20->super._textureData.channelCount = 4;
    v20->super._channelEncoding = 1;
    *(&v20->super._hasAlphaValues + 2) = smoothness;
    v20->_smoothness = contrast;
    objc_storeStrong(&v20->_sourceTexture, sourceTexture);
    v20->super._selfCreating = 1;
    v28 = v20;
  }

  return v20;
}

@end