@interface MTRPluginClientConnection
+ (id)_interfaceForServerProtocol;
+ (id)clientConnectionQueue;
- (BOOL)_deliverMessagePayloadToPrimaryResident:(id)resident timeout:(double)timeout responseHandler:(id)handler;
- (BOOL)_isRunning;
- (BOOL)_setupConnection;
- (MTRPluginClientConnection)initWithClientConnection:(id)connection backgroundModeEntitled:(BOOL)entitled pid:(int)pid context:(id)context delegate:(id)delegate delegateQueue:(id)queue;
- (NSString)description;
- (void)_assignHomeUUIDIfUnassigned:(id)unassigned;
- (void)deviceController:(id)controller nodeID:(id)d downloadLogOfType:(int64_t)type timeout:(double)timeout completion:(id)completion;
- (void)deviceController:(id)controller nodeID:(id)d getDeviceCachePrimedWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d getEstimatedStartTimeWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d getEstimatedSubscriptionLatencyWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d getStateWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d invokeCommandWithEndpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)self0 timedInvokeTimeout:(id)self1 serverSideProcessingTimeout:(id)self2 completion:(id)self3;
- (void)deviceController:(id)controller nodeID:(id)d invokeCommands:(id)commands completion:(id)completion;
- (void)deviceController:(id)controller nodeID:(id)d openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration completion:(id)completion;
- (void)deviceController:(id)controller nodeID:(id)d readAttributePaths:(id)paths withReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d readAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID params:(id)params withReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d writeAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)self0;
- (void)deviceController:(id)controller updateControllerConfiguration:(id)configuration;
- (void)interrupted;
- (void)invalidate;
- (void)invalidated;
- (void)resume;
- (void)updateControllerConfigurationForRemotePeer;
@end

@implementation MTRPluginClientConnection

+ (id)clientConnectionQueue
{
  if (clientConnectionQueue_predicateNAME != -1)
  {
    +[MTRPluginClientConnection clientConnectionQueue];
  }

  v3 = clientConnectionQueue_sSingleConnectionQueue;

  return v3;
}

void __50__MTRPluginClientConnection_clientConnectionQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("MTRPluginClientQueue", v2);
  v1 = clientConnectionQueue_sSingleConnectionQueue;
  clientConnectionQueue_sSingleConnectionQueue = v0;
}

