@interface MTRDevice
+ (MTRDevice)deviceWithNodeID:(NSNumber *)nodeID controller:(MTRDeviceController *)controller;
+ (MTRDevice)deviceWithNodeID:(uint64_t)nodeID deviceController:(MTRDeviceController *)deviceController;
- (BOOL)_attributeDataValue:(id)value isEqualToDataValue:(id)dataValue;
- (BOOL)_attributeDataValue:(id)value satisfiesValueExpectation:(id)expectation;
- (BOOL)_callDelegatesWithBlock:(id)block;
- (BOOL)_delegateExists;
- (BOOL)_iterateDelegatesWithBlock:(id)block;
- (BOOL)_lockAndCallDelegatesWithBlock:(id)block;
- (BOOL)delegateExists;
- (BOOL)deviceCachePrimed;
- (BOOL)diagnosticLogTransferInProgress;
- (NSDictionary)readAttributeWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID params:(MTRReadParams *)params;
- (NSNumber)estimatedSubscriptionLatency;
- (id)descriptorClusters;
- (id)getAllAttributesReport;
- (id)initForSubclassesWithNodeID:(id)d controller:(id)controller;
- (id)readAttributePaths:(id)paths;
- (id)waitForAttributeValues:(id)values timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)_addDelegate:(id)delegate queue:(id)queue interestedPathsForAttributes:(id)attributes interestedPathsForEvents:(id)events;
- (void)_attributeValue:(id)value reportedForPath:(id)path;
- (void)_cancelAllAttributeValueWaiters;
- (void)_forgetAttributeWaiter:(id)waiter;
- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)self0 queue:(id)self1 completion:(id)self2;
- (void)_invokeKnownCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandPayload:(id)payload expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)self0 responseClass:(Class)self1 queue:(id)self2 completion:(id)self3;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addDelegate:(id)delegate queue:(id)queue interestedPathsForAttributes:(id)attributes interestedPathsForEvents:(id)events;
- (void)dealloc;
- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)invalidate;
- (void)invokeCommandWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID commandID:(NSNumber *)commandID commandFields:(id)commandFields expectedValues:(NSArray *)expectedValues expectedValueInterval:(NSNumber *)expectedValueInterval timedInvokeTimeout:(NSNumber *)timeout queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion;
- (void)invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval queue:(id)queue completion:(id)self0;
- (void)invokeCommands:(id)commands queue:(id)queue completion:(id)completion;
- (void)openCommissioningWindowWithDiscriminator:(NSNumber *)discriminator duration:(NSNumber *)duration queue:(dispatch_queue_t)queue completion:(MTRDeviceOpenCommissioningWindowHandler)completion;
- (void)openCommissioningWindowWithSetupPasscode:(NSNumber *)setupPasscode discriminator:(NSNumber *)discriminator duration:(NSNumber *)duration queue:(dispatch_queue_t)queue completion:(MTRDeviceOpenCommissioningWindowHandler)completion;
- (void)removeDelegate:(id)delegate;
- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)queue;
- (void)writeAttributeWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID value:(id)value expectedValueInterval:(NSNumber *)expectedValueInterval timedWriteTimeout:(NSNumber *)timeout;
@end

@implementation MTRDevice

- (id)initForSubclassesWithNodeID:(id)d controller:(id)controller
{
  dCopy = d;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = MTRDevice;
  v9 = [(MTRDevice *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = [[MTRDelegateManager alloc] initWithOwner:v9];
    delegateManager = v10->_delegateManager;
    v10->_delegateManager = v11;

    objc_storeStrong(&v10->_deviceController, controller);
    objc_storeStrong(&v10->_nodeID, d);
    v10->_state = 0;
  }

  return v10;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "MTRDevice dealloc: %p", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "MTRDevice dealloc: %p", self);
  }

  [(MTRDeviceController *)self->_deviceController deviceDeallocated];
  os_unfair_lock_lock(&self->_lock);
  [(MTRDevice *)self _cancelAllAttributeValueWaiters];
  os_unfair_lock_unlock(&self->_lock);
  v4.receiver = self;
  v4.super_class = MTRDevice;
  [(MTRDevice *)&v4 dealloc];
}

