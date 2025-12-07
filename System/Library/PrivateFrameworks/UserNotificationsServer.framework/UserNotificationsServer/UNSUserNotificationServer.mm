@interface UNSUserNotificationServer
+ (id)sharedInstance;
- (UNSUserNotificationServer)init;
- (id)_loadAllSystemNotificationSourceDescriptions;
- (id)_sourceDescriptionsForApplications:(id)applications;
- (id)localActionForAction:(id)action notification:(id)notification bundleID:(id)d;
- (id)localResponseForAction:(id)action notification:(id)notification bundleID:(id)d userText:(id)text;
- (void)_addObserverForApplicationWorkspaceChanges;
- (void)_addObserverForBackgroundRefreshApplicationChanges;
- (void)_addObserverForLocaleChanges;
- (void)_addObserverForSignificantTimeChanges;
- (void)_applicationsDidInstall:(id)install;
- (void)_buildForegroundAction:(id)action queue:(id)queue completionHandler:(id)handler;
- (void)_didChangeProcessState:(id)state forBundleIdentifier:(id)identifier;
- (void)_installedSourceQueue_notificationSourcesDidInstall:(id)install;
- (void)_installedSourceQueue_notificationSourcesDidUninstall:(id)uninstall;
- (void)_removeBundleLibrarianMappingsForSourceDescriptions:(id)descriptions;
- (void)_removeNotificationRecordsForIdentifiers:(id)identifiers bundleIdentifier:(id)identifier;
- (void)_removeNotificationSourceDirectories:(id)directories;
- (void)_removePushStore;
- (void)applicationInstallsDidChange:(id)change;
- (void)applicationStateDidChange:(id)change;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)categoryRepositoryDidChangeCategoriesForBundleIdentifier:(id)identifier;
- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)unlock;
- (void)didChangeNotificationSettings:(id)settings forBundleIdentifier:(id)identifier;
- (void)didReceiveDeviceToken:(id)token forBundleIdentifier:(id)identifier;
- (void)initialSystemNotificationSourcesDidInstall:(id)install applicationsDidInstall:(id)didInstall;
- (void)notificationRepositoryDidDiscoverContentOnFirstUnlockForBundleIdentifier:(id)identifier;
- (void)notificationRepositoryDidPerformUpdates:(id)updates forBundleIdentifier:(id)identifier;
- (void)performAction:(id)action forNotification:(id)notification inApp:(id)app withUserText:(id)text;
@end

@implementation UNSUserNotificationServer

void __33__UNSUserNotificationServer_init__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 state];

  v9 = [v7 bundle];

  v10 = [v9 identifier];
  [WeakRetained _didChangeProcessState:v8 forBundleIdentifier:v10];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[UNSUserNotificationServer sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __43__UNSUserNotificationServer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(UNSUserNotificationServer);
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;
}

