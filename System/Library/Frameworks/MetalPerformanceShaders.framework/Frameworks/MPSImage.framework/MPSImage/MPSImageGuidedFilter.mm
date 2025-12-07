@interface MPSImageGuidedFilter
- (MPSImageGuidedFilter)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageGuidedFilter)initWithDevice:(id)device kernelDiameter:(NSUInteger)kernelDiameter;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeReconstructionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTexture:(id)coefficientsTexture destinationTexture:(id)destinationTexture;
- (void)encodeReconstructionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTextureA:(id)a coefficientsTextureB:(id)b destinationTexture:(id)destinationTexture;
- (void)encodeReconstructionToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTexture:(id)coefficientsTexture destinationTexture:(id)destinationTexture;
- (void)encodeReconstructionToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTextureA:(id)a coefficientsTextureB:(id)b destinationTexture:(id)destinationTexture;
- (void)encodeRegressionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTexture:(id)coefficientsTexture;
- (void)encodeRegressionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTextureA:(id)a destinationCoefficientsTextureB:(id)b;
- (void)encodeRegressionToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTexture:(id)coefficientsTexture;
- (void)encodeRegressionToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTextureA:(id)a destinationCoefficientsTextureB:(id)b;
- (void)encodeWithCoder:(id)coder;
- (void)initFilterInfoWithDevice:(id)device;
@end

@implementation MPSImageGuidedFilter

- (void)initFilterInfoWithDevice:(id)device
{
  v5 = [MPSImageBox alloc];
  v7 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v5, v6, device, self->_kernelDiameter, self->_kernelDiameter);
  self->_boxFilter = v7;
  v10 = objc_msgSend_options(v7, v8, v9);
  objc_msgSend_setOptions_(v7, v11, v10 | 2);
  objc_msgSend_setEdgeMode_(self->_boxFilter, v12, 0);
  v13 = [MPSImageLanczosScale alloc];
  v15 = objc_msgSend_initWithDevice_(v13, v14, device);
  self->_lanczosScaler = v15;
  v18 = objc_msgSend_options(v15, v16, v17);
  objc_msgSend_setOptions_(v15, v19, v18 | 2);
  objc_msgSend_setEdgeMode_(self->_lanczosScaler, v20, 1);
  v21 = [MPSImageBilinearScale alloc];
  v23 = objc_msgSend_initWithDevice_(v21, v22, device);
  self->_bilinearScaler = v23;
  v26 = objc_msgSend_options(v23, v24, v25);
  objc_msgSend_setOptions_(v23, v27, v26 | 2);
  bilinearScaler = self->_bilinearScaler;

  objc_msgSend_setEdgeMode_(bilinearScaler, v28, 1);
}

- (MPSImageGuidedFilter)initWithDevice:(id)device kernelDiameter:(NSUInteger)kernelDiameter
{
  v9.receiver = self;
  v9.super_class = MPSImageGuidedFilter;
  result = [(MPSKernel *)&v9 initWithDevice:?];
  if (result)
  {
    result->_kernelDiameter = kernelDiameter;
    result->_epsilon = 0.0;
    result->_reconstructScale = 1.0;
    result->_reconstructOffset = 0.0;
    result->_rescaleCoefficients = 0;
    result->_reconstructionCoefficientsSampleBicubic = 0;
    v8 = result;
    objc_msgSend_initFilterInfoWithDevice_(result, v7, device);
    return v8;
  }

  return result;
}

