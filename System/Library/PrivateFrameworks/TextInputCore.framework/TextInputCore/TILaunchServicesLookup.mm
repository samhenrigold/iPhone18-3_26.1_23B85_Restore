@interface TILaunchServicesLookup
+ (id)genreIDsForApplicationIdentifier:(id)identifier;
+ (id)lookupAppNames;
+ (id)sharedInstance;
+ (void)enumerateInstalledApplicationNames:(id)names;
- (TILaunchServicesLookup)init;
- (id)appNames;
- (id)tryCache;
- (void)cacheNames:(id)names;
- (void)dealloc;
- (void)enumerateAppNames:(id)names;
- (void)handleMemoryPressureLevel:(unint64_t)level excessMemoryInBytes:(unint64_t)bytes;
- (void)resetCache;
@end

@implementation TILaunchServicesLookup

- (void)handleMemoryPressureLevel:(unint64_t)level excessMemoryInBytes:(unint64_t)bytes
{
  if (level == 3)
  {
    [(TILaunchServicesLookup *)self resetCache:3];
  }
}

- (void)enumerateAppNames:(id)names
{
  v16 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  if (namesCopy)
  {
    [(TILaunchServicesLookup *)self appNames];
    v14 = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        namesCopy[2](namesCopy, *(*(&v10 + 1) + 8 * v9), &v14);
        if (v14)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (id)appNames
{
  v10 = *MEMORY[0x277D85DE8];
  tryCache = [(TILaunchServicesLookup *)self tryCache];
  if (!tryCache)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[TILaunchServicesLookup appNames]";
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  Requesting installed app names from LaunchServices.", &v6, 0xCu);
    }

    tryCache = +[TILaunchServicesLookup lookupAppNames];
    [(TILaunchServicesLookup *)self cacheNames:tryCache];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [tryCache count];
    v6 = 136315394;
    v7 = "[TILaunchServicesLookup appNames]";
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s  Got installed app names (count = %lu).", &v6, 0x16u);
  }

  return tryCache;
}

- (void)resetCache
{
  obj = self;
  objc_sync_enter(obj);
  [(TILaunchServicesLookup *)obj setCache:0];
  [(TILaunchServicesLookup *)obj setLastCacheUpdate:0];
  objc_sync_exit(obj);
}

- (void)cacheNames:(id)names
{
  obj = self;
  namesCopy = names;
  objc_sync_enter(obj);
  [(TILaunchServicesLookup *)obj setCache:namesCopy];

  date = [MEMORY[0x277CBEAA8] date];
  [(TILaunchServicesLookup *)obj setLastCacheUpdate:date];

  objc_sync_exit(obj);
}

- (id)tryCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cache = [(TILaunchServicesLookup *)selfCopy cache];
  if (cache && (v4 = cache, [(TILaunchServicesLookup *)selfCopy lastCacheUpdate], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastCacheUpdate = [(TILaunchServicesLookup *)selfCopy lastCacheUpdate];
    v8 = [lastCacheUpdate dateByAddingTimeInterval:1200.0];

    v9 = [date earlierDate:v8];

    if (v9 == date)
    {
      cache2 = [(TILaunchServicesLookup *)selfCopy cache];
    }

    else
    {
      cache2 = 0;
    }
  }

  else
  {
    cache2 = 0;
  }

  objc_sync_exit(selfCopy);

  return cache2;
}

- (void)dealloc
{
  v3 = +[TIKeyboardActivityController sharedController];
  [v3 removeActivityObserver:self];

  v4.receiver = self;
  v4.super_class = TILaunchServicesLookup;
  [(TILaunchServicesLookup *)&v4 dealloc];
}

- (TILaunchServicesLookup)init
{
  v5.receiver = self;
  v5.super_class = TILaunchServicesLookup;
  v2 = [(TILaunchServicesLookup *)&v5 init];
  if (v2)
  {
    v3 = +[TIKeyboardActivityController sharedController];
    [v3 addActivityObserver:v2];
  }

  return v2;
}

