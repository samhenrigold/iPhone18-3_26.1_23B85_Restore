@interface VSSpeechXPCHandler
+ (BOOL)isSiriClientBundleIdentifier:(id)identifier;
- (AFAudioPowerUpdater)audioPowerUpdater;
- (BOOL)isSpeaking;
- (OS_dispatch_queue)audioPowerUpdateQueue;
- (VSSpeechXPCHandler)initWithConnection:(id)connection;
- (id)_delegate;
- (void)audioRequest:(id)request didReportInstrumentMetrics:(id)metrics error:(id)error;
- (void)audioRequest:(id)request didStopAtEnd:(BOOL)end error:(id)error;
- (void)audioRequestDidStart:(id)start;
- (void)beginAudioPowerUpdateWithReply:(id)reply;
- (void)cachePresynthesizedAudioRequest:(id)request;
- (void)cleanUnusedAssets:(id)assets;
- (void)continueSpeechRequest:(id)request;
- (void)dealloc;
- (void)endAudioPowerUpdate;
- (void)estimateDurationWithRequest:(id)request reply:(id)reply;
- (void)forwardStreamObject:(id)object;
- (void)getAllVoiceSubscriptionsWithReply:(id)reply;
- (void)getFootprintsForVoiceName:(id)name languageCode:(id)code reply:(id)reply;
- (void)getLocalVoiceResourcesReply:(id)reply;
- (void)getLocalVoicesForLanguage:(id)language reply:(id)reply;
- (void)getSpeechIsActiveForConnectionReply:(id)reply;
- (void)getSpeechIsActiveReply:(id)reply;
- (void)getSubscribedVoiceAssetsWithClientID:(id)d forAccessoryID:(id)iD reply:(id)reply;
- (void)getVoiceInfoForLanguageCode:(id)code name:(id)name footprint:(int64_t)footprint gender:(int64_t)gender type:(int64_t)type reply:(id)reply;
- (void)getVoiceNamesForLanguage:(id)language reply:(id)reply;
- (void)getVoiceResourceForLanguage:(id)language reply:(id)reply;
- (void)invalidate;
- (void)invokeDaemon:(id)daemon;
- (void)killDaemon;
- (void)pauseSpeechRequest:(id)request atMark:(int64_t)mark;
- (void)performLanguageFallBackIfNeededWithRequest:(id)request;
- (void)preprocessRequestBeforeSynthesis:(id)synthesis;
- (void)prewarmIfNeededWithRequest:(id)request reply:(id)reply;
- (void)queryPhaticCapabilityWithRequest:(id)request reply:(id)reply;
- (void)setSubscribedVoiceAssets:(id)assets withClientID:(id)d forAccessoryID:(id)iD;
- (void)speechRequest:(id)request didReceiveTimingInfo:(id)info;
- (void)speechRequest:(id)request didReportInstrumentMetrics:(id)metrics;
- (void)speechRequest:(id)request didStartWithMark:(int64_t)mark forRange:(_NSRange)range;
- (void)speechRequest:(id)request didStopWithSuccess:(BOOL)success phonemesSpoken:(id)spoken error:(id)error;
- (void)speechRequestDidContinue:(id)continue;
- (void)speechRequestDidPause:(id)pause;
- (void)speechRequestDidStart:(id)start;
- (void)startPhonemesRequest:(id)request phonemeSystem:(int64_t)system reply:(id)reply;
- (void)startPresynthesizedAudioRequest:(id)request;
- (void)startSpeechRequest:(id)request reply:(id)reply;
- (void)startSynthesisRequest:(id)request;
- (void)stopPresynthesizedAudioRequest:(id)request;
- (void)stopSpeechRequest:(id)request atMark:(int64_t)mark;
- (void)synthesisRequest:(id)request didFinishWithInstrumentMetrics:(id)metrics error:(id)error;
- (void)synthesisRequest:(id)request didGenerateAudioChunk:(id)chunk;
- (void)synthesisRequest:(id)request didReceiveTimingInfo:(id)info;
- (void)triggerCellularDownloadedVoiceAssets:(id)assets withClientID:(id)d;
- (void)updateWithConnectionIdentifier:(id)identifier keepActive:(BOOL)active;
@end

@implementation VSSpeechXPCHandler

- (void)killDaemon
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_DEFAULT, "Received killDaemon, shutting down", v3, 2u);
  }

  exit(0);
}

- (void)invokeDaemon:(id)daemon
{
  daemonCopy = daemon;
  v4 = VSGetLogDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2727E4000, v4, OS_LOG_TYPE_DEFAULT, "Received invokeDaemon, I'm listening", v6, 2u);
  }

  if (daemonCopy)
  {
    v5 = getpid();
    daemonCopy[2](daemonCopy, v5);
  }
}

- (void)forwardStreamObject:(id)object
{
  v13 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  streamId = [objectCopy streamId];

  v5 = VSGetLogDefault();
  v6 = v5;
  if (streamId)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      streamId2 = [objectCopy streamId];
      v9 = 138412546;
      v10 = objectCopy;
      v11 = 2112;
      v12 = streamId2;
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, "Enqueue stream object %@, streamId: %@", &v9, 0x16u);
    }

    v6 = +[VSInlineStreamService sharedService];
    streamId3 = [objectCopy streamId];
    [NSObject enqueueStreamId:v6 withObject:"enqueueStreamId:withObject:"];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = objectCopy;
    _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Ignore stream object with nil stream ID: %@", &v9, 0xCu);
  }
}

