@interface TSDDaemonServiceServerExported
- (TSDDaemonServiceServer)object;
- (void)addMSGClock:(unsigned int)clock withNominalSyncDuration:(id)duration reply:(id)reply;
- (void)addMSGClockRef:(unsigned int)ref reply:(id)reply;
- (void)callMethodForDaemonClient:(unsigned int)client clientMethodSelector:(unsigned int)selector scalarInputs:(ScalarArgsArray *)inputs structInput:(id)input scalarOutputCount:(unsigned int)count reply:(id)reply;
- (void)closeDaemonClient:(unsigned int)client reply:(id)reply;
- (void)getMSGClock:(unsigned int)clock reply:(id)reply;
- (void)openDaemonClientWithRegistryEntryID:(unint64_t)d clientType:(unsigned int)type reply:(id)reply;
- (void)propertiesForRegistryEntryID:(unint64_t)d signpostID:(unint64_t)iD reply:(id)reply;
- (void)propertyForRegistryEntryID:(unint64_t)d signpostID:(unint64_t)iD key:(id)key reply:(id)reply;
- (void)removeMSGClock:(unsigned int)clock reply:(id)reply;
- (void)restoreMSGClockSession:(unsigned int)session nominalSyncDuration:(id)duration refCnt:(unint64_t)cnt reply:(id)reply;
- (void)startMSGExternalSync:(id *)sync reply:(id)reply;
- (void)stopMSGExternalSync:(unsigned int)sync reply:(id)reply;
@end

@implementation TSDDaemonServiceServerExported

- (void)openDaemonClientWithRegistryEntryID:(unint64_t)d clientType:(unsigned int)type reply:(id)reply
{
  v5 = *&type;
  replyCopy = reply;
  if (qword_100058898)
  {
    processID = self->_processID;
    v12 = 0;
    v10 = [qword_100058898 openDaemonClient:processID withRegistryEntryID:d clientType:v5 error:&v12];
    v11 = v12;
    replyCopy[2](replyCopy, v10, v11);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      dCopy = d;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to open daemon client registryEntryID  %llu", buf, 0xCu);
    }

    v11 = [NSError errorWithDomain:@"TSErrorDomain" code:-536870201 userInfo:0];
    replyCopy[2](replyCopy, 0, v11);
  }
}

- (void)closeDaemonClient:(unsigned int)client reply:(id)reply
{
  v5 = qword_100058898;
  if (qword_100058898)
  {
    v6 = *&client;
    processID = self->_processID;
    v13 = 0;
    replyCopy = reply;
    v9 = [v5 closeDaemonClient:processID daemonClientID:v6 error:&v13];
    v10 = v13;
    replyCopy[2](replyCopy, v9, v10);
  }

  else
  {
    replyCopy2 = reply;
    v12 = [NSError errorWithDomain:@"TSErrorDomain" code:-536870201 userInfo:0];
    (*(reply + 2))(replyCopy2, 0, v12);
  }
}

- (void)callMethodForDaemonClient:(unsigned int)client clientMethodSelector:(unsigned int)selector scalarInputs:(ScalarArgsArray *)inputs structInput:(id)input scalarOutputCount:(unsigned int)count reply:(id)reply
{
  v11 = *&selector;
  v12 = *&client;
  inputCopy = input;
  replyCopy = reply;
  v15 = qword_100058898;
  if (!qword_100058898)
  {
    v17 = [NSError errorWithDomain:@"TSErrorDomain" code:-536870201 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, 0, v17);

    goto LABEL_26;
  }

  memset(v26, 0, sizeof(v26));
  countCopy = count;
  if (inputs)
  {
    var1 = inputs->var1;
    if (!var1)
    {
      inputs = 0;
    }
  }

  else
  {
    var1 = 0;
  }

  if (!inputCopy)
  {
    bytes = 0;
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  if ([inputCopy length])
  {
    bytes = [inputCopy bytes];
  }

  else
  {
    bytes = 0;
  }

  if (![inputCopy length])
  {
    goto LABEL_15;
  }

  v19 = [inputCopy length];
LABEL_16:
  if (count)
  {
    v20 = v26;
  }

  else
  {
    v20 = 0;
  }

  if (count)
  {
    v21 = &countCopy;
  }

  else
  {
    v21 = 0;
  }

  v25 = 0;
  v22 = [v15 callMethodForDaemonClient:v12 clientMethodSelector:v11 scalarInputs:inputs scalarInputCount:var1 structInput:bytes structInputSize:v19 scalarOutputs:v20 scalarOutputCount:v21 error:&v25];
  v23 = v25;
  if ((v22 & (countCopy != 0)) != 0)
  {
    v24 = v26;
  }

  else
  {
    v24 = 0;
  }

  (*(replyCopy + 2))(replyCopy, v22, v24, v23);

LABEL_26:
}

- (void)propertyForRegistryEntryID:(unint64_t)d signpostID:(unint64_t)iD key:(id)key reply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
  v10 = [IOKService entryIDMatching:d];
  v11 = [IOKService matchingService:v10];

  if (v11)
  {
    v12 = [v11 propertyForKey:keyCopy];
  }

  else
  {
    sub_10002CC54(&v13);
    v12 = v13;
  }

  replyCopy[2](replyCopy, v12);
}

