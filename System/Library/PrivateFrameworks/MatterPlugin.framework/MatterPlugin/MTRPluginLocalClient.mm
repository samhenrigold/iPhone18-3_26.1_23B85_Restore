@interface MTRPluginLocalClient
+ (id)localDispatchQueue;
- (MTRPluginClient)pluginClient;
- (MTRPluginLocalClient)initWithPluginClient:(id)client;
- (NSString)description;
- (id)_deviceForControllerUUID:(id)d nodeID:(id)iD requestedViaDelegate:(BOOL)delegate;
- (id)deviceController;
- (void)_registerDevice:(id)device addedViaDelegate:(BOOL)delegate;
- (void)_unregisterDevice:(id)device;
- (void)addDelegateForDevice:(id)device interestedPathsForAttributes:(id)attributes interestedPathsForEvents:(id)events;
- (void)controller:(id)controller suspendedChangedTo:(BOOL)to;
- (void)dealloc;
- (void)device:(id)device injectAttributeReport:(id)report;
- (void)device:(id)device injectEventReport:(id)report;
- (void)device:(id)device internalStateUpdated:(id)updated;
- (void)device:(id)device receivedAttributeReport:(id)report;
- (void)device:(id)device receivedEventReport:(id)report;
- (void)device:(id)device stateChanged:(unint64_t)changed;
- (void)deviceBecameActive:(id)active;
- (void)deviceCachePrimed:(id)primed;
- (void)deviceConfigurationChanged:(id)changed;
- (void)deviceController:(id)controller deleteNodeID:(id)d;
- (void)deviceController:(id)controller getNodesWithStoredDataWithReply:(id)reply;
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
- (void)invalidate;
- (void)logState;
- (void)removeDelegateForDevice:(id)device;
- (void)reportAllAttributesForDevice:(id)device;
- (void)reportAllInternalStateForDevice:(id)device;
@end

@implementation MTRPluginLocalClient

+ (id)localDispatchQueue
{
  if (localDispatchQueue_predicateNAME != -1)
  {
    +[MTRPluginLocalClient localDispatchQueue];
  }

  v3 = localDispatchQueue_sLocalDispatchQueue;

  return v3;
}

void __42__MTRPluginLocalClient_localDispatchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("MTRPluginLocalDispatchQueue", v2);
  v1 = localDispatchQueue_sLocalDispatchQueue;
  localDispatchQueue_sLocalDispatchQueue = v0;
}

- (MTRPluginLocalClient)initWithPluginClient:(id)client
{
  v21 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v16.receiver = self;
  v16.super_class = MTRPluginLocalClient;
  v5 = [(MTRPluginLocalClient *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(MTRPluginLocalClient *)v5 setPluginClient:clientCopy];
    v7 = [MEMORY[0x277CBEB98] set];
    registeredNodeIDs = v6->_registeredNodeIDs;
    v6->_registeredNodeIDs = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginLocalClient *)v6 setSubscribedMTRDevices:v9];

    v10 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginLocalClient *)v6 setTemporarilyRegisteredNodeIDs:v10];

    v11 = [MEMORY[0x277CBEB58] set];
    [(MTRPluginLocalClient *)v6 setRegisteredMTRDeviceControllerIDs:v11];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(MTRPluginLocalClient *)v6 setContext:dictionary];

    v13 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = clientCopy;
      _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ initialized with pluginClient %@", buf, 0x16u);
    }

    v14 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(MTRPluginLocalClient *)self setPluginClient:0];
  temporaryDeviceCleanupSource = [(MTRPluginLocalClient *)self temporaryDeviceCleanupSource];

  if (temporaryDeviceCleanupSource)
  {
    temporaryDeviceCleanupSource2 = [(MTRPluginLocalClient *)self temporaryDeviceCleanupSource];
    dispatch_source_cancel(temporaryDeviceCleanupSource2);

    [(MTRPluginLocalClient *)self setTemporaryDeviceCleanupSource:0];
  }

  v5.receiver = self;
  v5.super_class = MTRPluginLocalClient;
  [(MTRPluginLocalClient *)&v5 dealloc];
}

- (void)invalidate
{
  [(MTRPluginLocalClient *)self setPluginClient:0];
  v3 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__MTRPluginLocalClient_invalidate__block_invoke;
  block[3] = &unk_279893AA0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __34__MTRPluginLocalClient_invalidate__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) registeredMTRDeviceControllerIDs];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = +[MTRPluginDeviceControllerRegistry sharedInstance];
        v9 = [v8 deviceControllerForUUID:v7];

        [v9 removeDeviceControllerDelegate:*(a1 + 32)];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = [MEMORY[0x277CBEB98] set];
  [*(a1 + 32) setRegisteredNodeIDs:v10];

  v11 = [MEMORY[0x277CBEB58] set];
  [*(a1 + 32) setTemporarilyRegisteredNodeIDs:v11];

  v12 = [MEMORY[0x277CBEB58] set];
  [*(a1 + 32) setSubscribedMTRDevices:v12];

  v13 = [MEMORY[0x277CBEB58] set];
  [*(a1 + 32) setRegisteredMTRDeviceControllerIDs:v13];
}

- (void)_registerDevice:(id)device addedViaDelegate:(BOOL)delegate
{
  deviceCopy = device;
  v7 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MTRPluginLocalClient__registerDevice_addedViaDelegate___block_invoke;
  block[3] = &unk_279893BB8;
  delegateCopy = delegate;
  v10 = deviceCopy;
  selfCopy = self;
  v8 = deviceCopy;
  dispatch_async(v7, block);
}

void __57__MTRPluginLocalClient__registerDevice_addedViaDelegate___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (*(a1 + 48) != 1)
    {
LABEL_8:
      v7 = [*(a1 + 40) temporarilyRegisteredNodeIDs];
      v8 = [*(a1 + 32) nodeID];
      v9 = [v7 containsObject:v8];

      if ((v9 & 1) == 0)
      {
        v10 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 32);
          v11 = *(a1 + 40);
          v13 = @"NO";
          if (*(a1 + 48))
          {
            v13 = @"YES";
          }

          *buf = 138412802;
          v35 = v11;
          v36 = 2112;
          v37 = v12;
          v38 = 2112;
          v39 = v13;
          _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@  => registering temporary device: %@ addedViaDelegate: %@", buf, 0x20u);
        }

        v14 = [*(a1 + 40) temporarilyRegisteredNodeIDs];
        v15 = [*(a1 + 32) nodeID];
        [v14 addObject:v15];

        v16 = [*(a1 + 40) temporaryDeviceCleanupSource];
        v17 = +[MTRPluginLocalClient localDispatchQueue];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __57__MTRPluginLocalClient__registerDevice_addedViaDelegate___block_invoke_27;
        v32[3] = &unk_279893AC8;
        v31 = *(a1 + 32);
        v18 = v31.i64[0];
        v33 = vextq_s8(v31, v31, 8uLL);
        v19 = MTRBufferedExecutionBlock(v16, v17, v32, 10.0);
        [*(a1 + 40) setTemporaryDeviceCleanupSource:v19];
      }

      return;
    }

    v2 = [*(a1 + 40) registeredNodeIDs];
    v3 = [*(a1 + 32) nodeID];
    v4 = [v2 containsObject:v3];

    if (v4)
    {
      if (*(a1 + 48))
      {
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);

        [v5 addDelegateForDevice:v6 interestedPathsForAttributes:0 interestedPathsForEvents:0];
        return;
      }

      goto LABEL_8;
    }

    v21 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      v22 = *(a1 + 40);
      v24 = @"NO";
      if (*(a1 + 48))
      {
        v24 = @"YES";
      }

      *buf = 138412802;
      v35 = v22;
      v36 = 2112;
      v37 = v23;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&dword_25830F000, v21, OS_LOG_TYPE_DEFAULT, "%@  => registering device: %@ addedViaDelegate: %@", buf, 0x20u);
    }

    v25 = [*(a1 + 40) registeredNodeIDs];
    v26 = [v25 mutableCopy];

    v27 = [*(a1 + 32) nodeID];
    [v26 addObject:v27];

    v28 = [v26 copy];
    [*(a1 + 40) setRegisteredNodeIDs:v28];

    [*(a1 + 40) addDelegateForDevice:*(a1 + 32) interestedPathsForAttributes:0 interestedPathsForEvents:0];
    [*(a1 + 40) reportAllAttributesForDevice:*(a1 + 32)];
    [*(a1 + 40) reportAllInternalStateForDevice:*(a1 + 32)];
    v29 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 40);
      *buf = 138412546;
      v35 = v30;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_25830F000, v29, OS_LOG_TYPE_DEFAULT, "   => %@ Registered nodeIDs: %@", buf, 0x16u);
    }
  }

  else
  {
    v20 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25830F000, v20, OS_LOG_TYPE_DEFAULT, "** Tried to register nil device", buf, 2u);
    }
  }
}