- (void)getVoiceInfoForLanguageCode:(id)code name:(id)name footprint:(int64_t)footprint gender:(int64_t)gender type:(int64_t)type reply:(id)reply
{
  v44 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  nameCopy = name;
  replyCopy = reply;
  v13 = VSGetLogDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithLong:?];
    *buf = 138543874;
    v39 = codeCopy;
    v40 = 2112;
    v41 = nameCopy;
    v42 = 2112;
    v43 = v14;
    _os_log_impl(&dword_2727E4000, v13, OS_LOG_TYPE_INFO, "Begin getVoiceInfoForLanguageCode: %{public}@, %@, %@", buf, 0x20u);
  }

  if (replyCopy)
  {
    if (!codeCopy)
    {
      v18 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      voiceData4 = [v18 errorWithDomain:? code:? userInfo:?];
      replyCopy[2](replyCopy, 0, voiceData4);
LABEL_18:

      goto LABEL_19;
    }

    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    v16 = [mEMORY[0x277D79950] selectVoiceForLang:? name:? type:? gender:? footprint:?];

    voiceData = [v16 voiceData];
    if ([voiceData footprint]== 1)
    {
    }

    else
    {
      if (!nameCopy)
      {
LABEL_14:

        goto LABEL_15;
      }

      voiceData2 = [v16 voiceData];
      name = [voiceData2 name];
      v22 = [nameCopy isEqual:?];

      if (v22)
      {
LABEL_15:
        v35 = VSGetLogDefault();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          voiceData3 = [v16 voiceData];
          *buf = 138412290;
          v39 = voiceData3;
          _os_log_impl(&dword_2727E4000, v35, OS_LOG_TYPE_INFO, "End getVoiceInfoForLanguageCode: %@", buf, 0xCu);
        }

        voiceData4 = [v16 voiceData];
        (replyCopy)[2](replyCopy, voiceData4, 0);
        goto LABEL_18;
      }
    }

    voiceData5 = [v16 voiceData];
    [voiceData5 setGender:?];

    voiceData6 = [v16 voiceData];
    [voiceData6 setName:?];

    voiceData7 = [v16 voiceData];
    [voiceData7 setFootprint:?];

    voiceData8 = [v16 voiceData];
    [voiceData8 setType:?];

    voiceData9 = [v16 voiceData];
    [voiceData9 setContentVersion:?];

    voiceData10 = [v16 voiceData];
    languages = [voiceData10 languages];
    firstObject = [languages firstObject];
    v31 = [firstObject isEqualToString:?];

    if ((v31 & 1) == 0)
    {
      v37 = [MEMORY[0x277D799B0] fallbackLanguageForLanguage:?];
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      voiceData11 = [v16 voiceData];
      [voiceData11 setLanguages:?];
    }

    voiceData = VSGetLogDefault();
    if (os_log_type_enabled(voiceData, OS_LOG_TYPE_INFO))
    {
      voiceData12 = [v16 voiceData];
      *buf = 136315394;
      v39 = "[VSSpeechXPCHandler getVoiceInfoForLanguageCode:name:footprint:gender:type:reply:]";
      v40 = 2112;
      v41 = voiceData12;
      _os_log_impl(&dword_2727E4000, voiceData, OS_LOG_TYPE_INFO, "%s override voice info for server TTS platform, %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_19:
}

- (void)getVoiceResourceForLanguage:(id)language reply:(id)reply
{
  languageCopy = language;
  replyCopy = reply;
  if (replyCopy)
  {
    if (languageCopy)
    {
      mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
      v7 = [mEMORY[0x277D79950] selectVoiceResourceAssetForLanguage:?];
    }

    else
    {
      v7 = 0;
    }

    replyCopy[2](replyCopy, v7);
  }
}

- (void)triggerCellularDownloadedVoiceAssets:(id)assets withClientID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = assetsCopy;
    _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Preparing cellular download for %@", buf, 0xCu);
  }

  mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
  [mEMORY[0x277D79950] cancelDownloads:? completion:?];

  mEMORY[0x277D79950]2 = [MEMORY[0x277D79950] sharedManager];
  [mEMORY[0x277D79950]2 cancelDownloads:? completion:?];

  objc_storeStrong(&triggerCellularDownloadedVoiceAssets_withClientID__previousDownloads, assets);
  v9 = [MEMORY[0x277D79950] downloadOptionsWithBattery:?];
  [v9 setAllowsCellularAccess:?];
  v10 = assetsCopy;
  v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0];
    do
    {
      for (i = 0; i != v12; i = (i + 1))
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(8 * i);
        v16 = VSGetLogDefault();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v15;
          _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_DEFAULT, "Start cellular download for %@", buf, 0xCu);
        }

        mEMORY[0x277D79950]3 = [MEMORY[0x277D79950] sharedManager];
        [mEMORY[0x277D79950]3 downloadVoiceAsset:? options:? progressUpdateHandler:?];
      }

      v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v12);
  }
}

