@interface EFFileCompression
+ (BOOL)_compressFile:(const char *)file error:(id *)error;
+ (BOOL)_doCompressFile:(const char *)file errorCode:(int64_t *)code;
+ (BOOL)compressDirectory:(id)directory shouldCancel:(id)cancel error:(id *)error;
+ (BOOL)compressFile:(id)file error:(id *)error;
+ (CompressionQueueContext_s)_compressionQueueContext;
+ (OS_os_log)log;
+ (id)_compressionLock;
@end

@implementation EFFileCompression

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__EFFileCompression_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_2 != -1)
  {
    dispatch_once(&log_onceToken_2, block);
  }

  v2 = log_log_2;

  return v2;
}

void __24__EFFileCompression_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_2;
  log_log_2 = v1;
}

+ (BOOL)compressFile:(id)file error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  fileSystemRepresentation = [fileCopy fileSystemRepresentation];
  v8 = fileSystemRepresentation;
  v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v19.st_blksize = v9;
  *v19.st_qspare = v9;
  v19.st_birthtimespec = v9;
  *&v19.st_size = v9;
  v19.st_mtimespec = v9;
  v19.st_ctimespec = v9;
  *&v19.st_uid = v9;
  v19.st_atimespec = v9;
  *&v19.st_dev = v9;
  if (!fileSystemRepresentation)
  {
    goto LABEL_9;
  }

  if (stat(fileSystemRepresentation, &v19))
  {
    v10 = *__error();
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_10:
    v13 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A998];
    v21[0] = fileCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v12 = [v13 errorWithDomain:*MEMORY[0x1E696A798] code:v10 userInfo:v14];

    v15 = +[EFFileCompression log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [v12 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      +[EFFileCompression compressFile:error:];
    }

    v11 = 0;
    if (error)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if ((v19.st_mode & 0xF000) != 0x8000)
  {
LABEL_9:
    v10 = 22;
    goto LABEL_10;
  }

  if ((v19.st_flags & 0x20) == 0)
  {
    v18 = 0;
    v11 = [self _compressFile:v8 error:&v18];
    v12 = v18;
    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_14:
  v12 = 0;
  v11 = 1;
  if (error)
  {
LABEL_15:
    v16 = v12;
    *error = v12;
  }

LABEL_16:

  return v11;
}

+ (BOOL)compressDirectory:(id)directory shouldCancel:(id)cancel error:(id *)error
{
  v47[2] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  cancelCopy = cancel;
  if ([directoryCopy fileSystemRepresentation])
  {
    v32 = strdup([directoryCopy fileSystemRepresentation]);
    v47[0] = v32;
    v47[1] = 0;
    v8 = fts_open(v47, 80, 0);
    v9 = 0;
    v10 = 0;
    v33 = *MEMORY[0x1E696A798];
    v34 = *MEMORY[0x1E696A998];
    v36 = 1;
    while (1)
    {
      v11 = fts_read(v8);
      if (!v11)
      {
LABEL_20:
        if (fts_close(v8) == -1)
        {
          v25 = MEMORY[0x1E696ABC0];
          v26 = *__error();
          v43 = v34;
          v44 = directoryCopy;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          v21 = [v25 errorWithDomain:v33 code:v26 userInfo:v27];

          v28 = +[EFFileCompression log];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            ef_publicDescription = [v21 ef_publicDescription];
            [(EFFileCompression *)ef_publicDescription compressDirectory:buf shouldCancel:directoryCopy error:v28];
          }
        }

        else
        {
          v21 = v10;
        }

        free(v32);
        goto LABEL_29;
      }

      v12 = objc_autoreleasePoolPush();
      fts_statp = v11->fts_statp;
      if ((fts_statp->st_mode & 0xF000) == 0x8000 && (fts_statp->st_flags & 0x20) == 0)
      {
        fts_accpath = v11->fts_accpath;
        v38 = v10;
        v15 = [self _compressFile:fts_accpath error:&v38];
        v16 = v38;

        if ((v15 & 1) == 0)
        {
          v20 = 0;
          v36 = 0;
LABEL_18:
          v10 = v16;
          goto LABEL_19;
        }

        v10 = v16;
      }

      if (!cancelCopy)
      {
        goto LABEL_16;
      }

      if (v9 >= 9)
      {
        break;
      }

      v20 = 1;
      ++v9;
LABEL_19:
      objc_autoreleasePoolPop(v12);
      if ((v20 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (cancelCopy[2](cancelCopy))
    {
      v17 = +[EFFileCompression log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = directoryCopy;
        _os_log_impl(&dword_1C6152000, v17, OS_LOG_TYPE_DEFAULT, "Canceling compression of directory %@", buf, 0xCu);
      }

      v18 = MEMORY[0x1E696ABC0];
      v45 = v34;
      v46 = directoryCopy;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v16 = [v18 errorWithDomain:v33 code:4 userInfo:v19];

      v20 = 0;
      ++v9;
      goto LABEL_18;
    }

    v9 = 0;
LABEL_16:
    v20 = 1;
    goto LABEL_19;
  }

  v22 = MEMORY[0x1E696ABC0];
  v39 = *MEMORY[0x1E696A998];
  v40 = directoryCopy;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v21 = [v22 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v23];

  v24 = +[EFFileCompression log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [v21 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    +[EFFileCompression compressDirectory:shouldCancel:error:];
  }

  v36 = 1;
LABEL_29:
  if (error)
  {
    v30 = v21;
    *error = v21;
  }

  return v36 & 1;
}

+ (BOOL)_compressFile:(const char *)file error:(id *)error
{
  v48[4] = *MEMORY[0x1E69E9840];
  v42 = 0;
  v7 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:file isDirectory:0 relativeToURL:0];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v41 = 0;
  v9 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:v7 create:1 error:&v41];
  v10 = v41;

  if (v9)
  {
    lastPathComponent = [v7 lastPathComponent];
    v12 = [v9 URLByAppendingPathComponent:lastPathComponent];

    v13 = v12;
    if (copyfile(file, [v12 fileSystemRepresentation], 0, 0x10E000Fu))
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = *__error();
      v47 = *MEMORY[0x1E696A998];
      v48[0] = v7;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      v17 = [v14 errorWithDomain:*MEMORY[0x1E696A798] code:v15 userInfo:v16];

      v18 = +[EFFileCompression log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [v17 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        +[EFFileCompression _compressFile:error:];
      }

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager2 removeItemAtURL:v9 error:0];

      if (error)
      {
LABEL_21:
        v38 = v17;
        v22 = 0;
        *error = v17;
LABEL_23:

        v10 = v17;
        goto LABEL_24;
      }
    }

    else
    {
      v23 = v12;
      if ([self _doCompressFile:objc_msgSend(v12 errorCode:{"fileSystemRepresentation"), &v42}])
      {
        v24 = v12;
        fileSystemRepresentation = [v12 fileSystemRepresentation];
        rename(fileSystemRepresentation, file, v26);
        if (!v27)
        {
          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          [defaultManager3 removeItemAtURL:v9 error:0];

          v22 = 1;
          v17 = v10;
          goto LABEL_23;
        }

        v28 = MEMORY[0x1E696ABC0];
        v29 = *__error();
        v43 = *MEMORY[0x1E696A998];
        v44 = v7;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v17 = [v28 errorWithDomain:*MEMORY[0x1E696A798] code:v29 userInfo:v30];

        v31 = +[EFFileCompression log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [v17 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          +[EFFileCompression _compressFile:error:];
        }

        defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager4 removeItemAtURL:v9 error:0];

        if (error)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v33 = MEMORY[0x1E696ABC0];
        v34 = v42;
        v45 = *MEMORY[0x1E696A998];
        v46 = v7;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v17 = [v33 errorWithDomain:*MEMORY[0x1E696A798] code:v34 userInfo:v35];

        v36 = +[EFFileCompression log];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [v17 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          +[EFFileCompression _compressFile:error:];
        }

        defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager5 removeItemAtURL:v9 error:0];

        if (error)
        {
          goto LABEL_21;
        }
      }
    }

    v22 = 0;
    goto LABEL_23;
  }

  v20 = +[EFFileCompression log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [v10 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    +[EFFileCompression _compressFile:error:];
  }

  if (error)
  {
    v21 = v10;
    v22 = 0;
    *error = v10;
  }

  else
  {
    v22 = 0;
  }

LABEL_24:

  return v22;
}

+ (BOOL)_doCompressFile:(const char *)file errorCode:(int64_t *)code
{
  _compressionLock = [self _compressionLock];
  [_compressionLock lock];
  [self _compressionQueueContext];
  if (CompressFile())
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *code = *__error();
  }

  [_compressionLock unlock];

  return v7;
}

