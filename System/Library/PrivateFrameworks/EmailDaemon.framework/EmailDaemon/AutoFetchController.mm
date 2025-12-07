@interface AutoFetchController
+ (AutoFetchController)sharedController;
+ (BOOL)shouldSyncAccountByMailbox:(id)mailbox;
+ (id)activeAccountsToSyncByAccount;
+ (id)partitionAccounts:(id)accounts;
+ (id)partitionMailboxes:(id)mailboxes;
- (AutoFetchController)init;
- (AutoFetchControllerDataSource)dataSource;
- (MFAccountsProvider)accountsProvider;
- (NSArray)activeAccountsToSyncByMailbox;
- (NSArray)visibleMailboxesToSyncByMailbox;
- (NSSet)displayedAccountsToSyncByMailbox;
- (id)diagnosticInformation;
- (id)favoritesPersistence;
- (void)_accountContentsDidChange:(id)change;
- (void)_freeSpaceStatusDidChange:(id)change;
- (void)_networkConfigurationChanged:(id)changed;
- (void)_networkHasAlternateAdvice:(id)advice;
- (void)_updateState:(int64_t)state;
- (void)fetchNow:(int)now;
- (void)fetchNow:(int)now withAccounts:(id)accounts;
- (void)fetchNow:(int)now withMailboxes:(id)mailboxes;
- (void)resetPushStateWithCompletion:(id)completion;
- (void)setSuppressedContexts:(id)contexts;
@end

@implementation AutoFetchController

+ (AutoFetchController)sharedController
{
  if (qword_1001854C8 != -1)
  {
    sub_1000D06A4();
  }

  v3 = qword_1001854C0;

  return v3;
}

- (NSArray)visibleMailboxesToSyncByMailbox
{
  dataSource = [(AutoFetchController *)self dataSource];
  visibleMailboxes = [dataSource visibleMailboxes];

  if (![visibleMailboxes count])
  {
    favoritesPersistence = [(AutoFetchController *)self favoritesPersistence];
    mailboxesForAutoFetch = [favoritesPersistence mailboxesForAutoFetch];

    visibleMailboxes = mailboxesForAutoFetch;
  }

  v7 = [visibleMailboxes ef_filter:&stru_100156650];

  return v7;
}

- (AutoFetchControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (NSArray)activeAccountsToSyncByMailbox
{
  v2 = +[MailAccount activeAccounts];
  v3 = [v2 ef_filter:&stru_100156610];

  return v3;
}

- (NSSet)displayedAccountsToSyncByMailbox
{
  accountsProvider = [(AutoFetchController *)self accountsProvider];
  displayedAccounts = [accountsProvider displayedAccounts];
  v4 = [displayedAccounts ef_filter:&stru_100156630];

  return v4;
}

- (MFAccountsProvider)accountsProvider
{
  v2 = sub_100027C70();
  accountsProvider = [v2 accountsProvider];

  return accountsProvider;
}

- (AutoFetchController)init
{
  v13.receiver = self;
  v13.super_class = AutoFetchController;
  v2 = [(AutoFetchController *)&v13 init];
  if (v2)
  {
    v3 = [EFLocked alloc];
    v4 = objc_opt_new();
    v5 = [v3 initWithObject:v4];
    state = v2->_state;
    v2->_state = v5;

    v7 = objc_alloc_init(MFAccountAutoFetchController);
    accountController = v2->_accountController;
    v2->_accountController = v7;

    mailboxController = [(AutoFetchController *)v2 mailboxController];
    [mailboxController setDataSource:v2];

    v10 = +[NSNotificationCenter defaultCenter];
    freeSpaceMonitor = [(AutoFetchController *)v2 freeSpaceMonitor];
    [v10 addObserver:v2 selector:"_freeSpaceStatusDidChange:" name:@"MFDiskFreeSpaceMonitorDidChangeNotification" object:freeSpaceMonitor];

    [v10 addObserver:v2 selector:"_networkConfigurationChanged:" name:NetworkConfigurationDidChangeNotification object:0];
    [v10 addObserver:v2 selector:"_networkHasAlternateAdvice:" name:NetworkSymptomsHasAlternativeAdvice object:0];
    [v10 addObserver:v2 selector:"_accountContentsDidChange:" name:MailAccountContentsDidChange object:0];
    [v10 addObserver:v2 selector:"_mailboxAutoFetchStarted:" name:@"MailboxAutoFetchProcessStartNotification" object:0];
    [v10 addObserver:v2 selector:"_mailboxAutoFetchFinished:" name:@"MailboxAutoFetchProcessFinishedNotification" object:0];
    [v10 addObserver:v2 selector:"_mailboxAutoFetchDone:" name:@"MailboxAutoFetchDoneNotification" object:0];
  }

  return v2;
}

- (void)_updateState:(int64_t)state
{
  state = [(AutoFetchController *)self state];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009AD4;
  v6[3] = &unk_1001564C0;
  v6[4] = self;
  v6[5] = state;
  [state performWhileLocked:v6];
}

- (id)favoritesPersistence
{
  v2 = sub_100027C70();
  favoritesPersistence = [v2 favoritesPersistence];

  return favoritesPersistence;
}

- (void)_freeSpaceStatusDidChange:(id)change
{
  freeSpaceMonitor = [(AutoFetchController *)self freeSpaceMonitor];
  isFreeSpaceCritical = [freeSpaceMonitor isFreeSpaceCritical];

  if ((isFreeSpaceCritical & 1) == 0)
  {
    v6 = MFAutoFetchLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "low disk mode turned OFF, starting autofetch", v7, 2u);
    }

    [(AutoFetchController *)self fetchNow:16];
  }
}

