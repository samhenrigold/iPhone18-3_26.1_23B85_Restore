@interface MTRBaseDevice
+ (MTRBaseDevice)deviceWithNodeID:(NSNumber *)nodeID controller:(MTRDeviceController *)controller;
+ (PacketBufferHandle)_responseDataForCommand:(id)command clusterID:(unsigned int)d commandID:(unsigned int)iD error:(id *)error;
+ (id)eventReportForHeader:(const EventHeader *)header andData:(id)data;
- (MTRBaseDevice)initWithNodeID:(id)d controller:(id)controller;
- (MTRBaseDevice)initWithPASEDevice:(void *)device controller:(id)controller;
- (MTRDeviceController_Concrete)concreteController;
- (MTRTransportType)sessionTransportType;
- (id)description;
- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)processingTimeout logCall:(BOOL)call queue:(id)self0 completion:(id)self1;
- (void)_invokeKnownCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandPayload:(id)payload timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)processingTimeout responseClass:(Class)class queue:(id)self0 completion:(id)self1;
- (void)_openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion;
- (void)_readKnownAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params queue:(id)queue completion:(id)completion;
- (void)_subscribeToKnownAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params queue:(id)queue reportHandler:(id)handler subscriptionEstablished:(id)established;
- (void)_writeAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID value:(id)value timedWriteTimeout:(id)timeout queue:(id)queue completion:(id)completion;
- (void)deregisterReportHandlersWithQueue:(dispatch_queue_t)queue completion:(dispatch_block_t)completion;
- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)invalidateCASESession;
- (void)readAttributePaths:(NSArray *)attributePaths eventPaths:(NSArray *)eventPaths params:(MTRReadParams *)params queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion;
- (void)readAttributePaths:(id)paths eventPaths:(id)eventPaths params:(id)params includeDataVersion:(BOOL)version queue:(id)queue completion:(id)completion;
- (void)readAttributesWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID params:(MTRReadParams *)params queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion;
- (void)readEventsWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID eventID:(NSNumber *)eventID params:(MTRReadParams *)params queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion;
- (void)subscribeAttributeWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId attributeId:(NSNumber *)attributeId minInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params clientQueue:(dispatch_queue_t)clientQueue reportHandler:(MTRDeviceResponseHandler)reportHandler subscriptionEstablished:(dispatch_block_t)subscriptionEstablishedHandler;
- (void)subscribeToAttributePaths:(NSArray *)attributePaths eventPaths:(NSArray *)eventPaths params:(MTRSubscribeParams *)params queue:(dispatch_queue_t)queue reportHandler:(MTRDeviceResponseHandler)reportHandler subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished resubscriptionScheduled:(MTRDeviceResubscriptionScheduledHandler)resubscriptionScheduled;
- (void)subscribeToAttributesWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID params:(MTRSubscribeParams *)params queue:(dispatch_queue_t)queue reportHandler:(MTRDeviceResponseHandler)reportHandler subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished;
- (void)subscribeToEventsWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID eventID:(NSNumber *)eventID params:(MTRSubscribeParams *)params queue:(dispatch_queue_t)queue reportHandler:(MTRDeviceResponseHandler)reportHandler subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished;
- (void)subscribeWithQueue:(dispatch_queue_t)queue minInterval:(uint16_t)minInterval maxInterval:(uint16_t)maxInterval params:(MTRSubscribeParams *)params cacheContainer:(MTRAttributeCacheContainer *)attributeCacheContainer attributeReportHandler:(MTRDeviceReportHandler)attributeReportHandler eventReportHandler:(MTRDeviceReportHandler)eventReportHandler errorHandler:(MTRDeviceErrorHandler)errorHandler subscriptionEstablished:(dispatch_block_t)subscriptionEstablishedHandler resubscriptionScheduled:(MTRDeviceResubscriptionScheduledHandler)resubscriptionScheduledHandler;
- (void)subscribeWithQueue:(dispatch_queue_t)queue params:(MTRSubscribeParams *)params clusterStateCacheContainer:(MTRClusterStateCacheContainer *)clusterStateCacheContainer attributeReportHandler:(MTRDeviceReportHandler)attributeReportHandler eventReportHandler:(MTRDeviceReportHandler)eventReportHandler errorHandler:(MTRDeviceErrorHandler)errorHandler subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished resubscriptionScheduled:(MTRDeviceResubscriptionScheduledHandler)resubscriptionScheduled;
- (void)writeAttributeWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID value:(id)value timedWriteTimeout:(NSNumber *)timeoutMs queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion;
@end

@implementation MTRBaseDevice

