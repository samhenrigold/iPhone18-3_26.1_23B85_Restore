@interface SSCacheObjectStore
- (BOOL)addObject:(id)object withItemIdentifier:(id)identifier;
- (BOOL)removeObjectWithItemIdentifier:(id)identifier;
- (SSCacheObjectStore)initWithSessionIdentifier:(id)identifier;
- (id)_factoryForTypeIdentifier:(id)identifier;
- (id)cacheObjectWithItemIdentifier:(id)identifier;
- (id)description;
- (void)addCacheObjectFactory:(id)factory;
- (void)clearSession;
- (void)dealloc;
- (void)removeCacheObjectFactory:(id)factory;
@end

@implementation SSCacheObjectStore

- (SSCacheObjectStore)initWithSessionIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  if ([identifier length])
  {
    v5 = [(SSCacheObjectStore *)self init];
    if (v5)
    {
      v5->_sessionIdentifier = identifier;
      v5->_factories = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:5];
      v6 = [SSDatabaseCache alloc];
      v7 = objc_opt_class();
      v8 = [(SSDatabaseCache *)v6 initWithIdentifier:NSStringFromClass(v7) cacheName:identifier];
      v5->_databaseCache = v8;
      [(SSDatabaseCache *)v8 setMaximumInlineBlobSize:1024];
      v9 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", objc_opt_class(), identifier), "UTF8String"];
      v5->_serialQueue = dispatch_queue_create(v9, 0);
    }
  }

  else
  {
    v10 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v24 = 138412290;
      v25 = objc_opt_class();
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "**** No identifier passed to initialization routine [%@]", &v24, 12);
      if (v14)
      {
        v15 = v14;
        v16 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
        free(v15);
        SSFileLog(v10, @"%@", v17, v18, v19, v20, v21, v22, v16);
      }
    }

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  dispatch_release(self->_serialQueue);
  v3.receiver = self;
  v3.super_class = SSCacheObjectStore;
  [(SSCacheObjectStore *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = SSCacheObjectStore;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: [Session Identifier: %@] [Factories: %d]", -[SSCacheObjectStore description](&v3, sel_description), self->_sessionIdentifier, -[NSMutableSet count](self->_factories, "count")];
}

- (id)_factoryForTypeIdentifier:(id)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  if ([identifier length])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    factories = self->_factories;
    v6 = [(NSMutableSet *)factories countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(factories);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        if ([v10 supportsTypeIdentifier:identifier])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableSet *)factories countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }

      v11 = v10;
      if (v11)
      {
        return v11;
      }
    }
  }

LABEL_12:
  v12 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = shouldLog | 2;
  }

  else
  {
    v14 = shouldLog;
  }

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v14;
  }

  else
  {
    v16 = v14 & 2;
  }

  if (!v16)
  {
    goto LABEL_23;
  }

  v30 = 138412290;
  identifierCopy = identifier;
  v11 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "**** No SSCacheObjectFactory for typeIdentifier [%@]", &v30, 12);
  if (v11)
  {
    v17 = v11;
    v18 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
    free(v17);
    SSFileLog(v12, @"%@", v19, v20, v21, v22, v23, v24, v18);
LABEL_23:
    v11 = 0;
  }

  return v11;
}

- (void)clearSession
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSCacheObjectStore_clearSession__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __34__SSCacheObjectStore_clearSession__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 2;
  }

  if (v6)
  {
    v7 = *(*(a1 + 32) + 24);
    v18 = 138412290;
    v19 = v7;
    v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, v5, 0, "**** Clearing SSCacheObjectStore [%@]", &v18, 12);
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
      free(v9);
      SSFileLog(v2, @"%@", v11, v12, v13, v14, v15, v16, v10);
    }
  }

  return [*(*(a1 + 32) + 8) clear];
}

- (BOOL)addObject:(id)object withItemIdentifier:(id)identifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SSCacheObjectStore_addObject_withItemIdentifier___block_invoke;
  v7[3] = &unk_1E84B34C0;
  v7[4] = object;
  v7[5] = self;
  v7[6] = identifier;
  v7[7] = &v8;
  dispatch_sync(serialQueue, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __51__SSCacheObjectStore_addObject_withItemIdentifier___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cacheObjectDataRepresentation];
  if ([v2 length])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v3 = [*(a1 + 32) cacheObjectTypeIdentifier];
    [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 40) + 8);

    [v6 setData:v2 expiring:v5 retiring:v3 lookupKey:v4 userInfo:v4];
  }

  else
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 48);
      v22 = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, v10, 1, "[%@] No data representation when adding object to cache with item identifier %@", &v22, 22);
      if (v13)
      {
        v14 = v13;
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:4];
        free(v14);
        SSFileLog(v7, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }
  }
}

