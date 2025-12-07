@interface ATXClientModelCacheFileHandler
+ (id)readSuggestionsFromCacheFromReadOnlyFileHandle:(id)handle;
+ (id)unarchiveCacheFileFromReadOnlyFileHandle:(id)handle;
- (ATXClientModelCacheFileHandler)initWithCacheFileBasePath:(id)path clientModelId:(id)id;
- (BOOL)createCacheFileForClientModelCacheUpdate:(id)update;
- (BOOL)deleteCachedSuggestionsFile;
- (BOOL)writeSerializedDataToCacheFile:(id)file;
- (id)readOnlyFileHandleForSuggestionsCache;
- (id)readSuggestionsFromCache;
- (id)serializeSuggestionsData:(id)data;
@end

@implementation ATXClientModelCacheFileHandler

- (id)readSuggestionsFromCache
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_blending(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clientModelId = self->_clientModelId;
    v9 = 138412290;
    v10 = clientModelId;
    _os_log_impl(&dword_1DEFC4000, v3, OS_LOG_TYPE_DEFAULT, "Blending: Retrieving suggestions for client model: %@", &v9, 0xCu);
  }

  v5 = objc_opt_class();
  readOnlyFileHandleForSuggestionsCache = [(ATXClientModelCacheFileHandler *)self readOnlyFileHandleForSuggestionsCache];
  v7 = [v5 readSuggestionsFromCacheFromReadOnlyFileHandle:readOnlyFileHandleForSuggestionsCache];

  return v7;
}

- (id)readOnlyFileHandleForSuggestionsCache
{
  v2 = MEMORY[0x1E696AC00];
  cacheFilePath = [(ATXClientModelCacheFileHandler *)self cacheFilePath];
  v4 = [v2 fileHandleForReadingAtPath:cacheFilePath];

  return v4;
}

- (ATXClientModelCacheFileHandler)initWithCacheFileBasePath:(id)path clientModelId:(id)id
{
  pathCopy = path;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = ATXClientModelCacheFileHandler;
  v9 = [(ATXClientModelCacheFileHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cacheFileBasePath, path);
    objc_storeStrong(&v10->_clientModelId, id);
  }

  return v10;
}

- (BOOL)deleteCachedSuggestionsFile
{
  v22 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  cacheFilePath = [(ATXClientModelCacheFileHandler *)self cacheFilePath];
  v17 = 0;
  v5 = [defaultManager removeItemAtPath:cacheFilePath error:&v17];
  v6 = v17;
  v7 = v6;
  if (!v6)
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = __atxlog_handle_blending(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = cacheFilePath;
      v9 = "Blending: Deleted file at path: %@";
      v10 = v8;
      v11 = 12;
LABEL_9:
      _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  userInfo = [v6 userInfo];
  v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  code = [v13 code];

  if (code != 2)
  {
    v8 = __atxlog_handle_blending(v15);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = cacheFilePath;
      v20 = 2112;
      v21 = v7;
      v9 = "Blending: Failed to delete file at path: %@ with error: %@";
      v10 = v8;
      v11 = 22;
      goto LABEL_9;
    }

LABEL_10:
  }

  return v5;
}

- (BOOL)createCacheFileForClientModelCacheUpdate:(id)update
{
  updateCopy = update;
  v5 = objc_autoreleasePoolPush();
  v6 = [(ATXClientModelCacheFileHandler *)self serializeSuggestionsData:updateCopy];
  if (v6)
  {
    v7 = [(ATXClientModelCacheFileHandler *)self writeSerializedDataToCacheFile:v6];
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (id)serializeSuggestionsData:(id)data
{
  dataCopy = data;
  [dataCopy setFeedbackMetadata:0];
  encodeAsProto = [dataCopy encodeAsProto];

  if (encodeAsProto)
  {
    v7 = encodeAsProto;
  }

  else
  {
    v8 = __atxlog_handle_blending(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXClientModelCacheFileHandler *)self serializeSuggestionsData:v8];
    }
  }

  return encodeAsProto;
}

- (BOOL)writeSerializedDataToCacheFile:(id)file
{
  fileCopy = file;
  cacheFilePath = [(ATXClientModelCacheFileHandler *)self cacheFilePath];
  v11 = 0;
  v6 = [fileCopy writeToFile:cacheFilePath options:1073741825 error:&v11];

  v7 = v11;
  if ((v6 & 1) == 0)
  {
    v9 = __atxlog_handle_blending(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXClientModelCacheFileHandler *)self writeSerializedDataToCacheFile:v7, v9];
    }
  }

  return v6;
}

+ (id)unarchiveCacheFileFromReadOnlyFileHandle:(id)handle
{
  v10 = 0;
  v3 = [handle readDataToEndOfFileAndReturnError:&v10];
  v4 = v10;
  v5 = v4;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    code = [v4 code];
    if (code != 260)
    {
      v8 = __atxlog_handle_blending(code);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ATXClientModelCacheFileHandler *)v5 unarchiveCacheFileFromReadOnlyFileHandle:v8];
      }
    }
  }

  return v3;
}

+ (id)readSuggestionsFromCacheFromReadOnlyFileHandle:(id)handle
{
  v15 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (handleCopy)
  {
    v4 = [objc_opt_class() unarchiveCacheFileFromReadOnlyFileHandle:handleCopy];
    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [[ATXClientModelCacheUpdate alloc] initWithProtoData:v4];
      objc_autoreleasePoolPop(v5);
      v8 = __atxlog_handle_blending(v7);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v9)
        {
          suggestions = [(ATXClientModelCacheUpdate *)v6 suggestions];
          v13 = 134217984;
          v14 = [suggestions count];
          _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "Blending: Deserialized to get %lu suggestions.", &v13, 0xCu);
        }

        v6 = v6;
        v11 = v6;
      }

      else
      {
        if (v9)
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "Blending: Unable to deserialize data retrieved from the cache file.", &v13, 2u);
        }

        v11 = 0;
      }
    }

    else
    {
      v6 = __atxlog_handle_blending(0);
      if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1DEFC4000, &v6->super, OS_LOG_TYPE_DEFAULT, "Blending: Unable to unarchive cache file.", &v13, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v4 = __atxlog_handle_blending(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1DEFC4000, v4, OS_LOG_TYPE_DEFAULT, "Blending: Unable to acquire readonly handle to cache file. Not reading suggestions from cache.", &v13, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (void)serializeSuggestionsData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "Blending: <<%@>> Unable to serialize proactive suggestion data.", &v3, 0xCu);
}

- (void)writeSerializedDataToCacheFile:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "Blending: <<%@>> Could not write client model cache update data for client model. Error: %@", &v4, 0x16u);
}

+ (void)unarchiveCacheFileFromReadOnlyFileHandle:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "Blending: Error reading the read only handle: %@", &v2, 0xCu);
}

@end