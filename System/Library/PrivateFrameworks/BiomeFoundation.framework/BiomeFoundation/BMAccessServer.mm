@interface BMAccessServer
- (BMAccessServer)initWithListener:(id)listener;
- (BOOL)_createDirectoryAtPath:(id)path;
- (BOOL)_hasDirectoryAtPath:(id)path;
- (BOOL)_removeDirectoryAtPath:(id)path;
- (void)removeResource:(id)resource reply:(id)reply;
- (void)requestAccessToResource:(id)resource withMode:(unint64_t)mode reply:(id)reply;
- (void)requestBiomeEndpoint:(BOOL)endpoint reply:(id)reply;
- (void)requestBiomeEndpointForAppScopedService:(unint64_t)service user:(unsigned int)user reply:(id)reply;
@end

@implementation BMAccessServer

- (BMAccessServer)initWithListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = BMAccessServer;
  v6 = [(BMAccessServer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, listener);
  }

  return v7;
}

- (BOOL)_createDirectoryAtPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  v5 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = __biome_log_for_category(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMAccessServer _createDirectoryAtPath:];
    }
  }

  return v5;
}

- (BOOL)_removeDirectoryAtPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  listener = self->_listener;
  pathCopy = path;
  v5 = [BMPaths biomeTemporaryDirectoryForDomain:[(BMAccessServiceListener *)listener domain]];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_new();
  uUIDString = [v7 UUIDString];
  v9 = [v6 stringWithFormat:@".tmp.%@", uUIDString];
  v10 = [v5 stringByAppendingPathComponent:v9];

  v11 = [v10 cStringUsingEncoding:4];
  v12 = [pathCopy cStringUsingEncoding:4];

  LODWORD(uUIDString) = renamex_np(v12, v11, 4u);
  v13 = __biome_log_for_category(16);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (uUIDString)
  {
    if (v14)
    {
      [BMAccessServer _removeDirectoryAtPath:];
    }

    v15 = 0;
  }

  else
  {
    if (v14)
    {
      [(BMAccessServer *)v11 _removeDirectoryAtPath:v12, v13];
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v20 = 0;
    v15 = [defaultManager removeItemAtPath:v10 error:&v20];
    v13 = v20;

    v17 = __biome_log_for_category(6);
    v18 = v17;
    if (v15)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v10;
        _os_log_impl(&dword_1AC15D000, v18, OS_LOG_TYPE_DEFAULT, "Successfully removed folder at %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [BMAccessServer _removeDirectoryAtPath:];
    }
  }

  return v15;
}

- (BOOL)_hasDirectoryAtPath:(id)path
{
  v3 = MEMORY[0x1E696AC08];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  return v6;
}

