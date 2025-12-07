@interface CESRGeoLMRegionIDCache
+ (id)sharedInstance;
- (CESRGeoLMRegionIDCache)init;
- (CESRGeoLMRegionIDCache)initWithUserDefaults:(id)defaults;
- (id)_geoLMAssetsInfoDictForLanguage:(id)language;
- (id)_userDefaultsGeoLMAssetsInfoDictKeyForLanguage:(id)language;
- (id)lastUsedGeoLMRegionIdForLanguage:(id)language;
- (id)purgeUnusedGeoLMRegionIdFromCacheForLanguage:(id)language;
- (void)_updateUserDefaultsWithGeoLMAssetsInfoDict:(id)dict language:(id)language;
- (void)purgeUserDefaultsGeoLMAssetsInfoDictForLanguages:(id)languages;
- (void)updateGeoLMAssetsInfoDictWithRegionId:(id)id language:(id)language;
@end

@implementation CESRGeoLMRegionIDCache

- (id)_userDefaultsGeoLMAssetsInfoDictKeyForLanguage:(id)language
{
  v3 = [language stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v4 = [@"GeoLMAssetsInfo" stringByAppendingString:@"."];
  v5 = [v4 stringByAppendingString:v3];

  return v5;
}

- (void)_updateUserDefaultsWithGeoLMAssetsInfoDict:(id)dict language:(id)language
{
  userDefaults = self->_userDefaults;
  dictCopy = dict;
  v8 = [(CESRGeoLMRegionIDCache *)self _userDefaultsGeoLMAssetsInfoDictKeyForLanguage:language];
  [(NSUserDefaults *)userDefaults setObject:dictCopy forKey:v8];
}

- (id)_geoLMAssetsInfoDictForLanguage:(id)language
{
  userDefaults = self->_userDefaults;
  v4 = [(CESRGeoLMRegionIDCache *)self _userDefaultsGeoLMAssetsInfoDictKeyForLanguage:language];
  v5 = [(NSUserDefaults *)userDefaults dictionaryForKey:v4];

  return v5;
}

- (void)purgeUserDefaultsGeoLMAssetsInfoDictForLanguages:(id)languages
{
  v23 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [languagesCopy countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
    v9 = MEMORY[0x277CEF0E8];
    *&v6 = 136315394;
    v13 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(languagesCopy);
        }

        v11 = [(CESRGeoLMRegionIDCache *)self _userDefaultsGeoLMAssetsInfoDictKeyForLanguage:*(*(&v14 + 1) + 8 * v10), v13];
        v12 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = v13;
          v19 = "[CESRGeoLMRegionIDCache purgeUserDefaultsGeoLMAssetsInfoDictForLanguages:]";
          v20 = 2112;
          v21 = v11;
          _os_log_debug_impl(&dword_225EEB000, v12, OS_LOG_TYPE_DEBUG, "%s GeoLM: Going to delete: %@", buf, 0x16u);
        }

        [(NSUserDefaults *)self->_userDefaults removeObjectForKey:v11];

        ++v10;
      }

      while (v7 != v10);
      v7 = [languagesCopy countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }
}

- (id)lastUsedGeoLMRegionIdForLanguage:(id)language
{
  v31 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v5 = [(CESRGeoLMRegionIDCache *)self _geoLMAssetsInfoDictForLanguage:languageCopy];
  if ([v5 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v6 objectForKeyedSubscript:{v13, v22}];
          v15 = v14;
          if (v10 | v9)
          {
            if (v14 && [v14 compare:v9] == 1)
            {
              v16 = v13;

              v17 = v15;
              v9 = v17;
              v10 = v16;
            }
          }

          else
          {
            v10 = v13;
            v9 = v15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v19 = v10;
    v20 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v27 = "[CESRGeoLMRegionIDCache lastUsedGeoLMRegionIdForLanguage:]";
      v28 = 2112;
      v29 = v19;
      _os_log_debug_impl(&dword_225EEB000, v20, OS_LOG_TYPE_DEBUG, "%s GeoLM: Last used GeoLM regionId: %@", buf, 0x16u);
    }
  }

  else
  {
    v18 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v27 = "[CESRGeoLMRegionIDCache lastUsedGeoLMRegionIdForLanguage:]";
      _os_log_debug_impl(&dword_225EEB000, v18, OS_LOG_TYPE_DEBUG, "%s GeoLM: No history of GeoLM usage. regionId: nil", buf, 0xCu);
    }

    v19 = 0;
  }

  return v19;
}