+ (MTRDevice)deviceWithNodeID:(NSNumber *)nodeID controller:(MTRDeviceController *)controller
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = nodeID;
  v6 = controller;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [(MTRDeviceController *)v6 deviceForNodeID:v5];
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Can't create device with nodeID: %@, controller: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Can't create device with nodeID: %@, controller: %@", v5, v7);
    }

    v8 = 0;
  }

  return v8;
}

- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)queue
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = delegate;
  v7 = queue;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ setDelegate %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ setDelegate %@", self, v6);
  }

  [(MTRDevice *)self _addDelegate:v6 queue:v7 interestedPathsForAttributes:0 interestedPathsForEvents:0];
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  v13 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = delegateCopy;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ addDelegate %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ addDelegate %@", self, delegateCopy);
  }

  [(MTRDevice *)self _addDelegate:delegateCopy queue:queueCopy interestedPathsForAttributes:0 interestedPathsForEvents:0];
}

- (void)addDelegate:(id)delegate queue:(id)queue interestedPathsForAttributes:(id)attributes interestedPathsForEvents:(id)events
{
  v23 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  attributesCopy = attributes;
  eventsCopy = events;
  v14 = sub_2393D9044(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v17 = 2112;
    v18 = delegateCopy;
    v19 = 2112;
    v20 = attributesCopy;
    v21 = 2112;
    v22 = eventsCopy;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "%@ addDelegate %@ with interested attribute paths %@ event paths %@", buf, 0x2Au);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ addDelegate %@ with interested attribute paths %@ event paths %@", self, delegateCopy, attributesCopy, eventsCopy);
  }

  [(MTRDevice *)self _addDelegate:delegateCopy queue:queueCopy interestedPathsForAttributes:attributesCopy interestedPathsForEvents:eventsCopy];
}

- (void)_addDelegate:(id)delegate queue:(id)queue interestedPathsForAttributes:(id)attributes interestedPathsForEvents:(id)events
{
  delegateCopy = delegate;
  queueCopy = queue;
  attributesCopy = attributes;
  eventsCopy = events;
  os_unfair_lock_lock(&self->_lock);
  v13 = sub_2393B0330([MTRDeviceDelegateInfo alloc], delegateCopy, queueCopy, attributesCopy, eventsCopy);
  [(MTRDelegateManager *)self->_delegateManager addDelegateInfo:v13];
  [(MTRDevice *)self _delegateAdded:delegateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  [(MTRDelegateManager *)self->_delegateManager removeDelegate:delegateCopy];
  [(MTRDevice *)self _delegateRemoved:delegateCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(MTRDelegateManager *)self->_delegateManager removeAllDelegates];
  [(MTRDevice *)self _cancelAllAttributeValueWaiters];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)delegateExists
{
  os_unfair_lock_lock(&self->_lock);
  _delegateExists = [(MTRDevice *)self _delegateExists];
  os_unfair_lock_unlock(&self->_lock);
  return _delegateExists;
}

- (BOOL)_delegateExists
{
  os_unfair_lock_assert_owner(&self->_lock);

  return [(MTRDevice *)self _iterateDelegatesWithBlock:0];
}

- (BOOL)_iterateDelegatesWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(MTRDelegateManager *)self->_delegateManager iterateDelegatesWithBlock:blockCopy];

  return v5 != 0;
}

- (BOOL)_callDelegatesWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_assert_owner(&self->_lock);
  LOBYTE(self) = [(MTRDelegateManager *)self->_delegateManager callDelegatesWithBlock:blockCopy];

  return self;
}

- (BOOL)_lockAndCallDelegatesWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MTRDevice *)self _callDelegatesWithBlock:blockCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (NSDictionary)readAttributeWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID params:(MTRReadParams *)params
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = endpointID;
  v11 = clusterID;
  v12 = attributeID;
  v13 = params;
  v14 = sub_2393D9044(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromSelector(a2);
    *buf = 138412546;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v17, v18);
  }

  return 0;
}

- (void)writeAttributeWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID attributeID:(NSNumber *)attributeID value:(id)value expectedValueInterval:(NSNumber *)expectedValueInterval timedWriteTimeout:(NSNumber *)timeout
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = endpointID;
  v25 = clusterID;
  v15 = attributeID;
  v16 = value;
  v17 = expectedValueInterval;
  v18 = timeout;
  v19 = sub_2393D9044(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = v14;
    v21 = objc_opt_class();
    v22 = NSStringFromSelector(a2);
    *buf = 138412546;
    v27 = v21;
    v28 = 2112;
    v29 = v22;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);

    v14 = v20;
  }

  if (sub_2393D5398(1u))
  {
    v23 = objc_opt_class();
    v24 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v23, v24);
  }
}

