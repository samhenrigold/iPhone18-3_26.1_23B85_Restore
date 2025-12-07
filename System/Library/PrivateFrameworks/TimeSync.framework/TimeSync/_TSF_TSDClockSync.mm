@interface _TSF_TSDClockSync
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier;
- (BOOL)deregisterAsyncCallback;
- (BOOL)registerAsyncCallback;
- (_TSF_TSDClockSync)initWithClockIdentifier:(unint64_t)identifier pid:(int)pid;
- (id)connection;
- (id)service;
- (unint64_t)releaseReference;
- (void)_handleNotification:(int)notification withArgs:(unint64_t *)args ofCount:(unsigned int)count;
- (void)addUpdateClient:(id)client;
- (void)registerAsyncCallback;
- (void)removeUpdateClient:(id)client;
@end

@implementation _TSF_TSDClockSync

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v3;
}

- (_TSF_TSDClockSync)initWithClockIdentifier:(unint64_t)identifier pid:(int)pid
{
  v4 = *&pid;
  v25.receiver = self;
  v25.super_class = _TSF_TSDClockSync;
  v6 = [(_TSF_TSDClockSync *)&v25 init];
  v7 = v6;
  if (v6)
  {
    v6->_referenceCount = 1;
    v6->_clockIdentifier = identifier;
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    updateClients = v7->_updateClients;
    v7->_updateClients = weakObjectsPointerArray;

    v7->_updateClientsLock._os_unfair_lock_opaque = 0;
    os_parse_boot_arg_int();
    v7->_logNotifyTest = 0;
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = v12;
    if (v4)
    {
      [v10 stringWithFormat:v12, identifier, v4];
    }

    else
    {
      [v10 stringWithFormat:v12, identifier, v24];
    }
    v14 = ;

    v15 = dispatch_queue_create([v14 UTF8String], 0);
    notificationsQueue = v7->_notificationsQueue;
    v7->_notificationsQueue = v15;

    if (v7->_notificationsQueue)
    {
      v7->_serviceLock._os_unfair_lock_opaque = 0;
      v17 = MEMORY[0x277D1AE20];
      v18 = [objc_opt_class() iokitMatchingDictionaryForClockIdentifier:?];
      v19 = [v17 matchingService:?];
      service = v7->_service;
      v7->_service = v19;

      if (v7->_service)
      {
        v21 = [_TSF_IODConnection initWithService:"initWithService:andType:" andType:?];
        connection = v7->_connection;
        v7->_connection = v21;

        if (v7->_connection)
        {
          v7->_asyncCallbackRefcon = 0;
          [(_TSF_TSDClockSync *)v7 registerAsyncCallback];
LABEL_9:

          return v7;
        }

        [_TSF_TSDClockSync initWithClockIdentifier:v7 pid:?];
      }

      else
      {
        [_TSF_TSDClockSync initWithClockIdentifier:v7 pid:?];
      }
    }

    else
    {
      [_TSF_TSDClockSync initWithClockIdentifier:v7 pid:?];
    }

    v7 = 0;
    goto LABEL_9;
  }

  return v7;
}

- (id)service
{
  os_unfair_lock_lock(&self->_serviceLock);
  v3 = self->_service;
  os_unfair_lock_unlock(&self->_serviceLock);

  return v3;
}

- (id)connection
{
  os_unfair_lock_lock(&self->_serviceLock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_serviceLock);

  return v3;
}

