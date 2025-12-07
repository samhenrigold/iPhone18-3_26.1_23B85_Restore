@interface KMIntentVocabularyMultiDatasetBridge
- (KMIntentVocabularyMultiDatasetBridge)init;
- (KMIntentVocabularyMultiDatasetBridge)initWithStoreManager:(id)manager authorization:(id)authorization;
- (void)enumerateAllDatasets:(unint64_t *)datasets usingBlock:(id)block;
@end

@implementation KMIntentVocabularyMultiDatasetBridge

- (void)enumerateAllDatasets:(unint64_t *)datasets usingBlock:(id)block
{
  v43 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  savedCustomVocabularyOverviewDictionary = [(KMIntentVocabularyStoreManager *)self->_storeManager savedCustomVocabularyOverviewDictionary];
  allKeys = [savedCustomVocabularyOverviewDictionary allKeys];
  v8 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [allKeys componentsJoinedByString:{@", "}];
    *buf = 136315394;
    v40 = "[KMIntentVocabularyMultiDatasetBridge enumerateAllDatasets:usingBlock:]";
    v41 = 2112;
    v42 = v10;
    _os_log_impl(&dword_2559DF000, v9, OS_LOG_TYPE_INFO, "%s Enumerating Intents Custom Vocabulary from all available apps=[%@]", buf, 0x16u);
  }

  *datasets = [allKeys count];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = allKeys;
  v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v23 = *v34;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [(KMIntentVocabularyStoreManager *)self->_storeManager resolveIntentSlotsForApp:v12 fromAllAppsOverview:savedCustomVocabularyOverviewDictionary];
        if ([v14 count])
        {
          v27 = v13;
          v28 = v11;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v26 = v14;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v30;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v30 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [[KMIntentVocabularyDatasetBridge alloc] initWithAppId:v12 intentSlot:*(*(&v29 + 1) + 8 * i) storeManager:self->_storeManager authorization:self->_authorization itemMapper:self->_itemMapper];
                if (v20)
                {
                  blockCopy[2](blockCopy, v20);
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v17);
          }

          v13 = v27;
          v11 = v28;
          v14 = v26;
        }

        else
        {
          v21 = KMLogContextCore;
          if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v40 = "[KMIntentVocabularyMultiDatasetBridge enumerateAllDatasets:usingBlock:]";
            v41 = 2112;
            v42 = v12;
            _os_log_debug_impl(&dword_2559DF000, v21, OS_LOG_TYPE_DEBUG, "%s Found no intentSlots associated with appId=%@ in custom vocabulary directory.", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v11 != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }
}

- (KMIntentVocabularyMultiDatasetBridge)initWithStoreManager:(id)manager authorization:(id)authorization
{
  v23 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  authorizationCopy = authorization;
  v18.receiver = self;
  v18.super_class = KMIntentVocabularyMultiDatasetBridge;
  v9 = [(KMIntentVocabularyMultiDatasetBridge *)&v18 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v9->_storeManager, manager);
  objc_storeStrong(&v10->_authorization, authorization);
  if (!v10->_storeManager || !v10->_authorization)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v17 = 0;
  v11 = [objc_alloc(MEMORY[0x277D22D30]) initWithObjectClass:objc_opt_class() error:&v17];
  v12 = v17;
  itemMapper = v10->_itemMapper;
  v10->_itemMapper = v11;

  if (!v10->_itemMapper)
  {
    v15 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[KMIntentVocabularyMultiDatasetBridge initWithStoreManager:authorization:]";
      v21 = 2112;
      v22 = v12;
      _os_log_error_impl(&dword_2559DF000, v15, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_6:
  v14 = v10;
LABEL_11:

  return v14;
}

- (KMIntentVocabularyMultiDatasetBridge)init
{
  v3 = objc_alloc_init(KMIntentVocabularyStoreManager);
  v4 = objc_alloc_init(KMIntentVocabularyAuthorization);
  v5 = [(KMIntentVocabularyMultiDatasetBridge *)self initWithStoreManager:v3 authorization:v4];

  return v5;
}

@end