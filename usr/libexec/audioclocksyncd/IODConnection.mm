@interface IODConnection
+ (void)dispatchNotificationForClientID:(unsigned int)d ioResult:(int)result args:(const unint64_t *)args numArgs:(unsigned int)numArgs;
- (BOOL)callMethodWithSelector:(unsigned int)selector scalarInputs:(const unint64_t *)inputs scalarInputCount:(unsigned int)count scalarOutputs:(unint64_t *)outputs scalarOutputCount:(unsigned int *)outputCount error:(id *)error;
- (BOOL)callMethodWithSelector:(unsigned int)selector scalarInputs:(const unint64_t *)inputs scalarInputCount:(unsigned int)count structInput:(const void *)input structInputSize:(unint64_t)size scalarOutputs:(unint64_t *)outputs scalarOutputCount:(unsigned int *)outputCount error:(id *)self0;
- (BOOL)callMethodWithSelector:(unsigned int)selector structInput:(const void *)input structInputSize:(unint64_t)size error:(id *)error;
- (BOOL)deregisterAsyncNotificationsWithSelector:(unsigned int)selector;
- (BOOL)registerAsyncNotificationsWithSelector:(unsigned int)selector callBack:(void *)back refcon:(unint64_t)refcon callbackQueue:(id)queue;
- (IODConnection)init;
- (IODConnection)initWithService:(id)service andType:(unsigned int)type;
- (void)dealloc;
@end

@implementation IODConnection

- (IODConnection)init
{
  v3 = [NSString stringWithUTF8String:"[IODConnection init]"];
  [NSException raise:NSInvalidArgumentException format:@"Do not call %@", v3];

  return 0;
}

- (IODConnection)initWithService:(id)service andType:(unsigned int)type
{
  v4 = *&type;
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = IODConnection;
  v7 = [(IODConnection *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_clientID = 0;
    asyncCallbackPort = v7->_asyncCallbackPort;
    v7->_asyncCallbackPort = 0;

    asyncCallbackQueue = v8->_asyncCallbackQueue;
    v8->_asyncCallbackQueue = 0;

    v8->_asyncCallback = 0;
    v8->_refcon = 0;
    if (qword_100058800 != -1)
    {
      sub_10002959C();
    }

    entryID = [serviceCopy entryID];
    v12 = [qword_1000587F8 openDaemonClient:dword_100058808 withRegistryEntryID:entryID clientType:v4 error:0];
    v8->_clientID = v12;
    if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = entryID;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IODConnectionDaemon failed to open service with registryEntryID %llu\n", buf, 0xCu);
    }
  }

  return v8;
}

- (void)dealloc
{
  iokConnection = self->_iokConnection;
  self->_iokConnection = 0;

  clientID = self->_clientID;
  if (clientID)
  {
    [qword_1000587F8 closeDaemonClient:dword_100058808 daemonClientID:clientID error:0];
  }

  v5.receiver = self;
  v5.super_class = IODConnection;
  [(IODConnection *)&v5 dealloc];
}

+ (void)dispatchNotificationForClientID:(unsigned int)d ioResult:(int)result args:(const unint64_t *)args numArgs:(unsigned int)numArgs
{
  v8 = *&d;
  os_unfair_lock_lock(&dword_100058918);
  v9 = qword_100058810;
  v10 = [NSNumber numberWithUnsignedInt:v8];
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    v12 = *(v11 + 40);
    v13 = *(v11 + 48);
    v14 = *(v11 + 24);
    v15 = v13 != 0;
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v15 = 0;
  }

  os_unfair_lock_unlock(&dword_100058918);
  if (numArgs <= 0x10 && v14 && v12 && v15)
  {
    *buf = 0;
    v23 = buf;
    v24 = 0xA010000000;
    v25 = &unk_1000495DA;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    __memmove_chk();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000729C;
    v16[3] = &unk_10004C770;
    v19 = v12;
    v17 = v11;
    v18 = buf;
    resultCopy = result;
    numArgsCopy = numArgs;
    dispatch_async(v14, v16);

    _Block_object_dispose(buf, 8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IODConnection NO CONNECTION callback clientID %u\n", buf, 8u);
  }
}

- (BOOL)callMethodWithSelector:(unsigned int)selector scalarInputs:(const unint64_t *)inputs scalarInputCount:(unsigned int)count structInput:(const void *)input structInputSize:(unint64_t)size scalarOutputs:(unint64_t *)outputs scalarOutputCount:(unsigned int *)outputCount error:(id *)self0
{
  v12 = *&count;
  v14 = *&selector;
  iokConnection = self->_iokConnection;
  if (iokConnection)
  {
    return [(IOKConnection *)iokConnection callMethodWithSelector:*&selector scalarInputs:inputs scalarInputCount:v12 structInput:input structInputSize:size scalarOutputs:outputs scalarOutputCount:outputCount structOutput:0 structOutputSize:0 error:error];
  }

  clientID = self->_clientID;
  if (clientID)
  {
    return [qword_1000587F8 callMethodForDaemonClient:clientID clientMethodSelector:v14 scalarInputs:inputs scalarInputCount:v12 structInput:input structInputSize:size scalarOutputs:outputs scalarOutputCount:outputCount error:error];
  }

  else
  {
    return 0;
  }
}

