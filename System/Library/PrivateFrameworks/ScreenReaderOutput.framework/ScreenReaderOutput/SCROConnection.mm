@interface SCROConnection
+ (BOOL)inUnitTests;
+ (void)_addConnectionToRunLoop:(id)loop;
+ (void)_configServer;
+ (void)_configServerWithMachServiceName:(char *)name;
+ (void)_createConnectionRunLoop;
+ (void)_unconfigServerAndRetry:(BOOL)retry;
+ (void)initialize;
- (SCROConnection)initWithCoder:(id)coder;
- (SCROConnection)initWithHandlerType:(int)type delegate:(id)delegate;
- (id)handlerArrayValueForKey:(int)key;
- (id)handlerValueForKey:(int)key;
- (id)handlerValueForKey:(int)key withObject:(id)object;
- (int)performHandlerActionForKey:(int)key;
- (int)registerHandlerCallbackForKey:(int)key;
- (int)sendEvent:(id)event;
- (int)setHandlerValue:(id)value forKey:(int)key;
- (void)_ping;
- (void)_startConnection;
- (void)_stopConnection;
- (void)invalidate;
@end

@implementation SCROConnection

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v4 = _Lock_0;
    _Lock_0 = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v6 = _ConfigLock;
    _ConfigLock = v5;

    v7 = MEMORY[0x277CBF158];
    _PendingConnections = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
    _ActiveConnections = CFSetCreateMutable(0, 0, v7);
    v8 = MEMORY[0x277CCACC8];

    [v8 detachNewThreadSelector:sel__createConnectionRunLoop toTarget:self withObject:0];
  }
}

+ (void)_createConnectionRunLoop
{
  memset(&context, 0, 72);
  context.perform = _addConnections;
  v3 = CFRunLoopSourceCreate(0, 0, &context);
  v8.version = 0;
  memset(&v8.retain, 0, 24);
  v8.info = self;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFRunLoopTimerCreate(0, Current + 630720000.0, 630720000.0, 0, 0, _retryHandler, &v8);
  [_Lock_0 lock];
  _RetryState_2 = 0xC1E6CEAF20000000;
  _ShouldLogDeath = 1;
  _ShouldLogRebirth = 0;
  _ConnectionSource = v3;
  _ConnectionRetryTimer = v5;
  _ConnectionRunLoop = CFRunLoopGetCurrent();
  CFRunLoopAddSource(_ConnectionRunLoop, _ConnectionSource, *MEMORY[0x277CBF058]);
  CFRunLoopAddTimer(_ConnectionRunLoop, _ConnectionRetryTimer, *MEMORY[0x277CBF048]);
  CFRunLoopSourceSignal(_ConnectionSource);
  CFRunLoopWakeUp(_ConnectionRunLoop);
  [_Lock_0 unlock];
  v6 = objc_autoreleasePoolPush();
  [self _configServer];
  objc_autoreleasePoolPop(v6);
  while (1)
  {
    v7 = objc_autoreleasePoolPush();
    CFRunLoopRun();
    objc_autoreleasePoolPop(v7);
  }
}

+ (BOOL)inUnitTests
{
  if (inUnitTests_onceToken != -1)
  {
    +[SCROConnection inUnitTests];
  }

  return inUnitTests_InUnitTests;
}

Class __29__SCROConnection_inUnitTests__block_invoke()
{
  result = NSClassFromString(&cfstr_Scrolocalconne.isa);
  inUnitTests_InUnitTests = result != 0;
  return result;
}

+ (void)_configServer
{
  if (NSClassFromString(&cfstr_Scrolocalconne.isa))
  {
    v3 = "com.apple.scrod.unittest";
  }

  else
  {
    v3 = "com.apple.scrod";
  }

  [self _configServerWithMachServiceName:v3];
}

