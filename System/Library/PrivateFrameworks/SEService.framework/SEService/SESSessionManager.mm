@interface SESSessionManager
+ (BOOL)registerCarKeyAppForLaunch:(BOOL)launch error:(id *)error;
+ (id)getVehicleReports:(id *)reports;
+ (id)pauseRangingForReaderIdentifier:(id)identifier durationInSec:(double)sec withAppletIdentifier:(id)appletIdentifier;
+ (id)requestAssertionForKeyID:(id)d withAppletID:(id)iD withOptions:(id)options error:(id *)error;
+ (id)resumeRangingForReaderIdentifier:(id)identifier withAppletIdentifier:(id)appletIdentifier;
+ (id)sharedInstance;
+ (void)setMachServiceName:(id)name;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)startACWGSessionWithOptions:(id)options startCallback:(id)callback;
- (id)startAssertionForKeyIdentifier:(id)identifier withAppletIdentifier:(id)appletIdentifier withOptions:(id)options error:(id *)error;
- (id)startDCKAssertionForKeyIdentifier:(id)identifier withOptions:(id)options error:(id *)error;
- (id)startDigitalCarKeySessionWithOptions:(id)options startCallback:(id)callback;
- (id)startRKESessionWithOptions:(id)options startCallback:(id)callback;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)connect;
- (void)connectionDidInterrupt;
- (void)connectionDidInvalidate;
- (void)sessionEnded:(id)ended;
@end

@implementation SESSessionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SESSessionManager sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __35__SESSessionManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;

  v2 = objc_opt_new();
  [sharedInstance_instance setSessions:v2];

  v3 = sharedInstance_instance;

  return [v3 setServiceName:@"com.apple.seserviced.session"];
}

- (id)startDigitalCarKeySessionWithOptions:(id)options startCallback:(id)callback
{
  v26 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  callbackCopy = callback;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = optionsCopy;
    _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "startDigitalCarKeySessionWithOptions %@", buf, 0xCu);
  }

  v9 = +[SESDCKSession newInstance];
  [v9 setDidStartCallback:callbackCopy];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__SESSessionManager_startDigitalCarKeySessionWithOptions_startCallback___block_invoke;
  v23[3] = &unk_1E82D1420;
  v23[4] = self;
  [v9 setDidEndCallback:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__SESSessionManager_startDigitalCarKeySessionWithOptions_startCallback___block_invoke_2;
  v21[3] = &unk_1E82D1448;
  v10 = v9;
  v22 = v10;
  v11 = [(SESSessionManager *)self synchronousRemoteObjectProxyWithErrorHandler:v21];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __72__SESSessionManager_startDigitalCarKeySessionWithOptions_startCallback___block_invoke_510;
  v18 = &unk_1E82D1470;
  v12 = v10;
  v19 = v12;
  selfCopy = self;
  [v11 startSESDCKSession:v12 completion:&v15];

  [v12 resume];
  v13 = v12;

  return v12;
}

void __72__SESSessionManager_startDigitalCarKeySessionWithOptions_startCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_ERROR, "Failed to get proxy %@", &v5, 0xCu);
    }

    [*(a1 + 32) endSession];
  }
}

void __72__SESSessionManager_startDigitalCarKeySessionWithOptions_startCallback___block_invoke_510(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SESDefaultLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Proxy error %@", &v11, 0xCu);
    }

    [*(a1 + 32) endSession];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "Adding new SESDCKSession %@", &v11, 0xCu);
    }

    v10 = *(*(a1 + 40) + 8);
    objc_sync_enter(v10);
    [*(*(a1 + 40) + 8) addObject:*(a1 + 32)];
    objc_sync_exit(v10);

    [*(a1 + 32) setProxy:v5];
  }
}

- (id)startRKESessionWithOptions:(id)options startCallback:(id)callback
{
  v26 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  callbackCopy = callback;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = optionsCopy;
    _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "startRKESessionWithOptions %@", buf, 0xCu);
  }

  v9 = +[SESRKESession newInstance];
  [v9 setDidStartCallback:callbackCopy];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __62__SESSessionManager_startRKESessionWithOptions_startCallback___block_invoke;
  v23[3] = &unk_1E82D1420;
  v23[4] = self;
  [v9 setDidEndCallback:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__SESSessionManager_startRKESessionWithOptions_startCallback___block_invoke_2;
  v21[3] = &unk_1E82D1448;
  v10 = v9;
  v22 = v10;
  v11 = [(SESSessionManager *)self synchronousRemoteObjectProxyWithErrorHandler:v21];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __62__SESSessionManager_startRKESessionWithOptions_startCallback___block_invoke_513;
  v18 = &unk_1E82D1470;
  v12 = v10;
  v19 = v12;
  selfCopy = self;
  [v11 startSESRKESession:v12 options:optionsCopy completion:&v15];

  [v12 resume];
  v13 = v12;

  return v12;
}

