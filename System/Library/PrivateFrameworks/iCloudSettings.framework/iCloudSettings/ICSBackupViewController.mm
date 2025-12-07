@interface ICSBackupViewController
- (BOOL)isBackupEnabled;
- (BOOL)policyPreventsBackup;
- (BYBuddyDaemonCloudSyncClient)cloudSyncClient;
- (ICSBackupViewController)initWithAccount:(id)account;
- (id)_backgroundRestoreInfoText:(id)text;
- (id)_buildBackupSpecifiersWithTip:(id)tip;
- (id)_buildHeaderCardSpecifier;
- (id)cachedIsBackupEnabledNumber;
- (id)dateStringOfLatestBackup;
- (id)isBackupOverCellularEnabled;
- (id)manageStorageAction;
- (id)specifiers;
- (void)_backupEnabledSwitchCancelled:(id)cancelled;
- (void)_checkSupportForManualAndAutoBackupOnCellularWithCompletion:(id)completion;
- (void)_fetchiCloudHomeData;
- (void)_persistBackupEnablementState:(BOOL)state passcode:(id)passcode;
- (void)_postQuotaDidChangeNotification;
- (void)_setBackupEnabled:(BOOL)enabled passcode:(id)passcode;
- (void)_showAlertForExpensiveCellular;
- (void)_updateToBackupState:(id)state restoreState:(id)restoreState backgroundRestoreState:(id)backgroundRestoreState backupEnabled:(BOOL)enabled;
- (void)_updateToBackupState:(int)state backupError:(id)error progress:(float)progress timeRemaining:(unint64_t)remaining restoreStateInfo:(id)info backgroundRestoreInfo:(id)restoreInfo backupEnabled:(BOOL)enabled;
- (void)beginBackup:(id)backup;
- (void)cancelBackup:(id)backup;
- (void)cancelRestore:(id)restore;
- (void)checkIfNetworkSupportsBackup;
- (void)checkIfThermalSupportsBackup;
- (void)dealloc;
- (void)didCancelEnteringPIN;
- (void)fetchIsBackupEnabled;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)manager:(id)manager didFailBackupWithError:(id)error;
- (void)manager:(id)manager didFailRestoreWithError:(id)error;
- (void)manager:(id)manager didSetBackupEnabled:(BOOL)enabled;
- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining;
- (void)managerDidCancelRestore:(id)restore;
- (void)managerDidFinishBackup:(id)backup;
- (void)managerDidFinishRestore:(id)restore;
- (void)managerDidLoseConnectionToService:(id)service;
- (void)managerDidUpdateBackgroundRestoreProgress:(id)progress;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openBackupHelpPage:(id)page;
- (void)performTipAction:(id)action;
- (void)prepareAlertForBackupDisabledDomainAndShow:(BOOL)show;
- (void)proceedWithBackup;
- (void)reloadSpecifiers;
- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated;
- (void)setBackupEnabled:(id)enabled specifier:(id)specifier;
- (void)setBackupOverCellularEnabled:(id)enabled;
- (void)setLastBackupDateString:(id)string;
- (void)setNetworkSupportsBackup:(BOOL)backup;
- (void)showAlertForBackupDisabledItemsWithTitle:(id)title andMessage:(id)message;
- (void)showPopUpAlertForBackupDisabledApps;
- (void)startBackup;
- (void)startListeningForThermalChanges;
- (void)syncCompletedWithErrors:(id)errors;
- (void)syncProgress:(double)progress;
- (void)updateBackupFinishState;
- (void)updateBusyState;
- (void)updateLastBackupDateInvalidatePrevious:(BOOL)previous;
- (void)updateiCloudBackupAndSyncProgressWithAllowDecrease:(BOOL)decrease;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willUnlock;
@end

@implementation ICSBackupViewController

- (ICSBackupViewController)initWithAccount:(id)account
{
  accountCopy = account;
  v20.receiver = self;
  v20.super_class = ICSBackupViewController;
  v6 = [(ICSBackupViewController *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    v8 = objc_alloc(MEMORY[0x277D28A40]);
    personaIdentifier = [(ACAccount *)v7->_account personaIdentifier];
    v10 = [v8 initWithDelegate:v7 eventQueue:0 personaIdentifier:personaIdentifier];
    backupManager = v7->_backupManager;
    v7->_backupManager = v10;

    v12 = dispatch_queue_create("com.apple.preferences.backup_state", 0);
    backup_state_queue = v7->_backup_state_queue;
    v7->_backup_state_queue = v12;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, appleAccountChangedCallback, *MEMORY[0x277CEC690], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7->_thermalNotificationToken = -1;
    v7->_thermalSupportsBackup = 1;
    v7->_currentSyncState = 0;
    v7->_updateBackupState = 0;
    v7->_icloudSyncProgress = 0.0;
    v7->_icloudBackupProgress = 0.0;
    v7->_estimateTimeRemaining = 0;
    v7->_isFetchingDomainInfo = 0;
    v7->_needToShowPopupAlertForBackup = 0;
    [(ICSBackupViewController *)v7 _checkSupportForManualAndAutoBackupOnCellularWithCompletion:0];
    v15 = objc_opt_new();
    pathEvaluator = v7->_pathEvaluator;
    v7->_pathEvaluator = v15;

    [(NWPathEvaluator *)v7->_pathEvaluator addObserver:v7 forKeyPath:@"path" options:5 context:0];
    [(ICSBackupViewController *)v7 fetchIsBackupEnabled];
    if ([accountCopy aa_isAccountClass:*MEMORY[0x277CEC688]] && (objc_msgSend(accountCopy, "aa_isManagedAppleID") & 1) == 0)
    {
      [(ICSBackupViewController *)v7 _fetchiCloudHomeData];
    }

    v17 = [[_TtC14iCloudSettings22ICSAnalyticsController alloc] initWithAccount:accountCopy];
    analyticsController = v7->_analyticsController;
    v7->_analyticsController = v17;
  }

  return v7;
}

- (void)willUnlock
{
  [(ICSBackupViewController *)self updateBusyState];

  [(ICSBackupViewController *)self updateLastBackupDate];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = ICSBackupViewController;
  [(ICSBackupViewController *)&v7 viewWillAppear:appear];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BACKUPS_NAV_TITLE" value:&stru_288487370 table:@"Localizable-Backup"];
  [(ICSBackupViewController *)self setTitle:v5];

  backupDisabledAppsInfo = self->_backupDisabledAppsInfo;
  self->_backupDisabledAppsInfo = 0;

  [(ICSBackupViewController *)self prepareAlertForBackupDisabledDomainAndShow:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = ICSBackupViewController;
  [(ICSBackupViewController *)&v12 viewDidAppear:appear];
  if (([(ICSBackupViewController *)self isMovingToParentViewController]& 1) == 0)
  {
    mEMORY[0x277D7F4C0] = [MEMORY[0x277D7F4C0] sharedManager];
    [mEMORY[0x277D7F4C0] noteQuotaInfoChanged];
  }

  v5 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__ICSBackupViewController_viewDidAppear___block_invoke;
  v11[3] = &unk_27A666198;
  v11[4] = self;
  dispatch_async(v5, v11);

  [(ICSBackupViewController *)self checkIfNetworkSupportsBackup];
  [(ICSBackupViewController *)self startListeningForThermalChanges];
  [(ICSBackupViewController *)self checkIfThermalSupportsBackup];
  v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"settings-navigation://com.apple.Settings.AppleAccount/ICLOUD_SERVICE/BACKUP"];
  v7 = +[ICSDeviceExpertManager backupTitle];
  v8 = +[ICSDeviceExpertManager appleAccountTitle];
  v13[0] = v8;
  v9 = +[ICSDeviceExpertManager iCloudTitle];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [(ICSBackupViewController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.application-icon.icloud" title:v7 localizedNavigationComponents:v10 deepLink:v6];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ICSBackupViewController;
  [(ICSBackupViewController *)&v4 viewWillDisappear:disappear];
  [(ICSBackupViewController *)self stopListeningForThermalChanges];
  self->_needToShowPopupAlertForBackup = 0;
}

- (void)dealloc
{
  [(ICSBackupViewController *)self dismissViewControllerAnimated:0 completion:0];
  [(NWPathEvaluator *)self->_pathEvaluator removeObserver:self forKeyPath:@"path" context:0];
  [(ICSBackupViewController *)self stopListeningForThermalChanges];
  [(MBManager *)self->_backupManager setDelegate:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CEC690], 0);
  v4.receiver = self;
  v4.super_class = ICSBackupViewController;
  [(ICSBackupViewController *)&v4 dealloc];
}

- (BYBuddyDaemonCloudSyncClient)cloudSyncClient
{
  cloudSyncClient = self->_cloudSyncClient;
  if (!cloudSyncClient)
  {
    v4 = objc_opt_new();
    v5 = self->_cloudSyncClient;
    self->_cloudSyncClient = v4;

    [(BYBuddyDaemonCloudSyncClient *)self->_cloudSyncClient setDelegate:self];
    cloudSyncClient = self->_cloudSyncClient;
  }

  return cloudSyncClient;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"path", object, change, context}])
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__ICSBackupViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v7[3] = &unk_27A666AD8;
    objc_copyWeak(&v8, &location);
    dispatch_async(MEMORY[0x277D85CD0], v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __74__ICSBackupViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkIfNetworkSupportsBackup];
}

- (void)setNetworkSupportsBackup:(BOOL)backup
{
  backupCopy = backup;
  networkSupportsBackup = self->_networkSupportsBackup;
  if (!networkSupportsBackup || [(NSNumber *)networkSupportsBackup BOOLValue]!= backup)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:backupCopy];
    v7 = self->_networkSupportsBackup;
    self->_networkSupportsBackup = v6;

    [(ICSBackupViewController *)self updateBusyState];

    [(ICSBackupViewController *)self updateLastBackupDate];
  }
}

- (void)checkIfNetworkSupportsBackup
{
  v23 = *MEMORY[0x277D85DE8];
  pathEvaluator = [(ICSBackupViewController *)self pathEvaluator];
  path = [pathEvaluator path];

  v5 = [path status] & 0xFFFFFFFFFFFFFFFDLL;
  interface = [path interface];
  type = [interface type];

  isExpensiveCellular = self->_isExpensiveCellular;
  self->_isExpensiveCellular = 0;

  if (v5 != 1)
  {
    goto LABEL_7;
  }

  v10 = 1;
  v9 = [path usesInterfaceType:1];
  if ((v9 & 1) == 0)
  {
    v9 = [path usesInterfaceType:3];
    if (v9)
    {
      v10 = 1;
      goto LABEL_8;
    }

    v9 = [path usesInterfaceType:2];
    if (v9)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(path, "isExpensive")}];
      v12 = self->_isExpensiveCellular;
      self->_isExpensiveCellular = v11;

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55__ICSBackupViewController_checkIfNetworkSupportsBackup__block_invoke;
      v15[3] = &unk_27A666B00;
      v15[4] = self;
      v15[5] = type;
      v16 = 0;
      [(ICSBackupViewController *)self _checkSupportForManualAndAutoBackupOnCellularWithCompletion:v15];
      goto LABEL_11;
    }

LABEL_7:
    v10 = 0;
  }

LABEL_8:
  v13 = LogSubsystem(v9);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_isExpensiveCellular;
    *buf = 134218498;
    v18 = type;
    v19 = 2112;
    v20 = v14;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&dword_275819000, v13, OS_LOG_TYPE_DEFAULT, "Network interfaceType: %ld. Expensive cellular: %@. Network supports backup: %d", buf, 0x1Cu);
  }

  [(ICSBackupViewController *)self setNetworkSupportsBackup:v10];
