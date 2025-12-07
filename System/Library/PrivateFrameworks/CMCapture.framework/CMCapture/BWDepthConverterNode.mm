@interface BWDepthConverterNode
+ (void)initialize;
- (BWDepthConverterNode)initWithStillImageNodeConfiguration:(id)configuration cameraInfoByPortType:(id)type sensorIDDictionary:(id)dictionary rgbPersonSegmentationEnabled:(BOOL)enabled depthIsAlwaysHighQuality:(BOOL)quality depthOriginatesFromNeuralNetwork:(BOOL)network backPressureDrivenPipelining:(BOOL)pipelining;
- (id)_updateOutputRequirements;
- (uint64_t)_computeConversionParametersFromSampleBuffer:(uint64_t)buffer convertOptionsOut:(uint64_t)out;
- (uint64_t)_convertDepthDisparityToFloat_C:(__CVBuffer *)c dst:(uint64_t)dst options:;
- (uint64_t)_convertDepthDisparityToFloat_NEON:(__CVBuffer *)n dst:(int *)dst options:;
- (uint64_t)_generateAndAttachUnfilteredDepthToSampleBuffer:(__CVBuffer *)buffer depthOutputPixelBuffer:(opaqueCMSampleBuffer *)pixelBuffer depthOutputSampleBuffer:;
- (uint64_t)_loadAndConfigureDepthProcessorClass:(uint64_t)result;
- (uint64_t)_parseCameraInfo;
- (uint64_t)_resolveFilteringTypeWithStillFilteringRequested:(uint64_t)result;
- (uint64_t)_scaleDepthValues:(void *)values depthMetadata:(uint64_t)metadata sbuf:(uint64_t)sbuf;
- (uint64_t)convertToFloatAndRotateAndCrop:(__CVBuffer *)crop outputPixelBuffer:;
- (uint64_t)filterDepthPixelBuffer:(__CVBuffer *)buffer outputDepthPixelBuffer:(CMSampleBufferRef)sbuf yuvImageSampleBuffer:(uint64_t)sampleBuffer depthSampleBuffer:(unsigned int)depthSampleBuffer filteringType:;
- (uint64_t)rotateAndScaleAndCropImagePixelBuffer:(__CVBuffer *)buffer depthPixelBuffer:(const char *)pixelBuffer to:(int)to rotationAngle:(int)angle flip:;
- (unsigned)_depthMetadataDictionaryFromSampleBuffer:(int)buffer orientation:(int)orientation stillFilteringRequested:;
- (void)_removeConsumedAttachedMediaFromSampleBuffer:(uint64_t)buffer;
- (void)dealloc;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setOutputDimensions:(id)dimensions;
- (void)setOutputFormat:(unsigned int)format;
@end

@implementation BWDepthConverterNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWDepthConverterNode)initWithStillImageNodeConfiguration:(id)configuration cameraInfoByPortType:(id)type sensorIDDictionary:(id)dictionary rgbPersonSegmentationEnabled:(BOOL)enabled depthIsAlwaysHighQuality:(BOOL)quality depthOriginatesFromNeuralNetwork:(BOOL)network backPressureDrivenPipelining:(BOOL)pipelining
{
  enabledCopy = enabled;
  v31.receiver = self;
  v31.super_class = BWDepthConverterNode;
  v15 = [(BWNode *)&v31 init];
  v16 = v15;
  if (v15)
  {
    [(BWNode *)v15 setSupportsLiveReconfiguration:1];
    v16->_stillImageNodeConfiguration = configuration;
    v16->_cameraInfoByPortType = type;
    v16->_sensorIDDictionary = dictionary;
    v16->_depthIsAlwaysHighQuality = quality;
    v16->_depthOriginatesFromNeuralNetwork = network;
    v16->_backPressureDrivenPipelining = pipelining;
    v17 = *(MEMORY[0x1E695F050] + 16);
    v16->_inputCropRect.origin = *MEMORY[0x1E695F050];
    v16->_inputCropRect.size = v17;
    v16->_depthProcessingEnabled = [(BWStillImageNodeConfiguration *)v16->_stillImageNodeConfiguration depthDataType]!= 10;
    v16->_disparityAPSScaling = -[BWDisparityAPSScaling initWithDepthScalingTuningParameters:]([BWDisparityAPSScaling alloc], "initWithDepthScalingTuningParameters:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"DepthProcessingParameters", "objectForKeyedSubscript:", @"DepthScalingParameters"}]);
    v18 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v16];
    v19 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v19 setSupportedPixelFormats:FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F2249258, 3)];
    [(BWNodeInput *)v18 setFormatRequirements:v19];

    [(BWNodeInput *)v18 setPassthroughMode:1];
    v20 = objc_alloc_init(BWNodeInputMediaConfiguration);
    v21 = objc_alloc_init(BWVideoFormatRequirements);
    v22 = v21;
    if (v16->_depthOriginatesFromNeuralNetwork)
    {
      v23 = &unk_1F2249270;
    }

    else
    {
      v23 = &unk_1F2249288;
    }

    [(BWVideoFormatRequirements *)v21 setSupportedPixelFormats:v23];
    [(BWNodeInputMediaConfiguration *)v20 setFormatRequirements:v22];
    [(BWNodeInputMediaConfiguration *)v20 setPassthroughMode:0];
    [(BWNodeInput *)v18 setMediaConfiguration:v20 forAttachedMediaKey:@"Depth"];
    if (enabledCopy)
    {
      v24 = objc_alloc_init(BWNodeInputMediaConfiguration);
      v25 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v25 setSupportedPixelFormats:&unk_1F22492A0];
      [(BWNodeInputMediaConfiguration *)v24 setFormatRequirements:v25];
      [(BWNodeInputMediaConfiguration *)v24 setPassthroughMode:0];
      [(BWNodeInput *)v18 setMediaConfiguration:v24 forAttachedMediaKey:0x1F21AAC70];
    }

    [(BWNode *)v16 addInput:v18];

    v26 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v16];
    v27 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v26 setFormatRequirements:v27];
    [(BWNodeOutput *)v26 setPassthroughMode:1];

    v28 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v29 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v29 setSupportedPixelFormats:&unk_1F22492B8];
    [(BWNodeOutputMediaConfiguration *)v28 setFormatRequirements:v29];
    [(BWNodeOutputMediaConfiguration *)v28 setPassthroughMode:!v16->_depthProcessingEnabled];
    [(BWNodeOutputMediaConfiguration *)v28 setPixelBufferPoolProvidesBackPressure:v16->_backPressureDrivenPipelining];
    [(BWNodeOutputMediaConfiguration *)v28 setPixelBufferPoolReportSlowBackPressureAllocations:v16->_backPressureDrivenPipelining];
    [(BWNodeOutput *)v26 setMediaConfiguration:v28 forAttachedMediaKey:@"Depth"];
    [(BWNode *)v16 addOutput:v26];

    v16->_forceCPath = 0;
  }

  return v16;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  fixedPointScaledIntermediateBuffer = self->_fixedPointScaledIntermediateBuffer;
  if (fixedPointScaledIntermediateBuffer)
  {
    CFRelease(fixedPointScaledIntermediateBuffer);
  }

  fixedPointRotatedIntermediateBuffer = self->_fixedPointRotatedIntermediateBuffer;
  if (fixedPointRotatedIntermediateBuffer)
  {
    CFRelease(fixedPointRotatedIntermediateBuffer);
  }

  filteringInputBuffer = self->_filteringInputBuffer;
  if (filteringInputBuffer)
  {
    CFRelease(filteringInputBuffer);
  }

  filteringOutputBuffer = self->_filteringOutputBuffer;
  if (filteringOutputBuffer)
  {
    CFRelease(filteringOutputBuffer);
  }

  streamingFilteringScaledDepthInputBuffer = self->_streamingFilteringScaledDepthInputBuffer;
  if (streamingFilteringScaledDepthInputBuffer)
  {
    CFRelease(streamingFilteringScaledDepthInputBuffer);
  }

  streamingFilteringScaledDepthOutputBuffer = self->_streamingFilteringScaledDepthOutputBuffer;
  if (streamingFilteringScaledDepthOutputBuffer)
  {
    CFRelease(streamingFilteringScaledDepthOutputBuffer);
  }

  filteringScaledYUVBuffer = self->_filteringScaledYUVBuffer;
  if (filteringScaledYUVBuffer)
  {
    CFRelease(filteringScaledYUVBuffer);
  }

  unfilteredDepthFormatDescription = self->_unfilteredDepthFormatDescription;
  if (unfilteredDepthFormatDescription)
  {
    CFRelease(unfilteredDepthFormatDescription);
  }

  unfilteredDepthTransferSession = self->_unfilteredDepthTransferSession;
  if (unfilteredDepthTransferSession)
  {
    CFRelease(unfilteredDepthTransferSession);
  }

  scaler = self->_scaler;
  if (scaler)
  {
    CFRelease(scaler);
    self->_scaler = 0;
  }

  v14.receiver = self;
  v14.super_class = BWDepthConverterNode;
  [(BWNode *)&v14 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"PrimaryFormat"))
  {
    output = self->super._output;

    [(BWNodeOutput *)output setFormat:format];
  }

  else if (objc_msgSend_isEqualToString_(key))
  {
    dimensions = [format dimensions];
    self->_inputDepthDimensions = dimensions;
    if (!self->_depthProcessingEnabled)
    {
      baseRotationDegrees = self->_baseRotationDegrees;
      v16 = __ROR8__(dimensions, 32);
      if (baseRotationDegrees == 180)
      {
        v16 = dimensions;
      }

      if (baseRotationDegrees)
      {
        v17 = v16;
      }

      else
      {
        v17 = dimensions;
      }

      self->_outputDimensions = v17;
      [(BWDepthConverterNode *)&self->super.super.isa _updateOutputRequirements];
    }

    if (self->_providesUnfilteredDepthAsAttachedMedia)
    {
      v11 = [(BWNodeOutput *)self->super._output mediaConfigurationForAttachedMediaKey:@"Depth"];
      if (v11)
      {
        v12 = v11;
        v13 = objc_alloc_init(BWNodeOutputMediaConfiguration);
        -[BWNodeOutputMediaConfiguration setFormatRequirements:](v13, "setFormatRequirements:", [v12 formatRequirements]);
        [(BWNodeOutputMediaConfiguration *)v13 setPassthroughMode:0];
        [(BWNodeOutputMediaConfiguration *)v13 setProvidesPixelBufferPool:1];
        v14 = self->super._output;

        [(BWNodeOutput *)v14 setMediaConfiguration:v13 forAttachedMediaKey:0x1F21AAAB0];
      }
    }
  }

  else if ((objc_msgSend_isEqualToString_(key) & 1) == 0 && (objc_msgSend_isEqualToString_(key) & 1) == 0)
  {
    v18.receiver = self;
    v18.super_class = BWDepthConverterNode;
    [(BWNode *)&v18 didSelectFormat:format forInput:input forAttachedMediaKey:key];
  }
}

