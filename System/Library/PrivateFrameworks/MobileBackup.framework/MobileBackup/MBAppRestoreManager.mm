@interface MBAppRestoreManager
- (BOOL)_restoreApplicationWithBundleID:(id)d failed:(BOOL)failed context:(id)context error:(id *)error;
- (BOOL)shouldObserveCoordinatorWithIdentity:(id)identity;
- (MBAppRestoreManager)initWithStateQueue:(id)queue account:(id)account;
- (MBAppRestoreManagerDelegate)delegate;
- (id)setUpDataPromiseForBundleID:(id)d error:(id *)error;
- (void)_finishAppDataRestore;
- (void)_requestMDMAppInstallation;
- (void)_setUpDataPromiseForCoordinator:(id)coordinator;
- (void)cancelAndUninstallAllCoordinators;
- (void)restoreCoordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)restoreCoordinatorShouldBeginRestoringUserData:(id)data;
- (void)retryAppDataDownloads;
- (void)startObservingInstallCoordinators;
- (void)stopTrackingCoordinator:(id)coordinator withSuccess:(BOOL)success;
- (void)stopTrackingCoordinatorWithBundleID:(id)d success:(BOOL)success;
- (void)updateProgressForCoordinatorWithBundleID:(id)d progress:(double)progress;
@end

@implementation MBAppRestoreManager

- (MBAppRestoreManager)initWithStateQueue:(id)queue account:(id)account
{
  queueCopy = queue;
  accountCopy = account;
  v17.receiver = self;
  v17.super_class = MBAppRestoreManager;
  v9 = [(MBAppRestoreManager *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stateQueue, queue);
    atomic_store(0, &v10->_appDataDidFinishRestore);
    atomic_store(0, &v10->_cancelled);
    objc_storeStrong(&v10->_account, account);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.MobileBackup.InstallCoordination", v11);
    coordinatorQueue = v10->_coordinatorQueue;
    v10->_coordinatorQueue = v12;

    v14 = dispatch_semaphore_create(5);
    coordinationSemaphore = v10->_coordinationSemaphore;
    v10->_coordinationSemaphore = v14;
  }

  return v10;
}

- (BOOL)shouldObserveCoordinatorWithIdentity:(id)identity
{
  identityCopy = identity;
  account = [(MBAppRestoreManager *)self account];
  persona = [account persona];

  personaIdentifier = [persona personaIdentifier];
  personaUniqueString = [identityCopy personaUniqueString];
  if (([personaIdentifier isEqualToString:personaUniqueString] & 1) == 0 && (!objc_msgSend(persona, "isPersonalPersona") || (objc_msgSend(personaUniqueString, "isEqualToString:", @"PersonalPersonaPlaceholderString") & 1) == 0))
  {
    v9 = MBGetDefaultLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      goto LABEL_10;
    }

    bundleID = [identityCopy bundleID];
    *buf = 138412802;
    v16 = bundleID;
    v17 = 2112;
    v18 = personaUniqueString;
    v19 = 2112;
    v20 = personaIdentifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "IX: Not observing coordinator for %@, %@ != %@", buf, 0x20u);

    bundleID2 = [identityCopy bundleID];
    _MBLog(@"I ", "IX: Not observing coordinator for %@, %@ != %@", bundleID2, personaUniqueString, personaIdentifier);
    v10 = 0;
    goto LABEL_8;
  }

  v9 = MBGetDefaultLog();
  v10 = 1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    bundleID3 = [identityCopy bundleID];
    *buf = 138412546;
    v16 = bundleID3;
    v17 = 2112;
    v18 = personaUniqueString;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "IX: Will observe coordinator for %@/%@", buf, 0x16u);

    bundleID2 = [identityCopy bundleID];
    _MBLog(@"I ", "IX: Will observe coordinator for %@/%@", bundleID2, personaUniqueString);
LABEL_8:
  }

LABEL_10:

  return v10;
}

- (void)_requestMDMAppInstallation
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting MDM install of restored applications", buf, 2u);
    _MBLog(@"Df", "Requesting MDM install of restored applications");
  }

  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = +[MDMClient sharedClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100079AC8;
  v7[3] = &unk_1003BC010;
  v5 = v3;
  v8 = v5;
  [v4 requestInstallOfAppsInRestoreWithCompletion:v7];

  MBGroupWaitForever();
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished requesting MDM install of restored applications", buf, 2u);
    _MBLog(@"Df", "Finished requesting MDM install of restored applications");
  }
}

