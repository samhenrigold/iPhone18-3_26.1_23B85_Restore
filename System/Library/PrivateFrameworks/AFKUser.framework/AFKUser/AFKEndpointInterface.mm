@interface AFKEndpointInterface
+ (id)withService:(unsigned int)service;
+ (id)withService:(unsigned int)service properties:(id)properties;
- (AFKEndpointInterface)initWithService:(unsigned int)service;
- (int)compleOOBBuffer:(unint64_t)buffer;
- (int)enqueueCommand:(unsigned int)command timestamp:(unint64_t)timestamp inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size outputPayloadSize:(unint64_t)payloadSize context:(void *)context options:(unsigned int)options;
- (int)enqueueCommandSync:(unsigned int)sync timestamp:(unint64_t)timestamp inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size responseTimestamp:(unint64_t *)responseTimestamp outputBuffer:(void *)outputBuffer inOutBufferSize:(unint64_t *)bufferSize options:(unsigned int)self0;
- (int)enqueueDescriptor:(id)descriptor packetType:(unsigned int)type timestamp:(unint64_t)timestamp options:(unsigned int)options;
- (int)enqueueReport:(unsigned int)report timestamp:(unint64_t)timestamp inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size options:(unsigned int)options;
- (int)enqueueResponseForContext:(void *)context status:(int)status timestamp:(unint64_t)timestamp outputBuffer:(void *)buffer outputBufferSize:(unint64_t)size options:(unsigned int)options;
- (int)startSession:(BOOL)session;
- (void)_cancel;
- (void)activate:(unsigned int)activate;
- (void)cancel;
- (void)dealloc;
- (void)dequeueDataMessage:(_IODataQueueMemory *)message;
- (void)handleCommand:(char *)command size:(unsigned int)size;
- (void)handleDescriptor:(char *)descriptor size:(unsigned int)size;
- (void)handleQueue:(char *)queue size:(unsigned int)size;
- (void)handleReport:(char *)report size:(unsigned int)size;
- (void)handleResponse:(char *)response size:(unsigned int)size;
- (void)setCommandHandler:(id)handler;
- (void)setCommandHandlerWithReturn:(id)return;
- (void)setDescriptorHandler:(id)handler;
- (void)setDescriptorManagers:(id)managers;
- (void)setDispatchQueue:(id)queue;
- (void)setEventHandler:(id)handler;
- (void)setReportHandler:(id)handler;
- (void)setResponseHandler:(id)handler;
@end

@implementation AFKEndpointInterface

+ (id)withService:(unsigned int)service
{
  v3 = [[AFKEndpointInterface alloc] initWithService:*&service];

  return v3;
}

+ (id)withService:(unsigned int)service properties:(id)properties
{
  v4 = *&service;
  propertiesCopy = properties;
  v6 = [[AFKEndpointInterface alloc] initWithService:v4];
  if (v6)
  {
    v7 = [propertiesCopy mutableCopy];
    properties = v6->_properties;
    v6->_properties = v7;
  }

  return v6;
}

- (AFKEndpointInterface)initWithService:(unsigned int)service
{
  v11[3] = *MEMORY[0x277D85DE8];
  if (!service)
  {
    v9 = _AFKUserLog(self);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)v11 initWithService:?];
    }

    goto LABEL_15;
  }

  v5 = IOObjectRetain(service);
  if (v5)
  {
    v10 = _AFKUserLog(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)self regID];
      [AFKEndpointInterface initWithService:];
    }

    goto LABEL_14;
  }

  self->_service = service;
  RegistryEntryID = IORegistryEntryGetRegistryEntryID(service, &self->_regID);
  if (RegistryEntryID)
  {
    v10 = _AFKUserLog(RegistryEntryID);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)self regID];
      [AFKEndpointInterface initWithService:];
    }

LABEL_14:

LABEL_15:
    selfCopy = 0;
    goto LABEL_5;
  }

  selfCopy = self;
LABEL_5:

  return selfCopy;
}

