@interface SRDefaultsManager
+ (id)defaultProperties;
+ (id)defaultValueWithKey:(id)key;
+ (id)sharedDefaultsManager;
+ (id)userDefaults;
+ (int64_t)version;
+ (void)removeDefaults;
+ (void)removeKey:(id)key;
+ (void)setDefaultWithKey:(id)key value:(id)value;
+ (void)setVersionWithValue:(int64_t)value;
- (BOOL)didFetchForLanguage:(id)language;
- (SRDefaultsManager)init;
- (id)allLoadedAssets;
- (id)assertionsDump;
- (id)assetBundleForLocale:(id)locale client:(id)client force:(BOOL)force;
- (id)assetConfigDump;
- (id)assetsFromResourcePath:(id)path deliveryType:(id)type assetType:(id)assetType language:(id)language force:(BOOL)force;
- (id)currentAssetTypes;
- (id)currentNamespaceDescription;
- (id)currentNamespaces;
- (id)currentNamespacesForClient:(id)client;
- (id)fetchedLanguages;
- (id)loadAssetsForLanguage:(id)language reload:(BOOL)reload force:(BOOL)force;
- (id)loadDefaultsForLocale:(id)locale reload:(BOOL)reload force:(BOOL)force;
- (id)loadOTAAssetsForLanguage:(id)language updateCache:(BOOL)cache assetTypes:(id)types force:(BOOL)force;
- (id)parametersOfNamespaceWithName:(id)name;
- (id)parametersOfNamespaceWithName:(id)name client:(id)client;
- (id)resourceBundle;
- (id)trialConfigDump;
- (void)_loadAssets:(id)assets shouldUpdate:(BOOL)update;
- (void)_unloadAssetsForLocale:(id)locale;
- (void)addFetchForLanguage:(id)language;
- (void)dealloc;
- (void)didUpdateAssetsWithType:(id)type;
- (void)didUpdateTrialNamespace:(id)namespace;
- (void)loadDefaultsFromDefaultAssets:(id)assets;
- (void)loadFactorsAtPath:(id)path namespaceId:(id)id;
- (void)loadSystemAssetsForLanguage:(id)language assetTypes:(id)types;
- (void)loadTestAssetsForLanguage:(id)language assetTypes:(id)types;
- (void)notifyObserversWithLanguage:(id)language bundleVersions:(id)versions reloadFromCache:(BOOL)cache force:(BOOL)force;
- (void)refreshCacheForLanguages:(id)languages force:(BOOL)force completion:(id)completion;
- (void)registerDelegate:(id)delegate;
- (void)removeFetchForLanguage:(id)language;
- (void)requestAssetsForLanguages:(id)languages removeExisting:(BOOL)existing force:(BOOL)force;
- (void)requestCatalogUpdate;
- (void)unloadDefaultsForLocale:(id)locale;
- (void)unregisterDelegate:(id)delegate;
- (void)updateFetchedLanguages:(id)languages;
- (void)updateParameter:(id)parameter inNamespace:(id)namespace withValue:(id)value;
@end

@implementation SRDefaultsManager

+ (id)sharedDefaultsManager
{
  if (sharedDefaultsManager_onceToken != -1)
  {
    +[SRDefaultsManager sharedDefaultsManager];
  }

  v3 = sharedDefaultsManager_gDefaultsManager;

  return v3;
}

- (SRDefaultsManager)init
{
  v55 = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = SRDefaultsManager;
  v2 = [(SRDefaultsManager *)&v52 init];
  if (v2)
  {
    v3 = +[SRAssetConfiguration configuration];
    assetConfig = v2->_assetConfig;
    v2->_assetConfig = v3;

    v5 = +[SRTrialConfiguration configuration];
    trialConfig = v2->_trialConfig;
    v2->_trialConfig = v5;

    v7 = +[SRLanguageConfiguration configuration];
    langConfig = v2->_langConfig;
    v2->_langConfig = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assets = v2->_assets;
    v2->_assets = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    parameters = v2->_parameters;
    v2->_parameters = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    fetchedLanguages = v2->_fetchedLanguages;
    v2->_fetchedLanguages = v13;

    v2->_fetchedRoot = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = weakObjectsHashTable;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    cachedOTALanguages = v2->_cachedOTALanguages;
    v2->_cachedOTALanguages = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    requestedOTALanguages = v2->_requestedOTALanguages;
    v2->_requestedOTALanguages = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_BACKGROUND, 0);

    v23 = dispatch_queue_create("com.apple.spotlightresources.ddsLoading", v22);
    ddsQueue = v2->_ddsQueue;
    v2->_ddsQueue = v23;

    v25 = dispatch_queue_create("com.apple.spotlightresources.defaultsLoading", v22);
    defaultsQueue = v2->_defaultsQueue;
    v2->_defaultsQueue = v25;

    v27 = dispatch_queue_create("com.apple.spotlightresources.delegates", v22);
    delegatesQueue = v2->_delegatesQueue;
    v2->_delegatesQueue = v27;

    v29 = dispatch_queue_create("com.apple.spotlightresources.notifyDelegates", v22);
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v29;

    v31 = dispatch_queue_create("com.apple.spotlightresources.notifyDelegatesAsync", v22);
    notifyQueueNonBlocking = v2->_notifyQueueNonBlocking;
    v2->_notifyQueueNonBlocking = v31;

    mEMORY[0x1E6999960] = [MEMORY[0x1E6999960] sharedInstance];
    [mEMORY[0x1E6999960] registerDelegate:v2];

    v34 = [SRDefaultsManager defaultValueWithKey:@"IgnoreOTAEmbeddings"];
    v2->_ignoreOTAEmbeddings = [v34 BOOLValue];

    sandboxExtensionHandlers = v2->_sandboxExtensionHandlers;
    v2->_sandboxExtensionHandlers = 0;

    SRIsRunningInServer(v36, v37);
    resourceBundle = [(SRDefaultsManager *)v2 resourceBundle];
    v39 = [resourceBundle pathForResource:@"RequiredAssets_root" ofType:@"bundle"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v41 = [defaultManager fileExistsAtPath:v39];

    if (v41)
    {
      v43 = SRLogCategoryAssets(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [v39 UTF8String];
        *buf = 136315138;
        v54 = uTF8String;
        _os_log_impl(&dword_1AE58E000, v43, OS_LOG_TYPE_DEFAULT, "Loading RequiredAssets_root at path <%s>", buf, 0xCu);
      }

      v45 = [(SRDefaultsManager *)v2 assetsFromResourcePath:v39 deliveryType:@"Required" assetType:0 language:@"root" force:0];
      [(SRDefaultsManager *)v2 loadDefaultsFromDefaultAssets:v45];
      assetTypes = [(SRAssetConfiguration *)v2->_assetConfig assetTypes];
      mEMORY[0x1E6999960]2 = [MEMORY[0x1E6999960] sharedInstance];
      v48 = objc_alloc(MEMORY[0x1E695DFD8]);
      allKeys = [assetTypes allKeys];
      v50 = [v48 initWithArray:allKeys];
      [mEMORY[0x1E6999960]2 setAssetTypesForDelegates:v50];
    }
  }

  return v2;
}

uint64_t __42__SRDefaultsManager_sharedDefaultsManager__block_invoke()
{
  sharedDefaultsManager_gDefaultsManager = objc_alloc_init(SRDefaultsManager);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)defaultProperties
{
  userDefaults = [objc_opt_class() userDefaults];
  dictionaryRepresentation = [userDefaults dictionaryRepresentation];
  v4 = [dictionaryRepresentation objectForKey:@"Defaults"];

  return v4;
}

+ (id)userDefaults
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = +[SRDefaultsManager identifier];
  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

- (id)resourceBundle
{
  p_customBundle = &self->_customBundle;
  v3 = self->_customBundle;
  if (!v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@System/Library/PrivateFrameworks/SpotlightResources.framework", @"/"];
    v3 = [MEMORY[0x1E696AAE8] bundleWithPath:v4];
    if (!v3)
    {
      v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.SpotlightResources"];
    }

    objc_storeStrong(p_customBundle, v3);
  }

  return v3;
}

- (id)currentNamespaceDescription
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__SRDefaultsManager_currentNamespaceDescription__block_invoke;
  v6[3] = &unk_1E7A2B280;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(defaultsQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __48__SRDefaultsManager_currentNamespaceDescription__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 16) namespaceTypes];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v2 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v2;
        v3 = *(*(&v29 + 1) + 8 * v2);
        v4 = [v3 namespaceId];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v5 = [v3 parameterNames];
        v6 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v26;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v26 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v25 + 1) + 8 * i);
              v11 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v4];
              if (v11)
              {
                v12 = v11;
                v13 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v4];
                v14 = [v13 objectForKeyedSubscript:v10];

                if (v14)
                {
                  v15 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v4];
                  v16 = [v15 objectForKeyedSubscript:v10];

                  v17 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v4];

                  if (!v17)
                  {
                    v18 = *(*(*(a1 + 40) + 8) + 40);
                    v19 = [MEMORY[0x1E695DF70] array];
                    [v18 setObject:v19 forKey:v4];
                  }

                  v20 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v4];
                  [v20 addObject:v16];
                }
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v7);
        }

        v2 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }
}

- (id)currentAssetTypes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__SRDefaultsManager_currentAssetTypes__block_invoke;
  v6[3] = &unk_1E7A2B258;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(defaultsQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)currentNamespaces
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__SRDefaultsManager_currentNamespaces__block_invoke;
  v6[3] = &unk_1E7A2B258;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(defaultsQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __38__SRDefaultsManager_currentNamespaces__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) namespaceDescription];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __38__SRDefaultsManager_currentAssetTypes__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) assetTypes];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)setDefaultWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  userDefaults = [objc_opt_class() userDefaults];
  defaultProperties = [objc_opt_class() defaultProperties];
  if (defaultProperties)
  {
    defaultProperties2 = [objc_opt_class() defaultProperties];
    v9 = [defaultProperties2 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v9 setObject:valueCopy forKey:keyCopy];
  [userDefaults setObject:v9 forKey:@"Defaults"];
}

+ (id)defaultValueWithKey:(id)key
{
  keyCopy = key;
  defaultProperties = [objc_opt_class() defaultProperties];
  if (!defaultProperties)
  {
    v5 = SRLogCategoryAssets(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AE58E000, v5, OS_LOG_TYPE_INFO, "Defaults are null", v8, 2u);
    }
  }

  v6 = [defaultProperties objectForKey:keyCopy];

  return v6;
}

+ (void)removeKey:(id)key
{
  keyCopy = key;
  userDefaults = [objc_opt_class() userDefaults];
  defaultProperties = [objc_opt_class() defaultProperties];
  v5 = [defaultProperties mutableCopy];

  [v5 removeObjectForKey:keyCopy];
  [userDefaults setObject:v5 forKey:@"Defaults"];
}

+ (void)removeDefaults
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = +[SRDefaultsManager identifier];
  [standardUserDefaults removePersistentDomainForName:v3];

  v4 = MEMORY[0x1E695E000];

  [v4 resetStandardUserDefaults];
}

+ (void)setVersionWithValue:(int64_t)value
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  [v4 setDefaultWithKey:@"Version" value:v5];
}

+ (int64_t)version
{
  v2 = [SRDefaultsManager defaultValueWithKey:@"Version"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (void)loadDefaultsFromDefaultAssets:(id)assets
{
  v36 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__0;
  v29 = __Block_byref_object_dispose__0;
  v30 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__0;
  v23[4] = __Block_byref_object_dispose__0;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__0;
  v21[4] = __Block_byref_object_dispose__0;
  v22 = +[SRAssetConfiguration configuration];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__0;
  v19[4] = __Block_byref_object_dispose__0;
  v20 = +[SRTrialConfiguration configuration];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__SRDefaultsManager_loadDefaultsFromDefaultAssets___block_invoke;
  v18[3] = &unk_1E7A2B1E0;
  v18[6] = v21;
  v18[7] = &v31;
  v18[4] = self;
  v18[5] = v19;
  v18[8] = &v25;
  v18[9] = v23;
  [assetsCopy enumerateObjectsUsingBlock:v18];
  if (v32[3])
  {
    defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SRDefaultsManager_loadDefaultsFromDefaultAssets___block_invoke_418;
    block[3] = &unk_1E7A2B208;
    block[4] = self;
    block[5] = v21;
    block[6] = v19;
    block[7] = v23;
    dispatch_sync(defaultsQueue, block);

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v26[5];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v35 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          contentType = [v10 contentType];
          v12 = [v10 pathWithName:@"factors.mdplist"];
          [(SRDefaultsManager *)self loadFactorsAtPath:v12 namespaceId:contentType];
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v35 count:16];
      }

      while (v7);
    }
  }

  _Block_object_dispose(v19, 8);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

void __51__SRDefaultsManager_loadDefaultsFromDefaultAssets___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v156 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 contentType];
  v8 = [v7 isEqualToString:@"Defaults"];

  if (v8)
  {
    v107 = v6;
    if (SRIsAppleInternalInstall(v9, v10))
    {
      v11 = [v6 pathWithName:@"defaultsTest.plist"];
      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [v12 fileExistsAtPath:v11];

      if (v13)
      {
        sHasTestAssets = 1;
        if (v11)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    v11 = [v6 pathWithName:@"defaults.plist"];
    v25 = [MEMORY[0x1E696AC08] defaultManager];
    v26 = [v25 fileExistsAtPath:v11];

    if ((v26 & 1) == 0)
    {
      v29 = SRLogCategoryAssets(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        __51__SRDefaultsManager_loadDefaultsFromDefaultAssets___block_invoke_cold_1();
      }

      goto LABEL_131;
    }

    if (!v11)
    {
      v28 = MEMORY[0x1E695E0F8];
LABEL_22:
      objc_opt_class();
      v106 = v11;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        *(*(a1[7] + 8) + 24) = 0;
        *a4 = 1;
        v95 = v28;
LABEL_125:
        if (sHasTestAssets)
        {
          v96 = @"localesTest.plist";
        }

        else
        {
          v96 = @"locales.plist";
        }

        v97 = [v107 pathWithName:v96];
        [*(a1[4] + 24) setHasTestAssets:sHasTestAssets];
        if (v97)
        {
          [*(a1[4] + 24) loadSupportedLanguages:v97];
        }

LABEL_131:
        v6 = v107;
        goto LABEL_132;
      }

      v105 = v28;
      v30 = [v28 objectForKeyedSubscript:@"DefaultsCompatibilityVersion"];
      if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v30 integerValue] == 3)
      {
        v31 = [v28 objectForKeyedSubscript:@"Clients"];

        if (!v31)
        {
LABEL_118:
          v30 = 0;
          goto LABEL_121;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v31;
          v145 = 0u;
          v146 = 0u;
          v147 = 0u;
          v148 = 0u;
          v113 = [v32 countByEnumeratingWithState:&v145 objects:v155 count:16];
          obj = v32;
          if (v113)
          {
            v112 = *v146;
            v33 = 0x1E695D000;
            v115 = a1;
            do
            {
              for (i = 0; i != v113; ++i)
              {
                if (*v146 != v112)
                {
                  objc_enumerationMutation(obj);
                }

                v35 = *(*(&v145 + 1) + 8 * i);

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v32 = [obj objectForKeyedSubscript:v35];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v111 = i;
                    v36 = v32;
                    v37 = [v36 objectForKeyedSubscript:@"Trial"];
                    v32 = v36;
                    v116 = v35;
                    v110 = v37;
                    if (v37)
                    {
                      v38 = v37;
                      v39 = [v37 objectForKeyedSubscript:@"Namespaces"];
                      v32 = v36;
                      if (v39)
                      {
                        v40 = v39;
                        v41 = [v38 objectForKeyedSubscript:@"Namespaces"];
                        objc_opt_class();
                        isKindOfClass = objc_opt_isKindOfClass();

                        v32 = v36;
                        if (isKindOfClass)
                        {
                          v42 = [v38 objectForKeyedSubscript:@"Namespaces"];
                          v141 = 0u;
                          v142 = 0u;
                          v143 = 0u;
                          v144 = 0u;
                          v43 = [v42 countByEnumeratingWithState:&v141 objects:v154 count:16];
                          v108 = v36;
                          if (v43)
                          {
                            v44 = v43;
                            v45 = *v142;
                            v126 = v42;
                            do
                            {
                              for (j = 0; j != v44; ++j)
                              {
                                if (*v142 != v45)
                                {
                                  objc_enumerationMutation(v42);
                                }

                                v47 = *(*(&v141 + 1) + 8 * j);

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v36 = [v42 objectForKeyedSubscript:v47];
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v48 = v36;
                                    v49 = [v48 objectForKey:@"Namespace"];
                                    if (v49)
                                    {
                                      v50 = v49;
                                      v51 = [v48 objectForKeyedSubscript:@"Namespace"];
                                      objc_opt_class();
                                      v52 = objc_opt_isKindOfClass();

                                      if (v52)
                                      {
                                        v53 = [v48 objectForKeyedSubscript:@"Namespace"];
                                        if (v53)
                                        {
                                          v54 = v53;
                                          v152[0] = @"namespaceId";
                                          v152[1] = @"namespaceName";
                                          v153[0] = v47;
                                          v153[1] = v53;
                                          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v153 forKeys:v152 count:2];
                                          [*(*(v115[5] + 8) + 40) setProperties:v55 client:v116];
                                        }
                                      }
                                    }

                                    v42 = v126;
                                  }
                                }

                                else
                                {
                                  v36 = v47;
                                }

                                v35 = v116;
                              }

                              v44 = [v42 countByEnumeratingWithState:&v141 objects:v154 count:16];
                            }

                            while (v44);
                          }

                          v32 = 0;
                          a1 = v115;
                          v33 = 0x1E695D000uLL;
                          v36 = v108;
                        }
                      }
                    }

                    v56 = [v36 objectForKeyedSubscript:@"MobileAssets"];
                    if (v56)
                    {
                      v109 = v36;
                      v139 = 0u;
                      v140 = 0u;
                      v137 = 0u;
                      v138 = 0u;
                      v120 = v56;
                      v57 = 0x1E695D000uLL;
                      v118 = [v56 countByEnumeratingWithState:&v137 objects:v151 count:16];
                      if (v118)
                      {
                        v117 = *v138;
                        do
                        {
                          v58 = 0;
                          do
                          {
                            if (*v138 != v117)
                            {
                              v59 = v58;
                              objc_enumerationMutation(v120);
                              v58 = v59;
                            }

                            v121 = v58;
                            v60 = *(*(&v137 + 1) + 8 * v58);

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v61 = *(v33 + 3984);
                              v62 = v60;
                              v63 = objc_alloc_init(v61);
                              [v63 setObject:v62 forKey:@"AssetType"];
                              [v63 setObject:v35 forKey:@"Client"];
                              v64 = objc_alloc_init(*(v33 + 3984));
                              v127 = v63;
                              [v63 setObject:v64 forKey:@"DeliveryTypes"];

                              v32 = [v120 objectForKeyedSubscript:v62];
                              v119 = v62;

                              if (v32)
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v65 = [v120 objectForKeyedSubscript:v62];
                                  v66 = [v65 objectForKeyedSubscript:@"MobileAssetPropertiesPath"];

                                  if (v66 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v136 = 0;
                                    v67 = v66;
                                    v68 = getMobileAssetPropertiesFromPath(v67, &v136);
                                    [v127 setObject:v68 forKey:@"AssetProperties"];
                                    [v127 setObject:v67 forKey:@"ResourcePath"];
                                  }

                                  else
                                  {
                                    v69 = [v120 objectForKeyedSubscript:v119];
                                    v67 = [v69 objectForKeyedSubscript:@"MobileAssetProperties"];

                                    if (v67)
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        [v127 setObject:v67 forKey:@"AssetProperties"];
                                      }
                                    }
                                  }

                                  v70 = [v120 objectForKeyedSubscript:v119];
                                  v32 = [v70 objectForKeyedSubscript:@"DeliveryTypes"];

                                  if (v32)
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v71 = v32;
                                      v132 = 0u;
                                      v133 = 0u;
                                      v134 = 0u;
                                      v135 = 0u;
                                      v72 = v71;
                                      v124 = [v71 countByEnumeratingWithState:&v132 objects:v150 count:16];
                                      if (v124)
                                      {
                                        v73 = *v133;
                                        v72 = v71;
                                        v122 = *v133;
                                        v123 = v71;
                                        do
                                        {
                                          for (k = 0; k != v124; ++k)
                                          {
                                            if (*v133 != v73)
                                            {
                                              objc_enumerationMutation(v71);
                                            }

                                            v75 = *(*(&v132 + 1) + 8 * k);

                                            if (v75)
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v76 = v75;
                                                v77 = [v127 objectForKeyedSubscript:@"DeliveryTypes"];

                                                if (!v77)
                                                {
                                                  v78 = objc_alloc_init(*(v33 + 3984));
                                                  [v127 setObject:v78 forKeyedSubscript:@"DeliveryTypes"];
                                                }

                                                v79 = [v127 objectForKeyedSubscript:@"DeliveryTypes"];
                                                v80 = [v79 objectForKeyedSubscript:v76];

                                                if (!v80)
                                                {
                                                  v81 = objc_alloc_init(*(v57 + 3952));
                                                  v82 = [v127 objectForKeyedSubscript:@"DeliveryTypes"];
                                                  [v82 setObject:v81 forKeyedSubscript:v76];
                                                }

                                                v71 = v123;
                                                v72 = [v123 objectForKeyedSubscript:v76];

                                                if (v72)
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v83 = [v123 objectForKeyedSubscript:v76];
                                                    v84 = [v83 objectForKeyedSubscript:@"ContentTypes"];

                                                    if (v84)
                                                    {
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v85 = v84;
                                                        v128 = 0u;
                                                        v129 = 0u;
                                                        v130 = 0u;
                                                        v131 = 0u;
                                                        v86 = [v85 countByEnumeratingWithState:&v128 objects:v149 count:16];
                                                        v87 = v85;
                                                        if (v86)
                                                        {
                                                          v88 = v86;
                                                          v89 = *v129;
                                                          v87 = v85;
                                                          do
                                                          {
                                                            for (m = 0; m != v88; ++m)
                                                            {
                                                              v91 = v87;
                                                              if (*v129 != v89)
                                                              {
                                                                objc_enumerationMutation(v85);
                                                              }

                                                              v87 = *(*(&v128 + 1) + 8 * m);

                                                              if (v87)
                                                              {
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v92 = v87;
                                                                  v93 = [v127 objectForKeyedSubscript:@"DeliveryTypes"];
                                                                  v94 = [v93 objectForKeyedSubscript:v76];
                                                                  [v94 addObject:v92];
                                                                }
                                                              }
                                                            }

                                                            v88 = [v85 countByEnumeratingWithState:&v128 objects:v149 count:16];
                                                          }

                                                          while (v88);
                                                        }

                                                        v72 = 0;
                                                        v33 = 0x1E695D000;
                                                        v57 = 0x1E695D000;
                                                      }

                                                      else
                                                      {
                                                        v72 = v84;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v72 = 0;
                                                    }

                                                    v71 = v123;
                                                  }
                                                }

                                                v73 = v122;
                                              }

                                              else
                                              {
                                                v72 = v75;
                                              }
                                            }

                                            else
                                            {
                                              v72 = 0;
                                            }
                                          }

                                          v124 = [v71 countByEnumeratingWithState:&v132 objects:v150 count:16];
                                        }

                                        while (v124);
                                      }

                                      v32 = 0;
                                      a1 = v115;
                                      v35 = v116;
                                    }
                                  }
                                }
                              }

                              [*(*(a1[6] + 8) + 40) setProperties:v127 client:v35];
                            }

                            else
                            {
                              v32 = v60;
                            }

                            v58 = v121 + 1;
                          }

                          while (v121 + 1 != v118);
                          v118 = [v120 countByEnumeratingWithState:&v137 objects:v151 count:16];
                        }

                        while (v118);
                      }

                      v32 = 0;
                      v36 = v109;
                      v56 = v120;
                    }

                    i = v111;
                  }
                }

                else
                {
                  v32 = v35;
                }
              }

              v113 = [obj countByEnumeratingWithState:&v145 objects:v155 count:16];
            }

            while (v113);
          }

          goto LABEL_118;
        }

        v30 = v31;
      }

      else
      {
        *(*(a1[7] + 8) + 24) = 0;
        *a4 = 1;
      }

