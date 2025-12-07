@interface MPSCNNBatchNormalization
- (MPSCNNBatchNormalization)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNBatchNormalization)initWithDevice:(id)device dataSource:(id)dataSource fusedNeuronDescriptor:(MPSNNNeuronDescriptor *)fusedNeuronDescriptor;
- (MPSCNNBatchNormalizationState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSCNNBatchNormalizationState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage destinationState:(MPSState *)outState destinationStateIsTemporary:(BOOL)isTemporary;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages destinationStates:(MPSStateBatch *)outStates destinationStateIsTemporary:(BOOL)isTemporary;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images batchNormalizationState:(id)state;
- (id)encodeToCommandBuffer:(id)buffer sourceImage:(id)image batchNormalizationState:(id)state;
- (void)dealloc;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState destinationImages:(MPSImageBatch *)destinationImages;
- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages destinationStates:(MPSStateBatch *)destinationStates destinationImages:(MPSImageBatch *)destinationImages;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState destinationImage:(MPSImage *)destinationImage;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage destinationState:(MPSState *)destinationState destinationImage:(MPSImage *)destinationImage;
- (void)encodeWithCoder:(id)coder;
- (void)reloadDataSourceDeprecated:(id)deprecated doReloadWeights:(BOOL)weights doReloadStats:(BOOL)stats;
- (void)reloadGammaAndBetaWithCommandBuffer:(id)commandBuffer gammaAndBetaState:(MPSCNNNormalizationGammaAndBetaState *)gammaAndBetaState;
- (void)reloadMeanAndVarianceWithCommandBuffer:(id)commandBuffer meanAndVarianceState:(MPSCNNNormalizationMeanAndVarianceState *)meanAndVarianceState;
@end

@implementation MPSCNNBatchNormalization

- (MPSCNNBatchNormalization)initWithDevice:(id)device dataSource:(id)dataSource fusedNeuronDescriptor:(MPSNNNeuronDescriptor *)fusedNeuronDescriptor
{
  v214.receiver = self;
  v214.super_class = MPSCNNBatchNormalization;
  v7 = [(MPSCNNKernel *)&v214 initWithDevice:?];
  if (v7)
  {
    MPSDevice = MPSDevice::GetMPSDevice();
    if (MPSDevice)
    {
      v16 = MPSDevice;
      if ((objc_msgSend_load(dataSource, v9, v10, v11, v12, v13, v14, v15) & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        v207 = objc_opt_class();
        v212 = NSStringFromClass(v207);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x194, @"[%@ initWithDevice:dataSource:] dataSource.load should return YES", v208, v209, v210, v211);
      }

      v7->_dataSource = dataSource;
      v7->_numberOfFeatureChannels = objc_msgSend_numberOfFeatureChannels(dataSource, v17, v18, v19, v20, v21, v22, v23);
      v7->_epsilon = 1.1755e-38;
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_epsilon(dataSource, v24, v25, v26, v27, v28, v29, v30);
        v7->_epsilon = v31;
      }

      if (objc_opt_respondsToSelector())
      {
        v38 = objc_msgSend_performSelector_(dataSource, v32, sel_label, v33, v34, v35, v36, v37);
        objc_msgSend_setLabel_(v7, v39, v38, v40, v41, v42, v43, v44);
      }

      v45 = 16 * (*(*v16 + 24))(v16);
      v46 = 4 * v7->_numberOfFeatureChannels + 12;
      v52 = objc_msgSend_newBufferWithLength_options_(device, v47, v46 & 0xFFFFFFFFFFFFFFF0, v45, v48, v49, v50, v51);
      v58 = objc_msgSend_newBufferWithLength_options_(device, v53, v46 & 0xFFFFFFFFFFFFFFF0, v45, v54, v55, v56, v57);
      v64 = objc_msgSend_newBufferWithLength_options_(device, v59, v46 & 0xFFFFFFFFFFFFFFF0, v45, v60, v61, v62, v63);
      v70 = objc_msgSend_newBufferWithLength_options_(device, v65, v46 & 0xFFFFFFFFFFFFFFF0, v45, v66, v67, v68, v69);
      __pattern4 = 1065353216;
      v78 = objc_msgSend_contents(v64, v71, v72, v73, v74, v75, v76, v77);
      v86 = objc_msgSend_length(v64, v79, v80, v81, v82, v83, v84, v85);
      memset_pattern4(v78, &__pattern4, v86);
      v94 = objc_msgSend_contents(v58, v87, v88, v89, v90, v91, v92, v93);
      v102 = objc_msgSend_length(v58, v95, v96, v97, v98, v99, v100, v101);
      memset_pattern4(v94, &__pattern4, v102);
      v110 = objc_msgSend_contents(v70, v103, v104, v105, v106, v107, v108, v109);
      v118 = objc_msgSend_length(v70, v111, v112, v113, v114, v115, v116, v117);
      bzero(v110, v118);
      v126 = objc_msgSend_contents(v52, v119, v120, v121, v122, v123, v124, v125);
      v134 = objc_msgSend_length(v52, v127, v128, v129, v130, v131, v132, v133);
      bzero(v126, v134);
      if (objc_msgSend_gamma(dataSource, v135, v136, v137, v138, v139, v140, v141))
      {
        v149 = objc_msgSend_contents(v64, v142, v143, v144, v145, v146, v147, v148);
        v157 = objc_msgSend_gamma(dataSource, v150, v151, v152, v153, v154, v155, v156);
        memcpy(v149, v157, 4 * v7->_numberOfFeatureChannels);
      }

      if (objc_msgSend_beta(dataSource, v142, v143, v144, v145, v146, v147, v148, v212))
      {
        v165 = objc_msgSend_contents(v70, v158, v159, v160, v161, v162, v163, v164);
        v173 = objc_msgSend_beta(dataSource, v166, v167, v168, v169, v170, v171, v172);
        memcpy(v165, v173, 4 * v7->_numberOfFeatureChannels);
      }

      if (objc_msgSend_mean(dataSource, v158, v159, v160, v161, v162, v163, v164))
      {
        v181 = objc_msgSend_contents(v52, v174, v175, v176, v177, v178, v179, v180);
        v189 = objc_msgSend_mean(dataSource, v182, v183, v184, v185, v186, v187, v188);
        memcpy(v181, v189, 4 * v7->_numberOfFeatureChannels);
      }

      if (objc_msgSend_variance(dataSource, v174, v175, v176, v177, v178, v179, v180))
      {
        v197 = objc_msgSend_contents(v58, v190, v191, v192, v193, v194, v195, v196);
        v205 = objc_msgSend_variance(dataSource, v198, v199, v200, v201, v202, v203, v204);
        memcpy(v197, v205, 4 * v7->_numberOfFeatureChannels);
      }

      operator new[]();
    }

    return 0;
  }

  return v7;
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage destinationState:(MPSState *)destinationState destinationImage:(MPSImage *)destinationImage
{
  if (MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    v16 = NSStringFromClass(v11);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x205, @"[%@ encodeToCommandBuffer:...:destinationState:...] Error: destination states not supported.  Batch normalization state requires a source state.", v12, v13, v14, v15);
  }

  v17.receiver = self;
  v17.super_class = MPSCNNBatchNormalization;
  [(MPSCNNKernel *)&v17 encodeToCommandBuffer:commandBuffer sourceImage:sourceImage destinationState:destinationState destinationImage:destinationImage, v16];
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage destinationState:(MPSState *)outState destinationStateIsTemporary:(BOOL)isTemporary
{
  v6 = isTemporary;
  if (MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    v17 = NSStringFromClass(v11);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x214, @"[%@ encodeToCommandBuffer:...:destinationState:...] Error: destination states not supported. Batch normalization state requires a source state.", v12, v13, v14, v15);
  }

  v18.receiver = self;
  v18.super_class = MPSCNNBatchNormalization;
  return [(MPSCNNKernel *)&v18 encodeToCommandBuffer:commandBuffer sourceImage:sourceImage destinationState:outState destinationStateIsTemporary:v6, v17];
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages destinationStates:(MPSStateBatch *)destinationStates destinationImages:(MPSImageBatch *)destinationImages
{
  if (MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    v16 = NSStringFromClass(v11);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x223, @"[%@ encodeBatchToCommandBuffer:...:destinationState:...] Error: destination states not supported. Batch normalization state requires a source state.", v12, v13, v14, v15);
  }

  v17.receiver = self;
  v17.super_class = MPSCNNBatchNormalization;
  [(MPSCNNKernel *)&v17 encodeBatchToCommandBuffer:commandBuffer sourceImages:sourceImages destinationStates:destinationStates destinationImages:destinationImages, v16];
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages destinationStates:(MPSStateBatch *)outStates destinationStateIsTemporary:(BOOL)isTemporary
{
  v6 = isTemporary;
  if (MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    v17 = NSStringFromClass(v11);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x232, @"[%@ encodeBatchToCommandBuffer:...:destinationState:...] Error: destination states not supported. Batch normalization state requires a source state.", v12, v13, v14, v15);
  }

  v18.receiver = self;
  v18.super_class = MPSCNNBatchNormalization;
  return [(MPSCNNKernel *)&v18 encodeBatchToCommandBuffer:commandBuffer sourceImages:sourceImages destinationStates:outStates destinationStateIsTemporary:v6, v17];
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState destinationImage:(MPSImage *)destinationImage
{
  if ((*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7478]) && (v9 = self, v10 = destinationImage, v11 = sourceImage, v12 = commandBuffer, v13 = MTLReportFailureTypeEnabled(), commandBuffer = v12, sourceImage = v11, destinationImage = v10, v14 = v13, self = v9, v14))
  {
    v15 = objc_opt_class();
    v23 = NSStringFromClass(v15);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x241, @"[%@ encodeBatchToCommandBuffer:sourceGradients:sourceImages:batchNormalizationState:] Attempting to use statistics from a temporary MPSCNNBatchNormalizationState with readCount of 0.", v16, v17, v18, v19);
    objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_(v9, v20, v12, v11, batchNormalizationState, v10, v21, v22, v23);
  }

  else
  {
    objc_msgSend_encodeToCommandBuffer_sourceImage_inState_destinationImage_(self, a2, commandBuffer, sourceImage, batchNormalizationState, destinationImage, v6, v7);
  }

  MPSDecrementReadCount(&batchNormalizationState->super.super);
}

