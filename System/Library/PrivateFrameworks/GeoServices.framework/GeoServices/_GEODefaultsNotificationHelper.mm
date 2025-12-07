@interface _GEODefaultsNotificationHelper
- (void)_notifyPeerOfChangedKeys:(id)keys options:(unint64_t)options;
- (void)geoXPCConnectionIsReadyToSend:(id)send;
@end

@implementation _GEODefaultsNotificationHelper

- (void)geoXPCConnectionIsReadyToSend:(id)send
{
  sendCopy = send;
  WeakRetained = objc_loadWeakRetained(&self->_peer);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    connection = [WeakRetained connection];

    if (connection == sendCopy)
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = sub_1000304A0;
      v22 = sub_1000304B0;
      v23 = 0;
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x2020000000;
      v17 = 0;
      v8 = v6;
      v15 = v8;
      geo_isolate_sync();
      if ([v19[5] count] && v25[3])
      {
        v9 = GEOGetUserDefaultsLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          allObjects = [v19[5] allObjects];
          v11 = [allObjects componentsJoinedByString:{@", "}];
          *buf = 138412546;
          v29 = v8;
          v30 = 2114;
          v31 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Notifying peer %@ of changed keys: %{public}@", buf, 0x16u);
        }

        v12 = [[GEOConfigKeyChangeNotification alloc] initWithTraits:0 auditToken:0 throttleToken:0];
        allObjects2 = [v19[5] allObjects];
        [v12 setKeyStrings:allObjects2];

        [v12 setKeyOptions:v25[3]];
        connection2 = [v8 connection];
        [v12 send:connection2];
      }

      _Block_object_dispose(v16, 8);
      _Block_object_dispose(&v18, 8);

      _Block_object_dispose(&v24, 8);
    }
  }
}

- (void)_notifyPeerOfChangedKeys:(id)keys options:(unint64_t)options
{
  keysCopy = keys;
  WeakRetained = objc_loadWeakRetained(&self->_peer);
  if (WeakRetained)
  {
    v7 = keysCopy;
    v8 = WeakRetained;
    geo_isolate_sync();
  }
}

@end