@interface AssistantVoiceController
+ (BOOL)asset:(id)asset matchesVoice:(id)voice;
+ (id)bundle;
- (AssistantVoiceController)init;
- (BOOL)isCellularDataPermissionAllowedForVoice:(id)voice;
- (BOOL)isVoiceInstalled:(id)installed;
- (id)_languageSpecifiersForLanguage:(id)language;
- (id)_voiceVariationSpecifiersForLanguage:(id)language;
- (id)deriveVoicesWithTargetVoice:(id)voice currentVoice:(id)currentVoice;
- (id)dialectsForLanguageIdentifiers:(id)identifiers;
- (id)inProgressOutputVoice;
- (id)outputVoice;
- (id)specifiers;
- (id)uniqueLocaleForLanguageWithDialect:(id)dialect;
- (id)viewModelWithInProgressVoice:(id)voice currentVoice:(id)currentVoice;
- (id)voiceSettingsForLanguageCode:(id)code name:(id)name gender:(int64_t)gender;
- (void)_signalDidSelectVoice;
- (void)applyViewModel:(id)model;
- (void)downloadVoice:(id)voice;
- (void)grantCellularDataPermissionForVoice:(id)voice;
- (void)languageCodeDidChange:(id)change;
- (void)outputVoiceDidChange:(id)change;
- (void)playVoicePreview:(id)preview;
- (void)presentVoiceDownloadConfirmationNoWifiAlertForVoice:(id)voice inProgressVoice:(id)progressVoice;
- (void)presentVoiceDownloadDisabledNoInternetAlert;
- (void)presentVoiceDownloadDisabledNoWifiAlert;
- (void)registerUndoActionWithKey:(id)key urlString:(id)string undoAction:(id)action;
- (void)resetMetrics;
- (void)selectVoice:(id)voice inProgressVoice:(id)progressVoice;
- (void)setAssistantInProgressVoice:(id)voice;
- (void)setAssistantOutputVoice:(id)voice;
- (void)setInProgressVoicePreference:(id)preference;
- (void)setOutputVoicePreference:(id)preference;
- (void)setParentController:(id)controller;
- (void)stopAllDownload;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDownloadProgress:(float)progress;
- (void)updateFooterText:(id)text forSpecifier:(id)specifier;
- (void)updateVoiceVariationGroupUI:(id)i;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AssistantVoiceController

+ (id)bundle
{
  if (bundle_onceToken != -1)
  {
    +[AssistantVoiceController bundle];
  }

  v3 = bundle_sAssistantVoiceBundle;

  return v3;
}

uint64_t __34__AssistantVoiceController_bundle__block_invoke()
{
  bundle_sAssistantVoiceBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (AssistantVoiceController)init
{
  v6.receiver = self;
  v6.super_class = AssistantVoiceController;
  v2 = [(AssistantVoiceController *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x277D613F8]);
  session = v2->_session;
  v2->_session = v3;

  [(AssistantVoiceController *)v2 resetMetrics];
  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = AssistantVoiceController;
  [(AssistantVoiceController *)&v3 viewWillAppear:appear];
}

- (void)resetMetrics
{
  if (self->_metrics)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277D76770];
    [defaultCenter removeObserver:self->_metrics name:*MEMORY[0x277D76770] object:0];
  }

  else
  {
    v4 = *MEMORY[0x277D76770];
  }

  v5 = objc_opt_new();
  metrics = self->_metrics;
  self->_metrics = v5;

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self->_metrics selector:sel_sendAnalyticsEvent name:v4 object:0];
}

- (void)setParentController:(id)controller
{
  controllerCopy = controller;
  parentController = [(AssistantVoiceController *)self parentController];

  v8.receiver = self;
  v8.super_class = AssistantVoiceController;
  [(AssistantVoiceController *)&v8 setParentController:controllerCopy];
  if (controllerCopy && !parentController)
  {
    settingsConnection = [controllerCopy settingsConnection];
    settingsConnection = self->_settingsConnection;
    self->_settingsConnection = settingsConnection;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v29[2] = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  startDate = self->_startDate;
  self->_startDate = date;

  v28.receiver = self;
  v28.super_class = AssistantVoiceController;
  [(AssistantVoiceController *)&v28 viewDidAppear:appearCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_languageCodeDidChange_ name:*MEMORY[0x277CEF018] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_outputVoiceDidChange_ name:*MEMORY[0x277CEF058] object:0];

  v27 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Siri/VOICE_ID"];
  v9 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v11 bundleURL];
  v13 = [v9 initWithKey:@"Siri Voice" table:0 locale:currentLocale bundleURL:bundleURL];

  v14 = +[_TtC24AssistantSettingsSupport21GMEligibilityProvider shared];
  LODWORD(v11) = [v14 deviceSupported];

  if (v11)
  {
    v15 = @"Apple Intelligence & Siri";
  }

  else
  {
    v15 = @"Siri";
  }

  v16 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL2 = [v18 bundleURL];
  v20 = [v16 initWithKey:v15 table:0 locale:currentLocale2 bundleURL:bundleURL2];

  v21 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL3 = [v23 bundleURL];
  v25 = [v21 initWithKey:@"Siri Voice" table:0 locale:currentLocale3 bundleURL:bundleURL3];

  v29[0] = v20;
  v29[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  [(AssistantVoiceController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.siri" title:v13 localizedNavigationComponents:v26 deepLink:v27];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = self->_lastPreviewRequest;
  if (v5)
  {
    [(SiriTTSDaemonSession *)self->_session cancelWithRequest:v5];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v7 = date;
  startDate = self->_startDate;
  if (!startDate)
  {
    startDate = date;
  }

  v9 = startDate;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v10 = getCKKnowledgeStoreClass_softClass_0;
  v31 = getCKKnowledgeStoreClass_softClass_0;
  if (!getCKKnowledgeStoreClass_softClass_0)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getCKKnowledgeStoreClass_block_invoke_0;
    v26 = &unk_278CD1658;
    v27 = &v28;
    __getCKKnowledgeStoreClass_block_invoke_0(&v23);
    v10 = v29[3];
  }

  v11 = v10;
  _Block_object_dispose(&v28, 8);
  defaultSynchedKnowledgeStore = [v10 defaultSynchedKnowledgeStore];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v13 = getCKPermanentEventStoreClass_softClass_0;
  v31 = getCKPermanentEventStoreClass_softClass_0;
  if (!getCKPermanentEventStoreClass_softClass_0)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getCKPermanentEventStoreClass_block_invoke_0;
    v26 = &unk_278CD1658;
    v27 = &v28;
    __getCKPermanentEventStoreClass_block_invoke_0(&v23);
    v13 = v29[3];
  }

  v14 = v13;
  _Block_object_dispose(&v28, 8);
  v15 = [[v13 alloc] initWithKnowledgeStore:defaultSynchedKnowledgeStore];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v16 = getCKEventClass_softClass_0;
  v31 = getCKEventClass_softClass_0;
  if (!getCKEventClass_softClass_0)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getCKEventClass_block_invoke_0;
    v26 = &unk_278CD1658;
    v27 = &v28;
    __getCKEventClass_block_invoke_0(&v23);
    v16 = v29[3];
  }

  v17 = v16;
  _Block_object_dispose(&v28, 8);
  v18 = [[v16 alloc] initWithIdentifier:@"SiriVoiceSettingsShown" startDate:v9 endDate:v7 metadata:0];
  [v15 recordEvent:v18 completionHandler:&__block_literal_global_181];
  metrics = [(AssistantVoiceController *)self metrics];
  [metrics sendAnalyticsEvent];

  v22.receiver = self;
  v22.super_class = AssistantVoiceController;
  [(AssistantVoiceController *)&v22 viewDidDisappear:disappearCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CEF018] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277CEF058] object:0];
}

void __45__AssistantVoiceController_viewDidDisappear___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_UnableToRecord_0.isa, a2);
  }
}

