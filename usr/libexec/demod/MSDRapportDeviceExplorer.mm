@interface MSDRapportDeviceExplorer
- (MSDRapportDeviceExplorer)initWithObserver:(id)observer;
- (MSDRapportDeviceExplorerProtocol)observer;
- (id)_findMatchingMSDRapportDeviceForRPCompanionLinkDevice:(id)device;
- (void)_activate;
- (void)_deactivate;
- (void)_handleRPCompanionLinkDeviceChanged:(id)changed withChanges:(unsigned int)changes;
- (void)_handleRPCompanionLinkDeviceFound:(id)found;
- (void)_handleRPCompanionLinkDeviceLost:(id)lost;
- (void)activate;
- (void)deactivate;
@end

@implementation MSDRapportDeviceExplorer

- (MSDRapportDeviceExplorer)initWithObserver:(id)observer
{
  observerCopy = observer;
  v9.receiver = self;
  v9.super_class = MSDRapportDeviceExplorer;
  v5 = [(MSDRapportDeviceExplorer *)&v9 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MobileStoreDemo.RPDeviceExplorer", 0);
    [(MSDRapportDeviceExplorer *)v5 setQueue:v6];

    v7 = [NSMutableArray arrayWithCapacity:0];
    [(MSDRapportDeviceExplorer *)v5 setDevices:v7];

    [(MSDRapportDeviceExplorer *)v5 setObserver:observerCopy];
  }

  return v5;
}

- (void)activate
{
  objc_initWeak(&location, self);
  queue = [(MSDRapportDeviceExplorer *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000459CC;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)deactivate
{
  objc_initWeak(&location, self);
  queue = [(MSDRapportDeviceExplorer *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100045AD4;
  v4[3] = &unk_100169C78;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_activate
{
  queue = [(MSDRapportDeviceExplorer *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100063A54(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceExplorer: Activating explorer!", buf, 2u);
  }

  rpClient = [(MSDRapportDeviceExplorer *)self rpClient];

  if (!rpClient)
  {
    objc_initWeak(buf, self);
    v7 = objc_alloc_init(RPCompanionLinkClient);
    [(MSDRapportDeviceExplorer *)self setRpClient:v7];

    queue2 = [(MSDRapportDeviceExplorer *)self queue];
    rpClient2 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient2 setDispatchQueue:queue2];

    rpClient3 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient3 setControlFlags:74758];

    rpClient4 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient4 setFlags:1];

    rpClient5 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient5 setPasswordType:2];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100045F84;
    v29[3] = &unk_100169C78;
    objc_copyWeak(&v30, buf);
    rpClient6 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient6 setInterruptionHandler:v29];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100045FE0;
    v27[3] = &unk_100169C78;
    objc_copyWeak(&v28, buf);
    rpClient7 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient7 setInvalidationHandler:v27];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10004603C;
    v25[3] = &unk_10016AD10;
    objc_copyWeak(&v26, buf);
    rpClient8 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient8 setDeviceFoundHandler:v25];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100046098;
    v23[3] = &unk_10016AD10;
    objc_copyWeak(&v24, buf);
    rpClient9 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient9 setDeviceLostHandler:v23];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000460F4;
    v21[3] = &unk_10016AD38;
    objc_copyWeak(&v22, buf);
    rpClient10 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient10 setDeviceChangedHandler:v21];

    rpClient11 = [(MSDRapportDeviceExplorer *)self rpClient];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100046160;
    v19[3] = &unk_10016A178;
    objc_copyWeak(&v20, buf);
    [rpClient11 activateWithCompletion:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(buf);
  }
}

