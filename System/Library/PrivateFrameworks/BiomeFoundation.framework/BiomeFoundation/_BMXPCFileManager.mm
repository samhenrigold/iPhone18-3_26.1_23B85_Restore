@interface _BMXPCFileManager
- (BOOL)_removeDirectoryAtPath:(id)path error:(id *)error;
- (BOOL)_removeFileAtPath:(id)path error:(id *)error;
- (BOOL)replaceFileAtPath:(id)path withData:(id)data protection:(int)protection flags:(int)flags error:(id *)error;
- (_BMXPCFileManager)initWithDirectory:(id)directory cachingOptions:(int64_t)options useCase:(id)case domain:(unint64_t)domain user:(unsigned int)user;
- (id)_fileHandleForFileAtPath:(id)path flags:(int)flags protection:(int)protection error:(id *)error;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)replaceFileAtPath:(id)path withFileHandle:(id)handle protection:(int)protection flags:(int)flags error:(id *)error;
- (id)temporaryFileHandleWithProtection:(int)protection error:(id *)error;
@end

@implementation _BMXPCFileManager

- (_BMXPCFileManager)initWithDirectory:(id)directory cachingOptions:(int64_t)options useCase:(id)case domain:(unint64_t)domain user:(unsigned int)user
{
  caseCopy = case;
  v17.receiver = self;
  v17.super_class = _BMXPCFileManager;
  v13 = [(BMFileManager *)&v17 initWithDirectory:directory cachingOptions:options];
  if (v13)
  {
    v14 = [caseCopy copy];
    useCase = v13->_useCase;
    v13->_useCase = v14;

    v13->_domain = domain;
    v13->_user = user;
  }

  return v13;
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = self->_connectionWrapper;
  if (![(BMXPCConnectionWrapper *)v5 isValid])
  {
    _newConnection = [(_BMXPCFileManager *)self _newConnection];

    objc_storeStrong(&self->_connectionWrapper, _newConnection);
    v5 = _newConnection;
  }

  if (!v5)
  {
    v14 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"Failed to get or create BMXPCConnectionWrapper";
    connection = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v13 = [v14 errorWithDomain:@"BiomeStorageError" code:7 userInfo:connection];
    handlerCopy[2](handlerCopy, v13);
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  connection = [(BMXPCConnectionWrapper *)v5 connection];
  if (!connection)
  {
    v15 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"Failed to get connection from BMXPCConnectionWrapper";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v16 = [v15 errorWithDomain:@"BiomeStorageError" code:7 userInfo:v13];
    handlerCopy[2](handlerCopy, v16);

    goto LABEL_10;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67___BMXPCFileManager__synchronousRemoteObjectProxyWithErrorHandler___block_invoke;
  v18[3] = &unk_1E796B0A0;
  v19 = v5;
  v8 = handlerCopy;
  v20 = v8;
  v9 = [connection synchronousRemoteObjectProxyWithErrorHandler:v18];
  if (!v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22 = @"Failed to create remote object proxy";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v12 = [v10 errorWithDomain:@"BiomeStorageError" code:7 userInfo:v11];
    v8[2](v8, v12);
  }

  v13 = v19;
LABEL_11:

  return v9;
}

- (id)_fileHandleForFileAtPath:(id)path flags:(int)flags protection:(int)protection error:(id *)error
{
  v6 = *&protection;
  v7 = *&flags;
  v61[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v32 = _os_activity_create(&dword_1AC15D000, "_BMXPCFileManager._fileHandleForFileAtPath:flags:protection:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v32, &state);
  v31 = pathCopy;
  if (pathCopy)
  {
    v51 = 0;
    v52 = 0;
    v10 = [BMPaths getServiceDomain:&v52 subpath:&v51 forPath:pathCopy];
    v35 = v51;
    if (v10)
    {
      if ([(_BMXPCFileManager *)self supportsPathWithDomain:v52])
      {
        v50 = 0;
        v44 = 0;
        v45 = &v44;
        v46 = 0x3032000000;
        v47 = __Block_byref_object_copy__1;
        v48 = __Block_byref_object_dispose__1;
        v49 = 0;
        v38 = 0;
        v39 = &v38;
        v40 = 0x3032000000;
        v41 = __Block_byref_object_copy__1;
        v42 = __Block_byref_object_dispose__1;
        v43 = 0;
        v11 = MEMORY[0x1E69E9820];
        do
        {
          v37[0] = v11;
          v37[1] = 3221225472;
          v37[2] = __69___BMXPCFileManager__fileHandleForFileAtPath_flags_protection_error___block_invoke;
          v37[3] = &unk_1E796B0C8;
          v37[4] = &v38;
          v12 = [(_BMXPCFileManager *)self _synchronousRemoteObjectProxyWithErrorHandler:v37];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __69___BMXPCFileManager__fileHandleForFileAtPath_flags_protection_error___block_invoke_2;
          v36[3] = &unk_1E796B588;
          v36[4] = &v44;
          v36[5] = &v38;
          [v12 fileHandleForFileAtPath:v35 flags:v7 protection:v6 reply:v36];
        }

        while ((BMShouldRetry(v39[5], &v50, 2uLL, 1) & 1) != 0);
        if (!v39[5] && ([v45[5] fd] & 0x80000000) != 0)
        {
          v13 = MEMORY[0x1E696ABC0];
          error = [v45[5] error];
          v54 = *MEMORY[0x1E696A578];
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{strerror(objc_msgSend(v45[5], "error"))}];
          v55 = v15;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          v17 = [v13 errorWithDomain:*MEMORY[0x1E696A798] code:error userInfo:v16];
          v18 = v39[5];
          v39[5] = v17;

          v19 = v45[5];
          v45[5] = 0;
        }

        v20 = v39[5];
        if (v20)
        {
          v21 = 0;
          if (error)
          {
            *error = v20;
          }
        }

        else
        {
          v21 = v45[5];
        }

        _Block_object_dispose(&v38, 8);

        _Block_object_dispose(&v44, 8);
        goto LABEL_19;
      }

      if (error)
      {
        v24 = MEMORY[0x1E696ABC0];
        v56 = *MEMORY[0x1E696A578];
        v57 = @"Wrong domain";
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        *error = [v24 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v25];
      }
    }

    else if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v58 = *MEMORY[0x1E696A578];
      v59 = @"Unsupported path";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      *error = [v22 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v23];
    }

    v21 = 0;
LABEL_19:

    goto LABEL_20;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_BMXPCFileManager.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"path", 0, v32}];

  v28 = __biome_log_for_category(2);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (error)
  {
    v29 = MEMORY[0x1E696ABC0];
    v60 = *MEMORY[0x1E696A578];
    v61[0] = @"Invalid path";
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    *error = [v29 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v30];
  }

  v21 = 0;
LABEL_20:
  os_activity_scope_leave(&state);

  return v21;
}

- (BOOL)_removeFileAtPath:(id)path error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v22 = _os_activity_create(&dword_1AC15D000, "_BMXPCFileManager._removeFileAtPath:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v22, &state);
  if (pathCopy)
  {
    v33 = 0;
    v34 = 0;
    v7 = [BMPaths getServiceDomain:&v34 subpath:&v33 forPath:pathCopy];
    v8 = v33;
    if (v7)
    {
      if ([(_BMXPCFileManager *)self supportsPathWithDomain:v34])
      {
        v31 = 0;
        v32 = 0;
        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = __Block_byref_object_copy__1;
        v30 = __Block_byref_object_dispose__1;
        v9 = MEMORY[0x1E69E9820];
        do
        {
          v25[0] = v9;
          v25[1] = 3221225472;
          v25[2] = __45___BMXPCFileManager__removeFileAtPath_error___block_invoke;
          v25[3] = &unk_1E796B0C8;
          v25[4] = &v26;
          v10 = [(_BMXPCFileManager *)self _synchronousRemoteObjectProxyWithErrorHandler:v25];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __45___BMXPCFileManager__removeFileAtPath_error___block_invoke_2;
          v24[3] = &unk_1E796B0C8;
          v24[4] = &v26;
          [v10 removeFileAtPath:v8 reply:v24];
        }

        while ((BMShouldRetry(v27[5], &v32, 2uLL, 1) & 1) != 0);
        v11 = v27[5];
        v12 = v11 == 0;
        if (error && v11)
        {
          *error = v11;
        }

        _Block_object_dispose(&v26, 8);

        goto LABEL_15;
      }

      if (error)
      {
        v15 = MEMORY[0x1E696ABC0];
        v36 = *MEMORY[0x1E696A578];
        v37 = @"Wrong domain";
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        *error = [v15 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v16];
      }
    }

    else if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A578];
      v39 = @"Unsupported path";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      *error = [v13 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v14];
    }

    v12 = 0;
LABEL_15:

    goto LABEL_16;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_BMXPCFileManager.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"path", v22}];

  v19 = __biome_log_for_category(2);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (error)
  {
    v20 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v41[0] = @"Invalid path";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    *error = [v20 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v21];
  }

  v12 = 0;
