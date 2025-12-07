@interface APConfigurationResponseHandler
- (APConfigurationResponseHandler)init;
- (BOOL)_copyCurrentConfigToTraverse;
- (BOOL)_createSharedFolderDirectoryIfNeeded;
- (BOOL)_createTempDirectory;
- (BOOL)_isCancelled;
- (BOOL)_removeTempDirectory;
- (BOOL)_replaceConfigWithNewHierarchy;
- (BOOL)_testingFlag;
- (BOOL)_writeCompressedFileWithData:(id)data atPath:(id)path;
- (BOOL)processResponseWithData:(id)data;
- (id)_tempConfigPath;
- (int64_t)_configurationVersion;
- (int64_t)_processData:(id)data;
- (int64_t)_traverseDirectoryAtPath:(id)path replacingConfigurationAtPath:(id)atPath;
- (void)_sendCoreAnalyticsWithUpdateStatus:(int64_t)status version:(int64_t)version;
- (void)cancelProcess;
@end

@implementation APConfigurationResponseHandler

- (APConfigurationResponseHandler)init
{
  v23.receiver = self;
  v23.super_class = APConfigurationResponseHandler;
  v4 = [(APConfigurationResponseHandler *)&v23 init];
  if (v4)
  {
    v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v2, v3);
    fileManager = v4->_fileManager;
    v4->_fileManager = v5;

    v9 = objc_msgSend__tempConfigPath(v4, v7, v8);
    pathToTempDir = v4->_pathToTempDir;
    v4->_pathToTempDir = v9;

    v13 = objc_msgSend_configSystemDirectoryPath(APConfigurationMediator, v11, v12);
    pathToConfig = v4->_pathToConfig;
    v4->_pathToConfig = v13;

    v16 = objc_msgSend_stringByAppendingPathComponent_(v4->_pathToTempDir, v15, @"APCS-T");
    pathToTraverse = v4->_pathToTraverse;
    v4->_pathToTraverse = v16;

    v18 = objc_alloc(MEMORY[0x1E69861D8]);
    v20 = objc_msgSend_initWithOptions_(v18, v19, 1);
    lock = v4->_lock;
    v4->_lock = v20;

    v4->_cancelled = 0;
  }

  return v4;
}

- (BOOL)processResponseWithData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__processData_(self, a2, data);
  v5 = [APVersionHelper alloc];
  v6 = objc_alloc_init(APVersionData);
  v8 = objc_msgSend_initWithDatasource_(v5, v7, v6);

  v11 = objc_msgSend_systemVersion(v8, v9, v10);
  v12 = APLogForCategory();
  v13 = v12;
  if (v4 == 1200)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = v11;
      _os_log_impl(&dword_1CA1CE000, v13, OS_LOG_TYPE_DEFAULT, "Configuration system update completed successfully v%lu.", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v17 = v11;
    v18 = 2048;
    v19 = v4;
    _os_log_impl(&dword_1CA1CE000, v13, OS_LOG_TYPE_ERROR, "Configuration system update failed v%lu, Status: %ld.", buf, 0x16u);
  }

  if (v4 != 1513)
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"Configuration system update failed v%lu, Status: %ld.", v11, v4);
    CreateDiagnosticReport();
LABEL_8:
  }

  objc_msgSend__sendCoreAnalyticsWithUpdateStatus_version_(self, v14, v4, v11);

  return v4 == 1200;
}

- (void)cancelProcess
{
  v9 = objc_msgSend_lock(self, a2, v2);
  objc_msgSend_lock(v9, v4, v5);
  objc_msgSend_setCancelled_(self, v6, 1);
  objc_msgSend_unlock(v9, v7, v8);
}

- (BOOL)_isCancelled
{
  selfCopy = self;
  v4 = objc_msgSend_lock(self, a2, v2);
  objc_msgSend_lock(v4, v5, v6);
  LOBYTE(selfCopy) = objc_msgSend_cancelled(selfCopy, v7, v8);
  objc_msgSend_unlock(v4, v9, v10);

  return selfCopy;
}

