@interface BWRemoteQueueSinkNode
+ (void)initialize;
- (BOOL)videoHDRImageStatisticsEnabled;
- (BWRemoteQueueSinkNode)initWithMediaType:(unsigned int)type clientAuditToken:(id *)token sinkID:(id)d cameraInfoByPortType:(id)portType;
- (NSArray)movieLevelMetadata;
- (uint64_t)_finishRenderingSampleBufferUsingTheLocalQueue:(uint64_t)result;
- (uint64_t)_finishRenderingSampleBufferUsingTheRemoteCaptureStack:(int)stack isDroppedSample:;
- (uint64_t)_sendAndClearCoreAnalyticsData;
- (void)_handlePeerTerminated;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)registerSurfacesFromSourcePool:(id)pool;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setClientVideoRetainedBufferCount:(int)count;
- (void)setRequestedBufferAttachmentsTrie:(id)trie;
- (void)setSceneStabilityMetadataEnabled:(BOOL)enabled;
- (void)setVideoHDRImageStatisticsEnabled:(BOOL)enabled;
- (void)updateClientAuditToken:(id *)token;
@end

@implementation BWRemoteQueueSinkNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWRemoteQueueSinkNode)initWithMediaType:(unsigned int)type clientAuditToken:(id *)token sinkID:(id)d cameraInfoByPortType:(id)portType
{
  v8 = *&type;
  v26.receiver = self;
  v26.super_class = BWRemoteQueueSinkNode;
  v9 = [(BWSinkNode *)&v26 initWithSinkID:d];
  if (!v9)
  {
    return v9;
  }

  v10 = [[BWNodeInput alloc] initWithMediaType:v8 node:v9];
  v11 = MEMORY[0x1E6960C70];
  if (v8 == 1885564004)
  {
    v14 = objc_alloc_init(BWPointCloudFormatRequirements);
    [(BWPointCloudFormatRequirements *)v14 setSupportedDataFormats:&unk_1F224A158];
    [(BWPointCloudFormatRequirements *)v14 setMemoryPoolUseAllowed:0];
    [(BWNodeInput *)v10 setFormatRequirements:v14];

    v9[209] = 1;
    v9[284] = 1;
    *(v9 + 70) = 1;
    [*(v9 + 1) setRetainedBufferCount:1];
    *(v9 + 20) = *v11;
    *(v9 + 42) = *(v11 + 2);
    goto LABEL_9;
  }

  if (v8 == 1936684398)
  {
    v9[210] = 1;
    goto LABEL_7;
  }

  if (v8 != 1986618469)
  {
LABEL_7:
    v9[284] = 0;
    goto LABEL_9;
  }

  v12 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v12 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedCPUAccess]];
  [(BWVideoFormatRequirements *)v12 setSupportedPixelFormats:&unk_1F224A140];
  [(BWVideoFormatRequirements *)v12 setMemoryPoolUseAllowed:0];
  [(BWNodeInput *)v10 setFormatRequirements:v12];

  v9[208] = 1;
  v9[284] = 1;
  *(v9 + 70) = 1;
  [*(v9 + 1) setRetainedBufferCount:1];
  *(v9 + 20) = *v11;
  *(v9 + 42) = *(v11 + 2);
  v9[306] = 1;
  v13 = *&token->var0[4];
  v24 = *token->var0;
  v25 = v13;
  v9[305] = FigCaptureClientIsContinuityCapture(&v24) != 0;
LABEL_9:
  v9[408] = 0;
  v15 = *&token->var0[4];
  v24 = *token->var0;
  v25 = v15;
  *(v9 + 86) = FigCaptureGetPIDFromAuditToken(&v24);
  v16 = *&token->var0[4];
  *(v9 + 348) = *token->var0;
  *(v9 + 364) = v16;
  v17 = *&token->var0[4];
  v24 = *token->var0;
  v25 = v17;
  IsRunningInMediaserverd = FigCaptureClientIsRunningInMediaserverd(&v24);
  v19 = 1;
  if (!IsRunningInMediaserverd)
  {
    v20 = *&token->var0[4];
    v24 = *token->var0;
    v25 = v20;
    v19 = FigCaptureClientIsRunningInCameracaptured(&v24) != 0;
  }

  v9[380] = v19;
  *(v9 + 28) = FigSimpleMutexCreate();
  v9[248] = 0;
  v9[288] = 0;
  *(v9 + 57) = objc_alloc_init(BWVideoDataOutputAnalyticsPayload);
  v21 = *v11;
  *(v9 + 29) = *v11;
  v22 = *(v11 + 2);
  *(v9 + 60) = v22;
  *(v9 + 20) = v21;
  *(v9 + 42) = v22;
  [v9 addInput:v10];

  v9[285] = 0;
  v9[381] = 1;
  v9[488] = 0;
  v9[489] = 0;
  *(v9 + 62) = objc_alloc_init(BWMovieLevelMetadataForProResRaw);
  *(v9 + 63) = [portType copy];
  *(v9 + 64) = FigSimpleMutexCreate();
  [v9 setSupportsLiveReconfiguration:1];
  [v9 setSupportsPrepareWhileRunning:1];
  return v9;
}

