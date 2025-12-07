@interface SSXPCServer
+ (id)mainServer;
- (SSXPCServer)initWithServiceName:(id)name entitlement:(id)entitlement queue:(id)queue;
- (void)_dispatchMessage:(id)message connection:(id)connection;
- (void)_recordCoreAnalyticsEventForClient:(id)client andSelector:(id)selector;
- (void)addObserver:(id)observer selector:(SEL)selector forMessage:(int64_t)message;
- (void)dealloc;
- (void)removeObserver:(id)observer selector:(SEL)selector forMessage:(int64_t)message;
- (void)start;
@end

@implementation SSXPCServer

uint64_t __20__SSXPCServer_start__block_invoke(uint64_t a1, _xpc_connection_s *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E68])
  {
    xpc_connection_set_target_queue(a2, *(a1 + 32));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __20__SSXPCServer_start__block_invoke_2;
    v8[3] = &unk_1E84B0740;
    v6 = *(a1 + 40);
    v8[4] = a2;
    v8[5] = v6;
    xpc_connection_set_event_handler(a2, v8);
    xpc_connection_resume(a2);
  }

  return [v4 drain];
}

void *__20__SSXPCServer_start__block_invoke_2(void *result, uint64_t a2)
{
  if (a2 != MEMORY[0x1E69E9E20])
  {
    v3 = result;
    result = MEMORY[0x1DA6E0380](a2);
    if (result == MEMORY[0x1E69E9E80])
    {
      v4 = v3[4];
      v5 = *(*(v3[5] + 8) + 40);

      return [v5 _dispatchMessage:a2 connection:v4];
    }
  }

  return result;
}

- (SSXPCServer)initWithServiceName:(id)name entitlement:(id)entitlement queue:(id)queue
{
  if (name)
  {
    v10.receiver = self;
    v10.super_class = SSXPCServer;
    v8 = [(SSXPCServer *)&v10 init];
    if (v8)
    {
      v8->_dispatchQueue = dispatch_queue_create("com.apple.StoreServices.SSXPCServer", 0);
      v8->_entitlementName = [entitlement copy];
      v8->_observers = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8->_serviceName = [name copy];
      v8->_xpcRequestsCache = objc_alloc_init(MEMORY[0x1E695DFA8]);
      if (queue)
      {
        v8->_observerQueue = queue;
        dispatch_retain(queue);
      }
    }
  }

  else
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid service name"];
    return 0;
  }

  return v8;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  listener = self->_listener;
  if (listener)
  {
    xpc_release(listener);
  }

  observerQueue = self->_observerQueue;
  if (observerQueue)
  {
    dispatch_release(observerQueue);
  }

  v6.receiver = self;
  v6.super_class = SSXPCServer;
  [(SSXPCServer *)&v6 dealloc];
}

+ (id)mainServer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__SSXPCServer_mainServer__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  if (mainServer_sOnce != -1)
  {
    dispatch_once(&mainServer_sOnce, block);
  }

  return mainServer_sMainServer;
}

void *__25__SSXPCServer_mainServer__block_invoke(uint64_t a1)
{
  mainServer_sMainServerQueue = dispatch_queue_create("com.apple.StoreServices.SSXPCServer.main", 0);
  result = [objc_alloc(objc_opt_class()) initWithServiceName:@"com.apple.itunesstored.xpc" entitlement:0 queue:mainServer_sMainServerQueue];
  mainServer_sMainServer = result;
  return result;
}

- (void)addObserver:(id)observer selector:(SEL)selector forMessage:(int64_t)message
{
  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SSXPCServer_addObserver_selector_forMessage___block_invoke;
  v6[3] = &unk_1E84B0D28;
  v6[4] = self;
  v6[5] = observer;
  v6[6] = message;
  v6[7] = selector;
  dispatch_sync(dispatchQueue, v6);
}

void __47__SSXPCServer_addObserver_selector_forMessage___block_invoke(void *a1)
{
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a1[6]];
  v2 = [*(a1[4] + 40) objectForKey:?];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(a1[4] + 40) setObject:v2 forKey:v5];
    v3 = v2;
  }

  v4 = objc_alloc_init(SSXPCServerObserver);
  [(SSXPCServerObserver *)v4 setObserver:a1[5]];
  [(SSXPCServerObserver *)v4 setSelector:a1[7]];
  [v2 addObject:v4];
}

