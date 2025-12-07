@interface TSDMSGService
+ (id)sharedMSGService;
- (BOOL)checkClockSessionRegistered:(unsigned int)registered removeStaleKernelClock:(BOOL)clock;
- (BOOL)checkExtSyncSessionRegistered:(unsigned int)registered;
- (BOOL)checkRemoveStaleSessions:(unsigned int)sessions;
- (BOOL)deregisterExtSyncSession:(unsigned int)session pid:(int)pid;
- (BOOL)removeMSGClock:(unsigned int)clock forProcess:(int)process error:(id *)error;
- (BOOL)stopAllClockSessionsForProcess:(int)process;
- (BOOL)stopAllExternalSyncsForProcess:(int)process;
- (TSDMSGService)init;
- (id)getClockSessionForSyncId:(unsigned int)id;
- (int)addClockSessionRef:(unsigned int)ref refCnt:(unint64_t)cnt pid:(int)pid session:(id *)session;
- (int)deregisterClockSession:(unsigned int)session pid:(int)pid removeAllRefs:(BOOL)refs;
- (int)getPidForSyncSession:(id)session;
- (int)registerClockSession:(unsigned int)session nominalSyncDuration:(id)duration pid:(int)pid session:(id *)a6;
- (int)registerExtSyncSession:(id *)session pid:(int)pid callback:(id)callback;
- (int)restoreClockSession:(unsigned int)session nominalSyncDuration:(id)duration refCnt:(unint64_t)cnt pid:(int)pid session:(id *)a7;
- (unint64_t)addMSGClock:(unsigned int)clock withNominalSyncDuration:(id)duration forProcess:(int)process error:(id *)error;
- (unint64_t)addMSGClockRef:(unsigned int)ref forProcess:(int)process error:(id *)error;
- (unint64_t)getClockSessionRefCnt:(unsigned int)cnt process:(int)process;
- (unint64_t)getMSGClock:(unsigned int)clock error:(id *)error;
- (unint64_t)restoreMSGClockSession:(unsigned int)session nominalSyncDuration:(id)duration refCnt:(unint64_t)cnt forProcess:(int)process error:(id *)error;
- (unsigned)startExternalSync:(id *)sync forProcess:(int)process withCallback:(id)callback;
- (unsigned)stopExternalSync:(unsigned int)sync forProcess:(int)process;
- (void)extSyncCallbackHandler:(id)handler msgType:(unsigned __int16)type args:(const ScalarArgsArrayUserReference *)args;
- (void)handleProcessDisconnect:(int)disconnect;
@end

@implementation TSDMSGService

- (void)extSyncCallbackHandler:(id)handler msgType:(unsigned __int16)type args:(const ScalarArgsArrayUserReference *)args
{
  typeCopy = type;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (handlerCopy)
  {
    if (args)
    {
      var1 = args->var1;
    }

    else
    {
      var1 = 0;
    }

    v18 = handlerCopy;
    if (typeCopy <= 3)
    {
      v11 = *(&off_10004C8B0 + typeCopy);
    }

    else
    {
      v11 = @"Unknown";
    }

    v12 = [NSMutableString stringWithFormat:@"msgType: %@, args: [", v11];
    if (args && var1)
    {
      for (i = 0; i != var1; ++i)
      {
        [v12 appendFormat:@"%llu", args->var0[i]];
        if (i < var1 - 1)
        {
          [v12 appendString:{@", "}];
        }
      }
    }

    [v12 appendString:@"]\n"];

    v9 = v18;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Handling external sync MSG notification: %@", buf, 0xCu);
    }

    objc_msgSend_config(v18);
    v14 = v20;
    os_unfair_lock_lock(&self->_extSyncSessionsLock);
    extSyncCallbackHandlers = self->_extSyncCallbackHandlers;
    v16 = [NSNumber numberWithUnsignedInt:v14];
    v17 = [(NSMutableDictionary *)extSyncCallbackHandlers objectForKeyedSubscript:v16];

    if (typeCopy == 2)
    {
      [(TSDMSGService *)self deregisterExtSyncSession:v14 pid:[(TSDMSGService *)self getPidForSyncSession:v18]];
    }

    os_unfair_lock_unlock(&self->_extSyncSessionsLock);
    if (v17)
    {
      (v17)[2](v17, typeCopy, args);
    }
  }
}

+ (id)sharedMSGService
{
  if (qword_100058838 != -1)
  {
    sub_10002A144();
  }

  v3 = qword_100058830;

  return v3;
}

