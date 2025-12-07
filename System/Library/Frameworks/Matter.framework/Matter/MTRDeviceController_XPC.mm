@interface MTRDeviceController_XPC
+ (id)_allowedClasses;
- (BOOL)_setupXPCConnection;
- (MTRDeviceController_XPC)initWithParameters:(id)parameters error:(id *)error;
- (id)_interfaceForClientProtocol;
- (id)_interfaceForServerProtocol;
- (id)_setupDeviceForNodeID:(id)d prefetchedClusterData:(id)data;
- (id)compressedFabricID;
- (id)controllerNodeID;
- (id)controllerXPCID;
- (id)nodesWithStoredData;
- (void)_startXPCConnectionRetry;
- (void)_updateRegistrationInfo;
- (void)_xpcConnectionRetry;
- (void)controller:(id)controller controllerConfigurationUpdated:(id)updated;
- (void)deleteNodeID:(id)d;
- (void)device:(id)device internalStateUpdated:(id)updated;
- (void)device:(id)device receivedAttributeReport:(id)report;
- (void)device:(id)device receivedEventReport:(id)report;
- (void)device:(id)device stateChanged:(unint64_t)changed;
- (void)deviceBecameActive:(id)active;
- (void)deviceCachePrimed:(id)primed;
- (void)deviceConfigurationChanged:(id)changed;
- (void)forgetDeviceWithNodeID:(id)d;
- (void)removeDevice:(id)device;
- (void)updateControllerConfiguration:(id)configuration;
@end

@implementation MTRDeviceController_XPC