- (MPSImageGuidedFilter)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v20.receiver = self;
  v20.super_class = MPSImageGuidedFilter;
  v6 = [MPSKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v8 = v6;
  if (!v6)
  {
    return v8;
  }

  if (*(&v6->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v6->_kernelDiameter = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"MPSGuidedFilter.kernelDiameter");
    objc_msgSend_decodeFloatForKey_(aDecoder, v9, @"MPSGuidedFilter.epsilon");
    v8->_epsilon = v10;
    objc_msgSend_decodeFloatForKey_(aDecoder, v11, @"MPSGuidedFilter.scale");
    v8->_reconstructScale = v12;
    objc_msgSend_decodeFloatForKey_(aDecoder, v13, @"MPSGuidedFilter.offset");
    v8->_reconstructOffset = v14;
    v8->_rescaleCoefficients = objc_msgSend_decodeBoolForKey_(aDecoder, v15, @"MPSGuidedFilter.rescale");
    v8->_reconstructionCoefficientsSampleBicubic = objc_msgSend_decodeBoolForKey_(aDecoder, v16, @"MPSGuidedFilter._reconstructionCoefficientsSampleBicubic");
    objc_msgSend_initFilterInfoWithDevice_(v8, v17, device);
    return v8;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v19 = objc_opt_class();
    NSStringFromClass(v19);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v14.receiver = self;
  v14.super_class = MPSImageGuidedFilter;
  [(MPSKernel *)&v14 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_kernelDiameter, @"MPSGuidedFilter.kernelDiameter");
  *&v6 = self->_epsilon;
  objc_msgSend_encodeFloat_forKey_(coder, v7, @"MPSGuidedFilter.epsilon", v6);
  *&v8 = self->_reconstructScale;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"MPSGuidedFilter.scale", v8);
  *&v10 = self->_reconstructOffset;
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"MPSGuidedFilter.offset", v10);
  objc_msgSend_encodeBool_forKey_(coder, v12, self->_rescaleCoefficients, @"MPSGuidedFilter.rescale");
  objc_msgSend_encodeBool_forKey_(coder, v13, self->_reconstructionCoefficientsSampleBicubic, @"MPSGuidedFilter._reconstructionCoefficientsSampleBicubic");
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSImageGuidedFilter;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 11) = self->_kernelDiameter;
    *(result + 24) = LODWORD(self->_epsilon);
    *(result + 25) = LODWORD(self->_reconstructScale);
    *(result + 26) = LODWORD(self->_reconstructOffset);
    *(result + 108) = self->_rescaleCoefficients;
    *(result + 109) = self->_reconstructionCoefficientsSampleBicubic;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageGuidedFilter;
  [(MPSKernel *)&v3 dealloc];
}

- (void)encodeRegressionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTexture:(id)coefficientsTexture
{
  v14 = objc_msgSend_width(coefficientsTexture, a2, encoder, buffer);
  v17 = objc_msgSend_height(coefficientsTexture, v15, v16);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(encoder, v19, ComputeState);
    MPSLibrary::ReleaseComputeState();
    v32[0] = LODWORD(self->_epsilon);
    kernelDiameter = self->_kernelDiameter;
    v32[1] = kernelDiameter >> 1;
    *&v32[2] = 1.0 / (kernelDiameter * kernelDiameter);
    objc_msgSend_setTexture_atIndex_(encoder, v21, guidanceTexture, 0);
    objc_msgSend_setTexture_atIndex_(encoder, v22, texture, 1);
    objc_msgSend_setTexture_atIndex_(encoder, v23, weightsTexture, 2);
    objc_msgSend_setTexture_atIndex_(encoder, v24, coefficientsTexture, 3);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(encoder, v26, Sampler, 0);
    objc_msgSend_setBytes_length_atIndex_(encoder, v27, v32, 12, 0);
    v31[0] = (((v14 + 1) >> 1) + 7) >> 3;
    v31[1] = (v17 + 7) >> 3;
    v31[2] = 1;
    v29 = xmmword_239988F20;
    v30 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v28, v31, &v29);
  }
}

- (void)encodeRegressionToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTexture:(id)coefficientsTexture
{
  v15 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v15) & 1) == 0)
  {
    v16 = *MEMORY[0x277CD7350];
    v17 = *(&self->super.super.isa + v16);
    v18 = objc_msgSend_pixelFormat(texture, a2, encoder);
    MPSDevice::GetPixelInfo(v17, v18, MPSImageFeatureChannelFormatNone);
    v19 = *(&self->super.super.isa + v16);
    v22 = objc_msgSend_pixelFormat(texture, v20, v21);
    if ((MPSDevice::GetPixelInfo(v19, v22, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
    {
      weightsTextureCopy = texture;
      MTLReportFailure();
    }

    if (weightsTexture)
    {
      v24 = *(&self->super.super.isa + v16);
      v25 = objc_msgSend_pixelFormat(weightsTexture, a2, v23);
      MPSDevice::GetPixelInfo(v24, v25, MPSImageFeatureChannelFormatNone);
      v26 = *(&self->super.super.isa + v16);
      v29 = objc_msgSend_pixelFormat(weightsTexture, v27, v28);
      if ((MPSDevice::GetPixelInfo(v26, v29, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x1000000)
      {
        if (MTLReportFailureTypeEnabled())
        {
          weightsTextureCopy = weightsTexture;
          MTLReportFailure();
        }
      }
    }
  }

  if (encoder)
  {

    objc_msgSend_encodeRegressionInternalToCommandEncoder_commandBuffer_sourceTexture_guidanceTexture_weightsTexture_destinationCoefficientsTexture_(self, a2, encoder, buffer, texture, guidanceTexture, weightsTexture, coefficientsTexture);
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x277CD7210]);
    v33 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v30, v31, buffer, 0);
    if ((*(&self->super.super.isa + v15) & 0x18) != 0)
    {
      v34 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v34 || (v35 = objc_opt_class(), v36 = NSStringFromClass(v35), objc_msgSend_setLabel_(self, v37, v36), (v34 = v36) != 0))
      {
        objc_msgSend_setLabel_(v33, v32, v34, weightsTextureCopy);
      }
    }

    objc_msgSend_encodeRegressionInternalToCommandEncoder_commandBuffer_sourceTexture_guidanceTexture_weightsTexture_destinationCoefficientsTexture_(self, v32, v33, buffer, texture, guidanceTexture, weightsTexture, coefficientsTexture, weightsTextureCopy);
    objc_msgSend_endEncoding(v33, v38, v39);
  }
}

