@interface ACXCompanionSyncConnection
- (ACXCompanionSyncConnection)initWithDevice:(id)device;
- (BOOL)_onQueue_appNeedsInstall:(id)install;
- (BOOL)_onQueue_installFailedForWatchAppBundleID:(id)d companionBundleID:(id)iD withError:(id)error appName:(id)name userInitiated:(BOOL)initiated userPresentableError:(id *)presentableError;
- (BOOL)needsAvailableSystemAppFetch;
- (BOOL)supportsRemoteAppList;
- (NSDictionary)removabilityForRemoteApps;
- (id)_appBundleFromURL:(id)l;
- (id)_onQueue_applicationForWatchAppWithBundleID:(id)d;
- (id)_onQueue_availableCompanionAppBundleIDForWatchApp:(id)app;
- (id)messager;
- (id)remoteAppWithBundleID:(id)d;
- (void)_installQueuedOrCompletedForWatchBundleID:(id)d companionAppBundleID:(id)iD withName:(id)name userInitiated:(BOOL)initiated withError:(id)error withCompletion:(id)completion;
- (void)_installWatchAppWithBundleID:(id)d withProvisioningProfileInfo:(id)info installationPendingBlock:(id)block completionWithError:(id)error;
- (void)_onQueue_beginReunionSync;
- (void)_onQueue_beginReunionSyncWithRetryCount:(unint64_t)count;
- (void)_onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded;
- (void)_onQueue_configureRemoteRemovabilityManagerAndFetchRemoteRemovabilityStatus;
- (void)_onQueue_fetchAvailableSystemApps;
- (void)_onQueue_fetchAvailableSystemAppsWithRetryCount:(unint64_t)count;
- (void)_onQueue_fetchRemovabilityForRemoteApps;
- (void)_onQueue_fetchRemovabilityForRemoteAppsWithRetryCount:(unint64_t)count;
- (void)_onQueue_handleAppDeleteMessage:(id)message;
- (void)_onQueue_handleAppInstallFailureMessage:(id)message;
- (void)_onQueue_handleAppInstallMessage:(id)message;
- (void)_onQueue_handleAppInstallMessage:(id)message withAppManager:(id)manager;
- (void)_onQueue_handleAppRemovabilityUpdatedMessage:(id)message;
- (void)_onQueue_handleCompatibleWatchAppsOnCompanionMessage:(id)message;
- (void)_onQueue_handleIconForWatchAppMessage:(id)message;
- (void)_onQueue_handleInstallAppMessage:(id)message;
- (void)_onQueue_handleRemoteRemovabilityFetchResponse:(id)response;
- (void)_onQueue_handleSADAppInfoResponse:(id)response;
- (void)_onQueue_processPendingGizmoState;
- (void)_onQueue_processReunionSyncMessage:(id)message;
- (void)_onQueue_processReunionSyncMessage:(id)message withAppManager:(id)manager;
- (void)_onQueue_sendInstallOnGizmoMessageForSystemAppBundleIDs:(id)ds appsWithStoreMetadata:(id)metadata isUserInitiated:(BOOL)initiated exclusiveInstall:(BOOL)install withCompletion:(id)completion;
- (void)_onQueue_sendRemoveMessageForBundleIDs:(id)ds isUserInitiated:(BOOL)initiated withCompletion:(id)completion;
- (void)_onQueue_triggerLocalAppStoreInstallForWatchApp:(id)app userInitiated:(BOOL)initiated completion:(id)completion;
- (void)_processSystemAppChangesForNewApps:(id)apps updatedApps:(id)updatedApps removedApps:(id)removedApps;
- (void)_setLocallyAvailableForRemoteApplicationInstances:(id)instances;
- (void)acknowledgeAppEventsForDBUUID:(id)d throughSequenceNumber:(unint64_t)number;
- (void)acknowledgeTestFlightInstallBegunForWatchApp:(id)app;
- (void)applicationsAdded:(id)added;
- (void)applicationsRemovabilityUpdated:(id)updated;
- (void)applicationsRemoved:(id)removed;
- (void)applicationsUpdated:(id)updated;
- (void)cancelPendingInstallations;
- (void)dealloc;
- (void)fetchAppInfoForBundleIDs:(id)ds;
- (void)fetchBundleIDList;
- (void)fetchOutstandingAppEvents;
- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)d completion:(id)completion;
- (void)fetchRemovabilityForRemoteApps;
- (void)handleIncomingMessage:(id)message;
- (void)installAllApplications;
- (void)installProvisioningProfileWithData:(id)data completion:(id)completion;
- (void)installSystemApplicationsWithBundleIDs:(id)ds withCompletion:(id)completion;
- (void)installWatchAppAtURL:(id)l installOptions:(id)options size:(int64_t)size completionWithError:(id)error;
- (void)markAllApplicationsAsRemoved;
- (void)noteCompanionAppDatabaseRebuild;
- (void)noteInstallFailure:(id)failure forWatchAppWithBundleID:(id)d wasUserInitiated:(BOOL)initiated;
- (void)noteNewCompanionApps:(id)apps updatedApps:(id)updatedApps removedApps:(id)removedApps forDBUUID:(id)d endingSequenceNumber:(unint64_t)number;
- (void)performReunionSyncWithReason:(id)reason;
- (void)processPendingStateWithReason:(id)reason;
- (void)reachabilityChangedForDevice:(id)device;
- (void)removeProvisioningProfileWithID:(id)d completion:(id)completion;
- (void)removeWatchAppWithBundleID:(id)d completion:(id)completion;
- (void)resyncCompleted;
- (void)updatePreferencesForApplicationWithIdentifier:(id)identifier preferences:(id)preferences writingToPreferencesLocation:(unint64_t)location options:(unint64_t)options completion:(id)completion;
@end

@implementation ACXCompanionSyncConnection

