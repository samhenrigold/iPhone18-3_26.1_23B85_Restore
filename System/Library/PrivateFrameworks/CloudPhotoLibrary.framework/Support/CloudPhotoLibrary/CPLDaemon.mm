@interface CPLDaemon
- (BOOL)_processListener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)allowedProtocolForClientAccess:(id)access;
- (id)daemonLibraryManager:(id)manager engineWrapperWithClientLibraryBaseURL:(id)l cloudLibraryStateStorageURL:(id)rL cloudLibraryResourceStorageURL:(id)uRL libraryIdentifier:(id)identifier mainScopeIdentifier:(id)scopeIdentifier options:(unint64_t)options error:(id *)self0;
- (id)daemonLibraryManagerOtherLibraryManager:(id)manager withLibraryIdentifier:(id)identifier;
- (id)initForSyncBubble:(BOOL)bubble forceClientPush:(BOOL)push;
- (id)wrapperArray:(id)array engineWrapperWithParameters:(id)parameters createIfNecessary:(BOOL)necessary queue:(id)queue error:(id *)error;
- (unint64_t)wrapperArray:(id)array countOfClientsForWrapper:(id)wrapper;
- (void)_daemonLibraryManagerWantsToExitNow:(id)now;
- (void)_performAfterRegistrations:(id)registrations;
- (void)_performOnceDeviceIsUnlocked:(id)unlocked;
- (void)_performPendingBlockAfterFirstUnlock;
- (void)_processConnectionDidInvalidate:(id)invalidate;
- (void)_reRunFastPassInitialDownloadIfNecessaryForWrapper:(id)wrapper withReschedulerManager:(id)manager;
- (void)_registerAfterLaunchWhenAllEnginesAreOpened;
- (void)_registerForBackupRequests;
- (void)_registerForConfigurationRefresh;
- (void)_registerForFastPassInitialDownload;
- (void)_registerForMaintenance;
- (void)_registerForPeriodicUploadOfComputeStates;
- (void)_reportICPLFeatureCheckpoint:(unint64_t)checkpoint;
- (void)_updateConfigurationRefreshIntervalIfNecessary;
- (void)_wrapperArray:(id)array forDaemon:(BOOL)daemon getStatusWithCompletionHandler:(id)handler;
- (void)daemonLibraryManager:(id)manager wantsToExitAfterResettingParametersForLibraryWithIdentifier:(id)identifier;
- (void)daemonLibraryManagerHasBeenDisconnected:(id)disconnected;
- (void)daemonLibraryManagerWantsToExitNow:(id)now;
- (void)emergencyExitForWrapperArray:(id)array;
- (void)enumerateDaemonLibraryManagersWithLibraryIdentifier:(id)identifier block:(id)block;
- (void)getDaemonLibraryManagerStatusesWithCompletionHandler:(id)handler;
- (void)getEngineWrapperStatusesWithCompletionHandler:(id)handler;
- (void)initialDownloadHelper:(id)helper checkActiveAccountWithCompletionHandler:(id)handler;
- (void)registerForSyncBubble;
- (void)startSyncTaskForDaemonLibraryManager:(id)manager;
- (void)uploadContent;
- (void)willSwitchUser;
- (void)wipeEnginesIfNecessaryWithCompletionHandler:(id)handler;
- (void)wrapperArray:(id)array getStatusDictionaryWithCompletionHandler:(id)handler;
- (void)wrapperArray:(id)array wrapperDidCompleteInitialSyncOfMainScope:(id)scope;
- (void)wrapperArray:(id)array wrapperNeedsInitialDownloadOfMainScope:(id)scope;
- (void)wrapperArray:(id)array wrapperShouldBeDropped:(id)dropped;
- (void)wrapperArrayCountDidChange:(id)change;
@end

@implementation CPLDaemon

- (id)initForSyncBubble:(BOOL)bubble forceClientPush:(BOOL)push
{
  bubbleCopy = bubble;
  v80.receiver = self;
  v80.super_class = CPLDaemon;
  v7 = [(CPLDaemon *)&v80 init];
  if (!v7)
  {
    return v7;
  }

  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    sub_1001874A0();
  }

  *(v7 + 16) = bubbleCopy;
  if (bubbleCopy)
  {
    *(v7 + 17) = push;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10000B7D8(has_internal_content);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Daemon is launching for sync bubble", buf, 2u);
      }
    }
  }

  else
  {
    sub_100187430(has_internal_content);
  }

  v10 = +[NSDate date];
  v11 = *(v7 + 1);
  *(v7 + 1) = v10;

  v12 = objc_alloc_init(CPLBGSTActivitiesReport);
  v13 = *(v7 + 24);
  *(v7 + 24) = v12;

  __SBSSetStatusBarShowsActivityForApplication = &SBSSetStatusBarShowsActivityForApplication;
  v14 = +[NSXPCListener enableTransactions];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v15 = sub_10000B7D8(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Initializing and launching Daemon", buf, 2u);
    }
  }

  v16 = +[CPLCloudKitCoordinator sharedCoordinator];
  v17 = *(v7 + 7);
  *(v7 + 7) = v16;

  if ((*(v7 + 16) & 1) == 0)
  {
    v18 = objc_alloc_init(CPLCloudKitPushNotificationCenter);
    v19 = *(v7 + 8);
    *(v7 + 8) = v18;
  }

  [*(v7 + 7) setPushNotificationCenter:*(v7 + 8)];
  v20 = objc_alloc_init(NSMutableArray);
  v21 = *(v7 + 9);
  *(v7 + 9) = v20;

  v22 = objc_alloc_init(CPLPlatform);
  [CPLPlatform setPrequeliteStoreImplementationForPlatform:v22];
  v23 = +[NSUserDefaults standardUserDefaults];
  v24 = [v23 stringForKey:@"CPLFakeICloudPath"];
  if (!v24)
  {
    goto LABEL_30;
  }

  v25 = os_variant_has_internal_content();

  if (v25)
  {
    if (qword_1002C4F08 != -1)
    {
      sub_1001874F8();
    }

    v26 = NSClassFromString(@"EnginePlistTransport");
    v27 = NSClassFromString(@"EnginePlistLibrary");
    if (v26)
    {
      v28 = v27;
      if (v27)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v29 = sub_10000B7D8(v27);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Using local transport for CPL Engine", buf, 2u);
          }
        }

        [v22 setPlatformImplementation:v26 forClass:objc_opt_class()];
        [v22 setPlatformImplementation:v28 forClass:objc_opt_class()];
        [*(v7 + 7) coordinatorWontBeUsed];
        goto LABEL_32;
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = sub_10000B7D8(v27);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to find local transport class", buf, 2u);
      }

