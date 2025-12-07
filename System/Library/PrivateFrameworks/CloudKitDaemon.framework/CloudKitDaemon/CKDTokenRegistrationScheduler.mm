@interface CKDTokenRegistrationScheduler
- (CKDLogicalDeviceContext)deviceContext;
- (CKDTokenRegistrationScheduler)initWithDeviceContext:(id)context;
- (void)_handlePushToken:(id)token forContainer:(id)container completionBlock:(id)block;
- (void)_refreshApsToken:(id)token container:(id)container completionBlock:(id)block;
- (void)_removeApsToken:(id)token appContainerAccountTuple:(id)tuple completionBlock:(id)block;
- (void)dealloc;
- (void)forceTokenRefreshForAllClients;
- (void)handlePublicPushTokenDidUpdate:(id)update;
- (void)refreshAllClientsNow:(BOOL)now completionHandler:(id)handler;
- (void)registerTokenForAdopterContainer:(id)container completionBlock:(id)block;
- (void)registerTokenRefresh;
- (void)unregisterAllTokensForAccountID:(id)d completionHandler:(id)handler;
- (void)unregisterTokenForAppContainerAccountTuple:(id)tuple;
@end

@implementation CKDTokenRegistrationScheduler

- (CKDLogicalDeviceContext)deviceContext
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceContext);

  return WeakRetained;
}

- (CKDTokenRegistrationScheduler)initWithDeviceContext:(id)context
{
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = CKDTokenRegistrationScheduler;
  v5 = [(CKDTokenRegistrationScheduler *)&v29 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_deviceContext, contextCopy);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v11 = objc_msgSend_UTF8String(v8, v9, v10);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    queue = v6->_queue;
    v6->_queue = v13;

    v15 = objc_opt_new();
    callbackBlocks = v6->_callbackBlocks;
    v6->_callbackBlocks = v15;

    v17 = objc_opt_new();
    callbackTimers = v6->_callbackTimers;
    v6->_callbackTimers = v17;

    v21 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v19, v20);
    objc_msgSend_addObserver_selector_name_object_(v21, v22, v6, sel_handlePublicPushTokenDidUpdate_, @"CKDPushConnectionDidReceivePublicTokenNotification", 0);

    v25 = objc_msgSend_testDeviceReference(contextCopy, v23, v24);

    if (v25)
    {
      v26 = objc_opt_new();
      unitTestingPushTokens = v6->_unitTestingPushTokens;
      v6->_unitTestingPushTokens = v26;
    }
  }

  return v6;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  v6.receiver = self;
  v6.super_class = CKDTokenRegistrationScheduler;
  [(CKDTokenRegistrationScheduler *)&v6 dealloc];
}

- (void)registerTokenRefresh
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_unitTestingPushTokens(self, a2, v2);

  if (v4)
  {
    return;
  }

  v58 = objc_msgSend_currentProcess(CKDDaemonProcess, v5, v6);
  if (objc_msgSend_isSystemInstalledBinary(v58, v7, v8))
  {
    v11 = objc_msgSend_currentProcess(CKDDaemonProcess, v9, v10);
    v14 = objc_msgSend_processType(v11, v12, v13);

    if (v14 == 2)
    {
      return;
    }

    if (CKIsRunningInSyncBubble())
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v15 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Running in sync bubble. Ignoring registerTokenRefresh", buf, 2u);
      }

      return;
    }

    objc_initWeak(&location, self);
    v18 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v16, v17);
    v21 = objc_msgSend_queue(self, v19, v20);
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = sub_2253B193C;
    v60[3] = &unk_27854D108;
    objc_copyWeak(&v61, &location);
    objc_msgSend_registerForTaskWithIdentifier_usingQueue_launchHandler_(v18, v22, @"com.apple.cloudkit.tokenregistration", v21, v60);

    v25 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v23, v24);
    v27 = objc_msgSend_taskRequestForIdentifier_(v25, v26, @"com.apple.cloudkit.tokenregistration");
    LODWORD(v21) = v27 == 0;

    if (!v21)
    {
LABEL_26:
      objc_destroyWeak(&v61);
      objc_destroyWeak(&location);
      return;
    }

    v30 = objc_msgSend_deviceContext(self, v28, v29);
    v33 = objc_msgSend_metadataCache(v30, v31, v32);
    v36 = objc_msgSend_globalConfiguration(v33, v34, v35);
    v38 = objc_msgSend_tokenRegisterDays_(v36, v37, 0);

    if (v38 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v38;
    }

    v40 = objc_alloc(MEMORY[0x277CF07D8]);
    v42 = objc_msgSend_initWithIdentifier_(v40, v41, @"com.apple.cloudkit.tokenregistration");
    objc_msgSend_setInterval_(v42, v43, v44, (86400 * v39));
    objc_msgSend_setRequiresNetworkConnectivity_(v42, v45, 1);
    v48 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v46, v47);
    v59 = 0;
    v50 = objc_msgSend_submitTaskRequest_error_(v48, v49, v42, &v59);
    v51 = v59;

    v52 = *MEMORY[0x277CBC878];
    if (v50)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v52);
      }

      v53 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 138412290;
      v64 = v51;
      v54 = "Failed to register operation info cache eviction task with error: %@";
      v55 = v53;
      v56 = 12;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v52);
      }

      v57 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v54 = "Registered operation info cache eviction task";
      v55 = v57;
      v56 = 2;
    }

    _os_log_error_impl(&dword_22506F000, v55, OS_LOG_TYPE_ERROR, v54, buf, v56);
