@interface CBStackISOStreamBTStack
+ (BOOL)_configureStream:(id)stream setup:(BOOL)setup error:(id *)error;
+ (BOOL)_processConfigRequest:(id)request error:(id *)error;
+ (BOOL)_writeWithRequest:(id)request stream:(id)stream error:(id *)error;
+ (void)_processNextConfigRequest:(unsigned __int16)request;
- (CBStackISOStreamBTStack)initWithConnectionHandle:(unsigned __int16)handle dataPathDirection:(unsigned __int8)direction dataPathID:(unsigned __int8)d dispatchQueue:(id)queue;
- (id)descriptionWithLevel:(int)level;
- (void)_activateCompletedWithError:(id)error;
- (void)_activateWithCompletion:(id)completion;
- (void)_completeReadRequest:(id)request error:(id)error;
- (void)_completeWriteRequest:(id)request error:(id)error;
- (void)_invalidate;
- (void)_invalidateCoreWithError:(id)error;
- (void)_invalidated;
- (void)_receivedData:(id)data error:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)readWithRequest:(id)request;
- (void)writeWithRequest:(id)request;
@end

@implementation CBStackISOStreamBTStack

+ (BOOL)_configureStream:(id)stream setup:(BOOL)setup error:(id *)error
{
  setupCopy = setup;
  streamCopy = stream;
  v21 = 0;
  sub_1000216B4(&v21);
  if (byte_100B55350)
  {
LABEL_8:
    v9 = objc_alloc_init(CBStackISOStreamConfigRequest);
    [(CBStackISOStreamConfigRequest *)v9 setStream:streamCopy];
    [(CBStackISOStreamConfigRequest *)v9 setSetup:setupCopy];
    connectionHandle = [streamCopy connectionHandle];
    v11 = [NSNumber numberWithUnsignedShort:connectionHandle];
    v12 = [qword_100B55338 objectForKeyedSubscript:v11];
    v13 = [v12 count];
    if (v13)
    {
      if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        v14 = "remove";
        if (setupCopy)
        {
          v14 = "setup";
        }

        LogPrintF_safe(&dword_100B51110, "+[CBStackISOStreamBTStack _configureStream:setup:error:]", 30, "ISO config request scheduled: %s, cnxH 0x%04X, pending %d", v14, connectionHandle, v13);
      }
    }

    else if (([self _processConfigRequest:v9 error:error] & 1) == 0)
    {
      v15 = 0;
LABEL_22:

      goto LABEL_23;
    }

    if (!v12)
    {
      v12 = objc_alloc_init(NSMutableArray);
      v16 = qword_100B55338;
      if (!qword_100B55338)
      {
        v17 = objc_alloc_init(NSMutableDictionary);
        v18 = qword_100B55338;
        qword_100B55338 = v17;

        v16 = qword_100B55338;
      }

      [v16 setObject:v12 forKeyedSubscript:v11];
    }

    [v12 addObject:v9];
    v15 = 1;
    goto LABEL_22;
  }

  if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B51110, "+[CBStackISOStreamBTStack _configureStream:setup:error:]", 30, "ISO register");
  }

  v8 = sub_100180250(sub_10014D2B4, sub_10014D520, off_100AE23D8);
  if (!v8)
  {
    byte_100B55350 = 1;
    goto LABEL_8;
  }

  if (error)
  {
    CBErrorF((v8 + 330000), "LE_Init_ISO_Config failed");
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_23:
  sub_10002249C(&v21);

  return v15;
}