+ (void)_configServerWithMachServiceName:(char *)name
{
  if ([_ConfigLock tryLock])
  {
    if (_IsServerConfigured)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      if (_ConnectionRunLoop)
      {
        v6 = *MEMORY[0x277D85F48];
        HIDWORD(v15) = 0;
        v7 = bootstrap_look_up(*MEMORY[0x277D85F18], name, &v15 + 1);
        [_Lock_0 lock];
        _ServerPort = HIDWORD(v15);
        [_Lock_0 unlock];
        if (v7)
        {
          if (v7 == 1102)
          {
            inUnitTests = [objc_opt_class() inUnitTests];
            if ((inUnitTests & 1) == 0)
            {
              v9 = _SCROD_LOG(inUnitTests);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                [(SCROConnection *)name _configServerWithMachServiceName:v9];
              }
            }
          }
        }

        else
        {
          _DeathSource = MSHCreateMachServerSource();
          if (_DeathSource)
          {
            LODWORD(v15) = 0;
            v11 = _ServerPort;
            v12 = MSHGetMachPortFromSource();
            mach_port_request_notification(v6, v11, 72, 0, v12, 0x15u, &v15);
            CFRunLoopAddSource(_ConnectionRunLoop, _DeathSource, *MEMORY[0x277CBF048]);
            _IsServerConfigured = 1;
            v13 = _ConnectionRetryTimer;
            Current = CFAbsoluteTimeGetCurrent();
            CFRunLoopTimerSetNextFireDate(v13, Current + 630720000.0);
            CFSetApplyFunction(_ActiveConnections, _startConnection, 0);
            CFRunLoopSourceSignal(_ConnectionSource);
            CFRunLoopWakeUp(_ConnectionRunLoop);
            if (_ShouldLogRebirth == 1)
            {
              _ShouldLogRebirth = 0;
              fwrite("Screen Reader Output Server: CONNECTED\n", 0x27uLL, 1uLL, *MEMORY[0x277D85DF8]);
            }

            v5 = 0;
            _ShouldLogDeath = 1;
            goto LABEL_19;
          }

          NSLog(&cfstr_ErrorCouldNotC.isa);
        }

        v5 = 1;
      }
    }

LABEL_19:
    [_ConfigLock unlock];
    if (v5)
    {
      [self _unconfigServerAndRetry:1];
    }

    return;
  }

  if (*&_RetryState_1 < 10.0)
  {
    v10 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SCROConnection__configServerWithMachServiceName___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
  }
}

+ (void)_unconfigServerAndRetry:(BOOL)retry
{
  retryCopy = retry;
  [_ConfigLock lock];
  if (_IsServerConfigured == 1)
  {
    CFSetApplyFunction(_ActiveConnections, _stopConnection, 0);
  }

  _IsServerConfigured = 0;
  if (_DeathSource)
  {
    CFRunLoopSourceInvalidate(_DeathSource);
    CFRelease(_DeathSource);
    _DeathSource = 0;
  }

  [_Lock_0 lock];
  if (_ServerPort)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], _ServerPort);
    _ServerPort = 0;
  }

  [_Lock_0 unlock];
  if (retryCopy)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - *&_RetryState_2 <= 60.0)
    {
      ++_RetryState_0;
      HIDWORD(v5) = -858993459 * _RetryState_0;
      LODWORD(v5) = -858993459 * _RetryState_0;
      if ((v5 >> 1) <= 0x19999999)
      {
        _RetryState_0 = 0;
        v6 = *&_RetryState_1 + *&_RetryState_1;
        *&_RetryState_1 = *&_RetryState_1 + *&_RetryState_1;
        goto LABEL_12;
      }
    }

    else
    {
      _RetryState_1 = 0x3F847AE147AE147BLL;
      _RetryState_0 = 1;
    }

    v6 = *&_RetryState_1;
LABEL_12:
    if (v6 > 20.0)
    {
      _RetryState_1 = 0x4034000000000000;
    }

    _RetryState_2 = *&Current;
    v7 = _ConnectionRetryTimer;
    v8 = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(v7, v8 + *&_RetryState_1);
    if (_ShouldLogDeath == 1)
    {
      _ShouldLogDeath = 0;
      fwrite("Screen Reader Output Server: NOT AVAILABLE\n", 0x2BuLL, 1uLL, *MEMORY[0x277D85DF8]);
    }
  }

  _ShouldLogRebirth = 1;
  [_ConfigLock unlock];
}

