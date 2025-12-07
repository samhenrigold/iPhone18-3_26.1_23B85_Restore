@interface BWMultiCamClientCompositingNode
- (BOOL)_attemptMovieFileBufferPairing;
- (BWMultiCamClientCompositingNode)initWithIndexOfInputProvidingOutputSampleBuffer:(unsigned int)buffer compositingStrategy:(signed __int16)strategy gainMapSupported:(BOOL)supported clientCompositingCallback:(id)callback;
- (CMSampleBufferRef)_copyCompositionPictureInPictureRectMetadataSampleBuffer:(double)buffer pts:;
- (CMSampleBufferRef)_newSampleBufferWithOriginalPresentationTimesStamp:(CMSampleBufferRef)result;
- (double)_compositionPictureInPictureRectFromClientCompositingMetadata:(uint64_t)metadata;
- (double)_normalizedCompositionPictureInPictureRect:(uint64_t)rect;
- (uint64_t)_compressionPictureInPictureRegionFromRect:(uint64_t)rect;
- (void)_handleMovieFileSampleBuffer:(void *)buffer forInput:;
- (void)_handleStillImageSampleBuffer:(void *)buffer forInput:;
- (void)_invokeClientCompositingCallbackForSettingsID:(void *)d primarySampleBuffer:(void *)buffer secondarySampleBuffer:(void *)sampleBuffer outputSampleBufferOut:(void *)out compositingMetadataOut:;
- (void)_updateOutputSampleBufferDetectedFaces:(opaqueCMSampleBuffer *)faces withSecondarySampleBufferDetectedFaces:(double)detectedFaces compositionPictureInPictureRect:(double)rect;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)handleStillImagePrewarmWithSettings:(id)settings resourceConfig:(id)config forInput:(id)input;
- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWMultiCamClientCompositingNode

- (BWMultiCamClientCompositingNode)initWithIndexOfInputProvidingOutputSampleBuffer:(unsigned int)buffer compositingStrategy:(signed __int16)strategy gainMapSupported:(BOOL)supported clientCompositingCallback:(id)callback
{
  v37.receiver = self;
  v37.super_class = BWMultiCamClientCompositingNode;
  v10 = [(BWNode *)&v37 init];
  v11 = v10;
  if (v10)
  {
    if (v10->_compositingStrategy)
    {
      v12 = 1;
    }

    else
    {
      v12 = 50;
    }

    v10->_indexOfInputProvidingOutputSampleBuffer = buffer;
    v10->_compositingStrategy = strategy;
    v10->_gainMapSupported = supported;
    v10->_clientCompositingCallback = [callback copy];
    v11->_stillsInputLock._os_unfair_lock_opaque = 0;
    compositingStrategy = v11->_compositingStrategy;
    if (compositingStrategy != 1 && v11->_gainMapSupported)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Using compositing strategy %d with gain maps which is not supported!", compositingStrategy), 0}]);
    }

    v14 = 0;
    v15 = 1;
    bufferCopy = buffer;
    bufferCopy2 = buffer;
    do
    {
      v17 = v15;
      v18 = v14 == bufferCopy2;
      v19 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v11 index:v14];
      primaryMediaConfiguration = [(BWNodeInput *)v19 primaryMediaConfiguration];
      [(BWNodeInputMediaConfiguration *)primaryMediaConfiguration setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)primaryMediaConfiguration setPassthroughMode:v18];
      v21 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v21 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v21 setPassthroughMode:1];
      [(BWNodeInput *)v19 setUnspecifiedAttachedMediaConfiguration:v21];
      [(BWNodeInput *)v19 setDelayedBufferCount:v12];
      [(BWNode *)v11 addInput:v19];

      v15 = 0;
      v14 = 1;
    }

    while ((v17 & 1) != 0);
    v22 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v11];
    [(BWNodeOutput *)v22 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v22 setPassthroughMode:1];
    [(BWNodeOutput *)v22 setIndexOfInputWhichDrivesThisOutput:bufferCopy];
    [(BWNode *)v11 addOutput:v22];

    if (!v11->_compositingStrategy)
    {
      v11->_bufferSynchronizer = [[BWPairedBufferSynchronizer alloc] initWithCapacity:v12];
      v23 = *MEMORY[0x1E6960348];
      v24 = *off_1E798D138;
      v25 = *MEMORY[0x1E6960338];
      v35[0] = *MEMORY[0x1E6960348];
      v35[1] = v25;
      v26 = *MEMORY[0x1E6960268];
      v36[0] = v24;
      v36[1] = v26;
      v35[2] = *MEMORY[0x1E6960358];
      v33 = *MEMORY[0x1E6960360];
      v34 = *MEMORY[0x1E695E4C0];
      v36[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
      v28 = *MEMORY[0x1E695E480];
      v32 = v27;
      if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(v28, 0x6D656278u, [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1], &v11->_compositionPictureInPictureRectMetadataFormatDescription))
      {

        return 0;
      }

      else
      {
        [v27 objectForKeyedSubscript:v23];
        [v27 objectForKeyedSubscript:v25];
        [v27 objectForKeyedSubscript:*MEMORY[0x1E6960340]];
        v11->_compositionPictureInPictureRectMetadataLocalID = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
        v29 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v11];
        v11->_compositionPictureInPictureRectMetadataOutput = v29;
        [(BWNodeOutput *)v29 setName:@"CompositionPictureInPictureRectMetadata"];
        [(BWNodeOutput *)v11->_compositionPictureInPictureRectMetadataOutput setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:v11->_compositionPictureInPictureRectMetadataFormatDescription]];
        [(BWNode *)v11 addOutput:v11->_compositionPictureInPictureRectMetadataOutput];
        v11->_thresholdToRemovePrimaryBufferDetectedFacesObscuredByPIP = 30.0;
      }
    }
  }

  return v11;
}

