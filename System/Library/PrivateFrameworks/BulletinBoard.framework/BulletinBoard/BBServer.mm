@interface BBServer
+ (id)_persistentSettingsStore;
+ (id)savedChronologicalSectionOrder;
+ (id)savedSectionInfo;
+ (void)removeSavedChronologicalSectionInfo:(id)info;
- (BBServer)initWithQueue:(id)queue;
- (BBServer)initWithQueue:(id)queue dataProviderManager:(id)manager syncService:(id)service dismissalSyncCache:(id)cache observerListener:(id)listener conduitListener:(id)conduitListener settingsListener:(id)settingsListener;
- (BOOL)_didNotificationCenterSettingsChangeWithSectionInfo:(id)info replacingSectionInfo:(id)sectionInfo;
- (BOOL)_hasPairedVehiclesForCarPlay;
- (BOOL)_isAnnounceSupportedForCarPlay;
- (BOOL)_isAnnounceSupportedForHeadphones;
- (BOOL)_verifyBulletinRequest:(id)request forDataProvider:(id)provider;
- (BOOL)isGreyMatterEligble;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_allBulletinsForSectionID:(id)d;
- (id)_allSectionInfoIDs;
- (id)_applicableSectionInfosForBulletin:(id)bulletin inSection:(id)section;
- (id)_bulletinDefaultExpirationDateFromDate:(id)date;
- (id)_bulletinIDsInSortedArray:(id)array withDateForKey:(id)key beforeCutoff:(id)cutoff;
- (id)_bulletinRequestsForIDs:(id)ds;
- (id)_bulletinsForIDs:(id)ds;
- (id)_bulletinsForSectionID:(id)d inFeeds:(unint64_t)feeds;
- (id)_clearedInfoForSectionID:(id)d;
- (id)_enabledSectionIDsForDataProvider:(id)provider;
- (id)_encodedScheduledDeliveryTimesForDeliveryTimes:(id)times;
- (id)_globalScheduledDeliveryTimes;
- (id)_mapForFeed:(unint64_t)feed;
- (id)_newDateCompontentsByInvertingInterestingPartsOfComponents:(id)components;
- (id)_newValidatedDefaultExpirationComponentsFromComponents:(id)components;
- (id)_nextExpireBulletinsDate;
- (id)_observerGateways;
- (id)_observerGatewaysForFeeds:(unint64_t)feeds;
- (id)_observersForNoticesFeed;
- (id)_openApplicationOptionsForResponse:(id)response;
- (id)_scheduledDeliveryTimesForEncodedDeliveryTimes:(id)times;
- (id)_sectionInfoArray:(BOOL)array;
- (id)_sectionInfoForSectionID:(id)d effective:(BOOL)effective;
- (id)_sectionInfoStore;
- (id)_sinceDate;
- (id)allBulletinIDsForSectionID:(id)d;
- (id)bulletinIDsForSectionID:(id)d inFeed:(unint64_t)feed;
- (id)bulletinsForPublisherMatchIDs:(id)ds sectionID:(id)d;
- (id)bulletinsRequestsForBulletinIDs:(id)ds;
- (id)dataProviderForSectionID:(id)d;
- (id)dpManager:(id)manager sectionInfoForSectionID:(id)d;
- (id)savedSectionInfo;
- (id)sectionIDsForUniversalSectionID:(id)d;
- (id)universalSectionIDForSectionID:(id)d;
- (int64_t)_defaultGlobalContentPreviewSetting;
- (int64_t)_defaultGlobalHighlightsSetting;
- (int64_t)_defaultGlobalSummarizationSetting;
- (int64_t)_effectiveGlobalAnnounceBuiltInSpeakerSetting;
- (int64_t)_effectiveGlobalAnnounceCarPlaySetting;
- (int64_t)_effectiveGlobalAnnounceHeadphonesSetting;
- (int64_t)_effectiveGlobalAnnounceHearingAidsSetting;
- (int64_t)_effectiveGlobalAnnounceSetting;
- (int64_t)_effectiveGlobalContentPreviewsSetting;
- (int64_t)_effectiveGlobalHighlightsSetting;
- (int64_t)_effectiveGlobalNotificationListDisplayStyleSetting;
- (int64_t)_effectiveGlobalScheduledDeliverySetting;
- (int64_t)_effectiveGlobalScheduledDeliveryShowNextSummarySetting;
- (int64_t)_effectiveGlobalSummarizationSetting;
- (int64_t)_globalAnnounceCarPlaySetting;
- (int64_t)_globalAnnounceHeadphonesSetting;
- (int64_t)_globalAnnounceSetting;
- (int64_t)_globalContentPreviewsSetting;
- (int64_t)_globalHighlightsSetting;
- (int64_t)_globalNotificationListDisplayStyleSetting;
- (int64_t)_globalScheduledDeliverySetting;
- (int64_t)_globalScheduledDeliveryShowNextSummarySetting;
- (int64_t)_globalSummarizationSetting;
- (unint64_t)_feedsForBulletin:(id)bulletin destinations:(unint64_t)destinations;
- (unint64_t)_indexForNewDate:(id)date inBulletinIDArray:(id)array sortedAscendingByDateForKey:(id)key;
- (unint64_t)effectivePushSettingsForSectionInfo:(id)info;
- (void)_addActiveSectionID:(id)d;
- (void)_addBulletin:(id)bulletin;
- (void)_addObserver:(id)observer;
- (void)_addSettingsGatewayConnection:(id)connection;
- (void)_addStateCaptureHandlers;
- (void)_addSuspendedConnection:(id)connection;
- (void)_assignIDToBulletinRequest:(id)request;
- (void)_assignIDToBulletinRequest:(id)request checkAgainstBulletins:(id)bulletins;
- (void)_biometricResourceStateChanged;
- (void)_clearBulletinIDIfPossible:(id)possible rescheduleExpirationTimer:(BOOL)timer;
- (void)_clearBulletinIDs:(id)ds forSectionID:(id)d shouldSync:(BOOL)sync;
- (void)_clearBulletinsFromDate:(id)date toDate:(id)toDate forSection:(id)section;
- (void)_clearExpirationTimer;
- (void)_clearSection:(id)section;
- (void)_dataProviderDidClearInfo:(id)info forSection:(id)section;
- (void)_didReceiveResponseForBulletin:(id)bulletin;
- (void)_enqueueBulletinUpdate:(id)update;
- (void)_ensureDataDirectoryExists;
- (void)_expireBulletins;
- (void)_expireBulletinsAndRescheduleTimerIfNecessary;
- (void)_expireBulletinsDueToSystemEvent:(unint64_t)event;
- (void)_fetchAllVehiclesForCarPlay;
- (void)_handleSignificantTimeChange;
- (void)_loadClearedSections;
- (void)_loadDataProvidersAndSettings;
- (void)_loadSavedSectionInfo;
- (void)_loadSystemCapabilities;
- (void)_logObserversBeforeAndAfterUpdateBlock:(id)block;
- (void)_migrateGlobalAnnounceSettingIfNeeded;
- (void)_migrateLoadedData;
- (void)_modifyBulletin:(id)bulletin;
- (void)_observeManagedProfileChanges;
- (void)_pairedVehiclesForCarPlayDidChange:(id)change;
- (void)_performPendingBulletinUpdatesForBulletinID:(id)d;
- (void)_publishBiomeSignalEventForGlobalNotificationListDisplayStyleSettingChangeToSetting:(int64_t)setting;
- (void)_publishBulletinRequest:(id)request forSectionID:(id)d forDestinations:(unint64_t)destinations;
- (void)_publishBulletinsForAllDataProviders;
- (void)_queue_managedUserNotificationsSetttingsDidChange;
- (void)_reloadReloadSectionInfoForSectionID:(id)d;
- (void)_reloadSectionParametersForSectionID:(id)d;
- (void)_removeBulletin:(id)bulletin rescheduleTimerIfAffected:(BOOL)affected shouldSync:(BOOL)sync;
- (void)_removeBulletins:(id)bulletins forSectionID:(id)d shouldSync:(BOOL)sync;
- (void)_removeObserver:(id)observer;
- (void)_removeSection:(id)section;
- (void)_removeSettingsGatewayConnection:(id)connection;
- (void)_removeSuspendedConnection:(id)connection;
- (void)_resumeAllSuspendedConnectionsWithCompletionHandler:(id)handler;
- (void)_saveGlobalAnnounceSettingEnabledEvent;
- (void)_saveUpdatedSectionInfo:(id)info forSectionID:(id)d;
- (void)_scheduleExpirationForBulletin:(id)bulletin;
- (void)_scheduleTimerForDate:(id)date;
- (void)_sendAddBulletin:(id)bulletin toFeeds:(unint64_t)feeds;
- (void)_sendBulletinUpdate:(id)update;
- (void)_sendBulletinsLoadedForSectionID:(id)d;
- (void)_sendModifyBulletin:(id)bulletin toFeeds:(unint64_t)feeds;
- (void)_sendObserver:(id)observer noticesBulletinsForSectionID:(id)d;
- (void)_sendRemoveBulletin:(id)bulletin toFeeds:(unint64_t)feeds shouldSync:(BOOL)sync;
- (void)_sendRemoveBulletins:(id)bulletins toFeeds:(unint64_t)feeds shouldSync:(BOOL)sync;
- (void)_sendRemoveSection:(id)section;
- (void)_sendUpdateSectionInfo:(id)info;
- (void)_setAnnounceSupportedForCarPlay:(BOOL)play;
- (void)_setAnnounceSupportedForHeadphones:(BOOL)headphones;
- (void)_setClearedInfo:(id)info forSectionID:(id)d;
- (void)_setDefaultExpirationComponents:(id)components;
- (void)_setGlobalAnnounceCarPlaySetting:(int64_t)setting;
- (void)_setGlobalAnnounceHeadphonesSetting:(int64_t)setting;
- (void)_setGlobalAnnounceSetting:(int64_t)setting;
- (void)_setGlobalContentPreviewsSetting:(int64_t)setting;
- (void)_setGlobalHighlightsSetting:(int64_t)setting;
- (void)_setGlobalNotificationListDisplayStyleSetting:(int64_t)setting;
- (void)_setGlobalScheduledDeliverySetting:(int64_t)setting;
- (void)_setGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting;
- (void)_setGlobalScheduledDeliveryTimes:(id)times;
- (void)_setGlobalSummarizationSetting:(int64_t)setting;
- (void)_setPairedVehiclesForCarPlay:(BOOL)play;
- (void)_setPrimitiveSectionInfo:(id)info forSectionID:(id)d;
- (void)_setSectionInfo:(id)info forSectionID:(id)d;
- (void)_setSectionInfoNoteSettingsChanged:(id)changed forSectionID:(id)d;
- (void)_siriPreferencesDidChange:(id)change;
- (void)_storeObserver:(id)observer forFeed:(unint64_t)feed;
- (void)_unobserveManagedProfileChanges;
- (void)_updateAllBulletinsForDataProvider:(id)provider;
- (void)_updateAllSectionInfos;
- (void)_updateAnnounceControlCenterModuleAvailability;
- (void)_updateAnnounceSettings;
- (void)_updateBulletinsInFeed:(unint64_t)feed forDataProvider:(id)provider enabledSectionIDs:(id)ds;
- (void)_updateBulletinsInFeed:(unint64_t)feed forDataProviderIfSectionIsEnabled:(id)enabled;
- (void)_updateBulletinsInFeed:(unint64_t)feed ifSectionIsEnabled:(id)enabled;
- (void)_updateClearedInfoForSectionID:(id)d handler:(id)handler;
- (void)_updateDataProviderForSectionInfo:(id)info sectionID:(id)d;
- (void)_updateGlobalSettings;
- (void)_updateInterruptionLevelForBulletin:(id)bulletin;
- (void)_updateSectionInfoForSectionID:(id)d handler:(id)handler;
- (void)_updateSectionParametersForDataProvider:(id)provider;
- (void)_updateShowsMessagePreviewForBulletin:(id)bulletin;
- (void)_updateSiriPreferences;
- (void)_validateExpirationDateForBulletinRequest:(id)request;
- (void)_writeClearedSections;
- (void)_writeSectionInfo;
- (void)clearBulletinIDIfPossible:(id)possible rescheduleExpirationTimer:(BOOL)timer;
- (void)dealloc;
- (void)deliverResponse:(id)response withCompletion:(id)completion;
- (void)didChangeEffectiveAuthorizationStatusForSectionID:(id)d;
- (void)didChangeMuteAssertionForSectionID:(id)d;
- (void)dpManager:(id)manager addDataProvider:(id)provider withSectionInfo:(id)info;
- (void)dpManager:(id)manager addParentSectionFactory:(id)factory;
- (void)dpManager:(id)manager removeDataProviderSectionID:(id)d;
- (void)eligibleAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform;
- (void)getActiveSectionIDsWithHandler:(id)handler;
- (void)getBulletinsForPublisherMatchIDs:(id)ds sectionID:(id)d withHandler:(id)handler;
- (void)getBulletinsWithHandler:(id)handler;
- (void)getEffectiveGlobalAnnounceCarPlaySettingWithHandler:(id)handler;
- (void)getEffectiveGlobalAnnounceHeadphonesSettingWithHandler:(id)handler;
- (void)getEffectiveGlobalAnnounceSettingWithHandler:(id)handler;
- (void)getEffectiveGlobalContentPreviewsSettingWithHandler:(id)handler;
- (void)getEffectiveGlobalHighlightsSettingWithHandler:(id)handler;
- (void)getEffectiveGlobalNotificationListDisplayStyleSettingWithHandler:(id)handler;
- (void)getEffectiveGlobalScheduledDeliverySettingWithHandler:(id)handler;
- (void)getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithHandler:(id)handler;
- (void)getEffectiveGlobalScheduledDeliveryTimesWithHandler:(id)handler;
- (void)getEffectiveGlobalSummarizationSettingWithHandler:(id)handler;
- (void)getEffectiveSectionInfoForSectionID:(id)d withHandler:(id)handler;
- (void)getEffectiveSectionInfoForSectionIDs:(id)ds withHandler:(id)handler;
- (void)getEffectiveSectionInfoWithHandler:(id)handler;
- (void)getPublisherMatchIDsOfBulletinsPublishedAfterDate:(id)date withHandler:(id)handler;
- (void)getSectionIDsWithHandler:(id)handler;
- (void)getSectionInfoForActiveSectionsWithHandler:(id)handler;
- (void)getSectionInfoForSectionID:(id)d withHandler:(id)handler;
- (void)getSectionInfoForSectionIDs:(id)ds withHandler:(id)handler;
- (void)getSectionInfoWithHandler:(id)handler;
- (void)getSectionParametersForSectionID:(id)d withHandler:(id)handler;
- (void)getUniversalSectionIDForSectionID:(id)d withHandler:(id)handler;
- (void)handleDismissalDictionaries:(id)dictionaries dismissalIDs:(id)ds inSection:(id)section forFeeds:(unint64_t)feeds;
- (void)loadDataProvidersAndSettings;
- (void)noteChangeOfState:(unint64_t)state newValue:(BOOL)value;
- (void)noteOccurrenceOfEvent:(unint64_t)event;
- (void)observer:(id)observer clearBulletinIDs:(id)ds inSection:(id)section;
- (void)observer:(id)observer clearBulletinsFromDate:(id)date toDate:(id)toDate inSections:(id)sections;
- (void)observer:(id)observer clearSection:(id)section;
- (void)observer:(id)observer finishedWithBulletinID:(id)d transactionID:(unint64_t)iD;
- (void)observer:(id)observer getSectionInfoForActiveSectionsWithHandler:(id)handler;
- (void)observer:(id)observer getSectionInfoForSectionIDs:(id)ds withHandler:(id)handler;
- (void)observer:(id)observer getSectionInfoWithHandler:(id)handler;
- (void)observer:(id)observer handleResponse:(id)response withCompletion:(id)completion;
- (void)observer:(id)observer removeBulletins:(id)bulletins inSection:(id)section fromFeeds:(unint64_t)feeds;
- (void)observer:(id)observer requestNoticesBulletinsForSectionID:(id)d;
- (void)observer:(id)observer setObserverFeed:(unint64_t)feed asLightsAndSirensGateway:(id)gateway priority:(unint64_t)priority;
- (void)observer:(id)observer setObserverFeed:(unint64_t)feed attachToLightsAndSirensGateway:(id)gateway;
- (void)ping:(id)ping;
- (void)protectionStateChangedForBundleIdentifiers:(id)identifiers;
- (void)publishBulletin:(id)bulletin destinations:(unint64_t)destinations;
- (void)publishBulletinRequest:(id)request destinations:(unint64_t)destinations;
- (void)refreshAnnounceSettings;
- (void)refreshGlobalSettings;
- (void)refreshSectionInfo;
- (void)refreshSectionInfoForID:(id)d;
- (void)removeBulletinID:(id)d fromSection:(id)section inFeed:(unint64_t)feed;
- (void)requestNoticesBulletinsForAllSections:(id)sections;
- (void)sendMessageToDataProviderSectionID:(id)d name:(id)name userInfo:(id)info;
- (void)setEffectiveGlobalAnnounceCarPlaySetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalAnnounceHeadphonesSetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalAnnounceSetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalContentPreviewsSetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalHighlightsSetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalNotificationListDisplayStyleSetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalScheduledDeliverySetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting withHandler:(id)handler;
- (void)setEffectiveGlobalScheduledDeliveryTimes:(id)times withHandler:(id)handler;
- (void)setEffectiveGlobalSummarizationSetting:(int64_t)setting withHandler:(id)handler;
- (void)setSectionInfo:(id)info forSectionID:(id)d withHandler:(id)handler;
- (void)syncService:(id)service receivedDismissalDictionaries:(id)dictionaries dismissalIDs:(id)ds inSection:(id)section universalSectionID:(id)d forFeeds:(unint64_t)feeds;
- (void)updateSection:(id)section inFeed:(unint64_t)feed withBulletinRequests:(id)requests;
- (void)weeAppWithBundleID:(id)d getHiddenFromUser:(id)user;
- (void)weeAppWithBundleID:(id)d setHiddenFromUser:(BOOL)user;
- (void)withdrawBulletinID:(id)d shouldSync:(BOOL)sync;
- (void)withdrawBulletinRequestsWithPublisherBulletinID:(id)d shouldSync:(BOOL)sync forSectionID:(id)iD;
- (void)withdrawBulletinRequestsWithRecordID:(id)d forSectionID:(id)iD;
@end

@implementation BBServer

- (int64_t)_effectiveGlobalContentPreviewsSetting
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(BBServer *)self _globalContentPreviewsSetting])
  {

    return [(BBServer *)self _globalContentPreviewsSetting];
  }

  else
  {

    return [(BBServer *)self _defaultGlobalContentPreviewSetting];
  }
}

- (int64_t)_globalContentPreviewsSetting
{
  dispatch_assert_queue_V2(self->_queue);
  v2 = +[BBBulletinBoardDefaults standardDefaults];
  globalContentPreviewSetting = [v2 globalContentPreviewSetting];

  return globalContentPreviewSetting;
}

- (int64_t)_defaultGlobalContentPreviewSetting
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(BBBiometricResource *)self->_biometricResource hasPearlCapability]&& [(BBBiometricResource *)self->_biometricResource isPearlEnabledAndEnrolled])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_effectiveGlobalAnnounceSetting
{
  dispatch_assert_queue_V2(self->_queue);
  if (![(BBServer *)self _isAnnounceSupportedForHeadphones]&& (![(BBServer *)self _isAnnounceSupportedForCarPlay]|| ![(BBServer *)self _hasPairedVehiclesForCarPlay]) && !self->_announceOnHearingAidsSupported && !self->_announceOnBuiltInSpeakerEnabled)
  {
    return -1;
  }

  if (!self->_siriEnabled || !self->_siriAllowedWhenLocked)
  {
    return 1;
  }

  result = [(BBServer *)self _globalAnnounceSetting];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (BOOL)_isAnnounceSupportedForHeadphones
{
  v2 = +[BBBulletinBoardDefaults standardDefaults];
  isAnnounceSupportedForHeadphones = [v2 isAnnounceSupportedForHeadphones];

  return isAnnounceSupportedForHeadphones;
}

- (BOOL)_isAnnounceSupportedForCarPlay
{
  v2 = +[BBBulletinBoardDefaults standardDefaults];
  isAnnounceSupportedForCarPlay = [v2 isAnnounceSupportedForCarPlay];

  return isAnnounceSupportedForCarPlay;
}

- (int64_t)_effectiveGlobalHighlightsSetting
{
  dispatch_assert_queue_V2(self->_queue);
  if (!BBAreGenerativePrioritizationModelsAvailable())
  {
    return -1;
  }

  if ([(BBServer *)self _globalHighlightsSetting])
  {

    return [(BBServer *)self _globalHighlightsSetting];
  }

  else
  {

    return [(BBServer *)self _defaultGlobalHighlightsSetting];
  }
}

- (int64_t)_defaultGlobalHighlightsSetting
{
  dispatch_assert_queue_V2(self->_queue);
  if (BBAreGenerativePrioritizationModelsAvailable())
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (int64_t)_globalSummarizationSetting
{
  dispatch_assert_queue_V2(self->_queue);
  v2 = +[BBBulletinBoardDefaults standardDefaults];
  globalSummarizationSetting = [v2 globalSummarizationSetting];

  return globalSummarizationSetting;
}

- (BOOL)_hasPairedVehiclesForCarPlay
{
  v2 = +[BBBulletinBoardDefaults standardDefaults];
  hasPairedVehiclesForCarPlay = [v2 hasPairedVehiclesForCarPlay];

  return hasPairedVehiclesForCarPlay;
}

- (int64_t)_effectiveGlobalScheduledDeliverySetting
{
  if (![(BBServer *)self _globalScheduledDeliverySetting])
  {
    return -1;
  }

  return [(BBServer *)self _globalScheduledDeliverySetting];
}

- (int64_t)_globalScheduledDeliverySetting
{
  dispatch_assert_queue_V2(self->_queue);
  v2 = +[BBBulletinBoardDefaults standardDefaults];
  globalScheduledDeliverySetting = [v2 globalScheduledDeliverySetting];

  return globalScheduledDeliverySetting;
}

- (int64_t)_effectiveGlobalSummarizationSetting
{
  dispatch_assert_queue_V2(self->_queue);
  if (!BBAreGenerativeSummarizationModelsAvailable())
  {
    return -1;
  }

  if ([(BBServer *)self _globalSummarizationSetting])
  {

    return [(BBServer *)self _globalSummarizationSetting];
  }

  else
  {

    return [(BBServer *)self _defaultGlobalSummarizationSetting];
  }
}

- (int64_t)_defaultGlobalSummarizationSetting
{
  dispatch_assert_queue_V2(self->_queue);
  if (BBAreGenerativeSummarizationModelsAvailable())
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (int64_t)_globalHighlightsSetting
{
  dispatch_assert_queue_V2(self->_queue);
  v2 = +[BBBulletinBoardDefaults standardDefaults];
  globalHighlightsSetting = [v2 globalHighlightsSetting];

  return globalHighlightsSetting;
}

- (void)_expireBulletinsAndRescheduleTimerIfNecessary
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  [(BBServer *)self _expireBulletins];
  _nextExpireBulletinsDate = [(BBServer *)self _nextExpireBulletinsDate];
  v4 = BBLogExpiration;
  if (os_log_type_enabled(BBLogExpiration, OS_LOG_TYPE_DEFAULT))
  {
    nextScheduledExpirationTimerFireDate = self->_nextScheduledExpirationTimerFireDate;
    v12 = 138543618;
    v13 = _nextExpireBulletinsDate;
    v14 = 2114;
    v15 = nextScheduledExpirationTimerFireDate;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Next expire bulletins date = %{public}@; current fire date = %{public}@", &v12, 0x16u);
  }

  if (_nextExpireBulletinsDate)
  {
    if (![(NSDate *)_nextExpireBulletinsDate isEqualToDate:self->_nextScheduledExpirationTimerFireDate])
    {
      [(BBServer *)self _clearExpirationTimer];
      [(BBServer *)self _scheduleTimerForDate:_nextExpireBulletinsDate];
      goto LABEL_11;
    }

    v6 = BBLogExpiration;
    if (os_log_type_enabled(BBLogExpiration, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_nextScheduledExpirationTimerFireDate;
      v12 = 138543362;
      v13 = v7;
      v8 = "Not adjusting expiration timer. Next fire date = %{public}@";
      v9 = v6;
      v10 = 12;
LABEL_9:
      _os_log_impl(&dword_241EFF000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    }
  }

  else
  {
    [(BBServer *)self _clearExpirationTimer];
    v11 = BBLogExpiration;
    if (os_log_type_enabled(BBLogExpiration, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v8 = "Expiration timer is not set.";
      v9 = v11;
      v10 = 2;
      goto LABEL_9;
    }
  }

LABEL_11:
}

- (void)_expireBulletins
{
  v32 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_expiringBulletinIDs count])
  {
    date = [MEMORY[0x277CBEAA8] date];
    v4 = [date dateByAddingTimeInterval:20.0];

    v19 = v4;
    v18 = [(BBServer *)self _bulletinIDsInSortedArray:self->_expiringBulletinIDs withDateForKey:@"expirationDate" beforeCutoff:v4];
    [(BBServer *)self _bulletinsForIDs:?];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v24 = 0u;
    v5 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          v10 = BBLogExpiration;
          if (os_log_type_enabled(BBLogExpiration, OS_LOG_TYPE_DEFAULT))
          {
            v11 = v10;
            sectionID = [v9 sectionID];
            bulletinID = [v9 bulletinID];
            expirationDate = [v9 expirationDate];
            *buf = 138543874;
            v26 = sectionID;
            v27 = 2114;
            v28 = bulletinID;
            v29 = 2114;
            v30 = expirationDate;
            _os_log_impl(&dword_241EFF000, v11, OS_LOG_TYPE_DEFAULT, "Expiring bulletin in section <%{public}@>: bulletinID = <%{public}@>, expiration date = <%{public}@>", buf, 0x20u);
          }

          responseForExpireAction = [v9 responseForExpireAction];
          [(BBServer *)self deliverResponse:responseForExpireAction withCompletion:0];
          expiringBulletinIDs = self->_expiringBulletinIDs;
          bulletinID2 = [v9 bulletinID];
          [(NSMutableArray *)expiringBulletinIDs removeObject:bulletinID2];

          [(BBServer *)self _removeBulletin:v9 rescheduleTimerIfAffected:0 shouldSync:0];
        }

        v6 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
      }

      while (v6);
    }
  }
}

- (id)_nextExpireBulletinsDate
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_expiringBulletinIDs count])
  {
    bulletinsByID = self->_bulletinsByID;
    v4 = [(NSMutableArray *)self->_expiringBulletinIDs objectAtIndex:0];
    v5 = [(NSMutableDictionary *)bulletinsByID objectForKey:v4];

    expirationDate = [v5 expirationDate];
  }

  else
  {
    expirationDate = 0;
  }

  return expirationDate;
}

- (void)_clearExpirationTimer
{
  dispatch_assert_queue_V2(self->_queue);
  expirationTimer = self->_expirationTimer;
  if (expirationTimer)
  {
    dispatch_source_cancel(expirationTimer);
    v4 = self->_expirationTimer;
    self->_expirationTimer = 0;
  }

  nextScheduledExpirationTimerFireDate = self->_nextScheduledExpirationTimerFireDate;
  self->_nextScheduledExpirationTimerFireDate = 0;
}

- (int64_t)_globalAnnounceSetting
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[BBBulletinBoardDefaults standardDefaults];
  globalAnnounceSetting = [v3 globalAnnounceSetting];

  if (globalAnnounceSetting == -1)
  {
    [(BBServer *)self _setGlobalAnnounceSetting:0];
    return 0;
  }

  return globalAnnounceSetting;
}

- (int64_t)_effectiveGlobalAnnounceHeadphonesSetting
{
  dispatch_assert_queue_V2(self->_queue);
  if (![(BBServer *)self _isAnnounceSupportedForHeadphones])
  {
    return -1;
  }

  if (!self->_siriEnabled || !self->_siriAllowedWhenLocked || [(BBServer *)self _effectiveGlobalAnnounceSetting]!= 2)
  {
    return 1;
  }

  result = [(BBServer *)self _globalAnnounceHeadphonesSetting];
  if (!result)
  {
    return 2;
  }

  return result;
}

- (int64_t)_effectiveGlobalAnnounceCarPlaySetting
{
  if (![(BBServer *)self _isAnnounceSupportedForCarPlay]|| ![(BBServer *)self _hasPairedVehiclesForCarPlay])
  {
    return -1;
  }

  if (!self->_siriEnabled || !self->_siriAllowedWhenLocked || [(BBServer *)self _effectiveGlobalAnnounceSetting]!= 2)
  {
    return 1;
  }

  result = [(BBServer *)self _globalAnnounceCarPlaySetting];
  if (!result)
  {
    return 3;
  }

  return result;
}

- (int64_t)_globalAnnounceCarPlaySetting
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[BBBulletinBoardDefaults standardDefaults];
  globalAnnounceCarPlaySetting = [v3 globalAnnounceCarPlaySetting];

  if (globalAnnounceCarPlaySetting == -1)
  {
    [(BBServer *)self _setGlobalAnnounceCarPlaySetting:0];
    return 0;
  }

  return globalAnnounceCarPlaySetting;
}

- (id)_globalScheduledDeliveryTimes
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[BBBulletinBoardDefaults standardDefaults];
  globalScheduledDeliveryTimes = [v3 globalScheduledDeliveryTimes];
  v5 = [(BBServer *)self _scheduledDeliveryTimesForEncodedDeliveryTimes:globalScheduledDeliveryTimes];

  return v5;
}

- (int64_t)_globalScheduledDeliveryShowNextSummarySetting
{
  dispatch_assert_queue_V2(self->_queue);
  v2 = +[BBBulletinBoardDefaults standardDefaults];
  globalScheduledDeliveryShowNextSummarySetting = [v2 globalScheduledDeliveryShowNextSummarySetting];

  return globalScheduledDeliveryShowNextSummarySetting;
}

