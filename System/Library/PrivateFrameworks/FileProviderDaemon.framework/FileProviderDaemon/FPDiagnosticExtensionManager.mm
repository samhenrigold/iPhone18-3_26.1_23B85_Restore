@interface FPDiagnosticExtensionManager
+ (id)sharedManager;
- (FPDiagnosticExtensionManager)init;
- (void)triggerDiagnosticsFor:(id)for persistingAt:(id)at completionHandler:(id)handler;
@end

@implementation FPDiagnosticExtensionManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[FPDiagnosticExtensionManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

void __45__FPDiagnosticExtensionManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(FPDiagnosticExtensionManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;
}

- (FPDiagnosticExtensionManager)init
{
  v8.receiver = self;
  v8.super_class = FPDiagnosticExtensionManager;
  v2 = [(FPDiagnosticExtensionManager *)&v8 init];
  if (v2 && getDEExtensionManagerClass())
  {
    sharedInstance = [getDEExtensionManagerClass() sharedInstance];
    [sharedInstance loadExtensions];

    sharedInstance2 = [getDEExtensionManagerClass() sharedInstance];
    v5 = [sharedInstance2 extensionForIdentifier:@"com.apple.FileProviderDaemon.diagnostic"];
    fpExtension = v2->fpExtension;
    v2->fpExtension = v5;
  }

  return v2;
}

- (void)triggerDiagnosticsFor:(id)for persistingAt:(id)at completionHandler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  forCopy = for;
  atCopy = at;
  handlerCopy = handler;
  if (self->fpExtension)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__14;
    v42 = __Block_byref_object_dispose__14;
    v43 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    obj = 0;
    v12 = [defaultManager removeItemAtURL:atCopy error:&obj];
    objc_storeStrong(&v43, obj);
    *(v35 + 24) = v12;
    if (v12 & 1) != 0 || ([v39[5] fp_isCocoaErrorCode:4])
    {
      v13 = (v39 + 5);
      v32 = v39[5];
      v14 = [defaultManager createDirectoryAtURL:atCopy withIntermediateDirectories:1 attributes:0 error:&v32];
      objc_storeStrong(v13, v32);
      *(v35 + 24) = v14;
      if (v14)
      {
        v15 = objc_opt_new();
        [v15 setObject:@"FileProvider Daemon" forKeyedSubscript:@"DEExtensionHostAppKey"];
        [v15 setObject:forCopy forKeyedSubscript:@"domainID"];
        v16 = fp_current_or_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [FPDiagnosticExtensionManager triggerDiagnosticsFor:v16 persistingAt:? completionHandler:?];
        }

        fpExtension = self->fpExtension;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __85__FPDiagnosticExtensionManager_triggerDiagnosticsFor_persistingAt_completionHandler___block_invoke;
        v26[3] = &unk_1E83C0C98;
        v27 = atCopy;
        v30 = &v34;
        v28 = defaultManager;
        v31 = &v38;
        v29 = handlerCopy;
        [(DEExtension *)fpExtension attachmentsForParameters:v15 andHandler:v26];

        goto LABEL_16;
      }

      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        path = [atCopy path];
        fp_prettyPath = [path fp_prettyPath];
        fp_prettyDescription = [v39[5] fp_prettyDescription];
        *buf = 138412546;
        v45 = fp_prettyPath;
        v46 = 2112;
        v47 = fp_prettyDescription;
        _os_log_error_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_ERROR, "[ERROR] Failed creating %@: %@ - won't execute DE", buf, 0x16u);
      }
    }

    else
    {
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        path2 = [atCopy path];
        fp_prettyPath2 = [path2 fp_prettyPath];
        fp_prettyDescription2 = [v39[5] fp_prettyDescription];
        *buf = 138412546;
        v45 = fp_prettyPath2;
        v46 = 2112;
        v47 = fp_prettyDescription2;
        _os_log_error_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_ERROR, "[ERROR] Failed emptying %@: %@ - won't execute DE", buf, 0x16u);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_16:
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);

    goto LABEL_17;
  }

  v18 = fp_current_or_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [FPDiagnosticExtensionManager triggerDiagnosticsFor:v18 persistingAt:? completionHandler:?];
  }

  (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_17:
}

void __85__FPDiagnosticExtensionManager_triggerDiagnosticsFor_persistingAt_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __85__FPDiagnosticExtensionManager_triggerDiagnosticsFor_persistingAt_completionHandler___block_invoke_cold_1(v3, v4);
  }

  if ([v3 count] == 2)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (!v5)
    {
      goto LABEL_23;
    }

    v6 = v5;
    v7 = *v37;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        v10 = [v9 path];
        v11 = [v10 lastPathComponent];

        v12 = [*(a1 + 32) URLByAppendingPathComponent:v11];
        if (([v11 isEqualToString:@"fp-dump.txt"] & 1) != 0 || objc_msgSend(v11, "hasPrefix:", @"FileProviderDiagnosticLogs"))
        {
          v13 = *(a1 + 40);
          v14 = [v9 path];
          v15 = *(*(a1 + 64) + 8);
          v35 = *(v15 + 40);
          LOBYTE(v13) = [v13 copyItemAtURL:v14 toURL:v12 error:&v35];
          objc_storeStrong((v15 + 40), v35);
          *(*(*(a1 + 56) + 8) + 24) = v13;

          if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
          {
            v21 = fp_current_or_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v32 = [v9 path];
              v31 = [v32 path];
              v25 = [v31 fp_prettyPath];
              v30 = [v12 path];
              v26 = [v30 fp_prettyPath];
              v27 = [*(*(*(a1 + 64) + 8) + 40) fp_prettyDescription];
              *buf = 138412802;
              v41 = v25;
              v42 = 2112;
              v43 = v26;
              v44 = 2112;
              v45 = v27;
              _os_log_error_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_ERROR, "[ERROR] Failed copy output %@ -> %@: %@", buf, 0x20u);

LABEL_21:
            }

LABEL_17:

            goto LABEL_18;
          }

          v16 = [v9 deleteOnAttach];
          v17 = [v16 BOOLValue];

          if (v17)
          {
            v18 = *(a1 + 40);
            v19 = [v9 path];
            v20 = *(*(a1 + 64) + 8);
            v34 = *(v20 + 40);
            LOBYTE(v18) = [v18 removeItemAtURL:v19 error:&v34];
            objc_storeStrong((v20 + 40), v34);

            if ((v18 & 1) == 0)
            {
              v21 = fp_current_or_default_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v32 = [v9 path];
                v22 = [v32 path];
                v23 = [v22 fp_prettyPath];
                v24 = [*(*(*(a1 + 64) + 8) + 40) fp_prettyDescription];
                *buf = 138412546;
                v41 = v23;
                v42 = 2112;
                v43 = v24;
                _os_log_error_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_ERROR, "[ERROR] Failed remove output %@ after copy: %@", buf, 0x16u);

                goto LABEL_21;
              }

              goto LABEL_17;
            }
          }
        }

LABEL_18:

        ++v8;
      }

      while (v6 != v8);
      v28 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      v6 = v28;
      if (!v28)
      {
LABEL_23:

        v3 = v29;
        break;
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __85__FPDiagnosticExtensionManager_triggerDiagnosticsFor_persistingAt_completionHandler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] DE returned %lu attachments", &v3, 0xCu);
}

@end