@interface VSCachingService
+ (id)standardService;
- (VSCachingService)initWithCache:(id)cache shortTermMemory:(id)memory;
- (id)_inMemoryCacheForHash:(id)hash;
- (id)_onDiskCacheForHash:(id)hash;
- (id)compressAudio:(id)audio;
- (id)compressStreamAudio:(id)audio;
- (id)inMemoryCacheForHash:(id)hash;
- (id)onDiskCacheForHash:(id)hash;
- (id)popShortTermCacheForHash:(id)hash;
- (id)shortTermCacheForHash:(id)hash;
- (void)_enqueueCacheWithHash:(id)hash audioObject:(id)object timingInfo:(id)info voiceKey:(id)key voiceResourceKey:(id)resourceKey completion:(id)completion;
- (void)enqueueShortTermCacheWithHash:(id)hash audio:(id)audio timingInfo:(id)info voiceKey:(id)key voiceResourceKey:(id)resourceKey completion:(id)completion;
- (void)fetchCacheForTask:(id)task;
@end

@implementation VSCachingService

- (id)popShortTermCacheForHash:(id)hash
{
  hashCopy = hash;
  v5 = [(VSCachingService *)self shortTermCacheForHash:?];
  if (v5)
  {
    shortTermCache = [(VSCachingService *)self shortTermCache];
    [shortTermCache removeObjectForKey:?];
  }

  return v5;
}

- (id)shortTermCacheForHash:(id)hash
{
  hashCopy = hash;
  shortTermCache = [(VSCachingService *)self shortTermCache];
  v6 = [shortTermCache objectForKey:?];

  return v6;
}

- (void)enqueueShortTermCacheWithHash:(id)hash audio:(id)audio timingInfo:(id)info voiceKey:(id)key voiceResourceKey:(id)resourceKey completion:(id)completion
{
  completionCopy = completion;
  resourceKeyCopy = resourceKey;
  keyCopy = key;
  infoCopy = info;
  audioCopy = audio;
  hashCopy = hash;
  v20 = [VSSpeechCacheAudio initWithKey:"initWithKey:audio:wordTimingInfo:voiceKey:voiceResourceKey:" audio:? wordTimingInfo:? voiceKey:? voiceResourceKey:?];

  shortTermCache = [(VSCachingService *)self shortTermCache];
  [shortTermCache setObject:? forKey:? timeToLive:?];

  cachingQueue = [(VSCachingService *)self cachingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__VSCachingService_enqueueShortTermCacheWithHash_audio_timingInfo_voiceKey_voiceResourceKey_completion___block_invoke;
  block[3] = &unk_279E4BBE0;
  v25 = completionCopy;
  v23 = completionCopy;
  dispatch_async(cachingQueue, block);
}

uint64_t __104__VSCachingService_enqueueShortTermCacheWithHash_audio_timingInfo_voiceKey_voiceResourceKey_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)fetchCacheForTask:(id)task
{
  v59 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  speechCache = [taskCopy speechCache];

  if (!speechCache)
  {
    cacheStore = [(VSCachingService *)self cacheStore];
    request = [taskCopy request];
    text = [request text];
    request2 = [taskCopy request];
    languageCode = [request2 languageCode];
    request3 = [taskCopy request];
    voiceName = [request3 voiceName];
    v13 = [cacheStore preinstalledCacheForText:? language:? name:?];
    [taskCopy setSpeechCache:?];

    speechCache2 = [taskCopy speechCache];

    if (speechCache2)
    {
      v15 = VSGetLogDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        speechCache3 = [taskCopy speechCache];
        v17 = [speechCache3 key];
        v57 = 138412290;
        v58 = v17;
        _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_DEFAULT, "Preinstalled cached synthesis %@ is found.", &v57, 0xCu);
      }

      instrumentMetrics = [taskCopy instrumentMetrics];
      [instrumentMetrics setIsCacheHitFromDisk:?];

      speechCache4 = [taskCopy speechCache];
      voiceKey = [speechCache4 voiceKey];
      instrumentMetrics2 = [taskCopy instrumentMetrics];
      [instrumentMetrics2 setVoiceAssetKey:?];

      speechCache5 = [taskCopy speechCache];
      voiceResourceKey = [speechCache5 voiceResourceKey];
      instrumentMetrics3 = [taskCopy instrumentMetrics];
      [instrumentMetrics3 setVoiceResourceAssetKey:?];
    }

    standardInstance = [MEMORY[0x277D79998] standardInstance];
    disableCache = [standardInstance disableCache];

    if ((disableCache & 1) == 0)
    {
      taskHash = [taskCopy taskHash];
      speechCache6 = [taskCopy speechCache];

      if (!speechCache6)
      {
        v29 = [(VSCachingService *)self _inMemoryCacheForHash:?];
        [taskCopy setSpeechCache:?];

        speechCache7 = [taskCopy speechCache];

        if (speechCache7)
        {
          v31 = VSGetLogDefault();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            speechCache8 = [taskCopy speechCache];
            v33 = [speechCache8 key];
            v57 = 138412290;
            v58 = v33;
            _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_DEFAULT, "In-memory cached synthesis %@ is found.", &v57, 0xCu);
          }

          instrumentMetrics4 = [taskCopy instrumentMetrics];
          [instrumentMetrics4 setIsCacheHitFromMemory:?];
        }
      }

      speechCache9 = [taskCopy speechCache];

      if (!speechCache9)
      {
        v36 = [(VSCachingService *)self _onDiskCacheForHash:?];
        [taskCopy setSpeechCache:?];

        speechCache10 = [taskCopy speechCache];

        if (speechCache10)
        {
          v38 = VSGetLogDefault();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            speechCache11 = [taskCopy speechCache];
            v40 = [speechCache11 key];
            v57 = 138412290;
            v58 = v40;
            _os_log_impl(&dword_2727E4000, v38, OS_LOG_TYPE_DEFAULT, "On-disk cached synthesis %@ is found.", &v57, 0xCu);
          }

          instrumentMetrics5 = [taskCopy instrumentMetrics];
          [instrumentMetrics5 setIsCacheHitFromDisk:?];
        }
      }

      speechCache12 = [taskCopy speechCache];

      if (!speechCache12)
      {
        request4 = [taskCopy request];
        text2 = [request4 text];
        v45 = [(VSCachingService *)self popShortTermCacheForHash:?];
        [taskCopy setSpeechCache:?];

        speechCache13 = [taskCopy speechCache];

        if (speechCache13)
        {
          v47 = VSGetLogDefault();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            request5 = [taskCopy request];
            logText = [request5 logText];
            v57 = 138412290;
            v58 = logText;
            _os_log_impl(&dword_2727E4000, v47, OS_LOG_TYPE_DEFAULT, "Short-term cached synthesis is found for text '%@'", &v57, 0xCu);
          }
        }
      }

      speechCache14 = [taskCopy speechCache];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        speechCache15 = [taskCopy speechCache];
        timingInfos = [taskCopy timingInfos];

        if (!timingInfos)
        {
          timingInfos2 = [speechCache15 timingInfos];
          [taskCopy setTimingInfos:?];
        }

        audio = [speechCache15 audio];
        [audio duration];
        instrumentMetrics6 = [taskCopy instrumentMetrics];
        [instrumentMetrics6 setAudioDuration:?];
      }
    }
  }
}