- (void)removeObserver:(id)observer selector:(SEL)selector forMessage:(int64_t)message
{
  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SSXPCServer_removeObserver_selector_forMessage___block_invoke;
  v6[3] = &unk_1E84B0D28;
  v6[4] = self;
  v6[5] = observer;
  v6[6] = message;
  v6[7] = selector;
  dispatch_sync(dispatchQueue, v6);
}

void __50__SSXPCServer_removeObserver_selector_forMessage___block_invoke(void *a1)
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a1[6]];
  v2 = [*(a1[4] + 40) objectForKey:?];
  if (v2)
  {
    v3 = v2;
    v4 = objc_alloc_init(SSXPCServerObserver);
    [(SSXPCServerObserver *)v4 setObserver:a1[5]];
    [(SSXPCServerObserver *)v4 setSelector:a1[7]];
    v5 = [v3 indexOfObject:a1[5]];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v3 removeObjectAtIndex:v5];
    }
  }
}

- (void)start
{
  observerQueue = self->_observerQueue;
  if (!observerQueue)
  {
    observerQueue = dispatch_get_global_queue(0, 0);
  }

  mach_service = xpc_connection_create_mach_service([(NSString *)self->_serviceName UTF8String], observerQueue, 1uLL);
  self->_listener = mach_service;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = __Block_byref_object_copy__37;
  v6[4] = __Block_byref_object_dispose__37;
  v6[5] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__SSXPCServer_start__block_invoke;
  v5[3] = &unk_1E84B0740;
  v5[4] = observerQueue;
  v5[5] = v6;
  xpc_connection_set_event_handler(mach_service, v5);
  xpc_connection_resume(self->_listener);
  _Block_object_dispose(v6, 8);
}

- (void)_dispatchMessage:(id)message connection:(id)connection
{
  v88 = *MEMORY[0x1E69E9840];
  memset(v85, 0, sizeof(v85));
  xpc_connection_get_audit_token();
  v69 = CPCopyBundleIdentifierFromAuditToken();
  v4 = MKBDeviceUnlockedSinceBoot();
  v5 = v4;
  if (v4 != 1)
  {
    if (v4)
    {
      v6 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v13 = shouldLog | 2;
      }

      else
      {
        v13 = shouldLog;
      }

      oSLogObject = [v6 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
      {
        v15 = v13;
      }

      else
      {
        v15 = v13 & 2;
      }

      if (!v15)
      {
        goto LABEL_25;
      }

      LODWORD(v85[0]) = 138543618;
      *(v85 + 4) = objc_opt_class();
      WORD6(v85[0]) = 1024;
      *(v85 + 14) = v5;
      v11 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &dword_1D48BA000, oSLogObject, 17, "%{public}@: Invalidating connection; error determining whether device has been unlocked since boot (%d)", v85, 18);
    }

    else
    {
      v6 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = shouldLog2 | 2;
      }

      else
      {
        v8 = shouldLog2;
      }

      oSLogObject2 = [v6 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v10 = v8;
      }

      else
      {
        v10 = v8 & 2;
      }

      if (!v10)
      {
        goto LABEL_25;
      }

      LODWORD(v85[0]) = 138543362;
      *(v85 + 4) = objc_opt_class();
      v11 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 16, "%{public}@: Invalidating connection; device has not been unlocked since boot", v85, 12);
    }

    if (v11)
    {
      v16 = v11;
      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v16);
      SSFileLog(v6, @"%@", v18, v19, v20, v21, v22, v23, v17);
    }