- (void)_deactivate
{
  queue = [(MSDRapportDeviceExplorer *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100063A54(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceExplorer: Deactivating explorer!", buf, 2u);
  }

  rpClient = [(MSDRapportDeviceExplorer *)self rpClient];

  if (rpClient)
  {
    rpClient2 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient2 setInterruptionHandler:0];

    rpClient3 = [(MSDRapportDeviceExplorer *)self rpClient];
    [rpClient3 invalidate];

    [(MSDRapportDeviceExplorer *)self setRpClient:0];
    devices = [(MSDRapportDeviceExplorer *)self devices];
    v10 = [NSArray arrayWithArray:devices];

    devices2 = [(MSDRapportDeviceExplorer *)self devices];
    [devices2 removeAllObjects];

    observer = [(MSDRapportDeviceExplorer *)self observer];

    if (observer)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v21;
        do
        {
          v17 = 0;
          do
          {
            if (*v21 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v20 + 1) + 8 * v17);
            observer2 = [(MSDRapportDeviceExplorer *)self observer];
            [observer2 explorerDidLoseDevice:v18];

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v15);
      }
    }
  }
}

- (id)_findMatchingMSDRapportDeviceForRPCompanionLinkDevice:(id)device
{
  deviceCopy = device;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  devices = [(MSDRapportDeviceExplorer *)self devices];
  v6 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEqualToRPCompanionLinkDevice:deviceCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)_handleRPCompanionLinkDeviceFound:(id)found
{
  foundCopy = found;
  queue = [(MSDRapportDeviceExplorer *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D1CA4();
  }

  statusFlags = [foundCopy statusFlags];
  statusFlags2 = [foundCopy statusFlags];
  if (!(statusFlags & 0x80000000 | (statusFlags2 & 0x8000)))
  {
    v10 = sub_100063A54(statusFlags2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D1D50();
    }

    goto LABEL_18;
  }

  if ((statusFlags & 0x80000000) != 0 && (statusFlags2 & 0x8000) != 0)
  {
    v10 = sub_100063A54(statusFlags2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D1D14();
    }

    goto LABEL_18;
  }

  v11 = [(MSDRapportDeviceExplorer *)self _findMatchingMSDRapportDeviceForRPCompanionLinkDevice:foundCopy];
  v10 = v11;
  if (!v11)
  {
    observer4 = [[MSDRapportDevice alloc] initWithRPCompanionLinkDevice:foundCopy];
    devices = [(MSDRapportDeviceExplorer *)self devices];
    [devices addObject:observer4];

    observer = [(MSDRapportDeviceExplorer *)self observer];

    if (observer)
    {
      observer2 = [(MSDRapportDeviceExplorer *)self observer];
      [observer2 explorerDidFindDevice:observer4];
    }

    goto LABEL_17;
  }

  v12 = sub_100063A54(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MSDRapportDeviceExplorer: Received duplicated device. Renewing its RPCompanionLinkDevice.", v18, 2u);
  }

  [v10 renewRPCompanionLinkDevice:foundCopy];
  [v10 setDroppedByRapport:0];
  observer3 = [(MSDRapportDeviceExplorer *)self observer];

  if (observer3)
  {
    observer4 = [(MSDRapportDeviceExplorer *)self observer];
    [(MSDRapportDevice *)observer4 explorerDidUpdateDevice:v10];
LABEL_17:
  }

LABEL_18:
}

- (void)_handleRPCompanionLinkDeviceLost:(id)lost
{
  lostCopy = lost;
  queue = [(MSDRapportDeviceExplorer *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100063A54(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D1D8C();
  }

  v8 = [(MSDRapportDeviceExplorer *)self _findMatchingMSDRapportDeviceForRPCompanionLinkDevice:lostCopy];
  v9 = v8;
  if (v8)
  {
    [v8 setDroppedByRapport:1];
    v10 = dispatch_time(0, 1000000000);
    queue2 = [(MSDRapportDeviceExplorer *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004691C;
    v12[3] = &unk_10016A258;
    v13 = v9;
    selfCopy = self;
    dispatch_after(v10, queue2, v12);
  }
}

- (void)_handleRPCompanionLinkDeviceChanged:(id)changed withChanges:(unsigned int)changes
{
  changedCopy = changed;
  queue = [(MSDRapportDeviceExplorer *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100063A54(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D1DFC();
  }

  [(MSDRapportDeviceExplorer *)self _findMatchingMSDRapportDeviceForRPCompanionLinkDevice:changedCopy];
}

- (MSDRapportDeviceExplorerProtocol)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end