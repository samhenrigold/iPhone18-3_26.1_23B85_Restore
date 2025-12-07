@interface CDMUAFClientManager
- (BOOL)shouldInitUAFAssetSetInSetupForLocale:(id)locale;
- (CDMUAFClientManager)initWithAssetSet:(id)set usages:(id)usages;
- (id)description;
- (id)getAssetSet;
- (id)getFactors;
- (id)getLocale;
- (void)initUAFAssetSet;
- (void)setAssetSet:(id)set;
- (void)setLocale:(id)locale;
@end

@implementation CDMUAFClientManager

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[CDMUAFClientManager] - assetSetName: %@, Usages: %@.", selfCopy->_assetSetName, selfCopy->_usages];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)getLocale
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [CDMAssetsUsages cdmAssetsUsageKeyToString:0];
  v4 = [CDMAssetsUsages cdmAssetsUsageKeyToString:3];
  v5 = [CDMAssetsUsages cdmAssetsUsageKeyToString:4];
  v6 = [(NSDictionary *)selfCopy->_usages objectForKey:v3];

  usages = selfCopy->_usages;
  if (v6)
  {
    v8 = v3;
LABEL_7:
    v11 = [(NSDictionary *)usages objectForKey:v8];
    goto LABEL_8;
  }

  v9 = [(NSDictionary *)usages objectForKey:v4];

  usages = selfCopy->_usages;
  if (v9)
  {
    v8 = v4;
    goto LABEL_7;
  }

  v10 = [(NSDictionary *)usages objectForKey:v5];

  if (v10)
  {
    usages = selfCopy->_usages;
    v8 = v5;
    goto LABEL_7;
  }

  v13 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315138;
    v15 = "[CDMUAFClientManager getLocale]";
    _os_log_error_impl(&dword_1DC287000, v13, OS_LOG_TYPE_ERROR, "%s [ERR]: Error fetching locale.", &v14, 0xCu);
  }

  v11 = 0;
LABEL_8:

  objc_sync_exit(selfCopy);

  return v11;
}

- (id)getFactors
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
  v4 = [mEMORY[0x1E69DEEF0] assetNamesForAssetSet:selfCopy->_assetSetName usages:selfCopy->_usages];

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)setAssetSet:(id)set
{
  setCopy = set;
  obj = self;
  objc_sync_enter(obj);
  assetSet = obj->_assetSet;
  obj->_assetSet = setCopy;

  objc_sync_exit(obj);
}

- (id)getAssetSet
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_assetSet;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)initUAFAssetSet
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    assetSetName = selfCopy->_assetSetName;
    v12 = 136315394;
    v13 = "[CDMUAFClientManager initUAFAssetSet]";
    v14 = 2112;
    v15 = assetSetName;
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Start to init UAF client for AssetSet: %@.", &v12, 0x16u);
  }

  mEMORY[0x1E69DEEF0] = [MEMORY[0x1E69DEEF0] sharedManager];
  v5 = [mEMORY[0x1E69DEEF0] retrieveAssetSet:selfCopy->_assetSetName usages:selfCopy->_usages];
  assetSet = selfCopy->_assetSet;
  selfCopy->_assetSet = v5;

  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = selfCopy->_assetSet;
    v9 = selfCopy->_assetSetName;
    usages = selfCopy->_usages;
    v12 = 136315906;
    v13 = "[CDMUAFClientManager initUAFAssetSet]";
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = usages;
    _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s uafClientManager.assetSetName %@ has new assetSet %@ has usages %@", &v12, 0x2Au);
  }

  objc_sync_exit(selfCopy);
}

