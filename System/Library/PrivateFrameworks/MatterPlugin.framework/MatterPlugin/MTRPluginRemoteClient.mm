@interface MTRPluginRemoteClient
+ (id)deviceFromNodeID:(id)d controllerID:(id)iD;
- (MTRPluginClient)client;
- (MTRPluginRemoteClient)initWithClient:(id)client queue:(id)queue;
- (NSString)description;
- (void)_closeRemoteServerSession;
- (void)_registerForMessages;
- (void)dealloc;
- (void)deviceController:(id)controller nodeID:(id)d downloadLogOfType:(int64_t)type timeout:(double)timeout completion:(id)completion;
- (void)deviceController:(id)controller nodeID:(id)d getDeviceCachePrimedWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d getEstimatedStartTimeWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d getEstimatedSubscriptionLatencyWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d getStateWithReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d invokeCommandWithEndpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)self0 timedInvokeTimeout:(id)self1 serverSideProcessingTimeout:(id)self2 completion:(id)self3;
- (void)deviceController:(id)controller nodeID:(id)d invokeCommands:(id)commands completion:(id)completion;
- (void)deviceController:(id)controller nodeID:(id)d readAttributePaths:(id)paths withReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d readAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID params:(id)params withReply:(id)reply;
- (void)deviceController:(id)controller nodeID:(id)d writeAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)self0;
- (void)deviceController:(id)controller updateControllerConfiguration:(id)configuration;
- (void)invalidate;
- (void)messageTransport:(id)transport handleControllerConfigUpdated:(id)updated;
- (void)messageTransport:(id)transport handleDeviceAttributeReport:(id)report;
- (void)messageTransport:(id)transport handleDeviceBecameActive:(id)active;
- (void)messageTransport:(id)transport handleDeviceCachePrimed:(id)primed;
- (void)messageTransport:(id)transport handleDeviceConfigurationChanged:(id)changed;
- (void)messageTransport:(id)transport handleDeviceEventReport:(id)report;
- (void)messageTransport:(id)transport handleDeviceInternalStateUpdated:(id)updated;
- (void)messageTransport:(id)transport handleDeviceStateChanged:(id)changed;
- (void)resume;
- (void)sendControllerMessageToHomeWithID:(id)d controllerMessageType:(int)type queryRequestValue:(id)value metric:(id)metric errorBlock:(id)block replyBlock:(id)replyBlock;
- (void)sendDeviceMessageToNodeWithID:(id)d homeID:(id)iD deviceNodeMessageType:(int)type metric:(id)metric errorBlock:(id)block replyBlock:(id)replyBlock;
- (void)sendMessageToHomeWithID:(id)d messageType:(int)type pbCodable:(id)codable timeout:(double)timeout metrics:(id)metrics errorBlock:(id)block replyBlock:(id)replyBlock;
- (void)sendOnewayMessageToHomeWithID:(id)d messageType:(int)type pbCodable:(id)codable timeout:(double)timeout;
- (void)suspend;
@end

@implementation MTRPluginRemoteClient

- (MTRPluginRemoteClient)initWithClient:(id)client queue:(id)queue
{
  v22 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = MTRPluginRemoteClient;
  v8 = [(MTRPluginRemoteClient *)&v17 init];
  if (v8)
  {
    v9 = +[MTRPluginProtobufOverModernTransport sharedInstance];
    [(MTRPluginRemoteClient *)v8 setTransport:v9];

    [(MTRPluginRemoteClient *)v8 setClient:clientCopy];
    [(MTRPluginRemoteClient *)v8 setSuspended:0];
    transport = [(MTRPluginRemoteClient *)v8 transport];
    client = [(MTRPluginRemoteClient *)v8 client];
    sessionID = [client sessionID];
    [transport setDelegate:v8 delegateQueue:queueCopy forSessionID:sessionID];

    [(MTRPluginRemoteClient *)v8 _registerForMessages];
    v13 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      sessionID2 = [clientCopy sessionID];
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = sessionID2;
      _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "%@ Created remote dispatcher with session ID: %@", buf, 0x16u);
    }
  }

  return v8;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138412546;
    v9 = v6;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ dealloc: %p", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = MTRPluginRemoteClient;
  [(MTRPluginRemoteClient *)&v7 dealloc];
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  client = [(MTRPluginRemoteClient *)self client];
  clientType = [client clientType];
  if (clientType >= 0xA)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", clientType];
  }

  else
  {
    v9 = off_279894070[clientType];
  }

  v10 = [v4 stringWithFormat:@"<%@: %p, clientType: %@>", v6, self, v9];

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_autoreleasePoolPush();
  v4 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = selfCopy;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ Invalidating remote client", &v6, 0xCu);
  }

  [(MTRPluginRemoteClient *)selfCopy _closeRemoteServerSession];
  transport = [(MTRPluginRemoteClient *)selfCopy transport];
  [transport removeDelegate:selfCopy];

  objc_autoreleasePoolPop(v3);
  objc_sync_exit(selfCopy);
}

- (void)suspend
{
  v6 = *MEMORY[0x277D85DE8];
  [(MTRPluginRemoteClient *)self setSuspended:1];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ Suspended remote client", &v4, 0xCu);
  }
}

- (void)resume
{
  v6 = *MEMORY[0x277D85DE8];
  [(MTRPluginRemoteClient *)self setSuspended:0];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@ Resumed remote client", &v4, 0xCu);
  }
}

- (void)_closeRemoteServerSession
{
  v16 = *MEMORY[0x277D85DE8];
  client = [(MTRPluginRemoteClient *)self client];
  homeUUID = [client homeUUID];

  if (homeUUID)
  {
    v5 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      client2 = [(MTRPluginRemoteClient *)self client];
      homeUUID2 = [client2 homeUUID];
      v12 = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = homeUUID2;
      _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Sending session close to resident session for controller %@", &v12, 0x16u);
    }

    v9 = objc_alloc_init(MTRPluginPBMDeviceControllerMessage);
    client3 = [(MTRPluginRemoteClient *)self client];
    homeUUID3 = [client3 homeUUID];
    [(MTRPluginRemoteClient *)self sendOnewayMessageToHomeWithID:homeUUID3 messageType:8 pbCodable:v9 timeout:60.0];
  }
}

