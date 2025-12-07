@interface CUBluetoothClassicConnection
- (BOOL)_prepareWriteRequest:(id)request error:(id *)error;
- (BOOL)_processReadStatus;
- (BOOL)_runBTSessionStart;
- (BOOL)_runConnectStart;
- (BOOL)_runSetupChannel;
- (BOOL)_setupIOAndReturnError:(id *)error;
- (BOOL)_startConnectingAndReturnError:(id *)error;
- (BOOL)activateDirectAndReturnError:(id *)error;
- (BTDeviceImpl)_btDeviceWithID:(id)d error:(id *)error;
- (CUBluetoothClassicConnection)init;
- (void)_abortReadsWithError:(id)error;
- (void)_abortWritesWithError:(id)error;
- (void)_btEnsureStopped;
- (void)_completeReadRequest:(id)request error:(id)error;
- (void)_completeWriteRequest:(id)request error:(id)error;
- (void)_invalidate;
- (void)_invalidated;
- (void)_prepareReadRequest:(id)request;
- (void)_processReads:(BOOL)reads;
- (void)_processWrites;
- (void)_reportError:(id)error;
- (void)_run;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)readWithRequest:(id)request;
- (void)setLabel:(id)label;
- (void)writeEndOfDataWithCompletion:(id)completion;
- (void)writeWithRequest:(id)request;
@end

@implementation CUBluetoothClassicConnection

- (void)_completeWriteRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  ucat = self->_ucat;
  if (ucat->var0 <= 9)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUBluetoothClassicConnection _completeWriteRequest:error:]", 9, "Write completed: %{error}\n", v6, v7, v8, v9, errorCopy);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 9u))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v12 = requestCopy[1];
  requestCopy[1] = errorCopy;

  completion = [requestCopy completion];
  [requestCopy setCompletion:0];
  if (completion)
  {
    completion[2](completion);
  }
}

- (void)_abortWritesWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_writeRequestCurrent || [(NSMutableArray *)self->_writeRequests count])
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucat, "[CUBluetoothClassicConnection _abortWritesWithError:]", 30, "Abort writes: %{error}\n", v4, v5, v6, v7, errorCopy);
        goto LABEL_7;
      }

      if (_LogCategory_Initialize(ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  v10 = self->_writeRequestCurrent;
  if (v10)
  {
    writeRequestCurrent = self->_writeRequestCurrent;
    self->_writeRequestCurrent = 0;

    [(CUBluetoothClassicConnection *)self _completeWriteRequest:v10 error:errorCopy];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_writeRequests;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      v17 = v10;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v10 = *(*(&v21 + 1) + 8 * v16);

        [(CUBluetoothClassicConnection *)self _completeWriteRequest:v10 error:errorCopy];
        ++v16;
        v17 = v10;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [(NSMutableArray *)self->_writeRequests removeAllObjects];
  writeSource = self->_writeSource;
  if (writeSource && !self->_writeSuspended)
  {
    self->_writeSuspended = 1;
    dispatch_suspend(writeSource);
  }

  v19 = _Block_copy(self->_errorHandler);
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  if (v19)
  {
    v19[2](v19, errorCopy);
  }

  [(CUBluetoothClassicConnection *)self _invalidated];
}

- (BOOL)_prepareWriteRequest:(id)request error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dataArray = [requestCopy dataArray];
  v8 = dataArray;
  if (!dataArray)
  {
    *(requestCopy + 34) = requestCopy + 16;
    LODWORD(v11) = [requestCopy bytesIOCount];
    goto LABEL_14;
  }

  v9 = [dataArray count];
  if (v9 <= [requestCopy bytesIOMaxCount])
  {
    v12 = requestCopy + 16;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    v15 = requestCopy + 16;
    if (v14)
    {
      v16 = v14;
      v17 = *v33;
      v15 = requestCopy + 16;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          *v15 = [v19 bytes];
          *(v15 + 1) = [v19 length];
          v15 += 16;
        }

        v16 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    *(requestCopy + 34) = v12;
    v11 = (v15 - v12) >> 4;
LABEL_14:
    *(requestCopy + 70) = v11;
    *(requestCopy + 36) = 0;
    v20 = *(requestCopy + 1);
    *(requestCopy + 1) = 0;

    if (gLogCategory_CUBluetoothClassicConnection > 9 || gLogCategory_CUBluetoothClassicConnection == -1 && !_LogCategory_Initialize(&gLogCategory_CUBluetoothClassicConnection, 9u))
    {
      goto LABEL_27;
    }

    v25 = *(requestCopy + 70);
    if (v25)
    {
      v26 = 0;
      v27 = 16 * v25;
      v28 = (*(requestCopy + 34) + 8);
      do
      {
        v29 = *v28;
        v28 += 2;
        v26 += v29;
        v27 -= 16;
      }

      while (v27);
    }

    ucat = self->_ucat;
    if (ucat->var0 > 9)
    {
      goto LABEL_27;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 9u))
      {
        goto LABEL_27;
      }

      ucat = self->_ucat;
      v25 = *(requestCopy + 70);
    }

    LogPrintF(ucat, "[CUBluetoothClassicConnection _prepareWriteRequest:error:]", 9, "Write prepared (%d iov, %zu total)\n", v21, v22, v23, v24, v25);
LABEL_27:
    v10 = 1;
    goto LABEL_28;
  }

  if (error)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960532, "Too many write elements (%zu max)", [requestCopy bytesIOMaxCount]);
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_28:

  return v10;
}

