@interface ResourceNotifyHandler
+ (BOOL)processOnBatteryOnly;
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (ResourceNotifyHandler)init;
- (int)read:(id)read returnedValues:(id)values;
- (void)resourceNotifyEvent:(id)event triggeredBy:(char)by[33] pid:(int)pid path:(char)path[1024] endTime:(mach_timespec)time observedValue:(int64_t)value observationWindow:(int64_t)window limitValue:(int64_t)self0 limitWindow:(int64_t)self1 fatal:(BOOL)self2 fatalPort:(unsigned int)self3;
- (void)setupResourceNotifyReceiver;
@end

@implementation ResourceNotifyHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ResourceNotifyHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_31 != -1)
  {
    dispatch_once(&sharedInstance_pred_31, block);
  }

  v2 = sharedInstance_sharedInstance_31;

  return v2;
}

void __52__ResourceNotifyHandler_setupResourceNotifyReceiver__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = dispatch_mig_server();
  if (v1)
  {
    v2 = v1;
    v3 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = 136315138;
      v6 = mach_error_string(v2);
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "dispatch_mig_server(): %s", &v5, 0xCu);
    }
  }
}

void __39__ResourceNotifyHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_31;
  sharedInstance_sharedInstance_31 = v1;

  [sharedInstance_sharedInstance_31 setupResourceNotifyReceiver];
  v3 = sharedInstance_sharedInstance_31;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

- (ResourceNotifyHandler)init
{
  v7.receiver = self;
  v7.super_class = ResourceNotifyHandler;
  v2 = [(ResourceNotifyHandler *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.mach.resource_notify", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)setupResourceNotifyReceiver
{
  v22 = *MEMORY[0x277D85DE8];
  sp = 0;
  v3 = bootstrap_check_in(*MEMORY[0x277D85F18], "com.apple.resource_notify.host", &sp);
  v4 = debuggabilityLogHandle;
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = mach_error_string(v5);
      *buf = 136315650;
      v17 = "com.apple.resource_notify.host";
      v18 = 2080;
      v19 = v7;
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Unable to bootstrap mach port for %s: %s (%d)", buf, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v17) = sp;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "ResourceNotify bootstrapped with mach kernel port %d", buf, 8u);
    }

    v8 = dispatch_source_create(MEMORY[0x277D85D08], sp, 0, self->_queue);
    if (v8)
    {
      v9 = v8;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __52__ResourceNotifyHandler_setupResourceNotifyReceiver__block_invoke;
      v13[3] = &unk_27898A0C8;
      v10 = v8;
      v14 = v10;
      dispatch_source_set_event_handler(v10, v13);
      self->_port = sp;
      objc_storeStrong(&self->_source, v9);
      v11 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Finished configuring kernel interface for RSRC_NOTIFY notifications.", buf, 2u);
      }

      dispatch_activate(v10);
    }

    else
    {
      v12 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v17) = sp;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Unable to create dispatch_source for mach port %d.", buf, 8u);
      }
    }
  }
}

+ (BOOL)processOnBatteryOnly
{
  if (processOnBatteryOnly_p_pred != -1)
  {
    +[ResourceNotifyHandler processOnBatteryOnly];
  }

  return processOnBatteryOnly_resourceNotifyBatteryOnly;
}

void *__45__ResourceNotifyHandler_processOnBatteryOnly__block_invoke()
{
  processOnBatteryOnly_resourceNotifyBatteryOnly = 1;
  result = get_shared_prefs_store();
  if (result)
  {

    return prefs_add_client(result, "resource_notify_on_power", &__block_literal_global_62);
  }

  return result;
}

void __45__ResourceNotifyHandler_processOnBatteryOnly__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && MEMORY[0x238389170](v3) == MEMORY[0x277D86448])
  {
    value = xpc_BOOL_get_value(v4);
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = @"OFF";
      if (value)
      {
        v8 = @"ON";
      }

      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Set RESOURCE_NOTIFY on power to %@", &v9, 0xCu);
    }

    v5 = !value;
  }

  else
  {
    v5 = 1;
  }

  processOnBatteryOnly_resourceNotifyBatteryOnly = v5;
}

