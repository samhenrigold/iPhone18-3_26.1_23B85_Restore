@interface CloudSettingSyncCoordinator
- (BOOL)_isDataclassEnabledInOperationGroup:(id)group;
- (BOOL)_updateAccountHashIfNeededInOperationGroup:(id)group;
- (CloudSettingSyncCoordinator)initWithSettingStore:(id)store accountStore:(id)accountStore;
- (CloudSettingSyncCoordinatorDelegate)delegate;
- (id)_perSitePreferencesStore;
- (void)_beginSyncingInOperationGroup:(id)group completionHandlers:(id)handlers;
- (void)_cleanUpAndCallCompletionHandlersWithError:(id)error inOperationGroup:(id)group;
- (void)_clearCachedCloudSettingsRecordZoneIfNecessaryForError:(id)error;
- (void)_clearPerSiteSettingsSyncDataInOperationGroup:(id)group;
- (void)_continueFetchingSettingsInOperationGroup:(id)group completionHandler:(id)handler;
- (void)_continueSyncingAfterSyncingDown:(BOOL)down inOperationGroup:(id)group;
- (void)_didFailToSyncWithError:(id)error inOperationGroup:(id)group;
- (void)_handleExpiredChangeTokenError:(id)error inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_pcsIdentitiesDidChangeNotification:(id)notification;
- (void)_performSyncDownInOperationGroup:(id)group;
- (void)_readServerChangeTokenFromUserDefaultsInOperationGroup:(id)group;
- (void)_savePerSiteCloudKitRecordsToDisk:(id)disk inOperationGroup:(id)group;
- (void)_saveServerChangeToken:(id)token inOperationGroup:(id)group;
- (void)beginSyncingInOperationGroup:(id)group completionHandler:(id)handler;
- (void)clearServerChangeToken;
- (void)deleteRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler;
- (void)saveImageRecord:(id)record inOperationGroup:(id)group successCompletionHandler:(id)handler;
- (void)savePerSiteRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler;
- (void)saveRecords:(id)records inOperationGroup:(id)group successCompletionHandler:(id)handler;
- (void)setNeedsAccountHashCheck;
- (void)userAccountChanged;
@end

@implementation CloudSettingSyncCoordinator

- (CloudSettingSyncCoordinator)initWithSettingStore:(id)store accountStore:(id)accountStore
{
  storeCopy = store;
  accountStoreCopy = accountStore;
  v13.receiver = self;
  v13.super_class = CloudSettingSyncCoordinator;
  v9 = [(CloudSettingSyncCoordinator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountStore, accountStore);
    objc_storeStrong(&v10->_settingStore, store);
    *&v10->_needsDataclassEnabledCheck = 257;
    v11 = v10;
  }

  return v10;
}

- (void)userAccountChanged
{
  v3 = sub_10000300C(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User account changed for iCloud Settings", v4, 2u);
  }

  self->_needsDataclassEnabledCheck = 1;
}

- (BOOL)_isDataclassEnabledInOperationGroup:(id)group
{
  groupCopy = group;
  if (!self->_needsDataclassEnabledCheck)
  {
LABEL_7:
    dataclassEnabled = self->_dataclassEnabled;
    goto LABEL_8;
  }

  self->_needsDataclassEnabledCheck = 0;
  safari_primaryAppleAccount = [(ACAccountStore *)self->_accountStore safari_primaryAppleAccount];
  if (safari_primaryAppleAccount)
  {
    v7 = safari_primaryAppleAccount;
    v8 = [safari_primaryAppleAccount isEnabledForDataclass:kAccountDataclassBookmarks];
    self->_dataclassEnabled = v8;
    if ((v8 & 1) == 0)
    {
      v10 = sub_10000300C(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        safari_logDescription = [groupCopy safari_logDescription];
        v18 = 138543362;
        v19 = safari_logDescription;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "iCloud Settings syncing not available because Safari's dataclass isn't enabled with %{public}@", &v18, 0xCu);
      }
    }

    goto LABEL_7;
  }

  v15 = sub_10000300C(0, v6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    safari_logDescription2 = [groupCopy safari_logDescription];
    v18 = 138543362;
    v19 = safari_logDescription2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "iCloud Settings syncing not available because user is not signed in with %{public}@", &v18, 0xCu);
  }

  dataclassEnabled = 0;
  self->_dataclassEnabled = 0;