LABEL_121:
      v95 = [v105 objectForKeyedSubscript:@"MobileAssetsContentVersion"];

      if (v95)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((a1[4] + 72), v95);
        }
      }

      goto LABEL_125;
    }

LABEL_17:
    v28 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v11];
    goto LABEL_22;
  }

  v14 = [v6 pathWithName:@"factors.mdplist"];
  if (v14)
  {
    goto LABEL_9;
  }

  v15 = a1;
  v16 = v6;
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [v6 contentType];
  v18 = [v17 initWithFormat:@"default_factors_%@.pb", v14];
  v19 = [v6 pathWithName:v18];
  if (v19)
  {

    a1 = v15;
LABEL_9:

    goto LABEL_10;
  }

  v98 = objc_alloc(MEMORY[0x1E696AEC0]);
  v99 = [v6 contentType];
  v100 = [v98 initWithFormat:@"default_factors_%@_fbs.bin", v99];
  v101 = [v16 pathWithName:v100];

  v6 = v16;
  a1 = v15;
  if (!v101)
  {
    v20 = *(*(v15[9] + 8) + 40);
    if (v20)
    {
      goto LABEL_13;
    }

    v102 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v103 = *(v15[9] + 8);
    v104 = *(v103 + 40);
    *(v103 + 40) = v102;

    v24 = v15[9];
    goto LABEL_12;
  }

LABEL_10:
  v20 = *(*(a1[8] + 8) + 40);
  if (!v20)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = *(a1[8] + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v24 = a1[8];
LABEL_12:
    v20 = *(*(v24 + 8) + 40);
  }

LABEL_13:
  [v20 addObject:v6];
LABEL_132:
}

uint64_t __51__SRDefaultsManager_loadDefaultsFromDefaultAssets___block_invoke_418(void *a1)
{
  objc_storeStrong((a1[4] + 8), *(*(a1[5] + 8) + 40));
  objc_storeStrong((a1[4] + 16), *(*(a1[6] + 8) + 40));
  v2 = a1[4];
  v3 = *(*(a1[7] + 8) + 40);

  return [v2 _loadAssets:v3 shouldUpdate:1];
}

- (void)_loadAssets:(id)assets shouldUpdate:(BOOL)update
{
  assetsCopy = assets;
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  dispatch_assert_queue_V2(defaultsQueue);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SRDefaultsManager__loadAssets_shouldUpdate___block_invoke;
  v8[3] = &unk_1E7A2B230;
  v8[4] = self;
  updateCopy = update;
  [assetsCopy enumerateObjectsUsingBlock:v8];
}

void __46__SRDefaultsManager__loadAssets_shouldUpdate___block_invoke(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 57) == 1)
  {
    v5 = [v3 contentType];
    if ([v5 isEqualToString:@"Embedding"])
    {
      v6 = [v4 deliveryTypeString];
      v7 = [v6 isEqualToString:@"Required"];

      if ((v7 & 1) == 0)
      {
        v9 = SRLogCategoryAssets(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v4 contentType];
          v11 = [v10 UTF8String];
          v12 = [v4 deliveryTypeString];
          *buf = 136315394;
          v64 = v11;
          v65 = 2080;
          v66 = [v12 UTF8String];
          _os_log_impl(&dword_1AE58E000, v9, OS_LOG_TYPE_DEFAULT, "(_loadAssets) skipping over asset: %s, %s", buf, 0x16u);
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
    }
  }

  v13 = *(*(a1 + 32) + 32);
  v14 = [v4 localeIdentifier];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (!v15)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = *(*(a1 + 32) + 32);
    v18 = [v4 localeIdentifier];
    [v17 setObject:v16 forKeyedSubscript:v18];
  }

  v19 = *(*(a1 + 32) + 32);
  v20 = [v4 localeIdentifier];
  v21 = [v19 objectForKeyedSubscript:v20];
  v22 = [v4 contentType];
  v23 = [v21 objectForKeyedSubscript:v22];

  if (!v23)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v25 = *(*(a1 + 32) + 32);
    v26 = [v4 localeIdentifier];
    v27 = [v25 objectForKeyedSubscript:v26];
    v28 = [v4 contentType];
    [v27 setObject:v24 forKeyedSubscript:v28];
  }

  v29 = *(*(a1 + 32) + 32);
  v30 = [v4 localeIdentifier];
  v31 = [v29 objectForKeyedSubscript:v30];
  v32 = [v4 contentType];
  v33 = [v31 objectForKeyedSubscript:v32];
  v34 = [v4 deliveryTypeString];
  v35 = [v33 objectForKeyedSubscript:v34];
  if (v35)
  {
    v36 = *(a1 + 40);

    if ((v36 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v38 = SRLogCategoryAssets(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [v4 localeIdentifier];
    v62 = [v39 UTF8String];
    v40 = [v4 contentType];
    v41 = [v40 UTF8String];
    v42 = [v4 deliveryTypeString];
    v43 = [v42 UTF8String];
    v44 = [v4 contentPaths];
    v45 = [v44 componentsJoinedByString:{@", "}];
    *buf = 136315906;
    v64 = v62;
    v65 = 2080;
    v66 = v41;
    v67 = 2080;
    v68 = v43;
    v69 = 2080;
    v70 = [v45 UTF8String];
    _os_log_impl(&dword_1AE58E000, v38, OS_LOG_TYPE_DEFAULT, "(_loadAssets) loading asset: %s, %s, %s, %s", buf, 0x2Au);
  }

  v46 = *(*(a1 + 32) + 32);
  v47 = [v4 localeIdentifier];
  v48 = [v46 objectForKeyedSubscript:v47];
  v49 = [v4 contentType];
  v50 = [v48 objectForKeyedSubscript:v49];
  v51 = [v4 deliveryTypeString];
  [v50 setObject:v4 forKeyedSubscript:v51];

  v52 = [v4 contentType];
  LODWORD(v47) = [v52 isEqualToString:@"Safety"];

  if (v47)
  {
    v54 = SRLogCategorySafety(v53);
    v9 = v54;
    v55 = sSafetyLoadAssetSignpostID;
    v56 = ++sSafetyLoadAssetSignpostID;
    if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
    {
      v57 = [v4 deliveryType];
      v58 = [v4 localeIdentifier];
      v59 = [v58 UTF8String];
      *buf = 134218242;
      v64 = v57;
      v65 = 2080;
      v66 = v59;
      _os_signpost_emit_with_name_impl(&dword_1AE58E000, v9, OS_SIGNPOST_EVENT, v56, "SRSafetyLoad", "(%ld, %s)", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v60 = [v4 contentType];
  v61 = [v60 isEqualToString:@"Defaults"];

  if (v61)
  {
    v9 = [v4 pathWithName:@"locales.plist"];
    if (v9)
    {
      [*(*(a1 + 32) + 24) loadSupportedLanguages:v9];
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (void)_unloadAssetsForLocale:(id)locale
{
  v22 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  dispatch_assert_queue_V2(defaultsQueue);

  v6 = languageCodeForLocale(localeCopy);
  v7 = [v6 isEqualToString:@"root"];
  if ((v7 & 1) == 0)
  {
    v8 = SRLogCategoryAssets(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      localeIdentifier = [localeCopy localeIdentifier];
      v20 = 136315138;
      uTF8String = [localeIdentifier UTF8String];
      _os_log_impl(&dword_1AE58E000, v8, OS_LOG_TYPE_DEFAULT, "(_unloadAssetsForLocale) unloading assets for locale: %s", &v20, 0xCu);
    }

    v10 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:v6];
    if (v10)
    {
      v11 = v10;
      v12 = [(NSMutableDictionary *)self->_assets objectForKeyedSubscript:v6];
      v13 = [v12 objectForKeyedSubscript:@"Safety"];

      if (v13)
      {
        v15 = SRLogCategorySafety(v14);
        v16 = v15;
        v17 = sSafetyUnloadAssetSignpostID;
        v18 = ++sSafetyUnloadAssetSignpostID;
        if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
        {
          uTF8String2 = [v6 UTF8String];
          v20 = 136315138;
          uTF8String = uTF8String2;
          _os_signpost_emit_with_name_impl(&dword_1AE58E000, v16, OS_SIGNPOST_EVENT, v18, "SRSafetyUnload", "loc:%s", &v20, 0xCu);
        }
      }
    }

    [(NSMutableDictionary *)self->_assets removeObjectForKey:v6];
  }
}

- (id)currentNamespacesForClient:(id)client
{
  clientCopy = client;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SRDefaultsManager_currentNamespacesForClient___block_invoke;
  block[3] = &unk_1E7A2B2A8;
  block[4] = self;
  v10 = clientCopy;
  v11 = &v12;
  v6 = clientCopy;
  dispatch_sync(defaultsQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__SRDefaultsManager_currentNamespacesForClient___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) namespaceTypesForClient:a1[5]];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(a1[6] + 8) + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) namespaceId];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)fetchedLanguages
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__SRDefaultsManager_fetchedLanguages__block_invoke;
  v6[3] = &unk_1E7A2B258;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(defaultsQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__SRDefaultsManager_fetchedLanguages__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) mutableCopy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(a1 + 32) + 56) == 1)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);

    [v5 addObject:@"root"];
  }
}

- (void)updateFetchedLanguages:(id)languages
{
  languagesCopy = languages;
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SRDefaultsManager_updateFetchedLanguages___block_invoke;
  v7[3] = &unk_1E7A2AFF0;
  v7[4] = self;
  v8 = languagesCopy;
  v6 = languagesCopy;
  dispatch_sync(defaultsQueue, v7);
}

void __44__SRDefaultsManager_updateFetchedLanguages___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 isEqualToSet:*(a1 + 40)];
  if ((v3 & 1) == 0)
  {
    v4 = SRLogCategoryAssets(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v9 = 138412546;
      v10 = v2;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1AE58E000, v4, OS_LOG_TYPE_DEFAULT, "(fetchedLanguages) update fetched languages: %@ --> %@", &v9, 0x16u);
    }
  }

  [*(*(a1 + 32) + 48) removeAllObjects];
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 48);
  v8 = [v6 allObjects];
  [v7 addObjectsFromArray:v8];
}

- (void)addFetchForLanguage:(id)language
{
  languageCopy = language;
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SRDefaultsManager_addFetchForLanguage___block_invoke;
  v7[3] = &unk_1E7A2AFF0;
  v8 = languageCopy;
  selfCopy = self;
  v6 = languageCopy;
  dispatch_sync(defaultsQueue, v7);
}

void *__41__SRDefaultsManager_addFetchForLanguage___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UTF8String];
    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&dword_1AE58E000, v2, OS_LOG_TYPE_DEFAULT, "(fetchedLanguages) add fetch for language: %s", &v6, 0xCu);
  }

  result = [*(a1 + 32) isEqualToString:@"root"];
  v5 = *(a1 + 40);
  if (!result)
  {
    return [*(v5 + 48) addObject:*(a1 + 32)];
  }

  *(v5 + 56) = 1;
  return result;
}

- (void)removeFetchForLanguage:(id)language
{
  languageCopy = language;
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SRDefaultsManager_removeFetchForLanguage___block_invoke;
  v7[3] = &unk_1E7A2AFF0;
  v8 = languageCopy;
  selfCopy = self;
  v6 = languageCopy;
  dispatch_sync(defaultsQueue, v7);
}

void *__44__SRDefaultsManager_removeFetchForLanguage___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UTF8String];
    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&dword_1AE58E000, v2, OS_LOG_TYPE_DEFAULT, "(fetchedLanguages) remove fetch for language: %s", &v6, 0xCu);
  }

  result = [*(a1 + 32) isEqualToString:@"root"];
  v5 = *(a1 + 40);
  if (!result)
  {
    return [*(v5 + 48) removeObject:*(a1 + 32)];
  }

  *(v5 + 56) = 0;
  return result;
}

- (BOOL)didFetchForLanguage:(id)language
{
  languageCopy = language;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SRDefaultsManager_didFetchForLanguage___block_invoke;
  block[3] = &unk_1E7A2B2D0;
  selfCopy = self;
  v11 = &v12;
  v9 = languageCopy;
  v6 = languageCopy;
  dispatch_sync(defaultsQueue, block);

  LOBYTE(languageCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return languageCopy;
}

void __41__SRDefaultsManager_didFetchForLanguage___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isEqualToString:@"root"])
  {
    *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 40) + 56);
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(*(a1 + 40) + 48);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ([*(*(&v7 + 1) + 8 * i) isEqualToString:{*(a1 + 32), v7}])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_13;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

