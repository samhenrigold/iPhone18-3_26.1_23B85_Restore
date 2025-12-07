@interface NCBSBridgeSetupController
+ (BOOL)controllerNeedsToRunForContactsManagementState:(int)state;
+ (id)_controllerClassFlowForContactsManagementState:(int)state priorFlow:(id)flow;
- (BOOL)_contactsSyncEnabledWithNetworkAccess;
- (BOOL)_setupGuardianHasContacts;
- (BOOL)_shouldPromptForiCloudSync;
- (BOOL)activePairingDeviceSupportsContactsApp;
- (BOOL)holdBeforeDisplaying;
- (NCBSBridgeSetupController)init;
- (id)_iCloudSyncPromptAlertMessageStringForNeedToEnableDataAccess:(BOOL)access needToEnableiCloudSync:(BOOL)sync needToMergeContacts:(BOOL)contacts;
- (id)_iCloudSyncPromptAlertTitleStringForNeedToEnableDataAccess:(BOOL)access needToEnableiCloudSync:(BOOL)sync needToMergeContacts:(BOOL)contacts;
- (id)_nextControllerToRunAtOrAfterIndex:(unint64_t)index;
- (id)contactsManagementStateManager;
- (id)familyMember;
- (id)familyMemberFirstName;
- (id)setupGuardian;
- (id)viewController;
- (int)_familyMemberContactsStatusForContactsCountStatus:(int)status;
- (void)_checkContactsManagementAndEnqueueReleaseHold;
- (void)_enqueueReleaseHoldWithSkip:(BOOL)skip;
- (void)_familyMemberSetNotification:(id)notification;
- (void)_fetchContactsManagementStateWithHoldWaitUIAndCompletionHandler:(id)handler;
- (void)_promptForiCloudSyncFollowingController:(id)controller;
- (void)_updateContactsManagementStateWithHoldWaitUIThenStepCompleteController:(id)controller;
- (void)_updateForContactsManagementState:(int)state contactsCountStatus:(int)status;
- (void)dealloc;
- (void)miniFlowStepComplete:(id)complete;
- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class;
- (void)requestContactsManagementWithCompletionHandler:(id)handler;
- (void)setShowingHoldWait:(BOOL)wait;
@end

@implementation NCBSBridgeSetupController

