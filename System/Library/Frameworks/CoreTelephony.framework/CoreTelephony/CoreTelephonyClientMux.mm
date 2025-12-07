@interface CoreTelephonyClientMux
- (CoreTelephonyClientMux)init;
- (CoreTelephonyClientMux)initWithEndpoint:(id)endpoint sink:(id)sink systemConfigurationProvider:(id)provider;
- (CoreTelephonyClientMux)initWithSink:(id)sink systemConfigurationProvider:(id)provider;
- (__CTAssertionType)createCTAssertionForConnectionType:(int)type allocator:(__CFAllocator *)allocator proxy:(id)proxy;
- (id).cxx_construct;
- (id)_sendConnectionInterruptedNotification_sync:(dispatch_queue_s *);
- (id)addDelegate:(dispatch_queue_s *) queue:(std::unique_ptr<-[CoreTelephonyClientMux)addDelegate:queue:]::$_1>;
- (id)addDelegate:(id *)delegate queue:;
- (id)dealloc;
- (id)proxyWithErrorHandler_sync:(id)handler_sync;
- (id)proxyWithQueue:(dispatch_queue_s *)queue errorHandler:(id)handler;
- (id)removeDelegate:(dispatch_queue_s *);
- (id)removeDelegate:(id *)delegate;
- (id)sink:(dispatch_queue_s *) handleNotification:(std::unique_ptr<-[CoreTelephonyClientMux)sink:handleNotification:]::$_3>;
- (id)sink:(id *)sink handleNotification:;
- (id)synchronousProxyWithErrorHandler:(id)handler;
- (queue)xpcQueue;
- (uint64_t)_getAssertionTypeId;
- (unint64_t)_getAssertionTypeId;
- (void)_computeNotificationSet_sync:(BOOL)set_sync completion:(id)completion;
- (void)_connect_sync;
- (void)_ensureConnectionSetup_sync:(BOOL)setup_sync;
- (void)_registerForNotifications_sync:(id)notifications_sync shouldForce:(BOOL)force completion:(id)completion;
- (void)_sendConnectionInterruptedNotification_sync:(id)notification_sync;
- (void)addDelegate:(id)delegate queue:(dispatch_queue_s *)queue;
- (void)dealloc;
- (void)registerBlockForInvalidationNotification:(__CTAssertionType *)notification callbackQueue:(dispatch_queue_s *)queue callback:(id)callback;
- (void)removeAssertionForInvalidationNotification:(__CTAssertionType *)notification;
- (void)removeDelegate:(id)delegate;
- (void)setXpcQueue:(queue)queue;
- (void)sink:(id)sink handleNotification:(id)notification;
@end

@implementation CoreTelephonyClientMux

- (CoreTelephonyClientMux)init
{
  v3 = [MuxNotificationSink alloc];
  v4 = objc_opt_new();
  v5 = [(CoreTelephonyClientMux *)self initWithSink:v3 systemConfigurationProvider:v4];

  return v5;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 7) = 0;
  *(self + 6) = 0;
  *(self + 5) = self + 48;
  *(self + 11) = 0;
  return self;
}