- (id)assetsFromResourcePath:(id)path deliveryType:(id)type assetType:(id)assetType language:(id)language force:(BOOL)force
{
  forceCopy = force;
  v104 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  typeCopy = type;
  assetTypeCopy = assetType;
  languageCopy = language;
  v13 = SRIsRunningInServer(languageCopy, v12);
  LODWORD(assetType) = v13;
  v14 = SRLogCategoryAssets(v13);
  v68 = assetType ^ 1;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    if (forceCopy)
    {
      v60 = @"Force-";
    }

    else
    {
      v60 = &stru_1F2422260;
    }

    assetType = [assetTypeCopy assetType];
    *v99 = 67110402;
    *&v99[4] = v68;
    *v100 = 2112;
    *&v100[2] = v60;
    *&v100[10] = 2112;
    *&v100[12] = assetType;
    *&v100[20] = 2112;
    *&v100[22] = typeCopy;
    *&v100[30] = 2112;
    v101 = languageCopy;
    v102 = 2112;
    v103 = pathCopy;
    _os_log_debug_impl(&dword_1AE58E000, v14, OS_LOG_TYPE_DEBUG, "[%d] %@Loading (%@, %@, %@) assets at %@", v99, 0x3Au);
  }

  *v99 = 0;
  *v100 = v99;
  *&v100[8] = 0x3032000000;
  *&v100[16] = __Block_byref_object_copy__0;
  *&v100[24] = __Block_byref_object_dispose__0;
  v90 = 0;
  v15 = getMobileAssetPropertiesFromPath(pathCopy, &v90);
  v16 = v90;
  v101 = v15;
  if (!typeCopy || ([typeCopy isEqualToString:@"Required"] & 1) != 0 || (objc_msgSend(typeCopy, "hasSuffix:", @"Test") & 1) != 0)
  {
    goto LABEL_16;
  }

  domain = [v16 domain];
  if (![domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    goto LABEL_15;
  }

  v18 = [v16 code] == 257;

  if (v18)
  {
    v20 = SRLogCategoryAssets(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [SRDefaultsManager assetsFromResourcePath:deliveryType:assetType:language:force:];
    }

    sandboxExtensionHandlers = self->_sandboxExtensionHandlers;
    if (!sandboxExtensionHandlers)
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v23 = self->_sandboxExtensionHandlers;
      self->_sandboxExtensionHandlers = v22;

      sandboxExtensionHandlers = self->_sandboxExtensionHandlers;
    }

    assetType2 = [assetTypeCopy assetType];
    v25 = [(NSMutableDictionary *)sandboxExtensionHandlers objectForKeyedSubscript:assetType2];
    v26 = v25 == 0;

    if (v26)
    {
      v27 = [SRMASandboxExtensionHandler alloc];
      assetType3 = [assetTypeCopy assetType];
      v29 = [(SRMASandboxExtensionHandler *)v27 initWithAssetType:assetType3];
      v30 = self->_sandboxExtensionHandlers;
      assetType4 = [assetTypeCopy assetType];
      [(NSMutableDictionary *)v30 setObject:v29 forKeyedSubscript:assetType4];
    }

    if (!forceCopy)
    {
      objc_initWeak(&buf, self);
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_438;
      v81[3] = &unk_1E7A2B320;
      objc_copyWeak(&v86, &buf);
      v85 = v99;
      v82 = pathCopy;
      v83 = languageCopy;
      v63 = assetTypeCopy;
      v84 = v63;
      v64 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v81);
      v65 = self->_sandboxExtensionHandlers;
      assetType5 = [v63 assetType];
      v67 = [(NSMutableDictionary *)v65 objectForKeyedSubscript:assetType5];
      [v67 executeBlock:v64 wait:0];

      objc_destroyWeak(&v86);
      objc_destroyWeak(&buf);
      v70 = 0;
      goto LABEL_39;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke;
    block[3] = &unk_1E7A2B258;
    v89 = v99;
    v88 = pathCopy;
    v32 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    v33 = self->_sandboxExtensionHandlers;
    assetType6 = [assetTypeCopy assetType];
    v35 = [(NSMutableDictionary *)v33 objectForKeyedSubscript:assetType6];
    [v35 executeBlock:v32 wait:1];

    domain = v88;
LABEL_15:
  }

LABEL_16:
  v36 = *(*v100 + 40);
  if (v36 && ([v36 objectForKeyedSubscript:@"AssetLocale"], v36 = objc_claimAutoreleasedReturnValue(), (v37 = v36) != 0) && (objc_msgSend(*(*v100 + 40), "objectForKeyedSubscript:", @"Contents"), v38 = objc_claimAutoreleasedReturnValue(), v39 = v38 == 0, v38, v37, !v39))
  {
    v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(*v100 + 40) objectForKeyedSubscript:@"Contents"];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    obj = v78 = 0u;
    v40 = [obj countByEnumeratingWithState:&v77 objects:v98 count:16];
    if (v40)
    {
      v74 = *v78;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v78 != v74)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v77 + 1) + 8 * i);
          v43 = [v42 objectForKeyedSubscript:@"ContentType"];
          if (!assetTypeCopy || ([assetTypeCopy deliveryTypeMap], v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v44, "objectForKeyedSubscript:", v43), v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "containsObject:", typeCopy), v45, v44, (v46 & 1) != 0))
          {
            v47 = [v42 objectForKeyedSubscript:@"ContentPath"];
            v48 = [v42 objectForKeyedSubscript:@"Locale"];
            v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/AssetData/%@", pathCopy, v47];
            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v76 = v16;
            v51 = [defaultManager contentsOfDirectoryAtPath:v49 error:&v76];
            v52 = v76;

            if (!v52)
            {
              v53 = [SRAsset assetWithLocaleIdentifier:v48 contentType:v43 deliveryType:deliveryTypeID(typeCopy) resourceRoot:v49 pathNames:v51];
              if (v53)
              {
                [v70 addObject:v53];
              }
            }

            v16 = v52;
          }
        }

        v40 = [obj countByEnumeratingWithState:&v77 objects:v98 count:16];
      }

      while (v40);
    }

    v55 = SRLogCategoryAssets(v54);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = [v70 count];
      assetType7 = [assetTypeCopy assetType];
      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v68;
      v92 = 2048;
      v93 = v56;
      v94 = 2112;
      v95 = assetType7;
      v96 = 2112;
      v97 = typeCopy;
      _os_log_impl(&dword_1AE58E000, v55, OS_LOG_TYPE_DEFAULT, "[%d] Loading %ld assets for (%@, %@)", &buf, 0x26u);
    }
  }

  else
  {
    v58 = SRLogCategoryAssets(v36);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      assetType8 = [assetTypeCopy assetType];
      LODWORD(buf) = 67109634;
      HIDWORD(buf) = v68;
      v92 = 2112;
      v93 = assetType8;
      v94 = 2112;
      v95 = typeCopy;
      _os_log_error_impl(&dword_1AE58E000, v58, OS_LOG_TYPE_ERROR, "[%d] Error loading (%@, %@) assets", &buf, 0x1Cu);
    }

    v70 = MEMORY[0x1E695E0F0];
  }

LABEL_39:
  _Block_object_dispose(v99, 8);

  return v70;
}

void __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = getMobileAssetPropertiesFromPath(v2, &v9);
  v4 = v9;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (v4)
  {
    v8 = SRLogCategoryAssets(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_cold_1();
    }
  }
}

void __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_438(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(a1 + 32);
  v21 = 0;
  v4 = getMobileAssetPropertiesFromPath(v3, &v21);
  v5 = v21;
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (v5)
  {
    v9 = SRLogCategoryAssets(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_438_cold_1();
    }
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) assetType];
    v22 = v11;
    v23[0] = *(a1 + 48);
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v13 = [WeakRetained loadOTAAssetsForLanguage:v10 updateCache:0 assetTypes:v12 force:0];

    objc_initWeak(&location, WeakRetained);
    v14 = [WeakRetained notifyQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_439;
    v16[3] = &unk_1E7A2B2F8;
    objc_copyWeak(&v19, &location);
    v17 = *(a1 + 40);
    v18 = v13;
    v15 = v13;
    dispatch_async(v14, v16);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_439(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained notifyObserversWithLanguage:*(a1 + 32) bundleVersions:*(a1 + 40) reloadFromCache:0 force:0];
}

- (void)requestAssetsForLanguages:(id)languages removeExisting:(BOOL)existing force:(BOOL)force
{
  forceCopy = force;
  languagesCopy = languages;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__0;
  v24[4] = __Block_byref_object_dispose__0;
  currentAssetTypes = [(SRDefaultsManager *)self currentAssetTypes];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke;
  block[3] = &unk_1E7A2B348;
  block[4] = v24;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  ddsQueue = [(SRDefaultsManager *)self ddsQueue];
  if (forceCopy)
  {
    dispatch_sync(ddsQueue, v9);
  }

  else
  {
    dispatch_async(ddsQueue, v9);
  }

  v11 = objc_autoreleasePoolPush();
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_465;
  v15[3] = &unk_1E7A2B460;
  objc_copyWeak(&v19, &location);
  v18 = v24;
  existingCopy = existing;
  v12 = languagesCopy;
  v21 = forceCopy;
  v16 = v12;
  selfCopy = self;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v15);
  ddsQueue2 = [(SRDefaultsManager *)self ddsQueue];
  if (forceCopy)
  {
    dispatch_sync(ddsQueue2, v13);
  }

  else
  {
    dispatch_async(ddsQueue2, v13);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  objc_autoreleasePoolPop(v11);

  _Block_object_dispose(v24, 8);
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2;
  block[3] = &unk_1E7A2B348;
  block[4] = *(a1 + 32);
  if (sLastLoadedBundleVersion_block_invoke_onceToken != -1)
  {
    dispatch_once(&sLastLoadedBundleVersion_block_invoke_onceToken, block);
  }
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v49 = a1;
  obj = [*(*(*(a1 + 32) + 8) + 40) allValues];
  v2 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v62;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v62 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v61 + 1) + 8 * i);
        v7 = MEMORY[0x1E695DFF8];
        v8 = SRGetResourcePath();
        v9 = [v7 fileURLWithPath:v8 isDirectory:1];

        v10 = objc_alloc(MEMORY[0x1E6999988]);
        v11 = [v6 assetType];
        v12 = [v10 initWithXPCServiceName:v11 assertionStorageDirectoryURL:v9];

        v13 = [MEMORY[0x1E6999980] sharedInstanceWithConfiguration:v12];
        v14 = sAssetServer;
        sAssetServer = v13;

        v16 = SRLogCategoryAssets(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v6 assetType];
          v18 = [v17 UTF8String];
          v19 = [v6 compatibilityVersion];
          *buf = 136315394;
          v68 = v18;
          v69 = 2048;
          v70 = v19;
          _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "(AssetServerInit) configure asset type: %s (%lu)", buf, 0x16u);
        }

        v20 = sAssetServer;
        v21 = [v6 compatibilityVersion];
        v22 = [v6 assetType];
        [v20 setCompatabilityVersion:v21 forAssetType:v22];

        v23 = [MEMORY[0x1E6999960] sharedInstance];
        v24 = [v6 xpcName];
        v25 = [v6 assetType];
        [v23 setXPCServiceName:v24 forAssetType:v25];
      }

      v3 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v3);
  }

  v26 = +[SRDefaultsManager version];
  if (v26 != 3)
  {
    v27 = v26;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v47 = *(*(*(v49 + 32) + 8) + 40);
    v50 = [v47 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v50)
    {
      v48 = *v58;
      do
      {
        v28 = 0;
        do
        {
          if (*v58 != v48)
          {
            objc_enumerationMutation(v47);
          }

          v51 = v28;
          v29 = [*(*(*(v49 + 32) + 8) + 40) objectForKeyedSubscript:*(*(&v57 + 1) + 8 * v28)];
          v30 = [MEMORY[0x1E6999960] sharedInstance];
          v31 = [v29 assetType];
          v32 = [v30 assertionIDsForClientID:@"SpotlightResources" assetType:v31];
          v33 = v32;
          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = [MEMORY[0x1E695DFD8] set];
          }

          v35 = v34;

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v36 = v35;
          v37 = [v36 countByEnumeratingWithState:&v53 objects:v65 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v54;
            do
            {
              v40 = 0;
              do
              {
                if (*v54 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = *(*(&v53 + 1) + 8 * v40);
                v42 = SRLogCategoryAssets(v37);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = [v41 UTF8String];
                  *buf = 134218242;
                  v68 = v27;
                  v69 = 2080;
                  v70 = v43;
                  _os_log_impl(&dword_1AE58E000, v42, OS_LOG_TYPE_DEFAULT, "(assertions) (version %ld) removing assertion: %s", buf, 0x16u);
                }

                v44 = [MEMORY[0x1E6999960] sharedInstance];
                v45 = [v29 assetType];
                [v44 removeAssertionWithIdentifier:v41 assetType:v45];

                ++v40;
              }

              while (v38 != v40);
              v37 = [v36 countByEnumeratingWithState:&v53 objects:v65 count:16];
              v38 = v37;
            }

            while (v37);
          }

          v28 = v51 + 1;
        }

        while (v51 + 1 != v50);
        v50 = [v47 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v50);
    }
  }

  [SRDefaultsManager setVersionWithValue:3];
  objc_autoreleasePoolPop(context);
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_465(uint64_t a1)
{
  v131 = *MEMORY[0x1E69E9840];
  val = objc_loadWeakRetained((a1 + 56));
  v123[0] = 0;
  v123[1] = v123;
  v123[2] = 0x3032000000;
  v123[3] = __Block_byref_object_copy__0;
  v123[4] = __Block_byref_object_dispose__0;
  v124 = 0;
  group = dispatch_group_create();
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v64 = a1;
  obj = [*(*(*(a1 + 48) + 8) + 40) allValues];
  v54 = [obj countByEnumeratingWithState:&v119 objects:v130 count:16];
  if (v54)
  {
    v55 = *v120;
    v52 = v76;
    v53 = v117;
    v50 = v82;
    v51 = v88;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v120 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v68 = *(*(&v119 + 1) + 8 * i);
        v2 = [MEMORY[0x1E6999960] sharedInstance];
        v3 = [v68 assetType];
        v4 = [v2 assertionIDsForClientID:@"SpotlightResources" assetType:v3];
        v5 = v4;
        if (v4)
        {
          v62 = v4;
        }

        else
        {
          v62 = [MEMORY[0x1E695DFD8] set];
        }

        v61 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        if (*(v64 + 64) == 1)
        {
          v116[0] = MEMORY[0x1E69E9820];
          v116[1] = 3221225472;
          v117[0] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_466;
          v117[1] = &unk_1E7A2B370;
          v118 = v61;
          [v62 enumerateObjectsUsingBlock:v116];
        }

        v114[0] = 0;
        v114[1] = v114;
        v114[2] = 0x3032000000;
        v114[3] = __Block_byref_object_copy__0;
        v114[4] = __Block_byref_object_dispose__0;
        v115 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v112[0] = 0;
        v112[1] = v112;
        v112[2] = 0x3032000000;
        v112[3] = __Block_byref_object_copy__0;
        v112[4] = __Block_byref_object_dispose__0;
        v113 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v58 = *(v64 + 32);
        v6 = [v58 countByEnumeratingWithState:&v108 objects:v129 count:16];
        if (v6)
        {
          v59 = *v109;
          do
          {
            for (j = 0; j != v6; ++j)
            {
              if (*v109 != v59)
              {
                objc_enumerationMutation(v58);
              }

              v7 = *(*(&v108 + 1) + 8 * j);
              v104 = 0u;
              v105 = 0u;
              v106 = 0u;
              v107 = 0u;
              v8 = [v68 deliveryTypes];
              v9 = [v8 countByEnumeratingWithState:&v104 objects:v128 count:16];
              if (v9)
              {
                v10 = *v105;
                v65 = *v105;
                do
                {
                  v70 = v9;
                  for (k = 0; k != v70; ++k)
                  {
                    if (*v105 != v10)
                    {
                      objc_enumerationMutation(v8);
                    }

                    v12 = *(*(&v104 + 1) + 8 * k);
                    if (([v12 isEqualToString:@"Required"] & 1) == 0 && (objc_msgSend(v12, "hasSuffix:", @"Test") & 1) == 0)
                    {
                      v67 = ddsAssetQuery(v7, v68, v12);
                      v13 = [SRAssertion alloc];
                      v14 = [v68 assetType];
                      v69 = [(SRAssertion *)v13 initWithAssetType:v14 language:v7 deliveryType:v12];

                      v15 = [(SRAssertion *)v69 assertionID];
                      v16 = [v62 containsObject:v15];
                      if (v16)
                      {
                        v17 = SRLogCategoryAssets(v16);
                        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                        {
                          v18 = v15;
                          v19 = [v15 UTF8String];
                          *buf = 136315138;
                          v127 = v19;
                          _os_log_impl(&dword_1AE58E000, v17, OS_LOG_TYPE_DEFAULT, "(assertions) keeping assertion : %s", buf, 0xCu);
                        }

                        [v61 removeObject:v69];
                      }

                      else
                      {
                        v20 = objc_alloc_init(MEMORY[0x1E6999968]);
                        v21 = SRLogCategoryAssets(v20);
                        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                        {
                          v22 = v15;
                          v23 = [v15 UTF8String];
                          *buf = 136315138;
                          v127 = v23;
                          _os_log_impl(&dword_1AE58E000, v21, OS_LOG_TYPE_DEFAULT, "(assertions) adding assertion : %s", buf, 0xCu);
                        }

                        v24 = [MEMORY[0x1E6999960] sharedInstance];
                        [v24 addAssertionForAssetsWithQuery:v67 policy:v20 assertionID:v15 clientID:@"SpotlightResources"];
                      }

                      dispatch_group_enter(group);
                      objc_initWeak(buf, val);
                      v25 = [MEMORY[0x1E6999960] sharedInstance];
                      v91[0] = MEMORY[0x1E69E9820];
                      v91[1] = 3221225472;
                      v91[2] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_470;
                      v91[3] = &unk_1E7A2B3E8;
                      v26 = v15;
                      v92 = v26;
                      v10 = v65;
                      objc_copyWeak(&v102, buf);
                      v27 = v67;
                      v93 = v27;
                      v94 = v7;
                      v95 = v68;
                      v96 = v12;
                      v103 = *(v64 + 65);
                      v28 = *(v64 + 40);
                      v99 = v123;
                      v97 = v28;
                      v100 = v112;
                      v101 = v114;
                      v98 = group;
                      [v25 updateAssetForQuery:v27 callback:v91];

                      objc_destroyWeak(&v102);
                      objc_destroyWeak(buf);
                    }
                  }

                  v9 = [v8 countByEnumeratingWithState:&v104 objects:v128 count:16];
                }

                while (v9);
              }
            }

            v6 = [v58 countByEnumeratingWithState:&v108 objects:v129 count:16];
          }

          while (v6);
        }

        objc_initWeak(&location, val);
        if (*(v64 + 65) == 1)
        {
          dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
          v29 = [val defaultsQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          v88[0] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_480;
          v88[1] = &unk_1E7A2B410;
          objc_copyWeak(&v89, &location);
          v88[2] = v114;
          v30 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
          dispatch_sync(v29, v30);

          v31 = [val notifyQueue];
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v82[0] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_481;
          v82[1] = &unk_1E7A2B438;
          v83 = *(v64 + 32);
          v84 = v112;
          objc_copyWeak(&v86, &location);
          v85 = v123;
          v32 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v81);
          dispatch_sync(v31, v32);

          objc_destroyWeak(&v86);
          objc_destroyWeak(&v89);
        }

        else
        {
          v33 = [val notifyQueue];
          v75[0] = MEMORY[0x1E69E9820];
          v75[1] = 3221225472;
          v76[0] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_482;
          v76[1] = &unk_1E7A2B438;
          v77 = *(v64 + 32);
          v78 = v112;
          objc_copyWeak(&v80, &location);
          v79 = v123;
          v34 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v75);
          dispatch_group_notify(group, v33, v34);

          objc_destroyWeak(&v80);
        }

        if (*(v64 + 64) == 1)
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v35 = v61;
          v36 = [v35 countByEnumeratingWithState:&v71 objects:v125 count:16];
          if (v36)
          {
            v37 = *v72;
            do
            {
              for (m = 0; m != v36; ++m)
              {
                if (*v72 != v37)
                {
                  objc_enumerationMutation(v35);
                }

                v39 = *(*(&v71 + 1) + 8 * m);
                v40 = [v39 assertionID];
                v41 = SRLogCategoryAssets(v40);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = v40;
                  v43 = [v40 UTF8String];
                  *buf = 136315138;
                  v127 = v43;
                  _os_log_impl(&dword_1AE58E000, v41, OS_LOG_TYPE_DEFAULT, "(assertions) removing assertion : %s", buf, 0xCu);
                }

                v44 = [MEMORY[0x1E6999960] sharedInstance];
                v45 = [v68 assetType];
                [v44 removeAssertionWithIdentifier:v40 assetType:v45];

                v46 = +[SRAssetBundleCache sharedInstance];
                v47 = [v39 assetType];
                v48 = [v39 language];
                v49 = [v39 deliveryType];
                [v46 removeAssetBundleWithAssetType:v47 language:v48 deliveryType:v49];
              }

              v36 = [v35 countByEnumeratingWithState:&v71 objects:v125 count:16];
            }

            while (v36);
          }
        }

        objc_destroyWeak(&location);
        _Block_object_dispose(v112, 8);

        _Block_object_dispose(v114, 8);
      }

      v54 = [obj countByEnumeratingWithState:&v119 objects:v130 count:16];
    }

    while (v54);
  }

  _Block_object_dispose(v123, 8);
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_466(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[SRAssertion alloc] initWithAssertionID:v3];

  [v2 addObject:v4];
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_470(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SRLogCategoryAssets(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1AE58E000, v7, OS_LOG_TYPE_DEFAULT, "(updateAssetForQuery) updated assets for %@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 112));
    v10 = [WeakRetained ddsQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_471;
    block[3] = &unk_1E7A2B3C0;
    v15 = *(a1 + 40);
    v11 = *(a1 + 64);
    v16 = *(a1 + 48);
    v20 = *(a1 + 120);
    v17 = v11;
    v13 = *(a1 + 80);
    v19 = *(a1 + 96);
    v12 = v13;
    v18 = v13;
    dispatch_async(v10, block);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_470_cold_1();
    }

    dispatch_group_leave(*(a1 + 80));
  }
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_471(uint64_t a1)
{
  v2 = [MEMORY[0x1E6999960] sharedInstance];
  v3 = [v2 assetsForQuery:*(a1 + 32) error:0];

  if ([v3 count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_472;
    v7[3] = &unk_1E7A2B398;
    v4 = *(a1 + 40);
    v5 = *(a1 + 80);
    v12 = *(a1 + 104);
    v6 = *(a1 + 56);
    v8 = v4;
    v9 = v6;
    v10 = v5;
    v11 = *(a1 + 96);
    [v3 enumerateObjectsUsingBlock:v7];
  }

  dispatch_group_leave(*(a1 + 72));
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_472(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = *(*(*(a1 + 64) + 8) + 40);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(*(*(a1 + 64) + 8) + 40);
  }

  v7 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(*(*(a1 + 64) + 8) + 40) setObject:v8 forKeyedSubscript:*(a1 + 32)];
  }

  v9 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
  v10 = [*(a1 + 40) assetType];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
    v14 = [*(a1 + 40) assetType];
    [v13 setObject:v12 forKeyedSubscript:v14];
  }

  v15 = [v28 attributes];
  v16 = [v15 objectForKeyedSubscript:@"SRBundleVersion"];

  if (v16)
  {
    v17 = [[SRAssetBundleVersion alloc] initWithBundleVersion:v16];
  }

  else
  {
    v17 = 0;
  }

  v18 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
  v19 = [*(a1 + 40) assetType];
  v20 = [v18 objectForKeyedSubscript:v19];
  [v20 setObject:v17 forKeyedSubscript:*(a1 + 48)];

  v21 = [v28 localURL];
  v22 = [v21 path];
  v23 = [v22 stringByDeletingLastPathComponent];

  v24 = +[SRAssetBundleCache sharedInstance];
  v25 = [*(a1 + 40) assetType];
  v26 = [v24 upsertAssetBundleWithAssetType:v25 language:*(a1 + 32) deliveryType:*(a1 + 48) bundleVersion:v17 path:v23];

  if (v26)
  {
    [*(*(*(a1 + 72) + 8) + 40) addObject:*(a1 + 32)];
    if (*(a1 + 88) == 1)
    {
      v27 = [*(a1 + 56) assetsFromResourcePath:v23 deliveryType:*(a1 + 48) assetType:*(a1 + 40) language:*(a1 + 32) force:1];
      if (v27)
      {
        [*(*(*(a1 + 80) + 8) + 40) addObjectsFromArray:v27];
      }
    }
  }
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_480(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _loadAssets:*(*(*(a1 + 32) + 8) + 40) shouldUpdate:1];
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_481(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_481_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:{v9, v11}];
        [WeakRetained notifyObserversWithLanguage:v9 bundleVersions:v10 reloadFromCache:0 force:1];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_482(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_482_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:{v9, v11}];
        [WeakRetained notifyObserversWithLanguage:v9 bundleVersions:v10 reloadFromCache:1 force:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)requestCatalogUpdate
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__SRDefaultsManager_requestCatalogUpdate__block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v3 = SRLogCategoryAssets(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE58E000, v3, OS_LOG_TYPE_DEFAULT, "Assets are available, requesting downloads", buf, 2u);
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v4 addObject:@"root"];
    v5 = [MEMORY[0x1E695DF58] preferredLanguages];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = normalizedLocaleForIdentifier(*(*(&v12 + 1) + 8 * v9));
          v11 = languageCodeForLocale(v10);
          [v4 addObject:v11];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    [*(a1 + 32) requestAssetsForLanguages:v4 removeExisting:0 force:0];
  }
}

