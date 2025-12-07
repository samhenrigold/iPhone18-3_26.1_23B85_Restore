@interface TSDDaemonService
+ (id)daemonService;
+ (id)sharedDaemonService;
- (BOOL)callMethodForDaemonClient:(unsigned int)client clientMethodSelector:(unsigned int)selector scalarInputs:(const unint64_t *)inputs scalarInputCount:(unsigned int)count structInput:(const void *)input structInputSize:(unint64_t)size scalarOutputs:(unint64_t *)outputs scalarOutputCount:(unsigned int *)self0 error:(id *)self1;
- (BOOL)closeDaemonClient:(int)client daemonClientID:(unsigned int)d error:(id *)error;
- (BOOL)deregisterAsyncCallback;
- (BOOL)deregisterProcess:(int)process error:(id *)error;
- (BOOL)registerAsyncCallback;
- (TSDDaemonService)init;
- (int)registerProcess:(int)process withCallback:(id)callback error:(id *)error;
- (unsigned)openDaemonClient:(int)client withRegistryEntryID:(unint64_t)d clientType:(unsigned int)type error:(id *)error;
- (void)dealloc;
- (void)finalizeNotifications;
- (void)handleNotification:(int)notification clientID:(unsigned int)d result:(int)result withArgs:(unint64_t *)args ofCount:(unsigned int)count;
@end

@implementation TSDDaemonService

