@interface _LTTranslator
+ (id)interruptionHandler;
+ (void)_deleteHotfix:(id)hotfix;
+ (void)_downloadAssetForLanguagePair:(id)pair userInitiated:(BOOL)initiated completion:(id)completion;
+ (void)_getAssetSize:(id)size;
+ (void)_getServiceProxyWithDelegate:(id)delegate errorHandler:(id)handler block:(id)block;
+ (void)_getSyncServiceProxyWithDelegate:(id)delegate errorHandler:(id)handler block:(id)block;
+ (void)_getTextServiceProxyWithDelegate:(id)delegate useDedicatedTextMachPort:(BOOL)port errorHandler:(id)handler block:(id)block;
+ (void)_offlineLanguageStatus:(id)status;
+ (void)_purgeAllAssetsExcludingConfig:(BOOL)config completion:(id)completion;
+ (void)_purgeAssetForLanguagePair:(id)pair userInitiated:(BOOL)initiated completion:(id)completion;
+ (void)_updateAllAssets:(id)assets;
+ (void)_updateHotfix:(id)hotfix;
+ (void)addLanguages:(id)languages useCellular:(BOOL)cellular;
+ (void)additionalLikelyPreferredLocalesForLocale:(id)locale completion:(id)completion;
+ (void)autoDetectSpeechUnsupportedPairsWithCompletion:(id)completion;
+ (void)availableLocalePairsForTask:(int64_t)task useDedicatedMachPort:(BOOL)port completion:(id)completion;
+ (void)configInfoForLocale:(id)locale otherLocale:(id)otherLocale completion:(id)completion;
+ (void)initialize;
+ (void)installOfflineLocales:(id)locales completion:(id)completion;
+ (void)installedLocales:(id)locales;
+ (void)installedLocalesForTask:(int64_t)task completion:(id)completion;
+ (void)languageAssetsWithOptions:(unint64_t)options completion:(id)completion;
+ (void)languageForText:(id)text completion:(id)completion;
+ (void)languagesForText:(id)text usingModel:(unint64_t)model strategy:(unint64_t)strategy useDedicatedTextMachPort:(BOOL)port completion:(id)completion;
+ (void)modalitiesPerLocaleWithCompletion:(id)completion;
+ (void)onDeviceModeEnabledWithDedicatedMachPort:(BOOL)port completion:(id)completion;
+ (void)onDeviceModeSupported:(id)supported;
+ (void)removeLanguages:(id)languages;
+ (void)selfLoggingEventWithData:(id)data;
+ (void)selfLoggingInvocationCancelledForIDs:(id)ds;
+ (void)selfLoggingInvocationDidError:(id)error invocationId:(id)id;
+ (void)selfLoggingInvocationStartedWithData:(id)data invocationStartedTier1Data:(id)tier1Data;
+ (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)data;
+ (void)setLanguageAssets:(id)assets options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)shouldPresentSystemFirstUseConsentWithDedicatedMachPort:(BOOL)port completion:(id)completion;
+ (void)task:(int64_t)task isSupportedInCountry:(id)country completion:(id)completion;
+ (void)taskIsSupportedInCurrentRegion:(int64_t)region completion:(id)completion;
+ (void)textStreamingConfigurationWithCompletion:(id)completion;
- (id)startTranslationSession;
- (id)startTranslationSessionWithSELFLoggingInvocationId:(id)id;
- (void)cleanup;
- (void)log:(id)log;
- (void)preheatForRequest:(id)request completion:(id)completion;
- (void)preheatForRequestSync:(id)sync;
- (void)translate:(id)translate useDedicatedTextMachPort:(BOOL)port;
- (void)updateOVADStreamingState:(id)state;
@end

@implementation _LTTranslator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(_LTInterruptionHandler);
    v3 = _interruptionController;
    _interruptionController = v2;

    v4 = objc_alloc_init(_LTBlockBasedInterruptionHandler);
    v5 = _legacyInterruptionHandler;
    _legacyInterruptionHandler = v4;

    [_interruptionController addObserver:_legacyInterruptionHandler];
    v6 = internalInterruptionHandler;
    internalInterruptionHandler = &__block_literal_global_16;
  }
}

