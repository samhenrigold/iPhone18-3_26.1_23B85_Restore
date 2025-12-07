@interface MLCDeviceANE
+ (BOOL)hasANE;
- (BOOL)allocateDeviceMemoryForSourceAndResultTensorsOfLayer:(id)layer tensorLabelToIOSurfaceMap:(id *)map;
- (BOOL)compileLayerDeviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)compileOptimizerDeviceOps:(id)ops;
- (BOOL)needToAllocateDeviceMemoryForTensor:(id)tensor;
- (BOOL)postProcessCompiledGraph:(id)graph compilerOptions:(unint64_t)options;
- (BOOL)procedureInformationWithModelAttributes:(id)attributes procedureName:(id)name procedureID:(unint64_t *)d procedureInputSymbols:(id *)symbols procedureInputSymbolIndices:(id *)indices procedureOutputSymbols:(id *)outputSymbols procedureOutputSymbolIndices:(id *)symbolIndices;
- (BOOL)setConvolutionLayerOptimizerDataForDeviceOps:(id)ops weights:(id)weights bias:(id)bias;
- (BOOL)setLSTMLayerOptimizerDataForDeviceOps:(id)ops inputWeights:(id)weights hiddenWeights:(id)hiddenWeights biasTerms:(id)terms;
- (BOOL)setMHALayerOptimizerDataForDeviceOps:(id)ops optimizerDataForWeights:(id)weights optimizerDataForBias:(id)bias;
- (BOOL)setNormalizationLayerOptimizerDataForDeviceOps:(id)ops beta:(id)beta gamma:(id)gamma;
- (BOOL)shareDeviceMemoryWithResultTensor:(id)tensor sourceTensor:(id)sourceTensor;
- (BOOL)transferTensor:(id)tensor fromDevice:(id)device;
- (BOOL)updateDeviceMemoryForTensor:(id)tensor;
- (BOOL)updateTensorsForFusedLayers:(id)layers ofInferenceGraph:(id)graph;
- (MLCDeviceANE)initWithType:(int)type;
- (NSString)description;
- (id)ANERequestWithModelAttributes:(id)attributes procedureName:(id)name tensorLabelToIOSurfaceMap:(id)map;
- (id)batchNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum;
- (id)convolutionTransposeLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createOptimizerDeviceDataForTensor:(id)tensor optimizer:(id)optimizer optimizerData:(id)data isVector:(BOOL)vector;
- (id)dropoutLayerWithRate:(float)rate seed:(unint64_t)seed;
- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0;
- (id)fusedConvolutionAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms;
- (id)fusedConvolutionBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)self0 weights:(id)self1 biasTerms:(id)self2;
- (id)fusedFullyConnectedAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms;
- (id)fusedFullyConnectedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)self0 weights:(id)self1 biasTerms:(id)self2;
- (id)getHostPointerIfUnifiedDeviceMemory:(id)memory;
- (id)gramMatrixLayerWithScaleFactor:(float)factor;
- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)count groupCount:(unint64_t)groupCount beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon;
- (id)imageReshapeWithWidth:(unint64_t)width height:(unint64_t)height alignCorners:(BOOL)corners;
- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum;
- (id)lossLayerWithDescriptor:(id)descriptor;
- (id)lossYOLOLayerWithDescriptor:(id)descriptor;
- (id)lstmLayerWithDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)activation inferenceOnly:(BOOL)self0;
- (id)multiheadAttentionLayerWithDescriptor:(id)descriptor weights:(id)weights bias:(id)bias attnBias:(id)attnBias inferenceOnly:(BOOL)only;
- (id)optimizerAdamWithDescriptor:(id)descriptor beta1:(double)beta1 beta2:(double)beta2 epsilon:(float)epsilon amsgrad:(BOOL)amsgrad timeStep:(unint64_t)step isAdamW:(BOOL)w;
- (id)optimizerRMSPropWithDescriptor:(id)descriptor momentumScale:(float)scale alpha:(float)alpha epsilon:(float)epsilon centered:(BOOL)centered;
- (id)optimizerSGDWithDescriptor:(id)descriptor momentunScale:(float)scale useNesterovMomentum:(BOOL)momentum;
- (id)paddingLayerWithPaddingType:(int)type paddingLeft:(unint64_t)left paddingRight:(unint64_t)right paddingTop:(unint64_t)top paddingBottom:(unint64_t)bottom constantValue:(float)value dataType:(int)dataType;
- (id)partitionInferenceGraph:(id)graph startAtLayerIndex:(unint64_t)index aneDevice:(id)device secondaryDevice:(id)secondaryDevice;
- (id)partitionInferenceGraph:(id)graph startAtLayerIndex:(unint64_t)index aneDevice:(id)device secondaryDevice:(id)secondaryDevice configurationJSON:(id)n;
- (id)readTensor:(id)tensor;
- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index;
- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index batchSize:(unint64_t)size;
- (unint64_t)allocatedDeviceDataSizeForTraining:(BOOL)training layer:(id)layer;
- (unint64_t)deviceMemorySizeForTensor:(id)tensor interleave:(unint64_t *)interleave;
- (void)accumulateParams:(void *)params gradients:(void *)gradients accumulators:(void *)accumulators numOfParameters:(unint64_t)parameters inArrayOfParams:(id)ofParams;
- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)optimizer updatableParameterCount:(unint64_t)count;
- (void)allocateDeviceMemoryForTensor:(id)tensor;
- (void)broadcastTensor:(id)tensor;
- (void)commitAndWaitForCompletion:(id)completion enableProfiling:(BOOL)profiling graphExecutionTime:(id)time graphResultTensor:(id)tensor;
- (void)convertUpdatesToTensorDataForLayer:(id)layer;
- (void)convertUpdatesToTensorDataForTensorParameters:(id)parameters;
- (void)deallocateDeviceMemoryForTensor:(id)tensor;
- (void)dispatchForwardAndGradientLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchForwardCompareLayer:(id)layer sourceTensor:(id)tensor secondaryTensor:(id)secondaryTensor resultTensor:(id)resultTensor compareOp:(int)op forTraining:(BOOL)training;
- (void)dispatchForwardConcatLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor;
- (void)dispatchForwardEmbeddingLayer:(id)layer weight:(id)weight sourceTensor:(id)tensor resultTensor:(id)resultTensor;
- (void)dispatchForwardFusedArithmeticLayerNormalizationLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training;
- (void)dispatchForwardGatherLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training;
- (void)dispatchForwardLayer:(id)layer;
- (void)dispatchForwardLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training;
- (void)dispatchForwardLayer:(id)layer sourceTensor:(id)tensor secondaryTensor:(id)secondaryTensor tertiaryTensor:(id)tertiaryTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training;
- (void)dispatchForwardLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)self0;
- (void)dispatchForwardMHALayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training;
- (void)dispatchForwardMatMulLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor;
- (void)dispatchForwardReduceLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor reductionType:(int)type reduceDimensions:(id)dimensions forTraining:(BOOL)training;
- (void)dispatchForwardReshapeLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training;
- (void)dispatchForwardScatterLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training;
- (void)dispatchForwardSelectLayer:(id)layer conditionTensor:(id)tensor sourceTensors:(id)tensors resultTensor:(id)resultTensor forTraining:(BOOL)training;
- (void)dispatchForwardSliceLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor forTraining:(BOOL)training;
- (void)dispatchForwardSplitLayer:(id)layer sourceTensor:(id)tensor resultTensors:(id)tensors;
- (void)dispatchGradientConcatLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors;
- (void)dispatchGradientEmbeddingLayer:(id)layer sourceGradientTensor:(id)tensor;
- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor secondaryResultGradientTensor:(id)resultGradientTensor;
- (void)dispatchGradientLossLayer:(id)layer sourceGradientTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientMHALayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors resultStateIsTemporary:(BOOL)temporary;
- (void)dispatchGradientMatMulLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors;
- (void)dispatchGradientReduceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor reductionType:(int)type reduceDimensions:(id)dimensions;
- (void)dispatchGradientReshapeLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientSelectLayer:(id)layer conditionTensor:(id)tensor sourceGradientTensor:(id)gradientTensor resultGradientTensors:(id)tensors;
- (void)dispatchGradientSliceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor;
- (void)dispatchGradientSplitLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensor:(id)tensor;
- (void)dispatchRNNForwardLayer:(id)layer sourceTensors:(id)tensors resultTensors:(id)resultTensors;
- (void)dispatchRNNForwardLayer:(id)layer sourceTensors:(id)tensors resultTensors:(id)resultTensors resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training;
- (void)dispatchRNNGradientLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensors:(id)gradientTensors;
- (void)dispatchReadTensor:(id)tensor targetBuffer:(void *)buffer batchSize:(unint64_t)size;
- (void)fuseLayersForInferenceGraph:(id)graph startAtLayerIndex:(unint64_t)index;
- (void)fuseLayersForTrainingGraph:(id)graph stopGradientTensorList:(id)list;
- (void)incrementReadCountForGradientState:(id)state increment:(int64_t)increment;
- (void)incrementReadCountForTensorDeviceMemory:(id)memory increment:(int64_t)increment;
- (void)optimizeComputationForTrainingGraph:(id)graph;
- (void)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index targetBuffer:(void *)buffer batchSize:(unint64_t)size;
- (void)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index targetBuffer:(void *)buffer batchSize:(unint64_t)size reduceOverBatch:(BOOL)batch;
- (void)readTensor:(id)tensor targetBuffer:(void *)buffer;
- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)tensor;
- (void)resetLayer:(id)layer;
- (void)restoreRNNParamsWithDeviceOps:(id)ops optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)saveGraphPartitioning:(id)partitioning toFile:(id)file;
- (void)setDeviceMemoryForTensor:(id)tensor data:(id)data;
- (void)setOptimizerLearningRate:(id)rate learningRate:(float)learningRate;
- (void)setOptimizerTimeStep:(id)step timeStep:(unint64_t)timeStep;
- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients;
- (void)sumSharedGradientsForNormalizationLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients isBetaTensor:(BOOL)tensor;
- (void)synchronizeOptimizerUpdatesForTensor:(id)tensor;
- (void)synchronizeUpdatesForLayer:(id)layer;
- (void)updateAllParametersWithOptimizer:(id)optimizer arrayOfParameters:(id)parameters;
- (void)updateBatchNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter meanTensor:(id)tensor varianceTensor:(id)varianceTensor arrayOfParams:(id)params;
- (void)updateConvolutionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateEmbeddingLayer:(id)layer weightsParameter:(id)parameter optimizer:(id)optimizer arrayOfParams:(id)params;
- (void)updateFullyConnectedLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateGroupNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params;
- (void)updateInstanceNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params;
- (void)updateLayerNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params;
- (void)updateMultiheadAttentionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateRNNLayer:(id)layer optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params;
- (void)updateTensorParameter:(id)parameter optimizer:(id)optimizer gradient:(id)gradient arrayOfParams:(id)params;
- (void)writeToAllDevices:(id)devices allocateData:(BOOL)data batchSize:(unint64_t)size;
- (void)writeToDevice:(id)device toDeviceIndex:(unint64_t)index batchSize:(unint64_t)size;
@end

@implementation MLCDeviceANE

- (id)convolutionTransposeLayerWithDescriptor:(id)descriptor weights:(id)weights biasTerms:(id)terms
{
  v6 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) convolutionTransposeLayerWithDescriptor:a2 weights:? biasTerms:?];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)batchNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum
{
  v23[1] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCABB0];
  gammaCopy = gamma;
  betaCopy = beta;
  varianceCopy = variance;
  meanCopy = mean;
  v19 = [v14 numberWithUnsignedInteger:count];
  v23[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v21 = ANE_CreateNormalizationLayer(0, 0, v20, epsilon, 1, meanCopy, varianceCopy, betaCopy, gammaCopy);

  return v21;
}

- (id)instanceNormalizationLayerWithChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum
{
  v23[1] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCABB0];
  gammaCopy = gamma;
  betaCopy = beta;
  varianceCopy = variance;
  meanCopy = mean;
  v19 = [v14 numberWithUnsignedInteger:count];
  v23[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v21 = ANE_CreateNormalizationLayer(1, 0, v20, epsilon, 1, meanCopy, varianceCopy, betaCopy, gammaCopy);

  return v21;
}

- (id)groupNormalizationLayerWithFeatureChannelCount:(unint64_t)count groupCount:(unint64_t)groupCount beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon
{
  v18[1] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CCABB0];
  gammaCopy = gamma;
  betaCopy = beta;
  v14 = [v11 numberWithUnsignedInteger:count];
  v18[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v16 = ANE_CreateNormalizationLayer(3, 0, v15, epsilon, groupCount, 0, 0, betaCopy, gammaCopy);

  return v16;
}