- (void)languageCodeDidChange:(id)change
{
  changeCopy = change;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [AssistantVoiceController languageCodeDidChange:v5];
  }

  [(AssistantVoiceController *)self reloadSpecifiers];
  if ([(NSArray *)self->_voiceVariationSpecifiers count]<= 1 && [(NSArray *)self->_languageSpecifiers count]<= 1)
  {
    navigationController = [(AssistantVoiceController *)self navigationController];
    v7 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)outputVoiceDidChange:(id)change
{
  changeCopy = change;
  if (!self->_ignoreNextVoiceChangeNotification)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      [AssistantVoiceController outputVoiceDidChange:v5];
    }

    [(AssistantVoiceController *)self reloadSpecifiers];
  }

  self->_ignoreNextVoiceChangeNotification = 0;
}

- (id)outputVoice
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  outputVoice = [mEMORY[0x277CEF368] outputVoice];

  name = [outputVoice name];
  v5 = [name length];

  if (!v5)
  {
    mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
    languageCode = [outputVoice languageCode];
    v8 = [mEMORY[0x277CEF2D8] voiceNamesForOutputLanguageCode:languageCode gender:{objc_msgSend(outputVoice, "gender")}];
    firstObject = [v8 firstObject];

    v10 = objc_alloc(MEMORY[0x277CEF528]);
    languageCode2 = [outputVoice languageCode];
    gender = [outputVoice gender];
    isCustom = [outputVoice isCustom];
    footprint = [outputVoice footprint];
    contentVersion = [outputVoice contentVersion];
    masteredVersion = [outputVoice masteredVersion];
    v17 = [v10 initWithLanguageCode:languageCode2 gender:gender isCustom:isCustom name:firstObject footprint:footprint contentVersion:contentVersion masteredVersion:masteredVersion];

    outputVoice = v17;
  }

  return outputVoice;
}

- (id)inProgressOutputVoice
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  inProgressOutputVoice = [mEMORY[0x277CEF368] inProgressOutputVoice];

  name = [inProgressOutputVoice name];
  if ([name length])
  {
    languageCode = [inProgressOutputVoice languageCode];
    v6 = [languageCode length];

    if (v6)
    {
      v7 = inProgressOutputVoice;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v46 = *MEMORY[0x277D3FC48];
    if (self->_languageSpecifiers)
    {
      v4 = 1;
    }

    else
    {
      v4 = self->_voiceVariationGroupSpecifier != 0;
    }

    v45 = v4;
    v5 = [(AssistantVoiceController *)self loadSpecifiersFromPlistName:@"AssistantVoice" target:self];
    v6 = [v5 specifierForID:@"VOICE_LANGUAGE_GROUP"];
    languageGroupSpecifier = self->_languageGroupSpecifier;
    self->_languageGroupSpecifier = v6;

    v8 = +[AssistantVoiceController bundle];
    v9 = SFLocalizableWAPIStringKeyForKey();
    v10 = [v8 localizedStringForKey:v9 value:&stru_285317CF0 table:@"AssistantSettings"];
    [(PSSpecifier *)self->_languageGroupSpecifier setName:v10];

    v11 = [v5 specifierForID:@"VOICE_PROTO"];
    languageProto = self->_languageProto;
    self->_languageProto = v11;

    [v5 removeObject:self->_languageProto];
    v13 = [v5 specifierForID:@"VOICE_VARIATION_PROTO"];
    voiceVariationProto = self->_voiceVariationProto;
    self->_voiceVariationProto = v13;

    [v5 removeObject:self->_voiceVariationProto];
    if (+[AssistantUtilities deviceIsVision])
    {
      v15 = [v5 specifierForID:@"VOICE_FOOTER_GROUP"];
      [v5 removeObject:v15];
    }

    inProgressOutputVoice = [(AssistantVoiceController *)self inProgressOutputVoice];
    outputVoice = [(AssistantVoiceController *)self outputVoice];
    v18 = [(AssistantVoiceController *)self deriveVoicesWithTargetVoice:inProgressOutputVoice currentVoice:outputVoice];

    inProgressVoice = [v18 inProgressVoice];
    currentVoice = [v18 currentVoice];
    objc_storeStrong(&self->_currentVoice, currentVoice);
    v21 = [(AssistantVoiceController *)self viewModelWithInProgressVoice:inProgressVoice currentVoice:currentVoice];
    languageOptions = [v21 languageOptions];
    v23 = [languageOptions count];

    languageSpecifiers = self->_languageSpecifiers;
    if (v23 < 2)
    {
      self->_languageSpecifiers = 0;

      [v5 removeObject:self->_languageGroupSpecifier];
      v28 = self->_languageGroupSpecifier;
      self->_languageGroupSpecifier = 0;
    }

    else
    {
      if (!languageSpecifiers)
      {
        selectedLanguage = [v21 selectedLanguage];
        v26 = [(AssistantVoiceController *)self _languageSpecifiersForLanguage:selectedLanguage];
        v27 = self->_languageSpecifiers;
        self->_languageSpecifiers = v26;

        languageSpecifiers = self->_languageSpecifiers;
      }

      [v5 ps_insertObjectsFromArray:languageSpecifiers afterObject:self->_languageGroupSpecifier];
    }

    v29 = [v5 specifierForID:@"VOICE_VARIATION_GROUP"];
    voiceVariationGroupSpecifier = self->_voiceVariationGroupSpecifier;
    self->_voiceVariationGroupSpecifier = v29;

    [(PSSpecifier *)self->_voiceVariationGroupSpecifier setProperty:@"\n" forKey:*MEMORY[0x277D3FF88]];
    v31 = +[AssistantVoiceController bundle];
    v32 = SFLocalizableWAPIStringKeyForKey();
    v33 = [v31 localizedStringForKey:v32 value:&stru_285317CF0 table:@"AssistantSettings"];
    [(PSSpecifier *)self->_voiceVariationGroupSpecifier setName:v33];

    selectedLanguage2 = [v21 selectedLanguage];
    v35 = [(AssistantVoiceController *)self _voiceVariationSpecifiersForLanguage:selectedLanguage2];
    voiceVariationSpecifiers = self->_voiceVariationSpecifiers;
    self->_voiceVariationSpecifiers = v35;

    [v5 ps_insertObjectsFromArray:self->_voiceVariationSpecifiers afterObject:self->_voiceVariationGroupSpecifier];
    objc_storeStrong((&self->super.super.super.super.super.isa + v46), v5);
    inProgressOutputVoice2 = [(AssistantVoiceController *)self inProgressOutputVoice];
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__AssistantVoiceController_specifiers__block_invoke;
    aBlock[3] = &unk_278CD1888;
    objc_copyWeak(&v54, location);
    v38 = v21;
    v50 = v38;
    v39 = inProgressVoice;
    v51 = v39;
    v40 = v18;
    v52 = v40;
    v41 = inProgressOutputVoice2;
    v53 = v41;
    v42 = _Block_copy(aBlock);
    v43 = v42;
    if (v45)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__AssistantVoiceController_specifiers__block_invoke_2;
      block[3] = &unk_278CD18B0;
      v48 = v42;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      v42[2](v42);
    }

    objc_destroyWeak(&v54);
    objc_destroyWeak(location);

    v3 = *(&self->super.super.super.super.super.isa + v46);
  }

  return v3;
}

void __38__AssistantVoiceController_specifiers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained applyViewModel:*(a1 + 32)];
    v3 = [*(a1 + 40) name];
    if (v3 && ([v5 isCellularDataPermissionAllowedForVoice:*(a1 + 40)] & 1) == 0)
    {
      v4 = +[ASTNetworkReachability hasExpensiveCellOnlyNetworkConnection];

      if (v4)
      {
        [v5 presentVoiceDownloadConfirmationNoWifiAlertForVoice:*(a1 + 48) inProgressVoice:*(a1 + 40)];
LABEL_9:
        WeakRetained = v5;
        goto LABEL_10;
      }
    }

    else
    {
    }

    WeakRetained = v5;
    if (!*(a1 + 56))
    {
      goto LABEL_10;
    }

    [v5 setAssistantInProgressVoice:?];
    [v5 downloadVoice:*(a1 + 56)];
    goto LABEL_9;
  }

LABEL_10:
}

