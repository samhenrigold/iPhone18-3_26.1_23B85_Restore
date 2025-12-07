@interface FSModuleConnector
- (void)activateVolume:(id)volume resource:(id)resource options:(id)options replyHandler:(id)handler;
- (void)checkIn:(id)in replyHandler:(id)handler;
- (void)checkWithOptions:(id)options connection:(id)connection taskID:(id)d replyHandler:(id)handler;
- (void)deactivateVolume:(id)volume numericOptions:(unint64_t)options replyHandler:(id)handler;
- (void)formatWithOptions:(id)options connection:(id)connection taskID:(id)d replyHandler:(id)handler;
- (void)getLegacyVolumeEndpoint:(id)endpoint replyHandler:(id)handler;
- (void)getModuleListenerEndpoint:(id)endpoint;
- (void)getVolumeEndpoint:(id)endpoint replyHandler:(id)handler;
- (void)loadResource:(id)resource options:(id)options replyHandler:(id)handler;
- (void)ping:(id)ping;
- (void)probeResource:(id)resource replyHandler:(id)handler;
- (void)sendCloseResource:(id)resource;
- (void)sendConfigureUserClient:(id)client replyHandler:(id)handler;
- (void)sendIsVolumeUsed:(id)used bundle:(id)bundle replyHandler:(id)handler;
- (void)sendRevokeResource:(id)resource;
- (void)sendTaskUpdate:(id)update;
- (void)sendWipeResource:(id)resource replyHandler:(id)handler;
- (void)unloadResource:(id)resource options:(id)options replyHandler:(id)handler;
@end

@implementation FSModuleConnector

- (void)sendTaskUpdate:(id)update
{
  ourConnection = self->_ourConnection;
  if (ourConnection)
  {
    updateCopy = update;
    remoteObjectProxy = [(NSXPCConnection *)ourConnection remoteObjectProxy];
    [remoteObjectProxy taskStatusUpdate:updateCopy];
  }
}

- (void)sendRevokeResource:(id)resource
{
  resourceCopy = resource;
  v5 = fskit_std_log(resourceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleConnector sendRevokeResource:resourceCopy];
  }

  ourConnection = self->_ourConnection;
  if (ourConnection)
  {
    v7 = [(NSXPCConnection *)ourConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2];
    v8 = fskit_std_log([v7 revokeResource:resourceCopy replyHandler:&__block_literal_global_237]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleConnector sendRevokeResource:];
    }
  }

  else
  {
    v7 = fskit_std_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FSModuleConnector sendRevokeResource:];
    }
  }
}

void __40__FSModuleConnector_sendRevokeResource___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fskit_std_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __40__FSModuleConnector_sendRevokeResource___block_invoke_cold_1();
  }
}

void __40__FSModuleConnector_sendRevokeResource___block_invoke_235(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = fskit_std_log(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __40__FSModuleConnector_sendRevokeResource___block_invoke_235_cold_1();
    }
  }
}

- (void)sendCloseResource:(id)resource
{
  resourceCopy = resource;
  v5 = fskit_std_log(resourceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleConnector sendCloseResource:resourceCopy];
  }

  ourConnection = self->_ourConnection;
  if (ourConnection)
  {
    v7 = [(NSXPCConnection *)ourConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_239];
    v8 = fskit_std_log([v7 closeResource:resourceCopy replyHandler:&__block_literal_global_242]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleConnector sendCloseResource:];
    }
  }

  else
  {
    v7 = fskit_std_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FSModuleConnector sendCloseResource:];
    }
  }
}

void __39__FSModuleConnector_sendCloseResource___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fskit_std_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __39__FSModuleConnector_sendCloseResource___block_invoke_cold_1();
  }
}

void __39__FSModuleConnector_sendCloseResource___block_invoke_240(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = fskit_std_log(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__FSModuleConnector_sendCloseResource___block_invoke_240_cold_1();
    }
  }
}

- (void)sendIsVolumeUsed:(id)used bundle:(id)bundle replyHandler:(id)handler
{
  usedCopy = used;
  bundleCopy = bundle;
  handlerCopy = handler;
  v11 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleConnector sendIsVolumeUsed:bundle:replyHandler:];
  }

  v12 = self->_ourConnection;
  if (v12)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__FSModuleConnector_sendIsVolumeUsed_bundle_replyHandler___block_invoke;
    v16[3] = &unk_278FECE20;
    v13 = handlerCopy;
    v17 = v13;
    v14 = [(NSXPCConnection *)v12 synchronousRemoteObjectProxyWithErrorHandler:v16];
    v15 = fskit_std_log([v14 isVolumeIDUsed:usedCopy bundle:bundleCopy replyHandler:v13]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleConnector sendIsVolumeUsed:bundle:replyHandler:];
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __58__FSModuleConnector_sendIsVolumeUsed_bundle_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__FSModuleConnector_sendIsVolumeUsed_bundle_replyHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sendWipeResource:(id)resource replyHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  v8 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleConnector sendWipeResource:replyHandler:];
  }

  v9 = self->_ourConnection;
  v10 = self->_ourModule;
  if (v9)
  {
    if ([(FSModuleExtension *)self->_ourModule delegateConformantFS])
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke;
      v17[3] = &unk_278FECE20;
      v11 = handlerCopy;
      v18 = v11;
      v12 = [(NSXPCConnection *)v9 remoteObjectProxyWithErrorHandler:v17];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_243;
      v14[3] = &unk_278FECE90;
      v15 = v10;
      v16 = v11;
      v13 = fskit_std_log([v12 wipeResource:resourceCopy replyHandler:v14]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [FSModuleConnector sendWipeResource:replyHandler:];
      }
    }

    else
    {
      v12 = fs_errorForPOSIXError(8);
      (*(handlerCopy + 2))(handlerCopy, v12);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_243(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_243_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_243_cold_2(a1);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sendConfigureUserClient:(id)client replyHandler:(id)handler
{
  clientCopy = client;
  handlerCopy = handler;
  v8 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleConnector sendConfigureUserClient:replyHandler:];
  }

  v9 = self->_ourConnection;
  if (v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__FSModuleConnector_sendConfigureUserClient_replyHandler___block_invoke;
    v13[3] = &unk_278FECE20;
    v10 = handlerCopy;
    v14 = v10;
    v11 = [(NSXPCConnection *)v9 synchronousRemoteObjectProxyWithErrorHandler:v13];
    v12 = fskit_std_log([v11 configureUserClient:clientCopy replyHandler:v10]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleConnector sendConfigureUserClient:replyHandler:];
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __58__FSModuleConnector_sendConfigureUserClient_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__FSModuleConnector_sendConfigureUserClient_replyHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)ping:(id)ping
{
  pingCopy = ping;
  v5 = fskit_std_log(pingCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleConnector ping:];
  }

  if ([(FSModuleExtension *)self->_ourModule delegateConformantFS])
  {
    v6 = 0;
  }

  else
  {
    v6 = fs_errorForPOSIXError(8);
  }

  pingCopy[2](pingCopy, v6);
}