LABEL_16:
  os_activity_scope_leave(&state);

  return v12;
}

- (BOOL)_removeDirectoryAtPath:(id)path error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v22 = _os_activity_create(&dword_1AC15D000, "_BMXPCFileManager._removeDirectoryAtPath:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v22, &state);
  if (pathCopy)
  {
    v33 = 0;
    v34 = 0;
    v7 = [BMPaths getServiceDomain:&v34 subpath:&v33 forPath:pathCopy];
    v8 = v33;
    if (v7)
    {
      if ([(_BMXPCFileManager *)self supportsPathWithDomain:v34])
      {
        v31 = 0;
        v32 = 0;
        v26 = 0;
        v27 = &v26;
        v28 = 0x3032000000;
        v29 = __Block_byref_object_copy__1;
        v30 = __Block_byref_object_dispose__1;
        v9 = MEMORY[0x1E69E9820];
        do
        {
          v25[0] = v9;
          v25[1] = 3221225472;
          v25[2] = __50___BMXPCFileManager__removeDirectoryAtPath_error___block_invoke;
          v25[3] = &unk_1E796B0C8;
          v25[4] = &v26;
          v10 = [(_BMXPCFileManager *)self _synchronousRemoteObjectProxyWithErrorHandler:v25];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __50___BMXPCFileManager__removeDirectoryAtPath_error___block_invoke_2;
          v24[3] = &unk_1E796B0C8;
          v24[4] = &v26;
          [v10 removeDirectoryAtPath:v8 reply:v24];
        }

        while ((BMShouldRetry(v27[5], &v32, 2uLL, 1) & 1) != 0);
        v11 = v27[5];
        v12 = v11 == 0;
        if (error && v11)
        {
          *error = v11;
        }

        _Block_object_dispose(&v26, 8);

        goto LABEL_15;
      }

      if (error)
      {
        v15 = MEMORY[0x1E696ABC0];
        v36 = *MEMORY[0x1E696A578];
        v37 = @"Wrong domain";
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        *error = [v15 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v16];
      }
    }

    else if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A578];
      v39 = @"Unsupported path";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      *error = [v13 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v14];
    }

    v12 = 0;
