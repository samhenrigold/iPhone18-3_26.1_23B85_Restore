@interface VSDownloadService
+ (id)downloadQueue;
+ (id)inProgressDownloadVoiceKeys;
+ (void)addInProgressDownloadVoiceKey:(id)key;
+ (void)removeInProgressDownloadVoiceKey:(id)key;
+ (void)triggerNeuralCompiling;
- (VSDownloadService)initWithType:(unint64_t)type;
- (VSDownloadService)initWithType:(unint64_t)type assetsManager:(id)manager;
- (void)cancelDownloadForAssets:(id)assets;
- (void)updateTrialVoiceResourceWithLanguage:(id)language;
- (void)updateVoiceIfNeeded:(id)needed;
- (void)updateVoicesAndVoiceResources;
@end

@implementation VSDownloadService

- (void)cancelDownloadForAssets:(id)assets
{
  assetsCopy = assets;
  [(NSLock *)self->_updateLock lock];
  array = [MEMORY[0x277CBEB18] array];
  v6 = assetsCopy;
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v6);
        }

        voiceKey = [*(8 * i) voiceKey];
        [VSDownloadService removeInProgressDownloadVoiceKey:?];

        assetsManager = [(VSDownloadService *)self assetsManager];
        v13 = [assetsManager preferredDownloadForVoice:?];

        if (v13)
        {
          [array addObject:?];
        }
      }

      v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }

  v14 = dispatch_semaphore_create(0);
  assetsManager2 = [(VSDownloadService *)self assetsManager];
  v17 = v14;
  v16 = v14;
  [assetsManager2 cancelDownloads:? completion:?];

  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  [(NSLock *)self->_updateLock unlock];
}

- (void)updateTrialVoiceResourceWithLanguage:(id)language
{
  v12 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v5 = VSGetLogEvent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = languageCopy;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_DEFAULT, "Updating VoiceResource for '%{public}@'", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277D799D8]);
  v9 = languageCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  [v6 setLanguages:?];

  assetsManager = [(VSDownloadService *)self assetsManager];
  [assetsManager downloadVoiceResource:? options:? completion:?];
}

- (void)updateVoiceIfNeeded:(id)needed
{
  v54 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = VSGetLogEvent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v43 = neededCopy;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_DEFAULT, "Updating target voice: %@", buf, 0xCu);
  }

  assetsManager = [(VSDownloadService *)self assetsManager];
  languages = [neededCopy languages];
  firstObject = [languages firstObject];
  name = [neededCopy name];
  [neededCopy type];
  [neededCopy gender];
  [neededCopy footprint];
  v10 = [assetsManager selectVoiceForLang:? name:? type:? gender:? footprint:?];

  if (v10)
  {
    voiceData = [v10 voiceData];
    v39 = [voiceData footprint] == 1;
  }

  else
  {
    v39 = 1;
  }

  name2 = [neededCopy name];
  if (name2)
  {
    name3 = [neededCopy name];
    voiceData2 = [v10 voiceData];
    name4 = [voiceData2 name];
    v16 = [name3 isEqual:?] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  preferenceInterface = [(VSDownloadService *)self preferenceInterface];
  lastTTSRequestDate = [preferenceInterface lastTTSRequestDate];

  if (lastTTSRequestDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:?];
    v21 = v20 < 604800.0;
  }

  else
  {
    v21 = 1;
  }

  serverConfig = [(VSDownloadService *)self serverConfig];
  shouldDelayVoiceUpdate = [serverConfig shouldDelayVoiceUpdate];

  v24 = 0;
  type = self->_type;
  if (type > 1)
  {
    if (type != 2)
    {
      v26 = 0;
      if (type != 3)
      {
        goto LABEL_28;
      }

      v24 = 1;
      goto LABEL_22;
    }

    if (v39)
    {
      v26 = 1;
    }

    else
    {
      v26 = [MEMORY[0x277D799C0] isHomeHub] & v16;
    }

    v24 = [MEMORY[0x277D799C0] isWatch] ^ 1;
  }

  else
  {
    if (type)
    {
      v26 = 0;
      if (type != 1)
      {
        goto LABEL_28;
      }

      if (!v39)
      {
        v24 = 0;
        v26 = v16 | shouldDelayVoiceUpdate ^ 1;
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if ((v39 | v16))
    {
LABEL_21:
      v24 = 0;
LABEL_22:
      v26 = 1;
      goto LABEL_28;
    }

    v24 = 0;
    v26 = (shouldDelayVoiceUpdate ^ 1) & v21;
  }

LABEL_28:
  v27 = VSGetLogEvent();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = self->_type;
    *buf = 67110656;
    *v43 = v26 & 1;
    *&v43[4] = 1024;
    *&v43[6] = v24;
    v44 = 1024;
    v45 = v28;
    v46 = 1024;
    v47 = v39;
    v48 = 1024;
    v49 = v16;
    v50 = 1024;
    v51 = v21;
    v52 = 1024;
    v53 = shouldDelayVoiceUpdate;
    _os_log_impl(&dword_2727E4000, v27, OS_LOG_TYPE_DEFAULT, "Voice update decision: shouldDownload:%d, canUseBattery:%d. Reason: triggerType:%d, compactVoiceSelected:%d, mismatchedVoiceName:%d, activeSiriUser:%d, serverExperimentDelay:%d", buf, 0x2Cu);
  }

  if (v26)
  {
    voiceKey = [neededCopy voiceKey];
    [VSDownloadService addInProgressDownloadVoiceKey:?];
    v30 = [MEMORY[0x277D79950] downloadOptionsWithBattery:?];
    [v30 setAllowsCellularAccess:?];
    assetsManager2 = [(VSDownloadService *)self assetsManager];
    v40 = neededCopy;
    v41 = voiceKey;
    v32 = voiceKey;
    [assetsManager2 downloadVoiceAsset:? options:? progressUpdateHandler:?];

    goto LABEL_37;
  }

  voiceData3 = [v10 voiceData];
  if ([voiceData3 type] != 4 || !objc_msgSend(MEMORY[0x277D79958], "isANECompilationPlatform"))
  {
LABEL_36:

    goto LABEL_37;
  }

  voiceData4 = [v10 voiceData];
  if ([voiceData4 isVoiceReadyToUse])
  {

    goto LABEL_36;
  }

  isWatch = [MEMORY[0x277D799C0] isWatch];

  if ((isWatch & 1) == 0)
  {
    v36 = VSGetLogDefault();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      voiceData5 = [v10 voiceData];
      voiceKey2 = [voiceData5 voiceKey];
      *buf = 138412290;
      *v43 = voiceKey2;
      _os_log_impl(&dword_2727E4000, v36, OS_LOG_TYPE_DEFAULT, "Downloaded voice is not ready to use. Start ANE compiling immediately for voice: %@", buf, 0xCu);
    }

    +[VSDownloadService triggerNeuralCompiling];
  }

