@interface VSOspreyTTSCore
- (VSInstrumentMetrics)instrumentMetrics;
- (VSOspreyTTSCore)initWithRequest:(id)request;
- (VSOspreyTTSCoreDelegate)delegate;
- (double)timeout;
- (void)cancel;
- (void)main;
- (void)performRoundTripOspreyTTS;
- (void)performStreamingOspreyTTS;
- (void)setDidReceiveAudio:(BOOL)audio;
- (void)waitUntilFinishedIfAudioReceivedWithin:(double)within;
@end

@implementation VSOspreyTTSCore

- (VSInstrumentMetrics)instrumentMetrics
{
  WeakRetained = objc_loadWeakRetained(&self->_instrumentMetrics);

  return WeakRetained;
}

- (VSOspreyTTSCoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)waitUntilFinishedIfAudioReceivedWithin:(double)within
{
  didReceiveAudioCondition = [(VSOspreyTTSCore *)self didReceiveAudioCondition];
  [didReceiveAudioCondition lock];

  didReceiveAudio = [(VSOspreyTTSCore *)self didReceiveAudio];
  didReceiveAudioCondition2 = [(VSOspreyTTSCore *)self didReceiveAudioCondition];
  v7 = didReceiveAudioCondition2;
  if (didReceiveAudio)
  {
    [didReceiveAudioCondition2 unlock];
  }

  else
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
    v9 = [v7 waitUntilDate:?];

    didReceiveAudioCondition3 = [(VSOspreyTTSCore *)self didReceiveAudioCondition];
    [didReceiveAudioCondition3 unlock];

    if ((v9 & 1) == 0)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v13 = [v11 errorWithDomain:? code:? userInfo:?];
      [(VSOspreyTTSCore *)self setError:?];

      timeoutCondition = [(VSOspreyTTSCore *)self timeoutCondition];
      [timeoutCondition stop];
    }
  }

  [(VSOspreyTTSCore *)self waitUntilFinished];
}

- (void)cancel
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "Osprey core %p is cancelled", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = VSOspreyTTSCore;
  [(VSOspreyTTSCore *)&v5 cancel];
  timeoutCondition = [(VSOspreyTTSCore *)self timeoutCondition];
  [timeoutCondition stop];
}

- (void)main
{
  mach_absolute_time();
  instrumentMetrics = [(VSOspreyTTSCore *)self instrumentMetrics];
  [instrumentMetrics setSynthesisBeginTimestamp:?];

  kdebug_trace();
  internalSettings = [(VSOspreyTTSCore *)self internalSettings];
  LOBYTE(instrumentMetrics) = [internalSettings disableOspreyStreaming];

  if (instrumentMetrics)
  {
    [(VSOspreyTTSCore *)self performRoundTripOspreyTTS];
  }

  else
  {
    [(VSOspreyTTSCore *)self performStreamingOspreyTTS];
  }

  mach_absolute_time();
  instrumentMetrics2 = [(VSOspreyTTSCore *)self instrumentMetrics];
  [instrumentMetrics2 setSynthesisEndTimestamp:?];

  kdebug_trace();
  delegateCallbackQueue = [(VSOspreyTTSCore *)self delegateCallbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__VSOspreyTTSCore_main__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_async_and_wait(delegateCallbackQueue, block);
}

void __23__VSOspreyTTSCore_main__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) error];
  [v3 ospreyCore:? didFinishWithError:?];
}

