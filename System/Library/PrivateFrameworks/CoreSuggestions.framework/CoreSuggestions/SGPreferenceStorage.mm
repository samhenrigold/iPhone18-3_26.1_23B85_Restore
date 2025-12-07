@interface SGPreferenceStorage
+ (BOOL)allowAgeBasedPruning;
+ (BOOL)allowAnyDomainForMarkup;
+ (BOOL)allowGeocode;
+ (BOOL)allowUnverifiedSourceForMarkup;
+ (BOOL)alwaysShowCancelledEvents;
+ (BOOL)detectContacts;
+ (BOOL)detectMessageEventsML;
+ (BOOL)detectNLEvents;
+ (BOOL)detectReminders;
+ (BOOL)detectRemindersInMail;
+ (BOOL)detectStructuredEvents;
+ (BOOL)detectStructuredEventsML;
+ (BOOL)enableDKIMEnforcement;
+ (BOOL)mailIntelligenceSPILogging;
+ (BOOL)onlyShowSignificantNLEvents;
+ (BOOL)onlyShowSignificantPseudoContacts;
+ (BOOL)shouldHarvestEvents;
+ (BOOL)showContactsFoundInMail;
+ (BOOL)showEventsFoundInMail;
+ (BOOL)showOperatingSystemVersionInSnippets;
+ (BOOL)showPastEvents;
+ (BOOL)showSuggestionsCalendar;
+ (BOOL)syncHistoryToCloud;
+ (BOOL)useMLModelForContactSharing;
+ (BOOL)useMLModelForContacts;
+ (BOOL)useMLModelForSelfId;
+ (BOOL)useManateeSaltForHistory;
+ (double)harvestBudgetCPUTimeSeconds;
+ (float)contactSharingNegativeSamplingRate;
+ (id)cloudKitPersistedState;
+ (id)defaults;
+ (id)detectSalientMails;
+ (id)didKVSMigrationTokenForIdentifier:(id)identifier;
+ (id)disabledEventUpdateCategories;
+ (id)followUpComputeCustomTimeRangeForLanguage:(id)language;
+ (id)followUpTimeRangeForDebugging;
+ (id)userAccountsPersistedState;
+ (int)registerBlockOnSuggestionsSettingsChange:(id)change;
+ (int64_t)harvestBudgetNumberOfOperations;
+ (int64_t)hashedSessionsLogging;
+ (int64_t)messagesToProcessImmediately;
+ (int64_t)preExtractionMaxDocumentAgeDays;
+ (int64_t)suggestionsLogLevel;
+ (void)removeDeprecatedDefaults;
+ (void)resetAllPreferences;
+ (void)resumeNotificationQueue;
+ (void)setAllowAgeBasedPruning:(BOOL)pruning;
+ (void)setAllowAnyDomainForMarkup:(BOOL)markup;
+ (void)setAllowGeocodeForTests:(BOOL)tests;
+ (void)setAllowUnverifiedSourceForMarkup:(BOOL)markup;
+ (void)setCloudKitPersistedState:(id)state;
+ (void)setContactSharingNegativeSamplingRate:(float)rate;
+ (void)setContactsDetectionEnabledForTests:(BOOL)tests;
+ (void)setDetectContacts:(BOOL)contacts;
+ (void)setDetectMessageEventsML:(BOOL)l;
+ (void)setDetectNLEvents:(BOOL)events;
+ (void)setDetectStructuredEvents:(BOOL)events;
+ (void)setDidKVSMigrationToken:(id)token forIdentifier:(id)identifier;
+ (void)setDisabledEventUpdateCategories:(id)categories;
+ (void)setEnableDKIMEnforcement:(BOOL)enforcement;
+ (void)setEventsMLRegexEnsembleExtractionEnabledForTests:(BOOL)tests;
+ (void)setFirstPartyCalendarAppIsInstalled:(BOOL)installed;
+ (void)setFirstPartyMailAppIsInstalled:(BOOL)installed;
+ (void)setHarvestBudgetCPUTimeSeconds:(double)seconds;
+ (void)setHarvestBudgetNumberOfOperations:(int64_t)operations;
+ (void)setHideEventsExtractedFromOldDocumentsForTests:(BOOL)tests;
+ (void)setHidePastEventsForTests:(BOOL)tests;
+ (void)setMailSaliencyDetectionEnabledForTests:(BOOL)tests;
+ (void)setMessageEventsMLDetectionEnabledForTests:(BOOL)tests;
+ (void)setMessagesToProcessImmediately:(int64_t)immediately;
+ (void)setMessagesToProcessImmediatelyForTests:(int64_t)tests;
+ (void)setNLEventsDetectionEnabledForTests:(BOOL)tests;
+ (void)setOnlyShowSignificantPseudoContacts:(BOOL)contacts;
+ (void)setOnlyShowSignificantPseudoContactsForTests:(BOOL)tests;
+ (void)setRemindersDetectionEnabledForTests:(BOOL)tests;
+ (void)setRemindersDetectionInMailEnabledForTests:(BOOL)tests;
+ (void)setShowCancelledEventsForTests:(BOOL)tests;
+ (void)setShowOperatingSystemVersionInSnippets:(BOOL)snippets;
+ (void)setShowPastEvents:(BOOL)events;
+ (void)setStructuredEventsDetectionEnabledForTests:(BOOL)tests;
+ (void)setStructuredEventsMLDetectionEnabledForTests:(BOOL)tests;
+ (void)setSyncHistoryToCloud:(BOOL)cloud;
+ (void)setSyncHistoryToCloudForTests:(BOOL)tests;
+ (void)setUseMLModelForContactSharing:(BOOL)sharing;
+ (void)setUseMLModelForContacts:(BOOL)contacts;
+ (void)setUseMLModelForSelfId:(BOOL)id;
+ (void)setUseMLModelForSelfIdForTests:(BOOL)tests;
+ (void)setUseManateeSaltForHistory:(BOOL)history;
+ (void)setUserAccountsPersistedState:(id)state;
+ (void)suspendNotificationQueue;
+ (void)updateBoolSettingKey:(id)key withValue:(BOOL)value;
+ (void)updateDetection:(BOOL)detection forKey:(id)key;
+ (void)updateIntSettingKey:(id)key withValue:(int)value;
@end