- (void)getAllVoiceSubscriptionsWithReply:(id)reply
{
  replyCopy = reply;
  defaultInstance = [MEMORY[0x277D79978] defaultInstance];
  v4 = [defaultInstance subscribedVoicesForClientID:? accessoryID:?];

  v5 = MEMORY[0x277CBEB18];
  [v4 count];
  v6 = [v5 arrayWithCapacity:?];
  obj = v4;
  v32 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v32)
  {
    v31 = MEMORY[0];
    do
    {
      v7 = 0;
      do
      {
        if (MEMORY[0] != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v7;
        v8 = *(8 * v7);
        mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
        v10 = [mEMORY[0x277D79950] voiceAssetsForSubscription:?];

        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
        if (v12)
        {
          v13 = v12;
          v14 = MEMORY[0];
          do
          {
            for (i = 0; i != v13; i = (i + 1))
            {
              if (MEMORY[0] != v14)
              {
                objc_enumerationMutation(v11);
              }

              voiceData = [*(8 * i) voiceData];
              voice = [v8 voice];
              name = [voice name];
              v19 = [name length];

              if (v19)
              {
                voice2 = [v8 voice];
                name2 = [voice2 name];
                [voiceData setName:?];
              }

              voice3 = [v8 voice];
              type = [voice3 type];

              if (type)
              {
                voice4 = [v8 voice];
                [voice4 type];
                [voiceData setType:?];
              }

              v25 = objc_alloc(MEMORY[0x277D799E0]);
              clientID = [v8 clientID];
              accessoryID = [v8 accessoryID];
              v28 = [v25 initWithClient:? accessory:? voice:?];

              [v6 addObject:?];
            }

            v13 = [v11 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v13);
        }

        v7 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v32);
  }

  replyCopy[2](replyCopy, v6);
}

- (void)getSubscribedVoiceAssetsWithClientID:(id)d forAccessoryID:(id)iD reply:(id)reply
{
  if (reply)
  {
    v7 = MEMORY[0x277D79978];
    replyCopy = reply;
    iDCopy = iD;
    dCopy = d;
    defaultInstance = [v7 defaultInstance];
    uUIDString = [iDCopy UUIDString];

    v14 = [defaultInstance subscribedVoicesForClientID:? accessoryID:?];

    v13 = [v14 valueForKey:?];
    replyCopy[2](replyCopy, v13);
  }
}

- (void)setSubscribedVoiceAssets:(id)assets withClientID:(id)d forAccessoryID:(id)iD
{
  v61 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  dCopy = d;
  iDCopy = iD;
  if (iDCopy && ![(VSHHManagementClient *)self->_hubManagementClient isExistingAccessoryId:?])
  {
    v43 = VSGetLogDefault();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v56 = dCopy;
      v57 = 2112;
      v58 = iDCopy;
      _os_log_error_impl(&dword_2727E4000, v43, OS_LOG_TYPE_ERROR, "ignored client '%{public}@' setting auto-download for a non-existing accessoryId '%@'", buf, 0x16u);
    }
  }

  else
  {
    v45 = iDCopy;
    uUIDString = [iDCopy UUIDString];
    v11 = uUIDString;
    v12 = &stru_2881CBD18;
    if (uUIDString)
    {
      v12 = uUIDString;
    }

    v13 = v12;

    defaultInstance = [MEMORY[0x277D79978] defaultInstance];
    v46 = v13;
    v47 = dCopy;
    v15 = [defaultInstance subscribedVoicesForClientID:? accessoryID:?];

    array = [MEMORY[0x277CBEB18] array];
    obj = v15;
    v16 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v16)
    {
      v17 = v16;
      v52 = MEMORY[0];
      do
      {
        for (i = 0; i != v17; i = (i + 1))
        {
          if (MEMORY[0] != v52)
          {
            objc_enumerationMutation(obj);
          }

          voice = [*(8 * i) voice];
          v20 = assetsCopy;
          v21 = [v20 countByEnumeratingWithState:? objects:? count:?];
          if (v21)
          {
            v22 = v21;
            v23 = MEMORY[0];
            while (2)
            {
              for (j = 0; j != v22; j = (j + 1))
              {
                if (MEMORY[0] != v23)
                {
                  objc_enumerationMutation(v20);
                }

                dictionaryRepresentation = [*(8 * j) dictionaryRepresentation];
                dictionaryRepresentation2 = [voice dictionaryRepresentation];
                v27 = [dictionaryRepresentation isEqualToDictionary:?];

                if (v27)
                {

                  goto LABEL_20;
                }
              }

              v22 = [v20 countByEnumeratingWithState:? objects:? count:?];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          [array addObject:?];
LABEL_20:
        }

        v17 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v17);
    }

    defaultInstance2 = [MEMORY[0x277D79978] defaultInstance];
    [defaultInstance2 setSubscribedVoices:? forClientID:? accessoryID:?];

    array2 = [MEMORY[0x277CBEB18] array];
    v49 = assetsCopy;
    v29 = [v49 countByEnumeratingWithState:? objects:? count:?];
    if (v29)
    {
      v30 = v29;
      v51 = MEMORY[0];
      do
      {
        for (k = 0; k != v30; k = (k + 1))
        {
          if (MEMORY[0] != v51)
          {
            objc_enumerationMutation(v49);
          }

          v32 = *(8 * k);
          v33 = MEMORY[0x277CCACA8];
          languages = [v32 languages];
          firstObject = [languages firstObject];
          name = [v32 name];
          v37 = MEMORY[0x277D799C8];
          [v32 type];
          v38 = [v37 typeStringFromType:?];
          v39 = MEMORY[0x277D799C8];
          [v32 footprint];
          v40 = [v39 footprintStringFromFootprint:?];
          v41 = [v33 stringWithFormat:firstObject, name, v38, v40];
          [array2 addObject:?];
        }

        v30 = [v49 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v30);
    }

    v42 = VSGetLogDefault();
    v43 = v46;
    dCopy = v47;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v56 = v47;
      v57 = 2112;
      v58 = v46;
      v59 = 2114;
      v60 = array2;
      _os_log_impl(&dword_2727E4000, v42, OS_LOG_TYPE_DEFAULT, "client '%{public}@' and accessory '%@' set auto download voice assets:%{public}@", buf, 0x20u);
    }

    v44 = [[VSDownloadService alloc] initWithType:?];
    [(VSDownloadService *)v44 cancelDownloadForAssets:?];
    [(VSDownloadService *)v44 updateVoicesAndVoiceResources];

    iDCopy = v45;
  }
}

- (void)getLocalVoiceResourcesReply:(id)reply
{
  if (reply)
  {
    v3 = MEMORY[0x277D79950];
    replyCopy = reply;
    sharedManager = [v3 sharedManager];
    installedVoiceResources = [sharedManager installedVoiceResources];

    replyCopy[2](replyCopy, installedVoiceResources, 0);
  }
}

- (void)getLocalVoicesForLanguage:(id)language reply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  replyCopy = reply;
  if (replyCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    v9 = [mEMORY[0x277D79950] installedAssetsForType:? voicename:? language:? gender:? footprint:?];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:0 objects:? count:?];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          voiceData = [*(*(&v16 + 1) + 8 * v14) voiceData];
          [array addObject:?];

          v14 = (v14 + 1);
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v12);
    }

    replyCopy[2](replyCopy, array, 0);
  }
}

- (void)cleanUnusedAssets:(id)assets
{
  assetsCopy = assets;
  [(VSHHManagementClient *)self->_hubManagementClient cleanUnknownAccessoriesPreferences];
  if ([MEMORY[0x277D79930] useSiriTTSServiceV2])
  {
    cleanUnusedAssets = 0;
  }

  else
  {
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    cleanUnusedAssets = [mEMORY[0x277D79950] cleanUnusedAssets];
  }

  if (assetsCopy)
  {
    assetsCopy[2](assetsCopy, cleanUnusedAssets);
  }
}

- (void)audioRequest:(id)request didStopAtEnd:(BOOL)end error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate audioRequest:? didStopAtEnd:? error:?];

  objc_autoreleasePoolPop(v8);
}

- (void)audioRequest:(id)request didReportInstrumentMetrics:(id)metrics error:(id)error
{
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  v10 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate audioRequest:? didReportInstrumentMetrics:? error:?];

  objc_autoreleasePoolPop(v10);
}

- (void)audioRequestDidStart:(id)start
{
  startCopy = start;
  v4 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate audioRequestDidStart:?];

  objc_autoreleasePoolPop(v4);
}

- (void)synthesisRequest:(id)request didFinishWithInstrumentMetrics:(id)metrics error:(id)error
{
  requestCopy = request;
  metricsCopy = metrics;
  errorCopy = error;
  v10 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate synthesisRequest:? didFinishWithInstrumentMetrics:? error:?];

  objc_autoreleasePoolPop(v10);
}

- (void)synthesisRequest:(id)request didGenerateAudioChunk:(id)chunk
{
  requestCopy = request;
  chunkCopy = chunk;
  v7 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate synthesisRequest:? didGenerateAudioChunk:?];

  objc_autoreleasePoolPop(v7);
}

- (void)synthesisRequest:(id)request didReceiveTimingInfo:(id)info
{
  requestCopy = request;
  infoCopy = info;
  v7 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate synthesisRequest:? didReceiveTimingInfo:?];

  objc_autoreleasePoolPop(v7);
}

- (void)speechRequest:(id)request didReportInstrumentMetrics:(id)metrics
{
  requestCopy = request;
  metricsCopy = metrics;
  v7 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequest:? didReportInstrumentMetrics:?];

  objc_autoreleasePoolPop(v7);
}

- (void)speechRequest:(id)request didReceiveTimingInfo:(id)info
{
  infoCopy = info;
  requestCopy = request;
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequest:? didReceiveTimingInfo:?];
}

- (void)speechRequest:(id)request didStopWithSuccess:(BOOL)success phonemesSpoken:(id)spoken error:(id)error
{
  requestCopy = request;
  spokenCopy = spoken;
  errorCopy = error;
  v11 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequest:? didStopWithSuccess:? phonemesSpoken:? error:?];

  objc_autoreleasePoolPop(v11);
}

