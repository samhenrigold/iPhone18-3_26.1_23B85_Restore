@interface EPScalablePipeManagerManager
- (EPScalablePipeManagerManager)initWithName:(id)name type:(int64_t)type priority:(int64_t)priority;
- (id)newResourceWithDelegate:(id)delegate;
- (void)createResource;
- (void)destroyResource;
- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error;
- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)scalablePipeManagerDidUpdateState:(id)state;
- (void)setIsConnected:(BOOL)connected;
- (void)update;
@end

@implementation EPScalablePipeManagerManager

- (void)createResource
{
  v7.receiver = self;
  v7.super_class = EPScalablePipeManagerManager;
  [(EPResourceManager *)&v7 createResource];
  v3 = [CBScalablePipeManager alloc];
  queue = [(EPResourceManager *)self queue];
  v5 = [v3 initWithDelegate:self queue:queue];
  manager = self->_manager;
  self->_manager = v5;

  [(EPScalablePipeManagerManager *)self update];
}

- (void)destroyResource
{
  v10.receiver = self;
  v10.super_class = EPScalablePipeManagerManager;
  destroyResource = [(EPResourceManager *)&v10 destroyResource];
  if (self->_didRequestEndpoint)
  {
    self->_didRequestEndpoint = 0;
    v4 = sub_1000A98C0(destroyResource);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = sub_1000A98C0(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        *buf = 138412290;
        v12 = name;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPScalablePipeManagerManager: Calling CoreBluetooth unregisterEndpoint: %@", buf, 0xCu);
      }
    }

    [(CBScalablePipeManager *)self->_manager unregisterEndpoint:self->_name];
  }

  manager = self->_manager;
  self->_manager = 0;
}

- (void)setIsConnected:(BOOL)connected
{
  if (self->_isConnected != connected)
  {
    v7 = v3;
    v8 = v4;
    self->_isConnected = connected;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000CB874;
    v5[3] = &unk_100179410;
    connectedCopy = connected;
    [(EPResourceManager *)self enumerateResourcesWithBlock:v5];
  }
}

- (EPScalablePipeManagerManager)initWithName:(id)name type:(int64_t)type priority:(int64_t)priority
{
  nameCopy = name;
  v10 = +[EPFactory queue];
  v13.receiver = self;
  v13.super_class = EPScalablePipeManagerManager;
  v11 = [(EPResourceManager *)&v13 initWithQueue:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v11->_type = type;
    v11->_priority = priority;
  }

  return v11;
}

- (id)newResourceWithDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = EPScalablePipeManagerManager;
  v4 = [(EPResourceManager *)&v6 newResourceWithDelegate:delegate];
  [v4 setIsConnected:{-[EPScalablePipeManagerManager isConnected](self, "isConnected")}];

  return v4;
}

- (void)update
{
  if (![(EPResourceManager *)self needsResource])
  {
    if (self->_endpointIsRegistered)
    {
      self->_endpointIsRegistered = 0;
      state = [(CBScalablePipeManager *)self->_manager state];
      if (state == 5 || (state = [(CBScalablePipeManager *)self->_manager state], state == 10))
      {
        v13 = sub_1000A98C0(state);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

        if (v14)
        {
          v16 = sub_1000A98C0(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            name = self->_name;
            *buf = 138412290;
            v27 = name;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPScalablePipeManagerManager: Calling CoreBluetooth unregisterEndpoint: %@", buf, 0xCu);
          }
        }

        [(CBScalablePipeManager *)self->_manager unregisterEndpoint:self->_name];
      }
    }

    return;
  }

  state2 = [(CBScalablePipeManager *)self->_manager state];
  v4 = 0;
  if (state2 <= 3)
  {
    if (state2 == 2)
    {
      v22 = NSLocalizedDescriptionKey;
      v23 = @"Bluetooth is not supported";
      v18 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v19 = 3;
    }

    else
    {
      v6 = 0;
      if (state2 != 3)
      {
LABEL_29:
        self->_didRequestEndpoint = 0;
        self->_endpointIsRegistered = 0;
        [(EPScalablePipeManagerManager *)self setIsConnected:0];
        [(EPResourceManager *)self setAvailability:v6 withError:v4];

        return;
      }

      v20 = NSLocalizedDescriptionKey;
      v21 = @"Bluetooth is unauthorized";
      v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v19 = 4;
    }

LABEL_28:
    v4 = [NSError errorWithDomain:@"com.apple.extensiblepair.corebluetooth.scalablepipemanager" code:v19 userInfo:v18];

    v6 = 2;
    goto LABEL_29;
  }

  if (state2 == 4)
  {
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Bluetooth is powered off";
    v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v19 = 2;
    goto LABEL_28;
  }

  v5 = state2 == 10 || state2 == 5;
  v6 = 0;
  if (!v5)
  {
    goto LABEL_29;
  }

  if (!self->_didRequestEndpoint)
  {
    self->_didRequestEndpoint = 1;
    v7 = sub_1000A98C0(state2);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = sub_1000A98C0(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_name;
        *buf = 138412290;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPScalablePipeManagerManager: Calling CoreBluetooth registerEndpoint:type:priority: %@", buf, 0xCu);
      }
    }

    [(CBScalablePipeManager *)self->_manager registerEndpoint:self->_name type:self->_type priority:self->_priority options:0];
  }
}