- (void)_registerForMessages
{
  transport = [(MTRPluginRemoteClient *)self transport];
  client = [(MTRPluginRemoteClient *)self client];
  sessionID = [client sessionID];
  [transport registerForRequestMessageWithType:&unk_28697C510 requestHandler:sel_messageTransport_handleDeviceStateChanged_ forSessionID:sessionID];

  transport2 = [(MTRPluginRemoteClient *)self transport];
  client2 = [(MTRPluginRemoteClient *)self client];
  sessionID2 = [client2 sessionID];
  [transport2 registerForRequestMessageWithType:&unk_28697C528 requestHandler:sel_messageTransport_handleDeviceAttributeReport_ forSessionID:sessionID2];

  transport3 = [(MTRPluginRemoteClient *)self transport];
  client3 = [(MTRPluginRemoteClient *)self client];
  sessionID3 = [client3 sessionID];
  [transport3 registerForRequestMessageWithType:&unk_28697C540 requestHandler:sel_messageTransport_handleDeviceEventReport_ forSessionID:sessionID3];

  transport4 = [(MTRPluginRemoteClient *)self transport];
  client4 = [(MTRPluginRemoteClient *)self client];
  sessionID4 = [client4 sessionID];
  [transport4 registerForRequestMessageWithType:&unk_28697C558 requestHandler:sel_messageTransport_handleDeviceBecameActive_ forSessionID:sessionID4];

  transport5 = [(MTRPluginRemoteClient *)self transport];
  client5 = [(MTRPluginRemoteClient *)self client];
  sessionID5 = [client5 sessionID];
  [transport5 registerForRequestMessageWithType:&unk_28697C570 requestHandler:sel_messageTransport_handleDeviceCachePrimed_ forSessionID:sessionID5];

  transport6 = [(MTRPluginRemoteClient *)self transport];
  client6 = [(MTRPluginRemoteClient *)self client];
  sessionID6 = [client6 sessionID];
  [transport6 registerForRequestMessageWithType:&unk_28697C588 requestHandler:sel_messageTransport_handleDeviceConfigurationChanged_ forSessionID:sessionID6];

  transport7 = [(MTRPluginRemoteClient *)self transport];
  client7 = [(MTRPluginRemoteClient *)self client];
  sessionID7 = [client7 sessionID];
  [transport7 registerForRequestMessageWithType:&unk_28697C5A0 requestHandler:sel_messageTransport_handleDeviceInternalStateUpdated_ forSessionID:sessionID7];

  transport8 = [(MTRPluginRemoteClient *)self transport];
  client8 = [(MTRPluginRemoteClient *)self client];
  sessionID8 = [client8 sessionID];
  [transport8 registerForRequestMessageWithType:&unk_28697C5B8 requestHandler:sel_messageTransport_handleControllerConfigUpdated_ forSessionID:sessionID8];
}

- (void)sendOnewayMessageToHomeWithID:(id)d messageType:(int)type pbCodable:(id)codable timeout:(double)timeout
{
  v8 = *&type;
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  codableCopy = codable;
  client = [(MTRPluginRemoteClient *)self client];
  sessionID = [client sessionID];
  v14 = [MTRPluginPBMHeader onewayHeaderWithSessionID:sessionID homeID:dCopy messageType:v8];
  [codableCopy setHeader:v14];

  if ([codableCopy isValid])
  {
    data = [codableCopy data];
    v16 = [MTRPluginProtobufMessage messageWithProtobufData:data];

    v17 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412802;
      selfCopy2 = self;
      v22 = 2112;
      *v23 = v16;
      *&v23[8] = 2112;
      *&v23[10] = dCopy;
      _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@ Attempting to send one way message %@ to home hub and homeID: %@", &v20, 0x20u);
    }

    transport = [(MTRPluginRemoteClient *)self transport];
    [transport sendMessageToPrimaryHomeHub:v16 timeout:timeout];
  }

  else
  {
    v19 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      v20 = 138413058;
      selfCopy2 = self;
      v22 = 1024;
      *v23 = v8;
      *&v23[4] = 2112;
      *&v23[6] = codableCopy;
      *&v23[14] = 2112;
      *&v23[16] = dCopy;
      _os_log_error_impl(&dword_25830F000, v19, OS_LOG_TYPE_ERROR, "%@ Failed to send one way message type %d for (%@) to home hub for home %@ since it is invalid", &v20, 0x26u);
    }
  }
}

