@interface SPEmbeddingTailspinDumper
+ (id)lockFilePath;
+ (id)log;
+ (id)sharedInstance;
+ (id)tailspinDirectory;
+ (id)tailspinPrefix;
- (BOOL)canDump;
- (BOOL)dumpTailspinSync:(int)sync;
- (SPEmbeddingTailspinDumper)init;
- (void)cleanupOldDumps;
- (void)dump;
@end

@implementation SPEmbeddingTailspinDumper

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SPEmbeddingTailspinDumper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __32__SPEmbeddingTailspinDumper_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.spotlightembedding", [v4 UTF8String]);
  v3 = log_log;
  log_log = v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SPEmbeddingTailspinDumper sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __43__SPEmbeddingTailspinDumper_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(SPEmbeddingTailspinDumper);

  return MEMORY[0x2821F96F8]();
}

+ (id)tailspinDirectory
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [@"/private/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search" stringByAppendingPathComponent:@"Tailspin"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([defaultManager fileExistsAtPath:v2] & 1) == 0)
  {
    v7 = 0;
    [defaultManager createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:&v7];
    v4 = v7;
    if (v4)
    {
      v5 = [objc_opt_class() log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&dword_26B793000, v5, OS_LOG_TYPE_ERROR, "Failed to create tailsipin directory: %@", buf, 0xCu);
      }
    }
  }

  return v2;
}

+ (id)lockFilePath
{
  tailspinDirectory = [self tailspinDirectory];
  v3 = [tailspinDirectory stringByAppendingPathComponent:@"tailspin.lock"];

  return v3;
}

+ (id)tailspinPrefix
{
  v2 = MEMORY[0x277CCACA8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  v5 = [v2 stringWithFormat:@"%@_", processName];

  return v5;
}

- (SPEmbeddingTailspinDumper)init
{
  v10.receiver = self;
  v10.super_class = SPEmbeddingTailspinDumper;
  v2 = [(SPEmbeddingTailspinDumper *)&v10 init];
  v3 = v2;
  if (v2)
  {
    latestDumpDate = v2->_latestDumpDate;
    v2->_latestDumpDate = 0;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);
    v7 = dispatch_queue_create("com.apple.SpotlightEmbedding.tailspinDump", v6);
    dumpQueue = v3->_dumpQueue;
    v3->_dumpQueue = v7;
  }

  return v3;
}

- (BOOL)canDump
{
  selfCopy = self;
  v37 = *MEMORY[0x277D85DE8];
  if (self->_latestDumpDate)
  {
LABEL_2:
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:selfCopy->_latestDumpDate];
    v5 = v4;

    return v5 >= 43200.0;
  }

  tailspinDirectory = [objc_opt_class() tailspinDirectory];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v31 = tailspinDirectory;
  v8 = [defaultManager contentsOfDirectoryAtPath:tailspinDirectory error:0];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v33;
  v29 = *MEMORY[0x277CCA150];
  v13 = @".tailspin";
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v32 + 1) + 8 * i);
      tailspinPrefix = [objc_opt_class() tailspinPrefix];
      if ([v15 hasPrefix:tailspinPrefix])
      {
        v17 = [v15 hasSuffix:v13];

        if (!v17)
        {
          continue;
        }

        tailspinPrefix = [v31 stringByAppendingPathComponent:v15];
        v18 = [defaultManager attributesOfItemAtPath:tailspinPrefix error:0];
        v19 = [v18 objectForKeyedSubscript:v29];
        v20 = v19;
        if (!v11 || [v19 compare:v11] == 1)
        {
          v21 = v20;
          v22 = v11;
          v23 = selfCopy;
          v24 = v8;
          v25 = v13;
          v26 = v21;

          v27 = v26;
          v13 = v25;
          v8 = v24;
          selfCopy = v23;
          v11 = v27;
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v10);
  if (v11)
  {
    latestDumpDate = selfCopy->_latestDumpDate;
    selfCopy->_latestDumpDate = v11;

    goto LABEL_2;
  }

LABEL_19:

  return 1;
}

