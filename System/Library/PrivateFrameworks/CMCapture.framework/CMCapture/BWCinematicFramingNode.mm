@interface BWCinematicFramingNode
+ (void)initialize;
- ($1981ABD3383123DE67D3222CA4FC2B97)cinematicFramingControls;
- (BOOL)cinematicFramingControlsSuspended;
- (BWCinematicFramingNode)initWithOutputDimensions:(id)dimensions cameraInfoByPortType:(id)type horizontalSensorBinningFactor:(int)factor verticalSensorBinningFactor:(int)binningFactor deviceOrientationCorrectionEnabled:(BOOL)enabled stillImageCaptureEnabled:(BOOL)captureEnabled objectMetadataIdentifiers:(id)identifiers maxLossyCompressionLevel:(int)self0 portTypes:(id)self1 cinematicFramingControls:(id *)self2 cameraHasDistortionCoefficients:(BOOL)self3 cameraHasCalibrationValidMaxRadius:(BOOL)self4 centerStageMetadataDeliveryEnabled:(BOOL)self5 pipelineType:(unint64_t)self6 downStreamRequires10BitPixelFormat:(BOOL)self7;
- (CGRect)regionOfInterestForCameraControls;
- (double)_getDeviceToCameraSpaceTransform:(uint64_t)transform;
- (double)_initVirtualCameraProcessor;
- (double)manualFramingVideoZoomFactor;
- (id)_reportCinematicFramingSessionCoreAnalyticsData;
- (id)_updateOutputRequirements;
- (id)_updateVCProcessorWithCinematicFramingControls;
- (id)copyCameraStatesForPTS:(id *)s;
- (uint64_t)_isSampleBufferFromPrimaryStream:(void *)stream metadataDict:;
- (void)_addMetadaInputsAndOutputsWithObjectMetadataIdentifiers:(uint64_t)identifiers;
- (void)_addVideoCaptureInputsAndOutput;
- (void)_saveCameraStatesForStillImageCaptureRequestsWithInputCamera:(void *)camera outputCamera:(void *)outputCamera outputROI:(double)i pts:(double)pts;
- (void)_supportedOutputPixelFormats;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didChangeCenterStageFramingMode:(int)mode;
- (void)didChangeCenterStageMetadataDeliveryEnabled:(BOOL)enabled;
- (void)didChangeCenterStageRectOfInterest:(CGRect)interest;
- (void)didReachEndOfDataForInput:(id)input;
- (void)panWithTranslation:(CGPoint)translation;
- (void)performOneShotFraming;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)resetFraming;
- (void)restrictCenterStageFieldOfViewToWide:(BOOL)wide;
- (void)setCinematicFramingControls:(id *)controls;
- (void)setCinematicFramingControlsSuspended:(BOOL)suspended;
- (void)setManualFramingVideoZoomFactor:(double)factor;
- (void)startPanningAtPoint:(CGPoint)point;
@end

@implementation BWCinematicFramingNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWCinematicFramingNode)initWithOutputDimensions:(id)dimensions cameraInfoByPortType:(id)type horizontalSensorBinningFactor:(int)factor verticalSensorBinningFactor:(int)binningFactor deviceOrientationCorrectionEnabled:(BOOL)enabled stillImageCaptureEnabled:(BOOL)captureEnabled objectMetadataIdentifiers:(id)identifiers maxLossyCompressionLevel:(int)self0 portTypes:(id)self1 cinematicFramingControls:(id *)self2 cameraHasDistortionCoefficients:(BOOL)self3 cameraHasCalibrationValidMaxRadius:(BOOL)self4 centerStageMetadataDeliveryEnabled:(BOOL)self5 pipelineType:(unint64_t)self6 downStreamRequires10BitPixelFormat:(BOOL)self7
{
  captureEnabledCopy = captureEnabled;
  v31.receiver = self;
  v31.super_class = BWCinematicFramingNode;
  v23 = [(BWNode *)&v31 init];
  v24 = v23;
  if (v23)
  {
    v23->_outputDimensions = dimensions;
    v23->_cameraInfoByPortType = type;
    typesCopy = types;
    *(v24 + 480) = typesCopy;
    [v24 setSupportsConcurrentLiveInputCallbacks:{objc_msgSend(typesCopy, "count") > 1}];
    *(v24 + 168) = 0;
    if ((factor - 3) >= 0xFFFFFFFE && (*(v24 + 172) = factor, (binningFactor - 3) >= 0xFFFFFFFE))
    {
      *(v24 + 176) = binningFactor;
      *(v24 + 476) = level;
      *(v24 + 440) = objc_alloc_init(BWDeviceOrientationMonitor);
      *(v24 + 473) = enabled;
      *(v24 + 553) = format;
      *(v24 + 128) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(types, "count")}];
      *(v24 + 544) = pipelineType;
      [(BWCinematicFramingNode *)v24 _addVideoCaptureInputsAndOutput];
      *(v24 + 472) = captureEnabledCopy;
      if (captureEnabledCopy)
      {
        *(v24 + 348) = 0;
        *(v24 + 264) = 0;
        *(v24 + 232) = 0u;
        *(v24 + 248) = 0u;
        *(v24 + 200) = 0u;
        *(v24 + 216) = 0u;
        *(v24 + 336) = 0;
        *(v24 + 320) = 0u;
        *(v24 + 304) = 0u;
        *(v24 + 288) = 0u;
        *(v24 + 272) = 0u;
        *(v24 + 344) = 0;
      }

      if (identifiers)
      {
        *(v24 + 144) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(types, "count")}];
        [(BWCinematicFramingNode *)v24 _addMetadaInputsAndOutputsWithObjectMetadataIdentifiers:identifiers];
      }

      *(v24 + 468) = 5;
      v28 = *&controls->var3.origin.y;
      v27 = *&controls->var3.size.height;
      v29 = *&controls->var9;
      *(v24 + 408) = *&controls->var6;
      *(v24 + 424) = v29;
      *(v24 + 376) = v28;
      *(v24 + 392) = v27;
      *(v24 + 360) = *&controls->var0;
      *(v24 + 498) = coefficients;
      *(v24 + 499) = radius;
      *(v24 + 552) = deliveryEnabled;
      [(BWCinematicFramingNode *)v24 _updateOutputRequirements];
      *(v24 + 501) = 0;
      v30 = *(MEMORY[0x1E695F050] + 16);
      *(v24 + 504) = *MEMORY[0x1E695F050];
      *(v24 + 520) = v30;
      *(v24 + 536) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v24;
}

