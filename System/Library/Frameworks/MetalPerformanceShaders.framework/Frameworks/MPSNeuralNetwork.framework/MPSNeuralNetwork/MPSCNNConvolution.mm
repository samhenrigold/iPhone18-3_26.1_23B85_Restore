@interface MPSCNNConvolution
- (BOOL)PrepareAndLoadData:(id)data dataType:(unsigned int)type weightsLayout:(unsigned int)layout weights:(const void *)weights biases:(const float *)biases quantizationType:(int)quantizationType ranges:lookUpTable:convertFloat32Weights:;
- (BOOL)initialize:(id)initialize convolutionDescriptor:(id)descriptor kernelWeights:(const void *)weights dataType:(unsigned int)type weightsLayout:(unsigned int)layout range:lookUpTable:qType:biasTerms:flags:fullyConnected:convolutionTranspose:preferredWeightsDataType:;
- (MPSCNNConvolution)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNConvolution)initWithDevice:(id)device;
- (MPSCNNConvolution)initWithDevice:(id)device convolutionDescriptor:(const MPSCNNConvolutionDescriptor *)convolutionDescriptor kernelWeights:(const float *)kernelWeights biasTerms:(const float *)biasTerms flags:(MPSCNNConvolutionFlags)flags;
- (MPSCNNConvolution)initWithDevice:(id)device convolutionDescriptor:(id)descriptor kernelWeights:(const float *)weights biasTerms:(const float *)terms flags:(unint64_t)flags fullyConnected:(BOOL)connected;
- (MPSCNNConvolution)initWithDevice:(id)device convolutionDescriptor:(id)descriptor kernelWeights:(const float *)weights biasTerms:(const float *)terms flags:(unint64_t)flags fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose;
- (MPSCNNConvolution)initWithDevice:(id)device weights:(id)weights;
- (MPSCNNConvolution)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected;
- (MPSCNNConvolution)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose;
- (MPSCNNConvolutionGradientState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSCNNConvolutionGradientState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage;
- (MPSCNNConvolutionGradientStateBatch)resultStateBatchForSourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSCNNConvolutionGradientStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage;
- (MPSCNNConvolutionWeightsAndBiasesState)exportWeightsAndBiasesWithCommandBuffer:(id)commandBuffer resultStateCanBeTemporary:(BOOL)resultStateCanBeTemporary;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset kernelOffset:(id *)kernelOffset;
- (id)initializeWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose;
- (id)resourceListForSourceImages:(id)images destinationImages:(id)destinationImages;
- (void)copyToGradientState:(id)state sourceImage:(id)image sourceStates:(id)states destinationImage:(id)destinationImage;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer sourceImage:(id)image destinationImage:(id)destinationImage state:(id *)state;
- (void)encodeWithCoder:(id)coder;
- (void)reloadWeightsAndBiasesFromDataSource;
- (void)reloadWeightsAndBiasesWithCommandBuffer:(id)commandBuffer state:(MPSCNNConvolutionWeightsAndBiasesState *)state;
- (void)reloadWeightsAndBiasesWithDataSource:(id)dataSource;
- (void)setFusedNeuronDescriptor:(id)descriptor;
@end

@implementation MPSCNNConvolution

- (void)setFusedNeuronDescriptor:(id)descriptor
{
  if (self->_fusedNeuronDescriptor != descriptor)
  {
    if (!descriptor)
    {
      selfCopy = self;
      v10 = MTLReportFailureTypeEnabled();
      self = selfCopy;
      if (v10)
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x4B7, @"MPSNNNeuronDescriptor for fusing with convoution cannot be nil", v6, v7, v8, v9);
        self = selfCopy;
      }
    }

    selfCopy2 = self;

    selfCopy2->_fusedNeuronDescriptor = descriptor;
  }
}

- (MPSCNNConvolution)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x59B, @"Please initialize the %@ class with initWithDevice:convolutionDescriptor:kernelWeights:biasTerms\n", v4, v5, v6, v7);
  }

  return 0;
}