- (int64_t)_effectiveGlobalScheduledDeliveryShowNextSummarySetting
{
  if (![(BBServer *)self _globalScheduledDeliveryShowNextSummarySetting])
  {
    return 1;
  }

  return [(BBServer *)self _globalScheduledDeliveryShowNextSummarySetting];
}

- (int64_t)_effectiveGlobalNotificationListDisplayStyleSetting
{
  if (![(BBServer *)self _globalNotificationListDisplayStyleSetting])
  {
    return 2;
  }

  return [(BBServer *)self _globalNotificationListDisplayStyleSetting];
}

- (int64_t)_globalNotificationListDisplayStyleSetting
{
  dispatch_assert_queue_V2(self->_queue);
  v2 = +[BBBulletinBoardDefaults standardDefaults];
  globalNotificationListDisplayStyleSetting = [v2 globalNotificationListDisplayStyleSetting];

  return globalNotificationListDisplayStyleSetting;
}

- (BBServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = [[BBDataProviderManager alloc] initWithDelegate:self queue:queueCopy];
  v6 = [[BBSyncService alloc] initWithDelegate:self queue:queueCopy];
  v7 = objc_alloc_init(BBDismissalSyncCache);
  v8 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.bulletinboard.observerconnection"];
  v9 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.bulletinboard.serverconduitconnection"];
  v10 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.bulletinboard.settingsconnection"];
  v11 = [(BBServer *)self initWithQueue:queueCopy dataProviderManager:v5 syncService:v6 dismissalSyncCache:v7 observerListener:v8 conduitListener:v9 settingsListener:v10];

  return v11;
}

- (BBServer)initWithQueue:(id)queue dataProviderManager:(id)manager syncService:(id)service dismissalSyncCache:(id)cache observerListener:(id)listener conduitListener:(id)conduitListener settingsListener:(id)settingsListener
{
  queueCopy = queue;
  managerCopy = manager;
  serviceCopy = service;
  cacheCopy = cache;
  listenerCopy = listener;
  conduitListenerCopy = conduitListener;
  settingsListenerCopy = settingsListener;
  v75.receiver = self;
  v75.super_class = BBServer;
  v18 = [(BBServer *)&v75 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v19->_dataProviderManager, manager);
    objc_storeStrong(&v19->_syncService, service);
    [(BBSyncServiceInterface *)v19->_syncService setDelegate:v19];
    objc_storeStrong(&v19->_dismissalSyncCache, cache);
    objc_storeStrong(&v19->_observerListener, listener);
    [(NSXPCListener *)v19->_observerListener setDelegate:v19];
    objc_storeStrong(&v19->_conduitListener, conduitListener);
    [(NSXPCListener *)v19->_conduitListener setDelegate:v19];
    objc_storeStrong(&v19->_settingsListener, settingsListener);
    [(NSXPCListener *)v19->_settingsListener setDelegate:v19];
    v20 = [[BBAppProtectionMonitor alloc] initWithDelegate:v19];
    appProtectionMonitor = v19->_appProtectionMonitor;
    v19->_appProtectionMonitor = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    observers = v19->_observers;
    v19->_observers = v22;

    v24 = [[BBMaskedSet alloc] initWithMaskBits:16];
    observerFeedSet = v19->_observerFeedSet;
    v19->_observerFeedSet = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observerGateways = v19->_observerGateways;
    v19->_observerGateways = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observerGatewaysByName = v19->_observerGatewaysByName;
    v19->_observerGatewaysByName = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observerGatewayEnumerators = v19->_observerGatewayEnumerators;
    v19->_observerGatewayEnumerators = v30;

    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingUpdatesByBulletinID = v19->_pendingUpdatesByBulletinID;
    v19->_pendingUpdatesByBulletinID = v32;

    v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
    settingsGatewayConnections = v19->_settingsGatewayConnections;
    v19->_settingsGatewayConnections = v34;

    _persistentSettingsStore = [objc_opt_class() _persistentSettingsStore];
    persistentStore = v19->_persistentStore;
    v19->_persistentStore = _persistentSettingsStore;

    _sectionInfoStore = [(BBServer *)v19 _sectionInfoStore];
    sectionInfoStore = v19->_sectionInfoStore;
    v19->_sectionInfoStore = _sectionInfoStore;

    v40 = [MEMORY[0x277CBEB58] set];
    activeSectionIDs = v19->_activeSectionIDs;
    v19->_activeSectionIDs = v40;

    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    expiringBulletinIDs = v19->_expiringBulletinIDs;
    v19->_expiringBulletinIDs = v42;

    v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eventBasedExpiringBulletinIDs = v19->_eventBasedExpiringBulletinIDs;
    v19->_eventBasedExpiringBulletinIDs = v44;

    v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bulletinsByID = v19->_bulletinsByID;
    v19->_bulletinsByID = v46;

    v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bulletinIDsBySectionID = v19->_bulletinIDsBySectionID;
    v19->_bulletinIDsBySectionID = v48;

    v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
    noticeBulletinIDsBySectionID = v19->_noticeBulletinIDsBySectionID;
    v19->_noticeBulletinIDsBySectionID = v50;

    v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bulletinRequestsByID = v19->_bulletinRequestsByID;
    v19->_bulletinRequestsByID = v52;

    v19->_globalCounter = 0;
    v54 = objc_alloc_init(MEMORY[0x277CBEB58]);
    suspendedConnections = v19->_suspendedConnections;
    v19->_suspendedConnections = v54;

    v56 = objc_alloc_init(BBDismissalSyncCache);
    dismissalSyncCache = v19->_dismissalSyncCache;
    v19->_dismissalSyncCache = v56;

    notifier = 0;
    thePortRef = 0;
    __BBRootDomainConnect = IORegisterForSystemPower(0, &thePortRef, _BBPowerChanged, &notifier);
    RunLoopSource = IONotificationPortGetRunLoopSource(thePortRef);
    if (RunLoopSource)
    {
      v59 = RunLoopSource;
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, v59, *MEMORY[0x277CBF058]);
    }

    else if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [BBServer initWithQueue:dataProviderManager:syncService:dismissalSyncCache:observerListener:conduitListener:settingsListener:];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, __server, _BBHandleSignificantTimeChange, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(NSXPCListener *)v19->_observerListener resume];
    [(NSXPCListener *)v19->_conduitListener resume];
    [(NSXPCListener *)v19->_settingsListener resume];
    v62 = [[BBSectionAuthorizationManager alloc] initWithQueue:queueCopy];
    sectionAuthorizationManager = v19->_sectionAuthorizationManager;
    v19->_sectionAuthorizationManager = v62;

    [(BBSectionAuthorizationManager *)v19->_sectionAuthorizationManager setDelegate:v19];
    v64 = [[BBMuteExpirationManager alloc] initWithQueue:queueCopy];
    muteManager = v19->_muteManager;
    v19->_muteManager = v64;

    [(BBMuteExpirationManager *)v19->_muteManager setDelegate:v19];
    v66 = [[BBBiometricResource alloc] initWithQueue:queueCopy];
    biometricResource = v19->_biometricResource;
    v19->_biometricResource = v66;

    if ([(BBBiometricResource *)v19->_biometricResource hasPearlCapability])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v19 selector:sel__biometricResourceStateChanged name:@"BBBiometricResourceStateChanged" object:v19->_biometricResource];
    }

    [(BBServer *)v19 _addStateCaptureHandlers];
  }

  return v19;
}

- (void)dealloc
{
  [(BBServer *)self _clearExpirationTimer];
  [(NSXPCListener *)self->_observerListener invalidate];
  [(NSXPCListener *)self->_conduitListener invalidate];
  [(NSXPCListener *)self->_settingsListener invalidate];
  notify_cancel(self->_serverIsRunningToken);
  [(BBServer *)self _unobserveManagedProfileChanges];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, __server, @"SignificantTimeChangeNotification", 0);
  v4.receiver = self;
  v4.super_class = BBServer;
  [(BBServer *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v58 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (self->_observerListener == listenerCopy)
  {
    v15 = [connectionCopy valueForEntitlement:@"com.apple.bulletinboard.observer"];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      v17 = +[BBObserverServerProxy xpcInterface];
      [v8 setExportedInterface:v17];

      v18 = +[BBObserverClientProxy xpcInterface];
      [v8 setRemoteObjectInterface:v18];

      v19 = [[BBObserverClientProxy alloc] initWithServer:self connection:v8 calloutQueue:self->_queue];
      [v8 setExportedObject:v19];
      v20 = BBLogConnection;
      if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_241EFF000, v20, OS_LOG_TYPE_DEFAULT, "BBServer: Connection (%{public}@) to BBObserver client established", buf, 0xCu);
      }

      [(BBServer *)self _addObserver:v19];
      objc_initWeak(buf, self);
      objc_initWeak(&location, v8);
      objc_initWeak(&from, v19);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __47__BBServer_listener_shouldAcceptNewConnection___block_invoke;
      v50[3] = &unk_278D2AC10;
      objc_copyWeak(&v51, &location);
      objc_copyWeak(&v52, buf);
      objc_copyWeak(&v53, &from);
      [v8 setInterruptionHandler:v50];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_2;
      v46[3] = &unk_278D2AC10;
      objc_copyWeak(&v47, &location);
      objc_copyWeak(&v48, buf);
      objc_copyWeak(&v49, &from);
      [v8 setInvalidationHandler:v46];
      if ([(BBServer *)self isRunning])
      {
        [v8 resume];
      }

      else
      {
        [(BBServer *)self _addSuspendedConnection:v8];
      }

      objc_destroyWeak(&v49);
      objc_destroyWeak(&v48);
      objc_destroyWeak(&v47);
      objc_destroyWeak(&v53);
      objc_destroyWeak(&v52);
      objc_destroyWeak(&v51);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);

      goto LABEL_33;
    }

    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
    {
      [BBServer listener:shouldAcceptNewConnection:];
    }
  }

  else if (self->_conduitListener == listenerCopy)
  {
    v21 = [connectionCopy valueForEntitlement:@"com.apple.bulletinboard.serverconduit"];
    bOOLValue2 = [v21 BOOLValue];

    if (bOOLValue2)
    {
      v23 = +[BBServerConduit serverInterface];
      [v8 setExportedInterface:v23];

      [v8 setExportedObject:self];
      v24 = +[BBServerConduit clientInterface];
      [v8 setRemoteObjectInterface:v24];

      objc_initWeak(buf, self);
      objc_initWeak(&location, v8);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_83;
      v43[3] = &unk_278D2ABE8;
      objc_copyWeak(&v44, &location);
      objc_copyWeak(&v45, buf);
      [v8 setInterruptionHandler:v43];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_84;
      v40[3] = &unk_278D2ABE8;
      objc_copyWeak(&v41, &location);
      objc_copyWeak(&v42, buf);
      [v8 setInvalidationHandler:v40];
      if ([(BBServer *)self isRunning])
      {
        [v8 resume];
      }

      else
      {
        [(BBServer *)self _addSuspendedConnection:v8];
      }

      objc_destroyWeak(&v42);
      objc_destroyWeak(&v41);
      objc_destroyWeak(&v45);
      objc_destroyWeak(&v44);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
LABEL_33:
      v25 = 1;
      goto LABEL_34;
    }

    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
    {
      [BBServer listener:shouldAcceptNewConnection:];
    }
  }

  else if (self->_settingsListener == listenerCopy)
  {
    v9 = [connectionCopy valueForEntitlement:@"com.apple.bulletinboard.settings"];
    bOOLValue3 = [v9 BOOLValue];

    if (bOOLValue3)
    {
      v11 = [MEMORY[0x277CF0B98] tokenFromNSXPCConnection:v8];
      bundleID = [v11 bundleID];
      v13 = bundleID;
      if (bundleID)
      {
        stringValue = bundleID;
      }

      else
      {
        v26 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "pid")}];
        stringValue = [v26 stringValue];
      }

      v27 = BBLogConnection;
      if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = stringValue;
        _os_log_impl(&dword_241EFF000, v27, OS_LOG_TYPE_DEFAULT, "BBServer: Incoming connection for settingsListener from %@", buf, 0xCu);
      }

      v28 = +[BBSettingsGateway serverInterface];
      [v8 setExportedInterface:v28];

      [v8 setExportedObject:self];
      v29 = +[BBSettingsGateway clientInterface];
      [v8 setRemoteObjectInterface:v29];

      objc_initWeak(buf, self);
      objc_initWeak(&location, v8);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_88;
      v37[3] = &unk_278D2ABE8;
      objc_copyWeak(&v38, &location);
      objc_copyWeak(&v39, buf);
      [v8 setInterruptionHandler:v37];
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_89;
      v34 = &unk_278D2ABE8;
      objc_copyWeak(&v35, &location);
      objc_copyWeak(&v36, buf);
      [v8 setInvalidationHandler:&v31];
      [(BBServer *)self _addSettingsGatewayConnection:v8, v31, v32, v33, v34];
      if ([(BBServer *)self isRunning])
      {
        [v8 resume];
      }

      else
      {
        [(BBServer *)self _addSuspendedConnection:v8];
      }

      objc_destroyWeak(&v36);
      objc_destroyWeak(&v35);
      objc_destroyWeak(&v39);
      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);

      goto LABEL_33;
    }

    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_ERROR))
    {
      [BBServer listener:shouldAcceptNewConnection:];
    }
  }

  v25 = 0;
LABEL_34:

  return v25;
}

void __47__BBServer_listener_shouldAcceptNewConnection___block_invoke(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained(a1 + 4);
    *buf = 138412290;
    v12 = WeakRetained;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "BBServer: Connection (%@) to BBObserver client interrupted", buf, 0xCu);
  }

  v5 = objc_loadWeakRetained(a1 + 5);
  v6 = v5;
  if (v5)
  {
    v7 = v5[5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_79;
    v8[3] = &unk_278D2ABE8;
    objc_copyWeak(&v9, a1 + 5);
    objc_copyWeak(&v10, a1 + 6);
    dispatch_async(v7, v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v9);
  }
}

void __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_79(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeObserver:v2];
}

void __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_2(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained(a1 + 4);
    *buf = 138412290;
    v12 = WeakRetained;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "BBServer: Connection (%@) to BBObserver client invalidated", buf, 0xCu);
  }

  v5 = objc_loadWeakRetained(a1 + 5);
  v6 = v5;
  if (v5)
  {
    v7 = v5[5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_81;
    v8[3] = &unk_278D2ABE8;
    objc_copyWeak(&v9, a1 + 5);
    objc_copyWeak(&v10, a1 + 6);
    dispatch_async(v7, v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v9);
  }
}

void __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_81(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeObserver:v2];
}

void __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_83(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = WeakRetained;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "BBServer: Connection (%{public}@) to BBServerConduit client interrupted", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _removeSuspendedConnection:WeakRetained];
}

void __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_84(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = WeakRetained;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "BBServer: Connection (%{public}@) to BBServerConduit client invalidated", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _removeSuspendedConnection:WeakRetained];
}

void __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_88(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = WeakRetained;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "BBServer: Connection (%{public}@) to BBSettingsGateway client interrupted", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _removeSettingsGatewayConnection:WeakRetained];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _removeSuspendedConnection:WeakRetained];
}

void __47__BBServer_listener_shouldAcceptNewConnection___block_invoke_89(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = WeakRetained;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "BBServer: Connection (%{public}@) to BBSettingsGateway client invalidated", &v6, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _removeSettingsGatewayConnection:WeakRetained];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _removeSuspendedConnection:WeakRetained];
}

- (void)_addSettingsGatewayConnection:(id)connection
{
  connectionCopy = connection;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__BBServer__addSettingsGatewayConnection___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(queue, v7);
}

- (void)_removeSettingsGatewayConnection:(id)connection
{
  connectionCopy = connection;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__BBServer__removeSettingsGatewayConnection___block_invoke;
  v7[3] = &unk_278D2A628;
  v8 = connectionCopy;
  selfCopy = self;
  v6 = connectionCopy;
  dispatch_async(queue, v7);
}

uint64_t __45__BBServer__removeSettingsGatewayConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 112);

  return [v3 removeObject:v2];
}

+ (id)_persistentSettingsStore
{
  if (_persistentSettingsStore_onceToken != -1)
  {
    +[BBServer _persistentSettingsStore];
  }

  v3 = _persistentSettingsStore___persistentSettingsStore;

  return v3;
}

void __36__BBServer__persistentSettingsStore__block_invoke()
{
  v0 = BBLogPersistence;
  if (os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_241EFF000, v0, OS_LOG_TYPE_DEFAULT, "Using BBPersistentStore", v3, 2u);
  }

  v1 = objc_alloc_init(BBPersistentStore);
  v2 = _persistentSettingsStore___persistentSettingsStore;
  _persistentSettingsStore___persistentSettingsStore = v1;
}

- (id)_sectionInfoStore
{
  sectionInfoStore = self->_sectionInfoStore;
  if (!sectionInfoStore)
  {
    v4 = BBLogPersistence;
    if (os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Using BBSectionInfoStore", v8, 2u);
    }

    v5 = [[BBSectionInfoStore alloc] initWithEffectiveSettingsProvider:self persistence:self->_persistentStore];
    v6 = self->_sectionInfoStore;
    self->_sectionInfoStore = v5;

    sectionInfoStore = self->_sectionInfoStore;
  }

  return sectionInfoStore;
}

- (void)publishBulletin:(id)bulletin destinations:(unint64_t)destinations
{
  v28 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(self->_queue);
  sectionID = [bulletinCopy sectionID];
  bulletinID = [bulletinCopy bulletinID];
  v9 = [(BBServer *)self _feedsForBulletin:bulletinCopy destinations:destinations];
  BBPowerLogBulletinBoardPublishEvent(sectionID, v9);
  v10 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    bulletinID2 = [bulletinCopy bulletinID];
    v13 = BBObserverFeedStrings(v9);
    v22 = 138543874;
    v23 = bulletinID2;
    v24 = 2048;
    v25 = v9;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&dword_241EFF000, v11, OS_LOG_TYPE_DEFAULT, "BBServer: Publish bulletin %{public}@ to feeds %ld: %{public}@", &v22, 0x20u);
  }

  v14 = [(BBDismissalSyncCache *)self->_dismissalSyncCache findBulletinMatch:bulletinCopy];
  v15 = v14;
  if (v14)
  {
    v9 &= ~[v14 feeds];
    [(BBDismissalSyncCache *)self->_dismissalSyncCache removeBulletinMatch:v15];
    ADClientAddValueForScalarKey();
  }

  v16 = [(NSMutableDictionary *)self->_bulletinsByID objectForKey:bulletinID];
  if (v16)
  {
    [(BBServer *)self _modifyBulletin:bulletinCopy];
    [(BBServer *)self _sendAddBulletin:bulletinCopy toFeeds:v9];
    [(BBServer *)self _sendModifyBulletin:bulletinCopy toFeeds:~v9];
    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v17 = [(NSMutableDictionary *)self->_noticeBulletinIDsBySectionID objectForKey:sectionID];

    if (!v17)
    {
      noticeBulletinIDsBySectionID = self->_noticeBulletinIDsBySectionID;
      v19 = [MEMORY[0x277CBEB58] set];
      [(NSMutableDictionary *)noticeBulletinIDsBySectionID setObject:v19 forKey:sectionID];
    }

    v20 = [(NSMutableDictionary *)self->_noticeBulletinIDsBySectionID objectForKey:sectionID];
    [v20 addObject:bulletinID];

    v21 = BBLogSectionUpdates;
    if (os_log_type_enabled(BBLogSectionUpdates, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = bulletinID;
      _os_log_impl(&dword_241EFF000, v21, OS_LOG_TYPE_DEFAULT, "Sent bulletin to 'notices' feed: %@", &v22, 0xCu);
    }

    goto LABEL_14;
  }

  if (!v9)
  {
    [(BBServer *)self noteFinishedWithBulletinID:bulletinID];
    goto LABEL_15;
  }

  [(BBServer *)self _addBulletin:bulletinCopy];
  [(BBServer *)self _sendAddBulletin:bulletinCopy toFeeds:v9];
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_14:
  [(BBServer *)self _scheduleExpirationForBulletin:bulletinCopy];
LABEL_15:
}

- (void)withdrawBulletinID:(id)d shouldSync:(BOOL)sync
{
  syncCopy = sync;
  v15 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  v8 = [(NSMutableDictionary *)self->_bulletinsByID objectForKey:dCopy];

  if (v8)
  {
    v9 = BBLogGeneral;
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      bulletinID = [v8 bulletinID];
      v13 = 138543362;
      v14 = bulletinID;
      _os_log_impl(&dword_241EFF000, v10, OS_LOG_TYPE_DEFAULT, "BBServer: Withdraw bulletin: %{public}@", &v13, 0xCu);
    }

    if (syncCopy)
    {
      v12 = [v8 usesExternalSync] ^ 1;
    }

    else
    {
      v12 = 0;
    }

    [(BBServer *)self _removeBulletin:v8 shouldSync:v12];
  }
}

- (id)_mapForFeed:(unint64_t)feed
{
  feedCopy = feed;
  dispatch_assert_queue_V2(self->_queue);
  if (feedCopy)
  {
    v5 = self->_noticeBulletinIDsBySectionID;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeBulletinID:(id)d fromSection:(id)section inFeed:(unint64_t)feed
{
  dCopy = d;
  sectionCopy = section;
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(BBServer *)self _mapForFeed:feed];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKey:sectionCopy];
    [v11 removeObject:dCopy];
  }

  v12 = [(NSMutableDictionary *)self->_bulletinsByID objectForKey:dCopy];
  [(BBServer *)self _sendRemoveBulletin:v12 toFeeds:feed shouldSync:0];
}

- (id)bulletinIDsForSectionID:(id)d inFeed:(unint64_t)feed
{
  dCopy = d;
  v7 = [(BBServer *)self _mapForFeed:feed];
  v8 = v7;
  if (!v7 || (v9 = MEMORY[0x277CBEB98], [v7 objectForKey:dCopy], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "setWithSet:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v11 = [MEMORY[0x277CBEB98] set];
  }

  return v11;
}

- (id)allBulletinIDsForSectionID:(id)d
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(NSMutableDictionary *)self->_bulletinIDsBySectionID objectForKey:d];
  v5 = [v3 setWithSet:v4];

  return v5;
}

- (void)_addSuspendedConnection:(id)connection
{
  connectionCopy = connection;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__BBServer__addSuspendedConnection___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(queue, v7);
}

- (void)_removeSuspendedConnection:(id)connection
{
  connectionCopy = connection;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__BBServer__removeSuspendedConnection___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(queue, v7);
}

- (void)_resumeAllSuspendedConnectionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__BBServer__resumeAllSuspendedConnectionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_278D2AC38;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __64__BBServer__resumeAllSuspendedConnectionsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 256);
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

        [*(*(&v8 + 1) + 8 * v6++) resume];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 256) removeAllObjects];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__BBServer__addObserver___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__BBServer__removeObserver___block_invoke;
    v7[3] = &unk_278D2A628;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

void __28__BBServer__removeObserver___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 256);
  v3 = [*(a1 + 40) connection];
  [v2 removeObject:v3];

  [*(*(a1 + 32) + 64) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 72) removeObject:*(a1 + 40)];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(*(a1 + 32) + 80);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * v8) observerFeedSet];
        [v9 removeObject:*(a1 + 40)];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  if ([*(*(a1 + 32) + 80) count])
  {
    v10 = [*(*(a1 + 32) + 80) count] - 1;
    do
    {
      v11 = [*(*(a1 + 32) + 80) objectAtIndex:{v10, v16}];
      v12 = [v11 gateway];
      v13 = *(a1 + 40);

      if (v12 == v13)
      {
        v14 = *(*(a1 + 32) + 88);
        v15 = [v11 name];
        [v14 removeObjectForKey:v15];

        [*(*(a1 + 32) + 80) removeObjectAtIndex:v10];
      }

      --v10;
    }

    while (v10 != -1);
  }
}

- (void)_sendUpdateSectionInfo:(id)info
{
  v40 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(BBMaskedSet *)self->_observerFeedSet objectAtIndex:9];
  v6 = [(BBSectionInfoStoreInterface *)self->_sectionInfoStore effectiveSectionInfoForSectionInfo:infoCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v33 + 1) + 8 * v11++) updateSectionInfo:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v9);
  }

  v22 = v7;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = infoCopy;
  obj = [infoCopy dataProviderIDs];
  v12 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [(BBServer *)self _sectionInfoForSectionID:*(*(&v29 + 1) + 8 * v15) effective:1];
        if (v16)
        {
          v17 = [(BBMaskedSet *)self->_observerFeedSet objectAtIndex:9];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v26;
            do
            {
              v21 = 0;
              do
              {
                if (*v26 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                [*(*(&v25 + 1) + 8 * v21++) updateSectionInfo:v16];
              }

              while (v19 != v21);
              v19 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
            }

            while (v19);
          }
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v13);
  }
}

- (id)_observersForNoticesFeed
{
  dispatch_assert_queue_V2(self->_queue);
  observerFeedSet = self->_observerFeedSet;

  return [(BBMaskedSet *)observerFeedSet objectAtIndex:0];
}

- (void)_sendRemoveSection:(id)section
{
  v15 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  v5 = [(BBMaskedSet *)self->_observerFeedSet objectAtIndex:9];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) removeSection:sectionCopy];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_observerGatewaysForFeeds:(unint64_t)feeds
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_observerGateways;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([v11 feed] & feeds) != 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_observerGateways
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__BBServer__observerGateways__block_invoke;
  v5[3] = &unk_278D2AC60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __29__BBServer__observerGateways__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 80) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)_sendAddBulletin:(id)bulletin toFeeds:(unint64_t)feeds
{
  v48 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(self->_queue);
  v7 = &BBLogGateway;
  v8 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    observerGatewaysByName = self->_observerGatewaysByName;
    v10 = v8;
    *buf = 134217984;
    v47 = [(NSMutableDictionary *)observerGatewaysByName count];
    _os_log_impl(&dword_241EFF000, v10, OS_LOG_TYPE_DEFAULT, "%lu gateways found.", buf, 0xCu);
  }

  v11 = [(BBServer *)self _observerGatewaysForFeeds:feeds];
  if ([v11 count] > 1)
  {
    if (feeds == 1)
    {
      v17 = BBLogGateway;
      if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241EFF000, v17, OS_LOG_TYPE_DEFAULT, "Sending to all gateways without delay", buf, 2u);
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v13 = v11;
      v18 = [(BBObserverGatewayEnumerator *)v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v18)
      {
        v19 = v18;
        v38 = v11;
        v20 = *v42;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v42 != v20)
            {
              objc_enumerationMutation(v13);
            }

            v22 = *(*(&v41 + 1) + 8 * i);
            v23 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              v24 = v23;
              [v22 name];
              v25 = bulletinCopy;
              v26 = v13;
              v28 = v27 = v7;
              *buf = 138412290;
              v47 = v28;
              _os_log_impl(&dword_241EFF000, v24, OS_LOG_TYPE_DEFAULT, "Sending to observers of gateway: %@", buf, 0xCu);

              v7 = v27;
              v13 = v26;
              bulletinCopy = v25;
            }

            [v22 sendObserversAddBulletin:bulletinCopy playLightsAndSirens:1 forFeeds:1];
          }

          v19 = [(BBObserverGatewayEnumerator *)v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v19);
        v11 = v38;
      }
    }

    else
    {
      v13 = objc_alloc_init(BBObserverGatewayEnumerator);
      [(BBObserverGatewayEnumerator *)v13 setBulletin:bulletinCopy];
      [(BBObserverGatewayEnumerator *)v13 setFeeds:feeds];
      v29 = [(BBObserverGatewayEnumerator *)v13 setGateways:self->_observerGateways];
      [(BBObserverGatewayEnumerator *)v13 setGatewayTimeout:BBGetObserverGatewayTimeout(v29, v30)];
      bulletinID = [bulletinCopy bulletinID];
      [(NSMutableDictionary *)self->_observerGatewayEnumerators setObject:v13 forKey:bulletinID];
      v32 = BBLogGateway;
      if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
      {
        observerGatewayEnumerators = self->_observerGatewayEnumerators;
        v34 = v32;
        v35 = [(NSMutableDictionary *)observerGatewayEnumerators count];
        *buf = 134217984;
        v47 = v35;
        _os_log_impl(&dword_241EFF000, v34, OS_LOG_TYPE_DEFAULT, "Gateway enumerator added. %ld enumerators in flight", buf, 0xCu);
      }

      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __37__BBServer__sendAddBulletin_toFeeds___block_invoke;
      v39[3] = &unk_278D2A628;
      v39[4] = self;
      v40 = bulletinID;
      v36 = bulletinID;
      [(BBObserverGatewayEnumerator *)v13 enumerateWithCompletion:v39];
    }
  }

  else
  {
    anyObject = [v11 anyObject];
    if (anyObject || ([(NSMutableDictionary *)self->_observerGatewaysByName objectForKeyedSubscript:@"BBObserverGatewayLocalName"], (anyObject = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = anyObject;
    }

    else
    {
      v37 = BBLogGateway;
      if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241EFF000, v37, OS_LOG_TYPE_DEFAULT, "No BulletinBoard gateways configured.", buf, 2u);
      }

      v13 = 0;
    }

    v14 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      name = [(BBObserverGatewayEnumerator *)v13 name];
      *buf = 138412290;
      v47 = name;
      _os_log_impl(&dword_241EFF000, v15, OS_LOG_TYPE_DEFAULT, "Sending to observers of gateway: %@", buf, 0xCu);
    }

    [(BBObserverGatewayEnumerator *)v13 sendObserversAddBulletin:bulletinCopy playLightsAndSirens:1 forFeeds:feeds];
  }
}

void __37__BBServer__sendAddBulletin_toFeeds___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _performPendingBulletinUpdatesForBulletinID:*(a1 + 40)];
  [*(*(a1 + 32) + 96) removeObjectForKey:*(a1 + 40)];
  v2 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 96);
    v4 = v2;
    v5 = 134217984;
    v6 = [v3 count];
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Gateway enumerator completed. %lu gateway enumerators still in flight", &v5, 0xCu);
  }
}

