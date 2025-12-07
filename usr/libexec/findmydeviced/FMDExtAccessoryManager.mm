@interface FMDExtAccessoryManager
- (BOOL)_cbPoweredOff;
- (FMDAccessoryRegistry)accessoryRegistry;
- (FMDExtAccessoryManager)init;
- (id)_allAccessories;
- (void)configurationUpdated:(id)updated;
- (void)dealloc;
- (void)getAccessoriesWithCompletion:(id)completion;
- (void)startMonitoring;
- (void)startMonitoringAccessories;
- (void)supportedAccessoryTypesUpdated;
- (void)updateAccessoriesDatabaseWithContext:(id)context;
- (void)updateAccessory:(id)accessory;
- (void)updateNotificationReceived:(id)received;
- (void)updateNotificationReceived:(id)received withName:(id)name;
@end

@implementation FMDExtAccessoryManager

- (FMDExtAccessoryManager)init
{
  v12.receiver = self;
  v12.super_class = FMDExtAccessoryManager;
  v2 = [(FMDExtAccessoryManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("FMDExtAccessoryManager.serialQueue", 0);
    [(FMDExtAccessoryManager *)v2 setSerialQueue:v3];

    v4 = dispatch_queue_create("FMDExtAccessoryManager.CBDiscovery.SerialQueue", 0);
    [(FMDExtAccessoryManager *)v2 setBtDiscoverySerialQueue:v4];

    v5 = objc_alloc_init(NSMutableDictionary);
    [(FMDExtAccessoryManager *)v2 setAccessoriesByExtension:v5];

    v6 = +[FMDExtExtensionsDataSource sharedInstance];
    [(FMDExtAccessoryManager *)v2 setExtensionManager:v6];

    v7 = objc_alloc_init(NSMutableSet);
    [(FMDExtAccessoryManager *)v2 setExtensionsAlreadySynced:v7];

    v8 = +[FMDExtConfigurationRegistry sharedInstance];
    [v8 setListner:v2];

    v9 = objc_alloc_init(CBController);
    btController = v2->_btController;
    v2->_btController = v9;
  }

  return v2;
}

- (void)startMonitoring
{
  [(FMDExtAccessoryManager *)self startMonitoringAccessories];
  v4 = @"context";
  v5 = @"daemonLaunch";
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [(FMDExtAccessoryManager *)self updateAccessoriesDatabaseWithContext:v3];
}

- (void)dealloc
{
  btDiscovery = [(FMDExtAccessoryManager *)self btDiscovery];
  [btDiscovery invalidate];

  v4.receiver = self;
  v4.super_class = FMDExtAccessoryManager;
  [(FMDExtAccessoryManager *)&v4 dealloc];
}

- (BOOL)_cbPoweredOff
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  btController = [(FMDExtAccessoryManager *)self btController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001AD468;
  v11[3] = &unk_1002CFCC8;
  v13 = &v14;
  v11[4] = self;
  v5 = v3;
  v12 = v5;
  [btController getControllerInfoWithCompletion:v11];

  v6 = dispatch_time(0, 10000000000);
  v7 = dispatch_group_wait(v5, v6);
  if (v7)
  {
    v8 = sub_10000BE38(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10022D0EC();
    }
  }

  v9 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (void)startMonitoringAccessories
{
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(CBDiscovery);
  btDiscovery = self->_btDiscovery;
  self->_btDiscovery = v3;

  [(CBDiscovery *)self->_btDiscovery setLabel:@"FMDExtAccesoryManager"];
  [(CBDiscovery *)self->_btDiscovery setDiscoveryFlags:0x80000200000];
  btDiscoverySerialQueue = [(FMDExtAccessoryManager *)self btDiscoverySerialQueue];
  [(CBDiscovery *)self->_btDiscovery setDispatchQueue:btDiscoverySerialQueue];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001AD780;
  v9[3] = &unk_1002CFCF0;
  objc_copyWeak(&v10, &location);
  [(CBDiscovery *)self->_btDiscovery setDeviceFoundHandler:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001ADAEC;
  v7[3] = &unk_1002CFCF0;
  objc_copyWeak(&v8, &location);
  [(CBDiscovery *)self->_btDiscovery setDeviceLostHandler:v7];
  [(CBDiscovery *)self->_btDiscovery activateWithCompletion:&stru_1002D0778];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"updateNotificationReceived:" name:@"com.apple.icloud.findmydeviced.findkit.magSafe.added" object:0];
  [v6 addObserver:self selector:"updateNotificationReceived:" name:@"com.apple.icloud.findmydeviced.findkit.magSafe.removed" object:0];
  [v6 addObserver:self selector:"updateNotificationReceived:" name:@"com.apple.icloud.findmydeviced.findkit.magSafe.attach" object:0];
  [v6 addObserver:self selector:"updateNotificationReceived:" name:@"com.apple.icloud.findmydeviced.findkit.magSafe.detach" object:0];
  [v6 addObserver:self selector:"updateNotificationReceived:" name:@"com.apple.accessories.connection.MFi4AccessoryDisconnected" object:0];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)updateNotificationReceived:(id)received
{
  receivedCopy = received;
  v5 = sub_10000BE38(receivedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = receivedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accessory Information changed notification received = %@", buf, 0xCu);
  }

  v6 = +[NSDate date];
  v7 = v6;
  if (qword_100314990 && (v8 = [v6 timeIntervalSinceDate:?], v9 < 1.0))
  {
    name = sub_10000BE38(v8);
    if (os_log_type_enabled(name, OS_LOG_TYPE_DEFAULT))
    {
      [v7 timeIntervalSinceDate:qword_100314990];
      *buf = 134217984;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, name, OS_LOG_TYPE_DEFAULT, "Not updating because time between this and last = %f < 1", buf, 0xCu);
    }
  }

  else
  {
    objc_storeStrong(&qword_100314990, v7);
    name = [receivedCopy name];
    v14[1] = name;
    v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:&v13 count:2];
    [(FMDExtAccessoryManager *)self updateAccessoriesDatabaseWithContext:v12];
  }
}