- (void)startObservingInstallCoordinators
{
  v3 = [[MBPowerAssertion alloc] initWithName:@"restore" timeout:600.0];
  [(MBPowerAssertion *)v3 hold];
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "IX: Queuing up coordinator enumeration", buf, 2u);
    _MBLog(@"I ", "IX: Queuing up coordinator enumeration");
  }

  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079CAC;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)_finishAppDataRestore
{
  if (BYSetupAssistantNeedsToRun())
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "IX: Not notifying delegate of finished app restore while still in buddy", buf, 2u);
      _MBLog(@"Df", "IX: Not notifying delegate of finished app restore while still in buddy");
    }
  }

  else
  {
    v4 = 0;
    atomic_compare_exchange_strong(&self->_appDataDidFinishRestore, &v4, 1u);
    if (!v4)
    {
      v5 = atomic_load(&self->_cancelled);
      v6 = v5 & 1;
      v7 = dispatch_get_global_queue(17, 0);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10007AAA0;
      v8[3] = &unk_1003BCAC0;
      v8[4] = self;
      v9 = v6;
      dispatch_async(v7, v8);
    }
  }
}

- (void)restoreCoordinatorShouldBeginRestoringUserData:(id)data
{
  identity = [data identity];
  bundleID = [identity bundleID];

  if (!bundleID)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "IX: Coordinator had no bundleID associated with it. Nothing to do", buf, 2u);
      _MBLog(@"E ", "IX: Coordinator had no bundleID associated with it. Nothing to do");
    }
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = bundleID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IX: We're being asked to restore user data for %@", buf, 0xCu);
    _MBLog(@"Df", "IX: We're being asked to restore user data for %@", bundleID);
  }

  coordinatorQueue = self->_coordinatorQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007AE04;
  block[3] = &unk_1003BC060;
  block[4] = self;
  v11 = bundleID;
  v9 = bundleID;
  dispatch_async(coordinatorQueue, block);
}

- (void)restoreCoordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  coordinatorCopy = coordinator;
  reasonCopy = reason;
  identity = [coordinatorCopy identity];
  bundleID = [identity bundleID];

  v12 = coordinatorCopy;
  v13 = MBGetDefaultLog();
  v14 = v13;
  if (!bundleID)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "IX: Got unsuccessful completion for coordinator with nil bundleID", buf, 2u);
      _MBLog(@"E ", "IX: Got unsuccessful completion for coordinator with nil bundleID");
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = IXStringForClientID();
    *buf = 138412802;
    v27 = bundleID;
    v28 = 2112;
    v29 = reasonCopy;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "IX: App %@ could not be installed with error %@. Canceled by %@", buf, 0x20u);

    v16 = IXStringForClientID();
    _MBLog(@"Df", "IX: App %@ could not be installed with error %@. Canceled by %@", bundleID, reasonCopy, v16);
  }

  if (client != 2)
  {
    v14 = [v12 userDataPromiseWithError:0];
    v17 = MBGetDefaultLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v14)
    {
      if (v18)
      {
        v19 = @"NO";
        if ([v14 isComplete])
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        [v14 percentComplete];
        *buf = 138412546;
        v27 = v20;
        v28 = 2048;
        v29 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "IX: Coordinator was canceled but has already been promised data. Complete: %@, Progress: %.2f. Will continue restoring app data", buf, 0x16u);
        if ([v14 isComplete])
        {
          v19 = @"YES";
        }

        [v14 percentComplete];
        _MBLog(@"I ", "IX: Coordinator was canceled but has already been promised data. Complete: %@, Progress: %.2f. Will continue restoring app data", v19, v22);
      }
    }

    else
    {
      if (v18)
      {
        *buf = 138412290;
        v27 = bundleID;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "IX: Coordinator %@ was canceled but hasn't been promised app data yet. Queueing up data restore", buf, 0xCu);
        _MBLog(@"I ", "IX: Coordinator %@ was canceled but hasn't been promised app data yet. Queueing up data restore", bundleID);
      }

      coordinatorQueue = self->_coordinatorQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10007B2E8;
      block[3] = &unk_1003BC060;
      block[4] = self;
      v25 = bundleID;
      dispatch_async(coordinatorQueue, block);

      v14 = 0;
    }

LABEL_19:
  }
}