- (void)sendMessageToHomeWithID:(id)d messageType:(int)type pbCodable:(id)codable timeout:(double)timeout metrics:(id)metrics errorBlock:(id)block replyBlock:(id)replyBlock
{
  v14 = *&type;
  v55 = *MEMORY[0x277D85DE8];
  dCopy = d;
  codableCopy = codable;
  metricsCopy = metrics;
  blockCopy = block;
  replyBlockCopy = replyBlock;
  client = [(MTRPluginRemoteClient *)self client];
  sessionID = [client sessionID];
  v23 = [MTRPluginPBMHeader requestHeaderWithSessionID:sessionID homeID:dCopy messageType:v14];
  [codableCopy setHeader:v23];

  if ([codableCopy isValid])
  {
    data = [codableCopy data];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __109__MTRPluginRemoteClient_sendMessageToHomeWithID_messageType_pbCodable_timeout_metrics_errorBlock_replyBlock___block_invoke;
    v45[3] = &unk_279893B40;
    v45[4] = self;
    v49 = v14;
    v40 = dCopy;
    v37 = dCopy;
    v46 = v37;
    v47 = blockCopy;
    v38 = replyBlockCopy;
    v48 = replyBlockCopy;
    v25 = [MTRPluginProtobufMessage messageWithProtobufData:data responseHandler:v45];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = metricsCopy;
    v26 = metricsCopy;
    v27 = [v26 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v42;
      do
      {
        v30 = 0;
        do
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v41 + 1) + 8 * v30);
          uniqueIdentifier = [v25 uniqueIdentifier];
          [v31 setRemoteMessageID:uniqueIdentifier];

          ++v30;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v28);
    }

    v33 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v53 = 2112;
      *v54 = v25;
      *&v54[8] = 2112;
      *&v54[10] = v37;
      _os_log_impl(&dword_25830F000, v33, OS_LOG_TYPE_DEFAULT, "%@ Attempting to send message %@ to home hub and homeID: %@", buf, 0x20u);
    }

    transport = [(MTRPluginRemoteClient *)self transport];
    [transport sendMessageToPrimaryHomeHub:v25 timeout:timeout];

    metricsCopy = v39;
    dCopy = v40;
    replyBlockCopy = v38;
    goto LABEL_18;
  }

  v35 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413058;
    selfCopy2 = self;
    v53 = 1024;
    *v54 = v14;
    *&v54[4] = 2112;
    *&v54[6] = codableCopy;
    *&v54[14] = 2112;
    *&v54[16] = dCopy;
    _os_log_error_impl(&dword_25830F000, v35, OS_LOG_TYPE_ERROR, "%@ Failed to send message type %d for (%@) to home hub for home %@ since it is invalid", buf, 0x26u);
    if (blockCopy)
    {
      goto LABEL_14;
    }
  }

  else if (blockCopy)
  {
LABEL_14:
    v36 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kMTRPluginErrorDomain" code:-1003 userInfo:0];
    (*(blockCopy + 2))(blockCopy, v36);

    goto LABEL_18;
  }

  if (replyBlockCopy)
  {
    (*(replyBlockCopy + 2))(replyBlockCopy, 0);
  }

LABEL_18:
}

void __109__MTRPluginRemoteClient_sendMessageToHomeWithID_messageType_pbCodable_timeout_metrics_errorBlock_replyBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = matterPluginLog_default;
  if (v5)
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      __109__MTRPluginRemoteClient_sendMessageToHomeWithID_messageType_pbCodable_timeout_metrics_errorBlock_replyBlock___block_invoke_cold_1(a1, v8, v5);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_10:
      v10();
    }
  }

  else
  {
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 64);
      v13 = v8;
      v14 = [MTRPluginPBMHeader messageTypeAsString:v12];
      v15 = *(a1 + 40);
      v17 = 138413058;
      v18 = v11;
      v19 = 1024;
      v20 = v12;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ Response received for message type %d (%@) from homeID %@", &v17, 0x26u);
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      v10 = *(v16 + 16);
      goto LABEL_10;
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)sendControllerMessageToHomeWithID:(id)d controllerMessageType:(int)type queryRequestValue:(id)value metric:(id)metric errorBlock:(id)block replyBlock:(id)replyBlock
{
  v12 = *&type;
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  valueCopy = value;
  metricCopy = metric;
  blockCopy = block;
  replyBlockCopy = replyBlock;
  v19 = objc_alloc_init(MTRPluginPBMDeviceControllerMessage);
  if (valueCopy)
  {
    v20 = [[MTRPluginPBMVariableValue alloc] initWithObjectValue:valueCopy];
    if (v20)
    {
      [(MTRPluginPBMDeviceControllerMessage *)v19 setValue:v20];
    }
  }

  v21 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v26 = 2112;
    v27 = dCopy;
    v28 = 1024;
    v29 = v12;
    _os_log_impl(&dword_25830F000, v21, OS_LOG_TYPE_DEFAULT, "%@ Sending request to resident for homeID: %@, for message type: %d", buf, 0x1Cu);
  }

  if (metricCopy)
  {
    v23 = metricCopy;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [(MTRPluginRemoteClient *)self sendMessageToHomeWithID:dCopy messageType:v12 pbCodable:v19 timeout:v22 metrics:blockCopy errorBlock:replyBlockCopy replyBlock:60.0];
  }

  else
  {
    [(MTRPluginRemoteClient *)self sendMessageToHomeWithID:dCopy messageType:v12 pbCodable:v19 timeout:0 metrics:blockCopy errorBlock:replyBlockCopy replyBlock:60.0];
  }
}

- (void)sendDeviceMessageToNodeWithID:(id)d homeID:(id)iD deviceNodeMessageType:(int)type metric:(id)metric errorBlock:(id)block replyBlock:(id)replyBlock
{
  v11 = *&type;
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  metricCopy = metric;
  blockCopy = block;
  replyBlockCopy = replyBlock;
  v19 = objc_alloc_init(MTRPluginPBMDeviceNodeMessage);
  unsignedLongValue = [dCopy unsignedLongValue];
  node = [(MTRPluginPBMDeviceNodeMessage *)v19 node];
  [node setNodeID:unsignedLongValue];

  v22 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v27 = 2112;
    v28 = iDCopy;
    v29 = 2112;
    v30 = dCopy;
    v31 = 1024;
    v32 = v11;
    _os_log_impl(&dword_25830F000, v22, OS_LOG_TYPE_DEFAULT, "%@ Sending request to resident for homeID: %@, nodeID: %@, for message type: %d", buf, 0x26u);
  }

  if (metricCopy)
  {
    v24 = metricCopy;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [(MTRPluginRemoteClient *)self sendMessageToHomeWithID:iDCopy messageType:v11 pbCodable:v19 timeout:v23 metrics:blockCopy errorBlock:replyBlockCopy replyBlock:60.0];
  }

  else
  {
    [(MTRPluginRemoteClient *)self sendMessageToHomeWithID:iDCopy messageType:v11 pbCodable:v19 timeout:0 metrics:blockCopy errorBlock:replyBlockCopy replyBlock:60.0];
  }
}

