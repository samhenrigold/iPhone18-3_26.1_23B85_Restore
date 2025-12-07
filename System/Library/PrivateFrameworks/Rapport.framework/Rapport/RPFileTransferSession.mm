@interface RPFileTransferSession
- (BOOL)_activateAndReturnError:(id *)error;
- (BOOL)_activateSourceAndReturnError:(id *)error;
- (BOOL)_activateTargetAndReturnError:(id *)error;
- (BOOL)_largeFileReceiveTaskUpdateSHA256CtxFromFileItem:(id)item length:(unint64_t)length error:(id *)error;
- (BOOL)_prepareItem:(id)item error:(id *)error;
- (BOOL)_readFD:(int)d buffer:(char *)buffer size:(unint64_t)size error:(id *)error;
- (BOOL)_smallFilesReceiveTaskFileItem:(id)item error:(id *)error;
- (BOOL)_truncateFD:(int)d size:(int64_t)size error:(id *)error;
- (BOOL)_writeFD:(int)d buffer:(const char *)buffer size:(unint64_t)size error:(id *)error;
- (BOOL)prepareTemplateAndReturnError:(id *)error;
- (RPFileTransferSession)init;
- (RPFileTransferSession)initWithCoder:(id)coder;
- (id)_compressData:(id)data error:(id *)error;
- (id)_decompressAndDecodeData:(id)data originalSize:(unint64_t)size error:(id *)error;
- (id)_decompressData:(id)data originalSize:(unint64_t)size error:(id *)error;
- (id)_encodeAndCompressObject:(id)object originalSize:(unint64_t *)size error:(id *)error;
- (id)_ioQueueDequeue;
- (id)_largeFileSendTaskCreate;
- (id)_modTimeForFileWithPath:(const char *)path error:(id *)error;
- (id)_readFD:(int)d size:(unint64_t)size error:(id *)error;
- (id)_readPath:(const char *)path size:(unint64_t)size error:(id *)error;
- (id)_smallFilesSendTaskCreate;
- (id)_smallFilesSendTaskReadItem:(id)item error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (id)resumeStateDict;
- (int)_openReadFileItem:(id)item error:(id *)error;
- (int)_openReadPath:(const char *)path error:(id *)error;
- (int)_openWriteFileItem:(id)item size:(int64_t)size truncate:(BOOL)truncate error:(id *)error;
- (int)_openWritePath:(id)path size:(int64_t)size truncate:(BOOL)truncate error:(id *)error;
- (void)_completeItem:(id)item error:(id)error;
- (void)_completeItemDirect:(id)direct error:(id)error;
- (void)_controlCnxRetryIfNeeded;
- (void)_controlCnxStartIfNeeded;
- (void)_debugSetup;
- (void)_debugUpdate;
- (void)_handleDeviceFound:(id)found;
- (void)_handleDeviceLost:(id)lost;
- (void)_handleDevicesCoalesced;
- (void)_handleIncomingConnectionEnded:(id)ended;
- (void)_handleIncomingConnectionStarted:(id)started;
- (void)_invalidate;
- (void)_invalidated;
- (void)_largeFileReceiveRequest:(id)request responseHandler:(id)handler;
- (void)_largeFileReceiveTaskInvalidate:(id)invalidate;
- (void)_largeFileReceiveTaskRespond:(id)respond error:(id)error complete:(BOOL)complete responseHandler:(id)handler;
- (void)_largeFileReceiveTaskRun:(id)run data:(id)data sendFlags:(unsigned int)flags responseHandler:(id)handler;
- (void)_largeFileSendTaskEnd:(id)end error:(id)error;
- (void)_largeFileSendTaskFailed:(id)failed error:(id)error;
- (void)_largeFileSendTaskNext:(id)next xid:(unsigned int)xid;
- (void)_largeFileSendTaskResponse:(id)response error:(id)error end:(BOOL)end xid:(unsigned int)xid;
- (void)_largeFileSendTaskSend:(id)send data:(id)data end:(BOOL)end xid:(unsigned int)xid;
- (void)_largeFileSendTaskStart:(id)start;
- (void)_metricAddFileSize:(int64_t)size;
- (void)_prefsChanged;
- (void)_processFinish;
- (void)_processReceivedItem:(id)item responseHandler:(id)handler;
- (void)_processReceivedItems:(id)items responseHandler:(id)handler;
- (void)_receivedEventID:(id)d event:(id)event options:(id)options;
- (void)_receivedPeerUpdate:(id)update;
- (void)_receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)_reportCompletion:(id)completion;
- (void)_reportDataTransferred;
- (void)_reportProgressControlState;
- (void)_reportProgressType:(int)type;
- (void)_requestResumeStateFromReceiver;
- (void)_resumeStateReceiveRequest:(id)request responseHandler:(id)handler;
- (void)_scheduleItems;
- (void)_smallFilesReceiveRequest:(id)request responseHandler:(id)handler;
- (void)_smallFilesReceiveTaskComplete:(id)complete error:(id)error responseHandler:(id)handler;
- (void)_smallFilesReceiveTaskRun:(id)run responseHandler:(id)handler;
- (void)_smallFilesSendTaskEnd:(id)end error:(id)error;
- (void)_smallFilesSendTaskRun:(id)run;
- (void)_startProgressReportTimer;
- (void)_stopProgressReportTimer;
- (void)_updateIfNeededWithBlock:(id)block;
- (void)_updateLargeFilesTaskResumeState:(id)state data:(id)data sendFlags:(unsigned int)flags error:(id)error complete:(BOOL)complete;
- (void)_updateSmallFilesTaskResumeState:(id)state error:(id)error;
- (void)_updateWiFi;
- (void)activate;
- (void)addItem:(id)item;
- (void)addItems:(id)items;
- (void)dealloc;
- (void)deregisterEventID:(id)d;
- (void)deregisterRequestID:(id)d;
- (void)encodeWithCoder:(id)coder;
- (void)finish;
- (void)invalidate;
- (void)registerEventID:(id)d options:(id)options handler:(id)handler;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler;
- (void)setDebugFlags:(unint64_t)flags;
- (void)setFlags:(unsigned int)flags;
- (void)setLabel:(id)label;
- (void)setLargeFileBufferBytes:(unint64_t)bytes;
- (void)setMaxLargeFileTasks:(unint64_t)tasks;
- (void)setMaxSmallFileTasks:(unint64_t)tasks;
@end

@implementation RPFileTransferSession

- (RPFileTransferSession)init
{
  v7.receiver = self;
  v7.super_class = RPFileTransferSession;
  v2 = [(RPFileTransferSession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_debugNotifyToken = -1;
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_RPFileTransferSession;
    v3->_resumable = 0;
    resumeState = v3->_resumeState;
    v3->_resumeState = 0;

    v3->_resumeStateFlushInterval = 1.0;
    v3->_flags = 0;
    v3->_maxSmallFileTasks = 3;
    [(RPFileTransferSession *)v3 setProgressHandlerTimeInterval:0.0];
    v5 = v3;
  }

  return v3;
}

- (RPFileTransferSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = RPFileTransferSession;
  v5 = [(RPFileTransferSession *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_ucat = &gLogCategory_RPFileTransferSession;
    v6->_resumable = 0;
    resumeState = v6->_resumeState;
    v6->_resumeState = 0;

    v6->_resumeStateFlushInterval = 1.0;
    v19 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_flags = v19;
    }

    v8 = coderCopy;
    if ([v8 containsValueForKey:@"lFlBufB"])
    {
      v6->_largeFileBufferBytes = [v8 decodeInt64ForKey:@"lFlBufB"];
    }

    v9 = v8;
    if ([v9 containsValueForKey:@"lFlMxTs"])
    {
      v6->_maxLargeFileTasks = [v9 decodeInt64ForKey:@"lFlMxTs"];
    }

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    if ([v13 containsValueForKey:@"sFlMxTs"])
    {
      v6->_maxSmallFileTasks = [v13 decodeInt64ForKey:@"sFlMxTs"];
    }

    v14 = v13;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v15 = v14;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v16 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  flags = self->_flags;
  v14 = coderCopy;
  if (flags)
  {
    [coderCopy encodeInt64:flags forKey:@"flags"];
    coderCopy = v14;
  }

  largeFileBufferBytes = self->_largeFileBufferBytes;
  if (largeFileBufferBytes)
  {
    [v14 encodeInt64:largeFileBufferBytes forKey:@"lFlBufB"];
    coderCopy = v14;
  }

  maxLargeFileTasks = self->_maxLargeFileTasks;
  if (maxLargeFileTasks)
  {
    [v14 encodeInt64:maxLargeFileTasks forKey:@"lFlMxTs"];
    coderCopy = v14;
  }

  peerPublicKey = self->_peerPublicKey;
  if (peerPublicKey)
  {
    [v14 encodeObject:peerPublicKey forKey:@"peerPK"];
    coderCopy = v14;
  }

  selfPublicKey = self->_selfPublicKey;
  if (selfPublicKey)
  {
    [v14 encodeObject:selfPublicKey forKey:@"selfPK"];
    coderCopy = v14;
  }

  selfSecretKey = self->_selfSecretKey;
  if (selfSecretKey)
  {
    [v14 encodeObject:selfSecretKey forKey:@"selfSK"];
    coderCopy = v14;
  }

  maxSmallFileTasks = self->_maxSmallFileTasks;
  if (maxSmallFileTasks)
  {
    [v14 encodeInt64:maxSmallFileTasks forKey:@"sFlMxTs"];
    coderCopy = v14;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v14 encodeObject:serviceType forKey:@"srvTy"];
    coderCopy = v14;
  }

  targetID = self->_targetID;
  if (targetID)
  {
    [v14 encodeObject:targetID forKey:@"targetID"];
    coderCopy = v14;
  }
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    dispatch_source_cancel(progressTimer);
    v5 = self->_progressTimer;
    self->_progressTimer = 0;
  }

  resumeState = self->_resumeState;
  self->_resumeState = 0;

  v7.receiver = self;
  v7.super_class = RPFileTransferSession;
  [(RPFileTransferSession *)&v7 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  v31 = 0;
  NSAppendPrintF(&v31, "RPFileTransferSession", *&level);
  v4 = v31;
  v5 = v4;
  targetID = self->_targetID;
  if (targetID)
  {
    v30 = v4;
    v7 = targetID;
    NSAppendPrintF(&v30, ", TargetID %@", v7);
    v8 = v30;

    v5 = v8;
  }

  flags = self->_flags;
  if (flags)
  {
    v29 = v5;
    NSAppendPrintF(&v29, ", Flags %#{flags}", flags, &unk_1B6F2E478);
    v10 = v29;

    v5 = v10;
  }

  label = self->_label;
  if (label)
  {
    v28 = v5;
    v12 = label;
    NSAppendPrintF(&v28, ", Label %@", v12);
    v13 = v28;

    v5 = v13;
  }

  largeFileBufferBytes = self->_largeFileBufferBytes;
  if (largeFileBufferBytes)
  {
    v27 = v5;
    NSAppendPrintF(&v27, ", LBuf: %llu", largeFileBufferBytes);
    v15 = v27;

    v5 = v15;
  }

  maxLargeFileTasks = self->_maxLargeFileTasks;
  if (maxLargeFileTasks)
  {
    v26 = v5;
    NSAppendPrintF(&v26, ", MaxLargeTasks: %u", maxLargeFileTasks);
    v17 = v26;

    v5 = v17;
  }

  maxSmallFileTasks = self->_maxSmallFileTasks;
  if (maxSmallFileTasks)
  {
    v25 = v5;
    NSAppendPrintF(&v25, ", MaxSmallTasks: %u", maxSmallFileTasks);
    v19 = v25;

    v5 = v19;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    v24 = v5;
    v21 = serviceType;
    NSAppendPrintF(&v24, ", ST %@", v21);
    v22 = v24;

    v5 = v22;
  }

  return v5;
}

- (void)setDebugFlags:(unint64_t)flags
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__RPFileTransferSession_setDebugFlags___block_invoke;
  v4[3] = &unk_1E7C934B0;
  v4[4] = self;
  v4[5] = flags;
  dispatch_async(dispatchQueue, v4);
}

- (void)setFlags:(unsigned int)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__RPFileTransferSession_setFlags___block_invoke;
  v3[3] = &unk_1E7C94280;
  flagsCopy = flags;
  v3[4] = self;
  [(RPFileTransferSession *)self _updateIfNeededWithBlock:v3];
}

BOOL __34__RPFileTransferSession_setFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 556);
  if (v1 != v3)
  {
    if (*(v2 + 8) == 1 && (v5 = *(v2 + 152), *v5 <= 30))
    {
      if (*v5 == -1)
      {
        v9 = _LogCategory_Initialize();
        v6 = *(a1 + 40);
        v2 = *(a1 + 32);
        if (!v9)
        {
          goto LABEL_8;
        }

        v5 = *(v2 + 152);
        v7 = *(v2 + 556);
      }

      else
      {
        v6 = v1;
        v7 = *(v2 + 556);
      }

      LogPrintF(v5, "[RPFileTransferSession setFlags:]_block_invoke", 30, "Flags changed: %#{flags} -> %#{flags}\n", v7, &unk_1B6F2E478, v6, &unk_1B6F2E478);
      LODWORD(v6) = *(a1 + 40);
      v2 = *(a1 + 32);
    }

    else
    {
      LODWORD(v6) = v1;
    }

LABEL_8:
    *(v2 + 556) = v6;
  }

  return v1 != v3;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EB97AAE8;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)setLargeFileBufferBytes:(unint64_t)bytes
{
  largeFileBufferBytes = self->_largeFileBufferBytes;
  if (largeFileBufferBytes != bytes)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
        largeFileBufferBytes = self->_largeFileBufferBytes;
      }

      LogPrintF(ucat, "[RPFileTransferSession setLargeFileBufferBytes:]", 30, "LargeFileBufferBytes: %llu -> %llu\n", largeFileBufferBytes, bytes);
    }
  }

LABEL_6:
  self->_largeFileBufferBytes = bytes;
}

- (void)setMaxLargeFileTasks:(unint64_t)tasks
{
  maxLargeFileTasks = self->_maxLargeFileTasks;
  if (maxLargeFileTasks != tasks)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
        maxLargeFileTasks = self->_maxLargeFileTasks;
      }

      LogPrintF(ucat, "[RPFileTransferSession setMaxLargeFileTasks:]", 30, "LargeFileMaxTasks: %llu -> %llu\n", maxLargeFileTasks, tasks);
    }
  }

LABEL_6:
  self->_maxLargeFileTasks = tasks;
}

- (void)setMaxSmallFileTasks:(unint64_t)tasks
{
  maxSmallFileTasks = self->_maxSmallFileTasks;
  if (maxSmallFileTasks != tasks)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
        maxSmallFileTasks = self->_maxSmallFileTasks;
      }

      LogPrintF(ucat, "[RPFileTransferSession setMaxSmallFileTasks:]", 30, "SmallFileMaxTasks: %llu -> %llu\n", maxSmallFileTasks, tasks);
    }
  }

LABEL_6:
  self->_maxSmallFileTasks = tasks;
}

- (id)resumeStateDict
{
  resumeState = self->_resumeState;
  if (resumeState)
  {
    resumeState = [resumeState dictionaryRepresentation];
    v2 = vars8;
  }

  return resumeState;
}

- (BOOL)prepareTemplateAndReturnError:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  if (![(NSData *)self->_selfPublicKey length]|| ![(NSData *)self->_selfSecretKey length])
  {
    cced25519_make_key_pair_compat();
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v15 length:32];
    selfPublicKey = self->_selfPublicKey;
    self->_selfPublicKey = v4;

    v6 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:__s length:32];
    selfSecretKey = self->_selfSecretKey;
    self->_selfSecretKey = v6;

    memset_s(__s, 0x20uLL, 0, 0x20uLL);
  }

  if (self->_flags)
  {
    if (!self->_targetID)
    {
      v9 = NSRandomData();
      v10 = NSPrintF("%.3H", [v9 bytes], objc_msgSend(v9, "length"), objc_msgSend(v9, "length"));
      targetID = self->_targetID;
      self->_targetID = v10;
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 1;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPFileTransferSession prepareTemplateAndReturnError:]", 30, "Prepared: targetID %@, PK %{mask}\n", self->_targetID, self->_selfPublicKey);
    }
  }

  else
  {
    v8 = self->_ucat;
    if (v8->var0 <= 30)
    {
      if (v8->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 1;
        }

        v8 = self->_ucat;
      }

      LogPrintF(v8, "[RPFileTransferSession prepareTemplateAndReturnError:]", 30, "Prepared: source, PK %{mask}\n", self->_selfPublicKey);
    }
  }

  return 1;
}

- (void)activate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activateCalled)
  {
    selfCopy->_activateCalled = 1;
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__RPFileTransferSession_activate__block_invoke;
    block[3] = &unk_1E7C92CE8;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

void __33__RPFileTransferSession_activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_3:
      LogPrintF(v3, "[RPFileTransferSession activate]_block_invoke", 30, "Activate: Flags %#{flags}, TargetID %@, SPK %{mask}, PPK %{mask}\n", *(v2 + 556), &unk_1B6F2E478, *(v2 + 688), *(v2 + 680), *(v2 + 632));
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v3 = *(v2 + 152);
      goto LABEL_3;
    }
  }

LABEL_5:
  v9 = 0;
  [v2 _activateAndReturnError:&v9];
  v5 = v9;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = v6[19];
    if (*v7 <= 90)
    {
      if (*v7 == -1)
      {
        v8 = _LogCategory_Initialize();
        v6 = *(a1 + 32);
        if (!v8)
        {
          goto LABEL_11;
        }

        v7 = v6[19];
      }

      LogPrintF(v7, "[RPFileTransferSession activate]_block_invoke", 90, "### Activate failed: %{error}\n", v5);
      v6 = *(a1 + 32);
    }

LABEL_11:
    [v6 _reportCompletion:v5];
    goto LABEL_12;
  }

  [v6 _startProgressReportTimer];
LABEL_12:
}

- (BOOL)_activateAndReturnError:(id *)error
{
  v11 = self->_targetID;
  if (v11)
  {
    [(RPFileTransferSession *)self _prefsChanged];
    [(RPFileTransferSession *)self _debugSetup];
    v18 = self->_selfPublicKey;
    if (!self->_selfPublicKey)
    {
      if (error)
      {
        RPErrorF(4294960591, "No self public key", v12, v13, v14, v15, v16, v17, v63);
        *error = v61 = 0;
      }

      else
      {
        v61 = 0;
      }

      goto LABEL_22;
    }

    v25 = self->_selfSecretKey;
    if (!self->_selfSecretKey)
    {
      if (error)
      {
        RPErrorF(4294960591, "No self secret key", v19, v20, v21, v22, v23, v24, v63);
        *error = v61 = 0;
      }

      else
      {
        v61 = 0;
      }

      goto LABEL_21;
    }

    v26 = objc_alloc_init(RPIdentity);
    [(RPIdentity *)v26 setEdPKData:v18];
    [(RPIdentity *)v26 setEdSKData:v25];
    objc_storeStrong(&self->_selfIdentity, v26);
    v33 = self->_peerPublicKey;
    if (!self->_peerPublicKey)
    {
      if (error)
      {
        RPErrorF(4294960591, "No peer public key", v27, v28, v29, v30, v31, v32, v63);
        *error = v61 = 0;
      }

      else
      {
        v61 = 0;
      }

      goto LABEL_20;
    }

    v64 = v18;
    v65 = v11;
    v34 = objc_alloc_init(RPIdentity);
    [(RPIdentity *)v34 setEdPKData:v33];
    objc_storeStrong(&self->_peerIdentity, v34);
    path = self->_receiveFileParentPath;
    if (!path)
    {
      v36 = self->_temporaryDirectoryURL;
      if (!v36)
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v66 = 0;
        v38 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v66];
        v39 = v66;

        if (!v38)
        {
          [(RPFileTransferSession *)error _activateAndReturnError:v39, v40, v41, v42, v43, v44, v45];
          path = 0;
          goto LABEL_38;
        }

        v36 = [v38 URLByAppendingPathComponent:@"com.apple.rapport/FileTransfer" isDirectory:1];
      }

      v46 = [(NSString *)self->_targetID stringByAppendingString:@".rpftd"];
      v47 = [(NSURL *)v36 URLByAppendingPathComponent:v46 isDirectory:1];

      path = [v47 path];
      objc_storeStrong(&self->_receiveFileParentPath, path);
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPFileTransferSession _activateAndReturnError:]", 30, "Receive parent path: '%@'\n", path);
    }

LABEL_14:
    v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
    ioQueues = self->_ioQueues;
    self->_ioQueues = v49;

    v51 = objc_alloc_init(MEMORY[0x1E695DF90]);
    smallFilesReceiveTasks = self->_smallFilesReceiveTasks;
    self->_smallFilesReceiveTasks = v51;

    v53 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    smallFilesSendTasks = self->_smallFilesSendTasks;
    self->_smallFilesSendTasks = v53;

    v55 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    largeFileSendTasks = self->_largeFileSendTasks;
    self->_largeFileSendTasks = v55;

    v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
    largeFileReceiveTasks = self->_largeFileReceiveTasks;
    self->_largeFileReceiveTasks = v57;

    if ((self->_flags & 1) == 0)
    {
      if (![(RPFileTransferSession *)self _activateSourceAndReturnError:error])
      {
        goto LABEL_38;
      }

LABEL_18:
      self->_metricTicksActivate = mach_absolute_time();
      v59 = objc_alloc_init(RPFileTransferProgress);
      progressCurrent = self->_progressCurrent;
      self->_progressCurrent = v59;

      v61 = 1;
      [(RPFileTransferSession *)self _reportProgressType:1];
LABEL_19:

      v18 = v64;
      v11 = v65;
LABEL_20:

LABEL_21:
LABEL_22:

      goto LABEL_23;
    }

    if ([(RPFileTransferSession *)self _activateTargetAndReturnError:error])
    {
      goto LABEL_18;
    }

LABEL_38:
    v61 = 0;
    goto LABEL_19;
  }

  if (error)
  {
    RPErrorF(4294960591, "No target ID", v5, v6, v7, v8, v9, v10, v63);
    *error = v61 = 0;
  }

  else
  {
    v61 = 0;
  }

LABEL_23:

  return v61;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__RPFileTransferSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__35__RPFileTransferSession_invalidate__block_invoke(void *result)
{
  v5 = result[4];
  if (*(v5 + 89))
  {
    return result;
  }

  v10 = v1;
  v6 = result;
  *(v5 + 89) = 1;
  v7 = result[4];
  v8 = v7[19];
  if (*v8 <= 30)
  {
    if (*v8 == -1)
    {
      v9 = _LogCategory_Initialize();
      v7 = v6[4];
      if (!v9)
      {
        goto LABEL_6;
      }

      v8 = v7[19];
    }

    LogPrintF(v8, "[RPFileTransferSession invalidate]_block_invoke", 30, "Invalidate\n", v2, v10, v3);
    v7 = v6[4];
  }

LABEL_6:

  return [v7 _invalidate];
}