- (void)updateControllerConfiguration:(id)configuration
{
  v9[11] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  xpcConnection = [(MTRDeviceController_XPC *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_239217FE4;
  v9[3] = &unk_278A73D30;
  v9[4] = self;
  v9[5] = a2;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  uniqueIdentifier = [(MTRDeviceController *)self uniqueIdentifier];
  [v7 deviceController:uniqueIdentifier updateControllerConfiguration:configurationCopy];
}

- (void)deleteNodeID:(id)d
{
  v9[11] = *MEMORY[0x277D85DE8];
  dCopy = d;
  xpcConnection = [(MTRDeviceController_XPC *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23921837C;
  v9[3] = &unk_278A73D30;
  v9[4] = self;
  v9[5] = a2;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  uniqueIdentifier = [(MTRDeviceController *)self uniqueIdentifier];
  [v7 deviceController:uniqueIdentifier deleteNodeID:dCopy];
}

- (id)nodesWithStoredData
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_2392187F0;
  v15 = sub_239218800;
  v16 = MEMORY[0x277CBEBF8];
  xpcConnection = [(MTRDeviceController_XPC *)self xpcConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_239218808;
  v10[3] = &unk_278A73D30;
  v10[4] = self;
  v10[5] = a2;
  v5 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  uniqueIdentifier = [(MTRDeviceController *)self uniqueIdentifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_239218950;
  v9[3] = &unk_278A73D58;
  v9[4] = &v11;
  [v5 deviceController:uniqueIdentifier getNodesWithStoredDataWithReply:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (void)_updateRegistrationInfo
{
  v31 = *MEMORY[0x277D85DE8];
  lock = [(MTRDeviceController *)self deviceMapLock];
  os_unfair_lock_lock(lock);
  theDict = [MEMORY[0x277CBEB38] dictionary];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  nodeIDToDeviceMap = [(MTRDeviceController *)self nodeIDToDeviceMap];
  keyEnumerator = [nodeIDToDeviceMap keyEnumerator];

  v6 = [keyEnumerator countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        nodeIDToDeviceMap2 = [(MTRDeviceController *)self nodeIDToDeviceMap];
        v11 = [nodeIDToDeviceMap2 objectForKey:v9];

        if ([v11 delegateExists])
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          v13 = v9;
          if (v13)
          {
            CFDictionarySetValue(dictionary2, @"MTRDeviceControllerRegistrationNodeID", v13);
          }

          else
          {
            v14 = sub_2393D9044(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v27 = @"MTRDeviceControllerRegistrationNodeID";
              v28 = 2080;
              v29 = "nodeDictionary";
              _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Warning, missing %@ to add to %s", buf, 0x16u);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(0, 1, "Warning, missing %@ to add to %s", @"MTRDeviceControllerRegistrationNodeID", "nodeDictionary");
            }
          }

          [array addObject:dictionary2];
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v6);
  }

  v15 = array;
  if (v15)
  {
    CFDictionarySetValue(theDict, @"MTRDeviceControllerRegistrationNodeIDs", v15);
  }

  else
  {
    v16 = sub_2393D9044(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = @"MTRDeviceControllerRegistrationNodeIDs";
      v28 = 2080;
      v29 = "registrationInfo";
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Warning, missing %@ to add to %s", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Warning, missing %@ to add to %s", @"MTRDeviceControllerRegistrationNodeIDs", "registrationInfo");
    }
  }

  v17 = dictionary;
  if (v17)
  {
    CFDictionarySetValue(theDict, @"MTRDeviceControllerRegistrationControllerContext", v17);
  }

  else
  {
    v18 = sub_2393D9044(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = @"MTRDeviceControllerRegistrationControllerContext";
      v28 = 2080;
      v29 = "registrationInfo";
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Warning, missing %@ to add to %s", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Warning, missing %@ to add to %s", @"MTRDeviceControllerRegistrationControllerContext", "registrationInfo");
    }
  }

  [(MTRDeviceController_XPC *)self updateControllerConfiguration:theDict];
  os_unfair_lock_unlock(lock);
}

- (void)removeDevice:(id)device
{
  deviceCopy = device;
  v5.receiver = self;
  v5.super_class = MTRDeviceController_XPC;
  [(MTRDeviceController *)&v5 removeDevice:deviceCopy];
  [(MTRDeviceController_XPC *)self _updateRegistrationInfo];
}

- (void)forgetDeviceWithNodeID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = dCopy;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@: Forgetting device with node ID: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@: Forgetting device with node ID: %@", self, dCopy);
  }

  [(MTRDeviceController_XPC *)self deleteNodeID:dCopy];
  v6.receiver = self;
  v6.super_class = MTRDeviceController_XPC;
  [(MTRDeviceController *)&v6 forgetDeviceWithNodeID:dCopy];
}

- (id)controllerNodeID
{
  os_unfair_lock_lock(&self->_configurationLock);
  v3 = self->_controllerNodeID;
  os_unfair_lock_unlock(&self->_configurationLock);

  return v3;
}

- (id)compressedFabricID
{
  os_unfair_lock_lock(&self->_configurationLock);
  v3 = self->_compressedFabricID;
  os_unfair_lock_unlock(&self->_configurationLock);

  return v3;
}

+ (id)_allowedClasses
{
  v11 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27DF775D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF775D0))
  {
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    qword_27DF775C8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:7];
    __cxa_guard_release(&qword_27DF775D0);
  }

  v2 = [MEMORY[0x277CBEB58] setWithArray:{qword_27DF775C8, v4, v5, v6, v7, v8, v9}];

  return v2;
}

- (id)_interfaceForServerProtocol
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D13D28];
  v3 = +[MTRDeviceController_XPC _allowedClasses];
  v14[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [v3 addObjectsFromArray:v4];

  [v2 setClasses:v3 forSelector:sel_deviceController_nodeID_invokeCommandWithEndpointID_clusterID_commandID_commandFields_expectedValues_expectedValueInterval_timedInvokeTimeout_serverSideProcessingTimeout_completion_ argumentIndex:0 ofReply:1];
  [v2 setClasses:v3 forSelector:sel_deviceController_nodeID_invokeCommands_completion_ argumentIndex:0 ofReply:1];
  v13 = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v3 addObjectsFromArray:v5];

  [v2 setClasses:v3 forSelector:sel_deviceController_nodeID_invokeCommands_completion_ argumentIndex:2 ofReply:0];
  v6 = +[MTRDeviceController_XPC _allowedClasses];

  v12 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [v6 addObjectsFromArray:v7];

  [v2 setClasses:v6 forSelector:sel_deviceController_nodeID_readAttributePaths_withReply_ argumentIndex:2 ofReply:0];
  v8 = +[MTRDeviceController_XPC _allowedClasses];

  v11 = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [v8 addObjectsFromArray:v9];

  [v2 setClasses:v8 forSelector:sel_deviceController_nodeID_readAttributePaths_withReply_ argumentIndex:0 ofReply:1];

  return v2;
}