- (void)_accountContentsDidChange:(id)change
{
  changeCopy = change;
  v4 = MFUserAgent();
  isMaild = [v4 isMaild];

  if (isMaild)
  {
    object = [changeCopy object];
    userInfo = [changeCopy userInfo];
    v8 = [userInfo objectForKey:MailAccountContentsDidChangeUids];

    if (!v8)
    {
      primaryMailboxUid = [object primaryMailboxUid];
      v8 = [NSArray arrayWithObject:primaryMailboxUid];
    }

    [(AutoFetchController *)self fetchNow:EMFetchTypePush withMailboxes:v8];
  }
}

- (void)_networkConfigurationChanged:(id)changed
{
  changedCopy = changed;
  networkController = [(AutoFetchController *)self networkController];
  isNetworkUp = [networkController isNetworkUp];

  if (isNetworkUp)
  {
    v8 = dispatch_get_global_queue(17, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000A0A8;
    v11[3] = &unk_1001563D8;
    v11[4] = self;
    v12 = changedCopy;
    dispatch_async(v8, v11);
  }

  else
  {
    v9 = sub_10000A284(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      name = [changedCopy name];
      *buf = 138412290;
      v14 = name;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: network down", buf, 0xCu);
    }
  }
}

- (void)_networkHasAlternateAdvice:(id)advice
{
  v4 = sub_10000A284(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RNF: received notification, dropping all connections", buf, 2u);
  }

  v5 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A39C;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(v5, block);
}

+ (BOOL)shouldSyncAccountByMailbox:(id)mailbox
{
  taskManager = [mailbox taskManager];
  v4 = taskManager == 0;

  return v4;
}

+ (id)partitionAccounts:(id)accounts
{
  v3 = [accounts ef_partition:&stru_100156500];
  v4 = [AutoFetchPartition alloc];
  first = [v3 first];
  second = [v3 second];
  v7 = [(AutoFetchPartition *)v4 initWithSyncedByMailbox:first syncedByAccount:second];

  return v7;
}

+ (id)partitionMailboxes:(id)mailboxes
{
  v3 = [mailboxes ef_partition:&stru_100156540];
  v4 = [AutoFetchPartition alloc];
  first = [v3 first];
  second = [v3 second];
  v7 = [(AutoFetchPartition *)v4 initWithSyncedByMailbox:first syncedByAccount:second];

  return v7;
}

+ (id)activeAccountsToSyncByAccount
{
  v2 = +[MailAccount activeAccounts];
  v3 = [v2 ef_filter:&stru_100156560];

  return v3;
}

- (void)fetchNow:(int)now
{
  v3 = *&now;
  if (EMFetchTypePowerNap == now)
  {
    v5 = +[AutoFetchController activeAccountsToSyncByAccount];
    [(AutoFetchController *)self fetchNow:v3 withAccounts:?];

    mailboxController = [(AutoFetchController *)self mailboxController];
    [mailboxController fetchForPowernap];
  }

  else
  {
    mailboxController = +[MailAccount activeAccounts];
    [(AutoFetchController *)self fetchNow:v3 withAccounts:?];
  }
}

- (void)fetchNow:(int)now withAccounts:(id)accounts
{
  v4 = *&now;
  v14 = [AutoFetchController partitionAccounts:accounts];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  syncedByAccount = [v14 syncedByAccount];
  obj = syncedByAccount;
  v7 = [syncedByAccount countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        [(AutoFetchController *)self _updateState:0];
        accountController = [(AutoFetchController *)self accountController];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10000AA94;
        v16[3] = &unk_100156588;
        v16[4] = v10;
        v16[5] = self;
        [accountController fetchNow:v4 withMailboxes:0 fromAccount:v10 completion:v16];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      syncedByAccount = obj;
      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  mailboxController = [(AutoFetchController *)self mailboxController];
  syncedByMailbox = [v14 syncedByMailbox];
  [mailboxController fetchNow:v4 withAccounts:syncedByMailbox];
}

- (void)fetchNow:(int)now withMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  v21 = [AutoFetchController partitionMailboxes:?];
  syncedByAccount = [v21 syncedByAccount];
  v20 = [syncedByAccount ef_groupBy:&stru_1001565C8];

  v6 = +[NSNotificationCenter defaultCenter];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v20;
  v24 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v24)
  {
    v7 = now & 0x800;
    v22 = *v39;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        v9 = [obj objectForKeyedSubscript:v8];
        v26 = v8;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (v11)
        {
          v12 = *v35;
          while (1)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v42 = @"AutoFetchDontNotify";
            v13 = [NSNumber numberWithBool:v7 != 0];
            v43 = v13;
            v14 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];

            [v6 postNotificationName:@"AutoFetchPushStartedNotification" object:self userInfo:v14];
            if (!--v11)
            {
              v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
              if (!v11)
              {
                break;
              }
            }
          }
        }

        accountController = [(AutoFetchController *)self accountController];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_10000B188;
        v28[3] = &unk_1001565F0;
        v16 = v10;
        v29 = v16;
        v30 = v26;
        v33 = v7 >> 11;
        v31 = v6;
        selfCopy = self;
        [accountController fetchNow:now withMailboxes:v16 fromAccount:v26 completion:v28];
      }

      v24 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v24);
  }

  mailboxController = [(AutoFetchController *)self mailboxController];
  syncedByMailbox = [v21 syncedByMailbox];
  [mailboxController fetchNow:now withMailboxes:syncedByMailbox];
}

