@interface MPSRNNMatrixTrainingLayer
- (MPSRNNMatrixTrainingLayer)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSRNNMatrixTrainingLayer)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSRNNMatrixTrainingLayer)initWithDevice:(id)device rnnDescriptor:(const MPSRNNDescriptor *)rnnDescriptor trainableWeights:(NSMutableArray *)trainableWeights;
- (id)recurrentStateForBatchSize:(unint64_t)size forGradientPass:(BOOL)pass;
- (id)temporaryRecurrentStateForCommandBuffer:(id)buffer batchSize:(unint64_t)size forGradientPass:(BOOL)pass;
- (void)createWeightMatrices:(NSMutableArray *)matricesOut;
- (void)dealloc;
- (void)encodeCopyWeightsToCommandBuffer:(id)commandBuffer weights:(NSArray *)weights matrixId:(MPSRNNMatrixId)matrixId matrix:(MPSMatrix *)matrix copyFromWeightsToMatrix:(BOOL)copyFromWeightsToMatrix matrixOffset:(MTLOrigin *)matrixOffset;
- (void)encodeForwardSequenceToCommandBuffer:(id)commandBuffer sourceMatrices:(NSArray *)sourceMatrices sourceOffsets:(NSUInteger *)sourceOffsets destinationMatrices:(NSArray *)destinationMatrices destinationOffsets:(NSUInteger *)destinationOffsets trainingStates:(NSMutableArray *)trainingStates recurrentInputState:(MPSRNNRecurrentMatrixState *)recurrentInputState recurrentOutputStates:(NSMutableArray *)recurrentOutputStates weights:(NSArray *)weights;
- (void)encodeGradientSequenceToCommandBuffer:(id)commandBuffer forwardSources:(NSArray *)forwardSources forwardSourceOffsets:(NSUInteger *)forwardSourceOffsets sourceGradients:(NSArray *)sourceGradients sourceGradientOffsets:(NSUInteger *)sourceGradientOffsets destinationGradients:(NSArray *)destinationGradients destinationOffsets:(NSUInteger *)destinationOffsets weightGradients:(NSArray *)weightGradients trainingStates:(NSArray *)trainingStates recurrentInputState:(MPSRNNRecurrentMatrixState *)recurrentInputState recurrentOutputStates:(NSMutableArray *)recurrentOutputStates weights:(NSArray *)weights;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSRNNMatrixTrainingLayer

- (MPSRNNMatrixTrainingLayer)initWithDevice:(id)device rnnDescriptor:(const MPSRNNDescriptor *)rnnDescriptor trainableWeights:(NSMutableArray *)trainableWeights
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (rnnDescriptor)
    {
      if (device)
      {
        objc_msgSend_inputFeatureChannels(rnnDescriptor, a2, device, rnnDescriptor, trainableWeights, v5, v6, v7);
        if (objc_msgSend_inputFeatureChannels(rnnDescriptor, v12, v13, v14, v15, v16, v17, v18))
        {
          objc_msgSend_outputFeatureChannels(rnnDescriptor, v19, v20, v21, v22, v23, v24, v25);
          if (objc_msgSend_outputFeatureChannels(rnnDescriptor, v26, v27, v28, v29, v30, v31, v32))
          {
            goto LABEL_6;
          }

          if (MTLReportFailureTypeEnabled())
          {
            v72 = objc_opt_class();
            NSStringFromClass(v72);
            v68 = @"[%@ initWithDevice:rnnDescriptor:] outputFeatureChannels has to be larger than zero";
            v69 = 13439;
            goto LABEL_24;
          }

LABEL_25:

          return 0;
        }

        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_25;
        }

        v71 = objc_opt_class();
        NSStringFromClass(v71);
        v68 = @"[%@ initWithDevice:rnnDescriptor:] rnnDescriptor.inputFeatureChannels has to be larger than zero";
        v69 = 13438;
      }

      else
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_25;
        }

        v70 = objc_opt_class();
        NSStringFromClass(v70);
        v68 = @"[%@ initWithDevice:rnnDescriptors:] device may not be nil";
        v69 = 13437;
      }
    }

    else
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_25;
      }

      v63 = objc_opt_class();
      NSStringFromClass(v63);
      v68 = @"[%@ initWithDevice:rnnDescriptor:] rnnDescriptor may not be nil";
      v69 = 13436;
    }

LABEL_24:
    MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", v69, v68, v64, v65, v66, v67);
    goto LABEL_25;
  }

LABEL_6:
  v73.receiver = self;
  v73.super_class = MPSRNNMatrixTrainingLayer;
  v40 = [(MPSKernel *)&v73 initWithDevice:device];
  if (v40)
  {
    v40->_inputFeatureChannels = objc_msgSend_inputFeatureChannels(rnnDescriptor, v33, v34, v35, v36, v37, v38, v39);
    v40->_outputFeatureChannels = objc_msgSend_outputFeatureChannels(rnnDescriptor, v41, v42, v43, v44, v45, v46, v47);
    v40->_storeAllIntermediateStates = 0;
    v40->_recurrentOutputIsTemporary = 0;
    v40->_trainingStateIsTemporary = 0;
    v40->_accumulateWeightGradients = 0;
    v40->_propagateFullRecurrentRows = 0;
    v40->layer = 0;
    v40->layerType = 0;
    v40->weightDescriptors = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = sub_239BC268C(device, rnnDescriptor, trainableWeights, v40->weightDescriptors);
      v49 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = sub_239BC2B08(device, rnnDescriptor, trainableWeights, v40->weightDescriptors);
        v49 = 2;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_14:
          v50 = objc_alloc(MEMORY[0x277CD75E0]);
          v40->gemmKernel = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v50, v51, device, 0, 1, 4, 4, 4, 1.0, 1.0);
          v52 = objc_alloc(MEMORY[0x277CD75E0]);
          v40->gemmKernelNonTranspose = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v52, v53, device, 0, 0, 4, 4, 4, 1.0, 1.0);
          v54 = objc_alloc(MEMORY[0x277CD75E0]);
          v40->gemmKernel_noAccumulate = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v54, v55, device, 0, 1, 4, 4, 4, 1.0, 0.0);
          v56 = objc_alloc(MEMORY[0x277CD75E0]);
          v40->gemmKernelNonTranspose_noAccumulate = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v56, v57, device, 0, 0, 4, 4, 4, 1.0, 0.0);
          v58 = objc_alloc(MEMORY[0x277CD75E0]);
          v40->gemmKernelTN = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v58, v59, device, 1, 0, 4, 4, 4, 1.0, 0.0);
          v60 = objc_alloc(MEMORY[0x277CD75E0]);
          v40->gemmKernelTN_accumulate = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v60, v61, device, 1, 0, 4, 4, 4, 1.0, 1.0);
          return v40;
        }

        v48 = sub_239BC3D2C(device, rnnDescriptor, trainableWeights, v40->weightDescriptors);
        v49 = 1;
      }
    }

    v40->layer = v48;
    v40->layerType = v49;
    goto LABEL_14;
  }

  return v40;
}

- (void)dealloc
{
  layer = self->layer;
  layerType = self->layerType;
  if (layerType == 2)
  {
    if (layer)
    {

      v8 = layer[11];
      if (v8)
      {
        free(v8);
      }

      v7 = layer[48];
      goto LABEL_15;
    }
  }

  else if (layerType == 1)
  {
    sub_239BC4B70(self->layer);
  }

  else
  {
    if (layerType)
    {
      v5 = 1;
    }

    else
    {
      v5 = layer == 0;
    }

    if (!v5)
    {

      v6 = layer[11];
      if (v6)
      {
        free(v6);
      }

      v7 = layer[13];
LABEL_15:

      free(layer);
    }
  }

  v9.receiver = self;
  v9.super_class = MPSRNNMatrixTrainingLayer;
  [(MPSKernel *)&v9 dealloc];
}

