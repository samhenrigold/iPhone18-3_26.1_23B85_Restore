@interface BWSmartStyleLearningNode
+ (id)newISPSMGProcessingSession:(id)session;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getSampleBufferPresentationTimeStamp:(SEL)stamp;
- (BOOL)hasNonLiveConfigurationChanges;
- (BWSmartStyleLearningNode)initWithOutputs:(unint64_t)outputs masksRefinerEnabled:(BOOL)enabled propagateMasks:(BOOL)masks ispSMGProcessingSession:(id)session squareAspectRatioConfigEnabled:(BOOL)configEnabled subjectRelightingPreviewVersion:(int)version;
- (id)_blitMasksToOutputPools:(id)pools unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer currentPTS:(id *)s;
- (id)_cropAndScaleMasks:(id)masks unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer currentPTS:(id *)s applyGDC:(BOOL)c useIntermediatePool:(BOOL)pool;
- (id)_deepCopyMasks:(id)masks;
- (id)_runInferences:(opaqueCMSampleBuffer *)inferences unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer withMasks:(id)masks currentPTS:(id *)s;
- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format;
- (int)_createCoefficientsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer to:(opaqueCMSampleBuffer *)to;
- (int)_createIdentityCoefficientsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer to:(opaqueCMSampleBuffer *)to;
- (int)_createSmartStyleContainerFromSampleBuffer:(opaqueCMSampleBuffer *)buffer unstyledThumbnailSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer linearThumbnailSampleBuffer:(opaqueCMSampleBuffer *)thumbnailSampleBuffer to:(opaqueCMSampleBuffer *)to;
- (int)_cropAndUndistortWeightSegmentMap:(__CVBuffer *)map unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer doGDC:(BOOL)c toPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)_extractANSTMasks:(opaqueCMSampleBuffer *)masks forPTS:(id *)s;
- (int)_findCorrespondingSmartStyleContainerWithMasks:(id)masks outputSmartStyleContainer:(opaqueCMSampleBuffer *)container;
- (int)_getContainerAssetsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer outputUnstyledThumbnailSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer outputLinearThumbnailSampleBuffer:(opaqueCMSampleBuffer *)thumbnailSampleBuffer;
- (int)_initVMRefinerInference:(BOOL)inference;
- (int)_loadAndConfigureSmartStyleBundle:(BOOL)bundle;
- (int)_runFalsePositiveRejectionOnPixelBuffer:(__CVBuffer *)buffer unrefinedPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)processMaskSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)processVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer frameEmitted:(BOOL *)emitted;
- (opaqueCMSampleBuffer)_unpackSbufFromPrimaryCameraStream:(opaqueCMSampleBuffer *)stream;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (void)_asynchronouslyDecrementLearnCount;
- (void)_asynchronouslyDecrementRenderCount;
- (void)_asynchronouslyLearnWithContainer:(opaqueCMSampleBuffer *)container inputUnstyledSampleBuffer:(opaqueCMSampleBuffer *)ImageBuffer withUnrefinedMasks:(id)masks withStats:(id)stats withStatsExtended:(id)extended styleToLearn:(id)learn shouldBypass:(BOOL)bypass;
- (void)_asynchronouslyRenderSampleBuffer:(opaqueCMSampleBuffer *)buffer outputLinearThumbnailSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer outputUnstyledThumbnailSampleBuffer:(opaqueCMSampleBuffer *)thumbnailSampleBuffer synchronizingEvent:(id)event;
- (void)_asynchronouslySignalEvent:(id)event;
- (void)_releaseResources;
- (void)_updateCurrentSmartStyleMetadata:(id)metadata onSbuf:(opaqueCMSampleBuffer *)sbuf;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)loadInferenceNetwork;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)semanticStyleSceneTypeDidChange:(int)change;
- (void)setCameraInfoByPortType:(id)type;
- (void)setSmartStyle:(id)style;
@end

@implementation BWSmartStyleLearningNode

