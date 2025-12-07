@interface DEDTestingFinisher
+ (id)archivedClasses;
+ (id)log;
- (DEDBugSession)session;
- (DEDTestingFinisher)initWithCoder:(id)coder;
- (DEDTestingFinisher)initWithConfiguration:(id)configuration session:(id)session;
- (id)flattenDirectories:(id)directories progressHandler:(id)handler;
- (void)finishSession:(id)session withConfiguration:(id)configuration;
- (void)writeData:(id)data filename:(id)filename;
@end

@implementation DEDTestingFinisher

+ (id)log
{
  if (log_onceToken_0 != -1)
  {
    +[DEDTestingFinisher log];
  }

  v3 = log_log_0;

  return v3;
}

void __25__DEDTestingFinisher_log__block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-testing-finisher");
  v1 = log_log_0;
  log_log_0 = v0;
}

- (DEDTestingFinisher)initWithConfiguration:(id)configuration session:(id)session
{
  v7.receiver = self;
  v7.super_class = DEDTestingFinisher;
  sessionCopy = session;
  v5 = [(DEDTestingFinisher *)&v7 init];
  objc_storeWeak(&v5->_session, sessionCopy);

  return v5;
}

- (void)finishSession:(id)session withConfiguration:(id)configuration
{
  v85 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  selfCopy = self;
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Preparing to copy files to test directory.", buf, 2u);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  allExtensionIdentifiers = [sessionCopy allExtensionIdentifiers];
  v9 = [allExtensionIdentifiers countByEnumeratingWithState:&v75 objects:v84 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v76;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v76 != v11)
        {
          objc_enumerationMutation(allExtensionIdentifiers);
        }

        stringValue = [*(*(&v75 + 1) + 8 * i) stringValue];
        [v7 addObject:stringValue];
      }

      v10 = [allExtensionIdentifiers countByEnumeratingWithState:&v75 objects:v84 count:16];
    }

    while (v10);
  }

  v14 = objc_opt_new();
  identifier = [sessionCopy identifier];
  v16 = [v14 directoryForBugSessionIdentifier:identifier];

  v56 = v16;
  v17 = [MEMORY[0x277D051E0] lsDir:v16];
  v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v72;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v72 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v71 + 1) + 8 * j);
        lastPathComponent = [v22 lastPathComponent];
        if ([v7 containsObject:lastPathComponent])
        {
          v24 = [MEMORY[0x277D051E0] isValidDirectory:v22];

          if (v24)
          {
            [v57 addObject:v22];
            continue;
          }
        }

        else
        {
        }

        v25 = [objc_opt_class() log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [DEDTestingFinisher finishSession:buf withConfiguration:v22];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
    }

    while (v19);
  }

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __54__DEDTestingFinisher_finishSession_withConfiguration___block_invoke;
  v69[3] = &unk_278F660D0;
  v26 = sessionCopy;
  v70 = v26;
  v27 = MEMORY[0x24C1E5320](v69);
  v28 = [[DEDCompressionDebouncer alloc] initWithTrigger:v27 interval:1.0];
  handler = [(DEDCompressionDebouncer *)v28 handler];
  v30 = [(DEDTestingFinisher *)selfCopy flattenDirectories:v57 progressHandler:handler];

  v31 = [objc_opt_class() log];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *v80 = 138543362;
    v81 = v30;
    _os_log_impl(&dword_248AD7000, v31, OS_LOG_TYPE_DEFAULT, "attachments = %{public}@", v80, 0xCu);
  }

  v32 = objc_alloc_init(MEMORY[0x277CCAA00]);
  temporaryDirectory = [v32 temporaryDirectory];
  identifier2 = [v26 identifier];
  v35 = [temporaryDirectory URLByAppendingPathComponent:identifier2];

  v68 = 0;
  v60 = v35;
  v61 = v32;
  [v32 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:&v68];
  v36 = v68;
  if (v36)
  {
    v37 = v36;
    v38 = [objc_opt_class() log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [DEDTestingFinisher finishSession:v37 withConfiguration:v38];
    }
  }

  v39 = [v30 count];
  if (v39)
  {
    v40 = v39;
    v54 = v28;
    v55 = v27;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v53 = v30;
    v58 = v30;
    v41 = [v58 countByEnumeratingWithState:&v64 objects:v79 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = 0;
      v44 = *v65;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          v46 = v26;
          if (*v65 != v44)
          {
            objc_enumerationMutation(v58);
          }

          v47 = *(*(&v64 + 1) + 8 * k);
          lastPathComponent2 = [v47 lastPathComponent];
          v49 = [v60 URLByAppendingPathComponent:lastPathComponent2];
          v63 = 0;
          [v61 copyItemAtURL:v47 toURL:v49 error:&v63];
          v50 = v63;

          if (v50)
          {
            v51 = [objc_opt_class() log];
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              [DEDTestingFinisher finishSession:v80 withConfiguration:v50];
            }
          }

          ++v43;
          v26 = v46;
          [v46 uploadProgress:v43 total:v40];
        }

        v42 = [v58 countByEnumeratingWithState:&v64 objects:v79 count:16];
      }

      while (v42);
    }

    else
    {
      v43 = 0;
    }

    v30 = v53;
    v28 = v54;
    if (v43 != v40)
    {
      v52 = [objc_opt_class() log];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [DEDTestingFinisher finishSession:withConfiguration:];
      }
    }

    [v26 uploadProgress:v40 total:v40];
    v27 = v55;
  }

  else
  {
    [v26 uploadProgress:1 total:1];
  }

  [v26 didFinishUploadingWithError:0];
}

