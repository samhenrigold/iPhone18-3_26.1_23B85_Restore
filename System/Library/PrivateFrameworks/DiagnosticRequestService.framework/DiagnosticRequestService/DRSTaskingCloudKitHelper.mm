@interface DRSTaskingCloudKitHelper
+ (id)prodContainerHelper;
+ (id)sandboxContainerHelper;
+ (id)taskingDeviceMetadata;
- (DRSTaskingCloudKitHelper)initWithContainer:(id)container;
- (id)_operationWithFunctionName:(id)name;
- (id)_taskingConfigMetadataForTeamID:(id)d uuidString:(id)string;
- (void)_recordPBMessage:(id)message forFunction:(id)function;
- (void)_submitOperationWithName:(id)name requestObject:(id)object completionBlock:(id)block;
- (void)reportTaskingConfigCompletion:(id)completion uuidString:(id)string completionType:(id)type completionDescription:(id)description activeDuration:(double)duration transaction:(id)transaction completionHandler:(id)handler;
- (void)reportTaskingConfigReceipt:(id)receipt uuidString:(id)string receiptResult:(id)result transaction:(id)transaction completionHandler:(id)handler;
- (void)reportTaskingSystemMessageReceipt:(id)receipt messageType:(id)type channelType:(id)channelType channelEnvironment:(id)environment dateBroadcast:(id)broadcast dateReceived:(id)received transaction:(id)transaction completionHandler:(id)self0;
@end

@implementation DRSTaskingCloudKitHelper

- (DRSTaskingCloudKitHelper)initWithContainer:(id)container
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = DRSTaskingCloudKitHelper;
  v6 = [(DRSTaskingCloudKitHelper *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__targetContainer, container);
    v8 = dispatch_queue_create("TaskingCloudKitHelper work queue", 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v8;
  }

  return v7;
}

+ (id)sandboxContainerHelper
{
  if (sandboxContainerHelper_onceToken_0 != -1)
  {
    +[DRSTaskingCloudKitHelper sandboxContainerHelper];
  }

  v3 = sandboxContainerHelper_helper_0;

  return v3;
}

void __50__DRSTaskingCloudKitHelper_sandboxContainerHelper__block_invoke()
{
  v0 = [DRSTaskingCloudKitHelper alloc];
  v3 = DRSSandboxContainer(v0);
  v1 = [(DRSTaskingCloudKitHelper *)v0 initWithContainer:v3];
  v2 = sandboxContainerHelper_helper_0;
  sandboxContainerHelper_helper_0 = v1;
}

+ (id)prodContainerHelper
{
  if (prodContainerHelper_onceToken_0 != -1)
  {
    +[DRSTaskingCloudKitHelper prodContainerHelper];
  }

  v3 = prodContainerHelper_helper_0;

  return v3;
}

void __47__DRSTaskingCloudKitHelper_prodContainerHelper__block_invoke()
{
  v0 = [DRSTaskingCloudKitHelper alloc];
  v3 = DRSProductionContainer(v0);
  v1 = [(DRSTaskingCloudKitHelper *)v0 initWithContainer:v3];
  v2 = prodContainerHelper_helper_0;
  prodContainerHelper_helper_0 = v1;
}

- (id)_operationWithFunctionName:(id)name
{
  v4 = MEMORY[0x277CBC1F8];
  nameCopy = name;
  v6 = [v4 alloc];
  v7 = [v6 initWithServiceName:kDRSCloudKitDecisionServerName functionName:nameCopy responseClass:objc_opt_class()];

  _targetContainer = [(DRSTaskingCloudKitHelper *)self _targetContainer];
  DRSConfigureOperation(v7, _targetContainer, 0);

  return v7;
}

- (void)_submitOperationWithName:(id)name requestObject:(id)object completionBlock:(id)block
{
  nameCopy = name;
  objectCopy = object;
  blockCopy = block;
  workQueue = [(DRSTaskingCloudKitHelper *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__DRSTaskingCloudKitHelper__submitOperationWithName_requestObject_completionBlock___block_invoke;
  v15[3] = &unk_27899FF60;
  v15[4] = self;
  v16 = nameCopy;
  v17 = objectCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = objectCopy;
  v14 = nameCopy;
  dispatch_async(workQueue, v15);
}

void __83__DRSTaskingCloudKitHelper__submitOperationWithName_requestObject_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _operationWithFunctionName:*(a1 + 40)];
  [v2 setRequest:*(a1 + 48)];
  v3 = os_transaction_create();
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __83__DRSTaskingCloudKitHelper__submitOperationWithName_requestObject_completionBlock___block_invoke_2;
  v11 = &unk_27899FF38;
  v4 = *(a1 + 56);
  v12 = v3;
  v13 = v4;
  v5 = v3;
  [v2 setCodeOperationCompletionBlock:&v8];
  v6 = [*(a1 + 32) _targetContainer];
  v7 = [v6 publicCloudDatabase];
  [v7 addOperation:v2];
}

