@interface CDDCloudKitServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CDDCloudKitServer)initWithListener:(id)listener configuration:(id)configuration;
- (uint64_t)createRealPathForPath:(void *)path error:;
- (void)dealloc;
- (void)finishedActivity:(id)activity withResult:(id)result inManagedObjectContext:(id)context;
- (void)handleMessage:(id)message reply:(id)reply;
- (void)runActivity:(uint64_t)activity completionHandler:;
- (void)setUp;
- (void)tearDown;
@end

@implementation CDDCloudKitServer

- (CDDCloudKitServer)initWithListener:(id)listener configuration:(id)configuration
{
  v12.receiver = self;
  v12.super_class = CDDCloudKitServer;
  v6 = [(CDDCloudKitServer *)&v12 init];
  if (v6)
  {
    v6->_configuration = [configuration copy];
    if (listener)
    {
      listenerCopy = listener;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x1E696B0D8]);
      configuration = v6->_configuration;
      if (configuration)
      {
        machServiceName = configuration->_machServiceName;
      }

      else
      {
        machServiceName = 0;
      }

      listenerCopy = [v8 initWithMachServiceName:machServiceName];
    }

    v6->_listener = listenerCopy;
    [(NSXPCListener *)listenerCopy setDelegate:v6];
    v6->_initialized = 0;
    v6->_initializationGroup = dispatch_group_create();
    v6->_containerProvider = objc_alloc_init(PFCloudKitContainerProvider);
    v6->_scheduler = [getCloudKitCKSchedulerClass[0]() sharedScheduler];
  }

  return v6;
}

- (void)dealloc
{
  [(CDDCloudKitServer *)self tearDown];

  dispatch_release(self->_initializationGroup);
  self->_lastInitializationError = 0;

  v3.receiver = self;
  v3.super_class = CDDCloudKitServer;
  [(CDDCloudKitServer *)&v3 dealloc];
}

- (void)setUp
{
  dispatch_group_enter(self->_initializationGroup);
  global_queue = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CDDCloudKitServer_setUp__block_invoke;
  block[3] = &unk_1E6EC16F0;
  block[4] = self;
  dispatch_async(global_queue, block);
  [(NSXPCListener *)self->_listener resume];
}

void __26__CDDCloudKitServer_setUp__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    *(v3 + 8) = 0;

    *(v3 + 48) = 0;
    v4 = +[CDDCloudKitMetadataModel newMetadataModel];
    *(v3 + 32) = [[NSPersistentContainer alloc] initWithName:@"CDDCloudKitServer" managedObjectModel:v4];
    v5 = *(v3 + 24);
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    v8 = [objc_msgSend(*(v3 + 32) "persistentStoreDescriptions")];
    [v8 setURL:{objc_msgSend(v7, "URLByAppendingPathComponent:isDirectory:", @"cdck.sqlite", 0)}];

    v23 = 0;
    objc_opt_self();
    if ([NSCloudKitMirroringDelegate checkAndCreateDirectoryAtURL:v7 wipeIfExists:0 error:&v23])
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 1;
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = *(v3 + 32);
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v27 = __32__CDDCloudKitServer__setUpAsync__block_invoke;
      v28 = &unk_1E6EC3518;
      v30 = v8;
      v31 = &v19;
      v29 = v9;
      [v10 loadPersistentStoresWithCompletionHandler:&buf];
      if (*(v20 + 24) == 1)
      {
        *(v3 + 8) = 1;
LABEL_19:

        _Block_object_dispose(&v19, 8);
        goto LABEL_20;
      }

      v15 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *v25 = 138412290;
            *&v25[4] = v9;
LABEL_27:
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to load persistent stores for CloudKit integration: %@\n", v25, 0xCu);
          }
        }

        else
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *v25 = 138412290;
            *&v25[4] = v9;
            goto LABEL_27;
          }
        }
      }

      _NSCoreDataLog_console(1, "Failed to load persistent stores for CloudKit integration: %@", v9);
      objc_autoreleasePoolPop(v15);
      v17 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = *MEMORY[0x1E696A588];
      *v25 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v9 description]);
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      *(v3 + 48) = [v17 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v18];
      goto LABEL_19;
    }

    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v12 = _pflogging_catastrophic_mode == 0;
      v13 = _PFLogGetLogStream(1);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        if (v14)
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v23;
          goto LABEL_25;
        }
      }

      else if (v14)
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v23;
LABEL_25:
        _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to create directory for persistent storage: %@\n", &buf, 0xCu);
      }
    }

    _NSCoreDataLog_console(1, "Failed to create directory for persistent storage: %@", v23);
    objc_autoreleasePoolPop(v11);
    *(v3 + 48) = v23;
LABEL_20:
    dispatch_group_leave(*(v3 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

- (void)tearDown
{
  [(NSXPCListener *)self->_listener invalidate];
  listener = self->_listener;

  [(NSXPCListener *)listener setDelegate:0];
}

void *__32__CDDCloudKitServer__setUpAsync__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(*(*(result + 6) + 8) + 24) = 0;
    v4 = *(result + 4);
    v5 = [objc_msgSend(*(result + 5) "URL")];

    return [v4 setObject:a3 forKey:v5];
  }

  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v12 = *MEMORY[0x1E69E9840];
  listener = self->_listener;
  if (listener == listener)
  {
    [connection setExportedObject:self];
    [connection setExportedInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1EF44F478)}];
    [connection resume];
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      listenerCopy2 = listener;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Called to accept connection for unknown listener: %@\n", &v10, 0xCu);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v10 = 138412290;
      listenerCopy2 = listener;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Called to accept connection for unknown listener: %@", &v10, 0xCu);
    }
  }

  return listener == listener;
}

