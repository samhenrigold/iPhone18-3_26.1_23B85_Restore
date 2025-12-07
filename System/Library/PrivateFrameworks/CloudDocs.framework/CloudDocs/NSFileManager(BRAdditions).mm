@interface NSFileManager(BRAdditions)
- (BOOL)br_putBackTrashedItemAtURL:()BRAdditions resultingURL:error:;
- (BOOL)br_trashItemAtURL:()BRAdditions resultingURL:error:;
- (uint64_t)br_forceMoveItemAtURL:()BRAdditions toURL:error:;
- (uint64_t)br_movePromisedItemAtURL:()BRAdditions toURL:error:;
- (uint64_t)br_putBackURLForTrashedItemAtURL:()BRAdditions error:;
- (void)br_setFavoriteRank:()BRAdditions onItemAtURL:;
- (void)br_setLastOpenDate:()BRAdditions onItemAtURL:;
- (void)br_setPutBackInfoOnItemAtURL:()BRAdditions;
@end

@implementation NSFileManager(BRAdditions)

- (uint64_t)br_movePromisedItemAtURL:()BRAdditions toURL:error:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
  if (v6)
  {
    v7 = brc_bread_crumbs("[NSFileManager(BRAdditions) br_movePromisedItemAtURL:toURL:error:]", 54);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v11 = "(passed to caller)";
      v12 = 136315906;
      v13 = "[NSFileManager(BRAdditions) br_movePromisedItemAtURL:toURL:error:]";
      v14 = 2080;
      if (!a5)
      {
        v11 = "(ignored by caller)";
      }

      v15 = v11;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] %s: %s error: %@%@", &v12, 0x2Au);
    }
  }

  if (a5)
  {
    v9 = v6;
    *a5 = v6;
  }

  return 0;
}

- (void)br_setPutBackInfoOnItemAtURL:()BRAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 br_isInSyncedLocation])
  {
    br_logicalURL = [v3 br_logicalURL];

    br_cloudDocsContainer = [br_logicalURL br_cloudDocsContainer];
    v6 = [br_cloudDocsContainer trashRestoreStringForURL:br_logicalURL];
    uRLByDeletingLastPathComponent = [br_logicalURL URLByDeletingLastPathComponent];
    br_itemID = [uRLByDeletingLastPathComponent br_itemID];

    pathComponents = [v6 pathComponents];
    v10 = [pathComponents containsObject:@".Trash"];

    if (v10)
    {
      v11 = brc_bread_crumbs("[NSFileManager(BRAdditions) br_setPutBackInfoOnItemAtURL:]", 75);
      v12 = brc_default_log(1, 0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [NSFileManager(BRAdditions) br_setPutBackInfoOnItemAtURL:];
      }
    }

    else
    {
      br_physicalURL = [br_logicalURL br_physicalURL];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __59__NSFileManager_BRAdditions__br_setPutBackInfoOnItemAtURL___block_invoke;
      v16[3] = &unk_1E7A14A58;
      v17 = v6;
      v18 = br_itemID;
      v15 = [br_physicalURL fp_withReadWriteAccess:v16];

      v11 = v17;
    }
  }

  else
  {
    br_cloudDocsContainer = brc_bread_crumbs("[NSFileManager(BRAdditions) br_setPutBackInfoOnItemAtURL:]", 61);
    v6 = brc_default_log(1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      path = [v3 path];
      *buf = 138412546;
      v20 = path;
      v21 = 2112;
      v22 = br_cloudDocsContainer;
      _os_log_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't set the put back URL of something outside Mobile Docs: %@%@", buf, 0x16u);
    }

    br_logicalURL = v3;
  }
}

- (uint64_t)br_putBackURLForTrashedItemAtURL:()BRAdditions error:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696ABC0] brc_errorMethodNotImplemented:sel_br_putBackURLForTrashedItemAtURL_error_];
  if (v5)
  {
    v6 = brc_bread_crumbs("[NSFileManager(BRAdditions) br_putBackURLForTrashedItemAtURL:error:]", 100);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, 0x90u))
    {
      v10 = "(passed to caller)";
      v11 = 136315906;
      v12 = "[NSFileManager(BRAdditions) br_putBackURLForTrashedItemAtURL:error:]";
      v13 = 2080;
      if (!a4)
      {
        v10 = "(ignored by caller)";
      }

      v14 = v10;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&dword_1AE2A9000, v7, 0x90u, "[ERROR] %s: %s error: %@%@", &v11, 0x2Au);
    }
  }

  if (a4)
  {
    v8 = v5;
    *a4 = v5;
  }

  return 0;
}

