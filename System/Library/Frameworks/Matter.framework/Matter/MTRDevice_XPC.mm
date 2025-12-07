@interface MTRDevice_XPC
- (BOOL)_ensureValidValuesForKeys:(id)keys inInternalState:(id)state valueRequired:(BOOL)required;
- (BOOL)deviceCachePrimed;
- (BOOL)diagnosticLogTransferInProgress;
- (MTRDevice_XPC)initWithNodeID:(id)d controller:(id)controller;
- (NSString)description;
- (id)estimatedStartTime;
- (id)estimatedSubscriptionLatency;
- (id)productID;
- (id)readAttributePaths:(id)paths;
- (id)readAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params;
- (id)vendorID;
- (unint64_t)state;
- (unsigned)networkCommissioningFeatures;
- (void)_delegateAdded:(id)added;
- (void)_delegateRemoved:(id)removed;
- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)self0 queue:(id)self1 completion:(id)self2;
- (void)_updateInternalState:(id)state;
- (void)dealloc;
- (void)device:(id)device internalStateUpdated:(id)updated;
- (void)device:(id)device receivedAttributeReport:(id)report;
- (void)device:(id)device receivedEventReport:(id)report;
- (void)deviceBecameActive:(id)active;
- (void)deviceConfigurationChanged:(id)changed;
- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)invokeCommands:(id)commands queue:(id)queue completion:(id)completion;
- (void)writeAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)timeout;
@end

@implementation MTRDevice_XPC

- (MTRDevice_XPC)initWithNodeID:(id)d controller:(id)controller
{
  v9.receiver = self;
  v9.super_class = MTRDevice_XPC;
  v4 = [(MTRDevice *)&v9 initForSubclassesWithNodeID:d controller:controller];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("org.csa-iot.matter.framework.devicexpc.workqueue", v5);
    queue = v4->_queue;
    v4->_queue = v6;
  }

  return v4;
}

- (void)dealloc
{
  [(MTRDevice_XPC *)self _setInternalState:0];
  v3.receiver = self;
  v3.super_class = MTRDevice_XPC;
  [(MTRDevice *)&v3 dealloc];
}

- (NSString)description
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v4 = [_internalState objectForKey:@"MTRDeviceInternalPropertyNetworkFeatures"];

  v22 = v4;
  if (v4)
  {
    if ([v4 unsignedLongLongValue])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = v5;
    if (([v4 unsignedLongLongValue] & 2) != 0)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = v7;
  }

  else
  {
    v8 = @"NO";
    v6 = @"NO";
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v26 = NSStringFromClass(v10);
  v27 = v8;
  compressedFabricID = [(MTRDeviceController *)self->super._deviceController compressedFabricID];
  unsignedLongLongValue = [compressedFabricID unsignedLongLongValue];
  unsignedLongLongValue2 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  unsignedLongLongValue3 = [(NSNumber *)self->super._nodeID unsignedLongLongValue];
  vendorID = [(MTRDevice_XPC *)self vendorID];
  productID = [(MTRDevice_XPC *)self productID];
  uniqueIdentifier = [(MTRDeviceController *)self->super._deviceController uniqueIdentifier];
  _internalState2 = [(MTRDevice_XPC *)self _internalState];
  v15 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    _internalState3 = [(MTRDevice_XPC *)self _internalState];
    v17 = [_internalState3 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v9 stringWithFormat:@"<%@: %p, node: %016llX-%016llX (%llu), VID: %@, PID: %@, WiFi: %@, Thread: %@, controller: %@ state: %lu>", v26, self, unsignedLongLongValue, unsignedLongLongValue2, unsignedLongLongValue3, vendorID, productID, v6, v27, uniqueIdentifier, objc_msgSend(v17, "unsignedLongValue")];
  if (isKindOfClass)
  {
  }

  return v18;
}

- (id)vendorID
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v3 = [_internalState objectForKey:@"MTRDeviceInternalStateKeyVendorID"];
  v4 = [v3 copy];

  return v4;
}