- (void)activate:(unsigned int)activate
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = 0;
  input[1] = activate;
  v43 = 0;
  v44 = 0;
  objc_initWeak(&location, self);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __33__AFKEndpointInterface_activate___block_invoke;
  v40[3] = &unk_278BBE898;
  objc_copyWeak(&v41, &location);
  v4 = MEMORY[0x23EED3430](v40);
  if (atomic_fetch_or(&self->_state, 1u))
  {
    goto LABEL_33;
  }

  v5 = self->_queue;
  if (!v5)
  {
    v51[0] = 0;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
    memset(buf, 0, sizeof(buf));
    v26 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    LODWORD(v45) = 134217984;
    *(&v45 + 4) = 0;
    _os_log_send_and_compose_impl(v27, v51, buf, 80, &dword_23C487000, v26, 16, "assertion failure: _queue -> %llu", &v45);
    _os_crash_msg();
    [AFKEndpointInterface activate:];
  }

  v6 = MEMORY[0x277D85F48];
  v7 = IOServiceOpen(self->_service, *MEMORY[0x277D85F48], 0x696F706Bu, &self->_connect);
  v8 = v7;
  if (v7)
  {
    v28 = _AFKUserLog(v7);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)self regID];
      [AFKMemoryDescriptorManager initWithService:];
    }

    goto LABEL_55;
  }

  properties = self->_properties;
  if (properties)
  {
    v10 = IOConnectSetCFProperties(self->_connect, properties);
    v8 = v10;
    if (v10)
    {
      v28 = _AFKUserLog(v10);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        regID = [(AFKEndpointInterface *)self regID];
        v34 = self->_properties;
        *buf = 134218498;
        *&buf[4] = regID;
        *&buf[12] = 1024;
        *&buf[14] = v8;
        *&buf[18] = 2112;
        *&buf[20] = v34;
        _os_log_error_impl(&dword_23C487000, v28, OS_LOG_TYPE_ERROR, "0x%llx: Set IOConnectSetCFProperties:0x%x for:%@", buf, 0x1Cu);
      }

LABEL_55:
      v11 = 0;
      goto LABEL_56;
    }
  }

  if (self->_reportHandler)
  {
    input[0] |= 1uLL;
  }

  if (self->_commandHandlerWithReturn || self->_commandHandler)
  {
    input[0] |= 2uLL;
  }

  if (self->_descriptorHandler)
  {
    input[0] |= 4uLL;
  }

  if ([(NSSet *)self->_descriptorManagers count])
  {
    if ([(NSSet *)self->_descriptorManagers count]>= 0x10000)
    {
      v51[0] = 0;
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
      memset(buf, 0, sizeof(buf));
      v31 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      LODWORD(v45) = 134217984;
      *(&v45 + 4) = 0;
      _os_log_send_and_compose_impl(v32, v51, buf, 80, &dword_23C487000, v31, 16, "assertion failure: _descriptorManagers.count <= 65535 -> %llu", &v45);
      _os_crash_msg();
      [AFKEndpointInterface activate:];
    }

    v11 = malloc_type_calloc([(NSSet *)self->_descriptorManagers count], 8uLL, 0x100004000313F17uLL);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = self->_descriptorManagers;
    v13 = [(NSSet *)v12 countByEnumeratingWithState:&v36 objects:v50 count:16];
    if (v13)
    {
      v14 = 0;
      v15 = *v37;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v11[v14++] = [*(*(&v36 + 1) + 8 * i) regID];
        }

        v13 = [(NSSet *)v12 countByEnumeratingWithState:&v36 objects:v50 count:16];
      }

      while (v13);
    }

    v17 = 8 * [(NSSet *)self->_descriptorManagers count];
  }

  else
  {
    v17 = 0;
    v11 = 0;
  }

  v18 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  self->_asyncPort = v18;
  if (!v18)
  {
    v28 = _AFKUserLog(0);
    v8 = -536870210;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)v51 activate:?];
    }

    goto LABEL_56;
  }

  IONotificationPortSetDispatchQueue(v18, self->_queue);
  v19 = MEMORY[0x23EED2FD0](self->_connect, 0, *v6, &v44, &v43, 1);
  v8 = v19;
  if (v19)
  {
    v28 = _AFKUserLog(v19);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)self regID];
      [AFKMemoryDescriptor mapDescriptor];
    }

    goto LABEL_56;
  }

  v20 = v43;
  self->_dataQueue = v44;
  self->_dataQueueSize = v20;
  NotificationPort = IODataQueueAllocateNotificationPort();
  self->_dataQueuePort = NotificationPort;
  if (!NotificationPort)
  {
    v29 = _AFKUserLog(NotificationPort);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)buf activate:?];
    }

    goto LABEL_48;
  }

  v22 = dispatch_mach_create();
  dataQueueMachChannel = self->_dataQueueMachChannel;
  self->_dataQueueMachChannel = v22;

  if (!self->_dataQueueMachChannel)
  {
    v29 = _AFKUserLog(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)buf activate:?];
    }