- (id)_onDiskCacheForHash:(id)hash
{
  hashCopy = hash;
  cacheStore = [(VSCachingService *)self cacheStore];
  v6 = [cacheStore cacheDataForKey:?];

  return v6;
}

- (id)onDiskCacheForHash:(id)hash
{
  hashCopy = hash;
  standardInstance = [MEMORY[0x277D79998] standardInstance];
  disableCache = [standardInstance disableCache];

  if (disableCache)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(VSCachingService *)self _onDiskCacheForHash:?];
  }

  return v7;
}

- (id)_inMemoryCacheForHash:(id)hash
{
  hashCopy = hash;
  threadLock = [(VSCachingService *)self threadLock];
  [threadLock lock];

  inMemoryCaches = [(VSCachingService *)self inMemoryCaches];
  v7 = [inMemoryCaches countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(inMemoryCaches);
        }

        v10 = *(8 * i);
        v11 = [v10 key];
        v12 = [hashCopy isEqualToString:?];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [inMemoryCaches countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  threadLock2 = [(VSCachingService *)self threadLock];
  [threadLock2 unlock];

  return v7;
}

- (id)inMemoryCacheForHash:(id)hash
{
  hashCopy = hash;
  standardInstance = [MEMORY[0x277D79998] standardInstance];
  disableCache = [standardInstance disableCache];

  if (disableCache)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(VSCachingService *)self _inMemoryCacheForHash:?];
  }

  return v7;
}