@implementation SGPreferenceStorage

+ (id)defaults
{
  v2 = +[SGPreferenceManager defaultManager];
  v3 = v2[1];
  v4 = v3;

  return v3;
}

+ (BOOL)allowAnyDomainForMarkup
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"SuggestionsAllowAnyDomainForMarkup"];

  return v3;
}

+ (BOOL)detectStructuredEvents
{
  if (structuredEventsDetectionEnabledForTests)
  {
    v3 = structuredEventsDetectionEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    defaults = [self defaults];
    v6 = [defaults BOOLForKey:@"SuggestionsDetectStructuredEvents"];

    return v6;
  }
}

+ (void)resumeNotificationQueue
{
  v2 = +[SGPreferenceManager defaultManager];
  [v2 _resumeNotificationQueue];

  notificationQueueSuspended = 0;
}

+ (void)suspendNotificationQueue
{
  notificationQueueSuspended = 1;
  v2 = +[SGPreferenceManager defaultManager];
  [v2 _suspendNotificationQueue];
}

+ (void)setEventsMLRegexEnsembleExtractionEnabledForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = eventsMLRegexEnsembleExtractionEnabledForTests;
  eventsMLRegexEnsembleExtractionEnabledForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setUseMLModelForSelfIdForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = useMLModelForSelfId;
  useMLModelForSelfId = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setMessagesToProcessImmediatelyForTests:(int64_t)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:tests];
  v4 = messagesToProcessImmediatelyForTests;
  messagesToProcessImmediatelyForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setSyncHistoryToCloudForTests:(BOOL)tests
{
  syncHistoryToCloudForTests = [MEMORY[0x1E696AD98] numberWithBool:tests];

  MEMORY[0x1EEE66BB8]();
}