- (void)dealloc
{
  remoteQueueSender = self->_remoteQueueSender;
  if (remoteQueueSender)
  {
    CFRelease(remoteQueueSender);
  }

  sharedMemoryPool = self->_sharedMemoryPool;
  if (sharedMemoryPool)
  {
    CFRelease(sharedMemoryPool);
  }

  sharedMemoryPoolCFAllocator = self->_sharedMemoryPoolCFAllocator;
  if (sharedMemoryPoolCFAllocator)
  {
    CFRelease(sharedMemoryPoolCFAllocator);
  }

  localQueue = self->_localQueue;
  if (localQueue)
  {
    CFRelease(localQueue);
  }

  makerNoteKeySpec = self->_makerNoteKeySpec;
  if (makerNoteKeySpec)
  {
    CFRelease(makerNoteKeySpec);
  }

  cachedFormatDescription = self->_cachedFormatDescription;
  if (cachedFormatDescription)
  {
    CFRelease(cachedFormatDescription);
  }

  FigSimpleMutexDestroy();

  [(BWRemoteQueueSinkNode *)self _sendAndClearCoreAnalyticsData];
  FigSimpleMutexDestroy();
  v9.receiver = self;
  v9.super_class = BWRemoteQueueSinkNode;
  [(BWSinkNode *)&v9 dealloc];
}

- (void)registerSurfacesFromSourcePool:(id)pool
{
  if (!self->_clientIsCaptureServerDaemon)
  {
    v5[5] = v3;
    v5[6] = v4;
    [(BWRemoteQueueSinkNode *)self registerSurfacesFromSourcePool:v5, pool];
  }
}

- (void)updateClientAuditToken:(id *)token
{
  v5 = *&token->var0[4];
  v11 = *token->var0;
  v12 = v5;
  self->_receiverPID = FigCaptureGetPIDFromAuditToken(&v11);
  v6 = *&token->var0[4];
  *self->_receiverAuditToken.val = *token->var0;
  *&self->_receiverAuditToken.val[4] = v6;
  v7 = *&token->var0[4];
  v11 = *token->var0;
  v12 = v7;
  if (FigCaptureClientIsRunningInMediaserverd(&v11))
  {
    v8 = 1;
  }

  else
  {
    v9 = *&token->var0[4];
    v11 = *token->var0;
    v12 = v9;
    v8 = FigCaptureClientIsRunningInCameracaptured(&v11) != 0;
  }

  self->_clientIsCaptureServerDaemon = v8;
  v10 = *&token->var0[4];
  v11 = *token->var0;
  v12 = v10;
  self->_attachDetectedObjectsInfo = FigCaptureClientIsContinuityCapture(&v11) != 0;
}

- (void)setClientVideoRetainedBufferCount:(int)count
{
  if (self->_clientVideoRetainedBufferCount != count)
  {
    self->_clientVideoRetainedBufferCount = count;
    [(BWNodeInput *)self->super.super._input setRetainedBufferCount:?];
  }
}

- (void)setSceneStabilityMetadataEnabled:(BOOL)enabled
{
  stabilityMonitor = self->_stabilityMonitor;
  if (enabled)
  {
    if (stabilityMonitor)
    {
      return;
    }

    v5 = objc_alloc_init(BWSceneStabilityMonitor);
  }

  else
  {
    if (!stabilityMonitor)
    {
      return;
    }

    v5 = 0;
  }

  self->_stabilityMonitor = v5;
}

- (void)setRequestedBufferAttachmentsTrie:(id)trie
{
  requestedBufferAttachmentsTrie = self->_requestedBufferAttachmentsTrie;
  self->_requestedBufferAttachmentsTrie = trie;
  if (trie)
  {
    CFRetain(trie);
  }

  if (requestedBufferAttachmentsTrie)
  {

    CFRelease(requestedBufferAttachmentsTrie);
  }
}

- (void)setVideoHDRImageStatisticsEnabled:(BOOL)enabled
{
  FigSimpleMutexLock();
  self->_videoHDRImageStatisticsEnabled = enabled;

  FigSimpleMutexUnlock();
}