- (MTRBaseDevice)initWithPASEDevice:(void *)device controller:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = MTRBaseDevice;
  v8 = [(MTRBaseDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_isPASEDevice = 1;
    v8->_nodeID = (*(*device + 24))(device);
    objc_storeStrong(&v9->_deviceController, controller);
  }

  return v9;
}

- (MTRBaseDevice)initWithNodeID:(id)d controller:(id)controller
{
  dCopy = d;
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = MTRBaseDevice;
  v8 = [(MTRBaseDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_isPASEDevice = 0;
    v8->_nodeID = [dCopy unsignedLongLongValue];
    objc_storeStrong(&v9->_deviceController, controller);
  }

  return v9;
}

+ (MTRBaseDevice)deviceWithNodeID:(NSNumber *)nodeID controller:(MTRDeviceController *)controller
{
  v4 = [(MTRDeviceController *)controller baseDeviceForNodeID:nodeID];

  return v4;
}

- (MTRDeviceController_Concrete)concreteController
{
  deviceController = [(MTRBaseDevice *)self deviceController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = deviceController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MTRTransportType)sessionTransportType
{
  concreteController = [(MTRBaseDevice *)self concreteController];
  v4 = concreteController;
  if (concreteController)
  {
    v5 = [concreteController sessionTransportTypeForDevice:self];
  }

  else
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Unable to determine session transport type for MTRBaseDevice created with an XPC controller", v8, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Unable to determine session transport type for MTRBaseDevice created with an XPC controller");
    }

    v5 = MTRTransportTypeUndefined;
  }

  return v5;
}

- (void)invalidateCASESession
{
  if (![(MTRBaseDevice *)self isPASEDevice])
  {
    concreteController = [(MTRBaseDevice *)self concreteController];
    if (concreteController)
    {
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[MTRBaseDevice nodeID](self, "nodeID")}];
      [concreteController invalidateCASESessionForNode:v4];
    }

    else
    {
      v5 = sub_2393D9044(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Unable invalidate CASE session for MTRBaseDevice created with an XPC controller", v6, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Unable invalidate CASE session for MTRBaseDevice created with an XPC controller");
      }
    }
  }
}

- (void)subscribeWithQueue:(dispatch_queue_t)queue params:(MTRSubscribeParams *)params clusterStateCacheContainer:(MTRClusterStateCacheContainer *)clusterStateCacheContainer attributeReportHandler:(MTRDeviceReportHandler)attributeReportHandler eventReportHandler:(MTRDeviceReportHandler)eventReportHandler errorHandler:(MTRDeviceErrorHandler)errorHandler subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished resubscriptionScheduled:(MTRDeviceResubscriptionScheduledHandler)resubscriptionScheduled
{
  v16 = queue;
  v17 = params;
  v28 = clusterStateCacheContainer;
  v18 = attributeReportHandler;
  v29 = eventReportHandler;
  v19 = errorHandler;
  v20 = subscriptionEstablished;
  v21 = resubscriptionScheduled;
  if ([(MTRBaseDevice *)self isPASEDevice])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238EE512C;
    block[3] = &unk_278A72B88;
    v44 = v19;
    dispatch_async(v16, block);
    concreteController = v44;
    v23 = v28;
  }

  else
  {
    concreteController = [(MTRBaseDevice *)self concreteController];
    if (concreteController)
    {
      v24 = [(MTRSubscribeParams *)v17 copy];

      nodeID = [(MTRBaseDevice *)self nodeID];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_238EE523C;
      v30[3] = &unk_278A72DE8;
      v31 = v16;
      v35 = v19;
      v17 = v24;
      v32 = v17;
      v23 = v28;
      v33 = v28;
      v36 = v18;
      v37 = v29;
      v38 = v21;
      v39 = v20;
      selfCopy = self;
      [concreteController getSessionForNode:nodeID completion:v30];
      v26 = &v31;
    }

    else
    {
      v27 = sub_2393D9044(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "Unable to create subscription for MTRBaseDevice created with an XPC controller", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Unable to create subscription for MTRBaseDevice created with an XPC controller");
      }

      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_238EE51B4;
      v40[3] = &unk_278A72B88;
      v26 = &v41;
      v41 = v19;
      dispatch_async(v16, v40);
      v23 = v28;
    }
  }
}

- (void)readAttributesWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID params:(MTRReadParams *)params queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion
{
  v19 = params;
  v14 = queue;
  v15 = completion;
  v16 = MEMORY[0x277CBEA60];
  v17 = [MTRAttributeRequestPath requestPathWithEndpointID:endpointID clusterID:clusterID attributeID:attributeID];
  v18 = [v16 arrayWithObject:v17];

  [(MTRBaseDevice *)self readAttributePaths:v18 eventPaths:0 params:v19 queue:v14 completion:v15];
}

