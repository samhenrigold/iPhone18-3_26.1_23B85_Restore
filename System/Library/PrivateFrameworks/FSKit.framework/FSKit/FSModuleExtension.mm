@interface FSModuleExtension
+ (id)moduleExtensionForAppex:(id)appex;
- (BOOL)fskitdIsClient:(id)client;
- (BOOL)shouldAcceptConnection:(id)connection;
- (FSModuleConnector)fskitdCurrentConnection;
- (NSXPCListener)secondaryListener;
- (void)dealloc;
- (void)didFinishLaunching;
- (void)sendConfigureUserClientWithReplyHandler:(id)handler;
- (void)sendIsVolumeUsed:(id)used bundle:(id)bundle replyHandler:(id)handler;
- (void)sendWipeResource:(id)resource replyHandler:(id)handler;
@end

@implementation FSModuleExtension

- (void)dealloc
{
  if (gSecondaryListener)
  {
    [gSecondaryListener invalidate];
    v3 = gSecondaryListener;
    gSecondaryListener = 0;
  }

  v4.receiver = self;
  v4.super_class = FSModuleExtension;
  [(FSModuleExtension *)&v4 dealloc];
}

- (void)didFinishLaunching
{
  objc_opt_class();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (NSXPCListener)secondaryListener
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  resume = objc_sync_enter(selfCopy);
  if (!gSecondaryListener)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    v7 = gSecondaryListener;
    gSecondaryListener = anonymousListener;

    resume = gSecondaryListener;
    if (gSecondaryListener)
    {
      [gSecondaryListener setDelegate:selfCopy];
      resume = [gSecondaryListener resume];
    }
  }

  v8 = fskit_std_log(resume);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = gSecondaryListener;
    _os_log_impl(&dword_24A929000, v8, OS_LOG_TYPE_DEFAULT, "Set secondary listener up %@", &v11, 0xCu);
  }

  v9 = gSecondaryListener;
  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(v3);

  return v9;
}

- (FSModuleConnector)fskitdCurrentConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_fskitdCurrentConnection);

  return WeakRetained;
}

+ (id)moduleExtensionForAppex:(id)appex
{
  appexCopy = appex;
  v5 = [[FSModuleExtension alloc] init];
  p_isa = &v5->super.super.isa;
  if (v5)
  {
    [(_EXExtension *)v5 setDelegate:appexCopy];
    objc_storeStrong(p_isa + 6, appex);
    v8 = fskit_std_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[FSModuleExtension(Project) moduleExtensionForAppex:];
    }
  }

  return p_isa;
}

- (BOOL)fskitdIsClient:(id)client
{
  clientCopy = client;
  v4 = clientCopy;
  memset(&v13[1], 0, sizeof(audit_token_t));
  if (clientCopy)
  {
    objc_msgSend_auditToken(clientCopy);
  }

  v13[0] = v13[1];
  v5 = SecTaskCreateWithAuditToken(0, v13);
  if (v5)
  {
    v6 = v5;
    v7 = SecTaskCopyValueForEntitlement(v5, @"application-identifier", 0);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      if (v9 == CFStringGetTypeID())
      {
LABEL_8:
        CFRelease(v6);
        goto LABEL_10;
      }

      CFRelease(v8);
    }

    v8 = &stru_285DEFA28;
    goto LABEL_8;
  }

  v8 = &stru_285DEFA28;
LABEL_10:
  v10 = fskit_std_log(v5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleExtension(Project) fskitdIsClient:];
  }

  v11 = [(__CFString *)v8 isEqualToString:@"com.apple.fskitd"];
  return v11;
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  v12 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = objc_opt_new();
  [v5 setOurModule:self];
  [v5 setOurConnection:connectionCopy];
  if ([(FSModuleExtension *)self fskitdIsClient:connectionCopy])
  {
    objc_storeWeak(&self->_fskitdCurrentConnection, v5);
  }

  [connectionCopy setExportedObject:v5];
  v6 = +[FSKitConstants FSModuleExtensionXPCProtocol];
  [connectionCopy setExportedInterface:v6];

  v7 = +[FSKitConstants FSModuleExtensionHostXPCProtocol];
  [connectionCopy setRemoteObjectInterface:v7];

  [connectionCopy resume];
  v8 = fskit_std_log([(NSMutableArray *)self->_connectors addObject:v5]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[FSModuleExtension(Project) shouldAcceptConnection:]";
    _os_log_impl(&dword_24A929000, v8, OS_LOG_TYPE_DEFAULT, "%s returning YES", &v10, 0xCu);
  }

  return 1;
}

- (void)sendWipeResource:(id)resource replyHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  v8 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleExtension(Project) sendWipeResource:replyHandler:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__FSModuleExtension_Project__sendWipeResource_replyHandler___block_invoke;
    v16[3] = &unk_278FECE20;
    v17 = handlerCopy;
    [v11 sendWipeResource:resourceCopy replyHandler:v16];

    v13 = fskit_std_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleExtension(Project) sendWipeResource:replyHandler:];
    }

    v14 = v17;
  }

  else
  {
    v15 = fskit_std_log(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FSModuleExtension(Project) sendWipeResource:? replyHandler:?];
    }

    v14 = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, v14);
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
    [FSModuleExtension(Project) sendIsVolumeUsed:bundle:replyHandler:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
  if (WeakRetained)
  {
    v14 = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __67__FSModuleExtension_Project__sendIsVolumeUsed_bundle_replyHandler___block_invoke;
    v19[3] = &unk_278FECE48;
    v20 = handlerCopy;
    [v14 sendIsVolumeUsed:usedCopy bundle:bundleCopy replyHandler:v19];

    v16 = fskit_std_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [FSModuleExtension(Project) sendIsVolumeUsed:bundle:replyHandler:];
    }

    v17 = v20;
  }

  else
  {
    v18 = fskit_std_log(v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FSModuleExtension(Project) sendIsVolumeUsed:? bundle:? replyHandler:?];
    }

    v17 = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, 0, v17);
  }
}

- (void)sendConfigureUserClientWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_fsMachPort;
  v6 = fskit_std_log(v5);
  v7 = v6;
  if (!v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [FSModuleExtension(Project) sendConfigureUserClientWithReplyHandler:];
    }

    v14 = 6;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleExtension(Project) sendConfigureUserClientWithReplyHandler:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
  if (!WeakRetained)
  {
    v15 = fskit_std_log(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FSModuleExtension(Project) sendConfigureUserClientWithReplyHandler:?];
    }

    v14 = 45;
LABEL_14:
    v13 = fs_errorForPOSIXError(v14);
    handlerCopy[2](handlerCopy, v13);
    goto LABEL_15;
  }

  v10 = objc_loadWeakRetained(&self->_fskitdCurrentConnection);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__FSModuleExtension_Project__sendConfigureUserClientWithReplyHandler___block_invoke;
  v16[3] = &unk_278FECE20;
  v17 = handlerCopy;
  [v10 sendConfigureUserClient:v5 replyHandler:v16];

  v12 = fskit_std_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [FSModuleExtension(Project) sendConfigureUserClientWithReplyHandler:];
  }

  v13 = v17;
LABEL_15:
}

@end