- (BOOL)PrepareAndLoadData:(id)data dataType:(unsigned int)type weightsLayout:(unsigned int)layout weights:(const void *)weights biases:(const float *)biases quantizationType:(int)quantizationType ranges:lookUpTable:convertFloat32Weights:
{
  biasesCopy = biases;
  quantizationTypeCopy = quantizationType;
  v12 = *(data + 1);
  if (*(data + 112))
  {
    v128 = *(data + 2);
    v13 = *(data + 4);
    v14 = *(data + 9);
    v136 = v14;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = 0;
    v18 = 0;
    biasesCopy2 = biases;
    goto LABEL_16;
  }

  v14 = *(data + 9);
  v13 = *(data + 4);
  v12 *= *(data + 3) / *(data + 8);
  v128 = *(data + 2);
  v136 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  v15 = objc_msgSend_bytes(v14, a2, data, *&type, *&layout, weights, biases, *&quantizationType);
  v16 = v15;
  outputFeatureChannels = self->_outputFeatureChannels;
  v18 = v15 + 4 * outputFeatureChannels;
  if (!biasesCopy)
  {
    biasesCopy2 = (v15 + 4 * outputFeatureChannels);
    goto LABEL_16;
  }

  v19 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
  biasesCopy2 = v19;
  if (v13 >= 4)
  {
    v23 = v13 >> 2;
    v24 = biasesCopy;
    v25 = v16;
    v26 = v19;
    do
    {
      v27 = *v24++;
      v28 = v27;
      v29 = *(v25 + 4 * outputFeatureChannels);
      v30 = *v25++;
      *v26++ = vmlaq_f32(v29, v30, v28);
      --v23;
    }

    while (v23);
    v21 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v13 - (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13 <= (v13 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v21 = 0;
    v22 = v13;
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  if (v22 >= 8)
  {
    if (v19 - v16 - 4 * outputFeatureChannels < 0x20)
    {
      v31 = v21;
    }

    else if ((v19 - v16) < 0x20)
    {
      v31 = v21;
    }

    else if ((v19 - biasesCopy) < 0x20)
    {
      v31 = v21;
    }

    else
    {
      v31 = v21 + (v22 & 0xFFFFFFFFFFFFFFF8);
      v67 = 4 * v21;
      v68 = &v16->i8[4 * outputFeatureChannels];
      v69 = v22 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v70 = vmlaq_f32(*&v68[v67 + 16], *(v16 + v67 + 16), *&biasesCopy[v67 / 4 + 4]);
        v71 = (v19 + v67);
        *v71 = vmlaq_f32(*&v68[v67], *(v16 + v67), *&biasesCopy[v67 / 4]);
        v71[1] = v70;
        v67 += 32;
        v69 -= 8;
      }

      while (v69);
      if (v22 == (v22 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v31 = v21;
  }

  do
  {
    v19->f32[v31] = *(v18 + 4 * v31) + (v16->f32[v31] * biasesCopy[v31]);
    ++v31;
  }

  while (v13 != v31);
LABEL_16:
  if (objc_msgSend_data(*(data + 15), a2, data, *&type, *&layout, weights, biases, *&quantizationType))
  {
    v39 = objc_msgSend_data(*(data + 15), v32, v33, v34, v35, v36, v37, v38);
    v47 = objc_msgSend_bytes(v39, v40, v41, v42, v43, v44, v45, v46);
  }

  else
  {
    v47 = 0;
  }

  v134 = biasesCopy;
  v48 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7370]))[4];
  if (quantizationType != -1)
  {
    v49 = *MEMORY[0x277CD7350];
    HIDWORD(v121) = 8;
    LOBYTE(v121) = self->_fullyConnected;
    v50 = (*(*v48 + 56))(v48, (*(&self->super.super.super.isa + v49))[2], &self->_weights, &self->_bias, &self->_neuronABuffer, weights, biasesCopy2, v47, v121, layout, self->_layout, self);
    self->_qWts = (*(*v48 + 80))(v48, (*(&self->super.super.super.isa + v49))[2], &quantizationTypeCopy, self->_outputFeatureChannels, v138, v139, v16, v18);
    self->_qType = quantizationTypeCopy;
    if (self->_qWts)
    {
      v51 = v50;
    }

    else
    {
      v51 = 1;
    }

    biasesCopy = v134;
    goto LABEL_124;
  }

  if (v140)
  {
    typeCopy = 268435472;
  }

  else
  {
    typeCopy = type;
  }

  weightsCopy8 = weights;
  v127 = typeCopy;
  if (typeCopy == type)
  {
    weightsCopy2 = weights;
    if (!v136)
    {
      if (typeCopy == type)
      {
        goto LABEL_67;
      }

LABEL_58:
      v72 = weightsCopy2;
      MPSConvertFloatToHalf();
      layoutCopy5 = layout;
      goto LABEL_122;
    }
  }

  weightsCopy2 = malloc_type_malloc(v13 * v128 * v12 * ((typeCopy >> 3) & 0xFDFFFFFF), 0xA923B2B7uLL);
  if (v136)
  {
    v54 = v12 * v128;
    if (type == 268435472)
    {
      v122 = v48;
      if (v127 == 268435488)
      {
        if (!v13)
        {
          layoutCopy5 = layout;
          v72 = weightsCopy2;
          goto LABEL_122;
        }

        v123 = v47;
        v55 = 0;
        weightsCopy3 = weights;
        v129 = v54 & 0xFFFFFFFFFFFFFFFCLL;
        v57 = weightsCopy2;
        while (1)
        {
          MPSConvertHalfToFloat();
          v58 = v16->f32[v55];
          if (v54 >= 4)
          {
            v61 = 0;
            do
            {
              v57[v61] = vmulq_n_f32(v57[v61], v58);
              ++v61;
            }

            while (v54 >> 2 != v61);
            v59 = v54 & 0xFFFFFFFFFFFFFFFCLL;
            v60 = v54 - v129;
            if (v54 <= v129)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v59 = 0;
            v60 = v54;
            if (!v54)
            {
              goto LABEL_36;
            }
          }

          if (v60 >= 8)
          {
            v62 = v59 + (v60 & 0xFFFFFFFFFFFFFFF8);
            v63 = 4 * v59;
            v64 = v60 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v65 = (v57 + v63);
              v66 = vmulq_n_f32(*(v57 + v63 + 16), v58);
              *v65 = vmulq_n_f32(*(v57 + v63), v58);
              v65[1] = v66;
              v63 += 32;
              v64 -= 8;
            }

            while (v64);
            if (v60 == (v60 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_36;
            }
          }

          else
          {
            v62 = v59;
          }

          do
          {
            v57->f32[v62] = v58 * v57->f32[v62];
            ++v62;
          }

          while (v54 != v62);
LABEL_36:
          ++v55;
          weightsCopy3 += 2 * v54;
          v57 = (v57 + 4 * v54);
          if (v55 == v13)
          {
            weightsCopy8 = weights;
            layoutCopy5 = layout;
            v48 = v122;
            v47 = v123;
            v72 = weightsCopy2;
            goto LABEL_122;
          }
        }
      }

      v124 = v47;
      v80 = malloc_type_malloc(4 * v54, 0x100004052888210uLL);
      v81 = v80;
      if (v13)
      {
        v82 = 0;
        v130 = v54 & 0xFFFFFFFFFFFFFFFCLL;
        v125 = v80 + 1;
        v83 = 2 * v54;
        v84 = weightsCopy2;
        while (1)
        {
          MPSConvertHalfToFloat();
          v85 = v16->f32[v82];
          if (v54 >= 4)
          {
            v88 = v81;
            v89 = v54 >> 2;
            do
            {
              *v88 = vmulq_n_f32(*v88, v85);
              ++v88;
              --v89;
            }

            while (v89);
            v86 = v54 & 0xFFFFFFFFFFFFFFFCLL;
            v87 = v54 - v130;
            if (v54 <= v130)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v86 = 0;
            v87 = v54;
            if (!v54)
            {
              goto LABEL_70;
            }
          }

          if (v87 >= 8)
          {
            v90 = v86 + (v87 & 0xFFFFFFFFFFFFFFF8);
            v91 = (v125 + 4 * v86);
            v92 = v87 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v93 = vmulq_n_f32(*v91, v85);
              v91[-1] = vmulq_n_f32(v91[-1], v85);
              *v91 = v93;
              v91 += 2;
              v92 -= 8;
            }

            while (v92);
            if (v87 == (v87 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_70;
            }
          }

          else
          {
            v90 = v86;
          }

          v94 = v54 - v90;
          v95 = &v81->f32[v90];
          do
          {
            *v95 = v85 * *v95;
            ++v95;
            --v94;
          }

          while (v94);
LABEL_70:
          MPSConvertFloatToHalf();
          ++v82;
          weightsCopy8 = (weightsCopy8 + v83);
          v84 = (v84 + v83);
          if (v82 == v13)
          {
            goto LABEL_118;
          }
        }
      }
    }

    else
    {
      if (v127 == 268435488)
      {
        if (v13)
        {
          if (v54 > 3)
          {
            v101 = 0;
            v102 = 4 * v54;
            weightsCopy5 = weights;
            v104 = weightsCopy2;
            do
            {
              v105 = 0;
              v106 = v16->f32[v101];
              do
              {
                v104[v105] = vmulq_n_f32(weightsCopy5[v105], v106);
                ++v105;
              }

              while (v54 >> 2 != v105);
              if ((v54 & 0xFFFFFFFFFFFFFFFCLL) != v54)
              {
                v107 = v54 & 0xFFFFFFFFFFFFFFFCLL;
                do
                {
                  v104->f32[v107] = v106 * weightsCopy5->f32[v107];
                  ++v107;
                }

                while (v54 != v107);
              }

              ++v101;
              v104 = (v104 + v102);
              weightsCopy5 = (weightsCopy5 + v102);
            }

            while (v101 != v13);
          }

          else if (v54)
          {
            v74 = 0;
            v75 = 4 * v54;
            weightsCopy6 = weights;
            v77 = weightsCopy2;
            do
            {
              v78 = 0;
              v79 = v16->f32[v74];
              do
              {
                v77[v78] = v79 * weightsCopy6[v78];
                ++v78;
              }

              while (v54 != v78);
              ++v74;
              v77 = (v77 + v75);
              weightsCopy6 = (weightsCopy6 + v75);
            }

            while (v74 != v13);
          }
        }

        goto LABEL_67;
      }

      v124 = v47;
      v132 = 4 * v54;
      v81 = malloc_type_malloc(4 * v54, 0x100004052888210uLL);
      if (!v13)
      {
        goto LABEL_120;
      }

      if (v54 > 3)
      {
        v122 = v48;
        v108 = v54 >> 2;
        if ((v54 & 0xFFFFFFFFFFFFFFFCLL) == v54)
        {
          v109 = 0;
          v110 = weightsCopy2;
          do
          {
            v111 = 0;
            v112 = &v16->f32[v109];
            v113 = vld1q_dup_f32(v112);
            do
            {
              v81[v111] = vmulq_f32(v113, weightsCopy8[v111]);
              ++v111;
            }

            while (v108 != v111);
            MPSConvertFloatToHalf();
            ++v109;
            v110 = (v110 + 2 * v54);
            weightsCopy8 = (weightsCopy8 + v132);
          }

          while (v109 != v13);
        }

        else
        {
          weightsCopy7 = weights;
          v115 = 0;
          v116 = weightsCopy2;
          do
          {
            v117 = 0;
            v118 = v16->f32[v115];
            do
            {
              v81[v117] = vmulq_n_f32(weightsCopy7[v117], v118);
              ++v117;
            }

            while (v108 != v117);
            v119 = v54 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v81->f32[v119] = v118 * weightsCopy7->f32[v119];
              ++v119;
            }

            while (v54 != v119);
            MPSConvertFloatToHalf();
            ++v115;
            v116 = (v116 + 2 * v54);
            weightsCopy7 = (weightsCopy7 + v132);
          }

          while (v115 != v13);
        }

LABEL_118:
        biasesCopy = v134;
        weightsCopy8 = weights;
      }

      else
      {
        if (!v54)
        {
          v72 = weightsCopy2;
          do
          {
            MPSConvertFloatToHalf();
            --v13;
          }

          while (v13);
          goto LABEL_121;
        }

        v122 = v48;
        v96 = 0;
        weightsCopy9 = weights;
        v98 = weightsCopy2;
        do
        {
          v99 = 0;
          v100 = v16->f32[v96];
          do
          {
            v81->f32[v99] = v100 * weightsCopy9[v99];
            ++v99;
          }

          while (v54 != v99);
          MPSConvertFloatToHalf();
          ++v96;
          v98 = (v98 + 2 * v54);
          weightsCopy9 = (weightsCopy9 + v132);
        }

        while (v96 != v13);
        biasesCopy = v134;
      }
    }

    v48 = v122;
LABEL_120:
    v72 = weightsCopy2;
LABEL_121:
    free(v81);
    layoutCopy5 = layout;
    v47 = v124;
    goto LABEL_122;
  }

  if (v127 != type)
  {
    goto LABEL_58;
  }

LABEL_67:
  layoutCopy5 = layout;
  v72 = weightsCopy2;
LABEL_122:
  self->_weightsDataType = v127;
  HIDWORD(v121) = v127;
  LOBYTE(v121) = self->_fullyConnected;
  v51 = (*(*v48 + 56))(v48, (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], &self->_weights, &self->_bias, &self->_neuronABuffer, v72, biasesCopy2, v47, v121, layoutCopy5, self->_layout, self);
  if (v72 != weightsCopy8)
  {
    free(v72);
  }

LABEL_124:
  if (biasesCopy && v136)
  {
    free(biasesCopy2);
  }

  return v51;
}

- (BOOL)initialize:(id)initialize convolutionDescriptor:(id)descriptor kernelWeights:(const void *)weights dataType:(unsigned int)type weightsLayout:(unsigned int)layout range:lookUpTable:qType:biasTerms:flags:fullyConnected:convolutionTranspose:preferredWeightsDataType:
{
  v9 = *(descriptor + 1);
  if (!v9)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    v20 = @"kernel width must be > 0";
    v21 = 1766;
    goto LABEL_23;
  }

  v11 = *(descriptor + 2);
  if (!v11)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    v20 = @"kernel height must be > 0";
    v21 = 1767;
    goto LABEL_23;
  }

  v12 = *(descriptor + 3);
  if (!v12)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    v20 = @"number of input feature channels must be > 0";
    v21 = 1768;
    goto LABEL_23;
  }

  v13 = *(descriptor + 4);
  if (!v13)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    v20 = @"number of output feature channels must be > 0";
    v21 = 1769;
    goto LABEL_23;
  }

  if (!*(descriptor + 6))
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    v20 = @"strideX must be > 0";
    v21 = 1770;
    goto LABEL_23;
  }

  if (!*(descriptor + 7))
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    v20 = @"strideY must be > 0";
    v21 = 1771;
    goto LABEL_23;
  }

  v14 = *(descriptor + 8);
  if (!v14)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    v20 = @"number of groups must be > 0";
    v21 = 1772;
    goto LABEL_23;
  }

  v15 = *&type;
  if (v103 == 268435488)
  {
    if (type != 268435488)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v20 = @"requested use of float32 weights, but weight buffer has type 0x%16.16llx";
        v21 = 1775;
LABEL_23:
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", v21, v20, v16, v17, v18, v19);
        goto LABEL_24;
      }

      goto LABEL_24;
    }
  }

  else if (v103 != 268435472)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    v20 = @"kernelWeightsDataType must be MPSDataTypeFloat16 for weights of type 0x%16.16llx";
    v21 = 1777;
    goto LABEL_23;
  }

  if (v98 != -1 && *(descriptor + 5) != 1)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    v20 = @"8-bit weights are only allowed for interleaved per array slice layout";
    v21 = 1781;
    goto LABEL_23;
  }

  if (*(descriptor + 112) == 1)
  {
    if (v13 % v12)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_24;
      }

      v20 = @"for depth wise convolution, number of output feature channels (%lu) must be multiple of input feature channels (%lu)";
      v21 = 1785;
      goto LABEL_23;
    }

    if (v13 / v12 != 1)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_24;
      }

      v20 = @"for depth wise convolution, currently only channel multiplier of 1 is supported.";
      v21 = 1788;
      goto LABEL_23;
    }

    if (v14 != 1)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_24;
      }

      v20 = @"for depth wise convolution, groups should be 1.";
      v21 = 1789;
      goto LABEL_23;
    }

    v22 = 1;
    if (type != 268435472 && type != 268435488)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v20 = @"depth wise convolution currently only supported for FP weights.";
        v21 = 1790;
        goto LABEL_23;
      }