- (void)_processWrites
{
  v3 = 4;
  v4 = *MEMORY[0x1E696A768];
  do
  {
    v5 = self->_writeRequestCurrent;
    if (!v5)
    {
      firstObject = [(NSMutableArray *)self->_writeRequests firstObject];
      if (!firstObject)
      {
        if (!self->_writeSuspended)
        {
          self->_writeSuspended = 1;
          dispatch_suspend(self->_writeSource);
        }

        v5 = 0;
        goto LABEL_37;
      }

      v5 = firstObject;
      [(NSMutableArray *)self->_writeRequests removeObjectAtIndex:0];
      v23 = 0;
      [(CUBluetoothClassicConnection *)self _prepareWriteRequest:v5 error:&v23];
      v13 = v23;
      if (v13)
      {
        v14 = v13;
        goto LABEL_24;
      }

      objc_storeStrong(&self->_writeRequestCurrent, v5);
    }

    v10 = SocketWriteData(self->_socketFD, &v5->_iop, &v5->_ion);
    ucat = self->_ucat;
    if (ucat->var0 <= 9)
    {
      if (ucat->var0 != -1)
      {
        goto LABEL_5;
      }

      if (_LogCategory_Initialize(ucat, 9u))
      {
        ucat = self->_ucat;
LABEL_5:
        LogPrintF(ucat, "[CUBluetoothClassicConnection _processWrites]", 9, "Write socket %d, pre-ion %d, post-ion %d, %#m\n", v6, v7, v8, v9, self->_socketFD);
      }
    }

    if (v10)
    {
      if (v10 == 35)
      {
        if (self->_writeSuspended)
        {
          self->_writeSuspended = 0;
          dispatch_resume(self->_writeSource);
        }
      }

      else
      {
        v22 = NSErrorF_safe(v4, v10, "Write failed");
        [(CUBluetoothClassicConnection *)self _abortWritesWithError:v22];
      }

LABEL_37:

      return;
    }

    if (![(CUWriteRequest *)v5 endOfData])
    {
      goto LABEL_20;
    }

    v19 = self->_ucat;
    if (v19->var0 <= 9)
    {
      if (v19->var0 != -1)
      {
        goto LABEL_14;
      }

      if (_LogCategory_Initialize(v19, 9u))
      {
        v19 = self->_ucat;
LABEL_14:
        LogPrintF(v19, "[CUBluetoothClassicConnection _processWrites]", 9, "Shutdown socket %d\n", v15, v16, v17, v18, self->_socketFD);
      }
    }

    if (shutdown(self->_socketFD, 1))
    {
      if (!*__error())
      {
        v20 = 4294960596;
LABEL_22:
        v14 = NSErrorF_safe(v4, v20, "shutdown() failed");
        goto LABEL_23;
      }

      v20 = *__error();
      if (v20)
      {
        goto LABEL_22;
      }
    }

LABEL_20:
    v14 = 0;
LABEL_23:
    writeRequestCurrent = self->_writeRequestCurrent;
    self->_writeRequestCurrent = 0;

LABEL_24:
    [(CUBluetoothClassicConnection *)self _completeWriteRequest:v5 error:v14];

    --v3;
  }

  while (v3);
  if (self->_writeSuspended)
  {
    self->_writeSuspended = 0;
    dispatch_resume(self->_writeSource);
  }
}

- (void)writeEndOfDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(CUWriteRequest);
  [(CUWriteRequest *)v5 setEndOfData:1];
  if (completionCopy)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __61__CUBluetoothClassicConnection_writeEndOfDataWithCompletion___block_invoke;
    v9 = &unk_1E73A49A0;
    v10 = v5;
    v11 = completionCopy;
    [(CUWriteRequest *)v5 setCompletion:&v6];
  }

  [(CUBluetoothClassicConnection *)self writeWithRequest:v5, v6, v7, v8, v9];
}

void __61__CUBluetoothClassicConnection_writeEndOfDataWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)writeWithRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CUBluetoothClassicConnection_writeWithRequest___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

void __49__CUBluetoothClassicConnection_writeWithRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 68) == 1)
  {
    v3 = *(a1 + 40);
    v5 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960573, "Invalidated (W)");
    [v2 _completeWriteRequest:v3 error:v5];
  }

  else
  {
    [*(v2 + 144) addObject:*(a1 + 40)];
    v4 = *(a1 + 32);
    if ((v4[26] & 0x80000000) == 0)
    {

      [v4 _processWrites];
    }
  }
}