- (BWSmartStyleLearningNode)initWithOutputs:(unint64_t)outputs masksRefinerEnabled:(BOOL)enabled propagateMasks:(BOOL)masks ispSMGProcessingSession:(id)session squareAspectRatioConfigEnabled:(BOOL)configEnabled subjectRelightingPreviewVersion:(int)version
{
  configEnabledCopy = configEnabled;
  outputsCopy = outputs;
  v62.receiver = self;
  v62.super_class = BWSmartStyleLearningNode;
  v14 = [(BWNode *)&v62 init];
  if (v14)
  {
    v15 = [MEMORY[0x1E6991708] configurationForVariant:0];
    v16 = [MEMORY[0x1E6991708] tuningParametersForVariant:0];
    learningRate = [v16 learningRate];
    if (learningRate <= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = learningRate;
    }

    LODWORD(v14->_lastLearnedPortType) = v18;
    HIDWORD(v14->_lastLearnedPortType) = [v15 learningRateFramesPerSecond];
    v14->_learningRate = [v15 learningRateMaxFramesPerSecond];
    [v16 statsUpdateDeltaTimeThreshold];
    v14->_learningFramesPerSecondUnit = v19;
    [v16 anstMasksMatchingTimeInSecondsThreshold];
    v14->_learningMaxFramesPerSecond = v20;
    BYTE4(v14->_previousPTS.epoch) = outputsCopy & 1;
    BYTE5(v14->_previousPTS.epoch) = (outputsCopy & 2) != 0;
    BYTE6(v14->_previousPTS.epoch) = enabled;
    HIBYTE(v14->_previousPTS.epoch) = enabled;
    v14->_generateCoefficients = 1;
    v14->_propagateMasks = masks;
    v21 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v14];
    [(BWNodeInput *)v21 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v21 setPassthroughMode:1];
    [(BWNodeInput *)v21 setIndefinitelyHeldBufferCount:3];
    if (FigCapturePlatformIdentifier() == 11 && FigCapturePlatformIdentifier() <= 11)
    {
      v22 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v22 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v22 setPassthroughMode:1];
      [(BWNodeInputMediaConfiguration *)v22 setIndefinitelyHeldBufferCount:3];
      [(BWNodeInput *)v21 setMediaConfiguration:v22 forAttachedMediaKey:@"PreLTMThumbnail"];
    }

    if (FigCapturePlatformIdentifier() >= 12)
    {
      v23 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v23 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v23 setPassthroughMode:1];
      [(BWNodeInputMediaConfiguration *)v23 setIndefinitelyHeldBufferCount:3];
      [(BWNodeInput *)v21 setMediaConfiguration:v23 forAttachedMediaKey:@"LTMThumbnail"];
    }

    v55 = configEnabledCopy;
    if (FigCapturePlatformIdentifier() >= 12)
    {
      v24 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v24 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v24 setPassthroughMode:0];
      [(BWNodeInputMediaConfiguration *)v24 setIndefinitelyHeldBufferCount:3];
      [(BWNodeInput *)v21 setMediaConfiguration:v24 forAttachedMediaKey:0x1F21AB1F0];
    }

    if (FigCapturePlatformIdentifier() == 11)
    {
      v25 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v25 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v25 setPassthroughMode:0];
      [(BWNodeInputMediaConfiguration *)v25 setIndefinitelyHeldBufferCount:3];
      [(BWNodeInput *)v21 setMediaConfiguration:v25 forAttachedMediaKey:0x1F21AB1D0];
    }

    [(BWNode *)v14 addInput:v21];
    v26 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v14];
    [(BWNodeInput *)v26 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v26 setPassthroughMode:0];
    v61[0] = 0x1F21AAED0;
    v61[1] = 0x1F21AAEF0;
    v61[2] = 0x1F21AAF10;
    v61[3] = 0x1F21AAF30;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v57 objects:v56 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v58;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v58 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v57 + 1) + 8 * i);
          v33 = objc_alloc_init(BWNodeInputMediaConfiguration);
          [(BWNodeInputMediaConfiguration *)v33 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeInputMediaConfiguration *)v33 setPassthroughMode:0];
          [(BWNodeInput *)v26 setIndefinitelyHeldBufferCount:3];
          [(BWNodeInput *)v26 setMediaConfiguration:v33 forAttachedMediaKey:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v57 objects:v56 count:16];
      }

      while (v29);
    }

    [(BWNode *)v14 addInput:v26];
    v34 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v14];
    [(BWNodeOutput *)v34 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v34 setPassthroughMode:1];
    [(BWNode *)v14 addOutput:v34];
    v14->_ispSMGProcessingSession = session;
    if ([(BWSmartStyleLearningNode *)v14 _loadAndConfigureSmartStyleBundle:v55])
    {
      [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
    }

    else
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14->_inputStyleContainerSampleBufferQueue = v35;
      if (v35)
      {
        v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v14->_inputMasksSampleBufferQueue = v36;
        if (v36)
        {
          v14->_styleUpdateLock._os_unfair_lock_opaque = 0;
          v14->_inputMasksSampleBufferQueueLock._os_unfair_lock_opaque = 0;
          v14->_inputStyleContainerSampleBufferQueueLock._os_unfair_lock_opaque = 0;
          LODWORD(v14->_workQueue) = 0;
          LODWORD(v14->_lastLearnedROI.size.height) = 0;
          v14->_statsUpdateDeltaTimeThreshold = 0.0;
          v37 = FigDispatchQueueCreateWithPriority();
          *&v14->_timeInSecondsUntilNextStatsUpdate = v37;
          if (v37)
          {
            HIDWORD(v14->_workQueue) = 0;
            v14->_workQueueLock._os_unfair_lock_opaque = 0;
            if (BYTE6(v14->_previousPTS.epoch) == 1 && [(BWSmartStyleLearningNode *)v14 _initVMRefinerInference:v55])
            {
              [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
            }

            else
            {
              v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v14->_refinedVideoFormatByAttachedMediaKey = v38;
              if (v38)
              {
                v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
                v14->_processorVideoFormatsByAttachedMediaKeys = v39;
                if (v39)
                {
                  v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  v14->_processorPixelBufferPoolsByAttachedMediaKeys = v40;
                  if (v40)
                  {
                    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    v14->_intermediateVideoFormatsByAttachedMediaKeys = v41;
                    if (v41)
                    {
                      v14->_generateImageStats = 0;
                      v42 = +[FigCaptureSmartStyle identityStyle];
                      if (v42)
                      {
                        v43 = v42;
                        cast = [v42 cast];
                        [v43 intensity];
                        v46 = v45;
                        [v43 toneBias];
                        v48 = v47;
                        [v43 colorBias];
                        LODWORD(v50) = v49;
                        LODWORD(v51) = v46;
                        LODWORD(v52) = v48;
                        v53 = [FigCaptureSmartStyle styleWithCast:cast intensity:v51 toneBias:v52 colorBias:v50];
                        *&v14->_disableWaitForCoefficientsOnFirstFrame = v53;
                        if (v53)
                        {
                          v14->_semanticStyleSceneLock._os_unfair_lock_opaque = 0;
                          v14->_semanticStyleSceneType = 0;
                          LOBYTE(v14->_mostRecentLearnedSkyMaskSampleBuffer) = 1;
                          HIDWORD(v14->_mostRecentLearnedSkyMaskSampleBuffer) = version;
                          BYTE1(v14->_mostRecentLearnedSkyMaskSampleBuffer) = version != 0;
                          [(BWNode *)v14 setSupportsLiveReconfiguration:1];
                          return v14;
                        }

                        [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
                      }

                      else
                      {
                        [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
                      }
                    }

                    else
                    {
                      [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
                    }
                  }

                  else
                  {
                    [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
                  }
                }

                else
                {
                  [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
                }
              }

              else
              {
                [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
              }
            }
          }

          else
          {
            [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
          }
        }

        else
        {
          [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
        }
      }

      else
      {
        [BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:];
      }
    }

    return 0;
  }

  return v14;
}

- (void)setCameraInfoByPortType:(id)type
{
  intermediatePixelBufferPoolsByAttachedMediaKeys = self->_intermediatePixelBufferPoolsByAttachedMediaKeys;
  if (intermediatePixelBufferPoolsByAttachedMediaKeys)
  {
  }

  self->_intermediatePixelBufferPoolsByAttachedMediaKeys = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:type];
}

- (void)_releaseResources
{
  self->_smartStyleProcessor = 0;

  self->_inferenceScheduler = 0;
  self->_metalContext = 0;
}

- (void)dealloc
{
  dispatch_sync(*&self->_timeInSecondsUntilNextStatsUpdate, &__block_literal_global_55);
  [(BWSmartStyleLearningNode *)self _releaseResources];

  initialCoefficientsPixelBuffer = self->_initialCoefficientsPixelBuffer;
  if (initialCoefficientsPixelBuffer)
  {
    CFRelease(initialCoefficientsPixelBuffer);
  }

  identityCoefficientsPixelBuffer = self->_identityCoefficientsPixelBuffer;
  if (identityCoefficientsPixelBuffer)
  {
    CFRelease(identityCoefficientsPixelBuffer);
  }

  learnedCoefficientsSampleBuffer = self->_learnedCoefficientsSampleBuffer;
  if (learnedCoefficientsSampleBuffer)
  {
    CFRelease(learnedCoefficientsSampleBuffer);
  }

  v6 = *&self->_mostRecentMasksLock._os_unfair_lock_opaque;
  if (v6)
  {
    CFRelease(v6);
  }

  mostRecentLearnedPersonMaskSampleBuffer = self->_mostRecentLearnedPersonMaskSampleBuffer;
  if (mostRecentLearnedPersonMaskSampleBuffer)
  {
    CFRelease(mostRecentLearnedPersonMaskSampleBuffer);
  }

  mostRecentLearnedSkinMaskSampleBuffer = self->_mostRecentLearnedSkinMaskSampleBuffer;
  if (mostRecentLearnedSkinMaskSampleBuffer)
  {
    CFRelease(mostRecentLearnedSkinMaskSampleBuffer);
  }

  v9 = *&self->_timeInSecondsUntilNextStatsUpdate;
  if (v9)
  {
    dispatch_release(v9);
    *&self->_timeInSecondsUntilNextStatsUpdate = 0;
  }

  v10.receiver = self;
  v10.super_class = BWSmartStyleLearningNode;
  [(BWNode *)&v10 dealloc];
}

- (BOOL)hasNonLiveConfigurationChanges
{
  v4.receiver = self;
  v4.super_class = BWSmartStyleLearningNode;
  hasNonLiveConfigurationChanges = [(BWNode *)&v4 hasNonLiveConfigurationChanges];
  if (hasNonLiveConfigurationChanges)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Live reconfiguring BWSmartStyleLearningNode with changing formats is not supported", 0}]);
  }

  return hasNonLiveConfigurationChanges;
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if (!format)
  {
    [(BWSmartStyleLearningNode *)self didSelectFormat:a2 forInput:0 forAttachedMediaKey:input, key];
    return;
  }

  if (!input)
  {
    [BWSmartStyleLearningNode didSelectFormat:a2 forInput:? forAttachedMediaKey:?];
    return;
  }

  v9 = LODWORD(self->_lastLearnedPortType) * (self->_learningRate / HIDWORD(self->_lastLearnedPortType));
  [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v11 = v10;
  v13 = v12;
  if ([(NSArray *)[(BWNode *)self inputs] objectAtIndexedSubscript:0]== input && objc_msgSend_isEqualToString_(key))
  {
    v65 = v9 + 2;
    [(BWNodeOutput *)self->super._output setFormat:format];
    v14 = objc_alloc_init(BWVideoFormatRequirements);
    if (!v14)
    {
      [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
      return;
    }

    v15 = v14;
    v16 = MEMORY[0x1E696AD98];
    v17 = FigCaptureUncompressedPixelFormatForPixelFormat([format pixelFormat]);
    v18 = FigCaptureUnPackedPixelFormatForPixelFormat(v17);
    if ((v18 & 0xFFFFFFEF) == 0x34323066 || v18 == 2019963440 || v18 == 2016686640)
    {
      v21 = 1111970369;
    }

    else
    {
      v21 = v18;
    }

    v82 = [v16 numberWithInt:v21];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v15, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1]);
    [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
    [(BWVideoFormatRequirements *)v15 setWidth:v22];
    [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
    [(BWVideoFormatRequirements *)v15 setHeight:v23];
    [(BWVideoFormatRequirements *)v15 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v15 setHeightAlignment:16];
    v81 = v15;
    v24 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1]);
    [(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey setObject:v24 forKeyedSubscript:0x1F21AB0B0];
    [(NSMutableDictionary *)self->_processorPixelBufferPoolsByAttachedMediaKeys setObject:v24 forKeyedSubscript:0x1F21AB0B0];
    v25 = objc_alloc_init(BWVideoFormatRequirements);
    if (!v25)
    {
      [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
      return;
    }

    v26 = v25;
    v27 = MEMORY[0x1E696AD98];
    v28 = FigCaptureUncompressedPixelFormatForPixelFormat([format pixelFormat]);
    v29 = FigCaptureUnPackedPixelFormatForPixelFormat(v28);
    if ((v29 & 0xFFFFFFEF) == 0x34323066 || v29 == 2019963440 || v29 == 2016686640)
    {
      v32 = 1111970369;
    }

    else
    {
      v32 = v29;
    }

    v80 = [v27 numberWithInt:v32];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v26, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1]);
    [(BWVideoFormatRequirements *)v26 setWidth:v11];
    [(BWVideoFormatRequirements *)v26 setHeight:v13];
    [(BWVideoFormatRequirements *)v26 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v26 setHeightAlignment:16];
    v79 = v26;
    v33 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1]);
    [(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey setObject:v33 forKeyedSubscript:0x1F21AB0D0];
    [(NSMutableDictionary *)self->_processorPixelBufferPoolsByAttachedMediaKeys setObject:v33 forKeyedSubscript:0x1F21AB0D0];
    v34 = objc_alloc_init(BWVideoFormatRequirements);
    if (!v34)
    {
      [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
      return;
    }

    v35 = v34;
    [(BWVideoFormatRequirements *)v34 setSupportedPixelFormats:&unk_1F2248838];
    [(BWVideoFormatRequirements *)v35 setWidth:v11];
    [(BWVideoFormatRequirements *)v35 setHeight:v13];
    [(BWVideoFormatRequirements *)v35 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v35 setHeightAlignment:16];
    v78 = v35;
    v36 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1]);
    [(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey setObject:v36 forKeyedSubscript:0x1F21AB110];
    [(NSMutableDictionary *)self->_processorPixelBufferPoolsByAttachedMediaKeys setObject:v36 forKeyedSubscript:0x1F21AB110];
    if (self->_generateImageStats)
    {
      v37 = objc_alloc_init(BWVideoFormatRequirements);
      if (!v37)
      {
        [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v38 = v37;
      v39 = MEMORY[0x1E696AD98];
      v40 = [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")] - 1;
      if (v40 > 8)
      {
        v41 = 0;
      }

      else
      {
        v41 = *&a610l61c261c361[4 * v40];
      }

      v77 = [v39 numberWithUnsignedInt:v41];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v38, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1]);
      [(BWVideoFormatRequirements *)v38 setWidth:v11];
      [(BWVideoFormatRequirements *)v38 setHeight:v13];
      [(BWVideoFormatRequirements *)v38 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v38 setHeightAlignment:16];
      v76 = v38;
      v52 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1]);
      [(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey setObject:v52 forKeyedSubscript:0x1F21AB150];
      [(NSMutableDictionary *)self->_processorPixelBufferPoolsByAttachedMediaKeys setObject:v52 forKeyedSubscript:0x1F21AB150];
    }

    if (BYTE4(self->_previousPTS.epoch) == 1)
    {
      v53 = objc_alloc_init(BWVideoFormatRequirements);
      if (!v53)
      {
        [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v54 = v53;
      v55 = [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
      v75 = [v55 objectForKeyedSubscript:*MEMORY[0x1E6966130]];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v54, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1]);
      v56 = [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
      -[BWVideoFormatRequirements setWidth:](v54, "setWidth:", [objc_msgSend(v56 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "unsignedIntValue"}]);
      v57 = [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
      -[BWVideoFormatRequirements setHeight:](v54, "setHeight:", [objc_msgSend(v57 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "unsignedIntValue"}]);
      [(BWVideoFormatRequirements *)v54 setWidthAlignment:16];
      [(BWVideoFormatRequirements *)v54 setHeightAlignment:16];
      v58 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      if (!v58)
      {
        [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v59 = v58;
      [(BWNodeOutputMediaConfiguration *)v58 setFormatRequirements:v54];
      [(BWNodeOutputMediaConfiguration *)v59 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v59 setProvidesPixelBufferPool:1];
      [(BWNodeOutputMediaConfiguration *)v59 setOwningNodeRetainedBufferCount:v9 + 3];
      [(BWNodeOutputMediaConfiguration *)v59 setOwningNodeIndefinitelyHeldBufferCount:1];
      [(BWNodeOutput *)self->super._output setMediaConfiguration:v59 forAttachedMediaKey:0x1F21AB070];
      v60 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      if (!v60)
      {
        [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v61 = v60;
      [(BWNodeOutputMediaConfiguration *)v60 setFormatRequirements:v26];
      [(BWNodeOutputMediaConfiguration *)v61 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v61 setProvidesPixelBufferPool:1];
      [(BWNodeOutputMediaConfiguration *)v61 setOwningNodeRetainedBufferCount:v65];
      [(BWNodeOutputMediaConfiguration *)v61 setOwningNodeIndefinitelyHeldBufferCount:3];
      [(BWNodeOutput *)self->super._output setMediaConfiguration:v61 forAttachedMediaKey:0x1F21AB0D0];
      v62 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      if (!v62)
      {
        [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
        return;
      }

      v63 = v62;
      [(BWNodeOutputMediaConfiguration *)v62 setFormatRequirements:v35];
      [(BWNodeOutputMediaConfiguration *)v63 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v63 setProvidesPixelBufferPool:1];
      [(BWNodeOutputMediaConfiguration *)v63 setOwningNodeRetainedBufferCount:v65];
      [(BWNodeOutputMediaConfiguration *)v63 setOwningNodeIndefinitelyHeldBufferCount:3];
      [(BWNodeOutput *)self->super._output setMediaConfiguration:v63 forAttachedMediaKey:0x1F21AB110];
    }

    if (BYTE6(self->_previousPTS.epoch) == 1)
    {
      [(BWVideoFormat *)self->_anstMaskVideoFormat setObject:[(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey objectForKeyedSubscript:0x1F21AB0B0] forKeyedSubscript:@"PrimaryFormat"];
      v64 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWInferenceVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [-[BWVideoFormat objectForKeyedSubscript:](self->_anstMaskVideoFormat objectForKeyedSubscript:{@"PrimaryFormat", "pixelBufferAttributes"}]);
      [(BWInferenceVideoFormatRequirements *)v64 setIncludesInvalidContent:1];
      v74 = v64;
      if (-[BWInferenceScheduler prepareForInputInferenceVideoFormat:attachedMediaKey:](self->_inferenceScheduler, "prepareForInputInferenceVideoFormat:attachedMediaKey:", +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1]), @"PrimaryFormat"))
      {
        [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
      }
    }
  }

  else
  {
    if ((objc_msgSend_isEqualToString_(key) & 1) != 0 || (objc_msgSend_isEqualToString_(key) & 1) != 0 || (objc_msgSend_isEqualToString_(key) & 1) != 0 || objc_msgSend_isEqualToString_(key))
    {
      if (!self->_inferenceEngine)
      {
        v42 = objc_alloc_init(BWVideoFormatRequirements);
        if (!v42)
        {
          [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
          return;
        }

        v43 = v42;
        -[BWVideoFormatRequirements setWidth:](v42, "setWidth:", [format width]);
        -[BWVideoFormatRequirements setHeight:](v43, "setHeight:", [format height]);
        [(BWVideoFormatRequirements *)v43 setBytesPerRowAlignment:64];
        [(BWVideoFormatRequirements *)v43 setSupportedPixelFormats:&unk_1F2248850];
        v73 = v43;
        self->_inferenceEngine = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1]);
      }

      if (BYTE6(self->_previousPTS.epoch) == 1)
      {
        v70[0] = 0x1F219EE10;
        v70[1] = 0x1F219EE70;
        v71[0] = 0x1F21AAED0;
        v72[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
        v71[1] = 0x1F21AAEF0;
        v69[0] = 0x1F219EE30;
        v69[1] = 0x1F219EE90;
        v72[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
        v71[2] = 0x1F21AAF10;
        v68[0] = 0x1F219EE50;
        v68[1] = 0x1F219EEB0;
        v72[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:3];
        if ([v44 objectForKeyedSubscript:key])
        {
          v45 = [objc_msgSend(v44 objectForKeyedSubscript:{key), "objectAtIndexedSubscript:", 0}];
          v46 = [objc_msgSend(v44 objectForKeyedSubscript:{key), "objectAtIndexedSubscript:", 1}];
          [(BWVideoFormat *)self->_anstMaskVideoFormat setObject:self->_inferenceEngine forKeyedSubscript:v45];
          [(BWVideoFormat *)self->_anstMaskVideoFormat setObject:self->_inferenceEngine forKeyedSubscript:v46];
        }

        [(NSMutableDictionary *)self->_processorPixelBufferPoolsByAttachedMediaKeys setObject:self->_inferenceEngine forKeyedSubscript:key];
      }

      if (self->_propagateMasks)
      {
        v47 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [format pixelBufferAttributes]);
        v48 = objc_alloc_init(BWNodeOutputMediaConfiguration);
        if (!v48)
        {
          [BWSmartStyleLearningNode didSelectFormat:forInput:forAttachedMediaKey:];
          return;
        }

        v49 = v48;
        [(BWNodeOutputMediaConfiguration *)v48 setFormatRequirements:v47];
        [(BWNodeOutputMediaConfiguration *)v49 setPassthroughMode:0];
        [(BWNodeOutputMediaConfiguration *)v49 setProvidesPixelBufferPool:1];
        [(BWNodeOutputMediaConfiguration *)v49 setOwningNodeRetainedBufferCount:v9 + 2 + self->_propagateMasks];
        [(BWNodeOutputMediaConfiguration *)v49 setOwningNodeIndefinitelyHeldBufferCount:1];
        [(BWNodeOutput *)self->super._output setMediaConfiguration:v49 forAttachedMediaKey:key];
        v67 = v47;
        inferenceEngine = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1]);
        v51 = 328;
      }

      else
      {
        if (!self->_generateCoefficients && BYTE6(self->_previousPTS.epoch) != 1)
        {
          return;
        }

        [(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey setObject:self->_inferenceEngine forKeyedSubscript:key];
        inferenceEngine = self->_inferenceEngine;
        v51 = 344;
      }

      [*(&self->super.super.isa + v51) setObject:inferenceEngine forKeyedSubscript:key];
      return;
    }

    if ((objc_msgSend_isEqualToString_(key) & 1) == 0)
    {
      v66.receiver = self;
      v66.super_class = BWSmartStyleLearningNode;
      [(BWNode *)&v66 didSelectFormat:format forInput:input forAttachedMediaKey:key];
    }
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if ([(NSArray *)[(BWNode *)self inputs:d] objectAtIndexedSubscript:0]== input)
  {
    output = self->super._output;

    [(BWNodeOutput *)output makeConfiguredFormatLive];
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if ([(NSArray *)[(BWNode *)self inputs] objectAtIndexedSubscript:0]== input)
  {
    dispatch_sync(*&self->_timeInSecondsUntilNextStatsUpdate, &__block_literal_global_65);
    [(BWNodeOutput *)self->super._output markEndOfLiveOutputForConfigurationID:d];
    if (!d)
    {
      os_unfair_lock_lock(&self->_inputMasksSampleBufferQueueLock);
      [(NSMutableArray *)self->_inputMasksSampleBufferQueue removeAllObjects];
      os_unfair_lock_unlock(&self->_inputMasksSampleBufferQueueLock);
      os_unfair_lock_lock(&self->_inputStyleContainerSampleBufferQueueLock);
      [(NSMutableArray *)self->_inputStyleContainerSampleBufferQueue removeAllObjects];
      os_unfair_lock_unlock(&self->_inputStyleContainerSampleBufferQueueLock);
      learnedCoefficientsSampleBuffer = self->_learnedCoefficientsSampleBuffer;
      if (learnedCoefficientsSampleBuffer)
      {
        CFRelease(learnedCoefficientsSampleBuffer);
        self->_learnedCoefficientsSampleBuffer = 0;
      }

      identityCoefficientsPixelBuffer = self->_identityCoefficientsPixelBuffer;
      if (identityCoefficientsPixelBuffer)
      {
        CFRelease(identityCoefficientsPixelBuffer);
        self->_identityCoefficientsPixelBuffer = 0;
      }

      initialCoefficientsPixelBuffer = self->_initialCoefficientsPixelBuffer;
      if (initialCoefficientsPixelBuffer)
      {
        CFRelease(initialCoefficientsPixelBuffer);
        self->_initialCoefficientsPixelBuffer = 0;
      }

      [(BWSmartStyleLearningNode *)self _releaseResources];
    }
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3 = MEMORY[0x1E6960C70];
  *(&self->_preLTMThumbnailFound + 3) = *MEMORY[0x1E6960C70];
  *&self->_previousPTS.flags = *(v3 + 16);
  v92.receiver = self;
  v92.super_class = BWSmartStyleLearningNode;
  [(BWNode *)&v92 prepareForCurrentConfigurationToBecomeLive];
  LOBYTE(self->_cameraInfoByPortType) = !self->_bypassStyleEngineForStandardStyle;
  os_unfair_lock_lock(&self->_statsUpdateDeltaTimeThreshold);
  self->_timingLock._os_unfair_lock_opaque = 0;
  self->_anstMasksMatchingTimeInSecondsThreshold = 0.0;
  os_unfair_lock_unlock(&self->_statsUpdateDeltaTimeThreshold);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(*&self->_timeInSecondsUntilNextStatsUpdate, block);
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  refinedVideoFormatByAttachedMediaKey = self->_refinedVideoFormatByAttachedMediaKey;
  v5 = [(NSMutableDictionary *)refinedVideoFormatByAttachedMediaKey countByEnumeratingWithState:&v87 objects:v86 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v88;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v88 != v7)
        {
          objc_enumerationMutation(refinedVideoFormatByAttachedMediaKey);
        }

        v9 = *(*(&v87 + 1) + 8 * i);
        if ([(BWNodeOutput *)self->super._output mediaConfigurationForAttachedMediaKey:v9])
        {
          v10 = [-[BWNodeOutput mediaPropertiesForAttachedMediaKey:](self->super._output mediaPropertiesForAttachedMediaKey:{v9), "preparedPixelBufferPool"}];
          if (!v10)
          {
            [BWSmartStyleLearningNode prepareForCurrentConfigurationToBecomeLive];
LABEL_53:
            v22 = 0;
            goto LABEL_54;
          }

          v11 = v10;
          [(NSMutableDictionary *)self->_processorVideoFormatsByAttachedMediaKeys setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [(NSMutableDictionary *)refinedVideoFormatByAttachedMediaKey countByEnumeratingWithState:&v87 objects:v86 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = self->_processorPixelBufferPoolsByAttachedMediaKeys;
  v12 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v82 objects:v81 count:16];
  if (v12)
  {
    v13 = v12;
    v77 = *v83;
    v75 = -233132304;
    v74 = @"HumanHairMask";
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v83 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v82 + 1) + 8 * j);
        v16 = [MEMORY[0x1E695DFD8] setWithObjects:{0x1F21AAED0, 0x1F21AAEF0, 0x1F21AAF10, 0x1F21AAF30, 0}];
        if (BYTE6(self->_previousPTS.epoch) == 1)
        {
          if ([v16 containsObject:v15])
          {
            v17 = 5;
          }

          else
          {
            v17 = 3;
          }
        }

        else
        {
          v17 = 3;
        }

        v18 = [(NSMutableDictionary *)self->_refinedVideoFormatByAttachedMediaKey objectForKeyedSubscript:v15];
        v19 = [BWPixelBufferPool alloc];
        v20 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:](v19, "initWithVideoFormat:capacity:name:memoryPool:", v18, v17, [MEMORY[0x1E696AEC0] stringWithFormat:@"SmartStyleLearningNode_%@_Pool", v15], -[BWNodeOutput memoryPool](self->super._output, "memoryPool"));
        if (!v20)
        {
          [BWSmartStyleLearningNode prepareForCurrentConfigurationToBecomeLive];
          goto LABEL_53;
        }

        v21 = v20;
        [(NSMutableDictionary *)self->_intermediateVideoFormatsByAttachedMediaKeys setObject:v20 forKeyedSubscript:v15];
      }

      v13 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v82 objects:v81 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  os_unfair_lock_lock(&self->_styleUpdateLock);
  v22 = [*&self->_disableWaitForCoefficientsOnFirstFrame copy];
  os_unfair_lock_unlock(&self->_styleUpdateLock);
  if (!v22)
  {
    LODWORD(v23) = 1.0;
    v22 = [FigCaptureSmartStyle styleWithCast:FigSmartStyleCastTypeStandard intensity:v23 toneBias:0.0 colorBias:0.0];
    if (!v22)
    {
      [BWSmartStyleLearningNode prepareForCurrentConfigurationToBecomeLive];
      goto LABEL_54;
    }
  }

  v24 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:0x1F21AB070];
  if (!v24)
  {
    [BWSmartStyleLearningNode prepareForCurrentConfigurationToBecomeLive];
    goto LABEL_54;
  }

  v25 = [objc_msgSend(v24 "preparedPixelBufferPool")];
  if (!v25)
  {
    [BWSmartStyleLearningNode prepareForCurrentConfigurationToBecomeLive];
    goto LABEL_54;
  }

  v26 = v25;
  v27 = MEMORY[0x1E6991700];
  cast = [(FigCaptureSmartStyle *)v22 cast];
  [(FigCaptureSmartStyle *)v22 toneBias];
  v30 = v29;
  [(FigCaptureSmartStyle *)v22 colorBias];
  v32 = v31;
  [(FigCaptureSmartStyle *)v22 intensity];
  LODWORD(v34) = v33;
  LODWORD(v35) = 1.0;
  LODWORD(v36) = v30;
  LODWORD(v37) = v32;
  [v27 calculateStartupPriorCCMforCast:cast tone:v36 color:v37 intensity:v34 priorStrength:v35];
  v78 = v39;
  v79 = v38;
  v76 = v40;
  v41 = [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v93[0] = v79;
  v93[1] = v78;
  v93[2] = v76;
  if (!v41)
  {
    [(BWSmartStyleLearningNode *)v94 prepareForCurrentConfigurationToBecomeLive];
    v67 = v94[0];
    v68 = -12780;
    goto LABEL_62;
  }

  v42 = v41;
  PixelFormatType = CVPixelBufferGetPixelFormatType(v26);
  v44 = PixelFormatType;
  if (PixelFormatType == 1278226534 || PixelFormatType == 1278226536)
  {
    [v42 spotlightCount];
    v46 = v45;
    [v42 spotlightCount];
    v80 = v47;
    weightPlaneCount = [v42 weightPlaneCount];
    createAndSolveGlobalLinearSystem = [v42 createAndSolveGlobalLinearSystem];
    v50 = CVPixelBufferLockBaseAddress(v26, 0);
    if (v50)
    {
      v68 = v50;
      [(BWSmartStyleLearningNode *)v50 prepareForCurrentConfigurationToBecomeLive];
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(v26);
      v52 = (vmul_lane_s32(v46, v80, 1).u32[0] + createAndSolveGlobalLinearSystem) * weightPlaneCount;
      if (v44 == 1278226536)
      {
        if (v52 >= 1)
        {
          for (k = 0; k != v52; ++k)
          {
            v54 = 0;
            v55 = BaseAddress;
            do
            {
              for (m = 0; m != 3; ++m)
              {
                _S0 = *(&v93[m] & 0xFFFFFFFFFFFFFFF3 | (4 * (v54 & 3)));
                __asm { FCVT            H0, S0 }

                *&v55[2 * m] = _S0;
              }

              ++v54;
              v55 += 6;
            }

            while (v54 != 4);
            BaseAddress += 24;
          }
        }
      }

      else if (v52 >= 1)
      {
        for (n = 0; n != v52; ++n)
        {
          v63 = 0;
          v64 = BaseAddress;
          do
          {
            for (ii = 0; ii != 3; ++ii)
            {
              *&v64[4 * ii] = *(&v93[ii] & 0xFFFFFFFFFFFFFFF3 | (4 * (v63 & 3)));
            }

            ++v63;
            v64 += 12;
          }

          while (v63 != 4);
          BaseAddress += 48;
        }
      }

      v66 = CVPixelBufferUnlockBaseAddress(v26, 0);
      if (!v66)
      {
        goto LABEL_50;
      }

      v68 = v66;
      [(BWSmartStyleLearningNode *)v66 prepareForCurrentConfigurationToBecomeLive];
    }

    v67 = v94[0];
LABEL_62:
    fig_log_get_emitter();
    LODWORD(v69) = v68;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v69, v67, v70, v71, v72, obj, v74, v75);
    goto LABEL_54;
  }

  fig_log_get_emitter();
  LODWORD(v69) = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v69, v72, v70, v71, v72, obj, v74, v75);
LABEL_50:
  self->_initialStyle = v22;
  self->_initialCoefficientsPixelBuffer = v26;
LABEL_54:
}

void *__70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 144) setup])
  {
    return __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  if (*(v2 + 284))
  {
    v3 = 9;
  }

  else
  {
    v3 = 8;
  }

  v4 = *(v2 + 144);
  v5 = objc_alloc(MEMORY[0x1E69916C8]);
  v17 = @"ProcessingType";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v6 = [v5 initWithMaxInputDimensions:0 inputPixelFormat:0 maxOutputDimensions:0 cmiResourceEnabled:0 processorSpecificOptions:objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)];
  if (v6)
  {
    v7 = [v4 externalMemoryDescriptorForConfiguration:v6];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E6991758]) initWithDevice:objc_msgSend(objc_msgSend(v4 allocatorType:{"metalCommandQueue"), "device"), objc_msgSend(v7, "allocatorType")}];
      if (v8)
      {
        v9 = objc_opt_new();
        if (v9)
        {
          [v9 setMemSize:{objc_msgSend(v7, "memSize")}];
          [v9 setWireMemory:1];
          [v9 setLabel:@"BWSmartStyleLearningNode-FigMetalAllocatorBackend"];
          [v9 setMemoryPoolId:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
          v10 = [v8 setupWithDescriptor:v9];
          if (v10)
          {
            v13 = v10;
            v12 = 0;
          }

          else
          {
            v11 = objc_opt_new();
            v12 = v11;
            if (v11)
            {
              [v11 setAllocatorBackend:v8];
              [v4 setExternalMemoryResource:v12];
              v15 = @"MemoryPoolId";
              v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
              [v4 setTuningParameters:{objc_msgSend(objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1), "cmi_dictionaryMergedWithDefaultDict:", objc_msgSend(v4, "tuningParameters"))}];
              v13 = 0;
            }

            else
            {
              v13 = 4294954510;
            }
          }

          goto LABEL_12;
        }
      }

      else
      {
        v9 = 0;
      }

      v12 = 0;
    }

    else
    {
      v9 = 0;
      v12 = 0;
      v8 = 0;
    }
  }

  else
  {
    v9 = 0;
    v12 = 0;
    v8 = 0;
    v7 = 0;
  }

  v13 = 4294954510;
LABEL_12:

  if (v13)
  {
    return __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke_cold_2(v13);
  }

  result = [*(*(a1 + 32) + 144) prepareToProcess:v3];
  if (result)
  {
    return __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke_cold_3();
  }

  return result;
}

void __70__BWSmartStyleLearningNode_prepareForCurrentConfigurationToBecomeLive__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 304) prepareForInferenceWithFormatProvider:*(a1 + 32) pixelBufferPoolProvider:*(a1 + 32)];
  os_unfair_lock_lock((*(a1 + 32) + 292));
  *(*(a1 + 32) + 290) = v2 == 0;
  v3 = (*(a1 + 32) + 292);

  os_unfair_lock_unlock(v3);
}

- (int)processMaskSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (self && (objc_msgSend__getSampleBufferPresentationTimeStamp_(self, a2), epoch = time.epoch, value = time.value, flags = time.flags, timescale = time.timescale, (time.flags & 1) != 0))
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      time.value = value;
      time.timescale = timescale;
      CMTimeGetSeconds(&time);
      kdebug_trace();
    }

    time.value = value;
    time.timescale = timescale;
    time.flags = flags;
    time.epoch = epoch;
    v7 = [(BWSmartStyleLearningNode *)self _extractANSTMasks:buffer forPTS:&time];
    v8 = v7;
    if (v7)
    {
      [BWSmartStyleLearningNode processMaskSampleBuffer:v7];
    }
  }

  else
  {
    [BWSmartStyleLearningNode processMaskSampleBuffer:];
    return 0;
  }

  return v8;
}

