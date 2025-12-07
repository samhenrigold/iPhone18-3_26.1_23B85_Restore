@interface TSCH3DLabelResource
+ (id)resourceWithLabelAttributes:(id)attributes;
- (BOOL)isEqual:(id)equal;
- (TSCH3DLabelResource)init;
- (TSCH3DLabelResource)initWithLabelAttributes:(id)attributes;
- (id).cxx_construct;
- (id)get;
- (tvec2<float>)bitmapLabelRenderOffset;
- (tvec2<float>)labelRenderOffset;
- (tvec2<float>)labelSize;
- (tvec2<float>)tightSize;
- (tvec2<int>)labelSizeWithSamples:(double)samples;
- (tvec2<int>)p_clampedLabelSampledSizeReturningClampedRatio:(float *)ratio;
- (void)p_calculateSizeAndOffset;
- (void)setAttributes:(id)attributes;
- (void)setString:(id)string;
@end

@implementation TSCH3DLabelResource

+ (id)resourceWithLabelAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithLabelAttributes_(v5, v6, v7, v8, v9, attributesCopy);

  return v10;
}

- (TSCH3DLabelResource)initWithLabelAttributes:(id)attributes
{
  attributesCopy = attributes;
  v28.receiver = self;
  v28.super_class = TSCH3DLabelResource;
  v6 = [(TSCH3DResource *)&v28 initWithCaching:0];
  if (v6)
  {
    if (!attributesCopy)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DLabelResource initWithLabelAttributes:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 51, 0, "invalid nil value for '%{public}s'", "attributes");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    v25 = objc_msgSend_copy(attributesCopy, v5, v7, v8, v9);
    attributes = v6->_attributes;
    v6->_attributes = v25;
  }

  return v6;
}

- (TSCH3DLabelResource)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v2, v3, v4, a2);

  return 0;
}

- (void)setAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = self->_attributes;
  v41 = attributesCopy;
  if (v41 | v5)
  {
    isEqual = objc_msgSend_isEqual_(v5, v6, v7, v8, v9, v41);

    if ((isEqual & 1) == 0)
    {
      self->_sizeAndOffsetCalculated = 0;
      if (self->super._cached)
      {
        objc_msgSend_setChanged_(self, v11, v12, v13, v14, 1);
      }

      v15 = objc_msgSend_copy(v41, v11, v12, v13, v14);
      attributes = self->_attributes;
      self->_attributes = v15;

      v21 = objc_msgSend_paragraphStyle(self->_attributes, v17, v18, v19, v20);

      if (!v21)
      {
        v26 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "[TSCH3DLabelResource setAttributes:]");
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 69, 0, "invalid nil value for '%{public}s'", "_attributes.paragraphStyle");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
      }
    }
  }
}

- (void)setString:(id)string
{
  stringCopy = string;
  v9 = objc_msgSend_string(self->_attributes, v5, v6, v7, v8);
  v85 = stringCopy;
  v11 = v9;
  v15 = v85;
  if (v85 | v11)
  {
    isEqual = objc_msgSend_isEqual_(v85, v10, v12, v13, v14, v11);

    v15 = v85;
    if ((isEqual & 1) == 0)
    {
      attributes = self->_attributes;
      if (!attributes)
      {
        v22 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "[TSCH3DLabelResource setString:]");
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v30, v31, v32, v23, v28, 76, 0, "invalid nil value for '%{public}s'", "_attributes");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
        attributes = self->_attributes;
      }

      v37 = objc_msgSend_paragraphStyle(attributes, v17, v18, v19, v20);

      if (!v37)
      {
        v42 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "[TSCH3DLabelResource setString:]");
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 77, 0, "invalid nil value for '%{public}s'", "_attributes.paragraphStyle");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
      }

      v57 = objc_msgSend_paragraphStyle(self->_attributes, v38, v39, v40, v41);
      v62 = objc_msgSend_bitmapContextInfo(self->_attributes, v58, v59, v60, v61);
      objc_msgSend_labelWidth(self->_attributes, v63, v64, v65, v66);
      v68 = v67;
      objc_msgSend_renderSamples(self->_attributes, v69, v67, v70, v71);
      v73 = v72;
      v77 = objc_msgSend_styleProvidingSource(self->_attributes, v74, v72, v75, v76);
      v80 = objc_msgSend_labelAttributesWithParagraphStyle_string_bitmapContextInfo_labelWidth_renderSamples_styleProvidingSource_(TSCH3DLabelResourceAttributes, v78, v68, v73, v79, v57, v85, v62, v77);
      objc_msgSend_setAttributes_(self, v81, v82, v83, v84, v80);

      v15 = v85;
    }
  }
}

