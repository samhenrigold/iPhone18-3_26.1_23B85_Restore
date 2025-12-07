@interface DiagCollectionClient
- (DiagCollectionClient)init;
- (DiagCollectionClient)initWithDestinationDirectory:(id)directory;
- (id)setupXPCInterface;
- (void)collectDEPayloadsWithIdentifier:(id)identifier diagnosticExtensionsWithParameters:(id)parameters queue:(id)queue reply:(id)reply;
- (void)moveDiagnosticFilesToDestination:(id)destination reply:(id)reply;
@end

@implementation DiagCollectionClient

- (DiagCollectionClient)init
{
  v3 = NSTemporaryDirectory();
  v4 = [(DiagCollectionClient *)self initWithDestinationDirectory:v3];

  return v4;
}

- (DiagCollectionClient)initWithDestinationDirectory:(id)directory
{
  directoryCopy = directory;
  v12.receiver = self;
  v12.super_class = DiagCollectionClient;
  v6 = [(DiagCollectionClient *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->destinationDirectory, directory);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("com.apple.autobugcapture.diagcollectionclient.queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

- (id)setupXPCInterface
{
  currentLoginUserID = [(DiagCollectionClient *)self currentLoginUserID];
  if (currentLoginUserID)
  {
    v3 = currentLoginUserID;
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.symptom_diagnostics_collection" options:0];
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28538CC28];
    [v4 setRemoteObjectInterface:v5];

    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    remoteObjectInterface = [v4 remoteObjectInterface];
    [remoteObjectInterface setClasses:v11 forSelector:sel_collectPayloadsWithIdentifier_diagnosticExtensions_reply_ argumentIndex:0 ofReply:1];

    [v4 setInvalidationHandler:&__block_literal_global_7];
    [v4 setInterruptionHandler:&__block_literal_global_65];
    [v4 _setTargetUserIdentifier:v3];
    v13 = diagcollectLogHandle([v4 resume]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "DiagCollectionClient: XPC interface ready.", buf, 2u);
    }
  }

  else
  {
    v11 = diagcollectLogHandle(currentLoginUserID);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "DiagCollectionClient: Could not ready the XPC interface (missing target user id)", v15, 2u);
    }

    v4 = 0;
  }

  return v4;
}

void __41__DiagCollectionClient_setupXPCInterface__block_invoke(uint64_t a1)
{
  v1 = diagcollectLogHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_241804000, v1, OS_LOG_TYPE_INFO, "DiagCollectionClient: Connection invalidated.", v2, 2u);
  }
}

void __41__DiagCollectionClient_setupXPCInterface__block_invoke_63(uint64_t a1)
{
  v1 = diagcollectLogHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_241804000, v1, OS_LOG_TYPE_INFO, "DiagCollectionClient: Connection interrupted.", v2, 2u);
  }
}

- (void)moveDiagnosticFilesToDestination:(id)destination reply:(id)reply
{
  replyCopy = reply;
  v7 = MEMORY[0x277CCAA00];
  destinationCopy = destination;
  defaultManager = [v7 defaultManager];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__DiagCollectionClient_moveDiagnosticFilesToDestination_reply___block_invoke;
  v16[3] = &unk_278CF0A30;
  v16[4] = self;
  v17 = defaultManager;
  v11 = dictionary;
  v18 = v11;
  v12 = defaultManager;
  [destinationCopy enumerateKeysAndObjectsUsingBlock:v16];

  v14 = diagcollectLogHandle(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_DEBUG, "DiagCollectionClient: Finished moving all DiagnosticExtension files", v15, 2u);
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v11);
  }
}

void __63__DiagCollectionClient_moveDiagnosticFilesToDestination_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = diagcollectLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v5;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "DiagCollectionClient: Processing files for %@", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __63__DiagCollectionClient_moveDiagnosticFilesToDestination_reply___block_invoke_69;
    v20 = &unk_278CF0A08;
    v9 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v24 = v8;
    v12 = v8;
    [v6 enumerateObjectsUsingBlock:&v17];
    [*(a1 + 48) setObject:v12 forKeyedSubscript:{v9, v17, v18, v19, v20}];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [*(a1 + 48) setObject:v6 forKeyedSubscript:v5];
    }

    else
    {
      v14 = diagcollectLogHandle(isKindOfClass);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138412546;
        v26 = v16;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_ERROR, "DiagCollectionClient: Found unexpected object %@ with value %@ in DE filepaths dictionary (expected NSArray)", buf, 0x16u);
      }
    }
  }
}

void __63__DiagCollectionClient_moveDiagnosticFilesToDestination_reply___block_invoke_69(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = [v3 lastPathComponent];
    v6 = [v5 containsString:*(a1 + 32)];
    if ((v6 & 1) == 0)
    {
      v7 = diagcollectLogHandle(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        *buf = 138412546;
        v19 = v5;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "DiagCollectionClient: WARNING - File %@ does not contain this DiagnosticExtention's identifier (%@) in the filename", buf, 0x16u);
      }
    }

    v9 = [*(*(a1 + 40) + 16) stringByAppendingPathComponent:v5];
    v10 = *(a1 + 48);
    v17 = 0;
    v11 = [v10 moveItemAtPath:v3 toPath:v9 error:&v17];
    v12 = v17;
    v13 = diagcollectLogHandle(v12);
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = v3;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_INFO, "DiagCollectionClient: Moved file from %@ to %@", buf, 0x16u);
      }

      [*(a1 + 56) addObject:v9];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v19 = v3;
        v20 = 2112;
        v21 = v9;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_ERROR, "DiagCollectionClient: Unable to move file at %@ to %@ (%@)", buf, 0x20u);
      }
    }
  }

  else
  {
    v5 = diagcollectLogHandle(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_ERROR, "DiagCollectionClient: Found unexpected object %@ with value %@ in DE filepaths array (expected NSString)", buf, 0x16u);
    }
  }
}

