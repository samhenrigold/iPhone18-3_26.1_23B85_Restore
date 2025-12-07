@interface VSPreferencesInterface
+ (VSPreferencesInterface)defaultInstance;
+ (id)dictionaryRepresentationOfVoices:(id)voices;
- (NSString)deviceUUID;
- (VSPreferencesInterface)initWithSuiteName:(id)name;
- (_opaque_pthread_mutex_t)lock;
- (id)subscribedVoicesForClientID:(id)d accessoryID:(id)iD;
- (void)dealloc;
- (void)migrateDefaults;
- (void)removeSubscriptionsForAccessory:(id)accessory;
- (void)setLock:(_opaque_pthread_mutex_t *)lock;
- (void)setSubscribedVoices:(id)voices forClientID:(id)d accessoryID:(id)iD;
@end

@implementation VSPreferencesInterface

- (void)setLock:(_opaque_pthread_mutex_t *)lock
{
  v3 = *&lock->__sig;
  v4 = *&lock->__opaque[8];
  v5 = *&lock->__opaque[40];
  *&self->_lock.__opaque[24] = *&lock->__opaque[24];
  *&self->_lock.__opaque[40] = v5;
  *&self->_lock.__sig = v3;
  *&self->_lock.__opaque[8] = v4;
}

- (_opaque_pthread_mutex_t)lock
{
  v3 = *&self->__opaque[24];
  *&retstr->__sig = *&self->__opaque[8];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[1].__sig;
  *&retstr->__opaque[24] = *&self->__opaque[40];
  *&retstr->__opaque[40] = v4;
  return self;
}

- (NSString)deviceUUID
{
  v3 = [(NSUserDefaults *)self->_defaults stringForKey:@"deviceID"];
  v4 = v3;
  if (v3)
  {
    uUIDString = v3;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    [(NSUserDefaults *)self->_defaults setObject:uUIDString forKey:@"deviceID"];
  }

  return uUIDString;
}

- (void)removeSubscriptionsForAccessory:(id)accessory
{
  v10 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"subscribedAssets"];
  v6 = [v5 mutableCopy];

  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = accessoryCopy;
    _os_log_impl(&dword_272850000, v7, OS_LOG_TYPE_DEFAULT, "clearing auto-downloaded voice preferences for accessory %@", &v8, 0xCu);
  }

  [v6 setObject:0 forKeyedSubscript:accessoryCopy];
  [(NSUserDefaults *)self->_defaults setObject:v6 forKey:@"subscribedAssets"];
  pthread_mutex_unlock(&self->_lock);
}