- (UNSUserNotificationServer)init
{
  v150 = *MEMORY[0x277D85DE8];
  v147.receiver = self;
  v147.super_class = UNSUserNotificationServer;
  val = [(UNSUserNotificationServer *)&v147 init];
  if (val)
  {
    [(UNSUserNotificationServer *)val _registerLoggers];
    v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3 = dispatch_queue_create("com.apple.usernotificationsserver.SourceInstallation", v2);
    installedSourceQueue = val->_installedSourceQueue;
    val->_installedSourceQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277D77D10]);
    contentProtectionManager = val->_contentProtectionManager;
    val->_contentProtectionManager = v5;

    v7 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v8 = [v7 objectAtIndex:0];
    libraryDirectory = val->_libraryDirectory;
    val->_libraryDirectory = v8;

    v10 = [(NSString *)val->_libraryDirectory stringByAppendingPathComponent:@"UserNotifications"];
    directory = val->_directory;
    val->_directory = v10;

    v12 = [objc_alloc(MEMORY[0x277D77C60]) initWithDirectory:val->_directory];
    librarian = val->_librarian;
    val->_librarian = v12;

    v14 = objc_alloc_init(MEMORY[0x277D77C70]);
    localizationService = val->_localizationService;
    val->_localizationService = v14;

    v16 = objc_alloc_init(MEMORY[0x277D77F50]);
    communicationContextService = val->_communicationContextService;
    val->_communicationContextService = v16;

    v18 = objc_alloc_init(UNSBadgeService);
    badgeService = val->_badgeService;
    val->_badgeService = v18;

    v20 = objc_alloc(MEMORY[0x277D77CD0]);
    v21 = val->_directory;
    v22 = val->_librarian;
    classDStrategy = [(UNSContentProtectionManager *)val->_contentProtectionManager classDStrategy];
    v24 = [v20 initWithDirectory:v21 librarian:v22 repositoryProtectionStrategy:classDStrategy];
    topicRepository = val->_topicRepository;
    val->_topicRepository = v24;

    if (UNCRemoteServicesNeeded())
    {
      v26 = objc_alloc_init(MEMORY[0x277D77C88]);
      coreServiceClient = val->_coreServiceClient;
      val->_coreServiceClient = v26;

      [(UNCNotificationCoreServiceClient *)val->_coreServiceClient setDelegate:val];
    }

    if (UNCDaemonEnabled())
    {
      v28 = [objc_alloc(MEMORY[0x277D77D38]) initWithServiceClient:val->_coreServiceClient];
      categoryRepository = val->_categoryRepository;
      val->_categoryRepository = v28;

      v30 = [objc_alloc(MEMORY[0x277D77CF0]) initWithServiceClient:val->_coreServiceClient];
      notificationRepository = val->_notificationRepository;
      val->_notificationRepository = v30;
    }

    else
    {
      v32 = objc_alloc(MEMORY[0x277D77D18]);
      v33 = val->_librarian;
      v34 = val->_directory;
      classDStrategy2 = [(UNSContentProtectionManager *)val->_contentProtectionManager classDStrategy];
      v36 = [v32 initWithDirectory:v34 librarian:v33 repositoryProtectionStrategy:classDStrategy2];
      v37 = val->_categoryRepository;
      val->_categoryRepository = v36;

      v38 = objc_alloc(MEMORY[0x277D77C68]);
      v39 = val->_directory;
      v40 = val->_librarian;
      classCStrategyExcludedFromBackup = [(UNSContentProtectionManager *)val->_contentProtectionManager classCStrategyExcludedFromBackup];
      v42 = [v38 initWithDirectory:v39 librarian:v40 repositoryProtectionStrategy:classCStrategyExcludedFromBackup categoryRepository:val->_categoryRepository badgeService:val->_badgeService];
      v43 = val->_notificationRepository;
      val->_notificationRepository = v42;

      if (UNCRemoteServicesNeeded())
      {
        v44 = *MEMORY[0x277D77D40];
        [(UNCNotificationRepository *)val->_notificationRepository addObserver:val->_coreServiceClient forBundleIdentifier:*MEMORY[0x277D77D40]];
        [(UNSNotificationCategoryRepository *)val->_categoryRepository addObserver:val->_coreServiceClient forBundleIdentifier:v44];
      }
    }

    v45 = objc_alloc_init(UNSSummaryServiceAdapter);
    summaryService = val->_summaryService;
    val->_summaryService = v45;

    v47 = objc_alloc(MEMORY[0x277D77CE0]);
    v48 = val->_librarian;
    v49 = val->_directory;
    classDStrategy3 = [(UNSContentProtectionManager *)val->_contentProtectionManager classDStrategy];
    v51 = [v47 initWithDirectory:v49 librarian:v48 repositoryProtectionStrategy:classDStrategy3];
    pendingNotificationRepository = val->_pendingNotificationRepository;
    val->_pendingNotificationRepository = v51;

    v53 = [objc_alloc(MEMORY[0x277D77CE8]) initWithDirectory:val->_directory librarian:val->_librarian];
    pushRegistrationRepository = val->_pushRegistrationRepository;
    val->_pushRegistrationRepository = v53;

    v55 = [objc_alloc(MEMORY[0x277D77CA0]) initWithDirectory:val->_directory librarian:val->_librarian];
    notificationScheduleRepository = val->_notificationScheduleRepository;
    val->_notificationScheduleRepository = v55;

    v57 = [objc_alloc(MEMORY[0x277D77C58]) initWithDirectory:val->_directory librarian:val->_librarian];
    attachmentsRepository = val->_attachmentsRepository;
    val->_attachmentsRepository = v57;

    v59 = objc_alloc_init(MEMORY[0x277D77C78]);
    locationMonitor = val->_locationMonitor;
    val->_locationMonitor = v59;

    v61 = [objc_alloc(MEMORY[0x277D77CA8]) initWithNotificationRepository:val->_notificationRepository pendingNotificationRepository:val->_pendingNotificationRepository notificationScheduleRepository:val->_notificationScheduleRepository locationMonitor:val->_locationMonitor];
    notificationSchedulingService = val->_notificationSchedulingService;
    val->_notificationSchedulingService = v61;

    v63 = [[UNSAttachmentsService alloc] initWithAttachmentsRepository:val->_attachmentsRepository notificationRepository:val->_notificationRepository notificationSchedulingService:val->_notificationSchedulingService pendingNotificationRepository:val->_pendingNotificationRepository];
    attachmentsService = val->_attachmentsService;
    val->_attachmentsService = v63;

    v65 = [[UNSApplicationLauncher alloc] initWithLocationMonitor:val->_locationMonitor];
    applicationLauncher = val->_applicationLauncher;
    val->_applicationLauncher = v65;

    v67 = objc_alloc_init(UNSDaemonLauncher);
    daemonLauncher = val->_daemonLauncher;
    val->_daemonLauncher = v67;

    v69 = objc_alloc_init(UNSSettingsGateway);
    settingsGateway = val->_settingsGateway;
    val->_settingsGateway = v69;

    v71 = [[UNSDefaultDataProviderFactory alloc] initWithApplicationLauncher:val->_applicationLauncher daemonLauncher:val->_daemonLauncher categoryRepository:val->_categoryRepository notificationRepository:val->_notificationRepository attachmentsService:val->_attachmentsService topicRepository:val->_topicRepository localizationService:val->_localizationService summaryService:val->_summaryService settingsGateway:val->_settingsGateway];
    dataProviderFactory = val->_dataProviderFactory;
    val->_dataProviderFactory = v71;

    v73 = [[UNSNotificationSettingsService alloc] initWithSettingsGateway:val->_settingsGateway];
    notificationSettingsService = val->_notificationSettingsService;
    val->_notificationSettingsService = v73;

    v75 = [[UNSNotificationAuthorizationService alloc] initWithDataProviderFactory:val->_dataProviderFactory settingsService:val->_notificationSettingsService localizationService:val->_localizationService];
    notificationAuthorizationService = val->_notificationAuthorizationService;
    val->_notificationAuthorizationService = v75;

    v77 = [[UNSApplicationService alloc] initWithApplicationLauncher:val->_applicationLauncher categoryRepository:val->_categoryRepository localizationService:val->_localizationService];
    applicationService = val->_applicationService;
    val->_applicationService = v77;

    if ((UNCDaemonEnabled() & 1) == 0)
    {
      [(UNCNotificationRepository *)val->_notificationRepository setSettingsProvider:val->_notificationSettingsService];
    }

    v79 = objc_alloc(MEMORY[0x277D77CF8]);
    v80 = val->_notificationRepository;
    v81 = val->_attachmentsService;
    v82 = val->_pushRegistrationRepository;
    mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
    v84 = [v79 initWithNotificationRepository:v80 attachmentsService:v81 pushRegistrationRepository:v82 platform:mEMORY[0x277CF0CA8]];
    remoteNotificationService = val->_remoteNotificationService;
    val->_remoteNotificationService = v84;

    v86 = [[UNSUserNotificationServerRemoteNotificationConnectionListener alloc] initWithRemoteNotificationService:val->_remoteNotificationService];
    userNotificationServerRemoteNotificationConnectionListener = val->_userNotificationServerRemoteNotificationConnectionListener;
    val->_userNotificationServerRemoteNotificationConnectionListener = v86;

    v88 = [[UNSUserNotificationServerConnectionListener alloc] initWithCategoryRepository:val->_categoryRepository notificationSchedulingService:val->_notificationSchedulingService notificationAuthorizationService:val->_notificationAuthorizationService notificationSettingsService:val->_notificationSettingsService notificationRepository:val->_notificationRepository remoteNotificationConnectionListener:val->_userNotificationServerRemoteNotificationConnectionListener remoteNotificationService:val->_remoteNotificationService applicationLauncher:val->_applicationLauncher attachmentsService:val->_attachmentsService locationMonitor:val->_locationMonitor topicRepository:val->_topicRepository localizationService:val->_localizationService communicationContextService:val->_communicationContextService];
    userNotificationServerConnectionListener = val->_userNotificationServerConnectionListener;
    val->_userNotificationServerConnectionListener = v88;

    v90 = [[UNSUserNotificationServerSettingsConnectionListener alloc] initWithNotificationSettingsService:val->_notificationSettingsService];
    userNotificationServerSettingsConnectionListener = val->_userNotificationServerSettingsConnectionListener;
    val->_userNotificationServerSettingsConnectionListener = v90;

    if (UNCRemoteServicesNeeded())
    {
      v92 = [objc_alloc(MEMORY[0x277D77CC0]) initWithDelegate:val];
      systemServiceListener = val->_systemServiceListener;
      val->_systemServiceListener = v92;

      [(UNCNotificationSystemServiceListener *)val->_systemServiceListener activate];
    }

    v94 = [MEMORY[0x277CBEB58] set];
    v95 = [MEMORY[0x277CBEB58] set];
    [(UNSUserNotificationServer *)val _loadAllSystemNotificationSourceDescriptions];
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v96 = v144 = 0u;
    v97 = [v96 countByEnumeratingWithState:&v143 objects:v149 count:16];
    if (v97)
    {
      v98 = *v144;
      do
      {
        for (i = 0; i != v97; ++i)
        {
          if (*v144 != v98)
          {
            objc_enumerationMutation(v96);
          }

          bundleIdentifier = [*(*(&v143 + 1) + 8 * i) bundleIdentifier];
          [v94 addObject:bundleIdentifier];
          [v95 addObject:bundleIdentifier];
        }

        v97 = [v96 countByEnumeratingWithState:&v143 objects:v149 count:16];
      }

      while (v97);
    }

    v101 = [v94 copy];
    systemSourceBundleIdentifiers = val->_systemSourceBundleIdentifiers;
    val->_systemSourceBundleIdentifiers = v101;

    v103 = val->_librarian;
    v104 = [(NSString *)val->_libraryDirectory stringByAppendingPathComponent:@"UserNotificationsServer"];
    [(UNCBundleLibrarian *)v103 migrateLibraryFromDirectory:v104 toDirectory:val->_directory];

    array = [MEMORY[0x277CBEB18] array];
    v106 = MEMORY[0x277CC1E70];
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v140[2] = __33__UNSUserNotificationServer_init__block_invoke;
    v140[3] = &unk_279E10778;
    v127 = array;
    v141 = v127;
    v128 = v95;
    v142 = v128;
    [v106 unc_enumerateApplicationRecordsEligibleToDeliverNotifications:v140];
    v107 = val->_librarian;
    v108 = [v128 copy];
    [(UNCBundleLibrarian *)v107 bootstrapLibraryForBundleIdentifiers:v108];

    if (UNIsInternalInstall())
    {
      v126 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.usernotifications"];
      if (([v126 BOOLForKey:@"UNNotificationObliterateForRadar150366881"] & 1) == 0)
      {
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v109 = v128;
        v110 = [v109 countByEnumeratingWithState:&v136 objects:v148 count:16];
        if (v110)
        {
          v111 = *v137;
          do
          {
            for (j = 0; j != v110; ++j)
            {
              if (*v137 != v111)
              {
                objc_enumerationMutation(v109);
              }

              v113 = *(*(&v136 + 1) + 8 * j);
              [(UNCNotificationRepository *)val->_notificationRepository removeStoreForBundleIdentifier:v113];
              objc_opt_class();
              v114 = UNSafeCast();
              [v114 _removeStoreForBundleIdentifier:v113 overridePathExtension:@"uncplist"];

              [(UNCPendingNotificationRepository *)val->_pendingNotificationRepository removeStoreForBundleIdentifier:v113];
            }

            v110 = [v109 countByEnumeratingWithState:&v136 objects:v148 count:16];
          }

          while (v110);
        }

        [v126 setBool:1 forKey:@"UNNotificationObliterateForRadar150366881"];
      }
    }

    if ((UNCDaemonEnabled() & 1) == 0)
    {
      [(UNSUserNotificationServer *)val _migrateNotificationRepository];
    }

    [(UNSUserNotificationServer *)val _migrateAttachments];
    [(UNSUserNotificationServer *)val _removePushStore];
    if ((UNCDaemonEnabled() & 1) == 0)
    {
      [(UNSUserNotificationServer *)val _validateNotificationRepository];
    }

    objc_initWeak(&location, val);
    v115 = MEMORY[0x277D46F80];
    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = __33__UNSUserNotificationServer_init__block_invoke_2;
    v133[3] = &unk_279E107C8;
    objc_copyWeak(&v134, &location);
    v116 = [v115 monitorWithConfiguration:v133];
    processMonitor = val->_processMonitor;
    val->_processMonitor = v116;

    [(UNSUserNotificationServer *)val _addObserverForApplicationStateRestore];
    [(UNSUserNotificationServer *)val _addObserverForApplicationWorkspaceChanges];
    [(UNSUserNotificationServer *)val _addObserverForBackgroundRefreshApplicationChanges];
    [(UNSUserNotificationServer *)val _addObserverForContentProtectionChanges];
    [(UNSUserNotificationServer *)val _addObserverForDataProviderFactoryChanges];
    [(UNSUserNotificationServer *)val _addObserverForLocaleChanges];
    [(UNSUserNotificationServer *)val _addObserverForRemoteNotificationServiceChanges];
    [(UNSUserNotificationServer *)val _addObserverForSignificantTimeChanges];
    [(UNSUserNotificationServer *)val initialSystemNotificationSourcesDidInstall:v96 applicationsDidInstall:v127];
    if ((UNCDaemonEnabled() & 1) == 0)
    {
      [(UNCNotificationRepository *)val->_notificationRepository setDelegate:?];
    }

    v118 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__UNSUserNotificationServer_init__block_invoke_4;
    block[3] = &unk_279E104B8;
    v119 = val;
    v131 = v119;
    v120 = v128;
    v132 = v120;
    dispatch_async(v118, block);

    if ([(UNSContentProtectionManager *)val->_contentProtectionManager deviceUnlockedSinceBoot])
    {
      [v119 _ensureAttachmentsIntegrity];
    }

    [(UNSUserNotificationServerConnectionListener *)val->_userNotificationServerConnectionListener resume];
    [(UNSUserNotificationServerRemoteNotificationConnectionListener *)val->_userNotificationServerRemoteNotificationConnectionListener resume];
    [(UNSUserNotificationServerSettingsConnectionListener *)val->_userNotificationServerSettingsConnectionListener resume];
    v121 = objc_opt_new();
    v122 = v119[35];
    v119[35] = v121;

    [v119[35] setDelegate:v119];
    mEMORY[0x277D77CD8] = [MEMORY[0x277D77CD8] sharedInstance];
    UNSExampleUserNotificationCenterRegister(mEMORY[0x277D77CD8], v124);
    [MEMORY[0x277D77E88] applyToSettingsIfNecessary];

    objc_destroyWeak(&v134);
    objc_destroyWeak(&location);
  }

  return val;
}

