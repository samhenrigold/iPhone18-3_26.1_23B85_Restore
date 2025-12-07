@interface CLMonitorConfiguration
+ (CLMonitorConfiguration)configWithMonitorName:(NSString *)name queue:(dispatch_queue_t)queue eventHandler:(void *)eventHandler;
+ (id)_configWithMonitorName:(id)name;
+ (id)configWithMonitorName:(id)name onBehalfOfBundleIdentifier:(id)identifier queue:(id)queue eventHandler:(id)handler;
- (CLMonitorConfiguration)initWithName:(id)name path:(id)path onQueue:(id)queue eventHandler:(id)handler useMonitorQueueForVendingMonitor:(BOOL)monitor vendingHandler:(id)vendingHandler;
- (CLMonitorConfiguration)initWithName:(id)name path:(id)path onSilo:(id)silo eventHandler:(id)handler useMonitorQueueForVendingMonitor:(BOOL)monitor vendingHandler:(id)vendingHandler;
- (id)vendingHandler;
- (unint64_t)hash;
- (void)dealloc;
- (void)eventHandler;
- (void)setEventHandler:(id)handler;
- (void)setVendingHandler:(id)handler;
- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken;
- (void)vendMonitorWithIdentityAndAuthorizationAttributes:(id)attributes;
@end

@implementation CLMonitorConfiguration

+ (CLMonitorConfiguration)configWithMonitorName:(NSString *)name queue:(dispatch_queue_t)queue eventHandler:(void *)eventHandler
{
  if (eventHandler)
  {
    if (queue)
    {
      goto LABEL_3;
    }

LABEL_8:
    v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, name, queue);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CLMonitorConfiguration.m", 51, @"Monitoring queue is nil");
    if (name)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, name, queue);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CLMonitorConfiguration.m", 48, @"Monitoring event handler is nil");
  if (!queue)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (name)
  {
    goto LABEL_4;
  }

LABEL_9:
  v22 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, name, queue);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CLMonitorConfiguration.m", 54, @"Monitor name is nil");
LABEL_4:
  v10 = objc_alloc(MEMORY[0x1E69AD360]);
  v13 = objc_msgSend_initWithUnderlyingQueue_(v10, v11, queue, v12);
  v14 = [CLMonitorConfiguration alloc];
  v16 = objc_msgSend_initWithName_path_onSilo_eventHandler_useMonitorQueueForVendingMonitor_vendingHandler_(v14, v15, name, 0, v13, eventHandler, 1, 0);

  return v16;
}

+ (id)_configWithMonitorName:(id)name
{
  if (!name)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CLMonitorConfiguration.m", 68, @"Monitor name is nil");
  }

  v5 = objc_msgSend_sharedQueue(CLLocationManager, a2, name, v3);
  v6 = objc_alloc(MEMORY[0x1E69AD360]);
  v9 = objc_msgSend_initWithUnderlyingQueue_(v6, v7, v5, v8);
  v10 = [CLMonitorConfiguration alloc];
  v12 = objc_msgSend_initWithName_path_onSilo_eventHandler_useMonitorQueueForVendingMonitor_vendingHandler_(v10, v11, name, 0, v9, 0, 1, 0);

  return v12;
}

+ (id)configWithMonitorName:(id)name onBehalfOfBundleIdentifier:(id)identifier queue:(id)queue eventHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B620);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 68289538;
    v21[1] = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2114;
    selfCopy = self;
    v26 = 2082;
    v27 = objc_msgSend_UTF8String(identifier, v11, v12, v13);
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor monitor-config with onBehalfOfBundleId, self:%{public, location:escape_only}@, OnBehalfBundleId:%{public, location:escape_only}s}", v21, 0x26u);
  }

  v14 = objc_alloc(MEMORY[0x1E69AD360]);
  v17 = objc_msgSend_initWithUnderlyingQueue_(v14, v15, queue, v16);
  v18 = [CLMonitorConfiguration alloc];
  return objc_msgSend_initWithName_path_onSilo_eventHandler_useMonitorQueueForVendingMonitor_vendingHandler_(v18, v19, name, 0, v17, 0, 1, 0);
}

- (CLMonitorConfiguration)initWithName:(id)name path:(id)path onSilo:(id)silo eventHandler:(id)handler useMonitorQueueForVendingMonitor:(BOOL)monitor vendingHandler:(id)vendingHandler
{
  v40 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = CLMonitorConfiguration;
  v15 = [(CLMonitorConfiguration *)&v27 init];
  if (v15)
  {
    v16 = _os_activity_create(&dword_19B873000, "CL: CLMonitorConfiguration #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v26.opaque[0] = 0;
    v26.opaque[1] = 0;
    os_activity_scope_enter(v16, &v26);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B620);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v21 = NSStringFromSelector(a2);
      *buf = 68290050;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2082;
      v33 = "activity";
      v34 = 2114;
      v35 = v21;
      v36 = 2050;
      v37 = v15;
      v38 = 2114;
      nameCopy = name;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitorConfiguration #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, name:%{public, location:escape_only}@}", buf, 0x3Au);
    }

    v15->_name = objc_msgSend_copy(name, v18, v19, v20);
    v15->_path = objc_msgSend_copy(path, v22, v23, v24);
    v15->_silo = silo;
    v15->_useMonitorQueue = monitor;
    if (handler)
    {
      v15->_eventHandler = _Block_copy(handler);
    }

    if (vendingHandler)
    {
      v15->_vendingHandler = _Block_copy(vendingHandler);
    }

    os_activity_scope_leave(&v26);
  }

  return v15;
}