- (void)checkIn:(id)in replyHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  inCopy = in;
  handlerCopy = handler;
  v8 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = inCopy;
    _os_log_impl(&dword_24A929000, v8, OS_LOG_TYPE_DEFAULT, "FSModuleExtension.checkIn:extensionID:%@", buf, 0xCu);
  }

  v9 = self->_ourModule;
  objc_sync_enter(v9);
  instanceID = [(FSModuleExtension *)self->_ourModule instanceID];

  ourModule = self->_ourModule;
  if (!instanceID)
  {
    [(FSModuleExtension *)ourModule setInstanceID:inCopy];
    goto LABEL_9;
  }

  instanceID2 = [(FSModuleExtension *)ourModule instanceID];
  v13 = [instanceID2 isEqual:inCopy];

  if (v13)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v15 = fskit_std_log(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    instanceID3 = [(FSModuleExtension *)self->_ourModule instanceID];
    [(FSModuleConnector *)inCopy checkIn:instanceID3 replyHandler:buf, v15];
  }

  v17 = fs_errorForPOSIXError(17);
LABEL_10:
  objc_sync_exit(v9);

  v19 = fskit_std_log(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v17;
    _os_log_impl(&dword_24A929000, v19, OS_LOG_TYPE_DEFAULT, "FSModuleExtension.checkIn returning %@", &v20, 0xCu);
  }

  handlerCopy[2](handlerCopy, v17);
}

- (void)getLegacyVolumeEndpoint:(id)endpoint replyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = fs_errorForPOSIXError(45);
  handlerCopy[2](handlerCopy, 0, v5);
}

- (void)getVolumeEndpoint:(id)endpoint replyHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  handlerCopy = handler;
  v8 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[FSModuleConnector getVolumeEndpoint:replyHandler:]";
    v20 = 2112;
    v21 = endpointCopy;
    _os_log_impl(&dword_24A929000, v8, OS_LOG_TYPE_DEFAULT, "%s:start:volID:%@", &v18, 0x16u);
  }

  if (endpointCopy)
  {
    volumes = [(FSModuleExtension *)self->_ourModule volumes];
    v10 = [volumes objectForKeyedSubscript:endpointCopy];

    if (v10)
    {
      listener = [v10 listener];
      endpoint = [listener endpoint];

      v15 = fskit_std_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        listener2 = [v10 listener];
        v18 = 136315906;
        v19 = "[FSModuleConnector getVolumeEndpoint:replyHandler:]";
        v20 = 2112;
        v21 = endpointCopy;
        v22 = 2112;
        v23 = listener2;
        v24 = 2112;
        v25 = endpoint;
        _os_log_impl(&dword_24A929000, v15, OS_LOG_TYPE_DEFAULT, "%s:end:found:volID:%@ listener %@ returning ep %@", &v18, 0x2Au);
      }

      handlerCopy[2](handlerCopy, endpoint, 0);
    }

    else
    {
      v17 = fskit_std_log(v11);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315394;
        v19 = "[FSModuleConnector getVolumeEndpoint:replyHandler:]";
        v20 = 2112;
        v21 = endpointCopy;
        _os_log_impl(&dword_24A929000, v17, OS_LOG_TYPE_DEFAULT, "%s:end:ENOENT:volID:%@", &v18, 0x16u);
      }

      endpoint = fs_errorForPOSIXError(2);
      (handlerCopy)[2](handlerCopy, 0, endpoint);
    }
  }

  else
  {
    v10 = fs_errorForPOSIXError(5);
    (handlerCopy)[2](handlerCopy, 0, v10);
  }
}