- (void)deviceController:(id)controller updateControllerConfiguration:(id)configuration
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configurationCopy = configuration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = selfCopy;
    v21 = 2112;
    v22 = controllerCopy;
    v23 = 2112;
    v24 = configurationCopy;
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to updateControllerConfiguration: %@ state: %@", buf, 0x20u);
  }

  v10 = [MTRPluginUpdateControllerConfigMetric updateControllerConfigMetricForHome:controllerCopy remoteMessageID:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke;
  v16[3] = &unk_279893F38;
  v16[4] = selfCopy;
  v11 = controllerCopy;
  v17 = v11;
  v18 = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke_61;
  v13[3] = &unk_279893F60;
  v12 = v18;
  v14 = v12;
  v15 = selfCopy;
  [(MTRPluginRemoteClient *)selfCopy sendControllerMessageToHomeWithID:v11 controllerMessageType:9 queryRequestValue:configurationCopy metric:v12 errorBlock:v16 replyBlock:v13];

  objc_sync_exit(selfCopy);
}

void __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke_cold_1();
  }

  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:*(a1 + 48) error:v3];
}

void __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke_61(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:*(a1 + 32)];

  v5 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:v3];

  v6 = [v5 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 object];
  }

  else
  {
    v7 = 0;
  }

  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Received controller configuration update %@", &v14, 0x16u);
  }

  if ([v7 count])
  {
    v10 = [*(a1 + 40) client];
    v11 = [v10 clientProxy];
    v12 = [*(a1 + 40) client];
    v13 = [v12 homeUUID];
    [v11 controller:v13 controllerConfigurationUpdated:v7];
  }
}

- (void)deviceController:(id)controller nodeID:(id)d getStateWithReply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = selfCopy;
    v25 = 2112;
    v26 = dCopy;
    v27 = 2112;
    v28 = controllerCopy;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to get device state for nodeID: %@ for controllerID: %@", buf, 0x20u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke;
  v19[3] = &unk_279893F88;
  v19[4] = selfCopy;
  v20 = dCopy;
  v13 = controllerCopy;
  v21 = v13;
  v22 = replyCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke_63;
  v16[3] = &unk_279893FB0;
  v16[4] = selfCopy;
  v14 = v20;
  v17 = v14;
  v15 = v22;
  v18 = v15;
  [(MTRPluginRemoteClient *)selfCopy sendDeviceMessageToNodeWithID:v14 homeID:v13 deviceNodeMessageType:1000 metric:0 errorBlock:v19 replyBlock:v16];

  objc_sync_exit(selfCopy);
}

uint64_t __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke_cold_1();
  }

  return (*(*(a1 + 56) + 16))();
}

uint64_t __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke_63(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 unsignedIntegerValue];
  v7 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Remote device %@ running state is %lu", &v11, 0x20u);
  }

  return (*(a1[6] + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d getDeviceCachePrimedWithReply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = selfCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = controllerCopy;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to get device is cache primed for nodeID: %@ for controllerID: %@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke;
  v18[3] = &unk_279893F88;
  v18[4] = selfCopy;
  v13 = dCopy;
  v19 = v13;
  v14 = controllerCopy;
  v20 = v14;
  v21 = replyCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_64;
  v16[3] = &unk_279893FD8;
  v15 = v21;
  v17 = v15;
  [(MTRPluginRemoteClient *)selfCopy sendDeviceMessageToNodeWithID:v13 homeID:v14 deviceNodeMessageType:1001 metric:0 errorBlock:v18 replyBlock:v16];

  objc_sync_exit(selfCopy);
}

uint64_t __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_cold_1();
  }

  return (*(*(a1 + 56) + 16))();
}

uint64_t __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 BOOLValue];
  v7 = *(v2 + 16);

  return v7(v2, v6);
}

- (void)deviceController:(id)controller nodeID:(id)d getEstimatedStartTimeWithReply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = selfCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = controllerCopy;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to get device estimatedStartTime for nodeID: %@ for controllerID: %@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke;
  v18[3] = &unk_279893F88;
  v18[4] = selfCopy;
  v13 = dCopy;
  v19 = v13;
  v14 = controllerCopy;
  v20 = v14;
  v21 = replyCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_65;
  v16[3] = &unk_279893FD8;
  v15 = v21;
  v17 = v15;
  [(MTRPluginRemoteClient *)selfCopy sendDeviceMessageToNodeWithID:v13 homeID:v14 deviceNodeMessageType:1003 metric:0 errorBlock:v18 replyBlock:v16];

  objc_sync_exit(selfCopy);
}

uint64_t __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_cold_1();
  }

  return (*(*(a1 + 56) + 16))();
}

void __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  (*(v2 + 16))(v2, v5);
}

- (void)deviceController:(id)controller nodeID:(id)d getEstimatedSubscriptionLatencyWithReply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = selfCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = controllerCopy;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to get device estimatedSubscriptionLatency for nodeID: %@ for controllerID: %@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke;
  v18[3] = &unk_279893F88;
  v18[4] = selfCopy;
  v13 = dCopy;
  v19 = v13;
  v14 = controllerCopy;
  v20 = v14;
  v21 = replyCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_66;
  v16[3] = &unk_279893FD8;
  v15 = v21;
  v17 = v15;
  [(MTRPluginRemoteClient *)selfCopy sendDeviceMessageToNodeWithID:v13 homeID:v14 deviceNodeMessageType:1004 metric:0 errorBlock:v18 replyBlock:v16];

  objc_sync_exit(selfCopy);
}

uint64_t __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_cold_1();
  }

  return (*(*(a1 + 56) + 16))();
}

void __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  (*(v2 + 16))(v2, v5);
}

