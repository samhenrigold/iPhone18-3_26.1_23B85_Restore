@interface MPSImageSpatioTemporalGuidedFilter
- (MPSImageSpatioTemporalGuidedFilter)initWithCoder:(id)coder device:(id)device;
- (MPSImageSpatioTemporalGuidedFilter)initWithDevice:(id)device filterDescriptor:(id)descriptor;
- (id)allocateIntermediateTextureWithDevice:(id)device textureDescriptor:(id)descriptor;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)newTemporaryIntermediate:(id)intermediate texture:(id)texture;
- (void)allocateResourcesWithDevice:(id)device;
- (void)compileKernels;
- (void)dealloc;
- (void)encodeDownsamplingOn:(id)on inputTexture:(id)texture outputTexture:(id)outputTexture;
- (void)encodeReconstructionToCommandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTextureArray:(id)array destinationTextureArray:(id)textureArray;
- (void)encodeReconstructionToCommandBuffer:(id)buffer guidanceTexture:(id)texture constraintsTexture:(id)constraintsTexture coefficientsTextureArray:(id)array destinationTexture:(id)destinationTexture;
- (void)encodeRegressionToCommandBuffer:(id)buffer sourceTextureArray:(id)array guidanceTexture:(id)texture constraintsTextureArray:(id)textureArray numberOfIterations:(unint64_t)iterations destinationCoefficientsTextureArray:(id)coefficientsTextureArray;
- (void)encodeShiftOn:(id)on textureArray:(id)array by:(unint64_t)by;
- (void)encodeToCommandBuffer:(id)buffer sourceTextureArray:(id)array guidanceTexture:(id)texture constraintsTextureArray:(id)textureArray numberOfIterations:(unint64_t)iterations destinationTextureArray:(id)destinationTextureArray;
- (void)encodeWithCoder:(id)coder;
- (void)validateCoefficientsTextures:(id)textures;
@end

@implementation MPSImageSpatioTemporalGuidedFilter