+ (void)_addConnectionToRunLoop:(id)loop
{
  loopCopy = loop;
  [self _configServer];
  [_Lock_0 lock];
  CFSetSetValue(_PendingConnections, loopCopy);

  if (_ConnectionRunLoop)
  {
    CFRunLoopSourceSignal(_ConnectionSource);
    CFRunLoopWakeUp(_ConnectionRunLoop);
  }

  v5 = _Lock_0;

  [v5 unlock];
}

- (SCROConnection)initWithHandlerType:(int)type delegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = SCROConnection;
  v7 = [(SCROConnection *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_handlerType = type;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    [objc_opt_class() _addConnectionToRunLoop:v8];
  }

  return v8;
}

- (void)invalidate
{
  invalidationSource = self->_invalidationSource;
  if (invalidationSource)
  {
    v3 = _ConnectionRunLoop == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    CFRunLoopSourceSignal(invalidationSource);
    v4 = _ConnectionRunLoop;

    CFRunLoopWakeUp(v4);
  }
}

- (void)_startConnection
{
  v2 = atomic_load(&self->_isConnectionStarted);
  if ((v2 & 1) == 0)
  {
    [_Lock_0 lock];
    if (!_ServerPort)
    {
      inUnitTests = [objc_opt_class() inUnitTests];
      if ((inUnitTests & 1) == 0)
      {
        v6 = _SCROD_LOG(inUnitTests);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [(SCROConnection *)v6 _startConnection];
        }
      }

      [_Lock_0 unlock];
      goto LABEL_16;
    }

    v16 = 0;
    v4 = _SCRORegisterWithServer(_ServerPort, 19, &self->_pingPort, &self->_identifier, &v16);
    [_Lock_0 unlock];
    if (v4)
    {
      NSLog(&cfstr_ErrorCouldNotR.isa);
LABEL_16:
      [(SCROConnection *)self invalidate];
      return;
    }

    if (v16 == 3)
    {
      NSLog(&cfstr_ErrorVersionMi.isa);
      goto LABEL_16;
    }

    v7 = MSHCreateMIGServerSource();
    self->_pingSource = v7;
    if (!v7)
    {
      NSLog(&cfstr_ErrorCouldNotC_0.isa);
      goto LABEL_16;
    }

    context.version = 0;
    memset(&context.copyDescription, 0, 40);
    context.info = self;
    context.retain = MEMORY[0x277CBE558];
    context.release = MEMORY[0x277CBE550];
    context.perform = _invalidateConnection;
    self->_invalidationSource = CFRunLoopSourceCreate(0, 0, &context);
    v8 = *MEMORY[0x277CBF048];
    CFRunLoopAddSource(_ConnectionRunLoop, self->_pingSource, *MEMORY[0x277CBF048]);
    CFRunLoopAddSource(_ConnectionRunLoop, self->_invalidationSource, v8);
    atomic_store(1u, &self->_isConnectionStarted);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      v11 = _ConnectionRunLoop;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __34__SCROConnection__startConnection__block_invoke;
      v13[3] = &unk_279B74088;
      v13[4] = self;
      v14 = v10;
      v12 = v10;
      CFRunLoopPerformBlock(v11, v8, v13);
      CFRunLoopWakeUp(_ConnectionRunLoop);
    }
  }
}

void __34__SCROConnection__startConnection__block_invoke(uint64_t a1)
{
  v2 = [[SCROCallback alloc] initWithKey:3 object:*(a1 + 32)];
  [(SCROCallback *)v2 postToHandler:*(a1 + 40)];
}

- (void)_stopConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = atomic_load(&self->_isConnectionStarted);
  v9 = WeakRetained;
  if ((v4 & 1) != 0 && WeakRetained)
  {
    v5 = [[SCROCallback alloc] initWithKey:4 object:self];
    [(SCROCallback *)v5 postToHandler:v9];
  }

  atomic_store(0, &self->_isConnectionStarted);
  pingSource = self->_pingSource;
  if (pingSource)
  {
    CFRunLoopSourceInvalidate(pingSource);
    CFRelease(self->_pingSource);
    self->_pingSource = 0;
  }

  invalidationSource = self->_invalidationSource;
  if (invalidationSource)
  {
    CFRunLoopSourceInvalidate(invalidationSource);
    CFRelease(self->_invalidationSource);
    self->_invalidationSource = 0;
  }

  pingPort = self->_pingPort;
  if (pingPort)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], pingPort, 1u, -1);
    self->_pingPort = 0;
  }
}

