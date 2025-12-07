@interface SSPersistentCache
+ (id)safeKeyForKey:(id)key;
- (BOOL)_isFileNotFound:(id)found;
- (BOOL)clear;
- (BOOL)removeDataForKey:(id)key;
- (BOOL)setData:(id)data forKey:(id)key;
- (SSPersistentCache)initWithIdentifier:(id)identifier cacheName:(id)name;
- (id)_pathForKey:(id)key;
- (id)dataForKey:(id)key;
- (void)dealloc;
@end

@implementation SSPersistentCache

- (SSPersistentCache)initWithIdentifier:(id)identifier cacheName:(id)name
{
  v40[2] = *MEMORY[0x1E69E9840];
  v6 = [(SSPersistentCache *)self init];
  if (v6)
  {
    if (![identifier length] || !objc_msgSend(name, "length"))
    {
LABEL_16:

      return 0;
    }

    v6->_identifier = [identifier copy];
    v6->_cacheName = [name copy];
    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Caches", identifier, name, 0}];
    v6->_path = [MEMORY[0x1E696AEC0] pathWithComponents:v7];

    v6->_fm = objc_alloc_init(MEMORY[0x1E696AC08]);
    v8 = objc_alloc(MEMORY[0x1E695DEC8]);
    v9 = objc_opt_class();
    v10 = [v8 initWithObjects:{NSStringFromClass(v9), identifier, name, 0}];
    v11 = [v10 componentsJoinedByString:@"."];

    v12 = dispatch_queue_create([v11 UTF8String], 0);
    v6->_serialQueue = v12;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v12, global_queue);
    v14 = *MEMORY[0x1E696A328];
    v39[0] = *MEMORY[0x1E696A360];
    v39[1] = v14;
    v40[0] = @"mobile";
    v40[1] = @"mobile";
    v32 = 0;
    if (!-[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](v6->_fm, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v6->_path, 1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2], &v32))
    {
      v15 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v15)
      {
        v15 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v15 shouldLog];
      if ([v15 shouldLogToDisk])
      {
        LODWORD(v17) = shouldLog | 2;
      }

      else
      {
        LODWORD(v17) = shouldLog;
      }

      oSLogObject = [v15 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v17;
      }

      else
      {
        v17 &= 2u;
      }

      if (v17)
      {
        v19 = objc_opt_class();
        path = v6->_path;
        v33 = 138412802;
        v34 = v19;
        v35 = 2112;
        v36 = path;
        v37 = 2112;
        v38 = v32;
        LODWORD(v31) = 32;
        v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "[%@] -- Error creating directory: %@ -- %@", &v33, v31);
        if (v21)
        {
          v22 = v21;
          v23 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:4];
          free(v22);
          SSFileLog(v15, @"%@", v24, v25, v26, v27, v28, v29, v23);
        }
      }

      goto LABEL_16;
    }
  }

  return v6;
}

- (void)dealloc
{
  serialQueue = self->_serialQueue;
  if (serialQueue)
  {
    dispatch_release(serialQueue);
  }

  v4.receiver = self;
  v4.super_class = SSPersistentCache;
  [(SSPersistentCache *)&v4 dealloc];
}

- (id)_pathForKey:(id)key
{
  path = self->_path;
  if (!self->_safeKeys)
  {
    key = [SSPersistentCache safeKeyForKey:key];
  }

  return [(NSString *)path stringByAppendingPathComponent:key];
}

- (BOOL)_isFileNotFound:(id)found
{
  if ([found code] != 4)
  {
    return 0;
  }

  domain = [found domain];
  v5 = *MEMORY[0x1E696A250];

  return [domain isEqualToString:v5];
}

+ (id)safeKeyForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if (!CC_MD5([key UTF8String], objc_msgSend(key, "length"), md))
  {
    return 0;
  }

  string = [MEMORY[0x1E696AD60] string];
  for (i = 0; i != 16; ++i)
  {
    [string appendFormat:@"%02x", md[i]];
  }

  return string;
}