LABEL_48:

    goto LABEL_30;
  }

  dispatch_mach_connect();
  objc_storeStrong(&self->me, self);
  v24 = MEMORY[0x23EED2FF0](self->_connect, 0, self->_dataQueuePort, 0);
  v8 = v24;
  if (v24)
  {
    v28 = _AFKUserLog(v24);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)self regID];
      [AFKEndpointInterface activate:];
    }
  }

  else
  {
    v25 = IOConnectCallMethod(self->_connect, 0, input, 2u, v11, v17, 0, 0, 0, 0);
    v8 = v25;
    if (!v25)
    {
LABEL_30:
      atomic_fetch_or(&self->_state, 2u);
      goto LABEL_31;
    }

    v28 = _AFKUserLog(v25);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)self regID];
      [AFKEndpointInterface activate:];
    }
  }

LABEL_56:

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy_;
  *&v53 = __Block_byref_object_dispose_;
  *(&v53 + 1) = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.IOKit" code:v8 userInfo:0];
  *&v45 = 0;
  *(&v45 + 1) = &v45;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  selfCopy = self;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__AFKEndpointInterface_activate___block_invoke_25;
  block[3] = &unk_278BBE8C0;
  block[4] = &v45;
  block[5] = buf;
  dispatch_async(queue, block);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(buf, 8);
LABEL_31:
  if (v11)
  {
    free(v11);
  }

LABEL_33:

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

void __33__AFKEndpointInterface_activate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = v9;
    v7 = WeakRetained;
    v8 = v7;
    if (a2 == 8)
    {
      [v7 _cancel];
    }

    else if (a2 == 2)
    {
      [v7 dequeueDataMessage:v7[13]];
    }
  }
}

uint64_t __33__AFKEndpointInterface_activate___block_invoke_25(uint64_t a1)
{
  result = *(*(*(*(a1 + 32) + 8) + 40) + 96);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cancel
{
  OUTLINED_FUNCTION_10(self, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_23C487000, v6, v7, "assertion failure: state & kAFKDispatchStateActiveStart -> %llu");
  _os_crash_msg();
  __break(1u);
}

- (void)_cancel
{
  OUTLINED_FUNCTION_2_0(self, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  v8 = OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_23C487000, v6, v7, "assertion failure: state & kAFKDispatchStateCancelling -> %llu");
  OUTLINED_FUNCTION_9(v8);
  __break(1u);
}

- (void)setDispatchQueue:(id)queue
{
  v11 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  if (self->_queue)
  {
    v7 = 0;
    memset(v10, 0, sizeof(v10));
    v5 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v8 = 134217984;
    v9 = 0;
    _os_log_send_and_compose_impl(v6, &v7, v10, 80, &dword_23C487000, v5, 16, "assertion failure: _queue == nullptr -> %llu", &v8);
    _os_crash_msg();
    [AFKEndpointInterface activate:];
  }

  self->_queue = queueCopy;
}

- (void)setResponseHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_state)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v7, &v9, v12, 80, &dword_23C487000, v6, 16, "assertion failure: _state == 0 -> %llu", &v10);
    _os_crash_msg();
    [AFKEndpointInterface activate:];
  }

  v4 = MEMORY[0x23EED3430]();
  responseHandler = self->_responseHandler;
  self->_responseHandler = v4;
}