+ (void)setAllowGeocodeForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = allowGeocode;
  allowGeocode = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setContactsDetectionEnabledForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = contactsDetectionEnabledForTests;
  contactsDetectionEnabledForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setMailSaliencyDetectionEnabledForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = mailSaliencyDetectionEnabledForTests;
  mailSaliencyDetectionEnabledForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setRemindersDetectionInMailEnabledForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = remindersDetectionInMailEnabledForTests;
  remindersDetectionInMailEnabledForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setStructuredEventsMLDetectionEnabledForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = structuredEventsMLDetectionEnabledForTests;
  structuredEventsMLDetectionEnabledForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setRemindersDetectionEnabledForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = remindersDetectionEnabledForTests;
  remindersDetectionEnabledForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setStructuredEventsDetectionEnabledForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = structuredEventsDetectionEnabledForTests;
  structuredEventsDetectionEnabledForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setMessageEventsMLDetectionEnabledForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = messageEventsMLDetectionEnabledForTests;
  messageEventsMLDetectionEnabledForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setNLEventsDetectionEnabledForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = nlEventsDetectionEnabledForTests;
  nlEventsDetectionEnabledForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setShowCancelledEventsForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = showCancelledEventsForTests;
  showCancelledEventsForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setHideEventsExtractedFromOldDocumentsForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = hideEventsExtractedFromOldDocumentsForTests;
  hideEventsExtractedFromOldDocumentsForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setHidePastEventsForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = hidePastEventsForTests;
  hidePastEventsForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setEnableDKIMEnforcement:(BOOL)enforcement
{
  enforcementCopy = enforcement;
  defaults = [self defaults];
  [defaults setBool:enforcementCopy forKey:@"EnableDKIMEnforcement"];
}

+ (BOOL)enableDKIMEnforcement
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"EnableDKIMEnforcement"];

  return v3;
}

+ (BOOL)mailIntelligenceSPILogging
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"SuggestionsMailIntelligenceSPILogging"];

  return v3;
}

+ (id)followUpComputeCustomTimeRangeForLanguage:(id)language
{
  languageCopy = language;
  defaults = [self defaults];
  v6 = [defaults dictionaryForKey:@"SuggestionsFollowUpComputeCustomTimeRange"];
  v7 = [v6 objectForKeyedSubscript:languageCopy];

  return v7;
}

+ (id)followUpTimeRangeForDebugging
{
  defaults = [self defaults];
  v3 = [defaults dictionaryForKey:@"SuggestionsFollowUpTimeRangeForDebugging"];

  return v3;
}

+ (int64_t)preExtractionMaxDocumentAgeDays
{
  defaults = [self defaults];
  v3 = [defaults integerForKey:@"SuggestionsPreExtractionMaxDocumentAgeDays"];

  return v3;
}

+ (void)setHarvestBudgetCPUTimeSeconds:(double)seconds
{
  defaults = [self defaults];
  [defaults setDouble:@"SuggestionsHarvestBudgetCPUTimeSeconds" forKey:seconds];
}

+ (double)harvestBudgetCPUTimeSeconds
{
  defaults = [self defaults];
  [defaults doubleForKey:@"SuggestionsHarvestBudgetCPUTimeSeconds"];
  v4 = v3;

  return v4;
}

+ (void)setHarvestBudgetNumberOfOperations:(int64_t)operations
{
  defaults = [self defaults];
  [defaults setInteger:operations forKey:@"SuggestionsHarvestBudgetNumberOfOperations"];
}

+ (int64_t)harvestBudgetNumberOfOperations
{
  defaults = [self defaults];
  v3 = [defaults integerForKey:@"SuggestionsHarvestBudgetNumberOfOperations"];

  return v3;
}

+ (void)setShowOperatingSystemVersionInSnippets:(BOOL)snippets
{
  snippetsCopy = snippets;
  defaults = [self defaults];
  [defaults setBool:snippetsCopy forKey:@"ShowOperatingSystemVersionInSnippets"];
}

+ (BOOL)showOperatingSystemVersionInSnippets
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"ShowOperatingSystemVersionInSnippets"];

  return v3;
}

+ (void)setDidKVSMigrationToken:(id)token forIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaults = [selfCopy defaults];
  v10 = [defaults dictionaryForKey:@"DidKVSMigrationToken"];
  v11 = v10;
  if (!v10)
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  v12 = [v10 mutableCopy];

  [v12 setObject:tokenCopy forKeyedSubscript:identifierCopy];
  v13 = sgLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = tokenCopy;
    v17 = 2114;
    v18 = identifierCopy;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_1BA729000, v13, OS_LOG_TYPE_DEFAULT, "setDidKVSMigrationToken:%{public}@ forIdentifier:%{public}@, new dict: %{public}@", &v15, 0x20u);
  }

  defaults2 = [selfCopy defaults];
  [defaults2 setObject:v12 forKey:@"DidKVSMigrationToken"];

  objc_sync_exit(selfCopy);
}