LABEL_11:
}

uint64_t __55__ICSBackupViewController_checkIfNetworkSupportsBackup__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 1488);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = 134218498;
    v8 = v4;
    v9 = 2112;
    v10 = v3;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Network interfaceType: %ld. Expensive cellular: %@. Network supports backup: %d", &v7, 0x1Cu);
  }

  return [*(a1 + 32) setNetworkSupportsBackup:*(*(a1 + 32) + 1496)];
}

- (void)_checkSupportForManualAndAutoBackupOnCellularWithCompletion:(id)completion
{
  completionCopy = completion;
  self->_isAutoBackupOnCellularAllowed = 0;
  self->_isManualBackupOnCellularAllowed = 0;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke;
  v7[3] = &unk_27A666600;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[183];
    v5 = v3[182];
    v15 = 0;
    v6 = [v4 backupOnCellularSupportWithAccount:v5 error:&v15];
    v7 = v15;
    v8 = v7;
    if (v7)
    {
      v9 = LogSubsystem(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke_cold_1();
      }
    }

    else
    {
      *(v3 + 1496) = v6 & 1;
      *(v3 + 1497) = (v6 & 2) != 0;
    }

    v10 = LogSubsystem(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v3 + 1496);
      v12 = *(v3 + 1497);
      *buf = 67109376;
      v17 = v11;
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "ManualBackupOnCellularAllowed: %d. AutoBackupOnCellularAllowed: %d", buf, 0xEu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke_377;
    v13[3] = &unk_27A666238;
    v14 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }

  else
  {
    v8 = LogSubsystem(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke_cold_2(a1, v8);
    }
  }
}

uint64_t __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke_377(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)startListeningForThermalChanges
{
  objc_initWeak(&location, self);
  if (self->_thermalNotificationToken == -1)
  {
    v3 = *MEMORY[0x277D85E48];
    v4 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __58__ICSBackupViewController_startListeningForThermalChanges__block_invoke;
    handler[3] = &unk_27A666B28;
    objc_copyWeak(&v7, &location);
    handler[4] = self;
    notify_register_dispatch(v3, &self->_thermalNotificationToken, v4, handler);

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

void __58__ICSBackupViewController_startListeningForThermalChanges__block_invoke(uint64_t a1, int token)
{
  v14 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(token, &state64);
  v4 = LogSubsystem(state);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = state64;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "received thermal pressure notification: %llu", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(*(a1 + 32) + 1512);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__ICSBackupViewController_startListeningForThermalChanges__block_invoke_378;
    block[3] = &unk_27A666A68;
    v10 = state64;
    v9 = WeakRetained;
    dispatch_async(v7, block);
  }
}

uint64_t __58__ICSBackupViewController_startListeningForThermalChanges__block_invoke_378(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = LogSubsystem(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 >= 0x14)
  {
    if (v4)
    {
      *buf = 0;
      v5 = "Restore paused due to thermal pressure.";
      v6 = buf;
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    v8 = 0;
    v5 = "Restore resumed due to thermal pressure.";
    v6 = &v8;
LABEL_6:
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
  }

  return [*(a1 + 32) setThermalSupportsBackup:v2 < 0x14];
}

- (void)checkIfThermalSupportsBackup
{
  out_token = 0;
  v3 = 0;
  if (!notify_register_check(*MEMORY[0x277D85E48], &out_token))
  {
    if (!notify_get_state(out_token, &v3))
    {
      [(ICSBackupViewController *)self setThermalSupportsBackup:v3 < 0x14];
    }

    notify_cancel(out_token);
  }
}

- (id)_buildHeaderCardSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BACKUP_HEADER_TITLE" value:&stru_288487370 table:@"Localizable-Backup"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  traitCollection = [(ICSBackupViewController *)self traitCollection];
  LODWORD(v5) = [traitCollection pe_isSettingsFeatureDescriptionCellSupported];

  if (v5)
  {
    [v6 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v6 setObject:@"com.apple.graphic-icon.icloud-backup" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    [v6 setIdentifier:@"BackupHeader"];
    policyPreventsBackup = [(ICSBackupViewController *)self policyPreventsBackup];
    v9 = policyPreventsBackup;
    v10 = LogSubsystem(policyPreventsBackup);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "Backup is not allowed! Omitting backup subtitle since policy doesn't allow backup", buf, 2u);
      }

      v12 = @" ";
    }

    else
    {
      if (v11)
      {
        *v35 = 0;
        _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "Backup is allowed, setting backup info text", v35, 2u);
      }

      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"BACKUPS_INFO_TEXT"];
      v10 = [v25 localizedStringForKey:v26 value:&stru_288487370 table:@"Localizable-Backup"];

      v27 = MEMORY[0x277CCACA8];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"BACKUPS_INFO_LEARN_MORE" value:&stru_288487370 table:@"Localizable-Backup"];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"BACKUP_HELP_PAGE_URL" value:&stru_288487370 table:@"Localizable-Backup"];
      v32 = [v27 stringWithFormat:@"[%@](%@)", v29, v31];

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v32];
    }

    [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x277D40160]];
  }

  else
  {
    [v6 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v13 = [ICSDefaultIconLoader graphicIconWithType:0 size:120.0, 120.0];
    [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FFC0]];

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"BACKUP_HEADER_TITLE" value:&stru_288487370 table:@"Localizable-Backup"];
    [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277D40170]];

    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"BACKUPS_INFO_LEARN_MORE" value:&stru_288487370 table:@"Localizable-Backup"];
    [v6 setObject:v17 forKeyedSubscript:ICQUILearnMoreTextKey];

    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"BACKUP_HELP_PAGE_URL" value:&stru_288487370 table:@"Localizable-Backup"];
    [v6 setObject:v19 forKeyedSubscript:ICQUILearnMoreLinkKey];

    policyPreventsBackup2 = [(ICSBackupViewController *)self policyPreventsBackup];
    if ((policyPreventsBackup2 & 1) == 0)
    {
      v21 = LogSubsystem(policyPreventsBackup2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&dword_275819000, v21, OS_LOG_TYPE_DEFAULT, "Backup is allowed, setting backup info text", v34, 2u);
      }

      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"BACKUPS_INFO_TEXT"];
      v24 = [v22 localizedStringForKey:v23 value:&stru_288487370 table:@"Localizable-Backup"];
      [v6 setObject:v24 forKeyedSubscript:*MEMORY[0x277D40160]];
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  }

  return v6;
}

- (void)reloadSpecifiers
{
  if (self->_finishedInitialLoad)
  {
    [(ICSBackupViewController *)self updateBusyState];

    [(ICSBackupViewController *)self updateLastBackupDate];
  }

  else
  {
    v3.receiver = self;
    v3.super_class = ICSBackupViewController;
    [(ICSBackupViewController *)&v3 reloadSpecifiers];
  }
}

- (id)specifiers
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.iCloudQuotaUI"];
    v6 = [(ICSBackupViewController *)self loadSpecifiersFromPlistName:@"Backup" target:self bundle:v5];

    v7 = [v6 specifierForID:@"BACKUP_ENABLED_SWITCH"];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"BACKUP_ENABLED_SWITCH"];
    v10 = [v8 localizedStringForKey:v9 value:&stru_288487370 table:@"Localizable-Backup"];
    [v7 setName:v10];

    v11 = *MEMORY[0x277D3FD80];
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
    v12 = [v6 specifierForID:@"BACKUP_SWITCH_GROUP"];
    if (!v12)
    {
      [ICSBackupViewController specifiers];
    }

    v13 = v12;
    [v12 setName:0];
    _buildHeaderCardSpecifier = [(ICSBackupViewController *)self _buildHeaderCardSpecifier];
    v15 = [v6 count];
    if (v15 >= 2)
    {
      v16 = LogSubsystem(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v60 = 1;
        _os_log_impl(&dword_275819000, v16, OS_LOG_TYPE_DEFAULT, "Inserting header specifier for backup controller at index: %d", buf, 8u);
      }

      [v6 insertObject:_buildHeaderCardSpecifier atIndex:1];
    }

    if (!self->_backupOverCellularSpecifiers)
    {
      v17 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BACKUP_OVER_CELLULAR_GROUP"];
      v52 = v13;
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      SFLocalizableWAPIStringKeyForKey();
      v54 = v7;
      v19 = v56 = v11;
      v20 = [v18 localizedStringForKey:v19 value:&stru_288487370 table:@"Localizable-Backup"];
      [v17 setObject:v20 forKeyedSubscript:*MEMORY[0x277D3FF88]];

      v21 = MEMORY[0x277D3FAD8];
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"BACKUP_OVER_CELLULAR_ENABLED_SWITCH"];
      v24 = [v22 localizedStringForKey:v23 value:&stru_288487370 table:@"Localizable-Backup"];
      v25 = [v21 preferenceSpecifierNamed:v24 target:self set:sel_setBackupOverCellularEnabled_ get:sel_isBackupOverCellularEnabled detail:0 cell:6 edit:0];
      backupOverCellularSwitch = self->_backupOverCellularSwitch;
      self->_backupOverCellularSwitch = v25;

      v11 = v56;
      v13 = v52;

      v7 = v54;
      [(PSSpecifier *)self->_backupOverCellularSwitch setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
      [(PSSpecifier *)self->_backupOverCellularSwitch setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v56];
      [(PSSpecifier *)self->_backupOverCellularSwitch setObject:@"BACKUP_OVER_CELLULAR_ENABLED_SWITCH" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
      v27 = self->_backupOverCellularSwitch;
      v58[0] = v17;
      v58[1] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
      backupOverCellularSpecifiers = self->_backupOverCellularSpecifiers;
      self->_backupOverCellularSpecifiers = v28;
    }

    if (!self->_backupNowSpecifiers)
    {
      v57 = v11;
      emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v55 = *MEMORY[0x277D3FFB8];
      [emptyGroupSpecifier setProperty:@"BACKUP_NOW_GROUP" forKey:?];
      if (!self->_backupStatusView)
      {
        v31 = [[ICSBackupStatusView alloc] initWithSpecifier:emptyGroupSpecifier];
        backupStatusView = self->_backupStatusView;
        self->_backupStatusView = v31;
      }

      v33 = [objc_opt_class() description];
      [emptyGroupSpecifier setProperty:v33 forKey:*MEMORY[0x277D3FF48]];

      [emptyGroupSpecifier setProperty:self->_backupStatusView forKey:*MEMORY[0x277D3FF90]];
      if (!self->_backupNowButton)
      {
        v53 = MEMORY[0x277D3FAD8];
        v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v34 localizedStringForKey:@"BACKUP_NOW" value:&stru_288487370 table:@"Localizable-Backup"];
        v35 = v13;
        v37 = v36 = v7;
        v38 = [v53 preferenceSpecifierNamed:v37 target:self set:0 get:0 detail:0 cell:13 edit:0];
        backupNowButton = self->_backupNowButton;
        self->_backupNowButton = v38;

        v7 = v36;
        v13 = v35;

        v40 = self->_backupNowButton;
        v41 = [MEMORY[0x277CCABB0] numberWithBool:0];
        [(PSSpecifier *)v40 setProperty:v41 forKey:*MEMORY[0x277D3FF38]];

        [(PSSpecifier *)self->_backupNowButton setProperty:@"BACKUP_NOW_BUTTON" forKey:v55];
        [(PSSpecifier *)self->_backupNowButton setProperty:MEMORY[0x277CBEC38] forKey:v57];
        [(PSSpecifier *)self->_backupNowButton setButtonAction:sel_beginBackup_];
      }

      v42 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{emptyGroupSpecifier, self->_backupNowButton, 0}];
      backupNowSpecifiers = self->_backupNowSpecifiers;
      self->_backupNowSpecifiers = v42;
    }

    backupSpecifierProvider = self->_backupSpecifierProvider;
    if (!backupSpecifierProvider)
    {
      v45 = [objc_alloc(MEMORY[0x277D7F480]) initWithAccount:self->_account presenter:self];
      v46 = self->_backupSpecifierProvider;
      self->_backupSpecifierProvider = v45;

      backupSpecifierProvider = self->_backupSpecifierProvider;
    }

    specifiers = [(AAUISpecifierProvider *)backupSpecifierProvider specifiers];
    v48 = [specifiers count];

    if (v48)
    {
      specifiers2 = [(AAUISpecifierProvider *)self->_backupSpecifierProvider specifiers];
      [v6 addObjectsFromArray:specifiers2];
    }

    v50 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v6;

    self->_finishedInitialLoad = 1;
    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)prepareAlertForBackupDisabledDomainAndShow:(BOOL)show
{
  self->_needToShowPopupAlertForBackup = show;
  if (!self->_isFetchingDomainInfo)
  {
    self->_isFetchingDomainInfo = 1;
    PSGBackupUtilsClass_0 = getPSGBackupUtilsClass_0();
    backupManager = self->_backupManager;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__ICSBackupViewController_prepareAlertForBackupDisabledDomainAndShow___block_invoke;
    v6[3] = &unk_27A666B50;
    v6[4] = self;
    [PSGBackupUtilsClass_0 fetchBackupDisabledAppsWithBackupManager:backupManager completion:v6];
  }
}