- (void)setOutputFormat:(unsigned int)format
{
  if (self->_outputFormat != format)
  {
    self->_outputFormat = format;
    [(BWDepthConverterNode *)&self->super.super.isa _updateOutputRequirements];
  }
}

- (void)setOutputDimensions:(id)dimensions
{
  if (self->_outputDimensions.width != dimensions.var0 || self->_outputDimensions.height != dimensions.var1)
  {
    self->_outputDimensions = dimensions;
    [(BWDepthConverterNode *)&self->super.super.isa _updateOutputRequirements];
  }
}

- (id)_updateOutputRequirements
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v3 = objc_alloc_init(BWVideoFormatRequirements);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v1 + 46)];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v3, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:1]);
    [(BWVideoFormatRequirements *)v3 setWidth:*(v1 + 47)];
    [(BWVideoFormatRequirements *)v3 setHeight:*(v1 + 48)];
    [(BWNodeOutputMediaConfiguration *)v2 setFormatRequirements:v3];
    [(BWNodeOutputMediaConfiguration *)v2 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v2 setProvidesPixelBufferPool:1];
    [(BWNodeOutputMediaConfiguration *)v2 setPixelBufferPoolProvidesBackPressure:*(v1 + 196)];
    [(BWNodeOutputMediaConfiguration *)v2 setPixelBufferPoolReportSlowBackPressureAllocations:*(v1 + 196)];
    return [v1[2] setMediaConfiguration:v2 forAttachedMediaKey:@"Depth"];
  }

  return result;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (self->_depthProcessingEnabled)
  {
    v9 = self->_streamingGDRFilteringEnabled || self->_streamingSMPFilteringEnabled || self->_stillGDRFilteringSupportEnabled;
  }

  else
  {
    v9 = 0;
  }

  if ([(BWDepthConverterNode *)self _parseCameraInfo:a2])
  {
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return;
  }

  if (self->_depthValueMultiplier || -[BWStillImageNodeConfiguration depthDataType](self->_stillImageNodeConfiguration, "depthDataType") != 10 || (v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()], self->_metalContext, self->_metalContext = objc_msgSend(objc_alloc(MEMORY[0x1E6991778]), "initWithbundle:andOptionalCommandQueue:", v10, -[BWStillImageNodeConfiguration metalCommandQueue](self->_stillImageNodeConfiguration, "metalCommandQueue")), self->_depthValueMultiplier = -[FigDepthValueMultiplier initWithMetalContext:]([FigDepthValueMultiplier alloc], "initWithMetalContext:", self->_metalContext), self->_monocularStillsPipeline) || (v11 = objc_alloc_init(getADMonocularStillsPipelineParametersClass())) != 0 && (v12 = objc_msgSend(objc_alloc(getADMonocularStillsPipelineClass()), "initWithParameters:", v11), (self->_monocularStillsPipeline = v12) != 0))
  {
    streamingFilteringScaledDepthInputBuffer = self->_streamingFilteringScaledDepthInputBuffer;
    if (streamingFilteringScaledDepthInputBuffer)
    {
      CFRelease(streamingFilteringScaledDepthInputBuffer);
      self->_streamingFilteringScaledDepthInputBuffer = 0;
    }

    streamingFilteringScaledDepthOutputBuffer = self->_streamingFilteringScaledDepthOutputBuffer;
    if (streamingFilteringScaledDepthOutputBuffer)
    {
      CFRelease(streamingFilteringScaledDepthOutputBuffer);
      self->_streamingFilteringScaledDepthOutputBuffer = 0;
    }

    filteringInputBuffer = self->_filteringInputBuffer;
    if (filteringInputBuffer)
    {
      CFRelease(filteringInputBuffer);
      self->_filteringInputBuffer = 0;
    }

    filteringOutputBuffer = self->_filteringOutputBuffer;
    if (filteringOutputBuffer)
    {
      CFRelease(filteringOutputBuffer);
      self->_filteringOutputBuffer = 0;
    }

    filteringScaledYUVBuffer = self->_filteringScaledYUVBuffer;
    if (filteringScaledYUVBuffer)
    {
      CFRelease(filteringScaledYUVBuffer);
      self->_filteringScaledYUVBuffer = 0;
    }

    inputDepthDimensions = self->_inputDepthDimensions;
    p_outputDimensions = &self->_outputDimensions;
    outputDimensions = self->_outputDimensions;
    v52 = inputDepthDimensions;
    if (inputDepthDimensions != *&outputDimensions)
    {
      v20 = FigCaptureNormalizeAngle(self->_baseRotationDegrees - self->_rotationDegrees);
      FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v52, v20);
      FigCaptureSwapVideoDimensionsFor90Or270Rotation(&outputDimensions, v20);
      if (!FigCaptureVideoAspectRatiosAreEqual(*&v52, *p_outputDimensions, 0.01))
      {
        self->_inputCropRect.origin.x = FigCaptureMakeRectWithAspectRatioInsideDimensions(*&self->_inputDepthDimensions, 1, outputDimensions.i32[0] / outputDimensions.i32[1]);
        self->_inputCropRect.origin.y = v21;
        self->_inputCropRect.size.width = v22;
        self->_inputCropRect.size.height = v23;
      }
    }

    v24 = MEMORY[0x1E695E480];
    if (!v9)
    {
LABEL_68:
      OUTLINED_FUNCTION_33();
      if (!v33 || !VTPixelTransferSessionCreate(*v24, &self->_unfilteredDepthTransferSession))
      {
        v50.receiver = self;
        v50.super_class = BWDepthConverterNode;
        [(BWNode *)&v50 prepareForCurrentConfigurationToBecomeLive];
      }

      return;
    }

    v25 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    if (self->_streamingGDRFilteringEnabled || self->_streamingSMPFilteringEnabled)
    {
      self->_depthProcessorClassName = @"FigStreamingDepthProcessorCPU";
      v26 = 1717856627;
      OUTLINED_FUNCTION_33();
      if (v33)
      {
        if (v30 <= v31)
        {
          v34 = v31;
        }

        else
        {
          v34 = v30;
        }

        v35 = 320.0 / v34;
        if (v35 == 1.0)
        {
          height = v31;
          v49 = v30;
          v41 = 1717856627;
        }

        else
        {
          v36 = (v35 * v30);
          v37 = (v35 * v31);
          v38 = OUTLINED_FUNCTION_17_28(v27, v28, v29, &self->_streamingFilteringScaledDepthInputBuffer, @"DepthConverter: Scaled Depth Input");
          if (v38)
          {
            goto LABEL_76;
          }

          height = v37;
          v49 = v36;
          v41 = 1717856627;
          if (OUTLINED_FUNCTION_17_28(v38, v39, v40, &self->_streamingFilteringScaledDepthOutputBuffer, @"DepthConverter: Scaled Depth Output"))
          {
            goto LABEL_76;
          }
        }
      }

      else
      {
        height = v31;
        v49 = v30;
        v42 = *(v32 + 1212);
        if (FigDepthFormatIsDisparity(*(&self->super.super.isa + v42)))
        {
          v41 = 1717856627;
        }

        else
        {
          v41 = 1717855600;
        }

        if (FigDepthFormatIsDisparity(*(&self->super.super.isa + v42)))
        {
          v26 = 1717856627;
        }

        else
        {
          v26 = 1717855600;
        }
      }

      OUTLINED_FUNCTION_33();
      if (v33)
      {
        pipelineStage = [(BWNodeConnection *)[(BWNodeInput *)self->super._input connection] pipelineStage];
        v24 = MEMORY[0x1E695E480];
        if (pipelineStage)
        {
          [(BWPipelineStage *)[(BWNodeConnection *)[(BWNodeInput *)self->super._input connection] pipelineStage] priority];
        }

        self->_depthProcessorWorkerQueue = FigDispatchQueueCreateWithPriority();
      }

      else
      {
        v24 = MEMORY[0x1E695E480];
      }

      v25 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    }

    else
    {
      v26 = 1751411059;
      if (self->_depthOriginatesFromNeuralNetwork)
      {
        v44 = @"FigStillDepthProcessorANE";
      }

      else
      {
        v44 = @"FigStillDepthProcessorGPU";
      }

      if (self->_depthOriginatesFromNeuralNetwork)
      {
        v41 = 1717855600;
      }

      else
      {
        v41 = 1751411059;
      }

      self->_depthProcessorClassName = &v44->isa;
      height = self->_outputDimensions.height;
      v49 = *p_outputDimensions;
    }

    self->_conversionAfterFilteringRequired = *(&self->super.super.isa + v25[303]) != v26;
    if (!BWCreateIOSurfaceBackedCVPixelBuffer(*p_outputDimensions, self->_outputDimensions.height, v41, &self->_filteringInputBuffer, @"DepthConverter: Filtering Input") && (!self->_conversionAfterFilteringRequired || !BWCreateIOSurfaceBackedCVPixelBuffer(*p_outputDimensions, self->_outputDimensions.height, v26, &self->_filteringOutputBuffer, @"DepthConverter: Filtering Output")) && (self->_scaler || !CMPhotoScaleAndRotateSessionCreate()))
    {
      v46 = FigCapturePixelFormatIsFullRange([(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] pixelFormat]) ? 875704422 : 875704438;
      if (!BWCreateIOSurfaceBackedCVPixelBuffer(v49, height, v46, &self->_filteringScaledYUVBuffer, @"DepthConverter: Scaled YUV"))
      {
        if (!self->_depthProcessor && [(BWDepthConverterNode *)self _loadAndConfigureDepthProcessorClass:?])
        {
          return;
        }

        goto LABEL_68;
      }
    }