- (void)_invalidate
{
  v43 = *MEMORY[0x1E69E9840];
  [(RPFileTransferSession *)self _stopProgressReportTimer];
  v3 = self->_addedItems;
  addedItems = self->_addedItems;
  self->_addedItems = 0;

  if ([(NSMutableSet *)v3 count])
  {
    v11 = RPErrorF(4294896148, "Invalidated", v5, v6, v7, v8, v9, v10, v33);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = v3;
    v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        v16 = 0;
        do
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(RPFileTransferSession *)self _completeItemDirect:*(*(&v37 + 1) + 8 * v16++) error:v11];
        }

        while (v14 != v16);
        v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v14);
    }

    [(NSMutableSet *)v12 removeAllObjects];
  }

  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
  bonjourAdvertiser = self->_bonjourAdvertiser;
  self->_bonjourAdvertiser = 0;

  [(CUBonjourBrowser *)self->_bonjourBrowser invalidate];
  bonjourBrowser = self->_bonjourBrowser;
  self->_bonjourBrowser = 0;

  [(CUCoalescer *)self->_bonjourCoalescer invalidate];
  bonjourCoalescer = self->_bonjourCoalescer;
  self->_bonjourCoalescer = 0;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = self->_connections;
  v21 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      v24 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v33 + 1) + 8 * v24++) invalidate];
      }

      while (v22 != v24);
      v22 = [(NSMutableSet *)v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v22);
  }

  [(NSMutableSet *)self->_connections removeAllObjects];
  [(RPConnection *)self->_controlCnx invalidate];
  controlCnx = self->_controlCnx;
  self->_controlCnx = 0;

  controlRetryTimer = self->_controlRetryTimer;
  if (controlRetryTimer)
  {
    v27 = controlRetryTimer;
    dispatch_source_cancel(v27);
    v28 = self->_controlRetryTimer;
    self->_controlRetryTimer = 0;
  }

  [(NSMutableDictionary *)self->_registeredEvents removeAllObjects];
  registeredEvents = self->_registeredEvents;
  self->_registeredEvents = 0;

  [(NSMutableDictionary *)self->_registeredRequests removeAllObjects];
  registeredRequests = self->_registeredRequests;
  self->_registeredRequests = 0;

  [(CUTCPServer *)self->_tcpServer invalidate];
  tcpServer = self->_tcpServer;
  self->_tcpServer = 0;

  [(CUWiFiManager *)self->_wifiManager invalidate];
  wifiManager = self->_wifiManager;
  self->_wifiManager = 0;

  [(RPFileTransferSession *)self _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && ![(NSMutableDictionary *)self->_smallFilesReceiveTasks count]&& ![(NSMutableSet *)self->_smallFilesSendTasks count]&& ![(NSMutableDictionary *)self->_largeFileReceiveTasks count]&& ![(NSMutableSet *)self->_largeFileSendTasks count])
  {
    v9 = _Block_copy(self->_completionHandler);
    if (v9)
    {
      v10 = RPErrorF(4294896148, "Invalidated", v3, v4, v5, v6, v7, v8, v18);
      v9[2](v9, v10);
    }

    debugNotifyToken = self->_debugNotifyToken;
    if (debugNotifyToken != -1)
    {
      notify_cancel(debugNotifyToken);
      self->_debugNotifyToken = -1;
    }

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    flowControlChangedHandler = self->_flowControlChangedHandler;
    self->_flowControlChangedHandler = 0;

    progressHandler = self->_progressHandler;
    self->_progressHandler = 0;

    receivedItemHandler = self->_receivedItemHandler;
    self->_receivedItemHandler = 0;

    receivedItemsHandler = self->_receivedItemsHandler;
    self->_receivedItemsHandler = 0;

    self->_invalidateDone = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_13:
        LogPrintF(ucat, "[RPFileTransferSession _invalidated]", 30, "Invalidated: %@\n", self);
        return;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_13;
      }
    }
  }
}

- (void)_prefsChanged
{
  v3 = 0;
  if ((self->_flags & 0x100) != 0)
  {
    v3 = CFPrefs_GetInt64() != 0;
  }

  if (self->_prefCompress != v3)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_6:
        v5 = "yes";
        if (v3)
        {
          v6 = "no";
        }

        else
        {
          v6 = "yes";
        }

        if (!v3)
        {
          v5 = "no";
        }

        LogPrintF(ucat, "[RPFileTransferSession _prefsChanged]", 30, "Compress: %s -> %s\n", v6, v5);
        goto LABEL_13;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_6;
      }
    }

LABEL_13:
    self->_prefCompress = v3;
  }

  Int64 = CFPrefs_GetInt64();
  if (![(RPFileTransferSession *)self largeFileBufferBytes])
  {
    if ((Int64 - 10000001) >= 0xFFFFFFFFFF676980)
    {
      v8 = Int64;
    }

    else
    {
      v8 = 0x100000;
    }

    [(RPFileTransferSession *)self setLargeFileBufferBytes:v8];
  }

  v9 = CFPrefs_GetInt64();
  if (![(RPFileTransferSession *)self maxLargeFileTasks])
  {
    if ((v9 - 1001) >= 0xFFFFFFFFFFFFFC18)
    {
      v10 = v9;
    }

    else
    {
      v10 = 3;
    }

    [(RPFileTransferSession *)self setMaxLargeFileTasks:v10];
  }

  v11 = CFPrefs_GetInt64();
  if ((v11 - 1001) >= 0xFFFFFFFFFFFFFC18)
  {
    maxLargeFileTasks = v11;
  }

  else
  {
    maxLargeFileTasks = 3;
  }

  if ([(RPFileTransferSession *)self maxLargeFileTasks]> maxLargeFileTasks)
  {
    maxLargeFileTasks = [(RPFileTransferSession *)self maxLargeFileTasks];
  }

  prefLargeFileMaxOutstanding = self->_prefLargeFileMaxOutstanding;
  if (maxLargeFileTasks != prefLargeFileMaxOutstanding)
  {
    v14 = self->_ucat;
    if (v14->var0 <= 30)
    {
      if (v14->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_34;
        }

        v14 = self->_ucat;
        LODWORD(prefLargeFileMaxOutstanding) = self->_prefLargeFileMaxOutstanding;
      }

      LogPrintF(v14, "[RPFileTransferSession _prefsChanged]", 30, "LargeFileMaxOutstanding: %d -> %lld\n", prefLargeFileMaxOutstanding, maxLargeFileTasks);
    }

LABEL_34:
    self->_prefLargeFileMaxOutstanding = maxLargeFileTasks;
  }

  v15 = CFPrefs_GetInt64();
  if ((v15 - 10000001) >= 0xFFFFFFFFFF676980)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x100000;
  }

  prefSmallFilesMaxBytes = self->_prefSmallFilesMaxBytes;
  if (v16 != prefSmallFilesMaxBytes)
  {
    v18 = self->_ucat;
    if (v18->var0 <= 30)
    {
      if (v18->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_43;
        }

        v18 = self->_ucat;
        LODWORD(prefSmallFilesMaxBytes) = self->_prefSmallFilesMaxBytes;
      }

      LogPrintF(v18, "[RPFileTransferSession _prefsChanged]", 30, "SmallFilesMaxBytes: %u -> %llu\n", prefSmallFilesMaxBytes, v16);
    }

LABEL_43:
    self->_prefSmallFilesMaxBytes = v16;
  }

  v19 = CFPrefs_GetInt64();
  if (![(RPFileTransferSession *)self maxSmallFileTasks])
  {
    if ((v19 - 1001) >= 0xFFFFFFFFFFFFFC18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 3;
    }

    [(RPFileTransferSession *)self setMaxSmallFileTasks:v20];
  }

  v21 = CFPrefs_GetInt64() != 0;
  if (self->_resumable != v21)
  {
    v22 = self->_ucat;
    if (v22->var0 <= 30)
    {
      if (v22->var0 != -1)
      {
LABEL_52:
        v23 = "yes";
        if (v21)
        {
          v24 = "no";
        }

        else
        {
          v24 = "yes";
        }

        if (!v21)
        {
          v23 = "no";
        }

        LogPrintF(v22, "[RPFileTransferSession _prefsChanged]", 30, "Resumable: %s -> %s\n", v24, v23);
        goto LABEL_59;
      }

      if (_LogCategory_Initialize())
      {
        v22 = self->_ucat;
        goto LABEL_52;
      }
    }

LABEL_59:
    self->_resumable = v21;
    if (v21)
    {
      v25 = 512;
    }

    else
    {
      v25 = 0;
    }

    self->_flags = self->_flags & 0xFFFFFDFF | v25;
  }

  CFPrefs_GetDouble();
  if (v26 <= 60.0 && v26 > 0.001)
  {
    v29 = v26;
  }

  else
  {
    v29 = 1.0;
  }

  resumeStateFlushInterval = self->_resumeStateFlushInterval;
  if (v29 != resumeStateFlushInterval)
  {
    v31 = self->_ucat;
    if (v31->var0 <= 30)
    {
      if (v31->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_77;
        }

        v31 = self->_ucat;
        resumeStateFlushInterval = self->_resumeStateFlushInterval;
      }

      LogPrintF(v31, "[RPFileTransferSession _prefsChanged]", 30, "StateFileFlushInterval: %lf -> %lf\n", 1.0, resumeStateFlushInterval);
    }

LABEL_77:
    self->_resumeStateFlushInterval = v29;
  }
}

- (void)_reportCompletion:(id)completion
{
  v51[26] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  metricLastFileCompletionTicks = self->_metricLastFileCompletionTicks;
  if (!metricLastFileCompletionTicks)
  {
    metricLastFileCompletionTicks = mach_absolute_time();
  }

  metricTicksConnectStart = self->_metricTicksConnectStart;
  if (metricTicksConnectStart)
  {
    v7 = metricLastFileCompletionTicks > metricTicksConnectStart;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    self->_metricTicksConnected += metricLastFileCompletionTicks - metricTicksConnectStart;
  }

  UpTicksToSecondsF();
  v9 = v8;
  if (v8 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = self->_metricTotalBytes / v8;
  }

  v11 = UpTicksToSeconds();
  metricUncompressedBytes = self->_metricUncompressedBytes;
  if (metricUncompressedBytes)
  {
    [(RPFileTransferProgress *)self->_progressCurrent setCompressionRate:self->_metricCompressedBytes / metricUncompressedBytes];
    [(RPFileTransferProgress *)self->_progressCurrent compressionRate];
    v14 = (v13 * 100.0);
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  [(RPFileTransferProgress *)self->_progressCurrent setBytesPerSecond:v10];
  [(RPFileTransferProgress *)self->_progressCurrent setRemainingSeconds:0.0];
  [(RPFileTransferProgress *)self->_progressCurrent setCurrentFilename:0];
  [(RPFileTransferProgress *)self->_progressCurrent setError:completionCopy];
  [(RPFileTransferProgress *)self->_progressCurrent setTransferredByteCount:self->_metricTotalBytes];
  [(RPFileTransferProgress *)self->_progressCurrent setTotalByteCount:self->_metricTotalBytes];
  [(RPFileTransferProgress *)self->_progressCurrent setTransferredFileCount:self->_metricTotalFiles];
  [(RPFileTransferProgress *)self->_progressCurrent setTotalFileCount:self->_metricTotalFiles];
  [(RPFileTransferSession *)self _reportProgressType:20];
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (completionCopy)
  {
    if (var0 > 90)
    {
      goto LABEL_26;
    }

    if (var0 != -1)
    {
      goto LABEL_18;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
LABEL_18:
      LogPrintF(ucat, "[RPFileTransferSession _reportCompletion:]", 90, "### Completed: %llu files, %.2f MB, %.2f MB/sec, CmpP %d%%, %{error}\n", self->_metricTotalFiles, self->_metricTotalBytes / 1000000.0, v10 / 1000000.0, v14, completionCopy);
    }
  }

  else
  {
    if (var0 > 30)
    {
      goto LABEL_26;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_26;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPFileTransferSession _reportCompletion:]", 30, "Completed: %llu files, %.2f MB, %.2f MB/sec, CmpP %d%%\n");
  }

LABEL_26:
  v17 = _Block_copy(self->_completionHandler);
  if (v17)
  {
    v49 = v17;
    (*(v17 + 2))(v17, completionCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    if ((self->_flags & 2) != 0)
    {
      v19 = @"d2d";
    }

    else
    {
      v19 = @"?";
    }

    v51[0] = v19;
    v50[0] = @"type";
    v50[1] = @"errD";
    domain = [completionCopy domain];
    v47 = domain;
    v21 = &stru_1F2ED6FB8;
    if (domain)
    {
      v21 = domain;
    }

    v51[1] = v21;
    v50[2] = @"errC";
    v46 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(completionCopy, "code")}];
    v51[2] = v46;
    v50[3] = @"totB";
    v45 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:10000000 * (self->_metricTotalBytes / 0x989680)];
    v51[3] = v45;
    v50[4] = @"totF";
    v48 = completionCopy;
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricTotalFiles / 0x64)];
    v51[4] = v44;
    v50[5] = @"totS";
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:60 * (v11 / 0x3C)];
    v51[5] = v43;
    v50[6] = @"Bps";
    v42 = [MEMORY[0x1E696AD98] numberWithDouble:v10 / 1000.0 * 1000.0];
    v51[6] = v42;
    v50[7] = @"cnxS";
    v41 = [MEMORY[0x1E696AD98] numberWithDouble:v9 / 60.0 * 60.0];
    v51[7] = v41;
    v50[8] = @"dCnx";
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_metricDisconnects];
    v51[8] = v40;
    v50[9] = @"ltAWDL";
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_metricLinkTypeCountAWDL];
    v51[9] = v39;
    v50[10] = @"ltUSB";
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_metricLinkTypeCountUSB];
    v51[10] = v38;
    v50[11] = @"ltOther";
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_metricLinkTypeCountOther];
    v51[11] = v37;
    v50[12] = @"tcpD";
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_metricTCPRanDryCount];
    v51[12] = v36;
    v50[13] = @"fRtr";
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_metricRetries];
    v51[13] = v35;
    v50[14] = @"fs10K";
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[0] / 0x64)];
    v51[14] = v34;
    v50[15] = @"fs100K";
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[1] / 0x64)];
    v51[15] = v33;
    v50[16] = @"fs1M";
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[2] / 0x64)];
    v51[16] = v32;
    v50[17] = @"fs10M";
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[3] / 0x64)];
    v51[17] = v22;
    v50[18] = @"fs100M";
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[4] / 0x64)];
    v51[18] = v23;
    v50[19] = @"fs1G";
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[5] / 0x64)];
    v51[19] = v24;
    v50[20] = @"fs10G";
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[6] / 0x64)];
    v51[20] = v25;
    v50[21] = @"fs10GUp";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:100 * (self->_metricFileSizeBuckets[7] / 0x64)];
    v51[21] = v26;
    v50[22] = @"ssPr";
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_metricPrematureSmallSets];
    v51[22] = v27;
    v50[23] = @"CmpP";
    v28 = [MEMORY[0x1E696AD98] numberWithInt:v14];
    v51[23] = v28;
    v50[24] = @"CmpE";
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_metricCompressionErrors];
    v51[24] = v29;
    v50[25] = @"CmpU";
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_metricUncompressibleChunks];
    v51[25] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:26];
    CUMetricsLogEx();

    completionCopy = v48;
    v17 = v49;
  }
}

- (void)_reportProgressType:(int)type
{
  v3 = *&type;
  v5 = self->_progressCurrent;
  if (v5)
  {
    v13 = v5;
    linkType = [(RPConnection *)self->_controlCnx linkType];
    if (linkType)
    {
      [(RPFileTransferProgress *)v13 setLinkType:linkType];
    }

    [(RPFileTransferProgress *)v13 setType:v3];
    ucat = self->_ucat;
    if (ucat->var0 >= 31)
    {
      goto LABEL_15;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_15:
        if (v3 == 20 || v3 == 11)
        {
          [(RPFileTransferSession *)self _stopProgressReportTimer];
        }

        v10 = _Block_copy(self->_progressHandler);
        v11 = v10;
        if (v10)
        {
          (*(v10 + 2))(v10, v13);
        }

        goto LABEL_21;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPFileTransferSession _reportProgressType:]", 30, "%@\n", v13);
    goto LABEL_15;
  }

  v8 = self->_ucat;
  if (v8->var0 > 90)
  {
    goto LABEL_22;
  }

  v13 = 0;
  if (v8->var0 != -1)
  {
LABEL_9:
    if (v3 > 10)
    {
      switch(v3)
      {
        case 0xB:
          v9 = "ControlDisconnected";
          goto LABEL_36;
        case 0x14:
          v9 = "Completed";
          goto LABEL_36;
        case 0x1E:
          v9 = "DataTransferred";
          goto LABEL_36;
      }
    }

    else
    {
      switch(v3)
      {
        case 0:
          v9 = "Unspecified";
          goto LABEL_36;
        case 1:
          v9 = "SessionStart";
          goto LABEL_36;
        case 0xA:
          v9 = "ControlConnected";
LABEL_36:
          LogPrintF(v8, "[RPFileTransferSession _reportProgressType:]", 90, "### No progress to report: %s\n", v9);
LABEL_21:
          v5 = v13;
          goto LABEL_22;
      }
    }

    v9 = "?";
    goto LABEL_36;
  }

  v12 = _LogCategory_Initialize();
  v5 = 0;
  if (v12)
  {
    v8 = self->_ucat;
    goto LABEL_9;
  }

LABEL_22:
}

- (void)_reportDataTransferred
{
  v3 = self->_progressCurrent;
  v4 = v3;
  if (v3)
  {
    v14 = v3;
    [(RPFileTransferProgress *)v3 setType:30];
    ucat = self->_ucat;
    if (ucat->var0 <= 10)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPFileTransferSession _reportDataTransferred]", 10, "%@\n", v14);
    }

LABEL_9:
    if (!self->_metricLastFileCompletionTicks)
    {
      mach_absolute_time();
    }

    UpTicksToSecondsF();
    if (v7 == 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = self->_progressCurrentBytes / v7;
    }

    v9 = v14;
    metricUncompressedBytes = self->_metricUncompressedBytes;
    if (metricUncompressedBytes)
    {
      [(RPFileTransferProgress *)v14 setCompressionRate:self->_metricCompressedBytes / metricUncompressedBytes];
      v9 = v14;
    }

    [(RPFileTransferProgress *)v9 setBytesPerSecond:v8];
    [(RPFileTransferProgress *)v14 setRemainingSeconds:0.0];
    [(RPFileTransferProgress *)v14 setCurrentFilename:0];
    [(RPFileTransferProgress *)v14 setError:0];
    [(RPFileTransferProgress *)v14 setTransferredByteCount:self->_progressCurrentBytes];
    [(RPFileTransferProgress *)v14 setTotalByteCount:self->_progressTotalBytes];
    [(RPFileTransferProgress *)v14 setTransferredFileCount:self->_progressCurrentFiles];
    [(RPFileTransferProgress *)v14 setTotalFileCount:self->_progressTotalFiles];
    v11 = _Block_copy(self->_progressHandler);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, v14);
    }

    goto LABEL_19;
  }

  v6 = self->_ucat;
  if (v6->var0 > 90)
  {
    goto LABEL_20;
  }

  v14 = 0;
  if (v6->var0 != -1)
  {
LABEL_7:
    LogPrintF(v6, "[RPFileTransferSession _reportDataTransferred]", 90, "### No progress to report: %s\n", "DataTransferred");
LABEL_19:
    v4 = v14;
    goto LABEL_20;
  }

  v13 = _LogCategory_Initialize();
  v4 = 0;
  if (v13)
  {
    v6 = self->_ucat;
    goto LABEL_7;
  }

LABEL_20:
}

- (void)_startProgressReportTimer
{
  [(RPFileTransferSession *)self progressHandlerTimeInterval];
  if (v3 > 0.0 && !self->_progressTimer)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    progressTimer = self->_progressTimer;
    self->_progressTimer = v4;

    v6 = self->_progressTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __50__RPFileTransferSession__startProgressReportTimer__block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    CUDispatchTimerSet();
    dispatch_activate(self->_progressTimer);
  }
}

_BYTE *__50__RPFileTransferSession__startProgressReportTimer__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[336] == 1)
  {
    result = [result _reportDataTransferred];
    *(*(a1 + 32) + 336) = 0;
  }

  return result;
}

- (void)_stopProgressReportTimer
{
  progressTimer = self->_progressTimer;
  if (progressTimer)
  {
    dispatch_source_cancel(progressTimer);
    v4 = self->_progressTimer;
    self->_progressTimer = 0;
  }
}

- (void)_updateIfNeededWithBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((blockCopy[2](blockCopy) & 1) != 0 && selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__RPFileTransferSession__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E7C92CE8;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_updateWiFi
{
  v20[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  flags = selfCopy->_flags;
  if ((flags & 8) != 0)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    if ((flags & 4) == 0)
    {
      objc_sync_exit(selfCopy);

      goto LABEL_10;
    }

    linkType = [(RPConnection *)selfCopy->_controlCnx linkType];
    objc_sync_exit(selfCopy);

    if (linkType != 4)
    {
LABEL_10:
      if (![(CUWiFiManager *)selfCopy->_wifiManager infraDisabled])
      {
        goto LABEL_35;
      }

      p_var0 = &selfCopy->_ucat->var0;
      if (*p_var0 > 30)
      {
        goto LABEL_21;
      }

      if (*p_var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        p_var0 = &selfCopy->_ucat->var0;
      }

      LogPrintF(p_var0, "[RPFileTransferSession _updateWiFi]", 30, "Infra WiFi enable\n");
LABEL_21:
      [(CUWiFiManager *)selfCopy->_wifiManager setInfraDisabled:0];
      v8 = 0;
      goto LABEL_22;
    }
  }

  if (([(CUWiFiManager *)selfCopy->_wifiManager infraDisabled]& 1) == 0)
  {
    ucat = selfCopy->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_8:
        LogPrintF(ucat, "[RPFileTransferSession _updateWiFi]", 30, "Infra WiFi disable\n");
        goto LABEL_15;
      }

      if (_LogCategory_Initialize())
      {
        ucat = selfCopy->_ucat;
        goto LABEL_8;
      }
    }
  }

LABEL_15:
  wifiManager = selfCopy->_wifiManager;
  if (wifiManager)
  {
    if (([(CUWiFiManager *)wifiManager infraDisabled]& 1) != 0)
    {
      v8 = 1;
      goto LABEL_28;
    }

    v8 = 1;
    [(CUWiFiManager *)selfCopy->_wifiManager setInfraDisabled:1];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E6999558]);
    v10 = selfCopy->_wifiManager;
    selfCopy->_wifiManager = v9;

    [(CUWiFiManager *)selfCopy->_wifiManager setDispatchQueue:selfCopy->_dispatchQueue];
    [(CUWiFiManager *)selfCopy->_wifiManager setLabel:@"RPFile"];
    v8 = 1;
    [(CUWiFiManager *)selfCopy->_wifiManager setInfraDisabled:1];
    [(CUWiFiManager *)selfCopy->_wifiManager activateWithCompletion:0];
  }

LABEL_22:
  if (selfCopy->_controlCnx && (selfCopy->_flags & 1) != 0)
  {
    if (v8)
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    v19 = @"_ftFl";
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
    v20[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

    [(RPConnection *)selfCopy->_controlCnx sendEncryptedEventID:@"_ftPU" event:v13 options:0 completion:0];
  }

LABEL_28:
  if (v8)
  {
    v14 = selfCopy->_flags;
    if ((v14 & 1) == 0 && selfCopy->_peerInfraWiFiDisabled)
    {
      if ((v14 & 2) == 0)
      {
        return;
      }

      v15 = &selfCopy->_ucat->var0;
      if (*v15 > 30)
      {
        goto LABEL_44;
      }

      if (*v15 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_44;
        }

        v15 = &selfCopy->_ucat->var0;
      }

      LogPrintF(v15, "[RPFileTransferSession _updateWiFi]", 30, "Update traffic: D2D\n");
LABEL_44:
      p_controlCnx = &selfCopy->_controlCnx;
      v18 = 1024;
      goto LABEL_41;
    }
  }

LABEL_35:
  p_controlCnx = &selfCopy->_controlCnx;
  if (![(RPConnection *)selfCopy->_controlCnx trafficFlags])
  {
    return;
  }

  v17 = &selfCopy->_ucat->var0;
  if (*v17 > 30)
  {
    goto LABEL_40;
  }

  if (*v17 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_40;
    }

    v17 = &selfCopy->_ucat->var0;
  }

  LogPrintF(v17, "[RPFileTransferSession _updateWiFi]", 30, "Update traffic: None\n");
LABEL_40:
  v18 = 0;
LABEL_41:
  [*p_controlCnx setTrafficFlags:v18];
}

void *__36__RPFileTransferSession__debugSetup__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 84);
  if (result != -1)
  {
    v4 = *(v2 + 576);
    state64 = 0;
    notify_get_state(result, &state64);
    *(*(a1 + 32) + 576) = state64;
    v5 = *(a1 + 32);
    v6 = v5[19];
    if (*v6 <= 30)
    {
      if (*v6 == -1)
      {
        v7 = _LogCategory_Initialize();
        v5 = *(a1 + 32);
        if (!v7)
        {
          return [v5 _debugUpdate];
        }

        v6 = v5[19];
      }

      LogPrintF(v6, "[RPFileTransferSession _debugSetup]_block_invoke", 30, "Debug flags changed: %#ll{flags} -> %#ll{flags}\n", v4, &unk_1B6F2E4EC, v5[72], &unk_1B6F2E4EC);
      v5 = *(a1 + 32);
    }

    return [v5 _debugUpdate];
  }

  return result;
}

