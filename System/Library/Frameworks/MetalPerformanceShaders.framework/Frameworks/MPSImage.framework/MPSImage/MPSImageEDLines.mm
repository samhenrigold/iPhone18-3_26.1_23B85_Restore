@interface MPSImageEDLines
- (MPSImageEDLines)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageEDLines)initWithDevice:(id)device gaussianSigma:(const float)gaussianSigma minLineLength:(const unsigned __int16)minLineLength maxLines:(const NSUInteger)maxLines detailRatio:(const unsigned __int16)detailRatio gradientThreshold:(const float)gradientThreshold lineErrorThreshold:(const float)lineErrorThreshold mergeLocalityThreshold:(const float)mergeLocalityThreshold;
- (MTLRegion)clipRectSource;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture endpointBuffer:(id)endpointBuffer endpointOffset:(unint64_t)offset inputExtent:(id *)extent;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture endpointBuffer:(id)endpointBuffer endpointOffset:(unint64_t)offset;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRectSource:(MTLRegion *)clipRectSource;
@end

@implementation MPSImageEDLines

- (MPSImageEDLines)initWithDevice:(id)device gaussianSigma:(const float)gaussianSigma minLineLength:(const unsigned __int16)minLineLength maxLines:(const NSUInteger)maxLines detailRatio:(const unsigned __int16)detailRatio gradientThreshold:(const float)gradientThreshold lineErrorThreshold:(const float)lineErrorThreshold mergeLocalityThreshold:(const float)mergeLocalityThreshold
{
  v48 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = MPSImageEDLines;
  result = [(MPSKernel *)&v43 initWithDevice:?];
  if (result)
  {
    result->_gaussianSigma = gaussianSigma;
    result->_minLineLength = minLineLength;
    result->_maxLines = maxLines;
    result->_detailRatio = detailRatio;
    result->_gradientThreshold = gradientThreshold;
    result->_lineErrorThreshold = lineErrorThreshold;
    result->_mergeLocalityThreshold = mergeLocalityThreshold;
    v20 = *(MEMORY[0x277CD7200] + 16);
    v19 = *(MEMORY[0x277CD7200] + 32);
    *&result->_clipRectSource.origin.x = *MEMORY[0x277CD7200];
    *&result->_clipRectSource.origin.z = v20;
    *&result->_clipRectSource.size.height = v19;
    v21 = result;
    v22 = [MPSImageGaussianBlur alloc];
    v21->gaussianBlurKernel = v22;
    *&v23 = v21->_gaussianSigma;
    v25 = objc_msgSend_initWithDevice_sigma_(v22, v24, device, v23);
    v21->gaussianBlurKernel = v25;
    objc_msgSend_setEdgeMode_(v25, v26, 1);
    v21->_gradientNormalizationRadius = 5;
    v47 = 1065353216;
    v46 = 3212836864;
    v44 = 0x400000003F800000;
    v45 = 1065353216;
    v27 = [MPSImageConvolution alloc];
    v21->sobel3XHKernel = v27;
    v21->sobel3XHKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v27, v28, device, 3, 1, &v46);
    v29 = [MPSImageConvolution alloc];
    v21->sobel3XVKernel = v29;
    v21->sobel3XVKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v29, v30, device, 1, 3, &v44);
    v31 = [MPSImageConvolution alloc];
    v21->sobel3YVKernel = v31;
    v21->sobel3YVKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v31, v32, device, 1, 3, &v46);
    v33 = [MPSImageConvolution alloc];
    v21->sobel3YHKernel = v33;
    v21->sobel3YHKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v33, v34, device, 3, 1, &v44);
    objc_msgSend_setEdgeMode_(v21->sobel3XHKernel, v35, 1);
    objc_msgSend_setEdgeMode_(v21->sobel3XVKernel, v36, 1);
    objc_msgSend_setEdgeMode_(v21->sobel3YHKernel, v37, 1);
    objc_msgSend_setEdgeMode_(v21->sobel3YVKernel, v38, 1);
    v39 = (2 * v21->_gradientNormalizationRadius) | 1;
    v40 = [MPSImageAreaMax alloc];
    v21->gradientNormalizeAreaMaxKernel = v40;
    v42 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v40, v41, device, v39, v39);
    result = v21;
    v21->gradientNormalizeAreaMaxKernel = v42;
  }

  return result;
}

