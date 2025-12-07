@interface PRRangingService
+ (id)serviceWithQueue:(id)queue;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (BOOL)validateClientEntitlements:(id)entitlements;
- (PRRangingService)initWithQueue:(id)queue;
- (void)handleXPCDisconnection:(id)disconnection;
@end

@implementation PRRangingService

- (PRRangingService)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PRRangingService.mm" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  v12.receiver = self;
  v12.super_class = PRRangingService;
  v7 = [(PRRangingService *)&v12 init];
  if (v7)
  {
    v8 = objc_alloc_init(NSMutableSet);
    xpcSessions = v7->_xpcSessions;
    v7->_xpcSessions = v8;

    objc_storeStrong(&v7->_queue, queue);
  }

  return v7;
}

+ (id)serviceWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[PRRangingService alloc] initWithQueue:queueCopy];

  return v4;
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_10049CCBC(v5);
  }

  processIdentifier = [connectionCopy processIdentifier];
  v7 = [(PRRangingService *)self validateClientEntitlements:connectionCopy];
  v8 = qword_1009F9820;
  if (v7)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_100499ACC(processIdentifier, v8);
    }

    v9 = [[PRRangingServiceProxy alloc] initWithConnection:connectionCopy queue:self->_queue];
    [(NSMutableSet *)self->_xpcSessions addObject:v9];
    v10 = sub_1001B26E0();
    [connectionCopy setRemoteObjectInterface:v10];

    v12 = sub_1001B243C(v11);
    [connectionCopy setExportedInterface:v12];

    [connectionCopy setExportedObject:v9];
    [connectionCopy _setQueue:self->_queue];
    objc_initWeak(&location, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10003D278;
    v20[3] = &unk_10098B138;
    v23 = processIdentifier;
    objc_copyWeak(&v22, &location);
    v13 = v9;
    v21 = v13;
    [connectionCopy setInterruptionHandler:v20];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003D358;
    v16[3] = &unk_10098B138;
    v19 = processIdentifier;
    objc_copyWeak(&v18, &location);
    v14 = v13;
    v17 = v14;
    [connectionCopy setInvalidationHandler:v16];
    [connectionCopy resume];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_10049CD00(processIdentifier, v8);
  }

  return v7;
}

- (void)handleXPCDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  if (!disconnectionCopy)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PRRangingService.mm" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"proxy"}];
  }

  clientInfo = [disconnectionCopy clientInfo];
  if (clientInfo)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [clientInfo objectForKey:PRProcessNameKey];
      v9 = [clientInfo objectForKey:PRProcessIdentifierKey];
      *buf = 138412546;
      v12 = v8;
      v13 = 1024;
      intValue = [v9 intValue];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PRGenericRangingService: XPC connection teardown. Process name: %@, pid: %d", buf, 0x12u);
    }
  }

  [disconnectionCopy terminate];
  [(NSMutableSet *)self->_xpcSessions removeObject:disconnectionCopy];
}

- (BOOL)validateClientEntitlements:(id)entitlements
{
  v3 = [entitlements valueForEntitlement:@"com.apple.nearbyd.xpc"];
  v4 = 0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue])
    {
      v4 = 1;
    }
  }

  return v4;
}

@end