- (void)dealloc
{
  [(VCProcessor *)self->_vcProcessor purgeResources];

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  if (self->_stillImageCaptureEnabled)
  {
  }

  v4.receiver = self;
  v4.super_class = BWCinematicFramingNode;
  [(BWNode *)&v4 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  BWUtilitiesWarnIfInputFormatsMismatch([(BWNode *)self inputs], self->super._input);
  v3.receiver = self;
  v3.super_class = BWCinematicFramingNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor start];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  p_videoOutputFormatIsLive = &self->_videoOutputFormatIsLive;
  if (!self->_videoOutputFormatIsLive && ([-[NSMutableDictionary allValues](self->_videoCaptureInputsByPortType "allValues")] & 1) != 0)
  {
    v8 = &OBJC_IVAR___BWCinematicFramingNode__videoCaptureOutput;
LABEL_7:
    [*(&self->super.super.isa + *v8) makeConfiguredFormatLive];
    *p_videoOutputFormatIsLive = 1;
    goto LABEL_8;
  }

  p_videoOutputFormatIsLive = &self->_metadataOutputFormatIsLive;
  if (!self->_metadataOutputFormatIsLive && [-[NSMutableDictionary allValues](self->_detectionMetadataInputsByPortType "allValues")])
  {
    v8 = &OBJC_IVAR___BWCinematicFramingNode__detectionMetadataOutput;
    goto LABEL_7;
  }

LABEL_8:

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didReachEndOfDataForInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if ([-[NSMutableDictionary allValues](self->_videoCaptureInputsByPortType "allValues")])
  {
    v5 = 0;
    v6 = (atomic_fetch_add_explicit(&self->_endOfDataVideoInputsCount, 1u, memory_order_relaxed) + 1);
  }

  else
  {
    v6 = 0;
    if ([-[NSMutableDictionary allValues](self->_detectionMetadataInputsByPortType "allValues")])
    {
      v5 = (atomic_fetch_add_explicit(&self->_endOfDataMetadataInputsCount, 1u, memory_order_relaxed) + 1);
    }

    else
    {
      v5 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
  if (v6 == [(NSMutableDictionary *)self->_videoCaptureInputsByPortType count])
  {
    [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor stop];
    [(BWNodeOutput *)self->_videoCaptureOutput markEndOfLiveOutput];
    [(BWCinematicFramingNode *)&self->super.super.isa _reportCinematicFramingSessionCoreAnalyticsData];
    self->_endOfDataVideoInputsCount = 0;
  }

  if (v5 == [(NSMutableDictionary *)self->_detectionMetadataInputsByPortType count])
  {
    [(BWNodeOutput *)self->_detectionMetadataOutput markEndOfLiveOutput];
    self->_endOfDataMetadataInputsCount = 0;
  }
}

- (void)didChangeCenterStageRectOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(VCProcessor *)self->_vcProcessor setOutputROI:x, y, width, height];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didChangeCenterStageFramingMode:(int)mode
{
  v3 = *&mode;
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [-[VCProcessor framingSession](self->_vcProcessor "framingSession")];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didChangeCenterStageMetadataDeliveryEnabled:(BOOL)enabled
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  self->_centerStageMetadataDeliveryEnabled = enabled;

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)restrictCenterStageFieldOfViewToWide:(BOOL)wide
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  self->_cinematicFramingControls.fieldOfViewRestrictedToWide = wide;

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- ($1981ABD3383123DE67D3222CA4FC2B97)cinematicFramingControls
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  v5 = *&self->_cinematicFramingControls.panningAngleX;
  *&retstr->var3.size.height = *&self->_cinematicFramingControls.outputFramingRectOfInterest.size.height;
  *&retstr->var6 = v5;
  *&retstr->var9 = *&self->_cinematicFramingControls.defaultVirtualCameraRotationAngleX;
  v6 = *&self->_cinematicFramingControls.outputFramingRectOfInterest.origin.y;
  *&retstr->var0 = *&self->_cinematicFramingControls.autoFramingEnabled;
  *&retstr->var3.origin.y = v6;

  os_unfair_lock_unlock(&self->_bufferServicingLock);
  return result;
}