- (NCBSBridgeSetupController)init
{
  v8.receiver = self;
  v8.super_class = NCBSBridgeSetupController;
  v2 = [(NCBSBridgeSetupController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NCContactsiCloudSyncHelper);
    iCloudSyncHelper = v2->_iCloudSyncHelper;
    v2->_iCloudSyncHelper = v3;

    v5 = objc_alloc_init(NCContactsSyncDataAccessHelper);
    contactsSyncDataAccessHelper = v2->_contactsSyncDataAccessHelper;
    v2->_contactsSyncDataAccessHelper = v5;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NCBSBridgeSetupController;
  [(NCBSBridgeSetupController *)&v4 dealloc];
}

- (id)viewController
{
  firstViewControllerForCurrentFlow = [(NCBSBridgeSetupController *)self firstViewControllerForCurrentFlow];

  if (firstViewControllerForCurrentFlow)
  {
    contactsManagementStateManager = NCBS_Tinker_log(v4);
    if (!os_log_type_enabled(contactsManagementStateManager, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    firstViewControllerForCurrentFlow2 = [(NCBSBridgeSetupController *)self firstViewControllerForCurrentFlow];
    v12 = 136446978;
    v13 = "[NCBSBridgeSetupController viewController]";
    v14 = 2114;
    v15 = firstViewControllerForCurrentFlow2;
    v16 = 1024;
    cmsForRunningFlow = [(NCBSBridgeSetupController *)self cmsForRunningFlow];
    v18 = 1024;
    familyMemberContactsStatusAtStartOfFlow = [(NCBSBridgeSetupController *)self familyMemberContactsStatusAtStartOfFlow];
    _os_log_impl(&dword_0, contactsManagementStateManager, OS_LOG_TYPE_INFO, "%{public}s - re-vending firstViewControllerForCurrentFlow: %{public}@ for cmsForRunningFlow: %d familyMemberContactsStatusAtStartOfFlow: %d", &v12, 0x22u);
  }

  else
  {
    contactsManagementStateManager = [(NCBSBridgeSetupController *)self contactsManagementStateManager];
    [(NCBSBridgeSetupController *)self _updateForContactsManagementState:[contactsManagementStateManager lastKnownContactsManagementState] contactsCountStatus:[contactsManagementStateManager contactsCountStatus]];
    v7 = [(NCBSBridgeSetupController *)self _nextControllerToRunAtOrAfterIndex:0];
    [(NCBSBridgeSetupController *)self setFirstViewControllerForCurrentFlow:v7];

    firstViewControllerForCurrentFlow2 = NCBS_Tinker_log(v8);
    if (os_log_type_enabled(firstViewControllerForCurrentFlow2, OS_LOG_TYPE_DEFAULT))
    {
      firstViewControllerForCurrentFlow3 = [(NCBSBridgeSetupController *)self firstViewControllerForCurrentFlow];
      v12 = 136447234;
      v13 = "[NCBSBridgeSetupController viewController]";
      v14 = 2114;
      v15 = firstViewControllerForCurrentFlow3;
      v16 = 1024;
      cmsForRunningFlow = [(NCBSBridgeSetupController *)self cmsForRunningFlow];
      v18 = 1024;
      familyMemberContactsStatusAtStartOfFlow = [(NCBSBridgeSetupController *)self familyMemberContactsStatusAtStartOfFlow];
      v20 = 1024;
      contactsSyncAndNetworkAccessEnabled = [contactsManagementStateManager contactsSyncAndNetworkAccessEnabled];
      _os_log_impl(&dword_0, firstViewControllerForCurrentFlow2, OS_LOG_TYPE_DEFAULT, "%{public}s - vending firstViewControllerForCurrentFlow: %{public}@ for cmsForRunningFlow: %d familyMemberContactsStatusAtStartOfFlow: %d contactsSyncAndNetworkAccessEnabled: %d", &v12, 0x28u);
    }
  }

LABEL_7:
  firstViewControllerForCurrentFlow4 = [(NCBSBridgeSetupController *)self firstViewControllerForCurrentFlow];

  return firstViewControllerForCurrentFlow4;
}

- (void)_updateForContactsManagementState:(int)state contactsCountStatus:(int)status
{
  v4 = *&status;
  v5 = *&state;
  v7 = NCBS_Tinker_log(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v16 = 136446722;
    v17 = "[NCBSBridgeSetupController _updateForContactsManagementState:contactsCountStatus:]";
    v18 = 1024;
    v19 = v5;
    v20 = 1024;
    v21 = v4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%{public}s :%d:%d", &v16, 0x18u);
  }

  [(NCBSBridgeSetupController *)self setCmsForRunningFlow:v5];
  v8 = objc_opt_class();
  cmsForRunningFlow = [(NCBSBridgeSetupController *)self cmsForRunningFlow];
  runningFlow = [(NCBSBridgeSetupController *)self runningFlow];
  v11 = [v8 _controllerClassFlowForContactsManagementState:cmsForRunningFlow priorFlow:runningFlow];
  [(NCBSBridgeSetupController *)self setRunningFlow:v11];

  [(NCBSBridgeSetupController *)self setFamilyMemberContactsStatusAtStartOfFlow:[(NCBSBridgeSetupController *)self _familyMemberContactsStatusForContactsCountStatus:v4]];
  v12 = NCBS_Tinker_log([(NCBSBridgeSetupController *)self setSetupGuardianHasContactsToDonate:[(NCBSBridgeSetupController *)self _setupGuardianHasContacts]]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    cmsForRunningFlow2 = [(NCBSBridgeSetupController *)self cmsForRunningFlow];
    familyMemberContactsStatusAtStartOfFlow = [(NCBSBridgeSetupController *)self familyMemberContactsStatusAtStartOfFlow];
    setupGuardianHasContactsToDonate = [(NCBSBridgeSetupController *)self setupGuardianHasContactsToDonate];
    v16 = 136446978;
    v17 = "[NCBSBridgeSetupController _updateForContactsManagementState:contactsCountStatus:]";
    v18 = 1024;
    v19 = cmsForRunningFlow2;
    v20 = 1024;
    v21 = familyMemberContactsStatusAtStartOfFlow;
    v22 = 1024;
    v23 = setupGuardianHasContactsToDonate;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s - updated cmsForRunningFlow: %d familyMemberContactsStatusAtStartOfFlow: %d setupGuardianHasContactsToDonate: %d", &v16, 0x1Eu);
  }
}

- (BOOL)_shouldPromptForiCloudSync
{
  if ([(NCBSBridgeSetupController *)self cmsForRunningFlow]== 100 || [(NCBSBridgeSetupController *)self cmsForRunningFlow]== 101 || [(NCBSBridgeSetupController *)self cmsForRunningFlow]== 102)
  {
    return ![(NCBSBridgeSetupController *)self promptedForiCloudSync];
  }

  else
  {
    return 0;
  }
}

- (id)_iCloudSyncPromptAlertTitleStringForNeedToEnableDataAccess:(BOOL)access needToEnableiCloudSync:(BOOL)sync needToMergeContacts:(BOOL)contacts
{
  contactsCopy = contacts;
  syncCopy = sync;
  accessCopy = access;
  if (access)
  {
    v8 = NanoContactsBridgeSetupBundle(self);
    if (syncCopy)
    {
      if (contactsCopy)
      {
        v9 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_TITLE_DATAACCESS_ICLOUDSYNC_MERGECONTACTS";
      }

      else
      {
        v9 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_TITLE_DATAACCESS_ICLOUDSYNC";
      }
    }

    else
    {
      v9 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_TITLE_DATAACCESS";
    }
  }

  else
  {
    if (!sync)
    {
      goto LABEL_14;
    }

    v8 = NanoContactsBridgeSetupBundle(self);
    if (contactsCopy)
    {
      v9 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_TITLE_ICLOUDSYNC_MERGECONTACTS";
    }

    else
    {
      v9 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_TITLE_ICLOUDSYNC";
    }
  }

  v10 = [v8 localizedStringForKey:v9 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  if (v10)
  {
    v11 = NCBS_Tinker_log(self);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 136447234;
      v14 = "[NCBSBridgeSetupController _iCloudSyncPromptAlertTitleStringForNeedToEnableDataAccess:needToEnableiCloudSync:needToMergeContacts:]";
      v15 = 1024;
      v16 = accessCopy;
      v17 = 1024;
      v18 = syncCopy;
      v19 = 1024;
      v20 = contactsCopy;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%{public}s :%d:%d:%d => %@", &v13, 0x28u);
    }

    goto LABEL_17;
  }

LABEL_14:
  v11 = NCBS_Tinker_log(self);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 136446978;
    v14 = "[NCBSBridgeSetupController _iCloudSyncPromptAlertTitleStringForNeedToEnableDataAccess:needToEnableiCloudSync:needToMergeContacts:]";
    v15 = 1024;
    v16 = accessCopy;
    v17 = 1024;
    v18 = syncCopy;
    v19 = 1024;
    v20 = contactsCopy;
    _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%{public}s :%d:%d:%d - no format string", &v13, 0x1Eu);
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (id)_iCloudSyncPromptAlertMessageStringForNeedToEnableDataAccess:(BOOL)access needToEnableiCloudSync:(BOOL)sync needToMergeContacts:(BOOL)contacts
{
  contactsCopy = contacts;
  syncCopy = sync;
  accessCopy = access;
  if (access)
  {
    v9 = NanoContactsBridgeSetupBundle(self);
    if (syncCopy)
    {
      if (contactsCopy)
      {
        v10 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_MESSAGE_DATAACCESS_ICLOUDSYNC_MERGECONTACTS_%@";
      }

      else
      {
        v10 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_MESSAGE_DATAACCESS_ICLOUDSYNC_%@";
      }
    }

    else
    {
      v10 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_MESSAGE_DATAACCESS_%@";
    }
  }

  else
  {
    if (!sync)
    {
      goto LABEL_14;
    }

    v9 = NanoContactsBridgeSetupBundle(self);
    if (contactsCopy)
    {
      v10 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_MESSAGE_ICLOUDSYNC_MERGECONTACTS_%@";
    }

    else
    {
      v10 = @"TK_CONTACTS_ENABLE_SYNC_REQUEST_MESSAGE_ICLOUDSYNC_%@";
    }
  }

  v11 = [v9 localizedStringForKey:v10 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  familyMemberFirstName = [(NCBSBridgeSetupController *)self familyMemberFirstName];
  v13 = [NSString stringWithFormat:v11, familyMemberFirstName];

  if (v13)
  {
    v14 = NCBS_Tinker_log(self);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136447234;
      v17 = "[NCBSBridgeSetupController _iCloudSyncPromptAlertMessageStringForNeedToEnableDataAccess:needToEnableiCloudSync:needToMergeContacts:]";
      v18 = 1024;
      v19 = accessCopy;
      v20 = 1024;
      v21 = syncCopy;
      v22 = 1024;
      v23 = contactsCopy;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%{public}s :%d:%d:%d => %@", buf, 0x28u);
    }

    goto LABEL_17;
  }

LABEL_14:
  v14 = NCBS_Tinker_log(self);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v17 = "[NCBSBridgeSetupController _iCloudSyncPromptAlertMessageStringForNeedToEnableDataAccess:needToEnableiCloudSync:needToMergeContacts:]";
    v18 = 1024;
    v19 = accessCopy;
    v20 = 1024;
    v21 = syncCopy;
    v22 = 1024;
    v23 = contactsCopy;
    _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%{public}s :%d:%d:%d - no format string", buf, 0x1Eu);
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (void)_promptForiCloudSyncFollowingController:(id)controller
{
  controllerCopy = controller;
  networkAccessEnabledForContacts = [(NCContactsSyncDataAccessHelper *)self->_contactsSyncDataAccessHelper networkAccessEnabledForContacts];
  primaryiCloudAccountCardDAVEnabled = [(NCContactsiCloudSyncHelper *)self->_iCloudSyncHelper primaryiCloudAccountCardDAVEnabled];
  v7 = (primaryiCloudAccountCardDAVEnabled & 1) == 0 && [(NCContactsiCloudSyncHelper *)self->_iCloudSyncHelper enablingPrimaryiCloudAccountRequiresMergeFromLocal];
  v8 = primaryiCloudAccountCardDAVEnabled ^ 1;
  v21 = [(NCBSBridgeSetupController *)self _iCloudSyncPromptAlertTitleStringForNeedToEnableDataAccess:networkAccessEnabledForContacts ^ 1 needToEnableiCloudSync:primaryiCloudAccountCardDAVEnabled ^ 1 needToMergeContacts:v7];
  v20 = [(NCBSBridgeSetupController *)self _iCloudSyncPromptAlertMessageStringForNeedToEnableDataAccess:networkAccessEnabledForContacts ^ 1 needToEnableiCloudSync:primaryiCloudAccountCardDAVEnabled ^ 1 needToMergeContacts:v7];
  v9 = [UIAlertController alertControllerWithTitle:v21 message:v20 preferredStyle:1];
  v10 = NanoContactsBridgeSetupBundle(v9);
  v11 = [v10 localizedStringForKey:@"TK_CONTACTS_ENABLE_SYNC_REQUEST_BUTTON_ENABLE" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_99C4;
  v24[3] = &unk_1C768;
  v26 = networkAccessEnabledForContacts ^ 1;
  v24[4] = self;
  v27 = v8;
  v12 = controllerCopy;
  v25 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:v24];
  [v9 addAction:v13];

  v15 = NanoContactsBridgeSetupBundle(v14);
  v16 = [v15 localizedStringForKey:@"TK_CONTACTS_ENABLE_SYNC_REQUEST_BUTTON_SETUP_LATER" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_9B68;
  v22[3] = &unk_1C790;
  v22[4] = self;
  v23 = v12;
  v17 = v12;
  v18 = [UIAlertAction actionWithTitle:v16 style:0 handler:v22];
  [v9 addAction:v18];

  [(NCBSBridgeSetupController *)self setPromptedForiCloudSync:1];
  viewController = [(NCBSBridgeSetupController *)self viewController];
  [viewController presentViewController:v9 animated:1 completion:0];
}

- (void)_fetchContactsManagementStateWithHoldWaitUIAndCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(NCBSBridgeSetupController *)self setShowingHoldWait:1];
  contactsManagementStateManager = [(NCBSBridgeSetupController *)self contactsManagementStateManager];
  v6 = NCBS_Tinker_log(contactsManagementStateManager);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[NCBSBridgeSetupController _fetchContactsManagementStateWithHoldWaitUIAndCompletionHandler:]";
    v14 = 2112;
    v15 = contactsManagementStateManager;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - querying contactsManagementStateManager (this may take a while): %@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_9D7C;
  v9[3] = &unk_1C7E0;
  v9[4] = self;
  v10 = contactsManagementStateManager;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = contactsManagementStateManager;
  [v8 fetchContactsManagementStateWithCompletionHandler:v9];
}

- (void)_updateContactsManagementStateWithHoldWaitUIThenStepCompleteController:(id)controller
{
  controllerCopy = controller;
  v5 = NCBS_Tinker_log(controllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[NCBSBridgeSetupController _updateContactsManagementStateWithHoldWaitUIThenStepCompleteController:]";
    v11 = 2112;
    v12 = controllerCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", buf, 0x16u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A0A8;
  v7[3] = &unk_1C808;
  v7[4] = self;
  v8 = controllerCopy;
  v6 = controllerCopy;
  [(NCBSBridgeSetupController *)self _fetchContactsManagementStateWithHoldWaitUIAndCompletionHandler:v7];
}

- (void)miniFlowStepComplete:(id)complete
{
  completeCopy = complete;
  v5 = NCBS_Tinker_log(completeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446466;
    v18 = "[NCBSBridgeSetupController miniFlowStepComplete:]";
    v19 = 2112;
    v20 = completeCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v17, 0x16u);
  }

  if ([(NCBSBridgeSetupController *)self _shouldPromptForiCloudSync])
  {
    _contactsSyncEnabledWithNetworkAccess = [(NCBSBridgeSetupController *)self _contactsSyncEnabledWithNetworkAccess];
    contactsManagementStateManager = [(NCBSBridgeSetupController *)self contactsManagementStateManager];
    [contactsManagementStateManager setContactsSyncAndNetworkAccessEnabled:_contactsSyncEnabledWithNetworkAccess];

    if (_contactsSyncEnabledWithNetworkAccess)
    {
      [(NCBSBridgeSetupController *)self _updateContactsManagementStateWithHoldWaitUIThenStepCompleteController:completeCopy];
    }

    else
    {
      v13 = NCBS_Tinker_log(v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136446210;
        v18 = "[NCBSBridgeSetupController miniFlowStepComplete:]";
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s - prompting for iCloud sync", &v17, 0xCu);
      }

      [(NCBSBridgeSetupController *)self _promptForiCloudSyncFollowingController:completeCopy];
    }
  }

  else
  {
    runningFlow = [(NCBSBridgeSetupController *)self runningFlow];
    v10 = [runningFlow indexOfObject:objc_opt_class()];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = NCBS_Tinker_log(0x7FFFFFFFFFFFFFFFLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        cmsForRunningFlow = [(NCBSBridgeSetupController *)self cmsForRunningFlow];
        v17 = 136446978;
        v18 = "[NCBSBridgeSetupController miniFlowStepComplete:]";
        v19 = 2112;
        v20 = completeCopy;
        v21 = 1024;
        v22 = cmsForRunningFlow;
        v23 = 2112;
        v24 = runningFlow;
        _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%{public}s - completedController %@ not found in flow[%d] %@", &v17, 0x26u);
      }
    }

    else
    {
      v11 = [(NCBSBridgeSetupController *)self _nextControllerToRunAtOrAfterIndex:v10 + 1];
      v14 = NCBS_Tinker_log(v11);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v15)
        {
          v17 = 136446466;
          v18 = "[NCBSBridgeSetupController miniFlowStepComplete:]";
          v19 = 2112;
          v20 = v11;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s - pushing %@", &v17, 0x16u);
        }

        navigationController = [completeCopy navigationController];
        [navigationController pushViewController:v11 animated:1];
      }

      else
      {
        if (v15)
        {
          v17 = 136446210;
          v18 = "[NCBSBridgeSetupController miniFlowStepComplete:]";
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s - no next controller -> buddyControllerDone", &v17, 0xCu);
        }

        navigationController = [(NCBSBridgeSetupController *)self delegate];
        [navigationController buddyControllerDone:self];
      }
    }
  }
}

- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class
{
  v5 = objc_alloc_init(class);
  [v5 setMiniFlowDelegate:self];
  [(NCBSBridgeSetupController *)self pushController:v5 animated:1];
}

- (id)familyMember
{
  delegate = [(NCBSBridgeSetupController *)self delegate];
  setupFlowUserInfo = [delegate setupFlowUserInfo];
  v4 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowFamilyMember];

  return v4;
}