+ (id)interruptionHandler
{
  handler = [_legacyInterruptionHandler handler];
  v3 = handler;
  if (!handler)
  {
    handler = &__block_literal_global_5;
  }

  v4 = _Block_copy(handler);

  return v4;
}

+ (void)onDeviceModeEnabledWithDedicatedMachPort:(BOOL)port completion:(id)completion
{
  portCopy = port;
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69___LTTranslator_onDeviceModeEnabledWithDedicatedMachPort_completion___block_invoke;
  v9[3] = &unk_278B6DE78;
  v11 = portCopy;
  v10 = completionCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69___LTTranslator_onDeviceModeEnabledWithDedicatedMachPort_completion___block_invoke_7;
  v7[3] = &unk_278B6DEC8;
  v8 = v10;
  v6 = v10;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:portCopy errorHandler:v9 block:v7];
}

+ (void)languageAssetsWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54___LTTranslator_languageAssetsWithOptions_completion___block_invoke;
  v10[3] = &unk_278B6DBE8;
  v11 = completionCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___LTTranslator_languageAssetsWithOptions_completion___block_invoke_16;
  v7[3] = &unk_278B6DF38;
  v8 = v11;
  optionsCopy = options;
  v6 = v11;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v10 block:v7];
}

+ (void)setLanguageAssets:(id)assets options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  assetsCopy = assets;
  v12 = [[_LTLanguageAssetRequest alloc] initWithLanguageAssets:assetsCopy options:options progress:progressCopy completion:completionCopy];

  v13 = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63___LTTranslator_setLanguageAssets_options_progress_completion___block_invoke;
  v17[3] = &unk_278B6DBE8;
  v18 = completionCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63___LTTranslator_setLanguageAssets_options_progress_completion___block_invoke_20;
  v15[3] = &unk_278B6DF60;
  v16 = v13;
  v14 = completionCopy;
  [_LTTranslator _getServiceProxyWithDelegate:v13 errorHandler:v17 block:v15];
}

+ (void)addLanguages:(id)languages useCellular:(BOOL)cellular
{
  languagesCopy = languages;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___LTTranslator_addLanguages_useCellular___block_invoke_23;
  v7[3] = &unk_278B6DF88;
  v8 = languagesCopy;
  cellularCopy = cellular;
  v6 = languagesCopy;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:&__block_literal_global_22_0 block:v7];
}

+ (void)removeLanguages:(id)languages
{
  languagesCopy = languages;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33___LTTranslator_removeLanguages___block_invoke_26;
  v5[3] = &unk_278B6DF60;
  v6 = languagesCopy;
  v4 = languagesCopy;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:&__block_literal_global_25_0 block:v5];
}

+ (void)_offlineLanguageStatus:(id)status
{
  statusCopy = status;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40___LTTranslator__offlineLanguageStatus___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = statusCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40___LTTranslator__offlineLanguageStatus___block_invoke_27;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)_downloadAssetForLanguagePair:(id)pair userInitiated:(BOOL)initiated completion:(id)completion
{
  pairCopy = pair;
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72___LTTranslator__downloadAssetForLanguagePair_userInitiated_completion___block_invoke;
  v15[3] = &unk_278B6DBE8;
  v16 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72___LTTranslator__downloadAssetForLanguagePair_userInitiated_completion___block_invoke_28;
  v11[3] = &unk_278B6E000;
  initiatedCopy = initiated;
  v12 = pairCopy;
  v13 = v16;
  v9 = v16;
  v10 = pairCopy;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v15 block:v11];
}

+ (void)_purgeAssetForLanguagePair:(id)pair userInitiated:(BOOL)initiated completion:(id)completion
{
  pairCopy = pair;
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69___LTTranslator__purgeAssetForLanguagePair_userInitiated_completion___block_invoke;
  v15[3] = &unk_278B6DBE8;
  v16 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69___LTTranslator__purgeAssetForLanguagePair_userInitiated_completion___block_invoke_29;
  v11[3] = &unk_278B6E000;
  initiatedCopy = initiated;
  v12 = pairCopy;
  v13 = v16;
  v9 = v16;
  v10 = pairCopy;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v15 block:v11];
}