- (void)_completeReadRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  ucat = self->_ucat;
  if (ucat->var0 <= 9)
  {
    v8 = requestCopy;
    if (ucat->var0 != -1)
    {
LABEL_3:
      v9 = [v8 length];
      LogPrintF(ucat, "[CUBluetoothClassicConnection _completeReadRequest:error:]", 9, "Read completed: %zu byte(s), %{error}\n", v10, v11, v12, v13, v9);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(self->_ucat, 9u))
    {
      ucat = self->_ucat;
      v8 = requestCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  v14 = requestCopy[2];
  requestCopy[2] = errorCopy;

  completion = [requestCopy completion];
  [requestCopy setCompletion:0];
  if (completion)
  {
    completion[2](completion);
  }
}

- (BOOL)_processReadStatus
{
  while (1)
  {
    v3 = recv(self->_socketFD, &v12, 1uLL, 2);
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!*__error())
    {
      v4 = 4294960596;
LABEL_12:
      v9 = _Block_copy(self->_errorHandler);
      errorHandler = self->_errorHandler;
      self->_errorHandler = 0;

      if (v9)
      {
        v11 = NSErrorF_safe(*MEMORY[0x1E696A768], v4, "Read status error");
        v9[2](v9, v11);
      }

      return 1;
    }

    v4 = *__error();
    if (v4 != 4)
    {
      if (!v4)
      {
        return 1;
      }

      if (v4 == 35)
      {
        return 0;
      }

      goto LABEL_12;
    }
  }

  if (!v3)
  {
    v6 = _Block_copy(self->_errorHandler);
    v7 = self->_errorHandler;
    self->_errorHandler = 0;

    if (v6)
    {
      v8 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960543, "Read status EOF");
      v6[2](v6, v8);
    }
  }

  return 1;
}

