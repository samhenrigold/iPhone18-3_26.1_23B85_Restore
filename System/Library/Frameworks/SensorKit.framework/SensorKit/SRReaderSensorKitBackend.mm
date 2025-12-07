@interface SRReaderSensorKitBackend
+ (id)clientInterface;
+ (id)connectionToEndpoint;
+ (id)remoteInterface;
+ (void)initialize;
- (NSXPCConnection)connection;
- (SRReaderSensorKitBackend)init;
- (SRReaderSensorKitBackend)initWithSensor:(id)sensor xpcConnection:(id)connection;
- (id)datastore;
- (void)continueFetchRequest:(void *)request from:(uint64_t)from to:(double)to withDatastoreFiles:(double)files callback:;
- (void)dealloc;
- (void)fetch:(id)fetch withCallback:(id)callback;
- (void)fetchDevices:(id)devices reply:(id)reply;
- (void)fetchReaderMetadata:(id)metadata reply:(id)reply;
- (void)fetchSampleBytesFrom:(uint64_t)from to:(void *)to inSegment:(uint64_t)segment fetchRequest:(double)request retryAttempt:(double)attempt sampleCallback:;
- (void)resetDatastoreFiles:(id)files;
- (void)setupConnection;
- (void)startRecording:(id)recording reply:(id)reply;
- (void)stopRecording:(id)recording reply:(id)reply;
@end

@implementation SRReaderSensorKitBackend

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogSensorKitBackend = os_log_create("com.apple.SensorKit", "SensorKitReaderBackend");
  }
}

- (SRReaderSensorKitBackend)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48CC2E8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{v5, v6, objc_opt_class(), 0), sel_resetDatastoreFiles_, 0, 0}];
  return v2;
}

+ (id)remoteInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F48D7B28];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v3 forSelector:"setWithObjects:" argumentIndex:v4 ofReply:{v5, v6, v7, objc_opt_class(), 0), sel_requestFileHandleForReading_reply_, 0, 1}];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v8 forSelector:"setWithObjects:" argumentIndex:v9 ofReply:{v10, v11, v12, objc_opt_class(), 0), sel_requestFileHandleForReading_afterSegment_reply_, 0, 1}];
  [v2 setClasses:objc_msgSend(MEMORY[0x1E695DFD8] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_startRecording_reply_, 0, 1}];
  [v2 setClasses:objc_msgSend(MEMORY[0x1E695DFD8] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_stopRecording_reply_, 0, 1}];
  [v2 setClasses:objc_msgSend(MEMORY[0x1E695DFD8] forSelector:"setWithObjects:" argumentIndex:objc_opt_class() ofReply:{0), sel_fetchAllDevices_reply_, 1, 1}];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  [v2 setClasses:objc_msgSend(v13 forSelector:"setWithObjects:" argumentIndex:v14 ofReply:{v15, v16, objc_opt_class(), 0), sel_fetchReaderMetadata_reply_, 0, 1}];
  return v2;
}

+ (id)connectionToEndpoint
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SensorKit.reader" options:4096];

  return v2;
}

