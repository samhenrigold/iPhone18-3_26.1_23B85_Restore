@interface APRKStreamRenderer
- (APRKStreamRenderer)initWithUniqueID:(id)d clientName:(id)name UIController:(OpaqueAPReceiverUIController *)controller useCALayerForMirroring:(BOOL)mirroring;
- (APRKStreamRendererDelegate)delegate;
- (BOOL)_performStartRecordingWithOutputURL:(id)l;
- (BOOL)_performStopRecording;
- (BOOL)_receiverSupportsMirroring;
- (BOOL)_sampleBufferRepresentsKeyFrame:(opaqueCMSampleBuffer *)frame;
- (BOOL)canRecord;
- (BOOL)isActive;
- (BOOL)isMirroringVideoStreamPaused;
- (BOOL)isP2PWiFi;
- (BOOL)isPaused;
- (BOOL)isProtectedMirroring;
- (BOOL)isRecording;
- (BOOL)isWiredLink;
- (BOOL)processAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (BOOL)processStopAudioSessionRequestWithSessionID:(unsigned int)d;
- (BOOL)processStopScreenPresentationWithSessionID:(unsigned int)d;
- (BOOL)processStopVideoPlaybackRequestWithSessionID:(unsigned int)d;
- (BOOL)processVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (BOOL)startRecordingWithOutputURL:(id)l;
- (BOOL)stopRecording;
- (CGSize)videoFrameSize;
- (id)demoDeviceInfo;
- (id)ensembleInfo;
- (id)sampleBufferDelegate;
- (id)videoQueuePerformanceDictionary;
- (int)_enqueueSampleBufferForRecording:(opaqueCMSampleBuffer *)recording isAudioSBuf:(BOOL)buf;
- (int)_enqueueVideoFrameForRendering:(opaqueCMSampleBuffer *)rendering;
- (signed)_ensureFigVideoQueue;
- (unint64_t)currentVideoPlaybackVersion;
- (unsigned)audioSessionCount;
- (unsigned)currentVideoSessionID;
- (unsigned)screenSessionCount;
- (unsigned)videoSessionCount;
- (void)_cleanupInternalPlayer;
- (void)_cleanupPreviousRecordingIfExisting;
- (void)_ensureInternalPlayerFor:(int)for;
- (void)_performUIControllerActionWithBlock:(id)block;
- (void)_registerForFigVideoQueueNotifications;
- (void)_unregisterForFigVideoQueueNotifications;
- (void)_updateStreamingMode;
- (void)dealloc;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)makeNowPlayingRenderer;
- (void)mediaPlayer:(id)player didGenerateFPSSecureStopRecordPayload:(id)payload;
- (void)mediaPlayer:(id)player wantsToPostNotification:(id)notification withPayload:(id)payload;
- (void)mediaPlayer:(id)player wantsToSendUpstreamMessageWithDictionary:(id)dictionary;
- (void)mediaPlayerNeedsTLSInfo:(id)info;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)postVideoV1EventWithType:(const char *)type params:(__CFDictionary *)params;
- (void)processHidePasscodePromptRequest;
- (void)processSenderUIEvent:(id)event;
- (void)processShowPasscodePromptRequest:(id)request;
- (void)processStartAudioSessionRequestWithSessionID:(unsigned int)d isScreenAudio:(BOOL)audio;
- (void)processStartScreenPresentationWithSessionID:(unsigned int)d;
- (void)processStartVideoPlaybackRequestWithWithSessionID:(unsigned int)d version:(unint64_t)version;
- (void)setCanRecord:(BOOL)record;
- (void)setDeferLayerRendering:(BOOL)rendering;
- (void)setDemoDeviceInfo:(id)info;
- (void)setEnsembleInfo:(id)info;
- (void)setIsMirroringAudioStreamPaused:(BOOL)paused;
- (void)setIsMirroringVideoStreamPaused:(BOOL)paused;
- (void)setIsP2PWiFi:(BOOL)fi;
- (void)setIsPaused:(BOOL)paused;
- (void)setIsProtectedMirroring:(BOOL)mirroring;
- (void)setIsWiredLink:(BOOL)link;
- (void)setReceiverNetworkClock:(OpaqueAPSNetworkClock *)clock;
- (void)setSampleBufferDelegate:(id)delegate;
- (void)setSessionReceiverAddress:(OpaqueAPSNetworkAddress *)address;
- (void)setVideoV1Delegate:(id)delegate withDelegateQueue:(id)queue;
- (void)stop;
- (void)updateDisplayInfo;
@end

@implementation APRKStreamRenderer

- (void)dealloc
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterRemoveListener();
  backingUIControllerWeakRef = self->_backingUIControllerWeakRef;
  if (backingUIControllerWeakRef)
  {
    CFRelease(backingUIControllerWeakRef);
    self->_backingUIControllerWeakRef = 0;
  }

  sessionReceiverAddr = self->_sessionReceiverAddr;
  if (sessionReceiverAddr)
  {
    CFRelease(sessionReceiverAddr);
    self->_sessionReceiverAddr = 0;
  }

  receiverNetworkClock = self->_receiverNetworkClock;
  if (receiverNetworkClock)
  {
    CFRelease(receiverNetworkClock);
    self->_receiverNetworkClock = 0;
  }

  v6.receiver = self;
  v6.super_class = APRKStreamRenderer;
  [(APRKStreamRenderer *)&v6 dealloc];
}

- (void)stop
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__APRKStreamRenderer_stop__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(rendererStateUpdateQueue, block);
}

void *__26__APRKStreamRenderer_stop__block_invoke(void *result)
{
  v1 = result;
  v2 = result[4];
  if (*(v2 + 16) == 1)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1)
      {
        return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer stop]_block_invoke", 33554462, "Stop was already called on renderer %{ptr}, but renderer is already stopping. Will do nothing.", v2);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        v2 = v1[4];
        return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer stop]_block_invoke", 33554462, "Stop was already called on renderer %{ptr}, but renderer is already stopping. Will do nothing.", v2);
      }
    }
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v3 = _LogCategory_Initialize(), v2 = v1[4], v3))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer stop]_block_invoke", 33554462, "Stop was called on renderer %{ptr}.", v2);
        v2 = v1[4];
      }
    }

    *(v2 + 16) = 1;
    v4 = v1[4];
    if (v4[33])
    {
      CFRelease(v4[33]);
      *(v1[4] + 264) = 0;
      v4 = v1[4];
    }

    if (v4[34])
    {
      CFRelease(v4[34]);
      *(v1[4] + 272) = 0;
      v4 = v1[4];
    }

    return [(CFTypeRef *)v4 _performUIControllerActionWithBlock:?];
  }

  return result;
}

- (BOOL)startRecordingWithOutputURL:(id)l
{
  lCopy = l;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    absoluteString = [lCopy absoluteString];
    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer startRecordingWithOutputURL:]", 33554482, "Starting recording for renderer %{ptr} with output file %@.", self, absoluteString);
  }

  if ([(APRKStreamRenderer *)self canRecord])
  {
    rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__APRKStreamRenderer_startRecordingWithOutputURL___block_invoke;
    block[3] = &unk_278C627D8;
    v11 = &v12;
    block[4] = self;
    v10 = lCopy;
    dispatch_sync(rendererVideoBufferQueue, block);

    v7 = *(v13 + 24);
  }

  else
  {
    v7 = 0;
    *(v13 + 24) = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7 & 1;
}

void *__50__APRKStreamRenderer_startRecordingWithOutputURL___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _performStartRecordingWithOutputURL:?];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)stopRecording
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer stopRecording]", 33554482, "Stopping recording for renderer %{ptr}.", self);
  }

  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__APRKStreamRenderer_stopRecording__block_invoke;
  block[3] = &unk_278C62828;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(rendererVideoBufferQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__35__APRKStreamRenderer_stopRecording__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _performStopRecording];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)makeNowPlayingRenderer
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKStreamRenderer *)self makeNowPlayingRenderer];
  }

  if (self->_streamRendererMode == 2)
  {

    [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:?];
  }
}

uint64_t __44__APRKStreamRenderer_makeNowPlayingRenderer__block_invoke(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

- (void)updateDisplayInfo
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderer updateDisplayInfo];
  }

  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:?];
}

