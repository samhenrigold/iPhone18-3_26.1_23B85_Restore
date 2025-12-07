@interface VSPrewarmService
+ (id)sharedService;
- (VSPrewarmService)init;
- (id)_cachedEngineForVoice:(id)voice resources:(id)resources;
- (id)_engineForVoice:(id)voice resources:(id)resources;
- (id)cachedEngineForVoice:(id)voice resources:(id)resources;
- (id)loadEngineForVoice:(id)voice resources:(id)resources;
- (void)_loadVoiceResources:(id)resources forEngine:(id)engine;
- (void)handleVoiceSelectionPurge:(id)purge;
- (void)prewarmWithRequest:(id)request;
- (void)setActiveSessionCount:(int64_t)count;
- (void)unloadCachedEngineWithVoice:(id)voice;
- (void)unloadEngine;
@end

@implementation VSPrewarmService

- (void)unloadEngine
{
  prewarmQueue = [(VSPrewarmService *)self prewarmQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__VSPrewarmService_unloadEngine__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_sync(prewarmQueue, block);
}

void *__32__VSPrewarmService_unloadEngine__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCachedEngine:?];
  v2 = *(a1 + 32);

  return [v2 setLoadedResources:?];
}

- (void)_loadVoiceResources:(id)resources forEngine:(id)engine
{
  v32 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  engineCopy = engine;
  dispatch_assert_queue_V2(self->_prewarmQueue);
  searchPathURL = [resourcesCopy searchPathURL];
  path = [searchPathURL path];

  v27 = resourcesCopy;
  resourceList = [resourcesCopy resourceList];
  v10 = [resourceList countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v12 = v10;
    v13 = MEMORY[0];
    *&v11 = 138412546;
    v25 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(resourceList);
        }

        v15 = *(8 * v14);
        v16 = [path stringByAppendingPathComponent:v25];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v18 = [defaultManager fileExistsAtPath:?];

        if (v18)
        {
          resourceMimeTypes = [v27 resourceMimeTypes];
          v20 = [resourceMimeTypes objectForKeyedSubscript:?];

          if (([v20 isEqualToString:?]& 1) == 0 && ([v20 isEqualToString:?]& 1) == 0)
          {
            v21 = [engineCopy loadResourceAtPath:? mimeType:? error:?];
          }
        }

        else
        {
          v20 = VSGetLogDefault();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = v25;
            v29 = v15;
            v30 = 2112;
            v31 = v16;
            _os_log_error_impl(&dword_2727E4000, v20, OS_LOG_TYPE_ERROR, "Specified resource file '%@' does not exist at: '%@'", buf, 0x16u);
          }
        }

        v14 = (v14 + 1);
      }

      while (v12 != v14);
      v12 = [resourceList countByEnumeratingWithState:? objects:? count:?];
    }

    while (v12);
  }

  [v27 pitch];
  if (v22 == 0.0)
  {
    [engineCopy pitch];
  }

  [engineCopy setPitch:?];
  [v27 rate];
  if (v23 == 0.0)
  {
    [engineCopy rate];
  }

  [engineCopy setRate:?];
  [v27 volume];
  if (v24 == 0.0)
  {
    [engineCopy volume];
  }

  [engineCopy setVolume:?];
}

- (void)unloadCachedEngineWithVoice:(id)voice
{
  voiceCopy = voice;
  prewarmQueue = [(VSPrewarmService *)self prewarmQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__VSPrewarmService_unloadCachedEngineWithVoice___block_invoke;
  v7[3] = &unk_279E4BC28;
  v7[4] = self;
  v8 = voiceCopy;
  v6 = voiceCopy;
  dispatch_sync(prewarmQueue, v7);
}

void __48__VSPrewarmService_unloadCachedEngineWithVoice___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v3 = [v2 voicePath];
    v4 = [*(a1 + 40) voicePath];
    v5 = [v3 isEqualToString:?];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 16);
      *(v6 + 16) = 0;

      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      *(v8 + 24) = 0;
    }
  }
}

