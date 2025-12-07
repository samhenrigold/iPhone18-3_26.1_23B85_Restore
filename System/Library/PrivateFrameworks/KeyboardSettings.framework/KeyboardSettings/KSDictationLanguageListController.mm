@interface KSDictationLanguageListController
+ (id)isSmartLanguageSelectionEnabled;
+ (int64_t)numberOfEnabledEntries:(id)entries;
- (KSDictationLanguageListController)init;
- (id)dictationFooterText;
- (id)dictationLanguagesSpecifiers;
- (id)isSLSEnabled:(id)enabled;
- (id)onDeviceDictationLanguagesSpecifiers;
- (id)onDeviceNotCapableDictationLanguagesSpecifiers;
- (id)slsDictationLanguagesSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view classicDictationCellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view enhancedDictationCellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)emitNavigationEventForDictationLanguageListController;
- (void)handleSmartLanguageSelectionOnDictationLanguageToggle:(BOOL)toggle enabledDictationLanguages:(id)languages specifier:(id)specifier;
- (void)offlineDictationStatusUpdated:(id)updated;
- (void)presentPrivacySheet:(id)sheet;
- (void)setSLSEnabled:(id)enabled specifier:(id)specifier;
- (void)toggleDictationLanguage:(id)language;
- (void)toggleSLSEnabled:(id)enabled;
- (void)updateDownloadingProgressForAsset:(id)asset stalled:(BOOL)stalled;
- (void)updateDownloadingStateForAsset:(id)asset success:(BOOL)success;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation KSDictationLanguageListController

- (void)offlineDictationStatusUpdated:(id)updated
{
  [(KSDictationLanguageListController *)self setOfflineStatusForLanguage:updated];

  [(KSDictationLanguageListController *)self reloadSpecifiers];
}

- (KSDictationLanguageListController)init
{
  v4.receiver = self;
  v4.super_class = KSDictationLanguageListController;
  v2 = [(KSDictationLanguageListController *)&v4 init];
  if (v2 && AFOfflineDictationCapable())
  {
    [(KSDictationLanguageListController *)v2 setDictaionOfflineStatusObserver:[[KSDictationOfflineStatusObserver alloc] initWithDelegate:v2]];
    -[KSDictationLanguageListController setAssetIdToLanguages:](v2, "setAssetIdToLanguages:", [MEMORY[0x277CBEB38] dictionary]);
    -[KSDictationLanguageListController setTrackingDownloadStatusForAssetsIDs:](v2, "setTrackingDownloadStatusForAssetsIDs:", [MEMORY[0x277CBEB58] set]);
    -[KSDictationLanguageListController setOnDeviceLocalesDownloading:](v2, "setOnDeviceLocalesDownloading:", [MEMORY[0x277CBEB58] set]);
  }

  return v2;
}

- (void)dealloc
{
  [(KSDictationLanguageListController *)self setOfflineStatusForLanguage:0];
  [(KSDictationLanguageListController *)self setDictaionOfflineStatusObserver:0];
  [(KSDictationLanguageListController *)self setAssetIdToLanguages:0];
  [(KSDictationLanguageListController *)self setTrackingDownloadStatusForAssetsIDs:0];
  [(KSDictationLanguageListController *)self setOnDeviceLocalesDownloading:0];
  v3.receiver = self;
  v3.super_class = KSDictationLanguageListController;
  [(KSDictationLanguageListController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSDictationLanguageListController;
  [(KSDictationLanguageListController *)&v4 viewDidLoad];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionFooterHeight:0.0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = KSDictationLanguageListController;
  [(KSDictationLanguageListController *)&v4 viewDidAppear:appear];
  [(KSDictationLanguageListController *)self emitNavigationEventForDictationLanguageListController];
}

- (void)emitNavigationEventForDictationLanguageListController
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard/DictationSettings"];
  v4 = +[KSKeyboardController localizedStringForGeneralKeyboardSpecifier];
  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7[0] = v4;
  -[KSDictationLanguageListController pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:](self, "pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:", @"com.apple.graphic-icon.keyboard", [v5 initWithKey:@"KEYBOARDS_SHORT" table:@"Keyboard" locale:currentLocale bundleURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "bundleURL")}], objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v7, 2), v3);
}

+ (int64_t)numberOfEnabledEntries:(id)entries
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [entries allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v12;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(allKeys);
      }

      v7 += [objc_msgSend(entries objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * i)), "BOOLValue"}];
    }

    v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v6);
  return v7;
}

+ (id)isSmartLanguageSelectionEnabled
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];

  return [v2 numberWithBool:v3];
}