- (void)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(MPSImageBatch *)sourceImages batchNormalizationState:(MPSCNNBatchNormalizationState *)batchNormalizationState destinationImages:(MPSImageBatch *)destinationImages
{
  if ((*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7470]) & 1) != 0 && !*(&batchNormalizationState->super.super.super.isa + *MEMORY[0x277CD7478]) && MTLReportFailureTypeEnabled())
  {
    v31 = objc_opt_class();
    v36 = NSStringFromClass(v31);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x252, @"[%@ encodeBatchToCommandBuffer:sourceGradients:sourceImages:batchNormalizationState:] Attempting to use statistics from a temporary MPSCNNBatchNormalizationState with readCount of 0.", v32, v33, v34, v35);
  }

  v13 = objc_msgSend_count(sourceImages, a2, commandBuffer, sourceImages, batchNormalizationState, destinationImages, v6, v7, v36);
  v17 = v13;
  if (!v13)
  {
    goto LABEL_14;
  }

  v18 = malloc_type_malloc(8 * v13, 0x80040B8603338uLL);
  if (!v18)
  {
    objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(self, v19, commandBuffer, sourceImages, 0, destinationImages, v22, v23);
    goto LABEL_15;
  }

  v24 = v18;
  if (v17 > 3)
  {
    v25 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v26 = vdupq_n_s64(batchNormalizationState);
    v27 = v18 + 1;
    v28 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v27[-1] = v26;
      *v27 = v26;
      v27 += 2;
      v28 -= 4;
    }

    while (v28);
    if (v17 == v25)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v25 = 0;
  }

  v29 = v17 - v25;
  v30 = v18 + v25;
  do
  {
    *v30++ = batchNormalizationState;
    --v29;
  }

  while (v29);
