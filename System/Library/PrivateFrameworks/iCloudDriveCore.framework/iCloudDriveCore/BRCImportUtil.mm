@interface BRCImportUtil
+ (BOOL)isFileNameIgnoredForSync:(id)sync isRegFile:(BOOL)file;
+ (BOOL)reimportItemsBelowItemWithIdentifier:(id)identifier error:(id *)error;
+ (BOOL)shouldFileIDBeIgnoredAsNonMigrated:(id)migrated docID:(id)d deviceID:(id)iD isRegFile:(BOOL)file rowid:(id)rowid outItemURL:(id *)l isBusyDate:(BOOL *)date isIgnoredFromSync:(BOOL *)self0;
+ (void)forceIngestionForItemID:(id)d completionHandler:(id)handler;
+ (void)forceLatestVersionOnDiskForItemID:(id)d completionHandler:(id)handler;
+ (void)reimportItemsBelowItemWithIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)requestModificationOfItemIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation BRCImportUtil

+ (BOOL)reimportItemsBelowItemWithIdentifier:(id)identifier error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__29;
  v21 = __Block_byref_object_dispose__29;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__BRCImportUtil_reimportItemsBelowItemWithIdentifier_error___block_invoke;
  v14[3] = &unk_278504630;
  v16 = &v17;
  v7 = v6;
  v15 = v7;
  [BRCImportUtil reimportItemsBelowItemWithIdentifier:identifierCopy completionHandler:v14];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v18[5];
  if (v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      v13 = "(passed to caller)";
      *buf = 136315906;
      v24 = "+[BRCImportUtil reimportItemsBelowItemWithIdentifier:error:]";
      v25 = 2080;
      if (!error)
      {
        v13 = "(ignored by caller)";
      }

      v26 = v13;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v11 = v8;
    *error = v8;
  }

  _Block_object_dispose(&v17, 8);
  return v8 == 0;
}

void __60__BRCImportUtil_reimportItemsBelowItemWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

+ (void)reimportItemsBelowItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BRCImportUtil reimportItemsBelowItemWithIdentifier:identifierCopy completionHandler:?];
  }

  br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  if (br_sharedProviderManager)
  {
    v10 = MEMORY[0x277CFAF00];
    v11 = [BRCUserDefaults defaultsForMangledID:0];
    xpcConnectionFailureRetries = [v11 xpcConnectionFailureRetries];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke;
    v19[3] = &unk_2785014D0;
    v20 = identifierCopy;
    v21 = handlerCopy;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_7;
    v16[3] = &unk_278504658;
    v17 = br_sharedProviderManager;
    v18 = v20;
    [v10 executeAsyncXPCWithMaxRetries:xpcConnectionFailureRetries completion:v19 xpcInvokeBlock:v16];

    v13 = v20;
  }

  else
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [BRCImportUtil reimportItemsBelowItemWithIdentifier:v14 completionHandler:v15];
    }

    v13 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

void __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] failed to re-import items under %@ with error %@%@", &v7, 0x20u);
    }
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_278501F20;
  v8 = v3;
  v6 = v3;
  [v5 reimportItemsBelowItemWithIdentifier:v4 completionHandler:v7];
}

+ (void)requestModificationOfItemIdentifier:(id)identifier completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BRCImportUtil requestModificationOfItemIdentifier:identifierCopy completionHandler:?];
  }

  br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  v10 = br_sharedProviderManager;
  if (br_sharedProviderManager)
  {
    [br_sharedProviderManager requestModificationOfFields:1 forItemWithIdentifier:identifierCopy options:1 completionHandler:handlerCopy];
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't compute fp manager for current account%@", &v13, 0xCu);
    }
  }
}

+ (void)forceIngestionForItemID:(id)d completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    +[BRCImportUtil forceIngestionForItemID:completionHandler:];
  }

  v8 = [MEMORY[0x277CC6400] br_fpItemIDFromItemIdentifier:dCopy];
  if (v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      selfCopy = dCopy;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Forcing Ingestion for itemIdentifier = %@ and itemID = %@%@", buf, 0x20u);
    }

    v11 = MEMORY[0x277CFAF00];
    v12 = [BRCUserDefaults defaultsForMangledID:0];
    xpcConnectionFailureRetries = [v12 xpcConnectionFailureRetries];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__BRCImportUtil_forceIngestionForItemID_completionHandler___block_invoke;
    v17[3] = &unk_278504680;
    v18 = v8;
    [v11 executeAsyncXPCWithMaxRetries:xpcConnectionFailureRetries completion:handlerCopy xpcInvokeBlock:v17];

    v14 = v18;
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v21 = 2112;
      v22 = dCopy;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Can't find a file provider item ID for %@%@", buf, 0x20u);
    }

    v14 = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:dCopy];
    handlerCopy[2](handlerCopy, v14);
  }
}