void __57__MTRPluginLocalClient__registerDevice_addedViaDelegate___block_invoke_27(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 temporarilyRegisteredNodeIDs];
    v6 = [*(a1 + 32) registeredNodeIDs];
    *buf = 138412802;
    v50 = v3;
    v51 = 2112;
    v52 = v5;
    v53 = 2112;
    v54 = v6;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ Cleaning up temporary nodeIDs: %@  (permanent ones: %@)", buf, 0x20u);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = [*(a1 + 32) temporarilyRegisteredNodeIDs];
  v8 = [v7 copy];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    v35 = *v44;
    do
    {
      v12 = 0;
      v36 = v10;
      do
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        v14 = [*(a1 + 32) registeredNodeIDs];
        v15 = [*(a1 + 40) nodeID];
        v16 = [v14 containsObject:v15];

        if (v16)
        {
          v17 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a1 + 32);
            *buf = 138412546;
            v50 = v18;
            v51 = 2112;
            v52 = v13;
            _os_log_impl(&dword_25830F000, v17, OS_LOG_TYPE_DEFAULT, "%@  => *** Not cleaning up temporary device, as it's permanent now: %@", buf, 0x16u);
          }
        }

        else
        {
          v38 = v12;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v19 = [*(a1 + 32) subscribedMTRDevices];
          v20 = [v19 copy];

          v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v40;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v40 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v39 + 1) + 8 * i);
                v26 = [*(a1 + 40) nodeID];
                v27 = [v26 isEqual:v13];

                if (v27)
                {
                  v28 = matterPluginLog_default;
                  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
                  {
                    v29 = *(a1 + 32);
                    *buf = 138412546;
                    v50 = v29;
                    v51 = 2112;
                    v52 = v25;
                    _os_log_impl(&dword_25830F000, v28, OS_LOG_TYPE_DEFAULT, "%@  => unregistering temporary device: %@", buf, 0x16u);
                  }

                  [*(a1 + 32) _unregisterDevice:v25];
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v22);
          }

          v11 = v35;
          v10 = v36;
          v12 = v38;
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v10);
  }

  v30 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 32);
    v32 = v30;
    v33 = [v31 temporarilyRegisteredNodeIDs];
    *buf = 138412546;
    v50 = v31;
    v51 = 2112;
    v52 = v33;
    _os_log_impl(&dword_25830F000, v32, OS_LOG_TYPE_DEFAULT, "%@ => Done cleaning up temporary nodeIDs: %@", buf, 0x16u);
  }

  v34 = [MEMORY[0x277CBEB58] set];
  [*(a1 + 32) setTemporarilyRegisteredNodeIDs:v34];
}

- (void)_unregisterDevice:(id)device
{
  deviceCopy = device;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__MTRPluginLocalClient__unregisterDevice___block_invoke;
  v7[3] = &unk_279893AC8;
  v8 = deviceCopy;
  selfCopy = self;
  v6 = deviceCopy;
  dispatch_async(v5, v7);
}

void __42__MTRPluginLocalClient__unregisterDevice___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = matterPluginLog_default;
  v4 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v25 = 138412546;
      v26 = v5;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "%@  => unregistering device: %@", &v25, 0x16u);
    }

    [*(a1 + 40) removeDelegateForDevice:*(a1 + 32)];
    v7 = [*(a1 + 40) registeredNodeIDs];
    v8 = [*(a1 + 32) nodeID];
    v9 = [v7 containsObject:v8];

    if (v9)
    {
      v10 = [*(a1 + 40) registeredNodeIDs];
      v11 = [v10 mutableCopy];

      v12 = [*(a1 + 32) nodeID];
      [v11 removeObject:v12];

      v13 = [v11 copy];
      [*(a1 + 40) setRegisteredNodeIDs:v13];
    }

    else
    {
      v14 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, " => Device wasn't registered, ignoring", &v25, 2u);
      }
    }

    v15 = [*(a1 + 40) temporarilyRegisteredNodeIDs];
    v16 = [*(a1 + 32) nodeID];
    v17 = [v15 containsObject:v16];

    if (v17)
    {
      v18 = [*(a1 + 40) temporarilyRegisteredNodeIDs];
      v19 = [*(a1 + 32) nodeID];
      [v18 removeObject:v19];
    }

    else
    {
      v20 = matterPluginLog_default;
      if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_25830F000, v20, OS_LOG_TYPE_DEFAULT, " => Device wasn't registered in temporary list, ignoring", &v25, 2u);
      }
    }

    v21 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 40);
      v23 = v21;
      v24 = [v22 registeredNodeIDs];
      v25 = 138412546;
      v26 = v22;
      v27 = 2112;
      v28 = v24;
      _os_log_impl(&dword_25830F000, v23, OS_LOG_TYPE_DEFAULT, "   => %@ Registered nodeIDs: %@", &v25, 0x16u);
    }
  }

  else if (v4)
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_25830F000, v3, OS_LOG_TYPE_DEFAULT, "** Tried to unregister nil device", &v25, 2u);
  }
}

- (id)_deviceForControllerUUID:(id)d nodeID:(id)iD requestedViaDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  iDCopy = iD;
  dCopy = d;
  v10 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v10);

  v11 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  v12 = [v11 deviceControllerForUUID:dCopy];

  if (v12)
  {
    registeredMTRDeviceControllerIDs = [(MTRPluginLocalClient *)self registeredMTRDeviceControllerIDs];
    uniqueIdentifier = [v12 uniqueIdentifier];
    v15 = [registeredMTRDeviceControllerIDs containsObject:uniqueIdentifier];

    if ((v15 & 1) == 0)
    {
      registeredMTRDeviceControllerIDs2 = [(MTRPluginLocalClient *)self registeredMTRDeviceControllerIDs];
      uniqueIdentifier2 = [v12 uniqueIdentifier];
      [registeredMTRDeviceControllerIDs2 addObject:uniqueIdentifier2];

      v18 = +[MTRPluginLocalClient localDispatchQueue];
      [v12 addDeviceControllerDelegate:self queue:v18];
    }

    v19 = [MEMORY[0x277CD5310] deviceWithNodeID:iDCopy controller:v12];
    [(MTRPluginLocalClient *)self _registerDevice:v19 addedViaDelegate:delegateCopy];
  }

  else
  {
    v20 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
    {
      [MTRPluginLocalClient _deviceForControllerUUID:v20 nodeID:iDCopy requestedViaDelegate:?];
    }

    v19 = 0;
  }

  return v19;
}