- (id)deriveVoicesWithTargetVoice:(id)voice currentVoice:(id)currentVoice
{
  voiceCopy = voice;
  currentVoiceCopy = currentVoice;
  if (!voiceCopy)
  {
    if ([(AssistantVoiceController *)self isVoiceInstalled:currentVoiceCopy])
    {
      v8 = 0;
    }

    else
    {
      v8 = currentVoiceCopy;
    }

    goto LABEL_10;
  }

  if (![(AssistantVoiceController *)self isVoiceInstalled:voiceCopy])
  {
    if (!-[AssistantVoiceController isVoiceInstalled:](self, "isVoiceInstalled:", currentVoiceCopy) || ([MEMORY[0x277CEF2D8] sharedInstance], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(voiceCopy, "languageCode"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "getBaseLocale:", v10), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CEF2D8], "sharedInstance"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(currentVoiceCopy, "languageCode"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "getBaseLocale:", v13), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v11, "isEqualToString:", v14), v14, v13, v12, v11, v10, v9, !v15))
    {
      v8 = voiceCopy;
      goto LABEL_12;
    }

    v8 = voiceCopy;
LABEL_10:
    v16 = currentVoiceCopy;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_12:
  v16 = voiceCopy;
LABEL_13:
  v17 = [AssistantVoiceControllerVoiceSettings settingsWithInProgressVoice:v8 currentVoice:v16];

  return v17;
}

- (id)viewModelWithInProgressVoice:(id)voice currentVoice:(id)currentVoice
{
  voiceCopy = voice;
  currentVoiceCopy = currentVoice;
  v8 = objc_alloc_init(AssistantVoiceViewModel);
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
  languageCode = [mEMORY[0x277CEF368]2 languageCode];
  v12 = [mEMORY[0x277CEF368] multilingualResponseEnabledForLanguage:languageCode];

  [(AssistantVoiceViewModel *)v8 setInProgressVoice:voiceCopy];
  [(AssistantVoiceViewModel *)v8 setCurrentVoice:currentVoiceCopy];
  if (!voiceCopy)
  {
    languageCode2 = [currentVoiceCopy languageCode];
    [(AssistantVoiceViewModel *)v8 setSelectedLanguage:languageCode2];

    v15 = MEMORY[0x277CBEB98];
    if (v12)
    {
      selectedLanguage = [(AssistantVoiceViewModel *)v8 selectedLanguage];
      selectedLanguage2 = [v15 setWithObjects:{selectedLanguage, 0}];
      [(AssistantVoiceViewModel *)v8 setLanguageOptions:selectedLanguage2];
    }

    else
    {
      selectedLanguage = [MEMORY[0x277CEF2D8] sharedInstance];
      selectedLanguage2 = [(AssistantVoiceViewModel *)v8 selectedLanguage];
      v29 = [selectedLanguage allOutputVoiceIdentifiersForSiriLanguage:selectedLanguage2];
      v30 = [v15 setWithArray:v29];
      [(AssistantVoiceViewModel *)v8 setLanguageOptions:v30];
    }

    settingsConnection = self->_settingsConnection;
    selectedLanguage3 = [(AssistantVoiceViewModel *)v8 selectedLanguage];
    [(AssistantVoiceViewModel *)v8 setShouldShowVoiceVariationGroup:[(SUICAssistantVoiceSettingsConnection *)settingsConnection languageHasVoiceVariations:selectedLanguage3]];

    [(AssistantVoiceViewModel *)v8 setVoiceVariationToSpin:0];
    v33 = currentVoiceCopy;
    goto LABEL_29;
  }

  if ([(AssistantVoiceController *)self isCellularDataPermissionAllowedForVoice:voiceCopy])
  {
    v13 = 1;
  }

  else
  {
    v13 = !+[ASTNetworkReachability hasExpensiveCellOnlyNetworkConnection];
  }

  languageCode3 = [voiceCopy languageCode];
  [(AssistantVoiceViewModel *)v8 setSelectedLanguage:languageCode3];

  v19 = MEMORY[0x277CBEB98];
  if (v12)
  {
    selectedLanguage4 = [(AssistantVoiceViewModel *)v8 selectedLanguage];
    selectedLanguage5 = [v19 setWithObjects:{selectedLanguage4, 0}];
    [(AssistantVoiceViewModel *)v8 setLanguageOptions:selectedLanguage5];
  }

  else
  {
    selectedLanguage4 = [MEMORY[0x277CEF2D8] sharedInstance];
    selectedLanguage5 = [(AssistantVoiceViewModel *)v8 selectedLanguage];
    v22 = [selectedLanguage4 allOutputVoiceIdentifiersForSiriLanguage:selectedLanguage5];
    v23 = [v19 setWithArray:v22];
    [(AssistantVoiceViewModel *)v8 setLanguageOptions:v23];
  }

  if (v13)
  {
    languageOptions = [(AssistantVoiceViewModel *)v8 languageOptions];
    if ([languageOptions count] <= 1)
    {
      [(AssistantVoiceViewModel *)v8 setSpinningOnLanguage:0];
    }

    else
    {
      languageCode4 = [voiceCopy languageCode];
      languageCode5 = [currentVoiceCopy languageCode];
      if ([languageCode4 isEqualToString:languageCode5])
      {
        gender = [voiceCopy gender];
        v28 = gender == [currentVoiceCopy gender];
      }

      else
      {
        v28 = 1;
      }

      [(AssistantVoiceViewModel *)v8 setSpinningOnLanguage:v28];
    }
  }

  else
  {
    [(AssistantVoiceViewModel *)v8 setSpinningOnLanguage:0];
  }

  v34 = self->_settingsConnection;
  selectedLanguage6 = [(AssistantVoiceViewModel *)v8 selectedLanguage];
  [(AssistantVoiceViewModel *)v8 setShouldShowVoiceVariationGroup:[(SUICAssistantVoiceSettingsConnection *)v34 languageHasVoiceVariations:selectedLanguage6]];

  if ([(AssistantVoiceViewModel *)v8 shouldShowVoiceVariationGroup])
  {
    [(AssistantVoiceViewModel *)v8 setLanguageGroupFooterText:0];
    v36 = +[AssistantVoiceController bundle];
    v37 = SFLocalizableWAPIStringKeyForKey();
    v38 = [v36 localizedStringForKey:v37 value:&stru_285317CF0 table:@"AssistantSettings"];
    [(AssistantVoiceViewModel *)v8 setVoiceVariationGroupFooterText:v38];
  }

  else
  {
    [(AssistantVoiceViewModel *)v8 setVoiceVariationGroupFooterText:0];
    v36 = +[AssistantVoiceController bundle];
    v37 = SFLocalizableWAPIStringKeyForKey();
    v38 = [v36 localizedStringForKey:v37 value:&stru_285317CF0 table:@"AssistantSettings"];
    [(AssistantVoiceViewModel *)v8 setLanguageGroupFooterText:v38];
  }

  if (!v13)
  {
    [(AssistantVoiceViewModel *)v8 setVoiceVariationToSpin:0];
    v33 = voiceCopy;
LABEL_29:
    name = [v33 name];
    v43 = v8;
    v44 = name;
    goto LABEL_30;
  }

  name2 = [voiceCopy name];
  [(AssistantVoiceViewModel *)v8 setVoiceVariationToSpin:name2];

  name = [currentVoiceCopy name];
  if (name)
  {
    name3 = [voiceCopy name];
    name4 = [currentVoiceCopy name];
    if ([name3 isEqualToString:name4])
    {
      [(AssistantVoiceViewModel *)v8 setVoiceVariationToCheckMark:0];
    }

    else
    {
      name5 = [currentVoiceCopy name];
      [(AssistantVoiceViewModel *)v8 setVoiceVariationToCheckMark:name5];
    }

    goto LABEL_31;
  }

  v43 = v8;
  v44 = 0;
LABEL_30:
  [(AssistantVoiceViewModel *)v43 setVoiceVariationToCheckMark:v44];
LABEL_31:

  return v8;
}