- (MPSImageEDLines)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v47 = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = MPSImageEDLines;
  v6 = [MPSKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v8 = v6;
  if (v6)
  {
    if (*(&v6->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v6->_minLineLength = objc_msgSend_decodeInt32ForKey_(aDecoder, v7, @"MPSImageEDLines.minLineLength");
      v8->_maxLines = objc_msgSend_decodeInt64ForKey_(aDecoder, v9, @"MPSImageEDLines.maxLines");
      v8->_detailRatio = objc_msgSend_decodeInt32ForKey_(aDecoder, v10, @"MPSImageEDLines.detailRatio");
      objc_msgSend_decodeFloatForKey_(aDecoder, v11, @"MPSImageEDLines.gradientThreshold");
      v8->_gradientThreshold = v12;
      objc_msgSend_decodeFloatForKey_(aDecoder, v13, @"MPSImageEDLines.lineErrorThreshold");
      v8->_lineErrorThreshold = v14;
      v8->_clipRectSource.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v15, @"MPSImageEDLines.clipRectSource.origin.x");
      v8->_clipRectSource.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v16, @"MPSImageEDLines.clipRectSource.origin.y");
      v8->_clipRectSource.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v17, @"MPSImageEDLines.clipRectSource.origin.z");
      v8->_clipRectSource.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v18, @"MPSImageEDLines.clipRectSource.size.width");
      v8->_clipRectSource.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v19, @"MPSImageEDLines.clipRectSource.size.height");
      v8->_clipRectSource.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v20, @"MPSImageEDLines.clipRectSource.size.depth");
      v21 = [MPSImageGaussianBlur alloc];
      v23 = objc_msgSend_initWithCoder_device_(v21, v22, aDecoder, device);
      v8->gaussianBlurKernel = v23;
      objc_msgSend_setEdgeMode_(v23, v24, 1);
      v8->_gradientNormalizationRadius = 5;
      v46 = 1065353216;
      v45 = 3212836864;
      v43 = 0x400000003F800000;
      v44 = 1065353216;
      v25 = [MPSImageConvolution alloc];
      v8->sobel3XHKernel = v25;
      v8->sobel3XHKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v25, v26, device, 3, 1, &v45);
      v27 = [MPSImageConvolution alloc];
      v8->sobel3XVKernel = v27;
      v8->sobel3XVKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v27, v28, device, 1, 3, &v43);
      v29 = [MPSImageConvolution alloc];
      v8->sobel3YVKernel = v29;
      v8->sobel3YVKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v29, v30, device, 1, 3, &v45);
      v31 = [MPSImageConvolution alloc];
      v8->sobel3YHKernel = v31;
      v8->sobel3YHKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v31, v32, device, 3, 1, &v43);
      objc_msgSend_setEdgeMode_(v8->sobel3XHKernel, v33, 1);
      objc_msgSend_setEdgeMode_(v8->sobel3XVKernel, v34, 1);
      objc_msgSend_setEdgeMode_(v8->sobel3YHKernel, v35, 1);
      objc_msgSend_setEdgeMode_(v8->sobel3YVKernel, v36, 1);
      v37 = (2 * v8->_gradientNormalizationRadius) | 1;
      v38 = [MPSImageAreaMax alloc];
      v8->gradientNormalizeAreaMaxKernel = v38;
      v8->gradientNormalizeAreaMaxKernel = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v38, v39, device, v37, v37);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v40 = objc_opt_class();
        NSStringFromClass(v40);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v19.receiver = self;
  v19.super_class = MPSImageEDLines;
  [(MPSKernel *)&v19 encodeWithCoder:?];
  objc_msgSend_encodeInt32_forKey_(coder, v5, self->_minLineLength, @"MPSImageEDLines.maxLines");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_maxLines, @"MPSImageEDLines.maxLines");
  objc_msgSend_encodeInt32_forKey_(coder, v7, self->_detailRatio, @"MPSImageEDLines.maxLines");
  *&v8 = self->_gradientThreshold;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"MPSImageEDLines.gradientThreshold", v8);
  *&v10 = self->_lineErrorThreshold;
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"MPSImageEDLines.lineErrorThreshold", v10);
  objc_msgSend_encodeInt64_forKey_(coder, v12, self->_clipRectSource.origin.x, @"MPSImageEDLines.clipRectSource.origin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v13, self->_clipRectSource.origin.y, @"MPSImageEDLines.clipRectSource.origin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v14, self->_clipRectSource.origin.z, @"MPSImageEDLines.clipRectSource.origin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v15, self->_clipRectSource.size.width, @"MPSImageEDLines.clipRectSource.size.width");
  objc_msgSend_encodeInt64_forKey_(coder, v16, self->_clipRectSource.size.height, @"MPSImageEDLines.clipRectSource.size.height");
  objc_msgSend_encodeInt64_forKey_(coder, v17, self->_clipRectSource.size.depth, @"MPSImageEDLines.clipRectSource.size.depth");
  objc_msgSend_encodeWithCoder_(self->gaussianBlurKernel, v18, coder);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSImageEDLines;
  result = [(MPSKernel *)&v10 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 22) = LODWORD(self->_gaussianSigma);
    *(result + 46) = self->_minLineLength;
    *(result + 12) = self->_maxLines;
    *(result + 52) = self->_detailRatio;
    *(result + 27) = LODWORD(self->_gradientThreshold);
    *(result + 28) = LODWORD(self->_lineErrorThreshold);
    *(result + 27) = LODWORD(self->_gradientThreshold);
    v7 = *&self->_clipRectSource.origin.z;
    v6 = *&self->_clipRectSource.size.height;
    *(result + 120) = *&self->_clipRectSource.origin.x;
    *(result + 136) = v7;
    *(result + 152) = v6;
    v8 = result;
    *(result + 22) = self->gaussianBlurKernel;
    v8[23] = self->sobel3XHKernel;
    v8[24] = self->sobel3XVKernel;
    v8[25] = self->sobel3YVKernel;
    v8[26] = self->sobel3YHKernel;
    v9 = self->gradientNormalizeAreaMaxKernel;
    result = v8;
    v8[27] = v9;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageEDLines;
  [(MPSKernel *)&v3 dealloc];
}

