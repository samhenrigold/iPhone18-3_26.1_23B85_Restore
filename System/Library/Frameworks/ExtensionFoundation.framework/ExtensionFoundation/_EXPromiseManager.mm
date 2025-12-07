@interface _EXPromiseManager
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_EXPromiseManager)init;
- (id)resolveObjectOfClasses:(id)classes forIdentifier:(id)identifier endpoint:(id)endpoint error:(id *)error;
- (void)registerPromise:(id)promise;
- (void)resolveObjectOfClasses:(id)classes forIdentifier:(id)identifier endpoint:(id)endpoint completion:(id)completion;
- (void)resolvePromiseWithIdentifier:(id)identifier reply:(id)reply;
- (void)unregisterPromise:(id)promise;
@end

@implementation _EXPromiseManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_EXPromiseManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (_EXPromiseManager)init
{
  v8.receiver = self;
  v8.super_class = _EXPromiseManager;
  v2 = [(_EXPromiseManager *)&v8 init];
  if (v2)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    promises = v2->_promises;
    v2->_promises = weakToWeakObjectsMapTable;

    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = anonymousListener;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (id)resolveObjectOfClasses:(id)classes forIdentifier:(id)identifier endpoint:(id)endpoint error:(id *)error
{
  classesCopy = classes;
  identifierCopy = identifier;
  endpointCopy = endpoint;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31 = 0;
  if (!endpointCopy)
  {
    v23 = _EXDefaultLog(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:error:];
    }

    goto LABEL_19;
  }

  if (!identifierCopy)
  {
    v23 = _EXDefaultLog(endpointCopy);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:error:];
    }

    goto LABEL_19;
  }

  v12 = endpointCopy;
  v13 = [classesCopy containsObject:objc_opt_class()];
  if (v13)
  {
    v23 = _EXDefaultLog(v13);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:error:];
    }

LABEL_19:

    __break(1u);
    return result;
  }

  v14 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v12];
  v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2A1C00];
  [v15 setClasses:classesCopy forSelector:sel_resolvePromiseWithIdentifier_reply_ argumentIndex:0 ofReply:1];
  [v14 setRemoteObjectInterface:v15];
  [v14 resume];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __73___EXPromiseManager_resolveObjectOfClasses_forIdentifier_endpoint_error___block_invoke;
  v25[3] = &unk_1E6E4E320;
  v25[4] = &v32;
  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v25];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __73___EXPromiseManager_resolveObjectOfClasses_forIdentifier_endpoint_error___block_invoke_2;
  v24[3] = &unk_1E6E4E348;
  v24[4] = &v26;
  [v16 resolvePromiseWithIdentifier:identifierCopy reply:v24];
  v17 = v33;
  if (!v27[5] && !v33[5])
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:9 userInfo:MEMORY[0x1E695E0F8]];
    v19 = v33[5];
    v33[5] = v18;

    v17 = v33;
  }

  if (error)
  {
    v20 = v17[5];
    if (v20)
    {
      *error = v20;
    }
  }

  v21 = v27[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v21;
}

- (void)resolveObjectOfClasses:(id)classes forIdentifier:(id)identifier endpoint:(id)endpoint completion:(id)completion
{
  classesCopy = classes;
  identifierCopy = identifier;
  endpointCopy = endpoint;
  completionCopy = completion;
  if (endpointCopy)
  {
    if (identifierCopy)
    {
      v13 = completionCopy;
      v14 = [classesCopy containsObject:objc_opt_class()];
      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
        v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2A1C00];
        [v16 setClasses:classesCopy forSelector:sel_resolvePromiseWithIdentifier_reply_ argumentIndex:0 ofReply:1];
        [v15 setRemoteObjectInterface:v16];
        [v15 resume];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __78___EXPromiseManager_resolveObjectOfClasses_forIdentifier_endpoint_completion___block_invoke;
        v23[3] = &unk_1E6E4DB38;
        v17 = v13;
        v24 = v17;
        v18 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v23];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __78___EXPromiseManager_resolveObjectOfClasses_forIdentifier_endpoint_completion___block_invoke_2;
        v21[3] = &unk_1E6E4E370;
        v22 = v17;
        v19 = v17;
        [v18 resolvePromiseWithIdentifier:identifierCopy reply:v21];

        return;
      }

      v20 = _EXDefaultLog(v14);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:completion:];
      }
    }

    else
    {
      v20 = _EXDefaultLog(completionCopy);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:completion:];
      }
    }
  }

  else
  {
    v20 = _EXDefaultLog(completionCopy);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:completion:];
    }
  }

  __break(1u);
}

- (void)registerPromise:(id)promise
{
  promiseCopy = promise;
  identifier = [promiseCopy identifier];
  v6 = _EXDefaultLog(identifier);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_EXPromiseManager registerPromise:];
  }

  promiseBlock = [promiseCopy promiseBlock];
  v8 = [promiseBlock copy];

  if (identifier)
  {
    if (v8)
    {
      [(NSMapTable *)self->_promises setObject:promiseCopy forKey:identifier];

      return;
    }

    v10 = _EXDefaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager registerPromise:];
    }
  }

  else
  {
    v10 = _EXDefaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager registerPromise:];
    }
  }

  __break(1u);
}

- (void)unregisterPromise:(id)promise
{
  promiseCopy = promise;
  v5 = _EXDefaultLog(promiseCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_EXPromiseManager *)promiseCopy unregisterPromise:v5];
  }

  identifier = [promiseCopy identifier];
  if (identifier)
  {
    v7 = identifier;
    [(NSMapTable *)self->_promises removeObjectForKey:identifier];
  }

  else
  {
    v8 = _EXDefaultLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager unregisterPromise:];
    }

    __break(1u);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x1E696B0D0];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_1EF2A1C00];
  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)resolvePromiseWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  promises = self->_promises;
  replyCopy = reply;
  v9 = [(NSMapTable *)promises objectForKey:identifierCopy];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFD8] set];
    v15 = 0;
    v11 = [v9 resolveObjectOfClasses:v10 error:&v15];
    v12 = v15;

    if (!v11)
    {
      v14 = _EXDefaultLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [_EXPromiseManager resolvePromiseWithIdentifier:reply:];
      }
    }
  }

  else
  {
    v12 = _EXDefaultLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_EXPromiseManager resolvePromiseWithIdentifier:reply:];
    }

    v11 = 0;
  }

  replyCopy[2](replyCopy, v11);
}

- (void)resolveObjectOfClasses:forIdentifier:endpoint:error:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
}

- (void)resolveObjectOfClasses:forIdentifier:endpoint:error:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: identifier is nil", v2, v3, v4, v5);
}

- (void)resolveObjectOfClasses:forIdentifier:endpoint:error:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: endpoint is nil", v2, v3, v4, v5);
}

- (void)resolveObjectOfClasses:forIdentifier:endpoint:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
}

- (void)resolveObjectOfClasses:forIdentifier:endpoint:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: identifier is nil", v2, v3, v4, v5);
}

- (void)resolveObjectOfClasses:forIdentifier:endpoint:completion:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: endpoint is nil", v2, v3, v4, v5);
}

- (void)registerPromise:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
}

- (void)registerPromise:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: promiseBlock is nil", v2, v3, v4, v5);
}

- (void)registerPromise:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: identifier is nil", v2, v3, v4, v5);
}

- (void)unregisterPromise:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_6();
}

- (void)unregisterPromise:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: identifier is nil", v2, v3, v4, v5);
}

@end