- (BOOL)isRecording
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__APRKStreamRenderer_isRecording__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererVideoBufferQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canRecord
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__APRKStreamRenderer_canRecord__block_invoke;
  v6[3] = &unk_278C62828;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(rendererStateUpdateQueue, v6);
  LOBYTE(v3) = 0;
  if (*(v8 + 24) == 1)
  {
    v4 = +[APRKStreamRenderingManager sharedInstance];
    v3 = [v4 optimizeAudioRenderingLatency] ^ 1;
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

- (CGSize)videoFrameSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_23EB0AEAE;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__APRKStreamRenderer_videoFrameSize__block_invoke;
  v7[3] = &unk_278C62828;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(rendererVideoBufferQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

__n128 __36__APRKStreamRenderer_videoFrameSize__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 168);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (void)setIsPaused:(BOOL)paused
{
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__APRKStreamRenderer_setIsPaused___block_invoke;
  v6[3] = &unk_278C62A00;
  v6[4] = self;
  pausedCopy = paused;
  dispatch_async(rendererVideoBufferQueue, v6);
  self->_isMirroringAudioStreamPaused = paused;
}

- (BOOL)isPaused
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__APRKStreamRenderer_isPaused__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererVideoBufferQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsMirroringVideoStreamPaused:(BOOL)paused
{
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__APRKStreamRenderer_setIsMirroringVideoStreamPaused___block_invoke;
  v4[3] = &unk_278C62A00;
  v4[4] = self;
  pausedCopy = paused;
  dispatch_async(rendererVideoBufferQueue, v4);
}

void *__54__APRKStreamRenderer_setIsMirroringVideoStreamPaused___block_invoke(void *result)
{
  v1 = result;
  v2 = result[4];
  if (*(v2 + 25) == 1 && (result[5] & 1) == 0)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __54__APRKStreamRenderer_setIsMirroringVideoStreamPaused___block_invoke_cold_1();
    }

    *(v1[4] + 24) = 1;
    result = [v1[4] _performUIControllerActionWithBlock:?];
    v2 = v1[4];
  }

  v3 = *(v1 + 40);
  *(v2 + 25) = v3;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v3 = *(v1 + 40);
    }

    v4 = "un";
    if (v3)
    {
      v4 = "";
    }

    return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer setIsMirroringVideoStreamPaused:]_block_invoke", 33554462, "Mirroring video stream got %spaused for renderer %{ptr}.\n", v4, v1[4]);
  }

  return result;
}

- (BOOL)isMirroringVideoStreamPaused
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__APRKStreamRenderer_isMirroringVideoStreamPaused__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererVideoBufferQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsMirroringAudioStreamPaused:(BOOL)paused
{
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__APRKStreamRenderer_setIsMirroringAudioStreamPaused___block_invoke;
  v4[3] = &unk_278C62A00;
  v4[4] = self;
  pausedCopy = paused;
  dispatch_async(rendererVideoBufferQueue, v4);
}

uint64_t __54__APRKStreamRenderer_setIsMirroringAudioStreamPaused___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(result + 32) + 26) = v1;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit == -1)
    {
      v3 = result;
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v1 = *(v3 + 40);
    }

    if (v1)
    {
      v2 = "";
    }

    else
    {
      v2 = "un";
    }

    return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer setIsMirroringAudioStreamPaused:]_block_invoke", 33554462, "Mirroring audio stream got %spaused.\n", v2);
  }

  return result;
}

- (void)setSampleBufferDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKStreamRenderer *)delegateCopy setSampleBufferDelegate:v4, v5];
  }

  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__APRKStreamRenderer_setSampleBufferDelegate___block_invoke;
  v9[3] = &unk_278C62788;
  v9[4] = self;
  v10 = delegateCopy;
  v8 = delegateCopy;
  dispatch_sync(rendererVideoBufferQueue, v9);
}

- (void)postVideoV1EventWithType:(const char *)type params:(__CFDictionary *)params
{
  if (type)
  {
    if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer postVideoV1EventWithType:params:]", 33554442, "Posting video V1 event with type=%s params=%@", type, params);
    }

    [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:?];
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderer postVideoV1EventWithType:params:];
  }
}

- (void)setVideoV1Delegate:(id)delegate withDelegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = queueCopy;
  if (delegateCopy && queueCopy)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer setVideoV1Delegate:withDelegateQueue:]", 33554462, "Setting video V1 delegate to object %@ with delegateQueue=%@", delegateCopy, v8);
    }

    v9 = delegateCopy;
    v10 = v8;
    [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:?];
  }

  else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderer setVideoV1Delegate:withDelegateQueue:];
  }
}

- (void)setIsWiredLink:(BOOL)link
{
  linkCopy = link;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    v5 = "false";
    if (linkCopy)
    {
      v5 = "true";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer setIsWiredLink:]", 33554462, "Wired link set to %s for renderer %{ptr}.", v5, self);
  }

  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__APRKStreamRenderer_setIsWiredLink___block_invoke;
  block[3] = &unk_278C62A00;
  block[4] = self;
  v8 = linkCopy;
  dispatch_sync(rendererStateUpdateQueue, block);
}

uint64_t __37__APRKStreamRenderer_setIsWiredLink___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(result + 32) + 17) = v1;
  *(*(result + 32) + 19) = v1;
  return result;
}

- (BOOL)isWiredLink
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__APRKStreamRenderer_isWiredLink__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsP2PWiFi:(BOOL)fi
{
  fiCopy = fi;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    v5 = "false";
    if (fiCopy)
    {
      v5 = "true";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer setIsP2PWiFi:]", 33554462, "P2P WiFi set to %s for renderer %{ptr}.", v5, self);
  }

  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__APRKStreamRenderer_setIsP2PWiFi___block_invoke;
  block[3] = &unk_278C62A00;
  block[4] = self;
  v8 = fiCopy;
  dispatch_sync(rendererStateUpdateQueue, block);
}

- (BOOL)isP2PWiFi
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__APRKStreamRenderer_isP2PWiFi__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setCanRecord:(BOOL)record
{
  recordCopy = record;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    v5 = "false";
    if (recordCopy)
    {
      v5 = "true";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer setCanRecord:]", 33554462, "canRecord set to %s for renderer %{ptr}", v5, self);
  }

  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__APRKStreamRenderer_setCanRecord___block_invoke;
  block[3] = &unk_278C62A00;
  block[4] = self;
  v8 = recordCopy;
  dispatch_sync(rendererStateUpdateQueue, block);
}

- (unint64_t)currentVideoPlaybackVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__APRKStreamRenderer_currentVideoPlaybackVersion__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererVideoBufferQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)videoQueuePerformanceDictionary
{
  v6 = 0;
  if (self->_figVideoQueue)
  {
    CMBaseObject = FigVideoQueueGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x277CD6518], *MEMORY[0x277CBECE8], &v6);
      v3 = v6;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v4;
}

- (id)sampleBufferDelegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__APRKStreamRenderer_sampleBufferDelegate__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererVideoBufferQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __42__APRKStreamRenderer_sampleBufferDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 320));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained, v4);
}

- (id)ensembleInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__APRKStreamRenderer_ensembleInfo__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)demoDeviceInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__APRKStreamRenderer_demoDeviceInfo__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setIsProtectedMirroring:(BOOL)mirroring
{
  mirroringCopy = mirroring;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    v5 = "false";
    if (mirroringCopy)
    {
      v5 = "true";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer setIsProtectedMirroring:]", 33554462, "Protected mirroring set to %s for renderer %{ptr}.", v5, self);
  }

  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__APRKStreamRenderer_setIsProtectedMirroring___block_invoke;
  block[3] = &unk_278C62A00;
  block[4] = self;
  v8 = mirroringCopy;
  dispatch_sync(rendererStateUpdateQueue, block);
}

uint64_t __46__APRKStreamRenderer_setIsProtectedMirroring___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(result + 32) + 28) = v1;
  if (v1 == 1)
  {
    *(*(result + 32) + 19) = 0;
  }

  return result;
}