- (void)applyViewModel:(id)model
{
  v23 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  specifiers = [(AssistantVoiceController *)self specifiers];
  v6 = [specifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(specifiers);
        }

        [*(*(&v18 + 1) + 8 * i) setProperty:v9 forKey:@"IS_VOICE_DOWNLOADING"];
      }

      v7 = [specifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  languageSpecifiers = self->_languageSpecifiers;
  selectedLanguage = [(AssistantVoiceViewModel *)modelCopy selectedLanguage];
  v13 = [(NSArray *)languageSpecifiers specifierForID:selectedLanguage];

  if ([(AssistantVoiceViewModel *)modelCopy spinningOnLanguage])
  {
    [v13 setProperty:MEMORY[0x277CBEC38] forKey:@"IS_VOICE_DOWNLOADING"];
    [(PSSpecifier *)self->_languageGroupSpecifier removePropertyForKey:*MEMORY[0x277D40090]];
  }

  else
  {
    [(PSSpecifier *)self->_languageGroupSpecifier setProperty:v13 forKey:*MEMORY[0x277D40090]];
  }

  languageGroupFooterText = [(AssistantVoiceViewModel *)modelCopy languageGroupFooterText];

  languageGroupSpecifier = self->_languageGroupSpecifier;
  if (languageGroupFooterText)
  {
    languageGroupFooterText2 = [(AssistantVoiceViewModel *)modelCopy languageGroupFooterText];
    [(PSSpecifier *)languageGroupSpecifier setProperty:languageGroupFooterText2 forKey:*MEMORY[0x277D3FF88]];
  }

  else
  {
    [(PSSpecifier *)self->_languageGroupSpecifier removePropertyForKey:*MEMORY[0x277D3FF88]];
  }

  if (self->_languageGroupSpecifier)
  {
    [(AssistantVoiceController *)self reloadSpecifier:?];
  }

  [(AssistantVoiceController *)self updateVoiceVariationGroupUI:modelCopy];
  currentViewModel = self->_currentViewModel;
  self->_currentViewModel = modelCopy;
}

- (void)updateVoiceVariationGroupUI:(id)i
{
  iCopy = i;
  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  selectedLanguage = [(AssistantVoiceViewModel *)self->_currentViewModel selectedLanguage];
  v6 = [mEMORY[0x277CEF2D8] getBaseLocale:selectedLanguage];
  mEMORY[0x277CEF2D8]2 = [MEMORY[0x277CEF2D8] sharedInstance];
  selectedLanguage2 = [iCopy selectedLanguage];
  v9 = [mEMORY[0x277CEF2D8]2 getBaseLocale:selectedLanguage2];
  v10 = [v6 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    [(AssistantVoiceController *)self removeContiguousSpecifiers:self->_voiceVariationSpecifiers animated:1];
    selectedLanguage3 = [iCopy selectedLanguage];
    v12 = [(AssistantVoiceController *)self _voiceVariationSpecifiersForLanguage:selectedLanguage3];
    voiceVariationSpecifiers = self->_voiceVariationSpecifiers;
    self->_voiceVariationSpecifiers = v12;

    v14 = self->_voiceVariationSpecifiers;
    lastObject = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) lastObject];
    [(AssistantVoiceController *)self insertContiguousSpecifiers:v14 afterSpecifier:lastObject animated:1];
  }

  voiceVariationToSpin = [iCopy voiceVariationToSpin];

  if (voiceVariationToSpin)
  {
    v17 = self->_voiceVariationSpecifiers;
    voiceVariationToSpin2 = [iCopy voiceVariationToSpin];
    v19 = [(NSArray *)v17 specifierForID:voiceVariationToSpin2];

    [v19 setProperty:MEMORY[0x277CBEC38] forKey:@"IS_VOICE_DOWNLOADING"];
  }

  voiceVariationToCheckMark = [iCopy voiceVariationToCheckMark];

  voiceVariationGroupSpecifier = self->_voiceVariationGroupSpecifier;
  if (voiceVariationToCheckMark)
  {
    v22 = self->_voiceVariationSpecifiers;
    voiceVariationToCheckMark2 = [iCopy voiceVariationToCheckMark];
    v24 = [(NSArray *)v22 specifierForID:voiceVariationToCheckMark2];
    [(PSSpecifier *)voiceVariationGroupSpecifier setProperty:v24 forKey:*MEMORY[0x277D40090]];
  }

  else
  {
    [(PSSpecifier *)self->_voiceVariationGroupSpecifier removePropertyForKey:*MEMORY[0x277D40090]];
  }

  voiceVariationGroupFooterText = [iCopy voiceVariationGroupFooterText];

  v26 = self->_voiceVariationGroupSpecifier;
  if (voiceVariationGroupFooterText)
  {
    voiceVariationGroupFooterText2 = [iCopy voiceVariationGroupFooterText];
    [(PSSpecifier *)v26 setProperty:voiceVariationGroupFooterText2 forKey:*MEMORY[0x277D3FF88]];
  }

  else
  {
    [(PSSpecifier *)self->_voiceVariationGroupSpecifier setProperty:@"\n" forKey:*MEMORY[0x277D3FF88]];
  }

  if (self->_voiceVariationGroupSpecifier)
  {
    [(AssistantVoiceController *)self reloadSpecifier:?];
  }
}

- (void)updateDownloadProgress:(float)progress
{
  if (progress >= 0.0)
  {
    v7 = MEMORY[0x277CCACA8];
    v4 = +[AssistantVoiceController bundle];
    v5 = SFLocalizableWAPIStringKeyForKey();
    v8 = [v4 localizedStringForKey:v5 value:&stru_285317CF0 table:@"AssistantSettings"];
    v9 = MEMORY[0x277CCABB8];
    *&v10 = progress;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    v12 = [v9 localizedStringFromNumber:v11 numberStyle:3];
    v17 = [v7 stringWithFormat:v8, v12];
  }

  else
  {
    v4 = +[AssistantVoiceController bundle];
    v5 = SFLocalizableWAPIStringKeyForKey();
    v17 = [v4 localizedStringForKey:v5 value:&stru_285317CF0 table:@"AssistantSettings"];
  }

  languageGroupFooterText = [(AssistantVoiceViewModel *)self->_currentViewModel languageGroupFooterText];

  if (languageGroupFooterText)
  {
    v14 = &OBJC_IVAR___AssistantVoiceController__languageGroupSpecifier;
    v15 = v17;
  }

  else
  {
    voiceVariationGroupFooterText = [(AssistantVoiceViewModel *)self->_currentViewModel voiceVariationGroupFooterText];

    v15 = v17;
    if (!voiceVariationGroupFooterText)
    {
      goto LABEL_9;
    }

    v14 = &OBJC_IVAR___AssistantVoiceController__voiceVariationGroupSpecifier;
  }

  [(AssistantVoiceController *)self updateFooterText:v15 forSpecifier:*(&self->super.super.super.super.super.isa + *v14)];
LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (id)dialectsForLanguageIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(SUICAssistantVoiceSettingsConnection *)self->_settingsConnection dialectForLanguageIdentifier:v11, v14];
        [v5 setObject:v12 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)uniqueLocaleForLanguageWithDialect:(id)dialect
{
  v3 = MEMORY[0x277CEF2D8];
  dialectCopy = dialect;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance baseLocaleToDialectMapForLanguage:dialectCopy];

  return v6;
}

- (id)_languageSpecifiersForLanguage:(id)language
{
  v29 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  v6 = [mEMORY[0x277CEF2D8] allOutputVoiceIdentifiersForSiriLanguage:languageCopy];

  if ([v6 count] < 2)
  {
    v12 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v8 = [(AssistantVoiceController *)self dialectsForLanguageIdentifiers:v7];

    allKeys = [v8 allKeys];
    v10 = [allKeys mutableCopy];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __59__AssistantVoiceController__languageSpecifiersForLanguage___block_invoke;
    v26[3] = &unk_278CD18D8;
    v11 = v8;
    v27 = v11;
    [v10 sortUsingComparator:v26];
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v10;
    v13 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [MEMORY[0x277D3FAD8] specifierWithSpecifier:self->_languageProto];
          [v18 setIdentifier:v17];
          v19 = [v11 objectForKey:v17];
          [v18 setName:v19];

          [v12 addObject:v18];
        }

        v14 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v14);
    }
  }

  return v12;
}