- (void)setupConnection
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_INFO))
  {
    sensor = self->_sensor;
    LODWORD(buf.receiver) = 138543362;
    *(&buf.receiver + 4) = sensor;
    _os_log_impl(&dword_1C914D000, v3, OS_LOG_TYPE_INFO, "[%{public}@] Setting up connection to daemon", &buf, 0xCu);
  }

  connection = self->_connection;
  -[NSXPCConnection setRemoteObjectInterface:](connection, "setRemoteObjectInterface:", [objc_opt_class() remoteInterface]);
  v6 = objc_alloc(objc_opt_self());
  if (v6)
  {
    buf.receiver = v6;
    buf.super_class = SRSensorReaderClient;
    v7 = [(SRReaderSensorKitBackend *)&buf init];
    v8 = v7;
    if (v7)
    {
      objc_storeWeak(&v7->_datastore, self);
    }
  }

  else
  {
    v8 = 0;
  }

  [(NSXPCConnection *)connection setExportedObject:v8];
  -[NSXPCConnection setExportedInterface:](connection, "setExportedInterface:", [objc_opt_class() clientInterface]);
  objc_initWeak(&buf.receiver, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __43__SRReaderSensorKitBackend_setupConnection__block_invoke;
  v15[3] = &unk_1E8330230;
  objc_copyWeak(&v16, &buf.receiver);
  [(NSXPCConnection *)connection setInterruptionHandler:v15];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __43__SRReaderSensorKitBackend_setupConnection__block_invoke_52;
  v13 = &unk_1E8330230;
  objc_copyWeak(&v14, &buf.receiver);
  [(NSXPCConnection *)connection setInvalidationHandler:&v10];
  Weak = objc_loadWeak(&buf.receiver);
  if (Weak)
  {
    Weak[24] = 0;
  }

  [(NSXPCConnection *)connection resume:v10];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&buf.receiver);
}

void __43__SRReaderSensorKitBackend_setupConnection__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v2 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_INFO))
  {
    if (Weak)
    {
      v3 = Weak[4];
    }

    else
    {
      v3 = 0;
    }

    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1C914D000, v2, OS_LOG_TYPE_INFO, "[%{public}@] Connection to daemon has been interrupted.", &v4, 0xCu);
  }
}

void __43__SRReaderSensorKitBackend_setupConnection__block_invoke_52(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v2 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_INFO))
  {
    if (Weak)
    {
      v3 = Weak[4];
    }

    else
    {
      v3 = 0;
    }

    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1C914D000, v2, OS_LOG_TYPE_INFO, "[%{public}@] Connection to daemon has been invalidated.", &v4, 0xCu);
  }

  if (Weak)
  {
    *(Weak + 24) = 1;
  }
}

- (NSXPCConnection)connection
{
  if (self && self->_connectionDidInvalidate)
  {

    self->_connection = [objc_opt_class() connectionToEndpoint];
    self->_deviceDetails = 0;
    [(SRReaderSensorKitBackend *)self setupConnection];
  }

  return self->_connection;
}

- (SRReaderSensorKitBackend)initWithSensor:(id)sensor xpcConnection:(id)connection
{
  v8.receiver = self;
  v8.super_class = SRReaderSensorKitBackend;
  v6 = [(SRReaderSensorKitBackend *)&v8 init];
  if (v6)
  {
    v6->_sensor = [sensor copy];
    objc_sync_enter(v6);
    v6->_connection = connection;
    objc_sync_exit(v6);
  }

  return v6;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];

  self->_datastore = 0;
  objc_setProperty_atomic(self, v3, 0, 40);

  v4.receiver = self;
  v4.super_class = SRReaderSensorKitBackend;
  [(SRReaderSensorKitBackend *)&v4 dealloc];
}

- (void)fetch:(id)fetch withCallback:(id)callback
{
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SRReaderSensorKitBackend_fetch_withCallback___block_invoke;
  v13[3] = &unk_1E83302C8;
  v13[4] = self;
  v13[5] = callback;
  sensor = self->_sensor;
  connection = [(SRReaderSensorKitBackend *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__SRReaderSensorKitBackend_fetch_withCallback___block_invoke_58;
  v12[3] = &unk_1E83302F0;
  v12[5] = fetch;
  v12[6] = v13;
  v12[4] = sensor;
  v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__SRReaderSensorKitBackend_fetch_withCallback___block_invoke_60;
  v10[3] = &unk_1E8330318;
  objc_copyWeak(&v11, &location);
  v10[4] = fetch;
  v10[5] = v13;
  [v9 requestFileHandleForReading:fetch reply:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __47__SRReaderSensorKitBackend_fetch_withCallback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v9 = a7.n128_f64[0];
  v19 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v12 = 1;
    if (a6 == 1)
    {
      (*(*(a1 + 40) + 16))(a7);
    }

    return v12;
  }

  if (!a3)
  {
    v15 = SRLogSensorKitBackend;
    if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_FAULT))
    {
      v16 = *(*(a1 + 32) + 32);
      v17 = 138543362;
      v18 = v16;
      _os_log_fault_impl(&dword_1C914D000, v15, OS_LOG_TYPE_FAULT, "[%{public}@] Received sample with length of 0", &v17, 0xCu);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), a2, 0, a4, a5, 1, 0, [SRError errorWithCode:8194], v9);
    return 0;
  }

  v13 = *(*(a1 + 40) + 16);

  return v13();
}

