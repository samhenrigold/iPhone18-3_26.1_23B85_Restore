@interface CDMAssetsDelegateHandler
- (BOOL)assetsAvailableForAssetSet:(id)set forLocale:(id)locale;
- (BOOL)assetsUnavailableForAssetSet:(id)set;
- (CDMAssetsDelegateHandler)initWithAssetsDelegate:(id)delegate forAssetSets:(id)sets withAssetAvailabilityType:(int64_t)type;
- (void)notifyDelegate;
@end

@implementation CDMAssetsDelegateHandler

- (void)notifyDelegate
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v39 = "[CDMAssetsDelegateHandler notifyDelegate]";
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Start to notify assets delegate.", buf, 0xCu);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = self->_assetSetNames;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v34 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v35;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v34 + 1) + 8 * v9);
        v12 = [(NSMutableDictionary *)self->_assetsAvailabilities objectForKey:v11, v34];

        if (!v12)
        {
          v7 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v39 = "[CDMAssetsDelegateHandler notifyDelegate]";
            v40 = 2112;
            v41 = v11;
          }

          goto LABEL_20;
        }

        v7 = [(NSMutableDictionary *)self->_assetsAvailabilities valueForKey:v11];
        if (v10 && ([v10 isEqualToString:v7]& 1) == 0)
        {
          v14 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v39 = "[CDMAssetsDelegateHandler notifyDelegate]";
            v40 = 2112;
            v41 = v7;
            v42 = 2112;
            v43 = v11;
            v44 = 2112;
            v45 = v10;
          }

LABEL_20:
          v13 = 0;
          v7 = v10;
          goto LABEL_21;
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v34 objects:v48 count:16];
      v13 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
    v13 = 1;
  }

LABEL_21:

  v15 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    assetsAvailabilities = self->_assetsAvailabilities;
    *buf = 136315394;
    v39 = "[CDMAssetsDelegateHandler notifyDelegate]";
    v40 = 2112;
    v41 = assetsAvailabilities;
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Current assets availabilities status: %@.", buf, 0x16u);
  }

  if (v7)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = CDMOSLoggerForCategory(0);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
  if (v16 == 1)
  {
    if (v18)
    {
      assetSetNames = self->_assetSetNames;
      assetAvailabilityType = self->_assetAvailabilityType;
      *buf = 136316162;
      v39 = "[CDMAssetsDelegateHandler notifyDelegate]";
      v40 = 2112;
      v41 = assetSetNames;
      v42 = 2112;
      v43 = v7;
      v44 = 2112;
      v45 = v7;
      v46 = 2048;
      v47 = assetAvailabilityType;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s All assets are available for assetSetNames: %@ for locale: %@. Call assets delegate's assetsAvailable for locale: %@  for assetAvailabilityType: %ld", buf, 0x34u);
    }

    v21 = objc_opt_respondsToSelector();
    v22 = CDMOSLoggerForCategory(0);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    if (v21)
    {
      if (v23)
      {
        *buf = 136315138;
        v39 = "[CDMAssetsDelegateHandler notifyDelegate]";
        _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s Selector found for assetsAvailableForLocale:withType:", buf, 0xCu);
      }

      delegate = self->_delegate;
      v25 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v7];
      [(CDMTrialAssetsDelegate *)delegate assetsAvailableForLocale:v25 withType:self->_assetAvailabilityType];
    }

    else
    {
      if (v23)
      {
        *buf = 136315138;
        v39 = "[CDMAssetsDelegateHandler notifyDelegate]";
        _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s Selector not found for assetsAvailableForLocale:withType:", buf, 0xCu);
      }

      v31 = self->_delegate;
      v32 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v7];
      [(CDMTrialAssetsDelegate *)v31 assetsAvailableForLocale:v32];
    }
  }

  else
  {
    if (v18)
    {
      v26 = self->_assetSetNames;
      v27 = self->_assetAvailabilityType;
      *buf = 136315650;
      v39 = "[CDMAssetsDelegateHandler notifyDelegate]";
      v40 = 2112;
      v41 = v26;
      v42 = 2048;
      v43 = v27;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s Not all assets are available for assetSetNames: %@. Call assets delegate's assetsUnavailable for assetAvailabilityType: %ld", buf, 0x20u);
    }

    v28 = objc_opt_respondsToSelector();
    v29 = CDMOSLoggerForCategory(0);
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
    if (v28)
    {
      if (v30)
      {
        *buf = 136315138;
        v39 = "[CDMAssetsDelegateHandler notifyDelegate]";
        _os_log_impl(&dword_1DC287000, v29, OS_LOG_TYPE_INFO, "%s Selector found for assetsUnavailableWithType:", buf, 0xCu);
      }

      [(CDMTrialAssetsDelegate *)self->_delegate assetsUnavailableWithType:self->_assetAvailabilityType];
    }

    else
    {
      if (v30)
      {
        *buf = 136315138;
        v39 = "[CDMAssetsDelegateHandler notifyDelegate]";
        _os_log_impl(&dword_1DC287000, v29, OS_LOG_TYPE_INFO, "%s Selector not found for assetsUnavailableWithType:", buf, 0xCu);
      }

      [(CDMTrialAssetsDelegate *)self->_delegate assetsUnavailable];
    }
  }
}