void __33__UNSUserNotificationServer_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 compatibilityObject];
  [v3 addObject:v5];

  v6 = *(a1 + 40);
  v7 = [v4 bundleIdentifier];

  [v6 addObject:v7];
}

void __33__UNSUserNotificationServer_init__block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D46FB0] descriptor];
  [v4 setValues:1];
  [v4 setEndowmentNamespaces:&unk_28809BCF8];
  [v3 setStateDescriptor:v4];
  v5 = [MEMORY[0x277D46FA0] predicateMatchingProcessTypeApplication];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v3 setPredicates:v6];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__UNSUserNotificationServer_init__block_invoke_3;
  v7[3] = &unk_279E107A0;
  objc_copyWeak(&v8, (a1 + 32));
  [v3 setUpdateHandler:v7];
  objc_destroyWeak(&v8);
}

void __33__UNSUserNotificationServer_init__block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 144) notificationSourcesForBundleIdentifiers:*(a1 + 40)];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 sourceSettings];
        v9 = [v8 notificationSettings];
        if ([v9 hasEnabledSettings])
        {
          v10 = [v7 sourceIdentifier];
          [*(a1 + 32) didChangeNotificationSettings:v9 forBundleIdentifier:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 168) didCompleteInitialization];
}

- (id)_loadAllSystemNotificationSourceDescriptions
{
  systemSourceDirectoryURLs = [MEMORY[0x277D77CB8] systemSourceDirectoryURLs];
  v3 = [systemSourceDirectoryURLs bs_mapNoNulls:&__block_literal_global_69];
  bs_flatten = [v3 bs_flatten];
  v5 = [bs_flatten bs_filter:&__block_literal_global_73];
  v6 = [v5 bs_mapNoNulls:&__block_literal_global_75];

  return v6;
}

