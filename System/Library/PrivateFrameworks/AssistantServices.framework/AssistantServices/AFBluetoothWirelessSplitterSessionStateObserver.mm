@interface AFBluetoothWirelessSplitterSessionStateObserver
- (AFBluetoothWirelessSplitterSessionStateObserver)initWithQueue:(id)queue delegate:(id)delegate;
- (void)_invalidate;
- (void)_setState:(int64_t)state;
- (void)dealloc;
- (void)getStateWithCompletion:(id)completion;
- (void)invalidate;
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
- (void)notifyObserver:(id)observer didReceiveNotificationWithToken:(int)token;
@end

@implementation AFBluetoothWirelessSplitterSessionStateObserver

- (void)_invalidate
{
  notifyObserver = self->_notifyObserver;
  if (notifyObserver)
  {
    [(AFNotifyObserver *)notifyObserver invalidate];
    v4 = self->_notifyObserver;
    self->_notifyObserver = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
}

- (void)_setState:(int64_t)state
{
  v19 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state != state)
  {
    self->_state = state;
    v6 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      if (state > 2)
      {
        v8 = @"(unknown)";
      }

      else
      {
        v8 = off_1E73444E8[state];
      }

      v9 = v8;
      if (state > 2)
      {
        v10 = @"(unknown)";
      }

      else
      {
        v10 = off_1E73444E8[state];
      }

      v11 = v10;
      v13 = 136315650;
      v14 = "[AFBluetoothWirelessSplitterSessionStateObserver _setState:]";
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s state: %@ -> %@", &v13, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained bluetoothWirelessSplitterSessionStateObserver:self didChangeStateFrom:state to:state];
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AFBluetoothWirelessSplitterSessionStateObserver_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  observerCopy = observer;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__AFBluetoothWirelessSplitterSessionStateObserver_notifyObserver_didChangeStateFrom_to___block_invoke;
  v11[3] = &unk_1E73482A0;
  v11[4] = self;
  v12 = observerCopy;
  fromCopy = from;
  toCopy = to;
  v10 = observerCopy;
  dispatch_async(queue, v11);
}

void *__88__AFBluetoothWirelessSplitterSessionStateObserver_notifyObserver_didChangeStateFrom_to___block_invoke(void *result)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = result[4];
  if (v1[3] == result[5])
  {
    v2 = result;
    v3 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      v4 = v2[6];
      v5 = v2[7];
      v7 = 136315650;
      v8 = "[AFBluetoothWirelessSplitterSessionStateObserver notifyObserver:didChangeStateFrom:to:]_block_invoke";
      v9 = 2048;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s fromState = %llu, toState = %llu", &v7, 0x20u);
      v1 = v2[4];
    }

    if (v2[7])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    return [v1 _setState:v6];
  }

  return result;
}

- (void)notifyObserver:(id)observer didReceiveNotificationWithToken:(int)token
{
  observerCopy = observer;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__AFBluetoothWirelessSplitterSessionStateObserver_notifyObserver_didReceiveNotificationWithToken___block_invoke;
  block[3] = &unk_1E7348278;
  block[4] = self;
  v10 = observerCopy;
  tokenCopy = token;
  v8 = observerCopy;
  dispatch_async(queue, block);
}

void __98__AFBluetoothWirelessSplitterSessionStateObserver_notifyObserver_didReceiveNotificationWithToken___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24) == *(a1 + 40))
  {
    v2 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48);
      v4 = 136315394;
      v5 = "[AFBluetoothWirelessSplitterSessionStateObserver notifyObserver:didReceiveNotificationWithToken:]_block_invoke";
      v6 = 1024;
      v7 = v3;
      _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s token = %d", &v4, 0x12u);
    }
  }
}

- (void)getStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (AFSupportsWirelessSplitter_onceToken != -1)
    {
      dispatch_once(&AFSupportsWirelessSplitter_onceToken, &__block_literal_global_241_46199);
    }

    if (AFSupportsWirelessSplitter_supportsWirelessSplitter == 1)
    {
      queue = self->_queue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __74__AFBluetoothWirelessSplitterSessionStateObserver_getStateWithCompletion___block_invoke;
      v6[3] = &unk_1E7349838;
      v6[4] = self;
      v7 = completionCopy;
      dispatch_async(queue, v6);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)dealloc
{
  [(AFBluetoothWirelessSplitterSessionStateObserver *)self _invalidate];
  v3.receiver = self;
  v3.super_class = AFBluetoothWirelessSplitterSessionStateObserver;
  [(AFBluetoothWirelessSplitterSessionStateObserver *)&v3 dealloc];
}

- (AFBluetoothWirelessSplitterSessionStateObserver)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = AFBluetoothWirelessSplitterSessionStateObserver;
  v9 = [(AFBluetoothWirelessSplitterSessionStateObserver *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    if (AFSupportsWirelessSplitter_onceToken != -1)
    {
      dispatch_once(&AFSupportsWirelessSplitter_onceToken, &__block_literal_global_241_46199);
    }

    if (AFSupportsWirelessSplitter_supportsWirelessSplitter == 1)
    {
      v11 = [[AFNotifyObserver alloc] initWithName:@"com.apple.bluetooth.WirelessSplitterOn" options:1 queue:queueCopy delegate:v10];
      notifyObserver = v10->_notifyObserver;
      v10->_notifyObserver = v11;

      v13 = v10->_notifyObserver;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __74__AFBluetoothWirelessSplitterSessionStateObserver_initWithQueue_delegate___block_invoke;
      v15[3] = &unk_1E7348250;
      v16 = v10;
      [(AFNotifyObserver *)v13 getStateWithCompletion:v15];
    }
  }

  return v10;
}

uint64_t __74__AFBluetoothWirelessSplitterSessionStateObserver_initWithQueue_delegate___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[AFBluetoothWirelessSplitterSessionStateObserver initWithQueue:delegate:]_block_invoke";
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s initialState = %llu", &v7, 0x16u);
  }

  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return [*(a1 + 32) _setState:v5];
}

@end