- (void)handleMessage:(id)message reply:(id)reply
{
  v99 = *MEMORY[0x1E69E9840];
  initializationGroup = self->_initializationGroup;
  v8 = dispatch_time(0, 3000000000);
  v9 = dispatch_group_wait(initializationGroup, v8);
  v10 = objc_autoreleasePoolPush();
  if (!v9)
  {
    if (!self->_initialized)
    {
      v23 = [CDDCloudKitResponse alloc];
      v24 = MEMORY[0x1E696ABC0];
      v82 = *MEMORY[0x1E696A588];
      v83 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSError *)self->_lastInitializationError description]);
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      v14 = -[CDDCloudKitResponse initWithMessage:success:error:](v23, message, 0, [v24 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v25]);
      goto LABEL_46;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (message)
      {
        v15 = *(message + 3);
        v16 = *(message + 4);
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      if ([v15 fileDescriptor] < 1)
      {
        v42 = MEMORY[0x1E696ABC0];
        v90 = *MEMORY[0x1E696A588];
        v91 = @"Provided file handle is invalid, it doesn't point to the requested store.";
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v22 = [v42 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v43];
        goto LABEL_40;
      }

      memset(&v98, 0, sizeof(v98));
      v17 = stat([v16 fileSystemRepresentation], &v98);
      if (v17)
      {
        v18 = *__error();
        v19 = MEMORY[0x1E696ABC0];
        v20 = *__error();
        v92 = *MEMORY[0x1E696A588];
        v93 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, v18, v16);
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v22 = [v19 errorWithDomain:*MEMORY[0x1E696A798] code:v20 userInfo:v21];
LABEL_40:
        v59 = v22;
        if (!v22)
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v98.st_dev = 136315394;
            *&v98.st_mode = "/Library/Caches/com.apple.xbs/Sources/Persistence/coredatad/CloudKit/CDDCloudKitServer.m";
            WORD2(v98.st_ino) = 1024;
            *(&v98.st_ino + 6) = 668;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", &v98, 0x12u);
          }

          v61 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
          {
            v98.st_dev = 136315394;
            *&v98.st_mode = "/Library/Caches/com.apple.xbs/Sources/Persistence/coredatad/CloudKit/CDDCloudKitServer.m";
            WORD2(v98.st_ino) = 1024;
            *(&v98.st_ino + 6) = 668;
            _os_log_fault_impl(&dword_18565F000, v61, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", &v98, 0x12u);
          }
        }

        v14 = [[CDDCloudKitResponse alloc] initWithMessage:message success:0 error:v59];
        goto LABEL_46;
      }

      memset(&v79, 0, sizeof(v79));
      v44 = fstat([v15 fileDescriptor], &v79);
      if (v44)
      {
        v45 = *__error();
        v46 = MEMORY[0x1E696ABC0];
        v47 = *__error();
        v94 = *MEMORY[0x1E696A588];
        v95 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v44, v45, [v15 fileDescriptor]);
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v22 = [v46 errorWithDomain:*MEMORY[0x1E696A798] code:v47 userInfo:v48];
        goto LABEL_40;
      }

      if (v98.st_ino != v79.st_ino || v98.st_dev != v79.st_dev)
      {
        v57 = MEMORY[0x1E696ABC0];
        v96 = *MEMORY[0x1E696A588];
        v97 = @"Provided file handle is invalid, it doesn't point to the requested store.";
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
        v22 = [v57 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v58];
        goto LABEL_40;
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      if (message)
      {
        v50 = *(message + 4);
      }

      else
      {
        v50 = 0;
      }

      if (![defaultManager isWritableFileAtPath:v50])
      {
        v66 = [CDDCloudKitResponse alloc];
        v67 = MEMORY[0x1E696ABC0];
        v86 = *MEMORY[0x1E696A588];
        v87 = @"Provided file handle is invalid, the file is not writable.";
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v14 = -[CDDCloudKitResponse initWithMessage:success:error:](v66, message, 0, [v67 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v68]);
        goto LABEL_46;
      }

      *&v79.st_dev = 0;
      v79.st_ino = &v79;
      *&v79.st_uid = 0x2020000000;
      LOBYTE(v79.st_rdev) = 0;
      *&v98.st_dev = 0;
      v98.st_ino = &v98;
      *&v98.st_uid = 0x3052000000;
      *&v98.st_rdev = __Block_byref_object_copy__23;
      v98.st_atimespec.tv_sec = __Block_byref_object_dispose__23;
      v98.st_atimespec.tv_nsec = 0;
      newBackgroundContext = [(NSPersistentContainer *)self->_metadataContainer newBackgroundContext];
      v70 = MEMORY[0x1E69E9820];
      v71 = 3221225472;
      v72 = __48__CDDCloudKitServer__handleRegistrationMessage___block_invoke;
      v73 = &unk_1E6EC3540;
      selfCopy = self;
      messageCopy = message;
      v76 = newBackgroundContext;
      v77 = &v98;
      v78 = &v79;
      [(NSManagedObjectContext *)newBackgroundContext performBlockAndWait:&v70];

      v52 = *(v98.st_ino + 40);
      if (v52)
      {
        v53 = MEMORY[0x1E696ABC0];
        v88 = *MEMORY[0x1E696A588];
        if (message)
        {
          v54 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(message + 1), v52);
        }

        else
        {
          v54 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], 0, v52);
        }

        v89 = v54;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v56 = [v53 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v55];
      }

      else
      {
        v56 = 0;
      }

      v69 = [CDDCloudKitResponse alloc];
      v34 = [(CDDCloudKitResponse *)v69 initWithMessage:message success:*(v79.st_ino + 24) error:v56];

      *(v98.st_ino + 40) = 0;
      v35 = &v98;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v36 = [CDDCloudKitResponse alloc];
        v37 = MEMORY[0x1E696ABC0];
        v84 = *MEMORY[0x1E696A588];
        v38 = MEMORY[0x1E696AEC0];
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v85 = objc_msgSend_stringWithFormat_(v38, v40);
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v14 = -[CDDCloudKitResponse initWithMessage:success:error:](v36, message, 0, [v37 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v41]);
        goto LABEL_46;
      }

      *&v79.st_dev = 0;
      v79.st_ino = &v79;
      *&v79.st_uid = 0x3052000000;
      *&v79.st_rdev = __Block_byref_object_copy__23;
      v79.st_atimespec.tv_sec = __Block_byref_object_dispose__23;
      v79.st_atimespec.tv_nsec = 0;
      v70 = 0;
      v71 = &v70;
      v72 = 0x2020000000;
      LOBYTE(v73) = 0;
      v26 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v28 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v29 = 17;
      }

      else
      {
        v29 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v29 = 16;
      }

      if (__ckLoggingOverride)
      {
        v30 = v29;
      }

      else
      {
        v30 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(Stream, v30))
      {
        if (message)
        {
          v31 = *(message + 3);
        }

        else
        {
          v31 = 0;
        }

        v98.st_dev = 136315906;
        *&v98.st_mode = "[CDDCloudKitServer _handleScheduleMessage:]";
        WORD2(v98.st_ino) = 1024;
        *(&v98.st_ino + 6) = 310;
        HIWORD(v98.st_uid) = 2112;
        *&v98.st_gid = self;
        *(&v98.st_rdev + 2) = 2112;
        *(&v98.st_rdev + 6) = v31;
        _os_log_impl(&dword_18565F000, v28, v30, "CoreData+CloudKit: %s(%d): %@: Asked to schedule activity for store: %@", &v98, 0x26u);
      }

      objc_autoreleasePoolPop(v26);
      newBackgroundContext2 = [(NSPersistentContainer *)self->_metadataContainer newBackgroundContext];
      *&v98.st_dev = MEMORY[0x1E69E9820];
      v98.st_ino = 3221225472;
      *&v98.st_uid = __44__CDDCloudKitServer__handleScheduleMessage___block_invoke;
      *&v98.st_rdev = &unk_1E6EC3540;
      v98.st_atimespec.tv_sec = self;
      v98.st_atimespec.tv_nsec = message;
      v98.st_mtimespec.tv_sec = newBackgroundContext2;
      v98.st_mtimespec.tv_nsec = &v79;
      v98.st_ctimespec.tv_sec = &v70;
      [(NSManagedObjectContext *)newBackgroundContext2 performBlockAndWait:&v98];

      v33 = [CDDCloudKitResponse alloc];
      v34 = [(CDDCloudKitResponse *)v33 initWithMessage:message success:*(v71 + 24) error:*(v79.st_ino + 40)];

      *(v79.st_ino + 40) = 0;
      v35 = &v70;
    }

    _Block_object_dispose(v35, 8);
    _Block_object_dispose(&v79, 8);
    goto LABEL_47;
  }

  v11 = [CDDCloudKitResponse alloc];
  v12 = MEMORY[0x1E696ABC0];
  v80 = *MEMORY[0x1E696A588];
  v81 = @"The server was unable to process the request because it timed out waiting for initialization.";
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
  v14 = -[CDDCloudKitResponse initWithMessage:success:error:](v11, message, 0, [v12 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v13]);