- (TSDMSGService)init
{
  v10.receiver = self;
  v10.super_class = TSDMSGService;
  v2 = [(TSDMSGService *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    activeExtSyncSessionsByPid = v2->_activeExtSyncSessionsByPid;
    v2->_activeExtSyncSessionsByPid = v3;

    v5 = +[NSMutableDictionary dictionary];
    extSyncCallbackHandlers = v2->_extSyncCallbackHandlers;
    v2->_extSyncCallbackHandlers = v5;

    v2->_extSyncSessionsLock._os_unfair_lock_opaque = 0;
    v7 = +[NSMutableDictionary dictionary];
    activeClockSessionsBySyncId = v2->_activeClockSessionsBySyncId;
    v2->_activeClockSessionsBySyncId = v7;

    v2->_clockSessionsLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (int)getPidForSyncSession:(id)session
{
  sessionCopy = session;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_activeExtSyncSessionsByPid;
  v17 = v5;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_activeExtSyncSessionsByPid objectForKeyedSubscript:v9];
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = *v19;
          while (2)
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v11);
              }

              if (*(*(&v18 + 1) + 8 * j) == sessionCopy)
              {
                intValue = [v9 intValue];

                v5 = v17;
                goto LABEL_19;
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v5 = v17;
      }

      v6 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v22 objects:v27 count:16];
      intValue = -1;
    }

    while (v6);
  }

  else
  {
    intValue = -1;
  }

LABEL_19:

  return intValue;
}

- (BOOL)checkExtSyncSessionRegistered:(unsigned int)registered
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_activeExtSyncSessionsByPid;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(NSMutableDictionary *)self->_activeExtSyncSessionsByPid objectForKeyedSubscript:*(*(&v23 + 1) + 8 * i)];
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = *v20;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v19 + 1) + 8 * j);
              if (v14)
              {
                objc_msgSend_config(v14);
                v15 = v18;
              }

              else
              {
                v15 = 0;
              }

              if (v15 == registered)
              {

                v16 = 1;
                goto LABEL_22;
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v16 = 0;
    }

    while (v6);
  }

  else
  {
    v16 = 0;
  }

LABEL_22:

  return v16;
}

- (int)registerExtSyncSession:(id *)session pid:(int)pid callback:(id)callback
{
  callbackCopy = callback;
  v9 = [NSNumber numberWithInteger:pid];
  v10 = objc_retainBlock(callbackCopy);
  extSyncCallbackHandlers = self->_extSyncCallbackHandlers;
  v12 = [NSNumber numberWithUnsignedInt:session->var1];
  [(NSMutableDictionary *)extSyncCallbackHandlers setObject:v10 forKeyedSubscript:v12];

  v13 = [TSDMSGExtSyncSession withConfig:session andCallback:&stru_10004C848];
  start = [v13 start];
  if (start)
  {
    v15 = self->_extSyncCallbackHandlers;
    v16 = [NSNumber numberWithUnsignedInt:session->var1];
    [(NSMutableDictionary *)v15 removeObjectForKey:v16];
  }

  else
  {
    v16 = [(NSMutableDictionary *)self->_activeExtSyncSessionsByPid objectForKeyedSubscript:v9];
    if (!v16)
    {
      v16 = +[NSMutableArray array];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    [v16 addObject:v13];
  }

  return start;
}

- (BOOL)deregisterExtSyncSession:(unsigned int)session pid:(int)pid
{
  v6 = [NSNumber numberWithInteger:pid];
  [(NSMutableDictionary *)self->_activeExtSyncSessionsByPid objectForKeyedSubscript:v6];
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v7 = v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v21 + 1) + 8 * v10);
      if (v11)
      {
        objc_msgSend_config(*(*(&v21 + 1) + 8 * v10));
        v12 = v20;
      }

      else
      {
        v12 = 0;
      }

      if (v12 == session)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v16 = v11;

    if (v11)
    {
      [v16 stop];
      [v7 removeObject:v16];
      extSyncCallbackHandlers = self->_extSyncCallbackHandlers;
      objc_msgSend_config(v16);
      v18 = [NSNumber numberWithUnsignedInt:v20];
      [(NSMutableDictionary *)extSyncCallbackHandlers removeObjectForKey:v18];

      v14 = v16;
      AnalyticsSendEventLazy();
      v13 = 1;
      v15 = v14;
      goto LABEL_15;
    }

    v13 = 0;
    v14 = 0;
  }

  else
  {
LABEL_12:
    v13 = 0;
    v14 = 0;
    v15 = v7;
LABEL_15:
  }

  if (![v7 count])
  {
    [(NSMutableDictionary *)self->_activeExtSyncSessionsByPid removeObjectForKey:v6];

    v7 = 0;
  }

  return v13;
}