- (id)readAttributePaths:(id)paths
{
  v16 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v8, v9);
  }

  array = [MEMORY[0x277CBEA60] array];

  return array;
}

- (id)descriptorClusters
{
  v24[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v15 = [MTRAttributeRequestPath requestPathWithEndpointID:0 clusterID:&unk_284C43C10 attributeID:0];
  v24[0] = v15;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v16 = [(MTRDevice *)self readAttributePaths:v3];

  v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v16;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"attributePath"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v7 objectForKeyedSubscript:@"attributePath"];
          if (v9)
          {
            v10 = [v7 objectForKeyedSubscript:@"data"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [v7 objectForKeyedSubscript:@"data"];
              v12 = v11 == 0;

              if (v12)
              {
                continue;
              }

              v8 = [v7 objectForKeyedSubscript:@"data"];
              v9 = [v7 objectForKeyedSubscript:@"attributePath"];
              [v17 setObject:v8 forKeyedSubscript:v9];
            }

            else
            {
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  objc_autoreleasePoolPop(context);

  return v17;
}

- (void)invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval queue:(id)queue completion:(id)self0
{
  v25[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  valuesCopy = values;
  intervalCopy = interval;
  queueCopy = queue;
  completionCopy = completion;
  if (!fieldsCopy)
  {
    v24[0] = @"type";
    v24[1] = @"value";
    v25[0] = @"Structure";
    v25[1] = MEMORY[0x277CBEBF8];
    fieldsCopy = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

  [(MTRDevice *)self invokeCommandWithEndpointID:dCopy clusterID:iDCopy commandID:commandIDCopy commandFields:fieldsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:0 queue:queueCopy completion:completionCopy];
}

- (void)invokeCommandWithEndpointID:(NSNumber *)endpointID clusterID:(NSNumber *)clusterID commandID:(NSNumber *)commandID commandFields:(id)commandFields expectedValues:(NSArray *)expectedValues expectedValueInterval:(NSNumber *)expectedValueInterval timedInvokeTimeout:(NSNumber *)timeout queue:(dispatch_queue_t)queue completion:(MTRDeviceResponseHandler)completion
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = endpointID;
  v30 = clusterID;
  v31 = commandID;
  v17 = commandFields;
  v18 = expectedValues;
  v19 = expectedValueInterval;
  v20 = timeout;
  v21 = queue;
  v22 = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v17;
    v24 = [v23 objectForKeyedSubscript:@"type"];
    v25 = [@"Structure" isEqual:v24];

    if (v25)
    {
      [(MTRDevice *)self _invokeCommandWithEndpointID:v29 clusterID:v30 commandID:v31 commandFields:v23 expectedValues:v18 expectedValueInterval:v19 timedInvokeTimeout:v20 serverSideProcessingTimeout:0 queue:v21 completion:v22];
    }

    else
    {
      v27 = sub_2393D9044(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v34 = 2112;
        v35 = v23;
        _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "%@ invokeCommandWithEndpointID passed a commandFields (%@) that is not a structure-typed data-value object", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%@ invokeCommandWithEndpointID passed a commandFields (%@) that is not a structure-typed data-value object", self, v23);
      }

      v28 = sub_23921C1E4(MTRError, 0x1650000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice.mm");
      v22[2](v22, 0, v28);
    }
  }

  else
  {
    v26 = sub_2393D9044(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "%@ invokeCommandWithEndpointID passed a commandFields (%@) that is not a data-value NSDictionary object", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ invokeCommandWithEndpointID passed a commandFields (%@) that is not a data-value NSDictionary object", self, v17);
    }

    v23 = sub_23921C1E4(MTRError, 0x15D0000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDevice.mm");
    v22[2](v22, 0, v23);
  }
}

- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)self0 queue:(id)self1 completion:(id)self2
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  commandIDCopy = commandID;
  fieldsCopy = fields;
  valuesCopy = values;
  intervalCopy = interval;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  queueCopy = queue;
  completionCopy = completion;
  v23 = sub_2393D9044(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = valuesCopy;
    v25 = objc_opt_class();
    v26 = NSStringFromSelector(a2);
    *buf = 138412546;
    v35 = v25;
    v36 = 2112;
    v37 = v26;
    _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);

    valuesCopy = v24;
  }

  if (sub_2393D5398(1u))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v27, v28);
  }
}