LABEL_46:
  v34 = v14;
LABEL_47:
  objc_autoreleasePoolPop(v10);
  if (v34)
  {
    if ((v34[1] & 1) != 0 || v34[3])
    {
      goto LABEL_58;
    }
  }

  else
  {
    v62 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v98.st_dev = 138412290;
      *&v98.st_mode = message;
      _os_log_error_impl(&dword_18565F000, v62, OS_LOG_TYPE_ERROR, "CoreData: fault: CloudKit Server is attempting to send back a nil response: %@\n", &v98, 0xCu);
    }

    v63 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
    {
      v98.st_dev = 138412290;
      *&v98.st_mode = message;
      _os_log_fault_impl(&dword_18565F000, v63, OS_LOG_TYPE_FAULT, "CoreData: CloudKit Server is attempting to send back a nil response: %@", &v98, 0xCu);
    }
  }

  v64 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v98.st_dev) = 0;
    _os_log_error_impl(&dword_18565F000, v64, OS_LOG_TYPE_ERROR, "CoreData: fault: Bug in CoreData CloudKit Server: Response success == NO but error is also nil.\n", &v98, 2u);
  }

  v65 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v98.st_dev) = 0;
    _os_log_fault_impl(&dword_18565F000, v65, OS_LOG_TYPE_FAULT, "CoreData: Bug in CoreData CloudKit Server: Response success == NO but error is also nil.", &v98, 2u);
    if (!reply)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_58:
  if (reply)
  {
LABEL_59:
    (*(reply + 2))(reply, v34);
  }

LABEL_60:
}

void __48__CDDCloudKitServer__handleRegistrationMessage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CDDCloudKitServer *)v2 createRealPathForPath:v4 error:(*(*(a1 + 56) + 8) + 40)];
  if (v5)
  {
    v6 = v5;
    v7 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[CDDCloudKitRegisteredClient entityName]);
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 16);
      v8 = *(v8 + 56);
    }

    else
    {
      v9 = 0;
    }

    -[NSFetchRequest setPredicate:](v7, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleIdentifier = %@ AND storeConfigurationName = %@ AND storePath = %@", v9, v8, v6]);
    v22 = 0;
    v10 = [*(a1 + 48) executeFetchRequest:v7 error:&v22];
    if (!v10)
    {
      goto LABEL_25;
    }

    if ([v10 count])
    {
      goto LABEL_21;
    }

    v11 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[CDDCloudKitRegisteredClient entityName], *(a1 + 48));
    v12 = v11;
    v13 = *(a1 + 40);
    v14 = v13 ? *(v13 + 16) : 0;
    [(NSManagedObject *)v11 setBundleIdentifier:v14];
    [(NSManagedObject *)v12 setStorePath:v6];
    v15 = *(a1 + 40);
    if (!v15)
    {
      goto LABEL_29;
    }

    if (v15[5])
    {
      [(NSManagedObject *)v12 setFileProtectionType:?];
      v15 = *(a1 + 40);
      if (!v15)
      {
        goto LABEL_29;
      }
    }

    v16 = v15[7];
    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = [v16 isEqualToString:@"PF_DEFAULT_CONFIGURATION_NAME"];
    v15 = *(a1 + 40);
    if ((v17 & 1) == 0)
    {
      if (v15)
      {
        v18 = v15[7];
      }

      else
      {
        v18 = 0;
      }

      [(NSManagedObject *)v12 setStoreConfigurationName:v18];
      v15 = *(a1 + 40);
    }

    if (v15)
    {
LABEL_19:
      v19 = v15[8];
    }

    else
    {
LABEL_29:
      v19 = 0;
    }

    [(NSManagedObject *)v12 setContainerIdentifier:v19];
    if ([*(a1 + 48) save:&v22])
    {
LABEL_21:
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    else
    {
LABEL_25:
      *(*(*(a1 + 56) + 8) + 40) = v22;
    }
  }

  else
  {
    v20 = *(*(*(a1 + 56) + 8) + 40);

    v21 = v20;
  }
}

- (uint64_t)createRealPathForPath:(void *)path error:
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v4 = realpath_DARWIN_EXTSN([a2 UTF8String], 0);
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v4 encoding:4];
  }

  else if (path)
  {
    v6 = *MEMORY[0x1E696A250];
    v8 = *MEMORY[0x1E696A588];
    v9[0] = @"Failed to get a real path for the provided store path.";
    v5 = 0;
    *path = [MEMORY[0x1E696ABC0] errorWithDomain:v6 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  }

  else
  {
    v5 = 0;
  }

  free(v4);
  return v5;
}