LABEL_25:
    [(SSXPCServer *)self _recordCoreAnalyticsEventForClient:v69 andSelector:@"beforeFirstUnlockClient"];
    xpc_connection_cancel(connection);
  }

  entitlementName = self->_entitlementName;
  if (entitlementName && !SSXPCConnectionHasEntitlement(connection, entitlementName))
  {
    v49 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v49)
    {
      v49 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v49 shouldLog];
    if ([v49 shouldLogToDisk])
    {
      v51 = shouldLog3 | 2;
    }

    else
    {
      v51 = shouldLog3;
    }

    oSLogObject3 = [v49 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v53 = v51;
    }

    else
    {
      v53 = v51 & 2;
    }

    if (v53)
    {
      v54 = objc_opt_class();
      v55 = self->_entitlementName;
      LODWORD(v85[0]) = 138412546;
      *(v85 + 4) = v54;
      WORD6(v85[0]) = 2112;
      *(v85 + 14) = v55;
      LODWORD(v65) = 22;
      v56 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &dword_1D48BA000, oSLogObject3, 0, "%@: Ignoring message, client lacks entitlement: %@", v85, v65);
      if (v56)
      {
        v57 = v56;
        v58 = [MEMORY[0x1E696AEC0] stringWithCString:v56 encoding:4];
        free(v57);
        SSFileLog(v49, @"%@", v59, v60, v61, v62, v63, v64, v58);
      }
    }

    [(SSXPCServer *)self _recordCoreAnalyticsEventForClient:v69 andSelector:@"unentitledClient"];
  }

  else
  {
    *&v85[0] = 0;
    *(&v85[0] + 1) = v85;
    *&v85[1] = 0x3052000000;
    *(&v85[1] + 1) = __Block_byref_object_copy__37;
    v86 = __Block_byref_object_dispose__37;
    v87 = 0;
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SSXPCServer__dispatchMessage_connection___block_invoke;
    block[3] = &unk_1E84B0D50;
    block[5] = self;
    block[6] = v85;
    block[4] = message;
    dispatch_sync(dispatchQueue, block);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = *(*(&v85[0] + 1) + 40);
    v26 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
    if (v26)
    {
      v27 = *v72;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v72 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v71 + 1) + 8 * i);
          v30 = NSStringFromSelector([v29 selector]);
          v31 = +[SSLogConfig sharedDaemonConfig];
          if (!v31)
          {
            v31 = +[SSLogConfig sharedConfig];
          }

          shouldLog4 = [v31 shouldLog];
          shouldLogToDisk = [v31 shouldLogToDisk];
          oSLogObject4 = [v31 OSLogObject];
          v35 = oSLogObject4;
          if (shouldLogToDisk)
          {
            shouldLog4 |= 2u;
          }

          if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
          {
            v36 = shouldLog4;
          }

          else
          {
            v36 = shouldLog4 & 2;
          }

          if (v36)
          {
            v37 = objc_opt_class();
            [v29 observer];
            v38 = objc_opt_class();
            v39 = NSStringFromClass(v38);
            v76 = 138544130;
            v77 = v37;
            v78 = 2114;
            v79 = v69;
            v80 = 2112;
            v81 = v39;
            v82 = 2112;
            v83 = v30;
            LODWORD(v65) = 42;
            v40 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &dword_1D48BA000, v35, 0, "%{public}@: Received connection from: %{public}@ message: [%@ %@]", &v76, v65);
            if (v40)
            {
              v41 = v40;
              v42 = [MEMORY[0x1E696AEC0] stringWithCString:v40 encoding:4];
              free(v41);
              SSFileLog(v31, @"%@", v43, v44, v45, v46, v47, v48, v42);
            }
          }

          [objc_msgSend(v29 "observer")];
          [(SSXPCServer *)self _recordCoreAnalyticsEventForClient:v69 andSelector:v30];
        }

        v26 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
      }

      while (v26);
    }

    _Block_object_dispose(v85, 8);
  }
}

void __43__SSXPCServer__dispatchMessage_connection___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{xpc_dictionary_get_int64(*(a1 + 32), "0")}];
  *(*(*(a1 + 48) + 8) + 40) = [objc_msgSend(*(*(a1 + 40) + 40) objectForKey:{v2), "copy"}];
}

- (void)_recordCoreAnalyticsEventForClient:(id)client andSelector:(id)selector
{
  if (+[SSDevice deviceIsInternalBuild])
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SSXPCServer__recordCoreAnalyticsEventForClient_andSelector___block_invoke;
    block[3] = &unk_1E84AD640;
    block[4] = client;
    block[5] = selector;
    block[6] = self;
    dispatch_sync(dispatchQueue, block);
  }
}

uint64_t __62__SSXPCServer__recordCoreAnalyticsEventForClient_andSelector___block_invoke(void *a1)
{
  if (a1[4])
  {
    v2 = a1[4];
  }

  else
  {
    v2 = @"No Client";
  }

  if (a1[5])
  {
    v3 = a1[5];
  }

  else
  {
    v3 = @"No Selector";
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v2, v3];
  result = [*(a1[6] + 56) containsObject:v4];
  if ((result & 1) == 0)
  {
    [*(a1[6] + 56) addObject:v4];
    return AnalyticsSendEventLazy();
  }

  return result;
}

uint64_t __62__SSXPCServer__recordCoreAnalyticsEventForClient_andSelector___block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = @"Client";
  v2[1] = @"Selector";
  v3 = *(a1 + 32);
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v3 forKeys:v2 count:2];
}

@end