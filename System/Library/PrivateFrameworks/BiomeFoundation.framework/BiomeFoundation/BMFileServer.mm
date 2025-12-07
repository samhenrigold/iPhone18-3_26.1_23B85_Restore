@interface BMFileServer
- (BMFileServer)initWithDirectory:(id)directory;
- (BMFileServer)initWithDirectory:(id)directory library:(id)library;
- (BOOL)allowedToAccessStream:(id)stream withMode:(int)mode error:(id *)error;
- (BOOL)entitledToAccessClientCompute:(id)compute error:(id *)error;
- (BOOL)entitledToAccessSharedSyncWithError:(id *)error;
- (BOOL)isBiomeSyncDaemon;
- (BOOL)isPrimaryDaemon;
- (id)currentUseCase;
- (void)createDirectoryAtPath:(id)path reply:(id)reply;
- (void)fileHandleForFileAtPath:(id)path flags:(int)flags protection:(int)protection reply:(id)reply;
- (void)removeDirectoryAtPath:(id)path reply:(id)reply;
- (void)removeFileAtPath:(id)path reply:(id)reply;
- (void)replaceFileAtPath:(id)path withFileHandle:(id)handle protection:(int)protection flags:(int)flags reply:(id)reply;
- (void)temporaryFileHandleWithProtection:(int)protection reply:(id)reply;
@end

@implementation BMFileServer

- (id)currentUseCase
{
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];
  useCase = [bm_accessControlPolicy useCase];

  return useCase;
}

- (BMFileServer)initWithDirectory:(id)directory
{
  directoryCopy = directory;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_2;
  v13 = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_2;
  if (!getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_2;
    v9[3] = &unk_1E796AC10;
    v9[4] = &v10;
    __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_2(v9);
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    [BMFileServer initWithDirectory:];
  }

  v6 = v5();
  v7 = [(BMFileServer *)self initWithDirectory:directoryCopy library:v6];

  return v7;
}

- (BMFileServer)initWithDirectory:(id)directory library:(id)library
{
  v18 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  libraryCopy = library;
  v15.receiver = self;
  v15.super_class = BMFileServer;
  v8 = [(BMFileServer *)&v15 init];
  if (v8)
  {
    v9 = __biome_log_for_category(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = directoryCopy;
      _os_log_impl(&dword_1AC15D000, v9, OS_LOG_TYPE_DEFAULT, "BMFileServer in %@", buf, 0xCu);
    }

    v10 = [directoryCopy copy];
    directory = v8->_directory;
    v8->_directory = v10;

    v12 = [BMFileManager fileManagerWithDirectAccessToDirectory:directoryCopy cachingOptions:0];
    fileManager = v8->_fileManager;
    v8->_fileManager = v12;

    [BMPaths getServiceDomain:&v8->_domain subpath:0 forPath:directoryCopy];
    objc_storeStrong(&v8->_library, library);
  }

  return v8;
}

- (BOOL)allowedToAccessStream:(id)stream withMode:(int)mode error:(id *)error
{
  modeCopy = mode;
  v62[1] = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v10 = currentConnection;
  if (!currentConnection)
  {
    bm_accessControlPolicy = __biome_log_for_category(6);
    if (os_log_type_enabled(bm_accessControlPolicy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC15D000, bm_accessControlPolicy, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", buf, 2u);
    }

    v17 = 0;
    goto LABEL_46;
  }

  if ((modeCopy & 1 | 2) == 2 || modeCopy < 0)
  {
    bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];
    if (modeCopy < 0 || (modeCopy & 3) == 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = 3;
    }

    v14 = [[BMResourceSpecifier alloc] initWithType:1 name:streamCopy];
    if (!v14)
    {
      if (error)
      {
        streamCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid stream identifier '%@'", streamCopy];
        v20 = MEMORY[0x1E696ABC0];
        v59 = *MEMORY[0x1E696A578];
        v60 = streamCopy;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v22 = v20;
        v23 = 7;
LABEL_42:
        *error = [v22 errorWithDomain:@"BiomeStorageError" code:v23 userInfo:v21];
        goto LABEL_43;
      }

LABEL_44:
      v17 = 0;
      goto LABEL_45;
    }

    if (([bm_accessControlPolicy allowsAccessToResource:v14 withMode:v13]& 1) != 0)
    {
      if (([streamCopy isEqual:@"GenerativeExperiences.TransparencyLog"] & 1) == 0 && (objc_msgSend(streamCopy, "isEqual:", @"PrivateCloudCompute.RequestLog") & 1) == 0 && !objc_msgSend(streamCopy, "hasPrefix:", @"AppleIntelligenceReport."))
      {
        goto LABEL_15;
      }

      currentUseCase = [(BMFileServer *)self currentUseCase];
      v16 = [currentUseCase isEqual:@"__pruner__"];

      if (v16)
      {
        goto LABEL_15;
      }

      v35 = +[_BMManagedConfiguration shared];
      allowAppleIntelligenceReport = [v35 allowAppleIntelligenceReport];

      if (allowAppleIntelligenceReport)
      {
        v37 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.AppleIntelligenceReport"];
        v38 = [v37 valueForKey:@"reportDuration"];
        v39 = v38;
        v40 = &unk_1F20EBDB8;
        if (v38)
        {
          v40 = v38;
        }

        v41 = v40;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v41 doubleValue];
          v43 = v42;

          if (v43 != 0.0)
          {
LABEL_15:
            v17 = 1;
LABEL_45:

            goto LABEL_46;
          }
        }

        else
        {
        }
      }

      if (error)
      {
        streamCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Stream '%@' is not enabled", streamCopy];
        v49 = MEMORY[0x1E696ABC0];
        v53[0] = *MEMORY[0x1E696A578];
        v53[1] = @"UserControlled";
        v54[0] = streamCopy2;
        v54[1] = MEMORY[0x1E695E118];
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
        v22 = v49;
        streamCopy = streamCopy2;
        v23 = 5;
        goto LABEL_42;
      }

      goto LABEL_44;
    }

    v51 = [(_BMRootLibrary *)self->_library streamWithIdentifier:streamCopy error:0];
    v21 = [v51 valueForKeyPath:@"configuration.allowedClients"];
    if (v21 && (-[NSObject process](bm_accessControlPolicy, "process"), v24 = objc_claimAutoreleasedReturnValue(), [v24 identifier], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v21, "containsObject:", v25), v25, v24, (v26 & 1) == 0))
    {
      if (error)
      {
        v44 = MEMORY[0x1E696AEC0];
        process = [bm_accessControlPolicy process];
        identifier = [process identifier];
        streamCopy3 = [v44 stringWithFormat:@"'%@' is not present in allow-list for '%@'", identifier, streamCopy];

        v31 = MEMORY[0x1E696ABC0];
        v57 = *MEMORY[0x1E696A578];
        v58 = streamCopy3;
        v32 = MEMORY[0x1E695DF20];
        v33 = &v58;
        v34 = &v57;
        goto LABEL_36;
      }
    }

    else if (error)
    {
      v27 = MEMORY[0x1E696AEC0];
      descriptionOfProcessAndUseCase = [bm_accessControlPolicy descriptionOfProcessAndUseCase];
      v29 = BMAccessModePrintableDescription(v13);
      streamCopy3 = [v27 stringWithFormat:@"%@ is not entitled for '%@' access to '%@'", descriptionOfProcessAndUseCase, v29, streamCopy];

      v31 = MEMORY[0x1E696ABC0];
      v55 = *MEMORY[0x1E696A578];
      v56 = streamCopy3;
      v32 = MEMORY[0x1E695DF20];
      v33 = &v56;
      v34 = &v55;
LABEL_36:
      v47 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
      *error = [v31 errorWithDomain:@"BiomeStorageError" code:5 userInfo:v47];
    }

    streamCopy = v51;