- (id)loadAssetsForLanguage:(id)language reload:(BOOL)reload force:(BOOL)force
{
  forceCopy = force;
  reloadCopy = reload;
  languageCopy = language;
  v9 = [(SRDefaultsManager *)self didFetchForLanguage:languageCopy];
  currentAssetTypes = [(SRDefaultsManager *)self currentAssetTypes];
  if (v9)
  {
    if (!reloadCopy)
    {
      v11 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    [(SRDefaultsManager *)self loadSystemAssetsForLanguage:languageCopy assetTypes:currentAssetTypes];
    if (sHasTestAssets == 1)
    {
      [(SRDefaultsManager *)self loadTestAssetsForLanguage:languageCopy assetTypes:currentAssetTypes];
    }
  }

  v11 = [(SRDefaultsManager *)self loadOTAAssetsForLanguage:languageCopy updateCache:reloadCopy assetTypes:currentAssetTypes force:forceCopy];
  if (!v9)
  {
    [(SRDefaultsManager *)self addFetchForLanguage:languageCopy];
  }

LABEL_8:

  return v11;
}

- (id)loadDefaultsForLocale:(id)locale reload:(BOOL)reload force:(BOOL)force
{
  forceCopy = force;
  reloadCopy = reload;
  v8 = languageCodeForLocale(locale);
  v9 = [(SRDefaultsManager *)self loadAssetsForLanguage:v8 reload:reloadCopy force:forceCopy];

  return v9;
}

- (void)loadSystemAssetsForLanguage:(id)language assetTypes:(id)types
{
  v25 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  typesCopy = types;
  if (([languageCopy isEqualToString:@"root"] & 1) == 0 && -[SRLanguageConfiguration isSupportedLanguage:deliveryType:](self->_langConfig, "isSupportedLanguage:deliveryType:", languageCopy, @"Required"))
  {
    resourceBundle = [(SRDefaultsManager *)self resourceBundle];
    languageCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"RequiredAssets_%@", languageCopy];
    v10 = [resourceBundle pathForResource:languageCopy ofType:@"bundle"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [defaultManager fileExistsAtPath:v10];

    v14 = SRLogCategoryAssets(v13);
    v15 = v14;
    if (v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        uTF8String = [languageCopy UTF8String];
        v23 = 2080;
        uTF8String2 = [v10 UTF8String];
        _os_log_impl(&dword_1AE58E000, v15, OS_LOG_TYPE_DEFAULT, "Loading %s at path <%s>", buf, 0x16u);
      }

      v16 = [typesCopy objectForKeyedSubscript:@"com.apple.MobileAsset.SpotlightResources"];
      v17 = [(SRDefaultsManager *)self assetsFromResourcePath:v10 deliveryType:@"Required" assetType:v16 language:languageCopy force:0];

      defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__SRDefaultsManager_loadSystemAssetsForLanguage_assetTypes___block_invoke;
      block[3] = &unk_1E7A2AFF0;
      block[4] = self;
      v20 = v17;
      v15 = v17;
      dispatch_sync(defaultsQueue, block);
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SRDefaultsManager loadSystemAssetsForLanguage:languageCopy assetTypes:v10];
    }
  }
}

- (void)loadTestAssetsForLanguage:(id)language assetTypes:(id)types
{
  v62 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  typesCopy = types;
  v7 = typesCopy;
  if (sHasTestAssets == 1 && (SRIgnoreOTAAssets(typesCopy) & 1) == 0)
  {
    resourceBundle = [(SRDefaultsManager *)self resourceBundle];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v37 = v7;
    obj = [v7 allValues];
    v8 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v53;
      v11 = @"Test";
      v38 = *v53;
      do
      {
        v12 = 0;
        v39 = v9;
        do
        {
          if (*v53 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v52 + 1) + 8 * v12);
          assetType = [v13 assetType];
          v15 = [assetType isEqualToString:@"com.apple.MobileAsset.SpotlightResources"];

          if (v15)
          {
            v41 = v12;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v42 = v13;
            deliveryTypes = [v13 deliveryTypes];
            v17 = [deliveryTypes countByEnumeratingWithState:&v48 objects:v60 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v49;
              v44 = deliveryTypes;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v49 != v19)
                  {
                    objc_enumerationMutation(deliveryTypes);
                  }

                  v21 = *(*(&v48 + 1) + 8 * i);
                  if ([v21 hasSuffix:v11] && -[SRLanguageConfiguration isSupportedLanguage:deliveryType:](self->_langConfig, "isSupportedLanguage:deliveryType:", languageCopy, v21))
                  {
                    v22 = v11;
                    v23 = languageCopy;
                    languageCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Assets_%@", v21, languageCopy];
                    v25 = [resourceBundle pathForResource:languageCopy ofType:@"bundle"];
                    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
                    v27 = [defaultManager fileExistsAtPath:v25];

                    v29 = SRLogCategoryAssets(v28);
                    v30 = v29;
                    if (v27)
                    {
                      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                      {
                        uTF8String = [languageCopy UTF8String];
                        uTF8String2 = [v25 UTF8String];
                        *buf = 136315394;
                        v57 = uTF8String;
                        v58 = 2080;
                        v59 = uTF8String2;
                        _os_log_impl(&dword_1AE58E000, v30, OS_LOG_TYPE_DEFAULT, "Loading %s at path <%s>", buf, 0x16u);
                      }

                      v33 = [(SRDefaultsManager *)self assetsFromResourcePath:v25 deliveryType:v21 assetType:v42 language:v23 force:0];
                      defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
                      block[0] = MEMORY[0x1E69E9820];
                      block[1] = 3221225472;
                      block[2] = __58__SRDefaultsManager_loadTestAssetsForLanguage_assetTypes___block_invoke;
                      block[3] = &unk_1E7A2AFF0;
                      block[4] = self;
                      v47 = v33;
                      v30 = v33;
                      dispatch_sync(defaultsQueue, block);
                    }

                    else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      uTF8String3 = [languageCopy UTF8String];
                      uTF8String4 = [v25 UTF8String];
                      *buf = 136315394;
                      v57 = uTF8String3;
                      v58 = 2080;
                      v59 = uTF8String4;
                      _os_log_error_impl(&dword_1AE58E000, v30, OS_LOG_TYPE_ERROR, "%s does not exist at path <%s>", buf, 0x16u);
                    }

                    v11 = v22;
                    languageCopy = v23;
                    deliveryTypes = v44;
                  }
                }

                v18 = [deliveryTypes countByEnumeratingWithState:&v48 objects:v60 count:16];
              }

              while (v18);
            }

            v10 = v38;
            v9 = v39;
            v12 = v41;
          }

          ++v12;
        }

        while (v12 != v9);
        v9 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v9);
    }

    v7 = v37;
  }
}

