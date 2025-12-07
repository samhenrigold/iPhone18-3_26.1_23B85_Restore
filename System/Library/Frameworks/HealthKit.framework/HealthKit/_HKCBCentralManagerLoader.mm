@interface _HKCBCentralManagerLoader
- (_HKCBCentralManagerLoader)init;
- (void)centralManagerDidUpdateState:(id)state;
- (void)getCentralManagerWithCompletion:(id)completion;
@end

@implementation _HKCBCentralManagerLoader

- (_HKCBCentralManagerLoader)init
{
  v11.receiver = self;
  v11.super_class = _HKCBCentralManagerLoader;
  v2 = [(_HKCBCentralManagerLoader *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = HKCreateSerialDispatchQueue(v2, @"queue");
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = [objc_alloc(MEMORY[0x1E695D258]) initWithDelegate:v3 queue:v3->_queue];
    centralManager = v3->_centralManager;
    v3->_centralManager = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingHandlers = v3->_pendingHandlers;
    v3->_pendingHandlers = v8;
  }

  return v3;
}

- (void)getCentralManagerWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___HKCBCentralManagerLoader_getCentralManagerWithCompletion___block_invoke;
  v7[3] = &unk_1E73765F0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(queue, v7);
}

- (void)centralManagerDidUpdateState:(id)state
{
  v23 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if ([stateCopy state] == 5)
  {
    _HKInitializeLogging(5, v5);
    v6 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      pendingHandlers = self->_pendingHandlers;
      v8 = v6;
      *buf = 138412546;
      selfCopy = self;
      v21 = 2048;
      v22 = [(NSMutableArray *)pendingHandlers count];
      _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "%@ CBCentralManager did become available, %lu pending handlers", buf, 0x16u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = self->_pendingHandlers;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    [(NSMutableArray *)self->_pendingHandlers removeAllObjects];
  }
}

@end