void __70__ICSBackupViewController_prepareAlertForBackupDisabledDomainAndShow___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(a1 + 32) + 1640), a2);
  *(*(a1 + 32) + 1593) = 0;
  v4 = *(a1 + 32);
  if (v4[1594] == 1)
  {
    [v4 showPopUpAlertForBackupDisabledApps];
    *(*(a1 + 32) + 1594) = 0;
  }
}

- (BOOL)policyPreventsBackup
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E30]] == 2;

  return v3;
}

- (void)fetchIsBackupEnabled
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LogSubsystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[ICSBackupViewController fetchIsBackupEnabled]";
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  backup_state_queue = self->_backup_state_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ICSBackupViewController_fetchIsBackupEnabled__block_invoke;
  block[3] = &unk_27A666198;
  block[4] = self;
  dispatch_async(backup_state_queue, block);
}

void __47__ICSBackupViewController_fetchIsBackupEnabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isBackupEnabled];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__ICSBackupViewController_fetchIsBackupEnabled__block_invoke_2;
  v3[3] = &unk_27A666B78;
  v4 = v2;
  v3[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __47__ICSBackupViewController_fetchIsBackupEnabled__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[ICSBackupViewController fetchIsBackupEnabled]_block_invoke_2";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "%s, Caching backup enabled: %d, reloading", &v5, 0x12u);
  }

  *(*(a1 + 32) + 1501) = *(a1 + 40);
  return [*(a1 + 32) reloadSpecifiers];
}

- (BOOL)isBackupEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  policyPreventsBackup = [(ICSBackupViewController *)self policyPreventsBackup];
  if (policyPreventsBackup)
  {
    v4 = LogSubsystem(policyPreventsBackup);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Backup not enabled because policy prevents backup", &v8, 2u);
    }

    LOBYTE(isBackupEnabled) = 0;
  }

  else
  {
    isBackupEnabled = [(MBManager *)self->_backupManager isBackupEnabled];
    v4 = LogSubsystem(isBackupEnabled);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      backupManager = self->_backupManager;
      v8 = 136315650;
      v9 = "[ICSBackupViewController isBackupEnabled]";
      v10 = 1024;
      v11 = isBackupEnabled;
      v12 = 2112;
      v13 = backupManager;
      _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "%s, returning: %d, backup manager: %@", &v8, 0x1Cu);
    }
  }

  return isBackupEnabled;
}

- (id)cachedIsBackupEnabledNumber
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = LogSubsystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    backupEnabled = self->_backupEnabled;
    v7 = 136315394;
    v8 = "[ICSBackupViewController cachedIsBackupEnabledNumber]";
    v9 = 1024;
    v10 = backupEnabled;
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", &v7, 0x12u);
  }

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_backupEnabled];

  return v5;
}

- (void)_setBackupEnabled:(BOOL)enabled passcode:(id)passcode
{
  enabledCopy = enabled;
  v29 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  v7 = LogSubsystem(passcodeCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[ICSBackupViewController _setBackupEnabled:passcode:]";
    v27 = 1024;
    v28 = enabledCopy;
    _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", buf, 0x12u);
  }

  if (enabledCopy)
  {
    [(ICSBackupViewController *)self _persistBackupEnablementState:1 passcode:passcodeCopy];
  }

  else
  {
    v8 = MEMORY[0x277D75110];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DISABLE_WARNING_MESSAGE"];
    v11 = [v9 localizedStringForKey:v10 value:&stru_288487370 table:@"Localizable-Backup"];
    v12 = [v8 alertControllerWithTitle:0 message:v11 preferredStyle:0];

    v13 = MEMORY[0x277D750F8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"DISABLE_CONFIRM" value:&stru_288487370 table:@"Localizable-Backup"];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __54__ICSBackupViewController__setBackupEnabled_passcode___block_invoke;
    v22[3] = &unk_27A666BA0;
    v22[4] = self;
    v24 = 0;
    v23 = passcodeCopy;
    v16 = [v13 actionWithTitle:v15 style:2 handler:v22];
    [v12 addAction:v16];

    v17 = MEMORY[0x277D750F8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"DISABLE_CANCEL" value:&stru_288487370 table:@"Localizable-Backup"];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__ICSBackupViewController__setBackupEnabled_passcode___block_invoke_467;
    v21[3] = &unk_27A666750;
    v21[4] = self;
    v20 = [v17 actionWithTitle:v19 style:1 handler:v21];
    [v12 addAction:v20];

    [(ICSBackupViewController *)self presentViewController:v12 animated:1 completion:&__block_literal_global_5];
  }
}

uint64_t __54__ICSBackupViewController__setBackupEnabled_passcode___block_invoke(uint64_t a1)
{
  v2 = LogSubsystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Confirmed disable backup", v4, 2u);
  }

  return [*(a1 + 32) _persistBackupEnablementState:*(a1 + 48) passcode:*(a1 + 40)];
}

uint64_t __54__ICSBackupViewController__setBackupEnabled_passcode___block_invoke_467(uint64_t a1)
{
  v2 = LogSubsystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "User cancelled disable backup", v4, 2u);
  }

  [*(a1 + 32) reloadSpecifiers];
  return [*(*(a1 + 32) + 1584) sendBackupToggleEventWithActionType:2];
}

void __54__ICSBackupViewController__setBackupEnabled_passcode___block_invoke_468(uint64_t a1)
{
  v1 = LogSubsystem(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_275819000, v1, OS_LOG_TYPE_DEFAULT, "Presenting confirmation alert for Turn off iCloud Backup", v2, 2u);
  }
}

- (void)_persistBackupEnablementState:(BOOL)state passcode:(id)passcode
{
  stateCopy = state;
  v34 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  v7 = LogSubsystem(passcodeCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ICSBackupViewController _persistBackupEnablementState:passcode:]";
    *&buf[12] = 1024;
    *&buf[14] = stateCopy;
    _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", buf, 0x12u);
  }

  [(ICSBackupStatusView *)self->_backupStatusView setFooterText:0];
  v8 = [(ICSBackupStatusView *)self->_backupStatusView setBackupError:0];
  if (!stateCopy)
  {
    backupNowButton = self->_backupNowButton;
    v10 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v11 = *MEMORY[0x277D3FF38];
    [(PSSpecifier *)backupNowButton setProperty:v10 forKey:*MEMORY[0x277D3FF38]];

    [(ICSBackupViewController *)self reloadSpecifier:self->_backupNowButton];
    [(PSSpecifier *)self->_backupOverCellularSwitch setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v11];
    v8 = [(ICSBackupViewController *)self reloadSpecifier:self->_backupOverCellularSwitch];
  }

  v12 = LogSubsystem(v8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ICSBackupViewController _persistBackupEnablementState:passcode:]";
    _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "%s disabling user interaction", buf, 0xCu);
  }

  view = [(ICSBackupViewController *)self view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__2;
  v32 = __Block_byref_object_dispose__2;
  v33 = objc_alloc_init(MEMORY[0x277D758E8]);
  [*(*&buf[8] + 40) setAutoresizingMask:45];
  [*(*&buf[8] + 40) setFontSize:16];
  v15 = *(*&buf[8] + 40);
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (stateCopy)
  {
    [v16 localizedStringForKey:@"TURNING_ON_BACKUP" value:&stru_288487370 table:@"Localizable-Backup"];
  }

  else
  {
    [v16 localizedStringForKey:@"TURNING_OFF_BACKUP" value:&stru_288487370 table:@"Localizable-Backup"];
  }
  v17 = ;
  [v15 setText:v17];

  v18 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke;
  block[3] = &unk_27A666BC8;
  block[4] = self;
  block[5] = buf;
  dispatch_after(v18, MEMORY[0x277D85CD0], block);
  backup_state_queue = self->_backup_state_queue;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_476;
  v24 = &unk_27A666C18;
  selfCopy = self;
  v28 = stateCopy;
  v20 = passcodeCopy;
  v26 = v20;
  v27 = buf;
  dispatch_async(backup_state_queue, &v21);
  [(ICSAnalyticsController *)self->_analyticsController sendBackupToggleEventWithActionType:1, v21, v22, v23, v24, selfCopy];

  _Block_object_dispose(buf, 8);
}

void __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = LogSubsystem(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
      _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "%s showing progress HUD", &v8, 0xCu);
    }

    v3 = [*(a1 + 32) table];
    v4 = [v3 superview];
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      do
      {
        v7 = v6;

        v6 = v5;
        v5 = [v6 superview];

        v3 = v7;
      }

      while (v5);
    }

    else
    {
      v6 = v3;
      v7 = v3;
    }

    [*(*(*(a1 + 40) + 8) + 40) showInView:v7];
  }
}

void __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_476(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "%s Entering backup dispatch queue", &buf, 0xCu);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v3 = LogSubsystem([*(*(a1 + 32) + 1464) setBackupEnabled:*(a1 + 56)]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "%s setBackupEnabled complete", &buf, 0xCu);
  }

  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 1464);
    v21 = 0;
    v7 = [v6 setupBackupWithPasscode:v5 error:&v21];
    v8 = v21;
    v9 = v8;
    *(v23 + 24) = v7;
    if (v8)
    {
      v10 = LogSubsystem(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_476_cold_1();
      }
    }

    else
    {
      v10 = LogSubsystem(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
        _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "%s setupBackupWithPasscode returned without error", &buf, 0xCu);
      }
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  if (*(v23 + 24) == 1)
  {
    v11 = LogSubsystem(v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 136315138;
      v27 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
      _os_log_impl(&dword_275819000, v11, OS_LOG_TYPE_DEFAULT, "%s starting account save", v26, 0xCu);
    }

    v12 = [MEMORY[0x277CB8F48] defaultStore];
    [*(*(a1 + 32) + 1456) setEnabled:*(a1 + 56) forDataclass:*MEMORY[0x277CB90C8]];
    v13 = *(*(a1 + 32) + 1456);
    v14 = *(&buf + 1);
    obj = *(*(&buf + 1) + 40);
    [v12 saveVerifiedAccount:v13 error:&obj];
    objc_storeStrong((v14 + 40), obj);
    *(v23 + 24) = *(*(&buf + 1) + 40) == 0;
    v16 = LogSubsystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 136315138;
      v27 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
      _os_log_impl(&dword_275819000, v16, OS_LOG_TYPE_DEFAULT, "%s account save complete", v26, 0xCu);
    }
  }

  v17 = LogSubsystem(v4);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 136315138;
    v27 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
    _os_log_impl(&dword_275819000, v17, OS_LOG_TYPE_DEFAULT, "%s persist state complete, updating UI", v26, 0xCu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_478;
  v19[3] = &unk_27A666BF0;
  v18 = *(a1 + 48);
  v19[4] = *(a1 + 32);
  v19[5] = v18;
  v19[6] = &v22;
  v19[7] = &buf;
  dispatch_async(MEMORY[0x277D85CD0], v19);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v22, 8);
}

