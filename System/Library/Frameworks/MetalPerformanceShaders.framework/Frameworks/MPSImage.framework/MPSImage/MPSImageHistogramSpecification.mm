@interface MPSImageHistogramSpecification
- (MPSImageHistogramInfo)histogramInfo;
- (MPSImageHistogramSpecification)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageHistogramSpecification)initWithDevice:(id)device;
- (MPSImageHistogramSpecification)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeTransformToCommandBuffer:(id)commandBuffer sourceTexture:(id)source sourceHistogram:(id)sourceHistogram sourceHistogramOffset:(NSUInteger)sourceHistogramOffset desiredHistogram:(id)desiredHistogram desiredHistogramOffset:(NSUInteger)desiredHistogramOffset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageHistogramSpecification

- (MPSImageHistogramSpecification)initWithDevice:(id)device
{
  v9[1] = 1;
  v10 = 0u;
  v9[0] = 256;
  __asm { FMOV            V0.4S, #1.0 }

  v11 = _Q0;
  return objc_msgSend_initWithDevice_histogramInfo_(self, a2, device, v9);
}

- (MPSImageHistogramInfo)histogramInfo
{
  retstr->numberOfHistogramEntries = self[4].minPixelValue.u64[0];
  retstr->histogramForAlpha = self[4].minPixelValue.i8[8];
  v3 = *&self[5].numberOfHistogramEntries;
  retstr->minPixelValue = self[4].maxPixelValue;
  retstr->maxPixelValue = v3;
  return self;
}

- (MPSImageHistogramSpecification)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo
{
  v22.receiver = self;
  v22.super_class = MPSImageHistogramSpecification;
  result = [(MPSUnaryImageKernel *)&v22 initWithDevice:?];
  if (!result)
  {
    return result;
  }

  if (!histogramInfo)
  {
    v19 = result;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  numberOfHistogramEntries = histogramInfo->numberOfHistogramEntries;
  if (histogramInfo->numberOfHistogramEntries <= 0xFF)
  {
    v19 = result;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if ((numberOfHistogramEntries & (numberOfHistogramEntries - 1)) != 0)
  {
    v19 = result;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_17:
      v20 = objc_opt_class();
      NSStringFromClass(v20);
      MTLReportFailure();
    }

LABEL_18:

    return 0;
  }

  result->super._encode = sub_23997F0E8;
  result->super._encodeData = result;
  result->histogramEntries = numberOfHistogramEntries;
  result->histogramAlpha = histogramInfo->histogramForAlpha;
  *&result->minPixelValue[7] = histogramInfo->minPixelValue;
  maxPixelValue = histogramInfo->maxPixelValue;
  *&result->maxPixelValue[7] = maxPixelValue;
  histogramEntries = result->histogramEntries;
  if (histogramEntries != 256)
  {
    goto LABEL_7;
  }

  __asm { FMOV            V2.4S, #1.0 }

  if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_f32(*&result->minPixelValue[7]), vceqq_f32(maxPixelValue, _Q2))))) & 1) == 0)
  {
    v16 = 1;
  }

  else
  {
LABEL_7:
    v16 = 0;
  }

  LOBYTE(result->specificationBuffer) = v16;
  v17 = result;
  v18 = objc_msgSend_newBufferWithLength_options_(device, v7, 16 * (3 * histogramEntries + (histogramEntries >> 8)), 0);
  *&v17->encodeTransform = v18;
  if (v18)
  {
    result = v17;
    LOBYTE(v17[1].super.super.super.isa) = 0;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v21 = objc_opt_class();
      NSStringFromClass(v21);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (MPSImageHistogramSpecification)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v38.receiver = self;
  v38.super_class = MPSImageHistogramSpecification;
  v6 = [MPSUnaryImageKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v8 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v6->super._encode = sub_23997F0E8;
      v6->super._encodeData = v6;
      v6->histogramEntries = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"MPSImageHistogramSpecification.histogramEntries");
      v8->histogramAlpha = objc_msgSend_decodeBoolForKey_(aDecoder, v9, @"MPSImageHistogramSpecification.histogramAlpha");
      objc_msgSend_decodeFloatForKey_(aDecoder, v10, @"MPSImageHistogramSpecification.minPixelValueX");
      *&v8->minPixelValue[7] = v11;
      objc_msgSend_decodeFloatForKey_(aDecoder, v12, @"MPSImageHistogramSpecification.minPixelValueY");
      *&v8->minPixelValue[11] = v13;
      objc_msgSend_decodeFloatForKey_(aDecoder, v14, @"MPSImageHistogramSpecification.minPixelValueZ");
      *&v8->minPixelValue[15] = v15;
      objc_msgSend_decodeFloatForKey_(aDecoder, v16, @"MPSImageHistogramSpecification.minPixelValueW");
      *&v8->maxPixelValue[3] = v17;
      objc_msgSend_decodeFloatForKey_(aDecoder, v18, @"MPSImageHistogramSpecification.maxPixelValueX");
      *&v8->maxPixelValue[7] = v19;
      objc_msgSend_decodeFloatForKey_(aDecoder, v20, @"MPSImageHistogramSpecification.maxPixelValueY");
      *&v8->maxPixelValue[11] = v21;
      objc_msgSend_decodeFloatForKey_(aDecoder, v22, @"MPSImageHistogramSpecification.maxPixelValueZ");
      *&v8->maxPixelValue[15] = v23;
      objc_msgSend_decodeFloatForKey_(aDecoder, v24, @"MPSImageHistogramSpecification.maxPixelValueW");
      v27 = *&v8->maxPixelValue[7];
      *(&v8->optimized256BinsUseCase + 3) = v26;
      histogramEntries = v8->histogramEntries;
      if (histogramEntries <= 0xFF)
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if ((histogramEntries & (histogramEntries - 1)) != 0)
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if (histogramEntries != 256)
      {
        goto LABEL_8;
      }

      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*&v8->minPixelValue[7])))))
      {
        goto LABEL_8;
      }

      v27.i32[3] = v26;
      __asm { FMOV            V0.4S, #1.0 }

      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v27, _Q0)))))
      {
LABEL_8:
        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      LOBYTE(v8->specificationBuffer) = v34;
      v35 = objc_msgSend_newBufferWithLength_options_(device, v25, 16 * (3 * histogramEntries + (histogramEntries >> 8)), 0);
      *&v8->encodeTransform = v35;
      if (v35)
      {
        LOBYTE(v8[1].super.super.super.isa) = 0;
        return v8;
      }

      if (MTLReportFailureTypeEnabled())
      {
LABEL_12:
        v36 = objc_opt_class();
        NSStringFromClass(v36);
        MTLReportFailure();
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

LABEL_13:

    return 0;
  }

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSImageHistogramSpecification;
  v4 = [(MPSUnaryImageKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tHistogram Entries:  %lu\n\tHistogram for Alpha: %d \n\tminPixelValue: %f %f %f %f\n\tmaxPixelValue: %f %f %f %f\n\tInternal Transform Buffer: %p", v4, self->histogramEntries, self->histogramAlpha, COERCE_FLOAT(*&self->minPixelValue[7]), COERCE_FLOAT(HIDWORD(*&self->minPixelValue[7])), COERCE_FLOAT(*&self->minPixelValue[15]), COERCE_FLOAT(HIDWORD(*&self->minPixelValue[7])), COERCE_FLOAT(*&self->maxPixelValue[7]), COERCE_FLOAT(HIDWORD(*&self->maxPixelValue[7])), COERCE_FLOAT(*&self->maxPixelValue[15]), COERCE_FLOAT(HIDWORD(*&self->maxPixelValue[7])), *&self->encodeTransform);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v23.receiver = self;
  v23.super_class = MPSImageHistogramSpecification;
  [(MPSUnaryImageKernel *)&v23 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, selfCopy->histogramEntries, @"MPSImageHistogramSpecification.histogramEntries");
  objc_msgSend_encodeBool_forKey_(coder, v6, selfCopy->histogramAlpha, @"MPSImageHistogramSpecification.histogramAlpha");
  LODWORD(v7) = *&selfCopy->minPixelValue[7];
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"MPSImageHistogramSpecification.minPixelValueX", v7);
  LODWORD(v9) = *&selfCopy->minPixelValue[11];
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"MPSImageHistogramSpecification.minPixelValueY", v9);
  LODWORD(v11) = *&selfCopy->minPixelValue[15];
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"MPSImageHistogramSpecification.minPixelValueZ", v11);
  LODWORD(v13) = *&selfCopy->maxPixelValue[3];
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"MPSImageHistogramSpecification.minPixelValueW", v13);
  selfCopy = (selfCopy + 240);
  LODWORD(v15) = selfCopy->super.super.super.isa;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"MPSImageHistogramSpecification.maxPixelValueX", v15);
  LODWORD(v17) = HIDWORD(selfCopy->super.super.super.isa);
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"MPSImageHistogramSpecification.maxPixelValueY", v17);
  LODWORD(v19) = selfCopy->super.super._options;
  objc_msgSend_encodeFloat_forKey_(coder, v20, @"MPSImageHistogramSpecification.maxPixelValueZ", v19);
  LODWORD(v21) = HIDWORD(selfCopy->super.super._options);
  objc_msgSend_encodeFloat_forKey_(coder, v22, @"MPSImageHistogramSpecification.maxPixelValueW", v21);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v26.receiver = self;
  v26.super_class = MPSImageHistogramSpecification;
  v5 = [(MPSUnaryImageKernel *)&v26 copyWithZone:zone device:device];
  v8 = v5;
  if (v5)
  {
    v5[26] = self->histogramEntries;
    *(v5 + 216) = self->histogramAlpha;
    *(v5 + 14) = *&self->minPixelValue[7];
    *(v5 + 15) = *&self->maxPixelValue[7];
    *(v5 + 256) = self->specificationBuffer;
    *(v5 + 272) = 0;
    v9 = *MEMORY[0x277CD7350];
    v10 = *(*(v5 + v9) + 16);
    v11 = *&self->encodeTransform;
    if ((*(&self->super.super.super.isa + v9))[2] == v10)
    {
      v8[33] = v11;
    }

    else
    {
      v12 = objc_msgSend_length(v11, v6, v7);
      v14 = objc_msgSend_newBufferWithLength_options_(v10, v13, v12, 0);
      v8[33] = v14;
      v17 = objc_msgSend_contents(v14, v15, v16);
      v20 = objc_msgSend_contents(*&self->encodeTransform, v18, v19);
      v23 = objc_msgSend_length(*&self->encodeTransform, v21, v22);
      memcpy(v17, v20, v23);
      if (!v8[33])
      {
        if (MTLReportFailureTypeEnabled())
        {
          v24 = objc_opt_class();
          NSStringFromClass(v24);
          MTLReportFailure();
        }

        return 0;
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  v3 = *&self->encodeTransform;
  if (v3)
  {
  }

  v4.receiver = self;
  v4.super_class = MPSImageHistogramSpecification;
  [(MPSKernel *)&v4 dealloc];
}

- (void)encodeTransformToCommandBuffer:(id)commandBuffer sourceTexture:(id)source sourceHistogram:(id)sourceHistogram sourceHistogramOffset:(NSUInteger)sourceHistogramOffset desiredHistogram:(id)desiredHistogram desiredHistogramOffset:(NSUInteger)desiredHistogramOffset
{
  v15 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  v16 = objc_msgSend_pixelFormat(source, a2, commandBuffer);
  PixelInfo = MPSDevice::GetPixelInfo(v15, v16, MPSImageFeatureChannelFormatNone);
  v20 = PixelInfo;
  v21 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.super.isa + v21))
  {
    LODWORD(v24) = HIBYTE(PixelInfo) & 0xF;
    if (v24 != 4)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (self->histogramAlpha)
    {
      LODWORD(v24) = 4;
    }

    else
    {
      LODWORD(v24) = 3;
    }

    goto LABEL_11;
  }

  objc_msgSend_textureType(source, v18, v19);
  if (objc_msgSend_textureType(source, v22, v23) != 2 && MTLReportFailureTypeEnabled())
  {
    v84 = source;
    MTLReportFailure();
  }

  LODWORD(v24) = HIBYTE(v20) & 0xF;
  if (v24)
  {
    if (v24 != 15)
    {
      if (v24 != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v84 = source;
      v86 = objc_msgSend_pixelFormat(source, v82, v83);
      MTLReportFailure();
    }

    LODWORD(v24) = 15;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v84 = source;
      MTLReportFailure();
    }

    LODWORD(v24) = 0;
  }

LABEL_11:
  histogramEntries = self->histogramEntries;
  if (histogramEntries != 256)
  {
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v24 = (3 * histogramEntries) >> 8;
        goto LABEL_27;
      }

      if (v24 == 4)
      {
        v24 = (histogramEntries >> 6) & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_27;
      }
    }

    else
    {
      if (v24 == 1)
      {
        v24 = histogramEntries >> 8;
        goto LABEL_27;
      }

      if (v24 == 2)
      {
        v24 = (histogramEntries >> 7) & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_27;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      return;
    }

LABEL_24:
    v26 = objc_opt_class();
    NSStringFromClass(v26);
    MTLReportFailure();
    return;
  }

  if ((v24 - 1) >= 4)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      return;
    }

    goto LABEL_24;
  }

  v24 = v24;
