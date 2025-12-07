@interface STExtractionService
+ (void)addActiveExtractionService:(id)service;
+ (void)removeExtractionService:(id)service;
+ (void)setProcessTerminated;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (NSXPCConnection)xpcConnection;
- (id)initForClient:(id)client connection:(id)connection;
- (void)_checkProcessTerminated;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)extractionCompleteAtArchivePath:(id)path;
- (void)extractionEnteredPassthroughMode;
- (void)invalidate;
- (void)processTerminated;
- (void)remote_finishStreamWithCompletionBlock:(id)block;
- (void)remote_prepareForExtractionToPath:(id)path sandboxExtensionToken:(id)token options:(id)options withCompletionBlock:(id)block;
- (void)remote_supplyBytes:(id)bytes withCompletionBlock:(id)block;
- (void)remote_suspendStreamWithCompletionBlock:(id)block;
- (void)remote_terminateStreamWithError:(id)error completionBlock:(id)block;
- (void)setExtractionProgress:(double)progress;
@end

@implementation STExtractionService

+ (void)addActiveExtractionService:(id)service
{
  serviceCopy = service;
  v5 = sub_100000DA8(serviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = [serviceCopy sessionID];
    v13 = 136446722;
    v14 = "+[STExtractionService addActiveExtractionService:]";
    v15 = 2112;
    v16 = sessionID;
    v17 = 2112;
    v18 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [%@] %@", &v13, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (qword_10000D030)
  {
    v8 = [qword_10000D030 addObject:serviceCopy];
  }

  else
  {
    v9 = [NSMutableSet setWithObject:serviceCopy];
    v10 = qword_10000D030;
    qword_10000D030 = v9;
  }

  v11 = sub_100000DA8(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [qword_10000D030 count];
    v13 = 136446466;
    v14 = "+[STExtractionService addActiveExtractionService:]";
    v15 = 2048;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: %lu services", &v13, 0x16u);
  }

  objc_sync_exit(selfCopy);
}

+ (void)removeExtractionService:(id)service
{
  serviceCopy = service;
  v5 = sub_100000DA8(serviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = [serviceCopy sessionID];
    v10 = 136446722;
    v11 = "+[STExtractionService removeExtractionService:]";
    v12 = 2112;
    v13 = sessionID;
    v14 = 2112;
    v15 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: [%@] %@", &v10, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (qword_10000D030)
  {
    v8 = sub_100000DA8([qword_10000D030 removeObject:serviceCopy]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [qword_10000D030 count];
      v10 = 136446466;
      v11 = "+[STExtractionService removeExtractionService:]";
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: %lu services remaining", &v10, 0x16u);
    }
  }

  objc_sync_exit(selfCopy);
}

+ (void)setProcessTerminated
{
  processTerminated = 1;
  selfCopy = self;
  v3 = objc_sync_enter(selfCopy);
  if (qword_10000D030)
  {
    v4 = sub_100000DA8(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "+[STExtractionService setProcessTerminated]";
      v7 = 2048;
      v8 = [qword_10000D030 count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: suspending %lu extractions", &v5, 0x16u);
    }

    [qword_10000D030 enumerateObjectsUsingBlock:&stru_1000083D0];
  }

  objc_sync_exit(selfCopy);
}

- (id)initForClient:(id)client connection:(id)connection
{
  clientCopy = client;
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = STExtractionService;
  v8 = [(STExtractionService *)&v18 init];
  if (v8)
  {
    clientCopy = [NSString stringWithFormat:@"StreamingExtraction session on behalf of %@", clientCopy];
    [clientCopy UTF8String];
    v10 = os_transaction_create();
    v11 = *(v8 + 1);
    *(v8 + 1) = v10;

    v12 = dispatch_queue_create("com.apple.StreamingExtractor.STExtractionServiceMessageQueue", 0);
    v13 = *(v8 + 5);
    *(v8 + 5) = v12;

    if (*(v8 + 5))
    {
      [v8 setSandboxToken:-1];
      *(v8 + 17) = 1;
      if (connectionCopy)
      {
        objc_storeWeak(v8 + 3, connectionCopy);
        v8[16] = 1;
        objc_msgSend_auditToken(connectionCopy);
        *(v8 + 4) = v16;
        *(v8 + 5) = v17;
      }

      else
      {
        *&v14 = -1;
        *(&v14 + 1) = -1;
        *(v8 + 4) = v14;
        *(v8 + 5) = v14;
      }
    }

    else
    {
      sub_100003AA8(v8);
      v8 = 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  sessionTransaction = self->_sessionTransaction;
  self->_sessionTransaction = 0;

  if ([(STExtractionService *)self sandboxToken]!= -1)
  {
    [(STExtractionService *)self sandboxToken];
    sandbox_extension_release();
    [(STExtractionService *)self setSandboxToken:-1];
  }

  v4.receiver = self;
  v4.super_class = STExtractionService;
  [(STExtractionService *)&v4 dealloc];
}

- (void)connectionInvalidated
{
  messageQueue = [(STExtractionService *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001FF4;
  block[3] = &unk_100008438;
  block[4] = self;
  dispatch_async(messageQueue, block);
}

- (void)invalidate
{
  self->_extractionValid = 0;
  v3 = objc_opt_class();

  [v3 removeExtractionService:self];
}

- (void)processTerminated
{
  if (processTerminated == 1)
  {
    block[7] = v2;
    block[8] = v3;
    messageQueue = [(STExtractionService *)self messageQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000219C;
    block[3] = &unk_100008438;
    block[4] = self;
    dispatch_async(messageQueue, block);
  }
}

- (void)_checkProcessTerminated
{
  if (processTerminated == 1 && [(STExtractionService *)self extractionValid])
  {
    plugin = [(STExtractionService *)self plugin];

    if (plugin)
    {
      if ([(STExtractionService *)self extractionPrepared])
      {
        plugin2 = [(STExtractionService *)self plugin];
        [plugin2 suspendStreamWithCompletionBlock:&stru_100008458];
      }

      [(STExtractionService *)self invalidate];
    }

    else
    {
      sub_100003B70(v4);
    }
  }
}

- (void)remote_prepareForExtractionToPath:(id)path sandboxExtensionToken:(id)token options:(id)options withCompletionBlock:(id)block
{
  pathCopy = path;
  tokenCopy = token;
  optionsCopy = options;
  blockCopy = block;
  messageQueue = [(STExtractionService *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000236C;
  block[3] = &unk_1000084D0;
  v22 = pathCopy;
  v23 = blockCopy;
  block[4] = self;
  v20 = optionsCopy;
  v21 = tokenCopy;
  v15 = pathCopy;
  v16 = tokenCopy;
  v17 = optionsCopy;
  v18 = blockCopy;
  dispatch_async(messageQueue, block);
}

- (void)remote_supplyBytes:(id)bytes withCompletionBlock:(id)block
{
  bytesCopy = bytes;
  blockCopy = block;
  messageQueue = [(STExtractionService *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000030E4;
  block[3] = &unk_100008520;
  block[4] = self;
  v12 = bytesCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = bytesCopy;
  dispatch_async(messageQueue, block);
}

- (void)remote_suspendStreamWithCompletionBlock:(id)block
{
  blockCopy = block;
  messageQueue = [(STExtractionService *)self messageQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000337C;
  v7[3] = &unk_100008548;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(messageQueue, v7);
}

- (void)remote_finishStreamWithCompletionBlock:(id)block
{
  blockCopy = block;
  messageQueue = [(STExtractionService *)self messageQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000034AC;
  v7[3] = &unk_100008548;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(messageQueue, v7);
}

- (void)remote_terminateStreamWithError:(id)error completionBlock:(id)block
{
  errorCopy = error;
  blockCopy = block;
  messageQueue = [(STExtractionService *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003600;
  block[3] = &unk_100008520;
  block[4] = self;
  v12 = errorCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = errorCopy;
  dispatch_async(messageQueue, block);
}

- (void)setExtractionProgress:(double)progress
{
  xpcConnection = [(STExtractionService *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];
  [remoteObjectProxy remote_setExtractionProgress:progress];
}

- (void)extractionCompleteAtArchivePath:(id)path
{
  pathCopy = path;
  xpcConnection = [(STExtractionService *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];
  [remoteObjectProxy remote_extractionCompleteAtArchivePath:pathCopy];
}

- (void)extractionEnteredPassthroughMode
{
  xpcConnection = [(STExtractionService *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];
  [remoteObjectProxy remote_extractionEnteredPassthroughMode];
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[2].var0[4];
  *retstr->var0 = *self[2].var0;
  *&retstr->var0[4] = v3;
  return self;
}

@end