void __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_478(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "%s Entering main queue, hiding progressHUD, enabling interaction", buf, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) hide];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = [*(a1 + 32) view];
  v6 = [v5 window];
  [v6 setUserInteractionEnabled:1];

  LODWORD(v6) = *(*(*(a1 + 48) + 8) + 24);
  v8 = LogSubsystem(v7);
  v9 = v8;
  if (v6 != 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_478_cold_1(a1, v9, v12, v13, v14, v15, v16, v17);
    }

    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_288487370 table:@"Localizable-Backup"];

    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"TRY_AGAIN" value:&stru_288487370 table:@"Localizable-Backup"];

    v22 = [*(*(*(a1 + 56) + 8) + 40) domain];
    if ([v22 isEqualToString:@"MBErrorDomain"])
    {
      if ([*(*(*(a1 + 56) + 8) + 40) code] == 300)
      {
      }

      else
      {
        v23 = [*(*(*(a1 + 56) + 8) + 40) code];

        if (v23 != 308)
        {
          v11 = @"ERROR_ENABLING_BACKUP_DETAILS";
          goto LABEL_20;
        }
      }

      v24 = objc_alloc_init(MEMORY[0x277CEC5D0]);
      v25 = [v24 airplaneMode];

      if (v25)
      {
        v11 = SFLocalizableWAPIStringKeyForKey();
      }

      else
      {
        v11 = @"ERROR_ENABLING_BACKUP_NETWORK";
      }

      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"OK" value:&stru_288487370 table:@"Localizable-Backup"];

      v22 = v21;
      v19 = v27;
      v21 = 0;
    }

    else
    {
      v11 = @"ERROR_ENABLING_BACKUP_DETAILS";
    }

LABEL_20:
    v28 = MEMORY[0x277D75110];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"ERROR_ENABLING_BACKUP" value:&stru_288487370 table:@"Localizable-Backup"];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:v11 value:&stru_288487370 table:@"Localizable-Backup"];
    v33 = [v28 alertControllerWithTitle:v30 message:v32 preferredStyle:1];

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_504;
    v37[3] = &unk_27A666750;
    v37[4] = *(a1 + 32);
    v34 = [MEMORY[0x277D750F8] actionWithTitle:v19 style:1 handler:v37];
    [v33 addAction:v34];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_505;
    v36[3] = &unk_27A666750;
    v36[4] = *(a1 + 32);
    v35 = [MEMORY[0x277D750F8] actionWithTitle:v21 style:0 handler:v36];
    [v33 addAction:v35];

    [*(a1 + 32) presentViewController:v33 animated:1 completion:0];
    goto LABEL_21;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
    _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "%s reloading specifiers...", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + *MEMORY[0x277D3FD08]));
  [WeakRetained reloadSpecifiers];

  v11 = LogSubsystem([*(a1 + 32) checkIfNetworkSupportsBackup]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "[ICSBackupViewController _persistBackupEnablementState:passcode:]_block_invoke";
    _os_log_impl(&dword_275819000, v11, OS_LOG_TYPE_DEFAULT, "%s Completed with success!", buf, 0xCu);
  }

LABEL_21:
}

uint64_t __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_504(uint64_t a1)
{
  v2 = LogSubsystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Reload specifier with specifier ID 'BACKUP_ENABLED_SWITCH'", v4, 2u);
  }

  return [*(a1 + 32) reloadSpecifierID:@"BACKUP_ENABLED_SWITCH" animated:1];
}

void __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_505(uint64_t a1)
{
  v2 = LogSubsystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Enabling backup with specifier ID 'BACKUP_ENABLED_SWITCH'", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 specifierForID:@"BACKUP_ENABLED_SWITCH"];
  [v3 _enableBackupWithSpecifier:v4];
}

- (id)isBackupOverCellularEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  backupManager = self->_backupManager;
  v10 = 0;
  v3 = [(MBManager *)backupManager isBackupOnCellularEnabledWithError:&v10];
  v4 = v10;
  v5 = v4;
  if (v4)
  {
    v6 = LogSubsystem(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "Failed to fetch BackupOnCellularEnabled: %@", buf, 0xCu);
    }
  }

  v7 = LogSubsystem(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[ICSBackupViewController isBackupOverCellularEnabled]";
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", buf, 0x12u);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:v3];

  return v8;
}

- (void)setBackupOverCellularEnabled:(id)enabled
{
  v18 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  backupManager = self->_backupManager;
  v13 = 0;
  v6 = -[MBManager setBackupOnCellularEnabled:error:](backupManager, "setBackupOnCellularEnabled:error:", [enabledCopy BOOLValue], &v13);
  v7 = v13;
  v8 = LogSubsystem(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 138412290;
      v15 = enabledCopy;
      v10 = "Successfully set BackupOnCellularEnabled: %@";
      v11 = v8;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_275819000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }

  else if (v9)
  {
    *buf = 138412546;
    v15 = enabledCopy;
    v16 = 2112;
    v17 = v7;
    v10 = "Failed to set BackupOnCellularEnabled: %@: %@";
    v11 = v8;
    v12 = 22;
    goto LABEL_6;
  }

  [(ICSBackupViewController *)self checkIfNetworkSupportsBackup];
}

- (void)didCancelEnteringPIN
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = LogSubsystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICSBackupViewController didCancelEnteringPIN]";
    _os_log_impl(&dword_275819000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v4 = [(ICSBackupViewController *)self specifierForID:@"BACKUP_ENABLED_SWITCH"];
  [(ICSBackupViewController *)self reloadSpecifier:v4 animated:1];
}

- (void)_backupEnabledSwitchCancelled:(id)cancelled
{
  v8 = *MEMORY[0x277D85DE8];
  cancelledCopy = cancelled;
  v5 = LogSubsystem(cancelledCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICSBackupViewController _backupEnabledSwitchCancelled:]";
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(ICSBackupViewController *)self reloadSpecifier:cancelledCopy animated:1];
}

- (void)setBackupEnabled:(id)enabled specifier:(id)specifier
{
  v16 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  specifierCopy = specifier;
  v8 = LogSubsystem(specifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[ICSBackupViewController setBackupEnabled:specifier:]";
    v14 = 2112;
    v15 = enabledCopy;
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "%s, enabled: %@", &v12, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [ICSBackupViewController setBackupEnabled:specifier:];
  }

  bOOLValue = [enabledCopy BOOLValue];
  v10 = bOOLValue;
  if (self->_backupEnabled == bOOLValue)
  {
    v11 = LogSubsystem(bOOLValue);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[ICSBackupViewController setBackupEnabled:specifier:]";
      v14 = 1024;
      LODWORD(v15) = v10;
      _os_log_impl(&dword_275819000, v11, OS_LOG_TYPE_DEFAULT, "%s, new enabled state is the same as current enabled state, bailing. %d", &v12, 0x12u);
    }
  }

  else
  {
    [(ICSAnalyticsController *)self->_analyticsController sendBackupToggleEventWithActionType:0];
    if (v10)
    {
      [(ICSBackupViewController *)self _enableBackupWithSpecifier:specifierCopy];
    }

    else
    {
      [(ICSBackupViewController *)self _disableBackupWithSpecifier:specifierCopy];
    }
  }
}

- (void)openBackupHelpPage:(id)page
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BACKUP_HELP_PAGE_URL" value:&stru_288487370 table:@"Localizable-Backup"];
  v6 = [v3 URLWithString:v5];
  [mEMORY[0x277D75128] openURL:v6 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)updateiCloudBackupAndSyncProgressWithAllowDecrease:(BOOL)decrease
{
  if (self->_icloudBackupProgress >= 0.0199999996)
  {
    icloudBackupProgress = self->_icloudBackupProgress;
  }

  else
  {
    icloudBackupProgress = 0.0199999996;
  }

  if (decrease || ([(ICSBackupStatusView *)self->_backupStatusView progress], icloudBackupProgress >= v5))
  {
    backupStatusView = self->_backupStatusView;
    v7 = (60 * self->_estimateTimeRemaining);

    [(ICSBackupStatusView *)backupStatusView setBackupProgress:icloudBackupProgress timeIntervalRemaining:v7];
  }
}

- (void)setLastBackupDateString:(id)string
{
  v10 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[ICSBackupViewController setLastBackupDateString:]";
    v8 = 2112;
    v9 = stringCopy;
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v6, 0x16u);
  }

  [(ICSBackupStatusView *)self->_backupStatusView setLastBackupText:stringCopy];
  [(ICSBackupViewController *)self beginUpdates];
  [(ICSBackupViewController *)self endUpdates];
}

- (id)dateStringOfLatestBackup
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = SFLocalizableWAPIStringKeyForKey();
  v5 = [v3 localizedStringForKey:v4 value:&stru_288487370 table:@"Localizable-Backup"];

  v6 = MEMORY[0x277CCA968];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v6 dateFormatFromTemplate:@"j" options:0 locale:currentLocale];

  v9 = [v8 rangeOfString:@"H"];
  dateOfLastBackup = [(MBManager *)self->_backupManager dateOfLastBackup];
  if (dateOfLastBackup)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCA968]);
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [dateOfLastBackup ics_isTodayWithCalendar:currentCalendar];

    if (v13)
    {
      v14 = v9 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      [v11 setTimeStyle:1];
      [v11 setDateStyle:0];
    }

    else
    {
      currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
      localeIdentifier = [currentLocale2 localeIdentifier];
      v17 = [localeIdentifier isEqualToString:@"en_US"];

      [v11 setDoesRelativeDateFormatting:1];
      if (v17)
      {
        [v11 setDateStyle:1];
        v18 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v18 setTimeStyle:1];
        v19 = MEMORY[0x277CCACA8];
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v21 = [v20 localizedStringForKey:@"LAST_BACKUP_DATE_AT_TIME" value:&stru_288487370 table:@"Localizable-Backup"];
        v22 = [v11 stringFromDate:dateOfLastBackup];
        v23 = [v18 stringFromDate:dateOfLastBackup];
        v24 = [v19 localizedStringWithFormat:v21, v22, v23];

        v5 = v22;
LABEL_11:

        v5 = v24;
        goto LABEL_12;
      }

      [v11 setDateStyle:3];
      [v11 setTimeStyle:1];
      [v11 setFormattingContext:1];
    }

    v25 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v18 localizedStringForKey:@"LAST_BACKUP_DATE_OR_TIME" value:&stru_288487370 table:@"Localizable-Backup"];
    v21 = [v11 stringFromDate:dateOfLastBackup];
    v24 = [v25 localizedStringWithFormat:v20, v21];
    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