LABEL_24:

      return 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v94 = v22;
  if (*(descriptor + 10))
  {
    objc_msgSend_a(*(descriptor + 15), a2, initialize, descriptor, weights, *&type, *&layout, v7);
    objc_msgSend_a(*(descriptor + 15), v24, v25, v26, v27, v28, v29, v30);
    if (v38 != *(*(descriptor + 10) + 332))
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_24;
      }

      v20 = @"parameterA of depreated neuron property doesnt match the value set for neuronParameterA of convolution descriptor.";
      v21 = 1794;
      goto LABEL_23;
    }

    objc_msgSend_b(*(descriptor + 15), v31, v32, v33, v34, v35, v36, v37);
    objc_msgSend_b(*(descriptor + 15), v39, v40, v41, v42, v43, v44, v45);
    if (v53 != *(*(descriptor + 10) + 336))
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_24;
      }

      v20 = @"parameterB of depreated neuron property doesnt match the value set for neuronParameterB of convolution descriptor.";
      v21 = 1795;
      goto LABEL_23;
    }

    objc_msgSend_neuronType(*(descriptor + 15), v46, v47, v48, v49, v50, v51, v52);
    if (objc_msgSend_neuronType(*(descriptor + 15), v54, v55, v56, v57, v58, v59, v60) != *(*(descriptor + 10) + 328))
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_24;
      }

      v20 = @"Neuron type of depreated neuron property doesnt match the value set for neuronType of convolution descriptor.";
      v21 = 1796;
      goto LABEL_23;
    }

    v9 = *(descriptor + 1);
    v11 = *(descriptor + 2);
  }

  v61 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7370]))[4];
  self->_dataSource = 0;
  self->super._kernelWidth = v9;
  self->super._kernelHeight = v11;
  self->_inputFeatureChannels = *(descriptor + 3);
  v62 = *(descriptor + 5);
  self->_outputFeatureChannels = *(descriptor + 4);
  self->_layout = v62;
  self->super._strideInPixelsX = *(descriptor + 6);
  self->super._strideInPixelsY = *(descriptor + 7);
  self->_groups = *(descriptor + 8);
  self->_neuron_deprecated = *(descriptor + 10);
  self->_scaleFactor = *(descriptor + 11);
  self->super._dilationRateX = *(descriptor + 12);
  self->super._dilationRateY = *(descriptor + 13);
  self->super._checkFlags |= 2u;
  if (((*(**(&self->super.super.super.isa + *MEMORY[0x277CD7350]) + 56))(*(&self->super.super.super.isa + *MEMORY[0x277CD7350])) & 1) == 0)
  {
    self->super._checkFlags |= 0x8000u;
  }

  self->_flags = v100;
  self->_fullyConnected = v101;
  self->_convolutionTranspose = v102;
  self->_weights = 0;
  self->_bias = 0;
  self->_qWts = 0;
  self->super._encodeData = self;
  self->super._encode = sub_239D5FB2C;
  self->super._batchEncode = (*(*v61 + 128))(v61);
  self->_qType = v98;
  self->_weightsDataType = v15;
  self->_weightsLayout = layout;
  self->_biasOriginal = 0;
  self->_channelMultiplier = v94;
  self->_neuronABuffer = 0;
  self->_accumulatorPrecisionOption = 1;
  self->super._pluginOptions = 2;
  self->_batchNormalizationData = *(descriptor + 9);
  self->_fusedNeuronDescriptor = *(descriptor + 15);
  v71 = v15 == 268435488 && v103 == 268435472;
  self->_convertFloat32Weights = v71;
  v72 = *(descriptor + 9);
  if (v72)
  {
    objc_msgSend_bytes(*(descriptor + 9), v63, v64, v65, v66, v67, v68, v69);
  }

  if (objc_msgSend_data(*(descriptor + 15), v63, v64, v65, v66, v67, v68, v69))
  {
    v80 = objc_msgSend_data(*(descriptor + 15), v73, v74, v75, v76, v77, v78, v79);
    objc_msgSend_bytes(v80, v81, v82, v83, v84, v85, v86, v87);
  }

  if (v72 && v99 && self->_qType >= 2)
  {
    v88 = objc_alloc(MEMORY[0x277CBEA90]);
    self->_biasOriginal = objc_msgSend_initWithBytes_length_(v88, v89, v99, 4 * self->_outputFeatureChannels, v90, v91, v92, v93);
  }

  return objc_msgSend_PrepareAndLoadData_dataType_weightsLayout_weights_biases_quantizationType_ranges_lookUpTable_convertFloat32Weights_(self, v73, descriptor, v15, layout, weights, v99, v98);
}

- (MPSCNNConvolution)initWithDevice:(id)device convolutionDescriptor:(id)descriptor kernelWeights:(const float *)weights biasTerms:(const float *)terms flags:(unint64_t)flags fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose
{
  v22.receiver = self;
  v22.super_class = MPSCNNConvolution;
  result = [(MPSCNNKernel *)&v22 initWithDevice:?];
  if (result)
  {
    v21 = 268435472;
    HIBYTE(v20) = transpose;
    LOBYTE(v20) = connected;
    termsCopy = terms;
    v18 = -1;
    v17 = result;
    if (objc_msgSend_initialize_convolutionDescriptor_kernelWeights_dataType_weightsLayout_range_lookUpTable_qType_biasTerms_flags_fullyConnected_convolutionTranspose_preferredWeightsDataType_(result, v16, device, descriptor, weights, 268435488, 0, 0, 0, v18, termsCopy, flags, v20))
    {

      return 0;
    }

    else
    {
      return v17;
    }
  }

  return result;
}

- (MPSCNNConvolution)initWithDevice:(id)device convolutionDescriptor:(id)descriptor kernelWeights:(const float *)weights biasTerms:(const float *)terms flags:(unint64_t)flags fullyConnected:(BOOL)connected
{
  v18.receiver = self;
  v18.super_class = MPSCNNConvolution;
  result = [(MPSCNNKernel *)&v18 initWithDevice:?];
  if (result)
  {
    termsCopy = terms;
    v16 = result;
    if (objc_msgSend_initialize_convolutionDescriptor_kernelWeights_dataType_weightsLayout_range_lookUpTable_qType_biasTerms_flags_fullyConnected_convolutionTranspose_preferredWeightsDataType_(result, v15, device, descriptor, weights, 268435488, 0, 0, 0, -1, termsCopy, flags, connected))
    {

      return 0;
    }

    else
    {
      return v16;
    }
  }

  return result;
}

- (MPSCNNConvolution)initWithDevice:(id)device convolutionDescriptor:(const MPSCNNConvolutionDescriptor *)convolutionDescriptor kernelWeights:(const float *)kernelWeights biasTerms:(const float *)biasTerms flags:(MPSCNNConvolutionFlags)flags
{
  v19.receiver = self;
  v19.super_class = MPSCNNConvolution;
  result = [(MPSCNNKernel *)&v19 initWithDevice:?];
  if (result)
  {
    v18 = 268435472;
    v17 = 0;
    v16 = biasTerms;
    v15 = -1;
    v14 = result;
    if (objc_msgSend_initialize_convolutionDescriptor_kernelWeights_dataType_weightsLayout_range_lookUpTable_qType_biasTerms_flags_fullyConnected_convolutionTranspose_preferredWeightsDataType_(result, v13, device, convolutionDescriptor, kernelWeights, 268435488, 0, 0, 0, v15, v16, flags, v17))
    {

      return 0;
    }

    else
    {
      return v14;
    }
  }

  return result;
}

- (id)initializeWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose
{
  selfCopy = self;
  v13 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.super.isa + v13) & 1) == 0)
  {
    if (!weights && MTLReportFailureTypeEnabled())
    {
      v204 = objc_opt_class();
      v219 = NSStringFromClass(v204);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x830, @"[%@ initWithDevice:convolutionDescriptor:weights:] weights may not be nil", v205, v206, v207, v208);
    }

    if (!device && MTLReportFailureTypeEnabled())
    {
      v209 = objc_opt_class();
      v219 = NSStringFromClass(v209);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x831, @"[%@ initWithDevice:convolutionDescriptor:weights:] device may not be nil", v210, v211, v212, v213);
    }
  }

  if ((objc_msgSend_load(weights, a2, device, weights, connected, transpose, v6, v7, v219) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v199 = objc_opt_class();
    v220 = NSStringFromClass(v199);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x836, @"[%@ initWithDevice:convolutionDescriptor:weights:] weights.load should return YES", v200, v201, v202, v203);
  }

  v21 = objc_msgSend_descriptor(weights, v14, v15, v16, v17, v18, v19, v20, v220);
  v29 = objc_msgSend_dataType(weights, v22, v23, v24, v25, v26, v27, v28);
  if ((*(&selfCopy->super.super.super.isa + v13) & 1) == 0)
  {
    if (!v21 && MTLReportFailureTypeEnabled())
    {
      v214 = objc_opt_class();
      v221 = NSStringFromClass(v214);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x83D, @"[%@ initWithDevice:convolutionDescriptor:weights:] convolutionDescriptor may not be nil", v215, v216, v217, v218);
    }

    if (v29 != 8 && v29 != 268435472 && v29 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x83E, @"Only MPSDataTypeFloat32, MPSDataTypeFloat16 and MPSDataTypeUInt8 are supported by convolution.", v30, v31, v32, v33);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v41 = objc_msgSend_weightsLayout(weights, v34, v35, v36, v37, v38, v39, v40);
  }

  else
  {
    v41 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_kernelWeightsDataType(weights, v42, v43, v44, v45, v46, v47, v48);
  }

  switch(v29)
  {
    case 8u:
      if (objc_opt_respondsToSelector())
      {
        v79 = objc_msgSend_weightsQuantizationType(weights, v72, v73, v74, v75, v76, v77, v78);
        if (v79 != 2)
        {
          if (v79 != 1)
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x898, @"Only linear or loopup table based dequantization available for UInt8 datatype", v195, v196, v197, v198);
            }

            v101 = 0;
            goto LABEL_44;
          }

          objc_opt_respondsToSelector();
          if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x874, @"Data source does not implement rangesForUInt8Kernel method", v83, v84, v85, v86);
          }

          objc_msgSend_rangesForUInt8Kernel(weights, v80, v81, v82, v83, v84, v85, v86, v221);
          if (!objc_msgSend_rangesForUInt8Kernel(weights, v87, v88, v89, v90, v91, v92, v93) && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x875, @"rangesForUInt8Kernel method returned nil", v97, v98, v99, v100);
          }

          goto LABEL_35;
        }

        objc_opt_respondsToSelector();
        if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x886, @"Data source does not implement lookupTableForUInt8Kernel method", v153, v154, v155, v156);
        }

        objc_msgSend_lookupTableForUInt8Kernel(weights, v150, v151, v152, v153, v154, v155, v156, v221);
        if (!objc_msgSend_lookupTableForUInt8Kernel(weights, v157, v158, v159, v160, v161, v162, v163) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x887, @"lookupTableForUInt8Kernel method returned nil", v117, v118, v119, v120);
        }
      }

      else if ((objc_opt_respondsToSelector() & 1) == 0 || !objc_msgSend_lookupTableForUInt8Kernel(weights, v107, v108, v109, v110, v111, v112, v113))
      {
        if ((objc_opt_respondsToSelector() & 1) == 0 || !objc_msgSend_rangesForUInt8Kernel(weights, v121, v122, v123, v124, v125, v126, v127))
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x8BD, @"Weights data provider data type is UInt8 but no method implemented to dequantize the weights or methods returned nil LUT/ranges", v146, v147, v148, v149);
          }

          v101 = 1;
          goto LABEL_44;
        }