LABEL_76:
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  }
}

- (uint64_t)_parseCameraInfo
{
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = [*(result + 152) objectForKeyedSubscript:{*off_1E798A0E8, a4, a5, a6, a7, a8}];
  v12 = *(v10 + 152);
  if (v11)
  {
    v13 = *off_1E798A0E0;
    if ([v12 objectForKeyedSubscript:*off_1E798A0E0])
    {
      v14 = v13;
    }

    else
    {
      v14 = *off_1E798A0F8;
    }

    v15 = [*(v10 + 152) objectForKeyedSubscript:v14];
    v16 = [v15 objectForKeyedSubscript:*off_1E7989EC0];
    *(v10 + 272) = 1;
    *(v10 + 553) = 1;
    [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E7989F18), "floatValue"}];
    *(v10 + 408) = v19;
    goto LABEL_17;
  }

  v20 = *off_1E798A0C0;
  if ([v12 objectForKeyedSubscript:*off_1E798A0C0] && (v21 = OUTLINED_FUNCTION_7_57(), v22 = *off_1E798A0D8, objc_msgSend(v21, "objectForKeyedSubscript:", *off_1E798A0D8)))
  {
    v16 = [objc_msgSend(OUTLINED_FUNCTION_7_57() objectForKeyedSubscript:{v22), "objectForKeyedSubscript:", *off_1E7989EC0}];
    v23 = OUTLINED_FUNCTION_7_57();
    v24 = v22;
  }

  else
  {
    if (![OUTLINED_FUNCTION_7_57() objectForKeyedSubscript:v20] || !objc_msgSend(OUTLINED_FUNCTION_7_57(), "objectForKeyedSubscript:", *off_1E798A0D0))
    {
      if ([OUTLINED_FUNCTION_7_57() count] != 1)
      {
        return 4294954514;
      }

      v27 = [objc_msgSend(OUTLINED_FUNCTION_7_57() "allValues")];
      v16 = [v27 objectForKeyedSubscript:*off_1E7989EC0];
      v26 = *off_1E7989F18;
      v25 = v27;
      goto LABEL_16;
    }

    v16 = [objc_msgSend(OUTLINED_FUNCTION_7_57() objectForKeyedSubscript:{v20), "objectForKeyedSubscript:", *off_1E7989EC0}];
    v23 = OUTLINED_FUNCTION_7_57();
    v24 = v20;
  }

  v25 = [v23 objectForKeyedSubscript:v24];
  v26 = *off_1E7989F18;
LABEL_16:
  [objc_msgSend(v25 objectForKeyedSubscript:{v26), "floatValue"}];
  *(v10 + 408) = v28;
  *(v10 + 272) = 0;
LABEL_17:
  *(v10 + 208) = 1065353216;
  *(v10 + 228) = 1065353216;
  *(v10 + 248) = 1065353216;
  if (*(v10 + 489))
  {
    return 0;
  }

  if (v16)
  {
    v29 = [v16 objectForKeyedSubscript:*off_1E798ADC0];
    if ([v29 length] != 64 || (v30 = objc_msgSend(v29, "bytes"), v31 = v30[3], v33 = *v30, v32 = v30[1], *(v10 + 312) = v30[2], *(v10 + 328) = v31, *(v10 + 280) = v33, *(v10 + 296) = v32, v34 = objc_msgSend(v16, "objectForKeyedSubscript:", *off_1E798ADC8), objc_msgSend(v34, "length") != 64))
    {
      OUTLINED_FUNCTION_1_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
      return 0;
    }

    bytes = [v34 bytes];
    result = 0;
    v36 = bytes[3];
    v38 = *bytes;
    v37 = bytes[1];
    *(v10 + 376) = bytes[2];
    *(v10 + 392) = v36;
    *(v10 + 344) = v38;
    *(v10 + 360) = v37;
    *(v10 + 276) = 1;
  }

  else
  {
    v39 = qword_1EB58E418;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 0xFFFFCE10, "<<<< BWDepthConverterNode >>>>", 0x5E9, v9, v17, v18, a9);
  }

  return result;
}