LABEL_30:
    }
  }

  sub_100187520(v22);
LABEL_32:
  [CPLPlatform setDirectClientImplementationForPlatform:v22];
  if (*(v7 + 16) == 1)
  {
    v30 = objc_opt_class();
    [v22 setPlatformImplementation:v30 forClass:objc_opt_class()];
  }

  [CPLPlatform setDefaultPlatform:v22];
  v31 = dispatch_queue_attr_make_initially_inactive(0);
  v32 = dispatch_queue_create("com.apple.cloudphotod.daemon", v31);
  v33 = *(v7 + 16);
  *(v7 + 16) = v32;

  dispatch_set_qos_class_fallback();
  v75 = _NSConcreteStackBlock;
  v76 = 3221225472;
  v77 = sub_10000B81C;
  v78 = &unk_100271F40;
  v34 = v7;
  v79 = v34;
  xpc_set_idle_handler();
  v34[138] = 1;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10000B904;
  v72[3] = &unk_100271F68;
  v74 = a2;
  v35 = v34;
  v73 = v35;
  [v35 _performOnceDeviceIsUnlocked:v72];
  signal(15, 1);
  v36 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(v7 + 16));
  v38 = (v35 + 13);
  v37 = v35[13];
  v35[13] = v36;

  v39 = v35[13];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000BA48;
  handler[3] = &unk_100271F40;
  v40 = v35;
  v71 = v40;
  dispatch_source_set_event_handler(v39, handler);
  dispatch_resume(*v38);
  signal(29, 1);
  v41 = dispatch_source_create(&_dispatch_source_type_signal, 0x1DuLL, 0, *(v7 + 16));
  v43 = v40 + 14;
  v42 = v40[14];
  v40[14] = v41;

  *buf = 0;
  v67 = buf;
  v68 = 0x2020000000;
  v69 = 0;
  v44 = v40[14];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_100184BBC;
  v63[3] = &unk_100272028;
  v65 = buf;
  v45 = v40;
  v64 = v45;
  dispatch_source_set_event_handler(v44, v63);
  dispatch_resume(*v43);
  signal(30, 1);
  v46 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, *(v7 + 16));
  v48 = v45 + 15;
  v47 = v45[15];
  v45[15] = v46;

  v49 = v45[15];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_100185078;
  v61[3] = &unk_100271F40;
  v50 = v45;
  v62 = v50;
  dispatch_source_set_event_handler(v49, v61);
  dispatch_resume(*v48);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v52 = sub_10000B7D8(v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *v81 = 138412290;
      v82 = @"com.apple.cloudphotod";
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "Daemon listening on %@", v81, 0xCu);
    }
  }

  v53 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.cloudphotod"];
  v54 = v50[4];
  v50[4] = v53;

  [v50[4] setDelegate:v50];
  [v50[4] _setQueue:*(v7 + 16)];
  [v50[4] resume];
  v55 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.cloudphotod.daemon"];
  v56 = v50[5];
  v50[5] = v55;

  [v50[5] setDelegate:v50];
  [v50[5] _setQueue:*(v7 + 16)];
  [v50[5] resume];
  v57 = objc_alloc_init(NSMutableArray);
  v58 = v50[6];
  v50[6] = v57;

  v59 = notify_post("com.apple.cpl.cloudphotoddidlaunch");
  if (v59 && (_CPLSilentLogging & 1) == 0)
  {
    sub_1001875CC(v59);
  }

  dispatch_activate(*(v7 + 16));

  _Block_object_dispose(buf, 8);
  return v7;
}

- (void)_performPendingBlockAfterFirstUnlock
{
  if (self->_isLocked)
  {
    (*(self->_pendingBlockAfterFirstUnlock + 2))();
    self->_isLocked = 0;
    pendingBlockAfterFirstUnlock = self->_pendingBlockAfterFirstUnlock;
    self->_pendingBlockAfterFirstUnlock = 0;
  }
}

- (void)_performOnceDeviceIsUnlocked:(id)unlocked
{
  unlockedCopy = unlocked;
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    sub_10018789C(self, unlockedCopy);
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000BD38;
    v21[3] = &unk_100272028;
    v21[4] = self;
    v21[5] = &v22;
    v6 = objc_retainBlock(v21);
    v7 = kMobileKeyBagLockStatusNotifyToken;
    v8 = v23;
    queue = self->_queue;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10000BDA0;
    v18 = &unk_100272090;
    v20 = &v22;
    v10 = v6;
    v19 = v10;
    if (notify_register_dispatch(v7, v8 + 6, queue, &v15))
    {
      v13 = [NSAssertionHandler currentHandler:v15];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLDaemon.m"];
      [v13 handleFailureInMethod:a2 object:self file:v14 lineNumber:546 description:@"Can't register to device protection changes notification"];

      abort();
    }

    v11 = [unlockedCopy copy];
    pendingBlockAfterFirstUnlock = self->_pendingBlockAfterFirstUnlock;
    self->_pendingBlockAfterFirstUnlock = v11;

    _Block_object_dispose(&v22, 8);
  }
}

