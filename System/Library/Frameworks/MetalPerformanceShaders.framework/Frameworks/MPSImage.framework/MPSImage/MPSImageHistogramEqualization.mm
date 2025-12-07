@interface MPSImageHistogramEqualization
- (MPSImageHistogramEqualization)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageHistogramEqualization)initWithDevice:(id)device;
- (MPSImageHistogramEqualization)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo;
- (MPSImageHistogramInfo)histogramInfo;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeTransformToCommandBuffer:(id)commandBuffer sourceTexture:(id)source histogram:(id)histogram histogramOffset:(NSUInteger)histogramOffset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageHistogramEqualization

- (MPSImageHistogramEqualization)initWithDevice:(id)device
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

- (MPSImageHistogramEqualization)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo
{
  v23.receiver = self;
  v23.super_class = MPSImageHistogramEqualization;
  result = [(MPSUnaryImageKernel *)&v23 initWithDevice:?];
  if (!result)
  {
    return result;
  }

  if (!histogramInfo)
  {
    v20 = result;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  numberOfHistogramEntries = histogramInfo->numberOfHistogramEntries;
  if (histogramInfo->numberOfHistogramEntries <= 0xFF)
  {
    v20 = result;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if ((numberOfHistogramEntries & (numberOfHistogramEntries - 1)) != 0)
  {
    v20 = result;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_20:
      v21 = objc_opt_class();
      NSStringFromClass(v21);
      MTLReportFailure();
    }

LABEL_21:

    return 0;
  }

  result->super._encode = sub_23995478C;
  result->super._encodeKernelDAG = sub_239954834;
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

  LOBYTE(result->cumulativeHistogramBuffer) = v16;
  if (histogramEntries == 256)
  {
    v17 = 0x2000;
  }

  else
  {
    v17 = 32 * (histogramEntries + (histogramEntries >> 8));
  }

  v18 = result;
  v19 = objc_msgSend_newBufferWithLength_options_(device, v7, v17, 0);
  *&v18->encodeTransform = v19;
  if (v19)
  {
    result = v18;
    LOBYTE(v18[1].super.super.super.isa) = 0;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v22 = objc_opt_class();
      NSStringFromClass(v22);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (MPSImageHistogramEqualization)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v38.receiver = self;
  v38.super_class = MPSImageHistogramEqualization;
  v6 = [MPSUnaryImageKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v8 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v6->super._encode = sub_23995478C;
      v6->super._encodeKernelDAG = sub_239954834;
      v6->super._encodeData = v6;
      v6->histogramEntries = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"MPSImageHistogramEqualization.histogramEntries");
      v8->histogramAlpha = objc_msgSend_decodeBoolForKey_(aDecoder, v9, @"MPSImageHistogramEqualization.histogramAlpha");
      objc_msgSend_decodeFloatForKey_(aDecoder, v10, @"MPSImageHistogramEqualization.minPixelValueX");
      *&v8->minPixelValue[7] = v11;
      objc_msgSend_decodeFloatForKey_(aDecoder, v12, @"MPSImageHistogramEqualization.minPixelValueY");
      *&v8->minPixelValue[11] = v13;
      objc_msgSend_decodeFloatForKey_(aDecoder, v14, @"MPSImageHistogramEqualization.minPixelValueZ");
      *&v8->minPixelValue[15] = v15;
      objc_msgSend_decodeFloatForKey_(aDecoder, v16, @"MPSImageHistogramEqualization.minPixelValueW");
      *&v8->maxPixelValue[3] = v17;
      objc_msgSend_decodeFloatForKey_(aDecoder, v18, @"MPSImageHistogramEqualization.maxPixelValueX");
      *&v8->maxPixelValue[7] = v19;
      objc_msgSend_decodeFloatForKey_(aDecoder, v20, @"MPSImageHistogramEqualization.maxPixelValueY");
      *&v8->maxPixelValue[11] = v21;
      objc_msgSend_decodeFloatForKey_(aDecoder, v22, @"MPSImageHistogramEqualization.maxPixelValueZ");
      *&v8->maxPixelValue[15] = v23;
      objc_msgSend_decodeFloatForKey_(aDecoder, v24, @"MPSImageHistogramEqualization.maxPixelValueW");
      v27 = *&v8->maxPixelValue[7];
      *(&v8->optimized256BinsUseCase + 3) = v26;
      histogramEntries = v8->histogramEntries;
      if (histogramEntries <= 0xFF)
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if ((histogramEntries & (histogramEntries - 1)) != 0)
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_16;
        }

        goto LABEL_15;
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

      LOBYTE(v8->cumulativeHistogramBuffer) = v34;
      if (histogramEntries == 256)
      {
        v35 = objc_msgSend_newBufferWithLength_options_(device, v25, 0x2000, 0);
      }

      else
      {
        v35 = objc_msgSend_newBufferWithLength_options_(device, v25, 32 * (histogramEntries + (histogramEntries >> 8)), 0);
      }

      *&v8->encodeTransform = v35;
      if (v35)
      {
        LOBYTE(v8[1].super.super.super.isa) = 0;
        return v8;
      }

      if (MTLReportFailureTypeEnabled())
      {
LABEL_15:
        v36 = objc_opt_class();
        NSStringFromClass(v36);
        MTLReportFailure();
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_15;
    }

LABEL_16:

    return 0;
  }

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSImageHistogramEqualization;
  v4 = [(MPSUnaryImageKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tHistogram Entries:  %lu\n\tHistogram for Alpha: %d \n\tminPixelValue: %f %f %f %f\n\tmaxPixelValue: %f %f %f %f\n\tInternal Transform Buffer: %p", v4, self->histogramEntries, self->histogramAlpha, COERCE_FLOAT(*&self->minPixelValue[7]), COERCE_FLOAT(HIDWORD(*&self->minPixelValue[7])), COERCE_FLOAT(*&self->minPixelValue[15]), COERCE_FLOAT(HIDWORD(*&self->minPixelValue[7])), COERCE_FLOAT(*&self->maxPixelValue[7]), COERCE_FLOAT(HIDWORD(*&self->maxPixelValue[7])), COERCE_FLOAT(*&self->maxPixelValue[15]), COERCE_FLOAT(HIDWORD(*&self->maxPixelValue[7])), *&self->encodeTransform);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v23.receiver = self;
  v23.super_class = MPSImageHistogramEqualization;
  [(MPSUnaryImageKernel *)&v23 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, selfCopy->histogramEntries, @"MPSImageHistogramEqualization.histogramEntries");
  objc_msgSend_encodeBool_forKey_(coder, v6, selfCopy->histogramAlpha, @"MPSImageHistogramEqualization.histogramAlpha");
  LODWORD(v7) = *&selfCopy->minPixelValue[7];
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"MPSImageHistogramEqualization.minPixelValueX", v7);
  LODWORD(v9) = *&selfCopy->minPixelValue[11];
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"MPSImageHistogramEqualization.minPixelValueY", v9);
  LODWORD(v11) = *&selfCopy->minPixelValue[15];
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"MPSImageHistogramEqualization.minPixelValueZ", v11);
  LODWORD(v13) = *&selfCopy->maxPixelValue[3];
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"MPSImageHistogramEqualization.minPixelValueW", v13);
  selfCopy = (selfCopy + 240);
  LODWORD(v15) = selfCopy->super.super.super.isa;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"MPSImageHistogramEqualization.maxPixelValueX", v15);
  LODWORD(v17) = HIDWORD(selfCopy->super.super.super.isa);
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"MPSImageHistogramEqualization.maxPixelValueY", v17);
  LODWORD(v19) = selfCopy->super.super._options;
  objc_msgSend_encodeFloat_forKey_(coder, v20, @"MPSImageHistogramEqualization.maxPixelValueZ", v19);
  LODWORD(v21) = HIDWORD(selfCopy->super.super._options);
  objc_msgSend_encodeFloat_forKey_(coder, v22, @"MPSImageHistogramEqualization.maxPixelValueW", v21);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v26.receiver = self;
  v26.super_class = MPSImageHistogramEqualization;
  v5 = [(MPSUnaryImageKernel *)&v26 copyWithZone:zone device:device];
  v8 = v5;
  if (v5)
  {
    v5[26] = self->histogramEntries;
    *(v5 + 216) = self->histogramAlpha;
    *(v5 + 14) = *&self->minPixelValue[7];
    *(v5 + 15) = *&self->maxPixelValue[7];
    *(v5 + 256) = self->cumulativeHistogramBuffer;
    *(v5 + 272) = 0;
    v9 = *MEMORY[0x277CD7350];
    v10 = *(*(v5 + v9) + 16);
    v11 = *&self->encodeTransform;
    if (v10 == (*(&self->super.super.super.isa + v9))[2])
    {
      v8[33] = v11;
    }

    else
    {
      v12 = objc_msgSend_length(v11, v6, v7);
      v14 = objc_msgSend_newBufferWithLength_options_(v10, v13, v12, 0);
      v8[33] = v14;
      if (v14)
      {
        v17 = objc_msgSend_contents(v14, v15, v16);
        v20 = objc_msgSend_contents(*&self->encodeTransform, v18, v19);
        v23 = objc_msgSend_length(*&self->encodeTransform, v21, v22);
        memcpy(v17, v20, v23);
      }

      else
      {
        if (MTLReportFailureTypeEnabled())
        {
          v25 = objc_opt_class();
          NSStringFromClass(v25);
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
  v4.super_class = MPSImageHistogramEqualization;
  [(MPSKernel *)&v4 dealloc];
}

- (void)encodeTransformToCommandBuffer:(id)commandBuffer sourceTexture:(id)source histogram:(id)histogram histogramOffset:(NSUInteger)histogramOffset
{
  v11 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  v12 = objc_msgSend_pixelFormat(source, a2, commandBuffer);
  PixelInfo = MPSDevice::GetPixelInfo(v11, v12, MPSImageFeatureChannelFormatNone);
  v16 = PixelInfo;
  v17 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.super.isa + v17))
  {
    v20 = HIBYTE(PixelInfo) & 0xF;
    if (v20 != 4)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (self->histogramAlpha)
    {
      v20 = 4;
    }

    else
    {
      v20 = 3;
    }

    goto LABEL_11;
  }

  objc_msgSend_textureType(source, v14, v15);
  if (objc_msgSend_textureType(source, v18, v19) != 2 && MTLReportFailureTypeEnabled())
  {
    v61 = source;
    MTLReportFailure();
  }

  v20 = HIBYTE(v16) & 0xF;
  if (v20)
  {
    if (v20 != 15)
    {
      if (v20 != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v61 = source;
      v62 = objc_msgSend_pixelFormat(source, v59, v60);
      MTLReportFailure();
    }

    v20 = 15;
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v61 = source;
      MTLReportFailure();
    }

    v20 = 0;
  }

LABEL_11:
  histogramEntries = self->histogramEntries;
  if (histogramEntries != 256)
  {
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v22 = (3 * histogramEntries) >> 8;
        goto LABEL_27;
      }

      if (v20 == 4)
      {
        v22 = (histogramEntries >> 6) & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_27;
      }
    }

    else
    {
      if (v20 == 1)
      {
        v22 = histogramEntries >> 8;
        goto LABEL_27;
      }

      if (v20 == 2)
      {
        v22 = (histogramEntries >> 7) & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_27;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
      return;
    }

LABEL_24:
    v23 = objc_opt_class();
    NSStringFromClass(v23);
    MTLReportFailure();
    return;
  }

  if ((v20 - 1) >= 4)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      return;
    }

    goto LABEL_24;
  }

  v22 = v20;
