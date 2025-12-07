@interface VSDiagnosticService
+ (id)defaultService;
- (VSDiagnosticService)initWithDirectory:(id)directory;
- (unint64_t)totalDiagnosticFileSize;
- (void)collectTailspin:(id)tailspin;
- (void)createDirectoryIfNeeded;
- (void)dumpCompressedAudio:(id)audio forRequest:(id)request;
- (void)dumpInstrumentMetrics:(id)metrics withTimestamp:(int64_t)timestamp;
- (void)dumpStreamAudio:(id)audio forRequest:(id)request;
- (void)removeDirectory;
- (void)removeOldFiles;
@end

@implementation VSDiagnosticService

- (void)collectTailspin:(id)tailspin
{
  tailspinCopy = tailspin;
  [(VSDiagnosticService *)self createDirectoryIfNeeded];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:?];
  v6 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [v5 stringFromDate:?];
  v9 = [v6 stringWithFormat:v8];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v12 = [v10 pathWithComponents:?];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createFileAtPath:? contents:? attributes:?];

  v14 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingAtPath:?];
  [v14 fileDescriptor];
  v15 = dispatch_get_global_queue(9, 0);
  v20 = v12;
  v21 = tailspinCopy;
  v19 = v14;
  v16 = v12;
  v17 = tailspinCopy;
  v18 = v14;
  tailspin_dump_output();
}

uint64_t __39__VSDiagnosticService_collectTailspin___block_invoke(uint64_t a1)
{
  [*(a1 + 32) closeFile];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)dumpInstrumentMetrics:(id)metrics withTimestamp:(int64_t)timestamp
{
  v27 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  if (metricsCopy)
  {
    v20 = 0;
    v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:? options:? error:?];
    v8 = v20;
    if (v8)
    {
      v9 = VSGetLogDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = metricsCopy;
        v25 = 2112;
        v26 = v8;
        _os_log_error_impl(&dword_2727E4000, v9, OS_LOG_TYPE_ERROR, "Unable to parse json for dictionary '%@', error: %@", buf, 0x16u);
      }
    }

    else
    {
      [(VSDiagnosticService *)self createDirectoryIfNeeded];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:timestamp];
      v10 = MEMORY[0x277CCACA8];
      v21 = @"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/";
      v11 = [v9 stringByAppendingString:?];
      v22 = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      v13 = [v10 pathWithComponents:?];

      v14 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__VSDiagnosticService_dumpInstrumentMetrics_withTimestamp___block_invoke;
      block[3] = &unk_279E4B970;
      v17 = v13;
      selfCopy = self;
      v19 = v7;
      v15 = v13;
      dispatch_async(v14, block);
    }
  }

  else
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, "No json data to dump", buf, 2u);
    }
  }
}

void __59__VSDiagnosticService_dumpInstrumentMetrics_withTimestamp___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 40) audioDumpFileAttributes];
  [v2 createFileAtPath:? contents:? attributes:?];

  v4 = [*(a1 + 48) writeToFile:? atomically:?];
  v5 = VSGetLogDefault();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, "Instrument metrics json dump saved as %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Unable to create instrument metrics json dump at '%@'", &v9, 0xCu);
  }
}

- (void)dumpStreamAudio:(id)audio forRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  if ([request canLogRequestText])
  {
    if (audioCopy)
    {
      [(VSDiagnosticService *)self createDirectoryIfNeeded];
      v7 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v7 setDateFormat:?];
      v8 = MEMORY[0x277CCACA8];
      date = [MEMORY[0x277CBEAA8] date];
      v10 = [v7 stringFromDate:?];
      v11 = [v8 stringWithFormat:v10];

      v12 = MEMORY[0x277CCACA8];
      v25 = @"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/";
      v13 = [v11 stringByAppendingString:?];
      v26 = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      v15 = [v12 pathWithComponents:?];

      v16 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__VSDiagnosticService_dumpStreamAudio_forRequest___block_invoke;
      block[3] = &unk_279E4B948;
      v20 = v15;
      selfCopy = self;
      v22 = audioCopy;
      v23 = v11;
      v17 = v11;
      v18 = v15;
      dispatch_async(v16, block);
    }

    else
    {
      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "No audio do dump", buf, 2u);
      }
    }
  }
}

void __50__VSDiagnosticService_dumpStreamAudio_forRequest___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 40) audioDumpFileAttributes];
  [v2 createFileAtPath:? contents:? attributes:?];

  if ([*(a1 + 48) writeWaveToFilePath:?])
  {
    v4 = MEMORY[0x277CCACA8];
    v16 = @"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/";
    v17 = [*(a1 + 56) stringByAppendingString:?];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v6 = [v4 pathWithComponents:?];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    [v7 moveItemAtPath:? toPath:? error:?];
    v8 = 0;

    v9 = VSGetLogDefault();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = v8;
        _os_log_error_impl(&dword_2727E4000, v10, OS_LOG_TYPE_ERROR, "Unable to create audio dump at '%@', error: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Audio save as %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v13 = v11;
      _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Unable to create intermediate audio dump at '%@'", buf, 0xCu);
    }
  }
}