- (MPSImageSpatioTemporalGuidedFilter)initWithDevice:(id)device filterDescriptor:(id)descriptor
{
  v45.receiver = self;
  v45.super_class = MPSImageSpatioTemporalGuidedFilter;
  v6 = [(MPSKernel *)&v45 initWithDevice:?];
  if (v6)
  {
    MPSDevice = MPSDevice::GetMPSDevice();
    objc_msgSend_kernelSpatialDiameter(descriptor, v8, v9);
    if ((objc_msgSend_kernelSpatialDiameter(descriptor, v10, v11) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_kernelTemporalDiameter(descriptor, v12, v13);
    if ((objc_msgSend_kernelTemporalDiameter(descriptor, v14, v15) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (objc_msgSend_guideChannels(descriptor, v16, v17) != 3)
    {
      objc_msgSend_guideChannels(descriptor, v18, v19);
    }

    if (objc_msgSend_guideChannels(descriptor, v18, v19) != 3 && objc_msgSend_guideChannels(descriptor, v20, v21) != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v6->_width = objc_msgSend_width(descriptor, v20, v21);
    v6->_height = objc_msgSend_height(descriptor, v22, v23);
    v6->_arrayLength = objc_msgSend_arrayLength(descriptor, v24, v25);
    v6->_kernelSpatialDiameter = objc_msgSend_kernelSpatialDiameter(descriptor, v26, v27);
    v6->_kernelTemporalDiameter = objc_msgSend_kernelTemporalDiameter(descriptor, v28, v29);
    objc_msgSend_epsilon(descriptor, v30, v31);
    v6->_epsilon = v32;
    v6->_sourceChannels = objc_msgSend_sourceChannels(descriptor, v33, v34);
    v6->_guideChannels = objc_msgSend_guideChannels(descriptor, v35, v36);
    v6->_preallocateIntermediates = objc_msgSend_preallocateIntermediates(descriptor, v37, v38);
    v6->_useFloatIntermediates = 0;
    v41 = objc_msgSend_useHighPrecisionIntermediates(descriptor, v39, v40);
    v42 = *(MPSDevice + 1476);
    v6->_useFloatIntermediates = v41 & ((v42 & 0x80) >> 7);
    v6->_supportsReadWriteTextures = (v42 & 4) != 0;
    objc_msgSend_allocateResourcesWithDevice_(v6, v43, device);
  }

  return v6;
}

- (MPSImageSpatioTemporalGuidedFilter)initWithCoder:(id)coder device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSImageSpatioTemporalGuidedFilter;
  v4 = [(MPSKernel *)&v10 initWithCoder:coder device:device];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v6 = *(&v4->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16;
  v7 = MTLReportFailureTypeEnabled();
  if (v6 == 0x10000)
  {
    if (v7)
    {
      MTLReportFailure();
    }

    return v5;
  }

  if (v7)
  {
    v9 = objc_opt_class();
    NSStringFromClass(v9);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSImageSpatioTemporalGuidedFilter;
  [(MPSKernel *)&v3 encodeWithCoder:coder];
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSImageSpatioTemporalGuidedFilter;
  v4 = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (v4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v4;
}

- (id)allocateIntermediateTextureWithDevice:(id)device textureDescriptor:(id)descriptor
{
  v5 = objc_msgSend_newTextureWithDescriptor_(device, a2, descriptor);
  self->_preallocatedSize += objc_msgSend_allocatedSize(v5, v6, v7);
  return v5;
}

- (void)allocateResourcesWithDevice:(id)device
{
  v82[2] = *MEMORY[0x277D85DE8];
  self->_preallocatedSize = 0;
  v5 = [MPSImageBox3D alloc];
  self->_boxFilter = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_kernelDepth_(v5, v6, device, self->_kernelSpatialDiameter, self->_kernelSpatialDiameter, self->_kernelTemporalDiameter);
  v7 = [MPSImageBilinearScale alloc];
  v9 = objc_msgSend_initWithDevice_(v7, v8, device);
  self->_bilinearScaler = v9;
  objc_msgSend_setEdgeMode_(v9, v10, 1);
  if (self->_useFloatIntermediates)
  {
    v12 = 125;
  }

  else
  {
    v12 = 115;
  }

  if (self->_useFloatIntermediates)
  {
    v13 = 105;
  }

  else
  {
    v13 = 65;
  }

  if (self->_useFloatIntermediates)
  {
    v14 = 55;
  }

  else
  {
    v14 = 25;
  }

  v16 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v11, v12, self->_width, self->_height, 0);
  if (!v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_setTextureType_(v16, v15, 3);
  objc_msgSend_setArrayLength_(v16, v17, self->_arrayLength);
  objc_msgSend_setUsage_(v16, v18, 19);
  v21 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v19, v13, self->_width, self->_height, 0);
  if (!v21 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_setTextureType_(v21, v20, 3);
  objc_msgSend_setArrayLength_(v21, v22, self->_arrayLength);
  objc_msgSend_setUsage_(v21, v23, 19);
  v26 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v24, v14, self->_width, self->_height, 0);
  if (!v26 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_setTextureType_(v26, v25, 3);
  objc_msgSend_setArrayLength_(v26, v27, self->_arrayLength);
  objc_msgSend_setUsage_(v26, v28, 19);
  v78 = v16;
  IntermediateTextureWithDevice_textureDescriptor = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v29, device, v16);
  self->_guideStack = IntermediateTextureWithDevice_textureDescriptor;
  if (!IntermediateTextureWithDevice_textureDescriptor && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v31 = objc_alloc(MEMORY[0x277CBEB18]);
  v34 = objc_msgSend_initWithCapacity_(v31, v32, self->_sourceChannels);
  if (self->_sourceChannels)
  {
    v35 = 0;
    do
    {
      v37 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v33, device, v26);
      if (!v37 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      objc_msgSend_setObject_atIndexedSubscript_(v34, v36, v37, v35);

      ++v35;
    }

    while (v35 < self->_sourceChannels);
  }

  v38 = objc_alloc(MEMORY[0x277CBEA60]);
  self->_sourceStackArray = objc_msgSend_initWithArray_(v38, v39, v34);

  v40 = v16;
  v42 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v41, device, v16);
  self->_mean_guideStack = v42;
  if (!v42 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v44 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v43, device, v26);
  self->_mean_sourceStack = v44;
  if (!v44 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  guideChannels = self->_guideChannels;
  if (guideChannels == 4)
  {
    v52 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v45, device, v16);
    if (!v52 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v48 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v51, device, v78);
    if (!v48 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v50 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v53, device, v21);
    if (!v50 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v81[0] = v52;
    v81[1] = v48;
    v81[2] = v50;
    self->_var_I = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v54, v81, 3);

    goto LABEL_32;
  }

  if (guideChannels == 3)
  {
    v48 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v45, device, v16);
    if (!v48 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v50 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v47, device, v21);
    if (!v50 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v82[0] = v48;
    v82[1] = v50;
    self->_var_I = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v49, v82, 2);
LABEL_32:

    goto LABEL_33;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v75 = self->_guideChannels;
    MTLReportFailure();
  }

LABEL_33:
  v56 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v55, device, v26, v75);
  self->_constraints = v56;
  if (!v56 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (self->_preallocateIntermediates)
  {
    v57 = objc_alloc(MEMORY[0x277CBEB18]);
    v60 = objc_msgSend_initWithCapacity_(v57, v58, self->_sourceChannels);
    if (self->_sourceChannels)
    {
      for (i = 0; i < self->_sourceChannels; ++i)
      {
        v66 = self->_guideChannels;
        if (v66 == 4)
        {
          v69 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v59, device, v40);
          if (!v69 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v71 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v68, device, v26);
          if (!v71 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v79[0] = v69;
          v79[1] = v71;
          v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v70, v79, 2);

          v40 = v78;
          objc_msgSend_addObject_(v60, v72, v64, v76);
          goto LABEL_40;
        }

        if (v66 == 3)
        {
          v63 = objc_msgSend_allocateIntermediateTextureWithDevice_textureDescriptor_(self, v59, device, v40);
          if (!v63)
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }

          v80 = v63;
          v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v62, &v80, 1);
        }

        else
        {
          v64 = 0;
          if (MTLReportFailureTypeEnabled())
          {
            v77 = self->_guideChannels;
            MTLReportFailure();
            v64 = 0;
            objc_msgSend_addObject_(v60, v67, 0, v77);
            goto LABEL_40;
          }
        }

        objc_msgSend_addObject_(v60, v65, v64, v76);
LABEL_40:
      }
    }

    v73 = objc_alloc(MEMORY[0x277CBEA60]);
    self->_coefficientsTextureArray = objc_msgSend_initWithArray_(v73, v74, v60);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageSpatioTemporalGuidedFilter;
  [(MPSKernel *)&v3 dealloc];
}

- (void)compileKernels
{
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();
  MPSLibrary::PrefetchComputeState();

  MPSLibrary::PrefetchComputeState();
}

- (void)encodeRegressionToCommandBuffer:(id)buffer sourceTextureArray:(id)array guidanceTexture:(id)texture constraintsTextureArray:(id)textureArray numberOfIterations:(unint64_t)iterations destinationCoefficientsTextureArray:(id)coefficientsTextureArray
{
  v333 = *MEMORY[0x277D85DE8];
  v295 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v295) & 1) == 0)
  {
    objc_msgSend_count(array, a2, buffer);
    if (!objc_msgSend_count(array, v10, v11) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v327 = 0u;
    v328 = 0u;
    v325 = 0u;
    v326 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(array, v12, &v325, v332, 16);
    v16 = MEMORY[0x277CD7350];
    if (v15)
    {
      v17 = *v326;
      do
      {
        v18 = 0;
        do
        {
          if (*v326 != v17)
          {
            objc_enumerationMutation(array);
          }

          v19 = *(*(&v325 + 1) + 8 * v18);
          v20 = *v16;
          v21 = *(&self->super.super.isa + v20);
          v22 = objc_msgSend_pixelFormat(v19, v13, v14, textureCopy);
          MPSDevice::GetPixelInfo(v21, v22, MPSImageFeatureChannelFormatNone);
          v23 = *(&self->super.super.isa + v20);
          v26 = objc_msgSend_pixelFormat(v19, v24, v25);
          if ((MPSDevice::GetPixelInfo(v23, v26, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
          {
            textureCopy = v19;
            MTLReportFailure();
          }

          ++v18;
        }

        while (v15 != v18);
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(array, v13, &v325, v332, 16);
        v15 = v27;
      }

      while (v27);
    }

    if (self->_guideChannels == 4)
    {
      v28 = *v16;
      v29 = *(&self->super.super.isa + v28);
      v30 = objc_msgSend_pixelFormat(texture, v13, v14);
      MPSDevice::GetPixelInfo(v29, v30, MPSImageFeatureChannelFormatNone);
      v31 = *(&self->super.super.isa + v28);
      v34 = objc_msgSend_pixelFormat(texture, v32, v33);
      if ((MPSDevice::GetPixelInfo(v31, v34, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x4000000)
      {
        if (MTLReportFailureTypeEnabled())
        {
          textureCopy = texture;
          MTLReportFailure();
        }
      }
    }

    if (textureArray)
    {
      objc_msgSend_count(textureArray, v13, v14);
      objc_msgSend_count(array, v35, v36);
      v39 = objc_msgSend_count(textureArray, v37, v38);
      if (v39 != objc_msgSend_count(array, v40, v41) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v323 = 0u;
      v324 = 0u;
      v321 = 0u;
      v322 = 0u;
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(textureArray, v42, &v321, v331, 16, textureCopy);
      if (v43)
      {
        v44 = *v322;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v322 != v44)
            {
              objc_enumerationMutation(textureArray);
            }

            v46 = *(*(&v321 + 1) + 8 * i);
            if (v46 != objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14, textureCopy))
            {
              if (objc_msgSend_textureType(v46, v13, v14) != 2)
              {
                objc_msgSend_textureType(v46, v47, v48);
              }

              if (objc_msgSend_textureType(v46, v47, v48) != 2 && objc_msgSend_textureType(v46, v49, v50) != 3 && MTLReportFailureTypeEnabled())
              {
                textureCopy = v46;
                MTLReportFailure();
              }

              v51 = *v16;
              v52 = *(&self->super.super.isa + v51);
              v53 = objc_msgSend_pixelFormat(v46, v49, v50, textureCopy);
              MPSDevice::GetPixelInfo(v52, v53, MPSImageFeatureChannelFormatNone);
              v54 = *(&self->super.super.isa + v51);
              v57 = objc_msgSend_pixelFormat(v46, v55, v56);
              if ((MPSDevice::GetPixelInfo(v54, v57, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
              {
                textureCopy = v46;
                MTLReportFailure();
              }
            }
          }

          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(textureArray, v13, &v321, v331, 16);
        }

        while (v43);
      }
    }

    if (!iterations && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_count(coefficientsTextureArray, v13, v14, textureCopy);
    objc_msgSend_count(array, v58, v59);
    v62 = objc_msgSend_count(coefficientsTextureArray, v60, v61);
    if (v62 != objc_msgSend_count(array, v63, v64) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v319 = 0u;
    v320 = 0u;
    v317 = 0u;
    v318 = 0u;
    v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(coefficientsTextureArray, v65, &v317, v330, 16);
    if (v66)
    {
      v67 = *v318;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v318 != v67)
          {
            objc_enumerationMutation(coefficientsTextureArray);
          }

          objc_msgSend_validateCoefficientsTextures_(self, a2, *(*(&v317 + 1) + 8 * j));
        }

        v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(coefficientsTextureArray, a2, &v317, v330, 16);
      }

      while (v66);
    }
  }

  kernelTemporalDiameter = self->_kernelTemporalDiameter;
  v316 = LODWORD(self->_kernelSpatialDiameter) >> 1;
  v315 = kernelTemporalDiameter >> 1;
  guideStack = self->_guideStack;
  v71 = objc_msgSend_arrayLength(texture, a2, buffer);
  objc_msgSend_encodeShiftOn_textureArray_by_(self, v72, buffer, guideStack, v71);
  objc_msgSend_encodeDownsamplingOn_inputTexture_outputTexture_(self, v73, buffer, texture, self->_guideStack);
  objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_boxFilter, v74, buffer, self->_guideStack, self->_mean_guideStack);
  guideChannels = self->_guideChannels;
  if (guideChannels == 4)
  {
    ComputeState = MPSLibrary::GetComputeState();
    v116 = objc_alloc(MEMORY[0x277CD7210]);
    v119 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v116, v117, buffer, 0);
    v313 = v119;
    selfCopy4 = self;
    if ((*(&self->super.super.isa + v295) & 0x18) != 0)
    {
      v120 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v120 || (v121 = objc_opt_class(), v120 = NSStringFromClass(v121), objc_msgSend_setLabel_(self, v122, v120), v120))
      {
        objc_msgSend_setLabel_(v119, v118, v120);
      }
    }

    objc_msgSend_setComputePipelineState_(v119, v118, ComputeState);
    objc_msgSend_setTexture_atIndex_(v119, v123, self->_guideStack, 0);
    objc_msgSend_setTexture_atIndex_(v119, v124, self->_mean_guideStack, 1);
    v126 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v125, 0);
    objc_msgSend_setTexture_atIndex_(v119, v127, v126, 2);
    v129 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v128, 1);
    objc_msgSend_setTexture_atIndex_(v119, v130, v129, 3);
    v132 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v131, 2);
    objc_msgSend_setTexture_atIndex_(v119, v133, v132, 4);
    objc_msgSend_setBytes_length_atIndex_(v119, v134, &self->_epsilon, 4, 0);
    objc_msgSend_setBytes_length_atIndex_(v119, v135, &v316, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(v119, v136, &v315, 4, 2);
    v139 = objc_msgSend_threadExecutionWidth(ComputeState, v137, v138);
    v142 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v140, v141);
    v145 = objc_msgSend_width(self->_guideStack, v143, v144);
    v148 = objc_msgSend_height(self->_guideStack, v146, v147);
    v151 = objc_msgSend_arrayLength(self->_guideStack, v149, v150);
    v310 = (v139 + v145 - 1) / v139;
    v311 = (v142 / v139 + v148 - 1) / (v142 / v139);
    v312 = v151;
    v307 = v139;
    v308 = v142 / v139;
    v309 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v119, v152, &v310, &v307);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_endEncoding(v119, v153, v154);
  }

  else if (guideChannels == 3)
  {
    v76 = MPSLibrary::GetComputeState();
    v77 = objc_alloc(MEMORY[0x277CD7210]);
    v80 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v77, v78, buffer, 0);
    v313 = v80;
    selfCopy4 = self;
    if ((*(&self->super.super.isa + v295) & 0x18) != 0)
    {
      v81 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
      if (v81 || (v82 = objc_opt_class(), v81 = NSStringFromClass(v82), objc_msgSend_setLabel_(self, v83, v81), v81))
      {
        objc_msgSend_setLabel_(v80, v79, v81);
      }
    }

    objc_msgSend_setComputePipelineState_(v80, v79, v76);
    objc_msgSend_setTexture_atIndex_(v80, v84, self->_guideStack, 0);
    objc_msgSend_setTexture_atIndex_(v80, v85, self->_mean_guideStack, 1);
    v87 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v86, 0);
    objc_msgSend_setTexture_atIndex_(v80, v88, v87, 2);
    v90 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v89, 1);
    objc_msgSend_setTexture_atIndex_(v80, v91, v90, 3);
    objc_msgSend_setBytes_length_atIndex_(v80, v92, &self->_epsilon, 4, 0);
    objc_msgSend_setBytes_length_atIndex_(v80, v93, &v316, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(v80, v94, &v315, 4, 2);
    v97 = objc_msgSend_threadExecutionWidth(v76, v95, v96);
    v100 = objc_msgSend_maxTotalThreadsPerThreadgroup(v76, v98, v99);
    v103 = objc_msgSend_width(self->_guideStack, v101, v102);
    v106 = objc_msgSend_height(self->_guideStack, v104, v105);
    v109 = objc_msgSend_arrayLength(self->_guideStack, v107, v108);
    v310 = (v97 + v103 - 1) / v97;
    v311 = (v100 / v97 + v106 - 1) / (v100 / v97);
    v312 = v109;
    v307 = v97;
    v308 = v100 / v97;
    v309 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v80, v110, &v310, &v307);
    MPSLibrary::ReleaseComputeState();
    objc_msgSend_endEncoding(v80, v111, v112);
  }

  else if (MTLReportFailureTypeEnabled())
  {
    textureCopy = self->_guideChannels;
    MTLReportFailure();
  }

  if (objc_msgSend_count(array, v113, v114, textureCopy))
  {
    v156 = 0;
    do
    {
      v300 = v156;
      v157 = objc_msgSend_objectAtIndexedSubscript_(array, v155, v156);
      v159 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStackArray, v158, v300);
      v162 = objc_msgSend_arrayLength(v157, v160, v161);
      objc_msgSend_encodeShiftOn_textureArray_by_(self, v163, buffer, v159, v162);
      v165 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStackArray, v164, v300);
      objc_msgSend_encodeDownsamplingOn_inputTexture_outputTexture_(self, v166, buffer, v157, v165);
      if (!textureArray)
      {
        goto LABEL_64;
      }

      v169 = objc_msgSend_count(textureArray, v167, v168);
      v170 = v300;
      if (v300 >= v169)
      {
        v297 = 0;
        goto LABEL_67;
      }

      v171 = objc_msgSend_objectAtIndexedSubscript_(textureArray, v167, v300);
      if (v171 == objc_msgSend_null(MEMORY[0x277CBEB68], v172, v173))
      {
LABEL_64:
        v297 = 0;
      }

      else
      {
        constraints = self->_constraints;
        v175 = objc_msgSend_objectAtIndexedSubscript_(textureArray, v167, v300);
        v178 = objc_msgSend_arrayLength(v175, v176, v177);
        objc_msgSend_encodeShiftOn_textureArray_by_(self, v179, buffer, constraints, v178);
        v181 = objc_msgSend_objectAtIndexedSubscript_(textureArray, v180, v300);
        objc_msgSend_encodeDownsamplingOn_inputTexture_outputTexture_(self, v182, buffer, v181, self->_constraints);
        v297 = 1;
      }

      v170 = v300;