- (void)_abortReadsWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (self->_readRequestCurrent || [(NSMutableArray *)self->_readRequests count])
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucat, "[CUBluetoothClassicConnection _abortReadsWithError:]", 30, "Abort reads: %{error}\n", v4, v5, v6, v7, errorCopy);
        goto LABEL_7;
      }

      if (_LogCategory_Initialize(ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  v10 = self->_readRequestCurrent;
  if (v10)
  {
    readRequestCurrent = self->_readRequestCurrent;
    self->_readRequestCurrent = 0;

    [(CUBluetoothClassicConnection *)self _completeReadRequest:v10 error:errorCopy];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_readRequests;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      v17 = v10;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v10 = *(*(&v21 + 1) + 8 * v16);

        [(CUBluetoothClassicConnection *)self _completeReadRequest:v10 error:errorCopy];
        ++v16;
        v17 = v10;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  [(NSMutableArray *)self->_readRequests removeAllObjects];
  readSource = self->_readSource;
  if (readSource && !self->_readSuspended)
  {
    self->_readSuspended = 1;
    dispatch_suspend(readSource);
  }

  v19 = _Block_copy(self->_errorHandler);
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  if (v19)
  {
    v19[2](v19, errorCopy);
  }

  [(CUBluetoothClassicConnection *)self _invalidated];
}

- (void)_prepareReadRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy bufferBytes])
  {
    requestCopy[1] = [requestCopy bufferBytes];
    [requestCopy setData:0];
  }

  else
  {
    bufferData = [requestCopy bufferData];

    if (bufferData)
    {
      bufferData2 = [requestCopy bufferData];
      v6 = [bufferData2 length];
      maxLength = [requestCopy maxLength];

      if (v6 < maxLength)
      {
        maxLength2 = [requestCopy maxLength];
        bufferData3 = [requestCopy bufferData];
        [bufferData3 setLength:maxLength2];
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(requestCopy, "maxLength")}];
      [requestCopy setBufferData:v10];
    }

    bufferData4 = [requestCopy bufferData];
    requestCopy[1] = [bufferData4 mutableBytes];

    bufferData5 = [requestCopy bufferData];
    [requestCopy setData:bufferData5];
  }

  v13 = requestCopy[2];
  requestCopy[2] = 0;
  requestCopy[3] = 0;

  ucat = self->_ucat;
  if (ucat->var0 <= 9)
  {
    v15 = requestCopy;
    if (ucat->var0 != -1)
    {
LABEL_10:
      minLength = [v15 minLength];
      [requestCopy maxLength];
      LogPrintF(ucat, "[CUBluetoothClassicConnection _prepareReadRequest:]", 9, "Read prepared (%zu min, %zu max)\n", v17, v18, v19, v20, minLength);
      goto LABEL_12;
    }

    if (_LogCategory_Initialize(self->_ucat, 9u))
    {
      ucat = self->_ucat;
      v15 = requestCopy;
      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)_processReads:(BOOL)reads
{
  readsCopy = reads;
  v5 = 0;
  while (1)
  {
    v6 = self->_readRequestCurrent;
    if (v6)
    {
      goto LABEL_5;
    }

    firstObject = [(NSMutableArray *)self->_readRequests firstObject];
    if (!firstObject)
    {
      if (readsCopy)
      {
        if (v5)
        {
          readSuspended = self->_readSuspended;
        }

        else
        {
          _processReadStatus = [(CUBluetoothClassicConnection *)self _processReadStatus];
          readSuspended = self->_readSuspended;
          if (_processReadStatus)
          {
            if (!self->_readSuspended)
            {
              self->_readSuspended = 1;
              dispatch_suspend(self->_readSource);
            }

            goto LABEL_37;
          }
        }

        if (readSuspended)
        {
          self->_readSuspended = 0;
          dispatch_resume(self->_readSource);
        }
      }

LABEL_37:
      v18 = 0;
      goto LABEL_21;
    }

    obja = firstObject;
    [(NSMutableArray *)self->_readRequests removeObjectAtIndex:0];
    [(CUBluetoothClassicConnection *)self _prepareReadRequest:obja];
    objc_storeStrong(&self->_readRequestCurrent, obja);
    v6 = obja;
LABEL_5:
    obj = v6;
    Data = SocketReadDataEx(self->_socketFD, v6->_bufferPtr, [(CUReadRequest *)v6 minLength], [(CUReadRequest *)v6 maxLength], &v6->_length);
    ucat = self->_ucat;
    if (ucat->var0 > 9)
    {
      goto LABEL_9;
    }

    if (ucat->var0 != -1)
    {
      goto LABEL_7;
    }

    if (_LogCategory_Initialize(self->_ucat, 9u))
    {
      ucat = self->_ucat;
LABEL_7:
      socketFD = self->_socketFD;
      [(CUReadRequest *)obj minLength];
      [(CUReadRequest *)obj maxLength];
      LogPrintF(ucat, "[CUBluetoothClassicConnection _processReads:]", 9, "Read socket %d, %zu min, %zu max, %zu offset, %zu nread, %#m\n", v11, v12, v13, v14, socketFD);
    }

LABEL_9:
    if (Data)
    {
      break;
    }

    readRequestCurrent = self->_readRequestCurrent;
    self->_readRequestCurrent = 0;

    [(CUBluetoothClassicConnection *)self _completeReadRequest:obj error:0];
    if (++v5 == 4)
    {
      if (self->_readSuspended)
      {
        self->_readSuspended = 0;
        readSource = self->_readSource;

        dispatch_resume(readSource);
      }

      return;
    }
  }

  if (Data == 35)
  {
    if (self->_readSuspended)
    {
      self->_readSuspended = 0;
      dispatch_resume(self->_readSource);
    }
  }

  else
  {
    v16 = *MEMORY[0x1E696A768];
    if (Data == -6753)
    {
      NSErrorF_safe(v16, Data, "Read EOF");
    }

    else
    {
      NSErrorF_safe(v16, Data, "Read error");
    }
    v17 = ;
    [(CUBluetoothClassicConnection *)self _abortReadsWithError:v17];
  }

  v18 = obj;
LABEL_21:
}

- (void)readWithRequest:(id)request
{
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CUBluetoothClassicConnection_readWithRequest___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(dispatchQueue, v7);
}

void __48__CUBluetoothClassicConnection_readWithRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 68) == 1)
  {
    v3 = *(a1 + 40);
    v5 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960573, "Invalidated (R)");
    [v2 _completeReadRequest:v3 error:v5];
  }

  else
  {
    [*(v2 + 96) addObject:*(a1 + 40)];
    v4 = *(a1 + 32);
    if ((v4[26] & 0x80000000) == 0)
    {

      [v4 _processReads:0];
    }
  }
}

- (void)_btEnsureStopped
{
  if (self->_btServiceAddCallbacks)
  {
    self->_btServiceAddCallbacks = 0;
    btSession = self->_btSession;
    if (btSession)
    {
      softLinkBTServiceRemoveCallbacks(btSession, _btServiceEventHandler);
    }
  }

  if (self->_btSession)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBluetoothClassicConnection _btEnsureStopped]", 30, "BTSession detach\n", v2, v3, v4, v5, v9);
    }

LABEL_9:
    softLinkBTSessionDetachWithQueue(&self->_btSession);
    self->_btSession = 0;
  }

  self->_btSessionStarted = 0;
}

- (BTDeviceImpl)_btDeviceWithID:(id)d error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v18 = 0;
  uTF8String = [dCopy UTF8String];
  if (!uTF8String)
  {
    if (!error)
    {
      goto LABEL_21;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "Bad device ID UTF-8: '%@'", dCopy);
    goto LABEL_24;
  }

  v8 = uTF8String;
  v19 = 0uLL;
  if (!StringToUUIDEx(uTF8String, 0xFFFFFFFFFFFFFFFFLL, 0, 0, &v19))
  {
    v12 = softLinkBTDeviceFromIdentifier(self->_btSession, &v19, &v18);
    if (v12 == -310000)
    {
      v13 = 4294960596;
    }

    else
    {
      v13 = (v12 + 310000);
    }

    if (!v12)
    {
      goto LABEL_14;
    }

    if (!error)
    {
      goto LABEL_21;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], v13, "BTDeviceFromIdentifier failed");
