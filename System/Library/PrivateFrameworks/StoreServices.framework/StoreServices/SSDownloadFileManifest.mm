@interface SSDownloadFileManifest
- (SSDownloadFileManifest)initWithManifestType:(int64_t)type;
- (void)_removeItemsWithAssetPaths:(id)paths completionBlock:(id)block;
- (void)dealloc;
- (void)getPathsForFilesWithClass:(int64_t)class completionBlock:(id)block;
- (void)rebuildManifestWithCompletionBlock:(id)block;
- (void)removeItemWithAssetPath:(id)path completionBlock:(id)block;
- (void)removeItemsWithAssetPaths:(id)paths completionBlock:(id)block;
@end

@implementation SSDownloadFileManifest

- (SSDownloadFileManifest)initWithManifestType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = SSDownloadFileManifest;
  v4 = [(SSDownloadFileManifest *)&v6 init];
  if (v4)
  {
    v4->_connection = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v4->_manifestType = type;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadFileManifest;
  [(SSDownloadFileManifest *)&v3 dealloc];
}

- (void)getPathsForFilesWithClass:(int64_t)class completionBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v24 = 136446210;
      v25 = "[SSDownloadFileManifest getPathsForFilesWithClass:completionBlock:]";
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
        free(v13);
        SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, v14);
      }
    }
  }

  v21 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v21, "0", 46);
  xpc_dictionary_set_int64(v21, "1", self->_manifestType);
  xpc_dictionary_set_int64(v21, "2", class);
  connection = self->_connection;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __68__SSDownloadFileManifest_getPathsForFilesWithClass_completionBlock___block_invoke;
  v23[3] = &unk_1E84AC7E0;
  v23[4] = block;
  [(SSXPCConnection *)connection sendMessage:v21 withReply:v23];
  xpc_release(v21);
}

void __68__SSDownloadFileManifest_getPathsForFilesWithClass_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
    {
      v5 = objc_opt_class();
      v6 = SSXPCDictionaryCopyCFObjectWithClass(a2, "0", v5);
      v7 = objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(a2, "1", v7);
      if ([(__CFDate *)v6 length])
      {
        if ([(__CFDate *)v8 count])
        {
          v15 = 0u;
          v16 = 0u;
          v13 = 0u;
          v14 = 0u;
          v9 = [(__CFDate *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v14;
            do
            {
              v12 = 0;
              do
              {
                if (*v14 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                [v4 addObject:{-[__CFDate stringByAppendingPathComponent:](v6, "stringByAppendingPathComponent:", *(*(&v13 + 1) + 8 * v12++))}];
              }

              while (v10 != v12);
              v10 = [(__CFDate *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
            }

            while (v10);
          }
        }
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)rebuildManifestWithCompletionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v22 = 136446210;
      v23 = "[SSDownloadFileManifest rebuildManifestWithCompletionBlock:]";
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
        free(v11);
        SSFileLog(v5, @"%@", v13, v14, v15, v16, v17, v18, v12);
      }
    }
  }

  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v19, "0", 47);
  xpc_dictionary_set_int64(v19, "1", self->_manifestType);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__SSDownloadFileManifest_rebuildManifestWithCompletionBlock___block_invoke;
  v21[3] = &unk_1E84AC7E0;
  v21[4] = block;
  [(SSXPCConnection *)connection sendMessage:v19 withReply:v21];
  xpc_release(v19);
}

uint64_t __61__SSDownloadFileManifest_rebuildManifestWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeItemWithAssetPath:(id)path completionBlock:(id)block
{
  v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{path, 0}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__SSDownloadFileManifest_removeItemWithAssetPath_completionBlock___block_invoke;
  v7[3] = &unk_1E84B0E38;
  v7[4] = block;
  [(SSDownloadFileManifest *)self _removeItemsWithAssetPaths:v6 completionBlock:v7];
}

uint64_t __66__SSDownloadFileManifest_removeItemWithAssetPath_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeItemsWithAssetPaths:(id)paths completionBlock:(id)block
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__SSDownloadFileManifest_removeItemsWithAssetPaths_completionBlock___block_invoke;
  v4[3] = &unk_1E84B0E38;
  v4[4] = block;
  [(SSDownloadFileManifest *)self _removeItemsWithAssetPaths:paths completionBlock:v4];
}

uint64_t __68__SSDownloadFileManifest_removeItemsWithAssetPaths_completionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)_removeItemsWithAssetPaths:(id)paths completionBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = [paths count];
  if (v7)
  {
    if (SSIsInternalBuild(v7, v8) && _os_feature_enabled_impl())
    {
      v9 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = shouldLog | 2;
      }

      else
      {
        v11 = shouldLog;
      }

      oSLogObject = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v13 = v11;
      }

      else
      {
        v13 = v11 & 2;
      }

      if (v13)
      {
        v28 = 136446210;
        v29 = "[SSDownloadFileManifest _removeItemsWithAssetPaths:completionBlock:]";
        if (v14)
        {
          v15 = v14;
          v16 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
          free(v15);
          SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, v16);
        }
      }
    }

    v23 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v23, "0", 44);
    xpc_dictionary_set_int64(v23, "1", self->_manifestType);
    SSXPCDictionarySetCFObject(v23, "2", paths);
    connection = self->_connection;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __69__SSDownloadFileManifest__removeItemsWithAssetPaths_completionBlock___block_invoke;
    v27[3] = &unk_1E84AC7E0;
    v27[4] = block;
    [(SSXPCConnection *)connection sendMessage:v23 withReply:v27];
    xpc_release(v23);
  }

  else
  {
    v25 = MEMORY[0x1E695DF30];
    v26 = *MEMORY[0x1E695D940];

    [v25 raise:v26 format:@"empty assetPaths"];
  }
}

void __69__SSDownloadFileManifest__removeItemsWithAssetPaths_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    if (a2 && (v4 = MEMORY[0x1DA6E0380](a2), v5 = MEMORY[0x1E69E9E80], v4 == MEMORY[0x1E69E9E80]))
    {
      if (xpc_dictionary_get_BOOL(a2, "0"))
      {
        v6 = 0;
        v7 = 0;
      }

      else
      {
        value = xpc_dictionary_get_value(a2, "1");
        if (value && (v9 = value, MEMORY[0x1DA6E0380]() == v5))
        {
          v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:v9];
        }

        else
        {
          v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSErrorDomain" code:100 userInfo:0];
        }

        v13 = v10;
        v11 = objc_opt_class();
        v7 = SSXPCDictionaryCopyCFObjectWithClass(a2, "2", v11);
        v6 = v13;
      }
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSErrorDomain" code:111 userInfo:0];
      v7 = 0;
    }

    v12 = v6;
    (*(*(a1 + 32) + 16))();
  }
}

@end