- (void)_enqueueBulletinUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_queue);
  bulletin = [updateCopy bulletin];
  bulletinID = [bulletin bulletinID];
  v6 = [(NSMutableDictionary *)self->_pendingUpdatesByBulletinID objectForKey:bulletinID];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableDictionary *)self->_pendingUpdatesByBulletinID setObject:v6 forKey:bulletinID];
  }

  [v6 addObject:updateCopy];
}

- (void)_performPendingBulletinUpdatesForBulletinID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_pendingUpdatesByBulletinID objectForKey:dCopy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BBServer *)self _sendBulletinUpdate:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_pendingUpdatesByBulletinID removeObjectForKey:dCopy];
}

- (void)_sendBulletinUpdate:(id)update
{
  v50 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dispatch_assert_queue_V2(self->_queue);
  bulletin = [updateCopy bulletin];
  feeds = [updateCopy feeds];
  selfCopy = self;
  [(BBMaskedSet *)self->_observerFeedSet objectsForMask:?];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v36 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (!v36)
  {
    goto LABEL_20;
  }

  v6 = *v38;
  v34 = *v38;
  do
  {
    for (i = 0; i != v36; ++i)
    {
      if (*v38 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v37 + 1) + 8 * i);
      bulletinID = [bulletin bulletinID];
      v10 = [v8 currentTransactionForBulletinID:bulletinID];

      if (v10)
      {
        incrementTransactionID = [v10 incrementTransactionID];
        v12 = BBLogBulletinLife;
        if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          [updateCopy typeDescription];
          v15 = v14 = updateCopy;
          bulletinID2 = [bulletin bulletinID];
          *buf = 138544130;
          v42 = v8;
          v43 = 2114;
          v44 = v15;
          v45 = 2048;
          v46 = incrementTransactionID;
          v47 = 2114;
          v48 = bulletinID2;
          _os_log_impl(&dword_241EFF000, v13, OS_LOG_TYPE_DEFAULT, "_sendBulletinUpdate: observer: %{public}@ typeDescription: %{public}@ transactionID %ld, bulletin %{public}@", buf, 0x2Au);

          updateCopy = v14;
          v6 = v34;
        }

        v17 = updateCopy;
        v18 = incrementTransactionID;
LABEL_16:
        v21 = [BBBulletinUpdateTransaction transactionWithBulletinUpdate:v17 transactionID:v18];
        [v8 updateBulletin:v21 withHandler:0];
        goto LABEL_17;
      }

      observerOptions = [v8 observerOptions];
      v20 = BBLogBulletinLife;
      if (observerOptions)
      {
        if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v20;
          typeDescription = [updateCopy typeDescription];
          bulletinID3 = [bulletin bulletinID];
          *buf = 138544130;
          v42 = v8;
          v43 = 2114;
          v44 = typeDescription;
          v45 = 2048;
          v46 = 99;
          v47 = 2114;
          v48 = bulletinID3;
          _os_log_impl(&dword_241EFF000, v24, OS_LOG_TYPE_DEFAULT, "_sendBulletinUpdate: observer: %{public}@ BBObserverOptionsObserveAll typeDescription: %{public}@ transactionID %ld %{public}@", buf, 0x2Au);
        }

        v17 = updateCopy;
        v18 = 99;
        goto LABEL_16;
      }

      if (!os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v21 = v20;
      typeDescription2 = [updateCopy typeDescription];
      bulletinID4 = [bulletin bulletinID];
      *buf = 138543874;
      v42 = v8;
      v43 = 2114;
      v44 = typeDescription2;
      v45 = 2114;
      v46 = bulletinID4;
      _os_log_error_impl(&dword_241EFF000, v21, OS_LOG_TYPE_ERROR, "_sendBulletinUpdate: FAILED to send to observer: %{public}@ typeDescription: %{public}@ %{public}@", buf, 0x20u);

LABEL_17:
LABEL_18:
    }

    v36 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  }

  while (v36);
LABEL_20:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = updateCopy;
  }

  else
  {
    v27 = 0;
  }

  if ([v27 shouldSync])
  {
    sectionID = [bulletin sectionID];
    v29 = [(BBDismissalSyncCache *)selfCopy->_dismissalSyncCache findBulletinMatch:bulletin];
    v30 = v29;
    if (!v29 || [v29 feeds] && objc_msgSend(v30, "feeds") != 65023)
    {
      v31 = [(BBDataProviderManager *)selfCopy->_dataProviderManager dataProviderForSectionID:sectionID];
      if ([v31 syncsBulletinDismissal])
      {
        [(BBSyncServiceInterface *)selfCopy->_syncService enqueueSyncedRemovalForBulletin:bulletin feeds:feeds];
      }
    }
  }
}

- (void)_sendModifyBulletin:(id)bulletin toFeeds:(unint64_t)feeds
{
  queue = self->_queue;
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(queue);
  v11 = [BBBulletinModifyUpdate updateWithBulletin:bulletinCopy feeds:feeds];
  observerGatewayEnumerators = self->_observerGatewayEnumerators;
  bulletinID = [bulletinCopy bulletinID];

  v10 = [(NSMutableDictionary *)observerGatewayEnumerators objectForKey:bulletinID];

  if (v10)
  {
    [(BBServer *)self _enqueueBulletinUpdate:v11];
  }

  else
  {
    [(BBServer *)self _sendBulletinUpdate:v11];
  }
}

- (void)_sendRemoveBulletins:(id)bulletins toFeeds:(unint64_t)feeds shouldSync:(BOOL)sync
{
  syncCopy = sync;
  v24 = *MEMORY[0x277D85DE8];
  bulletinsCopy = bulletins;
  dispatch_assert_queue_V2(self->_queue);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = bulletinsCopy;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [BBBulletinRemoveUpdate updateWithBulletin:v13 feeds:feeds shouldSync:syncCopy];
        observerGatewayEnumerators = self->_observerGatewayEnumerators;
        bulletinID = [v13 bulletinID];
        v17 = [(NSMutableDictionary *)observerGatewayEnumerators objectForKey:bulletinID];

        if (v17)
        {
          [(BBServer *)self _enqueueBulletinUpdate:v14];
        }

        else
        {
          [(BBServer *)self _sendBulletinUpdate:v14];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }
}

- (void)_sendRemoveBulletin:(id)bulletin toFeeds:(unint64_t)feeds shouldSync:(BOOL)sync
{
  syncCopy = sync;
  v8 = [MEMORY[0x277CBEB98] setWithObject:bulletin];
  [(BBServer *)self _sendRemoveBulletins:v8 toFeeds:feeds shouldSync:syncCopy];
}

- (void)_addBulletin:(id)bulletin
{
  queue = self->_queue;
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(queue);
  bulletinID = [bulletinCopy bulletinID];
  [(NSMutableDictionary *)self->_bulletinsByID setObject:bulletinCopy forKey:?];
  sectionID = [bulletinCopy sectionID];

  v7 = [(NSMutableDictionary *)self->_bulletinIDsBySectionID objectForKey:sectionID];

  if (!v7)
  {
    bulletinIDsBySectionID = self->_bulletinIDsBySectionID;
    v9 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)bulletinIDsBySectionID setObject:v9 forKey:sectionID];
  }

  v10 = [(NSMutableDictionary *)self->_bulletinIDsBySectionID objectForKey:sectionID];
  [v10 addObject:bulletinID];
}

- (void)_modifyBulletin:(id)bulletin
{
  queue = self->_queue;
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(queue);
  bulletinsByID = self->_bulletinsByID;
  bulletinID = [bulletinCopy bulletinID];
  [(NSMutableDictionary *)bulletinsByID setObject:bulletinCopy forKey:bulletinID];
}

- (void)_removeBulletin:(id)bulletin rescheduleTimerIfAffected:(BOOL)affected shouldSync:(BOOL)sync
{
  syncCopy = sync;
  affectedCopy = affected;
  v20 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(self->_queue);
  v9 = BBLogBulletinLife;
  if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    bulletinID = [bulletinCopy bulletinID];
    v18 = 138543362;
    v19 = bulletinID;
    _os_log_impl(&dword_241EFF000, v10, OS_LOG_TYPE_DEFAULT, "Server has been asked to remove bulletin: %{public}@", &v18, 0xCu);
  }

  bulletinID2 = [bulletinCopy bulletinID];
  sectionID = [bulletinCopy sectionID];
  v14 = [(NSMutableDictionary *)self->_bulletinIDsBySectionID objectForKey:sectionID];
  [v14 removeObject:bulletinID2];

  v15 = [(NSMutableDictionary *)self->_noticeBulletinIDsBySectionID objectForKey:sectionID];
  [v15 removeObject:bulletinID2];

  v16 = [(NSMutableDictionary *)self->_observerGatewayEnumerators objectForKey:bulletinID2];
  if (v16)
  {
    v17 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = bulletinID2;
      _os_log_impl(&dword_241EFF000, v17, OS_LOG_TYPE_DEFAULT, "Cancel gateway enumerator because server removed bulletin: %{public}@", &v18, 0xCu);
    }

    [v16 cancel];
  }

  [(BBServer *)self _sendRemoveBulletin:bulletinCopy toFeeds:65023 shouldSync:syncCopy];
  [(BBServer *)self _clearBulletinIDIfPossible:bulletinID2 rescheduleExpirationTimer:affectedCopy];
}

- (void)_removeBulletins:(id)bulletins forSectionID:(id)d shouldSync:(BOOL)sync
{
  syncCopy = sync;
  v35 = *MEMORY[0x277D85DE8];
  bulletinsCopy = bulletins;
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  if ([bulletinsCopy count])
  {
    v10 = [MEMORY[0x277CBEB58] set];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = bulletinsCopy;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          bulletinID = [*(*(&v22 + 1) + 8 * v15) bulletinID];
          [v10 addObject:bulletinID];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v13);
    }

    v17 = BBLogBulletinLife;
    if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = NSStringFromBOOL();
      v20 = [(NSMutableDictionary *)self->_noticeBulletinIDsBySectionID objectForKey:dCopy];
      *buf = 138544130;
      v27 = dCopy;
      v28 = 2114;
      v29 = v19;
      v30 = 2114;
      v31 = v10;
      v32 = 2114;
      v33 = v20;
      _os_log_impl(&dword_241EFF000, v18, OS_LOG_TYPE_DEFAULT, "Clearing section: %{public}@ syncing: %{public}@ \nwith bulletin IDs: %{public}@\nExisting notice bulletin IDs %{public}@", buf, 0x2Au);
    }

    [(BBServer *)self _sendRemoveBulletins:v11 toFeeds:65023 shouldSync:syncCopy, v22];
    v21 = [(NSMutableDictionary *)self->_noticeBulletinIDsBySectionID objectForKey:dCopy];
    [v21 minusSet:v10];
  }
}

- (void)_dataProviderDidClearInfo:(id)info forSection:(id)section
{
  sectionCopy = section;
  infoCopy = info;
  v8 = [(BBServer *)self dataProviderForSectionID:sectionCopy];
  [(BBServer *)self _setClearedInfo:infoCopy forSectionID:sectionCopy];

  [(BBServer *)self _updateAllBulletinsForDataProvider:v8];
}

- (void)clearBulletinIDIfPossible:(id)possible rescheduleExpirationTimer:(BOOL)timer
{
  possibleCopy = possible;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__BBServer_clearBulletinIDIfPossible_rescheduleExpirationTimer___block_invoke;
  block[3] = &unk_278D2AA18;
  block[4] = self;
  v10 = possibleCopy;
  timerCopy = timer;
  v8 = possibleCopy;
  dispatch_async(queue, block);
}

- (void)_clearBulletinIDs:(id)ds forSectionID:(id)d shouldSync:(BOOL)sync
{
  syncCopy = sync;
  dsCopy = ds;
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  if ([dsCopy count])
  {
    v10 = [(BBServer *)self _bulletinsForIDs:dsCopy];
    [(BBServer *)self _removeBulletins:v10 forSectionID:dCopy shouldSync:syncCopy];
    v11 = [(BBServer *)self dataProviderForSectionID:dCopy];
    v12 = [(BBServer *)self _clearedInfoForSectionID:dCopy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__BBServer__clearBulletinIDs_forSectionID_shouldSync___block_invoke;
    v13[3] = &unk_278D2AC88;
    v13[4] = self;
    v14 = dCopy;
    [v11 clearedInfoForBulletins:v10 lastClearedInfo:v12 completion:v13];
  }
}

- (void)_clearBulletinsFromDate:(id)date toDate:(id)toDate forSection:(id)section
{
  v40 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  toDateCopy = toDate;
  sectionCopy = section;
  dispatch_assert_queue_V2(self->_queue);
  v29 = sectionCopy;
  [(NSMutableDictionary *)self->_bulletinIDsBySectionID objectForKey:sectionCopy];
  v30 = v28 = self;
  v11 = [(BBServer *)self _bulletinsForIDs:?];
  v12 = [MEMORY[0x277CBEB58] set];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        recencyDate = [v18 recencyDate];
        v20 = recencyDate;
        if (recencyDate)
        {
          date = recencyDate;
        }

        else
        {
          date = [v18 date];
        }

        v22 = date;

        if ([v22 compare:dateCopy] != -1 && objc_msgSend(v22, "compare:", toDateCopy) == -1)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v15);
  }

  [(BBServer *)v28 _removeBulletins:v12 forSectionID:v29 shouldSync:1];
  v23 = [(BBServer *)v28 dataProviderForSectionID:v29];
  v24 = [(BBServer *)v28 _clearedInfoForSectionID:v29];
  if ([v23 canClearBulletinsByDate])
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __54__BBServer__clearBulletinsFromDate_toDate_forSection___block_invoke;
    v33[3] = &unk_278D2AC88;
    v25 = &v34;
    v33[4] = v28;
    v34 = v29;
    v26 = v29;
    [v23 clearedInfoForClearingBulletinsFromDate:dateCopy toDate:toDateCopy lastClearedInfo:v24 completion:v33];
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __54__BBServer__clearBulletinsFromDate_toDate_forSection___block_invoke_2;
    v31[3] = &unk_278D2AC88;
    v25 = &v32;
    v31[4] = v28;
    v32 = v29;
    v27 = v29;
    [v23 clearedInfoForBulletins:v12 lastClearedInfo:v24 completion:v31];
  }
}

- (void)_clearSection:(id)section
{
  sectionCopy = section;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_bulletinIDsBySectionID objectForKey:sectionCopy];
  v6 = [(BBServer *)self _bulletinsForIDs:v5];
  [(BBServer *)self _removeBulletins:v6 forSectionID:sectionCopy shouldSync:1];
  v7 = [(BBServer *)self dataProviderForSectionID:sectionCopy];
  v8 = [(BBServer *)self _clearedInfoForSectionID:sectionCopy];
  if ([v7 canClearAllBulletins])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __26__BBServer__clearSection___block_invoke;
    v14[3] = &unk_278D2AC88;
    v9 = &v15;
    v14[4] = self;
    v15 = sectionCopy;
    v10 = sectionCopy;
    [v7 clearedInfoForClearingAllBulletinsWithLastClearedInfo:v8 completion:v14];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __26__BBServer__clearSection___block_invoke_2;
    v12[3] = &unk_278D2AC88;
    v9 = &v13;
    v12[4] = self;
    v13 = sectionCopy;
    v11 = sectionCopy;
    [v7 clearedInfoForBulletins:v6 lastClearedInfo:v8 completion:v12];
  }
}

- (void)_removeSection:(id)section
{
  v15 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  dispatch_assert_queue_V2(self->_queue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(BBServer *)self _allBulletinsForSectionID:sectionCopy, 0];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BBServer *)self _removeBulletin:*(*(&v10 + 1) + 8 * v9++) shouldSync:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(BBSectionInfoStoreInterface *)self->_sectionInfoStore removeSectionWithID:sectionCopy];
  [(NSMutableSet *)self->_activeSectionIDs removeObject:sectionCopy];
  [(BBMuteExpirationManager *)self->_muteManager stopWatchingExpirationsForSectionID:sectionCopy];
  [(BBServer *)self _sendRemoveSection:sectionCopy];
}

- (id)_applicableSectionInfosForBulletin:(id)bulletin inSection:(id)section
{
  v25 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  sectionCopy = section;
  array = [MEMORY[0x277CBEB18] array];
  v19 = bulletinCopy;
  subsectionIDs = [bulletinCopy subsectionIDs];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  subsections = [sectionCopy subsections];
  v10 = [subsections countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(subsections);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        subsectionID = [v14 subsectionID];
        v16 = [subsectionIDs containsObject:subsectionID];

        if (v16)
        {
          [array addObject:v14];
        }
      }

      v11 = [subsections countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = [array count];
  if (sectionCopy && !v17)
  {
    [array addObject:sectionCopy];
  }

  return array;
}

- (unint64_t)_feedsForBulletin:(id)bulletin destinations:(unint64_t)destinations
{
  v200 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  sectionID = [bulletinCopy sectionID];
  v8 = [(BBServer *)self _sectionInfoForSectionID:sectionID effective:1];
  if (!v8)
  {
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [BBServer _feedsForBulletin:destinations:];
    }

    v12 = 0;
    goto LABEL_263;
  }

  v9 = [(BBServer *)self _applicableSectionInfosForBulletin:bulletinCopy inSection:v8];
  subsectionIDs = [bulletinCopy subsectionIDs];
  if ([subsectionIDs count] && objc_msgSend(v9, "count") == 1)
  {
    v11 = [v9 containsObject:v8];

    if (v11)
    {
      if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [BBServer _feedsForBulletin:destinations:];
      }

      v12 = 0;
      goto LABEL_262;
    }
  }

  else
  {
  }

  v140 = sectionID;
  selfCopy = self;
  interruptionLevel = [bulletinCopy interruptionLevel];
  v14 = interruptionLevel;
  v15 = (destinations >> 1) & 1;
  destinationsCopy = destinations;
  if ((destinations & 2) != 0 && interruptionLevel != 3)
  {
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v185 objects:v199 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v186;
      v15 = 1;
LABEL_13:
      v20 = 0;
      while (1)
      {
        if (*v186 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if ([*(*(&v185 + 1) + 8 * v20) notificationCenterSetting] == 2)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v185 objects:v199 count:16];
          if (v18)
          {
            goto LABEL_13;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      v15 = 0;
    }
  }

  v143 = v14;
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v139 = v9;
  v21 = v9;
  v22 = [v21 countByEnumeratingWithState:&v181 objects:v198 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v182;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v182 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v181 + 1) + 8 * i);
        if (v24)
        {
          subsectionPriority = [v24 subsectionPriority];
          if (subsectionPriority >= [v27 subsectionPriority])
          {
            continue;
          }
        }

        v29 = v27;

        v24 = v29;
      }

      v23 = [v21 countByEnumeratingWithState:&v181 objects:v198 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
  }

  if ([bulletinCopy interruptionLevel] <= 1)
  {
    threadID = [bulletinCopy threadID];
    v31 = [v24 isBulletinMutedForThreadIdentifier:threadID];

    if (v31)
    {
      v12 = v15;
      sectionID = v140;
      goto LABEL_261;
    }
  }

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v32 = v21;
  v33 = [v32 countByEnumeratingWithState:&v177 objects:v197 count:16];
  v34 = v15;
  if (v33)
  {
    v35 = v33;
    v36 = *v178;
LABEL_41:
    v37 = 0;
    while (1)
    {
      if (*v178 != v36)
      {
        objc_enumerationMutation(v32);
      }

      v38 = *(*(&v177 + 1) + 8 * v37);
      if ([v38 scheduledDeliverySetting] == 2)
      {
        break;
      }

      if (v35 == ++v37)
      {
        v35 = [v32 countByEnumeratingWithState:&v177 objects:v197 count:16];
        if (v35)
        {
          goto LABEL_41;
        }

        goto LABEL_47;
      }
    }

    v41 = [v38 criticalAlertSetting] == 2 && objc_msgSend(bulletinCopy, "interruptionLevel") == 3;
    v42 = [v38 timeSensitiveSetting] == 2 && objc_msgSend(bulletinCopy, "interruptionLevel") == 2;
    if ([v38 directMessagesSetting] == 2)
    {
      contentType = [bulletinCopy contentType];
      if ([contentType isEqualToString:@"BBBulletinContentTypeMessagingDirect"])
      {
        v44 = 1;
      }

      else
      {
        contentType2 = [bulletinCopy contentType];
        v44 = [contentType2 isEqualToString:@"BBBulletinContentTypeMessagingGroup"];
      }
    }

    else
    {
      v44 = 0;
    }

    if (v41 || v42)
    {
      v34 = v15;
      v40 = destinationsCopy;
      v39 = 0;
    }

    else
    {
      v34 = v15;
      v39 = 0;
      if (v44)
      {
        goto LABEL_48;
      }

      v40 = destinationsCopy;
      if (v143 != 3)
      {
        v34 = v15 & 0xFFFFFFFFFFFFDFFFLL | (((destinationsCopy >> 2) & 1) << 13);
        v39 = 1;
      }
    }
  }

  else
  {
LABEL_47:
    v39 = 0;
LABEL_48:
    v40 = destinationsCopy;
  }

  interruptionLevel2 = [bulletinCopy interruptionLevel];
  v141 = v39;
  if ((v39 & 1) == 0 && (v40 & 8) != 0 && interruptionLevel2)
  {
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v46 = v32;
    v47 = [v46 countByEnumeratingWithState:&v173 objects:v196 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v174;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v174 != v49)
          {
            objc_enumerationMutation(v46);
          }

          alertType = [*(*(&v173 + 1) + 8 * j) alertType];
          if (alertType == 1)
          {
            v34 |= 2uLL;
          }

          else if (alertType == 2)
          {
            v34 |= 4uLL;
            goto LABEL_79;
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v173 objects:v196 count:16];
      }

      while (v48);
    }

LABEL_79:

    v52 = v34 | 4;
    if (v143 != 3)
    {
      v52 = v34;
    }

    if ((v52 & 4) != 0)
    {
      v34 = v52 & 0xFFFFFFFFFFFFFFFDLL;
    }

    else
    {
      v34 = v52;
    }
  }

  v53 = v34;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v54 = v32;
  v55 = [v54 countByEnumeratingWithState:&v169 objects:v195 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v170;
    do
    {
      for (k = 0; k != v56; ++k)
      {
        if (*v170 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v169 + 1) + 8 * k);
        if (v24)
        {
          subsectionPriority2 = [v24 subsectionPriority];
          if (subsectionPriority2 >= [v59 subsectionPriority])
          {
            continue;
          }
        }

        v61 = v59;

        v24 = v61;
      }

      v56 = [v54 countByEnumeratingWithState:&v169 objects:v195 count:16];
    }

    while (v56);
  }

  if ([v24 lockScreenSetting] == 2)
  {
    v12 = v53;
    v62 = v141;
    if (v141 && v143 != 3)
    {
      goto LABEL_97;
    }

LABEL_99:
    v63 = destinationsCopy;
    v12 |= (destinationsCopy << 6) & 0x8000 | (8 * ((destinationsCopy >> 2) & 1)) & 0xFFFFFFFFFFFFFF9FLL | (32 * ((v12 >> 1) & 3));
    goto LABEL_100;
  }

  v12 = v53;
  v62 = v141;
  if (v143 == 3)
  {
    goto LABEL_99;
  }

LABEL_97:
  v63 = destinationsCopy;
LABEL_100:
  if ((v12 & 0x806E) != 0 && [bulletinCopy turnsOnDisplay] && interruptionLevel2 && !v62)
  {
    v12 |= 0x800uLL;
  }

  sound = [bulletinCopy sound];
  if ((v63 & 0x4D) == 0 || sound == 0 || interruptionLevel2 == 0)
  {
    v68 = 1;
  }

  else
  {
    v68 = v62;
  }

  v137 = v8;
  v138 = sound;
  if (v68)
  {
    goto LABEL_143;
  }

  alertConfiguration = [sound alertConfiguration];
  if (BBToneLibraryHasSettingsForAlertType([alertConfiguration type]) && (objc_msgSend(v8, "usesManagedSettings") & 1) == 0)
  {
    v70 = v12;
    mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
    if ([mEMORY[0x277D71F78] bb_isToneEnabledForAlertConfiguration:alertConfiguration])
    {
    }

    else
    {
      mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
      v78 = [mEMORY[0x277D71F88] bb_isVibrationEnabledForAlertConfiguration:alertConfiguration];

      if (!v78)
      {
        if (v143 == 3)
        {
          goto LABEL_141;
        }

        goto LABEL_139;
      }
    }

    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v79 = v54;
    v80 = [v79 countByEnumeratingWithState:&v165 objects:v194 count:16];
    if (v80)
    {
      v81 = v80;
      v82 = *v166;
LABEL_132:
      v83 = 0;
      while (1)
      {
        if (*v166 != v82)
        {
          objc_enumerationMutation(v79);
        }

        if ([*(*(&v165 + 1) + 8 * v83) authorizationStatus] == 2)
        {
          goto LABEL_140;
        }

        if (v81 == ++v83)
        {
          v81 = [v79 countByEnumeratingWithState:&v165 objects:v194 count:16];
          if (v81)
          {
            goto LABEL_132;
          }

          break;
        }
      }
    }
  }

  else
  {
    v70 = v12;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v71 = v54;
    v72 = [v71 countByEnumeratingWithState:&v161 objects:v193 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v162;
LABEL_119:
      v75 = 0;
      while (1)
      {
        if (*v162 != v74)
        {
          objc_enumerationMutation(v71);
        }

        if ((~[*(*(&v161 + 1) + 8 * v75) pushSettings] & 0x12) == 0)
        {
          break;
        }

        if (v73 == ++v75)
        {
          v73 = [v71 countByEnumeratingWithState:&v161 objects:v193 count:16];
          if (v73)
          {
            goto LABEL_119;
          }

          goto LABEL_138;
        }
      }

LABEL_140:

      v8 = v137;
      LOBYTE(v62) = v141;
      goto LABEL_141;
    }
  }

LABEL_138:

  v8 = v137;
  LOBYTE(v62) = v141;
  if (v143 == 3)
  {
LABEL_141:
    v12 = v70 | 0x10;
    goto LABEL_142;
  }

LABEL_139:
  v12 = v70;
LABEL_142:

  v63 = destinationsCopy;
LABEL_143:
  if ((v63 & 0x40) == 0 || interruptionLevel2 == 0)
  {
    v85 = 1;
  }

  else
  {
    v85 = v62;
  }

  if (v85)
  {
    v86 = 0;
  }

  else
  {
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v87 = v54;
    v88 = [v87 countByEnumeratingWithState:&v157 objects:v192 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v158;
      while (2)
      {
        for (m = 0; m != v89; ++m)
        {
          if (*v158 != v90)
          {
            objc_enumerationMutation(v87);
          }

          if ([*(*(&v157 + 1) + 8 * m) carPlaySetting] == 2)
          {
            v86 = 1;
            goto LABEL_161;
          }
        }

        v89 = [v87 countByEnumeratingWithState:&v157 objects:v192 count:16];
        if (v89)
        {
          continue;
        }

        break;
      }

      v86 = 0;
LABEL_161:
      LOBYTE(v62) = v141;
    }

    else
    {
      v86 = 0;
    }
  }

  if (v143 == 3)
  {
    v92 = 1;
  }

  else
  {
    v92 = v86;
  }

  if (v92)
  {
    v12 |= 0x80uLL;
  }

  if ((v63 & 0xE) != 0)
  {
    v93 = v62;
  }

  else
  {
    v93 = 1;
  }

  v133 = v86;
  if ((v93 & 1) == 0 && interruptionLevel2)
  {
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v94 = v54;
    v95 = [v94 countByEnumeratingWithState:&v153 objects:v191 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = *v154;
      while (2)
      {
        for (n = 0; n != v96; ++n)
        {
          if (*v154 != v97)
          {
            objc_enumerationMutation(v94);
          }

          if ([*(*(&v153 + 1) + 8 * n) remoteNotificationsSetting] == 2)
          {
            v12 |= 0x4000uLL;
            goto LABEL_184;
          }
        }

        v96 = [v94 countByEnumeratingWithState:&v153 objects:v191 count:16];
        if (v96)
        {
          continue;
        }

        break;
      }
    }

LABEL_184:
  }

  if ((v63 & 0x80) == 0)
  {
    goto LABEL_228;
  }

  v135 = v12;
  priorityNotificationStatus = [bulletinCopy priorityNotificationStatus];
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v100 = v54;
  v101 = [v100 countByEnumeratingWithState:&v149 objects:v190 count:16];
  if (!v101)
  {
    v103 = 0;
    goto LABEL_209;
  }

  v102 = v101;
  LOBYTE(v103) = 0;
  v104 = *v150;
  do
  {
    for (ii = 0; ii != v102; ++ii)
    {
      if (*v150 != v104)
      {
        objc_enumerationMutation(v100);
      }

      v106 = *(*(&v149 + 1) + 8 * ii);
      announceSetting = [v106 announceSetting];
      if (v103)
      {
        v103 = 1;
        continue;
      }

      if (announceSetting == 2)
      {
        contentType3 = [bulletinCopy contentType];
        if ([bulletinCopy isMessagingNotification] & 1) != 0 || (objc_msgSend(bulletinCopy, "isCallNotification"))
        {
          v109 = 1;
        }

        else
        {
          v109 = [contentType3 isEqualToString:@"BBBulletinContentTypeIntercom"];
        }

        v103 = ([bulletinCopy interruptionLevel] > 1) | v109;
      }

      else
      {
        if (announceSetting == 3)
        {
          v103 = [bulletinCopy interruptionLevel] != 0;
          continue;
        }

        if (priorityNotificationStatus != 1)
        {
          v103 = 0;
          continue;
        }

        contentType3 = [v106 sectionInfoSettings];
        v103 = [contentType3 announcePriorityNotificationsSetting] == 2;
      }
    }

    v102 = [v100 countByEnumeratingWithState:&v149 objects:v190 count:16];
  }

  while (v102);