LABEL_24:
    *error = v14 = 0;
    goto LABEL_15;
  }

  v17 = 0;
  v16 = 0;
  v9 = TextToHardwareAddress(v8, 0xFFFFFFFFFFFFFFFFLL, 6, &v16);
  if (v9)
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], v9, "Bad device ID format: '%s'");
      goto LABEL_20;
    }

LABEL_21:
    v14 = 0;
    goto LABEL_15;
  }

  v10 = softLinkBTDeviceFromAddress(self->_btSession, &v16, &v18);
  if (v10 == -310000)
  {
    v11 = 4294960596;
  }

  else
  {
    v11 = (v10 + 310000);
  }

  if (v10)
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], v11, "BTDeviceFromAddress failed");
      *error = LABEL_20:;
      goto LABEL_21;
    }

    goto LABEL_21;
  }

LABEL_14:
  v14 = v18;
LABEL_15:

  return v14;
}

- (BOOL)_runSetupChannel
{
  v6 = 0;
  v3 = [(CUBluetoothClassicConnection *)self _setupIOAndReturnError:&v6];
  v4 = v6;
  if (!v3)
  {
    [(CUBluetoothClassicConnection *)self _reportError:v4];
  }

  return v3;
}

- (BOOL)_runConnectStart
{
  v36[2] = *MEMORY[0x1E69E9840];
  v3 = self->_destinationPeer;
  if (!v3)
  {
    v31 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No destination peer");
    [(CUBluetoothClassicConnection *)self _reportError:v31];

    v29 = 0;
    goto LABEL_28;
  }

  v35 = 0;
  v4 = [(CUBluetoothClassicConnection *)self _btDeviceWithID:v3 error:&v35];
  v5 = v35;
  v6 = v5;
  if (v4)
  {
    AddressString = softLinkBTDeviceGetAddressString(v4, self->_btDeviceAddrStr, 32);
    v12 = (AddressString + 310000);
    if (AddressString)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], v12, "BTDeviceGetAddressString failed");
      v32 = LABEL_37:;
      [(CUBluetoothClassicConnection *)self _reportError:v32];

      goto LABEL_38;
    }

    if (!self->_btServiceAddCallbacks)
    {
      v14 = softLinkBTServiceAddCallbacks(self->_btSession, _btServiceEventHandler, self);
      if (v14 && v14 != -310000)
      {
        NSErrorF_safe(*MEMORY[0x1E696A768], (v14 + 310000), "BTServiceAddCallbacks failed");
        goto LABEL_37;
      }

      self->_btServiceAddCallbacks = 1;
    }

    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_16;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_16;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBluetoothClassicConnection _runConnectStart]", 30, "Connect: %@\n", v8, v9, v10, v11, v3);
LABEL_16:
    if ((self->_connectionFlags & 4) != 0)
    {
      v36[0] = 0;
      v36[1] = 0;
      v16 = softLinkBTDeviceConnectServicesWithParameters(v4, 4294956991, 32, v36);
      if (v16 != 2)
      {
LABEL_22:
        if (!v16 || v16 == -310000)
        {
          timeoutTimer = self->_timeoutTimer;
          if (timeoutTimer)
          {
            v23 = timeoutTimer;
            dispatch_source_cancel(v23);
            v24 = self->_timeoutTimer;
            self->_timeoutTimer = 0;
          }

          v25 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
          v26 = self->_timeoutTimer;
          self->_timeoutTimer = v25;
          v27 = v25;

          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 3221225472;
          handler[2] = __48__CUBluetoothClassicConnection__runConnectStart__block_invoke;
          handler[3] = &unk_1E73A49F0;
          handler[4] = v27;
          handler[5] = self;
          dispatch_source_set_event_handler(v27, handler);
          v28 = dispatch_time(0, 15000000000);
          dispatch_source_set_timer(v27, v28, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
          dispatch_activate(v27);

          v29 = 1;
          goto LABEL_27;
        }

        NSErrorF_safe(*MEMORY[0x1E696A768], (v16 + 310000), "BTDeviceConnectServices failed");
        goto LABEL_37;
      }

      v21 = self->_ucat;
      if (v21->var0 <= 30)
      {
        if (v21->var0 == -1)
        {
          if (!_LogCategory_Initialize(v21, 0x1Eu))
          {
            goto LABEL_17;
          }

          v21 = self->_ucat;
        }

        LogPrintF(v21, "[CUBluetoothClassicConnection _runConnectStart]", 30, "Connect Tipi failed, retrying in normal mode", v17, v18, v19, v20, v33);
      }
    }

LABEL_17:
    v16 = softLinkBTDeviceConnectServices(v4, 4294956991);
    goto LABEL_22;
  }

  if (!v5)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "No device, no error");
    goto LABEL_37;
  }

  [(CUBluetoothClassicConnection *)self _reportError:v5];