uint64_t __59__AssistantVoiceController__languageSpecifiersForLanguage___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (id)_voiceVariationSpecifiersForLanguage:(id)language
{
  v47 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  v5 = [mEMORY[0x277CEF2D8] getBaseLocale:languageCopy];

  mEMORY[0x277CEF2D8]2 = [MEMORY[0x277CEF2D8] sharedInstance];
  v7 = [mEMORY[0x277CEF2D8]2 baseLocaleToDialectMapForLanguage:languageCopy];
  v34 = v5;
  v8 = [v7 objectForKey:v5];

  v35 = languageCopy;
  v9 = [MEMORY[0x277CEF528] allVoicesForSiriSessionLanguage:languageCopy];
  v10 = MEMORY[0x277CCAC30];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __65__AssistantVoiceController__voiceVariationSpecifiersForLanguage___block_invoke;
  v42[3] = &unk_278CD1900;
  v33 = v8;
  v43 = v33;
  v11 = [v10 predicateWithBlock:v42];
  v12 = [v9 filteredArrayUsingPredicate:v11];

  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  mEMORY[0x277CEF2D8]3 = [MEMORY[0x277CEF2D8] sharedInstance];
  outputVoiceComparator = [mEMORY[0x277CEF2D8]3 outputVoiceComparator];
  v32 = v12;
  v16 = [v12 sortedArrayUsingComparator:outputVoiceComparator];

  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        v22 = [MEMORY[0x277D3FAD8] specifierWithSpecifier:self->_voiceVariationProto];
        mEMORY[0x277CEF2D8]4 = [MEMORY[0x277CEF2D8] sharedInstance];
        languageCode = [v21 languageCode];
        name = [v21 name];
        v26 = [mEMORY[0x277CEF2D8]4 outputVoiceDescriptorForOutputLanguageCode:languageCode voiceName:name];

        name2 = [v21 name];
        [v22 setIdentifier:name2];

        localizedDisplay = [v26 localizedDisplay];
        [v22 setName:localizedDisplay];

        v44 = @"VOICE_LOCALE";
        languageCode2 = [v21 languageCode];
        v45 = languageCode2;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        [v22 setTitleDictionary:v30];

        [v13 addObject:v22];
      }

      v18 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v18);
  }

  return v13;
}

uint64_t __65__AssistantVoiceController__voiceVariationSpecifiersForLanguage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 languageCode];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)setAssistantOutputVoice:(id)voice
{
  voiceCopy = voice;
  if (self->_currentVoice != voiceCopy)
  {
    v6 = voiceCopy;
    objc_storeStrong(&self->_currentVoice, voice);
    [(AssistantVoiceController *)self setOutputVoicePreference:v6];
    voiceCopy = v6;
  }
}

- (void)setOutputVoicePreference:(id)preference
{
  v3 = MEMORY[0x277CEF368];
  preferenceCopy = preference;
  sharedPreferences = [v3 sharedPreferences];
  [sharedPreferences setOutputVoice:preferenceCopy];
}

- (void)setAssistantInProgressVoice:(id)voice
{
  voiceCopy = voice;
  if (self->_inProgressVoice != voiceCopy)
  {
    v6 = voiceCopy;
    objc_storeStrong(&self->_inProgressVoice, voice);
    [(AssistantVoiceController *)self setInProgressVoicePreference:v6];
    voiceCopy = v6;
  }
}

- (void)setInProgressVoicePreference:(id)preference
{
  v3 = MEMORY[0x277CEF368];
  preferenceCopy = preference;
  sharedPreferences = [v3 sharedPreferences];
  [sharedPreferences setInProgressOutputVoice:preferenceCopy];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v68 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  ADClientAddValueForScalarKey();
  self->_ignoreNextVoiceChangeNotification = 1;
  v8 = [(AssistantVoiceController *)self indexForIndexPath:pathCopy];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:v8];
    languageCode = [(AFVoiceInfo *)self->_currentVoice languageCode];
    name = [(AFVoiceInfo *)self->_inProgressVoice name];
    v12 = name;
    if (name)
    {
      name2 = name;
    }

    else
    {
      name2 = [(AFVoiceInfo *)self->_currentVoice name];
    }

    v49 = name2;

    v47 = v9;
    v48 = languageCode;
    if ([(NSArray *)self->_voiceVariationSpecifiers indexOfObject:v9]== 0x7FFFFFFFFFFFFFFFLL)
    {
      identifier = [v9 identifier];
      mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
      v50 = identifier;
      v16 = [mEMORY[0x277CEF2D8] voiceSimilarToVoice:self->_currentVoice inSiriSessionLanguage:identifier];

      name3 = [v16 name];
      gender = [v16 gender];
      v18 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = AFVoiceGenderGetName();
        *buf = 136315906;
        v58 = "[AssistantVoiceController tableView:didSelectRowAtIndexPath:]";
        v59 = 2112;
        v60 = v50;
        v61 = 2112;
        v62 = name3;
        v63 = 2112;
        v64 = v20;
        _os_log_impl(&dword_2413B9000, v19, OS_LOG_TYPE_DEFAULT, "%s #VoiceServices selecting language variety: %@ %@ %@", buf, 0x2Au);
      }
    }

    else
    {
      titleDictionary = [v9 titleDictionary];
      v50 = [titleDictionary objectForKey:@"VOICE_LOCALE"];

      name3 = [v9 identifier];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v23 = [MEMORY[0x277CEF528] allVoicesForSiriSessionLanguage:languageCode];
      v24 = [v23 countByEnumeratingWithState:&v53 objects:v67 count:16];
      if (v24)
      {
        v25 = v24;
        v46 = viewCopy;
        v26 = *v54;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v54 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v53 + 1) + 8 * i);
            name4 = [v28 name];
            v30 = [name4 isEqualToString:name3];

            if (v30)
            {
              gender = [v28 gender];
              goto LABEL_20;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v53 objects:v67 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }

        gender = 0;
LABEL_20:
        viewCopy = v46;
        v9 = v47;
      }

      else
      {
        gender = 0;
      }

      v31 = *MEMORY[0x277CEF098];
      languageCode = v48;
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v32 = v31;
        v33 = AFVoiceGenderGetName();
        *buf = 136316162;
        v58 = "[AssistantVoiceController tableView:didSelectRowAtIndexPath:]";
        v59 = 2112;
        v60 = v48;
        v61 = 2112;
        v62 = v50;
        v63 = 2112;
        v64 = name3;
        v65 = 2112;
        v66 = v33;
        _os_log_impl(&dword_2413B9000, v32, OS_LOG_TYPE_DEFAULT, "%s #VoiceServices selecting voice variation: %@ --> %@ %@ %@", buf, 0x34u);
      }
    }

    v34 = v50;
    if (!v50)
    {
      goto LABEL_46;
    }

    mEMORY[0x277CEF2D8]2 = [MEMORY[0x277CEF2D8] sharedInstance];
    v36 = [mEMORY[0x277CEF2D8]2 getBaseLocale:languageCode];
    mEMORY[0x277CEF2D8]3 = [MEMORY[0x277CEF2D8] sharedInstance];
    v38 = [mEMORY[0x277CEF2D8]3 getBaseLocale:v50];
    if ([v36 isEqualToString:v38])
    {
      if (!name3)
      {

LABEL_39:
        v52.receiver = self;
        v52.super_class = AssistantVoiceController;
        [(AssistantVoiceController *)&v52 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
        v43 = *MEMORY[0x277CEF098];
        v34 = v50;
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v58 = "[AssistantVoiceController tableView:didSelectRowAtIndexPath:]";
          _os_log_impl(&dword_2413B9000, v43, OS_LOG_TYPE_DEFAULT, "%s #SiriTTSService same voice selection", buf, 0xCu);
        }

        languageCode = v48;
        v40 = [objc_alloc(MEMORY[0x277CEF528]) initWithLanguageCode:v48 gender:0 isCustom:1 name:v49 footprint:0 contentVersion:0 masteredVersion:0];
        [(AssistantVoiceController *)self playVoicePreview:v40];
        v9 = v47;
        goto LABEL_45;
      }

      v39 = [v49 isEqualToString:name3];

      if (v39)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    v34 = v50;
    v40 = [(AssistantVoiceController *)self voiceSettingsForLanguageCode:v50 name:name3 gender:gender];
    inProgressVoice = [v40 inProgressVoice];
    if (inProgressVoice && !+[ASTNetworkReachability hasNetworkConnection])
    {
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      [(AssistantVoiceController *)self presentVoiceDownloadDisabledNoInternetAlert];
      [(AssistantVoiceController *)self playVoicePreview:inProgressVoice];
      v9 = v47;
      languageCode = v48;
    }

    else
    {
      name5 = [inProgressVoice name];
      if (!name5 || [(AssistantVoiceController *)self isCellularDataPermissionAllowedForVoice:inProgressVoice])
      {

        languageCode = v48;
LABEL_35:
        v51.receiver = self;
        v51.super_class = AssistantVoiceController;
        [(AssistantVoiceController *)&v51 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
        [(AssistantVoiceController *)self selectVoice:v40 inProgressVoice:inProgressVoice];
        v34 = v50;
        if (inProgressVoice)
        {
          [(AssistantVoiceController *)self playVoicePreview:inProgressVoice];
        }

        else
        {
          currentVoice = [v40 currentVoice];
          [(AssistantVoiceController *)self playVoicePreview:currentVoice];

          v34 = v50;
        }

        v9 = v47;
        goto LABEL_44;
      }

      v45 = +[ASTNetworkReachability hasExpensiveCellOnlyNetworkConnection];

      languageCode = v48;
      if (!v45)
      {
        goto LABEL_35;
      }

      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      [(AssistantVoiceController *)self presentVoiceDownloadConfirmationNoWifiAlertForVoice:v40 inProgressVoice:inProgressVoice];
      v9 = v47;
      v34 = v50;
    }

LABEL_44:

LABEL_45:
LABEL_46:
  }
}

