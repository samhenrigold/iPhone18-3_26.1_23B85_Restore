@interface MPSImageHistogram
- (MPSImageHistogram)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageHistogram)initWithDevice:(id)device;
- (MPSImageHistogram)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo;
- (MPSImageHistogramInfo)histogramInfo;
- (MTLRegion)clipRectSource;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (size_t)histogramSizeForSourceFormat:(MTLPixelFormat)sourceFormat;
- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTextures:(id)textures histogram:(id)histogram histogramOffset:(unint64_t)offset kernelDAGObject:(id)object inputExtent:(id *)extent srcStyle:(int)self0;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)source histogram:(id)histogram histogramOffset:(NSUInteger)histogramOffset;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture histogram:(id)histogram histogramOffset:(unint64_t)offset;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sources:(id)sources histogram:(id)histogram histogramOffset:(unint64_t)offset kernelDAGObject:(id)object;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRectSource:(MTLRegion *)clipRectSource;
@end

@implementation MPSImageHistogram

- (MPSImageHistogram)initWithDevice:(id)device
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
  retstr->numberOfHistogramEntries = self[1].maxPixelValue.u64[1];
  retstr->histogramForAlpha = self[2].numberOfHistogramEntries;
  maxPixelValue = self[2].maxPixelValue;
  retstr->minPixelValue = self[2].minPixelValue;
  retstr->maxPixelValue = maxPixelValue;
  return self;
}

- (MPSImageHistogram)initWithDevice:(id)device histogramInfo:(const MPSImageHistogramInfo *)histogramInfo
{
  v17.receiver = self;
  v17.super_class = MPSImageHistogram;
  result = [(MPSKernel *)&v17 initWithDevice:device];
  if (!result)
  {
    return result;
  }

  if (!histogramInfo)
  {
    v15 = result;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ((histogramInfo->numberOfHistogramEntries & (histogramInfo->numberOfHistogramEntries - 1)) != 0)
  {
    v15 = result;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_13:
      v16 = objc_opt_class();
      NSStringFromClass(v16);
      MTLReportFailure();
    }

LABEL_14:

    return 0;
  }

  result->histogramEntries = histogramInfo->numberOfHistogramEntries;
  result->histogramAlpha = histogramInfo->histogramForAlpha;
  *result->minPixelValue = histogramInfo->minPixelValue;
  maxPixelValue = histogramInfo->maxPixelValue;
  *result->maxPixelValue = maxPixelValue;
  __asm { FMOV            V2.4S, #1.0 }

  v12 = (vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_f32(*result->minPixelValue), vceqq_f32(maxPixelValue, _Q2))))) & 1) != 0 || result->histogramEntries >= 0x401;
  result->useMinMaxHistogramKernel = v12;
  v13 = *MEMORY[0x277CD7200];
  v14 = *(MEMORY[0x277CD7200] + 32);
  *&result->_clipRectSource.origin.z = *(MEMORY[0x277CD7200] + 16);
  *&result->_clipRectSource.size.height = v14;
  *&result->_clipRectSource.origin.x = v13;
  result->_zeroHistogram = 1;
  *&result->_minPixelThresholdValue[7] = 0;
  *&result->_minPixelThresholdValue[15] = 0;
  result->_histogramAtomicType = 0;
  return result;
}