- (void)updateLastBackupDateInvalidatePrevious:(BOOL)previous
{
  if (previous)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ICSBackupViewController_updateLastBackupDateInvalidatePrevious___block_invoke;
    block[3] = &unk_27A666198;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  backup_state_queue = self->_backup_state_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__ICSBackupViewController_updateLastBackupDateInvalidatePrevious___block_invoke_2;
  v5[3] = &unk_27A666198;
  v5[4] = self;
  dispatch_async(backup_state_queue, v5);
}

void __66__ICSBackupViewController_updateLastBackupDateInvalidatePrevious___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v3 localizedStringForKey:@"DETERMINING_LAST_BACKUP" value:&stru_288487370 table:@"Localizable-Backup"];
  [v1 setLastBackupDateString:v2];
}

void __66__ICSBackupViewController_updateLastBackupDateInvalidatePrevious___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dateStringOfLatestBackup];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__ICSBackupViewController_updateLastBackupDateInvalidatePrevious___block_invoke_3;
  v4[3] = &unk_27A666410;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

- (id)_backgroundRestoreInfoText:(id)text
{
  v35 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v4 = textCopy;
  if (!textCopy)
  {
    v19 = 0;
    goto LABEL_41;
  }

  v5 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(textCopy countStyle:{"bytesRemaining"), 1}];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dataClassesRemaining = [v4 dataClassesRemaining];
  v8 = (dataClassesRemaining >> 5) & 1;
  if ((dataClassesRemaining & 0x20) != 0)
  {
    [v6 addObject:@"APPDATA"];
  }

  if ([v4 dataClassesRemaining])
  {
    [v6 addObject:@"PHOTOS"];
    v8 = 1;
  }

  if (([v4 dataClassesRemaining] & 0x10) != 0)
  {
    [v6 addObject:@"MESSAGES"];
    v8 = 1;
  }

  if (([v4 dataClassesRemaining] & 4) != 0)
  {
    [v6 addObject:@"RINGTONES"];
    v8 = 1;
  }

  if (([v4 dataClassesRemaining] & 8) != 0)
  {
    [v6 addObject:@"MEDIA"];
  }

  if (([v4 dataClassesRemaining] & 2) != 0)
  {
    [v6 addObject:@"BOOKS"];
  }

  if (([v4 dataClassesRemaining] & 0x40) != 0)
  {
    [v6 addObject:@"FILES"];
    v8 = 1;
  }

  if ([v6 count])
  {
    v29 = v5;
    v9 = [@"RESTORING" mutableCopy];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 appendFormat:@"_%@", *(*(&v30 + 1) + 8 * i)];
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:v9 value:&stru_288487370 table:@"Localizable-Backup"];

    if (v8)
    {
      v5 = v29;
      if ([v4 bytesRemaining] > 0xF423F)
      {
        if (![v4 bytesRemaining])
        {
          v18 = 0;
LABEL_36:

          if (v16)
          {
            goto LABEL_37;
          }

LABEL_30:
          v19 = &stru_288487370;
          if (!v18)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        v25 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v17 localizedStringForKey:@"BYTES_REMAINING" value:&stru_288487370 table:@"Localizable-Backup"];
        v18 = [v25 initWithFormat:v26, v29];
      }

      else
      {
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"LESS_THAN_1MB_REMAINING" value:&stru_288487370 table:@"Localizable-Backup"];
      }
    }

    else
    {
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v17 localizedStringForKey:@"RESTORING_PERIOD" value:&stru_288487370 table:@"Localizable-Backup"];
      v24 = [v16 stringByAppendingString:v23];

      v18 = 0;
      v16 = v24;
      v5 = v29;
    }

    goto LABEL_36;
  }

  if (![v4 bytesRemaining])
  {
    v16 = 0;
    v19 = &stru_288487370;
    goto LABEL_40;
  }

  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"RESTORE_IN_PROGRESS" value:&stru_288487370 table:@"Localizable-Backup"];
  v16 = [v20 initWithFormat:v22, v5];

  v18 = 0;
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_37:
  v19 = [&stru_288487370 stringByAppendingString:v16];
  if (v18)
  {
LABEL_38:
    v27 = [(__CFString *)v19 stringByAppendingString:@" "];

    v19 = [v27 stringByAppendingString:v18];
  }

LABEL_40:

LABEL_41:

  return v19;
}

- (void)_updateToBackupState:(int)state backupError:(id)error progress:(float)progress timeRemaining:(unint64_t)remaining restoreStateInfo:(id)info backgroundRestoreInfo:(id)restoreInfo backupEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v14 = *&state;
  v105 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  infoCopy = info;
  restoreInfoCopy = restoreInfo;
  backupError = [(ICSBackupStatusView *)self->_backupStatusView backupError];
  if (!errorCopy || backupError)
  {
  }

  else
  {
    code = [errorCopy code];
    if (code != 202)
    {
      v19 = LogSubsystem(code);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v104 = errorCopy;
        _os_log_impl(&dword_275819000, v19, OS_LOG_TYPE_DEFAULT, "Setting error from backup state: %@", buf, 0xCu);
      }

      [(ICSBackupStatusView *)self->_backupStatusView setBackupError:errorCopy];
    }
  }

  self->_backupState = v14;
  self->_backupEnabled = enabledCopy;
  v20 = [(ICSBackupViewController *)self specifierForID:@"BACKUP_ENABLED_SWITCH"];
  v99 = v20;
  v21 = MEMORY[0x277D3FF38];
  v98 = errorCopy;
  v97 = enabledCopy;
  if (v14 > 6)
  {
    v33 = LogSubsystem(v20);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v104) = v14;
      _os_log_impl(&dword_275819000, v33, OS_LOG_TYPE_DEFAULT, "Got an unknown state from backup manager: %i", buf, 8u);
    }

    v35 = LogSubsystem(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v104) = v14;
      _os_log_impl(&dword_275819000, v35, OS_LOG_TYPE_DEFAULT, "Got an unknown state from backup manager: %i", buf, 8u);
    }

    v36 = *v21;
    v37 = [(PSSpecifier *)self->_backupNowButton propertyForKey:*v21];
    enabledCopy = [v37 BOOLValue];

    v38 = [v99 propertyForKey:v36];
    bOOLValue = [v38 BOOLValue];
  }

  else
  {
    if (((1 << v14) & 0x39) != 0)
    {
LABEL_10:
      if (self->_backupNowButton)
      {
        v22 = LogSubsystem(v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275819000, v22, OS_LOG_TYPE_DEFAULT, "Setting backup now button as backup now button", buf, 2u);
        }

        backupNowButton = self->_backupNowButton;
        v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v25 = [v24 localizedStringForKey:@"BACKUP_NOW" value:&stru_288487370 table:@"Localizable-Backup"];
        [(PSSpecifier *)backupNowButton setName:v25];

        [(PSSpecifier *)self->_backupNowButton setButtonAction:sel_beginBackup_];
      }

      bOOLValue2 = [(NSNumber *)self->_networkSupportsBackup BOOLValue];
      if ((bOOLValue2 & 1) == 0)
      {
        v27 = LogSubsystem(bOOLValue2);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275819000, v27, OS_LOG_TYPE_DEFAULT, "Network does not support backup - backup button disabled", buf, 2u);
        }

        enabledCopy = 0;
      }

      bOOLValue = 1;
      goto LABEL_32;
    }

    if (((1 << v14) & 6) == 0)
    {
      if (self->_backupCancelled)
      {
        v20 = [(ICSBackupStatusView *)self->_backupStatusView setBackupError:0];
        v14 = 0;
      }

      else
      {
        v14 = 6;
      }

      goto LABEL_10;
    }

    if (self->_backupNowButton)
    {
      v29 = LogSubsystem(v20);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275819000, v29, OS_LOG_TYPE_DEFAULT, "Setting backup now button as cancel button", buf, 2u);
      }

      v30 = self->_backupNowButton;
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = [v31 localizedStringForKey:@"CANCEL_BACKUP" value:&stru_288487370 table:@"Localizable-Backup"];
      [(PSSpecifier *)v30 setName:v32];

      [(PSSpecifier *)self->_backupNowButton setButtonAction:sel_cancelBackup_];
    }

    self->_estimateTimeRemaining = remaining;
    self->_icloudBackupProgress = progress;
    bOOLValue = 1;
    [(ICSBackupViewController *)self updateiCloudBackupAndSyncProgressWithAllowDecrease:1];
    enabledCopy = 1;
  }