- (BOOL)isProtectedMirroring
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__APRKStreamRenderer_isProtectedMirroring__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (APRKStreamRenderer)initWithUniqueID:(id)d clientName:(id)name UIController:(OpaqueAPReceiverUIController *)controller useCALayerForMirroring:(BOOL)mirroring
{
  mirroringCopy = mirroring;
  dCopy = d;
  nameCopy = name;
  v41.receiver = self;
  v41.super_class = APRKStreamRenderer;
  v13 = [(APRKStreamRenderer *)&v41 init];
  if (v13)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      v14 = @"NO";
      if (mirroringCopy)
      {
        v14 = @"YES";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer initWithUniqueID:clientName:UIController:useCALayerForMirroring:]", 33554462, "Creating new renderer with uniqueID=%@, clientName=%@, uiController=%{ptr}, useCALayerForMirroring=%@", dCopy, nameCopy, controller, v14);
    }

    objc_storeStrong(v13 + 44, d);
    *(v13 + 10) = 0;
    *(v13 + 4) = 0;
    v15 = [nameCopy copy];
    v16 = *(v13 + 45);
    *(v13 + 45) = v15;

    *(v13 + 8) = 0;
    v13[19] = 0;
    v17 = *(v13 + 11);
    *(v13 + 11) = 0;

    v13[20] = mirroringCopy;
    *(v13 + 21) = 0;
    *(v13 + 6) = 0x1000000;
    v13[344] = 1;
    *(v13 + 47) = 0;
    *(v13 + 38) = 0;
    v13[29] = 1;
    *(v13 + 168) = *MEMORY[0x277CBF3A8];
    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v19 = dispatch_queue_create("com.apple.APRKStreamRenderer.rendererVideoBufferQueue", v18);
    v20 = *(v13 + 17);
    *(v13 + 17) = v19;

    v21 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v22 = dispatch_queue_create("com.apple.APRKStreamRenderer.rendererAudioBufferQueue", v21);
    v23 = *(v13 + 18);
    *(v13 + 18) = v22;

    v24 = dispatch_queue_create("com.apple.APRKStreamRenderer.rendererStateUpdateQueue", 0);
    v25 = *(v13 + 19);
    *(v13 + 19) = v24;

    v26 = +[APRKStreamRenderingManager sharedInstance];
    delegateQueue = [v26 delegateQueue];
    v28 = *(v13 + 20);
    *(v13 + 20) = delegateQueue;

    v29 = MEMORY[0x277CC0898];
    v30 = *MEMORY[0x277CC0898];
    *(v13 + 3) = *MEMORY[0x277CC0898];
    v31 = *(v29 + 16);
    *(v13 + 8) = v31;
    *(v13 + 232) = v30;
    *(v13 + 31) = v31;
    if (controller)
    {
      v32 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(v13 + 1) = v32;
      if (!v32 && gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKStreamRenderer initWithUniqueID:v13 clientName:v33 UIController:v34 useCALayerForMirroring:?];
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__APRKStreamRenderer_initWithUniqueID_clientName_UIController_useCALayerForMirroring___block_invoke;
    aBlock[3] = &unk_278C626E8;
    v40 = v13;
    v35 = _Block_copy(aBlock);
    if (pthread_main_np())
    {
      v35[2](v35);
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __86__APRKStreamRenderer_initWithUniqueID_clientName_UIController_useCALayerForMirroring___block_invoke_2;
      block[3] = &unk_278C62878;
      v38 = v35;
      dispatch_sync(MEMORY[0x277D85CD0], block);
    }
  }

  return v13;
}

void *__86__APRKStreamRenderer_initWithUniqueID_clientName_UIController_useCALayerForMirroring___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[20] == 1 && [v2 _receiverSupportsMirroring])
  {
    v3 = [MEMORY[0x277CD9ED0] layer];
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = v3;

    [*(*(a1 + 32) + 88) setName:?];
    [*(*(a1 + 32) + 88) setDelegate:?];
  }

  v6 = [MEMORY[0x277CD9ED0] layer];
  v7 = *(a1 + 32);
  v8 = *(v7 + 96);
  *(v7 + 96) = v6;

  v9 = *(*(a1 + 32) + 96);

  return [v9 setName:?];
}

- (unsigned)screenSessionCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__APRKStreamRenderer_screenSessionCount__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)audioSessionCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__APRKStreamRenderer_audioSessionCount__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)videoSessionCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__APRKStreamRenderer_videoSessionCount__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)currentVideoSessionID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__APRKStreamRenderer_currentVideoSessionID__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__APRKStreamRenderer_isActive__block_invoke;
  v5[3] = &unk_278C62828;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererStateUpdateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __30__APRKStreamRenderer_isActive__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = v1[8] || v1[10] || v1[9] != 0;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (void)setDeferLayerRendering:(BOOL)rendering
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__APRKStreamRenderer_setDeferLayerRendering___block_invoke;
  v4[3] = &unk_278C62A00;
  v4[4] = self;
  renderingCopy = rendering;
  dispatch_async(rendererStateUpdateQueue, v4);
}

- (void)setSessionReceiverAddress:(OpaqueAPSNetworkAddress *)address
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__APRKStreamRenderer_setSessionReceiverAddress___block_invoke;
  v4[3] = &unk_278C62A70;
  v4[4] = self;
  v4[5] = address;
  dispatch_sync(rendererStateUpdateQueue, v4);
}

void __48__APRKStreamRenderer_setSessionReceiverAddress___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 264);
  *(v2 + 264) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)setReceiverNetworkClock:(OpaqueAPSNetworkClock *)clock
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__APRKStreamRenderer_setReceiverNetworkClock___block_invoke;
  v4[3] = &unk_278C62A70;
  v4[4] = self;
  v4[5] = clock;
  dispatch_sync(rendererStateUpdateQueue, v4);
}

void __46__APRKStreamRenderer_setReceiverNetworkClock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 272);
  *(v2 + 272) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)setEnsembleInfo:(id)info
{
  infoCopy = info;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__APRKStreamRenderer_setEnsembleInfo___block_invoke;
  v7[3] = &unk_278C62788;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(rendererStateUpdateQueue, v7);
}

- (void)setDemoDeviceInfo:(id)info
{
  infoCopy = info;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__APRKStreamRenderer_setDemoDeviceInfo___block_invoke;
  v7[3] = &unk_278C62788;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(rendererStateUpdateQueue, v7);
}

- (void)processShowPasscodePromptRequest:(id)request
{
  requestCopy = request;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__APRKStreamRenderer_processShowPasscodePromptRequest___block_invoke;
  v7[3] = &unk_278C62788;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(delegateQueue, v7);
}

void __55__APRKStreamRenderer_processShowPasscodePromptRequest___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __55__APRKStreamRenderer_processShowPasscodePromptRequest___block_invoke_cold_1(v2);
    }

    if (IsAppleInternalBuild() && gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __55__APRKStreamRenderer_processShowPasscodePromptRequest___block_invoke_cold_2(a1, v5, v6);
    }

    v7 = [*(a1 + 32) delegate];
    [v7 shouldShowPasscodePromptWithString:? forRenderer:?];
  }
}

- (void)processHidePasscodePromptRequest
{
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__APRKStreamRenderer_processHidePasscodePromptRequest__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

void __54__APRKStreamRenderer_processHidePasscodePromptRequest__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __54__APRKStreamRenderer_processHidePasscodePromptRequest__block_invoke_cold_1(v1);
    }

    v4 = [*v1 delegate];
    [v4 shouldHidePasscodePromptForRenderer:?];
  }
}

- (void)processStartScreenPresentationWithSessionID:(unsigned int)d
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke;
  v4[3] = &unk_278C62940;
  v4[4] = self;
  dCopy = d;
  dispatch_sync(rendererStateUpdateQueue, v4);
}

void *__66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_cold_1(a1, a2, a3);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  if (v6[20] == 1 && [v4 _receiverSupportsMirroring])
  {
    v7 = +[APRKStreamRenderingManager sharedInstance];
    v8 = [v7 shouldForwardLayers];

    if (v8)
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_cold_2(v5, v9, v10);
      }
    }

    else
    {
      v11 = *v5;
      v12 = *(*v5 + 17);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_2;
      block[3] = &unk_278C626E8;
      block[4] = v11;
      dispatch_async(v12, block);
    }
  }

  ++*(*v5 + 8);
  return [*v5 _updateStreamingMode];
}

void __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_2_cold_1(a1, a2, a3);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_3;
  block[3] = &unk_278C626E8;
  block[4] = *(a1 + 32);
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

void *__66__APRKStreamRenderer_processStartScreenPresentationWithSessionID___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _ensureFigVideoQueue];
  if (result)
  {
    if (gLogCategory_AirPlayReceiverKit <= 90)
    {
      v3 = result;
      if (gLogCategory_AirPlayReceiverKit != -1)
      {
        return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer processStartScreenPresentationWithSessionID:]_block_invoke_3", 33554522, "_ensureFigVideoQueue failed for renderer %{ptr} with error: %d", *(a1 + 32), v3);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer processStartScreenPresentationWithSessionID:]_block_invoke_3", 33554522, "_ensureFigVideoQueue failed for renderer %{ptr} with error: %d", *(a1 + 32), v3);
      }
    }
  }

  return result;
}

- (BOOL)processStopScreenPresentationWithSessionID:(unsigned int)d
{
  v3 = *&d;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__APRKStreamRenderer_processStopScreenPresentationWithSessionID___block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_sync(rendererStateUpdateQueue, block);
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer processStopScreenPresentationWithSessionID:]", 33554462, "Renderer %{ptr}: Stopping screen presentation session %i ", self, v3);
  }

  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__APRKStreamRenderer_processStopScreenPresentationWithSessionID___block_invoke_2;
  v8[3] = &unk_278C626E8;
  v8[4] = self;
  dispatch_sync(rendererVideoBufferQueue, v8);
  [(APRKStreamRenderer *)self _updateStreamingMode];
  return 1;
}