- (BOOL)callMethodWithSelector:(unsigned int)selector scalarInputs:(const unint64_t *)inputs scalarInputCount:(unsigned int)count scalarOutputs:(unint64_t *)outputs scalarOutputCount:(unsigned int *)outputCount error:(id *)error
{
  v9 = *&count;
  v11 = *&selector;
  iokConnection = self->_iokConnection;
  if (iokConnection)
  {

    return [(IOKConnection *)iokConnection callMethodWithSelector:*&selector scalarInputs:inputs scalarInputCount:v9 scalarOutputs:outputs scalarOutputCount:outputCount error:error];
  }

  else
  {
    clientID = self->_clientID;
    if (clientID)
    {
      return [qword_1000587F8 callMethodForDaemonClient:clientID clientMethodSelector:v11 scalarInputs:inputs scalarInputCount:v9 structInput:0 structInputSize:0 scalarOutputs:outputs scalarOutputCount:outputCount error:error];
    }

    else
    {
      return 0;
    }
  }
}

- (BOOL)callMethodWithSelector:(unsigned int)selector structInput:(const void *)input structInputSize:(unint64_t)size error:(id *)error
{
  v8 = *&selector;
  iokConnection = self->_iokConnection;
  if (iokConnection)
  {

    return [(IOKConnection *)iokConnection callMethodWithSelector:*&selector structInput:input structInputSize:size structOutput:0 structOutputSize:0 error:error];
  }

  else
  {
    clientID = self->_clientID;
    if (clientID)
    {
      return [qword_1000587F8 callMethodForDaemonClient:clientID clientMethodSelector:v8 scalarInputs:0 scalarInputCount:0 structInput:input structInputSize:size scalarOutputs:0 scalarOutputCount:0 error:error];
    }

    else
    {
      return 0;
    }
  }
}

- (BOOL)registerAsyncNotificationsWithSelector:(unsigned int)selector callBack:(void *)back refcon:(unint64_t)refcon callbackQueue:(id)queue
{
  v9 = *&selector;
  queueCopy = queue;
  objc_storeStrong(&self->_asyncCallbackQueue, queue);
  if (!self->_asyncCallbackQueue)
  {
    goto LABEL_10;
  }

  if (!self->_iokConnection)
  {
    clientID = self->_clientID;
    if (clientID)
    {
      if ([qword_1000587F8 callMethodForDaemonClient:clientID clientMethodSelector:v9 scalarInputs:0 scalarInputCount:0 structInput:0 structInputSize:0 scalarOutputs:0 scalarOutputCount:0 error:0])
      {
        os_unfair_lock_lock(&dword_100058918);
        self->_asyncCallback = back;
        self->_refcon = refcon;
        v17 = qword_100058810;
        v18 = [NSNumber numberWithUnsignedInt:self->_clientID];
        [v17 setObject:self forKey:v18];

        os_unfair_lock_unlock(&dword_100058918);
        v15 = 1;
        goto LABEL_11;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_clientID;
        *buf = 67109634;
        v22 = v19;
        LOWORD(backCopy) = 1024;
        *(&backCopy + 2) = v9;
        HIWORD(backCopy) = 2080;
        refconCopy = "fail";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IODConnection::registerAsyncNotificationsWithSelector clientID %u selector %u result %s\n", buf, 0x18u);
      }
    }

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v12 = [[IOKNotificationPort alloc] initOnDispatchQueue:queueCopy];
  asyncCallbackPort = self->_asyncCallbackPort;
  self->_asyncCallbackPort = v12;

  v14 = self->_asyncCallbackPort;
  if (!v14)
  {
    goto LABEL_10;
  }

  backCopy = back;
  refconCopy = refcon;
  v15 = [(IOKConnection *)self->_iokConnection callAsyncMethodWithSelector:v9 wakePort:[(IOKNotificationPort *)v14 machPort] reference:buf referenceCount:8 scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:0 error:0];
LABEL_11:

  return v15;
}

- (BOOL)deregisterAsyncNotificationsWithSelector:(unsigned int)selector
{
  v3 = *&selector;
  iokConnection = self->_iokConnection;
  if (iokConnection)
  {
    v6 = [(IOKConnection *)iokConnection callMethodWithSelector:*&selector scalarInputs:0 scalarInputCount:0 scalarOutputs:0 scalarOutputCount:0 error:0];
  }

  else
  {
    if (!self->_clientID)
    {
      v9 = 0;
      goto LABEL_6;
    }

    os_unfair_lock_lock(&dword_100058918);
    v7 = qword_100058810;
    v8 = [NSNumber numberWithUnsignedInt:self->_clientID];
    [v7 removeObjectForKey:v8];

    self->_asyncCallback = 0;
    self->_refcon = 0;
    os_unfair_lock_unlock(&dword_100058918);
    v6 = [qword_1000587F8 callMethodForDaemonClient:self->_clientID clientMethodSelector:v3 scalarInputs:0 scalarInputCount:0 structInput:0 structInputSize:0 scalarOutputs:0 scalarOutputCount:0 error:0];
  }

  v9 = v6;
LABEL_6:
  asyncCallbackPort = self->_asyncCallbackPort;
  self->_asyncCallbackPort = 0;

  asyncCallbackQueue = self->_asyncCallbackQueue;
  self->_asyncCallbackQueue = 0;

  return v9;
}

@end