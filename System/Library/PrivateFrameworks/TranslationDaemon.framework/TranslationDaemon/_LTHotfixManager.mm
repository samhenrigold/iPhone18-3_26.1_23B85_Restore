@interface _LTHotfixManager
+ (_LTHotfixManager)shared;
+ (void)_enableTestFixture:(BOOL)fixture;
+ (void)initialize;
- (_LTHotfixManager)init;
- (id)_CDNURL:(id)l;
- (id)_versionedHotfixDirectoryNameFromBasePath:(id)path;
- (void)_decompressArchive:(id)archive to:(id)to error:(id *)error;
- (void)_downloadHotfix:(id)hotfix completion:(id)completion;
- (void)_downloadMappingPlist:(id)plist;
- (void)_downloadWithURL:(id)l completion:(id)completion;
- (void)_replaceHotfix:(int64_t)hotfix completion:(id)completion;
- (void)_updateHotfixInternal:(id)internal;
- (void)deleteHotfix:(id)hotfix;
- (void)refreshHotfix:(id)hotfix;
- (void)setHotfixURL:(id)l;
- (void)updateHotfix:(id)hotfix;
@end

@implementation _LTHotfixManager

+ (_LTHotfixManager)shared
{
  if (shared_onceToken_1 != -1)
  {
    +[_LTHotfixManager shared];
  }

  v3 = shared_shared;

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v4 = +[_LTDAssetService assetDirectoryURL];
    v2 = [v4 URLByAppendingPathComponent:@"Hotfix"];
    v3 = hotfixBasePath;
    hotfixBasePath = v2;
  }
}

+ (void)_enableTestFixture:(BOOL)fixture
{
  if (fixture)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    temporaryDirectory = [defaultManager temporaryDirectory];
  }

  else
  {
    temporaryDirectory = +[_LTDAssetService assetDirectoryURL];
  }

  v4 = [temporaryDirectory URLByAppendingPathComponent:@"Hotfix"];
  v5 = hotfixBasePath;
  hotfixBasePath = v4;
}

- (_LTHotfixManager)init
{
  v10.receiver = self;
  v10.super_class = _LTHotfixManager;
  v2 = [(_LTHotfixManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Translator.HotfixManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    path = [hotfixBasePath path];
    v6 = [(_LTHotfixManager *)v2 _versionedHotfixDirectoryNameFromBasePath:path];

    if (v6)
    {
      v7 = [hotfixBasePath URLByAppendingPathComponent:v6];
      [(_LTHotfixManager *)v2 setHotfixURL:v7];
    }

    v8 = v2;
  }

  return v2;
}

- (void)setHotfixURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [lCopy path];
    v19 = 0;
    v7 = [defaultManager contentsOfDirectoryAtPath:path error:&v19];
    v8 = v19;

    v9 = [lCopy URLByAppendingPathComponent:@"mt-quasar-config.json"];
    v11 = v9;
    if (!v8 && (v9 = [v7 count]) != 0 && (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "path"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "fileExistsAtPath:", v16), v16, v15, (v17 & 1) != 0))
    {
      v18 = lCopy;
      hotfixURL = self->_hotfixURL;
      self->_hotfixURL = v18;
    }

    else
    {
      v12 = _LTOSLogHotfix(v9, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(_LTHotfixManager *)v12 setHotfixURL:lCopy, v8];
      }

      hotfixURL = self->_hotfixURL;
      self->_hotfixURL = 0;
    }
  }

  else
  {
    v14 = self->_hotfixURL;
    self->_hotfixURL = 0;
  }
}