- (id)get
{
  attributes = self->_attributes;
  if (!attributes)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DLabelResource get]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 88, 0, "invalid nil value for '%{public}s'", "_attributes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
    attributes = self->_attributes;
  }

  v23 = objc_msgSend_string(attributes, a2, v2, v3, v4);

  if (!v23)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, "[TSCH3DLabelResource get]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 89, 0, "cannot generate nil label");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  v198 = 0.0;
  objc_msgSend_p_clampedLabelSampledSizeReturningClampedRatio_(self, v25, v26, v27);
  if (v196 < 1 || v197 <= 0)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DLabelResource get]");
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, v50, v51, v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v54, v55, v56, v57, v48, v53, 92, 0, "Label must have a size");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
  }

  *&v44 = v198;
  if (v198 <= 0.0)
  {
    v62 = MEMORY[0x277D81150];
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "[TSCH3DLabelResource get]");
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v69, v198, v70, v71, v63, v68, 93, 0, "invalid clamped ratio %f", v198);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74, v75);
  }

  objc_msgSend_renderSamples(self->_attributes, v43, v44, v45, v46);
  v77 = v76;
  v78 = v198;
  v82 = objc_msgSend_bufferWithCapacitySize_components_(TSCH3DVectorN2DDataBuffer, v79, v76, v80, v81, &v196, 4);
  objc_msgSend_fillCapacity(v82, v83, v84, v85, v86);
  aSelector = a2;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v92 = objc_msgSend_components(v82, v88, v89, v90, v91);
  v97 = objc_msgSend_container(v82, v93, v94, v95, v96);
  v101 = sub_2761D7D78(&v196, v92, *v97, 0, v98, v99, v100);
  v106 = objc_msgSend_bitmapContextInfo(self->_attributes, v102, v103, v104, v105);

  if (!v106)
  {
    v111 = MEMORY[0x277D81150];
    v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, v108, v109, v110, "[TSCH3DLabelResource get]");
    v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, v114, v115, v116, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v118, v119, v120, v121, v112, v117, 103, 0, "invalid nil value for '%{public}s'", "_attributes.bitmapContextInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124, v125);
  }

  v126 = objc_msgSend_bitmapContextInfo(self->_attributes, v107, v108, v109, v110);
  objc_msgSend_setTSDCGContextInfoForCGContext_(v126, v127, v128, v129, v130, v101);

  CGContextSetBlendMode(v101, kCGBlendModeCopy);
  CGContextTranslateCTM(v101, 0.0, v197);
  CGContextScaleCTM(v101, 1.0, -1.0);
  v131 = v77 * v78;
  v132 = v131;
  CGContextScaleCTM(v101, v132, v132);
  CGColorSpaceRelease(DeviceRGB);
  UIGraphicsPushContext(v101);
  objc_msgSend_bitmapLabelRenderOffset(self, v133, v134, v135);
  v140 = objc_msgSend_sharedText(TSCHText, v136, v137, v138, v139);
  v145 = objc_msgSend_string(self->_attributes, v141, v142, v143, v144);
  v150 = objc_msgSend_paragraphStyle(self->_attributes, v146, v147, v148, v149);
  objc_msgSend_labelWidth(self->_attributes, v151, v152, v153, v154);
  v156 = v155;
  v160 = objc_msgSend_string(self->_attributes, v157, v155, v158, v159);
  v165 = objc_msgSend_length(v160, v161, v162, v163, v164);
  v170 = objc_msgSend_attributes(self, v166, v167, v168, v169);
  v175 = objc_msgSend_styleProvidingSource(v170, v171, v172, v173, v174);
  objc_msgSend_drawText_paragraphStyle_intoContext_wrapWidth_atPosition_range_viewScale_layoutProperties_styleProvidingSource_outTextLayoutResults_(v140, v176, v156, v194, v195, v145, v150, v101, 0, v165, 0, v132, v175, 0);

  UIGraphicsPopContext();
  TSDClearCGContextInfo();
  CGContextRelease(v101);
  if (byte_280A46430 == 1)
  {
    v181 = objc_opt_class();
    v182 = NSStringFromSelector(aSelector);
    NSLog(&cfstr_P.isa, v181, self, v182, v82);
  }

  v183 = objc_msgSend_container(v82, v177, v178, v179, v180);
  v184 = v196;
  v185 = v197;
  if (v197 * v196 >= 1)
  {
    v186 = 0;
    v187 = (*v183 + 1);
    do
    {
      if (v187[2])
      {
        v188 = 1132396544;
        v189 = 255.0 / v187[2];
        LOBYTE(v188) = *(v187 - 1);
        *&v190 = v189 * v188;
        *(v187 - 1) = *&v190;
        LOBYTE(v190) = *v187;
        *&v191 = v189 * v190;
        *v187 = *&v191;
        LOBYTE(v191) = v187[1];
        v187[1] = (v189 * v191);
        v184 = v196;
        v185 = v197;
      }

      v187 += 4;
      ++v186;
    }

    while (v186 < v185 * v184);
  }

  return v82;
}