- (void)_performAfterRegistrations:(id)registrations
{
  registrationsCopy = registrations;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_hasDoneInitialRegistration)
  {
    registrationsCopy[2]();
  }

  else
  {
    performAfterRegistrations = self->_performAfterRegistrations;
    if (!performAfterRegistrations)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = self->_performAfterRegistrations;
      self->_performAfterRegistrations = v5;

      performAfterRegistrations = self->_performAfterRegistrations;
    }

    v7 = [registrationsCopy copy];
    v8 = objc_retainBlock(v7);
    [(NSMutableArray *)performAfterRegistrations addObject:v8];
  }
}

- (void)_registerAfterLaunchWhenAllEnginesAreOpened
{
  if (!self->_isLocked && !self->_hasDoneInitialRegistration && ![(CPLEngineWrapperArray *)self->_wrappers unopenedCount])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = sub_10000B7D8(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Monitoring system requests", buf, 2u);
      }
    }

    if (!self->_forSyncBubble)
    {
      [(CPLDaemon *)self _registerForConfigurationRefresh];
      [(CPLDaemon *)self _registerForMaintenance];
      [(CPLDaemon *)self _registerForBackupRequests];
      [(CPLDaemon *)self _registerForFastPassInitialDownload];
      [(CPLDaemon *)self _registerForPeriodicUploadOfComputeStates];
      queue = self->_queue;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000C10C;
      v19[3] = &unk_100271F40;
      v19[4] = self;
      v5 = v19;
      *buf = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_1000026F8;
      v23 = &unk_100271E98;
      v24 = v5;
      v6 = queue;
      v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
      dispatch_async(v6, v7);
    }

    [(CPLDaemon *)self registerForSyncBubble];
    self->_hasDoneInitialRegistration = 1;
    performAfterRegistrations = self->_performAfterRegistrations;
    if (performAfterRegistrations)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = performAfterRegistrations;
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            (*(*(*(&v15 + 1) + 8 * i) + 16))(*(*(&v15 + 1) + 8 * i));
          }

          v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v25 count:16];
        }

        while (v11);
      }

      v14 = self->_performAfterRegistrations;
      self->_performAfterRegistrations = 0;
    }
  }
}

- (void)_updateConfigurationRefreshIntervalIfNecessary
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v4 = [v3 taskRequestForIdentifier:@"com.apple.cloudphotod.configurationrefresh"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mostRecentConfigurationDictionary = [(CPLEngineWrapperArray *)self->_wrappers mostRecentConfigurationDictionary];
      v6 = mostRecentConfigurationDictionary;
      if (!mostRecentConfigurationDictionary)
      {
        goto LABEL_15;
      }

      [mostRecentConfigurationDictionary refreshInterval];
      v8 = v7;
      [v4 interval];
      if (v8 == v9)
      {
        goto LABEL_15;
      }

      [v4 setInterval:v8];
      [v4 setMinDurationBetweenInstances:v8 * 0.8];
      v10 = +[BGSystemTaskScheduler sharedScheduler];
      v19 = 0;
      v11 = [v10 updateTaskRequest:v4 error:&v19];
      v12 = v19;

      if (v11)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v14 = sub_10000B7D8(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v21 = v8;
            v15 = "Updated the refresh interval of the configuration refresh task to %.0f seconds";
            v16 = v14;
            v17 = OS_LOG_TYPE_DEFAULT;
            v18 = 12;
LABEL_12:
            _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, v18);
            goto LABEL_13;
          }

          goto LABEL_13;
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = sub_10000B7D8(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          v21 = v8;
          v22 = 2112;
          v23 = v12;
          v15 = "Failed to update the refresh interval of the configuration refresh task to %.0f seconds: %@";
          v16 = v14;
          v17 = OS_LOG_TYPE_ERROR;
          v18 = 22;
          goto LABEL_12;
        }

LABEL_13:
      }

LABEL_15:
    }
  }
}