LABEL_8:

  return dataclassEnabled;
}

- (BOOL)_updateAccountHashIfNeededInOperationGroup:(id)group
{
  groupCopy = group;
  v6 = groupCopy;
  if (self->_needsAccountHashCheck)
  {
    v7 = sub_10000300C(groupCopy, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      safari_logDescription = [v6 safari_logDescription];
      *v40 = 138543362;
      *&v40[4] = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking account hash with %{public}@", v40, 0xCu);
    }

    safari_primaryAppleAccount = [(ACAccountStore *)self->_accountStore safari_primaryAppleAccount];
    safari_accountHash = [safari_primaryAppleAccount safari_accountHash];

    v12 = +[NSUserDefaults safari_browserDefaults];
    v13 = [v12 objectForKey:@"settingsSyncAccountDSIDHash"];

    if (v13)
    {
      v14 = [v13 isEqualToData:safari_accountHash];
      v15 = v14;
      v17 = sub_10000300C(v14, v16);
      v18 = v17;
      if (v15)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          safari_logDescription2 = [v6 safari_logDescription];
          *v40 = 138543362;
          *&v40[4] = safari_logDescription2;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Account hash matches with %{public}@", v40, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_100054464(v18);
        }

        v35 = +[NSUserDefaults safari_browserDefaults];
        [v35 setObject:safari_accountHash forKey:@"settingsSyncAccountDSIDHash"];
      }

      self->_needsAccountHashCheck = 0;
      goto LABEL_25;
    }

    v22 = +[NSUserDefaults safari_browserDefaults];
    v23 = [v22 objectForKey:@"settingsSyncAccountHash"];

    v24 = [v23 isEqualToData:safari_accountHash];
    safari_primaryAppleAccount2 = [(ACAccountStore *)self->_accountStore safari_primaryAppleAccount];
    safari_deprecatedUsernameAccountHash = [safari_primaryAppleAccount2 safari_deprecatedUsernameAccountHash];
    v27 = [v23 isEqualToData:safari_deprecatedUsernameAccountHash];

    v30 = sub_10000300C(v28, v29);
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (v31)
      {
        v32 = v30;
        safari_logDescription3 = [v6 safari_logDescription];
        *v40 = 138543362;
        *&v40[4] = safari_logDescription3;
        v34 = "Account hash matches. Storing account hash in new location with %{public}@";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v34, v40, 0xCu);
      }
    }

    else
    {
      if (!v27)
      {
        if (v31)
        {
          v36 = v30;
          safari_logDescription4 = [v6 safari_logDescription];
          *v40 = 138543362;
          *&v40[4] = safari_logDescription4;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Storing new account hash with %{public}@", v40, 0xCu);
        }

        v15 = 0;
        goto LABEL_24;
      }

      if (v31)
      {
        v32 = v30;
        safari_logDescription3 = [v6 safari_logDescription];
        *v40 = 138543362;
        *&v40[4] = safari_logDescription3;
        v34 = "Migrating deprecated account hash with %{public}@";
        goto LABEL_19;
      }
    }

    v15 = 1;
LABEL_24:
    v38 = [NSUserDefaults safari_browserDefaults:*v40];
    [v38 setObject:safari_accountHash forKey:@"settingsSyncAccountDSIDHash"];

    self->_needsAccountHashCheck = 0;
LABEL_25:
    v21 = v15 ^ 1;

    goto LABEL_26;
  }

  v21 = 0;
LABEL_26:

  return v21;
}

- (void)setNeedsAccountHashCheck
{
  v3 = sub_10000300C(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Needs account hash check", v4, 2u);
  }

  self->_needsAccountHashCheck = 1;
}

- (void)beginSyncingInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  v7 = [handler copy];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [(CloudSettingSyncCoordinator *)self _beginSyncingInOperationGroup:groupCopy completionHandlers:v8];
}