LABEL_15:

    goto LABEL_16;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_BMXPCFileManager.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"path", v22}];

  v19 = __biome_log_for_category(2);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (error)
  {
    v20 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v41[0] = @"Invalid path";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    *error = [v20 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v21];
  }

  v12 = 0;
LABEL_16:
  os_activity_scope_leave(&state);

  return v12;
}

- (id)temporaryFileHandleWithProtection:(int)protection error:(id *)error
{
  v4 = *&protection;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v13 = _os_activity_create(&dword_1AC15D000, "_BMXPCFileManager.temporaryFileHandleWithProtection:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v13, &state);
  v28 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v6 = MEMORY[0x1E69E9820];
  do
  {
    v15[0] = v6;
    v15[1] = 3221225472;
    v15[2] = __61___BMXPCFileManager_temporaryFileHandleWithProtection_error___block_invoke;
    v15[3] = &unk_1E796B0C8;
    v15[4] = &v16;
    v7 = [(_BMXPCFileManager *)self _synchronousRemoteObjectProxyWithErrorHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61___BMXPCFileManager_temporaryFileHandleWithProtection_error___block_invoke_2;
    v14[3] = &unk_1E796B588;
    v14[4] = &v22;
    v14[5] = &v16;
    [v7 temporaryFileHandleWithProtection:v4 reply:v14];
  }

  while ((BMShouldRetry(v17[5], &v28, 2uLL, 1) & 1) != 0);
  v8 = v17[5];
  if (v8)
  {
    v9 = v13;
    v10 = 0;
    if (error)
    {
      *error = v8;
    }
  }

  else
  {
    v10 = v23[5];
    v9 = v13;
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  os_activity_scope_leave(&state);

  return v10;
}

- (BOOL)replaceFileAtPath:(id)path withData:(id)data protection:(int)protection flags:(int)flags error:(id *)error
{
  v8 = *&flags;
  v9 = *&protection;
  v24[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dataCopy = data;
  if (pathCopy)
  {
    v15 = [(_BMXPCFileManager *)self temporaryFileHandleWithProtection:v9 error:error];
    v16 = v15;
    if (v15 && [v15 overwriteWithData:dataCopy error:error])
    {
      v17 = [(_BMXPCFileManager *)self replaceFileAtPath:pathCopy withFileHandle:v16 protection:v9 flags:v8 error:error];
      LOBYTE(error) = v17 != 0;
    }

    else
    {
      LOBYTE(error) = 0;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_BMXPCFileManager.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"path"}];

    v20 = __biome_log_for_category(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [BMFileManager fileExistsAtPath:error:];
    }

    if (error)
    {
      v21 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24[0] = @"Invalid path";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      *error = [v21 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v22];

      LOBYTE(error) = 0;
    }
  }

  return error;
}

- (id)replaceFileAtPath:(id)path withFileHandle:(id)handle protection:(int)protection flags:(int)flags error:(id *)error
{
  v7 = *&flags;
  v8 = *&protection;
  v54[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handleCopy = handle;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v26 = _os_activity_create(&dword_1AC15D000, "_BMXPCFileManager.replaceFileAtPath:withFileHandle:error:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v26, &state);
  if (pathCopy)
  {
    v46 = 0;
    v47 = 0;
    v12 = [BMPaths getServiceDomain:&v47 subpath:&v46 forPath:pathCopy];
    v29 = v46;
    if (v12)
    {
      if ([(_BMXPCFileManager *)self supportsPathWithDomain:v47])
      {
        v45 = 0;
        v39 = 0;
        v40 = &v39;
        v41 = 0x3032000000;
        v42 = __Block_byref_object_copy__1;
        v43 = __Block_byref_object_dispose__1;
        v44 = 0;
        v33 = 0;
        v34 = &v33;
        v35 = 0x3032000000;
        v36 = __Block_byref_object_copy__1;
        v37 = __Block_byref_object_dispose__1;
        v38 = 0;
        v13 = MEMORY[0x1E69E9820];
        do
        {
          v32[0] = v13;
          v32[1] = 3221225472;
          v32[2] = __77___BMXPCFileManager_replaceFileAtPath_withFileHandle_protection_flags_error___block_invoke;
          v32[3] = &unk_1E796B0C8;
          v32[4] = &v39;
          v14 = [(_BMXPCFileManager *)self _synchronousRemoteObjectProxyWithErrorHandler:v32];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __77___BMXPCFileManager_replaceFileAtPath_withFileHandle_protection_flags_error___block_invoke_2;
          v31[3] = &unk_1E796B588;
          v31[4] = &v33;
          v31[5] = &v39;
          [v14 replaceFileAtPath:v29 withFileHandle:handleCopy protection:v8 flags:v7 reply:v31];
        }

        while ((BMShouldRetry(v40[5], &v45, 2uLL, 1) & 1) != 0);
        v15 = v40[5];
        if (v15)
        {
          v16 = 0;
          if (error)
          {
            *error = v15;
          }
        }

        else
        {
          v16 = v34[5];
        }

        _Block_object_dispose(&v33, 8);

        _Block_object_dispose(&v39, 8);
        goto LABEL_16;
      }

      if (error)
      {
        v19 = MEMORY[0x1E696ABC0];
        v49 = *MEMORY[0x1E696A578];
        v50 = @"Wrong domain";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        *error = [v19 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v20];
      }
    }

    else if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v51 = *MEMORY[0x1E696A578];
      v52 = @"Unsupported path";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      *error = [v17 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v18];
    }

    v16 = 0;
LABEL_16:

    goto LABEL_17;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_BMXPCFileManager.m" lineNumber:356 description:{@"Invalid parameter not satisfying: %@", @"path"}];

  v23 = __biome_log_for_category(2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (error)
  {
    v24 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A578];
    v54[0] = @"Invalid path";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    *error = [v24 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v25];
  }

  v16 = 0;
LABEL_17:
  os_activity_scope_leave(&state);

  return v16;
}

@end