- (void)speechRequest:(id)request didStartWithMark:(int64_t)mark forRange:(_NSRange)range
{
  requestCopy = request;
  v6 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequest:? didStartWithMark:? forRange:?];

  objc_autoreleasePoolPop(v6);
}

- (void)speechRequestDidContinue:(id)continue
{
  continueCopy = continue;
  v4 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequestDidContinue:?];

  objc_autoreleasePoolPop(v4);
}

- (void)speechRequestDidPause:(id)pause
{
  pauseCopy = pause;
  v4 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequestDidPause:?];

  objc_autoreleasePoolPop(v4);
}

- (void)speechRequestDidStart:(id)start
{
  startCopy = start;
  v4 = objc_autoreleasePoolPush();
  _delegate = [(VSSpeechXPCHandler *)self _delegate];
  [_delegate speechRequestDidStart:?];

  objc_autoreleasePoolPop(v4);
}

- (id)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  remoteObjectProxy = [WeakRetained remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)getFootprintsForVoiceName:(id)name languageCode:(id)code reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  codeCopy = code;
  replyCopy = reply;
  if (replyCopy)
  {
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    v21 = nameCopy;
    v11 = [mEMORY[0x277D79950] installedAssetsForType:? voicename:? language:? gender:? footprint:?];

    array = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = MEMORY[0x277CCABB0];
          voiceData = [*(*(&v22 + 1) + 8 * v17) voiceData];
          [voiceData footprint];
          v20 = [v18 numberWithLong:?];
          [array addObject:?];

          v17 = (v17 + 1);
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v15);
    }

    replyCopy[2](replyCopy, array);
    nameCopy = v21;
  }
}

- (void)getVoiceNamesForLanguage:(id)language reply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  replyCopy = reply;
  if (replyCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    v9 = [mEMORY[0x277D79950] installedAssetsForType:? voicename:? language:? gender:? footprint:?];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:0 objects:? count:?];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          voiceData = [*(*(&v17 + 1) + 8 * v14) voiceData];
          name = [voiceData name];
          [array addObject:?];

          v14 = (v14 + 1);
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v12);
    }

    replyCopy[2](replyCopy, array);
  }
}

- (void)endAudioPowerUpdate
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = VSGetLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[VSSpeechXPCHandler endAudioPowerUpdate]";
    _os_log_impl(&dword_2727E4000, v3, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
  }

  audioPowerUpdater = [(VSSpeechXPCHandler *)self audioPowerUpdater];
  [audioPowerUpdater endUpdate];

  [(VSSpeechXPCHandler *)self setAudioPowerUpdater:?];
}

- (void)beginAudioPowerUpdateWithReply:(id)reply
{
  v15 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = VSGetLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[VSSpeechXPCHandler beginAudioPowerUpdateWithReply:]";
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (replyCopy)
  {
    audioPowerUpdater = [(VSSpeechXPCHandler *)self audioPowerUpdater];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __53__VSSpeechXPCHandler_beginAudioPowerUpdateWithReply___block_invoke;
    v11 = &unk_279E4B598;
    v12 = replyCopy;
    [audioPowerUpdater createNewXPCWrapperWithCompletion:?];

    audioPowerUpdater2 = [(VSSpeechXPCHandler *)self audioPowerUpdater];
    [audioPowerUpdater2 beginUpdate];
  }
}

- (AFAudioPowerUpdater)audioPowerUpdater
{
  audioPowerUpdater = self->_audioPowerUpdater;
  if (!audioPowerUpdater)
  {
    v4 = +[VSSpeechAudioPowerService sharedServices];
    v5 = objc_alloc(MEMORY[0x277CEF190]);
    audioPowerUpdateQueue = [(VSSpeechXPCHandler *)self audioPowerUpdateQueue];
    v7 = [v5 initWithProvider:? queue:? frequency:? delegate:?];
    v8 = self->_audioPowerUpdater;
    self->_audioPowerUpdater = v7;

    audioPowerUpdater = self->_audioPowerUpdater;
  }

  return audioPowerUpdater;
}

- (OS_dispatch_queue)audioPowerUpdateQueue
{
  audioPowerUpdateQueue = self->_audioPowerUpdateQueue;
  if (!audioPowerUpdateQueue)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v5 = dispatch_queue_create("VSAudioPowerUpdateQueue", v4);
    v6 = self->_audioPowerUpdateQueue;
    self->_audioPowerUpdateQueue = v5;

    audioPowerUpdateQueue = self->_audioPowerUpdateQueue;
  }

  return audioPowerUpdateQueue;
}

- (void)startPhonemesRequest:(id)request phonemeSystem:(int64_t)system reply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  replyCopy = reply;
  [(VSSpeechXPCHandler *)self preprocessRequestBeforeSynthesis:?];
  v9 = [(VSSpeechSpeakTask *)[VSTextToPhonemesTask alloc] initWithRequest:?];
  [(VSSpeechSpeakTask *)v9 setDelegate:?];
  [(VSTextToPhonemesTask *)v9 setReply:?];
  v10 = VSGetLogDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [requestCopy requestCreatedTimestamp];
    _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Created phonemes task %llu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = os_transaction_create();
  objc_initWeak(&location, v9);
  [(VSTextToPhonemesTask *)v9 setPhonemeSystem:?];
  v12 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v14, &location);
  v13 = replyCopy;
  [(VSTextToPhonemesTask *)v9 setCompletionBlock:v12, 3221225472, __63__VSSpeechXPCHandler_startPhonemesRequest_phonemeSystem_reply___block_invoke, &unk_279E4B570];
  v11 = +[VSSpeechTaskQueue mainDeviceQueue];
  [v11 addTask:?];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

void __63__VSSpeechXPCHandler_startPhonemesRequest_phonemeSystem_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v5 = [WeakRetained phonemes];
  v6 = [v5 firstObject];
  v7 = [WeakRetained error];
  (*(v4 + 16))(v4, v6, v7);
}

- (void)getSpeechIsActiveForConnectionReply:(id)reply
{
  replyCopy = reply;
  v4 = +[VSSpeechTaskQueue mainDeviceQueue];
  currentTask = [v4 currentTask];

  if ([currentTask conformsToProtocol:?])
  {
    v6 = currentTask;
    if ([v6 isSpeaking])
    {
      delegate = [v6 delegate];
      v8 = delegate == self;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v8);
  }
}

- (void)getSpeechIsActiveReply:(id)reply
{
  replyCopy = reply;
  v3 = +[VSSpeechTaskQueue mainDeviceQueue];
  currentTask = [v3 currentTask];

  if ([currentTask conformsToProtocol:?])
  {
    isSpeaking = [currentTask isSpeaking];
  }

  else
  {
    isSpeaking = 0;
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, isSpeaking);
  }
}