- (id)productID
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v3 = [_internalState objectForKey:@"MTRDeviceInternalStateKeyProductID"];
  v4 = [v3 copy];

  return v4;
}

- (unsigned)networkCommissioningFeatures
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v3 = [_internalState objectForKey:@"MTRDeviceInternalPropertyNetworkFeatures"];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)_delegateAdded:(id)added
{
  v13 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  os_unfair_lock_assert_owner(&self->super._lock);
  v8.receiver = self;
  v8.super_class = MTRDevice_XPC;
  [(MTRDevice *)&v8 _delegateAdded:addedCopy];
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = addedCopy;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ delegate added: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ delegate added: %@", self, addedCopy);
  }

  queue = [(MTRDevice_XPC *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392992DC;
  block[3] = &unk_278A72320;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_delegateRemoved:(id)removed
{
  v13 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  os_unfair_lock_assert_owner(&self->super._lock);
  v8.receiver = self;
  v8.super_class = MTRDevice_XPC;
  [(MTRDevice *)&v8 _delegateRemoved:removedCopy];
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = removedCopy;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ delegate removed: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ delegate removed: %@", self, removedCopy);
  }

  queue = [(MTRDevice_XPC *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2392994D0;
  block[3] = &unk_278A72320;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)device:(id)device receivedAttributeReport:(id)report
{
  v29 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy6 = self;
    v27 = 2080;
    v28 = "[MTRDevice_XPC device:receivedAttributeReport:]";
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ %s", self, "[MTRDevice_XPC device:receivedAttributeReport:]");
  }

  objc_opt_class();
  if (((deviceCopy != 0) & objc_opt_isKindOfClass()) != 0)
  {
    if (sub_23938A994(reportCopy))
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_239299B84;
      v22[3] = &unk_278A744A0;
      v22[4] = self;
      v7 = reportCopy;
      v23 = v7;
      [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v22];
      os_unfair_lock_lock(&self->super._lock);
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      obj = v7;
      v8 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (!v8)
      {
        goto LABEL_34;
      }

      v9 = *v19;
      while (1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & (v11 != 0)) != 0)
          {
            v12 = [v11 objectForKeyedSubscript:@"attributePath"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v11 objectForKeyedSubscript:@"attributePath"];

              if (v13)
              {
                v14 = [v11 objectForKeyedSubscript:@"data"];
                if (v14)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(MTRDevice *)self _attributeValue:v14 reportedForPath:v13];
                  }

                  else
                  {
                    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      selfCopy6 = self;
                      v27 = 2112;
                      v28 = v11;
                      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ invalid data-value reported: %@", buf, 0x16u);
                    }

                    if (sub_2393D5398(1u))
                    {
                      sub_2393D5320(0, 1, "%@ invalid data-value reported: %@", self, v11);
                    }
                  }
                }

                continue;
              }
            }

            else
            {
            }

            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              selfCopy6 = self;
              v27 = 2112;
              v28 = v11;
              _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ no valid path for attribute report %@", buf, 0x16u);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(0, 1, "%@ no valid path for attribute report %@", self, v11);
            }
          }

          else
          {
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              selfCopy6 = self;
              v27 = 2112;
              v28 = v11;
              _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ handed a response-value that is not a dictionary: %@", buf, 0x16u);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(0, 1, "%@ handed a response-value that is not a dictionary: %@", self, v11);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (!v8)
        {
LABEL_34:

          os_unfair_lock_unlock(&self->super._lock);
          goto LABEL_43;
        }
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy6 = self;
      v27 = 2112;
      v28 = reportCopy;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ invalid device:receivedAttributeReport: attributeReport: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ invalid device:receivedAttributeReport: attributeReport: %@", self, reportCopy);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy6 = self;
      v27 = 2112;
      v28 = deviceCopy;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ invalid device:receivedAttributeReport: nodeID: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ invalid device:receivedAttributeReport: nodeID: %@", self, deviceCopy);
    }
  }

LABEL_43:
}