- (void)_invokeKnownCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandPayload:(id)payload expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)self0 responseClass:(Class)self1 queue:(id)self2 completion:(id)self3
{
  dCopy = d;
  iDCopy = iD;
  commandIDCopy = commandID;
  payloadCopy = payload;
  valuesCopy = values;
  intervalCopy = interval;
  timeoutCopy = timeout;
  processingTimeoutCopy = processingTimeout;
  queueCopy = queue;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    v31 = valuesCopy;
    v32 = commandIDCopy;
    v40 = 0;
    v27 = [payloadCopy _encodeAsDataValue:&v40];
    v28 = v40;
    if (v27)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_2393B2384;
      v35[3] = &unk_278A72EB0;
      v36[1] = class;
      v36[0] = completionCopy;
      v29 = MEMORY[0x23EE78590](v35);
      [(MTRDevice *)self _invokeCommandWithEndpointID:dCopy clusterID:iDCopy commandID:v32 commandFields:v27 expectedValues:v31 expectedValueInterval:intervalCopy timedInvokeTimeout:timeoutCopy serverSideProcessingTimeout:processingTimeoutCopy queue:queueCopy completion:v29];
      v30 = v36;
    }

    else
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_2393B236C;
      v37[3] = &unk_278A71698;
      v30 = &v39;
      v39 = completionCopy;
      v38 = v28;
      dispatch_async(queueCopy, v37);
      v29 = v38;
    }

    valuesCopy = v31;
    commandIDCopy = v32;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2393B22E0;
    block[3] = &unk_278A72B88;
    v42 = completionCopy;
    dispatch_async(queueCopy, block);
    v28 = v42;
  }
}

- (void)invokeCommands:(id)commands queue:(id)queue completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  queueCopy = queue;
  completionCopy = completion;
  v11 = sub_2393D9044(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(a2);
    *buf = 138412546;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v14, v15);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2393B26BC;
  block[3] = &unk_278A72B88;
  v18 = completionCopy;
  v16 = completionCopy;
  dispatch_async(queueCopy, block);
}

- (void)openCommissioningWindowWithSetupPasscode:(NSNumber *)setupPasscode discriminator:(NSNumber *)discriminator duration:(NSNumber *)duration queue:(dispatch_queue_t)queue completion:(MTRDeviceOpenCommissioningWindowHandler)completion
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = setupPasscode;
  v13 = discriminator;
  v14 = duration;
  v15 = queue;
  v16 = completion;
  v17 = sub_2393D9044(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromSelector(a2);
    *buf = 138412546;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v20, v21);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2393B2964;
  block[3] = &unk_278A72B88;
  v24 = v16;
  v22 = v16;
  dispatch_async(v15, block);
}

- (void)openCommissioningWindowWithDiscriminator:(NSNumber *)discriminator duration:(NSNumber *)duration queue:(dispatch_queue_t)queue completion:(MTRDeviceOpenCommissioningWindowHandler)completion
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = discriminator;
  v11 = duration;
  v12 = queue;
  v13 = completion;
  v14 = sub_2393D9044(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromSelector(a2);
    *buf = 138412546;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v17, v18);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2393B2BF8;
  block[3] = &unk_278A72B88;
  v21 = v13;
  v19 = v13;
  dispatch_async(v12, block);
}

- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  v10 = sub_2393D9044(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromSelector(a2);
    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v13, v14);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2393B2E5C;
  block[3] = &unk_278A72B88;
  v17 = completionCopy;
  v15 = completionCopy;
  dispatch_async(queueCopy, block);
}

- (NSNumber)estimatedSubscriptionLatency
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v6, v7);
  }

  return 0;
}

- (id)getAllAttributesReport
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v6, v7);
  }

  return 0;
}

- (BOOL)deviceCachePrimed
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v6, v7);
  }

  return 0;
}

- (BOOL)diagnosticLogTransferInProgress
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v6, v7);
  }

  return 0;
}