- (void)setCinematicFramingControls:(id *)controls
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  *&self->_cinematicFramingControls.autoFramingEnabled = *&controls->var0;
  v5 = *&controls->var9;
  v7 = *&controls->var3.origin.y;
  v6 = *&controls->var3.size.height;
  *&self->_cinematicFramingControls.panningAngleX = *&controls->var6;
  *&self->_cinematicFramingControls.defaultVirtualCameraRotationAngleX = v5;
  *&self->_cinematicFramingControls.outputFramingRectOfInterest.origin.y = v7;
  *&self->_cinematicFramingControls.outputFramingRectOfInterest.size.height = v6;
  [(BWCinematicFramingNode *)&self->super.super.isa _updateVCProcessorWithCinematicFramingControls];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (BOOL)cinematicFramingControlsSuspended
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  cinematicFramingControlsSuspended = self->_cinematicFramingControlsSuspended;
  os_unfair_lock_unlock(&self->_bufferServicingLock);
  return cinematicFramingControlsSuspended;
}

- (void)setCinematicFramingControlsSuspended:(BOOL)suspended
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  self->_cinematicFramingControlsSuspended = suspended;

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)startPanningAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(VCProcessor *)self->_vcProcessor startRotatingFromPoint:x, y];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)panWithTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(VCProcessor *)self->_vcProcessor continueRotatingToPoint:x, y];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)performOneShotFraming
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(VCProcessor *)self->_vcProcessor adjustToFrameCurrentScene];
  os_unfair_lock_unlock(&self->_bufferServicingLock);
  self->_oneShotFramingInFlight = 1;
}

- (void)resetFraming
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(VCProcessor *)self->_vcProcessor resetOutputCamera];
  os_unfair_lock_unlock(&self->_bufferServicingLock);
  self->_outputCameraResetInFlight = 1;
}

- (double)manualFramingVideoZoomFactor
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(VCProcessor *)self->_vcProcessor videoZoomFactor];
  v4 = v3;
  os_unfair_lock_unlock(&self->_bufferServicingLock);
  return v4;
}

- (void)setManualFramingVideoZoomFactor:(double)factor
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (self->_cinematicFramingControlsSuspended)
  {
    if (dword_1EB58E5C0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    *&v5 = factor;
    [(VCProcessor *)self->_vcProcessor setVideoZoomFactor:v5];
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (CGRect)regionOfInterestForCameraControls
{
  x = self->_regionOfInterestForCameraControls.origin.x;
  y = self->_regionOfInterestForCameraControls.origin.y;
  width = self->_regionOfInterestForCameraControls.size.width;
  height = self->_regionOfInterestForCameraControls.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_addVideoCaptureInputsAndOutput
{
  if (self)
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([*(self + 480) count])
    {
      v3 = 0;
      do
      {
        v4 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:self index:v3];
        v5 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v5 setSupportedPixelFormats:FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F2248460, *(self + 476))];
        [(BWNodeInput *)v4 setFormatRequirements:v5];
        [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v4 primaryMediaConfiguration] setPassthroughMode:0];
        [(BWNodeInput *)v4 setDelayedBufferCount:[(BWNodeInput *)v4 delayedBufferCount]+ 1];
        [self addInput:v4];
        [*(self + 128) setObject:v4 forKeyedSubscript:{objc_msgSend(*(self + 480), "objectAtIndexedSubscript:", v3)}];

        [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v3++)}];
      }

      while (v3 < [*(self + 480) count]);
    }

    v7 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:self];
    v6 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v6 setSupportedPixelFormats:[(BWCinematicFramingNode *)self _supportedOutputPixelFormats]];
    [(BWNodeOutput *)v7 setFormatRequirements:v6];
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v7 primaryMediaConfiguration] setPassthroughMode:0];
    *(self + 136) = v7;
    [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v7 primaryMediaConfiguration] setIndexesOfInputsWhichDrivesThisOutput:array];
    if (*(self + 544) == 1)
    {
      [(BWNodeOutput *)v7 setOwningNodeRetainedBufferCount:3];
    }

    [self addOutput:v7];
  }
}