- (void)setSubscribedVoices:(id)voices forClientID:(id)d accessoryID:(id)iD
{
  v58 = *MEMORY[0x277D85DE8];
  voicesCopy = voices;
  dCopy = d;
  iDCopy = iD;
  v11 = [VSPreferencesInterface dictionaryRepresentationOfVoices:voicesCopy];
  pthread_mutex_lock(&self->_lock);
  v12 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"subscribedAssets"];
  v13 = [v12 mutableCopy];
  v14 = v13;
  if (v13)
  {
    dictionary = v13;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v16 = dictionary;

  v17 = [v16 objectForKeyedSubscript:iDCopy];
  v18 = [v17 mutableCopy];
  v19 = v18;
  if (v18)
  {
    dictionary2 = v18;
  }

  else
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  }

  v21 = dictionary2;

  [v21 setObject:v11 forKeyedSubscript:dCopy];
  [v16 setObject:v21 forKeyedSubscript:iDCopy];
  [(NSUserDefaults *)self->_defaults setObject:v16 forKey:@"subscribedAssets"];
  pthread_mutex_unlock(&self->_lock);
  if (![iDCopy length] && objc_msgSend(dCopy, "isEqualToString:", @"com.apple.AssistantServices"))
  {
    soft_BYSetupAssistantNeedsToRun();
    if (v22 && ![(VSPreferencesInterface *)self OOBNeedsToBeMeasured])
    {
      [(VSPreferencesInterface *)self setOOBNeedsToBeMeasured:1];
      [(VSPreferencesInterface *)self setOOBTriggeredDate:0];
    }

    else
    {
      soft_BYSetupAssistantNeedsToRun();
      if ((v23 & 1) == 0)
      {
        firstObject = [voicesCopy firstObject];
        oOBTriggeredDate = [(VSPreferencesInterface *)self OOBTriggeredDate];

        if (!oOBTriggeredDate)
        {
          v26 = VSGetLogEvent();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            languages = [firstObject languages];
            firstObject2 = [languages firstObject];
            [firstObject name];
            *buf = 138412546;
            v55 = firstObject2;
            v57 = v56 = 2112;
            v27 = v57;
            _os_log_impl(&dword_272850000, v26, OS_LOG_TYPE_DEFAULT, "OOB subscription start observed with %@ %@", buf, 0x16u);
          }

          v28 = [MEMORY[0x277CBEAA8] now];
          [(VSPreferencesInterface *)self setOOBTriggeredDate:v28];
        }

        if ([(VSPreferencesInterface *)self OOBNeedsToBeMeasured])
        {
          v29 = +[VSMobileAssetsManager sharedManager];
          v30 = [v29 preferredDownloadForVoice:firstObject];
          v31 = v30;
          if (v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = firstObject;
          }

          v33 = v32;

          v47 = +[VSMobileAssetsManager sharedManager];
          languages2 = [v33 languages];
          firstObject3 = [languages2 firstObject];
          [v33 name];
          v34 = v53 = v33;
          v35 = [v47 selectVoiceForLang:firstObject3 name:v34 type:objc_msgSend(v33 gender:"type") footprint:{objc_msgSend(v33, "gender"), objc_msgSend(v33, "footprint")}];
          voiceData = [v35 voiceData];

          if ([voiceData footprint] >= 2)
          {
            v48 = [VSDownloadMetrics alloc];
            name = [voiceData name];
            languages3 = [voiceData languages];
            [languages3 firstObject];
            v39 = v51 = voiceData;
            gender = [voiceData gender];
            v41 = name;
            v42 = [(VSDownloadMetrics *)v48 initWithVoiceName:name languageCode:v39 gender:gender];

            mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
            bundleIdentifier = [mainBundle bundleIdentifier];
            [(VSDownloadMetrics *)v42 setClientBundleIdentifier:bundleIdentifier];

            voiceData = v51;
            [(VSDownloadMetrics *)v42 setDownloadSize:&unk_2881E0E60];
            LODWORD(v45) = 1.0;
            [(VSDownloadMetrics *)v42 setDownloadProgress:v45];
            [VSAnalytics reportDownloadMetrics:v42];
          }

          firstObject = v53;
        }
      }
    }
  }
}

- (id)subscribedVoicesForClientID:(id)d accessoryID:(id)iD
{
  v56[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v8 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"subscribedAssets"];
  array = [MEMORY[0x277CBEB18] array];
  v27 = iDCopy;
  if (iDCopy)
  {
    v56[0] = iDCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
  }

  else
  {
    v9 = objc_msgSend_allKeys(v8);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v9;
  v32 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v32)
  {
    v29 = *v49;
    v30 = v8;
    v31 = dCopy;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        v12 = [v8 objectForKey:v11];
        v13 = v12;
        v33 = v10;
        if (dCopy)
        {
          v54 = dCopy;
          [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
        }

        else
        {
          objc_msgSend_allKeys(v12);
        }
        v14 = ;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v34 = v14;
        v37 = [v34 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v37)
        {
          v35 = *v45;
          v36 = v13;
          do
          {
            v15 = 0;
            do
            {
              if (*v45 != v35)
              {
                objc_enumerationMutation(v34);
              }

              v38 = v15;
              v16 = *(*(&v44 + 1) + 8 * v15);
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v17 = [v13 objectForKeyedSubscript:v16];
              v18 = [v17 countByEnumeratingWithState:&v40 objects:v52 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v41;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v41 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = [[VSVoiceAsset alloc] initWithDictionaryRepresentation:*(*(&v40 + 1) + 8 * i)];
                    languages = [(VSVoiceAsset *)v22 languages];
                    v24 = [languages count];

                    if (v24)
                    {
                      v25 = [[VSVoiceSubscription alloc] initWithClient:v16 accessory:v11 voice:v22];
                      [array addObject:v25];
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v40 objects:v52 count:16];
                }

                while (v19);
              }

              v15 = v38 + 1;
              v13 = v36;
            }

            while (v38 + 1 != v37);
            v37 = [v34 countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v37);
        }

        v10 = v33 + 1;
        v8 = v30;
        dCopy = v31;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v32);
  }

  return array;
}