- (void)requestAccessToResource:(id)resource withMode:(unint64_t)mode reply:(id)reply
{
  v101[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  replyCopy = reply;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];

  v12 = __biome_log_for_category(6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    process = [bm_accessControlPolicy process];
    identifier = [process identifier];
    v33 = BMAccessModePrintableDescription(mode);
    *buf = 138543874;
    *&buf[4] = identifier;
    *&buf[12] = 2114;
    *&buf[14] = v33;
    *&buf[22] = 2114;
    *&buf[24] = resourceCopy;
    _os_log_debug_impl(&dword_1AC15D000, v12, OS_LOG_TYPE_DEBUG, "Evaluating %{public}@ request for %{public}@ access to %{public}@", buf, 0x20u);
  }

  if (resourceCopy)
  {
    if ((mode | 2) == 3)
    {
      if ([bm_accessControlPolicy allowsAccessToResource:resourceCopy withMode:mode])
      {
        v13 = +[BMResourceContainerManager sharedInstance];
        v79 = 0;
        v14 = [v13 openContainerForResource:resourceCopy mode:mode error:&v79];
        v15 = v79;

        if (v14)
        {
          v77 = [BMPaths pathForResource:resourceCopy inContainer:v14];
          if (![v77 length])
          {
            v34 = __biome_log_for_category(6);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [BMAccessServer requestAccessToResource:withMode:reply:];
            }

            v35 = MEMORY[0x1E696ABC0];
            v92 = *MEMORY[0x1E696A578];
            v93 = @"Failed to determine path for resource";
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
            v37 = [v35 errorWithDomain:@"BMAccessErrorDomain" code:10 userInfo:v36];
            (*(replyCopy + 2))(replyCopy, 0, 0, 0, v37);

            goto LABEL_56;
          }

          if ([resourceCopy type] != 1)
          {
            goto LABEL_15;
          }

          if (mode == 1)
          {
            *&v80 = 0;
            *(&v80 + 1) = &v80;
            *&v81 = 0x2020000000;
            v16 = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_1;
            *(&v81 + 1) = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_1;
            if (!getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_1)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_1;
              *&buf[24] = &unk_1E796AC10;
              *&buf[32] = &v80;
              __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_1(buf);
              v16 = *(*(&v80 + 1) + 24);
            }

            _Block_object_dispose(&v80, 8);
            if (!v16)
            {
              [BMAccessServer requestAccessToResource:withMode:reply:];
            }

            v17 = v16();
            name = [resourceCopy name];
            v19 = [v17 streamWithIdentifier:name error:0];

            if (v19)
            {

LABEL_15:
              delegate = [(BMAccessServer *)self delegate];
              if (delegate)
              {
                delegate2 = [(BMAccessServer *)self delegate];
                if (delegate2)
                {
                  delegate3 = [(BMAccessServer *)self delegate];
                  v75 = [delegate3 handlesDirectoryCreationForResource:resourceCopy inContainer:v14];

                  v23 = v75 ^ 1;
                }

                else
                {
                  v23 = 0;
                }
              }

              else
              {
                v23 = 1;
              }

              v41 = v23 ^ 1;
              if (!v77)
              {
                v41 = 1;
              }

              if ((v41 & 1) == 0 && ![(BMAccessServer *)self _hasDirectoryAtPath:v77])
              {
                [(BMAccessServer *)self _createDirectoryAtPath:v77];
              }

              delegate4 = [(BMAccessServer *)self delegate];

              if (delegate4 && (-[BMAccessServer delegate](self, "delegate"), v43 = objc_claimAutoreleasedReturnValue(), v44 = [v43 prepareResource:resourceCopy withMode:mode inContainer:v14], v43, (v44 & 1) == 0))
              {
                v49 = MEMORY[0x1E696ABC0];
                v86 = *MEMORY[0x1E696A578];
                v87 = @"Failed to prepare resource";
                v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
                v51 = [v49 errorWithDomain:@"BMAccessErrorDomain" code:11 userInfo:v50];
                (*(replyCopy + 2))(replyCopy, 0, 0, 0, v51);
              }

              else
              {
                if (mode == 3)
                {
                  v45 = MEMORY[0x1E69E9BB0];
                }

                else
                {
                  v45 = MEMORY[0x1E69E9BA8];
                }

                v46 = v77;
                uTF8String = [v77 UTF8String];
                v80 = 0u;
                v81 = 0u;
                process2 = [bm_accessControlPolicy process];
                v48 = process2;
                if (process2)
                {
                  objc_msgSend_auditToken(process2);
                }

                else
                {
                  v80 = 0u;
                  v81 = 0u;
                }

                v52 = *v45;
                v53 = *MEMORY[0x1E69E9BE0];
                *buf = v80;
                *&buf[16] = v81;
                v54 = sandbox_extension_issue_file_to_process();
                v55 = __biome_log_for_category(6);
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  if (v54)
                  {
                    v69 = "no error";
                  }

                  else
                  {
                    v68 = __error();
                    v69 = strerror(*v68);
                  }

                  *buf = 136447235;
                  *&buf[4] = v52;
                  *&buf[12] = 2081;
                  *&buf[14] = uTF8String;
                  *&buf[22] = 1024;
                  *&buf[24] = v53;
                  *&buf[28] = 2048;
                  *&buf[30] = v54;
                  *&buf[38] = 2082;
                  v85 = v69;
                  _os_log_debug_impl(&dword_1AC15D000, v55, OS_LOG_TYPE_DEBUG, "sandbox_extension_issue_file_to_process(%{public}s, %{private}s, 0x%X, <audit token>) = %p, %{public}s", buf, 0x30u);
                }

                if (v54)
                {
                  v56 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v54 length:strlen(v54) + 1 freeWhenDone:1];
                  v57 = __biome_log_for_category(6);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                  {
                    process3 = [bm_accessControlPolicy process];
                    identifier2 = [process3 identifier];
                    v72 = BMAccessModePrintableDescription(mode);
                    *buf = 138543875;
                    *&buf[4] = identifier2;
                    *&buf[12] = 2114;
                    *&buf[14] = v72;
                    *&buf[22] = 2113;
                    *&buf[24] = resourceCopy;
                    _os_log_debug_impl(&dword_1AC15D000, v57, OS_LOG_TYPE_DEBUG, "Granted %{public}@ request for %{public}@ access to %{private}@", buf, 0x20u);
                  }

                  (*(replyCopy + 2))(replyCopy, v14, v77, v56, 0);
                }

                else
                {
                  v58 = __biome_log_for_category(6);
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    v73 = BMAccessModePrintableDescription(mode);
                    v74 = *__error();
                    *buf = 138544131;
                    *&buf[4] = v73;
                    *&buf[12] = 2114;
                    *&buf[14] = resourceCopy;
                    *&buf[22] = 2113;
                    *&buf[24] = v77;
                    *&buf[32] = 1026;
                    *&buf[34] = v74;
                    _os_log_error_impl(&dword_1AC15D000, v58, OS_LOG_TYPE_ERROR, "Unable to issue %{public}@ extension token to %{public}@ path %{private}@, error %{public, darwin.errno}d", buf, 0x26u);
                  }

                  v59 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v60 = *__error();
                  v82 = *MEMORY[0x1E696A578];
                  v61 = MEMORY[0x1E696AEC0];
                  v62 = __error();
                  v63 = [v61 stringWithUTF8String:strerror(*v62)];
                  v83 = v63;
                  v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
                  v56 = [v59 initWithDomain:*MEMORY[0x1E696A798] code:v60 userInfo:v64];

                  (*(replyCopy + 2))(replyCopy, 0, 0, 0, v56);
                }
              }

              goto LABEL_56;
            }

            v65 = MEMORY[0x1E696ABC0];
            v88 = *MEMORY[0x1E696A578];
            v89 = @"Failed to look up stream resource";
            v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
            v67 = [v65 errorWithDomain:@"BMAccessErrorDomain" code:10 userInfo:v66];
            (*(replyCopy + 2))(replyCopy, 0, 0, 0, v67);
          }

          else
          {
            v38 = MEMORY[0x1E696ABC0];
            v90 = *MEMORY[0x1E696A578];
            v91 = @"Invalid mode for stream resource";
            v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
            v40 = [v38 errorWithDomain:@"BMAccessErrorDomain" code:7 userInfo:v39];
            (*(replyCopy + 2))(replyCopy, 0, 0, 0, v40);
          }