+ (id)sharedDaemonService
{
  if (qword_100058888 != -1)
  {
    sub_10002AEA8();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016E60;
  block[3] = &unk_10004CAB0;
  block[4] = self;
  dispatch_sync(qword_100058880, block);
  v3 = qword_100058878;

  return v3;
}

+ (id)daemonService
{
  v2 = objc_alloc_init(TSDDaemonService);
  if (!v2)
  {
    v3 = 10;
    do
    {
      usleep(0x2710u);
      v2 = objc_alloc_init(TSDDaemonService);
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

- (TSDDaemonService)init
{
  v18.receiver = self;
  v18.super_class = TSDDaemonService;
  v2 = [(TSDDaemonService *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_asyncCallbackRefcon = 0;
    v4 = +[NSMutableDictionary dictionary];
    processCallbacks = v3->_processCallbacks;
    v3->_processCallbacks = v4;

    v3->_processCallbacksLock._os_unfair_lock_opaque = 0;
    v6 = [IOKService serviceMatching:@"IOTimeSyncDaemonService"];
    v7 = [IOKService matchingService:v6];

    if (v7)
    {
      v8 = [v7 propertyForKey:@"IOTimeSyncDaemonClientEntryIDMatching"];
      v3->_supportsRegistryEntryIDDaemonClientMatching = v8 != 0;

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        if (v3->_supportsRegistryEntryIDDaemonClientMatching)
        {
          v9 = "YES";
        }

        else
        {
          v9 = "NO";
        }

        *buf = 136315138;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "_supportsRegistryEntryIDDaemonClientMatching %s\n", buf, 0xCu);
      }

      v10 = [[IOKConnection alloc] initWithService:v7 andType:42];
      connection = v3->_connection;
      v3->_connection = v10;

      if (v3->_connection)
      {
        p_super = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
        v13 = dispatch_queue_create("com.apple.TimeSync.daemon.service", p_super);
        notificationsQueue = v3->_notificationsQueue;
        v3->_notificationsQueue = v13;

        if (v3->_notificationsQueue)
        {
          v15 = [[IOKNotificationPort alloc] initOnDispatchQueue:v3->_notificationsQueue];
          notificationPort = v3->_notificationPort;
          v3->_notificationPort = v15;

          if (v3->_connection)
          {
            [(TSDDaemonService *)v3 registerAsyncCallback];
LABEL_12:

            return v3;
          }

          sub_10002AEBC(v3);
        }

        else
        {
          sub_10002AF7C(v3);
        }

LABEL_19:
        v3 = 0;
        goto LABEL_12;
      }

      sub_10002B03C();
    }

    else
    {
      sub_10002B0EC();
    }

    p_super = &v3->super;
    goto LABEL_19;
  }

  return v3;
}

- (void)dealloc
{
  [(TSDDaemonService *)self finalizeNotifications];
  v3.receiver = self;
  v3.super_class = TSDDaemonService;
  [(TSDDaemonService *)&v3 dealloc];
}

- (void)finalizeNotifications
{
  [(TSDDaemonService *)self deregisterAsyncCallback];
  notificationPort = self->_notificationPort;
  self->_notificationPort = 0;
}

- (int)registerProcess:(int)process withCallback:(id)callback error:(id *)error
{
  v6 = *&process;
  callbackCopy = callback;
  v15[0] = 0;
  v15[1] = v6;
  v14 = 0;
  v13[0] = 1;
  if (([(IOKConnection *)self->_connection callMethodWithSelector:0 scalarInputs:v15 scalarInputCount:2 scalarOutputs:&v14 scalarOutputCount:v13 error:error]& 1) != 0)
  {
    if (v14)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v10 = [NSNumber numberWithUnsignedInt:v6];
    os_unfair_lock_lock(&self->_processCallbacksLock);
    v11 = objc_retainBlock(callbackCopy);
    [(NSMutableDictionary *)self->_processCallbacks setObject:v11 forKeyedSubscript:v10];

    os_unfair_lock_unlock(&self->_processCallbacksLock);
  }

  else
  {
    sub_10002B19C();
    v9 = v13[1];
  }

  return v9;
}

- (BOOL)deregisterProcess:(int)process error:(id *)error
{
  v5 = *&process;
  os_unfair_lock_lock(&self->_processCallbacksLock);
  processCallbacks = self->_processCallbacks;
  v8 = [NSNumber numberWithUnsignedInt:v5];
  [(NSMutableDictionary *)processCallbacks removeObjectForKey:v8];

  os_unfair_lock_unlock(&self->_processCallbacksLock);
  v11 = 0;
  v12[0] = 1;
  v12[1] = v5;
  v9 = [(IOKConnection *)self->_connection callMethodWithSelector:0 scalarInputs:v12 scalarInputCount:2 scalarOutputs:0 scalarOutputCount:&v11 error:error];
  if ((v9 & 1) == 0)
  {
    sub_10002B258();
  }

  return v9;
}

- (unsigned)openDaemonClient:(int)client withRegistryEntryID:(unint64_t)d clientType:(unsigned int)type error:(id *)error
{
  v15[0] = 4;
  v15[1] = client;
  dCopy = d;
  typeCopy = type;
  v14 = 0;
  v13[0] = 1;
  if (!self->_supportsRegistryEntryIDDaemonClientMatching)
  {
    v8 = [IOKService entryIDMatching:d];
    v9 = [IOKService matchingService:v8];

    if (!v9)
    {
      sub_10002B3C8();
      return v13[1];
    }

    v10 = [v9 propertyForKey:@"IOTimeSyncDaemonServiceUniqueID"];
    if (!v10)
    {
      sub_10002B308(v9);
      return 0;
    }

    v11 = v10;
    dCopy = [v10 unsignedIntValue];
  }

  if (([(IOKConnection *)self->_connection callMethodWithSelector:0 scalarInputs:v15 scalarInputCount:4 structInput:0 structInputSize:0 scalarOutputs:&v14 scalarOutputCount:v13 structOutput:0 structOutputSize:0 error:error]& 1) == 0)
  {
    sub_10002B484();
    return v13[1];
  }

  if (v13[0] != 1)
  {
    sub_10002B540();
    return v13[1];
  }

  return v14;
}

- (BOOL)closeDaemonClient:(int)client daemonClientID:(unsigned int)d error:(id *)error
{
  v8[0] = 5;
  v8[1] = client;
  v8[2] = d;
  v7 = 0;
  v5 = [(IOKConnection *)self->_connection callMethodWithSelector:0 scalarInputs:v8 scalarInputCount:3 scalarOutputs:0 scalarOutputCount:&v7 error:error];
  if ((v5 & 1) == 0)
  {
    sub_10002B5FC();
  }

  return v5;
}

- (BOOL)callMethodForDaemonClient:(unsigned int)client clientMethodSelector:(unsigned int)selector scalarInputs:(const unint64_t *)inputs scalarInputCount:(unsigned int)count structInput:(const void *)input structInputSize:(unint64_t)size scalarOutputs:(unint64_t *)outputs scalarOutputCount:(unsigned int *)self0 error:(id *)self1
{
  if (count > 0xE)
  {
    return 0;
  }

  memset(v24, 0, sizeof(v24));
  v23[0] = client;
  v23[1] = selector;
  if (count)
  {
    memcpy(v24, inputs, 8 * count);
  }

  v17 = [(IOKConnection *)self->_connection callMethodWithSelector:1 scalarInputs:v23 scalarInputCount:count + 2 structInput:input structInputSize:size scalarOutputs:outputs scalarOutputCount:outputCount structOutput:0 structOutputSize:0 error:error];
  if ((v17 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    clientCopy = client;
    v21 = 1024;
    selectorCopy = selector;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDDaemonService callMethodForDaemonClient failed clientID %u, clientMethodSelector %u\n", buf, 0xEu);
  }

  return v17;
}

- (void)handleNotification:(int)notification clientID:(unsigned int)d result:(int)result withArgs:(unint64_t *)args ofCount:(unsigned int)count
{
  v7 = *&count;
  v9 = *&result;
  v10 = *&d;
  v11 = *&notification;
  os_unfair_lock_lock(&self->_processCallbacksLock);
  processCallbacks = self->_processCallbacks;
  v14 = [NSNumber numberWithUnsignedInt:v11];
  v15 = [(NSMutableDictionary *)processCallbacks objectForKey:v14];

  os_unfair_lock_unlock(&self->_processCallbacksLock);
  if (v15)
  {
    (v15)[2](v15, v10, v9, args, v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(NSMutableDictionary *)self->_processCallbacks count];
    v17[0] = 67109632;
    v17[1] = v11;
    v18 = 1024;
    v19 = v10;
    v20 = 1024;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TSDDaemonService NOT calling callback processID %u client %d process count %u\n", v17, 0x14u);
  }
}

- (BOOL)registerAsyncCallback
{
  v3 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  self->_asyncCallbackRefcon = [v3 allocateRefcon:self];
  p_asyncCallbackRefcon = &self->_asyncCallbackRefcon;

  v6 = *p_asyncCallbackRefcon;
  v5 = p_asyncCallbackRefcon[1];
  v12 = sub_1000012AC;
  v13 = v6;
  v10 = 2;
  v9 = 0;
  v7 = [*(p_asyncCallbackRefcon - 3) callAsyncMethodWithSelector:0 wakePort:objc_msgSend(v5 reference:"machPort") referenceCount:v11 scalarInputs:8 scalarInputCount:&v10 scalarOutputs:1 scalarOutputCount:0 error:{&v9, 0}];
  if ((v7 & 1) == 0)
  {
    sub_10002B6AC(p_asyncCallbackRefcon);
  }

  return v7;
}

- (BOOL)deregisterAsyncCallback
{
  v7 = 3;
  v6 = 0;
  v3 = +[TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v3 releaseRefcon:self->_asyncCallbackRefcon];

  v4 = [(IOKConnection *)self->_connection callMethodWithSelector:0 scalarInputs:&v7 scalarInputCount:1 scalarOutputs:0 scalarOutputCount:&v6 error:0];
  if ((v4 & 1) == 0)
  {
    sub_10002B788();
  }

  return v4;
}

@end