- (void)p_calculateSizeAndOffset
{
  if (!self->_sizeAndOffsetCalculated)
  {
    v6 = objc_msgSend_sharedText(TSCHText, a2, v2, v3, v4);
    v11 = objc_msgSend_string(self->_attributes, v7, v8, v9, v10);
    v16 = objc_msgSend_paragraphStyle(self->_attributes, v12, v13, v14, v15);
    objc_msgSend_labelWidth(self->_attributes, v17, v18, v19, v20);
    v22 = v21;
    v26 = objc_msgSend_attributes(self, v23, v21, v24, v25);
    v31 = objc_msgSend_styleProvidingSource(v26, v27, v28, v29, v30);
    objc_msgSend_measureText_paragraphStyle_wrapWidth_checkNumberTemplates_layoutProperties_styleProvidingSource_outErasableFrame_outTextLayoutResults_(v6, v32, v22, v33, v34, v11, v16, 1, 0, v31, v44, 0);
    v36 = v35;
    v38 = v37;

    v39 = v36;
    v40 = v38;
    self->_tightSize.var0.var0 = v39;
    self->_tightSize.var1.var0 = v40;
    v41 = v44[0];
    v42 = vdup_n_s32(0xB8D1B717);
    self->_size = vcvt_f32_s32(vcvt_s32_f32(vrndp_f32(vadd_f32(vcvt_f32_f64(v44[1]), v42))));
    v43 = vneg_f32(vrndp_f32(vadd_f32(vcvt_f32_f64(v41), v42)));
    self->_bitmapLabelRenderOffset = v43;
    LODWORD(self->_labelRenderOffset.var0.var0) = v43.i32[0];
    v43.i32[0] = LODWORD(self->_bitmapLabelRenderOffset.var1.var0);
    LODWORD(self->_labelRenderOffset.var1.var0) = v43.i32[0];
    *v41.f64 = ceil(v38);
    self->_labelRenderOffset.var1.var0 = (self->_size.var1.var0 - v43.f32[0]) - *v41.f64;
    self->_sizeAndOffsetCalculated = 1;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy[16];
    v6 = self->_attributes;
    v8 = v5;
    if (v6 | v8)
    {
      isEqual = objc_msgSend_isEqual_(v6, v7, v9, v10, v11, v8);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (tvec2<float>)labelSize
{
  v7 = v2;
  v8 = objc_msgSend_p_calculateSizeAndOffset(self, a2, v3, v4, v5);
  *v7 = self->_size;
  return v8;
}

- (tvec2<float>)tightSize
{
  v7 = v2;
  v8 = objc_msgSend_p_calculateSizeAndOffset(self, a2, v3, v4, v5);
  *v7 = self->_tightSize;
  return v8;
}

- (tvec2<float>)labelRenderOffset
{
  v7 = v2;
  v8 = objc_msgSend_p_calculateSizeAndOffset(self, a2, v3, v4, v5);
  *v7 = self->_labelRenderOffset;
  return v8;
}

- (tvec2<float>)bitmapLabelRenderOffset
{
  v7 = v2;
  v8 = objc_msgSend_p_calculateSizeAndOffset(self, a2, v3, v4, v5);
  *v7 = self->_bitmapLabelRenderOffset;
  return v8;
}

- (tvec2<int>)p_clampedLabelSampledSizeReturningClampedRatio:(float *)ratio
{
  v9 = v3;
  attributes = self->_attributes;
  if (!attributes)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCH3DLabelResource p_clampedLabelSampledSizeReturningClampedRatio:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 209, 0, "invalid nil value for '%{public}s'", "_attributes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
    attributes = self->_attributes;
  }

  objc_msgSend_renderSamples(attributes, a2, v4, v5, v6);
  objc_msgSend_labelSizeWithSamples_(self, v26, v27, v28);
  if (v77.i32[0] < 1 || v77.i32[1] <= 0)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "[TSCH3DLabelResource p_clampedLabelSampledSizeReturningClampedRatio:]");
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v41, v42, v43, v44, v35, v40, 211, 0, "Label must have a size");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  v49 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, v29, v30, v31, v32);
  v54 = objc_msgSend_labelMaxTextureSize(v49, v50, v51, v52, v53);

  if (v54 <= 0)
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v57, v58, v59, "[TSCH3DLabelResource p_clampedLabelSampledSizeReturningClampedRatio:]");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelResource.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v67, v68, v69, v70, v61, v66, 213, 0, "max texture size is 0");

    v55 = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
  }

  v75 = vcvt_f32_s32(v77);
  v76 = vdiv_f32(vcvt_f32_s32(vmin_s32(v77, vdup_n_s32(v54))), v75);
  if (v76.f32[0] >= v76.f32[1])
  {
    v76.f32[0] = v76.f32[1];
  }

  *v9 = vcvt_s32_f32(vrndp_f32(vadd_f32(vmul_n_f32(v75, v76.f32[0]), vdup_n_s32(0xBA83126F))));
  if (ratio)
  {
    *ratio = v76.f32[0];
  }

  return v55;
}

- (tvec2<int>)labelSizeWithSamples:(double)samples
{
  v7 = v3;
  v8 = objc_msgSend_labelSize(self, samples, v4, v5, a2);
  samplesCopy = samples;
  *v7 = vcvt_s32_f32(vrndp_f32(vadd_f32(vmul_n_f32(v10, samplesCopy), vdup_n_s32(0xBA83126F))));
  return v8;
}

- (id).cxx_construct
{
  *(self + 92) = 0;
  *(self + 100) = 0;
  *(self + 108) = 0;
  *(self + 116) = 0;
  return self;
}

@end