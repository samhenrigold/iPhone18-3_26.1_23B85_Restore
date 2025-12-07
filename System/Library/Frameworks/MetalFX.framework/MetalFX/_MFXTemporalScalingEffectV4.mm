@interface _MFXTemporalScalingEffectV4
- (CGPoint)jitterOffset;
- (CGPoint)motionVectorScale;
- (CGPoint)previousJitterOffset;
- (_MFXTemporalScalingEffectV4)initWithDevice:(id)device descriptor:(id)descriptor history:(id)history;
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

@implementation _MFXTemporalScalingEffectV4

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

- (_MFXTemporalScalingEffectV4)initWithDevice:(id)device descriptor:(id)descriptor history:(id)history
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  obj = history;
  v109.receiver = self;
  v109.super_class = _MFXTemporalScalingEffectV4;
  v10 = [(_MTLFXEffectBase *)&v109 init];
  objc_storeStrong(v10 + 6, device);
  *(v10 + 14) = [descriptorCopy colorTextureFormat];
  *(v10 + 15) = [descriptorCopy depthTextureFormat];
  *(v10 + 16) = [descriptorCopy motionTextureFormat];
  *(v10 + 104) = [descriptorCopy outputTextureFormat];
  *(v10 + 17) = [descriptorCopy reactiveMaskTextureFormat];
  *(v10 + 7) = [descriptorCopy inputWidth];
  *(v10 + 8) = [descriptorCopy inputHeight];
  *(v10 + 9) = [descriptorCopy outputWidth];
  *(v10 + 10) = [descriptorCopy outputHeight];
  *(v10 + 62) = 1065353216;
  v10[288] = 1;
  v11 = *(v10 + 7);
  *&v12 = -v11;
  *(v10 + 66) = v12;
  v13 = *(v10 + 8);
  *(&v12 + 1) = -v13;
  *(v10 + 33) = v12;
  v10[289] = 1;
  v10[291] = 1;
  isReactiveMaskTextureEnabled = [descriptorCopy isReactiveMaskTextureEnabled];
  v10[293] = isReactiveMaskTextureEnabled;
  v10[292] = 1;
  v10[294] = 1;
  getFeatureConfiguration(isReactiveMaskTextureEnabled, v15);
  v16 = getenv("MTLFX_FORCE_GPU");
  if (!v16)
  {
    v16 = "0";
  }

  if (strtol(v16, 0, 0))
  {
    v10[291] = 0;
  }

  if (isInternalBuild(void)::once != -1)
  {
    [_MFXTemporalScalingEffectV4 initWithDevice:descriptor:history:];
  }

  if (isInternalBuild(void)::isInternal == 1)
  {
    v17 = getenv("MTLFX_PRE_BICUBIC");
    if (!v17)
    {
      v17 = "0";
    }

    if (strtol(v17, 0, 0))
    {
      v10[292] = 0;
    }
  }

  v18 = getenv("MTLFX_DISABLE_LATE_LATCH");
  if (!v18)
  {
    v18 = "0";
  }

  if (strtol(v18, 0, 0))
  {
    v10[294] = 0;
  }

  v19 = getenv("MTLFX_EXECUTION_MODE");
  if (!v19)
  {
    v19 = "0";
  }

  if (strtol(v19, 0, 0) == 1)
  {
    v10[291] = 0;
  }

  *(v10 + 18) = 1;
  *(v10 + 19) = 1;
  *(v10 + 20) = 1;
  *(v10 + 21) = 1;
  *(v10 + 22) = 7;
  v97 = [MEMORY[0x277CD7838] deviceWithMTLDevice:*(v10 + 6)];
  v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v94 = [v95 pathForResource:@"default" ofType:@"metallib"];
  v20 = [MEMORY[0x277CBEBC0] URLWithString:v94];
  v108 = 0;
  v96 = [deviceCopy newLibraryWithURL:v20 error:&v108];
  v93 = v108;

  v98 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:*(v10 + 9) height:*(v10 + 10) mipmapped:0];
  [v98 setUsage:3];
  [v98 setCompressionMode:1];
  v21 = obj;
  v22 = obj;
  if (!obj)
  {
    v22 = [*(v10 + 6) newTextureWithDescriptor:v98];
    v21 = 0;
  }

  objc_storeStrong(v10 + 29, v22);
  if (!v21)
  {
  }

  if (v10[293] == 1)
  {
    v23 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(v10 + 17) width:*(v10 + 9) height:*(v10 + 10) mipmapped:0];
    [v23 setUsage:3];
    [v23 setCompressionMode:1];
    v24 = [*(v10 + 6) newTextureWithDescriptor:v23];
    v25 = *(v10 + 30);
    *(v10 + 30) = v24;
  }

  v26 = dispatch_semaphore_create(1);
  v27 = *(v10 + 68);
  *(v10 + 68) = v26;

  if (!*(v10 + 68))
  {
    goto LABEL_37;
  }

  *(v10 + 11) = *(v10 + 7);
  *(v10 + 12) = *(v10 + 8);
  v10[290] = [descriptorCopy isAutoExposureEnabled];
  v28 = getenv("MTLFX_FORCE_AUTO_EXPOSURE");
  if (!v28)
  {
    v28 = "0";
  }

  if (strtol(v28, 0, 0))
  {
    v10[290] = 1;
  }

  if ([descriptorCopy isInputContentPropertiesEnabled])
  {
    [descriptorCopy inputContentMinScale];
    *(v10 + 26) = v29;
    [descriptorCopy inputContentMaxScale];
    *(v10 + 27) = v30;
    v31 = *(v10 + 26);
    v32 = v30;
  }

  else
  {
    v33 = *(v10 + 9);
    v34 = *(v10 + 7);
    v35 = v33 / v34;
    v36 = *(v10 + 10);
    v37 = *(v10 + 8);
    v38 = v36 / v37;
    v31 = fminf(v35, v38);
    v30 = fmaxf(v35, v38);
    *(v10 + 26) = v31;
    *(v10 + 27) = v30;
    v32 = fmaxf(v33 / (v34 + 1), v36 / (v37 + 1));
  }

  if (v31 >= 1.0 && v32 <= 3.0)
  {
    if (v30 <= 2.0)
    {
      v43 = *(v10 + 18);
      v45 = *(v10 + 20);
    }

    else if ([descriptorCopy isInputContentPropertiesEnabled])
    {
      v41 = *(v10 + 27);
      v42 = ceilf(*(v10 + 9) / v41);
      v43 = (v42 + v42);
      v44 = ceilf(*(v10 + 10) / v41);
      v45 = (v44 + v44);
    }

    else
    {
      v43 = 2 * *(v10 + 14);
      v45 = 2 * *(v10 + 16);
    }

    v46 = objc_opt_new();
    [(MPSGraphCompilationDescriptor *)v46 setOptimizationLevel:1];
    if (v10[291] == 1)
    {
      v47 = objc_opt_new();
      v48 = v47;
      v92 = v47;
      if (v10[294] == 1)
      {
        [v47 setEnableLowLatencySignalSharedEvent:1];
        [v48 setEnableLowLatencyWaitSharedEvent:1];
        [v48 setDisableIOFencing:1];
      }

      v91 = *(v10 + 6);
      v49 = [v91 newCommandQueueWithDescriptor:v48];
      v50 = *(v10 + 56);
      *(v10 + 56) = v49;

      newEvent = [*(v10 + 6) newEvent];
      v52 = *(v10 + 57);
      *(v10 + 57) = newEvent;

      newEvent2 = [*(v10 + 6) newEvent];
      v54 = *(v10 + 58);
      *(v10 + 58) = newEvent2;

      newEvent3 = [*(v10 + 6) newEvent];
      v56 = *(v10 + 59);
      *(v10 + 59) = newEvent3;

      newEvent4 = [*(v10 + 6) newEvent];
      v58 = *(v10 + 60);
      *(v10 + 60) = newEvent4;

      newSharedEvent = [*(v10 + 6) newSharedEvent];
      v60 = *(v10 + 61);
      *(v10 + 61) = newSharedEvent;

      newSharedEvent2 = [*(v10 + 6) newSharedEvent];
      v62 = *(v10 + 62);
      *(v10 + 62) = newSharedEvent2;

      if (objc_opt_respondsToSelector())
      {
        [*(v10 + 58) setEnableBarrier:0];
        newFence = [*(v10 + 6) newFence];
        v64 = *(v10 + 63);
        *(v10 + 63) = newFence;
      }

      v65 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v66 = dispatch_queue_attr_make_with_qos_class(v65, QOS_CLASS_USER_INTERACTIVE, 0);

      v67 = dispatch_queue_create("MetalFX", v66);
      v68 = *(v10 + 66);
      *(v10 + 66) = v67;

      getDefaultBRNetDescriptor(3, v43, v45, &v103);
      *(v10 + 22) = v103;
      *(v10 + 23) = v104;
      *(v10 + 24) = v105;
      *(v10 + 25) = v106;
      v69 = *(v10 + 52);
      *(v10 + 52) = v107;

      [(MPSGraphCompilationDescriptor *)v46 setAllowedComputeDevices:7];
      [(MPSGraphCompilationDescriptor *)v46 setPreferredDevice:2];
      if ([deviceCopy supportsFamily:1008])
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }

      [(MPSGraphCompilationDescriptor *)v46 setAneCompilerSpatialSplitting:v70];
      if (v10[294] == 1)
      {
        [(MPSGraphCompilationDescriptor *)v46 setEnableANELateLatch:1];
        [(MPSGraphCompilationDescriptor *)v46 setEnableANEFWToFWSignal:1];
      }

      v71 = getMPSGraphExecutable((v10 + 352), v46);
      v72 = *(v10 + 38);
      *(v10 + 38) = v71;

      [(MPSGraphCompilationDescriptor *)v46 setAllowedComputeDevices:1];
      [(MPSGraphCompilationDescriptor *)v46 setPreferredDevice:1];
      v73 = getMPSGraphExecutable((v10 + 352), v46);
      v74 = *(v10 + 39);
      *(v10 + 39) = v73;

      v75 = v92;
    }

    else
    {
      v76 = *(v10 + 56);
      *(v10 + 56) = 0;

      v77 = *(v10 + 57);
      *(v10 + 57) = 0;

      v78 = *(v10 + 58);
      *(v10 + 58) = 0;

      v79 = *(v10 + 59);
      *(v10 + 59) = 0;

      v80 = *(v10 + 60);
      *(v10 + 60) = 0;

      v81 = *(v10 + 61);
      *(v10 + 61) = 0;

      v82 = *(v10 + 62);
      *(v10 + 62) = 0;

      TemporalScalarBRNetVersionOverride = getTemporalScalarBRNetVersionOverride(4);
      getDefaultBRNetDescriptor(TemporalScalarBRNetVersionOverride, v43, v45, &v103);
      *(v10 + 22) = v103;
      *(v10 + 23) = v104;
      *(v10 + 24) = v105;
      *(v10 + 25) = v106;
      v84 = *(v10 + 52);
      *(v10 + 52) = v107;

      [(MPSGraphCompilationDescriptor *)v46 setAllowedComputeDevices:1];
      [(MPSGraphCompilationDescriptor *)v46 setPreferredDevice:1];
      v85 = *(v10 + 38);
      *(v10 + 38) = 0;

      v86 = getMPSGraphExecutable((v10 + 352), v46);
      v75 = *(v10 + 39);
      *(v10 + 39) = v86;
    }

    v102 = 0;
    v101 = 0;
    v87 = makeMPSTensorDataWithData(v97, *(v10 + 95), *(v10 + 96), *(v10 + 97), 0, &v102, 0, *(v10 + 51));
    v88 = *(v10 + 54);
    *(v10 + 54) = v87;

    if (*(v10 + 54))
    {
      v89 = makeMPSTensorDataWithData(v97, *(v10 + 99), *(v10 + 100), *(v10 + 101), 0, &v101, 0, *(v10 + 51));
      v90 = *(v10 + 55);
      *(v10 + 55) = v89;

      if (*(v10 + 55))
      {
        v103 = deviceCopy;
        v104 = 0uLL;
        operator new();
      }
    }

    v39 = obj;
  }

  else
  {
LABEL_37:
    MTLReportFailure();
    v39 = obj;
  }

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
  v2.super_class = _MFXTemporalScalingEffectV4;
  [(_MFXTemporalScalingEffectV4 *)&v2 dealloc];
}

