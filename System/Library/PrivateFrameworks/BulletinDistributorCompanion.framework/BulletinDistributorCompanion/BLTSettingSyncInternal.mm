@interface BLTSettingSyncInternal
- (BLTSettingSyncInternal)initWithSectionConfiguration:(id)configuration queue:(id)queue;
- (unint64_t)willNanoPresentNotificationForSectionID:(id)d subsectionIDs:(id)ds subtype:(int64_t)subtype category:(id)category ignoresDowntime:(BOOL)downtime isCritical:(BOOL)critical;
- (void)connect;
- (void)dealloc;
- (void)disableStandaloneTestMode;
- (void)enableNotifications:(BOOL)notifications sectionID:(id)d mirror:(BOOL)mirror;
- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)delay maximumSendDelay:(unint64_t)sendDelay minimumResponseDelay:(unint64_t)responseDelay maximumResponseDelay:(unint64_t)maximumResponseDelay;
- (void)observer:(id)observer updateGlobalSettings:(id)settings;
- (void)setSectionInfo:(id)info completion:(id)completion;
- (void)setSectionInfo:(id)info keypaths:(id)keypaths completion:(id)completion;
- (void)setSectionSubtypeParametersIcon:(id)icon forSectionID:(id)d forSubtypeID:(int64_t)iD;
- (void)updateGlobalSettings:(id)settings;
@end

@implementation BLTSettingSyncInternal

- (BLTSettingSyncInternal)initWithSectionConfiguration:(id)configuration queue:(id)queue
{
  configurationCopy = configuration;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = BLTSettingSyncInternal;
  v9 = [(BLTSettingSyncInternal *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionConfiguration, configuration);
    v11 = [BLTSettingsGateway surrogateWithQueue:queueCopy];
    [(BLTSettingSyncInternal *)v10 setSettingsGateway:v11];

    v12 = objc_alloc_init(BLTWristStateObserver);
    wristStateObserver = v10->_wristStateObserver;
    v10->_wristStateObserver = v12;

    v14 = [BLTBBObserver surrogateWithQueue:queueCopy calloutQueue:queueCopy];
    [(BLTSettingSyncInternal *)v10 setObserver:v14];

    observer = [(BLTSettingSyncInternal *)v10 observer];
    [observer setDelegate:v10];

    observer2 = [(BLTSettingSyncInternal *)v10 observer];
    [observer2 setObserverFeed:512];
  }

  return v10;
}

- (void)connect
{
  v3 = objc_alloc_init(BLTSettingSyncServer);
  [(BLTSettingSyncInternal *)self setConnection:v3];

  connection = [(BLTSettingSyncInternal *)self connection];
  [connection setDelegate:self];

  v5 = [BLTSpokenSettingSync alloc];
  settingsGateway = [(BLTSettingSyncInternal *)self settingsGateway];
  connection2 = [(BLTSettingSyncInternal *)self connection];
  v8 = [(BLTSpokenSettingSync *)v5 initWithSettingsGateway:settingsGateway syncServer:connection2];
  spokenSettingSync = self->_spokenSettingSync;
  self->_spokenSettingSync = v8;

  settingsGateway2 = [(BLTSettingSyncInternal *)self settingsGateway];
  connection3 = [(BLTSettingSyncInternal *)self connection];
  v11 = [BLTRemoteGlobalSettingsSyncServer remoteGlobalSettingsSyncServerWithLocalEndpoint:settingsGateway2 remoteEndpoint:connection3];
  [(BLTSettingSyncInternal *)self setRemoteGlobalSettingsSyncServer:v11];
}

- (void)dealloc
{
  settingsGateway = [(BLTSettingSyncInternal *)self settingsGateway];
  [settingsGateway invalidate];

  v4.receiver = self;
  v4.super_class = BLTSettingSyncInternal;
  [(BLTSettingSyncInternal *)&v4 dealloc];
}

- (void)setSectionInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  __assert_rtn("[BLTSettingSyncInternal setSectionInfo:completion:]", "BLTSettingSyncInternal.m", 114, "0");
}

- (void)setSectionInfo:(id)info keypaths:(id)keypaths completion:(id)completion
{
  infoCopy = info;
  keypathsCopy = keypaths;
  completionCopy = completion;
  __assert_rtn("[BLTSettingSyncInternal setSectionInfo:keypaths:completion:]", "BLTSettingSyncInternal.m", 118, "0");
}

- (void)setSectionSubtypeParametersIcon:(id)icon forSectionID:(id)d forSubtypeID:(int64_t)iD
{
  iconCopy = icon;
  dCopy = d;
  __assert_rtn("[BLTSettingSyncInternal setSectionSubtypeParametersIcon:forSectionID:forSubtypeID:]", "BLTSettingSyncInternal.m", 122, "0");
}