- (int64_t)_processData:(id)data
{
  dataCopy = data;
  if (!objc_msgSend__createTempDirectory(self, v5, v6))
  {
    v11 = 1501;
    goto LABEL_10;
  }

  if (!objc_msgSend__isCancelled(self, v7, v8))
  {
    v12 = objc_msgSend_pathToTempDir(self, v9, v10);
    v14 = objc_msgSend_stringByAppendingPathComponent_(v12, v13, @"APCS.tar.gz");

    if (objc_msgSend__writeCompressedFileWithData_atPath_(self, v15, dataCopy, v14))
    {
      if (!objc_msgSend__isCancelled(self, v16, v17))
      {
        if ((objc_msgSend__copyCurrentConfigToTraverse(self, v18, v19) & 1) == 0)
        {
          objc_msgSend__removeTempDirectory(self, v21, v22);
          v11 = 1503;
          goto LABEL_9;
        }

        if (!objc_msgSend__isCancelled(self, v21, v22))
        {
          v23 = objc_alloc_init(APConfigurationDecompressor);
          v26 = objc_msgSend_pathToTempDir(self, v24, v25);
          v28 = objc_msgSend_stringByAppendingPathComponent_(v26, v27, @"APCS.tar");

          v30 = objc_msgSend_decompressTarAtPath_toPath_(v23, v29, v14, v28);
          if (v30 == 1200)
          {
            if (objc_msgSend__isCancelled(self, v31, v32))
            {
              objc_msgSend__removeTempDirectory(self, v33, v34);
              v11 = 1513;
            }

            else
            {
              v35 = objc_msgSend_pathToTempDir(self, v33, v34);
              v37 = objc_msgSend_stringByAppendingPathComponent_(v35, v36, @"APCS");

              v40 = objc_msgSend_pathToTraverse(self, v38, v39);
              v11 = objc_msgSend__traverseDirectoryAtPath_replacingConfigurationAtPath_(self, v41, v37, v40);

              if (v11 == 1200)
              {
                if (objc_msgSend__isCancelled(self, v42, v43))
                {
                  objc_msgSend__removeTempDirectory(self, v44, v45);
                  v11 = 1513;
                }

                else
                {
                  v46 = objc_msgSend__replaceConfigWithNewHierarchy(self, v44, v45);
                  objc_msgSend__removeTempDirectory(self, v47, v48);
                  if (v46)
                  {
                    v11 = 1200;
                  }

                  else
                  {
                    v11 = 1511;
                  }
                }
              }

              else
              {
                objc_msgSend__removeTempDirectory(self, v42, v43);
              }
            }
          }

          else
          {
            v11 = v30;
            objc_msgSend__removeTempDirectory(self, v31, v32);
          }

          goto LABEL_9;
        }
      }

      objc_msgSend__removeTempDirectory(self, v18, v19);
      v11 = 1513;
    }

    else
    {
      objc_msgSend__removeTempDirectory(self, v16, v17);
      v11 = 1502;
    }

LABEL_9:

    goto LABEL_10;
  }

  objc_msgSend__removeTempDirectory(self, v9, v10);
  v11 = 1513;
LABEL_10:

  return v11;
}

- (BOOL)_writeCompressedFileWithData:(id)data atPath:(id)path
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  objc_msgSend_writeToFile_options_error_(data, a2, path, 0x10000000, &v10);
  v4 = v10;
  if (v4)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_msgSend_description(v4, v6, v7);
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_1CA1CE000, v5, OS_LOG_TYPE_ERROR, "Error: Failed to write to file: %{public}@", buf, 0xCu);
    }
  }

  return v4 == 0;
}

- (BOOL)_createTempDirectory
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_fileManager(self, a2, v2);
  v7 = objc_msgSend_pathToTempDir(self, v5, v6);
  if (objc_msgSend_fileExistsAtPath_(v4, v8, v7) && (v23 = 0, objc_msgSend_removeItemAtPath_error_(v4, v9, v7, &v23), (v10 = v23) != 0))
  {
    v11 = v10;
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_msgSend_description(v11, v13, v14);
      *buf = 138543362;
      v25 = v15;
      v16 = "Error: Failed to remove temp directory: %{public}@";
LABEL_8:
      _os_log_impl(&dword_1CA1CE000, v12, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
    }
  }

  else
  {
    v22 = 0;
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v4, v9, v7, 0, 0, &v22);
    v17 = v22;
    if (!v17)
    {
      v20 = 1;
      goto LABEL_11;
    }

    v11 = v17;
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_msgSend_description(v11, v18, v19);
      *buf = 138543362;
      v25 = v15;
      v16 = "Error: Failed to create temp directory: %{public}@";
      goto LABEL_8;
    }
  }

  v20 = 0;