- (void)stopTrackingCoordinator:(id)coordinator withSuccess:(BOOL)success
{
  successCopy = success;
  coordinatorCopy = coordinator;
  v7 = coordinatorCopy;
  if (coordinatorCopy)
  {
    identity = [coordinatorCopy identity];
    bundleID = [identity bundleID];

    v10 = [v7 userDataPromiseWithError:0];
    v11 = MBGetDefaultLog();
    v12 = v11;
    if (v10)
    {
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (successCopy)
      {
        if (v13)
        {
          *buf = 138412290;
          v39 = bundleID;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "IX: Setting data promise complete for bundleID %@", buf, 0xCu);
          _MBLog(@"I ", "IX: Setting data promise complete for bundleID %@", bundleID);
        }

        [v10 setPercentComplete:1.0];
        [v10 setComplete:1];
        goto LABEL_22;
      }

      if (v13)
      {
        *buf = 138412290;
        v39 = bundleID;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "IX: Cancelling data promise for bundleID %@", buf, 0xCu);
        _MBLog(@"I ", "IX: Cancelling data promise for bundleID %@", bundleID);
      }

      v12 = [MBError errorWithCode:1 format:@"Couldn't restore app data for %@", bundleID];
      v15 = IXCreateUserPresentableError();
      v37 = 0;
      v16 = [v10 cancelForReason:v15 client:2 error:&v37];
      v17 = v37;
      if ((v16 & 1) == 0)
      {
        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v39 = bundleID;
          v40 = 2112;
          v41 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "IX: Couldn't cancel data promise for %@ - %@", buf, 0x16u);
          _MBLog(@"E ", "IX: Couldn't cancel data promise for %@ - %@", bundleID, v17);
        }
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (successCopy)
      {
        v14 = @"completion";
      }

      else
      {
        v14 = @"cancellation";
      }

      *buf = 138412546;
      v39 = bundleID;
      v40 = 2112;
      v41 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "IX: InstallCoordinator for %@ didn't have a user data promise at the time of %@", buf, 0x16u);
      _MBLog(@"E ", "IX: InstallCoordinator for %@ didn't have a user data promise at the time of %@", bundleID, v14);
    }

LABEL_22:
    [(NSMutableDictionary *)self->_appInstallCoordinators setObject:0 forKeyedSubscript:bundleID];
    [v7 setObserver:0];
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (successCopy)
      {
        v20 = @"Successfully";
      }

      else
      {
        v20 = @"Unsuccessfully";
      }

      account = [(MBAppRestoreManager *)self account];
      accountIdentifier = [account accountIdentifier];
      *buf = 138412802;
      v39 = v20;
      v40 = 2112;
      v41 = bundleID;
      v42 = 2112;
      v43 = accountIdentifier;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "IX: %@ serviced data promise for %@ account %@", buf, 0x20u);

      account2 = [(MBAppRestoreManager *)self account];
      accountIdentifier2 = [account2 accountIdentifier];
      _MBLog(@"Df", "IX: %@ serviced data promise for %@ account %@", v20, bundleID, accountIdentifier2);
    }

    v25 = [(NSMutableDictionary *)self->_appInstallCoordinators count];
    allKeys = [(NSMutableDictionary *)self->_appInstallCoordinators allKeys];
    v27 = allKeys;
    if (v25 >= 0xA)
    {
      v28 = 10;
    }

    else
    {
      v28 = v25;
    }

    v29 = [allKeys subarrayWithRange:{0, v28}];

    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      account3 = [(MBAppRestoreManager *)self account];
      accountIdentifier3 = [account3 accountIdentifier];
      *buf = 138412802;
      v39 = accountIdentifier3;
      v40 = 2048;
      v41 = v25;
      v42 = 2112;
      v43 = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "IX: Remaining coordinators for account %@ (%lu): %@", buf, 0x20u);

      account4 = [(MBAppRestoreManager *)self account];
      accountIdentifier4 = [account4 accountIdentifier];
      _MBLog(@"Df", "IX: Remaining coordinators for account %@ (%lu): %@", accountIdentifier4, v25, v29);
    }

    v35 = @"failed";
    if (successCopy)
    {
      v35 = @"finished";
    }

    v36 = [NSString stringWithFormat:@"Data restore %@", v35];
    [AITransactionLog logStep:2 byParty:6 phase:2 success:successCopy forBundleID:bundleID description:v36];

    dispatch_semaphore_signal(self->_coordinationSemaphore);
    if (!v25)
    {
      [(MBAppRestoreManager *)self _finishAppDataRestore];
    }

    goto LABEL_37;
  }

  bundleID = MBGetDefaultLog();
  if (os_log_type_enabled(bundleID, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, bundleID, OS_LOG_TYPE_INFO, "IX: Can't stop tracking a null coordinator", buf, 2u);
    _MBLog(@"I ", "IX: Can't stop tracking a null coordinator");
  }