LABEL_43:

    goto LABEL_44;
  }

  if (error)
  {
    v18 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A578];
    v62[0] = @"Invalid access mode";
    bm_accessControlPolicy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    [v18 errorWithDomain:@"BiomeStorageError" code:7 userInfo:bm_accessControlPolicy];
    *error = v17 = 0;
LABEL_46:

    goto LABEL_47;
  }

  v17 = 0;
LABEL_47:

  return v17;
}

- (BOOL)entitledToAccessClientCompute:(id)compute error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  computeCopy = compute;
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v7 = currentConnection;
  if (currentConnection)
  {
    bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];
    v9 = [bm_accessControlPolicy allowsAccessToClientCompute:computeCopy];
    v10 = v9;
    if (error && (v9 & 1) == 0)
    {
      v11 = MEMORY[0x1E696AEC0];
      bm_process = [v7 bm_process];
      executableName = [bm_process executableName];
      computeCopy = [v11 stringWithFormat:@"'%@' is not entitled to access compute as '%@'", executableName, computeCopy];

      v15 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v20[0] = computeCopy;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *error = [v15 errorWithDomain:@"BiomeStorageError" code:5 userInfo:v16];
    }
  }

  else
  {
    bm_accessControlPolicy = __biome_log_for_category(6);
    if (os_log_type_enabled(bm_accessControlPolicy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC15D000, bm_accessControlPolicy, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)entitledToAccessSharedSyncWithError:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v5 = currentConnection;
  if (!currentConnection)
  {
    bm_accessControlPolicy = __biome_log_for_category(6);
    if (os_log_type_enabled(bm_accessControlPolicy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AC15D000, bm_accessControlPolicy, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", buf, 2u);
    }

    goto LABEL_12;
  }

  bm_accessControlPolicy = [currentConnection bm_accessControlPolicy];
  process = [bm_accessControlPolicy process];
  if ([process BOOLForEntitlement:@"com.apple.private.biome.sync"])
  {

    v8 = 1;
    goto LABEL_13;
  }

  if (os_variant_allows_internal_security_policies())
  {
    process2 = [bm_accessControlPolicy process];
    v8 = [process2 BOOLForEntitlement:@"com.apple.internal.biome.sync"];
  }

  else
  {
    v8 = 0;
  }

  if (error && (v8 & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    bm_process = [v5 bm_process];
    executableName = [bm_process executableName];
    v13 = [v10 stringWithFormat:@"'%@' is missing entitlement 'com.apple.private.biome.sync'", executableName];

    v14 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *error = [v14 errorWithDomain:@"BiomeStorageError" code:5 userInfo:v15];

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (BOOL)isBiomeSyncDaemon
{
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v3 = currentConnection;
  if (currentConnection)
  {
    bm_process = [currentConnection bm_process];
    v5 = [bm_process processType] == 3;
  }

  else
  {
    v6 = __biome_log_for_category(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AC15D000, v6, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)isPrimaryDaemon
{
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v3 = currentConnection;
  if (currentConnection)
  {
    bm_process = [currentConnection bm_process];
    v5 = [bm_process processType] == 2;
  }

  else
  {
    v6 = __biome_log_for_category(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AC15D000, v6, OS_LOG_TYPE_DEFAULT, "Connection invalidated before entitlement check, denying request", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)fileHandleForFileAtPath:(id)path flags:(int)flags protection:(int)protection reply:(id)reply
{
  v7 = *&protection;
  v8 = *&flags;
  v103[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  replyCopy = reply;
  v12 = BMFileServerValidateAndParsePath(pathCopy);
  if (!v12)
  {
    v24 = __biome_log_for_category(6);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
    }

    v25 = MEMORY[0x1E696ABC0];
    v102 = *MEMORY[0x1E696A578];
    v103[0] = @"Invalid path";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:&v102 count:1];
    v16 = [v25 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v13];
    goto LABEL_14;
  }

  v13 = [(NSString *)self->_directory stringByAppendingPathComponent:pathCopy];
  v14 = __biome_log_for_category(6);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v101 = pathCopy;
    _os_log_impl(&dword_1AC15D000, v14, OS_LOG_TYPE_INFO, "-fileHandleForFileAtPath:flags:protection:reply: called with subpath: %{public}@", buf, 0xCu);
  }

  if ((v8 & 0x9EEF7CFD) != 0 || v8 >> 30 && (v8 & 0x100000) == 0)
  {
    v15 = MEMORY[0x1E696ABC0];
    v98 = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid flags: %#X", v8];
    v99 = v16;
    v17 = MEMORY[0x1E695DF20];
    v18 = &v99;
    v19 = &v98;
LABEL_8:
    v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    v21 = v15;
    v22 = 2;
LABEL_9:
    v23 = [v21 errorWithDomain:@"BiomeStorageError" code:v22 userInfo:v20];
    replyCopy[2](replyCopy, 0, v23);

LABEL_10:
    goto LABEL_15;
  }

  if ((v7 + 1) >= 9)
  {
    v33 = MEMORY[0x1E696ABC0];
    v96 = *MEMORY[0x1E696A578];
    v97 = @"Invalid protection class";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    v34 = v33;
    v35 = 2;
LABEL_23:
    v36 = [v34 errorWithDomain:@"BiomeStorageError" code:v35 userInfo:v16];
    replyCopy[2](replyCopy, 0, v36);

    goto LABEL_15;
  }

  v72 = v8 & 0x40108202;
  v26 = [v12 objectForKeyedSubscript:@"pathType"];
  v27 = [v26 isEqual:@"streams"];

  if (v27)
  {
    v16 = [v12 objectForKeyedSubscript:@"stream"];
    v28 = [v12 objectForKeyedSubscript:@"streamType"];
    unsignedIntegerValue = [v28 unsignedIntegerValue];

    if (self->_domain != BMServiceDomainForStream(unsignedIntegerValue, v16))
    {
      v41 = MEMORY[0x1E696ABC0];
      v94 = *MEMORY[0x1E696A578];
      v95 = @"Wrong domain";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v21 = v41;
      v22 = 3;
      goto LABEL_9;
    }

    currentUseCase = [(BMFileServer *)self currentUseCase];
    if ([currentUseCase isEqual:@"__writer__"])
    {
      v79 = 0;
      v31 = [(BMFileServer *)self allowedToAccessStream:v16 withMode:2 error:&v79];
      v20 = v79;

      if (!v31)
      {
        goto LABEL_46;
      }

      v32 = v20;
    }

    else
    {

      v32 = 0;
    }

    v50 = [v12 objectForKeyedSubscript:@"subscriptions"];

    if (v50)
    {
      v78 = v32;
      v51 = [(BMFileServer *)self allowedToAccessStream:v16 withMode:2 error:&v78];
      v52 = v78;
    }

    else
    {
      v77 = v32;
      v51 = [(BMFileServer *)self allowedToAccessStream:v16 withMode:v72 | 0x21000000u error:&v77];
      v52 = v77;
    }

    v20 = v52;

    if (v51)
    {
      v47 = v16;
      v16 = v20;
LABEL_54:

      goto LABEL_55;
    }

LABEL_46:
    replyCopy[2](replyCopy, 0, v20);
    goto LABEL_10;
  }

  v37 = [v12 objectForKeyedSubscript:@"pathType"];
  v38 = [v37 isEqual:@"compute"];

  if (v38)
  {
    v39 = [v12 objectForKeyedSubscript:@"clientIdentifier"];
    v76 = 0;
    v40 = [(BMFileServer *)self entitledToAccessClientCompute:v39 error:&v76];
    v16 = v76;

    if (v40)
    {
      goto LABEL_55;
    }

LABEL_14:
    replyCopy[2](replyCopy, 0, v16);
    goto LABEL_15;
  }

  v42 = [v12 objectForKeyedSubscript:@"pathType"];
  v43 = [v42 isEqual:@"sharedSync"];

  if (!v43)
  {
    v53 = [v12 objectForKeyedSubscript:@"pathType"];
    v54 = [v53 isEqual:@"resourceGeneration"];

    if (v54)
    {
      if ([(BMFileServer *)self isPrimaryDaemon]|| [(BMFileServer *)self isBiomeSyncDaemon])
      {
        v16 = 0;
        goto LABEL_55;
      }

      v55 = MEMORY[0x1E696ABC0];
      v88 = *MEMORY[0x1E696A578];
      v89 = @"Access denied";
      v56 = MEMORY[0x1E695DF20];
      v57 = &v89;
      v58 = &v88;
    }

    else
    {
      v55 = MEMORY[0x1E696ABC0];
      v86 = *MEMORY[0x1E696A578];
      v87 = @"Invalid request";
      v56 = MEMORY[0x1E695DF20];
      v57 = &v87;
      v58 = &v86;
    }

LABEL_48:
    v16 = [v56 dictionaryWithObjects:v57 forKeys:v58 count:1];
    v34 = v55;
    v35 = 5;
    goto LABEL_23;
  }

  v44 = [v12 objectForKeyedSubscript:@"stream"];

  if (!v44)
  {
    v59 = [v12 objectForKeyedSubscript:@"generation"];

    if (!v59)
    {
      v74 = 0;
      v71 = [(BMFileServer *)self entitledToAccessSharedSyncWithError:&v74];
      v16 = v74;
      if ((v71 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_31;
    }

    if ([(BMFileServer *)self isBiomeSyncDaemon])
    {
      if ((v8 & 2) == 0)
      {
        v16 = 0;
        goto LABEL_31;
      }

      v55 = MEMORY[0x1E696ABC0];
      v90 = *MEMORY[0x1E696A578];
      v91 = @"Write access denied";
      v56 = MEMORY[0x1E695DF20];
      v57 = &v91;
      v58 = &v90;
    }

    else
    {
      v55 = MEMORY[0x1E696ABC0];
      v92 = *MEMORY[0x1E696A578];
      v93 = @"Access denied";
      v56 = MEMORY[0x1E695DF20];
      v57 = &v93;
      v58 = &v92;
    }

    goto LABEL_48;
  }

  v45 = [v12 objectForKeyedSubscript:@"stream"];
  v75 = 0;
  v46 = [(BMFileServer *)self allowedToAccessStream:v45 withMode:v72 | 0x21000000u error:&v75];
  v16 = v75;

  if (!v46)
  {
    goto LABEL_14;
  }

LABEL_31:
  v47 = [v12 objectForKeyedSubscript:@"deviceType"];
  v48 = +[BMStoreDirectory remoteDevices];
  if (([v47 isEqual:v48]& 1) == 0)
  {

    goto LABEL_54;
  }

  v49 = [v12 objectForKeyedSubscript:@"segment"];

  if (v7 != 6 && v49)
  {
    v47 = __biome_log_for_category(6);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
    }

    goto LABEL_54;
  }

LABEL_55:
  v60 = [v12 objectForKeyedSubscript:@"streamType"];
  if ([v60 unsignedIntegerValue] == 1)
  {
    v61 = [v12 objectForKeyedSubscript:?];
    v62 = [BMPublicStreamUtilities streamForStreamIdentifier:v61];

    if (!v62)
    {
      v63 = __biome_log_for_category(6);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
      }

      v15 = MEMORY[0x1E696ABC0];
      v84 = *MEMORY[0x1E696A578];
      v85 = @"Invalid stream identifier";
      v17 = MEMORY[0x1E695DF20];
      v18 = &v85;
      v19 = &v84;
      goto LABEL_8;
    }
  }

  else
  {
  }

  fileManager = self->_fileManager;
  if (!fileManager)
  {
    v69 = __biome_log_for_category(6);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
    }

    v70 = MEMORY[0x1E696ABC0];
    v82 = *MEMORY[0x1E696A578];
    v83 = @"Internal failure";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v21 = v70;
    v22 = 0;
    goto LABEL_9;
  }

  v73 = v16;
  v65 = [(BMFileManager *)fileManager fileHandleForFileAtPath:v13 flags:v72 | 0x21000000u protection:v7 error:&v73];
  v66 = v73;

  if (!(v65 | v66))
  {
    v67 = MEMORY[0x1E696ABC0];
    v80 = *MEMORY[0x1E696A578];
    v81 = @"Unspecified failure";
    v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v66 = [v67 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v68];
  }

  replyCopy[2](replyCopy, v65, v66);

  v16 = v66;
LABEL_15:
}

- (void)createDirectoryAtPath:(id)path reply:(id)reply
{
  v56[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  replyCopy = reply;
  v8 = BMFileServerValidateAndParsePath(pathCopy);
  if (!v8)
  {
    v16 = __biome_log_for_category(6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer createDirectoryAtPath:reply:];
    }

    v17 = MEMORY[0x1E696ABC0];
    v55 = *MEMORY[0x1E696A578];
    v56[0] = @"Invalid path";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    v18 = [v17 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v9];
LABEL_19:
    replyCopy[2](replyCopy, v18);
    goto LABEL_20;
  }

  v9 = [(NSString *)self->_directory stringByAppendingPathComponent:pathCopy];
  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v54 = pathCopy;
    _os_log_impl(&dword_1AC15D000, v10, OS_LOG_TYPE_INFO, "-createDirectoryAtPath:reply: called with subpath: %{public}@", buf, 0xCu);
  }

  v11 = [v8 objectForKeyedSubscript:@"pathType"];
  v12 = [v11 isEqual:@"streams"];

  if (v12)
  {
    v13 = [v8 objectForKeyedSubscript:@"stream"];
    v44 = 0;
    v14 = [(BMFileServer *)self allowedToAccessStream:v13 withMode:0 error:&v44];
    v15 = v44;
  }

  else
  {
    v19 = [v8 objectForKeyedSubscript:@"pathType"];
    v20 = [v19 isEqual:@"compute"];

    if (v20)
    {
      v13 = [v8 objectForKeyedSubscript:@"clientIdentifier"];
      v43 = 0;
      v14 = [(BMFileServer *)self entitledToAccessClientCompute:v13 error:&v43];
      v15 = v43;
    }

    else
    {
      v21 = [v8 objectForKeyedSubscript:@"pathType"];
      v22 = [v21 isEqual:@"sharedSync"];

      if (!v22)
      {
        v39 = MEMORY[0x1E696ABC0];
        v51 = *MEMORY[0x1E696A578];
        v52 = @"Invalid request";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v40 = [v39 errorWithDomain:@"BiomeStorageError" code:3 userInfo:v18];
        replyCopy[2](replyCopy, v40);

        goto LABEL_20;
      }

      v13 = [v8 objectForKeyedSubscript:@"stream"];
      v42 = 0;
      v14 = [(BMFileServer *)self allowedToAccessStream:v13 withMode:0 error:&v42];
      v15 = v42;
    }
  }

  v18 = v15;

  if (!v14)
  {
    goto LABEL_19;
  }

  v23 = [v8 objectForKeyedSubscript:@"streamType"];
  if ([v23 unsignedIntegerValue] == 1)
  {
    v24 = [v8 objectForKeyedSubscript:@"stream"];
    v25 = [BMPublicStreamUtilities streamForStreamIdentifier:v24];

    if (!v25)
    {
      v26 = __biome_log_for_category(6);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
      }

      v27 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A578];
      v50 = @"Invalid stream identifier";
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v29 = v27;
      v30 = 2;
LABEL_30:
      v38 = [v29 errorWithDomain:@"BiomeStorageError" code:v30 userInfo:v28];
      replyCopy[2](replyCopy, v38);

      goto LABEL_20;
    }
  }

  else
  {
  }

  fileManager = self->_fileManager;
  if (!fileManager)
  {
    v36 = __biome_log_for_category(6);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
    }

    v37 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v48 = @"Internal failure";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v29 = v37;
    v30 = 0;
    goto LABEL_30;
  }

  v41 = v18;
  v32 = [(BMFileManager *)fileManager createDirectoryAtPath:v9 error:&v41];
  v33 = v41;

  if (!v32 && !v33)
  {
    v34 = MEMORY[0x1E696ABC0];
    v45 = *MEMORY[0x1E696A578];
    v46 = @"Unspecified failure";
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v33 = [v34 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v35];
  }

  replyCopy[2](replyCopy, v33);
  v18 = v33;
LABEL_20:
}

- (void)removeFileAtPath:(id)path reply:(id)reply
{
  v80[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  replyCopy = reply;
  v8 = BMFileServerValidateAndParsePath(pathCopy);
  if (!v8)
  {
    v18 = __biome_log_for_category(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer removeFileAtPath:reply:];
    }

    v19 = MEMORY[0x1E696ABC0];
    v79 = *MEMORY[0x1E696A578];
    v80[0] = @"Invalid path";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
    v15 = [v19 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v9];
LABEL_21:
    replyCopy[2](replyCopy, v15);
    goto LABEL_55;
  }

  v9 = [(NSString *)self->_directory stringByAppendingPathComponent:pathCopy];
  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v78 = pathCopy;
    _os_log_impl(&dword_1AC15D000, v10, OS_LOG_TYPE_INFO, "-removeFileAtPath:reply: called with subpath: %{public}@", buf, 0xCu);
  }

  v11 = [v8 objectForKeyedSubscript:@"pathType"];
  v12 = [v11 isEqual:@"streams"];

  if (v12)
  {
    v13 = [v8 objectForKeyedSubscript:@"subscriptions"];

    if (v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v75 = *MEMORY[0x1E696A578];
      v76 = @"Client processes not allowed read-write access to subscriptions substream";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v16 = v14;
      v17 = 5;
LABEL_26:
      v38 = [v16 errorWithDomain:@"BiomeStorageError" code:v17 userInfo:v15];
      replyCopy[2](replyCopy, v38);

      goto LABEL_55;
    }

    v22 = [v8 objectForKeyedSubscript:@"stream"];
    v64 = 0;
    v23 = [(BMFileServer *)self allowedToAccessStream:v22 withMode:2 error:&v64];
    v24 = v64;
  }

  else
  {
    v20 = [v8 objectForKeyedSubscript:@"pathType"];
    v21 = [v20 isEqual:@"compute"];

    if (v21)
    {
      v22 = [v8 objectForKeyedSubscript:@"clientIdentifier"];
      v63 = 0;
      v23 = [(BMFileServer *)self entitledToAccessClientCompute:v22 error:&v63];
      v24 = v63;
    }

    else
    {
      v25 = [v8 objectForKeyedSubscript:@"pathType"];
      v26 = [v25 isEqual:@"sharedSync"];

      if (!v26)
      {
        v37 = MEMORY[0x1E696ABC0];
        v73 = *MEMORY[0x1E696A578];
        v74 = @"Invalid request";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v16 = v37;
        v17 = 3;
        goto LABEL_26;
      }

      v22 = [v8 objectForKeyedSubscript:@"stream"];
      v62 = 0;
      v23 = [(BMFileServer *)self allowedToAccessStream:v22 withMode:2 error:&v62];
      v24 = v62;
    }
  }

  v15 = v24;

  if (!v23)
  {
    goto LABEL_21;
  }

  v60 = v9;
  v27 = [v8 objectForKeyedSubscript:@"streamType"];
  if ([v27 unsignedIntegerValue] != 1)
  {

LABEL_23:
    v34 = [v8 objectForKeyedSubscript:@"pathType"];
    if ([v34 isEqual:@"streams"])
    {
      v35 = [v8 objectForKeyedSubscript:@"segment"];
      v36 = v35 != 0;
    }

    else
    {
      v36 = 0;
    }

    v39 = [v8 objectForKeyedSubscript:@"pathType"];
    if ([v39 isEqual:@"compute"])
    {
      v40 = [v8 objectForKeyedSubscript:@"sessionIdentifier"];
      if (v40)
      {
        v41 = [v8 objectForKeyedSubscript:@"bookmarks"];
        if (v41)
        {
          v42 = [v8 objectForKeyedSubscript:@"client"];
          if (v42)
          {
            v59 = v42;
            v43 = [v8 objectForKeyedSubscript:@"clientIdentifier"];
            if (v43)
            {
              v58 = v43;
              v44 = [v8 objectForKeyedSubscript:@"subscriptionIdentifier"];
              v45 = v44 != 0;

              v43 = v58;
            }

            else
            {
              v45 = 0;
            }

            v42 = v59;
          }

          else
          {
            v45 = 0;
          }
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      v45 = 0;
    }

    if (v36 || v45)
    {
      fileManager = self->_fileManager;
      if (fileManager)
      {
        v61 = v15;
        v47 = [(BMFileManager *)fileManager removeFileAtPath:v60 error:&v61];
        v48 = v61;

        if (!v47 && !v48)
        {
          v49 = MEMORY[0x1E696ABC0];
          v65 = *MEMORY[0x1E696A578];
          v66 = @"Unspecified failure";
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          v48 = [v49 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v50];
        }

        replyCopy[2](replyCopy, v48);
        v15 = v48;
        goto LABEL_54;
      }

      v55 = __biome_log_for_category(6);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
      }

      v56 = MEMORY[0x1E696ABC0];
      v67 = *MEMORY[0x1E696A578];
      v68 = @"Internal failure";
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v53 = v56;
      v54 = 0;
    }

    else
    {
      v51 = MEMORY[0x1E696ABC0];
      v69 = *MEMORY[0x1E696A578];
      v70 = @"Invalid file";
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v53 = v51;
      v54 = 5;
    }

    v57 = [v53 errorWithDomain:@"BiomeStorageError" code:v54 userInfo:v52];
    replyCopy[2](replyCopy, v57);

LABEL_54:
    v9 = v60;
    goto LABEL_55;
  }

  v28 = [v8 objectForKeyedSubscript:@"stream"];
  v29 = [BMPublicStreamUtilities streamForStreamIdentifier:v28];

  if (v29)
  {
    goto LABEL_23;
  }

  v30 = __biome_log_for_category(6);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
  }

  v31 = MEMORY[0x1E696ABC0];
  v71 = *MEMORY[0x1E696A578];
  v72 = @"Invalid stream identifier";
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v33 = [v31 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v32];
  replyCopy[2](replyCopy, v33);

  v9 = v60;
LABEL_55:
}

- (void)removeDirectoryAtPath:(id)path reply:(id)reply
{
  v62[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  replyCopy = reply;
  v8 = BMFileServerValidateAndParsePath(pathCopy);
  if (!v8)
  {
    v18 = __biome_log_for_category(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer removeDirectoryAtPath:reply:];
    }

    v19 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A578];
    v62[0] = @"Invalid path";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    v15 = [v19 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v9];
LABEL_21:
    replyCopy[2](replyCopy, v15);
    goto LABEL_34;
  }

  v9 = [(NSString *)self->_directory stringByAppendingPathComponent:pathCopy];
  v10 = __biome_log_for_category(6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v60 = pathCopy;
    _os_log_impl(&dword_1AC15D000, v10, OS_LOG_TYPE_INFO, "-removeDirectoryAtPath:reply: called with subpath: %{public}@", buf, 0xCu);
  }

  v11 = [v8 objectForKeyedSubscript:@"pathType"];
  v12 = [v11 isEqual:@"streams"];

  if (v12)
  {
    v13 = [v8 objectForKeyedSubscript:@"subscriptions"];

    if (v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A578];
      v58 = @"Client processes not allowed read-write access to subscriptions substream";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v16 = v14;
      v17 = 5;
LABEL_29:
      v41 = [v16 errorWithDomain:@"BiomeStorageError" code:v17 userInfo:v15];
      replyCopy[2](replyCopy, v41);

      goto LABEL_34;
    }

    v22 = [v8 objectForKeyedSubscript:@"stream"];
    v48 = 0;
    v23 = [(BMFileServer *)self allowedToAccessStream:v22 withMode:2 error:&v48];
    v24 = v48;
  }

  else
  {
    v20 = [v8 objectForKeyedSubscript:@"pathType"];
    v21 = [v20 isEqual:@"compute"];

    if (v21)
    {
      v22 = [v8 objectForKeyedSubscript:@"clientIdentifier"];
      v47 = 0;
      v23 = [(BMFileServer *)self entitledToAccessClientCompute:v22 error:&v47];
      v24 = v47;
    }

    else
    {
      v25 = [v8 objectForKeyedSubscript:@"pathType"];
      v26 = [v25 isEqual:@"sharedSync"];

      if (!v26)
      {
        v40 = MEMORY[0x1E696ABC0];
        v55 = *MEMORY[0x1E696A578];
        v56 = @"Invalid request";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v16 = v40;
        v17 = 3;
        goto LABEL_29;
      }

      v22 = [v8 objectForKeyedSubscript:@"stream"];
      v46 = 0;
      v23 = [(BMFileServer *)self allowedToAccessStream:v22 withMode:2 error:&v46];
      v24 = v46;
    }
  }

  v15 = v24;

  if (!v23)
  {
    goto LABEL_21;
  }

  v27 = [v8 objectForKeyedSubscript:@"streamType"];
  if ([v27 unsignedIntegerValue] == 1)
  {
    v28 = [v8 objectForKeyedSubscript:@"stream"];
    v29 = [BMPublicStreamUtilities streamForStreamIdentifier:v28];

    if (!v29)
    {
      v30 = __biome_log_for_category(6);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
      }

      v31 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A578];
      v54 = @"Invalid stream identifier";
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v33 = v31;
      v34 = 2;