- (id)dictationFooterText
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [v3 setWithArray:v5];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = [MEMORY[0x277CBEB58] set];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = [MEMORY[0x277CBEB58] set];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = [MEMORY[0x277CBEB58] set];
  offlineStatusForLanguage = [(KSDictationLanguageListController *)self offlineStatusForLanguage];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __56__KSDictationLanguageListController_dictationFooterText__block_invoke;
  v21[3] = &unk_2797FA008;
  v21[4] = v6;
  v21[5] = &v28;
  v21[6] = &v34;
  v21[7] = &v22;
  [(NSDictionary *)offlineStatusForLanguage enumerateKeysAndObjectsUsingBlock:v21];
  if ([v29[5] count])
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_HIGH_QUALITY_EXPLANATION_SUFFIX_INSTALLED_WITH_LANGUAGES", &stru_28679E3A8, @"Keyboard"}];
    v10 = [v8 stringWithFormat:v9, +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", objc_msgSend(v29[5], "allObjects"), 1, 0)];
  }

  else
  {
    v10 = &stru_28679E3A8;
  }

  if ([v35[5] count])
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_OFFLINE_EXPLANATION_SUFFIX_INSTALLED_WITH_LANGUAGES", &stru_28679E3A8, @"Keyboard"}];
    v13 = [v11 stringWithFormat:v12, +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", objc_msgSend(v35[5], "allObjects"), 1, 0)];
    v14 = [(__CFString *)v10 length];
    v15 = @"\n\n";
    if (!v14)
    {
      v15 = &stru_28679E3A8;
    }

    v10 = [(__CFString *)v10 stringByAppendingFormat:@"%@%@", v15, v13];
  }

  if ([v29[5] count])
  {
    [v6 minusSet:v29[5]];
  }

  if ([v35[5] count])
  {
    [v6 minusSet:v35[5]];
  }

  if ([v6 count] && (!objc_msgSend(v6, "isEqual:", v23[5]) || -[__CFString length](v10, "length")))
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ONLINE_EXPLANATION_SUFFIX_NOT_INSTALLED_WITH_LANGUAGES", &stru_28679E3A8, @"Dictation", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", objc_msgSend(v6, "allObjects"), 1, 0)];
    v17 = [(__CFString *)v10 length];
    v18 = @"\n\n";
    if (!v17)
    {
      v18 = &stru_28679E3A8;
    }

    v10 = [(__CFString *)v10 stringByAppendingFormat:@"%@%@", v18, v16];
  }

  if (!-[__CFString length](v10, "length") && [v23[5] count])
  {
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v19 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_28679E3A8 table:@"Keyboard"];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  return v10;
}

void *__56__KSDictationLanguageListController_dictationFooterText__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  result = [*(a1 + 32) containsObject:v4];
  if (result)
  {
    if (AFOfflineDictationStatusStringIsHighQualityModelInstalled())
    {
      v6 = 40;
    }

    else
    {
      IsInstalled = AFOfflineDictationStatusStringIsInstalled();
      v6 = 56;
      if (IsInstalled)
      {
        v6 = 48;
      }
    }

    v8 = *(*(*(a1 + v6) + 8) + 40);

    return [v8 addObject:v4];
  }

  return result;
}

- (void)setSLSEnabled:(id)enabled specifier:(id)specifier
{
  [objc_msgSend(MEMORY[0x277CEF368] sharedPreferences];

  [(KSDictationLanguageListController *)self reloadSpecifiers];
}

- (id)isSLSEnabled:(id)enabled
{
  v3 = objc_opt_class();

  return [v3 isSmartLanguageSelectionEnabled];
}

- (id)dictationLanguagesSpecifiers
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v18)
  {
    v16 = *MEMORY[0x277D3FC48];
    -[KSDictationLanguageListController setTitle:](self, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Dictation Languages", &stru_28679E3A8, @"Dictation"}]);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mEMORY[0x277D6FFA8] = [MEMORY[0x277D6FFA8] sharedPreferencesController];
    v4 = [mEMORY[0x277D6FFA8] suggestedDictationModesForKeyboardLanguages:{objc_msgSend(objc_msgSend(MEMORY[0x277D75688], "sharedInputModeController"), "activeDictationSupportedInputModeIdentifiers")}];
    v5 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v4;
    v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      v9 = *MEMORY[0x277D3FFB8];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(v11 target:"displayName") set:self get:0 detail:0 cell:0 edit:{3, 0}];
          [v12 setButtonAction:sel_toggleDictationLanguage_];
          [v12 setProperty:objc_msgSend(v11 forKey:{"identifier"), v9}];
          [v12 setProperty:v5 forKey:@"enabledDictationLanguages"];
          [v18 addObject:v12];
        }

        v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v13 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DICTATION_LANGUAGES" name:0];
    dictationFooterText = [(KSDictationLanguageListController *)self dictationFooterText];
    [v13 setProperty:dictationFooterText forKey:*MEMORY[0x277D3FF88]];
    [v18 insertObject:v13 atIndex:0];
    *(&self->super.super.super.super.super.isa + v16) = v18;
  }

  return v18;
}

