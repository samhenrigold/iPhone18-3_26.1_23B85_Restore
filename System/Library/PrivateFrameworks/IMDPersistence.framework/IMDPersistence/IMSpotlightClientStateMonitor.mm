@interface IMSpotlightClientStateMonitor
- (IMSpotlightClientState)clientState;
- (IMSpotlightClientStateMonitor)initWithChangeHandler:(id)handler;
- (void)_updateClientState;
- (void)cancel;
- (void)dealloc;
@end

@implementation IMSpotlightClientStateMonitor

- (IMSpotlightClientStateMonitor)initWithChangeHandler:(id)handler
{
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = IMSpotlightClientStateMonitor;
  v5 = [(IMSpotlightClientStateMonitor *)&v23 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.imdpersistence.IMSpotlightClientStateMonitor", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = _Block_copy(handlerCopy);
    changeHandler = v5->_changeHandler;
    v5->_changeHandler = v11;

    objc_initWeak(&location, v5);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = sub_1B7B91C1C;
    v20 = &unk_1E7CBB650;
    objc_copyWeak(&v21, &location);
    v5->_clientStateToken = IMDispatchForNotify();
    v13 = v5->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B91C5C;
    block[3] = &unk_1E7CB6AE0;
    v16 = v5;
    dispatch_async(v13, block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  notify_cancel(self->_clientStateToken);
  v3.receiver = self;
  v3.super_class = IMSpotlightClientStateMonitor;
  [(IMSpotlightClientStateMonitor *)&v3 dealloc];
}

- (void)_updateClientState
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1B7AE1A44;
  v28 = sub_1B7AE2538;
  v29 = 0;
  v5 = objc_msgSend_synchronousSpotlightQueryProvider(IMDPersistenceService, a2, v2, v3);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1B7B91E5C;
  v23[3] = &unk_1E7CBB678;
  v23[4] = &v24;
  objc_msgSend_fetchSpotlightClientStateWithCompletion_(v5, v6, v23, v7);

  v11 = objc_msgSend_lock(self, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14);

  objc_storeStrong(&self->_clientState, v25[5]);
  if (self->_changeHandler)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B91E6C;
    block[3] = &unk_1E7CBB6A0;
    block[4] = self;
    block[5] = &v24;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v18 = objc_msgSend_lock(self, v15, v16, v17);
  objc_msgSend_unlock(v18, v19, v20, v21);

  _Block_object_dispose(&v24, 8);
}

- (IMSpotlightClientState)clientState
{
  v5 = objc_msgSend_lock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);

  v12 = objc_msgSend_copy(self->_clientState, v9, v10, v11);
  v16 = objc_msgSend_lock(self, v13, v14, v15);
  objc_msgSend_unlock(v16, v17, v18, v19);

  return v12;
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B91F68;
  block[3] = &unk_1E7CB6AE0;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end