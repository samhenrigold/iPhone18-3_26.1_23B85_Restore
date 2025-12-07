@interface RTAIDManagerCallStateReporter
- (RTAIDManagerCallStateReporter)init;
- (void)callObserver:(id)observer callChanged:(id)changed;
- (void)postInit;
@end

@implementation RTAIDManagerCallStateReporter

- (void)callObserver:(id)observer callChanged:(id)changed
{
  v18 = *MEMORY[0x29EDCA608];
  observerCopy = observer;
  calls = [observerCopy calls];
  v7 = [calls count];

  if (v7)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    calls2 = [observerCopy calls];
    v9 = [calls2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(calls2);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([v12 hasConnected] && (objc_msgSend(v12, "isOnHold") & 1) == 0)
          {
            atomic_store(1u, &self->_callConnected);

            goto LABEL_14;
          }
        }

        v9 = [calls2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  atomic_store(0, &self->_callConnected);
LABEL_14:
}

- (void)postInit
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8530]);
  [(CXCallObserver *)v3 setDelegate:self queue:0];
  callObserver = self->_callObserver;
  self->_callObserver = v3;
}

- (RTAIDManagerCallStateReporter)init
{
  v13 = *MEMORY[0x29EDCA608];
  v8.receiver = self;
  v8.super_class = RTAIDManagerCallStateReporter;
  v2 = [(RTAIDManagerCallStateReporter *)&v8 init];
  if (v2)
  {
    v3 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __37__RTAIDManagerCallStateReporter_init__block_invoke;
    block[3] = &unk_29EE52618;
    v7 = v2;
    dispatch_after(v3, MEMORY[0x29EDCA578], block);
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v4 = rtaid::get_log(void)::rtaid_os_log;
    if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "ManagerCallState.mm";
      v11 = 1024;
      v12 = 40;
      _os_log_impl(&dword_296C34000, v4, OS_LOG_TYPE_DEFAULT, "%s:%-5d initWithCallReporterBlock setup", buf, 0x12u);
    }
  }

  return v2;
}

@end