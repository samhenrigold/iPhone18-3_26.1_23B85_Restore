@interface AVVoiceTriggerServerHysteresisNotifier
- (AVVoiceTriggerServerHysteresisNotifier)initWithSerialQueue:(id)queue;
- (BOOL)isPortActive:(unint64_t)active activePortsToken:(unint64_t)token;
- (id)addPortToMonitor:(unint64_t)monitor hysteresisDurationSeconds:(float)seconds notificationBlock:(id)block;
- (id)getPortManagerForType:(unint64_t)type;
- (void)dealloc;
- (void)processState:(unint64_t)state;
- (void)removePortToMonitor:(unint64_t)monitor;
- (void)sendState:(id)state;
- (void)stateChanged:(BOOL)changed;
@end

@implementation AVVoiceTriggerServerHysteresisNotifier

- (void)removePortToMonitor:(unint64_t)monitor
{
  v4 = [(AVVoiceTriggerServerHysteresisNotifier *)self getPortManagerForType:monitor];
  if (v4)
  {
    [(NSMutableArray *)self->_portsToMonitor removeObject:v4];
  }
}

- (id)addPortToMonitor:(unint64_t)monitor hysteresisDurationSeconds:(float)seconds notificationBlock:(id)block
{
  blockCopy = block;
  v9 = [(AVVoiceTriggerServerHysteresisNotifier *)self getPortManagerForType:monitor];
  if (!v9)
  {
    v10 = [AVVoiceTriggerServerPortManager alloc];
    *&v11 = seconds;
    v9 = [(AVVoiceTriggerServerPortManager *)v10 initWithPortType:monitor hysteresisDurationSeconds:blockCopy notificationBlock:v11];
    [(NSMutableArray *)self->_portsToMonitor addObject:v9];
  }

  return v9;
}

- (void)processState:(unint64_t)state
{
  v28 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  portsToMonitor = [(AVVoiceTriggerServerHysteresisNotifier *)self portsToMonitor];
  v6 = [portsToMonitor countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (v6)
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = *v16;
    *&v7 = 136315906;
    v14 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(portsToMonitor);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = -[AVVoiceTriggerServerHysteresisNotifier isPortActive:activePortsToken:](self, "isPortActive:activePortsToken:", [v11 portType], state);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          portType = [v11 portType];
          *buf = v14;
          v20 = "AVVoiceTriggerServer.mm";
          v21 = 1024;
          v22 = 385;
          v23 = 2048;
          v24 = portType;
          v25 = 1024;
          v26 = v12;
          _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d State may have changed for port: %lu current state: %d", buf, 0x22u);
        }

        [(AVVoiceTriggerServerHysteresisNotifier *)self stateChanged:v12 forPort:v11];
      }

      v6 = [portsToMonitor countByEnumeratingWithState:&v15 objects:v27 count:16];
    }

    while (v6);
  }
}

- (BOOL)isPortActive:(unint64_t)active activePortsToken:(unint64_t)token
{
  v4 = (token >> 1) & 1;
  if (active != 1)
  {
    LOBYTE(v4) = 0;
  }

  if (active == 2)
  {
    return (token & 0xC) != 0;
  }

  else
  {
    return v4;
  }
}

- (id)getPortManagerForType:(unint64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  portsToMonitor = [(AVVoiceTriggerServerHysteresisNotifier *)self portsToMonitor];
  v6 = [portsToMonitor countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(portsToMonitor);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 portType] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [portsToMonitor countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)sendState:(id)state
{
  stateCopy = state;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVVoiceTriggerServerHysteresisNotifier_sendState___block_invoke;
  block[3] = &unk_1E7ED02F0;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(queue, block);
}

uint64_t __52__AVVoiceTriggerServerHysteresisNotifier_sendState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 lastStateSent];

  return [v1 callNotificationBlock:v2];
}

- (void)stateChanged:(BOOL)changed
{
  changedCopy = changed;
  v5 = [(AVVoiceTriggerServerHysteresisNotifier *)self getPortManagerForType:1];
  [(AVVoiceTriggerServerHysteresisNotifier *)self stateChanged:changedCopy forPort:?];
}

- (void)dealloc
{
  [(NSMutableArray *)self->_portsToMonitor removeAllObjects];
  portsToMonitor = self->_portsToMonitor;
  self->_portsToMonitor = 0;

  queue = self->_queue;
  self->_queue = 0;

  v5.receiver = self;
  v5.super_class = AVVoiceTriggerServerHysteresisNotifier;
  [(AVVoiceTriggerServerHysteresisNotifier *)&v5 dealloc];
}

- (AVVoiceTriggerServerHysteresisNotifier)initWithSerialQueue:(id)queue
{
  v19 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = AVVoiceTriggerServerHysteresisNotifier;
  v6 = [(AVVoiceTriggerServerHysteresisNotifier *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    portsToMonitor = v7->_portsToMonitor;
    v7->_portsToMonitor = v8;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v7->_portsToMonitor;
      *buf = 136315650;
      v14 = "AVVoiceTriggerServer.mm";
      v15 = 1024;
      v16 = 315;
      v17 = 2048;
      v18 = v10;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d portMontior list: %p", buf, 0x1Cu);
    }
  }

  return v7;
}

@end