id __73__UNSUserNotificationServer__loadAllSystemNotificationSourceDescriptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAA00];
  v3 = a2;
  v4 = [v2 defaultManager];
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:0];

  return v5;
}

uint64_t __73__UNSUserNotificationServer__loadAllSystemNotificationSourceDescriptions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [MEMORY[0x277D77CB8] systemSourcePathExtension];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)initialSystemNotificationSourcesDidInstall:(id)install applicationsDidInstall:(id)didInstall
{
  installCopy = install;
  didInstallCopy = didInstall;
  installedSourceQueue = self->_installedSourceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__UNSUserNotificationServer_initialSystemNotificationSourcesDidInstall_applicationsDidInstall___block_invoke;
  block[3] = &unk_279E10700;
  block[4] = self;
  v12 = didInstallCopy;
  v13 = installCopy;
  v9 = installCopy;
  v10 = didInstallCopy;
  dispatch_sync(installedSourceQueue, block);
}

void __95__UNSUserNotificationServer_initialSystemNotificationSourcesDidInstall_applicationsDidInstall___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _sourceDescriptionsForApplications:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 48) arrayByAddingObjectsFromArray:v4];
  [v2 _installedSourceQueue_notificationSourcesDidInstall:v3];
}

- (void)applicationInstallsDidChange:(id)change
{
  changeCopy = change;
  installedSourceQueue = self->_installedSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__UNSUserNotificationServer_applicationInstallsDidChange___block_invoke;
  v7[3] = &unk_279E104B8;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(installedSourceQueue, v7);
}

void __58__UNSUserNotificationServer_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 correspondingApplicationRecord];
        v10 = v9;
        if (v9 && [v9 isWebApp])
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    [*(a1 + 40) _applicationsDidInstall:v2];
  }
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  installedSourceQueue = self->_installedSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__UNSUserNotificationServer_applicationsDidInstall___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = installCopy;
  v6 = installCopy;
  dispatch_async(installedSourceQueue, v7);
}

- (void)applicationStateDidChange:(id)change
{
  changeCopy = change;
  installedSourceQueue = self->_installedSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__UNSUserNotificationServer_applicationStateDidChange___block_invoke;
  v7[3] = &unk_279E104B8;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(installedSourceQueue, v7);
}

- (void)_applicationsDidInstall:(id)install
{
  v4 = [(UNSUserNotificationServer *)self _sourceDescriptionsForApplications:install];
  [(UNSUserNotificationServer *)self _installedSourceQueue_notificationSourcesDidInstall:v4];
}