- (int)processVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer frameEmitted:(BOOL *)emitted
{
  selfCopy = self;
  v96 = 0;
  v97 = 0;
  v94 = 0;
  sampleBufferOut = 0;
  v92 = 0;
  v93 = 0;
  v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  v91 = 0;
  if (!self)
  {
    timescale = 0;
    value = 0;
    goto LABEL_65;
  }

  self = objc_msgSend__getSampleBufferPresentationTimeStamp_(self, a2);
  epoch = time.duration.epoch;
  value = time.duration.value;
  flags = time.duration.flags;
  timescale = time.duration.timescale;
  if ((time.duration.flags & 1) == 0)
  {
LABEL_65:
    [BWSmartStyleLearningNode processVideoSampleBuffer:? frameEmitted:?];
LABEL_66:
    v50 = 0;
    lastObject = 0;
    v49 = 0;
    goto LABEL_125;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    time.duration.value = value;
    time.duration.timescale = timescale;
    CMTimeGetSeconds(&time.duration);
    kdebug_trace();
  }

  v10 = &selfCopy->_preLTMThumbnailFound + 3;
  if (selfCopy->_previousPTS.timescale)
  {
    time.duration.value = value;
    time.duration.timescale = timescale;
    time.duration.flags = flags;
    time.duration.epoch = epoch;
    Seconds = CMTimeGetSeconds(&time.duration);
    *&time.duration.value = *v10;
    time.duration.epoch = *&selfCopy->_previousPTS.flags;
    v11 = Seconds - CMTimeGetSeconds(&time.duration);
  }

  else
  {
    v11 = 1.0 / HIDWORD(selfCopy->_lastLearnedPortType);
  }

  *v10 = value;
  HIDWORD(selfCopy->_previousPTS.value) = timescale;
  selfCopy->_previousPTS.timescale = flags;
  *&selfCopy->_previousPTS.flags = epoch;
  v13 = [(BWSmartStyleLearningNode *)selfCopy _unpackSbufFromPrimaryCameraStream:buffer];
  v14 = CMGetAttachment(v13, *off_1E798A3C8, 0);
  if (!v14)
  {
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    goto LABEL_66;
  }

  v15 = v14;
  os_unfair_lock_lock(&selfCopy->_styleUpdateLock);
  v77 = epoch;
  if (LOBYTE(selfCopy->_mostRecentLearnedSkyMaskSampleBuffer) == 1 && (v16 = [*&selfCopy->_disableWaitForCoefficientsOnFirstFrame cast], objc_msgSend(v16, "isEqual:", FigSmartStyleCastTypeStandard)) && (objc_msgSend(*&selfCopy->_disableWaitForCoefficientsOnFirstFrame, "toneBias"), v17 == 0.0))
  {
    [*&selfCopy->_disableWaitForCoefficientsOnFirstFrame colorBias];
    v19 = v18 == 0.0;
  }

  else
  {
    v19 = 0;
  }

  dictionaryRepresentation = [*&selfCopy->_disableWaitForCoefficientsOnFirstFrame dictionaryRepresentation];
  os_unfair_lock_unlock(&selfCopy->_styleUpdateLock);
  [(BWSmartStyleLearningNode *)selfCopy _updateCurrentSmartStyleMetadata:dictionaryRepresentation onSbuf:buffer];
  os_unfair_lock_lock(&selfCopy->_statsUpdateDeltaTimeThreshold);
  v21 = *&selfCopy->_timingLock._os_unfair_lock_opaque;
  anstMasksMatchingTimeInSecondsThreshold = selfCopy->_anstMasksMatchingTimeInSecondsThreshold;
  os_unfair_lock_unlock(&selfCopy->_statsUpdateDeltaTimeThreshold);
  v23 = [v15 objectForKeyedSubscript:*off_1E798B540];
  v24 = v23;
  if (*&selfCopy->_firstFrame)
  {
    if (objc_msgSend_isEqualToString_(v23))
    {
      goto LABEL_19;
    }

    v25 = *&selfCopy->_firstFrame;
  }

  else
  {
    v25 = 0;
  }

  *&selfCopy->_firstFrame = v24;
  LOBYTE(selfCopy->_cameraInfoByPortType) = 1;
  anstMasksMatchingTimeInSecondsThreshold = 0.0;
  v21 = 0.0;
LABEL_19:
  v26 = [(BWSmartStyleLearningNode *)selfCopy _getContainerAssetsFromSampleBuffer:v13 outputUnstyledThumbnailSampleBuffer:&v94 outputLinearThumbnailSampleBuffer:&v93];
  if (v26)
  {
    v49 = v26;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
LABEL_150:
    v50 = 0;
    lastObject = 0;
    goto LABEL_151;
  }

  BWSampleBufferSetAttachedMedia(v13, 0x1F21AB0D0, v94);
  BWSampleBufferSetAttachedMedia(v13, 0x1F21AB110, v93);
  os_unfair_lock_lock(&selfCopy->_workQueue);
  learnedCoefficientsSampleBuffer = selfCopy->_learnedCoefficientsSampleBuffer;
  if (learnedCoefficientsSampleBuffer)
  {
    BWSampleBufferSetAttachedMedia(v13, 0x1F21AB070, learnedCoefficientsSampleBuffer);
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*&selfCopy->_srlStats);
    [v15 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798A8F0];
    [v15 setObject:selfCopy->_smartStyleLearned forKeyedSubscript:*off_1E798A920];
    v29 = *&selfCopy->_smartStyleRenderingRequiredForSRL;
    if (!v29)
    {
      v29 = objc_opt_new();
    }

    [v15 setObject:v29 forKeyedSubscript:*off_1E798A928];
    [v15 setObject:objc_msgSend(*&selfCopy->_workQueueLearnCount forKeyedSubscript:{"dictionaryRepresentation"), *off_1E798A8F8}];
    [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", LOBYTE(selfCopy->_srlCurveParameter)), *off_1E798A910}];
    goto LABEL_30;
  }

  v89 = 0;
  v90 = 0;
  memset(&time, 0, sizeof(time));
  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v13, 1, &time, 0);
  if (SampleTimingInfoArray)
  {
    v49 = SampleTimingInfoArray;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    goto LABEL_150;
  }

  initialCoefficientsPixelBuffer = selfCopy->_initialCoefficientsPixelBuffer;
  sampleTiming = time;
  v32 = BWSampleBufferCreateFromPixelBufferWithTimingInfo(initialCoefficientsPixelBuffer, &sampleTiming, &v90, &v89);
  if (v32)
  {
    v49 = v32;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    goto LABEL_150;
  }

  v100.origin.x = 0.0;
  v100.origin.y = 0.0;
  v100.size.width = 1.0;
  v100.size.height = 1.0;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v100);
  BWSampleBufferSetAttachedMedia(v13, 0x1F21AB070, v89);
  [v15 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798A8F0];
  [v15 setObject:-[FigCaptureSmartStyle dictionaryRepresentation](selfCopy->_initialStyle forKeyedSubscript:{"dictionaryRepresentation"), *off_1E798A8F8}];
  [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", LOBYTE(selfCopy->_srlCurveParameter)), *off_1E798A910}];
  if (v89)
  {
    CFRelease(v89);
  }

  if (v90)
  {
    CFRelease(v90);
  }

LABEL_30:

  os_unfair_lock_unlock(&selfCopy->_workQueue);
  v33 = [-[FigMetalContext device](selfCopy->_metalContext "device")];
  if (!v33)
  {
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    v50 = 0;
    lastObject = 0;
    v49 = -12786;
LABEL_151:
    v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
    goto LABEL_125;
  }

  v75 = v19;
  v78 = v33;
  CMSetAttachment(v13, *off_1E798A4C0, v33, 1u);
  if (BYTE5(selfCopy->_previousPTS.epoch) == 1 && selfCopy->_currentImageStats && selfCopy->_currentImageStatsExtended)
  {
    [v15 setObject:? forKeyedSubscript:?];
    [v15 setObject:selfCopy->_currentImageStatsExtended forKeyedSubscript:*off_1E798A8D8];
  }

  os_unfair_lock_lock(&selfCopy->_semanticStyleSceneLock);
  [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", selfCopy->_semanticStyleSceneType), *off_1E798A898}];
  os_unfair_lock_unlock(&selfCopy->_semanticStyleSceneLock);
  os_unfair_lock_lock(&selfCopy->_lastLearnedROI.size.height);
  v34 = BYTE4(selfCopy->_lastLearnedROI.size.height);
  if (selfCopy->_propagateMasks && BYTE4(selfCopy->_lastLearnedROI.size.height))
  {
    BWSampleBufferSetAttachedMedia(v13, 0x1F21AAED0, *&selfCopy->_mostRecentMasksLock._os_unfair_lock_opaque);
    BWSampleBufferSetAttachedMedia(v13, 0x1F21AAEF0, selfCopy->_mostRecentLearnedPersonMaskSampleBuffer);
    BWSampleBufferSetAttachedMedia(v13, 0x1F21AAF30, selfCopy->_mostRecentLearnedSkinMaskSampleBuffer);
    BYTE4(selfCopy->_lastLearnedROI.size.height) = 0;
  }

  os_unfair_lock_unlock(&selfCopy->_lastLearnedROI.size.height);
  [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v34), *off_1E798A8E8}];
  if (selfCopy->_propagateMasks && v34)
  {
    BWSynchronizeSmartStyleAttachedMediaPTS(v13);
  }

  v35 = BWCMSampleBufferCreateCopyIncludingMetadata(v13, &sampleBufferOut);
  if (v35)
  {
    v49 = v35;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
LABEL_145:
    lastObject = 0;
    goto LABEL_104;
  }

  BWSampleBufferRemoveAttachedMedia(v13, 0x1F21AB1D0);
  BWSampleBufferRemoveAttachedMedia(v13, 0x1F21AB1F0);
  os_unfair_lock_lock(&selfCopy->_workQueue);
  workQueue_high = HIDWORD(selfCopy->_workQueue);
  os_unfair_lock_unlock(&selfCopy->_workQueue);
  if (workQueue_high > 1)
  {
    time.duration.value = value;
    time.duration.timescale = timescale;
    time.duration.flags = flags;
    time.duration.epoch = v77;
    v39 = [BWDroppedSample newDroppedSampleWithReason:0x1F219C190 pts:&time];
    LODWORD(v90) = 0;
    LOBYTE(v89) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v41 = v90;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v89))
    {
      v42 = v41;
    }

    else
    {
      v42 = v41 & 0xFFFFFFFE;
    }

    if (v42)
    {
      if (v39)
      {
        objc_msgSend_pts(v39);
      }

      else
      {
        memset(&time, 0, 24);
      }

      v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
      *&v48 = CMTimeGetSeconds(&time.duration);
      LODWORD(sampleTiming.duration.value) = 136315906;
      *(&sampleTiming.duration.value + 4) = "[BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:]";
      LOWORD(sampleTiming.duration.flags) = 2112;
      *(&sampleTiming.duration.flags + 2) = selfCopy;
      HIWORD(sampleTiming.duration.epoch) = 2048;
      sampleTiming.presentationTimeStamp.value = v48;
      LOWORD(sampleTiming.presentationTimeStamp.timescale) = 2048;
      *(&sampleTiming.presentationTimeStamp.timescale + 2) = v11;
      _os_log_send_and_compose_impl();
    }

    else
    {
      v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [(BWNodeOutput *)selfCopy->super._output emitDroppedSample:v39];

    lastObject = 0;
    v49 = 0;
    *emitted = 1;
    goto LABEL_124;
  }

  [(BWNodeOutput *)selfCopy->super._output emitSampleBuffer:buffer];
  *emitted = 1;
  v37 = [(BWSmartStyleLearningNode *)selfCopy _createSmartStyleContainerFromSampleBuffer:sampleBufferOut unstyledThumbnailSampleBuffer:v94 linearThumbnailSampleBuffer:v93 to:&v97];
  if (v37)
  {
    v49 = v37;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    goto LABEL_145;
  }

  os_unfair_lock_lock(&selfCopy->_inputStyleContainerSampleBufferQueueLock);
  [(NSMutableArray *)selfCopy->_inputStyleContainerSampleBufferQueue addObject:v97];
  os_unfair_lock_unlock(&selfCopy->_inputStyleContainerSampleBufferQueueLock);
  if (BWSampleBufferGetAttachedMedia(sampleBufferOut, @"LTMThumbnail"))
  {
    v38 = 1;
  }

  else
  {
    v38 = BWSampleBufferGetAttachedMedia(sampleBufferOut, @"PreLTMThumbnail") != 0;
  }

  v43 = (LODWORD(selfCopy->_lastLearnedPortType) / HIDWORD(selfCopy->_lastLearnedPortType)) * 0.05;
  if (v21 > v43)
  {
    v46 = 0;
    currentImageStats = 0;
    lastObject = 0;
    goto LABEL_87;
  }

  if ((selfCopy->_previousPTS.epoch & 0x1000000000000) != 0)
  {
    os_unfair_lock_lock(&selfCopy->_gdcAttachmentsEnabled);
    runVMRefiner = selfCopy->_runVMRefiner;
    os_unfair_lock_unlock(&selfCopy->_gdcAttachmentsEnabled);
    lock = &selfCopy->_inputMasksSampleBufferQueueLock;
    os_unfair_lock_lock(&selfCopy->_inputMasksSampleBufferQueueLock);
    if (runVMRefiner)
    {
      lastObject = [(NSMutableArray *)selfCopy->_inputMasksSampleBufferQueue lastObject];
      if (lastObject)
      {
        [(BWSmartStyleLearningNode *)selfCopy _findCorrespondingSmartStyleContainerWithMasks:lastObject outputSmartStyleContainer:&v96];
      }

      goto LABEL_78;
    }
  }

  else
  {
    lock = &selfCopy->_inputMasksSampleBufferQueueLock;
    os_unfair_lock_lock(&selfCopy->_inputMasksSampleBufferQueueLock);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  inputMasksSampleBufferQueue = selfCopy->_inputMasksSampleBufferQueue;
  v52 = [(NSMutableArray *)inputMasksSampleBufferQueue countByEnumeratingWithState:&v83 objects:v82 count:16];
  if (v52)
  {
    v53 = v52;
    v74 = v38;
    v54 = *v84;
LABEL_69:
    v55 = 0;
    while (1)
    {
      if (*v84 != v54)
      {
        objc_enumerationMutation(inputMasksSampleBufferQueue);
      }

      lastObject = *(*(&v83 + 1) + 8 * v55);
      if (![(BWSmartStyleLearningNode *)selfCopy _findCorrespondingSmartStyleContainerWithMasks:lastObject outputSmartStyleContainer:&v96])
      {
        break;
      }

      if (v53 == ++v55)
      {
        v53 = [(NSMutableArray *)inputMasksSampleBufferQueue countByEnumeratingWithState:&v83 objects:v82 count:16];
        if (v53)
        {
          goto LABEL_69;
        }

        lastObject = 0;
        break;
      }
    }

    v38 = v74;
  }

  else
  {
    lastObject = 0;
  }

LABEL_78:
  v56 = lastObject;
  os_unfair_lock_unlock(lock);
  os_unfair_lock_lock(&selfCopy->_statsUpdateDeltaTimeThreshold);
  *&selfCopy->_timingLock._os_unfair_lock_opaque = LODWORD(selfCopy->_lastLearnedPortType) / HIDWORD(selfCopy->_lastLearnedPortType);
  os_unfair_lock_unlock(&selfCopy->_statsUpdateDeltaTimeThreshold);
  if (LODWORD(selfCopy->_lastLearnedPortType) >= 4 && !v38 && ![v15 objectForKeyedSubscript:*off_1E798B458])
  {
    os_unfair_lock_lock(&selfCopy->_statsUpdateDeltaTimeThreshold);
    *&selfCopy->_timingLock._os_unfair_lock_opaque = *&selfCopy->_timingLock._os_unfair_lock_opaque * 0.5;
    os_unfair_lock_unlock(&selfCopy->_statsUpdateDeltaTimeThreshold);
  }

  v46 = 0;
  if (BYTE5(selfCopy->_previousPTS.epoch) == 1 && anstMasksMatchingTimeInSecondsThreshold <= 0.0)
  {

    v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
    selfCopy->_currentImageStats = v57;
    if (!v57)
    {
      [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
      goto LABEL_154;
    }

    v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
    selfCopy->_currentImageStatsExtended = v58;
    if (!v58)
    {
      [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
      goto LABEL_154;
    }

    v46 = v58;
    currentImageStats = selfCopy->_currentImageStats;
    os_unfair_lock_lock(&selfCopy->_statsUpdateDeltaTimeThreshold);
    LODWORD(selfCopy->_anstMasksMatchingTimeInSecondsThreshold) = selfCopy->_learningFramesPerSecondUnit;
    os_unfair_lock_unlock(&selfCopy->_statsUpdateDeltaTimeThreshold);
  }

  else
  {
    currentImageStats = 0;
  }

LABEL_87:
  os_unfair_lock_lock(&selfCopy->_statsUpdateDeltaTimeThreshold);
  *&selfCopy->_timingLock._os_unfair_lock_opaque = *&selfCopy->_timingLock._os_unfair_lock_opaque - v11;
  selfCopy->_anstMasksMatchingTimeInSecondsThreshold = selfCopy->_anstMasksMatchingTimeInSecondsThreshold - v11;
  os_unfair_lock_unlock(&selfCopy->_statsUpdateDeltaTimeThreshold);
  v59 = BWCMSampleBufferCreateCopyIncludingMetadata(v93, &v92);
  if (v59)
  {
    v49 = v59;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    goto LABEL_104;
  }

  v60 = BWCMSampleBufferCreateCopyIncludingMetadata(v94, &v91);
  if (v60)
  {
    v49 = v60;
    [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
    goto LABEL_104;
  }

  os_unfair_lock_lock(&selfCopy->_workQueue);
  ++HIDWORD(selfCopy->_workQueue);
  os_unfair_lock_unlock(&selfCopy->_workQueue);
  if (sampleBufferOut)
  {
    CFRetain(sampleBufferOut);
  }

  if (v92)
  {
    CFRetain(v92);
  }

  if (v91)
  {
    CFRetain(v91);
    v61 = v91;
  }

  else
  {
    v61 = 0;
  }

  v62 = *&selfCopy->_timeInSecondsUntilNextStatsUpdate;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__BWSmartStyleLearningNode_processVideoSampleBuffer_frameEmitted___block_invoke;
  block[3] = &unk_1E7997200;
  block[6] = sampleBufferOut;
  block[7] = v92;
  block[8] = v61;
  block[4] = selfCopy;
  block[5] = v78;
  dispatch_async(v62, block);
  os_unfair_lock_lock(&selfCopy->_workQueue);
  os_unfair_lock_opaque = selfCopy->_workQueueLock._os_unfair_lock_opaque;
  os_unfair_lock_unlock(&selfCopy->_workQueue);
  if (v21 > v43)
  {
    v49 = 0;
LABEL_104:
    v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
LABEL_124:
    v50 = v78;
    goto LABEL_125;
  }

  if (!os_unfair_lock_opaque)
  {
    if (v96)
    {
      v67 = v96;
    }

    else
    {
      v67 = v97;
    }

    time.duration.value = 0;
    CopyIncludingMetadata = BWCMSampleBufferCreateCopyIncludingMetadata(v67, &time);
    if (CopyIncludingMetadata)
    {
      v49 = CopyIncludingMetadata;
      [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
      goto LABEL_104;
    }

    if (v96)
    {
      v69 = [(BWSmartStyleLearningNode *)selfCopy _deepCopyMasks:lastObject];
      if (!v69)
      {
        [BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:];
LABEL_154:
        v49 = -12780;
        goto LABEL_104;
      }
    }

    else
    {
      v69 = 0;
    }

    os_unfair_lock_lock(&selfCopy->_styleUpdateLock);
    v70 = [*&selfCopy->_disableWaitForCoefficientsOnFirstFrame copy];
    os_unfair_lock_unlock(&selfCopy->_styleUpdateLock);
    os_unfair_lock_lock(&selfCopy->_workQueue);
    ++selfCopy->_workQueueLock._os_unfair_lock_opaque;
    os_unfair_lock_unlock(&selfCopy->_workQueue);
    if (time.duration.value)
    {
      CFRetain(time.duration.value);
    }

    v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
    if (sampleBufferOut)
    {
      CFRetain(sampleBufferOut);
      v71 = sampleBufferOut;
    }

    else
    {
      v71 = 0;
    }

    v72 = *&selfCopy->_timeInSecondsUntilNextStatsUpdate;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __66__BWSmartStyleLearningNode_processVideoSampleBuffer_frameEmitted___block_invoke_89;
    v79[3] = &unk_1E7997228;
    v79[9] = time.duration.value;
    v79[10] = v71;
    v79[4] = selfCopy;
    v79[5] = v69;
    v79[6] = currentImageStats;
    v79[7] = v46;
    v79[8] = v70;
    v80 = v75;
    dispatch_async(v72, v79);
    os_unfair_lock_lock(&selfCopy->_inputStyleContainerSampleBufferQueueLock);
    [(NSMutableArray *)selfCopy->_inputStyleContainerSampleBufferQueue removeObject:v67];
    os_unfair_lock_unlock(&selfCopy->_inputStyleContainerSampleBufferQueueLock);
    if (v96)
    {
      os_unfair_lock_lock(&selfCopy->_inputMasksSampleBufferQueueLock);
      [(NSMutableArray *)selfCopy->_inputMasksSampleBufferQueue removeObject:lastObject];
      os_unfair_lock_unlock(&selfCopy->_inputMasksSampleBufferQueueLock);
    }

    if (time.duration.value)
    {
      CFRelease(time.duration.value);
    }

    v49 = 0;
    goto LABEL_124;
  }

  LODWORD(v90) = 0;
  LOBYTE(v89) = 0;
  v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v65 = v90;
  if (os_log_type_enabled(v64, v89))
  {
    v66 = v65;
  }

  else
  {
    v66 = v65 & 0xFFFFFFFE;
  }

  if (v66)
  {
    LODWORD(sampleTiming.duration.value) = 136315394;
    *(&sampleTiming.duration.value + 4) = "[BWSmartStyleLearningNode processVideoSampleBuffer:frameEmitted:]";
    LOWORD(sampleTiming.duration.flags) = 2048;
    *(&sampleTiming.duration.flags + 2) = v11;
    _os_log_send_and_compose_impl();
  }

  v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  v50 = v78;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v49 = 0;
  *&selfCopy->_timingLock._os_unfair_lock_opaque = v11;
LABEL_125:
  if (v97)
  {
    CFRelease(v97);
  }

  if (v93)
  {
    CFRelease(v93);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  os_unfair_lock_lock(&selfCopy->_inputStyleContainerSampleBufferQueueLock);
  if ([(NSMutableArray *)selfCopy->_inputStyleContainerSampleBufferQueue count]>= (LODWORD(selfCopy->_lastLearnedPortType) * (selfCopy->_learningRate / *(&selfCopy->super.super.isa + v5[586]))))
  {
    [(NSMutableArray *)selfCopy->_inputStyleContainerSampleBufferQueue removeObjectAtIndex:0];
  }

  os_unfair_lock_unlock(&selfCopy->_inputStyleContainerSampleBufferQueueLock);
  return v49;
}

uint64_t __66__BWSmartStyleLearningNode_processVideoSampleBuffer_frameEmitted___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _asynchronouslyRenderSampleBuffer:*(a1 + 48) outputLinearThumbnailSampleBuffer:*(a1 + 56) outputUnstyledThumbnailSampleBuffer:*(a1 + 64) synchronizingEvent:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 32);

  return [v5 _asynchronouslyDecrementRenderCount];
}

uint64_t __66__BWSmartStyleLearningNode_processVideoSampleBuffer_frameEmitted___block_invoke_89(uint64_t a1)
{
  LOBYTE(v6) = *(a1 + 88);
  [*(a1 + 32) _asynchronouslyLearnWithContainer:*(a1 + 72) inputUnstyledSampleBuffer:*(a1 + 80) withUnrefinedMasks:*(a1 + 40) withStats:*(a1 + 48) withStatsExtended:*(a1 + 56) styleToLearn:*(a1 + 64) shouldBypass:v6];
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);

  return [v4 _asynchronouslyDecrementLearnCount];
}

- (void)loadInferenceNetwork
{
  if (BYTE6(self->_previousPTS.epoch) == 1)
  {
    v4 = [(BWInferenceScheduler *)self->_inferenceScheduler prepareForInferenceWithFormatProvider:self pixelBufferPoolProvider:self];
    os_unfair_lock_lock(&self->_gdcAttachmentsEnabled);
    self->_runVMRefiner = v4 == 0;

    os_unfair_lock_unlock(&self->_gdcAttachmentsEnabled);
  }
}

- (id)_runInferences:(opaqueCMSampleBuffer *)inferences unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer withMasks:(id)masks currentPTS:(id *)s
{
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  formatDescriptionOut = 0;
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  v11 = &unk_1E799A000;
  v12 = &unk_1E799A000;
  if (!CMGetAttachment(buffer, *off_1E798A3C8, 0))
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
LABEL_43:
    v22 = 0;
    AttachedMedia = 0;
LABEL_54:
    v19 = 0;
    goto LABEL_28;
  }

  v13 = *off_1E798D298;
  v14 = [masks objectForKeyedSubscript:*off_1E798D298];
  if (!v14)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_43;
  }

  v15 = v14;
  AttachedMedia = BWSampleBufferGetAttachedMedia(inferences, 0x1F21AB0B0);
  if (!AttachedMedia)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
LABEL_53:
    v22 = 0;
    goto LABEL_54;
  }

  v39 = [v15 objectForKeyedSubscript:0x1F21AAED0];
  if (!v39)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_53;
  }

  v17 = [v15 objectForKeyedSubscript:?];
  if (!v17)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_53;
  }

  v18 = v17;
  v19 = [v15 objectForKeyedSubscript:?];
  if (!v19)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    v22 = 0;
    goto LABEL_28;
  }

  v20 = [v15 objectForKeyedSubscript:?];
  if (!v20)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_53;
  }

  v21 = v20;
  if (CMSampleBufferGetSampleTimingInfoArray(buffer, 1, &timingArrayOut, 0))
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_53;
  }

  v37 = v13;
  sCopy = s;
  BWSampleBufferSetAttachedMedia(AttachedMedia, 0x1F219EE10, v39);
  BWSampleBufferSetAttachedMedia(AttachedMedia, 0x1F219EE50, v18);
  BWSampleBufferSetAttachedMedia(AttachedMedia, 0x1F219EE30, v19);
  if ([(BWInferenceScheduler *)self->_inferenceScheduler performInferencesOnSampleBuffer:AttachedMedia attachingResultsToSampleBuffer:AttachedMedia])
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_53;
  }

  BWSampleBufferRemoveAttachedMedia(AttachedMedia, 0x1F219EE10);
  BWSampleBufferRemoveAttachedMedia(AttachedMedia, 0x1F219EE50);
  BWSampleBufferRemoveAttachedMedia(AttachedMedia, 0x1F219EE30);
  v22 = BWSampleBufferGetAttachedMedia(AttachedMedia, 0x1F219EE70);
  if (!v22)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_54;
  }

  v23 = BWSampleBufferGetAttachedMedia(AttachedMedia, 0x1F219EEB0);
  if (!v23)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_53;
  }

  v24 = v23;
  v25 = BWSampleBufferGetAttachedMedia(AttachedMedia, 0x1F219EE90);
  ImageBuffer = CMSampleBufferGetImageBuffer(v22);
  if (!ImageBuffer)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    v22 = 0;
    v19 = 0;