LABEL_209:

  v110 = v135;
  v111 = v141 | (interruptionLevel2 == 0) | ([(BBServer *)selfCopy _effectiveGlobalAnnounceHeadphonesSetting]!= 2) | ~v103;
  if (interruptionLevel2)
  {
    v112 = v133 & v103 ^ 1;
  }

  else
  {
    v112 = 1;
  }

  if ((v111 & 1) == 0)
  {
    v110 = v135 | 0x100;
  }

  _effectiveGlobalAnnounceCarPlaySetting = [(BBServer *)selfCopy _effectiveGlobalAnnounceCarPlaySetting];
  if (((v141 | v112) & 1) == 0 && ([bulletinCopy isMessagingNotification] & ((_effectiveGlobalAnnounceCarPlaySetting & 0xFFFFFFFFFFFFFFFELL) == 2)) != 0)
  {
    v110 |= 0x1000uLL;
  }

  _effectiveGlobalAnnounceHearingAidsSetting = [(BBServer *)selfCopy _effectiveGlobalAnnounceHearingAidsSetting];
  sound = [(BBServer *)selfCopy _effectiveGlobalAnnounceBuiltInSpeakerSetting];
  v8 = v137;
  v63 = destinationsCopy;
  if ((v103 & 1) != 0 && (sound != 2 ? (v115 = _effectiveGlobalAnnounceHearingAidsSetting == 2) : (v115 = 1), v115))
  {
    v12 = v110;
    if (interruptionLevel2 && !v141)
    {
      v12 = v110 | 0x100;
    }
  }

  else
  {
    v12 = v110;
  }

LABEL_228:
  if ((v12 & 8) != 0 && BBShouldAlwaysSpeakLockScreenNotifications(sound, v65))
  {
    v12 |= 0x100uLL;
  }

  v116 = v138;
  if ((v63 & 0x100) != 0)
  {
    v136 = v12;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v117 = v54;
    v118 = [v117 countByEnumeratingWithState:&v145 objects:v189 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = 0;
      v121 = *v146;
      do
      {
        for (jj = 0; jj != v119; ++jj)
        {
          if (*v146 != v121)
          {
            objc_enumerationMutation(v117);
          }

          v123 = *(*(&v145 + 1) + 8 * jj);
          alertType2 = [v123 alertType];
          carPlaySetting = [v123 carPlaySetting];
          v128 = ([v123 announceSetting] & 0xFFFFFFFFFFFFFFFELL) == 2 || carPlaySetting == 2 || alertType2 != 0;
          v120 |= v128;
        }

        v119 = [v117 countByEnumeratingWithState:&v145 objects:v189 count:16];
      }

      while (v119);
    }

    else
    {
      v120 = 0;
    }

    lockScreenSetting = [v24 lockScreenSetting];
    v131 = v143 == 3 || lockScreenSetting == 2;
    v12 = v136;
    v8 = v137;
    if ((v131 | v120))
    {
      v12 = v136 | 0x400;
    }

    sectionID = v140;
    v116 = v138;
  }

  else
  {
    sectionID = v140;
  }

LABEL_261:
  v9 = v139;
LABEL_262:

LABEL_263:
  return v12;
}

- (id)_bulletinsForIDs:(id)ds
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_bulletinsByID objectForKey:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_allBulletinsForSectionID:(id)d
{
  v4 = [(BBServer *)self allBulletinIDsForSectionID:d];
  v5 = [(BBServer *)self _bulletinsForIDs:v4];

  return v5;
}

- (id)_sectionInfoForSectionID:(id)d effective:(BOOL)effective
{
  effectiveCopy = effective;
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  v8 = [(BBSectionInfoStoreInterface *)self->_sectionInfoStore sectionInfoForSectionID:dCopy effective:effectiveCopy];

  return v8;
}

- (id)_sectionInfoArray:(BOOL)array
{
  arrayCopy = array;
  dispatch_assert_queue_V2(self->_queue);
  sectionInfoStore = self->_sectionInfoStore;

  return [(BBSectionInfoStoreInterface *)sectionInfoStore allSortedSectionInfo:arrayCopy];
}

- (id)_allSectionInfoIDs
{
  dispatch_assert_queue_V2(self->_queue);
  sectionInfoStore = self->_sectionInfoStore;

  return [(BBSectionInfoStoreInterface *)sectionInfoStore allUnsortedSectionInfoIDs];
}

- (void)_clearBulletinIDIfPossible:(id)possible rescheduleExpirationTimer:(BOOL)timer
{
  timerCopy = timer;
  v38 = *MEMORY[0x277D85DE8];
  possibleCopy = possible;
  dispatch_assert_queue_V2(self->_queue);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = self->_observers;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v29 + 1) + 8 * v11) currentTransactionForBulletinID:{possibleCopy, v29}];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = [(NSMutableDictionary *)self->_observerGatewayEnumerators objectForKey:possibleCopy];
  if (v14)
  {
    v15 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      observerGatewayEnumerators = self->_observerGatewayEnumerators;
      v17 = v15;
      v18 = [(NSMutableDictionary *)observerGatewayEnumerators count];
      *buf = 67109120;
      LODWORD(v34) = v18;
      _os_log_impl(&dword_241EFF000, v17, OS_LOG_TYPE_DEFAULT, "Bulletin still in use by one of %d gateway enumerators", buf, 8u);
    }
  }

  v19 = [(NSMutableDictionary *)self->_bulletinsByID objectForKey:possibleCopy, v29];
  sectionID = [v19 sectionID];
  v21 = [(BBServer *)self noticesBulletinIDsForSectionID:sectionID];
  v22 = [v21 containsObject:possibleCopy];

  if (v14)
  {
    v23 = 1;
  }

  else
  {
    v23 = v13;
  }

  v24 = BBLogBulletinLife;
  v25 = os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT);
  if (v23 & 1) != 0 || (v22)
  {
    if (v25)
    {
      v28 = @"recent interruptions array";
      if (v14)
      {
        v28 = @"a gateway enumerator";
      }

      if (v22)
      {
        v28 = @"list";
      }

      if (v13)
      {
        v28 = @"an observer";
      }

      *buf = 138412546;
      v34 = possibleCopy;
      v35 = 2114;
      v36 = v28;
      _os_log_impl(&dword_241EFF000, v24, OS_LOG_TYPE_DEFAULT, "BBServer not purging bulletin %@ because still in use by %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v25)
    {
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_241EFF000, v24, OS_LOG_TYPE_DEFAULT, "BBServer purging bulletin: %{public}@", buf, 0xCu);
    }

    v26 = [(NSMutableDictionary *)self->_bulletinIDsBySectionID objectForKey:sectionID];
    [v26 removeObject:possibleCopy];

    v27 = [(NSMutableDictionary *)self->_noticeBulletinIDsBySectionID objectForKey:sectionID];
    [v27 removeObject:possibleCopy];

    if ([(NSMutableArray *)self->_expiringBulletinIDs containsObject:possibleCopy])
    {
      [(NSMutableArray *)self->_expiringBulletinIDs removeObject:possibleCopy];
      if (timerCopy)
      {
        [(BBServer *)self _expireBulletinsAndRescheduleTimerIfNecessary];
      }
    }

    if ([(NSMutableArray *)self->_eventBasedExpiringBulletinIDs containsObject:possibleCopy])
    {
      [(NSMutableArray *)self->_eventBasedExpiringBulletinIDs removeObject:possibleCopy];
    }

    [(BBServer *)self noteFinishedWithBulletinID:possibleCopy];
    [(NSMutableDictionary *)self->_bulletinsByID removeObjectForKey:possibleCopy];
  }
}

- (BOOL)_didNotificationCenterSettingsChangeWithSectionInfo:(id)info replacingSectionInfo:(id)sectionInfo
{
  v28 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  sectionInfoCopy = sectionInfo;
  subsectionID = [infoCopy subsectionID];

  if (subsectionID)
  {
    subsectionID2 = [infoCopy subsectionID];
    subsections = [sectionInfoCopy _subsectionForID:subsectionID2];

    notificationCenterSetting = [infoCopy notificationCenterSetting];
    if (notificationCenterSetting == [subsections notificationCenterSetting])
    {
      contentPreviewSetting = [infoCopy contentPreviewSetting];
      if (contentPreviewSetting == [subsections contentPreviewSetting])
      {
        LOBYTE(v12) = 0;
        goto LABEL_17;
      }
    }

LABEL_16:
    LOBYTE(v12) = 1;
    goto LABEL_17;
  }

  notificationCenterSetting2 = [infoCopy notificationCenterSetting];
  if (notificationCenterSetting2 != [sectionInfoCopy notificationCenterSetting] || (v14 = objc_msgSend(infoCopy, "contentPreviewSetting"), v14 != objc_msgSend(sectionInfoCopy, "contentPreviewSetting")))
  {
    LOBYTE(v12) = 1;
    goto LABEL_19;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  subsections = [infoCopy subsections];
  v12 = [subsections countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v15 = *v24;
LABEL_9:
    v16 = 0;
    while (1)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(subsections);
      }

      v17 = *(*(&v23 + 1) + 8 * v16);
      subsectionID3 = [v17 subsectionID];
      v19 = [sectionInfoCopy _subsectionForID:subsectionID3];

      notificationCenterSetting3 = [v17 notificationCenterSetting];
      notificationCenterSetting4 = [v19 notificationCenterSetting];

      if (notificationCenterSetting3 != notificationCenterSetting4)
      {
        goto LABEL_16;
      }

      if (v12 == ++v16)
      {
        v12 = [subsections countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

LABEL_17:

LABEL_19:
  return v12;
}

- (void)_setSectionInfoNoteSettingsChanged:(id)changed forSectionID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  changedCopy = changed;
  dispatch_assert_queue_V2(queue);
  [(BBServer *)self _setSectionInfo:changedCopy forSectionID:dCopy];
  sectionType = [changedCopy sectionType];

  if (sectionType != 1)
  {
    v9 = [(BBServer *)self _sectionInfoForSectionID:dCopy];
    v10 = [v9 copy];

    [(BBDataProviderManager *)self->_dataProviderManager noteSettingsChanged:v10 forSectionID:dCopy];
  }
}

- (void)_setPrimitiveSectionInfo:(id)info forSectionID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  v8 = [(BBSectionInfoStoreInterface *)self->_sectionInfoStore sectionInfoForSectionID:dCopy effective:0];
  sectionInfoStore = self->_sectionInfoStore;
  if (infoCopy)
  {
    [(BBSectionInfoStoreInterface *)sectionInfoStore setSectionInfo:infoCopy forSectionID:dCopy];
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_5:
    if ([infoCopy isEqual:v8])
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  [(BBSectionInfoStoreInterface *)sectionInfoStore removeSectionWithID:dCopy];
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = dCopy;
    _os_log_impl(&dword_241EFF000, v10, OS_LOG_TYPE_DEFAULT, "Persisting changes for %@", &v13, 0xCu);
  }

  persistentStore = self->_persistentStore;
  sectionInfoByID = [(BBSectionInfoStoreInterface *)self->_sectionInfoStore sectionInfoByID];
  [(BBPersistentStoreInterface *)persistentStore writeSectionInfo:sectionInfoByID];

LABEL_9:
}

- (void)_setSectionInfo:(id)info forSectionID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(BBServer *)self _sectionInfoForSectionID:dCopy];
  v9 = [v8 copy];

  [infoCopy queryAndUseManagedSettings];
  if ([infoCopy isEqual:v9])
  {
    v10 = infoCopy;
  }

  else
  {
    v10 = [(BBSectionAuthorizationManager *)self->_sectionAuthorizationManager handleChangeForSectionInfo:infoCopy replacingSectionInfo:v9];

    [(BBMuteExpirationManager *)self->_muteManager cleanAndWatchExpirationsForSectionInfo:v10];
    v11 = [(BBSectionInfoStoreInterface *)self->_sectionInfoStore effectiveSectionInfoForSectionInfo:v10];
    v12 = [(BBSectionInfoStoreInterface *)self->_sectionInfoStore effectiveSectionInfoForSectionInfo:v9];
    v13 = [(BBServer *)self _didNotificationCenterSettingsChangeWithSectionInfo:v11 replacingSectionInfo:v12];
    subsectionID = [v10 subsectionID];

    if (subsectionID)
    {
      [v9 _replaceSubsection:v10];
      v15 = v9;

      v10 = v15;
    }

    v16 = BBLogSettings;
    if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543874;
      v18 = dCopy;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_241EFF000, v16, OS_LOG_TYPE_DEFAULT, "Saving updated section info for: %{public}@\n\tOld = %{public}@\n\tNew = %{public}@", &v17, 0x20u);
    }

    [(BBServer *)self _setPrimitiveSectionInfo:v10 forSectionID:dCopy];
    [(BBServer *)self _sendUpdateSectionInfo:v10];
    if (v13)
    {
      [(BBServer *)self _updateDataProviderForSectionInfo:v10 sectionID:dCopy];
    }
  }
}

- (void)_updateDataProviderForSectionInfo:(id)info sectionID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(BBServer *)self dataProviderForSectionID:dCopy];
  if (v8)
  {
    v9 = v8;
    [(BBServer *)self _updateAllBulletinsForDataProviderIfSectionIsEnabled:v8];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    dataProviderIDs = [infoCopy dataProviderIDs];
    v11 = [dataProviderIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v9 = 0;
      v13 = *v18;
      do
      {
        v14 = 0;
        v15 = v9;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(dataProviderIDs);
          }

          v9 = [(BBServer *)self dataProviderForSectionID:*(*(&v17 + 1) + 8 * v14)];

          if (v9)
          {
            v16 = objc_autoreleasePoolPush();
            [(BBServer *)self _updateAllBulletinsForDataProviderIfSectionIsEnabled:v9];
            objc_autoreleasePoolPop(v16);
          }

          ++v14;
          v15 = v9;
        }

        while (v12 != v14);
        v12 = [dataProviderIDs countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    else
    {
      v9 = 0;
    }
  }
}

- (void)_addStateCaptureHandlers
{
  objc_initWeak(&location, self);
  v6[1] = MEMORY[0x277D85DD0];
  v6[2] = 3221225472;
  v6[3] = __36__BBServer__addStateCaptureHandlers__block_invoke;
  v6[4] = &unk_278D2ACB0;
  objc_copyWeak(&v7, &location);
  v2 = BSLogAddStateCaptureBlockWithTitle();
  v5[1] = MEMORY[0x277D85DD0];
  v5[2] = 3221225472;
  v5[3] = __36__BBServer__addStateCaptureHandlers__block_invoke_2;
  v5[4] = &unk_278D2ACB0;
  objc_copyWeak(v6, &location);
  v3 = BSLogAddStateCaptureBlockWithTitle();
  objc_copyWeak(v5, &location);
  v4 = BSLogAddStateCaptureBlockWithTitle();
  objc_destroyWeak(v5);
  objc_destroyWeak(v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

id __36__BBServer__addStateCaptureHandlers__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (WeakRetained)
  {
    v3 = [WeakRetained _sectionInfoArray:1];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
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
          v9 = [v8 stateCapture];
          v10 = [v8 sectionID];
          [v2 setValue:v9 forKey:v10];
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  return v2;
}

id __36__BBServer__addStateCaptureHandlers__block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = BBStringFromBBContentPreviewSetting([WeakRetained _effectiveGlobalContentPreviewsSetting]);
    v33 = BBStringFromBBContentPreviewSetting([v2 _globalContentPreviewsSetting]);
    v32 = BBStringFromBBContentPreviewSetting([v2 _defaultGlobalContentPreviewSetting]);
    v31 = BBStringFromBBAnnounceSetting([v2 _effectiveGlobalAnnounceSetting]);
    v30 = BBStringFromBBAnnounceSetting([v2 _globalAnnounceSetting]);
    v29 = BBStringFromBBAnnounceSetting([v2 _effectiveGlobalAnnounceHeadphonesSetting]);
    v28 = BBStringFromBBAnnounceSetting([v2 _globalAnnounceHeadphonesSetting]);
    v27 = BBStringFromBBAnnounceCarPlaySetting([v2 _effectiveGlobalAnnounceCarPlaySetting]);
    v26 = BBStringFromBBAnnounceCarPlaySetting([v2 _globalAnnounceCarPlaySetting]);
    v25 = BBStringFromBBScheduledDeliverySetting([v2 _effectiveGlobalScheduledDeliverySetting]);
    v24 = BBStringFromBBSystemSetting([v2 _effectiveGlobalScheduledDeliveryShowNextSummarySetting]);
    v4 = [v2 _effectiveGlobalScheduledDeliveryTimes];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v35;
      v8 = @"[ ";
      do
      {
        v9 = 0;
        v10 = v8;
        do
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v8 = -[__CFString stringByAppendingFormat:](v10, "stringByAppendingFormat:", @" %li:%li, ", [*(*(&v34 + 1) + 8 * v9) hour], objc_msgSend(*(*(&v34 + 1) + 8 * v9), "minute"));

          ++v9;
          v10 = v8;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v34 objects:v48 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = @"[ ";
    }

    v19 = [(__CFString *)v8 stringByAppendingFormat:@" ]"];

    v18 = BBStringFromBBNotificationListDisplayStyleSetting([v2 _effectiveGlobalNotificationListDisplayStyleSetting]);
    v44[0] = @"EffectiveContentPreviewSetting";
    v44[1] = @"ContentPreviewSetting";
    v45[0] = v3;
    v45[1] = v33;
    v44[2] = @"DefaultContentPreviewSettingForDevice";
    v45[2] = v32;
    v46[0] = @"ContentPreviews";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
    v47[0] = v23;
    v46[1] = @"AnnounceNotifications";
    v42[0] = @"EffectiveAnnounceSetting";
    v42[1] = @"AnnounceSetting";
    v43[0] = v31;
    v43[1] = v30;
    v42[2] = @"AnnounceSupportedHeadphones";
    v22 = BBStringFromBool([v2 _isAnnounceSupportedForHeadphones]);
    v43[2] = v22;
    v42[3] = @"AnnounceSupportedCarPlay";
    v21 = BBStringFromBool([v2 _isAnnounceSupportedForCarPlay]);
    v43[3] = v21;
    v43[4] = v29;
    v42[4] = @"EffectiveAnnounceHeadphonesSetting";
    v42[5] = @"EffectiveAnnounceCarPlaySetting";
    v43[5] = v27;
    v43[6] = v28;
    v42[6] = @"AnnounceHeadphonesSetting";
    v42[7] = @"AnnounceCarPlaySetting";
    v43[7] = v26;
    v42[8] = @"PairedVehiclesForCarPlay";
    v20 = BBStringFromBool([v2 _hasPairedVehiclesForCarPlay]);
    v43[8] = v20;
    v42[9] = @"SiriEnabled";
    v12 = BBStringFromBool(v2[305]);
    v43[9] = v12;
    v42[10] = @"SiriAllowedWhenLocked";
    v13 = BBStringFromBool(v2[304]);
    v43[10] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:11];
    v47[1] = v14;
    v46[2] = @"ScheduledDelivery";
    v40[0] = @"EffectiveScheduledDeliverySetting";
    v40[1] = @"EffectiveScheduledDeliveryShowNextSummarySetting";
    v41[0] = v25;
    v41[1] = v24;
    v40[2] = @"ScheduledDeliveryTimes";
    v41[2] = v19;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
    v47[2] = v15;
    v46[3] = @"NotificationList";
    v38 = @"EffectiveNotificationListDisplayStyleSetting";
    v39 = v18;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v47[3] = v16;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:4];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

id __36__BBServer__addStateCaptureHandlers__block_invoke_3(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CBEB98];
    v4 = [WeakRetained _allSectionInfoIDs];
    v5 = [v3 setWithArray:v4];

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v2 allBulletinIDsForSectionID:{v13, v19}];
          if ([v14 count])
          {
            v10 += [v14 count];
            v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
            [v6 setValue:v15 forKey:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v23[0] = @"BulletinCountBySection";
    v23[1] = @"TotalBulletinCount";
    v24[0] = v6;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    v24[1] = v17;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  else
  {
    v16 = MEMORY[0x277CBEC10];
  }

  return v16;
}

- (void)_handleSignificantTimeChange
{
  [MEMORY[0x277CBEBB0] resetSystemTimeZone];

  [(BBServer *)self _expireBulletinsAndRescheduleTimerIfNecessary];
}

- (void)_scheduleTimerForDate:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dispatch_assert_queue_V2(self->_queue);
  [(BBServer *)self _clearExpirationTimer];
  [dateCopy timeIntervalSinceNow];
  v6 = v5;
  if (v5 < 20.0)
  {
    if (os_log_type_enabled(BBLogExpiration, OS_LOG_TYPE_ERROR))
    {
      [BBServer _scheduleTimerForDate:];
    }

    date = [MEMORY[0x277CBEAA8] date];
    v6 = 60.0;
    v8 = [date dateByAddingTimeInterval:60.0];

    dateCopy = v8;
  }

  objc_storeStrong(&self->_nextScheduledExpirationTimerFireDate, dateCopy);
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  expirationTimer = self->_expirationTimer;
  self->_expirationTimer = v9;

  v11 = self->_expirationTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __34__BBServer__scheduleTimerForDate___block_invoke;
  handler[3] = &unk_278D2A600;
  handler[4] = self;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_source_set_timer(self->_expirationTimer, 0, (v6 * 1000000000.0), 0x4A817C800uLL);
  dispatch_resume(self->_expirationTimer);
  v12 = BBLogExpiration;
  if (os_log_type_enabled(BBLogExpiration, OS_LOG_TYPE_DEFAULT))
  {
    nextScheduledExpirationTimerFireDate = self->_nextScheduledExpirationTimerFireDate;
    *buf = 138543362;
    v16 = nextScheduledExpirationTimerFireDate;
    _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "Expiration timer now set for %{public}@", buf, 0xCu);
  }
}

- (id)_bulletinIDsInSortedArray:(id)array withDateForKey:(id)key beforeCutoff:(id)cutoff
{
  v27 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  keyCopy = key;
  cutoffCopy = cutoff;
  v10 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = arrayCopy;
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [(NSMutableDictionary *)self->_bulletinsByID objectForKey:v15];
        v17 = [v16 valueForKey:keyCopy];
        v18 = [v17 laterDate:cutoffCopy];

        if (v18 != cutoffCopy)
        {

          goto LABEL_11;
        }

        [v10 addObject:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (unint64_t)_indexForNewDate:(id)date inBulletinIDArray:(id)array sortedAscendingByDateForKey:(id)key
{
  dateCopy = date;
  arrayCopy = array;
  keyCopy = key;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [arrayCopy count];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    while (1)
    {
      bulletinsByID = self->_bulletinsByID;
      v15 = [arrayCopy objectAtIndex:v13];
      v16 = [(NSMutableDictionary *)bulletinsByID objectForKey:v15];

      v17 = [v16 valueForKey:keyCopy];
      v18 = [v17 earlierDate:dateCopy];

      if (v18 == dateCopy)
      {
        break;
      }

      if (v12 == ++v13)
      {
        v13 = v12;
        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_expireBulletinsDueToSystemEvent:(unint64_t)event
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = BBLogExpiration;
  if (os_log_type_enabled(BBLogExpiration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    eventCopy = event;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Received system event %ld; checking for expiration", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB98] setWithArray:self->_eventBasedExpiringBulletinIDs];
  v7 = [(BBServer *)self _bulletinsForIDs:v6];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v24;
    *&v10 = 138543874;
    v22 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if (([v14 expirationEvents] & event) != 0)
        {
          v15 = BBLogExpiration;
          if (os_log_type_enabled(BBLogExpiration, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            sectionID = [v14 sectionID];
            bulletinID = [v14 bulletinID];
            *buf = v22;
            eventCopy = sectionID;
            v29 = 2114;
            v30 = bulletinID;
            v31 = 2048;
            eventCopy2 = event;
            _os_log_impl(&dword_241EFF000, v16, OS_LOG_TYPE_DEFAULT, "Expiring bulletin in section <%{public}@>: bulletinID = <%{public}@>, event %ld", buf, 0x20u);
          }

          responseForExpireAction = [v14 responseForExpireAction];
          [(BBServer *)self deliverResponse:responseForExpireAction withCompletion:0];
          eventBasedExpiringBulletinIDs = self->_eventBasedExpiringBulletinIDs;
          bulletinID2 = [v14 bulletinID];
          [(NSMutableArray *)eventBasedExpiringBulletinIDs removeObject:bulletinID2];

          [(BBServer *)self _removeBulletin:v14 rescheduleTimerIfAffected:0 shouldSync:0];
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v11);
  }
}

- (id)_newValidatedDefaultExpirationComponentsFromComponents:(id)components
{
  componentsCopy = components;
  if (componentsCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    if ([componentsCopy hour] != 0x7FFFFFFFFFFFFFFFLL)
    {
      hour = [componentsCopy hour];
      if (hour >= 0)
      {
        v6 = hour;
      }

      else
      {
        v6 = -hour;
      }

      [v4 setHour:v6];
    }

    if ([componentsCopy day] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [componentsCopy day];
      if (v7 >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = -v7;
      }

      [v4 setDay:v8];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_newDateCompontentsByInvertingInterestingPartsOfComponents:(id)components
{
  componentsCopy = components;
  if (componentsCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    if ([componentsCopy hour] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 setHour:{-objc_msgSend(componentsCopy, "hour")}];
    }

    if ([componentsCopy day] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 setDay:{-objc_msgSend(componentsCopy, "day")}];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setDefaultExpirationComponents:(id)components
{
  componentsCopy = components;
  dispatch_assert_queue_V2(self->_queue);
  v4 = componentsCopy;
  if (self->_defaultExpirationComponents != componentsCopy)
  {
    v5 = [(BBServer *)self _newValidatedDefaultExpirationComponentsFromComponents:componentsCopy];
    defaultExpirationComponents = self->_defaultExpirationComponents;
    self->_defaultExpirationComponents = v5;
    v7 = v5;

    v8 = [(BBServer *)self _newDateCompontentsByInvertingInterestingPartsOfComponents:self->_defaultExpirationComponents];
    expirationReferenceComponents = self->_expirationReferenceComponents;
    self->_expirationReferenceComponents = v8;

    v4 = componentsCopy;
  }
}

- (id)_bulletinDefaultExpirationDateFromDate:(id)date
{
  dateCopy = date;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_defaultExpirationComponents)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = [currentCalendar dateByAddingComponents:self->_defaultExpirationComponents toDate:dateCopy options:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_validateExpirationDateForBulletinRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_defaultExpirationComponents)
  {
    recencyDate = [requestCopy recencyDate];
    if (recencyDate || ([requestCopy date], (recencyDate = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = recencyDate;
      expirationDate = [requestCopy expirationDate];
      v7 = [(BBServer *)self _bulletinDefaultExpirationDateFromDate:v5];
      v8 = v7;
      if (!expirationDate)
      {
        expirationDate = v7;
      }

      [requestCopy setExpirationDate:expirationDate];
    }
  }
}

- (void)_scheduleExpirationForBulletin:(id)bulletin
{
  v22 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  dispatch_assert_queue_V2(self->_queue);
  expirationDate = [bulletinCopy expirationDate];
  bulletinID = [bulletinCopy bulletinID];
  expirationEvents = [bulletinCopy expirationEvents];
  expiringBulletinIDs = self->_expiringBulletinIDs;
  if (expirationDate)
  {
    [(NSMutableArray *)expiringBulletinIDs removeObject:bulletinID];
    v9 = [(BBServer *)self _indexForNewDate:expirationDate inBulletinIDArray:self->_expiringBulletinIDs sortedAscendingByDateForKey:@"expirationDate"];
    [(NSMutableArray *)self->_expiringBulletinIDs insertObject:bulletinID atIndex:v9];
    v10 = BBLogExpiration;
    if (os_log_type_enabled(BBLogExpiration, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      bulletinID2 = [bulletinCopy bulletinID];
      v16 = 138543874;
      v17 = bulletinID2;
      v18 = 2114;
      v19 = expirationDate;
      v20 = 2048;
      v21 = v9;
      _os_log_impl(&dword_241EFF000, v11, OS_LOG_TYPE_DEFAULT, "Bulletin with bulletinID <%{public}@>, expiration date <%{public}@> inserted in expiring bulletins array at index %ld", &v16, 0x20u);
    }
  }

  else
  {
    if (![(NSMutableArray *)expiringBulletinIDs containsObject:bulletinID])
    {
      goto LABEL_7;
    }

    [(NSMutableArray *)self->_expiringBulletinIDs removeObject:bulletinID];
  }

  [(BBServer *)self _expireBulletinsAndRescheduleTimerIfNecessary];
LABEL_7:
  if (expirationEvents)
  {
    v13 = BBLogExpiration;
    if (os_log_type_enabled(BBLogExpiration, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      bulletinID3 = [bulletinCopy bulletinID];
      v16 = 138543618;
      v17 = bulletinID3;
      v18 = 2048;
      v19 = expirationEvents;
      _os_log_impl(&dword_241EFF000, v14, OS_LOG_TYPE_DEFAULT, "Bulletin with bulletinID <%{public}@>, expiration event <%ld> inserted in event-based expiring bulletins array", &v16, 0x16u);
    }

    [(NSMutableArray *)self->_eventBasedExpiringBulletinIDs addObject:bulletinID];
  }
}

- (void)ping:(id)ping
{
  pingCopy = ping;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __17__BBServer_ping___block_invoke;
  block[3] = &unk_278D2A9C8;
  v8 = pingCopy;
  v6 = pingCopy;
  dispatch_async(queue, block);
}

uint64_t __17__BBServer_ping___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getSectionParametersForSectionID:(id)d withHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__BBServer_getSectionParametersForSectionID_withHandler___block_invoke;
  block[3] = &unk_278D2ACD8;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = dCopy;
  v9 = dCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

void __57__BBServer_getSectionParametersForSectionID_withHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    if (*(a1 + 32))
    {
      v5 = [*(a1 + 40) dataProviderForSectionID:?];
      v2 = [v5 sectionParameters];
      (*(v1 + 16))(v1, v2, 0);
    }

    else
    {
      v3 = *(v1 + 16);
      v4 = *(a1 + 48);

      v3(v4, 0);
    }
  }
}

- (void)_storeObserver:(id)observer forFeed:(unint64_t)feed
{
  queue = self->_queue;
  observerCopy = observer;
  dispatch_assert_queue_V2(queue);
  [(BBMaskedSet *)self->_observerFeedSet removeObject:observerCopy];
  [(BBMaskedSet *)self->_observerFeedSet addObject:observerCopy withMask:feed];
}

- (void)_logObserversBeforeAndAfterUpdateBlock:(id)block
{
  blockCopy = block;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEBUG))
  {
    [BBServer _logObserversBeforeAndAfterUpdateBlock:];
  }

  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEBUG))
  {
    [BBServer _logObserversBeforeAndAfterUpdateBlock:];
  }

  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEBUG))
  {
    [BBServer _logObserversBeforeAndAfterUpdateBlock:];
  }

  blockCopy[2](blockCopy);
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEBUG))
  {
    [BBServer _logObserversBeforeAndAfterUpdateBlock:];
  }

  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEBUG))
  {
    [BBServer _logObserversBeforeAndAfterUpdateBlock:];
  }

  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEBUG))
  {
    [BBServer _logObserversBeforeAndAfterUpdateBlock:];
  }
}