- (void)refreshHotfix:(id)hotfix
{
  hotfixCopy = hotfix;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34___LTHotfixManager_refreshHotfix___block_invoke;
  block[3] = &unk_2789B5F18;
  objc_copyWeak(&v9, &location);
  v8 = hotfixCopy;
  v6 = hotfixCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_replaceHotfix:(int64_t)hotfix completion:(id)completion
{
  v6 = hotfixBasePath;
  completionCopy = completion;
  path = [v6 path];
  v9 = [path stringByAppendingString:@"-rollback"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = defaultManager;
  switch(hotfix)
  {
    case 3:
      v19 = _LTOSLogHotfix(defaultManager, v11);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [_LTHotfixManager _replaceHotfix:completion:];
      }

      defaultManager = [v12 fileExistsAtPath:path];
      if (!defaultManager)
      {
        goto LABEL_29;
      }

      defaultManager = [v12 fileExistsAtPath:v9];
      if (!defaultManager)
      {
        goto LABEL_29;
      }

      v25 = 0;
      [v12 removeItemAtPath:v9 error:&v25];
      defaultManager = v25;
      if (!defaultManager)
      {
        goto LABEL_29;
      }

      break;
    case 2:
      v14 = _LTOSLogHotfix(defaultManager, v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [_LTHotfixManager _replaceHotfix:completion:];
      }

      if (![v12 fileExistsAtPath:path] || (v27 = 0, objc_msgSend(v12, "removeItemAtPath:error:", path, &v27), (defaultManager = v27) == 0))
      {
        defaultManager = [v12 fileExistsAtPath:v9];
        if (!defaultManager)
        {
          goto LABEL_29;
        }

        v26 = 0;
        [v12 moveItemAtPath:v9 toPath:path error:&v26];
        defaultManager = v26;
        if (!defaultManager)
        {
          v16 = [(_LTHotfixManager *)self _versionedHotfixDirectoryNameFromBasePath:path];
          if (v16)
          {
            v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
            v18 = [v17 URLByAppendingPathComponent:v16];
            [(_LTHotfixManager *)self setHotfixURL:v18];
          }

          else
          {
            v22 = _LTOSLogHotfix(0, v15);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [_LTHotfixManager _replaceHotfix:completion:];
            }
          }

          goto LABEL_29;
        }
      }

      break;
    case 1:
      v13 = _LTOSLogHotfix(defaultManager, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [_LTHotfixManager _replaceHotfix:completion:];
      }

      defaultManager = [v12 fileExistsAtPath:path];
      if (!defaultManager)
      {
        goto LABEL_29;
      }

      if (![v12 fileExistsAtPath:v9] || (v29 = 0, objc_msgSend(v12, "removeItemAtPath:error:", v9, &v29), (defaultManager = v29) == 0))
      {
        v28 = 0;
        [v12 moveItemAtPath:path toPath:v9 error:&v28];
        defaultManager = v28;
        if (!defaultManager)
        {
          defaultManager = [(_LTHotfixManager *)self setHotfixURL:0];
LABEL_29:
          v23 = _LTOSLogHotfix(defaultManager, v11);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *v24 = 0;
            _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_INFO, "Hotfix manager refresh completed", v24, 2u);
          }

          v20 = 0;
          goto LABEL_32;
        }
      }

      break;
    default:
      goto LABEL_29;
  }

  v20 = defaultManager;
  v21 = _LTOSLogHotfix(defaultManager, v11);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [_LTHotfixManager _replaceHotfix:completion:];
  }

LABEL_32:
  completionCopy[2](completionCopy, v20);
}

- (void)updateHotfix:(id)hotfix
{
  hotfixCopy = hotfix;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33___LTHotfixManager_updateHotfix___block_invoke;
  v7[3] = &unk_2789B6B60;
  v7[4] = self;
  v8 = hotfixCopy;
  v6 = hotfixCopy;
  dispatch_async(queue, v7);
}

- (void)_updateHotfixInternal:(id)internal
{
  internalCopy = internal;
  dispatch_assert_queue_V2(self->_queue);
  [(_LTHotfixManager *)self setHotfixURL:0];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42___LTHotfixManager__updateHotfixInternal___block_invoke;
  v6[3] = &unk_2789B6B88;
  objc_copyWeak(&v8, &location);
  v5 = internalCopy;
  v7 = v5;
  [(_LTHotfixManager *)self _downloadMappingPlist:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)deleteHotfix:(id)hotfix
{
  hotfixCopy = hotfix;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33___LTHotfixManager_deleteHotfix___block_invoke;
  v7[3] = &unk_2789B6B60;
  v7[4] = self;
  v8 = hotfixCopy;
  v6 = hotfixCopy;
  dispatch_async(queue, v7);
}

- (void)_downloadWithURL:(id)l completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v8 = _LTOSLogHotfix(completionCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = lCopy;
    _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Downloading hotfix from URL: %{public}@", buf, 0xCu);
  }

  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:@"com.apple.Translate"];
  [defaultSessionConfiguration setAllowsCellularAccess:1];
  v10 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __48___LTHotfixManager__downloadWithURL_completion___block_invoke;
  v17 = &unk_2789B6BB0;
  v18 = lCopy;
  v19 = completionCopy;
  v11 = completionCopy;
  v12 = lCopy;
  v13 = [v10 dataTaskWithURL:v12 completionHandler:&v14];
  [v13 resume];
}