LABEL_27:
  v87 = v24;
  v27 = objc_alloc(MEMORY[0x277CD7210]);
  v31 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v27, v28, commandBuffer, 0);
  v92[5] = v31;
  v92[6] = self;
  if ((*(&self->super.super.super.isa + v21) & 0x18) != 0)
  {
    v30 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v30 || (v32 = objc_opt_class(), v33 = NSStringFromClass(v32), objc_msgSend_setLabel_(self, v34, v33), (v30 = v33) != 0))
    {
      objc_msgSend_setLabel_(v31, v29, v30, v84, v86);
    }
  }

  if ((objc_msgSend_retainedReferences(commandBuffer, v29, v30, v84) & 1) == 0)
  {
    v35 = *&self->encodeTransform;
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = sub_239980808;
    v92[3] = &unk_278AC37A8;
    v92[4] = self;
    objc_msgSend_addCompletedHandler_(commandBuffer, v36, v92);
  }

  if (self->histogramEntries == 256)
  {
    ComputeState = MPSLibrary::GetComputeState();
    if (ComputeState)
    {
      objc_msgSend_setComputePipelineState_(v31, v37, ComputeState);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setBuffer_offset_atIndex_(v31, v39, sourceHistogram, sourceHistogramOffset, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v31, v40, desiredHistogram, desiredHistogramOffset, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v31, v41, *&self->encodeTransform, 0, 2);
      objc_msgSend_setBuffer_offset_atIndex_(v31, v42, *&self->encodeTransform, 16 * self->histogramEntries, 3);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v31, v43, 2048, 0);
      v90 = v87;
      v91 = vdupq_n_s64(1uLL);
      *v89 = 128;
      *&v89[8] = v91;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v44, &v90, v89);