- (void)_beginSyncingInOperationGroup:(id)group completionHandlers:(id)handlers
{
  groupCopy = group;
  handlersCopy = handlers;
  v9 = sub_10000300C(handlersCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v18 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sync coordinator will begin syncing with %{public}@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050C2C;
  block[3] = &unk_100132D78;
  block[4] = self;
  v15 = groupCopy;
  v16 = handlersCopy;
  v12 = handlersCopy;
  v13 = groupCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_continueSyncingAfterSyncingDown:(BOOL)down inOperationGroup:(id)group
{
  groupCopy = group;
  v7 = [(CloudSettingSyncCoordinator *)self _isDataclassEnabledInOperationGroup:groupCopy];
  if (!v7 || (v7 = +[WBSFeatureAvailability isCustomizationSyncEnabled], (v7 & 1) == 0))
  {
    v12 = sub_10000300C(v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      safari_logDescription = [groupCopy safari_logDescription];
      v15 = 138543362;
      v16 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Stopping fetch of settings with %{public}@", &v15, 0xCu);
    }

    goto LABEL_9;
  }

  if (down)
  {
LABEL_9:
    [(CloudSettingSyncCoordinator *)self _cleanUpAndCallCompletionHandlersWithError:0 inOperationGroup:groupCopy];
    goto LABEL_10;
  }

  v9 = sub_10000300C(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    safari_logDescription2 = [groupCopy safari_logDescription];
    v15 = 138543362;
    v16 = safari_logDescription2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Have not performed a sync down yet; doing so now with %{public}@", &v15, 0xCu);
  }

  [(CloudSettingSyncCoordinator *)self _performSyncDownInOperationGroup:groupCopy];
LABEL_10:
}

- (void)_performSyncDownInOperationGroup:(id)group
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000513EC;
  v5[3] = &unk_100132208;
  groupCopy = group;
  selfCopy = self;
  v4 = groupCopy;
  [(CloudSettingSyncCoordinator *)self _continueFetchingSettingsInOperationGroup:v4 completionHandler:v5];
}

- (void)_readServerChangeTokenFromUserDefaultsInOperationGroup:(id)group
{
  groupCopy = group;
  v5 = +[NSUserDefaults safari_browserDefaults];
  v6 = [v5 objectForKey:@"customizationSyncServerToken"];

  v13 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v13];
  v8 = v13;
  serverChangeToken = self->_serverChangeToken;
  self->_serverChangeToken = v7;

  if (v8)
  {
    v12 = sub_10000300C(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100054648();
    }
  }

  if (!self->_serverChangeToken)
  {
    self->_shouldPerformInitialSyncDown = 1;
  }
}

- (void)_saveServerChangeToken:(id)token inOperationGroup:(id)group
{
  tokenCopy = token;
  groupCopy = group;
  if (tokenCopy)
  {
    v17 = 0;
    v9 = [NSKeyedArchiver archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v17];
    v10 = v17;
    v12 = v10;
    if (v10)
    {
      v13 = sub_10000300C(v10, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000546F0();
      }
    }

    objc_storeStrong(&self->_serverChangeToken, token);
    v14 = +[NSUserDefaults safari_browserDefaults];
    [v14 setObject:v9 forKey:@"customizationSyncServerToken"];
  }

  else
  {
    v15 = +[NSUserDefaults safari_browserDefaults];
    [v15 removeObjectForKey:@"customizationSyncServerToken"];

    serverChangeToken = self->_serverChangeToken;
    self->_serverChangeToken = 0;
  }
}

- (void)_continueFetchingSettingsInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  [(CloudSettingSyncCoordinator *)self _readServerChangeTokenFromUserDefaultsInOperationGroup:groupCopy];
  if (self->_isPerformingInitialSyncUp)
  {
    serverChangeToken = self->_serverChangeToken;
    self->_serverChangeToken = 0;
  }

  settingStore = self->_settingStore;
  v10 = self->_serverChangeToken;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000518B8;
  v17[3] = &unk_100132538;
  v17[4] = self;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000519D4;
  v16[3] = &unk_100132560;
  v16[4] = self;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100051AC4;
  v13[3] = &unk_100133A30;
  v13[4] = self;
  v14 = groupCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = groupCopy;
  [(CloudSettingStore *)settingStore fetchCloudSettingsRecordChangesSinceServerChangeToken:v10 inOperationGroup:v12 recordChangedBlock:v17 recordWithIDWasDeletedBlock:v16 completionHandler:v13];
}

