@interface PSDaemon
- (PSDaemon)initWithDispatchQueue:(id)queue;
- (id)initInProcess;
- (void)dealloc;
@end

@implementation PSDaemon

- (PSDaemon)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = PSDaemon;
  v6 = [(PSDaemon *)&v19 init];
  v8 = v6;
  if (v6)
  {
    v9 = _polarisdLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "init", v18, 2u);
    }

    v10 = [[PLSDevice alloc] initWithContext:0];
    device = v8->_device;
    v8->_device = v10;

    v8->_buffer_service_manager = MEMORY[0x25F8C8B70]();
    v8->_comms_server = ps_create_comms_server();
    v12 = +[PLSSettings currentSettings];
    [v12 enableRingBufferLogger];

    v13 = +[PLSSettings currentSettings];
    [v13 enableEntitlementChecks];

    v14 = +[PLSSettings currentSettings];
    [v14 enablePerResourceEntitlementChecks];

    _os_feature_enabled_impl();
    factory_with_options = ps_buffer_create_factory_with_options();
    v8->_resource_factory = factory_with_options;
    v8->_ca_server = ps_ca_create_server(factory_with_options, v16);
    v8->_gsm = ps_gsm_create_shared(0x400uLL, 0x400uLL);
    objc_storeStrong(&death_notifier_callback_queue, queue);
    ps_death_notifier_register_callback_for_death_notification();
    ps_telemetry_init_daemon();
    ps_liveness_server_init(1024, 0x100000);
  }

  return v8;
}

- (id)initInProcess
{
  v16.receiver = self;
  v16.super_class = PSDaemon;
  v2 = [(PSDaemon *)&v16 init];
  v4 = v2;
  if (v2)
  {
    v5 = _polarisdLogSharedInstance(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 0;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEFAULT, "initInProcess", v15, 2u);
    }

    v4->_buffer_service_manager = MEMORY[0x25F8C8B70]();
    v4->_comms_server = ps_create_comms_server();
    v6 = +[PLSSettings currentSettings];
    [v6 enableRingBufferLogger];

    v7 = +[PLSSettings currentSettings];
    [v7 enableEntitlementChecks];

    _os_feature_enabled_impl();
    v4->_resource_factory = ps_buffer_create_factory_with_options();
    v8 = +[PLSSettings currentSettings];
    numGSTsInSharedGSM = [v8 numGSTsInSharedGSM];

    v10 = +[PLSSettings currentSettings];
    numSourcesInSharedGSM = [v10 numSourcesInSharedGSM];

    v4->_gsm = ps_gsm_create_shared(numGSTsInSharedGSM, numSourcesInSharedGSM);
    ps_telemetry_init_daemon();
    ps_liveness_server_init(1024, 0x100000);
    xpc_server = v4->_xpc_server;
    v4->_xpc_server = 0;

    xpc_listener = v4->_xpc_listener;
    v4->_xpc_listener = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3 = _polarisdLogSharedInstance(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating PSDaemon", buf, 2u);
  }

  v4 = ps_liveness_server_destroy();
  ps_telemetry_destroy_daemon(v4, v5);
  ps_gsm_remove_gsm(&self->_gsm->var0);
  ps_ca_destroy_server(self->_ca_server);
  ps_buffer_delete_factory();
  ps_delete_comms_server();
  v6.receiver = self;
  v6.super_class = PSDaemon;
  [(PSDaemon *)&v6 dealloc];
}

@end