- (void)probeResource:(id)resource replyHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  handlerCopy = handler;
  v8 = resourceCopy;
  v9 = v8;
  if ([v8 kind] == 1)
  {
    v10 = [(FSResource *)FSBlockDeviceResource dynamicCast:v8];
    v11 = v10;
    if (v10)
    {
      v12 = fskit_std_log(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        fileDescriptor = [v11 fileDescriptor];
        _os_log_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEFAULT, "Successful dynamic cast of resource to bd. Got fd %d", buf, 8u);
      }

      [v11 readFirstSectorAndLog];
    }

    v9 = v8;
    if ([v11 limited])
    {
      v13 = [FSBlockDeviceBufferResource bufferFromResource:v11];
      v14 = v13;
      v9 = v8;
      if (v13)
      {
        v9 = v13;
      }
    }
  }

  v15 = self->_ourModule;
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __48__FSModuleConnector_probeResource_replyHandler___block_invoke;
  v28 = &unk_278FECEB8;
  selfCopy = self;
  v16 = v8;
  v30 = v16;
  v17 = v15;
  v31 = v17;
  v18 = handlerCopy;
  v32 = v18;
  v19 = _Block_copy(&v25);
  if ([(FSModuleExtension *)v17 isNormalFS:v25])
  {
    delegate = [(_EXExtension *)v17 delegate];
    v21 = objc_opt_respondsToSelector();
    if ((v21 & 1) == 0)
    {
      v22 = fskit_std_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if ([(FSModuleExtension *)v17 isSimpleFS])
  {
    delegate = [(_EXExtension *)v17 delegate];
    v23 = objc_opt_respondsToSelector();
    if ((v23 & 1) == 0)
    {
      v22 = fskit_std_log(v23);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        [FSModuleConnector probeResource:delegate replyHandler:?];
      }

LABEL_20:

      v24 = fs_errorForPOSIXError(45);
      (*(v18 + 2))(v18, 0, v24);

      goto LABEL_21;
    }

LABEL_17:
    [delegate probeResource:v16 replyHandler:v19];
LABEL_21:
  }
}

void __48__FSModuleConnector_probeResource_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = fskit_std_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_24A929000, v7, OS_LOG_TYPE_DEFAULT, "Returning %@", &v14, 0xCu);
  }

  v8 = [*(a1 + 32) sendCloseResource:*(a1 + 40)];
  if (v5 | v6)
  {
    if (v6)
    {
      v12 = fskit_std_log(v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __48__FSModuleConnector_probeResource_replyHandler___block_invoke_cold_1(a1);
      }

      v13 = *(*(a1 + 56) + 16);
    }

    else
    {
      v13 = *(*(a1 + 56) + 16);
    }

    v13();
  }

  else
  {
    v9 = fskit_std_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __48__FSModuleConnector_probeResource_replyHandler___block_invoke_cold_2(a1);
    }

    v10 = *(a1 + 56);
    v11 = fs_errorForPOSIXError(43);
    (*(v10 + 16))(v10, 0, v11);
  }
}

- (void)checkWithOptions:(id)options connection:(id)connection taskID:(id)d replyHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  connectionCopy = connection;
  dCopy = d;
  handlerCopy = handler;
  v12 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[FSModuleConnector checkWithOptions:connection:taskID:replyHandler:]";
    _os_log_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEFAULT, "%s:start", &buf, 0xCu);
  }

  if ([(FSModuleExtension *)self->_ourModule supportsSimpleMaintenanceOps])
  {
    delegate = [(_EXExtension *)self->_ourModule delegate];
    v14 = self->_ourModule;
    v15 = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy_;
    v50 = __Block_byref_object_dispose_;
    v51 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __69__FSModuleConnector_checkWithOptions_connection_taskID_replyHandler___block_invoke;
    v45[3] = &unk_278FECEE0;
    v45[4] = self;
    v16 = v14;
    v46 = v16;
    [connectionCopy setEarlyCompletedBlock:v45];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __69__FSModuleConnector_checkWithOptions_connection_taskID_replyHandler___block_invoke_2;
    v43[3] = &unk_278FECF08;
    v17 = v15;
    v44 = v17;
    [connectionCopy setLateCompletedBlock:v43];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __69__FSModuleConnector_checkWithOptions_connection_taskID_replyHandler___block_invoke_3;
    v42[3] = &unk_278FECF30;
    v42[4] = &buf;
    v18 = [connectionCopy connect:v42];
    if (*(*(&buf + 1) + 40))
    {
      v19 = fskit_std_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 0;
        _os_log_impl(&dword_24A929000, v19, OS_LOG_TYPE_DEFAULT, "checkWithOptions: encountered on connect error!", v41, 2u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, *(*(&buf + 1) + 40));
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v22 = FSTaskPurposeCheck[0];
      bundleID = [(FSModuleExtension *)v16 bundleID];
      instanceID = [(FSModuleExtension *)v16 instanceID];
      v25 = [FSTaskDescription taskDescriptionWithID:dCopy state:1 purpose:v22 error:0 bundleID:bundleID extensionID:instanceID resource:0];

      v26 = [[FSTask alloc] initWithMessageConnection:connectionCopy taskID:dCopy];
      v27 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__FSModuleConnector_checkWithOptions_connection_taskID_replyHandler___block_invoke_250;
      block[3] = &unk_278FECF58;
      v21 = v25;
      v31 = v21;
      v32 = v17;
      v33 = delegate;
      v20 = v26;
      v34 = v20;
      v35 = optionsCopy;
      v36 = v16;
      v37 = dCopy;
      v40 = handlerCopy;
      v38 = connectionCopy;
      selfCopy = self;
      dispatch_async(v27, block);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    delegate = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, 0, delegate);
  }
}

void __69__FSModuleConnector_checkWithOptions_connection_taskID_replyHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) resource];
  [v1 sendRevokeResource:v2];
}