- (void)_connect_sync
{
  v3 = *(self + 12);
  v4 = objc_alloc(MEMORY[0x1E696B0B8]);
  if (v3)
  {
    v5 = [v4 initWithListenerEndpoint:*(self + 12)];
  }

  else
  {
    v5 = [v4 initWithMachServiceName:@"com.apple.commcenter.coretelephony.xpc" options:4096];
  }

  v6 = *(self + 10);
  *(self + 10) = v5;

  if (!WeakRetained)
  {
    if (!WeakRetained)
    {
      WeakRetained = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF0671B8];
    }
  }

  v8 = WeakRetained;

  [*(self + 10) setExportedInterface:v8];
  [*(self + 10) setExportedObject:*(self + 13)];
  if (!v9)
  {
    if (!v9)
    {
      v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF070E90];
    }
  }

  v10 = v9;

  [*(self + 10) setRemoteObjectInterface:v10];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v11 setWithObjects:{v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
  remoteObjectInterface = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface setClasses:v18 forSelector:sel_copyCarrierBundleValue_key_bundleType_completion_ argumentIndex:0 ofReply:1];

  remoteObjectInterface2 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface2 setClasses:v18 forSelector:sel_copyCarrierBundleValue_keyHierarchy_bundleType_completion_ argumentIndex:1 ofReply:0];

  remoteObjectInterface3 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface3 setClasses:v18 forSelector:sel_copyCarrierBundleValue_keyHierarchy_bundleType_completion_ argumentIndex:0 ofReply:1];

  remoteObjectInterface4 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface4 setClasses:v18 forSelector:sel_copyCarrierBundleValueWithDefault_key_bundleType_completion_ argumentIndex:0 ofReply:1];

  remoteObjectInterface5 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface5 setClasses:v18 forSelector:sel_copyCarrierBundleValueWithDefault_keyHierarchy_bundleType_completion_ argumentIndex:1 ofReply:0];

  remoteObjectInterface6 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface6 setClasses:v18 forSelector:sel_copyCarrierBundleValueWithDefault_keyHierarchy_bundleType_completion_ argumentIndex:0 ofReply:1];

  remoteObjectInterface7 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface7 setClasses:v18 forSelector:sel_copyCarrierBundleValueWithCountryBundleLookup_keyHierarchy_matchingInfo_completion_ argumentIndex:1 ofReply:0];

  remoteObjectInterface8 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface8 setClasses:v18 forSelector:sel_getWiFiCallingSettingPreferences_key_completion_ argumentIndex:0 ofReply:1];

  remoteObjectInterface9 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface9 setClasses:v18 forSelector:sel_setWiFiCallingSettingPreferences_key_value_completion_ argumentIndex:2 ofReply:0];

  remoteObjectInterface10 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface10 setClasses:v18 forSelector:sel_setPrefForKey_heirarchy_value_storage_completion_ argumentIndex:2 ofReply:0];

  remoteObjectInterface11 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface11 setClasses:v18 forSelector:sel_getPrefForKey_heirarchy_storage_completion_ argumentIndex:0 ofReply:1];

  remoteObjectInterface12 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface12 setClasses:v18 forSelector:sel_getRadioPersonality_completion_ argumentIndex:0 ofReply:1];

  remoteObjectInterface13 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface13 setClasses:v18 forSelector:sel_getEOSFirmwareUpdateInfo_ argumentIndex:0 ofReply:1];

  remoteObjectInterface14 = [*(self + 10) remoteObjectInterface];
  [remoteObjectInterface14 setClasses:v18 forSelector:sel_getPNRPriorityRegistrationListWithCompletion_ argumentIndex:0 ofReply:1];

  exportedInterface = [*(self + 10) exportedInterface];
  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  [exportedInterface setClasses:v36 forSelector:sel_launchSimSetupForTransferPlanSelection_completion_ argumentIndex:0 ofReply:0];

  exportedInterface2 = [*(self + 10) exportedInterface];
  v38 = MEMORY[0x1E695DFD8];
  v39 = objc_opt_class();
  v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
  [exportedInterface2 setClasses:v40 forSelector:sel_handleCrossplatformSessionResponse_completion_ argumentIndex:0 ofReply:0];

  objc_initWeak(location, self);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __39__CoreTelephonyClientMux__connect_sync__block_invoke;
  v48[3] = &unk_1E6A472E8;
  objc_copyWeak(&v49, location);
  [*(self + 10) setInvalidationHandler:v48];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __39__CoreTelephonyClientMux__connect_sync__block_invoke_435;
  v46[3] = &unk_1E6A472E8;
  objc_copyWeak(&v47, location);
  [*(self + 10) setInterruptionHandler:v46];
  v41 = [*(self + 10) _setQueue:*(self + 11)];
  v43 = isFrameworkLoggingSupported(v41, v42);
  if (v43)
  {
    v45 = CTLogClient(v43, v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      [(CoreTelephonyClientMux *)self + 11 _connect_sync];
    }
  }

  [*(self + 10) resume];
  objc_destroyWeak(&v47);
  objc_destroyWeak(&v49);
  objc_destroyWeak(location);
}