+ (BOOL)_processConfigRequest:(id)request error:(id *)error
{
  requestCopy = request;
  stream = [requestCopy stream];
  connectionHandle = [stream connectionHandle];
  v8 = [NSNumber numberWithUnsignedShort:connectionHandle];
  dataPathDirection = [stream dataPathDirection];
  if ([requestCopy setup])
  {
    if (dataPathDirection == 1)
    {
      v10 = [qword_100B55340 objectForKeyedSubscript:v8];

      if (v10)
      {
        if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe(&dword_100B51110, "+[CBStackISOStreamBTStack _processConfigRequest:error:]", 90, "### ISO setup start failed: duplicate stream, cnxH 0x%04X, dpDr %s", connectionHandle, "C->H");
        }

        if (error)
        {
          v22 = CBErrorF(4294960566, "ISO setup duplicate");
          goto LABEL_47;
        }

        goto LABEL_62;
      }
    }

    dataPathID = [stream dataPathID];
    v26 = connectionHandle;
    v27 = dataPathDirection;
    v28 = dataPathID;
    if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
    {
      v13 = "?";
      v14 = "C->H";
      if (dataPathDirection != 1)
      {
        v14 = "?";
      }

      if (!dataPathDirection)
      {
        v14 = "H->C";
      }

      if (dataPathID != 255)
      {
        v13 = "Vendor";
      }

      if (!dataPathID)
      {
        v13 = "HCI";
      }

      LogPrintF_safe(&dword_100B51110, "+[CBStackISOStreamBTStack _processConfigRequest:error:]", 30, "ISO setup start: cnxH 0x%04X, dpDr %s, dpID %s", connectionHandle, v14, v13);
    }

    v17 = sub_1001802DC(&v26);
    if (v17)
    {
      if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        v23 = "?";
        v24 = "C->H";
        if (dataPathDirection != 1)
        {
          v24 = "?";
        }

        if (!dataPathDirection)
        {
          v24 = "H->C";
        }

        if (dataPathID != 255)
        {
          v23 = "Vendor";
        }

        if (!dataPathID)
        {
          v23 = "HCI";
        }

        LogPrintF_safe(&dword_100B51110, "+[CBStackISOStreamBTStack _processConfigRequest:error:]", 90, "### ISO setup start failed: cnxH 0x%04X, dpDr %s, dpID %s, status %d", connectionHandle, v24, v23, v17);
      }

      if (error)
      {
        *error = CBErrorF((v17 + 330000), "ISO setup start failed");
      }

      goto LABEL_62;
    }

    if (dataPathDirection == 1)
    {
      v18 = qword_100B55340;
      if (!qword_100B55340)
      {
        v19 = objc_alloc_init(NSMutableDictionary);
        v20 = qword_100B55340;
        qword_100B55340 = v19;

        v18 = qword_100B55340;
      }

      [v18 setObject:stream forKeyedSubscript:v8];
    }
  }

  else
  {
    if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
    {
      v11 = "?";
      if (dataPathDirection == 1)
      {
        v11 = "C->H";
      }

      if (!dataPathDirection)
      {
        v11 = "H->C";
      }

      LogPrintF_safe(&dword_100B51110, "+[CBStackISOStreamBTStack _processConfigRequest:error:]", 30, "ISO remove start: cnxH 0x%04X, dpDr %s", connectionHandle, v11);
    }

    v15 = sub_1001804F4(connectionHandle, dataPathDirection);
    if (v15)
    {
      if (dword_100B51110 <= 90 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        v16 = "?";
        if (dataPathDirection == 1)
        {
          v16 = "C->H";
        }

        if (!dataPathDirection)
        {
          v16 = "H->C";
        }

        LogPrintF_safe(&dword_100B51110, "+[CBStackISOStreamBTStack _processConfigRequest:error:]", 90, "### ISO remove start failed: cnxH 0x%04X, dpDr %s, status %d", connectionHandle, v16, v15);
      }

      if (error)
      {
        v22 = CBErrorF((v15 + 330000), "LE_Remove_ISO_Data_Path failed");
LABEL_47:
        v21 = 0;
        *error = v22;
        goto LABEL_63;
      }

LABEL_62:
      v21 = 0;
      goto LABEL_63;
    }
  }

  v21 = 1;
LABEL_63:

  return v21;
}

+ (void)_processNextConfigRequest:(unsigned __int16)request
{
  requestCopy = request;
  v9 = 0;
  sub_1000216B4(&v9);
  v5 = qword_100B55338;
  v6 = [NSNumber numberWithUnsignedShort:requestCopy];
  v7 = [v5 objectForKeyedSubscript:v6];

  firstObject = [v7 firstObject];
  if (firstObject && ([self _processConfigRequest:firstObject error:0] & 1) == 0)
  {
    [v7 removeObjectAtIndex:0];
  }

  sub_10002249C(&v9);
}

+ (BOOL)_writeWithRequest:(id)request stream:(id)stream error:(id *)error
{
  requestCopy = request;
  streamCopy = stream;
  v18 = 0;
  sub_1000216B4(&v18);
  [requestCopy setStream:streamCopy];
  data = [requestCopy data];
  v10 = [data length];
  v11 = [qword_100B55348 count];
  if (v11)
  {
    if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B51110, "+[CBStackISOStreamBTStack _writeWithRequest:stream:error:]", 9, "Write queue: cnxH 0x%04X, len %zu, pending %d", [streamCopy connectionHandle], v10, v11);
    }

LABEL_15:
    v16 = 1;
    goto LABEL_16;
  }

  [qword_100B55348 addObject:requestCopy];
  if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B51110, "+[CBStackISOStreamBTStack _writeWithRequest:stream:error:]", 9, "Write start: cnxH 0x%04X, len %zu", [streamCopy connectionHandle], v10);
  }

  v12 = streamCopy[29];
  bytes = [data bytes];
  if (bytes)
  {
    v14 = bytes;
  }

  else
  {
    v14 = "";
  }

  v15 = sub_100180700(v12, v14, v10);
  if (!v15)
  {
    goto LABEL_15;
  }

  [qword_100B55348 removeObjectAtIndex:0];
  if (error)
  {
    CBErrorF((v15 + 330000), "Write start failed");
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_16:

  sub_10002249C(&v18);
  return v16;
}