- (id)familyMemberFirstName
{
  familyMember = [(NCBSBridgeSetupController *)self familyMember];
  firstName = [familyMember firstName];

  return firstName;
}

- (id)setupGuardian
{
  delegate = [(NCBSBridgeSetupController *)self delegate];
  setupFlowUserInfo = [delegate setupFlowUserInfo];
  v5 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowFamilyPairingParent];

  if (!v5)
  {
    delegate2 = [(NCBSBridgeSetupController *)self delegate];
    setupFlowUserInfo2 = [delegate2 setupFlowUserInfo];
    v5 = [setupFlowUserInfo2 objectForKeyedSubscript:BPSPairingFlowFamilyOrganizer];

    v9 = NCBS_Tinker_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446210;
      v12 = "[NCBSBridgeSetupController setupGuardian]";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s - no BPSPairingFlowFamilyPairingParent, fell back to BPSPairingFlowFamilyOrganizer", &v11, 0xCu);
    }
  }

  return v5;
}

- (void)requestContactsManagementWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  contactsManagementStateManager = [(NCBSBridgeSetupController *)self contactsManagementStateManager];
  familyMember = [contactsManagementStateManager familyMember];
  v7 = NCBS_Tinker_log(familyMember);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[NCBSBridgeSetupController requestContactsManagementWithCompletionHandler:]";
    v10 = 2112;
    v11 = familyMember;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - requestContactsManagementForFamilyMember: %@", &v8, 0x16u);
  }

  [contactsManagementStateManager requestContactsManagementForFamilyMember:familyMember completionHandler:handlerCopy];
}