- (void)_addMetadaInputsAndOutputsWithObjectMetadataIdentifiers:(uint64_t)identifiers
{
  if (identifiers)
  {
    if ([*(identifiers + 480) count])
    {
      v4 = 0;
      do
      {
        v5 = -[BWNodeInput initWithMediaType:node:index:]([BWNodeInput alloc], "initWithMediaType:node:index:", 1835365473, identifiers, [*(identifiers + 128) count] + v4);
        [identifiers addInput:v5];
        [*(identifiers + 144) setObject:v5 forKeyedSubscript:{objc_msgSend(*(identifiers + 480), "objectAtIndexedSubscript:", v4)}];

        ++v4;
      }

      while (v4 < [*(identifiers + 480) count]);
    }

    v6 = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:identifiers];
    [(BWNodeOutput *)v6 setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:a2]];
    [identifiers addOutput:v6];
    *(identifiers + 152) = v6;
  }
}

- (id)_updateOutputRequirements
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(objc_msgSend(objc_msgSend(result[16] "allValues")];
    v3 = 0;
    if (v2)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:v2];
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
    }

    _supportedOutputPixelFormats = [(BWCinematicFramingNode *)v1 _supportedOutputPixelFormats];
    formatRequirements = [v1[17] formatRequirements];
    [formatRequirements setWidth:*(v1 + 48)];
    [formatRequirements setHeight:*(v1 + 49)];
    [formatRequirements setSupportedColorSpaceProperties:v3];
    return [formatRequirements setSupportedPixelFormats:_supportedOutputPixelFormats];
  }

  return result;
}

- (double)_initVirtualCameraProcessor
{
  if (self)
  {
    v2 = *(self + 352);
    if (v2)
    {
    }

    v3 = objc_alloc_init(MEMORY[0x1E6994588]);
    *(self + 352) = v3;
    [v3 setOutputDimensions:*(self + 192)];
    [OUTLINED_FUNCTION_1_45() setCameraInfoByPortType:?];
    if ([OUTLINED_FUNCTION_1_45() setup] || objc_msgSend(OUTLINED_FUNCTION_1_45(), "prewarm"))
    {
      OUTLINED_FUNCTION_6_29();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      if (dword_1EB58E5C0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      [OUTLINED_FUNCTION_1_45() setOrientationCorrectionEnabled:?];

      [(BWCinematicFramingNode *)self _updateVCProcessorWithCinematicFramingControls];
    }
  }

  return result;
}

- (id)_reportCinematicFramingSessionCoreAnalyticsData
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(BWCinematicFramingSessionAnalyticsPayload);
    [(BWCinematicFramingSessionAnalyticsPayload *)v2 setCinematicFramingMaxPeopleDetected:*(v1 + 112)];
    v3 = [objc_msgSend(v1[44] "framingSession")];
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if ([v3 count])
    {
      v5 = 0;
      do
      {
        [v4 appendString:{objc_msgSend(objc_msgSend(v3, "objectAtIndexedSubscript:", v5), "stringValue")}];
        if (v5 != [v3 count] - 1)
        {
          [v4 appendString:{@", "}];
        }

        ++v5;
      }

      while ([v3 count] > v5);
    }

    [(BWCinematicFramingSessionAnalyticsPayload *)v2 setCinematicFramingROIHeatMap:v4];
    [(BWCinematicFramingSessionAnalyticsPayload *)v2 setClientApplicationID:v1[57]];
    [(BWCinematicFramingSessionAnalyticsPayload *)v2 setCinematicFramingControlMode:*(v1 + 116)];
    v6 = +[BWCoreAnalyticsReporter sharedInstance];

    return [(BWCoreAnalyticsReporter *)v6 sendEvent:v2];
  }

  return result;
}