- (void)dealloc
{
  outputSampleBufferFormatDescription = self->_outputSampleBufferFormatDescription;
  if (outputSampleBufferFormatDescription)
  {
    CFRelease(outputSampleBufferFormatDescription);
  }

  outputGainMapSampleBufferFormatDescription = self->_outputGainMapSampleBufferFormatDescription;
  if (outputGainMapSampleBufferFormatDescription)
  {
    CFRelease(outputGainMapSampleBufferFormatDescription);
  }

  compositionPictureInPictureRectMetadataFormatDescription = self->_compositionPictureInPictureRectMetadataFormatDescription;
  if (compositionPictureInPictureRectMetadataFormatDescription)
  {
    CFRelease(compositionPictureInPictureRectMetadataFormatDescription);
  }

  v6.receiver = self;
  v6.super_class = BWMultiCamClientCompositingNode;
  [(BWNode *)&v6 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  v11.receiver = self;
  v11.super_class = BWMultiCamClientCompositingNode;
  [BWNode didSelectFormat:sel_didSelectFormat_forInput_forAttachedMediaKey_ forInput:? forAttachedMediaKey:?];
  if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
  {
    if (objc_msgSend_isEqualToString_(key))
    {
      [(BWNodeOutput *)self->super._output setFormat:format];
      v9 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:", format, [input delayedBufferCount], @"Multi Cam Client Compositing Output");
      v10 = &OBJC_IVAR___BWMultiCamClientCompositingNode__outputPixelBufferPool;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(key))
      {
        return;
      }

      v9 = [[BWPixelBufferPool alloc] initWithVideoFormat:format capacity:1 name:@"Multi Cam Client Compositing Gain Map Output"];
      v10 = &OBJC_IVAR___BWMultiCamClientCompositingNode__outputGainMapPixelBufferPool;
    }

    *(&self->super.super.isa + *v10) = v9;
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
  {
    [(BWNodeOutput *)self->super._output setFormat:format];
  }

  if ([(BWNode *)self allInputsHaveReachedState:1])
  {
    [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
    compositionPictureInPictureRectMetadataOutput = self->_compositionPictureInPictureRectMetadataOutput;

    [(BWNodeOutput *)compositionPictureInPictureRectMetadataOutput makeConfiguredFormatLive];
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  index = [input index];
  compositingStrategy = self->_compositingStrategy;
  if (index != self->_indexOfInputProvidingOutputSampleBuffer && compositingStrategy == 0)
  {
    [(BWPairedBufferSynchronizer *)self->_bufferSynchronizer setSecondaryStreamComplete:1];
  }

  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    if (!compositingStrategy)
    {
        ;
      }

      [(BWPairedBufferSynchronizer *)self->_bufferSynchronizer flush];
    }

    primaryStillSampleBuffer = self->_primaryStillSampleBuffer;
    if (primaryStillSampleBuffer)
    {
      CFRelease(primaryStillSampleBuffer);
      self->_primaryStillSampleBuffer = 0;
    }

    secondaryStillSampleBuffer = self->_secondaryStillSampleBuffer;
    if (secondaryStillSampleBuffer)
    {
      CFRelease(secondaryStillSampleBuffer);
      self->_secondaryStillSampleBuffer = 0;
    }

    self->_receivedNodeError = 0;
    [(BWNodeOutput *)self->super._output markEndOfLiveOutput];
    compositionPictureInPictureRectMetadataOutput = self->_compositionPictureInPictureRectMetadataOutput;

    [(BWNodeOutput *)compositionPictureInPictureRectMetadataOutput markEndOfLiveOutput];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!self->_clientCompositingCallback)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ was added to the graph but has no callback.", objc_opt_class()), 0}];
    objc_exception_throw(v5);
  }

  if (self->_compositingStrategy == 1)
  {

    [(BWMultiCamClientCompositingNode *)self _handleStillImageSampleBuffer:buffer forInput:input];
  }

  else if (!self->_compositingStrategy)
  {

    [(BWMultiCamClientCompositingNode *)self _handleMovieFileSampleBuffer:buffer forInput:input];
  }
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
  {
    output = self->super._output;

    [(BWNodeOutput *)output emitDroppedSample:sample];
  }
}

- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input
{
  v4 = *&number;
  if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
  {
    output = self->super._output;

    [(BWNodeOutput *)output emitStillImageReferenceFrameBracketedCaptureSequenceNumberMessageWithSequenceNumber:v4];
  }
}

- (void)handleStillImagePrewarmWithSettings:(id)settings resourceConfig:(id)config forInput:(id)input
{
  if ([input index] == self->_indexOfInputProvidingOutputSampleBuffer)
  {

    self->_stillImageSettings = settings;
    output = self->super._output;

    [(BWNodeOutput *)output emitStillImagePrewarmMessageWithSettings:settings resourceConfig:config];
  }
}

- (void)_handleMovieFileSampleBuffer:(void *)buffer forInput:
{
  if (!self)
  {
    return;
  }

  index = [buffer index];
  v6 = *(self + 128);
  IsMarkerBuffer = BWSampleBufferIsMarkerBuffer(a2);
  if (index == v6)
  {
    if (IsMarkerBuffer)
    {
      v8 = CMGetAttachment(a2, @"RecordingSettings", 0);
      if (v8)
      {
        v9 = v8;

        *(self + 152) = v9;
      }

      if (a2)
      {
        v10 = CFRetain(a2);
        v11 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v13 = CMGetAttachment(a2, @"FileWriterAction", 0);
      if (CFEqual(v13, @"Stop") || CFEqual(v13, @"Pause") || CFEqual(v13, @"Terminate"))
      {
        if ([(BWMultiCamClientCompositingNode *)self _attemptMovieFileBufferPairing])
        {
          do
          {
            v14 = 1;
          }

          while ([(BWMultiCamClientCompositingNode *)self _attemptMovieFileBufferPairing]);
        }

        else
        {
          v14 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      if (v10)
      {
        [*(self + 16) emitSampleBuffer:v10];
      }

      if (v11)
      {
        [*(self + 232) emitSampleBuffer:v11];
        if ((v14 & 1) == 0)
        {
LABEL_23:
          if (v10)
          {
            CFRelease(v10);
          }

          if (v11)
          {

            CFRelease(v11);
          }

          return;
        }
      }

      else if (!v14)
      {
        goto LABEL_23;
      }

      [*(self + 160) flush];
      goto LABEL_23;
    }

    [*(self + 160) addPrimaryBuffer:a2];
  }

  else if (IsMarkerBuffer)
  {
    v12 = CMGetAttachment(a2, @"FileWriterAction", 0);
    if (!CFEqual(v12, @"Stop") && !CFEqual(v12, @"Pause") && !CFEqual(v12, @"Terminate"))
    {
      return;
    }

    [*(self + 160) setSecondaryStreamComplete:1];
  }

  else
  {
    [*(self + 160) addSecondaryBuffer:a2];
  }

  [(BWMultiCamClientCompositingNode *)self _attemptMovieFileBufferPairing];
}

- (void)_handleStillImageSampleBuffer:(void *)buffer forInput:
{
  if (self)
  {
    cf = 0;
    v34[0] = 0;
    os_unfair_lock_lock((self + 168));
    index = [buffer index];
    v8 = *(self + 128);
    if (index == v8)
    {
      if (a2)
      {
        v9 = CFRetain(a2);
      }

      else
      {
        v9 = 0;
      }

      *(self + 176) = v9;
    }

    else
    {
      if (a2)
      {
        v10 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
      }

      *(self + 184) = v10;
      v9 = *(self + 176);
    }

    if (v9)
    {
      v11 = *(self + 184) == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(self + 192);
    if (v12)
    {
      if (index == v8)
      {
        if (v9)
        {
          v9 = CFRetain(v9);
        }

        v13 = 0;
        cf = v9;
      }

      else
      {
        v13 = v12;
      }

      *(self + 192) = 0;
    }

    else
    {
      v13 = 0;
    }

    os_unfair_lock_unlock((self + 168));
    if (!v11)
    {
      -[BWMultiCamClientCompositingNode _invokeClientCompositingCallbackForSettingsID:primarySampleBuffer:secondarySampleBuffer:outputSampleBufferOut:compositingMetadataOut:](self, [*(self + 144) settingsID], *(self + 176), *(self + 184), &cf, v34);
      [(BWMultiCamClientCompositingNode *)self _compositionPictureInPictureRectFromClientCompositingMetadata:?];
      OUTLINED_FUNCTION_2_3();
      if (!CGRectIsNull(v36))
      {
        v37.origin.x = OUTLINED_FUNCTION_3();
        if (!CGRectIsEmpty(v37))
        {
          OUTLINED_FUNCTION_3();
          v38.origin.x = [BWMultiCamClientCompositingNode _normalizedCompositionPictureInPictureRect:v28];
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v38);
          BWStillImageSetProcessingFlagsForSampleBuffer(cf, 0x4000000);
          [CMGetAttachment(cf *off_1E798A3C8];
        }
      }

      v14 = [v34[0] objectForKeyedSubscript:FigCaptureClientCompositingMetadataCoreImageGainMapPropertiesKey];
      if (v14)
      {
        v15 = v14;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:objc_msgSend(v15 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x1E695FA00]), *off_1E798A608}];
        v17 = *MEMORY[0x1E695FA20];
        [dictionary setObject:objc_msgSend(v15 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x1E695FA20]), *off_1E798A610}];
        [dictionary setObject:objc_msgSend(v15 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x1E695FA08]), *off_1E798A618}];
        [dictionary setObject:objc_msgSend(v15 forKeyedSubscript:{"objectForKeyedSubscript:", v17), *off_1E798A620}];
        v18 = [v15 objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapGamma"];
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = &unk_1F224CBE0;
        }

        [dictionary setObject:v19 forKeyedSubscript:*off_1E798A628];
        [dictionary setObject:objc_msgSend(v15 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x1E695FA10]), *off_1E798A638}];
        [dictionary setObject:objc_msgSend(v15 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x1E695FA18]), *off_1E798A648}];
        AttachedMedia = BWSampleBufferGetAttachedMedia(cf, 0x1F217BF50);
        v21 = *off_1E798A3C8;
        v22 = CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0);
        v23 = [v22 mutableCopy];
        v24 = *off_1E798A640;
        v25 = [objc_msgSend(v22 objectForKeyedSubscript:{*off_1E798A640), "mutableCopy"}];
        [v25 addEntriesFromDictionary:dictionary];
        [v23 setObject:v25 forKeyedSubscript:v24];
        CMSetAttachment(AttachedMedia, v21, v23, 1u);
      }
    }

    if (cf | v13)
    {
      if (cf)
      {
        [*(self + 16) emitSampleBuffer:?];
        if (v13)
        {
          OUTLINED_FUNCTION_1_9();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v30, v31, v32, v3, cf, v34[0], v34[1], v35);
        }
      }

      else if (v13)
      {
        [*(self + 16) emitNodeError:v13];
      }

      v26 = *(self + 176);
      if (v26)
      {
        CFRelease(v26);
        *(self + 176) = 0;
      }

      v27 = *(self + 184);
      if (v27)
      {
        CFRelease(v27);
        *(self + 184) = 0;
      }

      *(self + 144) = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  index = [input index];
  indexOfInputProvidingOutputSampleBuffer = self->_indexOfInputProvidingOutputSampleBuffer;
  v25[0] = 0;
  v24 = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_1_4();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (self->_compositingStrategy == 1)
  {
    os_unfair_lock_lock(&self->_stillsInputLock);
    receivedNodeError = self->_receivedNodeError;
    v10 = receivedNodeError != 0;
    if (receivedNodeError)
    {

      errorCopy = 0;
    }

    else
    {
      errorCopy = error;
    }

    self->_receivedNodeError = errorCopy;
    if (index == indexOfInputProvidingOutputSampleBuffer && self->_secondaryStillSampleBuffer)
    {
      v12 = 0;
      v10 = 1;
    }

    else
    {
      primaryStillSampleBuffer = self->_primaryStillSampleBuffer;
      if (primaryStillSampleBuffer)
      {
        v12 = CFRetain(primaryStillSampleBuffer);
      }

      else
      {
        v12 = 0;
      }
    }

    v14 = self->_primaryStillSampleBuffer;
    if (v14)
    {
      CFRelease(v14);
      self->_primaryStillSampleBuffer = 0;
    }

    secondaryStillSampleBuffer = self->_secondaryStillSampleBuffer;
    if (secondaryStillSampleBuffer)
    {
      CFRelease(secondaryStillSampleBuffer);
      self->_secondaryStillSampleBuffer = 0;
    }

    os_unfair_lock_unlock(&self->_stillsInputLock);
    if (((v12 == 0) & ~v10) == 0)
    {
      if (v12)
      {
        [(BWNodeOutput *)self->super._output emitSampleBuffer:v12];
        if (v10)
        {
          OUTLINED_FUNCTION_1_9();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16, v17, v18, v19, v20, v21, v22, v23);
        }
      }

      else if (v10)
      {
        [(BWNodeOutput *)self->super._output emitNodeError:error];
      }

      self->_stillImageSettings = 0;
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }
}

