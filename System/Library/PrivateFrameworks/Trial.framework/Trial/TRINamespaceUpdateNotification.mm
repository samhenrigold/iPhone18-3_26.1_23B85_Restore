@interface TRINamespaceUpdateNotification
+ (BOOL)notifyUpdateForNamespaceName:(id)name;
+ (id)registerUpdateForNamespaceName:(id)name queue:(id)queue usingBlock:(id)block;
+ (void)deregisterUpdateWithToken:(id)token;
- (TRINamespaceUpdateNotification)initWithNamespaceName:(id)name token:(id)token;
- (unsigned)namespaceId;
@end

@implementation TRINamespaceUpdateNotification

- (TRINamespaceUpdateNotification)initWithNamespaceName:(id)name token:(id)token
{
  nameCopy = name;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = TRINamespaceUpdateNotification;
  v9 = [(TRINamespaceUpdateNotification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_namespaceName, name);
    objc_storeStrong(&v10->_token, token);
  }

  return v10;
}

- (unsigned)namespaceId
{
  v2 = MEMORY[0x277D73B50];
  namespaceName = [(TRINamespaceUpdateNotification *)self namespaceName];
  LODWORD(v2) = [v2 namespaceIdFromName:namespaceName];

  return v2;
}

+ (id)registerUpdateForNamespaceName:(id)name queue:(id)queue usingBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  blockCopy = block;
  out_token = -1;
  queueCopy = queue;
  v10 = [TRINamespaceUpdateNotification notificationNameForNamespaceName:nameCopy];
  uTF8String = [v10 UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __82__TRINamespaceUpdateNotification_registerUpdateForNamespaceName_queue_usingBlock___block_invoke;
  handler[3] = &unk_27885E2A0;
  v12 = nameCopy;
  v20 = v12;
  v13 = blockCopy;
  v21 = v13;
  v14 = notify_register_dispatch(uTF8String, &out_token, queueCopy, handler);

  if (v14)
  {
    v15 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v24 = v14;
      _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "notify_register_dispatch error: %lu", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v17 = [TRINotificationState alloc];
    v16 = [(TRINotificationState *)v17 initWithToken:out_token];
  }

  return v16;
}

void __82__TRINamespaceUpdateNotification_registerUpdateForNamespaceName_queue_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_DEBUG, "received update notification for namespace %@", &v9, 0xCu);
  }

  v5 = [[TRINotificationState alloc] initWithToken:a2];
  v6 = *(a1 + 40);
  v7 = [[TRINamespaceUpdateNotification alloc] initWithNamespaceName:*(a1 + 32) token:v5];
  (*(v6 + 16))(v6, v7);
}

+ (void)deregisterUpdateWithToken:(id)token
{
  tokenCopy = token;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    notify_cancel([tokenCopy token]);
  }
}

+ (BOOL)notifyUpdateForNamespaceName:(id)name
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [TRINamespaceUpdateNotification notificationNameForNamespaceName:name];
  v4 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_DEFAULT, "Sending namespace update notification: %{public}@", &v8, 0xCu);
  }

  v5 = notify_post([v3 UTF8String]);
  if (v5)
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = v5;
      _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "notify_register_dispatch error: %lu", &v8, 0xCu);
    }
  }

  return v5 == 0;
}

@end