- (void)enableNotifications:(BOOL)notifications sectionID:(id)d mirror:(BOOL)mirror
{
  if (notifications)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [(BLTSettingSyncInternal *)self setNotificationsLevel:v5 sectionID:d mirror:mirror fromRemote:0];
}

- (void)enableStandaloneTestModeWithMinimumSendDelay:(unint64_t)delay maximumSendDelay:(unint64_t)sendDelay minimumResponseDelay:(unint64_t)responseDelay maximumResponseDelay:(unint64_t)maximumResponseDelay
{
  connection = [(BLTSettingSyncInternal *)self connection];
  [connection enableStandaloneTestModeWithMinimumSendDelay:delay maximumSendDelay:sendDelay minimumResponseDelay:responseDelay maximumResponseDelay:maximumResponseDelay];
}

- (void)disableStandaloneTestMode
{
  connection = [(BLTSettingSyncInternal *)self connection];
  [connection disableStandaloneTestMode];
}

- (unint64_t)willNanoPresentNotificationForSectionID:(id)d subsectionIDs:(id)ds subtype:(int64_t)subtype category:(id)category ignoresDowntime:(BOOL)downtime isCritical:(BOOL)critical
{
  HIDWORD(v28) = critical;
  downtimeCopy = downtime;
  dCopy = d;
  categoryCopy = category;
  dsCopy = ds;
  v16 = [(BLTSettingSyncInternal *)self _overriddenSectionInfoForSectionID:dCopy];
  v17 = objc_alloc_init(BLTAlertStateTester);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __124__BLTSettingSyncInternal_willNanoPresentNotificationForSectionID_subsectionIDs_subtype_category_ignoresDowntime_isCritical___block_invoke;
  v29[3] = &unk_278D32300;
  v29[4] = self;
  [(BLTAlertStateTester *)v17 setSectionInfoRetriever:v29];
  factorySectionID = [v16 factorySectionID];

  if (factorySectionID && (v19 = self->_sectionConfiguration, [v16 factorySectionID], v20 = downtimeCopy, v21 = objc_claimAutoreleasedReturnValue(), LODWORD(v19) = -[BLTSectionConfigurationInternal applyAllowListToChildSections:](v19, "applyAllowListToChildSections:", v21), v21, downtimeCopy = v20, v19))
  {
    sectionConfiguration = self->_sectionConfiguration;
    factorySectionID2 = [v16 factorySectionID];
    v24 = sectionConfiguration;
    downtimeCopy = v20;
    v25 = [(BLTSectionConfigurationInternal *)v24 coordinationTypeForSectionID:factorySectionID2 subtype:subtype category:categoryCopy];
  }

  else
  {
    v25 = [(BLTSectionConfigurationInternal *)self->_sectionConfiguration coordinationTypeForSectionID:dCopy subtype:subtype category:categoryCopy];
  }

  LOBYTE(v28) = BYTE4(v28);
  v26 = [(BLTAlertStateTester *)v17 willNanoPresentNotificationForSectionInfo:v16 subsectionIDs:dsCopy isWristDetectDisabled:[(BLTSettingSyncInternal *)self isWristDetectDisabled] hasSectionIDOptedOutOfCoordination:v25 == 2 hasSectionIDOptedForwardOnly:v25 == 1 ignoresDowntime:downtimeCopy isCritical:v28];

  return v26;
}

- (void)updateGlobalSettings:(id)settings
{
  v11 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = blt_global_settings_sync_log(settingsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = settingsCopy;
    _os_log_impl(&dword_241FB3000, v5, OS_LOG_TYPE_DEFAULT, "%@ updateGlobalSettings: %@", &v7, 0x16u);
  }

  remoteGlobalSettingsSyncServer = [(BLTSettingSyncInternal *)self remoteGlobalSettingsSyncServer];
  [remoteGlobalSettingsSyncServer updateLocalSettingsWithProvider:settingsCopy];
}

- (void)observer:(id)observer updateGlobalSettings:(id)settings
{
  v16 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  settingsCopy = settings;
  v8 = blt_global_settings_sync_log(settingsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = observerCopy;
    v14 = 2112;
    v15 = settingsCopy;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_DEFAULT, "%@ observer: %@ globalSettings: %@", &v10, 0x20u);
  }

  -[BLTSpokenSettingSync bbUpdateLocalGlobalSpokenSettingEnabled:](self->_spokenSettingSync, "bbUpdateLocalGlobalSpokenSettingEnabled:", [settingsCopy globalSpokenNotificationSetting]);
  remoteGlobalSettingsSyncServer = [(BLTSettingSyncInternal *)self remoteGlobalSettingsSyncServer];
  [remoteGlobalSettingsSyncServer observer:observerCopy updateGlobalSettings:settingsCopy];
}

@end