- (BOOL)_attemptMovieFileBufferPairing
{
  if (!self)
  {
    return 0;
  }

  cf = 0;
  v19 = **&MEMORY[0x1E6960C70];
  v18 = 0;
  getSynchronizedBufferPair = [self[20] getSynchronizedBufferPair];
  v4 = getSynchronizedBufferPair;
  v5 = v3;
  if (getSynchronizedBufferPair && v3)
  {
    -[BWMultiCamClientCompositingNode _invokeClientCompositingCallbackForSettingsID:primarySampleBuffer:secondarySampleBuffer:outputSampleBufferOut:compositingMetadataOut:](self, [self[19] settingsID], getSynchronizedBufferPair, v3, &cf, &v18);
    [(BWMultiCamClientCompositingNode *)self _compositionPictureInPictureRectFromClientCompositingMetadata:v18];
    OUTLINED_FUNCTION_2_3();
    CMSampleBufferGetPresentationTimeStamp(&v19, cf);
    v17 = *&v19.value;
    OUTLINED_FUNCTION_5_93();
    v10 = OUTLINED_FUNCTION_3();
    v7 = [(BWMultiCamClientCompositingNode *)v11 _copyCompositionPictureInPictureRectMetadataSampleBuffer:v12 pts:v10];
    v13 = cf;
    goto LABEL_14;
  }

  if (getSynchronizedBufferPair)
  {
    v13 = CFRetain(getSynchronizedBufferPair);
    cf = v13;
    CMSampleBufferGetPresentationTimeStamp(&v19, v13);
    v17 = *&v19.value;
    v14 = OUTLINED_FUNCTION_5_93();
    v7 = [(BWMultiCamClientCompositingNode *)v14 _copyCompositionPictureInPictureRectMetadataSampleBuffer:v15 pts:v16];
LABEL_14:
    v6 = v13 != 0;
    if (v13)
    {
      [self[2] emitSampleBuffer:{v13, v17}];
    }

    v8 = v7 == 0;
    if (v7)
    {
      [self[29] emitSampleBuffer:v7];
    }

    CFRelease(v4);
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = 0;
  v7 = 0;
  v8 = 1;
  if (v3)
  {
LABEL_6:
    CFRelease(v5);
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v8)
  {
    CFRelease(v7);
  }

  return v6;
}

- (void)_invokeClientCompositingCallbackForSettingsID:(void *)d primarySampleBuffer:(void *)buffer secondarySampleBuffer:(void *)sampleBuffer outputSampleBufferOut:(void *)out compositingMetadataOut:
{
  if (!self)
  {
    return;
  }

  v39 = 0;
  v40 = 0;
  cf = [(BWMultiCamClientCompositingNode *)self _newSampleBufferWithOriginalPresentationTimesStamp:d];
  if (cf)
  {
    v11 = [(BWMultiCamClientCompositingNode *)self _newSampleBufferWithOriginalPresentationTimesStamp:buffer];
    if (v11)
    {
      v12 = v11;
      ImageBuffer = CMSampleBufferGetImageBuffer(d);
      newPixelBuffer = [*(self + 200) newPixelBuffer];
      if (newPixelBuffer)
      {
        outCopy = out;
        v15 = *off_1E798A3C8;
        v16 = CVBufferCopyAttachment(ImageBuffer, *off_1E798A3C8, 0);
        if (v16)
        {
          v17 = CFAutorelease(v16);
        }

        else
        {
          v17 = 0;
        }

        CVBufferSetAttachment(newPixelBuffer, v15, v17, kCVAttachmentMode_ShouldPropagate);
        BWPropagatePixelBufferAmbientViewingEnvironment(ImageBuffer, newPixelBuffer);
        BWPropagatePixelBufferDolbyVisionRPUData(ImageBuffer, newPixelBuffer);
        AttachedMedia = BWSampleBufferGetAttachedMedia(d, 0x1F217BF50);
        v19 = BWSampleBufferGetAttachedMedia(buffer, 0x1F217BF50);
        newPixelBuffer2 = 0;
        if (AttachedMedia && v19)
        {
          newPixelBuffer2 = [*(self + 216) newPixelBuffer];
          BWCMSampleBufferCreateCopyWithNewPixelBuffer(AttachedMedia, newPixelBuffer2, (self + 224), &v39);
        }

        BWCMSampleBufferCreateCopyWithNewPixelBuffer(d, newPixelBuffer, (self + 208), &v40);
        if ((*(*(self + 136) + 16))(*(self + 136)))
        {
          if (v40)
          {
            CFRelease(v40);
          }

          if (d)
          {
            v21 = CFRetain(d);
          }

          else
          {
            v21 = 0;
          }

          v40 = v21;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          out = outCopy;
          OUTLINED_FUNCTION_1_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          v24 = [0 objectForKeyedSubscript:FigCaptureClientCompositingMetadataCoreImageGainMapPropertiesKey];
          v25 = v39;
          out = outCopy;
          if (!v39 || !v24)
          {
            v25 = 0;
          }

          BWSampleBufferSetAttachedMedia(v40, 0x1F217BF50, v25);
          [(BWMultiCamClientCompositingNode *)self _compositionPictureInPictureRectFromClientCompositingMetadata:?];
          OUTLINED_FUNCTION_2_3();
          v26 = [BWMultiCamClientCompositingNode _compressionPictureInPictureRegionFromRect:self];
          CMSetAttachment(v40, *MEMORY[0x1E6983788], v26, 1u);
          v27 = OUTLINED_FUNCTION_3();
          [(BWMultiCamClientCompositingNode *)v28 _updateOutputSampleBufferDetectedFaces:v29 withSecondarySampleBufferDetectedFaces:v30 compositionPictureInPictureRect:v27, v31, v32, v33];
        }
      }

      else
      {
        if (d)
        {
          v36 = CFRetain(d);
        }

        else
        {
          v36 = 0;
        }

        newPixelBuffer2 = 0;
        v40 = v36;
      }

      CFRelease(cf);
      CFRelease(v12);
      if (newPixelBuffer)
      {
        CFRelease(newPixelBuffer);
      }

      if (!newPixelBuffer2)
      {
        goto LABEL_23;
      }

      v23 = newPixelBuffer2;
    }

    else
    {
      if (d)
      {
        v35 = CFRetain(d);
      }

      else
      {
        v35 = 0;
      }

      v40 = v35;
      v23 = cf;
    }

    CFRelease(v23);
  }

  else
  {
    if (d)
    {
      v34 = CFRetain(d);
    }

    else
    {
      v34 = 0;
    }

    v40 = v34;
  }

LABEL_23:
  if (v39)
  {
    CFRelease(v39);
  }

  if (sampleBuffer)
  {
    *sampleBuffer = v40;
  }

  if (out)
  {
    *out = 0;
  }
}

- (double)_compositionPictureInPictureRectFromClientCompositingMetadata:(uint64_t)metadata
{
  if (!metadata)
  {
    return OUTLINED_FUNCTION_21_9();
  }

  v2 = *(MEMORY[0x1E695F050] + 16);
  v4.origin = *MEMORY[0x1E695F050];
  v4.size = v2;
  CGRectMakeWithDictionaryRepresentation([a2 objectForKeyedSubscript:FigCaptureClientCompositingMetadataCompositionPictureInPictureRectKey], &v4);
  return v4.origin.x;
}

- (CMSampleBufferRef)_copyCompositionPictureInPictureRectMetadataSampleBuffer:(double)buffer pts:
{
  if (result)
  {
    v4 = result;
    sampleBufferOut = 0;
    v12 = 0;
    [BWMultiCamClientCompositingNode _normalizedCompositionPictureInPictureRect:?];
    OUTLINED_FUNCTION_2_3();
    v5 = *MEMORY[0x1E695E480];
    if (!FigBoxedMetadataCreateForConstruction())
    {
      OUTLINED_FUNCTION_3();
      if (!FigBoxedMetadataAppendCGRect() && !FigBoxedMetadataEndConstruction())
      {
        BlockBuffer = FigBoxedMetadataGetBlockBuffer();
        memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
        __dst.presentationTimeStamp = *a2;
        DataLength = CMBlockBufferGetDataLength(BlockBuffer);
        v8 = *(v4 + 30);
        v9 = DataLength;
        CMSampleBufferCreate(v5, BlockBuffer, 1u, 0, 0, v8, 1, 1, &__dst, 1, &v9, &sampleBufferOut);
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }

    return sampleBufferOut;
  }

  return result;
}

- (double)_normalizedCompositionPictureInPictureRect:(uint64_t)rect
{
  if (!rect)
  {
    return OUTLINED_FUNCTION_21_9();
  }

  OUTLINED_FUNCTION_9_7();
  v2 = v1;
  v3 = [objc_msgSend(*(v1 + 16) "videoFormat")];
  [objc_msgSend(*(v2 + 16) "videoFormat")];
  v4 = OUTLINED_FUNCTION_3_1();
  return FigCaptureMetadataUtilitiesRectNormalizedToRect(v4, v5, v6, v7, v8, v9, v3);
}

- (CMSampleBufferRef)_newSampleBufferWithOriginalPresentationTimesStamp:(CMSampleBufferRef)result
{
  if (result)
  {
    v7 = 0;
    v3 = CMGetAttachment(target, *off_1E798A420, 0);
    if (v3)
    {
      memset(&v6, 0, sizeof(v6));
      CMTimeMakeFromDictionary(&v6, v3);
      CMSampleBufferGetDuration(&v5, target);
      v4 = v6;
      BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(target, &v4, &v5.value, &v7);
      return v7;
    }

    else if (target)
    {
      return CFRetain(target);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_compressionPictureInPictureRegionFromRect:(uint64_t)rect
{
  if (!rect)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_7();
  if (CGRectIsNull(v8))
  {
    return 0;
  }

  v9.origin.x = OUTLINED_FUNCTION_3_1();
  if (CGRectIsEmpty(v9))
  {
    return 0;
  }

  v10.origin.x = OUTLINED_FUNCTION_3_1();
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v10);
  v2 = *MEMORY[0x1E69834F8];
  v6[0] = *MEMORY[0x1E6983500];
  v6[1] = v2;
  v7[0] = DictionaryRepresentation;
  v7[1] = &unk_1F2247DA0;
  v3 = *MEMORY[0x1E69834E0];
  v6[2] = *MEMORY[0x1E69834F0];
  v6[3] = v3;
  v7[2] = &unk_1F2247DA0;
  v7[3] = &unk_1F2247DA0;
  v6[4] = *MEMORY[0x1E69834E8];
  v7[4] = &unk_1F2247DA0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];

  return v4;
}

- (void)_updateOutputSampleBufferDetectedFaces:(opaqueCMSampleBuffer *)faces withSecondarySampleBufferDetectedFaces:(double)detectedFaces compositionPictureInPictureRect:(double)rect
{
  if (!self)
  {
    return;
  }

  v14 = BWPixelBufferDimensionsFromSampleBuffer(a2);
  v15 = BWPixelBufferDimensionsFromSampleBuffer(faces);
  v16 = *off_1E798A3C8;
  v17 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  v18 = CMGetAttachment(faces, v16, 0);
  v19 = *off_1E798B218;
  v20 = [v17 objectForKeyedSubscript:*off_1E798B218];
  v21 = [v18 objectForKeyedSubscript:v19];
  FigCaptureFrontCameraRotationAngle(v21, v22);
  if (!CGFloatNearlyEqualToFloatWithTolerance())
  {
    v23 = 0;
    goto LABEL_24;
  }

  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v20];
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __145__BWMultiCamClientCompositingNode__updateOutputSampleBufferDetectedFaces_withSecondarySampleBufferDetectedFaces_compositionPictureInPictureRect___block_invoke;
  v106[3] = &unk_1E799E0C8;
  v106[9] = v14;
  *&v106[5] = detectedFaces;
  *&v106[6] = rect;
  *&v106[7] = a6;
  *&v106[8] = a7;
  v106[4] = self;
  v24 = [v23 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v106)}];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v32 = OUTLINED_FUNCTION_8_66(v24, v25, v26, v27, v28, v29, v30, v31, v19, v17, faces, a2, v74, v76, v77, v79, v80, v82, *&v83.a, *&v83.b, *&v83.c, *&v83.d, *&v83.tx, *&v83.ty, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
  if (!v32)
  {
    goto LABEL_17;
  }

  v33 = v32;
  v34 = *v103;
  v78 = *(MEMORY[0x1E695F050] + 16);
  v81 = *MEMORY[0x1E695F050];
  v75 = xmmword_1AD046840;
  v35 = v15 / a6;
  do
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v103 != v34)
      {
        objc_enumerationMutation(v21);
      }

      v37 = *(*(&v102 + 1) + 8 * i);
      v84 = v81;
      v85 = v78;
      CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
      if (CGRectIfPresent)
      {
        v46 = FigCaptureDenormalizeCropRect(v15, *&v84, *(&v84 + 1), *&v85, *(&v85 + 1));
        *&v84 = v47;
        *(&v84 + 1) = v48;
        *&v85 = v49;
        *(&v85 + 1) = v50;
        v52 = FigCaptureFrontCameraRotationAngle(v46, v51);
        if (v52 == 90)
        {
          v54 = *(&v84 + 1);
          v55 = *&v84;
          v56 = *(&v85 + 1);
          v57 = *&v85;
          goto LABEL_13;
        }

        v58 = FigCaptureFrontCameraRotationAngle(v52, v53);
        v55 = *(&v84 + 1);
        v54 = *&v84;
        v57 = *(&v85 + 1);
        v56 = *&v85;
        if (v58 == 180)
        {
          v83.b = 0.0;
          v83.c = 0.0;
          v83.a = 1.0;
          *&v83.d = v75;
          v83.ty = SHIDWORD(v15);
          *&v54 = CGRectApplyAffineTransform(*&v54, &v83);
LABEL_13:
          *&v84 = v54;
          *(&v84 + 1) = v55;
          *&v85 = v56;
          *(&v85 + 1) = v57;
        }

        FigCaptureMetadataUtilitiesNormalizeCropRect(v54, v55, v56, v57, v35, v35);
        *&v85 = v59;
        *(&v85 + 1) = v60;
        *&v84 = detectedFaces + v61;
        *(&v84 + 1) = rect + v62;
        FigCaptureNormalizeCropRect(v14, detectedFaces + v61, rect + v62, v59, v60);
        *&v84 = v63;
        *(&v84 + 1) = v64;
        *&v85 = v65;
        *(&v85 + 1) = v66;
        v67 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v37];
        FigCFDictionarySetCGRect();
        [v23 addObject:v67];

        continue;
      }
    }

    v33 = OUTLINED_FUNCTION_8_66(CGRectIfPresent, v39, v40, v41, v42, v43, v44, v45, v70, v71, v72, target, v75, *(&v75 + 1), v78, *(&v78 + 1), v81, *(&v81 + 1), *&v83.a, *&v83.b, *&v83.c, *&v83.d, *&v83.tx, *&v83.ty, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
  }

  while (v33);
