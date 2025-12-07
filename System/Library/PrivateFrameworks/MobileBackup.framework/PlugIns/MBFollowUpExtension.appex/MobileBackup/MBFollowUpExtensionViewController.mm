@interface MBFollowUpExtensionViewController
- (void)_allowRestoreOverCellularWithAccount:(id)account;
- (void)_dismissFollowUpItem:(id)item;
- (void)_openThermalKbase;
- (void)_openiCloudSettingsWithAccount:(id)account;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
@end

@implementation MBFollowUpExtensionViewController

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  itemCopy = item;
  actionCopy = action;
  completionCopy = completion;
  v11 = itemCopy;
  v12 = completionCopy;
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v52 = v11;
    v53 = 2114;
    v54 = actionCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Follow up extension processing item:%{public}@, action:%{public}@", buf, 0x16u);
    _MBLog(@"Df", "Follow up extension processing item:%{public}@, action:%{public}@", v11, actionCopy);
  }

  userInfo = [v11 userInfo];
  v15 = [userInfo objectForKeyedSubscript:@"FollowUpType"];

  userInfo2 = [actionCopy userInfo];
  v17 = [userInfo2 objectForKeyedSubscript:@"ActionType"];

  if (v15)
  {
    selfCopy = self;
    v43 = v17;
    v18 = +[ACAccountStore defaultStore];
    v41 = [v18 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierAppleAccount];
    v42 = v18;
    [v18 accountsWithAccountType:?];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = v49 = 0u;
    v19 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v45 = *v47;
      v21 = ACAccountPropertyRemoteManagingAccountIdentifier;
      v38 = v12;
      v39 = actionCopy;
      v37 = v15;
LABEL_6:
      v22 = 0;
      while (1)
      {
        if (*v47 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v46 + 1) + 8 * v22);
        v24 = [v23 objectForKeyedSubscript:v21];
        identifier = [v23 identifier];
        accountIdentifier = [v11 accountIdentifier];
        if ([identifier isEqualToString:accountIdentifier])
        {
          break;
        }

        v27 = v11;
        accountIdentifier2 = [v11 accountIdentifier];
        v29 = [v24 isEqualToString:accountIdentifier2];

        if (v29)
        {
          goto LABEL_18;
        }

        v22 = v22 + 1;
        v11 = v27;
        if (v20 == v22)
        {
          v20 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
          v12 = v38;
          actionCopy = v39;
          v15 = v37;
          if (v20)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }
      }

      v27 = v11;

LABEL_18:
      v31 = v23;

      v11 = v27;
      v12 = v38;
      actionCopy = v39;
      v15 = v37;
      v17 = v43;
      if (v31)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_13:

      v17 = v43;
    }

    accountIdentifier3 = [v11 accountIdentifier];

    if (accountIdentifier3)
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v11;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "The account responsible for %@ is already signed out. Dismissing followup instead", buf, 0xCu);
        _MBLog(@"Df", "The account responsible for %@ is already signed out. Dismissing followup instead", v11);
      }

      [(MBFollowUpExtensionViewController *)selfCopy _dismissFollowUpItem:v11];
      v12[2](v12, 1);
      goto LABEL_43;
    }

    v31 = 0;
LABEL_24:
    intValue = [v15 intValue];
    if (intValue > 5)
    {
      if (intValue != 6)
      {
        if (intValue != 8)
        {
          goto LABEL_39;
        }

        if (v17 && [v17 intValue] == 1)
        {
          [(MBFollowUpExtensionViewController *)selfCopy _openiCloudSettingsWithAccount:v31];
        }

        goto LABEL_38;
      }
    }

    else if (intValue != 1)
    {
      if (intValue == 5)
      {
        if (v17)
        {
          if ([v17 intValue] == 5)
          {
            [(MBFollowUpExtensionViewController *)selfCopy _allowRestoreOverCellularWithAccount:v31];
          }

          else if ([v17 intValue] == 6)
          {
            [(MBFollowUpExtensionViewController *)selfCopy _openThermalKbase];
          }
        }

        goto LABEL_42;
      }

LABEL_39:
      v35 = MBGetDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        intValue2 = [v15 intValue];
        *buf = 67109120;
        LODWORD(v52) = intValue2;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unknown follow up item of type %u", buf, 8u);
        _MBLog(@"E ", "Unknown follow up item of type %u", [v15 intValue]);
      }

      goto LABEL_42;
    }

    if (v17 && [v17 intValue] == 1)
    {
      [(MBFollowUpExtensionViewController *)selfCopy _openiCloudSettingsWithAccount:v31];
LABEL_42:
      v12[2](v12, 1);

LABEL_43:
      goto LABEL_44;
    }

