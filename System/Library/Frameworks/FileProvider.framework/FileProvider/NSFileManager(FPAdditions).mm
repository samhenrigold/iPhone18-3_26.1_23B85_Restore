@interface NSFileManager(FPAdditions)
- (id)fp_putBackURLForTrashedItemAtURL:()FPAdditions error:;
- (id)fp_trashURLForItemAtURL:()FPAdditions error:;
- (uint64_t)fp_trashItemAtURL:()FPAdditions resultingItemURL:error:;
- (void)fp_createPathIfNeeded:()FPAdditions;
- (void)fp_setPutBackInfoOnItemAtURL:()FPAdditions;
@end

@implementation NSFileManager(FPAdditions)

- (uint64_t)fp_trashItemAtURL:()FPAdditions resultingItemURL:error:
{
  v7 = a3;
  v8 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__18;
  v22 = __Block_byref_object_dispose__18;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__NSFileManager_FPAdditions__fp_trashItemAtURL_resultingItemURL_error___block_invoke;
  v11[3] = &unk_1E793D420;
  v11[4] = &v24;
  v11[5] = &v18;
  v11[6] = &v12;
  [v8 trashItemAtURL:v7 completionHandler:v11];
  if (a4)
  {
    *a4 = v19[5];
  }

  if (a5)
  {
    *a5 = v13[5];
  }

  v9 = *(v25 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v9;
}

- (void)fp_createPathIfNeeded:()FPAdditions
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = a3;
  section = __fp_create_section();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(NSFileManager(FPAdditions) *)&section fp_createPathIfNeeded:v3, v4];
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v46 = 0;
  v6 = [defaultManager createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v46];
  v7 = v46;
  v8 = v7;
  if (v6 & 1) != 0 || ([v7 fp_isCocoaErrorCode:516])
  {
    v45 = v8;
    v9 = [defaultManager attributesOfItemAtPath:v3 error:&v45];
    v10 = v45;

    v11 = v10 == 0;
    if (v10)
    {
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = v3;
        [v3 fileSystemRepresentation];
        [v10 fp_prettyDescription];
        objc_claimAutoreleasedReturnValue();
        [NSFileManager(FPAdditions) fp_createPathIfNeeded:];
      }
    }

    fileOwnerAccountName = [v9 fileOwnerAccountName];
    v15 = NSUserName();
    v16 = [fileOwnerAccountName isEqual:v15];

    if ((v16 & 1) == 0)
    {
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        fileOwnerAccountName2 = [v9 fileOwnerAccountName];
        NSUserName();
        objc_claimAutoreleasedReturnValue();
        [NSFileManager(FPAdditions) fp_createPathIfNeeded:];
      }

      v11 = 0;
    }

    if (([v9 filePosixPermissions] & 0x180) == 0)
    {
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v43 = aPcDBLSW[[v9 filePosixPermissions] >> 12];
        if (([v9 filePosixPermissions] & 0x100) != 0)
        {
          v29 = 114;
        }

        else
        {
          v29 = 45;
        }

        v42 = v29;
        if (([v9 filePosixPermissions] & 0x80) != 0)
        {
          v30 = 119;
        }

        else
        {
          v30 = 45;
        }

        HIDWORD(v40) = v30;
        if (([v9 filePosixPermissions] & 0x40) != 0)
        {
          v31 = 120;
        }

        else
        {
          v31 = 45;
        }

        LODWORD(v40) = v31;
        if (([v9 filePosixPermissions] & 0x20) != 0)
        {
          v32 = 114;
        }

        else
        {
          v32 = 45;
        }

        if (([v9 filePosixPermissions] & 0x10) != 0)
        {
          v33 = 119;
        }

        else
        {
          v33 = 45;
        }

        if (([v9 filePosixPermissions] & 8) != 0)
        {
          v34 = 120;
        }

        else
        {
          v34 = 45;
        }

        if (([v9 filePosixPermissions] & 4) != 0)
        {
          v35 = 114;
        }

        else
        {
          v35 = 45;
        }

        filePosixPermissions = [v9 filePosixPermissions];
        filePosixPermissions2 = [v9 filePosixPermissions];
        *buf = 67111424;
        if ((filePosixPermissions & 2) != 0)
        {
          v38 = 119;
        }

        else
        {
          v38 = 45;
        }

        v51 = v43;
        v52 = 1024;
        if (filePosixPermissions2)
        {
          v39 = 120;
        }

        else
        {
          v39 = 45;
        }

        v53 = v42;
        v54 = 1024;
        v55 = HIDWORD(v41);
        v56 = 1024;
        v57 = v41;
        v58 = 1024;
        v59 = v32;
        v60 = 1024;
        v61 = v33;
        v62 = 1024;
        v63 = v34;
        v64 = 1024;
        v65 = v35;
        v66 = 1024;
        v67 = v38;
        v68 = 1024;
        v69 = v39;
        _os_log_fault_impl(&dword_1AAAE1000, v19, OS_LOG_TYPE_FAULT, "[CRIT] created directory doesn't have read/write access for owner (permission: %c%c%c%c%c%c%c%c%c%c)", buf, 0x3Eu);
      }

      v11 = 0;
    }

    v20 = *MEMORY[0x1E696A3A0];
    v21 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A3A0]];
    v22 = *MEMORY[0x1E696A388];
    v23 = [v21 isEqualToString:*MEMORY[0x1E696A388]];

    if (v23)
    {
      v8 = v10;
    }

    else
    {
      v48 = v20;
      v49 = v22;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v44 = v10;
      v25 = [defaultManager setAttributes:v24 ofItemAtPath:v3 error:&v44];
      v8 = v44;

      if ((v25 & 1) == 0)
      {
        v26 = fp_current_or_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          [v8 fp_prettyDescription];
          objc_claimAutoreleasedReturnValue();
          [NSFileManager(FPAdditions) fp_createPathIfNeeded:];
        }
      }
    }

    if (v11)
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [NSFileManager(FPAdditions) fp_createPathIfNeeded:v27];
      }

      goto LABEL_30;
    }
  }

  else
  {
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      [v8 fp_prettyDescription];
      objc_claimAutoreleasedReturnValue();
      [NSFileManager(FPAdditions) fp_createPathIfNeeded:];
    }
  }

  v27 = fp_current_or_default_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [(NSFileManager(FPAdditions) *)v3 fp_createPathIfNeeded:v27];
  }