- (void)selectVoice:(id)voice inProgressVoice:(id)progressVoice
{
  v21 = *MEMORY[0x277D85DE8];
  voiceCopy = voice;
  progressVoiceCopy = progressVoice;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[AssistantVoiceController selectVoice:inProgressVoice:]";
    _os_log_impl(&dword_2413B9000, v8, OS_LOG_TYPE_DEFAULT, "%s #VoiceServices applying voice selection", buf, 0xCu);
  }

  currentVoice = [voiceCopy currentVoice];
  v10 = [(AssistantVoiceController *)self viewModelWithInProgressVoice:progressVoiceCopy currentVoice:currentVoice];
  [(AssistantVoiceController *)self applyViewModel:v10];
  if (progressVoiceCopy)
  {
    inProgressVoice = [v10 inProgressVoice];
    [(AssistantVoiceController *)self downloadVoice:inProgressVoice];
  }

  else
  {
    [(AssistantVoiceController *)self stopAllDownload];
  }

  v12 = self->_currentVoice;
  v13 = self->_inProgressVoice;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__AssistantVoiceController_selectVoice_inProgressVoice___block_invoke;
  v16[3] = &unk_278CD1928;
  v16[4] = self;
  v17 = v13;
  v18 = v12;
  v14 = v12;
  v15 = v13;
  [(AssistantVoiceController *)self registerUndoActionWithKey:@"VOICE" urlString:@"prefs:root=SIRI&path=VOICE_LANGUAGE_GROUP" undoAction:v16];
  [(AssistantVoiceController *)self setAssistantInProgressVoice:progressVoiceCopy];
  [(AssistantVoiceController *)self setAssistantOutputVoice:currentVoice];
  [(AssistantVoiceController *)self _signalDidSelectVoice];
}

uint64_t __56__AssistantVoiceController_selectVoice_inProgressVoice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAssistantInProgressVoice:*(a1 + 40)];
  [*(a1 + 32) setAssistantOutputVoice:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

- (void)playVoicePreview:(id)preview
{
  v23 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  languageCode = [previewCopy languageCode];

  if (languageCode)
  {
    metrics = [(AssistantVoiceController *)self metrics];
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "[AssistantVoiceController playVoicePreview:]";
      _os_log_impl(&dword_2413B9000, v7, OS_LOG_TYPE_DEFAULT, "%s #SiriTTSService playing preview", buf, 0xCu);
    }

    v8 = objc_alloc(MEMORY[0x277D61478]);
    languageCode2 = [previewCopy languageCode];
    name = [previewCopy name];
    v11 = [v8 initWithLanguage:languageCode2 name:name];

    v12 = [objc_alloc(MEMORY[0x277D61438]) initWithVoice:v11 previewType:0];
    lastPreviewRequest = self->_lastPreviewRequest;
    self->_lastPreviewRequest = v12;
    v14 = v12;

    session = self->_session;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__AssistantVoiceController_playVoicePreview___block_invoke;
    v19[3] = &unk_278CD1950;
    v20 = metrics;
    v16 = metrics;
    [(SiriTTSDaemonSession *)session speakWithPreviewRequest:v14 didFinish:v19];
    languageCode3 = [previewCopy languageCode];
    name2 = [previewCopy name];
    [v16 setVoicePreviewedForLanguageCode:languageCode3 name:name2];
  }
}

- (id)voiceSettingsForLanguageCode:(id)code name:(id)name gender:(int64_t)gender
{
  v8 = MEMORY[0x277CEF528];
  nameCopy = name;
  codeCopy = code;
  v11 = [[v8 alloc] initWithLanguageCode:codeCopy gender:gender isCustom:1 name:nameCopy footprint:0 contentVersion:0 masteredVersion:0];

  v12 = [(AssistantVoiceController *)self deriveVoicesWithTargetVoice:v11 currentVoice:self->_currentVoice];

  return v12;
}