LABEL_63:
    v11 = &unk_1E799A000;
    goto LABEL_28;
  }

  v27 = ImageBuffer;
  v28 = CMSampleBufferGetImageBuffer(v24);
  if (!v28)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
LABEL_59:
    v22 = 0;
LABEL_62:
    v19 = 0;
    v12 = &unk_1E799A000;
    goto LABEL_63;
  }

  v29 = v28;
  v30 = CMSampleBufferGetImageBuffer(v25);
  if (!v30)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_59;
  }

  v31 = v30;
  v32 = CMSampleBufferGetImageBuffer(v21);
  if (!v32)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_59;
  }

  v33 = v32;
  v22 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_intermediateVideoFormatsByAttachedMediaKeys objectForKeyedSubscript:{0x1F21AAF30), "newPixelBuffer"}];
  if (!v22)
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_62;
  }

  utilities = [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
  if ([utilities blitPixelBuffer:v33 inputValidBufferRect:v22 toPixelBuffer:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}])
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
    goto LABEL_62;
  }

  v35 = *MEMORY[0x1E695E480];
  v11 = &unk_1E799A000;
  if (CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x1E695E480], v27, &formatDescriptionOut))
  {
    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
  }

  else
  {
    time = timingArrayOut;
    if (!BWSampleBufferCreateFromPixelBufferWithTimingInfo(v27, &time, &formatDescriptionOut, &v50))
    {
      time = timingArrayOut;
      v12 = &unk_1E799A000;
      if (BWSampleBufferCreateFromPixelBufferWithTimingInfo(v29, &time, &formatDescriptionOut, &v49))
      {
        [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
      }

      else
      {
        time = timingArrayOut;
        if (BWSampleBufferCreateFromPixelBufferWithTimingInfo(v31, &time, &formatDescriptionOut, &v48))
        {
          [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
        }

        else
        {
          time = timingArrayOut;
          if (BWSampleBufferCreateFromPixelBufferWithTimingInfo(v22, &time, &formatDescriptionOut, &v47))
          {
            [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
          }

          else if (BWCMSampleBufferCopyMetadataToSampleBuffer(v39, v50))
          {
            [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
          }

          else if (BWCMSampleBufferCopyMetadataToSampleBuffer(v18, v49))
          {
            [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
          }

          else if (BWCMSampleBufferCopyMetadataToSampleBuffer(v19, v48))
          {
            [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
          }

          else
          {
            if (!BWCMSampleBufferCopyMetadataToSampleBuffer(v21, v47))
            {
              v42[0] = *off_1E798A420;
              *&time.duration.value = *&sCopy->var0;
              time.duration.epoch = sCopy->var3;
              v42[1] = v37;
              v43[0] = CMTimeCopyAsDictionary(&time.duration, v35);
              v40[0] = 0x1F21AAED0;
              v40[1] = 0x1F21AAEF0;
              v41[0] = v50;
              v41[1] = v49;
              v40[2] = 0x1F21AAF10;
              v40[3] = 0x1F21AAF30;
              v41[2] = v48;
              v41[3] = v47;
              v43[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];
              v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
              goto LABEL_28;
            }

            [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
          }
        }
      }

      goto LABEL_54;
    }

    [BWSmartStyleLearningNode _runInferences:unstyledSampleBuffer:withMasks:currentPTS:];
  }

  v19 = 0;
  v12 = &unk_1E799A000;
LABEL_28:
  BWSampleBufferRemoveAttachedMedia(AttachedMedia, 0x1F219EE70);
  BWSampleBufferRemoveAttachedMedia(AttachedMedia, v11[188]);
  BWSampleBufferRemoveAttachedMedia(AttachedMedia, v12[187]);
  if (v22)
  {
    CFRelease(v22);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  return v19;
}

- (int)_loadAndConfigureSmartStyleBundle:(BOOL)bundle
{
  bundleCopy = bundle;
  v5 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleV%d", 1]);
  self->_smartStyleClass = v5;
  if (v5)
  {
    v6 = BWLoadProcessorBundle(@"SmartStyle", 1);
    if (v6 && (v7 = [objc_alloc(MEMORY[0x1E6991778]) initWithoutLibraryUsingOptionalCommandQueue:0], (self->_metalContext = v7) != 0))
    {
      v8 = FigDispatchQueueCreateWithPriority();
      if (v8)
      {
        commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
        if (commandQueue)
        {
          v10 = commandQueue;
          [commandQueue setSubmissionQueue:v8];
          [v10 setCompletionQueue:v8];
          [v10 setGPUPriority:4];
          v11 = [v6 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorV%d", 1)}];
          v12 = [[v11 alloc] initWithOptionalMetalCommandQueue:-[FigMetalContext commandQueue](self->_metalContext ispSMGProcessingSession:{"commandQueue"), -[BWFigCaptureISPProcessingSession figCaptureISPProcessingSession](self->_ispSMGProcessingSession, "figCaptureISPProcessingSession")}];
          self->_smartStyleProcessor = v12;
          if (v12)
          {
            [(CMISmartStyleProcessor *)v12 setInstanceLabel:@"LearningNode"];
            [(CMISmartStyleProcessor *)self->_smartStyleProcessor setUseLiveMetalAllocations:1];
            [(CMISmartStyleProcessor *)self->_smartStyleProcessor setUseSemanticSRLByDefault:HIDWORD(self->_mostRecentLearnedSkyMaskSampleBuffer) != 0];
            ispSMGProcessingSession = self->_ispSMGProcessingSession;
            if (bundleCopy)
            {
              v14 = ispSMGProcessingSession ? [(objc_class *)v11 getDefaultProcessorConfigurationForStreamingAcceleratedSquareAspectRatio]: [(objc_class *)v11 getDefaultProcessorConfigurationForStreamingSquareAspectRatio];
            }

            else
            {
              v14 = ispSMGProcessingSession ? [(objc_class *)v11 getDefaultProcessorConfigurationForStreamingAccelerated]: [(objc_class *)v11 getDefaultProcessorConfigurationForStreaming];
            }

            [(CMISmartStyleProcessor *)self->_smartStyleProcessor setConfiguration:v14];
            if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor configuration])
            {
              v15 = [v6 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorInputOutputV%d", 1)}];
              self->_smartStyleProcessorInputOutputClass = v15;
              if (v15)
              {

                return 0;
              }
            }
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  [(BWSmartStyleLearningNode *)v8 _loadAndConfigureSmartStyleBundle:v6, self];
  return -12786;
}

- (int)_extractANSTMasks:(opaqueCMSampleBuffer *)masks forPTS:(id *)s
{
  if (!masks)
  {
    [(BWSmartStyleLearningNode *)self _extractANSTMasks:a2 forPTS:0, s];
LABEL_21:
    os_unfair_lock_lock(&self->_inputMasksSampleBufferQueueLock);
    [(NSMutableArray *)self->_inputMasksSampleBufferQueue removeAllObjects];
    os_unfair_lock_unlock(&self->_inputMasksSampleBufferQueueLock);
    return -12780;
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(masks, 0x1F21AAED0);
  if (!AttachedMedia)
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v8 = AttachedMedia;
  if (!CMSampleBufferGetImageBuffer(AttachedMedia))
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v9 = BWSampleBufferGetAttachedMedia(masks, 0x1F21AAF10);
  if (!v9)
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v10 = v9;
  if (!CMSampleBufferGetImageBuffer(v9))
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v11 = BWSampleBufferGetAttachedMedia(masks, 0x1F21AAEF0);
  if (!v11)
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v12 = v11;
  if (!CMSampleBufferGetImageBuffer(v11))
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v13 = BWSampleBufferGetAttachedMedia(masks, 0x1F21AAF30);
  if (!v13)
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  v14 = v13;
  if (!CMSampleBufferGetImageBuffer(v13))
  {
    [BWSmartStyleLearningNode _extractANSTMasks:forPTS:];
    goto LABEL_21;
  }

  os_unfair_lock_lock(&self->_inputMasksSampleBufferQueueLock);
  inputMasksSampleBufferQueue = self->_inputMasksSampleBufferQueue;
  v21[0] = *off_1E798A420;
  v15 = *MEMORY[0x1E695E480];
  time = *s;
  v22[0] = CMTimeCopyAsDictionary(&time, v15);
  v21[1] = *off_1E798D298;
  v18[0] = 0x1F21AAED0;
  v18[1] = 0x1F21AAF10;
  v19[0] = v8;
  v19[1] = v10;
  v18[2] = 0x1F21AAEF0;
  v18[3] = 0x1F21AAF30;
  v19[2] = v12;
  v19[3] = v14;
  v22[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  -[NSMutableArray addObject:](inputMasksSampleBufferQueue, "addObject:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2]);
  os_unfair_lock_unlock(&self->_inputMasksSampleBufferQueueLock);
  return 0;
}

- (id)_deepCopyMasks:(id)masks
{
  sampleBufferOut = 0;
  v27 = **&MEMORY[0x1E6960C70];
  if (masks)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = *off_1E798D298;
    v6 = [masks objectForKeyedSubscript:*off_1E798D298];
    if (v6)
    {
      v7 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v23 + 1) + 8 * i);
            v13 = [v7 objectForKeyedSubscript:v12];
            if (!v13)
            {
              [BWSmartStyleLearningNode _deepCopyMasks:];
              goto LABEL_17;
            }

            if (BWCMSampleBufferCreateCopyIncludingMetadata(v13, &sampleBufferOut))
            {
              [BWSmartStyleLearningNode _deepCopyMasks:];
              goto LABEL_17;
            }

            [v4 setObject:sampleBufferOut forKeyedSubscript:v12];
            if (sampleBufferOut)
            {
              CFRelease(sampleBufferOut);
            }

            sampleBufferOut = 0;
          }

          v9 = [v7 countByEnumeratingWithState:&v23 objects:v22 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v14 = *off_1E798A420;
      CMTimeMakeFromDictionary(&v27, [masks objectForKeyedSubscript:*off_1E798A420]);
      v20[0] = v14;
      v15 = *MEMORY[0x1E695E480];
      v19 = v27;
      v16 = CMTimeCopyAsDictionary(&v19, v15);
      v20[1] = v5;
      v21[0] = v16;
      v21[1] = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    }

    else
    {
      [BWSmartStyleLearningNode _deepCopyMasks:];
LABEL_17:
      v17 = 0;
    }
  }

  else
  {
    [(BWSmartStyleLearningNode *)self _deepCopyMasks:a2];
    v17 = 0;
    v4 = 0;
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  [v4 removeAllObjects];

  return v17;
}

- (id)_blitMasksToOutputPools:(id)pools unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer currentPTS:(id *)s
{
  v43 = 0;
  formatDescriptionOut[0] = 0;
  v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = *off_1E798D298;
  v10 = [pools objectForKeyedSubscript:*off_1E798D298];
  if (!v10)
  {
    [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
LABEL_35:
    v28 = 0;
    goto LABEL_22;
  }

  v11 = v10;
  v32 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v32)
  {
    [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
    goto LABEL_35;
  }

  v30 = v9;
  sCopy = s;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v38 count:16];
  v13 = *MEMORY[0x1E695E480];
  if (!v12)
  {
    goto LABEL_21;
  }

  v14 = v12;
  v15 = *v40;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v40 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v39 + 1) + 8 * i);
      memset(&timingArrayOut, 0, sizeof(timingArrayOut));
      v18 = [v11 objectForKeyedSubscript:v17];
      if (!v18)
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
        goto LABEL_35;
      }

      v19 = v18;
      ImageBuffer = CMSampleBufferGetImageBuffer(v18);
      if (!ImageBuffer)
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
        goto LABEL_35;
      }

      v21 = ImageBuffer;
      if (CMSampleBufferGetSampleTimingInfoArray(v19, 1, &timingArrayOut, 0))
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
        goto LABEL_35;
      }

      v22 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_processorVideoFormatsByAttachedMediaKeys objectForKeyedSubscript:{v17), "newPixelBuffer"}];
      if (!v22)
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
        goto LABEL_35;
      }

      v23 = v22;
      MaskValidBufferRectFromMetadata = ssln_getMaskValidBufferRectFromMetadata(v32, v19);
      if ([-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")])
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
LABEL_34:
        CFRelease(v23);
        goto LABEL_35;
      }

      if (CMVideoFormatDescriptionCreateForImageBuffer(v13, v23, formatDescriptionOut))
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
        goto LABEL_34;
      }

      sampleTiming = timingArrayOut;
      if (BWSampleBufferCreateFromPixelBufferWithTimingInfo(v23, &sampleTiming, formatDescriptionOut, &v43))
      {
        [BWSmartStyleLearningNode _blitMasksToOutputPools:unstyledSampleBuffer:currentPTS:];
        goto LABEL_34;
      }

      [v33 setObject:v43 forKeyedSubscript:v17];
      CFRelease(v23);
      if (formatDescriptionOut[0])
      {
        CFRelease(formatDescriptionOut[0]);
      }

      if (v43)
      {
        CFRelease(v43);
      }

      v43 = 0;
      formatDescriptionOut[0] = 0;
    }

    v14 = [v11 countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_21:
  v34[0] = *off_1E798A420;
  *&timingArrayOut.duration.value = *&sCopy->var0;
  timingArrayOut.duration.epoch = sCopy->var3;
  v34[1] = v30;
  v35[0] = CMTimeCopyAsDictionary(&timingArrayOut.duration, v13);
  v35[1] = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v33];
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
LABEL_22:
  if (formatDescriptionOut[0])
  {
    CFRelease(formatDescriptionOut[0]);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  [v33 removeAllObjects];

  return v28;
}

- (int)_cropAndUndistortWeightSegmentMap:(__CVBuffer *)map unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer doGDC:(BOOL)c toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  cCopy = c;
  v10 = *off_1E798A3C8;
  v11 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v11)
  {
    [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
    return -12780;
  }

  v12 = v11;
  v13 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
  if (!v13)
  {
    [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
    return -12780;
  }

  v14 = v13;
  if (!CMGetAttachment(map, v10, 0))
  {
    [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
LABEL_23:
    CFRelease(v14);
    return -12780;
  }

  v15 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
  if (!v15)
  {
    [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
    goto LABEL_23;
  }

  v16 = v15;
  v25 = 0u;
  v26 = 0u;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    Width = 0.0;
  }

  else
  {
    Width = CVPixelBufferGetWidth(pixelBuffer);
    v25 = 0uLL;
    *&v26 = Width;
    *(&v26 + 1) = CVPixelBufferGetHeight(pixelBuffer);
  }

  if (Width == CVPixelBufferGetWidth(pixelBuffer) && *(&v26 + 1) == CVPixelBufferGetHeight(pixelBuffer))
  {
    v18 = CVPixelBufferGetWidth(v14);
    v19 = (v18 / CVPixelBufferGetWidth(map));
    *&v25 = *&v25 * v19;
    *&v26 = *&v26 * v19;
    if (cCopy)
    {
      v20 = -[NSMutableDictionary objectForKeyedSubscript:](self->_intermediatePixelBufferPoolsByAttachedMediaKeys, "objectForKeyedSubscript:", [v12 objectForKeyedSubscript:*off_1E798B540]);
      if (v20)
      {
        v21 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
        v22 = v21;
        if (v21)
        {
          [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:v21 unstyledSampleBuffer:? doGDC:? toPixelBuffer:?];
        }
      }

      else
      {
        [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
        v22 = 0;
      }
    }

    else
    {
      v23 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
      v22 = v23;
      if (v23)
      {
        [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:v23 unstyledSampleBuffer:? doGDC:? toPixelBuffer:?];
      }
    }
  }

  else
  {
    [BWSmartStyleLearningNode _cropAndUndistortWeightSegmentMap:unstyledSampleBuffer:doGDC:toPixelBuffer:];
    v22 = -12780;
  }

  CFRelease(v14);
  CFRelease(v16);
  return v22;
}

- (int)_runFalsePositiveRejectionOnPixelBuffer:(__CVBuffer *)buffer unrefinedPixelBuffer:(__CVBuffer *)pixelBuffer
{
  if (buffer)
  {
    pixelBufferCopy = pixelBuffer;
    if (pixelBuffer)
    {
      v5 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
      pixelBufferCopy = v5;
      if (v5)
      {
        [BWSmartStyleLearningNode _runFalsePositiveRejectionOnPixelBuffer:v5 unrefinedPixelBuffer:?];
      }
    }

    else
    {
      [BWSmartStyleLearningNode _runFalsePositiveRejectionOnPixelBuffer:a2 unrefinedPixelBuffer:?];
    }
  }

  else
  {
    [(BWSmartStyleLearningNode *)self _runFalsePositiveRejectionOnPixelBuffer:a2 unrefinedPixelBuffer:0, pixelBuffer];
    return 0;
  }

  return pixelBufferCopy;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getSampleBufferPresentationTimeStamp:(SEL)stamp
{
  *retstr = **&MEMORY[0x1E6960C70];
  if (!a4)
  {
    return [(BWSmartStyleLearningNode *)self _getSampleBufferPresentationTimeStamp:stamp];
  }

  v6 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  if (v6 && (v7 = v6, v8 = *off_1E798A420, [v6 objectForKeyedSubscript:*off_1E798A420]))
  {
    v9 = [v7 objectForKeyedSubscript:v8];

    return CMTimeMakeFromDictionary(retstr, v9);
  }

  else
  {

    return CMSampleBufferGetPresentationTimeStamp(retstr, a4);
  }
}

- (void)_updateCurrentSmartStyleMetadata:(id)metadata onSbuf:(opaqueCMSampleBuffer *)sbuf
{
  v6 = *off_1E798A3C8;
  v7 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  v8 = *off_1E798A8C0;
  [v7 setObject:metadata forKeyedSubscript:*off_1E798A8C0];
  AttachedMedia = BWSampleBufferGetAttachedMedia(sbuf, @"SynchronizedSlaveFrame");
  if (AttachedMedia)
  {
    v10 = CMGetAttachment(AttachedMedia, v6, 0);

    [v10 setObject:metadata forKeyedSubscript:v8];
  }
}

- (int)_initVMRefinerInference:(BOOL)inference
{
  inferenceCopy = inference;
  *&self->_gdcAttachmentsEnabled = 0;
  v5 = objc_alloc_init(BWInferenceScheduler);
  *&self->_inferenceLock._os_unfair_lock_opaque = v5;
  if (!v5)
  {
    [BWSmartStyleLearningNode _initVMRefinerInference:];
    return -12786;
  }

  v6 = [[BWInferenceEngine alloc] initWithScheduler:*&self->_inferenceLock._os_unfair_lock_opaque priority:6];
  self->_inferenceScheduler = v6;
  if (!v6)
  {
    [BWSmartStyleLearningNode _initVMRefinerInference:];
    return -12786;
  }

  v7 = [(BWInferenceConfiguration *)[BWVMRefinerInferenceConfiguration alloc] initWithInferenceType:118];
  [(BWInferenceConfiguration *)v7 setPriority:6];
  if (inferenceCopy)
  {
    v8 = 0x10000000100;
  }

  else
  {
    v8 = 0xC000000100;
  }

  v9 = [(BWVMRefinerInferenceConfiguration *)v7 setMasksDimensions:v8];
  if (!v7)
  {
    [BWSmartStyleLearningNode _initVMRefinerInference:v9];
    return -12786;
  }

  if (FigCapturePlatformIdentifier() <= 11)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if ([(BWInferenceScheduler *)self->_inferenceScheduler addInferenceOfType:118 version:BWInferenceVersionMakeMajor(v10) & 0xFFFFFFFFFFFFLL configuration:v7])
  {
    [BWSmartStyleLearningNode _initVMRefinerInference:];
    return -12780;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_anstMaskVideoFormat = v11;
    if (!v11)
    {
      [BWSmartStyleLearningNode _initVMRefinerInference:];
    }

    return 0;
  }
}

- (void)_asynchronouslySignalEvent:(id)event
{
  commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
  if (commandBuffer)
  {
    v6 = commandBuffer;
    [commandBuffer setLabel:@"asynchronouslySignalEvent"];
    [v6 encodeSignalEvent:event value:1];
    metalContext = self->_metalContext;

    [(FigMetalContext *)metalContext forceCommit];
  }

  else
  {
    [BWSmartStyleLearningNode _asynchronouslySignalEvent:];
  }
}

- (void)_asynchronouslyDecrementRenderCount
{
  objc_initWeak(&location, self);
  commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
  v4 = commandBuffer;
  if (commandBuffer)
  {
    [commandBuffer setLabel:@"asynchronouslyDecrementRenderCount"];
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __63__BWSmartStyleLearningNode__asynchronouslyDecrementRenderCount__block_invoke;
    v8 = &unk_1E7997250;
    objc_copyWeak(&v9, &location);
    [v4 addCompletedHandler:&v5];
    [(FigMetalContext *)self->_metalContext forceCommit:v5];
    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

void __63__BWSmartStyleLearningNode__asynchronouslyDecrementRenderCount__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    os_unfair_lock_lock(Weak + 106);
    --v2[107]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v2 + 106);
  }
}

- (void)_asynchronouslyDecrementLearnCount
{
  objc_initWeak(&location, self);
  commandBuffer = [(FigMetalContext *)self->_metalContext commandBuffer];
  v4 = commandBuffer;
  if (commandBuffer)
  {
    [commandBuffer setLabel:@"asynchronouslyDecrementLearnCount"];
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __62__BWSmartStyleLearningNode__asynchronouslyDecrementLearnCount__block_invoke;
    v8 = &unk_1E7997250;
    objc_copyWeak(&v9, &location);
    [v4 addCompletedHandler:&v5];
    [(FigMetalContext *)self->_metalContext forceCommit:v5];
    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

void __62__BWSmartStyleLearningNode__asynchronouslyDecrementLearnCount__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    os_unfair_lock_lock(Weak + 106);
    --v2[108]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v2 + 106);
  }
}

- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format
{
  v6[0] = 0x1F219EE70;
  v6[1] = 0x1F219EEB0;
  v7[0] = 0x1F21AAED0;
  v7[1] = 0x1F21AAEF0;
  v6[2] = 0x1F219EE90;
  v7[2] = 0x1F21AAF10;
  result = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:{3), "objectForKeyedSubscript:", key}];
  if (result)
  {
    return [(NSMutableDictionary *)self->_intermediateVideoFormatsByAttachedMediaKeys objectForKeyedSubscript:result];
  }

  return result;
}

- (void)semanticStyleSceneTypeDidChange:(int)change
{
  os_unfair_lock_lock(&self->_semanticStyleSceneLock);
  self->_semanticStyleSceneType = change;

  os_unfair_lock_unlock(&self->_semanticStyleSceneLock);
}

- (void)setSmartStyle:(id)style
{
  if (style && ([style isEqual:*&self->_disableWaitForCoefficientsOnFirstFrame] & 1) == 0)
  {
    [style cast];
    [style intensity];
    [style toneBias];
    [style colorBias];
    v8 = OUTLINED_FUNCTION_27_8(v5, v6, v7);
    if (v8 && (v9 = v8, os_unfair_lock_lock(&self->_styleUpdateLock), *&self->_disableWaitForCoefficientsOnFirstFrame, [v9 cast], objc_msgSend(v9, "intensity"), objc_msgSend(v9, "toneBias"), objc_msgSend(v9, "colorBias"), *&self->_disableWaitForCoefficientsOnFirstFrame = OUTLINED_FUNCTION_27_8(v10, v11, v12), os_unfair_lock_unlock(&self->_styleUpdateLock), *&self->_disableWaitForCoefficientsOnFirstFrame))
    {
      os_unfair_lock_lock(&self->_statsUpdateDeltaTimeThreshold);
      LODWORD(self->_anstMasksMatchingTimeInSecondsThreshold) = self->_timingLock._os_unfair_lock_opaque;

      os_unfair_lock_unlock(&self->_statsUpdateDeltaTimeThreshold);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v11 = 0;
  if (buffer && input)
  {
    if (*&self->_disableWaitForCoefficientsOnFirstFrame)
    {
      if ([(NSArray *)[(BWNode *)self inputs] objectAtIndexedSubscript:1]== input)
      {
        v9 = [(BWSmartStyleLearningNode *)self processMaskSampleBuffer:buffer];
        if (v9)
        {
          v10 = v9;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_12_1();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v10);
        }
      }

      else
      {
        v7 = [(BWSmartStyleLearningNode *)self processVideoSampleBuffer:buffer frameEmitted:&v11];
        if (v7)
        {
          v8 = v7;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_12_1();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8);
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  }

  if ((v11 & 1) == 0 && [(NSArray *)[(BWNode *)self inputs] objectAtIndexedSubscript:0]== input)
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
    os_unfair_lock_lock(&self->_inputStyleContainerSampleBufferQueueLock);
    if ([(NSMutableArray *)self->_inputStyleContainerSampleBufferQueue count]>= (LODWORD(self->_lastLearnedPortType) * (self->_learningRate / HIDWORD(self->_lastLearnedPortType))))
    {
      [(NSMutableArray *)self->_inputStyleContainerSampleBufferQueue removeObjectAtIndex:0];
    }

    os_unfair_lock_unlock(&self->_inputStyleContainerSampleBufferQueueLock);
  }

  os_unfair_lock_lock(&self->_inputMasksSampleBufferQueueLock);
  if ([(NSMutableArray *)self->_inputMasksSampleBufferQueue count]>= 3)
  {
    [(NSMutableArray *)self->_inputMasksSampleBufferQueue removeObjectAtIndex:0];
  }

  os_unfair_lock_unlock(&self->_inputMasksSampleBufferQueueLock);
}

- (int)_findCorrespondingSmartStyleContainerWithMasks:(id)masks outputSmartStyleContainer:(opaqueCMSampleBuffer *)container
{
  result = -12784;
  if (!masks || !container)
  {
    return result;
  }

  *container = 0;
  memset(&v57, 0, sizeof(v57));
  CMTimeMakeFromDictionary(&v57, [masks objectForKeyedSubscript:*off_1E798A420]);
  if ((v57.flags & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v31, v33, time.value, *&time.timescale, LODWORD(time.epoch), v36.value, *&v36.timescale, LODWORD(v36.epoch));
    return -12784;
  }

  v7 = BYTE6(self->_previousPTS.epoch);
  os_unfair_lock_lock(&self->_inputStyleContainerSampleBufferQueueLock);
  if (v7 != 1)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    inputStyleContainerSampleBufferQueue = self->_inputStyleContainerSampleBufferQueue;
    v17 = OUTLINED_FUNCTION_36_10(v8, v9, v10, v11, v12, v13, v14, v15, v31, v33, time.value, *&time.timescale, time.epoch, v36.value, *&v36.timescale, v36.epoch, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    if (v17)
    {
      v18 = v17;
      v19 = *v54;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(inputStyleContainerSampleBufferQueue);
          }

          v21 = *(*(&v53 + 1) + 8 * i);
          memset(&v36, 0, sizeof(v36));
          objc_msgSend__getSampleBufferPresentationTimeStamp_(self);
          time = v57;
          Seconds = CMTimeGetSeconds(&time);
          time = v36;
          if (vabdd_f64(Seconds, CMTimeGetSeconds(&time)) <= *&self->_learningMaxFramesPerSecond)
          {
            *container = v21;
            goto LABEL_17;
          }
        }

        v18 = OUTLINED_FUNCTION_36_10(v23, v24, v25, v26, v27, v28, v29, v30, v32, v34, time.value, *&time.timescale, time.epoch, v36.value, *&v36.timescale, v36.epoch, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    os_unfair_lock_unlock(&self->_inputStyleContainerSampleBufferQueueLock);
    return -12784;
  }

  *container = [(NSMutableArray *)self->_inputStyleContainerSampleBufferQueue lastObject];
LABEL_17:
  os_unfair_lock_unlock(&self->_inputStyleContainerSampleBufferQueueLock);
  return 0;
}

- (id)_cropAndScaleMasks:(id)masks unstyledSampleBuffer:(opaqueCMSampleBuffer *)buffer currentPTS:(id *)s applyGDC:(BOOL)c useIntermediatePool:(BOOL)pool
{
  poolCopy = pool;
  cCopy = c;
  v74 = 0;
  v75 = 0;
  memset(&__src, 0, sizeof(__src));
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = *off_1E798A3C8;
  v13 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v13 || (v14 = v13, v15 = *off_1E798D298, (v16 = [masks objectForKeyedSubscript:*off_1E798D298]) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_33:
    v54 = 0;
    goto LABEL_34;
  }

  v17 = v16;
  v57 = v15;
  sCopy = s;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v64 = [v16 countByEnumeratingWithState:&v69 objects:v68 count:16];
  if (!v64)
  {
    goto LABEL_27;
  }

  v61 = *v70;
  v59 = *off_1E798B540;
  v18 = *MEMORY[0x1E695F050];
  v19 = *(MEMORY[0x1E695F050] + 8);
  v20 = *(MEMORY[0x1E695F050] + 16);
  v21 = *(MEMORY[0x1E695F050] + 24);
  v22 = &OBJC_IVAR___BWSmartStyleLearningNode__processorPixelBufferPoolsByAttachedMediaKeys;
  if (poolCopy)
  {
    v22 = &OBJC_IVAR___BWSmartStyleLearningNode__intermediatePixelBufferPoolsByAttachedMediaKeys;
  }

  v60 = v22;
  while (2)
  {
    for (i = 0; i != v64; ++i)
    {
      if (*v70 != v61)
      {
        objc_enumerationMutation(v17);
      }

      v24 = *(*(&v69 + 1) + 8 * i);
      v25 = [*(&self->super.super.isa + *v60) objectForKeyedSubscript:v24];
      if (!v25)
      {
        goto LABEL_28;
      }

      v26 = v25;
      v27 = [v17 objectForKeyedSubscript:v24];
      if (!v27)
      {
        goto LABEL_28;
      }

      v29 = v27;
      if (OUTLINED_FUNCTION_26_9(v27, v28, &__src))
      {
        goto LABEL_33;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(v29);
      if (!ImageBuffer || (v31 = ImageBuffer, v32 = CMGetAttachment(v29, v12, 0), (v33 = [v26 newPixelBuffer]) == 0))
      {
LABEL_28:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        goto LABEL_33;
      }

      v34 = v33;
      MaskValidBufferRectFromMetadata = ssln_getMaskValidBufferRectFromMetadata(v14, v29);
      if (cCopy)
      {
        if (!-[NSMutableDictionary objectForKeyedSubscript:](self->_intermediatePixelBufferPoolsByAttachedMediaKeys, "objectForKeyedSubscript:", [v14 objectForKeyedSubscript:{v59, MaskValidBufferRectFromMetadata}]))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          goto LABEL_32;
        }

        [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
        v36 = OUTLINED_FUNCTION_3_0();
        v38 = [v37 undistortPixelBuffer:v36 inputValidBufferRect:? inputMetadata:? cameraInfo:? toPixelBuffer:?];
      }

      else
      {
        [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
        v39 = OUTLINED_FUNCTION_3_0();
        v38 = [v40 cropAndScalePixelBuffer:v39 inputValidBufferRect:? toPixelBuffer:?];
      }

      v41 = v38;
      if (v38)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_7_6();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v41);
LABEL_32:
        CFRelease(v34);
        goto LABEL_33;
      }

      memcpy(&__dst, &__src, sizeof(__dst));
      v42 = BWSampleBufferCreateFromPixelBufferWithTimingInfo(v34, &__dst, &v74, &v75);
      if (v42)
      {
        v55 = v42;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_7_6();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v55);
        goto LABEL_32;
      }

      CVPixelBufferGetWidth(v31);
      CVPixelBufferGetHeight(v31);
      Width = CVPixelBufferGetWidth(v34);
      v44 = Width | (CVPixelBufferGetHeight(v34) << 32);
      v45 = [v32 mutableCopy];
      v46.n128_f64[0] = OUTLINED_FUNCTION_3_0();
      FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v47, v48, v44, v46, v49, v50, v51, v18, v19, v20, v21);
      FigCaptureMetadataUtilitiesPreventFurtherCropping(v45, v52);
      CMSetAttachment(v75, v12, v45, 1u);
      [dictionary setObject:v75 forKeyedSubscript:v24];
      CFRelease(v34);
      if (v74)
      {
        CFRelease(v74);
      }

      if (v75)
      {
        CFRelease(v75);
      }

      v74 = 0;
      v75 = 0;
    }

    v64 = [v17 countByEnumeratingWithState:&v69 objects:v68 count:16];
    if (v64)
    {
      continue;
    }

    break;
  }

LABEL_27:
  v65[0] = *off_1E798A420;
  v53 = *MEMORY[0x1E695E480];
  *&__dst.duration.value = *&sCopy->var0;
  __dst.duration.epoch = sCopy->var3;
  v65[1] = v57;
  v66[0] = CMTimeCopyAsDictionary(&__dst.duration, v53);
  v66[1] = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
LABEL_34:
  if (v74)
  {
    CFRelease(v74);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  return v54;
}

- (int)_createCoefficientsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer to:(opaqueCMSampleBuffer *)to
{
  v37 = 0;
  v38 = 0;
  v12 = OUTLINED_FUNCTION_31_8();
  value = *MEMORY[0x1E6960CC0];
  LODWORD(v35) = *(MEMORY[0x1E6960CC0] + 8);
  v13 = MEMORY[0x1E695FF58];
  if (!v6)
  {
    goto LABEL_25;
  }

  p_value = &v7->value;
  if (!v7)
  {
    goto LABEL_25;
  }

  v15 = SampleBufferPresentationTimeStamp;
  v7->value = 0;
  if (!SampleBufferPresentationTimeStamp)
  {
    LODWORD(v35) = 0;
    value = 0;
LABEL_15:
    v28 = -12780;
    goto LABEL_16;
  }

  v16 = v6;
  SampleBufferPresentationTimeStamp = objc_msgSend__getSampleBufferPresentationTimeStamp_(SampleBufferPresentationTimeStamp, v12);
  value = sampleTiming.duration.value;
  LODWORD(v35) = sampleTiming.duration.timescale;
  if ((sampleTiming.duration.flags & 1) == 0)
  {
LABEL_26:
    v15 = 0;
    goto LABEL_15;
  }

  if (*v13 == 1)
  {
    OUTLINED_FUNCTION_20_10(SampleBufferPresentationTimeStamp, v5, v6, v7, v8, v9, v10, v11, v30, v31, v32, sampleTiming.duration.value, sampleTiming.duration.timescale, sampleTiming.duration.flags, sampleTiming.duration.epoch, sampleTiming.presentationTimeStamp.value, *&sampleTiming.presentationTimeStamp.timescale, sampleTiming.presentationTimeStamp.epoch, sampleTiming.decodeTimeStamp.value, *&sampleTiming.decodeTimeStamp.timescale, sampleTiming.decodeTimeStamp.epoch, value, v35);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v17 = [v15[2] mediaPropertiesForAttachedMediaKey:0x1F21AB070];
  if (!v17)
  {
LABEL_25:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    SampleBufferPresentationTimeStamp = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_26;
  }

  v15 = [objc_msgSend(v17 "livePixelBufferPool")];
  if (v15)
  {
    v19 = OUTLINED_FUNCTION_26_9(v16, v18, &v36);
    if (v19)
    {
      v28 = v19;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_45();
      LODWORD(v30) = v28;
      SampleBufferPresentationTimeStamp = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v30, v31, v32, sampleTiming.duration.value, sampleTiming.duration.timescale, sampleTiming.duration.epoch, sampleTiming.presentationTimeStamp.value, sampleTiming.presentationTimeStamp.timescale);
    }

    else
    {
      OUTLINED_FUNCTION_23_9(0, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, sampleTiming.duration.value, *&sampleTiming.duration.timescale, sampleTiming.duration.epoch, sampleTiming.presentationTimeStamp.value, *&sampleTiming.presentationTimeStamp.timescale, sampleTiming.presentationTimeStamp.epoch, sampleTiming.decodeTimeStamp.value, *&sampleTiming.decodeTimeStamp.timescale, sampleTiming.decodeTimeStamp.epoch, value, v35);
      SampleBufferPresentationTimeStamp = BWSampleBufferCreateFromPixelBufferWithTimingInfo(v15, &sampleTiming, &v37, &v38);
      if (SampleBufferPresentationTimeStamp)
      {
        v28 = SampleBufferPresentationTimeStamp;
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF20] dictionary];
        CMSetAttachment(v38, *off_1E798A3C8, dictionary, 1u);
        SampleBufferPresentationTimeStamp = v38;
        if (v38)
        {
          SampleBufferPresentationTimeStamp = CFRetain(v38);
        }

        v28 = 0;
        *p_value = SampleBufferPresentationTimeStamp;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    SampleBufferPresentationTimeStamp = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v30, v31, v32, sampleTiming.duration.value, sampleTiming.duration.timescale, sampleTiming.duration.epoch, sampleTiming.presentationTimeStamp.value, sampleTiming.presentationTimeStamp.timescale);
    v28 = -12786;
  }

LABEL_16:
  if (*v13 == 1)
  {
    OUTLINED_FUNCTION_20_10(SampleBufferPresentationTimeStamp, v5, v6, v7, v8, v9, v10, v11, v30, v31, v32, sampleTiming.duration.value, sampleTiming.duration.timescale, sampleTiming.duration.flags, sampleTiming.duration.epoch, sampleTiming.presentationTimeStamp.value, *&sampleTiming.presentationTimeStamp.timescale, sampleTiming.presentationTimeStamp.epoch, sampleTiming.decodeTimeStamp.value, *&sampleTiming.decodeTimeStamp.timescale, sampleTiming.decodeTimeStamp.epoch, value, v35);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return v28;
}

- (int)_createIdentityCoefficientsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer to:(opaqueCMSampleBuffer *)to
{
  v20 = 0;
  v21 = 0;
  memset(&__src, 0, sizeof(__src));
  if (!buffer || !to)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_25;
  }

  *to = 0;
  if (!self)
  {
    goto LABEL_25;
  }

  objc_msgSend__getSampleBufferPresentationTimeStamp_(self, a2);
  if ((__dst.duration.flags & 1) == 0)
  {
    goto LABEL_25;
  }

  v8 = OUTLINED_FUNCTION_26_9(buffer, v7, &__src);
  if (v8)
  {
    v16 = v8;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_45();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16);
LABEL_27:
    v14 = 0;
    goto LABEL_14;
  }

  identityCoefficientsPixelBuffer = self->_identityCoefficientsPixelBuffer;
  if (!identityCoefficientsPixelBuffer)
  {
    v10 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:0x1F21AB070];
    if (v10)
    {
      self->_identityCoefficientsPixelBuffer = [objc_msgSend(v10 "livePixelBufferPool")];
      v11 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
      identityCoefficientsPixelBuffer = self->_identityCoefficientsPixelBuffer;
      if (!identityCoefficientsPixelBuffer)
      {
        v16 = v11;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_4_8();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        goto LABEL_27;
      }

      goto LABEL_9;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_4_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_25:
    v14 = 0;
    v16 = -12780;
    goto LABEL_14;
  }

LABEL_9:
  memcpy(&__dst, &__src, sizeof(__dst));
  v12 = BWSampleBufferCreateFromPixelBufferWithTimingInfo(identityCoefficientsPixelBuffer, &__dst, &v20, &v21);
  if (v12)
  {
    v16 = v12;
    goto LABEL_27;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = v13;
  if (v13)
  {
    [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A8E0];
    CMSetAttachment(v21, *off_1E798A3C8, v14, 1u);
    v15 = v21;
    if (v21)
    {
      v15 = CFRetain(v21);
    }

    v16 = 0;
    *to = v15;
  }

  else
  {
    v16 = -12786;
  }

LABEL_14:
  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v16;
}

- (int)_createSmartStyleContainerFromSampleBuffer:(opaqueCMSampleBuffer *)buffer unstyledThumbnailSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer linearThumbnailSampleBuffer:(opaqueCMSampleBuffer *)thumbnailSampleBuffer to:(opaqueCMSampleBuffer *)to
{
  target = 0;
  v7 = -12780;
  if (buffer && sampleBuffer && thumbnailSampleBuffer && to)
  {
    *to = 0;
    v12 = *off_1E798A3C8;
    v13 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    if (!v13)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArray, v27, sampleSizeArray, v29, v30, target, v32.duration.value, v32.duration.timescale);
      return 0;
    }

    v15 = v13;
    memset(&v32, 0, sizeof(v32));
    v16 = OUTLINED_FUNCTION_26_9(buffer, v14, &v32);
    if (v16)
    {
      v7 = v16;
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v6, sampleSizeArray, v29, v30, target, v32.duration.value, v32.duration.timescale);
      return v7;
    }

    OUTLINED_FUNCTION_17_14();
    v22 = CMSampleBufferCreate(v17, v18, v19, v20, v21, 0, 0, 1, &v32, 0, 0, &target);
    v23 = target;
    if (v22)
    {
      v7 = -12786;
      if (!target)
      {
        return v7;
      }

      goto LABEL_12;
    }

    CMSetAttachment(target, v12, v15, 1u);
    BWSampleBufferSetAttachedMedia(target, 0x1F21AB0D0, sampleBuffer);
    BWSampleBufferSetAttachedMedia(target, 0x1F21AB110, thumbnailSampleBuffer);
    v23 = target;
    if (target)
    {
      v24 = CFRetain(target);
      v23 = target;
    }

    else
    {
      v24 = 0;
    }

    v7 = 0;
    *to = v24;
    if (v23)
    {
LABEL_12:
      CFRelease(v23);
    }
  }

  return v7;
}

- (opaqueCMSampleBuffer)_unpackSbufFromPrimaryCameraStream:(opaqueCMSampleBuffer *)stream
{
  streamCopy = stream;
  AttachedMedia = BWSampleBufferGetAttachedMedia(stream, @"SynchronizedSlaveFrame");
  if (AttachedMedia)
  {
    v5 = AttachedMedia;
    v6 = *off_1E798A3C8;
    v7 = CMGetAttachment(streamCopy, *off_1E798A3C8, 0);
    CMGetAttachment(v5, v6, 0);
    if (([objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}] & 1) == 0)
    {
      if ([OUTLINED_FUNCTION_37_8() BOOLValue])
      {
        return v5;
      }
    }
  }

  return streamCopy;
}