LABEL_67:
      v183 = objc_msgSend_objectAtIndexedSubscript_(coefficientsTextureArray, v167, v170);
      if (iterations)
      {
        v186 = v183;
        v302 = 0;
        do
        {
          boxFilter = self->_boxFilter;
          v188 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStackArray, v184, v300);
          objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(boxFilter, v189, buffer, v188, self->_mean_sourceStack);
          v190 = self->_guideChannels;
          if (v190 == 4)
          {
            v235 = MPSLibrary::GetComputeState();
            v236 = objc_alloc(MEMORY[0x277CD7210]);
            v239 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v236, v237, buffer, 0);
            v313 = v239;
            selfCopy4 = self;
            if ((*(&self->super.super.isa + v295) & 0x18) != 0)
            {
              v240 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
              if (v240 || (v241 = objc_opt_class(), v240 = NSStringFromClass(v241), objc_msgSend_setLabel_(self, v242, v240), v240))
              {
                objc_msgSend_setLabel_(v239, v238, v240);
              }
            }

            objc_msgSend_setComputePipelineState_(v239, v238, v235);
            objc_msgSend_setTexture_atIndex_(v239, v243, self->_guideStack, 0);
            v245 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStackArray, v244, v300);
            objc_msgSend_setTexture_atIndex_(v239, v246, v245, 1);
            objc_msgSend_setTexture_atIndex_(v239, v247, self->_mean_guideStack, 2);
            objc_msgSend_setTexture_atIndex_(v239, v248, self->_mean_sourceStack, 3);
            v250 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v249, 0);
            objc_msgSend_setTexture_atIndex_(v239, v251, v250, 4);
            v253 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v252, 1);
            objc_msgSend_setTexture_atIndex_(v239, v254, v253, 5);
            v256 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v255, 2);
            objc_msgSend_setTexture_atIndex_(v239, v257, v256, 6);
            v259 = objc_msgSend_objectAtIndexedSubscript_(v186, v258, 0);
            objc_msgSend_setTexture_atIndex_(v239, v260, v259, 7);
            v262 = objc_msgSend_objectAtIndexedSubscript_(v186, v261, 1);
            objc_msgSend_setTexture_atIndex_(v239, v263, v262, 8);
            objc_msgSend_setBytes_length_atIndex_(v239, v264, &v316, 4, 0);
            objc_msgSend_setBytes_length_atIndex_(v239, v265, &v315, 4, 1);
            v268 = objc_msgSend_threadExecutionWidth(v235, v266, v267);
            v271 = objc_msgSend_maxTotalThreadsPerThreadgroup(v235, v269, v270);
            v274 = objc_msgSend_width(self->_guideStack, v272, v273);
            v277 = objc_msgSend_height(self->_guideStack, v275, v276);
            v280 = objc_msgSend_arrayLength(self->_guideStack, v278, v279);
            v310 = (v268 + v274 - 1) / v268;
            v311 = (v271 / v268 + v277 - 1) / (v271 / v268);
            v312 = v280;
            v307 = v268;
            v308 = v271 / v268;
            v309 = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v239, v281, &v310, &v307);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_endEncoding(v239, v282, v283);
          }

          else if (v190 == 3)
          {
            v191 = MPSLibrary::GetComputeState();
            v192 = objc_alloc(MEMORY[0x277CD7210]);
            v195 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v192, v193, buffer, 0);
            v313 = v195;
            selfCopy4 = self;
            if ((*(&self->super.super.isa + v295) & 0x18) != 0)
            {
              v196 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
              if (v196 || (v197 = objc_opt_class(), v196 = NSStringFromClass(v197), objc_msgSend_setLabel_(self, v198, v196), v196))
              {
                objc_msgSend_setLabel_(v195, v194, v196);
              }
            }

            objc_msgSend_setComputePipelineState_(v195, v194, v191);
            objc_msgSend_setTexture_atIndex_(v195, v199, self->_guideStack, 0);
            v201 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStackArray, v200, v300);
            objc_msgSend_setTexture_atIndex_(v195, v202, v201, 1);
            objc_msgSend_setTexture_atIndex_(v195, v203, self->_mean_guideStack, 2);
            objc_msgSend_setTexture_atIndex_(v195, v204, self->_mean_sourceStack, 3);
            v206 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v205, 0);
            objc_msgSend_setTexture_atIndex_(v195, v207, v206, 4);
            v209 = objc_msgSend_objectAtIndexedSubscript_(self->_var_I, v208, 1);
            objc_msgSend_setTexture_atIndex_(v195, v210, v209, 5);
            v212 = objc_msgSend_objectAtIndexedSubscript_(v186, v211, 0);
            objc_msgSend_setTexture_atIndex_(v195, v213, v212, 6);
            objc_msgSend_setBytes_length_atIndex_(v195, v214, &v316, 4, 0);
            objc_msgSend_setBytes_length_atIndex_(v195, v215, &v315, 4, 1);
            v218 = objc_msgSend_threadExecutionWidth(v191, v216, v217);
            v221 = objc_msgSend_maxTotalThreadsPerThreadgroup(v191, v219, v220);
            v224 = objc_msgSend_width(self->_guideStack, v222, v223);
            v227 = objc_msgSend_height(self->_guideStack, v225, v226);
            v230 = objc_msgSend_arrayLength(self->_guideStack, v228, v229);
            v310 = (v218 + v224 - 1) / v218;
            v311 = (v221 / v218 + v227 - 1) / (v221 / v218);
            v312 = v230;
            v307 = v218;
            v308 = v221 / v218;
            v309 = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v195, v231, &v310, &v307);
            MPSLibrary::ReleaseComputeState();
            objc_msgSend_endEncoding(v195, v232, v233);
          }

          else if (MTLReportFailureTypeEnabled())
          {
            v293 = self->_guideChannels;
            MTLReportFailure();
          }

          v305 = 0u;
          v306 = 0u;
          v303 = 0u;
          v304 = 0u;
          v284 = objc_msgSend_countByEnumeratingWithState_objects_count_(v186, v234, &v303, v329, 16, v293);
          if (v284)
          {
            v285 = *v304;
            do
            {
              for (k = 0; k != v284; ++k)
              {
                if (*v304 != v285)
                {
                  objc_enumerationMutation(v186);
                }

                objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(self->_boxFilter, v184, buffer, *(*(&v303 + 1) + 8 * k), *(*(&v303 + 1) + 8 * k));
              }

              v284 = objc_msgSend_countByEnumeratingWithState_objects_count_(v186, v184, &v303, v329, 16);
            }

            while (v284);
          }

          if (v302 < iterations - 1 || self->_arrayLength >= 2)
          {
            if (v297)
            {
              v287 = self->_constraints;
            }

            else
            {
              v287 = 0;
            }

            v288 = self->_guideStack;
            v289 = objc_msgSend_objectAtIndexedSubscript_(self->_sourceStackArray, v184, v300);
            objc_msgSend_encodeReconstructionToCommandBuffer_guidanceTexture_constraintsTexture_coefficientsTextureArray_destinationTexture_(self, v290, buffer, v288, v287, v186, v289);
          }

          ++v302;
        }

        while (v302 != iterations);
      }

      v291 = objc_msgSend_count(array, v184, v185);
      v156 = v300 + 1;
    }

    while (v300 + 1 < v291);
  }
}