- (id)_updateVCProcessorWithCinematicFramingControls
{
  if (result)
  {
    [result[44] setAutoFramingEnabled:*(result + 360)];
    OUTLINED_FUNCTION_3_34();
    [OUTLINED_FUNCTION_1_45() setFisheyeEffectEnabled:?];
    OUTLINED_FUNCTION_3_34();
    [OUTLINED_FUNCTION_1_45() setOutputCameraDefaultRotation:?];
    OUTLINED_FUNCTION_3_34();
    if (*v1 == 1)
    {
      [OUTLINED_FUNCTION_1_45() setOutputROI:?];
      OUTLINED_FUNCTION_3_34();
      v3 = *(v2 + 40);
      framingSession = [OUTLINED_FUNCTION_1_45() framingSession];

      return [framingSession setFramingStyle:v3];
    }

    else
    {
      OUTLINED_FUNCTION_1_45();
      v5 = OUTLINED_FUNCTION_8_22();
      [v6 setOutputROI:v5];
      OUTLINED_FUNCTION_3_34();
      v8 = *(v7 + 48);
      [objc_msgSend(OUTLINED_FUNCTION_1_45() "outputCamera")];
      OUTLINED_FUNCTION_3_34();
      [OUTLINED_FUNCTION_1_45() setVideoZoomFactor:?];
      OUTLINED_FUNCTION_3_34();
      v9 = OUTLINED_FUNCTION_1_45();

      return [v9 setManualFramingDefaultVideoZoomFactor:?];
    }
  }

  return result;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v5 = MEMORY[0x1EEE9AC00](self, a2, buffer, input);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v11 = 168;
  os_unfair_lock_lock(v5 + 42);
  v124[0] = 0;
  v12 = [objc_msgSend(*(v10 + 128) "allValues")];
  v13 = [objc_msgSend(*(v10 + 144) "allValues")];
  CopyWithNewPixelBuffer = v13;
  if ((v12 & 1) == 0 && !v13)
  {
    v23 = 0;
    goto LABEL_78;
  }

  v15 = OUTLINED_FUNCTION_7_24(v13, *off_1E798A3C8);
  if (v12)
  {
    v116 = *(v10 + 136);
    PortTypeForInputFromInputByPortTypes = BWUtilitiesGetPortTypeForInputFromInputByPortTypes(v7, *(v10 + 128));
    if (([(BWCinematicFramingNode *)v10 _isSampleBufferFromPrimaryStream:v91 metadataDict:v15]& 1) == 0)
    {
      goto LABEL_68;
    }

    v17 = v116;
  }

  else
  {
    if (!CopyWithNewPixelBuffer)
    {
      goto LABEL_77;
    }

    PortTypeForInputFromInputByPortTypes = 0;
    v17 = *(v10 + 152);
  }

  v115 = PortTypeForInputFromInputByPortTypes;
  v116 = v17;
  if (v17)
  {
    Value = CFDictionaryGetValue(v15, *off_1E798A420);
    memset(&v123, 0, sizeof(v123));
    v19 = CMTimeMakeFromDictionary(&v123, Value);
    v20 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    if ((v12 & 1) == 0)
    {
      v23 = 0;
      v33 = 0;
      v7 = v116;
      goto LABEL_57;
    }

    v21 = OUTLINED_FUNCTION_7_24(v19, @"OriginalCameraIntrinsicMatrix");
    if (v21)
    {
      v22 = v21;
      v23 = OUTLINED_FUNCTION_7_24(v21, @"OriginalCameraIntrinsicMatrixReferenceDimensions");
      if (v23)
      {
        v113 = [objc_msgSend(objc_msgSend(objc_msgSend(v10 "output")];
        if (v113)
        {
          HIDWORD(v105) = CopyWithNewPixelBuffer;
          ImageBuffer = CMSampleBufferGetImageBuffer(v9);
          Width = CVPixelBufferGetWidth(ImageBuffer);
          Height = CVPixelBufferGetHeight(ImageBuffer);
          OUTLINED_FUNCTION_9_18();
          *&v118[16] = *(v27 + 32);
          v23 = FigCaptureCreateCalibrationDataDictionaryFromSampleBufferMetadataIncludeMaxRadius(v15, v118, v28, v29, v30, v22, v23, 0, 0, v31, v32);
          if (v23)
          {
            if ([objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798B4B8), "intValue"}] >= *(v10 + 468))
            {
              v107 = [v15 objectForKeyedSubscript:*off_1E798B220];
            }

            else
            {
              v107 = 0;
            }

            v122 = 0;
            v121 = 0;
            MotionDataFromISP = [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798B3E0), "unsignedIntValue"}];
            v35 = 0;
            if ((MotionDataFromISP & 1) == 0)
            {
              bzero(v118, 0x14A0uLL);
              v117 = 0;
              MotionDataFromISP = FigMotionGetMotionDataFromISP(v15, v118, 0, 110, &v117, &v121, 0, 0, 0);
              if (MotionDataFromISP)
              {
                v36 = 1;
              }

              else
              {
                v36 = v117 <= 0;
              }

              v35 = !v36;
            }

            v37 = Width / Height;
            if (*(v10 + 360) == 1)
            {
              v38 = OUTLINED_FUNCTION_7_24(MotionDataFromISP, *off_1E798A308);
              OUTLINED_FUNCTION_7_24(v38, *off_1E798A300);
            }

            FigCaptureSensorIDFromSampleBufferMetadata(v15, *(v10 + 184));
            v39 = objc_alloc(MEMORY[0x1E6994568]);
            v40 = OUTLINED_FUNCTION_9_18();
            *&v118[16] = *(v41 + 32);
            BYTE1(v101) = v42;
            LOBYTE(v101) = v43;
            v40.n128_f32[0] = v37;
            v45 = [v44 initWithDetectedObjectsInfo:v40.n128_f64[0] calibrationData:v101 timestamp:? aspectRatio:? sensorID:? filteredFaceIDs:? filteredBodyIDs:? calibrationDistortionCoefficientsSupported:? calibrationValidMaxRadiusSupported:?];
            v23 = v45;
            if (v45)
            {
              if (v35)
              {
                LODWORD(v47) = v121.i32[1];
                LODWORD(v46) = v121.i32[0];
                LODWORD(v48) = v122;
                [(__CFDictionary *)v45 setGravityX:v46 y:v47 z:v48];
              }

              [(__CFDictionary *)v23 setDeviceToCameraSpaceTransform:[(BWCinematicFramingNode *)v10 _getDeviceToCameraSpaceTransform:v15]];
              [(__CFDictionary *)v23 setPortType:v115];
              -[__CFDictionary setCameraOrientation:](v23, "setCameraOrientation:", [*(v10 + 440) mostRecentPortraitLandscapeOrientation]);
              [objc_msgSend(objc_msgSend(*(v10 + 184) objectForKeyedSubscript:{v115), "objectForKeyedSubscript:", *off_1E7989E60), "floatValue"}];
              [(__CFDictionary *)v23 setAdditionalInputCameraRotation:?];
              v50 = BWCaptureDevicePositionFromPortType(v115, v49) == 2;
              IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798B238), "integerValue"}]);
              [(__CFDictionary *)v23 setFrontCameraHas180DegreesRotation:FigCaptureCameraRequires180DegreesRotation(v50, IsExtensionDeviceType)];
              v52 = *off_1E798B7A0;
              v53 = [v15 objectForKeyedSubscript:*off_1E798B7A0];
              if (v53)
              {
                CVBufferSetAttachment(ImageBuffer, v52, v53, kCVAttachmentMode_ShouldPropagate);
              }

              [*(v10 + 352) setInputPixelBuffer:ImageBuffer];
              [*(v10 + 352) setInputMetadata:v23];
              v33 = v113;
              [*(v10 + 352) setOutputPixelBuffer:v113];
              process = [*(v10 + 352) process];
              if (!process)
              {
                process = [*(v10 + 352) finishProcessing];
                if (!process)
                {
                  if (*(v10 + 544) == 1)
                  {
                    if (*(v10 + 501) == 1 && *(v10 + 536))
                    {
                      v55 = MEMORY[0x1E6994588];
                      outputCamera = [*(v10 + 352) outputCamera];
                      [*(v10 + 352) inputCamera];
                      [v55 warpCGRect:outputCamera fromCamera:OUTLINED_FUNCTION_8_22() toCamera:?];
                      v58 = v57;
                      v60 = v59;
                      v62 = v61;
                      v64 = v63 * [objc_msgSend(v7 "videoFormat")];
                      v65 = v58 * [objc_msgSend(v7 "videoFormat")];
                      v66 = v60 * [objc_msgSend(v7 "videoFormat")];
                      v67 = [objc_msgSend(v7 "videoFormat")];
                      *(v10 + 504) = v64;
                      *(v10 + 512) = v65;
                      *(v10 + 520) = v66;
                      *(v10 + 528) = v62 * v67;
                      (*(*(v10 + 536) + 16))();
                    }

                    v68 = CVBufferCopyAttachments(ImageBuffer, kCVAttachmentMode_ShouldPropagate);
                    if (v68)
                    {
                      v69 = CFAutorelease(v68);
                      if (v69)
                      {
                        v70 = v69;
                        v71 = *MEMORY[0x1E6965CE8];
                        if (![(__CFDictionary *)v69 objectForKeyedSubscript:*MEMORY[0x1E6965CE8]])
                        {
                          v72 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v70];
                          ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v70);
                          [v72 setObject:ColorSpaceFromAttachments forKeyedSubscript:v71];

                          v70 = v72;
                        }

                        CVBufferSetAttachments(v113, v70, kCVAttachmentMode_ShouldPropagate);
                      }
                    }
                  }

                  v74 = MEMORY[0x1E696AD98];
                  [objc_msgSend(*(v10 + 352) "outputCamera")];
                  OUTLINED_FUNCTION_23_0([v74 numberWithFloat:?]);
                  if (*(v10 + 552) == 1)
                  {
                    v75 = MEMORY[0x1E696AD98];
                    [objc_msgSend(*(v10 + 352) "outputCamera")];
                    OUTLINED_FUNCTION_23_0([v75 numberWithFloat:?]);
                    v119 = 0u;
                    v120 = 0u;
                    memset(v118, 0, sizeof(v118));
                    [*(v10 + 352) getPhysicalCameraToVirtualCameraTransform];
                    OUTLINED_FUNCTION_2_44();
                    *(v76 + 40) = v77;
                    *(v76 + 56) = v78;
                    *&v119 = v79;
                    *&v120 = v80;
                    CMSetAttachment(v9, *off_1E798A2F0, [MEMORY[0x1E695DEF0] dataWithBytes:v118 length:64], 1u);
                    v81 = *MEMORY[0x1E6960470];
                    v7 = v116;
                    if (*(v10 + 552))
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    v81 = *MEMORY[0x1E6960470];
                    v7 = v116;
                  }

                  if (!CMGetAttachment(v9, v81, 0))
                  {
LABEL_47:
                    v20 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                    if ((*(v10 + 360) & 1) == 0)
                    {
                      CMRemoveAttachment(v9, *off_1E798A308);
                      CMRemoveAttachment(v9, *off_1E798A300);
                    }

                    v85 = [-[__CFDictionary faceDetections](v23 "faceDetections")];
                    v86 = [-[__CFDictionary bodyDetections](v23 "bodyDetections")];
                    if (v86 <= v85)
                    {
                      v87 = v85;
                    }

                    else
                    {
                      v87 = v86;
                    }

                    if (v87 > *(v10 + 448))
                    {
                      *(v10 + 448) = v87;
                    }

                    if (*(v10 + 472) == 1)
                    {
                      inputCamera = [*(v10 + 352) inputCamera];
                      outputCamera2 = [*(v10 + 352) outputCamera];
                      [*(v10 + 352) outputROI];
                      *v118 = v123;
                      v94 = outputCamera2;
                      v20 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                      [(BWCinematicFramingNode *)v10 _saveCameraStatesForStillImageCaptureRequestsWithInputCamera:inputCamera outputCamera:v94 outputROI:v118 pts:v95, v96, v97, v98];
                    }

                    v11 = 168;
LABEL_57:
                    v88 = *(v10 + 360) ^ 1;
                    if (CopyWithNewPixelBuffer)
                    {
                      FigCaptureCinematicFramingUpdateSampleBufferMetadata(*(v10 + v20[479]), v9, v88 & 1);
                      CopyWithNewPixelBuffer = 0;
                      v89 = v9;
                    }

                    else
                    {
                      CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(v9, v33, (v10 + 160), v124);
                      if (!v124[0])
                      {
                        goto LABEL_62;
                      }

                      v90 = CMSampleBufferGetImageBuffer(v9);
                      CVBufferPropagateAttachments(v90, v33);
                      FigCaptureCinematicFramingUpdateSampleBufferMetadata(*(v10 + v20[479]), v124[0], v88 & 1);
                      v89 = v124[0];
                    }

                    [v7 emitSampleBuffer:v89];
LABEL_62:
                    if (!v33)
                    {
                      goto LABEL_78;
                    }

                    goto LABEL_63;
                  }

LABEL_46:
                  v119 = 0u;
                  memset(v118, 0, sizeof(v118));
                  [objc_msgSend(*(v10 + 352) "outputCamera")];
                  OUTLINED_FUNCTION_2_44();
                  *(v82 + 40) = v83;
                  *&v119 = v84;
                  OUTLINED_FUNCTION_23_0([MEMORY[0x1E695DEF0] dataWithBytes:v118 length:48]);
                  goto LABEL_47;
                }
              }

              CopyWithNewPixelBuffer = process;
              OUTLINED_FUNCTION_16_0();
              LODWORD(v102) = v99;
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v102);
              v11 = 168;
              v7 = v116;