- (void)cleanupOldDumps
{
  v63 = *MEMORY[0x277D85DE8];
  tailspinDirectory = [objc_opt_class() tailspinDirectory];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager contentsOfDirectoryAtPath:tailspinDirectory error:0];
  date = [MEMORY[0x277CBEAA8] date];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
  v41 = tailspinDirectory;
  if (v4)
  {
    v6 = v4;
    v7 = *v52;
    v8 = *MEMORY[0x277CCA150];
    *&v5 = 138412546;
    v38 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        if ([v10 hasSuffix:{@".tailspin", v38}])
        {
          v11 = [tailspinDirectory stringByAppendingPathComponent:v10];
          v12 = [defaultManager attributesOfItemAtPath:v11 error:0];
          v13 = [v12 objectForKeyedSubscript:v8];
          if (v13)
          {
            [date timeIntervalSinceDate:v13];
            if (v14 > 2592000.0)
            {
              v50 = 0;
              [defaultManager removeItemAtPath:v11 error:&v50];
              v15 = v50;
              if (v15)
              {
                v16 = [objc_opt_class() log];
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  *buf = v38;
                  v59 = v11;
                  v60 = 2112;
                  v61 = v15;
                  _os_log_impl(&dword_26B793000, v16, OS_LOG_TYPE_ERROR, "Failed to remove outdated dump file at %@: %@", buf, 0x16u);
                }

                tailspinDirectory = v41;
              }
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v6);
  }

  v17 = [defaultManager contentsOfDirectoryAtPath:tailspinDirectory error:0];

  obja = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v47;
    v22 = *MEMORY[0x277CCA150];
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v47 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v46 + 1) + 8 * j);
        tailspinPrefix = [objc_opt_class() tailspinPrefix];
        if ([v24 hasPrefix:tailspinPrefix])
        {
          v26 = [v24 hasSuffix:@".tailspin"];

          if (!v26)
          {
            continue;
          }

          tailspinPrefix = [v41 stringByAppendingPathComponent:v24];
          v27 = [defaultManager attributesOfItemAtPath:tailspinPrefix error:0];
          v28 = [v27 objectForKeyedSubscript:v22];
          v29 = v28;
          if (v28)
          {
            v55[0] = @"path";
            v55[1] = @"date";
            v56[0] = tailspinPrefix;
            v56[1] = v28;
            v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
            [obja addObject:v30];
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v46 objects:v57 count:16];
    }

    while (v20);
  }

  [obja sortUsingComparator:&__block_literal_global_30];
  v31 = v41;
  if ([obja count] >= 4 && objc_msgSend(obja, "count") >= 4)
  {
    v33 = 3;
    *&v32 = 138412546;
    v39 = v32;
    do
    {
      v34 = [obja objectAtIndexedSubscript:{v33, v39}];
      v35 = [v34 objectForKeyedSubscript:@"path"];

      v45 = 0;
      [defaultManager removeItemAtPath:v35 error:&v45];
      v36 = v45;
      if (v36)
      {
        v37 = [objc_opt_class() log];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = v39;
          v59 = v35;
          v60 = 2112;
          v61 = v36;
          _os_log_impl(&dword_26B793000, v37, OS_LOG_TYPE_ERROR, "Failed to remove old tailspin file at %@: %@", buf, 0x16u);
        }

        v31 = v41;
      }

      ++v33;
    }

    while (v33 < [obja count]);
  }
}

uint64_t __44__SPEmbeddingTailspinDumper_cleanupOldDumps__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"date"];
  v6 = [v4 objectForKeyedSubscript:@"date"];

  v7 = [v6 compare:v5];
  return v7;
}

- (BOOL)dumpTailspinSync:(int)sync
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D82D28];
  v7[0] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = tailspin_dump_output_with_options_sync();

  return v4;
}

- (void)dump
{
  if (CFPreferencesGetAppBooleanValue(@"SpotlightEmbeddingGenTimeoutTailspin", *MEMORY[0x277CBF008], 0))
  {
    dumpQueue = self->_dumpQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__SPEmbeddingTailspinDumper_dump__block_invoke;
    block[3] = &unk_279D01A20;
    block[4] = self;
    dispatch_async(dumpQueue, block);
  }
}

void __33__SPEmbeddingTailspinDumper_dump__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() lockFilePath];
  v3 = open([v2 fileSystemRepresentation], 514, 384);
  if (v3 < 0)
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v2;
      _os_log_impl(&dword_26B793000, v6, OS_LOG_TYPE_ERROR, "Unable to open tailspin lock file at %@", buf, 0xCu);
    }
  }

  else
  {
    v4 = v3;
    if (flock(v3, 2))
    {
      v5 = [objc_opt_class() log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v2;
        _os_log_impl(&dword_26B793000, v5, OS_LOG_TYPE_ERROR, "Unable to acquire tailspin lock on file %@", buf, 0xCu);
      }

      close(v4);
    }

    else
    {
      if ([*(a1 + 32) canDump])
      {
        v7 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v7 setDateFormat:@"yyyyMMdd_HHmmss"];
        v8 = [MEMORY[0x277CBEAA8] date];
        v9 = [v7 stringFromDate:v8];
        v10 = MEMORY[0x277CCACA8];
        v11 = [objc_opt_class() tailspinPrefix];
        v12 = [v10 stringWithFormat:@"%@%@%@", v11, v9, @".tailspin"];

        v13 = [objc_opt_class() tailspinDirectory];
        v14 = [v13 stringByAppendingPathComponent:v12];

        v15 = open([v14 fileSystemRepresentation], 2562, 432);
        if ((v15 & 0x80000000) != 0)
        {
          v18 = [objc_opt_class() log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = v14;
            _os_log_impl(&dword_26B793000, v18, OS_LOG_TYPE_ERROR, "Failed to open tailspin file at %@", buf, 0xCu);
          }
        }

        else if ([*(a1 + 32) dumpTailspinSync:v15])
        {
          v16 = [objc_opt_class() log];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v14;
            _os_log_impl(&dword_26B793000, v16, OS_LOG_TYPE_DEFAULT, "Tailspin captured at %@", buf, 0xCu);
          }

          close(v15);
          objc_storeStrong((*(a1 + 32) + 16), v8);
          [*(a1 + 32) cleanupOldDumps];
        }

        else
        {
          v19 = [objc_opt_class() log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = v14;
            _os_log_impl(&dword_26B793000, v19, OS_LOG_TYPE_ERROR, "Failed to capture tailspin at %@", buf, 0xCu);
          }

          close(v15);
          v20 = v14;
          unlink([v14 fileSystemRepresentation]);
        }
      }

      else
      {
        v17 = [objc_opt_class() log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_26B793000, v17, OS_LOG_TYPE_DEBUG, "A recent tailspin exists. Skipping dump.", buf, 2u);
        }
      }

      flock(v4, 8);
      close(v4);
    }
  }
}

@end