- (BOOL)removeObjectWithItemIdentifier:(id)identifier
{
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SSCacheObjectStore_removeObjectWithItemIdentifier___block_invoke;
  v5[3] = &unk_1E84AC458;
  v5[4] = identifier;
  v5[5] = self;
  dispatch_sync(serialQueue, v5);
  return 0;
}

void __53__SSCacheObjectStore_removeObjectWithItemIdentifier___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) length])
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 40) + 8);

    [v3 clearCacheForLookupKey:v2];
  }

  else
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = v5 | 2;
    }

    else
    {
      LODWORD(v6) = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v17 = 138412290;
      v18 = objc_opt_class();
      v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, v7, 2, "[%@] No item identifier", &v17, 12);
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
        free(v9);
        SSFileLog(v4, @"%@", v11, v12, v13, v14, v15, v16, v10);
      }
    }
  }
}

- (id)cacheObjectWithItemIdentifier:(id)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__75;
  v11 = __Block_byref_object_dispose__75;
  v12 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SSCacheObjectStore_cacheObjectWithItemIdentifier___block_invoke;
  block[3] = &unk_1E84AC7B0;
  block[4] = identifier;
  block[5] = self;
  block[6] = &v7;
  dispatch_sync(serialQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __52__SSCacheObjectStore_cacheObjectWithItemIdentifier___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) length])
  {
    v2 = [*(*(a1 + 40) + 8) cacheEntryForLookupKey:*(a1 + 32)];
    v3 = [v2 dataBlob:0];
    if ([v3 length])
    {
      v28[0] = 0;
      v27 = SSDatabaseCacheEntryUserInfo;
      [v2 getValues:v28 forProperties:&v27 count:1];
      if (v28[0])
      {
        *(*(*(a1 + 48) + 8) + 40) = [objc_msgSend(*(a1 + 40) _factoryForTypeIdentifier:{v28[0]), "cachedObjectWithDataRepresentation:typeIdentifier:", v3, v28[0]}];
        return;
      }

      v4 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v4)
      {
        v4 = +[SSLogConfig sharedConfig];
      }

      v15 = [v4 shouldLog];
      if ([v4 shouldLogToDisk])
      {
        LODWORD(v10) = v15 | 2;
      }

      else
      {
        LODWORD(v10) = v15;
      }

      v11 = [v4 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v10 = v10;
      }

      else
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v16 = objc_opt_class();
        v17 = *(a1 + 32);
        *v26 = 138412546;
        *&v26[4] = v16;
        *&v26[12] = 2112;
        *&v26[14] = v17;
        v14 = "[%@] No type identifier for item identifier %@";
        goto LABEL_35;
      }
    }

    else
    {
      v4 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v4)
      {
        v4 = +[SSLogConfig sharedConfig];
      }

      v9 = [v4 shouldLog];
      if ([v4 shouldLogToDisk])
      {
        LODWORD(v10) = v9 | 2;
      }

      else
      {
        LODWORD(v10) = v9;
      }

      v11 = [v4 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v10 = v10;
      }

      else
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v12 = objc_opt_class();
        v13 = *(a1 + 32);
        *v26 = 138412546;
        *&v26[4] = v12;
        *&v26[12] = 2112;
        *&v26[14] = v13;
        v14 = "[%@] No data representation for item identifier %@";
LABEL_35:
        v8 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, v11, 1, v14, v26, 22, *v26, *&v26[8]);
LABEL_36:
        if (v8)
        {
          v18 = v8;
          v19 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
          free(v18);
          SSFileLog(v4, @"%@", v20, v21, v22, v23, v24, v25, v19);
        }
      }
    }
  }

  else
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = v5 | 2;
    }

    else
    {
      LODWORD(v6) = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      *v26 = 138412290;
      *&v26[4] = objc_opt_class();
      v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_1D48BA000, v7, 2, "[%@] No item identifier", v26, 12, *v26, *&v26[8]);
      goto LABEL_36;
    }
  }
}

- (void)addCacheObjectFactory:(id)factory
{
  if (factory)
  {
    serialQueue = self->_serialQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __44__SSCacheObjectStore_addCacheObjectFactory___block_invoke;
    v4[3] = &unk_1E84AC458;
    v4[4] = self;
    v4[5] = factory;
    dispatch_sync(serialQueue, v4);
  }
}

- (void)removeCacheObjectFactory:(id)factory
{
  if (factory)
  {
    serialQueue = self->_serialQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __47__SSCacheObjectStore_removeCacheObjectFactory___block_invoke;
    v4[3] = &unk_1E84AC458;
    v4[4] = self;
    v4[5] = factory;
    dispatch_sync(serialQueue, v4);
  }
}

@end