- (ACXCompanionSyncConnection)initWithDevice:(id)device
{
  deviceCopy = device;
  v36.receiver = self;
  v36.super_class = ACXCompanionSyncConnection;
  v6 = [(ACXCompanionSyncConnection *)&v36 init];
  if (!v6)
  {
LABEL_8:
    v30 = v6;
    goto LABEL_13;
  }

  if (deviceCopy)
  {
    v7 = +[ACXGizmoStateManager sharedStateManager];
    v8 = [v7 stateForDevice:deviceCopy];
    gizmoState = v6->_gizmoState;
    v6->_gizmoState = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.AppConduit.CompanionSyncConnection", v10);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v11;

    objc_storeStrong(&v6->_device, device);
    device = [(ACXCompanionSyncConnection *)v6 device];
    [device addObserver:v6];

    v14 = +[ACXAvailableApplicationManager sharedApplicationManager];
    applicationManager = v6->_applicationManager;
    v6->_applicationManager = v14;

    v16 = [ACXInstallQueue alloc];
    device2 = [(ACXCompanionSyncConnection *)v6 device];
    v18 = [(ACXInstallQueue *)v16 initWithDevice:device2];
    installQueue = v6->_installQueue;
    v6->_installQueue = v18;

    v20 = [ACXLocalAppStoreInstallQueue alloc];
    device3 = [(ACXCompanionSyncConnection *)v6 device];
    v22 = [(ACXLocalAppStoreInstallQueue *)v20 initWithDevice:device3];
    appStoreLocalQueue = v6->_appStoreLocalQueue;
    v6->_appStoreLocalQueue = v22;

    [(ACXCompanionSyncConnection *)v6 _onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded];
    if ([deviceCopy isReachable])
    {
      remoteAppList = [(ACXCompanionSyncConnection *)v6 remoteAppList];
      [remoteAppList remoteDeviceConnected];
    }

    internalQueue = [(ACXCompanionSyncConnection *)v6 internalQueue];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10001DEEC;
    v34[3] = &unk_10008CD40;
    v26 = v6;
    v35 = v26;
    sub_100005828(internalQueue, v34);

    gizmoState = [(ACXCompanionSyncConnection *)v26 gizmoState];
    needsReunionSync = [gizmoState needsReunionSync];

    if (needsReunionSync)
    {
      internalQueue2 = [(ACXCompanionSyncConnection *)v26 internalQueue];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10001DEF4;
      v32[3] = &unk_10008CD40;
      v33 = v26;
      sub_100005828(internalQueue2, v32);
    }

    goto LABEL_8;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

  v30 = 0;
LABEL_13:

  return v30;
}

- (void)dealloc
{
  device = [(ACXCompanionSyncConnection *)self device];
  [device removeObserver:self];

  remoteRemovabilityManager = [(ACXCompanionSyncConnection *)self remoteRemovabilityManager];
  [remoteRemovabilityManager removeDelegate:self];

  v5.receiver = self;
  v5.super_class = ACXCompanionSyncConnection;
  [(ACXCompanionSyncConnection *)&v5 dealloc];
}

- (id)messager
{
  device = [(ACXCompanionSyncConnection *)self device];
  messager = [device messager];

  return messager;
}

- (void)_onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded
{
  remoteAppList = [(ACXCompanionSyncConnection *)self remoteAppList];

  if (remoteAppList)
  {
    goto LABEL_17;
  }

  device = [(ACXCompanionSyncConnection *)self device];
  if ([device supportsRemoteAppList])
  {
    pairingStoreURL = [device pairingStoreURL];
    idsDeviceIdentifier = sub_100006830(pairingStoreURL);

    internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
    v8 = [ACXRemoteAppList remoteAppListForStorageBaseURL:idsDeviceIdentifier delegate:self queue:internalQueue];
    remoteAppList = self->_remoteAppList;
    self->_remoteAppList = v8;

    if (!self->_remoteAppList && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
    {
      path = [idsDeviceIdentifier path];
      MOLogWrite();
    }

    remoteAppList2 = [(ACXCompanionSyncConnection *)self remoteAppList];
    internalQueue2 = [(ACXCompanionSyncConnection *)self internalQueue];
    [remoteAppList2 addObserver:self queue:internalQueue2];

    v12 = [ACXRemoteSystemAppList availableSystemAppListForStorageBaseURL:idsDeviceIdentifier];
    availableSystemAppList = self->_availableSystemAppList;
    self->_availableSystemAppList = v12;

    if (self->_availableSystemAppList || qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_15;
    }

    path2 = [idsDeviceIdentifier path];
    path = path2;
  }

  else
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_16;
    }

    idsDeviceIdentifier = [device idsDeviceIdentifier];
    path2 = [device pairingID];
    path = idsDeviceIdentifier;
    v17 = path2;
  }

  MOLogWrite();

LABEL_15:
LABEL_16:

LABEL_17:
  if ([(ACXCompanionSyncConnection *)self needsAvailableSystemAppFetch:path])
  {
    internalQueue3 = [(ACXCompanionSyncConnection *)self internalQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001E258;
    v18[3] = &unk_10008CD40;
    v18[4] = self;
    sub_100005828(internalQueue3, v18);
  }
}

- (void)_onQueue_configureRemoteRemovabilityManagerAndFetchRemoteRemovabilityStatus
{
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  device = [(ACXCompanionSyncConnection *)self device];
  if ([device supportsTrackingAppRemovability])
  {
    remoteRemovabilityManager = [(ACXCompanionSyncConnection *)self remoteRemovabilityManager];

    if (remoteRemovabilityManager)
    {
LABEL_5:
      [(ACXCompanionSyncConnection *)self _onQueue_fetchRemovabilityForRemoteApps];
      goto LABEL_9;
    }

    pairingStoreURL = [device pairingStoreURL];
    v6 = sub_100006830(pairingStoreURL);

    internalQueue2 = [(ACXCompanionSyncConnection *)self internalQueue];
    v8 = [ACXRemoteAppRemovabilityManager remoteRemovabilityManagerForStorageBaseURL:v6 delegate:self queue:internalQueue2];
    remoteRemovabilityManager = self->_remoteRemovabilityManager;
    self->_remoteRemovabilityManager = v8;

    if (self->_remoteRemovabilityManager)
    {

      goto LABEL_5;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      path = [v6 path];
      MOLogWrite();
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

LABEL_9:
}

- (void)reachabilityChangedForDevice:(id)device
{
  deviceCopy = device;
  device = [(ACXCompanionSyncConnection *)self device];
  isReachable = [device isReachable];

  if (isReachable)
  {
    idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
    internalQueue2 = [NSString stringWithFormat:@"device %@ became reachable", idsDeviceIdentifier];

    [(ACXCompanionSyncConnection *)self performReunionSyncWithReason:internalQueue2];
    internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001E560;
    v11[3] = &unk_10008CD40;
    v11[4] = self;
    sub_100005828(internalQueue, v11);
  }

  else
  {
    internalQueue2 = [(ACXCompanionSyncConnection *)self internalQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001E5B4;
    v10[3] = &unk_10008CD40;
    v10[4] = self;
    sub_100005828(internalQueue2, v10);
  }
}

- (void)installAllApplications
{
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E680;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (BOOL)needsAvailableSystemAppFetch
{
  device = [(ACXCompanionSyncConnection *)self device];
  supportsRemoteAppList = [device supportsRemoteAppList];

  if (!supportsRemoteAppList)
  {
    return 0;
  }

  availableSystemAppList = [(ACXCompanionSyncConnection *)self availableSystemAppList];
  device2 = [(ACXCompanionSyncConnection *)self device];
  osBuildVersion = [device2 osBuildVersion];
  v8 = [availableSystemAppList needsSyncForCurrentOSBuildVersion:osBuildVersion];

  return v8;
}

- (void)markAllApplicationsAsRemoved
{
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EA58;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)cancelPendingInstallations
{
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ECB0;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (BOOL)_onQueue_installFailedForWatchAppBundleID:(id)d companionBundleID:(id)iD withError:(id)error appName:(id)name userInitiated:(BOOL)initiated userPresentableError:(id *)presentableError
{
  initiatedCopy = initiated;
  dCopy = d;
  errorCopy = error;
  nameCopy = name;
  iDCopy = iD;
  gizmoState = [(ACXCompanionSyncConnection *)self gizmoState];
  [gizmoState setInstallStatus:7 forApp:dCopy companionBundleID:iDCopy];

  v19 = sub_10004F750(errorCopy, nameCopy, 1);
  v20 = v19;
  if (initiatedCopy)
  {
    domain = [v19 domain];
    if ([domain isEqualToString:@"ACXUserPresentableErrorDomain"] && objc_msgSend(v20, "code") == 9)
    {
      v22 = errorCopy;
      domain2 = [v22 domain];
      if (![domain2 isEqualToString:@"ACXErrorDomain"] || objc_msgSend(v22, "code") != 52)
      {
        domain3 = [v22 domain];
        if (![domain3 isEqualToString:IXErrorDomain] || objc_msgSend(v22, "code") != 24)
        {
          v70 = domain;
          v25 = domain2;
          domain4 = [v22 domain];
          if ([domain4 isEqualToString:AMSErrorDomain])
          {
            v72 = v25;
            code = [v22 code];

            if (code == 100)
            {
              goto LABEL_27;
            }
          }

          else
          {
          }

          domain = [(ACXCompanionSyncConnection *)self device];
          v28 = nameCopy;
          v73 = dCopy;
          v29 = v22;
          v22 = v28;
          domain3 = v29;
          v30 = v20;
          if (sub_100006760(v30, v31))
          {
            v32 = +[NSDate date];
            v66 = sub_10002D2FC(v32);

            v65 = MGCopyAnswer();
            v64 = MGCopyAnswer();
            v69 = MGCopyAnswer();
            productType = [domain productType];
            osVersion = [domain osVersion];
            osBuildVersion = [domain osBuildVersion];
            watchSize = [domain watchSize];
            idsDeviceIdentifier = [domain idsDeviceIdentifier];
            pairingID = [domain pairingID];
            userInfo = [domain3 userInfo];
            v58 = [userInfo objectForKeyedSubscript:@"ConnectionIdentifier"];

            userInfo2 = [domain3 userInfo];
            v57 = [userInfo2 objectForKeyedSubscript:@"ConnectionCreationDate"];

            userInfo3 = [domain3 userInfo];
            v52 = [userInfo3 objectForKeyedSubscript:@"WifiAsserted"];

            v71 = domain3;
            userInfo4 = [domain3 userInfo];
            v56 = [userInfo4 objectForKeyedSubscript:@"IDSMessageID"];

            v51 = [NSString stringWithFormat:@"Installation of %@ failed", v22];
            v55 = [NSString stringWithFormat:@"%@ failed to install on your Apple Watch.\n\nPlease file a bug!", v22];
            userInfo5 = [v30 userInfo];
            v38 = [userInfo5 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];

            userInfo6 = [v30 userInfo];
            v54 = [userInfo6 objectForKeyedSubscript:NSLocalizedDescriptionKey];

            v67 = v22;
            v50 = v38;
            if (v38)
            {
              [NSString stringWithFormat:@"INTERNAL-ONLY MESSAGE: (%@) %@", v22, v38];
            }

            else
            {
              [NSString stringWithFormat:@"INTERNAL-ONLY MESSAGE: %@", v51, v47];
            }
            v53 = ;
            v40 = v55;
            if (v54)
            {
              v40 = v54;
            }

            v49 = v40;
            domain5 = [v71 domain];
            v48 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[%@/%@] [%@:%ld]: Failed to install %@ on Apple Watch", v69, osBuildVersion, domain5, [v71 code], v73);

            v42 = objc_opt_new();
            [v42 appendFormat:@"Steps to reproduce:\n\n\n\nAuto-Gathered Info:\n"];
            [v42 appendFormat:@"Time: %@\n", v66];
            [v42 appendFormat:@"IDS Device ID: %@\n", idsDeviceIdentifier];
            [v42 appendFormat:@"Pairing ID: %@\n", pairingID];
            if (v56)
            {
              [v42 appendFormat:@"Failing IDS Message ID: %@\n", v56];
            }

            if (v58)
            {
              [v42 appendFormat:@"Failing Stream Name: %@\n", v58];
              v43 = sub_10002D2FC(v57);
              [v42 appendFormat:@"Connection Start Date: %@\n", v43];
              [v42 appendFormat:@"WiFi Asserted: %c\n", sub_100006DA8(objc_msgSend(v52, "BOOLValue"))];
            }

            [v42 appendFormat:@"Error: %@\n", v71];
            [v42 appendFormat:@"Companion: %@ %@ (%@)\n", v65, v64, v69];
            [v42 appendFormat:@"Watch: %@ (%@) %@ (%@)\n", productType, watchSize, osVersion, osBuildVersion];
            [v42 appendFormat:@"App Name: %@\n", v67];
            [v42 appendFormat:@"Bundle ID: %@\n", v73];
            v44 = [v42 copy];
            sub_100005728(v53, v49, v48, v44);

            domain3 = v71;
            v22 = v67;
          }

          domain2 = v73;
        }
      }
    }
  }

LABEL_27:
  if (presentableError)
  {
    v45 = v20;
    *presentableError = v20;
  }

  return presentableError != 0;
}

- (void)installSystemApplicationsWithBundleIDs:(id)ds withCompletion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001F574;
  v11[3] = &unk_10008CA98;
  v12 = dsCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dsCopy;
  sub_100005828(internalQueue, v11);
}

- (void)_installWatchAppWithBundleID:(id)d withProvisioningProfileInfo:(id)info installationPendingBlock:(id)block completionWithError:(id)error
{
  dCopy = d;
  infoCopy = info;
  blockCopy = block;
  errorCopy = error;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001F754;
  v19[3] = &unk_10008D608;
  v19[4] = self;
  v20 = dCopy;
  v22 = errorCopy;
  v23 = blockCopy;
  v21 = infoCopy;
  v15 = infoCopy;
  v16 = blockCopy;
  v17 = errorCopy;
  v18 = dCopy;
  sub_100005828(internalQueue, v19);
}

- (id)_appBundleFromURL:(id)l
{
  lCopy = l;
  v4 = [lCopy URLByAppendingPathComponent:@"Payload" isDirectory:1];
  v5 = +[NSFileManager defaultManager];
  path = [v4 path];
  v7 = [v5 fileExistsAtPath:path];

  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:1 errorHandler:&stru_10008D648];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          pathExtension = [v15 pathExtension];
          v17 = [pathExtension isEqualToString:@"app"];

          if (v17)
          {
            v18 = v15;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_13:
  }

  else
  {
    v18 = lCopy;
  }

  return v18;
}

- (void)installWatchAppAtURL:(id)l installOptions:(id)options size:(int64_t)size completionWithError:(id)error
{
  lCopy = l;
  optionsCopy = options;
  errorCopy = error;
  v11 = _kCFBundleDisplayNameKey;
  v12 = [NSSet setWithObjects:kCFBundleExecutableKey, kCFBundleIdentifierKey, _kCFBundleDisplayNameKey, kCFBundleNameKey, @"UIRequiredDeviceCapabilities", @"WKCompanionAppBundleIdentifier", 0];
  selfCopy = self;
  v13 = [(ACXCompanionSyncConnection *)self _appBundleFromURL:lCopy];
  v14 = v13;
  if (v13)
  {
    v76 = v12;
    v78 = sub_100006A94(v13, v12);
    if (!v78)
    {
      path = [v14 path];
      v21 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 688, @"ACXErrorDomain", 40, 0, 0, @"Failed to load Info.plist from app at URL %@", v25, path);

      if (errorCopy)
      {
        errorCopy[2](errorCopy, 8, v21);
      }

      v23 = v12;
      v22 = optionsCopy;
      goto LABEL_59;
    }

    v15 = errorCopy;
    v73 = lCopy;
    v16 = [v78 objectForKeyedSubscript:kCFBundleExecutableKey];
    objc_opt_class();
    v17 = v16;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v72 = v18;
    if (!v18)
    {
      path2 = [v14 path];
      v21 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 697, @"ACXErrorDomain", 47, 0, 0, @"Failed to get bundle executable name from Info.plist at %@", v30, path2);

      errorCopy = v15;
      if (v15)
      {
        v15[2](v15, 8, v21);
      }

      v23 = v76;
      v22 = optionsCopy;
      v31 = 0;
      goto LABEL_58;
    }

    v71 = v14;
    v26 = [v78 objectForKeyedSubscript:v11];
    objc_opt_class();
    v27 = v26;
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v22 = optionsCopy;

    errorCopy = v15;
    if (!v28)
    {
      v32 = [v78 objectForKeyedSubscript:kCFBundleNameKey];
      objc_opt_class();
      v33 = v32;
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      if (v34)
      {
        v28 = v34;
      }

      else
      {
        v28 = @"Unknown Name";
      }
    }

    v35 = [v78 objectForKeyedSubscript:kCFBundleIdentifierKey];
    objc_opt_class();
    v36 = v35;
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    if (!v37)
    {
      path3 = [v71 path];
      v21 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 714, @"ACXErrorDomain", 47, 0, 0, @"Failed to get watch bundle ID from Info.plist at %@", v46, path3);

      if (errorCopy)
      {
        errorCopy[2](errorCopy, 8, v21);
      }

      v23 = v76;
      v31 = v72;
      goto LABEL_57;
    }

    installTargetType = [optionsCopy installTargetType];
    if (installTargetType != 2)
    {
      appStoreLocalQueue = [(ACXCompanionSyncConnection *)selfCopy appStoreLocalQueue];
      [appStoreLocalQueue acknowledgeInstallationStartedForWatchApp:v37];
    }

    v40 = [v78 objectForKeyedSubscript:@"WKCompanionAppBundleIdentifier"];
    if (!v40)
    {
      path4 = [v71 path];
      v21 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 728, @"ACXErrorDomain", 47, 0, 0, @"Failed to get companion app bundle ID from Info.plist at %@", v48, path4);

      if (errorCopy)
      {
        errorCopy[2](errorCopy, 8, v21);
      }

      v23 = v76;
      v31 = v72;
      goto LABEL_56;
    }

    v69 = [v78 objectForKeyedSubscript:@"UIRequiredDeviceCapabilities"];
    sinfData = [optionsCopy sinfData];

    v70 = v40;
    if (sinfData)
    {
      sinfData2 = [optionsCopy sinfData];
      getuid();
      getgid();
      v85[1] = 0;
      v43 = MIUpdateSinfWithData();
      v21 = 0;

      if ((v43 & 1) == 0)
      {
        path5 = [lCopy path];
        v55 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 739, @"ACXErrorDomain", 41, 0, 0, @"Failed to create sinf for app %@ at URL %@: %@", v54, v37);

        if (errorCopy)
        {
          errorCopy[2](errorCopy, 8, v55);
        }

        goto LABEL_54;
      }

      v44 = v21;
    }

    else
    {
      v44 = 0;
    }

    iTunesMetadata = [optionsCopy iTunesMetadata];

    if (!iTunesMetadata)
    {
      v21 = v44;
      goto LABEL_50;
    }

    iTunesMetadata2 = [optionsCopy iTunesMetadata];
    dictionaryRepresentation = [iTunesMetadata2 dictionaryRepresentation];
    v52 = [lCopy URLByAppendingPathComponent:@"iTunesMetadata.plist"];
    v85[0] = v44;
    v53 = [dictionaryRepresentation ACX_writeToURL:v52 format:200 options:268435457 error:v85];
    v21 = v85[0];

    if (v53)
    {
      v22 = optionsCopy;
LABEL_50:
      v68 = installTargetType == 2;
      gizmoState = [(ACXCompanionSyncConnection *)selfCopy gizmoState];
      [gizmoState setInstallStatus:1 forApp:v37 companionBundleID:v70];

      isUserInitiated = [v22 isUserInitiated];
      installQueue = [(ACXCompanionSyncConnection *)selfCopy installQueue];
      gizmoState2 = [(ACXCompanionSyncConnection *)selfCopy gizmoState];
      v59 = [gizmoState2 preferencesForApplicationWithIdentifier:v37];
      isUserInitiated2 = [optionsCopy isUserInitiated];
      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_100020C38;
      v79[3] = &unk_10008D670;
      v79[4] = selfCopy;
      v80 = v37;
      v81 = v70;
      v82 = v28;
      v84 = isUserInitiated;
      v83 = errorCopy;
      v60 = v69;
      lCopy = v73;
      LOBYTE(v63) = isUserInitiated2;
      [installQueue installWatchAppAtURL:v73 watchBundleID:v80 companionAppBundleID:v81 withPriority:2 appSettings:v59 isPlaceholder:v68 isUserInitiated:v63 size:size requiredCapabilities:v69 completion:v79];

      v40 = v70;
      v22 = optionsCopy;

      v31 = v72;
LABEL_55:

      v23 = v76;
LABEL_56:

LABEL_57:
      v14 = v71;
LABEL_58:

LABEL_59:
      goto LABEL_60;
    }

    lCopy = v73;
    path6 = [v73 path];
    v62 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 749, @"ACXErrorDomain", 42, 0, 0, @"Failed to create iTunesMetadata.plist for app %@ at URL %@: %@", v61, v37);

    v40 = v70;
    if (errorCopy)
    {
      errorCopy[2](errorCopy, 8, v62);
    }

    v22 = optionsCopy;
LABEL_54:
    v31 = v72;
    v60 = v69;
    goto LABEL_55;
  }

  path7 = [lCopy path];
  v21 = sub_1000061DC("[ACXCompanionSyncConnection installWatchAppAtURL:installOptions:size:completionWithError:]", 679, @"ACXErrorDomain", 46, 0, 0, @"Failed to locate app bundle from root URL %@", v20, path7);

  if (errorCopy)
  {
    errorCopy[2](errorCopy, 8, v21);
  }

  v22 = optionsCopy;
  v23 = v12;
LABEL_60:
}

- (void)_installQueuedOrCompletedForWatchBundleID:(id)d companionAppBundleID:(id)iD withName:(id)name userInitiated:(BOOL)initiated withError:(id)error withCompletion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  errorCopy = error;
  completionCopy = completion;
  v19 = completionCopy;
  if (errorCopy)
  {
    internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100020DC4;
    block[3] = &unk_10008D698;
    block[4] = self;
    v22 = dCopy;
    v23 = errorCopy;
    v24 = iDCopy;
    v26 = v19;
    v25 = nameCopy;
    initiatedCopy = initiated;
    dispatch_sync(internalQueue, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

- (id)remoteAppWithBundleID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10002112C;
  v17 = sub_10002113C;
  applicationManager = [(ACXCompanionSyncConnection *)self applicationManager];
  v18 = [applicationManager gizmoAppWithBundleID:dCopy];

  v6 = v14[5];
  if (!v6)
  {
    internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021144;
    block[3] = &unk_10008CA20;
    v12 = &v13;
    block[4] = self;
    v11 = dCopy;
    dispatch_sync(internalQueue, block);

    v6 = v14[5];
  }

  v8 = v6;
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)removeWatchAppWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002128C;
  v11[3] = &unk_10008CA98;
  v12 = dCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  sub_100005828(internalQueue, v11);
}