- (void)_enqueueCacheWithHash:(id)hash audioObject:(id)object timingInfo:(id)info voiceKey:(id)key voiceResourceKey:(id)resourceKey completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  objectCopy = object;
  infoCopy = info;
  keyCopy = key;
  resourceKeyCopy = resourceKey;
  completionCopy = completion;
  if (hashCopy && objectCopy && infoCopy)
  {
    standardInstance = [MEMORY[0x277D79998] standardInstance];
    disableCache = [standardInstance disableCache];

    if (disableCache)
    {
      v22 = VSGetLogDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2727E4000, v22, OS_LOG_TYPE_INFO, "Caching is disabled. Skipping caching.", buf, 2u);
      }

      goto LABEL_30;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = VSGetLogDefault();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v25 = "Unrecognized audio object, skip caching";
          v27 = v22;
          v28 = 2;
          goto LABEL_18;
        }

        goto LABEL_30;
      }
    }

    [objectCopy duration];
    v24 = v23;
    if (v23 < 0.5)
    {
      v22 = VSGetLogDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v48 = v24;
        v25 = "Audio duration is too short: %.2f second, skip caching";
LABEL_15:
        v27 = v22;
        v28 = 12;
LABEL_18:
        _os_log_error_impl(&dword_2727E4000, v27, OS_LOG_TYPE_ERROR, v25, buf, v28);
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    v26 = VSGetLogDefault();
    v22 = v26;
    if (v24 > 60.0)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v48 = v24;
        v25 = "Audio duration is too long: %.2f second, skip caching";
        goto LABEL_15;
      }

LABEL_30:

      goto LABEL_31;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v22, OS_LOG_TYPE_INFO, "Compressing audio for caching.", buf, 2u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [(VSCachingService *)self compressStreamAudio:?];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = 0;
        goto LABEL_27;
      }

      v29 = [(VSCachingService *)self compressAudio:?];
    }

    v30 = v29;
LABEL_27:
    v31 = VSGetLogDefault();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_INFO, "Audio compressed for caching.", buf, 2u);
    }

    v32 = [VSSpeechCacheAudio initWithKey:"initWithKey:audio:wordTimingInfo:voiceKey:voiceResourceKey:" audio:? wordTimingInfo:? voiceKey:? voiceResourceKey:?];
    threadLock = [(VSCachingService *)self threadLock];
    [threadLock lock];

    inMemoryCaches = [(VSCachingService *)self inMemoryCaches];
    [inMemoryCaches addObject:?];

    threadLock2 = [(VSCachingService *)self threadLock];
    [threadLock2 unlock];

    cachingQueue = [(VSCachingService *)self cachingQueue];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __102__VSCachingService__enqueueCacheWithHash_audioObject_timingInfo_voiceKey_voiceResourceKey_completion___block_invoke;
    v38[3] = &unk_279E4BBB8;
    v39 = hashCopy;
    v40 = v30;
    v41 = infoCopy;
    v42 = keyCopy;
    v43 = resourceKeyCopy;
    selfCopy = self;
    v45 = v32;
    v46 = completionCopy;
    v37 = v32;
    v22 = v30;
    dispatch_async(cachingQueue, v38);

    goto LABEL_30;
  }

LABEL_31:
}

void __102__VSCachingService__enqueueCacheWithHash_audioObject_timingInfo_voiceKey_voiceResourceKey_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [VSSpeechCacheAudio initWithKey:"initWithKey:audio:wordTimingInfo:voiceKey:voiceResourceKey:" audio:? wordTimingInfo:? voiceKey:? voiceResourceKey:?];
  v3 = [*(a1 + 72) cacheStore];
  v4 = [v3 addCache:?];

  if (v4)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Can't add audio cache, error: %@", &v10, 0xCu);
    }
  }

  v6 = [*(a1 + 72) threadLock];
  [v6 lock];

  v7 = [*(a1 + 72) inMemoryCaches];
  [v7 removeObject:?];

  v8 = [*(a1 + 72) threadLock];
  [v8 unlock];

  v9 = *(a1 + 88);
  if (v9)
  {
    (*(v9 + 16))(v9, v4);
  }
}