- (BOOL)_attributeDataValue:(id)value isEqualToDataValue:(id)dataValue
{
  v20 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  dataValueCopy = dataValue;
  v8 = dataValueCopy;
  if (valueCopy | dataValueCopy)
  {
    v9 = 0;
    if (valueCopy && dataValueCopy)
    {
      v10 = [valueCopy objectForKeyedSubscript:@"type"];
      v11 = [v8 objectForKeyedSubscript:@"type"];
      if ([v10 isEqual:v11])
      {
        v12 = [valueCopy objectForKeyedSubscript:@"value"];
        v13 = [v8 objectForKeyedSubscript:@"value"];
        if (v12 == v13)
        {
          v9 = 1;
        }

        else
        {
          v14 = [valueCopy objectForKeyedSubscript:@"value"];
          v15 = [v8 objectForKeyedSubscript:@"value"];
          v9 = [v14 isEqual:v15];
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v16 = sub_2393D9044(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "%@ attribute data-value comparison does not expect comparing two nil dictionaries", buf, 0xCu);
    }

    v9 = 1;
    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ attribute data-value comparison does not expect comparing two nil dictionaries", self);
    }
  }

  return v9;
}

- (BOOL)_attributeDataValue:(id)value satisfiesValueExpectation:(id)expectation
{
  v91 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  expectationCopy = expectation;
  v8 = expectationCopy;
  if (valueCopy | expectationCopy)
  {
    if (!valueCopy || !expectationCopy)
    {
      v27 = sub_2393D9044(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = "observed";
        if (valueCopy)
        {
          v28 = "expected";
        }

        *buf = 136315138;
        selfCopy8 = v28;
        _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "@ observed to expected attribute data-value comparison does not expect a nil %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v29 = "observed";
        if (valueCopy)
        {
          v29 = "expected";
        }

        sub_2393D5320(0, 1, "@ observed to expected attribute data-value comparison does not expect a nil %s", v29);
      }

      goto LABEL_72;
    }

    v9 = [valueCopy objectForKeyedSubscript:@"type"];
    v10 = [v8 objectForKeyedSubscript:@"type"];
    v11 = [v9 isEqual:v10];

    if ((v11 & 1) == 0)
    {
LABEL_72:
      v21 = 0;
      goto LABEL_73;
    }

    v12 = [v8 objectForKeyedSubscript:@"type"];
    v13 = [@"Array" isEqual:v12];

    if (v13)
    {
      v14 = [valueCopy objectForKeyedSubscript:@"value"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v8 objectForKeyedSubscript:@"value"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v72 = [valueCopy objectForKeyedSubscript:@"value"];
          v71 = [v8 objectForKeyedSubscript:@"value"];
          v17 = [v72 count];
          if (v17 == [v71 count])
          {
            v18 = 0;
            v19 = 0x277CBE000uLL;
            while (1)
            {
              v20 = [v72 count];
              v21 = v18 >= v20;
              if (v18 >= v20)
              {
                goto LABEL_109;
              }

              obj = [v72 objectAtIndexedSubscript:v18];
              v74 = [v71 objectAtIndexedSubscript:v18];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                v57 = sub_2393D9044(0);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412802;
                  selfCopy8 = self;
                  v87 = 2112;
                  v88 = obj;
                  v89 = 2112;
                  v90 = v74;
                  _os_log_impl(&dword_238DAE000, v57, OS_LOG_TYPE_ERROR, "%@ expected or observed array-value contains entries that are not NSDictionary: %@, %@", buf, 0x20u);
                }

                if (sub_2393D5398(1u))
                {
                  sub_2393D5320(0, 1, "%@ expected or observed array-value contains entries that are not NSDictionary: %@, %@", self, obj, v74);
                }

                goto LABEL_98;
              }

              v22 = [obj objectForKeyedSubscript:@"data"];
              v23 = v19;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & (v22 != 0)) == 0)
              {
                v58 = sub_2393D9044(0);
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  selfCopy8 = self;
                  v87 = 2112;
                  v88 = v22;
                  _os_log_impl(&dword_238DAE000, v58, OS_LOG_TYPE_ERROR, "%@ observed data-value is not an NSDictionary: %@", buf, 0x16u);
                }

                v59 = v22;
                if (sub_2393D5398(1u))
                {
                  sub_2393D5320(0, 1, "%@ observed data-value is not an NSDictionary: %@", self, v22);
                }

                goto LABEL_97;
              }

              v24 = [v74 objectForKeyedSubscript:@"data"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & (v24 != 0)) == 0)
              {
                v60 = sub_2393D9044(0);
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  selfCopy8 = self;
                  v87 = 2112;
                  v88 = v24;
                  _os_log_impl(&dword_238DAE000, v60, OS_LOG_TYPE_ERROR, "%@ expected data-value is not an NSDictionary: %@", buf, 0x16u);
                }

                if (sub_2393D5398(1u))
                {
                  sub_2393D5320(0, 1, "%@ expected data-value is not an NSDictionary: %@", self, v24);
                }

                v59 = v22;
                goto LABEL_97;
              }

              v25 = [(MTRDevice *)self _attributeDataValue:v22 satisfiesValueExpectation:v24];

              ++v18;
              v19 = v23;
              if (!v25)
              {
                goto LABEL_109;
              }
            }
          }