LABEL_37:
}

- (void)stopTrackingCoordinatorWithBundleID:(id)d success:(BOOL)success
{
  successCopy = success;
  dCopy = d;
  if (dCopy)
  {
    v7 = [(NSMutableDictionary *)self->_appInstallCoordinators objectForKeyedSubscript:dCopy];
    if (v7)
    {
      [(MBAppRestoreManager *)self stopTrackingCoordinator:v7 withSuccess:successCopy];
    }

    else
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = dCopy;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Coordinator couldn't be found for %@. Couldn't stop tracking it", buf, 0xCu);
        _MBLog(@"E ", "Coordinator couldn't be found for %@. Couldn't stop tracking it", dCopy);
      }
    }
  }
}

- (void)updateProgressForCoordinatorWithBundleID:(id)d progress:(double)progress
{
  dCopy = d;
  if (dCopy)
  {
    v7 = [(NSMutableDictionary *)self->_appInstallCoordinators objectForKeyedSubscript:dCopy];
    v8 = v7;
    if (v7)
    {
      [v7 updateProgress:progress];
    }

    else
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = dCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Coordinator couldn't be found for %@. Couldn't update progress", buf, 0xCu);
        _MBLog(@"E ", "Coordinator couldn't be found for %@. Couldn't update progress", dCopy);
      }
    }
  }
}

- (void)retryAppDataDownloads
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C0AC;
  block[3] = &unk_1003BC2E0;
  block[4] = self;
  v6 = v4;
  v32 = v6;
  v7 = v3;
  v33 = v7;
  dispatch_sync(stateQueue, block);
  if ([v6 count])
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 count];
      *buf = 134217984;
      v35 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IX: Found %lu apps whose coordinators are no longer tracked by IX. Going to stop tracking them", buf, 0xCu);
      _MBLog(@"Df", "IX: Found %lu apps whose coordinators are no longer tracked by IX. Going to stop tracking them", [v6 count]);
    }

    v10 = self->_stateQueue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10007C338;
    v28[3] = &unk_1003BC060;
    v29 = v6;
    selfCopy = self;
    dispatch_sync(v10, v28);
  }

  v11 = [v7 count];
  v12 = MBGetDefaultLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      v14 = [v7 count];
      account = [(MBAppRestoreManager *)self account];
      accountIdentifier = [account accountIdentifier];
      *buf = 134218242;
      v35 = v14;
      v36 = 2112;
      v37 = accountIdentifier;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "IX: Found %lu apps whose data restores need to be restarted for account %@", buf, 0x16u);

      v17 = [v7 count];
      account2 = [(MBAppRestoreManager *)self account];
      accountIdentifier2 = [account2 accountIdentifier];
      _MBLog(@"I ", "IX: Found %lu apps whose data restores need to be restarted for account %@", v17, accountIdentifier2);
    }

    v20 = dispatch_get_global_queue(17, 0);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10007C430;
    v25[3] = &unk_1003BC060;
    v26 = v7;
    selfCopy2 = self;
    dispatch_async(v20, v25);

    v12 = v26;
  }

  else if (v13)
  {
    account3 = [(MBAppRestoreManager *)self account];
    accountIdentifier3 = [account3 accountIdentifier];
    *buf = 138412290;
    v35 = accountIdentifier3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "IX: Found no apps whose user data promises needed to be restarted. Nothing more to do for account %@", buf, 0xCu);

    account4 = [(MBAppRestoreManager *)self account];
    accountIdentifier4 = [account4 accountIdentifier];
    _MBLog(@"I ", "IX: Found no apps whose user data promises needed to be restarted. Nothing more to do for account %@", accountIdentifier4);
  }
}