- (void)dealloc
{
  v3 = *(self + 8);
  *(self + 8) = 0;

  v6 = *(self + 10);
  if (v6)
  {
    v7 = v6;
    v8 = *(self + 10);
    *(self + 10) = 0;

    v9 = v7;
    operator new();
  }

  v10 = isFrameworkLoggingSupported(v4, v5);
  if (v10)
  {
    v12 = CTLogClient(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CoreTelephonyClientMux dealloc];
    }
  }

  v13.receiver = self;
  v13.super_class = CoreTelephonyClientMux;
  [(CoreTelephonyClientMux *)&v13 dealloc];
}

void __39__CoreTelephonyClientMux__connect_sync__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 8) handleDisconnection];
    v3 = [v2 _setReconnectError_sync:0];
    v5 = isFrameworkLoggingSupported(v3, v4);
    if (v5)
    {
      v7 = CTLogClient(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_182E9B000, v7, OS_LOG_TYPE_DEFAULT, "Connection has been invalidated", v9, 2u);
      }
    }

    v8 = v2[10];
    v2[10] = 0;
  }
}

- (CoreTelephonyClientMux)initWithSink:(id)sink systemConfigurationProvider:(id)provider
{
  sinkCopy = sink;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = CoreTelephonyClientMux;
  v9 = [(CoreTelephonyClientMux *)&v19 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.CoreTelephonyClientMux.xpc.%p", v9];
    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_DEFAULT, 0);
    v14 = dispatch_queue_create(uTF8String, v13);
    v15 = *(v9 + 11);
    *(v9 + 11) = v14;
    if (v15)
    {
      dispatch_release(v15);
    }

    objc_storeStrong(v9 + 13, sink);
    [*(v9 + 13) setDelegate:v9];
    v16 = objc_opt_new();
    v17 = *(v9 + 8);
    *(v9 + 8) = v16;

    objc_storeStrong(v9 + 9, provider);
    [v9 _initializeConnection_sync];
  }

  return v9;
}

- (CoreTelephonyClientMux)initWithEndpoint:(id)endpoint sink:(id)sink systemConfigurationProvider:(id)provider
{
  objc_storeStrong(self + 12, endpoint);
  providerCopy = provider;
  sinkCopy = sink;
  v10 = [(CoreTelephonyClientMux *)self initWithSink:sinkCopy systemConfigurationProvider:providerCopy];

  return v10;
}

- (void)addDelegate:(id)delegate queue:(dispatch_queue_s *)queue
{
  delegateCopy = delegate;
  isCommCenterSupported = [*(self + 9) isCommCenterSupported];
  if (isCommCenterSupported)
  {
    selfCopy = self;
    v9 = delegateCopy;
    operator new();
  }

  v10 = isFrameworkLoggingSupported(isCommCenterSupported, v7);
  if (v10)
  {
    v12 = CTLogClient(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CoreTelephonyClientMux addDelegate:queue:];
    }
  }
}

- (void)removeDelegate:(id)delegate
{
  isCommCenterSupported = [*(self + 9) isCommCenterSupported];
  if (isCommCenterSupported)
  {
    selfCopy = self;
    operator new();
  }

  v7 = isFrameworkLoggingSupported(isCommCenterSupported, v5);
  if (v7)
  {
    v9 = CTLogClient(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CoreTelephonyClientMux removeDelegate:];
    }
  }
}

- (void)sink:(id)sink handleNotification:(id)notification
{
  sinkCopy = sink;
  notificationCopy = notification;
  [*(self + 8) handleNotification:notificationCopy];
  v8 = NSStringFromSelector([notificationCopy selector]);
  v11 = *(self + 1);
  v9 = (self + 8);
  v10 = v11;
  if (v11 != v9 + 1)
  {
    do
    {
      WeakRetained = objc_loadWeakRetained(v10 + 6);
      if (WeakRetained)
      {
        v14 = v10[1];
        v15 = v10;
        if (v14)
        {
          do
          {
            v16 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v16 = v15[2];
            v17 = *v16 == v15;
            v15 = v16;
          }

          while (!v17);
        }

        if ([v10[7] containsObject:v8])
          v19 = {;
          [v19 retainArguments];
          v20 = WeakRetained;
          v21 = v19;
          operator new();
        }
      }

      else
      {
        v22 = CTLogClient(0, v12);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [(CoreTelephonyClientMux *)&buf sink:v24 handleNotification:v22];
        }
      }

      v10 = v16;
    }

    while (v16 != (v9 + 1));
  }
}