LABEL_37:
}

void __41__VSDownloadService_updateVoiceIfNeeded___block_invoke(uint64_t a1, double a2, float a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) descriptiveKey];
    v10 = 134218498;
    v11 = a3;
    v12 = 2048;
    v13 = a2;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, "Voice asset downloading progress: %.2f, remainingTime: %.2f, voice: %@", &v10, 0x20u);
  }

  if (a3 < 0.0 || a3 >= 1.0)
  {
    [VSDownloadService removeInProgressDownloadVoiceKey:?];
  }

  if (a3 >= 1.0 && [*(a1 + 32) type] == 4 && objc_msgSend(MEMORY[0x277D79958], "isANECompilationPlatform") && (objc_msgSend(MEMORY[0x277D799C0], "isWatch") & 1) == 0)
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) voiceKey];
      v9 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEFAULT, "Start ANE compiling immediately for voice: %@", &v10, 0xCu);
    }

    +[VSDownloadService triggerNeuralCompiling];
  }
}

- (void)updateVoicesAndVoiceResources
{
  v51 = *MEMORY[0x277D85DE8];
  standardInstance = [MEMORY[0x277D79998] standardInstance];
  disableAssetUpdate = [standardInstance disableAssetUpdate];

  if (disableAssetUpdate)
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Asset update is disabled in internal settings.", buf, 2u);
    }
  }

  else
  {
    [(NSLock *)self->_updateLock lock];
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_DEFAULT, "Start updating voice and voice resources.", buf, 2u);
    }

    selfCopy = self;
    preferenceInterface = [(VSDownloadService *)self preferenceInterface];
    v9 = [preferenceInterface subscribedVoicesForClientID:? accessoryID:?];

    v10 = v9;
    v11 = [NSObject countByEnumeratingWithState:v10 objects:"countByEnumeratingWithState:objects:count:" count:?];
    v43 = v10;
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
            clientID = [v15 clientID];
            accessoryID = [v15 accessoryID];
            if (accessoryID)
            {
              v19 = MEMORY[0x277CCACA8];
              accessoryID2 = [v15 accessoryID];
              self = [v19 stringWithFormat:accessoryID2];
              selfCopy2 = self;
            }

            else
            {
              selfCopy2 = &stru_2881CBD18;
            }

            voice = [v15 voice];
            *buf = 138412802;
            v46 = clientID;
            v47 = 2112;
            v48 = selfCopy2;
            v49 = 2114;
            v50 = voice;
            _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_DEFAULT, "%@ %@ has a subscribed voice: %{public}@", buf, 0x20u);

            if (accessoryID)
            {
            }

            v10 = v43;
          }
        }

        v12 = [NSObject countByEnumeratingWithState:v10 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v12);
    }

    v22 = [v10 valueForKey:?];
    v23 = [v22 sortedArrayUsingComparator:?];

    assetsManager = [(VSDownloadService *)selfCopy assetsManager];
    [assetsManager resetCache];

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    obj = v23;
    v26 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v26)
    {
      v27 = v26;
      v28 = MEMORY[0];
      do
      {
        for (j = 0; j != v27; j = (j + 1))
        {
          if (MEMORY[0] != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(8 * j);
          languages = [v30 languages];
          [orderedSet addObjectsFromArray:?];

          v32 = +[VSDownloadService inProgressDownloadVoiceKeys];
          voiceKey = [v30 voiceKey];
          v34 = [v32 containsObject:?];

          if (v34)
          {
            v35 = VSGetLogDefault();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              descriptiveKey = [v30 descriptiveKey];
              *buf = 138412290;
              v46 = descriptiveKey;
              _os_log_impl(&dword_2727E4000, v35, OS_LOG_TYPE_DEFAULT, "Voice download is in progress, skip new download. %@", buf, 0xCu);
            }
          }

          else
          {
            [(VSDownloadService *)selfCopy updateVoiceIfNeeded:?];
          }
        }

        v27 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v27);
    }

    v37 = orderedSet;
    v38 = [v37 countByEnumeratingWithState:? objects:? count:?];
    if (v38)
    {
      v39 = v38;
      v40 = MEMORY[0];
      do
      {
        for (k = 0; k != v39; k = (k + 1))
        {
          if (MEMORY[0] != v40)
          {
            objc_enumerationMutation(v37);
          }

          [(VSDownloadService *)selfCopy updateTrialVoiceResourceWithLanguage:?];
        }

        v39 = [v37 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v39);
    }

    [(NSLock *)selfCopy->_updateLock unlock];
    v6 = v43;
  }
}