LABEL_35:
        v128 = objc_msgSend_weights(weights, v94, v95, v96, v97, v98, v99, v100, v221);
        v136 = objc_msgSend_rangesForUInt8Kernel(weights, v129, v130, v131, v132, v133, v134, v135);
        HIBYTE(v228) = transpose;
        LOBYTE(v228) = connected;
        v226 = objc_msgSend_biasTerms(weights, v137, v138, v139, v140, v141, v142, v143);
        v145 = objc_msgSend_initialize_convolutionDescriptor_kernelWeights_dataType_weightsLayout_range_lookUpTable_qType_biasTerms_flags_fullyConnected_convolutionTranspose_preferredWeightsDataType_(selfCopy, v144, device, v21, v128, 8, v41, v136, 0, 0, v226, 0, v228);
LABEL_43:
        v101 = v145;
        goto LABEL_44;
      }

      v164 = objc_msgSend_weights(weights, v114, v115, v116, v117, v118, v119, v120, v221);
      v172 = objc_msgSend_lookupTableForUInt8Kernel(weights, v165, v166, v167, v168, v169, v170, v171);
      HIBYTE(v227) = transpose;
      LOBYTE(v227) = connected;
      v225 = objc_msgSend_biasTerms(weights, v173, v174, v175, v176, v177, v178, v179);
      v224 = 2;
      v222 = v172;
      v60 = selfCopy;
      deviceCopy3 = device;
      v62 = v21;
      v63 = v164;
      v59 = 8;
      goto LABEL_42;
    case 0x10000010u:
      v64 = objc_msgSend_weights(weights, v42, v43, v44, v45, v46, v47, v48);
      HIBYTE(v227) = transpose;
      LOBYTE(v227) = connected;
      v225 = objc_msgSend_biasTerms(weights, v65, v66, v67, v68, v69, v70, v71);
      v224 = -1;
      v222 = 0;
      v60 = selfCopy;
      deviceCopy3 = device;
      v62 = v21;
      v63 = v64;
      v59 = 268435472;
      goto LABEL_42;
    case 0x10000020u:
      v49 = objc_msgSend_weights(weights, v42, v43, v44, v45, v46, v47, v48);
      v57 = objc_msgSend_biasTerms(weights, v50, v51, v52, v53, v54, v55, v56);
      HIBYTE(v227) = transpose;
      LOBYTE(v227) = connected;
      v59 = 268435488;
      v225 = v57;
      v224 = -1;
      v222 = 0;
      v60 = selfCopy;
      deviceCopy3 = device;
      v62 = v21;
      v63 = v49;
LABEL_42:
      v145 = objc_msgSend_initialize_convolutionDescriptor_kernelWeights_dataType_weightsLayout_range_lookUpTable_qType_biasTerms_flags_fullyConnected_convolutionTranspose_preferredWeightsDataType_(v60, v58, deviceCopy3, v62, v63, v59, v41, 0, v222, v224, v225, 0, v227);
      goto LABEL_43;
  }

  v101 = 1;
  if (MTLReportFailureTypeEnabled())
  {
    v102 = objc_opt_class();
    v221 = NSStringFromClass(v102);
    v223 = v29;
    v101 = 1;
    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0x8C5, @"[%@ initWithDevice:convolutionDescriptor:weights:] unsupported weights.dataType: 0x%16.16llx", v103, v104, v105, v106);
  }

LABEL_44:
  if (objc_opt_respondsToSelector())
  {
    v187 = objc_msgSend_performSelector_(weights, v180, sel_label, v182, v183, v184, v185, v186);
    objc_msgSend_setLabel_(selfCopy, v188, v187, v189, v190, v191, v192, v193);
  }

  objc_msgSend_purge(weights, v180, v181, v182, v183, v184, v185, v186, v221, v223);
  selfCopy->_dataSource = weights;
  if (v101)
  {

    return 0;
  }

  return selfCopy;
}

- (MPSCNNConvolution)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected convolutionTranspose:(BOOL)transpose
{
  transposeCopy = transpose;
  connectedCopy = connected;
  v14.receiver = self;
  v14.super_class = MPSCNNConvolution;
  result = [(MPSCNNKernel *)&v14 initWithDevice:?];
  if (result)
  {
    return objc_msgSend_initializeWithDevice_weights_fullyConnected_convolutionTranspose_(result, v11, device, weights, connectedCopy, transposeCopy, v12, v13);
  }

  return result;
}

- (MPSCNNConvolution)initWithDevice:(id)device weights:(id)weights fullyConnected:(BOOL)connected
{
  connectedCopy = connected;
  v12.receiver = self;
  v12.super_class = MPSCNNConvolution;
  result = [(MPSCNNKernel *)&v12 initWithDevice:?];
  if (result)
  {
    return objc_msgSend_initializeWithDevice_weights_fullyConnected_convolutionTranspose_(result, v9, device, weights, connectedCopy, 0, v10, v11);
  }

  return result;
}