- (void)dumpCompressedAudio:(id)audio forRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  if ([request canLogRequestText])
  {
    if (audioCopy)
    {
      [(VSDiagnosticService *)self createDirectoryIfNeeded];
      v7 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v7 setDateFormat:?];
      v8 = MEMORY[0x277CCACA8];
      date = [MEMORY[0x277CBEAA8] date];
      v10 = [v7 stringFromDate:?];
      v11 = [v8 stringWithFormat:v10];

      v12 = MEMORY[0x277CCACA8];
      v25 = @"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/";
      v13 = [v11 stringByAppendingString:?];
      v26 = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      v15 = [v12 pathWithComponents:?];

      v16 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__VSDiagnosticService_dumpCompressedAudio_forRequest___block_invoke;
      block[3] = &unk_279E4B948;
      v20 = v15;
      selfCopy = self;
      v22 = audioCopy;
      v23 = v11;
      v17 = v11;
      v18 = v15;
      dispatch_async(v16, block);
    }

    else
    {
      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "No compressed audio do dump", buf, 2u);
      }
    }
  }
}

void __54__VSDiagnosticService_dumpCompressedAudio_forRequest___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 40) audioDumpFileAttributes];
  [v2 createFileAtPath:? contents:? attributes:?];

  if ([*(a1 + 48) writeToFilePath:?])
  {
    v4 = MEMORY[0x277CCACA8];
    v16 = @"/private/var/mobile/Library/Logs/CrashReporter/VoiceServices/";
    v17 = [*(a1 + 56) stringByAppendingString:?];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v6 = [v4 pathWithComponents:?];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    [v7 moveItemAtPath:? toPath:? error:?];
    v8 = 0;

    v9 = VSGetLogDefault();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = v8;
        _os_log_error_impl(&dword_2727E4000, v10, OS_LOG_TYPE_ERROR, "Unable to create audio dump at '%@', error: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_2727E4000, v10, OS_LOG_TYPE_INFO, "Audio save as %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v13 = v11;
      _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Unable to create intermediate audio dump at '%@'", buf, 0xCu);
    }
  }
}

- (void)createDirectoryIfNeeded
{
  v15 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager fileExistsAtPath:? isDirectory:?];

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager2 createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
  v6 = 0;

  v7 = VSGetLogDefault();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      audioDumpPath = self->_audioDumpPath;
      *buf = 138412290;
      v12 = audioDumpPath;
      _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEFAULT, "Created audio dump directory %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = [v6 description];
    *buf = 136315394;
    v12 = "[VSDiagnosticService createDirectoryIfNeeded]";
    v13 = 2112;
    v14 = v10;
    _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, "Error %s, %@", buf, 0x16u);
  }
}

- (void)removeDirectory
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  audioDumpPath = [(VSDiagnosticService *)self audioDumpPath];
  [defaultManager removeDirectory:?];
}

- (unint64_t)totalDiagnosticFileSize
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  audioDumpPath = [(VSDiagnosticService *)self audioDumpPath];
  v5 = [defaultManager directorySize:?];

  return v5;
}

- (void)removeOldFiles
{
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  audioDumpPath = [(VSDiagnosticService *)self audioDumpPath];
  [defaultManager cleanDirectory:? withDateOlderThan:?];
}

- (VSDiagnosticService)initWithDirectory:(id)directory
{
  v14 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v11.receiver = self;
  v11.super_class = VSDiagnosticService;
  v6 = [(VSDiagnosticService *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioDumpPath, directory);
    v12 = *MEMORY[0x277CCA160];
    v13 = @"mobile";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    audioDumpFileAttributes = v7->_audioDumpFileAttributes;
    v7->_audioDumpFileAttributes = v8;
  }

  return v7;
}

+ (id)defaultService
{
  if (defaultService_onceToken != -1)
  {
    dispatch_once(&defaultService_onceToken, &__block_literal_global_2192);
  }

  v3 = defaultService___defaultStore;

  return v3;
}

void __37__VSDiagnosticService_defaultService__block_invoke()
{
  v0 = [MEMORY[0x277D79998] standardInstance];
  v1 = [v0 enableAudioDump];

  if (v1)
  {
    defaultService___defaultStore = [[VSDiagnosticService alloc] initWithDirectory:?];

    MEMORY[0x2821F96F8]();
  }
}

@end