- (id)allowedProtocolForClientAccess:(id)access
{
  accessCopy = access;
  if ([accessCopy isEqualToString:@"library"])
  {
    v4 = &protocolRef_CPLDaemonLibraryManagerProtocol;
LABEL_7:
    v5 = *v4;
    goto LABEL_8;
  }

  if (([accessCopy isEqualToString:@"management"] & 1) != 0 || (objc_msgSend(accessCopy, "isEqualToString:", @"preferences") & 1) != 0 || objc_msgSend(accessCopy, "isEqualToString:", @"lightweight"))
  {
    v4 = &protocolRef_CPLDaemonLibraryManagerMinimalProtocol;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (void)_processConnectionDidInvalidate:(id)invalidate
{
  if (invalidate)
  {
    [(NSMutableArray *)self->_processClients removeObject:?];
  }
}

- (BOOL)_processListener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.private.cloudphotod.access"];
  v9 = v8;
  if (v8 && (v8 = [v8 isEqual:@"management"], (v8 & 1) != 0))
  {
    v10 = sub_1000139E4();
    [connectionCopy setExportedInterface:v10];
    [connectionCopy setExportedObject:self];
    [connectionCopy _setQueue:self->_queue];
    objc_initWeak(location, self);
    objc_initWeak(&from, connectionCopy);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000CF34;
    v13[3] = &unk_100272290;
    objc_copyWeak(&v14, location);
    objc_copyWeak(&v15, &from);
    [connectionCopy setInvalidationHandler:v13];
    [(NSMutableArray *)self->_processClients addObject:connectionCopy];
    [connectionCopy resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
    v11 = 1;
  }

  else
  {
    if (_CPLSilentLogging)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v10 = sub_10000B7D8(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *location = 138412546;
      *&location[4] = connectionCopy;
      v18 = 2112;
      v19 = @"com.apple.private.cloudphotod.access";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ has no valid entitlement for %@", location, 0x16u);
    }

    v11 = 0;
  }

LABEL_9:
  return v11;
}

- (id)daemonLibraryManager:(id)manager engineWrapperWithClientLibraryBaseURL:(id)l cloudLibraryStateStorageURL:(id)rL cloudLibraryResourceStorageURL:(id)uRL libraryIdentifier:(id)identifier mainScopeIdentifier:(id)scopeIdentifier options:(unint64_t)options error:(id *)self0
{
  managerCopy = manager;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  identifierCopy = identifier;
  scopeIdentifierCopy = scopeIdentifier;
  if (self->_isLocked && MKBDeviceUnlockedSinceBoot() == 1)
  {
    [(CPLDaemon *)self _performPendingBlockAfterFirstUnlock];
  }

  if (self->_isLocked)
  {
    if (error)
    {
      v22 = [CPLErrors cplErrorWithCode:100 description:@"Device is locked. File system is not available"];
LABEL_7:
      v23 = 0;
      *error = v22;
      goto LABEL_18;
    }
  }

  else
  {
    if (lCopy && rLCopy && uRLCopy && identifierCopy)
    {
      v24 = [[CPLEngineParameters alloc] initWithClientLibraryBaseURL:lCopy cloudLibraryStateStorageURL:rLCopy cloudLibraryResourceStorageURL:uRLCopy libraryIdentifier:identifierCopy mainScopeIdentifier:scopeIdentifierCopy options:options];
      v23 = [(CPLEngineWrapperArray *)self->_wrappers registeredWrapperCreateIfNecessaryWithParameters:v24 error:error];

      goto LABEL_18;
    }

    if (identifierCopy)
    {
      v23 = [(CPLEngineWrapperArray *)self->_wrappers registeredWrapperWithLibraryIdentifier:identifierCopy error:error];
      goto LABEL_18;
    }

    if (error)
    {
      v22 = [CPLErrors incorrectParametersErrorForParameter:@"libraryIdentifier"];
      goto LABEL_7;
    }
  }

  v23 = 0;
LABEL_18:

  return v23;
}

- (void)_daemonLibraryManagerWantsToExitNow:(id)now
{
  nowCopy = now;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = nowCopy;
    v6 = sub_10000B7D8(nowCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ wants to exit now", &v9, 0xCu);
    }
  }

  emergencyStop = [(CPLEngineWrapperArray *)self->_wrappers emergencyStop];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10000B7D8(emergencyStop);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "All engines have been closed in emergency, exiting now", &v9, 2u);
    }
  }

  exit(0);
}

- (void)startSyncTaskForDaemonLibraryManager:(id)manager
{
  managerCopy = manager;
  if (qword_1002C4F38 != -1)
  {
    sub_100187FB0();
  }

  if (byte_1002C4F30 == 1)
  {
    logoutTask = self->_logoutTask;
    p_logoutTask = &self->_logoutTask;
    if (!logoutTask)
    {
      sub_100187FC4(managerCopy, p_logoutTask);
    }
  }
}

- (id)daemonLibraryManagerOtherLibraryManager:(id)manager withLibraryIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_daemonManagers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (v12 != managerCopy)
        {
          if ([*(*(&v17 + 1) + 8 * i) isLibraryManager])
          {
            engineWrapper = [v12 engineWrapper];
            libraryIdentifier = [engineWrapper libraryIdentifier];
            v15 = [libraryIdentifier isEqualToString:identifierCopy];

            if (v15)
            {
              v9 = v12;
              goto LABEL_13;
            }
          }
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v9;
}

- (void)enumerateDaemonLibraryManagersWithLibraryIdentifier:(id)identifier block:(id)block
{
  blockCopy = block;
  daemonManagers = self->_daemonManagers;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D4C8;
  v8[3] = &unk_1002722B8;
  v9 = blockCopy;
  v7 = blockCopy;
  [(NSMutableArray *)daemonManagers enumerateObjectsUsingBlock:v8];
}