- (MPSRNNMatrixTrainingLayer)copyWithZone:(NSZone *)zone device:(id)device
{
  v69.receiver = self;
  v69.super_class = MPSRNNMatrixTrainingLayer;
  v7 = [MPSKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v8 = v7;
  if (v7)
  {
    v7->_inputFeatureChannels = self->_inputFeatureChannels;
    v7->_outputFeatureChannels = self->_outputFeatureChannels;
    v7->_recurrentOutputIsTemporary = self->_recurrentOutputIsTemporary;
    v7->_trainingStateIsTemporary = self->_trainingStateIsTemporary;
    v7->_storeAllIntermediateStates = self->_storeAllIntermediateStates;
    v7->_accumulateWeightGradients = self->_accumulateWeightGradients;
    v7->layer = 0;
    v7->weightDescriptors = objc_alloc_init(MEMORY[0x277CBEB18]);
    layer = self->layer;
    if (!layer)
    {
LABEL_63:
      v8->gemmKernel = objc_msgSend_copyWithZone_device_(self->gemmKernel, v9, zone, device, v10, v11, v12, v13);
      v8->gemmKernelNonTranspose = objc_msgSend_copyWithZone_device_(self->gemmKernelNonTranspose, v43, zone, device, v44, v45, v46, v47);
      v8->gemmKernel_noAccumulate = objc_msgSend_copyWithZone_device_(self->gemmKernel_noAccumulate, v48, zone, device, v49, v50, v51, v52);
      v8->gemmKernelNonTranspose_noAccumulate = objc_msgSend_copyWithZone_device_(self->gemmKernelNonTranspose_noAccumulate, v53, zone, device, v54, v55, v56, v57);
      v8->gemmKernelTN = objc_msgSend_copyWithZone_device_(self->gemmKernelTN, v58, zone, device, v59, v60, v61, v62);
      v8->gemmKernelTN_accumulate = objc_msgSend_copyWithZone_device_(self->gemmKernelTN_accumulate, v63, zone, device, v64, v65, v66, v67);
      return v8;
    }

    layerType = self->layerType;
    v8->layerType = layerType;
    if (layerType == 2)
    {
      v16 = sub_239BC5264(device, layer, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
    }

    else if (layerType == 1)
    {
      v16 = sub_239BC547C(device, layer, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
    }

    else
    {
      if (layerType)
      {
        goto LABEL_10;
      }

      v16 = sub_239BC5130(device, layer, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
    }

    v8->layer = v16;
    layerType = self->layerType;
LABEL_10:
    weightDescriptors = v8->weightDescriptors;
    v18 = objc_autoreleasePoolPush();
    if (layerType)
    {
      goto LABEL_62;
    }

    v24 = 0;
    v25 = layer[11];
    v26 = *v25;
    v27 = v18;
    if (v26 > 268435487)
    {
      if (v26 != 536870920 && v26 != 268435488)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (!v26)
      {
        goto LABEL_32;
      }

      if (v26 != 268435472)
      {
LABEL_31:
        objc_msgSend_addObject_(weightDescriptors, v19, v24, v20, v21, v26, v22, v23);
        v25 = layer[11];
LABEL_32:
        v33 = 0;
        v34 = v25[8];
        if (v34 > 268435487)
        {
          if (v34 != 536870920 && v34 != 268435488)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (!v34)
          {
LABEL_47:
            v38 = 0;
            v39 = v25[4];
            if (v39 > 268435487)
            {
              if (v39 != 536870920 && v39 != 268435488)
              {
                goto LABEL_61;
              }

              goto LABEL_56;
            }

            v18 = v27;
            if (v39)
            {
              if (v39 != 268435472)
              {
LABEL_61:
                objc_msgSend_addObject_(weightDescriptors, v19, v38, v20, v21, v39, v22, v23);
                v18 = v27;
                goto LABEL_62;
              }

LABEL_56:
              v41 = v39 >> 3;
              v42 = 16;
              if (v41 == 2)
              {
                v42 = 8;
              }

              if (v41 == 4)
              {
                v42 = 4;
              }

              v38 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v19, layer[5], layer[4], ((v42 + layer[4] - 1) & -v42) * v41, v39, v22, v23);
              goto LABEL_61;
            }

LABEL_62:
            objc_autoreleasePoolPop(v18);
            goto LABEL_63;
          }

          if (v34 != 268435472)
          {
LABEL_46:
            objc_msgSend_addObject_(weightDescriptors, v19, v33, v20, v21, v34, v22, v23);
            v25 = layer[11];
            goto LABEL_47;
          }
        }

        v36 = v34 >> 3;
        v37 = 16;
        if (v36 == 2)
        {
          v37 = 8;
        }

        if (v36 == 4)
        {
          v37 = 4;
        }

        v33 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v19, 1, layer[5], ((v37 + layer[5] - 1) & -v37) * v36, v34, v22, v23);
        goto LABEL_46;
      }
    }

    if (v26 == 268435472)
    {
      v29 = layer[4];
    }

    else
    {
      v29 = layer[5];
    }

    if (v26 == 268435472)
    {
      v30 = layer[5];
    }

    else
    {
      v30 = layer[4];
    }

    v31 = v26 >> 3;
    v32 = 16;
    if (v31 == 2)
    {
      v32 = 8;
    }

    if (v31 == 4)
    {
      v32 = 4;
    }

    v24 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v19, v29, v30, ((v32 + v30 - 1) & -v32) * v31, v26, v22, v23);
    goto LABEL_31;
  }

  return v8;
}

- (MPSRNNMatrixTrainingLayer)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v59.receiver = self;
  v59.super_class = MPSRNNMatrixTrainingLayer;
  v6 = [MPSKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (!v6)
  {
    return v13;
  }

  if (*(&v6->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v34 = objc_opt_class();
      NSStringFromClass(v34);
      v39 = @"[%@ initWithCoder:device:] Failed: unsupported file version.";
      v40 = 1;
      v41 = 13590;
LABEL_14:
      MTLReportFailure(v40, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", v41, v39, v35, v36, v37, v38);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v6->_inputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"kMPSRNNLayer._inputFeatureChannels", v8, v9, v10, v11, v12);
  v13->_outputFeatureChannels = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"kMPSRNNLayer._outputFeatureChannels", v15, v16, v17, v18, v19);
  v13->_recurrentOutputIsTemporary = objc_msgSend_decodeBoolForKey_(aDecoder, v20, @"kMPSRNNLayer._recurrentOutputIsTemporary", v21, v22, v23, v24, v25);
  v13->weightDescriptors = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13->layer = 0;
  v58 = 0;
  v57 = 0;
  v30 = sub_239BCD898(aDecoder, @"kMPSRNNLayer.layerTypes", &v58, &v57, v26, v27, v28, v29);
  if (v58 != 1 || !v57)
  {
    if ((MTLReportFailureTypeEnabled() & 1) == 0)
    {
      goto LABEL_15;
    }

    v42 = 13610;
    goto LABEL_13;
  }

  v31 = *v30;
  v13->layerType = *v30;
  if (v31 >= 3)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v42 = 13615;
LABEL_13:
      v43 = objc_opt_class();
      NSStringFromClass(v43);
      v39 = @"[%@ initWithCoder:device] Problem decoding layer stack";
      v40 = 0;
      v41 = v42;
      goto LABEL_14;
    }

LABEL_15:

    return 0;
  }

  v32 = v30;
  if (v31 == 2)
  {
    v33 = sub_239BC5F54(aDecoder, device, 0, &v57);
  }

  else if (v31 == 1)
  {
    v33 = sub_239BC6254(aDecoder, device, 0, &v57);
  }

  else
  {
    v33 = sub_239BC5CBC(aDecoder, device, 0, &v57);
  }

  v13->layer = v33;
  free(v32);
  v44 = objc_alloc(MEMORY[0x277CD75E0]);
  v13->gemmKernel = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v44, v45, device, 0, 1, 4, 4, 4, 1.0, 1.0);
  v46 = objc_alloc(MEMORY[0x277CD75E0]);
  v13->gemmKernelNonTranspose = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v46, v47, device, 0, 0, 4, 4, 4, 1.0, 1.0);
  v48 = objc_alloc(MEMORY[0x277CD75E0]);
  v13->gemmKernel_noAccumulate = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v48, v49, device, 0, 1, 4, 4, 4, 1.0, 0.0);
  v50 = objc_alloc(MEMORY[0x277CD75E0]);
  v13->gemmKernelNonTranspose_noAccumulate = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v50, v51, device, 0, 0, 4, 4, 4, 1.0, 0.0);
  v52 = objc_alloc(MEMORY[0x277CD75E0]);
  v13->gemmKernelTN = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v52, v53, device, 1, 0, 4, 4, 4, 1.0, 0.0);
  v54 = objc_alloc(MEMORY[0x277CD75E0]);
  v13->gemmKernelTN_accumulate = objc_msgSend_initWithDevice_transposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta_(v54, v55, device, 1, 0, 4, 4, 4, 1.0, 1.0);
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v38.receiver = self;
  v38.super_class = MPSRNNMatrixTrainingLayer;
  [(MPSKernel *)&v38 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_inputFeatureChannels, @"kMPSRNNLayer._inputFeatureChannels", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_outputFeatureChannels, @"kMPSRNNLayer._outputFeatureChannels", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coder, v15, 1, @"kMPSRNNLayer._numberOfLayers", v16, v17, v18, v19);
  objc_msgSend_encodeBool_forKey_(coder, v20, self->_recurrentOutputIsTemporary, @"kMPSRNNLayer._recurrentOutputIsTemporary", v21, v22, v23, v24);
  v25 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  if (!v25)
  {
    v32 = MTLReportFailureTypeEnabled();
    v25 = 0;
    if (v32)
    {
      v33 = objc_opt_class();
      NSStringFromClass(v33);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x3561, @"[%@ encodeWithCoder:] Problem allocating internal data", v34, v35, v36, v37);
      v25 = 0;
    }
  }

  *v25 = self->layerType;
  v30 = v25;
  sub_239BCD9D8(coder, v25, @"kMPSRNNLayer.layerTypes", 1, v26, v27, v28, v29);
  free(v30);
  layerType = self->layerType;
  switch(layerType)
  {
    case 2:
      sub_239BC6D40(coder, self->layer, 0);
      break;
    case 1:
      sub_239BC6FA4(coder, self->layer, 0);
      break;
    case 0:
      sub_239BC6BE0(coder, self->layer, 0);
      break;
  }
}