void *__65__APRKStreamRenderer_processStopScreenPresentationWithSessionID___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _unregisterForFigVideoQueueNotifications];
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__APRKStreamRenderer_processStopScreenPresentationWithSessionID___block_invoke_3;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v4 = *(a1 + 32);
  if (v4[28])
  {
    CFRelease(v4[28]);
    *(*(a1 + 32) + 224) = 0;
    v4 = *(a1 + 32);
  }

  return [(CFTypeRef *)v4 _performStopRecording];
}

void __65__APRKStreamRenderer_processStopScreenPresentationWithSessionID___block_invoke_3(uint64_t a1, uint64_t a2)
{
  CMBaseObject = FigVideoQueueGetCMBaseObject();
  if (CMBaseObject)
  {
    v4 = CMBaseObject;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v5)
    {
      v5(v4);
    }
  }

  v6 = *(a1 + 32);

  CFRelease(v6);
}

- (void)processStartVideoPlaybackRequestWithWithSessionID:(unsigned int)d version:(unint64_t)version
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__APRKStreamRenderer_processStartVideoPlaybackRequestWithWithSessionID_version___block_invoke;
  block[3] = &unk_278C62AB8;
  dCopy = d;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(rendererStateUpdateQueue, block);
  if (*(v18 + 24) == 1)
  {
    [(APRKStreamRenderer *)self processStopVideoPlaybackRequestWithSessionID:?];
  }

  v8 = self->_rendererStateUpdateQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__APRKStreamRenderer_processStartVideoPlaybackRequestWithWithSessionID_version___block_invoke_2;
  v9[3] = &unk_278C62AE0;
  dCopy2 = d;
  v9[5] = &v13;
  v9[6] = version;
  v9[4] = self;
  dispatch_sync(v8, v9);
  if (*(v14 + 24) == 1)
  {
    [(APRKStreamRenderer *)self _ensureInternalPlayerFor:?];
  }

  if (self->_receiverNetworkClock)
  {
    [(APRKMediaPlayer *)self->_player setReceiverNetworkClock:?];
  }

  [(APRKStreamRenderer *)self _updateStreamingMode];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

uint64_t __80__APRKStreamRenderer_processStartVideoPlaybackRequestWithWithSessionID_version___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 44);
  if (v2)
  {
    v3 = result;
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit == -1)
      {
        result = _LogCategory_Initialize();
        if (!result)
        {
          goto LABEL_6;
        }

        v1 = *(v3 + 32);
        v2 = *(v1 + 44);
      }

      result = LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer processStartVideoPlaybackRequestWithWithSessionID:version:]_block_invoke", 33554462, "Renderer %{ptr}: Stopping video playback session %i as it is getting hijacked by session %i", v1, v2, *(v3 + 48));
    }

LABEL_6:
    *(*(*(v3 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __80__APRKStreamRenderer_processStartVideoPlaybackRequestWithWithSessionID_version___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __80__APRKStreamRenderer_processStartVideoPlaybackRequestWithWithSessionID_version___block_invoke_2_cold_1(v3, a2, a3);
    }
  }

  *(*(v3 + 32) + 304) = *(v3 + 48);
  ++*(*(v3 + 32) + 36);
  *(*(v3 + 32) + 44) = *(v3 + 56);
  if (*(*(v3 + 32) + 304) == 2)
  {
    *(*(*(v3 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)processStopVideoPlaybackRequestWithSessionID:(unsigned int)d
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__APRKStreamRenderer_processStopVideoPlaybackRequestWithSessionID___block_invoke;
  v7[3] = &unk_278C62B08;
  dCopy = d;
  v7[4] = self;
  v7[5] = &v13;
  v7[6] = &v9;
  dispatch_sync(rendererStateUpdateQueue, v7);
  if (*(v14 + 24) == 1)
  {
    [(APRKStreamRenderer *)self _cleanupInternalPlayer];
  }

  if (*(v10 + 24) == 1)
  {
    [(APRKStreamRenderer *)self _updateStreamingMode];
    v5 = *(v10 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v5 & 1;
}

uint64_t __67__APRKStreamRenderer_processStopVideoPlaybackRequestWithSessionID___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(v2 + 44);
  v4 = *(result + 56);
  if (v3 != v4)
  {
    if (gLogCategory_AirPlayReceiverKit > 30)
    {
      return result;
    }

    if (gLogCategory_AirPlayReceiverKit == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v2 = *(v1 + 32);
      v4 = *(v1 + 56);
    }

    return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer processStopVideoPlaybackRequestWithSessionID:]_block_invoke", 33554462, "Renderer %{ptr}: Request to stop video playback session %i which is not current active video session. Ignoring.", v2, v4);
  }

  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit == -1)
    {
      result = _LogCategory_Initialize();
      v2 = *(v1 + 32);
      if (!result)
      {
        goto LABEL_9;
      }

      v3 = *(v1 + 56);
    }

    result = LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer processStopVideoPlaybackRequestWithSessionID:]_block_invoke", 33554462, "Renderer %{ptr}: Stopping video playback session %i", v2, v3);
    v2 = *(v1 + 32);
  }

LABEL_9:
  if (*(v2 + 304) == 2)
  {
    *(*(*(v1 + 40) + 8) + 24) = 1;
    v2 = *(v1 + 32);
  }

  *(v2 + 304) = 0;
  --*(*(v1 + 32) + 36);
  *(*(v1 + 32) + 44) = 0;
  *(*(*(v1 + 48) + 8) + 24) = 1;
  return result;
}

- (void)processStartAudioSessionRequestWithSessionID:(unsigned int)d isScreenAudio:(BOOL)audio
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__APRKStreamRenderer_processStartAudioSessionRequestWithSessionID_isScreenAudio___block_invoke;
  v5[3] = &unk_278C62B30;
  v5[4] = self;
  dCopy = d;
  audioCopy = audio;
  dispatch_async(rendererStateUpdateQueue, v5);
}

void *__81__APRKStreamRenderer_processStartAudioSessionRequestWithSessionID_isScreenAudio___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __81__APRKStreamRenderer_processStartAudioSessionRequestWithSessionID_isScreenAudio___block_invoke_cold_1(a1, a2, a3);
  }

  if (*(a1 + 44) == 1)
  {
    v4 = +[APRKStreamRenderingManager sharedInstance];
    v5 = [v4 optimizeAudioRenderingLatency];

    if (v5)
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        __81__APRKStreamRenderer_processStartAudioSessionRequestWithSessionID_isScreenAudio___block_invoke_cold_2();
      }
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 144);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __81__APRKStreamRenderer_processStartAudioSessionRequestWithSessionID_isScreenAudio___block_invoke_2;
      block[3] = &unk_278C626E8;
      block[4] = v6;
      dispatch_sync(v7, block);
    }
  }

  ++*(*(a1 + 32) + 40);
  return [*(a1 + 32) _updateStreamingMode];
}

void *__81__APRKStreamRenderer_processStartAudioSessionRequestWithSessionID_isScreenAudio___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 23) = 1;
  v2 = objc_alloc_init(MEMORY[0x277CE6608]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = objc_alloc_init(MEMORY[0x277CE6620]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;

  v8 = *(*(a1 + 32) + 72);

  return [v8 addRenderer:?];
}

- (BOOL)processStopAudioSessionRequestWithSessionID:(unsigned int)d
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke;
  v5[3] = &unk_278C62940;
  v5[4] = self;
  dCopy = d;
  dispatch_async(rendererStateUpdateQueue, v5);
  return 1;
}

void *__66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke_cold_1(a1, a2, a3);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke_2;
  block[3] = &unk_278C626E8;
  block[4] = v4;
  dispatch_sync(v5, block);
  --*(*(a1 + 32) + 40);
  return [*(a1 + 32) _updateStreamingMode];
}

void __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v10 = *MEMORY[0x277CC0898];
  v9 = v10;
  v11 = *(MEMORY[0x277CC0898] + 16);
  v3 = v11;
  [v2 removeRenderer:? atTime:? completionHandler:?];
  *(*(a1 + 32) + 23) = 0;
  v4 = *(a1 + 32);
  *(v4 + 48) = v9;
  *(v4 + 64) = v3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = 0;
}

void __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __66__APRKStreamRenderer_processStopAudioSessionRequestWithSessionID___block_invoke_3_cold_1(a2, a2, a3);
  }
}