void __69__FSModuleConnector_checkWithOptions_connection_taskID_replyHandler___block_invoke_250(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  dispatch_group_enter(*(a1 + 40));
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 64) taskOptions];
  v27 = 0;
  v6 = [v3 startCheckWithTask:v4 options:v5 error:&v27];
  v7 = v27;

  v9 = fskit_std_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 72) resource];
    v11 = [v10 getProgressURLKey];
    *buf = 136315394;
    *v29 = "[FSModuleConnector checkWithOptions:connection:taskID:replyHandler:]_block_invoke";
    *&v29[8] = 2112;
    v30 = v11;
    _os_log_impl(&dword_24A929000, v9, OS_LOG_TYPE_INFO, "%s: publishing progress (%@)", buf, 0x16u);
  }

  v12 = [*(a1 + 72) resource];
  v13 = [v12 getProgressURLKey];
  [v6 setUserInfoObject:v13 forKey:*MEMORY[0x277CCA640]];

  [v6 publish];
  if (v7)
  {
    (*(*(a1 + 104) + 16))();
    v14 = 0;
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v14 = [FSModuleTask taskWithID:*(a1 + 80) description:*(a1 + 32) progress:v6];
  v15 = [*(a1 + 72) taskSet];
  objc_sync_enter(v15);
  v16 = [*(a1 + 72) taskSet];
  [v16 setObject:v14 forKey:*(a1 + 80)];

  objc_sync_exit(v15);
  v17 = fskit_std_log([v2 setTaskHasCancellationHandler:{objc_msgSend(*(a1 + 56), "hasCancellationHandler")}]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 56) hasCancellationHandler];
    v19 = [v2 taskHasCancellationHandler];
    *buf = 67109376;
    *v29 = v18;
    *&v29[4] = 1024;
    *&v29[6] = v19;
    _os_log_impl(&dword_24A929000, v17, OS_LOG_TYPE_DEFAULT, "Testing: just set hasCancellation to %d, we see %d", buf, 0xEu);
  }

  (*(*(a1 + 104) + 16))();
  dispatch_group_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  if (v6)
  {
LABEL_9:
    v20 = [v6 totalUnitCount];
    if (v20 > [v6 completedUnitCount])
    {
      [v6 setCompletedUnitCount:{objc_msgSend(v6, "totalUnitCount")}];
    }
  }

LABEL_11:
  [*(a1 + 88) completed:0 replyHandler:&__block_literal_global_255];
  if (v7)
  {
    v21 = v2;
  }

  else
  {
    v21 = [v2 updatedDescriptionInState:3 error:0];

    [*(a1 + 96) sendTaskUpdate:v21];
  }

  v22 = [*(a1 + 72) taskSet];
  objc_sync_enter(v22);
  v23 = [*(a1 + 72) taskSet];
  [v23 removeObjectForKey:*(a1 + 80)];

  objc_sync_exit(v22);
  v25 = fskit_std_log(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = *(a1 + 80);
    *buf = 136315394;
    *v29 = "[FSModuleConnector checkWithOptions:connection:taskID:replyHandler:]_block_invoke_2";
    *&v29[8] = 2112;
    v30 = v26;
    _os_log_impl(&dword_24A929000, v25, OS_LOG_TYPE_INFO, "%s: Check task UUID (%@) finished", buf, 0x16u);
  }

  [v6 unpublish];
}

- (void)formatWithOptions:(id)options connection:(id)connection taskID:(id)d replyHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  connectionCopy = connection;
  dCopy = d;
  handlerCopy = handler;
  v12 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[FSModuleConnector formatWithOptions:connection:taskID:replyHandler:]";
    _os_log_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEFAULT, "%s:start", &buf, 0xCu);
  }

  if ([(FSModuleExtension *)self->_ourModule supportsSimpleMaintenanceOps])
  {
    delegate = [(_EXExtension *)self->_ourModule delegate];
    v14 = self->_ourModule;
    v15 = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy_;
    v50 = __Block_byref_object_dispose_;
    v51 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __70__FSModuleConnector_formatWithOptions_connection_taskID_replyHandler___block_invoke;
    v45[3] = &unk_278FECEE0;
    v45[4] = self;
    v16 = v14;
    v46 = v16;
    [connectionCopy setEarlyCompletedBlock:v45];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __70__FSModuleConnector_formatWithOptions_connection_taskID_replyHandler___block_invoke_2;
    v43[3] = &unk_278FECF08;
    v17 = v15;
    v44 = v17;
    [connectionCopy setLateCompletedBlock:v43];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __70__FSModuleConnector_formatWithOptions_connection_taskID_replyHandler___block_invoke_3;
    v42[3] = &unk_278FECF30;
    v42[4] = &buf;
    v18 = [connectionCopy connect:v42];
    if (*(*(&buf + 1) + 40))
    {
      v19 = fskit_std_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v41 = 0;
        _os_log_impl(&dword_24A929000, v19, OS_LOG_TYPE_DEFAULT, "formatWithOptions: encountered on connect error!", v41, 2u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, *(*(&buf + 1) + 40));
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v22 = FSTaskPurposeFormat[0];
      bundleID = [(FSModuleExtension *)v16 bundleID];
      instanceID = [(FSModuleExtension *)v16 instanceID];
      v25 = [FSTaskDescription taskDescriptionWithID:dCopy state:1 purpose:v22 error:0 bundleID:bundleID extensionID:instanceID resource:0];

      v26 = [[FSTask alloc] initWithMessageConnection:connectionCopy taskID:dCopy];
      v27 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__FSModuleConnector_formatWithOptions_connection_taskID_replyHandler___block_invoke_258;
      block[3] = &unk_278FECF58;
      v21 = v25;
      v31 = v21;
      v32 = v17;
      v33 = delegate;
      v20 = v26;
      v34 = v20;
      v35 = optionsCopy;
      v36 = v16;
      v37 = dCopy;
      v40 = handlerCopy;
      v38 = connectionCopy;
      selfCopy = self;
      dispatch_async(v27, block);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    delegate = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, 0, delegate);
  }
}