- (id)wrapperArray:(id)array engineWrapperWithParameters:(id)parameters createIfNecessary:(BOOL)necessary queue:(id)queue error:(id *)error
{
  necessaryCopy = necessary;
  arrayCopy = array;
  parametersCopy = parameters;
  queueCopy = queue;
  if (!self->_closing)
  {
    v45 = arrayCopy;
    clientLibraryBaseURL = [parametersCopy clientLibraryBaseURL];
    if (necessaryCopy)
    {
      clientLibraryBaseURL2 = [parametersCopy clientLibraryBaseURL];
      v53 = 0;
      v52 = 0;
      v17 = [clientLibraryBaseURL2 getResourceValue:&v53 forKey:NSURLVolumeURLKey error:&v52];
      v18 = v53;
      v19 = v52;
      v20 = v19;
      if (v17)
      {
        v21 = v19;
LABEL_8:

        v23 = v21;
        goto LABEL_9;
      }

      uRLByDeletingLastPathComponent = [clientLibraryBaseURL2 URLByDeletingLastPathComponent];
      v50 = 0;
      v51 = 0;
      v36 = [uRLByDeletingLastPathComponent getResourceValue:&v51 forKey:NSURLVolumeURLKey error:&v50];
      v18 = v51;
      v21 = v50;

      if (v36)
      {
        v37 = +[NSFileManager defaultManager];
        v49 = v21;
        v44 = [v37 createDirectoryAtURL:clientLibraryBaseURL2 withIntermediateDirectories:0 attributes:0 error:&v49];
        v23 = v49;

        if (v44)
        {
LABEL_9:
          if (!v18 && (_CPLSilentLogging & 1) == 0)
          {
            sub_100188160(clientLibraryBaseURL);
          }

          v24 = [[CPLEngineLibrary alloc] initWithParameters:parametersCopy];
          v15 = [[CPLEngineWrapper alloc] initWithParameters:parametersCopy engine:v24 queue:queueCopy];
          v25 = [[CPLEngineLibrarySupervisor alloc] initWithEngineLibrary:v24 queue:self->_queue];
          [v24 setSupervisor:v25];

          if (+[CPLResource cplShouldGenerateDerivatives])
          {
            store = [v24 store];
            derivativesCache = [store derivativesCache];
            [derivativesCache setDerivativeGeneratorClass:objc_opt_class()];
          }

          transport = [v24 transport];
          platformObject = [transport platformObject];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!self->_forSyncBubble)
            {
              libraryIdentifier = [v24 libraryIdentifier];
              [v24 processesInvolvedInSyncSessions];
              v30 = v43 = queueCopy;
              clientAppBundleIdentifier = [v24 clientAppBundleIdentifier];
              v54 = clientAppBundleIdentifier;
              v32 = [NSArray arrayWithObjects:&v54 count:1];
              v33 = [CPLCloudKitReschedulerCoordinator cloudKitReschedulerManagerForLibraryWithIdentifier:libraryIdentifier involvedProcesses:v30 relatedApplications:v32];
              [platformObject setReschedulerManager:v33];

              queueCopy = v43;
            }

            v34 = objc_alloc_init(CPLCloudKitComputeStateEncryptionHelper);
            [platformObject registerHelper:v34 withIdentifier:@"compute-state-encryption"];
          }

          [(CPLEngineWrapper *)v15 setVolumeURL:v18];

          goto LABEL_33;
        }

        if (error)
        {
          goto LABEL_23;
        }

        goto LABEL_32;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001880A4(clientLibraryBaseURL2);
      }
    }

    else
    {
      clientLibraryBaseURL2 = [parametersCopy cloudLibraryStateStorageURL];
      v48 = 0;
      v47 = 0;
      v22 = [clientLibraryBaseURL2 getResourceValue:&v48 forKey:NSURLVolumeURLKey error:&v47];
      v18 = v48;
      v21 = v47;
      if (v22)
      {
        goto LABEL_8;
      }

      if (_CPLSilentLogging)
      {
        v18 = 0;
LABEL_31:

        v23 = v21;
        if (error)
        {
LABEL_23:
          v38 = v23;
          v15 = 0;
          *error = v23;
LABEL_33:

          arrayCopy = v45;
          goto LABEL_34;
        }

LABEL_32:
        v15 = 0;
        goto LABEL_33;
      }

      uRLByDeletingLastPathComponent = sub_10000B7D8(v39);
      if (os_log_type_enabled(uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
      {
        path = [clientLibraryBaseURL2 path];
        *buf = 138412546;
        v56 = path;
        v57 = 2112;
        v58 = v21;
        _os_log_impl(&_mh_execute_header, uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR, "Can't access library at %@ anymore: %@", buf, 0x16u);
      }

      v18 = 0;
    }

    goto LABEL_31;
  }

  if (error)
  {
    [CPLErrors cplErrorWithCode:111 description:@"Daemon is closing"];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_34:

  return v15;
}

- (void)wrapperArray:(id)array wrapperShouldBeDropped:(id)dropped
{
  if (!self->_closing)
  {
    libraryIdentifier = [dropped libraryIdentifier];
    [CPLCloudKitReschedulerCoordinator dropCloudKitReschedulerManagerForLibraryWithIdentifier:libraryIdentifier];
  }
}

- (void)emergencyExitForWrapperArray:(id)array
{
  arrayCopy = array;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8(arrayCopy);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Daemon exiting immediately", v5, 2u);
    }
  }

  exit(0);
}

- (void)wrapperArrayCountDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy count])
  {
    sub_100188268(changeCopy, self);
  }

  else
  {
    if (self->_closing || self->_deactivated)
    {
      sub_1001882B0(0);
    }

    sub_100188204(0);
  }
}

- (void)_wrapperArray:(id)array forDaemon:(BOOL)daemon getStatusWithCompletionHandler:(id)handler
{
  arrayCopy = array;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000DCE0;
  v17[3] = &unk_100272328;
  daemonCopy = daemon;
  v17[4] = self;
  v10 = arrayCopy;
  v18 = v10;
  v11 = handlerCopy;
  v19 = v11;
  v12 = objc_retainBlock(v17);
  v13 = v12;
  pushNotificationCenter = self->_pushNotificationCenter;
  if (pushNotificationCenter)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000E2B8;
    v15[3] = &unk_100272378;
    v15[4] = self;
    v16 = v12;
    [(CPLCloudKitPushNotificationCenter *)pushNotificationCenter getStatusWithCompletionHandler:v15];
  }

  else
  {
    (v12[2])(v12, 0);
  }
}

- (void)wrapperArray:(id)array getStatusDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E51C;
  v11[3] = &unk_1002723C8;
  v11[4] = self;
  v12 = handlerCopy;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026F8;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = queue;
  v9 = handlerCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (void)wrapperArray:(id)array wrapperNeedsInitialDownloadOfMainScope:(id)scope
{
  arrayCopy = array;
  scopeCopy = scope;
  v8 = scopeCopy;
  if (!self->_forSyncBubble && [scopeCopy isSystemLibrary])
  {
    engine = [v8 engine];
    transport = [engine transport];
    platformObject = [transport platformObject];

    reschedulerManager = [platformObject reschedulerManager];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        queue = self->_queue;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10000E8CC;
        v17[3] = &unk_1002721A0;
        v17[4] = self;
        v18 = v8;
        v19 = reschedulerManager;
        v14 = v17;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000026F8;
        block[3] = &unk_100271E98;
        v21 = v14;
        v15 = queue;
        v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        dispatch_async(v15, v16);
      }
    }
  }
}

- (void)wrapperArray:(id)array wrapperDidCompleteInitialSyncOfMainScope:(id)scope
{
  arrayCopy = array;
  scopeCopy = scope;
  v7 = scopeCopy;
  if (!self->_forSyncBubble && [scopeCopy isSystemLibrary])
  {
    [(CPLDaemon *)self _reportICPLFeatureCheckpoint:50];
  }
}