- (void)deviceController:(id)controller nodeID:(id)d readAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID params:(id)params withReply:(id)reply
{
  v44 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  attributeIDCopy = attributeID;
  paramsCopy = params;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v31 = selfCopy;
    v32 = 2112;
    v33 = iDCopy;
    v34 = 2112;
    v35 = clusterIDCopy;
    v36 = 2112;
    v37 = attributeIDCopy;
    v38 = 2112;
    v39 = paramsCopy;
    v40 = 2112;
    v41 = dCopy;
    v42 = 2112;
    v43 = controllerCopy;
    _os_log_impl(&dword_25830F000, v23, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to readAttribute: endpointID (%@), clusterID (%@), attributeID (%@), readParams (%@) from device nodeID (%@) for controllerID %@", buf, 0x48u);
  }

  v24 = [MTRPluginPBMDeviceNodeReadAttributeMessage deviceNodeReadAttributeMessageWithNodeID:dCopy endpointID:iDCopy clusterID:clusterIDCopy attributeID:attributeIDCopy readParams:paramsCopy];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke;
  v28[3] = &unk_279894000;
  v28[4] = selfCopy;
  v29 = replyCopy;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_68;
  v26[3] = &unk_279894028;
  v26[4] = selfCopy;
  v25 = v29;
  v27 = v25;
  [(MTRPluginRemoteClient *)selfCopy sendMessageToHomeWithID:controllerCopy messageType:1005 pbCodable:v24 timeout:0 metrics:v28 errorBlock:v26 replyBlock:60.0];

  objc_sync_exit(selfCopy);
}

void __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_68(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  v6 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Successfully finished readAttribute with value: %@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d readAttributePaths:(id)paths withReply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  pathsCopy = paths;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v31 = selfCopy;
    v32 = 2112;
    v33 = pathsCopy;
    v34 = 2112;
    v35 = dCopy;
    v36 = 2112;
    v37 = controllerCopy;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to read multiple attributes: %@ from device nodeID (%@) for controllerID %@", buf, 0x2Au);
  }

  v16 = [MTRPluginPBMDeviceNodeReadMultipleAttributesMessage deviceNodeReadMultipleAttributesMessageWithNodeID:dCopy readAttributePaths:pathsCopy];
  v17 = [MTRPluginRemoteClient deviceFromNodeID:dCopy controllerID:controllerCopy];
  v18 = [MTRPluginBulkReadAttributeMetric bulkReadAttributeMetricForDevice:v17 homeID:controllerCopy remoteMessageID:0];

  if (v18)
  {
    v29 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  }

  else
  {
    v19 = 0;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke;
  v26[3] = &unk_279894050;
  v26[4] = selfCopy;
  v27 = v18;
  v28 = replyCopy;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke_72;
  v22[3] = &unk_279893FB0;
  v20 = v27;
  v23 = v20;
  v24 = selfCopy;
  v21 = v28;
  v25 = v21;
  [(MTRPluginRemoteClient *)selfCopy sendMessageToHomeWithID:controllerCopy messageType:1015 pbCodable:v16 timeout:v19 metrics:v26 errorBlock:v22 replyBlock:60.0];
  if (v18)
  {
  }

  objc_sync_exit(selfCopy);
}

void __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke_cold_1();
  }

  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:*(a1 + 40) error:v3];

  (*(*(a1 + 48) + 16))();
}

void __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke_72(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:a1[4]];

  v5 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:v3];

  v6 = [v5 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 object];
  }

  else
  {
    v7 = 0;
  }

  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[5];
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Successfully finished readMultipleAttributes with value: %@", &v10, 0x16u);
  }

  (*(a1[6] + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d writeAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)self0
{
  v54 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  attributeIDCopy = attributeID;
  valueCopy = value;
  intervalCopy = interval;
  timeoutCopy = timeout;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v24 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v41 = selfCopy;
    v42 = 2112;
    v43 = iDCopy;
    v44 = 2112;
    v45 = clusterIDCopy;
    v46 = 2112;
    v47 = attributeIDCopy;
    v48 = 2112;
    v49 = valueCopy;
    v50 = 2112;
    v51 = dCopy;
    v52 = 2112;
    v53 = controllerCopy;
    _os_log_impl(&dword_25830F000, v24, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to writeAttribute: endpointID (%@), clusterID (%@), attributeID (%@), value (%@) from device nodeID (%@) for controllerID %@", buf, 0x48u);
  }

  v25 = iDCopy;
  v37 = valueCopy;
  v26 = [MTRPluginPBMDeviceNodeWriteAttributeMessage deviceNodeWriteAttributeMessageWithNodeID:dCopy endpointID:iDCopy clusterID:clusterIDCopy attributeID:attributeIDCopy value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timeoutCopy];
  v36 = dCopy;
  v27 = dCopy;
  v28 = controllerCopy;
  v29 = [MTRPluginRemoteClient deviceFromNodeID:v27 controllerID:controllerCopy];
  v30 = v25;
  client = [(MTRPluginRemoteClient *)selfCopy client];
  LOBYTE(v35) = timeoutCopy != 0;
  v32 = +[MTRPluginWriteAttributeMetric writeAttributeMetricForDevice:homeID:clientType:endpointID:clusterID:attributeID:timedWrite:remoteMessageID:](MTRPluginWriteAttributeMetric, "writeAttributeMetricForDevice:homeID:clientType:endpointID:clusterID:attributeID:timedWrite:remoteMessageID:", v29, v28, [client clientType], v30, clusterIDCopy, attributeIDCopy, v35, 0);

  if (v32)
  {
    v39 = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  }

  else
  {
    v33 = 0;
  }

  [(MTRPluginRemoteClient *)selfCopy sendMessageToHomeWithID:v28 messageType:1006 pbCodable:v26 timeout:v33 metrics:0 errorBlock:0 replyBlock:60.0];
  if (v32)
  {
  }

  v34 = +[MTRPluginMetricsCollector sharedInstance];
  [v34 collectMetric:v32];

  objc_sync_exit(selfCopy);
}

+ (id)deviceFromNodeID:(id)d controllerID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  v8 = [v7 deviceControllerForUUID:iDCopy];

  if (v8)
  {
    v9 = [MEMORY[0x277CD5310] deviceWithNodeID:dCopy controller:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deviceController:(id)controller nodeID:(id)d invokeCommandWithEndpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)self0 timedInvokeTimeout:(id)self1 serverSideProcessingTimeout:(id)self2 completion:(id)self3
{
  v78 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  valuesCopy = values;
  intervalCopy = interval;
  v24 = commandIDCopy;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v28 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138414850;
    v57 = selfCopy;
    v58 = 2112;
    v59 = iDCopy;
    v60 = 2112;
    v61 = clusterIDCopy;
    v62 = 2112;
    v63 = v24;
    v64 = 2112;
    v65 = fieldsCopy;
    v66 = 2112;
    v67 = valuesCopy;
    v68 = 2112;
    v69 = intervalCopy;
    v70 = 2112;
    v71 = timeoutCopy;
    v72 = 2112;
    v73 = processingTimeoutCopy;
    v74 = 2112;
    v75 = dCopy;
    v76 = 2112;
    v77 = controllerCopy;
    _os_log_impl(&dword_25830F000, v28, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to invokeCommand: endpointID (%@), clusterID (%@), commandID (%@), commandFields (%@), expectedValues (%@),                expectedValueInterval (%@), timedInvokeTimeout (%@), serverSideProcessingTimeout (%@), from device nodeID (%@) for controllerID %@", buf, 0x70u);
  }

  v44 = intervalCopy;
  v45 = timeoutCopy;
  v43 = valuesCopy;
  v47 = [MTRPluginPBMDeviceNodeInvokeCommmandMessage deviceNodeInvokeCommandMessageWithNodeID:dCopy invokeCommandWithEndpointID:iDCopy clusterID:clusterIDCopy commandID:v24 commandFields:fieldsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timeoutCopy serverSideProcessingTimeout:processingTimeoutCopy];
  v29 = clusterIDCopy;
  v30 = [MTRPluginRemoteClient deviceFromNodeID:dCopy controllerID:controllerCopy];
  client = [(MTRPluginRemoteClient *)selfCopy client];
  LOBYTE(v39) = v45 != 0;
  v32 = +[MTRPluginInvokeCommandMetric invokeCommandMetricForDevice:homeID:clientType:endpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvoke:remoteMessageID:](MTRPluginInvokeCommandMetric, "invokeCommandMetricForDevice:homeID:clientType:endpointID:clusterID:commandID:commandFields:expectedValues:expectedValueInterval:timedInvoke:remoteMessageID:", v30, controllerCopy, [client clientType], iDCopy, v29, v24, fieldsCopy, valuesCopy, v44, v39, 0);

  v40 = fieldsCopy;
  if (v32)
  {
    v55 = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    v34 = v24;
    v35 = iDCopy;
    v36 = dCopy;
  }

  else
  {
    v34 = v24;
    v35 = iDCopy;
    v36 = dCopy;
    v33 = 0;
  }

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke;
  v52[3] = &unk_279894050;
  v52[4] = selfCopy;
  v53 = v32;
  v54 = completionCopy;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_79;
  v49[3] = &unk_279893FB0;
  v49[4] = selfCopy;
  v37 = v53;
  v50 = v37;
  v38 = v54;
  v51 = v38;
  [(MTRPluginRemoteClient *)selfCopy sendMessageToHomeWithID:controllerCopy messageType:1007 pbCodable:v47 timeout:v33 metrics:v52 errorBlock:v49 replyBlock:60.0];
  if (v32)
  {
  }

  objc_sync_exit(selfCopy);
}

void __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_cold_1();
  }

  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:*(a1 + 40) error:v3];

  (*(*(a1 + 48) + 16))();
}