- (void)_debugUpdate
{
  if ((self->_debugFlags & 1) != 0 && self->_controlCnx)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPFileTransferSession _debugUpdate]", 30, "Debug disconnect control cnx\n");
    }

LABEL_7:
    controlCnx = self->_controlCnx;
    v11 = RPErrorF(4294896153, "Debug Disconnect", v2, v3, v4, v5, v6, v7, v13);
    [(RPConnection *)controlCnx invalidateWithError:v11];

    v12 = self->_controlCnx;
    self->_controlCnx = 0;

    self->_debugFlags &= ~1uLL;
  }
}

- (void)_metricAddFileSize:(int64_t)size
{
  if (size >= 10000)
  {
    v3 = 1;
    v4 = 2;
    v5 = 3;
    v6 = 4;
    v7 = 5;
    v8 = 6;
    if (size >= 0x2540BE400)
    {
      v8 = 7;
    }

    if (size >= 0x3B9ACA00)
    {
      v7 = v8;
    }

    if (size >= 0x5F5E100)
    {
      v6 = v7;
    }

    if (size >= 0x989680)
    {
      v5 = v6;
    }

    if (size >= 0xF4240)
    {
      v4 = v5;
    }

    if (size >> 5 >= 0xC35)
    {
      v3 = v4;
    }
  }

  else
  {
    v3 = 0;
  }

  ++self->_metricFileSizeBuckets[v3];
}

- (void)registerEventID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = [(NSMutableDictionary *)self->_registeredEvents objectForKeyedSubscript:dCopy];

  ucat = self->_ucat;
  var0 = ucat->var0;
  if (!v10)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPFileTransferSession registerEventID:options:handler:]", 30, "RegisterEventID '%@'\n", dCopy);
    }

LABEL_11:
    v13 = objc_alloc_init(RPEventRegistration);
    [(RPEventRegistration *)v13 setEventID:dCopy];
    [(RPEventRegistration *)v13 setOptions:optionsCopy];
    [(RPEventRegistration *)v13 setHandler:handlerCopy];
    registeredEvents = self->_registeredEvents;
    if (!registeredEvents)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16 = self->_registeredEvents;
      self->_registeredEvents = v15;

      registeredEvents = self->_registeredEvents;
    }

    [(NSMutableDictionary *)registeredEvents setObject:v13 forKeyedSubscript:dCopy];

    goto LABEL_14;
  }

  if (var0 > 90)
  {
    goto LABEL_14;
  }

  if (var0 != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_4:
    LogPrintF(ucat, "[RPFileTransferSession registerEventID:options:handler:]", 90, "### RegisterEventID duplicate '%@'\n", dCopy);
  }

LABEL_14:
}

- (void)deregisterEventID:(id)d
{
  dCopy = d;
  ucat = self->_ucat;
  v7 = dCopy;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPFileTransferSession deregisterEventID:]", 30, "DeregisterEventID '%@'\n", dCopy);
      dCopy = v7;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    dCopy = v7;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(NSMutableDictionary *)self->_registeredEvents setObject:0 forKeyedSubscript:dCopy];
}

- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__RPFileTransferSession_sendEventID_event_destinationID_options_completion___block_invoke;
  block[3] = &unk_1E7C942D0;
  block[4] = self;
  v21 = dCopy;
  v23 = optionsCopy;
  v24 = completionCopy;
  v22 = eventCopy;
  v16 = optionsCopy;
  v17 = eventCopy;
  v18 = completionCopy;
  v19 = dCopy;
  dispatch_async(dispatchQueue, block);
}

void __76__RPFileTransferSession_sendEventID_event_destinationID_options_completion___block_invoke(void *a1)
{
  v2 = *(a1[4] + 64);
  v13 = v2;
  if (v2)
  {
    [v2 sendEncryptedEventID:a1[5] event:a1[6] options:a1[7] completion:a1[8]];
    goto LABEL_10;
  }

  v9 = RPErrorF(4294896153, "No control connection", v3, v4, v5, v6, v7, v8, v12);
  v10 = *(a1[4] + 152);
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v10 = *(a1[4] + 152);
    }

    LogPrintF(v10, "[RPFileTransferSession sendEventID:event:destinationID:options:completion:]_block_invoke", 30, "### Send event failed: %@, %{error}\n", a1[5], v9);
  }

LABEL_7:
  v11 = a1[8];
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }

LABEL_10:
}

- (void)_receivedEventID:(id)d event:(id)event options:(id)options
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  if ([dCopy isEqual:@"_ftPU"])
  {
    [(RPFileTransferSession *)self _receivedPeerUpdate:eventCopy];
  }

  else
  {
    v10 = [(NSMutableDictionary *)self->_registeredEvents objectForKeyedSubscript:dCopy];
    handler = [v10 handler];
    v12 = handler;
    if (handler)
    {
      (*(handler + 16))(handler, eventCopy, optionsCopy);
    }

    else
    {
      [RPFileTransferSession _receivedEventID:dCopy event:? options:?];
    }
  }
}

- (void)_receivedPeerUpdate:(id)update
{
  v4 = CFDictionaryGetInt64Ranged() & 0xC;
  v5 = v4 != 0;
  if (self->_peerInfraWiFiDisabled != v5)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        v7 = "yes";
        if (v4)
        {
          v8 = "no";
        }

        else
        {
          v8 = "yes";
        }

        if (!v4)
        {
          v7 = "no";
        }

        LogPrintF(ucat, "[RPFileTransferSession _receivedPeerUpdate:]", 30, "Peer infra WiFi disabled: %s -> %s\n", v8, v7);
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_peerInfraWiFiDisabled = v5;
    [(RPFileTransferSession *)self _updateWiFi];
  }
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:dCopy];

  ucat = self->_ucat;
  var0 = ucat->var0;
  if (!v10)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPFileTransferSession registerRequestID:options:handler:]", 30, "RegisterRequestID '%@'\n", dCopy);
    }

LABEL_11:
    v13 = objc_alloc_init(RPRequestRegistration);
    [(RPRequestRegistration *)v13 setRequestID:dCopy];
    [(RPRequestRegistration *)v13 setOptions:optionsCopy];
    [(RPRequestRegistration *)v13 setHandler:handlerCopy];
    registeredRequests = self->_registeredRequests;
    if (!registeredRequests)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16 = self->_registeredRequests;
      self->_registeredRequests = v15;

      registeredRequests = self->_registeredRequests;
    }

    [(NSMutableDictionary *)registeredRequests setObject:v13 forKeyedSubscript:dCopy];

    goto LABEL_14;
  }

  if (var0 > 90)
  {
    goto LABEL_14;
  }

  if (var0 != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_4:
    LogPrintF(ucat, "[RPFileTransferSession registerRequestID:options:handler:]", 90, "### RegisterRequestID duplicate '%@'\n", dCopy);
  }

LABEL_14:
}

- (void)deregisterRequestID:(id)d
{
  dCopy = d;
  ucat = self->_ucat;
  v7 = dCopy;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPFileTransferSession deregisterRequestID:]", 30, "DeregisterRequestID '%@'\n", dCopy);
      dCopy = v7;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    dCopy = v7;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(NSMutableDictionary *)self->_registeredRequests setObject:0 forKeyedSubscript:dCopy];
}

- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__RPFileTransferSession_sendRequestID_request_destinationID_options_responseHandler___block_invoke;
  block[3] = &unk_1E7C942D0;
  block[4] = self;
  v21 = dCopy;
  v23 = optionsCopy;
  v24 = handlerCopy;
  v22 = requestCopy;
  v16 = optionsCopy;
  v17 = requestCopy;
  v18 = handlerCopy;
  v19 = dCopy;
  dispatch_async(dispatchQueue, block);
}

void __85__RPFileTransferSession_sendRequestID_request_destinationID_options_responseHandler___block_invoke(void *a1)
{
  v2 = *(a1[4] + 64);
  v12 = v2;
  if (v2)
  {
    [v2 sendEncryptedRequestID:a1[5] request:a1[6] xpcID:0 options:a1[7] responseHandler:a1[8]];
    goto LABEL_8;
  }

  v9 = RPErrorF(4294896153, "No control connection", v3, v4, v5, v6, v7, v8, v11);
  v10 = *(a1[4] + 152);
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v10 = *(a1[4] + 152);
    }

    LogPrintF(v10, "[RPFileTransferSession sendRequestID:request:destinationID:options:responseHandler:]_block_invoke", 30, "### Send request failed: %@, %{error}\n", a1[5], v9);
  }

LABEL_7:
  (*(a1[8] + 16))();

LABEL_8:
}

- (void)_receivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  if ([dCopy isEqual:@"_ftSm"])
  {
    [(RPFileTransferSession *)self _smallFilesReceiveRequest:requestCopy responseHandler:handlerCopy];
    goto LABEL_15;
  }

  if ([dCopy isEqual:@"_ftLg"])
  {
    [(RPFileTransferSession *)self _largeFileReceiveRequest:requestCopy responseHandler:handlerCopy];
    goto LABEL_15;
  }

  if ([dCopy isEqual:@"_ftRs"])
  {
    [(RPFileTransferSession *)self _resumeStateReceiveRequest:requestCopy responseHandler:handlerCopy];
    goto LABEL_15;
  }

  v13 = [(NSMutableDictionary *)self->_registeredRequests objectForKeyedSubscript:dCopy];
  handler = [v13 handler];
  v21 = handler;
  if (!handler)
  {
    v22 = RPErrorF(4294960582, "No handler", v15, v16, v17, v18, v19, v20, v25);
    ucat = self->_ucat;
    if (ucat->var0 <= 60)
    {
      v24 = dCopy;
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        ucat = self->_ucat;
        v24 = dCopy;
      }

      LogPrintF(ucat, "[RPFileTransferSession _receivedRequestID:request:options:responseHandler:]", 60, "### Received request failed: %@, %{error}\n", v24, v22);
    }

LABEL_13:
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v22);

    goto LABEL_14;
  }

  (*(handler + 16))(handler, requestCopy, optionsCopy, handlerCopy);
LABEL_14:

LABEL_15:
}

- (BOOL)_activateSourceAndReturnError:(id *)error
{
  [(RPFileTransferSession *)self _updateWiFi];
  v4 = objc_alloc_init(MEMORY[0x1E6999478]);
  bonjourCoalescer = self->_bonjourCoalescer;
  self->_bonjourCoalescer = v4;
  v6 = v4;

  [(CUCoalescer *)v6 setDispatchQueue:self->_dispatchQueue];
  [(CUCoalescer *)v6 setMinDelay:1.0];
  [(CUCoalescer *)v6 setMaxDelay:2.0];
  [(CUCoalescer *)v6 setLeeway:1.0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__RPFileTransferSession__activateSourceAndReturnError___block_invoke;
  v17[3] = &unk_1E7C92D80;
  v17[4] = v6;
  v17[5] = self;
  [(CUCoalescer *)v6 setActionHandler:v17];
  flags = self->_flags;
  if ((flags & 0x10) != 0)
  {
    v8 = 0x10000000000000;
  }

  else
  {
    v8 = 0x400000000000000;
  }

  v9 = v8 & 0xFF9FFFFFFFFFFFFFLL | ((((flags & 0x60) >> 5) & 3) << 53);
  v10 = objc_alloc_init(MEMORY[0x1E6999470]);
  bonjourBrowser = self->_bonjourBrowser;
  self->_bonjourBrowser = v10;
  v12 = v10;

  [(CUBonjourBrowser *)v12 setBrowseFlags:v9];
  [(CUBonjourBrowser *)v12 setChangeFlags:1];
  [(CUBonjourBrowser *)v12 setDispatchQueue:self->_dispatchQueue];
  [(CUBonjourBrowser *)v12 setDomain:@"local."];
  [(CUBonjourBrowser *)v12 setLabel:@"RPFile"];
  [(CUBonjourBrowser *)v12 setServiceType:@"_rpft._tcp"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__RPFileTransferSession__activateSourceAndReturnError___block_invoke_2;
  v16[3] = &unk_1E7C942F8;
  v16[4] = v12;
  v16[5] = self;
  [(CUBonjourBrowser *)v12 setDeviceFoundHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__RPFileTransferSession__activateSourceAndReturnError___block_invoke_3;
  v15[3] = &unk_1E7C942F8;
  v15[4] = v12;
  v15[5] = self;
  [(CUBonjourBrowser *)v12 setDeviceLostHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__RPFileTransferSession__activateSourceAndReturnError___block_invoke_4;
  v14[3] = &unk_1E7C94320;
  v14[4] = v12;
  v14[5] = self;
  [(CUBonjourBrowser *)v12 setDeviceChangedHandler:v14];
  [(CUBonjourBrowser *)v12 activate];

  return 1;
}

void *__55__RPFileTransferSession__activateSourceAndReturnError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[4])
  {
    return [result _handleDevicesCoalesced];
  }

  return result;
}

void *__55__RPFileTransferSession__activateSourceAndReturnError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _handleDeviceFound:a2];
  }

  return result;
}

void *__55__RPFileTransferSession__activateSourceAndReturnError___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _handleDeviceLost:a2];
  }

  return result;
}

void *__55__RPFileTransferSession__activateSourceAndReturnError___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _handleDeviceFound:a2];
  }

  return result;
}

- (void)_handleDeviceFound:(id)found
{
  foundCopy = found;
  ucat = self->_ucat;
  v14 = foundCopy;
  if (ucat->var0 <= 20)
  {
    if (ucat->var0 == -1)
    {
      v8 = _LogCategory_Initialize();
      foundCopy = v14;
      if (!v8)
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    v7 = CUDescriptionWithLevel();
    LogPrintF(ucat, "[RPFileTransferSession _handleDeviceFound:]", 20, "Found raw: %@\n", v7);

    foundCopy = v14;
  }

LABEL_5:
  identifierStr = [foundCopy identifierStr];
  uTF8String = [identifierStr UTF8String];

  if (uTF8String)
  {
    if ([(NSString *)self->_targetID UTF8String])
    {
      v11 = TextToHardwareAddressScalar();
      if (v11 == TextToHardwareAddressScalar())
      {
        v12 = self->_ucat;
        if (v12->var0 <= 30)
        {
          if (v12->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_12;
            }

            v12 = self->_ucat;
          }

          v13 = CUDescriptionWithLevel();
          LogPrintF(v12, "[RPFileTransferSession _handleDeviceFound:]", 30, "Found target: %@\n", v13);
        }

LABEL_12:
        objc_storeStrong(&self->_bonjourDevice, found);
        [(CUCoalescer *)self->_bonjourCoalescer trigger];
      }
    }
  }
}

- (void)_handleDeviceLost:(id)lost
{
  lostCopy = lost;
  ucat = self->_ucat;
  v14 = lostCopy;
  if (ucat->var0 <= 20)
  {
    if (ucat->var0 == -1)
    {
      v7 = _LogCategory_Initialize();
      lostCopy = v14;
      if (!v7)
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    v6 = CUDescriptionWithLevel();
    LogPrintF(ucat, "[RPFileTransferSession _handleDeviceLost:]", 20, "Lost raw: %@\n", v6);

    lostCopy = v14;
  }

LABEL_5:
  identifierStr = [lostCopy identifierStr];
  uTF8String = [identifierStr UTF8String];

  if (uTF8String)
  {
    if ([(NSString *)self->_targetID UTF8String])
    {
      v10 = TextToHardwareAddressScalar();
      if (v10 == TextToHardwareAddressScalar())
      {
        v11 = self->_ucat;
        if (v11->var0 <= 30)
        {
          if (v11->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_12;
            }

            v11 = self->_ucat;
          }

          v12 = CUDescriptionWithLevel();
          LogPrintF(v11, "[RPFileTransferSession _handleDeviceLost:]", 30, "Lost target: %@\n", v12);
        }

LABEL_12:
        bonjourDevice = self->_bonjourDevice;
        self->_bonjourDevice = 0;

        [(RPConnection *)self->_controlCnx setPresent:0];
      }
    }
  }
}

- (void)_handleDevicesCoalesced
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      v4 = CUDescriptionWithLevel();
      LogPrintF(ucat, "[RPFileTransferSession _handleDevicesCoalesced]", 30, "Found target coalesced: %@\n", v4);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:

  [(RPFileTransferSession *)self _controlCnxStartIfNeeded];
}

- (void)_controlCnxRetryIfNeeded
{
  if (!self->_invalidateCalled && !self->_controlCnx && self->_bonjourDevice && !self->_controlRetryTimer)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPFileTransferSession _controlCnxRetryIfNeeded]", 30, "Control cnx retry timer start\n");
    }

LABEL_10:
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    controlRetryTimer = self->_controlRetryTimer;
    self->_controlRetryTimer = v4;
    v6 = v4;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__RPFileTransferSession__controlCnxRetryIfNeeded__block_invoke;
    v7[3] = &unk_1E7C92D80;
    v7[4] = v6;
    v7[5] = self;
    dispatch_source_set_event_handler(v6, v7);
    CUDispatchTimerSet();
    dispatch_resume(v6);
  }
}

void __49__RPFileTransferSession__controlCnxRetryIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 72);
  if (v2 != v3)
  {
    return;
  }

  if (v2)
  {
    v5 = v3;
    dispatch_source_cancel(v5);
    v6 = *(a1 + 40);
    v7 = *(v6 + 72);
    *(v6 + 72) = 0;
  }

  v8 = *(*(a1 + 40) + 40);
  v9 = v8;
  v10 = *(*(a1 + 40) + 152);
  v13 = v8;
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
      if (v8)
      {
LABEL_7:
        v11 = CUDescriptionWithLevel();
        LogPrintF(v10, "[RPFileTransferSession _controlCnxRetryIfNeeded]_block_invoke", 30, "Control cnx retry timer fired: %@\n", v11);

LABEL_10:
        [*(a1 + 40) _controlCnxStartIfNeeded];
LABEL_11:
        v9 = v13;
        goto LABEL_12;
      }

LABEL_16:
      LogPrintF(v10, "[RPFileTransferSession _controlCnxRetryIfNeeded]_block_invoke", 30, "Control cnx retry timer fired: %@\n", @"<no bonjour device>");
      goto LABEL_11;
    }

    v12 = _LogCategory_Initialize();
    v9 = v13;
    if (v12)
    {
      v10 = *(*(a1 + 40) + 152);
      if (v13)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  if (v9)
  {
    goto LABEL_10;
  }

LABEL_12:
}

void *__49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke(void *result)
{
  v2 = result[5];
  v3 = *(v2 + 64);
  if (result[4] == v3)
  {
    v4 = result;
    *(v2 + 64) = 0;

    [v4[5] _reportProgressControlState];
    v5 = v4[5];

    return [v5 _controlCnxRetryIfNeeded];
  }

  return result;
}

void *__49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[8])
  {
    return [result _receivedEventID:a2 event:a3 options:a4];
  }

  return result;
}

void *__49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[8])
  {
    return [result _receivedRequestID:a2 request:a3 options:a4 responseHandler:a5];
  }

  return result;
}

void *__49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke_4(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[8])
  {
    result = [result _reportProgressControlState];
    if (a2 == 1)
    {
      v6 = *(a1 + 40);

      return [v6 _scheduleItems];
    }
  }

  return result;
}

- (BOOL)_activateTargetAndReturnError:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  [(RPFileTransferSession *)self _updateWiFi];
  if (([(RPFileTransferSession *)self flags]& 0x200) != 0)
  {
    v11 = [[RPFileTransferResumeState alloc] initWithDispatchQueue:self->_dispatchQueue];
    if (v11)
    {
      if (self->_receiveFileParentPath)
      {
        targetID = [(RPFileTransferSession *)self targetID];

        if (targetID)
        {
          v13 = MEMORY[0x1E696AEC0];
          targetID2 = [(RPFileTransferSession *)self targetID];
          v15 = [v13 stringWithFormat:@"%@-state.rptfd", targetID2];

          stringByStandardizingPath = [(NSString *)self->_receiveFileParentPath stringByStandardizingPath];
          [(RPFileTransferResumeState *)v11 setOutputPath:stringByStandardizingPath];

          v17 = [(NSString *)self->_receiveFileParentPath stringByAppendingPathComponent:v15];
          stringByStandardizingPath2 = [v17 stringByStandardizingPath];
          [(RPFileTransferResumeState *)v11 setStateFilePath:stringByStandardizingPath2];

          [(RPFileTransferResumeState *)v11 setUcat:self->_ucat];
          [(RPFileTransferResumeState *)v11 setFlushInterval:self->_resumeStateFlushInterval];
          [(RPFileTransferResumeState *)v11 loadStateFile];
          if (![(RPFileTransferResumeState *)v11 isEmpty])
          {
            v19 = *MEMORY[0x1E69E9858];
            targetID3 = [(RPFileTransferSession *)self targetID];
            FPrintF(v19, "Resuming file transfer: targetID = %@\n", targetID3);
          }

          resumeState = self->_resumeState;
          self->_resumeState = v11;

          goto LABEL_8;
        }

        if (error)
        {
          v35 = "No targetID";
          goto LABEL_21;
        }
      }

      else if (error)
      {
        v35 = "No receiveFileParentPath";
LABEL_21:
        v36 = 4294960587;
        goto LABEL_22;
      }
    }

    else if (error)
    {
      v35 = "RPFileTransferResumeState init failed";
      v36 = 4294960596;
LABEL_22:
      *error = RPErrorF(v36, v35, v5, v6, v7, v8, v9, v10, v37);
    }

    return 0;
  }

LABEL_8:
  v22 = objc_alloc_init(MEMORY[0x1E6999550]);
  objc_storeStrong(&self->_tcpServer, v22);
  [v22 setDispatchQueue:self->_dispatchQueue];
  [v22 setFlags:9];
  [v22 setLabel:@"RPFile"];
  [(CUTCPServer *)self->_tcpServer setConnectionPrepareHandler:&__block_literal_global_8];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __55__RPFileTransferSession__activateTargetAndReturnError___block_invoke_2;
  v39[3] = &unk_1E7C943E0;
  v39[4] = v22;
  v39[5] = self;
  [(CUTCPServer *)self->_tcpServer setConnectionStartedHandler:v39];
  tcpServer = self->_tcpServer;
  v38 = 0;
  [(CUTCPServer *)tcpServer activateDirectAndReturnError:&v38];
  v30 = v38;
  v31 = v30 == 0;
  if (v30)
  {
    [(RPFileTransferSession *)error _activateTargetAndReturnError:v30, v24, v25, v26, v27, v28, v29];
  }

  else
  {
    v32 = objc_alloc_init(MEMORY[0x1E6999468]);
    objc_storeStrong(&self->_bonjourAdvertiser, v32);
    if ((self->_flags & 0x10) == 0)
    {
      [v32 setAdvertiseFlags:0x100000];
    }

    [v32 setDispatchQueue:self->_dispatchQueue];
    [v32 setDomain:@"local."];
    [v32 setLabel:@"RPFile"];
    [v32 setName:self->_targetID];
    [v32 setPort:{-[CUTCPServer tcpListeningPort](self->_tcpServer, "tcpListeningPort")}];
    [v32 setServiceType:@"_rpft._tcp"];
    v40 = @"rpBA";
    v41[0] = self->_targetID;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [v32 setTxtDictionary:v33];

    [v32 activate];
  }

  return v31;
}

void *__55__RPFileTransferSession__activateTargetAndReturnError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[18])
  {
    return [result _handleIncomingConnectionStarted:a2];
  }

  return result;
}

