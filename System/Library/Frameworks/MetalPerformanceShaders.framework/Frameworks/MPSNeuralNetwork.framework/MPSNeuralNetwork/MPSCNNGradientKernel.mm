@interface MPSCNNGradientKernel
- (MPSCNNGradientKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNGradientKernel)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states;
- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradients:(id)gradients sourceImages:(id)images gradientStates:(id)states;
- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradient:(id)gradient sourceImage:(id)image gradientState:(id)state;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages gradientStates:(MPSStateBatch *)gradientStates destinationGradients:(MPSImageBatch *)destinationGradients;
- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradients:(id)gradients sourceImages:(id)images gradientStates:(id)states destinationGradients:(id)destinationGradients;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradient:(id)gradient sourceImage:(id)image gradientState:(id)state destinationGradient:(id)destinationGradient;
- (void)encodeWithCoder:(id)coder;
- (void)readBinaryGradientState:(id)state isSecondarySourceFilter:(BOOL)filter;
- (void)readGradientState:(id)state;
@end

@implementation MPSCNNGradientKernel

- (MPSCNNGradientKernel)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSCNNGradientKernel;
  result = [(MPSCNNBinaryKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_kernelOffsetY = 0;
    result->_kernelOffsetX = 0;
    result->super._isBackwards = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = MPSCNNGradientKernel;
  [(MPSCNNBinaryKernel *)&v15 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_kernelOffsetX, @"MPSCNNGradientKernel.kernelOffsetX", v6, v7, v8, v9);
  objc_msgSend_encodeInteger_forKey_(coder, v10, self->_kernelOffsetY, @"MPSCNNGradientKernel.kernelOffsetY", v11, v12, v13, v14);
}

- (MPSCNNGradientKernel)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v19.receiver = self;
  v19.super_class = MPSCNNGradientKernel;
  v11 = [(MPSCNNBinaryKernel *)&v19 initWithCoder:aDecoder device:device];
  if (v11)
  {
    v11->_kernelOffsetX = objc_msgSend_decodeIntegerForKey_(aDecoder, v5, @"MPSCNNGradientKernel.kernelOffsetX", v6, v7, v8, v9, v10);
    v11->_kernelOffsetY = objc_msgSend_decodeIntegerForKey_(aDecoder, v12, @"MPSCNNGradientKernel.kernelOffsetY", v13, v14, v15, v16, v17);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSCNNGradientKernel;
  result = [(MPSCNNBinaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 52) = self->_kernelOffsetX;
    *(result + 53) = self->_kernelOffsetY;
  }

  return result;
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && !self->super._padding && MTLReportFailureTypeEnabled())
  {
    v66 = objc_opt_class();
    v76 = NSStringFromClass(v66);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MetalPerformanceShaders/MPSCNNGradientKernel.mm", 0x4B, @"[%@ destinationImageDescriptorForSourceImages:sourceStates:updateOffset:] no padding method set. Can not compute result.", v67, v68, v69, v70);
  }

  v11 = objc_msgSend_paddingMethod(self->super._padding, a2, images, states, v4, v5, v6, v7, v76);
  v86 = 0uLL;
  v87 = 0;
  objc_msgSend_primaryOffset(self, v12, v13, v14, v15, v16, v17, v18);
  v84 = 0uLL;
  v85 = 0;
  objc_msgSend_secondaryOffset(self, v19, v20, v21, v22, v23, v24, v25);
  kernelOffsetY = self->_kernelOffsetY;
  kernelOffsetX = self->_kernelOffsetX;
  v82 = kernelOffsetY;
  v83 = 0;
  v28 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_paddingMethod_primaryOffset_secondaryOffset_kernelOffset_(self, v27, images, states, v11, &v86, &v84, &kernelOffsetX);
  v79 = v86;
  v80 = v87;
  objc_msgSend_setPrimaryOffset_(self, v29, &v79, v30, v31, v32, v33, v34);
  v79 = v84;
  v80 = v85;
  objc_msgSend_setSecondaryOffset_(self, v35, &v79, v36, v37, v38, v39, v40);
  v48 = v82;
  self->_kernelOffsetX = kernelOffsetX;
  self->_kernelOffsetY = v48;
  if (states)
  {
    v49 = objc_msgSend_count(states, v41, v42, v43, v44, v45, v46, v47);
    if (v49)
    {
      v56 = v49;
      for (i = 0; i != v56; ++i)
      {
        v58 = objc_msgSend_objectAtIndexedSubscript_(states, v50, i, v51, v52, v53, v54, v55);
        v28 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(v58, v59, images, states, self, v28, v60, v61);
      }
    }
  }

  if (v28 && (v11 & 0x4000) != 0)
  {
    objc_opt_respondsToSelector();
    if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v71 = objc_opt_class();
      v77 = NSStringFromClass(v71);
      padding = self->super._padding;
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MetalPerformanceShaders/MPSCNNGradientKernel.mm", 0x6B, @"[%@ destinationImageDescriptorForSourceImages:sourceStates:updateOffset:] the object padding method %p does not respond to the destinationImageDescriptorForSourceImages:sourceStates:forKernel:suggestedDescriptor: selector", v72, v73, v74, v75);
    }

    return objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_forKernel_suggestedDescriptor_(self->super._padding, v62, images, states, self, v28, v63, v64, v77, padding);
  }

  return v28;
}