void __44__CDDCloudKitServer__handleScheduleMessage___block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CDDCloudKitServer *)v2 createRealPathForPath:v4 error:(*(*(a1 + 56) + 8) + 40)];
  if (v5)
  {
    v6 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[CDDCloudKitRegisteredClient entityName]);
    v55 = v5;
    -[NSFetchRequest setPredicate:](v6, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"storePath = %@", v5]);
    v63 = 0;
    v56 = a1;
    v7 = [*(a1 + 48) executeFetchRequest:v6 error:&v63];
    v8 = v7;
    if (v7)
    {
      if ([v7 count])
      {
        v54 = [v8 lastObject];
        if ([v8 count] >= 2)
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v71 = v55;
            v72 = 2112;
            *v73 = v8;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Multiple clients registered for the same store path: %@\n%@\n", buf, 0x16u);
          }

          v10 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v71 = v55;
            v72 = 2112;
            *v73 = v8;
            _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Multiple clients registered for the same store path: %@\n%@", buf, 0x16u);
          }
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v11 = [(NSManagedObject *)v54 scheduledActivities];
        v12 = 0;
        v13 = 0;
        v14 = [v11 countByEnumeratingWithState:&v59 objects:v80 count:16];
        if (v14)
        {
          v15 = *v60;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v60 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v59 + 1) + 8 * i);
              v18 = [(NSManagedObject *)v17 activityType];
              if (v18 == 1)
              {
                v13 = v17;
              }

              else if (v18 == 2)
              {
                v12 = v17;
              }

              else
              {
                v19 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v71 = v17;
                  _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: fault: Found unknown activity type: %@\n", buf, 0xCu);
                }

                v20 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412290;
                  v71 = v17;
                  _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Found unknown activity type: %@", buf, 0xCu);
                }
              }
            }

            v14 = [v11 countByEnumeratingWithState:&v59 objects:v80 count:16];
          }

          while (v14);
        }

        v21 = [objc_msgSend(*(v56 + 32) "containerProvider")];
        if (v21)
        {
          v22 = *(v56 + 40);
          if (v22)
          {
            v23 = *(v22 + 16);
            if (v23 != 2 || v12)
            {
              if (v23 != 1 || v13)
              {
                goto LABEL_49;
              }

              v13 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[CDDCloudKitScheduledActivity entityName], *(v56 + 48));
              -[NSManagedObject setActivityUUID:](v13, "setActivityUUID:", [MEMORY[0x1E696AFB0] UUID]);
              [(NSManagedObject *)v13 setActivityType:1];
              [(NSManagedObject *)v13 setRegisteredClient:v54];
              -[NSManagedObject setScheduledAt:](v13, "setScheduledAt:", [MEMORY[0x1E695DF00] date]);
              v34 = [@"com.apple.coredatad.cloudkit." stringByAppendingString:{objc_msgSend(-[NSManagedObject activityUUID](v13, "activityUUID"), "UUIDString")}];
              v25 = [objc_alloc(getCloudKitCKSchedulerActivityClass()) initWithIdentifier:v34 container:v21 priority:2];
              v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9DE0]];
              v79 = MEMORY[0x1E69E9E10];
              [v25 setAdditionalXPCActivityCriteria:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v79, &v78, 1)}];
              -[NSManagedObject populateFromCriteria:](v13, "populateFromCriteria:", [v25 additionalXPCActivityCriteria]);
            }

            else
            {
              v12 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[CDDCloudKitScheduledActivity entityName], *(v56 + 48));
              -[NSManagedObject setActivityUUID:](v12, "setActivityUUID:", [MEMORY[0x1E696AFB0] UUID]);
              [(NSManagedObject *)v12 setActivityType:2];
              [(NSManagedObject *)v12 setRegisteredClient:v54];
              -[NSManagedObject setScheduledAt:](v12, "setScheduledAt:", [MEMORY[0x1E695DF00] date]);
              v24 = [@"com.apple.coredatad.cloudkit." stringByAppendingString:{objc_msgSend(-[NSManagedObject activityUUID](v12, "activityUUID"), "UUIDString")}];
              v25 = [objc_alloc(getCloudKitCKSchedulerActivityClass()) initWithIdentifier:v24 container:v21 priority:2];
            }

            if (v25)
            {
              v35 = [*(v56 + 32) scheduler];
              v36 = objc_autoreleasePoolPush();
              Stream = __PFCloudKitLoggingGetStream();
              v38 = Stream;
              v39 = __ckLoggingOverride;
              if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
              {
                v39 = OS_LOG_TYPE_INFO;
              }

              if (os_log_type_enabled(Stream, v39))
              {
                *buf = 136316162;
                v71 = "[CDDCloudKitServer _handleScheduleMessage:]_block_invoke";
                v72 = 1024;
                *v73 = 381;
                *&v73[4] = 2112;
                *&v73[6] = v25;
                v74 = 2112;
                v75 = v54;
                v76 = 2112;
                v77 = v35;
                _os_log_impl(&dword_18565F000, v38, v39, "CoreData+CloudKit: %s(%d): Scheduling activity: %@ for client: %@ with scheduler: %@", buf, 0x30u);
              }

              objc_autoreleasePoolPop(v36);
              objc_initWeak(buf, *(v56 + 32));
              v40 = [v25 identifier];
              v57[0] = MEMORY[0x1E69E9820];
              v57[1] = 3221225472;
              v57[2] = __44__CDDCloudKitServer__handleScheduleMessage___block_invoke_63;
              v57[3] = &unk_1E6EC3568;
              objc_copyWeak(&v58, buf);
              v57[4] = *(v56 + 32);
              [(NSManagedObject *)v35 registerActivityIdentifier:v40 handler:v57];
              [(NSManagedObject *)v35 submitActivity:v25];
              objc_destroyWeak(&v58);
              objc_destroyWeak(buf);
LABEL_56:
              v45 = [*(v56 + 48) hasChanges];
              v46 = objc_autoreleasePoolPush();
              v47 = __PFCloudKitLoggingGetStream();
              v48 = v47;
              v49 = __ckLoggingOverride;
              if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
              {
                v49 = OS_LOG_TYPE_INFO;
              }

              v50 = os_log_type_enabled(v47, v49);
              if (v45)
              {
                if (v50)
                {
                  *buf = 136315650;
                  v71 = "[CDDCloudKitServer _handleScheduleMessage:]_block_invoke";
                  v72 = 1024;
                  *v73 = 400;
                  *&v73[4] = 2112;
                  *&v73[6] = v54;
                  _os_log_impl(&dword_18565F000, v48, v49, "CoreData+CloudKit: %s(%d): Saving changes for client: %@", buf, 0x1Cu);
                }

                objc_autoreleasePoolPop(v46);
                *(*(*(v56 + 64) + 8) + 24) = [*(v56 + 48) save:&v63];
                if ((*(*(*(v56 + 64) + 8) + 24) & 1) == 0)
                {
                  v51 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v68 = *MEMORY[0x1E696A588];
                  v69 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v63);
                  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
                  *(*(*(v56 + 56) + 8) + 40) = [v51 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v52];
                }
              }

              else
              {
                if (v50)
                {
                  *buf = 136315650;
                  v71 = "[CDDCloudKitServer _handleScheduleMessage:]_block_invoke";
                  v72 = 1024;
                  *v73 = 408;
                  *&v73[4] = 2112;
                  *&v73[6] = v54;
                  _os_log_impl(&dword_18565F000, v48, v49, "CoreData+CloudKit: %s(%d): No change to save for client: %@", buf, 0x1Cu);
                }

                objc_autoreleasePoolPop(v46);
                *(*(*(v56 + 64) + 8) + 24) = 1;
              }

              goto LABEL_72;
            }
          }

