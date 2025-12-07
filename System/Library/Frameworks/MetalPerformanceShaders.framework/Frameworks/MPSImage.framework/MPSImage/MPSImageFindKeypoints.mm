@interface MPSImageFindKeypoints
- (MPSImageFindKeypoints)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageFindKeypoints)initWithDevice:(id)device info:(const MPSImageKeypointRangeInfo *)info;
- (MPSImageKeypointRangeInfo)keypointRangeInfo;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture regions:(id *)regions numberOfRegions:(unint64_t)ofRegions keypointCountBuffer:(id)countBuffer keypointCountBufferOffset:(unint64_t)offset keypointDataBuffer:(id)self0 keypointDataBufferOffset:(unint64_t)self1 rectangles:(id *)self2 histogramBuffer:(id)self3 keypointInfoBuffer:(id)self4 rowCountersBuffer:(id)self5 heightCountersBuffer:(id)self6 maxRectangleHeight:(unint64_t)self7;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture regions:(id *)regions numberOfRegions:(unint64_t)ofRegions keypointCountBuffer:(id)countBuffer keypointCountBufferOffset:(unint64_t)offset keypointDataBuffer:(id)self0 keypointDataBufferOffset:(unint64_t)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageFindKeypoints

- (MPSImageKeypointRangeInfo)keypointRangeInfo
{
  p_keypointRangeInfo = &self->_keypointRangeInfo;
  maximumKeypoints = self->_keypointRangeInfo.maximumKeypoints;
  minimumThresholdValue_low = LODWORD(p_keypointRangeInfo->minimumThresholdValue);
  result.minimumThresholdValue = *&minimumThresholdValue_low;
  result.maximumKeypoints = maximumKeypoints;
  return result;
}

- (MPSImageFindKeypoints)initWithDevice:(id)device info:(const MPSImageKeypointRangeInfo *)info
{
  v10.receiver = self;
  v10.super_class = MPSImageFindKeypoints;
  result = [(MPSKernel *)&v10 initWithDevice:device];
  if (result)
  {
    if (info)
    {
      if (info->maximumKeypoints)
      {
        minimumThresholdValue = info->minimumThresholdValue;
        if (minimumThresholdValue >= 0.0 && minimumThresholdValue <= 1.0)
        {
          result->_keypointRangeInfo.maximumKeypoints = info->maximumKeypoints;
          result->_keypointRangeInfo.minimumThresholdValue = minimumThresholdValue;
          return result;
        }

        v8 = result;
        if (MTLReportFailureTypeEnabled())
        {
          goto LABEL_15;
        }

LABEL_16:

        return 0;
      }

      v8 = result;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }
    }

    else
    {
      v8 = result;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    v9 = objc_opt_class();
    NSStringFromClass(v9);
    MTLReportFailure();
    goto LABEL_16;
  }

  return result;
}