- (id)lossLayerWithDescriptor:(id)descriptor
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)lossYOLOLayerWithDescriptor:(id)descriptor
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)dropoutLayerWithRate:(float)rate seed:(unint64_t)seed
{
  v5 = +[MLCLog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)paddingLayerWithPaddingType:(int)type paddingLeft:(unint64_t)left paddingRight:(unint64_t)right paddingTop:(unint64_t)top paddingBottom:(unint64_t)bottom constantValue:(float)value dataType:(int)dataType
{
  v10 = [MLCLog framework:*&type];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)imageReshapeWithWidth:(unint64_t)width height:(unint64_t)height alignCorners:(BOOL)corners
{
  v6 = [MLCLog framework:width];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)lstmLayerWithDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biasTerms:(id)terms gateActivations:(id)activations outputResultActivation:(id)activation inferenceOnly:(BOOL)self0
{
  v11 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)gramMatrixLayerWithScaleFactor:(float)factor
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) convolutionTransposeLayerWithDescriptor:a2 weights:? biasTerms:?];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)optimizerSGDWithDescriptor:(id)descriptor momentunScale:(float)scale useNesterovMomentum:(BOOL)momentum
{
  v6 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)optimizerAdamWithDescriptor:(id)descriptor beta1:(double)beta1 beta2:(double)beta2 epsilon:(float)epsilon amsgrad:(BOOL)amsgrad timeStep:(unint64_t)step isAdamW:(BOOL)w
{
  v10 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)optimizerRMSPropWithDescriptor:(id)descriptor momentumScale:(float)scale alpha:(float)alpha epsilon:(float)epsilon centered:(BOOL)centered
{
  v8 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (unint64_t)allocatedDeviceDataSizeForTraining:(BOOL)training layer:(id)layer
{
  v5 = [MLCLog framework:training];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (BOOL)setConvolutionLayerOptimizerDataForDeviceOps:(id)ops weights:(id)weights bias:(id)bias
{
  v6 = [MLCLog framework:ops];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (BOOL)setMHALayerOptimizerDataForDeviceOps:(id)ops optimizerDataForWeights:(id)weights optimizerDataForBias:(id)bias
{
  v6 = [MLCLog framework:ops];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (BOOL)setNormalizationLayerOptimizerDataForDeviceOps:(id)ops beta:(id)beta gamma:(id)gamma
{
  v6 = [MLCLog framework:ops];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (BOOL)setLSTMLayerOptimizerDataForDeviceOps:(id)ops inputWeights:(id)weights hiddenWeights:(id)hiddenWeights biasTerms:(id)terms
{
  v7 = [MLCLog framework:ops];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

- (id)createOptimizerDeviceDataForTensor:(id)tensor optimizer:(id)optimizer optimizerData:(id)data isVector:(BOOL)vector
{
  v7 = [MLCLog framework:tensor];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (void)allocateDeviceDataForGlobalNormClippingWithOptimizer:(id)optimizer updatableParameterCount:(unint64_t)count
{
  v5 = [MLCLog framework:optimizer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }
}

- (void)resetLayer:(id)layer
{
  v14 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  [layerCopy setDevice:0];
  [layerCopy setDeviceOps:MEMORY[0x277CBEBF8]];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  resultTensors = [layerCopy resultTensors];
  v5 = [resultTensors countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(resultTensors);
        }

        [*(*(&v9 + 1) + 8 * v8++) setDevice:0];
      }

      while (v6 != v8);
      v6 = [resultTensors countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)partitionInferenceGraph:(id)graph startAtLayerIndex:(unint64_t)index aneDevice:(id)device secondaryDevice:(id)secondaryDevice configurationJSON:(id)n
{
  indexCopy = index;
  v79 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  secondaryDeviceCopy = secondaryDevice;
  nCopy = n;
  graphLayerList = [graph graphLayerList];
  v13 = [MEMORY[0x277CBEC10] mutableCopy];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v14 = graphLayerList;
  v15 = [v14 countByEnumeratingWithState:&v72 objects:v78 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v73;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v73 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v72 + 1) + 8 * i);
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "layerID", indexCopy)}];
        [v13 setObject:v19 forKeyedSubscript:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v72 objects:v78 count:16];
    }

    while (v16);
  }

  v56 = secondaryDeviceCopy;
  v58 = v14;

  v21 = MEMORY[0x277CBEBF8];
  v62 = [MEMORY[0x277CBEBF8] mutableCopy];
  v63 = [v21 mutableCopy];
  v22 = [MEMORY[0x277CBEB58] set];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v55 = nCopy;
  obj = [nCopy objectForKeyedSubscript:@"ane_subgraphs"];
  v23 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v23)
  {
    v24 = v23;
    v60 = *v69;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v69 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v68 + 1) + 8 * j);
        v27 = [MEMORY[0x277CBEB58] set];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v28 = v26;
        v29 = [v28 countByEnumeratingWithState:&v64 objects:v76 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v65;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v65 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = [v13 objectForKeyedSubscript:*(*(&v64 + 1) + 8 * k)];
              [v27 addObject:v33];
              [v22 addObject:v33];
            }

            v30 = [v28 countByEnumeratingWithState:&v64 objects:v76 count:16];
          }

          while (v30);
        }

        [v63 addObject:v27];
        v34 = [MEMORY[0x277CBEBF8] mutableCopy];
        v35 = [MLCDeviceGraph deviceGraphWithLayers:v34 device:deviceCopy];

        v36 = ANE_ComputeLiveOutputs(v27);
        v37 = [v36 mutableCopy];
        [v35 setLiveOutputs:v37];

        [v62 addObject:v35];
      }

      v24 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v24);
  }

  v38 = [MEMORY[0x277CBEBF8] mutableCopy];
  v39 = [MLCDeviceGraph deviceGraphWithLayers:v38 device:v56];

  v40 = [v58 count];
  v41 = indexCopy;
  if (v40 > indexCopy)
  {
    v42 = v40;
    do
    {
      v43 = v41;
      v44 = [v58 objectAtIndexedSubscript:indexCopy];
      if (([v44 skipLayer] & 1) == 0)
      {
        if ([v22 containsObject:v44])
        {
          v45 = [v63 count];
          if (v45)
          {
            v46 = v45;
            for (m = 0; m != v46; ++m)
            {
              v48 = [v63 objectAtIndexedSubscript:m];
              v49 = [v48 containsObject:v44];

              if (v49)
              {
                v50 = [v62 objectAtIndexedSubscript:m];
                graphLayerList2 = [v50 graphLayerList];
                [graphLayerList2 addObject:v44];
              }
            }
          }
        }

        else
        {
          [(MLCDeviceANE *)self resetLayer:v44];
          graphLayerList3 = [v39 graphLayerList];
          [graphLayerList3 addObject:v44];
        }
      }

      v41 = v43 + 1;
    }

    while (v43 + 1 != v42);
  }

  [v62 addObject:{v39, indexCopy}];

  return v62;
}

- (void)saveGraphPartitioning:(id)partitioning toFile:(id)file
{
  v39 = *MEMORY[0x277D85DE8];
  partitioningCopy = partitioning;
  fileCopy = file;
  v6 = [MEMORY[0x277CBEC10] mutableCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = partitioningCopy;
  v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v28)
  {
    v27 = *v34;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        graphLayerList = [v8 graphLayerList];
        lastObject = [graphLayerList lastObject];
        device = [lastObject device];
        type = [device type];

        if (type)
        {
          v13 = @"ane_subgraphs";
        }

        else
        {
          v13 = @"cpu_subgraphs";
        }

        v14 = [MEMORY[0x277CBEBF8] mutableCopy];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        graphLayerList2 = [v8 graphLayerList];
        v16 = [graphLayerList2 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(graphLayerList2);
              }

              v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v29 + 1) + 8 * j), "layerID")}];
              [v14 addObject:v20];
            }

            v17 = [graphLayerList2 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v17);
        }

        v21 = [v6 objectForKeyedSubscript:v13];

        if (!v21)
        {
          v22 = [MEMORY[0x277CBEBF8] mutableCopy];
          [v6 setObject:v22 forKeyedSubscript:v13];
        }

        v23 = [v6 objectForKeyedSubscript:v13];
        [v23 addObject:v14];
      }

      v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v28);
  }

  v24 = [MEMORY[0x277CBEB78] outputStreamToFileAtPath:fileCopy append:0];
  [v24 open];
  [MEMORY[0x277CCAAA0] writeJSONObject:v6 toStream:v24 options:1 error:0];
  [v24 close];
}

- (id)partitionInferenceGraph:(id)graph startAtLayerIndex:(unint64_t)index aneDevice:(id)device secondaryDevice:(id)secondaryDevice
{
  v186 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  deviceCopy = device;
  secondaryDeviceCopy = secondaryDevice;
  graphLayerList = [graphCopy graphLayerList];
  v14 = graphLayerList;
  if (!graphLayerList || ![graphLayerList count])
  {
    v39 = +[MLCLog framework];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE(MLCLayerOperations) partitionInferenceGraph:a2 startAtLayerIndex:? aneDevice:? secondaryDevice:?];
    }

    goto LABEL_27;
  }

  if (!deviceCopy || !secondaryDeviceCopy)
  {
    v39 = +[MLCLog framework];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE(MLCLayerOperations) partitionInferenceGraph:a2 startAtLayerIndex:? aneDevice:? secondaryDevice:?];
    }

LABEL_27:
    v40 = MEMORY[0x277CBEBF8];
    goto LABEL_28;
  }

  aSelector = a2;
  v157 = secondaryDeviceCopy;
  if (([graphCopy compilerOptions] & 3) == 0)
  {
    [MLCComputeEngineCommon applyPatternMatcherForGraph:v14 stopGradientTensorList:0 startAtLayerIndex:index forInference:1];
  }

  v15 = MEMORY[0x277CBEBF8];
  v158 = [MEMORY[0x277CBEBF8] mutableCopy];
  v160 = [v15 mutableCopy];
  v163 = [MEMORY[0x277CBEC10] mutableCopy];
  v159 = objc_opt_new();
  v162 = v14;
  v16 = [v14 count];
  v161 = deviceCopy;
  if (v16 > index)
  {
    v17 = v16;
    do
    {
      v18 = [v14 objectAtIndexedSubscript:--v17];
      if (([v18 skipLayer] & 1) == 0)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
        v20 = [v18 key];
        [v163 setObject:v19 forKeyedSubscript:v20];

        [v18 setCompileForInferenceOnly:1];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        sourceTensors = [v18 sourceTensors];
        resultTensors = [v18 resultTensors];
        v24 = resultTensors;
        if (isKindOfClass)
        {
          v25 = [v18 compileForDevice:deviceCopy sourceTensors:sourceTensors resultTensors:resultTensors];

          if (v25)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v27 = [resultTensors objectAtIndexedSubscript:0];
          v28 = [v18 compileForDevice:deviceCopy sourceTensors:sourceTensors resultTensor:v27];

          if (v28)
          {
LABEL_17:
            resultTensors2 = [v18 resultTensors];
            v30 = [resultTensors2 count];

            deviceCopy = v161;
            if (v30)
            {
              v31 = 0;
              do
              {
                resultTensors3 = [v18 resultTensors];
                v33 = [resultTensors3 objectAtIndexedSubscript:v31];
                [v33 setDevice:v161];

                ++v31;
                resultTensors4 = [v18 resultTensors];
                v35 = [resultTensors4 count];
              }

              while (v31 < v35);
            }

            deviceOps = [v18 deviceOps];
            v37 = [deviceOps objectAtIndexedSubscript:0];

            [v37 setPlistBuilder:v159];
            [v158 addObject:v18];

            goto LABEL_21;
          }
        }

        v26 = +[MLCLog framework];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v38 = NSStringFromSelector(aSelector);
          *buf = 138412546;
          v183 = v38;
          v184 = 2112;
          v185 = v18;
          _os_log_debug_impl(&dword_238C1D000, v26, OS_LOG_TYPE_DEBUG, "%@: ANE unsupported layer = %@", buf, 0x16u);
        }

        [(MLCDeviceANE *)self resetLayer:v18];
        deviceCopy = v161;
        if ((ANE_IsSupportedLayer(v18) & 1) == 0)
        {
          [v160 addObject:v18];
        }
      }

