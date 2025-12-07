@interface DRSTaskingClientConnectionState
- (BOOL)hasTeamIDEntitlement:(id)entitlement connection:(id)connection;
- (DRSTaskingClientConnectionState)initWithConnection:(id)connection service:(id)service;
- (NSString)stateDescription;
- (void)dealloc;
@end

@implementation DRSTaskingClientConnectionState

- (DRSTaskingClientConnectionState)initWithConnection:(id)connection service:(id)service
{
  v37 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  serviceCopy = service;
  v32.receiver = self;
  v32.super_class = DRSTaskingClientConnectionState;
  v8 = [(DRSTaskingClientConnectionState *)&v32 init];
  v9 = v8;
  if (v8)
  {
    pid = xpc_connection_get_pid(connectionCopy);
    v9->_pid = pid;
    v11 = DRSPidToProcessName(pid);
    procName = v9->_procName;
    v9->_procName = v11;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    cachedEntitlements = v9->_cachedEntitlements;
    v9->_cachedEntitlements = dictionary;

    v15 = xpc_connection_copy_entitlement_value();
    v16 = v15;
    if (v15)
    {
      v15 = MEMORY[0x23838A140](v15) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v16);
    }

    v9->_hasAdminEntitlement = v15;
    v17 = DPLogHandle_ServiceTasking(v15);
    if (os_signpost_enabled(v17))
    {
      stateDescription = [(DRSTaskingClientConnectionState *)v9 stateDescription];
      hasAdminEntitlement = [(DRSTaskingClientConnectionState *)v9 hasAdminEntitlement];
      v20 = @"does not have";
      if (hasAdminEntitlement)
      {
        v20 = @"has";
      }

      *buf = 138543618;
      v34 = stateDescription;
      v35 = 2114;
      v36 = v20;
      _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AdminEntitlementSetting", "%{public}@ connection %{public}@ the admin entitlement", buf, 0x16u);
    }

    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __62__DRSTaskingClientConnectionState_initWithConnection_service___block_invoke;
    v29 = &unk_27899EF48;
    v30 = v9;
    v21 = serviceCopy;
    v31 = v21;
    xpc_connection_set_event_handler(connectionCopy, &v26);
    messageQueue = [v21 messageQueue];
    xpc_connection_set_target_queue(connectionCopy, messageQueue);

    xpc_connection_activate(connectionCopy);
  }

  v23 = DPLogHandle_ServiceTasking(v8);
  if (os_signpost_enabled(v23))
  {
    stateDescription2 = [(DRSTaskingClientConnectionState *)v9 stateDescription];
    *buf = 138543362;
    v34 = stateDescription2;
    _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewClientConnection", "Received client connection from %{public}@", buf, 0xCu);
  }

  return v9;
}

void __62__DRSTaskingClientConnectionState_initWithConnection_service___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x277D863F8])
  {
    v8 = DPLogHandle_ServiceTasking(v3);
    if (!os_signpost_enabled(v8))
    {
      goto LABEL_19;
    }

    v9 = [*(a1 + 32) stateDescription];
    v12 = 138543362;
    v13 = v9;
    v10 = "ConnectionInvalidation";
    v11 = "%{public}@ connection invalidated";
LABEL_18:
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v10, v11, &v12, 0xCu);

    goto LABEL_19;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    v8 = DPLogHandle_ServiceTasking(v3);
    if (!os_signpost_enabled(v8))
    {
      goto LABEL_19;
    }

    v9 = [*(a1 + 32) stateDescription];
    v12 = 138543362;
    v13 = v9;
    v10 = "ConnectionInterrupted";
    v11 = "%{public}@ connection interrupted";
    goto LABEL_18;
  }

  if (v3 == MEMORY[0x277D86420])
  {
    v8 = DPLogHandle_ServiceTasking(v3);
    if (!os_signpost_enabled(v8))
    {
      goto LABEL_19;
    }

    v9 = [*(a1 + 32) stateDescription];
    v12 = 138543362;
    v13 = v9;
    v10 = "TerminationImminent";
    v11 = "%{public}@ termination imminent";
    goto LABEL_18;
  }

  if (v3 == MEMORY[0x277D86418])
  {
    v8 = DPLogHandle_ServiceTasking(v3);
    if (os_signpost_enabled(v8))
    {
      v9 = [*(a1 + 32) stateDescription];
      v12 = 138543362;
      v13 = v9;
      v10 = "CodeSigningRequirementsNotMet";
      v11 = "%{public}@ connection doesn't meet code signing requirements";
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (MEMORY[0x23838A140](v3) == MEMORY[0x277D86468])
  {
    [*(a1 + 40) handleRequest:v4 state:*(a1 + 32)];
  }

  else
  {
    v5 = MEMORY[0x238389FD0](v4);
    v6 = DPLogHandle_ServiceTasking(v5);
    if (os_signpost_enabled(v6))
    {
      v7 = [*(a1 + 32) stateDescription];
      v12 = 138543618;
      v13 = v7;
      v14 = 2082;
      v15 = v5;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnexpectedMessageType", "%{public}@ message type unexpected: %{public}s", &v12, 0x16u);
    }

    if (v5)
    {
      free(v5);
    }
  }

LABEL_20:
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_ServiceTasking(self);
  if (os_signpost_enabled(v3))
  {
    stateDescription = [(DRSTaskingClientConnectionState *)self stateDescription];
    *buf = 138543362;
    v7 = stateDescription;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConnectionStateDealloc", "Disconnecting from %{public}@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = DRSTaskingClientConnectionState;
  [(DRSTaskingClientConnectionState *)&v5 dealloc];
}

- (BOOL)hasTeamIDEntitlement:(id)entitlement connection:(id)connection
{
  v26 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  connectionCopy = connection;
  cachedEntitlements = [(DRSTaskingClientConnectionState *)self cachedEntitlements];
  v9 = [cachedEntitlements objectForKeyedSubscript:entitlementCopy];

  if (v9)
  {
    LOBYTE(v10) = [v9 BOOLValue];
  }

  else
  {
    entitlementCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.diagnosticpipeline.tasking.%@", entitlementCopy];
    [entitlementCopy UTF8String];
    value = xpc_connection_copy_entitlement_value();
    v13 = value;
    if (value && (value = MEMORY[0x23838A140](value), value == MEMORY[0x277D86448]))
    {
      value = xpc_BOOL_get_value(v13);
      v10 = value;
    }

    else
    {
      v10 = 0;
    }

    v14 = DPLogHandle_ServiceTasking(value);
    if (os_signpost_enabled(v14))
    {
      stateDescription = [(DRSTaskingClientConnectionState *)self stateDescription];
      v16 = "does not have";
      *buf = 138543874;
      v21 = stateDescription;
      if (v10)
      {
        v16 = "has";
      }

      v22 = 2082;
      v23 = v16;
      v24 = 2112;
      v25 = entitlementCopy;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConnectionStateTeamIDEntitlement", "Connection for %{public}@ %{public}s entitlement '%@'", buf, 0x20u);
    }

    v17 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    cachedEntitlements2 = [(DRSTaskingClientConnectionState *)self cachedEntitlements];
    [cachedEntitlements2 setObject:v17 forKeyedSubscript:entitlementCopy];
  }

  return v10;
}

- (NSString)stateDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = "";
  if (self->_hasAdminEntitlement)
  {
    v4 = " (admin)";
  }

  v5 = [v3 initWithFormat:@"DRSTaskingClient [%d:%@]%s", self->_pid, self->_procName, v4];

  return v5;
}

@end