- (DEDTestingFinisher)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = DEDTestingFinisher;
  return [(DEDTestingFinisher *)&v4 init];
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)flattenDirectories:(id)directories progressHandler:(id)handler
{
  v69 = *MEMORY[0x277D85DE8];
  directoriesCopy = directories;
  handlerCopy = handler;
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = directoriesCopy;
  v6 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
  v7 = 0;
  if (v6)
  {
    v8 = *v60;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v60 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [MEMORY[0x277D051E0] lsDir:*(*(&v59 + 1) + 8 * i)];
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v11)
        {
          v12 = *v56;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v56 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v55 + 1) + 8 * j);
              if ([MEMORY[0x277D051E0] isValidDirectory:v14])
              {
                v7 += [MEMORY[0x277D051A8] directorySizeOf:v14];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v55 objects:v67 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v6);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v28 = obj;
  v30 = [v28 countByEnumeratingWithState:&v51 objects:v66 count:16];
  if (v30)
  {
    v15 = 0;
    v29 = *v52;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(v28);
        }

        v16 = [MEMORY[0x277D051E0] lsDir:*(*(&v51 + 1) + 8 * k)];
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        obja = v16;
        v17 = [obja countByEnumeratingWithState:&v47 objects:v65 count:16];
        if (v17)
        {
          v18 = *v48;
          do
          {
            for (m = 0; m != v17; ++m)
            {
              if (*v48 != v18)
              {
                objc_enumerationMutation(obja);
              }

              v20 = *(*(&v47 + 1) + 8 * m);
              if ([MEMORY[0x277D051E0] isValidDirectory:v20])
              {
                v43 = 0;
                v44 = &v43;
                v45 = 0x2020000000;
                v46 = 0;
                v21 = [objc_opt_class() log];
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v64 = v20;
                  _os_log_debug_impl(&dword_248AD7000, v21, OS_LOG_TYPE_DEBUG, "Compressing folder... (%{public}@)", buf, 0xCu);
                }

                v22 = MEMORY[0x277D051A8];
                v38[0] = MEMORY[0x277D85DD0];
                v38[1] = 3221225472;
                v38[2] = __57__DEDTestingFinisher_flattenDirectories_progressHandler___block_invoke;
                v38[3] = &unk_278F660F8;
                v40 = &v43;
                v39 = handlerCopy;
                v41 = v15;
                v42 = v7;
                v23 = [v22 archiveDirectoryAt:v20 deleteOriginal:1 progressHandler:v38];
                v24 = v44[3];
                v25 = [objc_opt_class() log];
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  [(DEDTestingFinisher *)&v36 flattenDirectories:v37 progressHandler:v25];
                }

                if (v23)
                {
                  [v35 addObject:v23];
                }

                else
                {
                  v26 = [objc_opt_class() log];
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v64 = v20;
                    _os_log_error_impl(&dword_248AD7000, v26, OS_LOG_TYPE_ERROR, "Error compressing: %{public}@", buf, 0xCu);
                  }
                }

                v15 += v24;
                _Block_object_dispose(&v43, 8);
              }

              else
              {
                [v35 addObject:v20];
              }
            }

            v17 = [obja countByEnumeratingWithState:&v47 objects:v65 count:16];
          }

          while (v17);
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v51 objects:v66 count:16];
    }

    while (v30);
  }

  return v35;
}

- (void)writeData:(id)data filename:(id)filename
{
  filenameCopy = filename;
  dataCopy = data;
  v8 = objc_opt_new();
  session = [(DEDTestingFinisher *)self session];
  identifier = [session identifier];
  v11 = [v8 directoryForBugSessionIdentifier:identifier];

  v12 = [v11 URLByAppendingPathComponent:@"sendData"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v12 path];
  v15 = [defaultManager fileExistsAtPath:path];

  if ((v15 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = 0;
    [defaultManager2 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v23];
    v17 = v23;

    if (v17)
    {
      v18 = [objc_opt_class() log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [DEDTestingFinisher writeData:filename:];
      }
    }
  }

  v19 = [v12 URLByAppendingPathComponent:filenameCopy];
  v22 = 0;
  [dataCopy writeToURL:v19 options:2 error:&v22];

  v20 = v22;
  if (v20)
  {
    v21 = [objc_opt_class() log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [DEDTestingFinisher writeData:filename:];
    }
  }
}

- (DEDBugSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)finishSession:(uint64_t)a1 withConfiguration:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&dword_248AD7000, v5, v6, "Error: Found folder that does not map to a completed extension: %{public}@");
}

- (void)finishSession:(void *)a1 withConfiguration:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Error creating destination directory. %@", v4, 0xCu);
}

- (void)finishSession:(uint64_t)a1 withConfiguration:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_5_0(&dword_248AD7000, v5, v6, "Error copying to destination directory. %@");
}

- (void)finishSession:withConfiguration:.cold.4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&dword_248AD7000, v1, OS_LOG_TYPE_ERROR, "Expected to complete %lu files, but only completed %lu.", v2, 0x16u);
}

- (void)flattenDirectories:(os_log_t)log progressHandler:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_248AD7000, log, OS_LOG_TYPE_DEBUG, "Finished compressing", buf, 2u);
}

- (void)writeData:filename:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, v0, OS_LOG_TYPE_ERROR, "Failed to create sendData directory: [%{public}@]", v1, 0xCu);
}

- (void)writeData:filename:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, v0, OS_LOG_TYPE_ERROR, "Failed to save data: [%{public}@]", v1, 0xCu);
}

@end