- (MPSCNNConvolution)initWithDevice:(id)device weights:(id)weights
{
  v10.receiver = self;
  v10.super_class = MPSCNNConvolution;
  result = [(MPSCNNKernel *)&v10 initWithDevice:?];
  if (result)
  {
    return objc_msgSend_initializeWithDevice_weights_fullyConnected_convolutionTranspose_(result, v7, device, weights, 0, 0, v8, v9);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v34.receiver = self;
  v34.super_class = MPSCNNConvolution;
  v7 = [MPSCNNKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v13 = v7;
  if (v7)
  {
    v7[25] = self->super._kernelWidth;
    v7[26] = self->super._kernelHeight;
    v7[41] = self->_inputFeatureChannels;
    v7[42] = self->_outputFeatureChannels;
    v7[43] = self->_layout;
    v7[27] = self->super._strideInPixelsX;
    v7[28] = self->super._strideInPixelsY;
    v7[44] = self->_groups;
    v7[52] = self->_scaleFactor;
    v7[53] = self->_channelMultiplier;
    v7[29] = self->super._dilationRateX;
    v7[30] = self->super._dilationRateY;
    v7[45] = objc_msgSend_copyWithZone_device_(self->_neuron_deprecated, v8, zone, device, v9, v10, v11, v12);
    *(v13 + 70) = self->super._checkFlags | 2;
    if (((*(**(&self->super.super.super.isa + *MEMORY[0x277CD7350]) + 56))(*(&self->super.super.super.isa + *MEMORY[0x277CD7350])) & 1) == 0)
    {
      *(v13 + 70) |= 0x8000u;
    }

    v13[48] = self->_flags;
    v13[36] = self->super._encode;
    v13[37] = self->super._batchEncode;
    *(v13 + 392) = self->_fullyConnected;
    *(v13 + 102) = self->_qType;
    *(v13 + 108) = self->_weightsDataType;
    *(v13 + 394) = self->_convertFloat32Weights;
    *(v13 + 109) = self->_weightsLayout;
    v13[57] = self->_accumulatorPrecisionOption;
    v13[39] = self->super._pluginOptions;
    v13[59] = self->_batchNormalizationData;
    v13[60] = self->_fusedNeuronDescriptor;
    weights = self->_weights;
    if (weights)
    {
      v13[46] = weights;
    }

    bias = self->_bias;
    if (bias)
    {
      v13[47] = bias;
    }

    qWts = self->_qWts;
    if (qWts)
    {
      v13[50] = qWts;
    }

    biasOriginal = self->_biasOriginal;
    if (biasOriginal)
    {
      v13[55] = biasOriginal;
    }

    neuronABuffer = self->_neuronABuffer;
    if (neuronABuffer)
    {
      v13[56] = neuronABuffer;
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = objc_msgSend_copyWithZone_device_(self->_dataSource, v19, zone, device, v20, v21, v22, v23);
    }

    else
    {
      v31 = objc_opt_respondsToSelector();
      dataSource = self->_dataSource;
      if (v31)
      {
        v24 = objc_msgSend_copyWithZone_(dataSource, v25, zone, v26, v27, v28, v29, v30);
      }

      else
      {
        v24 = dataSource;
      }
    }

    v13[58] = v24;
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNConvolution;
  [(MPSCNNKernel *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v5 = 1;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v242.receiver = self;
  v242.super_class = MPSCNNConvolution;
  [(MPSCNNKernel *)&v242 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_layout, @"MPSCNNConvolutionFeatureChannelsLayout", v7, v8, v9, v10);
  objc_msgSend_encodeBool_forKey_(coder, v11, self->_fullyConnected, @"MPSCNNConvolutionIsFullyConnected", v12, v13, v14, v15);
  objc_msgSend_encodeBool_forKey_(coder, v16, self->_convolutionTranspose, @"MPSCNNConvolutionIsConvolutionTranspose", v17, v18, v19, v20);
  objc_msgSend_encodeBool_forKey_(coder, v21, self->_convertFloat32Weights, @"MPSCNNConvolutionConvertFloat32Weights", v22, v23, v24, v25);
  objc_msgSend_encodeInt64_forKey_(coder, v26, self->_flags, @"MPSCNNConvolutionFlags", v27, v28, v29, v30);
  v239 = 0;
  v240 = 0;
  v241 = 0;
  fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
  if (fusedNeuronDescriptor)
  {
    objc_msgSend_neuronInfo(fusedNeuronDescriptor, v31, v32, v33, v34, v35, v36, v37);
    v5 = v241 == 0;
  }

  objc_msgSend_encodeBool_forKey_(coder, v31, v5, @"MPSCNNConvolutionNeuronBufferA.isNull", v34, v35, v36, v37);
  objc_msgSend_encodeBool_forKey_(coder, v39, self->_batchNormalizationData == 0, @"MPSCNNConvolutionBatchNormalizationData.isNull", v40, v41, v42, v43);
  batchNormalizationData = self->_batchNormalizationData;
  if (batchNormalizationData)
  {
    objc_msgSend_bytes(batchNormalizationData, v44, v45, v46, v47, v48, v49, v50);
    outputFeatureChannels = self->_outputFeatureChannels;
    v53 = malloc_type_malloc(8 * outputFeatureChannels, 0x100004052888210uLL);
    if (v53)
    {
      v54 = v53;
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_encodeBytes_length_forKey_(coder, v55, v54, 8 * outputFeatureChannels, @"MPSCNNConvolutionBatchNormalizationData.data", v56, v57, v58);
      free(v54);
    }
  }

  if (self->_dataSource)
  {
    if (objc_msgSend_conformsToProtocol_(self->_dataSource, v44, &unk_284D09FA0, v46, v47, v48, v49, v50))
    {
      v59 = objc_opt_class();
      if (objc_msgSend_supportsSecureCoding(v59, v60, v61, v62, v63, v64, v65, v66))
      {
        dataSource = self->_dataSource;
        v68 = objc_autoreleasePoolPush();
        v69 = objc_opt_class();
        if (v69)
        {
          v70 = NSStringFromClass(v69);
          v77 = objc_msgSend_cStringUsingEncoding_(v70, v71, 1, v72, v73, v74, v75, v76);
          if (v77)
          {
            v78 = v77;
            v79 = strlen(v77);
            if (v79)
            {
              objc_msgSend_encodeBytes_length_forKey_(coder, v80, v78, v79 + 1, @"MPSCNNConvolutionDataSourceClass", v81, v82, v83);
              objc_msgSend_encodeObject_forKey_(coder, v84, dataSource, @"MPSCNNConvolutionDataSource", v85, v86, v87, v88);
            }
          }
        }

        objc_autoreleasePoolPop(v68);
        return;
      }
    }
  }

  objc_msgSend_encodeInt64_forKey_(coder, v44, self->_inputFeatureChannels, @"MPSCNNConvolutionInputFeatureChannels", v47, v48, v49, v50);
  objc_msgSend_encodeInt64_forKey_(coder, v89, self->_outputFeatureChannels, @"MPSCNNConvolutionOutputFeatureChannels", v90, v91, v92, v93);
  objc_msgSend_encodeInt64_forKey_(coder, v94, self->_groups, @"MPSCNNConvolutionGroups", v95, v96, v97, v98);
  objc_msgSend_encodeInt32_forKey_(coder, v99, v239, @"MPSCNNConvolutionNeuronInfo.type", v100, v101, v102, v103);
  LODWORD(v104) = HIDWORD(v239);
  objc_msgSend_encodeFloat_forKey_(coder, v105, @"MPSCNNConvolutionNeuronInfo.a", v106, v107, v108, v109, v110, v104);
  LODWORD(v111) = v240;
  objc_msgSend_encodeFloat_forKey_(coder, v112, @"MPSCNNConvolutionNeuronInfo.b", v113, v114, v115, v116, v117, v111);
  LODWORD(v118) = HIDWORD(v240);
  objc_msgSend_encodeFloat_forKey_(coder, v119, @"MPSCNNConvolutionNeuronInfo.c", v120, v121, v122, v123, v124, v118);
  objc_msgSend_encodeInt64_forKey_(coder, v125, self->_scaleFactor, @"MPSCNNConvolutionScaleFactor", v126, v127, v128, v129);
  objc_msgSend_encodeInt64_forKey_(coder, v130, self->_qType, @"MPSCNNConvolutionQuantizationType", v131, v132, v133, v134);
  objc_msgSend_encodeInt64_forKey_(coder, v135, self->_channelMultiplier, @"MPSCNNConvolutionChannelMultipler", v136, v137, v138, v139);
  v147 = self->_dataSource;
  if (v147)
  {
    if ((objc_msgSend_load(v147, v140, v141, v142, v143, v144, v145, v146) & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0xA4A, @"Failed to load data source", v151, v152, v153, v154);
    }

    qType = self->_qType;
    if (qType == -1)
    {
      v226 = 0;
      v227 = 0;
    }

    else if (qType < 2)
    {
      objc_opt_respondsToSelector();
      if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0xA55, @"data source does not repond to selector rangesForUInt8Kernel", v181, v182, v183, v184);
      }

      v226 = objc_msgSend_rangesForUInt8Kernel(self->_dataSource, v178, v179, v180, v181, v182, v183, v184);
      v227 = 0;
    }

    else
    {
      objc_opt_respondsToSelector();
      if ((objc_opt_respondsToSelector() & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0xA51, @"data source does not repond to selector lookupTableForUInt8Kernel", v159, v160, v161, v162);
      }

      v226 = 0;
      v227 = objc_msgSend_lookupTableForUInt8Kernel(self->_dataSource, v156, v157, v158, v159, v160, v161, v162);
    }

    v185 = 268435472;
    v186 = objc_msgSend_dataType(self->_dataSource, v148, v149, v150, v151, v152, v153, v154);
    v194 = objc_msgSend_weights(self->_dataSource, v187, v188, v189, v190, v191, v192, v193);
    if (objc_opt_respondsToSelector())
    {
      v202 = objc_msgSend_kernelWeightsDataType(self->_dataSource, v195, v196, v197, v198, v199, v200, v201) == 268435472;
      if (v186 != 268435488)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v202 = 1;
      if (v186 != 268435488)
      {
        goto LABEL_39;
      }
    }

    if (v202)
    {
      v203 = self->super._kernelWidth * self->_outputFeatureChannels * self->super._kernelHeight;
      if (!self->_channelMultiplier)
      {
        v203 *= self->_inputFeatureChannels / self->_groups;
      }

      v204 = malloc_type_malloc(2 * v203, 0x1000040BDFB0063uLL);
      MPSConvertFloatToHalf();
      v194 = v204;
      if (objc_opt_respondsToSelector())
      {
LABEL_40:
        v212 = objc_msgSend_weightsLayout(self->_dataSource, v205, v206, v207, v208, v209, v210, v211);
        v237 = 0uLL;
        v238 = 0;
        v213 = self->_fusedNeuronDescriptor;
        if (!v213)
        {
LABEL_36:
          v228[0] = v185;
          v228[1] = v212;
          v236 = 0;
          v229 = v194;
          v230 = objc_msgSend_biasTerms(self->_dataSource, v205, v206, v207, v208, v209, v210, v211);
          v231 = v227;
          v232 = v226;
          v233 = 0;
          v234 = v237;
          v235 = 0;
          sub_239D5E500(coder, v228, self, v214, v215, v216, v217, v218);
          objc_msgSend_purge(self->_dataSource, v219, v220, v221, v222, v223, v224, v225);
          if (v186 == 268435488)
          {
            free(v194);
          }

          return;
        }

LABEL_35:
        objc_msgSend_neuronInfo(v213, v205, v206, v207, v208, v209, v210, v211);
        goto LABEL_36;
      }

LABEL_34:
      v212 = 0;
      v237 = 0uLL;
      v238 = 0;
      v213 = self->_fusedNeuronDescriptor;
      if (!v213)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

LABEL_39:
    v185 = v186;
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  objc_msgSend_plugin(self, v140, v141, v142, v143, v144, v145, v146);
  if (objc_msgSend_plugin(self, v163, v164, v165, v166, v167, v168, v169) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0xA8A, @"Convolution object was not created with data source. Use initWithDevice:weights", v173, v174, v175, v176);
  }

  if (!objc_msgSend_plugin(self, v170, v171, v172, v173, v174, v175, v176))
  {
    v177 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7370]))[4];
    (*(*v177 + 88))(v177, coder, self, self->_weights, self->_bias, self->_neuronABuffer, self->_biasOriginal, self->_qWts, self->_qType);
  }
}

- (MPSCNNConvolution)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v427.receiver = self;
  v427.super_class = MPSCNNConvolution;
  v6 = [MPSCNNKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v12 = v6;
  if (!v6)
  {
    return v12;
  }

  if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v53 = objc_opt_class();
      NSStringFromClass(v53);
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0xA9D, @"[%@ initWithCoder:device:] Failed: unsupported file version.", v54, v55, v56, v57);
    }

    goto LABEL_64;
  }

  v428[0] = 0;
  v13 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v7, @"MPSCNNConvolutionDataSourceClass", v428, v8, v9, v10, v11);
  v424 = device;
  if (v428[0])
  {
    v20 = v13;
    if (v13)
    {
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      v26 = objc_msgSend_initWithBytes_length_encoding_(v21, v22, v20, v428[0] - 1, 1, v23, v24, v25);
      v27 = v26;
      if (v26)
      {
        v28 = NSClassFromString(v26);
        if (v28)
        {
          v30 = v28;
          if (!&unk_284D0FAF8 || (objc_msgSend_conformsToProtocol_(v28, v14, &unk_284D0FAF8, v29, v16, v17, v18, v19) & 1) != 0)
          {
            v31 = objc_msgSend_decodeObjectOfClass_forKey_(aDecoder, v14, v30, @"MPSCNNConvolutionDataSource", v16, v17, v18, v19);
            if (v31)
            {
              v33 = v31;
              v34 = objc_msgSend_descriptor(v31, v14, v32, v15, v16, v17, v18, v19);
              v35 = *(v34 + 32);
              v425 = *(v34 + 24);
              v36 = *(v34 + 64);
              v44 = objc_msgSend_dataType(v33, v37, v38, v39, v40, v41, v42, v43);
              if (objc_opt_respondsToSelector())
              {
                v52 = objc_msgSend_weightsQuantizationType(v33, v45, v46, v47, v48, v49, v50, v51);
                if (v52 != 2)
                {
                  if (v52 != 1)
                  {
                    goto LABEL_71;
                  }

LABEL_70:
                  v416 = 0;
                  v417 = objc_msgSend_rangesForUInt8Kernel(v33, v45, v46, v47, v48, v49, v50, v51);
                  v426 = 0;
LABEL_73:
                  v420 = objc_msgSend_neuronType(*(v34 + 120), v45, v46, v47, v48, v49, v50, v51);
                  objc_msgSend_a(*(v34 + 120), v353, v354, v355, v356, v357, v358, v359);
                  v92 = v360;
                  objc_msgSend_b(*(v34 + 120), v361, v362, v363, v364, v365, v366, v367);
                  v100 = v368;
                  objc_msgSend_c(*(v34 + 120), v369, v370, v371, v372, v373, v374, v375);
                  v108 = v376;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v410 = v35 / v425;
                  }

                  else
                  {
                    v410 = 0;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v415 = objc_msgSend_subPixelScaleFactor(v34, v377, v378, v379, v380, v381, v382, v383);
                  }

                  else
                  {
                    v415 = 1;
                  }

                  if ((objc_msgSend_load(v33, v377, v378, v379, v380, v381, v382, v383) & 1) == 0 && MTLReportFailureTypeEnabled())
                  {
                    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0xADA, @"data source load failed", v387, v388, v389, v390);
                  }

                  v419 = objc_msgSend_weights(v33, v384, v385, v386, v387, v388, v389, v390);
                  v398 = objc_msgSend_biasTerms(v33, v391, v392, v393, v394, v395, v396, v397);
                  if (objc_opt_respondsToSelector())
                  {
                    v418 = objc_msgSend_weightsLayout(v33, v399, v400, v401, v402, v403, v404, v405);
                  }

                  else
                  {
                    v418 = 0;
                  }

                  v423 = v44;
                  v421 = v33;
                  v422 = v36;
                  if (objc_opt_respondsToSelector())
                  {
                    objc_msgSend_kernelWeightsDataType(v12->_dataSource, v162, v406, v163, v164, v165, v166, v167);
                  }

                  v414 = 0;
                  v409 = 0;
                  v168 = v398;
                  goto LABEL_42;
                }

LABEL_68:
                v416 = objc_msgSend_lookupTableForUInt8Kernel(v33, v45, v46, v47, v48, v49, v50, v51);
                v417 = 0;
                v352 = 2;
LABEL_72:
                v426 = v352;
                goto LABEL_73;
              }

              if (v44 == 8)
              {
                if (objc_opt_respondsToSelector())
                {
                  goto LABEL_68;
                }

                if (objc_opt_respondsToSelector())
                {
                  goto LABEL_70;
                }
              }

LABEL_71:
              v416 = 0;
              v417 = 0;
              v352 = -1;
              goto LABEL_72;
            }
          }
        }

        else if (MTLReportFailureTypeEnabled())
        {
          v407 = v26;
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Binaries/MetalPerformanceShaders/install/Symbols/BuiltProducts/MPSCore.framework/PrivateHeaders/Internal/MPSCoreInternal.h", 0x2ED, @"Error: Can not decode. Unable to find class implementation for %@.", v16, v17, v18, v19);
        }
      }
    }
  }

  v58 = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"MPSCNNConvolutionInputFeatureChannels", v15, v16, v17, v18, v19, v407);
  v65 = objc_msgSend_decodeInt64ForKey_(aDecoder, v59, @"MPSCNNConvolutionOutputFeatureChannels", v60, v61, v62, v63, v64);
  v72 = objc_msgSend_decodeInt64ForKey_(aDecoder, v66, @"MPSCNNConvolutionGroups", v67, v68, v69, v70, v71);
  v426 = objc_msgSend_decodeInt64ForKey_(aDecoder, v73, @"MPSCNNConvolutionQuantizationType", v74, v75, v76, v77, v78);
  v420 = objc_msgSend_decodeInt32ForKey_(aDecoder, v79, @"MPSCNNConvolutionNeuronInfo.type", v80, v81, v82, v83, v84);
  objc_msgSend_decodeFloatForKey_(aDecoder, v85, @"MPSCNNConvolutionNeuronInfo.a", v86, v87, v88, v89, v90);
  v92 = v91;
  objc_msgSend_decodeFloatForKey_(aDecoder, v93, @"MPSCNNConvolutionNeuronInfo.b", v94, v95, v96, v97, v98);
  v100 = v99;
  objc_msgSend_decodeFloatForKey_(aDecoder, v101, @"MPSCNNConvolutionNeuronInfo.c", v102, v103, v104, v105, v106);
  v108 = v107;
  v415 = objc_msgSend_decodeInt64ForKey_(aDecoder, v109, @"MPSCNNConvolutionScaleFactor", v110, v111, v112, v113, v114);
  v121 = objc_msgSend_decodeInt64ForKey_(aDecoder, v115, @"MPSCNNConvolutionChannelMultipler", v116, v117, v118, v119, v120);
  v128 = objc_msgSend_decodeInt64ForKey_(aDecoder, v122, @"MPSCNNConvolutionWeight.dataType", v123, v124, v125, v126, v127);
  v418 = objc_msgSend_decodeInt64ForKey_(aDecoder, v129, @"MPSCNNConvolutionWeight.dataLayout", v130, v131, v132, v133, v134);
  objc_msgSend_decodeBoolForKey_(aDecoder, v135, @"MPSCNNConvolutionConvertFloat32Weights", v136, v137, v138, v139, v140);
  v35 = v65;
  v141 = v12->super._kernelWidth * v65 * v12->super._kernelHeight;
  v425 = v58;
  v410 = v121;
  if (!v121)
  {
    v141 *= v58 / v72;
  }

  v142 = (v128 >> 3) & 0x1DFFFFFF;
  v143 = malloc_type_malloc(v141 * v142, 0x13380AA3uLL);
  v428[0] = 0;
  v149 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v144, @"MPSCNNConvolutionWeight.data", v428, v145, v146, v147, v148);
  if (!v149)
  {
LABEL_27:
    if ((objc_msgSend_decodeBoolForKey_(aDecoder, v150, @"MPSCNNConvolutionBias.isNull", v151, v152, v153, v154, v155) & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v150 = v149;
  if (v142 == 4)
  {
    MPSCopyToFromNetworkByteOrder32();
    if ((objc_msgSend_decodeBoolForKey_(aDecoder, v169, @"MPSCNNConvolutionBias.isNull", v170, v171, v172, v173, v174) & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v142 == 2)
  {
    MPSCopyToFromNetworkByteOrder16();
    goto LABEL_27;
  }

  if (v142 != 1)
  {
    goto LABEL_27;
  }

  memcpy(v143, v149, v428[0]);
  if ((objc_msgSend_decodeBoolForKey_(aDecoder, v156, @"MPSCNNConvolutionBias.isNull", v157, v158, v159, v160, v161) & 1) == 0)
  {
LABEL_30:
    v168 = malloc_type_malloc(4 * v35, 0x100004052888210uLL);
    v428[0] = 0;
    if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v175, @"MPSCNNConvolutionBias.data", v428, v176, v177, v178, v179))
    {
      MPSCopyToFromNetworkByteOrder32();
    }

    goto LABEL_32;
  }

LABEL_28:
  v168 = 0;
LABEL_32:
  v422 = v72;
  v423 = v128;
  v419 = v143;
  if (v426 == -1)
  {
    v421 = 0;
    v416 = 0;
    v417 = 0;
    v409 = 0;
    v414 = 1;
  }

  else
  {
    if (v426 == 2)
    {
      v180 = malloc_type_malloc(0x400uLL, 0x100004052888210uLL);
      v428[0] = 0;
      if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v181, @"MPSCNNConvolutionQuantizationData.data", v428, v182, v183, v184, v185))
      {
        MPSCopyToFromNetworkByteOrder32();
      }

      v421 = 0;
      v417 = 0;
      v426 = 2;
      v414 = 1;
      v416 = v180;
    }

    else
    {
      v180 = malloc_type_malloc(8 * v35, 0x100004052888210uLL);
      v428[0] = 0;
      if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v186, @"MPSCNNConvolutionQuantizationData.data", v428, v187, v188, v189, v190))
      {
        MPSCopyToFromNetworkByteOrder32();
      }

      v421 = 0;
      v416 = 0;
      v417 = v180;
      v414 = 1;
    }

    v409 = v180;
  }