- (void)setReportHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_state)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v7, &v9, v12, 80, &dword_23C487000, v6, 16, "assertion failure: _state == 0 -> %llu", &v10);
    _os_crash_msg();
    [AFKEndpointInterface activate:];
  }

  v4 = MEMORY[0x23EED3430]();
  reportHandler = self->_reportHandler;
  self->_reportHandler = v4;
}

- (void)setCommandHandlerWithReturn:(id)return
{
  v13 = *MEMORY[0x277D85DE8];
  returnCopy = return;
  if (self->_state)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v7, &v9, v12, 80, &dword_23C487000, v6, 16, "assertion failure: _state == 0 -> %llu", &v10);
    _os_crash_msg();
    [AFKEndpointInterface activate:];
  }

  v4 = MEMORY[0x23EED3430]();
  commandHandlerWithReturn = self->_commandHandlerWithReturn;
  self->_commandHandlerWithReturn = v4;
}

- (void)setCommandHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_state)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v7, &v9, v12, 80, &dword_23C487000, v6, 16, "assertion failure: _state == 0 -> %llu", &v10);
    _os_crash_msg();
    [AFKEndpointInterface activate:];
  }

  v4 = MEMORY[0x23EED3430]();
  commandHandler = self->_commandHandler;
  self->_commandHandler = v4;
}

- (void)setDescriptorHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_state)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v7, &v9, v12, 80, &dword_23C487000, v6, 16, "assertion failure: _state == 0 -> %llu", &v10);
    _os_crash_msg();
    [AFKEndpointInterface activate:];
  }

  v4 = MEMORY[0x23EED3430]();
  descriptorHandler = self->_descriptorHandler;
  self->_descriptorHandler = v4;
}

- (void)setDescriptorManagers:(id)managers
{
  v19 = *MEMORY[0x277D85DE8];
  managersCopy = managers;
  v5 = managersCopy;
  if (self->_state)
  {
    v11 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v12 = 134217984;
    v13 = 0;
    _os_log_send_and_compose_impl(v8, &v11, &v14, 80, &dword_23C487000, v7, 16, "assertion failure: _state == 0 -> %llu", &v12);
    _os_crash_msg();
    [AFKEndpointInterface activate:];
  }

  if ([(NSSet *)managersCopy count]>= 0x10000)
  {
    v11 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v9 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v12 = 134217984;
    v13 = 0;
    _os_log_send_and_compose_impl(v10, &v11, &v14, 80, &dword_23C487000, v9, 16, "assertion failure: managers.count <= 65535 -> %llu", &v12);
    _os_crash_msg();
    [AFKEndpointInterface activate:];
  }

  descriptorManagers = self->_descriptorManagers;
  self->_descriptorManagers = v5;
}

- (void)setEventHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_state)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v7, &v9, v12, 80, &dword_23C487000, v6, 16, "assertion failure: _state == 0 -> %llu", &v10);
    _os_crash_msg();
    [AFKEndpointInterface activate:];
  }

  v4 = MEMORY[0x23EED3430]();
  eventHandler = self->_eventHandler;
  self->_eventHandler = v4;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_queue && ![(AFKEndpointInterface *)self hasState:13])
  {
    v10 = 0;
    memset(v12, 0, sizeof(v12));
    v5 = MEMORY[0x277D86220];
    v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    state = self->_state;
    if (v6)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v11[0] = 67109120;
    v11[1] = state;
    _os_log_send_and_compose_impl(v8, &v10, v12, 80, &dword_23C487000, v5, 16, "assertion failure: Invalid dispatch state: 0x%x", v11);
    _os_crash_msg();
    [AFKEndpointInterface activate:];
  }

  dataQueuePort = self->_dataQueuePort;
  if (dataQueuePort)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], dataQueuePort, 1u, -1);
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  v9.receiver = self;
  v9.super_class = AFKEndpointInterface;
  [(AFKEndpointInterface *)&v9 dealloc];
}