- (void)_handleExpiredChangeTokenError:(id)error inOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v10 = sub_10000300C(handlerCopy, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    safari_logDescription = [groupCopy safari_logDescription];
    v13 = 138543362;
    v14 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Change token is expired; trying a full sync down with %{public}@", &v13, 0xCu);
  }

  [(CloudSettingSyncCoordinator *)self _saveServerChangeToken:0 inOperationGroup:groupCopy];
  [(CloudSettingSyncCoordinator *)self _continueFetchingSettingsInOperationGroup:groupCopy completionHandler:handlerCopy];
}

- (void)_didFailToSyncWithError:(id)error inOperationGroup:(id)group
{
  errorCopy = error;
  groupCopy = group;
  v9 = sub_10000300C(groupCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1000549A0();
  }

  [(CloudSettingSyncCoordinator *)self _cleanUpAndCallCompletionHandlersWithError:errorCopy inOperationGroup:groupCopy];
}

- (void)_cleanUpAndCallCompletionHandlersWithError:(id)error inOperationGroup:(id)group
{
  errorCopy = error;
  groupCopy = group;
  self->_isSynchronizing = 0;
  if (errorCopy)
  {
    [errorCopy safari_isOrContainsCloudKitMissingZoneError];
  }

  v8 = [(NSMutableArray *)self->_syncingCompletionHandlers copy];
  syncingCompletionHandlers = self->_syncingCompletionHandlers;
  self->_syncingCompletionHandlers = 0;

  if (!self->_didReceiveSyncRequestWhileSyncing)
  {
    v17 = sub_10000300C(v10, v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v14 = v17;
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543362;
      v23 = safari_logDescription;
      v16 = "Syncing done, calling completion handler with %{public}@";
      goto LABEL_9;
    }

LABEL_10:
    v20 = v8;
    v21 = errorCopy;
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();

    goto LABEL_11;
  }

  self->_didReceiveSyncRequestWhileSyncing = 0;
  v12 = sub_10000300C(v10, v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (errorCopy)
  {
    if (v13)
    {
      v14 = v12;
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543362;
      v23 = safari_logDescription;
      v16 = "Not retrying sync after receiving synchronization request during sync since previous sync failed with %{public}@";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v16, buf, 0xCu);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (v13)
  {
    v18 = v12;
    safari_logDescription2 = [groupCopy safari_logDescription];
    *buf = 138543362;
    v23 = safari_logDescription2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Retrying sync after receiving synchronization request during synchronization with %{public}@", buf, 0xCu);
  }

  [(CloudSettingSyncCoordinator *)self _beginSyncingInOperationGroup:groupCopy completionHandlers:v8];
LABEL_11:
}

- (void)_pcsIdentitiesDidChangeNotification:(id)notification
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:CKIdentityUpdateNotification object:0];

  if (self->_isWaitingForPCSIdentityUpdate)
  {
    self->_isWaitingForPCSIdentityUpdate = 0;
    v7 = sub_10000300C(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrying sync after receiving expected PCS identity change notification.", v12, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 pcsIdentitiesDidChangeForCloudSettingSyncCoordinator:self];
    }
  }

  else
  {
    v11 = sub_10000300C(v5, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Ignoring PCS identity change notification because Customization Sync is not waiting for an identity update", buf, 2u);
    }
  }
}

- (void)saveImageRecord:(id)record inOperationGroup:(id)group successCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  recordCopy = record;
  v12 = sub_10000300C(recordCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v25 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Saving Safari's background image for the current device to CloudKit with %{public}@", buf, 0xCu);
  }

  settingStore = self->_settingStore;
  v23 = recordCopy;
  v16 = [NSArray arrayWithObjects:&v23 count:1];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005299C;
  v19[3] = &unk_100132CD8;
  v20 = groupCopy;
  selfCopy = self;
  v22 = handlerCopy;
  v17 = handlerCopy;
  v18 = groupCopy;
  [(CloudSettingStore *)settingStore saveCloudSettingsRecords:v16 createCloudSettingsZoneIfMissing:0 inOperationGroup:v18 clientChangeTokenData:0 mergeHandler:&stru_100133A70 completionHandler:v19];
}