- (void)resourceNotifyEvent:(id)event triggeredBy:(char)by[33] pid:(int)pid path:(char)path[1024] endTime:(mach_timespec)time observedValue:(int64_t)value observationWindow:(int64_t)window limitValue:(int64_t)self0 limitWindow:(int64_t)self1 fatal:(BOOL)self2 fatalPort:(unsigned int)self3
{
  v52 = *&pid;
  v59 = *MEMORY[0x277D85DE8];
  tv_nsec = time.tv_nsec;
  eventCopy = event;
  v18 = +[PowerStateRelay defaultRelay];
  pluggedIn = [v18 pluggedIn];

  v19 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v56 = eventCopy;
    v57 = 2080;
    byCopy = by;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "Processing ResourceNotify event: %@ triggered by %s", buf, 0x16u);
  }

  v20 = pid_to_uuid_string(v52);
  byCopy2 = by;
  v21 = [[EventDescription alloc] initWithType:1 length:0 data:0 fromPid:v52 named:by bundleId:0];
  if (path)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:path];
    eventQualifiers = [(EventDescription *)v21 eventQualifiers];
    [eventQualifiers setObject:v22 forKeyedSubscript:kResourceNotifyEventKeyProcessPath];
  }

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:time];
  eventQualifiers2 = [(EventDescription *)v21 eventQualifiers];
  [eventQualifiers2 setObject:v24 forKeyedSubscript:kResourceNotifyEventKeyEndTimeSpecSec];

  v26 = [MEMORY[0x277CCABB0] numberWithInt:tv_nsec];
  eventQualifiers3 = [(EventDescription *)v21 eventQualifiers];
  [eventQualifiers3 setObject:v26 forKeyedSubscript:kResourceNotifyEventKeyEndTimeSpecNanosec];

  v28 = [MEMORY[0x277CCABB0] numberWithLongLong:value];
  eventQualifiers4 = [(EventDescription *)v21 eventQualifiers];
  [eventQualifiers4 setObject:v28 forKeyedSubscript:kResourceNotifyEventKeyObservedValue];

  v30 = [MEMORY[0x277CCABB0] numberWithLongLong:window];
  eventQualifiers5 = [(EventDescription *)v21 eventQualifiers];
  [eventQualifiers5 setObject:v30 forKeyedSubscript:kResourceNotifyEventKeyObservationWindow];

  v32 = [MEMORY[0x277CCABB0] numberWithLongLong:limitValue];
  eventQualifiers6 = [(EventDescription *)v21 eventQualifiers];
  [eventQualifiers6 setObject:v32 forKeyedSubscript:kResourceNotifyEventKeyLimitValue];

  v34 = [MEMORY[0x277CCABB0] numberWithLongLong:limitWindow];
  eventQualifiers7 = [(EventDescription *)v21 eventQualifiers];
  [eventQualifiers7 setObject:v34 forKeyedSubscript:kResourceNotifyEventKeyLimitWindow];

  v36 = [MEMORY[0x277CCABB0] numberWithBool:fatal];
  eventQualifiers8 = [(EventDescription *)v21 eventQualifiers];
  [eventQualifiers8 setObject:v36 forKeyedSubscript:kResourceNotifyEventKeyFatalFlag];

  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:port];
  eventQualifiers9 = [(EventDescription *)v21 eventQualifiers];
  [eventQualifiers9 setObject:v38 forKeyedSubscript:kResourceNotifyEventKeyFatalPort];

  if ([v20 length])
  {
    eventQualifiers10 = [(EventDescription *)v21 eventQualifiers];
    [eventQualifiers10 setObject:v20 forKeyedSubscript:kResourceNotifyEventKeyUUID];
  }

  if (pluggedIn)
  {
    v41 = [MEMORY[0x277CCABB0] numberWithBool:1];
    eventQualifiers11 = [(EventDescription *)v21 eventQualifiers];
    [eventQualifiers11 setObject:v41 forKeyedSubscript:kResourceNotifyEventKeyPluggedIn];
  }

  [(EventDescription *)v21 setEventKey:eventCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __145__ResourceNotifyHandler_resourceNotifyEvent_triggeredBy_pid_path_endTime_observedValue_observationWindow_limitValue_limitWindow_fatal_fatalPort___block_invoke;
  block[3] = &unk_27898A0C8;
  v43 = v21;
  v54 = v43;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (!fatal && [eventCopy isEqualToString:kResourceNotifyEventCPUUsageTrigger])
  {
    v44 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v56) = v52;
      _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, "Calling notifyCPUViolation for pid %d", buf, 8u);
    }

    [MEMORY[0x277D46FC8] notifyCPUViolation:v52];
  }

  if ([eventCopy isEqualToString:kResourceNotifyEventCPUUsageTrigger])
  {
    if (!self->_safeguardsClient && objc_opt_class())
    {
      v45 = objc_alloc_init(MEMORY[0x277D3F060]);
      safeguardsClient = self->_safeguardsClient;
      self->_safeguardsClient = v45;
    }

    if (objc_opt_respondsToSelector())
    {
      if (fatal)
      {
        v47 = 0x100000000;
      }

      else
      {
        v47 = 0;
      }

      [(SafeguardsClient *)self->_safeguardsClient reportExcessiveCPUUseBy:byCopy2 pid:v52 path:path timestamp:time observed_cpu_nsecs:value observation_nsecs:window cpu_nsecs_allowed:limitValue limit_window_nsecs:limitWindow flags:v47];
    }
  }
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[ResourceNotifyHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

@end