LABEL_63:
              CFRelease(v33);
              goto LABEL_78;
            }

            OUTLINED_FUNCTION_16_0();
            LODWORD(v102) = 0;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v102, v103, v4, v105, v107, 0x1F2, 0xA8, v113);
            CopyWithNewPixelBuffer = -12783;
            v11 = v111;
          }

          else
          {
            OUTLINED_FUNCTION_16_0();
            LODWORD(v101) = 0;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v101, v103, v4, v105, v106, 0x1F2, 0xA8, v113);
            CopyWithNewPixelBuffer = -12784;
            v11 = v110;
          }

          v7 = v116;
          v33 = v114;
          goto LABEL_63;
        }

        v23 = 0;
        CopyWithNewPixelBuffer = -12786;
      }

      else
      {
        OUTLINED_FUNCTION_16_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v103, v4, v105, v106, v108, v109, v112);
        CopyWithNewPixelBuffer = 0;
      }

      goto LABEL_69;
    }

    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v104, v105, v106, v108, v109, v112);
LABEL_68:
    CopyWithNewPixelBuffer = 0;
    v23 = 0;
LABEL_69:
    v7 = v116;
    goto LABEL_78;
  }

  CopyWithNewPixelBuffer = 0;
LABEL_77:
  v23 = 0;
  v7 = 0;