- (MTRPluginClientConnection)initWithClientConnection:(id)connection backgroundModeEntitled:(BOOL)entitled pid:(int)pid context:(id)context delegate:(id)delegate delegateQueue:(id)queue
{
  v11 = *&pid;
  entitledCopy = entitled;
  connectionCopy = connection;
  contextCopy = context;
  delegateCopy = delegate;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = MTRPluginClientConnection;
  v18 = [(MTRPluginClientConnection *)&v24 init];
  v19 = v18;
  if (v18 && (-[MTRPluginClientConnection setConnection:](v18, "setConnection:", connectionCopy), -[MTRPluginClientConnection setContext:](v19, "setContext:", contextCopy), -[MTRPluginClientConnection setBackgroundModeEntitled:](v19, "setBackgroundModeEntitled:", entitledCopy), -[MTRPluginClientConnection setPid:](v19, "setPid:", v11), [MEMORY[0x277CCAD78] UUID], v20 = objc_claimAutoreleasedReturnValue(), -[MTRPluginClientConnection setSessionID:](v19, "setSessionID:", v20), v20, -[MTRPluginClientConnection setDelegate:](v19, "setDelegate:", delegateCopy), -[MTRPluginClientConnection setDelegateQueue:](v19, "setDelegateQueue:", queueCopy), +[MTRPluginClientConnection clientConnectionQueue](MTRPluginClientConnection, "clientConnectionQueue"), v21 = objc_claimAutoreleasedReturnValue(), -[MTRPluginClientConnection setQueue:](v19, "setQueue:", v21), v21, -[MTRPluginClientConnection _setupConnection](v19, "_setupConnection")))
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)_interfaceForServerProtocol
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28697F080];
  v3 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:11];
  v5 = [v3 setWithArray:{v4, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16}];

  [v2 setClasses:v5 forSelector:sel_deviceController_nodeID_writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout_ argumentIndex:5 ofReply:0];
  [v2 setClasses:v5 forSelector:sel_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion_ argumentIndex:6 ofReply:0];
  [v2 setClasses:v5 forSelector:sel_deviceController_nodeID_readAttributePaths_withReply_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v5 forSelector:sel_deviceController_nodeID_readAttributePaths_withReply_ argumentIndex:0 ofReply:1];
  [v2 setClasses:v5 forSelector:sel_deviceController_nodeID_invokeCommands_completion_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v5 forSelector:sel_deviceController_nodeID_invokeCommands_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (BOOL)_setupConnection
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = +[MTRPluginClientManager sharedInstance];
  connection = [(MTRPluginClientConnection *)self connection];
  sessionID = [(MTRPluginClientConnection *)self sessionID];
  queue = [(MTRPluginClientConnection *)self queue];
  v7 = [v3 addClientForXPCConnection:connection sessionID:sessionID queue:queue];
  [(MTRPluginClientConnection *)self setPluginClient:v7];

  v8 = +[MTRPluginClientConnection _interfaceForClientProtocol];
  connection2 = [(MTRPluginClientConnection *)self connection];
  [connection2 setRemoteObjectInterface:v8];

  v10 = +[MTRPluginClientConnection _interfaceForServerProtocol];
  connection3 = [(MTRPluginClientConnection *)self connection];
  [connection3 setExportedInterface:v10];

  connection4 = [(MTRPluginClientConnection *)self connection];
  [connection4 setExportedObject:self];

  v13 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    v19 = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = pluginClient;
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "Setting up MTRPluginClientConnection: %@ pluginClient : %@", &v19, 0x16u);
  }

  pluginClient2 = [(MTRPluginClientConnection *)self pluginClient];
  v17 = pluginClient2 != 0;

  return v17;
}

- (BOOL)_deliverMessagePayloadToPrimaryResident:(id)resident timeout:(double)timeout responseHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  handlerCopy = handler;
  v10 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    delegate = [(MTRPluginClientConnection *)self delegate];
    *buf = 138412546;
    selfCopy = self;
    v31 = 2112;
    v32 = delegate;
    _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@ <= Sending message to delegate %@ to deliver to home hub", buf, 0x16u);
  }

  delegate2 = [(MTRPluginClientConnection *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke;
    v26[3] = &unk_279894158;
    v26[4] = self;
    v16 = &v27;
    v27 = residentCopy;
    v17 = v28;
    v28[0] = handlerCopy;
    *&v28[1] = timeout;
    v18 = v26;
  }

  else
  {
    delegate3 = [(MTRPluginClientConnection *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      v21 = 0;
      goto LABEL_9;
    }

    delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke_141;
    block[3] = &unk_279893D70;
    block[4] = self;
    v16 = &v24;
    v24 = residentCopy;
    v17 = &v25;
    v25 = handlerCopy;
    v18 = block;
  }

  dispatch_async(delegateQueue, v18);

  v21 = 1;
LABEL_9:

  return v21;
}

void __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = 0;
  v7 = [v2 connection:v3 sendMessagePayloadToPrimaryResident:v4 responseHandler:v5 timeout:&v11 error:v6];
  v8 = v11;

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke_cold_1(v8, v10);
    }
  }
}

void __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke_141(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = 0;
  v6 = [v2 connection:v3 sendMessagePayloadToPrimaryResident:v4 responseHandler:v5 error:&v10];
  v7 = v10;

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke_cold_1(v7, v9);
    }
  }
}