- (int)enqueueCommand:(unsigned int)command timestamp:(unint64_t)timestamp inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size outputPayloadSize:(unint64_t)payloadSize context:(void *)context options:(unsigned int)options
{
  input[10] = *MEMORY[0x277D85DE8];
  if (![(AFKEndpointInterface *)self hasState:1])
  {
    [AFKEndpointInterface enqueueCommand:input timestamp:? inputBuffer:? inputBufferSize:? outputPayloadSize:? context:? options:?];
  }

  if (![(AFKEndpointInterface *)self hasState:2])
  {
    return -536870184;
  }

  kdebug_trace();
  v16 = malloc_type_calloc(0x18uLL, 1uLL, 0x1080040CC6EE3FDuLL);
  v16[2] = payloadSize;
  *v16 = context;
  input[0] = command;
  input[1] = timestamp;
  input[2] = buffer;
  input[3] = size;
  input[4] = v16;
  input[5] = payloadSize;
  input[6] = ~(options >> 2) & 8 | options;
  v17 = IOConnectCallMethod(self->_connect, 2u, input, 7u, 0, 0, 0, 0, 0, 0);
  if (v17)
  {
    free(v16);
  }

  return v17;
}

- (int)enqueueCommandSync:(unsigned int)sync timestamp:(unint64_t)timestamp inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size responseTimestamp:(unint64_t *)responseTimestamp outputBuffer:(void *)outputBuffer inOutBufferSize:(unint64_t *)bufferSize options:(unsigned int)self0
{
  input[10] = *MEMORY[0x277D85DE8];
  if (![(AFKEndpointInterface *)self hasState:1])
  {
    [AFKEndpointInterface enqueueCommand:input timestamp:? inputBuffer:? inputBufferSize:? outputPayloadSize:? context:? options:?];
  }

  if (![(AFKEndpointInterface *)self hasState:2])
  {
    return -536870184;
  }

  kdebug_trace();
  v20[1] = v20;
  input[0] = sync;
  input[1] = timestamp;
  input[2] = options;
  input[3] = outputBuffer;
  input[4] = *bufferSize;
  LODWORD(outputCnt) = 2;
  result = IOConnectCallMethod(self->_connect, 7u, input, 5u, buffer, size, &v18, &outputCnt, 0, 0);
  if (!result)
  {
    if (outputCnt == 2)
    {
      if (v19 > *bufferSize)
      {
        return -536870210;
      }

      else
      {
        *bufferSize = v19;
        result = 0;
        if (responseTimestamp)
        {
          *responseTimestamp = v18;
        }
      }
    }

    else
    {
      return -536870199;
    }
  }

  return result;
}

- (int)enqueueReport:(unsigned int)report timestamp:(unint64_t)timestamp inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size options:(unsigned int)options
{
  input[10] = *MEMORY[0x277D85DE8];
  if (![(AFKEndpointInterface *)self hasState:1])
  {
    [AFKEndpointInterface enqueueCommand:input timestamp:? inputBuffer:? inputBufferSize:? outputPayloadSize:? context:? options:?];
  }

  if (![(AFKEndpointInterface *)self hasState:2])
  {
    return -536870184;
  }

  kdebug_trace();
  input[0] = report;
  input[1] = timestamp;
  input[2] = ~(4 * options) & 0x20 | options;
  return IOConnectCallMethod(self->_connect, 4u, input, 3u, buffer, size, 0, 0, 0, 0);
}

- (int)enqueueResponseForContext:(void *)context status:(int)status timestamp:(unint64_t)timestamp outputBuffer:(void *)buffer outputBufferSize:(unint64_t)size options:(unsigned int)options
{
  input[10] = *MEMORY[0x277D85DE8];
  if (![(AFKEndpointInterface *)self hasState:1])
  {
    [AFKEndpointInterface enqueueCommand:input timestamp:? inputBuffer:? inputBufferSize:? outputPayloadSize:? context:? options:?];
  }

  kdebug_trace();
  input[0] = context;
  input[1] = status;
  input[2] = timestamp;
  input[3] = options | 8;
  return IOConnectCallMethod(self->_connect, 3u, input, 4u, buffer, size, 0, 0, 0, 0);
}

