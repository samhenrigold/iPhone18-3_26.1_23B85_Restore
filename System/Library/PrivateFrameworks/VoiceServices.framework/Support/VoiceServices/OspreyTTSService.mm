@interface OspreyTTSService
+ (id)ospreyServiceEndpointURL;
+ (id)sharedInstance;
- (OspreyTTSService)init;
- (void)roundTripTTS:(id)s responseHandler:(id)handler;
- (void)streamTTS:(id)s beginHandler:(id)handler chunkHandler:(id)chunkHandler endHandler:(id)endHandler completion:(id)completion;
@end

@implementation OspreyTTSService

- (void)streamTTS:(id)s beginHandler:(id)handler chunkHandler:(id)chunkHandler endHandler:(id)endHandler completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  sCopy = s;
  handlerCopy = handler;
  chunkHandlerCopy = chunkHandler;
  endHandlerCopy = endHandler;
  completionCopy = completion;
  v38 = handlerCopy;
  v39 = chunkHandlerCopy;
  v15 = objc_alloc_init(OPTTSMutableStartTextToSpeechStreamingRequest);
  selfCopy = self;
  deviceID = [(OspreyTTSService *)self deviceID];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setSpeech_id:?];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setSession_id:?];

  language = [sCopy language];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setLanguage:?];

  voice_name = [sCopy voice_name];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setVoice_name:?];

  gender = [sCopy gender];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setGender:?];

  text = [sCopy text];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setText:?];

  [sCopy audio_type];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setAudio_type:?];
  [sCopy enable_word_timing_info];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setEnable_word_timing_info:?];
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID2 UUIDString];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setStream_id:?];

  meta_info = [sCopy meta_info];
  [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setMeta_info:?];

  v26 = +[VSSiriServerConfiguration defaultConfig];
  experimentIdentifier = [v26 experimentIdentifier];

  if (experimentIdentifier)
  {
    v28 = objc_alloc_init(OPTTSMutableTextToSpeechRequestExperiment);
    [(OPTTSMutableTextToSpeechRequestExperiment *)v28 setExperiment_identifier:?];
    [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 setExperiment:?];
  }

  v29 = objc_alloc_init(OPTTSMutableTextToSpeechRouterStreamingStreamingRequest);
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingRequest *)v29 setContent_type:?];
  [(OPTTSMutableTextToSpeechRouterStreamingStreamingRequest *)v29 setContentAsOPTTSStartTextToSpeechStreamingRequest:?];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__2040;
  v47[4] = __Block_byref_object_dispose__2041;
  v48 = MEMORY[0x2743CD880](completionCopy);
  v30 = VSGetLogDefault();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    speech_id = [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 speech_id];
    session_id = [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 session_id];
    stream_id = [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 stream_id];
    meta_info2 = [(OPTTSMutableStartTextToSpeechStreamingRequest *)v15 meta_info];
    app_id = [meta_info2 app_id];
    *buf = 138413058;
    v50 = speech_id;
    v51 = 2112;
    v52 = session_id;
    v53 = 2112;
    v54 = stream_id;
    v55 = 2112;
    v56 = app_id;
    _os_log_impl(&dword_2727E4000, v30, OS_LOG_TYPE_DEFAULT, "Sent Osprey streaming request with speech_id '%@', session_id '%@', stream_id '%@', app_id '%@'", buf, 0x2Au);
  }

  flatbuffData = [(OPTTSTextToSpeechRouterStreamingStreamingRequest *)v29 flatbuffData];
  v46 = v15;
  v42 = v46;
  v43 = v38;
  v44 = v39;
  v45 = endHandlerCopy;
  [OspreyChannel serverStreamingRequestWithMethodName:selfCopy requestData:"serverStreamingRequestWithMethodName:requestData:requestBuilder:streamingResponseHandler:completion:" requestBuilder:? streamingResponseHandler:? completion:?];

  _Block_object_dispose(v47, 8);
}

void __78__OspreyTTSService_streamTTS_beginHandler_chunkHandler_endHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) session_id];
  [v4 setClientTraceIdentifier:?];
}