- (BOOL)activePairingDeviceSupportsContactsApp
{
  delegate = [(NCBSBridgeSetupController *)self delegate];
  activePairingDevice = [delegate activePairingDevice];

  if (activePairingDevice)
  {
    v5 = [[NSUUID alloc] initWithUUIDString:@"CBF3763A-5F42-4463-B714-39903987FE90"];
    v6 = [activePairingDevice supportsCapability:v5];

    v8 = NCBS_Tinker_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromBOOL();
      v11 = 136446466;
      v12 = "[NCBSBridgeSetupController activePairingDeviceSupportsContactsApp]";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s - %@", &v11, 0x16u);
    }
  }

  else
  {
    v8 = NCBS_Tinker_log(v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_F264();
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)holdBeforeDisplaying
{
  familyMember = [(NCBSBridgeSetupController *)self familyMember];

  if (familyMember)
  {
    _checkContactsManagementAndEnqueueReleaseHold = [(NCBSBridgeSetupController *)self _checkContactsManagementAndEnqueueReleaseHold];
  }

  else
  {
    v6 = NCBS_Tinker_log(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446210;
      v11 = "[NCBSBridgeSetupController holdBeforeDisplaying]";
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - !self.familyMember, waiting for BPSTinkerFamilyMemberNameSet", &v10, 0xCu);
    }

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_familyMemberSetNotification:" name:BPSTinkerFamilyMemberNameSet object:0];
  }

  v8 = NCBS_Tinker_log(_checkContactsManagementAndEnqueueReleaseHold);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[NCBSBridgeSetupController holdBeforeDisplaying]";
    v12 = 1024;
    v13 = 1;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s -> %d", &v10, 0x12u);
  }

  return 1;
}