LABEL_25:

    goto LABEL_26;
  }
}

- (void)_refreshApsToken:(id)token container:(id)container completionBlock:(id)block
{
  v52 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  containerCopy = container;
  blockCopy = block;
  if (!tokenCopy)
  {
    v38 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v39, a2, self, @"CKDTokenRegistrationScheduler.m", 189, @"token must not be nil");
  }

  v14 = objc_msgSend_unitTestingPushTokens(self, v11, v12);

  v15 = *MEMORY[0x277CBC878];
  v16 = MEMORY[0x277CBC830];
  if (v14)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v17 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
    {
      v20 = v17;
      v23 = objc_msgSend_account(containerCopy, v21, v22);
      v26 = objc_msgSend_accountID(v23, v24, v25);
      *buf = 138543874;
      v47 = tokenCopy;
      v48 = 2112;
      v49 = containerCopy;
      v50 = 2112;
      v51 = v26;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Refreshing token %{public}@ for container %@ using unit test account ID %@", buf, 0x20u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v27 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v47 = tokenCopy;
      v48 = 2112;
      v49 = containerCopy;
      _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Refreshing token %@ for container %@", buf, 0x16u);
    }
  }

  v28 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v18, v19);
  objc_msgSend_setQualityOfService_(v28, v29, 17);
  v30 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v30, v31, v28);
  v32 = [CKDTokenRegistrationSchedulerRegisterOperation alloc];
  v34 = objc_msgSend_initWithOperationInfo_container_apsToken_(v32, v33, v30, containerCopy, tokenCopy);
  objc_initWeak(buf, v34);
  v40 = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = sub_2253B1D50;
  v43 = &unk_278547F28;
  v35 = blockCopy;
  v44 = v35;
  objc_copyWeak(&v45, buf);
  objc_msgSend_setCompletionBlock_(v34, v36, &v40);
  objc_msgSend_addOperation_(containerCopy, v37, v34, v40, v41, v42, v43);
  objc_destroyWeak(&v45);

  objc_destroyWeak(buf);
}

- (void)_removeApsToken:(id)token appContainerAccountTuple:(id)tuple completionBlock:(id)block
{
  v49 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  tupleCopy = tuple;
  blockCopy = block;
  if (!tokenCopy)
  {
    v36 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v36, v37, a2, self, @"CKDTokenRegistrationScheduler.m", 212, @"token must not be nil");
  }

  v14 = objc_msgSend_deviceContext(self, v11, v12);
  v17 = objc_msgSend_sharedInternalUseContainers(CKDContainer, v15, v16);
  v19 = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v18, tupleCopy, v14, v17);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v20 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v32 = v20;
    v35 = objc_msgSend_applicationBundleIdentifierForPush(v19, v33, v34);
    *location = 138412802;
    *&location[4] = tokenCopy;
    v45 = 2112;
    v46 = tupleCopy;
    v47 = 2114;
    v48 = v35;
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Removing token %@ for container %@ push bundle identifier %{public}@", location, 0x20u);
  }

  v23 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v21, v22);
  v24 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v24, v25, v23);
  v26 = [CKDTokenRegistrationSchedulerUnregisterOperation alloc];
  v28 = objc_msgSend_initWithOperationInfo_container_apsToken_(v26, v27, v24, v19, tokenCopy);
  objc_initWeak(location, v28);
  v38 = MEMORY[0x277D85DD0];
  v39 = 3221225472;
  v40 = sub_2253B20BC;
  v41 = &unk_278547F28;
  v29 = blockCopy;
  v42 = v29;
  objc_copyWeak(&v43, location);
  objc_msgSend_setCompletionBlock_(v28, v30, &v38);
  objc_msgSend_addOperation_(v19, v31, v28, v38, v39, v40, v41);
  objc_destroyWeak(&v43);

  objc_destroyWeak(location);
}