LABEL_42:
  v191 = objc_msgSend_decodeInt64ForKey_(aDecoder, v162, @"MPSCNNConvolutionFeatureChannelsLayout", v163, v164, v165, v166, v167);
  v413 = objc_msgSend_decodeBoolForKey_(aDecoder, v192, @"MPSCNNConvolutionIsFullyConnected", v193, v194, v195, v196, v197);
  v412 = objc_msgSend_decodeBoolForKey_(aDecoder, v198, @"MPSCNNConvolutionIsConvolutionTranspose", v199, v200, v201, v202, v203);
  v411 = objc_msgSend_decodeInt64ForKey_(aDecoder, v204, @"MPSCNNConvolutionFlags", v205, v206, v207, v208, v209);
  v222 = 4 * v35;
  if ((objc_msgSend_decodeBoolForKey_(aDecoder, v210, @"MPSCNNConvolutionNeuronBufferA.isNull", v211, v212, v213, v214, v215) & 1) == 0)
  {
    v224 = malloc_type_malloc(4 * v35, 0x100004052888210uLL);
    v428[0] = 0;
    if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v232, @"MPSCNNConvolutionNeuronBufferA.data", v428, v233, v234, v235, v236))
    {
      MPSCopyToFromNetworkByteOrder32();
    }

    v223 = v168;
    v225 = 8 * v35;
    if ((objc_msgSend_decodeBoolForKey_(aDecoder, v237, @"MPSCNNConvolutionBatchNormalizationData.isNull", v238, v239, v240, v241, v242) & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_49:
    v226 = 0;
    goto LABEL_50;
  }

  v223 = v168;
  v224 = 0;
  v225 = 8 * v35;
  if (objc_msgSend_decodeBoolForKey_(aDecoder, v216, @"MPSCNNConvolutionBatchNormalizationData.isNull", v217, v218, v219, v220, v221))
  {
    goto LABEL_49;
  }

LABEL_44:
  v226 = malloc_type_malloc(v225, 0x100004052888210uLL);
  v428[0] = 0;
  if (objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v227, @"MPSCNNConvolutionBatchNormalizationData.data", v428, v228, v229, v230, v231))
  {
    MPSCopyToFromNetworkByteOrder32();
  }

LABEL_50:
  v246 = objc_autoreleasePoolPush();
  kernelWidth = v12->super._kernelWidth;
  kernelHeight = v12->super._kernelHeight;
  if (v415 < 2)
  {
    if (v410)
    {
      v262 = objc_msgSend_cnnConvolutionDescriptorWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(MPSCNNDepthWiseConvolutionDescriptor, v243, kernelWidth, kernelHeight, v425, v35, v244, v245);
    }

    else
    {
      v262 = objc_msgSend_cnnConvolutionDescriptorWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(MPSCNNConvolutionDescriptor, v243, kernelWidth, kernelHeight, v425, v35, v244, v245);
    }

    v249 = v262;
  }

  else
  {
    v249 = objc_msgSend_cnnConvolutionDescriptorWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(MPSCNNSubPixelConvolutionDescriptor, v243, kernelWidth, kernelHeight, v425, v35, v244, v245);
    objc_msgSend_setSubPixelScaleFactor_(v249, v250, v415, v251, v252, v253, v254, v255);
  }

  objc_msgSend_setNeuronType_(*(v249 + 120), v256, v420, v257, v258, v259, v260, v261);
  LODWORD(v263) = v92;
  objc_msgSend_setA_(*(v249 + 120), v264, v265, v266, v267, v268, v269, v270, v263);
  LODWORD(v271) = v100;
  objc_msgSend_setB_(*(v249 + 120), v272, v273, v274, v275, v276, v277, v278, v271);
  LODWORD(v279) = v108;
  objc_msgSend_setC_(*(v249 + 120), v280, v281, v282, v283, v284, v285, v286, v279);
  objc_msgSend_setFeatureChannelsLayout_(v249, v287, v191, v288, v289, v290, v291, v292);
  objc_msgSend_setGroups_(v249, v293, v422, v294, v295, v296, v297, v298);
  objc_msgSend_setStrideInPixelsX_(v249, v299, v12->super._strideInPixelsX, v300, v301, v302, v303, v304);
  objc_msgSend_setStrideInPixelsY_(v249, v305, v12->super._strideInPixelsY, v306, v307, v308, v309, v310);
  objc_msgSend_setDilationRateX_(v249, v311, v12->super._dilationRateX, v312, v313, v314, v315, v316);
  objc_msgSend_setDilationRateY_(v249, v317, v12->super._dilationRateY, v318, v319, v320, v321, v322);
  if (v226)
  {
    v324 = objc_alloc(MEMORY[0x277CBEA90]);
    *(v249 + 72) = objc_msgSend_initWithBytes_length_(v324, v325, v226, v225, v326, v327, v328, v329);
  }

  if (v224)
  {
    v330 = objc_alloc(MEMORY[0x277CBEA90]);
    v336 = objc_msgSend_initWithBytes_length_(v330, v331, v224, v222, v332, v333, v334, v335);
    objc_msgSend_setData_(*(v249 + 120), v337, v336, v338, v339, v340, v341, v342);
  }

  HIBYTE(v408) = v412;
  LOBYTE(v408) = v413;
  v343 = objc_msgSend_initialize_convolutionDescriptor_kernelWeights_dataType_weightsLayout_range_lookUpTable_qType_biasTerms_flags_fullyConnected_convolutionTranspose_preferredWeightsDataType_(v12, v323, v424, v249, v419, v423, v418, v417, v416, v426, v223, v411, v408);
  v12->_dataSource = v421;
  objc_autoreleasePoolPop(v246);
  if (v414)
  {
    free(v419);
    free(v223);
    free(v409);
    free(v224);
    free(v226);
    if (!v343)
    {
      return v12;
    }

    goto LABEL_64;
  }

  objc_msgSend_purge(v421, v344, v345, v346, v347, v348, v349, v350);
  free(v224);
  free(v226);
  if (v343)
  {
LABEL_64:

    return 0;
  }

  return v12;
}