- (void)_handleNotification:(int)notification withArgs:(unint64_t *)args ofCount:(unsigned int)count
{
  v49 = *MEMORY[0x277D85DE8];
  if (notification == 3001)
  {
    if (count == 13)
    {
      v30 = *(args + 6) | (args[2] << 32);
      v31 = *(args + 2) | (*args << 32);
      v28 = *(args + 14) | (args[6] << 32);
      v29 = *(args + 10) | (args[4] << 32);
      v27 = *(args + 18) | (args[8] << 32);
      v18 = *(args + 22) | (args[10] << 32);
      v19 = args[12];
      if (self->_logNotifyTest && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134220032;
        *v33 = v31;
        *&v33[8] = 2048;
        v34 = v30;
        v35 = 2048;
        v36 = v29;
        v37 = 2048;
        v38 = v28;
        v39 = 2048;
        v40 = v27;
        v41 = 2048;
        v42 = v18;
        v43 = 1024;
        v44 = v19;
        v45 = 1024;
        v46 = BYTE2(v19);
        v47 = 1024;
        v48 = (v19 & 0xFF000000) != 0;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDClockSync _handleNotification kIOTimeSyncSyncNotificationPTPSyncUpdate cumulativeScaledRate=%llu inverseCumulativeScaledRate=%llu timeSyncAnchor=%llu domainAnchorHi=%llu domainAnchorLo=%llu grandmasterID=%llu localPortNumber=%u syncFlags=%u syncInfoValid=%u", buf, 0x50u);
      }

      os_unfair_lock_lock(&self->_updateClientsLock);
      selfCopy2 = self;
      v12 = self->_updateClients;
      v20 = [NSPointerArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v20)
      {
        v21 = v20;
        v22 = MEMORY[0];
        do
        {
          for (i = 0; i != v21; i = (i + 1))
          {
            if (MEMORY[0] != v22)
            {
              objc_enumerationMutation(v12);
            }

            v24 = *(8 * i);
            if ([v24 conformsToProtocol:?])
            {
              LOWORD(v25) = v19;
              [v24 updateWithSyncInfoValid:v30 syncFlags:v18 timeSyncTime:v25 domainTimeHi:? domainTimeLo:? cumulativeScaledRate:? inverseCumulativeScaledRate:? grandmasterID:? localPortNumber:?];
            }
          }

          v21 = [NSPointerArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
        }

        while (v21);
      }

      goto LABEL_30;
    }

    [_TSF_TSDClockSync _handleNotification:withArgs:ofCount:];
  }

  else if (notification == 3000)
  {
    if (count == 8)
    {
      v8 = *(args + 2) | (*args << 32);
      v9 = *(args + 6) | (args[2] << 32);
      v10 = *(args + 10) | (args[4] << 32);
      v11 = *(args + 14) | (args[6] << 32);
      if (self->_logNotifyTest && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        *v33 = v8;
        *&v33[8] = 2048;
        v34 = v9;
        v35 = 2048;
        v36 = v10;
        v37 = 2048;
        v38 = v11;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDClockSync _handleNotification kIOTimeSyncSyncNotificationGeneralSyncUpdate rateNumerator=%llu rateDenominator=%llu timeSyncAnchor=%llu domainAnchor=%llu", buf, 0x2Au);
      }

      os_unfair_lock_lock(&self->_updateClientsLock);
      selfCopy2 = self;
      v12 = self->_updateClients;
      v13 = [NSPointerArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v13)
      {
        v14 = v13;
        v15 = MEMORY[0];
        do
        {
          for (j = 0; j != v14; j = (j + 1))
          {
            if (MEMORY[0] != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(8 * j);
            if ([v17 conformsToProtocol:?])
            {
              [v17 updateTimeSyncTime:? timeSyncInterval:? domainTime:? domainInterval:?];
            }
          }

          v14 = [NSPointerArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
        }

        while (v14);
      }

LABEL_30:

      os_unfair_lock_unlock(&selfCopy2->_updateClientsLock);
      return;
    }

    [_TSF_TSDClockSync _handleNotification:withArgs:ofCount:];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v33 = notification;
    *&v33[4] = 1024;
    *&v33[6] = count;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDClockSync _handleNotification unhandled notification %u numArgs %u\n", buf, 0xEu);
  }
}

- (BOOL)registerAsyncCallback
{
  v3 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  self->_asyncCallbackRefcon = [v3 allocateRefcon:?];
  p_asyncCallbackRefcon = &self->_asyncCallbackRefcon;

  connection = [(_TSF_TSDClockSync *)self connection];
  v6 = [connection registerAsyncNotificationsWithSelector:? callBack:? refcon:? callbackQueue:?];

  if ((v6 & 1) == 0)
  {
    [(_TSF_TSDClockSync *)p_asyncCallbackRefcon registerAsyncCallback];
  }

  return v6;
}

- (BOOL)deregisterAsyncCallback
{
  v3 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v3 releaseRefcon:?];

  connection = [(_TSF_TSDClockSync *)self connection];
  LOBYTE(v3) = [connection deregisterAsyncNotificationsWithSelector:?];

  return v3;
}

- (void)addUpdateClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_updateClientsLock);
  [(NSPointerArray *)self->_updateClients addPointer:?];

  [(NSPointerArray *)self->_updateClients compact];

  os_unfair_lock_unlock(&self->_updateClientsLock);
}

- (void)removeUpdateClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_updateClientsLock);
  if ([(NSPointerArray *)self->_updateClients count])
  {
    v4 = 0;
    while ([(NSPointerArray *)self->_updateClients pointerAtIndex:?]!= clientCopy)
    {
      if (++v4 >= [(NSPointerArray *)self->_updateClients count])
      {
        goto LABEL_7;
      }
    }

    [(NSPointerArray *)self->_updateClients removePointerAtIndex:?];
  }

LABEL_7:
  [(NSPointerArray *)self->_updateClients compact];
  os_unfair_lock_unlock(&self->_updateClientsLock);
}

- (unint64_t)releaseReference
{
  v2 = self->_referenceCount - 1;
  self->_referenceCount = v2;
  return v2;
}

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.2(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.3(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

- (void)_handleNotification:withArgs:ofCount:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)_handleNotification:withArgs:ofCount:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)registerAsyncCallback
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v1, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, v3, v4, v5, v7);
  }

  v6 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v6 releaseRefcon:?];
}

@end