- (void)encodeReconstructionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTexture:(id)coefficientsTexture destinationTexture:(id)destinationTexture
{
  MEMORY[0x23EE7BAC0](v116, buffer, destinationTexture);
  v113 = objc_msgSend_width(coefficientsTexture, v10, v11);
  v114 = objc_msgSend_height(coefficientsTexture, v12, v13);
  v115 = 1;
  PixelInfo = 0;
  v14 = *MEMORY[0x277CD7350];
  v15 = *(&self->super.super.isa + v14);
  v18 = objc_msgSend_pixelFormat(coefficientsTexture, v16, v17);
  PixelInfo = MPSDevice::GetPixelInfo(v15, v18, MPSImageFeatureChannelFormatNone);
  CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
  v101 = MPSAutoCache::GetCompressedTempTexture();
  v102.i32[0] = SLODWORD(self->_kernelDiameter) / 2;
  v22 = objc_msgSend_width(coefficientsTexture, v20, v21);
  v25 = objc_msgSend_height(coefficientsTexture, v23, v24);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(encoder, v26, ComputeState);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setTexture_atIndex_(encoder, v28, coefficientsTexture, 0);
    objc_msgSend_setTexture_atIndex_(encoder, v29, CompressedTempTexture, 1);
    objc_msgSend_setBytes_length_atIndex_(encoder, v30, &v102, 4, 0);
    *&v104 = (v22 + 15) >> 4;
    *(&v104 + 1) = (v25 + 15) >> 4;
    v105 = 1;
    v110 = vdupq_n_s64(0x10uLL);
    v111 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v31, &v104, &v110);
    v33 = MPSLibrary::GetComputeState();
    if (v33)
    {
      objc_msgSend_setComputePipelineState_(encoder, v32, v33);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setTexture_atIndex_(encoder, v34, CompressedTempTexture, 0);
      objc_msgSend_setTexture_atIndex_(encoder, v35, v101, 1);
      objc_msgSend_setBytes_length_atIndex_(encoder, v36, &v102, 4, 0);
      *&v104 = (v22 + 15) >> 4;
      *(&v104 + 1) = (v25 + 15) >> 4;
      v105 = 1;
      v110 = vdupq_n_s64(0x10uLL);
      v111 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v37, &v104, &v110);
      if (self->_rescaleCoefficients)
      {
        v40 = objc_msgSend_width(destinationTexture, v38, v39);
        v43 = objc_msgSend_height(destinationTexture, v41, v42);
        v113 = v40 >> 1;
        v114 = v43 >> 1;
        v115 = 1;
        v44 = MPSAutoCache::GetCompressedTempTexture();
        v47 = objc_msgSend_width(v44, v45, v46);
        v50 = objc_msgSend_height(v44, v48, v49);
        v113 = v47 >> 1;
        v114 = v50 >> 1;
        v115 = 1;
        if (v47 >> 1 <= objc_msgSend_width(v101, v51, v52) || (v55 = v114, v55 <= objc_msgSend_height(v101, v53, v54)))
        {
          objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_bilinearScaler, v53, buffer, v101, v44);
        }

        else
        {
          v56 = MPSAutoCache::GetCompressedTempTexture();
          objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_lanczosScaler, v57, buffer, v101, v56);
          objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_bilinearScaler, v58, buffer, v56, v44);
        }
      }

      else
      {
        v44 = 0;
      }

      if (self->_rescaleCoefficients)
      {
        v59 = v44;
      }

      else
      {
        v59 = v101;
      }

      v60 = *(&self->super.super.isa + v14);
      v61 = objc_msgSend_pixelFormat(v59, v38, v39);
      v62 = sub_23996E594(*(v60 + 1476), v61);
      *&v63 = -1;
      *(&v63 + 1) = -1;
      v108 = v63;
      v109 = v63;
      v106 = -1;
      v107 = v63;
      v104 = v63;
      v105 = v62;
      v65 = MPSLibrary::GetComputeState();
      if (v65)
      {
        objc_msgSend_setComputePipelineState_(encoder, v64, v65);
        MPSLibrary::ReleaseComputeState();
        if (self->_rescaleCoefficients)
        {
          __asm { FMOV            V0.2S, #1.0 }
        }

        else
        {
          v73 = objc_msgSend_width(v101, v66, v67);
          v76 = objc_msgSend_height(v101, v74, v75);
          v79 = objc_msgSend_width(destinationTexture, v77, v78);
          v82 = objc_msgSend_height(destinationTexture, v80, v81);
          v83.f32[0] = v73;
          v83.f32[1] = v76;
          v84.f32[0] = v79;
          v84.f32[1] = v82;
          _D0 = vdiv_f32(v83, v84);
        }

        reconstructOffset = self->_reconstructOffset;
        v110.i32[0] = LODWORD(self->_reconstructScale);
        *&v110.i32[1] = reconstructOffset;
        v110.u64[1] = _D0;
        objc_msgSend_setBytes_length_atIndex_(encoder, v66, &v110, 16, 0);
        objc_msgSend_setTexture_atIndex_(encoder, v86, v59, 0);
        objc_msgSend_setTexture_atIndex_(encoder, v87, texture, 1);
        objc_msgSend_setTexture_atIndex_(encoder, v88, destinationTexture, 2);
        v91 = objc_msgSend_width(destinationTexture, v89, v90);
        v94 = objc_msgSend_height(destinationTexture, v92, v93);
        if (self->_rescaleCoefficients)
        {
          v96 = (v91 + 1) >> 1;
        }

        else
        {
          v96 = v91;
        }

        if (self->_rescaleCoefficients)
        {
          v97 = (v94 + 1) >> 1;
        }

        else
        {
          v97 = v94;
        }

        v110.i64[0] = (v96 + 15) >> 4;
        v110.i64[1] = (v97 + 15) >> 4;
        v111 = 1;
        v102 = vdupq_n_s64(0x10uLL);
        v103 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v95, &v110, &v102);
      }
    }
  }

  MPSAutoCache::~MPSAutoCache(v116);
}