- (BOOL)videoHDRImageStatisticsEnabled
{
  FigSimpleMutexLock();
  videoHDRImageStatisticsEnabled = self->_videoHDRImageStatisticsEnabled;
  FigSimpleMutexUnlock();
  return videoHDRImageStatisticsEnabled;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v8.receiver = self;
  v8.super_class = BWRemoteQueueSinkNode;
  [(BWNode *)&v8 prepareForCurrentConfigurationToBecomeLive];
  if (!self->_mediaTypeIsAudio && !self->_frameCounter)
  {
    self->_frameCounter = -[FigCaptureFrameCounter initWithTitle:]([FigCaptureFrameCounter alloc], "initWithTitle:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", -[BWNode name](self, "name"), -[BWSinkNode sinkID](self, "sinkID")]);
  }

  if (self->_mediaTypeIsVideo)
  {
    self->_proresRawVideo = FigCapturePixelFormatIsPackedBayerRaw([(BWVideoFormat *)[(BWNodeInputMediaProperties *)[(BWNodeInput *)self->super.super._input primaryMediaProperties] resolvedVideoFormat] pixelFormat]);
  }

  if (self->_clientIsCaptureServerDaemon)
  {
    self->_numberOfMediaBuffersLocallyEnqueued = 0;
    self->_numberOfMediaBuffersLocallyDequeued = 0;
    if (!self->_localQueue)
    {
      if (FigLocalQueueCreate(*MEMORY[0x1E695E480], 14, &self->_localQueue))
      {
        [BWRemoteQueueSinkNode prepareForCurrentConfigurationToBecomeLive];
      }

      else
      {
        [(BWRemoteQueueSinkNodeDelegate *)self->_delegate remoteQueueSinkNode:self localQueueBecameReady:self->_localQueue];
      }
    }
  }

  else
  {
    v3 = *&self->_receiverAuditToken.val[4];
    v7[0] = *self->_receiverAuditToken.val;
    v7[1] = v3;
    if (!FigCaptureAuditTokenIsValid(v7))
    {
      [(BWRemoteQueueSinkNodeDelegate *)self->_delegate remoteQueueSinkNode:self dumpStateForReason:@"rqsn_invalidClientToken"];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"RemoteQueueSinkNode needs to have a valid client token before prepareForCurrentConfigurationToBecomeLive can be called" userInfo:0]);
    }

    if (!self->_remoteQueueSender)
    {
      if (self->_discardsLateSampleBuffers)
      {
        v4 = 1;
      }

      else
      {
        v4 = 100;
      }

      LODWORD(v7[0]) = 100;
      *(v7 + 4) = v4;
      if (self->_proresRawVideo)
      {
        v5 = 0x100000;
      }

      else
      {
        v5 = 0x80000;
      }

      v6 = *MEMORY[0x1E695E480];
      if (FigSharedMemPoolCreate(*MEMORY[0x1E695E480], v5, 0, 0, &self->_sharedMemoryPool))
      {
        [BWRemoteQueueSinkNode prepareForCurrentConfigurationToBecomeLive];
      }

      else
      {
        self->_sharedMemoryPoolCFAllocator = FigSharedMemPoolAllocatorCreate(v6, self->_sharedMemoryPool);
        if (FigRemoteQueueSenderCreate(v6, self->_receiverPID, self->_sharedMemoryPool, v7, 3uLL, 14, &self->_remoteQueueSender))
        {
          [BWRemoteQueueSinkNode prepareForCurrentConfigurationToBecomeLive];
        }

        else
        {
          [(BWRemoteQueueSinkNodeDelegate *)self->_delegate remoteQueueSinkNode:self queueBecameReady:self->_remoteQueueSender];
        }
      }
    }
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (self->_remoteQueueSender)
  {
    v9 = 1;
    if (!format)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = self->_localQueue != 0;
    if (!format)
    {
      goto LABEL_13;
    }
  }

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (self->_remoteQueueSender)
        {
          v13 = 5;
          v15 = 0;
          dCopy2 = 0;
          v16 = 0;
          v19 = 0;
          dCopy = d;
          formatDescription = [format formatDescription];
          if (FigRemoteOperationSenderEnqueueOperation(self->_remoteQueueSender, &v13) == -16665)
          {
            [(BWRemoteQueueSinkNode *)self _handlePeerTerminated];
          }
        }

        else if (self->_localQueue)
        {
          formatDescription2 = [format formatDescription];
          localQueue = self->_localQueue;
          v13 = 5;
          dCopy2 = d;
          v15 = formatDescription2;
          FigLocalQueueEnqueue(localQueue, &v13, 0);
        }
      }
    }
  }