- (void)encodeReconstructionToCommandBuffer:(id)buffer guidanceTexture:(id)texture constraintsTexture:(id)constraintsTexture coefficientsTextureArray:(id)array destinationTexture:(id)destinationTexture
{
  v12 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v12) & 1) == 0)
  {
    if (objc_msgSend_textureType(destinationTexture, a2, buffer) != 2)
    {
      objc_msgSend_textureType(destinationTexture, v13, v14);
    }

    if (objc_msgSend_textureType(destinationTexture, v13, v14) != 2 && objc_msgSend_textureType(destinationTexture, v15, v16) != 3 && MTLReportFailureTypeEnabled())
    {
      destinationTextureCopy = destinationTexture;
      MTLReportFailure();
    }

    objc_msgSend_textureType(texture, v15, v16, destinationTextureCopy);
    objc_msgSend_textureType(destinationTexture, v17, v18);
    v21 = objc_msgSend_textureType(texture, v19, v20);
    if (v21 != objc_msgSend_textureType(destinationTexture, v22, v23) && MTLReportFailureTypeEnabled())
    {
      textureCopy = texture;
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(texture, v24, v25, textureCopy);
    objc_msgSend_arrayLength(destinationTexture, v26, v27);
    v30 = objc_msgSend_arrayLength(texture, v28, v29);
    if (v30 != objc_msgSend_arrayLength(destinationTexture, v31, v32) && MTLReportFailureTypeEnabled())
    {
      textureCopy2 = texture;
      MTLReportFailure();
    }

    v35 = *MEMORY[0x277CD7350];
    v36 = *(&self->super.super.isa + v35);
    v37 = objc_msgSend_pixelFormat(texture, v33, v34, textureCopy2);
    MPSDevice::GetPixelInfo(v36, v37, MPSImageFeatureChannelFormatNone);
    v38 = *(&self->super.super.isa + v35);
    v41 = objc_msgSend_pixelFormat(texture, v39, v40);
    if ((MPSDevice::GetPixelInfo(v38, v41, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x4000000 && MTLReportFailureTypeEnabled())
    {
      constraintsTextureCopy = texture;
      MTLReportFailure();
    }

    if (!constraintsTexture)
    {
      goto LABEL_13;
    }

    objc_msgSend_textureType(constraintsTexture, v42, v43);
    objc_msgSend_textureType(destinationTexture, v44, v45);
    v48 = objc_msgSend_textureType(constraintsTexture, v46, v47);
    if (v48 != objc_msgSend_textureType(destinationTexture, v49, v50) && MTLReportFailureTypeEnabled())
    {
      constraintsTextureCopy = constraintsTexture;
      MTLReportFailure();
    }

    objc_msgSend_arrayLength(constraintsTexture, v51, v52, constraintsTextureCopy);
    objc_msgSend_arrayLength(destinationTexture, v53, v54);
    v57 = objc_msgSend_arrayLength(constraintsTexture, v55, v56);
    if (v57 != objc_msgSend_arrayLength(destinationTexture, v58, v59) && MTLReportFailureTypeEnabled())
    {
      constraintsTextureCopy2 = constraintsTexture;
      MTLReportFailure();
    }

    v62 = *(&self->super.super.isa + v35);
    v63 = objc_msgSend_pixelFormat(constraintsTexture, v60, v61, constraintsTextureCopy2);
    MPSDevice::GetPixelInfo(v62, v63, MPSImageFeatureChannelFormatNone);
    v64 = *(&self->super.super.isa + v35);
    v67 = objc_msgSend_pixelFormat(constraintsTexture, v65, v66);
    if ((MPSDevice::GetPixelInfo(v64, v67, MPSImageFeatureChannelFormatNone) & 0xF000000) != 0x1000000 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      objc_msgSend_validateCoefficientsTextures_(self, v159, array, constraintsTexture);
    }

    else
    {
LABEL_13:
      objc_msgSend_validateCoefficientsTextures_(self, v42, array, constraintsTextureCopy);
    }
  }

  arrayCopy = array;
  v68 = objc_msgSend_width(texture, a2, buffer);
  if (v68 == objc_msgSend_width(destinationTexture, v69, v70))
  {
    v73 = objc_msgSend_height(texture, v71, v72);
    v76 = v73 != objc_msgSend_height(destinationTexture, v74, v75);
    if (!constraintsTexture)
    {
LABEL_19:
      v80 = 0;
      if (self->_supportsReadWriteTextures)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v76 = 1;
    if (!constraintsTexture)
    {
      goto LABEL_19;
    }
  }

  v77 = objc_msgSend_width(constraintsTexture, v71, v72);
  if (v77 == objc_msgSend_width(texture, v78, v79))
  {
    goto LABEL_19;
  }

  v84 = objc_msgSend_height(constraintsTexture, v71, v72);
  v80 = v84 != objc_msgSend_height(texture, v85, v86);
  if (self->_supportsReadWriteTextures)
  {
LABEL_20:
    v165 = 0;
    guideChannels = self->_guideChannels;
    if (guideChannels != 4)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

LABEL_27:
  v87 = objc_msgSend_newTemporaryIntermediate_texture_(self, v71, buffer, destinationTexture);
  v90 = objc_msgSend_blitCommandEncoder(buffer, v88, v89);
  v165 = v87;
  objc_msgSend_copyFromTexture_toTexture_(v90, v91, destinationTexture, v87);
  objc_msgSend_endEncoding(v90, v92, v93);
  guideChannels = self->_guideChannels;
  if (guideChannels != 4)
  {
LABEL_21:
    if (guideChannels == 3)
    {
      if (v76 || v80)
      {
        ComputeState = MPSLibrary::GetComputeState();
        v83 = arrayCopy;
      }

      else
      {
        objc_msgSend_textureType(destinationTexture, v71, v72);
        v83 = arrayCopy;
        ComputeState = MPSLibrary::GetComputeState();
      }

      v96 = objc_alloc(MEMORY[0x277CD7210]);
      v99 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v96, v97, buffer, 0);
      v174 = v99;
      selfCopy2 = self;
      if ((*(&self->super.super.isa + v12) & 0x18) != 0)
      {
        v100 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
        if (v100 || (v101 = objc_opt_class(), v102 = NSStringFromClass(v101), objc_msgSend_setLabel_(self, v103, v102), (v100 = v102) != 0))
        {
          objc_msgSend_setLabel_(v99, v98, v100);
        }
      }

      objc_msgSend_setComputePipelineState_(v99, v98, ComputeState);
      v105 = objc_msgSend_objectAtIndexedSubscript_(v83, v104, 0);
      objc_msgSend_setTexture_atIndex_(v99, v106, v105, 0);
      objc_msgSend_setTexture_atIndex_(v99, v107, texture, 1);
      objc_msgSend_setTexture_atIndex_(v99, v108, constraintsTexture, 2);
      if (self->_supportsReadWriteTextures)
      {
        objc_msgSend_setTexture_atIndex_(v99, v109, destinationTexture, 3);
      }

      else
      {
        objc_msgSend_setTexture_atIndex_(v99, v109, v165, 4);
        objc_msgSend_setTexture_atIndex_(v99, v112, destinationTexture, 5);
      }

      v113 = objc_msgSend_threadExecutionWidth(ComputeState, v110, v111);
      v116 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v114, v115);
      v171 = (v113 + objc_msgSend_width(destinationTexture, v117, v118) - 1) / v113;
      v172 = (v116 / v113 + objc_msgSend_height(destinationTexture, v119, v120) - 1) / (v116 / v113);
      v173 = objc_msgSend_arrayLength(destinationTexture, v121, v122);
      v168 = v113;
      v169 = v116 / v113;
      v170 = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v99, v123, &v171, &v168);
      MPSLibrary::ReleaseComputeState();
      objc_msgSend_endEncoding(v99, v124, v125);
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return;
  }

LABEL_28:
  if (v76 || v80)
  {
    v94 = MPSLibrary::GetComputeState();
    v95 = arrayCopy;
  }

  else
  {
    objc_msgSend_textureType(destinationTexture, v71, v72);
    v95 = arrayCopy;
    v94 = MPSLibrary::GetComputeState();
  }

  v126 = objc_alloc(MEMORY[0x277CD7210]);
  v129 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v126, v127, buffer, 0);
  v174 = v129;
  selfCopy2 = self;
  if ((*(&self->super.super.isa + v12) & 0x18) != 0)
  {
    v130 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v130 || (v131 = objc_opt_class(), v132 = NSStringFromClass(v131), objc_msgSend_setLabel_(self, v133, v132), (v130 = v132) != 0))
    {
      objc_msgSend_setLabel_(v129, v128, v130);
    }
  }

  objc_msgSend_setComputePipelineState_(v129, v128, v94);
  v135 = objc_msgSend_objectAtIndexedSubscript_(v95, v134, 0);
  objc_msgSend_setTexture_atIndex_(v129, v136, v135, 0);
  v138 = objc_msgSend_objectAtIndexedSubscript_(v95, v137, 1);
  objc_msgSend_setTexture_atIndex_(v129, v139, v138, 1);
  objc_msgSend_setTexture_atIndex_(v129, v140, texture, 2);
  objc_msgSend_setTexture_atIndex_(v129, v141, constraintsTexture, 3);
  if (self->_supportsReadWriteTextures)
  {
    objc_msgSend_setTexture_atIndex_(v129, v142, destinationTexture, 4);
  }

  else
  {
    objc_msgSend_setTexture_atIndex_(v129, v142, v165, 5);
    objc_msgSend_setTexture_atIndex_(v129, v145, destinationTexture, 6);
  }

  v146 = objc_msgSend_threadExecutionWidth(v94, v143, v144);
  v149 = objc_msgSend_maxTotalThreadsPerThreadgroup(v94, v147, v148);
  v171 = (v146 + objc_msgSend_width(destinationTexture, v150, v151) - 1) / v146;
  v172 = (v149 / v146 + objc_msgSend_height(destinationTexture, v152, v153) - 1) / (v149 / v146);
  v173 = objc_msgSend_arrayLength(destinationTexture, v154, v155);
  v168 = v146;
  v169 = v149 / v146;
  v170 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v129, v156, &v171, &v168);
  MPSLibrary::ReleaseComputeState();
  objc_msgSend_endEncoding(v129, v157, v158);
}