- (void)stopSpeechRequest:(id)request atMark:(int64_t)mark
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = +[VSSpeechTaskQueue mainDeviceQueue];
  accessoryID = [requestCopy accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [requestCopy accessoryID];
    uUIDString = [accessoryID2 UUIDString];
    v9 = [VSSpeechTaskQueue parallelQueueWithIdentifier:?];

    v5 = v9;
  }

  [requestCopy requestCreatedTimestamp];
  v10 = [v5 taskWithCreatedTimeStamp:?];
  if (v10)
  {
    [v5 cancelTask:?];
  }

  else
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEFAULT, "Ignore stopSpeechRequest. Cannot find task with associated request %llu.", &v12, 0xCu);
    }
  }
}

- (void)continueSpeechRequest:(id)request
{
  requestCopy = request;
  v4 = +[VSSpeechTaskQueue mainDeviceQueue];
  accessoryID = [requestCopy accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [requestCopy accessoryID];
    uUIDString = [accessoryID2 UUIDString];
    v8 = [VSSpeechTaskQueue parallelQueueWithIdentifier:?];

    v4 = v8;
  }

  currentTask = [v4 currentTask];
  v10 = [v4 createdTimestampWithTask:?];

  if (requestCopy && [requestCopy requestCreatedTimestamp] != v10)
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEFAULT, "Ignore continueSpeechRequest. Current request is different than requested request.", v12, 2u);
    }
  }

  else
  {
    [v4 resumeCurrentTask];
  }
}

- (void)pauseSpeechRequest:(id)request atMark:(int64_t)mark
{
  requestCopy = request;
  v5 = +[VSSpeechTaskQueue mainDeviceQueue];
  accessoryID = [requestCopy accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [requestCopy accessoryID];
    uUIDString = [accessoryID2 UUIDString];
    v9 = [VSSpeechTaskQueue parallelQueueWithIdentifier:?];

    v5 = v9;
  }

  currentTask = [v5 currentTask];
  v11 = [v5 createdTimestampWithTask:?];

  if (requestCopy && [requestCopy requestCreatedTimestamp] != v11)
  {
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_DEFAULT, "Ignore pauseSpeechRequest. Current request is different than requested request.", v13, 2u);
    }
  }

  else
  {
    [v5 suspendCurrentTask];
  }
}

- (void)startSynthesisRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  [(VSSpeechXPCHandler *)self preprocessRequestBeforeSynthesis:?];
  if ([VSServerTTSClient shouldUseServerTTSForRequest:?])
  {
    v5 = [VSSpeechServerTask initWithRequest:"initWithRequest:shouldSpeak:" shouldSpeak:?];
    [(VSSpeechServerTask *)v5 setDelegate:?];
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics = [(VSSpeechServerTask *)v5 instrumentMetrics];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [instrumentMetrics requestCreatedTimestamp];
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Created server synthesis task %llu", &buf, 0xCu);
    }
  }

  else
  {
    v5 = [[VSSpeechSynthesisTask alloc] initWithRequest:?];
    [(VSSpeechServerTask *)v5 setDelegate:?];
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics2 = [(VSSpeechServerTask *)v5 instrumentMetrics];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [instrumentMetrics2 requestCreatedTimestamp];
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Created synthesis task %llu", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = os_transaction_create();
  [(VSSpeechServerTask *)v5 setCompletionBlock:?];
  v9 = +[VSInlineStreamService sharedService];
  v10 = [v9 hasInlineStreamRequestForSpeakRequest:?];

  if (v10)
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics3 = [(VSSpeechServerTask *)v5 instrumentMetrics];
      requestCreatedTimestamp = [instrumentMetrics3 requestCreatedTimestamp];
      *v18 = 134217984;
      v19 = requestCreatedTimestamp;
      _os_log_impl(&dword_2727E4000, v11, OS_LOG_TYPE_DEFAULT, "Found matched inline streaming request, cancel synthesis task %llu", v18, 0xCu);
    }

    [(VSSpeechServerTask *)v5 cancel];
  }

  else
  {
    accessoryID = [requestCopy accessoryID];

    if (accessoryID)
    {
      accessoryID2 = [requestCopy accessoryID];
      uUIDString = [accessoryID2 UUIDString];
      v17 = [VSSpeechTaskQueue parallelQueueWithIdentifier:?];
      [v17 addTask:?];
    }

    else
    {
      accessoryID2 = +[VSSpeechTaskQueue mainDeviceQueue];
      [accessoryID2 addTask:?];
    }
  }

  _Block_object_dispose(&buf, 8);
}

void __44__VSSpeechXPCHandler_startSynthesisRequest___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)stopPresynthesizedAudioRequest:(id)request
{
  v12 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  accessoryID = [requestCopy accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [requestCopy accessoryID];
    uUIDString = [accessoryID2 UUIDString];
    v7 = [VSSpeechTaskQueue parallelQueueWithIdentifier:?];
  }

  else
  {
    v7 = +[VSSpeechTaskQueue mainDeviceQueue];
  }

  [requestCopy requestCreatedTimestamp];
  v8 = [v7 taskWithCreatedTimeStamp:?];
  if (v8)
  {
    [v7 cancelTask:?];
  }

  else
  {
    v9 = VSGetLogDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
      _os_log_impl(&dword_2727E4000, v9, OS_LOG_TYPE_DEFAULT, "Ignore stopPresynthesizedAudioRequest. Cannot find task with associated request %llu.", &v10, 0xCu);
    }
  }
}

- (void)cachePresynthesizedAudioRequest:(id)request
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifier = [requestCopy identifier];
  v5 = [identifier length];

  if (v5)
  {
    v6 = +[VSInlineStreamService sharedService];
    [v6 addInlineStreamRequest:?];
  }

  else
  {
    v6 = [MEMORY[0x277D79920] audioDataFromPresynthesisRequest:?];
    [v6 duration];
    if (v7 == 0.0)
    {
      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        requestCreatedTimestamp = [requestCopy requestCreatedTimestamp];
        _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Cache #PresynthesizedRequest %llu skipped: no audio", &v13, 0xCu);
      }
    }

    else
    {
      v8 = +[VSCachingService standardService];
      text = [requestCopy text];
      [v8 enqueueShortTermCacheWithHash:? audio:? timingInfo:? voiceKey:? voiceResourceKey:? completion:?];

      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        requestCreatedTimestamp2 = [requestCopy requestCreatedTimestamp];
        logText = [requestCopy logText];
        v13 = 134218242;
        requestCreatedTimestamp = requestCreatedTimestamp2;
        v15 = 2112;
        v16 = logText;
        _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Cache #PresynthesizedRequest %llu with text: %@", &v13, 0x16u);
      }
    }
  }
}

