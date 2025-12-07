@interface RTTDictionaryManager
+ (id)_availableDictionaryAssetsUsingRemoteInfo:(BOOL)info;
- (RTTDictionaryManager)init;
- (id)_ttyDictionaryAsset;
- (void)_downloadAsset:(id)asset;
- (void)dealloc;
- (void)deleteIfNeeded;
- (void)downloadIfNeeded;
@end

@implementation RTTDictionaryManager

- (RTTDictionaryManager)init
{
  v5.receiver = self;
  v5.super_class = RTTDictionaryManager;
  v2 = [(RTTDictionaryManager *)&v5 init];
  if (v2)
  {
    v3 = [RTTDictionaryManager _availableDictionaryAssetsUsingRemoteInfo:1];
    [(RTTDictionaryManager *)v2 setAvailableDictionaries:v3];
  }

  return v2;
}

- (void)dealloc
{
  [(RTTDictionaryManager *)self setAvailableDictionaries:0];
  v3.receiver = self;
  v3.super_class = RTTDictionaryManager;
  [(RTTDictionaryManager *)&v3 dealloc];
}

- (void)downloadIfNeeded
{
  v8 = *MEMORY[0x277D85DE8];
  _ttyDictionaryAsset = [(RTTDictionaryManager *)self _ttyDictionaryAsset];
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = _ttyDictionaryAsset;
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Downloading dictionary: %@", &v6, 0xCu);
  }

  if (_ttyDictionaryAsset && [_ttyDictionaryAsset state] == 1)
  {
    v5 = AXLogRTT();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Asset not present - downloading", &v6, 2u);
    }

    [(RTTDictionaryManager *)self _downloadAsset:_ttyDictionaryAsset];
  }
}

- (void)deleteIfNeeded
{
  v8 = *MEMORY[0x277D85DE8];
  _ttyDictionaryAsset = [(RTTDictionaryManager *)self _ttyDictionaryAsset];
  if (_ttyDictionaryAsset)
  {
    v3 = AXLogRTT();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v7 = _ttyDictionaryAsset;
      _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Deleting dictionary %@", buf, 0xCu);
    }

    if ([_ttyDictionaryAsset state] == 4)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __38__RTTDictionaryManager_deleteIfNeeded__block_invoke;
      v4[3] = &unk_279AE7B18;
      v5 = _ttyDictionaryAsset;
      [v5 cancelDownload:v4];
    }

    else if ([_ttyDictionaryAsset state] == 2)
    {
      [_ttyDictionaryAsset purgeWithError:&__block_literal_global_287];
    }
  }
}

uint64_t __38__RTTDictionaryManager_deleteIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Cancelled asset download with result %li", &v6, 0xCu);
  }

  return [*(a1 + 32) purgeWithError:&__block_literal_global_1];
}

void __38__RTTDictionaryManager_deleteIfNeeded__block_invoke_282(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Purged asset with result %li, error? %@", &v6, 0x16u);
  }
}

void __38__RTTDictionaryManager_deleteIfNeeded__block_invoke_285(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Purged asset with result %li, error? %@", &v6, 0x16u);
  }
}

- (void)_downloadAsset:(id)asset
{
  v8 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = 0;
  if ([assetCopy spaceCheck:&v5])
  {
    v4 = objc_opt_new();
    [v4 setAllowsCellularAccess:1];
    [v4 setDiscretionary:0];
    [assetCopy startDownload:v4 completionWithError:&__block_literal_global_289];
  }

  else
  {
    v4 = AXLogRTT();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v7 = v5;
      _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Space not available to download asset %lli", buf, 0xCu);
    }
  }
}

void __39__RTTDictionaryManager__downloadAsset___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Downloaded asset with result %li, error? %@", &v6, 0x16u);
  }
}

- (id)_ttyDictionaryAsset
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_availableDictionaries;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        attributes = [v7 attributes];
        v9 = [attributes objectForKey:@"DictionaryPackageName"];

        if ([v9 isEqualToString:@"TTY Abbreviations Dictionary.dictionary"])
        {
          v10 = v7;

          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)_availableDictionaryAssetsUsingRemoteInfo:(BOOL)info
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.DictionaryServices.dictionary2"];
  queryMetaDataSync = [v3 queryMetaDataSync];
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = queryMetaDataSync;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Queried asset metadata with result: %ld", &v8, 0xCu);
  }

  results = [v3 results];

  return results;
}

@end