- (void)deviceController:(id)controller nodeID:(id)d getStateWithReply:(id)reply
{
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  v11 = +[MTRPluginLocalClient localDispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__MTRPluginLocalClient_deviceController_nodeID_getStateWithReply___block_invoke;
  v15[3] = &unk_279893BE0;
  v15[4] = self;
  v16 = controllerCopy;
  v17 = dCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = dCopy;
  v14 = controllerCopy;
  dispatch_async(v11, v15);
}

void __66__MTRPluginLocalClient_deviceController_nodeID_getStateWithReply___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ getState controllerUUID %@ nodeID %@", &v10, 0x20u);
  }

  v6 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v7 = [v6 state];
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@  => device %@ state %lu", &v10, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d getDeviceCachePrimedWithReply:(id)reply
{
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  v11 = +[MTRPluginLocalClient localDispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__MTRPluginLocalClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke;
  v15[3] = &unk_279893BE0;
  v15[4] = self;
  v16 = controllerCopy;
  v17 = dCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = dCopy;
  v14 = controllerCopy;
  dispatch_async(v11, v15);
}

void __78__MTRPluginLocalClient_deviceController_nodeID_getDeviceCachePrimedWithReply___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ getDeviceCachePrimed controllerUUID %@ nodeID %@", &v10, 0x20u);
  }

  v6 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v7 = [v6 deviceCachePrimed];
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@  => device %@ deviceCachePrimed %lu", &v10, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d getEstimatedStartTimeWithReply:(id)reply
{
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  v11 = +[MTRPluginLocalClient localDispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__MTRPluginLocalClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke;
  v15[3] = &unk_279893BE0;
  v15[4] = self;
  v16 = controllerCopy;
  v17 = dCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = dCopy;
  v14 = controllerCopy;
  dispatch_async(v11, v15);
}

void __79__MTRPluginLocalClient_deviceController_nodeID_getEstimatedStartTimeWithReply___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ getEstimatedStartTime controllerUUID %@ nodeID %@", &v10, 0x20u);
  }

  v6 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v7 = [v6 estimatedStartTime];
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@  => device %@ estimatedStartTime %@", &v10, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d getEstimatedSubscriptionLatencyWithReply:(id)reply
{
  controllerCopy = controller;
  dCopy = d;
  replyCopy = reply;
  v11 = +[MTRPluginLocalClient localDispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__MTRPluginLocalClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke;
  v15[3] = &unk_279893BE0;
  v15[4] = self;
  v16 = controllerCopy;
  v17 = dCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = dCopy;
  v14 = controllerCopy;
  dispatch_async(v11, v15);
}

void __89__MTRPluginLocalClient_deviceController_nodeID_getEstimatedSubscriptionLatencyWithReply___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ getEstimatedSubscriptionLatency controllerUUID %@ nodeID %@", &v10, 0x20u);
  }

  v6 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v7 = [v6 estimatedSubscriptionLatency];
  v8 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v9;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_25830F000, v8, OS_LOG_TYPE_DEFAULT, "%@  => device %@ estimatedSubscriptionLatency %@", &v10, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d readAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID params:(id)params withReply:(id)reply
{
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  attributeIDCopy = attributeID;
  paramsCopy = params;
  replyCopy = reply;
  v22 = +[MTRPluginLocalClient localDispatchQueue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __115__MTRPluginLocalClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke;
  v30[3] = &unk_279893C08;
  v30[4] = self;
  v31 = controllerCopy;
  v32 = dCopy;
  v33 = iDCopy;
  v34 = clusterIDCopy;
  v35 = attributeIDCopy;
  v36 = paramsCopy;
  v37 = replyCopy;
  v23 = replyCopy;
  v24 = paramsCopy;
  v25 = attributeIDCopy;
  v26 = clusterIDCopy;
  v27 = iDCopy;
  v28 = dCopy;
  v29 = controllerCopy;
  dispatch_async(v22, v30);
}

void __115__MTRPluginLocalClient_deviceController_nodeID_readAttributeWithEndpointID_clusterID_attributeID_params_withReply___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v12 = 138413826;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ readAttributeWithEndpointID controllerUUID %@ nodeID %@ endpointID %@ clusterID %@ attribute %@ params %@", &v12, 0x48u);
  }

  v10 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v11 = [v10 readAttributeWithEndpointID:*(a1 + 56) clusterID:*(a1 + 64) attributeID:*(a1 + 72) params:*(a1 + 80)];
  (*(*(a1 + 88) + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d readAttributePaths:(id)paths withReply:(id)reply
{
  controllerCopy = controller;
  dCopy = d;
  pathsCopy = paths;
  replyCopy = reply;
  v14 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__MTRPluginLocalClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke;
  block[3] = &unk_279893C30;
  block[4] = self;
  v20 = controllerCopy;
  v21 = dCopy;
  v22 = pathsCopy;
  v23 = replyCopy;
  v15 = replyCopy;
  v16 = pathsCopy;
  v17 = dCopy;
  v18 = controllerCopy;
  dispatch_async(v14, block);
}

void __77__MTRPluginLocalClient_deviceController_nodeID_readAttributePaths_withReply___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v11 = 138413058;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ readAttributePaths controllerUUID %@ nodeID %@ attributePaths %@", &v11, 0x2Au);
  }

  v7 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v8 = [v7 readAttributePaths:*(a1 + 56)];
  v9 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = 138412802;
    v12 = v10;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@  => device %@ readAttributePaths %@", &v11, 0x20u);
  }

  (*(*(a1 + 64) + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d writeAttributeWithEndpointID:(id)iD clusterID:(id)clusterID attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)self0
{
  controllerCopy = controller;
  dCopy = d;
  iDCopy = iD;
  clusterIDCopy = clusterID;
  attributeIDCopy = attributeID;
  valueCopy = value;
  intervalCopy = interval;
  timeoutCopy = timeout;
  if ((MTRPluginForceRemoteControl(timeoutCopy, v24) & 1) == 0)
  {
    v25 = +[MTRPluginLocalClient localDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __145__MTRPluginLocalClient_deviceController_nodeID_writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout___block_invoke;
    block[3] = &unk_279893C58;
    block[4] = self;
    v27 = controllerCopy;
    v28 = dCopy;
    v29 = iDCopy;
    v30 = clusterIDCopy;
    v31 = attributeIDCopy;
    v32 = valueCopy;
    v33 = intervalCopy;
    v34 = timeoutCopy;
    dispatch_async(v25, block);
  }
}

void __145__MTRPluginLocalClient_deviceController_nodeID_writeAttributeWithEndpointID_clusterID_attributeID_value_expectedValueInterval_timedWriteTimeout___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    v11 = *(a1 + 96);
    *buf = 138414338;
    v22 = v3;
    v23 = 2112;
    v24 = v4;
    v25 = 2112;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ writeAttributeWithEndpointID controllerUUID %@ nodeID %@ endpointID %@ clusterID %@ attribute %@ value %@ expectedValueInterval %@ timedWriteTimeout %@", buf, 0x5Cu);
  }

  v12 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  [v12 writeAttributeWithEndpointID:*(a1 + 56) clusterID:*(a1 + 64) attributeID:*(a1 + 72) value:*(a1 + 80) expectedValueInterval:*(a1 + 88) timedWriteTimeout:*(a1 + 96)];
  v13 = +[MTRPluginMetricsCollector sharedInstance];
  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) pluginClient];
  v16 = [v15 clientType];
  LOBYTE(v20) = *(a1 + 96) != 0;
  v17 = [MTRPluginWriteAttributeMetric writeAttributeMetricForDevice:v12 homeID:v14 clientType:v16 endpointID:*(a1 + 56) clusterID:*(a1 + 64) attributeID:*(a1 + 72) timedWrite:v20 remoteMessageID:0];
  [v13 collectMetric:v17];

  v18 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    *buf = 138412546;
    v22 = v19;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_25830F000, v18, OS_LOG_TYPE_DEFAULT, "%@  => device %@", buf, 0x16u);
  }
}