- (uint64_t)_loadAndConfigureDepthProcessorClass:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v13 = 0;
    Height = 0;
    BytesPerRow = 0;
    *(result + 600) = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters depthProcessorVersion];
    if (*(v3 + 600))
    {
      pearlModuleType = [*(v3 + 624) pearlModuleType];
      v5 = *(v3 + 600);
      if (pearlModuleType == 2 && v5 < 2)
      {
        return 4294954516;
      }

      v7 = BWLoadProcessorBundle(@"DepthProcessor", v5);
      if (!v7)
      {
        return 4294954510;
      }

      v8 = v7;
      v9 = *(v3 + 520);
      if (v9 && *(v3 + 528))
      {
        Width = CVPixelBufferGetWidth(v9);
        v11 = &OBJC_IVAR___BWDepthConverterNode__streamingFilteringScaledDepthInputBuffer;
      }

      else
      {
        v11 = &OBJC_IVAR___BWDepthConverterNode__filteringInputBuffer;
        Width = CVPixelBufferGetWidth(*(v3 + 512));
      }

      v13 = Width;
      Height = CVPixelBufferGetHeight(*(v3 + *v11));
      BytesPerRow = CVPixelBufferGetBytesPerRow(*(v3 + *v11));
      v12 = [objc_alloc(objc_msgSend(v8 classNamed:{a2)), "initWithParameters:commandQueue:", &v13, objc_msgSend(*(v3 + 624), "metalCommandQueue")}];
      *(v3 + 592) = v12;
      if (!v12)
      {
        return 4294954510;
      }

      if (objc_msgSend_isEqualToString_(a2) || objc_msgSend_isEqualToString_(a2))
      {
        result = [*(v3 + 592) setTuningParameters:{objc_msgSend(*(v3 + 144), "objectForKeyedSubscript:", @"DepthProcessingParameters"}];
        if (result)
        {
          return result;
        }
      }

      else if (objc_msgSend_isEqualToString_(a2))
      {
        [OUTLINED_FUNCTION_6_63() setCameraInfoByPortType:?];
        if (*(v3 + 600) >= 2)
        {
          OUTLINED_FUNCTION_6_63();
          if (objc_opt_respondsToSelector())
          {
            [OUTLINED_FUNCTION_6_63() setStreamingGDRFilterEnabled:?];
          }

          OUTLINED_FUNCTION_6_63();
          if (objc_opt_respondsToSelector())
          {
            [OUTLINED_FUNCTION_6_63() setStreamingSMPFilterEnabled:?];
          }

          OUTLINED_FUNCTION_6_63();
          if (objc_opt_respondsToSelector())
          {
            [OUTLINED_FUNCTION_6_63() setWorkerQueue:?];
          }
        }
      }

      if (([OUTLINED_FUNCTION_6_63() allocateResources] & 1) == 0)
      {
        return 4294954510;
      }
    }

    return 0;
  }

  return result;
}

- (uint64_t)_computeConversionParametersFromSampleBuffer:(uint64_t)buffer convertOptionsOut:(uint64_t)out
{
  if (!self)
  {
    return 0;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(ImageBuffer);
  if (Width && Height && BytesPerRow)
  {
    if (*(self + 188) && *(self + 192))
    {
      v19 = CMGetAttachment(sbuf, @"DepthPixelBufferType", 0);
      Attributes = CVPixelBufferGetAttributes();
      *(buffer + 12) = [objc_msgSend(Attributes objectForKeyedSubscript:{*MEMORY[0x1E69660A8]), "shortValue"}];
      if (objc_msgSend_isEqualToString_(v19))
      {
        FixedPointFractionalBits = CVPixelBufferGetFixedPointFractionalBits();
        v22 = 1;
        v23 = (1.0 / (1 << FixedPointFractionalBits)) * 0.001;
        *(buffer + 4) = 0;
      }

      else
      {
        v24 = CMGetAttachment(sbuf, *off_1E798A328, 0);
        [objc_msgSend(v24 objectForKeyedSubscript:{*off_1E798ABC0), "floatValue"}];
        *(buffer + 4) = v25;
        [objc_msgSend(v24 objectForKeyedSubscript:{*off_1E798ABB8), "floatValue"}];
        v22 = 0;
      }

      *(buffer + 8) = v23;
      *(buffer + 16) = v22;
      v26 = FigCaptureNormalizeAngle(*(self + 412) + [objc_msgSend(Attributes objectForKeyedSubscript:{*MEMORY[0x1E69661F0]), "intValue"}] - *(self + 416));
      if (v26)
      {
        v27 = 360 - v26;
      }

      else
      {
        v27 = 0;
      }

      *buffer = FigCaptureConvertRotationAndMirroringToExifOrientation(v27, *(self + 420));
      return 0;
    }

    v29 = qword_1EB58E418;
    v30 = v9;
    v31 = 719;
  }

  else
  {
    v29 = qword_1EB58E418;
    v30 = v9;
    v31 = 715;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 0xFFFFCE14, "<<<< BWDepthConverterNode >>>>", v31, v30, v17, v18, a9);
}

- (unsigned)_depthMetadataDictionaryFromSampleBuffer:(int)buffer orientation:(int)orientation stillFilteringRequested:
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = *off_1E798A3C8;
  v9 = CMGetAttachment(target, *off_1E798A3C8, 0);
  CMSampleBufferGetPresentationTimeStamp(&time, target);
  Seconds = CMTimeGetSeconds(&time);
  v11 = v7[138];
  if (v7[553])
  {
    if ([+[FigCaptureCameraParameters portraitTapToRefocusPrevented] sharedInstance]
    {
      v12 = 21002;
    }

    else
    {
      v12 = 20002;
    }

    v13 = v12 | (FigDepthDataGetCurrentMajorVersion() << 16);
    figDepthQuality = 1;
  }

  else
  {
    OUTLINED_FUNCTION_33();
    if (v15)
    {
      if ([*(v7 + 78) depthDataType] == 10)
      {
        v16 = 40002;
      }

      else
      {
        v16 = 40001;
      }
    }

    else
    {
      v16 = 10001;
    }

    v13 = v16 | (FigDepthDataGetCurrentMajorVersion() << 16);
    figDepthQuality = v7[489];
  }

  v17 = v11 & orientation;
  if (v7[488] & 1) == 0 && (v7[136] & v17)
  {
    figDepthQuality = [*(v7 + 74) figDepthQuality];
  }

  *&time.value = *MEMORY[0x1E695F060];
  v18 = CMGetAttachment(target, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0);
  if (!v18 || (v19 = v18, !CGSizeMakeWithDictionaryRepresentation(v18, &time)))
  {
    OUTLINED_FUNCTION_16_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
    return 0;
  }

  v66 = *MEMORY[0x1E695EFF8];
  if (v7[276] == 1)
  {
    if (FigMotionComputeDistortionCenter(v9, *&time.value, *&time.timescale, *(v7 + 114), *(v7 + 115), &v66, 1.0 / *(v7 + 102), 1.0, Seconds, v20, v21))
    {
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 0;
    }

    v22 = [(__CFDictionary *)v9 objectForKeyedSubscript:*off_1E798B260];
    LODWORD(v23) = 1.0;
    if (v22)
    {
      [v22 floatValue];
    }

    v24 = vmlaq_n_f32(*(v7 + 280), *(v7 + 344), *&v23);
    v25 = vmlaq_n_f32(*(v7 + 328), *(v7 + 392), *&v23);
    v26 = vmlaq_n_f32(*(v7 + 296), *(v7 + 360), *&v23);
    v65[0] = vmlaq_n_f32(*(v7 + 312), *(v7 + 376), *&v23);
    v65[1] = v25;
    v64[0] = v24;
    v64[1] = v26;
  }

  v27 = CMGetAttachment(target, @"OriginalCameraIntrinsicMatrix", 0);
  if (!v27)
  {
    OUTLINED_FUNCTION_16_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
    return 0;
  }

  v28 = v27;
  bufferCopy = buffer;
  AttachedMedia = BWSampleBufferGetAttachedMedia(target, @"Depth");
  v30 = CMGetAttachment(AttachedMedia, v8, 0);
  v31 = *off_1E798CFD0;
  v60 = v17;
  if ([v30 objectForKeyedSubscript:*off_1E798CFD0])
  {
    v32 = 1;
  }

  else
  {
    v32 = v7[137] | v17;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", figDepthQuality), *off_1E798D008}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v32 & 1), v31}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(v7 + 68)), *off_1E798CFC0}];
  *&v34 = *(v7 + 102) * 0.001;
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v34), *off_1E798D000}];
  [dictionary setObject:v28 forKeyedSubscript:*off_1E798CFD8];
  [dictionary setObject:v19 forKeyedSubscript:*off_1E798CFE0];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v7 + 208, 64), *off_1E798CFC8}];
  OUTLINED_FUNCTION_33();
  if (v15)
  {
    [dictionary setObject:CGPointCreateDictionaryRepresentation(v66) forKeyedSubscript:*off_1E798CFF0];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v65, 32), *off_1E798CFF8}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v64, 32), *off_1E798CFE8}];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v13), *off_1E798D010}];
  if (FigDepthRotateMetadataDictionary(dictionary, bufferCopy, 1, v35, v36, v37, v38, v39, v57))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E418, 0xFFFFCE0FLL, "<<<< BWDepthConverterNode >>>>", 0x358, v59, v40, v41, v58);
    return 0;
  }

  if (v60)
  {
    v42 = 1.0;
    if (v7[136] == 1)
    {
      disparityQualityIsHigh = [OUTLINED_FUNCTION_6_63() disparityQualityIsHigh];
      if (v7[136])
      {
        [OUTLINED_FUNCTION_6_63() disparityQualityScore];
        v42 = v44;
      }
    }

    else
    {
      disparityQualityIsHigh = 1;
    }

    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", disparityQualityIsHigh), *off_1E798D020}];
    *&v45 = v42;
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v45), *off_1E798D018}];
  }

  v62 = *MEMORY[0x1E695F050];
  v63 = *(MEMORY[0x1E695F050] + 16);
  v46 = *off_1E798A598;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    FigCaptureMetadataUtilitiesUpdateDepthDataMetadataForStillImageCropAndScale(dictionary, *&v62, *(&v62 + 1), *&v63, *(&v63 + 1), 1.0);
    [v30 removeObjectForKey:v46];
  }

  v68.origin.x = OUTLINED_FUNCTION_8_48((v7 + 424));
  if (!CGRectIsNull(v68))
  {
    v47 = OUTLINED_FUNCTION_8_48((v7 + 424));
    FigCaptureMetadataUtilitiesNormalizeCropRect(v47, v48, v49, v50, v51, v52);
    FigCaptureMetadataUtilitiesUpdateDepthDataMetadataForStillImageCropAndScale(dictionary, v53, v54, v55, v56, 1.0);
  }

  return [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
}

