@interface _BKHIDDeliveryObserverDeprecatedIncomingConnectionHandler
- (void)handleIncomingDeliveryObserverConnection:(id)connection;
@end

@implementation _BKHIDDeliveryObserverDeprecatedIncomingConnectionHandler

- (void)handleIncomingDeliveryObserverConnection:(id)connection
{
  v32 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = self->_deliveryObserverServiceProvider;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"no delivery observer service provider"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v21 = v10;
      v22 = 2114;
      v23 = v12;
      v24 = 2048;
      selfCopy2 = self;
      v26 = 2114;
      v27 = @"BKHIDEventDeliveryObserverServer.m";
      v28 = 1024;
      v29 = 182;
      v30 = 2114;
      v31 = v9;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC9270);
  }

  v6 = v5;
  auditToken = [connectionCopy auditToken];
  v8 = [(BKHIDEventDeliveryObserverServiceProvider *)v6 deliveryObserverServiceForAuditToken:auditToken];

  if (!v8)
  {
    v13 = MEMORY[0x277CCACA8];
    auditToken2 = [connectionCopy auditToken];
    v15 = [v13 stringWithFormat:@"failed to provide delivery observer service for auditToken: %@", auditToken2];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v21 = v16;
      v22 = 2114;
      v23 = v18;
      v24 = 2048;
      selfCopy2 = self;
      v26 = 2114;
      v27 = @"BKHIDEventDeliveryObserverServer.m";
      v28 = 1024;
      v29 = 188;
      v30 = 2114;
      v31 = v15;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CC9378);
  }

  [connectionCopy acceptConnectionWithMappedObject:v8];
}

@end