- (id)loadEngineForVoice:(id)voice resources:(id)resources
{
  voiceCopy = voice;
  resourcesCopy = resources;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3200;
  v21 = __Block_byref_object_dispose__3201;
  v22 = 0;
  prewarmQueue = [(VSPrewarmService *)self prewarmQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__VSPrewarmService_loadEngineForVoice_resources___block_invoke;
  v13[3] = &unk_279E4BA08;
  v13[4] = self;
  v14 = voiceCopy;
  v15 = resourcesCopy;
  v16 = &v17;
  v9 = resourcesCopy;
  v10 = voiceCopy;
  dispatch_sync(prewarmQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __49__VSPrewarmService_loadEngineForVoice_resources___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3)
  {
    v4 = [v2 _cachedEngineForVoice:? resources:?];
    v5 = *(*(a1 + 32) + 16);

    if (v4 == v5)
    {
      return;
    }

    v2 = *(a1 + 32);
    v3 = v2[2];
  }

  v2[2] = 0;

  v6 = [*(a1 + 32) _engineForVoice:? resources:?];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (![MEMORY[0x277D79930] lowInactiveMemory] || (v9 = *(*(*(a1 + 56) + 8) + 40)) == 0 || (v10 = *(a1 + 32), *(v10 + 8) <= 0))
  {
    if ([MEMORY[0x277D79930] lowInactiveMemory])
    {
      return;
    }

    v9 = *(*(*(a1 + 56) + 8) + 40);
    if (!v9)
    {
      return;
    }

    v10 = *(a1 + 32);
  }

  objc_storeStrong((v10 + 16), v9);
  v11 = *(a1 + 48);
  v12 = (*(a1 + 32) + 24);

  objc_storeStrong(v12, v11);
}

- (id)_engineForVoice:(id)voice resources:(id)resources
{
  v41 = *MEMORY[0x277D85DE8];
  voiceCopy = voice;
  resourcesCopy = resources;
  dispatch_assert_queue_V2(self->_prewarmQueue);
  resourceMimeTypes = [resourcesCopy resourceMimeTypes];
  v9 = [resourceMimeTypes countByEnumeratingWithState:? objects:? count:?];
  if (v9)
  {
    v10 = v9;
    selfCopy = self;
    v11 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(resourceMimeTypes);
        }

        resourceMimeTypes2 = [resourcesCopy resourceMimeTypes];
        v14 = [resourceMimeTypes2 objectForKeyedSubscript:?];

        if ([v14 isEqualToString:?])
        {
          searchPathURL = [resourcesCopy searchPathURL];
          path = [searchPathURL path];
          v15 = [path stringByAppendingPathComponent:?];

          goto LABEL_11;
        }
      }

      v10 = [resourceMimeTypes countByEnumeratingWithState:? objects:? count:?];
      if (v10)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_11:
    self = selfCopy;
  }

  else
  {
    v15 = 0;
  }

  v18 = objc_alloc(MEMORY[0x277D79990]);
  voicePath = [voiceCopy voicePath];
  v20 = [v18 initWithVoicePath:? resourcePath:?];

  if (v20)
  {
    if (resourcesCopy)
    {
      [VSPrewarmService _loadVoiceResources:"_loadVoiceResources:forEngine:" forEngine:?];
    }

    v21 = MEMORY[0x277CBEBC0];
    voicePath2 = [voiceCopy voicePath];
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    mEMORY[0x277D79950] = [v21 fileURLWithPathComponents:?];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path2 = [mEMORY[0x277D79950] path];
    v26 = [defaultManager fileExistsAtPath:?];

    if (v26)
    {
      v27 = VSGetLogDefault();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2727E4000, v27, OS_LOG_TYPE_DEBUG, "Voice specific resources found.", buf, 2u);
      }

      v28 = objc_alloc_init(MEMORY[0x277D799D8]);
      v29 = MEMORY[0x277CBEBC0];
      voicePath3 = [voiceCopy voicePath];
      v31 = [v29 fileURLWithPath:?];
      [v28 setSearchPathURL:?];

      [VSPrewarmService _loadVoiceResources:"_loadVoiceResources:forEngine:" forEngine:?];
    }

    v32 = v20;
  }

  else
  {
    v33 = VSGetLogDefault();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      voicePath4 = [voiceCopy voicePath];
      *buf = 138412290;
      v40 = voicePath4;
      _os_log_error_impl(&dword_2727E4000, v33, OS_LOG_TYPE_ERROR, "Can't create engine with path '%@'", buf, 0xCu);
    }

    mEMORY[0x277D79950] = [MEMORY[0x277D79950] sharedManager];
    v34 = [mEMORY[0x277D79950] purgeAsset:?];
  }

  return v20;
}