void __70__FSModuleConnector_formatWithOptions_connection_taskID_replyHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) resource];
  [v1 sendRevokeResource:v2];
}

void __70__FSModuleConnector_formatWithOptions_connection_taskID_replyHandler___block_invoke_258(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  dispatch_group_enter(*(a1 + 40));
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 64) taskOptions];
  v27 = 0;
  v6 = [v3 startFormatWithTask:v4 options:v5 error:&v27];
  v7 = v27;

  v9 = fskit_std_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 72) resource];
    v11 = [v10 getProgressURLKey];
    *buf = 136315394;
    *v29 = "[FSModuleConnector formatWithOptions:connection:taskID:replyHandler:]_block_invoke";
    *&v29[8] = 2112;
    v30 = v11;
    _os_log_impl(&dword_24A929000, v9, OS_LOG_TYPE_INFO, "%s: publishing progress (%@)", buf, 0x16u);
  }

  v12 = [*(a1 + 72) resource];
  v13 = [v12 getProgressURLKey];
  [v6 setUserInfoObject:v13 forKey:*MEMORY[0x277CCA640]];

  [v6 publish];
  if (v7)
  {
    (*(*(a1 + 104) + 16))();
    v14 = 0;
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v14 = [FSModuleTask taskWithID:*(a1 + 80) description:*(a1 + 32) progress:v6];
  v15 = [*(a1 + 72) taskSet];
  objc_sync_enter(v15);
  v16 = [*(a1 + 72) taskSet];
  [v16 setObject:v14 forKey:*(a1 + 80)];

  objc_sync_exit(v15);
  v17 = fskit_std_log([v2 setTaskHasCancellationHandler:{objc_msgSend(*(a1 + 56), "hasCancellationHandler")}]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 56) hasCancellationHandler];
    v19 = [v2 taskHasCancellationHandler];
    *buf = 67109376;
    *v29 = v18;
    *&v29[4] = 1024;
    *&v29[6] = v19;
    _os_log_impl(&dword_24A929000, v17, OS_LOG_TYPE_DEFAULT, "Testing: just set hasCancellation to %d, we see %d", buf, 0xEu);
  }

  (*(*(a1 + 104) + 16))();
  dispatch_group_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
  if (v6)
  {
LABEL_9:
    v20 = [v6 totalUnitCount];
    if (v20 > [v6 completedUnitCount])
    {
      [v6 setCompletedUnitCount:{objc_msgSend(v6, "totalUnitCount")}];
    }
  }

LABEL_11:
  [*(a1 + 88) completed:0 replyHandler:&__block_literal_global_261];
  if (v7)
  {
    v21 = v2;
  }

  else
  {
    v21 = [v2 updatedDescriptionInState:3 error:0];

    [*(a1 + 96) sendTaskUpdate:v21];
  }

  v22 = [*(a1 + 72) taskSet];
  objc_sync_enter(v22);
  v23 = [*(a1 + 72) taskSet];
  [v23 removeObjectForKey:*(a1 + 80)];

  objc_sync_exit(v22);
  v25 = fskit_std_log(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = *(a1 + 80);
    *buf = 136315394;
    *v29 = "[FSModuleConnector formatWithOptions:connection:taskID:replyHandler:]_block_invoke_2";
    *&v29[8] = 2112;
    v30 = v26;
    _os_log_impl(&dword_24A929000, v25, OS_LOG_TYPE_INFO, "%s: Format task UUID (%@) finished", buf, 0x16u);
  }

  [v6 unpublish];
}

- (void)loadResource:(id)resource options:(id)options replyHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  optionsCopy = options;
  handlerCopy = handler;
  v9 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[FSModuleConnector loadResource:options:replyHandler:]";
    _os_log_impl(&dword_24A929000, v9, OS_LOG_TYPE_DEFAULT, "%s:start", &buf, 0xCu);
  }

  v10 = self->_ourModule;
  if ([(FSModuleExtension *)v10 isNormalFS]|| [(FSModuleExtension *)v10 isSimpleFS])
  {
    v11 = dispatch_get_global_queue(0, 0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy_;
    v52 = __Block_byref_object_dispose_;
    v53 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    taskOptions = [optionsCopy taskOptions];
    v12TaskOptions = [taskOptions taskOptions];

    v14 = [v12TaskOptions countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v14)
    {
      v15 = *v41;
      do
      {
        v16 = 0;
        do
        {
          if (*v41 != v15)
          {
            objc_enumerationMutation(v12TaskOptions);
          }

          if ([*(*(&v40 + 1) + 8 * v16) containsString:{@"-f", resourceCopy}])
          {
            *(v45 + 24) = 1;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12TaskOptions countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v14);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke;
    aBlock[3] = &unk_278FECFF8;
    v17 = v10;
    v33 = v17;
    v38 = &v44;
    v18 = resourceCopy;
    v34 = v18;
    v19 = handlerCopy;
    selfCopy = self;
    v37 = v19;
    p_buf = &buf;
    v35 = v11;
    v20 = v11;
    v21 = _Block_copy(aBlock);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_270;
    block[3] = &unk_278FED070;
    v27 = v17;
    v28 = v18;
    v29 = optionsCopy;
    v30 = v21;
    v31 = v19;
    v22 = v21;
    dispatch_async(v20, block);

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v23 = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, 0, v23);
  }
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  v7 = dispatch_group_create();
  v8 = [*(a1 + 32) delegate];
  v9 = [v8 containerStatus];
  v10 = v9;
  if (!v9)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    v12 = 0;
LABEL_10:
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v9 = [v6 code];
      if (v9 == 43)
      {
        v9 = [v12 code];
        if (v9 == 43)
        {
          [*(a1 + 32) setResource:*(a1 + 40)];
          (*(*(a1 + 64) + 16))();
          goto LABEL_23;
        }
      }
    }

    v19 = fskit_std_log(v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_cold_1();
    }

LABEL_22:

    (*(*(a1 + 64) + 16))();
    goto LABEL_23;
  }

  v11 = [v8 containerStatus];
  v12 = [v11 status];

  if (v6)
  {
    goto LABEL_10;
  }

  if ([v10 state] != 2 && objc_msgSend(v10, "state") != 1)
  {
    if (v12)
    {
      v20 = v12;
      v6 = v20;
      v12 = v20;
      goto LABEL_20;
    }

LABEL_19:
    v20 = fs_errorForPOSIXError(43);
    v6 = v20;
    v12 = 0;
LABEL_20:
    v19 = fskit_std_log(v20);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_cold_2();
    }

    goto LABEL_22;
  }

  v13 = objc_opt_new();
  v14 = v34[5];
  v34[5] = v13;

  if (v5)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_263;
    v27[3] = &unk_278FECFA8;
    v28 = v7;
    v15 = *(a1 + 32);
    v16 = *(a1 + 80);
    v29 = v15;
    v31 = v16;
    v30 = *(a1 + 40);
    v32 = &v33;
    [v5 enumerateObjectsUsingBlock:v27];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_268;
  block[3] = &unk_278FECFD0;
  v17 = *(a1 + 48);
  v18 = *(a1 + 80);
  block[4] = *(a1 + 56);
  v25 = v18;
  v22 = *(a1 + 40);
  v23 = *(a1 + 32);
  v24 = *(a1 + 64);
  v26 = &v33;
  dispatch_group_notify(v7, v17, block);

  v6 = 0;