+ (id)didKVSMigrationTokenForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  defaults = [self defaults];
  v6 = [defaults dictionaryForKey:@"DidKVSMigrationToken"];

  v7 = [v6 objectForKeyedSubscript:identifierCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)setUseManateeSaltForHistory:(BOOL)history
{
  historyCopy = history;
  defaults = [self defaults];
  [defaults setBool:historyCopy forKey:@"UseManateeSaltForHistory"];
}

+ (BOOL)useManateeSaltForHistory
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"UseManateeSaltForHistory"];

  return v3;
}

+ (void)setUserAccountsPersistedState:(id)state
{
  stateCopy = state;
  defaults = [self defaults];
  [defaults setValue:stateCopy forKey:@"UserAccountsPersistedState"];
}

+ (id)userAccountsPersistedState
{
  defaults = [self defaults];
  v3 = [defaults stringArrayForKey:@"UserAccountsPersistedState"];

  return v3;
}

+ (void)setCloudKitPersistedState:(id)state
{
  stateCopy = state;
  defaults = [self defaults];
  [defaults setValue:stateCopy forKey:@"CloudKitPersistedState"];
}

+ (id)cloudKitPersistedState
{
  defaults = [self defaults];
  v3 = [defaults dataForKey:@"CloudKitPersistedState"];

  return v3;
}

+ (BOOL)shouldHarvestEvents
{
  if (!firstPartyCalendarAppIsInstalled || (v2 = [firstPartyCalendarAppIsInstalled BOOLValue]) != 0)
  {
    LOBYTE(v2) = 1;
  }

  return v2;
}

+ (void)setFirstPartyMailAppIsInstalled:(BOOL)installed
{
  installedCopy = installed;
  if (!firstPartyMailAppIsInstalled || [firstPartyMailAppIsInstalled BOOLValue] != installed)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:installedCopy];
    v5 = firstPartyMailAppIsInstalled;
    firstPartyMailAppIsInstalled = v4;

    uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

    notify_post(uTF8String);
  }
}

+ (void)setFirstPartyCalendarAppIsInstalled:(BOOL)installed
{
  installedCopy = installed;
  if (!firstPartyCalendarAppIsInstalled || [firstPartyCalendarAppIsInstalled BOOLValue] != installed)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:installedCopy];
    v5 = firstPartyCalendarAppIsInstalled;
    firstPartyCalendarAppIsInstalled = v4;

    uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

    notify_post(uTF8String);
  }
}

+ (void)setDetectContacts:(BOOL)contacts
{
  if (contactsDetectionEnabledForTests)
  {
    __assert_rtn("+[SGPreferenceStorage setDetectContacts:]", "SGPreferenceStorage.m", 691, "contactsDetectionEnabledForTests == nil");
  }

  [self updateDetection:contacts forKey:@"SuggestionsDetectContacts"];
}

+ (void)setDetectMessageEventsML:(BOOL)l
{
  if (messageEventsMLDetectionEnabledForTests)
  {
    __assert_rtn("+[SGPreferenceStorage setDetectMessageEventsML:]", "SGPreferenceStorage.m", 684, "messageEventsMLDetectionEnabledForTests == nil");
  }

  [self updateDetection:l forKey:@"SuggestionsShowMessageEventsML"];
}

+ (void)setDetectNLEvents:(BOOL)events
{
  if (nlEventsDetectionEnabledForTests)
  {
    __assert_rtn("+[SGPreferenceStorage setDetectNLEvents:]", "SGPreferenceStorage.m", 678, "nlEventsDetectionEnabledForTests == nil");
  }

  [self updateDetection:events forKey:@"SuggestionsShowNLEvents"];
}

+ (void)setDetectStructuredEvents:(BOOL)events
{
  if (structuredEventsDetectionEnabledForTests)
  {
    __assert_rtn("+[SGPreferenceStorage setDetectStructuredEvents:]", "SGPreferenceStorage.m", 671, "structuredEventsDetectionEnabledForTests == nil");
  }

  [self updateDetection:events forKey:@"SuggestionsDetectStructuredEvents"];
}

