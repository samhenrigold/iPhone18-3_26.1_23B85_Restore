@interface AirPlayControllerServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_connectionInvalidated:(id)invalidated;
- (void)dealloc;
- (void)getProperty:(id)property qualifier:(id)qualifier completion:(id)completion;
- (void)performCommand:(id)command qualifier:(id)qualifier params:(id)params completion:(id)completion;
- (void)postEvent:(id)event qualifier:(id)qualifier params:(id)params completion:(id)completion;
- (void)setDispatchQueue:(id)queue;
- (void)setProperty:(id)property qualifier:(id)qualifier value:(id)value completion:(id)completion;
- (void)startWithXPCName:(id)name;
@end

@implementation AirPlayControllerServer

- (void)setProperty:(id)property qualifier:(id)qualifier value:(id)value completion:(id)completion
{
  if (gLogCategory_AirPlayControllerServer <= 30 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayControllerServer, "[AirPlayControllerServer setProperty:qualifier:value:completion:]", 33554462, "Set property %@ %@ %@\n", property, qualifier, value);
  }

  if ([property isEqual:@"test"])
  {
    if (gLogCategory_AirPlayControllerServer <= 50 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayControllerServer, "[AirPlayControllerServer setProperty:qualifier:value:completion:]", 33554482, "Test set property\n");
    }

    goto LABEL_11;
  }

  setPropertyBlock = self->_setPropertyBlock;
  if (setPropertyBlock)
  {
    v12 = setPropertyBlock[2](setPropertyBlock, property, qualifier, value);
    if (!v12)
    {
LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }

    v13 = v12;
  }

  else
  {
    v13 = 4294960582;
  }

LABEL_12:
  v14 = *(completion + 2);

  v14(completion, v13);
}

- (void)getProperty:(id)property qualifier:(id)qualifier completion:(id)completion
{
  if (gLogCategory_AirPlayControllerServer <= 30 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayControllerServer, "[AirPlayControllerServer getProperty:qualifier:completion:]", 33554462, "Get property %@ %@\n", property, qualifier);
  }

  v12 = 0;
  if ([property isEqual:@"test"])
  {
    if (gLogCategory_AirPlayControllerServer <= 50 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayControllerServer, "[AirPlayControllerServer getProperty:qualifier:completion:]", 33554482, "Test get property\n");
    }

    v10 = @"value";
    v11 = @"value";
  }

  else
  {
    copyPropertyBlock = self->_copyPropertyBlock;
    if (!copyPropertyBlock)
    {
      v10 = 0;
      v12 = -6714;
      goto LABEL_15;
    }

    v10 = copyPropertyBlock[2](copyPropertyBlock, property, qualifier, &v12);
    if (v12)
    {
      goto LABEL_15;
    }
  }

  v12 = 0;
LABEL_15:
  (*(completion + 2))(completion);
}

- (void)postEvent:(id)event qualifier:(id)qualifier params:(id)params completion:(id)completion
{
  if (gLogCategory_AirPlayControllerServer <= 30 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayControllerServer, "[AirPlayControllerServer postEvent:qualifier:params:completion:]", 33554462, "Post event %@ %@ %@\n", event, qualifier, params);
  }

  if ([event isEqual:@"test"] && gLogCategory_AirPlayControllerServer <= 50 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayControllerServer, "[AirPlayControllerServer postEvent:qualifier:params:completion:]", 33554482, "Test event\n");
  }

  v10 = *(completion + 2);

  v10(completion);
}