- (int)enqueueDescriptor:(id)descriptor packetType:(unsigned int)type timestamp:(unint64_t)timestamp options:(unsigned int)options
{
  v24 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  if (![(AFKEndpointInterface *)self hasState:1])
  {
    v16 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *input = 0u;
    v14 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v17 = 134217984;
    v18 = 0;
    _os_log_send_and_compose_impl(v15, &v16, input, 80, &dword_23C487000, v14, 16, "assertion failure: [self hasState:(kAFKDispatchStateActiveStart)] -> %llu", &v17);
    _os_crash_msg();
    [AFKEndpointInterface activate:];
  }

  v11 = -536870206;
  if ([(AFKEndpointInterface *)self hasState:2])
  {
    [descriptorCopy token];
    kdebug_trace();
    if (descriptorCopy)
    {
      input[0] = type;
      input[1] = timestamp;
      *&v20 = [descriptorCopy token];
      manager = [descriptorCopy manager];
      *(&v20 + 1) = [manager regID];
      *&v21 = ~(options >> 2) & 8 | options;

      v11 = IOConnectCallScalarMethod(self->_connect, 6u, input, 5u, 0, 0);
      if (!v11)
      {
        [descriptorCopy handleEnqueue];
      }
    }
  }

  else
  {
    v11 = -536870184;
  }

  return v11;
}

- (void)dequeueDataMessage:(_IODataQueueMemory *)message
{
  v23 = *MEMORY[0x277D85DE8];
  dataSize = 0;
  v5 = IODataQueuePeek(message);
  if (v5)
  {
    v6 = v5;
    do
    {
      dataSize = v6->size;
      if (dataSize > 0xF)
      {
        v10 = v6->data[0];
        data = v6->data;
        v8 = v10;
        if (v10 <= 3)
        {
          if (v8 == 1)
          {
            [(AFKEndpointInterface *)self handleReport:data size:?];
            goto LABEL_7;
          }

          if (v8 == 2)
          {
            [(AFKEndpointInterface *)self handleCommand:data size:?];
            goto LABEL_7;
          }
        }

        else
        {
          switch(v8)
          {
            case 4:
              [(AFKEndpointInterface *)self handleDescriptor:data size:?];
              goto LABEL_7;
            case 8:
              [(AFKEndpointInterface *)self handleResponse:data size:?];
              goto LABEL_7;
            case 16:
              [(AFKEndpointInterface *)self handleQueue:data size:?];
              goto LABEL_7;
          }
        }

        v7 = _AFKUserLog(v5);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          regID = [(AFKEndpointInterface *)self regID];
          v13 = *data;
          *buf = 134218240;
          v20 = regID;
          v21 = 1024;
          v22 = v13;
          _os_log_error_impl(&dword_23C487000, v7, OS_LOG_TYPE_ERROR, "0x%llx: Unknown message type:0x%x", buf, 0x12u);
        }
      }

      else
      {
        v7 = _AFKUserLog(v5);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          regID2 = [(AFKEndpointInterface *)self regID];
          *buf = 134218240;
          v20 = regID2;
          v21 = 1024;
          v22 = dataSize;
          _os_log_error_impl(&dword_23C487000, v7, OS_LOG_TYPE_ERROR, "0x%llx: Data queue entry size:0x%x", buf, 0x12u);
        }
      }

LABEL_7:
      IODataQueueDequeue(message, 0, &dataSize);
      v5 = IODataQueuePeek(message);
      v6 = v5;
    }

    while (v5);
  }

  v14 = (message->queue + message->queueSize);
  if (atomic_load(v14))
  {
    atomic_fetch_add(v14, 0xFFFFFFFF);
    v16 = IOConnectCallScalarMethod(self->_connect, 8u, 0, 0, 0, 0);
    if (v16)
    {
      v17 = _AFKUserLog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(AFKEndpointInterface *)self regID];
        [AFKEndpointInterface dequeueDataMessage:];
      }
    }
  }
}