- (id)cachedEngineForVoice:(id)voice resources:(id)resources
{
  voiceCopy = voice;
  resourcesCopy = resources;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3200;
  v21 = __Block_byref_object_dispose__3201;
  v22 = 0;
  prewarmQueue = [(VSPrewarmService *)self prewarmQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__VSPrewarmService_cachedEngineForVoice_resources___block_invoke;
  v13[3] = &unk_279E4BA08;
  v13[4] = self;
  v14 = voiceCopy;
  v15 = resourcesCopy;
  v16 = &v17;
  v9 = resourcesCopy;
  v10 = voiceCopy;
  dispatch_sync(prewarmQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __51__VSPrewarmService_cachedEngineForVoice_resources___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) _cachedEngineForVoice:? resources:?];

  return MEMORY[0x2821F96F8]();
}

- (id)_cachedEngineForVoice:(id)voice resources:(id)resources
{
  resourcesCopy = resources;
  prewarmQueue = self->_prewarmQueue;
  voiceCopy = voice;
  dispatch_assert_queue_V2(prewarmQueue);
  voicePath = [(VSSpeechEngine *)self->_cachedEngine voicePath];
  voicePath2 = [voiceCopy voicePath];

  if ([voicePath isEqualToString:?])
  {
    v11 = [(VSVoiceResourceAsset *)self->_loadedResources key];
    v12 = [resourcesCopy key];
    v13 = [v11 isEqualToString:?];

    if (v13)
    {
      v14 = self->_cachedEngine;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (void)prewarmWithRequest:(id)request
{
  requestCopy = request;
  prewarmQueue = [(VSPrewarmService *)self prewarmQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__VSPrewarmService_prewarmWithRequest___block_invoke;
  v7[3] = &unk_279E4BC28;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_sync(prewarmQueue, v7);
}

void __39__VSPrewarmService_prewarmWithRequest___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(a1 + 32);
    v31 = 138412290;
    v32 = v27;
    _os_log_debug_impl(&dword_2727E4000, v2, OS_LOG_TYPE_DEBUG, "Prewarming: Invoked with request: '%@'", &v31, 0xCu);
  }

  kdebug_trace();
  mach_absolute_time();
  v3 = +[OspreyTTSService sharedInstance];
  [v3 initializeDeviceAuthenticationSessionWithCompletion:?];

  v4 = [[VSSpeechSpeakTask alloc] initWithRequest:?];
  [(VSSpeechSpeakTask *)v4 fetchVoiceAsset];
  [(VSSpeechSpeakTask *)v4 fetchVoiceResource];
  v5 = [(VSSpeechSpeakTask *)v4 error];

  if (v5)
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(VSSpeechSpeakTask *)v4 error];
      v31 = 138412290;
      v32 = v7;
      _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Unable to prewarm, error: %@", &v31, 0xCu);
LABEL_19:
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [(VSSpeechSpeakTask *)v4 voiceSelection];
    v10 = [(VSSpeechSpeakTask *)v4 voiceResource];
    v6 = [v8 _cachedEngineForVoice:? resources:?];

    if (!v6)
    {
      v11 = *(a1 + 40);
      v12 = *(v11 + 16);
      *(v11 + 16) = 0;

      v13 = *(a1 + 40);
      v14 = [(VSSpeechSpeakTask *)v4 voiceSelection];
      v15 = [(VSSpeechSpeakTask *)v4 voiceResource];
      v6 = [v13 _engineForVoice:? resources:?];

      if (!v6)
      {
        v7 = VSGetLogDefault();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v29 = [(VSSpeechSpeakTask *)v4 voiceSelection];
          v30 = [v29 voicePath];
          v31 = 138412290;
          v32 = v30;
          _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "Can't prewarm engine with path '%@'", &v31, 0xCu);
        }

        v6 = 0;
        goto LABEL_19;
      }

      objc_storeStrong((*(a1 + 40) + 16), v6);
      v16 = [(VSSpeechSpeakTask *)v4 voiceResource];
      v17 = *(a1 + 40);
      v18 = *(v17 + 24);
      *(v17 + 24) = v16;

      v19 = [*(a1 + 32) languageCode];
      v20 = [@"Prewarm textify emoji" vs_textifyEmojiWithLanguage:?];
    }

    [v6 preheat];
    mach_absolute_time();
    v21 = VSGetLogDefault();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      VSAbsoluteTimeToSecond();
      v31 = 134217984;
      v32 = v22;
      _os_log_impl(&dword_2727E4000, v21, OS_LOG_TYPE_INFO, "Prewarm finished. Latency: %.3f", &v31, 0xCu);
    }

    v23 = VSGetLogDefault();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 32);
      v31 = 138412290;
      v32 = v28;
      _os_log_debug_impl(&dword_2727E4000, v23, OS_LOG_TYPE_DEBUG, "Prewarming: Completed with request: '%@'", &v31, 0xCu);
    }

    kdebug_trace();
    if ([MEMORY[0x277D79930] lowInactiveMemory])
    {
      v24 = *(a1 + 40);
      if (!*(v24 + 8))
      {
        v25 = *(v24 + 16);
        *(v24 + 16) = 0;

        v26 = *(a1 + 40);
        v7 = *(v26 + 24);
        *(v26 + 24) = 0;
        goto LABEL_19;
      }
    }
  }
}