- (int)sendEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  memset(v20, 0, 512);
  v18 = 0;
  *&v17[1] = 0;
  v17[0] = 0;
  memset(v19, 0, 512);
  v16 = 0;
  v14 = 0;
  v15 = 0;
  mainDictionary = [eventCopy mainDictionary];
  v6 = mainDictionary;
  v7 = atomic_load(&self->_isConnectionStarted);
  if ((v7 & 1) == 0)
  {
    v9 = 1;
    goto LABEL_30;
  }

  v8 = SCROSerializeWrapper(mainDictionary, 4096, v20, &v18, &v17[1], v17);
  LODWORD(v14) = v8;
  if (v8)
  {
    NSLog(&cfstr_ErrorWhileSeri.isa, v8);
LABEL_4:
    v9 = v14;
    goto LABEL_30;
  }

  [_Lock_0 lock];
  if (_ServerPort)
  {
    v10 = _SCROSendEvent(_ServerPort, 6000, self->_handlerType, v20, v18, *&v17[1], v17[0], v19, &v16, &v15, &v14 + 1, &v14);
    [_Lock_0 unlock];
    if (v17[0] && *&v17[1])
    {
      munmap(*&v17[1], v17[0]);
    }

    if (!v10)
    {
      if (v14)
      {
        NSLog(&cfstr_ErrorReturnedF.isa, v14);
        if (HIDWORD(v14) && v15)
        {
          munmap(v15, HIDWORD(v14));
        }

        goto LABEL_4;
      }

      if (v16 | HIDWORD(v14))
      {
        cf = 0;
        v11 = SCROUnserializeWrapper(v19, v16, v15, HIDWORD(v14), &cf);
        LODWORD(v14) = v11;
        if (HIDWORD(v14) && v15)
        {
          munmap(v15, HIDWORD(v14));
          v11 = v14;
        }

        if (v11)
        {
          NSLog(&cfstr_ErrorWhileDese.isa, v11);
          goto LABEL_4;
        }

        if (cf)
        {
          [eventCopy setClaimDictionary:?];
          CFRelease(cf);
        }
      }

      v9 = 0;
      goto LABEL_30;
    }

    NSLog(&cfstr_ErrorWhileSend.isa, v10);
    v9 = 1;
    if (HIDWORD(v14) && v15)
    {
      munmap(v15, HIDWORD(v14));
    }
  }

  else
  {
    [_Lock_0 unlock];
    v9 = 1;
    if (v17[0] && *&v17[1])
    {
      munmap(*&v17[1], v17[0]);
    }
  }

LABEL_30:

  return v9;
}

- (int)registerHandlerCallbackForKey:(int)key
{
  v8 = 0;
  v3 = atomic_load(&self->_isConnectionStarted);
  if ((v3 & 1) == 0)
  {
    return 1;
  }

  [_Lock_0 lock];
  if (!_ServerPort)
  {
    [_Lock_0 unlock];
    return 1;
  }

  v6 = _SCRORegisterForCallback(_ServerPort, 0x1770u, self->_identifier, self->_handlerType, key, &v8);
  [_Lock_0 unlock];
  if (v6)
  {
    NSLog(&cfstr_ErrorWhileSend_0.isa, v6);
    return 1;
  }

  if (!v8)
  {
    return 0;
  }

  NSLog(&cfstr_ErrorReturnedF_0.isa, v8);
  return v8;
}