LABEL_39:
      v70 = MPSLibrary::GetComputeState();
      if (v70)
      {
        objc_msgSend_setComputePipelineState_(v31, v69, v70);
        MPSLibrary::ReleaseComputeState();
        v88 = 0;
        v71 = self->histogramEntries;
        *&v88 = 1.0 / v71;
        WORD2(v88) = v71;
        objc_msgSend_setBuffer_offset_atIndex_(v31, v72, *&self->encodeTransform, 0, 0);
        objc_msgSend_setBuffer_offset_atIndex_(v31, v73, *&self->encodeTransform, 16 * self->histogramEntries, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v31, v74, *&self->encodeTransform, 32 * self->histogramEntries, 2);
        objc_msgSend_setBytes_length_atIndex_(v31, v75, &v88, 8, 3);
        v90 = v87;
        v91 = vdupq_n_s64(1uLL);
        *v89 = 256;
        *&v89[8] = v91;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v76, &v90, v89);
        LOBYTE(self[1].super.super.super.isa) = 1;
      }

      else if (MTLReportFailureTypeEnabled())
      {
        v79 = objc_opt_class();
        v85 = NSStringFromClass(v79);
        MTLReportFailure();
      }

      goto LABEL_50;
    }

    if (MTLReportFailureTypeEnabled())
    {
LABEL_44:
      v80 = objc_opt_class();
      v85 = NSStringFromClass(v80);
      MTLReportFailure();
    }
  }

  else
  {
    v45 = MPSLibrary::GetComputeState();
    if (v45)
    {
      v47 = MPSLibrary::GetComputeState();
      if (!v47)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v81 = objc_opt_class();
          v85 = NSStringFromClass(v81);
          MTLReportFailure();
        }

        MPSLibrary::ReleaseComputeState();
        goto LABEL_50;
      }

      objc_msgSend_setComputePipelineState_(v31, v46, v45);
      objc_msgSend_setBuffer_offset_atIndex_(v31, v48, sourceHistogram, sourceHistogramOffset, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v31, v49, *&self->encodeTransform, 0, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v31, v50, *&self->encodeTransform, 48 * self->histogramEntries, 2);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v31, v51, 1024, 0);
      *&v89[16] = 1;
      v90 = v87;
      v91 = vdupq_n_s64(1uLL);
      *v89 = xmmword_239988A80;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v52, &v90, v89);
      objc_msgSend_setComputePipelineState_(v31, v53, v47);
      v88 = 1065353216;
      WORD2(v88) = self->histogramEntries >> 8;
      objc_msgSend_setBuffer_offset_atIndex_(v31, v54, *&self->encodeTransform, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v31, v55, *&self->encodeTransform, 48 * self->histogramEntries, 1);
      objc_msgSend_setBytes_length_atIndex_(v31, v56, &v88, 8, 2);
      v91 = vdupq_n_s64(1uLL);
      *v89 = xmmword_239988A80;
      *&v89[16] = 1;
      v90 = v87;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v57, &v90, v89);
      objc_msgSend_setComputePipelineState_(v31, v58, v45);
      objc_msgSend_setBuffer_offset_atIndex_(v31, v59, desiredHistogram, desiredHistogramOffset, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v31, v60, *&self->encodeTransform, 16 * self->histogramEntries, 1);
      objc_msgSend_setBuffer_offset_atIndex_(v31, v61, *&self->encodeTransform, 48 * self->histogramEntries, 2);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(v31, v62, 1024, 0);
      v90 = v87;
      v91 = vdupq_n_s64(1uLL);
      *v89 = 128;
      *&v89[8] = v91;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v63, &v90, v89);
      objc_msgSend_setComputePipelineState_(v31, v64, v47);
      objc_msgSend_setBuffer_offset_atIndex_(v31, v65, *&self->encodeTransform, 16 * self->histogramEntries, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v31, v66, *&self->encodeTransform, 48 * self->histogramEntries, 1);
      objc_msgSend_setBytes_length_atIndex_(v31, v67, &v88, 8, 2);
      v90 = v87;
      v91 = vdupq_n_s64(1uLL);
      *v89 = 128;
      *&v89[8] = v91;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v31, v68, &v90, v89);
      MPSLibrary::ReleaseComputeState();
      MPSLibrary::ReleaseComputeState();
      goto LABEL_39;
    }

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_44;
    }
  }

LABEL_50:
  objc_msgSend_endEncoding(v31, v77, v78, v85);
}

@end