- (void)createWeightMatrices:(NSMutableArray *)matricesOut
{
  v10 = objc_msgSend_count(self->weightDescriptors, a2, matricesOut, v3, v4, v5, v6, v7);
  context = objc_autoreleasePoolPush();
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(self->weightDescriptors, v11, i, v12, v13, v14, v15, v16);
      v19 = *MEMORY[0x277CD7350];
      v20 = (*(&self->super.super.isa + v19))[2];
      v28 = objc_msgSend_rowBytes(v18, v21, v22, v23, v24, v25, v26, v27);
      v36 = objc_msgSend_rows(v18, v29, v30, v31, v32, v33, v34, v35) * v28;
      v37 = (*(**(&self->super.super.isa + v19) + 24))(*(&self->super.super.isa + v19));
      v50 = objc_msgSend_newBufferWithLength_options_(v20, v38, v36, 16 * v37, v39, v40, v41, v42);
      if (!v50 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x35C7, @"Out of memory in MPSRNNMatrixTrainingLayer:createWeightMatrices", v46, v47, v48, v49);
      }

      v51 = objc_msgSend_contents(v50, v43, v44, v45, v46, v47, v48, v49);
      v59 = objc_msgSend_length(v50, v52, v53, v54, v55, v56, v57, v58);
      bzero(v51, v59);
      v60 = objc_alloc(MEMORY[0x277CD7250]);
      v66 = objc_msgSend_initWithBuffer_descriptor_(v60, v61, v50, v18, v62, v63, v64, v65);

      objc_msgSend_addObject_(matricesOut, v67, v66, v68, v69, v70, v71, v72);
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)encodeCopyWeightsToCommandBuffer:(id)commandBuffer weights:(NSArray *)weights matrixId:(MPSRNNMatrixId)matrixId matrix:(MPSMatrix *)matrix copyFromWeightsToMatrix:(BOOL)copyFromWeightsToMatrix matrixOffset:(MTLOrigin *)matrixOffset
{
  v634 = copyFromWeightsToMatrix;
  v649 = *MEMORY[0x277D85DE8];
  v10 = objc_alloc(MEMORY[0x277CD7210]);
  v644 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v10, v11, commandBuffer, 0, v12, v13, v14, v15);
  v638 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v638) & 0x18) != 0)
  {
    v17 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v17 || (v23 = objc_opt_class(), v24 = NSStringFromClass(v23), objc_msgSend_setLabel_(self, v25, v24, v26, v27, v28, v29, v30), (v17 = v24) != 0))
    {
      objc_msgSend_setLabel_(v644, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  layerType = self->layerType;
  layer = self->layer;
  v31 = layer[7];
  if ((*(&self->super.super.isa + v638) & 1) == 0)
  {
    objc_msgSend_count(weights, v16, v17, v18, v19, v20, v21, v22);
    if (!objc_msgSend_count(weights, v32, v33, v34, v35, v36, v37, v38) && MTLReportFailureTypeEnabled())
    {
      v528 = objc_opt_class();
      v624 = NSStringFromClass(v528);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x35E7, @"[%@ encode...] Error: empty set of weights in encodeCopyWeightsToCommandBuffer:\n", v529, v530, v531, v532);
    }

    if (!*(layer[11] + 16 * matrixId) && MTLReportFailureTypeEnabled())
    {
      v533 = objc_opt_class();
      v624 = NSStringFromClass(v533);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x35EA, @"[%@ encode...] Error: matrix Id not found on this layer.\n", v534, v535, v536, v537);
    }
  }

  selfCopy = self;
  v39 = layerType;
  if (layerType)
  {
    if (layerType == 1)
    {
      if ((*(&self->super.super.isa + v638) & 1) == 0)
      {
        if (matrixId - 29 <= 0xFFFFFFFFFFFFFFF5 && MTLReportFailureTypeEnabled())
        {
          v553 = objc_opt_class();
          v624 = NSStringFromClass(v553);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x36E5, @"[%@ encode...] Error: Invalid matrix Id for GRU\n", v554, v555, v556, v557);
        }

        objc_msgSend_dataType(matrix, v16, v17, v18, v19, v20, v21, v22, v624);
        if (objc_msgSend_dataType(matrix, v258, v259, v260, v261, v262, v263, v264) != *(layer[11] + 16 * matrixId) && MTLReportFailureTypeEnabled())
        {
          v563 = objc_opt_class();
          v627 = NSStringFromClass(v563);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x36E8, @"[%@ encode...] Error: Datatype conversions in encodeCopyWeightsToCommandBuffer: not supported yet\n", v564, v565, v566, v567);
        }

        objc_msgSend_dataType(matrix, v265, v266, v267, v268, v269, v270, v271, v627);
        if (objc_msgSend_dataType(matrix, v272, v273, v274, v275, v276, v277, v278) != 268435488 && MTLReportFailureTypeEnabled())
        {
          v573 = objc_opt_class();
          v624 = NSStringFromClass(v573);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x36EC, @"[%@ encode...] Error: only MPSDataTypeFloat32 supported currently\n", v574, v575, v576, v577);
        }
      }

      v279 = objc_msgSend_dataType(matrix, v16, v17, v18, v19, v20, v21, v22, v624);
      v280 = layer[11] + 16 * matrixId;
      if (v279 == *v280)
      {
        v281 = *(v280 + 8);
        objc_msgSend_count(weights, v16, v17, v18, v19, v20, v21, v22);
        if (v281 >= objc_msgSend_count(weights, v282, v283, v284, v285, v286, v287, v288) && MTLReportFailureTypeEnabled())
        {
          v583 = objc_opt_class();
          v624 = NSStringFromClass(v583);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x36F4, @"[%@ encode...] Error: Invalid set of weights in encodeCopyWeightsToCommandBuffer:\n", v584, v585, v586, v587);
        }

        if (v281 < objc_msgSend_count(weights, v289, v290, v291, v292, v293, v294, v295, v624))
        {
          v296 = objc_msgSend_objectAtIndexedSubscript_(weights, v16, v281, v18, v19, v20, v21, v22);
          v304 = objc_msgSend_rowBytes(matrix, v297, v298, v299, v300, v301, v302, v303);
          x = matrixOffset->x;
          v313 = objc_msgSend_dataType(matrix, v306, v307, v308, v309, v310, v311, v312);
          y = matrixOffset->y;
          objc_msgSend_rowBytes(v296, v315, v316, v317, v318, v319, v320, v321);
          objc_msgSend_dataType(matrix, v322, v323, v324, v325, v326, v327, v328);
          if (v634)
          {
            v336 = v296;
          }

          else
          {
            v336 = matrix;
          }

          v641 = v336;
          if (v634)
          {
            v337 = matrix;
          }

          else
          {
            v337 = v296;
          }

          if (v634)
          {
            v338 = 0;
          }

          else
          {
            v338 = x * v304 + y * (v313 >> 3);
          }

          if (v634)
          {
            v339 = x * v304 + y * (v313 >> 3);
          }

          else
          {
            v339 = 0;
          }

          if (matrixId <= MPSRNNMatrixIdGRUOutputGateBiasTerms && ((1 << matrixId) & 0x11200000) != 0)
          {
            v31 = 1;
          }

          v340 = objc_msgSend_rows(v336, v329, v330, v331, v332, v333, v334, v335);
          v348 = objc_msgSend_rows(v337, v341, v342, v343, v344, v345, v346, v347);
          if (v31 >= v340)
          {
            v356 = v340;
          }

          else
          {
            v356 = v31;
          }

          if (v356 >= v348)
          {
            v357 = v348;
          }

          else
          {
            v357 = v356;
          }

          v358 = objc_msgSend_columns(v641, v349, v350, v351, v352, v353, v354, v355);
          v366 = objc_msgSend_columns(v337, v359, v360, v361, v362, v363, v364, v365);
          if (v358 >= v366)
          {
            v374 = v366;
          }

          else
          {
            v374 = v358;
          }

          v375 = objc_msgSend_rowBytes(v641, v367, v368, v369, v370, v371, v372, v373);
          v383 = objc_msgSend_rowBytes(v337, v376, v377, v378, v379, v380, v381, v382);
          if (v375 == v383)
          {
            v384 = objc_msgSend_data(v337, v16, v17, v18, v19, v20, v21, v22);
            v392 = objc_msgSend_data(v641, v385, v386, v387, v388, v389, v390, v391);
            sub_239BCA7FC(v384, v392, v375 * v357, v644, *(&selfCopy->super.super.isa + *MEMORY[0x277CD7370]), v339, v338);
          }

          else if (v357)
          {
            v393 = MEMORY[0x277CD7370];
            do
            {
              v394 = objc_msgSend_data(v337, v16, v17, v18, v19, v20, v21, v22);
              v402 = objc_msgSend_data(v641, v395, v396, v397, v398, v399, v400, v401);
              v410 = objc_msgSend_dataType(matrix, v403, v404, v405, v406, v407, v408, v409);
              sub_239BCA7FC(v394, v402, v374 * (v410 >> 3), v644, *(&selfCopy->super.super.isa + *v393), v339, v338);
              v338 += v375;
              v339 += v383;
              --v357;
            }

            while (v357);
          }
        }
      }

      goto LABEL_150;
    }

    goto LABEL_10;
  }

  if ((*(&self->super.super.isa + v638) & 1) == 0)
  {
    if (matrixId >= MPSRNNMatrixIdLSTMInputGateInputWeights && MTLReportFailureTypeEnabled())
    {
      v89 = objc_opt_class();
      v624 = NSStringFromClass(v89);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x35F5, @"[%@ encode...] Error: Invalid matrix Id for single gate\n", v90, v91, v92, v93);
    }

    objc_msgSend_dataType(matrix, v16, v17, v18, v19, v20, v21, v22, v624);
    if (objc_msgSend_dataType(matrix, v94, v95, v96, v97, v98, v99, v100) != *(layer[11] + 16 * matrixId) && MTLReportFailureTypeEnabled())
    {
      v538 = objc_opt_class();
      v626 = NSStringFromClass(v538);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x35F8, @"[%@ encode...] Error: Datatype conversions in encodeCopyWeightsToCommandBuffer: not supported yet\n", v539, v540, v541, v542);
    }

    objc_msgSend_dataType(matrix, v101, v102, v103, v104, v105, v106, v107, v626);
    if (objc_msgSend_dataType(matrix, v108, v109, v110, v111, v112, v113, v114) != 268435488 && MTLReportFailureTypeEnabled())
    {
      v543 = objc_opt_class();
      v624 = NSStringFromClass(v543);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x35FC, @"[%@ encode...] Error: only MPSDataTypeFloat32 supported currently\n", v544, v545, v546, v547);
    }
  }

  v115 = objc_msgSend_dataType(matrix, v16, v17, v18, v19, v20, v21, v22, v624);
  v116 = layer[11];
  if (v115 != v116[4 * matrixId])
  {
    goto LABEL_150;
  }

  v646 = 0;
  v647 = 0;
  v648 = 0;
  if (*v116)
  {
    v646 = objc_msgSend_objectAtIndexedSubscript_(weights, v16, 0, v18, v19, v20, v21, v22);
    v116 = layer[11];
    v117 = 1;
    if (!v116[8])
    {
      goto LABEL_29;
    }
  }

  else
  {
    v117 = 0;
    if (!v116[8])
    {
LABEL_29:
      if (!v116[4])
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  v118 = objc_msgSend_objectAtIndexedSubscript_(weights, v16, v117++, v18, v19, v20, v21, v22);
  v648 = v118;
  if (*(layer[11] + 16))
  {
LABEL_33:
    v647 = objc_msgSend_objectAtIndexedSubscript_(weights, v16, v117, v18, v19, v20, v21, v22);
  }

LABEL_34:
  v119 = *(&v646 + matrixId);
  v120 = matrix;
  v121 = objc_msgSend_rowBytes(matrix, v16, v17, v18, v19, v20, v21, v22);
  v122 = matrixOffset->x;
  v137 = v122 * v121 + matrixOffset->y * (objc_msgSend_dataType(matrix, v123, v124, v125, v126, v127, v128, v129) >> 3);
  if (v634)
  {
    v138 = v119;
  }

  else
  {
    v138 = matrix;
  }

  if (v634)
  {
    v139 = 0;
  }

  else
  {
    v120 = v119;
    v139 = v137;
  }

  if (v634)
  {
    v140 = v137;
  }

  else
  {
    v140 = 0;
  }

  if (matrixId == MPSRNNMatrixIdSingleGateBiasTerms)
  {
    v141 = 1;
  }

  else
  {
    v141 = v31;
  }

  v142 = objc_msgSend_rows(v138, v130, v131, v132, v133, v134, v135, v136);
  v150 = objc_msgSend_rows(v120, v143, v144, v145, v146, v147, v148, v149);
  if (v141 >= v142)
  {
    v158 = v142;
  }

  else
  {
    v158 = v141;
  }

  if (v158 >= v150)
  {
    v158 = v150;
  }

  v633 = v158;
  v159 = objc_msgSend_columns(v138, v151, v152, v153, v154, v155, v156, v157);
  v167 = objc_msgSend_columns(v120, v160, v161, v162, v163, v164, v165, v166);
  if (v159 >= v167)
  {
    v175 = v167;
  }

  else
  {
    v175 = v159;
  }

  v636 = v175;
  if (!v137 && (*(&selfCopy->super.super.isa + v638) & 1) == 0)
  {
    v176 = objc_msgSend_rows(v138, v168, v169, v170, v171, v172, v173, v174);
    if (v176 == objc_msgSend_rows(v120, v177, v178, v179, v180, v181, v182, v183))
    {
      objc_msgSend_columns(v138, v184, v185, v186, v187, v188, v189, v190);
      objc_msgSend_columns(v120, v191, v192, v193, v194, v195, v196, v197);
    }

    v198 = objc_msgSend_rows(v138, v184, v185, v186, v187, v188, v189, v190);
    if (v198 != objc_msgSend_rows(v120, v199, v200, v201, v202, v203, v204, v205) || (v213 = objc_msgSend_columns(v138, v206, v207, v208, v209, v210, v211, v212), v213 != objc_msgSend_columns(v120, v214, v215, v216, v217, v218, v219, v220)))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v588 = objc_opt_class();
        v589 = NSStringFromClass(v588);
        v597 = objc_msgSend_rows(v138, v590, v591, v592, v593, v594, v595, v596);
        v605 = objc_msgSend_columns(v138, v598, v599, v600, v601, v602, v603, v604);
        v630 = objc_msgSend_rows(v120, v606, v607, v608, v609, v610, v611, v612);
        v631 = objc_msgSend_columns(v120, v613, v614, v615, v616, v617, v618, v619);
        v628 = v597;
        v629 = v605;
        v624 = v589;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x362A, @"[%@ encode...] Error: source size is (%lu, %lu) (rows, columns) - should be (%lu, %lu) \n", v620, v621, v622, v623);
      }
    }
  }

  v221 = objc_msgSend_rowBytes(v138, v168, v169, v170, v171, v172, v173, v174, v624, v628, v629, v630, v631);
  v229 = objc_msgSend_rowBytes(v120, v222, v223, v224, v225, v226, v227, v228);
  if (v221 == v229)
  {
    v230 = objc_msgSend_data(v120, v16, v17, v18, v19, v20, v21, v22);
    v238 = objc_msgSend_data(v138, v231, v232, v233, v234, v235, v236, v237);
    sub_239BCA7FC(v230, v238, v221 * v633, v644, *(&selfCopy->super.super.isa + *MEMORY[0x277CD7370]), v140, v139);
  }

  else if (v633)
  {
    v239 = MEMORY[0x277CD7370];
    v240 = v633;
    do
    {
      v241 = objc_msgSend_data(v120, v16, v17, v18, v19, v20, v21, v22);
      v249 = objc_msgSend_data(v138, v242, v243, v244, v245, v246, v247, v248);
      v257 = objc_msgSend_dataType(matrix, v250, v251, v252, v253, v254, v255, v256);
      sub_239BCA7FC(v241, v249, v636 * (v257 >> 3), v644, *(&selfCopy->super.super.isa + *v239), v140, v139);
      v139 += v221;
      v140 += v229;
      --v240;
    }

    while (v240);
  }

  v31 = v633;
  v39 = 0;