- (void)deviceController:(id)controller nodeID:(id)d invokeCommandWithEndpointID:(id)iD clusterID:(id)clusterID commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)self0 timedInvokeTimeout:(id)self1 serverSideProcessingTimeout:(id)self2 completion:(id)self3
{
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
  if ((MTRPluginForceRemoteControl(completionCopy, v27) & 1) == 0)
  {
    +[MTRPluginLocalClient localDispatchQueue];
    v29 = v28 = commandIDCopy;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __205__MTRPluginLocalClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke;
    block[3] = &unk_279893CA8;
    block[4] = self;
    v34 = controllerCopy;
    v35 = dCopy;
    v36 = iDCopy;
    v37 = clusterIDCopy;
    v38 = v28;
    v39 = fieldsCopy;
    v40 = valuesCopy;
    v41 = intervalCopy;
    v42 = timeoutCopy;
    v43 = processingTimeoutCopy;
    v44 = completionCopy;
    dispatch_async(v29, block);

    commandIDCopy = v28;
  }
}

void __205__MTRPluginLocalClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    v12 = *(a1 + 96);
    v11 = *(a1 + 104);
    *buf = 138414594;
    v55 = v3;
    v56 = 2112;
    v57 = v4;
    v58 = 2112;
    v59 = v5;
    v60 = 2112;
    v61 = v6;
    v62 = 2112;
    v63 = v7;
    v64 = 2112;
    v65 = v8;
    v66 = 2112;
    v67 = v9;
    v68 = 2112;
    v69 = v10;
    v70 = 2112;
    v71 = v12;
    v72 = 2112;
    v73 = v11;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ invokeCommandWithEndpointID controllerUUID %@ nodeID %@ endpointID %@ clusterID %@ commandID %@ commandFields %@ expectedValues %@ expectedValueInterval %@ timedInvokeTimeout %@", buf, 0x66u);
  }

  v13 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 80);
    *buf = 138412546;
    v55 = v14;
    v56 = 2112;
    v57 = v15;
    _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ commandFields: %@", buf, 0x16u);
  }

  v16 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 80);
    v19 = v16;
    v20 = [v18 allKeys];
    *buf = 138412546;
    v55 = v17;
    v56 = 2112;
    v57 = v20;
    _os_log_impl(&dword_25830F000, v19, OS_LOG_TYPE_DEFAULT, "%@ commandFields allKeys: %@", buf, 0x16u);
  }

  v21 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 80);
    v24 = v21;
    v25 = [v23 allObjects];
    *buf = 138412546;
    v55 = v22;
    v56 = 2112;
    v57 = v25;
    _os_log_impl(&dword_25830F000, v24, OS_LOG_TYPE_DEFAULT, "%@ commandFields allObjects: %@", buf, 0x16u);
  }

  v26 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 32);
    v28 = *(a1 + 80);
    v29 = v26;
    v30 = [v28 objectForKey:@"value"];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    *buf = 138412546;
    v55 = v27;
    v56 = 2112;
    v57 = v32;
    _os_log_impl(&dword_25830F000, v29, OS_LOG_TYPE_DEFAULT, "%@ commandFields objectForKey: 'value' class: %@", buf, 0x16u);
  }

  v50 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v33 = *(a1 + 40);
  v34 = [*(a1 + 32) pluginClient];
  v35 = [v34 clientType];
  LOBYTE(v47) = *(a1 + 104) != 0;
  v36 = [MTRPluginInvokeCommandMetric invokeCommandMetricForDevice:v50 homeID:v33 clientType:v35 endpointID:*(a1 + 56) clusterID:*(a1 + 64) commandID:*(a1 + 72) commandFields:*(a1 + 80) expectedValues:*(a1 + 88) expectedValueInterval:*(a1 + 96) timedInvoke:v47 remoteMessageID:0];

  v48 = *(a1 + 64);
  v49 = *(a1 + 56);
  v37 = *(a1 + 72);
  v38 = *(a1 + 80);
  v39 = *(a1 + 88);
  v40 = *(a1 + 96);
  v41 = *(a1 + 104);
  v42 = *(a1 + 112);
  v43 = +[MTRPluginServer serverWorkQueue];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __205__MTRPluginLocalClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_36;
  v51[3] = &unk_279893C80;
  v44 = v36;
  v52 = v44;
  v53 = *(a1 + 120);
  [v50 _invokeCommandWithEndpointID:v49 clusterID:v48 commandID:v37 commandFields:v38 expectedValues:v39 expectedValueInterval:v40 timedInvokeTimeout:v41 serverSideProcessingTimeout:v42 queue:v43 completion:v51];

  v45 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v46 = *(a1 + 32);
    *buf = 138412546;
    v55 = v46;
    v56 = 2112;
    v57 = v50;
    _os_log_impl(&dword_25830F000, v45, OS_LOG_TYPE_DEFAULT, "%@  => device %@", buf, 0x16u);
  }
}