LABEL_38:
  v29 = 0;
LABEL_27:

LABEL_28:
  return v29;
}

void __48__CUBluetoothClassicConnection__runConnectStart__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2[14];
  if (v1 == v3)
  {
    if (v1)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = *(a1 + 40);
      v7 = *(v6 + 112);
      *(v6 + 112) = 0;

      v2 = *(a1 + 40);
    }

    v8 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960574, "Connection timeout");
    [v2 _reportError:v8];
  }
}

- (BOOL)_runBTSessionStart
{
  v6 = _btSessionEventCallback;
  selfCopy = self;
  v3 = softLinkBTSessionAttachWithQueue(selfCopy->_ucat->var4, &v6, selfCopy, selfCopy->_dispatchQueue);
  if (v3)
  {
    CFRelease(selfCopy);
    v4 = NSErrorF_safe(*MEMORY[0x1E696A768], (v3 + 310000), "BTSessionAttachWithQueue failed");
    [(CUBluetoothClassicConnection *)selfCopy _reportError:v4];
  }

  else
  {
    selfCopy->_btSessionAttaching = 1;
    selfCopy->_btSessionStarted = 1;
  }

  return v3 == 0;
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      state = self->_state;
      if (state > 13)
      {
        break;
      }

      if (state <= 10)
      {
        if (!state)
        {
          v8 = 10;
          goto LABEL_42;
        }

        if (state != 10)
        {
          return;
        }

        _runBTSessionStart = [(CUBluetoothClassicConnection *)self _runBTSessionStart];
LABEL_34:
        v8 = self->_state;
        if (_runBTSessionStart)
        {
          ++v8;
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      if (state == 11)
      {
        if (!self->_btSession)
        {
          v8 = 11;
          goto LABEL_43;
        }

        v8 = 12;
        goto LABEL_42;
      }

      if (state == 12)
      {
        _runBTSessionStart = [(CUBluetoothClassicConnection *)self _runConnectStart];
        goto LABEL_34;
      }

      if (self->_btConnected)
      {
        v8 = 14;
LABEL_42:
        self->_state = v8;
        goto LABEL_43;
      }

      v8 = 13;
LABEL_43:
      if (v8 == state)
      {
        return;
      }

      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 != -1)
        {
          goto LABEL_46;
        }

        if (_LogCategory_Initialize(ucat, 0x1Eu))
        {
          ucat = self->_ucat;
LABEL_46:
          LogPrintF(ucat, "[CUBluetoothClassicConnection _run]", 30, "State: %s -> %s\n", v2, v3, v4, v5, off_1E73A2D88[state]);
        }
      }
    }

    if (state > 16)
    {
      if (state == 17)
      {
        v8 = 18;
        goto LABEL_42;
      }

      if (state != 18)
      {
        if (state != 19)
        {
          return;
        }

        timeoutTimer = self->_timeoutTimer;
        if (timeoutTimer)
        {
          v10 = timeoutTimer;
          dispatch_source_cancel(v10);
          v11 = self->_timeoutTimer;
          self->_timeoutTimer = 0;
        }

        v12 = _Block_copy(self->_activateCompletion);
        activateCompletion = self->_activateCompletion;
        self->_activateCompletion = 0;

        if (v12)
        {
          v12[2](v12, 0);
        }

        if ((self->_connectionFlags & 2) == 0)
        {
          [(CUBluetoothClassicConnection *)self _processReads:0];
          [(CUBluetoothClassicConnection *)self _processWrites];
        }

        v8 = self->_state;
        goto LABEL_43;
      }

      _runBTSessionStart = [(CUBluetoothClassicConnection *)self _runSetupChannel];
    }

    else
    {
      if (state == 14)
      {
        if ((self->_connectionFlags & 2) != 0)
        {
          v8 = 19;
        }

        else
        {
          v8 = 15;
        }

        goto LABEL_42;
      }

      if (state != 15)
      {
        if (!self->_l2capChannel)
        {
          v8 = 16;
          goto LABEL_43;
        }

        v8 = 17;
        goto LABEL_42;
      }

      _runBTSessionStart = [(CUBluetoothClassicConnection *)self _runOpenChannelStart];
    }

    goto LABEL_34;
  }

  [(CUBluetoothClassicConnection *)self _invalidated];
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  ucat = self->_ucat;
  if (ucat->var0 <= 90)
  {
    v9 = errorCopy;
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUBluetoothClassicConnection _reportError:]", 90, "Error: %{error}\n", v4, v5, v6, v7, v9);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x5Au))
    {
      ucat = self->_ucat;
      v9 = errorCopy;
      goto LABEL_3;
    }
  }