void __62__SESSessionManager_startRKESessionWithOptions_startCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_ERROR, "Failed to get proxy %@", &v5, 0xCu);
    }

    [*(a1 + 32) endSession];
  }
}

void __62__SESSessionManager_startRKESessionWithOptions_startCallback___block_invoke_513(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SESDefaultLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Proxy error %@", &v11, 0xCu);
    }

    [*(a1 + 32) endSessionWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "Adding new SESRKESession %@", &v11, 0xCu);
    }

    v10 = *(*(a1 + 40) + 8);
    objc_sync_enter(v10);
    [*(*(a1 + 40) + 8) addObject:*(a1 + 32)];
    objc_sync_exit(v10);

    [*(a1 + 32) setProxy:v5];
  }
}

- (id)startACWGSessionWithOptions:(id)options startCallback:(id)callback
{
  v26 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  callbackCopy = callback;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = optionsCopy;
    _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "startACWGSessionWithOptions %@", buf, 0xCu);
  }

  v9 = +[SESACWGSession newInstance];
  [v9 setDidStartCallback:callbackCopy];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __63__SESSessionManager_startACWGSessionWithOptions_startCallback___block_invoke;
  v23[3] = &unk_1E82D1420;
  v23[4] = self;
  [v9 setDidEndCallback:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__SESSessionManager_startACWGSessionWithOptions_startCallback___block_invoke_2;
  v21[3] = &unk_1E82D1448;
  v10 = v9;
  v22 = v10;
  v11 = [(SESSessionManager *)self synchronousRemoteObjectProxyWithErrorHandler:v21];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __63__SESSessionManager_startACWGSessionWithOptions_startCallback___block_invoke_515;
  v18 = &unk_1E82D1470;
  v12 = v10;
  v19 = v12;
  selfCopy = self;
  [v11 startSESACWGSession:v12 completion:&v15];

  [v12 resume];
  v13 = v12;

  return v12;
}

void __63__SESSessionManager_startACWGSessionWithOptions_startCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_ERROR, "Failed to get proxy %@", &v5, 0xCu);
    }

    [*(a1 + 32) endSession];
  }
}

void __63__SESSessionManager_startACWGSessionWithOptions_startCallback___block_invoke_515(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SESDefaultLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Proxy error %@", &v11, 0xCu);
    }

    [*(a1 + 32) endSession];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "Adding new SESACWGSession %@", &v11, 0xCu);
    }

    v10 = *(*(a1 + 40) + 8);
    objc_sync_enter(v10);
    [*(*(a1 + 40) + 8) addObject:*(a1 + 32)];
    objc_sync_exit(v10);

    [*(a1 + 32) setProxy:v5];
  }
}

- (void)sessionEnded:(id)ended
{
  v9 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  v5 = self->_sessions;
  objc_sync_enter(v5);
  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = endedCopy;
    _os_log_impl(&dword_1C7B9A000, v6, OS_LOG_TYPE_INFO, "Session %@ ended", &v7, 0xCu);
  }

  [(NSMutableSet *)self->_sessions removeObject:endedCopy];
  objc_sync_exit(v5);
}

- (void)connect
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_connection)
  {
    v3 = SESDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_INFO, "Already XPC connected", buf, 2u);
    }
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    serviceName = [(SESSessionManager *)selfCopy serviceName];
    v6 = [v4 initWithMachServiceName:serviceName options:4096];
    connection = selfCopy->_connection;
    selfCopy->_connection = v6;

    v8 = +[SESSessionManagerInterface interface];
    [(NSXPCConnection *)selfCopy->_connection setRemoteObjectInterface:v8];

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47677F0];
    [(NSXPCConnection *)selfCopy->_connection setExportedInterface:v9];

    [(NSXPCConnection *)selfCopy->_connection setExportedObject:selfCopy];
    objc_initWeak(buf, selfCopy);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __28__SESSessionManager_connect__block_invoke;
    v14[3] = &unk_1E82D1148;
    objc_copyWeak(&v15, buf);
    [(NSXPCConnection *)selfCopy->_connection setInterruptionHandler:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __28__SESSessionManager_connect__block_invoke_559;
    v12[3] = &unk_1E82D1148;
    objc_copyWeak(&v13, buf);
    [(NSXPCConnection *)selfCopy->_connection setInvalidationHandler:v12];
    [(NSXPCConnection *)selfCopy->_connection resume];
    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1C7B9A000, v10, OS_LOG_TYPE_INFO, "XPC connected", v11, 2u);
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  objc_sync_exit(selfCopy);
}