LABEL_56:

          goto LABEL_57;
        }

        v28 = __biome_log_for_category(6);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [BMAccessServer requestAccessToResource:withMode:reply:];
        }

        v29 = MEMORY[0x1E696ABC0];
        v94 = *MEMORY[0x1E696A578];
        v95 = @"Failed to open container for resource";
        v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v30 = [v29 errorWithDomain:@"BMAccessErrorDomain" code:13 userInfo:v78];
        (*(replyCopy + 2))(replyCopy, 0, 0, 0, v30);
      }

      else
      {
        v26 = __biome_log_for_category(6);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [BMAccessServer requestAccessToResource:withMode:reply:];
        }

        v27 = MEMORY[0x1E696ABC0];
        v96 = *MEMORY[0x1E696A578];
        v97 = @"Not entitled";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
        v14 = [v27 errorWithDomain:@"BMAccessErrorDomain" code:3 userInfo:v15];
        (*(replyCopy + 2))(replyCopy, 0, 0, 0, v14);
      }
    }

    else
    {
      v25 = MEMORY[0x1E696ABC0];
      v98 = *MEMORY[0x1E696A578];
      v99 = @"Unsupported access mode";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
      v14 = [v25 errorWithDomain:@"BMAccessErrorDomain" code:7 userInfo:v15];
      (*(replyCopy + 2))(replyCopy, 0, 0, 0, v14);
    }
  }

  else
  {
    v24 = MEMORY[0x1E696ABC0];
    v100 = *MEMORY[0x1E696A578];
    v101[0] = @"Nil resource specifier";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:&v100 count:1];
    v14 = [v24 errorWithDomain:@"BMAccessErrorDomain" code:7 userInfo:v15];
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, v14);
  }

LABEL_57:
}