- (id)_sourceDescriptionsForApplications:(id)applications
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__UNSUserNotificationServer__sourceDescriptionsForApplications___block_invoke;
  v5[3] = &unk_279E10830;
  v5[4] = self;
  v3 = [applications bs_mapNoNulls:v5];

  return v3;
}

id __64__UNSUserNotificationServer__sourceDescriptionsForApplications___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 correspondingApplicationRecord];
  v7 = [v6 unc_isEligibleToDeliverNotifications];

  if (v7)
  {
    v8 = [MEMORY[0x277D77CB8] applicationSourceDescriptionWithApplication:v4];
    v9 = [v8 useDefaultDataProvider];
    if ((v9 & 1) == 0)
    {
      v2 = [v8 pushEnvironment];
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    v10 = *(*(a1 + 32) + 240);
    v11 = [v8 bundleIdentifier];
    v12 = [v10 containsObject:v11];

    if ((v9 & 1) == 0)
    {
    }

    if ((v12 & 1) == 0)
    {
      v13 = v8;
    }

    else
    {
LABEL_7:
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v13;
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  installedSourceQueue = self->_installedSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__UNSUserNotificationServer_applicationsDidUninstall___block_invoke;
  v7[3] = &unk_279E104B8;
  v8 = uninstallCopy;
  selfCopy = self;
  v6 = uninstallCopy;
  dispatch_async(installedSourceQueue, v7);
}

void __54__UNSUserNotificationServer_applicationsDidUninstall___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__UNSUserNotificationServer_applicationsDidUninstall___block_invoke_2;
  v4[3] = &unk_279E10830;
  v4[4] = *(a1 + 40);
  v3 = [v2 bs_mapNoNulls:v4];
  [*(a1 + 40) _installedSourceQueue_notificationSourcesDidUninstall:v3];
}

id __54__UNSUserNotificationServer_applicationsDidUninstall___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277D77CB8] applicationSourceDescriptionWithApplication:a2];
  v5 = [v4 useDefaultDataProvider];
  if ((v5 & 1) == 0)
  {
    v2 = [v4 pushEnvironment];
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v6 = *(*(a1 + 32) + 240);
  v7 = [v4 bundleIdentifier];
  v8 = [v6 containsObject:v7];

  if ((v5 & 1) == 0)
  {
  }

  if ((v8 & 1) == 0)
  {
    v9 = v4;
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  return v9;
}

- (void)didChangeNotificationSettings:(id)settings forBundleIdentifier:(id)identifier
{
  notificationSchedulingService = self->_notificationSchedulingService;
  identifierCopy = identifier;
  settingsCopy = settings;
  [(UNCNotificationSchedulingService *)notificationSchedulingService didChangeNotificationSettings:settingsCopy forBundleIdentifier:identifierCopy];
  [(UNCRemoteNotificationServer *)self->_remoteNotificationService didChangeNotificationSettings:settingsCopy forBundleIdentifier:identifierCopy];
}

- (void)didReceiveDeviceToken:(id)token forBundleIdentifier:(id)identifier
{
  userNotificationServerConnectionListener = self->_userNotificationServerConnectionListener;
  identifierCopy = identifier;
  tokenCopy = token;
  [(UNSUserNotificationServerConnectionListener *)userNotificationServerConnectionListener didReceiveDeviceToken:tokenCopy forBundleIdentifier:identifierCopy];
  [(UNSUserNotificationServerRemoteNotificationConnectionListener *)self->_userNotificationServerRemoteNotificationConnectionListener didReceiveDeviceToken:tokenCopy forBundleIdentifier:identifierCopy];
}

- (void)contentProtectionStateChangedForFirstUnlock:(BOOL)unlock
{
  unlockCopy = unlock;
  [(UNCNotificationRepository *)self->_notificationRepository contentProtectionStateChangedForFirstUnlock:?];
  [(UNCPendingNotificationRepository *)self->_pendingNotificationRepository contentProtectionStateChangedForFirstUnlock:unlockCopy];
  [(UNSNotificationCategoryRepository *)self->_categoryRepository contentProtectionStateChangedForFirstUnlock:unlockCopy];
  [(UNCNotificationTopicRepository *)self->_topicRepository contentProtectionStateChangedForFirstUnlock:unlockCopy];
  attachmentsService = self->_attachmentsService;

  [(UNSAttachmentsService *)attachmentsService contentProtectionStateChangedForFirstUnlock:unlockCopy];
}

- (void)notificationRepositoryDidPerformUpdates:(id)updates forBundleIdentifier:(id)identifier
{
  updatesCopy = updates;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UNCNotificationRepository *)self->_notificationRepository notifyDidPerformUpdates:updatesCopy forBundleIdentifier:identifierCopy];
  }
}

- (void)notificationRepositoryDidDiscoverContentOnFirstUnlockForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UNCNotificationRepository *)self->_notificationRepository notifyDidDiscoverContentOnFirstUnlockForBundleIdentifier:identifierCopy];
  }
}

- (void)categoryRepositoryDidChangeCategoriesForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UNSNotificationCategoryRepository *)self->_categoryRepository notifyDidChangeCategoriesForBundleIdentifier:identifierCopy];
  }
}

- (void)_removeNotificationRecordsForIdentifiers:(id)identifiers bundleIdentifier:(id)identifier
{
  notificationRepository = self->_notificationRepository;
  v6 = MEMORY[0x277CBEB98];
  identifierCopy = identifier;
  v8 = [v6 setWithArray:identifiers];
  [(UNCNotificationRepository *)notificationRepository removeNotificationRecordsForIdentifiers:v8 bundleIdentifier:identifierCopy];
}

- (void)_buildForegroundAction:(id)action queue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = queueCopy;
  UNCDecodeNotificationActionSelector();
}

