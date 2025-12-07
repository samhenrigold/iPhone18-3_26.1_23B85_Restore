@interface TIKeyboardInputManagerLoaderSyncHelper
+ (void)deleteCloudKitBackup;
- (BOOL)shouldCacheObject:(id)object;
- (TIKeyboardInputManagerLoaderSyncHelper)init;
- (void)dealloc;
- (void)languagePulled:(id)pulled;
- (void)noteObject:(id)object forLanguage:(id)language;
- (void)willLoadLanguage:(id)language;
@end

@implementation TIKeyboardInputManagerLoaderSyncHelper

- (BOOL)shouldCacheObject:(id)object
{
  v3 = objc_getAssociatedObject(object, &kTidyObject);
  valid = [v3 valid];

  return valid ^ 1;
}

- (void)noteObject:(id)object forLanguage:(id)language
{
  languageCopy = language;
  languages = self->_languages;
  objectCopy = object;
  v8 = [(NSMutableDictionary *)languages objectForKey:languageCopy];
  if (v8)
  {
    weakObjectsPointerArray = v8;
    [v8 compact];
  }

  else
  {
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    [(NSMutableDictionary *)self->_languages setObject:weakObjectsPointerArray forKey:languageCopy];
  }

  [weakObjectsPointerArray addPointer:objectCopy];
}

- (void)willLoadLanguage:(id)language
{
  v3 = [(NSMapTable *)self->_pendingSaves objectForKey:language];
  [v3 execute];

  sharedInstance = [get_KSUserWordsSynchroniserClass() sharedInstance];
  [sharedInstance keyboardUsed];
}