- (id)loadOTAAssetsForLanguage:(id)language updateCache:(BOOL)cache assetTypes:(id)types force:(BOOL)force
{
  forceCopy = force;
  cacheCopy = cache;
  v80 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  typesCopy = types;
  v12 = SRIgnoreOTAAssets(typesCopy);
  if ((v12 & 1) != 0 || sHasTestAssets == 1)
  {
    v13 = SRLogCategoryAssets(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE58E000, v13, OS_LOG_TYPE_DEFAULT, "Skipping OTA asset loading", buf, 2u);
    }

    v14 = 0;
  }

  else
  {
    v15 = sIndex++;
    v16 = SRLogCategoryAssets(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      allKeys = [typesCopy allKeys];
      *buf = 134219010;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = languageCopy;
      *&buf[22] = 1024;
      *v79 = cacheCopy;
      *&v79[4] = 1024;
      *&v79[6] = forceCopy;
      *&v79[10] = 2112;
      *&v79[12] = allKeys;
      _os_log_debug_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEBUG, "loadOTA[%llu] (%@, %d, %d, %@)", buf, 0x2Cu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *v79 = __Block_byref_object_copy__0;
    *&v79[8] = __Block_byref_object_dispose__0;
    *&v79[16] = objc_alloc_init(MEMORY[0x1E695DF70]);
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__0;
    v75 = __Block_byref_object_dispose__0;
    v76 = 0;
    inited = objc_initWeak(&location, self);
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    if (SRIsRunningInServer(inited, v18))
    {
      ddsQueue = [(SRDefaultsManager *)self ddsQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504;
      block[3] = &unk_1E7A2B690;
      objc_copyWeak(v50, &location);
      v20 = languageCopy;
      v51 = cacheCopy;
      v44 = v20;
      v50[1] = v15;
      v21 = typesCopy;
      v52 = forceCopy;
      v47 = &v71;
      v48 = buf;
      v49 = &v66;
      v45 = v21;
      selfCopy = self;
      v22 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
      dispatch_sync(ddsQueue, v22);

      objc_destroyWeak(v50);
    }

    else
    {
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke;
      v64[3] = &unk_1E7A2AFF0;
      v64[4] = self;
      v23 = typesCopy;
      v65 = v23;
      if (loadOTAAssetsForLanguage_updateCache_assetTypes_force__onceToken != -1)
      {
        dispatch_once(&loadOTAAssetsForLanguage_updateCache_assetTypes_force__onceToken, v64);
      }

      v77 = languageCopy;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
      allKeys2 = [v23 allKeys];
      v26 = assetBundleCacheQuery(v24, allKeys2, sHasTestAssets);

      ddsQueue2 = [(SRDefaultsManager *)self ddsQueue];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494;
      v53[3] = &unk_1E7A2B5C8;
      objc_copyWeak(v61, &location);
      v28 = languageCopy;
      v62 = cacheCopy;
      v61[1] = v15;
      v54 = v28;
      v55 = v26;
      v29 = v23;
      v63 = forceCopy;
      v58 = &v71;
      v59 = buf;
      v60 = &v66;
      v56 = v29;
      selfCopy2 = self;
      v30 = v26;
      v31 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v53);
      dispatch_sync(ddsQueue2, v31);

      objc_destroyWeak(v61);
    }

    if ([*(*&buf[8] + 40) count])
    {
      defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_510;
      v42[3] = &unk_1E7A2B6B8;
      v42[4] = self;
      v42[5] = buf;
      v42[6] = v15;
      v33 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v42);
      dispatch_sync(defaultsQueue, v33);
    }

    if (forceCopy && *(v67 + 24) == 1)
    {
      notifyQueue = [(SRDefaultsManager *)self notifyQueue];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_511;
      v38[3] = &unk_1E7A2B550;
      v41 = v15;
      v38[4] = self;
      v39 = languageCopy;
      v40 = &v71;
      v35 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v38);
      dispatch_sync(notifyQueue, v35);
    }

    v14 = v72[5];
    _Block_object_dispose(&v66, 8);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v71, 8);

    _Block_object_dispose(buf, 8);
  }

  return v14;
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) ddsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_2;
  block[3] = &unk_1E7A2B1B8;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);

  objc_autoreleasePoolPop(v2);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = [*(a1 + 32) allValues];
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v14 + 1) + 8 * v5);
        v7 = SRLogCategoryAssets(v2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 assetType];
          v9 = [v8 UTF8String];
          v10 = [v6 compatibilityVersion];
          *buf = 136315394;
          v19 = v9;
          v20 = 2048;
          v21 = v10;
          _os_log_impl(&dword_1AE58E000, v7, OS_LOG_TYPE_DEFAULT, "(AssetServerInit) configuring asset type: %s (%lu)", buf, 0x16u);
        }

        v11 = [MEMORY[0x1E6999960] sharedInstance];
        v12 = [v6 compatibilityVersion];
        v13 = [v6 assetType];
        [v11 setCompatabilityVersion:v12 forAssetType:v13];

        ++v5;
      }

      while (v3 != v5);
      v2 = [v1 countByEnumeratingWithState:&v14 objects:v22 count:16];
      v3 = v2;
    }

    while (v2);
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = [WeakRetained cachedOTALanguages];
  v4 = [v3 containsObject:*(a1 + 32)];

  v5 = [WeakRetained requestedOTALanguages];
  v6 = [v5 containsObject:*(a1 + 32)];

  if (*(a1 + 104) & 1) != 0 || ((v4 ^ 1))
  {
    v12 = *(a1 + 105);
    v13 = SRLogCategoryAssets(v7);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      if (v14)
      {
        __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494_cold_3();
      }

      *v59 = 0;
      *&v59[8] = v59;
      *&v59[16] = 0x3032000000;
      v60 = __Block_byref_object_copy__0;
      v61 = __Block_byref_object_dispose__0;
      v62 = 0;
      v16 = SRLogCategoryAssets(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 32) UTF8String];
        *buf = 136315138;
        v58 = v17;
        _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "(forceLoad) Sending query to server for %s", buf, 0xCu);
      }

      v18 = *(a1 + 40);
      v19 = *(a1 + 105);
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_497;
      v51[3] = &unk_1E7A2B4D8;
      v20 = *(a1 + 96);
      v51[4] = v59;
      v51[5] = v20;
      refreshCacheWithQuery(v18, v19, v51);
      if (*(*&v59[8] + 40))
      {
        v22 = SRLogCategoryAssets(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [*(a1 + 32) UTF8String];
          *buf = 136315138;
          v58 = v23;
          _os_log_impl(&dword_1AE58E000, v22, OS_LOG_TYPE_DEFAULT, "(forceLoad) Got asset bundles from server for %s", buf, 0xCu);
        }

        v24 = +[SRAssetBundleCache sharedInstance];
        [v24 updateCacheWithResults:*(*&v59[8] + 40) loading:1];

        v25 = *(*&v59[8] + 40);
        v26 = *(a1 + 32);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_499;
        v46[3] = &unk_1E7A2B500;
        v49 = *(a1 + 64);
        v46[4] = WeakRetained;
        v47 = *(a1 + 48);
        v48 = *(a1 + 32);
        v50 = *(a1 + 72);
        [v25 enumerateEntriesForLanguage:v26 block:v46];
        v27 = [WeakRetained cachedOTALanguages];
        [v27 addObject:*(a1 + 32)];
      }

      v28 = [WeakRetained requestedOTALanguages];
      [v28 removeObject:*(a1 + 32)];

      _Block_object_dispose(v59, 8);
    }

    else if (v6)
    {
      if (v14)
      {
        v38 = *(a1 + 96);
        v39 = *(a1 + 104);
        v40 = *(a1 + 105);
        *v59 = 134219008;
        *&v59[4] = v38;
        *&v59[12] = 1024;
        *&v59[14] = v39;
        *&v59[18] = 1024;
        *&v59[20] = v4;
        LOWORD(v60) = 1024;
        *(&v60 + 2) = v40;
        HIWORD(v60) = 1024;
        LODWORD(v61) = 1;
        _os_log_debug_impl(&dword_1AE58E000, v13, OS_LOG_TYPE_DEBUG, "loadOTA[%llu] client 4 skipping (%d, %d, %d, %d)", v59, 0x24u);
      }
    }

    else
    {
      if (v14)
      {
        __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494_cold_2();
      }

      v30 = SRLogCategoryAssets(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [*(a1 + 32) UTF8String];
        *v59 = 136315138;
        *&v59[4] = v31;
        _os_log_impl(&dword_1AE58E000, v30, OS_LOG_TYPE_DEFAULT, "Sending query to server for %s", v59, 0xCu);
      }

      v32 = [WeakRetained requestedOTALanguages];
      [v32 addObject:*(a1 + 32)];

      v33 = *(a1 + 40);
      v34 = *(a1 + 105);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_500;
      v41[3] = &unk_1E7A2B5A0;
      v45 = *(a1 + 96);
      v41[4] = WeakRetained;
      v35 = *(a1 + 32);
      v36 = *(a1 + 80);
      v37 = *(a1 + 56);
      v42 = v35;
      v43 = v37;
      v44 = v36;
      refreshCacheWithQuery(v33, v34, v41);
    }
  }

  else
  {
    v8 = SRLogCategoryAssets(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_494_cold_1();
    }

    v9 = +[SRAssetBundleCache sharedInstance];
    [v9 queryCache:*(a1 + 40) loading:1];

    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_495;
    v52[3] = &unk_1E7A2B4B0;
    v52[4] = WeakRetained;
    v53 = *(a1 + 48);
    v54 = *(a1 + 32);
    v56 = *(a1 + 105);
    v55 = *(a1 + 64);
    [v10 enumerateEntriesForLanguage:v11 block:v52];
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_495(uint64_t a1, void *a2)
{
  v29 = a2;
  if (([v29 loaded] & 1) == 0)
  {
    v3 = [v29 bundleVersion];

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = [v29 path];
      v6 = [v29 deliveryTypeString];
      v7 = *(a1 + 40);
      v8 = [v29 assetTypeString];
      v9 = [v7 objectForKeyedSubscript:v8];
      v10 = [v4 assetsFromResourcePath:v5 deliveryType:v6 assetType:v9 language:*(a1 + 48) force:*(a1 + 72)];

      if (v10)
      {
        v11 = *(*(*(a1 + 56) + 8) + 40);
        if (!v11)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v13 = *(*(a1 + 56) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          v11 = *(*(*(a1 + 56) + 8) + 40);
        }

        v15 = [v29 assetTypeString];
        v16 = [v11 objectForKeyedSubscript:v15];

        if (!v16)
        {
          v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v18 = *(*(*(a1 + 56) + 8) + 40);
          v19 = [v29 assetTypeString];
          [v18 setObject:v17 forKeyedSubscript:v19];
        }

        v20 = [v29 bundleVersion];
        v21 = *(*(*(a1 + 56) + 8) + 40);
        v22 = [v29 assetTypeString];
        v23 = [v21 objectForKeyedSubscript:v22];
        v24 = [v29 deliveryTypeString];
        [v23 setObject:v20 forKeyedSubscript:v24];

        [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v10];
      }

      else
      {
        v25 = +[SRAssetBundleCache sharedInstance];
        v26 = *(a1 + 48);
        v27 = [v29 assetTypeString];
        v28 = [v29 deliveryTypeString];
        [v25 loadFailedForLanguage:v26 assetType:v27 deliveryType:v28];
      }
    }
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_497(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SRLogCategoryAssets(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_497_cold_1();
  }

  if (v6)
  {
    v9 = SRLogCategoryAssets(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_497_cold_2();
    }
  }

  else
  {
    v10 = *(*(a1 + 32) + 8);
    v11 = v5;
    v9 = *(v10 + 40);
    *(v10 + 40) = v11;
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_499(void *a1, void *a2)
{
  v3 = a2;
  if (([v3 loaded] & 1) == 0)
  {
    v4 = [v3 bundleVersion];

    if (v4)
    {
      v5 = *(*(a1[7] + 8) + 40);
      if (!v5)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v7 = *(a1[7] + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        v5 = *(*(a1[7] + 8) + 40);
      }

      v9 = [v3 assetTypeString];
      v10 = [v5 objectForKeyedSubscript:v9];

      if (!v10)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v12 = *(*(a1[7] + 8) + 40);
        v13 = [v3 assetTypeString];
        [v12 setObject:v11 forKeyedSubscript:v13];
      }

      v14 = [v3 bundleVersion];
      v15 = *(*(a1[7] + 8) + 40);
      v16 = [v3 assetTypeString];
      v17 = [v15 objectForKeyedSubscript:v16];
      v18 = [v3 deliveryTypeString];
      [v17 setObject:v14 forKeyedSubscript:v18];

      v19 = a1[4];
      v20 = [v3 path];
      v21 = [v3 deliveryTypeString];
      v22 = a1[5];
      v23 = [v3 assetTypeString];
      v24 = [v22 objectForKeyedSubscript:v23];
      v25 = [v19 assetsFromResourcePath:v20 deliveryType:v21 assetType:v24 language:a1[6] force:1];

      if (v25)
      {
        [*(*(a1[8] + 8) + 40) addObjectsFromArray:v25];
      }

      else
      {
        v27 = SRLogCategoryAssets(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_499_cold_1(v3);
        }
      }

      *(*(a1[9] + 8) + 24) = 1;
    }
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_500(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SRLogCategoryAssets(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_500_cold_1();
  }

  objc_initWeak(&location, *(a1 + 32));
  v8 = [*(a1 + 32) ddsQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_501;
  v12[3] = &unk_1E7A2B578;
  v17[1] = *(a1 + 64);
  objc_copyWeak(v17, &location);
  v13 = v6;
  v14 = v5;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v12);
  dispatch_async(v8, v11);

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_501(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_501_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = WeakRetained;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__0;
  v22[4] = __Block_byref_object_dispose__0;
  v23 = 0;
  if (*(a1 + 32))
  {
    v5 = SRLogCategoryAssets(WeakRetained);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_501_cold_2();
    }
  }

  else
  {
    if (!*(a1 + 40))
    {
      goto LABEL_11;
    }

    v6 = SRLogCategoryAssets(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 48) UTF8String];
      *buf = 136315138;
      v25 = v7;
      _os_log_impl(&dword_1AE58E000, v6, OS_LOG_TYPE_DEFAULT, "Got asset bundles from server for %s", buf, 0xCu);
    }

    v8 = +[SRAssetBundleCache sharedInstance];
    [v8 updateCacheWithResults:*(a1 + 40) loading:0];

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_502;
    v21[3] = &unk_1E7A2B528;
    v11 = *(a1 + 64);
    v21[4] = v22;
    v21[5] = v11;
    [v9 enumerateEntriesForLanguage:v10 block:v21];
    v5 = [v4 cachedOTALanguages];
    [v5 addObject:*(a1 + 48)];
  }

LABEL_11:
  v12 = [v4 requestedOTALanguages];
  [v12 removeObject:*(a1 + 48)];

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v13 = [v4 notifyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_2_503;
    block[3] = &unk_1E7A2B550;
    v20 = *(a1 + 80);
    v16 = *(a1 + 48);
    v14 = v16.i64[0];
    v18 = vextq_s8(v16, v16, 8uLL);
    v19 = v22;
    v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    dispatch_async(v13, v15);
  }

  _Block_object_dispose(v22, 8);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_502(uint64_t a1, void *a2)
{
  v18 = a2;
  if (([v18 loaded] & 1) == 0)
  {
    v3 = [v18 bundleVersion];

    if (v3)
    {
      v4 = *(*(*(a1 + 32) + 8) + 40);
      if (!v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v6 = *(*(a1 + 32) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;

        v4 = *(*(*(a1 + 32) + 8) + 40);
      }

      v8 = [v18 assetTypeString];
      v9 = [v4 objectForKeyedSubscript:v8];

      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = *(*(*(a1 + 32) + 8) + 40);
        v12 = [v18 assetTypeString];
        [v11 setObject:v10 forKeyedSubscript:v12];
      }

      v13 = [v18 bundleVersion];
      v14 = *(*(*(a1 + 32) + 8) + 40);
      v15 = [v18 assetTypeString];
      v16 = [v14 objectForKeyedSubscript:v15];
      v17 = [v18 deliveryTypeString];
      [v16 setObject:v13 forKeyedSubscript:v17];

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

uint64_t __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_2_503(uint64_t a1)
{
  v2 = SRLogCategoryAssets(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_2_503_cold_1();
  }

  return [*(a1 + 32) notifyObserversWithLanguage:*(a1 + 40) bundleVersions:*(*(*(a1 + 48) + 8) + 40) reloadFromCache:1 force:0];
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504(uint64_t a1)
{
  v86[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [WeakRetained cachedOTALanguages];
  v4 = [v3 containsObject:*(a1 + 32)];

  v5 = [WeakRetained requestedOTALanguages];
  v6 = [v5 containsObject:*(a1 + 32)];

  if ((*(a1 + 96) & 1) != 0 || !v4)
  {
    v16 = *(a1 + 97);
    v11 = SRLogCategoryAssets(v7);
    v17 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v16 == 1)
    {
      if (v17)
      {
        __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_3();
      }

      v67 = 0u;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      obj = [*(a1 + 40) allValues];
      v43 = [obj countByEnumeratingWithState:&v64 objects:v85 count:16];
      if (v43)
      {
        v42 = *v65;
        do
        {
          v18 = 0;
          do
          {
            if (*v65 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v44 = v18;
            v19 = *(*(&v64 + 1) + 8 * v18);
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v20 = [v19 deliveryTypes];
            v21 = [v20 countByEnumeratingWithState:&v60 objects:v84 count:16];
            if (v21)
            {
              v22 = v21;
              v46 = v19;
              v47 = *v61;
              v45 = v20;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v61 != v47)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v24 = *(*(&v60 + 1) + 8 * i);
                  if (([v24 isEqualToString:@"Required"] & 1) == 0 && (objc_msgSend(v24, "hasSuffix:", @"Test") & 1) == 0)
                  {
                    v25 = ddsAssetQuery(*(a1 + 32), v19, v24);
                    v26 = [MEMORY[0x1E6999960] sharedInstance];
                    v27 = [v26 assetsForQuery:v25 error:0];

                    if ([v27 count])
                    {
                      v55[0] = MEMORY[0x1E69E9820];
                      v55[1] = 3221225472;
                      v55[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_506;
                      v55[3] = &unk_1E7A2B618;
                      v58 = *(a1 + 56);
                      v55[4] = v19;
                      v55[5] = v24;
                      v56 = *(a1 + 32);
                      v57 = WeakRetained;
                      v59 = *(a1 + 64);
                      [v27 enumerateObjectsUsingBlock:v55];
                    }

                    else
                    {
                      v28 = +[SRAssetBundleCache sharedInstance];
                      [v19 assetType];
                      v30 = v29 = WeakRetained;
                      [v28 removeAssetBundleWithAssetType:v30 language:*(a1 + 32) deliveryType:v24];

                      WeakRetained = v29;
                    }

                    v20 = v45;
                    v19 = v46;
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v60 objects:v84 count:16];
              }

              while (v22);
            }

            v18 = v44 + 1;
          }

          while (v44 + 1 != v43);
          v43 = [obj countByEnumeratingWithState:&v64 objects:v85 count:16];
        }

        while (v43);
      }

      v32 = SRLogCategoryAssets(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_4();
      }

      v33 = [WeakRetained cachedOTALanguages];
      [v33 addObject:*(a1 + 32)];

      v11 = [WeakRetained requestedOTALanguages];
      [v11 removeObject:*(a1 + 32)];
    }

    else if (v6)
    {
      if (v17)
      {
        v34 = *(a1 + 88);
        v35 = *(a1 + 96);
        v36 = *(a1 + 97);
        *buf = 134219008;
        v75 = v34;
        v76 = 1024;
        v77 = v35;
        v78 = 1024;
        v79 = v4;
        v80 = 1024;
        v81 = v36;
        v82 = 1024;
        v83 = 1;
        _os_log_debug_impl(&dword_1AE58E000, v11, OS_LOG_TYPE_DEBUG, "loadOTA[%llu] server 4 skipping (%d, %d, %d, %d)", buf, 0x24u);
      }
    }

    else
    {
      if (v17)
      {
        __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_2();
      }

      v37 = [WeakRetained requestedOTALanguages];
      [v37 addObject:*(a1 + 32)];

      v38 = [WeakRetained ddsQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_507;
      block[3] = &unk_1E7A2B668;
      v54 = *(a1 + 88);
      v49 = *(a1 + 40);
      v39 = *(a1 + 32);
      v40 = *(a1 + 72);
      v50 = v39;
      v51 = WeakRetained;
      v52 = *(a1 + 48);
      v53 = v40;
      dispatch_async(v38, block);

      v11 = v49;
    }
  }

  else
  {
    v8 = SRLogCategoryAssets(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_1();
    }

    v86[0] = *(a1 + 32);
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:1];
    v10 = [*(a1 + 40) allKeys];
    v11 = assetBundleCacheQuery(v9, v10, sHasTestAssets);

    v12 = +[SRAssetBundleCache sharedInstance];
    [v12 queryCache:v11 loading:1];

    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_505;
    v68[3] = &unk_1E7A2B5F0;
    v71 = *(a1 + 56);
    v68[4] = WeakRetained;
    v13 = *(a1 + 32);
    v69 = *(a1 + 40);
    v14 = *(a1 + 32);
    v73 = *(a1 + 97);
    v15 = *(a1 + 64);
    v70 = v14;
    v72 = v15;
    [v11 enumerateEntriesForLanguage:v13 block:v68];
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_505(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 loaded] & 1) == 0)
  {
    v4 = [v3 bundleVersion];

    if (v4)
    {
      v5 = *(*(*(a1 + 56) + 8) + 40);
      if (!v5)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v7 = *(*(a1 + 56) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        v5 = *(*(*(a1 + 56) + 8) + 40);
      }

      v9 = [v3 assetTypeString];
      v10 = [v5 objectForKeyedSubscript:v9];

      if (!v10)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v12 = *(*(*(a1 + 56) + 8) + 40);
        v13 = [v3 assetTypeString];
        [v12 setObject:v11 forKeyedSubscript:v13];
      }

      v14 = [v3 bundleVersion];
      v15 = *(*(*(a1 + 56) + 8) + 40);
      v16 = [v3 assetTypeString];
      v17 = [v15 objectForKeyedSubscript:v16];
      v18 = [v3 deliveryTypeString];
      [v17 setObject:v14 forKeyedSubscript:v18];

      v19 = sLastLoadedBundleVersion;
      if (!sLastLoadedBundleVersion || ([v3 bundleVersion], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "compare:", v20), v20, v21 == -1))
      {
        v22 = [v3 bundleVersion];
        v23 = sLastLoadedBundleVersion;
        sLastLoadedBundleVersion = v22;
      }

      v24 = *(a1 + 32);
      v25 = [v3 path];
      v26 = [v3 deliveryTypeString];
      v27 = *(a1 + 40);
      v28 = [v3 assetTypeString];
      v29 = [v27 objectForKeyedSubscript:v28];
      v30 = [v24 assetsFromResourcePath:v25 deliveryType:v26 assetType:v29 language:*(a1 + 48) force:*(a1 + 72)];

      if (v30)
      {
        [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v30];
      }

      else
      {
        v32 = SRLogCategoryAssets(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_505_cold_1(v3);
        }
      }
    }
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_506(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 64) + 8) + 40);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 64) + 8) + 40);
  }

  v8 = [*(a1 + 32) assetType];
  v9 = [v4 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = *(*(*(a1 + 64) + 8) + 40);
    v12 = [*(a1 + 32) assetType];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  v13 = [v3 attributes];
  v14 = [v13 objectForKeyedSubscript:@"SRBundleVersion"];

  if (v14)
  {
    v15 = [[SRAssetBundleVersion alloc] initWithBundleVersion:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*(*(a1 + 64) + 8) + 40);
  v17 = [*(a1 + 32) assetType];
  v18 = [v16 objectForKeyedSubscript:v17];
  [v18 setObject:v15 forKeyedSubscript:*(a1 + 40)];

  v19 = [v3 localURL];
  v20 = [v19 path];
  v21 = [v20 stringByDeletingLastPathComponent];

  v22 = +[SRAssetBundleCache sharedInstance];
  v23 = [*(a1 + 32) assetType];
  v24 = [v22 upsertAssetBundleWithAssetType:v23 language:*(a1 + 48) deliveryType:*(a1 + 40) bundleVersion:v15 path:v21];

  if (v24)
  {
    v25 = [*(a1 + 56) assetsFromResourcePath:v21 deliveryType:*(a1 + 40) assetType:*(a1 + 32) language:*(a1 + 48) force:1];
    if (v25)
    {
      [*(*(*(a1 + 72) + 8) + 40) addObjectsFromArray:v25];
    }

    else
    {
      v26 = SRLogCategoryAssets(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_506_cold_1();
      }
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
  }
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_507(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = SRLogCategoryAssets(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_507_cold_1();
  }

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__0;
  v43[4] = __Block_byref_object_dispose__0;
  v44 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v2 = a1;
  obj = [*(a1 + 32) allValues];
  v24 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v24)
  {
    v23 = *v40;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v39 + 1) + 8 * i);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v4 = [v3 deliveryTypes];
        v5 = [v4 countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v5)
        {
          v6 = *v36;
          do
          {
            for (j = 0; j != v5; ++j)
            {
              if (*v36 != v6)
              {
                objc_enumerationMutation(v4);
              }

              v8 = *(*(&v35 + 1) + 8 * j);
              if (([v8 isEqualToString:@"Required"] & 1) == 0 && (objc_msgSend(v8, "hasSuffix:", @"Test") & 1) == 0)
              {
                v9 = ddsAssetQuery(*(v2 + 40), v3, v8);
                v10 = [MEMORY[0x1E6999960] sharedInstance];
                v11 = [v10 assetsForQuery:v9 error:0];

                if ([v11 count])
                {
                  v31[0] = MEMORY[0x1E69E9820];
                  v31[1] = 3221225472;
                  v31[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_508;
                  v31[3] = &unk_1E7A2B640;
                  v33 = v43;
                  v31[4] = v3;
                  v31[5] = v8;
                  v12 = *(a1 + 40);
                  v13 = *(a1 + 64);
                  v32 = v12;
                  v34 = v13;
                  [v11 enumerateObjectsUsingBlock:v31];
                }

                else
                {
                  v14 = +[SRAssetBundleCache sharedInstance];
                  v15 = [v3 assetType];
                  [v14 removeAssetBundleWithAssetType:v15 language:*(a1 + 40) deliveryType:v8];
                }

                v2 = a1;
              }
            }

            v5 = [v4 countByEnumeratingWithState:&v35 objects:v45 count:16];
          }

          while (v5);
        }

        v2 = a1;
      }

      v24 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v24);
  }

  v17 = SRLogCategoryAssets(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_507_cold_2();
  }

  v18 = [*(a1 + 48) cachedOTALanguages];
  [v18 addObject:*(a1 + 40)];

  v19 = [*(a1 + 48) requestedOTALanguages];
  [v19 removeObject:*(a1 + 40)];

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v20 = [*(a1 + 48) notifyQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_509;
    block[3] = &unk_1E7A2B550;
    v21 = *(a1 + 56);
    v30 = *(a1 + 72);
    block[4] = v21;
    v28 = *(a1 + 40);
    v29 = v43;
    dispatch_async(v20, block);
  }

  _Block_object_dispose(v43, 8);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_508(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = *(*(*(a1 + 56) + 8) + 40);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = *(*(*(a1 + 56) + 8) + 40);
  }

  v7 = [*(a1 + 32) assetType];
  v8 = [v3 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = *(*(*(a1 + 56) + 8) + 40);
    v11 = [*(a1 + 32) assetType];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  v12 = [v24 attributes];
  v13 = [v12 objectForKeyedSubscript:@"SRBundleVersion"];

  if (v13)
  {
    v14 = [[SRAssetBundleVersion alloc] initWithBundleVersion:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*(*(a1 + 56) + 8) + 40);
  v16 = [*(a1 + 32) assetType];
  v17 = [v15 objectForKeyedSubscript:v16];
  [v17 setObject:v14 forKeyedSubscript:*(a1 + 40)];

  v18 = [v24 localURL];
  v19 = [v18 path];
  v20 = [v19 stringByDeletingLastPathComponent];

  v21 = +[SRAssetBundleCache sharedInstance];
  v22 = [*(a1 + 32) assetType];
  v23 = [v21 upsertAssetBundleWithAssetType:v22 language:*(a1 + 48) deliveryType:*(a1 + 40) bundleVersion:v14 path:v20];

  if (v23)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

uint64_t __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_509(uint64_t a1)
{
  v2 = SRLogCategoryAssets(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_509_cold_1();
  }

  return [*(a1 + 32) notifyObserversWithLanguage:*(a1 + 40) bundleVersions:*(*(*(a1 + 48) + 8) + 40) reloadFromCache:1 force:0];
}

uint64_t __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_510(uint64_t a1)
{
  v2 = SRLogCategoryAssets(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_510_cold_1();
  }

  return [*(a1 + 32) _loadAssets:*(*(*(a1 + 40) + 8) + 40) shouldUpdate:1];
}

uint64_t __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_511(uint64_t a1, uint64_t a2)
{
  v3 = SRIsRunningInServer(a1, a2);
  v4 = v3;
  v5 = SRLogCategoryAssets(v3);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_511_cold_2();
    }
  }

  else if (v6)
  {
    __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_511_cold_1();
  }

  return [*(a1 + 32) notifyObserversWithLanguage:*(a1 + 40) bundleVersions:*(*(*(a1 + 48) + 8) + 40) reloadFromCache:0 force:1];
}

- (void)unloadDefaultsForLocale:(id)locale
{
  localeCopy = locale;
  v5 = languageCodeForLocale(localeCopy);
  [(SRDefaultsManager *)self removeFetchForLanguage:v5];
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SRDefaultsManager_unloadDefaultsForLocale___block_invoke;
  v8[3] = &unk_1E7A2AFF0;
  v8[4] = self;
  v9 = localeCopy;
  v7 = localeCopy;
  dispatch_sync(defaultsQueue, v8);
}

- (void)loadFactorsAtPath:(id)path namespaceId:(id)id
{
  pathCopy = path;
  idCopy = id;
  v8 = SRLogCategoryTrial(idCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SRDefaultsManager loadFactorsAtPath:namespaceId:];
  }

  v9 = [PlistReader plistReaderWithResourcePath:pathCopy];
  v10 = v9;
  if (v9)
  {
    plist = [v9 plist];
    v12 = plist;
    if (plist && [plist count])
    {
      defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __51__SRDefaultsManager_loadFactorsAtPath_namespaceId___block_invoke;
      v14[3] = &unk_1E7A2B6E0;
      v15 = pathCopy;
      v16 = v12;
      selfCopy = self;
      v18 = idCopy;
      dispatch_sync(defaultsQueue, v14);
    }
  }
}

