@interface MSDHomeManager
+ (id)sharedManager;
- (BOOL)isHomeKitReady;
- (HMAccessory)currentAccessory;
- (HMHome)currentHome;
- (MSDHomeManager)init;
- (NSArray)allHomes;
- (id)homeWithIdentifier:(id)identifier;
- (void)_addHomeDelegates:(id)delegates;
- (void)_handleHomeKitSyncComplete;
- (void)_homeWasRemoved;
- (void)_noteHomesStillLoading;
- (void)_withReadinessLock:(id)lock;
- (void)_withRequestLock:(id)lock;
- (void)addDelegate:(id)delegate;
- (void)awaitCurrentHomeWithCompletion:(id)completion;
- (void)homeDidEnableMultiUser:(id)user;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManager:(id)manager didRemoveHomePermanently:(id)permanently;
- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)registerToAcceptCloudSharesForContainers:(id)containers;
- (void)removeDelegate:(id)delegate;
- (void)shareManager:(id)manager didReceiveShareInvitation:(id)invitation completionHandler:(id)handler;
@end

@implementation MSDHomeManager

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D65C;
  block[3] = &unk_1000508C0;
  block[4] = self;
  if (qword_100059A48 != -1)
  {
    dispatch_once(&qword_100059A48, block);
  }

  v2 = qword_100059A50;

  return v2;
}

- (MSDHomeManager)init
{
  v13.receiver = self;
  v13.super_class = MSDHomeManager;
  v2 = [(MSDHomeManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_isWaitingToStart = 1;
    *&v2->_waitingForHomesToLoad = 0;
    v2->_readinessLock._os_unfair_lock_opaque = 0;
    v4 = [[HMMutableHomeManagerConfiguration alloc] initWithOptions:104 cachePolicy:2];
    [v4 setDiscretionary:1];
    v5 = objc_opt_new();
    [v4 setDelegateQueue:v5];
    v6 = [[HMHomeManager alloc] initWithHomeMangerConfiguration:v4];
    homeManager = v3->_homeManager;
    v3->_homeManager = v6;

    [(HMHomeManager *)v3->_homeManager setDelegate:v3];
    v8 = objc_opt_new();
    delegates = v3->_delegates;
    v3->_delegates = v8;

    v10 = objc_opt_new();
    queuedAwaitingCurrentHome = v3->_queuedAwaitingCurrentHome;
    v3->_queuedAwaitingCurrentHome = v10;
  }

  return v3;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_delegates addObject:delegateCopy];
  objc_sync_exit(v4);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_delegates removeObject:delegateCopy];
  objc_sync_exit(v4);
}

- (id)homeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allHomes = [(MSDHomeManager *)self allHomes];
  v6 = [allHomes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allHomes);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uniqueIdentifier = [v9 uniqueIdentifier];
        v11 = [uniqueIdentifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allHomes countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (HMHome)currentHome
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DAD8;
  v5[3] = &unk_1000511A8;
  v5[4] = self;
  v5[5] = &v6;
  [(MSDHomeManager *)self _withReadinessLock:v5];
  if (v7[3])
  {
    currentHome = [(HMHomeManager *)self->_homeManager currentHome];
  }

  else
  {
    currentHome = 0;
  }

  _Block_object_dispose(&v6, 8);

  return currentHome;
}

- (HMAccessory)currentAccessory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DC28;
  v5[3] = &unk_1000511A8;
  v5[4] = self;
  v5[5] = &v6;
  [(MSDHomeManager *)self _withReadinessLock:v5];
  if (v7[3])
  {
    currentAccessory = [(HMHomeManager *)self->_homeManager currentAccessory];
  }

  else
  {
    currentAccessory = 0;
  }

  _Block_object_dispose(&v6, 8);

  return currentAccessory;
}

- (NSArray)allHomes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DD78;
  v5[3] = &unk_1000511A8;
  v5[4] = self;
  v5[5] = &v6;
  [(MSDHomeManager *)self _withReadinessLock:v5];
  if (v7[3])
  {
    homes = [(HMHomeManager *)self->_homeManager homes];
  }

  else
  {
    homes = 0;
  }

  _Block_object_dispose(&v6, 8);

  return homes;
}

- (void)awaitCurrentHomeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_10000DF0C;
    v14 = sub_10000DF1C;
    v15 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000DF24;
    v7[3] = &unk_1000511D0;
    v9 = &v10;
    v7[4] = self;
    v6 = completionCopy;
    v8 = v6;
    [(MSDHomeManager *)self _withRequestLock:v7];
    if (v11[5])
    {
      v6[2](v6);
    }

    _Block_object_dispose(&v10, 8);
  }
}