- (BOOL)processVideoSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  rendererVideoBufferQueue = self->_rendererVideoBufferQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke;
  block[3] = &unk_278C62B78;
  block[5] = &v7;
  block[6] = buffer;
  block[4] = self;
  dispatch_sync(rendererVideoBufferQueue, block);
  v4 = *(v8 + 6) == 0;
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 videoStreamIsCleared:? forRenderer:?];
  }
}

void __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 videoLayerOrientationDidChangeTo:? forRenderer:?];
  }
}

void __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_5;
  block[3] = &unk_278C626E8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = [*(a1 + 32) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) delegate];
      [v4 videoLayerSizeDidChangeTo:? forRenderer:?];
    }
  }
}

void *__47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_5(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:?];
  [*(*(a1 + 32) + 88) layoutSublayers];
  v2 = MEMORY[0x277CD9FF0];

  return [v2 commit];
}

- (BOOL)processAudioSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (buffer)
  {
    CFRetain(buffer);
  }

  rendererAudioBufferQueue = self->_rendererAudioBufferQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__APRKStreamRenderer_processAudioSampleBuffer___block_invoke;
  block[3] = &unk_278C62BA0;
  block[5] = &v9;
  block[6] = buffer;
  block[4] = self;
  dispatch_sync(rendererAudioBufferQueue, block);
  if (buffer)
  {
    CFRelease(buffer);
  }

  v6 = *(v10 + 6) == 0;
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)_registerForFigVideoQueueNotifications
{
  if (self->_figVideoQueue)
  {
    if (!self->_figVideoQueueNotifObserver)
    {
      objc_initWeak(&location, self);
      v7 = MEMORY[0x277D85DD0];
      v8 = 3221225472;
      v9 = __60__APRKStreamRenderer__registerForFigVideoQueueNotifications__block_invoke;
      v10 = &unk_278C62BC8;
      objc_copyWeak(&v11, &location);
      v3 = _Block_copy(&v7);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v5 = [defaultCenter addObserverForName:? object:? queue:? usingBlock:?];
      figVideoQueueNotifObserver = self->_figVideoQueueNotifObserver;
      self->_figVideoQueueNotifObserver = v5;

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __60__APRKStreamRenderer__registerForFigVideoQueueNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __60__APRKStreamRenderer__registerForFigVideoQueueNotifications__block_invoke_cold_1();
  }

  [WeakRetained _performUIControllerActionWithBlock:?];
}

- (void)_unregisterForFigVideoQueueNotifications
{
  if (self->_figVideoQueueNotifObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:?];

    figVideoQueueNotifObserver = self->_figVideoQueueNotifObserver;
    self->_figVideoQueueNotifObserver = 0;
  }
}

- (void)_ensureInternalPlayerFor:(int)for
{
  if (!self->_player)
  {
    v5 = [APRKMediaPlayer initWithP2PWiFiSupport:"initWithP2PWiFiSupport:isInterstitialPlayer:playerSessionID:" isInterstitialPlayer:? playerSessionID:?];
    player = self->_player;
    self->_player = v5;

    [APRKMediaPlayer addObserver:"addObserver:forKeyPath:options:context:" forKeyPath:? options:? context:?];
    [(APRKMediaPlayer *)self->_player setMessagingDelegate:?];
    v7 = self->_player;

    [(APRKMediaPlayer *)v7 setSessionReceiverAddress:?];
  }
}

- (void)_cleanupInternalPlayer
{
  v3 = self->_player;
  player = self->_player;
  self->_player = 0;

  [APRKMediaPlayer removeObserver:v3 forKeyPath:"removeObserver:forKeyPath:"];
  [(APRKMediaPlayer *)v3 setMessagingDelegate:?];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __44__APRKStreamRenderer__cleanupInternalPlayer__block_invoke;
  v9 = &unk_278C626E8;
  v10 = v3;
  v5 = v3;
  [(APRKMediaPlayer *)v5 stopWithCompletionBlock:?];
}

- (int)_enqueueSampleBufferForRecording:(opaqueCMSampleBuffer *)recording isAudioSBuf:(BOOL)buf
{
  if (recording)
  {
    CFRetain(recording);
  }

  if (!buf)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(recording);
    Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
    v9 = Dimensions;
    v10 = HIDWORD(Dimensions);
    if (*&self->_lastVideoSampleBufferSize == Dimensions)
    {
      recorderNeedsKeyFrame = self->_recorderNeedsKeyFrame;
      self->_lastVideoSampleBufferSize = Dimensions;
      if (!recorderNeedsKeyFrame)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer _enqueueSampleBufferForRecording:isAudioSBuf:]", 33554462, "Video size changed from %d x %d to %d x %d, will start new recording\n", self->_presentationVideoSize.width, self->_presentationVideoSize.width, v9, v10);
      }

      [(APRKStreamRenderer *)self _performStopRecording];
      self->_recorderNeedsKeyFrame = 1;
      self->_lastVideoSampleBufferSize.width = v9;
      self->_lastVideoSampleBufferSize.height = v10;
    }

    self->_recorderNeedsKeyFrame = ![(APRKStreamRenderer *)self _sampleBufferRepresentsKeyFrame:?];
  }

LABEL_13:
  if (!self->_recorder && !self->_recorderNeedsKeyFrame)
  {
    dispatch_source_cancel(self->_recorderKeyFrameTimer);
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderer _enqueueSampleBufferForRecording:isAudioSBuf:];
    }

    v12 = objc_alloc_init(APRKStreamRecorder);
    recorder = self->_recorder;
    self->_recorder = v12;

    v14 = [(APRKStreamRecorder *)self->_recorder startRecordingAtURL:?];
    if (v14)
    {
      v16 = v14;
      [(APRKStreamRenderer *)v14 _enqueueSampleBufferForRecording:v18 isAudioSBuf:?];
      if (!recording)
      {
        return v16;
      }

      goto LABEL_24;
    }
  }

  if (!self->_recorderNeedsKeyFrame)
  {
    v15 = self->_recorder;
    if (buf)
    {
      [(APRKStreamRecorder *)v15 recordAudioSampleBuffer:?];
    }

    else
    {
      [(APRKStreamRecorder *)v15 recordVideoSampleBuffer:?];
    }
  }

  v16 = 0;
  if (recording)
  {
LABEL_24:
    CFRelease(recording);
  }

  return v16;
}

void __67__APRKStreamRenderer__enqueueSampleBufferForRecording_isAudioSBuf___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 recordingSessionDidFailForRenderer:?];
  }
}

- (BOOL)_sampleBufferRepresentsKeyFrame:(opaqueCMSampleBuffer *)frame
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(frame, 0);
  if (!SampleAttachmentsArray)
  {
    return 1;
  }

  v4 = SampleAttachmentsArray;
  Count = CFArrayGetCount(SampleAttachmentsArray);
  v6 = Count - 1;
  if (Count < 1)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    CFArrayGetValueAtIndex(v4, v7);
    if (FigCFDictionaryGetBooleanIfPresent())
    {
      break;
    }
  }

  while (v6 != v7++);
  return 1;
}

- (BOOL)_performStartRecordingWithOutputURL:(id)l
{
  lCopy = l;
  if (self->_recorder)
  {
    [(APRKStreamRenderer *)self _performStopRecording];
  }

  currentRecordingURL = self->_currentRecordingURL;
  self->_currentRecordingURL = lCopy;
  v6 = lCopy;

  self->_recorderNeedsKeyFrame = 1;
  self->_shouldRecordFrames = 1;
  [(APRKStreamRenderer *)self _cleanupPreviousRecordingIfExisting];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKStreamRenderer _performStartRecordingWithOutputURL:];
  }

  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:?];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_rendererVideoBufferQueue);
  recorderKeyFrameTimer = self->_recorderKeyFrameTimer;
  self->_recorderKeyFrameTimer = v7;

  v9 = self->_recorderKeyFrameTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __58__APRKStreamRenderer__performStartRecordingWithOutputURL___block_invoke_2;
  handler[3] = &unk_278C626E8;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  v10 = self->_recorderKeyFrameTimer;
  v11 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  dispatch_resume(self->_recorderKeyFrameTimer);
  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:?];

  return 1;
}

void __58__APRKStreamRenderer__performStartRecordingWithOutputURL___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 288) == 1)
  {
    block[7] = v1;
    block[8] = v2;
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __58__APRKStreamRenderer__performStartRecordingWithOutputURL___block_invoke_2_cold_1();
    }

    [*(a1 + 32) _performStopRecording];
    v4 = *(a1 + 32);
    v5 = *(v4 + 160);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__APRKStreamRenderer__performStartRecordingWithOutputURL___block_invoke_3;
    block[3] = &unk_278C626E8;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