- (id)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradient:(id)gradient sourceImage:(id)image gradientState:(id)state
{
  v45[2] = *MEMORY[0x277D85DE8];
  v45[0] = gradient;
  v45[1] = image;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v45, 2, gradient, image, state, v7);
  if (state)
  {
    stateCopy = state;
    v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, &stateCopy, 1, v15, v16, v17, v18);
    v26 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v21, v19, v20, v22, v23, v24, v25);
  }

  else
  {
    v26 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v14, v19, 0, v15, v16, v17, v18);
  }

  v31 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.super.isa + v31))
  {
    if (!v26)
    {
      return 0;
    }
  }

  else if (!v26)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v32 = objc_opt_class();
      NSStringFromClass(v32);
      v37 = @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n";
      v38 = 148;
LABEL_13:
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MetalPerformanceShaders/MPSCNNGradientKernel.mm", v38, v37, v33, v34, v35, v36);
      return 0;
    }

    return 0;
  }

  v39 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(self->super._destinationImageAllocator, v27, buffer, v26, self, v28, v29, v30);
  v41 = v39;
  if (*(&self->super.super.super.isa + v31))
  {
    if (!v39)
    {
      return v41;
    }

LABEL_16:
    objc_msgSend_encodeToCommandEncoder_commandBuffer_sourceGradient_sourceImage_gradientState_destinationGradient_(self, v40, encoder, buffer, gradient, image, state, v39);
    return v41;
  }

  if (v39)
  {
    goto LABEL_16;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v42 = objc_opt_class();
    NSStringFromClass(v42);
    v37 = @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImage for destination.  Encode failed.\n";
    v38 = 157;
    goto LABEL_13;
  }

  return 0;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradient:(id)gradient sourceImage:(id)image gradientState:(id)state destinationGradient:(id)destinationGradient
{
  v15 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v15) & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!*(state + 9) && !*(state + 10))
      {
        v23 = *(state + 12);
        if (v23 >= objc_msgSend_width(gradient, v16, v17, v18, v19, v20, v21, v22))
        {
          objc_msgSend_height(gradient, v16, v17, v18, v19, v20, v21, v22);
        }
      }

      if (*(state + 9) || *(state + 10) || (v24 = *(state + 12), v24 < objc_msgSend_width(gradient, v16, v17, v18, v19, v20, v21, v22)) || (v32 = *(state + 13), v32 < objc_msgSend_height(gradient, v25, v26, v27, v28, v29, v30, v31)))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v33 = objc_opt_class();
          v58 = NSStringFromClass(v33);
          v38 = @"[%@ encode] Error: Gradient filters do not support gradient operations for Inference kernels that use the clipRect to operate on a subregion of the result\n\tThis would force the gradient kernel to have to do software edging at significant performance cost.\n\tUse the slice operator to  trim away the unwanted parts of the gradient input.\n";
          v39 = 206;