- (id)compressStreamAudio:(id)audio
{
  v25 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  v4 = objc_alloc(MEMORY[0x277D79968]);
  if (audioCopy)
  {
    [&v17 asbd];
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  v5 = [v4 initWithSourceASBD:?];
  data = [MEMORY[0x277CBEB28] data];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  data2 = [MEMORY[0x277CBEB28] data];
  *&v17 = 0;
  *(&v17 + 1) = &v17;
  *&v18 = 0x3032000000;
  *(&v18 + 1) = __Block_byref_object_copy__3455;
  v19 = __Block_byref_object_dispose__3456;
  v20 = 0;
  [v5 setErrorHandler:?];
  v8 = data;
  v9 = data2;
  [v5 setOpusDataHandler:?];
  [v5 beginEncoding];
  v16 = MEMORY[0x277D85DD0];
  v10 = v5;
  [audioCopy enumerateAudioWithBlock:{v16, 3221225472, __40__VSCachingService_compressStreamAudio___block_invoke_3, &unk_279E4BB90}];
  [v10 endEncoding];
  if (*(*(&v17 + 1) + 40))
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(&v17 + 1) + 40);
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, "Error converting stream audio during caching. %@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D79920]);
    v13 = *(MEMORY[0x277D799F0] + 16);
    *buf = *MEMORY[0x277D799F0];
    v23 = v13;
    v24 = *(MEMORY[0x277D799F0] + 32);
    [v12 setAsbd:?];
    [v12 setAudioData:?];
    [v12 setPacketDescriptions:?];
    [v12 setPacketCount:?];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(v21, 8);

  return v12;
}

void __40__VSCachingService_compressStreamAudio___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  [v6 appendData:?];
  *(*(*(a1 + 48) + 8) + 24) += a3;
  [*(a1 + 40) appendData:?];
}

void *__40__VSCachingService_compressStreamAudio___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) encodeChunk:?];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a5 = 1;
  }

  return result;
}

- (id)compressAudio:(id)audio
{
  v25 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  v4 = objc_alloc(MEMORY[0x277D79968]);
  if (audioCopy)
  {
    [&v17 asbd];
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  v5 = [v4 initWithSourceASBD:?];
  data = [MEMORY[0x277CBEB28] data];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  data2 = [MEMORY[0x277CBEB28] data];
  *&v17 = 0;
  *(&v17 + 1) = &v17;
  *&v18 = 0x3032000000;
  *(&v18 + 1) = __Block_byref_object_copy__3455;
  v19 = __Block_byref_object_dispose__3456;
  v20 = 0;
  [v5 setErrorHandler:?];
  v16 = MEMORY[0x277D85DD0];
  v8 = data;
  v9 = data2;
  [v5 setOpusDataHandler:{v16, 3221225472, __34__VSCachingService_compressAudio___block_invoke_2, &unk_279E4BB68}];
  [v5 beginEncoding];
  audioData = [audioCopy audioData];
  [v5 encodeChunk:?];

  [v5 endEncoding];
  if (*(*(&v17 + 1) + 40))
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(&v17 + 1) + 40);
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, "Error converting audio during caching. %@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D79920]);
    v13 = *(MEMORY[0x277D799F0] + 16);
    *buf = *MEMORY[0x277D799F0];
    v23 = v13;
    v24 = *(MEMORY[0x277D799F0] + 32);
    [v12 setAsbd:?];
    [v12 setAudioData:?];
    [v12 setPacketDescriptions:?];
    [v12 setPacketCount:?];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(v21, 8);

  return v12;
}

void __34__VSCachingService_compressAudio___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  [v6 appendData:?];
  *(*(*(a1 + 48) + 8) + 24) += a3;
  [*(a1 + 40) appendData:?];
}

- (VSCachingService)initWithCache:(id)cache shortTermMemory:(id)memory
{
  cacheCopy = cache;
  memoryCopy = memory;
  v19.receiver = self;
  v19.super_class = VSCachingService;
  v9 = [(VSCachingService *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cacheStore, cache);
    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    threadLock = v10->_threadLock;
    v10->_threadLock = v11;

    array = [MEMORY[0x277CBEB18] array];
    inMemoryCaches = v10->_inMemoryCaches;
    v10->_inMemoryCaches = array;

    objc_storeStrong(&v10->_shortTermCache, memory);
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v16 = dispatch_queue_create("com.apple.voiced.cachingQueue", v15);
    cachingQueue = v10->_cachingQueue;
    v10->_cachingQueue = v16;
  }

  return v10;
}

+ (id)standardService
{
  if (standardService_onceToken != -1)
  {
    dispatch_once(&standardService_onceToken, &__block_literal_global_3469);
  }

  v3 = standardService___standardService;

  return v3;
}

void __35__VSCachingService_standardService__block_invoke()
{
  v0 = [VSCachingService alloc];
  v4 = +[VSSpeechCache defaultCacheStore];
  v1 = +[VSShortTermCache sharedInstance];
  v2 = [VSCachingService initWithCache:v0 shortTermMemory:"initWithCache:shortTermMemory:"];
  v3 = standardService___standardService;
  standardService___standardService = v2;
}

@end