- (void)encodeReconstructionToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTexture:(id)coefficientsTexture destinationTexture:(id)destinationTexture
{
  v13 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v13) & 1) == 0)
  {
    v14 = objc_msgSend_width(texture, a2, encoder);
    if (v14 == objc_msgSend_width(destinationTexture, v15, v16))
    {
      objc_msgSend_height(texture, v17, v18);
      objc_msgSend_height(destinationTexture, v19, v20);
    }

    v21 = objc_msgSend_width(texture, v17, v18);
    if (v21 != objc_msgSend_width(destinationTexture, v22, v23) || (v26 = objc_msgSend_height(texture, v24, v25), v26 != objc_msgSend_height(destinationTexture, v27, v28)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        destinationTextureCopy = destinationTexture;
        textureCopy = texture;
        MTLReportFailure();
      }
    }
  }

  if (encoder)
  {

    objc_msgSend_encodeReconstructionInternalToCommandEncoder_commandBuffer_guidanceTexture_coefficientsTexture_destinationTexture_(self, a2, encoder, buffer, texture, coefficientsTexture, destinationTexture);
  }

  else
  {
    v29 = objc_alloc(MEMORY[0x277CD7210]);
    v32 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v29, v30, buffer, 0);
    if ((*(&self->super.super.isa + v13) & 0x18) != 0)
    {
      v33 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v33 || (v34 = objc_opt_class(), v35 = NSStringFromClass(v34), objc_msgSend_setLabel_(self, v36, v35), (v33 = v35) != 0))
      {
        objc_msgSend_setLabel_(v32, v31, v33, destinationTextureCopy, textureCopy, v32, self);
      }
    }

    objc_msgSend_encodeReconstructionInternalToCommandEncoder_commandBuffer_guidanceTexture_coefficientsTexture_destinationTexture_(self, v31, v32, buffer, texture, coefficientsTexture, destinationTexture, destinationTextureCopy, textureCopy);
    objc_msgSend_endEncoding(v32, v37, v38);
  }
}

