@interface BDSUbiquityStatusMonitor
- (BDSICloudIdentityToken)ubiquityIdentityToken;
- (BDSUbiquityStatusChangeObserving)coordinatingObserver;
- (BDSUbiquityStatusMonitor)init;
- (BOOL)dq_isICloudDriveEnabled;
- (BOOL)isICloudDriveEnabled;
- (NSURL)containerURL;
- (NSURL)documentsURL;
- (id)description;
- (void)_notifyObserversForChangesWithCurrentToken:(id)token lastToken:(id)lastToken;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)dq_archiveCurrentUbiquityIdentityToken;
- (void)dq_refreshUbiquityAvailabilityStatus;
- (void)p_ubiquityIdentityDidChange:(id)change;
- (void)registerCoordinatingObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)restartObserving;
@end

@implementation BDSUbiquityStatusMonitor

- (BDSUbiquityStatusMonitor)init
{
  v22.receiver = self;
  v22.super_class = BDSUbiquityStatusMonitor;
  v2 = [(BDSUbiquityStatusMonitor *)&v22 init];
  if (v2)
  {
    v3 = [NSHashTable hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.iBooks.BDSUbiquityStatusMonitor.containerQueue", v5);
    containerQueue = v2->_containerQueue;
    v2->_containerQueue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.iBooks.BDSUbiquityStatusMonitor.dispatchQueue", v8);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.iBooks.BDSUbiquityStatusMonitor.notifyQueue", v11);
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v12;

    v14 = +[NSUserDefaults standardUserDefaults];
    v15 = [v14 valueForKey:@"nonNilUbiquityIdentityToken"];
    v2->_lastArchivedNonNilUbiquityIdentityTokenWasNonNilAtColdLaunch = v15 != 0;

    v2->_archivedCloudDriveOptedIn = +[BDSSyncUserDefaults isICloudDriveSyncOptedIn];
    v16 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F5CC;
    block[3] = &unk_10023F6B0;
    v17 = v2;
    v21 = v17;
    dispatch_async(v16, block);
    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v17 selector:"p_ubiquityIdentityDidChange:" name:NSUbiquityIdentityDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BDSUbiquityStatusMonitor;
  [(BDSUbiquityStatusMonitor *)&v4 dealloc];
}

- (BDSICloudIdentityToken)ubiquityIdentityToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000F754;
  v11 = sub_10000F764;
  v12 = 0;
  dispatchQueue = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F76C;
  v6[3] = &unk_10023F910;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dispatchQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)dq_isICloudDriveEnabled
{
  dispatchQueue = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v3 = +[BDSSyncUserDefaults isICloudDriveSyncOptedIn];
  v4 = v3;
  if (v3)
  {
    v3 = +[BDSSyncUserDefaults isCloudKitSyncOptedIn];
    v5 = @"NO";
    if (v3)
    {
      v3 = +[BDSSyncUserDefaults isGlobalICloudDriveSyncOptedIn];
      v6 = v3;
      if (v3)
      {
        v5 = @"YES";
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = @"NO";
  }

  v7 = sub_10000DEB0(v3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = @"YES";
    if (v4)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = 138412802;
    v12 = v10;
    v13 = 2112;
    if (!v6)
    {
      v9 = @"NO";
    }

    v14 = v5;
    v15 = 2112;
    v16 = v9;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "BDSUbiquityStatusMonitor: dq_isICloudDriveEnabled: isICloudDriveSyncOptedIn = %@, globalICloudDrive = %@, isICloudDriveEnabled = %@", &v11, 0x20u);
  }

  return v6;
}

- (BOOL)isICloudDriveEnabled
{
  selfCopy = self;
  dispatchQueue = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  dispatch_assert_queue_not_V2(dispatchQueue);

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dispatchQueue2 = [(BDSUbiquityStatusMonitor *)selfCopy dispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000FA00;
  v6[3] = &unk_10023F910;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(dispatchQueue2, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    dispatchQueue = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000FAEC;
    v6[3] = &unk_10023F938;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_async(dispatchQueue, v6);
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    dispatchQueue = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000FBF8;
    v6[3] = &unk_10023F938;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_async(dispatchQueue, v6);
  }
}

- (void)registerCoordinatingObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    dispatchQueue = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000FD44;
    v6[3] = &unk_10023F938;
    v6[4] = self;
    v7 = observerCopy;
    dispatch_async(dispatchQueue, v6);
  }
}