- (void)updateNotificationReceived:(id)received withName:(id)name
{
  nameCopy = name;
  v6 = +[NSDate date];
  v7 = v6;
  if (qword_100314998 && (v8 = [v6 timeIntervalSinceDate:?], v9 < 1.0))
  {
    v10 = sub_10000BE38(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      [v7 timeIntervalSinceDate:qword_100314998];
      *buf = 134217984;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not updating because time between this and last = %f < 1", buf, 0xCu);
    }
  }

  else
  {
    objc_storeStrong(&qword_100314998, v7);
    v12[0] = @"context";
    v12[1] = @"notificationName";
    v13[0] = @"receivedNotificaiton";
    v13[1] = nameCopy;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    [(FMDExtAccessoryManager *)self updateAccessoriesDatabaseWithContext:v10];
  }
}

- (void)updateAccessoriesDatabaseWithContext:(id)context
{
  contextCopy = context;
  v3 = sub_10000BE38(contextCopy);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = contextCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "updateAccessoriesDatabase called with context %@", buf, 0xCu);
  }

  v4 = +[FMDSystemConfig sharedInstance];
  unlockState = [v4 unlockState];

  if (unlockState == 1)
  {
    v7 = sub_100002880(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDExtAccessoryManager skipping updateAccessoriesDatabase before first unlock", buf, 2u);
    }
  }

  else
  {
    v8 = +[FMDExtExtensionHelper getAllExtensions];
    v9 = sub_10000BE38(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "extension IDList = %@", buf, 0xCu);
    }

    accessoryRegistry = [(FMDExtAccessoryManager *)self accessoryRegistry];
    v11 = sub_10000BE38(accessoryRegistry);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = accessoryRegistry;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ext: Registry %@", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v8;
    v12 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [FMDExtExtensionHelper getAccessoryProxyForId:v16 withDelegate:0];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_1001AE3F8;
          v20[3] = &unk_1002D07C8;
          v20[4] = v16;
          v20[5] = self;
          v21 = accessoryRegistry;
          [v17 fetchAllAccessoriesInfoWithInfo:contextCopy withCompletion:v20];
        }

        v13 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }
}

- (void)updateAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001AF2A8;
  v7[3] = &unk_1002CD478;
  v8 = accessoryCopy;
  selfCopy = self;
  v6 = accessoryCopy;
  dispatch_async(v5, v7);
}

- (id)_allAccessories
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AB14;
  v11 = sub_100002B54;
  v12 = objc_alloc_init(NSMutableArray);
  serialQueue = [(FMDExtAccessoryManager *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001AFD90;
  v6[3] = &unk_1002CE5F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)getAccessoriesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [NSArray alloc];
  _allAccessories = [(FMDExtAccessoryManager *)self _allAccessories];
  v7 = [v5 initWithArray:_allAccessories copyItems:1];

  serialQueue = [(FMDExtAccessoryManager *)self serialQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001AFFC4;
  v11[3] = &unk_1002CE228;
  v12 = v7;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = v7;
  dispatch_async(serialQueue, v11);
}

- (void)configurationUpdated:(id)updated
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = updated;
  v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        _allAccessories = [(FMDExtAccessoryManager *)self _allAccessories];
        v7 = [_allAccessories countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v18;
          do
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v18 != v9)
              {
                objc_enumerationMutation(_allAccessories);
              }

              v11 = *(*(&v17 + 1) + 8 * j);
              accessoryType = [v11 accessoryType];
              v13 = [accessoryType isEqualToString:v5];

              if (v13)
              {
                [(FMDExtAccessoryManager *)self updateAccessory:v11];
              }
            }

            v8 = [_allAccessories countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v8);
        }
      }

      v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }
}

- (void)supportedAccessoryTypesUpdated
{
  v4 = @"context";
  v5 = @"supportedAccessoryTypesUpdated";
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [(FMDExtAccessoryManager *)self updateAccessoriesDatabaseWithContext:v3];
}

- (FMDAccessoryRegistry)accessoryRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryRegistry);

  return WeakRetained;
}

@end