- (CBStackISOStreamBTStack)initWithConnectionHandle:(unsigned __int16)handle dataPathDirection:(unsigned __int8)direction dataPathID:(unsigned __int8)d dispatchQueue:(id)queue
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = CBStackISOStreamBTStack;
  v12 = [(CBStackISOStreamBTStack *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_connectionHandle = handle;
    v12->_dataPathDirection = direction;
    v12->_dataPathID = d;
    objc_storeStrong(&v12->_dispatchQueue, queue);
    v14 = v13;
    objc_sync_enter(v14);
    if (!qword_100B55348)
    {
      v15 = objc_alloc_init(NSMutableArray);
      v16 = qword_100B55348;
      qword_100B55348 = v15;
    }

    objc_sync_exit(v14);

    v17 = v14;
  }

  return v13;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v35 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v34 = 0;
    v5 = [objc_opt_class() description];
    CUAppendF(&v34, &v35, "%@", v5);
    v6 = v34;
  }

  v33 = v6;
  CUAppendF(&v33, &v35, "cnxH 0x%04X", self->_connectionHandle);
  v7 = v33;

  v32 = v7;
  v8 = "C->H";
  if (self->_dataPathDirection != 1)
  {
    v8 = "?";
  }

  if (self->_dataPathDirection)
  {
    v9 = v8;
  }

  else
  {
    v9 = "H->C";
  }

  CUAppendF(&v32, &v35, "dpDr %s", v9);
  v10 = v32;

  v31 = v10;
  v11 = "Vendor";
  if (self->_dataPathID == 255)
  {
    v11 = "?";
  }

  if (self->_dataPathID)
  {
    v12 = v11;
  }

  else
  {
    v12 = "HCI";
  }

  CUAppendF(&v31, &v35, "dpID %s", v12);
  v13 = v31;

  v30 = v13;
  setupState = self->_setupState;
  if (setupState >= 8)
  {
    if (setupState <= 9)
    {
      v15 = "-";
    }

    else
    {
      v15 = "U";
    }
  }

  else
  {
    v15 = off_100AE24B8[setupState];
  }

  CUAppendF(&v30, &v35, "supS %s", v15);
  v16 = v30;

  v29 = v16;
  removeState = self->_removeState;
  if (removeState >= 8)
  {
    if (removeState <= 9)
    {
      v18 = "-";
    }

    else
    {
      v18 = "U";
    }
  }

  else
  {
    v18 = off_100AE24B8[removeState];
  }

  CUAppendF(&v29, &v35, "rmvS %s", v18);
  v19 = v29;

  v28 = v19;
  CUAppendF(&v28, &v35, "misR %u", self->_missedReads);
  v20 = v28;

  v27 = v20;
  CUAppendF(&v27, &v35, "outR %d", [(NSMutableArray *)self->_readRequests count]);
  v21 = v27;

  v26 = v21;
  CUAppendF(&v26, &v35, "outW %u", self->_outstandingWrites);
  v22 = v26;

  v23 = &stru_100B0F9E0;
  if (v22)
  {
    v23 = v22;
  }

  v24 = v23;

  return v24;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014E41C;
  v7[3] = &unk_100AE23F8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100042244;
  v19 = sub_1000425B4;
  v20 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10014E6A4;
  v12[3] = &unk_100AE2420;
  v14 = &v15;
  completionCopy = completion;
  v13 = completionCopy;
  v5 = objc_retainBlock(v12);
  if (self->_activateCalled || self->_invalidateCalled)
  {
    v10 = NSErrorF_safe();
    activateCompletion = v16[5];
    v16[5] = v10;
    goto LABEL_9;
  }

  self->_activateCalled = 1;
  if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe(&dword_100B51110, "[CBStackISOStreamBTStack _activateWithCompletion:]", 30, "Activate start: %@", self);
  }

  v6 = (v16 + 5);
  obj = v16[5];
  v7 = [CBStackISOStreamBTStack _configureStream:self setup:1 error:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    self->_setupState = 1;
    v8 = objc_retainBlock(completionCopy);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = v8;
LABEL_9:
  }

  (v5[2])(v5);

  _Block_object_dispose(&v15, 8);
}