- (void)removeResource:(id)resource reply:(id)reply
{
  v67[1] = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  replyCopy = reply;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];

  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(BMAccessServer *)bm_accessControlPolicy removeResource:resourceCopy reply:v10];
  }

  if (!resourceCopy)
  {
    v21 = MEMORY[0x1E696ABC0];
    v66 = *MEMORY[0x1E696A578];
    v67[0] = @"Nil resource specifier";
    v22 = MEMORY[0x1E695DF20];
    v23 = v67;
    v24 = &v66;
LABEL_15:
    v15 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    v25 = v21;
    v26 = 7;
    goto LABEL_16;
  }

  if ([resourceCopy type] != 4)
  {
    v21 = MEMORY[0x1E696ABC0];
    v64 = *MEMORY[0x1E696A578];
    v65 = @"Invalid resource type";
    v22 = MEMORY[0x1E695DF20];
    v23 = &v65;
    v24 = &v64;
    goto LABEL_15;
  }

  process = [bm_accessControlPolicy process];
  processType = [process processType];

  if (processType != 5)
  {
    v21 = MEMORY[0x1E696ABC0];
    v62 = *MEMORY[0x1E696A578];
    v63 = @"Invalid process type";
    v22 = MEMORY[0x1E695DF20];
    v23 = &v63;
    v24 = &v62;
    goto LABEL_15;
  }

  if ([bm_accessControlPolicy allowsAccessToResource:resourceCopy withMode:2])
  {
    v13 = +[BMResourceContainerManager sharedInstance];
    v47 = 0;
    v14 = [v13 openContainerForResource:resourceCopy mode:3 error:&v47];
    v15 = v47;

    if (!v14)
    {
      v29 = __biome_log_for_category(6);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [BMAccessServer requestAccessToResource:withMode:reply:];
      }

      v30 = MEMORY[0x1E696ABC0];
      v58 = *MEMORY[0x1E696A578];
      v59 = @"Failed to open container for resource";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v31 = [v30 errorWithDomain:@"BMAccessErrorDomain" code:13 userInfo:v16];
      replyCopy[2](replyCopy, 0, v31);

      goto LABEL_43;
    }

    v16 = [BMPaths pathForResource:resourceCopy inContainer:v14];
    if ([v16 length])
    {
      delegate = [(BMAccessServer *)self delegate];
      if (delegate)
      {
        delegate2 = [(BMAccessServer *)self delegate];
        if (delegate2)
        {
          [(BMAccessServer *)self delegate];
          v19 = v46 = v16;
          v20 = [v19 handlesDirectoryRemovalForResource:resourceCopy inContainer:v14] ^ 1;

          v16 = v46;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 1;
      }

      if (v16 && v20 && [(BMAccessServer *)self _hasDirectoryAtPath:v16]&& ![(BMAccessServer *)self _removeDirectoryAtPath:v16])
      {
        v41 = MEMORY[0x1E696ABC0];
        v54 = *MEMORY[0x1E696A578];
        v55 = @"Failed to clean up directory";
        v42 = MEMORY[0x1E695DF20];
        v43 = &v55;
        v44 = &v54;
      }

      else
      {
        delegate3 = [(BMAccessServer *)self delegate];

        if (!delegate3 || (-[BMAccessServer delegate](self, "delegate"), v38 = objc_claimAutoreleasedReturnValue(), v39 = [v38 teardownResource:resourceCopy inContainer:v14], v38, (v39 & 1) != 0))
        {
          v40 = __biome_log_for_category(6);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v49 = v16;
            v50 = 2112;
            v51 = resourceCopy;
            _os_log_impl(&dword_1AC15D000, v40, OS_LOG_TYPE_DEFAULT, "Successfully removed path: %@ for resource: %@", buf, 0x16u);
          }

          replyCopy[2](replyCopy, 1, 0);
          goto LABEL_43;
        }

        v41 = MEMORY[0x1E696ABC0];
        v52 = *MEMORY[0x1E696A578];
        v53 = @"Failed to teardown resource";
        v42 = MEMORY[0x1E695DF20];
        v43 = &v53;
        v44 = &v52;
      }

      v34 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:1];
      v35 = v41;
      v36 = 0;
    }

    else
    {
      v32 = __biome_log_for_category(6);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [BMAccessServer removeResource:reply:];
      }

      v33 = MEMORY[0x1E696ABC0];
      v56 = *MEMORY[0x1E696A578];
      v57 = @"Failed to determine path for resource";
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v35 = v33;
      v36 = 10;
    }

    v45 = [v35 errorWithDomain:@"BMAccessErrorDomain" code:v36 userInfo:v34];
    replyCopy[2](replyCopy, 0, v45);

LABEL_43:
    goto LABEL_17;
  }

  v27 = __biome_log_for_category(6);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [BMAccessServer removeResource:reply:];
  }

  v28 = MEMORY[0x1E696ABC0];
  v60 = *MEMORY[0x1E696A578];
  v61 = @"Not entitled";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v25 = v28;
  v26 = 3;
LABEL_16:
  v14 = [v25 errorWithDomain:@"BMAccessErrorDomain" code:v26 userInfo:v15];
  replyCopy[2](replyCopy, 0, v14);
LABEL_17:
}

