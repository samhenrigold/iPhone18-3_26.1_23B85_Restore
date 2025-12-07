@interface _MFXTemporalScalingEffectV3
- (CGPoint)jitterOffset;
- (CGPoint)motionVectorScale;
- (CGPoint)previousJitterOffset;
- (_MFXTemporalScalingEffectV3)initWithDevice:(id)device descriptor:(id)descriptor history:(id)history;
- (__n128)setCurrentViewToClipMatrix:(__n128)matrix;
- (__n128)setCurrentWorldToViewMatrix:(__n128)matrix;
- (__n128)setPreviousViewToClipMatrix:(__n128)matrix;
- (__n128)setPreviousWorldToViewMatrix:(__n128)matrix;
- (float)jitterOffsetX;
- (float)motionVectorScaleX;
- (id).cxx_construct;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)encodeToCommandQueue:(id)queue;
@end

@implementation _MFXTemporalScalingEffectV3

- (float)jitterOffsetX
{
  v2 = *&self->_jitterOffset[4];
  LODWORD(result) = v2;
  return result;
}

- (float)motionVectorScaleX
{
  v2 = *&self->_motionVectorScale[4];
  LODWORD(result) = v2;
  return result;
}

- (CGPoint)jitterOffset
{
  v2 = vcvtq_f64_f32(*&self->_jitterOffset[4]);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (CGPoint)motionVectorScale
{
  v2 = vcvtq_f64_f32(*&self->_motionVectorScale[4]);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (_MFXTemporalScalingEffectV3)initWithDevice:(id)device descriptor:(id)descriptor history:(id)history
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  historyCopy = history;
  v107.receiver = self;
  v107.super_class = _MFXTemporalScalingEffectV3;
  v10 = [(_MTLFXEffectBase *)&v107 init];
  objc_storeStrong(v10 + 6, device);
  *(v10 + 11) = [descriptorCopy colorTextureFormat];
  *(v10 + 12) = [descriptorCopy depthTextureFormat];
  *(v10 + 13) = [descriptorCopy motionTextureFormat];
  *(v10 + 103) = [descriptorCopy outputTextureFormat];
  *(v10 + 14) = [descriptorCopy reactiveMaskTextureFormat];
  *(v10 + 7) = [descriptorCopy inputWidth];
  *(v10 + 8) = [descriptorCopy inputHeight];
  *(v10 + 9) = [descriptorCopy outputWidth];
  *(v10 + 10) = [descriptorCopy outputHeight];
  *(v10 + 30) = 1065353216;
  v10[160] = 1;
  v11 = *(v10 + 7);
  *&v12 = -v11;
  *(v10 + 34) = v12;
  v13 = *(v10 + 8);
  *(&v12 + 1) = -v13;
  *(v10 + 17) = v12;
  v10[161] = 1;
  v10[163] = 1;
  isReactiveMaskTextureEnabled = [descriptorCopy isReactiveMaskTextureEnabled];
  v10[165] = isReactiveMaskTextureEnabled;
  v10[164] = 1;
  v10[166] = 1;
  getFeatureConfiguration(isReactiveMaskTextureEnabled, v15);
  if (isInternalBuild(void)::once != -1)
  {
    [_MFXTemporalScalingEffectV3 initWithDevice:descriptor:history:];
  }

  if (isInternalBuild(void)::isInternal == 1)
  {
    v16 = getenv("MTLFX_FORCE_GPU");
    if (!v16)
    {
      v16 = "0";
    }

    if (strtol(v16, 0, 0))
    {
      v10[163] = 0;
    }

    v17 = getenv("MTLFX_PRE_BICUBIC");
    if (!v17)
    {
      v17 = "0";
    }

    if (strtol(v17, 0, 0))
    {
      v10[164] = 0;
    }
  }

  v18 = getenv("MTLFX_DISABLE_LATE_LATCH");
  if (!v18)
  {
    v18 = "0";
  }

  if (strtol(v18, 0, 0))
  {
    v10[166] = 0;
  }

  v19 = getenv("MTLFX_EXECUTION_MODE");
  if (!v19)
  {
    v19 = "0";
  }

  if (strtol(v19, 0, 0) == 1)
  {
    v10[163] = 0;
  }

  *(v10 + 95) = 1;
  *(v10 + 96) = 1;
  *(v10 + 97) = 1;
  *(v10 + 98) = 1;
  *(v10 + 99) = 7;
  v101 = [MEMORY[0x277CD7838] deviceWithMTLDevice:*(v10 + 6)];
  v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v97 = [v98 pathForResource:@"default" ofType:@"metallib"];
  v20 = [MEMORY[0x277CBEBC0] URLWithString:v97];
  v106 = 0;
  v99 = [deviceCopy newLibraryWithURL:v20 error:&v106];
  v96 = v106;

  v100 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:*(v10 + 9) height:*(v10 + 10) mipmapped:0];
  [v100 setUsage:3];
  [v100 setCompressionMode:1];
  v21 = historyCopy;
  v22 = historyCopy;
  if (!historyCopy)
  {
    v22 = [*(v10 + 6) newTextureWithDescriptor:v100];
    v21 = 0;
  }

  objc_storeStrong(v10 + 27, v22);
  if (!v21)
  {
  }

  if (v10[165] == 1)
  {
    v23 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(v10 + 14) width:*(v10 + 9) height:*(v10 + 10) mipmapped:0];
    [v23 setUsage:3];
    [v23 setCompressionMode:1];
    v24 = [*(v10 + 6) newTextureWithDescriptor:v23];
    v25 = *(v10 + 28);
    *(v10 + 28) = v24;
  }

  v103 = objc_opt_new();
  if (v10[166] == 1)
  {
    [v103 setEnableLowLatencySignalSharedEvent:1];
    [v103 setEnableLowLatencyWaitSharedEvent:1];
    [v103 setDisableIOFencing:1];
  }

  v95 = *(v10 + 6);
  v26 = [v95 newCommandQueueWithDescriptor:v103];
  v27 = *(v10 + 48);
  *(v10 + 48) = v26;

  newEvent = [*(v10 + 6) newEvent];
  v29 = *(v10 + 49);
  *(v10 + 49) = newEvent;

  newEvent2 = [*(v10 + 6) newEvent];
  v31 = *(v10 + 50);
  *(v10 + 50) = newEvent2;

  newEvent3 = [*(v10 + 6) newEvent];
  v33 = *(v10 + 51);
  *(v10 + 51) = newEvent3;

  newEvent4 = [*(v10 + 6) newEvent];
  v35 = *(v10 + 52);
  *(v10 + 52) = newEvent4;

  if (v10[163] == 1)
  {
    newSharedEvent = [*(v10 + 6) newSharedEvent];
    v37 = *(v10 + 53);
    *(v10 + 53) = newSharedEvent;

    newSharedEvent2 = [*(v10 + 6) newSharedEvent];
  }

  else
  {
    v39 = *(v10 + 53);
    *(v10 + 53) = 0;

    newSharedEvent2 = [*(v10 + 6) newEvent];
  }

  v40 = *(v10 + 54);
  *(v10 + 54) = newSharedEvent2;

  if (objc_opt_respondsToSelector())
  {
    [*(v10 + 50) setEnableBarrier:0];
    newFence = [*(v10 + 6) newFence];
    v42 = *(v10 + 55);
    *(v10 + 55) = newFence;
  }

  v43 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v44 = dispatch_queue_attr_make_with_qos_class(v43, QOS_CLASS_USER_INTERACTIVE, 0);

  v94 = v44;
  v45 = dispatch_queue_create("MetalFX", v44);
  v46 = *(v10 + 58);
  *(v10 + 58) = v45;

  *(v10 + 92) = *(v10 + 7);
  *(v10 + 93) = *(v10 + 8);
  v10[162] = [descriptorCopy isAutoExposureEnabled];
  v47 = getenv("MTLFX_FORCE_AUTO_EXPOSURE");
  if (!v47)
  {
    v47 = "0";
  }

  if (strtol(v47, 0, 0))
  {
    v10[162] = 1;
  }

  v49 = v103;
  v48 = historyCopy;
  if ([descriptorCopy isInputContentPropertiesEnabled])
  {
    [descriptorCopy inputContentMinScale];
    *(v10 + 188) = v50;
    [descriptorCopy inputContentMaxScale];
    *(v10 + 189) = v51;
    v52 = *(v10 + 188);
    v53 = v51;
  }

  else
  {
    v54 = *(v10 + 9);
    v55 = *(v10 + 7);
    v56 = v54 / v55;
    v57 = *(v10 + 10);
    v58 = *(v10 + 8);
    v59 = v57 / v58;
    v52 = fminf(v56, v59);
    v51 = fmaxf(v56, v59);
    *(v10 + 188) = v52;
    *(v10 + 189) = v51;
    v53 = fmaxf(v54 / (v55 + 1), v57 / (v58 + 1));
  }

  if (v52 < 1.0 || v53 > 3.0)
  {
    MTLReportFailure();
    goto LABEL_43;
  }

  if (v51 <= 2.0)
  {
    v62 = *(v10 + 18);
    v64 = *(v10 + 20);
  }

  else if ([descriptorCopy isInputContentPropertiesEnabled])
  {
    v60 = *(v10 + 189);
    v61 = ceilf(*(v10 + 9) / v60);
    v62 = (v61 + v61);
    v63 = ceilf(*(v10 + 10) / v60);
    v64 = (v63 + v63);
  }

  else
  {
    v62 = 2 * *(v10 + 14);
    v64 = 2 * *(v10 + 16);
  }

  TemporalScalarBRNetVersionOverride = getTemporalScalarBRNetVersionOverride(0);
  v93 = TemporalScalarBRNetVersionOverride;
  if (TemporalScalarBRNetVersionOverride <= 1)
  {
    if (TemporalScalarBRNetVersionOverride)
    {
      if (TemporalScalarBRNetVersionOverride == 1)
      {
        v69 = MEMORY[0x277CCACA8];
        v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        resourcePath = [v92 resourcePath];
        v68 = [v69 stringWithFormat:@"%@/%@", resourcePath, @"emit_v40_nhwc_constants.dat"];
        goto LABEL_57;
      }

LABEL_73:
      MTLReportFailure();
      abort();
    }

    v73 = MEMORY[0x277CCACA8];
    v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    resourcePath = [v92 resourcePath];
    v71 = [v73 stringWithFormat:@"%@/%@", resourcePath, @"emit_v35_constants.dat"];
LABEL_61:
    v90 = 0;
    v91 = v71;
    goto LABEL_62;
  }

  if (TemporalScalarBRNetVersionOverride == 2)
  {
    v70 = MEMORY[0x277CCACA8];
    v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    resourcePath = [v92 resourcePath];
    v71 = [v70 stringWithFormat:@"%@/%@", resourcePath, @"emit_v40_nchw_constants.dat"];
    goto LABEL_61;
  }

  if (TemporalScalarBRNetVersionOverride == 3)
  {
    v72 = MEMORY[0x277CCACA8];
    v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    resourcePath = [v92 resourcePath];
    v71 = [v72 stringWithFormat:@"%@/%@", resourcePath, @"emit_v41_nchw_constants.dat"];
    goto LABEL_61;
  }

  if (TemporalScalarBRNetVersionOverride != 4)
  {
    goto LABEL_73;
  }

  v66 = MEMORY[0x277CCACA8];
  v92 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  resourcePath = [v92 resourcePath];
  v68 = [v66 stringWithFormat:@"%@/%@", resourcePath, @"emit_v41_nhwc_constants.dat"];