void __51__SRDefaultsManager_loadFactorsAtPath_namespaceId___block_invoke(uint64_t a1)
{
  v103 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v82 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [MEMORY[0x1E695DFF8] URLWithString:*(a1 + 32)];
  v3 = [v2 URLByDeletingLastPathComponent];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v79 = v3;
  v5 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:4 errorHandler:0];

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v97 objects:v102 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v98;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v98 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v97 + 1) + 8 * i);
        v11 = [v10 lastPathComponent];
        if (([v11 hasPrefix:@"assets_"] & 1) == 0 && (objc_msgSend(v11, "hasPrefix:", @"default_factors_") & 1) == 0 && (objc_msgSend(v11, "hasPrefix:", @"factors.mdplist") & 1) == 0)
        {
          v12 = [v10 path];
          [v82 setObject:v12 forKey:v11];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v97 objects:v102 count:16];
    }

    while (v7);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v89 = *(a1 + 40);
  v13 = [v89 countByEnumeratingWithState:&v93 objects:v101 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v92 = *v94;
    v81 = a1;
    while (1)
    {
      v16 = 0;
      v88 = v14;
      do
      {
        if (*v94 != v92)
        {
          objc_enumerationMutation(v89);
        }

        v17 = *(*(&v93 + 1) + 8 * v16);

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = v17;
          goto LABEL_117;
        }

        v18 = v17;
        v19 = [*(a1 + 40) objectForKeyedSubscript:v18];
        v20 = [v19 objectForKeyedSubscript:@"Type"];
        if (v20)
        {
          v21 = v20;
          v22 = [*(a1 + 40) objectForKeyedSubscript:v18];
          v23 = [v22 objectForKeyedSubscript:@"Type"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [*(a1 + 40) objectForKeyedSubscript:v18];
            v25 = [v24 objectForKeyedSubscript:@"Type"];
          }

          else
          {
            v25 = 0;
          }

          v15 = v18;
          if (!v25)
          {
            goto LABEL_116;
          }

          v26 = [*(a1 + 40) objectForKeyedSubscript:v18];
          v27 = [v26 objectForKeyedSubscript:@"IrisName"];
          if (v27)
          {
            v28 = [*(a1 + 40) objectForKeyedSubscript:v18];
            v29 = [v28 objectForKeyedSubscript:@"IrisName"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = [*(a1 + 40) objectForKeyedSubscript:v18];
              v91 = [v30 objectForKeyedSubscript:@"IrisName"];
            }

            else
            {
              v91 = 0;
            }
          }

          else
          {
            v91 = 0;
          }

          v31 = [*(a1 + 40) objectForKeyedSubscript:v18];
          v32 = [v31 objectForKeyedSubscript:@"Legacy"];
          if (v32)
          {
            v33 = [*(a1 + 40) objectForKeyedSubscript:v18];
            v34 = [v33 objectForKeyedSubscript:@"Legacy"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [*(a1 + 40) objectForKeyedSubscript:v18];
              v36 = [v35 objectForKeyedSubscript:@"Legacy"];
              v85 = [v36 BOOLValue];
            }

            else
            {
              v85 = 0;
            }
          }

          else
          {
            v85 = 0;
          }

          v37 = [*(a1 + 40) objectForKeyedSubscript:v18];
          v38 = [v37 objectForKeyedSubscript:@"UserDefault"];
          if (v38)
          {
            v39 = [*(a1 + 40) objectForKeyedSubscript:v18];
            v40 = [v39 objectForKeyedSubscript:@"UserDefault"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = [*(a1 + 40) objectForKeyedSubscript:v18];
              v42 = [v41 objectForKeyedSubscript:@"UserDefault"];
              v87 = [v42 BOOLValue] ^ 1;
            }

            else
            {
              v87 = 1;
            }
          }

          else
          {
            v87 = 1;
          }

          v43 = [*(a1 + 40) objectForKeyedSubscript:v18];
          v44 = [v43 objectForKeyedSubscript:@"Current"];
          if (v44)
          {
            v45 = [*(a1 + 40) objectForKeyedSubscript:v18];
            v46 = [v45 objectForKeyedSubscript:@"Current"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v47 = [*(a1 + 40) objectForKeyedSubscript:v18];
              v48 = [v47 objectForKeyedSubscript:@"Current"];
              v86 = [v48 BOOLValue] ^ 1;
            }

            else
            {
              v86 = 1;
            }
          }

          else
          {
            v86 = 1;
          }

          v49 = [*(a1 + 40) objectForKeyedSubscript:v18];
          v50 = [v49 objectForKeyedSubscript:@"UserDefaultFirst"];
          if (v50)
          {
            v51 = [*(a1 + 40) objectForKeyedSubscript:v18];
            v52 = [v51 objectForKeyedSubscript:@"UserDefaultFirst"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = [*(a1 + 40) objectForKeyedSubscript:v18];
              v54 = [v53 objectForKeyedSubscript:@"UserDefaultFirst"];
              v55 = v25;
              v56 = [v54 BOOLValue] ^ 1;

              v57 = v56;
              v25 = v55;
              a1 = v81;
            }

            else
            {
              v57 = 1;
            }
          }

          else
          {
            v57 = 1;
          }

          v58 = [v25 isEqualToString:@"String"];
          if (v58)
          {
            v59 = 0;
            v83 = 0;
            v84 = 0;
            v60 = 0;
            goto LABEL_65;
          }

          if ([v25 isEqualToString:@"File"])
          {
            v83 = 0;
            v84 = 0;
            v60 = 0;
            v59 = 1;
            goto LABEL_65;
          }

          if ([v25 isEqualToString:@"Long"])
          {
            v59 = 0;
            v83 = 0;
            v84 = 0;
            v60 = 1;
            goto LABEL_65;
          }

          if ([v25 isEqualToString:@"Double"])
          {
            v59 = 0;
            v60 = 0;
            v83 = 1;
            v84 = 0;
            goto LABEL_65;
          }

          v61 = [v25 isEqualToString:@"Boolean"];
          v15 = v18;
          v62 = v91;
          if (v61)
          {
            v59 = 0;
            v60 = 0;
            v83 = 0;
            v84 = 1;
LABEL_65:
            v63 = [*(a1 + 40) objectForKeyedSubscript:v18];
            v15 = [v63 objectForKeyedSubscript:@"Value"];

            if (v15)
            {
LABEL_66:
              v64 = v85;
              goto LABEL_67;
            }

            v71 = [*(a1 + 40) objectForKeyedSubscript:v18];
            v15 = [v71 objectForKeyedSubscript:@"Platforms"];

            if (v15)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_66;
              }

              v72 = [v15 objectForKeyedSubscript:@"ios"];

              if (v72)
              {
                v64 = 0;
                v15 = v72;
LABEL_67:
                v65 = v64 == 0;
                v66 = 2;
                if (v65)
                {
                  v66 = 0;
                }

                if (!v86)
                {
                  v66 |= 4uLL;
                }

                if (!v87)
                {
                  v66 |= 8uLL;
                }

                if (v57)
                {
                  v67 = v66;
                }

                else
                {
                  v67 = v66 | 0x10;
                }

                if (v58)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v68 = [SRParameter parameterWithString:v15 name:v18];
                    goto LABEL_106;
                  }
                }

                if (v59)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v69 = [v82 objectForKeyedSubscript:v15];
                    if (v69)
                    {
                      v70 = [SRParameter parameterWithFilePath:v69 name:v18];
                    }

                    else
                    {
                      v70 = 0;
                    }

                    goto LABEL_108;
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (v84)
                  {
                    v68 = +[SRParameter parameterWithBoolean:name:](SRParameter, "parameterWithBoolean:name:", [v15 BOOLValue], v18);
LABEL_106:
                    v70 = v68;
                    goto LABEL_108;
                  }

                  if (v60)
                  {
                    v68 = +[SRParameter parameterWithLong:name:](SRParameter, "parameterWithLong:name:", [v15 longValue], v18);
                    goto LABEL_106;
                  }

                  if (v83)
                  {
                    [v15 doubleValue];
                    v68 = [SRParameter parameterWithDouble:v18 name:?];
                    goto LABEL_106;
                  }
                }

                v70 = 0;
                goto LABEL_108;
              }
            }

            v73 = v58 | v59 | v84 | v60;
            v74 = &unk_1F2427C20;
            if (v84)
            {
              v74 = MEMORY[0x1E695E110];
            }

            v75 = &stru_1F2422260;
            if (!(v58 | v59))
            {
              v75 = v74;
            }

            if (v73)
            {
              v15 = v75;
            }

            else
            {
              v15 = &unk_1F2427C68;
            }

            if ((v73 | v83) == 1)
            {
              goto LABEL_66;
            }

            v15 = 0;
            v70 = 0;
            v67 = 0;
LABEL_108:
            v62 = v91;
            if (v91)
            {
              [v70 setIrisName:v91];
              v62 = v91;
            }

            if (v70)
            {
              [v70 setFlag:v67];
              [*(*(a1 + 48) + 16) setParameterName:v18 namespaceId:*(a1 + 56)];
              v76 = [*(*(a1 + 48) + 40) objectForKeyedSubscript:*(a1 + 56)];

              if (!v76)
              {
                v77 = objc_alloc_init(MEMORY[0x1E695DF90]);
                [*(*(a1 + 48) + 40) setObject:v77 forKeyedSubscript:*(a1 + 56)];
              }

              v78 = [*(*(a1 + 48) + 40) objectForKeyedSubscript:*(a1 + 56)];
              [v78 setObject:v70 forKeyedSubscript:v18];

              v62 = v91;
            }
          }

          goto LABEL_115;
        }

        v25 = v19;
        v15 = v18;
LABEL_115:

LABEL_116:
        v14 = v88;
LABEL_117:
        ++v16;
      }

      while (v14 != v16);
      v14 = [v89 countByEnumeratingWithState:&v93 objects:v101 count:16];
      if (!v14)
      {

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
}

