@interface CacheDeleteRemoteExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (CacheDeleteRemoteExtensionContext)init;
- (void)serviceCallback:(id)callback replyBlock:(id)block;
- (void)serviceCancelPurge:(id)purge;
- (void)serviceNotify:(id)notify replyBlock:(id)block;
- (void)servicePeriodic:(int)periodic info:(id)info replyBlock:(id)block;
- (void)servicePing:(id)ping;
- (void)servicePurge:(int)purge info:(id)info replyBlock:(id)block;
- (void)servicePurgeable:(int)purgeable info:(id)info replyBlock:(id)block;
@end

@implementation CacheDeleteRemoteExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_MergedGlobals_9 != -1)
  {
    dispatch_once(&_MergedGlobals_9, &__block_literal_global_11);
  }

  v3 = qword_1ED76A118;

  return v3;
}

uint64_t __68__CacheDeleteRemoteExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  qword_1ED76A118 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F387C2E0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_1ED76A120 != -1)
  {
    dispatch_once(&qword_1ED76A120, &__block_literal_global_42_0);
  }

  v3 = qword_1ED76A128;

  return v3;
}

uint64_t __70__CacheDeleteRemoteExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  qword_1ED76A128 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F387CF60];

  return MEMORY[0x1EEE66BB8]();
}

- (CacheDeleteRemoteExtensionContext)init
{
  v6.receiver = self;
  v6.super_class = CacheDeleteRemoteExtensionContext;
  v2 = [(CacheDeleteRemoteExtensionContext *)&v6 init];
  if (v2)
  {
    v3 = CDGetLogHandle("client");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "ENTRY", v5, 2u);
    }
  }

  return v2;
}

- (void)servicePurgeable:(int)purgeable info:(id)info replyBlock:(id)block
{
  v6 = *&purgeable;
  v17 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  blockCopy = block;
  v9 = CDGetLogHandle("client");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v6;
    _os_log_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_DEFAULT, "purgeable, urgency: %d", buf, 8u);
  }

  v10 = [CacheDeleteServiceListener cacheDeleteServiceListener:0 options:0];
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__CacheDeleteRemoteExtensionContext_servicePurgeable_info_replyBlock___block_invoke;
    v12[3] = &unk_1E7F031F0;
    v14 = blockCopy;
    v13 = v10;
    [v13 servicePurgeable:v6 info:infoCopy replyBlock:v12];
  }

  else
  {
    v11 = CDGetLogHandle("client");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_ERROR, "No Listener!!", buf, 2u);
    }

    (*(blockCopy + 2))(blockCopy, &unk_1F38797D0);
  }
}

void __70__CacheDeleteRemoteExtensionContext_servicePurgeable_info_replyBlock___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "result: %@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v5 = CDGetLogHandle("client");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_DEFAULT, "calling completeRequestReturningItems", &v8, 2u);
  }

  v6 = [*(a1 + 32) serviceInfo];
  v7 = [v6 extensionContext];
  [v7 completeRequestReturningItems:0 completionHandler:&__block_literal_global_64_0];
}

void __70__CacheDeleteRemoteExtensionContext_servicePurgeable_info_replyBlock___block_invoke_61(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "CacheDeleteRemoteExtensionContext completeRequestReturningItems completionHandler expired %s", &v5, 0xCu);
  }
}

- (void)servicePurge:(int)purge info:(id)info replyBlock:(id)block
{
  v6 = *&purge;
  v17 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  blockCopy = block;
  v9 = CDGetLogHandle("client");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v6;
    _os_log_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_DEFAULT, "purge, urgency: %d", buf, 8u);
  }

  v10 = [CacheDeleteServiceListener cacheDeleteServiceListener:0 options:0];
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__CacheDeleteRemoteExtensionContext_servicePurge_info_replyBlock___block_invoke;
    v12[3] = &unk_1E7F031F0;
    v14 = blockCopy;
    v13 = v10;
    [v13 servicePurge:v6 info:infoCopy replyBlock:v12];
  }

  else
  {
    v11 = CDGetLogHandle("client");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_ERROR, "No Listener!!", buf, 2u);
    }

    (*(blockCopy + 2))(blockCopy, &unk_1F38797F8);
  }
}

void __66__CacheDeleteRemoteExtensionContext_servicePurge_info_replyBlock___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "result: %@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v5 = [*(a1 + 32) serviceInfo];
  v6 = [v5 extensionContext];
  [v6 completeRequestReturningItems:0 completionHandler:&__block_literal_global_75];
}

void __66__CacheDeleteRemoteExtensionContext_servicePurge_info_replyBlock___block_invoke_73(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "CacheDeleteRemoteExtensionContext completeRequestReturningItems completionHandler expired %s", &v5, 0xCu);
  }
}