- (id)proxyWithQueue:(dispatch_queue_s *)queue errorHandler:(id)handler
{
  selfCopy = self;
  queueCopy = queue;
  handlerCopy = handler;
  v15 = handlerCopy;
  if ([*(self + 9) isCommCenterSupported])
  {
    v11[0] = &selfCopy;
    v11[1] = &v12;
    v11[2] = &queueCopy;
    v11[3] = &v15;
    v12 = 0;
    v7 = *(self + 11);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN8dispatch9sync_implIZ54__CoreTelephonyClientMux_proxyWithQueue_errorHandler__E3__4EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v11;
    dispatch_sync(v7, block);
    v8 = v12;

    v9 = v15;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54__CoreTelephonyClientMux_proxyWithQueue_errorHandler___block_invoke;
    v13[3] = &unk_1E6A43D10;
    v9 = handlerCopy;
    v14 = v9;
    dispatch_async(queue, v13);

    v8 = 0;
  }

  return v8;
}

void __54__CoreTelephonyClientMux_proxyWithQueue_errorHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
  (*(v1 + 16))(v1);
}

- (id)synchronousProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if ([*(self + 9) isCommCenterSupported])
  {
    v11 = 0;
    v9[0] = self;
    v9[1] = &v11;
    v10 = _Block_copy(handlerCopy);
    v5 = *(self + 11);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN8dispatch9sync_implIZ59__CoreTelephonyClientMux_synchronousProxyWithErrorHandler__E3__5EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v9;
    dispatch_sync(v5, block);

    v6 = v11;
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v7);

    v6 = 0;
  }

  return v6;
}

- (id)proxyWithErrorHandler_sync:(id)handler_sync
{
  handler_syncCopy = handler_sync;
  [(CoreTelephonyClientMux *)self _setReconnectError_sync:0];
  [(CoreTelephonyClientMux *)self _ensureConnectionSetup_sync];
  v5 = [*(self + 10) remoteObjectProxyWithErrorHandler:handler_syncCopy];

  return v5;
}

void __60__CoreTelephonyClientMux__computeNotificationSetForced_sync__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    v5 = isFrameworkLoggingSupported(v2, v3);
    if (v5)
    {
      v7 = CTLogClient(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __60__CoreTelephonyClientMux__computeNotificationSetForced_sync__block_invoke_cold_1();
      }
    }
  }
}

- (void)_computeNotificationSet_sync:(BOOL)set_sync completion:(id)completion
{
  set_syncCopy = set_sync;
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (*(self + 3))
  {
    v24 = set_syncCopy;
    v7 = objc_opt_new();
    v9 = v7;
    v10 = *(self + 1);
    if (v10 != (self + 16))
    {
      do
      {
        *&buf[16] = 0;
        v31 = 0;
        v11 = *(v10 + 5);
        *buf = *(v10 + 4);
        *&buf[8] = v11;
        if (v11)
        {
          dispatch_retain(v11);
        }

        objc_copyWeak(&buf[16], v10 + 6);
        v31 = *(v10 + 7);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = v31;
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v13)
        {
          v14 = *v26;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(v12);
              }

              [v9 addObject:*(*(&v25 + 1) + 8 * i)];
            }

            v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v13);
        }

        objc_destroyWeak(&buf[16]);
        v7 = *&buf[8];
        if (*&buf[8])
        {
          dispatch_release(*&buf[8]);
        }

        v16 = *(v10 + 1);
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = *(v10 + 2);
            v18 = *v17 == v10;
            v10 = v17;
          }

          while (!v18);
        }

        v10 = v17;
      }

      while (v17 != (self + 16));
    }

    v19 = isFrameworkLoggingSupported(v7, v8);
    if (v19)
    {
      v21 = CTLogClient(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v9 count];
        v23 = *(self + 3);
        *buf = 134218240;
        *&buf[4] = v22;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_impl(&dword_182E9B000, v21, OS_LOG_TYPE_INFO, "Found %lu implemented methods in %zu delegates", buf, 0x16u);
      }
    }

    [(CoreTelephonyClientMux *)self _registerForNotifications_sync:v9 shouldForce:v24 completion:completionCopy];
  }

  else
  {
    [(CoreTelephonyClientMux *)self _registerForNotifications_sync:0 shouldForce:set_syncCopy completion:completionCopy];
  }
}