LABEL_10:
  if (v39 == 2)
  {
    v40 = selfCopy->layer;
    if ((*(&selfCopy->super.super.isa + v638) & 1) == 0)
    {
      if (matrixId - 19 <= 0xFFFFFFFFFFFFFFEFLL && MTLReportFailureTypeEnabled())
      {
        v548 = objc_opt_class();
        v624 = NSStringFromClass(v548);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x365E, @"[%@ encode...] Error: Invalid matrix Id for LSTM\n", v549, v550, v551, v552);
      }

      objc_msgSend_dataType(matrix, v16, v17, v18, v19, v20, v21, v22, v624);
      if (objc_msgSend_dataType(matrix, v41, v42, v43, v44, v45, v46, v47) != *(layer[11] + 16 * matrixId) && MTLReportFailureTypeEnabled())
      {
        v558 = objc_opt_class();
        v625 = NSStringFromClass(v558);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x3661, @"[%@ encode...] Error: Datatype conversions in encodeCopyWeightsToCommandBuffer: not supported yet\n", v559, v560, v561, v562);
      }

      objc_msgSend_dataType(matrix, v48, v49, v50, v51, v52, v53, v54, v625);
      if (objc_msgSend_dataType(matrix, v55, v56, v57, v58, v59, v60, v61) != 268435488 && MTLReportFailureTypeEnabled())
      {
        v568 = objc_opt_class();
        v624 = NSStringFromClass(v568);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x3665, @"[%@ encode...] Error: only MPSDataTypeFloat32 supported currently\n", v569, v570, v571, v572);
      }
    }

    v62 = objc_msgSend_dataType(matrix, v16, v17, v18, v19, v20, v21, v22, v624);
    v63 = layer[11] + 16 * matrixId;
    if (v62 == *v63)
    {
      v64 = *(v63 + 8);
      objc_msgSend_count(weights, v16, v17, v18, v19, v20, v21, v22);
      if (v64 >= objc_msgSend_count(weights, v65, v66, v67, v68, v69, v70, v71) && MTLReportFailureTypeEnabled())
      {
        v578 = objc_opt_class();
        v624 = NSStringFromClass(v578);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x366D, @"[%@ encode...] Error: Invalid set of weights in encodeCopyWeightsToCommandBuffer:\n", v579, v580, v581, v582);
      }

      if (v64 < objc_msgSend_count(weights, v72, v73, v74, v75, v76, v77, v78, v624))
      {
        v86 = objc_msgSend_objectAtIndexedSubscript_(weights, v16, v64, v18, v19, v20, v21, v22);
        v87 = matrixId - 15;
        v632 = v31;
        if (matrixId < MPSRNNMatrixIdLSTMOutputGateInputWeights)
        {
          v87 = matrixId - 11;
          if (matrixId < MPSRNNMatrixIdLSTMMemoryGateInputWeights)
          {
            v88 = matrixId > MPSRNNMatrixIdLSTMInputGateBiasTerms;
            v411 = -3;
            if (matrixId > MPSRNNMatrixIdLSTMInputGateBiasTerms)
            {
              v411 = -7;
            }

            v87 = v411 + matrixId;
          }

          else
          {
            v88 = 2;
          }
        }

        else
        {
          v88 = 3;
        }

        v412 = 0;
        v413 = 0;
        v414 = layer[5];
        if (v87 <= 1)
        {
          if (v87)
          {
            if (v87 != 1)
            {
              v415 = 0;
              goto LABEL_125;
            }

            v415 = 0;
            v412 = v40[417];
          }

          else
          {
            v415 = 0;
            v412 = v40[416];
          }

          v418 = v414 * v88;
          if (v412)
          {
            v413 = v418;
          }

          else
          {
            v413 = 0;
          }

LABEL_125:
          v419 = objc_msgSend_rowBytes(matrix, v79, v80, v81, v82, v83, v84, v85);
          v420 = matrixOffset->x;
          v428 = objc_msgSend_dataType(matrix, v421, v422, v423, v424, v425, v426, v427);
          v429 = matrixOffset->y;
          v437 = objc_msgSend_rowBytes(v86, v430, v431, v432, v433, v434, v435, v436);
          v452 = v437 * v413 + v415 * (objc_msgSend_dataType(matrix, v438, v439, v440, v441, v442, v443, v444) >> 3);
          if (v634)
          {
            v453 = v86;
          }

          else
          {
            v453 = matrix;
          }

          if (v634)
          {
            v454 = matrix;
          }

          else
          {
            v454 = v86;
          }

          if (v634)
          {
            v455 = v452;
          }

          else
          {
            v455 = v420 * v419 + v429 * (v428 >> 3);
          }

          if (v634)
          {
            v456 = v420 * v419 + v429 * (v428 >> 3);
          }

          else
          {
            v456 = v452;
          }

          v457 = v453;
          v458 = objc_msgSend_rows(v453, v445, v446, v447, v448, v449, v450, v451);
          v466 = objc_msgSend_rows(v454, v459, v460, v461, v462, v463, v464, v465);
          v474 = v632;
          if (v632 >= v458)
          {
            v474 = v458;
          }

          if (v474 >= v466)
          {
            v475 = v466;
          }

          else
          {
            v475 = v474;
          }

          v476 = objc_msgSend_columns(v457, v467, v468, v469, v470, v471, v472, v473);
          v484 = objc_msgSend_columns(v454, v477, v478, v479, v480, v481, v482, v483);
          if (v476 >= v484)
          {
            v492 = v484;
          }

          else
          {
            v492 = v476;
          }

          v493 = objc_msgSend_rowBytes(v457, v485, v486, v487, v488, v489, v490, v491);
          v501 = objc_msgSend_rowBytes(v454, v494, v495, v496, v497, v498, v499, v500);
          if (((v493 == v501) & ~v412) != 0)
          {
            v519 = objc_msgSend_data(v454, v16, v17, v18, v19, v20, v21, v22);
            v527 = objc_msgSend_data(v457, v520, v521, v522, v523, v524, v525, v526);
            sub_239BCA7FC(v519, v527, v493 * v475, v644, *(&selfCopy->super.super.isa + *MEMORY[0x277CD7370]), v456, v455);
          }

          else
          {
            for (; v475; --v475)
            {
              v502 = objc_msgSend_data(v454, v16, v17, v18, v19, v20, v21, v22);
              v510 = objc_msgSend_data(v457, v503, v504, v505, v506, v507, v508, v509);
              v518 = objc_msgSend_dataType(matrix, v511, v512, v513, v514, v515, v516, v517);
              sub_239BCA7FC(v502, v510, v492 * (v518 >> 3), v644, *(&selfCopy->super.super.isa + *MEMORY[0x277CD7370]), v456, v455);
              v455 += v493;
              v456 += v501;
            }
          }

          goto LABEL_150;
        }

        if (v87 == 2)
        {
          v413 = 0;
          v412 = 0;
          v415 = 0;
          v417 = v632;
          if (v40[418])
          {
            v417 = 1;
          }
        }

        else
        {
          v415 = 0;
          if (v87 != 3)
          {
            goto LABEL_125;
          }

          v413 = 0;
          v412 = v40[416];
          v416 = v414 * v88;
          if (v40[416])
          {
            v415 = v416;
          }

          else
          {
            v415 = 0;
          }

          v417 = 1;
        }

        v632 = v417;
        goto LABEL_125;
      }
    }
  }