+ (id)newISPSMGProcessingSession:(id)session
{
  v6 = 0;
  if (!session)
  {
    return 0;
  }

  v4 = [session supportsISPProcessingSessionType:8 error:&v6];
  result = 0;
  if (!v6)
  {
    if (v4)
    {
      v7 = 0;
      result = [session copyISPProcessingSessionWithType:8 error:&v7];
      if (v7 || !result)
      {

        return 0;
      }
    }
  }

  return result;
}

- (int)_getContainerAssetsFromSampleBuffer:(opaqueCMSampleBuffer *)buffer outputUnstyledThumbnailSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer outputLinearThumbnailSampleBuffer:(opaqueCMSampleBuffer *)thumbnailSampleBuffer
{
  v9 = OUTLINED_FUNCTION_31_8();
  cf = 0;
  v110 = 0;
  if (!v6 || (v10 = v7) == 0 || (v11 = v8) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_34:
    v52 = -12780;
    goto LABEL_25;
  }

  v12 = v5;
  *v7 = 0;
  *v8 = 0;
  if (!v5)
  {
    goto LABEL_34;
  }

  v13 = v6;
  objc_msgSend__getSampleBufferPresentationTimeStamp_(v5, v9);
  if ((v71 & 0x100000000) == 0)
  {
    goto LABEL_34;
  }

  v15 = OUTLINED_FUNCTION_26_9(v13, v14, &v111);
  if (v15)
  {
    v52 = v15;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_14();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52, v54, v63, v67, v71, v77, v85, v89);
    goto LABEL_25;
  }

  if (!CMSampleBufferGetImageBuffer(v13))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_34;
  }

  v16 = [objc_msgSend(v12[42] objectForKeyedSubscript:{0x1F21AB0D0), "newPixelBuffer"}];
  if (!v16)
  {
    goto LABEL_35;
  }

  v24 = v16;
  v25 = OUTLINED_FUNCTION_23_9(v16, v17, v18, v19, v20, v21, v22, v23, v55, v59, v63, v67, v71, v77, v85, v89, v93, v97, v101, v105, 0, 0);
  v33 = OUTLINED_FUNCTION_35_9(v25, v26, v27, v28, v29, v30, v31, v32, v56, v60, v64, v68, v72, v75, v78, v81, v83, v86, v90, v94, v98, v102, v106);
  if (v33)
  {
LABEL_30:
    v52 = v33;
    CFRelease(v24);
    goto LABEL_25;
  }

  v34 = cf;
  if (cf)
  {
    v34 = CFRetain(cf);
  }

  *v10 = v34;
  CFRelease(v24);
  if (v110)
  {
    CFRelease(v110);
    v110 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  v35 = [objc_msgSend(v12[42] objectForKeyedSubscript:{0x1F21AB110), "newPixelBuffer"}];
  if (!v35)
  {
LABEL_35:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    v52 = -12786;
    goto LABEL_25;
  }

  v24 = v35;
  v43 = OUTLINED_FUNCTION_23_9(v35, v36, v37, v38, v39, v40, v41, v42, v57, v61, v65, v69, v73, v79, v87, v91, v95, v99, v103, v107, cf, v110);
  v33 = OUTLINED_FUNCTION_35_9(v43, v44, v45, v46, v47, v48, v49, v50, v58, v62, v66, v70, v74, v76, v80, v82, v84, v88, v92, v96, v100, v104, v108);
  if (v33)
  {
    goto LABEL_30;
  }

  CMSetAttachment(cf, *off_1E798A3C8, [MEMORY[0x1E695DF20] dictionary], 1u);
  v51 = cf;
  if (cf)
  {
    v51 = CFRetain(cf);
  }

  *v11 = v51;
  CFRelease(v24);
  if (v110)
  {
    CFRelease(v110);
    v110 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    v52 = 0;
    cf = 0;
  }

  else
  {
    v52 = 0;
  }

LABEL_25:
  if (v110)
  {
    CFRelease(v110);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v52;
}

- (void)_asynchronouslyRenderSampleBuffer:(opaqueCMSampleBuffer *)buffer outputLinearThumbnailSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer outputUnstyledThumbnailSampleBuffer:(opaqueCMSampleBuffer *)thumbnailSampleBuffer synchronizingEvent:(id)event
{
  eventCopy = event;
  v73 = *MEMORY[0x1E6960CC0];
  v74 = *(MEMORY[0x1E6960CC0] + 16);
  if (!buffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v47, "<<<< BWSmartStyleLearningNode >>>> Fig", "inputUnstyledSampleBuffer", "bail", 0, "BWSmartStyleLearningNode.m", 3190);
    goto LABEL_47;
  }

  if (!sampleBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v48, "<<<< BWSmartStyleLearningNode >>>> Fig", "outputLinearThumbnailSampleBuffer", "bail", 0, "BWSmartStyleLearningNode.m", 3191);
    goto LABEL_47;
  }

  if (!thumbnailSampleBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v49, "<<<< BWSmartStyleLearningNode >>>> Fig", "outputUnstyledThumbnailSampleBuffer", "bail", 0, "BWSmartStyleLearningNode.m", 3192);
    goto LABEL_47;
  }

  selfCopy = self;
  if (self)
  {
    self = objc_msgSend__getSampleBufferPresentationTimeStamp_(self, a2, buffer);
  }

  else
  {
    memset(__dst, 0, 24);
  }

  v73 = __dst[0];
  v74 = *&__dst[1];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_25_8(self, a2, buffer, sampleBuffer, thumbnailSampleBuffer, event, v6, v7, v63, v64, v65, v66, eventCopy, v68, __dst[0], *&__dst[1]);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, @"LTMThumbnail");
  if (!AttachedMedia)
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, @"PreLTMThumbnail");
  }

  v14 = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AB1D0);
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v50, "<<<< BWSmartStyleLearningNode >>>> Fig", "inputPixelBuffer", "bail", 0, "BWSmartStyleLearningNode.m", 3207, v63);
    goto LABEL_47;
  }

  v16 = ImageBuffer;
  v17 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v17)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v51, "<<<< BWSmartStyleLearningNode >>>> Fig", "inputMetadataDict", "bail", 0, "BWSmartStyleLearningNode.m", 3210, v63);
    goto LABEL_47;
  }

  v18 = v17;
  v19 = CMSampleBufferGetImageBuffer(thumbnailSampleBuffer);
  if (!v19)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52, "<<<< BWSmartStyleLearningNode >>>> Fig", "unstyledThumbnailPixelBuffer", "bail", 0, "BWSmartStyleLearningNode.m", 3213, v63);
    goto LABEL_47;
  }

  v20 = v19;
  v72 = 0;
  if (AttachedMedia)
  {
    v21 = [-[CMISmartStyleProcessor utilities](selfCopy->_smartStyleProcessor "utilities")];
    if (v21)
    {
      v54 = v21;
      emitter = fig_log_get_emitter();
      v64 = v8;
      LODWORD(v63) = v54;
      v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "<<<< BWSmartStyleLearningNode >>>> Fig", "err == 0 ", "bail", 0, "BWSmartStyleLearningNode.m", 3220, v63);
      goto LABEL_47;
    }
  }

  v22 = *off_1E798A0F8;
  v71[0] = *off_1E798A0D0;
  v71[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
  if (selfCopy->_generateCoefficients)
  {
    HIDWORD(v68) = [v23 containsObject:{objc_msgSend(v18, "objectForKeyedSubscript:", *off_1E798B540)}];
  }

  else
  {
    HIDWORD(v68) = 0;
  }

  memset(__src, 0, sizeof(__src));
  v66 = v8;
  if (v72 == 2)
  {
    v24 = CMSampleBufferGetImageBuffer(AttachedMedia);
    if (!v24)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v57, "<<<< BWSmartStyleLearningNode >>>> Fig", "inputLTMThumbnailPixelBuffer", "bail", 0, "BWSmartStyleLearningNode.m", 3236, v63);
      goto LABEL_47;
    }

    v25 = [-[CMISmartStyleProcessor utilities](selfCopy->_smartStyleProcessor "utilities")];
    if (v25)
    {
      goto LABEL_47;
    }

    v25 = [-[CMISmartStyleProcessor utilities](selfCopy->_smartStyleProcessor "utilities")];
    if (v25)
    {
      goto LABEL_47;
    }

    v33 = 0;
    v14 = 0;
  }

  else
  {
    if (v14)
    {
      v34 = CMSampleBufferGetImageBuffer(v14);
      if (!v34)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v60, "<<<< BWSmartStyleLearningNode >>>> Fig", "inputUnstyledPixelBufferForThumbnail", "bail", 0, "BWSmartStyleLearningNode.m", 3252, v63);
        goto LABEL_47;
      }

      v33 = v34;
      if (HIDWORD(v68))
      {
        v35 = [MEMORY[0x1E69916C0] getGDCParams:__src cameraInfo:-[NSMutableDictionary objectForKeyedSubscript:](selfCopy->_intermediatePixelBufferPoolsByAttachedMediaKeys metadata:{"objectForKeyedSubscript:", objc_msgSend(v18, "objectForKeyedSubscript:", *off_1E798B540)), v18}];
        if (v35)
        {
          v61 = v35;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_7_6();
          LODWORD(v63) = v61;
          v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v62, "<<<< BWSmartStyleLearningNode >>>> Fig", "err == 0 ", "bail", 0, "BWSmartStyleLearningNode.m", 3259, v63);
          goto LABEL_47;
        }
      }

      v25 = [-[CMISmartStyleProcessor utilities](selfCopy->_smartStyleProcessor "utilities")];
      if (v25)
      {
        goto LABEL_47;
      }

      v14 = HIDWORD(v68);
    }

    else
    {
      v33 = v16;
    }

    utilities = [(CMISmartStyleProcessor *)selfCopy->_smartStyleProcessor utilities];
    memcpy(__dst, __src, sizeof(__dst));
    v37 = [utilities downScalePixelBuffer:v33 toPixelBuffer:v20 propagateAttachments:1 gdcParams:__dst applyGDC:v14];
    if (v37)
    {
      v58 = v37;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7_6();
      LODWORD(v63) = v58;
      v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v59, "<<<< BWSmartStyleLearningNode >>>> Fig", "err == 0 ", "bail", 0, "BWSmartStyleLearningNode.m", 3276, v63);
      goto LABEL_47;
    }
  }

  v38 = CMSampleBufferGetImageBuffer(sampleBuffer);
  if (!v38)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v53, "<<<< BWSmartStyleLearningNode >>>> Fig", "linearThumbnailPixelBuffer", "bail", 0, "BWSmartStyleLearningNode.m", 3281, v63);
    goto LABEL_47;
  }

  v39 = v38;
  v25 = [-[CMISmartStyleProcessor utilities](selfCopy->_smartStyleProcessor "utilities")];
  if (v25)
  {
    goto LABEL_47;
  }

  if (AttachedMedia)
  {
    v40 = CMSampleBufferGetImageBuffer(AttachedMedia);
    if (!v40)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      v25 = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, "<<<< BWSmartStyleLearningNode >>>> Fig", "inputLTMThumbnailPixelBuffer", "bail", 0, "BWSmartStyleLearningNode.m", 3290, v63);
      goto LABEL_47;
    }

    v41 = v40;
    v42 = v72;
    utilities2 = [(CMISmartStyleProcessor *)selfCopy->_smartStyleProcessor utilities];
    v44 = -[NSMutableDictionary objectForKeyedSubscript:](selfCopy->_intermediatePixelBufferPoolsByAttachedMediaKeys, "objectForKeyedSubscript:", [v18 objectForKeyedSubscript:*off_1E798B540]);
    if (v42)
    {
      v25 = [utilities2 createLinearThumbnailFromMetadata:v18 ltmThumbnailPixelBuffer:v41 cameraInfo:v44 applyGDC:HIDWORD(v68) toPixelBuffer:v39];
      if (v25)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v63 = v39;
      v25 = [utilities2 createLinearThumbnailFromMetadata:v18 preLTMThumbnailPixelBuffer:v41 postLTMThumbnailPixelBuffer:v20 cameraInfo:v44 applyGDC:HIDWORD(v68) cropToPreLTMBounds:0 toPixelBuffer:?];
      if (v25)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    v45 = [v18 objectForKeyedSubscript:*off_1E798B458];
    utilities3 = [(CMISmartStyleProcessor *)selfCopy->_smartStyleProcessor utilities];
    if (!v45)
    {
      memcpy(__dst, __src, sizeof(__dst));
      v25 = [utilities3 downScalePixelBuffer:v33 toPixelBuffer:v39 propagateAttachments:1 gdcParams:__dst applyGDC:v14];
      goto LABEL_44;
    }

    v25 = [utilities3 createLinearThumbnailFromMetadata:v18 postLTMThumbnailPixelBuffer:v20 cameraInfo:-[NSMutableDictionary objectForKeyedSubscript:](selfCopy->_intermediatePixelBufferPoolsByAttachedMediaKeys applyGDC:"objectForKeyedSubscript:" cropToPreLTMBounds:objc_msgSend(v18 toPixelBuffer:{"objectForKeyedSubscript:", *off_1E798B540)), HIDWORD(v68), 0, v39}];
    if (v25)
    {
      goto LABEL_47;
    }
  }

  v25 = [-[CMISmartStyleProcessor utilities](selfCopy->_smartStyleProcessor "utilities")];
