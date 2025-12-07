@interface CSDCallProviderKVS
+ (CSDCallProviderKVS)sharedInstance;
- (BOOL)removeAllCallProvidersForIDSDeviceIdentifier:(id)identifier;
- (BOOL)removeCallProviderForIdentifier:(id)identifier;
- (BOOL)updateCallProvider:(id)provider forIdentifier:(id)identifier;
- (CSDCallProviderKVS)initWithCallProviderStore:(id)store queue:(id)queue currentDeviceIdentifier:(id)identifier;
- (id)fetchCallProvidersForIDSDeviceIdentifier:(id)identifier;
- (id)keyForCurrentDeviceCallProviderWithIdentifier:(id)identifier;
- (id)unarchivedObjectClasses;
- (void)synchronize;
@end

@implementation CSDCallProviderKVS

+ (CSDCallProviderKVS)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B88C4;
  block[3] = &unk_10061A860;
  block[4] = self;
  if (qword_1006ACE60 != -1)
  {
    dispatch_once(&qword_1006ACE60, block);
  }

  v2 = qword_1006ACE58;

  return v2;
}

- (CSDCallProviderKVS)initWithCallProviderStore:(id)store queue:(id)queue currentDeviceIdentifier:(id)identifier
{
  storeCopy = store;
  queueCopy = queue;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CSDCallProviderKVS;
  v12 = [(CSDCallProviderKVS *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_callProviderStore, store);
    objc_storeStrong(&v13->_currentDeviceIdsIdentifier, identifier);
    v13->_deviceSupportsPrimaryCalling = +[TUCallCapabilities supportsPrimaryCalling];
  }

  return v13;
}

- (BOOL)updateCallProvider:(id)provider forIdentifier:(id)identifier
{
  providerCopy = provider;
  identifierCopy = identifier;
  deviceSupportsPrimaryCalling = [(CSDCallProviderKVS *)self deviceSupportsPrimaryCalling];
  if (deviceSupportsPrimaryCalling)
  {
    v9 = sub_100004778(deviceSupportsPrimaryCalling);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received request to update call provider for identifier %@", buf, 0xCu);
    }

    identifier = [providerCopy identifier];
    v11 = [identifier isEqualToString:identifierCopy];

    if (v11)
    {
      v27 = 0;
      v12 = [NSKeyedArchiver archivedDataWithRootObject:providerCopy requiringSecureCoding:1 error:&v27];
      v13 = v27;
      v14 = v13;
      if (v12)
      {
        v15 = [(CSDCallProviderKVS *)self keyForCurrentDeviceCallProviderWithIdentifier:identifierCopy];
        if (v15)
        {
          queue = [(CSDCallProviderKVS *)self queue];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_1001B8D38;
          v24[3] = &unk_100619E58;
          v24[4] = self;
          v25 = v12;
          v15 = v15;
          v26 = v15;
          dispatch_sync(queue, v24);

          v18 = sub_100004778(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = identifierCopy;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully updated call provider for identifier %@", buf, 0xCu);
          }

          v20 = sub_100004778(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            sub_100479324(self, v20);
          }

          v21 = 1;
          goto LABEL_19;
        }

        v22 = sub_100004778(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1004793D0();
        }
      }

      else
      {
        v15 = sub_100004778(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100479438();
        }
      }

      v21 = 0;
LABEL_19:

      goto LABEL_20;
    }
  }

  v21 = 0;
LABEL_20:

  return v21;
}

- (BOOL)removeCallProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  deviceSupportsPrimaryCalling = [(CSDCallProviderKVS *)self deviceSupportsPrimaryCalling];
  if (deviceSupportsPrimaryCalling)
  {
    v6 = sub_100004778(deviceSupportsPrimaryCalling);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received request to remove call provider for identifier %@", buf, 0xCu);
    }

    v7 = [(CSDCallProviderKVS *)self keyForCurrentDeviceCallProviderWithIdentifier:identifierCopy];
    v8 = v7 != 0;
    if (v7)
    {
      queue = [(CSDCallProviderKVS *)self queue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001B8F80;
      v14[3] = &unk_100619D88;
      v14[4] = self;
      v15 = v7;
      dispatch_sync(queue, v14);

      v11 = sub_100004778(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully removed call provider for identifier %@", buf, 0xCu);
      }
    }

    else
    {
      v12 = sub_100004778(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1004793D0();
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)removeAllCallProvidersForIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  deviceSupportsPrimaryCalling = [(CSDCallProviderKVS *)self deviceSupportsPrimaryCalling];
  if (deviceSupportsPrimaryCalling)
  {
    queue = [(CSDCallProviderKVS *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001B909C;
    v8[3] = &unk_100619D88;
    v8[4] = self;
    v9 = identifierCopy;
    dispatch_sync(queue, v8);
  }

  return deviceSupportsPrimaryCalling;
}

- (id)fetchCallProvidersForIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004778(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to fetch call provider for IDS identifier %@", buf, 0xCu);
  }

  v6 = +[NSMutableDictionary dictionary];
  queue = [(CSDCallProviderKVS *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B93C8;
  block[3] = &unk_100619E58;
  block[4] = self;
  v8 = identifierCopy;
  v15 = v8;
  v9 = v6;
  v16 = v9;
  dispatch_sync(queue, block);

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully fetched call provider for IDS identifier %@ as %@", buf, 0x16u);
  }

  v12 = [v9 copy];

  return v12;
}

- (void)synchronize
{
  queue = [(CSDCallProviderKVS *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B96E4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)keyForCurrentDeviceCallProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentDeviceIdsIdentifier = [(CSDCallProviderKVS *)self currentDeviceIdsIdentifier];
  v6 = 63 - [currentDeviceIdsIdentifier length];
  if ([identifierCopy length] <= v6)
  {
    v7 = identifierCopy;
  }

  else
  {
    v7 = [identifierCopy substringFromIndex:{objc_msgSend(identifierCopy, "length") - v6}];
  }

  v8 = v7;
  v9 = [NSString stringWithFormat:@"%@/%@", currentDeviceIdsIdentifier, v7];

  return v9;
}

- (id)unarchivedObjectClasses
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [NSSet setWithObjects:v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0];
}

@end