LABEL_74:
          v21 = 0;
LABEL_109:

          goto LABEL_73;
        }
      }

      else
      {
      }

      v54 = sub_2393D9044(0);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        selfCopy8 = self;
        v87 = 2112;
        v88 = valueCopy;
        v89 = 2112;
        v90 = v8;
        _os_log_impl(&dword_238DAE000, v54, OS_LOG_TYPE_ERROR, "%@ at least one of observed and expected value is not an NSArrray: %@, %@", buf, 0x20u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    v30 = [v8 objectForKeyedSubscript:@"type"];
    v31 = [@"Structure" isEqual:v30];

    if (v31)
    {
      v32 = [valueCopy objectForKeyedSubscript:@"value"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [v8 objectForKeyedSubscript:@"value"];
        objc_opt_class();
        v34 = objc_opt_isKindOfClass();

        if (v34)
        {
          v72 = [valueCopy objectForKeyedSubscript:@"value"];
          v71 = [v8 objectForKeyedSubscript:@"value"];
          v35 = [v72 count];
          if (v35 == [v71 count])
          {
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            obj = v71;
            v64 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
            if (v64)
            {
              v65 = *v80;
              while (1)
              {
                v66 = 0;
LABEL_36:
                if (*v80 != v65)
                {
                  objc_enumerationMutation(obj);
                }

                v36 = *(*(&v79 + 1) + 8 * v66);
                objc_opt_class();
                v69 = v36;
                if ((objc_opt_isKindOfClass() & (v36 != 0)) != 1)
                {
                  goto LABEL_102;
                }

                v37 = [v36 objectForKeyedSubscript:@"contextTag"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_101;
                }

                v38 = [v36 objectForKeyedSubscript:@"contextTag"];
                if (!v38)
                {
                  goto LABEL_101;
                }

                v39 = [v69 objectForKeyedSubscript:@"data"];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {

LABEL_101:
LABEL_102:
                  v63 = sub_2393D9044(0);
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    selfCopy8 = self;
                    v87 = 2112;
                    v88 = v69;
                    _os_log_impl(&dword_238DAE000, v63, OS_LOG_TYPE_ERROR, "%@ expected structure-value contains invalid field %@", buf, 0x16u);
                  }

                  if (sub_2393D5398(1u))
                  {
                    sub_2393D5320(0, 1, "%@ expected structure-value contains invalid field %@", self, v69);
                  }

                  v21 = 0;
                  goto LABEL_107;
                }

                v40 = [v69 objectForKeyedSubscript:@"data"];
                v41 = v40 == 0;

                if (v41)
                {
                  goto LABEL_102;
                }

                v74 = [v69 objectForKeyedSubscript:@"contextTag"];
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v67 = v72;
                v42 = [v67 countByEnumeratingWithState:&v75 objects:v83 count:16];
                if (!v42)
                {
                  break;
                }

                v68 = v42;
                v70 = *v76;
LABEL_45:
                v43 = 0;
                while (1)
                {
                  if (*v76 != v70)
                  {
                    objc_enumerationMutation(v67);
                  }

                  v44 = *(*(&v75 + 1) + 8 * v43);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & (v44 != 0)) != 1)
                  {
                    goto LABEL_91;
                  }

                  v45 = [v44 objectForKeyedSubscript:@"contextTag"];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_90;
                  }

                  v46 = [v44 objectForKeyedSubscript:@"contextTag"];
                  if (!v46)
                  {
                    goto LABEL_90;
                  }

                  v47 = [v44 objectForKeyedSubscript:@"data"];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

LABEL_90:
LABEL_91:
                    v61 = sub_2393D9044(0);
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      selfCopy8 = self;
                      v87 = 2112;
                      v88 = v44;
                      _os_log_impl(&dword_238DAE000, v61, OS_LOG_TYPE_ERROR, "%@ observed structure-value contains invalid field %@", buf, 0x16u);
                    }

                    v59 = v67;
                    if (sub_2393D5398(1u))
                    {
                      sub_2393D5320(0, 1, "%@ observed structure-value contains invalid field %@", self, v44);
                    }

                    v62 = obj;
                    goto LABEL_96;
                  }

                  v48 = [v44 objectForKeyedSubscript:@"data"];
                  v49 = v48 == 0;

                  if (v49)
                  {
                    goto LABEL_91;
                  }

                  v50 = [v44 objectForKeyedSubscript:@"contextTag"];
                  if ([v74 isEqual:v50])
                  {
                    break;
                  }

                  if (v68 == ++v43)
                  {
                    v68 = [v67 countByEnumeratingWithState:&v75 objects:v83 count:16];
                    if (v68)
                    {
                      goto LABEL_45;
                    }

                    goto LABEL_99;
                  }
                }

                v51 = [v44 objectForKeyedSubscript:@"data"];
                v52 = [v69 objectForKeyedSubscript:@"data"];
                v53 = [(MTRDevice *)self _attributeDataValue:v51 satisfiesValueExpectation:v52];

                if (!v53)
                {
                  v71 = obj;
                  v72 = v67;
                  goto LABEL_98;
                }

                if (++v66 != v64)
                {
                  goto LABEL_36;
                }

                v64 = [obj countByEnumeratingWithState:&v79 objects:v84 count:16];
                v21 = 1;
                if (!v64)
                {
                  v71 = obj;
                  v72 = v67;
                  goto LABEL_108;
                }
              }