- (void)encodeReconstructionToCommandBuffer:(id)buffer guidanceTexture:(id)texture coefficientsTextureArray:(id)array destinationTextureArray:(id)textureArray
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_count(textureArray, a2, buffer);
    objc_msgSend_count(array, v11, v12);
    v15 = objc_msgSend_count(textureArray, v13, v14);
    if (v15 != objc_msgSend_count(array, v16, v17))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  if (objc_msgSend_count(array, a2, buffer))
  {
    v19 = 0;
    do
    {
      v20 = objc_msgSend_objectAtIndexedSubscript_(array, v18, v19);
      v22 = objc_msgSend_objectAtIndexedSubscript_(textureArray, v21, v19);
      objc_msgSend_encodeReconstructionToCommandBuffer_guidanceTexture_constraintsTexture_coefficientsTextureArray_destinationTexture_(self, v23, buffer, texture, 0, v20, v22);
      ++v19;
    }

    while (v19 < objc_msgSend_count(array, v24, v25));
  }
}

- (void)encodeToCommandBuffer:(id)buffer sourceTextureArray:(id)array guidanceTexture:(id)texture constraintsTextureArray:(id)textureArray numberOfIterations:(unint64_t)iterations destinationTextureArray:(id)destinationTextureArray
{
  v76 = *MEMORY[0x277D85DE8];
  coefficientsTextureArray = self->_coefficientsTextureArray;
  MEMORY[0x23EE7BAC0](v72, buffer, 0);
  if (!coefficientsTextureArray)
  {
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v19 = objc_msgSend_count(destinationTextureArray, v17, v18);
    v21 = objc_msgSend_initWithCapacity_(v16, v20, v19);
    iterationsCopy = iterations;
    textureCopy = texture;
    height = self->_height;
    width = self->_width;
    v70 = height;
    arrayLength = self->_arrayLength;
    v23 = *MEMORY[0x277CD7350];
    if (self->_useFloatIntermediates)
    {
      v24 = MTLPixelFormatRGBA32Float;
    }

    else
    {
      v24 = MTLPixelFormatRGBA16Float;
    }

    PixelInfo = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v23), v24, MPSImageFeatureChannelFormatNone);
    v26 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v25, PixelInfo & 0x3FF, width, v70, 0);
    objc_msgSend_setStorageMode_(v26, v27, 2);
    objc_msgSend_setArrayLength_(v26, v28, self->_arrayLength);
    objc_msgSend_setTextureType_(v26, v29, 3);
    v30 = (*(**(&self->super.super.isa + v23) + 40))(*(&self->super.super.isa + v23));
    objc_msgSend_setCpuCacheMode_(v26, v31, v30);
    objc_msgSend_setUsage_(v26, v32, 3);
    if (!v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (self->_useFloatIntermediates)
    {
      v33 = MTLPixelFormatR32Float;
    }

    else
    {
      v33 = MTLPixelFormatR16Float;
    }

    v67 = MPSDevice::GetPixelInfo(*(&self->super.super.isa + v23), v33, MPSImageFeatureChannelFormatNone);
    v35 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v34, v67 & 0x3FF, width, v70, 0);
    objc_msgSend_setStorageMode_(v35, v36, 2);
    objc_msgSend_setArrayLength_(v35, v37, self->_arrayLength);
    objc_msgSend_setTextureType_(v35, v38, 3);
    v39 = (*(**(&self->super.super.isa + v23) + 40))(*(&self->super.super.isa + v23));
    objc_msgSend_setCpuCacheMode_(v35, v40, v39);
    objc_msgSend_setUsage_(v35, v41, 3);
    if (!v35 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    textureArrayCopy = textureArray;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(destinationTextureArray, v42, &v63, v75, 16);
    if (v43)
    {
      v44 = *v64;
      while (1)
      {
        if (*v64 != v44)
        {
          objc_enumerationMutation(destinationTextureArray);
        }

        guideChannels = self->_guideChannels;
        if (guideChannels == 4)
        {
          v73[0] = MPSAutoCache::GetTempTexture();
          v73[1] = MPSAutoCache::GetTempTexture();
          v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v73, 2);
        }

        else
        {
          if (guideChannels != 3)
          {
            if (MTLReportFailureTypeEnabled())
            {
              v57 = self->_guideChannels;
              MTLReportFailure();
            }

            v49 = 0;
            objc_msgSend_addObject_(v21, v51, 0, v57);
            goto LABEL_22;
          }

          TempTexture = MPSAutoCache::GetTempTexture();
          v47 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v46, &TempTexture, 1);
        }

        v49 = v47;
        objc_msgSend_addObject_(v21, v50, v49, v57);
LABEL_22:

        if (!--v43)
        {
          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(destinationTextureArray, v52, &v63, v75, 16);
          if (!v43)
          {
            break;
          }
        }
      }
    }

    v53 = objc_alloc(MEMORY[0x277CBEA60]);
    textureArray = textureArrayCopy;
    coefficientsTextureArray = objc_msgSend_initWithArray_(v53, v54, v21);

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = sub_239941248;
    v62[3] = &unk_278AC37A8;
    v62[4] = coefficientsTextureArray;
    objc_msgSend_addCompletedHandler_(buffer, v55, v62);
    texture = textureCopy;
    iterations = iterationsCopy;
  }

  objc_msgSend_encodeRegressionToCommandBuffer_sourceTextureArray_guidanceTexture_constraintsTextureArray_numberOfIterations_destinationCoefficientsTextureArray_(self, v15, buffer, array, texture, textureArray, iterations, coefficientsTextureArray);
  objc_msgSend_encodeReconstructionToCommandBuffer_guidanceTexture_constraintsTextureArray_coefficientsTextureArray_destinationTextureArray_(self, v56, buffer, texture, textureArray, coefficientsTextureArray, destinationTextureArray);
  MPSAutoCache::~MPSAutoCache(v72);
}