- (void)encodeToCommandQueue:(id)queue
{
  commandBuffer = [queue commandBuffer];
  [(_MFXTemporalScalingEffectV4 *)self encodeToCommandBuffer:?];
  [commandBuffer commit];
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  v23 = self->_device;
  memset(v24, 0, 24);
  [(_MTLFXEffectBase *)self _beginEncode];
  *(self->_filter + 136) = *(self->_filter + 136) == 0;
  v5 = bufferCopy;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v6 = MetalFXHUDInstanceV3(void)::v3;
  v7 = v6;
  if (v6)
  {
    [v6 markCommandBuffer:v5 component:3];
  }

  MetalFxScopedSignpost::MetalFxScopedSignpost(v22, 0, self, 7, self->super.super.super._encodeID, 0);
  if (MTLReportFailureTypeEnabled())
  {
    checkInputOutputTextures(self->_colorTexture, self->_depthTexture, self->_motionTexture, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
    inputContentWidth = self->_inputContentWidth;
    inputContentHeight = self->_inputContentHeight;
    inputContentMinScale = self->_inputContentMinScale;
    inputContentMaxScale = self->_inputContentMaxScale;
    outputWidth = self->_outputWidth;
    outputHeight = self->_outputHeight;
    v14 = fminf(outputWidth / inputContentWidth, outputHeight / inputContentHeight);
    if (v14 < inputContentMinScale)
    {
      v17 = v14;
      v18 = inputContentMinScale;
      MTLReportFailure();
    }

    v15 = fmaxf(outputWidth / (inputContentWidth + 1), outputHeight / (inputContentHeight + 1));
    if (v15 > inputContentMaxScale)
    {
      v17 = v15;
      v18 = inputContentMaxScale;
      MTLReportFailure();
    }

    if ([(MTLTexture *)self->_outputTexture storageMode:*&v17]!= 2)
    {
      MTLReportFailure();
    }
  }

  encodeID = self->super.super.super._encodeID;
  self->_colorTexture;
  self->_depthTexture;
  self->_motionTexture;
  self->_outputTexture;
  self->_exposureTexture;
  self->_reactiveMaskTexture;
  if (MTLTraceEnabled())
  {
    [(_MFXTemporalScalingEffectV4 *)self outputWidth];
    [(_MFXTemporalScalingEffectV4 *)self outputHeight];
    [(_MFXTemporalScalingEffectV4 *)self inputWidth];
    [(_MFXTemporalScalingEffectV4 *)self inputHeight];
    if (MTLTraceEnabled())
    {
      [v5 globalTraceObjectID];
      kdebug_trace();
    }
  }

  if (self->_useANE)
  {
    ++self->_inputEventValue;
    ++self->_outputEventValue;
    inputEventValue = self->_inputEventValue;
    [v5 encodeSignalEvent:self->_inputEvent value:inputEventValue];
    [v5 encodeWaitForEvent:self->_midProcessingStartEvent value:2 * inputEventValue];
    MFXComputeEncoder3::beginEncoding(v24, v5);
    v20 = v24[0];
    [v20 setLabel:@"MetalFX_Temporal_MidProcessing"];
    [(_MTLFXEffect *)self _didCreateComputeCommandEncoder:v20 forEncode:encodeID];
    BRNet_v3_Filter<MFXDevice3>::encodeMid();
  }

  if (self->super.super.super._useRefTensors)
  {
    MTLReportFailure();
  }

  if (self->super.super.super._dumpTensors)
  {
    dispatch_semaphore_wait(self->_waitForCompletion, 0xFFFFFFFFFFFFFFFFLL);
    NSLog(&cfstr_DumpTensorsEnc.isa);
  }

  MFXComputeEncoder3::beginEncoding(v24, v5);
  v21 = v24[0];
  [v21 setLabel:@"MetalFX_Temporal_PreProcessing"];
  [(_MTLFXEffect *)self _didCreateComputeCommandEncoder:v21 forEncode:encodeID];
  if (self->_fence)
  {
    [v21 waitForFence:?];
  }

  [(MPSGraphTensorData *)self->_input_TensorData mpsndarray];
  [objc_claimAutoreleasedReturnValue() buffer];
  objc_claimAutoreleasedReturnValue();
  BRNet_v3_Filter<MFXDevice3>::encodePre();
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
  result[35] = a2;
  result[36] = matrix;
  result[37] = a4;
  result[38] = a5;
  return result;
}

- (__n128)setCurrentViewToClipMatrix:(__n128)matrix
{
  result[39] = a2;
  result[40] = matrix;
  result[41] = a4;
  result[42] = a5;
  return result;
}

- (__n128)setPreviousWorldToViewMatrix:(__n128)matrix
{
  result[43] = a2;
  result[44] = matrix;
  result[45] = a4;
  result[46] = a5;
  return result;
}

- (__n128)setPreviousViewToClipMatrix:(__n128)matrix
{
  result[47] = a2;
  result[48] = matrix;
  result[49] = a4;
  result[50] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 52) = 0;
  return self;
}

@end