- (CLMonitorConfiguration)initWithName:(id)name path:(id)path onQueue:(id)queue eventHandler:(id)handler useMonitorQueueForVendingMonitor:(BOOL)monitor vendingHandler:(id)vendingHandler
{
  v13 = objc_alloc(MEMORY[0x1E69AD360]);
  v17 = objc_msgSend_initWithUnderlyingQueue_(v13, v14, queue, v15);

  return objc_msgSend_initWithName_path_onSilo_eventHandler_useMonitorQueueForVendingMonitor_vendingHandler_(self, v16, name, path, v17, handler, 1, 0);
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLMonitorConfiguration #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B620);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v6;
    v23 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitorConfiguration #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  self->_name = 0;
  self->_path = 0;

  self->_silo = 0;
  _Block_release(self->_eventHandler);
  self->_eventHandler = 0;
  _Block_release(self->_vendingHandler);
  self->_vendingHandler = 0;
  objc_msgSend_setIdentityToken_(self, v7, 0, v8);
  objc_msgSend_setStorageToken_(self, v9, 0, v10);
  objc_msgSend_setManager_(self, v11, 0, v12);
  v13.receiver = self;
  v13.super_class = CLMonitorConfiguration;
  [(CLMonitorConfiguration *)&v13 dealloc];
  os_activity_scope_leave(&state);
}

- (unint64_t)hash
{
  v4 = objc_msgSend_name(self, a2, v2, v3);

  return objc_msgSend_hash(v4, v5, v6, v7);
}

- (void)vendMonitorWithIdentityAndAuthorizationAttributes:(id)attributes
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLMonitorConfiguration #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B620);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 68290051;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2082;
    v29 = "activity";
    v30 = 2114;
    v31 = v11;
    v32 = 2050;
    selfCopy = self;
    v34 = 2113;
    attributesCopy = attributes;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitorConfiguration #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, vendingAttributes:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  v12 = objc_msgSend_manager(self, v8, v9, v10);
  objc_msgSend_removeIdentifiableClient_(v12, v13, self, v14);
  global_queue = objc_msgSend_queue(self->_silo, v15, v16, v17);
  if ((objc_msgSend_useMonitorQueue(self, v19, v20, v21) & 1) == 0)
  {
    global_queue = dispatch_get_global_queue(17, 0);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_19B891A08;
  v22[3] = &unk_1E753CF38;
  v22[4] = self;
  v22[5] = attributes;
  dispatch_async(global_queue, v22);
  os_activity_scope_leave(&state);
}

- (void)setVendingHandler:(id)handler
{
  v4 = _Block_copy(handler);
  objc_sync_enter(self);
  vendingHandler = self->_vendingHandler;
  if (vendingHandler)
  {
    _Block_release(vendingHandler);
  }

  self->_vendingHandler = v4;

  objc_sync_exit(self);
}

- (id)vendingHandler
{
  objc_sync_enter(self);
  vendingHandler = self->_vendingHandler;
  objc_sync_exit(self);
  return vendingHandler;
}

- (void)setEventHandler:(id)handler
{
  v4 = _Block_copy(handler);
  objc_sync_enter(self);
  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    _Block_release(eventHandler);
  }

  self->_eventHandler = v4;

  objc_sync_exit(self);
}

- (void)eventHandler
{
  objc_sync_enter(self);
  eventHandler = self->_eventHandler;
  objc_sync_exit(self);
  return eventHandler;
}

- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken
{
  v39[2] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  objc_msgSend_setIdentityToken_(self, v7, token, v8);
  objc_msgSend_setStorageToken_(self, v9, storageToken, v10);
  if (objc_msgSend_identityToken(self, v11, v12, v13) && objc_msgSend_storageToken(self, v14, v15, v16))
  {
    v38[0] = @"kCLMonitorIdentityTokenKey";
    v38[1] = @"kCLMonitorLedgerAccessKey";
    v39[0] = objc_msgSend_identityToken(self, v17, v18, v19);
    v39[1] = objc_msgSend_storageToken(self, v20, v21, v22);
    v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v39, v38, 2);
    objc_msgSend_vendMonitorWithIdentityAndAuthorizationAttributes_(self, v25, v24, v26);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B620);
    }

    v27 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v31[0] = 68289538;
      v31[1] = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2114;
      selfCopy = self;
      v36 = 2114;
      v37 = objc_msgSend_name(self, v28, v29, v30);
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor completion handler called, self:%{public, location:escape_only}@, monitor:%{public, location:escape_only}@}", v31, 0x26u);
    }
  }

  objc_sync_exit(self);
}

@end