- (void)scalablePipeManagerDidUpdateState:(id)state
{
  stateCopy = state;
  [(EPScalablePipeManagerManager *)self update];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CBDF0;
  v6[3] = &unk_1001785C0;
  v7 = stateCopy;
  v5 = stateCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v6];
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  managerCopy = manager;
  connectCopy = connect;
  v8 = connectCopy;
  if (self->_manager == managerCopy)
  {
    name = self->_name;
    name = [connectCopy name];
    LODWORD(name) = [(NSString *)name isEqual:name];

    if (name)
    {
      [(EPScalablePipeManagerManager *)self setIsConnected:1];
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000CBF18;
  v13[3] = &unk_100175998;
  v14 = managerCopy;
  v15 = v8;
  v11 = v8;
  v12 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v13];
}

- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint
{
  managerCopy = manager;
  endpointCopy = endpoint;
  if ([endpointCopy isEqual:self->_name])
  {
    self->_didRequestEndpoint = 0;
    self->_endpointIsRegistered = 0;
    [(EPResourceManager *)self setAvailability:0 withError:0];
    [(EPScalablePipeManagerManager *)self update];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CC028;
  v10[3] = &unk_100175998;
  v11 = managerCopy;
  v12 = endpointCopy;
  v8 = endpointCopy;
  v9 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v10];
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  managerCopy = manager;
  disconnectCopy = disconnect;
  errorCopy = error;
  if (self->_manager == managerCopy)
  {
    name = self->_name;
    name = [disconnectCopy name];
    LODWORD(name) = [(NSString *)name isEqual:name];

    if (name)
    {
      [(EPScalablePipeManagerManager *)self setIsConnected:1];
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000CC174;
  v16[3] = &unk_1001759C0;
  v17 = managerCopy;
  v18 = disconnectCopy;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = disconnectCopy;
  v15 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v16];
}

- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error
{
  managerCopy = manager;
  endpointCopy = endpoint;
  errorCopy = error;
  v11 = [endpointCopy isEqual:self->_name];
  if (v11)
  {
    if (errorCopy)
    {
      v12 = sub_1000A98C0(v11);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (v13)
      {
        v15 = sub_1000A98C0(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1001035F0(endpointCopy, errorCopy, v15);
        }
      }

      selfCopy2 = self;
      v17 = 2;
      v18 = errorCopy;
    }

    else
    {
      self->_endpointIsRegistered = 1;
      selfCopy2 = self;
      v17 = 1;
      v18 = 0;
    }

    [(EPResourceManager *)selfCopy2 setAvailability:v17 withError:v18];
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CC30C;
  v22[3] = &unk_1001759C0;
  v23 = managerCopy;
  v24 = endpointCopy;
  v25 = errorCopy;
  v19 = errorCopy;
  v20 = endpointCopy;
  v21 = managerCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v22];
}

@end