LABEL_5:
  self->_state = 3;
  v10 = _Block_copy(self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v10)
  {
    v10[2](v10, errorCopy);
  }

  else
  {
    v12 = _Block_copy(self->_errorHandler);
    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    if (v12)
    {
      v12[2](v12, errorCopy);
    }
  }

  [(CUBluetoothClassicConnection *)self _abortReadsWithError:errorCopy];
  [(CUBluetoothClassicConnection *)self _abortWritesWithError:errorCopy];
}

- (BOOL)_setupIOAndReturnError:(id *)error
{
  socketFD = [(CBL2CAPChannel *)self->_l2capChannel socketFD];
  if (socketFD < 0)
  {
    if (!error)
    {
      return 0;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960596, "No socket for L2CAP channel: %@", self->_l2capChannel);
    goto LABEL_13;
  }

  v6 = socketFD;
  self->_socketFD = socketFD;
  v24 = 1;
  if (!setsockopt(socketFD, 0xFFFF, 4130, &v24, 4u))
  {
    goto LABEL_5;
  }

  if (!*__error())
  {
    v7 = 4294960596;
    goto LABEL_11;
  }

  v7 = *__error();
  if (v7)
  {
LABEL_11:
    if (!error)
    {
      return 0;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], v7, "Set SO_NOSIGPIPE failed");
    v19 = LABEL_13:;
    v16 = 0;
LABEL_14:
    *error = v19;
    return v16;
  }

LABEL_5:
  v8 = SocketSetNonBlocking(v6, 1);
  if (v8)
  {
    if (!error)
    {
      return 0;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], v8, "Make non-blocking failed");
    goto LABEL_13;
  }

  v9 = dispatch_source_create(MEMORY[0x1E69E96F8], v6, 0, self->_dispatchQueue);
  readSource = self->_readSource;
  self->_readSource = v9;

  v11 = self->_readSource;
  if (!v11)
  {
    if (error)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960550, "Create read source failed");
      goto LABEL_13;
    }

    return 0;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __55__CUBluetoothClassicConnection__setupIOAndReturnError___block_invoke;
  handler[3] = &unk_1E73A4F68;
  handler[4] = self;
  dispatch_source_set_event_handler(v11, handler);
  v12 = self->_readSource;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__CUBluetoothClassicConnection__setupIOAndReturnError___block_invoke_2;
  v22[3] = &unk_1E73A4F68;
  v22[4] = self;
  dispatch_source_set_cancel_handler(v12, v22);
  dispatch_resume(self->_readSource);
  v13 = dispatch_source_create(MEMORY[0x1E69E9730], v6, 0, self->_dispatchQueue);
  writeSource = self->_writeSource;
  self->_writeSource = v13;

  v15 = self->_writeSource;
  v16 = v15 != 0;
  if (!v15)
  {
    if (!error)
    {
      return v16;
    }

    v19 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960549, "Create write source failed");
    goto LABEL_14;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __55__CUBluetoothClassicConnection__setupIOAndReturnError___block_invoke_3;
  v21[3] = &unk_1E73A4F68;
  v21[4] = self;
  dispatch_source_set_event_handler(v15, v21);
  v17 = self->_writeSource;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __55__CUBluetoothClassicConnection__setupIOAndReturnError___block_invoke_4;
  v20[3] = &unk_1E73A4F68;
  v20[4] = self;
  dispatch_source_set_cancel_handler(v17, v20);
  self->_writeSuspended = 1;
  return v16;
}

uint64_t __55__CUBluetoothClassicConnection__setupIOAndReturnError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

uint64_t __55__CUBluetoothClassicConnection__setupIOAndReturnError___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (BOOL)_startConnectingAndReturnError:(id *)error
{
  destinationPeer = self->_destinationPeer;
  if (destinationPeer)
  {
    [(CUBluetoothClassicConnection *)self _run];
  }

  else if (error)
  {
    *error = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No destination peer");
  }

  return destinationPeer != 0;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_btSession && !self->_btSessionAttaching && !self->_readSource && !self->_writeSource && !self->_readRequestCurrent && ![(NSMutableArray *)self->_readRequests count]&& !self->_writeRequestCurrent && ![(NSMutableArray *)self->_writeRequests count])
  {
    serverInvalidationHandler = self->_serverInvalidationHandler;
    if (serverInvalidationHandler)
    {
      serverInvalidationHandler[2]();
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    v6 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    v7 = self->_serverInvalidationHandler;
    self->_serverInvalidationHandler = 0;

    self->_invalidateDone = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUBluetoothClassicConnection _invalidated]", 30, "Invalidated\n", v8, v9, v10, v11, v14);
    }
  }
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v17 = v6;
  self->_invalidateCalled = 1;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUBluetoothClassicConnection _invalidate]", 30, "Invalidating\n", v2, v3, v4, v5, v6);
  }