LABEL_32:
  state = [infoCopy state];
  v100 = state;
  v96 = state - 1;
  if ((state - 1) > 1)
  {
    if ([(NSNumber *)self->_networkSupportsBackup BOOLValue])
    {
      [(ICSBackupStatusView *)self->_backupStatusView setFooterText:0];
    }

    else
    {
      isManualBackupOnCellularAllowed = self->_isManualBackupOnCellularAllowed;
      backupStatusView = self->_backupStatusView;
      v62 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      SFLocalizableWAPIStringKeyForKey();
      if (isManualBackupOnCellularAllowed)
        v63 = {;
        v64 = [v62 localizedStringForKey:v63 value:&stru_288487370 table:@"Localizable-Backup"];
        [(ICSBackupStatusView *)backupStatusView setFooterText:v64];
      }

      else
        v65 = {;
        v66 = [v62 localizedStringForKey:v65 value:&stru_288487370 table:@"Localizable-Backup"];
        [(ICSBackupStatusView *)backupStatusView setFooterText:v66];
      }
    }

    v41 = &off_2759C0000;
  }

  else
  {
    backupCancelled = self->_backupCancelled;
    v41 = &off_2759C0000;
    if (backupCancelled)
    {
      v42 = LogSubsystem(state);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275819000, v42, OS_LOG_TYPE_DEFAULT, "Backup cancelled - backup button disabled", buf, 2u);
      }
    }

    v43 = LogSubsystem(state);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v104) = v100 == 1;
      _os_log_impl(&dword_275819000, v43, OS_LOG_TYPE_DEFAULT, "restoreState starting: %d", buf, 8u);
    }

    v45 = LogSubsystem(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v104) = v100 == 2;
      _os_log_impl(&dword_275819000, v45, OS_LOG_TYPE_DEFAULT, "restoreState running: %d", buf, 8u);
    }

    v47 = LogSubsystem(v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v47, OS_LOG_TYPE_DEFAULT, "Disabling Backup Switch", buf, 2u);
    }

    if (self->_backupNowButton)
    {
      v49 = LogSubsystem(v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275819000, v49, OS_LOG_TYPE_DEFAULT, "Setting backup now button as stop restoring button", buf, 2u);
      }

      v50 = self->_backupNowButton;
      v51 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v52 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"STOP_RESTORING"];
      v53 = [v51 localizedStringForKey:v52 value:&stru_288487370 table:@"Localizable-Backup"];
      [(PSSpecifier *)v50 setName:v53];

      [(PSSpecifier *)self->_backupNowButton setButtonAction:sel_cancelRestore_];
      v41 = &off_2759C0000;
    }

    if ([(NSNumber *)self->_networkSupportsBackup BOOLValue])
    {
      if (self->_thermalSupportsBackup)
      {
        v54 = @"DEVICE_IS_BEING_RESTORED";
      }

      else
      {
        v54 = @"DEVICE_RESTORE_PAUSED_THERMAL";
      }
    }

    else
    {
      v54 = SFLocalizableWAPIStringKeyForKey();
    }

    enabledCopy = !backupCancelled;
    v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v56 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:v54];
    v57 = [v55 localizedStringForKey:v56 value:&stru_288487370 table:@"Localizable-Backup"];

    v58 = [(ICSBackupViewController *)self _backgroundRestoreInfoText:restoreInfoCopy];
    if (v58)
    {
      v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v57, v58];

      v57 = v59;
    }

    [(ICSBackupStatusView *)self->_backupStatusView setFooterText:v57];

    bOOLValue = 0;
  }

  isRunningInStoreDemoMode = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  policyPreventsBackup = [(ICSBackupViewController *)self policyPreventsBackup];
  isRapidReturnToService = [(ICSBackupViewController *)self isRapidReturnToService];
  v70 = isRapidReturnToService;
  if ((isRunningInStoreDemoMode & 1) != 0 || policyPreventsBackup || isRapidReturnToService)
  {
    v71 = LogSubsystem(isRapidReturnToService);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *buf = *(v41 + 43);
      LODWORD(v104) = isRunningInStoreDemoMode;
      _os_log_impl(&dword_275819000, v71, OS_LOG_TYPE_DEFAULT, "Store Demo Mode Enabled: %d", buf, 8u);
    }

    v73 = LogSubsystem(v72);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *buf = *(v41 + 43);
      LODWORD(v104) = policyPreventsBackup;
      _os_log_impl(&dword_275819000, v73, OS_LOG_TYPE_DEFAULT, "Policy Prevents Backup: %d", buf, 8u);
    }

    v75 = LogSubsystem(v74);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *buf = *(v41 + 43);
      LODWORD(v104) = v70;
      _os_log_impl(&dword_275819000, v75, OS_LOG_TYPE_DEFAULT, "Rapid Return to Service: %d", buf, 8u);
    }

    bOOLValue = 0;
    enabledCopy = 0;
  }

  v76 = self->_backupNowButton;
  v77 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v78 = *MEMORY[0x277D3FF38];
  [(PSSpecifier *)v76 setProperty:v77 forKey:*MEMORY[0x277D3FF38]];

  v80 = LogSubsystem(v79);
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = *(v41 + 43);
    LODWORD(v104) = enabledCopy;
    _os_log_impl(&dword_275819000, v80, OS_LOG_TYPE_DEFAULT, "Backup Button Enabled: %d", buf, 8u);
  }

  v81 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  [(PSSpecifier *)self->_backupOverCellularSwitch setObject:v81 forKeyedSubscript:v78];

  v83 = LogSubsystem(v82);
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    *buf = *(v41 + 43);
    LODWORD(v104) = bOOLValue;
    _os_log_impl(&dword_275819000, v83, OS_LOG_TYPE_DEFAULT, "BackupOverCellular Switch Enabled: %d", buf, 8u);
  }

  v84 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  [v99 setProperty:v84 forKey:v78];

  v86 = LogSubsystem(v85);
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *buf = *(v41 + 43);
    LODWORD(v104) = bOOLValue;
    _os_log_impl(&dword_275819000, v86, OS_LOG_TYPE_DEFAULT, "Backup Switch Enabled: %d", buf, 8u);
  }

  [(ICSBackupViewController *)self beginUpdates];
  v87 = [(ICSBackupViewController *)self indexOfSpecifier:self->_backupNowButton];
  if (v96 < 2 || (v97 & 1) != 0 || v87 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v89 = v98;
    if (((v97 & 1) != 0 || v96 <= 1) && v87 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v90 = objc_opt_new();
      v91 = v90;
      if (self->_isAutoBackupOnCellularAllowed && self->_backupOverCellularSpecifiers)
      {
        [v90 addObjectsFromArray:?];
      }

      if (self->_backupEnabled && self->_backupTipSpecifiers)
      {
        [v91 addObjectsFromArray:?];
      }

      if (self->_backupNowSpecifiers)
      {
        [v91 addObjectsFromArray:?];
      }

      [(ICSBackupViewController *)self insertContiguousSpecifiers:v91 afterSpecifier:v99 animated:1];
      [(ICSBackupStatusView *)self->_backupStatusView setAlpha:1.0];
    }

    else
    {
      [(ICSBackupViewController *)self reloadSpecifier:self->_backupOverCellularSwitch animated:1];
      [(ICSBackupViewController *)self reloadSpecifier:self->_backupNowButton animated:1];
    }
  }

  else
  {
    [(ICSBackupViewController *)self removeContiguousSpecifiers:self->_backupNowSpecifiers animated:1];
    backupTipSpecifiers = self->_backupTipSpecifiers;
    v89 = v98;
    if (backupTipSpecifiers)
    {
      [(ICSBackupViewController *)self removeContiguousSpecifiers:backupTipSpecifiers animated:1];
    }

    if (self->_isAutoBackupOnCellularAllowed)
    {
      [(ICSBackupViewController *)self removeContiguousSpecifiers:self->_backupOverCellularSpecifiers animated:1];
    }
  }

  [(ICSBackupViewController *)self reloadSpecifier:v99 animated:1];
  [(ICSBackupStatusView *)self->_backupStatusView updateViewsForBackupState:v14 restoreState:v100 enabled:v97];
  [(ICSBackupViewController *)self endUpdates];
  if (v89 && v14 == 3 && v97)
  {
    domain = [v89 domain];
    if (![domain isEqualToString:@"MBErrorDomain"])
    {
LABEL_106:

      goto LABEL_107;
    }

    code2 = [v89 code];

    if (code2 == 303)
    {
      v95 = LogSubsystem(v94);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275819000, v95, OS_LOG_TYPE_DEFAULT, "iCloud backup failed due to insufficient storage. Posting quota change notification.", buf, 2u);
      }

      domain = [MEMORY[0x277CCAB98] defaultCenter];
      [domain postNotificationName:*MEMORY[0x277D7F2C0] object:0];
      goto LABEL_106;
    }
  }

LABEL_107:
}

- (void)_updateToBackupState:(id)state restoreState:(id)restoreState backgroundRestoreState:(id)backgroundRestoreState backupEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  backgroundRestoreStateCopy = backgroundRestoreState;
  restoreStateCopy = restoreState;
  stateCopy = state;
  state = [stateCopy state];
  error = [stateCopy error];
  [stateCopy progress];
  v15 = v14;
  estimatedTimeRemaining = [stateCopy estimatedTimeRemaining];

  LODWORD(v17) = v15;
  [(ICSBackupViewController *)self _updateToBackupState:state backupError:error progress:estimatedTimeRemaining timeRemaining:restoreStateCopy restoreStateInfo:backgroundRestoreStateCopy backgroundRestoreInfo:enabledCopy backupEnabled:v17];
}

- (void)updateBusyState
{
  backupState = self->_backupState;
  objc_initWeak(&location, self);
  backup_state_queue = self->_backup_state_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ICSBackupViewController_updateBusyState__block_invoke;
  v5[3] = &unk_27A666C68;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v7 = backupState;
  dispatch_async(backup_state_queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __42__ICSBackupViewController_updateBusyState__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isBackupEnabled];

  v4 = [*(*(a1 + 32) + 1464) backupState];
  v5 = [*(*(a1 + 32) + 1464) restoreState];
  v6 = [*(*(a1 + 32) + 1464) backgroundRestoreInfo];
  v7 = LogSubsystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    *buf = 136316162;
    v21 = "[ICSBackupViewController updateBusyState]_block_invoke";
    v22 = 1024;
    v23 = v3;
    v24 = 1024;
    v25 = v8;
    v26 = 1024;
    v27 = [v4 state];
    v28 = 1024;
    v29 = [v5 state];
    _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "%s, isBackupEnabled: %d, entryState: %d, backupState: %d, restoreState: %d", buf, 0x24u);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__ICSBackupViewController_updateBusyState__block_invoke_606;
  v13[3] = &unk_27A666C40;
  objc_copyWeak(&v17, (a1 + 40));
  v9 = *(a1 + 32);
  v18 = *(a1 + 48);
  v13[4] = v9;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v19 = v3;
  v10 = v6;
  v11 = v5;
  v12 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v17);
}

void __42__ICSBackupViewController_updateBusyState__block_invoke_606(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(*(a1 + 32) + 1472) == *(a1 + 72))
    {
      [WeakRetained _updateToBackupState:*(a1 + 40) restoreState:*(a1 + 48) backgroundRestoreState:*(a1 + 56) backupEnabled:*(a1 + 76)];
    }

    else
    {
      v4 = LogSubsystem(WeakRetained);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(a1 + 32) + 1472);
        v6[0] = 67109120;
        v6[1] = v5;
        _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Skipping update, current backup state: %d", v6, 8u);
      }
    }
  }
}

- (void)cancelRestore:(id)restore
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = LogSubsystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[ICSBackupViewController cancelRestore:]";
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "%s, presenting confirmation alert", buf, 0xCu);
  }

  self->_backupCancelled = 1;
  [(ICSBackupViewController *)self updateBusyState];
  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"STOP_RESTORING_QUESTION"];
  v8 = [v6 localizedStringForKey:v7 value:&stru_288487370 table:@"Localizable-Backup"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CANCEL_RESTORE_WARNING" value:&stru_288487370 table:@"Localizable-Backup"];
  v11 = [v5 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"DONT_STOP" value:&stru_288487370 table:@"Localizable-Backup"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __41__ICSBackupViewController_cancelRestore___block_invoke;
  v21[3] = &unk_27A666750;
  v21[4] = self;
  v15 = [v12 actionWithTitle:v14 style:1 handler:v21];
  [v11 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"STOP" value:&stru_288487370 table:@"Localizable-Backup"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __41__ICSBackupViewController_cancelRestore___block_invoke_2;
  v20[3] = &unk_27A666750;
  v20[4] = self;
  v19 = [v16 actionWithTitle:v18 style:0 handler:v20];
  [v11 addAction:v19];

  [(ICSBackupViewController *)self presentViewController:v11 animated:1 completion:0];
}

void __41__ICSBackupViewController_cancelRestore___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ICSBackupViewController_cancelRestore___block_invoke_3;
  block[3] = &unk_27A666198;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __41__ICSBackupViewController_cancelRestore___block_invoke_3(uint64_t a1)
{
  v2 = LogSubsystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Cancel restore confirmed", buf, 2u);
  }

  [*(*(a1 + 32) + 1464) cancelRestore];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ICSBackupViewController_cancelRestore___block_invoke_619;
  block[3] = &unk_27A666198;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cancelBackup:(id)backup
{
  v4 = LogSubsystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Cancel backup", buf, 2u);
  }

  self->_backupCancelled = 1;
  self->_currentSyncState = 0;
  self->_finishBackupExecuted = 1;
  self->_updateBackupState = 0;
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ICSBackupViewController_cancelBackup___block_invoke;
  block[3] = &unk_27A666198;
  block[4] = self;
  dispatch_async(v5, block);

  [(ICSBackupViewController *)self updateBusyState];
}

uint64_t __40__ICSBackupViewController_cancelBackup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudSyncClient];
  [v2 cancelSync];

  v3 = *(*(a1 + 32) + 1464);

  return [v3 cancel];
}