- (id)destinationImageDescriptorForSourceImages:(id)images sourceStates:(id)states paddingMethod:(unint64_t)method sourceOffset:(id *)offset kernelOffset:(id *)kernelOffset
{
  v44.receiver = self;
  v44.super_class = MPSCNNConvolution;
  v8 = [(MPSCNNKernel *)&v44 destinationImageDescriptorForSourceImages:images sourceStates:states paddingMethod:method sourceOffset:offset kernelOffset:kernelOffset];
  v16 = objc_msgSend_width(v8, v9, v10, v11, v12, v13, v14, v15);
  objc_msgSend_setWidth_(v8, v17, self->_scaleFactor * v16, v18, v19, v20, v21, v22);
  v30 = objc_msgSend_height(v8, v23, v24, v25, v26, v27, v28, v29);
  objc_msgSend_setHeight_(v8, v31, self->_scaleFactor * v30, v32, v33, v34, v35, v36);
  objc_msgSend_setFeatureChannels_(v8, v37, self->_outputFeatureChannels / (self->_scaleFactor * self->_scaleFactor), v38, v39, v40, v41, v42);
  return v8;
}

- (void)copyToGradientState:(id)state sourceImage:(id)image sourceStates:(id)states destinationImage:(id)destinationImage
{
  v8.receiver = self;
  v8.super_class = MPSCNNConvolution;
  [(MPSCNNKernel *)&v8 copyToGradientState:state sourceImage:image sourceStates:states destinationImage:destinationImage];
  *(state + 18) = self->_outputFeatureChannels / (self->_scaleFactor * self->_scaleFactor);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = MPSCNNConvolution;
  v4 = [(MPSCNNKernel *)&v21 debugDescription];
  result = objc_msgSend_stringWithFormat_(v3, v5, @"%@\tinputFeatureChannels: %lu\n\toutputFeatureChannels:   %lu\n\tFeature channel layout:  %lu\n\tGroups:                  %lu\n\tscaleFactor:             %lu\n\tAccumulator precision:   %s\n", v6, v7, v8, v9, v10, v4, self->_inputFeatureChannels, self->_outputFeatureChannels, self->_featureChannelsLayout, self->_groups, self->_scaleFactor, off_278B36DC8[self->_accumulatorPrecisionOption != 0]);
  fusedNeuronDescriptor = self->_fusedNeuronDescriptor;
  if (fusedNeuronDescriptor)
  {
    v20 = result;
    objc_msgSend_neuronInfo(fusedNeuronDescriptor, v12, v13, v14, v15, v16, v17, v18);
    return v20;
  }

  return result;
}

- (void)encodeToCommandBuffer:(id)buffer sourceImage:(id)image destinationImage:(id)destinationImage state:(id *)state
{
  objc_msgSend_encodeToCommandBuffer_sourceImage_destinationImage_(self, a2, buffer, image, destinationImage, state, v6, v7);
  v11 = [MPSCNNConvolutionState alloc];
  v19 = objc_msgSend_width(image, v12, v13, v14, v15, v16, v17, v18);
  v27 = objc_msgSend_height(image, v20, v21, v22, v23, v24, v25, v26);
  kernelWidth = self->super._kernelWidth;
  kernelHeight = self->super._kernelHeight;
  objc_msgSend_offset(self, v30, v31, v32, v33, v34, v35, v36);
  *state = objc_msgSend_initWithSourceWidth_sourceHeight_kernelWidth_kernelHeight_sourceOffset_(v11, v37, v19, v27, kernelWidth, kernelHeight, v39, v38);
}

- (id)resourceListForSourceImages:(id)images destinationImages:(id)destinationImages
{
  outputFeatureChannels = self->_outputFeatureChannels;
  v9 = outputFeatureChannels;
  if (!self->_channelMultiplier)
  {
    v9 = LODWORD(self->_inputFeatureChannels) / self->_groups * outputFeatureChannels;
  }

  v10 = 4 * LODWORD(self->super._kernelHeight) * LODWORD(self->super._kernelWidth) * v9 + 12;
  v11 = ((outputFeatureChannels / self->_groups + 3) & 0x1FFFFFFFCLL) * 4 * self->_groups;
  if (v11)
  {
    return objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], a2, v10 & 0x7FFFFFFF0, destinationImages, v4, v5, v6, v7, v11, 0);
  }

  else
  {
    return objc_msgSend_resourceListWithBufferSizes_(MEMORY[0x277CD72A0], a2, v10 & 0x7FFFFFFF0, destinationImages, v4, v5, v6, v7, 0);
  }
}

- (MPSCNNConvolutionGradientState)resultStateForSourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v54[1] = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v54[0] = sourceImage;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v54, 1, v11, v12, v13, v14);
  v53 = destinationImage;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, &v53, 1, v17, v18, v19, v20);
  v27 = objc_msgSend_resourceListForSourceImages_destinationImages_(self, v22, v15, v21, v23, v24, v25, v26);
  v28 = [MPSCNNConvolutionGradientState alloc];
  v32 = objc_msgSend_initWithDevice_resourceList_convolution_weightsLayout_(v28, v29, (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v27, self, self->_weightsLayout, v30, v31);
  objc_autoreleasePoolPop(v9);
  if (!v32)
  {
    return 0;
  }

  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v33, v32, sourceImage, sourceStates, destinationImage, v34, v35);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v36 = MEMORY[0x277CCACA8];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v45 = objc_msgSend_stringWithFormat_(v36, v39, @"created by %@", v40, v41, v42, v43, v44, v38);
    objc_msgSend_setLabel_(v32, v46, v45, v47, v48, v49, v50, v51);
  }

  return v32;
}

- (MPSCNNConvolutionGradientStateBatch)resultStateBatchForSourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v12 = objc_msgSend_count(destinationImage, a2, sourceImage, sourceStates, destinationImage, v5, v6, v7);
  v13 = objc_autoreleasePoolPush();
  v19 = objc_msgSend_resourceListForSourceImages_destinationImages_(self, v14, sourceImage, destinationImage, v15, v16, v17, v18);
  v20 = [MPSCNNConvolutionGradientState alloc];
  v24 = objc_msgSend_initWithDevice_resourceList_convolution_weightsLayout_(v20, v21, (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v19, self, self->_weightsLayout, v22, v23);
  if (!v24)
  {
    objc_autoreleasePoolPop(v13);
    return 0;
  }

  v31 = v24;
  v32 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v25, 0, v26, v27, v28, v29, v30);
  v39 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v33, 0, v34, v35, v36, v37, v38);
  v46 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v40, 0, v41, v42, v43, v44, v45);
  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v47, v31, v32, v39, v46, v48, v49);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v50 = MEMORY[0x277CCACA8];
    v51 = objc_opt_class();
    v52 = NSStringFromClass(v51);
    v59 = objc_msgSend_stringWithFormat_(v50, v53, @"created by %@", v54, v55, v56, v57, v58, v52);
    objc_msgSend_setLabel_(v31, v60, v59, v61, v62, v63, v64, v65);
  }

  v66 = malloc_type_malloc(8 * v12, 0x80040B8603338uLL);
  v67 = v66;
  if (v12)
  {
    if (v12 < 4)
    {
      v68 = 0;
LABEL_11:
      v73 = v12 - v68;
      v74 = &v66->i64[v68];
      do
      {
        *v74++ = v31;
        --v73;
      }

      while (v73);
      goto LABEL_13;
    }

    v68 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v70 = vdupq_n_s64(v31);
    v71 = v66 + 1;
    v72 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v71[-1] = v70;
      *v71 = v70;
      v71 += 2;
      v72 -= 4;
    }

    while (v72);
    if (v12 != v68)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v75 = objc_alloc(MEMORY[0x277CBEA60]);
  v81 = objc_msgSend_initWithObjects_count_(v75, v76, v67, v12, v77, v78, v79, v80);
  free(v67);
  objc_autoreleasePoolPop(v13);

  return v81;
}

- (MPSCNNConvolutionGradientState)temporaryResultStateForCommandBuffer:(id)commandBuffer sourceImage:(MPSImage *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImage *)destinationImage
{
  v55[1] = *MEMORY[0x277D85DE8];
  v11 = objc_autoreleasePoolPush();
  v55[0] = sourceImage;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v55, 1, v13, v14, v15, v16);
  v54 = destinationImage;
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, &v54, 1, v19, v20, v21, v22);
  v29 = objc_msgSend_resourceListForSourceImages_destinationImages_(self, v24, v17, v23, v25, v26, v27, v28);
  objc_autoreleasePoolPop(v11);
  v33 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_convolution_weightsLayout_(MPSCNNConvolutionGradientState, v30, commandBuffer, v29, self, self->_weightsLayout, v31, v32);

  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v34, v33, sourceImage, sourceStates, destinationImage, v35, v36);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v37 = MEMORY[0x277CCACA8];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v46 = objc_msgSend_stringWithFormat_(v37, v40, @"created by %@", v41, v42, v43, v44, v45, v39);
    objc_msgSend_setLabel_(v33, v47, v46, v48, v49, v50, v51, v52);
  }

  return v33;
}