- (void)_handleIncomingConnectionStarted:(id)started
{
  startedCopy = started;
  v5 = objc_alloc_init(RPConnection);
  v6 = v5;
  if (self->_prefCompress)
  {
    [(RPConnection *)v5 setAppInfoSelf:&unk_1F2EEC990];
  }

  [(RPConnection *)v6 setControlFlags:[(RPConnection *)v6 controlFlags]| 0x60000000];
  [(RPConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  [(RPConnection *)v6 setForcedPeerIdentity:self->_peerIdentity];
  [(RPConnection *)v6 setForcedSelfIdentity:self->_selfIdentity];
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  targetID = self->_targetID;
  v9 = self->_cnxIDLast + 1;
  self->_cnxIDLast = v9;
  v10 = [v7 initWithFormat:@"RPFileCnx-%@-In-%u", targetID, v9];
  [(RPConnection *)v6 setLabel:v10];

  [(RPConnection *)v6 setTcpConnection:startedCopy];
  label = [(RPConnection *)v6 label];
  [startedCopy setLabel:label];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__RPFileTransferSession__handleIncomingConnectionStarted___block_invoke;
  v19[3] = &unk_1E7C92D80;
  v19[4] = self;
  v19[5] = v6;
  [(RPConnection *)v6 setInvalidationHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__RPFileTransferSession__handleIncomingConnectionStarted___block_invoke_2;
  v18[3] = &unk_1E7C94408;
  v18[4] = self;
  [(RPConnection *)v6 setReceivedEventHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__RPFileTransferSession__handleIncomingConnectionStarted___block_invoke_3;
  v17[3] = &unk_1E7C94430;
  v17[4] = self;
  [(RPConnection *)v6 setReceivedRequestHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__RPFileTransferSession__handleIncomingConnectionStarted___block_invoke_4;
  v16[3] = &unk_1E7C942A8;
  v16[4] = self;
  [(RPConnection *)v6 setStateChangedHandler:v16];
  if (!self->_controlCnx)
  {
    objc_storeStrong(&self->_controlCnx, v6);
    [(RPFileTransferSession *)self _reportProgressControlState];
  }

  connections = self->_connections;
  if (!connections)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = self->_connections;
    self->_connections = v13;

    connections = self->_connections;
  }

  [(NSMutableSet *)connections addObject:v6];
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPFileTransferSession _handleIncomingConnectionStarted:]", 30, "Incoming cnx start: %@\n", v6);
  }

LABEL_11:
  [(RPConnection *)v6 activate];
}

void *__58__RPFileTransferSession__handleIncomingConnectionStarted___block_invoke_4(uint64_t a1, int a2)
{
  result = [*(a1 + 32) _reportProgressControlState];
  if (a2 == 1)
  {
    v5 = *(a1 + 32);

    return [v5 _scheduleItems];
  }

  return result;
}

- (void)_handleIncomingConnectionEnded:(id)ended
{
  endedCopy = ended;
  ucat = self->_ucat;
  v10 = endedCopy;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[RPFileTransferSession _handleIncomingConnectionEnded:]", 30, "Incoming cnx ended: %@\n", endedCopy);
      endedCopy = v10;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    endedCopy = v10;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(NSMutableSet *)self->_connections removeObject:endedCopy];
  controlCnx = self->_controlCnx;
  if (controlCnx == v10)
  {
    self->_controlCnx = 0;
  }

  [(RPFileTransferSession *)self _reportProgressControlState];
  if (!self->_controlCnx && !self->_invalidateCalled)
  {
    anyObject = [(NSMutableSet *)self->_connections anyObject];
    if (!anyObject)
    {
LABEL_15:

      goto LABEL_16;
    }

    v9 = self->_ucat;
    if (v9->var0 <= 30)
    {
      if (v9->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        v9 = self->_ucat;
      }

      LogPrintF(v9, "[RPFileTransferSession _handleIncomingConnectionEnded:]", 30, "Incoming cnx resume: %@\n", anyObject);
    }

LABEL_14:
    objc_storeStrong(&self->_controlCnx, anyObject);
    [(RPFileTransferSession *)self _reportProgressControlState];
    goto LABEL_15;
  }

LABEL_16:
}

- (void)addItem:(id)item
{
  itemCopy = item;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__3;
  v13[4] = __Block_byref_object_dispose__3;
  v14 = 0;
  obj = 0;
  v5 = [(RPFileTransferSession *)self _prepareItem:itemCopy error:&obj];
  objc_storeStrong(&v14, obj);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__RPFileTransferSession_addItem___block_invoke;
  block[3] = &unk_1E7C94458;
  v11 = v5;
  v9 = itemCopy;
  v10 = v13;
  block[4] = self;
  v7 = itemCopy;
  dispatch_async(dispatchQueue, block);

  _Block_object_dispose(v13, 8);
}

void __33__RPFileTransferSession_addItem___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 56) != 1 || (v9 = *(a1 + 32), *(v9 + 89) == 1))
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = RPErrorF(4294896148, "Add item after invalidate", a3, a4, a5, a6, a7, a8, v27);
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v13 = *(*(a1 + 32) + 152);
    if (*v13 > 90)
    {
      goto LABEL_12;
    }

    if (*v13 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v13 = *(*(a1 + 32) + 152);
    }

    v14 = [*(a1 + 40) itemURL];
    LogPrintF(v13, "[RPFileTransferSession addItem:]_block_invoke", 90, "### AddItem failed: URL %{mask}, %{error}\n", v14, *(*(*(a1 + 48) + 8) + 40));

LABEL_12:
    v20 = [*(a1 + 40) completionHandler];
    if (v20)
    {
      v28 = v20;
      v20[2](v20, *(*(*(a1 + 48) + 8) + 40));
      [*(a1 + 40) setCompletionHandler:0];
      v20 = v28;
    }

    return;
  }

  v15 = *(v9 + 152);
  if (*v15 <= 9)
  {
    if (*v15 == -1)
    {
      v21 = _LogCategory_Initialize();
      v9 = *(a1 + 32);
      if (!v21)
      {
        goto LABEL_18;
      }

      v15 = *(v9 + 152);
    }

    v16 = [*(a1 + 40) fileID];
    v17 = [*(a1 + 40) fileSize];
    v18 = [*(a1 + 40) metadataSize];
    v19 = [*(a1 + 40) itemURL];
    LogPrintF(v15, "[RPFileTransferSession addItem:]_block_invoke", 9, "AddItem: FID %lld, FSize %llu, MDSize %zu, URL %{mask}\n", v16, v17, v18, v19);

    v9 = *(a1 + 32);
  }

LABEL_18:
  v22 = *(v9 + 168);
  if (!v22)
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v24 = *(a1 + 32);
    v25 = *(v24 + 168);
    *(v24 + 168) = v23;

    v22 = *(*(a1 + 32) + 168);
  }

  [v22 addObject:*(a1 + 40)];
  [*(a1 + 32) _metricAddFileSize:{objc_msgSend(*(a1 + 40), "fileSize")}];
  v26 = *(a1 + 32);

  [v26 _scheduleItems];
}

- (void)addItems:(id)items
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [items copy];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v16 = 0;
        v10 = [(RPFileTransferSession *)self _prepareItem:v9 error:&v16];
        v11 = v16;
        if (!v10)
        {
          [v9 setError:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__RPFileTransferSession_addItems___block_invoke;
  block[3] = &unk_1E7C92D80;
  block[4] = self;
  v15 = v4;
  v13 = v4;
  dispatch_async(dispatchQueue, block);
}

void __34__RPFileTransferSession_addItems___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  if (*(v9 + 89) == 1)
  {
    v10 = RPErrorF(4294896148, "Add item after invalidate", a3, a4, a5, a6, a7, a8, v43);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v11 = *(a1 + 40);
    v12 = [v11 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (!v12)
    {
      goto LABEL_17;
    }

    v13 = v12;
    v14 = *v54;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v53 + 1) + 8 * v15);
        v17 = *(*(a1 + 32) + 152);
        if (*v17 <= 90)
        {
          if (*v17 != -1)
          {
            goto LABEL_9;
          }

          if (_LogCategory_Initialize())
          {
            v17 = *(*(a1 + 32) + 152);
LABEL_9:
            v18 = [v16 itemURL];
            LogPrintF(v17, "[RPFileTransferSession addItems:]_block_invoke", 90, "### AddItem failed: URL %{mask}, %{error}\n", v18, v10);
          }
        }

        v19 = [v16 completionHandler];
        if (v19)
        {
          [v16 setCompletionHandler:0];
          (v19)[2](v19, v10);
        }

        ++v15;
      }

      while (v13 != v15);
      v20 = [v11 countByEnumeratingWithState:&v53 objects:v58 count:16];
      v13 = v20;
      if (!v20)
      {
LABEL_17:

        return;
      }
    }
  }

  if (!*(v9 + 168))
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v22 = *(a1 + 32);
    v23 = *(v22 + 168);
    *(v22 + 168) = v21;
  }

  v46 = [*(a1 + 40) count];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v24 = *(a1 + 40);
  v25 = [v24 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (!v25)
  {
    goto LABEL_44;
  }

  v26 = v25;
  v27 = 0;
  v28 = *v50;
  v45 = v24;
  v48 = *v50;
  do
  {
    v29 = 0;
    do
    {
      if (*v50 != v28)
      {
        objc_enumerationMutation(v24);
      }

      v30 = *(*(&v49 + 1) + 8 * v29);
      v31 = [v30 error];
      if (!v31)
      {
        ++v27;
        v34 = *(a1 + 32);
        v35 = *(v34 + 152);
        if (*v35 <= 9)
        {
          if (*v35 != -1)
          {
            v47 = v27;
            goto LABEL_32;
          }

          v41 = _LogCategory_Initialize();
          v34 = *(a1 + 32);
          if (v41)
          {
            v47 = v27;
            v35 = *(v34 + 152);
LABEL_32:
            v36 = [v30 fileID];
            v37 = [v30 fileSize];
            v38 = [v30 metadataSize];
            v39 = [v30 itemURL];
            v44 = v37;
            v27 = v47;
            LogPrintF(v35, "[RPFileTransferSession addItems:]_block_invoke", 9, "AddItem: FID %lld, %zu of %zu, FSize %llu, MDSize %zu, URL %{mask}\n", v36, v47, v46, v44, v38, v39);

            v34 = *(a1 + 32);
            v24 = v45;
            v28 = v48;
          }
        }

        [*(v34 + 168) addObject:v30];
        [*(a1 + 32) _metricAddFileSize:{objc_msgSend(v30, "fileSize")}];
        goto LABEL_39;
      }

      v32 = *(*(a1 + 32) + 152);
      if (*v32 <= 90)
      {
        if (*v32 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_34;
          }

          v32 = *(*(a1 + 32) + 152);
        }

        v33 = [v30 itemURL];
        LogPrintF(v32, "[RPFileTransferSession addItems:]_block_invoke", 90, "### AddItem failed: URL %{mask}, %{error}\n", v33, v31);

        v28 = v48;
      }

LABEL_34:
      v40 = [v30 completionHandler];
      if (v40)
      {
        [v30 setCompletionHandler:0];
        (v40)[2](v40, v31);
      }

LABEL_39:
      ++v29;
    }

    while (v26 != v29);
    v42 = [v24 countByEnumeratingWithState:&v49 objects:v57 count:16];
    v26 = v42;
  }

  while (v42);
LABEL_44:

  [*(a1 + 32) _scheduleItems];
}

- (BOOL)_prepareItem:(id)item error:(id *)error
{
  itemCopy = item;
  [itemCopy setCompleted:0];
  [itemCopy setError:0];
  [itemCopy setFileID:{atomic_fetch_add(&self->_fileIDLastSend, 1uLL) + 1}];
  itemURL = [itemCopy itemURL];
  fileSystemRepresentation = [itemURL fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    if (error)
    {
      v30 = "No item path";
      v16 = 4294960592;
      goto LABEL_22;
    }

LABEL_28:
    v29 = 0;
    goto LABEL_25;
  }

  v15 = fileSystemRepresentation;
  memset(&v34, 0, sizeof(v34));
  if (!stat(fileSystemRepresentation, &v34))
  {
    v33 = 0;
    goto LABEL_7;
  }

  if (!*__error())
  {
    v16 = 4294960596;
    goto LABEL_20;
  }

  v16 = *__error();
  v33 = v16;
  if (!v16)
  {
LABEL_7:
    st_size = v34.st_size;
    [itemCopy setFileSize:v34.st_size];
    metadata = [itemCopy metadata];
    if (metadata)
    {
      v25 = OPACKEstimateEncodedSize();
      v26 = v33;
      if (v33)
      {
        if (error)
        {
          v27 = "Estimate metadata size failed";
LABEL_16:
          RPErrorF(v26, v27, v19, v20, v21, v22, v23, v24, v32);
          *error = v29 = 0;
LABEL_24:

          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v25 = 0;
    }

    [itemCopy setMetadataSize:v25];
    v28 = st_size + v25;
    if (!__CFADD__(st_size, v25))
    {
      v19 = v28 + 200;
      if (((v28 >= 0xFFFFFFFFFFFFFF38) << 63) >> 63 == v28 >= 0xFFFFFFFFFFFFFF38)
      {
        [itemCopy setEstimatedSize:v19];
        v29 = 1;
        goto LABEL_24;
      }
    }

    if (error)
    {
      v27 = "Estimated size overflow";
      v26 = 4294960553;
      goto LABEL_16;
    }

LABEL_23:
    v29 = 0;
    goto LABEL_24;
  }

LABEL_20:
  if (!error)
  {
    goto LABEL_28;
  }

  v32 = v15;
  v30 = "stat failed: '%s'";
LABEL_22:
  RPErrorF(v16, v30, v9, v10, v11, v12, v13, v14, v32);
  *error = v29 = 0;
LABEL_25:

  return v29;
}

- (void)_scheduleItems
{
  v44 = *MEMORY[0x1E69E9840];
  if (self->_invalidateCalled || [(RPConnection *)self->_controlCnx state]!= 1)
  {
    return;
  }

  if (![(RPFileTransferSession *)self isResumable]|| ([(RPFileTransferSession *)self flags]& 1) != 0)
  {
    goto LABEL_7;
  }

  resumeState = [(RPFileTransferSession *)self resumeState];
  if (resumeState)
  {
    v4 = resumeState;
    isPlaceholder = [resumeState isPlaceholder];

    if (isPlaceholder)
    {
      return;
    }

LABEL_7:
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = self->_smallFilesSendTasks;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (!v7)
    {
      goto LABEL_22;
    }

    v8 = v7;
    v9 = *v39;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        if ([v11 needsRetry])
        {
          [v11 setNeedsRetry:0];
          ++self->_metricRetries;
          ucat = self->_ucat;
          if (ucat->var0 <= 30)
          {
            if (ucat->var0 != -1)
            {
              goto LABEL_15;
            }

            if (_LogCategory_Initialize())
            {
              ucat = self->_ucat;
LABEL_15:
              LogPrintF(ucat, "-[RPFileTransferSession _scheduleItems]", 30, "SmallFiles send task retry: TID %llu\n", [v11 taskID]);
            }
          }

          queue = [v11 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __39__RPFileTransferSession__scheduleItems__block_invoke;
          block[3] = &unk_1E7C92D80;
          block[4] = self;
          block[5] = v11;
          dispatch_async(queue, block);
        }

        ++v10;
      }

      while (v8 != v10);
      v14 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
      v8 = v14;
      if (!v14)
      {
LABEL_22:

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = self->_largeFileSendTasks;
        v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (!v16)
        {
          goto LABEL_37;
        }

        v17 = v16;
        v18 = *v34;
        while (1)
        {
          v19 = 0;
          do
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v33 + 1) + 8 * v19);
            if ([v20 needsRetry])
            {
              [v20 setNeedsRetry:0];
              ++self->_metricRetries;
              v21 = self->_ucat;
              if (v21->var0 <= 30)
              {
                if (v21->var0 != -1)
                {
                  goto LABEL_30;
                }

                if (_LogCategory_Initialize())
                {
                  v21 = self->_ucat;
LABEL_30:
                  LogPrintF(v21, "-[RPFileTransferSession _scheduleItems]", 30, "LargeFile send task retry: TID %llu\n", [v20 taskID]);
                }
              }

              queue2 = [v20 queue];
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __39__RPFileTransferSession__scheduleItems__block_invoke_2;
              v32[3] = &unk_1E7C92D80;
              v32[4] = self;
              v32[5] = v20;
              dispatch_async(queue2, v32);
            }

            ++v19;
          }

          while (v17 != v19);
          v23 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
          v17 = v23;
          if (!v23)
          {
LABEL_37:

            while ([(NSMutableSet *)self->_smallFilesSendTasks count]< self->_maxSmallFileTasks)
            {
              _smallFilesSendTaskCreate = [(RPFileTransferSession *)self _smallFilesSendTaskCreate];
              if (!_smallFilesSendTaskCreate)
              {
                break;
              }

              v25 = _smallFilesSendTaskCreate;
              [(NSMutableSet *)self->_smallFilesSendTasks addObject:_smallFilesSendTaskCreate];
              queue3 = [v25 queue];
              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 3221225472;
              v31[2] = __39__RPFileTransferSession__scheduleItems__block_invoke_3;
              v31[3] = &unk_1E7C92D80;
              v31[4] = self;
              v31[5] = v25;
              dispatch_async(queue3, v31);
            }

            while ([(NSMutableSet *)self->_largeFileSendTasks count]< self->_maxLargeFileTasks)
            {
              _largeFileSendTaskCreate = [(RPFileTransferSession *)self _largeFileSendTaskCreate];
              if (!_largeFileSendTaskCreate)
              {
                break;
              }

              v28 = _largeFileSendTaskCreate;
              [(NSMutableSet *)self->_largeFileSendTasks addObject:_largeFileSendTaskCreate];
              queue4 = [v28 queue];
              v30[0] = MEMORY[0x1E69E9820];
              v30[1] = 3221225472;
              v30[2] = __39__RPFileTransferSession__scheduleItems__block_invoke_4;
              v30[3] = &unk_1E7C92D80;
              v30[4] = self;
              v30[5] = v28;
              dispatch_async(queue4, v30);
            }

            return;
          }
        }
      }
    }
  }

  [(RPFileTransferSession *)self _requestResumeStateFromReceiver];
}

- (void)_requestResumeStateFromReceiver
{
  v3 = objc_alloc_init(RPFileTransferResumeState);
  [(RPFileTransferResumeState *)v3 setIsPlaceholder:1];
  [(RPFileTransferResumeState *)v3 setUcat:self->_ucat];
  resumeState = self->_resumeState;
  self->_resumeState = v3;
  v5 = v3;

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  targetID = [(RPFileTransferSession *)self targetID];
  [v6 setValue:targetID forKey:@"_i"];

  controlCnx = self->_controlCnx;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__RPFileTransferSession__requestResumeStateFromReceiver__block_invoke;
  v9[3] = &unk_1E7C93B48;
  v9[4] = self;
  [(RPConnection *)controlCnx sendEncryptedRequestID:@"_ftRs" request:v6 xpcID:0 options:0 responseHandler:v9];
}

void __56__RPFileTransferSession__requestResumeStateFromReceiver__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v9)
  {
    if (!v7)
    {
      goto LABEL_26;
    }

    v14 = [v7 objectForKeyedSubscript:@"resumeState"];
    if (!v14)
    {
LABEL_25:

      goto LABEL_26;
    }

    v20 = 0;
    v15 = [[RPFileTransferResumeState alloc] initWithDictionaryRepresentation:v14 error:&v20];
    v16 = v20;
    if (v15)
    {
      if (![(RPFileTransferResumeState *)v15 isEmpty])
      {
        v17 = *MEMORY[0x1E69E9858];
        v18 = [*(a1 + 32) targetID];
        FPrintF(v17, "Resuming file transfer: targetID = %@\n", v18);
      }

      [(RPFileTransferResumeState *)v15 removeUnusableSourceFileItems];
      objc_storeStrong((*(a1 + 32) + 264), v15);
      goto LABEL_24;
    }

    v19 = *(*(a1 + 32) + 152);
    if (*v19 <= 30)
    {
      if (*v19 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_24;
        }

        v19 = *(*(a1 + 32) + 152);
      }

      LogPrintF(v19, "[RPFileTransferSession _requestResumeStateFromReceiver]_block_invoke", 30, "Request resume state: receiver's resume state not usable, error: %@\n", v16);
    }

LABEL_24:

    goto LABEL_25;
  }

  v11 = [v9 code];
  v12 = *(*(a1 + 32) + 152);
  v13 = *v12;
  if (v11 == -6714)
  {
    if (v13 <= 30)
    {
      if (v13 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_26;
        }

        v12 = *(*(a1 + 32) + 152);
      }

      LogPrintF(v12, "[RPFileTransferSession _requestResumeStateFromReceiver]_block_invoke", 30, "Receiver doesn't support resumable file transfer.\n");
    }
  }

  else if (v13 <= 30)
  {
    if (v13 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_26;
      }

      v12 = *(*(a1 + 32) + 152);
    }

    LogPrintF(v12, "[RPFileTransferSession _requestResumeStateFromReceiver]_block_invoke", 30, "Request resume state: receiver replied with error: %@\n", v10);
  }

LABEL_26:
  [*(*(a1 + 32) + 264) setIsPlaceholder:0];
  [*(a1 + 32) _scheduleItems];
}

- (void)_completeItem:(id)item error:(id)error
{
  [(RPFileTransferSession *)self _completeItemDirect:item error:error];

  [(RPFileTransferSession *)self _processFinish];
}

- (void)_completeItemDirect:(id)direct error:(id)error
{
  directCopy = direct;
  errorCopy = error;
  completionHandler = [directCopy completionHandler];
  if (completionHandler)
  {
    [directCopy setCompletionHandler:0];
    ucat = self->_ucat;
    var0 = ucat->var0;
    if (errorCopy)
    {
      if (var0 <= 90)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_13;
          }

          ucat = self->_ucat;
        }

        itemURL = [directCopy itemURL];
        LogPrintF(ucat, "[RPFileTransferSession _completeItemDirect:error:]", 90, "### Item failed: URL %{mask}, %{error}\n", itemURL, errorCopy);
        goto LABEL_9;
      }
    }

    else if (var0 <= 9)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        ucat = self->_ucat;
      }

      itemURL = [directCopy itemURL];
      LogPrintF(ucat, "[RPFileTransferSession _completeItemDirect:error:]", 9, "Item completed: URL %{mask}\n", itemURL);
LABEL_9:
    }

LABEL_13:
    (completionHandler)[2](completionHandler, errorCopy);
  }

  if (([directCopy completed] & 1) == 0)
  {
    [directCopy setCompleted:1];
    self->_metricLastFileCompletionTicks = mach_absolute_time();
    if (!errorCopy)
    {
      fileSize = [directCopy fileSize];
      metadataSize = [directCopy metadataSize];
      v13 = vdupq_n_s64(1uLL);
      v13.i64[0] = metadataSize + fileSize;
      *&self->_metricTotalBytes = vaddq_s64(v13, *&self->_metricTotalBytes);
    }
  }
}

- (void)_processReceivedItem:(id)item responseHandler:(id)handler
{
  v22[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  handlerCopy = handler;
  v8 = _Block_copy(self->_receivedItemHandler);
  if (v8)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke;
    v20[3] = &unk_1E7C93470;
    v20[4] = self;
    v21 = handlerCopy;
    v8[2](v8, itemCopy, v20);
  }

  else
  {
    v15 = _Block_copy(self->_receivedItemsHandler);
    if (v15)
    {
      v22[0] = itemCopy;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke_3;
      v18[3] = &unk_1E7C93470;
      v18[4] = self;
      v19 = handlerCopy;
      v15[2](v15, v16, v18);
    }

    else
    {
      v17 = RPErrorF(4294960551, "No receivedItemHandler", v9, v10, v11, v12, v13, v14, v18[0]);
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v17);
    }
  }
}

void __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 584);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke_2;
  v7[3] = &unk_1E7C93550;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = 0;
  }

  else
  {
    v1 = MEMORY[0x1E695E0F8];
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v1, 0);
}

void __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 584);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke_4;
  v7[3] = &unk_1E7C93550;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __62__RPFileTransferSession__processReceivedItem_responseHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = 0;
  }

  else
  {
    v1 = MEMORY[0x1E695E0F8];
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v1, 0);
}

- (void)_processReceivedItems:(id)items responseHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  handlerCopy = handler;
  v8 = _Block_copy(self->_receivedItemsHandler);
  if (v8)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke;
    v36[3] = &unk_1E7C93470;
    v36[4] = self;
    v37 = handlerCopy;
    v8[2](v8, itemsCopy, v36);
  }

  else
  {
    v15 = _Block_copy(self->_receivedItemHandler);
    if (v15)
    {
      v24 = handlerCopy;
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x3032000000;
      v34[3] = __Block_byref_object_copy__3;
      v34[4] = __Block_byref_object_dispose__3;
      v35 = 0;
      v16 = dispatch_group_create();
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = itemsCopy;
      v17 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v17)
      {
        v18 = *v31;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v30 + 1) + 8 * i);
            dispatch_group_enter(v16);
            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke_3;
            v29[3] = &unk_1E7C94480;
            v29[4] = v16;
            v29[5] = v34;
            v15[2](v15, v20, v29);
          }

          v17 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v17);
      }

      handlerCopy = v24;
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke_4;
      block[3] = &unk_1E7C944A8;
      v27 = v24;
      v28 = v34;
      dispatch_group_notify(v16, dispatchQueue, block);

      _Block_object_dispose(v34, 8);
    }

    else
    {
      v22 = RPErrorF(4294960551, "No receivedItemHandler", v9, v10, v11, v12, v13, v14, v23);
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v22);
    }
  }
}