- (void)startBackup
{
  self->_backupCancelled = 0;
  [(ICSBackupStatusView *)self->_backupStatusView setBackupError:0];
  self->_estimateTimeRemaining = -1;
  self->_icloudBackupProgress = 0.0;
  [(ICSBackupViewController *)self updateiCloudBackupAndSyncProgressWithAllowDecrease:1];
  self->_finishBackupExecuted = 0;
  self->_icloudSyncProgress = 0.0;
  [(ICSBackupStatusView *)self->_backupStatusView setSyncErrors:0];
  self->_currentSyncState = 1;
  [(ICSBackupViewController *)self _updateToBackupState:1 backupError:0 progress:-1 timeRemaining:0 restoreStateInfo:0 backgroundRestoreInfo:1 backupEnabled:0.0];
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ICSBackupViewController_startBackup__block_invoke;
  block[3] = &unk_27A666198;
  block[4] = self;
  dispatch_async(v3, block);

  v5 = LogSubsystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "Starting iMessage periodic sync", buf, 2u);
  }

  mEMORY[0x277D18D50] = [MEMORY[0x277D18D50] sharedInstance];
  [mEMORY[0x277D18D50] startPeriodicSync];

  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v7 = getHKHealthStoreClass_softClass;
  v19 = getHKHealthStoreClass_softClass;
  if (!getHKHealthStoreClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __getHKHealthStoreClass_block_invoke;
    v14 = &unk_27A6664B0;
    v15 = &v16;
    __getHKHealthStoreClass_block_invoke(buf);
    v7 = v17[3];
  }

  v8 = v7;
  _Block_object_dispose(&v16, 8);
  v9 = objc_alloc_init(v7);
  [v9 forceCloudSyncWithOptions:0 completion:&__block_literal_global_627];
}

void __38__ICSBackupViewController_startBackup__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Start icloud sync", buf, 2u);
  }

  v3 = [*(a1 + 32) cloudSyncClient];
  [v3 startSync];

  v5 = LogSubsystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "Begin backup", buf, 2u);
  }

  v6 = objc_opt_new();
  if (*(*(a1 + 32) + 1488))
  {
    [MEMORY[0x277D28A38] expensiveCellularAccess];
  }

  else
  {
    [MEMORY[0x277D28A38] inexpensiveCellularAccess];
  }
  v7 = ;
  [v6 setCellularAccess:v7];

  v8 = *(*(a1 + 32) + 1464);
  v18 = 0;
  v9 = [v8 startBackupWithOptions:v6 error:&v18];
  v10 = v18;
  v11 = v10;
  if (v9)
  {
    v12 = LogSubsystem(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "Backup begin succeed", buf, 2u);
    }
  }

  else
  {
    v13 = [*(a1 + 32) cloudSyncClient];
    [v13 cancelSync];

    v15 = LogSubsystem(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_275819000, v15, OS_LOG_TYPE_DEFAULT, "Error starting backup: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__ICSBackupViewController_startBackup__block_invoke_622;
    block[3] = &unk_27A666410;
    block[4] = *(a1 + 32);
    v17 = v11;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __38__ICSBackupViewController_startBackup__block_invoke_622(uint64_t a1)
{
  [*(*(a1 + 32) + 1528) setBackupError:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateBusyState];
}

- (void)_showAlertForExpensiveCellular
{
  v3 = objc_opt_new();
  v29 = 0;
  v4 = [v3 getCurrentDataSubscriptionContextSync:&v29];
  v5 = v29;
  v6 = v5;
  if (!v4)
  {
    v7 = LogSubsystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICSBackupViewController _showAlertForExpensiveCellular];
    }

    v9 = v6;
    goto LABEL_9;
  }

  v7 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v4];
  v28 = v6;
  v8 = [v3 interfaceCostExpensive:v7 error:&v28];
  v9 = v28;

  if (v9)
  {
    v11 = LogSubsystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ICSBackupViewController _showAlertForExpensiveCellular];
    }

LABEL_9:
    goto LABEL_10;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (![(NSNumber *)self->_isExpensiveCellular BOOLValue])
  {
LABEL_13:
    [(ICSBackupViewController *)self proceedWithBackup];
    goto LABEL_14;
  }

  v25 = MEMORY[0x277D75110];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"EXPENSIVE_CELLULAR_TILE" value:&stru_288487370 table:@"Localizable-Backup"];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"EXPENSIVE_CELLULAR_BODY" value:&stru_288487370 table:@"Localizable-Backup"];
  v16 = [v25 alertControllerWithTitle:v13 message:v15 preferredStyle:1];

  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_288487370 table:@"Localizable-Backup"];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __57__ICSBackupViewController__showAlertForExpensiveCellular__block_invoke;
  v27[3] = &unk_27A666750;
  v27[4] = self;
  v20 = [v17 actionWithTitle:v19 style:1 handler:v27];
  [v16 addAction:v20];

  v21 = MEMORY[0x277D750F8];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"USE_CELLULAR_DATA" value:&stru_288487370 table:@"Localizable-Backup"];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__ICSBackupViewController__showAlertForExpensiveCellular__block_invoke_2;
  v26[3] = &unk_27A666750;
  v26[4] = self;
  v24 = [v21 actionWithTitle:v23 style:0 handler:v26];
  [v16 addAction:v24];

  [(ICSBackupViewController *)self presentViewController:v16 animated:1 completion:0];
LABEL_14:
}

- (void)beginBackup:(id)backup
{
  v9 = *MEMORY[0x277D85DE8];
  backupCopy = backup;
  v5 = LogSubsystem(backupCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ICSBackupViewController beginBackup:]";
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  v6 = [backupCopy propertyForKey:*MEMORY[0x277D40148]];

  [v6 setCellEnabled:0];
  [(ICSBackupViewController *)self prepareAlertForBackupDisabledDomainAndShow:1];
}

- (void)updateBackupFinishState
{
  if (!self->_finishBackupExecuted)
  {
    self->_finishBackupExecuted = 1;
    [(ICSBackupViewController *)self updateBusyState];
    if (self->_updateBackupState == 1)
    {
      [(ICSBackupViewController *)self updateLastBackupDateInvalidatePrevious:1];
    }

    else
    {
      [(ICSBackupViewController *)self updateLastBackupDate];
    }

    self->_updateBackupState = 0;
  }
}

- (void)syncCompletedWithErrors:(id)errors
{
  errorsCopy = errors;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__ICSBackupViewController_syncCompletedWithErrors___block_invoke;
  v6[3] = &unk_27A666410;
  v6[4] = self;
  v7 = errorsCopy;
  v5 = errorsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __51__ICSBackupViewController_syncCompletedWithErrors___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "iCloud sync complete get called", &v10, 2u);
  }

  if (*(*(a1 + 32) + 1596) == 1)
  {
    v3 = *(a1 + 40);
    if (v3 && (v3 = [v3 count]) != 0)
    {
      v4 = LogSubsystem(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Got some icloud sync errors: %@", &v10, 0xCu);
      }

      *(*(a1 + 32) + 1596) = 3;
      v6 = *(a1 + 40);
    }

    else
    {
      v7 = LogSubsystem(v3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "iCloud sync complete with no error", &v10, 2u);
      }

      v6 = 0;
      *(*(a1 + 32) + 1596) = 2;
    }

    v8 = [*(*(a1 + 32) + 1528) setSyncErrors:v6];
    if (*(*(a1 + 32) + 1600))
    {
      v9 = LogSubsystem(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "We have already completed backup", &v10, 2u);
      }
    }
  }
}

- (void)syncProgress:(double)progress
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__ICSBackupViewController_syncProgress___block_invoke;
  v3[3] = &unk_27A666A68;
  v3[4] = self;
  *&v3[5] = progress;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

double __40__ICSBackupViewController_syncProgress___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 1596) == 1)
  {
    v2 = LogSubsystem(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "iCloud sync reported progress: %f", &v5, 0xCu);
    }

    result = *(a1 + 40);
    *(*(a1 + 32) + 1616) = result;
  }

  return result;
}

- (void)showPopUpAlertForBackupDisabledApps
{
  PSGBackupUtilsClass_0 = getPSGBackupUtilsClass_0();
  backupDisabledAppsInfo = self->_backupDisabledAppsInfo;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ICSBackupViewController_showPopUpAlertForBackupDisabledApps__block_invoke;
  v5[3] = &unk_27A666CB0;
  v5[4] = self;
  [PSGBackupUtilsClass_0 configureAlertMessageOfType:0 AndTitleForBackUpDisabledApps:backupDisabledAppsInfo completion:v5];
}

uint64_t __62__ICSBackupViewController_showPopUpAlertForBackupDisabledApps__block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 showAlertForBackupDisabledItemsWithTitle:? andMessage:?];
  }

  else
  {
    return [v2 _showAlertForExpensiveCellular];
  }
}

- (void)showAlertForBackupDisabledItemsWithTitle:(id)title andMessage:(id)message
{
  titleCopy = title;
  messageCopy = message;
  view = [(ICSBackupViewController *)self view];
  window = [view window];

  if (window)
  {
    v10 = [(PSSpecifier *)self->_backupNowButton propertyForKey:*MEMORY[0x277D40148]];
    [v10 setCellEnabled:1];

    v11 = [MEMORY[0x277D75110] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
    manageStorageAction = [(ICSBackupViewController *)self manageStorageAction];
    [v11 addAction:manageStorageAction];

    v13 = MEMORY[0x277D750F8];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"CONTINUE" value:&stru_288487370 table:@"Localizable-Backup"];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__ICSBackupViewController_showAlertForBackupDisabledItemsWithTitle_andMessage___block_invoke;
    v17[3] = &unk_27A666750;
    v17[4] = self;
    v16 = [v13 actionWithTitle:v15 style:1 handler:v17];
    [v11 addAction:v16];

    [(ICSBackupViewController *)self presentViewController:v11 animated:1 completion:0];
  }
}

- (void)proceedWithBackup
{
  v3 = [(PSSpecifier *)self->_backupNowButton propertyForKey:*MEMORY[0x277D40148]];
  [v3 setCellEnabled:1];

  [(ICSBackupViewController *)self startBackup];
}

- (id)manageStorageAction
{
  v3 = MEMORY[0x277D750F8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ICLOUD_SETTINGS" value:&stru_288487370 table:@"Localizable-Backup"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__ICSBackupViewController_manageStorageAction__block_invoke;
  v8[3] = &unk_27A666750;
  v8[4] = self;
  v6 = [v3 actionWithTitle:v5 style:0 handler:v8];

  return v6;
}

void __46__ICSBackupViewController_manageStorageAction__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1544) propertyForKey:*MEMORY[0x277D40148]];
  [v1 setCellEnabled:1];

  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/CURRENT_DEVICE_BACKUP"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (void)managerDidFinishBackup:(id)backup
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = LogSubsystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  [(ICSBackupStatusView *)self->_backupStatusView setBackupError:0];
  self->_finishBackupExecuted = 1;
  self->_updateBackupState = 0;
  [(ICSBackupViewController *)self updateBusyState];
  v6 = [(ICSBackupViewController *)self updateLastBackupDateInvalidatePrevious:1];
  currentSyncState = self->_currentSyncState;
  v8 = LogSubsystem(v6);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (currentSyncState == 1)
  {
    if (v9)
    {
      LOWORD(v12) = 0;
      v10 = "Backup finished but iCloud sync not finished";
LABEL_8:
      _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, v10, &v12, 2u);
    }
  }

  else if (v9)
  {
    LOWORD(v12) = 0;
    v10 = "Backup and iCloud sync both finished";
    goto LABEL_8;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D7F458] object:0];
}

- (void)manager:(id)manager didFailRestoreWithError:(id)error
{
  errorCopy = error;
  v6 = LogSubsystem(errorCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICSBackupViewController manager:didFailRestoreWithError:];
  }

  [(ICSBackupViewController *)self updateBusyState];
  [(ICSBackupViewController *)self updateLastBackupDate];
}

- (void)managerDidFinishRestore:(id)restore
{
  v4 = LogSubsystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Restore finished", v5, 2u);
  }

  [(ICSBackupViewController *)self updateBusyState];
  [(ICSBackupViewController *)self updateLastBackupDate];
}

