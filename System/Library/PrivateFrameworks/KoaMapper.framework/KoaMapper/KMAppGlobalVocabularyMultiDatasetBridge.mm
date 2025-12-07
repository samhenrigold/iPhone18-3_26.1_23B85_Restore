@interface KMAppGlobalVocabularyMultiDatasetBridge
- (KMAppGlobalVocabularyMultiDatasetBridge)init;
- (KMAppGlobalVocabularyMultiDatasetBridge)initWithModifiedOriginAppIds:(id)ids languageCode:(id)code;
- (id)_extractAllAppIntentVocabularyForApp:(id)app languageCode:(id)code;
- (id)_extractAllAppIntentVocabularyFromBundle:(__CFBundle *)bundle languageCode:(id)code;
- (id)_sortAppIntentVocabularyByCascadeItemType:(id)type;
- (void)enumerateAllDatasets:(unint64_t *)datasets usingBlock:(id)block;
@end

@implementation KMAppGlobalVocabularyMultiDatasetBridge

- (id)_sortAppIntentVocabularyByCascadeItemType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = typeCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __85__KMAppGlobalVocabularyMultiDatasetBridge__sortAppIntentVocabularyByCascadeItemType___block_invoke;
        v12[3] = &unk_279805C58;
        v13 = v4;
        v14 = v10;
        [v10 enumerateFieldsUsingBlock:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

void __85__KMAppGlobalVocabularyMultiDatasetBridge__sortAppIntentVocabularyByCascadeItemType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 fieldType] - 600;
  if (v6 <= 4)
  {
    v7 = word_255A00808[v6];
    if (v7 != *MEMORY[0x277CF94A8])
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:word_255A00808[v6]];
      v12 = [v8 objectForKey:v9];

      if (!v12)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v10 = *(a1 + 32);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
        [v10 setObject:v12 forKey:v11];
      }

      [v12 addObject:*(a1 + 40)];
      *a4 = 1;
    }
  }
}

- (id)_extractAllAppIntentVocabularyFromBundle:(__CFBundle *)bundle languageCode:(id)code
{
  v27 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v7 = CFBundleCopyResourceURLForLocalization(bundle, @"AppIntentVocabulary", @"plist", 0, codeCopy);
  if (!v7)
  {
    v8 = codeCopy;
    if ([(__CFString *)v8 length])
    {
      v9 = [(__CFString *)v8 componentsSeparatedByString:@"-"];
      firstObject = [v9 firstObject];
    }

    else
    {
      firstObject = 0;
    }

    v11 = CFBundleCopyResourceURLForLocalization(bundle, @"AppIntentVocabulary", @"plist", 0, firstObject);
    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v12 = [(__CFString *)v8 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
      v13 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v12];

      v7 = CFBundleCopyResourceURLForLocalization(bundle, @"AppIntentVocabulary", @"plist", 0, [v13 localeIdentifier]);
      if (!v7)
      {

        v16 = 0;
        goto LABEL_19;
      }
    }
  }

  v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v7];
  if (v14)
  {
    itemMapper = self->_itemMapper;
    v22 = 0;
    v16 = [(KVItemMapper *)itemMapper mapObject:v14 error:&v22];
    v17 = v22;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v20 = KMLogContextCore;
      if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[KMAppGlobalVocabularyMultiDatasetBridge _extractAllAppIntentVocabularyFromBundle:languageCode:]";
        v25 = 2112;
        v26 = v17;
        _os_log_error_impl(&dword_2559DF000, v20, OS_LOG_TYPE_ERROR, "%s Failed to map appIntentVocabulary with error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v19 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[KMAppGlobalVocabularyMultiDatasetBridge _extractAllAppIntentVocabularyFromBundle:languageCode:]";
      v25 = 2112;
      v26 = v7;
      _os_log_error_impl(&dword_2559DF000, v19, OS_LOG_TYPE_ERROR, "%s Failed to initialize appIntentVocabulary dictionary from URL: %@", buf, 0x16u);
    }

    v17 = 0;
    v16 = 0;
  }

LABEL_19:

  return v16;
}