- (void)startPresynthesizedAudioRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  siriRequestId = [requestCopy siriRequestId];
  if (siriRequestId)
  {
    clientBundleIdentifier = [requestCopy clientBundleIdentifier];
    v6 = [VSSpeechXPCHandler isSiriClientBundleIdentifier:?];

    if ((v6 & 1) == 0)
    {
      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        clientBundleIdentifier2 = [requestCopy clientBundleIdentifier];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = clientBundleIdentifier2;
        _os_log_fault_impl(&dword_2727E4000, v7, OS_LOG_TYPE_FAULT, "Unexpected client '%{public}@' sets Siri request ID.", &buf, 0xCu);
      }

      [requestCopy setSiriRequestId:?];
    }
  }

  siriRequestId2 = [requestCopy siriRequestId];

  if (siriRequestId2)
  {
    v9 = [VSSiriInstrumentation alloc];
    siriRequestId3 = [requestCopy siriRequestId];
    siriRequestId2 = [(VSSiriInstrumentation *)v9 initWithSiriRequestId:?];

    text = [requestCopy text];
    [VSSiriInstrumentation instrumentRequestReceivedWithText:siriRequestId2 requestedVoiceType:"instrumentRequestReceivedWithText:requestedVoiceType:requestedVoiceFootprint:isPrivate:" requestedVoiceFootprint:? isPrivate:?];
  }

  v12 = [[VSSpeechPresynthesizedTask alloc] initWithRequest:?];
  [(VSSpeechPresynthesizedTask *)v12 setDelegate:?];
  v13 = VSGetLogDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    instrumentMetrics = [(VSSpeechPresynthesizedTask *)v12 instrumentMetrics];
    requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = requestCreatedTimestamp;
    _os_log_impl(&dword_2727E4000, v13, OS_LOG_TYPE_DEFAULT, "Created presynthesized task %llu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = os_transaction_create();
  [(VSSpeechPresynthesizedTask *)v12 setCompletionBlock:?];
  if (siriRequestId2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(VSSpeechPresynthesizedTask *)v12 setSiriInstrumentation:?];
  }

  accessoryID = [requestCopy accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [requestCopy accessoryID];
    uUIDString = [accessoryID2 UUIDString];
    v19 = [VSSpeechTaskQueue parallelQueueWithIdentifier:?];
    [v19 addTask:?];
  }

  else
  {
    accessoryID2 = +[VSSpeechTaskQueue mainDeviceQueue];
    [accessoryID2 addTask:?];
  }

  _Block_object_dispose(&buf, 8);
}

void __54__VSSpeechXPCHandler_startPresynthesizedAudioRequest___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)startSpeechRequest:(id)request reply:(id)reply
{
  v46 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  replyCopy = reply;
  [(VSSpeechXPCHandler *)self preprocessRequestBeforeSynthesis:?];
  siriRequestId = [requestCopy siriRequestId];

  if (siriRequestId)
  {
    v9 = [VSSiriInstrumentation alloc];
    siriRequestId2 = [requestCopy siriRequestId];
    siriRequestId = [(VSSiriInstrumentation *)v9 initWithSiriRequestId:?];

    text = [requestCopy text];
    [requestCopy voiceType];
    [requestCopy footprint];
    [requestCopy canUseServerTTS];
    [VSSiriInstrumentation instrumentRequestReceivedWithText:siriRequestId requestedVoiceType:"instrumentRequestReceivedWithText:requestedVoiceType:requestedVoiceFootprint:isPrivate:" requestedVoiceFootprint:? isPrivate:?];
  }

  defaultInstance = [MEMORY[0x277D79978] defaultInstance];
  date = [MEMORY[0x277CBEAA8] date];
  [defaultInstance setLastTTSRequestDate:?];

  standardInstance = [MEMORY[0x277D79998] standardInstance];
  disableInlineStreamTTS = [standardInstance disableInlineStreamTTS];

  if (disableInlineStreamTTS)
  {
    v16 = VSGetLogDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_DEFAULT, "Server Inline Streaming TTS is disabled in internal settings", &buf, 2u);
    }
  }

  standardInstance2 = [MEMORY[0x277D79998] standardInstance];
  disableServerTTS = [standardInstance2 disableServerTTS];

  if (disableServerTTS)
  {
    v19 = VSGetLogDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2727E4000, v19, OS_LOG_TYPE_DEFAULT, "Server TTS is disabled in internal settings", &buf, 2u);
    }
  }

  v20 = +[VSInlineStreamService sharedService];
  v21 = [v20 popInlineStreamRequestForSpeakRequest:?];

  if (((disableInlineStreamTTS | disableServerTTS) & 1) != 0 || !v21)
  {
    if ([VSServerTTSClient shouldUseServerTTSForRequest:?])
    {
      v29 = [VSSpeechServerTask initWithRequest:"initWithRequest:shouldSpeak:" shouldSpeak:?];
      [(VSSpeechServerTask *)v29 setDelegate:?];
      v25 = v29;
      v26 = VSGetLogDefault();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        instrumentMetrics = [(VSSpeechServerTask *)v25 instrumentMetrics];
        requestCreatedTimestamp = [instrumentMetrics requestCreatedTimestamp];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = requestCreatedTimestamp;
        _os_log_impl(&dword_2727E4000, v26, OS_LOG_TYPE_DEFAULT, "Created server speak task %llu", &buf, 0xCu);
      }
    }

    else
    {
      v32 = [[VSSpeechSpeakTask alloc] initWithRequest:?];
      [(VSSpeechSpeakTask *)v32 setDelegate:?];
      v25 = v32;
      v26 = VSGetLogDefault();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        instrumentMetrics2 = [(VSSpeechServerTask *)v25 instrumentMetrics];
        requestCreatedTimestamp2 = [instrumentMetrics2 requestCreatedTimestamp];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = requestCreatedTimestamp2;
        _os_log_impl(&dword_2727E4000, v26, OS_LOG_TYPE_DEFAULT, "Created speak task %llu", &buf, 0xCu);
      }
    }
  }

  else
  {
    v22 = [VSSiriInlineTTSStreamTask alloc];
    identifier = [v21 identifier];
    v24 = [VSSiriInlineTTSStreamTask initWithRequest:v22 withStreamID:"initWithRequest:withStreamID:"];

    [(VSSiriInlineTTSStreamTask *)v24 setDelegate:?];
    v25 = v24;
    v26 = VSGetLogDefault();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      instrumentMetrics3 = [(VSSpeechServerTask *)v25 instrumentMetrics];
      requestCreatedTimestamp3 = [instrumentMetrics3 requestCreatedTimestamp];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = requestCreatedTimestamp3;
      _os_log_impl(&dword_2727E4000, v26, OS_LOG_TYPE_DEFAULT, "Created stream speak task %llu", &buf, 0xCu);
    }
  }

  if (siriRequestId && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(VSSpeechServerTask *)v25 setSiriInstrumentation:?];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = os_transaction_create();
  v40 = MEMORY[0x277D85DD0];
  v35 = replyCopy;
  [(VSSpeechServerTask *)v25 setCompletionBlock:v40, 3221225472, __47__VSSpeechXPCHandler_startSpeechRequest_reply___block_invoke, &unk_279E4B520];
  accessoryID = [requestCopy accessoryID];

  if (accessoryID)
  {
    accessoryID2 = [requestCopy accessoryID];
    uUIDString = [accessoryID2 UUIDString];
    v39 = [VSSpeechTaskQueue parallelQueueWithIdentifier:?];
    [v39 addTask:?];
  }

  else
  {
    accessoryID2 = +[VSSpeechTaskQueue mainDeviceQueue];
    [accessoryID2 addTask:?];
  }

  _Block_object_dispose(&buf, 8);
}