void __59__BRCImportUtil_forceIngestionForItemID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CC63A8];
  v4 = a2;
  v5 = [v3 sharedConnection];
  [v5 forceIngestionForItemID:*(a1 + 32) completionHandler:v4];
}

+ (void)forceLatestVersionOnDiskForItemID:(id)d completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    +[BRCImportUtil forceLatestVersionOnDiskForItemID:completionHandler:];
  }

  v8 = [MEMORY[0x277CC6400] br_fpItemIDFromItemIdentifier:dCopy];
  if (v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412802;
      selfCopy = dCopy;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Propagating To File System for itemIdentifier = %@ and itemID = %@%@", &v14, 0x20u);
    }

    mEMORY[0x277CC63A8] = [MEMORY[0x277CC63A8] sharedConnection];
    [mEMORY[0x277CC63A8] forceLatestVersionOnDiskForItemID:v8 completionHandler:handlerCopy];
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      selfCopy = self;
      v16 = 2112;
      v17 = dCopy;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Can't find a file provider item ID for %@%@", &v14, 0x20u);
    }

    mEMORY[0x277CC63A8] = [MEMORY[0x277CCA9B8] brc_errorItemNotFound:dCopy];
    handlerCopy[2](handlerCopy, 0, mEMORY[0x277CC63A8]);
  }
}

+ (BOOL)isFileNameIgnoredForSync:(id)sync isRegFile:(BOOL)file
{
  fileCopy = file;
  syncCopy = sync;
  if (!syncCopy)
  {
    +[BRCImportUtil isFileNameIgnoredForSync:isRegFile:];
  }

  if ([syncCopy br_isExcludedFromSyncInFPFSIsFile:fileCopy])
  {
    br_isSideFaultName = 1;
  }

  else
  {
    br_isSideFaultName = [syncCopy br_isSideFaultName];
  }

  return br_isSideFaultName;
}

+ (BOOL)shouldFileIDBeIgnoredAsNonMigrated:(id)migrated docID:(id)d deviceID:(id)iD isRegFile:(BOOL)file rowid:(id)rowid outItemURL:(id *)l isBusyDate:(BOOL *)date isIgnoredFromSync:(BOOL *)self0
{
  fileCopy = file;
  v54 = *MEMORY[0x277D85DE8];
  migratedCopy = migrated;
  dCopy = d;
  rowidCopy = rowid;
  v43 = 0;
  v19 = [MEMORY[0x277CBEBC0] brc_fileURLWithVolumeDeviceID:iD fileID:migratedCopy isDirectory:0 withError:&v43];
  v20 = v43;
  if (l)
  {
    v21 = v19;
    *l = v19;
  }

  v42 = 0;
  if (v19)
  {
    v22 = v20 == 0;
  }

  else
  {
    v22 = 0;
  }

  if (!v22)
  {
    if ([v20 br_isPOSIXErrorCode:2])
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v45 = rowidCopy;
        v46 = 2112;
        v47 = dCopy;
        v48 = 2112;
        v49 = migratedCopy;
        v50 = 2112;
        v51 = v23;
        _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[NOTICE] item with rowID %@ docID %@ and fileID %@ was not found on disk%@", buf, 0x2Au);
      }

LABEL_20:

      v36 = 1;
      goto LABEL_36;
    }

    v34 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, 0x90u))
    {
      *buf = 138413314;
      v45 = rowidCopy;
      v46 = 2112;
      v47 = dCopy;
      v48 = 2112;
      v49 = migratedCopy;
      v50 = 2112;
      v51 = v20;
      v52 = 2112;
      v53 = v34;
      _os_log_error_impl(&dword_223E7A000, v35, 0x90u, "[ERROR] failed getting URL of item with rowID %@ docID %@ and fileID %@: %@%@", buf, 0x34u);
    }

    goto LABEL_17;
  }

  if (([v19 br_isInSyncedLocation] & 1) == 0)
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      path = [v19 path];
      fp_prettyPath = [path fp_prettyPath];
      *buf = 138413314;
      v45 = rowidCopy;
      v46 = 2112;
      v47 = dCopy;
      v48 = 2112;
      v49 = migratedCopy;
      v50 = 2112;
      v51 = fp_prettyPath;
      v52 = 2112;
      v53 = v23;
      _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[NOTICE] item with rowID %@ docID %@ and fileID %@ is not located in synced location: %@%@", buf, 0x34u);
    }

    goto LABEL_20;
  }

  br_containerID = [v19 br_containerID];

  if (!br_containerID)
  {
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    path2 = [v19 path];
    fp_prettyPath2 = [path2 fp_prettyPath];
    *buf = 138413314;
    v45 = rowidCopy;
    v46 = 2112;
    v47 = dCopy;
    v48 = 2112;
    v49 = migratedCopy;
    v50 = 2112;
    v51 = fp_prettyPath2;
    v52 = 2112;
    v53 = v29;
    v33 = "[NOTICE] item with rowID %@ docID %@ and fileID %@ is located in an invalid container: %@%@";
    goto LABEL_33;
  }

  lastPathComponent = [v19 lastPathComponent];
  v28 = [self isFileNameIgnoredForSync:lastPathComponent isRegFile:fileCopy];

  if (v28)
  {
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    path2 = [v19 path];
    fp_prettyPath2 = [path2 fp_prettyPath];
    *buf = 138413314;
    v45 = rowidCopy;
    v46 = 2112;
    v47 = dCopy;
    v48 = 2112;
    v49 = migratedCopy;
    v50 = 2112;
    v51 = fp_prettyPath2;
    v52 = 2112;
    v53 = v29;
    v33 = "[NOTICE] item with rowID %@ docID %@ and fileID %@ is ignored from sync: %@%@";
    goto LABEL_33;
  }

  if ([v19 br_getBirthDate:&v42] && BRCIsBusyDate(v42))
  {
    sync = date;
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    path2 = [v19 path];
    fp_prettyPath2 = [path2 fp_prettyPath];
    *buf = 138413314;
    v45 = rowidCopy;
    v46 = 2112;
    v47 = dCopy;
    v48 = 2112;
    v49 = migratedCopy;
    v50 = 2112;
    v51 = fp_prettyPath2;
    v52 = 2112;
    v53 = v29;
    v33 = "[NOTICE] item with rowID %@ docID %@ and fileID %@ is busy date: %@%@";
    goto LABEL_33;
  }

  if ([v19 br_isIgnoredByFileProvider])
  {
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    path2 = [v19 path];
    fp_prettyPath2 = [path2 fp_prettyPath];
    *buf = 138413314;
    v45 = rowidCopy;
    v46 = 2112;
    v47 = dCopy;
    v48 = 2112;
    v49 = migratedCopy;
    v50 = 2112;
    v51 = fp_prettyPath2;
    v52 = 2112;
    v53 = v29;
    v33 = "[NOTICE] item with rowID %@ docID %@ and fileID %@ is ignored by FP: %@%@";
    goto LABEL_33;
  }

  if (![v19 br_isRootOwned])
  {
    v34 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, 0x90u))
    {
      path3 = [v19 path];
      fp_prettyPath3 = [path3 fp_prettyPath];
      *buf = 138413314;
      v45 = rowidCopy;
      v46 = 2112;
      v47 = dCopy;
      v48 = 2112;
      v49 = migratedCopy;
      v50 = 2112;
      v51 = fp_prettyPath3;
      v52 = 2112;
      v53 = v34;
      _os_log_error_impl(&dword_223E7A000, v35, 0x90u, "[ERROR] item with rowID %@ docID %@ and fileID %@ got left behind when migrating: %@%@", buf, 0x34u);
    }