- (uint64_t)convertToFloatAndRotateAndCrop:(__CVBuffer *)crop outputPixelBuffer:
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_16_2();
  if (v6)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v13 = [(BWDepthConverterNode *)self _computeConversionParametersFromSampleBuffer:a2 convertOptionsOut:v33, v8, v9, v10, v11, v12, v31];
  if (v13)
  {
    v29 = v13;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32);
  }

  else
  {
    if ((*(self + 160) & 1) != 0 || (Width = CVPixelBufferGetWidth(ImageBuffer), Height = CVPixelBufferGetHeight(ImageBuffer), BytesPerRow = CVPixelBufferGetBytesPerRow(ImageBuffer), v17 = CVPixelBufferGetWidth(crop), v18 = CVPixelBufferGetHeight(crop), v19 = CVPixelBufferGetBytesPerRow(crop), ((Width | Height) & 7) != 0) || (v17 & 7) != 0 || (v18 & 7) != 0 || (BytesPerRow & 0xF) != 0 || (v19 & 0xF) != 0)
    {
      v25 = OUTLINED_FUNCTION_14_34();
      v24 = [(BWDepthConverterNode *)v25 _convertDepthDisparityToFloat_C:v26 dst:v27 options:v28];
    }

    else
    {
      v20 = OUTLINED_FUNCTION_14_34();
      v24 = [(BWDepthConverterNode *)v20 _convertDepthDisparityToFloat_NEON:v21 dst:v22 options:v23];
    }

    v29 = v24;
    if (v24)
    {
      OUTLINED_FUNCTION_1_8();
      LODWORD(v32) = v29;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32);
    }
  }

  OUTLINED_FUNCTION_16_2();
  if (v6)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  return v29;
}

- (uint64_t)_convertDepthDisparityToFloat_NEON:(__CVBuffer *)n dst:(int *)dst options:
{
  if (!self)
  {
    return 0;
  }

  v6 = pixelBuffer;
  pixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  Width = CVPixelBufferGetWidth(v6);
  Height = CVPixelBufferGetHeight(v6);
  v10 = CVPixelBufferGetWidth(n);
  v11 = CVPixelBufferGetHeight(n);
  v13 = v11;
  v14 = *dst;
  v16 = Width != v10 || Height != v11;
  if (v14 == 1 && !v16)
  {
    goto LABEL_43;
  }

  v17 = v14 - 5;
  v19 = Width != v11 || Height != v10;
  if (v17 >= 4)
  {
    v20 = v10;
  }

  else
  {
    v20 = v11;
  }

  if (v17 >= 4)
  {
    v21 = v11;
  }

  else
  {
    v21 = v10;
  }

  if (v17 < 4)
  {
    LOBYTE(v16) = v19;
  }

  if (v16 || (v39.origin.x = OUTLINED_FUNCTION_8_48(self + 424), !CGRectIsNull(v39)))
  {
    v22 = *(self + 496);
    if (!v22 || CVPixelBufferGetWidth(v22) != v20 || CVPixelBufferGetHeight(*(self + 496)) != v21 || CVPixelBufferGetPixelFormatType(*(self + 496)) != pixelFormatType)
    {
      CVPixelBufferRelease(*(self + 496));
      *(self + 496) = 0;
      v23 = CVPixelBufferCreate(0, v20, v21, pixelFormatType, 0, (self + 496));
      if (v23)
      {
        goto LABEL_46;
      }
    }

    v40.origin.x = OUTLINED_FUNCTION_8_48(self + 424);
    if (CGRectIsNull(v40))
    {
      FigDepthScaleBuffer(v6, *(self + 496));
    }

    else
    {
      v24 = OUTLINED_FUNCTION_8_48(self + 424);
      FigDepthScaleBufferWithCrop(v6, v25, v24, v26, v27, v28);
    }

    v6 = *(self + 496);
  }

  if (v14 == 1)
  {
    goto LABEL_43;
  }

  v29 = *(self + 504);
  if ((!v29 || CVPixelBufferGetWidth(v29) != v10 || CVPixelBufferGetHeight(*(self + 504)) != v13 || CVPixelBufferGetPixelFormatType(*(self + 504)) != pixelFormatType) && (CVPixelBufferRelease(*(self + 504)), *(self + 504) = 0, v23 = CVPixelBufferCreate(0, v10, v13, pixelFormatType, 0, (self + 504)), v23) || (v23 = FigDepthRotateBuffer(v6, *(self + 504), v14, v30, v31, v32, v33, v34, v37), v23))
  {
LABEL_46:
    v35 = v23;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v37);
    return v35;
  }

  v6 = *(self + 504);
LABEL_43:
  v35 = dcn_convertU16toFloatForImage_NEON(v6, n, dst, v12);
  if (v35)
  {
    OUTLINED_FUNCTION_1_8();
    LODWORD(v37) = v35;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v37);
  }

  return v35;
}