LABEL_13:
  if (!self->_mediaTypeIsAudio)
  {
    [(FigCaptureFrameCounter *)self->_frameCounter start];
  }

  v12.receiver = self;
  v12.super_class = BWRemoteQueueSinkNode;
  [(BWSinkNode *)&v12 configurationWithID:d updatedFormat:format didBecomeLiveForInput:input];
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  mediaTypeIsAudio = self->_mediaTypeIsAudio;
  if (d)
  {
    if ((mediaTypeIsAudio & 1) == 0)
    {
      [(FigCaptureFrameCounter *)self->_frameCounter stop];
    }
  }

  else
  {
    [BWRemoteQueueSinkNode didReachEndOfDataForConfigurationID:self input:?];
  }

  v8.receiver = self;
  v8.super_class = BWRemoteQueueSinkNode;
  [(BWSinkNode *)&v8 didReachEndOfDataForConfigurationID:d input:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = CMGetAttachment(buffer, *MEMORY[0x1E6960498], 0);
  memset(&v84, 0, sizeof(v84));
  CMSampleBufferGetPresentationTimeStamp(&v84, buffer);
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  key = *off_1E798A3C8;
  v8 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  v10 = v8;
  if (!self->_mediaTypeIsVideo || v6 != 0 || v8 == 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v8 objectForKeyedSubscript:*off_1E798B540];
    BWActiveDeviceTypeFromPortType(v13, v14);
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    time[0] = v84;
    CMTimeGetSeconds(time);
    IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
    IOSurfaceGetID(IOSurface);
    kdebug_trace();
  }

  if (self->_remoteQueueSender || self->_localQueue)
  {
    if (!self->_mediaTypeIsAudio && !v6)
    {
      frameCounter = self->_frameCounter;
      time[0] = v84;
      [(FigCaptureFrameCounter *)frameCounter incrementWithPTS:time];
    }

    if (self->_mediaTypeIsVideo && v6 == 0)
    {
      totalNumberOfFrames = self->_totalNumberOfFrames;
      self->_totalNumberOfFrames = totalNumberOfFrames + 1;
      if (v13)
      {
        [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setDeviceMask:[(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload deviceMask]| BWActiveDeviceTypeFromPortType(v13, v9)];
      }

      v19 = CMGetAttachment(buffer, key, 0);
      if (v19)
      {
        time[0].value = 0;
        v20 = *off_1E798B538;
        if (CFDictionaryGetValueIfPresent(v19, *off_1E798B538, time))
        {
          v21 = *off_1E798A318;
          v22 = CMGetAttachment(buffer, *off_1E798A318, 0);
          if (v22)
          {
            v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v22];
          }

          else
          {
            v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v24 = v23;
          [v24 setObject:time[0].value forKeyedSubscript:v20];
          CMSetAttachment(buffer, v21, v24, 1u);
        }
      }

      if (!totalNumberOfFrames)
      {
        if (dword_1ED844230)
        {
          LODWORD(v76.value) = 0;
          LOBYTE(type.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        self->_firstPTS = v84;
        [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setClientApplicationID:self->_clientApplicationID, *v71, v72];
        FormatDescription = CMSampleBufferGetFormatDescription(buffer);
        Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
        MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
        if (v13)
        {
          [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setDevicePosition:BWCaptureDevicePositionFromPortType(v13, v28)];
        }

        [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setHeight:HIDWORD(Dimensions)];
        [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setWidth:Dimensions];
        v30 = CMSampleBufferGetImageBuffer(buffer);
        if (v30)
        {
          v31 = v30;
          v32 = [CMGetAttachment(v30 @"MirroredHorizontal"];
          v33 = v32 ^ [CMGetAttachment(v31 @"MirroredVertical"];
        }

        else
        {
          v33 = 0;
        }

        [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setVideoMirrored:v33];
        v34 = CMSampleBufferGetImageBuffer(buffer);
        if (v34 && (v35 = CVBufferCopyAttachments(v34, kCVAttachmentMode_ShouldPropagate)) != 0)
        {
          v36 = v35;
          IsHDR = BWColorSpacePropertiesIsHDR([BWVideoFormat colorSpacePropertiesForPixelBufferAttachments:v35]);
          CFRelease(v36);
        }

        else
        {
          IsHDR = 0;
        }

        [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setHdrVideo:IsHDR];
        if (ImageBuffer)
        {
          [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setColorSpace:BWPixelBufferColorSpace(ImageBuffer)];
          [(BWVideoDataOutputAnalyticsPayload *)self->_analyticsPayload setPixelFormat:MediaSubType];
        }

        self->_proresVideo = FigCapturePixelFormatIsUsedForProRes(MediaSubType);
      }

      if (self->_proresRawVideo)
      {
        FigSimpleMutexLock();
        FigGetUpTimeNanoseconds();
        [(BWMovieLevelMetadataForProResRaw *)self->_movieLevelMetadataForProResRaw reset];
        [(BWMovieLevelMetadataForProResRaw *)self->_movieLevelMetadataForProResRaw updateMetadataFromSampleBuffer:buffer withCameraInfo:[(NSDictionary *)self->_cameraInfoByPortType objectForKeyedSubscript:v13]];
        FigGetUpTimeNanoseconds();
        if (ImageBuffer)
        {
          IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw(PixelFormatType);
          if ([(NSDictionary *)self->_cameraInfoByPortType objectForKeyedSubscript:v13])
          {
            if (IsPackedBayerRaw)
            {
              v39 = CMGetAttachment(buffer, *off_1E798D448, 0);
              BWUpdateFrameLevelMetadataForProResRaw(buffer, v10, [(NSDictionary *)self->_cameraInfoByPortType objectForKeyedSubscript:v13], v39);
            }
          }
        }

        FigSimpleMutexUnlock();
      }

      if (self->_removeCameraIntrinsicMatrixAttachment)
      {
        CMRemoveAttachment(buffer, *MEMORY[0x1E6960470]);
      }

      if (self->_attachPanoramaMetadata)
      {
        ClientSpecifiedMetadataForPanorama = FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForPanorama(buffer, self->_panoramaRequiresLTMLocking);
        if (ClientSpecifiedMetadataForPanorama)
        {
          v41 = ClientSpecifiedMetadataForPanorama;
          v42 = *off_1E798A318;
          v43 = CMGetAttachment(buffer, *off_1E798A318, 0);
          if (v43)
          {
            v44 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v43];
          }

          else
          {
            v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v45 = v44;
          [v45 addEntriesFromDictionary:v41];
          CMSetAttachment(buffer, v42, v45, 1u);
          CFRelease(v41);
        }
      }

      if (ImageBuffer)
      {
        if (self->_stabilityMonitor)
        {
          v46 = CMGetAttachment(buffer, key, 0);
          [v46 objectForKeyedSubscript:*off_1E798B070];
          stabilityMonitor = self->_stabilityMonitor;
          CMSampleBufferGetPresentationTimeStamp(time, buffer);
          [(BWSceneStabilityMonitor *)stabilityMonitor calculateStabilityWithPixelBuffer:ImageBuffer pts:time metadataDictionary:v46 forceSceneMotion:0];
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", -[BWSceneStabilityMonitor isStable](self->_stabilityMonitor, "isStable")), *off_1E798A4A8}];
          v49 = MEMORY[0x1E696AD98];
          [(BWSceneStabilityMonitor *)self->_stabilityMonitor stabilityMetric];
          [dictionary setObject:objc_msgSend(v49 forKeyedSubscript:{"numberWithFloat:"), *off_1E798A4A0}];
        }

        else
        {
          dictionary = 0;
        }

        if (self->_requestedBufferAttachmentsTrie)
        {
          v50 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], buffer, 1u);
          if (v50)
          {
            v51 = v50;
            if (!dictionary)
            {
              dictionary = [MEMORY[0x1E695DF90] dictionary];
            }

            [(FigCaptureTrie *)self->_requestedBufferAttachmentsTrie extractFrom:v51 writeInto:dictionary assumeMutable:0 overwrite:0];
          }
        }

        if ([(BWRemoteQueueSinkNode *)self videoHDRImageStatisticsEnabled])
        {
          v52 = BWGetHDRImageStatisticsDictFromSampleBuffer(buffer);
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v53 = [v52 countByEnumeratingWithState:&v79 objects:v78 count:16];
          if (v53)
          {
            v54 = v53;
            v55 = *v80;
            do
            {
              for (i = 0; i != v54; ++i)
              {
                if (*v80 != v55)
                {
                  objc_enumerationMutation(v52);
                }

                CVBufferSetAttachment(ImageBuffer, *(*(&v79 + 1) + 8 * i), [v52 objectForKeyedSubscript:*(*(&v79 + 1) + 8 * i)], kCVAttachmentMode_ShouldPropagate);
              }

              v54 = [v52 countByEnumeratingWithState:&v79 objects:v78 count:16];
            }

            while (v54);
          }
        }

        if (self->_frameSenderSupportEnabled)
        {
          frameSender = self->_frameSender;
          if (!frameSender)
          {
            v58 = getpid();
            receiverPID = self->_receiverPID;
            v60 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_receiverAuditToken length:32];
            if (self->_receiverPID == v58)
            {
              v58 = 0;
              v61 = 0;
            }

            else
            {
              memset(time, 0, 32);
              v61 = [MEMORY[0x1E695DEF0] dataWithBytes:time length:{32, FigCaptureGetCurrentProcessAuditToken(time)}];
            }

            frameSender = [[CMCaptureFrameSenderService alloc] initWithEndpointType:@"VideoDataOutput" endpointPID:receiverPID endpointProxyPID:v58 endpointAuditToken:v60 endpointProxyAuditToken:v61 endpointCameraUniqueID:@"unknown"];
            self->_frameSender = frameSender;
          }

          [(CMCaptureFrameSenderService *)frameSender sendFrame:buffer];
        }

        memset(&v77, 0, sizeof(v77));
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v77, HostTimeClock);
        if (*MEMORY[0x1E695FF58] == 1)
        {
          time[0] = v84;
          CMTimeGetSeconds(time);
          time[0] = v77;
          type = v84;
          CMTimeSubtract(&v76, time, &type);
          time[0] = v76;
          CMTimeGetSeconds(time);
          kdebug_trace();
        }
      }

      else
      {
        dictionary = 0;
      }

      sharedMemoryPoolCFAllocator = self->_sharedMemoryPoolCFAllocator;
      cameraSupportsFlash = self->_cameraSupportsFlash;
      attachDetectedObjectsInfo = self->_attachDetectedObjectsInfo;
      disableFlatDictionaryVDOMetadata = self->_disableFlatDictionaryVDOMetadata;
      [(BWGraph *)[(BWNode *)self graph] clientExpectsCameraMountedInLandscapeOrientation];
      if (CMGetAttachment(buffer, key, 0))
      {
        MetadataAttachments = FigCaptureMetadataUtilitiesCreateMetadataAttachments(buffer, 1785096550, 0, 0, cameraSupportsFlash, 0, 0, 0, 0, attachDetectedObjectsInfo, disableFlatDictionaryVDOMetadata, 0, 1, 1, 1, dictionary, 0, 0, 0, 0, 0);
        if (disableFlatDictionaryVDOMetadata)
        {
          MakerNoteFlatDictionary = 0;
        }

        else
        {
          MakerNoteFlatDictionary = FigCaptureMetadataUtilitiesCreateMakerNoteFlatDictionary(buffer, *MEMORY[0x1E695E480], sharedMemoryPoolCFAllocator, &self->_makerNoteKeySpec);
        }

        CMRemoveAllAttachments(buffer);
        CMSetAttachments(buffer, MetadataAttachments, 1u);
        if (MetadataAttachments)
        {
          CFRelease(MetadataAttachments);
        }

        if ((disableFlatDictionaryVDOMetadata & 1) == 0 && MakerNoteFlatDictionary && self->_makerNoteKeySpec)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionaryAddValue(Mutable, *off_1E798D2F8, self->_makerNoteKeySpec);
          CFDictionaryAddValue(Mutable, *off_1E798D2F0, MakerNoteFlatDictionary);
          CMSetAttachment(buffer, *MEMORY[0x1E696DE30], Mutable, 1u);
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          CFRelease(MakerNoteFlatDictionary);
        }
      }
    }

    if (!v6)
    {
      if (!self->_didNotifyFirstFrame)
      {
        [(BWRemoteQueueSinkNodeDelegate *)self->_delegate remoteQueueSinkNodeDidDeliverFirstVideoFrame:self];
        self->_didNotifyFirstFrame = 1;
      }

      if (!self->_cachedFormatDescription)
      {
        v70 = CMSampleBufferGetFormatDescription(buffer);
        if (v70)
        {
          v70 = CFRetain(v70);
        }

        self->_cachedFormatDescription = v70;
      }
    }

    BWSampleBufferRemoveAllAttachedMedia(buffer);
    BWNodeSanitizeMetadataIfNecessary(buffer);
    if (self->_remoteQueueSender)
    {
      if ([(BWRemoteQueueSinkNode *)self _finishRenderingSampleBufferUsingTheRemoteCaptureStack:buffer isDroppedSample:v6 != 0])
      {
        return;
      }

      goto LABEL_109;
    }

    if (!self->_localQueue || ![(BWRemoteQueueSinkNode *)self _finishRenderingSampleBufferUsingTheLocalQueue:buffer])
    {
LABEL_109:
      self->_lastPTS = v84;
    }
  }
}

