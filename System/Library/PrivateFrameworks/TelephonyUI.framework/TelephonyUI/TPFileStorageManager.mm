@interface TPFileStorageManager
+ (id)sharedInstance;
- (NSURL)urlForFileSystem;
- (TPFileStorageManager)init;
- (id)imageWithName:(id)name;
- (id)urlsForLegacyFileSystem;
- (void)clearCacheWithCompletion:(id)completion;
- (void)clearLegacyStorageIfNecessary;
- (void)dealloc;
- (void)deleteStorageAtURLs:(id)ls;
- (void)saveImage:(id)image withName:(id)name;
@end

@implementation TPFileStorageManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__TPFileStorageManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

- (TPFileStorageManager)init
{
  v7.receiver = self;
  v7.super_class = TPFileStorageManager;
  v2 = [(TPFileStorageManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TelephonyUI.TPFileStorageManager", MEMORY[0x1E69E96A8]);
    queue = v2->_queue;
    v2->_queue = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_localeChanged name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v2;
}

uint64_t __38__TPFileStorageManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (NSURL)urlForFileSystem
{
  urlForFileSystem = self->_urlForFileSystem;
  if (!urlForFileSystem)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v12 = 0;
    v5 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v12];
    v6 = v12;

    if (v5)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%d", @"TelephonyUI", 10];
      v9 = [v5 URLByAppendingPathComponent:v8];
      v10 = self->_urlForFileSystem;
      self->_urlForFileSystem = v9;
    }

    else
    {
      v8 = TPDefaultLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [TPFileStorageManager urlForFileSystem];
      }
    }

    urlForFileSystem = self->_urlForFileSystem;
  }

  return urlForFileSystem;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TPFileStorageManager;
  [(TPFileStorageManager *)&v4 dealloc];
}

- (void)saveImage:(id)image withName:(id)name
{
  imageCopy = image;
  nameCopy = name;
  queue = [(TPFileStorageManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__TPFileStorageManager_saveImage_withName___block_invoke;
  block[3] = &unk_1E7C0C580;
  block[4] = self;
  v12 = nameCopy;
  v13 = imageCopy;
  v9 = imageCopy;
  v10 = nameCopy;
  dispatch_async(queue, block);
}

void __43__TPFileStorageManager_saveImage_withName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) urlForFileSystem];
  if (v2)
  {
    v19 = 0;
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [v2 path];
    v5 = [v3 fileExistsAtPath:v4 isDirectory:&v19];

    if (!v5 || (v19 & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AC08] defaultManager];
      v18 = 0;
      v7 = [v6 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v18];
      v8 = v18;

      if ((v7 & 1) == 0)
      {
        v10 = TPDefaultLog(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __43__TPFileStorageManager_saveImage_withName___block_invoke_cold_1();
        }
      }
    }

    v11 = [v2 URLByAppendingPathComponent:*(a1 + 40)];
    v12 = UIImagePNGRepresentation(*(a1 + 48));
    v17 = 0;
    v13 = [v12 writeToURL:v11 options:268435457 error:&v17];
    v14 = v17;

    if ((v13 & 1) == 0)
    {
      v16 = TPDefaultLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __43__TPFileStorageManager_saveImage_withName___block_invoke_cold_2();
      }
    }
  }
}

- (id)imageWithName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  queue = [(TPFileStorageManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__TPFileStorageManager_imageWithName___block_invoke;
  block[3] = &unk_1E7C0C478;
  block[4] = self;
  v6 = nameCopy;
  v11 = v6;
  v12 = &v13;
  dispatch_sync(queue, block);

  v7 = v14[5];
  if (!v7)
  {
    [(TPFileStorageManager *)self clearLegacyStorageIfNecessary];
    v7 = v14[5];
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __38__TPFileStorageManager_imageWithName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) urlForFileSystem];
  v3 = [v2 URLByAppendingPathComponent:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 fileSystemRepresentation];
    if (!v5)
    {
      v10 = TPDefaultLog(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __38__TPFileStorageManager_imageWithName___block_invoke_cold_3();
      }

      goto LABEL_13;
    }

    v6 = open(v5, 0, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      memset(&v25, 0, sizeof(v25));
      v8 = fstat(v6, &v25);
      if (v8)
      {
        v9 = TPDefaultLog(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __38__TPFileStorageManager_imageWithName___block_invoke_cold_1(v7, v9);
        }

LABEL_7:

LABEL_8:
        v10 = 0;
        goto LABEL_9;
      }

      if (v25.st_size)
      {
        v19 = mmap(0, v25.st_size, 1, 1025, v7, 0);
        if (v19 == -1)
        {
          v9 = TPDefaultLog(-1);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            __38__TPFileStorageManager_imageWithName___block_invoke_cold_2(v7, v9);
          }

          goto LABEL_7;
        }

        v20 = v19;
        context.version = 0;
        memset(&context.retain, 0, 40);
        context.info = v25.st_size;
        context.deallocate = _mmapDeallocatorCallback;
        context.preferredSize = 0;
        v21 = CFAllocatorCreate(0, &context);
        if (!v21)
        {
          goto LABEL_8;
        }

        v22 = v21;
        v10 = CFDataCreateWithBytesNoCopy(0, v20, v25.st_size, v21);
        if (!v10)
        {
          munmap(v20, v25.st_size);
        }

        CFRelease(v22);
      }

      else
      {
        v23 = TPDefaultLog(v8);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(context.version) = 0;
          _os_log_impl(&dword_1B4894000, v23, OS_LOG_TYPE_DEFAULT, "Memory mapping a zero byte file", &context, 2u);
        }

        v10 = CFDataCreate(0, 0, 0);
      }