- (void)_registerForNotifications_sync:(id)notifications_sync shouldForce:(BOOL)force completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  notifications_syncCopy = notifications_sync;
  completionCopy = completion;
  if (force || (v11 = [*(self + 4) isEqualToSet:notifications_syncCopy], !v11))
  {
    v16 = [(CoreTelephonyClientMux *)self proxyWithErrorHandler_sync:completionCopy];
    allObjects = [notifications_syncCopy count];
    if (allObjects)
    {
      allObjects = [notifications_syncCopy allObjects];
      v19 = allObjects;
    }

    else
    {
      v19 = 0;
    }

    v20 = isFrameworkLoggingSupported(allObjects, v18);
    if (v20)
    {
      v22 = CTLogClient(v20, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v19;
        _os_log_impl(&dword_182E9B000, v22, OS_LOG_TYPE_DEFAULT, "Sending selectors to server: %@", &v23, 0xCu);
      }
    }

    [v16 registerForNotifications:v19 completion:completionCopy];
    objc_storeStrong(self + 4, notifications_sync);
  }

  else
  {
    v13 = isFrameworkLoggingSupported(v11, v12);
    if (v13)
    {
      v15 = CTLogClient(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [CoreTelephonyClientMux _registerForNotifications_sync:shouldForce:completion:];
      }
    }
  }
}

void __39__CoreTelephonyClientMux__connect_sync__block_invoke_435(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [*(WeakRetained + 8) handleDisconnection];
    if (v2[14])
    {
      v5 = CTLogClient(v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_182E9B000, v5, OS_LOG_TYPE_DEFAULT, "Reconnection was already attempted", buf, 2u);
      }
    }

    else
    {
      v6 = CTLogClient(v3, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_182E9B000, v6, OS_LOG_TYPE_DEFAULT, "Connection interrupted. Attempting to reestablish connection", buf, 2u);
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __39__CoreTelephonyClientMux__connect_sync__block_invoke_436;
      v7[3] = &unk_1E6A47310;
      v8 = v2;
      [v8 _computeNotificationSetForced_sync:v7];
    }
  }
}

void __39__CoreTelephonyClientMux__connect_sync__block_invoke_436(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _setReconnectError_sync:v3];
  v4 = [*(a1 + 32) _sendConnectionInterruptedNotification_sync:v3];
  if (v3)
  {
    v6 = CTLogClient(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __39__CoreTelephonyClientMux__connect_sync__block_invoke_436_cold_1();
    }
  }

  else
  {
    v7 = CTLogClient(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_182E9B000, v7, OS_LOG_TYPE_DEFAULT, "Successfully reestablished connection", v8, 2u);
    }
  }
}

- (void)_ensureConnectionSetup_sync:(BOOL)setup_sync
{
  setup_syncCopy = setup_sync;
  isCommCenterSupported = [*(self + 9) isCommCenterSupported];
  if (isCommCenterSupported)
  {
    if (!*(self + 10))
    {
      [(CoreTelephonyClientMux *)self _connect_sync];
      if (setup_syncCopy)
      {

        [(CoreTelephonyClientMux *)self _computeNotificationSetForced_sync];
      }
    }
  }

  else
  {
    v7 = isFrameworkLoggingSupported(isCommCenterSupported, v6);
    if (v7)
    {
      v9 = CTLogClient(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [CoreTelephonyClientMux _ensureConnectionSetup_sync:];
      }
    }
  }
}