void __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 584);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke_2;
  v7[3] = &unk_1E7C93550;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = 0;
  }

  else
  {
    v1 = MEMORY[0x1E695E0F8];
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v1, 0);
}

void __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __63__RPFileTransferSession__processReceivedItems_responseHandler___block_invoke_4(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v1 = 0;
  }

  else
  {
    v1 = MEMORY[0x1E695E0F8];
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v1, 0);
}

- (void)finish
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__RPFileTransferSession_finish__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __31__RPFileTransferSession_finish__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_5;
      }

      v3 = *(v2 + 152);
    }

    LogPrintF(v3, "[RPFileTransferSession finish]_block_invoke", 30, "Finish\n");
    v2 = *(a1 + 32);
  }

LABEL_5:
  *(v2 + 88) = 1;
  [*(a1 + 32) _processFinish];
  if ([*(a1 + 32) isResumable] && (objc_msgSend(*(a1 + 32), "flags") & 1) != 0)
  {
    v5 = [*(a1 + 32) resumeState];
    [v5 flushStateFile];
  }
}

- (void)_processFinish
{
  if (self->_finishPending && ![(NSMutableSet *)self->_addedItems count]&& ![(NSMutableDictionary *)self->_smallFilesReceiveTasks count]&& ![(NSMutableSet *)self->_smallFilesSendTasks count]&& ![(NSMutableDictionary *)self->_largeFileReceiveTasks count]&& ![(NSMutableSet *)self->_largeFileSendTasks count])
  {

    [(RPFileTransferSession *)self _reportCompletion:0];
  }
}

- (id)_smallFilesSendTaskCreate
{
  v21 = *MEMORY[0x1E69E9840];
  prefSmallFilesMaxBytes = self->_prefSmallFilesMaxBytes;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(NSMutableSet *)self->_addedItems copy];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v5)
  {
    v6 = v4;
    goto LABEL_19;
  }

  v6 = 0;
  v7 = *v17;
  v15 = prefSmallFilesMaxBytes;
  do
  {
    for (i = 0; i != v5; i = (i + 1))
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v16 + 1) + 8 * i);
      estimatedSize = [v9 estimatedSize];
      v11 = prefSmallFilesMaxBytes - estimatedSize;
      if (prefSmallFilesMaxBytes >= estimatedSize)
      {
        if (!v6)
        {
          v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v6 addObject:v9];
        [(NSMutableSet *)self->_addedItems removeObject:v9];
        prefSmallFilesMaxBytes = v11;
      }
    }

    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v5);

  if (v6)
  {
    if (prefSmallFilesMaxBytes > v15 >> 1)
    {
      ++self->_metricPrematureSmallSets;
    }

    v5 = objc_alloc_init(RPFileTransferSmallFilesTask);
    [(RPFileTransferSmallFilesTask *)v5 setFileItems:v6];
    _ioQueueDequeue = [(RPFileTransferSession *)self _ioQueueDequeue];
    [(RPFileTransferSmallFilesTask *)v5 setQueue:_ioQueueDequeue];

    ++self->_taskIDLast;
    [(RPFileTransferSmallFilesTask *)v5 setTaskID:?];
    ucat = self->_ucat;
    if (ucat->var0 > 10)
    {
      goto LABEL_19;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "-[RPFileTransferSession _smallFilesSendTaskCreate]", 10, "SmallFiles send task start: TID %llu, %d files, %d bytes\n", -[RPFileTransferSmallFilesTask taskID](v5, "taskID"), [v6 count], v15 - prefSmallFilesMaxBytes);
LABEL_19:

    goto LABEL_21;
  }

  v5 = 0;
LABEL_21:

  return v5;
}

- (void)_smallFilesSendTaskRun:(id)run
{
  v56 = *MEMORY[0x1E69E9840];
  runCopy = run;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  fileItems = [runCopy fileItems];
  v5 = [fileItems countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v48;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(fileItems);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        if ([(RPFileTransferSession *)self isResumable])
        {
          resumeState = [(RPFileTransferSession *)self resumeState];
          filename = [v9 filename];
          v12 = [resumeState finishedFileWithFileName:filename];

          if (v12)
          {
            v13 = *MEMORY[0x1E69E9858];
            fileName = [v12 fileName];
            FPrintF(v13, "Resumable file transfer: skipping over finished file: %@\n", fileName);

            goto LABEL_13;
          }
        }

        v46 = 0;
        v12 = [(RPFileTransferSession *)self _smallFilesSendTaskReadItem:v9 error:&v46];
        v15 = v46;
        resumeState = v15;
        if (v12)
        {
          [v34 addObject:v12];
        }

        else
        {
          dispatchQueue = self->_dispatchQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke;
          block[3] = &unk_1E7C93BC0;
          block[4] = self;
          block[5] = v9;
          v45 = v15;
          dispatch_async(dispatchQueue, block);
        }

LABEL_13:
      }

      v6 = [fileItems countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v6);
  }

  v17 = v34;
  v18 = [v34 count];
  v19 = self->_dispatchQueue;
  if (v18)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_3;
    v41[3] = &unk_1E7C92D80;
    v41[4] = v34;
    v41[5] = self;
    dispatch_async(v19, v41);
    v20 = runCopy;
    if (!self->_compressionEnabled)
    {
      goto LABEL_27;
    }

    v39 = 0;
    v40 = 0;
    v21 = [(RPFileTransferSession *)self _encodeAndCompressObject:v34 originalSize:&v40 error:&v39];
    v22 = v39;
    v23 = v22;
    if (v21)
    {
      atomic_fetch_add(&self->_metricCompressedBytes, [v21 length]);
      atomic_fetch_add(&self->_metricUncompressedBytes, v40);
      v54[0] = v21;
      v53[0] = &unk_1F2EEC758;
      v53[1] = @"_i";
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(runCopy, "taskID")}];
      v54[1] = v24;
      v53[2] = &unk_1F2EEC770;
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v40];
      v54[2] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:3];

      v17 = v34;
      v20 = runCopy;

      if (v26)
      {
LABEL_28:
        v30 = self->_dispatchQueue;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_428;
        v35[3] = &unk_1E7C944F8;
        v35[4] = self;
        v36 = v20;
        v37 = v26;
        v38 = v17;
        v31 = v26;
        v32 = v20;
        dispatch_async(v30, v35);

        goto LABEL_29;
      }

LABEL_27:
      v51[0] = @"_i";
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v20, "taskID")}];
      v51[1] = &unk_1F2EEC788;
      v52[0] = v29;
      v52[1] = v17;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];

      goto LABEL_28;
    }

    atomic_fetch_add(&self->_metricCompressedBytes, v40);
    atomic_fetch_add(&self->_metricUncompressedBytes, v40);
    atomic_fetch_add(&self->_metricUncompressibleChunks, 1uLL);
    if (v22)
    {
      atomic_fetch_add(&self->_metricCompressionErrors, 1uLL);
      ucat = self->_ucat;
      if (ucat->var0 <= 90)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_26;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "-[RPFileTransferSession _smallFilesSendTaskRun:]", 90, "### Compress failed: SmallFiles, TID %llu, %{error}\n", [runCopy taskID], v23);
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_2;
  v42[3] = &unk_1E7C92D80;
  v20 = runCopy;
  v42[4] = self;
  v43 = runCopy;
  v27 = runCopy;
  dispatch_async(v19, v42);

LABEL_29:
}

uint64_t __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 fileSize] < 1)
        {
          v8 = 0;
        }

        else
        {
          v8 = [v7 fileSize];
        }

        *(*(a1 + 40) + 312) += v8;
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 32) count];
  *(*(a1 + 40) + 328) += result;
  return result;
}

void __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_428(void *a1)
{
  v2 = *(a1[4] + 64);
  if ([v2 state] == 1)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_2_431;
    v17[3] = &unk_1E7C944D0;
    v9 = a1[6];
    v10 = a1[4];
    v11 = a1[5];
    v17[4] = a1[7];
    v17[5] = v10;
    v18 = v11;
    [v2 sendEncryptedRequestID:@"_ftSm" request:v9 xpcID:0 options:0 responseHandler:v17];
  }

  else
  {
    v13 = a1[4];
    v12 = a1[5];
    if (v2)
    {
      v14 = "Cnx not ready";
    }

    else
    {
      v14 = "No cnx";
    }

    v16 = RPErrorF(4294896153, v14, v3, v4, v5, v6, v7, v8, v15);
    [v13 _smallFilesSendTaskEnd:v12 error:v16];
  }
}

void __48__RPFileTransferSession__smallFilesSendTaskRun___block_invoke_2_431(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 fileSize] < 1)
        {
          v12 = 0;
        }

        else
        {
          v12 = [v11 fileSize];
        }

        *(*(a1 + 40) + 304) += v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  *(*(a1 + 40) + 320) += [*(a1 + 32) count];
  *(*(a1 + 40) + 336) = 1;
  [*(a1 + 40) _smallFilesSendTaskEnd:*(a1 + 48) error:v5];
}

- (id)_smallFilesSendTaskReadItem:(id)item error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  itemURL = [itemCopy itemURL];
  fileSystemRepresentation = [itemURL fileSystemRepresentation];

  if (fileSystemRepresentation)
  {
    v15 = -[RPFileTransferSession _readPath:size:error:](self, "_readPath:size:error:", fileSystemRepresentation, [itemCopy fileSize], error);
    v16 = v15;
    if (v15)
    {
      CC_SHA256([v15 bytes], objc_msgSend(v15, "length"), md);
      v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];
      [itemCopy setSha256HashData:v17];
      v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v18 setObject:v16 forKeyedSubscript:&unk_1F2EEC7A0];
      [v18 setObject:v17 forKeyedSubscript:@"_s2"];
      filename = [itemCopy filename];
      if (filename)
      {
        [v18 setObject:filename forKeyedSubscript:&unk_1F2EEC7B8];
      }

      fileSize = [itemCopy fileSize];
      if (fileSize)
      {
        v21 = [MEMORY[0x1E696AD98] numberWithLongLong:fileSize];
        [v18 setObject:v21 forKeyedSubscript:&unk_1F2EEC7D0];
      }

      metadata = [itemCopy metadata];
      if (metadata)
      {
        [v18 setObject:metadata forKeyedSubscript:&unk_1F2EEC7E8];
      }

      v29 = 0;
      v23 = [(RPFileTransferSession *)self _modTimeForFileWithPath:fileSystemRepresentation error:&v29];
      v24 = v29;
      v25 = v24;
      if (v23)
      {
        [v18 addEntriesFromDictionary:v23];
        v26 = v18;
      }

      else if (error)
      {
        v28 = v24;
        v26 = 0;
        *error = v25;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else if (error)
  {
    RPErrorF(4294960592, "No item path", v9, v10, v11, v12, v13, v14, v29);
    *error = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)_smallFilesSendTaskEnd:(id)end error:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  endCopy = end;
  errorCopy = error;
  if (([(NSMutableSet *)self->_smallFilesSendTasks containsObject:endCopy]& 1) != 0)
  {
    if (!self->_invalidateCalled && [errorCopy code] == -71143)
    {
      ucat = self->_ucat;
      if (ucat->var0 <= 90)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_32;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "-[RPFileTransferSession _smallFilesSendTaskEnd:error:]", 90, "### SmallFiles send task network error: TID %llu, %{error}\n", [endCopy taskID], errorCopy);
      }

LABEL_32:
      [endCopy setNeedsRetry:1];
      goto LABEL_33;
    }

    v10 = self->_ucat;
    var0 = v10->var0;
    if (errorCopy)
    {
      if (var0 <= 90)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_23;
          }

          v10 = self->_ucat;
        }

        LogPrintF(v10, "-[RPFileTransferSession _smallFilesSendTaskEnd:error:]", 90, "### SmallFiles send task failed: TID %llu, %{error}\n", [endCopy taskID], errorCopy);
      }
    }

    else if (var0 <= 10)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_23;
        }

        v10 = self->_ucat;
      }

      [endCopy taskID];
      LogPrintF(v10, "[RPFileTransferSession _smallFilesSendTaskEnd:error:]", 10, "SmallFiles send task completed: TID %llu\n");
    }

LABEL_23:
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    fileItems = [endCopy fileItems];
    v13 = [fileItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(fileItems);
          }

          [(RPFileTransferSession *)self _completeItemDirect:*(*(&v18 + 1) + 8 * i) error:errorCopy];
        }

        v14 = [fileItems countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }

    [(NSMutableSet *)self->_smallFilesSendTasks removeObject:endCopy];
    [(RPFileTransferSession *)self _processFinish];
    queue = [endCopy queue];
    [(RPFileTransferSession *)self _ioQueueEnqueue:queue];

    [(RPFileTransferSession *)self _scheduleItems];
    goto LABEL_33;
  }

  v9 = self->_ucat;
  if (v9->var0 <= 90)
  {
    if (v9->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_33;
      }

      v9 = self->_ucat;
    }

    LogPrintF(v9, "-[RPFileTransferSession _smallFilesSendTaskEnd:error:]", 90, "### SmallFiles send task already ended: TID %llu, %{error}\n", [endCopy taskID], errorCopy);
  }

LABEL_33:
}

- (void)_smallFilesReceiveRequest:(id)request responseHandler:(id)handler
{
  v94 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v71 = requestCopy;
  v70 = NSDictionaryGetNSNumber();
  unsignedLongLongValue = [v70 unsignedLongLongValue];
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy__3;
  v91 = __Block_byref_object_dispose__3;
  v92 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__RPFileTransferSession__smallFilesReceiveRequest_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C94520;
  v85 = &v87;
  v86 = unsignedLongLongValue;
  aBlock[4] = self;
  v66 = unsignedLongLongValue;
  v67 = handlerCopy;
  v84 = v67;
  v65 = _Block_copy(aBlock);
  if (self->_fileWritesOutstanding >= 0x32)
  {
    v60 = RPErrorF(4294960567, "Too many outstanding file receives", v8, v9, v10, v11, v12, v13, v64);
    v69 = v88[5];
    v88[5] = v60;

    goto LABEL_36;
  }

  CFDataGetTypeID();
  v68 = CFDictionaryGetTypedValue();
  if (!v68)
  {
    CFArrayGetTypeID();
    v21 = CFDictionaryGetTypedValue();
    if (!v21)
    {
      v62 = RPErrorF(4294960591, "No files array", v30, v31, v32, v33, v34, v35, v64);
      v63 = v88[5];
      v88[5] = v62;

      goto LABEL_35;
    }

    goto LABEL_8;
  }

  v82 = 0;
  Int64 = CFDictionaryGetInt64();
  if (!Int64)
  {
    v61 = RPErrorF(4294960553, "Bad original size: %llu", v15, 0, v16, v17, v18, v19, 0);
    v21 = v88[5];
    v88[5] = v61;
    goto LABEL_39;
  }

  v20 = (v88 + 5);
  obj = v88[5];
  v21 = [(RPFileTransferSession *)self _decompressAndDecodeData:v68 originalSize:Int64 error:&obj];
  objc_storeStrong(v20, obj);
  if (v21)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = RPErrorF(4294960540, "File array bad type", v22, v23, v24, v25, v26, v27, v64);
      v29 = v88[5];
      v88[5] = v28;

LABEL_39:
      goto LABEL_35;
    }

LABEL_8:
    v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v72 = v21;
    v36 = [(RPFileTransferSmallFilesTask *)v72 countByEnumeratingWithState:&v77 objects:v93 count:16];
    if (v36)
    {
      v37 = *v78;
      while (2)
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v78 != v37)
          {
            objc_enumerationMutation(v72);
          }

          v39 = *(*(&v77 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v55 = RPErrorF(4294960540, "Non-dict file", v40, v41, v42, v43, v44, v45, v64);
            v56 = v88[5];
            v88[5] = v55;

            v57 = v72;
            goto LABEL_34;
          }

          v46 = objc_alloc_init(RPFileTransferItem);
          CFDataGetTypeID();
          v47 = CFDictionaryGetTypedValue();
          if (v47)
          {
            [(RPFileTransferItem *)v46 setFileData:v47];
          }

          CFStringGetTypeID();
          v48 = CFDictionaryGetTypedValue();
          if (v48)
          {
            [(RPFileTransferItem *)v46 setFilename:v48];
          }

          v82 = 0;
          v49 = CFDictionaryGetInt64();
          if (!v82)
          {
            [(RPFileTransferItem *)v46 setFileSize:v49];
          }

          CFDictionaryGetTypeID();
          v50 = CFDictionaryGetTypedValue();
          if (v50)
          {
            [(RPFileTransferItem *)v46 setMetadata:v50];
          }

          v51 = CFDictionaryGetCFDataOfLength();
          if (v51)
          {
            [(RPFileTransferItem *)v46 setSha256HashData:v51];
          }

          [v73 addObject:v46];
          if ([(RPFileTransferSession *)self isResumable])
          {
            resumeState = [(RPFileTransferSession *)self resumeState];
            v53 = [[RPFileTransferResumeStateItem alloc] initWithFileTransferRequestDict:v39];
            [resumeState addActiveFile:v53];
            [resumeState scheduleStateFileFlush];
          }
        }

        v36 = [(RPFileTransferSmallFilesTask *)v72 countByEnumeratingWithState:&v77 objects:v93 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    ucat = self->_ucat;
    if (ucat->var0 > 9)
    {
      goto LABEL_33;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_33:
        v57 = objc_alloc_init(RPFileTransferSmallFilesTask);
        [(RPFileTransferSmallFilesTask *)v57 setFileItems:v73];
        _ioQueueDequeue = [(RPFileTransferSession *)self _ioQueueDequeue];
        [(RPFileTransferSmallFilesTask *)v57 setQueue:_ioQueueDequeue];

        [(RPFileTransferSmallFilesTask *)v57 setTaskID:v66];
        [(NSMutableDictionary *)self->_smallFilesReceiveTasks setObject:v57 forKeyedSubscript:v70];
        ++self->_fileWritesOutstanding;
        queue = [(RPFileTransferSmallFilesTask *)v57 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __67__RPFileTransferSession__smallFilesReceiveRequest_responseHandler___block_invoke_2;
        block[3] = &unk_1E7C93578;
        block[4] = self;
        block[5] = v57;
        v76 = v67;
        dispatch_async(queue, block);

LABEL_34:
        goto LABEL_35;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "-[RPFileTransferSession _smallFilesReceiveRequest:responseHandler:]", 9, "SmallFiles receive start: TID %llu, %d files\n", v66, [v73 count]);
    goto LABEL_33;
  }

LABEL_35:

LABEL_36:
  v65[2](v65);

  _Block_object_dispose(&v87, 8);
}

void *__67__RPFileTransferSession__smallFilesReceiveRequest_responseHandler___block_invoke(void *result)
{
  v1 = *(*(result[6] + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  v3 = *(result[4] + 152);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(v2[4] + 152);
      v1 = *(*(v2[6] + 8) + 40);
    }

    LogPrintF(v3, "[RPFileTransferSession _smallFilesReceiveRequest:responseHandler:]_block_invoke", 90, "### SmallFiles receive failed: TID %llu, %{error}\n", v2[7], v1);
  }

LABEL_7:
  v4 = *(v2[5] + 16);

  return v4();
}

- (void)_smallFilesReceiveTaskRun:(id)run responseHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  runCopy = run;
  handlerCopy = handler;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  fileItems = [runCopy fileItems];
  v9 = [fileItems countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v27;
LABEL_3:
    v13 = 0;
    v14 = v11;
    while (1)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(fileItems);
      }

      v15 = *(*(&v26 + 1) + 8 * v13);
      v25 = v14;
      v16 = [(RPFileTransferSession *)self _smallFilesReceiveTaskFileItem:v15 error:&v25];
      v11 = v25;

      if (!v16)
      {
        break;
      }

      ++v13;
      v14 = v11;
      if (v10 == v13)
      {
        v10 = [fileItems countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__RPFileTransferSession__smallFilesReceiveTaskRun_responseHandler___block_invoke;
  block[3] = &unk_1E7C92F38;
  block[4] = self;
  v22 = runCopy;
  v23 = v11;
  v24 = handlerCopy;
  v18 = handlerCopy;
  v19 = v11;
  v20 = runCopy;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_smallFilesReceiveTaskFileItem:(id)item error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  sha256HashData = [itemCopy sha256HashData];
  v8 = [sha256HashData length];
  if (v8 == 32)
  {
    fileData = [itemCopy fileData];
    [itemCopy setFileData:0];
    CC_SHA256([fileData bytes], objc_msgSend(fileData, "length"), md);
    v16 = sha256HashData;
    bytes = [sha256HashData bytes];
    if (*md == *bytes && v37 == bytes[1] && v38 == bytes[2] && v39 == bytes[3])
    {
      v27 = -[RPFileTransferSession _openWriteFileItem:size:error:](self, "_openWriteFileItem:size:error:", itemCopy, [fileData length], error);
      v28 = v27;
      if ((v27 & 0x80000000) == 0)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __62__RPFileTransferSession__smallFilesReceiveTaskFileItem_error___block_invoke;
        aBlock[3] = &__block_descriptor_36_e5_v8__0l;
        v35 = v27;
        v29 = _Block_copy(aBlock);
        v31 = 1;
        if ([fileData length])
        {
          v30 = fileData;
          if (!-[RPFileTransferSession _writeFD:buffer:size:error:](self, "_writeFD:buffer:size:error:", v28, [fileData bytes], objc_msgSend(fileData, "length"), error))
          {
            v31 = 0;
          }
        }

        v29[2](v29);

        goto LABEL_18;
      }
    }

    else if (error)
    {
      RPErrorF(4294960583, "Hash mismatch", v18, v19, v20, v21, v22, v23, v33);
      *error = v31 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v31 = 0;
    goto LABEL_18;
  }

  if (error)
  {
    RPErrorF(4294960583, "Bad hash length: %zu", v9, v10, v11, v12, v13, v14, v8);
    *error = v31 = 0;
  }

  else
  {
    v31 = 0;
  }

LABEL_19:

  return v31;
}

- (void)_smallFilesReceiveTaskComplete:(id)complete error:(id)error responseHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  errorCopy = error;
  handlerCopy = handler;
  taskID = [completeCopy taskID];
  smallFilesReceiveTasks = self->_smallFilesReceiveTasks;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:taskID];
  [(NSMutableDictionary *)smallFilesReceiveTasks setObject:0 forKeyedSubscript:v13];

  queue = [completeCopy queue];
  [(RPFileTransferSession *)self _ioQueueEnqueue:queue];

  --self->_fileWritesOutstanding;
  if (self->_invalidateCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_23;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPFileTransferSession _smallFilesReceiveTaskComplete:error:responseHandler:]", 90, "### SmallFiles receive response after invalidation: TID %llu, %{error}\n", taskID, errorCopy);
    }

LABEL_23:
    v31 = RPErrorF(4294896148, "Completed after invalidation", v15, v16, v17, v18, v19, v20, v39);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v31);
    [(RPFileTransferSession *)self _updateSmallFilesTaskResumeState:completeCopy error:v31];
LABEL_35:

    goto LABEL_36;
  }

  if (!errorCopy)
  {
    fileItems = [completeCopy fileItems];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v24 = [fileItems countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v45;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(fileItems);
          }

          v28 = *(*(&v44 + 1) + 8 * i);
          if ([v28 fileSize] < 1)
          {
            fileSize = 0;
          }

          else
          {
            fileSize = [v28 fileSize];
          }

          *&self->_progressCurrentBytes = vaddq_s64(*&self->_progressCurrentBytes, vdupq_n_s64(fileSize));
        }

        v25 = [fileItems countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v25);
    }

    *&self->_progressCurrentFiles = vaddq_s64(*&self->_progressCurrentFiles, vdupq_n_s64([fileItems count]));
    self->_progressDirty = 1;
    v30 = self->_ucat;
    if (v30->var0 > 9)
    {
      goto LABEL_27;
    }

    if (v30->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_27;
      }

      v30 = self->_ucat;
    }

    LogPrintF(v30, "[RPFileTransferSession _smallFilesReceiveTaskComplete:error:responseHandler:]", 9, "SmallFiles receive complete: TID %llu\n", taskID);