+ (void)_purgeAllAssetsExcludingConfig:(BOOL)config completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59___LTTranslator__purgeAllAssetsExcludingConfig_completion___block_invoke;
  v10[3] = &unk_278B6DBE8;
  v11 = completionCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___LTTranslator__purgeAllAssetsExcludingConfig_completion___block_invoke_30;
  v7[3] = &unk_278B6E028;
  configCopy = config;
  v8 = v11;
  v6 = v11;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v10 block:v7];
}

+ (void)_updateAllAssets:(id)assets
{
  assetsCopy = assets;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___LTTranslator__updateAllAssets___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = assetsCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34___LTTranslator__updateAllAssets___block_invoke_31;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)_updateHotfix:(id)hotfix
{
  hotfixCopy = hotfix;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31___LTTranslator__updateHotfix___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = hotfixCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31___LTTranslator__updateHotfix___block_invoke_32;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)_deleteHotfix:(id)hotfix
{
  hotfixCopy = hotfix;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31___LTTranslator__deleteHotfix___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = hotfixCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31___LTTranslator__deleteHotfix___block_invoke_33;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)installedLocales:(id)locales
{
  localesCopy = locales;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___LTTranslator_installedLocales___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = localesCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34___LTTranslator_installedLocales___block_invoke_34;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)installedLocalesForTask:(int64_t)task completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52___LTTranslator_installedLocalesForTask_completion___block_invoke;
  v10[3] = &unk_278B6DBE8;
  v11 = completionCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52___LTTranslator_installedLocalesForTask_completion___block_invoke_36;
  v7[3] = &unk_278B6E078;
  v8 = v11;
  taskCopy = task;
  v6 = v11;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:1 errorHandler:v10 block:v7];
}

+ (void)_getAssetSize:(id)size
{
  sizeCopy = size;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31___LTTranslator__getAssetSize___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = sizeCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31___LTTranslator__getAssetSize___block_invoke_37;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)installOfflineLocales:(id)locales completion:(id)completion
{
  localesCopy = locales;
  completionCopy = completion;
  v7 = localesCopy;
  [v7 setCompletionHandler:completionCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50___LTTranslator_installOfflineLocales_completion___block_invoke;
  v12[3] = &unk_278B6DBE8;
  v13 = completionCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50___LTTranslator_installOfflineLocales_completion___block_invoke_39;
  v10[3] = &unk_278B6DF60;
  v11 = v7;
  v8 = v7;
  v9 = completionCopy;
  [_LTTranslator _getServiceProxyWithDelegate:v8 errorHandler:v12 block:v10];
}

+ (void)availableLocalePairsForTask:(int64_t)task useDedicatedMachPort:(BOOL)port completion:(id)completion
{
  portCopy = port;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77___LTTranslator_availableLocalePairsForTask_useDedicatedMachPort_completion___block_invoke;
  v12[3] = &unk_278B6DE78;
  v14 = portCopy;
  v13 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77___LTTranslator_availableLocalePairsForTask_useDedicatedMachPort_completion___block_invoke_40;
  v9[3] = &unk_278B6E078;
  v10 = v13;
  taskCopy = task;
  v8 = v13;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:portCopy errorHandler:v12 block:v9];
}

+ (void)additionalLikelyPreferredLocalesForLocale:(id)locale completion:(id)completion
{
  localeCopy = locale;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70___LTTranslator_additionalLikelyPreferredLocalesForLocale_completion___block_invoke;
  v12[3] = &unk_278B6DBE8;
  v13 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70___LTTranslator_additionalLikelyPreferredLocalesForLocale_completion___block_invoke_41;
  v9[3] = &unk_278B6E0C8;
  v10 = localeCopy;
  v11 = v13;
  v7 = v13;
  v8 = localeCopy;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v12 block:v9];
}