- (int)setHandlerValue:(id)value forKey:(int)key
{
  v4 = *&key;
  v17 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v7 = valueCopy;
  v15 = 0;
  memset(v16, 0, 512);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v8 = atomic_load(&self->_isConnectionStarted);
  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = SCROSerializeWrapper(valueCopy, 4096, v16, &v14, &v13[1], v13);
  v10 = v9;
  v15 = v9;
  if (v9)
  {
    NSLog(&cfstr_ErrorWhileSeri.isa, v9);
    goto LABEL_14;
  }

  [_Lock_0 lock];
  if (_ServerPort)
  {
    v11 = _SCROSetValueForKey(_ServerPort, 6000, self->_handlerType, v4, v16, v14, *&v13[1], v13[0], &v15);
    [_Lock_0 unlock];
    if (v13[0] && *&v13[1])
    {
      munmap(*&v13[1], v13[0]);
    }

    if (v11)
    {
      NSLog(&cfstr_ErrorWhileSend_1.isa, v11);
LABEL_13:
      v10 = 1;
      goto LABEL_14;
    }

    if (v15)
    {
      NSLog(&cfstr_ErrorReturnedF_1.isa, v15);
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    [_Lock_0 unlock];
    v10 = 1;
    if (v13[0] && *&v13[1])
    {
      munmap(*&v13[1], v13[0]);
      goto LABEL_13;
    }
  }

LABEL_14:

  return v10;
}

- (id)handlerArrayValueForKey:(int)key
{
  v3 = [(SCROConnection *)self handlerValueForKey:*&key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)handlerValueForKey:(int)key
{
  v3 = MEMORY[0x28223BE20](self, a2, *&key);
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  memset(v17, 0, 512);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  v5 = atomic_load((v3 + 48));
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v6 = v4;
  v7 = v3;
  [_Lock_0 lock];
  if (!_ServerPort)
  {
    [_Lock_0 unlock];
    goto LABEL_8;
  }

  v8 = _SCROGetValueForKey(_ServerPort, 6000, *(v7 + 36), v6, v17, &v15, &v14[1], v14, &v16);
  [_Lock_0 unlock];
  if (v8)
  {
    NSLog(&cfstr_ErrorWhileGett.isa, v8);
    v9 = 0;
    v10 = v14[0];
    if (v14[0] && *&v14[1])
    {
LABEL_6:
      munmap(*&v14[1], v10);
LABEL_8:
      v9 = 0;
    }
  }

  else if (v16)
  {
    NSLog(&cfstr_ErrorReturnedF_2.isa, v16);
    v9 = 0;
    v10 = v14[0];
    if (v14[0] && *&v14[1])
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v15 | v14[0])
    {
      v12 = SCROUnserializeWrapper(v17, v15, *&v14[1], v14[0], &v13);
      v16 = v12;
      if (v14[0] && *&v14[1])
      {
        munmap(*&v14[1], v14[0]);
        v12 = v16;
      }

      if (v12)
      {
        NSLog(&cfstr_ErrorWhileDese.isa, v12);
        goto LABEL_8;
      }
    }

    v9 = v13;
  }

  return v9;
}

- (id)handlerValueForKey:(int)key withObject:(id)object
{
  v4 = MEMORY[0x28223BE20](self, a2, *&key);
  v6 = v5;
  v7 = v4;
  v27 = *MEMORY[0x277D85DE8];
  v9 = v8;
  v10 = v9;
  v24 = 0;
  memset(v26, 0, 512);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  memset(__dst, 0, 512);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  v11 = atomic_load((v7 + 48));
  if ((v11 & 1) == 0)
  {
    goto LABEL_4;
  }

  v12 = SCROSerializeWrapper(v9, 4096, v26, &v23, &v22[1], v22);
  v24 = v12;
  if (v12)
  {
    NSLog(&cfstr_ErrorWhileSeri_0.isa, v12);
LABEL_4:
    v13 = 0;
    goto LABEL_5;
  }

  [_Lock_0 lock];
  if (_ServerPort)
  {
    v15 = _SCROGetValueForKeyWithObject(_ServerPort, 6000, *(v7 + 36), v6, v26, v23, v22[1], v22[0], __dst, &v21, &v20[1], v20, &v24);
    [_Lock_0 unlock];
    if (v22[0] && *&v22[1])
    {
      munmap(*&v22[1], v22[0]);
    }

    if (v15)
    {
      NSLog(&cfstr_ErrorWhileGett_0.isa, v15);
      v13 = 0;
      v16 = v20[0];
      if (v20[0])
      {
        v17 = *&v20[1];
        if (*&v20[1])
        {
LABEL_15:
          munmap(v17, v16);
          goto LABEL_4;
        }
      }
    }

    else if (v24)
    {
      NSLog(&cfstr_ErrorReturnedF_3.isa, v24);
      v13 = 0;
      v16 = v20[0];
      if (v20[0])
      {
        v17 = *&v20[1];
        if (*&v20[1])
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      if (v21 | v20[0])
      {
        v18 = SCROUnserializeWrapper(__dst, v21, *&v20[1], v20[0], &v19);
        v24 = v18;
        if (v20[0] && *&v20[1])
        {
          munmap(*&v20[1], v20[0]);
          v18 = v24;
        }

        if (v18)
        {
          NSLog(&cfstr_ErrorWhileDese.isa, v18);
          goto LABEL_4;
        }
      }

      v13 = v19;
    }
  }

  else
  {
    [_Lock_0 unlock];
    v13 = 0;
    if (v22[0] && *&v22[1])
    {
      munmap(*&v22[1], v22[0]);
      goto LABEL_4;
    }
  }

LABEL_5:

  return v13;
}

- (int)performHandlerActionForKey:(int)key
{
  v8 = 0;
  v3 = atomic_load(&self->_isConnectionStarted);
  if ((v3 & 1) == 0)
  {
    return 1;
  }

  [_Lock_0 lock];
  if (!_ServerPort)
  {
    [_Lock_0 unlock];
    return 1;
  }

  v6 = _SCROPerformAction(_ServerPort, 0x1770u, self->_identifier, self->_handlerType, key, &v8);
  [_Lock_0 unlock];
  if (v6)
  {
    NSLog(&cfstr_ErrorWhileSend_2.isa, v6);
    return 1;
  }

  if (!v8)
  {
    return 0;
  }

  NSLog(&cfstr_ErrorReturnedF_4.isa, v8);
  return v8;
}

- (void)_ping
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, 512);
  v14 = 0;
  v12 = 0;
  v13 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = atomic_load(&self->_isConnectionStarted);
    if (v4)
    {
      [_Lock_0 lock];
      if (_ServerPort)
      {
        v5 = _SCROGetCallbacks(_ServerPort, 6000, self->_identifier);
        [_Lock_0 unlock];
        if (v5)
        {
          NSLog(&cfstr_ErrorWhileGett_1.isa, v5);
        }

        else if (v14 | HIDWORD(v12))
        {
          theArray = 0;
          v6 = SCROUnserializeWrapper(v15, v14, v13, HIDWORD(v12), &theArray);
          LODWORD(v12) = v6;
          if (HIDWORD(v12) && v13)
          {
            munmap(v13, HIDWORD(v12));
            v6 = v12;
          }

          if (v6)
          {
            NSLog(&cfstr_ErrorWhileDese_0.isa, v6);
          }

          else if (theArray)
          {
            v7 = objc_loadWeakRetained(&self->_delegate);
            Count = CFArrayGetCount(theArray);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                v10 = CFArrayGetValueAtIndex(theArray, i);
                [v10 postToHandler:v7];
              }
            }

            CFRelease(theArray);
          }
        }
      }

      else
      {
        [_Lock_0 unlock];
      }
    }
  }
}

- (SCROConnection)initWithCoder:(id)coder
{
  coderCopy = coder;
  NSLog(&cfstr_NoteSecureCodi.isa);
  v5 = -[SCROConnection initWithHandlerType:delegate:](self, "initWithHandlerType:delegate:", [coderCopy decodeIntegerForKey:@"handlerType"], 0);

  return v5;
}

+ (void)_configServerWithMachServiceName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_26490B000, a2, OS_LOG_TYPE_ERROR, "Could not find bootstrap server for Screen Reader Output Server. name:%s", &v2, 0xCu);
}

@end