- (void)refreshAllClientsNow:(BOOL)now completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = objc_msgSend_unitTestingPushTokens(self, v7, v8);

  if (!v9)
  {
    v10 = CKIsRunningInSyncBubble();
    v11 = *MEMORY[0x277CBC878];
    if (!v10)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v11);
      }

      v13 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Refreshing all client push tokens", buf, 2u);
      }

      v16 = objc_msgSend_date(MEMORY[0x277CBEAA8], v14, v15);
      v17 = dispatch_group_create();
      v20 = objc_msgSend_deviceContext(self, v18, v19);
      v23 = objc_msgSend_metadataCache(v20, v21, v22);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_2253B23EC;
      v36[3] = &unk_27854D158;
      v37 = v17;
      selfCopy = self;
      v24 = v20;
      v39 = v24;
      nowCopy = now;
      v25 = v17;
      objc_msgSend_enumerateKnownAppContainerAccountTuplesUsingBlock_(v23, v26, v36);

      v29 = objc_msgSend_queue(self, v27, v28);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2253B2B58;
      block[3] = &unk_278546C30;
      v33 = v24;
      v34 = v16;
      v35 = handlerCopy;
      v30 = v16;
      v31 = v24;
      dispatch_group_notify(v25, v29, block);

      goto LABEL_13;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v11);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Ignoring refresh of all clients", buf, 2u);
      if (!handlerCopy)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  if (handlerCopy)
  {
LABEL_7:
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_13:
}

- (void)_handlePushToken:(id)token forContainer:(id)container completionBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  containerCopy = container;
  blockCopy = block;
  v11 = _os_activity_create(&dword_22506F000, "tokenRegistrationScheduler/handlePushTokenDidUpdate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  v14 = objc_msgSend_appContainerTuple(containerCopy, v12, v13);
  v17 = objc_msgSend_appContainerAccountTuple(containerCopy, v15, v16);
  v44 = v11;
  v18 = [CKDPushToken alloc];
  v21 = objc_msgSend_apsEnvironmentString(containerCopy, v19, v20);
  v23 = objc_msgSend_initWithAPSEnvironmentString_apsToken_(v18, v22, v21, tokenCopy);
  v46 = tokenCopy;

  v47 = objc_msgSend_applicationBundleIdentifierForPush(containerCopy, v24, v25);
  v28 = objc_msgSend_deviceContext(self, v26, v27);
  v31 = objc_msgSend_metadataCache(v28, v29, v30);
  v33 = objc_msgSend_appContainerAccountMetadataForAppContainerAccountTuple_(v31, v32, v17);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v34 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v57 = tokenCopy;
    v58 = 2112;
    v59 = v14;
    v60 = 2114;
    v61 = v47;
    _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Handling token %@ for container tuple %@, push bundle identifier %{public}@", buf, 0x20u);
  }

  v37 = objc_msgSend_queue(self, v35, v36, v44);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253B2F4C;
  block[3] = &unk_27854D1A8;
  block[4] = self;
  v49 = v17;
  v50 = v14;
  v51 = v23;
  v53 = containerCopy;
  v54 = blockCopy;
  v52 = v33;
  v38 = containerCopy;
  v39 = blockCopy;
  v40 = v33;
  v41 = v23;
  v42 = v14;
  v43 = v17;
  dispatch_async(v37, block);

  os_activity_scope_leave(&state);
}

- (void)unregisterTokenForAppContainerAccountTuple:(id)tuple
{
  v34 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  v7 = objc_msgSend_unitTestingPushTokens(self, v5, v6);

  if (!v7)
  {
    if (CKIsRunningInSyncBubble())
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v10 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = tupleCopy;
        _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Running in sync bubble. Ignoring unregister for container %@", buf, 0xCu);
      }
    }

    else
    {
      v11 = objc_msgSend_deviceContext(self, v8, v9);
      v14 = objc_msgSend_sharedInternalUseContainers(CKDContainer, v12, v13);
      v16 = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v15, tupleCopy, v11, v14);

      v19 = objc_msgSend_sharedClient(CKDPDSClient, v17, v18);
      v29 = 0;
      v21 = objc_msgSend_unregisterTokenForContainer_outError_(v19, v20, v16, &v29);
      v22 = v29;

      if ((v21 & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v25 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v31 = tupleCopy;
          v32 = 2112;
          v33 = v22;
          _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Failed to unregister with PDS, but continuing with CKDeviceService unregistration for %@: %@", buf, 0x16u);
        }
      }

      v26 = objc_msgSend_queue(self, v23, v24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2253B3A34;
      block[3] = &unk_278545898;
      block[4] = self;
      v28 = tupleCopy;
      dispatch_async(v26, block);
    }
  }
}

