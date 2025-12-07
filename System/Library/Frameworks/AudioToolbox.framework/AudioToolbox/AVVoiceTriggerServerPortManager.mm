@interface AVVoiceTriggerServerPortManager
- (AVVoiceTriggerServerPortManager)initWithPortType:(unint64_t)type hysteresisDurationSeconds:(float)seconds notificationBlock:(id)block;
- (void)callNotificationBlock:(BOOL)block;
- (void)notifyStateChanged:(BOOL)changed onQueue:(id)queue;
@end

@implementation AVVoiceTriggerServerPortManager

- (void)notifyStateChanged:(BOOL)changed onQueue:(id)queue
{
  queueCopy = queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AVVoiceTriggerServerPortManager_notifyStateChanged_onQueue___block_invoke;
  block[3] = &unk_1E7ECDF50;
  changedCopy = changed;
  block[4] = self;
  v9 = queueCopy;
  v7 = queueCopy;
  dispatch_async(v7, block);
}

void __62__AVVoiceTriggerServerPortManager_notifyStateChanged_onQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) lastStateSent];
  if (v2 == 1)
  {
    v4 = *(a1 + 32);
    if (v3)
    {
      v5 = [*(a1 + 32) generation] + 1;

      [v4 setGeneration:v5];
    }

    else
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 32);

      [v12 callNotificationBlock:v11];
    }
  }

  else if (v3)
  {
    v6 = *(a1 + 32);
    v7 = [v6 generation] + 1;
    [v6 setGeneration:v7];
    [*(a1 + 32) hysteresisDurationSeconds];
    v9 = dispatch_time(0, (v8 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__AVVoiceTriggerServerPortManager_notifyStateChanged_onQueue___block_invoke_2;
    block[3] = &unk_1E7ECDF28;
    v10 = *(a1 + 40);
    block[4] = *(a1 + 32);
    block[5] = v7;
    v14 = *(a1 + 48);
    dispatch_after(v9, v10, block);
  }
}

void *__62__AVVoiceTriggerServerPortManager_notifyStateChanged_onQueue___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = [*(a1 + 32) generation];
  if (v2 == result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);

    return [v4 callNotificationBlock:v5];
  }

  return result;
}

- (void)callNotificationBlock:(BOOL)block
{
  blockCopy = block;
  v16 = *MEMORY[0x1E69E9840];
  if (self->_lastStateSent != block && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    portType = self->_portType;
    v10 = 136315906;
    v11 = "AVVoiceTriggerServer.mm";
    v12 = 1024;
    v13 = 213;
    v14 = 1024;
    *v15 = blockCopy;
    *&v15[4] = 2048;
    *&v15[6] = portType;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d setting cached active state: %d for port: %lu", &v10, 0x22u);
  }

  self->_lastStateSent = blockCopy;
  if (blockCopy)
  {
    v6 = "com.apple.coreaudio.speaker.active";
  }

  else
  {
    v6 = "com.apple.coreaudio.speaker.inactive";
  }

  notify_post(v6);
  if (self->_listeningEnabled && (notificationBlock = self->_notificationBlock) != 0)
  {
    notificationBlock[2](notificationBlock, self->_portType, blockCopy);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v8 = _Block_copy(self->_notificationBlock);
    listeningEnabled = self->_listeningEnabled;
    v10 = 136315906;
    v11 = "AVVoiceTriggerServer.mm";
    v12 = 1024;
    v13 = 229;
    v14 = 2048;
    *v15 = v8;
    *&v15[8] = 1024;
    *&v15[10] = listeningEnabled;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d not calling notificationBlock(%p), listening is : %d ", &v10, 0x22u);
  }
}

- (AVVoiceTriggerServerPortManager)initWithPortType:(unint64_t)type hysteresisDurationSeconds:(float)seconds notificationBlock:(id)block
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = AVVoiceTriggerServerPortManager;
  v9 = [(AVVoiceTriggerServerPortManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_portType = type;
    v9->_hysteresisDurationSeconds = seconds;
    v11 = [blockCopy copy];
    notificationBlock = v10->_notificationBlock;
    v10->_notificationBlock = v11;

    *&v10->_listeningEnabled = 1;
    v10->_generation = 0;
    if (type == 1)
    {
      v10->_listeningEnabled = 0;
    }
  }

  return v10;
}

@end