LABEL_11:

  return v20;
}

- (BOOL)_copyCurrentConfigToTraverse
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_pathToConfig(self, a2, v2);
  v7 = objc_msgSend_fileManager(self, v5, v6);
  if (objc_msgSend_fileExistsAtPath_(v7, v8, v4) && (objc_msgSend_pathToTraverse(self, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), v20 = 0, objc_msgSend_copyItemAtPath_toPath_error_(v7, v12, v4, v11, &v20), v13 = v20, v11, v13))
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_msgSend_description(v13, v15, v16);
      *buf = 138543362;
      v22 = v17;
      _os_log_impl(&dword_1CA1CE000, v14, OS_LOG_TYPE_ERROR, "Error: Failed to create fallback file: %{public}@", buf, 0xCu);
    }

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (BOOL)_removeTempDirectory
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_fileManager(self, a2, v2);
  v7 = objc_msgSend_pathToTempDir(self, v5, v6);
  v15 = 0;
  objc_msgSend_removeItemAtPath_error_(v4, v8, v7, &v15);
  v9 = v15;

  if (v9)
  {
    v10 = APLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_msgSend_description(v9, v11, v12);
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_1CA1CE000, v10, OS_LOG_TYPE_ERROR, "Error: Failed to remove temp directory: %{public}@", buf, 0xCu);
    }
  }

  return v9 == 0;
}

- (BOOL)_replaceConfigWithNewHierarchy
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_fileManager(self, a2, v2);
  v7 = objc_msgSend_pathToConfig(self, v5, v6);
  v10 = objc_msgSend_pathToTraverse(self, v8, v9);
  if (objc_msgSend_fileExistsAtPath_(v4, v11, v7))
  {
    v14 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v12, v7);
    v16 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v15, v10);
    v27 = 0;
    objc_msgSend_replaceItemAtURL_withItemAtURL_backupItemName_options_resultingItemURL_error_(v4, v17, v14, v16, 0, 3, 0, &v27);
    v18 = v27;

    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (!objc_msgSend__createSharedFolderDirectoryIfNeeded(self, v12, v13))
    {
LABEL_9:
      v24 = 0;
      goto LABEL_10;
    }

    v26 = 0;
    objc_msgSend_moveItemAtPath_toPath_error_(v4, v23, v10, v7, &v26);
    v18 = v26;
    if (v18)
    {
LABEL_3:
      v19 = APLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_msgSend_description(v18, v20, v21);
        *buf = 138543362;
        v29 = v22;
        _os_log_impl(&dword_1CA1CE000, v19, OS_LOG_TYPE_ERROR, "Error: Failed to replace traversed hierarchy: %{public}@", buf, 0xCu);
      }

      goto LABEL_9;
    }
  }

  v24 = 1;
LABEL_10:

  return v24;
}

- (id)_tempConfigPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v5 = objc_msgSend_lastObject(v2, v3, v4);

  v8 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v6, v7);
  v11 = objc_msgSend_bundleIdentifier(v8, v9, v10);

  v13 = objc_msgSend_stringByAppendingPathComponent_(v5, v12, v11);
  v15 = objc_msgSend_stringByAppendingPathComponent_(v13, v14, @"APCS-TEMP");

  return v15;
}