LABEL_21:
    }

    while (v17 > index);
  }

  v156 = graphCopy;
  if (([graphCopy compilerOptions] & 3) != 0)
  {
    index = v159;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v39 = v158;
    obj = [v158 reverseObjectEnumerator];
    v42 = [obj countByEnumeratingWithState:&v176 objects:v181 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = 0;
      v165 = 0;
      v45 = *v177;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v177 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v47 = *(*(&v176 + 1) + 8 * i);
          sourceTensors2 = [v47 sourceTensors];
          v49 = [sourceTensors2 count];
          resultTensors5 = [v47 resultTensors];
          v51 = [resultTensors5 count] + v49;

          if (v51 <= 0xFF)
          {
            deviceOps2 = [v47 deviceOps];
            v53 = [deviceOps2 objectAtIndexedSubscript:0];

            if (v51 + v44 <= 0xFF)
            {
              [v53 setPlistBuilder:index];
              v44 += v51;
            }

            else if (++v165 >= 0x10)
            {
              [(MLCDeviceANE *)self resetLayer:v47];
            }

            else
            {
              v54 = objc_opt_new();

              [v53 setPlistBuilder:v54];
              v44 = v51;
              index = v54;
            }
          }

          else
          {
            [(MLCDeviceANE *)self resetLayer:v47];
          }
        }

        v43 = [obj countByEnumeratingWithState:&v176 objects:v181 count:16];
      }

      while (v43);
      graphCopy = v156;
      secondaryDeviceCopy = v157;
      deviceCopy = v161;
      v14 = v162;
      v39 = v158;
      v55 = v160;
      v40 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v40 = MEMORY[0x277CBEBF8];
      secondaryDeviceCopy = v157;
      v55 = v160;
    }

    goto LABEL_140;
  }

  v55 = v160;
  if (!+[MLCPlatformInfo isAneGraphPartitioningConfigSet])
  {
    goto LABEL_60;
  }

  v56 = MEMORY[0x277CBEA90];
  v57 = +[MLCPlatformInfo aneGraphPartitioningConfigEnvVariable];
  v58 = [v56 dataWithContentsOfFile:v57];

  v39 = v158;
  if (!v58)
  {
    v64 = 0;
    v60 = +[MLCLog framework];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v65 = NSStringFromSelector(aSelector);
      *buf = 138412290;
      v183 = v65;
      _os_log_impl(&dword_238C1D000, v60, OS_LOG_TYPE_INFO, "%@: cannot find config file to partition the graph", buf, 0xCu);
    }

    goto LABEL_59;
  }

  v175 = 0;
  index = v58;
  v59 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v58 options:0 error:&v175];
  v60 = v175;
  if (v60 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v61 = v59;
    v62 = +[MLCLog framework];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v63 = NSStringFromSelector(aSelector);
      *buf = 138412290;
      v183 = v63;
      _os_log_impl(&dword_238C1D000, v62, OS_LOG_TYPE_INFO, "%@: cannot parse JSON", buf, 0xCu);
    }

    v64 = index;
LABEL_59:

LABEL_60:
    index = [_MLCANEDomTree computeDominationForGraph:v14, index];
    v66 = [MEMORY[0x277CBEBF8] mutableCopy];
    v67 = [MEMORY[0x277CBEB58] set];
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    reverseObjectEnumerator = [v14 reverseObjectEnumerator];
    v69 = [reverseObjectEnumerator countByEnumeratingWithState:&v171 objects:v180 count:16];
    obj = v66;
    v164 = v67;
    if (!v69)
    {
      goto LABEL_73;
    }

    v70 = v69;
    v71 = *v172;
    v166 = reverseObjectEnumerator;
    while (1)
    {
      for (j = 0; j != v70; ++j)
      {
        if (*v172 != v71)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v73 = *(*(&v171 + 1) + 8 * j);
        if (([v73 skipLayer] & 1) == 0)
        {
          if ([v55 containsObject:v73])
          {
            [v55 removeObject:v73];
          }

          else if (([v67 containsObject:v73] & 1) == 0)
          {
            v74 = [MEMORY[0x277CBEB58] set];
            v75 = [MEMORY[0x277CBEB98] setWithArray:v55];
            v76 = [v73 key];
            v77 = [v163 objectForKeyedSubscript:v76];
            buildANESubgraph(v73, v74, v75, index, v67, v163, [v77 unsignedIntegerValue]);

            if (![v74 count])
            {
              v152 = +[MLCLog framework];
              deviceCopy = v161;
              if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
              {
                [MLCDeviceANE(MLCLayerOperations) partitionInferenceGraph:startAtLayerIndex:aneDevice:secondaryDevice:];
              }

              v40 = MEMORY[0x277CBEBF8];
              graphCopy = v156;
              secondaryDeviceCopy = v157;
              v14 = v162;
              v39 = v158;
              v55 = v160;
LABEL_137:
              v153 = v164;

              v151 = v166;
              goto LABEL_139;
            }

            v66 = obj;
            [obj addObject:v74];
            [v67 unionSet:v74];

            v55 = v160;
            reverseObjectEnumerator = v166;
          }
        }
      }

      v70 = [reverseObjectEnumerator countByEnumeratingWithState:&v171 objects:v180 count:16];
      if (!v70)
      {
LABEL_73:

        [v67 removeAllObjects];
        v78 = [v66 count];
        v79 = index;
        if (v78)
        {
          v80 = v78;
          v81 = 0;
          do
          {
            v167 = v81 + 1;
            if (v81 + 1 < v80)
            {
              v82 = v81 + 1;
              do
              {
                v83 = [v66 objectAtIndexedSubscript:v81];
                v84 = [v66 objectAtIndexedSubscript:v82];
                v85 = v83;
                v86 = v84;
                v87 = v79;
                v88 = v163;
                v89 = [v87 doesSubgraph:v85 dominatesSubgraph:v86];
                v90 = [v87 doesSubgraph:v86 dominatesSubgraph:v85];
                if (v89 & 1) != 0 || (v90)
                {
                  if ((v89 & v90) == 1)
                  {
                    v93 = +[MLCLog framework];
                    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                    {
                      [MLCDeviceANE(MLCLayerOperations) partitionInferenceGraph:buf startAtLayerIndex:&v183 aneDevice:v93 secondaryDevice:?];
                    }

                    v66 = obj;
                  }

                  if (v89)
                  {
                    v94 = v85;
                    v95 = v86;
                  }

                  else
                  {
                    v94 = v86;
                    v95 = v85;
                  }

                  v92 = canMergeANESubgraphsHelper(v94, v95, v87, v88);
                }

                else
                {
                  v91 = [v87 getPostDominanceFrontierForSubgraph:v85];
                  if ([v91 count])
                  {
                    v92 = 0;
                  }

                  else
                  {
                    v96 = [v87 getPostDominanceFrontierForSubgraph:v86];
                    v92 = [v96 count] == 0;

                    v79 = index;
                  }

                  v66 = obj;
                }

                if (v92)
                {
                  v97 = [v66 objectAtIndexedSubscript:v81];
                  [v66 objectAtIndexedSubscript:v82];

                  v98 = [v66 objectAtIndexedSubscript:v81];
                  v99 = [v66 objectAtIndexedSubscript:v82];
                  [v98 unionSet:v99];

                  v85 = [v66 objectAtIndexedSubscript:v82];
                  [v85 removeAllObjects];
                }

                else
                {
                }

                ++v82;
              }

              while (v80 != v82);
            }

            ++v81;
          }

          while (v167 != v80);
        }

        v100 = v156;
        v101 = v66;
        v102 = [v101 count];
        if (v102)
        {
          v103 = v102;
          v104 = 0;
          while (1)
          {
            v105 = [v101 objectAtIndexedSubscript:v104];
            if ([v105 count] != 1)
            {
              goto LABEL_103;
            }

            graphLayerList2 = [v100 graphLayerList];
            if ([graphLayerList2 count] <= 1)
            {
              break;
            }

            v107 = [v101 objectAtIndexedSubscript:v104];
            anyObject = [v107 anyObject];
            isDebuggingEnabled = [anyObject isDebuggingEnabled];

            if ((isDebuggingEnabled & 1) == 0)
            {
              v105 = [v101 objectAtIndexedSubscript:v104];
              [v105 removeAllObjects];
LABEL_103:
            }

            if (v103 == ++v104)
            {
              goto LABEL_105;
            }
          }

          goto LABEL_103;
        }

LABEL_105:
        v110 = [v101 sortedArrayUsingComparator:&__block_literal_global];
        if ([v110 count])
        {
          v111 = 0;
          v112 = 0;
          do
          {
            v113 = [v110 objectAtIndexedSubscript:v111];
            v114 = ANE_ComputeLiveInputs(v113);

            v115 = [v110 objectAtIndexedSubscript:v111];
            v116 = ANE_ComputeLiveOutputs(v115);

            v117 = [v114 count] + v112;
            v118 = v117 + [v116 count];
            if (v118 > 0xFF)
            {
              v119 = [v110 objectAtIndexedSubscript:v111];
              [v119 removeAllObjects];

              v118 = v112;
            }

            ++v111;
            v112 = v118;
          }

          while (v111 < [v110 count]);
        }

        v120 = [v101 count];
        if (v120 >= 1)
        {
          v121 = v120 + 1;
          do
          {
            v122 = [v101 objectAtIndexedSubscript:v121 - 2];
            v123 = [v122 count];

            v124 = v121 - 2;
            if (v123)
            {
              v125 = [v101 objectAtIndexedSubscript:v124];
              [v164 unionSet:v125];
            }

            else
            {
              [v101 removeObjectAtIndex:v124];
            }

            --v121;
          }

          while (v121 > 1);
        }

        v126 = [MEMORY[0x277CBEBF8] mutableCopy];
        v127 = [v101 count];
        if (v127)
        {
          v128 = v127;
          for (k = 0; k != v128; ++k)
          {
            v130 = [MEMORY[0x277CBEBF8] mutableCopy];
            v131 = [MLCDeviceGraph deviceGraphWithLayers:v130 device:v161];

            v132 = [v101 objectAtIndexedSubscript:k];
            v133 = ANE_ComputeLiveOutputs(v132);
            v134 = [v133 mutableCopy];
            [v131 setLiveOutputs:v134];

            [v126 addObject:v131];
          }
        }

        v135 = [MEMORY[0x277CBEBF8] mutableCopy];
        v166 = [MLCDeviceGraph deviceGraphWithLayers:v135 device:v157];

        v14 = v162;
        v136 = [v162 count];
        v137 = v154;
        v55 = v160;
        if (v136 > v154)
        {
          v138 = v136;
          do
          {
            v139 = v14;
            v140 = v137;
            v141 = [v139 objectAtIndexedSubscript:?];
            if (([v141 skipLayer] & 1) == 0)
            {
              if ([v164 containsObject:v141])
              {
                v142 = [v101 count];
                if (v142)
                {
                  v143 = v142;
                  for (m = 0; m != v143; ++m)
                  {
                    v145 = [v101 objectAtIndexedSubscript:m];
                    v146 = [v145 containsObject:v141];

                    if (v146)
                    {
                      v147 = [v126 objectAtIndexedSubscript:m];
                      graphLayerList3 = [v147 graphLayerList];
                      [graphLayerList3 addObject:v141];
                    }
                  }
                }
              }

              else
              {
                [(MLCDeviceANE *)self resetLayer:v141];
                graphLayerList4 = [v166 graphLayerList];
                [graphLayerList4 addObject:v141];
              }
            }

            v137 = v140 + 1;
            v150 = v140 + 1 == v138;
            v14 = v162;
          }

          while (!v150);
        }

        v40 = v126;
        v151 = v166;
        [v126 addObject:v166];
        if (+[MLCPlatformInfo isAneSaveGraphPartitioningConfigSet])
        {
          v74 = +[MLCPlatformInfo aneSaveGraphPartitioningConfig];
          [(MLCDeviceANE *)self saveGraphPartitioning:v126 toFile:v74];
          graphCopy = v156;
          secondaryDeviceCopy = v157;
          deviceCopy = v161;
          v39 = v158;
          goto LABEL_137;
        }

        graphCopy = v156;
        secondaryDeviceCopy = v157;
        deviceCopy = v161;
        v39 = v158;
        v153 = v164;
LABEL_139:

        goto LABEL_140;
      }
    }
  }

  secondaryDeviceCopy = v157;
  obj = v59;
  v40 = [(MLCDeviceANE *)self partitionInferenceGraph:graphCopy startAtLayerIndex:index aneDevice:deviceCopy secondaryDevice:v157 configurationJSON:v59];
LABEL_140:

LABEL_28:

  return v40;
}