+ (void)updateDetection:(BOOL)detection forKey:(id)key
{
  detectionCopy = detection;
  keyCopy = key;
  defaults = [self defaults];
  [defaults setBool:detectionCopy forKey:keyCopy];

  defaults2 = [self defaults];
  [defaults2 synchronize];

  uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(uTF8String);
}

+ (id)detectSalientMails
{
  if (mailSaliencyDetectionEnabledForTests)
  {
    v2 = mailSaliencyDetectionEnabledForTests;
  }

  else
  {
    defaults = [self defaults];
    v2 = [defaults objectForKey:@"SuggestionsDetectSalientMails"];
  }

  return v2;
}

+ (BOOL)detectRemindersInMail
{
  if (remindersDetectionInMailEnabledForTests)
  {
    v3 = remindersDetectionInMailEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    defaults = [self defaults];
    v6 = [defaults BOOLForKey:@"SuggestionsDetectRemindersInMail"];

    return v6;
  }
}

+ (BOOL)detectStructuredEventsML
{
  if (structuredEventsMLDetectionEnabledForTests)
  {
    v3 = structuredEventsMLDetectionEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    defaults = [self defaults];
    v6 = [defaults BOOLForKey:@"SuggestionsDetectStructuredsEventML"];

    return v6;
  }
}

+ (BOOL)detectReminders
{
  if (remindersDetectionEnabledForTests)
  {
    v3 = remindersDetectionEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    defaults = [self defaults];
    v6 = [defaults BOOLForKey:@"SuggestionsDetectReminders"];

    return v6;
  }
}

+ (BOOL)detectMessageEventsML
{
  if (messageEventsMLDetectionEnabledForTests)
  {
    v3 = messageEventsMLDetectionEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    defaults = [self defaults];
    v6 = [defaults BOOLForKey:@"SuggestionsShowMessageEventsML"];

    return v6;
  }
}

+ (BOOL)detectNLEvents
{
  if (nlEventsDetectionEnabledForTests)
  {
    v3 = nlEventsDetectionEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    defaults = [self defaults];
    v6 = [defaults BOOLForKey:@"SuggestionsShowNLEvents"];

    return v6;
  }
}

+ (BOOL)detectContacts
{
  if (contactsDetectionEnabledForTests)
  {
    v3 = contactsDetectionEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    defaults = [self defaults];
    v6 = [defaults BOOLForKey:@"SuggestionsDetectContacts"];

    return v6;
  }
}

+ (void)setContactSharingNegativeSamplingRate:(float)rate
{
  defaults = [self defaults];
  *&v6 = rate;
  [defaults setFloat:@"SuggestionsContactSharingNegativeSamplingRate" forKey:v6];

  defaults2 = [self defaults];
  [defaults2 synchronize];

  uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(uTF8String);
}

+ (float)contactSharingNegativeSamplingRate
{
  defaults = [self defaults];
  [defaults floatForKey:@"SuggestionsContactSharingNegativeSamplingRate"];
  v4 = v3;

  return v4;
}

+ (void)setUseMLModelForContactSharing:(BOOL)sharing
{
  sharingCopy = sharing;
  defaults = [self defaults];
  [defaults setBool:sharingCopy forKey:@"SuggestionsUseMLModelForContactSharing"];

  defaults2 = [self defaults];
  [defaults2 synchronize];

  uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(uTF8String);
}

+ (BOOL)useMLModelForContactSharing
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"SuggestionsUseMLModelForContactSharing"];

  return v3;
}

+ (void)setUseMLModelForSelfId:(BOOL)id
{
  idCopy = id;
  defaults = [self defaults];
  [defaults setBool:idCopy forKey:@"SuggestionsUseMLModelForSelfId"];

  defaults2 = [self defaults];
  [defaults2 synchronize];

  uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(uTF8String);
}

+ (BOOL)useMLModelForSelfId
{
  if (useMLModelForSelfId)
  {
    v3 = useMLModelForSelfId;

    return [v3 BOOLValue];
  }

  else
  {
    defaults = [self defaults];
    v6 = [defaults BOOLForKey:@"SuggestionsUseMLModelForSelfId"];

    return v6;
  }
}

+ (void)setUseMLModelForContacts:(BOOL)contacts
{
  contactsCopy = contacts;
  defaults = [self defaults];
  [defaults setBool:contactsCopy forKey:@"SuggestionsUseMLModelForContacts"];

  defaults2 = [self defaults];
  [defaults2 synchronize];

  uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(uTF8String);
}