- (id)_extractAllAppIntentVocabularyForApp:(id)app languageCode:(id)code
{
  v21 = *MEMORY[0x277D85DE8];
  appCopy = app;
  codeCopy = code;
  if (codeCopy)
  {
    v16 = 0;
    v8 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:appCopy allowPlaceholder:0 error:&v16];
    v9 = v16;
    [v8 URL];
    Unique = _CFBundleCreateUnique();
    if (Unique)
    {
      v11 = Unique;
      v12 = [(KMAppGlobalVocabularyMultiDatasetBridge *)self _extractAllAppIntentVocabularyFromBundle:Unique languageCode:codeCopy];
      _CFBundleFlushBundleCaches();
      CFRelease(v11);
    }

    else
    {
      v14 = KMLogContextCore;
      if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[KMAppGlobalVocabularyMultiDatasetBridge _extractAllAppIntentVocabularyForApp:languageCode:]";
        v19 = 2112;
        v20 = appCopy;
        _os_log_error_impl(&dword_2559DF000, v14, OS_LOG_TYPE_ERROR, "%s Cannot create a bundle instance with appId: %@", buf, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "[KMAppGlobalVocabularyMultiDatasetBridge _extractAllAppIntentVocabularyForApp:languageCode:]";
      _os_log_error_impl(&dword_2559DF000, v13, OS_LOG_TYPE_ERROR, "%s nil languageCode", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (void)enumerateAllDatasets:(unint64_t *)datasets usingBlock:(id)block
{
  v48 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v6 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x277CCABB0];
    modifiedAppIds = self->_modifiedAppIds;
    v9 = v6;
    v10 = [v7 numberWithUnsignedInteger:{-[NSSet count](modifiedAppIds, "count")}];
    *buf = 136315394;
    v45 = "[KMAppGlobalVocabularyMultiDatasetBridge enumerateAllDatasets:usingBlock:]";
    v46 = 2112;
    v47 = v10;
    _os_log_impl(&dword_2559DF000, v9, OS_LOG_TYPE_INFO, "%s Scanning app global terms for %@ modified apps", buf, 0x16u);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = self->_modifiedAppIds;
  v29 = [(NSSet *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  v11 = 0;
  if (v29)
  {
    v28 = *v39;
    selfCopy = self;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [(KMAppGlobalVocabularyMultiDatasetBridge *)self _extractAllAppIntentVocabularyForApp:v13 languageCode:self->_languageCode];
        if (v15)
        {
          v31 = v14;
          v32 = i;
          v30 = v15;
          v16 = [(KMAppGlobalVocabularyMultiDatasetBridge *)self _sortAppIntentVocabularyByCascadeItemType:v15];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v35;
            do
            {
              v33 = v11;
              for (j = 0; j != v18; ++j)
              {
                if (*v35 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v34 + 1) + 8 * j);
                v22 = [v16 objectForKey:v21];
                v23 = -[KMAppGlobalVocabularyBridge initWithOriginAppId:cascadeItemType:items:]([KMAppGlobalVocabularyBridge alloc], "initWithOriginAppId:cascadeItemType:items:", v13, [v21 unsignedShortValue], v22);
                v24 = KMLogContextCore;
                if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  v45 = "[KMAppGlobalVocabularyMultiDatasetBridge enumerateAllDatasets:usingBlock:]";
                  v46 = 2112;
                  v47 = v13;
                  _os_log_impl(&dword_2559DF000, v24, OS_LOG_TYPE_INFO, "%s Extracting app global terms for app: %@", buf, 0x16u);
                }

                blockCopy[2](blockCopy, v23);
              }

              v11 = v33 + v18;
              v18 = [v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v18);
          }

          self = selfCopy;
          v14 = v31;
          i = v32;
          v15 = v30;
        }

        objc_autoreleasePoolPop(v14);
      }

      v29 = [(NSSet *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v29);
  }

  *datasets = v11;
}

- (KMAppGlobalVocabularyMultiDatasetBridge)initWithModifiedOriginAppIds:(id)ids languageCode:(id)code
{
  v28 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  codeCopy = code;
  v21.receiver = self;
  v21.super_class = KMAppGlobalVocabularyMultiDatasetBridge;
  v9 = [(KMAppGlobalVocabularyMultiDatasetBridge *)&v21 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v9->_modifiedAppIds, ids);
  objc_storeStrong(&v10->_languageCode, code);
  modifiedAppIds = v10->_modifiedAppIds;
  if (!modifiedAppIds || !v10->_languageCode)
  {
    v16 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      languageCode = v10->_languageCode;
      *buf = 136315650;
      v23 = "[KMAppGlobalVocabularyMultiDatasetBridge initWithModifiedOriginAppIds:languageCode:]";
      v24 = 2112;
      v25 = modifiedAppIds;
      v26 = 2112;
      v27 = languageCode;
      _os_log_error_impl(&dword_2559DF000, v16, OS_LOG_TYPE_ERROR, "%s Invalid {modified: %@ language: %@}", buf, 0x20u);
    }

    goto LABEL_12;
  }

  v20 = 0;
  v12 = [objc_alloc(MEMORY[0x277D22D30]) initWithObjectClass:objc_opt_class() error:&v20];
  v13 = v20;
  itemMapper = v10->_itemMapper;
  v10->_itemMapper = v12;

  if (!v10->_itemMapper)
  {
    v18 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[KMAppGlobalVocabularyMultiDatasetBridge initWithModifiedOriginAppIds:languageCode:]";
      v24 = 2112;
      v25 = v13;
      _os_log_error_impl(&dword_2559DF000, v18, OS_LOG_TYPE_ERROR, "%s Cannot initialize item mapper with error: %@", buf, 0x16u);
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

LABEL_6:
  v15 = v10;
LABEL_13:

  return v15;
}

- (KMAppGlobalVocabularyMultiDatasetBridge)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

@end