+ (void)configInfoForLocale:(id)locale otherLocale:(id)otherLocale completion:(id)completion
{
  localeCopy = locale;
  otherLocaleCopy = otherLocale;
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60___LTTranslator_configInfoForLocale_otherLocale_completion___block_invoke;
  v17[3] = &unk_278B6DBE8;
  v18 = completionCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60___LTTranslator_configInfoForLocale_otherLocale_completion___block_invoke_42;
  v13[3] = &unk_278B6E118;
  v14 = localeCopy;
  v15 = otherLocaleCopy;
  v16 = v18;
  v10 = v18;
  v11 = otherLocaleCopy;
  v12 = localeCopy;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v17 block:v13];
}

+ (void)onDeviceModeSupported:(id)supported
{
  supportedCopy = supported;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39___LTTranslator_onDeviceModeSupported___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = supportedCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39___LTTranslator_onDeviceModeSupported___block_invoke_44;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)shouldPresentSystemFirstUseConsentWithDedicatedMachPort:(BOOL)port completion:(id)completion
{
  portCopy = port;
  completionCopy = completion;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v8 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x277CBED38]];

  v9 = [v8 isEqualToString:@"com.apple.Translate"];
  if (v9)
  {
    v11 = _LTOSLogOnboarding(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23AAF5000, v11, OS_LOG_TYPE_INFO, "Not showing first-use consent because it's running in the Translate app", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __84___LTTranslator_shouldPresentSystemFirstUseConsentWithDedicatedMachPort_completion___block_invoke;
    v14[3] = &unk_278B6DBE8;
    v15 = completionCopy;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84___LTTranslator_shouldPresentSystemFirstUseConsentWithDedicatedMachPort_completion___block_invoke_47;
    v12[3] = &unk_278B6DEC8;
    v13 = v15;
    [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:portCopy errorHandler:v14 block:v12];
  }
}

+ (void)taskIsSupportedInCurrentRegion:(int64_t)region completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59___LTTranslator_taskIsSupportedInCurrentRegion_completion___block_invoke;
  v10[3] = &unk_278B6DBE8;
  v11 = completionCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___LTTranslator_taskIsSupportedInCurrentRegion_completion___block_invoke_48;
  v7[3] = &unk_278B6DF38;
  v8 = v11;
  regionCopy = region;
  v6 = v11;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v10 block:v7];
}

+ (void)autoDetectSpeechUnsupportedPairsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64___LTTranslator_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = completionCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64___LTTranslator_autoDetectSpeechUnsupportedPairsWithCompletion___block_invoke_50;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)modalitiesPerLocaleWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51___LTTranslator_modalitiesPerLocaleWithCompletion___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = completionCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51___LTTranslator_modalitiesPerLocaleWithCompletion___block_invoke_51;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)textStreamingConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___LTTranslator_textStreamingConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_278B6DBE8;
  v8 = completionCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58___LTTranslator_textStreamingConfigurationWithCompletion___block_invoke_53;
  v5[3] = &unk_278B6DFB0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)task:(int64_t)task isSupportedInCountry:(id)country completion:(id)completion
{
  countryCopy = country;
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54___LTTranslator_task_isSupportedInCountry_completion___block_invoke;
  v15[3] = &unk_278B6DBE8;
  v16 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54___LTTranslator_task_isSupportedInCountry_completion___block_invoke_55;
  v11[3] = &unk_278B6E1B8;
  v13 = v16;
  taskCopy = task;
  v12 = countryCopy;
  v9 = v16;
  v10 = countryCopy;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v15 block:v11];
}

+ (void)languageForText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44___LTTranslator_languageForText_completion___block_invoke;
  v12[3] = &unk_278B6DBE8;
  v13 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44___LTTranslator_languageForText_completion___block_invoke_56;
  v9[3] = &unk_278B6E0C8;
  v10 = textCopy;
  v11 = v13;
  v7 = v13;
  v8 = textCopy;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v12 block:v9];
}