- (void)observer:(id)observer setObserverFeed:(unint64_t)feed attachToLightsAndSirensGateway:(id)gateway
{
  observerCopy = observer;
  gatewayCopy = gateway;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__BBServer_observer_setObserverFeed_attachToLightsAndSirensGateway___block_invoke;
  v13[3] = &unk_278D2AD00;
  v14 = observerCopy;
  v15 = gatewayCopy;
  selfCopy = self;
  feedCopy = feed;
  v11 = gatewayCopy;
  v12 = observerCopy;
  dispatch_async(queue, v13);
}

void __68__BBServer_observer_setObserverFeed_attachToLightsAndSirensGateway___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) && *(a1 + 40))
  {
    v2 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 56);
      v5 = *(a1 + 32);
      v4 = *(a1 + 40);
      *buf = 134218498;
      v14 = v3;
      v15 = 2114;
      v16 = v4;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "Setting feed %0lx on gateway %{public}@ observer %{public}@", buf, 0x20u);
    }

    v6 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__BBServer_observer_setObserverFeed_attachToLightsAndSirensGateway___block_invoke_214;
    v9[3] = &unk_278D2AD00;
    v9[4] = v6;
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    v10 = v7;
    v12 = v8;
    v11 = *(a1 + 40);
    [v6 _logObserversBeforeAndAfterUpdateBlock:v9];
  }
}

void __68__BBServer_observer_setObserverFeed_attachToLightsAndSirensGateway___block_invoke_214(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _storeObserver:*(a1 + 40) forFeed:*(a1 + 56)];
  v2 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(a1 + 48)];
  if (!v2)
  {
    v2 = [[BBObserverGatewayHolder alloc] initWithQueue:*(*(a1 + 32) + 40) name:*(a1 + 48)];
    [*(*(a1 + 32) + 88) setObject:v2 forKeyedSubscript:*(a1 + 48)];
  }

  v3 = [(BBObserverGatewayHolder *)v2 observerFeedSet];
  [v3 removeObject:*(a1 + 40)];

  v4 = [(BBObserverGatewayHolder *)v2 observerFeedSet];
  [v4 addObject:*(a1 + 40) withMask:*(a1 + 56)];

  v5 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = *(a1 + 40);
    v9 = 134218498;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Done setting feed %0lx on gateway %{public}@ observer %{public}@", &v9, 0x20u);
  }
}

- (void)observer:(id)observer setObserverFeed:(unint64_t)feed asLightsAndSirensGateway:(id)gateway priority:(unint64_t)priority
{
  observerCopy = observer;
  gatewayCopy = gateway;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BBServer_observer_setObserverFeed_asLightsAndSirensGateway_priority___block_invoke;
  block[3] = &unk_278D2AD28;
  v16 = observerCopy;
  v17 = gatewayCopy;
  feedCopy = feed;
  priorityCopy = priority;
  selfCopy = self;
  v13 = gatewayCopy;
  v14 = observerCopy;
  dispatch_async(queue, block);
}

void __71__BBServer_observer_setObserverFeed_asLightsAndSirensGateway_priority___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) && *(a1 + 40))
  {
    v2 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      *buf = 134218754;
      v18 = v5;
      v19 = 2114;
      v20 = v3;
      v21 = 2114;
      v22 = v4;
      v23 = 1024;
      v24 = v6;
      _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "Setting feed %0lx on gateway %{public}@ observer %{public}@ at priority %u", buf, 0x26u);
    }

    v7 = *(a1 + 48);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__BBServer_observer_setObserverFeed_asLightsAndSirensGateway_priority___block_invoke_216;
    v12[3] = &unk_278D2AD28;
    v12[4] = v7;
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    v13 = v8;
    v15 = v9;
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    v14 = v10;
    v16 = v11;
    [v7 _logObserversBeforeAndAfterUpdateBlock:v12];
  }
}

void __71__BBServer_observer_setObserverFeed_asLightsAndSirensGateway_priority___block_invoke_216(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _storeObserver:*(a1 + 40) forFeed:*(a1 + 56)];
  v2 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(a1 + 48)];
  if (!v2)
  {
    v2 = [[BBObserverGatewayHolder alloc] initWithQueue:*(*(a1 + 32) + 40) name:*(a1 + 48)];
    [*(*(a1 + 32) + 88) setObject:v2 forKeyedSubscript:*(a1 + 48)];
  }

  v3 = [(BBObserverGatewayHolder *)v2 gateway];

  if (!v3)
  {
    [(BBObserverGatewayHolder *)v2 setGateway:*(a1 + 40)];
    [(BBObserverGatewayHolder *)v2 setGatewayPriority:*(a1 + 64)];
    [(BBObserverGatewayHolder *)v2 setFeed:*(a1 + 56)];
    [*(*(a1 + 32) + 80) addObject:v2];
    v4 = *(*(a1 + 32) + 80);
    v5 = +[BBObserverGatewayHolder gatewayHolderSortComparator];
    [v4 sortWithOptions:16 usingComparator:v5];
  }

  v6 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = 134218754;
    v12 = v9;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 1024;
    v18 = v10;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Done setting feed %0lx on gateway %{public}@ observer %{public}@ at priority %u", &v11, 0x26u);
  }
}

- (id)_openApplicationOptionsForResponse:(id)response
{
  v3 = MEMORY[0x277CBEB38];
  v4 = *MEMORY[0x277D0AC58];
  v5 = *MEMORY[0x277D0AC70];
  responseCopy = response;
  v7 = [v3 dictionaryWithObjectsAndKeys:{v4, MEMORY[0x277CBEC38], v5, 0}];
  originID = [responseCopy originID];

  if (originID)
  {
    [v7 setObject:originID forKey:*MEMORY[0x277D0AC28]];
  }

  return v7;
}

- (void)_didReceiveResponseForBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BBServer__didReceiveResponseForBulletin___block_invoke;
  v7[3] = &unk_278D2A628;
  v8 = bulletinCopy;
  selfCopy = self;
  v6 = bulletinCopy;
  dispatch_async(queue, v7);
}

void __43__BBServer__didReceiveResponseForBulletin___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bulletinID];
  [*(a1 + 40) _clearBulletinIDIfPossible:v2 rescheduleExpirationTimer:1];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 40) + 64);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v8 currentTransactionForBulletinID:{v2, v10}];

        if (v9)
        {
          [v8 noteServerReceivedResponseForBulletin:*(a1 + 32)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_sendBulletinsLoadedForSectionID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) noteBulletinsLoadedForSectionID:{dCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)observer:(id)observer handleResponse:(id)response withCompletion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__BBServer_observer_handleResponse_withCompletion___block_invoke;
  block[3] = &unk_278D2A9A0;
  v13 = responseCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = responseCopy;
  dispatch_async(queue, block);
}

void __51__BBServer_observer_handleResponse_withCompletion___block_invoke(id *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = [v2 bulletinID];
    if (!v3)
    {
      if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
      {
        __51__BBServer_observer_handleResponse_withCompletion___block_invoke_cold_1();
      }

      goto LABEL_13;
    }

    v4 = [*(a1[5] + 15) objectForKey:v3];
    v5 = [v4 actionForResponse:a1[4]];
    v6 = [v5 launchURL];

    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277CC1F00]);
      v8 = [a1[5] _openApplicationOptionsForResponse:a1[4]];
      [v7 setFrontBoardOptions:v8];

      v9 = [a1[4] endpoint];
      [v7 setTargetConnectionEndpoint:v9];

      [v7 setSensitive:1];
      v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v11 = [v5 launchURL];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __51__BBServer_observer_handleResponse_withCompletion___block_invoke_219;
      v33[3] = &unk_278D2AD78;
      v22 = *(a1 + 2);
      v12 = v22.i64[0];
      v34 = vextq_s8(v22, v22, 8uLL);
      v35 = v4;
      v36 = v5;
      v37 = a1[6];
      [v10 openURL:v11 configuration:v7 completionHandler:v33];

      v13 = v34.i64[1];
    }

    else
    {
      v14 = [v5 launchBundleID];

      if (!v14)
      {
        v20 = a1[4];
        v21 = a1[5];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __51__BBServer_observer_handleResponse_withCompletion___block_invoke_224;
        v24[3] = &unk_278D2AE18;
        v24[4] = v21;
        v25 = v20;
        v26 = v4;
        v27 = a1[6];
        [v21 deliverResponse:v25 withCompletion:v24];

        goto LABEL_12;
      }

      v7 = objc_alloc_init(MEMORY[0x277CC1F00]);
      v15 = [a1[5] _openApplicationOptionsForResponse:a1[4]];
      [v7 setFrontBoardOptions:v15];

      v16 = [a1[4] endpoint];
      [v7 setTargetConnectionEndpoint:v16];

      v17 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v18 = [v5 launchBundleID];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __51__BBServer_observer_handleResponse_withCompletion___block_invoke_221;
      v28[3] = &unk_278D2ADC8;
      v23 = *(a1 + 2);
      v19 = v23.i64[0];
      v29 = vextq_s8(v23, v23, 8uLL);
      v30 = v4;
      v31 = v5;
      v32 = a1[6];
      [v17 openApplicationWithBundleIdentifier:v18 configuration:v7 completionHandler:v28];

      v13 = v29.i64[1];
    }

LABEL_12:
LABEL_13:

    return;
  }

  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
  {
    __51__BBServer_observer_handleResponse_withCompletion___block_invoke_cold_2();
  }
}

void __51__BBServer_observer_handleResponse_withCompletion___block_invoke_219(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__BBServer_observer_handleResponse_withCompletion___block_invoke_2;
  block[3] = &unk_278D2AD50;
  v13 = v4;
  *&v6 = *(a1 + 40);
  *(&v6 + 1) = *(a1 + 32);
  v11 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v14 = v11;
  v15 = v9;
  v16 = *(a1 + 64);
  v10 = v4;
  dispatch_async(v5, block);
}

uint64_t __51__BBServer_observer_handleResponse_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    BBIsInternalDevice();
  }

  [*(a1 + 40) setDidOpenApplication:1];
  [*(a1 + 48) deliverResponse:*(a1 + 40) withCompletion:0];
  [*(a1 + 48) _didReceiveResponseForBulletin:*(a1 + 56)];
  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, 1, *(a1 + 40));
  }

  return result;
}

void __51__BBServer_observer_handleResponse_withCompletion___block_invoke_221(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__BBServer_observer_handleResponse_withCompletion___block_invoke_2_222;
  block[3] = &unk_278D2ADA0;
  v18 = a2;
  *&v7 = *(a1 + 40);
  *(&v7 + 1) = *(a1 + 32);
  v12 = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v14 = v12;
  v15 = v10;
  v16 = v5;
  v17 = *(a1 + 64);
  v11 = v5;
  dispatch_async(v6, block);
}

uint64_t __51__BBServer_observer_handleResponse_withCompletion___block_invoke_2_222(uint64_t a1)
{
  if (*(a1 + 80) != 1)
  {
    BBIsInternalDevice();
  }

  [*(a1 + 32) setDidOpenApplication:1];
  [*(a1 + 40) deliverResponse:*(a1 + 32) withCompletion:0];
  [*(a1 + 40) _didReceiveResponseForBulletin:*(a1 + 48)];
  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 80), *(a1 + 32));
  }

  return result;
}

void __51__BBServer_observer_handleResponse_withCompletion___block_invoke_224(uint64_t a1, char a2)
{
  v3 = (a1 + 32);
  v4 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__BBServer_observer_handleResponse_withCompletion___block_invoke_2_225;
  block[3] = &unk_278D2ADF0;
  v13 = a2;
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *v3;
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  dispatch_async(v4, block);
}

uint64_t __51__BBServer_observer_handleResponse_withCompletion___block_invoke_2_225(uint64_t a1)
{
  if (*(a1 + 64) != 1 || ([*(a1 + 32) setActivated:1], objc_msgSend(*(a1 + 40), "_didReceiveResponseForBulletin:", *(a1 + 48)), (*(a1 + 64) & 1) == 0))
  {
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
    {
      __51__BBServer_observer_handleResponse_withCompletion___block_invoke_2_225_cold_1();
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

- (void)observer:(id)observer finishedWithBulletinID:(id)d transactionID:(unint64_t)iD
{
  observerCopy = observer;
  dCopy = d;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__BBServer_observer_finishedWithBulletinID_transactionID___block_invoke;
  v13[3] = &unk_278D2AD00;
  v14 = observerCopy;
  v15 = dCopy;
  selfCopy = self;
  iDCopy = iD;
  v11 = dCopy;
  v12 = observerCopy;
  dispatch_async(queue, v13);
}

void __58__BBServer_observer_finishedWithBulletinID_transactionID___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && *(a1 + 40))
  {
    v3 = [v2 currentTransactionForBulletinID:?];
    if ([v3 transactionID] == *(a1 + 56))
    {
      [*(a1 + 32) removeTransaction:v3];
      v4 = BBLogBulletinLife;
      if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v15 = 138543362;
        v16 = v5;
        _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Observer is finished with bulletin %{public}@", &v15, 0xCu);
      }

      v6 = [*(*(a1 + 48) + 72) objectAtIndex:0];
      v7 = [v6 containsObject:*(a1 + 32)];

      if (v7)
      {
        v8 = BBLogSectionUpdates;
        if (os_log_type_enabled(BBLogSectionUpdates, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 40);
          v15 = 138543362;
          v16 = v9;
          _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "List observer is finished with bulletin %{public}@", &v15, 0xCu);
        }
      }

      [*(a1 + 48) _clearBulletinIDIfPossible:*(a1 + 40) rescheduleExpirationTimer:1];
    }

    else
    {
      v10 = BBLogBulletinLife;
      if (os_log_type_enabled(BBLogBulletinLife, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 56);
        v12 = v10;
        v13 = [v3 transactionID];
        v14 = *(a1 + 40);
        v15 = 134218498;
        v16 = v11;
        v17 = 2048;
        v18 = v13;
        v19 = 2114;
        v20 = v14;
        _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring observer 'finishedWithBulletinID' for outdated transactionID %ld. Current ID: %ld, bulletin: %{public}@", &v15, 0x20u);
      }
    }
  }
}

- (void)observer:(id)observer clearSection:(id)section
{
  sectionCopy = section;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__BBServer_observer_clearSection___block_invoke;
  v8[3] = &unk_278D2A628;
  v9 = sectionCopy;
  selfCopy = self;
  v7 = sectionCopy;
  dispatch_async(queue, v8);
}

void *__34__BBServer_observer_clearSection___block_invoke(void *result)
{
  v6 = *MEMORY[0x277D85DE8];
  if (result[4])
  {
    v1 = result;
    v2 = BBLogSectionUpdates;
    if (os_log_type_enabled(BBLogSectionUpdates, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[4];
      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "Handling clear section %{public}@", &v4, 0xCu);
    }

    return [v1[5] _clearSection:v1[4]];
  }

  return result;
}

- (void)observer:(id)observer clearBulletinsFromDate:(id)date toDate:(id)toDate inSections:(id)sections
{
  dateCopy = date;
  toDateCopy = toDate;
  sectionsCopy = sections;
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__BBServer_observer_clearBulletinsFromDate_toDate_inSections___block_invoke;
  v16[3] = &unk_278D2AE40;
  v17 = dateCopy;
  v18 = toDateCopy;
  v19 = sectionsCopy;
  selfCopy = self;
  v13 = sectionsCopy;
  v14 = toDateCopy;
  v15 = dateCopy;
  dispatch_async(queue, v16);
}

void __62__BBServer_observer_clearBulletinsFromDate_toDate_inSections___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) && *(a1 + 40))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = *(a1 + 48);
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v23 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v14;
      *&v4 = 138543874;
      v12 = v4;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          v9 = BBLogSectionUpdates;
          if (os_log_type_enabled(BBLogSectionUpdates, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 32);
            v11 = *(a1 + 40);
            *buf = v12;
            v18 = v8;
            v19 = 2114;
            v20 = v10;
            v21 = 2114;
            v22 = v11;
            _os_log_impl(&dword_241EFF000, v9, OS_LOG_TYPE_DEFAULT, "Handling clear bulletins for section %{public}@: %{public}@ to %{public}@", buf, 0x20u);
          }

          [*(a1 + 56) _clearBulletinsFromDate:*(a1 + 32) toDate:*(a1 + 40) forSection:{v8, v12, v13}];
          ++v7;
        }

        while (v5 != v7);
        v5 = [v2 countByEnumeratingWithState:&v13 objects:v23 count:16];
      }

      while (v5);
    }
  }
}

- (void)observer:(id)observer clearBulletinIDs:(id)ds inSection:(id)section
{
  dsCopy = ds;
  sectionCopy = section;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BBServer_observer_clearBulletinIDs_inSection___block_invoke;
  block[3] = &unk_278D2AB58;
  v13 = sectionCopy;
  v14 = dsCopy;
  selfCopy = self;
  v10 = dsCopy;
  v11 = sectionCopy;
  dispatch_async(queue, block);
}

uint64_t __48__BBServer_observer_clearBulletinIDs_inSection___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = BBLogSectionUpdates;
  if (os_log_type_enabled(BBLogSectionUpdates, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "Handling clear bulletins for section %@: %@", &v6, 0x16u);
  }

  return [*(a1 + 48) _clearBulletinIDs:*(a1 + 40) forSectionID:*(a1 + 32) shouldSync:1];
}

- (void)observer:(id)observer removeBulletins:(id)bulletins inSection:(id)section fromFeeds:(unint64_t)feeds
{
  bulletinsCopy = bulletins;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__BBServer_observer_removeBulletins_inSection_fromFeeds___block_invoke;
  block[3] = &unk_278D2A9F0;
  block[4] = self;
  v12 = bulletinsCopy;
  feedsCopy = feeds;
  v10 = bulletinsCopy;
  dispatch_async(queue, block);
}

- (void)observer:(id)observer getSectionInfoWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__BBServer_observer_getSectionInfoWithHandler___block_invoke;
  v8[3] = &unk_278D2A900;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(queue, v8);
}

void __47__BBServer_observer_getSectionInfoWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) _sectionInfoArray:1];
    (*(v1 + 16))(v1, v2, 0);
  }
}

- (void)observer:(id)observer getSectionInfoForActiveSectionsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__BBServer_observer_getSectionInfoForActiveSectionsWithHandler___block_invoke;
  v8[3] = &unk_278D2A900;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(queue, v8);
}

void __64__BBServer_observer_getSectionInfoForActiveSectionsWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) _sectionInfoArrayForActiveSections:1];
    (*(v1 + 16))(v1, v2, 0);
  }
}

- (void)observer:(id)observer getSectionInfoForSectionIDs:(id)ds withHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__BBServer_observer_getSectionInfoForSectionIDs_withHandler___block_invoke;
  block[3] = &unk_278D2ACD8;
  v13 = dsCopy;
  v14 = handlerCopy;
  block[4] = self;
  v10 = dsCopy;
  v11 = handlerCopy;
  dispatch_async(queue, block);
}

void __61__BBServer_observer_getSectionInfoForSectionIDs_withHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = [*(a1 + 32) _sectionInfoArrayForSectionIDs:*(a1 + 40) effective:1];
    (*(v1 + 16))(v1, v2, 0);
  }
}

- (void)observer:(id)observer requestNoticesBulletinsForSectionID:(id)d
{
  observerCopy = observer;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__BBServer_observer_requestNoticesBulletinsForSectionID___block_invoke;
  block[3] = &unk_278D2AB58;
  block[4] = self;
  v12 = observerCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = observerCopy;
  dispatch_async(queue, block);
}

- (void)requestNoticesBulletinsForAllSections:(id)sections
{
  sectionsCopy = sections;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__BBServer_requestNoticesBulletinsForAllSections___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = sectionsCopy;
  v6 = sectionsCopy;
  dispatch_async(queue, v7);
}

void __50__BBServer_requestNoticesBulletinsForAllSections___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__BBServer_requestNoticesBulletinsForAllSections___block_invoke_2;
  v4[3] = &unk_278D2AE68;
  v4[4] = v2;
  v5 = v1;
  [v3 performBlockOnDataProviders:v4];
}

void __50__BBServer_requestNoticesBulletinsForAllSections___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 sectionIdentifier];
  [v2 _sendObserver:v3 noticesBulletinsForSectionID:v4];
}

- (void)_sendObserver:(id)observer noticesBulletinsForSectionID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  if (d)
  {
    v7 = [(BBServer *)self noticesBulletinIDsForSectionID:d];
    v8 = [MEMORY[0x277CBEB58] set];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = [(NSMutableDictionary *)self->_bulletinsByID objectForKey:v13];
          v15 = [BBBulletinAddUpdate updateWithBulletin:v14 feeds:1 shouldPlayLightsAndSirens:1];
          v16 = +[BBBulletinUpdateTransaction transactionWithBulletinUpdate:transactionID:](BBBulletinUpdateTransaction, "transactionWithBulletinUpdate:transactionID:", v15, [observerCopy incrementedTransactionIDForBulletinID:v13]);
          [v8 addObject:v16];
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v10);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [observerCopy updateBulletin:*(*(&v23 + 1) + 8 * j) withHandler:0];
        }

        v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v19);
    }
  }
}

- (void)getEffectiveSectionInfoWithHandler:(id)handler
{
  handlerCopy = handler;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v5 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Get all effective section infos", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__BBServer_getEffectiveSectionInfoWithHandler___block_invoke;
  v7[3] = &unk_278D2AC60;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v10[5], 0);
  }

  _Block_object_dispose(&v9, 8);
}

void __47__BBServer_getEffectiveSectionInfoWithHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _sectionInfoArray:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = v5;
    v8 = 134217984;
    v9 = [v6 count];
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got %ld effective section infos", &v8, 0xCu);
  }
}

- (void)getSectionInfoWithHandler:(id)handler
{
  handlerCopy = handler;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v5 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Get all section infos", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__BBServer_getSectionInfoWithHandler___block_invoke;
  v7[3] = &unk_278D2AC60;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v10[5], 0);
  }

  _Block_object_dispose(&v9, 8);
}

void __38__BBServer_getSectionInfoWithHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _sectionInfoArray:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = v5;
    v8 = 134217984;
    v9 = [v6 count];
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got %ld section infos", &v8, 0xCu);
  }
}

- (void)getSectionInfoForActiveSectionsWithHandler:(id)handler
{
  handlerCopy = handler;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__BBServer_getSectionInfoForActiveSectionsWithHandler___block_invoke;
  v6[3] = &unk_278D2AC60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v8[5], 0);
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __55__BBServer_getSectionInfoForActiveSectionsWithHandler___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _sectionInfoArrayForActiveSections:0];

  return MEMORY[0x2821F96F8]();
}

- (void)getActiveSectionIDsWithHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "BBServer: Servicing XPC request for activeSectionIDs", buf, 2u);
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = [MEMORY[0x277CBEB98] set];
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__BBServer_getActiveSectionIDsWithHandler___block_invoke;
  v9[3] = &unk_278D2AC60;
  v9[4] = self;
  v9[5] = buf;
  dispatch_sync(queue, v9);
  if (handlerCopy)
  {
    v7 = BBLogGeneral;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(v11 + 5) count];
      *v16 = 134217984;
      v17 = v8;
      _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "BBServer: XPC request handler for activeSectionIDs count: %lu", v16, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, *(v11 + 5), 0);
  }

  _Block_object_dispose(buf, 8);
}

- (void)getSectionInfoForSectionID:(id)d withHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__BBServer_getSectionInfoForSectionID_withHandler___block_invoke;
  block[3] = &unk_278D2A8D8;
  v12 = &v13;
  block[4] = self;
  v9 = dCopy;
  v11 = v9;
  dispatch_sync(queue, block);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v14[5]);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __51__BBServer_getSectionInfoForSectionID_withHandler___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _sectionInfoForSectionID:*(a1 + 40) effective:0];

  return MEMORY[0x2821F96F8]();
}

- (void)getEffectiveSectionInfoForSectionID:(id)d withHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__BBServer_getEffectiveSectionInfoForSectionID_withHandler___block_invoke;
  block[3] = &unk_278D2A8D8;
  v12 = &v13;
  block[4] = self;
  v9 = dCopy;
  v11 = v9;
  dispatch_sync(queue, block);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v14[5]);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __60__BBServer_getEffectiveSectionInfoForSectionID_withHandler___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _sectionInfoForSectionID:*(a1 + 40) effective:1];

  return MEMORY[0x2821F96F8]();
}

- (void)getSectionInfoForSectionIDs:(id)ds withHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BBServer_getSectionInfoForSectionIDs_withHandler___block_invoke;
  block[3] = &unk_278D2A8D8;
  v12 = &v13;
  block[4] = self;
  v9 = dsCopy;
  v11 = v9;
  dispatch_sync(queue, block);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v14[5]);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __52__BBServer_getSectionInfoForSectionIDs_withHandler___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _sectionInfoArrayForSectionIDs:*(a1 + 40) effective:0];

  return MEMORY[0x2821F96F8]();
}

- (void)getEffectiveSectionInfoForSectionIDs:(id)ds withHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__BBServer_getEffectiveSectionInfoForSectionIDs_withHandler___block_invoke;
  v11[3] = &unk_278D2AE90;
  v9 = handlerCopy;
  v13 = v9;
  v14 = &v15;
  v11[4] = self;
  v10 = dsCopy;
  v12 = v10;
  dispatch_sync(queue, v11);
  if (v9)
  {
    (*(v9 + 2))(v9, v16[5]);
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __61__BBServer_getEffectiveSectionInfoForSectionIDs_withHandler___block_invoke(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result;
    *(*(*(v1 + 56) + 8) + 40) = [*(result + 32) _sectionInfoArrayForSectionIDs:*(result + 40) effective:1];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)getSectionIDsWithHandler:(id)handler
{
  handlerCopy = handler;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v5 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Get all section IDs", buf, 2u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__BBServer_getSectionIDsWithHandler___block_invoke;
  v7[3] = &unk_278D2AC60;
  v7[4] = self;
  v7[5] = &v9;
  dispatch_sync(queue, v7);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v10[5], 0);
  }

  _Block_object_dispose(&v9, 8);
}

void __37__BBServer_getSectionIDsWithHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _allSectionInfoIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = v5;
    v8 = 134217984;
    v9 = [v6 count];
    _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Got %ld section IDs", &v8, 0xCu);
  }
}

- (void)_updateAllSectionInfos
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(BBSectionInfoStoreInterface *)self->_sectionInfoStore allSortedSectionInfo:0, 0];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        [(BBServer *)self _sendUpdateSectionInfo:v8];
        sectionID = [v8 sectionID];
        v11 = [(BBServer *)self dataProviderForSectionID:sectionID];
        [(BBServer *)self _updateAllBulletinsForDataProviderIfSectionIsEnabled:v11];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)_updateGlobalSettings
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v15 = [BBGlobalSettings alloc];
  _effectiveGlobalContentPreviewsSetting = [(BBServer *)self _effectiveGlobalContentPreviewsSetting];
  _effectiveGlobalAnnounceSetting = [(BBServer *)self _effectiveGlobalAnnounceSetting];
  _effectiveGlobalAnnounceHeadphonesSetting = [(BBServer *)self _effectiveGlobalAnnounceHeadphonesSetting];
  _effectiveGlobalAnnounceCarPlaySetting = [(BBServer *)self _effectiveGlobalAnnounceCarPlaySetting];
  _effectiveGlobalScheduledDeliverySetting = [(BBServer *)self _effectiveGlobalScheduledDeliverySetting];
  _effectiveGlobalScheduledDeliveryTimes = [(BBServer *)self _effectiveGlobalScheduledDeliveryTimes];
  v9 = [(BBGlobalSettings *)v15 initWithContentPreviewSetting:_effectiveGlobalContentPreviewsSetting announceSetting:_effectiveGlobalAnnounceSetting announceHeadphonesSetting:_effectiveGlobalAnnounceHeadphonesSetting announceCarPlaySetting:_effectiveGlobalAnnounceCarPlaySetting scheduledDeliverySetting:_effectiveGlobalScheduledDeliverySetting scheduledDeliveryTimes:_effectiveGlobalScheduledDeliveryTimes scheduledDeliveryShowNextSummarySetting:[(BBServer *)self _effectiveGlobalScheduledDeliveryShowNextSummarySetting] notificationListDisplayStyleSetting:[(BBServer *)self _effectiveGlobalNotificationListDisplayStyleSetting] summarizationSetting:[(BBServer *)self _effectiveGlobalSummarizationSetting] highlightsSettings:[(BBServer *)self _effectiveGlobalHighlightsSetting]];

  v10 = [(BBMaskedSet *)self->_observerFeedSet objectAtIndex:9];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) updateGlobalSettings:v9];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)_biometricResourceStateChanged
{
  dispatch_assert_queue_V2(self->_queue);
  if (![(BBServer *)self _globalContentPreviewsSetting])
  {
    [(BBServer *)self _updateGlobalSettings];

    [(BBServer *)self _updateAllSectionInfos];
  }
}