- (void)collectDEPayloadsWithIdentifier:(id)identifier diagnosticExtensionsWithParameters:(id)parameters queue:(id)queue reply:(id)reply
{
  v58 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  parametersCopy = parameters;
  queueCopy = queue;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([identifierCopy length])
    {
      setupXPCInterface = [(DiagCollectionClient *)self setupXPCInterface];
      v15 = setupXPCInterface;
      if (setupXPCInterface)
      {
        *v50 = 0;
        v51 = v50;
        v52 = 0x2020000000;
        v53 = 0;
        _queue = [setupXPCInterface _queue];
        v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, _queue);

        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_2;
        v45[3] = &unk_278CF0A80;
        v18 = v17;
        v46 = v18;
        v49 = v50;
        v19 = queueCopy;
        v47 = v19;
        v20 = replyCopy;
        v48 = v20;
        v21 = [v15 remoteObjectProxyWithErrorHandler:v45];
        v31 = v21;
        if (v21)
        {
          v22 = diagcollectLogHandle(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            v57 = 600;
            _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_INFO, "DiagCollectionClient: calling remote service (collectPayloadsWithIdentifier:diagnosticExtensionsWithParameters:) with timeout = %d", buf, 8u);
          }

          if (v18)
          {
            v24 = dispatch_time(0, 600000000000);
            dispatch_source_set_timer(v18, v24, 0xFFFFFFFFFFFFFFFFLL, 0);
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_75;
            handler[3] = &unk_278CF0AA8;
            v44 = v50;
            v42 = v19;
            v43 = v20;
            dispatch_source_set_event_handler(v18, handler);
            v26 = diagcollectLogHandle(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEBUG, "DiagCollectionClient: Starting safeguard timer", buf, 2u);
            }

            dispatch_resume(v18);
            v27 = v42;
          }

          else
          {
            v27 = diagcollectLogHandle(v23);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_241804000, v27, OS_LOG_TYPE_DEFAULT, "DiagCollectionClient: Failed to create a safeguard timer.", buf, 2u);
            }
          }

          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_77;
          v36[3] = &unk_278CF0AF8;
          v40 = v50;
          v37[0] = v18;
          v37[1] = self;
          v38 = v19;
          v39 = v20;
          [v31 collectPayloadsWithIdentifier:identifierCopy diagnosticExtensionsWithParameters:parametersCopy reply:v36];

          v30 = v37;
        }

        else
        {
          v29 = diagcollectLogHandle(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_INFO, "DiagCollectionClient: remote service not initialized", buf, 2u);
          }

          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_82;
          v34[3] = &unk_278CF0A58;
          v30 = &v35;
          v35 = v20;
          dispatch_async(v19, v34);
        }

        _Block_object_dispose(v50, 8);
      }

      else
      {
        v28 = diagcollectLogHandle(0);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *v50 = 0;
          _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_ERROR, "DiagCollectionClient: Unable to establish XPC connection to DiagnosticExtension collection service", v50, 2u);
        }

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_83;
        v32[3] = &unk_278CF0A58;
        v33 = replyCopy;
        dispatch_async(queueCopy, v32);
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke;
      block[3] = &unk_278CF0A58;
      v55 = replyCopy;
      dispatch_async(queueCopy, block);
      v15 = v55;
    }
  }
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = diagcollectLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 description];
    *buf = 136315138;
    v14 = [v5 UTF8String];
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_INFO, "DiagCollectionClient: remote object proxy error %s", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    dispatch_source_cancel(v6);
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_73;
  v10[3] = &unk_278CEFF50;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  dispatch_async(v7, v10);
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_75(uint64_t a1)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v9 = v1;
    v10 = v2;
    v4 = diagcollectLogHandle(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_ERROR, "DiagCollectionClient: calling remote service (collectPayloadsWithIdentifier:diagnosticExtensionsWithParameters:) timedout", v8, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_76;
    block[3] = &unk_278CF0A58;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    dispatch_async(v5, block);
  }
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_76(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_77(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v10)
  {
    dispatch_source_cancel(v10);
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  if (!v9)
  {
    if (v8)
    {
      [v8 UTF8String];
      v11 = sandbox_extension_consume();
      if (v11 != -1)
      {
LABEL_12:
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_78;
        v20[3] = &unk_278CF0AD0;
        v18 = *(a1 + 40);
        v21 = *(a1 + 48);
        v19 = *(a1 + 56);
        v22 = 0;
        v23 = v19;
        [v18 moveDiagnosticFilesToDestination:v7 reply:v20];
        if (v11 != -1)
        {
          sandbox_extension_release();
        }

        goto LABEL_15;
      }

      v12 = diagcollectLogHandle(-1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = __error();
        v14 = strerror(*v13);
        *buf = 136315138;
        v25 = v14;
        v15 = "Failed to consume sandbox extension due to error: %s";
        v16 = v12;
        v17 = 12;
LABEL_10:
        _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
      }
    }

    else
    {
      v12 = diagcollectLogHandle(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v15 = "No sandbox extension provided";
        v16 = v12;
        v17 = 2;
        goto LABEL_10;
      }
    }

    v11 = -1;
    goto LABEL_12;
  }

LABEL_15:
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_2_79;
  block[3] = &unk_278CF0478;
  v9 = *(a1 + 48);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, block);
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_82(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:57 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __103__DiagCollectionClient_collectDEPayloadsWithIdentifier_diagnosticExtensionsWithParameters_queue_reply___block_invoke_83(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:57 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

@end