@interface _MLCGPULayerNormalization
+ (id)layerWithDevice:(id)device normalizedShape:(id)shape beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon isFusedWithArithmeticLayer:(BOOL)layer;
- (_MLCGPULayerNormalization)initWithDevice:(id)device normalizedShape:(id)shape beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon isFusedWithArithmeticLayer:(BOOL)layer;
@end

@implementation _MLCGPULayerNormalization

- (_MLCGPULayerNormalization)initWithDevice:(id)device normalizedShape:(id)shape beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon isFusedWithArithmeticLayer:(BOOL)layer
{
  layerCopy = layer;
  v75[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  shapeCopy = shape;
  betaCopy = beta;
  gammaCopy = gamma;
  v17 = gammaCopy;
  if ((!betaCopy || gammaCopy) && (betaCopy || !gammaCopy))
  {
    v74.receiver = self;
    v74.super_class = _MLCGPULayerNormalization;
    v20 = [(_MLCGPULayerNormalization *)&v74 init];
    v21 = v20;
    if (v20)
    {
      v61 = v20;
      v62 = v17;
      v63 = betaCopy;
      v65 = [MEMORY[0x277CBEBF8] mutableCopy];
      deviceList = [deviceCopy deviceList];
      v23 = [deviceList count];

      if (v23)
      {
        v24 = 0;
        if (betaCopy)
        {
          v25 = v17 == 0;
        }

        else
        {
          v25 = 1;
        }

        v26 = !v25;
        v66 = v26;
        while (1)
        {
          deviceList2 = [deviceCopy deviceList];
          v28 = [deviceList2 objectAtIndexedSubscript:v24];

          gpuLibrary = [deviceCopy gpuLibrary];
          v30 = [gpuLibrary objectAtIndexedSubscript:v24];
          v31 = [v30 newFunctionWithName:@"layer_norm_forward_training"];

          v32 = [v28 newComputePipelineStateWithFunction:v31 error:0];
          gpuLibrary2 = [deviceCopy gpuLibrary];
          v34 = [gpuLibrary2 objectAtIndexedSubscript:v24];
          v35 = [v34 newFunctionWithName:@"layer_norm_forward_inference"];

          v71 = v35;
          v72 = [v28 newComputePipelineStateWithFunction:v35 error:0];
          gpuLibrary3 = [deviceCopy gpuLibrary];
          v37 = [gpuLibrary3 objectAtIndexedSubscript:v24];
          v38 = [v37 newFunctionWithName:@"layer_norm_gradient"];

          v39 = [v28 newComputePipelineStateWithFunction:v38 error:0];
          gpuLibrary4 = [deviceCopy gpuLibrary];
          v41 = [gpuLibrary4 objectAtIndexedSubscript:v24];
          v42 = [v41 newFunctionWithName:@"layer_norm_compute_beta_gamma_delta"];

          v43 = [v28 newComputePipelineStateWithFunction:v42 error:0];
          v44 = [MLCNormalizationGPUDeviceOps deviceOpsWithForwardKernel:v32 gradientKernel:v39];
          v45 = v44;
          if (v44)
          {
            break;
          }

LABEL_25:

          ++v24;
          deviceList3 = [deviceCopy deviceList];
          v58 = [deviceList3 count];

          if (v24 >= v58)
          {
            goto LABEL_26;
          }
        }

        v68 = v32;
        v69 = v31;
        [v44 setIsMPSKernel:0];
        [v45 setMetalKernelType:4];
        deviceList4 = [deviceCopy deviceList];
        v47 = [deviceList4 count];

        if (v47 >= 2)
        {
          v48 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v45];
          [v45 setNormalizationMultiGPUChildOps:v48];

          if (!v66)
          {
            [v45 setNormalizedShape:shapeCopy];
            *&v56 = epsilon;
            [v45 setVarianceEpsilon:v56];
            [v45 setIsFusedWithArithmeticLayer:layerCopy];
            [v45 setSourceOfForwardNeededForGradient:0];
            [v45 setResultOfForwardNeededForGradient:0];
LABEL_24:
            [v65 addObject:v45];
            v32 = v68;
            v31 = v69;
            goto LABEL_25;
          }

          normalizationMultiGPUChildOps = [v45 normalizationMultiGPUChildOps];
          v75[0] = v62;
          v75[1] = v63;
          v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
          GPU_AllocateResourceForMultiGPUTraining(deviceCopy, normalizationMultiGPUChildOps, v50, v24);
        }

        [v45 setNormalizedShape:shapeCopy];
        *&v51 = epsilon;
        [v45 setVarianceEpsilon:v51];
        [v45 setIsFusedWithArithmeticLayer:layerCopy];
        [v45 setSourceOfForwardNeededForGradient:0];
        [v45 setResultOfForwardNeededForGradient:0];
        if (v66)
        {
          v64 = v43;
          GPU_AllocateExportableGammaBetaStatesWithDevice(v28, v45, v63, v62, v24);
          data = [v62 data];
          v53 = [v28 newBufferWithLength:objc_msgSend(data options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

          data2 = [v63 data];
          v55 = [v28 newBufferWithLength:objc_msgSend(data2 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

          [v45 setNormalizationGammaGradient:v53];
          [v45 setNormalizationBetaGradient:v55];
          [v45 setForwardStatisticsKernel:v72];
          [v45 setGradientStatisticsKernel:v64];

          v43 = v64;
        }

        goto LABEL_24;
      }

LABEL_26:
      v59 = [v65 copy];
      v21 = v61;
      v73.receiver = v61;
      v73.super_class = _MLCGPULayerNormalization;
      [(_MLCGPULayer *)&v73 setDeviceOps:v59];

      v17 = v62;
      betaCopy = v63;
    }

    self = v21;
    selfCopy = self;
    goto LABEL_28;
  }

  v18 = +[MLCLog framework];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [_MLCGPULayerNormalization initWithDevice:a2 normalizedShape:v18 beta:? gamma:? varianceEpsilon:? isFusedWithArithmeticLayer:?];
  }

  selfCopy = 0;
LABEL_28:

  return selfCopy;
}

+ (id)layerWithDevice:(id)device normalizedShape:(id)shape beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon isFusedWithArithmeticLayer:(BOOL)layer
{
  layerCopy = layer;
  gammaCopy = gamma;
  betaCopy = beta;
  shapeCopy = shape;
  deviceCopy = device;
  v18 = [self alloc];
  *&v19 = epsilon;
  v20 = [v18 initWithDevice:deviceCopy normalizedShape:shapeCopy beta:betaCopy gamma:gammaCopy varianceEpsilon:layerCopy isFusedWithArithmeticLayer:v19];

  return v20;
}

- (void)initWithDevice:(const char *)a1 normalizedShape:(NSObject *)a2 beta:gamma:varianceEpsilon:isFusedWithArithmeticLayer:.cold.1(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: Beta and gamma tensors must both be nil or not nil", &v4, 0xCu);
}

@end