- (id)_interfaceForClientProtocol
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284CCDFE8];
  v3 = +[MTRDeviceController_XPC _allowedClasses];
  v10[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v3 addObjectsFromArray:v4];

  [v2 setClasses:v3 forSelector:sel_device_receivedAttributeReport_ argumentIndex:1 ofReply:0];
  v5 = +[MTRDeviceController_XPC _allowedClasses];

  v9 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [v5 addObjectsFromArray:v6];

  [v2 setClasses:v5 forSelector:sel_device_receivedEventReport_ argumentIndex:1 ofReply:0];
  v7 = +[MTRDeviceController_XPC _allowedClasses];

  [v2 setClasses:v7 forSelector:sel_controller_controllerConfigurationUpdated_ argumentIndex:1 ofReply:0];

  return v2;
}

- (id)controllerXPCID
{
  uniqueIdentifier = [(MTRDeviceController *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)_startXPCConnectionRetry
{
  v13 = *MEMORY[0x277D85DE8];
  xpcConnectedOrConnecting = [(MTRDeviceController_XPC *)self xpcConnectedOrConnecting];
  v4 = sub_2393D9044(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (xpcConnectedOrConnecting)
  {
    if (v5)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@: XPC Connection retry - Not starting retry for XPC Connection, already trying", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@: XPC Connection retry - Not starting retry for XPC Connection, already trying", self);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@: XPC Connection retry - Starting retry for XPC Connection", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@: XPC Connection retry - Starting retry for XPC Connection", self);
    }

    [(MTRDeviceController_XPC *)self setXpcRetryTimeInterval:0.5];
    objc_initWeak(buf, self);
    [(MTRDeviceController_XPC *)self xpcRetryTimeInterval];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    workQueue = [(MTRDeviceController_XPC *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239219918;
    block[3] = &unk_278A72CD0;
    objc_copyWeak(&v10, buf);
    dispatch_after(v7, workQueue, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

- (void)_xpcConnectionRetry
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy4 = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@: XPC Connection retry - timer hit", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@: XPC Connection retry - timer hit", self);
  }

  if ([(MTRDeviceController_XPC *)self xpcConnectedOrConnecting])
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy4 = self;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@: XPC Connection retry - Mid retry, or connected, stopping retry timer", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@: XPC Connection retry - Mid retry, or connected, stopping retry timer", self);
    }
  }

  else
  {
    _setupXPCConnection = [(MTRDeviceController_XPC *)self _setupXPCConnection];
    v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (_setupXPCConnection)
    {
      if (v5)
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@: XPC Connection retry - connection attempt successful", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@: XPC Connection retry - connection attempt successful", self);
      }
    }

    else
    {
      if (v5)
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@: XPC Connection failed retry - bailing", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@: XPC Connection failed retry - bailing", self);
      }
    }
  }
}