- (id)slsDictationLanguagesSpecifiers
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v33)
  {
    v28 = *MEMORY[0x277D3FC48];
    -[KSDictationLanguageListController setTitle:](self, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Dictation Languages", &stru_28679E3A8, @"Dictation"}]);
    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    array = [MEMORY[0x277CBEB18] array];
    mEMORY[0x277D6FFA8] = [MEMORY[0x277D6FFA8] sharedPreferencesController];
    v4 = [mEMORY[0x277D6FFA8] suggestedDictationModesForKeyboardLanguages:{objc_msgSend(objc_msgSend(MEMORY[0x277D75688], "sharedInputModeController"), "activeDictationSupportedInputModeIdentifiers")}];
    v5 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
    selfCopy = self;
    v27 = [objc_opt_class() numberOfEnabledEntries:v5];
    if (![v6 count])
    {
      [objc_msgSend(MEMORY[0x277D75688] "sharedInputModeController")];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v30 = *v35;
      v9 = *MEMORY[0x277D3FFB8];
      v10 = *MEMORY[0x277D40170];
      obj = v4;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(v12 target:"displayName") set:selfCopy get:0 detail:0 cell:0 edit:{3, 0}];
          [v13 setButtonAction:sel_toggleDictationLanguage_];
          [v13 setProperty:objc_msgSend(v12 forKey:{"identifier"), v9}];
          [v13 setProperty:v5 forKey:@"enabledDictationLanguages"];
          [v33 addObject:v13];
          v14 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(v12 target:"displayName") set:selfCopy get:0 detail:0 cell:0 edit:{3, 0}];
          [v14 setButtonAction:sel_toggleSLSEnabled_];
          [v14 setProperty:objc_msgSend(v12 forKey:{"identifier"), v10}];
          [array addObject:v14];
        }

        v4 = obj;
        v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v8);
    }

    if ([v4 count] >= 2)
    {
      if (v27 >= 2)
      {
        v15 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SLS_TOGGLE" name:0];
        [v33 addObject:v15];
        v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"Automatic-Language-Detection" cell:&stru_28679E3A8 edit:{@"Dictation", selfCopy, sel_setSLSEnabled_specifier_, sel_isSLSEnabled_, 0, 6, 0}];
        [v16 setProperty:@"SLS Toggle Switch" forKey:*MEMORY[0x277D3FFB8]];
        v17 = MEMORY[0x277CCACA8];
        v18 = [objc_msgSend(objc_opt_class() "isSmartLanguageSelectionEnabled")];
        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        if (v18)
        {
          v20 = @"SLS_TOGGLE_ON_EXPLANATION";
        }

        else
        {
          v20 = @"SLS_TOGGLE_OFF_EXPLANATION";
        }

        v21 = [v19 localizedStringForKey:v20 value:&stru_28679E3A8 table:@"Dictation"];
        [v15 setProperty:objc_msgSend(v17 forKey:{"stringWithFormat:", @"%@\n\n%@", v21, objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SLS_EXPLANATION_SUFFIX", &stru_28679E3A8, @"Dictation", *MEMORY[0x277D3FF88]}];
        [v33 addObject:v16];
      }

      if ([v4 count] < 5)
      {
        v22 = 0;
      }

      else
      {
        v22 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Dictation", &stru_28679E3A8, @"Dictation"}];
      }

      v23 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DICTATION_LANGUAGES" name:v22];
      dictationFooterText = [(KSDictationLanguageListController *)selfCopy dictationFooterText];
      [v23 setProperty:dictationFooterText forKey:*MEMORY[0x277D3FF88]];
      [v33 insertObject:v23 atIndex:0];
    }

    if ([objc_msgSend(objc_opt_class() "isSmartLanguageSelectionEnabled")] && objc_msgSend(v4, "count") >= 5 && v27 >= 2)
    {
      v25 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SLS_LANGUAGES" name:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Auto-Detection", &stru_28679E3A8, @"Dictation"}];
      [v25 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SLS_FOOTER_TEXT", &stru_28679E3A8, @"Dictation", *MEMORY[0x277D3FF88]}];
      [v33 addObject:v25];
      [v33 addObjectsFromArray:array];
    }

    *(&selfCopy->super.super.super.super.super.isa + v28) = v33;
  }

  return v33;
}

- (void)updateDownloadingProgressForAsset:(id)asset stalled:(BOOL)stalled
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__KSDictationLanguageListController_updateDownloadingProgressForAsset_stalled___block_invoke;
  block[3] = &unk_2797FA030;
  block[4] = self;
  block[5] = asset;
  stalledCopy = stalled;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__79__KSDictationLanguageListController_updateDownloadingProgressForAsset_stalled___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(*(a1 + 32) "onDeviceLocalesDownloading")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [objc_msgSend(*(a1 + 32) assetIdToLanguages];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = *(a1 + 48);
        v10 = [*(a1 + 32) onDeviceLocalesDownloading];
        if (v9 == 1)
        {
          [v10 removeObject:v8];
        }

        else
        {
          [v10 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  result = [v2 isEqualToSet:{objc_msgSend(*(a1 + 32), "onDeviceLocalesDownloading")}];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) reloadSpecifiers];
  }

  return result;
}

- (void)updateDownloadingStateForAsset:(id)asset success:(BOOL)success
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__KSDictationLanguageListController_updateDownloadingStateForAsset_success___block_invoke;
  block[3] = &unk_2797FA030;
  block[4] = self;
  block[5] = asset;
  successCopy = success;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__76__KSDictationLanguageListController_updateDownloadingStateForAsset_success___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [objc_msgSend(*(a1 + 32) "trackingDownloadStatusForAssetsIDs")];
  v2 = [objc_msgSend(*(a1 + 32) "assetIdToLanguages")];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [objc_msgSend(*(a1 + 32) "onDeviceLocalesDownloading")];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  result = [objc_msgSend(*(a1 + 32) "assetIdToLanguages")];
  if ((*(a1 + 48) & 1) == 0)
  {
    return [*(a1 + 32) reloadSpecifiers];
  }

  return result;
}