- (void)device:(id)device receivedEventReport:(id)report
{
  v15 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  reportCopy = report;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy3 = self;
    v13 = 2080;
    v14 = "[MTRDevice_XPC device:receivedEventReport:]";
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ %s", self, "[MTRDevice_XPC device:receivedEventReport:]");
  }

  objc_opt_class();
  if (((deviceCopy != 0) & objc_opt_isKindOfClass()) != 0)
  {
    if (sub_23938B148(reportCopy))
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = sub_239299E40;
      v9[3] = &unk_278A744A0;
      v9[4] = self;
      v10 = reportCopy;
      [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v9];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v13 = 2112;
        v14 = reportCopy;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ invalid device:receivedEventReport: eventReport: %@", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%@ invalid device:receivedEventReport: eventReport: %@", self, reportCopy);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v13 = 2112;
      v14 = deviceCopy;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ invalid device:receivedEventReport: nodeID: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ invalid device:receivedEventReport: nodeID: %@", self, deviceCopy);
    }
  }
}

- (void)deviceBecameActive:(id)active
{
  v11 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v9 = 2080;
    v10 = "[MTRDevice_XPC deviceBecameActive:]";
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ %s", self, "[MTRDevice_XPC deviceBecameActive:]");
  }

  objc_opt_class();
  if (((activeCopy != 0) & objc_opt_isKindOfClass()) != 0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_23929A050;
    v6[3] = &unk_278A744C8;
    v6[4] = self;
    [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v6];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v9 = 2112;
      v10 = activeCopy;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ invalid deviceBecameActive: nodeID: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ invalid deviceBecameActive: nodeID: %@", self, activeCopy);
    }
  }
}

- (BOOL)diagnosticLogTransferInProgress
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v4 = [_internalState objectForKeyedSubscript:@"MTRDeviceInternalPropertyDiagnosticLogTransferInProgress"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _internalState2 = [(MTRDevice_XPC *)self _internalState];
    v6 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDiagnosticLogTransferInProgress"];
  }

  else
  {
    v6 = 0;
  }

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (void)deviceConfigurationChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v9 = 2080;
    v10 = "[MTRDevice_XPC deviceConfigurationChanged:]";
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ %s", self, "[MTRDevice_XPC deviceConfigurationChanged:]");
  }

  objc_opt_class();
  if (((changedCopy != 0) & objc_opt_isKindOfClass()) != 0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_23929A3B4;
    v6[3] = &unk_278A744C8;
    v6[4] = self;
    [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v6];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v9 = 2112;
      v10 = changedCopy;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ invalid deviceConfigurationChanged: nodeID: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ invalid deviceConfigurationChanged: nodeID: %@", self, changedCopy);
    }
  }
}

- (BOOL)_ensureValidValuesForKeys:(id)keys inInternalState:(id)state valueRequired:(BOOL)required
{
  requiredCopy = required;
  v37 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  stateCopy = state;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = keysCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v10)
  {
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [stateCopy objectForKeyedSubscript:v13];
        if (v14)
        {
          [v9 objectForKeyedSubscript:v13];
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = sub_2393D9044(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              *buf = 138413058;
              selfCopy2 = self;
              v30 = 2112;
              v31 = v17;
              v32 = 2112;
              v33 = v13;
              v34 = 2112;
              v35 = v14;
              _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%@ device:internalStateUpdated: handed state with invalid value of type %@ for %@: %@", buf, 0x2Au);
            }

            if (sub_2393D5398(1u))
            {
              v18 = objc_opt_class();
              v19 = NSStringFromClass(v18);
              sub_2393D5320(0, 1, "%@ device:internalStateUpdated: handed state with invalid value of type %@ for %@: %@", self, v19, v13, v14);
            }

            if (requiredCopy)
            {
              goto LABEL_22;
            }

            [stateCopy removeObjectForKey:v13];
          }
        }

        else if (requiredCopy)
        {
          v21 = sub_2393D9044(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            selfCopy2 = self;
            v30 = 2112;
            v31 = v13;
            v32 = 2112;
            v33 = 0;
            _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "%@ device:internalStateUpdated: handed state with no value for %@: %@", buf, 0x20u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1, "%@ device:internalStateUpdated: handed state with no value for %@: %@", self, v13, 0);
          }