- (void)saveRecords:(id)records inOperationGroup:(id)group successCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  recordsCopy = records;
  v12 = sub_10000300C(recordsCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v23 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Saving setting for the current device to CloudKit with %{public}@", buf, 0xCu);
  }

  settingStore = self->_settingStore;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100052D18;
  v18[3] = &unk_100132CD8;
  v19 = groupCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v16 = handlerCopy;
  v17 = groupCopy;
  [(CloudSettingStore *)settingStore saveCloudSettingsRecords:recordsCopy createCloudSettingsZoneIfMissing:0 inOperationGroup:v17 clientChangeTokenData:0 mergeHandler:&stru_100133A90 completionHandler:v18];
}

- (void)savePerSiteRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  recordsCopy = records;
  v12 = sub_10000300C(recordsCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v25 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Saving Per-Site settings for the current device to CloudKit with %{public}@", buf, 0xCu);
  }

  settingStore = self->_settingStore;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10005304C;
  v22[3] = &unk_100133B48;
  v22[4] = self;
  v23 = groupCopy;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000538E0;
  v18[3] = &unk_100132CD8;
  v19 = v23;
  selfCopy = self;
  v21 = handlerCopy;
  v16 = handlerCopy;
  v17 = v23;
  [(CloudSettingStore *)settingStore saveCloudSettingsRecords:recordsCopy createCloudSettingsZoneIfMissing:0 inOperationGroup:v17 clientChangeTokenData:0 mergeHandler:v22 completionHandler:v18];
}

- (id)_perSitePreferencesStore
{
  if (qword_100153FE0 != -1)
  {
    sub_100054CD0();
  }

  v3 = qword_100153FD8;

  return v3;
}

- (void)_savePerSiteCloudKitRecordsToDisk:(id)disk inOperationGroup:(id)group
{
  diskCopy = disk;
  groupCopy = group;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = diskCopy;
  v8 = [diskCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        _perSitePreferencesStore = [(CloudSettingSyncCoordinator *)self _perSitePreferencesStore];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100053CA4;
        v15[3] = &unk_100133AF8;
        v15[4] = v12;
        v16 = groupCopy;
        [_perSitePreferencesStore savePerSiteSettingCloudKitRecordToDisk:v12 completionHandler:v15];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_clearPerSiteSettingsSyncDataInOperationGroup:(id)group
{
  groupCopy = group;
  v6 = sub_10000300C(groupCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v14 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Clearing cached Per-Site Settings sync data with %{public}@", buf, 0xCu);
  }

  _perSitePreferencesStore = [(CloudSettingSyncCoordinator *)self _perSitePreferencesStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100053F0C;
  v11[3] = &unk_100132058;
  v12 = groupCopy;
  v10 = groupCopy;
  [_perSitePreferencesStore removeAllCloudKitRecordsWithCompletionHandler:v11];
}

- (void)deleteRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  recordsCopy = records;
  v12 = sub_10000300C(recordsCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v22 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleting settings from CloudKit with %{public}@", buf, 0xCu);
  }

  settingStore = self->_settingStore;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100054180;
  v18[3] = &unk_100131A70;
  v19 = groupCopy;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = groupCopy;
  [(CloudSettingStore *)settingStore deleteCloudSettingsRecords:recordsCopy inOperationGroup:v17 completionHandler:v18];
}

- (void)_clearCachedCloudSettingsRecordZoneIfNecessaryForError:(id)error
{
  if ([error safari_isOrContainsCloudKitMissingZoneError])
  {
    settingStore = self->_settingStore;

    [(CloudSettingStore *)settingStore clearCachedCloudSettingsRecordZone];
  }
}

- (void)clearServerChangeToken
{
  v3 = sub_10000300C(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing cached CloudSettings server change token", v6, 2u);
  }

  v4 = +[NSUserDefaults safari_browserDefaults];
  [v4 removeObjectForKey:@"customizationSyncServerToken"];

  serverChangeToken = self->_serverChangeToken;
  self->_serverChangeToken = 0;
}

- (CloudSettingSyncCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end