LABEL_38:
    [(MBFollowUpExtensionViewController *)selfCopy _dismissFollowUpItem:v11];
    goto LABEL_42;
  }

  v30 = MBGetDefaultLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Follow-up item had no item type. Don't know how to respond", buf, 2u);
    _MBLog(@"E ", "Follow-up item had no item type. Don't know how to respond");
  }

  v12[2](v12, 1);
LABEL_44:
}

- (void)_openiCloudSettingsWithAccount:(id)account
{
  accountCopy = account;
  v4 = accountCopy;
  if (accountCopy && ![accountCopy aa_isAccountClass:AAAccountClassPrimary])
  {
    username = [v4 username];
    v7 = [NSString stringWithFormat:@"prefs:root=ManagedAccount:%@&path=ICLOUD_SERVICE/com.apple.Dataclass.Backup", username];
    v5 = [NSURL URLWithString:v7];
  }

  else
  {
    v5 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/com.apple.Dataclass.Backup"];
  }

  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Trying to swizzle over to iCloud backup pane: %@", buf, 0xCu);
    _MBLog(@"I ", "Trying to swizzle over to iCloud backup pane: %@", v5);
  }

  v9 = +[LSApplicationWorkspace defaultWorkspace];
  [v9 openSensitiveURL:v5 withOptions:0];
}

- (void)_openThermalKbase
{
  v2 = [NSURL URLWithString:@"https://support.apple.com/HT201678?cid=iOS_SettingsUI_iphone_article_HT201678"];
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Opening thermal kbase %@", buf, 0xCu);
    _MBLog(@"I ", "Opening thermal kbase %@", v2);
  }

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = 0;
  v5 = [v4 openURL:v2 withOptions:0 error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = v2;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not open kbase url %@ error %@", buf, 0x16u);
      _MBLog(@"E ", "Could not open kbase url %@ error %@", v2, v6);
    }
  }
}

- (void)_dismissFollowUpItem:(id)item
{
  itemCopy = item;
  if (!self->_followUpController)
  {
    v5 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.backupd"];
    followUpController = self->_followUpController;
    self->_followUpController = v5;

    v7 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.MobileBackup"];
    legacyController = self->_legacyController;
    self->_legacyController = v7;
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = itemCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Clearing follow-up item %{public}@", buf, 0xCu);
    _MBLog(@"Df", "Clearing follow-up item %{public}@", itemCopy);
  }

  v10 = self->_followUpController;
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v27 = uniqueIdentifier;
  v12 = [NSArray arrayWithObjects:&v27 count:1];
  v21 = 0;
  v13 = [(FLFollowUpController *)v10 clearPendingFollowUpItemsWithUniqueIdentifiers:v12 error:&v21];
  v14 = v21;

  if ((v13 & 1) == 0)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier2 = [itemCopy uniqueIdentifier];
      *buf = 138412546;
      v24 = uniqueIdentifier2;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Couldn't dismiss follow-up %@ with error %@", buf, 0x16u);

      uniqueIdentifier3 = [itemCopy uniqueIdentifier];
      _MBLog(@"E ", "Couldn't dismiss follow-up %@ with error %@", uniqueIdentifier3, v14);
    }
  }

  v18 = self->_legacyController;
  uniqueIdentifier4 = [itemCopy uniqueIdentifier];
  v22 = uniqueIdentifier4;
  v20 = [NSArray arrayWithObjects:&v22 count:1];
  [(FLFollowUpController *)v18 clearPendingFollowUpItemsWithUniqueIdentifiers:v20 error:0];
}

- (void)_allowRestoreOverCellularWithAccount:(id)account
{
  accountCopy = account;
  v5 = accountCopy;
  if (!self->_manager)
  {
    personaIdentifier = [accountCopy personaIdentifier];

    if (personaIdentifier)
    {
      v7 = [[MBManager alloc] initWithAccount:v5 delegate:0 eventQueue:0];
    }

    else
    {
      v7 = objc_opt_new();
    }

    manager = self->_manager;
    self->_manager = v7;
  }

  v9 = +[MBCellularAccess inexpensiveCellularAccess];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Allowing background restore over cellular, setting cellular access to:%@", buf, 0xCu);
    _MBLog(@"Df", "Allowing background restore over cellular, setting cellular access to:%@", v9);
  }

  v11 = dispatch_semaphore_create(0);
  v12 = self->_manager;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001A68;
  v15[3] = &unk_100004178;
  v16 = v9;
  v17 = v11;
  v13 = v11;
  v14 = v9;
  [(MBManager *)v12 saveBackgroundRestoreCellularAccess:v14 completion:v15];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
}

@end