- (void)languagePulled:(id)pulled
{
  v35 = *MEMORY[0x277D85DE8];
  pulledCopy = pulled;
  languageUpdated = [(TIKeyboardInputManagerLoaderSyncHelper *)self languageUpdated];

  if (languageUpdated)
  {
    userInfo = [pulledCopy userInfo];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v7 = get_KSUserWordsWereDownloadedLanguageKeySymbolLoc_ptr;
    v30 = get_KSUserWordsWereDownloadedLanguageKeySymbolLoc_ptr;
    if (!get_KSUserWordsWereDownloadedLanguageKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v32 = __get_KSUserWordsWereDownloadedLanguageKeySymbolLoc_block_invoke;
      v33 = &unk_278733760;
      v34 = &v27;
      v8 = KeyboardServicesLibrary();
      v9 = dlsym(v8, "_KSUserWordsWereDownloadedLanguageKey");
      *(v34[1] + 24) = v9;
      get_KSUserWordsWereDownloadedLanguageKeySymbolLoc_ptr = *(v34[1] + 24);
      v7 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (v7)
    {
      v10 = *v7;
      v11 = [userInfo objectForKey:v10];

      userInfo2 = [pulledCopy userInfo];
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v13 = get_KSUserWordsWereDownloadedFilesKeySymbolLoc_ptr;
      v30 = get_KSUserWordsWereDownloadedFilesKeySymbolLoc_ptr;
      if (!get_KSUserWordsWereDownloadedFilesKeySymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v32 = __get_KSUserWordsWereDownloadedFilesKeySymbolLoc_block_invoke;
        v33 = &unk_278733760;
        v34 = &v27;
        v14 = KeyboardServicesLibrary();
        v15 = dlsym(v14, "_KSUserWordsWereDownloadedFilesKey");
        *(v34[1] + 24) = v15;
        get_KSUserWordsWereDownloadedFilesKeySymbolLoc_ptr = *(v34[1] + 24);
        v13 = v28[3];
      }

      _Block_object_dispose(&v27, 8);
      if (v13)
      {
        v16 = *v13;
        v17 = [userInfo2 objectForKey:v16];

        v24 = v11;
        v18 = v17;
        v19 = v11;
        TIDispatchAsync();

        goto LABEL_13;
      }
    }

    v23 = dlerror();
    abort_report_np("%s", v23);
    goto LABEL_15;
  }

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
LABEL_15:
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v20 = TIOSLogFacility();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Got notification before block configured! Delaying...", "-[TIKeyboardInputManagerLoaderSyncHelper languagePulled:]"];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v22;
    _os_log_debug_impl(&dword_22CA55000, v20, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
  }

  v21 = dispatch_time(0, 10000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__TIKeyboardInputManagerLoaderSyncHelper_languagePulled___block_invoke;
  block[3] = &unk_278733738;
  block[4] = self;
  v26 = pulledCopy;
  dispatch_after(v21, MEMORY[0x277D85CD0], block);

LABEL_13:
}

void __57__TIKeyboardInputManagerLoaderSyncHelper_languagePulled___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  [v2 invalidate];

  v3 = [[_TIKeyboardSyncFileInstaller alloc] initWithEntry:*(a1 + 48)];
  [*(*(a1 + 32) + 16) setObject:v3 forKey:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v5 = v4;
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (v10)
          {
            objc_setAssociatedObject(v10, &kTidyObject, v3, 0x301);
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = [*(a1 + 32) languageUpdated];
  v11[2](v11, *(a1 + 40));
}

void __59__TIKeyboardInputManagerLoaderSyncHelper_languagesChanged___block_invoke()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [TIAssetManager sharedAssetManager:0];
  v2 = [v1 enabledInputModes];

  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = TIInputModeGetLanguageWithRegion();
        [v0 addObject:v7];
        [v7 UTF8String];
        if (_os_feature_enabled_impl())
        {
          [v0 addObject:@"mul"];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  get_KSUserWordsSynchroniserClass();
  if (objc_opt_respondsToSelector())
  {
    v8 = [get_KSUserWordsSynchroniserClass() sharedAcrossLanguagesNegativeLearningValue];
    [v0 addObject:v8];
  }

  get_KSUserWordsSynchroniserClass();
  if (objc_opt_respondsToSelector())
  {
    v9 = [get_KSUserWordsSynchroniserClass() sharedAcrossLanguagesVulgarWordUsageValue];
    [v0 addObject:v9];
  }

  v10 = [get_KSUserWordsSynchroniserClass() sharedInstance];
  v11 = [v0 allObjects];
  [v10 setRequiredLanguages:v11];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLoaderSyncHelper;
  [(TIKeyboardInputManagerLoaderSyncHelper *)&v4 dealloc];
}

- (TIKeyboardInputManagerLoaderSyncHelper)init
{
  v15.receiver = self;
  v15.super_class = TIKeyboardInputManagerLoaderSyncHelper;
  v2 = [(TIKeyboardInputManagerLoaderSyncHelper *)&v15 init];
  if (!v2)
  {
    return v2;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  languages = v2->_languages;
  v2->_languages = dictionary;

  strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  pendingSaves = v2->_pendingSaves;
  v2->_pendingSaves = strongToWeakObjectsMapTable;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel_languagesChanged_ name:@"AppleKeyboardsPreferencesChangedNotification_Private" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v9 = get_KSUserWordsWereDownloadedNotificationSymbolLoc_ptr;
  v24 = get_KSUserWordsWereDownloadedNotificationSymbolLoc_ptr;
  if (!get_KSUserWordsWereDownloadedNotificationSymbolLoc_ptr)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __get_KSUserWordsWereDownloadedNotificationSymbolLoc_block_invoke;
    v19 = &unk_278733760;
    v20 = &v21;
    v10 = KeyboardServicesLibrary();
    v11 = dlsym(v10, "_KSUserWordsWereDownloadedNotification");
    *(v20[1] + 24) = v11;
    get_KSUserWordsWereDownloadedNotificationSymbolLoc_ptr = *(v20[1] + 24);
    v9 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (v9)
  {
    [defaultCenter2 addObserver:v2 selector:sel_languagePulled_ name:*v9 object:0];

    [(TIKeyboardInputManagerLoaderSyncHelper *)v2 languagesChanged:0];
    return v2;
  }

  v13 = dlerror();
  v14 = abort_report_np("%s", v13);
  return __get_KSUserWordsWereDownloadedNotificationSymbolLoc_block_invoke(v14);
}

+ (void)deleteCloudKitBackup
{
  sharedInstance = [get_KSUserWordsSynchroniserClass() sharedInstance];
  [sharedInstance deleteZoneWithCompletionHandler:&__block_literal_global_27];
}

void __62__TIKeyboardInputManagerLoaderSyncHelper_deleteCloudKitBackup__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v3 = TIOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = @"Success";
      if (v2)
      {
        v4 = v2;
      }

      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s User word zone delete result: %@", "+[TIKeyboardInputManagerLoaderSyncHelper deleteCloudKitBackup]_block_invoke", v4];
      *buf = 138412290;
      v7 = v5;
      _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }
}

@end