- (MPSImageFindKeypoints)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v12.receiver = self;
  v12.super_class = MPSImageFindKeypoints;
  v5 = [(MPSKernel *)&v12 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_keypointRangeInfo.maximumKeypoints = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageHistogram.maximumKeypointsEntries");
    objc_msgSend_decodeFloatForKey_(aDecoder, v8, @"MPSImageHistogram.minimumThresholdValue");
    v7->_keypointRangeInfo.minimumThresholdValue = v9;
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    NSStringFromClass(v11);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v8.receiver = self;
  v8.super_class = MPSImageFindKeypoints;
  [(MPSKernel *)&v8 encodeWithCoder:?];
  selfCopy = (selfCopy + 88);
  objc_msgSend_encodeInt64_forKey_(coder, v5, selfCopy->super.super.isa, @"MPSImageHistogram.maximumKeypointsEntries");
  LODWORD(v6) = selfCopy->super._options;
  objc_msgSend_encodeFloat_forKey_(coder, v7, @"MPSImageHistogram.minimumThresholdValue", v6);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSImageFindKeypoints;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 88) = self->_keypointRangeInfo;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSImageFindKeypoints;
  v4 = [(MPSKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tMaximum Keypoints: %d \n\tMinimum Threshold Value: %f", v4, self->_keypointRangeInfo.maximumKeypoints, self->_keypointRangeInfo.minimumThresholdValue);
}

- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture regions:(id *)regions numberOfRegions:(unint64_t)ofRegions keypointCountBuffer:(id)countBuffer keypointCountBufferOffset:(unint64_t)offset keypointDataBuffer:(id)self0 keypointDataBufferOffset:(unint64_t)self1 rectangles:(id *)self2 histogramBuffer:(id)self3 keypointInfoBuffer:(id)self4 rowCountersBuffer:(id)self5 heightCountersBuffer:(id)self6 maxRectangleHeight:(unint64_t)self7
{
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(encoder, v21, ComputeState);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setTexture_atIndex_(encoder, v22, texture, 0);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v23, histogramBuffer, 0, 0);
    objc_msgSend_setBytes_length_atIndex_(encoder, v24, &self->_keypointRangeInfo.minimumThresholdValue, 4, 1);
    v25 = 8 * ofRegions;
    objc_msgSend_setBytes_length_atIndex_(encoder, v26, rectangles);
    ofRegionsCopy3 = ofRegions;
    v68 = vdupq_n_s64(1uLL);
    *v66 = vdupq_n_s64(0x10uLL);
    *&v66[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v27, &ofRegionsCopy3, v66);
    v28 = MPSLibrary::GetComputeState();
    if (v28)
    {
      objc_msgSend_setComputePipelineState_(encoder, v29, v28);
      MPSLibrary::ReleaseComputeState();
      v31 = self->_keypointRangeInfo.minimumThresholdValue * 256.0;
      if (v31 > 255.0)
      {
        v31 = 255.0;
      }

      v65[0] = self->_keypointRangeInfo.maximumKeypoints;
      v65[1] = v31;
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v30, histogramBuffer, 0, 0);
      objc_msgSend_setBytes_length_atIndex_(encoder, v32, v65, 4, 1);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v33, infoBuffer, 0, 2);
      objc_msgSend_setThreadgroupMemoryLength_atIndex_(encoder, v34, 1040, 0);
      ofRegionsCopy3 = ofRegions;
      v68 = vdupq_n_s64(1uLL);
      *v66 = xmmword_239988A80;
      *&v66[16] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v35, &ofRegionsCopy3, v66);
      v36 = MPSLibrary::GetComputeState();
      if (v36)
      {
        objc_msgSend_setComputePipelineState_(encoder, v37, v36);
        MPSLibrary::ReleaseComputeState();
        objc_msgSend_setTexture_atIndex_(encoder, v38, texture, 0);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v39, infoBuffer, 0, 0);
        objc_msgSend_setBytes_length_atIndex_(encoder, v40, rectangles, v25, 1);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v41, countersBuffer, 0, 2);
        objc_msgSend_setThreadgroupMemoryLength_atIndex_(encoder, v42, 128, 0);
        ofRegionsCopy3 = height;
        v68.i64[0] = ofRegions;
        v68.i64[1] = 1;
        *v66 = 32;
        *&v66[8] = vdupq_n_s64(1uLL);
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v43, &ofRegionsCopy3, v66);
        v44 = MPSLibrary::GetComputeState();
        if (v44)
        {
          objc_msgSend_setComputePipelineState_(encoder, v45, v44);
          MPSLibrary::ReleaseComputeState();
          objc_msgSend_setTexture_atIndex_(encoder, v46, texture, 0);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v47, infoBuffer, 0, 0);
          objc_msgSend_setBytes_length_atIndex_(encoder, v48, rectangles, v25, 1);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v49, countersBuffer, 0, 2);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v50, heightCountersBuffer, 0, 3);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v51, countBuffer, offset, 4);
          ofRegionsCopy3 = ofRegions;
          v68 = vdupq_n_s64(1uLL);
          *v66 = v68;
          *&v66[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v52, &ofRegionsCopy3, v66);
          v53 = MPSLibrary::GetComputeState();
          if (v53)
          {
            objc_msgSend_setComputePipelineState_(encoder, v54, v53);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_setTexture_atIndex_(encoder, v55, texture, 0);
            objc_msgSend_setBytes_length_atIndex_(encoder, v56, v65, 4, 0);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v57, infoBuffer, 0, 1);
            objc_msgSend_setBytes_length_atIndex_(encoder, v58, rectangles, v25, 2);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v59, countersBuffer, 0, 3);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v60, heightCountersBuffer, 0, 4);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v61, dataBuffer, bufferOffset, 5);
            ofRegionsCopy3 = (height + 31) >> 5;
            v68.i64[0] = ofRegions;
            v68.i64[1] = 1;
            *v66 = 32;
            *&v66[8] = vdupq_n_s64(1uLL);
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v62, &ofRegionsCopy3, v66);
          }
        }
      }
    }

    free(rectangles);
  }

  else
  {

    free(rectangles);
  }
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture regions:(id *)regions numberOfRegions:(unint64_t)ofRegions keypointCountBuffer:(id)countBuffer keypointCountBufferOffset:(unint64_t)offset keypointDataBuffer:(id)self0 keypointDataBufferOffset:(unint64_t)self1
{
  v17 = *MEMORY[0x277CD7378];
  v18 = *(&self->super.super.isa + v17);
  if ((v18 & 1) == 0)
  {
    if (!texture && MTLReportFailureTypeEnabled())
    {
      v55 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v55);
      MTLReportFailure();
    }

    v19 = v18 & 0xFFFFFFFFFFFFFFE2;
    if (v19 && MTLReportFailureTypeEnabled())
    {
      v56 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v56);
      v66 = v19;
      MTLReportFailure();
    }

    objc_msgSend_textureType(texture, a2, encoder, textureCopy2, v66);
    if (objc_msgSend_textureType(texture, v20, v21) != 2 && MTLReportFailureTypeEnabled())
    {
      textureCopy = texture;
      MTLReportFailure();
    }

    objc_msgSend_pixelFormat(texture, v22, v23, textureCopy);
    if (objc_msgSend_pixelFormat(texture, v24, v25) != 10 && MTLReportFailureTypeEnabled())
    {
      textureCopy2 = texture;
      v66 = objc_msgSend_pixelFormat(texture, v57, v58);
      MTLReportFailure();
    }
  }

  if ((*(&self->super.super.isa + v17) & 1) == 0)
  {
    if (!regions && MTLReportFailureTypeEnabled())
    {
      v59 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v59);
      MTLReportFailure();
    }

    if (!ofRegions && MTLReportFailureTypeEnabled())
    {
      v60 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v60);
      MTLReportFailure();
    }

    if (!countBuffer && MTLReportFailureTypeEnabled())
    {
      v61 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v61);
      MTLReportFailure();
    }

    if (!dataBuffer && MTLReportFailureTypeEnabled())
    {
      v62 = objc_opt_class();
      textureCopy2 = NSStringFromClass(v62);
      MTLReportFailure();
    }
  }

  selfCopy = self;
  v26 = MEMORY[0x23EE7BAC0](v72, buffer, 0);
  TempBuffer = MPSAutoCache::GetTempBuffer(v26, ofRegions << 10, 0);
  v28 = malloc_type_malloc(8 * ofRegions, 0x100004000313F17uLL);
  v29 = v28;
  countBufferCopy = countBuffer;
  bufferCopy = buffer;
  regionsCopy = regions;
  v30 = 0;
  if (ofRegions)
  {
    v31 = v28 + 2;
    p_var1 = &regions->var1.var1;
    ofRegionsCopy = ofRegions;
    do
    {
      v34 = vmovn_s64(*(p_var1 - 2));
      *(v31 - 1) = v34.i16[2];
      *(v31 - 2) = v34.i16[0];
      v35 = vmovn_s64(*(p_var1 - 1));
      v31[1] = v35.i16[2];
      *v31 = v35.i16[0];
      v31 += 4;
      v37 = *p_var1;
      p_var1 += 6;
      v36 = v37;
      if (v30 <= v37)
      {
        v30 = v36;
      }

      --ofRegionsCopy;
    }

    while (ofRegionsCopy);
  }

  v38 = MPSAutoCache::GetTempBuffer(v72, 4 * ofRegions, 0);
  v41 = objc_msgSend_height(texture, v39, v40);
  v42 = MPSAutoCache::GetTempBuffer(v72, v41 * 4 * ofRegions, 0);
  v43 = MPSAutoCache::GetTempBuffer(v72, 4 * ofRegions, 0);
  if (TempBuffer && v38 && v42)
  {
    v45 = v43;
    if (encoder)
    {
      objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTexture_regions_numberOfRegions_keypointCountBuffer_keypointCountBufferOffset_keypointDataBuffer_keypointDataBufferOffset_rectangles_histogramBuffer_keypointInfoBuffer_rowCountersBuffer_heightCountersBuffer_maxRectangleHeight_(selfCopy, v44, encoder, bufferCopy, texture, regionsCopy, ofRegions, countBuffer, offset, dataBuffer, bufferOffset, v29, TempBuffer, v38, v42, v43, v30);
    }

    else
    {
      v46 = objc_alloc(MEMORY[0x277CD7210]);
      v49 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v46, v47, bufferCopy, 0);
      if ((*(&selfCopy->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
      {
        v50 = *(&selfCopy->super.super.isa + *MEMORY[0x277CD7360]);
        if (v50 || (v51 = objc_opt_class(), v50 = NSStringFromClass(v51), objc_msgSend_setLabel_(selfCopy, v52, v50), v50))
        {
          objc_msgSend_setLabel_(v49, v48, v50, textureCopy2, v66);
        }
      }

      objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTexture_regions_numberOfRegions_keypointCountBuffer_keypointCountBufferOffset_keypointDataBuffer_keypointDataBufferOffset_rectangles_histogramBuffer_keypointInfoBuffer_rowCountersBuffer_heightCountersBuffer_maxRectangleHeight_(selfCopy, v48, v49, bufferCopy, texture, regionsCopy, ofRegions, countBufferCopy, offset, dataBuffer, bufferOffset, v29, TempBuffer, v38, v42, v45, v30);
      objc_msgSend_endEncoding(v49, v53, v54);
    }
  }

  else
  {
    if (!regions && (*(&selfCopy->super.super.isa + v17) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v63 = objc_opt_class();
      NSStringFromClass(v63);
      MTLReportFailure();
    }

    free(v29);
  }

  MPSAutoCache::~MPSAutoCache(v72);
}

@end