- (void)setLocale:(id)locale
{
  v40 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  getLocale = [(CDMUAFClientManager *)selfCopy getLocale];

  if (getLocale != localeCopy)
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      usages = selfCopy->_usages;
      *buf = 136315650;
      v35 = "[CDMUAFClientManager setLocale:]";
      v36 = 2112;
      v37 = usages;
      v38 = 2112;
      v39 = localeCopy;
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Updating locale for usage: %@ to %@.", buf, 0x20u);
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    keyEnumerator = [(NSDictionary *)selfCopy->_usages keyEnumerator];
    v10 = [keyEnumerator countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          v14 = [(NSDictionary *)selfCopy->_usages objectForKey:v13];
          [v8 setObject:v14 forKey:v13];
        }

        v10 = [keyEnumerator countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }

    v15 = [CDMAssetsUsages cdmAssetsUsageKeyToString:0];
    v16 = [CDMAssetsUsages cdmAssetsUsageKeyToString:3];
    v17 = [CDMAssetsUsages cdmAssetsUsageKeyToString:4];
    v18 = [v8 objectForKey:v15];
    v19 = v18 == 0;

    v20 = v15;
    if (v19)
    {
      v21 = [v8 objectForKey:{v16, v15}];
      v22 = v21 == 0;

      if (!v22)
      {
        v23 = [CDMAssetsUtils extractAssetKeyFromLocale:localeCopy];
        [v8 setObject:v23 forKey:v16];

        goto LABEL_15;
      }

      v26 = [v8 objectForKey:v17];
      v27 = v26 == 0;

      v20 = v17;
      if (v27)
      {
        goto LABEL_15;
      }
    }

    [v8 setObject:localeCopy forKey:v20];
LABEL_15:
    v24 = [v8 copy];
    v25 = selfCopy->_usages;
    selfCopy->_usages = v24;

    [(CDMUAFClientManager *)selfCopy initUAFAssetSet];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)shouldInitUAFAssetSetInSetupForLocale:(id)locale
{
  v32 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
  v7 = os_signpost_id_generate(CDMLogContext);
  v8 = CDMLogContext;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    assetSetName = selfCopy->_assetSetName;
    v22 = 138412290;
    v23 = assetSetName;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CDMUAFClientManager", "getAssets in shouldInitUAFAssetSetInSetup %@", &v22, 0xCu);
  }

  assets = [(UAFAssetSet *)selfCopy->_assetSet assets];

  v12 = CDMLogContext;
  v13 = v12;
  if (v7 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v12))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v13, OS_SIGNPOST_INTERVAL_END, v7, "CDMUAFClientManager", " enableTelemetry=YES ", &v22, 2u);
  }

  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    assetSet = selfCopy->_assetSet;
    v19 = selfCopy->_assetSetName;
    usages = selfCopy->_usages;
    v22 = 136316162;
    v23 = "[CDMUAFClientManager shouldInitUAFAssetSetInSetupForLocale:]";
    v24 = 2112;
    v25 = v19;
    v26 = 2112;
    v27 = assetSet;
    v28 = 2112;
    v29 = usages;
    v30 = 2112;
    v31 = assets;
    _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s uafClientManager.assetSetName %@ has assetSet %@ has usages %@ has assets %@", &v22, 0x34u);
  }

  if (!selfCopy->_assetSet)
  {
    v15 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:
      v16 = 1;
      goto LABEL_18;
    }

    v22 = 136315138;
    v23 = "[CDMUAFClientManager shouldInitUAFAssetSetInSetupForLocale:]";
    v17 = "%s assetSet does not exist. Asset cache miss. Return Yes";
LABEL_20:
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, v17, &v22, 0xCu);
    goto LABEL_17;
  }

  if (![assets count])
  {
    v15 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v22 = 136315138;
    v23 = "[CDMUAFClientManager shouldInitUAFAssetSetInSetupForLocale:]";
    v17 = "%s No assets exist in assetSet. Asset cache miss. Return Yes";
    goto LABEL_20;
  }

  v15 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315138;
    v23 = "[CDMUAFClientManager shouldInitUAFAssetSetInSetupForLocale:]";
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Asset cache hit. No need to get new assetSet in setup. Return No", &v22, 0xCu);
  }

  v16 = 0;
LABEL_18:

  objc_sync_exit(selfCopy);
  return v16;
}

- (CDMUAFClientManager)initWithAssetSet:(id)set usages:(id)usages
{
  setCopy = set;
  usagesCopy = usages;
  v12.receiver = self;
  v12.super_class = CDMUAFClientManager;
  v9 = [(CDMUAFClientManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetSetName, set);
    objc_storeStrong(&v10->_usages, usages);
  }

  return v10;
}

@end