- (void)performStreamingOspreyTTS
{
  location[5] = *MEMORY[0x277D85DE8];
  instrumentMetrics = [(VSOspreyTTSCore *)self instrumentMetrics];
  [instrumentMetrics setSourceOfTTS:?];

  v4 = [VSTimeoutCondition alloc];
  [(VSOspreyTTSCore *)self timeout];
  v5 = [(VSTimeoutCondition *)v4 initWithTimeoutValue:?];
  [(VSOspreyTTSCore *)self setTimeoutCondition:?];

  objc_initWeak(location, self);
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__869;
  v34 = __Block_byref_object_dispose__870;
  array = [MEMORY[0x277CBEB18] array];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__869;
  v28[4] = __Block_byref_object_dispose__870;
  array2 = [MEMORY[0x277CBEB18] array];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__869;
  v26[4] = __Block_byref_object_dispose__870;
  v27 = 0;
  serverTTSClient = [(VSOspreyTTSCore *)self serverTTSClient];
  request = [(VSOspreyTTSCore *)self request];
  v24[1] = MEMORY[0x277D85DD0];
  v24[2] = 3221225472;
  v24[3] = __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke;
  v24[4] = &unk_279E4B638;
  objc_copyWeak(&v25, location);
  v24[5] = self;
  v24[6] = v36;
  v24[7] = &v30;
  v24[8] = v28;
  v24[9] = v26;
  v23[1] = MEMORY[0x277D85DD0];
  v23[2] = 3221225472;
  v23[3] = __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_26;
  v23[4] = &unk_279E4B660;
  objc_copyWeak(v24, location);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_2_28;
  v19 = &unk_279E4B6B0;
  objc_copyWeak(v23, location);
  v20 = v36;
  v21 = &v30;
  v22 = v28;
  [serverTTSClient ospreyStartStreamingRequest:? dataHandler:? metaInfoHandler:? completion:?];

  timeoutCondition = [(VSOspreyTTSCore *)self timeoutCondition];
  LOBYTE(request) = [timeoutCondition wait];

  if ((request & 1) == 0)
  {
    if (v31[5])
    {
      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&dword_2727E4000, v9, OS_LOG_TYPE_ERROR, "Timeout in osprey streaming", v15, 2u);
      }

      v10 = MEMORY[0x277CCA9B8];
      location[1] = *MEMORY[0x277CCA450];
      location[2] = @"Osprey streaming TTS timed out";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v12 = [v10 errorWithDomain:? code:? userInfo:?];
      [(VSOspreyTTSCore *)self setError:?];
    }

    else
    {
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "Network stall in osprey streaming", v15, 2u);
      }

      v14 = MEMORY[0x277CCA9B8];
      location[3] = *MEMORY[0x277CCA450];
      location[4] = @"Osprey streaming network stall";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v12 = [v14 errorWithDomain:? code:? userInfo:?];
      [(VSOspreyTTSCore *)self setError:?];
    }

    [(VSOspreyTTSCore *)self cancel];
  }

  objc_destroyWeak(v23);
  objc_destroyWeak(v24);
  objc_destroyWeak(&v25);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(v36, 8);
  objc_destroyWeak(location);
}

void __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v8, "isFinished") & 1) == 0)
  {
    [v5 duration];
    *(*(*(a1 + 40) + 8) + 24) = v9 + *(*(*(a1 + 40) + 8) + 24);
    v10 = *(*(*(a1 + 40) + 8) + 24);
    [v8 bufferDurationLimit];
    if (v10 > fmax(v11 + 0.1, 0.8))
    {
      v12 = [v8 internalSettings];
      v13 = [v12 simulateNetworkStall];

      if (v13)
      {
        v14 = VSGetLogDefault();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_INFO, "Simulate network stall is on, ignore audio object", buf, 2u);
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    v15 = [*(a1 + 32) instrumentMetrics];
    v16 = [v15 serverFirstPacketTimestamp];

    if (!v16)
    {
      mach_absolute_time();
      v17 = [*(a1 + 32) instrumentMetrics];
      [v17 setServerFirstPacketTimestamp:?];
    }

    mach_absolute_time();
    v18 = [*(a1 + 32) instrumentMetrics];
    [v18 setServerLastPacketTimestamp:?];

    v19 = [*(a1 + 32) instrumentMetrics];
    [v19 setServerStreamedAudioDuration:?];

    if ([v8 didReceiveAudio])
    {
      v20 = [v8 delegateCallbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_24;
      block[3] = &unk_279E4B970;
      block[4] = v8;
      v43 = v5;
      v44 = v6;
      dispatch_async(v20, block);

      v21 = v43;
    }

    else
    {
      v22 = *(*(*(a1 + 40) + 8) + 24);
      [v8 bufferDurationLimit];
      if (v22 < v23)
      {
        [*(*(*(a1 + 48) + 8) + 40) addObject:?];
        [*(*(*(a1 + 56) + 8) + 40) addObject:?];
LABEL_16:
        v28 = *(*(*(a1 + 64) + 8) + 40);
        if (v28)
        {
          v29 = [v28 dateByAddingTimeInterval:?];
          [v29 timeIntervalSinceNow];
          v30 = [v8 timeoutCondition];
          [v30 setTimeoutValue:?];

          v31 = VSGetLogDefault();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = [v8 timeoutCondition];
            [v32 timeoutValue];
            *buf = 134217984;
            v46 = v33;
            _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_INFO, "Refresh timeout value as %.2f", buf, 0xCu);
          }
        }

        v14 = [v8 timeoutCondition];
        [v14 refresh];
        goto LABEL_21;
      }

      [v8 setDidReceiveAudio:?];
      v24 = [v8 delegateCallbackQueue];
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_2;
      v37 = &unk_279E4B610;
      v38 = v8;
      v41 = *(a1 + 48);
      v39 = v5;
      v40 = v6;
      dispatch_async(v24, &v34);

      v25 = [MEMORY[0x277CBEAA8] date];
      v26 = *(*(a1 + 64) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v21 = v39;
    }

    goto LABEL_16;
  }

LABEL_22:
}