- (BOOL)updateTensorsForFusedLayers:(id)layers ofInferenceGraph:(id)graph
{
  v94 = *MEMORY[0x277D85DE8];
  layersCopy = layers;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  graphCopy = graph;
  v8 = [graphCopy countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v86;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v86 != v10)
      {
        objc_enumerationMutation(graphCopy);
      }

      v12 = *(*(&v85 + 1) + 8 * v11);
      if (ANE_IsAneCompiledLayer(v12))
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [graphCopy countByEnumeratingWithState:&v85 objects:v93 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    deviceOps = [v12 deviceOps];
    v14 = [deviceOps objectAtIndexedSubscript:0];

    plistBuilder = [v14 plistBuilder];

    if (!plistBuilder)
    {
      goto LABEL_56;
    }

    v16 = [MEMORY[0x277CBEB98] setWithArray:graphCopy];
    v17 = ANE_ComputeLiveInputs(v16);

    allObjects = [v17 allObjects];
    if ([allObjects count])
    {
      v19 = [MEMORY[0x277CBEB98] setWithArray:graphCopy];
      v20 = ANE_ComputeLiveOutputs(v19);

      allObjects2 = [v20 allObjects];
      if (([plistBuilder buildProcedureWithRootLayer:layersCopy aneSubgraphLayerList:graphCopy liveInputs:v17 liveOutputs:v20]& 1) != 0)
      {
        v64 = allObjects2;
        v65 = allObjects;
        v61 = v17;
        v62 = plistBuilder;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v63 = graphCopy;
        v22 = graphCopy;
        v23 = [v22 countByEnumeratingWithState:&v81 objects:v92 count:16];
        v68 = layersCopy;
        if (v23)
        {
          v24 = v23;
          v25 = *v82;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v82 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v81 + 1) + 8 * i);
              if (v27 != layersCopy)
              {
                fusedLayers = [layersCopy fusedLayers];
                [fusedLayers addObject:v27];

                [v27 setSkipLayer:1];
              }

              if ([v27 isLastLayer])
              {
                [v27 setIsLastFusedLayer:1];
              }

              else
              {
                v79 = 0u;
                v80 = 0u;
                v77 = 0u;
                v78 = 0u;
                resultTensors = [v27 resultTensors];
                v30 = [resultTensors countByEnumeratingWithState:&v77 objects:v91 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v78;
                  while (2)
                  {
                    for (j = 0; j != v31; ++j)
                    {
                      if (*v78 != v32)
                      {
                        objc_enumerationMutation(resultTensors);
                      }

                      if ([v20 containsObject:*(*(&v77 + 1) + 8 * j)])
                      {
                        [v27 setIsLastFusedLayer:1];
                        goto LABEL_32;
                      }
                    }

                    v31 = [resultTensors countByEnumeratingWithState:&v77 objects:v91 count:16];
                    if (v31)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_32:

                layersCopy = v68;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v81 objects:v92 count:16];
          }

          while (v24);
        }

        v34 = [MEMORY[0x277CBEB98] setWithArray:v22];
        v35 = [v65 mutableCopy];
        [layersCopy setSourceTensors:v35];

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = [layersCopy sourceTensors];
        v36 = [obj countByEnumeratingWithState:&v73 objects:v90 count:16];
        if (v36)
        {
          v37 = v36;
          v67 = *v74;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v74 != v67)
              {
                objc_enumerationMutation(obj);
              }

              v39 = *(*(&v73 + 1) + 8 * k);
              indexSet = [MEMORY[0x277CCAB58] indexSet];
              childLayers = [v39 childLayers];
              v42 = [childLayers count];

              if (v42)
              {
                for (m = 0; m != v42; ++m)
                {
                  childLayers2 = [v39 childLayers];
                  v45 = [childLayers2 objectAtIndexedSubscript:m];

                  if ([v34 containsObject:v45])
                  {
                    [indexSet addIndex:m];
                  }
                }
              }

              childLayers3 = [v39 childLayers];
              [childLayers3 removeObjectsAtIndexes:indexSet];

              childLayers4 = [v39 childLayers];
              layersCopy = v68;
              [childLayers4 addObject:v68];
            }

            v37 = [obj countByEnumeratingWithState:&v73 objects:v90 count:16];
          }

          while (v37);
        }

        v48 = [v64 mutableCopy];
        [layersCopy setResultTensors:v48];

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        resultTensors2 = [layersCopy resultTensors];
        v50 = [resultTensors2 countByEnumeratingWithState:&v69 objects:v89 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v70;
          while (2)
          {
            for (n = 0; n != v51; ++n)
            {
              if (*v70 != v52)
              {
                objc_enumerationMutation(resultTensors2);
              }

              v54 = *(*(&v69 + 1) + 8 * n);
              parentLayers = [v54 parentLayers];
              v56 = [parentLayers count];

              if (!v56)
              {
                v59 = +[MLCLog framework];
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  [MLCDeviceANE(MLCLayerOperations) updateTensorsForFusedLayers:ofInferenceGraph:];
                }

                v58 = 0;
                layersCopy = v68;
                goto LABEL_68;
              }

              parentLayers2 = [v54 parentLayers];
              layersCopy = v68;
              [parentLayers2 setObject:v68 atIndexedSubscript:0];
            }

            v51 = [resultTensors2 countByEnumeratingWithState:&v69 objects:v89 count:16];
            if (v51)
            {
              continue;
            }

            break;
          }
        }

        v58 = 1;
LABEL_68:
        graphCopy = v63;

        v17 = v61;
        plistBuilder = v62;
        allObjects2 = v64;
        allObjects = v65;
      }

      else
      {
        v34 = +[MLCLog framework];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE(MLCLayerOperations) updateTensorsForFusedLayers:ofInferenceGraph:];
        }

        v58 = 0;
      }
    }

    else
    {
      v20 = +[MLCLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE(MLCLayerOperations) updateTensorsForFusedLayers:ofInferenceGraph:];
      }

      v58 = 0;
    }
  }

  else
  {
LABEL_9:

LABEL_56:
    plistBuilder = +[MLCLog framework];
    if (os_log_type_enabled(plistBuilder, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE(MLCLayerOperations) updateTensorsForFusedLayers:a2 ofInferenceGraph:?];
    }

    v58 = 0;
  }

  return v58;
}

- (void)fuseLayersForTrainingGraph:(id)graph stopGradientTensorList:(id)list
{
  graphCopy = graph;
  listCopy = list;
  if (graphCopy)
  {
    if ([graphCopy count] >= 2)
    {
      v6 = [graphCopy count];
      v7 = graphCopy;
      if (v6)
      {
        v8 = 0;
        while (1)
        {
          v9 = [v7 objectAtIndexedSubscript:v8];
          if ([v9 isLastLayer])
          {
            break;
          }

          if (([v9 skipLayer] & 1) == 0)
          {
            resultTensors = [v9 resultTensors];
            v11 = [resultTensors objectAtIndexedSubscript:0];
            childLayers = [v11 childLayers];
            v13 = [childLayers count];

            if (v13 == 1)
            {
              resultTensors2 = [v9 resultTensors];
              v15 = [resultTensors2 objectAtIndexedSubscript:0];
              childLayers2 = [v15 childLayers];
              v17 = [childLayers2 objectAtIndexedSubscript:0];

              if (([v17 skipLayer] & 1) == 0)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    resultTensors3 = [v17 resultTensors];
                    v19 = [resultTensors3 objectAtIndexedSubscript:0];

                    resultTensors4 = [v9 resultTensors];
                    [resultTensors4 setObject:v19 atIndexedSubscript:0];

                    parentLayers = [v19 parentLayers];
                    [parentLayers setObject:v9 atIndexedSubscript:0];

                    fusedLayers = [v9 fusedLayers];
                    [fusedLayers addObject:v17];

                    [v17 setSkipLayer:1];
                  }
                }
              }
            }
          }

          ++v8;
          v23 = [graphCopy count];
          v7 = graphCopy;
          if (v8 >= v23)
          {
            goto LABEL_17;
          }
        }
      }
    }
  }

LABEL_17:
}

- (void)fuseLayersForInferenceGraph:(id)graph startAtLayerIndex:(unint64_t)index
{
  v27 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = graphCopy;
  if (graphCopy && [graphCopy count])
  {
    lastObject = [v7 lastObject];
    if ([(MLCDeviceANE *)self updateTensorsForFusedLayers:lastObject ofInferenceGraph:v7])
    {
      v9 = [v7 count];
      if (v9)
      {
        v11 = v9;
        v12 = 0;
        *&v10 = 138412546;
        v20 = v10;
        do
        {
          v13 = [v7 objectAtIndexedSubscript:{v12, v20}];
          if (([v13 skipLayer] & 1) == 0)
          {
            fusedLayers = [v13 fusedLayers];
            v15 = [fusedLayers count];

            if (v11 != 1 && !v15)
            {
              v16 = +[MLCLog framework];
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v17 = NSStringFromSelector(a2);
                *buf = v20;
                v22 = v17;
                v23 = 2112;
                v24 = v13;
                _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%@: failed to fuse layer = %@", buf, 0x16u);
              }
            }
          }

          ++v12;
        }

        while (v11 != v12);
      }
    }

    else
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        *buf = 138412802;
        v22 = v19;
        v23 = 2112;
        v24 = lastObject;
        v25 = 2112;
        v26 = v7;
        _os_log_error_impl(&dword_238C1D000, v18, OS_LOG_TYPE_ERROR, "%@: failed to update tensors for rootLayer = %@ and graphLayerList = %@", buf, 0x20u);
      }
    }
  }
}

- (id)fusedConvolutionAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms
{
  v7 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)fusedFullyConnectedAndNeuronLayerWithDescriptor:(id)descriptor convolutionDescriptor:(id)convolutionDescriptor weights:(id)weights biasTerms:(id)terms
{
  v7 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)fusedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0
{
  v11 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) convolutionTransposeLayerWithDescriptor:a2 weights:? biasTerms:?];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)fusedConvolutionBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)self0 weights:(id)self1 biasTerms:(id)self2
{
  v13 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)fusedFullyConnectedBatchNormalizationAndNeuronLayerWithDescriptor:(id)descriptor mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum neuronDescriptor:(id)self0 weights:(id)self1 biasTerms:(id)self2
{
  v13 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (id)multiheadAttentionLayerWithDescriptor:(id)descriptor weights:(id)weights bias:(id)bias attnBias:(id)attnBias inferenceOnly:(BOOL)only
{
  v8 = [MLCLog framework:descriptor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return MEMORY[0x277CBEBF8];
}

- (BOOL)compileLayerDeviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  opsCopy = ops;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  if ([opsCopy count])
  {
    v10 = [opsCopy objectAtIndexedSubscript:0];
    switch([v10 deviceOpType])
    {
      case 1u:
        v11 = ANE_CompileArithmeticLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 2u:
        v13 = 0;
        goto LABEL_17;
      case 4u:
        v11 = ANE_CompileConvolutionLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 7u:
        v11 = ANE_CompileFullyConnectedLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0xAu:
        v11 = ANE_CompileNeuronLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0xBu:
        v11 = ANE_CompilePoolingLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0xCu:
        v11 = ANE_CompileSoftmaxLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0xDu:
        v13 = 1;
        goto LABEL_17;
      case 0x10u:
        v11 = ANE_CompileUpsampleLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x12u:
        v11 = ANE_CompileReshapeLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x13u:
        v13 = 2;
        goto LABEL_17;
      case 0x17u:
        v13 = 3;
LABEL_17:
        v11 = ANE_CompileNormalizationLayer(v13, opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x1Cu:
        v11 = ANE_CompileTransposeLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x1Eu:
        v11 = ANE_CompileReductionLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x1Fu:
        v11 = ANE_CompileConcatLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x20u:
        v11 = ANE_CompileMatMulLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x21u:
        v11 = ANE_CompileSliceLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x22u:
        v11 = ANE_CompileComparisonLayer(opsCopy, tensorsCopy, tensorCopy);
        goto LABEL_18;
      case 0x23u:
        v11 = ANE_CompileSelectionLayer(opsCopy, tensorsCopy, tensorCopy);
LABEL_18:
        v14 = v11;
        if (v11 && [v11 count])
        {
          [v10 setUnits:v14];
          v12 = 1;
        }

        else
        {
          v15 = +[MLCLog framework];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE(MLCLayerOperations) compileLayerDeviceOps:sourceTensors:resultTensor:];
          }

LABEL_24:
          v12 = 0;
        }

        break;
      default:
        v14 = +[MLCLog framework];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE(MLCLayerOperations) compileLayerDeviceOps:sourceTensors:resultTensor:];
        }

        goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)compileOptimizerDeviceOps:(id)ops
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }

  return 0;
}

+ (BOOL)hasANE
{
  if (hasANE_onceToken != -1)
  {
    +[MLCDeviceANE hasANE];
  }

  return hasANE_hasANE;
}

id __22__MLCDeviceANE_hasANE__block_invoke(uint64_t a1)
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  if (AppleNeuralEngineLibrary_frameworkLibrary_1)
  {
    result = softLinkClass_ANEDeviceInfo_0(a1);
    if (result)
    {
      result = softLinkClass_ANERequest(result);
      if (result)
      {
        result = softLinkClass_ANEQoSMapper(result);
        if (result)
        {
          result = softLinkClass_ANEInMemoryModelDescriptor(result);
          if (result)
          {
            result = softLinkClass_ANEInMemoryModel(result);
            if (result)
            {
              if (softLinkClass_ANEIOSurfaceObject_onceToken_0 != -1)
              {
                __22__MLCDeviceANE_hasANE__block_invoke_cold_2();
              }

              result = softLinkClass_ANEIOSurfaceObject_softLinkClass_ANEIOSurfaceObject_0;
              if (result)
              {
                result = [softLinkClass_ANEDeviceInfo_0(result) hasANE];
              }
            }
          }
        }
      }
    }
  }

  else
  {
    result = 0;
  }

  hasANE_hasANE = result;
  return result;
}

- (MLCDeviceANE)initWithType:(int)type
{
  if ([objc_opt_class() hasANE])
  {
    v12.receiver = self;
    v12.super_class = MLCDeviceANE;
    v6 = [(MLCDeviceANE *)&v12 init];
    v7 = v6;
    if (v6)
    {
      v6->_deviceType = type;
      deviceList = v6->_deviceList;
      v6->_deviceList = &unk_284BA6068;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v10 = +[MLCLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE initWithType:a2];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  deviceType = [(MLCDeviceANE *)self deviceType];
  aneSubType = [softLinkClass_ANEDeviceInfo_0(deviceType) aneSubType];
  v7 = [v3 stringWithFormat:@"%@: { deviceType=%d, aneSubType=%@ }", v4, deviceType, aneSubType];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  deviceType = [(MLCDeviceANE *)self deviceType];

  return [v4 initWithType:deviceType];
}

- (unint64_t)deviceMemorySizeForTensor:(id)tensor interleave:(unint64_t *)interleave
{
  v19 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  interleave = [tensorCopy interleave];
  v8 = ANE_CalculatePlaneCountForTensor(tensorCopy, interleave);
  v9 = ANE_CalculatePlaneStrideForTensor(tensorCopy, interleave);

  if (v8 && v9)
  {
    *interleave = interleave;
    return v9 * v8;
  }

  else
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = 138412802;
      v14 = v12;
      v15 = 2048;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      _os_log_error_impl(&dword_238C1D000, v11, OS_LOG_TYPE_ERROR, "%@: invalid plane count=%lu or plane stride=%lu", &v13, 0x20u);
    }

    return 0;
  }
}