- (unint64_t)wrapperArray:(id)array countOfClientsForWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_daemonManagers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        engineWrapper = [*(*(&v14 + 1) + 8 * i) engineWrapper];

        if (engineWrapper == wrapperCopy)
        {
          ++v9;
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)getEngineWrapperStatusesWithCompletionHandler:(id)handler
{
  queue = self->_queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queue);
  wrapperStatuses = [(CPLEngineWrapperArray *)self->_wrappers wrapperStatuses];
  handlerCopy[2](handlerCopy, wrapperStatuses, 0);
}

- (void)getDaemonLibraryManagerStatusesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_daemonManagers, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_daemonManagers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        status = [*(*(&v12 + 1) + 8 * v10) status];
        [v5 addObject:status];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  handlerCopy[2](handlerCopy, v5, 0);
}

- (void)wipeEnginesIfNecessaryWithCompletionHandler:(id)handler
{
  wrappers = self->_wrappers;
  handlerCopy = handler;
  [(CPLEngineWrapperArray *)wrappers wipeEnginesIfNecessary];
  handlerCopy[2](handlerCopy, 0);
}

- (void)initialDownloadHelper:(id)helper checkActiveAccountWithCompletionHandler:(id)handler
{
  helperCopy = helper;
  handlerCopy = handler;
  [NSProgress progressWithTotalUnitCount:1];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000EFDC;
  v17[3] = &unk_1002723F0;
  v17[4] = self;
  v8 = v20 = v21;
  v18 = v8;
  v9 = handlerCopy;
  v19 = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000F078;
  v15[3] = &unk_1002723C8;
  v15[4] = self;
  v10 = objc_retainBlock(v17);
  v16 = v10;
  [v8 setCancellationHandler:v15];
  coordinator = self->_coordinator;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F1E0;
  v13[3] = &unk_100272440;
  v13[4] = self;
  v12 = v10;
  v14 = v12;
  [(CPLCloudKitCoordinator *)coordinator fetchAccountInfoWithCompletionHandler:v13];

  _Block_object_dispose(v21, 8);
}

- (void)registerForSyncBubble
{
  if (qword_1002C4F38 != -1)
  {
    sub_100187FB0();
  }

  if (byte_1002C4F30 == 1 && !self->_registeredStakeholder)
  {
    sub_100188330(self, &self->_registeredStakeholder);
  }
}

- (void)uploadContent
{
  syncTask = self->_syncTask;
  p_syncTask = &self->_syncTask;
  if (!syncTask && self->_registeredStakeholder)
  {
    v7[5] = v2;
    v7[6] = v3;
    sub_1001883D4(p_syncTask, self, v7);
  }
}

- (void)_registerForConfigurationRefresh
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8(self);
    if (sub_10000FABC(v4))
    {
      v16 = 0;
      sub_10000F974();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  sub_1000033D8();
  sub_10000FB28();
  v13 = sub_1001851B8;
  v14 = &unk_100272128;
  selfCopy = self;
  [v12 registerForTaskWithIdentifier:@"com.apple.cloudphotod.configurationrefresh" usingQueue:? launchHandler:?];
}

- (void)_registerForMaintenance
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8(self);
    if (sub_10000FABC(v4))
    {
      v16 = 0;
      sub_10000F974();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  sub_1000033D8();
  sub_10000FB28();
  v13 = sub_1001854C0;
  v14 = &unk_100272128;
  selfCopy = self;
  [v12 registerForTaskWithIdentifier:@"com.apple.cloudphotod.maintenance" usingQueue:? launchHandler:?];
}

- (void)_registerForBackupRequests
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8(self);
    if (sub_10000FABC(v4))
    {
      v16 = 0;
      sub_10000F974();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  sub_1000033D8();
  sub_10000FB28();
  v13 = sub_100185884;
  v14 = &unk_100272128;
  selfCopy = self;
  [v12 registerForTaskWithIdentifier:@"com.apple.cloudphotod.backup" usingQueue:? launchHandler:?];
}