void __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_79(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  v6 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Successfully completed invokeCommand with response: %@", &v9, 0x16u);
  }

  v8 = +[MTRPluginMetricsCollector sharedInstance];
  [v8 collectMetric:a1[5]];

  (*(a1[6] + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d invokeCommands:(id)commands completion:(id)completion
{
  v65 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  commandsCopy = commands;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v58 = selfCopy;
    v59 = 2112;
    v60 = commandsCopy;
    v61 = 2112;
    v62 = dCopy;
    v63 = 2112;
    v64 = controllerCopy;
    _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to invokeBatchCommand: commands (%@), from device nodeID (%@) for controllerID %@", buf, 0x2Au);
  }

  v38 = dCopy;
  v31 = [MTRPluginPBMDeviceNodeInvokeBatchCommmandMessage deviceNodeInvokeBatchCommandMessageWithNodeID:dCopy commands:commandsCopy];
  array = [MEMORY[0x277CBEB18] array];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = commandsCopy;
  v34 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v34)
  {
    v33 = *v52;
    do
    {
      v35 = 0;
      do
      {
        if (*v52 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v51 + 1) + 8 * v35);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v36 = v15;
        v16 = [v36 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v16)
        {
          v17 = *v48;
          do
          {
            v18 = 0;
            do
            {
              if (*v48 != v17)
              {
                objc_enumerationMutation(v36);
              }

              v19 = *(*(&v47 + 1) + 8 * v18);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = v19;
              }

              else
              {
                v20 = 0;
              }

              v21 = v20;
              if (v21)
              {
                v22 = [MTRPluginRemoteClient deviceFromNodeID:v38 controllerID:controllerCopy];
                client = [(MTRPluginRemoteClient *)selfCopy client];
                clientType = [client clientType];
                path = [v21 path];
                commandFields = [v21 commandFields];
                v27 = [MTRPluginInvokeCommandMetric invokeBatchCommandMetricForDevice:v22 homeID:controllerCopy clientType:clientType commandPath:path commandFields:commandFields remoteMessageID:0];

                [array addObject:v27];
              }

              ++v18;
            }

            while (v16 != v18);
            v16 = [v36 countByEnumeratingWithState:&v47 objects:v55 count:16];
          }

          while (v16);
        }

        ++v35;
      }

      while (v35 != v34);
      v34 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v34);
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke;
  v44[3] = &unk_279894050;
  v44[4] = selfCopy;
  v45 = array;
  v46 = completionCopy;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke_83;
  v41[3] = &unk_279893FB0;
  v41[4] = selfCopy;
  v28 = v45;
  v42 = v28;
  v29 = v46;
  v43 = v29;
  [(MTRPluginRemoteClient *)selfCopy sendMessageToHomeWithID:controllerCopy messageType:1017 pbCodable:v31 timeout:v28 metrics:v44 errorBlock:v41 replyBlock:60.0];

  objc_sync_exit(selfCopy);
}