- (void)presentVoiceDownloadDisabledNoInternetAlert
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[AssistantVoiceController presentVoiceDownloadDisabledNoInternetAlert]";
    _os_log_impl(&dword_2413B9000, v3, OS_LOG_TYPE_DEFAULT, "%s #VoiceServices presenting no internet alert", &v16, 0xCu);
  }

  v4 = +[AssistantVoiceController bundle];
  v5 = SFLocalizableWAPIStringKeyForKey();
  v6 = [v4 localizedStringForKey:v5 value:&stru_285317CF0 table:@"AssistantSettings"];

  v7 = +[AssistantVoiceController bundle];
  v8 = SFLocalizableWAPIStringKeyForKey();
  v9 = [v7 localizedStringForKey:v8 value:&stru_285317CF0 table:@"AssistantSettings"];

  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v9 preferredStyle:1];
  v11 = MEMORY[0x277D750F8];
  v12 = +[AssistantVoiceController bundle];
  v13 = SFLocalizableWAPIStringKeyForKey();
  v14 = [v12 localizedStringForKey:v13 value:&stru_285317CF0 table:@"AssistantSettings"];
  v15 = [v11 actionWithTitle:v14 style:0 handler:0];
  [v10 addAction:v15];

  [(AssistantVoiceController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)presentVoiceDownloadDisabledNoWifiAlert
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[AssistantVoiceController presentVoiceDownloadDisabledNoWifiAlert]";
    _os_log_impl(&dword_2413B9000, v3, OS_LOG_TYPE_DEFAULT, "%s #VoiceServices presenting no Wi-Fi alert", &v16, 0xCu);
  }

  v4 = +[AssistantVoiceController bundle];
  v5 = SFLocalizableWAPIStringKeyForKey();
  v6 = [v4 localizedStringForKey:v5 value:&stru_285317CF0 table:@"AssistantSettings"];

  v7 = +[AssistantVoiceController bundle];
  v8 = SFLocalizableWAPIStringKeyForKey();
  v9 = [v7 localizedStringForKey:v8 value:&stru_285317CF0 table:@"AssistantSettings"];

  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v9 preferredStyle:1];
  v11 = MEMORY[0x277D750F8];
  v12 = +[AssistantVoiceController bundle];
  v13 = SFLocalizableWAPIStringKeyForKey();
  v14 = [v12 localizedStringForKey:v13 value:&stru_285317CF0 table:@"AssistantSettings"];
  v15 = [v11 actionWithTitle:v14 style:0 handler:0];
  [v10 addAction:v15];

  [(AssistantVoiceController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)presentVoiceDownloadConfirmationNoWifiAlertForVoice:(id)voice inProgressVoice:(id)progressVoice
{
  v61[2] = *MEMORY[0x277D85DE8];
  voiceCopy = voice;
  progressVoiceCopy = progressVoice;
  languageCode = [progressVoiceCopy languageCode];
  v9 = MEMORY[0x277CEF098];
  if (!languageCode || (v10 = languageCode, [progressVoiceCopy name], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
  {
    v12 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_FAULT))
    {
      [AssistantVoiceController presentVoiceDownloadConfirmationNoWifiAlertForVoice:v12 inProgressVoice:?];
    }
  }

  v60[0] = &unk_2853200A0;
  languageCode2 = [progressVoiceCopy languageCode];
  v14 = languageCode2;
  if (languageCode2)
  {
    v15 = languageCode2;
  }

  else
  {
    v15 = &stru_285317CF0;
  }

  v61[0] = v15;
  v60[1] = &unk_2853200B8;
  name = [progressVoiceCopy name];
  v17 = name;
  if (name)
  {
    v18 = name;
  }

  else
  {
    v18 = &stru_285317CF0;
  }

  v61[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];

  v20 = MEMORY[0x277D61480];
  gryphonVoice = [MEMORY[0x277D61490] gryphonVoice];
  v59 = gryphonVoice;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
  v23 = [v20 bestAssetOfTypes:v22 matching:v19];

  if (!v23)
  {
    v24 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v56 = "[AssistantVoiceController presentVoiceDownloadConfirmationNoWifiAlertForVoice:inProgressVoice:]";
      v57 = 2112;
      v58 = progressVoiceCopy;
      _os_log_impl(&dword_2413B9000, v24, OS_LOG_TYPE_DEFAULT, "%s Unable to find a voice with voice predicate: %@", buf, 0x16u);
    }
  }

  downloadSize = [v23 downloadSize];
  [downloadSize floatValue];
  v27 = v26;

  v28 = *v9;
  if (v27 <= 0.0)
  {
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      [AssistantVoiceController presentVoiceDownloadConfirmationNoWifiAlertForVoice:progressVoiceCopy inProgressVoice:v28];
    }

    [(AssistantVoiceController *)self presentVoiceDownloadDisabledNoWifiAlert];
    [(AssistantVoiceController *)self playVoicePreview:progressVoiceCopy];
  }

  else
  {
    v51 = voiceCopy;
    selfCopy = self;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v56 = "[AssistantVoiceController presentVoiceDownloadConfirmationNoWifiAlertForVoice:inProgressVoice:]";
      v57 = 2112;
      v58 = progressVoiceCopy;
      _os_log_impl(&dword_2413B9000, v28, OS_LOG_TYPE_DEFAULT, "%s #VoiceDownload presenting no Wi-Fi -should confirm cellular- alert for voice: %@", buf, 0x16u);
    }

    v29 = +[AssistantVoiceController bundle];
    v30 = SFLocalizableWAPIStringKeyForKey();
    v50 = [v29 localizedStringForKey:v30 value:&stru_285317CF0 table:@"AssistantSettings"];

    v31 = MEMORY[0x277CCACA8];
    v32 = +[AssistantVoiceController bundle];
    v33 = SFLocalizableWAPIStringKeyForKey();
    v34 = [v32 localizedStringForKey:v33 value:&stru_285317CF0 table:@"AssistantSettings"];
    v35 = [MEMORY[0x277CCA8E8] stringFromByteCount:v27 countStyle:0];
    v49 = [v31 stringWithFormat:v34, v35];

    v36 = [MEMORY[0x277D75110] alertControllerWithTitle:v50 message:v49 preferredStyle:1];
    v37 = MEMORY[0x277D750F8];
    v38 = +[AssistantVoiceController bundle];
    v39 = SFLocalizableWAPIStringKeyForKey();
    v40 = [v38 localizedStringForKey:v39 value:&stru_285317CF0 table:@"AssistantSettings"];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __96__AssistantVoiceController_presentVoiceDownloadConfirmationNoWifiAlertForVoice_inProgressVoice___block_invoke;
    v52[3] = &unk_278CD1978;
    v52[4] = selfCopy;
    v41 = progressVoiceCopy;
    v53 = v41;
    v54 = v51;
    v42 = [v37 actionWithTitle:v40 style:0 handler:v52];
    [v36 addAction:v42];

    v43 = MEMORY[0x277D750F8];
    v44 = +[AssistantVoiceController bundle];
    v45 = SFLocalizableWAPIStringKeyForKey();
    v46 = [v44 localizedStringForKey:v45 value:&stru_285317CF0 table:@"AssistantSettings"];
    v47 = [v43 actionWithTitle:v46 style:1 handler:0];
    [v36 addAction:v47];

    voiceCopy = v51;
    [(AssistantVoiceController *)selfCopy presentViewController:v36 animated:1 completion:0];
    [(AssistantVoiceController *)selfCopy playVoicePreview:v41];
  }
}

uint64_t __96__AssistantVoiceController_presentVoiceDownloadConfirmationNoWifiAlertForVoice_inProgressVoice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) grantCellularDataPermissionForVoice:*(a1 + 40)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 selectVoice:v2 inProgressVoice:v3];
}

+ (BOOL)asset:(id)asset matchesVoice:(id)voice
{
  assetCopy = asset;
  voiceCopy = voice;
  primaryLanguage = [assetCopy primaryLanguage];
  languageCode = [voiceCopy languageCode];
  if ([primaryLanguage isEqualToString:languageCode])
  {
    name = [assetCopy name];
    name2 = [voiceCopy name];
    v11 = [name isEqualToString:name2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)downloadVoice:(id)voice
{
  v30[2] = *MEMORY[0x277D85DE8];
  voiceCopy = voice;
  languageCode = [voiceCopy languageCode];
  if (languageCode)
  {
    downloadingAsset = self->_downloadingAsset;
    if (!downloadingAsset || ![AssistantVoiceController asset:downloadingAsset matchesVoice:voiceCopy])
    {
      v29[0] = &unk_2853200A0;
      languageCode2 = [voiceCopy languageCode];
      v29[1] = &unk_2853200B8;
      v30[0] = languageCode2;
      name = [voiceCopy name];
      v30[1] = name;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

      v10 = MEMORY[0x277D61480];
      gryphonVoice = [MEMORY[0x277D61490] gryphonVoice];
      v28 = gryphonVoice;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      v13 = [v10 bestAssetOfTypes:v12 matching:v9];

      v14 = self->_downloadingAsset;
      if (v14)
      {
        [(TTSAsset *)v14 cancelDownloadingThen:&__block_literal_global_285];
      }

      objc_storeStrong(&self->_downloadingAsset, v13);
      objc_initWeak(&location, self);
      v15 = [(AssistantVoiceController *)self isCellularDataPermissionAllowedForVoice:voiceCopy];
      metrics = self->_metrics;
      primaryLanguage = [v13 primaryLanguage];
      name2 = [v13 name];
      [(AssistantVoiceMetrics *)metrics setVoiceDownloadForLanguageCode:primaryLanguage name:name2];

      [(AssistantVoiceMetrics *)self->_metrics setIsCellularAllowed:v15];
      [(AssistantVoiceMetrics *)self->_metrics beginDownloadObservation];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __42__AssistantVoiceController_downloadVoice___block_invoke_2;
      v24[3] = &unk_278CD19E8;
      objc_copyWeak(&v26, &location);
      v19 = v13;
      v25 = v19;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __42__AssistantVoiceController_downloadVoice___block_invoke_4;
      v21[3] = &unk_278CD1A10;
      objc_copyWeak(&v23, &location);
      v20 = v19;
      v22 = v20;
      [v20 downloadWithReservation:0 useBattery:1 progress:v24 then:v21];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }
  }
}

void __42__AssistantVoiceController_downloadVoice___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__AssistantVoiceController_downloadVoice___block_invoke_3;
  v6[3] = &unk_278CD19C0;
  objc_copyWeak(v8, (a1 + 40));
  v7 = *(a1 + 32);
  v8[1] = a2;
  v8[2] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(v8);
}

void __42__AssistantVoiceController_downloadVoice___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v11 = WeakRetained;
    v4 = [WeakRetained downloadingAsset];

    WeakRetained = v11;
    if (v3 == v4)
    {
      v6 = *(a1 + 56);
      v7 = v6;
      if (!v6)
      {
        v7 = 1.0;
      }

      *&v5 = *(a1 + 48) / v7;
      v8 = *&v5;
      [v11 updateDownloadProgress:v5];
      v9 = [v11 metrics];
      *&v10 = v8;
      [v9 setDownloadObservationProgress:v10];

      WeakRetained = v11;
    }
  }
}