- (void)_onQueue_fetchRemovabilityForRemoteApps
{
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  device = [(ACXCompanionSyncConnection *)self device];
  if ([device isReachable])
  {
    if ([(ACXCompanionSyncConnection *)self remoteRemovabilityFetchRunning])
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
LABEL_8:
        idsDeviceIdentifier = [device idsDeviceIdentifier];
        MOLogWrite();
      }
    }

    else
    {
      [(ACXCompanionSyncConnection *)self setRemoteRemovabilityFetchRunning:1];
      [(ACXCompanionSyncConnection *)self _onQueue_fetchRemovabilityForRemoteAppsWithRetryCount:0];
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    goto LABEL_8;
  }
}

- (void)_onQueue_fetchRemovabilityForRemoteAppsWithRetryCount:(unint64_t)count
{
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  messager = [(ACXCompanionSyncConnection *)self messager];
  device = [(ACXCompanionSyncConnection *)self device];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000217FC;
  v8[3] = &unk_10008D6E8;
  v8[4] = self;
  v8[5] = count;
  [messager sendMessage:&off_100097AD0 toDevice:device withPriority:200 timeout:@"remote removability fetch" logDescription:v8 handleReply:120.0];
}

- (void)_onQueue_handleRemoteRemovabilityFetchResponse:(id)response
{
  responseCopy = response;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  message = [responseCopy message];
  v6 = [message objectForKeyedSubscript:@"RA"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  message2 = [responseCopy message];
  v10 = [message2 objectForKeyedSubscript:@"RU"];
  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  message3 = [responseCopy message];
  v14 = [message3 objectForKeyedSubscript:@"RS"];
  objc_opt_class();
  v15 = v14;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v20 = v12;
    v21 = v16;
    v19 = v8;
    MOLogWrite();
  }

  if (v8)
  {
    remoteRemovabilityManager = [(ACXCompanionSyncConnection *)self remoteRemovabilityManager];
    v18 = [[NSUUID alloc] initWithUUIDString:v12];
    [remoteRemovabilityManager setRemoteRemovabilityData:v8 withDBUUID:v18 sequenceNumber:{objc_msgSend(v16, "unsignedIntegerValue")}];

LABEL_18:
    goto LABEL_19;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    remoteRemovabilityManager = [responseCopy message];
    v19 = remoteRemovabilityManager;
    MOLogWrite();
    goto LABEL_18;
  }

LABEL_19:
  [(ACXCompanionSyncConnection *)self setRemoteRemovabilityFetchRunning:0, v19];
}

- (void)_onQueue_fetchAvailableSystemApps
{
  device = [(ACXCompanionSyncConnection *)self device];
  isReachable = [device isReachable];

  if (isReachable)
  {

    [(ACXCompanionSyncConnection *)self _onQueue_fetchAvailableSystemAppsWithRetryCount:0];
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    device2 = [(ACXCompanionSyncConnection *)self device];
    idsDeviceIdentifier = [device2 idsDeviceIdentifier];
    MOLogWrite();
  }
}

- (void)_onQueue_fetchAvailableSystemAppsWithRetryCount:(unint64_t)count
{
  if ([(ACXCompanionSyncConnection *)self availableSystemAppFetchRunning])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {

      MOLogWrite();
    }
  }

  else
  {
    [(ACXCompanionSyncConnection *)self setAvailableSystemAppFetchRunning:1];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      countCopy = count;
      MOLogWrite();
    }

    applicationManager = [(ACXCompanionSyncConnection *)self applicationManager];
    bundleIDsOfLocallyAvailableSystemApps = [applicationManager bundleIDsOfLocallyAvailableSystemApps];

    v13[0] = @"T";
    v13[1] = @"BL";
    v14[0] = &off_100097680;
    allObjects = [bundleIDsOfLocallyAvailableSystemApps allObjects];
    v14[1] = allObjects;
    v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

    messager = [(ACXCompanionSyncConnection *)self messager];
    device = [(ACXCompanionSyncConnection *)self device];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000220A8;
    v12[3] = &unk_10008D6E8;
    v12[4] = self;
    v12[5] = count;
    [messager sendMessage:v8 toDevice:device withPriority:200 timeout:@"system app fetch" logDescription:v12 handleReply:120.0];
  }
}

- (void)_onQueue_handleSADAppInfoResponse:(id)response
{
  responseCopy = response;
  message = [responseCopy message];
  v6 = [message objectForKeyedSubscript:@"IL"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  message2 = [responseCopy message];
  v10 = [message2 objectForKeyedSubscript:@"BL"];
  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v8 || (v13 = objc_opt_class(), (sub_100005D2C(v8, v13) & 1) == 0))
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_33;
    }

LABEL_32:
    message3 = [responseCopy message];
    MOLogWrite();

    goto LABEL_33;
  }

  if (!v12 || (v14 = objc_opt_class(), (sub_100005D2C(v12, v14) & 1) == 0))
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  selfCopy = self;
  v15 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v33 = v8;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        v22 = [[ACXRemoteApplication alloc] initWithSerializedDictionary:v21];
        if (v22)
        {
          [v15 addObject:v22];
        }

        else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          message3 = v21;
          MOLogWrite();
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v18);
  }

  self = selfCopy;
  device = [(ACXCompanionSyncConnection *)selfCopy device];
  osBuildVersion = [device osBuildVersion];

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v25 = [v15 count];
    device2 = [(ACXCompanionSyncConnection *)selfCopy device];
    pairingID = [device2 pairingID];
    v32 = osBuildVersion;
    message3 = v25;
    MOLogWrite();
  }

  v27 = [(ACXCompanionSyncConnection *)selfCopy availableSystemAppList:message3];
  [v27 setAvailableSystemApps:v15 bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability:v12 forRemoteOSBuildVersion:osBuildVersion];

  v8 = v33;
LABEL_33:
  [(ACXCompanionSyncConnection *)self setAvailableSystemAppFetchRunning:0, message3];
  gizmoState = [(ACXCompanionSyncConnection *)self gizmoState];
  needsReunionSync = [gizmoState needsReunionSync];

  if (needsReunionSync)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [(ACXCompanionSyncConnection *)self _onQueue_beginReunionSync];
  }
}

- (void)_onQueue_processReunionSyncMessage:(id)message
{
  messageCopy = message;
  applicationManager = [(ACXCompanionSyncConnection *)self applicationManager];
  [(ACXCompanionSyncConnection *)self _onQueue_processReunionSyncMessage:messageCopy withAppManager:applicationManager];
}

- (void)_onQueue_processReunionSyncMessage:(id)message withAppManager:(id)manager
{
  messageCopy = message;
  managerCopy = manager;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  device = [(ACXCompanionSyncConnection *)self device];
  osVersion = [device osVersion];

  device2 = [(ACXCompanionSyncConnection *)self device];
  supportsStandaloneApps = [device2 supportsStandaloneApps];

  device3 = [(ACXCompanionSyncConnection *)self device];
  supportsRemoteAppList = [device3 supportsRemoteAppList];

  device4 = [(ACXCompanionSyncConnection *)self device];
  deletableSystemAppStateIsMirrored = [device4 deletableSystemAppStateIsMirrored];

  gizmoState = [(ACXCompanionSyncConnection *)self gizmoState];
  alwaysInstallApps = [gizmoState alwaysInstallApps];

  message = [messageCopy message];
  if ([(ACXCompanionSyncConnection *)self needsAvailableSystemAppFetch])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    gizmoState2 = [(ACXCompanionSyncConnection *)self gizmoState];
    [gizmoState2 setNeedsReunionSync:1];

    [(ACXCompanionSyncConnection *)self setReunionSyncRunning:0];
    [(ACXCompanionSyncConnection *)self _onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded];
    goto LABEL_270;
  }

  v183 = deletableSystemAppStateIsMirrored;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v20 = [message objectForKeyedSubscript:@"T"];
  if ([v20 unsignedCharValue] != 2)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      unsignedCharValue = [v20 unsignedCharValue];
      MOLogWrite();
    }

    [(ACXCompanionSyncConnection *)self setReunionSyncRunning:0, unsignedCharValue];
    goto LABEL_269;
  }

  v175 = alwaysInstallApps;
  selfCopy = self;
  v21 = [message objectForKeyedSubscript:@"IA"];
  objc_opt_class();
  v22 = v21;
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (!v23)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_27;
    }

LABEL_26:
    MOLogWrite();
