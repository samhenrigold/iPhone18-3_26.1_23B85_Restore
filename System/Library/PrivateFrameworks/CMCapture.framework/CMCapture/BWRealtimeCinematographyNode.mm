@interface BWRealtimeCinematographyNode
- (BWRealtimeCinematographyNode)initWithObjectMetadataIdentifiers:(id)identifiers cachedSimulatedAperture:(float)aperture captureDevice:(id)device tuningParameters:(id)parameters videoDepthConfiguration:(id)configuration smartStyleLearningEnabled:(BOOL)enabled highResolutionInputEnabled:(BOOL)inputEnabled transformCinematographyDetectionsForMovieFileOutput:(BOOL)self0;
- (NSData)globalMetadata;
- (double)_frameCaptureIDAndPTSForSampleBuffer:(_DWORD *)buffer captureIDOut:(CMTime *)out bufferPTSOut:;
- (id)_dropFrame:(id *)result;
- (id)_sendDropAndRemoveSampleBuffer:(id *)result fromQueue:(CMSampleBufferRef)sbuf withCaptureID:(void *)d;
- (id)_updateGlobalMetadata:(id *)result;
- (id)copyCinematicVideoFocusDetections;
- (int)_updateAlphaLowLightWithMetadata:(const void *)metadata imageSampleBuffer:;
- (uint64_t)_findCaptureSampleBuffer:(void *)buffer matchingPreviewSampleBuffer:;
- (uint64_t)_updateAutoFocus:(double)focus finalCropRect:(double)rect;
- (uint64_t)_updateFromQueue:(void *)queue sampleBufferOut:(_DWORD *)out captureID:(CMTime *)d bufferPTS:;
- (void)_convertSampleBufferDetectedObjectsFromSensorToBufferCoordinateSpace:(void *)result;
- (void)_emitMovieFileDropForPreviousSampleBuffer;
- (void)_emitSampleBufferOnMetadataOutput:(void *)output cinematographyFrame:;
- (void)_tryToEmit:(void *)emit captureBuffer:;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setFocusDetectionProviderEnabled:(BOOL)enabled;
@end

@implementation BWRealtimeCinematographyNode

