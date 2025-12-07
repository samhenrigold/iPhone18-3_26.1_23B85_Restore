@interface DRSTaskingManager
- (BOOL)checkConfigsForInvalidation:(id *)invalidation;
- (BOOL)clearTaskingHistoryWithErrorOut:(id *)out;
- (BOOL)isTaskingEnabled;
- (BOOL)processTaskingSystemMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry;
- (BOOL)processTaskingSystemMessageJSONData:(id)data transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry;
- (BOOL)processTaskingSystemMessageJSONDict:(id)dict cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry;
- (BOOL)subscribeToChannelWithConfig:(id)config errorOut:(id *)out;
- (BOOL)unsubscribeFromSubscribedChannelWithErrorOut:(id *)out;
- (BOOL)updatePersistedChannelConfig:(id)config errorOut:(id *)out;
- (DRSTaskingManager)initWithDecisionMaker:(id)maker cloudKitHelper:(id)helper configStateChangeBlock:(id)block;
- (id)metadataForConfigUUID:(id)d teamID:(id)iD errorOut:(id *)out;
- (id)persistedCloudChannelConfig;
- (void)_bestEffortLogMessageReceiptTelemetry:(id)telemetry transaction:(id)transaction cloudChannelConfig:(id)config;
- (void)_emitTaskingSystemMessageTelemetry:(id)telemetry messageType:(id)type dateBroadcast:(id)broadcast dateReceived:(id)received transaction:(id)transaction cloudChannelConfig:(id)config;
- (void)_emitTelemetryForLoggableMesssage:(id)messsage transaction:(id)transaction cloudChannelConfig:(id)config;
- (void)clientCompletedConfigUUID:(id)d teamID:(id)iD;
- (void)clientRejectsConfigUUID:(id)d teamID:(id)iD;
- (void)processCancelMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry;
- (void)processPingMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry;
- (void)processTaskingMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry;
@end

@implementation DRSTaskingManager

- (void)_emitTaskingSystemMessageTelemetry:(id)telemetry messageType:(id)type dateBroadcast:(id)broadcast dateReceived:(id)received transaction:(id)transaction cloudChannelConfig:(id)config
{
  v42[3] = *MEMORY[0x277D85DE8];
  telemetryCopy = telemetry;
  typeCopy = type;
  broadcastCopy = broadcast;
  receivedCopy = received;
  transactionCopy = transaction;
  configCopy = config;
  v19 = configCopy;
  if (typeCopy)
  {
    v20 = typeCopy;
  }

  else
  {
    v20 = @"InvalidMessage";
  }

  v35 = v20;
  if (configCopy)
  {
    v42[0] = v20;
    v41[0] = kMessageReceivedEventKey_MessageType;
    v41[1] = kMessageReceivedEventKey_ChannelType;
    v21 = +[DRSCloudChannelConfig stringForChannelType:](DRSCloudChannelConfig, "stringForChannelType:", [configCopy type]);
    v42[1] = v21;
    v41[2] = kMessageReceivedEventKey_ChannelEnvironment;
    v22 = +[DRSCloudChannelConfig stringForEnvironment:](DRSCloudChannelConfig, "stringForEnvironment:", [v19 environment]);
    v42[2] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
    v24 = [v23 mutableCopy];
  }

  else
  {
    v39[0] = kMessageReceivedEventKey_MessageType;
    v39[1] = kMessageReceivedEventKey_ChannelType;
    v40[0] = v20;
    v40[1] = @"ManualInjection";
    v39[2] = kMessageReceivedEventKey_ChannelEnvironment;
    v40[2] = @"ManualInjection";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
    v24 = [v21 mutableCopy];
  }

  if (telemetryCopy)
  {
    uUIDString = [telemetryCopy UUIDString];
    [v24 setObject:uUIDString forKeyedSubscript:kUUIDKey];
  }

  if (broadcastCopy && receivedCopy)
  {
    v26 = MEMORY[0x277CCABB0];
    [receivedCopy timeIntervalSinceDate:broadcastCopy];
    v27 = [v26 numberWithDouble:?];
    [v24 setObject:v27 forKeyedSubscript:kMessageReceivedEventKey_ReceiptDelay];
  }

  DRSCoreAnalyticsSendEvent(kMessageReceivedEventName, v24);
  v28 = +[DRSSystemProfile sharedInstance];
  if (![v28 isInternal])
  {
    goto LABEL_15;
  }

  cloudKitHelper = [(DRSTaskingManager *)self cloudKitHelper];

  if (cloudKitHelper)
  {
    cloudKitHelper2 = [(DRSTaskingManager *)self cloudKitHelper];
    v30 = [v24 objectForKeyedSubscript:kUUIDKey];
    v31 = [v24 objectForKeyedSubscript:kMessageReceivedEventKey_MessageType];
    v32 = [v24 objectForKeyedSubscript:kMessageReceivedEventKey_ChannelType];
    v33 = [v24 objectForKeyedSubscript:kMessageReceivedEventKey_ChannelEnvironment];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __126__DRSTaskingManager__emitTaskingSystemMessageTelemetry_messageType_dateBroadcast_dateReceived_transaction_cloudChannelConfig___block_invoke;
    v37[3] = &unk_27899F820;
    v38 = telemetryCopy;
    [cloudKitHelper2 reportTaskingSystemMessageReceipt:v30 messageType:v31 channelType:v32 channelEnvironment:v33 dateBroadcast:broadcastCopy dateReceived:receivedCopy transaction:transactionCopy completionHandler:v37];

    v28 = v38;
LABEL_15:
  }
}