- (BOOL)checkRemoveStaleSessions:(unsigned int)sessions
{
  v3 = *&sessions;
  activeClockSessionsBySyncId = self->_activeClockSessionsBySyncId;
  v6 = [NSNumber numberWithUnsignedInt:?];
  v7 = [(NSMutableDictionary *)activeClockSessionsBySyncId objectForKey:v6];

  [v7 getPids];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v8 = v16 = 0u;
  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        intValue = [*(*(&v15 + 1) + 8 * i) intValue];
        v22 = 0;
        memset(buffer, 0, sizeof(buffer));
        if (proc_pidinfo(intValue, 3, 0, buffer, 136) <= 0)
        {
          if ([(TSDMSGService *)self deregisterClockSession:v3 pid:intValue removeAllRefs:1])
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10002A280(buf, intValue, &buf[4]);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buffer[0]) = 67109120;
            DWORD1(buffer[0]) = intValue;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deregistered stale clock session for pid: %i\n", buffer, 8u);
          }

          v9 = 1;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  return v9 & 1;
}

- (BOOL)checkClockSessionRegistered:(unsigned int)registered removeStaleKernelClock:(BOOL)clock
{
  clockCopy = clock;
  v5 = *&registered;
  [(TSDMSGService *)self checkRemoveStaleSessions:?];
  activeClockSessionsBySyncId = self->_activeClockSessionsBySyncId;
  v8 = [NSNumber numberWithUnsignedInt:v5];
  v9 = [(NSMutableDictionary *)activeClockSessionsBySyncId objectForKey:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !clockCopy;
  }

  if (!v10)
  {
    [TSDMSGClockSession checkRemoveKernelClock:v5];
  }

  return v9 != 0;
}

- (id)getClockSessionForSyncId:(unsigned int)id
{
  activeClockSessionsBySyncId = self->_activeClockSessionsBySyncId;
  v4 = [NSNumber numberWithUnsignedInt:*&id];
  v5 = [(NSMutableDictionary *)activeClockSessionsBySyncId objectForKeyedSubscript:v4];

  session = [v5 session];

  return session;
}

- (int)registerClockSession:(unsigned int)session nominalSyncDuration:(id)duration pid:(int)pid session:(id *)a6
{
  v6 = -536870199;
  if (a6)
  {
    v8 = *&pid;
    v9 = *&session;
    v21 = 0;
    v11 = [TSDMSGClockSession withSyncId:*&session nominalSyncDuration:duration.var0 error:duration.var1, &v21];
    v12 = v21;
    v13 = v12;
    if (v11)
    {
      start = [v11 start];
      if (!start)
      {
        v15 = v11;
        *a6 = v11;
        v16 = [[ClockSessionRefCounter alloc] initWithSession:v11];
        v17 = v16;
        if (v16)
        {
          [(ClockSessionRefCounter *)v16 addRef:v8];
          activeClockSessionsBySyncId = self->_activeClockSessionsBySyncId;
          v19 = [NSNumber numberWithUnsignedInt:v9];
          [(NSMutableDictionary *)activeClockSessionsBySyncId setObject:v17 forKeyedSubscript:v19];

          v6 = 0;
        }

        else
        {
          [v11 stop];
        }

        start = v6;
      }
    }

    else
    {
      start = -536870199;
      if (v12)
      {
        start = [v12 code];
      }
    }

    return start;
  }

  return v6;
}

- (int)restoreClockSession:(unsigned int)session nominalSyncDuration:(id)duration refCnt:(unint64_t)cnt pid:(int)pid session:(id *)a7
{
  v7 = -536870199;
  if (a7)
  {
    v9 = *&pid;
    v11 = *&session;
    v23 = 0;
    v13 = [TSDMSGClockSession restoreWithSyncId:*&session nominalSyncDuration:duration.var0 error:duration.var1, &v23];
    v14 = v23;
    v15 = v14;
    if (v13)
    {
      start = [v13 start];
      if (!start)
      {
        v17 = [[ClockSessionRefCounter alloc] initWithSession:v13];
        v18 = v17;
        if (v17)
        {
          [(ClockSessionRefCounter *)v17 addRef:v9 withCnt:cnt];
          activeClockSessionsBySyncId = self->_activeClockSessionsBySyncId;
          v20 = [NSNumber numberWithUnsignedInt:v11];
          [(NSMutableDictionary *)activeClockSessionsBySyncId setObject:v18 forKeyedSubscript:v20];

          v21 = v13;
          v7 = 0;
          *a7 = v13;
        }

        else
        {
          [v13 stop];
        }

        start = v7;
      }
    }

    else
    {
      start = -536870199;
      if (v14)
      {
        start = [v14 code];
      }
    }

    return start;
  }

  return v7;
}