- (int64_t)_traverseDirectoryAtPath:(id)path replacingConfigurationAtPath:(id)atPath
{
  v98 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  atPathCopy = atPath;
  v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8);
  v79 = pathCopy;
  objc_msgSend_enumeratorAtPath_(v9, v10, pathCopy);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v11 = v90 = 0u;
  v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v87, v97, 16);
  v14 = 0;
  if (v83)
  {
    v15 = *v88;
    v16 = 0x1E695D000uLL;
    v80 = v9;
    v77 = v11;
    v78 = atPathCopy;
    v76 = *v88;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v88 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v87 + 1) + 8 * v17);
      v19 = objc_msgSend_stringByAppendingPathComponent_(atPathCopy, v13, v18);
      v22 = objc_msgSend_pathExtension(v18, v20, v21);
      if (objc_msgSend_isEqualToString_(v22, v23, &stru_1F49DAC40))
      {
        if ((objc_msgSend_fileExistsAtPath_(v9, v24, v19) & 1) == 0)
        {
          v86 = v14;
          objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v9, v25, v19, 1, 0, &v86);
          v26 = v86;

          v14 = 0;
          if (v26)
          {
            v68 = APLogForCategory();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v72 = objc_msgSend_description(v26, v70, v71);
              *buf = 138543362;
              v92 = v72;
              _os_log_impl(&dword_1CA1CE000, v68, OS_LOG_TYPE_ERROR, "Error: Create directory error: %{public}@.", buf, 0xCu);
            }

            v75 = 1507;
            v14 = v26;
            goto LABEL_43;
          }
        }

        goto LABEL_33;
      }

      if (objc_msgSend_isEqualToString_(v22, v24, @"json"))
      {
        break;
      }

LABEL_33:

LABEL_34:
      ++v17;
      v16 = 0x1E695D000;
      if (v83 == v17)
      {
        v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v87, v97, 16);
        v83 = v67;
        if (v67)
        {
          goto LABEL_3;
        }

        goto LABEL_39;
      }
    }

    v81 = objc_msgSend_stringByDeletingLastPathComponent(v18, v27, v28);
    v30 = objc_msgSend_stringByAppendingPathComponent_(atPathCopy, v29, v81);
    v32 = objc_msgSend_stringByAppendingPathComponent_(v30, v31, @"ConfigurationNode.json");

    v82 = objc_msgSend_fileURLWithPath_(*(v16 + 4088), v33, v32);
    v35 = objc_msgSend_stringByAppendingPathComponent_(v79, v34, v18);
    v38 = objc_msgSend_versionNumberFromJSONFileAtPath_(APVersionHelper, v36, v35);
    if (v38)
    {
      v39 = objc_msgSend_fileURLWithPath_(*(v16 + 4088), v37, v35);
      if (objc_msgSend_fileExistsAtPath_(v9, v40, v32))
      {
        v44 = objc_msgSend_versionNumberFromJSONFileAtPath_(APVersionHelper, v41, v32);
        if (v44)
        {
          v45 = objc_msgSend_integerValue(v38, v42, v43);
          if (v45 <= objc_msgSend_integerValue(v44, v46, v47))
          {
            v60 = APLogForCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              log = v60;
              v63 = objc_msgSend_integerValue(v38, v61, v62);
              v66 = objc_msgSend_integerValue(v44, v64, v65);
              *buf = 138543874;
              v92 = v35;
              v93 = 2048;
              v94 = v63;
              v60 = log;
              v95 = 2048;
              v96 = v66;
              _os_log_impl(&dword_1CA1CE000, log, OS_LOG_TYPE_DEBUG, "Node at path %{public}@ received with version: %ld, current version is %ld, skipping update for this node.", buf, 0x20u);
            }

            v49 = 0;
            v50 = 1;
            goto LABEL_31;
          }
        }

        v85 = v14;
        objc_msgSend_replaceItemAtURL_withItemAtURL_backupItemName_options_resultingItemURL_error_(v80, v42, v82, v39, 0, 3, 0, &v85);
        v48 = v85;

        v14 = v48;
      }

      else
      {
        v84 = v14;
        objc_msgSend_moveItemAtPath_toPath_error_(v9, v41, v35, v32, &v84);
        v44 = v14;
        v14 = v84;
      }

      v52 = APLogForCategory();
      v53 = v52;
      if (!v14)
      {
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v59 = objc_msgSend_integerValue(v38, v57, v58);
          *buf = 138543618;
          v92 = v35;
          v93 = 2048;
          v94 = v59;
          _os_log_impl(&dword_1CA1CE000, v53, OS_LOG_TYPE_INFO, "Migration of file at path: %{public}@, version: %ld complete.", buf, 0x16u);
        }

        v50 = 0;
        v14 = 0;
        v49 = 1;
        goto LABEL_31;
      }

      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v56 = objc_msgSend_description(v14, v54, v55);
        *buf = 138543362;
        v92 = v56;
        _os_log_impl(&dword_1CA1CE000, v53, OS_LOG_TYPE_ERROR, "Error: Replace item error: %{public}@.", buf, 0xCu);
      }

      v49 = 0;
      v50 = 0;
      v51 = 1509;
    }

    else
    {
      v39 = APLogForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v92 = v35;
        _os_log_impl(&dword_1CA1CE000, v39, OS_LOG_TYPE_ERROR, "Error: Node could not be parsed, path %{public}@.", buf, 0xCu);
      }

      v49 = 0;
      v50 = 0;
      v51 = 1508;
    }

    v75 = v51;