- (BOOL)needToAllocateDeviceMemoryForTensor:(id)tensor
{
  v23 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  deviceMemory = [tensorCopy deviceMemory];
  v5 = [deviceMemory count];

  if (v5)
  {
    device = [tensorCopy device];

    if (!device || ([tensorCopy device], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type"), v7, v8 == 3) || (objc_msgSend(tensorCopy, "device"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "type"), v9, v10))
    {
      v11 = 0;
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      deviceMemory2 = [tensorCopy deviceMemory];
      v14 = [deviceMemory2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(deviceMemory2);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = 0;
              goto LABEL_18;
            }
          }

          v15 = [deviceMemory2 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v11 = 1;
LABEL_18:
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)allocateDeviceMemoryForTensor:(id)tensor
{
  v25[5] = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  v6 = objc_autoreleasePoolPush();
  v23 = 1;
  v7 = [(MLCDeviceANE *)self deviceMemorySizeForTensor:tensorCopy interleave:&v23];
  if (v7)
  {
    v8 = v7;
    descriptor = [tensorCopy descriptor];
    dataType = [descriptor dataType];

    v11 = ANE_CalculatePlaneCountForTensor(tensorCopy, v23);
    v12 = ANE_CalculatePlaneStrideForTensor(tensorCopy, v23);
    v13 = ANE_CalculateRowStrideForTensor(tensorCopy, v23);
    v14 = ANE_GetANECIRDataTypeWithMLCDataType(dataType);
    v15 = v14;
    if (v14)
    {
      v25[0] = v14;
      v24[0] = @"Type";
      v24[1] = @"Interleave";
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
      v25[1] = v16;
      v24[2] = @"PlaneCount";
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
      v25[2] = v17;
      v24[3] = @"RowStride";
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      v25[3] = v18;
      v24[4] = @"PlaneStride";
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
      v25[4] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];

      v21 = [_MLCANEIOSurface objectWithDataLength:v8 liveIOStatus:v20];
      if (v21)
      {
        deviceMemory = [tensorCopy deviceMemory];
        [deviceMemory addObject:v21];
      }

      else
      {
        deviceMemory = +[MLCLog framework];
        if (os_log_type_enabled(deviceMemory, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE allocateDeviceMemoryForTensor:a2];
        }
      }
    }

    else
    {
      v20 = +[MLCLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE allocateDeviceMemoryForTensor:a2];
      }
    }
  }

  else
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE allocateDeviceMemoryForTensor:a2];
    }
  }

  objc_autoreleasePoolPop(v6);
}

- (void)deallocateDeviceMemoryForTensor:(id)tensor
{
  deviceMemory = [tensor deviceMemory];
  [deviceMemory removeAllObjects];
}

- (BOOL)shareDeviceMemoryWithResultTensor:(id)tensor sourceTensor:(id)sourceTensor
{
  tensorCopy = tensor;
  sourceTensorCopy = sourceTensor;
  if (sourceTensorCopy != tensorCopy)
  {
    v7 = [MEMORY[0x277CBEBF8] mutableCopy];
    [tensorCopy setDeviceMemory:v7];

    deviceMemory = [sourceTensorCopy deviceMemory];
    v9 = [deviceMemory count];

    if (v9)
    {
      v10 = 0;
      do
      {
        deviceMemory2 = [tensorCopy deviceMemory];
        deviceMemory3 = [sourceTensorCopy deviceMemory];
        v13 = [deviceMemory3 objectAtIndexedSubscript:v10];
        [deviceMemory2 addObject:v13];

        ++v10;
        deviceMemory4 = [sourceTensorCopy deviceMemory];
        v15 = [deviceMemory4 count];
      }

      while (v10 < v15);
    }

    sharedMemoryTensor = [sourceTensorCopy sharedMemoryTensor];
    if (sharedMemoryTensor)
    {
      sharedMemoryTensor2 = [sourceTensorCopy sharedMemoryTensor];
      [tensorCopy setSharedMemoryTensor:sharedMemoryTensor2];
    }

    else
    {
      [tensorCopy setSharedMemoryTensor:sourceTensorCopy];
    }

    [tensorCopy setDeviceIndex:{objc_msgSend(sourceTensorCopy, "deviceIndex")}];
  }

  return 1;
}

- (id)getHostPointerIfUnifiedDeviceMemory:(id)memory
{
  memoryCopy = memory;
  if (!VerifyTensorBeforeRead(memoryCopy))
  {
    v23 = 0;
    goto LABEL_15;
  }

  deviceMemory = [memoryCopy deviceMemory];
  v5 = [deviceMemory objectAtIndexedSubscript:{objc_msgSend(memoryCopy, "deviceIndex")}];

  liveIOStatus = [v5 liveIOStatus];
  v7 = [liveIOStatus objectForKeyedSubscript:@"Interleave"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [liveIOStatus objectForKeyedSubscript:@"Type"];
  v10 = ANE_ANECDataTypeToMLCDataType(v9);
  if (unsignedIntegerValue == 1)
  {
    v11 = v10;
    descriptor = [memoryCopy descriptor];
    dataType = [descriptor dataType];

    if (v11 == dataType)
    {
      v26 = 0;
      ANE_GetTensor4DShapeWithOnePrepended(memoryCopy, &v26);
      v14 = v26;
      ioSurfaceObject = [v5 ioSurfaceObject];
      ioSurface = [ioSurfaceObject ioSurface];

      if (ioSurface)
      {
        v17 = [liveIOStatus objectForKeyedSubscript:@"RowStride"];
        unsignedIntegerValue2 = [v17 unsignedIntegerValue];

        v19 = unsignedIntegerValue2 / ANE_GetANEElementByteCount(v11);
        v20 = [v14 objectAtIndexedSubscript:3];
        unsignedIntegerValue3 = [v20 unsignedIntegerValue];

        if (v19 == unsignedIntegerValue3)
        {
          BaseAddress = IOSurfaceGetBaseAddress(ioSurface);
          v23 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:BaseAddress length:IOSurfaceGetAllocSize(ioSurface) freeWhenDone:0];
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {
        v24 = +[MLCLog framework];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE getHostPointerIfUnifiedDeviceMemory:];
        }
      }

      v23 = 0;
      goto LABEL_13;
    }
  }

  v23 = 0;
LABEL_14:

LABEL_15:

  return v23;
}

- (id)readTensor:(id)tensor
{
  tensorCopy = tensor;
  v5 = -[MLCDeviceANE readTensor:fromDeviceIndex:](self, "readTensor:fromDeviceIndex:", tensorCopy, [tensorCopy deviceIndex]);

  return v5;
}

- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index
{
  tensorCopy = tensor;
  v7 = -[MLCDeviceANE readTensor:fromDeviceIndex:batchSize:](self, "readTensor:fromDeviceIndex:batchSize:", tensorCopy, index, [tensorCopy calculateBatchSizeToUse]);

  return v7;
}

- (id)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index batchSize:(unint64_t)size
{
  tensorCopy = tensor;
  v9 = ANE_CalculateImageSizeForTensor(tensorCopy) * size;
  v10 = malloc_type_malloc(v9, 0xF75E1E2AuLL);
  [(MLCDeviceANE *)self readTensor:tensorCopy fromDeviceIndex:index targetBuffer:v10 batchSize:size];

  v11 = MEMORY[0x277CBEA90];

  return [v11 dataWithBytesNoCopy:v10 length:v9 freeWhenDone:1];
}

- (void)readTensor:(id)tensor targetBuffer:(void *)buffer
{
  tensorCopy = tensor;
  v6 = [(MLCDeviceANE *)self getHostPointerIfUnifiedDeviceMemory:?];
  if ([v6 bytes] != buffer)
  {
    -[MLCDeviceANE readTensor:fromDeviceIndex:targetBuffer:batchSize:](self, "readTensor:fromDeviceIndex:targetBuffer:batchSize:", tensorCopy, [tensorCopy deviceIndex], buffer, objc_msgSend(tensorCopy, "calculateBatchSizeToUse"));
  }
}

- (void)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index targetBuffer:(void *)buffer batchSize:(unint64_t)size
{
  v25 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  if (VerifyTensorBeforeRead(tensorCopy))
  {
    if ([tensorCopy deviceIndex] != index)
    {
      v12 = +[MLCLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(a2);
        v19 = 138412802;
        v20 = v18;
        v21 = 2048;
        sizeCopy = [tensorCopy deviceIndex];
        v23 = 2048;
        indexCopy = index;
        _os_log_error_impl(&dword_238C1D000, v12, OS_LOG_TYPE_ERROR, "%@: -readTensor:fromDeviceIndex:targetBuffer:batchSize must be called with deviceIndex = %lu, but given deviceIndex = %lu", &v19, 0x20u);
      }

      goto LABEL_13;
    }

    deviceMemory = [tensorCopy deviceMemory];
    v12 = [deviceMemory objectAtIndexedSubscript:index];

    liveIOStatus = [v12 liveIOStatus];
    calculateBatchSizeToUse = [tensorCopy calculateBatchSizeToUse];
    if (calculateBatchSizeToUse >= size)
    {
      if (ANE_ReadOutputTensor(tensorCopy, liveIOStatus, index, buffer, size))
      {
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE readTensor:fromDeviceIndex:targetBuffer:batchSize:];
      }
    }

    else
    {
      v15 = calculateBatchSizeToUse;
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(a2);
        v19 = 138412802;
        v20 = v17;
        v21 = 2048;
        sizeCopy = size;
        v23 = 2048;
        indexCopy = v15;
        _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%@: invalid batchSize=%lu. batchSize cannot exceed the batch size of the tensor=%lu", &v19, 0x20u);
      }
    }

    goto LABEL_12;
  }

LABEL_14:
}

- (void)readTensor:(id)tensor fromDeviceIndex:(unint64_t)index targetBuffer:(void *)buffer batchSize:(unint64_t)size reduceOverBatch:(BOOL)batch
{
  v8 = [MLCLog framework:tensor];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCLayerOperations) lossLayerWithDescriptor:a2];
  }
}

- (void)dispatchReadTensor:(id)tensor targetBuffer:(void *)buffer batchSize:(unint64_t)size
{
  tensorCopy = tensor;
  -[MLCDeviceANE readTensor:fromDeviceIndex:targetBuffer:batchSize:](self, "readTensor:fromDeviceIndex:targetBuffer:batchSize:", tensorCopy, [tensorCopy deviceIndex], buffer, size);
}

- (void)broadcastTensor:(id)tensor
{
  tensorCopy = tensor;
  -[MLCDeviceANE writeToAllDevices:allocateData:batchSize:](self, "writeToAllDevices:allocateData:batchSize:", tensorCopy, 0, [tensorCopy calculateBatchSizeToUse]);
}

- (void)writeToAllDevices:(id)devices allocateData:(BOOL)data batchSize:(unint64_t)size
{
  dataCopy = data;
  devicesCopy = devices;
  v9 = devicesCopy;
  if (dataCopy)
  {
    [(MLCDeviceANE *)self allocateDeviceMemoryForTensor:devicesCopy];
    devicesCopy = v9;
  }

  [(MLCDeviceANE *)self writeToDevice:devicesCopy toDeviceIndex:0 batchSize:size];
}

- (void)writeToDevice:(id)device toDeviceIndex:(unint64_t)index batchSize:(unint64_t)size
{
  v38 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  data = [deviceCopy data];
  bytes = [data bytes];

  if (bytes)
  {
    deviceMemory = [deviceCopy deviceMemory];
    v12 = [deviceMemory count];

    if (!v12)
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE writeToDevice:toDeviceIndex:batchSize:];
      }

      goto LABEL_24;
    }

    if ([deviceCopy deviceIndex] != index)
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        v32 = 138412802;
        v33 = v19;
        v34 = 2048;
        sizeCopy = [deviceCopy deviceIndex];
        v36 = 2048;
        indexCopy = index;
        v20 = "%@: -writeToDevice:toDeviceIndex:batchSize must be called with deviceIndex = %lu, but given deviceIndex = %lu";
        goto LABEL_12;
      }