void __205__MTRPluginLocalClient_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = +[MTRPluginMetricsCollector sharedInstance];
  [v6 collectMetric:*(a1 + 32) error:v5];

  (*(*(a1 + 40) + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d invokeCommands:(id)commands completion:(id)completion
{
  controllerCopy = controller;
  dCopy = d;
  commandsCopy = commands;
  completionCopy = completion;
  if ((MTRPluginForceRemoteControl(completionCopy, v14) & 1) == 0)
  {
    v15 = +[MTRPluginLocalClient localDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__MTRPluginLocalClient_deviceController_nodeID_invokeCommands_completion___block_invoke;
    block[3] = &unk_279893C30;
    block[4] = self;
    v17 = controllerCopy;
    v18 = dCopy;
    v19 = commandsCopy;
    v20 = completionCopy;
    dispatch_async(v15, block);
  }
}

void __74__MTRPluginLocalClient_deviceController_nodeID_invokeCommands_completion___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *buf = 138413058;
    v55 = v3;
    v56 = 2112;
    v57 = v4;
    v58 = 2112;
    v59 = v5;
    v60 = 2112;
    v61 = v6;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ invokeCommands: controllerUUID %@ nodeID %@ commands %@", buf, 0x2Au);
  }

  v34 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 40) nodeID:*(a1 + 48) requestedViaDelegate:0];
  v33 = [MEMORY[0x277CBEB18] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = *(a1 + 56);
  v31 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v31)
  {
    v30 = *v49;
    do
    {
      v7 = 0;
      do
      {
        if (*v49 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v7;
        v8 = *(*(&v48 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v36 = v10;
        v11 = [v10 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v45;
          do
          {
            v14 = 0;
            v35 = v12;
            do
            {
              if (*v45 != v13)
              {
                objc_enumerationMutation(v36);
              }

              v15 = *(*(&v44 + 1) + 8 * v14);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && v15)
              {
                v16 = *(a1 + 32);
                v37 = *(a1 + 40);
                v17 = v15;
                v18 = [v16 pluginClient];
                v19 = [v18 clientType];
                v20 = [v17 path];
                [v17 commandFields];
                v22 = v21 = a1;
                v23 = [MTRPluginInvokeCommandMetric invokeBatchCommandMetricForDevice:v34 homeID:v37 clientType:v19 commandPath:v20 commandFields:v22 remoteMessageID:0];

                a1 = v21;
                v12 = v35;
                [v33 addObject:v23];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v36 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v12);
        }

        v7 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v31);
  }

  v24 = *(a1 + 56);
  v25 = +[MTRPluginServer serverWorkQueue];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __74__MTRPluginLocalClient_deviceController_nodeID_invokeCommands_completion___block_invoke_41;
  v38[3] = &unk_279893CD0;
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  v39 = v33;
  v40 = v26;
  v41 = v27;
  v42 = *(a1 + 48);
  v43 = *(a1 + 64);
  v28 = v33;
  [v34 invokeCommands:v24 queue:v25 completion:v38];
}

void __74__MTRPluginLocalClient_deviceController_nodeID_invokeCommands_completion___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = +[MTRPluginMetricsCollector sharedInstance];
        [v13 collectMetric:v12 error:v6];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v9);
  }

  v14 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    *buf = 138413058;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_25830F000, v14, OS_LOG_TYPE_DEFAULT, "%@ invokeCommands: controllerUUID %@ nodeID %@ completed with error %@", buf, 0x2Au);
  }

  (*(*(a1 + 64) + 16))();
}

- (void)deviceController:(id)controller nodeID:(id)d openCommissioningWindowWithSetupPasscode:(id)passcode discriminator:(id)discriminator duration:(id)duration completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  if ((MTRPluginForceRemoteControl(self, a2) & 1) == 0)
  {
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ openCommissioningWindowWithSetupPasscode not implemented", &v10, 0xCu);
    }
  }
}

- (void)deviceController:(id)controller nodeID:(id)d downloadLogOfType:(int64_t)type timeout:(double)timeout completion:(id)completion
{
  controllerCopy = controller;
  dCopy = d;
  completionCopy = completion;
  if ((MTRPluginForceRemoteControl(completionCopy, v15) & 1) == 0)
  {
    v16 = +[MTRPluginLocalClient localDispatchQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __85__MTRPluginLocalClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke;
    v17[3] = &unk_279893D20;
    v17[4] = self;
    typeCopy = type;
    v18 = dCopy;
    v19 = controllerCopy;
    timeoutCopy = timeout;
    v20 = completionCopy;
    dispatch_async(v16, v17);
  }
}

void __85__MTRPluginLocalClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412802;
    v19 = v4;
    v20 = 1024;
    v21 = v3;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ downloadLogOfType: %d  nodeID: %@", buf, 0x1Cu);
  }

  v6 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 48) nodeID:*(a1 + 40) requestedViaDelegate:0];
  v7 = [*(a1 + 32) pluginClient];
  v8 = [v7 homeUUID];
  v9 = [*(a1 + 32) pluginClient];
  v10 = +[MTRPluginDownloadDiagnosticLogMetric downloadDiagnosticMetricForDevice:homeID:clientType:logType:remoteMessageID:](MTRPluginDownloadDiagnosticLogMetric, "downloadDiagnosticMetricForDevice:homeID:clientType:logType:remoteMessageID:", v6, v8, [v9 clientType], *(a1 + 64), 0);

  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = +[MTRPluginServer serverWorkQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__MTRPluginLocalClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_43;
  v15[3] = &unk_279893CF8;
  v16 = v10;
  v17 = *(a1 + 56);
  v14 = v10;
  [v6 downloadLogOfType:v11 timeout:v13 queue:v15 completion:v12];
}

void __85__MTRPluginLocalClient_deviceController_nodeID_downloadLogOfType_timeout_completion___block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = a2;
  v6 = +[MTRPluginMetricsCollector sharedInstance];
  [v6 collectMetric:*(a1 + 32) error:v5];

  (*(*(a1 + 40) + 16))();
}

- (void)deviceController:(id)controller deleteNodeID:(id)d
{
  controllerCopy = controller;
  dCopy = d;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MTRPluginLocalClient_deviceController_deleteNodeID___block_invoke;
  block[3] = &unk_279893D48;
  block[4] = self;
  v12 = controllerCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = controllerCopy;
  dispatch_async(v8, block);
}

void __54__MTRPluginLocalClient_deviceController_deleteNodeID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ deviceController: %@ deleteNodeID: %@", &v7, 0x20u);
  }

  v6 = [*(a1 + 32) deviceController];
  [v6 forgetDeviceWithNodeID:*(a1 + 48)];
}

- (void)deviceController:(id)controller getNodesWithStoredDataWithReply:(id)reply
{
  controllerCopy = controller;
  replyCopy = reply;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MTRPluginLocalClient_deviceController_getNodesWithStoredDataWithReply___block_invoke;
  block[3] = &unk_279893D70;
  block[4] = self;
  v12 = controllerCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = controllerCopy;
  dispatch_async(v8, block);
}

void __73__MTRPluginLocalClient_deviceController_getNodesWithStoredDataWithReply___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ deviceController: %@ getNodesWithStoredDataWithReply", &v8, 0x16u);
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) deviceController];
  v7 = [v6 nodesWithStoredData];
  (*(v5 + 16))(v5, v7);
}

- (void)deviceController:(id)controller updateControllerConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  if ((MTRPluginForceRemoteControl(configurationCopy, v8) & 1) == 0)
  {
    v9 = +[MTRPluginLocalClient localDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__MTRPluginLocalClient_deviceController_updateControllerConfiguration___block_invoke;
    block[3] = &unk_279893D48;
    block[4] = self;
    v11 = configurationCopy;
    v12 = controllerCopy;
    dispatch_async(v9, block);
  }
}