LABEL_31:

    if (!v49)
    {

      v11 = v77;
      atPathCopy = v78;
      v9 = v80;
      v15 = v76;
      if (!v50)
      {
        goto LABEL_43;
      }

      goto LABEL_34;
    }

    v11 = v77;
    atPathCopy = v78;
    v9 = v80;
    v15 = v76;
    goto LABEL_33;
  }

LABEL_39:
  v75 = 1200;
LABEL_43:

  return v75;
}

- (void)_sendCoreAnalyticsWithUpdateStatus:(int64_t)status version:(int64_t)version
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18[0] = @"ClientConfigVersion";
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, version);
  v19[0] = v6;
  v18[1] = @"StatusCode";
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v7, status);
  v19[1] = v8;
  v18[2] = @"TestingFlag";
  v9 = MEMORY[0x1E696AD98];
  v12 = objc_msgSend__testingFlag(self, v10, v11);
  v14 = objc_msgSend_numberWithBool_(v9, v13, v12);
  v19[2] = v14;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v19, v18, 3);

  objc_msgSend_sendEvent_customPayload_(MEMORY[0x1E6986188], v17, @"ConfigurationSystemRequest", v16);
}

- (BOOL)_testingFlag
{
  result = 0;
  if (objc_msgSend_isAppleInternalInstall(MEMORY[0x1E69861D0], a2, v2))
  {
    v3 = objc_alloc(MEMORY[0x1E695E000]);
    v5 = objc_msgSend_initWithSuiteName_(v3, v4, *MEMORY[0x1E6986180]);
    v7 = objc_msgSend_objectForKey_(v5, v6, @"APConfigurationSystem.testEnvironment");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v7;
      v13 = objc_msgSend_BOOLValue(v10, v11, v12);
    }

    else
    {
      v10 = MEMORY[0x1E695E110];
      v13 = objc_msgSend_BOOLValue(MEMORY[0x1E695E110], v8, v9);
    }

    v14 = v13;

    if (v14)
    {
      return 1;
    }
  }

  return result;
}

- (int64_t)_configurationVersion
{
  v2 = [APVersionHelper alloc];
  v3 = objc_alloc_init(APVersionData);
  v5 = objc_msgSend_initWithDatasource_(v2, v4, v3);

  v8 = objc_msgSend_systemVersion(v5, v6, v7);
  return v8;
}

- (BOOL)_createSharedFolderDirectoryIfNeeded
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_pathToConfig(self, a2, v2);
  v7 = objc_msgSend_stringByDeletingLastPathComponent(v4, v5, v6);

  v10 = objc_msgSend_fileManager(self, v8, v9);
  if (objc_msgSend_fileExistsAtPath_(v10, v11, v7))
  {
    v13 = 1;
  }

  else
  {
    v20 = 0;
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v10, v12, v7, 1, 0, &v20);
    v14 = v20;
    v13 = v14 == 0;
    if (v14)
    {
      v15 = APLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_msgSend_description(v14, v16, v17);
        *buf = 138543362;
        v22 = v18;
        _os_log_impl(&dword_1CA1CE000, v15, OS_LOG_TYPE_ERROR, "Error: Failed to create shared directory: %{public}@", buf, 0xCu);
      }
    }
  }

  return v13;
}

@end