@interface MSDKCacheManager
+ (id)getBundleFilePathFromHash:(id)hash;
+ (id)getDeviceContentPlistCachePath:(id)path;
+ (id)getDeviceFileCachePath:(id)path;
+ (id)getDeviceManifestCachePath:(id)path;
@end

@implementation MSDKCacheManager

+ (id)getDeviceFileCachePath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
    {
      fileHash = [pathCopy fileHash];
      if (fileHash)
      {
        v6 = fileHash;
        hexStringRepresentation = [fileHash hexStringRepresentation];
        lowercaseString = [hexStringRepresentation lowercaseString];

        if (lowercaseString)
        {
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"/var/MSDWorkContainer/.MSD_cache", lowercaseString];

          goto LABEL_10;
        }

        [MSDKCacheManager getDeviceFileCachePath:pathCopy];
      }

      else
      {
        v6 = defaultLogHandle(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          +[MSDKCacheManager getDeviceFileCachePath:];
        }
      }
    }

    else
    {
      v6 = defaultLogHandle(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[MSDKCacheManager getDeviceFileCachePath:];
      }
    }
  }

  else
  {
    v6 = defaultLogHandle(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[MSDKCacheManager getDeviceFileCachePath:];
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

+ (id)getDeviceManifestCachePath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy)
  {
    filePath = [pathCopy filePath];

    if (filePath)
    {
      filePath2 = [v4 filePath];
      lastPathComponent = [filePath2 lastPathComponent];

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"/var/MSDWorkContainer/.MSD_cache_manifest", lastPathComponent];
      goto LABEL_4;
    }

    lastPathComponent = defaultLogHandle(v6);
    if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
    {
      +[MSDKCacheManager getDeviceManifestCachePath:];
    }
  }

  else
  {
    lastPathComponent = defaultLogHandle(0);
    if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
    {
      +[MSDKCacheManager getDeviceManifestCachePath:];
    }
  }

  v9 = 0;
LABEL_4:

  return v9;
}

+ (id)getDeviceContentPlistCachePath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy)
  {
    partNumber = [pathCopy partNumber];

    if (partNumber)
    {
      partNumber = [v4 revision];

      if (partNumber)
      {
        v8 = MEMORY[0x277CCACA8];
        partNumber2 = [v4 partNumber];
        revision = [v4 revision];
        partNumber = [v8 stringWithFormat:@"%@/%@_%d.plist", @"/var/MSDWorkContainer/.MSD_cache_content_plist", partNumber2, objc_msgSend(revision, "intValue")];
      }

      else
      {
        [MSDKCacheManager getDeviceContentPlistCachePath:v7];
      }
    }

    else
    {
      [MSDKCacheManager getDeviceContentPlistCachePath:v6];
    }
  }

  else
  {
    [MSDKCacheManager getDeviceContentPlistCachePath:?];
    partNumber = 0;
  }

  return partNumber;
}

+ (id)getBundleFilePathFromHash:(id)hash
{
  hashCopy = hash;
  v4 = hashCopy;
  if (hashCopy)
  {
    hexStringRepresentation = [hashCopy hexStringRepresentation];
    lowercaseString = [hexStringRepresentation lowercaseString];

    if (lowercaseString)
    {
      if ([lowercaseString length]> 1)
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = [lowercaseString substringToIndex:2];
        v10 = [v8 stringWithFormat:@"%@/%@", v9, lowercaseString];

        goto LABEL_5;
      }

      [MSDKCacheManager getBundleFilePathFromHash:lowercaseString];
    }

    else
    {
      lowercaseString = defaultLogHandle(v7);
      if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_ERROR))
      {
        +[MSDKCacheManager getBundleFilePathFromHash:];
      }
    }
  }

  else
  {
    lowercaseString = defaultLogHandle(0);
    if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_ERROR))
    {
      +[MSDKCacheManager getBundleFilePathFromHash:];
    }
  }

  v10 = 0;
LABEL_5:

  return v10;
}

+ (void)getDeviceFileCachePath:.cold.1()
{
  v0 = objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

+ (void)getDeviceFileCachePath:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

+ (void)getDeviceFileCachePath:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)getDeviceManifestCachePath:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)getDeviceContentPlistCachePath:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

+ (void)getDeviceContentPlistCachePath:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

+ (void)getDeviceContentPlistCachePath:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

+ (void)getBundleFilePathFromHash:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = defaultLogHandle(a1);
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

@end