LABEL_44:
  if (eventCopy && !v25)
  {
    v25 = [(BWSmartStyleLearningNode *)selfCopy _asynchronouslySignalEvent:eventCopy];
  }

LABEL_47:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_25_8(v25, v26, v27, v28, v29, v30, v31, v32, v63, v64, v65, v66, eventCopy, v68, __dst[0], *&__dst[1]);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }
}

- (void)_asynchronouslyLearnWithContainer:(opaqueCMSampleBuffer *)container inputUnstyledSampleBuffer:(opaqueCMSampleBuffer *)ImageBuffer withUnrefinedMasks:(id)masks withStats:(id)stats withStatsExtended:(id)extended styleToLearn:(id)learn shouldBypass:(BOOL)bypass
{
  masksCopy = masks;
  HIDWORD(v361) = bypass;
  v385 = 0;
  v386[0] = 0;
  v384 = 0;
  v16 = MEMORY[0x1E6960CC0];
  value = *MEMORY[0x1E6960CC0];
  timescale = *(MEMORY[0x1E6960CC0] + 8);
  v17 = *(MEMORY[0x1E695F050] + 16);
  v380 = *MEMORY[0x1E695F050];
  v381 = v17;
  masksCopy2 = masks;
  v19 = MEMORY[0x1E695FF58];
  if (!container)
  {
    HIDWORD(v352) = *(v16 + 12);
    epoch = *(v16 + 16);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy);
    OUTLINED_FUNCTION_9_27();
LABEL_201:
    v16 = 0;
    ImageBuffer = 0;
LABEL_235:
    LOBYTE(v30) = 0;
    goto LABEL_173;
  }

  if (!self)
  {
    learn = 0;
    extended = 0;
    epoch = 0;
    HIDWORD(v352) = 0;
    stats = 0;
    cf = 0;
    OUTLINED_FUNCTION_19_12();
    LOBYTE(v30) = 0;
    timescale = 0;
    value = 0;
    goto LABEL_173;
  }

  objc_msgSend__getSampleBufferPresentationTimeStamp_(self);
  epoch = time.duration.epoch;
  value = time.duration.value;
  timescale = time.duration.timescale;
  HIDWORD(v352) = time.duration.flags;
  if ((time.duration.flags & 1) == 0)
  {
    goto LABEL_198;
  }

  if (*v19 == 1)
  {
    OUTLINED_FUNCTION_10_25();
    time.duration.epoch = epoch;
    CMTimeGetSeconds(&time.duration);
    OUTLINED_FUNCTION_29_5(v21, v22, v23, v24, v25, v26, v27, v28, v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy, sbuf, v328, learnCopy, v334, v337, v340, v343, cf, v349, v352, v355, v358, v361, bypass);
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v337 = CMGetAttachment(container, *off_1E798A3C8, 0);
  if (!v337)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy);