- (MPSImageHistogram)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v49.receiver = self;
  v49.super_class = MPSImageHistogram;
  v5 = [(MPSKernel *)&v49 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (v5)
  {
    if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v5->histogramEntries = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageHistogram.histogramEntries");
      v7->histogramAlpha = objc_msgSend_decodeBoolForKey_(aDecoder, v8, @"MPSImageHistogram.histogramAlpha");
      objc_msgSend_decodeFloatForKey_(aDecoder, v9, @"MPSImageHistogram.minPixelValueX");
      *v7->minPixelValue = v10;
      objc_msgSend_decodeFloatForKey_(aDecoder, v11, @"MPSImageHistogram.minPixelValueY");
      *&v7->minPixelValue[4] = v12;
      objc_msgSend_decodeFloatForKey_(aDecoder, v13, @"MPSImageHistogram.minPixelValueZ");
      *&v7->minPixelValue[8] = v14;
      objc_msgSend_decodeFloatForKey_(aDecoder, v15, @"MPSImageHistogram.minPixelValueW");
      *&v7->minPixelValue[12] = v16;
      objc_msgSend_decodeFloatForKey_(aDecoder, v17, @"MPSImageHistogram.maxPixelValueX");
      *v7->maxPixelValue = v18;
      objc_msgSend_decodeFloatForKey_(aDecoder, v19, @"MPSImageHistogram.maxPixelValueY");
      *&v7->maxPixelValue[4] = v20;
      objc_msgSend_decodeFloatForKey_(aDecoder, v21, @"MPSImageHistogram.maxPixelValueZ");
      *&v7->maxPixelValue[8] = v22;
      objc_msgSend_decodeFloatForKey_(aDecoder, v23, @"MPSImageHistogram.maxPixelValueW");
      v25 = *v7->maxPixelValue;
      *&v7->maxPixelValue[12] = v26;
      v25.i32[3] = v26;
      __asm { FMOV            V0.4S, #1.0 }

      v32 = (vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_f32(*v7->minPixelValue), vceqq_f32(v25, _Q0))))) & 1) != 0 || v7->histogramEntries != 256;
      v7->useMinMaxHistogramKernel = v32;
      v7->_clipRectSource.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v24, @"MPSImageHistogram.clipRectSource.origin.x");
      v7->_clipRectSource.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v34, @"MPSImageHistogram.clipRectSource.origin.y");
      v7->_clipRectSource.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v35, @"MPSImageHistogram.clipRectSource.origin.z");
      v7->_clipRectSource.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v36, @"MPSImageHistogram.clipRectSource.size.width");
      v7->_clipRectSource.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v37, @"MPSImageHistogram.clipRectSource.size.height");
      v7->_clipRectSource.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v38, @"MPSImageHistogram.clipRectSource.size.depth");
      v7->_zeroHistogram = objc_msgSend_decodeBoolForKey_(aDecoder, v39, @"MPSImageHistogram.zeroHistogram");
      objc_msgSend_decodeFloatForKey_(aDecoder, v40, @"MPSImageHistogram.minPixelThresholdValueX");
      *&v7->_minPixelThresholdValue[7] = v41;
      objc_msgSend_decodeFloatForKey_(aDecoder, v42, @"MPSImageHistogram.minPixelThresholdValueY");
      *&v7->_minPixelThresholdValue[11] = v43;
      objc_msgSend_decodeFloatForKey_(aDecoder, v44, @"MPSImageHistogram.minPixelThresholdValueZ");
      *&v7->_minPixelThresholdValue[15] = v45;
      objc_msgSend_decodeFloatForKey_(aDecoder, v46, @"MPSImageHistogram.minPixelThresholdValueW");
      *&v7->_minPixelThresholdValue[19] = v47;
      v7->_histogramAtomicType = 0;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v33 = objc_opt_class();
        NSStringFromClass(v33);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v38.receiver = self;
  v38.super_class = MPSImageHistogram;
  [(MPSKernel *)&v38 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, selfCopy->histogramEntries, @"MPSImageHistogram.histogramEntries");
  objc_msgSend_encodeBool_forKey_(coder, v6, selfCopy->histogramAlpha, @"MPSImageHistogram.histogramAlpha");
  LODWORD(v7) = *selfCopy->minPixelValue;
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"MPSImageHistogram.minPixelValueX", v7);
  LODWORD(v9) = *&selfCopy->minPixelValue[4];
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"MPSImageHistogram.minPixelValueY", v9);
  LODWORD(v11) = *&selfCopy->minPixelValue[8];
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"MPSImageHistogram.minPixelValueZ", v11);
  LODWORD(v13) = *&selfCopy->minPixelValue[12];
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"MPSImageHistogram.minPixelValueW", v13);
  LODWORD(v15) = *selfCopy->maxPixelValue;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"MPSImageHistogram.maxPixelValueX", v15);
  LODWORD(v17) = *&selfCopy->maxPixelValue[4];
  objc_msgSend_encodeFloat_forKey_(coder, v18, @"MPSImageHistogram.maxPixelValueY", v17);
  LODWORD(v19) = *&selfCopy->maxPixelValue[8];
  objc_msgSend_encodeFloat_forKey_(coder, v20, @"MPSImageHistogram.maxPixelValueZ", v19);
  LODWORD(v21) = *&selfCopy->maxPixelValue[12];
  objc_msgSend_encodeFloat_forKey_(coder, v22, @"MPSImageHistogram.maxPixelValueW", v21);
  objc_msgSend_encodeInt64_forKey_(coder, v23, selfCopy->_clipRectSource.origin.x, @"MPSImageHistogram.clipRectSource.origin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v24, selfCopy->_clipRectSource.origin.y, @"MPSImageHistogram.clipRectSource.origin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v25, selfCopy->_clipRectSource.origin.z, @"MPSImageHistogram.clipRectSource.origin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v26, selfCopy->_clipRectSource.size.width, @"MPSImageHistogram.clipRectSource.size.width");
  objc_msgSend_encodeInt64_forKey_(coder, v27, selfCopy->_clipRectSource.size.height, @"MPSImageHistogram.clipRectSource.size.height");
  objc_msgSend_encodeInt64_forKey_(coder, v28, selfCopy->_clipRectSource.size.depth, @"MPSImageHistogram.clipRectSource.size.depth");
  objc_msgSend_encodeBool_forKey_(coder, v29, selfCopy->_zeroHistogram, @"MPSImageHistogram.zeroHistogram");
  selfCopy = (selfCopy + 208);
  LODWORD(v30) = selfCopy->super.super.isa;
  objc_msgSend_encodeFloat_forKey_(coder, v31, @"MPSImageHistogram.minPixelThresholdValueX", v30);
  LODWORD(v32) = HIDWORD(selfCopy->super.super.isa);
  objc_msgSend_encodeFloat_forKey_(coder, v33, @"MPSImageHistogram.minPixelThresholdValueY", v32);
  LODWORD(v34) = selfCopy->super._options;
  objc_msgSend_encodeFloat_forKey_(coder, v35, @"MPSImageHistogram.minPixelThresholdValueZ", v34);
  LODWORD(v36) = HIDWORD(selfCopy->super._options);
  objc_msgSend_encodeFloat_forKey_(coder, v37, @"MPSImageHistogram.minPixelThresholdValueW", v36);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSImageHistogram;
  result = [(MPSKernel *)&v8 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 11) = self->histogramEntries;
    *(result + 96) = self->histogramAlpha;
    *(result + 7) = *self->minPixelValue;
    *(result + 8) = *self->maxPixelValue;
    *(result + 144) = self->useMinMaxHistogramKernel;
    v7 = *&self->_clipRectSource.origin.z;
    v6 = *&self->_clipRectSource.size.height;
    *(result + 152) = *&self->_clipRectSource.origin.x;
    *(result + 168) = v7;
    *(result + 184) = v6;
    *(result + 200) = self->_zeroHistogram;
    *(result + 13) = *&self->_minPixelThresholdValue[7];
    *(result + 28) = self->_histogramAtomicType;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSImageHistogram;
  v4 = [(MPSKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tHistogram Entries:  %lu\n\tHistogram for Alpha: %d \n\tminPixelValue: %f %f %f %f\n\tmaxPixelValue: %f %f %f %f", v4, self->histogramEntries, self->histogramAlpha, COERCE_FLOAT(*self->minPixelValue), COERCE_FLOAT(HIDWORD(*self->minPixelValue)), COERCE_FLOAT(*&self->minPixelValue[8]), COERCE_FLOAT(HIDWORD(*self->minPixelValue)), COERCE_FLOAT(*self->maxPixelValue), COERCE_FLOAT(HIDWORD(*self->maxPixelValue)), COERCE_FLOAT(*&self->maxPixelValue[8]), COERCE_FLOAT(HIDWORD(*self->maxPixelValue)));
}

- (size_t)histogramSizeForSourceFormat:(MTLPixelFormat)sourceFormat
{
  PixelInfo = MPSDevice::GetPixelInfo(*(&self->super.super.isa + *MEMORY[0x277CD7350]), sourceFormat, MPSImageFeatureChannelFormatNone);
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && ((PixelInfo & 0x800000000000) == 0 || (PixelInfo & 0xF000000) == 0))
  {
    v7 = PixelInfo;
    v8 = MTLReportFailureTypeEnabled();
    LODWORD(PixelInfo) = v7;
    if (v8)
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      MTLReportFailure();
      LODWORD(PixelInfo) = v7;
    }
  }

  v5 = BYTE3(PixelInfo) & 0xF;
  if (v5 == 4)
  {
    if (self->histogramAlpha)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  return self->histogramEntries * 4 * v5;
}

- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTextures:(id)textures histogram:(id)histogram histogramOffset:(unint64_t)offset kernelDAGObject:(id)object inputExtent:(id *)extent srcStyle:(int)self0
{
  v13 = MEMORY[0x277CD7370];
  if (self->_zeroHistogram)
  {
    v14 = self->histogramEntries * dword_239988CF0[style];
    ComputeState = MPSLibrary::GetComputeState();
    if (!ComputeState)
    {
      return;
    }

    v18 = ComputeState;
    v19 = objc_msgSend_threadExecutionWidth(ComputeState, v16, v17);
    objc_msgSend_setComputePipelineState_(encoder, v20, v18);
    MPSLibrary::ReleaseComputeState();
    v22 = v14 >> 10;
    if (v14 >> 10 <= 1)
    {
      v22 = 1;
    }

    if (v14 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    if (v14 > 0xFF)
    {
      v25 = 1024;
      if (v14 < 0x400)
      {
        v25 = v14;
      }

      v24 = v25 >> 2;
    }

    else
    {
      if (v14 <= v19)
      {
        v24 = v19;
      }

      else
      {
        v24 = v14;
      }

      *v74 = v14;
      objc_msgSend_setBytes_length_atIndex_(encoder, v21, v74, 4, 1);
    }

    objc_msgSend_setBuffer_offset_atIndex_(encoder, v21, histogram, offset, 0);
    *v74 = v23;
    *&v74[8] = vdupq_n_s64(1uLL);
    v79 = v24;
    v80 = *&v74[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v26, v74, &v79);
  }

  v27 = 0;
  v28 = *&self->_minPixelThresholdValue[7];
  if (*v28.i32 > 0.0)
  {
    v29 = vcgtz_f32(vext_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL), 4uLL));
    if (v29.i8[0] & 1) != 0 && (v29.i8[4])
    {
      v27 = *&v28.i32[3] > 0.0;
    }
  }

  if (self->useMinMaxHistogramKernel)
  {
    if (v27)
    {
      v30 = 25;
    }

    else
    {
      v30 = 20;
    }
  }

  else
  {
    histogramAtomicType = self->_histogramAtomicType;
    if (!histogramAtomicType)
    {
      v32 = *(&self->super.super.isa + *MEMORY[0x277CD7350]);
      if ((*(v32 + 1477) & 4) != 0 && *(v32 + 1472) < 7)
      {
        histogramAtomicType = 1;
      }

      else
      {
        histogramAtomicType = 2;
      }
    }

    v33 = !v27;
    if (v27)
    {
      v34 = 5;
    }

    else
    {
      v34 = 0;
    }

    if (v33)
    {
      v35 = 10;
    }

    else
    {
      v35 = 15;
    }

    if (histogramAtomicType == 1)
    {
      v30 = v34;
    }

    else
    {
      v30 = v35;
    }
  }

  v77 = -1;
  *&v36 = -1;
  *(&v36 + 1) = -1;
  v75 = v36;
  v76 = v36;
  *v74 = v36;
  *&v74[16] = 0xFFFFFFFFFFFFFFFFLL;
  if (object)
  {
    v77 = *(objc_msgSend_graph(object, a2, encoder) + 72);
    v39 = *(objc_msgSend_graph(object, v37, v38) + 76);
    v40 = 128;
    if (style == 4)
    {
      v40 = 384;
    }

    v41 = (v30 + style);
    v78 = v40 & 0xFFFFFFFFFFFFFF81 | (2 * (v39 & 0x3F)) | 1;
  }

  else
  {
    v77 = 1;
    v41 = (v30 + style);
    v78 = 256;
  }

  v42 = *v13;
  objc_msgSend_copy(**((*(&self->super.super.isa + v42))[35] + 16 * v41), a2, encoder);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    objc_msgSend_setComputePipelineState_(encoder, v44, PipelineStateForMPSKey, object, 0, 0, 0, 0);
    MPSLibrary::ReleaseComputeState();
    if (v41 >= 0x20 && MTLReportFailureTypeEnabled())
    {
      styleCopy = style;
      v68 = 32;
      v66 = v30;
      MTLReportFailure();
    }

    v47 = *(*((*(&self->super.super.isa + v42))[35] + 16 * v41) + 64);
    v48 = v47 - 2;
    if ((v47 - 2) > 3)
    {
      LOBYTE(v50) = 4;
      v49 = 15;
    }

    else
    {
      v49 = qword_239988D58[v48];
      v50 = qword_239988D78[v48];
    }

    v51 = 0;
    v52 = *self->minPixelValue;
    histogramEntries = self->histogramEntries;
    *v46.i32 = histogramEntries;
    v54 = vdivq_f32(vdupq_lane_s32(v46, 0), vsubq_f32(*self->maxPixelValue, v52));
    v76 = 0uLL;
    *v74 = v52;
    *&v74[16] = v54;
    v75 = *&self->_minPixelThresholdValue[7];
    *v54.f32 = vmovn_s64(*&extent->var0.var0);
    WORD1(v76) = v54.i16[2];
    LOWORD(v76) = v54.i16[0];
    var1 = extent->var1.var1;
    *v52.f32 = vmovn_s64(*&extent->var1.var0);
    var0 = extent->var1.var0;
    WORD3(v76) = v52.i16[2];
    WORD2(v76) = v52.i16[0];
    *(&v76 + 2) = (histogramEntries - 1);
    WORD6(v76) = histogramEntries;
    if (style > 2)
    {
      if (style != 3)
      {
        if (style == 4)
        {
          v51 = 16 * histogramEntries;
        }

        goto LABEL_57;
      }

      histogramEntries *= 3;
    }

    else if (style != 1)
    {
      if (style == 2)
      {
        v51 = 8 * histogramEntries;
        v57 = var0 + v49;
        v58 = var1 + v49;
        if (!object)
        {
LABEL_64:
          v64 = objc_msgSend_objectAtIndexedSubscript_(textures, v45, 0, v66, styleCopy, v68);
          objc_msgSend_setTexture_atIndex_(encoder, v65, v64, 1);
          v60 = v57 >> v50;
          v61 = v58 >> v50;
          if ((v47 - 3) > 2)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

LABEL_58:
        MPSSetResourcesOnCommandEncoder();
        v60 = v57 >> v50;
        v61 = v58 >> v50;
        if ((v47 - 3) > 2)
        {
LABEL_60:
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v59, histogram, offset, 29, v66, styleCopy, v68);
          objc_msgSend_setBytes_length_atIndex_(encoder, v62, v74, 64, 28);
          v79 = v60;
          *&v80 = v61;
          *(&v80 + 1) = 1;
          v72 = vdupq_n_s64(0x10uLL);
          v73 = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v63, &v79, &v72);
          return;
        }

LABEL_59:
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(encoder, v59, v51, 0, v66, styleCopy, v68);
        goto LABEL_60;
      }

LABEL_57:
      v57 = var0 + v49;
      v58 = var1 + v49;
      if (!object)
      {
        goto LABEL_64;
      }

      goto LABEL_58;
    }

    v51 = 4 * histogramEntries;
    v57 = var0 + v49;
    v58 = var1 + v49;
    if (!object)
    {
      goto LABEL_64;
    }

    goto LABEL_58;
  }
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sources:(id)sources histogram:(id)histogram histogramOffset:(unint64_t)offset kernelDAGObject:(id)object
{
  v12 = MEMORY[0x277CD7378];
  if (object)
  {
    v13 = 0;
    v14 = *MEMORY[0x277CD7378];
LABEL_3:
    if (!histogram && (*(&self->super.super.isa + v14) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v53 = objc_opt_class();
      v56 = NSStringFromClass(v53);
      MTLReportFailure();
    }

    if (object)
    {
      v15 = objc_msgSend_graph(object, a2, encoder);
      v16 = **(***(v15 + 56) + 8);
      if (*(*(***(v15 + 56) + 8) + 8) != v16)
      {
        if ((*(*(*v16 + 16) + 8) - **(*v16 + 16)) >= 0)
        {
          operator new();
        }

        sub_239955CF4();
      }

      sub_239955C4C();
    }

    v30 = objc_msgSend_width(v13, a2, encoder);
    v33 = objc_msgSend_height(v13, v31, v32);
    v34 = *(&self->super.super.isa + *MEMORY[0x277CD7350]);
    v37 = objc_msgSend_pixelFormat(v13, v35, v36);
    v38 = (MPSDevice::GetPixelInfo(v34, v37, MPSImageFeatureChannelFormatNone) >> 24) & 0xF;
    memset(&v63, 0, sizeof(v63));
    v62.width = v30;
    v62.height = v33;
    v62.depth = 1;
    v39 = *&self->_clipRectSource.origin.z;
    *&v61.origin.x = *&self->_clipRectSource.origin.x;
    *&v61.origin.z = v39;
    *&v61.size.height = *&self->_clipRectSource.size.height;
    MPSGetEffectiveClipRegion(&v63, &v62, &v61);
    if ((*(&self->super.super.isa + v14) & 1) == 0)
    {
      v41 = v38 == 15 || v38 == 0;
      if (v41 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if ((self->histogramEntries & (self->histogramEntries - 1)) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v63.size.width + v63.origin.x > v30 && MTLReportFailureTypeEnabled())
      {
        v56 = (v63.size.width + v63.origin.x);
        v57 = v30;
        MTLReportFailure();
      }

      if (v63.size.height + v63.origin.y > v33 && MTLReportFailureTypeEnabled())
      {
        v56 = (v63.size.height + v63.origin.y);
        v57 = v33;
        MTLReportFailure();
      }
    }

    if (v63.size.height && v63.size.width)
    {
      if (v38 == 4)
      {
        if (self->histogramAlpha)
        {
          v38 = 4;
        }

        else
        {
          v38 = 3;
        }
      }

      bufferCopy = buffer;
      if (encoder)
      {
        v61 = v63;
        LODWORD(v57) = v38;
        objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTextures_histogram_histogramOffset_kernelDAGObject_inputExtent_srcStyle_(self, v40, encoder, buffer, sources, histogram, offset, 0, &v61, v57);
      }

      else
      {
        v43 = objc_alloc(MEMORY[0x277CD7210]);
        v46 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v43, v44, buffer, 0);
        v62.width = v46;
        v62.height = self;
        if ((*(&self->super.super.isa + v14) & 0x18) != 0)
        {
          v47 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
          if (v47 || (v48 = objc_opt_class(), v49 = NSStringFromClass(v48), objc_msgSend_setLabel_(self, v50, v49), (v47 = v49) != 0))
          {
            objc_msgSend_setLabel_(v46, v45, v47, v56, v57);
          }
        }

        v61 = v63;
        LODWORD(v57) = v38;
        objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTextures_histogram_histogramOffset_kernelDAGObject_inputExtent_srcStyle_(self, v45, v46, bufferCopy, sources, histogram, offset, 0, &v61, v57);
        objc_msgSend_endEncoding(v46, v51, v52);
      }
    }

    return;
  }

  v13 = objc_msgSend_objectAtIndexedSubscript_(sources, a2, 0);
  v14 = *v12;
  v19 = *(&self->super.super.isa + v14);
  if ((v19 & 1) == 0)
  {
    v20 = *(&self->super.super.isa + *MEMORY[0x277CD7350]);
    v21 = objc_msgSend_pixelFormat(0, v17, v18);
    v24 = objc_msgSend_pixelFormat(v13, v22, v23);
    MPSDevice::GetPixelInfo(v20, v21, MPSImageFeatureChannelFormatNone);
    PixelInfo = MPSDevice::GetPixelInfo(v20, v24, MPSImageFeatureChannelFormatNone);
    if (!v13 && MTLReportFailureTypeEnabled())
    {
      v54 = objc_opt_class();
      v56 = NSStringFromClass(v54);
      MTLReportFailure();
    }

    if ((v19 & 0xFFFFFFFFFFFFFFE0) != 0 && MTLReportFailureTypeEnabled())
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = v19 & 0xFFFFFFFFFFFFFFE0;
      MTLReportFailure();
    }

    objc_msgSend_textureType(v13, v25, v26, v56, v57);
    if (objc_msgSend_textureType(v13, v28, v29) != 2 && MTLReportFailureTypeEnabled())
    {
      v56 = v13;
      MTLReportFailure();
    }

    if ((~PixelInfo & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      v56 = v13;
      v57 = v24;
      MTLReportFailure();
    }
  }

  if (v13 && (objc_msgSend_isEqual_(v13, v17, 0) & 1) == 0)
  {
    goto LABEL_3;
  }
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture histogram:(id)histogram histogramOffset:(unint64_t)offset
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = texture;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v14, 1);
  objc_msgSend_encodeToCommandEncoder_commandBuffer_sources_histogram_histogramOffset_kernelDAGObject_(self, v13, encoder, buffer, v12, histogram, offset, 0);
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)source histogram:(id)histogram histogramOffset:(NSUInteger)histogramOffset
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = source;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v12, 1);
  objc_msgSend_encodeToCommandEncoder_commandBuffer_sources_histogram_histogramOffset_kernelDAGObject_(self, v11, 0, commandBuffer, v10, histogram, histogramOffset, 0);
}

- (MTLRegion)clipRectSource
{
  v3 = *&self[3].size.width;
  *&retstr->origin.x = *&self[3].origin.y;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[3].size.depth;
  return self;
}

- (void)setClipRectSource:(MTLRegion *)clipRectSource
{
  v4 = *&clipRectSource->origin.z;
  v3 = *&clipRectSource->size.height;
  *&self->_clipRectSource.origin.x = *&clipRectSource->origin.x;
  *&self->_clipRectSource.origin.z = v4;
  *&self->_clipRectSource.size.height = v3;
}

@end