uint64_t __47__SRReaderSensorKitBackend_fetch_withCallback___block_invoke_58(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = 138543618;
    v10 = v8;
    v11 = 2114;
    v12 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to proxy to remote because %{public}@", &v9, 0x16u);
  }

  v5 = *(a1 + 48);
  [*(a1 + 40) to];
  return (*(v5 + 16))(v5, 0, 0, 0, 0, 1, 0, +[SRError connectionNotFoundError], v6);
}

void __47__SRReaderSensorKitBackend_fetch_withCallback___block_invoke_60(uint64_t a1, void *a2)
{
  Weak = objc_loadWeak((a1 + 48));
  v5 = *(a1 + 32);
  [v5 from];
  v7 = v6;
  [*(a1 + 32) to];
  v9 = *(a1 + 40);

  [(SRReaderSensorKitBackend *)Weak continueFetchRequest:v5 from:a2 to:v9 withDatastoreFiles:v7 callback:v8];
}

- (void)continueFetchRequest:(void *)request from:(uint64_t)from to:(double)to withDatastoreFiles:(double)files callback:
{
  v24 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return;
  }

  v12 = [request objectForKeyedSubscript:0x1F48C0660];
  if (v12)
  {
    v13 = v12;
    [result resetDatastoreFiles:{objc_msgSend(MEMORY[0x1E695DF20], "dictionary")}];
    v14 = *(from + 16);
    fromCopy2 = from;
    v16.n128_f64[0] = files;
    v17 = v13;
LABEL_4:

    v14(fromCopy2, 0, 0, 0, 0, 1, 0, v17, v16);
    return;
  }

  [result resetDatastoreFiles:request];
  if (![result datastore])
  {
    v14 = *(from + 16);
    fromCopy2 = from;
    v16.n128_f64[0] = files;
    v17 = 0;
    goto LABEL_4;
  }

  v18 = [request objectForKeyedSubscript:0x1F48C05C0];
  if (v18 && (v19 = [-[NSFileHandle pathname](v18) lastPathComponent]) != 0)
  {

    [(SRReaderSensorKitBackend *)result fetchSampleBytesFrom:v19 to:a2 inSegment:0 fetchRequest:from retryAttempt:to sampleCallback:files];
  }

  else
  {
    if (request)
    {
      if ([request objectForKeyedSubscript:0x1F48C05C0])
      {
        v20 = SRLogSensorKitBackend;
        if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
        {
          v21 = result[4];
          v22 = 138543362;
          v23 = v21;
          _os_log_error_impl(&dword_1C914D000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get segment name from file handle", &v22, 0xCu);
        }
      }
    }

    (*(from + 16))(from, 0, 0, 0, 0, 1, 0, 0, files);
  }
}