- (void)requestBiomeEndpoint:(BOOL)endpoint reply:(id)reply
{
  endpointCopy = endpoint;
  v23[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];

  if (([bm_accessControlPolicy allowsProxyingBiomeEndpoint] & 1) == 0)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = *MEMORY[0x1E696A578];
    v23[0] = @"Not entitled";
    endpointForCoreDuetUseCases = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v11 = v10;
    v12 = 3;
LABEL_7:
    v14 = [v11 initWithDomain:@"BMAccessErrorDomain" code:v12 userInfo:endpointForCoreDuetUseCases];
    replyCopy[2](replyCopy, 0, v14);

    goto LABEL_8;
  }

  if (((([(BMAccessServiceListener *)self->_listener domain]!= 1) ^ endpointCopy) & 1) == 0)
  {
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E696A578];
    v21 = @"Wrong domain";
    endpointForCoreDuetUseCases = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v11 = v13;
    v12 = 7;
    goto LABEL_7;
  }

  endpointForCoreDuetUseCases = [(BMAccessServiceListener *)self->_listener endpointForCoreDuetUseCases];
  if (endpointForCoreDuetUseCases)
  {
    (replyCopy)[2](replyCopy, endpointForCoreDuetUseCases, 0);
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A578];
    v19 = @"Failed to get endpoint";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v17 = [v15 initWithDomain:@"BMAccessErrorDomain" code:0 userInfo:v16];
    replyCopy[2](replyCopy, 0, v17);
  }

LABEL_8:
}

- (void)requestBiomeEndpointForAppScopedService:(unint64_t)service user:(unsigned int)user reply:(id)reply
{
  v24[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];

  if (([bm_accessControlPolicy allowsConnectionToWriteService] & 1) == 0 && (objc_msgSend(bm_accessControlPolicy, "allowsConnectionToSetStoreUpdateService") & 1) == 0)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"Not entitled";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v12 = v14;
    v13 = 3;
    goto LABEL_8;
  }

  if ([(BMAccessServiceListener *)self->_listener domain]!= service)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E696A578];
    v22 = @"Wrong domain";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v12 = v11;
    v13 = 7;
LABEL_8:
    v15 = [v12 initWithDomain:@"BMAccessErrorDomain" code:v13 userInfo:v10];
    replyCopy[2](replyCopy, 0, v15);

    goto LABEL_9;
  }

  v10 = [(BMAccessServiceListener *)self->_listener uniqueEndpointForAppScopedServicesActingOnBehalfOfClientWithAccessControlPolicy:bm_accessControlPolicy];
  if (v10)
  {
    (replyCopy)[2](replyCopy, v10, 0);
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E696A578];
    v20 = @"Failed to get endpoint";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v18 = [v16 initWithDomain:@"BMAccessErrorDomain" code:0 userInfo:v17];
    replyCopy[2](replyCopy, 0, v18);
  }

LABEL_9:
}

- (void)_createDirectoryAtPath:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  [MEMORY[0x1E69C5D08] isDeviceUnlocked];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_1(&dword_1AC15D000, v0, v1, "Can't create folder at %@ with error %@, isUnlocked: %hhd", v2, v3, v4, v5);
}

- (void)_removeDirectoryAtPath:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  *v8 = 136315650;
  *&v8[4] = v1;
  *&v8[12] = 2080;
  *&v8[14] = v0;
  *&v8[22] = 1024;
  v9 = *__error();
  OUTLINED_FUNCTION_2_1(&dword_1AC15D000, v2, v3, "Could not rename directory at path %s into %s with error: %d", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], v9);
}

- (void)_removeDirectoryAtPath:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = a1;
  v5 = 2080;
  v6 = a2;
  _os_log_error_impl(&dword_1AC15D000, log, OS_LOG_TYPE_ERROR, "Successfully renamed directory at path %s into %s", &v3, 0x16u);
}

- (void)_removeDirectoryAtPath:.cold.3()
{
  OUTLINED_FUNCTION_4_3();
  [MEMORY[0x1E69C5D08] isDeviceUnlocked];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2_1(&dword_1AC15D000, v0, v1, "Can't remove folder at %@ with error %@, isUnlocked: %hhd", v2, v3, v4, v5);
}

- (void)requestAccessToResource:withMode:reply:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<_BMRootLibrary> __softlink__BiomeLibraryAndInternalLibraryNode(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMAccessServer.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)removeResource:(NSObject *)a3 reply:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 process];
  v6 = [v5 identifier];
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a2;
  _os_log_debug_impl(&dword_1AC15D000, a3, OS_LOG_TYPE_DEBUG, "Evaluating %{public}@ request for removal of %{public}@", &v7, 0x16u);
}

@end