- (void)unregisterAllTokensForAccountID:(id)d completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v10 = objc_msgSend_unitTestingPushTokens(self, v8, v9);

  if (v10)
  {
    if (!handlerCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (CKIsRunningInSyncBubble())
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Running in sync bubble. Ignoring unregister", buf, 2u);
    }

LABEL_9:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_16;
  }

  v14 = objc_msgSend_sharedClient(CKDPDSClient, v11, v12);
  v25 = 0;
  v16 = objc_msgSend_unregisterAllTokensForAccountID_outError_(v14, v15, dCopy, &v25);
  v17 = v25;

  if ((v16 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = dCopy;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Failed to unregister with PDS, but continuing with CKDeviceService unregistration for %@", buf, 0xCu);
    }
  }

  v21 = objc_msgSend_queue(self, v18, v19);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2253B3F5C;
  v22[3] = &unk_278546C30;
  v22[4] = self;
  v23 = dCopy;
  v24 = handlerCopy;
  dispatch_async(v21, v22);

LABEL_16:
}

- (void)forceTokenRefreshForAllClients
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_INFO, "Refreshing all push tokens", v5, 2u);
  }

  objc_msgSend_refreshAllClientsNow_completionHandler_(self, v4, 1, 0);
}

- (void)handlePublicPushTokenDidUpdate:(id)update
{
  updateCopy = update;
  v7 = objc_msgSend_currentProcess(CKDDaemonProcess, v5, v6);
  if ((objc_msgSend_isSystemInstalledBinary(v7, v8, v9) & 1) == 0)
  {
    goto LABEL_4;
  }

  v12 = objc_msgSend_currentProcess(CKDDaemonProcess, v10, v11);
  v15 = objc_msgSend_processType(v12, v13, v14);

  if (v15 != 2)
  {
    v7 = _os_activity_create(&dword_22506F000, "tokenRegistrationScheduler/handlePublicPushTokenDidUpdate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v17.opaque[0] = 0;
    v17.opaque[1] = 0;
    os_activity_scope_enter(v7, &v17);
    objc_msgSend_refreshAllClientsNow_completionHandler_(self, v16, 0, 0);
    os_activity_scope_leave(&v17);
LABEL_4:
  }
}

- (void)registerTokenForAdopterContainer:(id)container completionBlock:(id)block
{
  v59 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  blockCopy = block;
  v10 = objc_msgSend_deviceContext(self, v8, v9);
  v13 = objc_msgSend_account(containerCopy, v11, v12);
  v16 = objc_msgSend_dsid(v13, v14, v15);

  if (v16)
  {
    v19 = objc_msgSend_metadataCache(v10, v17, v18);
    v22 = objc_msgSend_account(containerCopy, v20, v21);
    v25 = objc_msgSend_accountID(v22, v23, v24);
    objc_msgSend_setCachedDSID_forAccountID_(v19, v26, v16, v25);
  }

  if (CKIsRunningInSyncBubble())
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v46 = v29;
      v49 = objc_msgSend_appContainerTuple(containerCopy, v47, v48);
      *buf = 138412290;
      v58 = v49;
      _os_log_debug_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEBUG, "Running in sync bubble. Ignoring token refresh for tuple %@", buf, 0xCu);
    }

    blockCopy[2](blockCopy, 0);
  }

  else
  {
    v30 = objc_msgSend_appContainerAccountTuple(containerCopy, v27, v28);
    v33 = objc_msgSend_appContainerTuple(containerCopy, v31, v32);
    v36 = objc_msgSend_sharedClient(CKDPDSClient, v34, v35);
    v56 = 0;
    v38 = objc_msgSend_ensureRegistrationForContainer_outError_(v36, v37, containerCopy, &v56);
    v39 = v56;

    if ((v38 & 1) == 0 && v39)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v42 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v33;
        _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "Failed to ensure PDS registration, but continuing with CKDeviceService registration for %@", buf, 0xCu);
      }
    }

    v43 = objc_msgSend_queue(self, v40, v41);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253B49F0;
    block[3] = &unk_27854D270;
    block[4] = self;
    v51 = v30;
    v55 = blockCopy;
    v52 = v33;
    v53 = containerCopy;
    v54 = v10;
    v44 = v33;
    v45 = v30;
    dispatch_async(v43, block);
  }
}

@end