- (void)_reportICPLFeatureCheckpoint:(unint64_t)checkpoint
{
  switch(checkpoint)
  {
    case 1uLL:
      checkpoint = @"Disabled";
      break;
    case 0x32uLL:
      checkpoint = @"Available";
      break;
    case 0x1EuLL:
      checkpoint = @"PreviewAvailable";
      break;
    default:
      checkpoint = [[NSString alloc] initWithFormat:@"Checkpoint_%lu", checkpoint];
      break;
  }

  v13 = 0;
  v5 = [BGSystemTaskCheckpoints reportFeatureCheckpoint:checkpoint forFeature:107 error:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10000B7D8(v6);
      if (sub_100003424(v8))
      {
        sub_10000FAF8();
        v9 = "Reported iCPL feature is %@ for %{public}@";
        v10 = v5;
        v11 = OS_LOG_TYPE_DEFAULT;
        v12 = 22;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8(v6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000FAF8();
      v15 = 2112;
      v16 = v7;
      v9 = "Failed to report iCPL feature is %@ for %{public}@: %@";
      v10 = v5;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 32;
      goto LABEL_15;
    }

LABEL_16:
  }
}

- (void)_registerForFastPassInitialDownload
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10000B7D8(self);
    if (sub_10000FABC(v3))
    {
      sub_10000F974();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = +[BGSystemTaskScheduler sharedScheduler];
  sub_1000033D8();
  sub_10000FB28();
  [v11 registerForTaskWithIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass" usingQueue:? launchHandler:?];

  v12 = +[BGSystemTaskScheduler sharedScheduler];
  v13 = [v12 taskRequestForIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass"];

  if (v13)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = sub_10000B7D8(v14);
      if (sub_10000FABC(v15))
      {
        sub_10000FAA0();
LABEL_12:
        _os_log_impl(v16, v17, v18, v19, v20, v21);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v22 = sub_10000B7D8(v14);
    if (sub_10000FABC(v22))
    {
      sub_10000F974();
      goto LABEL_12;
    }

LABEL_13:
  }
}

- (void)_registerForPeriodicUploadOfComputeStates
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8(self);
    if (sub_10000FABC(v4))
    {
      v16 = 0;
      sub_10000F974();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  sub_1000033D8();
  sub_10000FB28();
  v13 = sub_100186388;
  v14 = &unk_100272128;
  selfCopy = self;
  [v12 registerForTaskWithIdentifier:@"com.apple.cloudphotod.periodic.upload.computestates" usingQueue:? launchHandler:?];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (self->_processListener == listenerCopy)
  {
    v10 = [(CPLDaemon *)self _processListener:listenerCopy shouldAcceptNewConnection:connectionCopy];
    goto LABEL_43;
  }

  if (!self->_deactivated)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10000B7D8(connectionCopy);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *&buf[4] = listenerCopy;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@ got a new connection: %@", buf, 0x16u);
      }
    }

    v12 = [v8 valueForEntitlement:@"com.apple.private.cloudphotod.access"];
    if (v12)
    {
      v13 = v12;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        if (v8)
        {
          objc_msgSend_auditToken(v8);
        }

        v63 = 0;
        memset(buf, 0, sizeof(buf));
        v15 = CPCopyBundleIdentifierAndTeamFromAuditToken();
        if (v15)
        {
          goto LABEL_49;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v16 = sub_10000B7D8(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            sub_10000FB94(&_mh_execute_header, v16, v17, "%@ has no bundle identifier. Will fallback on process ID", buf);
          }
        }

        processIdentifier = [v8 processIdentifier];
        bzero(buf, 0x100uLL);
        v19 = proc_name(processIdentifier, buf, 0x100u);
        if (v19)
        {
          v63 = CFStringCreateWithCString(0, buf, 0x8000100u);
          if (v63 || (_CPLSilentLogging & 1) != 0)
          {
            goto LABEL_49;
          }

          v20 = sub_10000B7D8(0);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_48;
          }

          LOWORD(v64) = 0;
          v21 = &_mh_execute_header;
          v22 = "Can't decypher process name";
          v23 = &v64;
          v24 = v20;
          v25 = OS_LOG_TYPE_ERROR;
          v26 = 2;
        }

        else
        {
          if (_CPLSilentLogging)
          {
LABEL_49:
            v46 = v63;
            if (!v63)
            {
              v46 = CFRetain(@"anonymous");
            }

            v47 = [(CPLDaemon *)self allowedProtocolForClientAccess:v13];
            if (v47)
            {
              v48 = v47;
              if ((_CPLSilentLogging & 1) == 0)
              {
                v49 = sub_10000B7D8(v47);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  v50 = NSStringFromProtocol(v48);
                  sub_10000F998();
                  *&buf[22] = v51;
                  *&buf[24] = v52;
                  v69 = v51;
                  v70 = v13;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Accepting a new connection from %@ (bundle identifier: %@). Allowed protocol is %@ (%@)", buf, 0x2Au);
                }
              }

              v53 = [v13 isEqualToString:@"management"];
              v54 = [[NSString alloc] initWithFormat:@"%@[%@]", v46, v13];
              v55 = CPLCopyDefaultSerialQueueAttributes();
              v56 = dispatch_queue_create_with_target_V2("com.apple.cloudphotod.daemon.connection", v55, self->_queue);

              [v8 _setQueue:v56];
              v57 = [[CPLDaemonLibraryManager alloc] initWithConnection:v8 name:v54 allowedProcol:v48 isManagement:v53];
              [(CPLDaemonLibraryManager *)v57 setDelegate:self];
              v58 = [(NSMutableArray *)self->_daemonManagers addObject:v57];
              if ((_CPLSilentLogging & 1) == 0)
              {
                v59 = sub_10000B7D8(v58);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                {
                  daemonManagers = self->_daemonManagers;
                  *buf = 138412290;
                  *&buf[4] = daemonManagers;
                  sub_10000FB94(&_mh_execute_header, v59, v60, "Current daemon's clients: %@", buf);
                }
              }

              v10 = 1;
LABEL_42:

              goto LABEL_43;
            }

            if ((_CPLSilentLogging & 1) == 0)
            {
              v62 = sub_10000B7D8(0);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                *&buf[4] = v13;
                *&buf[12] = 2112;
                *&buf[14] = v8;
                *&buf[22] = 2112;
                *&buf[24] = v46;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Unknown access type '%@' from %@ (%@)", buf, 0x20u);
              }
            }

LABEL_37:
            if ((_CPLSilentLogging & 1) == 0)
            {
              v41 = sub_10000B7D8(v12);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v8;
                sub_10000FB94(&_mh_execute_header, v41, v42, "Refusing connection from %@", buf);
              }
            }

            v10 = 0;
            goto LABEL_42;
          }

          v20 = sub_10000B7D8(v19);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
LABEL_48:

            goto LABEL_49;
          }

          v44 = __error();
          v45 = strerror(*v44);
          v64 = 138412546;
          v65 = v8;
          v66 = 2080;
          v67 = v45;
          sub_10000FAD4();
        }

        _os_log_impl(v21, v24, v25, v22, v23, v26);
        goto LABEL_48;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v27 = sub_10000B7D8(isKindOfClass);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10000F998();
          sub_10000FAD4();
          _os_log_impl(v28, v29, v30, v31, v32, v33);
        }
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v34 = sub_10000B7D8(v12);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10000F998();
        sub_10000FAD4();
        _os_log_impl(v35, v36, v37, v38, v39, v40);
      }
    }

    v13 = 0;
    goto LABEL_37;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10000B7D8(connectionCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Some client tried to connect while we were deactivated", buf, 2u);
    }
  }

  v10 = 0;
LABEL_43:

  return v10;
}