- (void)_assignHomeUUIDIfUnassigned:(id)unassigned
{
  v20 = *MEMORY[0x277D85DE8];
  unassignedCopy = unassigned;
  homeUUID = [(MTRPluginClientConnection *)self homeUUID];

  if (!homeUUID)
  {
    [(MTRPluginClientConnection *)self setHomeUUID:unassignedCopy];
    v6 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      homeUUID2 = [(MTRPluginClientConnection *)self homeUUID];
      v14 = 138412802;
      v15 = homeUUID2;
      v16 = 2112;
      selfCopy = self;
      v18 = 2112;
      v19 = unassignedCopy;
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, " => Assigning home UUID: %@ to connection: %@   controllerID: %@", &v14, 0x20u);
    }

    homeUUID3 = [(MTRPluginClientConnection *)self homeUUID];
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient setHomeUUID:homeUUID3];

    v11 = +[MTRPluginServer sharedInstance];
    v12 = [v11 _unsafeQueryRunningModeFromDelegateForHomeUUID:unassignedCopy];

    v13 = +[MTRPluginDeviceControllerRegistry sharedInstance];
    [v13 _updateRunningMode:v12 forceUpdateControllerConfiguration:1 forHomeUUID:unassignedCopy];
  }
}

- (BOOL)_isRunning
{
  connection = [(MTRPluginClientConnection *)self connection];
  v3 = connection != 0;

  return v3;
}

- (void)resume
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Resuming MTRPluginClientConnection: %@", &v5, 0xCu);
  }

  connection = [(MTRPluginClientConnection *)self connection];
  [connection resume];
}

- (void)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating MTRPluginClientConnection: %@", &v5, 0xCu);
  }

  connection = [(MTRPluginClientConnection *)self connection];
  [connection invalidate];
}

- (void)invalidated
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, " => Invalidated MTRPluginClientConnection: %@", &v6, 0xCu);
  }

  v4 = +[MTRPluginClientManager sharedInstance];
  connection = [(MTRPluginClientConnection *)self connection];
  [v4 removeClientForXPCConnection:connection];

  [(MTRPluginClientConnection *)self setConnection:0];
}

- (void)interrupted
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, " => Interrupted MTRPluginClientConnection: %@", &v6, 0xCu);
  }

  v4 = +[MTRPluginClientManager sharedInstance];
  connection = [(MTRPluginClientConnection *)self connection];
  [v4 removeClientForXPCConnection:connection];

  [(MTRPluginClientConnection *)self setConnection:0];
}

- (void)updateControllerConfigurationForRemotePeer
{
  v3 = objc_autoreleasePoolPush();
  pluginClient = [(MTRPluginClientConnection *)self pluginClient];
  homeUUID = [(MTRPluginClientConnection *)self homeUUID];
  pluginClient2 = [(MTRPluginClientConnection *)self pluginClient];
  controllerConfiguration = [pluginClient2 controllerConfiguration];
  [pluginClient deviceController:homeUUID updateControllerConfiguration:controllerConfiguration];

  objc_autoreleasePoolPop(v3);
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  connection = [(MTRPluginClientConnection *)self connection];
  v8 = [(MTRPluginClientConnection *)self pid];
  sessionID = [(MTRPluginClientConnection *)self sessionID];
  homeUUID = [(MTRPluginClientConnection *)self homeUUID];
  _isRunning = [(MTRPluginClientConnection *)self _isRunning];
  v12 = @"NO";
  if (_isRunning)
  {
    v12 = @"YES";
  }

  v13 = [v4 stringWithFormat:@"<%@: %p xpc %p pid: %d sessionID: %@ Home: %@ Running: %@>", v6, self, connection, v8, sessionID, homeUUID, v12];

  objc_autoreleasePoolPop(v3);

  return v13;
}

- (void)deviceController:(id)controller nodeID:(id)d getStateWithReply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__MTRPluginClientConnection_deviceController_nodeID_getStateWithReply___block_invoke;
  block[3] = &unk_279893DF0;
  v21 = &v22;
  block[4] = self;
  v12 = dCopy;
  v20 = v12;
  dispatch_sync(delegateQueue, block);

  if (v23[3])
  {
    v13 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v12 getStateWithReply:replyCopy];

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:getStateWithReply:];
    }

    v18 = replyCopy;
    v16 = v18;
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }

  _Block_object_dispose(&v22, 8);
}