- (uint64_t)_convertDepthDisparityToFloat_C:(__CVBuffer *)c dst:(uint64_t)dst options:
{
  if (!self)
  {
    return 0;
  }

  v5 = v4;
  v8 = pixelBuffer;
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(v8);
  v12 = CVPixelBufferGetWidth(c);
  v13 = CVPixelBufferGetHeight(c);
  v14 = *dst - 5;
  if (v14 >= 4)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v75 = v13;
  v76 = v12;
  if (v14 >= 4)
  {
    v16 = v12;
  }

  else
  {
    v16 = v13;
  }

  if (Width != v16 || Height != v15)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(v8);
    v19 = *(self + 496);
    if (!v19 || CVPixelBufferGetWidth(v19) != v16 || CVPixelBufferGetHeight(*(self + 496)) != v15 || CVPixelBufferGetPixelFormatType(*(self + 496)) != PixelFormatType)
    {
      v20 = *(self + 496);
      if (v20)
      {
        CFRelease(v20);
        *(self + 496) = 0;
      }

      v21 = CVPixelBufferCreate(0, v16, v15, PixelFormatType, 0, (self + 496));
      if (v21)
      {
        goto LABEL_67;
      }
    }

    v79.origin.x = OUTLINED_FUNCTION_8_48(self + 424);
    if (CGRectIsNull(v79))
    {
      FigDepthScaleBuffer(v8, *(self + 496));
    }

    else
    {
      v22 = OUTLINED_FUNCTION_8_48(self + 424);
      FigDepthScaleBufferWithCrop(v8, v23, v22, v24, v25, v26);
    }

    v8 = *(self + 496);
    v5 = v4;
  }

  v21 = CVPixelBufferLockBaseAddress(v8, 1uLL);
  if (v21)
  {
LABEL_67:
    v59 = v21;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return v59;
  }

  v27 = CVPixelBufferLockBaseAddress(c, 0);
  if (v27)
  {
    v59 = v27;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v64, v65, v66, v67, v69, v71, v73, v75);
    cCopy2 = v8;
    v61 = 1;
    goto LABEL_59;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v8);
  if (BaseAddress)
  {
    v31 = BaseAddress;
    v32 = CVPixelBufferGetBaseAddress(c);
    if (v32)
    {
      v77 = v32;
      v33 = CVPixelBufferGetWidth(v8);
      v34 = CVPixelBufferGetHeight(v8);
      BytesPerRow = CVPixelBufferGetBytesPerRow(v8);
      v72 = CVPixelBufferGetBytesPerRow(c);
      v36 = CVPixelBufferGetPixelFormatType(c);
      v37 = FigDepthBytesPerPixelForDepthFormat(v36);
      v38 = *(dst + 12);
      if (FigDepthFormatIsDepth(v36))
      {
        v39 = *(dst + 16) ^ 1u;
      }

      else
      {
        v39 = 0;
      }

      v40 = 0;
      v42 = *(dst + 4);
      v41 = *(dst + 8);
      LODWORD(v43) = *dst;
      LODWORD(v44) = BytesPerRow;
      switch(*dst)
      {
        case 1:
          v40 = 0;
          v45 = 0;
          LODWORD(v43) = 2;
          LODWORD(v44) = BytesPerRow;
          goto LABEL_40;
        case 2:
          goto LABEL_37;
        case 3:
        case 4:
          v44 = -BytesPerRow;
          v40 = (v34 - 1) * BytesPerRow + 2 * v33 - 2;
          LODWORD(v43) = -2;
          if (*dst == 4)
          {
            goto LABEL_37;
          }

          goto LABEL_34;
        case 5:
        case 6:
          v43 = -BytesPerRow;
          v40 = (v34 - 1) * BytesPerRow;
          LODWORD(v44) = 2;
          if (*dst == 5)
          {
            goto LABEL_37;
          }

LABEL_34:
          v45 = 0;
          goto LABEL_40;
        case 7:
        case 8:
          v40 = 2 * v33 - 2;
          LODWORD(v44) = -2;
          if (v43 == 7)
          {
            LODWORD(v43) = BytesPerRow;
LABEL_37:
            v46 = -v37;
            v45 = v37 * (v76 - 1);
          }

          else
          {
            v45 = 0;
            LODWORD(v43) = BytesPerRow;
LABEL_40:
            LODWORD(v46) = v37;
          }

LABEL_41:
          if (v75)
          {
            cCopy = c;
            v70 = v8;
            v47 = 0;
            v48 = &v77[v45];
            v49 = &v31[v40];
            v50 = v43;
            v51 = v46;
            v74 = v44;
            do
            {
              v78 = v47;
              if (v76)
              {
                v52 = 0;
                v53 = 0;
                v54 = v76;
                do
                {
                  v55 = *&v49[v52];
                  if (v55 == v38)
                  {
                    if (v37 == 2)
                    {
                      *&v48[v53] = 0x7FFF;
                    }

                    else
                    {
                      *&v48[v53] = 2143289344;
                    }
                  }

                  else
                  {
                    v56 = fmaxf(v42 + (v55 * v41), 0.0);
                    if ((v39 & (v56 != 0.0)) != 0)
                    {
                      v56 = 1.0 / v56;
                    }

                    if (v37 == 2)
                    {
                      v57 = v39;
                      v58 = FigFloat32ConvertToFloat16();
                      v39 = v57;
                      *&v48[v53] = v58;
                    }

                    else
                    {
                      *&v48[v53] = v56;
                    }
                  }

                  v53 += v51;
                  v52 += v50;
                  --v54;
                }

                while (v54);
              }

              v49 += v74;
              v48 += v72;
              v47 = v78 + 1;
            }

            while (v78 + 1 != v75);
            v59 = 0;
            c = cCopy;
            v8 = v70;
          }

          else
          {
            v59 = 0;
          }

          break;
        default:
          LODWORD(v44) = 0;
          LODWORD(v43) = 0;
          LODWORD(v46) = v37;
          v45 = 0;
          goto LABEL_41;
      }

      goto LABEL_58;
    }

    v63 = 1680;
  }

  else
  {
    v63 = 1677;
  }

  v59 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E418, 0xFFFFCE14, "<<<< BWDepthConverterNode >>>>", v63, v5, v29, v30, v64);
LABEL_58:
  CVPixelBufferUnlockBaseAddress(v8, 1uLL);
  cCopy2 = c;
  v61 = 0;
LABEL_59:
  CVPixelBufferUnlockBaseAddress(cCopy2, v61);
  return v59;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v57[0] = 0;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  v8 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  sbuf = buffer;
  if (self)
  {
    if (self->_stillGDRFilteringSupportEnabled)
    {
      v9 = CMGetAttachment(buffer, @"BWStillImageCaptureSettings", 0);
      if (!v9)
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v9 = 0;
        v12 = 0;
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v48 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v48, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWDepthConverterNode.m", 943, @"LastShownDate:BWDepthConverterNode.m:943", @"LastShownBuild:BWDepthConverterNode.m:943", 0);
        free(v48);
        OUTLINED_FUNCTION_9_49();
        target = 0;
        v49 = -12780;
LABEL_36:
        v7 = MEMORY[0x1E695FF58];
        goto LABEL_37;
      }
    }

    else
    {
      v9 = 0;
    }

    v12 = @"Depth";
    target = BWSampleBufferGetAttachedMedia(buffer, @"Depth");
    v52 = v9;
    if (!target)
    {
      OUTLINED_FUNCTION_9_49();
      target = 0;
      goto LABEL_14;
    }

    if (!self->_stillGDRFilteringSupportEnabled)
    {
      v16 = 0;
      goto LABEL_20;
    }

    if (([v9 captureFlags] & 0x800) == 0 || (BWStillImageProcessingFlagsForSampleBuffer(buffer) & 0x200000) != 0 && self->_skipSmartStyleBuffer)
    {
      OUTLINED_FUNCTION_9_49();
LABEL_14:
      v49 = 0;
      goto LABEL_37;
    }

    v13 = CMGetAttachment(buffer, @"StillImageSettings", 0);
    if (v13)
    {
      v16 = ([v13 depthDataFiltered] & 1) != 0 || self->_depthOriginatesFromNeuralNetwork;
      if ([objc_msgSend(CMGetAttachment(target *off_1E798A3C8])
      {
        if (dword_1EB58E420)
        {
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v9 = 0;
          os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_12_39();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          OUTLINED_FUNCTION_9_49();
          v49 = -16809;
          v8 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
        }

        else
        {
          OUTLINED_FUNCTION_9_49();
          v49 = -16809;
        }

        goto LABEL_36;
      }

LABEL_20:
      v17 = [(BWDepthConverterNode *)self _resolveFilteringTypeWithStillFilteringRequested:v16];
      depthDataType = [(BWStillImageNodeConfiguration *)self->_stillImageNodeConfiguration depthDataType];
      if ((0x80u >> v17))
      {
        v12 = 0;
        v9 = target;
LABEL_29:
        FigCaptureConvertRotationAndMirroringToExifOrientation(self->_rotationDegrees, self->_mirroringEnabled);
        v22 = OUTLINED_FUNCTION_13_33();
        v30 = [(BWDepthConverterNode *)v22 _depthMetadataDictionaryFromSampleBuffer:v23 orientation:v24 stillFilteringRequested:v25];
        if (depthDataType != 10 || (v39 = [(BWDepthConverterNode *)self _scaleDepthValues:v9 depthMetadata:v30 sbuf:buffer, v26, v27, v28, v29]) == 0)
        {
          v8 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
          if (self->_stillGDRFilteringSupportEnabled)
          {
            bufferCopy = buffer;
          }

          else
          {
            bufferCopy = v9;
          }

          CMSetAttachment(bufferCopy, *off_1E798D2B8, v30, 1u);
          CMRemoveAttachment(v9, @"OriginalCameraIntrinsicMatrix");
          if (self->_providesUnfilteredDepthAsAttachedMedia)
          {
            v40 = OUTLINED_FUNCTION_13_33();
            [(BWDepthConverterNode *)v40 _generateAndAttachUnfilteredDepthToSampleBuffer:v41 depthOutputPixelBuffer:v12 depthOutputSampleBuffer:v9];
          }

          v49 = 0;
          goto LABEL_36;
        }

        v49 = v39;
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v50, v51, v4, v52, sbuf, target, v55, v56);
        goto LABEL_82;
      }

      v19 = [objc_msgSend(-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->super._output mediaPropertiesForAttachedMediaKey:{@"Depth", "livePixelBufferPool"), "newPixelBuffer"}];
      v12 = v19;
      if (!v19)
      {
        v9 = 0;
        v49 = -12786;
LABEL_82:
        v8 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
        goto LABEL_36;
      }

      filteringInputBuffer = v19;
      if (((0x81u >> v17) & 1) == 0)
      {
        filteringInputBuffer = self->_filteringInputBuffer;
      }

      if (self->_depthOriginatesFromNeuralNetwork)
      {
        CMSampleBufferGetImageBuffer(target);
      }

      else
      {
        v42 = [(BWDepthConverterNode *)self convertToFloatAndRotateAndCrop:filteringInputBuffer outputPixelBuffer:?];
        if (v42)
        {
          v49 = v42;
          OUTLINED_FUNCTION_1_5();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          goto LABEL_81;
        }
      }

      if ((0x81u >> v17))
      {
LABEL_27:
        CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(target, v12, &self->_outputFormatDescription, v57);
        if (!CopyWithNewPixelBuffer)
        {
          v9 = v57[0];
          buffer = sbuf;
          goto LABEL_29;
        }

        v49 = CopyWithNewPixelBuffer;
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        goto LABEL_81;
      }

      filteringOutputBuffer = v12;
      if (self->_conversionAfterFilteringRequired)
      {
        filteringOutputBuffer = self->_filteringOutputBuffer;
      }

      v44 = OUTLINED_FUNCTION_13_33();
      v47 = [(BWDepthConverterNode *)v44 filterDepthPixelBuffer:v45 outputDepthPixelBuffer:filteringOutputBuffer yuvImageSampleBuffer:sbuf depthSampleBuffer:v46 filteringType:v17];
      if (v47)
      {
        v49 = v47;
      }

      else
      {
        if (!self->_conversionAfterFilteringRequired)
        {
          goto LABEL_27;
        }

        if (*MEMORY[0x1E695FF58] == 1)
        {
          OUTLINED_FUNCTION_9_29();
          kdebug_trace();
        }

        v49 = FigDepthConvertBuffer(filteringOutputBuffer, v12);
        if (*MEMORY[0x1E695FF58] == 1)
        {
          OUTLINED_FUNCTION_9_29();
          kdebug_trace();
        }

        if (!v49)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_16_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v49);
      }

LABEL_81:
      v9 = 0;
      buffer = sbuf;
      goto LABEL_82;
    }

    v49 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E418, 0xFFFFCE14, "<<<< BWDepthConverterNode >>>>", 0x3C6, v4, v14, v15, v50);
    OUTLINED_FUNCTION_9_49();
  }

  else
  {
    v52 = 0;
    target = BWSampleBufferGetAttachedMedia(buffer, @"Depth");
    if (target)
    {
      v16 = 0;
      goto LABEL_20;
    }

    v49 = 0;
    v9 = 0;
    v12 = 0;
    target = 0;
  }