- (void)fetchSampleBytesFrom:(uint64_t)from to:(void *)to inSegment:(uint64_t)segment fetchRequest:(double)request retryAttempt:(double)attempt sampleCallback:
{
  v41 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3052000000;
    v35[3] = __Block_byref_object_copy_;
    v35[4] = __Block_byref_object_dispose_;
    v35[5] = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v34[3] = 0;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3052000000;
    v33[3] = __Block_byref_object_copy_;
    v33[4] = __Block_byref_object_dispose_;
    v33[5] = 0;
    datastore = [self datastore];
    startTimeOfCurrentSegment = [(SRDatastore *)datastore startTimeOfCurrentSegment];
    if (request > attempt || startTimeOfCurrentSegment > attempt)
    {
      (*(segment + 16))(segment, 0, 0, 0, 0, 1, 0, 0, attempt);
    }

    else
    {
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x2020000000;
      *&v32[3] = request;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 1;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __103__SRReaderSensorKitBackend_fetchSampleBytesFrom_to_inSegment_fetchRequest_retryAttempt_sampleCallback___block_invoke;
      v27[3] = &unk_1E8330340;
      v27[6] = v36;
      v27[7] = v35;
      v27[8] = v34;
      v27[9] = v33;
      v27[10] = v32;
      v27[11] = &v28;
      v27[4] = self;
      v27[5] = segment;
      [(SRDatastore *)datastore fetchSamplesFrom:v27 to:request callback:attempt];
      v17 = SRLogSensorKitBackend;
      if (v29[3])
      {
        if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_INFO))
        {
          v18 = self[4];
          *buf = 138543618;
          v38 = v18;
          v39 = 2114;
          v40 = a2;
          _os_log_impl(&dword_1C914D000, v17, OS_LOG_TYPE_INFO, "[%{public}@] Requesting next segment after %{public}@", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v19 = self[4];
        connection = [self connection];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __103__SRReaderSensorKitBackend_fetchSampleBytesFrom_to_inSegment_fetchRequest_retryAttempt_sampleCallback___block_invoke_68;
        v25[3] = &unk_1E8330368;
        v26[1] = to;
        v26[2] = *&attempt;
        v25[7] = segment;
        v25[4] = v19;
        objc_copyWeak(v26, buf);
        v26[3] = *&request;
        v25[5] = a2;
        v25[6] = from;
        v21 = [connection remoteObjectProxyWithErrorHandler:v25];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __103__SRReaderSensorKitBackend_fetchSampleBytesFrom_to_inSegment_fetchRequest_retryAttempt_sampleCallback___block_invoke_69;
        v23[3] = &unk_1E8330390;
        objc_copyWeak(v24, buf);
        v23[5] = segment;
        v23[6] = v32;
        v24[1] = *&attempt;
        v23[4] = from;
        [v21 requestFileHandleForReading:from afterSegment:a2 reply:v23];
        objc_destroyWeak(v24);
        objc_destroyWeak(v26);
        objc_destroyWeak(buf);
      }

      else if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self[4];
        *buf = 138543362;
        v38 = v22;
        _os_log_impl(&dword_1C914D000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ending fetching early due to an error or delegate's intent", buf, 0xCu);
      }

      _Block_object_dispose(&v28, 8);
      _Block_object_dispose(v32, 8);
    }

    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v36, 8);
  }
}