void __28__SESSessionManager_connect__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_INFO, "Connection interrupted", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionDidInterrupt];
}

void __28__SESSessionManager_connect__block_invoke_559(uint64_t a1, uint64_t a2)
{
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_INFO, "Connection invalidated", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionDidInvalidate];
}

- (void)connectionDidInterrupt
{
  obj = self;
  objc_sync_enter(obj);
  [(NSXPCConnection *)obj->_connection invalidate];
  objc_sync_exit(obj);
}

- (void)connectionDidInvalidate
{
  v18 = *MEMORY[0x1E69E9840];
  obj = self->_sessions;
  objc_sync_enter(obj);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSMutableSet *)self->_sessions copy];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = SESDefaultLogObject();
        v9 = SESCreateAndLogError();
        [v7 didEndUnexpectedly:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  objc_sync_exit(obj);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connection = selfCopy->_connection;
  selfCopy->_connection = 0;

  objc_sync_exit(selfCopy);
}

+ (id)pauseRangingForReaderIdentifier:(id)identifier durationInSec:(double)sec withAppletIdentifier:(id)appletIdentifier
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  appletIdentifierCopy = appletIdentifier;
  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2048;
    *&buf[14] = sec;
    *&buf[22] = 2112;
    v32 = appletIdentifierCopy;
    _os_log_impl(&dword_1C7B9A000, v9, OS_LOG_TYPE_INFO, "pauseRangingForReaderIdentifier %@ durationInSec %f appletIdentifier %@", buf, 0x20u);
  }

  if (sec >= 1.0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v32 = __Block_byref_object_copy__7;
    v33 = __Block_byref_object_dispose__7;
    v34 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v12 = +[SESSessionManager sharedInstance];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __88__SESSessionManager_pauseRangingForReaderIdentifier_durationInSec_withAppletIdentifier___block_invoke;
    v24[3] = &unk_1E82D1170;
    v24[4] = buf;
    v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v24];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:sec];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __88__SESSessionManager_pauseRangingForReaderIdentifier_durationInSec_withAppletIdentifier___block_invoke_2;
    v23[3] = &unk_1E82D0DF0;
    v23[4] = &v25;
    v23[5] = buf;
    [v13 pauseRangingForReaderIdentifier:identifierCopy durationInSec:v14 withAppletIdentifier:appletIdentifierCopy reply:v23];

    v15 = *&buf[8];
    if ((v26[3] & 1) == 0 && !*(*&buf[8] + 40))
    {
      v16 = SESDefaultLogObject();
      v17 = SESCreateAndLogError();
      v18 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v17;

      v15 = *&buf[8];
    }

    v19 = *(v15 + 40);
    if (v19)
    {
      v20 = SESDefaultLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(*&buf[8] + 40);
        *v29 = 138412290;
        v30 = v21;
        _os_log_impl(&dword_1C7B9A000, v20, OS_LOG_TYPE_ERROR, "%@", v29, 0xCu);
      }

      v19 = *(*&buf[8] + 40);
    }

    v11 = v19;
    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
  }

  return v11;
}

+ (id)resumeRangingForReaderIdentifier:(id)identifier withAppletIdentifier:(id)appletIdentifier
{
  v32 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  appletIdentifierCopy = appletIdentifier;
  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifierCopy;
    _os_log_impl(&dword_1C7B9A000, v7, OS_LOG_TYPE_INFO, "resumeRangingForReaderIdentifier %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v8 = +[SESSessionManager sharedInstance];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__SESSessionManager_resumeRangingForReaderIdentifier_withAppletIdentifier___block_invoke;
  v20[3] = &unk_1E82D1170;
  v20[4] = &buf;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__SESSessionManager_resumeRangingForReaderIdentifier_withAppletIdentifier___block_invoke_2;
  v19[3] = &unk_1E82D0DF0;
  v19[4] = &v21;
  v19[5] = &buf;
  [v9 resumeRangingForReaderIdentifier:identifierCopy withAppletIdentifier:appletIdentifierCopy reply:v19];

  v10 = *(&buf + 1);
  if ((v22[3] & 1) == 0 && !*(*(&buf + 1) + 40))
  {
    v11 = SESDefaultLogObject();
    v12 = SESCreateAndLogError();
    v13 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v12;

    v10 = *(&buf + 1);
  }

  v14 = *(v10 + 40);
  if (v14)
  {
    v15 = SESDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(&buf + 1) + 40);
      *v25 = 138412290;
      v26 = v16;
      _os_log_impl(&dword_1C7B9A000, v15, OS_LOG_TYPE_ERROR, "%@", v25, 0xCu);
    }

    v14 = *(*(&buf + 1) + 40);
  }

  v17 = v14;
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&buf, 8);

  return v17;
}