LABEL_150:
  objc_msgSend_endEncoding(v644, v16, v17, v18, v19, v20, v21, v22, v624);
}

- (void)encodeForwardSequenceToCommandBuffer:(id)commandBuffer sourceMatrices:(NSArray *)sourceMatrices sourceOffsets:(NSUInteger *)sourceOffsets destinationMatrices:(NSArray *)destinationMatrices destinationOffsets:(NSUInteger *)destinationOffsets trainingStates:(NSMutableArray *)trainingStates recurrentInputState:(MPSRNNRecurrentMatrixState *)recurrentInputState recurrentOutputStates:(NSMutableArray *)recurrentOutputStates weights:(NSArray *)weights
{
  v18 = objc_alloc(MEMORY[0x277CD7210]);
  v164 = commandBuffer;
  v31 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v18, v19, commandBuffer, 0, v20, v21, v22, v23);
  v178 = v31;
  selfCopy = self;
  v32 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v32) & 0x18) != 0)
  {
    v25 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v25 || (v33 = objc_opt_class(), v34 = NSStringFromClass(v33), objc_msgSend_setLabel_(self, v35, v34, v36, v37, v38, v39, v40), (v25 = v34) != 0))
    {
      objc_msgSend_setLabel_(v31, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  v41 = objc_msgSend_count(sourceMatrices, v24, v25, v26, v27, v28, v29, v30);
  v161 = trainingStates;
  v162 = sourceOffsets;
  v163 = destinationOffsets;
  v48 = malloc_type_malloc(16 * v41, 0x80040B8603338uLL);
  v49 = &v48[v41];
  if (v41)
  {
    v50 = 0;
    for (i = objc_msgSend_objectAtIndexedSubscript_(sourceMatrices, v42, 0, v43, v44, v45, v46, v47); ; i = objc_msgSend_objectAtIndexedSubscript_(sourceMatrices, v58, v50, v60, v61, v62, v63, v64, selfCopy4, v156, v158, inputFeatureChannels))
    {
      v48[v50] = i;
      *(v49 + 8 * v50) = objc_msgSend_objectAtIndexedSubscript_(destinationMatrices, v52, v50, v53, v54, v55, v56, v57);
      if ((*(&self->super.super.isa + v32) & 1) == 0)
      {
        objc_msgSend_rows(v48[v50], v58, v59, v60, v61, v62, v63, v64);
        objc_msgSend_rows(*(v49 + 8 * v50), v65, v66, v67, v68, v69, v70, v71);
        v79 = objc_msgSend_rows(v48[v50], v72, v73, v74, v75, v76, v77, v78);
        if (v79 != objc_msgSend_rows(*(v49 + 8 * v50), v80, v81, v82, v83, v84, v85, v86) && MTLReportFailureTypeEnabled())
        {
          v127 = objc_msgSend_rows(v48[v50], v87, v88, v89, v90, v91, v92, v93);
          inputFeatureChannels = v50;
          objc_msgSend_rows(*(v49 + 8 * v50), v128, v129, v130, v131, v132, v133, v134);
          v156 = v50;
          v158 = v127;
          selfCopy4 = self;
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x3750, @"[%@ encode...] sourceMatrices[%d].rows == %d, should match destinationMatrices[%d].rows == %d", v135, v136, v137, v138);
        }

        objc_msgSend_columns(v48[v50], v87, v88, v89, v90, v91, v92, v93, selfCopy4, v156, v158);
        if (objc_msgSend_columns(v48[v50], v94, v95, v96, v97, v98, v99, v100) != self->_inputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          v159 = objc_msgSend_columns(v48[v50], v101, v102, v103, v104, v105, v106, v107);
          inputFeatureChannels = self->_inputFeatureChannels;
          selfCopy3 = self;
          v157 = v50;
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x3753, @"[%@ encode...] sourceMatrices[%d].columns == %d, should match layer input feature channels == %d", v139, v140, v141, v142);
        }

        objc_msgSend_columns(*(v49 + 8 * v50), v101, v102, v103, v104, v105, v106, v107, selfCopy3, v157, v159);
        if (objc_msgSend_columns(*(v49 + 8 * v50), v108, v109, v110, v111, v112, v113, v114) != self->_outputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          v115 = objc_msgSend_objectAtIndexedSubscript_(destinationMatrices, v58, v50, v60, v61, v62, v63, v64);
          v158 = objc_msgSend_columns(v115, v116, v117, v118, v119, v120, v121, v122);
          inputFeatureChannels = self->_outputFeatureChannels;
          selfCopy4 = self;
          v156 = v50;
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x3756, @"[%@ encode...] destinationMatrices[%d].columns == %d, should match layer output feature channels == %d", v123, v124, v125, v126);
        }
      }

      if (v41 == ++v50)
      {
        break;
      }
    }
  }

  MEMORY[0x23EE7D040](v177, v164, 0);
  layer = self->layer;
  layerType = self->layerType;
  gemmKernel = self->gemmKernel;
  gemmKernelNonTranspose = self->gemmKernelNonTranspose;
  v165[2] = v31;
  v165[3] = gemmKernel;
  gemmKernel_noAccumulate = self->gemmKernel_noAccumulate;
  v165[4] = gemmKernelNonTranspose;
  v165[5] = gemmKernel_noAccumulate;
  gemmKernelNonTranspose_noAccumulate = self->gemmKernelNonTranspose_noAccumulate;
  v165[8] = 0;
  v165[9] = v177;
  v165[6] = gemmKernelNonTranspose_noAccumulate;
  v165[7] = 0;
  v165[0] = *(&self->super.super.isa + *MEMORY[0x277CD7370]);
  v165[1] = v164;
  storeAllIntermediateStates = self->_storeAllIntermediateStates;
  propagateFullRecurrentRows = self->_propagateFullRecurrentRows;
  v169 = weights;
  v170 = v161;
  trainingStateIsTemporary = self->_trainingStateIsTemporary;
  v171 = v162;
  v172 = v163;
  v173 = 0;
  v174 = 0;
  sub_239BCAD44(v165, 1uLL, &layer, &layerType, v48, v49, v41, recurrentInputState, recurrentOutputStates, self->_recurrentOutputIsTemporary, 0);
  free(v48);
  MPSAutoCache::~MPSAutoCache(v177);
  objc_msgSend_endEncoding(v31, v147, v148, v149, v150, v151, v152, v153);
}