LABEL_13:
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v18, v17, v20, v21, v22, v23);
  free(v24);
LABEL_14:
  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(self, v14, commandBuffer, sourceImages, v17, destinationImages, v15, v16);
LABEL_15:

  MPSDecrementReadCount(&batchNormalizationState->super.super);
}

- (id)encodeToCommandBuffer:(id)buffer sourceImage:(id)image batchNormalizationState:(id)state
{
  if ((*(state + *MEMORY[0x277CD7470]) & 1) != 0 && !*(state + *MEMORY[0x277CD7478]) && (v12 = self, v13 = image, v14 = buffer, v15 = MTLReportFailureTypeEnabled(), buffer = v14, image = v13, v16 = v15, self = v12, v16))
  {
    v17 = objc_opt_class();
    v26 = NSStringFromClass(v17);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x262, @"[%@ encodeBatchToCommandBuffer:sourceGradients:sourceImages:batchNormalizationState:] Attempting to use statistics from a temporary MPSCNNBatchNormalizationState with readCount of 0.", v18, v19, v20, v21);
    v9 = objc_msgSend_encodeToCommandBuffer_sourceImage_inState_(v12, v22, v14, v13, state, v23, v24, v25, v26);
  }

  else
  {
    v9 = objc_msgSend_encodeToCommandBuffer_sourceImage_inState_(self, a2, buffer, image, state, v5, v6, v7);
  }

  v10 = v9;
  MPSDecrementReadCount(state);
  return v10;
}

- (id)encodeBatchToCommandBuffer:(id)buffer sourceImages:(id)images batchNormalizationState:(id)state
{
  v114[1] = *MEMORY[0x277D85DE8];
  if ((*(state + *MEMORY[0x277CD7470]) & 1) != 0 && !*(state + *MEMORY[0x277CD7478]) && MTLReportFailureTypeEnabled())
  {
    v100 = objc_opt_class();
    v110 = NSStringFromClass(v100);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x272, @"[%@ encodeBatchToCommandBuffer:sourceGradients:sourceImages:batchNormalizationState:] Attempting to use statistics from a temporary MPSCNNBatchNormalizationState with readCount of 0.", v101, v102, v103, v104);
  }

  v12 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v12) & 1) == 0)
  {
    objc_msgSend_clipRect(self, a2, buffer, images, state, v5, v6, v7);
    objc_msgSend_clipRect(self, v13, v14, v15, v16, v17, v18, v19);
    if (v113)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v105 = objc_opt_class();
        v110 = NSStringFromClass(v105);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x27A, @"[%@ encodeBatchToCommandBuffer...] Error: convenience methods that return a image batch must have clipRect.origin.z = 0.  We can't return empty batch nodes in a NSArray.", v106, v107, v108, v109);
      }
    }
  }

  v20 = objc_autoreleasePoolPush();
  v114[0] = objc_msgSend_objectAtIndexedSubscript_(images, v21, 0, v22, v23, v24, v25, v26);
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, v114, 1, v28, v29, v30, v31);
  v38 = objc_msgSend_destinationImageDescriptorForSourceImages_sourceStates_(self, v33, v32, 0, v34, v35, v36, v37);
  v46 = v38;
  if (*(&self->super.super.super.isa + v12))
  {
    if (!v38)
    {
      goto LABEL_27;
    }
  }

  else if (!v38)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v47 = objc_opt_class();
      NSStringFromClass(v47);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x284, @"[%@ encodeToCommandBuffer:sourceImage:] Unable to create MPSImageDescriptor for destination.  Encode failed.\n", v48, v49, v50, v51);
    }

    goto LABEL_27;
  }

  v52 = objc_msgSend_count(images, v39, v40, v41, v42, v43, v44, v45, v110);
  destinationImageAllocator = self->super._destinationImageAllocator;
  if (objc_opt_respondsToSelector())
  {
    v63 = objc_msgSend_imageBatchForCommandBuffer_imageDescriptor_kernel_count_(destinationImageAllocator, v54, buffer, v46, self, v52, v58, v59);
    if (!v63)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v64 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v54, v52, v55, v56, v57, v58, v59);
  if (!v64)
  {
LABEL_27:
    objc_autoreleasePoolPop(v20);
    return 0;
  }

  v63 = v64;
  if (!v52)
  {
    goto LABEL_28;
  }

  v112 = v20;
  for (i = 0; i != v52; ++i)
  {
    v67 = objc_msgSend_imageForCommandBuffer_imageDescriptor_kernel_(destinationImageAllocator, v60, buffer, v46, self, v65, v61, v62, v111);
    objc_msgSend_setObject_atIndexedSubscript_(v63, v68, v67, i, v69, v70, v71, v72);
    if ((*(&self->super.super.super.isa + v12) & 1) == 0)
    {
      objc_msgSend_objectAtIndexedSubscript_(v63, v60, i, v73, v74, v65, v61, v62);
      if (!objc_msgSend_objectAtIndexedSubscript_(v63, v75, i, v76, v77, v78, v79, v80))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v81 = objc_opt_class();
          v111 = NSStringFromClass(v81);
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Binaries/MetalPerformanceShaders/install/Symbols/BuiltProducts/MPSCore.framework/PrivateHeaders/Internal/MPSImageInternal.h", 0x203, @"[%@ encodeToCommandBuffer:primaryImage:secondaryImage:] Unable to create MPSImage for destination.  Encode failed.\n", v82, v83, v84, v85);
        }
      }
    }
  }

  v20 = v112;
LABEL_22:
  v86 = 0;
  if (!state || !v52)
  {
    goto LABEL_35;
  }

  v87 = malloc_type_malloc(8 * v52, 0x80040B8603338uLL);
  if (v87)
  {
    v90 = v87;
    if (v52 > 3)
    {
      v91 = v52 & 0xFFFFFFFFFFFFFFFCLL;
      v93 = vdupq_n_s64(state);
      v94 = v87 + 1;
      v95 = v52 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v94[-1] = v93;
        *v94 = v93;
        v94 += 2;
        v95 -= 4;
      }

      while (v95);
      if (v52 == v91)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v91 = 0;
    }

    v96 = v52 - v91;
    v97 = v87 + v91;
    do
    {
      *v97++ = state;
      --v96;
    }

    while (v96);