LABEL_78:
  if (v124[0])
  {
    CFRelease(v124[0]);
  }

  if (CopyWithNewPixelBuffer)
  {
    CMSampleBufferGetPresentationTimeStamp(v118, v9);
    v100 = [BWDroppedSample newDroppedSampleWithReason:0x1F219C0D0 pts:v118];
    [v7 emitDroppedSample:v100];
  }

  os_unfair_lock_unlock((v10 + v11));
}

- (uint64_t)_isSampleBufferFromPrimaryStream:(void *)stream metadataDict:
{
  if (result)
  {
    if ([*(result + 128) count] >= 2 && (v4 = objc_msgSend(stream, "objectForKeyedSubscript:", *off_1E798B710)) != 0)
    {

      return [v4 BOOLValue];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (double)_getDeviceToCameraSpaceTransform:(uint64_t)transform
{
  if (transform)
  {
    v3 = *off_1E798B540;
    if (objc_msgSend_isEqualToString_([a2 objectForKeyedSubscript:*off_1E798B540]))
    {
      isEqualToString = 1;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_([a2 objectForKeyedSubscript:v3]);
    }

    IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B238), "integerValue"}]);
    if (isEqualToString)
    {
      v6 = FigCaptureCameraRequires180DegreesRotation(1, IsExtensionDeviceType);
      v7 = &_PromotedConst;
      if (!v6)
      {
        v7 = &_PromotedConst_244;
      }
    }

    else
    {
      v7 = &_PromotedConst_245;
    }

    v8 = *v7;
  }

  else
  {
    *&v8 = 0;
  }

  return *&v8;
}