- (void)registerToAcceptCloudSharesForContainers:(id)containers
{
  containersCopy = containers;
  userCloudShareManager = [(HMHomeManager *)self->_homeManager userCloudShareManager];
  [userCloudShareManager setDelegate:self];

  userCloudShareManager2 = [(HMHomeManager *)self->_homeManager userCloudShareManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E0A0;
  v8[3] = &unk_100050BD8;
  v9 = containersCopy;
  v7 = containersCopy;
  [userCloudShareManager2 registerForContainerIDs:v7 completion:v8];
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  os_unfair_lock_lock(&self->_readinessLock);
  isWaitingToStart = self->_isWaitingToStart;
  os_unfair_lock_unlock(&self->_readinessLock);
  v10 = sub_100030FE4(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (isWaitingToStart)
  {
    if (v11)
    {
      v16 = 136315138;
      v17 = "[MSDHomeManager homeManager:didAddHome:]";
      v12 = "%s HMHomeManager still prewarming. Will refresh once HMHomeManager is fully ready.";
      v13 = v10;
      v14 = 12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
    }
  }

  else
  {
    if (v11)
    {
      v16 = 138478083;
      v17 = managerCopy;
      v18 = 2113;
      v19 = homeCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HMHomeManager %{private}@ Added Home %{private}@", &v16, 0x16u);
    }

    isCurrentUserRestrictedGuest = [homeCopy isCurrentUserRestrictedGuest];
    if (!isCurrentUserRestrictedGuest)
    {
      [homeCopy setDelegate:self];
      v10 = +[MSDDataController sharedInstance];
      [v10 refreshDataForReason:0 completion:&stru_100051210];
      goto LABEL_11;
    }

    v10 = sub_100030FE4(isCurrentUserRestrictedGuest);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v12 = "Determined that the user was a restricted guest. Skipping CloudKit refresh";
      v13 = v10;
      v14 = 2;
      goto LABEL_9;
    }
  }

LABEL_11:
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  managerCopy = manager;
  homeCopy = home;
  os_unfair_lock_lock(&self->_readinessLock);
  isWaitingToStart = self->_isWaitingToStart;
  os_unfair_lock_unlock(&self->_readinessLock);
  if (isWaitingToStart)
  {
    v10 = sub_100030FE4(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[MSDHomeManager homeManager:didRemoveHome:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s HMHomeManager still prewarming. Will refresh once HMHomeManager is fully ready.", &v16, 0xCu);
    }
  }

  else
  {
    uuid = [homeCopy uuid];
    v12 = [managerCopy isHomeRemovedPermanently:uuid];

    v14 = sub_100030FE4(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"NO";
      v16 = 138478339;
      v17 = managerCopy;
      v18 = 2113;
      if (v12)
      {
        v15 = @"YES";
      }

      v19 = homeCopy;
      v20 = 2113;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "HMHomeManager %{private}@ Removed Home %{private}@ isRemovedPermanently: %{private}@", &v16, 0x20u);
    }

    if (v12)
    {
      [(MSDHomeManager *)self _homeWasRemoved];
    }
  }
}

- (void)homeManager:(id)manager didRemoveHomePermanently:(id)permanently
{
  managerCopy = manager;
  permanentlyCopy = permanently;
  os_unfair_lock_lock(&self->_readinessLock);
  isWaitingToStart = self->_isWaitingToStart;
  os_unfair_lock_unlock(&self->_readinessLock);
  v10 = sub_100030FE4(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (isWaitingToStart)
  {
    if (v11)
    {
      v12 = 136315138;
      v13 = "[MSDHomeManager homeManager:didRemoveHomePermanently:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s HMHomeManager still prewarming. Will refresh once HMHomeManager is fully ready.", &v12, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      v12 = 138478083;
      v13 = managerCopy;
      v14 = 2113;
      v15 = permanentlyCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HMHomeManager %{private}@ Permanently Removed Home %{private}@", &v12, 0x16u);
    }

    [(MSDHomeManager *)self _homeWasRemoved];
  }
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  v5 = [(MSDHomeManager *)self isHomeManagerReady:homesCopy];
  v6 = v5;
  v7 = sub_100030FE4(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [homesCopy status];
    v8 = HMHomeManagerStatusToString();
    v13 = 136315650;
    v14 = "[MSDHomeManager homeManagerDidUpdateHomes:]";
    v15 = 2112;
    v16 = v8;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s manager status: %@, managerIsReady: %i", &v13, 0x1Cu);
  }

  os_unfair_lock_lock(&self->_readinessLock);
  if (!self->_isHomeKitInitialized)
  {
    self->_isHomeKitInitialized = 1;
  }

  isWaitingToStart = self->_isWaitingToStart;
  os_unfair_lock_unlock(&self->_readinessLock);
  if (v6 && !isWaitingToStart)
  {
    v11 = sub_100030FE4(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      homes = [homesCopy homes];
      v13 = 138477827;
      v14 = homes;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received update on homes: %{private}@", &v13, 0xCu);
    }

    [(MSDHomeManager *)self _addHomeDelegates:homesCopy];
  }
}

- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status
{
  managerCopy = manager;
  v6 = [(MSDHomeManager *)self isHomeManagerReady:managerCopy];
  v7 = v6;
  v8 = sub_100030FE4(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [managerCopy status];
    v9 = HMHomeManagerStatusToString();
    *buf = 136315650;
    *&buf[4] = "[MSDHomeManager homeManager:didUpdateStatus:]";
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 1024;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s manager status: %@, managerIsReady: %i", buf, 0x1Cu);
  }

  if (v7)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v16) = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000EAC8;
    v12[3] = &unk_100051238;
    v14 = buf;
    v12[4] = self;
    v13 = managerCopy;
    [(MSDHomeManager *)self _withReadinessLock:v12];
    if (*(*&buf[8] + 24))
    {
      [(MSDHomeManager *)self _handleHomeKitFinishedInitialization];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000EC94;
      v11[3] = &unk_100050AC0;
      v11[4] = self;
      [(MSDHomeManager *)self _withReadinessLock:v11];
      v10 = +[MSDDataController sharedInstance];
      [v10 refreshDataForReason:9 completion:&stru_100051258];
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)homeDidEnableMultiUser:(id)user
{
  userCopy = user;
  v4 = sub_100030FE4(userCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = [userCopy isMultiUserEnabled];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Home MUEnablement status changed : %d", v6, 8u);
  }

  if ([userCopy isMultiUserEnabled])
  {
    v5 = [[MSDDataRefresh alloc] initWithReason:2];
    [(MSDDataRefresh *)v5 performRefreshWithCompletion:&stru_100051278];
  }
}

- (void)shareManager:(id)manager didReceiveShareInvitation:(id)invitation completionHandler:(id)handler
{
  managerCopy = manager;
  invitationCopy = invitation;
  handlerCopy = handler;
  v10 = sub_100030FE4(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315651;
    v15 = "[MSDHomeManager shareManager:didReceiveShareInvitation:completionHandler:]";
    v16 = 2113;
    v17 = managerCopy;
    v18 = 2113;
    v19 = invitationCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s, Manager:%{private}@ invitation: %{private}@", buf, 0x20u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000F048;
  v12[3] = &unk_1000512A0;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [MSDHomeCloudShareCreate acceptInvitation:invitationCopy completion:v12];
}

- (void)_addHomeDelegates:(id)delegates
{
  homes = [delegates homes];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F1B8;
  v5[3] = &unk_1000512C8;
  v5[4] = self;
  [homes enumerateObjectsUsingBlock:v5];
}

- (BOOL)isHomeKitReady
{
  os_unfair_lock_assert_owner(&self->_readinessLock);
  if (!self->_isHomeKitInitialized)
  {
    return 0;
  }

  homeManager = self->_homeManager;

  return [(MSDHomeManager *)self isHomeManagerReady:homeManager];
}

- (void)_homeWasRemoved
{
  v2 = +[MSDDataController sharedInstance];
  [v2 refreshDataForReason:1 completion:&stru_1000512E8];
}

- (void)_noteHomesStillLoading
{
  os_unfair_lock_assert_owner(&self->_readinessLock);
  isWaitingForHomesToLoad = [(MSDHomeManager *)self isWaitingForHomesToLoad];
  if ((isWaitingForHomesToLoad & 1) == 0)
  {
    self->_waitingForHomesToLoad = 1;
    v4 = MSDGenerateSignpostID(isWaitingForHomesToLoad);
    self->signpostID = v4;
    v5 = MSDSignpostFacility(v4);
    v6 = v5;
    signpostID = self->signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "LookupHomes", &unk_10003DCC2, v8, 2u);
    }
  }
}

- (void)_withReadinessLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_readinessLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_readinessLock);
}

- (void)_withRequestLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_requestQueueLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_requestQueueLock);
}

- (void)_handleHomeKitSyncComplete
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_delegates;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = dispatch_get_global_queue(2, 0);
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_10000F600;
          v10[3] = &unk_100051310;
          v10[4] = v8;
          v10[5] = self;
          dispatch_async(v9, v10);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

@end