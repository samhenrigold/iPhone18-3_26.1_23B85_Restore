@interface VSServerTTSClient
+ (BOOL)shouldUseServerTTSForRequest:(id)request;
- (void)ospreyStartStreamingRequest:(id)request dataHandler:(id)handler metaInfoHandler:(id)infoHandler completion:(id)completion;
- (void)ospreyStartSynthesisRequest:(id)request responseHandler:(id)handler completion:(id)completion;
@end

@implementation VSServerTTSClient

+ (BOOL)shouldUseServerTTSForRequest:(id)request
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  standardInstance = [MEMORY[0x277D79998] standardInstance];
  disableServerTTS = [standardInstance disableServerTTS];

  if (!disableServerTTS)
  {
    standardInstance2 = [MEMORY[0x277D79998] standardInstance];
    forceServerTTS = [standardInstance2 forceServerTTS];

    if (forceServerTTS)
    {
      v6 = VSGetLogDefault();
      v8 = 1;
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      LOWORD(v29) = 0;
      v11 = "forceServerTTS is enabled by user default, force server TTS";
LABEL_12:
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, v11, &v29, 2u);
      goto LABEL_31;
    }

    if ([requestCopy forceServerTTS])
    {
      v6 = VSGetLogDefault();
      v8 = 1;
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      LOWORD(v29) = 0;
      v11 = "forceServerTTS is enabled by speech request, force server TTS";
      goto LABEL_12;
    }

    v12 = +[VSSpeechCache defaultCacheStore];
    v13 = [v12 isPreinstalledCacheAvailableForRequest:?];

    if (v13)
    {
      v6 = VSGetLogDefault();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      LOWORD(v29) = 0;
      v7 = "Preinstalled cache is found, disable server TTS";
      goto LABEL_4;
    }

    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    languageCode = [requestCopy languageCode];
    voiceName = [requestCopy voiceName];
    [requestCopy voiceType];
    [requestCopy gender];
    [requestCopy footprint];
    v6 = [mEMORY[0x277D79950] selectVoiceForLang:? name:? type:? gender:? footprint:?];

    voiceData = [v6 voiceData];
    if ([voiceData type] == 4)
    {
      isNeuralFallbackCondition = [MEMORY[0x277D79958] isNeuralFallbackCondition];

      if ((isNeuralFallbackCondition & 1) == 0)
      {
        v19 = VSGetLogDefault();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&dword_2727E4000, v19, OS_LOG_TYPE_INFO, "Neural voice is found on device without fallback condition, disable server TTS", &v29, 2u);
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    v20 = +[VSCachingService standardService];
    text = [requestCopy text];
    v22 = [v20 shortTermCacheForHash:?];

    if (v22)
    {
      v19 = VSGetLogDefault();
      v8 = 1;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_2727E4000, v19, OS_LOG_TYPE_INFO, "Short term cache is found for the text, use server TTS", &v29, 2u);
      }

      goto LABEL_30;
    }

    if (![requestCopy canUseServerTTS])
    {
      goto LABEL_5;
    }

    v23 = +[VSSiriServerConfiguration defaultConfig];
    allowedAppID = [v23 allowedAppID];
    clientBundleIdentifier = [requestCopy clientBundleIdentifier];
    v26 = [allowedAppID containsObject:?];

    if (v26)
    {
      v8 = 1;
      goto LABEL_31;
    }

    v19 = VSGetLogDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      clientBundleIdentifier2 = [requestCopy clientBundleIdentifier];
      v29 = 138543362;
      v30 = clientBundleIdentifier2;
      _os_log_impl(&dword_2727E4000, v19, OS_LOG_TYPE_INFO, "Server TTS is disabled since '%{public}@' is not in the list of allowed apps", &v29, 0xCu);
    }

LABEL_29:
    v8 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v29) = 0;
    v7 = "disableServerTTS is enabled by user default, disable server TTS";
LABEL_4:
    _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, v7, &v29, 2u);
  }

LABEL_5:
  v8 = 0;
LABEL_31:

  return v8;
}

- (void)ospreyStartStreamingRequest:(id)request dataHandler:(id)handler metaInfoHandler:(id)infoHandler completion:(id)completion
{
  requestCopy = request;
  handlerCopy = handler;
  infoHandlerCopy = infoHandler;
  completionCopy = completion;
  v13 = [OPTTSMutableTextToSpeechRequest requestFromVSRequest:?];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__3265;
  v24[4] = __Block_byref_object_dispose__3266;
  v25 = MEMORY[0x2743CD880](handlerCopy);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__3265;
  v22[4] = __Block_byref_object_dispose__3266;
  v23 = MEMORY[0x2743CD880](completionCopy);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x4810000000;
  v19 = 0u;
  v20 = 0u;
  v18[3] = &unk_27283C3F7;
  v21 = 0;
  v14 = +[OspreyTTSService sharedInstance];
  v17 = infoHandlerCopy;
  v15 = MEMORY[0x277D85DD0];
  v16 = v13;
  [v14 streamTTS:MEMORY[0x277D85DD0] beginHandler:3221225472 chunkHandler:__88__VSServerTTSClient_ospreyStartStreamingRequest_dataHandler_metaInfoHandler_completion___block_invoke_4 endHandler:&unk_279E4BB40 completion:{v22, v15, 3221225472, __88__VSServerTTSClient_ospreyStartStreamingRequest_dataHandler_metaInfoHandler_completion___block_invoke_2, &unk_279E4BA80}];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v22, 8);

  _Block_object_dispose(v24, 8);
}