- (void)handleReport:(char *)report size:(unsigned int)size
{
  kdebug_trace();
  reportHandler = self->_reportHandler;
  if ((*report & 0x100) != 0)
  {
    (*(reportHandler + 2))(reportHandler, self, *(report + 1), *(report + 1), *(report + 3), *(report + 2));
    v8 = *(report + 3);

    [(AFKEndpointInterface *)self compleOOBBuffer:v8];
  }

  else
  {
    v7 = *(reportHandler + 2);

    v7();
  }
}

- (void)handleCommand:(char *)command size:(unsigned int)size
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*command & 0x100) != 0)
  {
    if (size <= 7)
    {
      [AFKEndpointInterface handleCommand:v11 size:?];
    }

    kdebug_trace();
    commandHandlerWithReturn = self->_commandHandlerWithReturn;
    if (commandHandlerWithReturn || (commandHandlerWithReturn = self->_commandHandler) != 0)
    {
      (*(commandHandlerWithReturn + 2))(commandHandlerWithReturn, self, *(command + 3), *(command + 1), *(command + 1), *(command + 5), *(command + 4), *(command + 4));
    }

    v9 = *(command + 5);

    [(AFKEndpointInterface *)self compleOOBBuffer:v9];
  }

  else
  {
    if (size <= 7)
    {
      [AFKEndpointInterface handleCommand:v11 size:?];
    }

    kdebug_trace();
    commandHandler = self->_commandHandlerWithReturn;
    if (commandHandler || (commandHandler = self->_commandHandler) != 0)
    {
      v7 = *(commandHandler + 2);

      v7();
    }
  }
}

- (void)handleResponse:(char *)response size:(unsigned int)size
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*response & 0x100) != 0)
  {
    if (size <= 7)
    {
      [AFKEndpointInterface handleResponse:v8 size:?];
    }

    v6 = *(response + 2);
    kdebug_trace();
    (*(self->_responseHandler + 2))();
    [(AFKEndpointInterface *)self compleOOBBuffer:*(response + 5)];
  }

  else
  {
    if (size <= 7)
    {
      [AFKEndpointInterface handleResponse:v8 size:?];
    }

    v6 = *(response + 2);
    kdebug_trace();
    (*(self->_responseHandler + 2))();
  }

  free(v6);
}

- (void)handleDescriptor:(char *)descriptor size:(unsigned int)size
{
  v31 = *MEMORY[0x277D85DE8];
  if (size <= 7)
  {
    [AFKEndpointInterface handleDescriptor:buf size:?];
  }

  kdebug_trace();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_descriptorManagers;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = *v20;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      if ([v10 regID] == *(descriptor + 3))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSSet *)v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_17;
    }

    if (descriptor[36])
    {
      v13 = off_278BBE7D0;
    }

    else
    {
      v13 = off_278BBE7E0;
    }

    v14 = [(__objc2_class *)*v13 withManager:v12 capacity:*(descriptor + 8) token:*(descriptor + 2)];
    if (v14)
    {
      (*(self->_descriptorHandler + 2))();
      goto LABEL_21;
    }

    v15 = _AFKUserLog(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      regID = [(AFKEndpointInterface *)self regID];
      v18 = *(descriptor + 2);
      v17 = *(descriptor + 3);
      *buf = 134218496;
      v26 = regID;
      v27 = 2048;
      v28 = v17;
      v29 = 2048;
      v30 = v18;
      _os_log_error_impl(&dword_23C487000, v15, OS_LOG_TYPE_ERROR, "0x%llx: Couldn't create descriptor for AFKDescMsg (regID:0x%llx token:0x%llx)", buf, 0x20u);
    }
  }

  else
  {
LABEL_10:

LABEL_17:
    v15 = _AFKUserLog(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(AFKEndpointInterface *)descriptor handleDescriptor:buf size:[(AFKEndpointInterface *)self regID], v15];
    }

    v12 = 0;
  }

  v14 = 0;
LABEL_21:
}