- (void)_activateCompletedWithError:(id)error
{
  errorCopy = error;
  if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    v4 = CUPrintNSError();
    LogPrintF_safe(&dword_100B51110, "[CBStackISOStreamBTStack _activateCompletedWithError:]", 30, "Activate completed: %@, %@", self, v4);
  }

  if (errorCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  self->_setupState = v5;
  v6 = objc_retainBlock(self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v6)
  {
    v6[2](v6, errorCopy);
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014E924;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  setupState = self->_setupState;
  if (setupState == 4 || setupState == 1)
  {
    v8 = 0;
    v5 = [CBStackISOStreamBTStack _configureStream:self setup:0 error:&v8];
    v6 = v8;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    self->_removeState = v7;
    if ((v5 & 1) == 0)
    {
      [(CBStackISOStreamBTStack *)self _invalidateCoreWithError:v6];
    }
  }

  else
  {

    [(CBStackISOStreamBTStack *)self _invalidateCoreWithError:0];
  }
}

- (void)_invalidateCoreWithError:(id)error
{
  errorCopy = error;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_readRequests;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = CBErrorF(4294896148, "Stream invalidated");
        [(CBStackISOStreamBTStack *)self _completeReadRequest:v9 error:v10];
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  readRequests = self->_readRequests;
  self->_readRequests = 0;

  if (self->_removeState == 1)
  {
    if (errorCopy)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    self->_removeState = v12;
  }

  if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    v13 = CUPrintNSError();
    LogPrintF_safe(&dword_100B51110, "[CBStackISOStreamBTStack _invalidateCoreWithError:]", 30, "Invalidated core: %@, %@", self, v13, v14);
  }

  [(CBStackISOStreamBTStack *)self _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_outstandingWrites)
  {
    v5 = objc_retainBlock(self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    readHandler = self->_readHandler;
    self->_readHandler = 0;

    if (v5)
    {
      v5[2]();
    }

    self->_invalidateDone = 1;
    if (dword_100B51110 <= 30 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe(&dword_100B51110, "[CBStackISOStreamBTStack _invalidated]", 30, "Invalidated: %@", self);
    }
  }
}

- (void)readWithRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014EE44;
  v7[3] = &unk_100AE0B60;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_receivedData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  popFirstObject = [(NSMutableArray *)self->_readRequests popFirstObject];
  if (popFirstObject)
  {
    [(CBStackISOStreamBTStack *)self _completeReadRequest:popFirstObject error:errorCopy];
  }

  else
  {
    v8 = objc_retainBlock(self->_readHandler);
    if (v8)
    {
      if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B51110, "-[CBStackISOStreamBTStack _receivedData:error:]", 9, "Received data: cnxH 0x%04X, len %zu, missed %u", self->_connectionHandle, [dataCopy length], self->_missedReads);
      }

      v8[2](v8, dataCopy, errorCopy);
    }

    else
    {
      ++self->_missedReads;
      if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe(&dword_100B51110, "-[CBStackISOStreamBTStack _receivedData:error:]", 9, "Read missed: cnxH 0x%X, len %zu, missed %u", self->_connectionHandle, [dataCopy length], self->_missedReads);
      }
    }
  }
}

- (void)_completeReadRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    connectionHandle = self->_connectionHandle;
    data = [requestCopy data];
    v9 = [data length];
    missedReads = self->_missedReads;
    v11 = CUPrintNSError();
    LogPrintF_safe(&dword_100B51110, "[CBStackISOStreamBTStack _completeReadRequest:error:]", 9, "Read completed: cnxH 0x%04X, len %zu, missed %u, error %@", connectionHandle, v9, missedReads, v11);
  }

  [requestCopy setError:errorCopy];
  [requestCopy setMissedReads:self->_missedReads];
  self->_missedReads = 0;
  completionHandler = [requestCopy completionHandler];
  [requestCopy setCompletionHandler:0];
  if (completionHandler)
  {
    completionHandler[2](completionHandler);
  }
}

- (void)writeWithRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014F36C;
  v7[3] = &unk_100AE0B60;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_completeWriteRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  --self->_outstandingWrites;
  if (dword_100B51110 <= 9 && (dword_100B51110 != -1 || _LogCategory_Initialize()))
  {
    connectionHandle = self->_connectionHandle;
    data = [requestCopy data];
    v9 = [data length];
    outstandingWrites = self->_outstandingWrites;
    v11 = CUPrintNSError();
    LogPrintF_safe(&dword_100B51110, "[CBStackISOStreamBTStack _completeWriteRequest:error:]", 9, "Write completed: cnxH 0x%04X, len %zu, outS %u, error %@", connectionHandle, v9, outstandingWrites, v11);
  }

  [requestCopy setError:errorCopy];
  completionHandler = [requestCopy completionHandler];
  [requestCopy setCompletionHandler:0];
  if (completionHandler)
  {
    completionHandler[2](completionHandler);
  }

  [(CBStackISOStreamBTStack *)self _invalidated];
}

@end