- (void)_familyMemberSetNotification:(id)notification
{
  notificationCopy = notification;
  v5 = NCBS_Tinker_log(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[NCBSBridgeSetupController _familyMemberSetNotification:]";
    v12 = 2112;
    v13 = notificationCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %@", &v10, 0x16u);
  }

  familyMember = [(NCBSBridgeSetupController *)self familyMember];

  if (!familyMember)
  {
    v8 = NCBS_Tinker_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_F2E4();
    }
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:BPSTinkerFamilyMemberNameSet object:0];

  [(NCBSBridgeSetupController *)self _checkContactsManagementAndEnqueueReleaseHold];
}

- (void)_checkContactsManagementAndEnqueueReleaseHold
{
  contactsManagementStateManager = [(NCBSBridgeSetupController *)self contactsManagementStateManager];
  v4 = NCBS_Tinker_log(contactsManagementStateManager);
  v5 = v4;
  if (contactsManagementStateManager)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v8 = "[NCBSBridgeSetupController _checkContactsManagementAndEnqueueReleaseHold]";
      v9 = 2112;
      v10 = contactsManagementStateManager;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - querying contactsManagementStateManager (this may take a while): %@", buf, 0x16u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_ADF8;
    v6[3] = &unk_1C830;
    v6[4] = self;
    [contactsManagementStateManager fetchContactsManagementStateWithCompletionHandler:v6];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_F364(self, v5);
    }

    [(NCBSBridgeSetupController *)self _enqueueReleaseHoldWithSkip:1];
  }
}