void __58__APRKStreamRenderer__performStartRecordingWithOutputURL___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 recordingSessionDidFailForRenderer:?];
  }
}

- (BOOL)_performStopRecording
{
  if (self->_recorder)
  {
    dispatch_source_cancel(self->_recorderKeyFrameTimer);
    [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:?];
    currentRecordingURL = self->_currentRecordingURL;
    self->_currentRecordingURL = 0;

    self->_recorderNeedsKeyFrame = 0;
    self->_shouldRecordFrames = 0;
    finalizeRecording = [(APRKStreamRecorder *)self->_recorder finalizeRecording];
    recorder = self->_recorder;
    self->_recorder = 0;

    return finalizeRecording ^ 1;
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKStreamRenderer _performStopRecording];
    }

    return 1;
  }
}

- (void)_cleanupPreviousRecordingIfExisting
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_currentRecordingURL path];
  v5 = [defaultManager fileExistsAtPath:? isDirectory:?];

  v6 = 0;
  if (v5)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [(NSURL *)self->_currentRecordingURL path];
    [defaultManager2 removeItemAtPath:? error:?];
    v6 = 0;

    if (v6)
    {
      if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [(APRKStreamRenderer *)v6 _cleanupPreviousRecordingIfExisting];
      }
    }
  }
}

- (void)_updateStreamingMode
{
  rendererStateUpdateQueue = self->_rendererStateUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__APRKStreamRenderer__updateStreamingMode__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(rendererStateUpdateQueue, block);
}

void __42__APRKStreamRenderer__updateStreamingMode__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 36);
  if (v3)
  {
    v4 = 4;
  }

  else if (*(v2 + 32))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (*(v2 + 40) != 0);
  }

  v5 = *(v2 + 376);
  if (gLogCategory_AirPlayReceiverKit > 30)
  {
    goto LABEL_10;
  }

  if (gLogCategory_AirPlayReceiverKit != -1)
  {
    goto LABEL_8;
  }

  if (_LogCategory_Initialize())
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 36);
LABEL_8:
    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer _updateStreamingMode]_block_invoke", 33554462, "didChangeStreamRendererModeTo current counts - video %d, screen %d, audio %d", v3, *(v2 + 32), *(v2 + 40));
  }

LABEL_10:
  if (v5 != v4)
  {
    *(*(a1 + 32) + 376) = v4;
    v6 = *(a1 + 32);
    v7 = *(v6 + 160);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__APRKStreamRenderer__updateStreamingMode__block_invoke_2;
    block[3] = &unk_278C62A70;
    block[4] = v6;
    block[5] = v4;
    dispatch_async(v7, block);
  }
}

void __42__APRKStreamRenderer__updateStreamingMode__block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __42__APRKStreamRenderer__updateStreamingMode__block_invoke_2_cold_1(v2);
    }

    v5 = [*(a1 + 32) delegate];
    [v5 didChangeStreamRendererModeTo:? forRenderer:?];
  }
}

- (BOOL)_receiverSupportsMirroring
{
  v2 = +[APRKStreamRenderingManager sharedInstance];
  supportedModesMask = [v2 supportedModesMask];

  return supportedModesMask & 1;
}

- (void)_performUIControllerActionWithBlock:(id)block
{
  blockCopy = block;
  if (self->_backingUIControllerWeakRef)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      if (blockCopy)
      {
        blockCopy[2]();
      }

      CFRelease(v5);
    }

    else
    {
      [APRKStreamRenderer _performUIControllerActionWithBlock:?];
    }
  }

  else
  {
    [APRKStreamRenderer _performUIControllerActionWithBlock:?];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (VideoRenderingLayerContext == context)
  {
    if (![pathCopy isEqualToString:?])
    {
      goto LABEL_8;
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__APRKStreamRenderer_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v17[3] = &unk_278C626E8;
    v17[4] = self;
    delegateQueue = MEMORY[0x277D85CD0];
    v14 = v17;
LABEL_7:
    dispatch_async(delegateQueue, v14);
    goto LABEL_8;
  }

  if (APRKMediaPlayerContext == context)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__APRKStreamRenderer_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    block[3] = &unk_278C626E8;
    block[4] = self;
    v14 = block;
    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = APRKStreamRenderer;
  [(APRKStreamRenderer *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_8:
}

void __69__APRKStreamRenderer_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __69__APRKStreamRenderer_observeValueForKeyPath_ofObject_change_context___block_invoke_2_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 368));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 368));
    v4 = [*(*(a1 + 32) + 112) currentItemMetadata];
    [v5 didUpdateMetadata:? forRenderer:?];
  }
}

- (void)mediaPlayer:(id)player wantsToSendUpstreamMessageWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __75__APRKStreamRenderer_mediaPlayer_wantsToSendUpstreamMessageWithDictionary___block_invoke;
  v10 = &unk_278C62BF0;
  v11 = dictionaryCopy;
  v6 = dictionaryCopy;
  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:?];
}

- (void)mediaPlayer:(id)player didGenerateFPSSecureStopRecordPayload:(id)payload
{
  payloadCopy = payload;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __72__APRKStreamRenderer_mediaPlayer_didGenerateFPSSecureStopRecordPayload___block_invoke;
  v10 = &unk_278C62BF0;
  v11 = payloadCopy;
  v6 = payloadCopy;
  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:?];
}

- (void)mediaPlayerNeedsTLSInfo:(id)info
{
  infoCopy = info;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __46__APRKStreamRenderer_mediaPlayerNeedsTLSInfo___block_invoke;
  v9 = &unk_278C62BF0;
  v10 = infoCopy;
  v5 = infoCopy;
  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:?];
}

void __46__APRKStreamRenderer_mediaPlayerNeedsTLSInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = UIControllerCopyTLSInfo(a2);
  [*(a1 + 32) processTLSInfoDictionary:?];
}

- (void)mediaPlayer:(id)player wantsToPostNotification:(id)notification withPayload:(id)payload
{
  notificationCopy = notification;
  payloadCopy = payload;
  v11 = MEMORY[0x277D85DD0];
  v12 = notificationCopy;
  v13 = payloadCopy;
  v9 = payloadCopy;
  v10 = notificationCopy;
  [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:v11, 3221225472, __70__APRKStreamRenderer_mediaPlayer_wantsToPostNotification_withPayload___block_invoke, &unk_278C62A48];
}

uint64_t __70__APRKStreamRenderer_mediaPlayer_wantsToPostNotification_withPayload___block_invoke(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

- (void)processSenderUIEvent:(id)event
{
  eventCopy = event;
  delegateQueue = self->_delegateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__APRKStreamRenderer_processSenderUIEvent___block_invoke;
  v7[3] = &unk_278C62788;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(delegateQueue, v7);
}

void __43__APRKStreamRenderer_processSenderUIEvent___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __43__APRKStreamRenderer_processSenderUIEvent___block_invoke_cold_1(v2);
    }

    v5 = [*(a1 + 32) delegate];
    [v5 handleSenderUIEvent:? forRenderer:?];
  }
}