void __71__MTRPluginClientConnection_deviceController_nodeID_getStateWithReply___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:3 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

uint64_t __71__MTRPluginClientConnection_deviceController_nodeID_getStateWithReply___block_invoke_153(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __71__MTRPluginClientConnection_deviceController_nodeID_getStateWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)deviceController:(id)controller nodeID:(id)d getDeviceCachePrimedWithReply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__MTRPluginClientConnection_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke;
  block[3] = &unk_279893DF0;
  v21 = &v22;
  block[4] = self;
  v12 = dCopy;
  v20 = v12;
  dispatch_sync(delegateQueue, block);

  if (v23[3])
  {
    v13 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v12 getDeviceCachePrimedWithReply:replyCopy];

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:getStateWithReply:];
    }

    v18 = replyCopy;
    v16 = v18;
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }

  _Block_object_dispose(&v22, 8);
}

void __83__MTRPluginClientConnection_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:3 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

uint64_t __83__MTRPluginClientConnection_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_154(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __83__MTRPluginClientConnection_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)deviceController:(id)controller nodeID:(id)d getEstimatedStartTimeWithReply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__MTRPluginClientConnection_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke;
  block[3] = &unk_279893DF0;
  v21 = &v22;
  block[4] = self;
  v12 = dCopy;
  v20 = v12;
  dispatch_sync(delegateQueue, block);

  if (v23[3])
  {
    v13 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v12 getEstimatedStartTimeWithReply:replyCopy];

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:getStateWithReply:];
    }

    v18 = replyCopy;
    v16 = v18;
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }

  _Block_object_dispose(&v22, 8);
}

void __84__MTRPluginClientConnection_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:3 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

uint64_t __84__MTRPluginClientConnection_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_155(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __84__MTRPluginClientConnection_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)deviceController:(id)controller nodeID:(id)d getEstimatedSubscriptionLatencyWithReply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__MTRPluginClientConnection_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke;
  block[3] = &unk_279893DF0;
  v21 = &v22;
  block[4] = self;
  v12 = dCopy;
  v20 = v12;
  dispatch_sync(delegateQueue, block);

  if (v23[3])
  {
    v13 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v12 getEstimatedSubscriptionLatencyWithReply:replyCopy];

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = matterPluginLog_default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:getStateWithReply:];
    }

    v18 = replyCopy;
    v16 = v18;
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }

  _Block_object_dispose(&v22, 8);
}

void __94__MTRPluginClientConnection_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:3 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

uint64_t __94__MTRPluginClientConnection_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_156(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __94__MTRPluginClientConnection_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)deviceController:(id)controller nodeID:(id)d readAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID params:(id)params withReply:(id)reply
{
  v43 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  attributeIDCopy = attributeID;
  paramsCopy = params;
  replyCopy = reply;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__MTRPluginClientConnection_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke;
  block[3] = &unk_2798941A8;
  v38 = &v39;
  block[4] = self;
  v23 = dCopy;
  v34 = v23;
  v24 = iDCopy;
  v35 = v24;
  v25 = clusterIDCopy;
  v36 = v25;
  v26 = attributeIDCopy;
  v37 = v26;
  dispatch_sync(delegateQueue, block);

  if (v40[3])
  {
    v27 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v23 readAttributeWithEndpointID:v24 clusterID:v25 attributeID:v26 params:paramsCopy withReply:replyCopy];

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    v29 = matterPluginLog_default;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:readAttributeWithEndpointID:clusterID:attributeID:params:withReply:];
    }

    v32 = replyCopy;
    v30 = v32;
    v31 = v30;
    if (v30)
    {
      (*(v30 + 2))(v30, 0);
    }
  }

  _Block_object_dispose(&v39, 8);
}

void __120__MTRPluginClientConnection_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 72) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:4 nodeId:*(a1 + 40) commandId:0 endpointId:*(a1 + 48) clusterId:*(a1 + 56) attributeId:*(a1 + 64)];
}