LABEL_57:
  v90 = 1;
  v91 = v68;
LABEL_62:
  v74 = ((v62 + 63) >> 1) & 0x7FFFFFE0;
  v75 = v64;
  v76 = ((v64 + 63) >> 1) & 0x7FFFFFE0;

  *(v10 + 72) = v93;
  *(v10 + 73) = v62;
  *(v10 + 74) = v75;
  *(v10 + 75) = v74;
  *(v10 + 76) = v76;
  *(v10 + 308) = 0x100000005;
  *(v10 + 79) = v74;
  *(v10 + 80) = v76;
  *(v10 + 324) = 0x200000005;
  *(v10 + 83) = v74 >> 1;
  *(v10 + 84) = v76 >> 1;
  *(v10 + 85) = 11;
  v77 = *(v10 + 44);
  *(v10 + 43) = v90;
  *(v10 + 44) = v91;

  v78 = objc_opt_new();
  v79 = v78;
  if (v10[163] == 1)
  {
    [(MPSGraphCompilationDescriptor *)v78 setOptimizationLevel:1];
    [(MPSGraphCompilationDescriptor *)v79 setAllowedComputeDevices:7];
    [(MPSGraphCompilationDescriptor *)v79 setPreferredDevice:2];
    if ([deviceCopy supportsFamily:1008])
    {
      v80 = 3;
    }

    else
    {
      v80 = 2;
    }

    [(MPSGraphCompilationDescriptor *)v79 setAneCompilerSpatialSplitting:v80];
    if (v10[166] == 1)
    {
      [(MPSGraphCompilationDescriptor *)v79 setEnableANELateLatch:1];
      [(MPSGraphCompilationDescriptor *)v79 setEnableANEFWToFWSignal:1];
    }

    v81 = getMPSGraphExecutable(v10 + 4, v79);
  }

  else
  {
    v81 = 0;
  }

  v82 = *(v10 + 30);
  *(v10 + 30) = v81;

  [(MPSGraphCompilationDescriptor *)v79 setOptimizationProfile:0];
  [(MPSGraphCompilationDescriptor *)v79 setAllowedComputeDevices:1];
  [(MPSGraphCompilationDescriptor *)v79 setPreferredDevice:1];
  v83 = getMPSGraphExecutable(v10 + 4, v79);
  v84 = *(v10 + 31);
  *(v10 + 31) = v83;

  *v105 = 0;
  v49 = v103;
  v48 = historyCopy;
  v85 = makeMPSTensorDataWithData(v101, *(v10 + 79), *(v10 + 80), *(v10 + 81), 0, &v105[1], 0, *(v10 + 43));
  v86 = *(v10 + 46);
  *(v10 + 46) = v85;

  if (*(v10 + 46))
  {
    v87 = makeMPSTensorDataWithData(v101, *(v10 + 83), *(v10 + 84), *(v10 + 85), 0, v105, 0, *(v10 + 43));
    v88 = *(v10 + 47);
    *(v10 + 47) = v87;

    if (*(v10 + 47))
    {
      deviceCopy;
      operator new();
    }
  }