- (id)onDeviceDictationLanguagesSpecifiers
{
  selfCopy = self;
  v129 = *MEMORY[0x277D85DE8];
  result = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (result)
  {
    return result;
  }

  v93 = *MEMORY[0x277D3FC48];
  -[KSDictationLanguageListController setTitle:](selfCopy, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Dictation Languages", &stru_28679E3A8, @"Dictation"}]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v103 = [MEMORY[0x277CCA940] set];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v96 = [MEMORY[0x277CBEB58] set];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  mEMORY[0x277D6FFA8] = [MEMORY[0x277D6FFA8] sharedPreferencesController];
  v7 = [mEMORY[0x277D6FFA8] suggestedDictationModesForKeyboardLanguages:{objc_msgSend(objc_msgSend(MEMORY[0x277D75688], "sharedInputModeController"), "activeDictationSupportedInputModeIdentifiers")}];
  v8 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
  v92 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DICTATION_LANGUAGES" name:0];
  [v4 addObject:?];
  v9 = [MEMORY[0x277CBEB58] set];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = v7;
  v10 = [v7 countByEnumeratingWithState:&v121 objects:v128 count:16];
  v91 = @"DICTATION_ON_DEVICE_SERVER_SOMETIMES_NO_SEARCH";
  v105 = selfCopy;
  v94 = array;
  v95 = v4;
  v101 = v9;
  if (!v10)
  {
    v102 = 0;
    goto LABEL_35;
  }

  v11 = v10;
  v102 = 0;
  v12 = *v122;
  v13 = *MEMORY[0x277D3FFB8];
  v99 = 1;
  do
  {
    v14 = 0;
    do
    {
      if (*v122 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v121 + 1) + 8 * v14);
      v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(v15 target:"displayName") set:selfCopy get:0 detail:0 cell:0 edit:{3, 0}];
      [v16 setButtonAction:sel_toggleDictationLanguage_];
      [v16 setProperty:objc_msgSend(v15 forKey:{"identifier"), v13}];
      [v16 setProperty:v8 forKey:@"enabledDictationLanguages"];
      [v4 addObject:v16];
      if ([objc_msgSend(v8 objectForKeyedSubscript:{objc_msgSend(v15, "identifier")), "BOOLValue"}])
      {
        [v15 identifier];
        TIInputModeGetBaseLanguage();
        [v103 addObject:TIInputModeGetBaseLanguage()];
        v17 = [objc_msgSend(v15 "identifier")];
        if (![(NSDictionary *)[(KSDictationLanguageListController *)selfCopy offlineStatusForLanguage] objectForKeyedSubscript:v17])
        {
          v18 = MEMORY[0x259C42620](v17);
          if (v18)
          {
            [(NSDictionary *)[(KSDictationLanguageListController *)v105 offlineStatusForLanguage] objectForKeyedSubscript:v18];
          }
        }

        if (!AFOfflineDictationStatusStringIsHighQualityModelSupported())
        {
          identifier = [v15 identifier];
          v20 = array4;
          goto LABEL_15;
        }

        ++v102;
        if (AFOfflineDictationStatusStringIsInstalled())
        {
          [array2 addObject:{objc_msgSend(v15, "identifier")}];
          v99 &= AFOfflineDictationStatusStringIsOnDeviceSearchSupported();
          goto LABEL_16;
        }

        if (!AFOfflineDictationStatusStringIsInstalling())
        {
          identifier = [v15 identifier];
          v20 = array3;
LABEL_15:
          [v20 addObject:identifier];
LABEL_16:
          selfCopy = v105;
          goto LABEL_17;
        }

        v21 = -[NSMutableSet containsObject:](-[KSDictationLanguageListController onDeviceLocalesDownloading](v105, "onDeviceLocalesDownloading"), "containsObject:", [v15 identifier]);
        identifier2 = [v15 identifier];
        if (v21)
        {
          v23 = v96;
        }

        else
        {
          v23 = array3;
        }

        [v23 addObject:identifier2];
        v24 = AFOfflineDictationStatusStringAssetId();
        if (v24)
        {
          v25 = v24;
          [v101 addObject:v24];
          v26 = [(NSMutableDictionary *)[(KSDictationLanguageListController *)v105 assetIdToLanguages] objectForKeyedSubscript:v25];
          if (!v26)
          {
            v26 = [MEMORY[0x277CBEB58] set];
            [(NSMutableDictionary *)[(KSDictationLanguageListController *)v105 assetIdToLanguages] setObject:v26 forKeyedSubscript:v25];
          }

          [v26 addObject:{objc_msgSend(v15, "identifier")}];
          selfCopy = v105;
        }

        else
        {
          selfCopy = v105;
        }

        v4 = v95;
      }

LABEL_17:
      ++v14;
    }

    while (v11 != v14);
    v27 = [obj countByEnumeratingWithState:&v121 objects:v128 count:16];
    v11 = v27;
  }

  while (v27);
  v28 = @"DICTATION_ON_DEVICE_SERVER_SOMETIMES";
  if (v99)
  {
    v28 = @"DICTATION_ON_DEVICE_SERVER_SOMETIMES_NO_SEARCH";
  }

  v91 = v28;
  array = v94;
  v9 = v101;