- (id)parametersOfNamespaceWithName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SRDefaultsManager_parametersOfNamespaceWithName___block_invoke;
  block[3] = &unk_1E7A2B2A8;
  block[4] = self;
  v10 = nameCopy;
  v11 = &v12;
  v6 = nameCopy;
  dispatch_sync(defaultsQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__SRDefaultsManager_parametersOfNamespaceWithName___block_invoke(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1[4] + 16) namespaceTypes];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [v7 parameterNames];
        v9 = [v8 containsObject:a1[5]];

        if (v9)
        {
          v10 = [v7 namespaceId];
          v11 = [*(a1[4] + 40) objectForKeyedSubscript:v10];
          if (v11)
          {
            v12 = v11;
            v13 = [*(a1[4] + 40) objectForKeyedSubscript:v10];
            v14 = [v13 objectForKeyedSubscript:a1[5]];

            if (v14)
            {
              v15 = *(*(a1[6] + 8) + 40);
              if (!v15)
              {
                v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
                v17 = *(a1[6] + 8);
                v18 = *(v17 + 40);
                *(v17 + 40) = v16;

                v15 = *(*(a1[6] + 8) + 40);
              }

              v19 = [*(a1[4] + 40) objectForKeyedSubscript:v10];
              v20 = [v19 objectForKeyedSubscript:a1[5]];
              [v15 setObject:v20 forKey:v10];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }
}

- (id)parametersOfNamespaceWithName:(id)name client:(id)client
{
  nameCopy = name;
  clientCopy = client;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__SRDefaultsManager_parametersOfNamespaceWithName_client___block_invoke;
  v13[3] = &unk_1E7A2B708;
  v13[4] = self;
  v14 = clientCopy;
  v15 = nameCopy;
  v16 = &v17;
  v9 = nameCopy;
  v10 = clientCopy;
  dispatch_sync(defaultsQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __58__SRDefaultsManager_parametersOfNamespaceWithName_client___block_invoke(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) namespaceTypesForClient:a1[5]];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [v7 namespaceId];
        v9 = [v7 parameterNames];
        v10 = [v9 containsObject:a1[6]];

        if (v10)
        {
          v11 = [*(a1[4] + 40) objectForKeyedSubscript:v8];
          if (v11)
          {
            v12 = v11;
            v13 = [*(a1[4] + 40) objectForKeyedSubscript:v8];
            v14 = [v13 objectForKeyedSubscript:a1[6]];

            if (v14)
            {
              if (!*(*(a1[7] + 8) + 40))
              {
                v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
                v16 = *(a1[7] + 8);
                v17 = *(v16 + 40);
                *(v16 + 40) = v15;
              }

              v18 = [*(a1[4] + 40) objectForKeyedSubscript:v8];
              v19 = [v18 objectForKeyedSubscript:a1[6]];
              [*(*(a1[7] + 8) + 40) setObject:v19 forKeyedSubscript:v8];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }
}

- (id)assetBundleForLocale:(id)locale client:(id)client force:(BOOL)force
{
  forceCopy = force;
  v83 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  clientCopy = client;
  v43 = localeCopy;
  v42 = [(SRDefaultsManager *)self loadDefaultsForLocale:localeCopy reload:0 force:forceCopy];
  v10 = languageCodeForLocale(localeCopy);
  v11 = localeIdentifierForLocale(localeCopy);
  objc_initWeak(&location, self);
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__0;
  v76 = __Block_byref_object_dispose__0;
  v77 = objc_alloc_init(MEMORY[0x1E695DF90]);
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SRDefaultsManager_assetBundleForLocale_client_force___block_invoke;
  block[3] = &unk_1E7A2B730;
  objc_copyWeak(&v71, &location);
  block[4] = self;
  v40 = clientCopy;
  v67 = v40;
  v46 = v10;
  v68 = v46;
  v41 = v11;
  v69 = v41;
  v70 = &v72;
  dispatch_sync(defaultsQueue, block);

  v49 = [[SRAssetBundle alloc] initWithLocale:localeCopy bundleVersions:v42];
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v73[5];
  v47 = [obj countByEnumeratingWithState:&v62 objects:v82 count:16];
  if (v47)
  {
    v45 = *v63;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v63 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v62 + 1) + 8 * i);
        v15 = [v73[5] objectForKeyedSubscript:{v14, v40, v41}];
        v16 = [v15 objectForKeyedSubscript:@"trial"];

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v58 objects:v81 count:16];
        if (v18)
        {
          v19 = *v59;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v59 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v58 + 1) + 8 * j);
              if (([v13 containsObject:v21] & 1) == 0)
              {
                v22 = [v17 objectForKeyedSubscript:v21];
                [(SRAssetBundle *)v49 loadAssetsWithContentType:v14 contentName:v21 contentPath:v22];
                [v13 addObject:v21];
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v58 objects:v81 count:16];
          }

          while (v18);
        }

        v23 = [v73[5] objectForKeyedSubscript:v14];
        v24 = [v23 objectForKeyedSubscript:v46];

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v54 objects:v80 count:16];
        if (v26)
        {
          v27 = *v55;
          do
          {
            for (k = 0; k != v26; ++k)
            {
              if (*v55 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v54 + 1) + 8 * k);
              if (([v13 containsObject:v29] & 1) == 0)
              {
                v30 = [v25 objectForKeyedSubscript:v29];
                [(SRAssetBundle *)v49 loadAssetsWithContentType:v14 contentName:v29 contentPath:v30];
                [v13 addObject:v29];
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v54 objects:v80 count:16];
          }

          while (v26);
        }

        v31 = [v73[5] objectForKeyedSubscript:v14];
        v32 = [v31 objectForKeyedSubscript:@"root"];

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v33 = v32;
        v34 = [v33 countByEnumeratingWithState:&v50 objects:v79 count:16];
        if (v34)
        {
          v35 = *v51;
          do
          {
            for (m = 0; m != v34; ++m)
            {
              if (*v51 != v35)
              {
                objc_enumerationMutation(v33);
              }

              v37 = *(*(&v50 + 1) + 8 * m);
              if (([v13 containsObject:v37] & 1) == 0)
              {
                v38 = [v33 objectForKeyedSubscript:v37];
                [(SRAssetBundle *)v49 loadAssetsWithContentType:v14 contentName:v37 contentPath:v38];
                [v13 addObject:v37];
              }
            }

            v34 = [v33 countByEnumeratingWithState:&v50 objects:v79 count:16];
          }

          while (v34);
        }

        [v13 removeAllObjects];
      }

      v47 = [obj countByEnumeratingWithState:&v62 objects:v82 count:16];
    }

    while (v47);
  }

  objc_destroyWeak(&v71);
  _Block_object_dispose(&v72, 8);

  objc_destroyWeak(&location);

  return v49;
}

void __55__SRDefaultsManager_assetBundleForLocale_client_force___block_invoke(uint64_t a1)
{
  v1 = a1;
  v103 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [*(v1[4] + 8) contentTypesForClient:v1[5]];
  v65 = [*(v1[4] + 16) namespaceTypesForClient:v1[5]];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v3;
  v66 = [obj countByEnumeratingWithState:&v94 objects:v102 count:16];
  if (v66)
  {
    v64 = *v95;
    v72 = WeakRetained;
    v80 = v1;
    do
    {
      v4 = 0;
      do
      {
        if (*v95 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v67 = v4;
        v5 = *(*(&v94 + 1) + 8 * v4);
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v6 = v1[6];
        v7 = v1[7];
        v100[0] = @"root";
        v100[1] = v6;
        v100[2] = v7;
        v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:3];
        v70 = [v68 countByEnumeratingWithState:&v90 objects:v101 count:16];
        if (v70)
        {
          v69 = *v91;
          do
          {
            v8 = 0;
            do
            {
              if (*v91 != v69)
              {
                objc_enumerationMutation(v68);
              }

              v71 = v8;
              v9 = *(*(&v90 + 1) + 8 * v8);
              v10 = [WeakRetained[4] objectForKeyedSubscript:v9];
              if (v10)
              {
                v11 = v10;
                v12 = [WeakRetained[4] objectForKeyedSubscript:v9];
                v13 = [v12 objectForKeyedSubscript:v5];

                if (v13)
                {
                  v14 = 0;
                  v15 = 64;
                  if (!sHasTestAssets)
                  {
                    v15 = 0;
                  }

                  v74 = v15;
                  do
                  {
                    v16 = v74;
                    if (!v14)
                    {
                      v16 = 0;
                    }

                    v17 = v16 | v14;
                    v18 = deliveryTypeString(v16 | v14);
                    v19 = [WeakRetained[4] objectForKeyedSubscript:v9];
                    v20 = [v19 objectForKeyedSubscript:v5];
                    v75 = v18;
                    v21 = [v20 objectForKeyedSubscript:v18];

                    if (v21)
                    {
                      if (*(v80[4] + 57) == 1 && (v22 = [v5 isEqualToString:@"Embedding"], v17) && v22)
                      {
                        v23 = SRLogCategoryAssets(v22);
                        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1AE58E000, v23, OS_LOG_TYPE_DEFAULT, "Ignoring OTA embeddings assets", buf, 2u);
                        }
                      }

                      else
                      {
                        v73 = v14;
                        v24 = [WeakRetained[4] objectForKeyedSubscript:v9];
                        v25 = [v24 objectForKeyedSubscript:v5];
                        v23 = [v25 objectForKeyedSubscript:v18];

                        v87 = 0u;
                        v88 = 0u;
                        v85 = 0u;
                        v86 = 0u;
                        v76 = [v23 contentNames];
                        v26 = [v76 countByEnumeratingWithState:&v85 objects:v99 count:16];
                        if (v26)
                        {
                          v27 = v26;
                          v78 = *v86;
                          do
                          {
                            for (i = 0; i != v27; ++i)
                            {
                              if (*v86 != v78)
                              {
                                objc_enumerationMutation(v76);
                              }

                              v29 = *(*(&v85 + 1) + 8 * i);
                              v30 = v23;
                              v31 = [v23 pathWithName:v29];
                              v32 = [*(*(v80[8] + 8) + 40) objectForKeyedSubscript:v5];

                              if (!v32)
                              {
                                v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                [*(*(v80[8] + 8) + 40) setObject:v33 forKeyedSubscript:v5];
                              }

                              v34 = [*(*(v80[8] + 8) + 40) objectForKeyedSubscript:v5];
                              v35 = [v34 objectForKeyedSubscript:v9];

                              if (!v35)
                              {
                                v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                v37 = [*(*(v80[8] + 8) + 40) objectForKeyedSubscript:v5];
                                [v37 setObject:v36 forKeyedSubscript:v9];
                              }

                              v38 = [*(*(v80[8] + 8) + 40) objectForKeyedSubscript:v5];
                              v39 = [v38 objectForKeyedSubscript:v9];
                              [v39 setObject:v31 forKey:v29];

                              v23 = v30;
                            }

                            v27 = [v76 countByEnumeratingWithState:&v85 objects:v99 count:16];
                          }

                          while (v27);
                        }

                        WeakRetained = v72;
                        v14 = v73;
                      }
                    }

                    ++v14;
                  }

                  while (v14 != 6);
                }
              }

              v8 = v71 + 1;
            }

            while (v71 + 1 != v70);
            v70 = [v68 countByEnumeratingWithState:&v90 objects:v101 count:16];
          }

          while (v70);
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v40 = v65;
        v41 = [v40 countByEnumeratingWithState:&v81 objects:v98 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v82;
          v77 = *v82;
          v79 = v40;
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v82 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v81 + 1) + 8 * j);
              v46 = [v45 parameterNames];
              v47 = [v46 containsObject:v5];

              if (v47)
              {
                v48 = [v45 namespaceId];
                v49 = [WeakRetained[5] objectForKeyedSubscript:v48];
                if (v49)
                {
                  v50 = v49;
                  v51 = [WeakRetained[5] objectForKeyedSubscript:v48];
                  v52 = [v51 objectForKeyedSubscript:v5];

                  if (v52)
                  {
                    v53 = [*(v80[4] + 40) objectForKeyedSubscript:v48];
                    v54 = [v53 objectForKeyedSubscript:v5];

                    v55 = [*(*(v80[8] + 8) + 40) objectForKeyedSubscript:v5];
                    v56 = [v55 objectForKeyedSubscript:@"trial"];

                    if (!v56)
                    {
                      v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
                      v58 = [*(*(v80[8] + 8) + 40) objectForKeyedSubscript:v5];
                      [v58 setObject:v57 forKeyedSubscript:@"trial"];
                    }

                    v59 = [*(*(v80[8] + 8) + 40) objectForKeyedSubscript:v5];
                    v60 = [v59 objectForKeyedSubscript:@"trial"];
                    v61 = [v54 getFilePathValue];
                    v62 = [v54 getFilePathNameValue];
                    [v60 setValue:v61 forKey:v62];

                    WeakRetained = v72;
                    v43 = v77;
                    v40 = v79;
                  }
                }
              }
            }

            v42 = [v40 countByEnumeratingWithState:&v81 objects:v98 count:16];
          }

          while (v42);
        }

        v4 = v67 + 1;
        v1 = v80;
      }

      while (v67 + 1 != v66);
      v66 = [obj countByEnumeratingWithState:&v94 objects:v102 count:16];
    }

    while (v66);
  }
}

- (void)registerDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegatesQueue = [(SRDefaultsManager *)self delegatesQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__SRDefaultsManager_registerDelegate___block_invoke;
  v7[3] = &unk_1E7A2AFF0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(delegatesQueue, v7);
}

- (void)unregisterDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  delegatesQueue = [(SRDefaultsManager *)self delegatesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SRDefaultsManager_unregisterDelegate___block_invoke;
  block[3] = &unk_1E7A2B2A8;
  block[4] = self;
  v6 = delegateCopy;
  v8 = v6;
  v9 = &v10;
  dispatch_sync(delegatesQueue, block);

  [(SRDefaultsManager *)self updateFetchedLanguages:v11[5]];
  _Block_object_dispose(&v10, 8);
}

void __40__SRDefaultsManager_unregisterDelegate___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1[4] + 144) removeObject:a1[5]];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1[4] + 144);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v11 + 1) + 8 * v6) locale];
        v8 = v7;
        if (v7)
        {
          v9 = *(*(a1[6] + 8) + 40);
          v10 = languageCodeForLocale(v7);
          [v9 addObject:v10];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)notifyObserversWithLanguage:(id)language bundleVersions:(id)versions reloadFromCache:(BOOL)cache force:(BOOL)force
{
  forceCopy = force;
  v40 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  versionsCopy = versions;
  if (versionsCopy)
  {
    if (forceCopy)
    {
      location = 0;
      p_location = &location;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__0;
      v37 = __Block_byref_object_dispose__0;
      v38 = 0;
      delegatesQueue = [(SRDefaultsManager *)self delegatesQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke;
      block[3] = &unk_1E7A2B258;
      block[4] = self;
      block[5] = &location;
      dispatch_sync(delegatesQueue, block);

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v12 = p_location[5];
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v39 count:16];
      if (v13)
      {
        v14 = *v29;
        do
        {
          v15 = 0;
          do
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v28 + 1) + 8 * v15);
            if (([languageCopy isEqualToString:@"root"] & 1) != 0 || (objc_msgSend(v16, "locale"), v17 = objc_claimAutoreleasedReturnValue(), languageCodeForLocale(v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(languageCopy, "isEqualToString:", v18), v18, v17, v19))
            {
              [v16 didUpdateDefaultsWithBundleVersions:versionsCopy trial:0];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v28 objects:v39 count:16];
        }

        while (v13);
      }

      _Block_object_dispose(&location, 8);
    }

    else
    {
      objc_initWeak(&location, self);
      notifyQueueNonBlocking = [(SRDefaultsManager *)self notifyQueueNonBlocking];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke_2;
      v23[3] = &unk_1E7A2B758;
      objc_copyWeak(&v26, &location);
      cacheCopy = cache;
      v24 = languageCopy;
      v25 = versionsCopy;
      v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v23);
      dispatch_async(notifyQueueNonBlocking, v21);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 144) copy];

  return MEMORY[0x1EEE66BB8]();
}

void __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    v4 = WeakRetained;
    v5 = [WeakRetained currentAssetTypes];
    v6 = [v4 loadOTAAssetsForLanguage:*(a1 + 32) updateCache:0 assetTypes:v5 force:0];

    v3 = v4;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  v7 = [v3 delegatesQueue];
  v8 = v3;
  v9 = v7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke_3;
  block[3] = &unk_1E7A2B258;
  block[4] = v8;
  block[5] = &v28;
  v20 = v8;
  dispatch_sync(v7, block);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v29[5];
  v10 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        if (([*(a1 + 32) isEqualToString:@"root"] & 1) != 0 || (v14 = *(a1 + 32), objc_msgSend(v13, "locale"), v15 = objc_claimAutoreleasedReturnValue(), languageCodeForLocale(v15), v16 = objc_claimAutoreleasedReturnValue(), LODWORD(v14) = objc_msgSend(v14, "isEqualToString:", v16), v16, v15, v14))
        {
          v17 = [v20 notifyQueue];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke_4;
          v21[3] = &unk_1E7A2AFF0;
          v21[4] = v13;
          v22 = *(a1 + 40);
          v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v21);
          dispatch_async(v17, v18);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v28, 8);
}

void __86__SRDefaultsManager_notifyObserversWithLanguage_bundleVersions_reloadFromCache_force___block_invoke_3(uint64_t a1)
{
  v5 = [*(a1 + 32) delegates];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)didUpdateAssetsWithType:(id)type
{
  v27 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = SRLogCategoryAssets(typeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    uTF8String = [typeCopy UTF8String];
    _os_log_impl(&dword_1AE58E000, v5, OS_LOG_TYPE_DEFAULT, "Got updated assets from DDS for %s", buf, 0xCu);
  }

  currentAssetTypes = [(SRDefaultsManager *)self currentAssetTypes];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [currentAssetTypes objectForKeyedSubscript:typeCopy];
  [v7 setObject:v8 forKeyedSubscript:typeCopy];

  fetchedLanguages = [(SRDefaultsManager *)self fetchedLanguages];
  allObjects = [fetchedLanguages allObjects];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = allObjects;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(SRDefaultsManager *)self loadOTAAssetsForLanguage:*(*(&v20 + 1) + 8 * v15++) updateCache:1 assetTypes:v7 force:0, v20];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  if (SRIsRunningInServer(v17, v18))
  {
    v19 = +[SRAssetBundleCache sharedInstance];
    [v19 flushCacheToFile];
  }
}

- (void)updateParameter:(id)parameter inNamespace:(id)namespace withValue:(id)value
{
  v32 = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  namespaceCopy = namespace;
  valueCopy = value;
  parameters = self->_parameters;
  if (parameters)
  {
    v12 = [(NSMutableDictionary *)parameters objectForKeyedSubscript:namespaceCopy];

    if (v12)
    {
      v14 = [valueCopy copy];
      v15 = [(NSMutableDictionary *)self->_parameters objectForKeyedSubscript:namespaceCopy];
      v16 = [v15 objectForKeyedSubscript:parameterCopy];

      v17 = [(NSMutableDictionary *)self->_parameters objectForKeyedSubscript:namespaceCopy];
      [v17 setObject:v14 forKeyedSubscript:parameterCopy];

      if (v16)
      {
        v19 = SRLogCategoryTrial(v18);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
LABEL_13:

          goto LABEL_14;
        }

        v20 = +[SRParameter typeStringFromParameterType:](SRParameter, "typeStringFromParameterType:", [valueCopy type]);
        value = [v14 value];
        v24 = 138413058;
        v25 = parameterCopy;
        v26 = 2112;
        v27 = v20;
        v28 = 2112;
        v29 = namespaceCopy;
        v30 = 2112;
        v31 = value;
        v22 = "Updating parameter %@ of type %@ in namespace %@ to value %@";
      }

      else
      {
        trialConfig = self->_trialConfig;
        if (trialConfig)
        {
          trialConfig = [(SRTrialConfiguration *)trialConfig setParameterName:parameterCopy namespaceId:namespaceCopy];
        }

        v19 = SRLogCategoryTrial(trialConfig);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_13;
        }

        v20 = +[SRParameter typeStringFromParameterType:](SRParameter, "typeStringFromParameterType:", [valueCopy type]);
        value = [v14 value];
        v24 = 138413058;
        v25 = parameterCopy;
        v26 = 2112;
        v27 = v20;
        v28 = 2112;
        v29 = value;
        v30 = 2112;
        v31 = namespaceCopy;
        v22 = "Adding parameter %@ of type %@ and value %@ to namespace %@";
      }

      _os_log_debug_impl(&dword_1AE58E000, v19, OS_LOG_TYPE_DEBUG, v22, &v24, 0x2Au);

      goto LABEL_13;
    }

    v14 = SRLogCategoryTrial(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SRDefaultsManager updateParameter:inNamespace:withValue:];
    }
  }

  else
  {
    v14 = SRLogCategoryTrial(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SRDefaultsManager updateParameter:inNamespace:withValue:];
    }
  }