+ (id)getVehicleReports:(id *)reports
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_INFO, "getVehicleReports", buf, 2u);
  }

  *buf = 0;
  v24 = buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v5 = +[SESSessionManager sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __39__SESSessionManager_getVehicleReports___block_invoke;
  v16[3] = &unk_1E82D1170;
  v16[4] = buf;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__SESSessionManager_getVehicleReports___block_invoke_2;
  v15[3] = &unk_1E82D1198;
  v15[4] = &v17;
  v15[5] = buf;
  [v6 getVehicleReports:v15];

  v7 = v24;
  if (!v18[5] && !*(v24 + 5))
  {
    v8 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
    v10 = *(v24 + 5);
    *(v24 + 5) = v9;

    v7 = v24;
  }

  if (*(v7 + 5))
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(v24 + 5);
      *v29 = 138412290;
      v30 = v12;
      _os_log_impl(&dword_1C7B9A000, v11, OS_LOG_TYPE_ERROR, "%@", v29, 0xCu);
    }
  }

  if (reports)
  {
    *reports = *(v24 + 5);
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(buf, 8);

  return v13;
}

void __39__SESSessionManager_getVehicleReports___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (BOOL)registerCarKeyAppForLaunch:(BOOL)launch error:(id *)error
{
  launchCopy = launch;
  v31 = *MEMORY[0x1E69E9840];
  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = launchCopy;
    _os_log_impl(&dword_1C7B9A000, v6, OS_LOG_TYPE_INFO, "registerCarKeyAppForLaunch %d", buf, 8u);
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = +[SESSessionManager sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __54__SESSessionManager_registerCarKeyAppForLaunch_error___block_invoke;
  v18[3] = &unk_1E82D1170;
  v18[4] = buf;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__SESSessionManager_registerCarKeyAppForLaunch_error___block_invoke_2;
  v17[3] = &unk_1E82D0DF0;
  v17[4] = &v19;
  v17[5] = buf;
  [v8 registerCarKeyAppForLaunch:launchCopy reply:v17];

  v9 = v26;
  if ((v20[3] & 1) == 0 && !*(v26 + 5))
  {
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
    v12 = *(v26 + 5);
    *(v26 + 5) = v11;

    v9 = v26;
  }

  if (*(v9 + 5))
  {
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(v26 + 5);
      *v23 = 138412290;
      v24 = v14;
      _os_log_impl(&dword_1C7B9A000, v13, OS_LOG_TYPE_ERROR, "%@", v23, 0xCu);
    }

    v9 = v26;
    if (error)
    {
      *error = *(v26 + 5);
      v9 = v26;
    }
  }

  v15 = *(v9 + 5) == 0;
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(buf, 8);

  return v15;
}

- (id)startDCKAssertionForKeyIdentifier:(id)identifier withOptions:(id)options error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  optionsCopy = options;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2112;
    *&buf[14] = optionsCopy;
    _os_log_impl(&dword_1C7B9A000, v10, OS_LOG_TYPE_INFO, "startDCKAssertionForKeyIdentifier %@ options %@", buf, 0x16u);
  }

  v11 = [[SESDCKAssertion alloc] initWithKeyIdentifier:identifierCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __73__SESSessionManager_startDCKAssertionForKeyIdentifier_withOptions_error___block_invoke;
  v26[3] = &unk_1E82D1170;
  v26[4] = buf;
  v12 = [(SESSessionManager *)self synchronousRemoteObjectProxyWithErrorHandler:v26];
  keyIdentifier = [(SESDCKAssertion *)v11 keyIdentifier];
  appletIdentifier = [(SESDCKAssertion *)v11 appletIdentifier];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73__SESSessionManager_startDCKAssertionForKeyIdentifier_withOptions_error___block_invoke_585;
  v23[3] = &unk_1E82D1498;
  v25 = buf;
  v15 = v11;
  v24 = v15;
  [v12 startSESAssertion:v15 withKeyIdentifier:keyIdentifier withAppletIdentifier:appletIdentifier withOptions:optionsCopy completion:v23];

  v16 = *&buf[8];
  if (v15 || *(*&buf[8] + 40))
  {
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v20 = SESDefaultLogObject();
  v21 = SESCreateAndLogError();
  v22 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v21;

  v16 = *&buf[8];
  if (error)
  {
LABEL_6:
    *error = *(v16 + 40);
    v16 = *&buf[8];
  }

LABEL_7:
  if (*(v16 + 40))
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v18 = v17;

  _Block_object_dispose(buf, 8);

  return v18;
}

void __73__SESSessionManager_startDCKAssertionForKeyIdentifier_withOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_ERROR, "Failed to get proxy %@", &v6, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __73__SESSessionManager_startDCKAssertionForKeyIdentifier_withOptions_error___block_invoke_585(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SESDefaultLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Proxy error %@", &v10, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "Started new SESDCKAssertion %@", &v10, 0xCu);
    }

    [*(a1 + 32) setProxy:v5];
  }
}