LABEL_27:
    [(ACXCompanionSyncConnection *)selfCopy setReunionSyncRunning:0];
    goto LABEL_268;
  }

  v24 = objc_opt_class();
  if ((sub_100005D2C(v23, v24) & 1) == 0)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v172 = v23;
  v25 = [message objectForKeyedSubscript:@"IP"];
  objc_opt_class();
  v26 = v25;
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v173 = v27;
  if (v27 && [v27 count])
  {
    v28 = objc_opt_class();
    if ((sub_100005D2C(v27, v28) & 1) == 0)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      [(ACXCompanionSyncConnection *)selfCopy setReunionSyncRunning:0];
      goto LABEL_267;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      unsignedCharValue = v27;
      MOLogWrite();
    }
  }

  v29 = [message objectForKeyedSubscript:{@"DBU", unsignedCharValue}];
  objc_opt_class();
  v30 = v29;
  v165 = v20;
  if (objc_opt_isKindOfClass())
  {
    v164 = v30;
  }

  else
  {
    v164 = 0;
  }

  v31 = [message objectForKeyedSubscript:@"DBS"];
  objc_opt_class();
  v32 = v31;
  if (objc_opt_isKindOfClass())
  {
    v170 = v32;
  }

  else
  {
    v170 = 0;
  }

  device5 = [(ACXCompanionSyncConnection *)selfCopy device];
  supportsTrackingAppRemovability = [device5 supportsTrackingAppRemovability];

  if (supportsTrackingAppRemovability)
  {
    v35 = [message objectForKeyedSubscript:@"RU"];
    objc_opt_class();
    v36 = v35;
    if (objc_opt_isKindOfClass())
    {
      v171 = v36;
    }

    else
    {
      v171 = 0;
    }

    v37 = [message objectForKeyedSubscript:@"RS"];
    objc_opt_class();
    v38 = v37;
    if (objc_opt_isKindOfClass())
    {
      v169 = v38;
    }

    else
    {
      v169 = 0;
    }
  }

  else
  {
    v169 = 0;
    v171 = 0;
  }

  v39 = [message objectForKeyedSubscript:@"BL"];
  objc_opt_class();
  v40 = v39;
  if (objc_opt_isKindOfClass())
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (v41)
  {
    v42 = objc_opt_class();
    if (sub_100005D2C(v41, v42))
    {
      availableSystemAppList = [(ACXCompanionSyncConnection *)selfCopy availableSystemAppList];
      [availableSystemAppList setInstallableSystemAppBundleIDsExcludingCompanionState:v41];
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  allAvailableApps = [managerCopy allAvailableApps];
  allAvailablePlaceholders = [managerCopy allAvailablePlaceholders];
  if (supportsRemoteAppList)
  {
    availableSystemAppList2 = [(ACXCompanionSyncConnection *)selfCopy availableSystemAppList];
    installableSystemAppToCompanionAppIdentifierMap = [availableSystemAppList2 installableSystemAppToCompanionAppIdentifierMap];

    v200 = installableSystemAppToCompanionAppIdentifierMap;
    if (installableSystemAppToCompanionAppIdentifierMap)
    {
      goto LABEL_66;
    }

    v46 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059E2C();
    }

    locallyAvailableSystemAppBundleIDToCompanionBundleIDMapping = [managerCopy locallyAvailableSystemAppBundleIDToCompanionBundleIDMapping];
  }

  else
  {
    locallyAvailableSystemAppBundleIDToCompanionBundleIDMapping = [managerCopy locallyAvailableSystemAppBundleIDToCompanionBundleIDMappingForPreWatchOSSix];
  }

  v200 = locallyAvailableSystemAppBundleIDToCompanionBundleIDMapping;
LABEL_66:
  v163 = v41;
  v166 = message;
  v167 = managerCopy;
  v185 = osVersion;
  v168 = messageCopy;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v159 = v200;
    MOLogWrite();
  }

  v48 = objc_opt_new();
  v174 = objc_opt_new();
  v186 = objc_opt_new();
  v190 = objc_opt_new();
  v161 = objc_opt_new();
  v162 = objc_opt_new();
  v188 = objc_opt_new();
  v244 = 0u;
  v245 = 0u;
  v246 = 0u;
  v247 = 0u;
  obj = v172;
  v49 = [obj countByEnumeratingWithState:&v244 objects:v250 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v245;
    do
    {
      v52 = 0;
      do
      {
        if (*v245 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v53 = *(*(&v244 + 1) + 8 * v52);
        v54 = [v53 objectForKeyedSubscript:{@"B", v159}];
        objc_opt_class();
        v55 = v54;
        if (objc_opt_isKindOfClass())
        {
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        v57 = [v53 objectForKeyedSubscript:@"C"];
        objc_opt_class();
        v58 = v57;
        if (objc_opt_isKindOfClass())
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        if (v56)
        {
          if (v59)
          {
            [v48 addObject:v56];
            if (![allAvailablePlaceholders containsObject:v59])
            {
              v60 = [v200 objectForKeyedSubscript:v56];

              v61 = [allAvailableApps objectForKeyedSubscript:v56];
              v62 = v61;
              if (v61)
              {
                if (![v61 isSystemApp] || v60)
                {
                  if (!v60)
                  {
                    if ([v62 isTrusted])
                    {
                      if ([v62 isEligibleForWatchAppInstall])
                      {
                        v63 = [v53 objectForKeyedSubscript:@"RI"];
                        if (v63)
                        {
                          applicationMode = [v62 applicationMode];
                          if ((applicationMode == 2) != sub_100005E38(v63, 0))
                          {
                            v65 = v63;
                            if (applicationMode == 2)
                            {
                              if (!qword_1000A4878 || *(qword_1000A4878 + 44) > 4)
                              {
                                goto LABEL_152;
                              }
                            }

                            else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
LABEL_152:
                              v159 = v56;
                              MOLogWrite();
                            }

LABEL_153:
                            [v174 addObject:{v56, v159}];
LABEL_158:

LABEL_117:
                            goto LABEL_118;
                          }
                        }

                        v177 = v63;
                        isProfileValidated = [v62 isProfileValidated];
                        v73 = [v53 objectForKeyedSubscript:@"P"];
                        v74 = sub_100005E38(v73, 0);

                        if (isProfileValidated != v74)
                        {
                          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                          {
                            v160 = sub_100006DA8(isProfileValidated);
                            sub_100006DA8(v74);
                            v159 = v56;
                            goto LABEL_136;
                          }

LABEL_137:
                          [v174 addObject:{v56, v159}];
LABEL_138:
                          v65 = v177;
                          goto LABEL_158;
                        }

                        if (!supportsStandaloneApps || [v62 applicationMode] == 1 || (objc_msgSend(v62, "isProfileValidated") & 1) != 0)
                        {
                          if (([v62 isCompatibleWithOSVersion:v185] & 1) == 0)
                          {
                            v65 = v177;
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v159 = v185;
                              v160 = v56;
                              MOLogWrite();
                            }

                            companionAppBundleID = [v62 companionAppBundleID];
                            v81 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:companionAppBundleID];
                            [v188 setObject:v81 forKeyedSubscript:v56];

                            goto LABEL_158;
                          }

                          device6 = [(ACXCompanionSyncConnection *)selfCopy device];
                          v76 = [v62 isCompatibleWithDevice:device6];

                          if ((v76 & 1) == 0)
                          {
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v159 = v56;
                              MOLogWrite();
                            }

                            companionAppBundleID2 = [v62 companionAppBundleID];
                            v83 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:companionAppBundleID2];
                            [v188 setObject:v83 forKeyedSubscript:v56];

                            goto LABEL_138;
                          }

                          v77 = [v53 objectForKeyedSubscript:@"BE"];

                          if (v77)
                          {
                            isBetaApp = [v62 isBetaApp];
                            v78 = [v53 objectForKeyedSubscript:@"BE"];
                            v79 = sub_100005E38(v78, 0);

                            if (v79 && (isBetaApp & 1) == 0)
                            {
                              if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                              {
                                goto LABEL_137;
                              }

                              v159 = v56;
                              goto LABEL_136;
                            }

                            if (!(v79 & 1 | ((isBetaApp & 1) == 0)))
                            {
                              if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                              {
                                goto LABEL_137;
                              }

                              v159 = v56;
LABEL_136:
                              MOLogWrite();
                              goto LABEL_137;
                            }
                          }

                          bundleVersion = [v62 bundleVersion];
                          v84 = [v53 objectForKeyedSubscript:@"W"];
                          v85 = objc_opt_class();
                          v86 = sub_100020BDC(v84, v85);

                          if ([(ACXCompanionSyncConnection *)selfCopy _value:bundleVersion isDifferentFrom:v86])
                          {
                            v87 = v86;
                            v65 = v177;
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v160 = bundleVersion;
                              v159 = v56;
                              MOLogWrite();
                            }

                            goto LABEL_182;
                          }

                          bundleVersion = [v62 bundleShortVersion];
                          v88 = [v53 objectForKeyedSubscript:@"V"];
                          v89 = objc_opt_class();
                          v90 = sub_100020BDC(v88, v89);

                          if ([(ACXCompanionSyncConnection *)selfCopy _value:bundleVersion isDifferentFrom:v90])
                          {
                            v87 = v90;
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v160 = bundleVersion;
                              v159 = v56;
                              MOLogWrite();
                            }

LABEL_181:
                            v65 = v177;
LABEL_182:

                            goto LABEL_153;
                          }

                          bundleVersion = [v62 watchKitVersion];
                          v91 = [v53 objectForKeyedSubscript:@"K"];
                          v92 = objc_opt_class();
                          v93 = sub_100020BDC(v91, v92);

                          if ([(ACXCompanionSyncConnection *)selfCopy _value:bundleVersion isDifferentFrom:v93])
                          {
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v160 = bundleVersion;
                              v159 = v56;
                              MOLogWrite();
                            }

                            v87 = v93;
                            goto LABEL_181;
                          }

                          bundleVersion = [v62 watchKitAppExecutableHash];
                          v94 = [v53 objectForKeyedSubscript:@"EH"];
                          v95 = objc_opt_class();
                          v96 = sub_100020BDC(v94, v95);

                          v87 = v96;
                          if (bundleVersion && v96 && ([bundleVersion isEqualToString:v96] & 1) == 0)
                          {
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v159 = v56;
                              MOLogWrite();
                            }

                            goto LABEL_181;
                          }

                          bundleVersion = [v62 companionAppBundleID];
                          v97 = [v53 objectForKeyedSubscript:@"C"];
                          v98 = objc_opt_class();
                          v99 = sub_100020BDC(v97, v98);

                          if ([(ACXCompanionSyncConnection *)selfCopy _value:bundleVersion isDifferentFrom:v99])
                          {
                            v87 = v99;
                            v65 = v177;
                            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                            {
                              v160 = bundleVersion;
                              v159 = v56;
                              MOLogWrite();
                            }

                            goto LABEL_182;
                          }
                        }

                        [v190 addObject:v56];
                        goto LABEL_138;
                      }

                      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                      {
                        v159 = v56;
LABEL_130:
                        MOLogWrite();
                      }
                    }

                    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                    {
                      v159 = v56;
                      goto LABEL_130;
                    }

                    companionAppBundleID3 = [v62 companionAppBundleID];
                    v72 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:companionAppBundleID3];
                    [v188 setObject:v72 forKeyedSubscript:v56];

                    goto LABEL_117;
                  }

                  goto LABEL_116;
                }
              }

              else if (v60)
              {
                goto LABEL_116;
              }

              v66 = [v53 objectForKeyedSubscript:@"RI"];
              v67 = sub_100005E38(v66, 0);

              v68 = [v53 objectForKeyedSubscript:@"LD"];
              v69 = sub_100005E38(v68, 0);

              if ((supportsStandaloneApps & v67) == 1)
              {
                if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                {
                  goto LABEL_116;
                }

                v159 = v56;
              }

              else
              {
                if (!v69)
                {
                  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                  {
                    v159 = v56;
                    MOLogWrite();
                  }

                  v159 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:v59, v159];
                  [v188 setObject:v159 forKeyedSubscript:v56];

                  goto LABEL_117;
                }

                if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
                {
                  goto LABEL_116;
                }

                v159 = v56;
              }

              MOLogWrite();
LABEL_116:
              [v190 addObject:{v56, v159}];
              goto LABEL_117;
            }

            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v159 = v56;
              v160 = v59;
              MOLogWrite();
            }

            [v190 addObject:{v56, v159, v160}];
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            v159 = v53;
            goto LABEL_93;
          }
        }

        else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v159 = v53;
LABEL_93:
          MOLogWrite();
        }

LABEL_118:

        v52 = v52 + 1;
      }

      while (v50 != v52);
      v100 = [obj countByEnumeratingWithState:&v244 objects:v250 count:16];
      v50 = v100;
    }

    while (v100);
  }

  if (!v173)
  {
    goto LABEL_238;
  }

  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  v101 = v173;
  v102 = [v101 countByEnumeratingWithState:&v240 objects:v249 count:16];
  if (!v102)
  {
    goto LABEL_237;
  }

  v103 = v102;
  v104 = *v241;
  do
  {
    v105 = 0;
    do
    {
      if (*v241 != v104)
      {
        objc_enumerationMutation(v101);
      }

      v106 = *(*(&v240 + 1) + 8 * v105);
      [v48 addObject:{v106, v159}];
      v107 = [allAvailableApps objectForKeyedSubscript:v106];
      v108 = [v200 objectForKeyedSubscript:v106];

      if (((v108 != 0) & supportsStandaloneApps) == 1)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v159 = v106;
          MOLogWrite();
        }
      }

      else
      {
        if (!v107)
        {
          if (v108)
          {
LABEL_219:
            [v186 addObject:v106];
            goto LABEL_225;
          }

LABEL_220:
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v159 = v106;
            MOLogWrite();
          }

          v1592 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:0, v159];
          [v188 setObject:v1592 forKeyedSubscript:v106];
          goto LABEL_224;
        }

        isSystemApp = [v107 isSystemApp];
        if (isSystemApp)
        {
          v110 = v108 == 0;
        }

        else
        {
          v110 = 0;
        }

        if (v110)
        {
          goto LABEL_220;
        }

        if (isSystemApp)
        {
          goto LABEL_219;
        }

        if ([v107 isTrusted])
        {
          if ([v107 isCompatibleWithOSVersion:v185])
          {
            if ([v107 isEligibleForWatchAppInstall])
            {
              goto LABEL_219;
            }

            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v159 = v106;
              goto LABEL_234;
            }
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v159 = v106;
LABEL_234:
            MOLogWrite();
          }

          v1592 = [v107 companionAppBundleID];
          v114 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:v1592];
          [v188 setObject:v114 forKeyedSubscript:v106];

LABEL_224:
          goto LABEL_225;
        }

        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v159 = v106;
          MOLogWrite();
        }

        companionAppBundleID4 = [v107 companionAppBundleID];
        v113 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:companionAppBundleID4];
        [v188 setObject:v113 forKeyedSubscript:v106];
      }

LABEL_225:

      v105 = v105 + 1;
    }

    while (v103 != v105);
    v115 = [v101 countByEnumeratingWithState:&v240 objects:v249 count:16];
    v103 = v115;
  }

  while (v115);
LABEL_237:

LABEL_238:
  v234[0] = _NSConcreteStackBlock;
  v234[1] = 3221225472;
  v234[2] = sub_1000245A0;
  v234[3] = &unk_10008D710;
  v116 = v48;
  v235 = v116;
  v236 = v185;
  v237 = selfCopy;
  v117 = v161;
  v238 = v117;
  v118 = v188;
  v239 = v118;
  [allAvailableApps enumerateKeysAndObjectsUsingBlock:v234];
  v229[0] = _NSConcreteStackBlock;
  v229[1] = 3221225472;
  v229[2] = sub_100024710;
  v229[3] = &unk_10008D738;
  v119 = v116;
  v230 = v119;
  v233 = v183;
  v120 = v162;
  v231 = v120;
  v121 = v117;
  v232 = v121;
  [v200 enumerateKeysAndObjectsUsingBlock:v229];
  v217[0] = _NSConcreteStackBlock;
  v217[1] = 3221225472;
  v217[2] = sub_100024784;
  v217[3] = &unk_10008D760;
  v197 = allAvailablePlaceholders;
  v218 = v197;
  v228 = v183;
  v122 = v120;
  v219 = v122;
  v123 = v118;
  v220 = v123;
  v193 = v119;
  v221 = v193;
  v124 = v200;
  v222 = v124;
  v125 = allAvailableApps;
  v223 = v125;
  v126 = v186;
  v224 = v126;
  v127 = v174;
  v225 = v127;
  v128 = v190;
  v226 = v128;
  v129 = v121;
  v227 = v129;
  v130 = objc_retainBlock(v217);
  gizmoState3 = [(ACXCompanionSyncConnection *)selfCopy gizmoState];
  v206[0] = _NSConcreteStackBlock;
  v206[1] = 3221225472;
  v206[2] = sub_100024B4C;
  v206[3] = &unk_10008D788;
  v215 = v183;
  v191 = v122;
  v207 = v191;
  v199 = v124;
  v208 = v199;
  v184 = v123;
  v209 = v184;
  v189 = v126;
  v210 = v189;
  v201 = v125;
  v211 = v201;
  v187 = v127;
  v212 = v187;
  v182 = v129;
  v213 = v182;
  v216 = v175;
  v176 = v130;
  v178 = v128;
  v214 = v178;
  [gizmoState3 iterateInstallStatusAndClearNeedsReunionSyncWithIterator:v130 completion:v206];

  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v132 = obj;
  v133 = [v132 countByEnumeratingWithState:&v202 objects:v248 count:16];
  if (v133)
  {
    v134 = v133;
    v135 = *v203;
    do
    {
      for (i = 0; i != v134; i = i + 1)
      {
        if (*v203 != v135)
        {
          objc_enumerationMutation(v132);
        }

        v137 = *(*(&v202 + 1) + 8 * i);
        v138 = [v137 objectForKeyedSubscript:{@"B", v159}];
        objc_opt_class();
        v139 = v138;
        if (objc_opt_isKindOfClass())
        {
          v140 = v139;
        }

        else
        {
          v140 = 0;
        }

        v141 = [v137 objectForKeyedSubscript:@"EH"];
        objc_opt_class();
        v142 = v141;
        if (objc_opt_isKindOfClass())
        {
          v143 = v142;
        }

        else
        {
          v143 = 0;
        }

        v144 = [v201 objectForKeyedSubscript:v140];
        if (([v144 isSystemApp] & 1) == 0 && v143)
        {
          gizmoState4 = [(ACXCompanionSyncConnection *)selfCopy gizmoState];
          [gizmoState4 setWatchKitAppExecutableHash:v143 forApp:v140];
        }
      }

      v134 = [v132 countByEnumeratingWithState:&v202 objects:v248 count:16];
    }

    while (v134);
  }

  v146 = selfCopy;
  remoteAppList = [(ACXCompanionSyncConnection *)selfCopy remoteAppList];
  v148 = remoteAppList;
  if (!remoteAppList)
  {
    managerCopy = v167;
    messageCopy = v168;
    osVersion = v185;
    v20 = v165;
    message = v166;
    v149 = v164;
LABEL_259:
    v150 = v170;
    goto LABEL_260;
  }

  managerCopy = v167;
  messageCopy = v168;
  osVersion = v185;
  v20 = v165;
  message = v166;
  v149 = v164;
  v150 = v170;
  if (!v164)
  {
LABEL_260:

    goto LABEL_261;
  }

  if (v170)
  {
    v148 = [[NSUUID alloc] initWithUUIDString:v164];
    unsignedIntegerValue = [v170 unsignedIntegerValue];
    remoteAppList2 = [(ACXCompanionSyncConnection *)selfCopy remoteAppList];
    v153 = unsignedIntegerValue;
    v146 = selfCopy;
    [remoteAppList2 reportCurrentDBUUID:v148 lastSequenceNumber:v153];

    v20 = v165;
    goto LABEL_259;
  }