uint64_t __120__MTRPluginClientConnection_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_157(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __120__MTRPluginClientConnection_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)deviceController:(id)controller nodeID:(id)d readAttributePaths:(id)paths withReply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  pathsCopy = paths;
  replyCopy = reply;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke;
  block[3] = &unk_279893DF0;
  v28 = &v29;
  block[4] = self;
  v15 = dCopy;
  v27 = v15;
  dispatch_sync(delegateQueue, block);

  if (v30[3])
  {
    v16 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v15 readAttributePaths:pathsCopy withReply:replyCopy];

    objc_autoreleasePoolPop(v16);
  }

  else
  {
    v18 = matterPluginLog_default;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:readAttributeWithEndpointID:clusterID:attributeID:params:withReply:];
    }

    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke_158;
    v24 = &unk_279894180;
    v25 = replyCopy;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke_2;
    v19[3] = &unk_279894180;
    v20 = v25;
    __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke_2(v19);
  }

  _Block_object_dispose(&v29, 8);
}

void __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:4 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

void __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke_158(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CBEA60] array];
    (*(v1 + 16))(v1, v2);
  }
}

void __82__MTRPluginClientConnection_deviceController_nodeID_readAttributePaths_withReply___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CBEA60] array];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)deviceController:(id)controller nodeID:(id)d writeAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)self0
{
  v42 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  attributeIDCopy = attributeID;
  valueCopy = value;
  intervalCopy = interval;
  timeoutCopy = timeout;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __150__MTRPluginClientConnection_deviceController_nodeID_writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout___block_invoke;
  block[3] = &unk_2798941A8;
  v37 = &v38;
  block[4] = self;
  v23 = dCopy;
  v33 = v23;
  v24 = iDCopy;
  v34 = v24;
  v25 = clusterIDCopy;
  v35 = v25;
  v26 = attributeIDCopy;
  v36 = v26;
  dispatch_sync(delegateQueue, block);

  if (v39[3])
  {
    v27 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v23 writeAttributeWithEndpointID:v24 clusterID:v25 attributeID:v26 value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timeoutCopy];

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    v29 = matterPluginLog_default;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:writeAttributeWithEndpointID:clusterID:attributeID:value:expectedValueInterval:timedWriteTimeout:];
    }
  }

  _Block_object_dispose(&v38, 8);
}

void __150__MTRPluginClientConnection_deviceController_nodeID_writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 72) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:5 nodeId:*(a1 + 40) commandId:0 endpointId:*(a1 + 48) clusterId:*(a1 + 56) attributeId:*(a1 + 64)];
}

- (void)deviceController:(id)controller nodeID:(id)d invokeCommandWithEndpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)self0 timedInvokeTimeout:(id)self1 serverSideProcessingTimeout:(id)self2 completion:(id)self3
{
  v51 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  valuesCopy = values;
  intervalCopy = interval;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  completionCopy = completion;
  v35 = controllerCopy;
  v25 = controllerCopy;
  v26 = fieldsCopy;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:v25];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __210__MTRPluginClientConnection_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke;
  block[3] = &unk_2798941A8;
  v46 = &v47;
  block[4] = self;
  v28 = dCopy;
  v42 = v28;
  v29 = commandIDCopy;
  v43 = v29;
  v30 = iDCopy;
  v44 = v30;
  v31 = clusterIDCopy;
  v45 = v31;
  dispatch_sync(delegateQueue, block);

  if (v48[3])
  {
    v32 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:v35 nodeID:v28 invokeCommandWithEndpointID:v30 clusterID:v31 commandID:v29 commandFields:v26 expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timeoutCopy serverSideProcessingTimeout:processingTimeoutCopy completion:completionCopy];

    objc_autoreleasePoolPop(v32);
  }

  else
  {
    v34 = matterPluginLog_default;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:invokeCommandWithEndpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvokeTimeout:serverSideProcessingTimeout:completion:];
    }
  }

  _Block_object_dispose(&v47, 8);
}

