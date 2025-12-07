@interface DiagnosticsTransport
- (DiagnosticsTransport)init;
- (void)setListeningPort:(const char *)port;
- (void)shutdown;
@end

@implementation DiagnosticsTransport

- (DiagnosticsTransport)init
{
  v7.receiver = self;
  v7.super_class = DiagnosticsTransport;
  v2 = [(DiagnosticsTransport *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.diagnostics_transport.queue", v3);
    transport_queue = v2->transport_queue;
    v2->transport_queue = v4;

    [(DiagnosticsTransport *)v2 setListeningPort:"com.apple.symptom_diagnostics"];
  }

  return v2;
}

- (void)setListeningPort:(const char *)port
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = xpcLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    portCopy = port;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagnosticsTransport started for service %s", buf, 0xCu);
  }

  if (self->listener)
  {
    v7 = xpcLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      listener = self->listener;
      *buf = 134217984;
      portCopy = listener;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "DiagnosticsTransport: already initialized: %p", buf, 0xCu);
    }
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277CCAE98]);
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:port];
    v11 = [v9 initWithMachServiceName:v10];
    v12 = self->listener;
    self->listener = v11;

    v13 = [[DiagnosticsServiceImpl alloc] initWithQueue:self->transport_queue];
    service = self->service;
    self->service = v13;

    v15 = self->listener;
    if (v15 && self->service)
    {
      [(NSXPCListener *)v15 setDelegate:?];
      v16 = dispatch_time(0, 500000000);
      transport_queue = self->transport_queue;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __41__DiagnosticsTransport_setListeningPort___block_invoke;
      v20[3] = &unk_278CF0220;
      v20[4] = self;
      v20[5] = port;
      dispatch_after(v16, transport_queue, v20);
    }

    else
    {
      self->listener = 0;

      v19 = xpcLogHandle(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, "DiagnosticsTransport: failing to create the diagnostics channel", buf, 2u);
      }
    }
  }
}

void __41__DiagnosticsTransport_setListeningPort___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = xpcLogHandle([*(*(a1 + 32) + 8) resume]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEFAULT, "started listener for service %s", &v4, 0xCu);
  }
}

- (void)shutdown
{
  if (self->listener)
  {
    [(DiagnosticsServiceImpl *)self->service shutdown];
    service = self->service;
    self->service = 0;

    listener = self->listener;
    self->listener = 0;
  }
}

@end