LABEL_30:

  __fp_leave_section_Debug(&section);
}

- (id)fp_trashURLForItemAtURL:()FPAdditions error:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  +[FPFrameworkOverridesIterator allOverrides];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = *v18;
  while (2)
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v17 + 1) + 8 * i);
      if (objc_opt_respondsToSelector())
      {
        v16 = 0;
        v11 = [v10 FPTrashURLForItemAtURL:v5 error:&v16];
        v12 = v16;
        v13 = v12;
        if (v12)
        {
          if (a4)
          {
            v14 = v12;
            v7 = 0;
            *a4 = v13;
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          if (!v11)
          {
            continue;
          }

          v7 = v11;
        }

        goto LABEL_17;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_17:

  return v7;
}

- (id)fp_putBackURLForTrashedItemAtURL:()FPAdditions error:
{
  v5 = a3;
  v6 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  FPPrecheckTCCReadAccess();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__18;
  v20 = __Block_byref_object_dispose__18;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__18;
  v14 = __Block_byref_object_dispose__18;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__NSFileManager_FPAdditions__fp_putBackURLForTrashedItemAtURL_error___block_invoke;
  v9[3] = &unk_1E793D448;
  v9[4] = &v16;
  v9[5] = &v10;
  [v6 putBackURLForTrashedItemAtURL:v5 completionHandler:v9];
  if (a4)
  {
    *a4 = v11[5];
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

- (void)fp_setPutBackInfoOnItemAtURL:()FPAdditions
{
  v3 = a3;
  v4 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__NSFileManager_FPAdditions__fp_setPutBackInfoOnItemAtURL___block_invoke;
  v6[3] = &unk_1E7939C00;
  v7 = v3;
  v5 = v3;
  [v4 setPutBackInfoOnItemAtURL:v5 completionHandler:v6];
}

- (void)fp_createPathIfNeeded:()FPAdditions .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 134218242;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx creating '%@'", &v4, 0x16u);
}

- (void)fp_createPathIfNeeded:()FPAdditions .cold.2()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_9(&dword_1AAAE1000, "[CRIT] can't create directory at '%@': %@", v4, v5);
}

- (void)fp_createPathIfNeeded:()FPAdditions .cold.3()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9_0(v1, v2, v3, 4.8151e-34);
  OUTLINED_FUNCTION_2_9(&dword_1AAAE1000, "[CRIT] can't retrieve attributes of item at '%s': %@", v4, v5);
}

- (void)fp_createPathIfNeeded:()FPAdditions .cold.4()
{
  OUTLINED_FUNCTION_19();
  v2 = v1;
  OUTLINED_FUNCTION_9_0(v1, v3, v4, 5.778e-34);
  OUTLINED_FUNCTION_2_9(&dword_1AAAE1000, "[CRIT] created directory has a wrong owner (value: %@, expected: %@)", v5, v6);
}

- (void)fp_createPathIfNeeded:()FPAdditions .cold.5()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_2_9(&dword_1AAAE1000, "[CRIT] can't protect directory at '%@': %@", v4, v5);
}

- (void)fp_createPathIfNeeded:()FPAdditions .cold.6(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Errors where encountered while setting up %@ as expected. You may experience troubles.", &v2, 0xCu);
}

@end