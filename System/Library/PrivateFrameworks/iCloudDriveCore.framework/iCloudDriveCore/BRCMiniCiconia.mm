@interface BRCMiniCiconia
- (BOOL)_cleanupOldCiconiaDomains:(id *)domains;
- (BOOL)_fsRemoveWorkDirectory:(id *)directory;
- (BOOL)_removeDiagnosticsDirectoryAtURL:(id)l withError:(id *)error;
- (BOOL)_removeFPDomain:(id)domain error:(id *)error;
- (BOOL)_removeWorkDirectory:(id *)directory;
- (BRCMiniCiconia)init;
- (void)_setupExtensionID;
- (void)cleanupCiconiaAtURL:(id)l diagnosticsURL:(id)rL completionHandler:(id)handler;
@end

@implementation BRCMiniCiconia

- (BRCMiniCiconia)init
{
  v7.receiver = self;
  v7.super_class = BRCMiniCiconia;
  v2 = [(BRCMiniCiconia *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BRCMiniCiconia", v3);

    workQueue = v2->_workQueue;
    v2->_workQueue = v4;
  }

  return v2;
}

- (void)_setupExtensionID
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentPersona = [mEMORY[0x277D77BF8] currentPersona];

  isDataSeparatedPersona = [currentPersona isDataSeparatedPersona];
  v5 = isDataSeparatedPersona;
  v6 = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  extensionID = self->_extensionID;
  if (isDataSeparatedPersona)
  {
    v6 = @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
  }

  self->_extensionID = &v6->isa;

  self->_isDataSeparated = v5;
}

- (BOOL)_removeFPDomain:(id)domain error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__36;
  v34 = __Block_byref_object_dispose__36;
  v35 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *v37 = domainCopy;
    *&v37[8] = 2112;
    *&v37[10] = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Will remove domain: %@%@", buf, 0x16u);
  }

  v9 = 0;
  v10 = MEMORY[0x277D85DD0];
  while (1)
  {
    v11 = MEMORY[0x277CC64A8];
    extensionID = self->_extensionID;
    v25[0] = v10;
    v25[1] = 3221225472;
    v25[2] = __40__BRCMiniCiconia__removeFPDomain_error___block_invoke;
    v25[3] = &unk_278505280;
    v29 = v9;
    v13 = domainCopy;
    v26 = v13;
    v28 = &v30;
    v14 = v6;
    v27 = v14;
    [v11 removeDomain:v13 forProviderIdentifier:extensionID completionHandler:v25];
    v15 = dispatch_time(0, 900000000000);
    if (dispatch_semaphore_wait(v14, v15))
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v37 = v9;
        *&v37[4] = 2112;
        *&v37[6] = domainCopy;
        *&v37[14] = 2112;
        *&v37[16] = v16;
        _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] %d: removeDomain:%@ timed out%@", buf, 0x1Cu);
      }

      v18 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:60];
      v19 = v31[5];
      v31[5] = v18;
    }

    v20 = v31[5];
    if (!v20 || ![v20 br_isNSXPCConnectionError])
    {
      break;
    }

    sleep(1u);

    if (++v9 == 3)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  v21 = v31[5];
  if (error && v21)
  {
    *error = v21;
    v21 = v31[5];
  }

  v22 = v21 == 0;

  _Block_object_dispose(&v30, 8);
  return v22;
}

void __40__BRCMiniCiconia__removeFPDomain_error___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 32);
      v8 = [v3 fp_prettyDescription];
      v12[0] = 67109890;
      v12[1] = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] %d: removeDomain:%@ failed: %@%@", v12, 0x26u);
    }
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;
  v11 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_cleanupOldCiconiaDomains:(id *)domains
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCMiniCiconia _cleanupOldCiconiaDomains:];
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__36;
  v49 = __Block_byref_object_dispose__36;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__36;
  v43 = __Block_byref_object_dispose__36;
  v44 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = 0;
  v7 = MEMORY[0x277D85DD0];
  while (1)
  {
    v8 = MEMORY[0x277CC64A8];
    extensionID = self->_extensionID;
    v34[0] = v7;
    v34[1] = 3221225472;
    v34[2] = __44__BRCMiniCiconia__cleanupOldCiconiaDomains___block_invoke;
    v34[3] = &unk_2785052A8;
    v38 = v6;
    v36 = &v45;
    v37 = &v39;
    dsema = v5;
    v35 = dsema;
    [v8 getDomainsForProviderIdentifier:extensionID completionHandler:v34];
    dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
    v10 = v46[5];
    if (!v10 || ([v10 br_isNSXPCConnectionError] & 1) == 0)
    {
      break;
    }

    sleep(1u);

    if (++v6 == 3)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v40[5];
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v57 count:16];
  if (v12)
  {
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if ([v15 br_isCiconiaDomain])
        {
          v16 = brc_bread_crumbs();
          v17 = brc_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v52 = v15;
            v53 = 2112;
            v54 = v16;
            _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] Found old domain %@, dropping%@", buf, 0x16u);
          }

          v29 = 0;
          [(BRCMiniCiconia *)self _removeFPDomain:v15 error:&v29];
          v18 = v29;
          v19 = v29;
          if (v19 && !v46[5])
          {
            v20 = brc_bread_crumbs();
            v21 = brc_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              fp_prettyDescription = [v19 fp_prettyDescription];
              *buf = 138412802;
              v52 = v15;
              v53 = 2112;
              v54 = fp_prettyDescription;
              v55 = 2112;
              v56 = v20;
              _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to remove old domain %@: %@%@", buf, 0x20u);
            }

            objc_storeStrong(v46 + 5, v18);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v30 objects:v57 count:16];
    }

    while (v12);
  }

  v23 = v46[5];
  if (domains && v23)
  {
    v23 = v23;
    *domains = v23;
  }

  v24 = v23 == 0;

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  return v24;
}