- (void)encodeInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture endpointBuffer:(id)endpointBuffer endpointOffset:(unint64_t)offset inputExtent:(id *)extent
{
  var0 = extent->var1.var0;
  var1 = extent->var1.var1;
  MEMORY[0x23EE7BAC0](v134, buffer, 0);
  v15 = *MEMORY[0x277CD7350];
  PixelInfo = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatBGRA8Unorm, MPSImageFeatureChannelFormatNone);
  v132[1] = var0;
  v132[2] = var1;
  v132[3] = 1;
  v133 = PixelInfo;
  TempTexture = MPSAutoCache::GetTempTexture();
  v133 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatRGBA16Float, MPSImageFeatureChannelFormatNone);
  CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
  v105 = MPSAutoCache::GetCompressedTempTexture();
  v17 = MPSAutoCache::GetCompressedTempTexture();
  v133 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatR16Float, MPSImageFeatureChannelFormatNone);
  v101 = MPSAutoCache::GetCompressedTempTexture();
  v133 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatR16Float, MPSImageFeatureChannelFormatNone);
  v18 = MPSAutoCache::GetTempTexture();
  v103 = MPSAutoCache::GetTempTexture();
  if (!destinationTexture)
  {
    destinationTexture = MPSAutoCache::GetCompressedTempTexture();
  }

  detailRatio = self->_detailRatio;
  v97 = (var1 + detailRatio - 1) / detailRatio * ((var0 + detailRatio - 1) / detailRatio);
  TempBuffer = MPSAutoCache::GetTempBuffer(v134, 8 * v97 * ((detailRatio + 31) >> 5), 0);
  v100 = MPSAutoCache::GetTempBuffer(v134, 4, 0);
  v99 = MPSAutoCache::GetTempBuffer(v134, 8 * ((var1 * var0) & 0x3FFFFFFF), 0);
  v93 = (var1 * var0);
  v98 = MPSAutoCache::GetTempBuffer(v134, v93, 0);
  v132[0] = 0;
  v20 = *(&self->super.super.isa + v15);
  v23 = objc_msgSend_pixelFormat(texture, v21, v22);
  v131 = 0;
  v132[0] = MPSDevice::GetPixelInfo(v20, v23, MPSImageFeatureChannelFormatNone);
  v131 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatBGRA8Unorm, MPSImageFeatureChannelFormatNone);
  v128[0] = v132;
  v128[1] = &v131;
  memset(&v128[2], 0, 24);
  v128[5] = var0;
  v128[6] = var1;
  v128[7] = 1;
  v129 = 0u;
  v130 = 0u;
  v127 = 0;
  v127 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatRGBA16Float, MPSImageFeatureChannelFormatNone);
  v124[0] = v132;
  v124[1] = &v127;
  memset(&v124[2], 0, 24);
  v124[5] = var0;
  v124[6] = var1;
  v124[7] = 1;
  v125 = 0u;
  v126 = 0u;
  v123 = 0;
  v123 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v15), MTLPixelFormatR16Float, MPSImageFeatureChannelFormatNone);
  v120[0] = v132;
  v120[1] = &v123;
  memset(&v120[2], 0, 24);
  v120[5] = var0;
  v120[6] = var1;
  v120[7] = 1;
  v121 = 0u;
  v122 = 0u;
  sub_23993B970(self->gaussianBlurKernel, encoder, buffer, texture, TempTexture, v128);
  sub_23993B970(self->sobel3XHKernel, encoder, buffer, TempTexture, v17, v124);
  sub_23993B970(self->sobel3XVKernel, encoder, buffer, v17, CompressedTempTexture, v124);
  sub_23993B970(self->sobel3YVKernel, encoder, buffer, TempTexture, v17, v124);
  sub_23993B970(self->sobel3YHKernel, encoder, buffer, v17, v105, v124);
  v24 = vmovn_s64(*&extent->var0.var0);
  v110[1] = v24.i16[2];
  v25 = vmovn_s64(*&extent->var1.var0);
  v26 = sqrt((extent->var1.var0 * extent->var1.var0 + extent->var1.var1 * extent->var1.var1));
  v110[0] = v24.i16[0];
  v24.i16[0] = v25.i16[0];
  v24.i16[1] = v25.i16[2];
  v24.i32[1] = v26;
  v111 = v24;
  gradientThreshold = self->_gradientThreshold;
  minLineLength = self->_minLineLength;
  maxLines = var1 * var0;
  v115 = 5;
  v24.i32[0] = LODWORD(self->_lineErrorThreshold);
  v116 = self->_detailRatio;
  v25.i32[0] = LODWORD(self->_mergeLocalityThreshold);
  v117 = *v24.i32;
  v118 = v25.i32[0];
  lineErrorThreshold = 0.0;
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(encoder, v27, ComputeState);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setBytes_length_atIndex_(encoder, v29, v110, 48, 0);
    objc_msgSend_setTexture_atIndex_(encoder, v30, CompressedTempTexture, 0);
    objc_msgSend_setTexture_atIndex_(encoder, v31, v105, 1);
    objc_msgSend_setTexture_atIndex_(encoder, v32, v101, 2);
    objc_msgSend_setTexture_atIndex_(encoder, v33, v18, 3);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v34, TempBuffer, 0, 1);
    v35.i64[0] = 0x700000007;
    v36 = vshr_n_u32(*&vaddw_u16(v35, v111), 3uLL);
    *&v37 = v36.u32[0];
    *(&v37 + 1) = v36.u32[1];
    *v109 = v37;
    *&v109[16] = 1;
    *v108 = vdupq_n_s64(8uLL);
    *&v108[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v38, v109, v108);
    sub_23993B970(self->gradientNormalizeAreaMaxKernel, encoder, buffer, v18, v103, v120);
    v40 = MPSLibrary::GetComputeState();
    if (v40)
    {
      objc_msgSend_setComputePipelineState_(encoder, v39, v40);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setTexture_atIndex_(encoder, v41, v18, 0);
      objc_msgSend_setTexture_atIndex_(encoder, v42, v103, 1);
      objc_msgSend_setBytes_length_atIndex_(encoder, v43, v110, 48, 0);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v44, TempBuffer, 0, 1);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v45, v100, 0, 2);
      v46.i64[0] = 0x700000007;
      v47 = vshr_n_u32(*&vaddw_u16(v46, v111), 3uLL);
      *&v48 = v47.u32[0];
      *(&v48 + 1) = v47.u32[1];
      *v109 = v48;
      *&v109[16] = 1;
      *v108 = vdupq_n_s64(8uLL);
      *&v108[16] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v49, v109, v108);
      v51 = MPSLibrary::GetComputeState();
      if (v51)
      {
        objc_msgSend_setComputePipelineState_(encoder, v50, v51);
        objc_msgSend_setTexture_atIndex_(encoder, v52, v18, 0);
        objc_msgSend_setTexture_atIndex_(encoder, v53, v101, 1);
        objc_msgSend_setTexture_atIndex_(encoder, v54, destinationTexture, 2);
        objc_msgSend_setBytes_length_atIndex_(encoder, v55, v110, 48, 0);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v56, TempBuffer, 0, 1);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v57, v100, 0, 3);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v58, v99, 0, 4);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v59, v98, 0, 6);
        v60 = (2 * self->_detailRatio + 31) & 0x3FFE0;
        *v109 = 1;
        *&v109[8] = v97;
        *&v109[16] = 1;
        *v108 = v60;
        *&v108[8] = vdupq_n_s64(1uLL);
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v61, v109, v108);
        MPSLibrary::ReleaseComputeState();
        if (self->_maxLines)
        {
          if (self->_lineErrorThreshold != 0.0)
          {
            v63 = MPSLibrary::GetComputeState();
            if (v63)
            {
              objc_msgSend_setComputePipelineState_(encoder, v62, v63);
              MPSLibrary::ReleaseComputeState();
              maxLines = self->_maxLines;
              objc_msgSend_setBytes_length_atIndex_(encoder, v64, v110, 48, 0);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v65, v99, 0, 1);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v66, v100, 0, 2);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v67, endpointBuffer, offset, 5);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v68, v98, 0, 4);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(encoder, v69, 4 * self->_maxLines, 0);
              objc_msgSend_setThreadgroupMemoryLength_atIndex_(encoder, v70, 16, 1);
              v73 = objc_msgSend_threadExecutionWidth(v63, v71, v72);
              v75 = (3.14159265 / (v117 + v117));
              *v109 = v75;
              v76 = vdupq_n_s64(1uLL);
              *&v109[8] = v76;
              v77 = v73 <= 1 ? 1 : v73;
              *v108 = v77;
              *&v108[8] = v76;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v74, v109, v108, v93);
              lineErrorThreshold = self->_lineErrorThreshold;
              objc_msgSend_setBytes_length_atIndex_(encoder, v78, v110, 48, 0);
              *v109 = v75;
              *&v109[8] = vdupq_n_s64(1uLL);
              *v108 = v77;
              *&v108[8] = *&v109[8];
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v79, v109, v108);
              v81 = MPSLibrary::GetComputeState();
              if (v81)
              {
                objc_msgSend_setComputePipelineState_(encoder, v80, v81);
                MPSLibrary::ReleaseComputeState();
                maxLines = self->_maxLines;
                objc_msgSend_setBytes_length_atIndex_(encoder, v82, v110, 48, 0);
                objc_msgSend_setBuffer_offset_atIndex_(encoder, v83, v99, 0, 1);
                objc_msgSend_setBuffer_offset_atIndex_(encoder, v84, endpointBuffer, offset, 2);
                objc_msgSend_setBuffer_offset_atIndex_(encoder, v85, v98, 0, 3);
                objc_msgSend_setBuffer_offset_atIndex_(encoder, v86, v100, 0, 4);
                objc_msgSend_setBuffer_offset_atIndex_(encoder, v87, endpointBuffer, offset, 5);
                v90 = objc_msgSend_threadExecutionWidth(v81, v88, v89);
                if (v90 <= 1)
                {
                  v92 = 1;
                }

                else
                {
                  v92 = v90;
                }

                *v109 = (v94 + v92 - 1) / v92;
                *&v109[8] = vdupq_n_s64(1uLL);
                *v108 = v92;
                *&v108[8] = *&v109[8];
                objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v91, v109, v108);
              }
            }
          }
        }
      }
    }
  }

  MPSAutoCache::~MPSAutoCache(v134);
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture endpointBuffer:(id)endpointBuffer endpointOffset:(unint64_t)offset
{
  offsetCopy2 = offset;
  endpointBufferCopy2 = endpointBuffer;
  bufferCopy2 = buffer;
  v14 = MEMORY[0x277CD7378];
  v15 = *MEMORY[0x277CD7378];
  v16 = *(&self->super.super.isa + v15);
  if ((v16 & 1) == 0)
  {
    v19 = *(&self->super.super.isa + *MEMORY[0x277CD7350]);
    v20 = objc_msgSend_pixelFormat(destinationTexture, a2, encoder);
    v23 = objc_msgSend_pixelFormat(texture, v21, v22);
    v79 = v20;
    PixelInfo = MPSDevice::GetPixelInfo(v19, v20, MPSImageFeatureChannelFormatNone);
    v26 = MPSDevice::GetPixelInfo(v19, v23, MPSImageFeatureChannelFormatNone);
    if (!texture && MTLReportFailureTypeEnabled())
    {
      v70 = objc_opt_class();
      destinationTextureCopy3 = NSStringFromClass(v70);
      MTLReportFailure();
    }

    v27 = v16 & 0xFFFFFFFFFFFFFFE0;
    if (v27 && MTLReportFailureTypeEnabled())
    {
      v71 = objc_opt_class();
      destinationTextureCopy3 = NSStringFromClass(v71);
      v77 = v27;
      MTLReportFailure();
    }

    objc_msgSend_textureType(texture, v24, v25, destinationTextureCopy3, v77);
    if (objc_msgSend_textureType(texture, v28, v29) != 2 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy3 = texture;
      MTLReportFailure();
    }

    if ((~v26 & 0xF000000) == 0 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy3 = texture;
      v77 = v23;
      MTLReportFailure();
    }

    bufferCopy2 = buffer;
    endpointBufferCopy2 = endpointBuffer;
    offsetCopy2 = offset;
    v14 = MEMORY[0x277CD7378];
    if (destinationTexture)
    {
      objc_msgSend_textureType(destinationTexture, a2, v30);
      if (objc_msgSend_textureType(destinationTexture, v31, v32) != 2 && MTLReportFailureTypeEnabled())
      {
        destinationTextureCopy3 = destinationTexture;
        MTLReportFailure();
      }

      v33 = PixelInfo;
      if ((PixelInfo & 0xF000000) != 0x1000000)
      {
        v72 = MTLReportFailureTypeEnabled();
        v33 = PixelInfo;
        if (v72)
        {
          destinationTextureCopy3 = destinationTexture;
          v77 = v79;
          MTLReportFailure();
          v33 = PixelInfo;
        }
      }

      if ((v33 & 0x200000000000) == 0 && MTLReportFailureTypeEnabled())
      {
        destinationTextureCopy3 = destinationTexture;
        v77 = v79;
        MTLReportFailure();
      }
    }
  }

  if (texture != destinationTexture && (objc_msgSend_isEqual_(texture, a2, destinationTexture) & 1) == 0)
  {
    if ((*(&self->super.super.isa + v15) & 1) == 0)
    {
      if (!endpointBufferCopy2 && MTLReportFailureTypeEnabled())
      {
        v73 = objc_opt_class();
        destinationTextureCopy3 = NSStringFromClass(v73);
        MTLReportFailure();
      }

      objc_msgSend_length(endpointBufferCopy2, v34, v35, destinationTextureCopy3, v77);
      if (objc_msgSend_length(endpointBufferCopy2, v36, v37) < offsetCopy2 + 4 + 8 * self->_maxLines && MTLReportFailureTypeEnabled())
      {
        destinationTextureCopy3 = (offsetCopy2 + 4 + 8 * self->_maxLines);
        v77 = objc_msgSend_length(endpointBufferCopy2, v34, v35);
        MTLReportFailure();
      }
    }

    memset(&v85, 0, sizeof(v85));
    v84.width = objc_msgSend_width(texture, v34, v35, destinationTextureCopy3, v77);
    v84.height = objc_msgSend_height(texture, v38, v39);
    v84.depth = 1;
    v40 = *&self->_clipRectSource.origin.z;
    *&v83.origin.x = *&self->_clipRectSource.origin.x;
    *&v83.origin.z = v40;
    *&v83.size.height = *&self->_clipRectSource.size.height;
    MPSGetEffectiveClipRegion(&v85, &v84, &v83);
    if ((*(&self->super.super.isa + v15) & 1) == 0)
    {
      objc_msgSend_width(texture, v41, v42);
      v43 = v85.size.width + v85.origin.x;
      if (v43 > objc_msgSend_width(texture, v44, v45) && MTLReportFailureTypeEnabled())
      {
        v76 = v85.size.width + v85.origin.x;
        v78 = objc_msgSend_width(texture, v46, v47);
        MTLReportFailure();
      }

      objc_msgSend_height(texture, v46, v47, v76, v78);
      v48 = v85.size.height + v85.origin.y;
      if (v48 > objc_msgSend_height(texture, v49, v50) && MTLReportFailureTypeEnabled())
      {
        v76 = v85.size.height + v85.origin.y;
        v78 = objc_msgSend_height(texture, v41, v74);
        MTLReportFailure();
      }
    }

    if (v85.size.height && v85.size.width)
    {
      if (encoder)
      {
        v83 = v85;
        objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTexture_destinationTexture_endpointBuffer_endpointOffset_inputExtent_(self, v41, encoder, bufferCopy2, texture, destinationTexture, endpointBufferCopy2, offsetCopy2, &v83);
      }

      else
      {
        v53 = objc_alloc(MEMORY[0x277CD7210]);
        v56 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v53, v54, bufferCopy2, 0);
        v84.width = v56;
        v84.height = self;
        if ((*(&self->super.super.isa + *v14) & 0x18) != 0)
        {
          v57 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
          if (v57 || (v58 = objc_opt_class(), v59 = NSStringFromClass(v58), objc_msgSend_setLabel_(self, v60, v59), (v57 = v59) != 0))
          {
            objc_msgSend_setLabel_(v56, v55, v57, v76, v78);
          }
        }

        v83 = v85;
        objc_msgSend_encodeInternalToCommandEncoder_commandBuffer_sourceTexture_destinationTexture_endpointBuffer_endpointOffset_inputExtent_(self, v55, v56, bufferCopy2, texture, destinationTexture, endpointBufferCopy2, offsetCopy2, &v83);
        objc_msgSend_endEncoding(v56, v61, v62);
      }

      if (endpointBufferCopy2)
      {
        v63 = objc_msgSend_userDictionary(bufferCopy2, v51, v52);
        v65 = objc_msgSend_objectForKey_(v63, v64, @"_MPSCommandBufferRetainListKey");
        if (!v65)
        {
          v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objc_msgSend_setObject_forKey_(v63, v68, v67, @"_MPSCommandBufferRetainListKey");

          v83.origin.x = MEMORY[0x277D85DD0];
          v83.origin.y = 3221225472;
          v83.origin.z = sub_23993D93C;
          v83.size.width = &unk_278AC37A8;
          v83.size.height = @"_MPSCommandBufferRetainListKey";
          objc_msgSend_addCompletedHandler_(bufferCopy2, v69, &v83);
          v65 = v67;
        }

        objc_msgSend_addObject_(v65, v66, endpointBufferCopy2);
      }
    }
  }
}

- (MTLRegion)clipRectSource
{
  v3 = *&self[2].size.depth;
  *&retstr->origin.x = *&self[2].size.width;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[3].origin.y;
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