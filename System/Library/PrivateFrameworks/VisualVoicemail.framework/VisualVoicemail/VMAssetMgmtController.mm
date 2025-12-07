@interface VMAssetMgmtController
- (BOOL)isInferredLanguage:(id)language;
- (BOOL)updateControllerWithLocale:(id)locale assetIdentifier:(id)identifier;
- (VMAssetMgmtController)init;
- (id)getAssetFreqMap;
- (void)updateSystemContext;
- (void)updateVMContextLanguage;
@end

@implementation VMAssetMgmtController

- (VMAssetMgmtController)init
{
  v9.receiver = self;
  v9.super_class = VMAssetMgmtController;
  v2 = [(VMAssetMgmtController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(VMMegadomeClient);
    megadomeClient = v2->_megadomeClient;
    v2->_megadomeClient = v3;

    v5 = objc_alloc_init(VMContextLRUCache);
    vmContextLRUCache = v2->_vmContextLRUCache;
    v2->_vmContextLRUCache = v5;

    vmContextLanguage = v2->_vmContextLanguage;
    v2->_vmContextLanguage = &stru_1000F0098;

    [(VMAssetMgmtController *)v2 updateSystemContext];
  }

  return v2;
}

- (void)updateSystemContext
{
  v3 = +[NSLocale currentLocale];
  languageCode = [v3 languageCode];
  lowercaseString = [languageCode lowercaseString];
  systemLanguage = self->_systemLanguage;
  self->_systemLanguage = lowercaseString;

  v7 = objc_alloc_init(NSMutableArray);
  preferredLanguages = self->_preferredLanguages;
  self->_preferredLanguages = v7;

  v9 = +[NSLocale preferredLanguages];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [NSLocale componentsFromLocaleIdentifier:*(*(&v19 + 1) + 8 * v13)];
        v15 = [v14 objectForKey:NSLocaleLanguageCode];
        if (v15)
        {
          [(NSMutableArray *)self->_preferredLanguages addObject:v15];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
      v11 = v10;
    }

    while (v10);
  }

  v16 = sub_100002740(v10);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_systemLanguage;
    v18 = self->_preferredLanguages;
    *buf = 138412546;
    v24 = v17;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "updateSystemContext: systemLang: %@, preferredLangs: %@", buf, 0x16u);
  }
}

- (void)updateVMContextLanguage
{
  getLatestNode = [(VMContextLRUCache *)self->_vmContextLRUCache getLatestNode];
  v4 = getLatestNode;
  if (getLatestNode && ([getLatestNode language], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
  {
    language = [v4 language];
    v8 = [NSLocale localeWithLocaleIdentifier:language];

    if (v8)
    {
      languageCode = [v8 languageCode];
      lowercaseString = [languageCode lowercaseString];
      vmContextLanguage = self->_vmContextLanguage;
      self->_vmContextLanguage = lowercaseString;
    }

    else
    {
      languageCode = self->_vmContextLanguage;
      self->_vmContextLanguage = &stru_1000F0098;
    }
  }

  else
  {
    v8 = self->_vmContextLanguage;
    self->_vmContextLanguage = &stru_1000F0098;
  }

  v13 = sub_100002740(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_vmContextLanguage;
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "updateVMContextLanguage: %@", &v15, 0xCu);
  }
}

- (BOOL)isInferredLanguage:(id)language
{
  languageCopy = language;
  languageCode = [languageCopy languageCode];
  lowercaseString = [languageCode lowercaseString];

  if (lowercaseString)
  {
    v8 = objc_autoreleasePoolPush();
    systemLanguage = [(VMAssetMgmtController *)self systemLanguage];
    v10 = [systemLanguage isEqual:lowercaseString];

    if (v10)
    {
      v12 = sub_100002740(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = lowercaseString;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "isInferredLanguage: %@ is system language", &v25, 0xCu);
      }

      LOBYTE(v13) = 1;
    }

    else
    {
      preferredLanguages = [(VMAssetMgmtController *)self preferredLanguages];
      v12 = [NSMutableSet setWithArray:preferredLanguages];

      v16 = [v12 containsObject:lowercaseString];
      if (v16)
      {
        getMegadomeLanguages = sub_100002740(v16);
        if (os_log_type_enabled(getMegadomeLanguages, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = lowercaseString;
          _os_log_impl(&_mh_execute_header, getMegadomeLanguages, OS_LOG_TYPE_DEFAULT, "isInferredLanguage: %@ is preferred language", &v25, 0xCu);
        }

        LOBYTE(v13) = 1;
      }

      else
      {
        megadomeClient = [(VMAssetMgmtController *)self megadomeClient];
        getMegadomeLanguages = [megadomeClient getMegadomeLanguages];

        v19 = [NSMutableSet setWithArray:getMegadomeLanguages];
        v13 = [v19 containsObject:lowercaseString];
        v20 = sub_100002740(v13);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v21)
          {
            v25 = 138412290;
            v26 = lowercaseString;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "isInferredLanguage: %@ found in megadome context", &v25, 0xCu);
          }
        }

        else if (v21)
        {
          systemLanguage2 = [(VMAssetMgmtController *)self systemLanguage];
          preferredLanguages2 = [(VMAssetMgmtController *)self preferredLanguages];
          v25 = 138413058;
          v26 = lowercaseString;
          v27 = 2112;
          v28 = systemLanguage2;
          v29 = 2112;
          v30 = preferredLanguages2;
          v31 = 2112;
          v32 = getMegadomeLanguages;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "updateSystemContext: %@ not found, systemLang: %@, preferredLangs: %@, megadomeLangs: %@", &v25, 0x2Au);
        }
      }
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v14 = sub_100002740(v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "isInferredLanguage: invalid language", &v25, 2u);
    }

    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)updateControllerWithLocale:(id)locale assetIdentifier:(id)identifier
{
  vmContextLRUCache = self->_vmContextLRUCache;
  identifierCopy = identifier;
  languageIdentifier = [locale languageIdentifier];
  LOBYTE(vmContextLRUCache) = [(VMContextLRUCache *)vmContextLRUCache updateLanguageCount:languageIdentifier assetIdentifier:identifierCopy];

  return vmContextLRUCache;
}

- (id)getAssetFreqMap
{
  freqMap = [(VMContextLRUCache *)self->_vmContextLRUCache freqMap];
  modelMap = [freqMap modelMap];

  return modelMap;
}

@end