- (void)_sendConnectionInterruptedNotification_sync:(id)notification_sync
{
  v19 = *MEMORY[0x1E69E9840];
  notification_syncCopy = notification_sync;
  v6 = CTLogClient(notification_syncCopy, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v9 = *(self + 7);
    *buf = 134217984;
    *&buf[4] = v9;
    _os_log_impl(&dword_182E9B000, v6, OS_LOG_TYPE_DEFAULT, "_sendConnectionInterruptedNotification_sync, Map size = %lu", buf, 0xCu);
  }

  v10 = *(self + 5);
  if (v10 != (self + 48))
  {
    do
    {
      if (*(v10 + 4))
      {
        v7 = *(v10 + 6);
        if (v7)
        {
          if (*(v10 + 5))
          {
            _Block_copy(v7);
            v11 = notification_syncCopy;
            operator new();
          }
        }
      }

      v12 = CTLogClient(v7, v8);
      v7 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        [(CoreTelephonyClientMux *)&v16 _sendConnectionInterruptedNotification_sync:v17, v12];
      }

      v13 = *(v10 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v10 + 2);
          v15 = *v14 == v10;
          v10 = v14;
        }

        while (!v15);
      }

      v10 = v14;
    }

    while (v14 != (self + 48));
  }
}

- (void)removeAssertionForInvalidationNotification:(__CTAssertionType *)notification
{
  if (notification)
  {
    v9[0] = self;
    v9[1] = notification;
    v5 = *(self + 11);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN8dispatch9sync_implIZ69__CoreTelephonyClientMux_removeAssertionForInvalidationNotification__E3__7EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v9;
    dispatch_sync(v5, block);
  }

  else
  {
    v6 = isFrameworkLoggingSupported(self, a2);
    if (v6)
    {
      v8 = CTLogClient(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CoreTelephonyClientMux removeAssertionForInvalidationNotification:];
      }
    }
  }
}

- (unint64_t)_getAssertionTypeId
{
  if ([CoreTelephonyClientMux _getAssertionTypeId]::_predicate != -1)
  {
    [CoreTelephonyClientMux _getAssertionTypeId];
  }

  return [CoreTelephonyClientMux _getAssertionTypeId]::_CTAssertionConnectionTypeID;
}

- (__CTAssertionType)createCTAssertionForConnectionType:(int)type allocator:(__CFAllocator *)allocator proxy:(id)proxy
{
  proxyCopy = proxy;
  [(CoreTelephonyClientMux *)self _getAssertionTypeId];
  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 32) = 0;
    *(Instance + 24) = 0;
    objc_storeStrong((Instance + 16), proxy);
    v11->var3 = type;
    objc_storeWeak(&v11->var2, self);
  }

  else
  {
    v12 = isFrameworkLoggingSupported(0, v10);
    if (v12)
    {
      v14 = CTLogClient(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CoreTelephonyClientMux createCTAssertionForConnectionType:allocator:proxy:];
      }
    }
  }

  return v11;
}

- (void)registerBlockForInvalidationNotification:(__CTAssertionType *)notification callbackQueue:(dispatch_queue_s *)queue callback:(id)callback
{
  if (notification)
  {
    if (callback)
    {
      v10[0] = self;
      v10[1] = notification;
      v11 = _Block_copy(callback);
      queueCopy = queue;
      v9 = *(self + 11);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN8dispatch9sync_implIZ90__CoreTelephonyClientMux_registerBlockForInvalidationNotification_callbackQueue_callback__E3__9EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v10;
      dispatch_sync(v9, block);
    }
  }
}

- (queue)xpcQueue
{
  v3 = *(self + 11);
  *v2 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v3;
}

- (void)setXpcQueue:(queue)queue
{
  v4 = *queue.fObj.fObj;
  if (*queue.fObj.fObj)
  {
    dispatch_retain(*queue.fObj.fObj);
  }

  v5 = *(self + 11);
  *(self + 11) = v4;
  if (v5)
  {

    dispatch_release(v5);
  }
}

- (uint64_t)_getAssertionTypeId
{
  result = _CFRuntimeRegisterClass();
  [CoreTelephonyClientMux _getAssertionTypeId]::_CTAssertionConnectionTypeID = result;
  return result;
}

- (id)dealloc
{
  selfCopy = self;
  [*self setInvalidationHandler:0];
  [*self setInterruptionHandler:0];
  [*self invalidate];
  return std::unique_ptr<-[CoreTelephonyClientMux dealloc]::$_0>::~unique_ptr[abi:nn200100](&selfCopy);
}

- (id)addDelegate:(id *)delegate queue:
{
  v2 = *delegate;
  *delegate = 0;
  if (v2)
  {

    MEMORY[0x1865E0880](v2, 0xE0C4087BCC992);
  }

  return delegate;
}