LABEL_24:

      goto LABEL_25;
    }

    deviceMemory2 = [deviceCopy deviceMemory];
    v14 = [deviceMemory2 objectAtIndexedSubscript:index];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE writeToDevice:a2 toDeviceIndex:? batchSize:?];
      }

      goto LABEL_24;
    }

    calculateBatchSizeToUse = [deviceCopy calculateBatchSizeToUse];
    if (calculateBatchSizeToUse < size)
    {
      v17 = calculateBatchSizeToUse;
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        v32 = 138412802;
        v33 = v19;
        v34 = 2048;
        sizeCopy = size;
        v36 = 2048;
        indexCopy = v17;
        v20 = "%@: invalid batchSize=%lu. batchSize cannot exceed the batch size of the tensor=%lu";
LABEL_12:
        _os_log_error_impl(&dword_238C1D000, v18, OS_LOG_TYPE_ERROR, v20, &v32, 0x20u);

        goto LABEL_24;
      }

      goto LABEL_24;
    }

    deviceMemory3 = [deviceCopy deviceMemory];
    v18 = [deviceMemory3 objectAtIndexedSubscript:index];

    liveIOStatus = [v18 liveIOStatus];
    v23 = liveIOStatus;
    if (liveIOStatus && [liveIOStatus count])
    {
      ioSurfaceObject = [v18 ioSurfaceObject];
      ioSurface = [ioSurfaceObject ioSurface];

      IOSurfaceLock(ioSurface, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(ioSurface);
      data2 = [deviceCopy data];
      bytes2 = [data2 bytes];
      data3 = [deviceCopy data];
      v30 = ANE_ConvertInputTensor(deviceCopy, v23, bytes2, [data3 length], BaseAddress, size);

      IOSurfaceUnlock(ioSurface, 0, 0);
      if (v30)
      {
LABEL_23:

        goto LABEL_24;
      }

      v31 = +[MLCLog framework];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE writeToDevice:toDeviceIndex:batchSize:];
      }
    }

    else
    {
      v31 = +[MLCLog framework];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE writeToDevice:toDeviceIndex:batchSize:];
      }
    }

    goto LABEL_23;
  }

LABEL_25:
}

- (void)commitAndWaitForCompletion:(id)completion enableProfiling:(BOOL)profiling graphExecutionTime:(id)time graphResultTensor:(id)tensor
{
  profilingCopy = profiling;
  completionCopy = completion;
  timeCopy = time;
  tensorCopy = tensor;
  v11 = 0.0;
  if (profilingCopy)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v11 = Current - *[timeCopy bytes];
  }

  if (tensorCopy)
  {
    data = [tensorCopy data];
    if ([data bytes])
    {
      device = [tensorCopy device];

      if (!device)
      {
        goto LABEL_8;
      }

      data = [tensorCopy device];
      computeEngine = [data computeEngine];
      data2 = [tensorCopy data];
      [computeEngine readTensor:tensorCopy targetBuffer:{objc_msgSend(data2, "bytes")}];
    }
  }

LABEL_8:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, tensorCopy, 0, v11);
  }
}

- (BOOL)allocateDeviceMemoryForSourceAndResultTensorsOfLayer:(id)layer tensorLabelToIOSurfaceMap:(id *)map
{
  v37 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  v7 = [MEMORY[0x277CBEC10] mutableCopy];
  sourceTensors = [layerCopy sourceTensors];
  v9 = [sourceTensors count];

  if (v9)
  {
    v10 = 0;
    do
    {
      sourceTensors2 = [layerCopy sourceTensors];
      v12 = [sourceTensors2 objectAtIndexedSubscript:v10];

      if ((ANE_CanProgramANECConstantTensorUnit(v12) & 1) == 0)
      {
        if ([(MLCDeviceANE *)self needToAllocateDeviceMemoryForTensor:v12])
        {
          [(MLCDeviceANE *)self allocateDeviceMemoryForTensor:v12];
        }

        deviceMemory = [v12 deviceMemory];
        deviceMemory2 = [v12 deviceMemory];
        v15 = [deviceMemory objectAtIndexedSubscript:{objc_msgSend(deviceMemory2, "count") - 1}];

        if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v30 = +[MLCLog framework];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE allocateDeviceMemoryForSourceAndResultTensorsOfLayer:tensorLabelToIOSurfaceMap:];
          }

LABEL_25:
          v28 = 0;
          goto LABEL_26;
        }

        label = [v12 label];
        [v7 setObject:v15 forKeyedSubscript:label];
      }

      ++v10;
      sourceTensors3 = [layerCopy sourceTensors];
      v18 = [sourceTensors3 count];
    }

    while (v10 < v18);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  resultTensors = [layerCopy resultTensors];
  v20 = [resultTensors countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(resultTensors);
        }

        v24 = *(*(&v32 + 1) + 8 * i);
        [(MLCDeviceANE *)self allocateDeviceMemoryForTensor:v24];
        v25 = ANE_GetDeviceMemoryData(v24);
        if (!v25)
        {
          v29 = +[MLCLog framework];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE allocateDeviceMemoryForSourceAndResultTensorsOfLayer:tensorLabelToIOSurfaceMap:];
          }

          goto LABEL_25;
        }

        v26 = v25;
        label2 = [v24 label];
        [v7 setObject:v26 forKeyedSubscript:label2];
      }

      v21 = [resultTensors countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  *map = [v7 copy];
  v28 = 1;
LABEL_26:

  return v28;
}

- (BOOL)procedureInformationWithModelAttributes:(id)attributes procedureName:(id)name procedureID:(unint64_t *)d procedureInputSymbols:(id *)symbols procedureInputSymbolIndices:(id *)indices procedureOutputSymbols:(id *)outputSymbols procedureOutputSymbolIndices:(id *)symbolIndices
{
  v83 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  nameCopy = name;
  if (softLinkObjcConstantkANEFModelDescriptionKey_once_token != -1)
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
  }

  v15 = softLinkObjcConstantkANEFModelDescriptionKey_constant;
  if (softLinkObjcConstantkANEFModelProcedureNameToIDMapKey_once_token != -1)
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
  }

  v16 = softLinkObjcConstantkANEFModelProcedureNameToIDMapKey_constant;
  v66 = attributesCopy;
  if (softLinkObjcConstantkANEFModelProceduresArrayKey_once_token != -1)
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
  }

  v17 = softLinkObjcConstantkANEFModelProceduresArrayKey_constant;
  if (softLinkObjcConstantkANEFModelInputSymbolIndexArrayKey_once_token != -1)
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
  }

  v18 = softLinkObjcConstantkANEFModelInputSymbolIndexArrayKey_constant;
  if (softLinkObjcConstantkANEFModelInputSymbolsArrayKey_once_token != -1)
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
  }

  v19 = softLinkObjcConstantkANEFModelInputSymbolsArrayKey_constant;
  if (softLinkObjcConstantkANEFModelOutputSymbolIndexArrayKey_once_token != -1)
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
  }

  v20 = softLinkObjcConstantkANEFModelOutputSymbolIndexArrayKey_constant;
  if (softLinkObjcConstantkANEFModelOutputSymbolsArrayKey_once_token == -1)
  {
    if (!v15)
    {
      goto LABEL_42;
    }
  }

  else
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:];
    if (!v15)
    {
      goto LABEL_42;
    }
  }

  if (v16 && v17 && v18 && v19 && v20 && softLinkObjcConstantkANEFModelOutputSymbolsArrayKey_constant)
  {
    v57 = softLinkObjcConstantkANEFModelOutputSymbolsArrayKey_constant;
    v58 = v20;
    symbolsCopy = symbols;
    indicesCopy = indices;
    outputSymbolsCopy = outputSymbols;
    v21 = [v66 objectForKeyedSubscript:*v15];
    v22 = MEMORY[0x277CBEBF8];
    v23 = [MEMORY[0x277CBEBF8] mutableCopy];
    v24 = [v22 mutableCopy];
    v25 = [v21 objectForKeyedSubscript:*v16];
    v26 = [v25 objectForKeyedSubscript:nameCopy];
    unsignedIntegerValue = [v26 unsignedIntegerValue];

    v28 = v21;
    v29 = [v21 objectForKeyedSubscript:*v17];
    v30 = [v29 count];
    v31 = unsignedIntegerValue < v30;
    if (unsignedIntegerValue >= v30)
    {
      v49 = +[MLCLog framework];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        v51 = v50 = unsignedIntegerValue;
        *buf = 138412802;
        v78 = v51;
        v79 = 2048;
        v80 = v50;
        v81 = 2048;
        v82 = [v29 count];
        _os_log_error_impl(&dword_238C1D000, v49, OS_LOG_TYPE_ERROR, "%@: procedureID=%lu can not exceed the count of procedures=%lu", buf, 0x20u);
      }

      v48 = v66;
    }

    else
    {
      v56 = nameCopy;
      v53 = unsignedIntegerValue;
      v54 = v29;
      v59 = [v29 objectAtIndexedSubscript:unsignedIntegerValue];
      v32 = [v59 objectForKeyedSubscript:*v18];
      aSelectora = v28;
      v33 = [v28 objectForKeyedSubscript:*v19];
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v34 = v32;
      v35 = [v34 countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v72;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v72 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = [v33 objectAtIndexedSubscript:{objc_msgSend(*(*(&v71 + 1) + 8 * i), "unsignedIntegerValue")}];
            [v23 addObject:v39];
          }

          v36 = [v34 countByEnumeratingWithState:&v71 objects:v76 count:16];
        }

        while (v36);
      }

      v55 = v31;

      v40 = [v59 objectForKeyedSubscript:*v58];
      v41 = [aSelectora objectForKeyedSubscript:*v57];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v42 = v40;
      v43 = [v42 countByEnumeratingWithState:&v67 objects:v75 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v68;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v68 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = [v41 objectAtIndexedSubscript:{objc_msgSend(*(*(&v67 + 1) + 8 * j), "unsignedIntegerValue")}];
            [v24 addObject:v47];
          }

          v44 = [v42 countByEnumeratingWithState:&v67 objects:v75 count:16];
        }

        while (v44);
      }

      *d = v53;
      *symbolsCopy = [v23 copy];
      *indicesCopy = [v34 copy];
      *outputSymbolsCopy = [v24 copy];
      *symbolIndices = [v42 copy];

      v48 = v66;
      nameCopy = v56;
      v28 = aSelectora;
      v31 = v55;
      v29 = v54;
      v49 = v59;
    }

    goto LABEL_45;
  }

LABEL_42:
  v28 = +[MLCLog framework];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE procedureInformationWithModelAttributes:a2 procedureName:? procedureID:? procedureInputSymbols:? procedureInputSymbolIndices:? procedureOutputSymbols:? procedureOutputSymbolIndices:?];
  }

  v31 = 0;
  v48 = v66;
LABEL_45:

  return v31;
}

- (id)ANERequestWithModelAttributes:(id)attributes procedureName:(id)name tensorLabelToIOSurfaceMap:(id)map
{
  v52 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  nameCopy = name;
  mapCopy = map;
  if ([mapCopy count])
  {
    v44 = 0;
    v45 = -1;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v12 = [(MLCDeviceANE *)self procedureInformationWithModelAttributes:attributesCopy procedureName:nameCopy procedureID:&v45 procedureInputSymbols:&v44 procedureInputSymbolIndices:&v43 procedureOutputSymbols:&v42 procedureOutputSymbolIndices:&v41];
    v39 = v44;
    v13 = v43;
    v38 = v42;
    v14 = v41;
    if (v12)
    {
      v15 = MEMORY[0x277CBEBF8];
      log = [MEMORY[0x277CBEBF8] mutableCopy];
      v16 = [v15 mutableCopy];
      if ([v13 count])
      {
        v17 = 0;
        while (1)
        {
          v18 = [v13 objectAtIndexedSubscript:v17];
          [v16 addObject:v18];

          v19 = [v39 objectAtIndexedSubscript:v17];
          v20 = [mapCopy objectForKeyedSubscript:v19];
          ioSurfaceObject = [v20 ioSurfaceObject];

          if (!ioSurfaceObject)
          {
            break;
          }

          [log addObject:ioSurfaceObject];

          if (++v17 >= [v13 count])
          {
            goto LABEL_7;
          }
        }

        v23 = +[MLCLog framework];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE ANERequestWithModelAttributes:procedureName:tensorLabelToIOSurfaceMap:];
        }

        v31 = 0;
      }

      else
      {
LABEL_7:
        v36 = nameCopy;
        v37 = attributesCopy;
        v22 = MEMORY[0x277CBEBF8];
        v19 = [MEMORY[0x277CBEBF8] mutableCopy];
        v23 = [v22 mutableCopy];
        v24 = [v14 count];
        if (v24)
        {
          v25 = 0;
          while (1)
          {
            v26 = [v14 objectAtIndexedSubscript:v25];
            [v23 addObject:v26];

            v27 = [v38 objectAtIndexedSubscript:v25];
            v28 = [mapCopy objectForKeyedSubscript:v27];
            ioSurfaceObject2 = [v28 ioSurfaceObject];

            if (!ioSurfaceObject2)
            {
              break;
            }

            [v19 addObject:ioSurfaceObject2];

            ++v25;
            v24 = [v14 count];
            if (v25 >= v24)
            {
              goto LABEL_11;
            }
          }

          v33 = +[MLCLog framework];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE ANERequestWithModelAttributes:procedureName:tensorLabelToIOSurfaceMap:];
          }

          v31 = 0;
        }

        else
        {
LABEL_11:
          v30 = softLinkClass_ANERequest(v24);
          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45];
          v31 = [v30 requestWithInputs:log inputIndices:v16 outputs:v19 outputIndices:v23 procedureIndex:v27];
        }

        nameCopy = v36;

        attributesCopy = v37;
      }
    }

    else
    {
      log = +[MLCLog framework];
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v35 = NSStringFromSelector(a2);
        *buf = 138412802;
        v47 = v35;
        v48 = 2112;
        v49 = nameCopy;
        v50 = 2112;
        v51 = attributesCopy;
        _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%@: failed to get procedure information for procedure name=%@ from model attributes=%@", buf, 0x20u);
      }

      v31 = 0;
    }
  }

  else
  {
    v32 = +[MLCLog framework];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE ANERequestWithModelAttributes:a2 procedureName:? tensorLabelToIOSurfaceMap:?];
    }

    v31 = 0;
  }

  return v31;
}