void __71__MTRPluginLocalClient_deviceController_updateControllerConfiguration___block_invoke(uint64_t a1)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v73 = v3;
    v74 = 2112;
    v75 = v4;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ Got updateControllerConfiguration %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) registeredNodeIDs];
  v60 = [v5 mutableCopy];

  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  v8 = [v7 deviceControllerForUUID:*(a1 + 48)];

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [v8 controllerNodeID];

  if (v10)
  {
    v11 = [v8 controllerNodeID];
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x277CD50F8]];
  }

  v12 = [v8 compressedFabricID];

  if (v12)
  {
    v13 = [v8 compressedFabricID];
    [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD50E0]];
  }

  v54 = v8;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isRunning")}];
  [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x277CD50F0]];

  v15 = 0x277CCA000uLL;
  v55 = v6;
  v53 = v9;
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD50E8]];
  v59 = [MEMORY[0x277CBEB18] array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v52 = *MEMORY[0x277CD5110];
  v16 = [*(a1 + 40) objectForKey:?];
  v17 = [v16 countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v66;
    v20 = *MEMORY[0x277CD5108];
    v56 = *MEMORY[0x277CD5100];
    v57 = v16;
    v58 = *v66;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v66 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v65 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v22)
        {
          v23 = [v22 objectForKey:v20];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v22 objectForKey:v20];

            if (!v24)
            {
              continue;
            }

            v25 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 48) nodeID:v24 requestedViaDelegate:1];
            v26 = matterPluginLog_default;
            if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(a1 + 32);
              v28 = *(a1 + 48);
              *buf = 138412802;
              v73 = v27;
              v74 = 2112;
              v75 = v28;
              v76 = 2112;
              v77 = v25;
              _os_log_impl(&dword_25830F000, v26, OS_LOG_TYPE_DEFAULT, "%@  => controller: %@ register device: %@", buf, 0x20u);
            }

            [*(a1 + 32) _registerDevice:v25 addedViaDelegate:1];
            [v60 removeObject:v24];
            v29 = [v25 _internalProperties];
            if (v29)
            {
              v70[0] = v20;
              v70[1] = v56;
              v71[0] = v24;
              v30 = [v25 _internalProperties];
              v71[1] = v30;
              [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
              v31 = v18;
              v32 = v20;
              v34 = v33 = v15;
              [v59 addObject:v34];

              v15 = v33;
              v20 = v32;
              v18 = v31;

              v16 = v57;
              v19 = v58;
            }
          }

          else
          {
            v24 = v23;
          }
        }

        else
        {
          v35 = matterPluginLog_default;
          if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v73 = v22;
            _os_log_error_impl(&dword_25830F000, v35, OS_LOG_TYPE_ERROR, "Invalid nodeIDInfo: %@", buf, 0xCu);
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v65 objects:v78 count:16];
    }

    while (v18);
  }

  if ([v59 count])
  {
    [v55 setObject:v59 forKeyedSubscript:v52];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v36 = v60;
  v37 = [v36 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v62;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v62 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(a1 + 32) _deviceForControllerUUID:*(a1 + 48) nodeID:*(*(&v61 + 1) + 8 * j) requestedViaDelegate:1];
        v42 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v43 = *(a1 + 32);
          v44 = *(a1 + 48);
          *buf = 138412802;
          v73 = v43;
          v74 = 2112;
          v75 = v44;
          v76 = 2112;
          v77 = v41;
          _os_log_impl(&dword_25830F000, v42, OS_LOG_TYPE_DEFAULT, "%@  => controller: %@ unregister device: %@", buf, 0x20u);
        }

        [*(a1 + 32) _unregisterDevice:v41];
      }

      v38 = [v36 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v38);
  }

  v45 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v46 = *(a1 + 32);
    v47 = *(a1 + 48);
    v48 = v45;
    v49 = [v46 registeredNodeIDs];
    *buf = 138412802;
    v73 = v46;
    v74 = 2112;
    v75 = v47;
    v76 = 2112;
    v77 = v49;
    _os_log_impl(&dword_25830F000, v48, OS_LOG_TYPE_DEFAULT, "%@  => controller: %@ self.registeredNodeIDs: %@", buf, 0x20u);
  }

  if ([v55 count])
  {
    v50 = [*(a1 + 32) pluginClient];
    v51 = [v50 clientProxy];
    [v51 controller:*(a1 + 48) controllerConfigurationUpdated:v55];
  }
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  pluginClient = [(MTRPluginLocalClient *)self pluginClient];
  v8 = [v4 stringWithFormat:@"<%@: %p client: %@>", v6, self, pluginClient];

  objc_autoreleasePoolPop(v3);

  return v8;
}

- (id)deviceController
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[MTRPluginDeviceControllerRegistry sharedInstance];
  pluginClient = [(MTRPluginLocalClient *)self pluginClient];
  homeUUID = [pluginClient homeUUID];
  v7 = [v4 deviceControllerForUUID:homeUUID];

  if (!v7)
  {
    v8 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      pluginClient2 = [(MTRPluginLocalClient *)self pluginClient];
      homeUUID2 = [pluginClient2 homeUUID];
      v13 = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = homeUUID2;
      _os_log_impl(&dword_25830F000, v9, OS_LOG_TYPE_DEFAULT, "%@ *** deviceController nil (not found) for controllerUUID: %@", &v13, 0x16u);
    }
  }

  return v7;
}

- (void)addDelegateForDevice:(id)device interestedPathsForAttributes:(id)attributes interestedPathsForEvents:(id)events
{
  deviceCopy = device;
  attributesCopy = attributes;
  eventsCopy = events;
  v11 = +[MTRPluginLocalClient localDispatchQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__MTRPluginLocalClient_addDelegateForDevice_interestedPathsForAttributes_interestedPathsForEvents___block_invoke;
  v15[3] = &unk_279893D98;
  v15[4] = self;
  v16 = deviceCopy;
  v17 = attributesCopy;
  v18 = eventsCopy;
  v12 = eventsCopy;
  v13 = attributesCopy;
  v14 = deviceCopy;
  dispatch_async(v11, v15);
}

void __99__MTRPluginLocalClient_addDelegateForDevice_interestedPathsForAttributes_interestedPathsForEvents___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v19 = 138413058;
    v20 = v3;
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_25830F000, v2, OS_LOG_TYPE_DEFAULT, "%@ addDelegateForDevice: %@ interestedPathsForAttributes: %@ interestedPathsForEvents: %@", &v19, 0x2Au);
  }

  v7 = [*(a1 + 32) subscribedMTRDevices];
  v8 = [v7 containsObject:*(a1 + 40)];

  if ((v8 & 1) == 0)
  {
    v9 = [*(a1 + 32) subscribedMTRDevices];
    [v9 addObject:*(a1 + 40)];

    v10 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = v10;
      v14 = +[MTRPluginLocalClient localDispatchQueue];
      v19 = 138412802;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ Setting delegate on device: %@ queue: %@", &v19, 0x20u);
    }

    v17 = a1 + 32;
    v15 = *(a1 + 32);
    v16 = *(v17 + 8);
    v18 = +[MTRPluginLocalClient localDispatchQueue];
    [v16 addDelegate:v15 queue:v18];
  }
}

- (void)removeDelegateForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__MTRPluginLocalClient_removeDelegateForDevice___block_invoke;
  v7[3] = &unk_279893AC8;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(v5, v7);
}

void __48__MTRPluginLocalClient_removeDelegateForDevice___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) subscribedMTRDevices];
  v3 = [v2 containsObject:*(a1 + 40)];

  v4 = matterPluginLog_default;
  v5 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ removing delegate on device: %@", &v11, 0x16u);
    }

    [*(a1 + 40) removeDelegate:*(a1 + 32)];
    v8 = [*(a1 + 32) subscribedMTRDevices];
    [v8 removeObject:*(a1 + 40)];
  }

  else if (v5)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ Cannot find device %@ to removeDelegate - ignoring", &v11, 0x16u);
  }
}

- (void)reportAllAttributesForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__MTRPluginLocalClient_reportAllAttributesForDevice___block_invoke;
  v7[3] = &unk_279893AC8;
  v8 = deviceCopy;
  selfCopy = self;
  v6 = deviceCopy;
  dispatch_async(v5, v7);
}