void __210__MTRPluginClientConnection_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 72) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:6 nodeId:*(a1 + 40) commandId:*(a1 + 48) endpointId:*(a1 + 56) clusterId:*(a1 + 64) attributeId:0];
}

- (void)deviceController:(id)controller nodeID:(id)d openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  passcodeCopy = passcode;
  discriminatorCopy = discriminator;
  durationCopy = duration;
  completionCopy = completion;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke;
  block[3] = &unk_279893DF0;
  v34 = &v35;
  block[4] = self;
  v21 = dCopy;
  v33 = v21;
  dispatch_sync(delegateQueue, block);

  if (v36[3])
  {
    v22 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v21 openCommissioningWindowWithSetupPasscode:passcodeCopy discriminator:discriminatorCopy duration:durationCopy completion:completionCopy];

    objc_autoreleasePoolPop(v22);
  }

  else
  {
    v24 = matterPluginLog_default;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:openCommissioningWindowWithSetupPasscode:discriminator:duration:completion:];
    }

    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke_169;
    v30 = &unk_279894180;
    v31 = completionCopy;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke_2;
    v25[3] = &unk_279894180;
    v26 = v31;
    __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke_2(v25);
  }

  _Block_object_dispose(&v35, 8);
}

void __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:7 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

void __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke_169(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1009 userInfo:0];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __128__MTRPluginClientConnection_deviceController_nodeID_openCommissioningWindowWithSetupPasscode_discriminator_duration_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1009 userInfo:0];
    (*(v1 + 16))(v1, 0, v2);
  }
}

- (void)deviceController:(id)controller nodeID:(id)d downloadLogOfType:(int64_t)type timeout:(double)timeout completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  completionCopy = completion;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke;
  block[3] = &unk_279893DF0;
  v29 = &v30;
  block[4] = self;
  v16 = dCopy;
  v28 = v16;
  dispatch_sync(delegateQueue, block);

  if (v31[3])
  {
    v17 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy nodeID:v16 downloadLogOfType:type timeout:completionCopy completion:timeout];

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v19 = matterPluginLog_default;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:nodeID:downloadLogOfType:timeout:completion:];
    }

    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_170;
    v25 = &unk_279894180;
    v26 = completionCopy;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_2;
    v20[3] = &unk_279894180;
    v21 = v26;
    __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_2(v20);
  }

  _Block_object_dispose(&v30, 8);
}

void __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 48) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:9 nodeId:*(a1 + 40) commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

void __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_170(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1009 userInfo:0];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __90__MTRPluginClientConnection_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1009 userInfo:0];
    (*(v1 + 16))(v1, 0, v2);
  }
}

- (void)deviceController:(id)controller nodeID:(id)d invokeCommands:(id)commands completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  commandsCopy = commands;
  completionCopy = completion;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = commandsCopy;
  v33 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v33)
  {
    v12 = *v49;
    v30 = *v49;
    do
    {
      v13 = 0;
      do
      {
        if (*v49 != v12)
        {
          v14 = v13;
          objc_enumerationMutation(obj);
          v13 = v14;
        }

        v31 = v13;
        v15 = *(*(&v48 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v19)
        {
          v20 = *v45;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v45 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v44 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v23 = v22;
              }

              else
              {
                v23 = 0;
              }

              v24 = v23;
              if (v24)
              {
                v40 = 0;
                v41 = &v40;
                v42 = 0x2020000000;
                v43 = 0;
                delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __79__MTRPluginClientConnection_deviceController_nodeID_invokeCommands_completion___block_invoke;
                block[3] = &unk_2798941D0;
                v39 = &v40;
                block[4] = self;
                v37 = dCopy;
                v26 = v24;
                v38 = v26;
                dispatch_sync(delegateQueue, block);

                if ((v41[3] & 1) == 0)
                {
                  v29 = matterPluginLog_default;
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    [(MTRPluginClientConnection *)self pluginClient];
                    objc_claimAutoreleasedReturnValue();
                    [MTRPluginClientConnection deviceController:nodeID:invokeCommandWithEndpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvokeTimeout:serverSideProcessingTimeout:completion:];
                  }

                  _Block_object_dispose(&v40, 8);
                  goto LABEL_28;
                }

                _Block_object_dispose(&v40, 8);
              }
            }

            v19 = [v18 countByEnumeratingWithState:&v44 objects:v52 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v12 = v30;
        v13 = v31 + 1;
      }

      while (v31 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      v12 = v30;
    }

    while (v33);
  }

  v27 = objc_autoreleasePoolPush();
  pluginClient = [(MTRPluginClientConnection *)self pluginClient];
  [pluginClient deviceController:controllerCopy nodeID:dCopy invokeCommands:obj completion:completionCopy];

  objc_autoreleasePoolPop(v27);
LABEL_28:
}