LABEL_27:
    fileItems2 = [completeCopy fileItems];
    [(RPFileTransferSession *)self _processReceivedItems:fileItems2 responseHandler:handlerCopy];

    [(RPFileTransferSession *)self _updateSmallFilesTaskResumeState:completeCopy error:0];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = fileItems;
    v33 = [v31 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v41;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v41 != v35)
          {
            objc_enumerationMutation(v31);
          }

          v37 = *(*(&v40 + 1) + 8 * j);
          fileSize2 = [v37 fileSize];
          self->_metricTotalBytes += [v37 metadataSize] + fileSize2;
        }

        v34 = [v31 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v34);
    }

    self->_metricTotalFiles += [v31 count];
    self->_metricLastFileCompletionTicks = mach_absolute_time();
    goto LABEL_35;
  }

  v22 = self->_ucat;
  if (v22->var0 <= 90)
  {
    if (v22->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v22 = self->_ucat;
    }

    LogPrintF(v22, "[RPFileTransferSession _smallFilesReceiveTaskComplete:error:responseHandler:]", 90, "### SmallFiles receive failed: TID %llu, %{error}\n", taskID, errorCopy);
  }

LABEL_25:
  (*(handlerCopy + 2))(handlerCopy, 0, 0, errorCopy);
  [(RPFileTransferSession *)self _updateSmallFilesTaskResumeState:completeCopy error:errorCopy];
LABEL_36:
}

- (void)_updateSmallFilesTaskResumeState:(id)state error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  errorCopy = error;
  if ([(RPFileTransferSession *)self isResumable])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = stateCopy;
    fileItems = [stateCopy fileItems];
    v9 = [fileItems countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(fileItems);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          resumeState = [(RPFileTransferSession *)self resumeState];
          filename = [v13 filename];
          v16 = [resumeState activeFileWithFileName:filename];

          if (v16)
          {
            if (errorCopy)
            {
              fileSize = 0;
            }

            else
            {
              fileSize = [v13 fileSize];
            }

            [v16 setBytesWritten:fileSize];
            [v16 setError:errorCopy];
            [resumeState removeActiveFile:v16];
            [resumeState addFinishedFile:v16];
            [resumeState scheduleStateFileFlush];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [fileItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    stateCopy = v18;
  }
}

- (id)_largeFileSendTaskCreate
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_addedItems;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = *v15;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v15 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = *(*(&v14 + 1) + 8 * v7);
    if ([v8 estimatedSize] > self->_prefSmallFilesMaxBytes)
    {
      break;
    }

    if (v5 == ++v7)
    {
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

LABEL_9:
      v9 = 0;
      v10 = v3;
LABEL_16:

      goto LABEL_17;
    }
  }

  v10 = v8;

  if (v10)
  {
    [(NSMutableSet *)self->_addedItems removeObject:v10];
    v9 = objc_alloc_init(RPFileTransferLargeFileSendTask);
    [(RPFileTransferLargeFileSendTask *)v9 setFileFD:0xFFFFFFFFLL];
    [(RPFileTransferLargeFileSendTask *)v9 setFileOffset:0];
    [(RPFileTransferLargeFileSendTask *)v9 setFileItem:v10];
    _ioQueueDequeue = [(RPFileTransferSession *)self _ioQueueDequeue];
    [(RPFileTransferLargeFileSendTask *)v9 setQueue:_ioQueueDequeue];

    ++self->_taskIDLast;
    [(RPFileTransferLargeFileSendTask *)v9 setTaskID:?];
    ucat = self->_ucat;
    if (ucat->var0 > 10)
    {
      goto LABEL_16;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[RPFileTransferSession _largeFileSendTaskCreate]", 10, "LargeFile send task start: TID %llu, FID %llu, FSize %llu, MDSize %zu\n", [(RPFileTransferLargeFileSendTask *)v9 taskID], [(NSMutableSet *)v10 fileID], [(NSMutableSet *)v10 fileSize], [(NSMutableSet *)v10 metadataSize]);
    goto LABEL_16;
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (void)_largeFileSendTaskStart:(id)start
{
  startCopy = start;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__3;
  v53 = __Block_byref_object_dispose__3;
  v54 = 0;
  fileItem = [startCopy fileItem];
  itemURL = [fileItem itemURL];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__RPFileTransferSession__largeFileSendTaskStart___block_invoke;
  aBlock[3] = &unk_1E7C94568;
  v48 = &v49;
  aBlock[4] = self;
  aBlock[5] = itemURL;
  v7 = startCopy;
  v47 = v7;
  v8 = _Block_copy(aBlock);
  v7[8] = 0;
  fileItem2 = [v7 fileItem];
  *(v7 + 3) = [fileItem2 fileSize];

  *(v7 + 4) = 0;
  *(v7 + 8) = 0;
  ++*(v7 + 35);
  fileSystemRepresentation = [itemURL fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    v37 = RPErrorF(4294960592, "No item path", v10, v11, v12, v13, v14, v15, v39);
    v38 = v50[5];
    v50[5] = v37;

    goto LABEL_17;
  }

  fileItem3 = [v7 fileItem];
  if ([fileItem3 fileSize] < 1)
  {
    fileSize = 0;
  }

  else
  {
    fileItem4 = [v7 fileItem];
    fileSize = [fileItem4 fileSize];
  }

  if ([(RPFileTransferSession *)self isResumable])
  {
    resumeState = [(RPFileTransferSession *)self resumeState];
    fileItem5 = [v7 fileItem];
    filename = [fileItem5 filename];
    v23 = [resumeState finishedFileWithFileName:filename];

    if (v23)
    {
      v24 = *MEMORY[0x1E69E9858];
      fileName = [v23 fileName];
      FPrintF(v24, "Resumable file transfer: skipping over finished file: %@\n", fileName);

      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__RPFileTransferSession__largeFileSendTaskStart___block_invoke_2;
      block[3] = &unk_1E7C92D80;
      block[4] = self;
      v45 = v7;
      dispatch_async(dispatchQueue, block);

      goto LABEL_17;
    }

    fileItem6 = [v7 fileItem];
    filename2 = [fileItem6 filename];
    v30 = [resumeState activeFileWithFileName:filename2];

    if (v30)
    {
      fileOffset = [v30 fileOffset];
      v27 = [v30 bytesWritten] + fileOffset;
      if (v27)
      {
        path = [itemURL path];
        v40 = [v30 sourceFileItemUsable:path];

        if (v40)
        {
          v41 = *MEMORY[0x1E69E9858];
          fileName2 = [v30 fileName];
          FPrintF(v41, "Resumable file transfer: partial transfer, file = %@, fileOffset = %ld\n", fileName2, v27);

          [v7 setFileOffset:v27];
        }
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v34 = self->_dispatchQueue;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __49__RPFileTransferSession__largeFileSendTaskStart___block_invoke_3;
  v43[3] = &unk_1E7C94590;
  v43[4] = self;
  v43[5] = v27;
  v43[6] = fileSize;
  dispatch_async(v34, v43);
  v35 = v50;
  obj = v50[5];
  v36 = [(RPFileTransferSession *)self _openReadPath:fileSystemRepresentation error:&obj];
  objc_storeStrong(v35 + 5, obj);
  if ((v36 & 0x80000000) == 0)
  {
    [v7 setFileFD:v36];
    CC_SHA256_Init((v7 + 36));
    [(RPFileTransferSession *)self _largeFileSendTaskNext:v7 xid:*(v7 + 35)];
  }

LABEL_17:
  v8[2](v8);

  _Block_object_dispose(&v49, 8);
}

void *__49__RPFileTransferSession__largeFileSendTaskStart___block_invoke(void *result)
{
  v1 = result[7];
  v2 = *(*(v1 + 8) + 40);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  v4 = result[4];
  v5 = v4[19];
  if (*v5 <= 90)
  {
    if (*v5 == -1)
    {
      v6 = _LogCategory_Initialize();
      v4 = v3[4];
      v1 = v3[7];
      if (!v6)
      {
        goto LABEL_7;
      }

      v5 = v4[19];
      v2 = *(*(v1 + 8) + 40);
    }

    LogPrintF(v5, "[RPFileTransferSession _largeFileSendTaskStart:]_block_invoke", 90, "### LargeFile start failed: URL %{mask}, %{error}\n", v3[5], v2);
    v4 = v3[4];
    v1 = v3[7];
  }

LABEL_7:
  v7 = v3[6];
  v8 = *(*(v1 + 8) + 40);

  return [v4 _largeFileSendTaskFailed:v7 error:v8];
}

void *__49__RPFileTransferSession__largeFileSendTaskStart___block_invoke_3(void *result)
{
  *(result[4] + 304) += result[5];
  *(result[4] + 312) += result[6];
  ++*(result[4] + 328);
  return result;
}

- (void)_largeFileSendTaskNext:(id)next xid:(unsigned int)xid
{
  v4 = *&xid;
  nextCopy = next;
  while (1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v7;
    if (*(nextCopy + 35) != v4 || (nextCopy[8] & 1) != 0 || *(nextCopy + 4) >= self->_prefLargeFileMaxOutstanding)
    {
      goto LABEL_20;
    }

    v9 = *(nextCopy + 3);
    if (!v9)
    {
      break;
    }

    if (v9 >= self->_largeFileBufferBytes)
    {
      largeFileBufferBytes = self->_largeFileBufferBytes;
    }

    else
    {
      largeFileBufferBytes = *(nextCopy + 3);
    }

    fileFD = [nextCopy fileFD];
    v22 = 0;
    v12 = [(RPFileTransferSession *)self _readFD:fileFD size:largeFileBufferBytes error:&v22];
    v13 = v22;
    if (!v12)
    {
      [(RPFileTransferSession *)self _largeFileSendTaskFailed:nextCopy error:v13];

LABEL_20:
      objc_autoreleasePoolPop(v8);
      goto LABEL_21;
    }

    *(nextCopy + 3) -= largeFileBufferBytes;
    CC_SHA256_Update((nextCopy + 36), [v12 bytes], objc_msgSend(v12, "length"));
    fileOffset = [nextCopy fileOffset];
    if (fileOffset)
    {
      v15 = fileOffset;
      fileItem = [nextCopy fileItem];
      fileSize = [fileItem fileSize];

      v18 = *(nextCopy + 3);
      if (fileSize - v18 <= v15)
      {
        goto LABEL_16;
      }

      v19 = fileSize - v18 - largeFileBufferBytes;
      if (v15 > v19)
      {
        v20 = [v12 subdataWithRange:{v15 - v19, objc_msgSend(v12, "length") - (v15 - v19)}];
        [(RPFileTransferSession *)self _largeFileSendTaskSend:nextCopy data:v20 end:*(nextCopy + 3) == 0 xid:v4];

        goto LABEL_16;
      }
    }

    else
    {
      v18 = *(nextCopy + 3);
    }

    [(RPFileTransferSession *)self _largeFileSendTaskSend:nextCopy data:v12 end:v18 == 0 xid:v4];
LABEL_16:

    objc_autoreleasePoolPop(v8);
  }

  objc_autoreleasePoolPop(v7);
  v21 = *(nextCopy + 8);
  if ((v21 & 2) == 0)
  {
    *(nextCopy + 8) = v21 | 2;
    [(RPFileTransferSession *)self _largeFileSendTaskSend:nextCopy data:0 end:1 xid:v4];
  }

LABEL_21:
}

- (void)_largeFileSendTaskSend:(id)send data:(id)data end:(BOOL)end xid:(unsigned int)xid
{
  endCopy = end;
  v47 = *MEMORY[0x1E69E9840];
  sendCopy = send;
  dataCopy = data;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(sendCopy, "taskID")}];
  [v12 setObject:v13 forKeyedSubscript:@"_i"];

  if (dataCopy)
  {
    if (!self->_compressionEnabled)
    {
LABEL_11:
      [v12 setObject:dataCopy forKeyedSubscript:&unk_1F2EEC7A0];
      goto LABEL_12;
    }

    v14 = [dataCopy length];
    v45 = 0;
    v15 = [(RPFileTransferSession *)self _compressData:dataCopy error:&v45];
    v16 = v45;
    v17 = v16;
    if (v15)
    {
      atomic_fetch_add(&self->_metricCompressedBytes, [v15 length]);
      atomic_fetch_add(&self->_metricUncompressedBytes, v14);
      [v12 setObject:v15 forKeyedSubscript:&unk_1F2EEC758];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v14];
      [v12 setObject:v18 forKeyedSubscript:&unk_1F2EEC770];

      goto LABEL_12;
    }

    atomic_fetch_add(&self->_metricCompressedBytes, v14);
    atomic_fetch_add(&self->_metricUncompressedBytes, v14);
    atomic_fetch_add(&self->_metricUncompressibleChunks, 1uLL);
    if (v16)
    {
      atomic_fetch_add(&self->_metricCompressionErrors, 1uLL);
      ucat = self->_ucat;
      if (ucat->var0 <= 90)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          ucat = self->_ucat;
        }

        LogPrintF(ucat, "-[RPFileTransferSession _largeFileSendTaskSend:data:end:xid:]", 90, "### Compress failed: LargeFile, TID %llu, %{error}\n", [sendCopy taskID], v17);
      }
    }

LABEL_10:

    goto LABEL_11;
  }

LABEL_12:
  fileItem = [sendCopy fileItem];
  v21 = fileItem;
  if ((sendCopy[32] & 1) == 0)
  {
    filename = [fileItem filename];
    if (filename)
    {
      [v12 setObject:filename forKeyedSubscript:&unk_1F2EEC7B8];
    }

    fileSize = [v21 fileSize];
    if (fileSize)
    {
      v24 = [MEMORY[0x1E696AD98] numberWithLongLong:fileSize];
      [v12 setObject:v24 forKeyedSubscript:&unk_1F2EEC7D0];
    }

    metadata = [v21 metadata];
    if (metadata)
    {
      [v12 setObject:metadata forKeyedSubscript:&unk_1F2EEC7E8];
    }

    fileOffset = [sendCopy fileOffset];
    if (fileOffset)
    {
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:fileOffset];
      [v12 setObject:v27 forKeyedSubscript:@"_fOff"];
    }

    itemURL = [v21 itemURL];
    fileSystemRepresentation = [itemURL fileSystemRepresentation];

    v44 = 0;
    v30 = [(RPFileTransferSession *)self _modTimeForFileWithPath:fileSystemRepresentation error:&v44];
    v31 = v44;
    if (v30)
    {
      [v12 addEntriesFromDictionary:v30];
    }

    *(sendCopy + 8) |= 1u;

    if (!endCopy)
    {
      v32 = 1;
      goto LABEL_29;
    }

    v32 = 3;
LABEL_27:
    CC_SHA256_Final(md, (sendCopy + 36));
    v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];
    [v21 setSha256HashData:v33];
    [v12 setObject:v33 forKeyedSubscript:@"_s2"];
    *(sendCopy + 8) |= 2u;

LABEL_29:
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v32];
    [v12 setObject:v34 forKeyedSubscript:&unk_1F2EEC800];

    goto LABEL_30;
  }

  if (endCopy)
  {
    v32 = 2;
    goto LABEL_27;
  }

LABEL_30:
  atomic_fetch_add(sendCopy + 4, 1u);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__RPFileTransferSession__largeFileSendTaskSend_data_end_xid___block_invoke;
  block[3] = &unk_1E7C94608;
  block[4] = self;
  v39 = sendCopy;
  v40 = v12;
  v41 = dataCopy;
  v43 = endCopy;
  xidCopy = xid;
  v36 = dataCopy;
  v37 = sendCopy;
  dispatch_async(dispatchQueue, block);
}

void __61__RPFileTransferSession__largeFileSendTaskSend_data_end_xid___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if ([v2 state] == 1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__RPFileTransferSession__largeFileSendTaskSend_data_end_xid___block_invoke_3;
    v7[3] = &unk_1E7C945E0;
    v7[4] = *(a1 + 32);
    v3 = &v8;
    v4 = *(a1 + 48);
    v8 = *(a1 + 56);
    v11 = *(a1 + 68);
    v9 = *(a1 + 40);
    v10 = *(a1 + 64);
    [v2 sendEncryptedRequestID:@"_ftLg" request:v4 xpcID:0 options:0 responseHandler:v7];
    v5 = v9;
  }

  else
  {
    atomic_fetch_add((*(a1 + 40) + 16), 0xFFFFFFFF);
    v5 = [*(a1 + 40) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__RPFileTransferSession__largeFileSendTaskSend_data_end_xid___block_invoke_2;
    block[3] = &unk_1E7C945B8;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v3 = &v13;
    v13 = v6;
    v14 = v2 != 0;
    dispatch_async(v5, block);
  }
}

void __61__RPFileTransferSession__largeFileSendTaskSend_data_end_xid___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v10 = "Cnx not ready";
  }

  else
  {
    v10 = "No cnx";
  }

  v12 = RPErrorF(4294896153, v10, a3, a4, a5, a6, a7, a8, v11);
  [v8 _largeFileSendTaskFailed:v9 error:v12];
}

void __61__RPFileTransferSession__largeFileSendTaskSend_data_end_xid___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 40);
  v6 = a4;
  *(*(a1 + 32) + 304) += [v5 length];
  if (*(a1 + 60) == 1)
  {
    ++*(*(a1 + 32) + 320);
  }

  *(*(a1 + 32) + 336) = 1;
  atomic_fetch_add((*(a1 + 48) + 16), 0xFFFFFFFF);
  [*(a1 + 32) _largeFileSendTaskResponse:*(a1 + 48) error:v6 end:*(a1 + 60) xid:*(a1 + 56)];
}

- (void)_largeFileSendTaskFailed:(id)failed error:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  if ((failedCopy[8] & 1) == 0)
  {
    failedCopy[8] = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__RPFileTransferSession__largeFileSendTaskFailed_error___block_invoke;
    block[3] = &unk_1E7C93BC0;
    block[4] = self;
    v10 = failedCopy;
    v11 = errorCopy;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_largeFileSendTaskResponse:(id)response error:(id)error end:(BOOL)end xid:(unsigned int)xid
{
  endCopy = end;
  responseCopy = response;
  errorCopy = error;
  v18 = errorCopy;
  if (self->_invalidateCalled)
  {
    if (errorCopy)
    {
      if (!endCopy)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v18 = RPErrorF(4294896148, "Invalidated", v12, v13, v14, v15, v16, v17, v23);
      if (!endCopy)
      {
LABEL_10:
        queue = [responseCopy queue];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __66__RPFileTransferSession__largeFileSendTaskResponse_error_end_xid___block_invoke;
        v30[3] = &unk_1E7C93BC0;
        v30[4] = self;
        v31 = responseCopy;
        v32 = v18;
        v20 = v18;
        dispatch_async(queue, v30);

        v21 = v31;
LABEL_11:

        goto LABEL_12;
      }
    }
  }

  else if (!endCopy)
  {
    queue2 = [responseCopy queue];
    if (!v18)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __66__RPFileTransferSession__largeFileSendTaskResponse_error_end_xid___block_invoke_3;
      v24[3] = &unk_1E7C94630;
      v24[4] = self;
      v25 = responseCopy;
      xidCopy = xid;
      dispatch_async(queue2, v24);

      goto LABEL_12;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__RPFileTransferSession__largeFileSendTaskResponse_error_end_xid___block_invoke_2;
    block[3] = &unk_1E7C93BC0;
    block[4] = self;
    v28 = responseCopy;
    v29 = v18;
    v20 = v18;
    dispatch_async(queue2, block);

    v21 = v28;
    goto LABEL_11;
  }

  [(RPFileTransferSession *)self _largeFileSendTaskEnd:responseCopy error:v18];

LABEL_12:
}

- (void)_largeFileSendTaskEnd:(id)end error:(id)error
{
  endCopy = end;
  errorCopy = error;
  v7 = endCopy[3];
  if ((v7 & 0x80000000) == 0)
  {
    if (close(v7) && *__error())
    {
      __error();
    }

    endCopy[3] = -1;
  }

  if (([(NSMutableSet *)self->_largeFileSendTasks containsObject:?]& 1) == 0)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 90)
    {
      goto LABEL_31;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_31;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "-[RPFileTransferSession _largeFileSendTaskEnd:error:]", 90, "### LargeFile send task already ended: TID %llu, %{error}\n", [endCopy taskID], errorCopy);
    goto LABEL_31;
  }

  if (self->_invalidateCalled || [errorCopy code] != -71143)
  {
    v10 = self->_ucat;
    var0 = v10->var0;
    if (errorCopy)
    {
      if (var0 <= 90)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_28;
          }

          v10 = self->_ucat;
        }

        LogPrintF(v10, "-[RPFileTransferSession _largeFileSendTaskEnd:error:]", 90, "### LargeFile send task failed: TID %llu, %{error}\n", [endCopy taskID], errorCopy);
      }
    }

    else if (var0 <= 10)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_28;
        }

        v10 = self->_ucat;
      }

      [endCopy taskID];
      LogPrintF(v10, "[RPFileTransferSession _largeFileSendTaskEnd:error:]", 10, "LargeFile send task completed: TID %llu\n");
    }

LABEL_28:
    fileItem = [endCopy fileItem];
    [(RPFileTransferSession *)self _completeItemDirect:fileItem error:errorCopy];

    [(NSMutableSet *)self->_largeFileSendTasks removeObject:endCopy];
    [(RPFileTransferSession *)self _processFinish];
    queue = [endCopy queue];
    [(RPFileTransferSession *)self _ioQueueEnqueue:queue];

    [(RPFileTransferSession *)self _scheduleItems];
    goto LABEL_31;
  }

  v8 = self->_ucat;
  if (v8->var0 <= 90)
  {
    if (v8->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_30;
      }

      v8 = self->_ucat;
    }

    LogPrintF(v8, "-[RPFileTransferSession _largeFileSendTaskEnd:error:]", 90, "### LargeFile send task network error: TID %llu, %{error}\n", [endCopy taskID], errorCopy);
  }

LABEL_30:
  [endCopy setNeedsRetry:1];
LABEL_31:
}