void __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v52 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    v16 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_2;
    block[3] = &unk_279E10508;
    v43 = *(a1 + 48);
    v42 = v15;
    dispatch_async(v16, block);

    v17 = v43;
  }

  else
  {
    v18 = MEMORY[0x277CE2060];
    v19 = *MEMORY[0x277CE2060];
    if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v45 = v11;
      v46 = 2112;
      v47 = v13;
      v48 = 2112;
      v49 = v12;
      v50 = 2112;
      v51 = v14;
      _os_log_impl(&dword_270AA8000, v19, OS_LOG_TYPE_DEFAULT, "bundleID: %@ performAction: %@ forNotification: %@ withUserText: %@", buf, 0x2Au);
    }

    v17 = [*(a1 + 40) localResponseForAction:v13 notification:v12 bundleID:v11 userText:v14];
    if (v17)
    {
      v20 = [v13 isEqual:*MEMORY[0x277CE20E8]];
      v33 = [*(a1 + 40) localActionForAction:v13 notification:v12 bundleID:v11];
      if (([v33 options] & 4) != 0 || v20)
      {
        v25 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v45 = v13;
          v46 = 2112;
          v47 = v12;
          v48 = 2112;
          v49 = v14;
          _os_log_impl(&dword_270AA8000, v25, OS_LOG_TYPE_DEFAULT, "FOREGROUND sendAction: %@ forNotification: %@ withUserText: %@", buf, 0x20u);
        }

        v26 = [v17 notification];
        v27 = [v26 request];
        v28 = [v27 content];
        v32 = [v28 launchImageName];

        v29 = *(a1 + 32);
        v30 = *(*(a1 + 40) + 16);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_80;
        v36[3] = &unk_279E10858;
        v31 = *(a1 + 48);
        v22 = v32;
        v38 = v31;
        v37 = v11;
        [v30 foregroundLaunchOptionsForApplication:v37 withResponse:v17 launchImageName:v32 origin:0 queue:v29 completionHandler:v36];
      }

      else
      {
        v21 = *(a1 + 32);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_2_82;
        v34[3] = &unk_279E10610;
        v35 = *(a1 + 48);
        dispatch_async(v21, v34);
        v22 = v35;
      }

      v24 = v33;
    }

    else
    {
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_cold_1();
      }

      v23 = *(a1 + 32);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_78;
      v39[3] = &unk_279E10610;
      v40 = *(a1 + 48);
      dispatch_async(v23, v39);
      v24 = v40;
    }
  }
}

void __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_78(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

uint64_t __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v6 + 16))(v6, a2, v4, a3);
}

void __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_2_82(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)performAction:(id)action forNotification:(id)notification inApp:(id)app withUserText:(id)text
{
  v46 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  notificationCopy = notification;
  appCopy = app;
  textCopy = text;
  v14 = MEMORY[0x277CE2060];
  v15 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v39 = appCopy;
    v40 = 2112;
    v41 = actionCopy;
    v42 = 2112;
    v43 = notificationCopy;
    v44 = 2112;
    v45 = textCopy;
    _os_log_impl(&dword_270AA8000, v15, OS_LOG_TYPE_DEFAULT, "bundleID: %@ performAction: %@ forNotification: %@ withUserText: %@", buf, 0x2Au);
  }

  v16 = [(UNSUserNotificationServer *)self localResponseForAction:actionCopy notification:notificationCopy bundleID:appCopy userText:textCopy];
  if (v16)
  {
    v17 = [(UNSUserNotificationServer *)self localActionForAction:actionCopy notification:notificationCopy bundleID:appCopy];
    options = [v17 options];
    v19 = *v14;
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if ((options & 4) != 0)
    {
      v27 = v17;
      if (v20)
      {
        *buf = 138412802;
        v39 = actionCopy;
        v40 = 2112;
        v41 = notificationCopy;
        v42 = 2112;
        v43 = textCopy;
        _os_log_impl(&dword_270AA8000, v19, OS_LOG_TYPE_DEFAULT, "FOREGROUND sendAction: %@ forNotification: %@ withUserText: %@", buf, 0x20u);
      }

      notification = [v16 notification];
      request = [notification request];
      content = [request content];
      launchImageName = [content launchImageName];

      applicationLauncher = self->_applicationLauncher;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke;
      v34[3] = &unk_279E108A8;
      v35 = actionCopy;
      v36 = notificationCopy;
      v37 = textCopy;
      [(UNSApplicationLauncher *)applicationLauncher foregroundLaunchApplication:appCopy withResponse:v16 launchImageName:launchImageName origin:0 endpoint:0 completionHandler:v34];

      v17 = v27;
    }

    else
    {
      if (v20)
      {
        *buf = 138412802;
        v39 = actionCopy;
        v40 = 2112;
        v41 = notificationCopy;
        v42 = 2112;
        v43 = textCopy;
        _os_log_impl(&dword_270AA8000, v19, OS_LOG_TYPE_DEFAULT, "BACKGROUND APPLICATION sendAction: %@ forNotification: %@ withUserText: %@", buf, 0x20u);
      }

      v21 = self->_applicationLauncher;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_85;
      v28[3] = &unk_279E108D0;
      v29 = actionCopy;
      v30 = notificationCopy;
      v31 = textCopy;
      selfCopy = self;
      v33 = appCopy;
      [(UNSApplicationLauncher *)v21 backgroundLaunchApplication:v33 withResponse:v16 completionHandler:v28];

      launchImageName = v29;
    }
  }

  else if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
  {
    __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_cold_1();
  }
}

void __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke(void *a1, char a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE2060];
  v4 = *MEMORY[0x277CE2060];
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      v6 = a1[5];
      v7 = a1[6];
      v8 = 138412802;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "FOREGROUND succeeded sendAction: %@ forNotification: %@ withUserText: %@", &v8, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_cold_1();
  }
}

void __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_85(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE2060];
  v4 = *MEMORY[0x277CE2060];
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_270AA8000, v3, OS_LOG_TYPE_DEFAULT, "BACKGROUND APPLICATION succeeded sendAction: %@ forNotification: %@ withUserText: %@", buf, 0x20u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_86;
    block[3] = &unk_279E10700;
    block[4] = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = *(a1 + 64);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_85_cold_1();
  }
}

void __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_86(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v4[0] = a1[5];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 _removeNotificationRecordsForIdentifiers:v3 bundleIdentifier:a1[6]];
}