void __44__BRCMiniCiconia__cleanupOldCiconiaDomains___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      v10 = [v6 fp_prettyDescription];
      v14[0] = 67109634;
      v14[1] = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] %d: enumerating domains failed: %@%@", v14, 0x1Cu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
  v13 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_removeDiagnosticsDirectoryAtURL:(id)l withError:(id *)error
{
  path = [l path];
  v6 = BRCRecursiveRemove(path);

  if (error && v6 < 0)
  {
    *error = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:*__error()];
  }

  return v6 >= 0;
}

- (BOOL)_fsRemoveWorkDirectory:(id *)directory
{
  v5 = 5;
  while (1)
  {
    path = [(NSURL *)self->_targetURL path];
    v7 = BRCRemoveFolder(path, 0, 0, 1);

    if ((v7 & 0x80000000) == 0)
    {
      break;
    }

    v8 = *__error();
    if (*__error() != 2)
    {
      sleep(1u);
      if (--v5)
      {
        continue;
      }
    }

    if (directory)
    {
      *directory = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:v8];
    }

    return v7 >= 0;
  }

  return v7 >= 0;
}

- (BOOL)_removeWorkDirectory:(id *)directory
{
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCMiniCiconia _removeWorkDirectory:];
  }

  if (self->_isDataSeparated)
  {
    v27 = 1;
    v7 = container_create_or_lookup_path_for_current_user();
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0x277CBEBC0];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      v11 = [v9 fileURLWithPath:v10 isDirectory:1];
      v12 = [v11 URLByAppendingPathComponent:@"Library/CloudStorage/"];

      free(v8);
      v13 = [v12 URLByAppendingPathComponent:@"iCloudDrive𝛃-Ciconia"];
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [(BRCMiniCiconia *)v13 _removeWorkDirectory:v14, v15];
      }

      path = [v13 path];
      v17 = BRCRemoveFolder(path, 0, 0, 1);

      if (v17 < 0)
      {
        v18 = *__error();
        v19 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, 0x90u))
        {
          [(BRCMiniCiconia *)v19 _removeWorkDirectory:v18, v20];
        }

        *__error() = v18;
      }
    }

    else
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        [(BRCMiniCiconia *)&v27 _removeWorkDirectory:v12, v13];
      }
    }
  }

  if ([(BRCMiniCiconia *)self _fsRemoveWorkDirectory:directory])
  {
    return 1;
  }

  if ([*directory br_isPOSIXErrorCode:2])
  {
    return 0;
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [BRCMiniCiconia _removeWorkDirectory:];
  }

  v24 = [(NSURL *)self->_targetURL URLByAppendingPathComponent:@"files"];
  fpfs_enable_fault_handling();
  path2 = [v24 path];
  MEMORY[0x22AA49E00]([path2 fileSystemRepresentation], 0);

  v21 = [(BRCMiniCiconia *)self _fsRemoveWorkDirectory:directory];
  return v21;
}

- (void)cleanupCiconiaAtURL:(id)l diagnosticsURL:(id)rL completionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BRCMiniCiconia_cleanupCiconiaAtURL_diagnosticsURL_completionHandler___block_invoke;
  block[3] = &unk_2785052D0;
  objc_copyWeak(&v19, &location);
  v17 = rLCopy;
  v18 = handlerCopy;
  v16 = lCopy;
  v12 = rLCopy;
  v13 = lCopy;
  v14 = handlerCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __71__BRCMiniCiconia_cleanupCiconiaAtURL_diagnosticsURL_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 2, *(a1 + 32));
    [v3 _setupExtensionID];
    v7 = 0;
    [v3 _cleanupOldCiconiaDomains:&v7];
    v4 = v7;
    v6 = v4;
    [v3 _removeWorkDirectory:&v6];
    v5 = v6;

    [v3 _removeDiagnosticsDirectoryAtURL:*(a1 + 40) withError:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_removeWorkDirectory:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  v6 = [v5 fp_prettyPath];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Removing FP domain on disk: %@%@", v7, 0x16u);
}

- (void)_removeWorkDirectory:(os_log_t)log .cold.3(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] Failed removing domain %{errno}d%@", v3, 0x12u);
}

- (void)_removeWorkDirectory:(os_log_t)log .cold.4(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 134218242;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] Error: %lld%@", &v4, 0x16u);
}

@end