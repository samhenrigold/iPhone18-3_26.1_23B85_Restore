@interface _MFXTemporalDenoisingScalingEffect
- (CGPoint)jitterOffset;
- (CGPoint)motionVectorScale;
- (_MFXTemporalDenoisingScalingEffect)initWithDevice:(id)device descriptor:(id)descriptor history:(id)history;
- (__n128)setViewToClipMatrix:(__n128)matrix;
- (__n128)setWorldToViewMatrix:(__n128)matrix;
- (float)jitterOffsetX;
- (float)motionVectorScaleX;
- (id).cxx_construct;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)encodeToCommandQueue:(id)queue;
@end

@implementation _MFXTemporalDenoisingScalingEffect

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

- (_MFXTemporalDenoisingScalingEffect)initWithDevice:(id)device descriptor:(id)descriptor history:(id)history
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  historyCopy = history;
  v109.receiver = self;
  v109.super_class = _MFXTemporalDenoisingScalingEffect;
  v10 = [(_MTLFXEffectBase *)&v109 init];

  objc_storeStrong(&v10->_device, device);
  v10->_colorTextureFormat = [descriptorCopy colorTextureFormat];
  v10->_depthTextureFormat = [descriptorCopy depthTextureFormat];
  v10->_motionTextureFormat = [descriptorCopy motionTextureFormat];
  v10->_outputTextureFormat = [descriptorCopy outputTextureFormat];
  v10->_reactiveMaskTextureFormat = [descriptorCopy reactiveMaskTextureFormat];
  v10->_diffuseAlbedoTextureFormat = [descriptorCopy diffuseAlbedoTextureFormat];
  v10->_specularAlbedoTextureFormat = [descriptorCopy specularAlbedoTextureFormat];
  v10->_normalTextureFormat = [descriptorCopy normalTextureFormat];
  v10->_roughnessTextureFormat = [descriptorCopy roughnessTextureFormat];
  v10->_specularHitDistanceTextureFormat = [descriptorCopy specularHitDistanceTextureFormat];
  v10->_denoiseStrengthMaskTextureFormat = [descriptorCopy denoiseStrengthMaskTextureFormat];
  v10->_preUpscaleComposeTextureFormat = [descriptorCopy transparencyOverlayTextureFormat];
  v10->_inputWidth = [descriptorCopy inputWidth];
  v10->_inputHeight = [descriptorCopy inputHeight];
  v10->_outputWidth = [descriptorCopy outputWidth];
  v10->_outputHeight = [descriptorCopy outputHeight];
  v10->_preExposure = 1.0;
  v10->_reset = 1;
  inputWidth = v10->_inputWidth;
  *&v12 = -inputWidth;
  *&v10->_motionVectorScale[4] = v12;
  inputHeight = v10->_inputHeight;
  *(&v12 + 1) = -inputHeight;
  *&v10->_motionVectorScale[4] = v12;
  v10->_reversedDepth = 1;
  v10->_useANE = 1;
  v14 = v10->_device;
  if (![(MTLDevice *)v14 supportsFamily:1001])
  {
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [(MTLDevice *)v14 performSelector:sel_originalObject];

    v14 = v15;
  }

  if (objc_opt_respondsToSelector())
  {
    gpuCoreCount = [(MTLDevice *)v14 gpuCoreCount];

    if (gpuCoreCount >= 0x14)
    {
      v10->_useANE = 0;
    }
  }

  else
  {
LABEL_7:
  }

  v10->_reactiveMaskEnabled = [descriptorCopy isReactiveMaskTextureEnabled];
  v10->_midBicubicWarp = 1;
  v10->_specularHitDistEnabled = [descriptorCopy isSpecularHitDistanceTextureEnabled];
  v10->_enableLateLatch = 1;
  if (isInternalBuild(void)::once != -1)
  {
    [_MFXTemporalDenoisingScalingEffect initWithDevice:descriptor:history:];
  }

  if (isInternalBuild(void)::isInternal == 1)
  {
    v17 = getenv("MTLFX_FORCE_GPU");
    if (!v17)
    {
      v17 = "0";
    }

    if (strtol(v17, 0, 0))
    {
      v10->_useANE = 0;
    }

    v18 = getenv("MTLFX_PRE_BICUBIC");
    if (!v18)
    {
      v18 = "0";
    }

    if (strtol(v18, 0, 0))
    {
      v10->_midBicubicWarp = 0;
    }
  }

  v19 = NSSelectorFromString(&cfstr_Instance.isa);
  v20 = NSClassFromString(&cfstr_Cadeveloperhud.isa);
  if (v20)
  {
    obj = ([(objc_class *)v20 methodForSelector:v19])(v20, v19);
  }

  else
  {
    obj = 0;
  }

  v21 = getenv("MTLFX_HUD_ENABLED");
  if (!v21)
  {
    v21 = "0";
  }

  if (strtol(v21, 0, 0))
  {
    objc_storeStrong(&v10->_hudProperties, obj);
    hudProperties = v10->_hudProperties;
    if (hudProperties)
    {
      [(_CADeveloperHUDProperties *)hudProperties addLabel:@"com.apple.hud-label.metalfx" after:@"com.apple.hud-graph.default"];
      [(_CADeveloperHUDProperties *)v10->_hudProperties addLabel:@"com.apple.hud-label.metalfx.resolution" after:@"com.apple.hud-label.metalfx"];
      [(_CADeveloperHUDProperties *)v10->_hudProperties addLabel:@"com.apple.hud-label.metalfx.content_resolution" after:@"com.apple.hud-label.metalfx.resolution"];
      [(_CADeveloperHUDProperties *)v10->_hudProperties addLabel:@"com.apple.hud-label.metalfx.timing" after:@"com.apple.hud-label.metalfx.content_resolution"];
      operator new();
    }
  }

  else
  {
    v23 = v10->_hudProperties;
    v10->_hudProperties = 0;
  }

  v24 = getenv("MTLFX_DISABLE_LATE_LATCH");
  if (!v24)
  {
    v24 = "0";
  }

  if (strtol(v24, 0, 0))
  {
    v10->_enableLateLatch = 0;
  }

  v25 = getenv("MTLFX_EXECUTION_MODE");
  if (v25)
  {
    v26 = strtol(v25, 0, 0);
    if (v26 == 1)
    {
      v10->_useANE = 0;
    }

    else if (!v26)
    {
      v10->_useANE = 1;
    }
  }

  v10->_colorTextureUsage = 1;
  v10->_depthTextureUsage = 1;
  v10->_motionTextureUsage = 1;
  v10->_reactiveTextureUsage = 1;
  v10->_diffuseAlbedoTextureUsage = 1;
  v10->_specularAlbedoTextureUsage = 1;
  v10->_normalTextureUsage = 1;
  v10->_roughnessTextureUsage = 1;
  v10->_specularHitDistanceTextureUsage = 1;
  v10->_denoiseStrengthMaskTextureUsage = 1;
  v10->_preUpscaleComposeTextureUsage = 1;
  v10->_outputTextureUsage = 7;
  v99 = [MEMORY[0x277CD7838] deviceWithMTLDevice:v10->_device];
  v96 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v95 = [v96 pathForResource:@"default" ofType:@"metallib"];
  v27 = [MEMORY[0x277CBEBC0] URLWithString:v95];
  v108 = 0;
  v97 = [deviceCopy newLibraryWithURL:v27 error:&v108];
  v94 = v108;

  v101 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:v10->_outputWidth height:v10->_outputHeight mipmapped:0];
  [v101 setUsage:3];
  [v101 setCompressionMode:1];
  v28 = historyCopy;
  v29 = historyCopy;
  if (!historyCopy)
  {
    v29 = [(MTLDevice *)v10->_device newTextureWithDescriptor:v101];
    v28 = 0;
  }

  objc_storeStrong(&v10->_history, v29);
  if (!v28)
  {
  }

  [v101 setWidth:v10->_inputWidth];
  [v101 setHeight:v10->_inputHeight];
  v30 = [(MTLDevice *)v10->_device newTextureWithDescriptor:v101];
  denoiserColorTexture = v10->_denoiserColorTexture;
  v10->_denoiserColorTexture = v30;

  [v101 setWidth:v10->_outputWidth];
  [v101 setHeight:v10->_outputHeight];
  if (v10->_reactiveMaskEnabled)
  {
    v32 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v10->_reactiveMaskTextureFormat width:v10->_inputWidth height:v10->_inputHeight mipmapped:0];
    [v32 setUsage:3];
    [v32 setCompressionMode:1];
    v33 = [(MTLDevice *)v10->_device newTextureWithDescriptor:v32];
    prevReactiveTexture = v10->_prevReactiveTexture;
    v10->_prevReactiveTexture = v33;
  }

  v35 = objc_opt_new();
  v36 = v35;
  v93 = v35;
  if (v10->_enableLateLatch)
  {
    [v35 setEnableLowLatencySignalSharedEvent:1];
    [v36 setEnableLowLatencyWaitSharedEvent:1];
    [v36 setDisableIOFencing:1];
  }

  v92 = v10->_device;
  v37 = [(MTLDevice *)v92 newCommandQueueWithDescriptor:v36];
  commandQueue = v10->_commandQueue;
  v10->_commandQueue = v37;

  newEvent = [(MTLDevice *)v10->_device newEvent];
  inputEvent = v10->_inputEvent;
  v10->_inputEvent = newEvent;

  newEvent2 = [(MTLDevice *)v10->_device newEvent];
  outputEvent = v10->_outputEvent;
  v10->_outputEvent = newEvent2;

  newEvent3 = [(MTLDevice *)v10->_device newEvent];
  midProcessingStartEvent = v10->_midProcessingStartEvent;
  v10->_midProcessingStartEvent = newEvent3;

  newEvent4 = [(MTLDevice *)v10->_device newEvent];
  midProcessingDoneEvent = v10->_midProcessingDoneEvent;
  v10->_midProcessingDoneEvent = newEvent4;

  if (v10->_useANE)
  {
    newSharedEvent = [(MTLDevice *)v10->_device newSharedEvent];
    framePowerOnSharedEvent = v10->_framePowerOnSharedEvent;
    v10->_framePowerOnSharedEvent = newSharedEvent;

    newSharedEvent2 = [(MTLDevice *)v10->_device newSharedEvent];
  }

  else
  {
    v50 = v10->_framePowerOnSharedEvent;
    v10->_framePowerOnSharedEvent = 0;

    newSharedEvent2 = [(MTLDevice *)v10->_device newEvent];
  }

  frameSharedEvent = v10->_frameSharedEvent;
  v10->_frameSharedEvent = newSharedEvent2;

  if (objc_opt_respondsToSelector())
  {
    [(MTLEvent *)v10->_outputEvent setEnableBarrier:0];
  }

  newFence = [(MTLDevice *)v10->_device newFence];
  dummyFence = v10->_dummyFence;
  v10->_dummyFence = newFence;

  v54 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v55 = dispatch_queue_attr_make_with_qos_class(v54, QOS_CLASS_USER_INTERACTIVE, 0);

  v91 = v55;
  v56 = dispatch_queue_create("MetalFX", v55);
  asyncQueue = v10->_asyncQueue;
  v10->_asyncQueue = v56;

  v10->_inputContentWidth = v10->_inputWidth;
  v10->_inputContentHeight = v10->_inputHeight;
  v10->_autoExposureEnabled = [descriptorCopy isAutoExposureEnabled];
  v58 = getenv("MTLFX_FORCE_AUTO_EXPOSURE");
  if (!v58)
  {
    v58 = "0";
  }

  if (strtol(v58, 0, 0))
  {
    v10->_autoExposureEnabled = 1;
  }

  if ([descriptorCopy isInputContentPropertiesEnabled])
  {
    [descriptorCopy inputContentMinScale];
    v10->_inputContentMinScale = v59;
    [descriptorCopy inputContentMaxScale];
    v10->_inputContentMaxScale = v60;
    inputContentMinScale = v10->_inputContentMinScale;
    v62 = v60;
  }

  else
  {
    outputWidth = v10->_outputWidth;
    v64 = v10->_inputWidth;
    v65 = outputWidth / v64;
    outputHeight = v10->_outputHeight;
    v67 = v10->_inputHeight;
    v68 = outputHeight / v67;
    inputContentMinScale = fminf(v65, v68);
    v60 = fmaxf(v65, v68);
    v10->_inputContentMinScale = inputContentMinScale;
    v10->_inputContentMaxScale = v60;
    v62 = fmaxf(outputWidth / (v64 + 1), outputHeight / (v67 + 1));
  }

  if (inputContentMinScale >= 1.0 && v62 <= 3.0)
  {
    if (v60 <= 2.0)
    {
      v71 = v10->_outputWidth;
      v73 = v10->_outputHeight;
    }

    else if ([descriptorCopy isInputContentPropertiesEnabled])
    {
      inputContentMaxScale = v10->_inputContentMaxScale;
      v70 = ceilf(v10->_outputWidth / inputContentMaxScale);
      v71 = (v70 + v70);
      v72 = ceilf(v10->_outputHeight / inputContentMaxScale);
      v73 = (v72 + v72);
    }

    else
    {
      v71 = 2 * LODWORD(v10->_inputWidth);
      v73 = 2 * LODWORD(v10->_inputHeight);
    }

    v86 = deviceCopy;
    v104 = v86;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v74 = ((v71 + 63) >> 1) & 0x7FFFFFE0;
    v75 = ((v73 + 63) >> 1) & 0x7FFFFFE0;
    v10->_brnet_desc.version = 1;
    v10->_brnet_desc.image_width = v71;
    v10->_brnet_desc.image_height = v73;
    v10->_brnet_desc.input_width = v74;
    v10->_brnet_desc.input_height = v75;
    *&v10->_brnet_desc.input_channels = 0x100000005;
    v10->_brnet_desc.unshuffle_width = v74;
    v10->_brnet_desc.unshuffle_height = v75;
    *&v10->_brnet_desc.unshuffle_channels = 0x200000005;
    v10->_brnet_desc.output_width = v74 >> 1;
    v10->_brnet_desc.output_height = v75 >> 1;
    v10->_brnet_desc.output_channels = 11;
    v90 = objc_opt_new();
    if (v10->_useANE)
    {
      [v90 setOptimizationLevel:1];
      [v90 setAllowedComputeDevices:7];
      [v90 setPreferredDevice:2];
      if ([v86 supportsFamily:1008])
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      [v90 setAneCompilerSpatialSplitting:v76];
      [v90 setEnableANELateLatch:1];
      [v90 setEnableANEFWToFWSignal:1];
    }

    v89 = getEmitModelWeightsData();
    v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v77 = EmitUBF_Net_V3_getMPSGraphExecutable(v89, v88, v87, v90, &v10->_brnet_desc);
    graphExecutableANE = v10->_net_wrapper._graphExecutableANE;
    v10->_net_wrapper._graphExecutableANE = v77;

    [v90 setAllowedComputeDevices:1];
    [v90 setPreferredDevice:1];
    [v90 setOptimizationProfile:0];
    v79 = EmitUBF_Net_V3_getMPSGraphExecutable(v89, v88, v87, v90, &v10->_brnet_desc);
    graphExecutableGPU = v10->_net_wrapper._graphExecutableGPU;
    v10->_net_wrapper._graphExecutableGPU = v79;

    *v103 = 0;
    v81 = makeMPSTensorDataWithData(v99, v10->_brnet_desc.unshuffle_width, v10->_brnet_desc.unshuffle_height, v10->_brnet_desc.unshuffle_channels, 0, &v103[1], 1, MPSGraphTensorNamedDataLayoutNCHW);
    input_TensorData = v10->_input_TensorData;
    v10->_input_TensorData = v81;

    if (v10->_input_TensorData)
    {
      v83 = makeMPSTensorDataWithData(v99, v10->_brnet_desc.output_width, v10->_brnet_desc.output_height, v10->_brnet_desc.output_channels, 0, v103, 1, MPSGraphTensorNamedDataLayoutNCHW);
      output_TensorData = v10->_output_TensorData;
      v10->_output_TensorData = v83;

      if (v10->_output_TensorData)
      {
        operator new();
      }
    }
  }

  else
  {
    MTLReportFailure();
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
  if (self->_denoiseFilter)
  {
    BFNet_v1_Filter<MFXDevice3>::~BFNet_v1_Filter();
  }

  self->_denoiseFilter = 0;
  v2.receiver = self;
  v2.super_class = _MFXTemporalDenoisingScalingEffect;
  [(_MFXTemporalDenoisingScalingEffect *)&v2 dealloc];
}