void __53__MTRPluginLocalClient_reportAllAttributesForDevice___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getAllAttributesReport];
  v3 = [v2 count];
  v4 = matterPluginLog_default;
  v5 = os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = v4;
      v12 = 138412546;
      v13 = v6;
      v14 = 2048;
      v15 = [v2 count];
      _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ Reporting all known attributes %lu", &v12, 0x16u);
    }

    v8 = [*(a1 + 40) pluginClient];
    v9 = [v8 clientProxy];
    v10 = [*(a1 + 32) nodeID];
    [v9 device:v10 receivedAttributeReport:v2];
  }

  else if (v5)
  {
    v11 = *(a1 + 40);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ No known attributes to report", &v12, 0xCu);
  }
}

- (void)reportAllInternalStateForDevice:(id)device
{
  deviceCopy = device;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__MTRPluginLocalClient_reportAllInternalStateForDevice___block_invoke;
  v7[3] = &unk_279893AC8;
  v8 = deviceCopy;
  selfCopy = self;
  v6 = deviceCopy;
  dispatch_async(v5, v7);
}

void __56__MTRPluginLocalClient_reportAllInternalStateForDevice___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 _internalProperties];
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ Reporting properties", &v10, 0xCu);
  }

  v8 = a1 + 32;
  v6 = *(a1 + 32);
  v7 = *(v8 + 8);
  v9 = [v6 _internalProperties];
  [v7 device:v6 internalStateUpdated:v9];
}

- (void)logState
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    subscribedMTRDevices = [(MTRPluginLocalClient *)self subscribedMTRDevices];
    *buf = 138412546;
    selfCopy2 = self;
    v20 = 2048;
    v21 = [subscribedMTRDevices count];
    _os_log_impl(&dword_25830F000, v4, OS_LOG_TYPE_DEFAULT, "%@ logState for %lu devices:", buf, 0x16u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  subscribedMTRDevices2 = [(MTRPluginLocalClient *)self subscribedMTRDevices];
  v7 = [subscribedMTRDevices2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(subscribedMTRDevices2);
        }

        v11 = matterPluginLog_default;
        if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(&v13 + 1) + 8 * i);
          *buf = 138412546;
          selfCopy2 = self;
          v20 = 2112;
          v21 = v12;
          _os_log_impl(&dword_25830F000, v11, OS_LOG_TYPE_DEFAULT, "%@     => %@", buf, 0x16u);
        }
      }

      v8 = [subscribedMTRDevices2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)device:(id)device stateChanged:(unint64_t)changed
{
  v31 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v7);

  if ((MTRPluginForceRemoteControl(v8, v9) & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      nodeID = [deviceCopy nodeID];
      v25 = 138412802;
      selfCopy = self;
      v27 = 2112;
      v28 = nodeID;
      v29 = 2048;
      changedCopy = changed;
      _os_log_impl(&dword_25830F000, v12, OS_LOG_TYPE_DEFAULT, "%@ device %@ stateChanged %lu", &v25, 0x20u);
    }

    v14 = +[MTRPluginClientManager sharedInstance];
    v15 = objc_opt_self();
    pluginClient = [v15 pluginClient];
    v17 = [v14 isPluginClientLowestHash:pluginClient];

    if (v17)
    {
      v18 = +[MTRPluginMetricsCollector sharedInstance];
      pluginClient2 = [(MTRPluginLocalClient *)self pluginClient];
      homeUUID = [pluginClient2 homeUUID];
      v21 = [MTRPluginStateChangedMetric stateChangedMetricForDevice:deviceCopy homeID:homeUUID state:changed remoteMessageID:0];
      [v18 collectMetric:v21];
    }

    pluginClient3 = [(MTRPluginLocalClient *)self pluginClient];
    clientProxy = [pluginClient3 clientProxy];
    nodeID2 = [deviceCopy nodeID];
    [clientProxy device:nodeID2 stateChanged:changed];

    objc_autoreleasePoolPop(v10);
  }
}

- (void)device:(id)device receivedAttributeReport:(id)report
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v8);

  if ((MTRPluginForceRemoteControl(v9, v10) & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      nodeID = [deviceCopy nodeID];
      v24 = 138412802;
      selfCopy = self;
      v26 = 2112;
      v27 = nodeID;
      v28 = 2048;
      v29 = [reportCopy count];
      _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ device %@ receivedAttributeReport %ld", &v24, 0x20u);
    }

    v15 = +[MTRPluginClientManager sharedInstance];
    pluginClient = [(MTRPluginLocalClient *)self pluginClient];
    v17 = [v15 isPluginClientLowestHash:pluginClient];

    if (v17)
    {
      pluginClient2 = [(MTRPluginLocalClient *)self pluginClient];
      homeUUID = [pluginClient2 homeUUID];
      v20 = [MTRPluginAttributeReportMetric attributeReportMetricForDevice:deviceCopy homeID:homeUUID attributeReport:reportCopy remoteMessageID:0];
      [v20 submitMetric];
    }

    pluginClient3 = [(MTRPluginLocalClient *)self pluginClient];
    clientProxy = [pluginClient3 clientProxy];
    nodeID2 = [deviceCopy nodeID];
    [clientProxy device:nodeID2 receivedAttributeReport:reportCopy];

    objc_autoreleasePoolPop(v11);
  }
}

- (void)device:(id)device receivedEventReport:(id)report
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v8);

  if ((MTRPluginForceRemoteControl(v9, v10) & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      nodeID = [deviceCopy nodeID];
      v24 = 138412802;
      selfCopy = self;
      v26 = 2112;
      v27 = nodeID;
      v28 = 2048;
      v29 = [reportCopy count];
      _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ device %@ receivedEventReport %ld", &v24, 0x20u);
    }

    v15 = +[MTRPluginClientManager sharedInstance];
    pluginClient = [(MTRPluginLocalClient *)self pluginClient];
    v17 = [v15 isPluginClientLowestHash:pluginClient];

    if (v17)
    {
      pluginClient2 = [(MTRPluginLocalClient *)self pluginClient];
      homeUUID = [pluginClient2 homeUUID];
      v20 = [MTRPluginEventReportMetric eventReportMetricForDevice:deviceCopy homeID:homeUUID eventReport:reportCopy remoteMessageID:0];
      [v20 submitMetric];
    }

    pluginClient3 = [(MTRPluginLocalClient *)self pluginClient];
    clientProxy = [pluginClient3 clientProxy];
    nodeID2 = [deviceCopy nodeID];
    [clientProxy device:nodeID2 receivedEventReport:reportCopy];

    objc_autoreleasePoolPop(v11);
  }
}

- (void)deviceBecameActive:(id)active
{
  v27 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v5);

  if ((MTRPluginForceRemoteControl(v6, v7) & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      nodeID = [activeCopy nodeID];
      v23 = 138412546;
      selfCopy = self;
      v25 = 2112;
      v26 = nodeID;
      _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ deviceBecameActive %@", &v23, 0x16u);
    }

    v12 = +[MTRPluginClientManager sharedInstance];
    v13 = objc_opt_self();
    pluginClient = [v13 pluginClient];
    v15 = [v12 isPluginClientLowestHash:pluginClient];

    if (v15)
    {
      v16 = +[MTRPluginMetricsCollector sharedInstance];
      pluginClient2 = [(MTRPluginLocalClient *)self pluginClient];
      homeUUID = [pluginClient2 homeUUID];
      v19 = [MTRPluginDeviceActiveMetric deviceActiveMetricForDevice:activeCopy homeID:homeUUID remoteMessageID:0];
      [v16 collectMetric:v19];
    }

    pluginClient3 = [(MTRPluginLocalClient *)self pluginClient];
    clientProxy = [pluginClient3 clientProxy];
    nodeID2 = [activeCopy nodeID];
    [clientProxy deviceBecameActive:nodeID2];

    objc_autoreleasePoolPop(v8);
  }
}

