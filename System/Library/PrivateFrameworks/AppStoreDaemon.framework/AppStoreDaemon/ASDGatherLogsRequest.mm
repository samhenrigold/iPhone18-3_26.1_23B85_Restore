@interface ASDGatherLogsRequest
+ (void)clearHARFiles;
- (ASDGatherLogsRequest)initWithOptions:(id)options;
- (id)_combineAllLogs;
- (id)_createCombinedHarFile;
- (void)_copyDB:(void *)b fullSourcePath:(void *)path toDir:(void *)dir datbaseBase:(void *)base;
- (void)createHARFileArchiveWithCompletionBlock:(id)block;
- (void)createLogFileArchiveWithCompletionBlock:(id)block;
- (void)gatherLogsWithCompletionBlock:(id)block;
@end

@implementation ASDGatherLogsRequest

- (ASDGatherLogsRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = ASDGatherLogsRequest;
  v5 = [(ASDGatherLogsRequest *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstoredaemonframework.ASDGatherLogsRequest.access", v6);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.appstoredaemonframework.ASDGatherLogsRequest.callout", v9);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v10;

    v12 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v12;
  }

  return v5;
}

+ (void)clearHARFiles
{
  v19 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  objc_opt_self();
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/var/mobile/Library/Logs/%@/HTTPArchives", @"com.apple.StoreServices"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager contentsOfDirectoryAtPath:v2 error:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 hasSuffix:@".har.compressed"] & 1) != 0 || objc_msgSend(v10, "hasSuffix:", @".har"))
        {
          v11 = [v2 stringByAppendingPathComponent:v10];
          v13 = v7;
          [defaultManager removeItemAtPath:v11 error:&v13];
          v12 = v13;

          v7 = v12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }
}