- (void)encodeGradientSequenceToCommandBuffer:(id)commandBuffer forwardSources:(NSArray *)forwardSources forwardSourceOffsets:(NSUInteger *)forwardSourceOffsets sourceGradients:(NSArray *)sourceGradients sourceGradientOffsets:(NSUInteger *)sourceGradientOffsets destinationGradients:(NSArray *)destinationGradients destinationOffsets:(NSUInteger *)destinationOffsets weightGradients:(NSArray *)weightGradients trainingStates:(NSArray *)trainingStates recurrentInputState:(MPSRNNRecurrentMatrixState *)recurrentInputState recurrentOutputStates:(NSMutableArray *)recurrentOutputStates weights:(NSArray *)weights
{
  v15 = weights;
  v16 = weightGradients;
  v587 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v587) & 1) == 0)
  {
    if (weightGradients)
    {
      objc_msgSend_count(weights, a2, commandBuffer, forwardSources, forwardSourceOffsets, sourceGradients, sourceGradientOffsets, destinationGradients);
      objc_msgSend_count(weightGradients, v17, v18, v19, v20, v21, v22, v23);
      v31 = objc_msgSend_count(weights, v24, v25, v26, v27, v28, v29, v30);
      if (v31 != objc_msgSend_count(weightGradients, v32, v33, v34, v35, v36, v37, v38))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v537 = objc_opt_class();
          v538 = NSStringFromClass(v537);
          v561 = objc_msgSend_count(weights, v539, v540, v541, v542, v543, v544, v545);
          v565 = objc_msgSend_count(weightGradients, v546, v547, v548, v549, v550, v551, v552);
          selfCopy6 = v538;
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x37B5, @"[%@ encode...] Error: Number of weight matrices (%lu), does not match number of weightGradient matrices (%lu)\n", v553, v554, v555, v556);
        }
      }
    }

    objc_msgSend_count(weights, a2, commandBuffer, forwardSources, forwardSourceOffsets, sourceGradients, sourceGradientOffsets, destinationGradients, selfCopy6, v561, v565);
    objc_msgSend_count(self->weightDescriptors, v39, v40, v41, v42, v43, v44, v45);
    v53 = objc_msgSend_count(weights, v46, v47, v48, v49, v50, v51, v52);
    if (v53 != objc_msgSend_count(self->weightDescriptors, v54, v55, v56, v57, v58, v59, v60) && MTLReportFailureTypeEnabled())
    {
      v517 = objc_opt_class();
      v518 = NSStringFromClass(v517);
      v562 = objc_msgSend_count(weights, v519, v520, v521, v522, v523, v524, v525);
      v566 = objc_msgSend_count(self->weightDescriptors, v526, v527, v528, v529, v530, v531, v532);
      v558 = v518;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x37B9, @"[%@ encode...] Error: Number of weight matrices (%lu), does not match number at init time (%lu)\n", v533, v534, v535, v536);
    }

    if (objc_msgSend_count(weights, v61, v62, v63, v64, v65, v66, v67, v558, v562, v566))
    {
      v74 = 0;
      do
      {
        v81 = objc_msgSend_objectAtIndexedSubscript_(v15, v68, v74, v69, v70, v71, v72, v73);
        if (v16)
        {
          v82 = objc_msgSend_objectAtIndexedSubscript_(v16, v75, v74, v76, v77, v78, v79, v80);
          v96 = objc_msgSend_objectAtIndexedSubscript_(self->weightDescriptors, v83, v74, v84, v85, v86, v87, v88);
          if (v82)
          {
            v97 = objc_msgSend_rows(v81, v89, v90, v91, v92, v93, v94, v95);
            if (v97 == objc_msgSend_rows(v82, v98, v99, v100, v101, v102, v103, v104))
            {
              objc_msgSend_columns(v81, v105, v106, v107, v108, v109, v110, v111);
              objc_msgSend_columns(v82, v112, v113, v114, v115, v116, v117, v118);
            }

            v119 = objc_msgSend_rows(v81, v105, v106, v107, v108, v109, v110, v111);
            if (v119 != objc_msgSend_rows(v82, v120, v121, v122, v123, v124, v125, v126) || (v134 = objc_msgSend_columns(v81, v127, v128, v129, v130, v131, v132, v133), v134 != objc_msgSend_columns(v82, v135, v136, v137, v138, v139, v140, v141)))
            {
              if (MTLReportFailureTypeEnabled())
              {
                v229 = objc_opt_class();
                v597 = NSStringFromClass(v229);
                v594 = objc_msgSend_rows(v81, v230, v231, v232, v233, v234, v235, v236);
                v580 = objc_msgSend_columns(v81, v237, v238, v239, v240, v241, v242, v243);
                v570 = objc_msgSend_rows(v82, v244, v245, v246, v247, v248, v249, v250);
                v571 = objc_msgSend_columns(v82, v251, v252, v253, v254, v255, v256, v257);
                v565 = v594;
                inputFeatureChannels = v580;
                selfCopy6 = v597;
                v561 = v74;
                MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x37C3, @"[%@ encode...] Error: weight matrix (%lu) dimensions (rows = %lu, columns = %lu), does not match weightGradient matrix dimensions (rows = %lu, columns = %lu)\n", v258, v259, v260, v261);
              }
            }

            v15 = weights;
          }
        }

        else
        {
          v96 = objc_msgSend_objectAtIndexedSubscript_(self->weightDescriptors, v75, v74, v76, v77, v78, v79, v80);
        }

        v142 = objc_msgSend_rows(v81, v89, v90, v91, v92, v93, v94, v95, selfCopy6, v561, v565);
        if (v142 == objc_msgSend_rows(v96, v143, v144, v145, v146, v147, v148, v149))
        {
          objc_msgSend_columns(v81, v150, v151, v152, v153, v154, v155, v156);
          objc_msgSend_columns(v96, v157, v158, v159, v160, v161, v162, v163);
        }

        v164 = objc_msgSend_rows(v81, v150, v151, v152, v153, v154, v155, v156);
        if (v164 != objc_msgSend_rows(v96, v165, v166, v167, v168, v169, v170, v171) || (v179 = objc_msgSend_columns(v81, v172, v173, v174, v175, v176, v177, v178), v179 != objc_msgSend_columns(v96, v180, v181, v182, v183, v184, v185, v186)))
        {
          if (MTLReportFailureTypeEnabled())
          {
            v194 = objc_opt_class();
            v596 = NSStringFromClass(v194);
            v202 = objc_msgSend_rows(v81, v195, v196, v197, v198, v199, v200, v201);
            v210 = objc_msgSend_columns(v81, v203, v204, v205, v206, v207, v208, v209);
            v570 = objc_msgSend_rows(v96, v211, v212, v213, v214, v215, v216, v217);
            v571 = objc_msgSend_columns(v96, v218, v219, v220, v221, v222, v223, v224);
            v567 = v202;
            inputFeatureChannels = v210;
            v15 = weights;
            v559 = v596;
            v563 = v74;
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x37C7, @"[%@ encode...] Error: weight matrix (%lu) dimensions (rows = %lu, columns = %lu), does not match init time weight matrix dimensions (rows = %lu, columns = %lu)\n", v225, v226, v227, v228);
          }
        }

        ++v74;
        v16 = weightGradients;
      }

      while (v74 < objc_msgSend_count(v15, v187, v188, v189, v190, v191, v192, v193, v559, v563, v567, inputFeatureChannels, v570, v571));
    }
  }

  v262 = objc_alloc(MEMORY[0x277CD7210]);
  v275 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v262, v263, commandBuffer, 0, v264, v265, v266, v267);
  v611 = v275;
  selfCopy = self;
  if ((*(&self->super.super.isa + v587) & 0x18) != 0)
  {
    v269 = *(&self->super.super.isa + *MEMORY[0x277CD7360]);
    if (v269 || (v276 = objc_opt_class(), v277 = NSStringFromClass(v276), objc_msgSend_setLabel_(self, v278, v277, v279, v280, v281, v282, v283), (v269 = v277) != 0))
    {
      objc_msgSend_setLabel_(v275, v268, v269, v270, v271, v272, v273, v274);
    }
  }

  v284 = objc_msgSend_count(sourceGradients, v268, v269, v270, v271, v272, v273, v274);
  v292 = objc_msgSend_count(v15, v285, v286, v287, v288, v289, v290, v291);
  v299 = malloc_type_malloc(8 * (v292 + 3 * v284), 0x80040B8603338uLL);
  v574 = v275;
  v300 = &v299[v284];
  size = 8 * v284;
  v301 = v300 + 8 * v284;
  if (v284)
  {
    v302 = 0;
    v303 = 0;
    v595 = 0;
    v598 = 0;
    for (i = objc_msgSend_objectAtIndexedSubscript_(forwardSources, v293, 0, v294, v295, v296, v297, v298, selfCopy6, v561, v565); ; i = objc_msgSend_objectAtIndexedSubscript_(forwardSources, v293, v302, v294, v295, v296, v297, v298, selfCopy6, v561, v565))
    {
      v299[v302] = i;
      *(v300 + 8 * v302) = objc_msgSend_objectAtIndexedSubscript_(sourceGradients, v305, v302, v306, v307, v308, v309, v310);
      v312 = destinationGradients;
      if (destinationGradients)
      {
        v312 = objc_msgSend_objectAtIndexedSubscript_(destinationGradients, v293, v302, v294, v295, v296, v297, v298);
      }

      *(v301 + 8 * v302) = v312;
      v313 = *MEMORY[0x277CD73A8];
      if (*(v299[v302] + v313))
      {
        v314 = v598 == 0;
      }

      else
      {
        v314 = 0;
      }

      if (v314)
      {
        v598 = malloc_type_calloc(v284, 8uLL, 0x100004000313F17uLL);
        v313 = *MEMORY[0x277CD73A8];
      }

      if (*(*(v300 + 8 * v302) + v313))
      {
        v315 = v595 == 0;
      }

      else
      {
        v315 = 0;
      }

      if (v315)
      {
        v595 = malloc_type_calloc(v284, 8uLL, 0x100004000313F17uLL);
      }

      v316 = *(v301 + 8 * v302);
      if (v316)
      {
        if (*(v316 + *MEMORY[0x277CD73A8]) && v303 == 0)
        {
          v303 = malloc_type_calloc(v284, 8uLL, 0x100004000313F17uLL);
        }
      }

      if ((*(&self->super.super.isa + v587) & 1) == 0)
      {
        objc_msgSend_rows(v299[v302], v293, v311, v294, v295, v296, v297, v298);
        objc_msgSend_rows(*(v300 + 8 * v302), v318, v319, v320, v321, v322, v323, v324);
        v332 = objc_msgSend_rows(v299[v302], v325, v326, v327, v328, v329, v330, v331);
        if (v332 != objc_msgSend_rows(*(v300 + 8 * v302), v333, v334, v335, v336, v337, v338, v339) && MTLReportFailureTypeEnabled())
        {
          v410 = objc_msgSend_rows(v299[v302], v340, v341, v342, v343, v344, v345, v346);
          inputFeatureChannels = v302;
          v570 = objc_msgSend_rows(*(v300 + 8 * v302), v411, v412, v413, v414, v415, v416, v417);
          v561 = v302;
          v565 = v410;
          selfCopy6 = self;
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x37F1, @"[%@ encode...] forwardSources[%d].rows == %d, should match sourceGradients[%d].rows == %d", v418, v419, v420, v421);
        }

        objc_msgSend_columns(v299[v302], v340, v341, v342, v343, v344, v345, v346, selfCopy6, v561, v565, inputFeatureChannels, v570);
        if (objc_msgSend_columns(v299[v302], v347, v348, v349, v350, v351, v352, v353) != self->_inputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          v568 = objc_msgSend_columns(v299[v302], v354, v355, v356, v357, v358, v359, v360);
          inputFeatureChannels = self->_inputFeatureChannels;
          selfCopy3 = self;
          v564 = v302;
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x37F4, @"[%@ encode...] forwardSources[%d].columns == %d, should match layer input feature channels == %d", v422, v423, v424, v425);
        }

        objc_msgSend_columns(*(v300 + 8 * v302), v354, v355, v356, v357, v358, v359, v360, selfCopy3, v564, v568);
        if (objc_msgSend_columns(*(v300 + 8 * v302), v361, v362, v363, v364, v365, v366, v367) != self->_outputFeatureChannels && MTLReportFailureTypeEnabled())
        {
          v565 = objc_msgSend_columns(*(v300 + 8 * v302), v293, v368, v294, v295, v296, v297, v298);
          inputFeatureChannels = self->_outputFeatureChannels;
          selfCopy6 = self;
          v561 = v302;
          MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x37F7, @"[%@ encode...] sourceGradients[%d].columns == %d, should match layer output feature channels == %d", v426, v427, v428, v429);
        }

        if (destinationGradients)
        {
          objc_msgSend_rows(v299[v302], v293, v368, v294, v295, v296, v297, v298);
          objc_msgSend_rows(*(v301 + 8 * v302), v369, v370, v371, v372, v373, v374, v375);
          v383 = objc_msgSend_rows(v299[v302], v376, v377, v378, v379, v380, v381, v382);
          if (v383 != objc_msgSend_rows(*(v301 + 8 * v302), v384, v385, v386, v387, v388, v389, v390) && MTLReportFailureTypeEnabled())
          {
            v430 = objc_msgSend_rows(v299[v302], v391, v392, v393, v394, v395, v396, v397);
            inputFeatureChannels = v302;
            v570 = objc_msgSend_rows(*(v301 + 8 * v302), v431, v432, v433, v434, v435, v436, v437);
            v561 = v302;
            v565 = v430;
            selfCopy6 = self;
            MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x37FC, @"[%@ encode...] forwardSources[%d].rows == %d, should match destinationGradients[%d].rows == %d", v438, v439, v440, v441);
          }

          objc_msgSend_columns(*(v301 + 8 * v302), v391, v392, v393, v394, v395, v396, v397, selfCopy6, v561, v565);
          if (objc_msgSend_columns(*(v301 + 8 * v302), v398, v399, v400, v401, v402, v403, v404) != self->_inputFeatureChannels && MTLReportFailureTypeEnabled())
          {
            v565 = objc_msgSend_columns(*(v301 + 8 * v302), v293, v405, v294, v295, v296, v297, v298);
            inputFeatureChannels = self->_inputFeatureChannels;
            selfCopy6 = self;
            v561 = v302;
            MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Filters/MPSRNNLayer.mm", 0x37FF, @"[%@ encode...] destinationGradients[%d].columns == %d, should match layer input feature channels == %d", v406, v407, v408, v409);
          }
        }
      }

      if (v284 == ++v302)
      {
        break;
      }
    }
  }

  else
  {
    v595 = 0;
    v598 = 0;
    v303 = 0;
  }

  v581 = (v300 + 8 * v284);
  v593 = (v301 + size);
  v442 = v595;
  v443 = v598;
  if (v598 | v595 | v303 && v284)
  {
    for (j = 0; j != v284; ++j)
    {
      if (v598)
      {
        v446 = forwardSourceOffsets;
        if (forwardSourceOffsets)
        {
          v446 = forwardSourceOffsets[j];
        }

        *(v598 + 8 * j) = v446 + *(v299[j] + *MEMORY[0x277CD73A8]);
      }

      if (v595)
      {
        v447 = sourceGradientOffsets;
        if (sourceGradientOffsets)
        {
          v447 = sourceGradientOffsets[j];
        }

        *(v595 + 8 * j) = v447 + *(*(v300 + 8 * j) + *MEMORY[0x277CD73A8]);
      }

      if (v303)
      {
        if (destinationOffsets)
        {
          v445 = destinationOffsets[j];
        }

        else
        {
          v445 = 0;
        }

        *(v303 + 8 * j) = *(v581[j] + *MEMORY[0x277CD73A8]) + v445;
      }
    }
  }

  if (v292)
  {
    if (weightGradients)
    {
      for (k = 0; k != v292; ++k)
      {
        v593[k] = objc_msgSend_objectAtIndexedSubscript_(weightGradients, v293, k, v294, v295, v296, v297, v298, selfCopy6, v561, v565);
      }
    }

    else
    {
      bzero(v593, 8 * v292);
    }
  }

  MEMORY[0x23EE7D040](v610, commandBuffer, 0);
  layer = self->layer;
  gemmKernel = self->gemmKernel;
  gemmKernelNonTranspose = self->gemmKernelNonTranspose;
  gemmKernel_noAccumulate = self->gemmKernel_noAccumulate;
  gemmKernelNonTranspose_noAccumulate = self->gemmKernelNonTranspose_noAccumulate;
  v599[2] = v574;
  v599[3] = gemmKernel;
  gemmKernelTN = self->gemmKernelTN;
  v599[4] = gemmKernelNonTranspose;
  v599[5] = gemmKernel_noAccumulate;
  v599[6] = gemmKernelNonTranspose_noAccumulate;
  v599[7] = gemmKernelTN;
  layerType = self->layerType;
  v599[8] = self->gemmKernelTN_accumulate;
  v599[9] = v610;
  v599[0] = *(&self->super.super.isa + *MEMORY[0x277CD7370]);
  v599[1] = commandBuffer;
  storeAllIntermediateStates = self->_storeAllIntermediateStates;
  v600 = self->_storeAllIntermediateStates;
  propagateFullRecurrentRows = self->_propagateFullRecurrentRows;
  v601 = self->_propagateFullRecurrentRows;
  v603 = weights;
  v604 = 0;
  trainingStateIsTemporary = self->_trainingStateIsTemporary;
  v455 = forwardSourceOffsets;
  if (v598)
  {
    v455 = v598;
  }

  v605 = trainingStates;
  v606 = v455;
  v456 = sourceGradientOffsets;
  if (v595)
  {
    v456 = v595;
  }

  v607 = 0;
  v608 = v456;
  if (v303)
  {
    v457 = v303;
  }

  else
  {
    v457 = destinationOffsets;
  }

  v609 = v457;
  if (!v284)
  {
    goto LABEL_153;
  }

  recurrentOutputIsTemporary = self->_recurrentOutputIsTemporary;
  accumulateWeightGradients = self->_accumulateWeightGradients;
  v458 = malloc_type_malloc(24 * v284, 0x80040B8603338uLL);
  v575 = &v458[v284];
  if (!recurrentOutputStates)
  {
    v584 = 0;
    v460 = 1;
    v461 = recurrentInputState;
    if (recurrentInputState)
    {
      goto LABEL_137;
    }

    goto LABEL_107;
  }

  if (storeAllIntermediateStates)
  {
    v584 = malloc_type_malloc(size, 0x80040B8603338uLL);
    v459 = v284;
  }

  else
  {
    v584 = 0;
    v459 = 1;
  }

  v463 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v471 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  sizea = v458;
  v472 = 0;
  for (m = 0; m != v284; ++m)
  {
    v474 = objc_msgSend_rows(v299[m], v464, v465, v466, v467, v468, v469, v470, selfCopy6, v561, v565);
    if (v474 > v472)
    {
      v472 = v474;
    }
  }

  v573 = v303;
  v475 = 0;
  v476 = 0;
  if (v459 <= 1)
  {
    v477 = 1;
  }

  else
  {
    v477 = v459;
  }

  v586 = v477;
  do
  {
    v478 = objc_msgSend_rows(v299[v476], v464, v465, v466, v467, v468, v469, v470);
    if (propagateFullRecurrentRows)
    {
      v479 = v472;
    }

    else
    {
      v479 = v478;
    }

    *v463 = 0;
    *v471 = 0;
    switch(layerType)
    {
      case 2:
        *v463 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v464, v479, 4 * layer[6], 16 * layer[6], 268435488, v469, v470);
        *v471 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v481, v479, 2 * layer[7], 8 * layer[7], 268435488, v482, v483);
        break;
      case 1:
        v480 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v464, v479, 8 * layer[6], 32 * layer[6], 268435488, v469, v470);