LABEL_22:

          v20 = 0;
          goto LABEL_23;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_23:

  return v20;
}

- (void)device:(id)device internalStateUpdated:(id)updated
{
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  updatedCopy = updated;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy3 = self;
    v12 = 2080;
    v13 = "[MTRDevice_XPC device:internalStateUpdated:]";
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ %s", self, "[MTRDevice_XPC device:internalStateUpdated:]");
  }

  objc_opt_class();
  if (((deviceCopy != 0) & objc_opt_isKindOfClass()) != 0)
  {
    objc_opt_class();
    if (((updatedCopy != 0) & objc_opt_isKindOfClass()) != 0)
    {
      v9 = [updatedCopy mutableCopy];
      [(MTRDevice_XPC *)self _updateInternalState:v9];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v12 = 2112;
        v13 = updatedCopy;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ invalid device:internalStateUpdated dictionary: %@", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%@ invalid device:internalStateUpdated dictionary: %@", self, updatedCopy);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v12 = 2112;
      v13 = deviceCopy;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ invalid device:internalStateUpdated: nodeID: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ invalid device:internalStateUpdated: nodeID: %@", self, deviceCopy);
    }
  }
}

- (void)_updateInternalState:(id)state
{
  v23[2] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ((atomic_load_explicit(&qword_27DF77610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF77610))
  {
    v22[0] = @"MTRDeviceInternalPropertyDeviceState";
    v22[1] = @"kMTRDeviceInternalPropertyLastSubscriptionAttemptWait";
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    qword_27DF77608 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    __cxa_guard_release(&qword_27DF77610);
  }

  if ((atomic_load_explicit(&qword_27DF77620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF77620))
  {
    v20[0] = @"MTRDeviceInternalStateKeyVendorID";
    v21[0] = objc_opt_class();
    v20[1] = @"MTRDeviceInternalStateKeyProductID";
    v21[1] = objc_opt_class();
    v20[2] = @"MTRDeviceInternalPropertyNetworkFeatures";
    v21[2] = objc_opt_class();
    v20[3] = @"MTRDeviceInternalPropertyMostRecentReportTime";
    v21[3] = objc_opt_class();
    v20[4] = @"MTRDeviceInternalPropertyLastSubscriptionFailureTime";
    v21[4] = objc_opt_class();
    v20[5] = @"MTRDeviceInternalPropertyDiagnosticLogTransferInProgress";
    v21[5] = objc_opt_class();
    qword_27DF77618 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
    __cxa_guard_release(&qword_27DF77620);
  }

  if ([(MTRDevice_XPC *)self _ensureValidValuesForKeys:qword_27DF77608 inInternalState:stateCopy valueRequired:1]&& [(MTRDevice_XPC *)self _ensureValidValuesForKeys:qword_27DF77618 inInternalState:stateCopy valueRequired:0])
  {
    _internalState = [(MTRDevice_XPC *)self _internalState];
    v6 = [_internalState objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _internalState2 = [(MTRDevice_XPC *)self _internalState];
      v8 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    }

    else
    {
      v8 = 0;
    }

    v9 = [stateCopy objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [stateCopy objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
    }

    else
    {
      v10 = 0;
    }

    _internalState3 = [(MTRDevice_XPC *)self _internalState];
    v12 = [_internalState3 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _internalState4 = [(MTRDevice_XPC *)self _internalState];
      v14 = [_internalState4 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    }

    else
    {
      v14 = 0;
    }

    v15 = [stateCopy objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [stateCopy objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
    }

    else
    {
      v16 = 0;
    }

    [(MTRDevice_XPC *)self _setInternalState:stateCopy];
    if ((sub_238DB32F8(v8, v10) & 1) == 0)
    {
      state = [(MTRDevice_XPC *)self state];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_23929AF50;
      v19[3] = &unk_278A744F0;
      v19[4] = self;
      v19[5] = state;
      [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v19];
    }

    if ((sub_238DB32F8(v14, v16) & 1) == 0)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_23929AF5C;
      v18[3] = &unk_278A744C8;
      v18[4] = self;
      [(MTRDevice *)self _lockAndCallDelegatesWithBlock:v18];
    }
  }
}

- (unint64_t)state
{
  if (![(MTRDevice *)self delegateExists])
  {
    return 1;
  }

  _internalState = [(MTRDevice_XPC *)self _internalState];
  v4 = [_internalState objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _internalState2 = [(MTRDevice_XPC *)self _internalState];
    v6 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceState"];
  }

  else
  {
    v6 = 0;
  }

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  if (unsignedIntegerValue == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (unsignedIntegerValue == 2);
  }

  return v7;
}

- (BOOL)deviceCachePrimed
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v4 = [_internalState objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _internalState2 = [(MTRDevice_XPC *)self _internalState];
    v6 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyDeviceCachePrimed"];
  }

  else
  {
    v6 = 0;
  }

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (id)estimatedStartTime
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v4 = [_internalState objectForKeyedSubscript:@"MTRDeviceInternalPropertyEstimatedStartTime"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _internalState2 = [(MTRDevice_XPC *)self _internalState];
    v6 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyEstimatedStartTime"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)estimatedSubscriptionLatency
{
  _internalState = [(MTRDevice_XPC *)self _internalState];
  v4 = [_internalState objectForKeyedSubscript:@"MTRDeviceInternalPropertyEstimatedSubscriptionLatency"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _internalState2 = [(MTRDevice_XPC *)self _internalState];
    v6 = [_internalState2 objectForKeyedSubscript:@"MTRDeviceInternalPropertyEstimatedSubscriptionLatency"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)readAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID params:(id)params
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  paramsCopy = params;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_23929B75C;
  v29 = sub_23929B76C;
  v30 = 0;
  deviceController = [(MTRDevice *)self deviceController];
  xpcConnection = [deviceController xpcConnection];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_23929B774;
  v24[3] = &unk_278A73D30;
  v24[4] = self;
  v24[5] = a2;
  v16 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
  deviceController2 = [(MTRDevice *)self deviceController];
  uniqueIdentifier = [deviceController2 uniqueIdentifier];
  nodeID = [(MTRDevice *)self nodeID];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_23929B8BC;
  v23[3] = &unk_278A74518;
  v23[4] = &v25;
  [v16 deviceController:uniqueIdentifier nodeID:nodeID readAttributeWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy params:paramsCopy withReply:v23];

  v20 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v20;
}

- (void)writeAttributeWithEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID value:(id)value expectedValueInterval:(id)interval timedWriteTimeout:(id)timeout
{
  v27[10] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  valueCopy = value;
  intervalCopy = interval;
  timeoutCopy = timeout;
  deviceController = [(MTRDevice *)self deviceController];
  xpcConnection = [deviceController xpcConnection];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_23929BC00;
  v27[3] = &unk_278A73D30;
  v27[4] = self;
  v27[5] = a2;
  v20 = [xpcConnection remoteObjectProxyWithErrorHandler:v27];
  deviceController2 = [(MTRDevice *)self deviceController];
  uniqueIdentifier = [deviceController2 uniqueIdentifier];
  nodeID = [(MTRDevice *)self nodeID];
  [v20 deviceController:uniqueIdentifier nodeID:nodeID writeAttributeWithEndpointID:dCopy clusterID:iDCopy attributeID:attributeIDCopy value:valueCopy expectedValueInterval:intervalCopy timedWriteTimeout:timeoutCopy];
}

- (id)readAttributePaths:(id)paths
{
  v22 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_23929B75C;
  v20 = sub_23929B76C;
  array = [MEMORY[0x277CBEA60] array];
  deviceController = [(MTRDevice *)self deviceController];
  xpcConnection = [deviceController xpcConnection];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_23929C11C;
  v15[3] = &unk_278A73D30;
  v15[4] = self;
  v15[5] = a2;
  v8 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
  deviceController2 = [(MTRDevice *)self deviceController];
  uniqueIdentifier = [deviceController2 uniqueIdentifier];
  nodeID = [(MTRDevice *)self nodeID];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23929C264;
  v14[3] = &unk_278A73D58;
  v14[4] = &v16;
  [v8 deviceController:uniqueIdentifier nodeID:nodeID readAttributePaths:pathsCopy withReply:v14];

  v12 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v12;
}

- (void)_invokeCommandWithEndpointID:(id)d clusterID:(id)iD commandID:(id)commandID commandFields:(id)fields expectedValues:(id)values expectedValueInterval:(id)interval timedInvokeTimeout:(id)timeout serverSideProcessingTimeout:(id)self0 queue:(id)self1 completion:(id)self2
{
  v47 = *MEMORY[0x277D85DE8];
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
  deviceController = [(MTRDevice *)self deviceController];
  xpcConnection = [deviceController xpcConnection];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_23929C760;
  v44[3] = &unk_278A72D20;
  v20 = queueCopy;
  v45 = v20;
  v21 = completionCopy;
  v46 = v21;
  v28 = xpcConnection;
  v22 = [xpcConnection remoteObjectProxyWithErrorHandler:v44];
  deviceController2 = [(MTRDevice *)self deviceController];
  uniqueIdentifier = [deviceController2 uniqueIdentifier];
  nodeID = [(MTRDevice *)self nodeID];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_23929C944;
  v37[3] = &unk_278A74568;
  v38 = v20;
  selfCopy = self;
  v40 = dCopy;
  v41 = iDCopy;
  v42 = commandIDCopy;
  v43 = v21;
  [v22 deviceController:uniqueIdentifier nodeID:nodeID invokeCommandWithEndpointID:v40 clusterID:v41 commandID:v42 commandFields:fieldsCopy expectedValues:valuesCopy expectedValueInterval:intervalCopy timedInvokeTimeout:timeoutCopy serverSideProcessingTimeout:processingTimeoutCopy completion:v37];
}

- (void)invokeCommands:(id)commands queue:(id)queue completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  queueCopy = queue;
  completionCopy = completion;
  deviceController = [(MTRDevice *)self deviceController];
  xpcConnection = [deviceController xpcConnection];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_23929D3EC;
  v25[3] = &unk_278A74590;
  v25[4] = self;
  v28 = a2;
  v12 = queueCopy;
  v26 = v12;
  v13 = completionCopy;
  v27 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v25];
  deviceController2 = [(MTRDevice *)self deviceController];
  uniqueIdentifier = [deviceController2 uniqueIdentifier];
  nodeID = [(MTRDevice *)self nodeID];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23929D630;
  v20[3] = &unk_278A745E0;
  v21 = v12;
  selfCopy = self;
  v23 = commandsCopy;
  v24 = v13;
  [v14 deviceController:uniqueIdentifier nodeID:nodeID invokeCommands:v23 completion:v20];
}

- (void)downloadLogOfType:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  deviceController = [(MTRDevice *)self deviceController];
  xpcConnection = [deviceController xpcConnection];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_23929E070;
  v24[3] = &unk_278A74590;
  v24[4] = self;
  v27 = a2;
  v13 = queueCopy;
  v25 = v13;
  v14 = completionCopy;
  v26 = v14;
  v15 = [xpcConnection remoteObjectProxyWithErrorHandler:v24];
  deviceController2 = [(MTRDevice *)self deviceController];
  uniqueIdentifier = [deviceController2 uniqueIdentifier];
  nodeID = [(MTRDevice *)self nodeID];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_23929E2B4;
  v21[3] = &unk_278A74608;
  v22 = v13;
  v23 = v14;
  [v15 deviceController:uniqueIdentifier nodeID:nodeID downloadLogOfType:type timeout:v21 completion:timeout];
}

@end