- (void)encodeRegressionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTextureA:(id)a destinationCoefficientsTextureB:(id)b
{
  v15 = objc_msgSend_width(a, a2, encoder, buffer);
  v18 = objc_msgSend_height(a, v16, v17);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(encoder, v20, ComputeState);
    MPSLibrary::ReleaseComputeState();
    v34[0] = LODWORD(self->_epsilon);
    kernelDiameter = self->_kernelDiameter;
    v34[1] = kernelDiameter >> 1;
    *&v34[2] = 1.0 / (kernelDiameter * kernelDiameter);
    objc_msgSend_setTexture_atIndex_(encoder, v22, guidanceTexture, 0);
    objc_msgSend_setTexture_atIndex_(encoder, v23, texture, 1);
    objc_msgSend_setTexture_atIndex_(encoder, v24, weightsTexture, 2);
    objc_msgSend_setTexture_atIndex_(encoder, v25, a, 3);
    objc_msgSend_setTexture_atIndex_(encoder, v26, b, 4);
    Sampler = MPSDevice::GetSampler();
    objc_msgSend_setSamplerState_atIndex_(encoder, v28, Sampler, 0);
    objc_msgSend_setBytes_length_atIndex_(encoder, v29, v34, 12, 0);
    v33[0] = (v15 + 7) >> 3;
    v33[1] = (v18 + 7) >> 3;
    v33[2] = 1;
    v31 = xmmword_239988F20;
    v32 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v30, v33, &v31);
  }
}

- (void)encodeRegressionToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceTexture:(id)texture guidanceTexture:(id)guidanceTexture weightsTexture:(id)weightsTexture destinationCoefficientsTextureA:(id)a destinationCoefficientsTextureB:(id)b
{
  v16 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v16) & 1) == 0)
  {
    objc_msgSend_width(a, a2, encoder);
    objc_msgSend_width(b, v17, v18);
    v21 = objc_msgSend_width(a, v19, v20);
    if (v21 != objc_msgSend_width(b, v22, v23) && MTLReportFailureTypeEnabled())
    {
      weightsTextureCopy = objc_msgSend_width(a, v24, v25);
      v59 = objc_msgSend_width(b, v54, v55);
      MTLReportFailure();
    }

    objc_msgSend_height(a, v24, v25, weightsTextureCopy, v59);
    objc_msgSend_height(b, v26, v27);
    v30 = objc_msgSend_height(a, v28, v29);
    if (v30 != objc_msgSend_height(b, v31, v32) && MTLReportFailureTypeEnabled())
    {
      weightsTextureCopy = objc_msgSend_height(a, a2, v33);
      v59 = objc_msgSend_height(b, v56, v57);
      MTLReportFailure();
    }

    if (weightsTexture)
    {
      v60 = v16;
      bufferCopy = buffer;
      textureCopy = texture;
      guidanceTextureCopy = guidanceTexture;
      v37 = *MEMORY[0x277CD7350];
      v38 = *(&self->super.super.isa + v37);
      v39 = objc_msgSend_pixelFormat(weightsTexture, a2, v33);
      MPSDevice::GetPixelInfo(v38, v39, MPSImageFeatureChannelFormatNone);
      v40 = *(&self->super.super.isa + v37);
      guidanceTexture = guidanceTextureCopy;
      texture = textureCopy;
      buffer = bufferCopy;
      v16 = v60;
      v43 = objc_msgSend_pixelFormat(weightsTexture, v41, v42);
      if ((MPSDevice::GetPixelInfo(v40, v43, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x1000000)
      {
        if (MTLReportFailureTypeEnabled())
        {
          weightsTextureCopy = weightsTexture;
          MTLReportFailure();
        }
      }
    }
  }

  if (encoder)
  {

    objc_msgSend_encodeRegressionInternalToCommandEncoder_commandBuffer_sourceTexture_guidanceTexture_weightsTexture_destinationCoefficientsTextureA_destinationCoefficientsTextureB_(self, a2, encoder, buffer, texture, guidanceTexture, weightsTexture, a);
  }

  else
  {
    v44 = objc_alloc(MEMORY[0x277CD7210]);
    v47 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v44, v45, buffer, 0);
    if ((*(&self->super.super.isa + v16) & 0x18) != 0)
    {
      v48 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v48 || (v49 = objc_opt_class(), v50 = NSStringFromClass(v49), objc_msgSend_setLabel_(self, v51, v50), (v48 = v50) != 0))
      {
        objc_msgSend_setLabel_(v47, v46, v48, weightsTextureCopy, v59);
      }
    }

    objc_msgSend_encodeRegressionInternalToCommandEncoder_commandBuffer_sourceTexture_guidanceTexture_weightsTexture_destinationCoefficientsTextureA_destinationCoefficientsTextureB_(self, v46, v47, buffer, texture, guidanceTexture, weightsTexture, a, b);
    objc_msgSend_endEncoding(v47, v52, v53);
  }
}

