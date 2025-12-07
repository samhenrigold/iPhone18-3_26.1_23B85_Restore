@interface DSStorageDataServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DSStorageDataServiceDelegate)init;
@end

@implementation DSStorageDataServiceDelegate

- (DSStorageDataServiceDelegate)init
{
  v6.receiver = self;
  v6.super_class = DSStorageDataServiceDelegate;
  v2 = [(DSStorageDataServiceDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    connections = v2->_connections;
    v2->_connections = v3;
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_100000D18(connectionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New connection from pid %d ", &buf, 8u);
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.storage-data"];

  if (v9)
  {
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STStorageDataServiceProtocol];
    [connectionCopy setExportedInterface:v11];

    v12 = objc_opt_new();
    [connectionCopy setExportedObject:v12];
    [connectionCopy resume];
    [(NSMutableSet *)self->_connections addObject:connectionCopy];
    objc_initWeak(&buf, connectionCopy);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000010F0;
    v14[3] = &unk_100004178;
    objc_copyWeak(&v15, &buf);
    v14[4] = self;
    [connectionCopy setInvalidationHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&buf);
  }

  else
  {
    v12 = sub_100000D18(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000012E8(connectionCopy, v12);
    }
  }

  return v9 != 0;
}

@end