- (void)_setGlobalSummarizationSetting:(int64_t)setting
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[BBBulletinBoardDefaults standardDefaults];
  [v5 setGlobalSummarizationSetting:setting];

  [(BBServer *)self _updateGlobalSettings];

  [(BBServer *)self _updateAllSectionInfos];
}

- (void)_setGlobalHighlightsSetting:(int64_t)setting
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[BBBulletinBoardDefaults standardDefaults];
  [v5 setGlobalHighlightsSetting:setting];

  [(BBServer *)self _updateGlobalSettings];
}

- (BOOL)isGreyMatterEligble
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_eligibility_get_domain_answer())
  {
    if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_ERROR))
    {
      [BBServer isGreyMatterEligble];
    }
  }

  else
  {
    v2 = BBLogSettings;
    if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v5 = 0;
      _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "[BBServer: greyMatterEligible=%{BOOL}d", buf, 8u);
    }
  }

  return 0;
}

- (void)_setGlobalContentPreviewsSetting:(int64_t)setting
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = +[BBBulletinBoardDefaults standardDefaults];
  [v4 setGlobalContentPreviewSetting:setting];
}

- (void)getEffectiveGlobalContentPreviewsSettingWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__BBServer_getEffectiveGlobalContentPreviewsSettingWithHandler___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __64__BBServer_getEffectiveGlobalContentPreviewsSettingWithHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = [*(result + 32) _effectiveGlobalContentPreviewsSetting];
    v3 = *(v1 + 16);

    return v3(v1, v2, 0);
  }

  return result;
}

- (void)setEffectiveGlobalContentPreviewsSetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BBServer_setEffectiveGlobalContentPreviewsSetting_withHandler___block_invoke;
  block[3] = &unk_278D2AEB8;
  v10 = handlerCopy;
  settingCopy = setting;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

uint64_t __65__BBServer_setEffectiveGlobalContentPreviewsSetting_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _globalContentPreviewsSetting];
  v3 = *(a1 + 48);
  if (v2 != v3)
  {
    v4 = *(a1 + 32);
    if (v3 == [v4 _defaultGlobalContentPreviewSetting])
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a1 + 48);
    }

    [v4 _setGlobalContentPreviewsSetting:v5];
    [*(a1 + 32) _updateGlobalSettings];
    [*(a1 + 32) _updateAllSectionInfos];
  }

  v6 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Set effectiveGlobalContentPreviewsSetting", v8, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)eligibleAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__BBServer_eligibleAnnouncementRequestTypesChanged_onPlatform___block_invoke;
  block[3] = &unk_278D2AEE0;
  v6 = changed & 1;
  block[4] = self;
  block[5] = platform;
  dispatch_async(queue, block);
}

void *__63__BBServer_eligibleAnnouncementRequestTypesChanged_onPlatform___block_invoke(void *result)
{
  v1 = result;
  v9 = *MEMORY[0x277D85DE8];
  v2 = result[5];
  if (v2 == 2)
  {
    v5 = BBLogSettings;
    if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v1 + 48);
      v7 = 67109120;
      v8 = v6;
      _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Changed value of eligible setup for announce for CarPlay: %{BOOL}d", &v7, 8u);
    }

    return [v1[4] _setAnnounceSupportedForCarPlay:*(v1 + 48)];
  }

  else if (v2 == 1)
  {
    v3 = BBLogSettings;
    if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v1 + 48);
      v7 = 67109120;
      v8 = v4;
      _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Changed value of eligible setup for announce for headphones: %{BOOL}d", &v7, 8u);
    }

    return [v1[4] _setAnnounceSupportedForHeadphones:*(v1 + 48)];
  }

  return result;
}

- (void)_siriPreferencesDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__BBServer__siriPreferencesDidChange___block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_updateSiriPreferences
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x277CEF368] assistantIsEnabled];

  siriEnabled = self->_siriEnabled;
  v6 = siriEnabled != assistantIsEnabled;
  if (siriEnabled != assistantIsEnabled)
  {
    self->_siriEnabled = assistantIsEnabled;
  }

  mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
  v8 = [mEMORY[0x277CEF368]2 disableAssistantWhilePasscodeLocked] ^ 1;

  if (self->_siriAllowedWhenLocked != v8)
  {
    self->_siriAllowedWhenLocked = v8;
    v6 = 1;
  }

  mEMORY[0x277CEF368]3 = [MEMORY[0x277CEF368] sharedPreferences];
  announceNotificationsOnHearingAidsEnabled = [mEMORY[0x277CEF368]3 announceNotificationsOnHearingAidsEnabled];

  if (self->_announceOnHearingAidsEnabled != announceNotificationsOnHearingAidsEnabled)
  {
    self->_announceOnHearingAidsEnabled = announceNotificationsOnHearingAidsEnabled;
    v6 = 1;
  }

  mEMORY[0x277CEF368]4 = [MEMORY[0x277CEF368] sharedPreferences];
  announceNotificationsOnHearingAidsSupported = [mEMORY[0x277CEF368]4 announceNotificationsOnHearingAidsSupported];

  if (self->_announceOnHearingAidsSupported != announceNotificationsOnHearingAidsSupported)
  {
    self->_announceOnHearingAidsSupported = announceNotificationsOnHearingAidsSupported;
    v6 = 1;
  }

  mEMORY[0x277CEF368]5 = [MEMORY[0x277CEF368] sharedPreferences];
  announceNotificationsOnBuiltInSpeakerEnabled = [mEMORY[0x277CEF368]5 announceNotificationsOnBuiltInSpeakerEnabled];

  if (self->_announceOnBuiltInSpeakerEnabled == announceNotificationsOnBuiltInSpeakerEnabled)
  {
    if (!v6)
    {
      return;
    }
  }

  else
  {
    self->_announceOnBuiltInSpeakerEnabled = announceNotificationsOnBuiltInSpeakerEnabled;
  }

  v15 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_siriEnabled;
    siriAllowedWhenLocked = self->_siriAllowedWhenLocked;
    announceOnHearingAidsEnabled = self->_announceOnHearingAidsEnabled;
    announceOnHearingAidsSupported = self->_announceOnHearingAidsSupported;
    announceOnBuiltInSpeakerEnabled = self->_announceOnBuiltInSpeakerEnabled;
    v21[0] = 67110144;
    v21[1] = v16;
    v22 = 1024;
    v23 = siriAllowedWhenLocked;
    v24 = 1024;
    v25 = announceOnHearingAidsEnabled;
    v26 = 1024;
    v27 = announceOnHearingAidsSupported;
    v28 = 1024;
    v29 = announceOnBuiltInSpeakerEnabled;
    _os_log_impl(&dword_241EFF000, v15, OS_LOG_TYPE_DEFAULT, "Siri preferences did change [ Siri enabled: %{BOOL}d, Siri allowed when locked: %{BOOL}d, Announce on hearing aids enabled: %{BOOL}d, Announce on hearing aids supported: %{BOOL}d, Announce on built in speaker enabled: %{BOOL}d]", v21, 0x20u);
  }

  [(BBServer *)self _updateAnnounceSettings];
}

- (void)_pairedVehiclesForCarPlayDidChange:(id)change
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__BBServer__pairedVehiclesForCarPlayDidChange___block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_fetchAllVehiclesForCarPlay
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getCRPairedVehicleManagerClass_softClass;
  v11 = getCRPairedVehicleManagerClass_softClass;
  if (!getCRPairedVehicleManagerClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getCRPairedVehicleManagerClass_block_invoke;
    v7[3] = &unk_278D2B060;
    v7[4] = &v8;
    __getCRPairedVehicleManagerClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = objc_alloc_init(v3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__BBServer__fetchAllVehiclesForCarPlay__block_invoke;
  v6[3] = &unk_278D2AF08;
  v6[4] = self;
  [v5 fetchAllVehiclesWithCompletion:v6];
}

void __39__BBServer__fetchAllVehiclesForCarPlay__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 count];
  v4 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v3 != 0;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Changed value of vehicles for CarPlay: %{BOOL}d", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__BBServer__fetchAllVehiclesForCarPlay__block_invoke_234;
  v7[3] = &unk_278D2AA40;
  v7[4] = v5;
  v8 = v3 != 0;
  dispatch_async(v6, v7);
}

- (void)_updateAnnounceControlCenterModuleAvailability
{
  if (!CFPreferencesGetAppBooleanValue(@"SBIconVisibility", @"com.apple.siri.SpokenNotificationsModule", 0))
  {
    CFPreferencesSetAppValue(@"SBIconVisibility", *MEMORY[0x277CBED28], @"com.apple.siri.SpokenNotificationsModule");
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, 0, 1u);
  }
}

- (void)_saveGlobalAnnounceSettingEnabledEvent
{
  v28[1] = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v2 = get_DKEventStreamClass_softClass;
  v27 = get_DKEventStreamClass_softClass;
  if (!get_DKEventStreamClass_softClass)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __get_DKEventStreamClass_block_invoke;
    v22 = &unk_278D2B060;
    v23 = &v24;
    __get_DKEventStreamClass_block_invoke(&v19);
    v2 = v25[3];
  }

  v3 = v2;
  _Block_object_dispose(&v24, 8);
  v4 = [v2 eventStreamWithName:@"/discoverability/signals"];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v5 = get_DKAnyStringIdentifierClass_softClass;
  v27 = get_DKAnyStringIdentifierClass_softClass;
  if (!get_DKAnyStringIdentifierClass_softClass)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __get_DKAnyStringIdentifierClass_block_invoke;
    v22 = &unk_278D2B060;
    v23 = &v24;
    __get_DKAnyStringIdentifierClass_block_invoke(&v19);
    v5 = v25[3];
  }

  v6 = v5;
  _Block_object_dispose(&v24, 8);
  type = [v5 type];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v8 = get_DKIdentifierClass_softClass;
  v27 = get_DKIdentifierClass_softClass;
  if (!get_DKIdentifierClass_softClass)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __get_DKIdentifierClass_block_invoke;
    v22 = &unk_278D2B060;
    v23 = &v24;
    __get_DKIdentifierClass_block_invoke(&v19);
    v8 = v25[3];
  }

  v9 = v8;
  _Block_object_dispose(&v24, 8);
  v10 = [v8 identifierWithString:@"com.apple.siri.spoken-notifications.enabled" type:type];
  date = [MEMORY[0x277CBEAA8] date];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v12 = get_DKEventClass_softClass;
  v27 = get_DKEventClass_softClass;
  if (!get_DKEventClass_softClass)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __get_DKEventClass_block_invoke;
    v22 = &unk_278D2B060;
    v23 = &v24;
    __get_DKEventClass_block_invoke(&v19);
    v12 = v25[3];
  }

  v13 = v12;
  _Block_object_dispose(&v24, 8);
  v14 = [v12 eventWithStream:v4 startDate:date endDate:date value:v10 confidence:0 metadata:1.0];
  if (v14)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v15 = get_DKKnowledgeStoreClass_softClass;
    v27 = get_DKKnowledgeStoreClass_softClass;
    if (!get_DKKnowledgeStoreClass_softClass)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __get_DKKnowledgeStoreClass_block_invoke;
      v22 = &unk_278D2B060;
      v23 = &v24;
      __get_DKKnowledgeStoreClass_block_invoke(&v19);
      v15 = v25[3];
    }

    v16 = v15;
    _Block_object_dispose(&v24, 8);
    knowledgeStore = [v15 knowledgeStore];
    v28[0] = v14;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    [knowledgeStore saveObjects:v18 responseQueue:0 withCompletion:&__block_literal_global_253];
  }
}

void __50__BBServer__saveGlobalAnnounceSettingEnabledEvent__block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
    {
      __50__BBServer__saveGlobalAnnounceSettingEnabledEvent__block_invoke_cold_1();
    }
  }

  else if (a2)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    [v5 setObject:@"com.apple.siri.spoken-notifications.enabled" forKeyedSubscript:@"signalIdentifier"];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v6 = get_CDContextualKeyPathClass_softClass;
    v20 = get_CDContextualKeyPathClass_softClass;
    if (!get_CDContextualKeyPathClass_softClass)
    {
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __get_CDContextualKeyPathClass_block_invoke;
      v15 = &unk_278D2B060;
      v16 = &v17;
      __get_CDContextualKeyPathClass_block_invoke(&v12);
      v6 = v18[3];
    }

    v7 = v6;
    _Block_object_dispose(&v17, 8);
    v8 = [v6 keyPathWithKey:@"/discoverability/signals/dataDictionary"];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v9 = get_CDClientContextClass_softClass;
    v20 = get_CDClientContextClass_softClass;
    if (!get_CDClientContextClass_softClass)
    {
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __get_CDClientContextClass_block_invoke;
      v15 = &unk_278D2B060;
      v16 = &v17;
      __get_CDClientContextClass_block_invoke(&v12);
      v9 = v18[3];
    }

    v10 = v9;
    _Block_object_dispose(&v17, 8);
    v11 = [v9 userContext];
    [v11 setObject:v5 forKeyedSubscript:v8];
  }
}

- (void)_updateAnnounceSettings
{
  [(BBServer *)self _updateGlobalSettings];
  [(BBServer *)self _updateAllSectionInfos];

  [(BBServer *)self _updateAnnounceControlCenterModuleAvailability];
}

- (void)_setGlobalAnnounceSetting:(int64_t)setting
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[BBBulletinBoardDefaults standardDefaults];
  globalAnnounceSetting = [v5 globalAnnounceSetting];

  if (setting != -1 && globalAnnounceSetting != setting)
  {
    v7 = +[BBBulletinBoardDefaults standardDefaults];
    [v7 setGlobalAnnounceSetting:setting];

    [(BBServer *)self _updateGlobalSettings];
    [(BBServer *)self _updateAllSectionInfos];
    [(BBServer *)self _updateAnnounceControlCenterModuleAvailability];
    if (setting == 2)
    {

      [(BBServer *)self _saveGlobalAnnounceSettingEnabledEvent];
    }
  }
}

- (void)getEffectiveGlobalAnnounceSettingWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__BBServer_getEffectiveGlobalAnnounceSettingWithHandler___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __57__BBServer_getEffectiveGlobalAnnounceSettingWithHandler___block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) _effectiveGlobalAnnounceSetting];
    v3 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = BBStringFromBBAnnounceSetting(v2);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalAnnounceSetting: %{public}@", &v6, 0xCu);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (void)setEffectiveGlobalAnnounceSetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BBServer_setEffectiveGlobalAnnounceSetting_withHandler___block_invoke;
  block[3] = &unk_278D2AEB8;
  v10 = handlerCopy;
  settingCopy = setting;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

uint64_t __58__BBServer_setEffectiveGlobalAnnounceSetting_withHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = BBStringFromBBAnnounceSetting(v3);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Set effectiveGlobalAnnounceSetting: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) _setGlobalAnnounceSetting:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setAnnounceSupportedForHeadphones:(BOOL)headphones
{
  headphonesCopy = headphones;
  dispatch_assert_queue_V2(self->_queue);
  if ([(BBServer *)self _isAnnounceSupportedForHeadphones]!= headphonesCopy)
  {
    v5 = +[BBBulletinBoardDefaults standardDefaults];
    [v5 setAnnounceSupportedForHeadphones:headphonesCopy];

    [(BBServer *)self _updateAnnounceSettings];
  }
}

- (int64_t)_globalAnnounceHeadphonesSetting
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[BBBulletinBoardDefaults standardDefaults];
  globalAnnounceHeadphonesSetting = [v3 globalAnnounceHeadphonesSetting];

  if (globalAnnounceHeadphonesSetting == -1)
  {
    [(BBServer *)self _setGlobalAnnounceHeadphonesSetting:0];
    return 0;
  }

  return globalAnnounceHeadphonesSetting;
}

- (void)_setGlobalAnnounceHeadphonesSetting:(int64_t)setting
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[BBBulletinBoardDefaults standardDefaults];
  globalAnnounceHeadphonesSetting = [v5 globalAnnounceHeadphonesSetting];

  if (setting != -1 && globalAnnounceHeadphonesSetting != setting)
  {
    v7 = +[BBBulletinBoardDefaults standardDefaults];
    [v7 setGlobalAnnounceHeadphonesSetting:setting];

    [(BBServer *)self _updateGlobalSettings];
  }
}

- (int64_t)_effectiveGlobalAnnounceHearingAidsSetting
{
  dispatch_assert_queue_V2(self->_queue);
  if (__PAIR64__(self->_siriEnabled, self->_siriAllowedWhenLocked) != 0x100000001 || !self->_announceOnHearingAidsSupported)
  {
    return -1;
  }

  if (self->_announceOnHearingAidsEnabled)
  {
    return 2;
  }

  return 1;
}

- (int64_t)_effectiveGlobalAnnounceBuiltInSpeakerSetting
{
  dispatch_assert_queue_V2(self->_queue);
  if (__PAIR64__(self->_siriEnabled, self->_siriAllowedWhenLocked) != 0x100000001)
  {
    return -1;
  }

  if (self->_announceOnBuiltInSpeakerEnabled)
  {
    return 2;
  }

  return 1;
}

- (void)getEffectiveGlobalAnnounceHeadphonesSettingWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__BBServer_getEffectiveGlobalAnnounceHeadphonesSettingWithHandler___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __67__BBServer_getEffectiveGlobalAnnounceHeadphonesSettingWithHandler___block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) _effectiveGlobalAnnounceHeadphonesSetting];
    v3 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = BBStringFromBBAnnounceSetting(v2);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalAnnounceHeadphonesSetting: %{public}@", &v6, 0xCu);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (void)setEffectiveGlobalAnnounceHeadphonesSetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__BBServer_setEffectiveGlobalAnnounceHeadphonesSetting_withHandler___block_invoke;
  block[3] = &unk_278D2AEB8;
  v10 = handlerCopy;
  settingCopy = setting;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

uint64_t __68__BBServer_setEffectiveGlobalAnnounceHeadphonesSetting_withHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = BBStringFromBBAnnounceSetting(v3);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Set setEffectiveGlobalAnnounceHeadphonesSetting: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) _setGlobalAnnounceHeadphonesSetting:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setAnnounceSupportedForCarPlay:(BOOL)play
{
  playCopy = play;
  dispatch_assert_queue_V2(self->_queue);
  if ([(BBServer *)self _isAnnounceSupportedForCarPlay]!= playCopy)
  {
    v5 = +[BBBulletinBoardDefaults standardDefaults];
    [v5 setAnnounceSupportedForCarPlay:playCopy];

    [(BBServer *)self _updateAnnounceSettings];
  }
}

- (void)_setPairedVehiclesForCarPlay:(BOOL)play
{
  playCopy = play;
  dispatch_assert_queue_V2(self->_queue);
  if ([(BBServer *)self _hasPairedVehiclesForCarPlay]!= playCopy)
  {
    v5 = +[BBBulletinBoardDefaults standardDefaults];
    [v5 setPairedVehiclesForCarPlay:playCopy];

    [(BBServer *)self _updateAnnounceSettings];
  }
}

- (void)_setGlobalAnnounceCarPlaySetting:(int64_t)setting
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = +[BBBulletinBoardDefaults standardDefaults];
  globalAnnounceCarPlaySetting = [v5 globalAnnounceCarPlaySetting];

  if (setting != -1 && globalAnnounceCarPlaySetting != setting)
  {
    v7 = +[BBBulletinBoardDefaults standardDefaults];
    [v7 setGlobalAnnounceCarPlaySetting:setting];

    [(BBServer *)self _updateGlobalSettings];
  }
}

- (void)getEffectiveGlobalAnnounceCarPlaySettingWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__BBServer_getEffectiveGlobalAnnounceCarPlaySettingWithHandler___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __64__BBServer_getEffectiveGlobalAnnounceCarPlaySettingWithHandler___block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) _effectiveGlobalAnnounceCarPlaySetting];
    v3 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = BBStringFromBBAnnounceCarPlaySetting(v2);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalAnnounceCarPlaySetting: %{public}@", &v6, 0xCu);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (void)setEffectiveGlobalAnnounceCarPlaySetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BBServer_setEffectiveGlobalAnnounceCarPlaySetting_withHandler___block_invoke;
  block[3] = &unk_278D2AEB8;
  v10 = handlerCopy;
  settingCopy = setting;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

uint64_t __65__BBServer_setEffectiveGlobalAnnounceCarPlaySetting_withHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = BBStringFromBBAnnounceCarPlaySetting(v3);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Set setEffectiveGlobalAnnounceCarPlaySetting: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) _setGlobalAnnounceCarPlaySetting:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setGlobalScheduledDeliverySetting:(int64_t)setting
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(BBServer *)self _globalScheduledDeliverySetting]!= setting)
  {
    v5 = +[BBBulletinBoardDefaults standardDefaults];
    [v5 setGlobalScheduledDeliverySetting:setting];

    [(BBServer *)self _updateGlobalSettings];
  }
}

- (void)getEffectiveGlobalScheduledDeliverySettingWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__BBServer_getEffectiveGlobalScheduledDeliverySettingWithHandler___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __66__BBServer_getEffectiveGlobalScheduledDeliverySettingWithHandler___block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) _effectiveGlobalScheduledDeliverySetting];
    v3 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = BBStringFromBBScheduledDeliverySetting(v2);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalScheduledDeliverySetting: %{public}@", &v6, 0xCu);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (void)setEffectiveGlobalScheduledDeliverySetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BBServer_setEffectiveGlobalScheduledDeliverySetting_withHandler___block_invoke;
  block[3] = &unk_278D2AEB8;
  v10 = handlerCopy;
  settingCopy = setting;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

uint64_t __67__BBServer_setEffectiveGlobalScheduledDeliverySetting_withHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = BBStringFromBBScheduledDeliverySetting(v3);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Set setEffectiveGlobalScheduledDeliverySetting: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) _setGlobalScheduledDeliverySetting:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_scheduledDeliveryTimesForEncodedDeliveryTimes:(id)times
{
  timesCopy = times;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [timesCopy count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i < v6; i += 2)
    {
      if (v6 <= i + 1)
      {
        break;
      }

      v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      v9 = [timesCopy objectAtIndex:i];
      [v8 setHour:{objc_msgSend(v9, "integerValue")}];

      v10 = [timesCopy objectAtIndex:i + 1];
      [v8 setMinute:{objc_msgSend(v10, "integerValue")}];

      [v4 addObject:v8];
    }
  }

  return v4;
}

- (id)_encodedScheduledDeliveryTimesForDeliveryTimes:(id)times
{
  v19 = *MEMORY[0x277D85DE8];
  timesCopy = times;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = timesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "hour", v14)}];
        [v4 addObject:v11];

        v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "minute")}];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_setGlobalScheduledDeliveryTimes:(id)times
{
  timesCopy = times;
  dispatch_assert_queue_V2(self->_queue);
  _globalScheduledDeliveryTimes = [(BBServer *)self _globalScheduledDeliveryTimes];

  v5 = timesCopy;
  if (_globalScheduledDeliveryTimes != timesCopy)
  {
    v6 = [(BBServer *)self _encodedScheduledDeliveryTimesForDeliveryTimes:timesCopy];
    v7 = +[BBBulletinBoardDefaults standardDefaults];
    [v7 setGlobalScheduledDeliveryTimes:v6];

    [(BBServer *)self _updateGlobalSettings];
    v5 = timesCopy;
  }
}

- (void)getEffectiveGlobalScheduledDeliveryTimesWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__BBServer_getEffectiveGlobalScheduledDeliveryTimesWithHandler___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __64__BBServer_getEffectiveGlobalScheduledDeliveryTimesWithHandler___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) _effectiveGlobalScheduledDeliveryTimes];
    v3 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalScheduledDeliveryTimes: %{public}@", &v4, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)setEffectiveGlobalScheduledDeliveryTimes:(id)times withHandler:(id)handler
{
  timesCopy = times;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BBServer_setEffectiveGlobalScheduledDeliveryTimes_withHandler___block_invoke;
  block[3] = &unk_278D2A9A0;
  v12 = timesCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = timesCopy;
  dispatch_async(queue, block);
}

uint64_t __65__BBServer_setEffectiveGlobalScheduledDeliveryTimes_withHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_241EFF000, v2, OS_LOG_TYPE_DEFAULT, "Set setEffectiveGlobalScheduledDeliveryTimes: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 40) _setGlobalScheduledDeliveryTimes:*(a1 + 32)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(BBServer *)self _globalScheduledDeliveryShowNextSummarySetting]!= setting)
  {
    v5 = +[BBBulletinBoardDefaults standardDefaults];
    [v5 setGlobalScheduledDeliveryShowNextSummarySetting:setting];

    [(BBServer *)self _updateGlobalSettings];
  }
}

- (void)getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__BBServer_getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithHandler___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __81__BBServer_getEffectiveGlobalScheduledDeliveryShowNextSummarySettingWithHandler___block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) _effectiveGlobalScheduledDeliveryShowNextSummarySetting];
    v3 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = BBStringFromBBSystemSetting(v2);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalScheduledDeliveryShowNextSummarySetting: %{public}@", &v6, 0xCu);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (void)setEffectiveGlobalScheduledDeliveryShowNextSummarySetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__BBServer_setEffectiveGlobalScheduledDeliveryShowNextSummarySetting_withHandler___block_invoke;
  block[3] = &unk_278D2AEB8;
  v10 = handlerCopy;
  settingCopy = setting;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

uint64_t __82__BBServer_setEffectiveGlobalScheduledDeliveryShowNextSummarySetting_withHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = BBStringFromBBSystemSetting(v3);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Set setEffectiveGlobalScheduledDeliveryShowNextSummarySetting: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) _setGlobalScheduledDeliveryShowNextSummarySetting:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setGlobalNotificationListDisplayStyleSetting:(int64_t)setting
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(BBServer *)self _globalNotificationListDisplayStyleSetting]!= setting)
  {
    v5 = +[BBBulletinBoardDefaults standardDefaults];
    [v5 setGlobalNotificationListDisplayStyleSetting:setting];

    [(BBServer *)self _updateGlobalSettings];

    [(BBServer *)self _publishBiomeSignalEventForGlobalNotificationListDisplayStyleSettingChangeToSetting:setting];
  }
}

- (void)getEffectiveGlobalNotificationListDisplayStyleSettingWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__BBServer_getEffectiveGlobalNotificationListDisplayStyleSettingWithHandler___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __77__BBServer_getEffectiveGlobalNotificationListDisplayStyleSettingWithHandler___block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) _effectiveGlobalNotificationListDisplayStyleSetting];
    v3 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = BBStringFromBBNotificationListDisplayStyleSetting(v2);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Got effectiveGlobalNotificationListDisplayStyleSetting: %{public}@", &v6, 0xCu);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (void)setEffectiveGlobalNotificationListDisplayStyleSetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__BBServer_setEffectiveGlobalNotificationListDisplayStyleSetting_withHandler___block_invoke;
  block[3] = &unk_278D2AEB8;
  v10 = handlerCopy;
  settingCopy = setting;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

uint64_t __78__BBServer_setEffectiveGlobalNotificationListDisplayStyleSetting_withHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = BBStringFromBBNotificationListDisplayStyleSetting(v3);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Set effectiveGlobalNotificationListDisplayStyleSetting: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) _setGlobalNotificationListDisplayStyleSetting:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getEffectiveGlobalSummarizationSettingWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__BBServer_getEffectiveGlobalSummarizationSettingWithHandler___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __62__BBServer_getEffectiveGlobalSummarizationSettingWithHandler___block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) _effectiveGlobalSummarizationSetting];
    v3 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = BBStringFromBBSystemSetting(v2);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Got getEffectiveGlobalSummarizationSetting: %{public}@", &v6, 0xCu);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (void)setEffectiveGlobalSummarizationSetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__BBServer_setEffectiveGlobalSummarizationSetting_withHandler___block_invoke;
  block[3] = &unk_278D2AEB8;
  v10 = handlerCopy;
  settingCopy = setting;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

uint64_t __63__BBServer_setEffectiveGlobalSummarizationSetting_withHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = BBStringFromBBSystemSetting(v3);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Set effectiveGlobalSummarizationSetting: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) _setGlobalSummarizationSetting:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getEffectiveGlobalHighlightsSettingWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__BBServer_getEffectiveGlobalHighlightsSettingWithHandler___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __59__BBServer_getEffectiveGlobalHighlightsSettingWithHandler___block_invoke(uint64_t result)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) _effectiveGlobalHighlightsSetting];
    v3 = BBLogConnection;
    if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = BBStringFromBBSystemSetting(v2);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Got getEffectiveGlobalHighlightsSetting: %{public}@", &v6, 0xCu);
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (void)setEffectiveGlobalHighlightsSetting:(int64_t)setting withHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__BBServer_setEffectiveGlobalHighlightsSetting_withHandler___block_invoke;
  block[3] = &unk_278D2AEB8;
  v10 = handlerCopy;
  settingCopy = setting;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

uint64_t __60__BBServer_setEffectiveGlobalHighlightsSetting_withHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = BBLogConnection;
  if (os_log_type_enabled(BBLogConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = BBStringFromBBSystemSetting(v3);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Set effectiveGlobalHighlightsSetting: %{public}@", &v7, 0xCu);
  }

  [*(a1 + 32) _setGlobalHighlightsSetting:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_publishBiomeSignalEventForGlobalNotificationListDisplayStyleSettingChangeToSetting:(int64_t)setting
{
  v11[1] = *MEMORY[0x277D85DE8];
  discoverabilitySignal = [MEMORY[0x277CF1B58] discoverabilitySignal];
  source = [discoverabilitySignal source];
  v6 = objc_alloc(MEMORY[0x277CF1938]);
  v10 = @"notificationListDisplayStyleSetting";
  v7 = BBStringFromBBNotificationListDisplayStyleSetting(setting);
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = [v6 initWithIdentifier:@"com.apple.SpringBoard.notificationListDisplayStyleSetting.changed" bundleID:@"com.apple.SpringBoard" context:@"NotificationListDisplayStyleSetting" userInfo:v8];

  [source sendEvent:v9];
}

- (id)universalSectionIDForSectionID:(id)d
{
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  v6 = [(BBDataProviderManager *)self->_dataProviderManager universalSectionIDForSectionID:dCopy];

  return v6;
}

- (id)sectionIDsForUniversalSectionID:(id)d
{
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  v6 = [(BBDataProviderManager *)self->_dataProviderManager localSectionIdentifiersFromDismissalSectionIdentifer:dCopy];

  return v6;
}

- (void)getUniversalSectionIDForSectionID:(id)d withHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__BBServer_getUniversalSectionIDForSectionID_withHandler___block_invoke;
  block[3] = &unk_278D2ACD8;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = dCopy;
  v9 = dCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

void __58__BBServer_getUniversalSectionIDForSectionID_withHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    if (*(a1 + 32))
    {
      v4 = [*(a1 + 40) universalSectionIDForSectionID:?];
      (*(v1 + 16))(v1, v4, 0);
    }

    else
    {
      v2 = *(v1 + 16);
      v3 = *(a1 + 48);

      v2(v3, 0);
    }
  }
}