LABEL_99:
              v62 = obj;
              v59 = v67;
LABEL_96:
              v71 = v62;
              v72 = v59;
LABEL_97:

LABEL_98:
              v21 = 0;
            }

            else
            {
              v21 = 1;
LABEL_107:
              v71 = obj;
            }

LABEL_108:

            goto LABEL_109;
          }

          goto LABEL_74;
        }
      }

      else
      {
      }

      v55 = sub_2393D9044(0);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        selfCopy8 = self;
        v87 = 2112;
        v88 = valueCopy;
        v89 = 2112;
        v90 = v8;
        _os_log_impl(&dword_238DAE000, v55, OS_LOG_TYPE_ERROR, "%@ at least one of observed and expected value is not an NSArrray: %@, %@", buf, 0x20u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_72;
      }

LABEL_71:
      sub_2393D5320(0, 1, "%@ at least one of observed and expected value is not an NSArrray: %@, %@", self, valueCopy, v8);
      goto LABEL_72;
    }

    v21 = [(MTRDevice *)self _attributeDataValue:valueCopy isEqualToDataValue:v8];
  }

  else
  {
    v26 = sub_2393D9044(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy8 = self;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "%@ observed to expected attribute data-value comparison does not expect comparing two nil dictionaries", buf, 0xCu);
    }

    v21 = 1;
    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ observed to expected attribute data-value comparison does not expect comparing two nil dictionaries", self);
    }
  }

LABEL_73:

  return v21;
}