- (void)managerDidCancelRestore:(id)restore
{
  v4 = LogSubsystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Restore canceled", v5, 2u);
  }

  [(ICSBackupViewController *)self updateBusyState];
  [(ICSBackupViewController *)self updateLastBackupDate];
}

- (void)manager:(id)manager didFailBackupWithError:(id)error
{
  v9 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = LogSubsystem(errorCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "Failed backup: %@", &v7, 0xCu);
  }

  self->_currentSyncState = 3;
  self->_finishBackupExecuted = 1;
  self->_updateBackupState = 0;
  [(ICSBackupStatusView *)self->_backupStatusView setBackupError:errorCopy];
  [(ICSBackupViewController *)self updateBusyState];
}

- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = LogSubsystem(self);
  progressCopy = progress;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = progressCopy;
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "Backup progress: %f", &v10, 0xCu);
  }

  self->_icloudBackupProgress = progressCopy;
  self->_estimateTimeRemaining = remaining;
  [(ICSBackupViewController *)self updateiCloudBackupAndSyncProgressWithAllowDecrease:0];
  if ((self->_backupState - 1) >= 2)
  {
    [(ICSBackupViewController *)self updateBusyState];
  }
}

- (void)managerDidUpdateBackgroundRestoreProgress:(id)progress
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = LogSubsystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICSBackupViewController managerDidUpdateBackgroundRestoreProgress:]";
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(ICSBackupViewController *)self updateBusyState];
}

- (void)manager:(id)manager didSetBackupEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x277D85DE8];
  v6 = LogSubsystem(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ICSBackupViewController manager:didSetBackupEnabled:]";
    v9 = 1024;
    v10 = enabledCopy;
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "%s, enabled: %d", &v7, 0x12u);
  }

  [(ICSBackupViewController *)self updateBusyState];
  [(ICSBackupViewController *)self updateLastBackupDate];
}

- (void)managerDidLoseConnectionToService:(id)service
{
  if ((self->_backupState - 1) <= 1)
  {
    v17 = v3;
    v18 = v4;
    v6 = LogSubsystem(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "Lost connection to backup service", buf, 2u);
    }

    currentSyncState = self->_currentSyncState;
    v9 = LogSubsystem(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (currentSyncState == 1)
    {
      if (v10)
      {
        *v15 = 0;
        _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "We are still syncing with iCloud", v15, 2u);
      }

      if (!self->_updateBackupState)
      {
        v12 = LogSubsystem(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "Backup not finished before losing connection", v14, 2u);
        }

        self->_updateBackupState = 2;
      }
    }

    else
    {
      if (v10)
      {
        *v13 = 0;
        _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "We have finished icloud sync", v13, 2u);
      }

      self->_updateBackupState = 0;
      self->_finishBackupExecuted = 1;
    }

    [(ICSBackupViewController *)self updateBusyState];
    [(ICSBackupViewController *)self updateLastBackupDate];
  }
}

- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated
{
  v17 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  specifiersCopy = specifiers;
  v9 = LogSubsystem(specifiersCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = providerCopy;
    _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "Reloading specifiers for provider %@", &v15, 0xCu);
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v10 = [specifiersCopy count];
  specifiers = [providerCopy specifiers];
  v12 = specifiers;
  if (v10)
  {
    v13 = [specifiers count];

    if (v13)
    {
      specifiers2 = [providerCopy specifiers];
      [(ICSBackupViewController *)self replaceContiguousSpecifiers:specifiersCopy withSpecifiers:specifiers2 animated:1];
    }

    else
    {
      [(ICSBackupViewController *)self removeContiguousSpecifiers:specifiersCopy animated:1];
    }

    [(ICSBackupViewController *)self updateBusyState];
  }

  else
  {
    [(ICSBackupViewController *)self addSpecifiersFromArray:specifiers];
  }
}

- (void)_fetchiCloudHomeData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = [[ICSHomeDataController alloc] initWithAccount:self->_account];
  v3 = v6[5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ICSBackupViewController__fetchiCloudHomeData__block_invoke;
  v4[3] = &unk_27A666CD8;
  v4[4] = self;
  v4[5] = &v5;
  [v3 fetchiCloudHomeDataModelAllowingCache:1 completion:v4];
  _Block_object_dispose(&v5, 8);
}

void __47__ICSBackupViewController__fetchiCloudHomeData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = LogSubsystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __47__ICSBackupViewController__fetchiCloudHomeData__block_invoke_cold_1();
    }
  }

  else
  {
    v9 = [v5 backupViewInfo];
    v10 = [v9 tips];
    v11 = [v10 count];

    v8 = LogSubsystem(v12);
    v13 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = [v5 backupViewInfo];
        v15 = [v14 tips];
        v16 = [v15 firstObject];
        *buf = 138412290;
        v25 = v16;
        _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "Found an eligible tip for backup view: %@", buf, 0xCu);
      }

      v17 = [v5 backupViewInfo];
      v18 = [v17 tips];
      v19 = [v18 firstObject];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __47__ICSBackupViewController__fetchiCloudHomeData__block_invoke_651;
      v22[3] = &unk_27A666410;
      v22[4] = *(a1 + 32);
      v23 = v19;
      v8 = v19;
      dispatch_async(MEMORY[0x277D85CD0], v22);
    }

    else if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "No eligible tip found for backup view.", buf, 2u);
    }
  }

  v20 = *(*(a1 + 40) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = 0;
}

void __47__ICSBackupViewController__fetchiCloudHomeData__block_invoke_651(uint64_t a1)
{
  v2 = [*(a1 + 32) _buildBackupSpecifiersWithTip:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1568);
  *(v3 + 1568) = v2;

  v7.receiver = *(a1 + 32);
  v7.super_class = ICSBackupViewController;
  objc_msgSendSuper2(&v7, sel_reloadSpecifiers);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BACKUPS_NAV_TITLE" value:&stru_288487370 table:@"Localizable-Backup"];
  [*(a1 + 32) setTitle:v6];
}

- (id)_buildBackupSpecifiersWithTip:(id)tip
{
  v4 = MEMORY[0x277CBEB18];
  tipCopy = tip;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"UPGRADE_TO_ICLOUD_PLUS_TIP"];
  [v6 addObject:v7];
  v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_288487370 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v8 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  title = [tipCopy title];
  [v8 setObject:title forKeyedSubscript:*MEMORY[0x277D40170]];

  subtitle = [tipCopy subtitle];
  [v8 setObject:subtitle forKeyedSubscript:*MEMORY[0x277D40160]];

  v11 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:3];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.circle" withConfiguration:v11];
  [v8 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FFC0]];
  actions = [tipCopy actions];
  firstObject = [actions firstObject];
  title2 = [firstObject title];
  [v8 setObject:title2 forKeyedSubscript:@"ICSActionButtonTitleKey"];

  actions2 = [tipCopy actions];

  firstObject2 = [actions2 firstObject];
  [v8 setObject:firstObject2 forKeyedSubscript:@"ICSActionKey"];

  [v8 setButtonAction:sel_performTipAction_];
  [v6 addObject:v8];
  v18 = [v6 copy];

  return v18;
}

- (void)performTipAction:(id)action
{
  v32[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = LogSubsystem(actionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "Backup tip action button tapped.", &v27, 2u);
  }

  if (!self->_upgradeFlowManager)
  {
    v7 = [actionCopy objectForKeyedSubscript:@"ICSActionKey"];
    v8 = MEMORY[0x277CBEBC0];
    urlString = [v7 urlString];
    v10 = [v8 URLWithString:urlString];

    type = [v7 type];
    v12 = _ICQActionForString();

    if (v10)
    {
      isUpsellAction = [v7 isUpsellAction];
      if (isUpsellAction)
      {
        v14 = objc_alloc_init(MEMORY[0x277D7F388]);
        [v14 _updateRequestedServerUIURLWithURL:v10];
        v15 = [objc_alloc(MEMORY[0x277D7F4E0]) initWithOffer:v14];
        upgradeFlowManager = self->_upgradeFlowManager;
        self->_upgradeFlowManager = v15;

        [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:self];
        v17 = objc_alloc(MEMORY[0x277D7F370]);
        type2 = [v7 type];
        v19 = [v17 initWithActionString:type2 url:v10];

        v21 = LogSubsystem(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412290;
          v28 = v10;
          _os_log_impl(&dword_275819000, v21, OS_LOG_TYPE_DEFAULT, "Launching freshmint upgrade flow with url: %@", &v27, 0xCu);
        }

        [(ICQUpgradeFlowManager *)self->_upgradeFlowManager beginRemoteUpgradeFlowWithICQLink:v19 presenter:self];
LABEL_18:

        goto LABEL_19;
      }

      if (v12 == 6)
      {
        v22 = MEMORY[0x277D7F370];
        v31 = *MEMORY[0x277D7F280];
        v32[0] = v10;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        v24 = [v22 performAction:6 parameters:v23 options:0];

        v14 = LogSubsystem(v25);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v26 = @"NO";
          if (v24)
          {
            v26 = @"YES";
          }

          v27 = 138412546;
          v28 = v10;
          v29 = 2112;
          v30 = v26;
          _os_log_impl(&dword_275819000, v14, OS_LOG_TYPE_DEFAULT, "Successfully launched URL %@: %@", &v27, 0x16u);
        }

        goto LABEL_18;
      }
    }

    v14 = LogSubsystem(isUpsellAction);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICSBackupViewController performTipAction:];
    }

    goto LABEL_18;
  }

  v7 = LogSubsystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ICSBackupViewController performTipAction:v7];
  }

LABEL_19:
}

- (void)upgradeFlowManagerDidCancel:(id)cancel
{
  v4 = LogSubsystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Upgrade flow cancelled.", v6, 2u);
  }

  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:0];
  upgradeFlowManager = self->_upgradeFlowManager;
  self->_upgradeFlowManager = 0;
}

- (void)upgradeFlowManagerDidComplete:(id)complete
{
  v4 = LogSubsystem(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "Upgrade flow completed successfully.", buf, 2u);
  }

  [(ICQUpgradeFlowManager *)self->_upgradeFlowManager setDelegate:0];
  upgradeFlowManager = self->_upgradeFlowManager;
  self->_upgradeFlowManager = 0;

  [(ICSBackupViewController *)self _postQuotaDidChangeNotification];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ICSBackupViewController_upgradeFlowManagerDidComplete___block_invoke;
  block[3] = &unk_27A666198;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__ICSBackupViewController_upgradeFlowManagerDidComplete___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 1568))
  {
    v2 = LogSubsystem(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "Removing backup tip specifiers.", v5, 2u);
    }

    [*(a1 + 32) removeContiguousSpecifiers:*(*(a1 + 32) + 1568) animated:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1568);
    *(v3 + 1568) = 0;
  }
}

- (void)_postQuotaDidChangeNotification
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = LogSubsystem(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ICSBackupViewController _postQuotaDidChangeNotification]";
    _os_log_impl(&dword_275819000, v2, OS_LOG_TYPE_DEFAULT, "%s refreshing quota storage info", &v4, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D7F2C0] object:0];
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    [(AAUISpecifierProvider *)self->_backupSpecifierProvider handleURL:lCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __87__ICSBackupViewController__checkSupportForManualAndAutoBackupOnCellularWithCompletion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "%@ got deallocated.", v5, 0xCu);
}

void __66__ICSBackupViewController__persistBackupEnablementState_passcode___block_invoke_478_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*(*(a1 + 56) + 8) + 40);
  OUTLINED_FUNCTION_0_0(&dword_275819000, a2, a3, "Error starting iCloud Backup: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end