- (void)encodeReconstructionInternalToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTextureA:(id)a coefficientsTextureB:(id)b destinationTexture:(id)destinationTexture
{
  MEMORY[0x23EE7BAC0](v106, buffer, destinationTexture);
  v103 = objc_msgSend_width(a, v13, v14);
  v104 = objc_msgSend_height(a, v15, v16);
  v105 = 1;
  PixelInfo = 0;
  v17 = *MEMORY[0x277CD7350];
  v18 = *(&self->super.super.isa + v17);
  v21 = objc_msgSend_pixelFormat(a, v19, v20);
  PixelInfo = MPSDevice::GetPixelInfo(v18, v21, MPSImageFeatureChannelFormatNone);
  CompressedTempTexture = MPSAutoCache::GetCompressedTempTexture();
  v22 = MPSAutoCache::GetCompressedTempTexture();
  v91 = MPSAutoCache::GetCompressedTempTexture();
  v93 = MPSAutoCache::GetCompressedTempTexture();
  v94 = v22;
  destinationTextureCopy = destinationTexture;
  v95.i32[0] = SLODWORD(self->_kernelDiameter) / 2;
  v25 = objc_msgSend_width(a, v23, v24);
  v28 = objc_msgSend_height(a, v26, v27);
  ComputeState = MPSLibrary::GetComputeState();
  if (ComputeState)
  {
    objc_msgSend_setComputePipelineState_(encoder, v29, ComputeState);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_setTexture_atIndex_(encoder, v31, a, 0);
    objc_msgSend_setTexture_atIndex_(encoder, v32, CompressedTempTexture, 1);
    objc_msgSend_setBytes_length_atIndex_(encoder, v33, &v95, 4, 0);
    v34 = (v25 + 15) >> 4;
    v35 = (v28 + 15) >> 4;
    v97 = v34;
    v98 = v35;
    v99 = 1;
    v100 = vdupq_n_s64(0x10uLL);
    v101 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v36, &v97, &v100);
    objc_msgSend_setTexture_atIndex_(encoder, v37, b, 0);
    objc_msgSend_setTexture_atIndex_(encoder, v38, v91, 1);
    objc_msgSend_setBytes_length_atIndex_(encoder, v39, &v95, 4, 0);
    v97 = v34;
    v98 = v35;
    v99 = 1;
    v100 = vdupq_n_s64(0x10uLL);
    v101 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v40, &v97, &v100);
    v42 = MPSLibrary::GetComputeState();
    if (v42)
    {
      objc_msgSend_setComputePipelineState_(encoder, v41, v42);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_setTexture_atIndex_(encoder, v43, CompressedTempTexture, 0);
      objc_msgSend_setTexture_atIndex_(encoder, v44, v94, 1);
      objc_msgSend_setBytes_length_atIndex_(encoder, v45, &v95, 4, 0);
      v97 = v34;
      v98 = v35;
      v99 = 1;
      v100 = vdupq_n_s64(0x10uLL);
      v101 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v46, &v97, &v100);
      objc_msgSend_setTexture_atIndex_(encoder, v47, v91, 0);
      objc_msgSend_setTexture_atIndex_(encoder, v48, v93, 1);
      objc_msgSend_setBytes_length_atIndex_(encoder, v49, &v95, 4, 0);
      v97 = v34;
      v98 = v35;
      v99 = 1;
      v100 = vdupq_n_s64(0x10uLL);
      v101 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v50, &v97, &v100);
      v51 = *(&self->super.super.isa + v17);
      v54 = objc_msgSend_pixelFormat(v94, v52, v53);
      v55 = *(v51 + 1476);
      v56 = *(&self->super.super.isa + v17);
      v59 = objc_msgSend_pixelFormat(v93, v57, v58);
      LODWORD(v54) = sub_23996E594(v55, v54);
      v99 = v54 & sub_23996E594(*(v56 + 1476), v59);
      v61 = MPSLibrary::GetComputeState();
      if (v61)
      {
        objc_msgSend_setComputePipelineState_(encoder, v60, v61);
        MPSLibrary::ReleaseComputeState();
        v64 = objc_msgSend_width(v94, v62, v63);
        v67 = objc_msgSend_height(v94, v65, v66);
        v70 = objc_msgSend_width(destinationTextureCopy, v68, v69);
        v73 = objc_msgSend_height(destinationTextureCopy, v71, v72);
        v74.f32[0] = v64;
        v74.f32[1] = v67;
        v75.f32[0] = v70;
        v75.f32[1] = v73;
        v76 = vdiv_f32(v74, v75);
        v75.i32[0] = LODWORD(self->_reconstructOffset);
        v100.i32[0] = LODWORD(self->_reconstructScale);
        v100.i32[1] = v75.i32[0];
        v100.u64[1] = v76;
        objc_msgSend_setBytes_length_atIndex_(encoder, v77, &v100, 16, 0);
        objc_msgSend_setTexture_atIndex_(encoder, v78, v94, 0);
        objc_msgSend_setTexture_atIndex_(encoder, v79, v93, 1);
        objc_msgSend_setTexture_atIndex_(encoder, v80, texture, 2);
        objc_msgSend_setTexture_atIndex_(encoder, v81, destinationTextureCopy, 3);
        v84 = objc_msgSend_width(destinationTextureCopy, v82, v83);
        v87 = objc_msgSend_height(destinationTextureCopy, v85, v86);
        v100.i64[0] = (v84 + 15) >> 4;
        v100.i64[1] = (v87 + 15) >> 4;
        v101 = 1;
        v95 = vdupq_n_s64(0x10uLL);
        v96 = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v88, &v100, &v95);
      }
    }
  }

  MPSAutoCache::~MPSAutoCache(v106);
}