void __79__MTRPluginClientConnection_deviceController_nodeID_invokeCommands_completion___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) path];
  v6 = [v5 command];
  v7 = [*(a1 + 48) path];
  v8 = [v7 endpoint];
  v9 = [*(a1 + 48) path];
  v10 = [v9 cluster];
  *(*(*(a1 + 56) + 8) + 24) = [v11 connection:v2 allowsOperationWithHome:v3 operationType:6 nodeId:v4 commandId:v6 endpointId:v8 clusterId:v10 attributeId:0];
}

- (void)deviceController:(id)controller updateControllerConfiguration:(id)configuration
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configurationCopy = configuration;
  [(MTRPluginClientConnection *)self _assignHomeUUIDIfUnassigned:controllerCopy];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  delegateQueue = [(MTRPluginClientConnection *)self delegateQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__MTRPluginClientConnection_deviceController_updateControllerConfiguration___block_invoke;
  v12[3] = &unk_2798941F8;
  v12[4] = self;
  v12[5] = &v13;
  dispatch_sync(delegateQueue, v12);

  if (v14[3])
  {
    v9 = objc_autoreleasePoolPush();
    pluginClient = [(MTRPluginClientConnection *)self pluginClient];
    [pluginClient deviceController:controllerCopy updateControllerConfiguration:configurationCopy];

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v11 = matterPluginLog_default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MTRPluginClientConnection *)self pluginClient];
      objc_claimAutoreleasedReturnValue();
      [MTRPluginClientConnection deviceController:updateControllerConfiguration:];
    }
  }

  _Block_object_dispose(&v13, 8);
}

void __76__MTRPluginClientConnection_deviceController_updateControllerConfiguration___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 homeUUID];
  *(*(*(a1 + 40) + 8) + 24) = [v4 connection:v2 allowsOperationWithHome:v3 operationType:1 nodeId:0 commandId:0 endpointId:0 clusterId:0 attributeId:0];
}

void __93__MTRPluginClientConnection__deliverMessagePayloadToPrimaryResident_timeout_responseHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, " *** Failed to sendMessage to primary home hub with error: %@", &v2, 0xCu);
}

- (void)deviceController:nodeID:getStateWithReply:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

- (void)deviceController:nodeID:readAttributeWithEndpointID:clusterID:attributeID:params:withReply:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

- (void)deviceController:nodeID:writeAttributeWithEndpointID:clusterID:attributeID:value:expectedValueInterval:timedWriteTimeout:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

- (void)deviceController:nodeID:invokeCommandWithEndpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvokeTimeout:serverSideProcessingTimeout:completion:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

- (void)deviceController:nodeID:openCommissioningWindowWithSetupPasscode:discriminator:duration:completion:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

- (void)deviceController:nodeID:downloadLogOfType:timeout:completion:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

- (void)deviceController:updateControllerConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0(v1, 5.7781e-34, v2, v3);
  OUTLINED_FUNCTION_1_1(v4, v5, v6);
  OUTLINED_FUNCTION_3_1(&dword_25830F000, "%@ delegate denied access for operation: %ld for %@", v7, v8);
}

@end