LABEL_49:
          v41 = objc_autoreleasePoolPush();
          v42 = __PFCloudKitLoggingGetStream();
          v43 = v42;
          v44 = __ckLoggingOverride;
          if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
          {
            v44 = OS_LOG_TYPE_INFO;
          }

          if (os_log_type_enabled(v42, v44))
          {
            *buf = 136316162;
            v71 = "[CDDCloudKitServer _handleScheduleMessage:]_block_invoke";
            v72 = 1024;
            *v73 = 396;
            *&v73[4] = 2112;
            *&v73[6] = v54;
            v74 = 2112;
            v75 = v12;
            v76 = 2112;
            v77 = v13;
            _os_log_impl(&dword_18565F000, v43, v44, "CoreData+CloudKit: %s(%d): Already have scheduled activity for client: %@\n%@\n%@", buf, 0x30u);
          }

          objc_autoreleasePoolPop(v41);
          v25 = 0;
          goto LABEL_56;
        }

        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v66 = *MEMORY[0x1E696A588];
        v32 = MEMORY[0x1E696AEC0];
        if ([(NSManagedObject *)v54 containerIdentifier])
        {
          v33 = [(NSManagedObject *)v54 containerIdentifier];
        }

        else
        {
          v33 = [MEMORY[0x1E695DFB0] null];
        }

        v67 = objc_msgSend_stringWithFormat_(v32, v33);
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v27 = [v31 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v53];
      }

      else
      {
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v64 = *MEMORY[0x1E696A588];
        v29 = *(v56 + 40);
        if (v29)
        {
          v29 = *(v29 + 24);
        }

        v65 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v29);
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v27 = [v28 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v30];
      }
    }

    else
    {
      v27 = v63;
    }

    *(*(*(v56 + 56) + 8) + 40) = v27;
LABEL_72:
    v5 = v55;
    goto LABEL_73;
  }

  v26 = *(*(*(a1 + 56) + 8) + 40);
LABEL_73:
}

void __44__CDDCloudKitServer__handleScheduleMessage___block_invoke_63(uint64_t a1, char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [(CDDCloudKitServer *)*(a1 + 32) runActivity:a2 completionHandler:a3];
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Asked to run activity but no server: %@\n", &v9, 0xCu);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Asked to run activity but no server: %@", &v9, 0xCu);
    }
  }
}

- (void)runActivity:(uint64_t)activity completionHandler:
{
  v24 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = *(self + 40);
    v7 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(v6, v7))
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to handle activity because initialization took longer than expected: %@\n", buf, 0xCu);
      }

      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v19 = a2;
        _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Failed to handle activity because initialization took longer than expected: %@", buf, 0xCu);
      }

      (*(activity + 16))(activity, 1);
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v13 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v14 = 17;
      }

      else
      {
        v14 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v14 = 16;
      }

      if (__ckLoggingOverride)
      {
        v15 = v14;
      }

      else
      {
        v15 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(Stream, v15))
      {
        *buf = 136315650;
        v19 = "[CDDCloudKitServer runActivity:completionHandler:]";
        v20 = 1024;
        v21 = 444;
        v22 = 2112;
        v23 = a2;
        _os_log_impl(&dword_18565F000, v13, v15, "CoreData+CloudKit: %s(%d): Asked to run activity: %@", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v11);
      newBackgroundContext = [*(self + 32) newBackgroundContext];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51__CDDCloudKitServer_runActivity_completionHandler___block_invoke;
      v17[3] = &unk_1E6EC1E90;
      v17[4] = a2;
      v17[5] = newBackgroundContext;
      v17[6] = self;
      v17[7] = activity;
      [newBackgroundContext performBlockAndWait:v17];

      (*(activity + 16))(activity, 1);
      [objc_msgSend(self "scheduler")];
      objc_autoreleasePoolPop(v10);
    }
  }
}

