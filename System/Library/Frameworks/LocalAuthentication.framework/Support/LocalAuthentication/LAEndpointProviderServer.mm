@interface LAEndpointProviderServer
+ (BOOL)handleConnection:(id)connection;
- (void)provideEndpoint:(int64_t)endpoint uid:(unsigned int)uid reply:(id)reply;
@end

@implementation LAEndpointProviderServer

+ (BOOL)handleConnection:(id)connection
{
  connectionCopy = connection;
  v4 = objc_opt_new();
  objc_storeWeak(v4 + 1, connectionCopy);
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LAProtocolEndpointProviderServer];
  [connectionCopy setExportedInterface:v5];

  [connectionCopy setExportedObject:v4];
  [connectionCopy setInvalidationHandler:&stru_100054FC8];

  return 1;
}

- (void)provideEndpoint:(int64_t)endpoint uid:(unsigned int)uid reply:(id)reply
{
  replyCopy = reply;
  v7 = replyCopy;
  if (endpoint >= 4)
  {
    v9 = sub_1000064CC(replyCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100022844(endpoint, v9);
    }

    v8 = 0;
  }

  else
  {
    v8 = qword_100055070[endpoint];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10000670C;
  v20 = sub_10000671C;
  v21 = 0;
  if (endpoint)
  {
    v10 = [[NSXPCConnection alloc] initWithMachServiceName:v8 options:0];
    _xpcConnection = [v10 _xpcConnection];
    xpc_connection_set_target_uid();

    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LAProtocolEndpointProvider];
    [v10 setRemoteObjectInterface:v12];

    [v10 resume];
    v13 = [v10 synchronousRemoteObjectProxyWithErrorHandler:&stru_100055008];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100006778;
    v15[3] = &unk_100055030;
    v15[4] = &v16;
    [v13 getEndpoint:v15];

    [v10 invalidate];
    v14 = v17[5];
  }

  else
  {
    v14 = 0;
  }

  v7[2](v7, v14);
  _Block_object_dispose(&v16, 8);
}

@end