+ (void)languagesForText:(id)text usingModel:(unint64_t)model strategy:(unint64_t)strategy useDedicatedTextMachPort:(BOOL)port completion:(id)completion
{
  portCopy = port;
  textCopy = text;
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __90___LTTranslator_languagesForText_usingModel_strategy_useDedicatedTextMachPort_completion___block_invoke;
  v20[3] = &unk_278B6DE78;
  v22 = portCopy;
  v21 = completionCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90___LTTranslator_languagesForText_usingModel_strategy_useDedicatedTextMachPort_completion___block_invoke_64;
  v15[3] = &unk_278B6E230;
  modelCopy = model;
  strategyCopy = strategy;
  v16 = textCopy;
  v17 = v21;
  v13 = v21;
  v14 = textCopy;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:portCopy errorHandler:v20 block:v15];
}

+ (void)_getServiceProxyWithDelegate:(id)delegate errorHandler:(id)handler block:(id)block
{
  delegateCopy = delegate;
  handlerCopy = handler;
  blockCopy = block;
  v11 = _LTOSLogXPC(blockCopy, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23AAF5000, v11, OS_LOG_TYPE_INFO, "Creating service proxy", buf, 2u);
  }

  v12 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.translationd" options:0];
  v13 = _LTTranslationServiceXPCInterface();
  [v12 setRemoteObjectInterface:v13];

  if (delegateCopy)
  {
    [v12 setExportedObject:delegateCopy];
    v14 = _LTTranslationServiceDelegateXPCInterface();
    [v12 setExportedInterface:v14];
  }

  [v12 setInterruptionHandler:internalInterruptionHandler];
  [v12 resume];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65___LTTranslator__getServiceProxyWithDelegate_errorHandler_block___block_invoke;
  v22[3] = &unk_278B6E258;
  v15 = v12;
  v23 = v15;
  v24 = handlerCopy;
  v16 = handlerCopy;
  v17 = [v15 remoteObjectProxyWithErrorHandler:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65___LTTranslator__getServiceProxyWithDelegate_errorHandler_block___block_invoke_70;
  v20[3] = &unk_278B6CEE8;
  v21 = v15;
  v18 = blockCopy[2];
  v19 = v15;
  v18(blockCopy, v17, v20);
}

+ (void)_getTextServiceProxyWithDelegate:(id)delegate useDedicatedTextMachPort:(BOOL)port errorHandler:(id)handler block:(id)block
{
  portCopy = port;
  delegateCopy = delegate;
  handlerCopy = handler;
  blockCopy = block;
  v13 = _LTOSLogXPC(blockCopy, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23AAF5000, v13, OS_LOG_TYPE_INFO, "Creating text-only service proxy", buf, 2u);
  }

  v14 = @"com.apple.translationd";
  if (portCopy)
  {
    v14 = @"com.apple.translation.text";
  }

  v15 = MEMORY[0x277CCAE80];
  v16 = v14;
  v17 = [[v15 alloc] initWithMachServiceName:v16 options:0];

  v18 = _LTTextTranslationServiceXPCInterface();
  [v17 setRemoteObjectInterface:v18];

  if (delegateCopy)
  {
    [v17 setExportedObject:delegateCopy];
    v19 = _LTTranslationServiceDelegateXPCInterface();
    [v17 setExportedInterface:v19];
  }

  [v17 setInterruptionHandler:internalInterruptionHandler];
  [v17 resume];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __94___LTTranslator__getTextServiceProxyWithDelegate_useDedicatedTextMachPort_errorHandler_block___block_invoke;
  v27[3] = &unk_278B6E258;
  v20 = v17;
  v28 = v20;
  v29 = handlerCopy;
  v21 = handlerCopy;
  v22 = [v20 remoteObjectProxyWithErrorHandler:v27];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __94___LTTranslator__getTextServiceProxyWithDelegate_useDedicatedTextMachPort_errorHandler_block___block_invoke_74;
  v25[3] = &unk_278B6CEE8;
  v26 = v20;
  v23 = blockCopy[2];
  v24 = v20;
  v23(blockCopy, v22, v25);
}