- (void)resetPushStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[MailAccount mailAccounts];
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if ([v10 canFetch])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  sub_10000B850(v6, "stopListeningForNotifications");
  v11 = +[MFPowerController sharedInstance];
  if ([v11 isBatterySaverModeEnabled])
  {
  }

  else
  {
    v12 = +[MFPowerController sharedInstance];
    gameModeEnabled = [v12 gameModeEnabled];

    if ((gameModeEnabled & 1) == 0)
    {
      sub_10000B850(v5, "startListeningForNotifications");
    }
  }

  +[MailAccount activeAccounts];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v14 = v21 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = *v21;
    while (2)
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * j) uniqueIdForPersistentConnection];
        if (PCSettingsGetStyle() != 2)
        {
          LODWORD(v15) = 1;
          goto LABEL_24;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  ClassPollInterval = PCSettingsGetClassPollInterval();
  if (ClassPollInterval == -1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v15;
  }

  completionCopy[2](completionCopy, 1, v19, ClassPollInterval, 0);
}

- (void)setSuppressedContexts:(id)contexts
{
  contextsCopy = contexts;
  mailboxController = [(AutoFetchController *)self mailboxController];
  [mailboxController setSuppressedContexts:contextsCopy];
}

- (id)diagnosticInformation
{
  mailboxController = [(AutoFetchController *)self mailboxController];
  diagnosticInformation = [mailboxController diagnosticInformation];

  return diagnosticInformation;
}

@end