LABEL_27:
  v24 = objc_alloc(MEMORY[0x277CD7210]);
  v27 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v24, v25, commandBuffer, 0);
  v69[5] = v27;
  v69[6] = self;
  if ((*(&self->super.super.super.isa + v17) & 0x18) != 0)
  {
    v28 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v28 || (v29 = objc_opt_class(), v30 = NSStringFromClass(v29), objc_msgSend_setLabel_(self, v31, v30), (v28 = v30) != 0))
    {
      objc_msgSend_setLabel_(v27, v26, v28, v61, v62);
    }
  }

  ComputeState = MPSLibrary::GetComputeState();
  if (!ComputeState)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v57 = objc_opt_class();
      v61 = NSStringFromClass(v57);
      MTLReportFailure();
    }

    goto LABEL_42;
  }

  objc_msgSend_setComputePipelineState_(v27, v32, ComputeState);
  MPSLibrary::ReleaseComputeState();
  if ((objc_msgSend_retainedReferences(commandBuffer, v34, v35) & 1) == 0)
  {
    v38 = *&self->encodeTransform;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = sub_239955C30;
    v69[3] = &unk_278AC37A8;
    v69[4] = self;
    objc_msgSend_addCompletedHandler_(commandBuffer, v39, v69);
  }

  v40 = objc_msgSend_width(source, v36, v37, v61);
  v68 = 1.0 / (objc_msgSend_height(source, v41, v42) * v40);
  objc_msgSend_setBuffer_offset_atIndex_(v27, v43, histogram, histogramOffset, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v27, v44, *&self->encodeTransform, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v27, v45, *&self->encodeTransform, 16 * self->histogramEntries, 2);
  objc_msgSend_setBytes_length_atIndex_(v27, v46, &v68, 4, 3);
  objc_msgSend_setThreadgroupMemoryLength_atIndex_(v27, v47, 1024, 0);
  v66 = v22;
  v67 = vdupq_n_s64(1uLL);
  v64 = xmmword_239988A80;
  v65 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v27, v48, &v66, &v64);
  if (self->histogramEntries >= 0x101)
  {
    v52 = MPSLibrary::GetComputeState();
    if (!v52)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v58 = objc_opt_class();
        v61 = NSStringFromClass(v58);
        MTLReportFailure();
      }

      goto LABEL_42;
    }

    objc_msgSend_setComputePipelineState_(v27, v51, v52);
    MPSLibrary::ReleaseComputeState();
    v63 = LODWORD(v68);
    WORD2(v63) = self->histogramEntries >> 8;
    objc_msgSend_setBuffer_offset_atIndex_(v27, v53, *&self->encodeTransform, 0, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v27, v54, *&self->encodeTransform, 16 * self->histogramEntries, 1);
    objc_msgSend_setBytes_length_atIndex_(v27, v55, &v63, 8, 2);
    v66 = v22;
    v67 = vdupq_n_s64(1uLL);
    v64 = xmmword_239988A80;
    v65 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v27, v56, &v66, &v64);
  }

  LOBYTE(self[1].super.super.super.isa) = 1;
LABEL_42:
  objc_msgSend_endEncoding(v27, v49, v50, v61);
}

@end