uint64_t __50__VSDownloadService_updateVoicesAndVoiceResources__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if ([a2 type])
  {
    v5 = [v4 type] == 0;
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (VSDownloadService)initWithType:(unint64_t)type assetsManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = VSDownloadService;
  v8 = [(VSDownloadService *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    updateLock = v9->_updateLock;
    v9->_updateLock = v10;

    objc_storeStrong(&v9->_assetsManager, manager);
    v12 = +[VSSiriServerConfiguration defaultConfig];
    serverConfig = v9->_serverConfig;
    v9->_serverConfig = v12;

    defaultInstance = [MEMORY[0x277D79978] defaultInstance];
    preferenceInterface = v9->_preferenceInterface;
    v9->_preferenceInterface = defaultInstance;
  }

  return v9;
}

- (VSDownloadService)initWithType:(unint64_t)type
{
  mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
  v5 = [VSDownloadService initWithType:"initWithType:assetsManager:" assetsManager:?];

  return v5;
}

+ (void)triggerNeuralCompiling
{
  if ([MEMORY[0x277D79930] useSiriTTSService])
  {
    v2 = "com.apple.sirittsd.neuralCompiling";
    v3 = &__block_literal_global_55;
  }

  else
  {
    v2 = "com.apple.voiced.neural-compiling";
    v3 = &__block_literal_global_59;
  }

  MEMORY[0x2822053C8](v2, v3);
}

void __43__VSDownloadService_triggerNeuralCompiling__block_invoke_57(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = a2;
      _os_log_error_impl(&dword_2727E4000, v3, OS_LOG_TYPE_ERROR, "Triggered 'com.apple.voiced.neural-compiling' with error %d", v4, 8u);
    }
  }
}

void __43__VSDownloadService_triggerNeuralCompiling__block_invoke(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67109120;
      v4[1] = a2;
      _os_log_error_impl(&dword_2727E4000, v3, OS_LOG_TYPE_ERROR, "Triggered 'com.apple.sirittsd.neuralCompiling' with error %d", v4, 8u);
    }
  }
}

+ (void)removeInProgressDownloadVoiceKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&__inProgressDownloadVoiceKeysLock);
  inProgressDownloadVoiceKeys = [self inProgressDownloadVoiceKeys];
  [inProgressDownloadVoiceKeys removeObject:?];

  pthread_mutex_unlock(&__inProgressDownloadVoiceKeysLock);
}

+ (void)addInProgressDownloadVoiceKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&__inProgressDownloadVoiceKeysLock);
  inProgressDownloadVoiceKeys = [self inProgressDownloadVoiceKeys];
  [inProgressDownloadVoiceKeys addObject:?];

  pthread_mutex_unlock(&__inProgressDownloadVoiceKeysLock);
}

+ (id)inProgressDownloadVoiceKeys
{
  if (inProgressDownloadVoiceKeys_onceToken != -1)
  {
    dispatch_once(&inProgressDownloadVoiceKeys_onceToken, &__block_literal_global_25);
  }

  v3 = inProgressDownloadVoiceKeys___inProgressDownloads;

  return v3;
}

uint64_t __48__VSDownloadService_inProgressDownloadVoiceKeys__block_invoke()
{
  inProgressDownloadVoiceKeys___inProgressDownloads = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

+ (id)downloadQueue
{
  if (downloadQueue_onceToken != -1)
  {
    dispatch_once(&downloadQueue_onceToken, &__block_literal_global_2013);
  }

  v3 = downloadQueue_downloadQueue;

  return v3;
}

void __34__VSDownloadService_downloadQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.voiced.downloadQueue", v2);
  v1 = downloadQueue_downloadQueue;
  downloadQueue_downloadQueue = v0;
}

@end