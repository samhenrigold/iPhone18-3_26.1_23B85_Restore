@interface ServiceDelegate
- (BOOL)isConnectionEntitled:(id)entitled;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = TULockdownModeEnabled();
  v9 = [(ServiceDelegate *)self isConnectionEntitled:connectionCopy];
  v10 = v9;
  v11 = FTDefaultLog(v9);
  v12 = v11;
  v13 = v10 ^ 1 | v8;
  if (v13)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000381D0(connectionCopy, v8 & 1, v12);
    }

    [connectionCopy invalidate];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = connectionCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Accepting the connection since it is entitled %@", &buf, 0xCu);
    }

    v14 = +[TUMomentsControllerXPCClient momentsControllerClientXPCInterface];
    [connectionCopy setRemoteObjectInterface:v14];

    v15 = +[TUMomentsControllerXPCClient momentsControllerServerXPCInterface];
    [connectionCopy setExportedInterface:v15];

    v16 = objc_alloc_init(FTMomentsController);
    [(FTMomentsController *)v16 setup];
    [connectionCopy setExportedObject:v16];
    queue = [(FTMomentsController *)v16 queue];
    [connectionCopy _setQueue:queue];

    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    [(FTMomentsController *)v16 setClientObject:remoteObjectProxy];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x3042000000;
    v24 = sub_1000024D0;
    v25 = sub_1000024DC;
    objc_initWeak(v26, v16);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000024E4;
    v21[3] = &unk_100050F68;
    v21[4] = &buf;
    [connectionCopy setInvalidationHandler:v21];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100002530;
    v20[3] = &unk_100050F68;
    v20[4] = &buf;
    [connectionCopy setInterruptionHandler:v20];
    _Block_object_dispose(&buf, 8);
    objc_destroyWeak(v26);

    [connectionCopy resume];
  }

  return (v13 ^ 1) & 1;
}

- (BOOL)isConnectionEntitled:(id)entitled
{
  entitledCopy = entitled;
  v4 = [entitledCopy valueForEntitlement:@"com.apple.FTLivePhotoService"];
  if (!v4)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v8 = FTDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      processName = [entitledCopy processName];
      v12 = 138413058;
      v13 = @"com.apple.FTLivePhotoService";
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = processName;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Entitlement for key '%@' is non-nil but is of class %@ rather than an NSArray (%@), so assuming process %@ has no entitlements", &v12, 0x2Au);
    }

    goto LABEL_7;
  }

  v6 = [NSSet setWithArray:v4];
  v7 = [v6 containsObject:@"modify-moments"];

LABEL_8:
  return v7;
}

@end