- (id)bulletinsRequestsForBulletinIDs:(id)ds
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_bulletinRequestsByID objectForKey:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)bulletinsForPublisherMatchIDs:(id)ds sectionID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  if (dCopy)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v21 = dCopy;
    v20 = [(BBServer *)self allBulletinIDsForSectionID:dCopy];
    v25 = [(BBServer *)self bulletinsRequestsForBulletinIDs:?];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = dsCopy;
    obj = dsCopy;
    v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v26)
    {
      v24 = *v32;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v11 = v25;
          v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v28;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v28 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v27 + 1) + 8 * j);
                publisherMatchID = [v16 publisherMatchID];
                v18 = [v10 isEqualToString:publisherMatchID];

                if (v18)
                {
                  [v8 addObject:v16];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v13);
          }
        }

        v26 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v26);
    }

    dCopy = v21;
    dsCopy = v22;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)getBulletinsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__BBServer_getBulletinsWithHandler___block_invoke;
  v7[3] = &unk_278D2A900;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __36__BBServer_getBulletinsWithHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(*(a1 + 32) + 120) allValues];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)getPublisherMatchIDsOfBulletinsPublishedAfterDate:(id)date withHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__BBServer_getPublisherMatchIDsOfBulletinsPublishedAfterDate_withHandler___block_invoke;
  block[3] = &unk_278D2ACD8;
  v12 = dateCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = dateCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

void __74__BBServer_getPublisherMatchIDsOfBulletinsPublishedAfterDate_withHandler___block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1[6])
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
    v3 = [*(a1[4] + 120) allValues];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = [v8 publicationDate];
          v10 = [v9 earlierDate:a1[5]];
          v11 = a1[5];

          if (v10 == v11)
          {
            v12 = [v8 sectionID];
            v13 = [v2 objectForKeyedSubscript:v12];

            if (!v13)
            {
              v13 = [MEMORY[0x277CBEB18] array];
              v14 = [v8 sectionID];
              [v2 setObject:v13 forKeyedSubscript:v14];
            }

            v15 = [v8 publisherMatchID];
            [v13 addObject:v15];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }

    (*(a1[6] + 16))();
  }
}

- (void)getBulletinsForPublisherMatchIDs:(id)ds sectionID:(id)d withHandler:(id)handler
{
  dsCopy = ds;
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__BBServer_getBulletinsForPublisherMatchIDs_sectionID_withHandler___block_invoke;
  v15[3] = &unk_278D2AF50;
  v15[4] = self;
  v16 = dsCopy;
  v17 = dCopy;
  v18 = handlerCopy;
  v12 = dCopy;
  v13 = dsCopy;
  v14 = handlerCopy;
  dispatch_async(queue, v15);
}

void __67__BBServer_getBulletinsForPublisherMatchIDs_sectionID_withHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = [*(a1 + 32) bulletinsForPublisherMatchIDs:*(a1 + 40) sectionID:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }
}

- (unint64_t)effectivePushSettingsForSectionInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy alertType] != 0;
  pushSettings = [infoCopy pushSettings];

  return pushSettings & 0xFFFFFFFFFFFFFFDFLL | (32 * v4);
}

- (void)setSectionInfo:(id)info forSectionID:(id)d withHandler:(id)handler
{
  infoCopy = info;
  dCopy = d;
  handlerCopy = handler;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__BBServer_setSectionInfo_forSectionID_withHandler___block_invoke;
  v15[3] = &unk_278D2A950;
  v16 = infoCopy;
  v17 = dCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = dCopy;
  v14 = infoCopy;
  dispatch_async(queue, v15);
}

uint64_t __52__BBServer_setSectionInfo_forSectionID_withHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 sectionID];
    v4 = [v3 isEqualToString:*(a1 + 40)];

    if (v4)
    {
      v5 = BBLogSettings;
      if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v12 = 138543362;
        v13 = v6;
        _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "SettingsGateway changed section settings: %{public}@", &v12, 0xCu);
      }

      v7 = *(a1 + 48);
      v8 = [v7 _sectionInfoForSectionID:*(a1 + 40)];
      v9 = [v7 effectivePushSettingsForSectionInfo:v8];

      v10 = [*(a1 + 48) effectivePushSettingsForSectionInfo:*(a1 + 32)] & 0x38;
      if ((v9 & 0x38) == 0 && v10 || (v9 & 0x38) != 0 && !v10)
      {
        ADClientAddValueForScalarKey();
      }

      [*(a1 + 48) _setSectionInfoNoteSettingsChanged:*(a1 + 32) forSectionID:*(a1 + 40)];
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)refreshAnnounceSettings
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__BBServer_refreshAnnounceSettings__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)refreshGlobalSettings
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__BBServer_refreshGlobalSettings__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)refreshSectionInfo
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__BBServer_refreshSectionInfo__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)refreshSectionInfoForID:(id)d
{
  dCopy = d;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__BBServer_refreshSectionInfoForID___block_invoke;
  v7[3] = &unk_278D2A628;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __36__BBServer_refreshSectionInfoForID___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 72) objectAtIndex:9];
  v3 = [*(*(a1 + 32) + 216) sectionInfoForSectionID:*(a1 + 40) effective:1];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v29 + 1) + 8 * v8++) updateSectionInfo:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }

  v19 = v4;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [v3 dataProviderIDs];
  v9 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(a1 + 32) _sectionInfoForSectionID:*(*(&v25 + 1) + 8 * v12) effective:{1, v19}];
        if (v13)
        {
          v14 = [*(*(a1 + 32) + 72) objectAtIndex:9];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v22;
            do
            {
              v18 = 0;
              do
              {
                if (*v22 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                [*(*(&v21 + 1) + 8 * v18++) updateSectionInfo:v13];
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
            }

            while (v16);
          }
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v10);
  }
}

- (void)sendMessageToDataProviderSectionID:(id)d name:(id)name userInfo:(id)info
{
  dCopy = d;
  nameCopy = name;
  infoCopy = info;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__BBServer_sendMessageToDataProviderSectionID_name_userInfo___block_invoke;
  v15[3] = &unk_278D2AE40;
  v15[4] = self;
  v16 = dCopy;
  v17 = nameCopy;
  v18 = infoCopy;
  v12 = infoCopy;
  v13 = nameCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __61__BBServer_sendMessageToDataProviderSectionID_name_userInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataProviderForSectionID:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 deliverMessageWithName:*(a1 + 48) userInfo:*(a1 + 56)];
  }

  else if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
  {
    __61__BBServer_sendMessageToDataProviderSectionID_name_userInfo___block_invoke_cold_1();
  }
}

- (void)weeAppWithBundleID:(id)d setHiddenFromUser:(BOOL)user
{
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BBServer_weeAppWithBundleID_setHiddenFromUser___block_invoke;
  block[3] = &unk_278D2AA18;
  block[4] = self;
  v10 = dCopy;
  userCopy = user;
  v8 = dCopy;
  dispatch_async(queue, block);
}

void __49__BBServer_weeAppWithBundleID_setHiddenFromUser___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _sectionInfoForSectionID:*(a1 + 40)];
  v3 = [v2 pathToWeeAppPluginBundle];

  if (v3)
  {
    if (*(a1 + 48) != [v2 hideWeeApp])
    {
      v4 = BBLogSettings;
      if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v6 = @"NOT HIDDEN";
        if (*(a1 + 48))
        {
          v6 = @"HIDDEN";
        }

        v7 = 138543618;
        v8 = v5;
        v9 = 2112;
        v10 = v6;
        _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Changing hidden state for wee app <%{public}@> to: %@", &v7, 0x16u);
      }

      [v2 setHideWeeApp:*(a1 + 48)];
      [v2 setSuppressFromSettings:*(a1 + 48)];
      [*(a1 + 32) _setSectionInfo:v2 forSectionID:*(a1 + 40)];
    }
  }

  else if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_ERROR))
  {
    __49__BBServer_weeAppWithBundleID_setHiddenFromUser___block_invoke_cold_1();
  }
}

- (void)weeAppWithBundleID:(id)d getHiddenFromUser:(id)user
{
  dCopy = d;
  userCopy = user;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BBServer_weeAppWithBundleID_getHiddenFromUser___block_invoke;
  block[3] = &unk_278D2A9A0;
  block[4] = self;
  v12 = dCopy;
  v13 = userCopy;
  v9 = userCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __49__BBServer_weeAppWithBundleID_getHiddenFromUser___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _sectionInfoForSectionID:*(a1 + 40)];
  v3 = [v2 pathToWeeAppPluginBundle];

  if (v3)
  {
    v4 = [v2 hideWeeApp];
  }

  else
  {
    if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_ERROR))
    {
      __49__BBServer_weeAppWithBundleID_setHiddenFromUser___block_invoke_cold_1();
    }

    v4 = 0;
  }

  v5 = *(a1 + 48);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  (*(v5 + 16))(v5, v6, 0);
}

- (void)_migrateLoadedData
{
  v26 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _sectionIDsToMigrate = [(BBServer *)self _sectionIDsToMigrate];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [_sectionIDsToMigrate allKeys];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138543362;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [_sectionIDsToMigrate objectForKey:{v9, v15}];
        v11 = [(BBServer *)self _clearedInfoForSectionID:v9];
        if (v11)
        {
          v12 = BBLogMigration;
          if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v22 = v9;
            v23 = 2114;
            v24 = v10;
            _os_log_impl(&dword_241EFF000, v12, OS_LOG_TYPE_DEFAULT, "Migrating saved cleared info for %{public}@ to %{public}@", buf, 0x16u);
          }

          v13 = [(BBServer *)self _clearedInfoForSectionID:v10];

          if (v13)
          {
            v14 = BBLogMigration;
            if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v22 = v10;
              _os_log_impl(&dword_241EFF000, v14, OS_LOG_TYPE_DEFAULT, "\t*** Not migrating because cleared info for %{public}@ already exists!", buf, 0xCu);
            }
          }

          else
          {
            [(BBSectionInfoStoreInterface *)self->_sectionInfoStore setClearedInfo:v11 forSectionID:v10];
          }

          [(BBSectionInfoStoreInterface *)self->_sectionInfoStore setClearedInfo:0 forSectionID:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }
}

- (void)loadDataProvidersAndSettings
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__BBServer_loadDataProvidersAndSettings__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_migrateGlobalAnnounceSettingIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = +[BBBulletinBoardDefaults standardDefaults];
  globalAnnounceSetting = [v3 globalAnnounceSetting];

  v5 = +[BBBulletinBoardDefaults standardDefaults];
  globalSpokenNotificationSetting_deprecated = [v5 globalSpokenNotificationSetting_deprecated];

  if (globalAnnounceSetting)
  {
    v7 = 1;
  }

  else
  {
    v7 = globalSpokenNotificationSetting_deprecated - 1 > 0xFFFFFFFFFFFFFFFDLL;
  }

  if (!v7)
  {
    v8 = BBLogMigration;
    if (os_log_type_enabled(BBLogMigration, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = globalSpokenNotificationSetting_deprecated;
      _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "Migrating announce setting to previously persisted setting with value = %ld", &v9, 0xCu);
    }

    [(BBServer *)self _setGlobalAnnounceSetting:BBAnnounceSettingForSpokenNotificationSetting(globalSpokenNotificationSetting_deprecated)];
  }
}

- (void)_loadSystemCapabilities
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CEF3D0]) initWithPlatform:1];
  announcementCapabilityManagerForHeadphones = self->_announcementCapabilityManagerForHeadphones;
  self->_announcementCapabilityManagerForHeadphones = v3;

  _isAnnounceSupportedForHeadphones = [(BBServer *)self _isAnnounceSupportedForHeadphones];
  v6 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v31 = _isAnnounceSupportedForHeadphones;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Cached value of eligible setup for announce for headphones: %{BOOL}d", buf, 8u);
  }

  v7 = self->_announcementCapabilityManagerForHeadphones;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __35__BBServer__loadSystemCapabilities__block_invoke;
  v29[3] = &unk_278D2AF78;
  v29[4] = self;
  [(AFSiriAnnouncementRequestCapabilityManager *)v7 fetchEligibleAnnouncementRequestTypesWithCompletion:v29];
  v8 = [objc_alloc(MEMORY[0x277CEF3D0]) initWithPlatform:2];
  announcementCapabilityManagerForCarPlay = self->_announcementCapabilityManagerForCarPlay;
  self->_announcementCapabilityManagerForCarPlay = v8;

  _isAnnounceSupportedForCarPlay = [(BBServer *)self _isAnnounceSupportedForCarPlay];
  v11 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v31 = _isAnnounceSupportedForCarPlay;
    _os_log_impl(&dword_241EFF000, v11, OS_LOG_TYPE_DEFAULT, "Cached value of eligible setup for announce for CarPlay: %{BOOL}d", buf, 8u);
  }

  v12 = self->_announcementCapabilityManagerForCarPlay;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __35__BBServer__loadSystemCapabilities__block_invoke_302;
  v28[3] = &unk_278D2AF78;
  v28[4] = self;
  [(AFSiriAnnouncementRequestCapabilityManager *)v12 fetchEligibleAnnouncementRequestTypesWithCompletion:v28];
  _hasPairedVehiclesForCarPlay = [(BBServer *)self _hasPairedVehiclesForCarPlay];
  v14 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v31 = _hasPairedVehiclesForCarPlay;
    _os_log_impl(&dword_241EFF000, v14, OS_LOG_TYPE_DEFAULT, "Cached value of vehicles for CarPlay: %{BOOL}d", buf, 8u);
  }

  [(BBServer *)self _fetchAllVehiclesForCarPlay];
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:self selector:sel__pairedVehiclesForCarPlayDidChange_ name:@"CRPairedVehiclesDidChangeNotification" object:0];

  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  self->_siriEnabled = [mEMORY[0x277CEF368] assistantIsEnabled];

  mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
  self->_siriAllowedWhenLocked = [mEMORY[0x277CEF368]2 disableAssistantWhilePasscodeLocked] ^ 1;

  mEMORY[0x277CEF368]3 = [MEMORY[0x277CEF368] sharedPreferences];
  self->_announceOnHearingAidsEnabled = [mEMORY[0x277CEF368]3 announceNotificationsOnHearingAidsEnabled];

  mEMORY[0x277CEF368]4 = [MEMORY[0x277CEF368] sharedPreferences];
  self->_announceOnHearingAidsSupported = [mEMORY[0x277CEF368]4 announceNotificationsOnHearingAidsSupported];

  mEMORY[0x277CEF368]5 = [MEMORY[0x277CEF368] sharedPreferences];
  self->_announceOnBuiltInSpeakerEnabled = [mEMORY[0x277CEF368]5 announceNotificationsOnBuiltInSpeakerEnabled];

  v21 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    siriEnabled = self->_siriEnabled;
    siriAllowedWhenLocked = self->_siriAllowedWhenLocked;
    announceOnHearingAidsEnabled = self->_announceOnHearingAidsEnabled;
    announceOnHearingAidsSupported = self->_announceOnHearingAidsSupported;
    announceOnBuiltInSpeakerEnabled = self->_announceOnBuiltInSpeakerEnabled;
    *buf = 67110144;
    v31 = siriEnabled;
    v32 = 1024;
    v33 = siriAllowedWhenLocked;
    v34 = 1024;
    v35 = announceOnHearingAidsEnabled;
    v36 = 1024;
    v37 = announceOnHearingAidsSupported;
    v38 = 1024;
    v39 = announceOnBuiltInSpeakerEnabled;
    _os_log_impl(&dword_241EFF000, v21, OS_LOG_TYPE_DEFAULT, "Siri preferences did load [ Siri enabled: %{BOOL}d, Siri allowed when locked: %{BOOL}d Announce On Hearing Aids Enabled: %{BOOL}d, Announce on Hearing Aids Supported: %{BOOL}d, Announce on Built-In Speaker: %{BOOL}d]", buf, 0x20u);
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__siriPreferencesDidChange_ name:*MEMORY[0x277CEF060] object:0];

  [(AFSiriAnnouncementRequestCapabilityManager *)self->_announcementCapabilityManagerForHeadphones addObserver:self];
  [(AFSiriAnnouncementRequestCapabilityManager *)self->_announcementCapabilityManagerForCarPlay addObserver:self];
}

void __35__BBServer__loadSystemCapabilities__block_invoke(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2 & 1;
  v4 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v3;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Fetched value of eligible setup for announce for headphones: %{BOOL}d", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__BBServer__loadSystemCapabilities__block_invoke_300;
  v7[3] = &unk_278D2AA40;
  v7[4] = v5;
  v8 = v3;
  dispatch_async(v6, v7);
}

void __35__BBServer__loadSystemCapabilities__block_invoke_302(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2 & 1;
  v4 = BBLogSettings;
  if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v3;
    _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Fetched value of eligible setup for announce for CarPlay: %{BOOL}d", buf, 8u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__BBServer__loadSystemCapabilities__block_invoke_303;
  v7[3] = &unk_278D2AA40;
  v7[4] = v5;
  v8 = v3;
  dispatch_async(v6, v7);
}

- (void)_loadDataProvidersAndSettings
{
  dispatch_assert_queue_V2(self->_queue);
  [(BBServer *)self _loadSystemCapabilities];
  [(BBServer *)self _ensureDataDirectoryExists];
  [BBPersistentStoreMigrator migrateSectionInfoForStore:self->_persistentStore];
  _migrateGlobalAnnounceSettingIfNeeded = [(BBServer *)self _migrateGlobalAnnounceSettingIfNeeded];
  v5 = BBShouldPerformMigration(_migrateGlobalAnnounceSettingIfNeeded, v4);
  [(BBServer *)self _loadSavedSectionInfo];
  [(BBServer *)self _loadClearedSections];
  if (v5)
  {
    [(BBServer *)self _migrateLoadedData];
    [(BBDataProviderManager *)self->_dataProviderManager loadAllDataProvidersAndPerformMigration:1];
    [(BBServer *)self _writeClearedSections];
    BBNoteMigrationComplete();
  }

  else
  {
    [(BBDataProviderManager *)self->_dataProviderManager loadAllDataProvidersAndPerformMigration:0];
  }

  self->_isRunning = 1;
  v6 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "Up and running!", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__BBServer__loadDataProvidersAndSettings__block_invoke;
  v7[3] = &unk_278D2A600;
  v7[4] = self;
  [(BBServer *)self _resumeAllSuspendedConnectionsWithCompletionHandler:v7];
  [(BBServer *)self _observeManagedProfileChanges];
  [(BBServer *)self _updateAnnounceControlCenterModuleAvailability];
}

- (void)_publishBulletinsForAllDataProviders
{
  dispatch_assert_queue_V2(self->_queue);
  dataProviderManager = self->_dataProviderManager;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__BBServer__publishBulletinsForAllDataProviders__block_invoke;
  v4[3] = &unk_278D2AFA0;
  v4[4] = self;
  [(BBDataProviderManager *)dataProviderManager performBlockOnDataProviders:v4];
}

void __48__BBServer__publishBulletinsForAllDataProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _updateSectionParametersForDataProvider:v4];
  [*(a1 + 32) _updateAllBulletinsForDataProviderIfSectionIsEnabled:v4];
}

- (BOOL)_verifyBulletinRequest:(id)request forDataProvider:(id)provider
{
  requestCopy = request;
  providerCopy = provider;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([providerCopy sectionIdentifier], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(requestCopy, "setSectionID:", v7), v7, objc_msgSend(providerCopy, "sectionBundlePath"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(requestCopy, "setSectionBundlePath:", v8), v8, objc_msgSend(providerCopy, "universalSectionIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(requestCopy, "setUniversalSectionID:", v9), v9, objc_msgSend(providerCopy, "parentSectionIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(requestCopy, "setParentSectionID:", v10), v10, objc_msgSend(requestCopy, "setBulletinID:", 0), objc_msgSend(requestCopy, "sectionID"), (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, objc_msgSend(requestCopy, "publisherMatchID"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v14 = 1;
  }

  else
  {
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [BBServer _verifyBulletinRequest:forDataProvider:];
    }

    v14 = 0;
  }

  return v14;
}

- (id)_enabledSectionIDsForDataProvider:(id)provider
{
  v22 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v5 = [MEMORY[0x277CBEB58] set];
  if (providerCopy)
  {
    v6 = objc_autoreleasePoolPush();
    sectionIdentifier = [providerCopy sectionIdentifier];
    v8 = [(BBServer *)self _sectionInfoForSectionID:sectionIdentifier effective:1];
    if ([v8 notificationCenterSetting] == 2 || objc_msgSend(v8, "lockScreenSetting") == 2)
    {
      [v5 addObject:sectionIdentifier];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    subsections = [v8 subsections];
    v10 = [subsections countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(subsections);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if ([v14 notificationCenterSetting] == 2 || objc_msgSend(v8, "lockScreenSetting") == 2)
          {
            subsectionID = [v14 subsectionID];
            [v5 addObject:subsectionID];
          }
        }

        v11 = [subsections countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)_updateBulletinsInFeed:(unint64_t)feed ifSectionIsEnabled:(id)enabled
{
  v6 = [(BBServer *)self dataProviderForSectionID:enabled];
  [(BBServer *)self _updateBulletinsInFeed:feed forDataProviderIfSectionIsEnabled:v6];
}

- (void)_updateBulletinsInFeed:(unint64_t)feed forDataProviderIfSectionIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v6 = [(BBServer *)self _enabledSectionIDsForDataProvider:?];
  if ([v6 count])
  {
    [(BBServer *)self _updateBulletinsInFeed:feed forDataProvider:enabledCopy enabledSectionIDs:v6];
  }
}

- (id)_sinceDate
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_expirationReferenceComponents)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    expirationReferenceComponents = self->_expirationReferenceComponents;
    date = [MEMORY[0x277CBEAA8] date];
    v6 = [currentCalendar dateByAddingComponents:expirationReferenceComponents toDate:date options:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateBulletinsInFeed:(unint64_t)feed forDataProvider:(id)provider enabledSectionIDs:(id)ds
{
  v30 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  dsCopy = ds;
  dispatch_assert_queue_V2(self->_queue);
  v25 = 0;
  if (!BBPublisherDestinationForObserverFeed(feed, &v25))
  {
    [BBServer _updateBulletinsInFeed:a2 forDataProvider:self enabledSectionIDs:?];
  }

  sectionIdentifier = [providerCopy sectionIdentifier];
  v12 = BBLogGeneral;
  if (sectionIdentifier)
  {
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      sectionIdentifier2 = [providerCopy sectionIdentifier];
      *buf = 138543618;
      v27 = sectionIdentifier2;
      v28 = 2048;
      feedCopy = feed;
      _os_log_impl(&dword_241EFF000, v13, OS_LOG_TYPE_DEFAULT, "BBServer: Update bulletins in section %{public}@ for feed %ld", buf, 0x16u);
    }

    v15 = v25;
    _sinceDate = [(BBServer *)self _sinceDate];
    v17 = [BBBulletinRequestParameters requestParametersForDestination:v15 withSinceDate:_sinceDate maximumCount:500 enabledSectionIDs:dsCopy];

    if (![dsCopy count])
    {
      v18 = BBLogGeneral;
      if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [BBServer _updateBulletinsInFeed:v18 forDataProvider:self enabledSectionIDs:sectionIdentifier];
      }
    }

    v19 = [(BBServer *)self _clearedInfoForSectionID:sectionIdentifier];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __69__BBServer__updateBulletinsInFeed_forDataProvider_enabledSectionIDs___block_invoke;
    v20[3] = &unk_278D2AFF0;
    feedCopy2 = feed;
    v21 = providerCopy;
    selfCopy = self;
    v23 = sectionIdentifier;
    [v21 bulletinsWithRequestParameters:v17 lastCleared:v19 completion:v20];
  }

  else if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
  {
    [BBServer _updateBulletinsInFeed:forDataProvider:enabledSectionIDs:];
  }
}

void __69__BBServer__updateBulletinsInFeed_forDataProvider_enabledSectionIDs___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 sectionIdentifier];
    v8 = [v3 count];
    v9 = *(a1 + 56);
    *buf = 138543874;
    v32 = v7;
    v33 = 2048;
    v34 = v8;
    v35 = 2048;
    v36 = v9;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "BBServer: Section %{public}@ responded with %ld bulletin requests to feed %ld", buf, 0x20u);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__BBServer__updateBulletinsInFeed_forDataProvider_enabledSectionIDs___block_invoke_325;
  v28[3] = &unk_278D2AFC8;
  v22 = *(a1 + 32);
  v10 = v22.i64[0];
  v29 = vextq_s8(v22, v22, 8uLL);
  v11 = [v3 objectsPassingTest:v28];

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v25;
    *&v16 = 138412546;
    v23 = v16;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        v21 = [v20 publisherMatchID];
        if ([v13 containsObject:v21])
        {
          BBIsInternalDevice();
        }

        [v12 addObject:v20];
        [v13 addObject:v21];
      }

      v17 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v17);
  }

  [*(a1 + 40) updateSection:*(a1 + 48) inFeed:*(a1 + 56) withBulletinRequests:v12];
  [*(a1 + 40) _sendBulletinsLoadedForSectionID:*(a1 + 48)];
}

- (void)_updateAllBulletinsForDataProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(BBServer *)self _enabledSectionIDsForDataProvider:providerCopy];
  [(BBServer *)self _updateBulletinsInFeed:1 forDataProvider:providerCopy enabledSectionIDs:v5];
}

- (void)_reloadSectionParametersForSectionID:(id)d
{
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  dataProviderManager = self->_dataProviderManager;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BBServer__reloadSectionParametersForSectionID___block_invoke;
  v7[3] = &unk_278D2AFA0;
  v7[4] = self;
  [(BBDataProviderManager *)dataProviderManager reloadIdentityForSectionID:dCopy withCompletion:v7];
}

- (void)_updateSectionParametersForDataProvider:(id)provider
{
  v17 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  sectionIdentifier = [providerCopy sectionIdentifier];
  sectionParameters = [providerCopy sectionParameters];
  if (sectionParameters)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_observers;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) updateSectionParameters:sectionParameters forSectionID:{sectionIdentifier, v12}];
        }

        while (v9 != v11);
        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)_reloadReloadSectionInfoForSectionID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  dataProviderManager = self->_dataProviderManager;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BBServer__reloadReloadSectionInfoForSectionID___block_invoke;
  v7[3] = &unk_278D2AE68;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  [(BBDataProviderManager *)dataProviderManager reloadIdentityForSectionID:v6 withCompletion:v7];
}

void __49__BBServer__reloadReloadSectionInfoForSectionID___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _sectionInfoForSectionID:v4 effective:0];
  v8 = [v6 copy];

  v7 = [*(*(a1 + 32) + 56) rebuildSectionInfo:v8 forSectionID:*(a1 + 40)];
  [*(a1 + 32) _setSectionInfo:v7 forSectionID:*(a1 + 40)];
  [*(a1 + 32) _updateSectionParametersForDataProvider:v5];
  [*(a1 + 32) _updateAllBulletinsForDataProviderIfSectionIsEnabled:v5];
}

- (void)_publishBulletinRequest:(id)request forSectionID:(id)d forDestinations:(unint64_t)destinations
{
  requestCopy = request;
  dCopy = d;
  v10 = [(BBServer *)self dataProviderForSectionID:dCopy];
  if (v10)
  {
    if ([(BBServer *)self _verifyBulletinRequest:requestCopy forDataProvider:v10])
    {
      [(BBServer *)self publishBulletinRequest:requestCopy destinations:destinations];
    }
  }

  else if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
  {
    [BBServer _publishBulletinRequest:forSectionID:forDestinations:];
  }
}

- (id)_clearedInfoForSectionID:(id)d
{
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  v6 = [(BBSectionInfoStoreInterface *)self->_sectionInfoStore clearedInfoForSectionID:dCopy];

  return v6;
}

- (void)_setClearedInfo:(id)info forSectionID:(id)d
{
  queue = self->_queue;
  dCopy = d;
  infoCopy = info;
  dispatch_assert_queue_V2(queue);
  [(BBSectionInfoStoreInterface *)self->_sectionInfoStore setClearedInfo:infoCopy forSectionID:dCopy];

  [(BBServer *)self _writeClearedSections];
}

- (void)_updateClearedInfoForSectionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = [(BBServer *)self _clearedInfoForSectionID:dCopy];
  v9 = [(BBServer *)self dataProviderForSectionID:dCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__BBServer__updateClearedInfoForSectionID_handler___block_invoke;
  v11[3] = &unk_278D2AC88;
  v11[4] = self;
  v12 = dCopy;
  v10 = dCopy;
  [v9 updateClearedInfoWithClearedInfo:v8 handler:handlerCopy completion:v11];
}

- (void)_saveUpdatedSectionInfo:(id)info forSectionID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  if (infoCopy)
  {
    [(BBServer *)self _setSectionInfo:infoCopy forSectionID:dCopy];
  }

  else
  {
    v8 = BBLogSettings;
    if (os_log_type_enabled(BBLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = dCopy;
      _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "Not updating section info for <%{public}@>", &v9, 0xCu);
    }
  }
}