LABEL_6:
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v12 = timeoutTimer;
    dispatch_source_cancel(v12);
    v13 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v14 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960573, "Invalidated (I)", v17);
  [(CUBluetoothClassicConnection *)self _reportError:v14];

  readSource = self->_readSource;
  if (readSource)
  {
    dispatch_source_cancel(readSource);
    if (self->_readSuspended)
    {
      self->_readSuspended = 0;
      dispatch_resume(self->_readSource);
    }
  }

  writeSource = self->_writeSource;
  if (writeSource)
  {
    dispatch_source_cancel(writeSource);
    if (self->_writeSuspended)
    {
      self->_writeSuspended = 0;
      dispatch_resume(self->_writeSource);
    }
  }

  [(CUBluetoothClassicConnection *)self _btEnsureStopped];

  [(CUBluetoothClassicConnection *)self _invalidated];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CUBluetoothClassicConnection_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)activateDirectAndReturnError:(id *)error
{
  l2capChannel = self->_l2capChannel;
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (l2capChannel)
  {
    if (var0 > 30)
    {
      goto LABEL_9;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
LABEL_9:
        v41 = 0;
        v19 = [(CUBluetoothClassicConnection *)self _setupIOAndReturnError:&v41];
        writeRequests = v41;
        if (v19)
        {
          v25 = _Block_copy(self->_activateCompletion);
          activateCompletion = self->_activateCompletion;
          self->_activateCompletion = 0;

          if (v25)
          {
            v25[2](v25, 0);
          }

          goto LABEL_18;
        }

        v27 = self->_ucat;
        if (v27->var0 <= 90)
        {
          if (v27->var0 != -1)
          {
LABEL_15:
            LogPrintF(v27, "[CUBluetoothClassicConnection activateDirectAndReturnError:]", 90, "### Activate failed: %{error}\n", v20, v21, v22, v23, writeRequests);
            goto LABEL_23;
          }

          if (_LogCategory_Initialize(v27, 0x5Au))
          {
            v27 = self->_ucat;
            goto LABEL_15;
          }
        }

LABEL_23:
        if (error)
        {
LABEL_24:
          v38 = writeRequests;
          v36 = 0;
          *error = writeRequests;
          goto LABEL_28;
        }

LABEL_27:
        v36 = 0;
        goto LABEL_28;
      }

      ucat = self->_ucat;
      l2capChannel = self->_l2capChannel;
    }

    v12 = [(CBL2CAPChannel *)l2capChannel PSM];
    peer = [(CBL2CAPChannel *)self->_l2capChannel peer];
    identifier = [peer identifier];
    LogPrintF(ucat, "[CUBluetoothClassicConnection activateDirectAndReturnError:]", 30, "Activate incoming PSM 0x%04X, peer %@, CF %#{flags}\n", v15, v16, v17, v18, v12);

    goto LABEL_9;
  }

  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_7:
      LogPrintF(ucat, "[CUBluetoothClassicConnection activateDirectAndReturnError:]", 30, "Activate outgoing peer %@, service %@, CF %#{flags}, RS %#{flags}\n", v3, v4, v5, v6, self->_destinationPeer);
      goto LABEL_17;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_7;
    }
  }

LABEL_17:
  v40 = 0;
  v28 = [(CUBluetoothClassicConnection *)self _startConnectingAndReturnError:&v40];
  writeRequests = v40;
  if (!v28)
  {
    v37 = self->_ucat;
    if (v37->var0 > 90)
    {
      goto LABEL_26;
    }

    if (v37->var0 == -1)
    {
      if (!_LogCategory_Initialize(v37, 0x5Au))
      {
LABEL_26:
        if (error)
        {
          goto LABEL_24;
        }

        goto LABEL_27;
      }

      v37 = self->_ucat;
    }

    LogPrintF(v37, "[CUBluetoothClassicConnection activateDirectAndReturnError:]", 90, "### Activate failed: %{error}\n", v29, v30, v31, v32, writeRequests);
    goto LABEL_26;
  }

LABEL_18:

  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  readRequests = self->_readRequests;
  self->_readRequests = v33;

  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  writeRequests = self->_writeRequests;
  self->_writeRequests = v35;
  v36 = 1;
LABEL_28:

  return v36;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CUBluetoothClassicConnection_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E73A49A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __55__CUBluetoothClassicConnection_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = *(a1 + 32);
  v9 = 0;
  [v5 activateDirectAndReturnError:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    *(v7 + 8) = 0;

    (*(*(a1 + 40) + 16))();
  }
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EADE9368;
  v6 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CUBluetoothClassicConnection;
  [(CUBluetoothClassicConnection *)&v4 dealloc];
}

- (CUBluetoothClassicConnection)init
{
  v5.receiver = self;
  v5.super_class = CUBluetoothClassicConnection;
  v2 = [(CUBluetoothClassicConnection *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_socketFD = -1;
    v2->_ucat = &gLogCategory_CUBluetoothClassicConnection;
    v3 = v2;
  }

  return v2;
}

@end