LABEL_34:
    v98 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v60, v87, v52, v88, v89, v61, v62, v111);
    free(v90);
    v86 = v98;
LABEL_35:
    objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(self, v60, buffer, images, v86, v63, v61, v62, v111);
    goto LABEL_36;
  }

LABEL_28:
  objc_msgSend_encodeBatchToCommandBuffer_sourceImages_inStates_destinationImages_(self, v60, buffer, images, 0, v63, v61, v62, v111);
LABEL_36:
  MPSDecrementReadCount(state);
  v99 = v63;
  objc_autoreleasePoolPop(v20);
  return v63;
}

- (void)dealloc
{
  meanDS = self->_meanDS;
  if (meanDS)
  {
    MPSAutoBuffer::~MPSAutoBuffer(meanDS);
    MEMORY[0x23EE7D130]();
  }

  varDS = self->_varDS;
  if (varDS)
  {
    MPSAutoBuffer::~MPSAutoBuffer(varDS);
    MEMORY[0x23EE7D130]();
  }

  gamma = self->_gamma;
  if (gamma)
  {
    MPSAutoBuffer::~MPSAutoBuffer(gamma);
    MEMORY[0x23EE7D130]();
  }

  beta = self->_beta;
  if (beta)
  {
    MPSAutoBuffer::~MPSAutoBuffer(beta);
    MEMORY[0x23EE7D130]();
  }

  v7.receiver = self;
  v7.super_class = MPSCNNBatchNormalization;
  [(MPSCNNKernel *)&v7 dealloc];
}

- (MPSCNNBatchNormalizationState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v12 = objc_msgSend_sourceFeatureChannelOffset(self, a2, sourceImage, sourceStates, destinationImage, v5, v6, v7);
  v20 = objc_msgSend_sourceFeatureChannelMaxCount(self, v13, v14, v15, v16, v17, v18, v19);
  v21 = *(&sourceImage->super.isa + *MEMORY[0x277CD72F8]);
  v22 = v21 >= v12;
  v23 = v21 - v12;
  if (!v22)
  {
    v23 = 0;
  }

  if (v23 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  if (v24 > self->_numberOfFeatureChannels && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x2B0, @"Cannot create state for images with more feature channels than used to initialize batch normalization filter.", v60, v61, v62, v63);
  }

  v25 = [MPSCNNBatchNormalizationState alloc];
  v33 = objc_msgSend_device(self, v26, v27, v28, v29, v30, v31, v32);
  LODWORD(v34) = 0x800000;
  v42 = objc_msgSend_initDeferredWithDevice_numberOfFeatureChannels_epsilon_batchNormalization_(v25, v35, v33, v24, self, v36, v37, v38, v34);
  if (v42)
  {
    objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v39, v42, sourceImage, sourceStates, destinationImage, v40, v41);
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v43 = MEMORY[0x277CCACA8];
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v52 = objc_msgSend_stringWithFormat_(v43, v46, @"created by %@", v47, v48, v49, v50, v51, v45);
      objc_msgSend_setLabel_(v42, v53, v52, v54, v55, v56, v57, v58);
    }
  }

  return v42;
}

- (MPSCNNBatchNormalizationState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v13 = objc_msgSend_sourceFeatureChannelOffset(self, a2, commandBuffer, sourceImage, sourceStates, destinationImage, v6, v7);
  v21 = objc_msgSend_sourceFeatureChannelMaxCount(self, v14, v15, v16, v17, v18, v19, v20);
  v27 = *(&sourceImage->super.isa + *MEMORY[0x277CD72F8]);
  v28 = v27 >= v13;
  v29 = v27 - v13;
  if (!v28)
  {
    v29 = 0;
  }

  if (v29 >= v21)
  {
    v30 = v21;
  }

  else
  {
    v30 = v29;
  }

  if (v30 > self->_numberOfFeatureChannels)
  {
    v52 = v30;
    v53 = MTLReportFailureTypeEnabled();
    v30 = v52;
    if (v53)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x2CE, @"Cannot create state for images with more feature channels than used to initialize batch normalization filter.", v54, v23, v24, v25);
      v30 = v52;
    }
  }

  LODWORD(v26) = 0x800000;
  v34 = objc_msgSend_temporaryStateWithCommandBuffer_numberOfFeatureChannels_epsilon_batchNormalization_(MPSCNNBatchNormalizationState, v22, commandBuffer, v30, self, v23, v24, v25, v26);
  if (v34)
  {
    objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v31, v34, sourceImage, sourceStates, destinationImage, v32, v33);
    if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      v35 = MEMORY[0x277CCACA8];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v44 = objc_msgSend_stringWithFormat_(v35, v38, @"created by %@", v39, v40, v41, v42, v43, v37);
      objc_msgSend_setLabel_(v34, v45, v44, v46, v47, v48, v49, v50);
    }
  }

  return v34;
}