- (id)addDelegate:(dispatch_queue_s *) queue:(std::unique_ptr<-[CoreTelephonyClientMux)addDelegate:queue:]::$_1>
{
  v61 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v2 = *(self + 16);
  if (v2)
  {
    dispatch_retain(*(self + 16));
  }

  v49 = 0;
  v50 = 0;
  selfCopy2 = self;
  v3 = *(self + 8);
  object = v2;
  objc_initWeak(&v49, v3);
  v42 = &unk_1EF0671B8;
  v4 = v3;
  v5 = objc_opt_new();
  v59 = &unk_1EF063538;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  std::vector<Protocol * {__strong}>::__init_with_size[abi:nn200100]<Protocol * const {__strong}*,Protocol * const {__strong}>(&v51, &v59, &v60, 1uLL);
  v43 = v42;
  v60 = v43;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  std::vector<Protocol * {__strong}>::__init_with_size[abi:nn200100]<Protocol * const {__strong}*,Protocol * const {__strong}>(&v54, &v60, &v61, 1uLL);

  v6 = v43;
  outCount[0] = 0;
  v45 = v6;
  v7 = protocol_copyProtocolList(v6, outCount);
  if (v7 && outCount[0])
  {
    v8 = 0;
    do
    {
      v9 = v7[v8];
      v57 = v9;
      v10 = v51;
      if (v51 != v52)
      {
        while (*v10 != v9)
        {
          if (++v10 == v52)
          {
            goto LABEL_11;
          }
        }
      }

      if (v10 == v52)
      {
LABEL_11:
        std::vector<Protocol * {__strong}>::push_back[abi:nn200100](&v54, &v57);
        v9 = v57;
      }

      ++v8;
    }

    while (v8 < outCount[0]);
    free(v7);
  }

  v11 = v54;
  v46 = v55;
  if (v54 != v55)
  {
    do
    {
      v12 = *v11;
      for (i = 0; i != 8; i += 2)
      {
        LODWORD(v57) = 0;
        v15 = v14;
        if (v14)
        {
          v16 = v57 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v17 = 0;
          p_name = &v14->name;
          do
          {
            if (objc_opt_respondsToSelector())
            {
              v19 = NSStringFromSelector(*p_name);
              [v5 addObject:v19];
            }

            ++v17;
            p_name += 2;
          }

          while (v17 < v57);
          free(v15);
        }
      }

      ++v11;
    }

    while (v11 != v46);
  }

  *outCount = &v54;
  std::vector<Protocol * {__strong}>::__destroy_vector::operator()[abi:nn200100](outCount);

  v54 = &v51;
  std::vector<Protocol * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v54);

  v50 = v5;
  v20 = *selfCopy2;
  v22 = (*selfCopy2 + 16);
  v21 = *v22;
  if (!*v22)
  {
    v24 = *selfCopy2 + 16;
    if (v20[1] != v22)
    {
      goto LABEL_41;
    }

    v29 = 0;
    v24 = *selfCopy2 + 16;
    v31 = v24;
LABEL_57:
    if (v29)
    {
      v40 = v31 + 1;
    }

    else
    {
      v40 = v24;
    }

    if (*v40)
    {
      goto LABEL_62;
    }

LABEL_61:
    operator new();
  }

  v23 = *(selfCopy2 + 8);
  v24 = *selfCopy2 + 16;
  v25 = *v24;
  do
  {
    v26 = *(v25 + 32);
    v27 = v26 >= v23;
    v28 = v26 < v23;
    if (v27)
    {
      v24 = v25;
    }

    v25 = *(v25 + 8 * v28);
  }

  while (v25);
  if (v24 != v22 && v23 >= *(v24 + 32))
  {
    v35 = object;
    object = 0;
    v36 = *(v24 + 40);
    *(v24 + 40) = v35;
    if (v36)
    {
      dispatch_release(v36);
    }

    v37 = objc_loadWeakRetained(&v49);
    objc_storeWeak((v24 + 48), v37);

    v38 = v50;
    v50 = 0;
    v39 = *(v24 + 56);
    *(v24 + 56) = v38;

    goto LABEL_62;
  }

  v29 = *v24;
  if (v20[1] == v24)
  {
    v31 = v24;
    goto LABEL_57;
  }

  if (v29)
  {
    v30 = *v24;
    do
    {
      v31 = v30;
      v30 = v30[1];
    }

    while (v30);
    goto LABEL_44;
  }