LABEL_198:
    learn = 0;
LABEL_200:
    OUTLINED_FUNCTION_11_24();
    goto LABEL_201;
  }

  if (!learn)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy);
    goto LABEL_200;
  }

  containerCopy = container;
  sbuf = BWSampleBufferGetAttachedMedia(ImageBuffer, 0x1F21AB1D0);
  AttachedMedia = BWSampleBufferGetAttachedMedia(ImageBuffer, @"LTMThumbnail");
  container = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  v328 = masksCopy;
  statsCopy = stats;
  v319 = ImageBuffer;
  if (AttachedMedia)
  {
    v16 = AttachedMedia;
  }

  else
  {
    v16 = BWSampleBufferGetAttachedMedia(ImageBuffer, @"PreLTMThumbnail");
    if (!v16)
    {
      v380 = 0uLL;
      __asm { FMOV            V0.2D, #1.0 }

      v381 = _Q0;
      ImageBuffer = CMSampleBufferGetImageBuffer(ImageBuffer);
      v379 = 0;
      v31 = 1;
      stats = v337;
      goto LABEL_14;
    }
  }

  v30 = CMSampleBufferGetImageBuffer(v16);
  if (!v30)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299, v303, v306, v309, extendedCopy, stats, ImageBuffer, containerCopy);
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_19_12();
    goto LABEL_173;
  }

  stats = v337;
  [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
  ImageBuffer = CMSampleBufferGetImageBuffer(ImageBuffer);
  v379 = 0;
  v31 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
  if (v31)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v299) = v31;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
    goto LABEL_206;
  }

LABEL_14:
  v334 = 352;
  v362 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_intermediateVideoFormatsByAttachedMediaKeys objectForKeyedSubscript:{0x1F21AB0D0), "newPixelBuffer"}];
  if (!v362)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
LABEL_206:
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_19_12();
    LOBYTE(v30) = 0;
    goto LABEL_173;
  }

  LODWORD(cf) = v31;
  [-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v33 = v32;
  v35 = v34;
  v358 = 144;
  v36 = [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
  v46 = v35 == v45 && v33 == v44;
  if (v46)
  {
    v355 = 0;
  }

  else
  {
    v47 = OUTLINED_FUNCTION_33_11(v36, v37, v38, v39, v40, v41, v42, v43, v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy, sbuf, v328, learnCopy, 352);
    v355 = [objc_msgSend(v47 objectForKeyedSubscript:{*(v48 + 1040)), "newPixelBuffer"}];
    if (!v355)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_9();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299, v303, v306, v309, v313, statsCopy, v319, containerCopy);
      OUTLINED_FUNCTION_9_27();
      container = 0;
      ImageBuffer = 0;
      LOBYTE(v30) = 0;
      masksCopy = v328;
      v16 = v362;
      goto LABEL_173;
    }
  }

  extendedCopy = extended;
  learnCopy = learn;
  v49 = *off_1E798A0F8;
  v378[0] = *off_1E798A0D0;
  v378[1] = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v378 count:2];
  learn = off_1E798B540;
  if (self->_generateCoefficients)
  {
    LODWORD(v343) = [v50 containsObject:{objc_msgSend(stats, "objectForKeyedSubscript:", *off_1E798B540)}];
  }

  else
  {
    LODWORD(v343) = 0;
  }

  extended = ImageBuffer;
  v376 = 0u;
  v377 = 0u;
  v374 = 0u;
  v375 = 0u;
  v372 = 0u;
  v373 = 0u;
  *v371 = 0u;
  v340 = epoch;
  if (v379 == 2)
  {
    OUTLINED_FUNCTION_18_14();
    if (_ZF)
    {
      v61 = v58;
    }

    else
    {
      v61 = v59;
    }

    container = CMSampleBufferGetImageBuffer(v16);
    if (!container)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_9();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy);
      OUTLINED_FUNCTION_9_27();
LABEL_244:
      LOBYTE(v30) = 0;
      goto LABEL_245;
    }

    extended = 144;
    learn = [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
    if ([learn createUnstyledThumbnailFromMetadata:stats ltmThumbnailPixelBuffer:container cameraInfo:-[NSMutableDictionary objectForKeyedSubscript:](self->_intermediatePixelBufferPoolsByAttachedMediaKeys applyGDC:"objectForKeyedSubscript:" toPixelBuffer:{objc_msgSend(stats, "objectForKeyedSubscript:", *off_1E798B540)), v343, v61}])
    {
      OUTLINED_FUNCTION_9_27();
      container = 0;
      LOBYTE(v30) = 0;
      masksCopy = v328;
LABEL_172:
      OUTLINED_FUNCTION_22_10();
      goto LABEL_173;
    }

    extended = ImageBuffer;
    v62 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
    learn = 0;
    v30 = 0;
    stats = v337;
    ImageBuffer = v319;
    if (v62)
    {
      extended = 0;
      stats = 0;
      cf = 0;
      container = 0;
LABEL_245:
      masksCopy = v328;
      goto LABEL_172;
    }
  }

  else
  {
    v62 = sbuf;
    if (sbuf)
    {
      v63 = CMSampleBufferGetImageBuffer(sbuf);
      learn = v63;
      ImageBuffer = v319;
      if (!v63)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_9();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy);
        OUTLINED_FUNCTION_11_24();
        LOBYTE(v30) = 1;
        goto LABEL_245;
      }

      if (v343)
      {
        v63 = [MEMORY[0x1E69916C0] getGDCParams:v371 cameraInfo:-[NSMutableDictionary objectForKeyedSubscript:](self->_intermediatePixelBufferPoolsByAttachedMediaKeys metadata:{"objectForKeyedSubscript:", objc_msgSend(stats, "objectForKeyedSubscript:", *off_1E798B540)), stats}];
        if (v63)
        {
          v298 = v63;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_47();
          LODWORD(v299) = v298;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
          goto LABEL_243;
        }
      }

      v62 = [OUTLINED_FUNCTION_28_7(v63 v64];
      v30 = v343;
      if (v62)
      {
        goto LABEL_243;
      }
    }

    else
    {
      v30 = 0;
      learn = ImageBuffer;
      ImageBuffer = v319;
    }
  }

  if (v46)
  {
    masksCopy = v328;
    if (v379 != 2)
    {
      CVPixelBufferGetWidth(learn);
      v71 = OUTLINED_FUNCTION_21_13();
      Height = CVPixelBufferGetHeight(v71);
      OUTLINED_FUNCTION_13_20(Height, v73, v74, v75, v76, v77, v78);
      OUTLINED_FUNCTION_2_3();
      v87 = OUTLINED_FUNCTION_28_7(v79, v80, v81, v82, v83, v84, v85, v86, v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy, sbuf, v328, learnCopy, v334, v337, v340, v343, cf, v349, v352, v355, v358);
      OUTLINED_FUNCTION_16_17(v87, v88, v89, v90, v91, v92, v93, v94, v300, v304, v307, v310, v314, v317, v320, v323, sbufb, v329, v332, v335, v338, v341, v344, cfb, v350, v353, v356, v359, v361, v362, __src.duration.value, *&__src.duration.timescale, __src.duration.epoch, __src.presentationTimeStamp.value, *&__src.presentationTimeStamp.timescale, __src.presentationTimeStamp.epoch, __src.decodeTimeStamp.value, *&__src.decodeTimeStamp.timescale, __src.decodeTimeStamp.epoch, v364, time.duration.value, *&time.duration.timescale, time.duration.epoch, time.presentationTimeStamp.value, *&time.presentationTimeStamp.timescale, time.presentationTimeStamp.epoch, time.decodeTimeStamp.value, *&time.decodeTimeStamp.timescale, time.decodeTimeStamp.epoch, v366, v367, v368, v369, v370, v371[0]);
      v62 = OUTLINED_FUNCTION_24_11(v87, v95, learn, v362, &time);
      if (v62)
      {
        goto LABEL_216;
      }
    }

    goto LABEL_46;
  }

  v96 = v358;
  if (v379 != 2)
  {
    CVPixelBufferGetWidth(learn);
    v97 = OUTLINED_FUNCTION_21_13();
    v98 = CVPixelBufferGetHeight(v97);
    OUTLINED_FUNCTION_13_20(v98, v99, v100, v101, v102, v103, v104);
    OUTLINED_FUNCTION_2_3();
    utilities = [*(&self->super.super.isa + v358) utilities];
    OUTLINED_FUNCTION_16_17(utilities, v106, v107, v108, v109, v110, v111, v112, v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy, sbuf, v328, learnCopy, v334, v337, v340, v343, cf, v349, v352, v355, v358, v361, v362, __src.duration.value, *&__src.duration.timescale, __src.duration.epoch, __src.presentationTimeStamp.value, *&__src.presentationTimeStamp.timescale, __src.presentationTimeStamp.epoch, __src.decodeTimeStamp.value, *&__src.decodeTimeStamp.timescale, __src.decodeTimeStamp.epoch, v364, time.duration.value, *&time.duration.timescale, time.duration.epoch, time.presentationTimeStamp.value, *&time.presentationTimeStamp.timescale, time.presentationTimeStamp.epoch, time.decodeTimeStamp.value, *&time.decodeTimeStamp.timescale, time.decodeTimeStamp.epoch, v366, v367, v368, v369, v370, v371[0]);
    v114 = OUTLINED_FUNCTION_24_11(utilities, v113, learn, v355, &time);
    if (v114)
    {
      v293 = v114;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_47();
      LODWORD(v299) = v293;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
LABEL_243:
      OUTLINED_FUNCTION_9_27();
      container = 0;
      goto LABEL_244;
    }
  }

  utilities2 = [*(&self->super.super.isa + v96) utilities];
  OUTLINED_FUNCTION_16_17(utilities2, v116, v117, v118, v119, v120, v121, v122, v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy, sbuf, v328, learnCopy, v334, v337, v340, v343, cf, v349, v352, v355, v358, v361, v362, __src.duration.value, *&__src.duration.timescale, __src.duration.epoch, __src.presentationTimeStamp.value, *&__src.presentationTimeStamp.timescale, __src.presentationTimeStamp.epoch, __src.decodeTimeStamp.value, *&__src.decodeTimeStamp.timescale, __src.decodeTimeStamp.epoch, v364, time.duration.value, *&time.duration.timescale, time.duration.epoch, time.presentationTimeStamp.value, *&time.presentationTimeStamp.timescale, time.presentationTimeStamp.epoch, time.decodeTimeStamp.value, *&time.decodeTimeStamp.timescale, time.decodeTimeStamp.epoch, v366, v367, v368, v369, v370, v371[0]);
  v62 = [utilities2 downScalePixelBuffer:v355 toPixelBuffer:v362 propagateAttachments:1 gdcParams:&time applyGDC:0];
  masksCopy = v328;
  if (v62)
  {
LABEL_216:
    v292 = v62;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v299) = v292;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
    OUTLINED_FUNCTION_9_27();
    container = 0;
    goto LABEL_225;
  }