- (BOOL)postProcessCompiledGraph:(id)graph compilerOptions:(unint64_t)options
{
  optionsCopy = options;
  v117[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  graphLayerList = [graphCopy graphLayerList];
  v9 = [graphLayerList count];

  if (!v9)
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE postProcessCompiledGraph:compilerOptions:];
    }

    v34 = 0;
    goto LABEL_81;
  }

  selfCopy = self;
  aSelector = a2;
  v10 = optionsCopy & 6;
  v11 = [MEMORY[0x277CBEBF8] mutableCopy];
  v12 = [MEMORY[0x277CBEC10] mutableCopy];
  graphLayerList2 = [graphCopy graphLayerList];
  v14 = [graphLayerList2 count];

  if (v14)
  {
    v15 = 0;
    v16 = 0x277CCA000uLL;
    do
    {
      graphLayerList3 = [graphCopy graphLayerList];
      v18 = [graphLayerList3 objectAtIndexedSubscript:v15];

      if (([v18 skipLayer]& 1) == 0 && ANE_IsAneCompiledLayer(v18))
      {
        deviceOps = [v18 deviceOps];
        v20 = [deviceOps objectAtIndexedSubscript:0];
        plistBuilder = [v20 plistBuilder];

        if (!plistBuilder)
        {
          v73 = +[MLCLog framework];
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE postProcessCompiledGraph:compilerOptions:];
          }

          goto LABEL_79;
        }

        v22 = [*(v16 + 2992) numberWithUnsignedLong:plistBuilder];
        v23 = [v12 objectForKeyedSubscript:v22];

        if (v23)
        {
          v24 = [v12 objectForKeyedSubscript:v22];
          [v24 addObject:v18];
        }

        else
        {
          [v11 addObject:plistBuilder];
          v117[0] = v18;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:1];
          v92 = v18;
          v25 = graphCopy;
          v26 = v10;
          v27 = v16;
          v28 = v11;
          v29 = v12;
          v30 = [v24 mutableCopy];
          [v29 setObject:v30 forKeyedSubscript:v22];

          v12 = v29;
          v11 = v28;
          v16 = v27;
          v10 = v26;
          graphCopy = v25;
          v18 = v92;
        }

        if (v10 && ([plistBuilder buildProcedureWithLayer:v18] & 1) == 0)
        {
          v75 = +[MLCLog framework];
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE postProcessCompiledGraph:compilerOptions:];
          }

          goto LABEL_79;
        }
      }

      ++v15;
      graphLayerList4 = [graphCopy graphLayerList];
      v32 = [graphLayerList4 count];
    }

    while (v15 < v32);
  }

  if (![v11 count])
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [MLCDeviceANE postProcessCompiledGraph:v18 compilerOptions:?];
    }

    goto LABEL_65;
  }

  v33 = [v11 count];
  if (v10)
  {
    if (v33 > 0x10)
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE postProcessCompiledGraph:compilerOptions:];
      }

LABEL_79:
      v34 = 0;
      goto LABEL_80;
    }
  }

  else if (v33 != 1)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCDeviceANE postProcessCompiledGraph:? compilerOptions:?];
    }

    goto LABEL_79;
  }

  v105 = 0u;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  v18 = v11;
  v35 = [v18 countByEnumeratingWithState:&v102 objects:v116 count:16];
  if (!v35)
  {
LABEL_65:
    v34 = 1;
    goto LABEL_80;
  }

  v37 = *v103;
  v38 = 0x278A68000uLL;
  v39 = 0x277CCA000uLL;
  *&v36 = 138412802;
  v77 = v36;
  v82 = v11;
  v83 = v12;
  v78 = *v103;
  while (2)
  {
    v40 = 0;
    v79 = v35;
    do
    {
      if (*v103 != v37)
      {
        objc_enumerationMutation(v18);
      }

      v80 = v40;
      v41 = *(*(&v102 + 1) + 8 * v40);
      aneUserInteractiveTaskQoS = [softLinkClass_ANEQoSMapper(v35) aneUserInteractiveTaskQoS];
      plist = [v41 plist];
      v43 = [plist copy];

      v88 = objc_autoreleasePoolPush();
      weightOps = [v41 weightOps];
      weights = [weightOps weights];
      v46 = [weights copy];

      if ([*(v38 + 3160) isAnePlistKept])
      {
        ANE_WriteANEModelFiles(v43, v46);
      }

      v47 = *(v39 + 3160);
      v101 = 0;
      v84 = v43;
      v48 = [v47 dataWithPropertyList:v43 format:100 options:0 error:{&v101, v77}];
      v49 = v101;
      v50 = v49;
      if (v48)
      {
        v51 = [softLinkClass_ANEInMemoryModelDescriptor(v49) modelWithNetworkDescription:v48 weights:v46 optionsPlist:0];
        v52 = v51;
        if (v51)
        {
          obj = v46;
          v53 = [softLinkClass_ANEInMemoryModel(v51) inMemoryModelWithDescriptor:v51];
          v100 = v50;
          v93 = v53;
          v54 = [v53 loadWithQoS:aneUserInteractiveTaskQoS options:MEMORY[0x277CBEC10] error:&v100];
          v55 = v100;

          [v41 releaseWeights];
          if (v54)
          {
            v56 = 1;
            v50 = v55;
            v46 = obj;
            v57 = v88;
            goto LABEL_47;
          }

          v58 = +[MLCLog framework];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v72 = NSStringFromSelector(aSelector);
            *buf = v77;
            v109 = v72;
            v110 = 2112;
            v111 = v93;
            v112 = 2112;
            v113 = v55;
            _os_log_error_impl(&dword_238C1D000, v58, OS_LOG_TYPE_ERROR, "%@: failed to load model=%@ : error=%@", buf, 0x20u);
          }

          v50 = v55;
          v46 = obj;
          v57 = v88;
        }

        else
        {
          v58 = +[MLCLog framework];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE postProcessCompiledGraph:v114 compilerOptions:aSelector];
          }

          v93 = 0;
          v57 = v88;
        }
      }

      else
      {
        v52 = +[MLCLog framework];
        v57 = v88;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE postProcessCompiledGraph:v115 compilerOptions:aSelector];
        }

        v93 = 0;
      }

      v56 = 0;
LABEL_47:

      objc_autoreleasePoolPop(v57);
      if (!v56)
      {
LABEL_75:

        v34 = 0;
        v12 = v83;
        goto LABEL_80;
      }

      v89 = [_MLCANEModel objectWithModel:v93 options:MEMORY[0x277CBEC10] qos:aneUserInteractiveTaskQoS plist:v84];
      v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v41];
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v12 = v83;
      obja = [v83 objectForKeyedSubscript:v59];
      v60 = [obja countByEnumeratingWithState:&v96 objects:v107 count:16];
      if (v60)
      {
        v61 = v60;
        v91 = *v97;
        v81 = v59;
        while (2)
        {
          for (i = 0; i != v61; ++i)
          {
            if (*v97 != v91)
            {
              objc_enumerationMutation(obja);
            }

            v63 = *(*(&v96 + 1) + 8 * i);
            deviceOps2 = [v63 deviceOps];
            v65 = [deviceOps2 objectAtIndexedSubscript:0];

            v95 = 0;
            v66 = [(MLCDeviceANE *)selfCopy allocateDeviceMemoryForSourceAndResultTensorsOfLayer:v63 tensorLabelToIOSurfaceMap:&v95];
            v67 = v95;
            if (!v66)
            {
              v74 = +[MLCLog framework];
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                [MLCDeviceANE postProcessCompiledGraph:compilerOptions:];
              }

LABEL_74:
              v11 = v82;
              goto LABEL_75;
            }

            procedureName = [v65 procedureName];
            modelAttributes = [v93 modelAttributes];
            v70 = [(MLCDeviceANE *)selfCopy ANERequestWithModelAttributes:modelAttributes procedureName:procedureName tensorLabelToIOSurfaceMap:v67];

            if (v70)
            {
              [v65 setRequest:v70];
              [v65 setModel:v89];
            }

            else
            {
              v71 = +[MLCLog framework];
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                [MLCDeviceANE postProcessCompiledGraph:v106 compilerOptions:aSelector];
              }
            }

            if (!v70)
            {
              goto LABEL_74;
            }
          }

          v61 = [obja countByEnumeratingWithState:&v96 objects:v107 count:16];
          v12 = v83;
          v59 = v81;
          if (v61)
          {
            continue;
          }

          break;
        }
      }

      v35 = v79;
      v40 = v80 + 1;
      v11 = v82;
      v37 = v78;
      v38 = 0x278A68000;
      v39 = 0x277CCA000;
    }

    while (v80 + 1 != v79);
    v35 = [v18 countByEnumeratingWithState:&v102 objects:v116 count:16];
    v34 = 1;
    if (v35)
    {
      continue;
    }

    break;
  }

LABEL_80:

LABEL_81:
  return v34;
}

- (BOOL)transferTensor:(id)tensor fromDevice:(id)device
{
  v52 = *MEMORY[0x277D85DE8];
  tensorCopy = tensor;
  deviceCopy = device;
  if (deviceCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (self != deviceCopy || (isKindOfClass & 1) == 0)
    {
      deviceIndex = [tensorCopy deviceIndex];
      deviceMemory = [tensorCopy deviceMemory];
      v13 = [deviceMemory objectAtIndexedSubscript:deviceIndex];
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();

      if ((v14 & 1) == 0)
      {
        v20 = +[MLCLog framework];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = NSStringFromSelector(a2);
          deviceMemory2 = [tensorCopy deviceMemory];
          v23 = [deviceMemory2 objectAtIndexedSubscript:deviceIndex];
          *buf = 138412546;
          v49 = v21;
          v50 = 2112;
          v51 = objc_opt_class();
          v24 = v51;
          _os_log_error_impl(&dword_238C1D000, v20, OS_LOG_TYPE_ERROR, "%@: unsupported device memory class=%@", buf, 0x16u);
        }

        goto LABEL_22;
      }

      deviceMemory3 = [tensorCopy deviceMemory];
      v16 = [deviceMemory3 count];

      deviceMemory4 = [tensorCopy deviceMemory];
      v18 = [deviceMemory4 count];

      if (v18 == 1)
      {
        [(MLCDeviceANE *)self allocateDeviceMemoryForTensor:tensorCopy];
        deviceMemory5 = [tensorCopy deviceMemory];
        if ([deviceMemory5 count] == 1)
        {

          goto LABEL_18;
        }

        deviceMemory6 = [tensorCopy deviceMemory];
        v16 = 1;
        v34 = [deviceMemory6 objectAtIndexedSubscript:1];
        objc_opt_class();
        v35 = objc_opt_isKindOfClass();

        if ((v35 & 1) == 0)
        {
LABEL_18:
          v20 = +[MLCLog framework];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE transferTensor:fromDevice:];
          }

LABEL_22:
          v10 = 0;
LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
        deviceMemory7 = [tensorCopy deviceMemory];
        v26 = [deviceMemory7 count];

        if (v26 != 2)
        {
          v20 = +[MLCLog framework];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE transferTensor:fromDevice:];
          }

          goto LABEL_22;
        }

        deviceMemory8 = [tensorCopy deviceMemory];
        v28 = [deviceMemory8 count];

        if (v28)
        {
          v29 = 0;
          while (1)
          {
            deviceMemory9 = [tensorCopy deviceMemory];
            v31 = [deviceMemory9 objectAtIndexedSubscript:v29];
            objc_opt_class();
            v32 = objc_opt_isKindOfClass();

            if (v32)
            {
              break;
            }

            if (v28 == ++v29)
            {
              goto LABEL_26;
            }
          }

          v16 = v29;
        }
      }

LABEL_26:
      calculateBatchSizeToUse = [tensorCopy calculateBatchSizeToUse];
      deviceMemory10 = [tensorCopy deviceMemory];
      v20 = [deviceMemory10 objectAtIndexedSubscript:v16];

      liveIOStatus = [v20 liveIOStatus];
      v40 = liveIOStatus;
      if (liveIOStatus && [liveIOStatus count])
      {
        ioSurfaceObject = [v20 ioSurfaceObject];
        ioSurface = [ioSurfaceObject ioSurface];

        IOSurfaceLock(ioSurface, 0, 0);
        BaseAddress = IOSurfaceGetBaseAddress(ioSurface);
        [tensorCopy deviceMemory];
        v44 = v43 = calculateBatchSizeToUse;
        v45 = [v44 objectAtIndexedSubscript:deviceIndex];

        v10 = ANE_ConvertInputTensor(tensorCopy, v40, [v45 bytes], [v45 length], BaseAddress, v43);
        IOSurfaceUnlock(ioSurface, 0, 0);
        if (v10)
        {
          [tensorCopy setDeviceIndex:v16];
        }

        else
        {
          v46 = +[MLCLog framework];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            [MLCDeviceANE transferTensor:fromDevice:];
          }
        }
      }

      else
      {
        v45 = +[MLCLog framework];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [MLCDeviceANE transferTensor:fromDevice:];
        }

        v10 = 0;
      }

      goto LABEL_23;
    }
  }

  v10 = 1;