+ (BOOL)useMLModelForContacts
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"SuggestionsUseMLModelForContacts"];

  return v3;
}

+ (void)setAllowAgeBasedPruning:(BOOL)pruning
{
  pruningCopy = pruning;
  defaults = [self defaults];
  [defaults setBool:pruningCopy forKey:@"SuggestionsAllowAgeBasedPruning"];

  defaults2 = [self defaults];
  [defaults2 synchronize];

  uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(uTF8String);
}

+ (BOOL)allowAgeBasedPruning
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"SuggestionsAllowAgeBasedPruning"];

  return v3;
}

+ (void)setDisabledEventUpdateCategories:(id)categories
{
  categoriesCopy = categories;
  defaults = [self defaults];
  [defaults setObject:categoriesCopy forKey:@"DisableEventUpdateCategories"];
}

+ (id)disabledEventUpdateCategories
{
  defaults = [self defaults];
  v3 = [defaults stringArrayForKey:@"DisableEventUpdateCategories"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

+ (void)setAllowAnyDomainForMarkup:(BOOL)markup
{
  markupCopy = markup;
  defaults = [self defaults];
  [defaults setBool:markupCopy forKey:@"SuggestionsAllowAnyDomainForMarkup"];

  defaults2 = [self defaults];
  [defaults2 synchronize];

  uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(uTF8String);
}

+ (void)setAllowUnverifiedSourceForMarkup:(BOOL)markup
{
  markupCopy = markup;
  defaults = [self defaults];
  [defaults setBool:markupCopy forKey:@"SuggestionsAllowUnverifiedSourceForMarkup"];

  defaults2 = [self defaults];
  [defaults2 synchronize];

  uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(uTF8String);
}

+ (BOOL)allowUnverifiedSourceForMarkup
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"SuggestionsAllowUnverifiedSourceForMarkup"];

  return v3;
}

+ (BOOL)allowGeocode
{
  if (allowGeocode)
  {
    v2 = allowGeocode;
  }

  else
  {
    v2 = MEMORY[0x1E695E118];
  }

  return [v2 BOOLValue];
}

+ (void)setSyncHistoryToCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  pthread_mutex_lock(&syncHistoryToCloudLock);
  defaults = [self defaults];
  [defaults setBool:!cloudCopy forKey:@"SuggestionsSuppressSyncHistoryToCloud"];

  syncHistoryToCloud = cloudCopy;

  pthread_mutex_unlock(&syncHistoryToCloudLock);
}

+ (BOOL)syncHistoryToCloud
{
  pthread_mutex_lock(&syncHistoryToCloudLock);
  v3 = syncHistoryToCloud;
  if (syncHistoryToCloud == 255)
  {
    defaults = [self defaults];
    syncHistoryToCloud = [defaults BOOLForKey:@"SuggestionsSuppressSyncHistoryToCloud"] ^ 1;

    v3 = syncHistoryToCloud;
  }

  v5 = v3 != 0;
  pthread_mutex_unlock(&syncHistoryToCloudLock);
  return v5;
}

+ (void)setMessagesToProcessImmediately:(int64_t)immediately
{
  defaults = [self defaults];
  [defaults setInteger:immediately forKey:@"SuggestionsMessagesToProcessImmediately"];

  defaults2 = [self defaults];
  [defaults2 synchronize];

  uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(uTF8String);
}

+ (int64_t)messagesToProcessImmediately
{
  if (messagesToProcessImmediatelyForTests)
  {
    v3 = messagesToProcessImmediatelyForTests;

    return [v3 integerValue];
  }

  else
  {
    defaults = [self defaults];
    v6 = [defaults integerForKey:@"SuggestionsMessagesToProcessImmediately"];

    return v6;
  }
}