LABEL_33:
      v44 = [v33 errorWithDomain:@"BiomeStorageError" code:v34 userInfo:v32];
      replyCopy[2](replyCopy, v44);

      goto LABEL_34;
    }
  }

  else
  {
  }

  fileManager = self->_fileManager;
  if (!fileManager)
  {
    v42 = __biome_log_for_category(6);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
    }

    v43 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v52 = @"Internal failure";
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v33 = v43;
    v34 = 0;
    goto LABEL_33;
  }

  v45 = v15;
  v36 = [(BMFileManager *)fileManager removeDirectoryAtPath:v9 error:&v45];
  v37 = v45;

  if (!v36 && !v37)
  {
    v38 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v50 = @"Unspecified failure";
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v37 = [v38 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v39];
  }

  replyCopy[2](replyCopy, v37);
  v15 = v37;
LABEL_34:
}

- (void)temporaryFileHandleWithProtection:(int)protection reply:(id)reply
{
  v4 = *&protection;
  v25[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v7 = __biome_log_for_category(6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AC15D000, v7, OS_LOG_TYPE_INFO, "-temporaryFileHandleWithProtection:reply: called", buf, 2u);
  }

  if ((v4 + 1) >= 9)
  {
    v13 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"Invalid protection class";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v14 = v13;
    v15 = 2;
LABEL_12:
    v9 = [v14 errorWithDomain:@"BiomeStorageError" code:v15 userInfo:v10];
    replyCopy[2](replyCopy, 0, v9);
    goto LABEL_13;
  }

  fileManager = self->_fileManager;
  if (!fileManager)
  {
    v16 = __biome_log_for_category(6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
    }

    v17 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v23 = @"Internal failure";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v14 = v17;
    v15 = 0;
    goto LABEL_12;
  }

  v18 = 0;
  v9 = [(BMFileManager *)fileManager temporaryFileHandleWithProtection:v4 error:&v18];
  v10 = v18;
  if (!(v9 | v10))
  {
    v11 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21 = @"Unspecified failure";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v10 = [v11 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v12];
  }

  replyCopy[2](replyCopy, v9, v10);
LABEL_13:
}