- (BWRealtimeCinematographyNode)initWithObjectMetadataIdentifiers:(id)identifiers cachedSimulatedAperture:(float)aperture captureDevice:(id)device tuningParameters:(id)parameters videoDepthConfiguration:(id)configuration smartStyleLearningEnabled:(BOOL)enabled highResolutionInputEnabled:(BOOL)inputEnabled transformCinematographyDetectionsForMovieFileOutput:(BOOL)self0
{
  enabledCopy = enabled;
  v77.receiver = self;
  v77.super_class = BWRealtimeCinematographyNode;
  v17 = [(BWNode *)&v77 init];
  if (!v17)
  {
    return v17;
  }

  identifiersCopy = identifiers;
  deviceCopy = device;
  parametersCopy = parameters;
  v17[232] = [configuration videoDepthAlgorithm] == 4;
  v17[317] = inputEnabled;
  v17[469] = output;
  v18 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v17];
  [(BWNodeInput *)v18 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeInput *)v18 setPassthroughMode:1];
  v19 = objc_alloc_init(BWNodeInputMediaConfiguration);
  v20 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v20 setSupportedPixelFormats:&unk_1F2247F38];
  [(BWNodeInputMediaConfiguration *)v19 setFormatRequirements:v20];
  [(BWNodeInputMediaConfiguration *)v19 setPassthroughMode:1];
  -[BWNodeInputMediaConfiguration setDelayedBufferCount:](v19, "setDelayedBufferCount:", [configuration concurrencyWidth]);
  -[BWNodeInput setDelayedBufferCount:](v18, "setDelayedBufferCount:", [configuration concurrencyWidth]);
  [(BWNodeInput *)v18 setMediaConfiguration:v19 forAttachedMediaKey:@"Depth"];
  [v17 addInput:v18];
  if (v17[317] == 1)
  {
    *(v17 + 47) = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v17 index:1];
    [*(v17 + 47) setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [*(v17 + 47) setPassthroughMode:1];
    primaryMediaConfiguration = [*(v17 + 47) primaryMediaConfiguration];
    [primaryMediaConfiguration setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [primaryMediaConfiguration setPassthroughMode:1];
    [*(v17 + 47) setDelayedBufferCount:{objc_msgSend(configuration, "concurrencyWidth")}];
    [v17 addInput:*(v17 + 47)];
    *(v17 + 44) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v17 + 45) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v17 + 86) = 0;
  }

  configurationCopy = configuration;
  v22 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v17];
  *(v17 + 19) = v22;
  [(BWNodeOutput *)v22 setPassthroughMode:1];
  [*(v17 + 19) setIndexOfInputWhichDrivesThisOutput:0];
  [v17 addOutput:*(v17 + 19)];

  v23 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v17];
  *(v17 + 18) = v23;
  [(BWNodeOutput *)v23 setPassthroughMode:1];
  if (v17[317] == 1)
  {
    v24 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v25 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v25 setSupportedPixelFormats:&unk_1F2247F50];
    [(BWNodeOutputMediaConfiguration *)v24 setFormatRequirements:v25];
    [(BWNodeOutputMediaConfiguration *)v24 setPassthroughMode:1];
    [*(v17 + 18) setMediaConfiguration:v24 forAttachedMediaKey:@"Depth"];
    [*(v17 + 18) setIndexOfInputWhichDrivesThisOutput:1];
    v17[448] = enabledCopy;
    if (enabledCopy)
    {
      v26 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 0);
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v73 objects:v72 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v74;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v74 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v73 + 1) + 8 * i);
            v32 = objc_alloc_init(BWNodeOutputMediaConfiguration);
            [(BWNodeOutputMediaConfiguration *)v32 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
            [(BWNodeOutputMediaConfiguration *)v32 setPassthroughMode:1];
            [(BWNodeOutputMediaConfiguration *)v32 setIndexOfInputWhichDrivesThisOutput:0];
            [(BWNodeOutputMediaConfiguration *)v32 setAttachedMediaKeyOfInputWhichDrivesThisOutput:v31];
            [*(v17 + 18) setMediaConfiguration:v32 forAttachedMediaKey:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v73 objects:v72 count:16];
        }

        while (v28);
      }
    }
  }

  [v17 addOutput:{*(v17 + 18), configurationCopy}];
  if (identifiersCopy)
  {
    *(v17 + 20) = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:v17];
    [*(v17 + 20) setFormat:+[BWMetadataObjectFormat formatWithMetadataIdentifiers:](BWMetadataObjectFormat, "formatWithMetadataIdentifiers:", identifiersCopy)];
    [v17 addOutput:*(v17 + 20)];
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  deviceCopy2 = device;
  activePortTypes = [device activePortTypes];
  v35 = [activePortTypes countByEnumeratingWithState:&v68 objects:v67 count:16];
  if (!v35)
  {
    v44 = 0;
    goto LABEL_33;
  }

  v36 = v35;
  v37 = *v69;
  v38 = *off_1E798A0D8;
  v39 = *off_1E798A0D0;
  v40 = *off_1E798A0E8;
  v41 = *off_1E798A0F8;
  while (2)
  {
    for (j = 0; j != v36; ++j)
    {
      if (*v69 != v37)
      {
        objc_enumerationMutation(activePortTypes);
      }

      v43 = *(*(&v68 + 1) + 8 * j);
      if ([v43 isEqual:v38])
      {
        v44 = v38;
LABEL_32:
        deviceCopy2 = deviceCopy;
        goto LABEL_33;
      }

      if ([v43 isEqual:v39])
      {
        v44 = *off_1E798A0C0;
        goto LABEL_32;
      }

      if ([v43 isEqual:v40])
      {
        v44 = v40;
        goto LABEL_32;
      }

      if ([v43 isEqual:v41])
      {
        v44 = v41;
        goto LABEL_32;
      }
    }

    v36 = [activePortTypes countByEnumeratingWithState:&v68 objects:v67 count:16];
    v44 = 0;
    deviceCopy2 = deviceCopy;
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_33:
  v45 = [objc_msgSend(deviceCopy2 "sensorIDDictionaryByPortType")];
  if (!v45)
  {
    [BWRealtimeCinematographyNode initWithObjectMetadataIdentifiers:cachedSimulatedAperture:captureDevice:tuningParameters:videoDepthConfiguration:smartStyleLearningEnabled:highResolutionInputEnabled:transformCinematographyDetectionsForMovieFileOutput:];
LABEL_52:

    return 0;
  }

  v46 = [v45 objectForKeyedSubscript:@"CinematicVideoParameters"];
  if (!v46)
  {
    [BWRealtimeCinematographyNode initWithObjectMetadataIdentifiers:cachedSimulatedAperture:captureDevice:tuningParameters:videoDepthConfiguration:smartStyleLearningEnabled:highResolutionInputEnabled:transformCinematographyDetectionsForMovieFileOutput:];
    goto LABEL_52;
  }

  v47 = v46;
  v48 = [objc_alloc(getPTCinematographyStreamOptionsClass()) init];
  [deviceCopy2 defaultAutoFocusTapWindowSize];
  [v48 setFixedFocusNormalizedRectSize:?];
  [v48 setCinematographyParameters:{objc_msgSend(v47, "objectForKeyedSubscript:", @"CinematographyParameters"}];
  v49 = [objc_alloc(getPTCinematographyStreamClass()) initWithOptions:v48];
  *(v17 + 16) = v49;
  [v49 setDelegate:v17];
  v17[233] = [objc_msgSend(deviceCopy2 "captureStream")];
  *(v17 + 21) = deviceCopy2;
  [objc_msgSend(v47 objectForKeyedSubscript:{@"simulatedVideoAperture", "floatValue"}];
  v51 = v50;
  v52 = [v47 objectForKeyedSubscript:@"RenderVersion"];
  if (v52)
  {
    intValue = [v52 intValue];
    v54 = 1;
    if (intValue != 2)
    {
      v54 = 2;
    }

    *(v17 + 54) = v54;
    v55 = parametersCopy;
    if (intValue == 2)
    {
      v56 = [objc_alloc(getPTGlobalRenderingMetadataVersion1Class()) initWithMinorVersion:6];
      [objc_msgSend(v47 objectForKeyedSubscript:{@"minimumSimulatedVideoAperture", "floatValue"}];
      [v56 setMinAperture:?];
      [objc_msgSend(v47 objectForKeyedSubscript:{@"maximumSimulatedVideoAperture", "floatValue"}];
      [v56 setMaxAperture:?];
      *&v57 = v51;
      [v56 setDefaultAperture:v57];
      [v63 networkBias];
      [v56 setNetworkBias:?];
      goto LABEL_42;
    }
  }

  else
  {
    *(v17 + 54) = 2;
    v55 = parametersCopy;
  }

  v56 = [objc_alloc(getPTGlobalRenderingMetadataVersion2Class()) initWithMinorVersion:1];
LABEL_42:
  *(v17 + 49) = v56;
  *(v17 + 51) = [objc_alloc(getPTGlobalVideoHeaderMetadataVersion1Class()) initWithMinorVersion:1];
  *(v17 + 48) = [objc_alloc(getPTGlobalCinematographyMetadataVersion1Class()) initWithMinorVersion:1];
  if (aperture == 0.0)
  {
    apertureCopy = v51;
  }

  else
  {
    apertureCopy = aperture;
  }

  *(v17 + 80) = apertureCopy;
  [*(v17 + 16) setUserAperture:?];
  *(v17 + 50) = [objc_alloc(getPTGlobalStabilizationMetadataVersion1Class()) initWithMinorVersion:1];
  *(v17 + 52) = [objc_alloc(getPTGlobalVideoMetadataClass()) init];
  *(v17 + 22) = 0x101010101010101;
  *(v17 + 23) = 0x101010101010101;
  *(v17 + 24) = 0x101010101010101;
  *(v17 + 198) = 0x101010101010101;
  *(v17 + 52) = 0;
  v17[212] = 1;
  *(v17 + 54) = 1065353216;
  v59 = [objc_msgSend(v55 objectForKeyedSubscript:{@"TooDarkLuxLevelRolloffThreshold", "intValue"}];
  if (v59)
  {
    v60 = v59;
  }

  else
  {
    v60 = 40;
  }

  *(v17 + 55) = v60;
  *(v17 + 56) = 30;
  *(v17 + 60) = 3;
  *(v17 + 55) = 0xFFFFFFFF80000000;
  *(v17 + 57) = objc_alloc_init(MEMORY[0x1E695DF70]);
  *(v17 + 116) = 0;
  v17[468] = 0;
  return v17;
}

- (void)dealloc
{
  previousSampleBuffer = self->_previousSampleBuffer;
  if (previousSampleBuffer)
  {
    CFRelease(previousSampleBuffer);
  }

  depthFormatDescription = self->_depthFormatDescription;
  if (depthFormatDescription)
  {
    CFRelease(depthFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = BWRealtimeCinematographyNode;
  [(BWNode *)&v5 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  captureInput = self->_captureInput;
  if (captureInput == input || !self->_highResolutionInputEnabled)
  {
    [(BWNodeOutput *)self->_movieFileOutput setFormat:format];
    captureInput = self->_captureInput;
  }

  if (captureInput != input)
  {
    previewOutput = self->_previewOutput;

    [(BWNodeOutput *)previewOutput setFormat:format];
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  captureInput = self->_captureInput;
  if (captureInput == input || !self->_highResolutionInputEnabled)
  {
    [(BWNodeOutput *)self->_movieFileOutput makeConfiguredFormatLive:d];
    captureInput = self->_captureInput;
  }

  if (captureInput != input)
  {
    [(BWNodeOutput *)self->_previewOutput makeConfiguredFormatLive:d];
    detectedObjectsOutput = self->_detectedObjectsOutput;

    [(BWNodeOutput *)detectedObjectsOutput makeConfiguredFormatLive];
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  if (self->_highResolutionInputEnabled)
  {
    v4 = atomic_fetch_add_explicit(&self->_numEODMessagesReceived, 1u, memory_order_relaxed) + 1;
    if ([(NSArray *)[(BWNode *)self inputs] count]== v4)
    {
      os_unfair_lock_lock(&self->_bufferServicingLock);
      [(BWNodeOutput *)self->_movieFileOutput markEndOfLiveOutput];
      [(BWNodeOutput *)self->_previewOutput markEndOfLiveOutput];
      [(BWNodeOutput *)self->_detectedObjectsOutput markEndOfLiveOutput];
      os_unfair_lock_unlock(&self->_bufferServicingLock);
      self->_numEODMessagesReceived = 0;
    }
  }

  else
  {
    [(BWNodeOutput *)self->_movieFileOutput markEndOfLiveOutput];
    [(BWNodeOutput *)self->_previewOutput markEndOfLiveOutput];
    detectedObjectsOutput = self->_detectedObjectsOutput;

    [(BWNodeOutput *)detectedObjectsOutput markEndOfLiveOutput];
  }
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if (!self->_highResolutionInputEnabled)
  {
    [(BWRealtimeCinematographyNode *)&self->super.super.isa _dropFrame:sample];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (self->_highResolutionInputEnabled)
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    if (self->_captureInput == input)
    {
      v7 = &OBJC_IVAR___BWRealtimeCinematographyNode__videoCaptureSampleBufferQueue;
    }

    else
    {
      v7 = &OBJC_IVAR___BWRealtimeCinematographyNode__previewSampleBufferQueue;
    }

    [*(&self->super.super.isa + *v7) addObject:buffer];
    v47 = 0;
    v48[0] = 0;
    v46 = 0;
    if ([(BWRealtimeCinematographyNode *)self _findCaptureSampleBuffer:v48 matchingPreviewSampleBuffer:&v47])
    {
      v8 = v48[0];
      v9 = *off_1E798A3C8;
      v10 = CMGetAttachment(v48[0], *off_1E798A3C8, 0);
      v11 = v47;
      v12 = CMGetAttachment(v47, v9, 0);
      if ([(BWFigVideoCaptureDevice *)self->_captureDevice depthType]== 3)
      {
        if (self->_highResolutionInputEnabled)
        {
          if ((v13 = [(BWFigVideoCaptureStream *)[(BWFigVideoCaptureDevice *)self->_captureDevice masterCaptureStream] videoCaptureDimensions], v14 = HIDWORD(*&v13), v13.var0 == 3840) && v14 == 2160 || v13.var0 == 2160 && v14 == 3840)
          {
            v15 = CMGetAttachment(v11, @"TotalZoomFactor", 0);
            v44 = 0uLL;
            __asm { FMOV            V0.2D, #1.0 }

            v45 = _Q0;
            FigCFDictionaryGetCGRectIfPresent();
            [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
            [-[NSDictionary objectForKeyedSubscript:](-[BWFigVideoCaptureDevice baseZoomFactorsByPortType](self->_captureDevice "baseZoomFactorsByPortType")];
            [v15 floatValue];
            v21 = *off_1E798B7B0;
            [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B7B0), "floatValue"}];
            [v15 floatValue];
            FigCFDictionarySetCGRect();
            ImageBuffer = CMSampleBufferGetImageBuffer(v8);
            CVPixelBufferGetWidth(ImageBuffer);
            CVPixelBufferGetHeight(ImageBuffer);
            FigCFDictionarySetCGRect();
            CMSetAttachment(v8, @"TotalZoomFactor", v15, 1u);
            [v10 setObject:objc_msgSend(v12 forKeyedSubscript:{"objectForKeyedSubscript:", v21), *off_1E798D488}];
          }
        }
      }

      else
      {
        v23 = [v12 mutableCopy];
        [v23 setObject:objc_msgSend(v10 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A5C8), *off_1E798A5C8}];
        CMSetAttachment(v11, v9, v23, 1u);
      }

      value = CMGetAttachment(v11, @"FTCinematicTrackingResult", 0);
      v24 = CMGetAttachment(v11, @"FusionTrackerInput", 0);
      key = CMGetAttachment(v11, @"Inferences", 0);
      v25 = CMGetAttachment(v11, @"CinematicVideoFocusRequest", 0);
      CMSetAttachment(v8, @"FTCinematicTrackingResult", value, 1u);
      CMSetAttachment(v8, @"FusionTrackerInput", v24, 1u);
      CMSetAttachment(v8, @"CinematicVideoFocusRequest", v25, 1u);
      CMSetAttachment(v8, @"Inferences", key, 1u);
      v44 = 0uLL;
      *&v45 = 0;
      CMSampleBufferGetPresentationTimeStamp(&v44, v8);
      AttachedMedia = BWSampleBufferGetAttachedMedia(v11, @"Depth");
      if (AttachedMedia)
      {
        v27 = CMSampleBufferGetImageBuffer(AttachedMedia);
        v42 = v44;
        v43 = v45;
        if (BWSampleBufferCreateFromPixelBuffer(v27, &v42, &self->_depthFormatDescription, &v46))
        {
          [BWRealtimeCinematographyNode renderSampleBuffer:forInput:];
        }

        else
        {
          BWSampleBufferSetAttachedMedia(v8, @"Depth", v46);
          if (self->_smartStyleLearningEnabled)
          {
            v28 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 0);
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v29 = [v28 countByEnumeratingWithState:&v38 objects:v37 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v39;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v39 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v38 + 1) + 8 * i);
                  v34 = BWSampleBufferGetAttachedMedia(v11, v33);
                  BWSampleBufferSetAttachedMedia(v8, v33, v34);
                }

                v30 = [v28 countByEnumeratingWithState:&v38 objects:v37 count:16];
              }

              while (v30);
            }
          }
        }
      }

      else
      {
        [BWRealtimeCinematographyNode renderSampleBuffer:forInput:];
      }

      [(BWRealtimeCinematographyNode *)self _tryToEmit:v11 captureBuffer:v8];
      if (v46)
      {
        CFRelease(v46);
      }

      [(NSMutableArray *)self->_videoCaptureSampleBufferQueue removeObject:v8, value];
      [(NSMutableArray *)self->_previewSampleBufferQueue removeObject:v11];
    }

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }

  else
  {

    [(BWRealtimeCinematographyNode *)self _tryToEmit:buffer captureBuffer:buffer];
  }
}

- (NSData)globalMetadata
{
  [(PTGlobalVideoMetadata *)self->_globalMetadata setMetadata:self->_globalCinematographyMetadata ofType:4];
  [(PTGlobalVideoMetadata *)self->_globalMetadata setMetadata:self->_globalRenderingMetadata ofType:2];
  [(PTGlobalVideoMetadata *)self->_globalMetadata setMetadata:self->_globalStabilizationMetadata ofType:3];
  [(PTGlobalVideoMetadata *)self->_globalMetadata setMetadata:self->_globalVideoHeaderMetadata ofType:1];
  v3 = [(PTGlobalVideoMetadata *)self->_globalMetadata sizeOfSerializedObjectWithOptions:0];
  v4 = [MEMORY[0x1E695DF88] dataWithLength:v3];
  [(PTGlobalVideoMetadata *)self->_globalMetadata writeToData:v4 withOptions:0];
  return v4;
}

- (id)copyCinematicVideoFocusDetections
{
  os_unfair_lock_lock(&self->_focusDetectionsLock);
  v3 = [(NSMutableArray *)self->_focusDetections copy];
  os_unfair_lock_unlock(&self->_focusDetectionsLock);
  return v3;
}

- (void)setFocusDetectionProviderEnabled:(BOOL)enabled
{
  os_unfair_lock_lock(&self->_focusDetectionsLock);
  self->_focusDetectionProviderEnabled = enabled;

  os_unfair_lock_unlock(&self->_focusDetectionsLock);
}

- (id)_dropFrame:(id *)result
{
  if (result)
  {
    v3 = result;
    [result[19] emitDroppedSample:a2];
    if (v3[41])
    {
      [(BWRealtimeCinematographyNode *)v3 _emitMovieFileDropForPreviousSampleBuffer];
      v5 = v3[41];
      if (v5)
      {
        CFRelease(v5);
        v3[41] = 0;
      }
    }

    v4 = v3[18];

    return [v4 emitDroppedSample:a2];
  }

  return result;
}

- (void)_emitMovieFileDropForPreviousSampleBuffer
{
  if (self)
  {
    memset(&v11, 0, sizeof(v11));
    CMSampleBufferGetPresentationTimeStamp(&v11, *(self + 328));
    v8 = OUTLINED_FUNCTION_12_2(BWDroppedSample, v2, 0x1F219C0B0, v3, v4, v5, v6, v7, v9, v10, *&v11.value, v11.epoch);
    [*(self + 144) emitDroppedSample:v8];
  }
}

- (int)_updateAlphaLowLightWithMetadata:(const void *)metadata imageSampleBuffer:
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B4B8), "intValue"}];
  v6 = 0;
  v7 = 0;
  *(v4 + v4[52] + 176) = v5 >= v4[55];
  v4[52] = (v4[52] + 1) % 30;
  do
  {
    v7 += *(v4 + v6++ + 176);
  }

  while (v6 != 30);
  v8 = 0;
  v9 = *(v4 + 212);
  if (*(v4 + 212))
  {
    v10 = 0;
  }

  else
  {
    v10 = 10;
  }

  v11 = (v7 + 10 * v9) / (v10 + 10 * v9 + 30);
  if (v9 != 1 || v11 >= 0.5)
  {
    if ((v9 & 1) != 0 || v11 < 0.5)
    {
      goto LABEL_15;
    }

    v8 = 1;
  }

  *(v4 + 212) = v8;
LABEL_15:
  v13 = 1.0 / v4[56];
  result = [CMGetAttachment(metadata *off_1E798D2B0];
  if (result)
  {
    *(v4 + 54) = *(v4 + 54) - v13;
  }

  else
  {
    v14 = -v13;
    if (*(v4 + 212))
    {
      v14 = v13;
    }

    *(v4 + 54) = *(v4 + 54) + v14;
  }

  v15 = *(v4 + 54);
  v16 = v15 <= 0.0;
  v17 = 1.0;
  v18 = v15 < 1.0 || v15 <= 0.0;
  if (v15 >= 1.0)
  {
    v16 = 1;
  }

  if (v18)
  {
    v17 = 0.0;
  }

  if (v16)
  {
    v15 = v17;
  }

  *(v4 + 54) = v15;
  return result;
}

- (uint64_t)_updateFromQueue:(void *)queue sampleBufferOut:(_DWORD *)out captureID:(CMTime *)d bufferPTS:
{
  if (result)
  {
    v9 = result;
    result = [a2 count];
    if (result)
    {
      v10 = [a2 objectAtIndexedSubscript:0];
      *queue = v10;
      [(BWRealtimeCinematographyNode *)v9 _frameCaptureIDAndPTSForSampleBuffer:v10 captureIDOut:out bufferPTSOut:d];
      return 1;
    }
  }

  return result;
}

- (double)_frameCaptureIDAndPTSForSampleBuffer:(_DWORD *)buffer captureIDOut:(CMTime *)out bufferPTSOut:
{
  if (self)
  {
    v7 = CMGetAttachment(target, *off_1E798A3C8, 0);
    *buffer = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B708), "intValue"}];
    v8 = [v7 objectForKeyedSubscript:*off_1E798A420];
    if (v8)
    {
      CMTimeMakeFromDictionary(&v10, v8);
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&v10, target);
    }

    result = *&v10.value;
    *out = v10;
  }

  return result;
}

