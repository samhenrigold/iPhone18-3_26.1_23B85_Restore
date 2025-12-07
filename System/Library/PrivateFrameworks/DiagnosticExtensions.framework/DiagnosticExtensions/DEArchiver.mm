@interface DEArchiver
+ (id)archiveDirectoryAt:(id)at deleteOriginal:(BOOL)original progressHandler:(id)handler;
+ (id)archiveFile:(id)file deleteOriginal:(BOOL)original progressHandler:(id)handler;
+ (unint64_t)directorySizeOf:(id)of;
@end

@implementation DEArchiver

+ (unint64_t)directorySizeOf:(id)of
{
  v29 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  [DEUtils enumeratorForAllItems:?];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v19 = 0;
    v6 = *v25;
    v7 = *MEMORY[0x277CBE868];
    v8 = *MEMORY[0x277CBE838];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v22 = 0;
        v23 = 0;
        [v10 getResourceValue:&v23 forKey:v7 error:&v22];
        v12 = v23;
        v13 = v22;
        if (v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = v12 == 0;
        }

        if (v14)
        {
          v15 = v13;
        }

        else if ([v12 BOOLValue])
        {
          v15 = 0;
        }

        else
        {
          v20 = 0;
          v21 = 0;
          [v10 getResourceValue:&v21 forKey:v8 error:&v20];
          v16 = v21;
          v15 = v20;
          if (!v15)
          {
            v19 += [v16 unsignedLongLongValue];
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)archiveDirectoryAt:(id)at deleteOriginal:(BOOL)original progressHandler:(id)handler
{
  originalCopy = original;
  v54 = *MEMORY[0x277D85DE8];
  atCopy = at;
  handlerCopy = handler;
  v6 = +[DELogging fwHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DEArchiver archiveDirectoryAt:atCopy deleteOriginal:? progressHandler:?];
  }

  v28 = [[DEArchive alloc] initWithURL:atCopy];
  if (v28)
  {
    [DEUtils enumeratorForAllItems:atCopy];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    obj = v44 = 0u;
    v7 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v7)
    {
      v31 = 0;
      v8 = 0;
      v9 = 0;
      v33 = *MEMORY[0x277CBE868];
      v34 = *v44;
      while (1)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v44 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v43 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();

          v41 = 0;
          v42 = 0;
          [v11 getResourceValue:&v42 forKey:v33 error:&v41];
          v8 = v42;
          v9 = v41;
          if (v9 || !v8)
          {
            v18 = +[DELogging fwHandle];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              *&buf[4] = v9;
              *&buf[12] = 2114;
              *&buf[14] = v11;
              _os_log_impl(&dword_248AB3000, v18, OS_LOG_TYPE_INFO, "Error [%{public}@] getting NSURLIsDirectoryKey for url [%{public}@]", buf, 0x16u);
            }
          }

          else if (([v8 BOOLValue] & 1) == 0)
          {
            v13 = [DEUtils pathComponentsInURL:v11 removingBaseURLComponents:atCopy keepingFirstComponent:1];
            if (v13)
            {
              v14 = [MEMORY[0x277CCACA8] pathWithComponents:v13];
              v15 = v14;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v52 = 0;
              if (handlerCopy)
              {
                v37[0] = MEMORY[0x277D85DD0];
                v37[1] = 3221225472;
                v37[2] = __64__DEArchiver_archiveDirectoryAt_deleteOriginal_progressHandler___block_invoke;
                v37[3] = &unk_278F63640;
                v39 = buf;
                v38 = handlerCopy;
                v40 = v31;
                v16 = MEMORY[0x24C1E46F0](v37);

                if (v15)
                {
                  goto LABEL_15;
                }

LABEL_22:
                v17 = +[DELogging fwHandle];
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  lastPathComponent = [atCopy lastPathComponent];
                  *v47 = 138412546;
                  v48 = v11;
                  v49 = 2112;
                  v50 = lastPathComponent;
                  v21 = lastPathComponent;
                  _os_log_error_impl(&dword_248AB3000, v17, OS_LOG_TYPE_ERROR, "could not build path from %@ with root component %@", v47, 0x16u);
                }

LABEL_24:
              }

              else
              {
                v16 = 0;
                if (!v14)
                {
                  goto LABEL_22;
                }

LABEL_15:
                if (![(DEArchive *)v28 addFile:v11 withPathName:v15 progressHandler:v16])
                {
                  v17 = +[DELogging fwHandle];
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    [DEArchiver archiveDirectoryAt:v36 deleteOriginal:v17 progressHandler:?];
                  }

                  goto LABEL_24;
                }
              }

              v19 = *(*&buf[8] + 24);

              _Block_object_dispose(buf, 8);
              v31 += v19;
            }
          }

          objc_autoreleasePoolPop(v12);
        }

        v7 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (!v7)
        {
          goto LABEL_33;
        }
      }
    }

    v8 = 0;
    v9 = 0;