+ (void)_getSyncServiceProxyWithDelegate:(id)delegate errorHandler:(id)handler block:(id)block
{
  delegateCopy = delegate;
  handlerCopy = handler;
  blockCopy = block;
  v11 = _LTOSLogXPC(blockCopy, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23AAF5000, v11, OS_LOG_TYPE_INFO, "Creating SYNC service proxy", buf, 2u);
  }

  v12 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.translationd" options:0];
  v13 = _LTTranslationServiceXPCInterface();
  [v12 setRemoteObjectInterface:v13];

  if (delegateCopy)
  {
    [v12 setExportedObject:delegateCopy];
    v14 = _LTTranslationServiceDelegateXPCInterface();
    [v12 setExportedInterface:v14];
  }

  [v12 setInterruptionHandler:internalInterruptionHandler];
  [v12 resume];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __69___LTTranslator__getSyncServiceProxyWithDelegate_errorHandler_block___block_invoke;
  v21 = &unk_278B6E258;
  v22 = v12;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = v12;
  v17 = [v16 synchronousRemoteObjectProxyWithErrorHandler:&v18];
  blockCopy[2](blockCopy, v17);

  [v16 invalidate];
}

- (void)preheatForRequestSync:(id)sync
{
  syncCopy = sync;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39___LTTranslator_preheatForRequestSync___block_invoke_77;
  v5[3] = &unk_278B6E280;
  v6 = syncCopy;
  v4 = syncCopy;
  [_LTTranslator _getSyncServiceProxyWithDelegate:0 errorHandler:&__block_literal_global_76 block:v5];
}

- (void)preheatForRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46___LTTranslator_preheatForRequest_completion___block_invoke;
  v12[3] = &unk_278B6DBE8;
  v13 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46___LTTranslator_preheatForRequest_completion___block_invoke_80;
  v9[3] = &unk_278B6E0C8;
  v10 = requestCopy;
  v11 = v13;
  v7 = v13;
  v8 = requestCopy;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v12 block:v9];
}

- (void)cleanup
{
  v2 = _LTOSLogXPC(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_23AAF5000, v2, OS_LOG_TYPE_INFO, "Client requesting translator cleanup", v3, 2u);
  }

  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:&__block_literal_global_82 block:&__block_literal_global_85];
}

- (void)translate:(id)translate useDedicatedTextMachPort:(BOOL)port
{
  portCopy = port;
  v26 = *MEMORY[0x277D85DE8];
  translateCopy = translate;
  v7 = _LTOSLogXPC(translateCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v25 = portCopy;
    _os_log_impl(&dword_23AAF5000, v7, OS_LOG_TYPE_INFO, "Starting translation for request (using dedicated text mach port = %{BOOL}i)", buf, 8u);
  }

  serviceDelegate = [translateCopy serviceDelegate];
  if (portCopy)
  {
    _canUseTextService = [translateCopy _canUseTextService];
    if (_canUseTextService)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke;
      v22[3] = &unk_278B6E2C8;
      v23 = translateCopy;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke_93;
      v20[3] = &unk_278B6E2F0;
      v21 = v23;
      [_LTTranslator _getTextServiceProxyWithDelegate:serviceDelegate useDedicatedTextMachPort:1 errorHandler:v22 block:v20];

      mainBundle = v23;
    }

    else
    {
      v12 = _LTOSLogXPC(_canUseTextService, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_LTTranslator translate:v12 useDedicatedTextMachPort:?];
      }

      v13 = MEMORY[0x277CCA9B8];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = [mainBundle localizedStringForKey:@"CLIENT_REQUIRES_TEXT_SERVICE_ERROR_DESCRIPTION" value:&stru_284DBB9B8 table:0];
      v15 = [v13 lt_errorWithCode:17 description:v14 userInfo:0];
      [translateCopy _translationFailedWithError:v15];
    }
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke_2;
    v18[3] = &unk_278B6E2C8;
    v19 = translateCopy;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52___LTTranslator_translate_useDedicatedTextMachPort___block_invoke_94;
    v16[3] = &unk_278B6DF60;
    v17 = v19;
    [_LTTranslator _getServiceProxyWithDelegate:serviceDelegate errorHandler:v18 block:v16];

    mainBundle = v19;
  }
}

