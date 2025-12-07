@interface ATXUICacheManager
- (ATXUICacheManager)init;
- (ATXUICacheManager)initWithCacheBasePath:(id)path;
- (BOOL)deleteCacheFileForConsumerSubType:(unsigned __int8)type;
- (BOOL)updateCachedLayout:(id)layout consumerSubType:(unsigned __int8)type;
- (BOOL)writeSerializedDataToCacheFile:(id)file path:(id)path;
- (double)cacheAgeForConsumerSubTypeString:(id)string;
- (id)cacheFilePathForConsumerSubType:(unsigned __int8)type;
- (id)cachedLayoutForConsumerSubType:(unsigned __int8)type expectedClass:(Class)class;
- (id)consumerSubTypeStringsWithNonEmptyCachedLayout;
- (id)dataFromFileHandle:(id)handle;
- (id)serializeLayout:(id)layout;
@end

@implementation ATXUICacheManager

- (ATXUICacheManager)init
{
  uiCachesRootDirectory = [MEMORY[0x1E698B010] uiCachesRootDirectory];
  v4 = [(ATXUICacheManager *)self initWithCacheBasePath:uiCachesRootDirectory];

  return v4;
}

- (ATXUICacheManager)initWithCacheBasePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = ATXUICacheManager;
  v5 = [(ATXUICacheManager *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    cacheBasePath = v5->_cacheBasePath;
    v5->_cacheBasePath = v6;
  }

  return v5;
}

- (id)consumerSubTypeStringsWithNonEmptyCachedLayout
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager contentsOfDirectoryAtPath:self->_cacheBasePath error:0];

  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v15 = 0;
          [MEMORY[0x1E698B028] consumerSubtypeForString:v11 found:&v15];
          if (v15 == 1)
          {
            [v3 addObject:v11];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v13 = v3;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

- (double)cacheAgeForConsumerSubTypeString:(id)string
{
  v3 = [(ATXUICacheManager *)self cacheFilePathForConsumerSubTypeString:string];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager attributesOfItemAtPath:v3 error:0];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696A350]];
  [v6 timeIntervalSinceNow];
  v8 = -v7;

  return v8;
}

- (id)cachedLayoutForConsumerSubType:(unsigned __int8)type expectedClass:(Class)class
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = [(ATXUICacheManager *)self cacheFilePathForConsumerSubType:type];
  v7 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:v6];
  v8 = [(ATXUICacheManager *)self dataFromFileHandle:v7];

  if (v8)
  {
    v9 = [[class alloc] initWithProtoData:v8];
    v10 = v9;
    if (v9 && (v9 = [v9 conformsToProtocol:&unk_1F5A42538], v9) && (v9 = objc_msgSend(v10, "conformsToProtocol:", &unk_1F5A429A8), v9) && (v9 = objc_msgSend(v10, "conformsToProtocol:", &unk_1F5A43598), (v9 & 1) != 0))
    {
      v11 = v10;
    }

    else
    {
      v12 = __atxlog_handle_blending(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_1DEFC4000, v12, OS_LOG_TYPE_DEFAULT, "Blending: Unable to deserialize data retrieved from cache file with path %@", &v14, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)updateCachedLayout:(id)layout consumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  v18 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  v7 = [MEMORY[0x1E698B028] stringForConsumerSubtype:typeCopy];
  v8 = __atxlog_handle_blending(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v7;
    _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "Blending: Trying to update cached layout for consumer %@", &v16, 0xCu);
  }

  if (layoutCopy)
  {
    v9 = [(ATXUICacheManager *)self serializeLayout:layoutCopy];
    if (v9)
    {
      v10 = [(ATXUICacheManager *)self cacheFilePathForConsumerSubType:typeCopy];
      v11 = [(ATXUICacheManager *)self writeSerializedDataToCacheFile:v9 path:v10];

      if (v11)
      {
        v13 = 1;
LABEL_13:

        goto LABEL_14;
      }

      v14 = __atxlog_handle_blending(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ATXUICacheManager updateCachedLayout:consumerSubType:];
      }
    }

    else
    {
      v14 = __atxlog_handle_blending(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ATXUICacheManager updateCachedLayout:consumerSubType:];
      }
    }

    v13 = 0;
    goto LABEL_13;
  }

  v13 = [(ATXUICacheManager *)self deleteCacheFileForConsumerSubType:typeCopy];