LABEL_41:
  v31 = v24;
  do
  {
    v32 = v31;
    v31 = v31[2];
  }

  while (*v31 == v32);
  v29 = 0;
  v23 = *(selfCopy2 + 8);
LABEL_44:
  if (v31[4] < v23)
  {
    goto LABEL_57;
  }

  if (!v21)
  {
    goto LABEL_61;
  }

  while (1)
  {
    while (1)
    {
      v33 = v21;
      v34 = v21[4];
      if (v23 >= v34)
      {
        break;
      }

      v21 = *v33;
      if (!*v33)
      {
        goto LABEL_61;
      }
    }

    if (v34 >= v23)
    {
      break;
    }

    v21 = v33[1];
    if (!v21)
    {
      goto LABEL_61;
    }
  }

LABEL_62:
  [*selfCopy2 _computeNotificationSet_sync:&__block_literal_global_1021];

  objc_destroyWeak(&v49);
  if (object)
  {
    dispatch_release(object);
  }

  return std::unique_ptr<-[CoreTelephonyClientMux addDelegate:queue:]::$_1>::~unique_ptr[abi:nn200100](&selfCopy);
}

- (id)removeDelegate:(id *)delegate
{
  v2 = *delegate;
  *delegate = 0;
  if (v2)
  {

    MEMORY[0x1865E0880](v2, 0xC0C402DE288CCLL);
  }

  return delegate;
}

- (id)removeDelegate:(dispatch_queue_s *)
{
  selfCopy = self;
  selfCopy2 = self;
  v3 = *(self + 8);
  v4 = (*self + 16);
  v5 = *v4;
  if (!*v4)
  {
    goto LABEL_16;
  }

  self = *self + 8;
  a2 = v4;
  do
  {
    v6 = v5[4];
    v7 = v6 >= v3;
    v8 = v6 < v3;
    if (v7)
    {
      a2 = v5;
    }

    v5 = v5[v8];
  }

  while (v5);
  if (a2 != v4 && v3 >= a2[4])
  {
  }

  else
  {
LABEL_16:
    if (v3)
    {
      v9 = CTLogClient(self, a2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        dispatch::async<[CoreTelephonyClientMux removeDelegate:]::$_2>(dispatch_queue_s *,std::unique_ptr<[CoreTelephonyClientMux removeDelegate:]::$_2>)::{lambda(void *)#1}::__invoke();
      }
    }
  }

  [*selfCopy _computeNotificationSet_sync:&__block_literal_global_1025];
  return std::unique_ptr<-[CoreTelephonyClientMux removeDelegate:]::$_2>::~unique_ptr[abi:nn200100](&selfCopy2);
}

- (id)sink:(id *)sink handleNotification:
{
  v2 = *sink;
  *sink = 0;
  if (v2)
  {

    MEMORY[0x1865E0880](v2, 0x80C40803F642BLL);
  }

  return sink;
}

- (id)sink:(dispatch_queue_s *) handleNotification:(std::unique_ptr<-[CoreTelephonyClientMux)sink:handleNotification:]::$_3>
{
  selfCopy = self;
  [self[1] invokeWithTarget:*self];
  return std::unique_ptr<-[CoreTelephonyClientMux sink:handleNotification:]::$_3>::~unique_ptr[abi:nn200100](&selfCopy);
}

- (id)_sendConnectionInterruptedNotification_sync:(dispatch_queue_s *)
{
  selfCopy = self;
  if (*self)
  {
    v3 = CTLogClient(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_182E9B000, v3, OS_LOG_TYPE_DEFAULT, "_sendConnectionInterruptedNotification_sync invoke callback", buf, 2u);
    }

    (*(*self + 2))();
  }

  return std::unique_ptr<-[CoreTelephonyClientMux sink:handleNotification:]::$_3>::~unique_ptr[abi:nn200100](&selfCopy);
}

@end