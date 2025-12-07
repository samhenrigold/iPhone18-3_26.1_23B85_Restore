@interface TKCTKDConnection
- (NSXPCConnection)serverConnection;
- (TKCTKDConnection)initWithCTKDEndpoint:(id)endpoint targetUID:(id)d;
- (id)withError:(id *)error invoke:(id)invoke;
- (void)dealloc;
- (void)serverConnection;
@end

@implementation TKCTKDConnection

- (NSXPCConnection)serverConnection
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  serverConnection = selfCopy->_serverConnection;
  if (serverConnection)
  {
    goto LABEL_14;
  }

  serverEndpoint = selfCopy->_serverEndpoint;
  if (serverEndpoint)
  {
    v6 = serverEndpoint;
    v7 = v6;
  }

  else
  {
    v6 = provideEndpoint(2);
    v7 = v6;
    if (!v6)
    {
      if (selfCopy->_targetUID)
      {
        v15 = TK_LOG_client_2(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [(TKCTKDConnection *)@"com.apple.ctkd.token-client" serverConnection:buf];
        }
      }

      selfCopy->_namedConnection = 1;
      v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ctkd.token-client" options:0];
      v7 = 0;
      goto LABEL_7;
    }
  }

  v8 = TK_LOG_client_2(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16 = selfCopy->_serverEndpoint ? "external" : "EP-provided";
    targetUID = selfCopy->_targetUID;
    if (targetUID)
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (targetUID=%d)", -[NSNumber integerValue](selfCopy->_targetUID, "integerValue")];
      uTF8String = [v2 UTF8String];
    }

    else
    {
      uTF8String = "";
    }

    *buf = 136446466;
    v20 = v16;
    v21 = 2082;
    v22 = uTF8String;
    _os_log_debug_impl(&dword_1DF413000, v8, OS_LOG_TYPE_DEBUG, "creating connection to %{public}s endpoint%{public}s", buf, 0x16u);
    if (targetUID)
    {
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v7];
LABEL_7:
  v10 = selfCopy->_serverConnection;
  selfCopy->_serverConnection = v9;

  v11 = selfCopy->_targetUID;
  if (v11)
  {
    [(NSXPCConnection *)selfCopy->_serverConnection _setTargetUserIdentifier:[(NSNumber *)v11 integerValue]];
  }

  v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A901D0];
  [(NSXPCConnection *)selfCopy->_serverConnection setRemoteObjectInterface:v12];

  if (selfCopy->_exportedInterface)
  {
    [(NSXPCConnection *)selfCopy->_serverConnection setExportedInterface:?];
  }

  if (selfCopy->_exportedObject)
  {
    [(NSXPCConnection *)selfCopy->_serverConnection setExportedObject:?];
  }

  [(NSXPCConnection *)selfCopy->_serverConnection resume];

  serverConnection = selfCopy->_serverConnection;
LABEL_14:
  v13 = serverConnection;
  objc_sync_exit(selfCopy);

  return v13;
}

- (TKCTKDConnection)initWithCTKDEndpoint:(id)endpoint targetUID:(id)d
{
  endpointCopy = endpoint;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = TKCTKDConnection;
  v9 = [(TKCTKDConnection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serverEndpoint, endpoint);
    objc_storeStrong(&v10->_targetUID, d);
  }

  return v10;
}