LABEL_35:
  v29 = v103;
  if ([v9 count])
  {
    [v9 minusSet:{-[KSDictationLanguageListController trackingDownloadStatusForAssetsIDs](selfCopy, "trackingDownloadStatusForAssetsIDs")}];
    if ([v9 count])
    {
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      allObjects = [v9 allObjects];
      v31 = [allObjects countByEnumeratingWithState:&v117 objects:v127 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v118;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v118 != v33)
            {
              objc_enumerationMutation(allObjects);
            }

            v35 = *(*(&v117 + 1) + 8 * i);
            [(NSMutableSet *)[(KSDictationLanguageListController *)v105 trackingDownloadStatusForAssetsIDs] addObject:v35];
            [v9 removeObject:v35];
            v36 = [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](-[KSDictationLanguageListController assetIdToLanguages](v105 "assetIdToLanguages")];
            if (v36)
            {
              v37 = v36;
              v38 = [KSWeakRefHolder weakRefHolderWithObject:v105];
              SFSpeechAssetManagerClass = getSFSpeechAssetManagerClass();
              systemClientId = [getSFSpeechAssetManagerClass() systemClientId];
              v115[5] = v35;
              v116[0] = MEMORY[0x277D85DD0];
              v116[1] = 3221225472;
              v116[2] = __73__KSDictationLanguageListController_onDeviceDictationLanguagesSpecifiers__block_invoke;
              v116[3] = &unk_2797FA058;
              v116[4] = v38;
              v116[5] = v35;
              v115[0] = MEMORY[0x277D85DD0];
              v115[1] = 3221225472;
              v115[2] = __73__KSDictationLanguageListController_onDeviceDictationLanguagesSpecifiers__block_invoke_2;
              v115[3] = &unk_2797FA080;
              v115[4] = v38;
              v41 = SFSpeechAssetManagerClass;
              v9 = v101;
              [v41 fetchAssetsForLanguage:v37 clientIdentifier:systemClientId urgent:0 forceUpgrade:0 detailedProgress:v116 completion:v115];
            }
          }

          v32 = [allObjects countByEnumeratingWithState:&v117 objects:v127 count:16];
        }

        while (v32);
      }

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v42 = [v9 countByEnumeratingWithState:&v111 objects:v126 count:16];
      selfCopy = v105;
      array = v94;
      v29 = v103;
      if (v42)
      {
        v43 = v42;
        v44 = *v112;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v112 != v44)
            {
              objc_enumerationMutation(v9);
            }

            [(NSMutableDictionary *)[(KSDictationLanguageListController *)v105 assetIdToLanguages] removeObjectForKey:*(*(&v111 + 1) + 8 * j)];
          }

          v43 = [v9 countByEnumeratingWithState:&v111 objects:v126 count:16];
        }

        while (v43);
      }
    }
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v46 = [v29 countByEnumeratingWithState:&v107 objects:v125 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v108;
    do
    {
      for (k = 0; k != v47; ++k)
      {
        if (*v108 != v48)
        {
          objc_enumerationMutation(v29);
        }

        v50 = *(*(&v107 + 1) + 8 * k);
        if ([v29 countForObject:v50] >= 2)
        {
          [array addObject:v50];
        }
      }

      v47 = [v29 countByEnumeratingWithState:&v107 objects:v125 count:16];
    }

    while (v47);
  }

  v51 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_ABOUT_LINK", &stru_28679E3A8, @"Keyboard"}];
  if (!v102)
  {
    v55 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_SERVER", &stru_28679E3A8, @"Keyboard"}];
    goto LABEL_70;
  }

  if (![array4 count])
  {
    if (v102 == 1)
    {
      if ([v96 count])
      {
        v56 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_SERVER_WHEN_NECESSARY", &stru_28679E3A8, @"Keyboard"}];
        v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v59 = @"DICTATION_ON_DEVICE_SUPPORT_DOWNLOADING";
LABEL_75:
        v60 = [v58 localizedStringForKey:v59 value:&stru_28679E3A8 table:@"Keyboard"];
        goto LABEL_93;
      }

      v76 = [array2 count];
      v77 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (!v76)
      {
        v56 = [v77 localizedStringForKey:@"DICTATION_ON_DEVICE_SERVER_WHEN_NECESSARY" value:&stru_28679E3A8 table:@"Keyboard"];
        v90 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v59 = SFLocalizableWAPIStringKeyForKey();
        v58 = v90;
        goto LABEL_75;
      }

      v78 = [v77 localizedStringForKey:@"DICTATION_ON_DEVICE_PRIVATE_PROCESSING" value:&stru_28679E3A8 table:@"Keyboard"];
      v55 = [v78 stringByAppendingFormat:@" %@", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", v91, &stru_28679E3A8, @"Keyboard"];
    }

    else
    {
      if (![array2 count] && !objc_msgSend(v96, "count"))
      {
        goto LABEL_84;
      }

      if ([v96 count])
      {
        if (![array2 count])
        {
          goto LABEL_91;
        }

        v69 = MEMORY[0x277CCACA8];
        v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v71 = [v69 stringWithFormat:objc_msgSend(v70, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_PRIVATE_PROCESSING_WITH_LANGUAGE", objc_msgSend(array2, "count"), 0), &stru_28679E3A8, @"Keyboard", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", array2, 1, array)];
        v54 = [v71 stringByAppendingFormat:@" %@", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_SERVER_SOMETIMES", &stru_28679E3A8, @"Keyboard"];
LABEL_92:
        v56 = v54;
        v84 = MEMORY[0x277CCACA8];
        v85 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v60 = [v84 stringWithFormat:objc_msgSend(v85, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_SUPPORT_DOWNLOADING_WITH_LANGUAGE", objc_msgSend(v96, "count"), 0), &stru_28679E3A8, @"Keyboard", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", objc_msgSend(v96, "allObjects"), 1, array)];
        goto LABEL_93;
      }

      v79 = [array3 count];
      v80 = MEMORY[0x277CCACA8];
      v81 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v79)
      {
        v82 = [v80 stringWithFormat:objc_msgSend(v81, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_PRIVATE_PROCESSING_WITH_LANGUAGE", objc_msgSend(array2, "count"), 0), &stru_28679E3A8, @"Keyboard", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", array2, 1, array)];
        v56 = [v82 stringByAppendingFormat:@" %@", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_SERVER_SOMETIMES", &stru_28679E3A8, @"Keyboard"];
        v72 = MEMORY[0x277CCACA8];
        v83 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_SUPPORT_DOWNLOAD_WITH_LANGUAGE", [array3 count], @"_WIFI");
        v74 = [v83 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_28679E3A8 table:@"Keyboard"];
        v75 = array3;
        goto LABEL_90;
      }

      v55 = [v80 stringWithFormat:@"%@ %@", objc_msgSend(v81, "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_PRIVATE_PROCESSING", &stru_28679E3A8, @"Keyboard", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", v91, &stru_28679E3A8, @"Keyboard"];
    }

LABEL_70:
    v56 = v55;
    goto LABEL_71;
  }

  if ([array2 count] || objc_msgSend(v96, "count"))
  {
    if ([v96 count])
    {
      if ([array2 count])
      {
        v52 = MEMORY[0x277CCACA8];
        v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v54 = [v52 stringWithFormat:objc_msgSend(v53, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_PRIVATE_PROCESSING_WITH_LANGUAGE", objc_msgSend(array2, "count"), 0), &stru_28679E3A8, @"Keyboard", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", array2, 1, array)];
        goto LABEL_92;
      }

LABEL_91:
      v54 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_SERVER_WHEN_NECESSARY", &stru_28679E3A8, @"Keyboard"}];
      goto LABEL_92;
    }

    v106 = [array3 count];
    v61 = MEMORY[0x277CCACA8];
    v62 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v63 = [v61 stringWithFormat:objc_msgSend(v62, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_PRIVATE_PROCESSING_WITH_LANGUAGE", objc_msgSend(array2, "count"), 0), &stru_28679E3A8, @"Keyboard", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", array2, 1, array)];
    v64 = MEMORY[0x277CCACA8];
    v65 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v56 = [v63 stringByAppendingFormat:@" %@", objc_msgSend(v64, "stringWithFormat:", objc_msgSend(v65, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_SERVER_SOMETIMES_WITH_LANGUAGE", objc_msgSend(array4, "count"), 0), &stru_28679E3A8, @"Keyboard", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", array4, 1, array))];
    if (v106)
    {
      v66 = MEMORY[0x277CCACA8];
      v67 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_SUPPORT_DOWNLOAD_WITH_LANGUAGE", [array3 count], @"_WIFI");
      v68 = [v66 stringWithFormat:objc_msgSend(v67, "localizedStringForKey:value:table:", SFLocalizableWAPIStringKeyForKey(), &stru_28679E3A8, @"Keyboard", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", array3, 1, array)];
      goto LABEL_94;
    }

LABEL_71:
    v57 = [v56 stringByAppendingFormat:@" %@", v51];
LABEL_96:
    v87 = v57;
    goto LABEL_97;
  }

LABEL_84:
  v56 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_SERVER_WHEN_NECESSARY", &stru_28679E3A8, @"Keyboard"}];
  v72 = MEMORY[0x277CCACA8];
  v73 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_SUPPORT_DOWNLOAD_WITH_LANGUAGE", [array3 count], @"_WIFI");
  v74 = [v73 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_28679E3A8 table:@"Keyboard"];
  v75 = array3;
LABEL_90:
  v60 = [v72 stringWithFormat:v74, +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", v75, 1, array)];
LABEL_93:
  v68 = v60;
LABEL_94:
  v86 = [v56 stringByAppendingFormat:@" %@", v51];
  v87 = v86;
  if (v68)
  {
    v57 = [v86 stringByAppendingFormat:@"\n\n%@", v68];
    goto LABEL_96;
  }

LABEL_97:
  v88 = objc_opt_class();
  [v92 setProperty:NSStringFromClass(v88) forKey:*MEMORY[0x277D3FF48]];
  [v92 setProperty:v87 forKey:*MEMORY[0x277D3FF70]];
  v130.location = [v87 rangeOfString:v51];
  [v92 setProperty:NSStringFromRange(v130) forKey:*MEMORY[0x277D3FF58]];
  v89 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:selfCopy];
  [v92 setProperty:v89 forKey:*MEMORY[0x277D3FF68]];
  [v92 setProperty:NSStringFromSelector(sel_presentPrivacySheet_) forKey:*MEMORY[0x277D3FF50]];
  result = v95;
  *(&selfCopy->super.super.super.super.super.isa + v93) = v95;
  return result;
}

uint64_t __73__KSDictationLanguageListController_onDeviceDictationLanguagesSpecifiers__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strongRef];
  v6 = *(a1 + 40);

  return [v5 updateDownloadingProgressForAsset:v6 stalled:a3];
}

uint64_t __73__KSDictationLanguageListController_onDeviceDictationLanguagesSpecifiers__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strongRef];
  v6 = *(a1 + 40);

  return [v5 updateDownloadingStateForAsset:v6 success:a3 == 0];
}

- (void)presentPrivacySheet:(id)sheet
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
  [v4 setPresentingViewController:self];

  [v4 present];
}