- (BOOL)_setupXPCConnection
{
  v29 = *MEMORY[0x277D85DE8];
  xpcParameters = [(MTRDeviceController_XPC *)self xpcParameters];
  xpcConnectionBlock = [xpcParameters xpcConnectionBlock];
  v5 = xpcConnectionBlock[2]();
  [(MTRDeviceController_XPC *)self setXpcConnection:v5];

  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpcConnection = [(MTRDeviceController_XPC *)self xpcConnection];
    *buf = 138412546;
    selfCopy3 = self;
    v27 = 2112;
    v28 = xpcConnection;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ Set up XPC Connection: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    xpcConnection2 = [(MTRDeviceController_XPC *)self xpcConnection];
    sub_2393D5320(0, 2, "%@ Set up XPC Connection: %@", self, xpcConnection2);
  }

  xpcConnection3 = [(MTRDeviceController_XPC *)self xpcConnection];
  v10 = xpcConnection3 == 0;

  if (v10)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ Failed to set up XPC Connection", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Failed to set up XPC Connection", self);
    }

    [(MTRDeviceController_XPC *)self setXpcConnectedOrConnecting:0];
  }

  else
  {
    objc_initWeak(&location, self);
    _interfaceForServerProtocol = [(MTRDeviceController_XPC *)self _interfaceForServerProtocol];
    xpcConnection4 = [(MTRDeviceController_XPC *)self xpcConnection];
    [xpcConnection4 setRemoteObjectInterface:_interfaceForServerProtocol];

    _interfaceForClientProtocol = [(MTRDeviceController_XPC *)self _interfaceForClientProtocol];
    xpcConnection5 = [(MTRDeviceController_XPC *)self xpcConnection];
    [xpcConnection5 setExportedInterface:_interfaceForClientProtocol];

    xpcConnection6 = [(MTRDeviceController_XPC *)self xpcConnection];
    [xpcConnection6 setExportedObject:self];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_23921A034;
    v22[3] = &unk_278A72CD0;
    objc_copyWeak(&v23, &location);
    xpcConnection7 = [(MTRDeviceController_XPC *)self xpcConnection];
    [xpcConnection7 setInterruptionHandler:v22];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_23921A1B4;
    v20[3] = &unk_278A72CD0;
    objc_copyWeak(&v21, &location);
    xpcConnection8 = [(MTRDeviceController_XPC *)self xpcConnection];
    [xpcConnection8 setInvalidationHandler:v20];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ Activating new XPC connection", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ Activating new XPC connection", self);
    }

    xpcConnection9 = [(MTRDeviceController_XPC *)self xpcConnection];
    [xpcConnection9 activate];

    [(MTRDeviceController_XPC *)self _updateRegistrationInfo];
    [(MTRDeviceController_XPC *)self setXpcConnectedOrConnecting:1];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return [(MTRDeviceController_XPC *)self xpcConnectedOrConnecting];
}

- (MTRDeviceController_XPC)initWithParameters:(id)parameters error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = parametersCopy;
    uniqueIdentifier = [v7 uniqueIdentifier];
    v20.receiver = self;
    v20.super_class = MTRDeviceController_XPC;
    v9 = -[MTRDeviceController initForSubclasses:uniqueIdentifier:](&v20, sel_initForSubclasses_uniqueIdentifier_, [v7 startSuspended], uniqueIdentifier);
    if (!v9)
    {
LABEL_10:
      v17 = v9;
LABEL_28:

      self = v9;
      goto LABEL_29;
    }

    xpcConnectionBlock = [v7 xpcConnectionBlock];
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x23EE78590](xpcConnectionBlock);
      *buf = 138412546;
      v22 = uniqueIdentifier;
      v23 = 2048;
      v24 = v12;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Setting up XPC Controller for UUID: %@ with connection block: %p", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v13 = MEMORY[0x23EE78590](xpcConnectionBlock);
      sub_2393D5320(0, 2, "Setting up XPC Controller for UUID: %@ with connection block: %p", uniqueIdentifier, v13);
    }

    if (uniqueIdentifier)
    {
      if (xpcConnectionBlock)
      {
        [(MTRDeviceController_XPC *)v9 setXpcParameters:v7];
        v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v15 = dispatch_queue_create("MTRDeviceController_XPC_queue", v14);
        workQueue = v9->_workQueue;
        v9->_workQueue = v15;

        v9->_configurationLock._os_unfair_lock_opaque = 0;
        LOBYTE(v14) = [(MTRDeviceController_XPC *)v9 _setupXPCConnection];

        if (v14)
        {
          goto LABEL_10;
        }

LABEL_27:
        v17 = 0;
        goto LABEL_28;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRDeviceController_XPC initWithParameters failed, nil connectionBlock", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceController_XPC initWithParameters failed, nil connectionBlock");
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "MTRDeviceController_XPC initWithParameters failed, nil UUID", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRDeviceController_XPC initWithParameters failed, nil UUID");
      }
    }

    goto LABEL_27;
  }

  v18 = sub_2393D9044(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = parametersCopy;
    _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Expected MTRXPCDeviceControllerParameters but got: %@", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1, "Expected MTRXPCDeviceControllerParameters but got: %@", parametersCopy);
  }

  if (error)
  {
    sub_23921C1E4(MTRError, 0x1530000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_XPC.mm");
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_29:

  return v17;
}

- (id)_setupDeviceForNodeID:(id)d prefetchedClusterData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[MTRDeviceController_XPC _setupDeviceForNodeID:prefetchedClusterData:]";
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%s", "[MTRDeviceController_XPC _setupDeviceForNodeID:prefetchedClusterData:]");
  }

  os_unfair_lock_assert_owner([(MTRDeviceController *)self deviceMapLock]);
  v9 = [[MTRDevice_XPC alloc] initWithNodeID:dCopy controller:self];
  nodeIDToDeviceMap = [(MTRDeviceController *)self nodeIDToDeviceMap];
  [nodeIDToDeviceMap setObject:v9 forKey:dCopy];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[MTRDeviceController_XPC _setupDeviceForNodeID:prefetchedClusterData:]";
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%s: returning XPC device for node id %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%s: returning XPC device for node id %@", "[MTRDeviceController_XPC _setupDeviceForNodeID:prefetchedClusterData:]", dCopy);
  }

  return v9;
}