+ (id)genreIDsForApplicationIdentifier:(id)identifier
{
  v41 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (__disableForTesting)
  {
    v4 = 0;
  }

  else
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v5 = getLSApplicationProxyClass_softClass_9054;
    v39 = getLSApplicationProxyClass_softClass_9054;
    if (!getLSApplicationProxyClass_softClass_9054)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __getLSApplicationProxyClass_block_invoke_9055;
      v35[3] = &unk_278733760;
      v35[4] = &v36;
      __getLSApplicationProxyClass_block_invoke_9055(v35);
      v5 = v37[3];
    }

    v6 = v5;
    _Block_object_dispose(&v36, 8);
    v7 = [v5 applicationProxyForIdentifier:identifierCopy];
    bundleContainerURL = [v7 bundleContainerURL];
    path = [bundleContainerURL path];
    v10 = [path stringByAppendingPathComponent:@"iTunesMetadata.plist"];

    v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v10];
    v12 = [v11 objectForKey:@"subgenres"];
    v13 = [MEMORY[0x277CBEB58] set];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v11;
      v29 = v10;
      v30 = identifierCopy;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v27 = v12;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v31 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [v19 objectForKey:@"genreId"];
              if ([v20 integerValue] < 7001)
              {
                v21 = v13;
                v22 = v20;
              }

              else
              {
                v21 = v13;
                v22 = &unk_28400BE38;
              }

              [v21 addObject:v22];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v16);
      }

      identifierCopy = v30;
      v11 = v28;
      v10 = v29;
      v12 = v27;
    }

    v23 = [v11 objectForKey:@"genreId"];
    if ([v23 integerValue] < 7001)
    {
      v25 = v13;
      v24 = v23;
    }

    else
    {
      v24 = &unk_28400BE38;
      v25 = v13;
    }

    [v25 addObject:v24];
    if ([v13 count])
    {
      v4 = v13;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)lookupAppNames
{
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getLSApplicationWorkspaceClass_softClass;
  v14 = getLSApplicationWorkspaceClass_softClass;
  if (!getLSApplicationWorkspaceClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getLSApplicationWorkspaceClass_block_invoke;
    v10[3] = &unk_278733760;
    v10[4] = &v11;
    __getLSApplicationWorkspaceClass_block_invoke(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  defaultWorkspace = [v3 defaultWorkspace];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__TILaunchServicesLookup_lookupAppNames__block_invoke;
  v8[3] = &unk_278730BC8;
  v6 = array;
  v9 = v6;
  [defaultWorkspace enumerateBundlesOfType:1 block:v8];

  return v6;
}

void __40__TILaunchServicesLookup_lookupAppNames__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if ([*(a1 + 32) count] >= 0x12C)
  {
    *a3 = 1;
    goto LABEL_10;
  }

  v5 = v12;
  v6 = [v5 applicationType];
  if (objc_msgSend_isEqualToString_(v6))
  {
    goto LABEL_8;
  }

  v7 = [v5 applicationType];
  if (objc_msgSend_isEqualToString_(v7))
  {
    goto LABEL_7;
  }

  v8 = [v5 appTags];
  if ([v8 containsObject:@"hidden"])
  {

LABEL_7:
    goto LABEL_8;
  }

  v9 = [v5 bundleIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(v9);

  if (isEqualToString)
  {
    goto LABEL_9;
  }

  v11 = [v5 objectForInfoDictionaryKey:@"SBIconVisibilityDefaultVisible" ofClass:objc_opt_class()];
  v6 = v11;
  if (!v11 || [v11 BOOLValue])
  {
    v7 = [v5 localizedName];
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
LABEL_10:
}

+ (void)enumerateInstalledApplicationNames:(id)names
{
  if ((__disableForTesting & 1) == 0)
  {
    namesCopy = names;
    v5 = +[TILaunchServicesLookup sharedInstance];
    [v5 enumerateAppNames:namesCopy];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9097 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9097, &__block_literal_global_9098);
  }

  v3 = sharedInstance_instance_9099;

  return v3;
}

uint64_t __40__TILaunchServicesLookup_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TILaunchServicesLookup);
  v1 = sharedInstance_instance_9099;
  sharedInstance_instance_9099 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end