- (void)validateCoefficientsTextures:(id)textures
{
  guideChannels = self->_guideChannels;
  if (guideChannels == 4)
  {
    objc_msgSend_count(textures, a2, textures);
    if (objc_msgSend_count(textures, v9, v10) != 2 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_11;
    }
  }

  else if (guideChannels == 3)
  {
    objc_msgSend_count(textures, a2, textures);
    if (objc_msgSend_count(textures, v6, v7) != 1 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_11;
    }
  }

  else if (MTLReportFailureTypeEnabled())
  {
    v103 = self->_guideChannels;
LABEL_11:
    MTLReportFailure();
  }

  v11 = objc_msgSend_objectAtIndexedSubscript_(textures, v8, 0, v103);
  objc_msgSend_textureType(v11, v12, v13);
  v15 = objc_msgSend_objectAtIndexedSubscript_(textures, v14, 0);
  if (objc_msgSend_textureType(v15, v16, v17) != 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v19 = objc_msgSend_objectAtIndexedSubscript_(textures, v18, 0);
  objc_msgSend_width(v19, v20, v21);
  v23 = objc_msgSend_objectAtIndexedSubscript_(textures, v22, 0);
  if (objc_msgSend_width(v23, v24, v25) != self->_width && MTLReportFailureTypeEnabled())
  {
    width = self->_width;
    MTLReportFailure();
  }

  v27 = objc_msgSend_objectAtIndexedSubscript_(textures, v26, 0, width);
  objc_msgSend_height(v27, v28, v29);
  v31 = objc_msgSend_objectAtIndexedSubscript_(textures, v30, 0);
  if (objc_msgSend_height(v31, v32, v33) != self->_height && MTLReportFailureTypeEnabled())
  {
    height = self->_height;
    MTLReportFailure();
  }

  v35 = objc_msgSend_objectAtIndexedSubscript_(textures, v34, 0, height);
  objc_msgSend_arrayLength(v35, v36, v37);
  v39 = objc_msgSend_objectAtIndexedSubscript_(textures, v38, 0);
  if (objc_msgSend_arrayLength(v39, v40, v41) != self->_arrayLength && MTLReportFailureTypeEnabled())
  {
    arrayLength = self->_arrayLength;
    MTLReportFailure();
  }

  v43 = objc_msgSend_objectAtIndexedSubscript_(textures, v42, 0, arrayLength);
  if (objc_msgSend_pixelFormat(v43, v44, v45) != 115)
  {
    v47 = objc_msgSend_objectAtIndexedSubscript_(textures, v46, 0);
    objc_msgSend_pixelFormat(v47, v48, v49);
  }

  v50 = objc_msgSend_objectAtIndexedSubscript_(textures, v46, 0);
  if (objc_msgSend_pixelFormat(v50, v51, v52) != 115)
  {
    v54 = objc_msgSend_objectAtIndexedSubscript_(textures, v53, 0);
    if (objc_msgSend_pixelFormat(v54, v55, v56) != 125)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  if (self->_guideChannels == 4)
  {
    v57 = objc_msgSend_objectAtIndexedSubscript_(textures, v53, 1);
    objc_msgSend_textureType(v57, v58, v59);
    v61 = objc_msgSend_objectAtIndexedSubscript_(textures, v60, 1);
    if (objc_msgSend_textureType(v61, v62, v63) != 3 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v65 = objc_msgSend_objectAtIndexedSubscript_(textures, v64, 1);
    objc_msgSend_width(v65, v66, v67);
    v69 = objc_msgSend_objectAtIndexedSubscript_(textures, v68, 1);
    if (objc_msgSend_width(v69, v70, v71) != self->_width && MTLReportFailureTypeEnabled())
    {
      v107 = self->_width;
      MTLReportFailure();
    }

    v73 = objc_msgSend_objectAtIndexedSubscript_(textures, v72, 1, v107);
    objc_msgSend_height(v73, v74, v75);
    v77 = objc_msgSend_objectAtIndexedSubscript_(textures, v76, 1);
    if (objc_msgSend_height(v77, v78, v79) != self->_height && MTLReportFailureTypeEnabled())
    {
      v108 = self->_height;
      MTLReportFailure();
    }

    v81 = objc_msgSend_objectAtIndexedSubscript_(textures, v80, 1, v108);
    objc_msgSend_arrayLength(v81, v82, v83);
    v85 = objc_msgSend_objectAtIndexedSubscript_(textures, v84, 1);
    if (objc_msgSend_arrayLength(v85, v86, v87) != self->_arrayLength && MTLReportFailureTypeEnabled())
    {
      v109 = self->_arrayLength;
      MTLReportFailure();
    }

    v89 = objc_msgSend_objectAtIndexedSubscript_(textures, v88, 1, v109);
    if (objc_msgSend_pixelFormat(v89, v90, v91) != 25)
    {
      v93 = objc_msgSend_objectAtIndexedSubscript_(textures, v92, 1);
      objc_msgSend_pixelFormat(v93, v94, v95);
    }

    v96 = objc_msgSend_objectAtIndexedSubscript_(textures, v92, 1);
    if (objc_msgSend_pixelFormat(v96, v97, v98) != 25)
    {
      v100 = objc_msgSend_objectAtIndexedSubscript_(textures, v99, 1);
      if (objc_msgSend_pixelFormat(v100, v101, v102) != 55)
      {
        if (MTLReportFailureTypeEnabled())
        {

          MTLReportFailure();
        }
      }
    }
  }
}

- (id)newTemporaryIntermediate:(id)intermediate texture:(id)texture
{
  MEMORY[0x23EE7BAC0](v34, intermediate, 0);
  v31 = objc_msgSend_width(texture, v6, v7);
  v32 = objc_msgSend_height(texture, v8, v9);
  v33 = objc_msgSend_arrayLength(texture, v10, v11);
  v12 = *MEMORY[0x277CD7350];
  v13 = *(&self->super.super.isa + v12);
  v16 = objc_msgSend_pixelFormat(texture, v14, v15);
  PixelInfo = MPSDevice::GetPixelInfo(v13, v16, MPSImageFeatureChannelFormatNone);
  v18 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], v17, PixelInfo & 0x3FF, v31, v32, 0);
  objc_msgSend_setStorageMode_(v18, v19, 2);
  objc_msgSend_setArrayLength_(v18, v20, v33);
  v23 = objc_msgSend_textureType(texture, v21, v22);
  objc_msgSend_setTextureType_(v18, v24, v23);
  v25 = (*(**(&self->super.super.isa + v12) + 40))(*(&self->super.super.isa + v12));
  objc_msgSend_setCpuCacheMode_(v18, v26, v25);
  objc_msgSend_setUsage_(v18, v27, 3);
  if (!v18 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v28 = MPSAutoCache::GetTempTexture();
  MPSAutoCache::~MPSAutoCache(v34);
  return v28;
}

- (void)encodeShiftOn:(id)on textureArray:(id)array by:(unint64_t)by
{
  if (by && objc_msgSend_arrayLength(array, a2, on) > by)
  {
    v10 = objc_msgSend_blitCommandEncoder(on, v8, v9);
    v13 = objc_msgSend_width(array, v11, v12);
    v16 = objc_msgSend_height(array, v14, v15);
    v19 = objc_msgSend_depth(array, v17, v18);
    if (objc_msgSend_arrayLength(array, v20, v21) != by)
    {
      v24 = 0;
      do
      {
        memset(v29, 0, sizeof(v29));
        v28[0] = v13;
        v28[1] = v16;
        v28[2] = v19;
        memset(v27, 0, sizeof(v27));
        objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v10, v22, array, by + v24, 0, v29, v28, array, v24, 0, v27);
        ++v24;
      }

      while (v24 < objc_msgSend_arrayLength(array, v25, v26) - by);
    }

    objc_msgSend_endEncoding(v10, v22, v23);
  }
}

- (void)encodeDownsamplingOn:(id)on inputTexture:(id)texture outputTexture:(id)outputTexture
{
  if (objc_msgSend_textureType(texture, a2, on) != 2)
  {
    objc_msgSend_textureType(texture, v9, v10);
  }

  if (objc_msgSend_textureType(texture, v9, v10) != 2 && objc_msgSend_textureType(texture, v11, v12) != 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_textureType(outputTexture, v11, v12);
  if (objc_msgSend_textureType(outputTexture, v13, v14) != 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = objc_msgSend_textureType(texture, v15, v16);
  if (v17 == 3 || v17 == 2)
  {
    ComputeState = MPSLibrary::GetComputeState();
  }

  else
  {
    ComputeState = MPSLibrary::GetComputeState();
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (!ComputeState && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v19 = objc_alloc(MEMORY[0x277CD7210]);
  v22 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v19, v20, on, 0);
  v60[1] = v22;
  v60[2] = self;
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v23 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v23 || (v24 = objc_opt_class(), v25 = NSStringFromClass(v24), objc_msgSend_setLabel_(self, v26, v25), (v23 = v25) != 0))
    {
      objc_msgSend_setLabel_(v22, v21, v23);
    }
  }

  objc_msgSend_setComputePipelineState_(v22, v21, ComputeState);
  objc_msgSend_setTexture_atIndex_(v22, v27, texture, 0);
  objc_msgSend_setTexture_atIndex_(v22, v28, outputTexture, 1);
  v31 = objc_msgSend_width(texture, v29, v30);
  v34 = objc_msgSend_width(outputTexture, v32, v33);
  v37 = objc_msgSend_height(texture, v35, v36);
  v40 = objc_msgSend_height(outputTexture, v38, v39);
  *&v41 = v31 / v34;
  *(&v41 + 1) = v37 / v40;
  v60[0] = v41;
  objc_msgSend_setBytes_length_atIndex_(v22, v42, v60, 8, 0);
  v45 = objc_msgSend_threadExecutionWidth(ComputeState, v43, v44);
  v48 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v46, v47);
  v59[0] = (v45 + objc_msgSend_width(outputTexture, v49, v50) - 1) / v45;
  v59[1] = (v48 / v45 + objc_msgSend_height(outputTexture, v51, v52) - 1) / (v48 / v45);
  v59[2] = objc_msgSend_arrayLength(outputTexture, v53, v54);
  v58[0] = v45;
  v58[1] = v48 / v45;
  v58[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v22, v55, v59, v58);
  MPSLibrary::ReleaseComputeState();
  objc_msgSend_endEncoding(v22, v56, v57);
}

@end