- (void)encodeReconstructionToCommandEncoder:(id)encoder commandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTextureA:(id)a coefficientsTextureB:(id)b destinationTexture:(id)destinationTexture
{
  v15 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v15) & 1) == 0)
  {
    v16 = objc_msgSend_width(texture, a2, encoder);
    if (v16 == objc_msgSend_width(destinationTexture, v17, v18))
    {
      objc_msgSend_height(texture, v19, v20);
      objc_msgSend_height(destinationTexture, v21, v22);
    }

    v23 = objc_msgSend_width(texture, v19, v20);
    if (v23 != objc_msgSend_width(destinationTexture, v24, v25) || (v28 = objc_msgSend_height(texture, v26, v27), v28 != objc_msgSend_height(destinationTexture, v29, v30)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        destinationTextureCopy = destinationTexture;
        textureCopy = texture;
        MTLReportFailure();
      }
    }
  }

  if (encoder)
  {

    objc_msgSend_encodeReconstructionInternalToCommandEncoder_commandBuffer_guidanceTexture_coefficientsTextureA_coefficientsTextureB_destinationTexture_(self, a2, encoder, buffer, texture, a, b, destinationTexture);
  }

  else
  {
    v31 = objc_alloc(MEMORY[0x277CD7210]);
    v34 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v31, v32, buffer, 0);
    if ((*(&self->super.super.isa + v15) & 0x18) != 0)
    {
      v35 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v35 || (v36 = objc_opt_class(), v37 = NSStringFromClass(v36), objc_msgSend_setLabel_(self, v38, v37), (v35 = v37) != 0))
      {
        objc_msgSend_setLabel_(v34, v33, v35, destinationTextureCopy, textureCopy, v34, self);
      }
    }

    objc_msgSend_encodeReconstructionInternalToCommandEncoder_commandBuffer_guidanceTexture_coefficientsTextureA_coefficientsTextureB_destinationTexture_(self, v33, v34, buffer, texture, a, b, destinationTexture, destinationTextureCopy, textureCopy);
    objc_msgSend_endEncoding(v34, v39, v40);
  }
}

@end