- (void)_enqueueReleaseHoldWithSkip:(BOOL)skip
{
  skipCopy = skip;
  v5 = NCBS_Tinker_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[NCBSBridgeSetupController _enqueueReleaseHoldWithSkip:]";
    v10 = 1024;
    v11 = skipCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %d [dispatch]", buf, 0x12u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_B050;
  v6[3] = &unk_1C858;
  v7 = skipCopy;
  v6[4] = self;
  dispatch_async(&_dispatch_main_q, v6);
}

+ (BOOL)controllerNeedsToRunForContactsManagementState:(int)state
{
  v3 = [objc_opt_class() _controllerClassFlowForContactsManagementState:*&state priorFlow:0];
  v4 = [v3 count] != 0;

  return v4;
}

+ (id)_controllerClassFlowForContactsManagementState:(int)state priorFlow:(id)flow
{
  flowCopy = flow;
  v7 = flowCopy;
  v8 = 0;
  if (state > 3)
  {
    if ((state - 100) >= 3)
    {
      if (state != 4)
      {
        if (state != 5)
        {
          goto LABEL_24;
        }

        v29[0] = objc_opt_class();
        v29[1] = objc_opt_class();
        v29[2] = objc_opt_class();
        v29[3] = objc_opt_class();
        v9 = v29;
        v10 = 4;
        goto LABEL_22;
      }

      v30[0] = objc_opt_class();
      v30[1] = objc_opt_class();
      v9 = v30;
    }

    else
    {
      v28[0] = objc_opt_class();
      v28[1] = objc_opt_class();
      v9 = v28;
    }

    goto LABEL_21;
  }

  if (state > 1)
  {
    if (state == 2)
    {
      v12 = NCBS_Tinker_log(flowCopy);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_F48C();
      }

      flowCopy = [self _controllerClassFlowForContactsManagementState:3 priorFlow:v7];
      goto LABEL_23;
    }

    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v9 = v31;
    goto LABEL_21;
  }

  if (state)
  {
    if (state != 1)
    {
      goto LABEL_24;
    }

    if (![flowCopy containsObject:objc_opt_class()])
    {
      v32 = objc_opt_class();
      v9 = &v32;
      v10 = 1;
      goto LABEL_22;
    }

    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v9 = v33;
LABEL_21:
    v10 = 2;
LABEL_22:
    flowCopy = [NSArray arrayWithObjects:v9 count:v10];
LABEL_23:
    v8 = flowCopy;
    goto LABEL_24;
  }

  v11 = NCBS_Tinker_log(flowCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_F51C();
  }

  v8 = 0;