- (void)serviceCancelPurge:(id)purge
{
  purgeCopy = purge;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "cancelPurge", buf, 2u);
  }

  v5 = [CacheDeleteServiceListener cacheDeleteServiceListener:0 options:0];
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__CacheDeleteRemoteExtensionContext_serviceCancelPurge___block_invoke;
    v7[3] = &unk_1E7F03218;
    v9 = purgeCopy;
    v8 = v5;
    [v8 serviceCancelPurge:v7];
  }

  else
  {
    v6 = CDGetLogHandle("client");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA7F1000, v6, OS_LOG_TYPE_ERROR, "No Listener!!", buf, 2u);
    }

    purgeCopy[2](purgeCopy);
  }
}

void __56__CacheDeleteRemoteExtensionContext_serviceCancelPurge___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v3 = [*(a1 + 32) serviceInfo];
  v2 = [v3 extensionContext];
  [v2 completeRequestReturningItems:0 completionHandler:&__block_literal_global_81];
}

void __56__CacheDeleteRemoteExtensionContext_serviceCancelPurge___block_invoke_2(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "CacheDeleteRemoteExtensionContext completeRequestReturningItems completionHandler expired %s", &v5, 0xCu);
  }
}

- (void)servicePeriodic:(int)periodic info:(id)info replyBlock:(id)block
{
  v6 = *&periodic;
  v17 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  blockCopy = block;
  v9 = CDGetLogHandle("client");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v6;
    _os_log_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_DEFAULT, "periodic, urgency: %d", buf, 8u);
  }

  v10 = [CacheDeleteServiceListener cacheDeleteServiceListener:0 options:0];
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__CacheDeleteRemoteExtensionContext_servicePeriodic_info_replyBlock___block_invoke;
    v12[3] = &unk_1E7F031F0;
    v14 = blockCopy;
    v13 = v10;
    [v13 servicePeriodic:v6 info:infoCopy replyBlock:v12];
  }

  else
  {
    v11 = CDGetLogHandle("client");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_ERROR, "No Listener!!", buf, 2u);
    }

    (*(blockCopy + 2))(blockCopy, &unk_1F3879820);
  }
}

void __69__CacheDeleteRemoteExtensionContext_servicePeriodic_info_replyBlock___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "result: %@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v5 = [*(a1 + 32) serviceInfo];
  v6 = [v5 extensionContext];
  [v6 completeRequestReturningItems:0 completionHandler:&__block_literal_global_84];
}

void __69__CacheDeleteRemoteExtensionContext_servicePeriodic_info_replyBlock___block_invoke_82(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "CacheDeleteRemoteExtensionContext completeRequestReturningItems completionHandler expired %s", &v5, 0xCu);
  }
}

- (void)serviceCallback:(id)callback replyBlock:(id)block
{
  v11 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  blockCopy = block;
  v7 = CDGetLogHandle("client");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = callbackCopy;
    _os_log_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEFAULT, "callback, urgency: %@", &v9, 0xCu);
  }

  v8 = [callbackCopy mutableCopy];
  [v8 setObject:@"Unsupported callback" forKeyedSubscript:@"CACHE_DELETE_ERROR"];
  blockCopy[2](blockCopy, v8);
}

- (void)serviceNotify:(id)notify replyBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  notifyCopy = notify;
  blockCopy = block;
  v7 = CDGetLogHandle("client");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = notifyCopy;
    _os_log_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEFAULT, "notify: %@", buf, 0xCu);
  }

  v8 = [CacheDeleteServiceListener cacheDeleteServiceListener:0 options:0];
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__CacheDeleteRemoteExtensionContext_serviceNotify_replyBlock___block_invoke;
    v10[3] = &unk_1E7F03218;
    v12 = blockCopy;
    v11 = v8;
    [v11 serviceNotify:notifyCopy replyBlock:v10];
  }

  else
  {
    v9 = CDGetLogHandle("client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_ERROR, "No Listener!!", buf, 2u);
    }

    blockCopy[2](blockCopy);
  }
}

void __62__CacheDeleteRemoteExtensionContext_serviceNotify_replyBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v3 = [*(a1 + 32) serviceInfo];
  v2 = [v3 extensionContext];
  [v2 completeRequestReturningItems:0 completionHandler:&__block_literal_global_93];
}

void __62__CacheDeleteRemoteExtensionContext_serviceNotify_replyBlock___block_invoke_2(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "CacheDeleteRemoteExtensionContext completeRequestReturningItems completionHandler expired %s", &v5, 0xCu);
  }
}

- (void)servicePing:(id)ping
{
  pingCopy = ping;
  v4 = CDGetLogHandle("client");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "PING", v5, 2u);
  }

  pingCopy[2](pingCopy);
}

@end