- (BOOL)setData:(id)data forKey:(id)key
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if ([key length] && objc_msgSend(data, "length"))
  {
    v7 = [(SSPersistentCache *)self _pathForKey:key];
    serialQueue = self->_serialQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__SSPersistentCache_setData_forKey___block_invoke;
    v11[3] = &unk_1E84AC588;
    v11[4] = self;
    v11[5] = data;
    v11[6] = v7;
    v11[7] = &v12;
    dispatch_sync(serialQueue, v11);
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void *__36__SSPersistentCache_setData_forKey___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) length];
    v8 = *(a1 + 48);
    v19 = 138412802;
    v20 = v6;
    v21 = 1024;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v9 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1D48BA000, v5, 0, "[%@] write bytes (%d) to path: %@", &v19, 28);
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
      free(v10);
      SSFileLog(v2, @"%@", v12, v13, v14, v15, v16, v17, v11);
    }
  }

  result = [*(a1 + 40) writeToFile:*(a1 + 48) atomically:1];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)removeDataForKey:(id)key
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([key length])
  {
    v5 = [(SSPersistentCache *)self _pathForKey:key];
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__SSPersistentCache_removeDataForKey___block_invoke;
    block[3] = &unk_1E84ADF80;
    block[5] = v5;
    block[6] = &v10;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void *__38__SSPersistentCache_removeDataForKey___block_invoke(uint64_t a1)
{
  v3 = 0;
  result = [*(*(a1 + 32) + 40) removeItemAtPath:*(a1 + 40) error:&v3];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    result = [*(a1 + 32) _isFileNotFound:v3];
    if (result)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

- (BOOL)clear
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__SSPersistentCache_clear__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__26__SSPersistentCache_clear__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) enumeratorAtPath:*(*(a1 + 32) + 32)];
  result = [v2 nextObject];
  if (result)
  {
    v4 = result;
    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [*(*(a1 + 32) + 32) stringByAppendingPathComponent:v4];
      v22 = 0;
      if (([*(*(a1 + 32) + 40) removeItemAtPath:v6 error:&v22] & 1) == 0)
      {
        v7 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v7)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v8 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          v9 = v8 | 2;
        }

        else
        {
          v9 = v8;
        }

        v10 = [v7 OSLogObject];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v9;
        }

        else
        {
          v11 = v9 & 2;
        }

        if (v11)
        {
          v23 = 138412290;
          v24 = v6;
          LODWORD(v21) = 12;
          v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, v10, 0, "Error clearing cache entry: %@", &v23, v21);
          if (v12)
          {
            v13 = v12;
            v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
            free(v13);
            SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, v14);
          }
        }

        *(*(*(a1 + 40) + 8) + 24) = 0;
      }

      [v2 skipDescendents];
      objc_autoreleasePoolPop(v5);
      result = [v2 nextObject];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (id)dataForKey:(id)key
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__73;
  v14 = __Block_byref_object_dispose__73;
  v15 = 0;
  if ([key length])
  {
    v5 = [(SSPersistentCache *)self _pathForKey:key];
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__SSPersistentCache_dataForKey___block_invoke;
    block[3] = &unk_1E84ADF80;
    block[5] = self;
    block[6] = &v10;
    block[4] = v5;
    dispatch_sync(serialQueue, block);
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __32__SSPersistentCache_dataForKey___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v18 = 0;
  *(*(*(a1 + 48) + 8) + 40) = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:*(a1 + 32) options:1 error:&v18];
  if (v18 && ([*(a1 + 40) _isFileNotFound:?] & 1) == 0)
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = v4 | 2;
    }

    else
    {
      LODWORD(v5) = v4;
    }

    v6 = [v3 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v19 = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      v9 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1D48BA000, v6, 0, "[%@] -- Failed to read: %@", &v19, 22);
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:4];
        free(v10);
        SSFileLog(v3, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

@end