void __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_26(uint64_t a1, void *a2, void *a3, float a4)
{
  v10 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v8, "isFinished") & 1) == 0)
  {
    [v8 setVoice:?];
    [v8 setVoiceResource:?];
    v9 = [v8 internalSettings];
    [v9 streamBufferDuration];
    [v8 setBufferDurationLimit:?];
  }
}

void __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_2_28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v5, "isFinished") & 1) == 0)
  {
    if (*(*(*(a1 + 32) + 8) + 24) > 0.8 && ([v5 internalSettings], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "simulateNetworkStall"), v6, v7))
    {
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_INFO, "Simulate network stall is on, ignore completion callback", buf, 2u);
      }
    }

    else
    {
      v9 = [v5 error];

      if (!v9)
      {
        [v5 setError:?];
      }

      v10 = [v5 delegateCallbackQueue];
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_29;
      v15 = &unk_279E4B688;
      v18 = *(a1 + 40);
      v16 = v3;
      v17 = v5;
      v19 = *(a1 + 48);
      dispatch_async(v10, &v12);

      v11 = [v5 timeoutCondition];
      [v11 stop];

      v8 = v16;
    }
  }
}

void __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_29(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (!*(a1 + 32))
    {
      [*(a1 + 40) setDidReceiveAudio:?];
      if ([*(*(*(a1 + 48) + 8) + 40) count])
      {
        v2 = 0;
        do
        {
          v3 = [*(a1 + 40) delegate];
          v4 = [*(*(*(a1 + 48) + 8) + 40) objectAtIndexedSubscript:?];
          v5 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:?];
          [v3 ospreyCore:? didReceiveAudio:? wordTimingInfo:?];

          ++v2;
        }

        while (v2 < [*(*(*(a1 + 48) + 8) + 40) count]);
      }
    }
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_24(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 ospreyCore:? didReceiveAudio:? wordTimingInfo:?];
}

void __44__VSOspreyTTSCore_performStreamingOspreyTTS__block_invoke_2(uint64_t a1)
{
  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    v2 = 0;
    do
    {
      v3 = [*(a1 + 32) delegate];
      v4 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:?];
      v5 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:?];
      [v3 ospreyCore:? didReceiveAudio:? wordTimingInfo:?];

      ++v2;
    }

    while (v2 < [*(*(*(a1 + 56) + 8) + 40) count]);
  }

  v6 = [*(a1 + 32) delegate];
  [v6 ospreyCore:? didReceiveAudio:? wordTimingInfo:?];

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