LABEL_24:
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MetalPerformanceShaders/MPSCNNGradientKernel.mm", v39, v38, v34, v35, v36, v37);
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!*(state + 12) && !*(state + 13))
        {
          v46 = *(state + 15);
          if (v46 >= objc_msgSend_width(gradient, a2, v40, v41, v42, v43, v44, v45))
          {
            objc_msgSend_height(gradient, a2, v40, v41, v42, v43, v44, v45);
          }
        }

        if (*(state + 12) || *(state + 13) || (v47 = *(state + 15), v47 < objc_msgSend_width(gradient, a2, v40, v41, v42, v43, v44, v45)) || (v55 = *(state + 16), v55 < objc_msgSend_height(gradient, v48, v49, v50, v51, v52, v53, v54)))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v56 = objc_opt_class();
            v58 = NSStringFromClass(v56);
            v38 = @"[%@ encode] Error: Gradient filters do not support gradient operations for Inference kernels that use the clipRect to operate on a subregion of the result\n\tThis would force the gradient kernel to have to do software edging at significant performance cost.\n\tUse the slice operator to  trim away the unwanted parts of the gradient input.\n";
            v39 = 216;
            goto LABEL_24;
          }
        }
      }

      else if ((*(&self->super.super.super.isa + v15) & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          objc_opt_isKindOfClass();
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (MTLReportFailureTypeEnabled())
            {
              v57 = objc_opt_class();
              v58 = NSStringFromClass(v57);
              v38 = @"[%@ encode] Error: Unknown state type.  Encode failed.\n";
              v39 = 222;
              goto LABEL_24;
            }
          }
        }
      }
    }
  }

  objc_msgSend_encodeToCommandEncoder_commandBuffer_primaryImage_secondaryImage_inState_destinationImage_(self, a2, encoder, buffer, gradient, image, state, destinationGradient, v58);

  MPSDecrementReadCount(state);
}

- (id)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradients:(id)gradients sourceImages:(id)images gradientStates:(id)states
{
  v94[2] = *MEMORY[0x277D85DE8];
  v13 = objc_msgSend_count(gradients, a2, encoder, buffer, gradients, images, states, v7);
  v94[0] = objc_msgSend_objectAtIndexedSubscript_(gradients, v14, 0, v15, v16, v17, v18, v19);
  v94[1] = objc_msgSend_objectAtIndexedSubscript_(images, v20, 0, v21, v22, v23, v24, v25);
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v94, 2, v27, v28, v29, v30);
  if (states)
  {
    v93 = objc_msgSend_objectAtIndexedSubscript_(states, v31, 0, v32, v33, v34, v35, v36);
    v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, &v93, 1, v39, v40, v41, v42);
    v49 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v44, v37, v43, v45, v46, v47, v48);
  }

  else
  {
    v49 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v31, v37, 0, v33, v34, v35, v36);
  }

  v50 = v49;
  v51 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.super.isa + v51))
  {
    if (!v49)
    {
      return 0;
    }

LABEL_10:
    imagesCopy = images;
    destinationImageAllocator = self->super._destinationImageAllocator;
    if (objc_opt_respondsToSelector())
    {
      v57 = objc_msgSend_imageBatchForCommandBuffer_imageDescriptor_kernel_count_(destinationImageAllocator, v59, buffer, v50, self, v13, v63, v64);
    }

    else
    {
      v57 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v59, v13, v60, v61, v62, v63, v64);
      if (!v57)
      {
        return v57;
      }

      if (!v13)
      {
LABEL_22:
        objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_sourceGradients_sourceImages_gradientStates_destinationGradients_(self, v65, encoder, buffer, gradients, imagesCopy, states, v57, v90);
        return v57;
      }

      for (i = 0; i != v13; ++i)
      {
        v70 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(destinationImageAllocator, v65, buffer, v50, self, v66, v67, v68, v90);
        objc_msgSend_setObject_atIndexedSubscript_(v57, v71, v70, i, v72, v73, v74, v75);
        if ((*(&self->super.super.super.isa + v51) & 1) == 0)
        {
          objc_msgSend_objectAtIndexedSubscript_(v57, v65, i, v76, v77, v66, v67, v68);
          if (!objc_msgSend_objectAtIndexedSubscript_(v57, v78, i, v79, v80, v81, v82, v83))
          {
            if (MTLReportFailureTypeEnabled())
            {
              v84 = objc_opt_class();
              v90 = NSStringFromClass(v84);
              MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Binaries/MetalPerformanceShaders/install/Symbols/BuiltProducts/MPSCore.framework/PrivateHeaders/Internal/MPSImageInternal.h", 0x203, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:] Unable to create MPSImage for destination.  Encode failed.\n", v85, v86, v87, v88);
            }
          }
        }
      }
    }

    if (!v57)
    {
      return v57;
    }

    goto LABEL_22;
  }

  if (v49)
  {
    goto LABEL_10;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v52 = objc_opt_class();
    NSStringFromClass(v52);
    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MetalPerformanceShaders/MPSCNNGradientKernel.mm", 0x10E, @"[%@ encodeToCommandBuffer:sourceGradients:...] Unable to create MPSImageDescriptor for destination.  Encode failed.\n", v53, v54, v55, v56);
  }

  return 0;
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceGradients:(MPSImageBatch *)sourceGradients sourceImages:(MPSImageBatch *)sourceImages gradientStates:(MPSStateBatch *)gradientStates destinationGradients:(MPSImageBatch *)destinationGradients
{
  objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, a2, 0, commandBuffer, sourceGradients, sourceImages, gradientStates, destinationGradients);

  MPSDecrementReadCount();
}