uint64_t __47__VSSpeechXPCHandler_startSpeechRequest_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)estimateDurationWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if (replyCopy)
  {
    [(VSSpeechXPCHandler *)self preprocessRequestBeforeSynthesis:?];
    v8 = [[VSDurationEstimationTask alloc] initWithRequest:?];
    objc_initWeak(&location, v8);
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy_;
    v18[4] = __Block_byref_object_dispose_;
    v19 = os_transaction_create();
    v14 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v17, &location);
    v15 = replyCopy;
    v16 = v18;
    [(VSDurationEstimationTask *)v8 setCompletionBlock:v14, 3221225472, __56__VSSpeechXPCHandler_estimateDurationWithRequest_reply___block_invoke, &unk_279E4B570];
    v9 = +[VSSpeechTaskQueue mainDeviceQueue];
    accessoryID = [requestCopy accessoryID];

    if (accessoryID)
    {
      accessoryID2 = [requestCopy accessoryID];
      uUIDString = [accessoryID2 UUIDString];
      v13 = [VSSpeechTaskQueue parallelQueueWithIdentifier:?];

      v9 = v13;
    }

    [v9 addTask:?];

    objc_destroyWeak(&v17);
    _Block_object_dispose(v18, 8);

    objc_destroyWeak(&location);
  }
}

void __56__VSSpeechXPCHandler_estimateDurationWithRequest_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  [WeakRetained estimatedDuration];
  v4 = v3;
  v5 = [WeakRetained error];
  (*(v2 + 16))(v2, v5, v4);

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (void)queryPhaticCapabilityWithRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v14 = replyCopy;
    requestCopy = request;
    [(VSSpeechXPCHandler *)self performLanguageFallBackIfNeededWithRequest:?];
    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    languageCode = [requestCopy languageCode];
    voiceName = [requestCopy voiceName];
    [requestCopy voiceType];
    [requestCopy gender];
    [requestCopy footprint];

    v11 = [mEMORY[0x277D79950] selectVoiceForLang:? name:? type:? gender:? footprint:?];

    if (v11)
    {
      v12 = MEMORY[0x277D79990];
      voicePath = [v11 voicePath];
      v14[2](v14, [v12 hasPhaticResponses:?]);
    }

    else
    {
      (v14[2])();
    }

    replyCopy = v14;
  }
}

- (void)prewarmIfNeededWithRequest:(id)request reply:(id)reply
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  replyCopy = reply;
  v8 = +[VSSpeechTaskQueue mainDeviceQueue];
  currentTask = [v8 currentTask];

  if (currentTask)
  {
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = currentTask;
      v15 = 2112;
      v16 = requestCopy;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "Find on-going task: %@, ignoring prewarm request: %@", &v13, 0x16u);
    }

    if (replyCopy)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
      replyCopy[2](replyCopy, v11);
    }
  }

  else
  {
    [(VSSpeechXPCHandler *)self performLanguageFallBackIfNeededWithRequest:?];
    v12 = +[VSPrewarmService sharedService];
    [v12 prewarmWithRequest:?];

    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0);
    }
  }
}

- (void)updateWithConnectionIdentifier:(id)identifier keepActive:(BOOL)active
{
  activeCopy = active;
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8 = VSGetLogDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v15 = 138543618;
    v16 = identifierCopy;
    v17 = 1024;
    v18 = activeCopy;
    _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_INFO, "Update with connection identifier: %{public}@, keepActive:%{BOOL}d", &v15, 0x12u);
  }

  objc_storeStrong(&self->_connectionIdentifier, identifier);
  synthesizerTransaction = self->_synthesizerTransaction;
  if (activeCopy)
  {
    if (!synthesizerTransaction)
    {
      v10 = VSGetLogDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = identifierCopy;
        _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Keep active session for '%@'", &v15, 0xCu);
      }

      [identifierCopy UTF8String];
      v11 = os_transaction_create();
LABEL_12:
      v13 = self->_synthesizerTransaction;
      self->_synthesizerTransaction = v11;

      v14 = +[VSPrewarmService sharedService];
      [v14 activeSessionCount];
      [v14 setActiveSessionCount:?];
    }
  }

  else if (synthesizerTransaction)
  {
    v12 = VSGetLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = identifierCopy;
      _os_log_impl(&dword_2727E4000, v12, OS_LOG_TYPE_INFO, "Remove active session for '%@'", &v15, 0xCu);
    }

    v11 = 0;
    goto LABEL_12;
  }
}