LABEL_24:

  return v10;
}

- (void)setDeviceMemoryForTensor:(id)tensor data:(id)data
{
  v5 = [MLCLog framework:tensor];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE setDeviceMemoryForTensor:a2 data:?];
  }
}

- (BOOL)updateDeviceMemoryForTensor:(id)tensor
{
  tensorCopy = tensor;
  deviceMemory = [tensorCopy deviceMemory];
  v6 = [deviceMemory count];

  if (!v6)
  {
    goto LABEL_13;
  }

  deviceMemory2 = [tensorCopy deviceMemory];
  v8 = [deviceMemory2 count];

  if (v8 < 3)
  {
    deviceMemory3 = [tensorCopy deviceMemory];
    v11 = [deviceMemory3 count];

    if (!v11)
    {
LABEL_9:
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MLCDeviceANE updateDeviceMemoryForTensor:a2];
      }

      goto LABEL_11;
    }

    v12 = 0;
    while (1)
    {
      deviceMemory4 = [tensorCopy deviceMemory];
      v14 = [deviceMemory4 objectAtIndexedSubscript:v12];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_9;
      }
    }

    [tensorCopy setDeviceIndex:v12];
LABEL_13:
    v16 = 1;
    goto LABEL_14;
  }

  v9 = +[MLCLog framework];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE updateDeviceMemoryForTensor:a2];
  }

LABEL_11:

  v16 = 0;
LABEL_14:

  return v16;
}

- (void)dispatchForwardLayer:(id)layer
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [layer objectAtIndexedSubscript:0];
  model = [v4 model];
  anefModel = [model anefModel];

  request = [v4 request];
  model2 = [v4 model];
  v9 = [model2 qos];
  model3 = [v4 model];
  options = [model3 options];
  v16 = 0;
  v12 = [anefModel evaluateWithQoS:v9 options:options request:request error:&v16];
  v13 = v16;

  if ((v12 & 1) == 0)
  {
    v14 = +[MLCLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      *buf = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = anefModel;
      v21 = 2112;
      v22 = v13;
      _os_log_error_impl(&dword_238C1D000, v14, OS_LOG_TYPE_ERROR, "%@: failed to evaluate model=%@ : error=%@", buf, 0x20u);
    }
  }
}

- (void)dispatchForwardConcatLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardSplitLayer:(id)layer sourceTensor:(id)tensor resultTensors:(id)tensors
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientConcatLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientSplitLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensor:(id)tensor
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardLayer:(id)layer sourceTensor:(id)tensor secondaryTensor:(id)secondaryTensor tertiaryTensor:(id)tertiaryTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training
{
  v10 = [MLCLog framework:layer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardFusedArithmeticLayerNormalizationLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)dispatchForwardLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)self0
{
  v11 = [MLCLog framework:layer];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor secondaryResultGradientTensor:(id)resultGradientTensor
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientLossLayer:(id)layer sourceGradientTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultGradientTensor:(id)gradientTensor
{
  v9 = [MLCLog framework:layer];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardAndGradientLossLayer:(id)layer sourceTensor:(id)tensor labelsTensor:(id)labelsTensor labelsTensorStride:(unint64_t)stride weightsTensor:(id)weightsTensor resultTensor:(id)resultTensor resultGradientTensor:(id)gradientTensor
{
  v10 = [MLCLog framework:layer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchRNNForwardLayer:(id)layer sourceTensors:(id)tensors resultTensors:(id)resultTensors
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchRNNForwardLayer:(id)layer sourceTensors:(id)tensors resultTensors:(id)resultTensors resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchRNNGradientLayer:(id)layer sourceGradientTensors:(id)tensors resultGradientTensors:(id)gradientTensors
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)incrementReadCountForTensorDeviceMemory:(id)memory increment:(int64_t)increment
{
  v5 = [MLCLog framework:memory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)incrementReadCountForGradientState:(id)state increment:(int64_t)increment
{
  v5 = [MLCLog framework:state];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardMHALayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientMHALayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors resultStateIsTemporary:(BOOL)temporary
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardMatMulLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientMatMulLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensors:(id)tensors
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardSliceLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor forTraining:(BOOL)training
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardReshapeLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor resultStateIsTemporary:(BOOL)temporary forTraining:(BOOL)training
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientSliceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientReshapeLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor
{
  v6 = [MLCLog framework:layer];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardEmbeddingLayer:(id)layer weight:(id)weight sourceTensor:(id)tensor resultTensor:(id)resultTensor
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchGradientEmbeddingLayer:(id)layer sourceGradientTensor:(id)tensor
{
  v5 = [MLCLog framework:layer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)dispatchForwardReduceLayer:(id)layer sourceTensor:(id)tensor resultTensor:(id)resultTensor reductionType:(int)type reduceDimensions:(id)dimensions forTraining:(BOOL)training
{
  v9 = [MLCLog framework:layer];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)dispatchGradientReduceLayer:(id)layer sourceGradientTensor:(id)tensor resultGradientTensor:(id)gradientTensor reductionType:(int)type reduceDimensions:(id)dimensions
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)dispatchForwardSelectLayer:(id)layer conditionTensor:(id)tensor sourceTensors:(id)tensors resultTensor:(id)resultTensor forTraining:(BOOL)training
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)dispatchGradientSelectLayer:(id)layer conditionTensor:(id)tensor sourceGradientTensor:(id)gradientTensor resultGradientTensors:(id)tensors
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)dispatchForwardCompareLayer:(id)layer sourceTensor:(id)tensor secondaryTensor:(id)secondaryTensor resultTensor:(id)resultTensor compareOp:(int)op forTraining:(BOOL)training
{
  v9 = [MLCLog framework:layer];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)optimizeComputationForTrainingGraph:(id)graph
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)dispatchForwardGatherLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)dispatchForwardScatterLayer:(id)layer sourceTensors:(id)tensors resultTensor:(id)tensor forTraining:(BOOL)training
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardFusedArithmeticLayerNormalizationLayer:a2 sourceTensors:? resultTensor:? forTraining:?];
  }
}

- (void)sumSharedGradientsForConvolutionLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients
{
  v5 = [MLCLog framework:parameter];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLComputeEngineOptimizerUpdate) sumSharedGradientsForConvolutionLayerTensorParameter:a2 layerIndexForSummedGradients:?];
  }
}

- (void)sumSharedGradientsForNormalizationLayerTensorParameter:(id)parameter layerIndexForSummedGradients:(unint64_t)gradients isBetaTensor:(BOOL)tensor
{
  v6 = [MLCLog framework:parameter];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLComputeEngineOptimizerUpdate) sumSharedGradientsForConvolutionLayerTensorParameter:a2 layerIndexForSummedGradients:?];
  }
}

- (void)updateConvolutionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateFullyConnectedLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateBatchNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter meanTensor:(id)tensor varianceTensor:(id)varianceTensor arrayOfParams:(id)params
{
  v10 = [MLCLog framework:layer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateInstanceNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateLayerNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateGroupNormalizationLayer:(id)layer optimizer:(id)optimizer betaParameter:(id)parameter gammaParameter:(id)gammaParameter arrayOfParams:(id)params
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateRNNLayer:(id)layer optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v9 = [MLCLog framework:layer];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)restoreRNNParamsWithDeviceOps:(id)ops optimizer:(id)optimizer inputWeightsParameter:(id)parameter hiddenWeightsParameter:(id)weightsParameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v9 = [MLCLog framework:ops];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateTensorParameter:(id)parameter optimizer:(id)optimizer gradient:(id)gradient arrayOfParams:(id)params
{
  v7 = [MLCLog framework:parameter];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateMultiheadAttentionLayer:(id)layer optimizer:(id)optimizer weightsParameter:(id)parameter biasesParameter:(id)biasesParameter arrayOfParams:(id)params
{
  v8 = [MLCLog framework:layer];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateEmbeddingLayer:(id)layer weightsParameter:(id)parameter optimizer:(id)optimizer arrayOfParams:(id)params
{
  v7 = [MLCLog framework:layer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)synchronizeUpdatesForLayer:(id)layer
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)synchronizeOptimizerUpdatesForTensor:(id)tensor
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)convertUpdatesToTensorDataForLayer:(id)layer
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)convertUpdatesToTensorDataForTensorParameters:(id)parameters
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)setOptimizerLearningRate:(id)rate learningRate:(float)learningRate
{
  v5 = +[MLCLog framework];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)setOptimizerTimeStep:(id)step timeStep:(unint64_t)timeStep
{
  v5 = [MLCLog framework:step];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)reloadParameterDataFromHostToDeviceMemoryForTensor:(id)tensor
{
  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)accumulateParams:(void *)params gradients:(void *)gradients accumulators:(void *)accumulators numOfParameters:(unint64_t)parameters inArrayOfParams:(id)ofParams
{
  v8 = [MLCLog framework:params];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)updateAllParametersWithOptimizer:(id)optimizer arrayOfParameters:(id)parameters
{
  v5 = [MLCLog framework:optimizer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCDeviceANE(MLCEngineDispatch) dispatchForwardConcatLayer:a2 sourceTensors:? resultTensor:?];
  }
}

- (void)initWithType:(const char *)a1 .cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)allocateDeviceMemoryForTensor:(const char *)a1 .cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)allocateDeviceMemoryForTensor:(const char *)a1 .cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)allocateDeviceMemoryForTensor:(const char *)a1 .cold.3(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)getHostPointerIfUnifiedDeviceMemory:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6(&dword_238C1D000, v0, v1, "%s: no IOSurface allocated for tensor=%@", v2, v3, v4, v5, v6);
}

- (void)readTensor:fromDeviceIndex:targetBuffer:batchSize:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)writeToDevice:(const char *)a1 toDeviceIndex:batchSize:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)writeToDevice:toDeviceIndex:batchSize:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)writeToDevice:toDeviceIndex:batchSize:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)writeToDevice:toDeviceIndex:batchSize:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)allocateDeviceMemoryForSourceAndResultTensorsOfLayer:tensorLabelToIOSurfaceMap:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)procedureInformationWithModelAttributes:(const char *)a1 procedureName:procedureID:procedureInputSymbols:procedureInputSymbolIndices:procedureOutputSymbols:procedureOutputSymbolIndices:.cold.8(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)ANERequestWithModelAttributes:procedureName:tensorLabelToIOSurfaceMap:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)ANERequestWithModelAttributes:procedureName:tensorLabelToIOSurfaceMap:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)ANERequestWithModelAttributes:(const char *)a1 procedureName:tensorLabelToIOSurfaceMap:.cold.3(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)postProcessCompiledGraph:compilerOptions:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)postProcessCompiledGraph:compilerOptions:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)postProcessCompiledGraph:compilerOptions:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)postProcessCompiledGraph:(const char *)a1 compilerOptions:.cold.4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)postProcessCompiledGraph:(uint64_t)a1 compilerOptions:(uint64_t)a2 .cold.5(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_1(a1, a2);
  v5 = NSStringFromSelector(v4);
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_6_1(&dword_238C1D000, v6, v7, "%@: failed to create ANE model descriptor");
}

- (void)postProcessCompiledGraph:(uint64_t)a1 compilerOptions:(uint64_t)a2 .cold.6(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_1(a1, a2);
  v5 = NSStringFromSelector(v4);
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_6_1(&dword_238C1D000, v6, v7, "%@: failed to convert the ANEC IR plist in dictionary to NSData");
}

- (void)postProcessCompiledGraph:compilerOptions:.cold.7()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)postProcessCompiledGraph:(uint64_t)a1 compilerOptions:(uint64_t)a2 .cold.8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_1(a1, a2);
  v5 = NSStringFromSelector(v4);
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_6_1(&dword_238C1D000, v6, v7, "%@: failed to build an ANE request");
}

- (void)postProcessCompiledGraph:(const char *)a1 compilerOptions:(NSObject *)a2 .cold.9(const char *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_238C1D000, a2, OS_LOG_TYPE_DEBUG, "%@: no ANE compiled layer in the graph", v4, 0xCu);
}

- (void)postProcessCompiledGraph:compilerOptions:.cold.10()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)transferTensor:fromDevice:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)transferTensor:fromDevice:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)transferTensor:fromDevice:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)transferTensor:fromDevice:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setDeviceMemoryForTensor:(const char *)a1 data:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateDeviceMemoryForTensor:(const char *)a1 .cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateDeviceMemoryForTensor:(const char *)a1 .cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end