uint64_t __103__SRReaderSensorKitBackend_fetchSampleBytesFrom_to_inSegment_fetchRequest_retryAttempt_sampleCallback___block_invoke(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v46 = *MEMORY[0x1E69E9840];
  if (*(*(a1[6] + 8) + 24) != a5)
  {
    if (a6)
    {
      v39 = a8;
      v41 = 0;
      v35 = MEMORY[0x1E695DFD8];
      v36 = MEMORY[0x1E696ACD0];
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      *(*(a1[7] + 8) + 40) = [v36 unarchivedObjectOfClasses:objc_msgSend(v35 fromData:"setWithObjects:" error:{v13, v14, v15, v16, v17, v18, objc_opt_class(), 0), objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", a5, a6), &v41}];
      v19 = v41;
      if (v41)
      {
        v20 = SRLogSensorKitBackend;
        if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
        {
          v32 = *(a1[4] + 32);
          *buf = 138543618;
          v43 = v32;
          v44 = 2114;
          v45 = v19;
          _os_log_error_impl(&dword_1C914D000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Error trying to unarchive metadata %{public}@", buf, 0x16u);
        }
      }

      v8 = a7;
      a8 = v39;
    }

    else
    {
      *(*(a1[7] + 8) + 40) = 0;
    }

    *(*(a1[6] + 8) + 24) = a5;
  }

  if (*(*(a1[8] + 8) + 24) != v8)
  {
    if (a8)
    {
      v41 = 0;
      v38 = MEMORY[0x1E696ACD0];
      v40 = a8;
      v21 = MEMORY[0x1E695DFD8];
      v22 = objc_opt_class();
      v23 = v8;
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = objc_opt_class();
      v27 = objc_opt_class();
      v28 = objc_opt_class();
      v34 = v24;
      v8 = v23;
      *(*(a1[9] + 8) + 40) = [v38 unarchivedObjectOfClasses:objc_msgSend(v21 fromData:"setWithObjects:" error:{v22, v34, v25, v26, v27, v28, objc_opt_class(), 0), objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", v23, v40), &v41}];
      v29 = v41;
      if (v41)
      {
        v30 = SRLogSensorKitBackend;
        if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
        {
          v33 = *(a1[4] + 32);
          *buf = 138543618;
          v43 = v33;
          v44 = 2114;
          v45 = v29;
          _os_log_error_impl(&dword_1C914D000, v30, OS_LOG_TYPE_ERROR, "[%{public}@] Error trying to unarchive configuration %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      *(*(a1[9] + 8) + 40) = 0;
    }

    *(*(a1[8] + 8) + 24) = v8;
  }

  *(*(a1[10] + 8) + 24) = a2;
  *(*(a1[11] + 8) + 24) = (*(a1[5] + 16))(a2);
  return *(*(a1[11] + 8) + 24);
}

void __103__SRReaderSensorKitBackend_fetchSampleBytesFrom_to_inSegment_fetchRequest_retryAttempt_sampleCallback___block_invoke_68(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) <= 1 && (v4 = [a2 domain], objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E696A250])) && objc_msgSend(a2, "code") == 4097)
  {
    v5 = SRLogSensorKitBackend;
    if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1C914D000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Connection was interrupted so retrying the fetch request", &v13, 0xCu);
    }

    Weak = objc_loadWeak((a1 + 64));
    [(SRReaderSensorKitBackend *)Weak fetchSampleBytesFrom:*(a1 + 48) to:(*(a1 + 72) + 1) inSegment:*(a1 + 56) fetchRequest:*(a1 + 88) retryAttempt:*(a1 + 80) sampleCallback:?];
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 80);
    v10 = +[SRError connectionNotFoundError];
    v11 = *(v8 + 16);
    v12.n128_u64[0] = v9;

    v11(v8, 0, 0, 0, 0, 1, 0, v10, v12);
  }
}

uint64_t __103__SRReaderSensorKitBackend_fetchSampleBytesFrom_to_inSegment_fetchRequest_retryAttempt_sampleCallback___block_invoke_69(uint64_t a1, void *a2)
{
  Weak = objc_loadWeak((a1 + 56));
  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 48) + 8) + 24);
  v7 = *(a1 + 64);
  v8 = *(a1 + 32);

  return [(SRReaderSensorKitBackend *)Weak continueFetchRequest:v8 from:a2 to:v5 withDatastoreFiles:v6 callback:v7];
}

- (void)fetchReaderMetadata:(id)metadata reply:(id)reply
{
  sensor = self->_sensor;
  connection = [(SRReaderSensorKitBackend *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SRReaderSensorKitBackend_fetchReaderMetadata_reply___block_invoke;
  v8[3] = &unk_1E83303B8;
  v8[4] = sensor;
  [-[NSXPCConnection synchronousRemoteObjectProxyWithErrorHandler:](connection synchronousRemoteObjectProxyWithErrorHandler:{v8), "fetchReaderMetadata:reply:", metadata, reply}];
}

void __54__SRReaderSensorKitBackend_fetchReaderMetadata_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get earliest eligible time because %{public}@", &v6, 0x16u);
  }
}