- (BOOL)br_trashItemAtURL:()BRAdditions resultingURL:error:
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a3;
  defaultManager = [MEMORY[0x1E69673A8] defaultManager];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  obj = 0;
  v9 = [defaultManager itemForURL:v7 error:&obj];
  objc_storeStrong(&v35, obj);
  v10 = v31[5];
  if (v10)
  {
    v11 = v10;
    v12 = brc_bread_crumbs("[NSFileManager(BRAdditions) br_trashItemAtURL:resultingURL:error:]", 110);
    v13 = brc_default_log(0, 0);
    if (os_log_type_enabled(v13, 0x90u))
    {
      v26 = "(passed to caller)";
      *buf = 136315906;
      *&buf[4] = "[NSFileManager(BRAdditions) br_trashItemAtURL:resultingURL:error:]";
      *&buf[12] = 2080;
      if (!a5)
      {
        v26 = "(ignored by caller)";
      }

      *&buf[14] = v26;
      *&buf[22] = 2112;
      v46 = v11;
      LOWORD(v47) = 2112;
      *(&v47 + 2) = v12;
      _os_log_error_impl(&dword_1AE2A9000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }

    if (a5)
    {
      v14 = v11;
      *a5 = v11;
    }

    v15 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = __Block_byref_object_copy__0;
    *&v47 = __Block_byref_object_dispose__0;
    *(&v47 + 1) = 0;
    v16 = objc_alloc(MEMORY[0x1E6967488]);
    v44 = v9;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    v18 = [v16 initWithItems:v17];

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __67__NSFileManager_BRAdditions__br_trashItemAtURL_resultingURL_error___block_invoke;
    v28[3] = &unk_1E7A14A80;
    v28[4] = buf;
    v28[5] = &v30;
    [v18 setTransformCompletionBlock:v28];
    v19 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v19 addOperation:v18];
    [v18 waitUntilFinished];
    v20 = v31[5];
    v15 = v20 == 0;
    if (v20)
    {
      v21 = v20;
      v22 = brc_bread_crumbs("[NSFileManager(BRAdditions) br_trashItemAtURL:resultingURL:error:]", 128);
      v23 = brc_default_log(0, 0);
      if (os_log_type_enabled(v23, 0x90u))
      {
        v27 = "(passed to caller)";
        *v36 = 136315906;
        v37 = "[NSFileManager(BRAdditions) br_trashItemAtURL:resultingURL:error:]";
        v38 = 2080;
        if (!a5)
        {
          v27 = "(ignored by caller)";
        }

        v39 = v27;
        v40 = 2112;
        v41 = v21;
        v42 = 2112;
        v43 = v22;
        _os_log_error_impl(&dword_1AE2A9000, v23, 0x90u, "[ERROR] %s: %s error: %@%@", v36, 0x2Au);
      }

      if (a5)
      {
        v24 = v21;
        *a5 = v21;
      }
    }

    else if (a4)
    {
      *a4 = *(*&buf[8] + 40);
    }

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v30, 8);
  return v15;
}

- (BOOL)br_putBackTrashedItemAtURL:()BRAdditions resultingURL:error:
{
  v32[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  defaultManager = [MEMORY[0x1E69673A8] defaultManager];
  v9 = [defaultManager itemForURL:v7 error:a5];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E69674A0]);
    v32[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    v12 = [v10 initWithItems:v11 restoreDirectory:0];

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__NSFileManager_BRAdditions__br_putBackTrashedItemAtURL_resultingURL_error___block_invoke;
    v16[3] = &unk_1E7A14AA8;
    v18 = &v20;
    v17 = v7;
    v19 = &v26;
    [v12 setUntrashCompletionBlock:v16];
    v13 = objc_opt_new();
    [v13 addOperation:v12];

    [v12 waitUntilFinished];
    if (a5)
    {
      *a5 = v27[5];
    }

    if (a4)
    {
      *a4 = v21[5];
    }

    v14 = v27[5] == 0;

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)br_setLastOpenDate:()BRAdditions onItemAtURL:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    br_physicalURL = [v6 br_physicalURL];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__NSFileManager_BRAdditions__br_setLastOpenDate_onItemAtURL___block_invoke;
    v10[3] = &unk_1E7A14A58;
    v11 = v5;
    v12 = v7;
    v9 = [br_physicalURL fp_withReadWriteAccess:v10];
  }
}

- (void)br_setFavoriteRank:()BRAdditions onItemAtURL:
{
  v5 = a3;
  br_physicalURL = [a4 br_physicalURL];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__NSFileManager_BRAdditions__br_setFavoriteRank_onItemAtURL___block_invoke;
  v9[3] = &unk_1E7A14AD0;
  v10 = v5;
  v7 = v5;
  v8 = [br_physicalURL fp_withReadWriteAccess:v9];
}

- (uint64_t)br_forceMoveItemAtURL:()BRAdditions toURL:error:
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v16 = 0;
    v10 = [self removeItemAtURL:v9 error:&v16];
    v11 = v16;
    v12 = v11;
    if (v10 & 1) != 0 || ([v11 br_isCocoaErrorCode:4])
    {
      v13 = [self moveItemAtURL:v8 toURL:v9 error:a5];
    }

    else if (a5)
    {
      v15 = v12;
      v13 = 0;
      *a5 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)br_setPutBackInfoOnItemAtURL:()BRAdditions .cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Preventing setting the put back info path when parented by .Trash: %@%@", v1, 0x16u);
}

@end