- (id)purgeUnusedGeoLMRegionIdFromCacheForLanguage:(id)language
{
  v45 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v5 = _AFPreferencesBoolValueForKeyWithContext();
  v6 = [(CESRGeoLMRegionIDCache *)self _geoLMAssetsInfoDictForLanguage:languageCopy];
  v7 = [v6 mutableCopy];

  v8 = [v7 count];
  v9 = v8;
  if (v5)
  {
    v10 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v39 = "[CESRGeoLMRegionIDCache purgeUnusedGeoLMRegionIdFromCacheForLanguage:]";
      v40 = 2048;
      v41 = v9;
      _os_log_debug_impl(&dword_225EEB000, v10, OS_LOG_TYPE_DEBUG, "%s GeoLM: GeoLM region specific assets deletion is disabled, number of regionIds used till now: %ld", buf, 0x16u);
    }

    goto LABEL_5;
  }

  if (v8 < 2)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_26;
  }

  v33 = v8;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v44 count:16];
  selfCopy = self;
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        v20 = [v12 objectForKeyedSubscript:{v19, selfCopy}];
        v21 = v20;
        if (v16 | v15)
        {
          if ([v20 compare:v15] == -1)
          {
            v22 = v19;

            v23 = v21;
            v15 = v23;
            v16 = v22;
          }
        }

        else
        {
          v16 = v19;
          v15 = v21;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v11 = v16;
  if (v33 != 2)
  {
    v29 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v39 = "[CESRGeoLMRegionIDCache purgeUnusedGeoLMRegionIdFromCacheForLanguage:]";
      v40 = 2112;
      v41 = v11;
      v42 = 2048;
      v43 = v33;
      v27 = "%s GeoLM: regionIdToBePurged: %@, _geoLMAssetsInfoDict count: %ld";
      v28 = v29;
      goto LABEL_30;
    }

LABEL_24:
    [v12 removeObjectForKey:{v11, selfCopy}];
    [v32 _updateUserDefaultsWithGeoLMAssetsInfoDict:v12 language:languageCopy];
    goto LABEL_25;
  }

  v24 = [v12 valueForKey:v11];
  v25 = [CESRUtilities calculateDiffInDaysFromTimestamp:v24];

  if (v25 >= 8)
  {
    v26 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v39 = "[CESRGeoLMRegionIDCache purgeUnusedGeoLMRegionIdFromCacheForLanguage:]";
      v40 = 2112;
      v41 = v11;
      v42 = 2048;
      v43 = v25;
      v27 = "%s GeoLM: regionIdToBePurged: %@, lastWhenUsed: %ld days ago";
      v28 = v26;
LABEL_30:
      _os_log_debug_impl(&dword_225EEB000, v28, OS_LOG_TYPE_DEBUG, v27, buf, 0x20u);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

LABEL_25:

LABEL_26:

  return v11;
}

- (void)updateGeoLMAssetsInfoDictWithRegionId:(id)id language:(id)language
{
  languageCopy = language;
  idCopy = id;
  v8 = [(CESRGeoLMRegionIDCache *)self _geoLMAssetsInfoDictForLanguage:languageCopy];
  v13 = [v8 mutableCopy];

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = v10;

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [v13 setObject:v12 forKey:idCopy];

  [(CESRGeoLMRegionIDCache *)self _updateUserDefaultsWithGeoLMAssetsInfoDict:v13 language:languageCopy];
}

- (CESRGeoLMRegionIDCache)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = CESRGeoLMRegionIDCache;
  v6 = [(CESRGeoLMRegionIDCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, defaults);
  }

  return v7;
}

- (CESRGeoLMRegionIDCache)init
{
  v6.receiver = self;
  v6.super_class = CESRGeoLMRegionIDCache;
  v2 = [(CESRGeoLMRegionIDCache *)&v6 init];
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = standardUserDefaults;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_3767);
  }

  v3 = sharedInstance_geoLMRegionIDCache;

  return v3;
}

uint64_t __40__CESRGeoLMRegionIDCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CESRGeoLMRegionIDCache);
  v1 = sharedInstance_geoLMRegionIDCache;
  sharedInstance_geoLMRegionIDCache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end