- (void)performRoundTripOspreyTTS
{
  location[3] = *MEMORY[0x277D85DE8];
  instrumentMetrics = [(VSOspreyTTSCore *)self instrumentMetrics];
  [instrumentMetrics setSourceOfTTS:?];

  v4 = [VSTimeoutCondition alloc];
  [(VSOspreyTTSCore *)self timeout];
  v5 = [(VSTimeoutCondition *)v4 initWithTimeoutValue:?];
  [(VSOspreyTTSCore *)self setTimeoutCondition:?];

  objc_initWeak(location, self);
  serverTTSClient = [(VSOspreyTTSCore *)self serverTTSClient];
  request = [(VSOspreyTTSCore *)self request];
  v13[1] = MEMORY[0x277D85DD0];
  v13[2] = 3221225472;
  v13[3] = __44__VSOspreyTTSCore_performRoundTripOspreyTTS__block_invoke;
  v13[4] = &unk_279E4B5C0;
  objc_copyWeak(&v14, location);
  v12 = MEMORY[0x277D85DD0];
  objc_copyWeak(v13, location);
  [serverTTSClient ospreyStartSynthesisRequest:v12 responseHandler:3221225472 completion:{__44__VSOspreyTTSCore_performRoundTripOspreyTTS__block_invoke_3, &unk_279E4B5E8}];

  timeoutCondition = [(VSOspreyTTSCore *)self timeoutCondition];
  LOBYTE(request) = [timeoutCondition wait];

  if ((request & 1) == 0)
  {
    v9 = MEMORY[0x277CCA9B8];
    location[1] = *MEMORY[0x277CCA450];
    location[2] = @"Osprey round-trip TTS timed out";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v11 = [v9 errorWithDomain:? code:? userInfo:?];
    [(VSOspreyTTSCore *)self setError:?];
  }

  objc_destroyWeak(v13);
  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
}

void __44__VSOspreyTTSCore_performRoundTripOspreyTTS__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v8, "isFinished") & 1) == 0)
  {
    [v8 setDidReceiveAudio:?];
    v9 = [v8 delegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__VSOspreyTTSCore_performRoundTripOspreyTTS__block_invoke_2;
    block[3] = &unk_279E4B970;
    block[4] = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

void __44__VSOspreyTTSCore_performRoundTripOspreyTTS__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v4, "isFinished") & 1) == 0)
  {
    v5 = [v4 error];

    if (!v5)
    {
      [v4 setError:?];
    }

    v6 = [v4 timeoutCondition];
    [v6 stop];
  }
}

void __44__VSOspreyTTSCore_performRoundTripOspreyTTS__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 ospreyCore:? didReceiveAudio:? wordTimingInfo:?];
}

- (void)setDidReceiveAudio:(BOOL)audio
{
  audioCopy = audio;
  didReceiveAudioCondition = [(VSOspreyTTSCore *)self didReceiveAudioCondition];
  [didReceiveAudioCondition lock];

  self->_didReceiveAudio = audioCopy;
  if (audioCopy)
  {
    didReceiveAudioCondition2 = [(VSOspreyTTSCore *)self didReceiveAudioCondition];
    [didReceiveAudioCondition2 broadcast];
  }

  didReceiveAudioCondition3 = [(VSOspreyTTSCore *)self didReceiveAudioCondition];
  [didReceiveAudioCondition3 unlock];
}

- (double)timeout
{
  internalSettings = [(VSOspreyTTSCore *)self internalSettings];
  [internalSettings serverTTSTimeout];
  if (v4 == 0.0)
  {
    serverConfig = [(VSOspreyTTSCore *)self serverConfig];
    request = [(VSOspreyTTSCore *)self request];
    clientBundleIdentifier = [request clientBundleIdentifier];
    [serverConfig timeoutForAppId:?];
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (VSOspreyTTSCore)initWithRequest:(id)request
{
  requestCopy = request;
  v20.receiver = self;
  v20.super_class = VSOspreyTTSCore;
  v6 = [(VSOspreyTTSCore *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    v8 = +[VSSiriServerConfiguration defaultConfig];
    serverConfig = v7->_serverConfig;
    v7->_serverConfig = v8;

    v10 = objc_alloc_init(VSServerTTSClient);
    serverTTSClient = v7->_serverTTSClient;
    v7->_serverTTSClient = v10;

    standardInstance = [MEMORY[0x277D79998] standardInstance];
    internalSettings = v7->_internalSettings;
    v7->_internalSettings = standardInstance;

    v14 = objc_alloc_init(MEMORY[0x277CCA928]);
    didReceiveAudioCondition = v7->_didReceiveAudioCondition;
    v7->_didReceiveAudioCondition = v14;

    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v17 = dispatch_queue_create("VSOspreyTTSCoreCallbackQueue", v16);
    delegateCallbackQueue = v7->_delegateCallbackQueue;
    v7->_delegateCallbackQueue = v17;
  }

  return v7;
}

@end