LABEL_17:

    v36 = 0;
    goto LABEL_36;
  }

  v29 = brc_bread_crumbs();
  v30 = brc_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    path2 = [v19 path];
    fp_prettyPath2 = [path2 fp_prettyPath];
    *buf = 138413314;
    v45 = rowidCopy;
    v46 = 2112;
    v47 = dCopy;
    v48 = 2112;
    v49 = migratedCopy;
    v50 = 2112;
    v51 = fp_prettyPath2;
    v52 = 2112;
    v53 = v29;
    v33 = "[NOTICE] item with rowID %@ docID %@ and fileID %@ is root owned: %@%@";
LABEL_33:
    _os_log_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEFAULT, v33, buf, 0x34u);
  }

LABEL_34:

  v36 = 1;
  if (sync)
  {
    *sync = 1;
  }

LABEL_36:

  return v36;
}

+ (void)reimportItemsBelowItemWithIdentifier:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Starting BRCImportUtil::reimportItemsBelowItemWithIdentifier::%@%@", v3, DWORD2(v3));
}

+ (void)reimportItemsBelowItemWithIdentifier:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't compute fp manager for current account%@", &v2, 0xCu);
}

void __72__BRCImportUtil_reimportItemsBelowItemWithIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Successfully asked file provider to re-import all %@ items%@", v3, DWORD2(v3));
}

+ (void)requestModificationOfItemIdentifier:(uint64_t)a1 completionHandler:.cold.1(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] Starting BRCImportUtil::requestModificationOfItemIdentifier::%@%@", v3, DWORD2(v3));
}

+ (void)forceIngestionForItemID:completionHandler:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v8) = 138412290;
    *(&v8 + 4) = v0;
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: itemIdentifier%@", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

+ (void)forceLatestVersionOnDiskForItemID:completionHandler:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v8) = 138412290;
    *(&v8 + 4) = v0;
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: itemIdentifier%@", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

+ (void)isFileNameIgnoredForSync:isRegFile:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v8) = 138412290;
    *(&v8 + 4) = v0;
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: fileName%@", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

@end