LABEL_33:

    [(DEArchive *)v28 closeArchive];
    tarGzUrl = [(DEArchive *)v28 tarGzUrl];
    v25 = tarGzUrl;
    if (originalCopy && tarGzUrl)
    {
      [DEUtils removeFile:atCopy];
    }

    v22 = v25;

    v23 = v22;
  }

  else
  {
    v22 = +[DELogging fwHandle];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[DEArchiver archiveDirectoryAt:deleteOriginal:progressHandler:];
    }

    v23 = 0;
  }

  return v23;
}

+ (id)archiveFile:(id)file deleteOriginal:(BOOL)original progressHandler:(id)handler
{
  originalCopy = original;
  fileCopy = file;
  handlerCopy = handler;
  v9 = +[DELogging fwHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [DEArchiver archiveFile:fileCopy deleteOriginal:? progressHandler:?];
  }

  v10 = [[DEArchive alloc] initWithURL:fileCopy];
  if (v10)
  {
    v21 = 0;
    v11 = *MEMORY[0x277CBE868];
    v20 = 0;
    [fileCopy getResourceValue:&v21 forKey:v11 error:&v20];
    v12 = v21;
    v13 = v20;
    if (v13)
    {
      v14 = +[DELogging fwHandle];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[DEArchiver archiveFile:deleteOriginal:progressHandler:];
      }
    }

    else if (([v12 BOOLValue] & 1) == 0)
    {
      lastPathComponent = [fileCopy lastPathComponent];
      if (lastPathComponent)
      {
        if (![(DEArchive *)v10 addFile:fileCopy withPathName:lastPathComponent progressHandler:handlerCopy])
        {
          v18 = +[DELogging fwHandle];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            +[DEArchiver archiveFile:deleteOriginal:progressHandler:];
          }
        }

        [(DEArchive *)v10 closeArchive];
        tarGzUrl = [(DEArchive *)v10 tarGzUrl];
        v15 = tarGzUrl;
        if (originalCopy && tarGzUrl)
        {
          [DEUtils removeFile:fileCopy];
        }

        goto LABEL_16;
      }

LABEL_15:
      v15 = 0;
LABEL_16:

LABEL_18:
      goto LABEL_19;
    }

    if (!v12)
    {
      v15 = 0;
      goto LABEL_18;
    }

    lastPathComponent = +[DELogging fwHandle];
    if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
    {
      +[DEArchiver archiveFile:deleteOriginal:progressHandler:];
    }

    goto LABEL_15;
  }

  v13 = +[DELogging fwHandle];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    +[DEArchiver archiveDirectoryAt:deleteOriginal:progressHandler:];
  }

  v15 = 0;
LABEL_19:

  return v15;
}

+ (void)archiveDirectoryAt:(void *)a1 deleteOriginal:progressHandler:.cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248AB3000, v2, v3, "archiveDirectoryAt [%{public}@]", v4, v5, v6, v7);
}

+ (void)archiveDirectoryAt:(uint8_t *)buf deleteOriginal:(_BYTE *)a2 progressHandler:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_248AB3000, log, OS_LOG_TYPE_ERROR, "Failed to add file to archiver", buf, 2u);
}

+ (void)archiveDirectoryAt:deleteOriginal:progressHandler:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)archiveFile:(void *)a1 deleteOriginal:progressHandler:.cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248AB3000, v2, v3, "archiveFile [%{public}@]", v4, v5, v6, v7);
}

+ (void)archiveFile:deleteOriginal:progressHandler:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_248AB3000, v1, OS_LOG_TYPE_ERROR, "Error [%{public}@] getting NSURLIsDirectoryKey for url [%{public}@]", v2, 0x16u);
}

@end