@interface REAppNameCache
- (id)_init;
- (id)localizedNameForApplicationWithIdentifier:(id)identifier;
@end

@implementation REAppNameCache

- (id)_init
{
  v8.receiver = self;
  v8.super_class = REAppNameCache;
  _init = [(RESingleton *)&v8 _init];
  if (_init)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v4 = _init[1];
    _init[1] = dictionary;

    v5 = objc_opt_new();
    v6 = _init[2];
    _init[2] = v5;
  }

  return _init;
}

- (id)localizedNameForApplicationWithIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  IsRemote = REApplicationIsRemote(identifierCopy);
  v6 = [[_REAppKey alloc] initWithIdentifier:identifierCopy remote:IsRemote];
  [(NSLock *)self->_lock lock];
  localizedName = [(NSMutableDictionary *)self->_nameCache objectForKeyedSubscript:v6];
  [(NSLock *)self->_lock unlock];
  if (!localizedName)
  {
    if (IsRemote)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2050000000;
      v8 = getCSLPRFDefaultAppDataProviderClass_softClass_0;
      v22 = getCSLPRFDefaultAppDataProviderClass_softClass_0;
      if (!getCSLPRFDefaultAppDataProviderClass_softClass_0)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCSLPRFDefaultAppDataProviderClass_block_invoke_0;
        v24 = &unk_2785F9BC0;
        v25 = &v19;
        __getCSLPRFDefaultAppDataProviderClass_block_invoke_0(buf);
        v8 = v20[3];
      }

      v9 = v8;
      _Block_object_dispose(&v19, 8);
      v10 = objc_alloc_init(v8);
      v11 = dispatch_get_global_queue(33, 0);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        *&buf[22] = 2112;
        v24 = v11;
        _os_log_impl(&dword_22859F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> %@ is loading apps using %@, completionQueue %@", buf, 0x20u);
      }

      v12 = dispatch_semaphore_create(0);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __60__REAppNameCache_localizedNameForApplicationWithIdentifier___block_invoke;
      v17[3] = &unk_2785FC788;
      v17[4] = self;
      v18 = v12;
      v13 = v12;
      [v10 loadAppsWithCompletion:v17 completionQueue:v11];
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      [(NSLock *)self->_lock lock];
      localizedName = [(NSMutableDictionary *)self->_nameCache objectForKeyedSubscript:v6];
      [(NSLock *)self->_lock unlock];
    }

    else
    {
      v16 = 0;
      v10 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v16];
      v11 = v16;
      localizedName = [v10 localizedName];
      [(NSLock *)self->_lock lock];
      [(NSMutableDictionary *)self->_nameCache setObject:localizedName forKeyedSubscript:v6];
      [(NSLock *)self->_lock unlock];
    }
  }

  v14 = localizedName;

  return v14;
}

void __60__REAppNameCache_localizedNameForApplicationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412546;
    v23 = v4;
    v24 = 1024;
    v25 = [v3 count];
    _os_log_impl(&dword_22859F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> %@ loaded %d apps, processing", buf, 0x12u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [v3 allValues];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 name];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = &stru_283B97458;
        }

        v12 = [_REAppKey alloc];
        v13 = [v9 bundleID];
        v14 = [(_REAppKey *)v12 initWithIdentifier:v13 remote:1];

        [*(*(a1 + 32) + 16) lock];
        [*(*(a1 + 32) + 8) setObject:v11 forKeyedSubscript:v14];
        [*(*(a1 + 32) + 16) unlock];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

@end