void __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke_cold_1();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = +[MTRPluginMetricsCollector sharedInstance];
        [v10 collectMetric:v9 error:v3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 48) + 16))();
}

void __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke_83(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MTRPluginPBMVariableValueResponseMessage variableValueFromResponsePayloadData:a2];
  v4 = [v3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 object];
  }

  else
  {
    v5 = 0;
  }

  v6 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412546;
    v21 = v7;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_25830F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Successfully completed invokeBatchCommand with response: %@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = +[MTRPluginMetricsCollector sharedInstance];
        [v14 collectMetric:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d downloadLogOfType:(int64_t)type timeout:(double)timeout completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v35 = selfCopy;
    v36 = 1024;
    typeCopy = type;
    v38 = 2048;
    timeoutCopy = timeout;
    v40 = 2112;
    v41 = dCopy;
    v42 = 2112;
    v43 = controllerCopy;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Forwarding remote request to downloadLogOfType: (%d), timeout (%lf), from device nodeID (%@) for controllerID %@", buf, 0x30u);
  }

  completionCopy = [MTRPluginPBMDeviceNodeDownloadDiagnosticLog deviceNodeDownloadDiagnosticLogOfType:type timeout:dCopy nodeID:timeout, completionCopy];
  v17 = [MTRPluginRemoteClient deviceFromNodeID:dCopy controllerID:controllerCopy];
  client = [(MTRPluginRemoteClient *)selfCopy client];
  homeUUID = [client homeUUID];
  client2 = [(MTRPluginRemoteClient *)selfCopy client];
  v21 = +[MTRPluginDownloadDiagnosticLogMetric downloadDiagnosticMetricForDevice:homeID:clientType:logType:remoteMessageID:](MTRPluginDownloadDiagnosticLogMetric, "downloadDiagnosticMetricForDevice:homeID:clientType:logType:remoteMessageID:", v17, homeUUID, [client2 clientType], type, 0);

  if (v21)
  {
    v33 = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  }

  else
  {
    v22 = 0;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke;
  v30[3] = &unk_279894050;
  v30[4] = selfCopy;
  v31 = v21;
  v32 = v26;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_86;
  v27[3] = &unk_279893FB0;
  v27[4] = selfCopy;
  v23 = v31;
  v28 = v23;
  v24 = v32;
  v29 = v24;
  [(MTRPluginRemoteClient *)selfCopy sendMessageToHomeWithID:controllerCopy messageType:1016 pbCodable:completionCopy timeout:v22 metrics:v30 errorBlock:v27 replyBlock:timeout];
  if (v21)
  {
  }

  objc_sync_exit(selfCopy);
}

void __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_cold_1();
  }

  v4 = +[MTRPluginMetricsCollector sharedInstance];
  [v4 collectMetric:*(a1 + 40) error:v3];

  (*(*(a1 + 48) + 16))();
}

void __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_86(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v3 = [MTRPluginPBMDeviceNodeDownloadDiagnosticLog urlFromResponsePayload:a2 error:&v8];
  v4 = v8;
  v5 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    *buf = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_25830F000, v5, OS_LOG_TYPE_DEFAULT, "%@ URL (%@) from response diagnostic log, error: %@", buf, 0x20u);
  }

  v7 = +[MTRPluginMetricsCollector sharedInstance];
  [v7 collectMetric:a1[5] error:v4];

  (*(a1[6] + 16))();
}