- (void)_largeFileReceiveRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = NSDictionaryGetNSNumber();
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__3;
  v81 = __Block_byref_object_dispose__3;
  v82 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__RPFileTransferSession__largeFileReceiveRequest_responseHandler___block_invoke;
  aBlock[3] = &unk_1E7C94658;
  v76 = &v77;
  aBlock[4] = self;
  aBlock[5] = v8;
  v9 = handlerCopy;
  v75 = v9;
  v16 = _Block_copy(aBlock);
  if (!v8)
  {
    v51 = RPErrorF(4294960588, "No task ID", v10, v11, v12, v13, v14, v15, v56);
LABEL_45:
    v25 = v78[5];
    v78[5] = v51;
    goto LABEL_42;
  }

  if (self->_fileWritesOutstanding >= 0x32)
  {
    v51 = RPErrorF(4294960567, "Too many outstanding file receives", v10, v11, v12, v13, v14, v15, v56);
    goto LABEL_45;
  }

  CFDataGetTypeID();
  v17 = CFDictionaryGetTypedValue();
  if (v17)
  {
    v73 = 0;
    Int64 = CFDictionaryGetInt64();
    if (!Int64)
    {
      v52 = RPErrorF(4294960553, "Bad original size: %llu", v19, 0, v20, v21, v22, v23, 0);
      v53 = v78[5];
      v78[5] = v52;

      v25 = 0;
      goto LABEL_41;
    }

    v24 = v78;
    obj = v78[5];
    v25 = [(RPFileTransferSession *)self _decompressData:v17 originalSize:Int64 error:&obj];
    objc_storeStrong(v24 + 5, obj);
    if (!v25)
    {
      goto LABEL_41;
    }
  }

  else
  {
    CFDataGetTypeID();
    v25 = CFDictionaryGetTypedValue();
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  largeFileReceiveTasks = self->_largeFileReceiveTasks;
  v63 = v17;
  if ((Int64Ranged & 1) == 0)
  {
    v34 = [(NSMutableDictionary *)largeFileReceiveTasks objectForKeyedSubscript:v8];
    if (!v34)
    {
      v54 = RPErrorF(4294896153, "LargeFile task not found: TID %@", v28, v29, v30, v31, v32, v33, v8);
      v55 = v78[5];
      v78[5] = v54;

      goto LABEL_40;
    }

    if ((Int64Ranged & 2) != 0)
    {
      v35 = CFDictionaryGetCFDataOfLength();
      if (v35)
      {
        fileItem = [v34 fileItem];
        [fileItem setSha256HashData:v35];
      }
    }

    ++self->_fileWritesOutstanding;
    queue = [v34 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__RPFileTransferSession__largeFileReceiveRequest_responseHandler___block_invoke_3;
    block[3] = &unk_1E7C94680;
    block[4] = self;
    block[5] = v34;
    v38 = v25;
    v65 = v38;
    v67 = Int64Ranged;
    v66 = v9;
    dispatch_async(queue, block);

    if ((Int64Ranged & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_39:
    v25 = v38;
LABEL_40:
    v17 = v63;
    goto LABEL_41;
  }

  v60 = v16;
  v61 = [(NSMutableDictionary *)largeFileReceiveTasks objectForKeyedSubscript:v8];
  if (v61)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 10)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_21;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPFileTransferSession _largeFileReceiveRequest:responseHandler:]", 10, "Replacing old LargeFile receive task: TID %@\n", v8);
    }

LABEL_21:
    [(RPFileTransferSession *)self _largeFileReceiveTaskInvalidate:v61];
    [(NSMutableDictionary *)self->_largeFileReceiveTasks setObject:0 forKeyedSubscript:v8];
  }

  v59 = v9;
  v40 = objc_alloc_init(RPFileTransferItem);
  CFStringGetTypeID();
  v41 = CFDictionaryGetTypedValue();
  if (v41)
  {
    [(RPFileTransferItem *)v40 setFilename:v41];
  }

  v73 = 0;
  v42 = CFDictionaryGetInt64();
  if (!v73)
  {
    [(RPFileTransferItem *)v40 setFileSize:v42];
  }

  v57 = v42;
  CFDictionaryGetTypeID();
  v62 = CFDictionaryGetTypedValue();
  if (v62)
  {
    [(RPFileTransferItem *)v40 setMetadata:v62];
  }

  if ((Int64Ranged & 2) != 0)
  {
    v43 = CFDictionaryGetCFDataOfLength();
    if (v43)
    {
      [(RPFileTransferItem *)v40 setSha256HashData:v43];
    }
  }

  if ([(RPFileTransferSession *)self isResumable])
  {
    resumeState = [(RPFileTransferSession *)self resumeState];
    v45 = [[RPFileTransferResumeStateItem alloc] initWithFileTransferRequestDict:requestCopy];
    [resumeState addActiveFile:v45];
    [resumeState scheduleStateFileFlush];
  }

  v46 = self->_ucat;
  if (v46->var0 <= 10)
  {
    if (v46->var0 != -1)
    {
LABEL_36:
      LogPrintF(v46, "-[RPFileTransferSession _largeFileReceiveRequest:responseHandler:]", 10, "LargeFile receive task start: TID %@, FSize %lld, MDItems %d\n", v8, v57, [v62 count]);
      goto LABEL_38;
    }

    if (_LogCategory_Initialize())
    {
      v46 = self->_ucat;
      goto LABEL_36;
    }
  }

LABEL_38:
  v58 = v41;
  v47 = objc_alloc_init(RPFileTransferLargeFileReceiveTask);
  [(RPFileTransferLargeFileReceiveTask *)v47 setFileFD:0xFFFFFFFFLL];
  [(RPFileTransferLargeFileReceiveTask *)v47 setFileItem:v40];
  _ioQueueDequeue = [(RPFileTransferSession *)self _ioQueueDequeue];
  [(RPFileTransferLargeFileReceiveTask *)v47 setQueue:_ioQueueDequeue];

  -[RPFileTransferLargeFileReceiveTask setTaskID:](v47, "setTaskID:", [v8 unsignedLongLongValue]);
  [(NSMutableDictionary *)self->_largeFileReceiveTasks setObject:v47 forKeyedSubscript:v8];
  ++self->_fileWritesOutstanding;
  queue2 = [(RPFileTransferLargeFileReceiveTask *)v47 queue];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __66__RPFileTransferSession__largeFileReceiveRequest_responseHandler___block_invoke_2;
  v68[3] = &unk_1E7C94680;
  v68[4] = self;
  v68[5] = v47;
  v38 = v25;
  v69 = v38;
  v71 = Int64Ranged;
  v50 = v40;
  v9 = v59;
  v70 = v59;
  dispatch_async(queue2, v68);

  v16 = v60;
  if ((Int64Ranged & 2) == 0)
  {
    goto LABEL_39;
  }

LABEL_15:
  [(NSMutableDictionary *)self->_largeFileReceiveTasks setObject:0 forKeyedSubscript:v8];
  v17 = v63;
LABEL_41:

LABEL_42:
  v16[2](v16);

  _Block_object_dispose(&v77, 8);
}

void *__66__RPFileTransferSession__largeFileReceiveRequest_responseHandler___block_invoke(void *result)
{
  v1 = *(*(result[7] + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  v3 = *(result[4] + 152);
  if (*v3 <= 90)
  {
    if (*v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(v2[4] + 152);
      v1 = *(*(v2[7] + 8) + 40);
    }

    LogPrintF(v3, "[RPFileTransferSession _largeFileReceiveRequest:responseHandler:]_block_invoke", 90, "### LargeFile receive failed: TID %@, %{error}\n", v2[5], v1);
  }

LABEL_7:
  v4 = *(v2[6] + 16);

  return v4();
}

- (void)_resumeStateReceiveRequest:(id)request responseHandler:(id)handler
{
  v10[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(RPFileTransferSession *)self isResumable])
  {
    resumeState = [(RPFileTransferSession *)self resumeState];
    if ([resumeState isEmpty])
    {
      v7 = 0;
    }

    else
    {
      dictionaryRepresentation = [resumeState dictionaryRepresentation];
      v9 = @"resumeState";
      v10[0] = dictionaryRepresentation;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }
  }

  else
  {
    v7 = 0;
  }

  (*(handlerCopy + 2))(handlerCopy, v7, 0, 0);
}

- (void)_largeFileReceiveTaskRun:(id)run data:(id)data sendFlags:(unsigned int)flags responseHandler:(id)handler
{
  v132 = *MEMORY[0x1E69E9840];
  runCopy = run;
  dataCopy = data;
  handlerCopy = handler;
  if ((flags & 1) == 0)
  {
    goto LABEL_33;
  }

  fileItem = [runCopy fileItem];
  if ([fileItem fileSize] < 1)
  {
    queue = 0;
  }

  else
  {
    fileItem2 = [runCopy fileItem];
    queue = [fileItem2 fileSize];
  }

  CC_SHA256_Init((runCopy + 12));
  if (![(RPFileTransferSession *)self isResumable])
  {
    goto LABEL_11;
  }

  resumeState = [(RPFileTransferSession *)self resumeState];
  fileItem3 = [runCopy fileItem];
  filename = [fileItem3 filename];
  v24 = [resumeState activeFileWithFileName:filename];

  if (!v24)
  {

LABEL_11:
    fileOffset = 0;
    goto LABEL_12;
  }

  fileOffset = [v24 fileOffset];

  if (fileOffset)
  {
    v127 = 0;
    v26 = [(RPFileTransferSession *)self _largeFileReceiveTaskUpdateSHA256CtxFromFileItem:runCopy length:fileOffset error:&v127];
    v27 = v127;
    v28 = v27;
    if (!v26)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke;
      block[3] = &unk_1E7C92F10;
      block[4] = self;
      v122 = runCopy;
      v123 = v28;
      v125 = handlerCopy;
      v124 = dataCopy;
      flagsCopy = flags;
      v52 = v28;
      dispatch_async(dispatchQueue, block);

      v53 = v122;
LABEL_53:

      goto LABEL_54;
    }

    v29 = 0;
    goto LABEL_13;
  }

LABEL_12:
  v29 = 1;
LABEL_13:
  v30 = *(runCopy + 2);
  if ((v30 & 0x80000000) == 0)
  {
    if (close(v30) && *__error())
    {
      __error();
    }

    *(runCopy + 2) = -1;
  }

  fileItem4 = [runCopy fileItem];
  v120 = 0;
  v32 = -[RPFileTransferSession _openWriteFileItem:size:truncate:error:](self, "_openWriteFileItem:size:truncate:error:", fileItem4, [dataCopy length], v29, &v120);
  v33 = v120;

  if ((v32 & 0x80000000) != 0)
  {
    v43 = self->_dispatchQueue;
    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 3221225472;
    v114[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_2;
    v114[3] = &unk_1E7C92F10;
    v114[4] = self;
    v44 = &v115;
    v115 = runCopy;
    v45 = &v116;
    v46 = v33;
    v116 = v46;
    v47 = &v118;
    v118 = handlerCopy;
    v48 = &v117;
    v117 = dataCopy;
    flagsCopy2 = flags;
    v49 = v114;
    v50 = v43;
LABEL_30:
    dispatch_async(v50, v49);

    goto LABEL_54;
  }

  [runCopy setFileFD:v32];
  if ((v29 & 1) == 0)
  {
    v113 = v33;
    v34 = [(RPFileTransferSession *)self _truncateFD:v32 size:fileOffset error:&v113];
    v35 = v113;

    if (v34 && lseek(v32, fileOffset, 0) == -1)
    {
      if (*__error())
      {
        v42 = *__error();
      }

      else
      {
        v42 = 4294960596;
      }

      v54 = RPErrorF(v42, "lseek failed: FD %d, %#m", v36, v37, v38, v39, v40, v41, v32);

      v35 = v54;
    }

    if (v35)
    {
      queuea = self->_dispatchQueue;
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_3;
      v107[3] = &unk_1E7C92F10;
      v107[4] = self;
      v44 = &v108;
      v108 = runCopy;
      v45 = &v109;
      v46 = v35;
      v109 = v46;
      v47 = &v111;
      v111 = handlerCopy;
      v48 = &v110;
      v110 = dataCopy;
      flagsCopy3 = flags;
      v49 = v107;
      v50 = queuea;
      goto LABEL_30;
    }

    v33 = 0;
  }

  v55 = self->_dispatchQueue;
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_4;
  v106[3] = &unk_1E7C94590;
  v106[4] = self;
  v106[5] = fileOffset;
  v106[6] = queue;
  dispatch_async(v55, v106);

LABEL_33:
  if ((*(runCopy + 2) & 0x80000000) != 0)
  {
    v60 = RPErrorF(4294960587, "No start", v12, v13, v14, v15, v16, v17, v77);
    v61 = self->_dispatchQueue;
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_5;
    v100[3] = &unk_1E7C92F10;
    v100[4] = self;
    v101 = runCopy;
    v102 = v60;
    v104 = handlerCopy;
    v103 = dataCopy;
    flagsCopy4 = flags;
    dispatch_async(v61, v100);

    goto LABEL_54;
  }

  v56 = [dataCopy length];
  if (!v56)
  {
    goto LABEL_37;
  }

  v99 = 0;
  v57 = -[RPFileTransferSession _writeFD:buffer:size:error:](self, "_writeFD:buffer:size:error:", [runCopy fileFD], objc_msgSend(dataCopy, "bytes"), v56, &v99);
  v58 = v99;
  if (!v57)
  {
    v76 = self->_dispatchQueue;
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_6;
    v93[3] = &unk_1E7C92F10;
    v93[4] = self;
    v94 = runCopy;
    v95 = v58;
    v97 = handlerCopy;
    v96 = dataCopy;
    flagsCopy5 = flags;
    v52 = v58;
    dispatch_async(v76, v93);

    v53 = v94;
    goto LABEL_53;
  }

  CC_SHA256_Update((runCopy + 12), [dataCopy bytes], objc_msgSend(dataCopy, "length"));

LABEL_37:
  if ((flags & 2) != 0)
  {
    CC_SHA256_Final(md, (runCopy + 12));
    fileItem5 = [runCopy fileItem];
    sha256HashData = [fileItem5 sha256HashData];

    if ([sha256HashData length] != 32 || ((v70 = objc_msgSend(sha256HashData, "bytes"), *md == *v70) ? (v71 = v129 == v70[1]) : (v71 = 0), v71 ? (v72 = v130 == v70[2]) : (v72 = 0), v72 ? (v73 = v131 == v70[3]) : (v73 = 0), !v73))
    {
      v74 = RPErrorF(4294960583, "Hash mismatch", v64, v65, v66, v67, v68, v69, v77);
      v75 = self->_dispatchQueue;
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_7;
      v87[3] = &unk_1E7C92F10;
      v87[4] = self;
      v88 = runCopy;
      v89 = v74;
      v91 = handlerCopy;
      v90 = dataCopy;
      flagsCopy6 = flags;
      dispatch_async(v75, v87);

      goto LABEL_54;
    }
  }

  v59 = self->_dispatchQueue;
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_8;
  v80[3] = &unk_1E7C946A8;
  v80[4] = self;
  v84 = v56;
  flagsCopy7 = flags;
  v86 = (flags & 2) >> 1;
  v81 = runCopy;
  v83 = handlerCopy;
  v82 = dataCopy;
  dispatch_async(v59, v80);

LABEL_54:
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:*(a1 + 48) complete:0 responseHandler:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateLargeFilesTaskResumeState:v3 data:v5 sendFlags:v4 error:v6 complete:0];
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:*(a1 + 48) complete:0 responseHandler:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateLargeFilesTaskResumeState:v3 data:v5 sendFlags:v4 error:v6 complete:0];
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:*(a1 + 48) complete:0 responseHandler:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateLargeFilesTaskResumeState:v3 data:v5 sendFlags:v4 error:v6 complete:0];
}

void *__81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_4(void *result)
{
  *(result[4] + 304) += result[5];
  *(result[4] + 312) += result[6];
  ++*(result[4] + 328);
  return result;
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:*(a1 + 48) complete:0 responseHandler:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateLargeFilesTaskResumeState:v3 data:v5 sendFlags:v4 error:v6 complete:0];
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:*(a1 + 48) complete:0 responseHandler:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateLargeFilesTaskResumeState:v3 data:v5 sendFlags:v4 error:v6 complete:0];
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:*(a1 + 48) complete:0 responseHandler:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _updateLargeFilesTaskResumeState:v3 data:v5 sendFlags:v4 error:v6 complete:0];
}

uint64_t __81__RPFileTransferSession__largeFileReceiveTaskRun_data_sendFlags_responseHandler___block_invoke_8(uint64_t a1)
{
  *(*(a1 + 32) + 304) += *(a1 + 64);
  if ((*(a1 + 72) & 2) != 0)
  {
    ++*(*(a1 + 32) + 320);
  }

  *(*(a1 + 32) + 336) = 1;
  if (*(a1 + 76) == 1)
  {
    v2 = [*(a1 + 40) fileItem];
    if ([*(a1 + 32) isResumable])
    {
      v3 = [*(a1 + 32) resumeState];
      v4 = [*(a1 + 40) fileItem];
      v5 = [v4 filename];
      v6 = [v3 activeFileWithFileName:v5];

      if (v6)
      {
        v7 = [v6 fileOffset];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = [v2 fileSize];
    *(*(a1 + 32) + 536) += v9 - v7 + [v2 metadataSize];
    ++*(*(a1 + 32) + 544);
    *(*(a1 + 32) + 400) = mach_absolute_time();

    v8 = *(a1 + 76);
  }

  else
  {
    v8 = 0;
  }

  [*(a1 + 32) _largeFileReceiveTaskRespond:*(a1 + 40) error:0 complete:v8 & 1 responseHandler:*(a1 + 56)];
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 72);
  v14 = *(a1 + 76);

  return [v10 _updateLargeFilesTaskResumeState:v11 data:v12 sendFlags:v13 error:0 complete:v14];
}

- (BOOL)_largeFileReceiveTaskUpdateSHA256CtxFromFileItem:(id)item length:(unint64_t)length error:(id *)error
{
  errorCopy = error;
  itemCopy = item;
  fileItem = [itemCopy fileItem];
  v25 = 0;
  v8 = [(RPFileTransferSession *)self _openReadFileItem:fileItem error:&v25];
  v9 = v25;

  if ((v8 & 0x80000000) != 0)
  {
    if (errorCopy)
    {
      v18 = v9;
      v12 = 0;
      *errorCopy = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__RPFileTransferSession__largeFileReceiveTaskUpdateSHA256CtxFromFileItem_length_error___block_invoke;
    aBlock[3] = &__block_descriptor_36_e5_v8__0l;
    v24 = v8;
    v20 = _Block_copy(aBlock);
    v10 = 0;
    if (self->_largeFileBufferBytes >= length)
    {
      largeFileBufferBytes = length;
    }

    else
    {
      largeFileBufferBytes = self->_largeFileBufferBytes;
    }

    while (1)
    {
      v12 = length <= v10;
      if (length <= v10)
      {
        break;
      }

      v13 = objc_autoreleasePoolPush();
      if (largeFileBufferBytes >= length - v10)
      {
        largeFileBufferBytes = length - v10;
      }

      v22 = v9;
      errorCopy = [(RPFileTransferSession *)self _readFD:v8 size:largeFileBufferBytes error:&v22, errorCopy];
      v16 = v22;

      if (errorCopy)
      {
        CC_SHA256_Update((itemCopy + 12), [errorCopy bytes], objc_msgSend(errorCopy, "length"));
        v10 += largeFileBufferBytes;
      }

      else if (errorCopy)
      {
        v15 = v16;
        *errorCopy = v16;
      }

      objc_autoreleasePoolPop(v13);
      v9 = v16;
      if (!errorCopy)
      {
        goto LABEL_15;
      }
    }

    v16 = v9;
LABEL_15:
    v20[2](v20);

    v9 = v16;
  }

  return v12;
}

- (void)_largeFileReceiveTaskRespond:(id)respond error:(id)error complete:(BOOL)complete responseHandler:(id)handler
{
  completeCopy = complete;
  respondCopy = respond;
  errorCopy = error;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (!completeCopy)
  {
    if (!errorCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8], 0, 0);
      goto LABEL_15;
    }

    ucat = self->_ucat;
    if (ucat->var0 > 90)
    {
      goto LABEL_13;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "-[RPFileTransferSession _largeFileReceiveTaskRespond:error:complete:responseHandler:]", 90, "### LargeFile receive task failed: TID %llu, %{error}\n", [respondCopy taskID], errorCopy);
LABEL_13:
    (v12)[2](v12, 0, 0, errorCopy);
    goto LABEL_14;
  }

  v13 = self->_ucat;
  if (v13->var0 <= 10)
  {
    v14 = respondCopy;
    if (v13->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v13 = self->_ucat;
      v14 = respondCopy;
    }

    LogPrintF(v13, "-[RPFileTransferSession _largeFileReceiveTaskRespond:error:complete:responseHandler:]", 10, "LargeFile receive task completed: TID %llu\n", [v14 taskID]);
  }

LABEL_11:
  fileItem = [respondCopy fileItem];
  [(RPFileTransferSession *)self _processReceivedItem:fileItem responseHandler:v12];

LABEL_14:
  [(RPFileTransferSession *)self _largeFileReceiveTaskInvalidate:respondCopy];
LABEL_15:
  --self->_fileWritesOutstanding;
}

- (void)_largeFileReceiveTaskInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  fileFD = [invalidateCopy fileFD];
  if ((fileFD & 0x80000000) == 0)
  {
    if (!close(fileFD) || *__error() && !*__error())
    {
      goto LABEL_9;
    }

    ucat = self->_ucat;
    if (ucat->var0 > 90)
    {
      goto LABEL_9;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "-[RPFileTransferSession _largeFileReceiveTaskInvalidate:]", 90, "### LargeFile receive close failed: TID %llu, %#m\n", [invalidateCopy taskID]);
LABEL_9:
    [invalidateCopy setFileFD:0xFFFFFFFFLL];
  }

  queue = [invalidateCopy queue];
  [(RPFileTransferSession *)self _ioQueueEnqueue:queue];
}

- (void)_updateLargeFilesTaskResumeState:(id)state data:(id)data sendFlags:(unsigned int)flags error:(id)error complete:(BOOL)complete
{
  flagsCopy = flags;
  stateCopy = state;
  dataCopy = data;
  errorCopy = error;
  if ([(RPFileTransferSession *)self isResumable])
  {
    resumeState = [(RPFileTransferSession *)self resumeState];
    fileItem = [stateCopy fileItem];
    filename = [fileItem filename];
    v16 = [resumeState activeFileWithFileName:filename];

    if (!v16)
    {
LABEL_13:

      goto LABEL_14;
    }

    if (errorCopy)
    {
      if ([errorCopy code] == -71143 || objc_msgSend(errorCopy, "code") == -6753 || objc_msgSend(errorCopy, "code") == -6722)
      {
        [v16 setBytesWritten:{objc_msgSend(v16, "bytesWritten") + objc_msgSend(dataCopy, "length")}];
LABEL_12:
        [resumeState scheduleStateFileFlush];
        goto LABEL_13;
      }

      [v16 setError:errorCopy];
    }

    else
    {
      [v16 setBytesWritten:{objc_msgSend(v16, "bytesWritten") + objc_msgSend(dataCopy, "length")}];
      if ((flagsCopy & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    [resumeState removeActiveFile:v16];
    [resumeState addFinishedFile:v16];
    goto LABEL_12;
  }

LABEL_14:
}

- (id)_compressData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [dataCopy length];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (v28[3])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__RPFileTransferSession__compressData_error___block_invoke;
    aBlock[3] = &unk_1E7C946D0;
    aBlock[4] = &v27;
    v13 = _Block_copy(aBlock);
    v14 = compression_encode_buffer(v28[3], v6, [dataCopy bytes], v6, 0, COMPRESSION_LZ4);
    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x1E695DEF0]);
      v16 = [v15 initWithBytesNoCopy:v28[3] length:v14 freeWhenDone:1];
      v23 = v16;
      if (v16)
      {
        v28[3] = 0;
        v24 = v16;
      }

      else if (error)
      {
        *error = RPErrorF(4294960534, "Data for compress failed: %zu bytes", v17, v18, v19, v20, v21, v22, v14);
      }
    }

    else
    {
      v23 = 0;
      if (error)
      {
        *error = 0;
      }
    }

    v13[2](v13);
  }

  else if (error)
  {
    RPErrorF(4294960553, "malloc compress failed: %zu bytes", v7, v8, v9, v10, v11, v12, v6);
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v27, 8);

  return v23;
}

void __45__RPFileTransferSession__compressData_error___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    free(v1);
  }
}

- (id)_decompressData:(id)data originalSize:(unint64_t)size error:(id *)error
{
  dataCopy = data;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (v34[3])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__RPFileTransferSession__decompressData_originalSize_error___block_invoke;
    aBlock[3] = &unk_1E7C946D0;
    aBlock[4] = &v33;
    v14 = _Block_copy(aBlock);
    if (compression_decode_buffer(v34[3], size, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0, COMPRESSION_LZ4) == size)
    {
      v21 = objc_alloc(MEMORY[0x1E695DEF0]);
      v22 = [v21 initWithBytesNoCopy:v34[3] length:size freeWhenDone:1];
      v29 = v22;
      if (v22)
      {
        v34[3] = 0;
        v30 = v22;
      }

      else if (error)
      {
        *error = RPErrorF(4294960534, "Data for decompress failed: %zu bytes", v23, v24, v25, v26, v27, v28, size);
      }
    }

    else if (error)
    {
      RPErrorF(4294960596, "Decompress failed: %zu -> %zu bytes\n", v15, v16, v17, v18, v19, v20, size);
      *error = v29 = 0;
    }

    else
    {
      v29 = 0;
    }

    v14[2](v14);
  }

  else if (error)
  {
    RPErrorF(4294960553, "malloc decompress failed: %zu bytes", v8, v9, v10, v11, v12, v13, size);
    *error = v29 = 0;
  }

  else
  {
    v29 = 0;
  }

  _Block_object_dispose(&v33, 8);

  return v29;
}

void __60__RPFileTransferSession__decompressData_originalSize_error___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    free(v1);
  }
}