- (id)_sendDropAndRemoveSampleBuffer:(id *)result fromQueue:(CMSampleBufferRef)sbuf withCaptureID:(void *)d
{
  if (result)
  {
    v5 = result;
    memset(&v15, 0, sizeof(v15));
    CMSampleBufferGetPresentationTimeStamp(&v15, sbuf);
    v12 = OUTLINED_FUNCTION_12_2(BWDroppedSample, v6, 0x1F219C0B0, v7, v8, v9, v10, v11, v13, v14, *&v15.value, v15.epoch);
    [(BWRealtimeCinematographyNode *)v5 _dropFrame:v12];

    return [d removeObject:sbuf];
  }

  return result;
}

- (uint64_t)_findCaptureSampleBuffer:(void *)buffer matchingPreviewSampleBuffer:
{
  if (result)
  {
    v5 = result;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v6 = *(result + 360);
    v44[0] = *(result + 352);
    v44[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    v8 = [v7 countByEnumeratingWithState:&v46 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v47;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v47 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v46 + 1) + 8 * i);
          if ([v12 count] >= 5)
          {
            do
            {
              [v12 removeObjectAtIndex:0];
            }

            while ([v12 count] > 4);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v46 objects:v45 count:16];
      }

      while (v9);
    }

    result = OUTLINED_FUNCTION_4_13();
    if (result)
    {
      result = OUTLINED_FUNCTION_5_8();
      if (result)
      {
        if (*(v5 + 232) == 1)
        {
          while (1)
          {
            v20 = OUTLINED_FUNCTION_2_12(result, v13, v14, v15, v16, v17, v18, v19, v39, v40, v41, v42, v43);
            if (v20 != 1)
            {
              break;
            }

            OUTLINED_FUNCTION_21_0();
            LODWORD(result) = OUTLINED_FUNCTION_4_13();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          while (1)
          {
            v28 = OUTLINED_FUNCTION_2_12(v20, v21, v22, v23, v24, v25, v26, v27, v39, v40, v41, v42, v43);
            if (v28 != -1)
            {
              break;
            }

            OUTLINED_FUNCTION_20_1();
            v20 = OUTLINED_FUNCTION_5_8();
            if ((v20 & 1) == 0)
            {
              return 0;
            }
          }

          if (!OUTLINED_FUNCTION_2_12(v28, v29, v30, v31, v32, v33, v34, v35, v39, v40, v41, v42, v43))
          {
LABEL_28:
            v38 = v57;
            *a2 = v58;
            *buffer = v38;
            return 1;
          }
        }

        else
        {
          v36 = v56;
          while (1)
          {
            v37 = HIDWORD(v56);
            if (SHIDWORD(v56) >= v36)
            {
              break;
            }

            OUTLINED_FUNCTION_21_0();
            if ((OUTLINED_FUNCTION_4_13() & 1) == 0)
            {
              return 0;
            }
          }

          while (v37 > v56)
          {
            OUTLINED_FUNCTION_20_1();
            if ((OUTLINED_FUNCTION_5_8() & 1) == 0)
            {
              return 0;
            }
          }

          if (v37 == v56)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

- (void)_tryToEmit:(void *)emit captureBuffer:
{
  if (self)
  {
    v7 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_18_1(822152321);
    }

    sampleBufferOut[0] = 0;
    [(BWRealtimeCinematographyNode *)self _updateGlobalMetadata:emit];
    v8 = *(self + 328);
    if (!v8 || (v9 = a2, v10 = *off_1E798A3C8, (v11 = CMGetAttachment(v8, *off_1E798A3C8, 0)) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v153, v154, v155, v156, sbuf, v159, target, v164);
      valuea = 0;
      goto LABEL_151;
    }

    v12 = v11;
    v211 = 0.0;
    v212 = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    *value = _Q0;
    v213 = _Q0;
    FigCFDictionaryGetCGRectIfPresent();
    CMGetAttachment(v9, v10, 0);
    v208 = 0.0;
    v209 = 0.0;
    v210 = *value;
    FigCFDictionaryGetCGRectIfPresent();
    [(BWRealtimeCinematographyNode *)self _updateAlphaLowLightWithMetadata:v12 imageSampleBuffer:emit];
    v166 = v12;
    if (*(self + 432) == 1)
    {
      v17 = [objc_alloc(getPTTimedRenderingMetadataVersion1Class()) initWithMinorVersion:6];
      [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B0B8), "intValue"}];
      [OUTLINED_FUNCTION_8() setAgc:?];
    }

    else
    {
      v17 = [objc_alloc(getPTTimedRenderingMetadataVersion2Class()) initWithMinorVersion:1];
      [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B2D8), "floatValue"}];
      [v17 setFocalLenIn35mmFilm:?];
      [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B1F8), "intValue"}];
      [OUTLINED_FUNCTION_8() setConversionGain:?];
      [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B5B0), "intValue"}];
      [OUTLINED_FUNCTION_8() setReadNoise_1x:?];
      [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B5B8), "intValue"}];
      [OUTLINED_FUNCTION_8() setReadNoise_8x:?];
      [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B0B8), "intValue"}];
      [OUTLINED_FUNCTION_8() setAGC:?];
      [v17 setVisCropFactor:{COERCE_DOUBLE(vcvt_f32_f64(vdivq_f64(*value, v213)))}];
      v19 = *(MEMORY[0x1E695F058] + 16);
      *v207 = *MEMORY[0x1E695F058];
      *&v207[16] = v19;
      FigCFDictionaryGetCGRectIfPresent();
      [v17 setTotalSensorCropRectSize:{*&v207[16], *&v207[24]}];
    }

    LODWORD(v18) = *(self + 216);
    valuea = v17;
    [v17 setAlphaLowLight:v18];
    AttachedMedia = BWSampleBufferGetAttachedMedia(*(self + 328), @"Depth");
    a2 = v9;
    if (!AttachedMedia)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v153, v154, v155, v156, sbuf, v159, target, v164);
      goto LABEL_151;
    }

    sbufa = AttachedMedia;
    targeta = v9;
    *(self + 316) = 1;
    v165 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = *off_1E798B220;
    v22 = [v166 objectForKeyedSubscript:*off_1E798B220];
    v23 = *off_1E798B218;
    v24 = OUTLINED_FUNCTION_11_3();
    v167 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v25 = *(self + 136);
    if (v22)
    {

      v25 = v22;
      *(self + 136) = v25;
    }

    if (v25)
    {
      [v167 setObject:v25 forKeyedSubscript:v21];
    }

    if (v24)
    {
      [v167 setObject:v24 forKeyedSubscript:v23];
    }

    v26 = OUTLINED_FUNCTION_22(emit);
    emitCopy = emit;
    if (!v26)
    {
LABEL_60:
      AttachedInferenceResult = BWInferenceGetAttachedInferenceResult(*(self + 328), 151);
      v67 = [CMGetAttachment(emit @"FusionTrackerInput"];
      v68 = 0;
      if ([AttachedInferenceResult inferences] && v67)
      {
        v69 = [objc_msgSend(AttachedInferenceResult "inferences")];
        v70 = (*(v69 + 16))(v69, v67);
        if ([v70 count])
        {
          v68 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v70, "count")}];
          v194 = 0u;
          v195 = 0u;
          v196 = 0u;
          v197 = 0u;
          v71 = OUTLINED_FUNCTION_19_4();
          if (v71)
          {
            v72 = v71;
            v73 = *v195;
            do
            {
              for (i = 0; i != v72; ++i)
              {
                if (*v195 != v73)
                {
                  objc_enumerationMutation(v70);
                }

                v75 = *(*(&v194 + 1) + 8 * i);
                if (![v68 objectForKeyedSubscript:v75])
                {
                  [v68 setObject:objc_msgSend(objc_alloc(MEMORY[0x1E695DF90]) forKeyedSubscript:{"initWithCapacity:", 1), v75}];
                }

                [objc_msgSend(v68 objectForKeyedSubscript:{v75), "addEntriesFromDictionary:", objc_msgSend(v70, "objectForKeyedSubscript:", v75)}];
              }

              v72 = OUTLINED_FUNCTION_19_4();
            }

            while (v72);
          }
        }

        else
        {
          v68 = 0;
        }

        [v67 detectorDidRun];
      }

      if ([v68 count])
      {
        [v167 setObject:v68 forKeyedSubscript:@"MLSignals"];
      }

      v76 = OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_6_5([v76 lastObject]);
      [v167 setObject:v76 forKeyedSubscript:@"FocusRegionArray"];
      [v167 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(self + 312)), @"FocusMode"}];
      v77 = OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_6_5(v77);
      v78 = OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_6_5(v78);
      v79 = OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_6_5(v79);
      v80 = OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_6_5(v80);
      ImageBuffer = CMSampleBufferGetImageBuffer(sbufa);
      v82 = *(self + 128);
      CMSampleBufferGetPresentationTimeStamp(v207, sbufa);
      v83 = [v82 processColorBuffer:0 disparityBuffer:ImageBuffer metadataDictionary:v167 presentationTime:v207];

      v84 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v190 = 0u;
      v191 = 0u;
      v192 = 0u;
      v193 = 0u;
      allDetections = [v83 allDetections];
      v86 = [allDetections countByEnumeratingWithState:&v190 objects:v189 count:16];
      if (v86)
      {
        v87 = v86;
        v88 = *v191;
        do
        {
          for (j = 0; j != v87; ++j)
          {
            if (*v191 != v88)
            {
              objc_enumerationMutation(allDetections);
            }

            v90 = *(*(&v190 + 1) + 8 * j);
            if ([v90 detectionType] == 102)
            {
              trackIdentifier = [v90 trackIdentifier];
              if (trackIdentifier != [objc_msgSend(v83 "focusDetection")])
              {
                continue;
              }
            }

            [v84 addObject:v90];
          }

          v87 = [allDetections countByEnumeratingWithState:&v190 objects:v189 count:16];
        }

        while (v87);
      }

      v92 = [v84 copy];
      [v83 setAllDetections:v92];

      objc_setAssociatedObject(v83, @"CinematicVideoTimedRenderingMetadata", valuea, 1);
      v187[0] = 0x1F21A98F0;
      v93 = MEMORY[0x1E696AD98];
      [v83 aperture];
      v188[0] = [v93 numberWithFloat:?];
      v187[1] = 0x1F21A9910;
      LODWORD(v94) = *(self + 216);
      v188[1] = [MEMORY[0x1E696AD98] numberWithFloat:v94];
      v187[2] = 0x1F21A9930;
      v95 = MEMORY[0x1E696AD98];
      [v83 focusDistance];
      v187[3] = 0x1F21A9950;
      v188[2] = [v95 numberWithFloat:?];
      v188[3] = v83;
      v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v188 forKeys:v187 count:4];
      a2 = targeta;
      CMSetAttachment(targeta, @"CinematicVideoCinematographyMetadata", v96, 1u);
      v97 = *(MEMORY[0x1E695F050] + 16);
      v185 = *MEMORY[0x1E695F050];
      v186 = v97;
      FigCFDictionaryGetCGRectIfPresent();
      v217.origin.x = OUTLINED_FUNCTION_13_4();
      if (CGRectIsNull(v217) || !v83)
      {
        goto LABEL_98;
      }

      v98 = [v83 copy];
      v99 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:objc_msgSend(v98 copyItems:{"allDetections"), 1}];
      if (v99)
      {
        v100 = v99;
        [v98 setAllDetections:v99];
        objc_setAssociatedObject(v98, @"CinematicVideoTimedRenderingMetadata", valuea, 1);
        BWPixelBufferDimensionsFromSampleBuffer(*(self + 328));
        v101 = OUTLINED_FUNCTION_13_4();
        *&v185 = FigCaptureMetadataUtilitiesRectNormalizedToRect(v101, v102, v103, v104, 0.0, 0.0, v105);
        *(&v185 + 1) = v106;
        *&v186 = v107;
        *(&v186 + 1) = v108;
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v184 = 0u;
        allDetections2 = [v98 allDetections];
        v110 = [allDetections2 countByEnumeratingWithState:&v181 objects:v180 count:16];
        if (v110)
        {
          v111 = v110;
          v112 = *v182;
          do
          {
            for (k = 0; k != v111; ++k)
            {
              if (*v182 != v112)
              {
                objc_enumerationMutation(allDetections2);
              }

              v114 = *(*(&v181 + 1) + 8 * k);
              [v114 rect];
              [v114 setRect:{FigCaptureTransformNormalizedRectFromCoordinateSpaceOfNormalizedRect(v115, v116, v117, v118, *&v185, *(&v185 + 1), *&v186)}];
            }

            v111 = [allDetections2 countByEnumeratingWithState:&v181 objects:v180 count:16];
          }

          while (v111);
        }

        v178[0] = 0x1F21A98F0;
        v119 = MEMORY[0x1E696AD98];
        [v83 aperture];
        v179[0] = [v119 numberWithFloat:?];
        v178[1] = 0x1F21A9910;
        LODWORD(v120) = *(self + 216);
        v179[1] = [MEMORY[0x1E696AD98] numberWithFloat:v120];
        v178[2] = 0x1F21A9930;
        v121 = MEMORY[0x1E696AD98];
        [v83 focusDistance];
        v178[3] = 0x1F21A9950;
        v179[2] = [v121 numberWithFloat:?];
        v179[3] = v98;
        v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v179 forKeys:v178 count:4];

        a2 = targeta;