void __39__VSPrewarmService_prewarmWithRequest___block_invoke_25(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSGetLogDefault();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "Unable to initialize Device Authentication session: %@", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_2727E4000, v4, OS_LOG_TYPE_INFO, "Device Authentication session is initialized", &v5, 2u);
  }
}

- (void)setActiveSessionCount:(int64_t)count
{
  self->_activeSessionCount = count & ~(count >> 63);
  if (count <= 0)
  {
    [(VSPrewarmService *)self unloadEngine];
  }
}

- (void)handleVoiceSelectionPurge:(id)purge
{
  object = [purge object];
  voicePath = [object voicePath];
  cachedEngine = [(VSPrewarmService *)self cachedEngine];
  voicePath2 = [cachedEngine voicePath];
  v7 = [voicePath isEqualToString:?];

  if (v7)
  {
    [(VSPrewarmService *)self unloadEngine];
  }
}

- (VSPrewarmService)init
{
  v8.receiver = self;
  v8.super_class = VSPrewarmService;
  v2 = [(VSPrewarmService *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.voiced.prewarmQueue", v3);
    prewarmQueue = v2->_prewarmQueue;
    v2->_prewarmQueue = v4;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:? selector:? name:? object:?];
  }

  return v2;
}

+ (id)sharedService
{
  if (sharedService_onceToken_3234 != -1)
  {
    dispatch_once(&sharedService_onceToken_3234, &__block_literal_global_3235);
  }

  v3 = sharedService___prewarmService;

  return v3;
}

uint64_t __33__VSPrewarmService_sharedService__block_invoke()
{
  sharedService___prewarmService = objc_alloc_init(VSPrewarmService);

  return MEMORY[0x2821F96F8]();
}

@end