- (id)_encodeAndCompressObject:(id)object originalSize:(unint64_t *)size error:(id *)error
{
  v28 = 0;
  v8 = MEMORY[0x1B8C9E170](object, 0, &v28);
  v15 = v8;
  if (!v8)
  {
    if (error)
    {
      RPErrorF(4294960534, "OPACK encode for compress failed: %#m", v9, v10, v11, v12, v13, v14, v28);
LABEL_13:
      *error = v24 = 0;
      goto LABEL_6;
    }

LABEL_14:
    v24 = 0;
    goto LABEL_6;
  }

  v16 = [v8 length];
  if (!v16)
  {
    if (error)
    {
      RPErrorF(4294960553, "OPACK encode for compress empty", v17, v18, v19, v20, v21, v22, v27);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  *size = v16;
  v23 = [(RPFileTransferSession *)self _compressData:v15 error:error];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

LABEL_6:

  return v24;
}

- (id)_ioQueueDequeue
{
  popFirstObject = [(NSMutableArray *)self->_ioQueues popFirstObject];
  if (!popFirstObject)
  {
    v4 = self->_metricTotalIOQueues + 1;
    self->_metricTotalIOQueues = v4;
    v5 = NSPrintF("RPFile-%@-IO-%u", self->_targetID, v4);
    uTF8String = [v5 UTF8String];

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    popFirstObject = dispatch_queue_create(uTF8String, v7);

    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_4:
        LogPrintF(ucat, "[RPFileTransferSession _ioQueueDequeue]", 30, "I/O dispatch queue created: %u total\n", self->_metricTotalIOQueues);
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:

  return popFirstObject;
}

- (int)_openReadFileItem:(id)item error:(id *)error
{
  itemCopy = item;
  stringByStandardizingPath = [(NSString *)self->_receiveFileParentPath stringByStandardizingPath];
  if (stringByStandardizingPath)
  {
    filename = [itemCopy filename];
    if (filename)
    {
      v15 = [stringByStandardizingPath stringByAppendingPathComponent:filename];
      stringByStandardizingPath2 = [v15 stringByStandardizingPath];

      if (([stringByStandardizingPath2 hasPrefix:stringByStandardizingPath] & 1) == 0)
      {
        if (error)
        {
          *error = RPErrorF(4294960592, "Out of parent", v17, v18, v19, v20, v21, v22, v27);
        }

        v23 = -1;
        goto LABEL_9;
      }
    }

    else
    {
      v24 = atomic_fetch_add(&self->_fileIDLastReceive, 1uLL) + 1;
      stringByStandardizingPath2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%llu.rpftf", stringByStandardizingPath, v24];
    }

    v25 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:stringByStandardizingPath2 isDirectory:0];
    [itemCopy setItemURL:v25];

    v23 = -[RPFileTransferSession _openReadPath:error:](self, "_openReadPath:error:", [stringByStandardizingPath2 fileSystemRepresentation], error);
LABEL_9:

    goto LABEL_10;
  }

  if (error)
  {
    *error = RPErrorF(4294960551, "No receive parent path", v7, v8, v9, v10, v11, v12, v27);
  }

  v23 = -1;
LABEL_10:

  return v23;
}

- (int)_openReadPath:(const char *)path error:(id *)error
{
  v7 = open(path, 0);
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  if (!*__error())
  {
    v14 = 4294960596;
    goto LABEL_11;
  }

  v14 = *__error();
  if (v14)
  {
LABEL_11:
    if (error)
    {
      *error = RPErrorF(v14, "open failed", v8, v9, v10, v11, v12, v13, v18);
    }

    return -1;
  }

LABEL_4:
  if (fcntl(v7, 48, 1) && (!*__error() || *__error()))
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 != -1)
      {
LABEL_9:
        LogPrintF(ucat, "[RPFileTransferSession _openReadPath:error:]", 90, "### F_NOCACHE failed: '%s', %#m\n", path);
        goto LABEL_15;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_9;
      }
    }
  }

LABEL_15:
  if (fcntl(v7, 45, 1) && (!*__error() || *__error()))
  {
    v16 = self->_ucat;
    if (v16->var0 <= 90)
    {
      if (v16->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return v7;
        }

        v16 = self->_ucat;
      }

      LogPrintF(v16, "[RPFileTransferSession _openReadPath:error:]", 90, "### F_RDAHEAD failed: '%s', %#m\n", path);
    }
  }

  return v7;
}

- (int)_openWriteFileItem:(id)item size:(int64_t)size truncate:(BOOL)truncate error:(id *)error
{
  truncateCopy = truncate;
  itemCopy = item;
  stringByStandardizingPath = [(NSString *)self->_receiveFileParentPath stringByStandardizingPath];
  if (stringByStandardizingPath)
  {
    filename = [itemCopy filename];
    if (filename)
    {
      v19 = [stringByStandardizingPath stringByAppendingPathComponent:filename];
      stringByStandardizingPath2 = [v19 stringByStandardizingPath];

      if (([stringByStandardizingPath2 hasPrefix:stringByStandardizingPath] & 1) == 0)
      {
        if (error)
        {
          *error = RPErrorF(4294960592, "Out of parent", v21, v22, v23, v24, v25, v26, v31);
        }

        v27 = -1;
        goto LABEL_9;
      }
    }

    else
    {
      v28 = atomic_fetch_add(&self->_fileIDLastReceive, 1uLL) + 1;
      stringByStandardizingPath2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%llu.rpftf", stringByStandardizingPath, v28];
    }

    v29 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:stringByStandardizingPath2 isDirectory:0];
    [itemCopy setItemURL:v29];

    v27 = [(RPFileTransferSession *)self _openWritePath:stringByStandardizingPath2 size:size truncate:truncateCopy error:error];
LABEL_9:

    goto LABEL_10;
  }

  if (error)
  {
    *error = RPErrorF(4294960551, "No receive parent path", v11, v12, v13, v14, v15, v16, v31);
  }

  v27 = -1;
LABEL_10:

  return v27;
}

- (int)_openWritePath:(id)path size:(int64_t)size truncate:(BOOL)truncate error:(id *)error
{
  truncateCopy = truncate;
  pathCopy = path;
  uTF8String = [pathCopy UTF8String];
  if (!uTF8String)
  {
    if (!error)
    {
      goto LABEL_15;
    }

    v31 = "Bad file path UTF-8";
    v32 = 4294960592;
    goto LABEL_14;
  }

  v18 = uTF8String;
  if (truncateCopy)
  {
    v19 = open(uTF8String, 1537, 384);
  }

  else
  {
    v19 = open(uTF8String, 513, 384);
  }

  v20 = v19;
  if (v19 < 0)
  {
    if (*__error())
    {
      v21 = *__error();
      if (v21 == 2)
      {
        stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v39 = 0;
        v24 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v39];
        v25 = v39;

        if ((v24 & 1) == 0)
        {
          [(RPFileTransferSession *)error _openWritePath:stringByDeletingLastPathComponent size:v25 truncate:v26 error:v27, v28, v29, v30];
          goto LABEL_15;
        }

        v37 = 384;
        v20 = open(v18, 1537);
        if (v20 < 0)
        {
          if (*__error())
          {
            v21 = *__error();
          }

          else
          {
            v21 = 4294960596;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      if (!v21)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v21 = 4294960596;
    }

    if (!error)
    {
LABEL_15:
      v20 = -1;
      goto LABEL_43;
    }

    v31 = "Open file failed";
    v32 = v21;
LABEL_14:
    *error = RPErrorF(v32, v31, v12, v13, v14, v15, v16, v17, v37);
    goto LABEL_15;
  }

LABEL_21:
  if (size < 1)
  {
    goto LABEL_43;
  }

  if (fcntl(v20, 48, 1) && (!*__error() || *__error()))
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 != -1)
      {
LABEL_27:
        LogPrintF(ucat, "[RPFileTransferSession _openWritePath:size:truncate:error:]", 90, "### F_NOCACHE failed: '%s', %#m\n", pathCopy);
        goto LABEL_29;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_27;
      }
    }
  }

LABEL_29:
  if (fcntl(v20, 76, 1) && (!*__error() || *__error()))
  {
    v34 = self->_ucat;
    if (v34->var0 <= 90)
    {
      if (v34->var0 != -1)
      {
LABEL_34:
        LogPrintF(v34, "[RPFileTransferSession _openWritePath:size:truncate:error:]", 90, "### F_SINGLE_WRITER failed: '%s', %#m\n", pathCopy);
        goto LABEL_36;
      }

      if (_LogCategory_Initialize())
      {
        v34 = self->_ucat;
        goto LABEL_34;
      }
    }
  }

LABEL_36:
  v38[2] = size;
  v38[3] = 0;
  v38[0] = 0x300000002;
  v38[1] = 0;
  if (fcntl(v20, 42, v38) && (!*__error() || *__error()))
  {
    v35 = self->_ucat;
    if (v35->var0 <= 90)
    {
      if (v35->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_43;
        }

        v35 = self->_ucat;
      }

      LogPrintF(v35, "[RPFileTransferSession _openWritePath:size:truncate:error:]", 90, "### F_PREALLOCATE failed: '%s', %lld bytes, %#m\n", pathCopy, size);
    }
  }

LABEL_43:

  return v20;
}

- (id)_readFD:(int)d size:(unint64_t)size error:(id *)error
{
  v7 = *&d;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (v29[3])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__RPFileTransferSession__readFD_size_error___block_invoke;
    aBlock[3] = &unk_1E7C946D0;
    aBlock[4] = &v28;
    v15 = _Block_copy(aBlock);
    if ([(RPFileTransferSession *)self _readFD:v7 buffer:v29[3] size:size error:error])
    {
      v16 = objc_alloc(MEMORY[0x1E695DEF0]);
      v17 = [v16 initWithBytesNoCopy:v29[3] length:size freeWhenDone:1];
      v24 = v17;
      if (v17)
      {
        v29[3] = 0;
        v25 = v17;
      }

      else if (error)
      {
        *error = RPErrorF(4294960568, "NSData failed: %zu bytes", v18, v19, v20, v21, v22, v23, size);
      }
    }

    else
    {
      v24 = 0;
    }

    v15[2](v15);
  }

  else if (error)
  {
    RPErrorF(4294960553, "malloc failed: %zu bytes", v9, v10, v11, v12, v13, v14, size);
    *error = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(&v28, 8);

  return v24;
}

void __44__RPFileTransferSession__readFD_size_error___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    free(v1);
  }
}

- (BOOL)_readFD:(int)d buffer:(char *)buffer size:(unint64_t)size error:(id *)error
{
  if (!size)
  {
    return 1;
  }

  sizeCopy = size;
  v9 = *&d;
  while (1)
  {
    v10 = read(v9, buffer, sizeCopy);
    if (v10 >= 1)
    {
      buffer += v10;
      sizeCopy -= v10;
      goto LABEL_8;
    }

    if (!v10)
    {
      break;
    }

    if (!*__error())
    {
      v23 = 4294960596;
LABEL_14:
      if (error)
      {
        RPErrorF(v23, "read failed: FD %d, %#m", v17, v18, v19, v20, v21, v22, v9);
        goto LABEL_16;
      }

      return 0;
    }

    v23 = *__error();
    if (v23 != 4)
    {
      goto LABEL_14;
    }

LABEL_8:
    if (!sizeCopy)
    {
      return 1;
    }
  }

  if (error)
  {
    RPErrorF(4294960546, "read premature EOF: FD %d", v11, v12, v13, v14, v15, v16, v9);
    v25 = LABEL_16:;
    v26 = v25;
    result = 0;
    *error = v25;
    return result;
  }

  return 0;
}

- (BOOL)_writeFD:(int)d buffer:(const char *)buffer size:(unint64_t)size error:(id *)error
{
  if (!size)
  {
    return 1;
  }

  sizeCopy = size;
  v9 = *&d;
  while (1)
  {
    v10 = write(v9, buffer, sizeCopy);
    if (v10 >= 1)
    {
      buffer += v10;
      sizeCopy -= v10;
      goto LABEL_7;
    }

    if (!*__error())
    {
      break;
    }

    v17 = *__error();
    if (v17 != 4)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!sizeCopy)
    {
      return 1;
    }
  }

  v17 = 4294960596;
LABEL_11:
  if (!error)
  {
    return 0;
  }

  v19 = RPErrorF(v17, "write failed: FD %d, %#m", v11, v12, v13, v14, v15, v16, v9);
  v20 = v19;
  result = 0;
  *error = v19;
  return result;
}

- (BOOL)_truncateFD:(int)d size:(int64_t)size error:(id *)error
{
  v6 = *&d;
  v7 = ftruncate(d, size);
  if (v7)
  {
    if (!*__error())
    {
      v14 = 4294960596;
      if (!error)
      {
        return v7 == 0;
      }

      goto LABEL_4;
    }

    v14 = *__error();
    if (error)
    {
LABEL_4:
      *error = RPErrorF(v14, "ftruncate failed: FD %d, %#m", v8, v9, v10, v11, v12, v13, v6);
    }
  }

  return v7 == 0;
}

- (id)_modTimeForFileWithPath:(const char *)path error:(id *)error
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (path)
  {
    memset(&v18, 0, sizeof(v18));
    if (!stat(path, &v18))
    {
LABEL_5:
      tv_nsec = v18.st_mtimespec.tv_nsec;
      v19[0] = @"_fMt";
      v12 = [MEMORY[0x1E696AD98] numberWithLong:v18.st_mtimespec.tv_sec];
      v19[1] = @"_fMtNs";
      v20[0] = v12;
      v13 = [MEMORY[0x1E696AD98] numberWithLong:tv_nsec];
      v20[1] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

      goto LABEL_6;
    }

    if (*__error())
    {
      v10 = *__error();
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = 4294960596;
    }

    if (error)
    {
      pathCopy = path;
      v16 = "stat failed: '%s'";
LABEL_12:
      RPErrorF(v10, v16, path, error, v4, v5, v6, v7, pathCopy);
      *error = v14 = 0;
      goto LABEL_6;
    }
  }

  else if (error)
  {
    v16 = "Bad file path UTF-8";
    v10 = 4294960592;
    goto LABEL_12;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (void)_reportProgressControlState
{
  controlState = self->_controlState;
  state = [(RPConnection *)self->_controlCnx state];
  if (state == controlState)
  {
    return;
  }

  v5 = state;
  ucat = OUTLINED_FUNCTION_1_2();
  if (v9 ^ v10 | v8)
  {
    if (v7 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      ucat = self->_ucat;
    }

    v11 = "?";
    if (controlState == 1)
    {
      v12 = "Ready";
    }

    else
    {
      v12 = "?";
    }

    if (!controlState)
    {
      v12 = "Unknown";
    }

    if (v5 == 1)
    {
      v11 = "Ready";
    }

    if (!v5)
    {
      v11 = "Unknown";
    }

    LogPrintF(ucat, "[RPFileTransferSession _reportProgressControlState]", 30, "Control state changed: %s -> %s\n", v12, v11);
  }

LABEL_16:
  self->_controlState = v5;
  linkType = [(RPConnection *)self->_controlCnx linkType];
  v14 = mach_absolute_time();
  metricTicksConnectStart = self->_metricTicksConnectStart;
  if (metricTicksConnectStart)
  {
    self->_metricTicksConnected += v14 - metricTicksConnectStart;
  }

  if (v5 == 1)
  {
    v16 = 476;
    if (linkType == 8)
    {
      v16 = 480;
    }

    if (linkType == 4)
    {
      v16 = 472;
    }

    v17 = *(&self->super.isa + v16);
    self->_metricTicksConnectStart = v14;
    *(&self->super.isa + v16) = v17 + 1;
    if (self->_prefCompress)
    {
      appInfoPeer = [(RPConnection *)self->_controlCnx appInfoPeer];
      Int64 = CFDictionaryGetInt64();

      v20 = (Int64 >> 8) & 1;
    }

    else
    {
      LODWORD(v20) = 0;
    }

    if (self->_compressionEnabled == v20)
    {
      goto LABEL_39;
    }

    v22 = OUTLINED_FUNCTION_1_2();
    if (!(v9 ^ v10 | v8))
    {
LABEL_38:
      self->_compressionEnabled = v20;
LABEL_39:
      v21 = 10;
      goto LABEL_40;
    }

    if (v23 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_38;
      }

      v22 = self->_ucat;
    }

    v24 = "yes";
    if (v20)
    {
      v25 = "no";
    }

    else
    {
      v25 = "yes";
    }

    if (!v20)
    {
      v24 = "no";
    }

    LogPrintF(v22, "[RPFileTransferSession _reportProgressControlState]", 30, "Compression: %s -> %s\n", v25, v24);
    goto LABEL_38;
  }

  ++self->_metricDisconnects;
  self->_metricTicksConnectStart = 0;
  v21 = 11;
LABEL_40:
  [(RPFileTransferSession *)self _reportProgressType:v21];
  [(RPFileTransferSession *)self _updateWiFi];
  if ((self->_flags & 0x80) != 0 && !self->_lockedInterface)
  {
    if (linkType != 8)
    {
      if (linkType != 4)
      {
LABEL_57:
        self->_lockedInterface = 1;
        return;
      }

      v26 = OUTLINED_FUNCTION_1_2();
      if (!(v9 ^ v10 | v8))
      {
        goto LABEL_53;
      }

      if (v27 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_53;
        }

        v26 = self->_ucat;
      }

      LogPrintF(v26, "[RPFileTransferSession _reportProgressControlState]", 30, "Locking network interface to AWDL\n");
LABEL_53:
      self->_flags |= 0x60u;
      bonjourBrowser = self->_bonjourBrowser;
      v31 = [(CUBonjourBrowser *)bonjourBrowser browseFlags]| 0x60000000000000;
      v32 = bonjourBrowser;
LABEL_56:
      [(CUBonjourBrowser *)v32 setBrowseFlags:v31];
      goto LABEL_57;
    }

    v28 = OUTLINED_FUNCTION_1_2();
    if (v9 ^ v10 | v8)
    {
      if (v29 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_55;
        }

        v28 = self->_ucat;
      }

      LogPrintF(v28, "[RPFileTransferSession _reportProgressControlState]", 30, "Locking network interface to USB\n");
    }

LABEL_55:
    self->_flags |= 0x30u;
    [(CUBonjourAdvertiser *)self->_bonjourAdvertiser setAdvertiseFlags:[(CUBonjourAdvertiser *)self->_bonjourAdvertiser advertiseFlags]& 0xFBFFFFFFFFFFFFFFLL];
    v33 = [(CUBonjourBrowser *)self->_bonjourBrowser browseFlags]& 0xFBFFFFFFFFFFFFFFLL;
    v32 = self->_bonjourBrowser;
    v31 = v33 | 0x30000000000000;
    goto LABEL_56;
  }
}

- (void)_debugSetup
{
  if (IsAppleInternalBuild())
  {
    if (self->_debugNotifyToken == -1)
    {
      OUTLINED_FUNCTION_0_4();
      v9 = 3221225472;
      v10 = __36__RPFileTransferSession__debugSetup__block_invoke;
      v11 = &unk_1E7C942A8;
      selfCopy = self;
      notify_register_dispatch("com.apple.rapport.ftdebug", v3, v4, handler);
      debugNotifyToken = self->_debugNotifyToken;
      state64 = 0;
      notify_get_state(debugNotifyToken, &state64);
      debugFlags = state64;
      self->_debugFlags = state64;
      if (debugFlags)
      {
        ucat = self->_ucat;
        if (ucat->var0 <= 30)
        {
          if (ucat->var0 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_8;
            }

            ucat = self->_ucat;
            debugFlags = self->_debugFlags;
          }

          LogPrintF(ucat, "[RPFileTransferSession _debugSetup]", 30, "Debug flags initial: %#ll{flags}\n", debugFlags, &unk_1B6F2E4EC);
        }

LABEL_8:
        [(RPFileTransferSession *)self _debugUpdate];
      }
    }
  }
}

- (void)_controlCnxStartIfNeeded
{
  if (!self->_controlCnx)
  {
    v3 = self->_bonjourDevice;
    if (!v3)
    {
LABEL_12:

      return;
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[RPFileTransferSession _controlCnxStartIfNeeded]", 30, "Control cnx start: %@\n", v3);
    }

LABEL_7:
    controlRetryTimer = self->_controlRetryTimer;
    if (controlRetryTimer)
    {
      v6 = controlRetryTimer;
      dispatch_source_cancel(v6);
      v7 = self->_controlRetryTimer;
      self->_controlRetryTimer = 0;
    }

    v8 = objc_alloc_init(RPConnection);
    controlCnx = self->_controlCnx;
    self->_controlCnx = v8;

    if (self->_prefCompress)
    {
      [(RPConnection *)v8 setAppInfoSelf:&unk_1F2EEC968];
    }

    [(RPConnection *)v8 setBonjourPeerDevice:v3];
    [(RPConnection *)v8 setControlFlags:[(RPConnection *)v8 controlFlags]| 0x60000200];
    [(RPConnection *)v8 setDispatchQueue:self->_dispatchQueue];
    [(RPConnection *)v8 setForcedPeerIdentity:self->_peerIdentity];
    [(RPConnection *)v8 setForcedSelfIdentity:self->_selfIdentity];
    [(RPConnection *)v8 setKeepAliveSeconds:30];
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    targetID = self->_targetID;
    v12 = self->_cnxIDLast + 1;
    self->_cnxIDLast = v12;
    v13 = [v10 initWithFormat:@"RPFileCnx-%@-Out-%u", targetID, v12];
    [(RPConnection *)v8 setLabel:v13];

    [(RPConnection *)v8 setPeerIdentifier:self->_targetID];
    [(RPConnection *)v8 setPresent:1];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke;
    v22[3] = &unk_1E7C92D80;
    v22[4] = v8;
    v22[5] = self;
    [(RPConnection *)v8 setInvalidationHandler:v22];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke_2;
    v21[3] = &unk_1E7C94348;
    v21[4] = v8;
    v21[5] = self;
    [(RPConnection *)v8 setReceivedEventHandler:v21];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke_3;
    v20[3] = &unk_1E7C94370;
    v20[4] = v8;
    v20[5] = self;
    [(RPConnection *)v8 setReceivedRequestHandler:v20];
    OUTLINED_FUNCTION_0_4();
    v15 = 3221225472;
    v16 = __49__RPFileTransferSession__controlCnxStartIfNeeded__block_invoke_4;
    v17 = &unk_1E7C94398;
    v18 = v8;
    selfCopy = self;
    [(RPConnection *)v8 setStateChangedHandler:v14];
    [(RPConnection *)v8 activate];

    goto LABEL_12;
  }
}

- (id)_decompressAndDecodeData:(id)data originalSize:(unint64_t)size error:(id *)error
{
  v6 = [(RPFileTransferSession *)self _decompressData:data originalSize:size error:?];
  if (v6)
  {
    v7 = OPACKDecodeData();
    v14 = v7;
    if (v7)
    {
      v15 = v7;
    }

    else if (error)
    {
      *error = RPErrorF(4294960534, "OPACK decode for decompress failed: %#m", v8, v9, v10, v11, v12, v13, 0);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_readPath:(const char *)path size:(unint64_t)size error:(id *)error
{
  if (size)
  {
    v8 = [(RPFileTransferSession *)self _openReadPath:path error:error];
    if ((v8 & 0x80000000) != 0)
    {
      data = 0;
    }

    else
    {
      v9 = v8;
      data = [(RPFileTransferSession *)self _readFD:v8 size:size error:error];
      close(v9);
    }
  }

  else
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  return data;
}

- (void)_activateAndReturnError:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    *a1 = RPNestedErrorF(a2, 4294960592, "Caches directory failed", a4, a5, a6, a7, a8, v10);
  }
}

- (int)_receivedEventID:(uint64_t)a1 event:(uint64_t)a2 options:.cold.1(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 152);
  if (*result <= 60)
  {
    if (*result != -1)
    {
      return LogPrintF(result, "[RPFileTransferSession _receivedEventID:event:options:]", 60, "### Received event no handler: %@\n", a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      result = *(a1 + 152);
      return LogPrintF(result, "[RPFileTransferSession _receivedEventID:event:options:]", 60, "### Received event no handler: %@\n", a2);
    }
  }

  return result;
}

- (void)_activateTargetAndReturnError:(uint64_t)a3 .cold.1(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = RPNestedErrorF(a2, 4294960567, "Start TCP server failed", a4, a5, a6, a7, a8, v9);
    *v8 = result;
  }

  return result;
}

- (void)_openWritePath:(void *)a3 size:(uint64_t)a4 truncate:(uint64_t)a5 error:(uint64_t)a6 .cold.1(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    *a1 = RPNestedErrorF(a3, 4294960592, "Create parent failed", a4, a5, a6, a7, a8, v11);
  }
}

@end