- (void)performCommand:(id)command qualifier:(id)qualifier params:(id)params completion:(id)completion
{
  v15 = 0;
  if (gLogCategory_AirPlayControllerServer <= 30 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayControllerServer, "[AirPlayControllerServer performCommand:qualifier:params:completion:]", 33554462, "Perform command %@ %@ %@\n", command, qualifier, params);
  }

  if ([command isEqual:@"test"])
  {
    if (gLogCategory_AirPlayControllerServer <= 50 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayControllerServer, "[AirPlayControllerServer performCommand:qualifier:params:completion:]", 33554482, "Test command\n");
    }

    v15 = &unk_28513BB18;
    v14 = &unk_28513BB18;
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  performCommandBlock = self->_performCommandBlock;
  if (!performCommandBlock)
  {
    v13 = 4294960582;
    goto LABEL_15;
  }

  v12 = performCommandBlock[2](performCommandBlock, command, qualifier, params, &v15);
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
LABEL_15:
  (*(completion + 2))(completion, v13, v15);
}

- (void)_connectionInvalidated:(id)invalidated
{
  if (gLogCategory_AirPlayControllerServer <= 10 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayControllerServer, "-[AirPlayControllerServer _connectionInvalidated:]", 33554442, "Invalidated XPC connection from %#{pid}\n", [invalidated processIdentifier]);
  }

  [invalidated setInvalidationHandler:0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v11[7] = *MEMORY[0x277D85DE8];
  if (gLogCategory_AirPlayControllerServer <= 10 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayControllerServer, "-[AirPlayControllerServer listener:shouldAcceptNewConnection:]", 33554442, "Accepting   XPC connection from %#{pid}\n", [connection processIdentifier]);
  }

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28513CBE8];
  v7 = MEMORY[0x277CBEB98];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v11[3] = objc_opt_class();
  v11[4] = objc_opt_class();
  v11[5] = objc_opt_class();
  v11[6] = objc_opt_class();
  v8 = [v7 setWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v11, 7)}];
  [v6 setClasses:v8 forSelector:sel_performCommand_qualifier_params_completion_ argumentIndex:1 ofReply:0];
  [v6 setClasses:v8 forSelector:sel_performCommand_qualifier_params_completion_ argumentIndex:2 ofReply:0];
  [v6 setClasses:v8 forSelector:sel_postEvent_qualifier_params_completion_ argumentIndex:1 ofReply:0];
  [v6 setClasses:v8 forSelector:sel_postEvent_qualifier_params_completion_ argumentIndex:2 ofReply:0];
  [v6 setClasses:v8 forSelector:sel_getProperty_qualifier_completion_ argumentIndex:1 ofReply:0];
  [v6 setClasses:v8 forSelector:sel_getProperty_qualifier_completion_ argumentIndex:1 ofReply:1];
  [v6 setClasses:v8 forSelector:sel_setProperty_qualifier_value_completion_ argumentIndex:1 ofReply:0];
  [v6 setClasses:v8 forSelector:sel_setProperty_qualifier_value_completion_ argumentIndex:2 ofReply:0];
  [connection setExportedInterface:v6];
  [connection setExportedObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__AirPlayControllerServer_listener_shouldAcceptNewConnection___block_invoke;
  v10[3] = &unk_278C60A08;
  v10[4] = self;
  v10[5] = connection;
  [connection setInvalidationHandler:v10];
  if (self->_queue && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [connection _setQueue:self->_queue];
  }

  [connection resume];
  return 1;
}

- (void)startWithXPCName:(id)name
{
  self->_serviceName = [name copy];
  v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:name];
  self->_xpcListener = v5;
  [(NSXPCListener *)v5 setDelegate:self];
  xpcListener = self->_xpcListener;

  [(NSXPCListener *)xpcListener resume];
}

- (void)setDispatchQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  self->_queue = queue;
}

- (void)dealloc
{
  self->_serviceName = 0;
  [(NSXPCListener *)self->_xpcListener invalidate];

  self->_xpcListener = 0;
  self->_performCommandBlock = 0;

  self->_copyPropertyBlock = 0;
  self->_setPropertyBlock = 0;
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v4.receiver = self;
  v4.super_class = AirPlayControllerServer;
  [(AirPlayControllerServer *)&v4 dealloc];
}

@end