void __126__DRSTaskingManager__emitTaskingSystemMessageTelemetry_messageType_dateBroadcast_dateReceived_transaction_cloudChannelConfig___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = DPLogHandle_ConfigPersistedStoreError(v3);
    if (os_signpost_enabled(v5))
    {
      v6 = *(a1 + 32);
      v12 = 138543618;
      v13 = v6;
      v14 = 2114;
      v15 = v4;
      v7 = "TaskingManagerMessageReceiptTelemetryError";
      v8 = "Telemetry reporting for %{public}@ failed %{public}@";
      v9 = v5;
      v10 = 22;
LABEL_6:
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v7, v8, &v12, v10);
    }
  }

  else
  {
    v5 = DPLogHandle_ConfigPersistedStore(0);
    if (os_signpost_enabled(v5))
    {
      v11 = *(a1 + 32);
      v12 = 138543362;
      v13 = v11;
      v7 = "TaskingManagerMessageReceiptTelemetrySuccess";
      v8 = "Telemetry reporting for %{public}@ succeeded!";
      v9 = v5;
      v10 = 12;
      goto LABEL_6;
    }
  }
}

- (void)_emitTelemetryForLoggableMesssage:(id)messsage transaction:(id)transaction cloudChannelConfig:(id)config
{
  configCopy = config;
  transactionCopy = transaction;
  messsageCopy = messsage;
  messageUUID = [messsageCopy messageUUID];
  messageType = [messsageCopy messageType];
  dateBroadcast = [messsageCopy dateBroadcast];
  dateReceived = [messsageCopy dateReceived];

  [(DRSTaskingManager *)self _emitTaskingSystemMessageTelemetry:messageUUID messageType:messageType dateBroadcast:dateBroadcast dateReceived:dateReceived transaction:transactionCopy cloudChannelConfig:configCopy];
}