+ (void)removeDeprecatedDefaults
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [&unk_1F38744E0 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(&unk_1F38744E0);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        defaults = [self defaults];
        [defaults removeObjectForKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [&unk_1F38744E0 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

+ (int)registerBlockOnSuggestionsSettingsChange:(id)change
{
  changeCopy = change;
  v4 = +[SGPreferenceManager defaultManager];
  v5 = [v4 registerBlock:changeCopy];

  return v5;
}

+ (BOOL)showSuggestionsCalendar
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"SuggestionsShowSuggestionsCalendar"];

  return v3;
}

+ (int64_t)hashedSessionsLogging
{
  defaults = [self defaults];
  v3 = [defaults integerForKey:@"SuggestionsHashedSessionsLogging"];

  return v3;
}

+ (BOOL)onlyShowSignificantNLEvents
{
  defaults = [self defaults];
  v3 = [defaults BOOLForKey:@"SuggestionsOnlyShowSignificantNLEvents"];

  return v3;
}

+ (void)setOnlyShowSignificantPseudoContactsForTests:(BOOL)tests
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:tests];
  v4 = onlyShowSignificantPseudoContactsForTests;
  onlyShowSignificantPseudoContactsForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (void)setOnlyShowSignificantPseudoContacts:(BOOL)contacts
{
  contactsCopy = contacts;
  if (onlyShowSignificantPseudoContactsForTests)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGPreferenceStorage.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"onlyShowSignificantPseudoContactsForTests == nil"}];
  }

  [self updateBoolSettingKey:@"SuggestionsOnlyShowSignificantPseudoContacts" withValue:contactsCopy];
}

+ (BOOL)onlyShowSignificantPseudoContacts
{
  if (onlyShowSignificantPseudoContactsForTests)
  {
    v3 = onlyShowSignificantPseudoContactsForTests;

    return [v3 BOOLValue];
  }

  else
  {
    defaults = [self defaults];
    v6 = [defaults BOOLForKey:@"SuggestionsOnlyShowSignificantPseudoContacts"];

    return v6;
  }
}

+ (void)updateIntSettingKey:(id)key withValue:(int)value
{
  keyCopy = key;
  defaults = [self defaults];
  [defaults setInteger:value forKey:keyCopy];

  defaults2 = [self defaults];
  [defaults2 synchronize];

  uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(uTF8String);
}

+ (void)updateBoolSettingKey:(id)key withValue:(BOOL)value
{
  valueCopy = value;
  keyCopy = key;
  defaults = [self defaults];
  [defaults setBool:valueCopy forKey:keyCopy];

  defaults2 = [self defaults];
  [defaults2 synchronize];

  uTF8String = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(uTF8String);
}

+ (BOOL)alwaysShowCancelledEvents
{
  if (showCancelledEventsForTests)
  {
    v3 = showCancelledEventsForTests;

    return [v3 BOOLValue];
  }

  else
  {
    defaults = [self defaults];
    v6 = [defaults BOOLForKey:@"SuggestionsAlwaysShowCancelledEvents"];

    return v6;
  }
}

+ (void)setShowPastEvents:(BOOL)events
{
  eventsCopy = events;
  pthread_mutex_lock(&shouldShowPastEventsLock);
  [self updateBoolSettingKey:@"SuggestionsShowPastEvents" withValue:eventsCopy];
  shouldShowPastEvents = eventsCopy;

  pthread_mutex_unlock(&shouldShowPastEventsLock);
}

+ (BOOL)showPastEvents
{
  if (hidePastEventsForTests)
  {
    if ([hidePastEventsForTests BOOLValue])
    {
      return 0;
    }

    if (![hidePastEventsForTests BOOLValue])
    {
      return 1;
    }
  }

  pthread_mutex_lock(&shouldShowPastEventsLock);
  v4 = shouldShowPastEvents;
  if (shouldShowPastEvents == 255)
  {
    defaults = [self defaults];
    shouldShowPastEvents = [defaults BOOLForKey:@"SuggestionsShowPastEvents"];

    v4 = shouldShowPastEvents;
  }

  v3 = v4 != 0;
  pthread_mutex_unlock(&shouldShowPastEventsLock);
  return v3;
}

+ (int64_t)suggestionsLogLevel
{
  defaults = [self defaults];
  v3 = [defaults integerForKey:@"SuggestionsLoggingLevel"];

  return v3;
}