void __42__AssistantVoiceController_downloadVoice___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AssistantVoiceController_downloadVoice___block_invoke_5;
  block[3] = &unk_278CD1598;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __42__AssistantVoiceController_downloadVoice___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v14 = WeakRetained;
    v4 = [WeakRetained downloadingAsset];

    WeakRetained = v14;
    if (v3 == v4)
    {
      [v14 setDownloadingAsset:0];
      if (*(a1 + 40))
      {
        v6 = [v14 inProgressVoice];
        [v14 setAssistantOutputVoice:v6];

        [v14 setAssistantInProgressVoice:0];
        v7 = [v14 metrics];
        LODWORD(v8) = 1.0;
        [v7 setDownloadObservationProgress:v8];

        v9 = [v14 metrics];
        [v9 sendAnalyticsEvent];

        [v14 resetMetrics];
        v10 = [v14 currentVoice];
        v11 = [v14 viewModelWithInProgressVoice:0 currentVoice:v10];

        [v14 applyViewModel:v11];
      }

      else
      {
        LODWORD(v5) = -1.0;
        [v14 updateDownloadProgress:v5];
        v12 = [v14 metrics];
        [v12 setDownloadError:1];

        v13 = [v14 metrics];
        [v13 sendAnalyticsEvent];

        [v14 resetMetrics];
      }

      WeakRetained = v14;
    }
  }
}

- (void)stopAllDownload
{
  downloadingAsset = self->_downloadingAsset;
  if (downloadingAsset)
  {
    [(TTSAsset *)downloadingAsset cancelDownloadingThen:&__block_literal_global_288];
    v4 = self->_downloadingAsset;
    self->_downloadingAsset = 0;
  }
}

- (void)_signalDidSelectVoice
{
  signalEmitter = self->_signalEmitter;
  if (!signalEmitter)
  {
    v4 = objc_alloc_init(AssistantSettingsSignalEmitter);
    v5 = self->_signalEmitter;
    self->_signalEmitter = v4;

    signalEmitter = self->_signalEmitter;
  }

  [(AssistantSettingsSignalEmitter *)signalEmitter emitDidSelectVoiceSignal];
}

- (void)updateFooterText:(id)text forSpecifier:(id)specifier
{
  textCopy = text;
  specifierCopy = specifier;
  v8 = specifierCopy;
  if (specifierCopy)
  {
    v9 = *MEMORY[0x277D3FF88];
    v10 = [specifierCopy propertyForKey:*MEMORY[0x277D3FF88]];
    if (([v10 isEqualToString:textCopy] & 1) == 0)
    {
      [v8 setProperty:textCopy forKey:v9];
      v11 = [(AssistantVoiceController *)self indexPathForSpecifier:v8];
      table = [(AssistantVoiceController *)self table];
      v13 = [table footerViewForSection:{objc_msgSend(v11, "section")}];

      table2 = [(AssistantVoiceController *)self table];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __58__AssistantVoiceController_updateFooterText_forSpecifier___block_invoke;
      v16[3] = &unk_278CD1708;
      v17 = v13;
      v18 = textCopy;
      v15 = v13;
      [table2 performBatchUpdates:v16 completion:0];
    }
  }
}

void __58__AssistantVoiceController_updateFooterText_forSpecifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) textLabel];
  [v2 setText:v1];
}

- (BOOL)isVoiceInstalled:(id)installed
{
  v15[1] = *MEMORY[0x277D85DE8];
  installedCopy = installed;
  languageCode = [installedCopy languageCode];
  if (languageCode)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    languageCode2 = [installedCopy languageCode];
    [dictionary setObject:languageCode2 forKeyedSubscript:&unk_2853200A0];

    name = [installedCopy name];
    [dictionary setObject:name forKeyedSubscript:&unk_2853200B8];

    premium = [MEMORY[0x277D61488] premium];
    [dictionary setObject:premium forKeyedSubscript:&unk_2853200D0];

    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_2853200E8];
    v9 = MEMORY[0x277D61480];
    gryphonVoice = [MEMORY[0x277D61490] gryphonVoice];
    v15[0] = gryphonVoice;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [v9 listAssetsOfTypes:v11 matching:dictionary];

    v13 = [v12 count] != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)grantCellularDataPermissionForVoice:(id)voice
{
  v18 = *MEMORY[0x277D85DE8];
  voiceCopy = voice;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    languageCode = [voiceCopy languageCode];
    name = [voiceCopy name];
    v12 = 136315650;
    v13 = "[AssistantVoiceController grantCellularDataPermissionForVoice:]";
    v14 = 2112;
    v15 = languageCode;
    v16 = 2112;
    v17 = name;
    _os_log_impl(&dword_2413B9000, v5, OS_LOG_TYPE_DEFAULT, "%s #VoiceServices allowing cellular for: %@ %@", &v12, 0x20u);
  }

  languageCode2 = [voiceCopy languageCode];
  v9 = allowedCellularLanguage;
  allowedCellularLanguage = languageCode2;

  name2 = [voiceCopy name];
  v11 = allowedCellularVoiceName;
  allowedCellularVoiceName = name2;
}

- (BOOL)isCellularDataPermissionAllowedForVoice:(id)voice
{
  voiceCopy = voice;
  v4 = allowedCellularLanguage;
  languageCode = [voiceCopy languageCode];
  if ([v4 isEqualToString:languageCode])
  {
    if (voiceCopy)
    {
      v6 = allowedCellularVoiceName;
      name = [voiceCopy name];
      v8 = [v6 isEqualToString:name];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)registerUndoActionWithKey:(id)key urlString:(id)string undoAction:(id)action
{
  v8 = MEMORY[0x277CCAEB8];
  actionCopy = action;
  stringCopy = string;
  keyCopy = key;
  v12 = [v8 alloc];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v14 bundleURL];
  v17 = [v12 initWithKey:keyCopy table:@"AssistantSettings" locale:currentLocale bundleURL:bundleURL];

  v16 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];

  [(AssistantVoiceController *)self pe_registerUndoActionName:v17 associatedDeepLink:v16 undoAction:actionCopy];
}

- (void)languageCodeDidChange:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[AssistantVoiceController languageCodeDidChange:]";
  _os_log_debug_impl(&dword_2413B9000, log, OS_LOG_TYPE_DEBUG, "%s #VoiceServices languageCodeDidChange, will reload specifiers", &v1, 0xCu);
}

- (void)outputVoiceDidChange:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[AssistantVoiceController outputVoiceDidChange:]";
  _os_log_debug_impl(&dword_2413B9000, log, OS_LOG_TYPE_DEBUG, "%s #VoiceServices outputVoiceDidChange, will reload specifiers", &v1, 0xCu);
}

- (void)presentVoiceDownloadConfirmationNoWifiAlertForVoice:(os_log_t)log inProgressVoice:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[AssistantVoiceController presentVoiceDownloadConfirmationNoWifiAlertForVoice:inProgressVoice:]";
  _os_log_fault_impl(&dword_2413B9000, log, OS_LOG_TYPE_FAULT, "%s missing language or name for in-progress voice", &v1, 0xCu);
}

- (void)presentVoiceDownloadConfirmationNoWifiAlertForVoice:(uint64_t)a1 inProgressVoice:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[AssistantVoiceController presentVoiceDownloadConfirmationNoWifiAlertForVoice:inProgressVoice:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_2413B9000, a2, OS_LOG_TYPE_DEBUG, "%s #VoiceDownload unknown download size for voice: %@", &v2, 0x16u);
}

@end