void __78__OspreyTTSService_streamTTS_beginHandler_chunkHandler_endHandler_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[OPTTSTextToSpeechRouterStreamingStreamingResponse alloc] initAndVerifyWithFlatbuffData:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 content_type];
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v29 = [v5 contentAsOPTTSPartialTextToSpeechStreamingResponse];
        v30 = [v29 error_code];

        if (v30 == 200)
        {
          v31 = VSGetLogDefault();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = [v5 contentAsOPTTSPartialTextToSpeechStreamingResponse];
            *buf = 67109120;
            LODWORD(v66) = [v32 current_pkt_number];
            _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_INFO, "Osprey streaming received Chunk response, pkt number: %d", buf, 8u);
          }

          v33 = *(a1 + 48);
          v13 = [v5 contentAsOPTTSPartialTextToSpeechStreamingResponse];
          (*(v33 + 16))(v33, v13);
        }

        else
        {
          v52 = *(*(*(a1 + 64) + 8) + 40);
          if (v52)
          {
            v53 = MEMORY[0x277CCA9B8];
            v54 = [v5 contentAsOPTTSPartialTextToSpeechStreamingResponse];
            v63 = [v54 error_str];
            v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
            v56 = [v53 errorWithDomain:? code:? userInfo:?];
            (*(v52 + 16))(v52, v56);

            v57 = *(*(a1 + 64) + 8);
            v58 = *(v57 + 40);
            *(v57 + 40) = 0;
          }

          v13 = VSGetLogDefault();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v60 = [v5 contentAsOPTTSPartialTextToSpeechStreamingResponse];
            v61 = [v60 error_code];
            *buf = 67109120;
            LODWORD(v66) = v61;
            _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "Osprey streaming received Chunk response with non 200 status: %d", buf, 8u);
          }
        }

        goto LABEL_39;
      }

      if (v6 == 3)
      {
        v20 = [v5 contentAsOPTTSFinalTextToSpeechStreamingResponse];
        v21 = [v20 error_code];

        if (v21 == 200)
        {
          v22 = VSGetLogDefault();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = [v5 contentAsOPTTSFinalTextToSpeechStreamingResponse];
            *buf = 67109120;
            LODWORD(v66) = [v23 total_pkt_number];
            _os_log_impl(&dword_2727E4000, v22, OS_LOG_TYPE_INFO, "Osprey streaming received End response, total pkt: %d", buf, 8u);
          }

          v24 = *(a1 + 56);
          v13 = [v5 contentAsOPTTSFinalTextToSpeechStreamingResponse];
          (*(v24 + 16))(v24, v13);
        }

        else
        {
          v43 = *(*(*(a1 + 64) + 8) + 40);
          if (v43)
          {
            v44 = MEMORY[0x277CCA9B8];
            v45 = [v5 contentAsOPTTSFinalTextToSpeechStreamingResponse];
            v62 = [v45 error_str];
            v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
            v47 = [v44 errorWithDomain:? code:? userInfo:?];
            (*(v43 + 16))(v43, v47);

            v48 = *(*(a1 + 64) + 8);
            v49 = *(v48 + 40);
            *(v48 + 40) = 0;
          }

          v13 = VSGetLogDefault();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v50 = [v5 contentAsOPTTSFinalTextToSpeechStreamingResponse];
            v51 = [v50 error_code];
            *buf = 67109120;
            LODWORD(v66) = v51;
            _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "Osprey streaming received End response with non 200 status: %d", buf, 8u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (!v6)
      {
        v25 = VSGetLogDefault();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v66 = "[OspreyTTSService streamTTS:beginHandler:chunkHandler:endHandler:completion:]_block_invoke";
          _os_log_error_impl(&dword_2727E4000, v25, OS_LOG_TYPE_ERROR, "%s, Unknown response from Osprey for streaming TTS", buf, 0xCu);
        }

        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
        v26 = *(*(*(a1 + 64) + 8) + 40);
        if (v26)
        {
          (*(v26 + 16))(v26, v13);
          v27 = *(*(a1 + 64) + 8);
          v28 = *(v27 + 40);
          *(v27 + 40) = 0;
        }

        goto LABEL_39;
      }

      if (v6 == 1)
      {
        v7 = [v5 contentAsOPTTSBeginTextToSpeechStreamingResponse];
        v8 = [v7 error_code];

        if (v8 == 200)
        {
          v9 = VSGetLogDefault();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = [v5 contentAsOPTTSBeginTextToSpeechStreamingResponse];
            v11 = [v10 stream_id];
            *buf = 138412290;
            v66 = v11;
            _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_INFO, "Osprey streaming received Begin response %@", buf, 0xCu);
          }

          v12 = *(a1 + 40);
          v13 = [v5 contentAsOPTTSBeginTextToSpeechStreamingResponse];
          (*(v12 + 16))(v12, v13);
        }

        else
        {
          v34 = *(*(*(a1 + 64) + 8) + 40);
          if (v34)
          {
            v35 = MEMORY[0x277CCA9B8];
            v36 = [v5 contentAsOPTTSBeginTextToSpeechStreamingResponse];
            v64 = [v36 error_str];
            v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
            v38 = [v35 errorWithDomain:? code:? userInfo:?];
            (*(v34 + 16))(v34, v38);

            v39 = *(*(a1 + 64) + 8);
            v40 = *(v39 + 40);
            *(v39 + 40) = 0;
          }

          v13 = VSGetLogDefault();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v41 = [v5 contentAsOPTTSBeginTextToSpeechStreamingResponse];
            v42 = [v41 error_code];
            *buf = 67109120;
            LODWORD(v66) = v42;
            _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, "Osprey streaming received Begin response with non 200 status: %d", buf, 8u);
          }
        }

        goto LABEL_39;
      }
    }
  }

  else
  {
    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v59 = [*(a1 + 32) stream_id];
      *buf = 138412290;
      v66 = v59;
      _os_log_error_impl(&dword_2727E4000, v14, OS_LOG_TYPE_ERROR, "Corrupted Osprey response, stream ID: %@", buf, 0xCu);
    }

    v15 = *(*(*(a1 + 64) + 8) + 40);
    if (v15)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v18 = [v16 errorWithDomain:? code:? userInfo:?];
      (*(v15 + 16))(v15, v18);

      v19 = *(*(a1 + 64) + 8);
      v13 = *(v19 + 40);
      *(v19 + 40) = 0;