LABEL_261:
  remoteRemovabilityManager = [(ACXCompanionSyncConnection *)v146 remoteRemovabilityManager];
  remoteRemovabilityManager2 = remoteRemovabilityManager;
  if (remoteRemovabilityManager && v171)
  {

    v156 = v169;
    if (v169)
    {
      remoteRemovabilityManager2 = [(ACXCompanionSyncConnection *)v146 remoteRemovabilityManager];
      v157 = [[NSUUID alloc] initWithUUIDString:v171];
      [remoteRemovabilityManager2 reportRemoteRemovabilityDBUUID:v157 sequenceNumber:{objc_msgSend(v169, "unsignedIntegerValue")}];

      v146 = selfCopy;
      goto LABEL_265;
    }
  }

  else
  {
LABEL_265:

    v156 = v169;
  }

  [(ACXCompanionSyncConnection *)v146 setReunionSyncRunning:0];
  [(ACXCompanionSyncConnection *)v146 _onQueue_processPendingGizmoState];

LABEL_267:
  v23 = v172;

LABEL_268:
LABEL_269:

LABEL_270:
}

- (void)_onQueue_beginReunionSync
{
  device = [(ACXCompanionSyncConnection *)self device];
  syncingIsRestricted = [device syncingIsRestricted];

  if (syncingIsRestricted)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {

      MOLogWrite();
    }
  }

  else
  {
    device2 = [(ACXCompanionSyncConnection *)self device];
    isReachable = [device2 isReachable];

    if (isReachable)
    {
      if ([(ACXCompanionSyncConnection *)self needsAvailableSystemAppFetch])
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          MOLogWrite();
        }

        gizmoState = [(ACXCompanionSyncConnection *)self gizmoState];
        [gizmoState setNeedsReunionSync:1];

        [(ACXCompanionSyncConnection *)self _onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded];
      }

      else
      {

        [(ACXCompanionSyncConnection *)self _onQueue_beginReunionSyncWithRetryCount:0];
      }
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      device3 = [(ACXCompanionSyncConnection *)self device];
      idsDeviceIdentifier = [device3 idsDeviceIdentifier];
      MOLogWrite();
    }
  }
}

- (void)_onQueue_beginReunionSyncWithRetryCount:(unint64_t)count
{
  if ([(ACXCompanionSyncConnection *)self reunionSyncRunning])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {

      MOLogWrite();
    }
  }

  else
  {
    [(ACXCompanionSyncConnection *)self setReunionSyncRunning:1];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      countCopy = count;
      MOLogWrite();
    }

    v24 = 0;
    v5 = +[ACXLaunchServicesWatcher sharedWatcher];
    v23 = 0;
    [v5 fetchDatabaseUUID:&v23 andCurrentLastSequenceNumber:&v24];
    v6 = v23;

    v26[0] = &off_100097698;
    v25[0] = @"T";
    v25[1] = @"DBU";
    uUIDString = [v6 UUIDString];
    v26[1] = uUIDString;
    v25[2] = @"DBS";
    v8 = [NSNumber numberWithUnsignedInteger:v24];
    v26[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];

    device = [(ACXCompanionSyncConnection *)self device];
    LODWORD(v8) = [device supportsTrackingAppRemovability];

    if (v8)
    {
      v22 = 0;
      v11 = +[ACXLocalAppRemovabilityManager sharedInstance];
      v21 = 0;
      [v11 fetchCurrentRemovabilityStoreUUID:&v21 sequenceNumber:&v22];
      v12 = v21;

      if (v12 && v22)
      {
        v13 = [v9 mutableCopy];
        uUIDString2 = [v12 UUIDString];
        [v13 setObject:uUIDString2 forKeyedSubscript:@"RU"];

        v15 = [NSNumber numberWithUnsignedInteger:v22];
        [v13 setObject:v15 forKeyedSubscript:@"RS"];

        v16 = [v13 copy];
        v9 = v16;
      }

      else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    messager = [(ACXCompanionSyncConnection *)self messager];
    device2 = [(ACXCompanionSyncConnection *)self device];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100025758;
    v20[3] = &unk_10008D6E8;
    v20[4] = self;
    v20[5] = count;
    [messager sendMessage:v9 toDevice:device2 withPriority:200 timeout:@"reunion sync" logDescription:v20 handleReply:120.0];
  }
}

- (void)_onQueue_sendInstallOnGizmoMessageForSystemAppBundleIDs:(id)ds appsWithStoreMetadata:(id)metadata isUserInitiated:(BOOL)initiated exclusiveInstall:(BOOL)install withCompletion:(id)completion
{
  installCopy = install;
  initiatedCopy = initiated;
  dsCopy = ds;
  metadataCopy = metadata;
  completionCopy = completion;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100025CB4;
  v30[3] = &unk_10008D7B0;
  v15 = objc_opt_new();
  v31 = v15;
  [metadataCopy enumerateKeysAndObjectsUsingBlock:v30];
  v32[0] = @"T";
  v32[1] = @"BL";
  v33[0] = &off_1000976B0;
  v33[1] = dsCopy;
  v33[2] = v15;
  v32[2] = @"SD";
  v32[3] = @"DL";
  v16 = [NSNumber numberWithBool:installCopy];
  v33[3] = v16;
  v32[4] = @"UI";
  v17 = [NSNumber numberWithBool:initiatedCopy];
  v33[4] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:5];

  if (completionCopy)
  {
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100025D28;
    v28 = &unk_10008D7D8;
    v29 = completionCopy;
    v19 = objc_retainBlock(&v25);
  }

  else
  {
    v19 = 0;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    [metadataCopy allKeys];
    v24 = v23 = dsCopy;
    MOLogWrite();
  }

  if (initiatedCopy)
  {
    v20 = 300;
  }

  else
  {
    v20 = 200;
  }

  v21 = [(ACXCompanionSyncConnection *)self messager:v23];
  device = [(ACXCompanionSyncConnection *)self device];
  [v21 sendMessage:v18 toDevice:device withPriority:v20 timeout:@"installation on gizmo list" logDescription:v19 handleReply:120.0];
}

- (void)_onQueue_sendRemoveMessageForBundleIDs:(id)ds isUserInitiated:(BOOL)initiated withCompletion:(id)completion
{
  initiatedCopy = initiated;
  dsCopy = ds;
  completionCopy = completion;
  v18[0] = @"T";
  v18[1] = @"BL";
  v19[0] = &off_1000976C8;
  v19[1] = dsCopy;
  v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  if (completionCopy)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000260B4;
    v16[3] = &unk_10008D7D8;
    v17 = completionCopy;
    v11 = objc_retainBlock(v16);
  }

  else
  {
    v11 = 0;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v15 = dsCopy;
    MOLogWrite();
  }

  if (initiatedCopy)
  {
    v12 = 300;
  }

  else
  {
    v12 = 200;
  }

  messager = [(ACXCompanionSyncConnection *)self messager];
  device = [(ACXCompanionSyncConnection *)self device];
  [messager sendMessage:v10 toDevice:device withPriority:v12 timeout:@"deletion list" logDescription:v11 handleReply:120.0];
}

- (void)_onQueue_triggerLocalAppStoreInstallForWatchApp:(id)app userInitiated:(BOOL)initiated completion:(id)completion
{
  initiatedCopy = initiated;
  appCopy = app;
  completionCopy = completion;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  bundleIdentifier = [appCopy bundleIdentifier];
  companionAppBundleID = [appCopy companionAppBundleID];
  applicationName = [appCopy applicationName];
  installQueue = [(ACXCompanionSyncConnection *)self installQueue];
  v15 = [installQueue installIsPendingForWatchApp:bundleIdentifier];

  if (v15)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v17 = bundleIdentifier;
      MOLogWrite();
    }

    appStoreLocalQueue = [(ACXCompanionSyncConnection *)self appStoreLocalQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100026860;
    v18[3] = &unk_10008D670;
    v18[4] = self;
    v19 = bundleIdentifier;
    v20 = companionAppBundleID;
    v21 = applicationName;
    v23 = initiatedCopy;
    v22 = completionCopy;
    [appStoreLocalQueue installWatchApp:appCopy userInitiated:initiatedCopy completion:v18];
  }
}

- (BOOL)_onQueue_appNeedsInstall:(id)install
{
  installCopy = install;
  bundleIdentifier = [installCopy bundleIdentifier];
  remoteAppList = [(ACXCompanionSyncConnection *)self remoteAppList];
  v13 = 0;
  v7 = [remoteAppList applicationForBundleID:bundleIdentifier error:&v13];
  v8 = v13;

  if (!v7)
  {
    domain = [v8 domain];
    if ([domain isEqualToString:@"ACXErrorDomain"])
    {
      code = [v8 code];

      if (code == 19)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    goto LABEL_14;
  }

  if (![v7 isTheSameAppAs:installCopy])
  {
LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (void)_onQueue_processPendingGizmoState
{
  device = [(ACXCompanionSyncConnection *)self device];
  if ([device syncingIsRestricted])
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      goto LABEL_163;
    }

    goto LABEL_4;
  }

  if (([device isReachable] & 1) == 0)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      idsDeviceIdentifier = [device idsDeviceIdentifier];
      MOLogWrite();
    }

    goto LABEL_163;
  }

  if ([(ACXCompanionSyncConnection *)self reunionSyncRunning])
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      goto LABEL_163;
    }

LABEL_4:
    MOLogWrite();
    goto LABEL_163;
  }

  gizmoState = [(ACXCompanionSyncConnection *)self gizmoState];
  needsReunionSync = [gizmoState needsReunionSync];

  if (needsReunionSync)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [(ACXCompanionSyncConnection *)self _onQueue_beginReunionSync];
    goto LABEL_163;
  }

  if ([(ACXCompanionSyncConnection *)self needsAvailableSystemAppFetch])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [(ACXCompanionSyncConnection *)self _onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded];
    goto LABEL_163;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v6 = qos_class_self();
  v7 = dispatch_get_global_queue(v6, 0);
  sub_100005828(v7, &stru_10008D7F8);

  nrDevice = [device nrDevice];
  v80 = sub_10004FF78(nrDevice);

  v9 = objc_opt_new();
  v88 = objc_opt_new();
  supportsStandaloneApps = [device supportsStandaloneApps];
  LODWORD(nrDevice) = [device supportsRemoteAppList];
  applicationManager = [(ACXCompanionSyncConnection *)self applicationManager];
  v84 = applicationManager;
  v83 = nrDevice;
  if (!nrDevice)
  {
    bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix = [applicationManager bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix];
LABEL_32:
    v90 = bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix;
    goto LABEL_33;
  }

  availableSystemAppList = [(ACXCompanionSyncConnection *)self availableSystemAppList];
  bundleIDsOfInstallableSystemApps = [availableSystemAppList bundleIDsOfInstallableSystemApps];

  v90 = bundleIDsOfInstallableSystemApps;
  if (!bundleIDsOfInstallableSystemApps)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059E74();
    }

    bundleIDsOfLocallyAvailableSystemAppsForPreWatchOSSix = [v84 bundleIDsOfLocallyAvailableSystemApps];
    goto LABEL_32;
  }

LABEL_33:
  v77 = device;
  gizmoState2 = [(ACXCompanionSyncConnection *)self gizmoState];
  pendingApps = [gizmoState2 pendingApps];

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v16 = pendingApps;
  v17 = [v16 countByEnumeratingWithState:&v105 objects:v112 count:16];
  if (!v17)
  {
    goto LABEL_45;
  }

  v18 = v17;
  v19 = *v106;
  do
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v106 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v105 + 1) + 8 * i);
      v22 = [v16 objectForKeyedSubscript:v21];
      installStatus = [v22 installStatus];
      if (installStatus == 4)
      {
        v24 = v9;
        v25 = v21;
      }

      else
      {
        if (installStatus != 1)
        {
          goto LABEL_43;
        }

        v24 = v88;
        v25 = v22;
      }

      [v24 addObject:v25];
LABEL_43:
    }

    v18 = [v16 countByEnumeratingWithState:&v105 objects:v112 count:16];
  }

  while (v18);