- (void)_updateSectionInfoForSectionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = [(BBServer *)self _sectionInfoForSectionID:dCopy effective:0];
  v9 = [v8 copy];

  v10 = [(BBServer *)self dataProviderForSectionID:dCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__BBServer__updateSectionInfoForSectionID_handler___block_invoke;
  v12[3] = &unk_278D2B018;
  v12[4] = self;
  v13 = dCopy;
  v11 = dCopy;
  [v10 updateSectionInfoWithSectionInfo:v9 handler:handlerCopy completion:v12];
}

- (id)dataProviderForSectionID:(id)d
{
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  v6 = [(BBDataProviderManager *)self->_dataProviderManager dataProviderForSectionID:dCopy];

  return v6;
}

- (id)dpManager:(id)manager sectionInfoForSectionID:(id)d
{
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  v7 = [(BBServer *)self _sectionInfoForSectionID:dCopy effective:0];

  return v7;
}

- (void)dpManager:(id)manager addDataProvider:(id)provider withSectionInfo:(id)info
{
  providerCopy = provider;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  parentSectionIdentifier = [providerCopy parentSectionIdentifier];
  if (parentSectionIdentifier)
  {
    v9 = [(BBServer *)self _sectionInfoForSectionID:parentSectionIdentifier];
    [v9 _associateDataProviderSectionInfo:infoCopy];
  }

  sectionIdentifier = [providerCopy sectionIdentifier];
  if (([infoCopy suppressFromSettings] & 1) == 0)
  {
    [infoCopy queryAndUseManagedSettingsForSectionID:sectionIdentifier];
  }

  if ([(BBMuteExpirationManager *)self->_muteManager cleanAndWatchExpirationsForSectionInfo:infoCopy])
  {
    [(BBServer *)self _writeSectionInfo];
  }

  [(BBServer *)self _setPrimitiveSectionInfo:infoCopy forSectionID:sectionIdentifier];
  [(BBServer *)self _addActiveSectionID:sectionIdentifier];
  if ([(BBServer *)self isRunning])
  {
    [(BBServer *)self _updateSectionParametersForDataProvider:providerCopy];
    [(BBServer *)self _sendUpdateSectionInfo:infoCopy];
    [(BBServer *)self _updateAllBulletinsForDataProviderIfSectionIsEnabled:providerCopy];
  }
}

- (void)dpManager:(id)manager addParentSectionFactory:(id)factory
{
  factoryCopy = factory;
  dispatch_assert_queue_V2(self->_queue);
  sectionIdentifier = [factoryCopy sectionIdentifier];
  if (sectionIdentifier)
  {
    sectionInfo = [factoryCopy sectionInfo];
    [sectionInfo queryAndUseManagedSettingsForSectionID:sectionIdentifier];
    if ([(BBMuteExpirationManager *)self->_muteManager cleanAndWatchExpirationsForSectionInfo:sectionInfo])
    {
      [(BBServer *)self _writeSectionInfo];
    }

    [(BBServer *)self _setPrimitiveSectionInfo:sectionInfo forSectionID:sectionIdentifier];
    [(BBServer *)self _addActiveSectionID:sectionIdentifier];
    if ([(BBServer *)self isRunning])
    {
      [(BBServer *)self _sendUpdateSectionInfo:sectionInfo];
    }
  }
}

- (void)dpManager:(id)manager removeDataProviderSectionID:(id)d
{
  queue = self->_queue;
  dCopy = d;
  dispatch_assert_queue_V2(queue);
  [(BBServer *)self _removeSection:dCopy];
}

- (void)_addActiveSectionID:(id)d
{
  if (d)
  {
    sectionInfoStore = self->_sectionInfoStore;
    dCopy = d;
    [(BBSectionInfoStoreInterface *)sectionInfoStore addActiveSectionID:dCopy];
    [(NSMutableSet *)self->_activeSectionIDs addObject:dCopy];
  }
}

- (id)_bulletinsForSectionID:(id)d inFeeds:(unint64_t)feeds
{
  v5 = MEMORY[0x277CBEB58];
  dCopy = d;
  v7 = [v5 set];
  v8 = [(BBServer *)self bulletinIDsForSectionID:dCopy inFeed:1];

  v9 = [(BBServer *)self _bulletinsForIDs:v8];
  [v7 unionSet:v9];

  return v7;
}

- (void)_ensureDataDirectoryExists
{
  _dataDirectoryPath = [objc_opt_class() _dataDirectoryPath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([defaultManager fileExistsAtPath:_dataDirectoryPath] & 1) == 0)
  {
    [defaultManager createDirectoryAtPath:_dataDirectoryPath withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (void)_loadClearedSections
{
  dispatch_assert_queue_V2(self->_queue);
  savedClearedSections = [(BBServer *)self savedClearedSections];
  v5 = [savedClearedSections mutableCopy];

  v4 = v5;
  if (!v5)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v6 = v4;
  [(BBSectionInfoStoreInterface *)self->_sectionInfoStore setClearedSectionsByID:v4];
}

- (void)_writeClearedSections
{
  dispatch_assert_queue_V2(self->_queue);
  clearedSectionsByID = [(BBSectionInfoStoreInterface *)self->_sectionInfoStore clearedSectionsByID];
  [(BBServer *)self writeClearedSections:clearedSectionsByID];
}

- (id)savedSectionInfo
{
  readSectionInfo = [(BBPersistentStoreInterface *)self->_persistentStore readSectionInfo];
  v3 = [readSectionInfo mutableCopy];

  return v3;
}

- (void)_loadSavedSectionInfo
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  savedSectionInfo = [(BBServer *)self savedSectionInfo];
  [(BBSectionInfoStoreInterface *)self->_sectionInfoStore setSectionInfoByID:savedSectionInfo];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _allSectionInfoIDs = [(BBServer *)self _allSectionInfoIDs];
  v5 = [_allSectionInfoIDs countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(_allSectionInfoIDs);
        }

        v9 = [(BBServer *)self _sectionInfoForSectionID:*(*(&v10 + 1) + 8 * v8)];
        [v9 queryAndUseManagedSettings];

        ++v8;
      }

      while (v6 != v8);
      v6 = [_allSectionInfoIDs countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_writeSectionInfo
{
  dispatch_assert_queue_V2(self->_queue);
  sectionInfoByID = [(BBSectionInfoStoreInterface *)self->_sectionInfoStore sectionInfoByID];
  [(BBServer *)self writeSectionInfo:sectionInfoByID];
}

- (void)_observeManagedProfileChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = *MEMORY[0x277D261A0];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, BBManagedUserNotificationsSetttingsDidChangeHandler, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_unobserveManagedProfileChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = *MEMORY[0x277D261A0];

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);
}

- (void)_queue_managedUserNotificationsSetttingsDidChange
{
  selfCopy = self;
  v52 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Managed profile was changed", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = [(BBSectionInfoStoreInterface *)selfCopy->_sectionInfoStore allSortedSectionInfo:0];
  v6 = [v5 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        if ([v10 usesManagedSettings])
        {
          sectionID = [v10 sectionID];
          [v4 addObject:sectionID];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v7);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  restrictionEnforcedNotificationSettings = [mEMORY[0x277D262A0] restrictionEnforcedNotificationSettings];

  v15 = [restrictionEnforcedNotificationSettings countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v41;
    v18 = *MEMORY[0x277D26470];
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(restrictionEnforcedNotificationSettings);
        }

        v20 = [*(*(&v40 + 1) + 8 * j) objectForKey:v18];
        if (v20)
        {
          [v12 addObject:v20];
        }
      }

      v16 = [restrictionEnforcedNotificationSettings countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v16);
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v34 = v4;
  [v21 unionSet:v4];
  [v21 unionSet:v12];
  v33 = v21;
  v22 = [(BBSectionInfoStoreInterface *)selfCopy->_sectionInfoStore sectionInfosByIDForSectionIDs:v21 effective:0];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [v22 allKeys];
  v23 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    do
    {
      v26 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v36 + 1) + 8 * v26);
        v28 = [v22 objectForKey:v27];
        if (v28)
        {
          if (([v12 containsObject:v27] & 1) != 0 || (objc_msgSend(v28, "sectionInfoSettings"), v29 = selfCopy, v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "authorizationStatus"), v30, selfCopy = v29, v31))
          {
            [(BBServer *)selfCopy _setSectionInfoNoteSettingsChanged:v28 forSectionID:v27];
          }

          else
          {
            [(BBServer *)v29 _removeSection:v27];
          }
        }

        ++v26;
      }

      while (v24 != v26);
      v32 = [obj countByEnumeratingWithState:&v36 objects:v49 count:16];
      v24 = v32;
    }

    while (v32);
  }

  [(BBServer *)selfCopy _writeSectionInfo];
}

- (void)noteChangeOfState:(unint64_t)state newValue:(BOOL)value
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BBServer_noteChangeOfState_newValue___block_invoke;
  block[3] = &unk_278D2AEE0;
  valueCopy = value;
  block[4] = self;
  block[5] = state;
  dispatch_async(queue, block);
}

uint64_t __39__BBServer_noteChangeOfState_newValue___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (*(result + 48) == 1)
  {
    v3 = *(v2 + 24) | v1;
  }

  else
  {
    v3 = *(v2 + 24) & ~v1;
  }

  *(v2 + 24) = v3;
  return result;
}

- (void)noteOccurrenceOfEvent:(unint64_t)event
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__BBServer_noteOccurrenceOfEvent___block_invoke;
  v4[3] = &unk_278D2A7C0;
  v4[4] = self;
  v4[5] = event;
  dispatch_async(queue, v4);
}

- (void)syncService:(id)service receivedDismissalDictionaries:(id)dictionaries dismissalIDs:(id)ds inSection:(id)section universalSectionID:(id)d forFeeds:(unint64_t)feeds
{
  v30 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  dsCopy = ds;
  sectionCopy = section;
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v17 = [MEMORY[0x277CBEB58] set];
  [v17 bs_safeAddObject:sectionCopy];
  if (dCopy)
  {
    v18 = [(BBServer *)self sectionIDsForUniversalSectionID:dCopy];
    allObjects = [v18 allObjects];
    [v17 addObjectsFromArray:allObjects];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = v17;
  v21 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(BBServer *)self handleDismissalDictionaries:dictionariesCopy dismissalIDs:dsCopy inSection:*(*(&v25 + 1) + 8 * v24++) forFeeds:feeds, v25];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v22);
  }
}

- (void)handleDismissalDictionaries:(id)dictionaries dismissalIDs:(id)ds inSection:(id)section forFeeds:(unint64_t)feeds
{
  v63 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  dsCopy = ds;
  sectionCopy = section;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(BBServer *)self dataProviderForSectionID:sectionCopy];
  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_bulletinIDsBySectionID objectForKey:sectionCopy];
    if (v12)
    {
      v35 = v11;
      feedsCopy = feeds;
      v37 = sectionCopy;
      v46 = [MEMORY[0x277CBEB58] setWithArray:dsCopy];
      v13 = [MEMORY[0x277CBEB58] setWithArray:dictionariesCopy];
      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v34 = v12;
      obj = v12;
      v44 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (v44)
      {
        v42 = *v57;
        selfCopy = self;
        v40 = v13;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v57 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v47 = *(*(&v56 + 1) + 8 * i);
            v16 = [(NSMutableDictionary *)self->_bulletinsByID objectForKey:v34];
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v17 = dsCopy;
            v18 = [v17 countByEnumeratingWithState:&v52 objects:v61 count:16];
            if (!v18)
            {

LABEL_20:
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v27 = dictionariesCopy;
              v28 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v49;
                do
                {
                  for (j = 0; j != v29; ++j)
                  {
                    if (*v49 != v30)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v32 = *(*(&v48 + 1) + 8 * j);
                    if (BBDismissalSyncDictionaryMatchesBulletin(v32, v16))
                    {
                      [v13 removeObject:v32];
                      [v14 addObject:v47];
                    }
                  }

                  v29 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
                }

                while (v29);
              }

              goto LABEL_30;
            }

            v19 = v18;
            v45 = i;
            v20 = v14;
            v21 = 0;
            v22 = *v53;
            do
            {
              for (k = 0; k != v19; ++k)
              {
                if (*v53 != v22)
                {
                  objc_enumerationMutation(v17);
                }

                v24 = *(*(&v52 + 1) + 8 * k);
                dismissalID = [v16 dismissalID];
                v26 = [dismissalID isEqualToString:v24];

                if (v26)
                {
                  [v20 addObject:v47];
                  [v46 removeObject:v24];
                  v21 = 1;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v52 objects:v61 count:16];
            }

            while (v19);

            self = selfCopy;
            v13 = v40;
            v14 = v20;
            i = v45;
            if ((v21 & 1) == 0)
            {
              goto LABEL_20;
            }

LABEL_30:
          }

          v44 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
        }

        while (v44);
      }

      sectionCopy = v37;
      [(BBDismissalSyncCache *)self->_dismissalSyncCache cacheDismissalDictionaries:dictionariesCopy dismissalIDs:dsCopy inSection:v37 forFeeds:feedsCopy];
      if (feedsCopy != 65023 && feedsCopy)
      {
        v33 = [(BBServer *)self _bulletinsForIDs:v14];
        [(BBServer *)self _sendRemoveBulletins:v33 toFeeds:feedsCopy shouldSync:0];
      }

      else
      {
        [(BBServer *)self _clearBulletinIDs:v14 forSectionID:v37 shouldSync:0, v34];
      }

      v12 = v34;
      v11 = v35;
      [v14 count];
      ADClientAddValueForScalarKey();
      if ([v13 count] || objc_msgSend(v46, "count"))
      {
        ADClientAddValueForScalarKey();
      }
    }

    else
    {
      [(BBDismissalSyncCache *)self->_dismissalSyncCache cacheDismissalDictionaries:dictionariesCopy dismissalIDs:dsCopy inSection:sectionCopy forFeeds:feeds];
      ADClientAddValueForScalarKey();
      ADClientAddValueForScalarKey();
    }
  }

  else
  {
    ADClientAddValueForScalarKey();
    ADClientAddValueForScalarKey();
  }
}

- (void)didChangeEffectiveAuthorizationStatusForSectionID:(id)d
{
  v4 = [(BBServer *)self _sectionInfoForSectionID:d];
  [(BBServer *)self _sendUpdateSectionInfo:v4];
}

- (void)didChangeMuteAssertionForSectionID:(id)d
{
  v4 = [(BBServer *)self _sectionInfoForSectionID:d];
  if (v4)
  {
    v5 = v4;
    if ([(BBMuteExpirationManager *)self->_muteManager cleanAndWatchExpirationsForSectionInfo:v4])
    {
      [(BBServer *)self _writeSectionInfo];
      [(BBServer *)self _sendUpdateSectionInfo:v5];
    }
  }

  MEMORY[0x2821F96F8]();
}

+ (id)savedChronologicalSectionOrder
{
  _persistentSettingsStore = [self _persistentSettingsStore];
  readSectionOrder = [_persistentSettingsStore readSectionOrder];
  v4 = [readSectionOrder objectForKey:@"BBSectionOrderChronologicalIDs"];

  return v4;
}

+ (id)savedSectionInfo
{
  _persistentSettingsStore = [self _persistentSettingsStore];
  readSectionInfo = [_persistentSettingsStore readSectionInfo];
  v4 = [readSectionInfo mutableCopy];

  return v4;
}

+ (void)removeSavedChronologicalSectionInfo:(id)info
{
  v5 = [info mutableCopy];
  if ([BBPersistentStoreMigrator removeSavedChronologicalSectionInfos:?])
  {
    _persistentSettingsStore = [self _persistentSettingsStore];
    [_persistentSettingsStore writeSectionInfo:v5];
  }
}

- (void)protectionStateChangedForBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__BBServer_protectionStateChangedForBundleIdentifiers___block_invoke;
  v7[3] = &unk_278D2A628;
  v8 = identifiersCopy;
  selfCopy = self;
  v6 = identifiersCopy;
  dispatch_async(queue, v7);
}

void __55__BBServer_protectionStateChangedForBundleIdentifiers___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 216) sectionInfoForSectionID:v7 effective:{1, v14}];
        if ([*(*(a1 + 40) + 296) isApplicationLocked:v7])
        {
          v9 = v8;
          v10 = 3;
LABEL_10:
          [v9 setContentPreviewSetting:v10];
          [*(a1 + 40) _setSectionInfo:v8 forSectionID:v7];
          goto LABEL_12;
        }

        if ([v8 contentPreviewSetting] == 3)
        {
          v9 = v8;
          v10 = 0;
          goto LABEL_10;
        }

        [*(a1 + 40) _sendUpdateSectionInfo:v8];
LABEL_12:
        v11 = [*(*(a1 + 40) + 296) isApplicationHidden:v7];
        v12 = *(a1 + 40);
        if (v11)
        {
          [*(a1 + 40) _clearSection:v7];
        }

        else
        {
          v13 = [*(a1 + 40) dataProviderForSectionID:v7];
          [v12 _updateAllBulletinsForDataProviderIfSectionIsEnabled:v13];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

- (void)deliverResponse:(id)response withCompletion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  bulletinID = [responseCopy bulletinID];
  v8 = [(NSMutableDictionary *)self->_bulletinRequestsByID objectForKey:bulletinID];
  v9 = v8;
  if (v8)
  {
    sectionID = [v8 sectionID];
    v11 = [(BBServer *)self dataProviderForSectionID:sectionID];

    if (v11)
    {
      [v11 deliverResponse:responseCopy forBulletinRequest:v9 withCompletion:completionCopy];
    }

    else
    {
      sectionID2 = [v9 sectionID];
      NSLog(&cfstr_BbserverDelive_0.isa, sectionID2);
    }
  }

  else
  {
    NSLog(&cfstr_BbserverDelive.isa, bulletinID);
  }
}

- (void)_updateShowsMessagePreviewForBulletin:(id)bulletin
{
  v22 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  sectionID = [bulletinCopy sectionID];
  v6 = [(BBServer *)self _sectionInfoForSectionID:sectionID effective:1];
  v7 = [(BBServer *)self _applicableSectionInfosForBulletin:bulletinCopy inSection:v6];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (v10)
        {
          subsectionPriority = [*(*(&v17 + 1) + 8 * i) subsectionPriority];
          if (subsectionPriority <= [v10 subsectionPriority])
          {
            continue;
          }
        }

        v15 = v13;

        v10 = v15;
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if ([v10 contentPreviewSetting])
  {
    contentPreviewSetting = [v10 contentPreviewSetting];
  }

  else
  {
    contentPreviewSetting = [(BBServer *)self _effectiveGlobalContentPreviewsSetting];
  }

  [bulletinCopy setContentPreviewSetting:contentPreviewSetting];
}

- (void)_updateInterruptionLevelForBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  sectionID = [bulletinCopy sectionID];
  v5 = [(BBServer *)self _sectionInfoForSectionID:sectionID effective:1];

  interruptionLevel = [bulletinCopy interruptionLevel];
  if (interruptionLevel == 2)
  {
    goto LABEL_5;
  }

  v7 = interruptionLevel;
  if (interruptionLevel != 3)
  {
    goto LABEL_8;
  }

  if ([v5 criticalAlertSetting] != 2)
  {
LABEL_5:
    if ([v5 timeSensitiveSetting] == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 3;
  }

LABEL_8:
  [bulletinCopy setInterruptionLevel:v7];
}

- (void)publishBulletinRequest:(id)request destinations:(unint64_t)destinations
{
  v40 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  bulletinID = [requestCopy bulletinID];

  if (!bulletinID)
  {
    [(BBServer *)self _assignIDToBulletinRequest:requestCopy];
  }

  sectionID = [requestCopy sectionID];
  bulletinID2 = [requestCopy bulletinID];
  [(BBServer *)self _updateShowsMessagePreviewForBulletin:requestCopy];
  [(BBServer *)self _updateInterruptionLevelForBulletin:requestCopy];
  v10 = [(NSMutableDictionary *)self->_bulletinRequestsByID objectForKey:bulletinID2];
  _appProtectionMonitor = [(BBServer *)self _appProtectionMonitor];
  v12 = [_appProtectionMonitor isApplicationHidden:sectionID];

  if ((v12 & 1) == 0)
  {
    if (!v10)
    {
      v13 = destinations != 0;
      if ((destinations & 0x4C) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    v29 = [requestCopy hasContentModificationsRelativeTo:v10];
    if ((destinations & 2) != 0)
    {
      v16 = [(BBServer *)self noticesBulletinIDsForSectionID:sectionID];
      v28 = [v16 containsObject:bulletinID2] ^ 1;

      if ((destinations & 0x40) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LOBYTE(v28) = 0;
      if ((destinations & 0x40) != 0)
      {
LABEL_9:
        v14 = [(BBServer *)self carBulletinIDsForSectionID:sectionID];
        v15 = [v14 containsObject:bulletinID2] ^ 1;

        goto LABEL_14;
      }
    }

    LOBYTE(v15) = 0;
LABEL_14:
    v17 = v29;
    if ((destinations & 0x4C) != 0)
    {
      v17 = 1;
    }

    v13 = (destinations == 1) | v28 | v15 | v17;
    if ((destinations & 0x4C) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    date = [MEMORY[0x277CBEAA8] date];
    [requestCopy setLastInterruptDate:date];

LABEL_21:
    date2 = [MEMORY[0x277CBEAA8] date];
    [requestCopy setPublicationDate:date2];

    goto LABEL_22;
  }

  v13 = 0;
  if ((destinations & 0x4C) != 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v10)
  {
    lastInterruptDate = [v10 lastInterruptDate];
    [requestCopy setLastInterruptDate:lastInterruptDate];
  }

LABEL_20:
  if (destinations)
  {
    goto LABEL_21;
  }

LABEL_22:
  if ((v13 & 1) != 0 || v10)
  {
    v21 = [requestCopy copy];
    [(NSMutableDictionary *)self->_bulletinRequestsByID setObject:v21 forKey:bulletinID2];
  }

  if (v13)
  {
    [(BBServer *)self _validateExpirationDateForBulletinRequest:requestCopy];
    v22 = BBLogExpiration;
    if (os_log_type_enabled(BBLogExpiration, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      subsectionIDs = [requestCopy subsectionIDs];
      bulletinID3 = [requestCopy bulletinID];
      expirationDate = [requestCopy expirationDate];
      *buf = 138544386;
      v31 = sectionID;
      v32 = 2112;
      v33 = subsectionIDs;
      v34 = 2114;
      v35 = bulletinID3;
      v36 = 2114;
      v37 = expirationDate;
      v38 = 2048;
      expirationEvents = [requestCopy expirationEvents];
      _os_log_impl(&dword_241EFF000, v23, OS_LOG_TYPE_DEFAULT, "Publishing bulletin for section <%{public}@>: subsectionIDs: %{%@}@, bulletinID = <%{public}@>, expiration date = <%{public}@>, expiration events <%ld>", buf, 0x34u);
    }

    v27 = [BBBulletin bulletinWithBulletin:requestCopy];
    [(BBServer *)self publishBulletin:v27 destinations:destinations];
  }
}

- (void)updateSection:(id)section inFeed:(unint64_t)feed withBulletinRequests:(id)requests
{
  v68 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  requestsCopy = requests;
  v7 = BBLogSectionUpdates;
  if (os_log_type_enabled(BBLogSectionUpdates, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 138543618;
    v65 = sectionCopy;
    v66 = 2048;
    v67 = [requestsCopy count];
    _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "Updating section %{public}@ with %ld new bulletins", buf, 0x16u);
  }

  v44 = sectionCopy;
  v42 = [(BBServer *)self bulletinIDsForSectionID:sectionCopy inFeed:feed];
  v9 = [(BBServer *)self _bulletinRequestsForIDs:?];
  v10 = BBLogSectionUpdates;
  if (os_log_type_enabled(BBLogSectionUpdates, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v9 count];
    *buf = 134217984;
    v65 = v12;
    _os_log_impl(&dword_241EFF000, v11, OS_LOG_TYPE_DEFAULT, "Current bulletins in this section: %ld", buf, 0xCu);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v13)
  {
    v14 = v13;
    v46 = *v58;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v58 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v57 + 1) + 8 * i);
        publisherMatchID = [v16 publisherMatchID];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v18 = requestsCopy;
        v19 = [v18 countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v54;
          while (2)
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v54 != v21)
              {
                objc_enumerationMutation(v18);
              }

              publisherMatchID2 = [*(*(&v53 + 1) + 8 * j) publisherMatchID];
              v24 = [publisherMatchID isEqualToString:publisherMatchID2];

              if (v24)
              {

                goto LABEL_22;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v53 objects:v62 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v25 = objc_autoreleasePoolPush();
        v26 = BBLogSectionUpdates;
        if (os_log_type_enabled(BBLogSectionUpdates, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
          v28 = [(BBServer *)self bulletinIDsForSectionID:v44 inFeed:feed];
          v29 = [v28 count];
          *buf = 138412546;
          v65 = v16;
          v66 = 2048;
          v67 = v29;
          _os_log_impl(&dword_241EFF000, v27, OS_LOG_TYPE_DEFAULT, "Removing old bulletin: %@\n%ld bulletins remain", buf, 0x16u);
        }

        bulletinID = [v16 bulletinID];
        [(BBServer *)self removeBulletinID:bulletinID fromSection:v44 inFeed:(8 * (feed & 1)) | feed];

        objc_autoreleasePoolPop(v25);
LABEL_22:
      }

      v14 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v14);
  }

  v31 = [(BBServer *)self allBulletinIDsForSectionID:v44];
  v32 = [(BBServer *)self _bulletinRequestsForIDs:v31];

  if (feed == 1)
  {
    allObjects = [requestsCopy allObjects];
    v34 = [allObjects sortedArrayUsingComparator:&__block_literal_global_8];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v35 = v34;
    v36 = [v35 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v50;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v50 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v49 + 1) + 8 * k);
          v41 = objc_autoreleasePoolPush();
          [(BBServer *)self _assignIDToBulletinRequest:v40 checkAgainstBulletins:v32];
          [(BBServer *)self publishBulletinRequest:v40 destinations:2];
          objc_autoreleasePoolPop(v41);
        }

        v37 = [v35 countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v37);
    }
  }
}

uint64_t __67__BBServer_Publication__updateSection_inFeed_withBulletinRequests___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)withdrawBulletinRequestsWithRecordID:(id)d forSectionID:(id)iD
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(BBServer *)self allBulletinIDsForSectionID:iD];
  v8 = [(BBServer *)self _bulletinRequestsForIDs:v7];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        recordID = [v14 recordID];
        v16 = [dCopy isEqualToString:recordID];

        if (v16)
        {
          bulletinID = [v14 bulletinID];
          [(BBServer *)self withdrawBulletinID:bulletinID shouldSync:1];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)withdrawBulletinRequestsWithPublisherBulletinID:(id)d shouldSync:(BOOL)sync forSectionID:(id)iD
{
  syncCopy = sync;
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = [(BBServer *)self allBulletinIDsForSectionID:iD];
  v10 = [(BBServer *)self _bulletinRequestsForIDs:v9];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        publisherBulletinID = [v16 publisherBulletinID];
        v18 = [dCopy isEqualToString:publisherBulletinID];

        if (v18)
        {
          bulletinID = [v16 bulletinID];
          [(BBServer *)self withdrawBulletinID:bulletinID shouldSync:syncCopy];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }
}

- (id)_bulletinRequestsForIDs:(id)ds
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_bulletinRequestsByID objectForKey:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_assignIDToBulletinRequest:(id)request
{
  requestCopy = request;
  sectionID = [requestCopy sectionID];
  v5 = [(BBServer *)self allBulletinIDsForSectionID:sectionID];
  v6 = [(BBServer *)self _bulletinRequestsForIDs:v5];

  [(BBServer *)self _assignIDToBulletinRequest:requestCopy checkAgainstBulletins:v6];
}

- (void)_assignIDToBulletinRequest:(id)request checkAgainstBulletins:(id)bulletins
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  bulletinsCopy = bulletins;
  publisherMatchID = [requestCopy publisherMatchID];
  if (publisherMatchID)
  {
    selfCopy = self;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = bulletinsCopy;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          publisherMatchID2 = [v14 publisherMatchID];
          v16 = [publisherMatchID isEqualToString:publisherMatchID2];

          if (v16)
          {
            bulletinID = [v14 bulletinID];
            [requestCopy setBulletinID:bulletinID];

            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    self = selfCopy;
  }

  [requestCopy generateNewBulletinID];
  ++self->_globalCounter;
  [requestCopy setCounter:?];
LABEL_13:
}

- (void)initWithQueue:dataProviderManager:syncService:dismissalSyncCache:observerListener:conduitListener:settingsListener:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)listener:shouldAcceptNewConnection:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_feedsForBulletin:destinations:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_scheduleTimerForDate:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__BBServer_observer_handleResponse_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__BBServer_observer_handleResponse_withCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__BBServer_observer_handleResponse_withCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__BBServer_observer_handleResponse_withCompletion___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = a2;
  v4 = [v2 launchURL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __51__BBServer_observer_handleResponse_withCompletion___block_invoke_2_222_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__BBServer_observer_handleResponse_withCompletion___block_invoke_2_222_cold_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v3 = a2;
  v4 = [v2 launchBundleID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __51__BBServer_observer_handleResponse_withCompletion___block_invoke_2_225_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__BBServer__saveGlobalAnnounceSettingEnabledEvent__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__BBServer_weeAppWithBundleID_setHiddenFromUser___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_verifyBulletinRequest:forDataProvider:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_updateBulletinsInFeed:(uint64_t)a1 forDataProvider:(uint64_t)a2 enabledSectionIDs:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBServer.m" lineNumber:3695 description:{@"Invalid parameter not satisfying: %@", @"foundValidDestination"}];
}

- (void)_updateBulletinsInFeed:(void *)a1 forDataProvider:(void *)a2 enabledSectionIDs:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 _sectionInfoForSectionID:a3];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
}

- (void)_updateBulletinsInFeed:forDataProvider:enabledSectionIDs:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end