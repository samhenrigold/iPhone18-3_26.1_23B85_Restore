@interface SSVSubscriptionEntitlementsCoordinator
+ (id)sharedCoordinator;
- (SSVSubscriptionEntitlementsCoordinator)init;
- (id)_cachedSubscriptionEntitlements;
- (id)_connection;
- (id)_loadSubscriptionEntitlementsIgnoreCaches:(BOOL)caches error:(id *)error;
- (void)_setCachedSubscriptionEntitlements:(id)entitlements;
- (void)dealloc;
- (void)getSubscriptionEntitlementsIgnoreCaches:(BOOL)caches entitlementsBlock:(id)block;
@end

@implementation SSVSubscriptionEntitlementsCoordinator

- (SSVSubscriptionEntitlementsCoordinator)init
{
  v7.receiver = self;
  v7.super_class = SSVSubscriptionEntitlementsCoordinator;
  v2 = [(SSVSubscriptionEntitlementsCoordinator *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.StoreServices.SSVSubscriptionEntitlementsCoordinator", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __EntitlementsChangedNotification, kSSVNotificationSubscriptionEntitlementsChanged, 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kSSVNotificationSubscriptionEntitlementsChanged, 0);
  v4.receiver = self;
  v4.super_class = SSVSubscriptionEntitlementsCoordinator;
  [(SSVSubscriptionEntitlementsCoordinator *)&v4 dealloc];
}

+ (id)sharedCoordinator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SSVSubscriptionEntitlementsCoordinator_sharedCoordinator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sOnce_0 != -1)
  {
    dispatch_once(&sOnce_0, block);
  }

  v2 = sCoordinator_0;

  return v2;
}

void __59__SSVSubscriptionEntitlementsCoordinator_sharedCoordinator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sCoordinator_0;
  sCoordinator_0 = v1;
}

- (void)getSubscriptionEntitlementsIgnoreCaches:(BOOL)caches entitlementsBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__SSVSubscriptionEntitlementsCoordinator_getSubscriptionEntitlementsIgnoreCaches_entitlementsBlock___block_invoke;
  block[3] = &unk_1E84AD758;
  cachesCopy = caches;
  block[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_async(dispatchQueue, block);
}

void __100__SSVSubscriptionEntitlementsCoordinator_getSubscriptionEntitlementsIgnoreCaches_entitlementsBlock___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = [*(a1 + 32) _cachedSubscriptionEntitlements];
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      goto LABEL_18;
    }
  }

  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = v6 | 2;
  }

  else
  {
    LODWORD(v7) = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v26 = 138412290;
    v27 = objc_opt_class();
    v9 = v27;
    v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, v8, 0, "%@: Asking daemon for subscription entitlements.", &v26, 12);

    if (!v10)
    {
      goto LABEL_16;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
  }

LABEL_16:
  v17 = *(a1 + 32);
  v18 = *(a1 + 48);
  v25 = 0;
  v3 = [v17 _loadSubscriptionEntitlementsIgnoreCaches:v18 error:&v25];
  v4 = v25;
  if (!v4)
  {
    [*(a1 + 32) _setCachedSubscriptionEntitlements:v3];
  }

LABEL_18:
  v19 = *(a1 + 40);
  if (v19)
  {
    v20 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__SSVSubscriptionEntitlementsCoordinator_getSubscriptionEntitlementsIgnoreCaches_entitlementsBlock___block_invoke_6;
    block[3] = &unk_1E84ABEC8;
    v24 = v19;
    v22 = v3;
    v23 = v4;
    dispatch_async(v20, block);
  }
}

- (id)_cachedSubscriptionEntitlements
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_cachedEntitlements;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v5 = self->_connection;
    self->_connection = v4;

    connection = self->_connection;
  }

  return connection;
}

- (id)_loadSubscriptionEntitlementsIgnoreCaches:(BOOL)caches error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      LODWORD(v31) = 136446210;
      *(&v31 + 4) = "[SSVSubscriptionEntitlementsCoordinator _loadSubscriptionEntitlementsIgnoreCaches:error:]";

      if (v12)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
        free(v12);
        SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
      }
    }

    else
    {
    }
  }

  v20 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v20, "0", 150);
  xpc_dictionary_set_BOOL(v20, "1", caches);
  *&v31 = 0;
  *(&v31 + 1) = &v31;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__84;
  v34 = __Block_byref_object_dispose__84;
  v35 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__84;
  v29 = __Block_byref_object_dispose__84;
  v30 = 0;
  _connection = [(SSVSubscriptionEntitlementsCoordinator *)self _connection];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __90__SSVSubscriptionEntitlementsCoordinator__loadSubscriptionEntitlementsIgnoreCaches_error___block_invoke;
  v24[3] = &unk_1E84B3A88;
  v24[4] = &v31;
  v24[5] = &v25;
  [_connection sendSynchronousMessage:v20 withReply:v24];

  if (error)
  {
    *error = *(*(&v31 + 1) + 40);
  }

  v22 = v26[5];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);

  return v22;
}

void __90__SSVSubscriptionEntitlementsCoordinator__loadSubscriptionEntitlementsIgnoreCaches_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v4 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v4 = 111;
LABEL_6:
    v5 = SSError(@"SSErrorDomain", v4, 0, 0);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
    goto LABEL_7;
  }

  v8 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = xpc_dictionary_get_value(xdict, "2");
  v10 = [v8 initWithXPCEncoding:v9];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [SSVSubscriptionEntitlements alloc];
  v7 = xpc_dictionary_get_value(xdict, "3");
  v14 = [(SSVSubscriptionEntitlements *)v13 initWithXPCEncoding:v7];
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

LABEL_7:
}

- (void)_setCachedSubscriptionEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_cachedEntitlements != entitlementsCopy)
  {
    objc_storeStrong(&selfCopy->_cachedEntitlements, entitlements);
  }

  objc_sync_exit(selfCopy);
}

@end