- (void)_readKnownAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params queue:(id)queue completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  paramsCopy = params;
  queueCopy = queue;
  completionCopy = completion;
  v20 = [MTRAttributePath attributePathWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_238EE746C;
  v27 = &unk_278A72E10;
  v21 = completionCopy;
  v28 = v20;
  v29 = v21;
  v22 = v20;
  v23 = MEMORY[0x23EE78590](&v24);
  [(MTRBaseDevice *)self readAttributesWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy params:paramsCopy queue:queueCopy completion:v23, v24, v25, v26, v27];
}

- (void)readAttributePaths:(NSArray *)attributePaths eventPaths:(NSArray *)eventPaths params:(MTRReadParams *)params queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion
{
  v24 = *MEMORY[0x277D85DE8];
  v12 = attributePaths;
  v13 = eventPaths;
  v14 = params;
  v15 = queue;
  v16 = completion;
  v17 = sub_2393D9044(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "%@ readAttributePaths: %@, eventPaths: %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ readAttributePaths: %@, eventPaths: %@", self, v12, v13);
  }

  [(MTRBaseDevice *)self readAttributePaths:v12 eventPaths:v13 params:v14 includeDataVersion:0 queue:v15 completion:v16];
}

- (void)readAttributePaths:(id)paths eventPaths:(id)eventPaths params:(id)params includeDataVersion:(BOOL)version queue:(id)queue completion:(id)completion
{
  pathsCopy = paths;
  eventPathsCopy = eventPaths;
  paramsCopy = params;
  queueCopy = queue;
  completionCopy = completion;
  if (pathsCopy && [pathsCopy count])
  {
LABEL_6:
    [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:pathsCopy copyItems:1];
    if (!eventPathsCopy)
    {
      if (!paramsCopy)
      {
LABEL_12:
        operator new();
      }

LABEL_11:
      [paramsCopy copy];

      goto LABEL_12;
    }

LABEL_10:
    [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:eventPathsCopy copyItems:1];
    if (!paramsCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (eventPathsCopy && [eventPathsCopy count])
  {
    if (!pathsCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238EE7B40;
  block[3] = &unk_278A72B88;
  v18 = completionCopy;
  dispatch_async(queueCopy, block);
}

- (void)writeAttributeWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID value:(id)value timedWriteTimeout:(NSNumber *)timeoutMs queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion
{
  v33 = *MEMORY[0x277D85DE8];
  v15 = endpointID;
  v16 = clusterID;
  v17 = attributeID;
  v18 = value;
  v19 = timeoutMs;
  v20 = queue;
  v21 = completion;
  v22 = sub_2393D9044(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    selfCopy = self;
    v25 = 2112;
    v26 = v15;
    v27 = 2048;
    unsignedLongLongValue = [(NSNumber *)v16 unsignedLongLongValue];
    v29 = 2048;
    unsignedLongLongValue2 = [(NSNumber *)v17 unsignedLongLongValue];
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_DEFAULT, "%@ write %@ 0x%llx 0x%llx: %@", buf, 0x34u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ write %@ 0x%llx 0x%llx: %@", self, v15, [(NSNumber *)v16 unsignedLongLongValue], [(NSNumber *)v17 unsignedLongLongValue], v18);
  }

  [(MTRBaseDevice *)self _writeAttributeWithEndpointID:v15 clusterID:v16 attributeID:v17 value:v18 timedWriteTimeout:v19 queue:v20 completion:v21];
}

- (void)_writeAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID value:(id)value timedWriteTimeout:(id)timeout queue:(id)queue completion:(id)completion
{
  d;
  iD;
  attributeID;
  value;
  timeoutCopy = timeout;
  queueCopy = queue;
  completionCopy = completion;
  operator new();
}

- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)processingTimeout logCall:(BOOL)call queue:(id)self0 completion:(id)self1
{
  v52 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  queue;
  completion;
  if (dCopy)
  {
    v22 = [dCopy copy];

    dCopy = v22;
  }

  if (iDCopy)
  {
    v23 = [iDCopy copy];

    iDCopy = v23;
  }

  if (commandIDCopy)
  {
    v24 = [commandIDCopy copy];

    commandIDCopy = v24;
  }

  if (fieldsCopy)
  {
    v25 = [fieldsCopy copy];

    fieldsCopy = v25;
  }

  v26 = [processingTimeoutCopy copy];

  if (v26)
  {
    sub_238DB3374(v26, &unk_284C3E5A0, &unk_284C3E5B8);
    objc_claimAutoreleasedReturnValue();
  }

  v27 = [timeoutCopy copy];

  if (v27)
  {
    sub_238DB3374(v27, &unk_284C3E5D0, &unk_284C3E5B8);
    objc_claimAutoreleasedReturnValue();
  }

  if (call)
  {
    v28 = sub_2393D9044(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      unsignedLongLongValue = [iDCopy unsignedLongLongValue];
      v29 = MTRClusterNameForID([iDCopy unsignedLongLongValue]);
      unsignedLongLongValue2 = [commandIDCopy unsignedLongLongValue];
      v31 = MTRRequestCommandNameForID([iDCopy unsignedLongLongValue], objc_msgSend(commandIDCopy, "unsignedLongLongValue"));
      *buf = 138413826;
      selfCopy = self;
      v40 = 2112;
      v41 = dCopy;
      v42 = 2048;
      v43 = unsignedLongLongValue;
      v44 = 2112;
      v45 = v29;
      v46 = 2048;
      v47 = unsignedLongLongValue2;
      v48 = 2112;
      v49 = v31;
      v50 = 2112;
      v51 = fieldsCopy;
      _os_log_impl(&dword_238DAE000, v28, OS_LOG_TYPE_DEFAULT, "%@ invoke %@ 0x%llx (%@) 0x%llx (%@): %@", buf, 0x48u);
    }

    if (sub_2393D5398(2u))
    {
      unsignedLongLongValue3 = [iDCopy unsignedLongLongValue];
      v33 = MTRClusterNameForID([iDCopy unsignedLongLongValue]);
      unsignedLongLongValue4 = [commandIDCopy unsignedLongLongValue];
      v35 = MTRRequestCommandNameForID([iDCopy unsignedLongLongValue], objc_msgSend(commandIDCopy, "unsignedLongLongValue"));
      sub_2393D5320(0, 2, "%@ invoke %@ 0x%llx (%@) 0x%llx (%@): %@", self, dCopy, unsignedLongLongValue3, v33, unsignedLongLongValue4, v35, fieldsCopy);
    }
  }

  operator new();
}

- (void)_invokeKnownCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandPayload:(id)payload timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)processingTimeout responseClass:(Class)class queue:(id)self0 completion:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  commandIDCopy = commandID;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  queueCopy = queue;
  completionCopy = completion;
  v34[0] = 0;
  v22 = [payload _encodeAsDataValue:v34];
  v23 = v34[0];
  if (v22)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_238EEA5E0;
    v29[3] = &unk_278A72EB0;
    v30[1] = class;
    v30[0] = completionCopy;
    v24 = MEMORY[0x23EE78590](v29);
    LOBYTE(v26) = 1;
    [(MTRBaseDevice *)self _invokeCommandWithEndpointID:dCopy clusterID:iDCopy commandID:commandIDCopy commandFields:v22 timedInvokeTimeout:timeoutCopy serverSideProcessingTimeout:processingTimeoutCopy logCall:v26 queue:queueCopy completion:v24];
    v25 = v30;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238EEA5C8;
    block[3] = &unk_278A71698;
    v25 = &v33;
    v33 = completionCopy;
    v32 = v23;
    dispatch_async(queueCopy, block);
    v24 = v32;
  }
}