LABEL_23:

  _Block_object_dispose(&v33, 8);
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_263(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = [v4 volumeID];
  v7 = [*(a1 + 40) bundleID];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2;
  v14[3] = &unk_278FECF80;
  v15 = v4;
  v16 = v4;
  v13 = *(a1 + 48);
  v8 = v13;
  v9 = *(a1 + 40);
  v19 = *(a1 + 64);
  *&v10 = *(a1 + 32);
  *(&v11 + 1) = v9;
  *(&v10 + 1) = *(&v13 + 1);
  *&v11 = v13;
  v18 = v10;
  v17 = v11;
  v12 = v4;
  [v5 sendIsVolumeUsed:v6 bundle:v7 replyHandler:v14];
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 72) + 8);
  v7 = v5;
  if (!v5)
  {
    v7 = *(v6 + 40);
  }

  objc_storeStrong((v6 + 40), v7);
  if (a2)
  {
    v8 = objc_opt_new();
    v9 = [v8 fs_volumeIdentifier];
    [*(a1 + 32) setVolumeID:v9];

    v11 = fskit_std_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2_cold_1(a1, (a1 + 32), v11);
    }
  }

  v12 = [FSModuleVolume volumeWithName:*(a1 + 32) resource:*(a1 + 48)];
  v13 = fskit_std_log([v12 setOurExtension:*(a1 + 56)]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2_cold_2();
  }

  v14 = [*(a1 + 56) volumes];
  v15 = [*(a1 + 32) volumeID];
  [v14 setObject:v12 forKey:v15];

  v16 = [*(a1 + 32) volumeID];
  v17 = [*(a1 + 32) name];
  v18 = +[FSVolumeDescription volumeDescriptionWithID:name:state:](FSVolumeDescription, "volumeDescriptionWithID:name:state:", v16, v17, [*(a1 + 32) state]);

  [*(*(*(a1 + 80) + 8) + 40) addObject:v18];
  dispatch_group_leave(*(a1 + 64));
}

uint64_t __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_268(uint64_t a1)
{
  v2 = fskit_std_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_268_cold_1(a1);
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = fskit_std_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_268_cold_2(a1);
    }

    [*(a1 + 48) setResource:*(a1 + 40)];
  }

  return (*(*(a1 + 56) + 16))();
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_270(uint64_t a1)
{
  v2 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2_271;
  v16[3] = &unk_278FECF08;
  v17 = v2;
  [v17 sendConfigureUserClientWithReplyHandler:v16];
  v3 = [*(a1 + 32) isNormalFS];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 48) taskOptions];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_273;
      v14[3] = &unk_278FED020;
      v15 = *(a1 + 56);
      [v5 loadResource:v6 options:v7 replyHandler:v14];

      v8 = v15;
LABEL_8:

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ([v4 isSimpleFS])
  {
    v5 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) taskOptions];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_274;
      v12[3] = &unk_278FED048;
      v13 = *(a1 + 56);
      [v5 loadResource:v9 options:v10 replyHandler:v12];

      v8 = v13;
      goto LABEL_8;
    }

LABEL_7:
    v11 = *(a1 + 64);
    v8 = fs_errorForPOSIXError(45);
    (*(v11 + 16))(v11, 0, v8);
    goto LABEL_8;
  }

LABEL_9:
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2_271(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = fskit_std_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) bundleID];
    v6 = [v3 description];
    v7 = 136315650;
    v8 = "[FSModuleConnector loadResource:options:replyHandler:]_block_invoke_2";
    v9 = 2114;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_24A929000, v4, OS_LOG_TYPE_DEFAULT, "%s: configureUserClient for FSModule %{public}@ returned error (%@)", &v7, 0x20u);
  }
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_273(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!(v5 | v6))
  {
    v8 = fskit_std_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_273_cold_1();
    }

    v7 = fs_errorForPOSIXError(43);
  }

  (*(*(a1 + 32) + 16))();
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_274(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v7 = fskit_std_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_273_cold_1();
    }

    v8 = fs_errorForPOSIXError(43);
    v9 = *(a1 + 32);
    goto LABEL_7;
  }

  v8 = v6;
  v9 = *(a1 + 32);
  if (!v5)
  {
LABEL_7:
    (*(v9 + 16))(v9, 0, v8);
    goto LABEL_8;
  }

  v11[0] = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  (*(v9 + 16))(v9, v10, v8);