- (void)messageTransport:(id)transport handleDeviceStateChanged:(id)changed
{
  v30 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [changedCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceStateChanged:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  value = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
  object = [value object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value2 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
    object2 = [value2 object];
  }

  else
  {
    object2 = 0;
  }

  v19 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412802;
    v25 = selfCopy;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = object2;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Received state changed for node ID: %@, state: %@", &v24, 0x20u);
  }

  if (v14)
  {
    client = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client clientProxy];
    [clientProxy device:v14 stateChanged:{objc_msgSend(object2, "unsignedIntegerValue")}];
  }

  responseHandler = [changedCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [changedCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
}

- (void)messageTransport:(id)transport handleDeviceAttributeReport:(id)report
{
  v33 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  reportCopy = report;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [reportCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceAttributeReport:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  value = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
  object = [value object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value2 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
    object2 = [value2 object];
  }

  else
  {
    object2 = 0;
  }

  v19 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412802;
    v28 = selfCopy;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = object2;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Received attribute report for node ID: %@, report: %@", &v27, 0x20u);
  }

  if (v14)
  {
    v20 = objc_autoreleasePoolPush();
    client = [(MTRPluginRemoteClient *)selfCopy client];
    localClient = [client localClient];
    [localClient device:v14 injectAttributeReport:object2];

    client2 = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client2 clientProxy];
    [clientProxy device:v14 receivedAttributeReport:object2];

    objc_autoreleasePoolPop(v20);
  }

  responseHandler = [reportCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [reportCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
}

- (void)messageTransport:(id)transport handleDeviceEventReport:(id)report
{
  v33 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  reportCopy = report;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [reportCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceEventReport:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  value = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
  object = [value object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value2 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
    object2 = [value2 object];
  }

  else
  {
    object2 = 0;
  }

  v19 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412802;
    v28 = selfCopy;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = object2;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Received event report for node ID: %@, report: %@", &v27, 0x20u);
  }

  if (v14)
  {
    v20 = objc_autoreleasePoolPush();
    client = [(MTRPluginRemoteClient *)selfCopy client];
    localClient = [client localClient];
    [localClient device:v14 injectEventReport:object2];

    client2 = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client2 clientProxy];
    [clientProxy device:v14 receivedEventReport:object2];

    objc_autoreleasePoolPop(v20);
  }

  responseHandler = [reportCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [reportCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
}

- (void)messageTransport:(id)transport handleDeviceBecameActive:(id)active
{
  v24 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  activeCopy = active;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [activeCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceBecameActive:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = selfCopy;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Received device became active for node ID: %@", &v20, 0x16u);
  }

  if (v14)
  {
    client = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client clientProxy];
    [clientProxy deviceBecameActive:v14];
  }

  responseHandler = [activeCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [activeCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
}

- (void)messageTransport:(id)transport handleDeviceCachePrimed:(id)primed
{
  v24 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  primedCopy = primed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [primedCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceCachePrimed:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = selfCopy;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Received device cache primed for node ID: %@", &v20, 0x16u);
  }

  if (v14)
  {
    client = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client clientProxy];
    [clientProxy deviceCachePrimed:v14];
  }

  responseHandler = [primedCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [primedCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
}

- (void)messageTransport:(id)transport handleDeviceConfigurationChanged:(id)changed
{
  v24 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [changedCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceConfigurationChanged:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  v15 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = selfCopy;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_25830F000, v15, OS_LOG_TYPE_DEFAULT, "%@ Received device configChanged for node ID: %@", &v20, 0x16u);
  }

  if (v14)
  {
    client = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client clientProxy];
    [clientProxy deviceConfigurationChanged:v14];
  }

  responseHandler = [changedCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [changedCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
}

- (void)messageTransport:(id)transport handleDeviceInternalStateUpdated:(id)updated
{
  v28 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  updatedCopy = updated;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceNodeMessage alloc];
  messageData = [updatedCopy messageData];
  v11 = [(MTRPluginPBMDeviceNodeMessage *)v9 initWithData:messageData];

  if (!v11 && os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceInternalStateUpdated:];
  }

  v12 = MEMORY[0x277CCABB0];
  node = [(MTRPluginPBMDeviceNodeMessage *)v11 node];
  v14 = [v12 numberWithUnsignedLongLong:{objc_msgSend(node, "nodeID")}];

  value = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
  object = [value object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value2 = [(MTRPluginPBMDeviceNodeMessage *)v11 value];
    object2 = [value2 object];
  }

  else
  {
    object2 = 0;
  }

  v19 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    v25 = selfCopy;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ Received device internal state changed for node ID: %@", &v24, 0x16u);
  }

  if (v14)
  {
    client = [(MTRPluginRemoteClient *)selfCopy client];
    clientProxy = [client clientProxy];
    [clientProxy device:v14 internalStateUpdated:object2];
  }

  responseHandler = [updatedCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [updatedCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  objc_sync_exit(selfCopy);
}

- (void)messageTransport:(id)transport handleControllerConfigUpdated:(id)updated
{
  v27 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  updatedCopy = updated;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [MTRPluginPBMDeviceControllerMessage alloc];
  messageData = [updatedCopy messageData];
  v11 = [(MTRPluginPBMDeviceControllerMessage *)v9 initWithData:messageData];

  if (v11)
  {
    value = [(MTRPluginPBMDeviceControllerMessage *)v11 value];
    object = [value object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value2 = [(MTRPluginPBMDeviceControllerMessage *)v11 value];
      object2 = [value2 object];
    }

    else
    {
      object2 = 0;
    }

    v16 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412546;
      v24 = selfCopy;
      v25 = 2112;
      v26 = object2;
      _os_log_impl(&dword_25830F000, v16, OS_LOG_TYPE_DEFAULT, "%@ Received controller configuration update %@", &v23, 0x16u);
    }

    if ([object2 count])
    {
      client = [(MTRPluginRemoteClient *)selfCopy client];
      clientProxy = [client clientProxy];
      client2 = [(MTRPluginRemoteClient *)selfCopy client];
      homeUUID = [client2 homeUUID];
      [clientProxy controller:homeUUID controllerConfigurationUpdated:object2];
    }

    responseHandler = [updatedCopy responseHandler];

    if (responseHandler)
    {
      responseHandler2 = [updatedCopy responseHandler];
      responseHandler2[2](responseHandler2, 0, 0);
    }
  }

  else if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginRemoteClient messageTransport:handleDeviceInternalStateUpdated:];
  }

  objc_sync_exit(selfCopy);
}

- (MTRPluginClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

void __109__MTRPluginRemoteClient_sendMessageToHomeWithID_messageType_pbCodable_timeout_metrics_errorBlock_replyBlock___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  v7 = a2;
  v8 = [MTRPluginPBMHeader messageTypeAsString:v6];
  v9 = *(a1 + 40);
  v10 = 138413314;
  v11 = v5;
  v12 = 1024;
  v13 = v6;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = v9;
  v18 = 2112;
  v19 = a3;
  _os_log_error_impl(&dword_25830F000, v7, OS_LOG_TYPE_ERROR, "%@ Response received for message type %d (%@) from homeID %@ with error: %@", &v10, 0x30u);
}

void __72__MTRPluginRemoteClient_deviceController_updateControllerConfiguration___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __67__MTRPluginRemoteClient_deviceController_nodeID_getStateWithReply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_0(&dword_25830F000, v0, v1, "%@ Failed to get state of device %@ from controller %@", v2, v3, v4, v5);
}

void __79__MTRPluginRemoteClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_0(&dword_25830F000, v0, v1, "%@ Failed to get cachePrimed of device %@ from controller %@", v2, v3, v4, v5);
}

void __80__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_0(&dword_25830F000, v0, v1, "%@ Failed to getEstimatedStartTime of device %@ from controller %@", v2, v3, v4, v5);
}

void __90__MTRPluginRemoteClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_0(&dword_25830F000, v0, v1, "%@ Failed to getEstimatedSubscriptionLatency of device %@ from controller %@", v2, v3, v4, v5);
}

void __116__MTRPluginRemoteClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __78__MTRPluginRemoteClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __206__MTRPluginRemoteClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __75__MTRPluginRemoteClient_deviceController_nodeID_invokeCommands_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __86__MTRPluginRemoteClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)messageTransport:handleDeviceStateChanged:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)messageTransport:handleDeviceAttributeReport:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)messageTransport:handleDeviceEventReport:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)messageTransport:handleDeviceBecameActive:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)messageTransport:handleDeviceCachePrimed:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)messageTransport:handleDeviceConfigurationChanged:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)messageTransport:handleDeviceInternalStateUpdated:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end