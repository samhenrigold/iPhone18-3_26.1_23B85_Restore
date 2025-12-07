@interface VSSpeechCache
+ (VSSpeechCache)defaultCacheStore;
- (BOOL)isPreinstalledCacheAvailableForRequest:(id)request;
- (VSSpeechCache)initWithStorePath:(id)path;
- (id)addCache:(id)cache;
- (id)cacheDataForKey:(id)key;
- (id)preinstalledCacheForText:(id)text language:(id)language name:(id)name;
- (unint64_t)totalCacheSize;
- (void)cleanCache;
- (void)deleteCache;
@end

@implementation VSSpeechCache

- (void)deleteCache
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  dirPath = [(VSSpeechCache *)self dirPath];
  [defaultManager removeDirectory:?];
}

- (unint64_t)totalCacheSize
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  dirPath = [(VSSpeechCache *)self dirPath];
  v5 = [defaultManager directorySize:?];

  return v5;
}

- (void)cleanCache
{
  [MEMORY[0x277D799C0] isHomePod];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  dirPath = [(VSSpeechCache *)self dirPath];
  [defaultManager cleanDirectory:? withLRULimit:?];
}

- (BOOL)isPreinstalledCacheAvailableForRequest:(id)request
{
  requestCopy = request;
  text = [requestCopy text];
  languageCode = [requestCopy languageCode];
  voiceName = [requestCopy voiceName];

  v8 = [VSSpeechCache preinstalledCacheForText:"preinstalledCacheForText:language:name:" language:? name:?];

  return v8 != 0;
}

- (id)cacheDataForKey:(id)key
{
  keyCopy = key;
  dirPath = [(VSSpeechCache *)self dirPath];
  v6 = [dirPath stringByAppendingPathComponent:?];

  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
  v8 = v7;
  if (v7 && [v7 bytes])
  {
    v9 = MEMORY[0x277CCACA8];
    [v8 bytes];
    v10 = [v9 stringWithUTF8String:?];
    v11 = NSClassFromString(v10);
    [v8 length];
    v12 = [v8 subdataWithRange:?];
    v13 = [[v11 alloc] initWithKey:? data:?];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)preinstalledCacheForText:(id)text language:(id)language name:(id)name
{
  v32 = *MEMORY[0x277D85DE8];
  textCopy = text;
  languageCopy = language;
  nameCopy = name;
  availableLanguages = [MEMORY[0x277D799B0] availableLanguages];
  v12 = [availableLanguages containsObject:?];

  if (v12)
  {
    v13 = languageCopy;
  }

  else
  {
    v13 = [MEMORY[0x277D799B0] fallbackLanguageForLanguage:?];
    v14 = VSGetLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = languageCopy;
      v30 = 2114;
      v31 = v13;
      _os_log_impl(&dword_2727E4000, v14, OS_LOG_TYPE_DEFAULT, "{public}%@ is not TTS language, falling back to %{public}@", buf, 0x16u);
    }
  }

  v15 = [textCopy preinstalledAudioHashForLanguage:? name:?];
  preinstalledCacheDir = [(VSSpeechCache *)self preinstalledCacheDir];
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v13, nameCopy];
  v18 = [preinstalledCacheDir stringByAppendingPathComponent:?];

  v19 = [v18 stringByAppendingPathComponent:?];

  v20 = [v19 stringByAppendingPathExtension:?];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v18) = [defaultManager isReadableFileAtPath:?];

  if (v18)
  {
    v22 = [MEMORY[0x277D79920] audioDataFromFile:? error:?];
    v23 = 0;
    if (v23)
    {
      v24 = VSGetLogDefault();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v29 = v20;
        v30 = 2112;
        v31 = v23;
        _os_log_error_impl(&dword_2727E4000, v24, OS_LOG_TYPE_ERROR, "Error in reading audio data from file: %@ error:%@", buf, 0x16u);
      }

      v25 = 0;
    }

    else
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:v13, @"gryphon", @"unknown", nameCopy, @"premium", @"0"];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:v13, @"preinstalledCache", @"0"];
      v25 = [VSSpeechCacheAudio initWithKey:"initWithKey:audio:wordTimingInfo:voiceKey:voiceResourceKey:" audio:? wordTimingInfo:? voiceKey:? voiceResourceKey:?];
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)addCache:(id)cache
{
  v25 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v5 = [objc_opt_class() description];
  v6 = [v5 dataUsingEncoding:?];
  if (([v6 length] - 8) > 0xFFFFFFFFFFFFFFBELL)
  {
    serializedData = [cacheCopy serializedData];
    v11 = MEMORY[0x277CBEB28];
    [serializedData length];
    v12 = [v11 dataWithCapacity:?];
    [v12 appendData:?];
    [v12 setLength:?];
    [v12 appendData:?];
    dirPath = [(VSSpeechCache *)self dirPath];
    v14 = [cacheCopy key];
    v15 = [dirPath stringByAppendingPathComponent:?];

    LOBYTE(v14) = [v12 writeToFile:? options:? error:?];
    v10 = 0;
    if ((v14 & 1) == 0)
    {
      v16 = VSGetLogDefault();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = [v10 description];
        *buf = 136315394;
        v20 = "[VSSpeechCache addCache:]";
        v21 = 2112;
        v22 = v18;
        _os_log_error_impl(&dword_2727E4000, v16, OS_LOG_TYPE_ERROR, "Error %s, %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "Cache type name too long %@", buf, 0xCu);
    }

    v8 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA470];
    v24 = @"Cache type name too long";
    serializedData = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v10 = [v8 errorWithDomain:? code:? userInfo:?];
  }

  return v10;
}

- (VSSpeechCache)initWithStorePath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = VSSpeechCache;
  v6 = [(VSSpeechCache *)&v18 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
  bundlePath = [v7 bundlePath];
  v9 = [bundlePath stringByAppendingPathComponent:?];
  preinstalledCacheDir = v6->_preinstalledCacheDir;
  v6->_preinstalledCacheDir = v9;

  objc_storeStrong(&v6->_dirPath, path);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  LOBYTE(bundlePath) = [defaultManager createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
  v12 = v17;

  if (bundlePath)
  {

LABEL_4:
    v13 = v6;
    goto LABEL_8;
  }

  v14 = VSGetLogDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = [v12 description];
    *buf = 136315394;
    v20 = "[VSSpeechCache initWithStorePath:]";
    v21 = 2112;
    v22 = v16;
    _os_log_error_impl(&dword_2727E4000, v14, OS_LOG_TYPE_ERROR, "Error %s, %@", buf, 0x16u);
  }

  v13 = 0;
LABEL_8:

  return v13;
}

+ (VSSpeechCache)defaultCacheStore
{
  if (defaultCacheStore_onceToken != -1)
  {
    dispatch_once(&defaultCacheStore_onceToken, &__block_literal_global_1098);
  }

  v3 = defaultCacheStore___defaultStore;

  return v3;
}

void __34__VSSpeechCache_defaultCacheStore__block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v0 firstObject];

  v2 = MEMORY[0x277CCACA8];
  v7 = v1;
  v8 = @"VoiceServices";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v4 = [v2 pathWithComponents:?];

  v5 = [[VSSpeechCache alloc] initWithStorePath:?];
  v6 = defaultCacheStore___defaultStore;
  defaultCacheStore___defaultStore = v5;
}

@end