void __88__VSServerTTSClient_ospreyStartStreamingRequest_dataHandler_metaInfoHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 decoder_description];
  [v15 audioStreamBasicDescription];
  v5 = *(*(a1 + 40) + 8);
  v6 = v16;
  v7 = v15[1];
  *(v5 + 32) = v15[0];
  *(v5 + 48) = v7;
  *(v5 + 64) = v6;

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v3 meta_info];
    v10 = [v9 voice];
    v11 = [v10 vs_voice];
    v12 = [v3 meta_info];
    v13 = [v12 resource];
    v14 = [v13 vs_voiceResource];
    [v3 streaming_playback_buffer_size_in_seconds];
    (*(v8 + 16))(v8, v11, v14);
  }
}

void __88__VSServerTTSClient_ospreyStartStreamingRequest_dataHandler_metaInfoHandler_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D79920];
  v5 = *(*(a1 + 40) + 8);
  v6 = [v3 audio];
  v7 = [v4 audioDataWithASBD:*(v5 + 32) rawData:{*(v5 + 48), *(v5 + 56), *(v5 + 64)}];

  if (v7)
  {
    v8 = [v3 word_timing_info];
    v9 = [*(a1 + 32) text];
    v10 = [OPTTSWordTimingInfo vs_wordTimingInfos:"vs_wordTimingInfos:withText:" withText:?];

    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, v7, v10);
    }

    goto LABEL_6;
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = *(*(*(a1 + 56) + 8) + 40);
  if (v14)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v17 = [v15 errorWithDomain:? code:? userInfo:?];
    (*(v14 + 16))(v14, v17);

    v18 = *(*(a1 + 56) + 8);
    v10 = *(v18 + 40);
    *(v18 + 40) = 0;
LABEL_6:
  }
}

void __88__VSServerTTSClient_ospreyStartStreamingRequest_dataHandler_metaInfoHandler_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

- (void)ospreyStartSynthesisRequest:(id)request responseHandler:(id)handler completion:(id)completion
{
  requestCopy = request;
  handlerCopy = handler;
  completionCopy = completion;
  v10 = [OPTTSMutableTextToSpeechRequest requestFromVSRequest:?];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__3265;
  v21[4] = __Block_byref_object_dispose__3266;
  v22 = MEMORY[0x2743CD880](completionCopy);
  v11 = +[OspreyTTSService sharedInstance];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __76__VSServerTTSClient_ospreyStartSynthesisRequest_responseHandler_completion___block_invoke;
  v17 = &unk_279E4BA30;
  v20 = v21;
  v12 = requestCopy;
  v18 = v12;
  v13 = handlerCopy;
  v19 = v13;
  [v11 roundTripTTS:? responseHandler:?];

  _Block_object_dispose(v21, 8);
}

void __76__VSServerTTSClient_ospreyStartSynthesisRequest_responseHandler_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v11 = MEMORY[0x277D79920];
    v12 = [v5 decoder_description];
    if (v12)
    {
      [(uint8_t *)buf audioStreamBasicDescription];
    }

    else
    {
      v27 = 0;
      memset(buf, 0, sizeof(buf));
    }

    v13 = [v5 audio];
    v10 = [v11 audioDataWithASBD:? rawData:?];

    if (v10)
    {
      v14 = [v5 word_timing_info];
      v15 = [*(a1 + 32) utterance];
      v16 = [OPTTSWordTimingInfo vs_wordTimingInfos:"vs_wordTimingInfos:withText:" withText:?];

      v17 = *(a1 + 40);
      if (v17)
      {
        (*(v17 + 16))(v17, v10, v16);
      }

      v18 = *(*(*(a1 + 48) + 8) + 40);
      if (v18)
      {
        (*(v18 + 16))(v18, 0);
        v19 = *(*(a1 + 48) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = 0;
      }
    }

    else
    {
      v21 = *(*(*(a1 + 48) + 8) + 40);
      if (!v21)
      {
        v10 = 0;
        goto LABEL_17;
      }

      v22 = MEMORY[0x277CCA9B8];
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:*MEMORY[0x277CCA450] forKeys:@"Unable to process audio data." count:?];
      v24 = [v22 errorWithDomain:? code:? userInfo:?];
      (*(v21 + 16))(v21, v24);

      v25 = *(*(a1 + 48) + 8);
      v16 = *(v25 + 40);
      *(v25 + 40) = 0;
    }

LABEL_17:
    goto LABEL_18;
  }

  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[VSServerTTSClient ospreyStartSynthesisRequest:responseHandler:completion:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "%s, %@", buf, 0x16u);
  }

  v8 = *(*(*(a1 + 48) + 8) + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
    goto LABEL_17;
  }

LABEL_18:
}

@end