- (id)waitForAttributeValues:(id)values timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v67 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  queueCopy = queue;
  completionCopy = completion;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = valuesCopy;
  v11 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v11)
  {
    v12 = *v55;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v55 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v54 + 1) + 8 * i);
        v15 = [obj objectForKeyedSubscript:v14];
        v16 = sub_238EE7184(v15);

        if (!v16)
        {
          v37 = MEMORY[0x277CCACA8];
          [obj objectForKeyedSubscript:v14];
          v38 = [v37 stringWithFormat:@"waitForAttributeValues handed invalid data-value %@ for path %@", v14, objc_claimAutoreleasedReturnValue()];
          sub_23921D8FC(v38);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v11);
  }

  v44 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(obj, "count")}];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v43 = obj;
  v17 = [v43 countByEnumeratingWithState:&v50 objects:v65 count:16];
  if (v17)
  {
    v18 = *v51;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(v43);
        }

        v20 = *(*(&v50 + 1) + 8 * j);
        endpoint = [v20 endpoint];
        cluster = [v20 cluster];
        attribute = [v20 attribute];
        v24 = [MTRAttributeRequestPath requestPathWithEndpointID:endpoint clusterID:cluster attributeID:attribute];
        [v44 addObject:v24];
      }

      v17 = [v43 countByEnumeratingWithState:&v50 objects:v65 count:16];
    }

    while (v17);
  }

  v40 = [(MTRDevice *)self readAttributePaths:v44];
  v25 = [[MTRAttributeValueWaiter alloc] initWithDevice:self values:v43 queue:queueCopy completion:completionCopy];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = v40;
  v27 = [v26 countByEnumeratingWithState:&v46 objects:v64 count:16];
  if (v27)
  {
    v28 = *v47;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v47 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v46 + 1) + 8 * k);
        v31 = [v30 objectForKeyedSubscript:@"data"];
        v32 = [v30 objectForKeyedSubscript:@"attributePath"];
        [(MTRAttributeValueWaiter *)v25 _attributeValue:v31 reportedForPath:v32 byDevice:self];
      }

      v27 = [v26 countByEnumeratingWithState:&v46 objects:v64 count:16];
    }

    while (v27);
  }

  if ([(MTRAttributeValueWaiter *)v25 allValuesSatisfied])
  {
    v33 = sub_2393D9044(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v60 = 2112;
      timeoutCopy = *&v43;
      _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_DEFAULT, "%@ waitForAttributeValues no need to wait, values already match: %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ waitForAttributeValues no need to wait, values already match: %@", self, v43);
    }

    [(MTRAttributeValueWaiter *)v25 _notifyWithError:0];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    if (!self || !self->_attributeValueWaiters)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      sub_23952E21C(self, weakObjectsHashTable);
    }

    if (self)
    {
      attributeValueWaiters = self->_attributeValueWaiters;
    }

    else
    {
      attributeValueWaiters = 0;
    }

    [(NSHashTable *)attributeValueWaiters addObject:v25];
    os_unfair_lock_unlock(&self->_lock);
    v35 = sub_2393D9044(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v60 = 2048;
      timeoutCopy = timeout;
      v62 = 2112;
      v63 = v43;
      _os_log_impl(&dword_238DAE000, v35, OS_LOG_TYPE_DEFAULT, "%@ waitForAttributeValues will wait up to %f seconds for %@", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ waitForAttributeValues will wait up to %f seconds for %@", self, *&timeout, v43);
    }

    [(MTRAttributeValueWaiter *)v25 _startTimerWithTimeout:timeout];
  }

  return v25;
}

- (void)_cancelAllAttributeValueWaiters
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self)
  {
    attributeValueWaiters = self->_attributeValueWaiters;
  }

  else
  {
    attributeValueWaiters = 0;
  }

  v4 = attributeValueWaiters;
  sub_23952E21C(self, 0);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v4;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) _notifyCancellation];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (MTRDevice)deviceWithNodeID:(uint64_t)nodeID deviceController:(MTRDeviceController *)deviceController
{
  v6 = deviceController;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:nodeID];
  v8 = [self deviceWithNodeID:v7 controller:v6];

  return v8;
}

- (void)_attributeValue:(id)value reportedForPath:(id)path
{
  v33 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->_lock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (self)
  {
    attributeValueWaiters = self->_attributeValueWaiters;
  }

  else
  {
    attributeValueWaiters = 0;
  }

  v9 = attributeValueWaiters;
  array = 0;
  v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        if ([v14 _attributeValue:valueCopy reportedForPath:pathCopy byDevice:self] && objc_msgSend(v14, "allValuesSatisfied"))
        {
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [array addObject:v14];
        }
      }

      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = array;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v15);
        }

        if (self)
        {
          v19 = self->_attributeValueWaiters;
        }

        else
        {
          v19 = 0;
        }

        v20 = *(*(&v23 + 1) + 8 * v18);
        v21 = v19;
        [(NSHashTable *)v21 removeObject:v20, v23];

        [v20 _notifyWithError:0];
        ++v18;
      }

      while (v16 != v18);
      v22 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      v16 = v22;
    }

    while (v22);
  }
}

- (void)_forgetAttributeWaiter:(id)waiter
{
  waiterCopy = waiter;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    attributeValueWaiters = self->_attributeValueWaiters;
  }

  else
  {
    attributeValueWaiters = 0;
  }

  [(NSHashTable *)attributeValueWaiters removeObject:waiterCopy];
  os_unfair_lock_unlock(&self->_lock);
}

@end