- (void)reloadDataSourceDeprecated:(id)deprecated doReloadWeights:(BOOL)weights doReloadStats:(BOOL)stats
{
  statsCopy = stats;
  weightsCopy = weights;
  if ((objc_msgSend_load(deprecated, a2, deprecated, weights, stats, v5, v6, v7) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v120 = objc_opt_class();
    v125 = NSStringFromClass(v120);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x2E7, @"[%@ reloadDataSource:] dataSource.load should return YES", v121, v122, v123, v124);
  }

  self->_numberOfFeatureChannels = objc_msgSend_numberOfFeatureChannels(deprecated, v12, v13, v14, v15, v16, v17, v18, v125);
  meanDS = self->_meanDS;
  explicit = atomic_load_explicit(meanDS, memory_order_acquire);
  if (explicit)
  {
    varDS = self->_varDS;
    v29 = atomic_load_explicit(varDS, memory_order_acquire);
    if (v29)
    {
      goto LABEL_4;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer(meanDS, 0);
    explicit = atomic_load_explicit(meanDS, memory_order_acquire);
    varDS = self->_varDS;
    v29 = atomic_load_explicit(varDS, memory_order_acquire);
    if (v29)
    {
LABEL_4:
      gamma = self->_gamma;
      v31 = atomic_load_explicit(gamma, memory_order_acquire);
      if (v31)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  MPSAutoBuffer::AllocateBuffer(varDS, 0);
  v29 = atomic_load_explicit(varDS, memory_order_acquire);
  gamma = self->_gamma;
  v31 = atomic_load_explicit(gamma, memory_order_acquire);
  if (v31)
  {
LABEL_5:
    beta = self->_beta;
    v33 = atomic_load_explicit(beta, memory_order_acquire);
    if (v33)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  MPSAutoBuffer::AllocateBuffer(gamma, 0);
  v31 = atomic_load_explicit(gamma, memory_order_acquire);
  beta = self->_beta;
  v33 = atomic_load_explicit(beta, memory_order_acquire);
  if (v33)
  {
LABEL_6:
    __pattern4 = 1065353216;
    if (!weightsCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  MPSAutoBuffer::AllocateBuffer(beta, 0);
  v33 = atomic_load_explicit(beta, memory_order_acquire);
  __pattern4 = 1065353216;
  if (!weightsCopy)
  {
LABEL_7:
    if (!statsCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

LABEL_13:
  v34 = objc_msgSend_gamma(deprecated, v19, v20, v21, v22, v23, v24, v25);
  v49 = objc_msgSend_contents(v31, v35, v36, v37, v38, v39, v40, v41);
  if (v34)
  {
    v50 = objc_msgSend_gamma(deprecated, v42, v43, v44, v45, v46, v47, v48);
    memcpy(v49, v50, 4 * self->_numberOfFeatureChannels);
  }

  else
  {
    v58 = objc_msgSend_length(v31, v42, v43, v44, v45, v46, v47, v48);
    memset_pattern4(v49, &__pattern4, v58);
  }

  v59 = objc_msgSend_beta(deprecated, v51, v52, v53, v54, v55, v56, v57);
  v74 = objc_msgSend_contents(v33, v60, v61, v62, v63, v64, v65, v66);
  if (v59)
  {
    v75 = objc_msgSend_beta(deprecated, v67, v68, v69, v70, v71, v72, v73);
    memcpy(v74, v75, 4 * self->_numberOfFeatureChannels);
    if (!statsCopy)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v76 = objc_msgSend_length(v33, v67, v68, v69, v70, v71, v72, v73);
    bzero(v74, v76);
    if (!statsCopy)
    {
      goto LABEL_26;
    }
  }

LABEL_20:
  v77 = objc_msgSend_mean(deprecated, v19, v20, v21, v22, v23, v24, v25);
  v92 = objc_msgSend_contents(explicit, v78, v79, v80, v81, v82, v83, v84);
  if (v77)
  {
    v93 = objc_msgSend_mean(deprecated, v85, v86, v87, v88, v89, v90, v91);
    memcpy(v92, v93, 4 * self->_numberOfFeatureChannels);
  }

  else
  {
    v101 = objc_msgSend_length(explicit, v85, v86, v87, v88, v89, v90, v91);
    bzero(v92, v101);
  }

  v102 = objc_msgSend_variance(deprecated, v94, v95, v96, v97, v98, v99, v100);
  v117 = objc_msgSend_contents(v29, v103, v104, v105, v106, v107, v108, v109);
  if (v102)
  {
    v118 = objc_msgSend_variance(deprecated, v110, v111, v112, v113, v114, v115, v116);
    memcpy(v117, v118, 4 * self->_numberOfFeatureChannels);
  }

  else
  {
    v119 = objc_msgSend_length(v29, v110, v111, v112, v113, v114, v115, v116);
    memset_pattern4(v117, &__pattern4, v119);
  }

LABEL_26:
  objc_msgSend_purge(deprecated, v19, v20, v21, v22, v23, v24, v25);
  self->_stateNeedsToLoad = 1;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v28.receiver = self;
  v28.super_class = MPSCNNBatchNormalization;
  v7 = [MPSCNNKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (v7)
  {
    v8 = objc_opt_respondsToSelector();
    v15 = objc_opt_respondsToSelector();
    dataSource = self->_dataSource;
    if (v8)
    {
      v17 = objc_msgSend_copyWithZone_device_(dataSource, v9, zone, device, v11, v12, v13, v14);
      v7[45] = v17;
      if (!v17)
      {
        goto LABEL_9;
      }

LABEL_7:
      v7[47] = objc_msgSend_copy(self->_fusedNeuronDescriptor, v18, v19, v20, v21, v22, v23, v24);
      *(v7 + 98) = 0x800000;
      operator new[]();
    }

    if (v15)
    {
      v25 = objc_msgSend_copyWithZone_(dataSource, v9, zone, v10, v11, v12, v13, v14);
      v7[45] = v25;
      if (v25)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v26 = dataSource;
      v7[45] = v26;
      if (v26)
      {
        goto LABEL_7;
      }
    }

LABEL_9:

    return 0;
  }

  return v7;
}

- (void)reloadGammaAndBetaWithCommandBuffer:(id)commandBuffer gammaAndBetaState:(MPSCNNNormalizationGammaAndBetaState *)gammaAndBetaState
{
  if (objc_msgSend_gamma(gammaAndBetaState, a2, commandBuffer, gammaAndBetaState, v4, v5, v6, v7))
  {
    objc_msgSend_beta(gammaAndBetaState, v11, v12, v13, v14, v15, v16, v17);
  }

  if ((!objc_msgSend_gamma(gammaAndBetaState, v11, v12, v13, v14, v15, v16, v17) || !objc_msgSend_beta(gammaAndBetaState, v18, v19, v20, v21, v22, v23, v24)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x36C, @"state does not have valid gamma and beta buffers.", v28, v29, v30, v31);
  }

  gamma = self->_gamma;
  explicit = atomic_load_explicit(gamma, memory_order_acquire);
  if (explicit)
  {
    beta = self->_beta;
    v35 = atomic_load_explicit(beta, memory_order_acquire);
    if (v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer(gamma, 0);
    explicit = atomic_load_explicit(gamma, memory_order_acquire);
    beta = self->_beta;
    v35 = atomic_load_explicit(beta, memory_order_acquire);
    if (v35)
    {
      goto LABEL_7;
    }
  }

  MPSAutoBuffer::AllocateBuffer(beta, 0);
  v35 = atomic_load_explicit(beta, memory_order_acquire);
LABEL_7:
  v36 = objc_msgSend_gamma(gammaAndBetaState, v25, v26, v27, v28, v29, v30, v31);
  v157 = objc_msgSend_beta(gammaAndBetaState, v37, v38, v39, v40, v41, v42, v43);
  ComputeState = MPSLibrary::GetComputeState();
  v45 = objc_alloc(MEMORY[0x277CD7210]);
  v58 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v45, v46, commandBuffer, 0, v47, v48, v49, v50);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v59 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v59 || (v60 = objc_opt_class(), v59 = NSStringFromClass(v60), objc_msgSend_setLabel_(self, v61, v59, v62, v63, v64, v65, v66), v59))
    {
      v67 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v51, @"_%@", v53, v54, v55, v56, v57, @"reloadGammaAndBeta");
      v74 = objc_msgSend_stringByAppendingString_(v59, v68, v67, v69, v70, v71, v72, v73);
      if (v74)
      {
        objc_msgSend_setLabel_(v58, v51, v74, v53, v54, v55, v56, v57);
      }
    }
  }

  numberOfFeatureChannels = self->_numberOfFeatureChannels;
  v162 = numberOfFeatureChannels;
  v76 = objc_msgSend_threadExecutionWidth(ComputeState, v51, v52, v53, v54, v55, v56, v57);
  v84 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v77, v78, v79, v80, v81, v82, v83);
  if (2 * v76 >= v84)
  {
    v91 = v84;
  }

  else
  {
    v91 = 2 * v76;
  }

  objc_msgSend_setComputePipelineState_(v58, v85, ComputeState, v86, v87, v88, v89, v90);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v92, explicit, 0, 0, v93, v94, v95);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v96, v36, 0, 1, v97, v98, v99);
  objc_msgSend_setBytes_length_atIndex_(v58, v100, &v162, 2, 2, v101, v102, v103);
  v160 = (numberOfFeatureChannels + v91 - 1) / v91;
  v161 = vdupq_n_s64(1uLL);
  v158 = v91;
  v159 = v161;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v58, v104, &v160, &v158, v105, v106, v107, v108);
  v109 = self->_numberOfFeatureChannels;
  v162 = v109;
  v117 = objc_msgSend_threadExecutionWidth(ComputeState, v110, v111, v112, v113, v114, v115, v116);
  v125 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v118, v119, v120, v121, v122, v123, v124);
  if (2 * v117 >= v125)
  {
    v132 = v125;
  }

  else
  {
    v132 = 2 * v117;
  }

  objc_msgSend_setComputePipelineState_(v58, v126, ComputeState, v127, v128, v129, v130, v131);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v133, v35, 0, 0, v134, v135, v136);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v137, v157, 0, 1, v138, v139, v140);
  objc_msgSend_setBytes_length_atIndex_(v58, v141, &v162, 2, 2, v142, v143, v144);
  v160 = (v109 + v132 - 1) / v132;
  v161 = vdupq_n_s64(1uLL);
  v158 = v132;
  v159 = v161;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v58, v145, &v160, &v158, v146, v147, v148, v149);
  MPSLibrary::ReleaseComputeState();
  self->_stateNeedsToLoad = 1;
  MPSDecrementReadCount(&gammaAndBetaState->super);
  objc_msgSend_endEncoding(v58, v150, v151, v152, v153, v154, v155, v156);
}