LABEL_45:

  v79 = v9;
  if ([v9 count])
  {
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v26 = v9;
    v27 = [v26 countByEnumeratingWithState:&v101 objects:v111 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v102;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v102 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v101 + 1) + 8 * j);
          installQueue = [(ACXCompanionSyncConnection *)self installQueue];
          [installQueue cancelInstallForWatchAppBundleID:v31];

          appStoreLocalQueue = [(ACXCompanionSyncConnection *)self appStoreLocalQueue];
          [appStoreLocalQueue cancelInstallForWatchAppBundleID:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v101 objects:v111 count:16];
      }

      while (v28);
    }

    [(ACXCompanionSyncConnection *)self _onQueue_sendRemoveMessageForBundleIDs:v26 isUserInitiated:0 withCompletion:0];
    v9 = v79;
  }

  if (![v88 count])
  {
    goto LABEL_162;
  }

  v89 = +[NSMutableSet set];
  v70 = objc_opt_new();
  v71 = objc_opt_new();
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v88;
  v34 = [obj countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (!v34)
  {
    allAvailablePlaceholders = 0;
    goto LABEL_158;
  }

  v35 = v34;
  allAvailablePlaceholders = 0;
  v36 = *v98;
  v78 = kACXSourceAppWatchApplicationStore;
  v37 = v84;
  while (2)
  {
    v38 = 0;
    v86 = v35;
    while (2)
    {
      if (*v98 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v97 + 1) + 8 * v38);
      watchAppBundleID = [v39 watchAppBundleID];
      if ([v90 containsObject:watchAppBundleID])
      {
        [v89 addObject:watchAppBundleID];
        goto LABEL_154;
      }

      v41 = [v37 gizmoAppWithBundleID:watchAppBundleID];
      v42 = v41;
      if (!v41)
      {
        if (!allAvailablePlaceholders)
        {
          allAvailablePlaceholders = [v37 allAvailablePlaceholders];
        }

        companionAppBundleID = [v39 companionAppBundleID];
        if (companionAppBundleID)
        {
          if ([allAvailablePlaceholders containsObject:companionAppBundleID])
          {
            if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
            {
              goto LABEL_148;
            }

            v67 = companionAppBundleID;
            v69 = watchAppBundleID;
            goto LABEL_90;
          }
        }

        else if ([allAvailablePlaceholders count])
        {
          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
          {
            goto LABEL_148;
          }

          v67 = watchAppBundleID;
          v69 = [allAvailablePlaceholders count];
LABEL_90:
          MOLogWrite();
LABEL_148:

          v37 = v84;
          goto LABEL_153;
        }

        if (!v83)
        {
LABEL_144:
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            v67 = watchAppBundleID;
            MOLogWrite();
          }

          v109 = watchAppBundleID;
          v62 = [NSArray arrayWithObjects:&v109 count:1, v67];
          [(ACXCompanionSyncConnection *)self _onQueue_sendRemoveMessageForBundleIDs:v62 isUserInitiated:0 withCompletion:0];

          goto LABEL_148;
        }

        remoteAppList = [(ACXCompanionSyncConnection *)self remoteAppList];
        v96 = 0;
        v46 = [remoteAppList applicationForBundleID:watchAppBundleID error:&v96];
        v47 = v96;

        v82 = v47;
        if (v46)
        {
          if ([v46 applicationMode] == 2)
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v67 = watchAppBundleID;
              MOLogWrite();
            }

            gizmoState3 = [(ACXCompanionSyncConnection *)self gizmoState];
            companionAppBundleID2 = [v46 companionAppBundleID];
            [gizmoState3 setInstallStatus:2 forApp:watchAppBundleID companionBundleID:companionAppBundleID2];

            v9 = v79;
LABEL_98:

            goto LABEL_148;
          }

          applicationMode = [v46 applicationMode];
          v61 = qword_1000A4878;
          if (applicationMode == 3)
          {
            v9 = v79;
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v67 = watchAppBundleID;
              MOLogWrite();
            }

            [v70 addObject:{watchAppBundleID, v67}];
            goto LABEL_143;
          }

          v9 = v79;
          if (!qword_1000A4878)
          {
            goto LABEL_142;
          }
        }

        else
        {
          domain = [v47 domain];
          if ([domain isEqualToString:@"ACXErrorDomain"])
          {
            code = [v47 code];

            v55 = code == 43;
            v9 = v79;
            if (v55)
            {
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                v67 = watchAppBundleID;
                MOLogWrite();
              }

              goto LABEL_98;
            }
          }

          else
          {

            v9 = v79;
          }

          v61 = qword_1000A4878;
          if (!qword_1000A4878)
          {
            goto LABEL_142;
          }
        }

        if (*(v61 + 44) < 5)
        {
LABEL_143:

          goto LABEL_144;
        }

LABEL_142:
        v67 = watchAppBundleID;
        MOLogWrite();
        goto LABEL_143;
      }

      if ([v41 isSystemApp])
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v67 = watchAppBundleID;
          v69 = v90;
          MOLogWrite();
        }

        [v89 addObject:{watchAppBundleID, v67, v69}];
        goto LABEL_153;
      }

      if (![v42 isBetaApp])
      {
        if (v83 && ![(ACXCompanionSyncConnection *)self _onQueue_appNeedsInstall:v42])
        {
          gizmoState4 = [(ACXCompanionSyncConnection *)self gizmoState];
          companionAppBundleID3 = [v42 companionAppBundleID];
          [gizmoState4 setInstallStatus:2 forApp:watchAppBundleID companionBundleID:companionAppBundleID3];

          v37 = v84;
          goto LABEL_107;
        }

        companionAppBundleID4 = [v42 companionAppBundleID];
        sourceAppIdentifier = [v42 sourceAppIdentifier];
        if ([sourceAppIdentifier isEqualToString:v78])
        {
          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
          {
            goto LABEL_105;
          }

          v67 = watchAppBundleID;
          v69 = sourceAppIdentifier;
        }

        else
        {
          if ([v42 autoInstallOverride] != 2)
          {
            v51 = 0;
LABEL_115:
            if ([v42 isEmbeddedPlaceholder])
            {
              if (!supportsStandaloneApps)
              {
                if (v80)
                {
                  v37 = v84;
                  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
                  {
                    v67 = watchAppBundleID;
                    MOLogWrite();
                  }
                }

                else
                {
                  [(ACXCompanionSyncConnection *)self _onQueue_triggerLocalAppStoreInstallForWatchApp:v42 userInitiated:v51 completion:0];
                  v37 = v84;
                }

                goto LABEL_152;
              }

              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                v67 = watchAppBundleID;
                MOLogWrite();
              }

              storeMetadata = [v42 storeMetadata];
              if (storeMetadata)
              {
                [v71 setObject:storeMetadata forKeyedSubscript:watchAppBundleID];
              }

              else
              {
                v76 = sub_1000061DC("[ACXCompanionSyncConnection _onQueue_processPendingGizmoState]", 1999, @"ACXErrorDomain", 51, 0, 0, @"Failed to load metadata for app %@", v56, watchAppBundleID);
                companionAppBundleID5 = [v42 companionAppBundleID];
                applicationName = [v42 applicationName];
                [ACXCompanionSyncConnection _onQueue_installFailedForWatchAppBundleID:"_onQueue_installFailedForWatchAppBundleID:companionBundleID:withError:appName:userInitiated:userPresentableError:" companionBundleID:watchAppBundleID withError:companionAppBundleID5 appName:v76 userInitiated:? userPresentableError:?];

                v9 = v79;
              }
            }

            else
            {
              storeMetadata = [v42 applicationName];
              if (v80)
              {
                v37 = v84;
                if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
                {
                  v67 = watchAppBundleID;
                  MOLogWrite();
                  v9 = v79;
                }

                goto LABEL_151;
              }

              v75 = storeMetadata;
              installQueue2 = [(ACXCompanionSyncConnection *)self installQueue];
              gizmoState5 = [(ACXCompanionSyncConnection *)self gizmoState];
              v59 = [gizmoState5 preferencesForApplicationWithIdentifier:watchAppBundleID];
              v91[0] = _NSConcreteStackBlock;
              v91[1] = 3221225472;
              v91[2] = sub_10002794C;
              v91[3] = &unk_10008D820;
              v91[4] = self;
              v92 = watchAppBundleID;
              v93 = companionAppBundleID4;
              v94 = v75;
              v95 = v51;
              [installQueue2 installWatchApp:v42 withPriority:2 appSettings:v59 provisioningProfileInfo:0 isUserInitiated:v51 completion:v91];

              v9 = v79;
              storeMetadata = v75;
            }

            v37 = v84;
LABEL_151:

LABEL_152:
            goto LABEL_153;
          }

          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
          {
LABEL_105:
            v51 = 1;
            goto LABEL_115;
          }

          v67 = watchAppBundleID;
        }

        MOLogWrite();
        goto LABEL_105;
      }

      if (v80)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v67 = watchAppBundleID;
          MOLogWrite();
        }

        goto LABEL_153;
      }

      gizmoState4 = +[ACXTestFlightInstallQueue sharedInstaller];
      [gizmoState4 installWatchApp:v42 targetDevice:v77];
LABEL_107:

LABEL_153:
      v35 = v86;
LABEL_154:

      if (v35 != ++v38)
      {
        continue;
      }

      break;
    }

    v35 = [obj countByEnumeratingWithState:&v97 objects:v110 count:16];
    if (v35)
    {
      continue;
    }

    break;
  }

LABEL_158:

  gizmoState6 = [(ACXCompanionSyncConnection *)self gizmoState];
  [gizmoState6 purgeInstallStatusForApps:v70];

  if ([v89 count])
  {
    v65 = v71;
    if (!v80)
    {
      goto LABEL_160;
    }
  }

  else
  {
    v65 = v71;
    if ([v71 count] != 0 && !v80)
    {
LABEL_160:
      allObjects = [v89 allObjects];
      [(ACXCompanionSyncConnection *)self _onQueue_sendInstallOnGizmoMessageForSystemAppBundleIDs:allObjects appsWithStoreMetadata:v65 isUserInitiated:0 exclusiveInstall:0 withCompletion:0];
    }
  }

LABEL_162:
  device = v77;
LABEL_163:
}

- (void)_onQueue_handleAppInstallMessage:(id)message withAppManager:(id)manager
{
  messageCopy = message;
  selfCopy = self;
  managerCopy = manager;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  message = [messageCopy message];
  v9 = [message objectForKeyedSubscript:@"IA"];
  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 && (v12 = objc_opt_class(), (sub_100005D2C(v11, v12) & 1) != 0))
  {
    v37 = messageCopy;
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      v33 = message;
      MOLogWrite();
    }

    v36 = message;
    v38 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v35 = v11;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v42;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          v19 = [v18 objectForKeyedSubscript:{@"B", v33}];
          objc_opt_class();
          v20 = v19;
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            v22 = [v18 objectForKeyedSubscript:@"EH"];
            objc_opt_class();
            v23 = v22;
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v33 = v21;
              v34 = v24;
              MOLogWrite();
            }

            v25 = [managerCopy gizmoAppWithBundleID:{v21, v33, v34}];
            companionAppBundleID = [v25 companionAppBundleID];
            v27 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:2 companionBundleID:companionAppBundleID];

            [v27 setWatchAppExecutableHash:v24];
            [v38 setObject:v27 forKeyedSubscript:v21];
            installQueue = [(ACXCompanionSyncConnection *)selfCopy installQueue];
            [installQueue acknowledgeInstallationForWatchApp:v21];
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            v33 = v18;
            MOLogWrite();
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v15);
    }

    gizmoState = [(ACXCompanionSyncConnection *)selfCopy gizmoState];
    [gizmoState setInstallStatusForApps:v38 sendNotification:1 withUpdatePredicate:&stru_10008D840];

    remoteAppList = [(ACXCompanionSyncConnection *)selfCopy remoteAppList];

    message = v36;
    messageCopy = v37;
    v11 = v35;
    if (remoteAppList)
    {
      v31 = [v36 objectForKeyedSubscript:@"IL"];

      if (v31)
      {
        remoteAppList2 = [(ACXCompanionSyncConnection *)selfCopy remoteAppList];
        sub_10004B96C(v37, remoteAppList2);
      }

      else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)_onQueue_handleAppInstallMessage:(id)message
{
  messageCopy = message;
  applicationManager = [(ACXCompanionSyncConnection *)self applicationManager];
  [(ACXCompanionSyncConnection *)self _onQueue_handleAppInstallMessage:messageCopy withAppManager:applicationManager];
}

- (id)_onQueue_applicationForWatchAppWithBundleID:(id)d
{
  dCopy = d;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  applicationManager = [(ACXCompanionSyncConnection *)self applicationManager];
  v7 = [applicationManager gizmoAppWithBundleID:dCopy];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    applicationManager2 = [(ACXCompanionSyncConnection *)self applicationManager];
    v8 = [applicationManager2 availableSystemAppWithBundleID:dCopy error:0];
  }

  return v8;
}

- (id)_onQueue_availableCompanionAppBundleIDForWatchApp:(id)app
{
  appCopy = app;
  applicationManager = [(ACXCompanionSyncConnection *)self applicationManager];
  v6 = [applicationManager gizmoAppWithBundleID:appCopy];

  if (v6)
  {
    companionAppBundleID = [v6 companionAppBundleID];
  }

  else
  {
    applicationManager2 = [(ACXCompanionSyncConnection *)self applicationManager];
    companionAppBundleID = [applicationManager2 companionBundleIDForLocallyAvailableSystemApp:appCopy error:0];
  }

  return companionAppBundleID;
}

- (void)_onQueue_handleAppDeleteMessage:(id)message
{
  messageCopy = message;
  message = [messageCopy message];
  v29 = [message objectForKey:@"EO"];

  v6 = [message objectForKeyedSubscript:@"BL"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && (v9 = objc_opt_class(), (sub_100005D2C(v8, v9) & 1) != 0))
  {
    v26 = message;
    if (!v29)
    {
      remoteAppList = [(ACXCompanionSyncConnection *)self remoteAppList];

      if (remoteAppList)
      {
        remoteAppList2 = [(ACXCompanionSyncConnection *)self remoteAppList];
        sub_10004BD9C(messageCopy, remoteAppList2);
      }
    }

    v27 = messageCopy;
    v12 = objc_opt_new();
    v28 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = v8;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = [(ACXCompanionSyncConnection *)self _onQueue_availableCompanionAppBundleIDForWatchApp:v18];
          if (v19)
          {
            if (v29)
            {
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                v24 = v18;
                MOLogWrite();
              }

              v20 = 2;
            }

            else
            {
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
              {
                v24 = v18;
                MOLogWrite();
              }

              v20 = 5;
            }

            v21 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:v20 companionBundleID:v19, v24];
            [v12 setObject:v21 forKeyedSubscript:v18];
          }

          else
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v24 = v18;
              MOLogWrite();
            }

            [v28 addObject:{v18, v24}];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    gizmoState = [(ACXCompanionSyncConnection *)self gizmoState];
    [gizmoState setInstallStatusForApps:v12];

    gizmoState2 = [(ACXCompanionSyncConnection *)self gizmoState];
    [gizmoState2 purgeInstallStatusForApps:v28];

    message = v26;
    messageCopy = v27;
    v8 = v25;
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)_onQueue_handleInstallAppMessage:(id)message
{
  messageCopy = message;
  message = [messageCopy message];
  v6 = [message objectForKeyedSubscript:@"BL"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 && (v9 = objc_opt_class(), (sub_100005D2C(v8, v9) & 1) != 0))
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {
      MOLogWrite();
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v8;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_1000286CC;
          v17[3] = &unk_10008CA48;
          v17[4] = v15;
          v17[5] = self;
          v18 = messageCopy;
          [(ACXCompanionSyncConnection *)self _installWatchAppWithBundleID:v15 withProvisioningProfileInfo:0 installationPendingBlock:v17 completionWithError:0];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v8 = v16;
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)_onQueue_handleCompatibleWatchAppsOnCompanionMessage:(id)message
{
  messageCopy = message;
  applicationManager = [(ACXCompanionSyncConnection *)self applicationManager];
  allAvailableApps = [applicationManager allAvailableApps];

  v7 = objc_opt_new();
  device = [(ACXCompanionSyncConnection *)self device];
  osVersion = [device osVersion];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100028B48;
  v16[3] = &unk_10008CD90;
  v10 = osVersion;
  v17 = v10;
  v11 = v7;
  v18 = v11;
  [allAvailableApps enumerateKeysAndObjectsUsingBlock:v16];
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    MOLogWrite();
  }

  v12 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v12 encodeObject:v11 forKey:NSKeyedArchiveRootObjectKey];
  encodedData = [v12 encodedData];

  v19[0] = @"T";
  v19[1] = @"IO";
  v20[0] = &off_1000976F8;
  v20[1] = encodedData;
  v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  messager = [(ACXCompanionSyncConnection *)self messager];
  [messager sendResponse:v14 toMessage:messageCopy withPriority:200 timeout:@"the list of available and compatible applications" logDescription:120.0];
}