- (uint64_t)_finishRenderingSampleBufferUsingTheRemoteCaptureStack:(int)stack isDroppedSample:
{
  if (!self)
  {
    return 0;
  }

  v30 = 0;
  v29 = 0u;
  v28 = 0u;
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (ImageBuffer)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
    IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw(PixelFormatType);
  }

  else
  {
    IsPackedBayerRaw = 0;
  }

  v27[0] = 6;
  v27[1] = stack ^ 1;
  *&v29 = sbuf;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v10 addObject:*off_1E798A3C8];
  [v10 addObject:@"ReactionEffectComplexity"];
  if (IsPackedBayerRaw)
  {
    [v10 addObject:*MEMORY[0x1E6966198]];
    [v10 addObject:*MEMORY[0x1E69661E0]];
    [v10 addObject:*MEMORY[0x1E69661D8]];
    [v10 addObject:*MEMORY[0x1E69661C8]];
    [v10 addObject:*MEMORY[0x1E69661D0]];
    [v10 addObject:*MEMORY[0x1E69661A8]];
    [v10 addObject:*MEMORY[0x1E69661B8]];
    [v10 addObject:*MEMORY[0x1E69661A0]];
    [v10 addObject:*MEMORY[0x1E69661F8]];
    [v10 addObject:*MEMORY[0x1E69661B0]];
  }

  v30 = v10;
  v11 = FigRemoteOperationSenderEnqueueOperation(*(self + 216), v27);
  if (v11 != -16669)
  {
    v12 = v11;
    if (v11 == -16665)
    {
      [(BWRemoteQueueSinkNode *)self _handlePeerTerminated];
      return 4294950631;
    }

    return v12;
  }

  if (stack)
  {
    return 4294950627;
  }

  if (*(self + 284) != 1)
  {
    [BWRemoteQueueSinkNode _finishRenderingSampleBufferUsingTheRemoteCaptureStack:isDroppedSample:];
    return 4294950627;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v13 = *(self + 216);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __96__BWRemoteQueueSinkNode__finishRenderingSampleBufferUsingTheRemoteCaptureStack_isDroppedSample___block_invoke;
  v22[3] = &unk_1E799DBB0;
  v22[4] = &v23;
  FigRemoteOperationSenderResetWithApplier(v13, v22);
  if (*(v24 + 24) == 1)
  {
    cf = 0;
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    v17 = *(self + 320);
    BWSampleBufferCreateForDroppedFrame(&v17, FormatDescription, @"LateFrame", &cf);
    LODWORD(v17.value) = 3;
    memset(&v17.value + 4, 0, 20);
    v19 = 0;
    v20 = 0;
    v18 = cf;
    FigRemoteOperationSenderEnqueueOperation(*(self + 216), &v17);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  v15 = FigRemoteOperationSenderEnqueueOperation(*(self + 216), v27);
  v12 = v15;
  if (v15)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v15, v3, v17.value, *&v17.timescale, LODWORD(v17.epoch), v18, v19, v20);
  }

  _Block_object_dispose(&v23, 8);
  return v12;
}