- (void)encodeToCommandQueue:(id)queue
{
  commandBuffer = [queue commandBuffer];
  [(_MFXTemporalDenoisingScalingEffect *)self encodeToCommandBuffer:?];
  [commandBuffer commit];
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(_MTLFXEffectBase *)self _beginEncode];
  *(self->_filter + 136) = *(self->_filter + 136) == 0;
  *(self->_denoiseFilter + 299) = *(self->_denoiseFilter + 299) == 0;
  if (MTLReportFailureTypeEnabled())
  {
    checkInputOutputTexturesForDenoiser(self->_colorTexture, self->_depthTexture, self->_motionTexture, self->_normalTexture, self->_diffuseAlbedoTexture, self->_specularAlbedoTexture, self->_roughnessTexture, self->_specularHitDistanceTexture, self->_denoiseStrengthMaskTexture, self->_preUpscaleComposeTexture, self->_reactiveMaskTexture, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat, self->_depthTextureFormat, self->_motionTextureFormat, self->_normalTextureFormat, self->_diffuseAlbedoTextureFormat, self->_specularAlbedoTextureFormat, self->_roughnessTextureFormat, self->_specularHitDistanceTextureFormat, self->_denoiseStrengthMaskTextureFormat, self->_preUpscaleComposeTextureFormat, self->_reactiveMaskTextureFormat);
    inputContentWidth = self->_inputContentWidth;
    inputContentHeight = self->_inputContentHeight;
    inputContentMinScale = self->_inputContentMinScale;
    inputContentMaxScale = self->_inputContentMaxScale;
    outputWidth = self->_outputWidth;
    outputHeight = self->_outputHeight;
    v10 = fminf(outputWidth / inputContentWidth, outputHeight / inputContentHeight);
    if (v10 < inputContentMinScale)
    {
      v14 = v10;
      v15 = inputContentMinScale;
      MTLReportFailure();
    }

    v11 = fmaxf(outputWidth / (inputContentWidth + 1), outputHeight / (inputContentHeight + 1));
    if (v11 > inputContentMaxScale)
    {
      v14 = v11;
      v15 = inputContentMaxScale;
      MTLReportFailure();
    }

    if ([(MTLTexture *)self->_outputTexture storageMode:*&v14]!= 2)
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
  self->_roughnessTexture;
  self->_reactiveMaskTexture;
  self->_diffuseAlbedoTexture;
  self->_specularAlbedoTexture;
  self->_specularHitDistanceTexture;
  self->_denoiseStrengthMaskTexture;
  self->_preUpscaleComposeTexture;
  self->_normalTexture;
  self->_device;
  memset(obj, 0, sizeof(obj));
  if (self->_useANE)
  {
    [bufferCopy encodeSignalEvent:self->_inputEvent value:inputEventValue];
    [bufferCopy encodeWaitForEvent:self->_midProcessingStartEvent value:?];
    MFXComputeEncoder3::beginEncoding(obj, bufferCopy);
    locationa = obj[0];
    [locationa setLabel:@"MetalFX_Denoiser_DMidProcessing"];
    [(_MTLFXEffect *)self _didCreateComputeCommandEncoder:locationa forEncode:encodeID];
    BRNet_v3_Filter<MFXDevice3>::encodeMidForDenoise();
  }

  MFXComputeEncoder3::beginEncoding(obj, bufferCopy);
  location = obj[0];
  [location setLabel:@"MetalFX_Denoiser_DPreProcessing"];
  location;
  [_MTLFXEffect _didCreateComputeCommandEncoder:"_didCreateComputeCommandEncoder:forEncode:" forEncode:?];
  if (self->_fence)
  {
    [location waitForFence:?];
  }

  v13 = location;
  BRNet_v3_Filter<MFXDevice3>::encodeExposureCalcForDenoiser();
}

- (__n128)setWorldToViewMatrix:(__n128)matrix
{
  result[44] = a2;
  result[45] = matrix;
  result[46] = a4;
  result[47] = a5;
  return result;
}

- (__n128)setViewToClipMatrix:(__n128)matrix
{
  result[48] = a2;
  result[49] = matrix;
  result[50] = a4;
  result[51] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 30) = 0u;
  *(self + 31) = 0u;
  *(self + 29) = 0u;
  return self;
}

@end