- (void)subscribeToAttributesWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID params:(MTRSubscribeParams *)params queue:(dispatch_queue_t)queue reportHandler:(MTRDeviceResponseHandler)reportHandler subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished
{
  v21 = params;
  v15 = queue;
  v16 = reportHandler;
  v17 = subscriptionEstablished;
  v18 = MEMORY[0x277CBEA60];
  v19 = [MTRAttributeRequestPath requestPathWithEndpointID:endpointID clusterID:clusterID attributeID:attributeID];
  v20 = [v18 arrayWithObject:v19];

  [(MTRBaseDevice *)self subscribeToAttributePaths:v20 eventPaths:0 params:v21 queue:v15 reportHandler:v16 subscriptionEstablished:v17 resubscriptionScheduled:0];
}

- (void)_subscribeToKnownAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params queue:(id)queue reportHandler:(id)handler subscriptionEstablished:(id)established
{
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  paramsCopy = params;
  queueCopy = queue;
  handlerCopy = handler;
  establishedCopy = established;
  v21 = [MTRAttributePath attributePathWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_238EEAA28;
  v26[3] = &unk_278A72E10;
  v22 = handlerCopy;
  v27 = v21;
  v28 = v22;
  v23 = v21;
  v24 = MEMORY[0x23EE78590](v26);
  [(MTRBaseDevice *)self subscribeToAttributesWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy params:paramsCopy queue:queueCopy reportHandler:v24 subscriptionEstablished:establishedCopy];
}

- (void)subscribeToAttributePaths:(NSArray *)attributePaths eventPaths:(NSArray *)eventPaths params:(MTRSubscribeParams *)params queue:(dispatch_queue_t)queue reportHandler:(MTRDeviceResponseHandler)reportHandler subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished resubscriptionScheduled:(MTRDeviceResubscriptionScheduledHandler)resubscriptionScheduled
{
  v15 = attributePaths;
  v16 = eventPaths;
  v17 = params;
  v18 = queue;
  v19 = reportHandler;
  v20 = subscriptionEstablished;
  v21 = resubscriptionScheduled;
  if ((!v15 || ![(NSArray *)v15 count]) && (!v16 || ![(NSArray *)v16 count]))
  {
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_238EEB170;
    v45[3] = &unk_278A72B88;
    v46 = v19;
    dispatch_async(v18, v45);
    concreteController = v46;
    goto LABEL_23;
  }

  if (![(MTRBaseDevice *)self isPASEDevice])
  {
    concreteController = [(MTRBaseDevice *)self concreteController];
    if (!concreteController)
    {
      v24 = sub_2393D9044(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Unable to create subscription for MTRBaseDevice created with an XPC controller", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Unable to create subscription for MTRBaseDevice created with an XPC controller");
      }

      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_238EEB274;
      v40[3] = &unk_278A72B88;
      v41 = v19;
      dispatch_async(v18, v40);
      v25 = v41;
      goto LABEL_22;
    }

    v30 = v20;
    if (v15)
    {
      v29 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v15 copyItems:1];
      if (v16)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v29 = 0;
      if (v16)
      {
LABEL_11:
        v23 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v16 copyItems:1];
        if (!v17)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    v23 = 0;
    if (!v17)
    {
LABEL_21:
      nodeID = [(MTRBaseDevice *)self nodeID];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_238EEB300;
      v31[3] = &unk_278A72ED8;
      v32 = v18;
      v37 = v19;
      v38 = v30;
      v39 = v21;
      selfCopy = self;
      v25 = v29;
      v34 = v25;
      v28 = v23;
      v35 = v28;
      v17 = v17;
      v36 = v17;
      [concreteController getSessionForNode:nodeID completion:v31];

      v20 = v30;
LABEL_22:

      goto LABEL_23;
    }

LABEL_20:
    v26 = [(MTRSubscribeParams *)v17 copy];

    v17 = v26;
    goto LABEL_21;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238EEB1E8;
  block[3] = &unk_278A72B88;
  v44 = v19;
  dispatch_async(v18, block);
  concreteController = v44;
LABEL_23:
}

- (void)deregisterReportHandlersWithQueue:(dispatch_queue_t)queue completion:(dispatch_block_t)completion
{
  v6 = queue;
  v7 = completion;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Unexpected call to deregister report handlers", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0, 3, "Unexpected call to deregister report handlers");
  }

  deviceController = [(MTRBaseDevice *)self deviceController];
  nodeID = [(MTRBaseDevice *)self nodeID];
  v11 = deviceController;
  v12 = v6;
  v13 = v7;
  if (qword_27DF775A8 != -1)
  {
    sub_23952C3C8();
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:nodeID];
  [qword_27DF77598 lock];
  v15 = [qword_27DF775A0 objectForKeyedSubscript:v14];
  [qword_27DF775A0 removeObjectForKey:v14];
  [qword_27DF77598 unlock];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_238EF587C;
  v31[3] = &unk_278A72F88;
  v16 = v15;
  v32 = v16;
  v17 = v13;
  v34 = v17;
  v18 = v12;
  v33 = v18;
  *buf = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = sub_238EF59A4;
  v26 = &unk_278A72FB0;
  v19 = v16;
  v27 = v19;
  v20 = v14;
  v28 = v20;
  v21 = v18;
  v29 = v21;
  v22 = v17;
  v30 = v22;
  [v11 asyncDispatchToMatterQueue:v31 errorHandler:buf];
}