LABEL_39:
    }
  }
}

void __78__OspreyTTSService_streamTTS_beginHandler_chunkHandler_endHandler_completion___block_invoke_58(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Osprey streaming invokes completion with error %@", buf, 0xCu);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = [v4 localizedDescription];
    v14 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v9 = [v6 errorWithDomain:? code:? userInfo:?];

    v10 = v9;
  }

  else
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_INFO, "Osprey streaming invokes completion callback", buf, 2u);
    }

    v10 = 0;
  }

  v11 = *(*(*(a1 + 32) + 8) + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
  }
}

- (void)roundTripTTS:(id)s responseHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  sCopy = s;
  handlerCopy = handler;
  deviceID = [(OspreyTTSService *)self deviceID];
  [sCopy setSpeech_id:?];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [sCopy setSession_id:?];

  v11 = +[VSSiriServerConfiguration defaultConfig];
  experimentIdentifier = [v11 experimentIdentifier];

  if (experimentIdentifier)
  {
    v13 = objc_alloc_init(OPTTSMutableTextToSpeechRequestExperiment);
    [(OPTTSMutableTextToSpeechRequestExperiment *)v13 setExperiment_identifier:?];
    [sCopy setExperiment:?];
  }

  v14 = VSGetLogDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    speech_id = [sCopy speech_id];
    session_id = [sCopy session_id];
    meta_info = [sCopy meta_info];
    app_id = [meta_info app_id];
    *buf = 138412802;
    v24 = speech_id;
    v25 = 2112;
    v26 = session_id;
    v27 = 2112;
    v28 = app_id;
    _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_DEFAULT, "Sent Osprey grpc request with speech_id '%@', session_id '%@', app_id '%@'", buf, 0x20u);
  }

  flatbuffData = [sCopy flatbuffData];
  v22 = sCopy;
  v20 = MEMORY[0x277D85DD0];
  v21 = handlerCopy;
  [(OspreyChannel *)self unaryRequestWithMethodName:v20 requestData:3221225472 requestBuilder:__49__OspreyTTSService_roundTripTTS_responseHandler___block_invoke_2 responseHandler:&unk_279E4B8F8];
}