- (void)migrateDefaults
{
  v14 = [(NSUserDefaults *)self->_defaults arrayForKey:@"Auto Downloaded Assets"];
  if (v14)
  {
    v3 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"autoDownloadedAssets"];
    v4 = [v3 mutableCopy];
    v5 = v4;
    if (v4)
    {
      dictionary = v4;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v7 = dictionary;

    [v7 setObject:v14 forKey:@"com.apple.AssistantServices"];
    [(NSUserDefaults *)self->_defaults setObject:v7 forKey:@"autoDownloadedAssets"];
    [(NSUserDefaults *)self->_defaults removeObjectForKey:@"Auto Downloaded Assets"];
  }

  v8 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"autoDownloadedAssets"];
  if (v8)
  {
    v9 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"subscribedAssets"];
    v10 = [v9 mutableCopy];
    v11 = v10;
    if (v10)
    {
      dictionary2 = v10;
    }

    else
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    }

    v13 = dictionary2;

    [v13 setObject:v8 forKeyedSubscript:&stru_2881D71A8];
    [(NSUserDefaults *)self->_defaults setObject:v13 forKey:@"subscribedAssets"];
    [(NSUserDefaults *)self->_defaults removeObjectForKey:@"autoDownloadedAssets"];
  }
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = VSPreferencesInterface;
  [(VSPreferencesInterface *)&v3 dealloc];
}

- (VSPreferencesInterface)initWithSuiteName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = VSPreferencesInterface;
  v5 = [(VSPreferencesInterface *)&v12 init];
  v6 = v5;
  if (v5)
  {
    pthread_mutex_init(&v5->_lock, 0);
    if (geteuid() != 501)
    {
      v7 = VSGetLogDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_272850000, v7, OS_LOG_TYPE_ERROR, "process is not running as user Mobile: it won't share the same UserDefaults as voiced", v11, 2u);
      }
    }

    v8 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:nameCopy];
    defaults = v6->_defaults;
    v6->_defaults = v8;

    [(VSPreferencesInterface *)v6 migrateDefaults];
  }

  return v6;
}

+ (id)dictionaryRepresentationOfVoices:(id)voices
{
  v41 = *MEMORY[0x277D85DE8];
  voicesCopy = voices;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [voicesCopy countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v31;
    *&v5 = 138543618;
    v25 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(voicesCopy);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        languages = [v9 languages];
        firstObject = [languages firstObject];

        v12 = +[VSSpeechSynthesizerPreference availableLanguages];
        v13 = [v12 containsObject:firstObject];

        if ((v13 & 1) == 0)
        {
          v14 = [VSSpeechSynthesizerPreference fallbackLanguageForLanguage:firstObject];
          v39 = v14;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
          [v9 setLanguages:v15];

          v16 = VSGetLogDefault();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v36 = firstObject;
            v37 = 2114;
            v38 = v14;
            _os_log_impl(&dword_272850000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ is not TTS language, fallback to %{public}@", buf, 0x16u);
          }
        }
      }

      v6 = [voicesCopy countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v6);
  }

  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(voicesCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = voicesCopy;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        dictionaryRepresentation = [*(*(&v26 + 1) + 8 * j) dictionaryRepresentation];
        [v17 addObject:dictionaryRepresentation];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  return v17;
}

+ (VSPreferencesInterface)defaultInstance
{
  if (defaultInstance_onceToken != -1)
  {
    dispatch_once(&defaultInstance_onceToken, &__block_literal_global_2959);
  }

  v3 = defaultInstance_defaultInstance;

  return v3;
}

void __41__VSPreferencesInterface_defaultInstance__block_invoke()
{
  v0 = [[VSPreferencesInterface alloc] initWithSuiteName:@"com.apple.voiceservices"];
  v1 = defaultInstance_defaultInstance;
  defaultInstance_defaultInstance = v0;
}

@end