void __51__CDDCloudKitServer_runActivity_completionHandler___block_invoke(uint64_t a1)
{
  v81[1] = *MEMORY[0x1E69E9840];
  v67 = 0;
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(objc_msgSend(*(a1 + 32), "identifier"), "substringFromIndex:", objc_msgSend(@"com.apple.coredatad.cloudkit.", "length"))}];
  v3 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[CDDCloudKitScheduledActivity entityName]);
  -[NSFetchRequest setPredicate:](v3, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"activityUUID = %@", v2]);
  v4 = [*(a1 + 40) executeFetchRequest:v3 error:&v67];
  v5 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v7 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v8 = 17;
  }

  else
  {
    v8 = 1;
  }

  if (__ckLoggingOverride == 16)
  {
    v8 = 16;
  }

  if (__ckLoggingOverride)
  {
    v9 = v8;
  }

  else
  {
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(Stream, v9))
  {
    v10 = [*(a1 + 32) identifier];
    *buf = 136315906;
    *&buf[4] = "[CDDCloudKitServer runActivity:completionHandler:]_block_invoke";
    *&buf[12] = 1024;
    *&buf[14] = 454;
    *&buf[18] = 2112;
    *&buf[20] = v10;
    *&buf[28] = 2112;
    *&buf[30] = v4;
    _os_log_impl(&dword_18565F000, v7, v9, "CoreData+CloudKit: %s(%d): Looking up activities matching the identifier: %@\n%@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    if ([v4 count])
    {
      if ([v4 count] >= 2)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v58 = [*(a1 + 32) identifier];
          *buf = 138412546;
          *&buf[4] = v58;
          *&buf[12] = 2112;
          *&buf[14] = v4;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found more than one scheduled activities matching the identifier '%@': %@\n", buf, 0x16u);
        }

        v12 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v59 = [*(a1 + 32) identifier];
          *buf = 138412546;
          *&buf[4] = v59;
          *&buf[12] = 2112;
          *&buf[14] = v4;
          _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Found more than one scheduled activities matching the identifier '%@': %@", buf, 0x16u);
        }
      }

      v62 = [v4 lastObject];
      v13 = [v62 registeredClient];
      v14 = objc_autoreleasePoolPush();
      v15 = __PFCloudKitLoggingGetStream();
      v16 = v15;
      v17 = __ckLoggingOverride;
      if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
      {
        v17 = OS_LOG_TYPE_INFO;
      }

      if (os_log_type_enabled(v15, v17))
      {
        *buf = 136315906;
        *&buf[4] = "[CDDCloudKitServer runActivity:completionHandler:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 466;
        *&buf[18] = 2112;
        *&buf[20] = v62;
        *&buf[28] = 2112;
        *&buf[30] = v13;
        _os_log_impl(&dword_18565F000, v16, v17, "CoreData+CloudKit: %s(%d): Running scheduled activity: %@\nClient: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [NSPersistentStoreDescription alloc];
      v19 = -[NSPersistentStoreDescription initWithURL:](v18, "initWithURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:{objc_msgSend(v13, "storePath")}]);
      -[NSPersistentStoreDescription setConfiguration:](v19, "setConfiguration:", [v13 storeConfigurationName]);
      v20 = [v13 fileProtectionType];
      [(NSPersistentStoreDescription *)v19 setOption:v20 forKey:*MEMORY[0x1E696A3A0]];
      [(NSPersistentStoreDescription *)v19 setOption:MEMORY[0x1E695E118] forKey:@"NSPersistentHistoryTrackingKey"];
      v21 = MEMORY[0x1E695E118];
      [(NSPersistentStoreDescription *)v19 setOption:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreRemoteChangeNotificationOptionKey"];
      v22 = -[NSCloudKitMirroringDelegateOptions initWithContainerIdentifier:]([NSCloudKitMirroringDelegateOptions alloc], "initWithContainerIdentifier:", [v13 containerIdentifier]);
      v23 = [*(a1 + 48) containerProvider];
      if (v22)
      {
        objc_setProperty_nonatomic(v22, v24, v23, 80);
        [(NSCloudKitMirroringDelegateOptions *)v22 setAutomaticallyScheduleImportAndExportOperations:0];
        v22->_useDaemon = 0;
      }

      else
      {
        [0 setAutomaticallyScheduleImportAndExportOperations:0];
      }

      v25 = [[NSCloudKitMirroringDelegate alloc] initWithOptions:v22];
      [(NSPersistentStoreDescription *)v19 setMirroringDelegate:v25];

      v66 = 0;
      v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:{objc_msgSend(v13, "storePath")}];
      v80 = @"NSReadOnlyPersistentStoreOption";
      v81[0] = v21;
      v27 = +[NSPersistentStore cachedModelForPersistentStoreWithURL:options:error:](NSPersistentStore, "cachedModelForPersistentStoreWithURL:options:error:", v26, [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1], &v66);
      if (v27)
      {
        v61 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v27];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3052000000;
        *&buf[24] = __Block_byref_object_copy__23;
        *&buf[32] = __Block_byref_object_dispose__23;
        v79 = 0;
        v28 = dispatch_semaphore_create(0);
        v29 = [MEMORY[0x1E696AD88] defaultCenter];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __51__CDDCloudKitServer_runActivity_completionHandler___block_invoke_87;
        v65[3] = &unk_1E6EC3590;
        v65[4] = v28;
        v60 = [v29 addObserverForName:@"PFCloudKitDidSetupNotificationName" object:v25 queue:0 usingBlock:v65];
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __51__CDDCloudKitServer_runActivity_completionHandler___block_invoke_92;
        v64[3] = &unk_1E6EC35B8;
        v64[4] = buf;
        [(NSPersistentStoreCoordinator *)v61 addPersistentStoreWithDescription:v19 completionHandler:v64];
        v30 = *(*&buf[8] + 40) == 0;
        v31 = objc_autoreleasePoolPush();
        if (v30)
        {
          v44 = __PFCloudKitLoggingGetStream();
          v45 = v44;
          v46 = __ckLoggingOverride;
          if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
          {
            v46 = OS_LOG_TYPE_INFO;
          }

          if (os_log_type_enabled(v44, v46))
          {
            *v68 = 136315394;
            v69 = "[CDDCloudKitServer runActivity:completionHandler:]_block_invoke_2";
            v70 = 1024;
            v71 = 512;
            _os_log_impl(&dword_18565F000, v45, v46, "CoreData+CloudKit: %s(%d): Store initialized waiting for the mirroring delegate to set up.", v68, 0x12u);
          }

          objc_autoreleasePoolPop(v31);
          v47 = dispatch_time(0, 30000000000);
          if (dispatch_semaphore_wait(v28, v47))
          {
            v48 = objc_alloc(MEMORY[0x1E696ABC0]);
            v76 = *MEMORY[0x1E696A588];
            v77 = @"Timed out waiting for the mirroring delegate to set up.";
            v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
            v50 = [v48 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v49];
            *(*&buf[8] + 40) = v50;
          }

          else
          {
            v51 = objc_autoreleasePoolPush();
            v52 = __PFCloudKitLoggingGetStream();
            v53 = v52;
            v54 = __ckLoggingOverride;
            if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
            {
              v54 = OS_LOG_TYPE_INFO;
            }

            if (os_log_type_enabled(v52, v54))
            {
              *v68 = 136315394;
              v69 = "[CDDCloudKitServer runActivity:completionHandler:]_block_invoke";
              v70 = 1024;
              v71 = 514;
              _os_log_impl(&dword_18565F000, v53, v54, "CoreData+CloudKit: %s(%d): Mirroring delegate initialized.", v68, 0x12u);
            }

            objc_autoreleasePoolPop(v51);
            v55 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
            [(NSManagedObjectContext *)v55 setPersistentStoreCoordinator:v61];
            -[NSManagedObjectContext setTransactionAuthor:](v55, "setTransactionAuthor:", objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v13 bundleIdentifier], objc_msgSend(objc_msgSend(v62, "activityUUID"), "UUIDString")));
            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 3221225472;
            v63[2] = __51__CDDCloudKitServer_runActivity_completionHandler___block_invoke_98;
            v63[3] = &unk_1E6EC3608;
            v57 = *(a1 + 40);
            v56 = *(a1 + 48);
            v63[4] = v61;
            v63[5] = v56;
            v63[6] = v62;
            v63[7] = v57;
            v63[8] = v55;
            v63[9] = buf;
            [(NSManagedObjectContext *)v55 performBlockAndWait:v63];
          }
        }

        else
        {
          v32 = __PFCloudKitLoggingGetStream();
          v33 = v32;
          if (__ckLoggingOverride == 17)
          {
            v34 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v34 = OS_LOG_TYPE_ERROR;
          }

          if (os_log_type_enabled(v32, v34))
          {
            v35 = *(*&buf[8] + 40);
            *v68 = 136315906;
            v69 = "[CDDCloudKitServer runActivity:completionHandler:]_block_invoke";
            v70 = 1024;
            v71 = 544;
            v72 = 2112;
            v73 = v13;
            v74 = 2112;
            v75 = v35;
            _os_log_impl(&dword_18565F000, v33, v34, "CoreData+CloudKit: %s(%d): Failed to load persistent store for client: %@\n%@", v68, 0x26u);
          }

          objc_autoreleasePoolPop(v31);
        }

        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

        *(*&buf[8] + 40) = 0;
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v40 = objc_autoreleasePoolPush();
        v41 = __PFCloudKitLoggingGetStream();
        v42 = v41;
        if (__ckLoggingOverride == 17)
        {
          v43 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v43 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(v41, v43))
        {
          *buf = 136315906;
          *&buf[4] = "[CDDCloudKitServer runActivity:completionHandler:]_block_invoke";
          *&buf[12] = 1024;
          *&buf[14] = 551;
          *&buf[18] = 2112;
          *&buf[20] = v13;
          *&buf[28] = 2112;
          *&buf[30] = v66;
          _os_log_impl(&dword_18565F000, v42, v43, "CoreData+CloudKit: %s(%d): Failed to load managed object model for registered client: %@\n%@", buf, 0x26u);
        }

        objc_autoreleasePoolPop(v40);
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = __PFCloudKitLoggingGetStream();
      v38 = v37;
      v39 = __ckLoggingOverride;
      if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
      {
        v39 = OS_LOG_TYPE_INFO;
      }

      if (os_log_type_enabled(v37, v39))
      {
        *buf = 136315650;
        *&buf[4] = "[CDDCloudKitServer runActivity:completionHandler:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 556;
        *&buf[18] = 2112;
        *&buf[20] = v2;
        _os_log_impl(&dword_18565F000, v38, v39, "CoreData+CloudKit: %s(%d): No activity registered with identifier: %@", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v36);
      (*(*(a1 + 56) + 16))();
    }
  }
}