LABEL_37:
  if (*v7 == 1)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  if (v49)
  {
    v32 = 1;
  }

  else
  {
    v32 = v9 == 0;
  }

  v33 = !v32;
  v34 = v8[317];
  if (*(&self->super.super.isa + v34) == 1 && dword_1EB58E420 != 0)
  {
    v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_12_39();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    buffer = sbuf;
  }

  if (v33)
  {
    if (v9 != target)
    {
      BWSampleBufferSetAttachedMedia(buffer, @"Depth", v9);
    }
  }

  else if (target)
  {
    BWSampleBufferRemoveAttachedMedia(buffer, @"Depth");
  }

  if (*(&self->super.super.isa + v34) == 1)
  {
    v37 = OUTLINED_FUNCTION_13_33();
    [(BWDepthConverterNode *)v37 _removeConsumedAttachedMediaFromSampleBuffer:v38];
  }

  if (v57[0])
  {
    CFRelease(v57[0]);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

- (uint64_t)_resolveFilteringTypeWithStillFilteringRequested:(uint64_t)result
{
  if (result)
  {
    if (*(result + 138) == 1)
    {
      if (*(result + 489) == 1)
      {
        if ([*(result + 624) depthDataType] == 10)
        {
          return 7;
        }

        else
        {
          return 6;
        }
      }

      else if (a2)
      {
        if (*(result + 600) <= 1)
        {
          return 4;
        }

        else
        {
          return 5;
        }
      }

      else
      {
        return 0;
      }
    }

    else if (*(result + 137) == 1)
    {
      if (*(result + 139))
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }

    else if (*(result + 139))
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)filterDepthPixelBuffer:(__CVBuffer *)buffer outputDepthPixelBuffer:(CMSampleBufferRef)sbuf yuvImageSampleBuffer:(uint64_t)sampleBuffer depthSampleBuffer:(unsigned int)depthSampleBuffer filteringType:
{
  if (!self)
  {
    return 0;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v13 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  if (!depthSampleBuffer)
  {
    return 4294954516;
  }

  v14 = depthSampleBuffer - 4;
  if (depthSampleBuffer - 4 > 2)
  {
    v59 = 0;
    v60 = 0;
    v25 = 0;
    v57 = 0;
    v61 = 0;
    goto LABEL_19;
  }

  v15 = v13;
  v54 = ImageBuffer;
  bufferCopy = buffer;
  AttachedInference = BWInferenceGetAttachedInference(sbuf, 801, 0x1F219E5F0);
  if ([AttachedInference count])
  {
    v18 = AttachedInference;
  }

  else
  {
    v18 = 0;
  }

  [*(self + 592) setFaceLandmarksArray:v18];
  v19 = *off_1E798A5B0;
  v20 = [v15 objectForKeyedSubscript:*off_1E798A5B0];
  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v20, v19, CMGetAttachment(sbuf, *off_1E798D340, 0), *off_1E798D340, 0}];
  if ((depthSampleBuffer & 6) != 4)
  {
    v59 = 0;
    v60 = 0;
    v25 = 0;
    v57 = 0;
    v14 = depthSampleBuffer - 4;
LABEL_18:
    buffer = bufferCopy;
    ImageBuffer = v54;
    goto LABEL_19;
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(sbuf, 0x1F21AAC70);
  if (depthSampleBuffer == 5)
  {
    v22 = BWSampleBufferGetAttachedMedia(sbuf, 0x1F219E750);
    LowResPersonInstanceMasksFromSampleBuffer = BWInferenceGetLowResPersonInstanceMasksFromSampleBuffer(sbuf);
    v24 = sbuf;
    v25 = LowResPersonInstanceMasksFromSampleBuffer;
    v26 = BWInferenceGetAttachedInference(v24, 104, 0x1F219E990);
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v22 = 0;
  }

  v14 = depthSampleBuffer - 4;
  v60 = v26;
  if (!(AttachedMedia | v22))
  {
    if (![v25 count])
    {
      OUTLINED_FUNCTION_2_92();
      LODWORD(v50) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v50, v51, v52, v53, v54, v6, v56, v58);
      v29 = 4294954516;
      goto LABEL_59;
    }

    v57 = 0;
    v59 = 0;
    goto LABEL_18;
  }

  if (AttachedMedia)
  {
    v59 = CMSampleBufferGetImageBuffer(AttachedMedia);
  }

  else
  {
    v59 = 0;
  }

  buffer = bufferCopy;
  ImageBuffer = v54;
  if (v22)
  {
    v57 = CMSampleBufferGetImageBuffer(v22);
  }

  else
  {
    v57 = 0;
  }

LABEL_19:
  v27 = *(self + 520);
  if (v27 && (bufferCopy2 = *(self + 528)) != 0)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_9_29();
      kdebug_trace();
      v27 = *(self + 520);
      bufferCopy2 = *(self + 528);
    }

    v29 = FigDepthScaleBuffer(a2, v27);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_9_29();
      kdebug_trace();
    }

    if (v29)
    {
      goto LABEL_26;
    }
  }

  else
  {
    bufferCopy2 = buffer;
    v27 = a2;
  }

  if (depthSampleBuffer <= 6 && ((1 << depthSampleBuffer) & 0x7A) != 0 && ((v30 = [CMGetAttachment(ImageBuffer @"RotationDegrees"], v55 = buffer, v31 = v14, v32 = objc_msgSend(CMGetAttachment(ImageBuffer, @"MirroredVertical", 0), "BOOLValue"), v33 = v25, v34 = objc_msgSend(CMGetAttachment(ImageBuffer, @"MirroredHorizontal", 0), "BOOLValue"), (v35 = FigCaptureNormalizeAngle(v30 - *(self + 416)) % 180) == 0) ? (v36 = v32) : (v36 = 0), (v14 = v31, buffer = v55, v37 = v34 & (v35 == 90), v25 = v33, !(v36 | v37)) ? (v38 = v30) : (v38 = v30 + 180), v39 = FigCaptureNormalizeAngle(*(self + 416) - v38), v40 = -[BWDepthConverterNode rotateAndScaleAndCropImagePixelBuffer:depthPixelBuffer:to:rotationAngle:flip:](self, ImageBuffer, v27, *(self + 536), v39, 0), v40))
  {
    v29 = v40;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v50);
  }

  else
  {
    OUTLINED_FUNCTION_18();
    if (v42)
    {
      OUTLINED_FUNCTION_9_29();
      v44 = v43;
      kdebug_trace();
      v41 = v44;
    }

    if (depthSampleBuffer <= 6 && ((1 << depthSampleBuffer) & 0x4F) != 0)
    {
      v45 = [*(self + 592) processDepthBuffer:v27 yuvBuffer:*(self + *(v41 + 1156)) parametersDictionary:v61 outputDisparityBuffer:bufferCopy2];
    }

    else
    {
      v48 = *(self + 592);
      v49 = *(self + *(v41 + 1156));
      if (depthSampleBuffer == 5)
      {
        v45 = [v48 processDepthBuffer:v27 yuvBuffer:v49 personSegmentationMaskBuffer:v57 instanceSegmentationMaskBufferArray:v25 instanceSegmentationConfidences:v60 parametersDictionary:v61 outputDisparityBuffer:bufferCopy2];
      }

      else
      {
        v45 = [v48 processDepthBuffer:v27 yuvBuffer:v49 rgbSegmentationMaskBuffer:v59 parametersDictionary:v61 outputDisparityBuffer:bufferCopy2];
      }
    }

    v46 = v45;
    OUTLINED_FUNCTION_18();
    if (v42)
    {
      OUTLINED_FUNCTION_9_29();
      kdebug_trace();
    }

    if (v46)
    {
      v29 = 4294954516;
    }

    else if (*(self + 520) && *(self + 528))
    {
      OUTLINED_FUNCTION_18();
      if (v42)
      {
        OUTLINED_FUNCTION_9_29();
        kdebug_trace();
      }

      v29 = FigDepthScaleBuffer(bufferCopy2, buffer);
      OUTLINED_FUNCTION_18();
      if (v42)
      {
        OUTLINED_FUNCTION_9_29();
        kdebug_trace();
      }

      if (v29)
      {
LABEL_26:
        OUTLINED_FUNCTION_2_92();
        LODWORD(v50) = v29;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v50);
      }
    }

    else
    {
      v29 = 0;
    }
  }

  if (v14 <= 2)
  {
LABEL_59:
    [*(self + 592) setFaceLandmarksArray:0];
  }

  return v29;
}