- (id)withError:(id *)error invoke:(id)invoke
{
  v44 = *MEMORY[0x1E69E9840];
  invokeCopy = invoke;
  v8 = invokeCopy;
  v32 = 0;
  v31 = *MEMORY[0x1E696A250];
  *&v9 = 67109120;
  v30 = v9;
  while (v32 <= 7)
  {
    v37 = 0;
    v38[0] = &v37;
    v38[1] = 0x3032000000;
    v38[2] = __Block_byref_object_copy__8;
    v38[3] = __Block_byref_object_dispose__8;
    v39 = 0;
    serverConnection = [(TKCTKDConnection *)self serverConnection];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __37__TKCTKDConnection_withError_invoke___block_invoke;
    v36[3] = &unk_1E86B7B20;
    v36[4] = &v37;
    v11 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:v36];

    v35 = 0;
    v12 = (v8)[2](v8, v11, &v35);
    v13 = v35;
    v14 = *(v38[0] + 40);
    if (!v14)
    {
      if (error && !v12)
      {
        v25 = v13;
        *error = v13;
      }

      v4 = v12;
      v19 = 0;
      goto LABEL_26;
    }

    if ([v14 code] == 4097 && (objc_msgSend(*(v38[0] + 40), "domain"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", v31), v15, v16))
    {
      v18 = TK_LOG_client_2(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = v30;
        v43 = v32;
        _os_log_debug_impl(&dword_1DF413000, v18, OS_LOG_TYPE_DEBUG, "reconnecting ctkd after interrupt, try %d", buf, 8u);
      }
    }

    else
    {
      code = [*(v38[0] + 40) code];
      if (code != 4099)
      {
        goto LABEL_17;
      }

      domain = [*(v38[0] + 40) domain];
      v22 = [domain isEqualToString:v31];

      if (!v22)
      {
        goto LABEL_17;
      }

      if (self->_namedConnection || (code = [(TKCTKDConnection *)self _testing_noAutomaticReconnect], code))
      {
        v23 = TK_LOG_client_2(code);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [(TKCTKDConnection *)&v33 withError:v34 invoke:v23];
        }

LABEL_17:
        if (error)
        {
          code = *(v38[0] + 40);
          *error = code;
        }

        v24 = TK_LOG_client_2(code);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [(TKCTKDConnection *)v40 withError:v38 invoke:&v41, v24];
        }

        v19 = 0;
        v4 = 0;
        goto LABEL_26;
      }

      v26 = TK_LOG_client_2(code);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = v30;
        v43 = v32;
        _os_log_debug_impl(&dword_1DF413000, v26, OS_LOG_TYPE_DEBUG, "reconnecting ctkd after invalidate, try %d", buf, 8u);
      }

      [(NSXPCConnection *)self->_serverConnection invalidate];
      serverConnection = self->_serverConnection;
      self->_serverConnection = 0;

      [MEMORY[0x1E696AF00] sleepForTimeInterval:v32++ * 0.1];
    }

    v19 = 1;
LABEL_26:

    _Block_object_dispose(&v37, 8);
    if ((v19 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v28 = TK_LOG_client_2(invokeCopy);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
  {
    [TKCTKDConnection withError:v28 invoke:?];
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:0];
    *error = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

LABEL_36:

  return v4;
}

id __28__TKCTKDConnection_endpoint__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__TKCTKDConnection_endpoint__block_invoke_2;
  v5[3] = &unk_1E86B8350;
  v5[4] = &v6;
  [v2 getEndpoint:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

id __41__TKCTKDConnection_configurationEndpoint__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__TKCTKDConnection_configurationEndpoint__block_invoke_2;
  v5[3] = &unk_1E86B8350;
  v5[4] = &v6;
  [v2 getConfigurationEndpoint:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dealloc
{
  [(TKCTKDConnection *)self invalidate];
  v3.receiver = self;
  v3.super_class = TKCTKDConnection;
  [(TKCTKDConnection *)&v3 dealloc];
}

- (void)serverConnection
{
  *buf = 138543618;
  *(buf + 4) = self;
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1DF413000, log, OS_LOG_TYPE_DEBUG, "creating connection to %{public}@, targetUID=%d", buf, 0x12u);
}

- (void)withError:(os_log_t)log invoke:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1DF413000, log, OS_LOG_TYPE_DEBUG, "failed to connect to named ctkd port, aborting (probably system shutdown in progress)", buf, 2u);
}

- (void)withError:(void *)a3 invoke:(os_log_t)log .cold.2(uint8_t *buf, uint64_t a2, void *a3, os_log_t log)
{
  v4 = *(*a2 + 40);
  *buf = 138543362;
  *a3 = v4;
  _os_log_error_impl(&dword_1DF413000, log, OS_LOG_TYPE_ERROR, "invoke on token-client connection failed with connection error %{public}@", buf, 0xCu);
}

- (void)withError:(uint64_t)a1 invoke:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_fault_impl(&dword_1DF413000, a2, OS_LOG_TYPE_FAULT, "Unable to connect to tokenServer even after retries. (ep=%{public}@, uid=%@)", &v4, 0x16u);
}

@end