- (void)device:(id)device stateChanged:(unint64_t)changed
{
  v15 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = [(MTRDeviceController *)self deviceForNodeID:deviceCopy];
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v10 = deviceCopy;
    v11 = 2048;
    changedCopy = changed;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Received device: %@ stateChanged: %lu   found device: %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "Received device: %@ stateChanged: %lu   found device: %@", deviceCopy, changed, v7);
  }

  [v7 device:deviceCopy stateChanged:changed];
}

- (void)device:(id)device receivedAttributeReport:(id)report
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v8 = [(MTRDeviceController *)self deviceForNodeID:deviceCopy];
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v11 = deviceCopy;
    v12 = 2112;
    v13 = reportCopy;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Received device: %@ receivedAttributeReport: %@     found device: %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "Received device: %@ receivedAttributeReport: %@     found device: %@", deviceCopy, reportCopy, v8);
  }

  [v8 device:deviceCopy receivedAttributeReport:reportCopy];
}

- (void)device:(id)device receivedEventReport:(id)report
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v8 = [(MTRDeviceController *)self deviceForNodeID:deviceCopy];
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v11 = deviceCopy;
    v12 = 2112;
    v13 = reportCopy;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Received device: %@ receivedEventReport: %@     found device: %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "Received device: %@ receivedEventReport: %@     found device: %@", deviceCopy, reportCopy, v8);
  }

  [v8 device:deviceCopy receivedEventReport:reportCopy];
}

- (void)deviceBecameActive:(id)active
{
  v11 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v5 = [(MTRDeviceController *)self deviceForNodeID:activeCopy];
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = activeCopy;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Received deviceBecameActive: %@ found device: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "Received deviceBecameActive: %@ found device: %@", activeCopy, v5);
  }

  [v5 deviceBecameActive:activeCopy];
}

- (void)deviceCachePrimed:(id)primed
{
  v11 = *MEMORY[0x277D85DE8];
  primedCopy = primed;
  v5 = [(MTRDeviceController *)self deviceForNodeID:primedCopy];
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = primedCopy;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Received deviceCachePrimed: %@ found device: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "Received deviceCachePrimed: %@ found device: %@", primedCopy, v5);
  }

  [v5 deviceCachePrimed:primedCopy];
}