LABEL_43:

  return 0;
}

- (void)dealloc
{
  if (self->_filter)
  {
    BRNet_v3_Filter<MFXDevice3>::~BRNet_v3_Filter();
  }

  self->_filter = 0;
  v2.receiver = self;
  v2.super_class = _MFXTemporalScalingEffectV3;
  [(_MFXTemporalScalingEffectV3 *)&v2 dealloc];
}

- (void)encodeToCommandQueue:(id)queue
{
  commandBuffer = [queue commandBuffer];
  [(_MFXTemporalScalingEffectV3 *)self encodeToCommandBuffer:?];
  [commandBuffer commit];
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(_MTLFXEffectBase *)self _beginEncode];
  *(self->_filter + 136) = *(self->_filter + 136) == 0;
  v4 = bufferCopy;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v5 = MetalFXHUDInstanceV3(void)::v3;
  v6 = v5;
  if (v5)
  {
    [v5 markCommandBuffer:v4 component:3];
  }

  if (MTLReportFailureTypeEnabled())
  {
    checkInputOutputTextures(self->_colorTexture, self->_depthTexture, self->_motionTexture, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
    inputContentWidth = self->_inputContentWidth;
    inputContentHeight = self->_inputContentHeight;
    inputContentMinScale = self->_inputContentMinScale;
    inputContentMaxScale = self->_inputContentMaxScale;
    outputWidth = self->_outputWidth;
    outputHeight = self->_outputHeight;
    v13 = fminf(outputWidth / inputContentWidth, outputHeight / inputContentHeight);
    if (v13 < inputContentMinScale)
    {
      v15 = v13;
      v16 = inputContentMinScale;
      MTLReportFailure();
    }

    v14 = fmaxf(outputWidth / (inputContentWidth + 1), outputHeight / (inputContentHeight + 1));
    if (v14 > inputContentMaxScale)
    {
      v15 = v14;
      v16 = inputContentMaxScale;
      MTLReportFailure();
    }

    if ([(MTLTexture *)self->_outputTexture storageMode:*&v15]!= 2)
    {
      MTLReportFailure();
    }
  }

  encodeID = self->super.super.super._encodeID;
  ++self->_inputEventValue;
  ++self->_outputEventValue;
  inputEventValue = self->_inputEventValue;
  self->_colorTexture;
  self->_depthTexture;
  self->_motionTexture;
  self->_outputTexture;
  self->_exposureTexture;
  self->_reactiveMaskTexture;
  self->_device;
  memset(v21, 0, 24);
  [v4 encodeSignalEvent:self->_inputEvent value:self->_inputEventValue];
  [v4 encodeWaitForEvent:self->_midProcessingStartEvent value:2 * inputEventValue];
  MFXComputeEncoder3::beginEncoding(v21, v4);
  v20 = v21[0];
  [v20 setLabel:@"MetalFX_Temporal_MidProcessing"];
  [(_MTLFXEffect *)self _didCreateComputeCommandEncoder:v20 forEncode:encodeID];
  BRNet_v3_Filter<MFXDevice3>::encodeMid();
}

- (CGPoint)previousJitterOffset
{
  x = self->_previousJitterOffset.x;
  y = self->_previousJitterOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (__n128)setCurrentWorldToViewMatrix:(__n128)matrix
{
  result[30] = a2;
  result[31] = matrix;
  result[32] = a4;
  result[33] = a5;
  return result;
}

- (__n128)setCurrentViewToClipMatrix:(__n128)matrix
{
  result[34] = a2;
  result[35] = matrix;
  result[36] = a4;
  result[37] = a5;
  return result;
}

- (__n128)setPreviousWorldToViewMatrix:(__n128)matrix
{
  result[38] = a2;
  result[39] = matrix;
  result[40] = a4;
  result[41] = a5;
  return result;
}

- (__n128)setPreviousViewToClipMatrix:(__n128)matrix
{
  result[42] = a2;
  result[43] = matrix;
  result[44] = a4;
  result[45] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 232) = 0u;
  *(self + 248) = 0u;
  *(self + 264) = 0u;
  *(self + 44) = 0;
  return self;
}

@end