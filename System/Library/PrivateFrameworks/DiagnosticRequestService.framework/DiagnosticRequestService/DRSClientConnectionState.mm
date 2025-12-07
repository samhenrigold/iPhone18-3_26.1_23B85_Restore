@interface DRSClientConnectionState
- (DRSClientConnectionState)initWithConnection:(id)connection service:(id)service;
- (NSString)stateDescription;
- (void)dealloc;
@end

@implementation DRSClientConnectionState

- (DRSClientConnectionState)initWithConnection:(id)connection service:(id)service
{
  v35 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  serviceCopy = service;
  v30.receiver = self;
  v30.super_class = DRSClientConnectionState;
  v8 = [(DRSClientConnectionState *)&v30 init];
  v9 = v8;
  if (v8)
  {
    pid = xpc_connection_get_pid(connectionCopy);
    v9->_pid = pid;
    v11 = DRSPidToProcessName(pid);
    procName = v9->_procName;
    v9->_procName = v11;

    v13 = xpc_connection_copy_entitlement_value();
    v14 = v13;
    if (v13)
    {
      v13 = MEMORY[0x23838A140](v13) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v14);
    }

    v9->_hasAdminEntitlement = v13;
    v15 = DPLogHandle_ServiceLifecycle(v13);
    if (os_signpost_enabled(v15))
    {
      stateDescription = [(DRSClientConnectionState *)v9 stateDescription];
      hasAdminEntitlement = [(DRSClientConnectionState *)v9 hasAdminEntitlement];
      v18 = @"does not have";
      if (hasAdminEntitlement)
      {
        v18 = @"has";
      }

      *buf = 138543618;
      v32 = stateDescription;
      v33 = 2114;
      v34 = v18;
      _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConnectionAdminEntitlementSetting", "%{public}@ connection %{public}@ the admin entitlement", buf, 0x16u);
    }

    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __55__DRSClientConnectionState_initWithConnection_service___block_invoke;
    v27 = &unk_27899EF48;
    v28 = v9;
    v19 = serviceCopy;
    v29 = v19;
    xpc_connection_set_event_handler(connectionCopy, &v24);
    messageQueue = [v19 messageQueue];
    xpc_connection_set_target_queue(connectionCopy, messageQueue);

    xpc_connection_activate(connectionCopy);
  }

  v21 = DPLogHandle_ServiceLifecycle(v8);
  if (os_signpost_enabled(v21))
  {
    stateDescription2 = [(DRSClientConnectionState *)v9 stateDescription];
    *buf = 138543362;
    v32 = stateDescription2;
    _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewClientConnection", "Received client connection from %{public}@", buf, 0xCu);
  }

  return v9;
}

void __55__DRSClientConnectionState_initWithConnection_service___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x277D863F8])
  {
    v7 = DPLogHandle_ServiceLifecycle(v3);
    if (os_signpost_enabled(v7))
    {
      v8 = [*(a1 + 32) stateDescription];
      v11 = 138543362;
      v12 = v8;
      v9 = "ConnectionInvalidation";
      v10 = "%{public}@ connection invalidated";
LABEL_12:
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v9, v10, &v11, 0xCu);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    v7 = DPLogHandle_ServiceLifecycle(v3);
    if (os_signpost_enabled(v7))
    {
      v8 = [*(a1 + 32) stateDescription];
      v11 = 138543362;
      v12 = v8;
      v9 = "ConnectionInterrupted";
      v10 = "%{public}@ connection interrupted";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (MEMORY[0x23838A140](v3) == MEMORY[0x277D86468])
  {
    [*(a1 + 40) handleRequest:v4 state:*(a1 + 32)];
  }

  else
  {
    v5 = MEMORY[0x238389FD0](v4);
    v6 = DPLogHandle_ServiceLifecycle(v5);
    if (os_signpost_enabled(v6))
    {
      v11 = 136446210;
      v12 = v5;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidMessageType", "Invalid message type unexpected: %{public}s", &v11, 0xCu);
    }

    if (v5)
    {
      free(v5);
    }
  }

LABEL_14:
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_ServiceLifecycle(self);
  if (os_signpost_enabled(v3))
  {
    stateDescription = [(DRSClientConnectionState *)self stateDescription];
    *buf = 138543362;
    v7 = stateDescription;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConnectionStateDealloc", "Disconnecting from %{public}@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = DRSClientConnectionState;
  [(DRSClientConnectionState *)&v5 dealloc];
}

- (NSString)stateDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = "";
  if (self->_hasAdminEntitlement)
  {
    v4 = "(admin)";
  }

  v5 = [v3 initWithFormat:@"DRSClient [%d:%@] %s", self->_pid, self->_procName, v4];

  return v5;
}

@end