- (void)propertiesForRegistryEntryID:(unint64_t)d signpostID:(unint64_t)iD reply:(id)reply
{
  replyCopy = reply;
  v7 = [IOKService entryIDMatching:d];
  v8 = [IOKService matchingService:v7];

  if (v8)
  {
    properties = [v8 properties];
  }

  else
  {
    sub_10002CD20(&v10);
    properties = v10;
  }

  replyCopy[2](replyCopy, properties);
}

- (void)startMSGExternalSync:(id *)sync reply:(id)reply
{
  replyCopy = reply;
  if (qword_1000588A0)
  {
    v7 = +[NSXPCConnection currentConnection];
    v8 = qword_1000588A0;
    processID = self->_processID;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001C7FC;
    v12[3] = &unk_10004D0D8;
    v12[4] = self;
    v13 = v7;
    v10 = v7;
    v11 = [v8 startExternalSync:sync forProcess:processID withCallback:v12];
  }

  else
  {
    v11 = 3758097095;
  }

  replyCopy[2](replyCopy, v11);
}

- (void)stopMSGExternalSync:(unsigned int)sync reply:(id)reply
{
  v4 = *&sync;
  replyCopy = reply;
  if (qword_1000588A0)
  {
    v6 = [qword_1000588A0 stopExternalSync:v4 forProcess:self->_processID];
  }

  else
  {
    v6 = 3758097095;
  }

  replyCopy[2](replyCopy, v6);
}

- (void)getMSGClock:(unsigned int)clock reply:(id)reply
{
  v4 = *&clock;
  replyCopy = reply;
  if (qword_1000588A0)
  {
    v8 = 0;
    v6 = [qword_1000588A0 getMSGClock:v4 error:&v8];
    v7 = v8;
  }

  else
  {
    v7 = 0;
    v6 = -1;
  }

  replyCopy[2](replyCopy, v6, v7);
}

- (void)addMSGClock:(unsigned int)clock withNominalSyncDuration:(id)duration reply:(id)reply
{
  var1 = duration.var1;
  var0 = duration.var0;
  v7 = *&clock;
  replyCopy = reply;
  if (qword_1000588A0)
  {
    processID = self->_processID;
    v13 = 0;
    v11 = [qword_1000588A0 addMSGClock:v7 withNominalSyncDuration:var0 forProcess:var1 error:{processID, &v13}];
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v11 = -1;
  }

  replyCopy[2](replyCopy, v11, v12);
}

- (void)addMSGClockRef:(unsigned int)ref reply:(id)reply
{
  v4 = *&ref;
  replyCopy = reply;
  if (qword_1000588A0)
  {
    processID = self->_processID;
    v10 = 0;
    v8 = [qword_1000588A0 addMSGClockRef:v4 forProcess:processID error:&v10];
    v9 = v10;
  }

  else
  {
    v9 = 0;
    v8 = -1;
  }

  replyCopy[2](replyCopy, v8, v9);
}

- (void)removeMSGClock:(unsigned int)clock reply:(id)reply
{
  v4 = *&clock;
  replyCopy = reply;
  if (qword_1000588A0)
  {
    processID = self->_processID;
    v10 = 0;
    v8 = [qword_1000588A0 removeMSGClock:v4 forProcess:processID error:&v10];
    v9 = v10;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  replyCopy[2](replyCopy, v8, v9);
}

- (void)restoreMSGClockSession:(unsigned int)session nominalSyncDuration:(id)duration refCnt:(unint64_t)cnt reply:(id)reply
{
  var1 = duration.var1;
  var0 = duration.var0;
  v9 = *&session;
  replyCopy = reply;
  if (qword_1000588A0)
  {
    processID = self->_processID;
    v15 = 0;
    v13 = [qword_1000588A0 restoreMSGClockSession:v9 nominalSyncDuration:var0 refCnt:var1 forProcess:cnt error:{processID, &v15}];
    v14 = v15;
  }

  else
  {
    v14 = 0;
    v13 = -1;
  }

  replyCopy[2](replyCopy, v13, v14);
}

- (TSDDaemonServiceServer)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end