- (void)log:(id)log
{
  v10 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:log requiringSecureCoding:1 error:&v10];
  v4 = v10;
  v6 = v4;
  if (v4)
  {
    v7 = _LTOSLogXPC(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_LTTranslator log:];
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __21___LTTranslator_log___block_invoke_98;
    v8[3] = &unk_278B6DF60;
    v9 = v3;
    [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:&__block_literal_global_97 block:v8];
  }
}

- (id)startTranslationSession
{
  v3 = [_LTTranslationSession alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v5 = [(_LTTranslationSession *)v3 initWithTranslator:self selfLoggingInvocationId:uUID];

  return v5;
}

- (id)startTranslationSessionWithSELFLoggingInvocationId:(id)id
{
  idCopy = id;
  v5 = [[_LTTranslationSession alloc] initWithTranslator:self selfLoggingInvocationId:idCopy];

  return v5;
}

+ (void)selfLoggingEventWithData:(id)data
{
  dataCopy = data;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42___LTTranslator_selfLoggingEventWithData___block_invoke;
  v7[3] = &unk_278B6E2C8;
  v8 = dataCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42___LTTranslator_selfLoggingEventWithData___block_invoke_101;
  v5[3] = &unk_278B6DF60;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:v7 block:v5];
}

+ (void)selfLoggingInvocationStartedWithData:(id)data invocationStartedTier1Data:(id)tier1Data
{
  dataCopy = data;
  tier1DataCopy = tier1Data;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81___LTTranslator_selfLoggingInvocationStartedWithData_invocationStartedTier1Data___block_invoke;
  v12[3] = &unk_278B6E2C8;
  v13 = dataCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81___LTTranslator_selfLoggingInvocationStartedWithData_invocationStartedTier1Data___block_invoke_102;
  v9[3] = &unk_278B6E318;
  v10 = v13;
  v11 = tier1DataCopy;
  v7 = tier1DataCopy;
  v8 = v13;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:1 errorHandler:v12 block:v9];
}

+ (void)selfLoggingLanguageIdentificationCompletedWithLIDData:(id)data
{
  dataCopy = data;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71___LTTranslator_selfLoggingLanguageIdentificationCompletedWithLIDData___block_invoke;
  v7[3] = &unk_278B6E2C8;
  v8 = dataCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71___LTTranslator_selfLoggingLanguageIdentificationCompletedWithLIDData___block_invoke_103;
  v5[3] = &unk_278B6E2F0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:1 errorHandler:v7 block:v5];
}

+ (void)selfLoggingInvocationCancelledForIDs:(id)ds
{
  dsCopy = ds;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___LTTranslator_selfLoggingInvocationCancelledForIDs___block_invoke;
  v7[3] = &unk_278B6E2C8;
  v8 = dsCopy;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54___LTTranslator_selfLoggingInvocationCancelledForIDs___block_invoke_104;
  v5[3] = &unk_278B6E2F0;
  v6 = v8;
  v4 = v8;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:1 errorHandler:v7 block:v5];
}

+ (void)selfLoggingInvocationDidError:(id)error invocationId:(id)id
{
  errorCopy = error;
  idCopy = id;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60___LTTranslator_selfLoggingInvocationDidError_invocationId___block_invoke;
  v12[3] = &unk_278B6E2C8;
  v13 = idCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60___LTTranslator_selfLoggingInvocationDidError_invocationId___block_invoke_105;
  v9[3] = &unk_278B6E318;
  v10 = errorCopy;
  v11 = v13;
  v7 = v13;
  v8 = errorCopy;
  [_LTTranslator _getTextServiceProxyWithDelegate:0 useDedicatedTextMachPort:1 errorHandler:v12 block:v9];
}

- (void)updateOVADStreamingState:(id)state
{
  stateCopy = state;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42___LTTranslator_updateOVADStreamingState___block_invoke_108;
  v5[3] = &unk_278B6DF60;
  v6 = stateCopy;
  v4 = stateCopy;
  [_LTTranslator _getServiceProxyWithDelegate:0 errorHandler:&__block_literal_global_107 block:v5];
}

@end