- (void)createLogFileArchiveWithCompletionBlock:(id)block
{
  v5 = self->_options;
  blockCopy = block;
  if (!blockCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__ASDGatherLogsRequest__sendRequestWithOptions_completionBlock___block_invoke;
  v9[3] = &unk_1E7CDBE48;
  v9[4] = self;
  v8 = blockCopy;
  v10 = v8;
  dispatch_async(accessQueue, v9);
}

- (void)createHARFileArchiveWithCompletionBlock:(id)block
{
  v5 = self->_options;
  blockCopy = block;
  if (!blockCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__ASDGatherLogsRequest__sendHarFileRequestWithOptions_completionBlock___block_invoke;
  v9[3] = &unk_1E7CDBE48;
  v9[4] = self;
  v8 = blockCopy;
  v10 = v8;
  dispatch_async(accessQueue, v9);
}

- (void)gatherLogsWithCompletionBlock:(id)block
{
  v5 = self->_options;
  blockCopy = block;
  if (!blockCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__ASDGatherLogsRequest__sendGatherRequestWithOptions_completionBlock___block_invoke;
  v9[3] = &unk_1E7CDBE48;
  v9[4] = self;
  v8 = blockCopy;
  v10 = v8;
  dispatch_async(accessQueue, v9);
}

void __47__ASDGatherLogsRequest__appstoredContainerPath__block_invoke()
{
  v0 = container_system_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v0];
    v3 = _MergedGlobals_55;
    _MergedGlobals_55 = v2;

    free(v1);
  }
}

- (id)_combineAllLogs
{
  v49[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v1 = [@"/var/mobile/Library/Caches/com.apple.appstored/" stringByAppendingPathComponent:@"scratch"];
    [MEMORY[0x1E696AC08] defaultManager];
    v38 = v41 = 0;
    [v38 removeItemAtPath:v1 error:&v41];
    v2 = @"appstored";
    v3 = v1;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v37 = v3;
    v5 = [v3 stringByAppendingPathComponent:@"appstored"];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.log", @"appstored"];
    v7 = [v5 stringByAppendingPathComponent:v6];

    v43 = 0;
    v39 = v7;
    [defaultManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v43];
    v8 = v43;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/var/mobile/Library/Logs/com.apple.%@/", @"appstored"];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.log", @"appstored"];
    v49[0] = v10;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.1.log", @"appstored"];
    v49[1] = v11;
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.2.log", @"appstored"];
    v49[2] = v12;
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.3.log", @"appstored"];
    v49[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v14;
    v15 = [obj countByEnumeratingWithState:&v45 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v46;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v46 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v45 + 1) + 8 * i);
          v20 = [v9 stringByAppendingPathComponent:v19];
          if ([defaultManager fileExistsAtPath:v20])
          {
            v21 = [v39 stringByAppendingPathComponent:v19];
            v42 = v8;
            [defaultManager copyItemAtPath:v20 toPath:v21 error:&v42];
            v22 = v42;

            if (v22)
            {
              v23 = *MEMORY[0x1E69E9848];
              localizedDescription = [v22 localizedDescription];
              fprintf(v23, "\nError copying file: %s", [localizedDescription UTF8String]);
            }

            v8 = v22;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v45 objects:v44 count:16];
      }

      while (v16);
    }

    v25 = [MEMORY[0x1E695DFF8] URLWithString:v37];
    [ASDGatherLogsRequest _copyDB:@"/var/mobile/Media/Downloads/" fullSourcePath:v37 toDir:@"downloads.28" datbaseBase:?];
    if (qword_1ED90D670 != -1)
    {
      dispatch_once(&qword_1ED90D670, &__block_literal_global_30);
    }

    v26 = _MergedGlobals_55;
    v27 = [v26 stringByAppendingPathComponent:@"Documents"];

    [ASDGatherLogsRequest _copyDB:v27 fullSourcePath:v37 toDir:@"appstored" datbaseBase:?];
    [ASDGatherLogsRequest _copyDB:v27 fullSourcePath:v37 toDir:@"updates" datbaseBase:?];
    v28 = v25;
    if (BOMCopierNew())
    {
      initToMemory = [objc_alloc(MEMORY[0x1E695DFC0]) initToMemory];
      [initToMemory open];
      *&v45 = @"createPKZip";
      v30 = [MEMORY[0x1E696AD98] numberWithBool:1];
      *(&v45 + 1) = @"outputStream";
      v44[0] = v30;
      v44[1] = initToMemory;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v45 count:2];

      path = [v28 path];
      [path fileSystemRepresentation];
      v33 = BOMCopierCopyWithOptions();

      if (v33)
      {
        fwrite("Error copying and zipping\n", 0x1AuLL, 1uLL, *MEMORY[0x1E69E9848]);
        v34 = 0;
      }

      else
      {
        v34 = [initToMemory propertyForKey:*MEMORY[0x1E695DA30]];
        BOMCopierFree();
      }
    }

    else
    {
      fwrite("\nCouldn't create BomCopier for zipping", 0x26uLL, 1uLL, *MEMORY[0x1E69E9848]);
      v34 = 0;
    }

    v35 = [@"/var/mobile/Library/Caches/com.apple.appstored/" stringByAppendingPathComponent:@"appstored.zip"];
    [v34 writeToFile:v35 atomically:1];
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (void)_copyDB:(void *)b fullSourcePath:(void *)path toDir:(void *)dir datbaseBase:(void *)base
{
  v43[3] = *MEMORY[0x1E69E9840];
  bCopy = b;
  pathCopy = path;
  dirCopy = dir;
  baseCopy = base;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v32 = dirCopy;
  v33 = bCopy;
  v12 = [dirCopy stringByAppendingPathComponent:bCopy];
  baseCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.sqlitedb", baseCopy];
  v14 = [v12 stringByAppendingPathComponent:baseCopy];

  v41 = 0;
  v34 = v14;
  [defaultManager createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v41];
  v15 = v41;
  baseCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.sqlitedb", baseCopy];
  v43[0] = baseCopy2;
  baseCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.sqlitedb-shm", baseCopy];
  v43[1] = baseCopy3;
  v31 = baseCopy;
  baseCopy4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.sqlitedb-wal", baseCopy];
  v43[2] = baseCopy4;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v19;
  v20 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v37 + 1) + 8 * i);
        v25 = [pathCopy stringByAppendingPathComponent:v24];
        if ([defaultManager fileExistsAtPath:v25])
        {
          v26 = [v34 stringByAppendingPathComponent:v24];
          v36 = v15;
          [defaultManager copyItemAtPath:v25 toPath:v26 error:&v36];
          v27 = v36;

          if (v27)
          {
            v28 = *MEMORY[0x1E69E9848];
            [v27 localizedDescription];
            v30 = v29 = pathCopy;
            fprintf(v28, "\nError copying file: %s", [v30 UTF8String]);

            pathCopy = v29;
          }

          v15 = v27;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v21);
  }
}