- (id)localActionForAction:(id)action notification:(id)notification bundleID:(id)d
{
  v50 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  notificationCopy = notification;
  dCopy = d;
  bundleIdentifierToDataProvider = [(UNSDefaultDataProviderFactory *)self->_dataProviderFactory bundleIdentifierToDataProvider];
  v12 = [bundleIdentifierToDataProvider objectForKeyedSubscript:dCopy];

  if (v12)
  {
    v13 = [(UNCNotificationRepository *)self->_notificationRepository notificationRecordForIdentifier:notificationCopy bundleIdentifier:dCopy];
    v14 = v13;
    if (v13)
    {
      categoryIdentifier = [v13 categoryIdentifier];
      v16 = [(UNSNotificationCategoryRepository *)self->_categoryRepository categoryWithIdentifier:categoryIdentifier bundleIdentifier:dCopy];
      if (v16)
      {
        v17 = objc_alloc(MEMORY[0x277D77C80]);
        bundle = [v12 bundle];
        v19 = [v17 initWithBundle:bundle];

        if (v19)
        {
          v20 = [v19 notificationCategoryForNotificationCategoryRecord:v16];
          v38 = v20;
          if (v20)
          {
            v34 = v19;
            v35 = v16;
            v36 = categoryIdentifier;
            v37 = notificationCopy;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            actions = [v20 actions];
            v22 = [actions countByEnumeratingWithState:&v39 objects:v43 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v40;
              v33 = v14;
              while (2)
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v40 != v24)
                  {
                    objc_enumerationMutation(actions);
                  }

                  v26 = *(*(&v39 + 1) + 8 * i);
                  identifier = [v26 identifier];
                  v28 = [identifier isEqual:actionCopy];

                  if (v28)
                  {
                    v29 = v26;

                    notificationCopy = v37;
                    v14 = v33;
                    goto LABEL_30;
                  }
                }

                v23 = [actions countByEnumeratingWithState:&v39 objects:v43 count:16];
                v14 = v33;
                if (v23)
                {
                  continue;
                }

                break;
              }
            }

            if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
            {
              [UNSUserNotificationServer localActionForAction:notification:bundleID:];
            }

            v29 = 0;
            notificationCopy = v37;
LABEL_30:
            v16 = v35;
            categoryIdentifier = v36;
            v19 = v34;
          }

          else
          {
            v31 = *MEMORY[0x277CE2060];
            if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v45 = dCopy;
              v46 = 2112;
              v47 = v12;
              v48 = 2112;
              v49 = v16;
              _os_log_error_impl(&dword_270AA8000, v31, OS_LOG_TYPE_ERROR, "bundleID: %@ NO CATEGORY found provider: %@, categoryRecord: %@", buf, 0x20u);
            }

            v29 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
          {
            [UNSUserNotificationServer localActionForAction:notification:bundleID:];
          }

          v29 = 0;
          v19 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
        {
          [UNSUserNotificationServer localActionForAction:notification:bundleID:];
        }

        v29 = 0;
      }
    }

    else
    {
      v30 = *MEMORY[0x277CE2060];
      if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v45 = dCopy;
        v46 = 2112;
        v47 = v12;
        v48 = 2112;
        v49 = notificationCopy;
        _os_log_error_impl(&dword_270AA8000, v30, OS_LOG_TYPE_ERROR, "bundleID: %@ NO NOTIFICATION RECORD found provider: %@, notification: %@", buf, 0x20u);
      }

      v29 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServer localActionForAction:notification:bundleID:];
    }

    v29 = 0;
  }

  return v29;
}

- (id)localResponseForAction:(id)action notification:(id)notification bundleID:(id)d userText:(id)text
{
  v31 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  notificationCopy = notification;
  dCopy = d;
  textCopy = text;
  bundleIdentifierToDataProvider = [(UNSDefaultDataProviderFactory *)self->_dataProviderFactory bundleIdentifierToDataProvider];
  v15 = [bundleIdentifierToDataProvider objectForKeyedSubscript:dCopy];

  if (v15)
  {
    v16 = [(UNCNotificationRepository *)self->_notificationRepository notificationRecordForIdentifier:notificationCopy bundleIdentifier:dCopy];
    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277D77C98]);
      bundle = [v15 bundle];
      v19 = [v17 initWithBundle:bundle categoryRepository:self->_categoryRepository];

      if (v19)
      {
        v20 = [v19 notificationForNotificationRecord:v16];
        if (v20)
        {
          if (textCopy)
          {
            [MEMORY[0x277CE2018] responseWithNotification:v20 actionIdentifier:actionCopy userText:textCopy];
          }

          else
          {
            [MEMORY[0x277CE1FC8] responseWithNotification:v20 actionIdentifier:actionCopy];
          }
          v21 = ;
        }

        else
        {
          v23 = *MEMORY[0x277CE2060];
          if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
          {
            v25 = 138412802;
            v26 = dCopy;
            v27 = 2112;
            v28 = v19;
            v29 = 2112;
            v30 = v16;
            _os_log_error_impl(&dword_270AA8000, v23, OS_LOG_TYPE_ERROR, "bundleID: %@ NO NOTIFICATION found mapper: %@, record: %@", &v25, 0x20u);
          }

          v21 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
        {
          [UNSUserNotificationServer localResponseForAction:notification:bundleID:userText:];
        }

        v21 = 0;
      }
    }

    else
    {
      v22 = *MEMORY[0x277CE2060];
      if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
      {
        v25 = 138412802;
        v26 = dCopy;
        v27 = 2112;
        v28 = v15;
        v29 = 2112;
        v30 = notificationCopy;
        _os_log_error_impl(&dword_270AA8000, v22, OS_LOG_TYPE_ERROR, "bundleID: %@ NO NOTIFICATION RECORD found provider: %@, notification: %@", &v25, 0x20u);
      }

      v21 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_ERROR))
    {
      [UNSUserNotificationServer localActionForAction:notification:bundleID:];
    }

    v21 = 0;
  }

  return v21;
}