- (id)onDeviceNotCapableDictationLanguagesSpecifiers
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3FC48];
  v31 = *(&self->super.super.super.super.super.isa + v2);
  if (!v31)
  {
    -[KSDictationLanguageListController setTitle:](self, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Dictation Languages", &stru_28679E3A8, @"Dictation"}]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mEMORY[0x277D6FFA8] = [MEMORY[0x277D6FFA8] sharedPreferencesController];
    v6 = [mEMORY[0x277D6FFA8] suggestedDictationModesForKeyboardLanguages:{objc_msgSend(objc_msgSend(MEMORY[0x277D75688], "sharedInputModeController"), "activeDictationSupportedInputModeIdentifiers")}];
    v7 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
    v30 = [MEMORY[0x277CCA940] set];
    [MEMORY[0x277CBEB18] array];
    array = [MEMORY[0x277CBEB18] array];
    v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DICTATION_LANGUAGES" name:0];
    v31 = v4;
    [v4 addObject:v8];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v27 = v8;
      v28 = v2;
      v11 = 0;
      v12 = *v33;
      v13 = *MEMORY[0x277D3FFB8];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(v15 target:"displayName") set:self get:0 detail:0 cell:0 edit:{3, 0}];
          [v16 setButtonAction:sel_toggleDictationLanguage_];
          [v16 setProperty:objc_msgSend(v15 forKey:{"identifier"), v13}];
          [v16 setProperty:v7 forKey:@"enabledDictationLanguages"];
          [v31 addObject:v16];
          if ([objc_msgSend(v7 objectForKeyedSubscript:{objc_msgSend(v15, "identifier")), "BOOLValue"}])
          {
            [v15 identifier];
            TIInputModeGetBaseLanguage();
            [v30 addObject:TIInputModeGetBaseLanguage()];
            if (-[NSDictionary objectForKeyedSubscript:](-[KSDictationLanguageListController offlineStatusForLanguage](self, "offlineStatusForLanguage"), "objectForKeyedSubscript:", [objc_msgSend(v15 "identifier")]))
            {
              ++v11;
              if (AFOfflineDictationStatusStringIsInstalled())
              {
                [array addObject:{objc_msgSend(v15, "identifier")}];
              }
            }
          }
        }

        v10 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);
      v17 = v11 == 0;
      v8 = v27;
      v2 = v28;
    }

    else
    {
      v17 = 1;
    }

    v18 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_ABOUT_LINK", &stru_28679E3A8, @"Keyboard"}];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ON_DEVICE_SERVER", &stru_28679E3A8, @"Keyboard", v18];
    if (v17)
    {
      goto LABEL_19;
    }

    if ([array count])
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v20 stringWithFormat:objc_msgSend(v21, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_OFFLINE_EXPLANATION_SUFFIX_INSTALLED_WITH_LANGUAGE", objc_msgSend(array, "count"), 0), &stru_28679E3A8, @"Keyboard", +[KSKeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KSKeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", array, 1, 0)];
      if (!v22)
      {
LABEL_19:
        v23 = objc_opt_class();
        [v8 setProperty:NSStringFromClass(v23) forKey:*MEMORY[0x277D3FF48]];
        [v8 setProperty:v19 forKey:*MEMORY[0x277D3FF70]];
        v38.location = [v19 rangeOfString:v18];
        [v8 setProperty:NSStringFromRange(v38) forKey:*MEMORY[0x277D3FF58]];
        v24 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [v8 setProperty:v24 forKey:*MEMORY[0x277D3FF68]];
        [v8 setProperty:NSStringFromSelector(sel_presentPrivacySheet_) forKey:*MEMORY[0x277D3FF50]];
        *(&self->super.super.super.super.super.isa + v2) = v31;
        return v31;
      }
    }

    else
    {
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v26 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_28679E3A8 table:@"Keyboard"];
      if (!v22)
      {
        goto LABEL_19;
      }
    }

    v19 = [v19 stringByAppendingFormat:@"\n\n%@", v22];
    goto LABEL_19;
  }

  return v31;
}