LABEL_14:

  return v13;
}

- (id)cacheFilePathForConsumerSubType:(unsigned __int8)type
{
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:type];
  v5 = [(ATXUICacheManager *)self cacheFilePathForConsumerSubTypeString:v4];

  return v5;
}

- (BOOL)deleteCacheFileForConsumerSubType:(unsigned __int8)type
{
  typeCopy = type;
  v23 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v6 = [(ATXUICacheManager *)self cacheFilePathForConsumerSubType:typeCopy];
  v18 = 0;
  v7 = [v5 removeItemAtPath:v6 error:&v18];
  v8 = v18;
  v9 = v8;
  if (!v8)
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = __atxlog_handle_blending(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E698B028] stringForConsumerSubtype:typeCopy];
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "Blending: Deleted file at path: %@ for UI consumer: %@", buf, 0x16u);
    }

    notify_post([@"kATXUICacheManagerDidUpdateDarwinNotification" UTF8String]);
  }

  else
  {
    userInfo = [v8 userInfo];
    v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    code = [v13 code];

    if (code != 2)
    {
      v16 = __atxlog_handle_blending(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = v6;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_1DEFC4000, v16, OS_LOG_TYPE_DEFAULT, "Blending: Failed to delete file at path: %@ with error: %@", buf, 0x16u);
      }
    }
  }

  return v7;
}

- (BOOL)writeSerializedDataToCacheFile:(id)file path:(id)path
{
  v10 = 0;
  v4 = [file writeToFile:path options:1073741825 error:&v10];
  v5 = v10;
  v6 = __atxlog_handle_blending(v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "Blending: Finished writing layout data.", v9, 2u);
    }

    notify_post([@"kATXUICacheManagerDidUpdateDarwinNotification" UTF8String]);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [ATXUICacheManager writeSerializedDataToCacheFile:path:];
    }
  }

  return v4;
}

- (id)dataFromFileHandle:(id)handle
{
  handleCopy = handle;
  v4 = __atxlog_handle_blending(handleCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEFC4000, v4, OS_LOG_TYPE_DEFAULT, "Blending: Reading cache file to retrieve UI layout", buf, 2u);
  }

  if (handleCopy)
  {
    v12 = 0;
    v6 = [handleCopy readDataToEndOfFileAndReturnError:&v12];
    v7 = v12;
    v8 = v7;
    if (!v6 || v7)
    {
      v10 = __atxlog_handle_blending(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ATXUICacheManager dataFromFileHandle:];
      }

      v9 = 0;
    }

    else
    {
      v9 = v6;
    }
  }

  else
  {
    v8 = __atxlog_handle_blending(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "Blending: Not reading UI layout from cache because fileHandle is nil. The file could have been deleted if there are no valid layouts for the consumer.", v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)serializeLayout:(id)layout
{
  encodeAsProto = [layout encodeAsProto];
  v4 = encodeAsProto;
  if (encodeAsProto)
  {
    v5 = encodeAsProto;
  }

  else
  {
    v6 = __atxlog_handle_blending(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXUICacheManager serializeLayout:v6];
    }
  }

  return v4;
}

- (void)updateCachedLayout:consumerSubType:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_ERROR, "Blending: Failed to write suggestion to cache file for consumer %@", v1, 0xCu);
}

- (void)updateCachedLayout:consumerSubType:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_ERROR, "Blending: Failed to serialize suggestion for consumer %@", v1, 0xCu);
}

- (void)writeSerializedDataToCacheFile:path:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_FAULT, "Blending: Could not write layout data. Error: %@", v1, 0xCu);
}

- (void)dataFromFileHandle:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1DEFC4000, v1, OS_LOG_TYPE_ERROR, "Blending: Unable to read data from file handle %@ - %@", v2, 0x16u);
}

@end