uint64_t __96__BWRemoteQueueSinkNode__finishRenderingSampleBufferUsingTheRemoteCaptureStack_isDroppedSample___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Type = FigRemoteOperationGetType(a4);
  if (Type == 6)
  {
    goto LABEL_4;
  }

  if (Type != 5)
  {
    if (Type != 3)
    {
      return 0;
    }

LABEL_4:
    result = 1;
    if (*(a4 + 16) != 1)
    {
      return result;
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return 1;
}

void __72__BWRemoteQueueSinkNode__finishRenderingSampleBufferUsingTheLocalQueue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ++*(*(a1 + 32) + 268);
  FigMemoryBarrier();
  if (*(*(a1 + 32) + 268) == *(*(a1 + 32) + 264))
  {
    v6 = *(a3 + 16);
    *&v9.value = *a2;
    LODWORD(v9.epoch) = *(a2 + 16);
    v6(a3, &v9);
  }

  else
  {
    cf = 0;
    CMSampleBufferGetPresentationTimeStamp(&v9, *(a2 + 4));
    FormatDescription = CMSampleBufferGetFormatDescription(*(a2 + 4));
    BWSampleBufferCreateForDroppedFrame(&v9, FormatDescription, @"LateFrame", &cf);
    v8 = *(a3 + 16);
    LODWORD(v9.value) = 3;
    *(&v9.value + 4) = cf;
    *&v9.flags = 0;
    v8(a3, &v9);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  mediaTypeIsVideo = self->_mediaTypeIsVideo;
  if (!mediaTypeIsVideo && !self->_mediaTypeIsPointCloud)
  {
    return;
  }

  cf = 0;
  cachedFormatDescription = self->_cachedFormatDescription;
  if (!cachedFormatDescription)
  {
    formatDescriptionOut = 0;
    if (!mediaTypeIsVideo)
    {
LABEL_6:
      if (self->_mediaTypeIsPointCloud)
      {
        CMFormatDescriptionCreate(*MEMORY[0x1E695E480], 0x70636C64u, 0, 0, &formatDescriptionOut);
      }

LABEL_11:
      if (!formatDescriptionOut)
      {
        return;
      }

      v9 = self->_mediaTypeIsVideo;
      goto LABEL_13;
    }

LABEL_9:
    liveFormat = [input liveFormat];
    if (liveFormat)
    {
      CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], [liveFormat pixelFormat], objc_msgSend(liveFormat, "width"), objc_msgSend(liveFormat, "height"), 0, &formatDescriptionOut);
    }

    goto LABEL_11;
  }

  formatDescriptionOut = CFRetain(cachedFormatDescription);
  v9 = self->_mediaTypeIsVideo;
  if (!formatDescriptionOut)
  {
    if (!self->_mediaTypeIsVideo)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

LABEL_13:
  if (v9)
  {
    if ([sample reason] == 0x1F219BEF0)
    {
      v11 = &OBJC_IVAR___BWRemoteQueueSinkNode__totalNumberOfISPFramesDropped;
    }

    else
    {
      v11 = &OBJC_IVAR___BWRemoteQueueSinkNode__totalNumberOfISPFramesDropped;
      if ([sample reason] != @"VideoDeviceDiscontinuity" && objc_msgSend(sample, "reason") != @"HighFrameRateAutoFocusDiscontinuity")
      {
        v11 = &OBJC_IVAR___BWRemoteQueueSinkNode__totalNumberOfFramesDropped;
      }
    }

    ++*(&self->super.super.super.isa + *v11);
  }

  if (sample)
  {
    objc_msgSend_pts(sample);
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  BWSampleBufferCreateForDroppedFrame(&v12, formatDescriptionOut, [sample reason], &cf);
  [(BWRemoteQueueSinkNode *)self renderSampleBuffer:cf forInput:input];
  if (cf)
  {
    CFRelease(cf);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }
}

- (NSArray)movieLevelMetadata
{
  array = [MEMORY[0x1E695DEC8] array];
  if (self->_proresRawVideo)
  {
    FigSimpleMutexLock();
    array = [(BWMovieLevelMetadataForProResRaw *)self->_movieLevelMetadataForProResRaw proResRawAugmentedMovieLevelMetadataWithMovieLevelMetadata:array];
    FigSimpleMutexUnlock();
  }

  return array;
}

- (uint64_t)_sendAndClearCoreAnalyticsData
{
  if (result)
  {
    v1 = result;
    time1 = *(result + 464);
    time2 = *(result + 320);
    result = CMTimeCompare(&time1, &time2);
    if ((result & 0x80000000) != 0 || *(v1 + 432))
    {
      time2 = *(v1 + 320);
      v5 = *(v1 + 464);
      CMTimeSubtract(&time1, &time2, &v5);
      CMTimeGetSeconds(&time1);
      [OUTLINED_FUNCTION_0_119() setDuration:?];
      [OUTLINED_FUNCTION_0_119() setNumberOfFrames:?];
      [OUTLINED_FUNCTION_0_119() setNumberOfFramesDropped:?];
      [OUTLINED_FUNCTION_0_119() setNumberOfISPFramesDropped:?];
      [OUTLINED_FUNCTION_0_119() setNominalFramerate:?];
      [OUTLINED_FUNCTION_0_119() setProresVideo:0];
      result = [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", *(v1 + 456)];
      if ((*(v1 + 488) & 1) != 0 || *(v1 + 489) == 1)
      {
        [OUTLINED_FUNCTION_0_119() setProresVideo:1];
        result = [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", *(v1 + 456)];
      }

      v2 = MEMORY[0x1E6960C70];
      v3 = *MEMORY[0x1E6960C70];
      *(v1 + 464) = *MEMORY[0x1E6960C70];
      v4 = *(v2 + 16);
      *(v1 + 480) = v4;
      *(v1 + 320) = v3;
      *(v1 + 336) = v4;
    }
  }

  return result;
}

- (void)_handlePeerTerminated
{
  if (self)
  {
    *(self + 248) = 1;
    FigSimpleMutexLock();
    v2 = *(self + 216);
    if (v2)
    {
      CFRelease(v2);
      *(self + 216) = 0;
    }

    FigSimpleMutexUnlock();
    v3 = *(self + 232);
    if (v3)
    {
      CFRelease(v3);
      *(self + 232) = 0;
    }
  }
}

- (uint64_t)_finishRenderingSampleBufferUsingTheLocalQueue:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (*(result + 284) == 1 && (CMSampleBufferGetImageBuffer(sbuf) || CMSampleBufferGetDataBuffer(sbuf)))
    {
      ++*(v3 + 264);
      FigMemoryBarrier();
      v4 = *(v3 + 256);
      v8 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __72__BWRemoteQueueSinkNode__finishRenderingSampleBufferUsingTheLocalQueue___block_invoke;
      v9[3] = &unk_1E799DBD8;
      v9[4] = v3;
      v6 = 3;
      v7 = sbuf;
      v5 = v9;
    }

    else
    {
      v4 = *(v3 + 256);
      v6 = 3;
      v7 = sbuf;
      v8 = 0;
      v5 = 0;
    }

    return FigLocalQueueEnqueue(v4, &v6, v5);
  }

  return result;
}

- (uint64_t)registerSurfacesFromSourcePool:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  FigSimpleMutexLock();
  if (*(a1 + 216))
  {
    *a2 = MEMORY[0x1E69E9820];
    a2[1] = 3221225472;
    a2[2] = __56__BWRemoteQueueSinkNode_registerSurfacesFromSourcePool___block_invoke;
    a2[3] = &unk_1E799C940;
    a2[4] = a1;
    [a3 enumerateSurfacesUsingBlock:a2];
  }

  return FigSimpleMutexUnlock();
}

- (uint64_t)didReachEndOfDataForConfigurationID:(char)a1 input:(uint64_t)a2 .cold.1(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    [*(a2 + 448) stop];

    *(a2 + 448) = 0;
  }

  *(a2 + 400) = 0;
  [(BWRemoteQueueSinkNode *)a2 _sendAndClearCoreAnalyticsData];
  v3 = *(a2 + 312);
  if (v3)
  {
    CFRelease(v3);
    *(a2 + 312) = 0;
  }

  result = FigRemoteQueueSenderReleaseIOSurfaces(*(a2 + 216), 0);
  *(a2 + 520) = 0;
  return result;
}

- (double)_finishRenderingSampleBufferUsingTheRemoteCaptureStack:isDroppedSample:.cold.1()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

@end