LABEL_24:
  v13 = NCBS_Tinker_log(flowCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136446978;
    v21 = "+[NCBSBridgeSetupController _controllerClassFlowForContactsManagementState:priorFlow:]";
    v22 = 1024;
    stateCopy2 = state;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v7;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: %d -> %{public}@ (priorFlow: %{public}@)", &v20, 0x26u);
  }

  v14 = [v7 count];
  v15 = [v8 count];
  if (v14 > v15)
  {
    v16 = NCBS_Tinker_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = [v7 count];
      v19 = [v8 count];
      v20 = 136446978;
      v21 = "+[NCBSBridgeSetupController _controllerClassFlowForContactsManagementState:priorFlow:]";
      v22 = 1024;
      stateCopy2 = state;
      v24 = 2048;
      v25 = v18;
      v26 = 2048;
      v27 = v19;
      _os_log_error_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%{public}s: %d; reduced flow element count (%tu -> %tu)", &v20, 0x26u);
    }
  }

  return v8;
}

- (id)contactsManagementStateManager
{
  contactsManagementStateManager = self->_contactsManagementStateManager;
  if (!contactsManagementStateManager)
  {
    delegate = [(NCBSBridgeSetupController *)self delegate];
    v5 = [NCABTinkerContactsManagementStateManager managerForBuddyControllerDelegate:delegate];
    v6 = self->_contactsManagementStateManager;
    self->_contactsManagementStateManager = v5;

    [(NCABTinkerContactsManagementStateManager *)self->_contactsManagementStateManager setContactsSyncAndNetworkAccessEnabled:0];
    contactsManagementStateManager = self->_contactsManagementStateManager;
  }

  return contactsManagementStateManager;
}