- (void)encodeBatchToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceGradients:(id)gradients sourceImages:(id)images gradientStates:(id)states destinationGradients:(id)destinationGradients
{
  objc_msgSend_encodeBatchToCommandEncoder_commandBuffer_primaryImages_secondaryImages_inStates_destinationImages_(self, a2, encoder, buffer, gradients, images, states, destinationGradients);

  MPSDecrementReadCount();
}

- (void)readGradientState:(id)state
{
  v16 = *(state + 3);
  v17 = *(state + 8);
  objc_msgSend_setSecondaryOffset_(self, a2, &v16, v3, v4, v5, v6, v7);
  objc_msgSend_setSecondarySourceFeatureChannelOffset_(self, v10, *(state + 20), v11, v12, v13, v14, v15);
  self->super._secondaryKernelWidth = *(state + 21);
  self->super._secondaryKernelHeight = *(state + 22);
  self->super._secondaryStrideInPixelsX = *(state + 23);
  self->super._secondaryStrideInPixelsY = *(state + 24);
  self->super._secondaryDilationRateX = *(state + 25);
  self->super._secondaryDilationRateY = *(state + 26);
  self->super._secondaryEdgeMode = *(state + 30);
}

- (void)readBinaryGradientState:(id)state isSecondarySourceFilter:(BOOL)filter
{
  if (filter)
  {
    v24 = *(state + 72);
    v25 = *(state + 11);
    objc_msgSend_setSecondaryOffset_(self, a2, &v24, filter, v4, v5, v6, v7);
    v16 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryEdgeMode;
    v17 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryDilationRateY;
    v18 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryDilationRateX;
    v19 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryStrideInPixelsY;
    v20 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryStrideInPixelsX;
    v21 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryKernelHeight;
    v22 = &OBJC_IVAR___MPSNNBinaryGradientState__secondaryKernelWidth;
    v23 = &OBJC_IVAR___MPSNNBinaryGradientState__secondarySourceFeatureChannelOffset;
  }

  else
  {
    v24 = *(state + 3);
    v25 = *(state + 8);
    objc_msgSend_setSecondaryOffset_(self, a2, &v24, filter, v4, v5, v6, v7);
    v16 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryEdgeMode;
    v17 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryDilationRateY;
    v18 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryDilationRateX;
    v19 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryStrideInPixelsY;
    v20 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryStrideInPixelsX;
    v21 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryKernelHeight;
    v22 = &OBJC_IVAR___MPSNNBinaryGradientState__primaryKernelWidth;
    v23 = &OBJC_IVAR___MPSNNBinaryGradientState__primarySourceFeatureChannelOffset;
  }

  objc_msgSend_setSecondarySourceFeatureChannelOffset_(self, v10, *(state + *v23), v11, v12, v13, v14, v15);
  self->super._secondaryKernelWidth = *(state + *v22);
  self->super._secondaryKernelHeight = *(state + *v21);
  self->super._secondaryStrideInPixelsX = *(state + *v20);
  self->super._secondaryStrideInPixelsY = *(state + *v19);
  self->super._secondaryDilationRateX = *(state + *v18);
  self->super._secondaryDilationRateY = *(state + *v17);
  self->super._secondaryEdgeMode = *(state + *v16);
}

@end