- (void)restartObserving
{
  dispatchQueue = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FDD4;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)dq_archiveCurrentUbiquityIdentityToken
{
  dispatchQueue = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4 = +[NSUserDefaults standardUserDefaults];
  currentUbiquityIdentityToken = [(BDSUbiquityStatusMonitor *)self currentUbiquityIdentityToken];
  token = [currentUbiquityIdentityToken token];
  [v4 setObject:token forKey:@"ubiquityIdentityToken"];

  currentUbiquityIdentityToken2 = [(BDSUbiquityStatusMonitor *)self currentUbiquityIdentityToken];

  if (currentUbiquityIdentityToken2)
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    currentUbiquityIdentityToken3 = [(BDSUbiquityStatusMonitor *)self currentUbiquityIdentityToken];
    token2 = [currentUbiquityIdentityToken3 token];
    [v8 setObject:token2 forKey:@"nonNilUbiquityIdentityToken"];
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  [v11 synchronize];
}

- (void)p_ubiquityIdentityDidChange:(id)change
{
  dispatchQueue = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010270;
  block[3] = &unk_10023F6B0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_notifyObserversForChangesWithCurrentToken:(id)token lastToken:(id)lastToken
{
  tokenCopy = token;
  lastTokenCopy = lastToken;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  observers = [(BDSUbiquityStatusMonitor *)self observers];
  v8 = [observers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(observers);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          notifyQueue = [(BDSUbiquityStatusMonitor *)self notifyQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000106CC;
          block[3] = &unk_10023F720;
          v22 = tokenCopy;
          v23 = lastTokenCopy;
          v24 = v12;
          dispatch_async(notifyQueue, block);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [observers countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  coordinatingObserver = [(BDSUbiquityStatusMonitor *)self coordinatingObserver];
  if (coordinatingObserver && (objc_opt_respondsToSelector() & 1) != 0)
  {
    notifyQueue2 = [(BDSUbiquityStatusMonitor *)self notifyQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001078C;
    v17[3] = &unk_10023F720;
    v18 = tokenCopy;
    v19 = lastTokenCopy;
    v20 = coordinatingObserver;
    dispatch_async(notifyQueue2, v17);
  }
}

- (void)dq_refreshUbiquityAvailabilityStatus
{
  dispatchQueue = [(BDSUbiquityStatusMonitor *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4 = +[BDSICloudIdentityToken tokenForCurrentIdentityIfICloudDriveEnabled];
  currentUbiquityIdentityToken = self->_currentUbiquityIdentityToken;
  self->_currentUbiquityIdentityToken = v4;

  v6 = [BDSICloudIdentityToken alloc];
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 valueForKey:@"ubiquityIdentityToken"];
  v9 = [(BDSICloudIdentityToken *)v6 initFromArchive:v8];
  lastArchivedUbiquityIdentityToken = self->_lastArchivedUbiquityIdentityToken;
  self->_lastArchivedUbiquityIdentityToken = v9;

  v12 = sub_10000DEB0(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    containerIdentifier = [(BDSUbiquityStatusMonitor *)self containerIdentifier];
    v14 = self->_currentUbiquityIdentityToken;
    v15 = self->_lastArchivedUbiquityIdentityToken;
    *buf = 138412802;
    v24 = containerIdentifier;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "BDSUbiquityStatusMonitor: dq_refreshUbiquityAvailabilityStatus container:%@ current::%@ oldToken:%@", buf, 0x20u);
  }

  v16 = self->_currentUbiquityIdentityToken;
  containerQueue = [(BDSUbiquityStatusMonitor *)self containerQueue];
  v18 = containerQueue;
  if (v16)
  {
    v19 = v22;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v20 = sub_100010A54;
  }

  else
  {
    v19 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v20 = sub_100011078;
  }

  v19[2] = v20;
  v19[3] = &unk_10023F6B0;
  v19[4] = self;
  dispatch_async(containerQueue, v19);
}

- (NSURL)containerURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000F754;
  v11 = sub_10000F764;
  v12 = 0;
  containerQueue = [(BDSUbiquityStatusMonitor *)self containerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100011218;
  v6[3] = &unk_10023F910;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(containerQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSURL)documentsURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000F754;
  v11 = sub_10000F764;
  v12 = 0;
  containerQueue = [(BDSUbiquityStatusMonitor *)self containerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100011348;
  v6[3] = &unk_10023F910;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(containerQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([(BDSUbiquityStatusMonitor *)self isICloudDriveEnabled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  containerURL = [(BDSUbiquityStatusMonitor *)self containerURL];
  documentsURL = [(BDSUbiquityStatusMonitor *)self documentsURL];
  v8 = [NSString stringWithFormat:@"<%@(%p) iCloudDrive=%@ containerURL='%@' documentsURL='%@'", v4, self, v5, containerURL, documentsURL];

  return v8;
}

- (BDSUbiquityStatusChangeObserving)coordinatingObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinatingObserver);

  return WeakRetained;
}

@end