- (void)_openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration queue:(id)queue completion:(id)completion
{
  v55 = *MEMORY[0x277D85DE8];
  passcodeCopy = passcode;
  discriminatorCopy = discriminator;
  durationCopy = duration;
  queueCopy = queue;
  completionCopy = completion;
  *buf = 0;
  *&v53[4] = "dwnfw_open_pairing_window";
  v54 = 0;
  sub_23948BD20(buf);
  if (![(MTRBaseDevice *)self isPASEDevice])
  {
    concreteController = [(MTRBaseDevice *)self concreteController];
    if (!concreteController)
    {
      v25 = sub_2393D9044(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "Can't open a commissioning window via MTRBaseDevice created with an XPC controller", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Can't open a commissioning window via MTRBaseDevice created with an XPC controller");
      }

      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_238EECA3C;
      v48[3] = &unk_278A72B88;
      v23 = &v49;
      v49 = completionCopy;
      v24 = v48;
      goto LABEL_25;
    }

    unsignedLongLongValue = [durationCopy unsignedLongLongValue];
    if (unsignedLongLongValue >= 0x10000)
    {
      v26 = sub_2393D9044(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v53 = unsignedLongLongValue;
        _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Error: Duration %llu is too large.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Error: Duration %llu is too large.", unsignedLongLongValue);
      }

      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = sub_238EECAE0;
      v46[3] = &unk_278A72B88;
      v23 = &v47;
      v47 = completionCopy;
      v24 = v46;
      goto LABEL_25;
    }

    unsignedLongLongValue2 = [discriminatorCopy unsignedLongLongValue];
    if (unsignedLongLongValue2 >= 0x1000)
    {
      v22 = sub_2393D9044(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v53 = unsignedLongLongValue2;
        *&v53[8] = 1024;
        *&v53[10] = 4095;
        _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Error: Discriminator %llu is too large. Max value %d", buf, 0x12u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Error: Discriminator %llu is too large. Max value %d", unsignedLongLongValue2, 4095);
      }

      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_238EECB88;
      v44[3] = &unk_278A72B88;
      v23 = &v45;
      v45 = completionCopy;
      v24 = v44;
LABEL_25:
      dispatch_async(queueCopy, v24);
LABEL_26:

      goto LABEL_27;
    }

    if (passcodeCopy)
    {
      unsignedLongLongValue3 = [passcodeCopy unsignedLongLongValue];
      if (HIDWORD(unsignedLongLongValue3) || (sub_23948FB60(unsignedLongLongValue3) & 1) == 0)
      {
        v27 = sub_2393D9044(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *v53 = unsignedLongLongValue3;
          _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "Error: Setup passcode %llu is not valid", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "Error: Setup passcode %llu is not valid", unsignedLongLongValue3);
        }

        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = sub_238EECC30;
        v42[3] = &unk_278A72B88;
        v23 = &v43;
        v43 = completionCopy;
        v24 = v42;
        goto LABEL_25;
      }

      v30 = 1;
    }

    else
    {
      v30 = 0;
      LODWORD(unsignedLongLongValue3) = v20;
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3321888768;
    v35[2] = sub_238EECCD8;
    v35[3] = &unk_284BA9A50;
    v29 = queueCopy;
    v36[0] = v29;
    v28 = completionCopy;
    v36[1] = self;
    v37 = v28;
    v38 = unsignedLongLongValue;
    v39 = unsignedLongLongValue2;
    v40 = v30;
    if (v30)
    {
      v41 = unsignedLongLongValue3;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_238EED50C;
    v32[3] = &unk_278A72D20;
    v33 = v29;
    v34 = v28;
    [concreteController asyncGetCommissionerOnMatterQueue:v35 errorHandler:v32];

    v23 = v36;
    goto LABEL_26;
  }

  v17 = sub_2393D9044(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Can't open a commissioning window over PASE", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1, "Can't open a commissioning window over PASE");
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238EEC998;
  block[3] = &unk_278A72B88;
  v51 = completionCopy;
  dispatch_async(queueCopy, block);
  concreteController = v51;
LABEL_27:
}

- (void)readEventsWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID eventID:(NSNumber *)eventID params:(MTRReadParams *)params queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion
{
  v19 = params;
  v14 = queue;
  v15 = completion;
  v16 = MEMORY[0x277CBEA60];
  v17 = [MTREventRequestPath requestPathWithEndpointID:endpointID clusterID:clusterID eventID:eventID];
  v18 = [v16 arrayWithObject:v17];

  [(MTRBaseDevice *)self readAttributePaths:0 eventPaths:v18 params:v19 queue:v14 completion:v15];
}

- (void)subscribeToEventsWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID eventID:(NSNumber *)eventID params:(MTRSubscribeParams *)params queue:(dispatch_queue_t)queue reportHandler:(MTRDeviceResponseHandler)reportHandler subscriptionEstablished:(MTRSubscriptionEstablishedHandler)subscriptionEstablished
{
  v21 = params;
  v15 = queue;
  v16 = reportHandler;
  v17 = subscriptionEstablished;
  v18 = MEMORY[0x277CBEA60];
  v19 = [MTREventRequestPath requestPathWithEndpointID:endpointID clusterID:clusterID eventID:eventID];
  v20 = [v18 arrayWithObject:v19];

  [(MTRBaseDevice *)self subscribeToAttributePaths:0 eventPaths:v20 params:v21 queue:v15 reportHandler:v16 subscriptionEstablished:v17 resubscriptionScheduled:0];
}

+ (id)eventReportForHeader:(const EventHeader *)header andData:(id)data
{
  v34[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = [[MTREventPath alloc] initWithPath:header];
  if (!dataCopy)
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%@ could not decode event data", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ could not decode event data", v6);
    }

    v33[0] = @"eventPath";
    v33[1] = @"error";
    v34[0] = v6;
    v12 = sub_23921C1E4(MTRError, 0x8680000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
    v34[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    goto LABEL_23;
  }

  var0 = header->var3.var0;
  if (var0 == 1)
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(header->var3.var1 % 0x3E8) / 1000.0 + (header->var3.var1 / 0x3E8)];
    v9 = v8 = @"eventTimestampDate";
    v10 = &unk_284C3E630;
    goto LABEL_11;
  }

  if (header->var3.var0)
  {
    v20 = sub_2393D9044(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = v6;
      v31 = 1024;
      v32 = var0;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "%@ Unsupported event timestamp type %u - ignoring", buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Unsupported event timestamp type %u - ignoring", v6, header->var3.var0);
    }

    v27[0] = @"eventPath";
    v27[1] = @"error";
    v28[0] = v6;
    v12 = sub_23921C1E4(MTRError, 0x8790000006CLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
    v28[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
LABEL_23:
    v19 = v13;
    goto LABEL_30;
  }

  [MEMORY[0x277CCABB0] numberWithDouble:(header->var3.var1 % 0x3E8) / 1000.0 + (header->var3.var1 / 0x3E8)];
  v9 = v8 = @"eventSystemUpTime";
  v10 = &unk_284C3E618;
LABEL_11:
  var2 = header->var2;
  if (var2 >= 3)
  {
    v21 = sub_2393D9044(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = v6;
      v31 = 1024;
      v32 = var2;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "%@ Unsupported event priority %u - ignoring", buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Unsupported event priority %u - ignoring", v6, header->var2);
    }

    v25[0] = @"eventPath";
    v25[1] = @"error";
    v26[0] = v6;
    v15 = sub_23921C1E4(MTRError, 0x87E0000006CLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
    v26[1] = v15;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  }

  else
  {
    v23[0] = @"eventPath";
    v23[1] = @"data";
    v24[0] = v6;
    v24[1] = dataCopy;
    v23[2] = @"eventNumber";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:header->var1];
    v24[2] = v15;
    v23[3] = @"eventPriority";
    v16 = 1;
    if (header->var2 != 1)
    {
      v16 = 2;
    }

    if (header->var2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    v24[3] = v18;
    v24[4] = v10;
    v23[4] = @"eventTimeType";
    v23[5] = v8;
    v24[5] = v9;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];
  }

  v12 = v9;
LABEL_30:

  return v19;
}

+ (PacketBufferHandle)_responseDataForCommand:(id)command clusterID:(unsigned int)d commandID:(unsigned int)iD error:(id *)error
{
  v8 = *&iD;
  v9 = *&d;
  v10 = v6;
  commandCopy = command;
  v12 = objc_opt_class();
  if (sub_238EEE250(commandCopy, @"commandPath", v12, @"response-value command path is not an MTRCommandPath.", error))
  {
    v13 = [commandCopy objectForKeyedSubscript:@"commandPath"];
    cluster = [v13 cluster];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v16 = [cluster isEqualToNumber:v15];

    if (v16)
    {
      command = [v13 command];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
      v19 = [command isEqualToNumber:v18];

      if (v19)
      {
        v20 = objc_opt_class();
        if (sub_238EEE250(commandCopy, @"data", v20, @"response-value data is not a data-value dictionary.", error))
        {
          v21 = [commandCopy objectForKeyedSubscript:@"data"];
          sub_2393D9C18(0x62FuLL, 0, &v38);
          if (v38)
          {
            sub_2393C7B90(v33);
            v35 = 0;
            v36 = 0;
            v34 = &unk_284BB83A8;
            v37 = 0;
            sub_238EA16C4(&v34, &v38, 0);
            sub_2393C7BF0(v33, &v34, 0xFFFFFFFF);
            v23 = sub_238EE7070(v21, v33, 0x100uLL);
            if (v23 || (v23 = sub_238DD2EFC(v33, &v38), v23))
            {
              sub_238EEE54C(@"Unable to encode data-value to TLV", v23, v22, error);
              *v10 = 0;
            }

            else
            {
              *v10 = v38;
              v38 = 0;
            }

            v34 = &unk_284BB83A8;
            sub_238EA1758(&v36);
            sub_238EA1758(&v35);
          }

          else
          {
            sub_238EEE54C(@"Unable to allocate encoding buffer", 0x8AC0000000BLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm", error);
            *v10 = 0;
          }

          sub_238EA1758(&v38);

          goto LABEL_12;
        }
      }

      else
      {
        v28 = MEMORY[0x277CCACA8];
        command2 = [v13 command];
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
        v31 = [v28 stringWithFormat:@"Expected command id %@ but got %@", command2, v30];
        sub_238EEE368(v31, 13, error);
      }
    }

    else
    {
      v24 = MEMORY[0x277CCACA8];
      cluster2 = [v13 cluster];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
      v27 = [v24 stringWithFormat:@"Expected cluster id %@ but got %@", cluster2, v26];
      sub_238EEE368(v27, 13, error);
    }

    *v10 = 0;
LABEL_12:

    goto LABEL_13;
  }

  *v10 = 0;
LABEL_13:

  return v32;
}

- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  concreteController = [(MTRBaseDevice *)self concreteController];
  if (concreteController)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_nodeID];
    [concreteController downloadLogFromNodeWithID:v13 type:type timeout:queueCopy queue:completionCopy completion:timeout];
  }

  else
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Can't download logs via MTRBaseDevice created with an XPC controller", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Can't download logs via MTRBaseDevice created with an XPC controller");
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238EEE868;
    block[3] = &unk_278A72B88;
    v16 = completionCopy;
    dispatch_async(queueCopy, block);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  compressedFabricID = [(MTRDeviceController *)self->_deviceController compressedFabricID];
  v7 = [v3 stringWithFormat:@"<%@: %p, node: %016llX-%016llX (%llu)>", v5, self, objc_msgSend(compressedFabricID, "unsignedLongLongValue"), self->_nodeID, self->_nodeID];

  return v7;
}

