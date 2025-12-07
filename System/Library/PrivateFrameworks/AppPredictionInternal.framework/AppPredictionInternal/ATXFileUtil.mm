@interface ATXFileUtil
+ (BOOL)_shouldUpdateCache:(id)cache withRefreshRate:(double)rate currentTime:(double)time;
+ (BOOL)cachesAreValidForBasePath:(id)path consumerSubTypes:(id)types;
+ (BOOL)cachesAreValidForConsumerSubTypes:(id)types;
+ (BOOL)shouldUpdateCache:(id)cache withRefreshRate:(double)rate;
+ (double)cacheAgeForCache:(id)cache withCurrentTime:(double)time;
+ (double)cacheAgeForConsumerType:(unsigned __int8)type;
+ (double)cacheAgeForConsumerType:(unsigned __int8)type basePath:(id)path;
@end

@implementation ATXFileUtil

+ (BOOL)shouldUpdateCache:(id)cache withRefreshRate:(double)rate
{
  cacheCopy = cache;
  v6 = [ATXFileUtil _shouldUpdateCache:cacheCopy withRefreshRate:rate currentTime:CFAbsoluteTimeGetCurrent()];

  return v6;
}

+ (BOOL)_shouldUpdateCache:(id)cache withRefreshRate:(double)rate currentTime:(double)time
{
  cacheCopy = cache;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager fileExistsAtPath:cacheCopy];

  if ((v10 & 1) == 0)
  {
    v14 = __atxlog_handle_default(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[ATXFileUtil _shouldUpdateCache:withRefreshRate:currentTime:];
    }

    goto LABEL_7;
  }

  v12 = [self cacheAgeForCache:cacheCopy withCurrentTime:time];
  if (v13 > rate)
  {
    v14 = __atxlog_handle_default(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[ATXFileUtil _shouldUpdateCache:withRefreshRate:currentTime:];
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v13 < 0.0)
  {
    v14 = __atxlog_handle_default(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[ATXFileUtil _shouldUpdateCache:withRefreshRate:currentTime:];
    }

    goto LABEL_7;
  }

  v16 = open([cacheCopy UTF8String], 0);
  if ((v16 & 0x80000000) != 0)
  {
    v14 = __atxlog_handle_default(v16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[ATXFileUtil _shouldUpdateCache:withRefreshRate:currentTime:];
    }

    goto LABEL_7;
  }

  v17 = v16;
  ATXCacheFileRead();
  close(v17);
  v18 = __atxlog_handle_default(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    +[ATXFileUtil _shouldUpdateCache:withRefreshRate:currentTime:];
  }

LABEL_8:
  return 1;
}

+ (double)cacheAgeForConsumerType:(unsigned __int8)type
{
  typeCopy = type;
  appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v5 = [appPredictionDirectory stringByAppendingPathComponent:@"caches/ATXCacheFile"];
  [ATXFileUtil cacheAgeForConsumerType:typeCopy basePath:v5];
  v7 = v6;

  return v7;
}

+ (double)cacheAgeForConsumerType:(unsigned __int8)type basePath:(id)path
{
  typeCopy = type;
  v6 = MEMORY[0x277CEB3A0];
  pathCopy = path;
  sharedInstanceWithMobileAssets = [v6 sharedInstanceWithMobileAssets];
  v9 = [sharedInstanceWithMobileAssets getFullCachePathWithBaseCachePath:pathCopy consumerSubType:typeCopy];

  [self cacheAgeForCache:v9 withCurrentTime:CFAbsoluteTimeGetCurrent()];
  v11 = v10;

  return v11;
}

+ (double)cacheAgeForCache:(id)cache withCurrentTime:(double)time
{
  cacheCopy = cache;
  memset(&v10, 0, sizeof(v10));
  v6 = lstat([cacheCopy fileSystemRepresentation], &v10);
  if (v6)
  {
    v7 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ATXFileUtil cacheAgeForCache:cacheCopy withCurrentTime:v7];
    }

    v8 = 1.79769313e308;
  }

  else
  {
    v8 = time - (v10.st_mtimespec.tv_sec + v10.st_mtimespec.tv_nsec * 0.000000001 - *MEMORY[0x277CBECD0]);
  }

  return v8;
}

+ (BOOL)cachesAreValidForConsumerSubTypes:(id)types
{
  v3 = MEMORY[0x277CEBCB0];
  typesCopy = types;
  appPredictionDirectory = [v3 appPredictionDirectory];
  v6 = [appPredictionDirectory stringByAppendingPathComponent:@"caches/ATXCacheFile"];
  v7 = [ATXFileUtil cachesAreValidForBasePath:v6 consumerSubTypes:typesCopy];

  return v7;
}

+ (BOOL)cachesAreValidForBasePath:(id)path consumerSubTypes:(id)types
{
  v35 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  typesCopy = types;
  v7 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = typesCopy;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        mEMORY[0x277CEB3A0] = [MEMORY[0x277CEB3A0] sharedInstanceWithMobileAssets];
        v15 = [mEMORY[0x277CEB3A0] getFullCachePathWithBaseCachePath:pathCopy consumerSubType:{objc_msgSend(v13, "unsignedCharValue")}];

        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    while (2)
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        v22 = +[_ATXGlobals sharedInstance];
        [v22 defaultPredictionRefreshRate];
        LOBYTE(v21) = [ATXFileUtil shouldUpdateCache:v21 withRefreshRate:?];

        if (v21)
        {
          v23 = 0;
          goto LABEL_18;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v23 = 1;
LABEL_18:

  return v23;
}

+ (void)cacheAgeForCache:(uint64_t)a1 withCurrentTime:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  v7 = 138412802;
  v8 = a1;
  v9 = 1024;
  v10 = v4;
  v11 = 2080;
  v12 = v6;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Couldn't lstat %@: [%i] %s", &v7, 0x1Cu);
}

@end