- (void)layoutSublayersOfLayer:(id)layer
{
  if (self->_presentationVideoSize.width != *MEMORY[0x277CBF3A8] || self->_presentationVideoSize.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    v39 = v12;
    v40 = v11;
    v41 = v10;
    v42 = v9;
    v43 = v8;
    v44 = v7;
    v45 = v6;
    v46 = v5;
    v47 = v3;
    v48 = v4;
    v15 = MEMORY[0x277CD9FF0];
    layerCopy = layer;
    [v15 begin];
    v17 = 1;
    [MEMORY[0x277CD9FF0] setDisableActions:?];
    [layerCopy bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    width = self->_presentationVideoSize.width;
    currentTransform = self->_currentTransform;
    if (currentTransform == 7 || currentTransform == 4)
    {
      v17 = 0;
      height = self->_presentationVideoSize.height;
    }

    else
    {
      height = self->_presentationVideoSize.width;
      width = self->_presentationVideoSize.height;
    }

    v49.origin.x = v19;
    v49.origin.y = v21;
    v49.size.width = v23;
    v49.size.height = v25;
    CGRectGetMidX(v49);
    v50.origin.x = v19;
    v50.origin.y = v21;
    v50.size.width = v23;
    v50.size.height = v25;
    CGRectGetMidY(v50);
    memset(&v38, 0, sizeof(v38));
    CATransform3DMakeTranslation(&v38, (v23 - height) * 0.5, (v25 - width) * 0.5, 0.0);
    v29 = fmax(v23 / height, v25 / width);
    v30 = fmin(v23 / height, v25 / width);
    memset(&v37.m21, 0, 96);
    if (!v17)
    {
      v30 = v29;
    }

    memset(&v37, 0, 32);
    CATransform3DMakeScale(&v37, v30, v30, 1.0);
    memset(&v36, 0, sizeof(v36));
    a = v38;
    b = v37;
    CATransform3DConcat(&v36, &a, &b);
    mirroringLayer = [(APRKStreamRenderer *)self mirroringLayer];
    a = v36;
    [mirroringLayer setSublayerTransform:?];

    mirroringLayer2 = [(APRKStreamRenderer *)self mirroringLayer];
    [mirroringLayer2 setPosition:?];

    mirroringLayer3 = [(APRKStreamRenderer *)self mirroringLayer];
    [mirroringLayer3 setBounds:?];

    [MEMORY[0x277CD9FF0] commit];
  }
}

- (APRKStreamRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke(uint64_t a1)
{
  valuePtr[0] = 0;
  v2 = *(a1 + 48);
  if (!v2)
  {
    OUTLINED_FUNCTION_1_1();
LABEL_61:
    APSLogErrorAt();
    goto LABEL_49;
  }

  CFRetain(v2);
  v3 = *(a1 + 32);
  CMSampleBufferGetOutputPresentationTimeStamp(&v52, *(a1 + 48));
  *(v3 + 232) = v52;
  if (*(*(a1 + 32) + 25))
  {
    goto LABEL_49;
  }

  v4 = *MEMORY[0x277CBED28];
  v5 = CMGetAttachment(*(a1 + 48), *MEMORY[0x277CC06D8], 0);
  v6 = v4 == v5;
  v7 = *(a1 + 32);
  if (*(v7 + 27) != v6)
  {
    *(v7 + 27) = v6;
    v8 = *(a1 + 32);
    v9 = *(v8 + 160);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_2;
    block[3] = &unk_278C62A00;
    block[4] = v8;
    v51 = v4 == v5;
    dispatch_async(v9, block);
  }

  if (v4 == v5)
  {
    v24 = *MEMORY[0x277CBF3A8];
    v25 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_26;
  }

  v10 = CMGetAttachment(*(a1 + 48), *MEMORY[0x277CC1AB8], 0);
  if (!v10 || (v11 = v10, v12 = CFGetTypeID(v10), v12 != CFDictionaryGetTypeID()) || !CGRectMakeWithDictionaryRepresentation(v11, (*(a1 + 32) + 192)) || (v13 = CMGetAttachment(*(a1 + 48), *MEMORY[0x277CC1AC0], 0)) == 0 || (v14 = v13, v15 = CFGetTypeID(v13), v15 != CFNumberGetTypeID()))
  {
    OUTLINED_FUNCTION_1_1();
    goto LABEL_61;
  }

  CFNumberGetValue(v14, kCFNumberSInt32Type, valuePtr);
  FormatDescription = CMSampleBufferGetFormatDescription(*(a1 + 48));
  Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
  v18 = Dimensions;
  v19 = HIDWORD(Dimensions);
  v20 = valuePtr[0];
  v21 = *(a1 + 32);
  if (valuePtr[0] != *(v21 + 260) || *(v21 + 29) == 1)
  {
    *(v21 + 29) = 0;
    *(*(a1 + 32) + 260) = v20;
    v22 = *(a1 + 32);
    v23 = *(v22 + 160);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_3;
    v48[3] = &unk_278C62940;
    v48[4] = v22;
    v49 = v20;
    dispatch_async(v23, v48);
    v21 = *(a1 + 32);
  }

  v24 = v18;
  v25 = v19;
  if (*(v21 + 344) == 1)
  {
    *(v21 + 256) = valuePtr[0];
    v26 = [*(a1 + 32) _isRotatedTransform:?];
    if (v26)
    {
      v27 = v19;
    }

    else
    {
      v27 = v18;
    }

    if (v26)
    {
      v25 = v18;
    }

    v21 = *(a1 + 32);
    v24 = v27;
  }

  v28 = *(v21 + 224);
  *(v21 + 224) = FormatDescription;
  if (FormatDescription)
  {
    CFRetain(FormatDescription);
  }

  if (v28)
  {
    CFRelease(v28);
  }

LABEL_26:
  v29 = *(a1 + 32);
  if (*(v29 + 24) == 1)
  {
    if (![v29 _sampleBufferRepresentsKeyFrame:?])
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        OUTLINED_FUNCTION_1(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer processVideoSampleBuffer:]_block_invoke", v30, "Renderer is waiting on a key frame, the received one is not. Ignoring it for video mirroring.");
      }

      goto LABEL_38;
    }

    *(*(a1 + 32) + 24) = 0;
    v29 = *(a1 + 32);
  }

  if (*(v29 + 88) && (*(v29 + 21) & 1) == 0)
  {
    [v29 _enqueueVideoFrameForRendering:?];
    OUTLINED_FUNCTION_2_0();
    *(v32 + 24) = v31;
    v29 = *(a1 + 32);
  }

  WeakRetained = objc_loadWeakRetained((v29 + 320));
  v34 = objc_opt_respondsToSelector();

  if (v34)
  {
    v35 = objc_loadWeakRetained((*(a1 + 32) + 320));
    [v35 renderer:? didOutputVideoSampleBuffer:?];
  }

LABEL_38:
  v36 = *(a1 + 32);
  if (v4 != v5 && (*(v36 + 22) & 1) != 0)
  {
    [v36 _enqueueSampleBufferForRecording:? isAudioSBuf:?];
    v36 = *(a1 + 32);
  }

  if (v24 != *(v36 + 168) || v25 != *(v36 + 176))
  {
    *(v36 + 168) = v24;
    *(v36 + 176) = v25;
    v38 = *(*(a1 + 32) + 128);
    if (v38)
    {
      v39 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v39)
      {
        v39(v38, 1);
      }
    }

    v40 = *(a1 + 32);
    v41 = *(v40 + 160);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __47__APRKStreamRenderer_processVideoSampleBuffer___block_invoke_4;
    v46[3] = &unk_278C62A00;
    v46[4] = v40;
    v47 = v6;
    dispatch_async(v41, v46);
  }

LABEL_49:
  OUTLINED_FUNCTION_2_0();
  v43 = *(v42 + 24);
  if (!v43 || gLogCategory_AirPlayReceiverKit > 90)
  {
    goto LABEL_54;
  }

  if (gLogCategory_AirPlayReceiverKit != -1)
  {
    goto LABEL_52;
  }

  if (_LogCategory_Initialize())
  {
    OUTLINED_FUNCTION_2_0();
    v43 = *(v45 + 24);
LABEL_52:
    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer processVideoSampleBuffer:]_block_invoke", 33554522, "Failed to enqueue video frame: %#m\n", v43);
  }

LABEL_54:
  v44 = *(a1 + 48);
  if (v44)
  {
    CFRelease(v44);
  }
}

void __47__APRKStreamRenderer_processAudioSampleBuffer___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 23) == 1 && (*(v2 + 26) & 1) == 0)
  {
    if ((*(v2 + 60) & 1) == 0)
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&v14, *(a1 + 48));
      *(v2 + 48) = v14;
      v3 = *(*(a1 + 32) + 72);
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v14, HostTimeClock);
      [v3 setRate:? time:?];
      v2 = *(a1 + 32);
    }

    v5 = [*(v2 + 80) isReadyForMoreMediaData];
    v6 = *(*(a1 + 32) + 80);
    if (v5)
    {
      [v6 enqueueSampleBuffer:?];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 320));
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = objc_loadWeakRetained((*(a1 + 32) + 320));
        [v9 renderer:? didOutputAudioSampleBuffer:?];
      }

      v10 = *(a1 + 32);
      if (v10[22] == 1)
      {
        [v10 _enqueueSampleBufferForRecording:? isAudioSBuf:?];
      }
    }

    else if ([v6 status] == 2)
    {
      OUTLINED_FUNCTION_2_0();
      *(v13 + 24) = -6762;
      OUTLINED_FUNCTION_2_0();
      APSLogErrorAt();
    }
  }

  OUTLINED_FUNCTION_2_0();
  if (*(v12 + 24) && gLogCategory_AirPlayReceiverKit <= 90)
  {
    if (gLogCategory_AirPlayReceiverKit != -1)
    {
LABEL_15:
      OUTLINED_FUNCTION_8(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer processAudioSampleBuffer:]_block_invoke", v11, "Failed to enqueue audio sample buffer: %#m\n");
      return;
    }

    if (OUTLINED_FUNCTION_7_0(&gLogCategory_AirPlayReceiverKit))
    {
      OUTLINED_FUNCTION_2_0();
      goto LABEL_15;
    }
  }
}