- (void)subscribeWithQueue:(dispatch_queue_t)queue minInterval:(uint16_t)minInterval maxInterval:(uint16_t)maxInterval params:(MTRSubscribeParams *)params cacheContainer:(MTRAttributeCacheContainer *)attributeCacheContainer attributeReportHandler:(MTRDeviceReportHandler)attributeReportHandler eventReportHandler:(MTRDeviceReportHandler)eventReportHandler errorHandler:(MTRDeviceErrorHandler)errorHandler subscriptionEstablished:(dispatch_block_t)subscriptionEstablishedHandler resubscriptionScheduled:(MTRDeviceResubscriptionScheduledHandler)resubscriptionScheduledHandler
{
  v15 = maxInterval;
  v16 = minInterval;
  v29 = queue;
  v30 = attributeCacheContainer;
  v17 = attributeReportHandler;
  v18 = eventReportHandler;
  v19 = errorHandler;
  v20 = subscriptionEstablishedHandler;
  v21 = resubscriptionScheduledHandler;
  v22 = [(MTRSubscribeParams *)params copy];
  if (v22)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
    [(MTRSubscribeParams *)v22 setMinInterval:v23];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v15];
    [(MTRSubscribeParams *)v22 setMaxInterval:v24];
  }

  else
  {
    v25 = [MTRSubscribeParams alloc];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v15];
    v22 = [(MTRSubscribeParams *)v25 initWithMinInterval:v24 maxInterval:v26];
  }

  realContainer = [(MTRAttributeCacheContainer *)v30 realContainer];
  [(MTRBaseDevice *)self subscribeWithQueue:v29 params:v22 clusterStateCacheContainer:realContainer attributeReportHandler:v17 eventReportHandler:v18 errorHandler:v19 subscriptionEstablished:v20 resubscriptionScheduled:v21];
}