void __49__OspreyTTSService_roundTripTTS_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) session_id];
  [v4 setClientTraceIdentifier:?];
}

void __49__OspreyTTSService_roundTripTTS_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (!v5 || ![v5 length])
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v9 = [v10 errorWithDomain:? code:? userInfo:?];

      v12 = VSGetLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v22 = [v9 localizedDescription];
        *buf = 136315394;
        v25 = "[OspreyTTSService roundTripTTS:responseHandler:]_block_invoke";
        v26 = 2112;
        v27 = v22;
        _os_log_error_impl(&dword_2727E4000, v12, OS_LOG_TYPE_ERROR, "%s, Error: %@", buf, 0x16u);
      }

      (*(*(a1 + 32) + 16))();
      goto LABEL_17;
    }

    v8 = [[OPTTSTextToSpeechResponse alloc] initWithFlatbuffData:?];
    v9 = v8;
    if (v8)
    {
      if (!-[OPTTSTextToSpeechResponse error_code](v8, "error_code") || [v9 error_code] == 200)
      {
        (*(*(a1 + 32) + 16))();
LABEL_17:

        goto LABEL_18;
      }

      v17 = MEMORY[0x277CCA9B8];
      v18 = MEMORY[0x277CCACA8];
      v19 = [v9 error_code];
      v20 = [v9 error_str];
      v23 = [v18 stringWithFormat:v19, v20];
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v15 = [v17 errorWithDomain:? code:? userInfo:?];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      v15 = [v13 errorWithDomain:? code:? userInfo:?];

      (*(*(a1 + 32) + 16))();
    }

    goto LABEL_17;
  }

  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v16 = [v6 localizedDescription];
    *buf = 136315394;
    v25 = "[OspreyTTSService roundTripTTS:responseHandler:]_block_invoke_2";
    v26 = 2112;
    v27 = v16;
    _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "%s, Error: %@", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_18:
}

- (OspreyTTSService)init
{
  v3 = +[OspreyTTSService ospreyServiceEndpointURL];
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [defaultSessionConfiguration setTimeoutIntervalForRequest:?];
  [defaultSessionConfiguration setTimeoutIntervalForResource:?];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:?];
  v11.receiver = self;
  v11.super_class = OspreyTTSService;
  v6 = [(OspreyChannel *)&v11 initWithURL:v5 configuration:defaultSessionConfiguration];

  if (v6)
  {
    [(OspreyChannel *)v6 setUseCompression:?];
    defaultInstance = [MEMORY[0x277D79978] defaultInstance];
    deviceUUID = [defaultInstance deviceUUID];
    deviceID = v6->_deviceID;
    v6->_deviceID = deviceUUID;
  }

  return v6;
}

+ (id)sharedInstance
{
  if (+[OspreyTTSService sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[OspreyTTSService sharedInstance]::onceToken, &__block_literal_global_2088);
  }

  v3 = +[OspreyTTSService sharedInstance]::__sharedInstance;

  return v3;
}

uint64_t __34__OspreyTTSService_sharedInstance__block_invoke()
{
  +[OspreyTTSService sharedInstance]::__sharedInstance = objc_alloc_init(OspreyTTSService);

  return MEMORY[0x2821F96F8]();
}

+ (id)ospreyServiceEndpointURL
{
  standardInstance = [MEMORY[0x277D79998] standardInstance];
  ospreyEndpointURL = [standardInstance ospreyEndpointURL];

  if ([ospreyEndpointURL length])
  {
    v4 = ospreyEndpointURL;
  }

  else if ([MEMORY[0x277D799C0] isSeedBuild])
  {
    v4 = @"https://seed-dejavu.siri.apple.com";
  }

  else if ([MEMORY[0x277D799C0] isInternalBuild])
  {
    v4 = @"https://carry-dejavu.siri.apple.com";
  }

  else
  {
    v4 = @"https://dejavu.apple.com";
  }

  return v4;
}

@end