LABEL_46:
  v123 = [objc_msgSend(OUTLINED_FUNCTION_33_11(v62 v51];
  container = v123;
  if (!v123)
  {
    goto LABEL_223;
  }

  v349 = v123;
  if ((cf & 1) == 0)
  {
    v140 = CMSampleBufferGetImageBuffer(v16);
    if (v140)
    {
      v16 = v140;
      v148 = v379;
      v149 = OUTLINED_FUNCTION_28_7(v140, v141, v142, v143, v144, v145, v146, v147, v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy, sbuf, v328, learnCopy, v334, v337, v340, v343, cf, v349, v352, v355, v358);
      v150 = -[NSMutableDictionary objectForKeyedSubscript:](self->_intermediatePixelBufferPoolsByAttachedMediaKeys, "objectForKeyedSubscript:", [stats objectForKeyedSubscript:*off_1E798B540]);
      if (v148)
      {
        v151 = v149;
        container = v349;
        v152 = [v151 createLinearThumbnailFromMetadata:stats ltmThumbnailPixelBuffer:v16 cameraInfo:v150 applyGDC:v343 toPixelBuffer:v349];
      }

      else
      {
        v299 = v349;
        v154 = v149;
        container = v349;
        v152 = [v154 createLinearThumbnailFromMetadata:stats preLTMThumbnailPixelBuffer:v16 postLTMThumbnailPixelBuffer:v362 cameraInfo:v150 applyGDC:v343 cropToPreLTMBounds:1 toPixelBuffer:?];
      }

      masksCopy = v328;
      epoch = v340;
      if (v152)
      {
        goto LABEL_224;
      }

      goto LABEL_58;
    }

LABEL_223:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_224;
  }

  v124 = [stats objectForKeyedSubscript:*off_1E798B458];
  v132 = OUTLINED_FUNCTION_28_7(v124, v125, v126, v127, v128, v129, v130, v131, v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy, sbuf, v328, learnCopy, v334, v337, v340, v343, cf, v349, v352, v355, v358);
  v16 = v132;
  if (!v124)
  {
    OUTLINED_FUNCTION_16_17(v132, v133, v134, v135, v136, v137, v138, v139, v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy, sbuf, v328, learnCopy, v334, v337, v340, v343, cf, v349, v352, v355, v358, v361, v362, __src.duration.value, *&__src.duration.timescale, __src.duration.epoch, __src.presentationTimeStamp.value, *&__src.presentationTimeStamp.timescale, __src.presentationTimeStamp.epoch, __src.decodeTimeStamp.value, *&__src.decodeTimeStamp.timescale, __src.decodeTimeStamp.epoch, v364, time.duration.value, *&time.duration.timescale, time.duration.epoch, time.presentationTimeStamp.value, *&time.presentationTimeStamp.timescale, time.presentationTimeStamp.epoch, time.decodeTimeStamp.value, *&time.decodeTimeStamp.timescale, time.decodeTimeStamp.epoch, v366, v367, v368, v369, v370, v371[0]);
    container = v349;
    v153 = [v16 downScalePixelBuffer:learn toPixelBuffer:v349 propagateAttachments:1 gdcParams:&time applyGDC:v30];
    v16 = v358;
    if (v153)
    {
      goto LABEL_224;
    }

    goto LABEL_59;
  }

  container = v349;
  if ([v132 createLinearThumbnailFromMetadata:stats postLTMThumbnailPixelBuffer:v362 cameraInfo:-[NSMutableDictionary objectForKeyedSubscript:](self->_intermediatePixelBufferPoolsByAttachedMediaKeys applyGDC:"objectForKeyedSubscript:" cropToPreLTMBounds:objc_msgSend(stats toPixelBuffer:{"objectForKeyedSubscript:", *off_1E798B540)), v343, 0, v349}])
  {
    goto LABEL_224;
  }

LABEL_58:
  v16 = v358;
  if ([objc_msgSend(*(&self->super.super.isa + v358) "utilities")])
  {
LABEL_224:
    OUTLINED_FUNCTION_9_27();
    goto LABEL_225;
  }

LABEL_59:
  if ([objc_msgSend(*(&self->super.super.isa + v16) "utilities")])
  {
    goto LABEL_224;
  }

  v155 = BWSampleBufferGetAttachedMedia(ImageBuffer, 0x1F21AB1F0);
  stats = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  if (!v155)
  {
LABEL_67:
    cf = 0;
    goto LABEL_68;
  }

  if (!CMSampleBufferGetImageBuffer(v155))
  {
    goto LABEL_223;
  }

  OUTLINED_FUNCTION_33();
  if (!_ZF)
  {
    goto LABEL_67;
  }

  v16 = v156;
  v157 = [objc_msgSend(OUTLINED_FUNCTION_33_11(v156 v157];
  if (!v157)
  {
    goto LABEL_223;
  }

  cf = v157;
  if ([(BWSmartStyleLearningNode *)self _cropAndUndistortWeightSegmentMap:v16 unstyledSampleBuffer:ImageBuffer doGDC:0 toPixelBuffer:?])
  {
    learn = 0;
    extended = 0;
    stats = 0;
LABEL_225:
    LOBYTE(v30) = 0;
    goto LABEL_172;
  }

LABEL_68:
  if (masksCopy)
  {
    OUTLINED_FUNCTION_10_25();
    time.duration.epoch = epoch;
    v165 = [(BWSmartStyleLearningNode *)self _cropAndScaleMasks:masksCopy unstyledSampleBuffer:ImageBuffer currentPTS:&time applyGDC:v343 useIntermediatePool:?];
    if (v165)
    {
      v166 = v165;

      masksCopy = v166;
    }
  }

  v16 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  stats = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  if (BYTE6(self->_previousPTS.epoch) != 1 || (OUTLINED_FUNCTION_33(), !_ZF) || !masksCopy)
  {
    if (!masksCopy)
    {
      v217 = 0;
      v199 = 0;
      v334 = 0;
      v328 = 0;
      v343 = 0;
      ImageBuffer = 0;
      v309 = 0;
      v319 = 0;
      v212 = 0;
      learn = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
      v16 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
      goto LABEL_110;
    }

    v199 = 0;
    OUTLINED_FUNCTION_34_9();
    v30 = *off_1E798D298;
    learn = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
    v16 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
    goto LABEL_102;
  }

  memset(&__src, 0, sizeof(__src));
  v168 = [objc_msgSend(OUTLINED_FUNCTION_33_11(v167 v168];
  stats = v168;
  if (!v168)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v301);
LABEL_233:
    OUTLINED_FUNCTION_22_10();
    goto LABEL_234;
  }

  v183 = OUTLINED_FUNCTION_28_7(v168, v176, v177, v178, v179, v180, v181, v182, v301, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy, sbuf, v328, learnCopy, v334, v337, v340, v343, cf, v349, v352, v355, v358);
  OUTLINED_FUNCTION_18_14();
  if (!_ZF)
  {
    v192 = v193;
  }

  if (!learn)
  {
    learn = v192;
  }

  OUTLINED_FUNCTION_16_17(v184, v185, v186, v187, v188, v189, v190, v191, v302, v305, v308, v311, v315, v318, v321, v324, sbufa, v330, v333, v336, v339, v342, v345, cfa, v351, v354, v357, v360, v361, v362, __src.duration.value, *&__src.duration.timescale, __src.duration.epoch, __src.presentationTimeStamp.value, *&__src.presentationTimeStamp.timescale, __src.presentationTimeStamp.epoch, __src.decodeTimeStamp.value, *&__src.decodeTimeStamp.timescale, __src.decodeTimeStamp.epoch, v364, time.duration.value, *&time.duration.timescale, time.duration.epoch, time.presentationTimeStamp.value, *&time.presentationTimeStamp.timescale, time.presentationTimeStamp.epoch, time.decodeTimeStamp.value, *&time.decodeTimeStamp.timescale, time.decodeTimeStamp.epoch, v366, v367, v368, v369, v370, v371[0]);
  v194 = [v183 downScalePixelBuffer:learn toPixelBuffer:stats propagateAttachments:1 gdcParams:&time applyGDC:v30];
  if (v194)
  {
    v294 = v194;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v299) = v294;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
LABEL_230:
    OUTLINED_FUNCTION_22_10();
    container = v349;
LABEL_234:
    epoch = v340;
    learn = 0;
    extended = 0;
    goto LABEL_235;
  }

  [(FigMetalContext *)self->_metalContext waitForSchedule];
  v196 = OUTLINED_FUNCTION_26_9(ImageBuffer, v195, &__src);
  if (v196)
  {
    v295 = v196;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v299) = v295;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
    goto LABEL_230;
  }

  learn = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  memcpy(&time, &__src, sizeof(time));
  v197 = BWSampleBufferCreateFromPixelBufferWithTimingInfo(stats, &time, &v385, &v384);
  container = v349;
  if (v197)
  {
    v296 = v197;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v299) = v296;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
    goto LABEL_233;
  }

  if (!v384)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
    goto LABEL_233;
  }

  BWSampleBufferSetAttachedMedia(containerCopy, 0x1F21AB0B0, v384);
  OUTLINED_FUNCTION_10_25();
  epoch = v340;
  time.duration.epoch = v340;
  v198 = [(BWSmartStyleLearningNode *)self _runInferences:containerCopy unstyledSampleBuffer:ImageBuffer withMasks:masksCopy currentPTS:&time];
  v199 = v198;
  if (!v198 || (v200 = -[__CVBuffer count](v198, "count"), v200 != [masksCopy count]))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy);
  }

  v201 = v199;
  OUTLINED_FUNCTION_10_25();
  time.duration.epoch = v340;
  v202 = [(BWSmartStyleLearningNode *)self _blitMasksToOutputPools:v199 unstyledSampleBuffer:ImageBuffer currentPTS:&time];
  if (v202)
  {
    v203 = v202;

    v199 = v203;
  }

  v16 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  CFRelease(stats);
  if (v385)
  {
    CFRelease(v385);
    v385 = 0;
  }

  stats = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
  if (v384)
  {
    CFRelease(v384);
    v384 = 0;
  }

  v30 = *off_1E798D298;
  if (v199)
  {
    v343 = v199;
    v204 = [-[__CVBuffer objectForKeyedSubscript:](v199 objectForKeyedSubscript:{v30), "objectForKeyedSubscript:", 0x1F21AAED0}];
    if (!v204 || (v205 = CMSampleBufferGetImageBuffer(v204)) == 0 || (v199 = v205, (v206 = [-[__CVBuffer objectForKeyedSubscript:](v343 objectForKeyedSubscript:{v30), "objectForKeyedSubscript:", 0x1F21AAEF0}]) == 0) || (v207 = CMSampleBufferGetImageBuffer(v206)) == 0 || (ImageBuffer = v207, (v208 = objc_msgSend(-[__CVBuffer objectForKeyedSubscript:](v343, "objectForKeyedSubscript:", v30), "objectForKeyedSubscript:", 0x1F21AAF30)) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_9();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      OUTLINED_FUNCTION_14_16();
      goto LABEL_208;
    }

    v334 = ImageBuffer;
    v209 = CMSampleBufferGetImageBuffer(v208);
    if (!v209)
    {
LABEL_207:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_9();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      OUTLINED_FUNCTION_14_16();
      epoch = v340;
LABEL_208:
      OUTLINED_FUNCTION_22_10();
      extended = v343;
      goto LABEL_173;
    }

    epoch = v209;
    ImageBuffer = 1;
  }

  else
  {
    OUTLINED_FUNCTION_34_9();
  }

LABEL_102:
  v210 = [objc_msgSend(masksCopy objectForKeyedSubscript:{v30), "objectForKeyedSubscript:", 0x1F21AAED0}];
  if (!v210)
  {
    goto LABEL_207;
  }

  v328 = epoch;
  v211 = CMSampleBufferGetImageBuffer(v210);
  if (!v211)
  {
    goto LABEL_207;
  }

  v212 = v211;
  v213 = [objc_msgSend(masksCopy objectForKeyedSubscript:{v30), "objectForKeyedSubscript:", 0x1F21AAEF0}];
  if (!v213)
  {
    goto LABEL_207;
  }

  v214 = CMSampleBufferGetImageBuffer(v213);
  if (!v214)
  {
    goto LABEL_207;
  }

  v319 = v214;
  v215 = [objc_msgSend(masksCopy objectForKeyedSubscript:{v30), "objectForKeyedSubscript:", 0x1F21AAF30}];
  if (!v215)
  {
    goto LABEL_207;
  }

  v216 = CMSampleBufferGetImageBuffer(v215);
  if (!v216)
  {
    goto LABEL_207;
  }

  v309 = v216;
  v217 = 1;
LABEL_110:
  OUTLINED_FUNCTION_33();
  if (_ZF)
  {
    if (v199)
    {
      if (v212)
      {
        v218 = [(BWSmartStyleLearningNode *)self _runFalsePositiveRejectionOnPixelBuffer:v199 unrefinedPixelBuffer:v212];
        if (v218)
        {
          v297 = v218;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_47();
          LODWORD(v299) = v297;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
          goto LABEL_237;
        }
      }
    }
  }

  if ((v217 | ImageBuffer) != 1)
  {
    goto LABEL_126;
  }

  ImageBuffer = *off_1E798D298;
  v219 = [OUTLINED_FUNCTION_37_8() objectForKeyedSubscript:0x1F21AAED0];
  if (!v219)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
LABEL_237:
    learn = 0;
    goto LABEL_238;
  }

  v220 = v219;
  learn = [OUTLINED_FUNCTION_37_8() objectForKeyedSubscript:0x1F21AAEF0];
  if (!learn)
  {
LABEL_220:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
LABEL_238:
    stats = 0;
    LOBYTE(v30) = 0;
    goto LABEL_239;
  }

  v30 = [OUTLINED_FUNCTION_37_8() objectForKeyedSubscript:0x1F21AAF30];
  if (!v30)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_9();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy);
    learn = 0;
    stats = 0;
    goto LABEL_239;
  }

  stats = masksCopy;
  os_unfair_lock_lock(&self->_lastLearnedROI.size.height);
  BYTE4(self->_lastLearnedROI.size.height) = 1;
  v221 = *&self->_mostRecentMasksLock._os_unfair_lock_opaque;
  if (v221)
  {
    CFRelease(v221);
  }

  *&self->_mostRecentMasksLock._os_unfair_lock_opaque = CFRetain(v220);
  mostRecentLearnedPersonMaskSampleBuffer = self->_mostRecentLearnedPersonMaskSampleBuffer;
  if (mostRecentLearnedPersonMaskSampleBuffer)
  {
    CFRelease(mostRecentLearnedPersonMaskSampleBuffer);
  }

  self->_mostRecentLearnedPersonMaskSampleBuffer = CFRetain(learn);
  mostRecentLearnedSkinMaskSampleBuffer = self->_mostRecentLearnedSkinMaskSampleBuffer;
  if (mostRecentLearnedSkinMaskSampleBuffer)
  {
    CFRelease(mostRecentLearnedSkinMaskSampleBuffer);
  }

  self->_mostRecentLearnedSkinMaskSampleBuffer = CFRetain(v30);
  os_unfair_lock_unlock(&self->_lastLearnedROI.size.height);
LABEL_126:
  LOBYTE(self->_srlCurveParameter) = 0;
  ImageBuffer = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  if (BYTE1(self->_mostRecentLearnedSkyMaskSampleBuffer) != 1 || !HIDWORD(v361))
  {
    if (HIDWORD(v361))
    {
      goto LABEL_131;
    }

LABEL_135:
    OUTLINED_FUNCTION_33();
    if (!_ZF)
    {
      v30 = 0;
LABEL_140:
      HIDWORD(v361) = 0;
      goto LABEL_141;
    }

    v227 = [(BWSmartStyleLearningNode *)self _createCoefficientsFromSampleBuffer:containerCopy to:v386];
    if (v227)
    {
      LODWORD(v30) = v227;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_47();
      LODWORD(v299) = v30;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy);
      OUTLINED_FUNCTION_14_16();
    }

    else
    {
      v30 = CMSampleBufferGetImageBuffer(v386[0]);
      if (v30)
      {
        goto LABEL_140;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_9();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy);
      learn = 0;
      stats = 0;
    }

    HIDWORD(v361) = 0;
    goto LABEL_239;
  }

  stats = masksCopy;
  [(FigCaptureSmartStyle *)self->_smartStyleLearned floatValue];
  if (v224 >= 0.25)
  {
    [(FigCaptureSmartStyle *)self->_smartStyleLearned floatValue];
    LOBYTE(self->_srlCurveParameter) = v226 < 0.5;
    if (v226 >= 0.5)
    {
      goto LABEL_131;
    }

    goto LABEL_135;
  }

  LOBYTE(self->_srlCurveParameter) = 0;
LABEL_131:
  v225 = [(BWSmartStyleLearningNode *)self _createIdentityCoefficientsFromSampleBuffer:containerCopy to:v386];
  if (!v225)
  {
    v30 = 0;
    learn = 0;
    HIDWORD(v361) = 1;
    if (BYTE1(self->_mostRecentLearnedSkyMaskSampleBuffer) != 1)
    {
      goto LABEL_166;
    }

LABEL_141:
    if (sbuf)
    {
      v228 = CMSampleBufferGetImageBuffer(sbuf);
    }

    else
    {
      OUTLINED_FUNCTION_18_14();
      if (_ZF)
      {
        v228 = v229;
      }

      else
      {
        v228 = v230;
      }
    }

    v231 = objc_alloc_init(self->_smartStyleProcessorInputOutputClass);
    learn = v231;
    if (v231)
    {
      if (v355)
      {
        v232 = v355;
      }

      else
      {
        v232 = v362;
      }

      [v231 setInputUnstyledPixelBuffer:v232];
      [learn setInputUnstyledThumbnailPixelBuffer:v362];
      [learn setInputLinearPixelBuffer:v349];
      [learn setInputMetadataDict:v337];
      [learn setInputLinearMetadataDict:v337];
      if (v199)
      {
        v233 = v199;
      }

      else
      {
        v233 = v212;
      }

      [learn setInputPersonMaskPixelBuffer:v233];
      CVPixelBufferGetWidth([learn inputPersonMaskPixelBuffer]);
      inputPersonMaskPixelBuffer = [OUTLINED_FUNCTION_21_13() inputPersonMaskPixelBuffer];
      v235 = CVPixelBufferGetHeight(inputPersonMaskPixelBuffer);
      OUTLINED_FUNCTION_13_20(v235, v236, v237, v238, v239, v240, v241);
      [learn setInputPersonMaskCropRect:?];
      if (v328)
      {
        v242 = v328;
      }

      else
      {
        v242 = v309;
      }

      [learn setInputSkyMaskPixelBuffer:v242];
      CVPixelBufferGetWidth([learn inputSkyMaskPixelBuffer]);
      inputSkyMaskPixelBuffer = [OUTLINED_FUNCTION_21_13() inputSkyMaskPixelBuffer];
      v244 = CVPixelBufferGetHeight(inputSkyMaskPixelBuffer);
      OUTLINED_FUNCTION_13_20(v244, v245, v246, v247, v248, v249, v250);
      [learn setInputSkyMaskCropRect:?];
      if (v334)
      {
        v251 = v334;
      }

      else
      {
        v251 = v319;
      }

      [learn setInputSkinMaskPixelBuffer:v251];
      CVPixelBufferGetWidth([learn inputSkinMaskPixelBuffer]);
      inputSkinMaskPixelBuffer = [OUTLINED_FUNCTION_21_13() inputSkinMaskPixelBuffer];
      v253 = CVPixelBufferGetHeight(inputSkinMaskPixelBuffer);
      OUTLINED_FUNCTION_13_20(v253, v254, v255, v256, v257, v258, v259);
      [learn setInputSkinMaskCropRect:?];
      [learn setOutputLearnedStyleCoefficientsPixelBuffer:v30];
      [learn setInputSmartStyle:objc_alloc_init(self->_smartStyleClass)];
      [objc_msgSend(learn "inputSmartStyle")];
      [learnCopy intensity];
      v261 = v260;
      inputSmartStyle = [learn inputSmartStyle];
      LODWORD(v263) = v261;
      [inputSmartStyle setCastIntensity:v263];
      [learnCopy toneBias];
      v265 = v264;
      inputSmartStyle2 = [learn inputSmartStyle];
      LODWORD(v267) = v265;
      [inputSmartStyle2 setToneBias:v267];
      [learnCopy colorBias];
      v269 = v268;
      inputSmartStyle3 = [learn inputSmartStyle];
      LODWORD(v271) = v269;
      [inputSmartStyle3 setColorBias:v271];
      [learn setInputTuningType:*MEMORY[0x1E69916A8]];
      [learn setInputSRLPixelBuffer:v228];
      if (self->_generateImageStats)
      {
        v272 = cf;
      }

      else
      {
        v272 = 0;
      }

      [learn setInputWeightPlanePixelBufferScaledForISPSMG:v272];
      os_unfair_lock_lock(&self->_semanticStyleSceneLock);
      [learn setSemanticStyleSceneType:self->_semanticStyleSceneType];
      os_unfair_lock_unlock(&self->_semanticStyleSceneLock);
      [learn setOutputImageStatistics:statsCopy];
      [learn setOutputImageStatisticsExtended:extendedCopy];
      [learn setSubjectRelightingEnabled:self->_runSrlStatsAndEnableStylesIfNeeded];
      if (HIDWORD(v361))
      {
        [learn setSubjectRelightingEnabled:1];
        [learn setComputeOnlySubjectRelighting:1];
      }

      [*(&self->super.super.isa + v358) setInputOutput:learn];
      process = [*(&self->super.super.isa + v358) process];
      if (!process)
      {
        [(FigMetalContext *)self->_metalContext waitForSchedule];
LABEL_166:
        os_unfair_lock_lock(&self->_workQueue);
        learnedCoefficientsSampleBuffer = self->_learnedCoefficientsSampleBuffer;
        if (learnedCoefficientsSampleBuffer)
        {
          CFRelease(learnedCoefficientsSampleBuffer);
        }

        self->_learnedCoefficientsSampleBuffer = v386[0];

        *&self->_workQueueLearnCount = learnCopy;
        ImageBuffer = 448;

        epoch = v340;
        extended = v343;
        container = v349;
        if (learn)
        {
          v275 = objc_alloc(MEMORY[0x1E696AD98]);
          [learn outputSRLCurveParameter];
          v276 = [v275 initWithFloat:?];
        }

        else
        {
          v276 = 0;
        }

        self->_smartStyleLearned = v276;
        v16 = 464;

        *&self->_smartStyleRenderingRequiredForSRL = [learn outputSRLStats];
        v277 = v381;
        *&self->_srlStats = v380;
        *&self->_lastLearnedROI.origin.y = v277;
        os_unfair_lock_unlock(&self->_workQueue);
        stats = 0;
        LOBYTE(v30) = 1;
        goto LABEL_172;
      }

      v16 = process;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_47();
      LODWORD(v299) = v16;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299);
      goto LABEL_238;
    }

    goto LABEL_220;
  }

  LODWORD(v30) = v225;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_47();
  LODWORD(v299) = v30;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy);
  OUTLINED_FUNCTION_14_16();
  HIDWORD(v361) = 1;
LABEL_239:
  epoch = v340;
  extended = v343;
  OUTLINED_FUNCTION_22_10();
  container = v349;
LABEL_173:
  if (v385)
  {
    CFRelease(v385);
  }

  if (v384)
  {
    CFRelease(v384);
  }

  if (stats)
  {
    CFRelease(stats);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (ImageBuffer)
  {
    CFRelease(ImageBuffer);
  }

  if (container)
  {
    CFRelease(container);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v278 = MEMORY[0x1E695FF58];
  if ((v30 & 1) == 0)
  {
    os_unfair_lock_lock(&self->_workQueue);
    v279 = self->_learnedCoefficientsSampleBuffer;
    if (v279)
    {
      CFRelease(v279);
      self->_learnedCoefficientsSampleBuffer = 0;
    }

    os_unfair_lock_unlock(&self->_workQueue);
  }

  if (*v278 == 1)
  {
    OUTLINED_FUNCTION_10_25();
    time.duration.epoch = epoch;
    CMTimeGetSeconds(&time.duration);
    OUTLINED_FUNCTION_29_5(v280, v281, v282, v283, v284, v285, v286, v287, v299, v303, v306, v309, extendedCopy, statsCopy, v319, containerCopy, sbuf, v328, learnCopy, v334, v337, v340, v343, cf, v349, v352, v355, v358, v361, HIDWORD(v361));
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  *a2 = v4;
  selfCopy = self;
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", selfCopy, v4, v7, v8, v9, v10, vars0, vars8);
}

@end