- (id)setUpDataPromiseForBundleID:(id)d error:(id *)error
{
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10007C990;
  v23 = sub_10007C9A0;
  v24 = 0;
  stateQueue = self->_stateQueue;
  block = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10007C9A8;
  v15 = &unk_1003BCAE8;
  v18 = &v19;
  selfCopy = self;
  v8 = dCopy;
  v17 = v8;
  dispatch_sync(stateQueue, &block);
  v9 = v20[5];
  if (error && !v9)
  {
    *error = [MBError errorWithCode:1 format:@"Couldn't set up data promise for %@, probably because the coordinator no longer exists", v8, block, v13, v14, v15, selfCopy];
    v9 = v20[5];
  }

  v10 = v9;

  _Block_object_dispose(&v19, 8);

  return v10;
}

- (void)_setUpDataPromiseForCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v4 = coordinatorCopy;
  if (coordinatorCopy)
  {
    identity = [coordinatorCopy identity];
    bundleID = [identity bundleID];

    v7 = [v4 userDataPromiseWithError:0];
    v8 = MBGetDefaultLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        *buf = 138412290;
        v11 = bundleID;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "IX: Data promise already exists for %@. Will let it complete", buf, 0xCu);
        _MBLog(@"I ", "IX: Data promise already exists for %@. Will let it complete", bundleID);
      }
    }

    else
    {
      if (v9)
      {
        *buf = 138412290;
        v11 = bundleID;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "IX: Setting up user data promise for %@", buf, 0xCu);
        _MBLog(@"I ", "IX: Setting up user data promise for %@", bundleID);
      }

      v8 = [[IXPromisedOutOfBandTransfer alloc] initWithName:bundleID client:2 diskSpaceNeeded:0];
      [v8 setComplete:0];
      [v4 setUserDataPromise:v8 error:0];
      [AITransactionLog logStep:2 byParty:6 phase:1 success:1 forBundleID:bundleID description:@"Starting app data restore"];
    }
  }

  else
  {
    bundleID = MBGetDefaultLog();
    if (os_log_type_enabled(bundleID, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, bundleID, OS_LOG_TYPE_INFO, "IX: Can't set up promises for a null coordinator", buf, 2u);
      _MBLog(@"I ", "IX: Can't set up promises for a null coordinator");
    }
  }
}

- (void)cancelAndUninstallAllCoordinators
{
  if ((atomic_exchange(&self->_cancelled, 1u) & 1) == 0)
  {
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007CD84;
    block[3] = &unk_1003BC0B0;
    block[4] = self;
    dispatch_sync(stateQueue, block);
  }
}

- (BOOL)_restoreApplicationWithBundleID:(id)d failed:(BOOL)failed context:(id)context error:(id *)error
{
  failedCopy = failed;
  dCopy = d;
  contextCopy = context;
  v12 = atomic_load(&self->_cancelled);
  if (v12)
  {
    if (error)
    {
      [MBError errorWithCode:202 format:@"Restore was cancelled by user"];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_10007C990;
    v37 = sub_10007C9A0;
    v38 = 0;
    account = [(MBAppRestoreManager *)self account];
    persona = [account persona];
    isDataSeparatedPersona = [persona isDataSeparatedPersona];

    if (isDataSeparatedPersona)
    {
      account2 = [(MBAppRestoreManager *)self account];
      persona2 = [account2 persona];
      personaIdentifier = [persona2 personaIdentifier];

      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v44 = personaIdentifier;
        v45 = 2114;
        v46 = dCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Adopting persona %{public}@ to restore %{public}@", buf, 0x16u);
        _MBLog(@"Df", "Adopting persona %{public}@ to restore %{public}@", personaIdentifier, dCopy);
      }

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10007D404;
      v27[3] = &unk_1003BCB10;
      v30 = &v39;
      v27[4] = self;
      v28 = dCopy;
      v32 = failedCopy;
      v29 = contextCopy;
      v31 = &v33;
      v21 = [DMCPersonaHelper performBlockUnderPersona:personaIdentifier block:v27];
    }

    else
    {
      personaIdentifier = [(MBAppRestoreManager *)self delegate];
      account3 = [(MBAppRestoreManager *)self account];
      v23 = (v34 + 5);
      obj = v34[5];
      v24 = [personaIdentifier restoreApplicationWithBundleID:dCopy failed:failedCopy qos:&off_1003E0D20 context:contextCopy account:account3 error:&obj];
      objc_storeStrong(v23, obj);
      *(v40 + 24) = v24;
    }

    v13 = *(v40 + 24);
    if (error && (v40[3] & 1) == 0)
    {
      *error = v34[5];
      v13 = *(v40 + 24);
    }

    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(&v39, 8);
  }

  return v13 & 1;
}

- (MBAppRestoreManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end