- (void)deviceCachePrimed:(id)primed
{
  v27 = *MEMORY[0x277D85DE8];
  primedCopy = primed;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v5);

  if ((MTRPluginForceRemoteControl(v6, v7) & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      nodeID = [primedCopy nodeID];
      v23 = 138412546;
      selfCopy = self;
      v25 = 2112;
      v26 = nodeID;
      _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ deviceCachePrimed %@", &v23, 0x16u);
    }

    v12 = +[MTRPluginClientManager sharedInstance];
    v13 = objc_opt_self();
    pluginClient = [v13 pluginClient];
    v15 = [v12 isPluginClientLowestHash:pluginClient];

    if (v15)
    {
      v16 = +[MTRPluginMetricsCollector sharedInstance];
      pluginClient2 = [(MTRPluginLocalClient *)self pluginClient];
      homeUUID = [pluginClient2 homeUUID];
      v19 = [MTRPluginDeviceCachePrimedMetric deviceCachePrimedMetricForDevice:primedCopy homeID:homeUUID remoteMessageID:0];
      [v16 collectMetric:v19];
    }

    pluginClient3 = [(MTRPluginLocalClient *)self pluginClient];
    clientProxy = [pluginClient3 clientProxy];
    nodeID2 = [primedCopy nodeID];
    [clientProxy deviceCachePrimed:nodeID2];

    objc_autoreleasePoolPop(v8);
  }
}

- (void)deviceConfigurationChanged:(id)changed
{
  v27 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v5);

  if ((MTRPluginForceRemoteControl(v6, v7) & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      nodeID = [changedCopy nodeID];
      v23 = 138412546;
      selfCopy = self;
      v25 = 2112;
      v26 = nodeID;
      _os_log_impl(&dword_25830F000, v10, OS_LOG_TYPE_DEFAULT, "%@ deviceConfigurationChanged %@", &v23, 0x16u);
    }

    v12 = +[MTRPluginClientManager sharedInstance];
    v13 = objc_opt_self();
    pluginClient = [v13 pluginClient];
    v15 = [v12 isPluginClientLowestHash:pluginClient];

    if (v15)
    {
      v16 = +[MTRPluginMetricsCollector sharedInstance];
      pluginClient2 = [(MTRPluginLocalClient *)self pluginClient];
      homeUUID = [pluginClient2 homeUUID];
      v19 = [MTRPluginDeviceConfigChangedMetric deviceConfigChangedMetricForDevice:changedCopy homeID:homeUUID remoteMessageID:0];
      [v16 collectMetric:v19];
    }

    pluginClient3 = [(MTRPluginLocalClient *)self pluginClient];
    clientProxy = [pluginClient3 clientProxy];
    nodeID2 = [changedCopy nodeID];
    [clientProxy deviceConfigurationChanged:nodeID2];

    objc_autoreleasePoolPop(v8);
  }
}

- (void)device:(id)device internalStateUpdated:(id)updated
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  updatedCopy = updated;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  dispatch_assert_queue_V2(v8);

  if ((MTRPluginForceRemoteControl(v9, v10) & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = matterPluginLog_default;
    if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      nodeID = [deviceCopy nodeID];
      v26 = 138412546;
      selfCopy = self;
      v28 = 2112;
      v29 = nodeID;
      _os_log_impl(&dword_25830F000, v13, OS_LOG_TYPE_DEFAULT, "%@ device %@ internalStateUpdated", &v26, 0x16u);
    }

    v15 = +[MTRPluginClientManager sharedInstance];
    v16 = objc_opt_self();
    pluginClient = [v16 pluginClient];
    v18 = [v15 isPluginClientLowestHash:pluginClient];

    if (v18)
    {
      v19 = +[MTRPluginMetricsCollector sharedInstance];
      pluginClient2 = [(MTRPluginLocalClient *)self pluginClient];
      homeUUID = [pluginClient2 homeUUID];
      v22 = [MTRPluginDeviceInternalStateUpdatedMetric deviceInternalStateUpdatedForDevice:deviceCopy homeID:homeUUID remoteMessageID:0];
      [v19 collectMetric:v22];
    }

    pluginClient3 = [(MTRPluginLocalClient *)self pluginClient];
    clientProxy = [pluginClient3 clientProxy];
    nodeID2 = [deviceCopy nodeID];
    [clientProxy device:nodeID2 internalStateUpdated:updatedCopy];

    objc_autoreleasePoolPop(v11);
  }
}

- (void)device:(id)device injectAttributeReport:(id)report
{
  deviceCopy = device;
  reportCopy = report;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__MTRPluginLocalClient_device_injectAttributeReport___block_invoke;
  block[3] = &unk_279893D48;
  v12 = deviceCopy;
  selfCopy = self;
  v14 = reportCopy;
  v9 = reportCopy;
  v10 = deviceCopy;
  dispatch_async(v8, block);
}

void __53__MTRPluginLocalClient_device_injectAttributeReport___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277CD5310];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) deviceController];
  v6 = [v3 deviceWithNodeID:v4 controller:v5];

  v7 = [v6 deviceController];
  LODWORD(v5) = [v7 isSuspended];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 _injectAttributeReport:*(a1 + 48) fromSubscription:1];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)device:(id)device injectEventReport:(id)report
{
  deviceCopy = device;
  reportCopy = report;
  v8 = +[MTRPluginLocalClient localDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MTRPluginLocalClient_device_injectEventReport___block_invoke;
  block[3] = &unk_279893D48;
  v12 = deviceCopy;
  selfCopy = self;
  v14 = reportCopy;
  v9 = reportCopy;
  v10 = deviceCopy;
  dispatch_async(v8, block);
}

void __49__MTRPluginLocalClient_device_injectEventReport___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277CD5310];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) deviceController];
  v6 = [v3 deviceWithNodeID:v4 controller:v5];

  v7 = [v6 deviceController];
  LODWORD(v5) = [v7 isSuspended];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 _injectEventReport:*(a1 + 48)];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)controller:(id)controller suspendedChangedTo:(BOOL)to
{
  toCopy = to;
  v15 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v7 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    if (toCopy)
    {
      v8 = @"YES";
    }

    v12 = controllerCopy;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_25830F000, v7, OS_LOG_TYPE_DEFAULT, "%@ controller %@ suspendedChangedTo: %@", &v9, 0x20u);
  }
}

- (MTRPluginClient)pluginClient
{
  WeakRetained = objc_loadWeakRetained(&self->_pluginClient);

  return WeakRetained;
}

- (void)_deviceForControllerUUID:(void *)a1 nodeID:(void *)a2 requestedViaDelegate:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a1 pluginClient];
  v7 = 138412802;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  v11 = 2112;
  v12 = a3;
  _os_log_error_impl(&dword_25830F000, v5, OS_LOG_TYPE_ERROR, "%@ Cannot find device controller for client %@ nodeID %@ - controller was not added to registry", &v7, 0x20u);
}

@end