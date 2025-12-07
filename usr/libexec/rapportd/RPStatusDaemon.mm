@interface RPStatusDaemon
+ (id)sharedStatusDaemon;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RPStatusDaemon)init;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_invalidate;
- (void)_invalidated;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)invalidate;
@end

@implementation RPStatusDaemon

+ (id)sharedStatusDaemon
{
  if (qword_1001D6590 != -1)
  {
    sub_10012AF9C();
  }

  v3 = qword_1001D6588;

  return v3;
}

- (RPStatusDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPStatusDaemon;
  v2 = [(RPStatusDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  if (level < 21)
  {
    v31 = 0;
    NSAppendPrintF(&v31, "-- RPStatusDaemon --\n");
    v4 = v31;
    v5 = [(NSMutableSet *)self->_xpcConnections count];
    if (v5)
    {
      v30 = v4;
      NSAppendPrintF(&v30, "%d XPC Cnx\n", v5);
      v6 = v30;

      v4 = v6;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = self->_xpcConnections;
    v7 = [(NSMutableSet *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v25 = v4;
          xpcCnx = [v11 xpcCnx];
          NSAppendPrintF(&v25, "    %#{pid}", [xpcCnx processIdentifier]);
          v13 = v25;

          subscriber = [v11 subscriber];
          if (subscriber)
          {
            v24 = v13;
            v15 = CUDescriptionWithLevel();
            NSAppendPrintF(&v24, ", %@", v15);
            v16 = v24;

            v13 = v16;
          }

          provider = [v11 provider];
          if (provider)
          {
            v23 = v13;
            v18 = CUDescriptionWithLevel();
            NSAppendPrintF(&v23, ", %@", v18);
            v19 = v23;

            v13 = v19;
          }

          v22 = v13;
          NSAppendPrintF(&v22, "\n");
          v4 = v22;
        }

        v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v4 = NSPrintF("RPPeopleDaemon %{ptr}", a2, self);
  }

  return v4;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB43C;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (dword_1001D4D10 <= 30)
  {
    if (dword_1001D4D10 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10012AFB0(self, a2, v2);
    }
  }

  if (!selfCopy->_xpcListener)
  {
    v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.rapport.StatusUpdates"];
    xpcListener = selfCopy->_xpcListener;
    selfCopy->_xpcListener = v4;

    [(NSXPCListener *)selfCopy->_xpcListener setDelegate:selfCopy];
    [(NSXPCListener *)selfCopy->_xpcListener _setQueue:selfCopy->_dispatchQueue];
    [(NSXPCListener *)selfCopy->_xpcListener resume];
  }

  if (!selfCopy->_messenger)
  {
    v6 = +[RPCompanionLinkDaemon sharedCompanionLinkDaemon];
    messenger = selfCopy->_messenger;
    selfCopy->_messenger = v6;

    v9 = @"statusFlags";
    v10 = &off_1001B8050;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [(RPMessageable *)selfCopy->_messenger registerEventID:@"_statusInfo" options:v8 handler:&stru_1001AF390];
  }

  [(RPStatusDaemon *)selfCopy prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BB6B8;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    v9 = v3;
    selfCopy = self;
    self->_invalidateCalled = 1;
    if (dword_1001D4D10 <= 30)
    {
      if (dword_1001D4D10 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10012AFCC(self, a2, v2);
      }
    }

    [(RPMessageable *)selfCopy->_messenger deregisterEventID:@"_statusInfo", v4, v9, v5];
    [(NSXPCListener *)selfCopy->_xpcListener invalidate];
    xpcListener = selfCopy->_xpcListener;
    selfCopy->_xpcListener = 0;

    [(RPStatusDaemon *)selfCopy _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    if (dword_1001D4D10 <= 30)
    {
      if (dword_1001D4D10 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_10012AFE8(v3, v4, v5);
      }
    }
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [[RPStatusUpdatableXPCConnection alloc] initWithDaemon:self xpcCnx:connectionCopy];
  [(RPStatusUpdatableXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  v10 = self->_xpcClientInterface;
  if (!v10)
  {
    v32 = [NSSet alloc];
    v30 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v32 initWithObjects:{v30, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPStatusUpdatableXPCClientInterface];
    [(NSXPCInterface *)v10 setClasses:v17 forSelector:"xpcStatusUpdatableGiveStatusUpdate:peerDevice:currentState:statusInfo:" argumentIndex:1 ofReply:0];
    objc_storeStrong(&self->_xpcClientInterface, v10);
  }

  v18 = self->_xpcDaemonInterface;
  if (!v18)
  {
    v33 = [NSSet alloc];
    v31 = objc_opt_class();
    v29 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v33 initWithObjects:{v31, v29, v19, v20, v21, v22, v23, objc_opt_class(), 0}];
    v25 = [NSSet alloc];
    v26 = objc_opt_class();
    v27 = [v25 initWithObjects:{v26, objc_opt_class(), 0}];
    v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RPStatusUpdatableXPCDaemonInterface];
    [(NSXPCInterface *)v18 setClasses:v27 forSelector:"xpcStatusSubscriberActivate:completion:" argumentIndex:0 ofReply:1];
    [(NSXPCInterface *)v18 setClasses:v27 forSelector:"xpcStatusProviderActivate:completion:" argumentIndex:0 ofReply:1];
    [(NSXPCInterface *)v18 setClasses:v24 forSelector:"xpcStatusUpdatableProvideStatus:statusInfo:" argumentIndex:0 ofReply:0];
    [(NSXPCInterface *)v18 setClass:objc_opt_class() forSelector:"xpcStatusUpdatableCancelProvideStatus:" argumentIndex:0 ofReply:0];
    [(NSXPCInterface *)v18 setClass:objc_opt_class() forSelector:"xpcStatusUpdatableSubscribeToStatus:" argumentIndex:0 ofReply:0];
    [(NSXPCInterface *)v18 setClass:objc_opt_class() forSelector:"xpcStatusUpdatableUnsubscribeToStatus:" argumentIndex:0 ofReply:0];
    objc_storeStrong(&self->_xpcDaemonInterface, v18);
  }

  [connectionCopy setExportedInterface:v18];
  [connectionCopy setExportedObject:v6];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000BBC84;
  v34[3] = &unk_1001AB488;
  v34[4] = self;
  v34[5] = v6;
  [connectionCopy setInvalidationHandler:v34];
  [connectionCopy setRemoteObjectInterface:v10];
  [connectionCopy _setQueue:self->_dispatchQueue];
  [connectionCopy resume];
  if (dword_1001D4D10 <= 20 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B004(connectionCopy);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  dispatchQueue = self->_dispatchQueue;
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(dispatchQueue);
  [invalidatedCopy connectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:invalidatedCopy];

  [(RPStatusDaemon *)self _update];
}

@end