- (void)_onQueue_handleIconForWatchAppMessage:(id)message
{
  messageCopy = message;
  message = [messageCopy message];
  v6 = [message objectForKeyedSubscript:@"BI"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v14 = sub_1000061DC("[ACXCompanionSyncConnection _onQueue_handleIconForWatchAppMessage:]", 2239, @"ACXErrorDomain", 34, 0, 0, @"No watch application bundleID provided, ignoring request.", v9, v34);
    v13 = 0;
LABEL_19:
    v19 = 0;
LABEL_20:
    Unique = 0;
LABEL_21:
    v26 = 0;
    goto LABEL_22;
  }

  message2 = [messageCopy message];
  v11 = [message2 objectForKeyedSubscript:@"IV"];
  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v31 = @"No icon variant provided, ignoring request.";
    v32 = 2245;
LABEL_18:
    v14 = sub_1000061DC("[ACXCompanionSyncConnection _onQueue_handleIconForWatchAppMessage:]", v32, @"ACXErrorDomain", 34, 0, 0, v31, v15, v34);
    goto LABEL_19;
  }

  unsignedIntegerValue = [v13 unsignedIntegerValue];
  v17 = unsignedIntegerValue;
  if ((unsignedIntegerValue - 1) >= 0xF)
  {
    v34 = unsignedIntegerValue;
    v31 = @"The requested icon variant is invalid (%lu)";
    v32 = 2251;
    goto LABEL_18;
  }

  applicationManager = [(ACXCompanionSyncConnection *)self applicationManager];
  v19 = [applicationManager gizmoAppWithBundleID:v8];

  if (!v19)
  {
    v14 = sub_1000061DC("[ACXCompanionSyncConnection _onQueue_handleIconForWatchAppMessage:]", 2259, @"ACXErrorDomain", 34, 0, 0, @"The watch application %@ does not appear to be installed in the system.", v20, v8);
    goto LABEL_20;
  }

  watchAppURL = [v19 watchAppURL];
  Unique = _CFBundleCreateUnique();

  if (!Unique)
  {
    v14 = sub_1000061DC("[ACXCompanionSyncConnection _onQueue_handleIconForWatchAppMessage:]", 2265, @"ACXErrorDomain", 34, 0, 0, @"Failed to find a bundle for the watch application %@", v23, v8);
    goto LABEL_21;
  }

  v24 = (v17 + 37);
  v26 = LICreateIconForBundle();
  if (!v26)
  {
    sub_1000061DC("[ACXCompanionSyncConnection _onQueue_handleIconForWatchAppMessage:]", 2271, @"ACXErrorDomain", 34, 0, 0, @"Failed to find an icon with variant %lu for the watch application %@", v25, v24);
    v14 = LABEL_31:;
LABEL_22:
    v35[0] = @"T";
    v35[1] = @"E";
    v36[0] = &off_100097710;
    v36[1] = v14;
    v30 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
    if (!v26)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v27 = LICreateUncompressedBitmapDataFromImage();
  if (!v27)
  {
    sub_1000061DC("[ACXCompanionSyncConnection _onQueue_handleIconForWatchAppMessage:]", 2277, @"ACXErrorDomain", 34, 0, 0, @"Failed to create data for icon variant %lu for the watch application %@", v28, v24);
    goto LABEL_31;
  }

  v29 = v27;
  v37[0] = @"T";
  v37[1] = @"ID";
  v38[0] = &off_100097710;
  v38[1] = v27;
  v30 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];

  v14 = 0;
LABEL_23:
  CFRelease(v26);
LABEL_24:
  if (Unique)
  {
    CFRelease(Unique);
  }

  messager = [(ACXCompanionSyncConnection *)self messager];
  [messager sendResponse:v30 toMessage:messageCopy withPriority:300 timeout:@"icon for a watchkit app" logDescription:120.0];
}

- (void)_onQueue_handleAppRemovabilityUpdatedMessage:(id)message
{
  messageCopy = message;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  message = [messageCopy message];

  v6 = [message objectForKeyedSubscript:@"BI"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [message objectForKeyedSubscript:@"R"];
    if (v9)
    {
      v10 = [message objectForKeyedSubscript:@"RU"];
      if (v10)
      {
        v11 = [message objectForKeyedSubscript:@"RS"];
        if (v11)
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v17 = v10;
            v18 = v11;
            v15 = v8;
            v16 = v9;
            MOLogWrite();
          }

          v12 = [(ACXCompanionSyncConnection *)self remoteRemovabilityManager:v15];
          unsignedIntegerValue = [v9 unsignedIntegerValue];
          v14 = [[NSUUID alloc] initWithUUIDString:v10];
          [v12 removabilityUpdatedForApp:v8 removability:unsignedIntegerValue dbUUID:v14 sequenceNumber:{objc_msgSend(v11, "unsignedIntegerValue")}];
        }

        else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          MOLogWrite();
        }
      }

      else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)_onQueue_handleAppInstallFailureMessage:(id)message
{
  messageCopy = message;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  message = [messageCopy message];

  v6 = [message objectForKeyedSubscript:@"UI"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  bOOLValue = [v8 BOOLValue];
  v10 = [message objectForKeyedSubscript:@"BI"];
  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = sub_10002620C(message);
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v22 = sub_100006DA8(bOOLValue);
      v23 = v13;
      v21 = v12;
      MOLogWrite();
    }

    v14 = [(ACXCompanionSyncConnection *)self availableSystemAppList:v21];
    v15 = [v14 systemAppIsInstallableWithBundleID:v12 error:0];

    if (v15)
    {
      v16 = +[ACXPairedSyncDelegate sharedSyncDelegate];
      [v16 reportSystemAppInstallFailureForBundleID:v12];
    }

    v17 = [(ACXCompanionSyncConnection *)self _onQueue_applicationForWatchAppWithBundleID:v12];
    v18 = v17;
    if (v17)
    {
      companionAppBundleID = [v17 companionAppBundleID];
      applicationName = [v18 applicationName];
      [(ACXCompanionSyncConnection *)self _onQueue_installFailedForWatchAppBundleID:v12 companionBundleID:companionAppBundleID withError:v13 appName:applicationName userInitiated:bOOLValue userPresentableError:0];
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)handleIncomingMessage:(id)message
{
  messageCopy = message;
  message = [messageCopy message];
  v6 = [message objectForKey:@"T"];
  unsignedCharValue = [v6 unsignedCharValue];

  switch(unsignedCharValue)
  {
    case 2u:
      internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100029CE8;
      v46[3] = &unk_10008CC38;
      v46[4] = self;
      v47 = messageCopy;
      sub_100005828(internalQueue, v46);

      v9 = v47;
      goto LABEL_16;
    case 4u:
      internalQueue2 = [(ACXCompanionSyncConnection *)self internalQueue];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100029CD0;
      v50[3] = &unk_10008CC38;
      v50[4] = self;
      v51 = messageCopy;
      sub_100005828(internalQueue2, v50);

      v9 = v51;
      goto LABEL_16;
    case 5u:
      internalQueue3 = [(ACXCompanionSyncConnection *)self internalQueue];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100029CDC;
      v48[3] = &unk_10008CC38;
      v48[4] = self;
      v49 = messageCopy;
      sub_100005828(internalQueue3, v48);

      v9 = v49;
      goto LABEL_16;
    case 0xEu:
      internalQueue4 = [(ACXCompanionSyncConnection *)self internalQueue];
      sub_100005828(internalQueue4, &stru_10008D860);

      break;
    case 0xFu:
      internalQueue5 = [(ACXCompanionSyncConnection *)self internalQueue];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100029E48;
      v44[3] = &unk_10008CC38;
      v44[4] = self;
      v45 = messageCopy;
      sub_100005828(internalQueue5, v44);

      v9 = v45;
      goto LABEL_16;
    case 0x11u:
      internalQueue6 = [(ACXCompanionSyncConnection *)self internalQueue];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100029E54;
      v42[3] = &unk_10008CC38;
      v42[4] = self;
      v43 = messageCopy;
      sub_100005828(internalQueue6, v42);

      v9 = v43;
      goto LABEL_16;
    case 0x13u:
      internalQueue7 = [(ACXCompanionSyncConnection *)self internalQueue];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100029E60;
      v40[3] = &unk_10008CC38;
      v40[4] = self;
      v41 = messageCopy;
      sub_100005828(internalQueue7, v40);

      v9 = v41;
      goto LABEL_16;
    case 0x17u:
      internalQueue8 = [(ACXCompanionSyncConnection *)self internalQueue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100029E6C;
      v37[3] = &unk_10008CC38;
      v38 = messageCopy;
      selfCopy = self;
      sub_100005828(internalQueue8, v37);

      v9 = v38;
      goto LABEL_16;
    case 0x19u:
      internalQueue9 = [(ACXCompanionSyncConnection *)self internalQueue];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100029EC0;
      v34[3] = &unk_10008CC38;
      v35 = messageCopy;
      selfCopy2 = self;
      sub_100005828(internalQueue9, v34);

      v9 = v35;
      goto LABEL_16;
    case 0x1Bu:
      internalQueue10 = [(ACXCompanionSyncConnection *)self internalQueue];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100029F14;
      v32[3] = &unk_10008CD40;
      v33 = messageCopy;
      sub_100005828(internalQueue10, v32);

      v9 = v33;
      goto LABEL_16;
    case 0x1Cu:
      internalQueue11 = [(ACXCompanionSyncConnection *)self internalQueue];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100029F1C;
      v29[3] = &unk_10008CC38;
      v30 = messageCopy;
      selfCopy3 = self;
      sub_100005828(internalQueue11, v29);

      v9 = v30;
      goto LABEL_16;
    case 0x1Fu:
      internalQueue12 = [(ACXCompanionSyncConnection *)self internalQueue];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100029F70;
      v27[3] = &unk_10008CC38;
      v27[4] = self;
      v28 = messageCopy;
      sub_100005828(internalQueue12, v27);

      v9 = v28;
      goto LABEL_16;
    case 0x20u:
      internalQueue13 = [(ACXCompanionSyncConnection *)self internalQueue];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100029F7C;
      v25[3] = &unk_10008CC38;
      v25[4] = self;
      v26 = messageCopy;
      sub_100005828(internalQueue13, v25);

      v9 = v26;
      goto LABEL_16;
    case 0x21u:
      internalQueue14 = [(ACXCompanionSyncConnection *)self internalQueue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100029F88;
      v23[3] = &unk_10008CC38;
      v23[4] = self;
      v24 = messageCopy;
      sub_100005828(internalQueue14, v23);

      v9 = v24;
LABEL_16:

      break;
    default:
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      break;
  }
}

- (void)processPendingStateWithReason:(id)reason
{
  reasonCopy = reason;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A048;
  v7[3] = &unk_10008CC38;
  v8 = reasonCopy;
  selfCopy = self;
  v6 = reasonCopy;
  sub_100005828(internalQueue, v7);
}

- (void)performReunionSyncWithReason:(id)reason
{
  reasonCopy = reason;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A174;
  v7[3] = &unk_10008CC38;
  v8 = reasonCopy;
  selfCopy = self;
  v6 = reasonCopy;
  sub_100005828(internalQueue, v7);
}

- (void)noteInstallFailure:(id)failure forWatchAppWithBundleID:(id)d wasUserInitiated:(BOOL)initiated
{
  failureCopy = failure;
  dCopy = d;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A2E0;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v13 = dCopy;
  v14 = failureCopy;
  v10 = failureCopy;
  v11 = dCopy;
  dispatch_sync(internalQueue, block);
}

- (void)acknowledgeTestFlightInstallBegunForWatchApp:(id)app
{
  appCopy = app;
  v4 = +[ACXTestFlightInstallQueue sharedInstaller];
  [v4 removePendingInstallForAppWithBundleID:appCopy];
}

- (void)installProvisioningProfileWithData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002A470;
  v11[3] = &unk_10008CA98;
  v12 = dataCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  sub_100005828(internalQueue, v11);
}

- (void)removeProvisioningProfileWithID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002A958;
  v11[3] = &unk_10008CA98;
  v12 = dCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  sub_100005828(internalQueue, v11);
}

- (void)fetchProvisioningProfilesForApplicationWithBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002AE4C;
  v11[3] = &unk_10008CA98;
  v12 = dCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  sub_100005828(internalQueue, v11);
}

- (NSDictionary)removabilityForRemoteApps
{
  remoteRemovabilityManager = [(ACXCompanionSyncConnection *)self remoteRemovabilityManager];
  appRemovabilityMap = [remoteRemovabilityManager appRemovabilityMap];

  return appRemovabilityMap;
}