LABEL_126:
        *v463 = v480;
        if (!v480)
        {
          goto LABEL_117;
        }

        goto LABEL_130;
      case 0:
        v480 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v464, v479, layer[6], 4 * layer[6], 268435488, v469, v470);
        goto LABEL_126;
    }

    if (!*v463)
    {
      goto LABEL_117;
    }

LABEL_130:
    v484 = [MPSRNNRecurrentMatrixState alloc];
    isTemporary_layerCount = objc_msgSend_initWithCommandBuffer_recurrentMatrixDescriptors_cellMatrixDescriptors_isTemporary_layerCount_(v484, v485, commandBuffer, v463, v471, recurrentOutputIsTemporary, 1, v486);
    v494 = isTemporary_layerCount;
    v495 = isTemporary_layerCount;
    if (v584)
    {
      v584[v476] = isTemporary_layerCount;
      v495 = v475;
    }

    objc_msgSend_addObject_(recurrentOutputStates, v488, isTemporary_layerCount, v489, v490, v491, v492, v493);

    v475 = v495;
LABEL_117:
    ++v476;
  }

  while (v586 != v476);
  free(v463);
  free(v471);
  if (!v584)
  {
    v442 = v595;
    v443 = v598;
    v458 = sizea;
    if (v475)
    {
      v584 = 0;
      *sizea = **(v475 + 48);
      v516 = **(v475 + 56);
      v303 = v573;
      *v575 = v516;
      v460 = 1;
      v461 = recurrentInputState;
      if (recurrentInputState)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v584 = 0;
      v460 = 1;
      v303 = v573;
      v461 = recurrentInputState;
      if (recurrentInputState)
      {
        goto LABEL_137;
      }
    }

    goto LABEL_107;
  }

  v496 = 0;
  v442 = v595;
  v443 = v598;
  v458 = sizea;
  do
  {
    sizea[v496] = **(v584[v496] + 48);
    v575[v496] = **(v584[v496] + 56);
    ++v496;
  }

  while (v284 != v496);
  v460 = 0;
  v303 = v573;
  v461 = recurrentInputState;
  if (!recurrentInputState)
  {
LABEL_107:
    v462 = 0;
    goto LABEL_139;
  }

