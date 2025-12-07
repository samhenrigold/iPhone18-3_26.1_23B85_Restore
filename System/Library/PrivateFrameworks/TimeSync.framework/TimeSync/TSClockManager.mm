@interface TSClockManager
+ (id)clockManager;
+ (id)diagnosticDescriptionForClockIdentifier:(unint64_t)identifier withIndent:(id)indent;
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
+ (id)diagnosticInfo;
+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier;
+ (id)frameworkClassNameForDaemonClassName:(id)name;
+ (id)sharedClockManager;
+ (id)sharedClockManagerSyncWithTimeout:(unint64_t)timeout;
+ (void)initialize;
- (BOOL)getConnectionForClockWithClockIdentifier:(unint64_t)identifier daemonClockClassName:(id *)name endpoint:(id *)endpoint;
- (BOOL)getConnectionForPortWithClockIdentifier:(unint64_t)identifier portNumber:(unsigned __int16)number daemonPortClassName:(id *)name endpoint:(id *)endpoint;
- (TSClockManager)init;
- (id)availableClockIdentifiers;
- (id)clockWithClockIdentifier:(unint64_t)identifier;
- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)ticks;
- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)nanoseconds;
- (void)addClient:(id)client;
- (void)init;
- (void)interruptedClockManager;
- (void)removeClient:(id)client;
@end

@implementation TSClockManager

+ (id)frameworkClassNameForDaemonClassName:(id)name
{
  v3 = [name stringByReplacingOccurrencesOfString:? withString:?];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _sharedClockManagerLock = 0;
  }
}

+ (id)sharedClockManager
{
  os_unfair_lock_lock(&_sharedClockManagerLock);
  v3 = _sharedClockManager;
  if (!_sharedClockManager)
  {
    clockManager = [self clockManager];
    v5 = _sharedClockManager;
    _sharedClockManager = clockManager;

    v3 = _sharedClockManager;
  }

  v6 = v3;
  os_unfair_lock_unlock(&_sharedClockManagerLock);

  return v6;
}

+ (id)sharedClockManagerSyncWithTimeout:(unint64_t)timeout
{
  v5 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __52__TSClockManager_sharedClockManagerSyncWithTimeout___block_invoke;
  v14 = &unk_279DBD658;
  v6 = v5;
  v15 = v6;
  [self notifyWhenClockManagerIsAvailable:?];
  v7 = dispatch_time(0, 1000000 * timeout);
  if (dispatch_semaphore_wait(v6, v7))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to find clock manager within the timeout period.\n", v10, 2u);
    }

    sharedClockManager = 0;
  }

  else
  {
    sharedClockManager = [self sharedClockManager];
  }

  return sharedClockManager;
}

+ (id)clockManager
{
  v2 = objc_alloc_init(TSClockManager);
  if (!v2)
  {
    v3 = 10;
    do
    {
      usleep(0x2710u);
      v2 = objc_alloc_init(TSClockManager);
      if (v3 < 2)
      {
        break;
      }

      --v3;
    }

    while (!v2);
  }

  return v2;
}