- (void)preprocessRequestBeforeSynthesis:(id)synthesis
{
  v53 = *MEMORY[0x277D85DE8];
  synthesisCopy = synthesis;
  [(VSSpeechXPCHandler *)self performLanguageFallBackIfNeededWithRequest:?];
  text = [synthesisCopy text];

  if (!text)
  {
    [synthesisCopy setText:?];
  }

  text2 = [synthesisCopy text];
  contextInfo = [synthesisCopy contextInfo];
  v8 = [text2 vs_insertContextInfo:?];

  vs_substituteAudioWithLocalPath = [v8 vs_substituteAudioWithLocalPath];

  languageCode = [synthesisCopy languageCode];
  v11 = [vs_substituteAudioWithLocalPath vs_textifyEmojiWithLanguage:?];
  precomposedStringWithCanonicalMapping = [v11 precomposedStringWithCanonicalMapping];

  standardInstance = [MEMORY[0x277D79998] standardInstance];
  if ([standardInstance whisper])
  {
  }

  else
  {
    shouldWhisper = [synthesisCopy shouldWhisper];

    if ((shouldWhisper & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v15 = [@"\x1B\\mrk=emo=whisper\" stringByAppendingString:?];

  precomposedStringWithCanonicalMapping = v15;
LABEL_7:
  standardInstance2 = [MEMORY[0x277D79998] standardInstance];
  useSSMLInput = [standardInstance2 useSSMLInput];

  if (useSSMLInput)
  {
    vs_convertToSSML = [precomposedStringWithCanonicalMapping vs_convertToSSML];

    v19 = VSGetLogDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [synthesisCopy logUtterance];
      v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v49 = 138412290;
      v50 = v20;
      _os_log_impl(&dword_2727E4000, v19, OS_LOG_TYPE_DEFAULT, "Use SSML input: %@", &v49, 0xCu);
    }

    precomposedStringWithCanonicalMapping = vs_convertToSSML;
  }

  [synthesisCopy setUtterance:?];
  v21 = VSGetLogDefault();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = COERCE_DOUBLE([synthesisCopy requestCreatedTimestamp]);
    logUtterance = [synthesisCopy logUtterance];
    v49 = 134218242;
    v50 = v22;
    v51 = 2112;
    v52 = logUtterance;
    _os_log_impl(&dword_2727E4000, v21, OS_LOG_TYPE_INFO, "Utterance to synthesize for request %llu: '%@'", &v49, 0x16u);
  }

  standardInstance3 = [MEMORY[0x277D79998] standardInstance];
  [standardInstance3 defaultVolume];
  v26 = v25;

  if (v26 != 0.0)
  {
    v27 = VSGetLogDefault();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v49 = 134217984;
      v50 = v26;
      _os_log_impl(&dword_2727E4000, v27, OS_LOG_TYPE_DEFAULT, "Overwriting volume with internal default: %.3f", &v49, 0xCu);
    }

    [synthesisCopy setVolume:?];
  }

  standardInstance4 = [MEMORY[0x277D79998] standardInstance];
  [standardInstance4 defaultRate];
  v30 = v29;

  if (v30 != 0.0)
  {
    v31 = VSGetLogDefault();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v49 = 134217984;
      v50 = v30;
      _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_DEFAULT, "Overwriting rate with internal default: %.3f", &v49, 0xCu);
    }

    [synthesisCopy setRate:?];
  }

  standardInstance5 = [MEMORY[0x277D79998] standardInstance];
  [standardInstance5 defaultPitch];
  v34 = v33;

  if (v34 != 0.0)
  {
    v35 = VSGetLogDefault();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v49 = 134217984;
      v50 = v34;
      _os_log_impl(&dword_2727E4000, v35, OS_LOG_TYPE_DEFAULT, "Overwriting pitch with internal default: %.3f", &v49, 0xCu);
    }

    [synthesisCopy setPitch:?];
  }

  outputPath = [synthesisCopy outputPath];

  if (outputPath)
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v38 = [WeakRetained valueForEntitlement:?];

    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v38 BOOLValue] & 1) == 0)
    {
      v39 = VSGetLogDefault();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        LOWORD(v49) = 0;
        _os_log_impl(&dword_2727E4000, v39, OS_LOG_TYPE_INFO, "Process is not entitled for dumping audio. Ignore outputPath", &v49, 2u);
      }

      [synthesisCopy setOutputPath:?];
    }
  }

  siriRequestId = [synthesisCopy siriRequestId];
  if (siriRequestId)
  {
    v41 = siriRequestId;
    clientBundleIdentifier = [synthesisCopy clientBundleIdentifier];
    v43 = [VSSpeechXPCHandler isSiriClientBundleIdentifier:?];

    if ((v43 & 1) == 0)
    {
      v44 = VSGetLogDefault();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        [synthesisCopy clientBundleIdentifier];
        v48 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v49 = 138543362;
        v50 = v48;
        _os_log_fault_impl(&dword_2727E4000, v44, OS_LOG_TYPE_FAULT, "Unexpected client '%{public}@' sets Siri request ID.", &v49, 0xCu);
      }

      [synthesisCopy setSiriRequestId:?];
    }
  }

  standardInstance6 = [MEMORY[0x277D79998] standardInstance];
  disableDeviceRacing = [standardInstance6 disableDeviceRacing];

  if (disableDeviceRacing)
  {
    v47 = VSGetLogDefault();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v49) = 0;
      _os_log_impl(&dword_2727E4000, v47, OS_LOG_TYPE_DEFAULT, "Overriding disableDeviceRacing with internal default", &v49, 2u);
    }

    [synthesisCopy setDisableDeviceRacing:?];
  }
}

- (void)performLanguageFallBackIfNeededWithRequest:(id)request
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  availableLanguages = [MEMORY[0x277D799B0] availableLanguages];
  languageCode = [requestCopy languageCode];
  v6 = [availableLanguages containsObject:?];

  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x277D799B0];
    languageCode2 = [requestCopy languageCode];
    v9 = [v7 fallbackLanguageForLanguage:?];

    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      languageCode3 = [requestCopy languageCode];
      v12 = 138543618;
      v13 = languageCode3;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ is not TTS language, fallback to %{public}@", &v12, 0x16u);
    }

    [requestCopy setLanguageCode:?];
  }
}

- (void)invalidate
{
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2727E4000, v2, OS_LOG_TYPE_DEFAULT, "Invalidate VSSpeechXPCHandler, cancelling all related tasks", v3, 2u);
  }

  [VSSpeechTaskQueue cancelTasksWithDelegate:?];
}

- (BOOL)isSpeaking
{
  v3 = +[VSSpeechTaskQueue mainDeviceQueue];
  currentTask = [v3 currentTask];
  delegate = [currentTask delegate];
  LOBYTE(self) = delegate == self;

  return self;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained invalidate];

  if (self->_synthesizerTransaction)
  {
    v4 = +[VSPrewarmService sharedService];
    [v4 activeSessionCount];
    [v4 setActiveSessionCount:?];
  }

  v5.receiver = self;
  v5.super_class = VSSpeechXPCHandler;
  [(VSSpeechXPCHandler *)&v5 dealloc];
}

- (VSSpeechXPCHandler)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = VSSpeechXPCHandler;
  v5 = [(VSSpeechXPCHandler *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
    v7 = +[VSHHManagementClient sharedInstance];
    hubManagementClient = v6->_hubManagementClient;
    v6->_hubManagementClient = v7;

    v9 = +[VSHMHomeManager sharedInstance];
    homeManager = v6->_homeManager;
    v6->_homeManager = v9;
  }

  return v6;
}

+ (BOOL)isSiriClientBundleIdentifier:(id)identifier
{
  v3 = isSiriClientBundleIdentifier__onceToken;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    dispatch_once(&isSiriClientBundleIdentifier__onceToken, &__block_literal_global_707);
  }

  v5 = [isSiriClientBundleIdentifier__siriClientBundleIdentifiers containsObject:?];

  return v5;
}

uint64_t __51__VSSpeechXPCHandler_isSiriClientBundleIdentifier___block_invoke()
{
  isSiriClientBundleIdentifier__siriClientBundleIdentifiers = [MEMORY[0x277CBEB98] setWithArray:?];

  return MEMORY[0x2821F96F8]();
}

@end