+ (id)taskingDeviceMetadata
{
  if (taskingDeviceMetadata_onceToken[0] != -1)
  {
    +[DRSTaskingCloudKitHelper taskingDeviceMetadata];
  }

  v3 = taskingDeviceMetadata_taskingDeviceMetadata;

  return v3;
}

void __49__DRSTaskingCloudKitHelper_taskingDeviceMetadata__block_invoke()
{
  v0 = objc_alloc_init(DRSProtoTaskingDeviceMetadata);
  v1 = taskingDeviceMetadata_taskingDeviceMetadata;
  taskingDeviceMetadata_taskingDeviceMetadata = v0;

  v3 = DRSDeviceMetadata(v2);
  [taskingDeviceMetadata_taskingDeviceMetadata setDeviceMetadata:v3];

  v5 = +[DRSSystemProfile sharedInstance];
  v4 = [v5 build];
  [taskingDeviceMetadata_taskingDeviceMetadata setBuild:v4];
}

- (void)_recordPBMessage:(id)message forFunction:(id)function
{
  v18 = *MEMORY[0x277D85DE8];
  functionCopy = function;
  v6 = MEMORY[0x277CCAAA0];
  dictionaryRepresentation = [message dictionaryRepresentation];
  v13 = 0;
  v8 = [v6 dataWithJSONObject:dictionaryRepresentation options:1 error:&v13];
  v9 = v13;

  if (v9)
  {
    v11 = DPLogHandle_TaskingDSTelemetry(v10);
    if (os_signpost_enabled(v11))
    {
      *buf = 138543362;
      v15 = v9;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProtoBuffMessageJSONFailed", "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v12 = DPLogHandle_TaskingDSTelemetry(v11);
    if (os_signpost_enabled(v12))
    {
      *buf = 138543618;
      v15 = functionCopy;
      v16 = 2114;
      v17 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProtoBuffMessage", "%{public}@:\n%{public}@", buf, 0x16u);
    }
  }
}

- (void)reportTaskingSystemMessageReceipt:(id)receipt messageType:(id)type channelType:(id)channelType channelEnvironment:(id)environment dateBroadcast:(id)broadcast dateReceived:(id)received transaction:(id)transaction completionHandler:(id)self0
{
  v55 = *MEMORY[0x277D85DE8];
  receiptCopy = receipt;
  typeCopy = type;
  channelTypeCopy = channelType;
  environmentCopy = environment;
  broadcastCopy = broadcast;
  receivedCopy = received;
  transactionCopy = transaction;
  handlerCopy = handler;
  v37 = handlerCopy;
  v39 = broadcastCopy;
  if (receivedCopy)
  {
    v22 = MEMORY[0x277CCABB0];
    [receivedCopy timeIntervalSinceDate:broadcastCopy];
    handlerCopy = [v22 numberWithDouble:?];
    v23 = handlerCopy;
  }

  else
  {
    v23 = &unk_2847FF840;
  }

  v38 = receivedCopy;
  if (receiptCopy)
  {
    v24 = receiptCopy;
  }

  else
  {
    v24 = @"Unknown";
  }

  if (typeCopy)
  {
    v25 = typeCopy;
  }

  else
  {
    v25 = @"Unknown";
  }

  v26 = DPLogHandle_TaskingDSTelemetry(handlerCopy);
  v27 = os_signpost_id_generate(v26);

  v29 = DPLogHandle_TaskingDSTelemetry(v28);
  v30 = v29;
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 138544386;
    v46 = v24;
    v47 = 2114;
    v48 = v25;
    v49 = 2114;
    v50 = channelTypeCopy;
    v51 = 2114;
    v52 = environmentCopy;
    v53 = 2114;
    v54 = v23;
    _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v27, "TaskingSystemMessageReceipt", "\tUUID: %{public}@\n\tmessageType: %{public}@\n\tchannelType: %{public}@\n\tchannelEnvironment: %{public}@\n\tlatency: %{public}@", buf, 0x34u);
  }

  v31 = objc_alloc_init(DRSProtoTaskingSystemMessageReceipt);
  [objc_opt_class() taskingDeviceMetadata];
  v33 = v32 = environmentCopy;
  [(DRSProtoTaskingSystemMessageReceipt *)v31 setTaskingDeviceMetadata:v33];

  [(DRSProtoTaskingSystemMessageReceipt *)v31 setUuid:v24];
  [(DRSProtoTaskingSystemMessageReceipt *)v31 setMessageType:v25];
  [(DRSProtoTaskingSystemMessageReceipt *)v31 setChannelType:channelTypeCopy];
  [(DRSProtoTaskingSystemMessageReceipt *)v31 setChannelEnvironment:v32];
  [v23 floatValue];
  [(DRSProtoTaskingSystemMessageReceipt *)v31 setReceiptDelay:?];
  [(DRSTaskingCloudKitHelper *)self _recordPBMessage:v31 forFunction:@"reportTaskingSystemMessageReceipt"];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __162__DRSTaskingCloudKitHelper_reportTaskingSystemMessageReceipt_messageType_channelType_channelEnvironment_dateBroadcast_dateReceived_transaction_completionHandler___block_invoke;
  v41[3] = &unk_27899FF88;
  v43 = v37;
  v44 = v27;
  v42 = transactionCopy;
  v34 = transactionCopy;
  v35 = v37;
  [(DRSTaskingCloudKitHelper *)self _submitOperationWithName:@"reportTaskingSystemMessageReceipt" requestObject:v31 completionBlock:v41];
}