- (signed)_ensureFigVideoQueue
{
  cf = 0;
  timebaseOut = 0;
  p_figVideoQueue = &self->_figVideoQueue;
  if (self->_figVideoQueue)
  {
    v19 = 0;
  }

  else
  {
    v5 = FigVideoQueueCreate();
    if (v5)
    {
      v19 = v5;
    }

    else
    {
      [(APRKStreamRenderer *)self _registerForFigVideoQueueNotifications];
      HostTimeClock = CMClockGetHostTimeClock();
      v7 = CMTimebaseCreateWithSourceClock(0, HostTimeClock, &timebaseOut);
      if (v7)
      {
        v19 = v7;
      }

      else
      {
        v8 = CMTimebaseSetRate(timebaseOut, 1.0);
        if (v8)
        {
          v19 = v8;
        }

        else
        {
          v9 = timebaseOut;
          v10 = CMClockGetHostTimeClock();
          CMClockGetTime(&time, v10);
          v11 = CMTimebaseSetTime(v9, &time);
          if (v11)
          {
            v19 = v11;
          }

          else
          {
            OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
            if (OnlyTimebase)
            {
              v19 = OnlyTimebase;
            }

            else
            {
              CMBaseObject = FigVideoQueueGetCMBaseObject();
              v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v14)
              {
                v15 = v14(CMBaseObject, *MEMORY[0x277CD64E8], *MEMORY[0x277CBED10]);
                if (v15)
                {
                  v19 = v15;
                }

                else
                {
                  v16 = FigVideoQueueSetProperty(*p_figVideoQueue, *MEMORY[0x277CD64F0], cf);
                  if (v16)
                  {
                    v19 = v16;
                  }

                  else
                  {
                    v17 = FigVideoQueueSetProperty(self->_figVideoQueue, *MEMORY[0x277CD6508], self->_mirroringLayer);
                    if (v17)
                    {
                      v19 = v17;
                    }

                    else
                    {
                      v18 = FigVideoQueueSetProperty(*p_figVideoQueue, *MEMORY[0x277CD6510], *MEMORY[0x277CBED28]);
                      if (v18)
                      {
                        v19 = v18;
                      }

                      else
                      {
                        v19 = FigVideoQueueStart(*p_figVideoQueue);
                        if (!v19)
                        {
                          goto LABEL_16;
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v19 = -12782;
              }
            }
          }
        }
      }
    }

    APSLogErrorAt();
  }

LABEL_16:
  if (timebaseOut)
  {
    CFRelease(timebaseOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19 && gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || OUTLINED_FUNCTION_7_0(&gLogCategory_AirPlayReceiverKit)))
  {
    OUTLINED_FUNCTION_8(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer _ensureFigVideoQueue]", v2, "Failed to create video queue with error: %#m");
  }

  return v19;
}

- (int)_enqueueVideoFrameForRendering:(opaqueCMSampleBuffer *)rendering
{
  renderingCopy = rendering;
  if (!rendering)
  {
    if (!self->_figVideoQueue)
    {
      goto LABEL_22;
    }

    formatDesc = self->_formatDesc;
    if (!formatDesc)
    {
      goto LABEL_22;
    }

    sampleTimingArray.presentationTimeStamp = self->_lastPTS;
    sampleTimingArray.decodeTimeStamp = **&MEMORY[0x277CC0898];
    *&sampleTimingArray.duration.value = *MEMORY[0x277CC08F0];
    sampleTimingArray.duration.epoch = *(MEMORY[0x277CC08F0] + 16);
    v7 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], 0, 1u, 0, 0, formatDesc, 0, 1, &sampleTimingArray, 0, 0, &renderingCopy);
    if (v7)
    {
      v14 = v7;
LABEL_12:
      APSLogErrorAt();
      goto LABEL_13;
    }

    figVideoQueue = self->_figVideoQueue;
    renderingCopy2 = renderingCopy;
LABEL_8:
    x = self->_sourceRect.origin.x;
    y = self->_sourceRect.origin.y;
    width = self->_sourceRect.size.width;
    height = self->_sourceRect.size.height;
    transform = self->_transform;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v13)
    {
      v14 = v13(figVideoQueue, renderingCopy2, transform, x, y, width, height, x, y, width, height);
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = -12782;
    }

    goto LABEL_12;
  }

  renderingCopy2 = rendering;
  CFRetain(rendering);
  figVideoQueue = self->_figVideoQueue;
  if (figVideoQueue)
  {
    goto LABEL_8;
  }

LABEL_22:
  v14 = 0;
LABEL_13:
  if (renderingCopy)
  {
    CFRelease(renderingCopy);
  }

  if (v14)
  {
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || OUTLINED_FUNCTION_7_0(&gLogCategory_AirPlayReceiverKit)))
    {
      OUTLINED_FUNCTION_8(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer _enqueueVideoFrameForRendering:]", rendering, "Error enqueueing video frame. This error is not recoverable. Sending user stop to terminate the session");
    }

    self->_isMirroringVideoStreamPaused = 1;
    [(APRKStreamRenderer *)self _performUIControllerActionWithBlock:?];
  }

  return v14;
}

void __55__APRKStreamRenderer_processShowPasscodePromptRequest___block_invoke_cold_1(id *a1)
{
  [*a1 delegate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer processShowPasscodePromptRequest:]_block_invoke", v1, "Calling shouldShowPasscodePromptWithString on delegate %{ptr} for renderer %{ptr}");
}

void __54__APRKStreamRenderer_processHidePasscodePromptRequest__block_invoke_cold_1(id *a1)
{
  [*a1 delegate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer processHidePasscodePromptRequest]_block_invoke", v1, "Calling shouldHidePasscodePromptForRenderer on delegate %{ptr} for renderer %{ptr}");
}

- (void)_enqueueSampleBufferForRecording:(void *)a3 isAudioSBuf:.cold.2(uint64_t a1, void *a2, void *a3)
{
  APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || OUTLINED_FUNCTION_7_0(&gLogCategory_AirPlayReceiverKit)))
  {
    v8 = a1;
    OUTLINED_FUNCTION_8(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer _enqueueSampleBufferForRecording:isAudioSBuf:]", v6, "Failed to enqueue sample buffer for the recorder: %#m\n");
  }

  [a2 _performStopRecording];
  v7 = a2[20];
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __67__APRKStreamRenderer__enqueueSampleBufferForRecording_isAudioSBuf___block_invoke;
  a3[3] = &unk_278C626E8;
  a3[4] = a2;
  dispatch_async(v7, a3);
}

void __42__APRKStreamRenderer__updateStreamingMode__block_invoke_2_cold_1(id *a1)
{
  v2 = [*a1 delegate];
  OUTLINED_FUNCTION_7(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer _updateStreamingMode]_block_invoke_2", v1, "Calling didChangeStreamRendererModeTo on delegate %{ptr} with mode %i for renderer %{ptr}");
}

- (uint64_t)_performUIControllerActionWithBlock:(uint64_t)result .cold.1(uint64_t result)
{
  if (gLogCategory_AirPlayReceiverKit <= 60)
  {
    v1 = result;
    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer _performUIControllerActionWithBlock:]", 33554492, "Unable to retrieve _backingUIController because it went away. %@ \n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer _performUIControllerActionWithBlock:]", 33554492, "Unable to retrieve _backingUIController because it went away. %@ \n", v1);
    }
  }

  return result;
}

- (uint64_t)_performUIControllerActionWithBlock:(uint64_t)result .cold.2(uint64_t result)
{
  if (gLogCategory_AirPlayReceiverKit <= 60)
  {
    v1 = result;
    if (gLogCategory_AirPlayReceiverKit != -1)
    {
      return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer _performUIControllerActionWithBlock:]", 33554492, "UIController is NULL! %@ \n", v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer _performUIControllerActionWithBlock:]", 33554492, "UIController is NULL! %@ \n", v1);
    }
  }

  return result;
}

void __69__APRKStreamRenderer_observeValueForKeyPath_ofObject_change_context___block_invoke_2_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 368));
  OUTLINED_FUNCTION_7(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer observeValueForKeyPath:ofObject:change:context:]_block_invoke_2", v1, "Calling didUpdateMetadata on delegate %{ptr} for renderer %{ptr}");
}

void __43__APRKStreamRenderer_processSenderUIEvent___block_invoke_cold_1(id *a1)
{
  [*a1 delegate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKStreamRenderer processSenderUIEvent:]_block_invoke", 33554442, "Calling handleSenderUIEvent on delegate %{ptr} for renderer %{ptr}");
}

@end