LABEL_8:
}

- (void)unloadResource:(id)resource options:(id)options replyHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[FSModuleConnector unloadResource:options:replyHandler:]";
    _os_log_impl(&dword_24A929000, v11, OS_LOG_TYPE_DEFAULT, "%s:start", buf, 0xCu);
  }

  if ([(FSModuleExtension *)self->_ourModule isNormalFS]|| [(FSModuleExtension *)self->_ourModule isSimpleFS])
  {
    v12 = self->_ourModule;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__FSModuleConnector_unloadResource_options_replyHandler___block_invoke;
    aBlock[3] = &unk_278FED098;
    v13 = v12;
    v25 = v13;
    selfCopy = self;
    v14 = resourceCopy;
    v27 = v14;
    v28 = handlerCopy;
    v15 = _Block_copy(aBlock);
    delegate = [(_EXExtension *)v13 delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = dispatch_get_global_queue(0, 0);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __57__FSModuleConnector_unloadResource_options_replyHandler___block_invoke_278;
      v19[3] = &unk_278FED0C0;
      v20 = v13;
      v21 = v14;
      v22 = optionsCopy;
      v23 = v15;
      dispatch_async(v18, v19);
    }

    else
    {
      (*(v15 + 2))(v15, 0);
    }
  }

  else
  {
    v13 = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

void __57__FSModuleConnector_unloadResource_options_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [*(a1 + 32) volumes];
    [v4 removeAllObjects];

    v5 = fskit_std_log([*(a1 + 40) sendRevokeResource:*(a1 + 48)]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __57__FSModuleConnector_unloadResource_options_replyHandler___block_invoke_cold_1();
    }

    [*(a1 + 32) setResource:0];
  }

  (*(*(a1 + 56) + 16))();
}

void __57__FSModuleConnector_unloadResource_options_replyHandler___block_invoke_278(uint64_t a1)
{
  v2 = [*(a1 + 32) isNormalFS];
  v3 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    if (![v3 isSimpleFS])
    {
      return;
    }

    v3 = *(a1 + 32);
  }

  v6 = [v3 delegate];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) taskOptions];
  [v6 unloadResource:v4 options:v5 replyHandler:*(a1 + 56)];
}

- (void)activateVolume:(id)volume resource:(id)resource options:(id)options replyHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  optionsCopy = options;
  handlerCopy = handler;
  v12 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[FSModuleConnector activateVolume:resource:options:replyHandler:]";
    _os_log_impl(&dword_24A929000, v12, OS_LOG_TYPE_DEFAULT, "%s:start", buf, 0xCu);
  }

  v13 = self->_ourModule;
  volumes = [(FSModuleExtension *)v13 volumes];
  v15 = [volumes objectForKeyedSubscript:volumeCopy];

  if (v15 && ([v15 volume], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
  {
    volume = [v15 volume];
    v19 = dispatch_get_global_queue(0, 0);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke;
    v22[3] = &unk_278FED138;
    v23 = volume;
    v24 = optionsCopy;
    v25 = volumeCopy;
    v28 = handlerCopy;
    v26 = v13;
    v27 = v15;
    v20 = volume;
    dispatch_async(v19, v22);
  }

  else
  {
    v21 = fskit_std_log(v16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleConnector activateVolume:resource:options:replyHandler:];
    }

    v20 = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, v20);
  }
}

void __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) taskOptions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2;
  v9[3] = &unk_278FED110;
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 64);
  *(&v7 + 1) = v5;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v2 activateWithOptions:v3 replyHandler:v9];
}

void __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = fskit_std_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = fskit_std_log(0);
    v10 = v9;
    if (v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_cold_2();
      }

      [*(a1 + 48) updateRootItem:v5 replyHandler:&__block_literal_global_282];
      v11 = *(a1 + 48);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_283;
      v14[3] = &unk_278FED0E8;
      v15 = v11;
      v16 = v5;
      v17 = *(a1 + 56);
      [v15 fetchAndSetTypeForItem:v16 replyHandler:v14];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_cold_3(a1);
      }

      v12 = *(a1 + 56);
      v13 = fs_errorForPOSIXError(43);
      (*(v12 + 16))(v12, v13);
    }
  }
}

uint64_t __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_283(uint64_t a1)
{
  v2 = (a1 + 40);
  [*(a1 + 32) insertIntoFHCache:*(a1 + 40)];
  v3 = fskit_std_log([*(v2 - 1) setRootFSItem:*v2]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_283_cold_1(v2);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)deactivateVolume:(id)volume numericOptions:(unint64_t)options replyHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  handlerCopy = handler;
  v10 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[FSModuleConnector deactivateVolume:numericOptions:replyHandler:]";
    _os_log_impl(&dword_24A929000, v10, OS_LOG_TYPE_DEFAULT, "%s:start", buf, 0xCu);
  }

  v11 = self->_ourModule;
  volumes = [(FSModuleExtension *)v11 volumes];
  v13 = [volumes objectForKeyedSubscript:volumeCopy];

  if (v13 && ([v13 volume], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    volume = [v13 volume];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__FSModuleConnector_deactivateVolume_numericOptions_replyHandler___block_invoke;
    v18[3] = &unk_278FED0E8;
    v19 = volumeCopy;
    v20 = v13;
    v21 = handlerCopy;
    [volume deactivateWithOptions:options replyHandler:v18];
  }

  else
  {
    v17 = fskit_std_log(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleConnector deactivateVolume:numericOptions:replyHandler:];
    }

    volume = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, volume);
  }
}

