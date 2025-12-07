@interface CSDRelayCallProviderManagerDataSource
- (BOOL)_relayHostDeviceIdentifierChanged;
- (BOOL)removeAllCallProvidersForIDSDeviceIdentifier:(id)identifier;
- (BOOL)removeCallProviderForIdentifier:(id)identifier;
- (BOOL)updateCallProvider:(id)provider forIdentifier:(id)identifier;
- (CSDRelayCallProviderManagerDataSource)initWithSerialQueue:(id)queue;
- (CSDRelayCallProviderManagerDataSourceDelegate)delegate;
- (id)_getIdsIdentifierForHostRelayDevice;
- (id)fetchCallProvidersForIDSDeviceIdentifier:(id)identifier;
- (void)handleCallProviderKVSChange:(id)change;
- (void)handleIDSDeviceListChange:(id)change;
- (void)handleOutgoingCallerIDChange:(id)change;
- (void)registerForCallProviderKVSNotification;
- (void)syncRelayCallProvidersWithKVS;
@end

@implementation CSDRelayCallProviderManagerDataSource

- (CSDRelayCallProviderManagerDataSource)initWithSerialQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = CSDRelayCallProviderManagerDataSource;
  v6 = [(CSDRelayCallProviderManagerDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)registerForCallProviderKVSNotification
{
  v7 = objc_alloc_init(TUFeatureFlags);
  if ([v7 isDualSimParityEnabled])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"handleCallProviderKVSChange:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"handleOutgoingCallerIDChange:" name:TUCallCapabilitiesOutgoingRelayCallerIDChangedNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"handleIDSDeviceListChange:" name:@"CSDIDSDeviceListChangedNotification" object:0];

    v6 = +[CSDCallProviderKVS sharedInstance];
    [v6 synchronize];

    [(CSDRelayCallProviderManagerDataSource *)self syncRelayCallProvidersWithKVS];
  }
}

- (void)handleCallProviderKVSChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:NSUbiquitousKeyValueStoreChangeReasonKey];
  unsignedIntValue = [v5 unsignedIntValue];

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithUnsignedInteger:unsignedIntValue];
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Relay call providers changed due to reason = %@", buf, 0xCu);
  }

  if (unsignedIntValue <= 1)
  {
    if (!unsignedIntValue)
    {
      v11 = sub_100004778(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "Relay call providers changed due to reason = NSUbiquitousKeyValueStoreServerChange";
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if (unsignedIntValue == 1)
    {
      v11 = sub_100004778(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "Relay call providers changed due to reason = NSUbiquitousKeyValueStoreInitialSyncChange";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (unsignedIntValue != 2)
  {
    if (unsignedIntValue == 3)
    {
      v11 = sub_100004778(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "Relay call providers changed due to reason = NSUbiquitousKeyValueStoreAccountChange";
        goto LABEL_14;
      }

LABEL_15:
    }

LABEL_16:
    queue = [(CSDRelayCallProviderManagerDataSource *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B37E0;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_async(queue, block);

    return;
  }

  v14 = sub_100004778(v10);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Relay call providers changed due to reason = NSUbiquitousKeyValueStoreQuotaViolationChange", buf, 2u);
  }
}

- (void)handleOutgoingCallerIDChange:(id)change
{
  v4 = sub_100004778(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification indicating change in outgoing caller ID", buf, 2u);
  }

  queue = [(CSDRelayCallProviderManagerDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B38EC;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleIDSDeviceListChange:(id)change
{
  v4 = sub_100004778(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification indicating change in IDS device list", buf, 2u);
  }

  queue = [(CSDRelayCallProviderManagerDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B3A30;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_relayHostDeviceIdentifierChanged
{
  v3 = +[TUCallCapabilities supportsPrimaryCalling];
  if (v3)
  {
    v4 = sub_100004778(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not updating call providers on primary calling device", v11, 2u);
    }

    return 0;
  }

  else
  {
    v6 = +[NSUserDefaults tu_defaults];
    v7 = [v6 stringForKey:@"kLastKnownOutgoingCallerDeviceIdentifier"];

    _getIdsIdentifierForHostRelayDevice = [(CSDRelayCallProviderManagerDataSource *)self _getIdsIdentifierForHostRelayDevice];
    if (_getIdsIdentifierForHostRelayDevice && ([v7 isEqualToString:_getIdsIdentifierForHostRelayDevice] & 1) == 0)
    {
      v9 = +[NSUserDefaults tu_defaults];
      [v9 setObject:_getIdsIdentifierForHostRelayDevice forKey:@"kLastKnownOutgoingCallerDeviceIdentifier"];

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)syncRelayCallProvidersWithKVS
{
  queue = [(CSDRelayCallProviderManagerDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B3C44;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_getIdsIdentifierForHostRelayDevice
{
  v2 = +[TUCallCapabilities outgoingRelayCallerID];
  v3 = +[CSDRelayIDSService sharedInstance];
  devices = [v3 devices];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = devices;
  v22 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (!v22)
  {

LABEL_21:
    v18 = sub_100004778(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100479214(v2, v5, v18);
    }

    v6 = 0;
    goto LABEL_24;
  }

  v6 = 0;
  obj = v5;
  v21 = *v28;
  do
  {
    for (i = 0; i != v22; i = i + 1)
    {
      if (*v28 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v27 + 1) + 8 * i);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      linkedUserURIs = [v8 linkedUserURIs];
      v10 = [linkedUserURIs countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        while (2)
        {
          for (j = 0; j != v11; j = j + 1)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(linkedUserURIs);
            }

            _stripFZIDPrefix = [*(*(&v23 + 1) + 8 * j) _stripFZIDPrefix];
            v15 = [v2 isEqualToString:_stripFZIDPrefix];

            if (v15)
            {
              uniqueIDOverride = [v8 uniqueIDOverride];

              v6 = uniqueIDOverride;
              goto LABEL_16;
            }
          }

          v11 = [linkedUserURIs countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    v5 = obj;
    v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  }

  while (v22);

  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_24:

  return v6;
}

- (id)fetchCallProvidersForIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CSDCallProviderKVS sharedInstance];
  v5 = [v4 fetchCallProvidersForIDSDeviceIdentifier:identifierCopy];

  return v5;
}

- (BOOL)removeAllCallProvidersForIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CSDCallProviderKVS sharedInstance];
  v5 = [v4 removeAllCallProvidersForIDSDeviceIdentifier:identifierCopy];

  return v5;
}

- (BOOL)removeCallProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[CSDCallProviderKVS sharedInstance];
  v5 = [v4 removeCallProviderForIdentifier:identifierCopy];

  return v5;
}

- (BOOL)updateCallProvider:(id)provider forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  providerCopy = provider;
  v7 = +[CSDCallProviderKVS sharedInstance];
  v8 = [v7 updateCallProvider:providerCopy forIdentifier:identifierCopy];

  return v8;
}

- (CSDRelayCallProviderManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end