- (id)specifiers
{
  if (_os_feature_enabled_impl())
  {

    return [(KSDictationLanguageListController *)self slsDictationLanguagesSpecifiers];
  }

  else if (AFDeviceHighestLanguageModelCapabilityIdentifier() == 10)
  {

    return [(KSDictationLanguageListController *)self onDeviceDictationLanguagesSpecifiers];
  }

  else
  {

    return [(KSDictationLanguageListController *)self onDeviceNotCapableDictationLanguagesSpecifiers];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  if (_os_feature_enabled_impl())
  {

    return [(KSDictationLanguageListController *)self tableView:view classicDictationCellForRowAtIndexPath:path];
  }

  else
  {

    return [(KSDictationLanguageListController *)self tableView:view enhancedDictationCellForRowAtIndexPath:path];
  }
}

- (id)tableView:(id)view enhancedDictationCellForRowAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = KSDictationLanguageListController;
  v6 = [(KSDictationLanguageListController *)&v15 tableView:view cellForRowAtIndexPath:?];
  v7 = [(KSDictationLanguageListController *)self specifierAtIndex:[(KSDictationLanguageListController *)self indexForIndexPath:path]];
  v8 = [objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
  v9 = [objc_opt_class() numberOfEnabledEntries:{objc_msgSend(v8, "valueForPreferenceKey:", *MEMORY[0x277D768A0])}];
  [MEMORY[0x277D75688] sharedInputModeController];
  if (objc_opt_respondsToSelector())
  {
    mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
    v11 = [mEMORY[0x277D75688] isDictationLanguageEnabled:{objc_msgSend(v7, "propertyForKey:", *MEMORY[0x277D3FFB8])}];
    [v6 setChecked:v11];
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v9 == 1)
  {
    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  [v6 setUserInteractionEnabled:v12];
  if (v12)
  {
    [objc_msgSend(v6 "titleLabel")];
    [v6 setSelectionStyle:3];
    systemGrayColor = 0;
  }

  else
  {
    [objc_msgSend(v6 "titleLabel")];
    [v6 setSelectionStyle:0];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  }

  [v6 setTintColor:systemGrayColor];
  return v6;
}

- (id)tableView:(id)view classicDictationCellForRowAtIndexPath:(id)path
{
  v46 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = KSDictationLanguageListController;
  v6 = [(KSDictationLanguageListController *)&v43 tableView:view cellForRowAtIndexPath:?];
  v7 = [(KSDictationLanguageListController *)self specifierAtIndex:[(KSDictationLanguageListController *)self indexForIndexPath:path]];
  v8 = [objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
  v9 = [v8 valueForPreferenceKey:*MEMORY[0x277D768A0]];
  if (![path section])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    allKeys = [v9 allKeys];
    v13 = [allKeys countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v40;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 += [objc_msgSend(v9 objectForKeyedSubscript:{*(*(&v39 + 1) + 8 * i)), "BOOLValue"}];
        }

        v14 = [allKeys countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v14);
      v18 = v15 == 1;
    }

    else
    {
      v18 = 0;
    }

    [MEMORY[0x277D75688] sharedInputModeController];
    if (objc_opt_respondsToSelector())
    {
      mEMORY[0x277D75688] = [MEMORY[0x277D75688] sharedInputModeController];
      v27 = [mEMORY[0x277D75688] isDictationLanguageEnabled:{objc_msgSend(v7, "propertyForKey:", *MEMORY[0x277D3FFB8])}];
      [v6 setChecked:v27];
      [v6 setUserInteractionEnabled:v27 & v18 ^ 1];
      if (((v27 & v18 ^ 1) & 1) == 0)
      {
        v28 = MEMORY[0x277D75348];
LABEL_37:
        [objc_msgSend(v6 "titleLabel")];
        [v6 setSelectionStyle:0];
        systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
        goto LABEL_29;
      }
    }

    else
    {
      [v6 setUserInteractionEnabled:1];
    }

    v28 = MEMORY[0x277D75348];
LABEL_27:
    [objc_msgSend(v6 "titleLabel")];
    v10 = v6;
    v11 = 3;
    goto LABEL_28;
  }

  if ([path section] == 1)
  {
    [objc_msgSend(v6 "titleLabel")];
    v10 = v6;
    v11 = 0;
LABEL_28:
    [v10 setSelectionStyle:v11];
    systemGrayColor = 0;
LABEL_29:
    [v6 setTintColor:systemGrayColor];
    return v6;
  }

  if ([path section] == 2)
  {
    [v6 setSelectionStyle:3];
    v19 = [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    allKeys2 = [v19 allKeys];
    v21 = [allKeys2 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v36;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(allKeys2);
          }

          v23 += [objc_msgSend(v19 objectForKeyedSubscript:{*(*(&v35 + 1) + 8 * j)), "BOOLValue"}];
        }

        v22 = [allKeys2 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v22);
    }

    else
    {
      v23 = 0;
    }

    v31 = [v7 propertyForKey:*MEMORY[0x277D40170]];
    if (v19)
    {
      v32 = v31;
      [v6 setChecked:{objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", v31), "BOOLValue")}];
      v33 = [objc_msgSend(v9 objectForKeyedSubscript:{v32), "BOOLValue"}];
      if ([objc_msgSend(v19 objectForKeyedSubscript:{v32), "BOOLValue"}])
      {
        v34 = v23 != 2;
      }

      else
      {
        v34 = ((v23 & 0xFFFFFFFE) == 2) & v33;
      }

      v28 = MEMORY[0x277D75348];
      if (v34 != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    }
  }

  return v6;
}

- (void)toggleSLSEnabled:(id)enabled
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [enabled propertyForKey:*MEMORY[0x277D40148]];
  isChecked = [v5 isChecked];
  v7 = [enabled propertyForKey:*MEMORY[0x277D40170]];
  v8 = [objc_msgSend(objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [v8 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 += [objc_msgSend(v8 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i)), "BOOLValue"}];
      }

      v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v15 = (v12 - 4) < 0xFFFFFFFD;
  if (isChecked)
  {
    v15 = v12 == 2;
  }

  if (!v15)
  {
    v16 = [objc_msgSend(objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
    if (isChecked)
    {
      [v5 setChecked:isChecked ^ 1u];
      grayColor = [MEMORY[0x277D75348] grayColor];
    }

    else
    {
      if (![objc_msgSend(v16 objectForKeyedSubscript:{v7), "BOOLValue"}])
      {
        return;
      }

      [v5 setChecked:isChecked ^ 1u];
      grayColor = [MEMORY[0x277D75348] blackColor];
    }

    [objc_msgSend(v5 "titleLabel")];
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", isChecked ^ 1u), v7}];
    [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
    [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) reloadData];
  }
}

- (void)handleSmartLanguageSelectionOnDictationLanguageToggle:(BOOL)toggle enabledDictationLanguages:(id)languages specifier:(id)specifier
{
  toggleCopy = toggle;
  v49 = *MEMORY[0x277D85DE8];
  v8 = [objc_msgSend(objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
  v9 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
  v10 = [objc_opt_class() numberOfEnabledEntries:languages];
  if (toggleCopy)
  {
    if (![objc_msgSend(v8 objectForKeyedSubscript:{v9), "BOOLValue"}])
    {
      return;
    }

    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 0), v9}];
    if (v10 == 2)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      allKeys = [v8 allKeys];
      v12 = [allKeys countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v43;
        v15 = MEMORY[0x277CBEC28];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v43 != v14)
            {
              objc_enumerationMutation(allKeys);
            }

            [v8 setObject:v15 forKeyedSubscript:*(*(&v42 + 1) + 8 * i)];
          }

          v13 = [allKeys countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v13);
      }
    }

    else if (v10 >= 3 && [objc_opt_class() numberOfEnabledEntries:v8] <= 1)
    {
      v26 = [objc_msgSend(languages keysOfEntriesPassingTest:{&__block_literal_global_2), "mutableCopy"}];
      [v26 intersectSet:{objc_msgSend(v8, "keysOfEntriesPassingTest:", &__block_literal_global_399)}];
      [v26 removeObject:v9];
      mEMORY[0x277D6FFA8] = [MEMORY[0x277D6FFA8] sharedPreferencesController];
      v28 = [mEMORY[0x277D6FFA8] suggestedDictationModesForKeyboardLanguages:{objc_msgSend(objc_msgSend(MEMORY[0x277D75688], "sharedInputModeController"), "activeDictationSupportedInputModeIdentifiers")}];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v29 = [v28 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v39;
        while (2)
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v39 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v38 + 1) + 8 * j);
            if ([v26 containsObject:{objc_msgSend(v33, "identifier")}])
            {
              identifier = [v33 identifier];
              v23 = MEMORY[0x277CBEC38];
              v24 = v8;
              goto LABEL_23;
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_24;
  }

  v17 = [objc_opt_class() numberOfEnabledEntries:v8];
  if (v10 == 1)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    allKeys2 = [languages allKeys];
    v19 = [allKeys2 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(allKeys2);
          }

          [v8 setObject:objc_msgSend(languages forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v34 + 1) + 8 * k)), *(*(&v34 + 1) + 8 * k)}];
        }

        v20 = [allKeys2 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v20);
    }
  }

  if (v17 <= 3 && v10 >= 1)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v24 = v8;
    identifier = v9;
LABEL_23:
    [v24 setObject:v23 forKeyedSubscript:identifier];
LABEL_24:
    [objc_msgSend(MEMORY[0x277CEF368] "sharedPreferences")];
  }
}

- (void)toggleDictationLanguage:(id)language
{
  v5 = [language propertyForKey:*MEMORY[0x277D40148]];
  isChecked = [v5 isChecked];
  v7 = [language propertyForKey:@"enabledDictationLanguages"];
  if (_os_feature_enabled_impl())
  {
    [(KSDictationLanguageListController *)self handleSmartLanguageSelectionOnDictationLanguageToggle:isChecked enabledDictationLanguages:v7 specifier:language];
  }

  [v5 setChecked:isChecked ^ 1];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:isChecked ^ 1];
  [v7 setObject:v8 forKey:{objc_msgSend(language, "propertyForKey:", *MEMORY[0x277D3FFB8])}];
  [objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(objc_msgSend(MEMORY[0x277D756A0] "sharedPreferencesController")];
  }

  [objc_msgSend(MEMORY[0x277CFB3E0] "sharedCloudSettingsManager")];

  [(KSDictationLanguageListController *)self reloadSpecifiers];
}

@end