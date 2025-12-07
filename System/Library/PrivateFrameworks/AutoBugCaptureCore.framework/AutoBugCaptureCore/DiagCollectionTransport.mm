@interface DiagCollectionTransport
- (DiagCollectionTransport)init;
- (void)dealloc;
- (void)setListeningPort:(const char *)port;
- (void)shutdown;
@end

@implementation DiagCollectionTransport

- (DiagCollectionTransport)init
{
  v7.receiver = self;
  v7.super_class = DiagCollectionTransport;
  v2 = [(DiagCollectionTransport *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.autobugcapture.collection_transport", v3);
    transport_queue = v2->transport_queue;
    v2->transport_queue = v4;

    [(DiagCollectionTransport *)v2 setListeningPort:"com.apple.symptom_diagnostics_collection"];
  }

  return v2;
}

- (void)dealloc
{
  v3 = xpcLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_INFO, "deallocating DiagCollectionTransport", buf, 2u);
  }

  [(DiagCollectionTransport *)self shutdown];
  v4.receiver = self;
  v4.super_class = DiagCollectionTransport;
  [(DiagCollectionTransport *)&v4 dealloc];
}

- (void)setListeningPort:(const char *)port
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = xpcLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315138;
    portCopy3 = port;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "DiagCollectionTransport started for service %s", &v20, 0xCu);
  }

  if (self->listener)
  {
    v7 = xpcLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      listener = self->listener;
      v20 = 134217984;
      portCopy3 = listener;
      v9 = "listener already initialized: %p";
      v10 = v7;
      v11 = OS_LOG_TYPE_INFO;
LABEL_12:
      _os_log_impl(&dword_241804000, v10, v11, v9, &v20, 0xCu);
    }
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CCAE98]);
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:port];
    v14 = [v12 initWithMachServiceName:v13];
    v15 = self->listener;
    self->listener = v14;

    v16 = [[DiagCollectionServiceImpl alloc] initWithQueue:self->transport_queue];
    service = self->service;
    self->service = v16;

    v18 = self->listener;
    if (v18 && self->service)
    {
      [(NSXPCListener *)v18 setDelegate:?];
      v7 = xpcLogHandle([(NSXPCListener *)self->listener resume]);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315138;
        portCopy3 = port;
        v9 = "started listener for service %s";
        v10 = v7;
        v11 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_12;
      }
    }

    else
    {
      self->listener = 0;

      v7 = xpcLogHandle(v19);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315138;
        portCopy3 = port;
        v9 = "failed to create listener for service %s";
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
        goto LABEL_12;
      }
    }
  }
}

- (void)shutdown
{
  if (self->listener)
  {
    v3 = xpcLogHandle(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "shutting down service listener", v6, 2u);
    }

    [(DiagCollectionServiceImpl *)self->service shutdown];
    service = self->service;
    self->service = 0;

    listener = self->listener;
    self->listener = 0;
  }
}

@end