@interface KMIntentVocabularyStoreManager
- (id)resolveIntentSlotsForApp:(id)app fromAllAppsOverview:(id)overview;
- (id)storedVocabularyForApp:(id)app intentSlot:(id)slot;
@end

@implementation KMIntentVocabularyStoreManager

- (id)storedVocabularyForApp:(id)app intentSlot:(id)slot
{
  v29 = *MEMORY[0x277D85DE8];
  appCopy = app;
  slotCopy = slot;
  v7 = [MEMORY[0x277CD43F8] managerForBundleID:appCopy bundlePath:0];
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v8 = [v7 getPathToLatestVocabulary:&v22 pathDuringReading:&v21 sentVocabulary:&v20 forIntentSlot:slotCopy];
  v9 = v22;
  v10 = v21;
  v11 = v20;
  v12 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v24 = "[KMIntentVocabularyStoreManager storedVocabularyForApp:intentSlot:]";
    v25 = 2112;
    v26 = appCopy;
    v27 = 2112;
    v28 = slotCopy;
    _os_log_debug_impl(&dword_2559DF000, v12, OS_LOG_TYPE_DEBUG, "%s Reading latest vocabulary from file for appId=%@ intentSlot=%@", buf, 0x20u);
  }

  v13 = [objc_alloc(MEMORY[0x277CD43E8]) initWithContentsOfFile:v9];
  if (!v13)
  {
    v14 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v24 = "[KMIntentVocabularyStoreManager storedVocabularyForApp:intentSlot:]";
      v25 = 2112;
      v26 = appCopy;
      v27 = 2112;
      v28 = slotCopy;
      _os_log_debug_impl(&dword_2559DF000, v14, OS_LOG_TYPE_DEBUG, "%s Latest vocabulary file not found for appId=%@ intentSlot=%@. Checking SentVocabulary file.", buf, 0x20u);
    }

    v13 = [objc_alloc(MEMORY[0x277CD43E8]) initWithContentsOfFile:v11];
  }

  vocabularyItems = [v13 vocabularyItems];
  v16 = vocabularyItems;
  if (vocabularyItems && [vocabularyItems count])
  {
    v17 = v16;
  }

  else
  {
    v18 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v24 = "[KMIntentVocabularyStoreManager storedVocabularyForApp:intentSlot:]";
      v25 = 2112;
      v26 = appCopy;
      v27 = 2112;
      v28 = slotCopy;
      _os_log_impl(&dword_2559DF000, v18, OS_LOG_TYPE_INFO, "%s Found no vocabulary stored for appId=%@ intentSlot=%@. Will push empty donation.", buf, 0x20u);
    }

    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

- (id)resolveIntentSlotsForApp:(id)app fromAllAppsOverview:(id)overview
{
  overviewCopy = overview;
  appCopy = app;
  v7 = [appCopy copy];
  v8 = [@"com.apple.VoiceShortcuts" isEqualToString:appCopy];

  if (v8)
  {

    v7 = @"com.apple.siriVoiceShortcuts";
  }

  v9 = [overviewCopy valueForKey:v7];

  return v9;
}

@end