- (uint64_t)_scaleDepthValues:(void *)values depthMetadata:(uint64_t)metadata sbuf:(uint64_t)sbuf
{
  if (!self)
  {
    return 0;
  }

  *&v22 = NAN;
  v11 = FigDepthComputeNormalizedFocalLength(values, &v22, values, metadata, sbuf, a6, a7, a8, v21);
  if (v11)
  {
    return v11;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v13 = ImageBuffer;
  if (ImageBuffer)
  {
    CFRetain(ImageBuffer);
  }

  v14 = *&v22;
  *&v15 = v14 * FigCaptureLongerDimensionForDimensions(*(self + 164));
  [*(self + 640) getMetricScaleFactorForEFL:v15];
  if (*&v16 <= 0.1)
  {
    *&v16 = 0.1;
  }

  [*(self + 648) stillImageScalingFactorWithDisparityBuffer:v13 sbuf:metadata scaleFactorFromEFL:v16];
  LODWORD(v18) = v17;
  v19 = [*(self + 568) depthValueInputPixelBuffer:v13 bias:0.0 scaleFactor:v18];
  if (v13)
  {
    CFRelease(v13);
  }

  return v19;
}

- (uint64_t)_generateAndAttachUnfilteredDepthToSampleBuffer:(__CVBuffer *)buffer depthOutputPixelBuffer:(opaqueCMSampleBuffer *)pixelBuffer depthOutputSampleBuffer:
{
  if (!self)
  {
    return 0;
  }

  cf = 0;
  v8 = [objc_msgSend(objc_msgSend(*(self + 16) mediaPropertiesForAttachedMediaKey:{0x1F21AAAB0), "livePixelBufferPool"), "newPixelBuffer"}];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if ((*(self + 138) & 1) != 0 || (*(self + 137) & 1) != 0 || *(self + 139) == 1)
  {
    if (*(self + 552) == 1)
    {
      v10 = FigDepthConvertBuffer(*(self + 512), v8);
      if (!v10)
      {
        goto LABEL_8;
      }

LABEL_14:
      CopyWithNewPixelBuffer = v10;
      goto LABEL_15;
    }

    v12 = *(self + 480);
    if (v12)
    {
      buffer = *(self + 512);
      goto LABEL_13;
    }
  }

  else
  {
    v12 = *(self + 480);
    if (v12)
    {
LABEL_13:
      v10 = VTPixelTransferSessionTransferImage(v12, buffer, v9);
      if (!v10)
      {
LABEL_8:
        CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(pixelBuffer, v9, (self + 472), &cf);
        if (!CopyWithNewPixelBuffer)
        {
          BWSampleBufferSetAttachedMedia(a2, 0x1F21AAAB0, cf);
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  CopyWithNewPixelBuffer = 4294954510;
LABEL_15:
  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  return CopyWithNewPixelBuffer;
}

- (void)_removeConsumedAttachedMediaFromSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAC70);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAC90);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219E750);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219E8F0);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219E910);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219E930);

    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219E950);
  }
}

- (uint64_t)rotateAndScaleAndCropImagePixelBuffer:(__CVBuffer *)buffer depthPixelBuffer:(const char *)pixelBuffer to:(int)to rotationAngle:(int)angle flip:
{
  pixelBufferCopy = pixelBuffer;
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_16_2();
  if (v12)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_5_69();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v27, v31, v32, v34, v36, pixelBufferCopy, v38, v39);
    v22 = *(self + 1048);
    v23 = 2210;
LABEL_21:
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 0xFFFFCE14, "<<<< BWDepthConverterNode >>>>", v23, a2, v20, v21, v28);
    goto LABEL_13;
  }

  if (!buffer)
  {
    OUTLINED_FUNCTION_5_69();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v27, v31, v32, v34, v36, pixelBufferCopy, v38, v39);
    v22 = *(self + 1048);
    v23 = 2211;
    goto LABEL_21;
  }

  if (!pixelBuffer)
  {
    OUTLINED_FUNCTION_5_69();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v27, v31, v32, v34, v36, pixelBufferCopy, v38, v39);
    v22 = *(self + 1048);
    v23 = 2212;
    goto LABEL_21;
  }

  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v40.origin.x = OUTLINED_FUNCTION_8_48(self + 424);
  if (!CGRectIsNull(v40))
  {
    v15 = CVPixelBufferGetWidth(a2);
    v16 = v15 | (CVPixelBufferGetHeight(a2) << 32);
    v36 = v16;
    FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v36, to);
    if (!FigCaptureVideoAspectRatiosAreEqual(v36, Width | (Height << 32), 0.01))
    {
      FigCaptureMakeRectWithAspectRatioInsideDimensions(v16, 1, Width / Height);
    }
  }

  if (!(FigCaptureNormalizeAngle(-to) % 90) || (FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v6, v32, v34, v36, pixelBufferCopy, v38, v39), v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E418, 0xFFFFCE14, "<<<< BWDepthConverterNode >>>>", 0x8DA, v6, v24, v25, v29), v18 = v26, !v26))
  {
    CVPixelBufferGetPixelFormatType(a2);
    v17 = CMPhotoScaleAndRotateSessionTransformForMaxSideLength();
LABEL_13:
    v18 = v17;
    goto LABEL_14;
  }

  LODWORD(v30) = v26;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v30, v6, v33, v35, v36, pixelBufferCopy, v38, v39);
LABEL_14:
  OUTLINED_FUNCTION_16_2();
  if (v12)
  {
    OUTLINED_FUNCTION_9_29();
    kdebug_trace();
  }

  return v18;
}

@end