+ (void)resetAllPreferences
{
  defaults = [self defaults];
  [defaults removeObjectForKey:@"SuggestionsAlwaysShowCancelledEvents"];

  defaults2 = [self defaults];
  [defaults2 removeObjectForKey:@"SuggestionsLoggingLevel"];

  defaults3 = [self defaults];
  [defaults3 removeObjectForKey:@"SuggestionsMessagesToProcessImmediately"];

  defaults4 = [self defaults];
  [defaults4 removeObjectForKey:@"SuggestionsOnlyShowSignificantPseudoContacts"];

  defaults5 = [self defaults];
  [defaults5 removeObjectForKey:@"SuggestionsOnlyShowSignificantNLEvents"];

  defaults6 = [self defaults];
  [defaults6 removeObjectForKey:@"SuggestionsShowPastEvents"];

  defaults7 = [self defaults];
  [defaults7 removeObjectForKey:@"SuggestionsShowSuggestionsCalendar"];

  defaults8 = [self defaults];
  [defaults8 removeObjectForKey:@"SuggestionsSuppressSyncHistoryToCloud"];

  defaults9 = [self defaults];
  [defaults9 removeObjectForKey:@"SuggestionsAllowGeocode"];

  defaults10 = [self defaults];
  [defaults10 removeObjectForKey:@"SuggestionsAllowUnverifiedSourceForMarkup"];

  defaults11 = [self defaults];
  [defaults11 removeObjectForKey:@"SuggestionsAllowAnyDomainForMarkup"];

  defaults12 = [self defaults];
  [defaults12 removeObjectForKey:@"SuggestionsUseMLModelForContacts"];

  defaults13 = [self defaults];
  [defaults13 removeObjectForKey:@"SuggestionsUseMLModelForSelfId"];

  defaults14 = [self defaults];
  [defaults14 removeObjectForKey:@"SuggestionsAllowAgeBasedPruning"];

  defaults15 = [self defaults];
  [defaults15 removeObjectForKey:@"SuggestionsDetectContacts"];

  defaults16 = [self defaults];
  [defaults16 removeObjectForKey:@"SuggestionsShowNLEvents"];

  defaults17 = [self defaults];
  [defaults17 removeObjectForKey:@"SuggestionsShowMessageEventsML"];

  defaults18 = [self defaults];
  [defaults18 removeObjectForKey:@"SuggestionsDetectStructuredEvents"];

  defaults19 = [self defaults];
  [defaults19 removeObjectForKey:@"SuggestionsDetectReminders"];

  defaults20 = [self defaults];
  [defaults20 removeObjectForKey:@"SuggestionsDetectStructuredsEventML"];

  defaults21 = [self defaults];
  [defaults21 removeObjectForKey:@"SuggestionsDetectRemindersInMail"];

  defaults22 = [self defaults];
  [defaults22 removeObjectForKey:@"SuggestionsDetectSalientMails"];

  defaults23 = [self defaults];
  [defaults23 removeObjectForKey:@"SuggestionsFollowUpTimeRangeForDebugging"];

  defaults24 = [self defaults];
  [defaults24 removeObjectForKey:@"SuggestionsFollowUpComputeCustomTimeRange"];

  defaults25 = [self defaults];
  [defaults25 removeObjectForKey:@"SuggestionsMailIntelligenceSPILogging"];

  defaults26 = [self defaults];
  [defaults26 removeObjectForKey:@"SuggestionsHashedSessionsLogging"];

  defaults27 = [self defaults];
  [defaults27 removeObjectForKey:@"CloudKitPersistedState"];

  defaults28 = [self defaults];
  [defaults28 removeObjectForKey:@"UserAccountsPersistedState"];

  defaults29 = [self defaults];
  [defaults29 removeObjectForKey:@"SuggestionsUseMLModelForContactSharing"];

  defaults30 = [self defaults];
  [defaults30 removeObjectForKey:@"SuggestionsContactSharingNegativeSamplingRate"];

  defaults31 = [self defaults];
  [defaults31 removeObjectForKey:@"SuggestionsHarvestBudgetNumberOfOperations"];

  defaults32 = [self defaults];
  [defaults32 removeObjectForKey:@"SuggestionsHarvestBudgetCPUTimeSeconds"];

  defaults33 = [self defaults];
  [defaults33 removeObjectForKey:@"DisableEventUpdateCategories"];

  defaults34 = [self defaults];
  [defaults34 removeObjectForKey:@"SuggestionsPreExtractionMaxDocumentAgeDays"];
}

+ (BOOL)showEventsFoundInMail
{
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:@"com.apple.mobilecal"];

  return v3 ^ 1;
}

+ (BOOL)showContactsFoundInMail
{
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:@"com.apple.MobileAddressBook"];

  return v3 ^ 1;
}

@end