LABEL_17:
  [v71 setObject:v23 forKeyedSubscript:v70];
  v68 = CMGetAttachment(target, @"DetectedFacesArrayHasBeenStabilized", 0);
  v69 = CMGetAttachment(v72, @"DetectedFacesArrayHasBeenStabilized", 0);
  if ([v23 count] && (objc_msgSend(v68, "BOOLValue") & 1) == 0 && objc_msgSend(v69, "BOOLValue"))
  {
    CMSetAttachment(target, @"DetectedFacesArrayHasBeenStabilized", *MEMORY[0x1E695E4D0], 1u);
  }

  else if (![v23 count])
  {
    if ([v68 BOOLValue])
    {
      CMRemoveAttachment(target, @"DetectedFacesArrayHasBeenStabilized");
    }
  }

LABEL_24:
}

void __145__BWMultiCamClientCompositingNode__updateOutputSampleBufferDetectedFaces_withSecondarySampleBufferDetectedFaces_compositionPictureInPictureRect___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E695F050];
  v10 = *(MEMORY[0x1E695F050] + 16);
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 76);
    v5 = *&v9 * v3;
    v6 = *(&v9 + 1) * v4;
    v7 = *&v10 * v3;
    v8 = *(&v10 + 1) * v4;
    v11.origin.x = v5;
    v11.origin.y = v6;
    v11.size.width = v7;
    v11.size.height = v8;
    if (CGRectIntersectsRect(v11, *(a1 + 40)))
    {
      v12.origin.x = v5;
      v12.origin.y = v6;
      v12.size.width = v7;
      v12.size.height = v8;
      CGRectIntersection(*(a1 + 40), v12);
    }
  }
}

@end