- (void)reloadMeanAndVarianceWithCommandBuffer:(id)commandBuffer meanAndVarianceState:(MPSCNNNormalizationMeanAndVarianceState *)meanAndVarianceState
{
  if (objc_msgSend_mean(meanAndVarianceState, a2, commandBuffer, meanAndVarianceState, v4, v5, v6, v7))
  {
    objc_msgSend_variance(meanAndVarianceState, v11, v12, v13, v14, v15, v16, v17);
  }

  if ((!objc_msgSend_mean(meanAndVarianceState, v11, v12, v13, v14, v15, v16, v17) || !objc_msgSend_variance(meanAndVarianceState, v18, v19, v20, v21, v22, v23, v24)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x381, @"state does not have valid mean and variance buffers.", v28, v29, v30, v31);
  }

  meanDS = self->_meanDS;
  explicit = atomic_load_explicit(meanDS, memory_order_acquire);
  if (explicit)
  {
    varDS = self->_varDS;
    v35 = atomic_load_explicit(varDS, memory_order_acquire);
    if (v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    MPSAutoBuffer::AllocateBuffer(meanDS, 0);
    explicit = atomic_load_explicit(meanDS, memory_order_acquire);
    varDS = self->_varDS;
    v35 = atomic_load_explicit(varDS, memory_order_acquire);
    if (v35)
    {
      goto LABEL_7;
    }
  }

  MPSAutoBuffer::AllocateBuffer(varDS, 0);
  v35 = atomic_load_explicit(varDS, memory_order_acquire);
LABEL_7:
  v36 = objc_msgSend_mean(meanAndVarianceState, v25, v26, v27, v28, v29, v30, v31);
  v157 = objc_msgSend_variance(meanAndVarianceState, v37, v38, v39, v40, v41, v42, v43);
  ComputeState = MPSLibrary::GetComputeState();
  v45 = objc_alloc(MEMORY[0x277CD7210]);
  v58 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v45, v46, commandBuffer, 0, v47, v48, v49, v50);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v59 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v59 || (v60 = objc_opt_class(), v59 = NSStringFromClass(v60), objc_msgSend_setLabel_(self, v61, v59, v62, v63, v64, v65, v66), v59))
    {
      v67 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v51, @"_%@", v53, v54, v55, v56, v57, @"reloadMeanAndVariance");
      v74 = objc_msgSend_stringByAppendingString_(v59, v68, v67, v69, v70, v71, v72, v73);
      if (v74)
      {
        objc_msgSend_setLabel_(v58, v51, v74, v53, v54, v55, v56, v57);
      }
    }
  }

  numberOfFeatureChannels = self->_numberOfFeatureChannels;
  v162 = numberOfFeatureChannels;
  v76 = objc_msgSend_threadExecutionWidth(ComputeState, v51, v52, v53, v54, v55, v56, v57);
  v84 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v77, v78, v79, v80, v81, v82, v83);
  if (2 * v76 >= v84)
  {
    v91 = v84;
  }

  else
  {
    v91 = 2 * v76;
  }

  objc_msgSend_setComputePipelineState_(v58, v85, ComputeState, v86, v87, v88, v89, v90);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v92, explicit, 0, 0, v93, v94, v95);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v96, v36, 0, 1, v97, v98, v99);
  objc_msgSend_setBytes_length_atIndex_(v58, v100, &v162, 2, 2, v101, v102, v103);
  v160 = (numberOfFeatureChannels + v91 - 1) / v91;
  v161 = vdupq_n_s64(1uLL);
  v158 = v91;
  v159 = v161;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v58, v104, &v160, &v158, v105, v106, v107, v108);
  v109 = self->_numberOfFeatureChannels;
  v162 = v109;
  v117 = objc_msgSend_threadExecutionWidth(ComputeState, v110, v111, v112, v113, v114, v115, v116);
  v125 = objc_msgSend_maxTotalThreadsPerThreadgroup(ComputeState, v118, v119, v120, v121, v122, v123, v124);
  if (2 * v117 >= v125)
  {
    v132 = v125;
  }

  else
  {
    v132 = 2 * v117;
  }

  objc_msgSend_setComputePipelineState_(v58, v126, ComputeState, v127, v128, v129, v130, v131);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v133, v35, 0, 0, v134, v135, v136);
  objc_msgSend_setBuffer_offset_atIndex_(v58, v137, v157, 0, 1, v138, v139, v140);
  objc_msgSend_setBytes_length_atIndex_(v58, v141, &v162, 2, 2, v142, v143, v144);
  v160 = (v109 + v132 - 1) / v132;
  v161 = vdupq_n_s64(1uLL);
  v158 = v132;
  v159 = v161;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v58, v145, &v160, &v158, v146, v147, v148, v149);
  MPSLibrary::ReleaseComputeState();
  self->_stateNeedsToLoad = 1;
  MPSDecrementReadCount(&meanAndVarianceState->super);
  objc_msgSend_endEncoding(v58, v150, v151, v152, v153, v154, v155, v156);
}