- (void)deviceConfigurationChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = [(MTRDeviceController *)self deviceForNodeID:changedCopy];
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = changedCopy;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Received deviceConfigurationChanged: %@ found device: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "Received deviceConfigurationChanged: %@ found device: %@", changedCopy, v5);
  }

  [v5 deviceConfigurationChanged:changedCopy];
}

- (void)device:(id)device internalStateUpdated:(id)updated
{
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  updatedCopy = updated;
  v8 = [(MTRDeviceController *)self deviceForNodeID:deviceCopy];
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = deviceCopy;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Received internalStateUpdated: %@ found device: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "Received internalStateUpdated: %@ found device: %@", deviceCopy, v8);
  }

  [v8 device:deviceCopy internalStateUpdated:updatedCopy];
}

- (void)controller:(id)controller controllerConfigurationUpdated:(id)updated
{
  v43 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceControllerRegistrationControllerContext"];
  objc_opt_class();
  selfCopy = self;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceControllerRegistrationControllerContext"];

  if (!v6)
  {
LABEL_7:
    v28 = 0;
    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->_configurationLock);
  v28 = v6;
  controllerNodeID = [v6 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationControllerNodeID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v28 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationControllerNodeID"];

    if (!v8)
    {
      goto LABEL_10;
    }

    v8 = v8;
    controllerNodeID = self->_controllerNodeID;
    self->_controllerNodeID = v8;
  }

  else
  {
    v8 = 0;
  }

LABEL_10:
  v9 = [v28 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationControllerCompressedFabricID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  v10 = [v28 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationControllerCompressedFabricID"];

  if (v10)
  {
    compressedFabricID = selfCopy->_compressedFabricID;
    selfCopy->_compressedFabricID = v10;
    v9 = v10;

    goto LABEL_13;
  }

LABEL_14:

  os_unfair_lock_unlock(&selfCopy->_configurationLock);
LABEL_15:
  v12 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceControllerRegistrationNodeIDs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [updatedCopy objectForKeyedSubscript:@"MTRDeviceControllerRegistrationNodeIDs"];
  }

  else
  {
    v29 = 0;
  }

  v13 = sub_2393D9044(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    controllerNodeID = [(MTRDeviceController_XPC *)selfCopy controllerNodeID];
    compressedFabricID = [(MTRDeviceController_XPC *)selfCopy compressedFabricID];
    *buf = 138412802;
    v38 = controllerNodeID;
    v39 = 2048;
    unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
    v41 = 2112;
    v42 = v29;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Received controllerConfigurationUpdated: controllerNodeID %@ compressedFabricID %016lluX deviceInfoList %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    controllerNodeID2 = [(MTRDeviceController_XPC *)selfCopy controllerNodeID];
    compressedFabricID2 = [(MTRDeviceController_XPC *)selfCopy compressedFabricID];
    sub_2393D5320(0, 2, "Received controllerConfigurationUpdated: controllerNodeID %@ compressedFabricID %016lluX deviceInfoList %@", controllerNodeID2, [compressedFabricID2 unsignedLongLongValue], v29);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = v29;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v19)
  {
    v20 = *v33;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v32 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & (v22 != 0)) != 0)
        {
          v23 = [v22 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationNodeID"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v22 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationNodeID"];

            if (v24)
            {
              v25 = [v22 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationDeviceInternalState"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = [v22 objectForKeyedSubscript:@"MTRDeviceControllerRegistrationDeviceInternalState"];

                if (v26)
                {
                  v27 = [(MTRDeviceController *)selfCopy _deviceForNodeID:v24 createIfNeeded:0];
                  [v27 device:v24 internalStateUpdated:v26];

LABEL_47:
                  continue;
                }
              }

              else
              {
              }

              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, " - Missing or malformed deviceInternalState", buf, 2u);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(0, 1, " - Missing or malformed deviceInternalState");
              }

              goto LABEL_47;
            }
          }

          else
          {
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, " - Missing or malformed nodeID", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1, " - Missing or malformed nodeID");
          }
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, " - Missing or malformed device Info", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1, " - Missing or malformed device Info");
          }
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v19);
  }
}

@end