void __66__FSModuleConnector_deactivateVolume_numericOptions_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = fskit_std_log(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66__FSModuleConnector_deactivateVolume_numericOptions_replyHandler___block_invoke_cold_1(a1, v4);
    }
  }

  v6 = [*(a1 + 40) stopUsingVolume];
  (*(*(a1 + 48) + 16))();
}

- (void)getModuleListenerEndpoint:(id)endpoint
{
  v10 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  secondaryListener = [(FSModuleExtension *)self->_ourModule secondaryListener];
  v6 = fskit_std_log(secondaryListener);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = secondaryListener;
    _os_log_impl(&dword_24A929000, v6, OS_LOG_TYPE_DEFAULT, "getModuleListenerEndpoint got listener %@", &v8, 0xCu);
  }

  if (secondaryListener)
  {
    endpoint = [secondaryListener endpoint];
    endpointCopy[2](endpointCopy, endpoint, 0);
  }

  else
  {
    endpoint = fs_errorForPOSIXError(12);
    (endpointCopy)[2](endpointCopy, 0, endpoint);
  }
}

- (void)sendRevokeResource:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 getResourceID];
  v8 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_24A929000, v2, v3, "%s:start:resource(%@)", v4, v5, v6, v7, v8);
}

void __40__FSModuleConnector_sendRevokeResource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __40__FSModuleConnector_sendRevokeResource___block_invoke_235_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)sendCloseResource:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 getResourceID];
  v8 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_24A929000, v2, v3, "%s:start:resource(%@)", v4, v5, v6, v7, v8);
}

void __39__FSModuleConnector_sendCloseResource___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __39__FSModuleConnector_sendCloseResource___block_invoke_240_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)sendIsVolumeUsed:bundle:replyHandler:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6(&dword_24A929000, v0, v1, "%s:start:volumeID(%@):bundleID(%@)", v2);
}

void __58__FSModuleConnector_sendIsVolumeUsed_bundle_replyHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_243_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __51__FSModuleConnector_sendWipeResource_replyHandler___block_invoke_243_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleID];
  v8 = 136315394;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_24A929000, v2, v3, "%s: %{public}@ sendWipeResource done, no errors", v4, v5, v6, v7, v8);
}

- (void)sendConfigureUserClient:replyHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __58__FSModuleConnector_sendConfigureUserClient_replyHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)checkIn:(uint8_t *)buf replyHandler:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_24A929000, log, OS_LOG_TYPE_ERROR, "Attempt to set instance UUID to %@ after already set to %@", buf, 0x16u);
}

- (void)probeResource:(uint64_t)a1 replyHandler:.cold.1(uint64_t a1)
{
  objc_opt_class();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __48__FSModuleConnector_probeResource_replyHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 48) bundleID];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __48__FSModuleConnector_probeResource_replyHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 48) bundleID];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11(&dword_24A929000, v2, v3, "FSModule %{public}@ probe: returned nil result", v4, v5, v6, v7);
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_cold_1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7(&dword_24A929000, v0, v1, "%s: load error %@, container status %@", v2);
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_cold_2()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7(&dword_24A929000, v0, v1, "%s: unexpected container state %@,%@", v2);
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 40) volumeID];
  v7 = [*(a1 + 48) getResourceID];
  v8 = [*a2 volumeID];
  v9 = 136315906;
  v10 = "[FSModuleConnector loadResource:options:replyHandler:]_block_invoke_2";
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  v15 = 2112;
  v16 = v8;
  _os_log_error_impl(&dword_24A929000, a3, OS_LOG_TYPE_ERROR, "%s: VolumeID (%@) of resource (%@) is being used, using new volumeID (%@) to avoid collision.", &v9, 0x2Au);
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_268_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) ourModule];
  v2 = [v1 volumes];
  *v9 = 136315394;
  *&v9[4] = "[FSModuleConnector loadResource:options:replyHandler:]_block_invoke";
  *&v9[12] = 2048;
  *&v9[14] = [v2 count];
  OUTLINED_FUNCTION_3(&dword_24A929000, v3, v4, "%s: module volume now has %lu volumes", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

void __55__FSModuleConnector_loadResource_options_replyHandler___block_invoke_268_cold_2(uint64_t a1)
{
  v1 = [*(a1 + 40) getResourceID];
  v8 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_24A929000, v2, v3, "%s: Setting up the module resource to (%@)", v4, v5, v6, v7, v8);
}

void __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_cold_1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7(&dword_24A929000, v0, v1, "%s: activate volume (%@) reply(%@)", v2);
}

void __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_cold_2()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6(&dword_24A929000, v0, v1, "%s: activate volume (%@) found root item (%@)", v2);
}

void __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_cold_3(uint64_t a1)
{
  v1 = [*(a1 + 40) bundleID];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11(&dword_24A929000, v2, v3, "FSModule %{public}@ activateVolume: returned nil result", v4, v5, v6, v7);
}

void __66__FSModuleConnector_activateVolume_resource_options_replyHandler___block_invoke_2_283_cold_1(id *a1)
{
  v1 = [*a1 fileHandle];
  v8 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_24A929000, v2, v3, "%s:error:0:rootItem:%@", v4, v5, v6, v7, v8);
}

void __66__FSModuleConnector_deactivateVolume_numericOptions_replyHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v7 = [a2 description];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

@end