- (int)addClockSessionRef:(unsigned int)ref refCnt:(unint64_t)cnt pid:(int)pid session:(id *)session
{
  v6 = -536870199;
  if (session)
  {
    v8 = *&pid;
    activeClockSessionsBySyncId = self->_activeClockSessionsBySyncId;
    v11 = [NSNumber numberWithUnsignedInt:*&ref];
    v12 = [(NSMutableDictionary *)activeClockSessionsBySyncId objectForKeyedSubscript:v11];

    if (v12)
    {
      [v12 addRef:v8 withCnt:cnt];
      [v12 session];
      *session = v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)getClockSessionRefCnt:(unsigned int)cnt process:(int)process
{
  v4 = *&process;
  activeClockSessionsBySyncId = self->_activeClockSessionsBySyncId;
  v6 = [NSNumber numberWithUnsignedInt:*&cnt];
  v7 = [(NSMutableDictionary *)activeClockSessionsBySyncId objectForKeyedSubscript:v6];

  v8 = [v7 getRef:v4];
  return v8;
}

- (int)deregisterClockSession:(unsigned int)session pid:(int)pid removeAllRefs:(BOOL)refs
{
  refsCopy = refs;
  v6 = *&pid;
  v7 = *&session;
  activeClockSessionsBySyncId = self->_activeClockSessionsBySyncId;
  v10 = [NSNumber numberWithUnsignedInt:?];
  v11 = [(NSMutableDictionary *)activeClockSessionsBySyncId objectForKeyedSubscript:v10];
  v12 = -536870199;

  if (v11 && [v11 getRef:v6])
  {
    if (refsCopy)
    {
      [v11 removeAllRefs:v6];
    }

    else
    {
      v12 = [v11 removeRef:v6];
      if (v12)
      {
        goto LABEL_9;
      }
    }

    if (![v11 getRefTotal])
    {
      session = [v11 session];
      [session stop];

      v14 = self->_activeClockSessionsBySyncId;
      v15 = [NSNumber numberWithUnsignedInt:v7];
      [(NSMutableDictionary *)v14 removeObjectForKey:v15];

      v17 = v11;
      AnalyticsSendEventLazy();
    }

    v12 = 0;
  }

LABEL_9:

  return v12;
}

- (unsigned)startExternalSync:(id *)sync forProcess:(int)process withCallback:(id)callback
{
  v5 = *&process;
  v8 = -536870206;
  callbackCopy = callback;
  v10 = callbackCopy;
  if (sync && callbackCopy)
  {
    os_unfair_lock_lock(&self->_extSyncSessionsLock);
    if ([(TSDMSGService *)self isExtSyncSessionRunning]|| [(TSDMSGService *)self checkExtSyncSessionRegistered:sync->var1])
    {
      v8 = -536870203;
    }

    else
    {
      var1 = sync->var3.var1;
      if (var1)
      {
        var0 = sync->var3.var0;
        v14 = var0 / var1;
        if (!(var0 % var1))
        {
          v15 = (var0 / var1) - 1;
          if (v14 >> 16)
          {
            v16 = 1;
          }

          else
          {
            v16 = v15 > 2;
          }

          if (!v16)
          {
            if (sync->var2.var1)
            {
              if (sync->var5 > sync->var4)
              {
                v8 = [(TSDMSGService *)self registerExtSyncSession:sync pid:v5 callback:v10];
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = sync->var0;
                  v18 = sync->var1;
                  v19 = sync->var2.var0;
                  v20 = sync->var2.var1;
                  v21 = sync->var3.var0;
                  v22 = sync->var3.var1;
                  var4 = sync->var4;
                  var5 = sync->var5;
                  var6 = sync->var6;
                  v26[0] = 67111680;
                  v26[1] = v17;
                  v27 = 1024;
                  v28 = v18;
                  v29 = 2048;
                  v30 = v19;
                  v31 = 2048;
                  v32 = v20;
                  v33 = 2048;
                  v34 = v21;
                  v35 = 2048;
                  v36 = v22;
                  v37 = 2048;
                  v38 = var4;
                  v39 = 2048;
                  v40 = var5;
                  v41 = 2048;
                  v42 = var6;
                  v43 = 1024;
                  v44 = v5;
                  v45 = 1024;
                  v46 = v8;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MSGService: startExternalSync: syncId: %u, triggerId: %u, nominalDuration: (%llu/%llu), syncMultiplier: (%llu/%llu), extTriggerToleranceNs: %llu, toleranceSyncOutputNs: %llu, timeoutNs: %llu, processId: %i, result :%i\n", v26, 0x60u);
                }
              }
            }
          }
        }
      }
    }

    os_unfair_lock_unlock(&self->_extSyncSessionsLock);
  }

  return v8;
}

- (unsigned)stopExternalSync:(unsigned int)sync forProcess:(int)process
{
  v4 = *&process;
  v5 = *&sync;
  os_unfair_lock_lock(&self->_extSyncSessionsLock);
  if ([(TSDMSGService *)self checkExtSyncSessionRegistered:v5])
  {
    [(TSDMSGService *)self deregisterExtSyncSession:v5 pid:v4];
    v7 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109376;
      v9[1] = v5;
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MSGService: stopExternalSync: triggerId: %u, processId: %i\n", v9, 0xEu);
      v7 = 0;
    }
  }

  else
  {
    v7 = -536870206;
  }

  os_unfair_lock_unlock(&self->_extSyncSessionsLock);
  return v7;
}