LABEL_9:
      close(v7);
      if (v10)
      {
        v11 = [MEMORY[0x1E69DCAB8] imageWithData:v10];
        v12 = MEMORY[0x1E69DCAB8];
        v13 = [v11 CGImage];
        v14 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v14 scale];
        v16 = [v12 imageWithCGImage:v13 scale:objc_msgSend(v11 orientation:{"imageOrientation"), v15}];
        v17 = *(*(a1 + 48) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

LABEL_13:
      }
    }
  }
}

- (void)clearCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(TPFileStorageManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__TPFileStorageManager_clearCacheWithCompletion___block_invoke;
  v7[3] = &unk_1E7C0C048;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_barrier_async(queue, v7);
}

void __49__TPFileStorageManager_clearCacheWithCompletion___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = a1;
  v3 = [*(a1 + 32) urlForFileSystem];
  v20 = 0;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:&v20];
  v5 = v20;

  v6 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      v10 = v5;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v21 + 1) + 8 * v9);
        v12 = [MEMORY[0x1E696AC08] defaultManager];
        v19 = v10;
        v13 = [v12 removeItemAtURL:v11 error:&v19];
        v5 = v19;

        if (v13)
        {
          v15 = v5 == 0;
        }

        else
        {
          v15 = 0;
        }

        if (!v15)
        {
          v16 = TPDefaultLog(v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v26 = v11;
            v27 = 2112;
            v28 = v5;
            _os_log_error_impl(&dword_1B4894000, v16, OS_LOG_TYPE_ERROR, "Error deleting file %@ %@", buf, 0x16u);
          }
        }

        ++v9;
        v10 = v5;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }

  v17 = *(v18 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v5 == 0, v5);
  }
}

- (id)urlsForLegacyFileSystem
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v29 = 0;
  v4 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v29];
  v5 = v29;

  if (v4)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v28 = v5;
    v8 = [defaultManager2 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:&v28];
    v9 = v28;

    if (v8)
    {
      v22 = v9;
      v23 = v4;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = v8;
      v11 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v8);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            pathComponents = [v15 pathComponents];
            lastObject = [pathComponents lastObject];
            v18 = [lastObject hasPrefix:@"TelephonyUI"];

            if (v18)
            {
              [v2 addObject:v15];
            }
          }

          v12 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v12);
      }

      v9 = v22;
      v4 = v23;
    }

    else
    {
      v19 = TPDefaultLog(v10);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [TPFileStorageManager urlsForLegacyFileSystem];
      }
    }
  }

  else
  {
    v8 = TPDefaultLog(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [TPFileStorageManager urlsForLegacyFileSystem];
    }

    v9 = v5;
  }

  v20 = [v2 copy];

  return v20;
}

- (void)clearLegacyStorageIfNecessary
{
  hasClearedLegacyStorage = [(TPFileStorageManager *)self hasClearedLegacyStorage];
  if ((hasClearedLegacyStorage & 1) == 0)
  {
    v4 = TPDefaultLog(hasClearedLegacyStorage);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B4894000, v4, OS_LOG_TYPE_DEFAULT, "clear legacy storage", v6, 2u);
    }

    urlsForLegacyFileSystem = [(TPFileStorageManager *)self urlsForLegacyFileSystem];
    [(TPFileStorageManager *)self deleteStorageAtURLs:urlsForLegacyFileSystem];

    [(TPFileStorageManager *)self setHasClearedLegacyStorage:1];
  }
}

- (void)deleteStorageAtURLs:(id)ls
{
  lsCopy = ls;
  queue = [(TPFileStorageManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__TPFileStorageManager_deleteStorageAtURLs___block_invoke;
  block[3] = &unk_1E7C0C368;
  v8 = lsCopy;
  v6 = lsCopy;
  dispatch_async(queue, block);
}

void __44__TPFileStorageManager_deleteStorageAtURLs___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v21;
    *&v3 = 138412546;
    v18 = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E696AC08] defaultManager];
        v9 = [v7 path];
        v10 = [v8 fileExistsAtPath:v9];

        if (v10)
        {
          v12 = TPDefaultLog(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v7;
            _os_log_impl(&dword_1B4894000, v12, OS_LOG_TYPE_DEFAULT, "deleting legacy storage at URL: %@", buf, 0xCu);
          }

          v13 = [MEMORY[0x1E696AC08] defaultManager];
          v19 = 0;
          v14 = [v13 removeItemAtURL:v7 error:&v19];
          v15 = v19;

          if ((v14 & 1) == 0)
          {
            v17 = TPDefaultLog(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = v18;
              v25 = v7;
              v26 = 2112;
              v27 = v15;
              _os_log_error_impl(&dword_1B4894000, v17, OS_LOG_TYPE_ERROR, "Error deleting storage at %@ %@", buf, 0x16u);
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v1 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v4);
  }
}

void __38__TPFileStorageManager_imageWithName___block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B4894000, a2, OS_LOG_TYPE_ERROR, "fstat failed %d", v2, 8u);
}

void __38__TPFileStorageManager_imageWithName___block_invoke_cold_2(int a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = __error();
  v5 = strerror(*v4);
  v6[0] = 67109378;
  v6[1] = a1;
  v7 = 2080;
  v8 = v5;
  _os_log_error_impl(&dword_1B4894000, a2, OS_LOG_TYPE_ERROR, "Could not mmap %d: %s", v6, 0x12u);
}

@end