- (id)_nextControllerToRunAtOrAfterIndex:(unint64_t)index
{
  runningFlow = [(NCBSBridgeSetupController *)self runningFlow];
  v6 = [runningFlow count];
  if (v6 <= index)
  {
    v13 = 0;
  }

  else
  {
    *&v7 = 136446466;
    v17 = v7;
    do
    {
      v8 = [runningFlow objectAtIndexedSubscript:{index, v17}];
      v9 = objc_opt_respondsToSelector();
      if (v9)
      {
        v9 = [v8 controllerNeedsToRunWithMiniFlowDelegate:self];
        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      v11 = NCBS_Tinker_log(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        v19 = "[NCBSBridgeSetupController _nextControllerToRunAtOrAfterIndex:]";
        v20 = 2048;
        indexCopy = index;
        v22 = 1024;
        v23 = v10;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s - controllerFlowIndex: %tu runController: %d controllerClass: %@", buf, 0x26u);
      }

      if (v10)
      {
        v13 = [objc_msgSend(v8 "alloc")];
        [v13 setMiniFlowDelegate:self];
      }

      else
      {
        v14 = NCBS_Tinker_log(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v17;
          v19 = "[NCBSBridgeSetupController _nextControllerToRunAtOrAfterIndex:]";
          v20 = 2112;
          indexCopy = v8;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s - skipping controllerClass: %@", buf, 0x16u);
        }

        v13 = 0;
      }

      ++index;

      v6 = [runningFlow count];
    }

    while (index < v6 && !v13);
  }

  v15 = NCBS_Tinker_log(v6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v19 = "[NCBSBridgeSetupController _nextControllerToRunAtOrAfterIndex:]";
    v20 = 2112;
    indexCopy = v13;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}s - returning %@", buf, 0x16u);
  }

  return v13;
}

- (int)_familyMemberContactsStatusForContactsCountStatus:(int)status
{
  if (status == 4)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (status == 5)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (BOOL)_contactsSyncEnabledWithNetworkAccess
{
  primaryiCloudAccountCardDAVEnabled = [(NCContactsiCloudSyncHelper *)self->_iCloudSyncHelper primaryiCloudAccountCardDAVEnabled];
  networkAccessEnabledForContacts = [(NCContactsSyncDataAccessHelper *)self->_contactsSyncDataAccessHelper networkAccessEnabledForContacts];
  v5 = networkAccessEnabledForContacts;
  v6 = NCBS_Tinker_log(networkAccessEnabledForContacts);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 136446722;
    v9 = "[NCBSBridgeSetupController _contactsSyncEnabledWithNetworkAccess]";
    v10 = 1024;
    v11 = primaryiCloudAccountCardDAVEnabled;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%{public}s - primaryiCloudAccountCardDAVEnabled: %d, networkAccessEnabledForContacts: %d", &v8, 0x18u);
  }

  return primaryiCloudAccountCardDAVEnabled & v5;
}

- (BOOL)_setupGuardianHasContacts
{
  v2 = +[NCABContactsSyncHelper localDeviceContactsCount];
  unsignedIntegerValue = [v2 unsignedIntegerValue];
  v4 = NCBS_Tinker_log(unsignedIntegerValue);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446722;
    v7 = "[NCBSBridgeSetupController _setupGuardianHasContacts]";
    v8 = 2114;
    v9 = v2;
    v10 = 1024;
    v11 = unsignedIntegerValue != 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s - contactCountNumber: %{public}@ -> hasContacts: %d", &v6, 0x1Cu);
  }

  return unsignedIntegerValue != 0;
}

- (void)setShowingHoldWait:(BOOL)wait
{
  waitCopy = wait;
  v5 = NCBS_Tinker_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136446466;
    v21 = "[NCBSBridgeSetupController setShowingHoldWait:]";
    v22 = 1024;
    v23 = waitCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: %d", &v20, 0x12u);
  }

  navigationController = [(NCBSBridgeSetupController *)self navigationController];
  v7 = navigationController;
  if (waitCopy)
  {
    topViewController = [navigationController topViewController];
    view = [topViewController view];
    [view setUserInteractionEnabled:0];

    navigationController2 = [(NCBSBridgeSetupController *)self navigationController];
    navigationBar = [navigationController2 navigationBar];
    [navigationBar setUserInteractionEnabled:0];

    navigationBar3 = [[UIActivityIndicatorView alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
    topItem2 = [[UIBarButtonItem alloc] initWithCustomView:navigationBar3];
    navigationController3 = [(NCBSBridgeSetupController *)self navigationController];
    navigationBar2 = [navigationController3 navigationBar];

    topItem = [navigationBar2 topItem];
    [topItem setRightBarButtonItem:topItem2 animated:1];
    [navigationBar3 startAnimating];
  }

  else
  {
    navigationBar3 = [navigationController navigationBar];

    topItem2 = [navigationBar3 topItem];
    [topItem2 setRightBarButtonItem:0 animated:1];
    navigationController4 = [(NCBSBridgeSetupController *)self navigationController];
    topViewController2 = [navigationController4 topViewController];
    view2 = [topViewController2 view];
    [view2 setUserInteractionEnabled:1];

    navigationBar2 = [(NCBSBridgeSetupController *)self navigationController];
    topItem = [navigationBar2 navigationBar];
    [topItem setUserInteractionEnabled:1];
  }
}

@end