- (MPSCNNBatchNormalization)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v93.receiver = self;
  v93.super_class = MPSCNNBatchNormalization;
  v7 = [MPSCNNKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v7)
  {
    MPSDevice = MPSDevice::GetMPSDevice();
    if (MPSDevice)
    {
      v14 = MPSDevice;
      v94 = 0;
      v15 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v9, @"kMPSCNNBatchNormalization.s", &v94, v10, v11, v12, v13);
      if (v94)
      {
        v16 = v15;
        if (v15)
        {
          v17 = objc_alloc(MEMORY[0x277CCACA8]);
          v22 = objc_msgSend_initWithBytes_length_encoding_(v17, v18, v16, v94 - 1, 1, v19, v20, v21);
          v23 = v22;
          if (v22)
          {
            v24 = NSClassFromString(v22);
            if (v24)
            {
              v31 = v24;
              if (!&unk_284D1B308 || (objc_msgSend_conformsToProtocol_(v24, v25, &unk_284D1B308, v26, v27, v28, v29, v30) & 1) != 0)
              {
                v32 = objc_msgSend_decodeObjectOfClass_forKey_(aDecoder, v25, v31, @"kMPSCNNBatchNormalization.o", v27, v28, v29, v30);
                if (v32)
                {
                  goto LABEL_16;
                }
              }
            }

            else if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Binaries/MetalPerformanceShaders/install/Symbols/BuiltProducts/MPSCore.framework/PrivateHeaders/Internal/MPSCoreInternal.h", 0x2ED, @"Error: Can not decode. Unable to find class implementation for %@.", v33, v34, v35, v36);
            }
          }
        }
      }

      v32 = 0;
      if (MTLReportFailureTypeEnabled())
      {
        v37 = objc_opt_class();
        NSStringFromClass(v37);
        NSStringFromSelector(a2);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x3B3, @"[%@ %@] Error: Unable to decode data source.", v38, v39, v40, v41);
        v32 = 0;
      }