- (id)_CDNURL:(id)l
{
  if (l)
  {
    lCopy = l;
    v5 = _LTPreferencesHotfixEndpointURL(lCopy, v4);
    v6 = [v5 URLByAppendingPathComponent:lCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_downloadMappingPlist:(id)plist
{
  plistCopy = plist;
  v5 = [(_LTHotfixManager *)self _CDNURL:@"mapping-info-plist"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___LTHotfixManager__downloadMappingPlist___block_invoke;
  v7[3] = &unk_2789B6BD8;
  v8 = plistCopy;
  v6 = plistCopy;
  [(_LTHotfixManager *)self _downloadWithURL:v5 completion:v7];
}

- (void)_downloadHotfix:(id)hotfix completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  hotfixCopy = hotfix;
  completionCopy = completion;
  v8 = _LTOSLogHotfix(completionCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = hotfixCopy;
    _os_log_impl(&dword_232E53000, v8, OS_LOG_TYPE_INFO, "Select hotfix: %@", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [hotfixCopy objectForKeyedSubscript:@"FormatVersion"];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v26 = v11;

  v12 = [hotfixCopy objectForKeyedSubscript:@"HotfixAssetVersion"];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v26, v14];
  v16 = [hotfixBasePath URLByAppendingPathComponent:v15];
  v17 = [v16 URLByAppendingPathComponent:@"mt-quasar-config.json"];
  path = [v17 path];
  v19 = [defaultManager fileExistsAtPath:path];

  if (v19)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47___LTHotfixManager__downloadHotfix_completion___block_invoke;
    block[3] = &unk_2789B6C00;
    block[4] = self;
    v33 = v16;
    v34 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v21 = [hotfixCopy objectForKeyedSubscript:@"HotfixAssetName"];
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v24 = [(_LTHotfixManager *)self _CDNURL:v23];
    objc_initWeak(buf, self);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __47___LTHotfixManager__downloadHotfix_completion___block_invoke_67;
    v27[3] = &unk_2789B6C50;
    objc_copyWeak(&v31, buf);
    v30 = completionCopy;
    v28 = defaultManager;
    v29 = v16;
    [(_LTHotfixManager *)self _downloadWithURL:v24 completion:v27];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }
}

- (void)_decompressArchive:(id)archive to:(id)to error:(id *)error
{
  v47[1] = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  toCopy = to;
  archive_read_new();
  support_filter_all = archive_read_support_filter_all();
  if (support_filter_all)
  {
    v11 = _LTOSLogHotfix(support_filter_all, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_LTHotfixManager _decompressArchive:v11 to:? error:?];
    }

    archive_read_free();
    v12 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA450];
    v47[0] = @"Failed to specify compression algorithm";
    v13 = MEMORY[0x277CBEAC0];
    v14 = v47;
    v15 = &v46;
LABEL_15:
    path = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
    *error = [v12 errorWithDomain:@"LTDHotfixManagerError" code:1 userInfo:path];
    goto LABEL_16;
  }

  support_format_all = archive_read_support_format_all();
  v17 = support_format_all;
  v19 = _LTOSLogHotfix(support_format_all, v18);
  v20 = v19;
  if (v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_LTHotfixManager _decompressArchive:v20 to:? error:?];
    }

    archive_read_free();
    v12 = MEMORY[0x277CCA9B8];
    v44 = *MEMORY[0x277CCA450];
    v45 = @"Failed to specify format";
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v45;
    v15 = &v44;
    goto LABEL_15;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_INFO, "Start extracting archive", buf, 2u);
  }

  [archiveCopy bytes];
  [archiveCopy length];
  open_memory = archive_read_open_memory();
  if (open_memory)
  {
    v23 = _LTOSLogHotfix(open_memory, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [_LTHotfixManager _decompressArchive:v23 to:? error:?];
    }

    archive_read_free();
    v12 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v43 = @"Failed to open archive for reading";
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v43;
    v15 = &v42;
    goto LABEL_15;
  }

  path = [toCopy path];
  if (archive_read_next_header())
  {
LABEL_18:
    free = archive_read_free();
    v27 = _LTOSLogHotfix(free, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v41 = toCopy;
      _os_log_impl(&dword_232E53000, v27, OS_LOG_TYPE_INFO, "Finished extracting archive to: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    while (1)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:archive_entry_pathname()];
      v29 = [path stringByAppendingPathComponent:v28];

      v32 = _LTOSLogHotfix(v30, v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v41 = v29;
        _os_log_debug_impl(&dword_232E53000, v32, OS_LOG_TYPE_DEBUG, "Entry extraction path: %{public}@", buf, 0xCu);
      }

      [v29 UTF8String];
      archive_entry_set_pathname();
      v33 = archive_read_extract();
      if (v33)
      {
        break;
      }

      if (archive_read_next_header())
      {
        goto LABEL_18;
      }
    }

    v35 = _LTOSLogHotfix(v33, v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [_LTHotfixManager _decompressArchive:v35 to:? error:?];
    }

    archive_read_free();
    v36 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v39 = @"Unable to extract file";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *error = [v36 errorWithDomain:@"LTDHotfixManagerError" code:1 userInfo:v37];
  }

LABEL_16:
}

- (id)_versionedHotfixDirectoryNameFromBasePath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:&v12];
  v6 = v12;

  if (v6)
  {
    v9 = _LTOSLogHotfix(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTHotfixManager _versionedHotfixDirectoryNameFromBasePath:];
    }
  }

  firstObject = [v5 firstObject];

  return firstObject;
}

- (void)setHotfixURL:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 path];
  OUTLINED_FUNCTION_1_2();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&dword_232E53000, v5, OS_LOG_TYPE_ERROR, "Hotfix asset preflight from %{public}@ failure: %@", v7, 0x16u);
}

- (void)_decompressArchive:(void *)a1 to:error:.cold.1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v3, v4, "Failed to specify compression algorithm: %s", v5, v6, v7, v8);
}

- (void)_decompressArchive:(void *)a1 to:error:.cold.2(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v3, v4, "Failed to specify format: %s", v5, v6, v7, v8);
}

- (void)_decompressArchive:(void *)a1 to:error:.cold.3(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v3, v4, "Failed to open archive for reading: %s", v5, v6, v7, v8);
}

- (void)_decompressArchive:(void *)a1 to:error:.cold.4(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v3, v4, "Unable to extract file: %s", v5, v6, v7, v8);
}

@end