+ (id)requestAssertionForKeyID:(id)d withAppletID:(id)iD withOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  iDCopy = iD;
  dCopy = d;
  v12 = +[SESSessionManager sharedInstance];
  v17 = 0;
  v13 = [v12 startAssertionForKeyIdentifier:dCopy withAppletIdentifier:iDCopy withOptions:optionsCopy error:&v17];

  v14 = v17;
  if (error)
  {
    v15 = v14;
    *error = v14;
  }

  return v13;
}

- (id)startAssertionForKeyIdentifier:(id)identifier withAppletIdentifier:(id)appletIdentifier withOptions:(id)options error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  appletIdentifierCopy = appletIdentifier;
  optionsCopy = options;
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    *&buf[4] = identifierCopy;
    *&buf[12] = 2112;
    *&buf[14] = appletIdentifierCopy;
    *&buf[22] = 2112;
    v31 = optionsCopy;
    _os_log_impl(&dword_1C7B9A000, v13, OS_LOG_TYPE_INFO, "startAssertionForKeyIdentifier %@ appletIdentifier %@ options %@", buf, 0x20u);
  }

  v14 = [[SESAssertion alloc] initWithKeyIdentifier:identifierCopy appletIdentifier:appletIdentifierCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = __Block_byref_object_copy__7;
  v32 = __Block_byref_object_dispose__7;
  v33 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __91__SESSessionManager_startAssertionForKeyIdentifier_withAppletIdentifier_withOptions_error___block_invoke;
  v29[3] = &unk_1E82D1170;
  v29[4] = buf;
  v15 = [(SESSessionManager *)self synchronousRemoteObjectProxyWithErrorHandler:v29];
  keyIdentifier = [(SESAssertion *)v14 keyIdentifier];
  appletIdentifier = [(SESAssertion *)v14 appletIdentifier];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __91__SESSessionManager_startAssertionForKeyIdentifier_withAppletIdentifier_withOptions_error___block_invoke_591;
  v26[3] = &unk_1E82D1498;
  v28 = buf;
  v18 = v14;
  v27 = v18;
  [v15 startSESAssertion:v18 withKeyIdentifier:keyIdentifier withAppletIdentifier:appletIdentifier withOptions:optionsCopy completion:v26];

  v19 = *&buf[8];
  if (v18 || *(*&buf[8] + 40))
  {
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v23 = SESDefaultLogObject();
  v24 = SESCreateAndLogError();
  v25 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v24;

  v19 = *&buf[8];
  if (error)
  {
LABEL_6:
    *error = *(v19 + 40);
    v19 = *&buf[8];
  }

LABEL_7:
  if (*(v19 + 40))
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20;

  _Block_object_dispose(buf, 8);

  return v21;
}

void __91__SESSessionManager_startAssertionForKeyIdentifier_withAppletIdentifier_withOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_ERROR, "Failed to get proxy %@", &v6, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __91__SESSessionManager_startAssertionForKeyIdentifier_withAppletIdentifier_withOptions_error___block_invoke_591(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SESDefaultLogObject();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Proxy error %@", &v10, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_INFO, "Started new SESAssertion %@", &v10, 0xCu);
    }

    [*(a1 + 32) setProxy:v5];
  }
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SESSessionManager *)selfCopy connect];
  connection = selfCopy->_connection;
  if (connection)
  {
    v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v8 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
    handlerCopy[2](handlerCopy, v9);

    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SESSessionManager *)selfCopy connect];
  connection = selfCopy->_connection;
  if (connection)
  {
    v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v8 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
    handlerCopy[2](handlerCopy, v9);

    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

+ (void)setMachServiceName:(id)name
{
  nameCopy = name;
  v5 = +[SESSessionManager sharedInstance];
  v4 = v5[3];
  v5[3] = nameCopy;
}

@end