LABEL_137:
  v462 = *v461->recurrentMatrices;
  cellMatrices = v461->cellMatrices;
  if (cellMatrices)
  {
    v498 = *cellMatrices;
    goto LABEL_140;
  }

LABEL_139:
  v498 = 0;
LABEL_140:
  if (recurrentOutputStates)
  {
    v499 = v458;
  }

  else
  {
    v499 = 0;
  }

  v500 = v575;
  if (!recurrentOutputStates)
  {
    v500 = 0;
  }

  sub_239BD40C4(v599, v284, v299, v300, v581, v593, v462, v498, v499, v500, layer, layerType, accumulateWeightGradients);
  v501 = v458;
  v502 = MEMORY[0x277CD7388];
  v503 = *MEMORY[0x277CD7388];
  v504 = v299;
  v505 = v284;
  do
  {
    v506 = v503;
    if (*(&(*v504)[3].super.super.isa + v503))
    {
      MPSDecrementReadCount(*v504);
      v503 = *v502;
      v506 = *v502;
    }

    v507 = v504[v284];
    if (*(&v507[3].super.super.isa + v506))
    {
      MPSDecrementReadCount(v507);
      v503 = *v502;
    }

    ++v504;
    --v505;
  }

  while (v505);
  free(v501);
  if ((v460 & 1) == 0)
  {
    free(v584);
  }

LABEL_153:
  free(v299);
  if (v443)
  {
    free(v443);
  }

  if (v442)
  {
    free(v442);
  }

  if (v303)
  {
    free(v303);
  }

  MPSAutoCache::~MPSAutoCache(v610);
  v508 = v611;
  objc_msgSend_endEncoding(v611, v509, v510, v511, v512, v513, v514, v515);
}

- (id)recurrentStateForBatchSize:(unint64_t)size forGradientPass:(BOOL)pass
{
  v4 = sub_239BC82A0(1, size, &self->layer, &self->layerType, 0, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2], 0, pass);

  return v4;
}

- (id)temporaryRecurrentStateForCommandBuffer:(id)buffer batchSize:(unint64_t)size forGradientPass:(BOOL)pass
{
  v5 = sub_239BC82A0(1, size, &self->layer, &self->layerType, 1u, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2], buffer, pass);

  return v5;
}

@end