void __162__DRSTaskingCloudKitHelper_reportTaskingSystemMessageReceipt_messageType_channelType_channelEnvironment_dateBroadcast_dateReceived_transaction_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DPLogHandle_TaskingDSTelemetry(v4);
  v6 = v5;
  v7 = *(a1 + 48);
  if (v4)
  {
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v12 = 138543362;
      v13 = v4;
      v8 = "Failed with error: %{public}@";
      v9 = v6;
      v10 = v7;
      v11 = 12;
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_INTERVAL_END, v10, "TaskingSystemMessageReceipt", v8, &v12, v11);
    }
  }

  else if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v12) = 0;
    v8 = "Succeeded";
    v9 = v6;
    v10 = v7;
    v11 = 2;
    goto LABEL_8;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v4);
}

- (id)_taskingConfigMetadataForTeamID:(id)d uuidString:(id)string
{
  stringCopy = string;
  dCopy = d;
  v7 = objc_alloc_init(DRSProtoTaskingConfigMetadata);
  taskingDeviceMetadata = [objc_opt_class() taskingDeviceMetadata];
  [(DRSProtoTaskingConfigMetadata *)v7 setTaskingDeviceMetadata:taskingDeviceMetadata];

  [(DRSProtoTaskingConfigMetadata *)v7 setTeamId:dCopy];
  [(DRSProtoTaskingConfigMetadata *)v7 setUuid:stringCopy];

  return v7;
}

- (void)reportTaskingConfigReceipt:(id)receipt uuidString:(id)string receiptResult:(id)result transaction:(id)transaction completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  receiptCopy = receipt;
  stringCopy = string;
  resultCopy = result;
  transactionCopy = transaction;
  handlerCopy = handler;
  v17 = DPLogHandle_TaskingDSTelemetry(handlerCopy);
  v18 = os_signpost_id_generate(v17);

  v20 = DPLogHandle_TaskingDSTelemetry(v19);
  v21 = v20;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 138543874;
    v31 = stringCopy;
    v32 = 2114;
    v33 = receiptCopy;
    v34 = 2114;
    v35 = resultCopy;
    _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v18, "TaskingConfigReceipt", "\tUUID: %{public}@\n\tteamID: %{public}@\n\treceiptResult: %{public}@\n", buf, 0x20u);
  }

  v22 = objc_alloc_init(DRSProtoTaskingConfigReceipt);
  v23 = [(DRSTaskingCloudKitHelper *)self _taskingConfigMetadataForTeamID:receiptCopy uuidString:stringCopy];
  [(DRSProtoTaskingConfigReceipt *)v22 setTaskingConfigMetadata:v23];

  [(DRSProtoTaskingConfigReceipt *)v22 setReceiptResult:resultCopy];
  [(DRSTaskingCloudKitHelper *)self _recordPBMessage:v22 forFunction:@"reportTaskingConfigReceipt"];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __110__DRSTaskingCloudKitHelper_reportTaskingConfigReceipt_uuidString_receiptResult_transaction_completionHandler___block_invoke;
  v26[3] = &unk_27899FF88;
  v28 = handlerCopy;
  v29 = v18;
  v27 = transactionCopy;
  v24 = transactionCopy;
  v25 = handlerCopy;
  [(DRSTaskingCloudKitHelper *)self _submitOperationWithName:@"reportTaskingConfigReceipt" requestObject:v22 completionBlock:v26];
}

