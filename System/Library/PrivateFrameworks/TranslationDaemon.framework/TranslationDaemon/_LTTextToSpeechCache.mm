@interface _LTTextToSpeechCache
- (_LTTextToSpeechCache)init;
- (id)audioDataForKey:(id)key;
- (void)cacheAudioData:(id)data forKey:(id)key;
- (void)clear;
@end

@implementation _LTTextToSpeechCache

- (_LTTextToSpeechCache)init
{
  v9.receiver = self;
  v9.super_class = _LTTextToSpeechCache;
  v2 = [(_LTTextToSpeechCache *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.translation.tts-cache", 0);
    cacheQueue = v2->_cacheQueue;
    v2->_cacheQueue = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cache = v2->_cache;
    v2->_cache = dictionary;

    v7 = v2;
  }

  return v2;
}

- (void)cacheAudioData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  v8 = _LTPreferencesDebugDisableTTSCache();
  if (v8)
  {
    v10 = _LTOSLogTTS(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_LTTextToSpeechCache cacheAudioData:v10 forKey:?];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    cacheQueue = self->_cacheQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46___LTTextToSpeechCache_cacheAudioData_forKey___block_invoke;
    v12[3] = &unk_2789B6C78;
    objc_copyWeak(&v15, &location);
    v13 = keyCopy;
    v14 = dataCopy;
    dispatch_async(cacheQueue, v12);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (id)audioDataForKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__14;
  v20 = __Block_byref_object_dispose__14;
  v21 = 0;
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___LTTextToSpeechCache_audioDataForKey___block_invoke;
  block[3] = &unk_2789B59B8;
  v15 = &v16;
  block[4] = self;
  v6 = keyCopy;
  v14 = v6;
  dispatch_sync(cacheQueue, block);
  v9 = _LTOSLogTTS(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (v17[5])
    {
      v10 = @"HIT";
    }

    else
    {
      v10 = @"MISS";
    }

    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "TTS cache request: %{public}@", buf, 0xCu);
  }

  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)clear
{
  objc_initWeak(&location, self);
  cacheQueue = self->_cacheQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29___LTTextToSpeechCache_clear__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(cacheQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end