+ (CompressionQueueContext_s)_compressionQueueContext
{
  if (_compressionQueueContext_onceToken != -1)
  {
    +[EFFileCompression _compressionQueueContext];
  }

  return _compressionQueueContext_context;
}

uint64_t __45__EFFileCompression__compressionQueueContext__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E698C1B0];
  v2[0] = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:&v1 count:1];
  result = CreateCompressionQueue();
  _compressionQueueContext_context = result;
  return result;
}

+ (id)_compressionLock
{
  if (_compressionLock_onceToken != -1)
  {
    +[EFFileCompression _compressionLock];
  }

  v3 = _compressionLock_fileCompressionLock;

  return v3;
}

void __37__EFFileCompression__compressionLock__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = _compressionLock_fileCompressionLock;
  _compressionLock_fileCompressionLock = v0;
}

+ (void)compressFile:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ No Invalid URL for compression: %@", v4, v5);
}

+ (void)compressDirectory:(uint64_t)a3 shouldCancel:(NSObject *)a4 error:.cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a2 = 138543618;
  *(a2 + 4) = a1;
  *(a2 + 12) = 2112;
  *(a2 + 14) = a3;
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ attempting to close fts for URL %@", a2, a4);
}

+ (void)compressDirectory:shouldCancel:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ No filesystem representation for URL %@", v4, v5);
}

+ (void)_compressFile:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ Attempting to copy file %@ to a temporary location", v4, v5);
}

+ (void)_compressFile:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ Attempting to compress file %@", v4, v5);
}

+ (void)_compressFile:error:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ Attempting to move file %@ back to its original location", v4, v5);
}

+ (void)_compressFile:error:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2(&dword_1C6152000, "Error %{public}@ Attempting to get the item replacement directory for file %@", v4, v5);
}

@end