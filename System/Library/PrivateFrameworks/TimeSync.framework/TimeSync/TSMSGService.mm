@interface TSMSGService
+ (id)sharedMSGService;
- (BOOL)removeMSGClock:(unsigned int)clock error:(id *)error;
- (BOOL)startExternalSync:(id *)sync error:(id *)error;
- (BOOL)stopExternalSync:(unsigned int)sync error:(id *)error;
- (TSMSGService)init;
- (unint64_t)addMSGClock:(unsigned int)clock withNominalSyncDuration:(id)duration error:(id *)error;
- (unint64_t)addMSGClockRef:(unsigned int)ref error:(id *)error;
- (unint64_t)getMSGClock:(unsigned int)clock error:(id *)error;
- (void)daemonClientRefresh;
- (void)dispatchMSGNotification:(unsigned __int16)notification args:(const unint64_t *)args numArgs:(unsigned int)numArgs;
@end

@implementation TSMSGService

+ (id)sharedMSGService
{
  if (sharedMSGService_onceToken != -1)
  {
    +[TSMSGService sharedMSGService];
  }

  v3 = _sharedMSGService;

  return v3;
}

void __32__TSMSGService_sharedMSGService__block_invoke()
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    v2 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
    if ([v2 isMSGServiceAvailable])
    {
      v0 = objc_alloc_init(TSMSGService);
      v1 = _sharedMSGService;
      _sharedMSGService = v0;
    }
  }
}

- (TSMSGService)init
{
  v15.receiver = self;
  v15.super_class = TSMSGService;
  v2 = [(TSMSGService *)&v15 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_extSyncSessionsLock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    activeExtSyncSessionsByTriggerId = v3->_activeExtSyncSessionsByTriggerId;
    v3->_activeExtSyncSessionsByTriggerId = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    activeClockSessionsBySyncId = v3->_activeClockSessionsBySyncId;
    v3->_activeClockSessionsBySyncId = dictionary2;

    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:v10];

    v12 = dispatch_queue_create([v11 UTF8String], 0);
    msgDispatchQueue = v3->_msgDispatchQueue;
    v3->_msgDispatchQueue = v12;
  }

  return v3;
}

- (void)daemonClientRefresh
{
  objc_initWeak(&location, self);
  msgDispatchQueue = self->_msgDispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__TSMSGService_daemonClientRefresh__block_invoke;
  v4[3] = &unk_279DBD6F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(msgDispatchQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __35__TSMSGService_daemonClientRefresh__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 8);
    v5 = *&v4[2]._os_unfair_lock_opaque;
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0];
      v9 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*&v4[2]._os_unfair_lock_opaque objectForKeyedSubscript:?];
          v31 = 0;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          if (v11)
          {
            [&v25 TSMSGExternalSyncConfigValue];
          }

          if ([v2 startMSGExternalSync:?])
          {
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              __35__TSMSGService_daemonClientRefresh__block_invoke_cold_1(v22, &v25 + 1, &v22[4]);
            }
          }

          else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v24[0] = DWORD1(v25);
            _os_log_impl(&dword_26F080000, v9, OS_LOG_TYPE_DEFAULT, "Restarted MSG external sync session for triggerId: %u\n", buf, 8u);
          }
        }

        v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v7);
    }

    os_unfair_lock_unlock(v4 + 8);
    os_unfair_lock_lock(v4 + 9);
    obj = *&v4[4]._os_unfair_lock_opaque;
    v12 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v12)
    {
      v14 = v12;
      v15 = MEMORY[0];
      v16 = MEMORY[0x277D86220];
      *&v13 = 67109120;
      v20 = v13;
      do
      {
        for (j = 0; j != v14; j = (j + 1))
        {
          if (MEMORY[0] != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = [*&v4[4]._os_unfair_lock_opaque objectForKeyedSubscript:v20];
          v19 = [v18 syncId];
          [v18 refCnt];
          [v18 nominalSyncDuration];
          if ([v2 restoreMSGClockSession:? withNominalSyncDuration:? refCnt:? error:?] == -1)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              __35__TSMSGService_daemonClientRefresh__block_invoke_cold_2(buf, v19, v24);
            }
          }

          else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *&v25 = __PAIR64__(v19, v20);
            _os_log_impl(&dword_26F080000, v16, OS_LOG_TYPE_DEFAULT, "Restarted MSG clock session for syncId: %u\n", &v25, 8u);
          }
        }

        v14 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v14);
    }

    os_unfair_lock_unlock(v4 + 9);
  }
}