LABEL_98:
        CMSetAttachment(*(self + 328), @"CinematicVideoCinematographyMetadata", v96, 1u);
        if (*(self + 468) == 1 && [v83 focusDetection])
        {
          os_unfair_lock_lock((self + 464));
          [*(self + 456) removeAllObjects];
          v122 = [BWDockKitFocusDetection alloc];
          v123 = [objc_msgSend(v83 "focusDetection")];
          [objc_msgSend(v83 "focusDetection")];
          [*(self + 456) addObject:{-[BWDockKitFocusDetection initWithIdentifier:rect:userFocusStrong:](v122, "initWithIdentifier:rect:userFocusStrong:", v123, objc_msgSend(v83, "isUserFocusStrong"), v124, v125, v126, v127)}];
          os_unfair_lock_unlock((self + 464));
        }

        [(BWRealtimeCinematographyNode *)self _updateAutoFocus:v83 finalCropRect:v208, v209, *&v210, *(&v210 + 1)];
        if ([v83 focusDetection])
        {
          focusDetection = [v83 focusDetection];
          detectionType = [focusDetection detectionType];
          trackIdentifier2 = [focusDetection trackIdentifier];
          v131 = (detectionType - 1) < 0xC && (trackIdentifier2 != *(self + 440));
          v132 = detectionType == 100 && trackIdentifier2 != *(self + 440);
          v168 = v132;
          v133 = (detectionType - 100) < 3 && (trackIdentifier2 != *(self + 440));
          v134 = detectionType == 102 && (trackIdentifier2 != *(self + 440));
          [v165 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v131), 0x1F21A9B50}];
          [v165 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v133), 0x1F21A9B70}];
          [v165 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v134), 0x1F21A9B90}];
          [v165 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v168), 0x1F21A9BB0}];
          if (trackIdentifier2 != *(self + 440))
          {
            *(self + 440) = trackIdentifier2;
          }
        }

        if ([v165 count])
        {
          CMSetAttachment(emitCopy, @"CinematicVideoMovieFileRecordingStats", v165, 1u);
        }

        BWCMSampleBufferCreateCopyIncludingMetadata(emitCopy, sampleBufferOut);
        if ([*(self + 168) depthType] != 3 || ((v135 = objc_msgSend(objc_msgSend(*(self + 168), "masterCaptureStream"), "videoCaptureDimensions"), v136 = HIDWORD(v135), v135 != 3840) || (v137 = a2, v136 != 2160)) && (v135 != 2160 || (v137 = a2, v136 != 3840)))
        {
          v137 = emitCopy;
        }

        [(BWRealtimeCinematographyNode *)self _emitSampleBufferOnMetadataOutput:v137 cinematographyFrame:v83];
        if (*(self + 469) == 1)
        {
          v176 = 0u;
          v177 = 0u;
          v174 = 0u;
          v175 = 0u;
          allDetections3 = [v83 allDetections];
          v139 = [allDetections3 countByEnumeratingWithState:&v174 objects:v173 count:16];
          if (v139)
          {
            v140 = v139;
            v141 = *v175;
            do
            {
              for (m = 0; m != v140; ++m)
              {
                if (*v175 != v141)
                {
                  objc_enumerationMutation(allDetections3);
                }

                v143 = *(*(&v174 + 1) + 8 * m);
                v145 = v213.f64[1];
                v144 = v213.f64[0];
                if (v213.f64[0] == 1.0 && v213.f64[1] == 1.0)
                {
                  [*(*(&v174 + 1) + 8 * m) rect];
                  OUTLINED_FUNCTION_16_5();
                  if (CGRectEqualToRect(v218, v220))
                  {
                    continue;
                  }
                }

                [v143 rect];
                [v143 setRect:{FigCaptureTransformRectToCoordinateSpaceOfRect(v147, v148, v149, v150, v211, v212, v213.f64[0])}];
              }

              v140 = [allDetections3 countByEnumeratingWithState:&v174 objects:v173 count:16];
            }

            while (v140);
          }
        }

        [*(self + 144) emitSampleBuffer:*(self + 328)];
        [*(self + 152) emitSampleBuffer:a2];
        v151 = *(self + 328);
        if (!v151)
        {
          v7 = MEMORY[0x1E695FF58];
LABEL_143:
          *(self + 328) = sampleBufferOut[0];

          if (*v7 == 1)
          {
            OUTLINED_FUNCTION_18_1(822152322);
          }

          return;
        }

        v7 = MEMORY[0x1E695FF58];