LABEL_14:
}

- (void)didUpdateTrialNamespace:(id)namespace
{
  v46 = *MEMORY[0x1E69E9840];
  namespaceCopy = namespace;
  trialConfig = self->_trialConfig;
  if (trialConfig)
  {
    v26 = namespaceCopy;
    v6 = [(SRTrialConfiguration *)trialConfig clientsForNamespace:namespaceCopy];
    v7 = [MEMORY[0x1E695DFA8] set];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v45 count:16];
    if (v9)
    {
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          if ([SSTrialManager didAllNamespacesLoadForClient:v12])
          {
            v13 = SRLogCategoryTrial([v7 addObject:v12]);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              *&buf[4] = v12;
              *&buf[12] = 2112;
              *&buf[14] = v26;
              _os_log_debug_impl(&dword_1AE58E000, v13, OS_LOG_TYPE_DEBUG, "Notifying resources for client %@ of update for Trial namespace %@", buf, 0x16u);
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v32 objects:v45 count:16];
      }

      while (v9);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = __Block_byref_object_copy__0;
    v43 = __Block_byref_object_dispose__0;
    v44 = 0;
    delegatesQueue = [(SRDefaultsManager *)self delegatesQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__SRDefaultsManager_didUpdateTrialNamespace___block_invoke;
    block[3] = &unk_1E7A2B258;
    block[4] = self;
    block[5] = buf;
    dispatch_sync(delegatesQueue, block);

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = *(*&buf[8] + 40);
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v40 count:16];
    v17 = v16;
    if (v16)
    {
      v18 = *v28;
      do
      {
        v19 = 0;
        do
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v27 + 1) + 8 * v19);
          v21 = SRLogCategoryTrial(v16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            client = [v20 client];
            *v36 = 138412546;
            v37 = v20;
            v38 = 2112;
            v39 = client;
            _os_log_debug_impl(&dword_1AE58E000, v21, OS_LOG_TYPE_DEBUG, "Delegate %@ with client %@", v36, 0x16u);
          }

          client2 = [v20 client];
          v23 = [v7 containsObject:client2];

          if (v23)
          {
            v24 = SRLogCategoryTrial(v16);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *v36 = 138412546;
              v37 = v20;
              v38 = 2112;
              v39 = v26;
              _os_log_debug_impl(&dword_1AE58E000, v24, OS_LOG_TYPE_DEBUG, "Notifying delegate %@ of update for Trial namespace %@", v36, 0x16u);
            }

            v16 = [v20 didUpdateDefaultsWithBundleVersions:0 trial:1];
          }

          ++v19;
        }

        while (v17 != v19);
        v16 = [v15 countByEnumeratingWithState:&v27 objects:v40 count:16];
        v17 = v16;
      }

      while (v16);
    }

    _Block_object_dispose(buf, 8);
    namespaceCopy = v26;
  }
}

uint64_t __45__SRDefaultsManager_didUpdateTrialNamespace___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 144) copy];

  return MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  mEMORY[0x1E6999960] = [MEMORY[0x1E6999960] sharedInstance];
  [mEMORY[0x1E6999960] unregisterDelegate:self];

  v4.receiver = self;
  v4.super_class = SRDefaultsManager;
  [(SRDefaultsManager *)&v4 dealloc];
}

- (id)assetConfigDump
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  currentAssetTypes = [(SRDefaultsManager *)self currentAssetTypes];
  allValues = [currentAssetTypes allValues];

  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__SRDefaultsManager_assetConfigDump__block_invoke;
  v8[3] = &unk_1E7A2B258;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(defaultsQueue, v8);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __36__SRDefaultsManager_assetConfigDump__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) debugDescription];

  return MEMORY[0x1EEE66BB8]();
}

- (id)assertionsDump
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  currentAssetTypes = [(SRDefaultsManager *)self currentAssetTypes];
  allValues = [currentAssetTypes allValues];

  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__SRDefaultsManager_assertionsDump__block_invoke;
  v9[3] = &unk_1E7A2B280;
  v10 = allValues;
  v11 = &v12;
  v6 = allValues;
  dispatch_sync(defaultsQueue, v9);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __35__SRDefaultsManager_assertionsDump__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v15 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E6999960] sharedInstance];
        v9 = [v7 assetType];
        v10 = [v8 assertionIDsForClientID:@"SpotlightResources" assetType:v9];
        v11 = [v10 allObjects];
        [v2 addObjectsFromArray:v11];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v12 = [v2 debugDescription];
  v13 = *(*(v15 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (id)trialConfigDump
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  defaultsQueue = [(SRDefaultsManager *)self defaultsQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__SRDefaultsManager_trialConfigDump__block_invoke;
  v6[3] = &unk_1E7A2B280;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(defaultsQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void *__36__SRDefaultsManager_trialConfigDump__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = [result debugDescription];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)allLoadedAssets
{
  v70 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  selfCopy = self;
  assets = self->_assets;
  if (assets)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = assets;
    v34 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v34)
    {
      v32 = *v63;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v63 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v62 + 1) + 8 * i);
          v6 = [(NSMutableDictionary *)selfCopy->_assets objectForKeyedSubscript:v5];
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          v48 = v5;
          [dictionary setObject:dictionary2 forKeyedSubscript:v5];

          if (v6)
          {
            v35 = v6;
            v36 = i;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v8 = v6;
            v39 = [v8 countByEnumeratingWithState:&v58 objects:v68 count:16];
            if (v39)
            {
              v37 = v8;
              v38 = *v59;
              do
              {
                for (j = 0; j != v39; ++j)
                {
                  if (*v59 != v38)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v10 = *(*(&v58 + 1) + 8 * j);
                  v11 = [v8 objectForKeyedSubscript:v10];
                  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
                  v13 = [dictionary objectForKeyedSubscript:v48];
                  v47 = v10;
                  [v13 setObject:dictionary3 forKeyedSubscript:v10];

                  if (v11)
                  {
                    v40 = v11;
                    v41 = j;
                    v56 = 0u;
                    v57 = 0u;
                    v54 = 0u;
                    v55 = 0u;
                    v44 = v11;
                    v43 = [v44 countByEnumeratingWithState:&v54 objects:v67 count:16];
                    if (v43)
                    {
                      v42 = *v55;
                      do
                      {
                        v14 = 0;
                        do
                        {
                          if (*v55 != v42)
                          {
                            objc_enumerationMutation(v44);
                          }

                          v45 = v14;
                          v15 = *(*(&v54 + 1) + 8 * v14);
                          v16 = [v44 objectForKeyedSubscript:v15];
                          dictionary4 = [MEMORY[0x1E695DF90] dictionary];
                          v18 = [dictionary objectForKeyedSubscript:v48];
                          v19 = [v18 objectForKeyedSubscript:v47];
                          [v19 setObject:dictionary4 forKeyedSubscript:v15];

                          contentNames = [v16 contentNames];
                          v50 = 0u;
                          v51 = 0u;
                          v52 = 0u;
                          v53 = 0u;
                          v46 = contentNames;
                          v21 = [contentNames countByEnumeratingWithState:&v50 objects:v66 count:16];
                          if (v21)
                          {
                            v22 = v21;
                            v23 = *v51;
                            do
                            {
                              for (k = 0; k != v22; ++k)
                              {
                                if (*v51 != v23)
                                {
                                  objc_enumerationMutation(v46);
                                }

                                v25 = *(*(&v50 + 1) + 8 * k);
                                v26 = [v16 pathWithName:v25];
                                v27 = [dictionary objectForKeyedSubscript:v48];
                                v28 = [v27 objectForKeyedSubscript:v47];
                                v29 = [v28 objectForKeyedSubscript:v15];
                                [v29 setObject:v26 forKeyedSubscript:v25];
                              }

                              v22 = [v46 countByEnumeratingWithState:&v50 objects:v66 count:16];
                            }

                            while (v22);
                          }

                          v14 = v45 + 1;
                        }

                        while (v45 + 1 != v43);
                        v43 = [v44 countByEnumeratingWithState:&v54 objects:v67 count:16];
                      }

                      while (v43);
                    }

                    v8 = v37;
                    v11 = v40;
                    j = v41;
                  }
                }

                v39 = [v8 countByEnumeratingWithState:&v58 objects:v68 count:16];
              }

              while (v39);
            }

            v6 = v35;
            i = v36;
          }
        }

        v34 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v34);
    }
  }

  return dictionary;
}

- (void)refreshCacheForLanguages:(id)languages force:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  v39 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  completionCopy = completion;
  v11 = SRIsRunningInServer(completionCopy, v10);
  if (v11)
  {
    v12 = SRLogCategoryAssets(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      refreshCacheWithQuery_cold_2();
    }
  }

  else
  {
    v13 = SRIgnoreOTAAssets(v11);
    if ((v13 & 1) != 0 || sHasTestAssets == 1)
    {
      v12 = SRLogCategoryAssets(v13);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEFAULT, "Skipping OTA asset loading.", buf, 2u);
      }
    }

    else
    {
      currentAssetTypes = [(SRDefaultsManager *)self currentAssetTypes];
      v15 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:languagesCopy];
      inited = objc_initWeak(&location, self);
      v17 = sIndex++;
      v18 = SRLogCategoryAssets(inited);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        allKeys = [currentAssetTypes allKeys];
        *buf = 134218754;
        v32 = v17;
        v33 = 2112;
        v34 = languagesCopy;
        v35 = 1024;
        v36 = forceCopy;
        v37 = 2112;
        v38 = allKeys;
        _os_log_debug_impl(&dword_1AE58E000, v18, OS_LOG_TYPE_DEBUG, "refreshCache[%llu] (%@, %d, %@)", buf, 0x26u);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke;
      block[3] = &unk_1E7A2B848;
      objc_copyWeak(&v28, &location);
      v24 = languagesCopy;
      v19 = v15;
      v25 = v19;
      v12 = currentAssetTypes;
      v26 = v12;
      v29 = forceCopy;
      v27 = completionCopy;
      v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
      ddsQueue = [(SRDefaultsManager *)self ddsQueue];
      if (forceCopy)
      {
        dispatch_sync(ddsQueue, v20);
      }

      else
      {
        dispatch_async(ddsQueue, v20);
      }

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = *v28;
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v27 + 1) + 8 * v6);
        v8 = [WeakRetained requestedOTALanguages];
        v9 = [v8 containsObject:v7];

        if (v9)
        {
          [*(a1 + 40) removeObject:v7];
        }

        else
        {
          v10 = [WeakRetained requestedOTALanguages];
          [v10 addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v4);
  }

  if ([*(a1 + 40) count])
  {
    v11 = [*(a1 + 40) allObjects];
    v12 = [*(a1 + 48) allKeys];
    v13 = assetBundleCacheQuery(v11, v12, sHasTestAssets);

    objc_initWeak(&location, WeakRetained);
    v14 = *(a1 + 72);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_2;
    v21[3] = &unk_1E7A2B820;
    objc_copyWeak(&v24, &location);
    v25 = *(a1 + 72);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 32);
    v18 = *(a1 + 56);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    *&v20 = v15;
    *(&v20 + 1) = v16;
    v22 = v20;
    v23 = v19;
    refreshCacheWithQuery(v13, v14 & 1, v21);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  objc_initWeak(&location, WeakRetained);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_3;
  v16 = &unk_1E7A2B7F8;
  v8 = v6;
  v17 = v8;
  objc_copyWeak(&v24, &location);
  v9 = v5;
  v18 = v9;
  v25 = *(a1 + 72);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = WeakRetained;
  v23 = *(a1 + 56);
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &v13);
  v11 = v10;
  if (*(a1 + 72) == 1)
  {
    (*(v10 + 2))(v10);
  }

  else
  {
    v12 = [WeakRetained ddsQueue];
    dispatch_async(v12, v11);
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

uint64_t __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_3(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = SRLogCategoryAssets(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_3_cold_1();
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    WeakRetained = *(a1 + 48);
    v4 = [WeakRetained countByEnumeratingWithState:&v29 objects:v59 count:16];
    if (v4)
    {
      v5 = *v30;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v30 != v5)
          {
            objc_enumerationMutation(WeakRetained);
          }

          v7 = *(*(&v29 + 1) + 8 * i);
          v8 = [*(a1 + 72) requestedOTALanguages];
          [v8 removeObject:v7];
        }

        v4 = [WeakRetained countByEnumeratingWithState:&v29 objects:v59 count:16];
      }

      while (v4);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x3032000000;
    v57[3] = __Block_byref_object_copy__0;
    v57[4] = __Block_byref_object_dispose__0;
    v58 = 0;
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = +[SRAssetBundleCache sharedInstance];
    [v9 updateCacheWithResults:*(a1 + 40) loading:*(a1 + 96)];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = *(a1 + 48);
    v10 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v10)
    {
      v11 = *v54;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v54 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v53 + 1) + 8 * j);
          v14 = *(a1 + 40);
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_4;
          v47[3] = &unk_1E7A2B780;
          v51 = v57;
          v52 = *(a1 + 96);
          v47[4] = v13;
          v47[5] = WeakRetained;
          v48 = *(a1 + 56);
          v49 = v28;
          v50 = v27;
          [v14 enumerateEntriesForLanguage:v13 block:v47];
          v15 = [WeakRetained cachedOTALanguages];
          [v15 addObject:v13];

          v16 = [WeakRetained requestedOTALanguages];
          [v16 removeObject:v13];
        }

        v10 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v10);
    }

    objc_initWeak(&location, WeakRetained);
    if (*(a1 + 96) == 1)
    {
      v17 = [WeakRetained defaultsQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_570;
      block[3] = &unk_1E7A2B7A8;
      objc_copyWeak(&v45, &location);
      v44 = v28;
      v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
      dispatch_sync(v17, v18);

      v19 = [WeakRetained notifyQueue];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_2_571;
      v38[3] = &unk_1E7A2B7D0;
      v39 = *(a1 + 64);
      v40 = v27;
      v20 = v27;
      objc_copyWeak(&v42, &location);
      v41 = v57;
      v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v38);
      dispatch_sync(v19, v21);

      objc_destroyWeak(&v42);
      objc_destroyWeak(&v45);
    }

    else
    {
      v22 = [WeakRetained notifyQueue];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_572;
      v33[3] = &unk_1E7A2B7D0;
      v34 = *(a1 + 64);
      v35 = v27;
      v23 = v27;
      objc_copyWeak(&v37, &location);
      v36 = v57;
      v24 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v33);
      dispatch_async(v22, v24);

      objc_destroyWeak(&v37);
    }

    objc_destroyWeak(&location);

    _Block_object_dispose(v57, 8);
  }

  return (*(*(a1 + 80) + 16))();
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 loaded] & 1) == 0)
  {
    v4 = [v3 bundleVersion];

    if (v4)
    {
      v5 = *(*(*(a1 + 72) + 8) + 40);
      if (!v5)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v7 = *(*(a1 + 72) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        v5 = *(*(*(a1 + 72) + 8) + 40);
      }

      v9 = [v5 objectForKeyedSubscript:*(a1 + 32)];

      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [*(*(*(a1 + 72) + 8) + 40) setObject:v10 forKeyedSubscript:*(a1 + 32)];
      }

      v11 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
      v12 = [v3 assetTypeString];
      v13 = [v11 objectForKeyedSubscript:v12];

      if (!v13)
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v15 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
        v16 = [v3 assetTypeString];
        [v15 setObject:v14 forKeyedSubscript:v16];
      }

      v17 = [v3 bundleVersion];
      v18 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:*(a1 + 32)];
      v19 = [v3 assetTypeString];
      v20 = [v18 objectForKeyedSubscript:v19];
      v21 = [v3 deliveryTypeString];
      [v20 setObject:v17 forKeyedSubscript:v21];

      if (*(a1 + 80) == 1)
      {
        v22 = *(a1 + 40);
        v23 = [v3 path];
        v24 = [v3 deliveryTypeString];
        v25 = *(a1 + 48);
        v26 = [v3 assetTypeString];
        v27 = [v25 objectForKeyedSubscript:v26];
        v28 = [v22 assetsFromResourcePath:v23 deliveryType:v24 assetType:v27 language:*(a1 + 32) force:1];

        if (v28)
        {
          [*(a1 + 56) addObjectsFromArray:v28];
        }

        else
        {
          v30 = SRLogCategoryAssets(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_499_cold_1(v3);
          }
        }
      }

      [*(a1 + 64) addObject:*(a1 + 32)];
    }
  }
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_570(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _loadAssets:*(a1 + 32) shouldUpdate:1];
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_2_571(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_2_571_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:{v9, v11}];
        [WeakRetained notifyObserversWithLanguage:v9 bundleVersions:v10 reloadFromCache:0 force:1];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_572(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = SRLogCategoryAssets(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_572_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:{v9, v11}];
        [WeakRetained notifyObserversWithLanguage:v9 bundleVersions:v10 reloadFromCache:1 force:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void __51__SRDefaultsManager_loadDefaultsFromDefaultAssets___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)assetsFromResourcePath:deliveryType:assetType:language:force:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __82__SRDefaultsManager_assetsFromResourcePath_deliveryType_assetType_language_force___block_invoke_438_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_2_481_cold_1()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __68__SRDefaultsManager_requestAssetsForLanguages_removeExisting_force___block_invoke_482_cold_1()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)loadSystemAssetsForLanguage:(void *)a1 assetTypes:(void *)a2 .cold.1(void *a1, void *a2)
{
  [a1 UTF8String];
  [a2 UTF8String];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_497_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_499_cold_1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_501_cold_2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_2_503_cold_1()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "loadOTA[%llu] client 3.3", v2, v3, v4, v5);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_1()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "loadOTA[%llu] server 1", v2, v3, v4, v5);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_2()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "loadOTA[%llu] server 3", v2, v3, v4, v5);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_3()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "loadOTA[%llu] server 2", v2, v3, v4, v5);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_504_cold_4()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "loadOTA[%llu] server 2.1", v2, v3, v4, v5);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_505_cold_1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_506_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_509_cold_1()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "loadOTA[%llu] server 3.3", v2, v3, v4, v5);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_511_cold_1()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "loadOTA[%llu] client 2.2", v2, v3, v4, v5);
}

void __75__SRDefaultsManager_loadOTAAssetsForLanguage_updateCache_assetTypes_force___block_invoke_511_cold_2()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "loadOTA[%llu] server 2.2", v2, v3, v4, v5);
}

- (void)loadFactorsAtPath:namespaceId:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(&dword_1AE58E000, v0, OS_LOG_TYPE_DEBUG, "Loading factors from path %@ for namespace %@", v1, 0x16u);
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_2_571_cold_1()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __63__SRDefaultsManager_refreshCacheForLanguages_force_completion___block_invoke_572_cold_1()
{
  OUTLINED_FUNCTION_11(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end