- (BOOL)stopAllExternalSyncsForProcess:(int)process
{
  v3 = *&process;
  os_unfair_lock_lock(&self->_extSyncSessionsLock);
  activeExtSyncSessionsByPid = self->_activeExtSyncSessionsByPid;
  v6 = [NSNumber numberWithInteger:v3];
  v7 = [(NSMutableDictionary *)activeExtSyncSessionsByPid objectForKeyedSubscript:v6];
  v8 = [v7 copy];

  v9 = [v8 count];
  if (v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002A310();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if (v14)
        {
          objc_msgSend_config(v14);
          v15 = DWORD1(v17);
        }

        else
        {
          v15 = 0;
          v21 = 0;
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
        }

        [(TSDMSGService *)self deregisterExtSyncSession:v15 pid:v3, v17, v18, v19, v20, v21];
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  os_unfair_lock_unlock(&self->_extSyncSessionsLock);
  return v9 != 0;
}

- (BOOL)stopAllClockSessionsForProcess:(int)process
{
  v3 = *&process;
  os_unfair_lock_lock(&self->_clockSessionsLock);
  v5 = +[NSMutableSet set];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_activeClockSessionsBySyncId;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_activeClockSessionsBySyncId objectForKeyedSubscript:v10];
        if ([v11 getRef:v3])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v12 = [v5 count];
  if (v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002A388();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v13);
        }

        -[TSDMSGService deregisterClockSession:pid:removeAllRefs:](self, "deregisterClockSession:pid:removeAllRefs:", [*(*(&v18 + 1) + 8 * j) unsignedIntValue], v3, 1);
      }

      v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  os_unfair_lock_unlock(&self->_clockSessionsLock);
  return v12 != 0;
}

- (void)handleProcessDisconnect:(int)disconnect
{
  v3 = *&disconnect;
  v5 = [(TSDMSGService *)self stopAllExternalSyncsForProcess:?];
  v6 = [(TSDMSGService *)self stopAllClockSessionsForProcess:v3];
  if (((v5 & 1) != 0 || v6) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002A400();
  }
}

- (unint64_t)getMSGClock:(unsigned int)clock error:(id *)error
{
  v5 = *&clock;
  os_unfair_lock_lock(&self->_clockSessionsLock);
  v7 = -1;
  if ([(TSDMSGService *)self checkClockSessionRegistered:v5 removeStaleKernelClock:1])
  {
    v8 = [(TSDMSGService *)self getClockSessionForSyncId:v5];
    clockId = -1;
    if (v8)
    {
      clockId = [v8 clockId];
    }

    if (clockId == -1)
    {
      v10 = -536870199;
    }

    else
    {
      v10 = 0;
    }

    v7 = clockId;
  }

  else
  {
    v10 = -536870206;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002A478();
    }

    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_clockSessionsLock);
  if (error && v10)
  {
    *error = [NSError errorWithDomain:@"TSDErrorDomain" code:v10 userInfo:0];
  }

  return v7;
}