LABEL_141:
        CFRelease(v151);
        goto LABEL_143;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v153, v154, v155, v3, sbufa, emitCopy, targeta, v165);
      v7 = MEMORY[0x1E695FF58];
      emit = v161;
LABEL_151:
      BWCMSampleBufferCreateCopyIncludingMetadata(emit, sampleBufferOut);
      if (*(self + 328))
      {
        [(BWRealtimeCinematographyNode *)self _emitMovieFileDropForPreviousSampleBuffer];
      }

      if (*(self + 316))
      {
        memset(v207, 0, 24);
        CMSampleBufferGetPresentationTimeStamp(v207, a2);
        v171 = *v207;
        v172 = *&v207[16];
        v152 = [BWDroppedSample newDroppedSampleWithReason:0x1F219C0B0 pts:&v171];
        [*(self + 152) emitDroppedSample:v152];
      }

      else
      {
        [*(self + 152) emitSampleBuffer:a2];
      }

      v151 = *(self + 328);
      if (!v151)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    }

    v27 = v26;
    v28 = CMGetAttachment(emit, @"CinematicVideoFocusRequest", 0);
    if (v28)
    {
      v29 = v28;
      BWIsFocusRequestForHardFocus(v28);
      [v165 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithBool:"), 0x1F21A9AF0}];
      [v165 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", BWIsFocusRequestForHardFocus(v29) ^ 1), 0x1F21A9B10}];
      BWIsFocusRequestForFixedPlaneFocus(v29);
      [v165 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithBool:"), 0x1F21A9AD0}];
      if (BWIsFocusRequestForFixedPlaneFocus(v29))
      {
        v30 = [objc_alloc(getFTCinematicTapResponseClass()) init];
        v31 = BWCreateFTCinematicTapRequestFromFocusRequest(v29);
        [v30 setRequest:v31];
        [v30 setWasSuccessful:1];
        [v27 setTapResponse:v30];
      }
    }

    v32 = OUTLINED_FUNCTION_22(*(self + 328));
    if (!v32)
    {
LABEL_59:
      [v167 setObject:v27 forKeyedSubscript:0x1F21A9790];
      goto LABEL_60;
    }

    v33 = v32;
    [v32 setDetectorDidRun:{objc_msgSend(v27, "detectorDidRun")}];
    v34 = [objc_msgSend(v27 "tracks")];
    v155 = @"FTCinematicTrackingResult";
    if ([objc_msgSend(objc_msgSend(v33 "tapResponse")])
    {
      v35 = [v34 indexOfObjectPassingTest:&__block_literal_global];
      v36 = [objc_msgSend(v33 "tapResponse")];
      v37 = v34;
      if (v35 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = v36;
LABEL_24:
        [v37 addObject:v38];
        goto LABEL_42;
      }

      [v34 replaceObjectAtIndex:v35 withObject:v36];
    }

    else
    {
      if ([objc_msgSend(v33 "tapResponse")])
      {
        emitCopy2 = emit;
        v40 = [objc_msgSend(objc_msgSend(v33 "tapResponse")];
        v203 = 0u;
        v204 = 0u;
        v205 = 0u;
        v206 = 0u;
        v41 = OUTLINED_FUNCTION_17_1();
        if (v41)
        {
          v42 = v41;
          v43 = *v204;
LABEL_28:
          v44 = 0;
          while (1)
          {
            if (*v204 != v43)
            {
              objc_enumerationMutation(v34);
            }

            v45 = *(*(&v203 + 1) + 8 * v44);
            if ([v45 identifier] == v40)
            {
              break;
            }

            if (v42 == ++v44)
            {
              v42 = OUTLINED_FUNCTION_17_1();
              if (v42)
              {
                goto LABEL_28;
              }

              goto LABEL_38;
            }
          }

          if (!v45)
          {
            goto LABEL_38;
          }

          [objc_msgSend(v33 "tapResponse")];
        }

        else
        {
LABEL_38:
          [objc_msgSend(v33 "tapResponse")];
          [objc_msgSend(v33 "tapResponse")];
        }

        emit = emitCopy2;
        goto LABEL_42;
      }

      if ([objc_msgSend(objc_msgSend(v27 "tapResponse")])
      {
        [v34 removeObject:{objc_msgSend(objc_msgSend(v27, "tapResponse"), "tappedTrack")}];
        v46 = [objc_msgSend(v33 "tracks")];
        if (v46 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v38 = [objc_msgSend(v33 "tracks")];
          v37 = v34;
          goto LABEL_24;
        }
      }
    }

LABEL_42:
    if ([v33 tapResponse])
    {
      v47 = [objc_msgSend(v33 "tapResponse")] ^ 1;
    }

    else
    {
      v47 = 0;
    }

    [v165 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v47), 0x1F21A9B30}];
    [v33 setTracks:v34];

    v202 = 0u;
    v201 = 0u;
    v200 = 0u;
    v199 = 0u;
    tracks = [v33 tracks];
    v49 = [tracks countByEnumeratingWithState:&v199 objects:v198 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v200;
      v52 = MEMORY[0x1E695E118];
      do
      {
        for (n = 0; n != v50; ++n)
        {
          if (*v200 != v51)
          {
            objc_enumerationMutation(tracks);
          }

          v54 = *(*(&v199 + 1) + 8 * n);
          [v54 box];
          FigCaptureTransformRectToCoordinateSpaceOfRect(v55, v56, v57, v58, v208, v209, *&v210);
          v60 = v59;
          v62 = v61;
          OUTLINED_FUNCTION_16_5();
          v216 = CGRectIntersection(v215, v219);
          v63 = v216.size.width * v216.size.height;
          if (v216.size.width * v216.size.height <= v60 * v62 * 0.5)
          {
            if ([v54 metadata])
            {
              v64 = [objc_msgSend(v54 "metadata")];
            }

            else
            {
              v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            v65 = v64;
            [v64 setObject:v52 forKeyedSubscript:getPTCinematographyExcludeAsCinematicChoice()];
            [v54 setMetadata:v65];
          }
        }

        v50 = [tracks countByEnumeratingWithState:&v199 objects:v198 count:{16, v63}];
      }

      while (v50);
      v27 = v33;
      emit = emitCopy;
    }

    else
    {
      v27 = v33;
    }

    goto LABEL_59;
  }
}

- (id)_updateGlobalMetadata:(id *)result
{
  if (result)
  {
    v2 = result;
    if ((result[53] & 1) == 0)
    {
      if ([result[16] getGlobalMetadata:result[48]])
      {
        v4 = CMGetAttachment(a2, *off_1E798A3C8, 0);
        v5 = [objc_msgSend(v2[21] "cameraInfoByPortType")];
        v6 = [v4 objectForKeyedSubscript:*off_1E798B660];
        ImageBuffer = CMSampleBufferGetImageBuffer(a2);
        PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
        IsTenBit = FigCapturePixelFormatIsTenBit(PixelFormatType);
        v10 = v2[49];
        if (v2[54] != 1)
        {
          PTTuningParametersClass = getPTTuningParametersClass();
          [PTTuningParametersClass hwModelIDFromFigModelSpecificName:{FigCaptureGetModelSpecificName(PTTuningParametersClass, v25)}];
          [OUTLINED_FUNCTION_7() setHwModelID:?];
          [v6 intValue];
          [OUTLINED_FUNCTION_7() setSensorID:?];
          goto LABEL_16;
        }

        [v6 intValue];
        [OUTLINED_FUNCTION_7() setSensorID:?];
        v11 = getPTTuningParametersClass();
        FigCaptureGetModelSpecificName(v11, v12);
        [OUTLINED_FUNCTION_15() hwModelIDFromFigModelSpecificName:?];
        [OUTLINED_FUNCTION_7() setHwModelID:?];
        [getPTTuningParametersClass() noiseScaleFactorForHwModelID:objc_msgSend(v10 sensorID:{"hwModelID"), objc_msgSend(v10, "sensorID")}];
        [v10 setNoiseScaleFactor:?];
        v13 = [v5 objectForKeyedSubscript:*off_1E7989E78];
        if (v13)
        {
          v14 = v13;
          if ([v13 length] == 48)
          {
            [v14 getBytes:&v34 length:48];
            v15 = vzip1q_s32(v34, v36);
            v16 = vzip2q_s32(v34, v36);
            v17 = vzip2q_s32(v35, 0);
            [v10 setExtrinsicsMatrix:{*vzip1q_s32(v15, v35).i64, *vzip2q_s32(v15, vdupq_lane_s32(*v35.i8, 1)).i64, *vzip1q_s32(v16, v17).i64, *vzip2q_s32(v16, v17).i64}];
            v32 = *MEMORY[0x1E695F058];
            v33 = *(MEMORY[0x1E695F058] + 16);
            if (!FigCFDictionaryGetCGRectIfPresent())
            {
              goto LABEL_25;
            }

            [v10 setSensorCropRect:{v32, v33}];
            if (!OUTLINED_FUNCTION_9())
            {
              goto LABEL_25;
            }

            [OUTLINED_FUNCTION_9() floatValue];
            [v10 setFocalLength35mm:?];
            if (!OUTLINED_FUNCTION_9())
            {
              goto LABEL_25;
            }

            v18 = *off_1E798B5A0;
            if (![v4 objectForKeyedSubscript:*off_1E798B5A0])
            {
              goto LABEL_25;
            }

            [v10 setRawSensorSize:{objc_msgSend(OUTLINED_FUNCTION_9(), "intValue") | (objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", v18), "intValue") << 32)}];
            if (!OUTLINED_FUNCTION_9())
            {
              goto LABEL_25;
            }

            [OUTLINED_FUNCTION_9() intValue];
            [OUTLINED_FUNCTION_7() setConversionGain:?];
            if (!OUTLINED_FUNCTION_9())
            {
              goto LABEL_25;
            }

            [OUTLINED_FUNCTION_9() intValue];
            [OUTLINED_FUNCTION_7() setReadNoise1x:?];
            if (!OUTLINED_FUNCTION_9())
            {
              goto LABEL_25;
            }

            [OUTLINED_FUNCTION_9() intValue];
            [OUTLINED_FUNCTION_7() setReadNoise8x:?];
            __asm { FMOV            V0.2D, #1.0 }

            v30 = _Q0;
            v31 = _Q0;
            FigCFDictionaryGetCGRectIfPresent();
            [v10 setVisCropFactor:{COERCE_DOUBLE(vcvt_f32_f64(vdivq_f64(v30, v31)))}];
LABEL_16:
            if (IsTenBit)
            {
              v26 = 10;
            }

            else
            {
              v26 = 8;
            }

            [v10 setSourceColorBitDepth:v26];
            v27 = CMSampleBufferGetImageBuffer(a2);
            if (v27)
            {
              v28 = v27;
              Width = CVPixelBufferGetWidth(v27);
              result = [v2[50] setOriginalVideoDimensions:Width | (CVPixelBufferGetHeight(v28) << 32)];
              *(v2 + 424) = 1;
              return result;
            }

LABEL_25:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_11();
            return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          }
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }
  }

  return result;
}

- (uint64_t)_updateAutoFocus:(double)focus finalCropRect:(double)rect
{
  if (result)
  {
    v6 = result;
    if (*(result + 233) == 1)
    {
      *(result + 236) = (*(result + 236) + 1) % *(result + 240);
      if (!*(result + 236))
      {
        [objc_msgSend(a2 "focusDetection")];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        result = [objc_msgSend(a2 "focusDetection")];
        v20 = *(v6 + 312);
        if (v20 != 1 && result == 100)
        {
          [OUTLINED_FUNCTION_10_1() defaultContinuousAutoFocusWindowSize];
          v22 = 0.5 - v21 * 0.5;
          [OUTLINED_FUNCTION_10_1() defaultContinuousAutoFocusWindowSize];
          v24 = 0.5 - v23 * 0.5;
          [OUTLINED_FUNCTION_10_1() defaultContinuousAutoFocusWindowSize];
          v26 = v25;
          [OUTLINED_FUNCTION_10_1() defaultContinuousAutoFocusWindowSize];
          v27 = 1;
          result = [OUTLINED_FUNCTION_10_1() setFocusModeAutoWithRect:0 restrictToRect:1 continuous:0 smooth:0 rangeRestrictionNear:v22 rangeRestrictionFar:v24 isFocusRectInOverscanSpace:v26];
LABEL_7:
          *(v6 + 312) = v27;
          return result;
        }

        if (result == 101)
        {
          v34.origin.x = OUTLINED_FUNCTION_3_1();
          result = CGRectEqualToRect(v34, v35);
          if ((result & 1) == 0)
          {
            *(v6 + 248) = v13;
            *(v6 + 256) = v15;
            *(v6 + 264) = v17;
            *(v6 + 272) = v19;
            *(v6 + 280) = focus;
            *(v6 + 288) = rect;
            *(v6 + 296) = a5;
            *(v6 + 304) = a6;
            v28 = OUTLINED_FUNCTION_3_1();
            result = [v29 setFocusModeAutoWithRect:0 restrictToRect:0 continuous:0 smooth:1 rangeRestrictionNear:v28 rangeRestrictionFar:? isFocusRectInOverscanSpace:?];
            v27 = 2;
            goto LABEL_7;
          }
        }

        else if ((result - 102) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          if (v20 == 3)
          {
            v30 = OUTLINED_FUNCTION_3_1();
            result = [v31 setContinuousAutoFocusRect:1 isFocusRectInOverscanSpace:v30];
          }

          else
          {
            v32 = OUTLINED_FUNCTION_3_1();
            result = [v33 setFocusModeAutoWithRect:1 restrictToRect:1 continuous:0 smooth:1 rangeRestrictionNear:v32 rangeRestrictionFar:? isFocusRectInOverscanSpace:?];
          }

          v27 = 3;
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

- (void)_emitSampleBufferOnMetadataOutput:(void *)output cinematographyFrame:
{
  if (self)
  {
    selfCopy = self;
    memset(&sampleTimingArray.presentationTimeStamp, 0, 48);
    *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
    sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
    CMSampleBufferGetPresentationTimeStamp(&sampleTimingArray.presentationTimeStamp, sbuf);
    sampleTimingArray.decodeTimeStamp = sampleTimingArray.duration;
    v6 = *off_1E798A3C8;
    v7 = OUTLINED_FUNCTION_22(sbuf);
    if (([objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798A0B0), "BOOLValue"}] & 1) == 0)
    {
      [(BWRealtimeCinematographyNode *)selfCopy _convertSampleBufferDetectedObjectsFromSensorToBufferCoordinateSpace:?];
      v7 = OUTLINED_FUNCTION_22(sbuf);
    }

    v8 = [v7 mutableCopy];
    v9 = v8;
    if (output)
    {
      v71 = *off_1E798B220;
      v10 = [v8 objectForKeyedSubscript:?];
      if (v10)
      {
        v11 = v10;
        outputCopy = output;
        v68 = v9;
        v69 = v6;
        __asm { FMOV            V0.2D, #1.0 }

        v85 = *&_Q0;
        FigCFDictionaryGetCGRectIfPresent();
        v70 = selfCopy;
        v17 = *(selfCopy + 280);
        v18 = *(selfCopy + 288);
        v19 = *(selfCopy + 296);
        v81 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        obj = v11;
        v20 = [v11 countByEnumeratingWithState:&v106 objects:target count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v107;
          v23 = *off_1E798B780;
          v24 = *off_1E798ACF0;
          v25 = *off_1E798ACE8;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v107 != v22)
              {
                objc_enumerationMutation(v11);
              }

              v27 = *(*(&v106 + 1) + 8 * i);
              v103[0] = v23;
              v28 = MEMORY[0x1E696AD98];
              objc_msgSend_time(output);
              v104[0] = [v28 numberWithLongLong:v102[3]];
              v103[1] = v24;
              v29 = MEMORY[0x1E696AD98];
              objc_msgSend_time(output);
              v104[1] = [v29 numberWithLongLong:v102[0]];
              v103[2] = v25;
              v104[2] = [MEMORY[0x1E695DF70] array];
              [v81 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v104, v103, 3), v27}];
            }

            v21 = [v11 countByEnumeratingWithState:&v106 objects:target count:16];
          }

          while (v21);
        }

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        outputCopy2 = output;
        allDetections = [output allDetections];
        v31 = v11;
        v80 = [allDetections countByEnumeratingWithState:&v98 objects:v97 count:16];
        if (v80)
        {
          v79 = *v99;
          v77 = *off_1E798ACE8;
          v32 = *off_1E798AC78;
          v84 = *off_1E798B2B8;
          v75 = *off_1E798ACD8;
          v74 = *off_1E798B5C0;
          v73 = *off_1E798B780;
          v72 = *off_1E798ACF0;
          do
          {
            for (j = 0; j != v80; ++j)
            {
              if (*v99 != v79)
              {
                objc_enumerationMutation(allDetections);
              }

              v34 = *(*(&v98 + 1) + 8 * j);
              detectionType = [v34 detectionType];
              v36 = off_1E798ACB8;
              switch(detectionType)
              {
                case 1:
                  goto LABEL_27;
                case 2:
                  v36 = off_1E798ACD0;
                  goto LABEL_27;
                case 3:
                  v36 = off_1E798ACB0;
                  goto LABEL_27;
                case 4:
                  v36 = off_1E798AC90;
                  goto LABEL_27;
                case 5:
                  v36 = off_1E798ACA0;
                  goto LABEL_27;
                case 6:
                case 7:
                case 8:
                  continue;
                case 9:
                  v36 = off_1E798AC98;
                  goto LABEL_27;
                case 10:
                  v36 = off_1E798ACA8;
                  goto LABEL_27;
                case 11:
                  goto LABEL_21;
                default:
                  if ((detectionType - 101) >= 2)
                  {
                    continue;
                  }

LABEL_21:
                  v36 = off_1E798ACD8;
LABEL_27:
                  v37 = *v36;
                  if (!*v36)
                  {
                    continue;
                  }

                  v82 = *v36;
                  if (![v31 objectForKeyedSubscript:*v36])
                  {
                    goto LABEL_41;
                  }

                  v95 = 0u;
                  v96 = 0u;
                  v93 = 0u;
                  v94 = 0u;
                  v38 = [objc_msgSend(v31 objectForKeyedSubscript:{v37), "objectForKeyedSubscript:", v77}];
                  v39 = [v38 countByEnumeratingWithState:&v93 objects:v92 count:16];
                  if (!v39)
                  {
                    goto LABEL_41;
                  }

                  v40 = v39;
                  v41 = *v94;
                  break;
              }

LABEL_31:
              v42 = 0;
              while (1)
              {
                if (*v94 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = *(*(&v93 + 1) + 8 * v42);
                v44 = [v43 objectForKeyedSubscript:v32];
                if (v44 || (v44 = [v43 objectForKeyedSubscript:v84]) != 0)
                {
                  v45 = v44;
                  trackIdentifier = [v34 trackIdentifier];
                  if (trackIdentifier == [v45 unsignedIntegerValue])
                  {
                    break;
                  }
                }

                if (v40 == ++v42)
                {
                  v40 = [v38 countByEnumeratingWithState:&v93 objects:v92 count:16];
                  v37 = v82;
                  outputCopy2 = outputCopy;
                  v31 = obj;
                  if (v40)
                  {
                    goto LABEL_31;
                  }

                  goto LABEL_41;
                }
              }

              v47 = [v43 mutableCopy];
              v37 = v82;
              outputCopy2 = outputCopy;
              v31 = obj;
              if (v47)
              {
                goto LABEL_45;
              }

LABEL_41:
              if (v37 != v75)
              {
                continue;
              }

              [v34 rect];
              DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v110);
              v49 = objc_alloc(MEMORY[0x1E695DF90]);
              v90[0] = v32;
              v50 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v34, "trackIdentifier")}];
              v90[1] = v74;
              v91[0] = v50;
              v91[1] = DictionaryRepresentation;
              v47 = [v49 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v91, v90, 2)}];
              if (DictionaryRepresentation)
              {
                CFRelease(DictionaryRepresentation);
              }

              v37 = v82;
LABEL_45:
              if ([outputCopy2 focusDetection])
              {
                trackIdentifier2 = [v34 trackIdentifier];
                _ZF = trackIdentifier2 == [objc_msgSend(outputCopy2 "focusDetection")];
                v37 = v82;
                if (_ZF)
                {
                  [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(outputCopy2, "isFocusStrong")}];
                  [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
                  v52 = MEMORY[0x1E696AD98];
                  v53 = [objc_msgSend(outputCopy2 "focusDetection")] == 101;
                  v54 = v52;
                  v37 = v82;
                  [v54 numberWithInt:v53];
                  [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
                  if ([objc_msgSend(outputCopy2 "focusDetection")] == 101)
                  {
                    [v34 rect];
                    v59 = FigCaptureTransformRectToCoordinateSpaceOfRect(v55, v56, v57, v58, v17, v18, v19);
                    v111.origin.x = FigCaptureTransformNormalizedRectFromCoordinateSpaceOfNormalizedRect(v59, v60, v61, v62, 0.0, 0.0, v85);
                    v63 = CGRectCreateDictionaryRepresentation(v111);
                    [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
                  }
                }
              }

              v64 = v81;
              if (![v81 objectForKeyedSubscript:v37])
              {
                v88[0] = v73;
                v65 = MEMORY[0x1E696AD98];
                objc_msgSend_time(outputCopy2);
                v89[0] = [v65 numberWithLongLong:v87[3]];
                v88[1] = v72;
                v66 = MEMORY[0x1E696AD98];
                objc_msgSend_time(outputCopy2);
                v67 = v66;
                v64 = v81;
                v89[1] = [v67 numberWithLongLong:v87[0]];
                v88[2] = v77;
                v89[2] = [MEMORY[0x1E695DF70] array];
                [v81 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v89, v88, 3), v37}];
              }

              [objc_msgSend(objc_msgSend(v64 objectForKeyedSubscript:{v37), "objectForKeyedSubscript:", v77), "addObject:", v47}];
            }

            v80 = [allDetections countByEnumeratingWithState:&v98 objects:v97 count:16];
          }

          while (v80);
        }

        v9 = v68;
        [v68 setObject:v81 forKeyedSubscript:v71];

        v6 = v69;
        selfCopy = v70;
      }

      [v9 setObject:0 forKeyedSubscript:*off_1E798B218];
    }

    target[0] = 0;
    if (!CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, target) && target[0])
    {
      CMSetAttachment(target[0], v6, v9, 1u);
      [*(selfCopy + 160) emitSampleBuffer:target[0]];
    }

    if (target[0])
    {
      CFRelease(target[0]);
    }
  }
}

- (void)_convertSampleBufferDetectedObjectsFromSensorToBufferCoordinateSpace:(void *)result
{
  if (result)
  {
    v3 = CMGetAttachment(target, *off_1E798A3C8, 0);
    if (v3)
    {
      v4 = v3;
      v5 = *off_1E798B220;
      result = [v3 objectForKeyedSubscript:*off_1E798B220];
      if (result)
      {
        v6 = result;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        TransformFromSensorSpaceToSampleBuffer = FigCaptureGetTransformFromSensorSpaceToSampleBuffer(target, &v28);
        OUTLINED_FUNCTION_14(TransformFromSensorSpaceToSampleBuffer, v8, v9, v10, v11, v12, v13, v14, v23, v25, *&v27.a, *&v27.b, *&v27.c, *&v27.d, *&v27.tx, *&v27.ty, v28, *(&v28 + 1), v29, *(&v29 + 1), v30);
        IsIdentity = CGAffineTransformIsIdentity(&v27);
        if (!IsIdentity)
        {
          OUTLINED_FUNCTION_14(IsIdentity, v16, v17, v18, v19, v20, v21, v22, v24, v26, *&v27.a, *&v27.b, *&v27.c, *&v27.d, *&v27.tx, *&v27.ty, v28, *(&v28 + 1), v29, *(&v29 + 1), v30);
          [v4 setObject:FigCaptureMetadataUtilitiesApplyAffineTransformToDetectedObjectsInfo(v6 forKeyedSubscript:{&v27), v5}];
        }

        return [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A0B0];
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v23, v25, *&v27.a, *&v27.b, LODWORD(v27.c), *&v27.d, *&v27.tx, LODWORD(v27.ty));
    }
  }

  return result;
}

@end