- (TSClockManager)init
{
  v20.receiver = self;
  v20.super_class = TSClockManager;
  v2 = [(TSClockManager *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_clientLock._os_unfair_lock_opaque = 0;
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    clients = v3->_clients;
    v3->_clients = weakObjectsPointerArray;

    mach_timebase_info(&v3->_timebaseInfo);
    v6 = objc_alloc_init(_TSF_TSDClockManager);
    impl = v3->_impl;
    v3->_impl = v6;

    if (v3->_impl)
    {
      v8 = [_TSF_TSDKernelClock alloc];
      [(_TSF_TSDClockManager *)v3->_impl translationClockIdentifier];
      v9 = [(_TSF_TSDKernelClock *)v8 initWithClockIdentifier:?];
      if (v9)
      {
        v10 = [TSDCTranslationClock alloc];
        [(_TSF_TSDClockManager *)v3->_impl translationClockIdentifier];
        v11 = [(TSDCTranslationClock *)v10 initWithClockIdentifier:?];
        if (v11)
        {
          objc_storeStrong(&v3->_translationClockDC, v11);
          v12 = [TSTranslationClock alloc];
          translationClock = [(TSDCTranslationClock *)v11 translationClock];
          v14 = [(TSTranslationClock *)v12 initWithTranslationClock:?];
          translationClock = v3->_translationClock;
          v3->_translationClock = &v14->super;

          v16 = [TSTimeSyncClock alloc];
          [(_TSF_TSDClockManager *)v3->_impl timeSyncTimeClockIdentifier];
          v17 = [TSTimeSyncClock initWithClockIdentifier:v16 translationClock:"initWithClockIdentifier:translationClock:"];
          timeSyncClock = v3->_timeSyncClock;
          v3->_timeSyncClock = &v17->super;
        }

        else
        {
          [(TSClockManager *)v3 init];
          v3 = 0;
        }

        goto LABEL_7;
      }

      [(TSClockManager *)v3 init];
    }

    else
    {
      [(TSClockManager *)v3 init];
    }

    v9 = v21;
    v3 = v22;
LABEL_7:
  }

  return v3;
}

- (id)availableClockIdentifiers
{
  availableClockIdentifiers = [(_TSF_TSDClockManager *)self->_impl availableClockIdentifiers];

  return availableClockIdentifiers;
}

- (id)clockWithClockIdentifier:(unint64_t)identifier
{
  if ([(TSClockManager *)self timeSyncTimeClockIdentifier]== identifier)
  {
    timeSyncClock = [(TSClockManager *)self timeSyncClock];
LABEL_5:
    v6 = timeSyncClock;
    goto LABEL_11;
  }

  if ([(TSClockManager *)self translationClockIdentifier]== identifier)
  {
    timeSyncClock = [(TSClockManager *)self translationClock];
    goto LABEL_5;
  }

  v7 = [TSDCKernelClock clockWithIdentifier:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = off_279DBD2D8;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = off_279DBD238;
    if (isKindOfClass)
    {
      v8 = off_279DBD2B8;
    }
  }

  v6 = [objc_alloc(*v8) initWithImplDC:?];

LABEL_11:

  return v6;
}

- (BOOL)getConnectionForClockWithClockIdentifier:(unint64_t)identifier daemonClockClassName:(id *)name endpoint:(id *)endpoint
{
  *name = 0;
  *endpoint = 0;
  return 0;
}

- (BOOL)getConnectionForPortWithClockIdentifier:(unint64_t)identifier portNumber:(unsigned __int16)number daemonPortClassName:(id *)name endpoint:(id *)endpoint
{
  *name = 0;
  *endpoint = 0;
  return 0;
}

- (unint64_t)machAbsoluteTicksToNanoseconds:(unint64_t)nanoseconds
{
  numer = self->_timebaseInfo.numer;
  if (numer != self->_timebaseInfo.denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = IOTS_uint64mul(nanoseconds, numer);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.denom;
    v10[1] = 0;
    return IOTS_U128::operator/(&v9, v10);
  }

  return nanoseconds;
}

- (unint64_t)machAbsoluteNanosecondsToTicks:(unint64_t)ticks
{
  denom = self->_timebaseInfo.denom;
  if (self->_timebaseInfo.numer != denom)
  {
    v10[4] = v3;
    v10[5] = v4;
    *&v9 = IOTS_uint64mul(ticks, denom);
    *(&v9 + 1) = v7;
    v10[0] = self->_timebaseInfo.numer;
    v10[1] = 0;
    return IOTS_U128::operator/(&v9, v10);
  }

  return ticks;
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  string = [MEMORY[0x277CCAB68] string];
  v8 = [infoCopy objectForKeyedSubscript:?];
  [string appendFormat:indentCopy, v8];

  [string appendFormat:indentCopy];
  v9 = [infoCopy objectForKeyedSubscript:?];
  v10 = v9;
  if (v9)
  {
    [string appendFormat:objc_msgSend(v9, "unsignedLongLongValue")];
  }

  else
  {
    [string appendString:?];
  }

  [string appendFormat:indentCopy];
  v11 = [infoCopy objectForKeyedSubscript:?];

  if (v11)
  {
    [string appendFormat:objc_msgSend(v11, "unsignedIntValue")];
  }

  else
  {
    [string appendString:?];
  }

  return string;
}

+ (id)diagnosticInfo
{
  v2 = +[_TSF_TSDClockManager diagnosticInfo];

  return v2;
}

+ (id)diagnosticDescriptionForClockIdentifier:(unint64_t)identifier withIndent:(id)indent
{
  indentCopy = indent;
  v6 = [_TSF_TSDClockManager diagnosticInfoForClockIdentifier:"diagnosticInfoForClockIdentifier:daemonClassName:" daemonClassName:?];
  v7 = 0;
  v8 = [self frameworkClassNameForDaemonClassName:?];
  v9 = v8;
  if (v8)
  {
    [objc_class diagnosticDescriptionForInfo:"diagnosticDescriptionForInfo:withIndent:" withIndent:?];
  }

  else
  {
    [MEMORY[0x277CCAB68] stringWithFormat:?];
  }
  v10 = ;

  return v10;
}

+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier
{
  v3 = [_TSF_TSDClockManager diagnosticInfoForClockIdentifier:"diagnosticInfoForClockIdentifier:daemonClassName:" daemonClassName:?];

  return v3;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v5 = self->_clients;
  v6 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v6)
  {
    v7 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (*(8 * i) == clientCopy)
        {

          goto LABEL_11;
        }
      }

      v6 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_clients addPointer:?];
LABEL_11:
  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v5 = self->_clients;
  v6 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0];
    while (2)
    {
      v9 = 0;
      v10 = v7;
      v7 += v6;
      do
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(8 * v9) == clientCopy)
        {

          [(NSPointerArray *)self->_clients removePointerAtIndex:?];
          goto LABEL_11;
        }

        ++v10;
        v9 = (v9 + 1);
      }

      while (v6 != v9);
      v6 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_clientLock);
}

- (void)interruptedClockManager
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_clients;
  v4 = [NSPointerArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 interruptedConnectionForClockManager:?];
        }

        v6 = (v6 + 1);
      }

      while (v4 != v6);
      v4 = [NSPointerArray countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v8 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TSClockManager_interruptedClockManager__block_invoke;
  block[3] = &unk_279DBD658;
  block[4] = self;
  dispatch_async(v8, block);
}

void __41__TSClockManager_interruptedClockManager__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&_sharedClockManagerLock);
  v3 = _sharedClockManager;
  if (*(a1 + 32) == _sharedClockManager)
  {
    _sharedClockManager = 0;
  }

  os_unfair_lock_unlock(&_sharedClockManagerLock);

  objc_autoreleasePoolPop(v2);
}

- (void)init
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v6, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v7, v8, v9, v10, v11);
  }

  *a3 = 0;
  *a2 = self;
}

@end