- (unint64_t)addMSGClock:(unsigned int)clock withNominalSyncDuration:(id)duration forProcess:(int)process error:(id *)error
{
  v7 = *&process;
  var1 = duration.var1;
  var0 = duration.var0;
  v12 = -536870206;
  clockId = -1;
  os_unfair_lock_lock(&self->_clockSessionsLock);
  if (clock)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002A4F0();
    }

    goto LABEL_4;
  }

  if (!var1)
  {
LABEL_4:
    v14 = 0;
    goto LABEL_5;
  }

  if ([(TSDMSGService *)self checkClockSessionRegistered:0 removeStaleKernelClock:1])
  {
    v14 = 0;
    v12 = -536870203;
  }

  else
  {
    v17 = 0;
    v12 = [(TSDMSGService *)self registerClockSession:0 nominalSyncDuration:var0 pid:var1 session:v7, &v17];
    v16 = v17;
    v14 = v16;
    if (!v12)
    {
      clockId = [v16 clockId];
      v12 = 0;
    }
  }

LABEL_5:
  os_unfair_lock_unlock(&self->_clockSessionsLock);
  if (error && v12)
  {
    *error = [NSError errorWithDomain:@"TSDErrorDomain" code:v12 userInfo:0];
  }

  return clockId;
}

- (unint64_t)addMSGClockRef:(unsigned int)ref forProcess:(int)process error:(id *)error
{
  v6 = *&process;
  v9 = -536870206;
  clockId = -1;
  os_unfair_lock_lock(&self->_clockSessionsLock);
  if (ref || ![(TSDMSGService *)self checkClockSessionRegistered:0 removeStaleKernelClock:1])
  {
    v12 = 0;
  }

  else
  {
    v14 = 0;
    v9 = [(TSDMSGService *)self addClockSessionRef:0 refCnt:1 pid:v6 session:&v14];
    v11 = v14;
    v12 = v11;
    if (!v9)
    {
      clockId = [v11 clockId];
      v9 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_clockSessionsLock);
  if (error && v9)
  {
    *error = [NSError errorWithDomain:@"TSDErrorDomain" code:v9 userInfo:0];
  }

  return clockId;
}

- (BOOL)removeMSGClock:(unsigned int)clock forProcess:(int)process error:(id *)error
{
  v6 = *&process;
  v9 = -536870206;
  os_unfair_lock_lock(&self->_clockSessionsLock);
  if (!clock)
  {
    if ([(TSDMSGService *)self checkClockSessionRegistered:0 removeStaleKernelClock:1])
    {
      v9 = [(TSDMSGService *)self deregisterClockSession:0 pid:v6 removeAllRefs:0];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002A568();
    }
  }

  os_unfair_lock_unlock(&self->_clockSessionsLock);
  if (error && v9)
  {
    *error = [NSError errorWithDomain:@"TSDErrorDomain" code:v9 userInfo:0];
  }

  return v9 == 0;
}

- (unint64_t)restoreMSGClockSession:(unsigned int)session nominalSyncDuration:(id)duration refCnt:(unint64_t)cnt forProcess:(int)process error:(id *)error
{
  v8 = *&process;
  var1 = duration.var1;
  var0 = duration.var0;
  v14 = -536870206;
  os_unfair_lock_lock(&self->_clockSessionsLock);
  if (session)
  {
    goto LABEL_2;
  }

  if ([(TSDMSGService *)self checkClockSessionRegistered:0 removeStaleKernelClock:0])
  {
    if ([(TSDMSGService *)self getClockSessionRefCnt:0 process:v8])
    {
      os_unfair_lock_unlock(&self->_clockSessionsLock);
LABEL_2:
      v15 = 0;
      goto LABEL_3;
    }

    v21 = 0;
    v18 = &v21;
    v19 = [(TSDMSGService *)self addClockSessionRef:0 refCnt:cnt pid:v8 session:&v21];
  }

  else
  {
    v20 = 0;
    v18 = &v20;
    v19 = [(TSDMSGService *)self restoreClockSession:0 nominalSyncDuration:var0 refCnt:var1 pid:cnt session:v8, &v20];
  }

  v14 = v19;
  v15 = *v18;
  os_unfair_lock_unlock(&self->_clockSessionsLock);
  if (!v14)
  {
    clockId = [v15 clockId];
    goto LABEL_5;
  }

LABEL_3:
  clockId = -1;
  if (error)
  {
    *error = [NSError errorWithDomain:@"TSDErrorDomain" code:v14 userInfo:0];
  }

LABEL_5:

  return clockId;
}

@end