- (void)startRecording:(id)recording reply:(id)reply
{
  sensor = self->_sensor;
  connection = [(SRReaderSensorKitBackend *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__SRReaderSensorKitBackend_startRecording_reply___block_invoke;
  v10[3] = &unk_1E83303E0;
  v10[4] = sensor;
  v10[5] = reply;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__SRReaderSensorKitBackend_startRecording_reply___block_invoke_70;
  v9[3] = &unk_1E8330408;
  v9[4] = reply;
  [v8 startRecording:recording reply:v9];
}

uint64_t __49__SRReaderSensorKitBackend_startRecording_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get remote proxy because %{public}@", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), +[SRError connectionNotFoundError]);
}

- (void)stopRecording:(id)recording reply:(id)reply
{
  sensor = self->_sensor;
  connection = [(SRReaderSensorKitBackend *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SRReaderSensorKitBackend_stopRecording_reply___block_invoke;
  v8[3] = &unk_1E83303E0;
  v8[4] = sensor;
  v8[5] = reply;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v8), "stopRecording:reply:", recording, reply}];
}

uint64_t __48__SRReaderSensorKitBackend_stopRecording_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get remote proxy because %{public}@", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), +[SRError connectionNotFoundError]);
}

- (void)fetchDevices:(id)devices reply:(id)reply
{
  sensor = self->_sensor;
  connection = [(SRReaderSensorKitBackend *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SRReaderSensorKitBackend_fetchDevices_reply___block_invoke;
  v8[3] = &unk_1E83303E0;
  v8[4] = sensor;
  v8[5] = reply;
  [-[NSXPCConnection remoteObjectProxyWithErrorHandler:](connection remoteObjectProxyWithErrorHandler:{v8), "fetchAllDevices:reply:", devices, reply}];
}

uint64_t __47__SRReaderSensorKitBackend_fetchDevices_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = a2;
    _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get remote proxy because %{public}@", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)resetDatastoreFiles:(id)files
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, files, 40);
  }
}

- (id)datastore
{
  v30 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return self->_datastore;
  }

  Property = objc_getProperty(self, a2, 40, 1);
  if (!Property)
  {
    return self->_datastore;
  }

  v5 = Property;
  objc_setProperty_atomic(self, v4, 0, 40);

  self->_datastore = 0;
  v6 = [v5 objectForKeyedSubscript:0x1F48C05C0];
  v7 = [v5 objectForKeyedSubscript:0x1F48C05E0];
  v8 = [v5 objectForKeyedSubscript:0x1F48C0600];
  v9 = [v5 objectForKeyedSubscript:0x1F48C0620];

  v10 = [v5 objectForKeyedSubscript:0x1F48C0640];
  self->_deviceDetails = v10;
  v11 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_INFO))
  {
    sensor = self->_sensor;
    v18 = 138544643;
    v19 = sensor;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v9;
    v28 = 2113;
    v29 = v10;
    _os_log_impl(&dword_1C914D000, v11, OS_LOG_TYPE_INFO, "[%{public}@] Creating a new datastore with samples: %{public}@, metadata: %{public}@, configuration: %{public}@, defaults: %{public}@, deviceDetails: %{private}@", &v18, 0x3Eu);
  }

  if (v6)
  {
    v13 = [[SRDefaults alloc] initWithDictionary:v9];
    v14 = [SRDatastore alloc];
    if (v14)
    {
      v14 = [(SRDatastore *)v14 initWithSampleFile:v6 metadataFile:v7 configurationFile:v8 permission:0 defaults:v13 writingStats:0];
    }

    self->_datastore = v14;

    return self->_datastore;
  }

  v16 = SRLogSensorKitBackend;
  if (os_log_type_enabled(SRLogSensorKitBackend, OS_LOG_TYPE_DEBUG))
  {
    v17 = self->_sensor;
    v18 = 138543362;
    v19 = v17;
    _os_log_debug_impl(&dword_1C914D000, v16, OS_LOG_TYPE_DEBUG, "[%{public}@] No sample file received so clearing the datastore", &v18, 0xCu);
  }

  return 0;
}

@end