LABEL_16:
      v7->_epsilon = 1.1755e-38;
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_epsilon(v32, v42, v43, v44, v45, v46, v47, v48);
        v7->_epsilon = v49;
      }

      if (objc_opt_respondsToSelector())
      {
        v56 = objc_msgSend_performSelector_(v32, v50, sel_label, v51, v52, v53, v54, v55);
        objc_msgSend_setLabel_(v7, v57, v56, v58, v59, v60, v61, v62);
      }

      v63 = 16 * (*(*v14 + 24))(v14);
      v71 = 4 * objc_msgSend_numberOfFeatureChannels(v32, v64, v65, v66, v67, v68, v69, v70) + 12;
      objc_msgSend_newBufferWithLength_options_(device, v72, v71 & 0xFFFFFFFFFFFFFFF0, v63, v73, v74, v75, v76);
      objc_msgSend_newBufferWithLength_options_(device, v77, v71 & 0xFFFFFFFFFFFFFFF0, v63, v78, v79, v80, v81);
      objc_msgSend_newBufferWithLength_options_(device, v82, v71 & 0xFFFFFFFFFFFFFFF0, v63, v83, v84, v85, v86);
      objc_msgSend_newBufferWithLength_options_(device, v87, v71 & 0xFFFFFFFFFFFFFFF0, v63, v88, v89, v90, v91);
      operator new[]();
    }

    return 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v144.receiver = self;
  v144.super_class = MPSCNNBatchNormalization;
  [(MPSCNNKernel *)&v144 encodeWithCoder:?];
  if (self->_dataSource)
  {
    if (objc_msgSend_conformsToProtocol_(self->_dataSource, v6, &unk_284D09FA0, v7, v8, v9, v10, v11))
    {
      v18 = objc_opt_class();
      objc_msgSend_supportsSecureCoding(v18, v19, v20, v21, v22, v23, v24, v25);
    }

    if (!objc_msgSend_conformsToProtocol_(self->_dataSource, v12, &unk_284D09FA0, v13, v14, v15, v16, v17) || (v26 = objc_opt_class(), (objc_msgSend_supportsSecureCoding(v26, v27, v28, v29, v30, v31, v32, v33) & 1) == 0))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v132 = objc_opt_class();
        NSStringFromClass(v132);
        NSStringFromSelector(a2);
        objc_msgSend_debugDescription(self->_dataSource, v133, v134, v135, v136, v137, v138, v139);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNBatchNormalization.mm", 0x41F, @"[%@ %@] Error: dataSource does not support NSSecureCoding\n\t%@", v140, v141, v142, v143);
      }
    }

    dataSource = self->_dataSource;
    v35 = objc_autoreleasePoolPush();
    v36 = objc_opt_class();
    if (v36)
    {
      v37 = NSStringFromClass(v36);
      v44 = objc_msgSend_cStringUsingEncoding_(v37, v38, 1, v39, v40, v41, v42, v43);
      if (v44)
      {
        v45 = v44;
        v46 = strlen(v44);
        if (v46)
        {
          objc_msgSend_encodeBytes_length_forKey_(coder, v47, v45, v46 + 1, @"kMPSCNNBatchNormalization.s", v48, v49, v50);
          objc_msgSend_encodeObject_forKey_(coder, v51, dataSource, @"kMPSCNNBatchNormalization.o", v52, v53, v54, v55);
        }
      }
    }

    objc_autoreleasePoolPop(v35);
  }

  if (self->_fusedNeuronDescriptor)
  {
    objc_msgSend_encodeBool_forKey_(coder, v6, 1, @"kMPSCNNBatchNormalizationIsNeuronFusedKey", v8, v9, v10, v11);
    v63 = objc_msgSend_neuronType(self->_fusedNeuronDescriptor, v56, v57, v58, v59, v60, v61, v62);
    objc_msgSend_encodeInt32_forKey_(coder, v64, v63, @"kMPSCNNBatchNormalizationFusedNeuronType", v65, v66, v67, v68);
    v83 = objc_msgSend_neuronType(self->_fusedNeuronDescriptor, v69, v70, v71, v72, v73, v74, v75);
    fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
    if (v83 == 10)
    {
      v85 = objc_msgSend_data(fusedNeuronDescriptor, v76, v77, v78, v79, v80, v81, v82);
      objc_msgSend_bytes(v85, v86, v87, v88, v89, v90, v91, v92);
      numberOfFeatureChannels = self->_numberOfFeatureChannels;
      v94 = malloc_type_malloc(4 * numberOfFeatureChannels, 0x100004052888210uLL);
      if (v94)
      {
        v95 = v94;
        MPSCopyToFromNetworkByteOrder32();
        objc_msgSend_encodeBytes_length_forKey_(coder, v96, v95, 4 * numberOfFeatureChannels, @"kMPSCNNBatchNormalizationFusedNeuronPReLUData", v97, v98, v99);
        free(v95);
      }
    }

    else
    {
      objc_msgSend_a(fusedNeuronDescriptor, v76, v77, v78, v79, v80, v81, v82);
      objc_msgSend_encodeFloat_forKey_(coder, v100, @"kMPSCNNBatchNormalizationFusedNeuronA", v101, v102, v103, v104, v105);
      objc_msgSend_b(self->_fusedNeuronDescriptor, v106, v107, v108, v109, v110, v111, v112);
      objc_msgSend_encodeFloat_forKey_(coder, v113, @"kMPSCNNBatchNormalizationFusedNeuronB", v114, v115, v116, v117, v118);
      objc_msgSend_c(self->_fusedNeuronDescriptor, v119, v120, v121, v122, v123, v124, v125);
      objc_msgSend_encodeFloat_forKey_(coder, v126, @"kMPSCNNBatchNormalizationFusedNeuronC", v127, v128, v129, v130, v131);
    }
  }

  else
  {
    objc_msgSend_encodeBool_forKey_(coder, v6, 0, @"kMPSCNNBatchNormalizationIsNeuronFusedKey", v8, v9, v10, v11);
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v39.receiver = self;
  v39.super_class = MPSCNNBatchNormalization;
  v4 = [(MPSCNNKernel *)&v39 debugDescription];
  numberOfFeatureChannels = self->_numberOfFeatureChannels;
  epsilon = self->_epsilon;
  v14 = objc_msgSend_description(self->_dataSource, v7, v8, v9, v10, v11, v12, v13);
  result = objc_msgSend_stringWithFormat_(v3, v15, @"%@\n\tfeature channels: %lu\n\tepsilon: %g\n\tdata source: %@", v16, v17, v18, v19, v20, v4, numberOfFeatureChannels, *&epsilon, v14);
  fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
  if (fusedNeuronDescriptor)
  {
    v30 = MEMORY[0x277CCACA8];
    v31 = result;
    v32 = objc_msgSend_debugDescription(fusedNeuronDescriptor, v22, v23, v24, v25, v26, v27, v28);
    return objc_msgSend_stringWithFormat_(v30, v33, @"%@\n\tneuron:\n%@\n", v34, v35, v36, v37, v38, v31, v32);
  }

  return result;
}

@end