- (MPSCNNConvolutionGradientStateBatch)temporaryResultStateBatchForCommandBuffer:(id)commandBuffer sourceImage:(MPSImageBatch *)sourceImage sourceStates:(NSArray *)sourceStates destinationImage:(MPSImageBatch *)destinationImage
{
  v13 = objc_msgSend_count(destinationImage, a2, commandBuffer, sourceImage, sourceStates, destinationImage, v6, v7);
  v14 = objc_autoreleasePoolPush();
  v20 = objc_msgSend_resourceListForSourceImages_destinationImages_(self, v15, sourceImage, destinationImage, v16, v17, v18, v19);
  v24 = objc_msgSend_temporaryStateWithCommandBuffer_resourceList_convolution_weightsLayout_(MPSCNNConvolutionGradientState, v21, commandBuffer, v20, self, self->_weightsLayout, v22, v23);
  if (!v24)
  {
    objc_autoreleasePoolPop(v14);
    return 0;
  }

  v31 = v24;
  v32 = objc_msgSend_objectAtIndexedSubscript_(sourceImage, v25, 0, v26, v27, v28, v29, v30);
  v39 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v33, 0, v34, v35, v36, v37, v38);
  v46 = objc_msgSend_objectAtIndexedSubscript_(destinationImage, v40, 0, v41, v42, v43, v44, v45);
  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v47, v31, v32, v39, v46, v48, v49);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v50 = MEMORY[0x277CCACA8];
    v51 = objc_opt_class();
    v52 = NSStringFromClass(v51);
    v59 = objc_msgSend_stringWithFormat_(v50, v53, @"created by %@", v54, v55, v56, v57, v58, v52);
    objc_msgSend_setLabel_(v31, v60, v59, v61, v62, v63, v64, v65);
  }

  v66 = malloc_type_malloc(8 * v13, 0x80040B8603338uLL);
  v67 = v66;
  if (v13)
  {
    if (v13 < 4)
    {
      v68 = 0;
LABEL_11:
      v73 = v13 - v68;
      v74 = &v66->i64[v68];
      do
      {
        *v74++ = v31;
        --v73;
      }

      while (v73);
      goto LABEL_13;
    }

    v68 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v70 = vdupq_n_s64(v31);
    v71 = v66 + 1;
    v72 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v71[-1] = v70;
      *v71 = v70;
      v71 += 2;
      v72 -= 4;
    }

    while (v72);
    if (v13 != v68)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v75 = objc_alloc(MEMORY[0x277CBEA60]);
  v81 = objc_msgSend_initWithObjects_count_(v75, v76, v67, v13, v77, v78, v79, v80);
  free(v67);
  objc_autoreleasePoolPop(v14);

  return v81;
}

- (void)reloadWeightsAndBiasesWithDataSource:(id)dataSource
{
  if (self->_dataSource == dataSource)
  {
  }

  else
  {
    selfCopy = self;
    v10 = MTLReportFailureTypeEnabled();
    self = selfCopy;
    if (v10)
    {
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0xD64, @"Error: [MPSCNNConvolution reloadWeightsAndBiasesWithDataSource:] does not support changing the data source.\nIt has been deprecated. Please use -reloadWeightsAndBiasesFromDataSource instead.\n", v4, v5, v6, v7);
      self = selfCopy;
    }
  }

  objc_msgSend_reloadWeightsAndBiasesFromDataSource(self, a2, dataSource, v3, v4, v5, v6, v7);
}

- (void)reloadWeightsAndBiasesFromDataSource
{
  dataSource = self->_dataSource;
  if ((objc_msgSend_load(dataSource, a2, v2, v3, v4, v5, v6, v7) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    v71 = objc_opt_class();
    v76 = NSStringFromClass(v71);
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0xD6D, @"[%@ initWithDevice:convolutionDescriptor:weights:] dataSource.load should return YES", v72, v73, v74, v75);
  }

  v17 = objc_msgSend_dataType(dataSource, v10, v11, v12, v13, v14, v15, v16, v76);
  if (v17 != 8)
  {
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = objc_msgSend_lookupTableForUInt8Kernel(dataSource, v18, v19, v20, v21, v22, v23, v24);
    v26 = 0;
    v27 = 2;
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v26 = objc_msgSend_rangesForUInt8Kernel(dataSource, v28, v29, v30, v31, v32, v33, v34);
    v25 = 0;
    v27 = 0;
  }

  else
  {
LABEL_7:
    v25 = 0;
    v26 = 0;
    v27 = 0xFFFFFFFFLL;
  }

LABEL_8:
  v42 = 268435472;
  if (objc_opt_respondsToSelector())
  {
    v42 = objc_msgSend_kernelWeightsDataType(dataSource, v35, v36, v37, v38, v39, v40, v41);
  }

  self->_weightsDataType = v42;
  v43 = objc_msgSend_descriptor(dataSource, v35, v36, v37, v38, v39, v40, v41);
  if (objc_opt_respondsToSelector())
  {
    v51 = objc_msgSend_weightsLayout(dataSource, v44, v45, v46, v47, v48, v49, v50);
  }

  else
  {
    v51 = 0;
  }

  v53 = v17 == 268435488 && v42 == 268435472;
  v54 = objc_msgSend_weights(dataSource, v44, v45, v46, v47, v48, v49, v50);
  v62 = objc_msgSend_biasTerms(dataSource, v55, v56, v57, v58, v59, v60, v61);
  objc_msgSend_PrepareAndLoadData_dataType_weightsLayout_weights_biases_quantizationType_ranges_lookUpTable_convertFloat32Weights_(self, v63, v43, v17, v51, v54, v62, v27, v26, v25, v53);

  objc_msgSend_purge(dataSource, v64, v65, v66, v67, v68, v69, v70);
}

- (void)reloadWeightsAndBiasesWithCommandBuffer:(id)commandBuffer state:(MPSCNNConvolutionWeightsAndBiasesState *)state
{
  v10 = objc_msgSend_weights(state, a2, commandBuffer, state, v4, v5, v6, v7);
  v18 = objc_msgSend_biases(state, v11, v12, v13, v14, v15, v16, v17);
  v26 = objc_msgSend_weightsDataType(state, v19, v20, v21, v22, v23, v24, v25);
  v34 = objc_msgSend_weightsLayout(state, v27, v28, v29, v30, v31, v32, v33);
  v91 = objc_msgSend_weightsOffset(state, v35, v36, v37, v38, v39, v40, v41);
  v90 = objc_msgSend_biasesOffset(state, v42, v43, v44, v45, v46, v47, v48);
  outputFeatureChannels = self->_outputFeatureChannels;
  v57 = 1;
  if (v26 == 268435472)
  {
    v58 = 1;
  }

  else
  {
    v58 = 2;
  }

  if (!self->_channelMultiplier)
  {
    v57 = self->_inputFeatureChannels / self->_groups;
  }

  v59 = (self->super._kernelWidth * outputFeatureChannels * self->super._kernelHeight) << v58;
  if (v34 != self->_weightsLayout && MTLReportFailureTypeEnabled())
  {
    v87 = off_278B36DD8[self->_weightsLayout];
    v88 = off_278B36DD8[v34];
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0xDDA, @"weights layout mismatch. Layout of convolution objct is %s while state object layout is %s", v52, v53, v54, v55);
  }

  v60 = v57 * v59;
  if (!v10 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0xDDB, @"weights to reload method cannot be nil", v52, v53, v54, v55);
  }

  objc_msgSend_length(v10, v49, v50, v51, v52, v53, v54, v55, v87, v88);
  if (objc_msgSend_length(v10, v61, v62, v63, v64, v65, v66, v67) < v60 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0xDDC, @"weights buffer should have %lu bytes of data", v71, v72, v73, v74);
  }

  if (v18)
  {
    objc_msgSend_length(v18, v68, v69, v70, v71, v72, v73, v74);
    if (objc_msgSend_length(v18, v75, v76, v77, v78, v79, v80, v81) < 4 * outputFeatureChannels)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSCNNConvolution.mm", 0xDDE, @"biases buffer should have %lu bytes of data", v83, v84, v85, v86);
      }
    }
  }

  v82 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7370]))[4];
  LOBYTE(v89) = 0;
  (*(*v82 + 160))(v82, commandBuffer, self, v10, v26, v91, v34, v18, v90, v89);

  MPSDecrementReadCount(&state->super);
}

- (MPSCNNConvolutionWeightsAndBiasesState)exportWeightsAndBiasesWithCommandBuffer:(id)commandBuffer resultStateCanBeTemporary:(BOOL)resultStateCanBeTemporary
{
  weightsLayout = self->_weightsLayout;
  v11 = objc_autoreleasePoolPush();
  if (self->_channelMultiplier)
  {
    v12 = off_278B10ED0;
  }

  else
  {
    v12 = off_278B10E40;
  }

  v16 = objc_msgSend_cnnConvolutionDescriptorWithKernelWidth_kernelHeight_inputFeatureChannels_outputFeatureChannels_(*v12, v8, self->super._kernelWidth, self->super._kernelHeight, self->_inputFeatureChannels, self->_outputFeatureChannels, v9, v10);
  *(v16 + 64) = self->_groups;
  if (resultStateCanBeTemporary)
  {
    v17 = objc_msgSend_temporaryCNNConvolutionWeightsAndBiasesStateWithCommandBuffer_cnnConvolutionDescriptor_weightsDataType_weightsLayout_(MPSCNNConvolutionWeightsAndBiasesState, v13, commandBuffer, v16, 268435488, weightsLayout, v14, v15);
    v18 = v17;
  }

  else
  {
    v19 = [MPSCNNConvolutionWeightsAndBiasesState alloc];
    v17 = objc_msgSend_initWithDevice_cnnConvolutionDescriptor_weightsDataType_weightsLayout_(v19, v20, (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v16, 268435488, weightsLayout, v21, v22);
  }

  objc_autoreleasePoolPop(v11);
  v23 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7370]))[4];
  v31 = objc_msgSend_weights(v17, v24, v25, v26, v27, v28, v29, v30);
  v39 = objc_msgSend_weightsOffset(v17, v32, v33, v34, v35, v36, v37, v38);
  v47 = objc_msgSend_biases(v17, v40, v41, v42, v43, v44, v45, v46);
  v55 = objc_msgSend_biasesOffset(v17, v48, v49, v50, v51, v52, v53, v54);
  (*(*v23 + 160))(v23, commandBuffer, self, v31, 268435488, v39, weightsLayout, v47, v55, 1);

  return v17;
}

@end