- (void)_saveCameraStatesForStillImageCaptureRequestsWithInputCamera:(void *)camera outputCamera:(void *)outputCamera outputROI:(double)i pts:(double)pts
{
  if (self)
  {
    os_unfair_lock_lock(self + 87);
    v16 = &self[18 * self[86]._os_unfair_lock_opaque + 50];
    v17 = *&v16[2]._os_unfair_lock_opaque;
    if (*&v16->_os_unfair_lock_opaque)
    {
    }

    if (v17)
    {
    }

    v18 = [a2 copy];
    v19 = [camera copy];
    v20 = &self[18 * self[86]._os_unfair_lock_opaque + 50];
    *&v20->_os_unfair_lock_opaque = v18;
    *&v20[2]._os_unfair_lock_opaque = v19;
    *&v20[8]._os_unfair_lock_opaque = v23;
    *&v20[4]._os_unfair_lock_opaque = v22;
    *&v20[10]._os_unfair_lock_opaque = i;
    *&v20[12]._os_unfair_lock_opaque = pts;
    os_unfair_lock_opaque = self[86]._os_unfair_lock_opaque;
    *&v20[14]._os_unfair_lock_opaque = a7;
    *&v20[16]._os_unfair_lock_opaque = a8;
    self[86]._os_unfair_lock_opaque = (os_unfair_lock_opaque & 1) == 0;
    os_unfair_lock_unlock(self + 87);
  }
}

- (id)copyCameraStatesForPTS:(id *)s
{
  os_unfair_lock_lock(&self->_stillCaptureQueueLock);
  v5 = 0;
  stillCaptureQueue = self->_stillCaptureQueue;
  var0 = s->var0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = 1;
  v10 = 72;
  while (1)
  {
    v11 = v9;
    v12 = *(&stillCaptureQueue->pts.value + v5 * v10);
    v13 = var0 - v12;
    if (var0 == v12)
    {
      break;
    }

    if (v13 < 0)
    {
      v13 = v12 - var0;
    }

    if (v8 > v13)
    {
      OUTLINED_FUNCTION_5_35();
      v8 = v14;
    }

    v9 = 0;
    v5 = 1;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_5_35();
  return 0;
}

- (void)_supportedOutputPixelFormats
{
  if (!self)
  {
    return 0;
  }

  if (*(self + 553))
  {
    return &unk_1F2248478;
  }

  v2 = [MEMORY[0x1E695DF70] arrayWithArray:{FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F2248460, *(self + 476))}];
  v3 = [objc_msgSend(objc_msgSend(objc_msgSend(*(self + 128) "allValues")];
  if (v3)
  {
    IsFullRange = FigCapturePixelFormatIsFullRange(v3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__BWCinematicFramingNode__supportedOutputPixelFormats__block_invoke;
    v6[3] = &__block_descriptor_33_e35_B24__0__NSNumber_8__NSDictionary_16l;
    v7 = IsFullRange;
    [v2 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v6)}];
  }

  return v2;
}

@end