- (void)subscribeAttributeWithEndpointId:(NSNumber *)endpointId clusterId:(NSNumber *)clusterId attributeId:(NSNumber *)attributeId minInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval params:(MTRSubscribeParams *)params clientQueue:(dispatch_queue_t)clientQueue reportHandler:(MTRDeviceResponseHandler)reportHandler subscriptionEstablished:(dispatch_block_t)subscriptionEstablishedHandler
{
  v26 = endpointId;
  v17 = clusterId;
  v18 = attributeId;
  v19 = minInterval;
  v20 = maxInterval;
  v21 = clientQueue;
  v22 = reportHandler;
  v23 = subscriptionEstablishedHandler;
  v24 = [(MTRSubscribeParams *)params copy];
  v25 = v24;
  if (v24)
  {
    [(MTRSubscribeParams *)v24 setMinInterval:v19];
    [(MTRSubscribeParams *)v25 setMaxInterval:v20];
  }

  else
  {
    v25 = [[MTRSubscribeParams alloc] initWithMinInterval:v19 maxInterval:v20];
  }

  [(MTRBaseDevice *)self subscribeToAttributesWithEndpointID:v26 clusterID:v17 attributeID:v18 params:v25 queue:v21 reportHandler:v22 subscriptionEstablished:v23];
}

@end