- (void)updatePreferencesForApplicationWithIdentifier:(id)identifier preferences:(id)preferences writingToPreferencesLocation:(unint64_t)location options:(unint64_t)options completion:(id)completion
{
  identifierCopy = identifier;
  preferencesCopy = preferences;
  completionCopy = completion;
  device = [(ACXCompanionSyncConnection *)self device];
  supportsStandaloneApps = [device supportsStandaloneApps];

  if (!location || (supportsStandaloneApps & 1) != 0)
  {
    internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002B438;
    v20[3] = &unk_10008D888;
    v21 = identifierCopy;
    locationCopy = location;
    optionsCopy = options;
    v22 = preferencesCopy;
    selfCopy = self;
    v24 = completionCopy;
    sub_100005828(internalQueue, v20);
  }

  else
  {
    v18 = sub_1000061DC("[ACXCompanionSyncConnection updatePreferencesForApplicationWithIdentifier:preferences:writingToPreferencesLocation:options:completion:]", 2647, @"ACXErrorDomain", 50, 0, 0, @"Watch device does not support writing to preferences location %lu", v17, location);
    (*(completionCopy + 2))(completionCopy, v18);
  }
}

- (BOOL)supportsRemoteAppList
{
  remoteAppList = [(ACXCompanionSyncConnection *)self remoteAppList];
  v3 = remoteAppList != 0;

  return v3;
}

- (void)fetchAppInfoForBundleIDs:(id)ds
{
  dsCopy = ds;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  internalQueue2 = [(ACXCompanionSyncConnection *)self internalQueue];
  messager = [(ACXCompanionSyncConnection *)self messager];
  device = [(ACXCompanionSyncConnection *)self device];
  remoteAppList = [(ACXCompanionSyncConnection *)self remoteAppList];
  sub_10004BEF0(dsCopy, internalQueue2, messager, device, remoteAppList);
}

- (void)fetchBundleIDList
{
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  internalQueue2 = [(ACXCompanionSyncConnection *)self internalQueue];
  messager = [(ACXCompanionSyncConnection *)self messager];
  device = [(ACXCompanionSyncConnection *)self device];
  remoteAppList = [(ACXCompanionSyncConnection *)self remoteAppList];
  sub_10004C17C(internalQueue2, messager, device, remoteAppList);
}

- (void)fetchOutstandingAppEvents
{
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  internalQueue2 = [(ACXCompanionSyncConnection *)self internalQueue];
  messager = [(ACXCompanionSyncConnection *)self messager];
  device = [(ACXCompanionSyncConnection *)self device];
  remoteAppList = [(ACXCompanionSyncConnection *)self remoteAppList];
  sub_10004C348(internalQueue2, messager, device, remoteAppList);
}

- (void)acknowledgeAppEventsForDBUUID:(id)d throughSequenceNumber:(unint64_t)number
{
  dCopy = d;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  internalQueue2 = [(ACXCompanionSyncConnection *)self internalQueue];
  messager = [(ACXCompanionSyncConnection *)self messager];
  device = [(ACXCompanionSyncConnection *)self device];
  sub_10004C514(dCopy, number, internalQueue2, messager, device);
}

- (void)_setLocallyAvailableForRemoteApplicationInstances:(id)instances
{
  instancesCopy = instances;
  applicationManager = [(ACXCompanionSyncConnection *)self applicationManager];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = instancesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 applicationMode] != 3)
        {
          bundleIdentifier = [v11 bundleIdentifier];
          v13 = [applicationManager gizmoAppIsLocallyAvailableWithBundleID:bundleIdentifier];

          if (v13)
          {
            [v11 setIsLocallyAvailable:1];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)applicationsAdded:(id)added
{
  addedCopy = added;
  device = [(ACXCompanionSyncConnection *)self device];
  pairingID = [device pairingID];

  [(ACXCompanionSyncConnection *)self _setLocallyAvailableForRemoteApplicationInstances:addedCopy];
  [ACXDeviceConnectionClient messageAllObserversForApplicationsInstalled:addedCopy onDeviceWithPairingID:pairingID];
  v7 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = addedCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        bundleIdentifier = [*(*(&v14 + 1) + 8 * v12) bundleIdentifier];
        [v7 addObject:bundleIdentifier];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  sub_10002BE2C(@"com.apple.appconduit.remote_applications_installed", v7, pairingID);
}

- (void)applicationsUpdated:(id)updated
{
  updatedCopy = updated;
  device = [(ACXCompanionSyncConnection *)self device];
  pairingID = [device pairingID];

  [(ACXCompanionSyncConnection *)self _setLocallyAvailableForRemoteApplicationInstances:updatedCopy];
  [ACXDeviceConnectionClient messageAllObserversForApplicationsUpdated:updatedCopy onDeviceWithPairingID:pairingID];
  v7 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = updatedCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        bundleIdentifier = [*(*(&v14 + 1) + 8 * v12) bundleIdentifier];
        [v7 addObject:bundleIdentifier];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  sub_10002BE2C(@"com.apple.appconduit.remote_applications_updated", v7, pairingID);
}

- (void)applicationsRemoved:(id)removed
{
  removedCopy = removed;
  device = [(ACXCompanionSyncConnection *)self device];
  pairingID = [device pairingID];

  v7 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = removedCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        bundleIdentifier = [*(*(&v14 + 1) + 8 * v12) bundleIdentifier];
        [v7 addObject:bundleIdentifier];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [ACXDeviceConnectionClient messageAllObserversForApplicationsUninstalled:v7 onDeviceWithPairingID:pairingID];
  sub_10002BE2C(@"com.apple.appconduit.remote_applications_uninstalled", v7, pairingID);
}

- (void)resyncCompleted
{
  device = [(ACXCompanionSyncConnection *)self device];
  pairingID = [device pairingID];

  device2 = [(ACXCompanionSyncConnection *)self device];
  pairingID2 = [device2 pairingID];
  [ACXDeviceConnectionClient messageAllObserversForApplicationDatabaseResyncedForDeviceWithPairingID:pairingID2];

  sub_10002BE2C(@"com.apple.appconduit.remote_application_db_resynced", 0, pairingID);
}

- (void)_processSystemAppChangesForNewApps:(id)apps updatedApps:(id)updatedApps removedApps:(id)removedApps
{
  appsCopy = apps;
  updatedAppsCopy = updatedApps;
  removedAppsCopy = removedApps;
  device = [(ACXCompanionSyncConnection *)self device];
  LODWORD(updatedApps) = [device isActivePairedDevice];

  if (updatedApps)
  {
    v41 = removedAppsCopy;
    device2 = [(ACXCompanionSyncConnection *)self device];
    deletableSystemAppStateIsMirrored = [device2 deletableSystemAppStateIsMirrored];

    device3 = [(ACXCompanionSyncConnection *)self device];
    supportsRemoteAppList = [device3 supportsRemoteAppList];

    selfCopy = self;
    gizmoState = [(ACXCompanionSyncConnection *)self gizmoState];
    alwaysInstallApps = [gizmoState alwaysInstallApps];

    v42 = updatedAppsCopy;
    v17 = [appsCopy arrayByAddingObjectsFromArray:updatedAppsCopy];
    v18 = objc_opt_new();
    v40 = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v57;
      v23 = deletableSystemAppStateIsMirrored | alwaysInstallApps;
      v44 = *v57;
      v45 = v19;
      v43 = deletableSystemAppStateIsMirrored | alwaysInstallApps;
      do
      {
        v24 = 0;
        v46 = v21;
        do
        {
          if (*v57 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v56 + 1) + 8 * v24);
          if ([v25 isDeletable] && (objc_msgSend(v25, "isSystemApp") & v23) == 1)
          {
            counterpartIdentifiers = [v25 counterpartIdentifiers];
            v27 = counterpartIdentifiers;
            if (counterpartIdentifiers && [counterpartIdentifiers count])
            {
              v48 = v24;
              bundleIdentifier = [v25 bundleIdentifier];
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v55 = 0u;
              v47 = v27;
              v29 = v27;
              v30 = [v29 countByEnumeratingWithState:&v52 objects:v60 count:16];
              if (!v30)
              {
                goto LABEL_25;
              }

              v31 = v30;
              v32 = *v53;
              while (1)
              {
                for (i = 0; i != v31; i = i + 1)
                {
                  if (*v53 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v34 = *(*(&v52 + 1) + 8 * i);
                  if (deletableSystemAppStateIsMirrored)
                  {
                    if (!qword_1000A4878 || *(qword_1000A4878 + 44) > 4)
                    {
                      goto LABEL_22;
                    }
                  }

                  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
                  {
LABEL_22:
                    v37 = *(*(&v52 + 1) + 8 * i);
                    MOLogWrite();
                  }

                  v35 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:bundleIdentifier, v37];
                  [v18 setObject:v35 forKeyedSubscript:v34];
                }

                v31 = [v29 countByEnumeratingWithState:&v52 objects:v60 count:16];
                if (!v31)
                {
LABEL_25:

                  v19 = v45;
                  v21 = v46;
                  v22 = v44;
                  v23 = v43;
                  v27 = v47;
                  v24 = v48;
                  break;
                }
              }
            }
          }

          v24 = v24 + 1;
        }

        while (v24 != v21);
        v21 = [v19 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v21);
    }

    removedAppsCopy = v41;
    if (!(supportsRemoteAppList & 1 | ((deletableSystemAppStateIsMirrored & 1) == 0)))
    {
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10002C7D8;
      v50[3] = &unk_10008D8B0;
      v51 = v40;
      [v41 enumerateKeysAndObjectsUsingBlock:v50];
    }

    if ([v18 count] || objc_msgSend(v40, "count"))
    {
      gizmoState2 = [(ACXCompanionSyncConnection *)selfCopy gizmoState];
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10002C910;
      v49[3] = &unk_10008CD40;
      v49[4] = selfCopy;
      [gizmoState2 processNewStatusUpdates:v18 updatedStatusUpdates:0 removedStatusUpdates:v40 completion:v49];
    }

    updatedAppsCopy = v42;
  }
}

- (void)noteNewCompanionApps:(id)apps updatedApps:(id)updatedApps removedApps:(id)removedApps forDBUUID:(id)d endingSequenceNumber:(unint64_t)number
{
  appsCopy = apps;
  updatedAppsCopy = updatedApps;
  removedAppsCopy = removedApps;
  dCopy = d;
  device = [(ACXCompanionSyncConnection *)self device];
  supportsRemoteAppList = [device supportsRemoteAppList];

  if (supportsRemoteAppList)
  {
    if ([appsCopy count] || objc_msgSend(updatedAppsCopy, "count"))
    {
      numberCopy = number;
      v50 = dCopy;
      v52 = updatedAppsCopy;
      v18 = objc_opt_new();
      v19 = objc_opt_new();
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v51 = appsCopy;
      v20 = appsCopy;
      v21 = [v20 countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v66;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v66 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v65 + 1) + 8 * i);
            serializeAsRemoteApplication = [v25 serializeAsRemoteApplication];
            [v18 addObject:serializeAsRemoteApplication];

            bundleIdentifier = [v25 bundleIdentifier];
            [v19 addObject:bundleIdentifier];
          }

          v22 = [v20 countByEnumeratingWithState:&v65 objects:v74 count:16];
        }

        while (v22);
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v28 = v52;
      v29 = [v28 countByEnumeratingWithState:&v61 objects:v73 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v62;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v62 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v61 + 1) + 8 * j);
            serializeAsRemoteApplication2 = [v33 serializeAsRemoteApplication];
            [v18 addObject:serializeAsRemoteApplication2];

            bundleIdentifier2 = [v33 bundleIdentifier];
            [v19 addObject:bundleIdentifier2];
          }

          v30 = [v28 countByEnumeratingWithState:&v61 objects:v73 count:16];
        }

        while (v30);
      }

      v71[0] = @"T";
      v71[1] = @"IL";
      v72[0] = &off_100097788;
      v72[1] = v18;
      v71[2] = @"DBU";
      dCopy = v50;
      uUIDString = [v50 UUIDString];
      v72[2] = uUIDString;
      v71[3] = @"DBS";
      number = numberCopy;
      v37 = [NSNumber numberWithUnsignedInteger:numberCopy];
      v72[3] = v37;
      v38 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:4];

      internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_10002CE48;
      v57[3] = &unk_10008CA48;
      v58 = v19;
      selfCopy = self;
      v60 = v38;
      v40 = v38;
      v41 = v19;
      sub_100005828(internalQueue, v57);

      appsCopy = v51;
      updatedAppsCopy = v52;
    }

    if ([removedAppsCopy count])
    {
      allKeys = [removedAppsCopy allKeys];
      v69[0] = @"T";
      v69[1] = @"BL";
      v70[0] = &off_1000977A0;
      v70[1] = allKeys;
      v69[2] = @"DBU";
      uUIDString2 = [dCopy UUIDString];
      v70[2] = uUIDString2;
      v69[3] = @"DBS";
      v44 = [NSNumber numberWithUnsignedInteger:number];
      v70[3] = v44;
      v45 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:4];

      internalQueue2 = [(ACXCompanionSyncConnection *)self internalQueue];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10002CF0C;
      v53[3] = &unk_10008CA48;
      v54 = allKeys;
      selfCopy2 = self;
      v56 = v45;
      v47 = v45;
      v48 = allKeys;
      sub_100005828(internalQueue2, v53);
    }
  }

  [(ACXCompanionSyncConnection *)self _processSystemAppChangesForNewApps:appsCopy updatedApps:updatedAppsCopy removedApps:removedAppsCopy];
}

- (void)noteCompanionAppDatabaseRebuild
{
  device = [(ACXCompanionSyncConnection *)self device];
  supportsRemoteAppList = [device supportsRemoteAppList];

  if (supportsRemoteAppList)
  {

    [(ACXCompanionSyncConnection *)self performReunionSyncWithReason:@"companion app database rebuilt"];
  }
}

- (void)fetchRemovabilityForRemoteApps
{
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  device = [(ACXCompanionSyncConnection *)self device];
  supportsTrackingAppRemovability = [device supportsTrackingAppRemovability];

  if (supportsTrackingAppRemovability)
  {

    [(ACXCompanionSyncConnection *)self _onQueue_fetchRemovabilityForRemoteApps];
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {

    MOLogWrite();
  }
}

- (void)applicationsRemovabilityUpdated:(id)updated
{
  updatedCopy = updated;
  internalQueue = [(ACXCompanionSyncConnection *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  device = [(ACXCompanionSyncConnection *)self device];
  pairingID = [device pairingID];

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  [ACXDeviceConnectionClient messageAllObserversForApplicationsRemovabilityChanged:updatedCopy onDeviceWithPairingID:pairingID];
}

@end