- (id)_createCombinedHarFile
{
  v103 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    objc_opt_self();
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/var/mobile/Library/Logs/%@/HTTPArchives", @"com.apple.StoreServices"];
    fileName = [*(selfCopy + 32) fileName];
    v4 = fileName;
    if (fileName)
    {
      v5 = fileName;
    }

    else
    {
      v5 = @"combined.har";
    }

    v58 = [v2 stringByAppendingPathComponent:v5];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [defaultManager contentsOfDirectoryAtPath:v2 error:0];
    if ([*(selfCopy + 32) verbose])
    {
      v7 = objc_opt_class();
      NSLog(&cfstr_CheckingForLdF.isa, v7, [v6 count], v2);
    }

    v60 = v2;
    v73 = objc_opt_new();
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
    v71 = selfCopy;
    if (v8)
    {
      v9 = v8;
      v10 = *v92;
      do
      {
        v11 = 0;
        do
        {
          if (*v92 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v91 + 1) + 8 * v11);
          if ([v12 hasSuffix:@".har.compressed"] & 1) == 0 && !objc_msgSend(v12, "hasSuffix:", @".har") || (objc_msgSend(v12, "isEqualToString:", @"combined.har") & 1) != 0 || (objc_msgSend(*(selfCopy + 32), "fileName"), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, objc_msgSend(*(selfCopy + 32), "fileName"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v12, "isEqualToString:", v15), v15, selfCopy = v71, v14, (v16))
          {
            verbose = [*(selfCopy + 32) verbose];
            v18 = @"Skipping file: %@";
            if (!verbose)
            {
              goto LABEL_19;
            }

LABEL_18:
            NSLog(&v18->isa, v12);
            goto LABEL_19;
          }

          [v73 addObject:v12];
          verbose2 = [*(selfCopy + 32) verbose];
          v18 = @"Including har file: %@";
          if (verbose2)
          {
            goto LABEL_18;
          }

LABEL_19:
          ++v11;
        }

        while (v9 != v11);
        v20 = [obj countByEnumeratingWithState:&v91 objects:v102 count:16];
        v9 = v20;
      }

      while (v20);
    }

    v21 = objc_opt_new();
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v22 = v73;
    v23 = 0x1E695D000uLL;
    v59 = v22;
    v65 = [v22 countByEnumeratingWithState:&v87 objects:v101 count:16];
    v24 = 0;
    if (v65)
    {
      v64 = *v88;
      v26 = v60;
      v25 = defaultManager;
      do
      {
        v27 = 0;
        do
        {
          if (*v88 != v64)
          {
            objc_enumerationMutation(v22);
          }

          v69 = v27;
          v28 = [v26 stringByAppendingPathComponent:*(*(&v87 + 1) + 8 * v27)];
          v86 = v24;
          v68 = v28;
          v29 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:? options:? error:?];
          v30 = v86;

          v85 = v30;
          v67 = v29;
          v31 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v29 options:0 error:&v85];
          v66 = v85;

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = [v31 objectForKeyedSubscript:@"log"];
            v33 = [v32 objectForKeyedSubscript:@"entries"];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              urlFilters = [*(selfCopy + 32) urlFilters];

              if (urlFilters)
              {
                v62 = v31;
                v83 = 0u;
                v84 = 0u;
                v81 = 0u;
                v82 = 0u;
                v74 = v33;
                v35 = [v74 countByEnumeratingWithState:&v81 objects:v100 count:16];
                if (v35)
                {
                  v36 = v35;
                  v37 = *v82;
                  v70 = *v82;
                  do
                  {
                    v38 = 0;
                    v72 = v36;
                    do
                    {
                      if (*v82 != v37)
                      {
                        objc_enumerationMutation(v74);
                      }

                      v39 = *(*(&v81 + 1) + 8 * v38);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v40 = v33;
                        v41 = v23;
                        v42 = [v39 objectForKeyedSubscript:@"request"];
                        v43 = [v42 objectForKeyedSubscript:@"url"];

                        v79 = 0u;
                        v80 = 0u;
                        v77 = 0u;
                        v78 = 0u;
                        urlFilters2 = [*(v71 + 32) urlFilters];
                        v45 = [urlFilters2 countByEnumeratingWithState:&v77 objects:v99 count:16];
                        if (v45)
                        {
                          v46 = v45;
                          v47 = *v78;
                          do
                          {
                            for (i = 0; i != v46; ++i)
                            {
                              if (*v78 != v47)
                              {
                                objc_enumerationMutation(urlFilters2);
                              }

                              if ([v43 containsString:*(*(&v77 + 1) + 8 * i)])
                              {
                                [v21 addObject:v39];
                              }
                            }

                            v46 = [urlFilters2 countByEnumeratingWithState:&v77 objects:v99 count:16];
                          }

                          while (v46);
                        }

                        v23 = v41;
                        v33 = v40;
                        v37 = v70;
                        v36 = v72;
                      }

                      ++v38;
                    }

                    while (v38 != v36);
                    v36 = [v74 countByEnumeratingWithState:&v81 objects:v100 count:16];
                  }

                  while (v36);
                }

                v26 = v60;
                v25 = defaultManager;
                selfCopy = v71;
                v22 = v59;
                v31 = v62;
              }

              else
              {
                [v21 addObjectsFromArray:v33];
              }
            }
          }

          v76 = v66;
          [v25 removeItemAtPath:v68 error:&v76];
          v49 = v31;
          v24 = v76;

          v27 = v69 + 1;
        }

        while (v69 + 1 != v65);
        v65 = [v22 countByEnumeratingWithState:&v87 objects:v101 count:16];
      }

      while (v65);
    }

    else
    {
      v26 = v60;
    }

    v96[2] = v21;
    v97 = @"log";
    v95[0] = @"version";
    v95[1] = @"creator";
    v96[0] = @"1.2";
    v96[1] = &unk_1F30333A0;
    v95[2] = @"entries";
    v50 = [*(v23 + 3872) dictionaryWithObjects:v96 forKeys:v95 count:3];
    v98 = v50;
    v51 = [*(v23 + 3872) dictionaryWithObjects:&v98 forKeys:&v97 count:1];

    v75 = v24;
    v52 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v51 options:0 error:&v75];
    v53 = v75;

    if (v53)
    {
      v54 = objc_opt_class();
      NSLog(&cfstr_ErrorMergingHa.isa, v54, v53);
      v55 = v58;
    }

    else
    {
      v55 = v58;
      if ([*(selfCopy + 32) verbose])
      {
        v56 = objc_opt_class();
        NSLog(&cfstr_CreatedMergedH.isa, v56, v58);
      }
    }

    [v52 writeToFile:v55 atomically:1];
  }

  else
  {
    v55 = 0;
  }

  return v55;
}

void __70__ASDGatherLogsRequest__sendGatherRequestWithOptions_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [(ASDGatherLogsRequest *)*(a1 + 32) _combineAllLogs];
  v3 = [(ASDGatherLogsRequest *)*(a1 + 32) _createCombinedHarFile];
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ASDGatherLogsRequest__sendGatherRequestWithOptions_completionBlock___block_invoke_2;
  block[3] = &unk_1E7CDBAE0;
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v9 = v2;
  v6 = v3;
  v7 = v2;
  dispatch_async(v4, block);
}

void __64__ASDGatherLogsRequest__sendRequestWithOptions_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [(ASDGatherLogsRequest *)*(a1 + 32) _combineAllLogs];
  v3 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__ASDGatherLogsRequest__sendRequestWithOptions_completionBlock___block_invoke_2;
  v6[3] = &unk_1E7CDB890;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

void __71__ASDGatherLogsRequest__sendHarFileRequestWithOptions_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [(ASDGatherLogsRequest *)*(a1 + 32) _createCombinedHarFile];
  v3 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__ASDGatherLogsRequest__sendHarFileRequestWithOptions_completionBlock___block_invoke_2;
  v6[3] = &unk_1E7CDB890;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

@end