- (BOOL)assetsUnavailableForAssetSet:(id)set
{
  v16 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v5 = [(NSArray *)self->_assetSetNames containsObject:setCopy];
  v6 = CDMOSLoggerForCategory(0);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315394;
      v11 = "[CDMAssetsDelegateHandler assetsUnavailableForAssetSet:]";
      v12 = 2112;
      v13 = setCopy;
      _os_log_debug_impl(&dword_1DC287000, &v7->super.super, OS_LOG_TYPE_DEBUG, "%s Asset is unavailable for assetSetName: %@.", &v10, 0x16u);
    }

    v7 = self->_assetsAvailabilities;
    objc_sync_enter(v7);
    [(NSMutableDictionary *)self->_assetsAvailabilities removeObjectForKey:setCopy];
    [(CDMAssetsDelegateHandler *)self notifyDelegate];
    objc_sync_exit(v7);
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    assetSetNames = self->_assetSetNames;
    v10 = 136315650;
    v11 = "[CDMAssetsDelegateHandler assetsUnavailableForAssetSet:]";
    v12 = 2112;
    v13 = setCopy;
    v14 = 2112;
    v15 = assetSetNames;
    _os_log_impl(&dword_1DC287000, &v7->super.super, OS_LOG_TYPE_INFO, "%s [WARN]: Not able to find assetSetName: %@ in assetSetName array: %@", &v10, 0x20u);
  }

  return v5;
}

- (BOOL)assetsAvailableForAssetSet:(id)set forLocale:(id)locale
{
  v19 = *MEMORY[0x1E69E9840];
  setCopy = set;
  localeCopy = locale;
  v8 = [(NSArray *)self->_assetSetNames containsObject:setCopy];
  v9 = CDMOSLoggerForCategory(0);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315650;
      v14 = "[CDMAssetsDelegateHandler assetsAvailableForAssetSet:forLocale:]";
      v15 = 2112;
      v16 = setCopy;
      v17 = 2112;
      v18 = localeCopy;
      _os_log_debug_impl(&dword_1DC287000, &v10->super.super, OS_LOG_TYPE_DEBUG, "%s Asset is available for assetSetName: %@ for locale: %@.", &v13, 0x20u);
    }

    v10 = self->_assetsAvailabilities;
    objc_sync_enter(v10);
    [(NSMutableDictionary *)self->_assetsAvailabilities setObject:localeCopy forKeyedSubscript:setCopy];
    [(CDMAssetsDelegateHandler *)self notifyDelegate];
    objc_sync_exit(v10);
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    assetSetNames = self->_assetSetNames;
    v13 = 136315650;
    v14 = "[CDMAssetsDelegateHandler assetsAvailableForAssetSet:forLocale:]";
    v15 = 2112;
    v16 = setCopy;
    v17 = 2112;
    v18 = assetSetNames;
    _os_log_impl(&dword_1DC287000, &v10->super.super, OS_LOG_TYPE_INFO, "%s [WARN]: Not able to find assetSetName: %@ in assetSetName array: %@", &v13, 0x20u);
  }

  return v8;
}

- (CDMAssetsDelegateHandler)initWithAssetsDelegate:(id)delegate forAssetSets:(id)sets withAssetAvailabilityType:(int64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  setsCopy = sets;
  v16.receiver = self;
  v16.super_class = CDMAssetsDelegateHandler;
  v11 = [(CDMAssetsDelegateHandler *)&v16 init];
  if (v11)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[CDMAssetsDelegateHandler initWithAssetsDelegate:forAssetSets:withAssetAvailabilityType:]";
      v19 = 2112;
      v20 = setsCopy;
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s Initialize CDMAssetsDelegateHandler for assetSetNames: %@.", buf, 0x16u);
    }

    objc_storeStrong(&v11->_delegate, delegate);
    objc_storeStrong(&v11->_assetSetNames, sets);
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetsAvailabilities = v11->_assetsAvailabilities;
    v11->_assetsAvailabilities = v13;

    v11->_assetAvailabilityType = type;
  }

  return v11;
}

@end