- (void)handleQueue:(char *)queue size:(unsigned int)size
{
  v9 = *MEMORY[0x277D85DE8];
  if (size <= 7)
  {
    [AFKEndpointInterface handleQueue:v8 size:?];
  }

  [(AFKEndpointInterface *)self dequeueDataMessage:*(queue + 3)];
  v6 = *(queue + 3);

  [(AFKEndpointInterface *)self compleOOBBuffer:v6];
}

- (int)compleOOBBuffer:(unint64_t)buffer
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = buffer;
  v5 = IOConnectCallMethod(self->_connect, 9u, input, 1u, 0, 0, 0, 0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v7 = _AFKUserLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      regID = [(AFKEndpointInterface *)self regID];
      v11 = 2048;
      bufferCopy = buffer;
      v13 = 1024;
      v14 = v6;
      _os_log_error_impl(&dword_23C487000, v7, OS_LOG_TYPE_ERROR, "0x%llx: kDataQueueFreeOOBMsgMethod (%llx):0x%x", buf, 0x1Cu);
    }
  }

  return v6;
}

- (int)startSession:(BOOL)session
{
  sessionCopy = session;
  input[10] = *MEMORY[0x277D85DE8];
  if (![(AFKEndpointInterface *)self hasState:1])
  {
    [AFKEndpointInterface enqueueCommand:input timestamp:? inputBuffer:? inputBufferSize:? outputPayloadSize:? context:? options:?];
  }

  if (![(AFKEndpointInterface *)self hasState:2])
  {
    return -536870184;
  }

  input[0] = sessionCopy;
  return IOConnectCallMethod(self->_connect, 5u, input, 1u, 0, 0, 0, 0, 0, 0);
}

- (void)initWithService:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: IOObjectRetain:0x%x", v3, v4);
}

- (void)initWithService:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: IORegistryEntryGetRegistryEntryID:0x%x", v3, v4);
}

- (void)activate:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: IOConnectSetNotificationPort:0x%x", v3, v4);
}

- (void)activate:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kOpenMethod:0x%x", v3, v4);
}

- (void)enqueueCommand:(void *)a1 timestamp:(_OWORD *)a2 inputBuffer:inputBufferSize:outputPayloadSize:context:options:.cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  v8 = OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_23C487000, v6, v7, "assertion failure: [self hasState:(kAFKDispatchStateActiveStart)] -> %llu");
  OUTLINED_FUNCTION_9(v8);
  __break(1u);
}

- (void)dequeueDataMessage:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_1(&dword_23C487000, "0x%llx: kDataQueueSpaceAvailableMethod:0x%x", v3, v4);
}

- (void)handleCommand:(void *)a1 size:(_OWORD *)a2 .cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  v8 = OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_23C487000, v6, v7, "assertion failure: size >= sizeof(command) -> %llu");
  OUTLINED_FUNCTION_9(v8);
  __break(1u);
}

- (void)handleResponse:(void *)a1 size:(_OWORD *)a2 .cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  v8 = OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_23C487000, v6, v7, "assertion failure: size >= sizeof(response) -> %llu");
  OUTLINED_FUNCTION_9(v8);
  __break(1u);
}

- (void)handleDescriptor:(void *)a1 size:(_OWORD *)a2 .cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_10(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_23C487000, v6, v7, "assertion failure: size >= sizeof(descMsg) -> %llu");
  _os_crash_msg();
  __break(1u);
}

- (void)handleDescriptor:(uint64_t)a3 size:(os_log_t)log .cold.2(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *(a1 + 24);
  *buf = 134218240;
  *(buf + 4) = a3;
  *(buf + 6) = 2048;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_23C487000, log, OS_LOG_TYPE_ERROR, "0x%llx: Couldn't find manager for AFKDescMsg (regID:0x%llx)", buf, 0x16u);
}

- (void)handleQueue:(void *)a1 size:(_OWORD *)a2 .cold.1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_0();
  v8 = OUTLINED_FUNCTION_1_0(v2, v3, v4, v5, &dword_23C487000, v6, v7, "assertion failure: size >= sizeof(queue) -> %llu");
  OUTLINED_FUNCTION_9(v8);
  __break(1u);
}

@end