- (void)replaceFileAtPath:(id)path withFileHandle:(id)handle protection:(int)protection flags:(int)flags reply:(id)reply
{
  v96[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handleCopy = handle;
  replyCopy = reply;
  v14 = BMFileServerValidateAndParsePath(pathCopy);
  if (v14)
  {
    protectionCopy = protection;
    v15 = [(NSString *)self->_directory stringByAppendingPathComponent:pathCopy];
    v16 = __biome_log_for_category(6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v94 = pathCopy;
      _os_log_impl(&dword_1AC15D000, v16, OS_LOG_TYPE_INFO, "-replaceFileAtPath:withFileHandle:protection:flags:reply: called with subpath: %{public}@", buf, 0xCu);
    }

    v17 = [v14 objectForKeyedSubscript:@"pathType"];
    v18 = [v17 isEqual:@"streams"];

    if (v18)
    {
      v19 = [v14 objectForKeyedSubscript:@"subscriptions"];

      if (v19)
      {
        v20 = MEMORY[0x1E696ABC0];
        v91 = *MEMORY[0x1E696A578];
        v92 = @"Client processes not allowed read-write access to subscriptions substream";
        v21 = MEMORY[0x1E695DF20];
        v22 = &v92;
        v23 = &v91;
LABEL_7:
        v24 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
        v25 = v20;
        v26 = 5;
LABEL_8:
        v27 = [v25 errorWithDomain:@"BiomeStorageError" code:v26 userInfo:v24];
        replyCopy[2](replyCopy, 0, v27);

        goto LABEL_50;
      }

      v72 = v15;
      v32 = [v14 objectForKeyedSubscript:@"stream"];
      v76 = 0;
      v33 = [(BMFileServer *)self allowedToAccessStream:v32 withMode:2 error:&v76];
      v34 = v76;
LABEL_22:
      v24 = v34;

      if (v33)
      {
        goto LABEL_23;
      }

LABEL_28:
      replyCopy[2](replyCopy, 0, v24);
      v15 = v72;
      goto LABEL_50;
    }

    v30 = [v14 objectForKeyedSubscript:@"pathType"];
    v31 = [v30 isEqual:@"compute"];

    if (v31)
    {
      v72 = v15;
      v32 = [v14 objectForKeyedSubscript:@"clientIdentifier"];
      v75 = 0;
      v33 = [(BMFileServer *)self entitledToAccessClientCompute:v32 error:&v75];
      v34 = v75;
      goto LABEL_22;
    }

    v35 = [v14 objectForKeyedSubscript:@"pathType"];
    v36 = [v35 isEqual:@"sharedSync"];

    if (v36)
    {
      v72 = v15;
      v37 = [v14 objectForKeyedSubscript:@"stream"];
      v74 = 0;
      v38 = [(BMFileServer *)self allowedToAccessStream:v37 withMode:2 error:&v74];
      v24 = v74;

      if (!v38)
      {
        goto LABEL_28;
      }

      v39 = [v14 objectForKeyedSubscript:@"deviceType"];
      v40 = +[BMStoreDirectory remoteDevices];
      if (([v39 isEqual:v40]& 1) == 0)
      {

LABEL_52:
        goto LABEL_23;
      }

      [v14 objectForKeyedSubscript:@"segment"];
      v41 = v70 = v39;

      if (protectionCopy != 6 && v41)
      {
        v39 = __biome_log_for_category(6);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
        }

        goto LABEL_52;
      }
    }

    else
    {
      v58 = [v14 objectForKeyedSubscript:@"pathType"];
      v59 = [v58 isEqual:@"resourceGeneration"];

      if (!v59)
      {
        v66 = MEMORY[0x1E696ABC0];
        v87 = *MEMORY[0x1E696A578];
        v88 = @"Invalid request";
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v25 = v66;
        v26 = 3;
        goto LABEL_8;
      }

      if (![(BMFileServer *)self isPrimaryDaemon])
      {
        v20 = MEMORY[0x1E696ABC0];
        v89 = *MEMORY[0x1E696A578];
        v90 = @"Access denied";
        v21 = MEMORY[0x1E695DF20];
        v22 = &v90;
        v23 = &v89;
        goto LABEL_7;
      }

      v72 = v15;
      v24 = 0;
    }

LABEL_23:
    v71 = handleCopy;
    v42 = [v14 objectForKeyedSubscript:@"streamType"];
    if ([v42 unsignedIntegerValue] == 1)
    {
      v43 = [v14 objectForKeyedSubscript:@"stream"];
      v44 = [BMPublicStreamUtilities streamForStreamIdentifier:v43];

      if (!v44)
      {
        v45 = __biome_log_for_category(6);
        v15 = v72;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
        }

        v46 = MEMORY[0x1E696ABC0];
        v85 = *MEMORY[0x1E696A578];
        v86 = @"Invalid stream identifier";
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v48 = [v46 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v47];
        replyCopy[2](replyCopy, 0, v48);

        handleCopy = v71;
        goto LABEL_50;
      }
    }

    else
    {
    }

    v49 = [v14 objectForKeyedSubscript:@"pathType"];
    v15 = v72;
    if ([v49 isEqual:@"streams"])
    {
      v50 = [v14 objectForKeyedSubscript:@"metadata"];
      v51 = +[BMStoreDirectory metadata];
      if (![v50 isEqual:v51])
      {
        v64 = [v14 objectForKeyedSubscript:@"segment"];

        if (!v64)
        {
          v65 = MEMORY[0x1E696ABC0];
          v83 = *MEMORY[0x1E696A578];
          v84 = @"Invalid file";
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          v62 = v65;
          v63 = 5;
          goto LABEL_49;
        }

LABEL_34:
        if ((protectionCopy + 1) >= 9)
        {
          v60 = MEMORY[0x1E696ABC0];
          v81 = *MEMORY[0x1E696A578];
          v82 = @"Invalid protection class";
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
          v62 = v60;
          v63 = 2;
        }

        else
        {
          fileManager = self->_fileManager;
          handleCopy = v71;
          if (fileManager)
          {
            v53 = [BMFileManager replaceFileAtPath:"replaceFileAtPath:withFileHandle:protection:flags:error:" withFileHandle:v72 protection:v71 flags:? error:?];
            v54 = v24;

            if (!(v53 | v54))
            {
              v55 = MEMORY[0x1E696ABC0];
              v77 = *MEMORY[0x1E696A578];
              v78 = @"Unspecified failure";
              v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
              v57 = v55;
              handleCopy = v71;
              v54 = [v57 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v56];

              v15 = v72;
            }

            replyCopy[2](replyCopy, v53, v54);

            v24 = v54;
            goto LABEL_50;
          }

          v67 = __biome_log_for_category(6);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            [BMFileServer fileHandleForFileAtPath:flags:protection:reply:];
          }

          v68 = MEMORY[0x1E696ABC0];
          v79 = *MEMORY[0x1E696A578];
          v80 = @"Internal failure";
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          v62 = v68;
          v63 = 0;
        }

LABEL_49:
        v69 = [v62 errorWithDomain:@"BiomeStorageError" code:v63 userInfo:v61];
        replyCopy[2](replyCopy, 0, v69);

        handleCopy = v71;
        goto LABEL_50;
      }
    }

    goto LABEL_34;
  }

  v28 = __biome_log_for_category(6);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [BMFileServer replaceFileAtPath:withFileHandle:protection:flags:reply:];
  }

  v29 = MEMORY[0x1E696ABC0];
  v95 = *MEMORY[0x1E696A578];
  v96[0] = @"Invalid path";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:&v95 count:1];
  v24 = [v29 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v15];
  replyCopy[2](replyCopy, 0, v24);
LABEL_50:
}

- (void)initWithDirectory:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<_BMRootLibrary> __softlink__BiomeLibraryAndInternalLibraryNode(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMFileServer.m" lineNumber:27 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)fileHandleForFileAtPath:flags:protection:reply:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fileHandleForFileAtPath:flags:protection:reply:.cold.3()
{
  OUTLINED_FUNCTION_4_4();
  v1 = [v0 objectForKeyedSubscript:?];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_9(&dword_1AC15D000, v2, v3, "Invalid stream identifier %{public}@ type 'public'", v4, v5, v6, v7);
}

- (void)fileHandleForFileAtPath:flags:protection:reply:.cold.4()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createDirectoryAtPath:reply:.cold.3()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)removeFileAtPath:reply:.cold.3()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)removeDirectoryAtPath:reply:.cold.3()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)replaceFileAtPath:withFileHandle:protection:flags:reply:.cold.4()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end