- (void)processTaskingMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry
{
  telemetryCopy = telemetry;
  messageCopy = message;
  configCopy = config;
  transactionCopy = transaction;
  if (telemetryCopy)
  {
    [(DRSTaskingManager *)self _emitTelemetryForLoggableMesssage:messageCopy transaction:transactionCopy cloudChannelConfig:configCopy];
  }

  workQueue = [(DRSTaskingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__DRSTaskingManager_processTaskingMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke;
  block[3] = &unk_27899F9E0;
  v18 = messageCopy;
  selfCopy = self;
  v22 = telemetryCopy;
  v20 = configCopy;
  v21 = transactionCopy;
  v14 = transactionCopy;
  v15 = configCopy;
  v16 = messageCopy;
  dispatch_sync(workQueue, block);
}

void __96__DRSTaskingManager_processTaskingMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = DPLogHandle_TaskingManager(a1);
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) messageUUID];
    *buf = 138543362;
    v25 = v3;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedTaskingMessage", "TaskingMessage with UUID %{public}@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) decisionMaker];
  v5 = [v4 acceptedConfigs:*(a1 + 32) logTelemetry:*(a1 + 64) allowWildcardBuild:{objc_msgSend(*(a1 + 48), "allowsWildcardBuild")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 state] == 2;
        v12 = [*(a1 + 40) workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __96__DRSTaskingManager_processTaskingMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke_44;
        block[3] = &unk_27899F9E0;
        v13 = *(a1 + 32);
        block[4] = *(a1 + 40);
        block[5] = v10;
        v18 = v11;
        v16 = v13;
        v17 = *(a1 + 56);
        dispatch_async(v12, block);
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

void __96__DRSTaskingManager_processTaskingMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke_44(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configStateChangeBlock];
  v3 = [*(a1 + 40) teamID];
  v4 = [*(a1 + 40) configUUID];
  v5 = [*(a1 + 40) config];
  (v2)[2](v2, v3, v4, v5, [*(a1 + 40) state], 0, *(a1 + 64));

  v7 = DPLogHandle_TaskingManager(v6);
  if (os_signpost_enabled(v7))
  {
    v8 = [*(a1 + 40) configUUID];
    v9 = [*(a1 + 40) teamID];
    v10 = [*(a1 + 48) messageUUID];
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AcceptedConfig", "Accepted config %{public}@ (teamID: %{public}@) due to tasking message %{public}@", &v11, 0x20u);
  }
}

- (void)processCancelMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry
{
  telemetryCopy = telemetry;
  messageCopy = message;
  transactionCopy = transaction;
  if (telemetryCopy)
  {
    [(DRSTaskingManager *)self _emitTelemetryForLoggableMesssage:messageCopy transaction:transactionCopy cloudChannelConfig:config];
  }

  workQueue = [(DRSTaskingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke;
  block[3] = &unk_27899F400;
  v16 = messageCopy;
  selfCopy = self;
  v18 = transactionCopy;
  v13 = transactionCopy;
  v14 = messageCopy;
  dispatch_sync(workQueue, block);
}

void __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = DPLogHandle_TaskingManager(a1);
  if (os_signpost_enabled(v2))
  {
    v3 = [a1[4] messageUUID];
    *buf = 138543362;
    v12 = v3;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedCancelMessage", "CancelMessage with UUID %{public}@", buf, 0xCu);
  }

  v4 = [a1[5] decisionMaker];
  v5 = [v4 acceptedCancels:a1[4]];

  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke_46;
    v8[3] = &unk_27899FA30;
    v7 = *(a1 + 2);
    v6 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    v10 = a1[6];
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke_46(id *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = [a1[4] workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke_2;
        block[3] = &unk_27899FA08;
        block[4] = a1[4];
        v14 = v5;
        v15 = v10;
        v16 = a1[5];
        v17 = a1[6];
        dispatch_async(v11, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

void __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configStateChangeBlock];
  v2[2](v2, *(a1 + 40), *(a1 + 48), 0, 3, 2, 1);

  v4 = DPLogHandle_TaskingManager(v3);
  if (os_signpost_enabled(v4))
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = [*(a1 + 56) messageUUID];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelledConfig", "Cancelled config %{public}@ (teamID: %{public}@) due to cancel message %{public}@", &v8, 0x20u);
  }
}

- (void)processPingMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry
{
  telemetryCopy = telemetry;
  messageCopy = message;
  configCopy = config;
  transactionCopy = transaction;
  v13 = transactionCopy;
  if (telemetryCopy)
  {
    transactionCopy = [(DRSTaskingManager *)self _emitTelemetryForLoggableMesssage:messageCopy transaction:transactionCopy cloudChannelConfig:configCopy];
  }

  v14 = DPLogHandle_TaskingManager(transactionCopy);
  if (os_signpost_enabled(v14))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedPingMesssage", &unk_232980861, v15, 2u);
  }
}

- (BOOL)processTaskingSystemMessageJSONData:(id)data transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry
{
  telemetryCopy = telemetry;
  v21 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v18 = 0;
  v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v18];
  v10 = v18;
  v11 = v10;
  if (v9)
  {
    v12 = [(DRSTaskingManager *)self processTaskingSystemMessageJSONDict:v9 cloudChannelConfig:0 transaction:transactionCopy shouldEmitCATelemetry:telemetryCopy];
  }

  else
  {
    v13 = DPLogHandle_TaskingManagerError(v10);
    if (os_signpost_enabled(v13))
    {
      localizedDescription = [v11 localizedDescription];
      v15 = localizedDescription;
      v16 = @"Unknown";
      if (localizedDescription)
      {
        v16 = localizedDescription;
      }

      *buf = 138543362;
      v20 = v16;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidJSONData", "Could not process JSON data due to error %{public}@", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (void)_bestEffortLogMessageReceiptTelemetry:(id)telemetry transaction:(id)transaction cloudChannelConfig:(id)config
{
  telemetryCopy = telemetry;
  transactionCopy = transaction;
  configCopy = config;
  date = [MEMORY[0x277CBEAA8] date];
  v11 = _dateFromJSONDict(telemetryCopy, kDRSTaskingSystemMessage_DateBroadcastKey);
  v12 = [telemetryCopy objectForKeyedSubscript:kDRSTaskingSystemMessage_messageUUIDKey];
  if (v12)
  {
    v13 = v12;
    v14 = off_27899E9D8;
LABEL_5:
    messageType = [(__objc2_class *)*v14 messageType];
    goto LABEL_6;
  }

  v13 = [telemetryCopy objectForKeyedSubscript:kDRSTaskingSystemMessage_messageUUIDKey];
  if (v13)
  {
    v14 = off_27899E8C8;
    goto LABEL_5;
  }

  messageType = 0;
LABEL_6:
  [(DRSTaskingManager *)self _emitTaskingSystemMessageTelemetry:v13 messageType:messageType dateBroadcast:v11 dateReceived:date transaction:transactionCopy cloudChannelConfig:configCopy];
}

- (BOOL)processTaskingSystemMessageJSONDict:(id)dict cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry
{
  telemetryCopy = telemetry;
  v19 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  configCopy = config;
  transactionCopy = transaction;
  isTaskingEnabled = [(DRSTaskingManager *)self isTaskingEnabled];
  if (isTaskingEnabled)
  {
    v14 = DRSTaskingSystemMessageFromJSONDict(dictCopy);
    if (v14)
    {
      LOBYTE(telemetryCopy) = [(DRSTaskingManager *)self processTaskingSystemMessage:v14 cloudChannelConfig:configCopy transaction:transactionCopy shouldEmitCATelemetry:telemetryCopy];
    }

    else
    {
      v16 = DPLogHandle_TaskingManagerError(0);
      if (os_signpost_enabled(v16))
      {
        LOWORD(v17) = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidTaskingSystemJSONData", "Received invalid JSON tasking system message", &v17, 2u);
      }

      if (telemetryCopy)
      {
        [(DRSTaskingManager *)self _bestEffortLogMessageReceiptTelemetry:dictCopy transaction:transactionCopy cloudChannelConfig:configCopy];
        LOBYTE(telemetryCopy) = 0;
      }
    }
  }

  else
  {
    v14 = DPLogHandle_TaskingManager(isTaskingEnabled);
    if (os_signpost_enabled(v14))
    {
      v17 = 138543362;
      v18 = dictCopy;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IgnoringMessageDueToDisablement", "Disabled, so ignoring tasking system message dictionary: %{public}@", &v17, 0xCu);
    }

    LOBYTE(telemetryCopy) = 1;
  }

  return telemetryCopy;
}

- (BOOL)processTaskingSystemMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry
{
  telemetryCopy = telemetry;
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  configCopy = config;
  transactionCopy = transaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(DRSTaskingManager *)self processTaskingMessage:messageCopy cloudChannelConfig:configCopy transaction:transactionCopy shouldEmitCATelemetry:telemetryCopy];
LABEL_7:
    v14 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(DRSTaskingManager *)self processCancelMessage:messageCopy cloudChannelConfig:configCopy transaction:transactionCopy shouldEmitCATelemetry:telemetryCopy];
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [(DRSTaskingManager *)self processPingMessage:messageCopy cloudChannelConfig:configCopy transaction:transactionCopy shouldEmitCATelemetry:telemetryCopy];
    goto LABEL_7;
  }

  v16 = DPLogHandle_TaskingManagerError(isKindOfClass);
  if (os_signpost_enabled(v16))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = 138412290;
    v20 = v18;
    _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnknownMessageClass", "Received unknown message class: %{pbulic}@", &v19, 0xCu);
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (DRSTaskingManager)initWithDecisionMaker:(id)maker cloudKitHelper:(id)helper configStateChangeBlock:(id)block
{
  makerCopy = maker;
  helperCopy = helper;
  blockCopy = block;
  v12 = blockCopy;
  if (!blockCopy)
  {
    v19 = DPLogHandle_TaskingManagerError(0);
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      v20 = "No config state change block specified";
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingManagerInitFailure", v20, buf, 2u);
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

  if (!makerCopy)
  {
    v19 = DPLogHandle_TaskingManagerError(blockCopy);
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      v20 = "No decision maker provided";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v22.receiver = self;
  v22.super_class = DRSTaskingManager;
  v13 = [(DRSTaskingManager *)&v22 init];
  if (v13)
  {
    v14 = dispatch_queue_create("DRSTaskingManager message queue", 0);
    workQueue = v13->_workQueue;
    v13->_workQueue = v14;

    v16 = _Block_copy(v12);
    configStateChangeBlock = v13->_configStateChangeBlock;
    v13->_configStateChangeBlock = v16;

    objc_storeStrong(&v13->_decisionMaker, maker);
    objc_storeStrong(&v13->_cloudKitHelper, helper);
  }

  self = v13;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (void)clientRejectsConfigUUID:(id)d teamID:(id)iD
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v8 = DPLogHandle_TaskingManager(iDCopy);
  if (os_signpost_enabled(v8))
  {
    *buf = 138543618;
    v24 = dCopy;
    v25 = 2114;
    v26 = iDCopy;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientRejectsConfig", "Client rejects config %{public}@ (teamID: %{public}@)", buf, 0x16u);
  }

  decisionMaker = [(DRSTaskingManager *)self decisionMaker];
  configStore = [decisionMaker configStore];
  v22 = 0;
  v11 = [configStore configMetadataForUUID:dCopy errorOut:&v22];
  v12 = v22;

  if (v11)
  {
    state = [v11 state];
    if (state == 3)
    {
      configStateChangeBlock = DPLogHandle_TaskingManagerError(state);
      if (os_signpost_enabled(configStateChangeBlock))
      {
        *buf = 138543618;
        v24 = iDCopy;
        v25 = 2114;
        v26 = dCopy;
        v16 = "Client (teamID %{public}@) attempting to reject completed config %{public}@";
LABEL_13:
        _os_signpost_emit_with_name_impl(&dword_232906000, configStateChangeBlock, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientRejectsConfigError", v16, buf, 0x16u);
      }
    }

    else
    {
      teamID = [v11 teamID];
      v18 = [teamID isEqualToString:iDCopy];

      if (v18)
      {
        decisionMaker2 = [(DRSTaskingManager *)self decisionMaker];
        [decisionMaker2 clientRejectsConfigUUID:dCopy];

        v21 = [v11 state] == 2;
        configStateChangeBlock = [(DRSTaskingManager *)self configStateChangeBlock];
        (*(configStateChangeBlock + 16))(configStateChangeBlock, iDCopy, dCopy, 0, 3, 5, v21);
      }

      else
      {
        configStateChangeBlock = DPLogHandle_TaskingManagerError(v19);
        if (os_signpost_enabled(configStateChangeBlock))
        {
          *buf = 138543618;
          v24 = iDCopy;
          v25 = 2114;
          v26 = dCopy;
          v16 = "Client (teamID %{public}@) attempting to reject config %{public}@ for wrong team";
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    configStateChangeBlock = DPLogHandle_TaskingManagerError(v13);
    if (os_signpost_enabled(configStateChangeBlock))
    {
      *buf = 138543618;
      v24 = iDCopy;
      v25 = 2114;
      v26 = dCopy;
      v16 = "Client (teamID %{public}@) attempting to reject non-existent config %{public}@";
      goto LABEL_13;
    }
  }
}

- (void)clientCompletedConfigUUID:(id)d teamID:(id)iD
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v8 = DPLogHandle_TaskingManager(iDCopy);
  if (os_signpost_enabled(v8))
  {
    *buf = 138543618;
    v24 = dCopy;
    v25 = 2114;
    v26 = iDCopy;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientCompletedConfig", "Client completed config %{public}@ (teamID: %{public}@)", buf, 0x16u);
  }

  decisionMaker = [(DRSTaskingManager *)self decisionMaker];
  configStore = [decisionMaker configStore];
  v22 = 0;
  v11 = [configStore configMetadataForUUID:dCopy errorOut:&v22];
  v12 = v22;

  if (v11)
  {
    state = [v11 state];
    if (state == 3)
    {
      configStateChangeBlock = DPLogHandle_TaskingManagerError(state);
      if (os_signpost_enabled(configStateChangeBlock))
      {
        *buf = 138543618;
        v24 = iDCopy;
        v25 = 2114;
        v26 = dCopy;
        v16 = "Client (teamID %{public}@) attempting to complete already-completed config %{public}@";
LABEL_13:
        _os_signpost_emit_with_name_impl(&dword_232906000, configStateChangeBlock, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientCompletedConfigError", v16, buf, 0x16u);
      }
    }

    else
    {
      teamID = [v11 teamID];
      v18 = [teamID isEqualToString:iDCopy];

      if (v18)
      {
        decisionMaker2 = [(DRSTaskingManager *)self decisionMaker];
        [decisionMaker2 clientCompletedConfigUUID:dCopy];

        v21 = [v11 state] == 2;
        configStateChangeBlock = [(DRSTaskingManager *)self configStateChangeBlock];
        (*(configStateChangeBlock + 16))(configStateChangeBlock, iDCopy, dCopy, 0, 3, 6, v21);
      }

      else
      {
        configStateChangeBlock = DPLogHandle_TaskingManagerError(v19);
        if (os_signpost_enabled(configStateChangeBlock))
        {
          *buf = 138543618;
          v24 = iDCopy;
          v25 = 2114;
          v26 = dCopy;
          v16 = "Client (teamID %{public}@) attempting to complete config %{public}@ for wrong team";
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    configStateChangeBlock = DPLogHandle_TaskingManagerError(v13);
    if (os_signpost_enabled(configStateChangeBlock))
    {
      *buf = 138543618;
      v24 = iDCopy;
      v25 = 2114;
      v26 = dCopy;
      v16 = "Client (teamID %{public}@) attempting to complete non-existent config %{public}@";
      goto LABEL_13;
    }
  }
}

- (id)metadataForConfigUUID:(id)d teamID:(id)iD errorOut:(id *)out
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(teamID == %@) AND (configUUID == %@)", iD, d];
  decisionMaker = [(DRSTaskingManager *)self decisionMaker];
  configStore = [decisionMaker configStore];
  v17 = 0;
  v10 = [configStore configMetadatasForPredicate:v7 sortDescriptors:0 fetchLimit:1 errorOut:&v17];
  v11 = v17;

  if (v11)
  {
    v13 = DPLogHandle_TaskingManagerError(v12);
    if (os_signpost_enabled(v13))
    {
      *buf = 138543362;
      v19 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MetadataLookupFailure", "Failed to lookup metadata due to error: %{public}@", buf, 0xCu);
    }

    if (out)
    {
      v14 = v11;
      firstObject = 0;
      *out = v11;
      goto LABEL_10;
    }
  }

  else if (v10 && [v10 count])
  {
    firstObject = [v10 firstObject];
    goto LABEL_10;
  }

  firstObject = 0;
LABEL_10:

  return firstObject;
}

- (BOOL)clearTaskingHistoryWithErrorOut:(id *)out
{
  decisionMaker = [(DRSTaskingManager *)self decisionMaker];
  configStore = [decisionMaker configStore];
  LOBYTE(out) = [configStore clearStoreWithErrorOut:out];

  return out;
}

- (id)persistedCloudChannelConfig
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  workQueue = [(DRSTaskingManager *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__DRSTaskingManager_persistedCloudChannelConfig__block_invoke;
  v6[3] = &unk_27899F4F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __48__DRSTaskingManager_persistedCloudChannelConfig__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) decisionMaker];
  v2 = [v6 configStore];
  v3 = [v2 cloudChannelConfig];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)updatePersistedChannelConfig:(id)config errorOut:(id *)out
{
  configCopy = config;
  decisionMaker = [(DRSTaskingManager *)self decisionMaker];
  configStore = [decisionMaker configStore];
  LOBYTE(out) = [configStore updateCloudChannelConfig:configCopy errorOut:out];

  return out;
}

- (BOOL)unsubscribeFromSubscribedChannelWithErrorOut:(id *)out
{
  v21[1] = *MEMORY[0x277D85DE8];
  *out = 0;
  taskingMessageChannel = [(DRSTaskingManager *)self taskingMessageChannel];

  if (!taskingMessageChannel)
  {
    return 1;
  }

  taskingMessageChannel2 = [(DRSTaskingManager *)self taskingMessageChannel];
  v7 = [taskingMessageChannel2 unsubscribe:out];

  if (v7)
  {
    [(DRSTaskingManager *)self setTaskingMessageChannel:0];
    return 1;
  }

  if (!*out)
  {
    v10 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"Unknown unsubscribe failure";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *out = [v10 errorWithDomain:@"DiagnosticRequestCloudChannelError" code:0 userInfo:v11];
  }

  v12 = DPLogHandle_TaskingManagerError(v8);
  if (os_signpost_enabled(v12))
  {
    taskingMessageChannel3 = [(DRSTaskingManager *)self taskingMessageChannel];
    config = [taskingMessageChannel3 config];
    v15 = *out;
    v16 = 138543618;
    v17 = config;
    v18 = 2114;
    v19 = v15;
    _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnsubscribeChannelFailed", "Failed to unsubscribe from %{public}@ due to error: %{public}@", &v16, 0x16u);
  }

  return 0;
}

- (BOOL)isTaskingEnabled
{
  v2 = +[DRSSystemProfile sharedInstance];
  isTaskingEnabled = [v2 isTaskingEnabled];

  return isTaskingEnabled;
}

- (BOOL)subscribeToChannelWithConfig:(id)config errorOut:(id *)out
{
  v22 = *MEMORY[0x277D85DE8];
  configCopy = config;
  *out = 0;
  if (configCopy)
  {
    v7 = [DRSTaskingMessageChannel alloc];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__DRSTaskingManager_subscribeToChannelWithConfig_errorOut___block_invoke;
    v17[3] = &unk_27899FA58;
    v17[4] = self;
    v8 = [(DRSTaskingMessageChannel *)v7 initWithCloudChannelConfig:configCopy payloadProcessingBlock:v17];
    v9 = [(DRSTaskingMessageChannel *)v8 subscribe:out];
    v10 = v9;
    if (v9)
    {
      [(DRSTaskingManager *)self setTaskingMessageChannel:v8];
    }

    else
    {
      v12 = DPLogHandle_TaskingManagerError(v9);
      if (os_signpost_enabled(v12))
      {
        v13 = [configCopy debugDescription];
        v14 = v13;
        v15 = *out;
        if (!*out)
        {
          v15 = @"Unknown";
        }

        *buf = 138543618;
        v19 = v13;
        v20 = 2114;
        v21 = v15;
        _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubscriptionFailed", "Failed to subscribe to %{public}@ to error: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = DPLogHandle_TaskingManager(0);
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NotSubscribingToTaskingChannel", "nil config means no subscription", buf, 2u);
    }

    v10 = 1;
  }

  return v10;
}

void __59__DRSTaskingManager_subscribeToChannelWithConfig_errorOut___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_transaction_create();
  v8 = DPLogHandle_TaskingManager(v7);
  if (os_signpost_enabled(v8))
  {
    v9 = 138543362;
    v10 = v5;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingSystemMessageReceived", "Tasking system message: %{public}@", &v9, 0xCu);
  }

  [*(a1 + 32) processTaskingSystemMessageJSONDict:v5 cloudChannelConfig:v6 transaction:v7 shouldEmitCATelemetry:1];
}

- (BOOL)checkConfigsForInvalidation:(id *)invalidation
{
  v110 = *MEMORY[0x277D85DE8];
  *invalidation = 0;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(state == %u) || (state == %u)", 2, 1];
  decisionMaker = [(DRSTaskingManager *)self decisionMaker];
  configStore = [decisionMaker configStore];
  v8 = [configStore configMetadatasForPredicate:v5 sortDescriptors:0 fetchLimit:0 errorOut:invalidation];

  v10 = *invalidation;
  if (*invalidation)
  {
    v11 = DPLogHandle_TaskingManagerError(v9);
    if (os_signpost_enabled(v11))
    {
      v12 = *invalidation;
      *buf = 138543362;
      v101 = v12;
      v13 = "InvalidationCheckFailed";
      v14 = "Failed to fetch waiting or active configs due to error: %{public}@";
      v15 = v11;
      v16 = 12;
LABEL_53:
      _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v13, v14, buf, v16);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (v8)
  {
    v9 = [v8 count];
    if (v9)
    {
      selfCopy = self;
      v81 = v5;
      date = [MEMORY[0x277CBEAA8] date];
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v19 = v8;
      v20 = [v19 countByEnumeratingWithState:&v96 objects:v109 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v97;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v97 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v96 + 1) + 8 * i);
            teamID = [v24 teamID];
            array = [dictionary objectForKeyedSubscript:teamID];

            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
              teamID2 = [v24 teamID];
              [dictionary setObject:array forKeyedSubscript:teamID2];
            }

            [array addObject:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v96 objects:v109 count:16];
        }

        while (v21);
      }

      array2 = [MEMORY[0x277CBEB18] array];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __49__DRSTaskingManager_checkConfigsForInvalidation___block_invoke;
      v92[3] = &unk_27899FA30;
      v29 = array2;
      v93 = v29;
      v94 = selfCopy;
      v85 = date;
      v95 = v85;
      [dictionary enumerateKeysAndObjectsUsingBlock:v92];
      v30 = v29;

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v8 = v30;
      v31 = [v8 countByEnumeratingWithState:&v88 objects:v108 count:16];
      if (!v31)
      {
LABEL_50:

        v10 = 0;
        v5 = v81;
        v11 = v85;
        goto LABEL_54;
      }

      v32 = v31;
      v33 = 0x27899E000uLL;
      v84 = *v89;
      obj = v8;
LABEL_17:
      v34 = 0;
      while (1)
      {
        if (*v89 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v88 + 1) + 8 * v34);
        sharedInstance = [*(v33 + 2456) sharedInstance];
        build = [sharedInstance build];
        config = [v35 config];
        build2 = [config build];
        v40 = [build isEqualToString:build2];

        if (v40)
        {
          config2 = [v35 config];
          endDate = [config2 endDate];
          v43 = [v85 compare:endDate];

          if (v43 == -1)
          {
            v50 = DPLogHandle_TaskingManager(v44);
            if (os_signpost_enabled(v50))
            {
              configUUID = [v35 configUUID];
              teamID3 = [v35 teamID];
              *buf = 138543618;
              v101 = configUUID;
              v102 = 2114;
              v103 = teamID3;
              _os_signpost_emit_with_name_impl(&dword_232906000, v50, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigStillValid", "Config %{public}@ (Team ID %{public}@) is still valid", buf, 0x16u);
            }

            v33 = 0x27899E000;
            goto LABEL_48;
          }

          if ([v35 state] == 1)
          {
            v45 = 1;
          }

          else
          {
            v45 = 8194;
          }

          decisionMaker2 = [(DRSTaskingManager *)selfCopy decisionMaker];
          configStore2 = [decisionMaker2 configStore];
          configUUID2 = [v35 configUUID];
          v86 = 0;
          v49 = [configStore2 completeConfigWithUUID:configUUID2 completedDate:v85 completionType:v45 completionDescription:@"Expired" errorOut:&v86];
          v50 = v86;

          if (v49)
          {
            configStateChangeBlock = [(DRSTaskingManager *)selfCopy configStateChangeBlock];
            teamID4 = [v35 teamID];
            configUUID3 = [v35 configUUID];
            (configStateChangeBlock[2].isa)(configStateChangeBlock, teamID4, configUUID3, 0, 3, 4, [v35 state] == 2);
            goto LABEL_45;
          }

          configStateChangeBlock = DPLogHandle_TaskingManagerError(v51);
          if (os_signpost_enabled(configStateChangeBlock))
          {
            teamID4 = [v35 configUUID];
            teamID5 = [v35 teamID];
            configUUID3 = teamID5;
            *buf = 138543874;
            v79 = @"Unknown";
            if (v50)
            {
              v79 = v50;
            }

            v101 = teamID4;
            v102 = 2114;
            v103 = teamID5;
            v104 = 2114;
            v105 = v79;
            _os_signpost_emit_with_name_impl(&dword_232906000, configStateChangeBlock, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidationFailed", "Failed to invalidate expiring config %{public}@ (Team ID: %{public}@) due to error: %{public}@", buf, 0x20u);
LABEL_45:
          }

          v33 = 0x27899E000;
          goto LABEL_47;
        }

        v55 = MEMORY[0x277CCACA8];
        config3 = [v35 config];
        build3 = [config3 build];
        sharedInstance2 = [*(v33 + 2456) sharedInstance];
        build4 = [sharedInstance2 build];
        v50 = [v55 stringWithFormat:@"Build changed (%@ -> %@)", build3, build4];

        if ([v35 state] == 1)
        {
          v60 = 1;
        }

        else
        {
          v60 = 8193;
        }

        decisionMaker3 = [(DRSTaskingManager *)selfCopy decisionMaker];
        configStore3 = [decisionMaker3 configStore];
        configUUID4 = [v35 configUUID];
        v87 = 0;
        v64 = [configStore3 completeConfigWithUUID:configUUID4 completedDate:v85 completionType:v60 completionDescription:v50 errorOut:&v87];
        configStateChangeBlock = v87;

        if (v64)
        {
          configStateChangeBlock2 = [(DRSTaskingManager *)selfCopy configStateChangeBlock];
          teamID6 = [v35 teamID];
          configUUID5 = [v35 configUUID];
          (*(configStateChangeBlock2 + 16))(configStateChangeBlock2, teamID6, configUUID5, 0, 3, 3, [v35 state] == 2);
        }

        else
        {
          configStateChangeBlock2 = DPLogHandle_TaskingManagerError(v65);
          if (os_signpost_enabled(configStateChangeBlock2))
          {
            configUUID6 = [v35 configUUID];
            config4 = [v35 config];
            build5 = [config4 build];
            v72 = +[DRSSystemProfile sharedInstance];
            build6 = [v72 build];
            v74 = build6;
            *buf = 138544130;
            v75 = @"Unknown";
            if (configStateChangeBlock)
            {
              v75 = configStateChangeBlock;
            }

            v101 = configUUID6;
            v102 = 2114;
            v103 = build5;
            v104 = 2114;
            v105 = build6;
            v106 = 2114;
            v107 = v75;
            _os_signpost_emit_with_name_impl(&dword_232906000, configStateChangeBlock2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidationFailed", "Failed to invalidate config %{public}@ (%{public}@ -> %{public}@) due to error: %{public}@", buf, 0x2Au);

            v33 = 0x27899E000;
            goto LABEL_37;
          }
        }

        v33 = 0x27899E000;
LABEL_37:

LABEL_47:
LABEL_48:

        if (v32 == ++v34)
        {
          v8 = obj;
          v32 = [obj countByEnumeratingWithState:&v88 objects:v108 count:16];
          if (!v32)
          {
            goto LABEL_50;
          }

          goto LABEL_17;
        }
      }
    }
  }

  v11 = DPLogHandle_TaskingManager(v9);
  if (os_signpost_enabled(v11))
  {
    *buf = 0;
    v13 = "NoOpInvalidation";
    v14 = "No active or waiting configs";
    v15 = v11;
    v16 = 2;
    goto LABEL_53;
  }

LABEL_54:

  return v10 == 0;
}

void __49__DRSTaskingManager_checkConfigsForInvalidation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v29 = a2;
  v5 = a3;
  v6 = [v5 count];
  if (v6 > 1)
  {
    v7 = DPLogHandle_TaskingManagerError(v6);
    if (os_signpost_enabled(v7))
    {
      *buf = 134349314;
      v38 = [v5 count];
      v39 = 2114;
      v40 = v29;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CollidingConfigsForTeam", "Found %{public}lu active or waiting configs for team ID %{public}@. Invalidating team configs", buf, 0x16u);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = v5;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v8)
    {
LABEL_24:

      v5 = v28;
      goto LABEL_25;
    }

    v9 = v8;
    v10 = *v33;
LABEL_7:
    v11 = 0;
    while (1)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v32 + 1) + 8 * v11);
      v13 = DPLogHandle_TaskingManagerError(v8);
      if (os_signpost_enabled(v13))
      {
        v14 = [v12 configUUID];
        *buf = 138543618;
        v38 = v29;
        v39 = 2114;
        v40 = v14;
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidatingCollidingConfigs", "Invalidating %{public}@: %{public}@ due to colliding configs", buf, 0x16u);
      }

      v15 = [v12 state] == 1 ? 1 : 8193;
      v16 = [*(a1 + 40) decisionMaker];
      v17 = [v16 configStore];
      v18 = [v12 configUUID];
      v19 = *(a1 + 48);
      v31 = 0;
      v20 = [v17 completeConfigWithUUID:v18 completedDate:v19 completionType:v15 completionDescription:@"Collided with active config for team" errorOut:&v31];
      v21 = v31;

      if (v20)
      {
        break;
      }

      v23 = DPLogHandle_TaskingManagerError(v22);
      if (os_signpost_enabled(v23))
      {
        v26 = [v12 configUUID];
        v24 = v26;
        *buf = 138543618;
        v27 = @"Unknown";
        if (v21)
        {
          v27 = v21;
        }

        v38 = v26;
        v39 = 2114;
        v40 = v27;
        _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidationFailed", "Failed to invalidate colliding config %{public}@ due to error: %{public}@", buf, 0x16u);
        goto LABEL_21;
      }

LABEL_22:

      if (v9 == ++v11)
      {
        v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        v9 = v8;
        if (!v8)
        {
          goto LABEL_24;
        }

        goto LABEL_7;
      }
    }

    v23 = [*(a1 + 40) configStateChangeBlock];
    v24 = [v12 teamID];
    v25 = [v12 configUUID];
    (*(v23 + 16))(v23, v24, v25, 0, 3, 3, [v12 state] == 2);

LABEL_21:
    goto LABEL_22;
  }

  [*(a1 + 32) addObjectsFromArray:v5];
LABEL_25:
}

@end