- (void)_removePushStore
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [(NSString *)self->_libraryDirectory stringByAppendingPathComponent:@"SpringBoard"];
  v3 = [v2 stringByAppendingPathComponent:@"PushStore"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:v3])
  {
    v8 = 0;
    v5 = [defaultManager removeItemAtPath:v3 error:&v8];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      v7 = *MEMORY[0x277CE2098];
      if (os_log_type_enabled(*MEMORY[0x277CE2098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&dword_270AA8000, v7, OS_LOG_TYPE_DEFAULT, "Removing PushStore failed: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)_addObserverForLocaleChanges
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__localeDidChange name:*MEMORY[0x277CBE620] object:0];
}

- (void)_addObserverForBackgroundRefreshApplicationChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _UNSBackgroundRefreshApplicationsDidChange, @"kKeepAppsUpToDateEnabledChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_addObserverForApplicationWorkspaceChanges
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace addObserver:self];
}

- (void)_addObserverForSignificantTimeChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _UNSTimeDidChangeSignificantly, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void __56__UNSUserNotificationServer__ensureAttachmentsIntegrity__block_invoke()
{
  v0 = *MEMORY[0x277CE2068];
  if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270AA8000, v0, OS_LOG_TYPE_DEFAULT, "Attachment integrity check complete", v1, 2u);
  }
}

- (void)_didChangeProcessState:(id)state forBundleIdentifier:(id)identifier
{
  applicationService = self->_applicationService;
  identifierCopy = identifier;
  stateCopy = state;
  [(UNSApplicationService *)applicationService didChangeProcessState:stateCopy forBundleIdentifier:identifierCopy];
  [(UNSNotificationAuthorizationService *)self->_notificationAuthorizationService didChangeProcessState:stateCopy forBundleIdentifier:identifierCopy];
  [(UNCRemoteNotificationServer *)self->_remoteNotificationService didChangeProcessState:stateCopy forBundleIdentifier:identifierCopy];
}

- (void)_installedSourceQueue_notificationSourcesDidInstall:(id)install
{
  installedSourceQueue = self->_installedSourceQueue;
  installCopy = install;
  dispatch_assert_queue_V2(installedSourceQueue);
  [(UNCLocalizationService *)self->_localizationService notificationSourcesDidInstall:installCopy];
  [(UNSDefaultDataProviderFactory *)self->_dataProviderFactory notificationSourcesDidInstall:installCopy];
  [(UNCNotificationRepository *)self->_notificationRepository notificationSourcesDidInstall:installCopy];
  [(UNCRemoteNotificationServer *)self->_remoteNotificationService notificationSourcesDidInstall:installCopy];
}

- (void)_installedSourceQueue_notificationSourcesDidUninstall:(id)uninstall
{
  installedSourceQueue = self->_installedSourceQueue;
  uninstallCopy = uninstall;
  dispatch_assert_queue_V2(installedSourceQueue);
  [(UNSDefaultDataProviderFactory *)self->_dataProviderFactory notificationSourcesDidUninstall:uninstallCopy];
  [(UNSAttachmentsService *)self->_attachmentsService notificationSourcesDidUninstall:uninstallCopy];
  [(UNCNotificationRepository *)self->_notificationRepository notificationSourcesDidInstall:uninstallCopy];
  [(UNCNotificationSchedulingService *)self->_notificationSchedulingService notificationSourcesDidUninstall:uninstallCopy];
  [(UNCRemoteNotificationServer *)self->_remoteNotificationService notificationSourcesDidUninstall:uninstallCopy];
  [(UNCNotificationScheduleRepository *)self->_notificationScheduleRepository notificationSourcesDidUninstall:uninstallCopy];
  [(UNCPendingNotificationRepository *)self->_pendingNotificationRepository notificationSourcesDidUninstall:uninstallCopy];
  [(UNSNotificationCategoryRepository *)self->_categoryRepository notificationSourcesDidUninstall:uninstallCopy];
  [(UNCNotificationTopicRepository *)self->_topicRepository notificationSourcesDidUninstall:uninstallCopy];
  [(UNCLocalizationService *)self->_localizationService notificationSourcesDidUninstall:uninstallCopy];
  [(UNSUserNotificationServer *)self _removeNotificationSourceDirectories:uninstallCopy];
  [(UNSUserNotificationServer *)self _removeBundleLibrarianMappingsForSourceDescriptions:uninstallCopy];
}

- (void)_removeNotificationSourceDirectories:(id)directories
{
  v29 = *MEMORY[0x277D85DE8];
  directoriesCopy = directories;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = directoriesCopy;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    *&v7 = 138543618;
    v17 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        bundleIdentifier = [*(*(&v20 + 1) + 8 * v10) bundleIdentifier];
        v12 = [(UNCBundleLibrarian *)self->_librarian uniqueIdentifierForBundleIdentifier:bundleIdentifier];
        v13 = [(NSString *)self->_directory stringByAppendingPathComponent:v12];
        if ([defaultManager fileExistsAtPath:v13])
        {
          v19 = 0;
          v14 = [defaultManager removeItemAtPath:v13 error:&v19];
          v15 = v19;
          if ((v14 & 1) == 0)
          {
            v16 = *MEMORY[0x277CE2098];
            if (os_log_type_enabled(*MEMORY[0x277CE2098], OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v25 = v13;
              v26 = 2114;
              v27 = v15;
              _os_log_impl(&dword_270AA8000, v16, OS_LOG_TYPE_DEFAULT, "Removing bundle directory '%{public}@' failed: %{public}@", buf, 0x16u);
            }
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }
}

- (void)_removeBundleLibrarianMappingsForSourceDescriptions:(id)descriptions
{
  v15 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [descriptionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(descriptionsCopy);
        }

        bundleIdentifier = [*(*(&v10 + 1) + 8 * v8) bundleIdentifier];
        [(UNCBundleLibrarian *)self->_librarian removeMappingForBundleIdentifier:bundleIdentifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [descriptionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void __76__UNSUserNotificationServer__buildForegroundAction_queue_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __78__UNSUserNotificationServer_performAction_forNotification_inApp_withUserText___block_invoke_85_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)localActionForAction:notification:bundleID:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end