- (void)daemonLibraryManager:(id)manager wantsToExitAfterResettingParametersForLibraryWithIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  parametersStorage = self->_parametersStorage;
  v19 = 0;
  v9 = [(CPLEngineParametersStorage *)parametersStorage removeParametersWithLibraryIdentifier:identifierCopy error:&v19];
  v10 = v19;
  v11 = v10;
  if (v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10000B7D8(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543362;
        v21 = identifierCopy;
        sub_10000FAA0();
LABEL_8:
        _os_log_impl(v13, v14, v15, v16, v17, v18);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = sub_10000B7D8(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = 138543618;
      v21 = identifierCopy;
      v22 = 2112;
      v23 = v11;
      sub_10000FAD4();
      goto LABEL_8;
    }

LABEL_9:
  }

  [(CPLDaemon *)self _daemonLibraryManagerWantsToExitNow:managerCopy];
}

- (void)daemonLibraryManagerWantsToExitNow:(id)now
{
  nowCopy = now;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"CPLDaemonKeepRunningWithNoEngines"];

  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10000B7D8(v7);
      if (sub_10000FABC(v8))
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v9 = [(CPLEngineWrapperArray *)self->_wrappers count];
    if (!v9)
    {
      [(CPLDaemon *)self _daemonLibraryManagerWantsToExitNow:nowCopy];
      goto LABEL_10;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10000B7D8(v9);
      if (sub_10000FABC(v10))
      {
LABEL_8:
        sub_1000033F8();
        _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      }

LABEL_9:
    }
  }

LABEL_10:
}

- (void)daemonLibraryManagerHasBeenDisconnected:(id)disconnected
{
  [(NSMutableArray *)self->_daemonManagers removeObject:disconnected];
  v4 = [(NSMutableArray *)self->_daemonManagers count];
  if (v4)
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v5 = sub_10000B7D8(v4);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    sub_10000343C();
    v7 = "Current daemon's clients: %@";
    goto LABEL_8;
  }

  if (_CPLSilentLogging)
  {
    return;
  }

  v5 = sub_10000B7D8(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = @"com.apple.cloudphotod";
    v7 = "Daemon listening on %@";
LABEL_8:
    sub_10000FB94(&_mh_execute_header, v5, v6, v7, &v8);
  }

LABEL_9:
}

- (void)_reRunFastPassInitialDownloadIfNecessaryForWrapper:(id)wrapper withReschedulerManager:(id)manager
{
  wrapperCopy = wrapper;
  managerCopy = manager;
  v8 = [[BGFastPassSystemTaskRequest alloc] initWithIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass"];
  [v8 setRequiresProtectionClass:4];
  [v8 setRequiresExternalPower:0];
  [v8 setRequiresNetworkConnectivity:1];
  [v8 setPriority:2];
  involvedProcesses = [managerCopy involvedProcesses];
  [v8 setInvolvedProcesses:involvedProcesses];

  [v8 setFeatureCodes:&off_10028FC88];
  taskIdentifier = [managerCopy taskIdentifier];

  v40 = taskIdentifier;
  v11 = [NSArray arrayWithObjects:&v40 count:1];
  [v8 setProcessingTaskIdentifiers:v11];

  v12 = [NSSet setWithObjects:@"com.apple.cloudphotod.initialdownload.assets", @"com.apple.cloudphotod.initialdownload.finished", @"com.apple.cloudphotod.initialdownload.fastpass", 0];
  [v8 setProducedResultIdentifiers:v12];

  [v8 setReRun:1];
  v13 = +[BGSystemTaskScheduler sharedScheduler];
  v35 = 0;
  LOBYTE(taskIdentifier) = [v13 submitTaskRequest:v8 error:&v35];
  v14 = v35;

  if ((taskIdentifier & 1) == 0)
  {
    domain = [v14 domain];
    if ([domain isEqualToString:BGSystemTaskSchedulerErrorDomain])
    {
      code = [v14 code];

      if (code == 5)
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_18;
        }

        v27 = sub_10000B7D8(v26);
        if (sub_10000FBAC(v27))
        {
          libraryIdentifier = [wrapperCopy libraryIdentifier];
          v36 = 138543362;
          v37 = libraryIdentifier;
          sub_10000FAA0();
LABEL_16:
          _os_log_impl(v29, v30, v31, v32, v33, v34);

          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    if (_CPLSilentLogging)
    {
      goto LABEL_18;
    }

    domain = sub_10000B7D8(v26);
    if (os_log_type_enabled(domain, OS_LOG_TYPE_ERROR))
    {
      libraryIdentifier = [wrapperCopy libraryIdentifier];
      v36 = 138543618;
      v37 = libraryIdentifier;
      v38 = 2112;
      v39 = v14;
      sub_10000FAD4();
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = sub_10000B7D8(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      libraryIdentifier2 = [wrapperCopy libraryIdentifier];
      v36 = 138543362;
      v37 = libraryIdentifier2;
      sub_10000FAA0();
      _os_log_impl(v18, v19, v20, v21, v22, v23);
    }
  }

  [(CPLBGSTActivitiesReport *)self->_backgroundSystemTasksReport didSubmitTaskWithIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass"];
LABEL_18:
}

- (void)willSwitchUser
{
  if (self->_logoutTask)
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v3 = sub_10000B7D8(self);
    if (!sub_10000FAE0(v3))
    {
      goto LABEL_9;
    }

    v10 = 0;
    v6 = "Notified that user will be switched, we have a running sync task";
    v7 = &v10;
    goto LABEL_8;
  }

  if (_CPLSilentLogging)
  {
    return;
  }

  v8 = sub_10000B7D8(self);
  if (sub_10000FAE0(v8))
  {
    v9 = 0;
    v6 = "Notified that user will be switched, we don't have a running sync task";
    v7 = &v9;
LABEL_8:
    sub_10000FA44(&_mh_execute_header, v4, v5, v6, v7);
  }

LABEL_9:
}

@end