intptr_t __51__CDDCloudKitServer_runActivity_completionHandler___block_invoke_87(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "userInfo")];
  if ([v3 success])
  {
    if ([v3 error])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Error was non-nil, but expected nil\n", v11, 2u);
      }

      v5 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v10 = 0;
        v6 = "CoreData: Error was non-nil, but expected nil";
        v7 = &v10;
LABEL_12:
        _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, v6, v7, 2u);
      }
    }
  }

  else
  {
    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: fault: Success was NO but expected YES\n", buf, 2u);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      v6 = "CoreData: Success was NO but expected YES";
      v7 = v12;
      goto LABEL_12;
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

id __51__CDDCloudKitServer_runActivity_completionHandler___block_invoke_92(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void __51__CDDCloudKitServer_runActivity_completionHandler___block_invoke_98(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [NSCloudKitMirroringExportRequest alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__CDDCloudKitServer_runActivity_completionHandler___block_invoke_2;
  v11[3] = &unk_1E6EC35E0;
  v3 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = v3;
  v4 = [(NSCloudKitMirroringRequest *)v2 initWithOptions:0 completionBlock:v11];
  if (![*(a1 + 64) executeRequest:v4 error:*(*(a1 + 72) + 8) + 40])
  {
    v5 = *(*(*(a1 + 72) + 8) + 40);
    v6 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v8 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v9 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v9 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v9))
    {
      v10 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 136315906;
      v15 = "[CDDCloudKitServer runActivity:completionHandler:]_block_invoke";
      v16 = 1024;
      v17 = 534;
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): Failed to execute export request: %@\n%@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void __51__CDDCloudKitServer_runActivity_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (([a2 success] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v7 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v8 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v8 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v8))
    {
      v9 = 136315650;
      v10 = "[CDDCloudKitServer runActivity:completionHandler:]_block_invoke_2";
      v11 = 1024;
      v12 = 523;
      v13 = 2112;
      v14 = [a2 error];
      _os_log_impl(&dword_18565F000, v7, v8, "CoreData+CloudKit: %s(%d): Backup export failed: %@", &v9, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
  }

  [*(a1 + 40) finishedActivity:*(a1 + 48) withResult:a2 inManagedObjectContext:*(a1 + 56)];
}

- (void)finishedActivity:(id)activity withResult:(id)result inManagedObjectContext:(id)context
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__CDDCloudKitServer_finishedActivity_withResult_inManagedObjectContext___block_invoke;
  v5[3] = &unk_1E6EC2920;
  v5[4] = result;
  v5[5] = activity;
  v5[6] = context;
  v5[7] = self;
  [context performBlock:v5];
}

void __72__CDDCloudKitServer_finishedActivity_withResult_inManagedObjectContext___block_invoke(id *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  if ([a1[4] success])
  {
    v2 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v4 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v5 = 17;
    }

    else
    {
      v5 = 1;
    }

    if (__ckLoggingOverride == 16)
    {
      v5 = 16;
    }

    if (__ckLoggingOverride)
    {
      v6 = v5;
    }

    else
    {
      v6 = OS_LOG_TYPE_DEFAULT;
    }

    if (os_log_type_enabled(Stream, v6))
    {
      v7 = a1[5];
      *buf = 136315650;
      v45 = "[CDDCloudKitServer finishedActivity:withResult:inManagedObjectContext:]_block_invoke";
      v46 = 1024;
      v47 = 580;
      v48 = 2112;
      v49 = v7;
      _os_log_impl(&dword_18565F000, v4, v6, "CoreData+CloudKit: %s(%d): Successfully finished activity, pruning: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v2);
    [a1[6] deleteObject:a1[5]];
    v43 = 0;
    if (([a1[6] save:&v43] & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = __PFCloudKitLoggingGetStream();
      v10 = v9;
      if (__ckLoggingOverride == 17)
      {
        v11 = 17;
      }

      else
      {
        v11 = 1;
      }

      if (__ckLoggingOverride == 16)
      {
        v11 = 16;
      }

      if (__ckLoggingOverride)
      {
        v12 = v11;
      }

      else
      {
        v12 = OS_LOG_TYPE_DEFAULT;
      }

      if (os_log_type_enabled(v9, v12))
      {
        v13 = a1[5];
        *buf = 136315650;
        v45 = "[CDDCloudKitServer finishedActivity:withResult:inManagedObjectContext:]_block_invoke";
        v46 = 1024;
        v47 = 585;
        v48 = 2112;
        v49 = v13;
        _os_log_impl(&dword_18565F000, v10, v12, "CoreData+CloudKit: %s(%d): Failed to prune activity after successful execution: %@", buf, 0x1Cu);
      }

LABEL_23:
      objc_autoreleasePoolPop(v8);
    }
  }

  else if ([objc_msgSend(a1[4] "error")] == 134410 && (v14 = objc_msgSend(objc_msgSend(a1[4], "error"), "domain"), objc_msgSend(v14, "isEqualToString:", *MEMORY[0x1E696A250])))
  {
    v15 = objc_autoreleasePoolPush();
    v16 = __PFCloudKitLoggingGetStream();
    v17 = v16;
    if (__ckLoggingOverride == 17)
    {
      v18 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v18 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v16, v18))
    {
      v19 = a1[5];
      v20 = [a1[4] error];
      *buf = 136315906;
      v45 = "[CDDCloudKitServer finishedActivity:withResult:inManagedObjectContext:]_block_invoke";
      v46 = 1024;
      v47 = 589;
      v48 = 2112;
      v49 = v19;
      v50 = 2112;
      v51 = v20;
      _os_log_impl(&dword_18565F000, v17, v18, "CoreData+CloudKit: %s(%d): Execution of activity encountered a fatal error, it will not be retried: %@\n%@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v15);
    [a1[6] deleteObject:a1[5]];
    v43 = 0;
    if (([a1[6] save:&v43] & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v21 = __PFCloudKitLoggingGetStream();
      v22 = v21;
      v23 = __ckLoggingOverride;
      if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
      {
        v23 = OS_LOG_TYPE_INFO;
      }

      if (os_log_type_enabled(v21, v23))
      {
        v24 = a1[5];
        *buf = 136315650;
        v45 = "[CDDCloudKitServer finishedActivity:withResult:inManagedObjectContext:]_block_invoke";
        v46 = 1024;
        v47 = 594;
        v48 = 2112;
        v49 = v24;
        _os_log_impl(&dword_18565F000, v22, v23, "CoreData+CloudKit: %s(%d): Failed to prune activity after fatal error: %@", buf, 0x1Cu);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = __PFCloudKitLoggingGetStream();
    v27 = v26;
    if (__ckLoggingOverride == 17)
    {
      v28 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v28 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(v26, v28))
    {
      v29 = a1[5];
      v30 = [a1[4] error];
      *buf = 136315906;
      v45 = "[CDDCloudKitServer finishedActivity:withResult:inManagedObjectContext:]_block_invoke";
      v46 = 1024;
      v47 = 597;
      v48 = 2112;
      v49 = v29;
      v50 = 2112;
      v51 = v30;
      _os_log_impl(&dword_18565F000, v27, v28, "CoreData+CloudKit: %s(%d): Execution of activity failed: %@\n%@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v25);
    v31 = [objc_msgSend(a1[7] "containerProvider")];
    v32 = [@"com.apple.coredatad.cloudkit." stringByAppendingString:{objc_msgSend(objc_msgSend(a1[5], "activityUUID"), "UUIDString")}];
    v33 = [objc_alloc(getCloudKitCKSchedulerActivityClass()) initWithIdentifier:v32 container:v31 priority:2];
    [v33 setAdditionalXPCActivityCriteria:{objc_msgSend(a1[5], "xpcActivityCriteria")}];
    v34 = [a1[7] scheduler];
    v35 = objc_autoreleasePoolPush();
    v36 = __PFCloudKitLoggingGetStream();
    v37 = v36;
    v38 = __ckLoggingOverride;
    if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
    {
      v38 = OS_LOG_TYPE_INFO;
    }

    if (os_log_type_enabled(v36, v38))
    {
      v39 = [a1[5] registeredClient];
      *buf = 136316162;
      v45 = "[CDDCloudKitServer finishedActivity:withResult:inManagedObjectContext:]_block_invoke";
      v46 = 1024;
      v47 = 610;
      v48 = 2112;
      v49 = v33;
      v50 = 2112;
      v51 = v39;
      v52 = 2112;
      v53 = v34;
      _os_log_impl(&dword_18565F000, v37, v38, "CoreData+CloudKit: %s(%d): Scheduling activity: %@ for client: %@ with scheduler: %@", buf, 0x30u);
    }

    objc_autoreleasePoolPop(v35);
    objc_initWeak(buf, a1[7]);
    v40 = [v33 identifier];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __72__CDDCloudKitServer_finishedActivity_withResult_inManagedObjectContext___block_invoke_104;
    v41[3] = &unk_1E6EC3568;
    objc_copyWeak(&v42, buf);
    v41[4] = a1[7];
    [v34 registerActivityIdentifier:v40 handler:v41];
    [v34 submitActivity:v33];

    objc_destroyWeak(&v42);
    objc_destroyWeak(buf);
  }
}

void __72__CDDCloudKitServer_finishedActivity_withResult_inManagedObjectContext___block_invoke_104(uint64_t a1, char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [(CDDCloudKitServer *)*(a1 + 32) runActivity:a2 completionHandler:a3];
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Asked to run activity but no server: %@\n", &v9, 0xCu);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Asked to run activity but no server: %@", &v9, 0xCu);
    }
  }
}

@end