- (BOOL)startExternalSync:(id *)sync error:(id *)error
{
  if (_os_feature_enabled_impl())
  {
    v7 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
    os_unfair_lock_lock(&self->_extSyncSessionsLock);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v9 = [(NSMutableDictionary *)self->_activeExtSyncSessionsByTriggerId objectForKey:?];

    if (v9)
    {
      v10 = -536870203;
    }

    else
    {
      v10 = [v7 startMSGExternalSync:?];
      if (!v10)
      {
        v12 = [MEMORY[0x277CCAE60] valuewithTSMSGExternalSyncConfig:{*&sync->var0.var0, sync->var0.var2.var1, sync->var0.var3.var0, *&sync->var0.var3.var1, sync->var0.var5, sync->var0.var6, *&sync->var0.var7, *&sync->var2, sync->var4}];
        [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
      }
    }

    os_unfair_lock_unlock(&self->_extSyncSessionsLock);
    v11 = v10 == 0;
    if (error && v10)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    *error = v11 = 0;
  }

  else
  {
    return 0;
  }

  return v11;
}

- (BOOL)stopExternalSync:(unsigned int)sync error:(id *)error
{
  if (_os_feature_enabled_impl())
  {
    v6 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
    os_unfair_lock_lock(&self->_extSyncSessionsLock);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v8 = [(NSMutableDictionary *)self->_activeExtSyncSessionsByTriggerId objectForKey:?];

    if (v8)
    {
      v9 = [v6 stopMSGExternalSync:?];
      if (!v9)
      {
        v10 = objc_autoreleasePoolPush();
        [(NSMutableDictionary *)self->_activeExtSyncSessionsByTriggerId removeObjectForKey:?];
        objc_autoreleasePoolPop(v10);
        v9 = 0;
      }
    }

    else
    {
      v9 = -536870206;
    }

    os_unfair_lock_unlock(&self->_extSyncSessionsLock);
    v11 = v9 == 0;
    if (error && v9)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    *error = v11 = 0;
  }

  else
  {
    return 0;
  }

  return v11;
}

- (void)dispatchMSGNotification:(unsigned __int16)notification args:(const unint64_t *)args numArgs:(unsigned int)numArgs
{
  notificationCopy = notification;
  v38 = *MEMORY[0x277D85DE8];
  if (notification <= 3u)
  {
    v8 = TSMSGNotifyTypeToString_TSMSGNotifyTypeStrings[notification];
  }

  else
  {
    v8 = @"Unknown";
  }

  v9 = [MEMORY[0x277CCAB68] stringWithFormat:v8];
  if (args && numArgs)
  {
    v10 = 0;
    do
    {
      [v9 appendFormat:args[v10]];
      if (v10 < numArgs - 1)
      {
        [v9 appendString:?];
      }

      ++v10;
    }

    while (numArgs != v10);
  }

  [v9 appendString:?];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = [v9 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received MSG notification: %s\n", buf, 0xCu);
  }

  if (notificationCopy <= 1)
  {
    if (notificationCopy)
    {
      if (notificationCopy == 1)
      {
        if (!args || numArgs != 2)
        {
          [TSMSGService dispatchMSGNotification:args:numArgs:];
          goto LABEL_41;
        }

        v11 = *args;
        v12 = args[1];
        os_unfair_lock_lock(&self->_extSyncSessionsLock);
        activeExtSyncSessionsByTriggerId = self->_activeExtSyncSessionsByTriggerId;
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
        v15 = [(NSMutableDictionary *)activeExtSyncSessionsByTriggerId objectForKeyedSubscript:?];

        os_unfair_lock_unlock(&self->_extSyncSessionsLock);
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        *buf = 0u;
        v32 = 0u;
        if (!v15)
        {
          goto LABEL_27;
        }

        [(uint8_t *)buf TSMSGExternalSyncConfigValue];
        v16 = v36;
        if (!v36)
        {
          goto LABEL_27;
        }

LABEL_26:
        v16(v11, v12 != 0);
LABEL_27:

        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (!args || numArgs != 2)
    {
      [TSMSGService dispatchMSGNotification:args:numArgs:];
      goto LABEL_41;
    }

    v19 = *args;
    v20 = args[1];
    os_unfair_lock_lock(&self->_extSyncSessionsLock);
    v21 = self->_activeExtSyncSessionsByTriggerId;
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v23 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:?];

    os_unfair_lock_unlock(&self->_extSyncSessionsLock);
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *buf = 0u;
    v32 = 0u;
    if (v23)
    {
      [(uint8_t *)buf TSMSGExternalSyncConfigValue];
      if (*(&v35 + 1))
      {
        (*(&v35 + 1))(v19, v20);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  if (notificationCopy == 2)
  {
    if (!args || numArgs != 2)
    {
      [TSMSGService dispatchMSGNotification:args:numArgs:];
      goto LABEL_41;
    }

    v24 = *args;
    v25 = *(args + 2);
    os_unfair_lock_lock(&self->_extSyncSessionsLock);
    v26 = self->_activeExtSyncSessionsByTriggerId;
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v23 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:?];

    v28 = self->_activeExtSyncSessionsByTriggerId;
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    [(NSMutableDictionary *)v28 removeObjectForKey:?];

    os_unfair_lock_unlock(&self->_extSyncSessionsLock);
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *buf = 0u;
    v32 = 0u;
    if (v23)
    {
      [(uint8_t *)buf TSMSGExternalSyncConfigValue];
      if (*(&v36 + 1))
      {
        (*(&v36 + 1))(v24, v25);
      }
    }

    goto LABEL_40;
  }

  if (notificationCopy == 3)
  {
    if (!args || numArgs != 2)
    {
      [TSMSGService dispatchMSGNotification:args:numArgs:];
      goto LABEL_41;
    }

    v11 = *args;
    v12 = args[1];
    os_unfair_lock_lock(&self->_extSyncSessionsLock);
    v17 = self->_activeExtSyncSessionsByTriggerId;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v15 = [(NSMutableDictionary *)v17 objectForKeyedSubscript:?];

    os_unfair_lock_unlock(&self->_extSyncSessionsLock);
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *buf = 0u;
    v32 = 0u;
    if (!v15)
    {
      goto LABEL_27;
    }

    [(uint8_t *)buf TSMSGExternalSyncConfigValue];
    v16 = v37;
    if (!v37)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_28:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [TSMSGService dispatchMSGNotification:notificationCopy args:? numArgs:?];
  }

LABEL_41:
}

- (unint64_t)getMSGClock:(unsigned int)clock error:(id *)error
{
  if (_os_feature_enabled_impl())
  {
    if (error)
    {
      *error = 0;
    }

    v5 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
    v6 = [v5 getMSGClock:? error:?];

    return v6;
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    }

    return -1;
  }
}

- (unint64_t)addMSGClock:(unsigned int)clock withNominalSyncDuration:(id)duration error:(id *)error
{
  if (_os_feature_enabled_impl())
  {
    if (error)
    {
      *error = 0;
    }

    v7 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
    os_unfair_lock_lock(&self->_clockSessionsLock);
    activeClockSessionsBySyncId = self->_activeClockSessionsBySyncId;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v10 = [(NSMutableDictionary *)activeClockSessionsBySyncId objectForKey:?];

    if (v10)
    {
      v11 = 1;
      v12 = -1;
    }

    else
    {
      v12 = [v7 addMSGClock:? withNominalSyncDuration:? error:?];
      if (v12 == -1 || ([TSMSGClockSession withSyncId:"withSyncId:nominalSyncDuration:" nominalSyncDuration:?], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v11 = 1;
      }

      else
      {
        v14 = v13;
        v15 = self->_activeClockSessionsBySyncId;
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
        [NSMutableDictionary setObject:v15 forKeyedSubscript:"setObject:forKeyedSubscript:"];

        v11 = 0;
      }
    }

    os_unfair_lock_unlock(&self->_clockSessionsLock);
    if (error && v11 && !*error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    }

    return -1;
  }

  return v12;
}

- (unint64_t)addMSGClockRef:(unsigned int)ref error:(id *)error
{
  if (_os_feature_enabled_impl())
  {
    if (error)
    {
      *error = 0;
    }

    v6 = -1;
    v7 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
    os_unfair_lock_lock(&self->_clockSessionsLock);
    activeClockSessionsBySyncId = self->_activeClockSessionsBySyncId;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v10 = [(NSMutableDictionary *)activeClockSessionsBySyncId objectForKeyedSubscript:?];

    if (!v10 || (v11 = [v7 addMSGClockRef:? error:?], v11 == -1))
    {
      os_unfair_lock_unlock(&self->_clockSessionsLock);
      if (error && !*error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
      }
    }

    else
    {
      v12 = v11;
      [v10 refCnt];
      [v10 setRefCnt:?];
      os_unfair_lock_unlock(&self->_clockSessionsLock);
      v6 = v12;
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    }

    return -1;
  }

  return v6;
}

- (BOOL)removeMSGClock:(unsigned int)clock error:(id *)error
{
  if (_os_feature_enabled_impl())
  {
    if (error)
    {
      *error = 0;
    }

    v6 = +[TSXDaemonServiceClient sharedDaemonServiceClient];
    os_unfair_lock_lock(&self->_clockSessionsLock);
    activeClockSessionsBySyncId = self->_activeClockSessionsBySyncId;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
    v9 = [(NSMutableDictionary *)activeClockSessionsBySyncId objectForKeyedSubscript:?];

    if (v9 && [v6 removeMSGClock:? error:?])
    {
      [v9 refCnt];
      [v9 setRefCnt:?];
      if (![v9 refCnt])
      {
        v10 = self->_activeClockSessionsBySyncId;
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
        [(NSMutableDictionary *)v10 removeObjectForKey:?];
      }

      os_unfair_lock_unlock(&self->_clockSessionsLock);
      v12 = 1;
    }

    else
    {
      os_unfair_lock_unlock(&self->_clockSessionsLock);
      if (error && !*error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
        *error = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
    *error = v12 = 0;
  }

  else
  {
    return 0;
  }

  return v12;
}

void __35__TSMSGService_daemonClientRefresh__block_invoke_cold_1(uint8_t *buf, int *a2, _DWORD *a3)
{
  v3 = *a2;
  *buf = 67109120;
  *a3 = v3;
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "FAILED to restart MSG external sync session for triggerId: %u\n", buf, 8u);
}

void __35__TSMSGService_daemonClientRefresh__block_invoke_cold_2(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "FAILED to restart MSG clock session for syncId: %u\n", buf, 8u);
}

- (void)dispatchMSGNotification:args:numArgs:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)dispatchMSGNotification:args:numArgs:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)dispatchMSGNotification:args:numArgs:.cold.3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)dispatchMSGNotification:args:numArgs:.cold.4()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)dispatchMSGNotification:(int)a1 args:numArgs:.cold.5(int a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown/Unsupported TSMSGNotifyType: %u", v1, 8u);
}

@end