void __110__DRSTaskingCloudKitHelper_reportTaskingConfigReceipt_uuidString_receiptResult_transaction_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DPLogHandle_TaskingDSTelemetry(v4);
  v6 = v5;
  v7 = *(a1 + 48);
  if (v4)
  {
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v12 = 138543362;
      v13 = v4;
      v8 = "Failed with error: %{public}@";
      v9 = v6;
      v10 = v7;
      v11 = 12;
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_INTERVAL_END, v10, "TaskingConfigReceipt", v8, &v12, v11);
    }
  }

  else if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v12) = 0;
    v8 = "Succeeded";
    v9 = v6;
    v10 = v7;
    v11 = 2;
    goto LABEL_8;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v4);
}

- (void)reportTaskingConfigCompletion:(id)completion uuidString:(id)string completionType:(id)type completionDescription:(id)description activeDuration:(double)duration transaction:(id)transaction completionHandler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  stringCopy = string;
  typeCopy = type;
  descriptionCopy = description;
  transactionCopy = transaction;
  handlerCopy = handler;
  v22 = DPLogHandle_TaskingDSTelemetry(handlerCopy);
  v23 = os_signpost_id_generate(v22);

  v25 = DPLogHandle_TaskingDSTelemetry(v24);
  v26 = v25;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 138544386;
    v37 = stringCopy;
    v38 = 2114;
    v39 = completionCopy;
    v40 = 2114;
    v41 = typeCopy;
    v42 = 2114;
    v43 = descriptionCopy;
    v44 = 2050;
    durationCopy = duration;
    _os_signpost_emit_with_name_impl(&dword_232906000, v26, OS_SIGNPOST_EVENT, v23, "TaskingConfigCompletion", "\tUUID: %{public}@\n\tteamID: %{public}@\n\tcompletionType: %{public}@\n\tcompletionDescription: %{public}@\n\tactiveDuration: %{public}f\n", buf, 0x34u);
  }

  v27 = objc_alloc_init(DRSProtoTaskingConfigCompletion);
  v28 = [(DRSTaskingCloudKitHelper *)self _taskingConfigMetadataForTeamID:completionCopy uuidString:stringCopy];
  [(DRSProtoTaskingConfigCompletion *)v27 setTaskingConfigMetadata:v28];

  [(DRSProtoTaskingConfigCompletion *)v27 setCompletionType:typeCopy];
  [(DRSProtoTaskingConfigCompletion *)v27 setCompletionDescription:descriptionCopy];
  *&v29 = duration;
  [(DRSProtoTaskingConfigCompletion *)v27 setActiveDuration:v29];
  [(DRSTaskingCloudKitHelper *)self _recordPBMessage:v27 forFunction:@"reportTaskingConfigCompletion"];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __151__DRSTaskingCloudKitHelper_reportTaskingConfigCompletion_uuidString_completionType_completionDescription_activeDuration_transaction_completionHandler___block_invoke;
  v32[3] = &unk_27899FF88;
  v34 = handlerCopy;
  v35 = v23;
  v33 = transactionCopy;
  v30 = transactionCopy;
  v31 = handlerCopy;
  [(DRSTaskingCloudKitHelper *)self _submitOperationWithName:@"reportTaskingConfigCompletion" requestObject:v27 completionBlock:v32];
}

void __151__DRSTaskingCloudKitHelper_reportTaskingConfigCompletion_uuidString_completionType_completionDescription_activeDuration_transaction_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DPLogHandle_TaskingDSTelemetry(v4);
  v6 = v5;
  v7 = *(a1 + 48);
  if (v4)
  {
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v12 = 138543362;
      v13 = v4;
      v8 = "Failed with error: %{public}@";
      v9 = v6;
      v10 = v7;
      v11 = 12;
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_INTERVAL_END, v10, "TaskingConfigCompletion", v8, &v12, v11);
    }
  }

  else if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v12) = 0;
    v8 = "Succeeded";
    v9 = v6;
    v10 = v7;
    v11 = 2;
    goto LABEL_8;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v4);
}

@end