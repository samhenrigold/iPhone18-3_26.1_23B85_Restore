@interface STKUSSDAlertSessionManager
- (STKUSSDAlertSessionManager)initWithSubscriptionMonitor:(id)monitor;
- (id)_supplementaryServicesResponder;
- (id)remoteAlertDescriptorForSession:(id)session;
- (void)_executeOnQueue:(id)queue;
- (void)_queue_handleUSSDEvent:(int64_t)event responder:(id)responder userInfo:(id)info;
- (void)_queue_startListening;
- (void)handleUSSDEvent:(int64_t)event responder:(id)responder userInfo:(id)info;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)suppServicesCompleted:(id)completed;
- (void)suppServicesError:(id)error error:(id)a4;
- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data;
- (void)suppServicesStarted:(id)started;
@end

@implementation STKUSSDAlertSessionManager

- (STKUSSDAlertSessionManager)initWithSubscriptionMonitor:(id)monitor
{
  monitorCopy = monitor;
  v6 = objc_opt_new();
  v7 = STKUSSDLog(v6);
  v25.receiver = self;
  v25.super_class = STKUSSDAlertSessionManager;
  v8 = [(STKAlertSessionManager *)&v25 initWithEventQueue:v6 logger:v7];

  if (v8)
  {
    v9 = BSDispatchQueueCreateWithQualityOfService();
    queue = v8->_queue;
    v8->_queue = v9;

    v11 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v8->_queue];
    telephonyClient = v8->_telephonyClient;
    v8->_telephonyClient = v11;

    objc_storeStrong(&v8->_subscriptionMonitor, monitor);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activeUSSDSessions = v8->_activeUSSDSessions;
    v8->_activeUSSDSessions = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    finishedUSSDSessions = v8->_finishedUSSDSessions;
    v8->_finishedUSSDSessions = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activeSupplementaryServicesSessions = v8->_activeSupplementaryServicesSessions;
    v8->_activeSupplementaryServicesSessions = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    finishedSupplementaryServicesSessions = v8->_finishedSupplementaryServicesSessions;
    v8->_finishedSupplementaryServicesSessions = v19;

    v21 = v8->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__STKUSSDAlertSessionManager_initWithSubscriptionMonitor___block_invoke;
    block[3] = &unk_279B4C428;
    v24 = v8;
    dispatch_sync(v21, block);
  }

  return v8;
}

- (id)remoteAlertDescriptorForSession:(id)session
{
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v5 = [[STKUSSDSessionData alloc] initWithText:0 allowsResponse:0];
    v6 = [STKUSSDSessionAction alloc];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __62__STKUSSDAlertSessionManager_remoteAlertDescriptorForSession___block_invoke;
    v14 = &unk_279B4C478;
    objc_copyWeak(&v17, &location);
    v15 = sessionCopy;
    selfCopy = self;
    v7 = [(STKUSSDSessionAction *)v6 initWithInputData:v5 response:&v11];
    v8 = [_STKRemoteAlertDescriptor alloc];
    v9 = [(_STKRemoteAlertDescriptor *)v8 initWithAction:v7 viewControllerName:@"STKUSSDViewController", v11, v12, v13, v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __62__STKUSSDAlertSessionManager_remoteAlertDescriptorForSession___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[4];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__STKUSSDAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_2;
    block[3] = &unk_279B4C450;
    block[4] = WeakRetained;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v9;
    v13 = v10;
    v14 = v5;
    v15 = a2;
    dispatch_async(v8, block);
  }
}

uint64_t __62__STKUSSDAlertSessionManager_remoteAlertDescriptorForSession___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 56) containsObject:*(a1 + 40)])
  {
    v2 = [*(a1 + 48) log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_262BB4000, v2, OS_LOG_TYPE_DEFAULT, "Sending response for active session - marking it as finished.", v6, 2u);
    }

    [*(*(a1 + 32) + 64) addObject:*(a1 + 40)];
    [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  if (*(a1 + 56))
  {
    return [v3 sendResponse:v4 withStringResult:?];
  }

  else
  {
    return [v3 sendResponse:v4];
  }
}

- (void)handleUSSDEvent:(int64_t)event responder:(id)responder userInfo:(id)info
{
  responderCopy = responder;
  infoCopy = info;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__STKUSSDAlertSessionManager_handleUSSDEvent_responder_userInfo___block_invoke;
  v13[3] = &unk_279B4C4A0;
  v13[4] = self;
  v14 = responderCopy;
  v15 = infoCopy;
  eventCopy = event;
  v11 = infoCopy;
  v12 = responderCopy;
  dispatch_async(queue, v13);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__STKUSSDAlertSessionManager_remoteAlertHandleDidDeactivate___block_invoke;
  v7[3] = &unk_279B4C4C8;
  v7[4] = self;
  v8 = deactivateCopy;
  v6 = deactivateCopy;
  dispatch_async(queue, v7);
}

void __61__STKUSSDAlertSessionManager_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = [v2 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v59;
    *&v4 = 134217984;
    v42 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v59 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v58 + 1) + 8 * i);
        v9 = [v8 alertHandle];
        v10 = *(a1 + 40);

        if (v9 == v10)
        {
          v11 = [*(a1 + 32) log];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v42;
            v66 = v8;
            _os_log_impl(&dword_262BB4000, v11, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleDeactivated - ended active session", buf, 0xCu);
          }

          [v8 invalidate];
          [*(*(a1 + 32) + 56) removeObject:v8];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v5);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v12 = [*(*(a1 + 32) + 64) copy];
  v13 = [v12 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v55;
    *&v14 = 134217984;
    v43 = v14;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v54 + 1) + 8 * j);
        v19 = [v18 alertHandle];
        v20 = *(a1 + 40);

        if (v19 == v20)
        {
          [v18 invalidate];
          v21 = [*(a1 + 32) log];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v43;
            v66 = v18;
            _os_log_impl(&dword_262BB4000, v21, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleDeactivated - Ended finished session", buf, 0xCu);
          }

          [*(*(a1 + 32) + 64) removeObject:v18];
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v15);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v22 = [*(*(a1 + 32) + 80) copy];
  v23 = [v22 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v23)
  {
    v25 = v23;
    v26 = *v51;
    *&v24 = 134217984;
    v44 = v24;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v51 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v50 + 1) + 8 * k);
        v29 = [v28 alertHandle];
        v30 = *(a1 + 40);

        if (v29 == v30)
        {
          [v28 invalidate];
          v31 = [*(a1 + 32) log];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v44;
            v66 = v28;
            _os_log_impl(&dword_262BB4000, v31, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleDeactivated - Ended active supplementary services session", buf, 0xCu);
          }

          [*(*(a1 + 32) + 80) removeObject:v28];
        }
      }

      v25 = [v22 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v25);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v32 = [*(*(a1 + 32) + 88) copy];
  v33 = [v32 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v33)
  {
    v35 = v33;
    v36 = *v47;
    *&v34 = 134217984;
    v45 = v34;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v47 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v46 + 1) + 8 * m);
        v39 = [v38 alertHandle];
        v40 = *(a1 + 40);

        if (v39 == v40)
        {
          [v38 invalidate];
          v41 = [*(a1 + 32) log];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v45;
            v66 = v38;
            _os_log_impl(&dword_262BB4000, v41, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleDeactivated - Ended finished supplementary services session", buf, 0xCu);
          }

          [*(*(a1 + 32) + 88) removeObject:v38];
        }
      }

      v35 = [v32 countByEnumeratingWithState:&v46 objects:v62 count:16];
    }

    while (v35);
  }
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  [handleCopy removeObserver:self];
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__STKUSSDAlertSessionManager_remoteAlertHandle_didInvalidateWithError___block_invoke;
  v8[3] = &unk_279B4C4C8;
  v8[4] = self;
  v9 = handleCopy;
  v7 = handleCopy;
  dispatch_async(queue, v8);
}

void __71__STKUSSDAlertSessionManager_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = [v2 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v65;
    *&v4 = 134217984;
    v48 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v65 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v64 + 1) + 8 * i);
        v9 = [v8 alertHandle];
        v10 = *(a1 + 40);

        if (v9 == v10)
        {
          v11 = [*(a1 + 32) log];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v48;
            v72 = v8;
            _os_log_impl(&dword_262BB4000, v11, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleInvalidated - Ended active session", buf, 0xCu);
          }

          [v8 invalidate];
          [*(*(a1 + 32) + 56) removeObject:v8];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v5);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v12 = [*(*(a1 + 32) + 64) copy];
  v13 = [v12 countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v61;
    *&v14 = 134217984;
    v49 = v14;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v61 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v60 + 1) + 8 * j);
        v19 = [v18 alertHandle];
        v20 = *(a1 + 40);

        if (v19 == v20)
        {
          v21 = [*(a1 + 32) log];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v49;
            v72 = v18;
            _os_log_impl(&dword_262BB4000, v21, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleInvalidated - Ended finished session", buf, 0xCu);
          }

          [v18 invalidate];
          [*(*(a1 + 32) + 64) removeObject:v18];
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v15);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v22 = [*(*(a1 + 32) + 80) copy];
  v23 = [v22 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v23)
  {
    v25 = v23;
    v26 = *v57;
    *&v24 = 134217984;
    v50 = v24;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v57 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v56 + 1) + 8 * k);
        v29 = [v28 alertHandle];
        v30 = *(a1 + 40);

        if (v29 == v30)
        {
          v31 = [*(a1 + 32) log];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v50;
            v72 = v28;
            _os_log_impl(&dword_262BB4000, v31, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleInvalidated - Ended active supplementary services session", buf, 0xCu);
          }

          [v28 invalidate];
          [*(*(a1 + 32) + 80) removeObject:v28];
        }
      }

      v25 = [v22 countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v25);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v32 = [*(*(a1 + 32) + 88) copy];
  v33 = [v32 countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v33)
  {
    v35 = v33;
    v36 = *v53;
    *&v34 = 134217984;
    v51 = v34;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v53 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v52 + 1) + 8 * m);
        v39 = [v38 alertHandle];
        v40 = *(a1 + 40);

        if (v39 == v40)
        {
          v41 = [*(a1 + 32) log];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v51;
            v72 = v38;
            _os_log_impl(&dword_262BB4000, v41, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleInvalidated - Ended finished supplementary services session", buf, 0xCu);
          }

          [v38 invalidate];
          [*(*(a1 + 32) + 88) removeObject:v38];
        }
      }

      v35 = [v32 countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v35);
  }

  v42 = [*(*(a1 + 32) + 72) alertHandle];
  v43 = *(a1 + 40);

  if (v42 == v43)
  {
    v44 = [*(a1 + 32) log];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(*(a1 + 32) + 72);
      *buf = 134217984;
      v72 = v45;
      _os_log_impl(&dword_262BB4000, v44, OS_LOG_TYPE_DEFAULT, "Session <%p> - AlertHandleInvalidated - Ended coalescing session", buf, 0xCu);
    }

    [*(*(a1 + 32) + 72) invalidate];
    v46 = *(a1 + 32);
    v47 = *(v46 + 72);
    *(v46 + 72) = 0;
  }
}

- (void)suppServicesStarted:(id)started
{
  _supplementaryServicesResponder = [(STKUSSDAlertSessionManager *)self _supplementaryServicesResponder];
  [(STKUSSDAlertSessionManager *)self _queue_handleUSSDEvent:6 responder:_supplementaryServicesResponder userInfo:MEMORY[0x277CBEC10]];
}

- (void)suppServicesEvent:(id)event event:(int)a4 settingsType:(int)type data:(id)data
{
  v6 = *&type;
  v7 = *&a4;
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  [v10 setObject:v11 forKey:@"STKUSSDSupplementaryServiceEventTypeKey"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  [v10 setObject:v12 forKey:@"STKUSSDSupplementaryServiceSettingTypeKey"];

  if (dataCopy)
  {
    v13 = [dataCopy copy];
    [v10 setObject:v13 forKey:@"STKUSSDSupplementaryServiceNotificationDataKey"];
  }

  v14 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
  }

  else
  {
    mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
    isInternalInstall = [mEMORY[0x277CF0CA8] isInternalInstall];

    if (!isInternalInstall)
    {
      goto LABEL_9;
    }
  }

  v17 = [(STKAlertSessionManager *)self log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109890;
    v19[1] = v7;
    v20 = 1024;
    v21 = v6;
    v22 = 2112;
    v23 = dataCopy;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_262BB4000, v17, OS_LOG_TYPE_DEFAULT, "RAW: Event received: %d, settingsType: %d, data: %@, userInfo: %@", v19, 0x22u);
  }

LABEL_9:
  _supplementaryServicesResponder = [(STKUSSDAlertSessionManager *)self _supplementaryServicesResponder];
  [(STKUSSDAlertSessionManager *)self _queue_handleUSSDEvent:7 responder:_supplementaryServicesResponder userInfo:v10];
}

- (void)suppServicesCompleted:(id)completed
{
  _supplementaryServicesResponder = [(STKUSSDAlertSessionManager *)self _supplementaryServicesResponder];
  [(STKUSSDAlertSessionManager *)self _queue_handleUSSDEvent:9 responder:_supplementaryServicesResponder userInfo:MEMORY[0x277CBEC10]];
}

- (void)suppServicesError:(id)error error:(id)a4
{
  errorCopy = error;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "code")}];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CC4328]];

    localizedDescription = [v6 localizedDescription];

    if (localizedDescription)
    {
      localizedDescription2 = [v6 localizedDescription];
      [v7 setObject:localizedDescription2 forKeyedSubscript:*MEMORY[0x277CC4338]];
    }
  }

  else
  {
    v7 = 0;
  }

  _supplementaryServicesResponder = [(STKUSSDAlertSessionManager *)self _supplementaryServicesResponder];
  [(STKUSSDAlertSessionManager *)self _queue_handleUSSDEvent:8 responder:_supplementaryServicesResponder userInfo:v7];
}

- (void)_executeOnQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    [(STKUSSDAlertSessionManager *)a2 _executeOnQueue:?];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__STKUSSDAlertSessionManager__executeOnQueue___block_invoke;
  block[3] = &unk_279B4C4F0;
  v9 = queueCopy;
  v7 = queueCopy;
  dispatch_sync(queue, block);
}

- (void)_queue_handleUSSDEvent:(int64_t)event responder:(id)responder userInfo:(id)info
{
  v71 = *MEMORY[0x277D85DE8];
  responderCopy = responder;
  infoCopy = info;
  BSDispatchQueueAssert();
  if (event > 4)
  {
    if (event <= 6)
    {
      if (event == 5)
      {
        lastObject = [(NSMutableArray *)self->_activeUSSDSessions lastObject];
        v25 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v66 = lastObject;
          _os_log_impl(&dword_262BB4000, v25, OS_LOG_TYPE_DEFAULT, "Session <%p> - Terminated Event", buf, 0xCu);
        }

        if (lastObject)
        {
          [(NSMutableArray *)self->_finishedUSSDSessions addObject:lastObject];
          [(NSMutableArray *)self->_activeUSSDSessions removeLastObject];
          [lastObject performUSSDUpdate:&__block_literal_global_43];
        }

        goto LABEL_73;
      }

      v22 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_262BB4000, v22, OS_LOG_TYPE_DEFAULT, "Supplementary Services Begin", buf, 2u);
      }

      v23 = [STKUSSDAlertSession alloc];
      v24 = [(STKAlertSessionManager *)self log];
      lastObject = [(STKUSSDAlertSession *)v23 initWithLogger:v24 responseProvider:responderCopy event:6 options:infoCopy sound:0];

      [(NSMutableArray *)self->_activeSupplementaryServicesSessions addObject:lastObject];
      v21 = &__block_literal_global_46;
      goto LABEL_27;
    }

    switch(event)
    {
      case 7:
        lastObject = [(NSMutableArray *)self->_activeSupplementaryServicesSessions lastObject];
        v37 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v66 = lastObject;
          _os_log_impl(&dword_262BB4000, v37, OS_LOG_TYPE_DEFAULT, "Session <%p> - Supplementary Services Event", buf, 0xCu);
        }

        if (lastObject)
        {
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_47;
          v54[3] = &unk_279B4C5D0;
          v55 = infoCopy;
          [lastObject performUSSDUpdate:v54];
          [lastObject setHasReceivedContent:1];
        }

        goto LABEL_73;
      case 8:
        lastObject = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CC4338]];
        v39 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CC4328]];
        integerValue = [v39 integerValue];

        lastObject2 = [(NSMutableArray *)self->_activeSupplementaryServicesSessions lastObject];
        v41 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v66 = lastObject2;
          v67 = 1024;
          v68 = integerValue;
          v69 = 2112;
          v70 = lastObject;
          _os_log_impl(&dword_262BB4000, v41, OS_LOG_TYPE_DEFAULT, "Session <%p> - Supplementary Services Error, errorCode: %d, error: %@", buf, 0x1Cu);
        }

        if (!lastObject2)
        {
          goto LABEL_51;
        }

        [(NSMutableArray *)self->_finishedSupplementaryServicesSessions addObject:lastObject2];
        [(NSMutableArray *)self->_activeSupplementaryServicesSessions removeLastObject];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_48;
        v51[3] = &unk_279B4C588;
        v53 = integerValue;
        v52 = lastObject;
        [(STKUSSDAlertSession *)lastObject2 performUSSDUpdate:v51];
        [(STKUSSDAlertSession *)lastObject2 setHasReceivedContent:1];
        v15 = v52;
        goto LABEL_50;
      case 9:
        v16 = 80;
        lastObject = [(NSMutableArray *)self->_activeSupplementaryServicesSessions lastObject];
        v17 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v66 = lastObject;
          _os_log_impl(&dword_262BB4000, v17, OS_LOG_TYPE_DEFAULT, "Session <%p> - Supplementary Services End", buf, 0xCu);
        }

        if (!lastObject)
        {
          goto LABEL_73;
        }

        if (([lastObject hasReceivedContent]& 1) != 0)
        {
          [(NSMutableArray *)self->_finishedSupplementaryServicesSessions addObject:lastObject];
          [lastObject performUSSDUpdate:&__block_literal_global_51];
LABEL_53:
          [*(&self->super.super.isa + v16) removeLastObject];
          goto LABEL_73;
        }

LABEL_52:
        [lastObject invalidate];
        goto LABEL_53;
    }
  }

  else
  {
    if (event > 1)
    {
      if (event == 2)
      {
        v26 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CC4348]];
        v27 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CC4340]];
        bOOLValue = [v27 BOOLValue];

        v28 = [infoCopy objectForKeyedSubscript:@"kCallSimSlot"];
        integerValue2 = [v28 integerValue];

        v30 = [(STKCarrierSubscriptionMonitor *)self->_subscriptionMonitor subscriptionInfoForSlot:integerValue2];
        ussdFilter = [v30 ussdFilter];

        lastObject3 = [(NSMutableArray *)self->_activeUSSDSessions lastObject];
        v33 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v49 = ussdFilter;
          mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
          isInternalInstall = [mEMORY[0x277CF0CA8] isInternalInstall];
          if (isInternalInstall)
          {
            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@", string: %@", v26];
          }

          else
          {
            v36 = &stru_287584798;
          }

          *buf = 134218498;
          v66 = lastObject3;
          v67 = 1024;
          v68 = bOOLValue;
          v69 = 2114;
          v70 = v36;
          _os_log_impl(&dword_262BB4000, v33, OS_LOG_TYPE_DEFAULT, "Session <%p> - String Event (should respond? %d%{public}@)", buf, 0x1Cu);
          if (isInternalInstall)
          {
          }

          ussdFilter = v49;
        }

        v64 = 0;
        if (!lastObject3)
        {
          if ((bOOLValue & 1) != 0 || ([ussdFilter shouldFilterString:v26 coalescable:&v64] & 1) == 0)
          {
            v42 = [STKUSSDAlertSession alloc];
            v43 = [(STKAlertSessionManager *)self log];
            lastObject3 = [(STKUSSDAlertSession *)v42 initWithLogger:v43 responseProvider:responderCopy event:2 options:infoCopy sound:0];

            if (v64 == 1)
            {
              v44 = [(STKAlertSessionManager *)self log];
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v66 = lastObject3;
                _os_log_impl(&dword_262BB4000, v44, OS_LOG_TYPE_DEFAULT, "Session <%p> - String should coalesce.", buf, 0xCu);
              }

              if (self->_coalescingUSSDSession)
              {
                [(NSMutableArray *)self->_finishedUSSDSessions addObject:?];
                coalescingUSSDSession = self->_coalescingUSSDSession;
                v62[0] = MEMORY[0x277D85DD0];
                v62[1] = 3221225472;
                v62[2] = __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_34;
                v62[3] = &unk_279B4C538;
                v62[4] = self;
                v63 = lastObject3;
                [(STKUSSDAlertSession *)coalescingUSSDSession performUSSDUpdate:v62];
                [(STKUSSDAlertSession *)self->_coalescingUSSDSession invalidate];
              }

              objc_storeStrong(&self->_coalescingUSSDSession, lastObject3);
            }

            else
            {
              [(NSMutableArray *)self->_activeUSSDSessions addObject:lastObject3];
            }

            [(STKAlertSessionManager *)self enqueuePresentationForSession:lastObject3 completion:&__block_literal_global_38];
          }

          else
          {
            lastObject3 = 0;
          }
        }

        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_2;
        v59[3] = &unk_279B4C560;
        lastObject = v26;
        v60 = lastObject;
        v61 = bOOLValue;
        [(STKUSSDAlertSession *)lastObject3 performUSSDUpdate:v59];
        [(STKUSSDAlertSession *)lastObject3 setHasReceivedContent:1];
        v46 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CC4350]];
        bOOLValue2 = [v46 BOOLValue];

        if ((bOOLValue2 & 1) == 0)
        {
          v48 = [STKSoundFactory soundForSystemSoundID:1050 duration:0.0];
          [(STKAlertSession *)lastObject3 setSound:v48];
          [v48 playSound];
        }

        goto LABEL_73;
      }

      if (event != 3)
      {
        lastObject = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CC4338]];
        v11 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CC4328]];
        integerValue3 = [v11 integerValue];

        lastObject2 = [(NSMutableArray *)self->_activeUSSDSessions lastObject];
        v14 = [(STKAlertSessionManager *)self log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v66 = lastObject2;
          v67 = 1024;
          v68 = integerValue3;
          v69 = 2112;
          v70 = lastObject;
          _os_log_impl(&dword_262BB4000, v14, OS_LOG_TYPE_DEFAULT, "Session <%p> - Error Event, errorCode: %d, error: %@", buf, 0x1Cu);
        }

        if (!lastObject2)
        {
          goto LABEL_51;
        }

        [(NSMutableArray *)self->_finishedUSSDSessions addObject:lastObject2];
        [(NSMutableArray *)self->_activeUSSDSessions removeObject:lastObject2];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_40;
        v56[3] = &unk_279B4C588;
        v58 = integerValue3;
        v57 = lastObject;
        [(STKUSSDAlertSession *)lastObject2 performUSSDUpdate:v56];
        [(STKUSSDAlertSession *)lastObject2 setHasReceivedContent:1];
        v15 = v57;
LABEL_50:

LABEL_51:
        goto LABEL_73;
      }

      v16 = 56;
      lastObject = [(NSMutableArray *)self->_activeUSSDSessions lastObject];
      v38 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v66 = lastObject;
        _os_log_impl(&dword_262BB4000, v38, OS_LOG_TYPE_DEFAULT, "Session <%p> - End Event", buf, 0xCu);
      }

      if (!lastObject)
      {
        goto LABEL_73;
      }

      if (([lastObject hasReceivedContent]& 1) != 0)
      {
        [(NSMutableArray *)self->_finishedUSSDSessions addObject:lastObject];
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    if (!event)
    {
      lastObject = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_262BB4000, lastObject, OS_LOG_TYPE_DEFAULT, "Unknown STKUSSDEvent", buf, 2u);
      }

      goto LABEL_73;
    }

    if (event == 1)
    {
      v18 = [(STKAlertSessionManager *)self log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_262BB4000, v18, OS_LOG_TYPE_DEFAULT, "Event Begin", buf, 2u);
      }

      v19 = [STKUSSDAlertSession alloc];
      v20 = [(STKAlertSessionManager *)self log];
      lastObject = [(STKUSSDAlertSession *)v19 initWithLogger:v20 responseProvider:responderCopy event:1 options:infoCopy sound:0];

      [(NSMutableArray *)self->_activeUSSDSessions addObject:lastObject];
      v21 = &__block_literal_global_0;
LABEL_27:
      [(STKAlertSessionManager *)self enqueuePresentationForSession:lastObject completion:v21];
LABEL_73:
    }
  }
}

void __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_34(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_262BB4000, v5, OS_LOG_TYPE_DEFAULT, "Session <%p> - Dismissing prior coalesced session.", &v7, 0xCu);
  }

  [v4 dismissCoalescingSession];
}

void __72__STKUSSDAlertSessionManager__queue_handleUSSDEvent_responder_userInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 sessionDidReceiveString:v3];
  [v4 sessionWantsResponse:*(a1 + 40)];
}

- (id)_supplementaryServicesResponder
{
  v3 = [_STKUSSDResponseProvider alloc];
  queue = self->_queue;
  telephonyClient = self->_telephonyClient;
  v6 = [(STKAlertSessionManager *)self log];
  v7 = [(_STKUSSDResponseProvider *)v3 initWithQueue:queue telephonyClient:telephonyClient options:MEMORY[0x277CBEC10] logger:v6];

  return v7;
}

- (void)_queue_startListening
{
  BSDispatchQueueAssert();
  if (!self->_serverConnection)
  {
    v3 = _CTServerConnectionCreate();
    self->_serverConnection = v3;
    if (v3)
    {
      _CTServerConnectionSetTargetQueue();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
      _CTServerConnectionRegisterForNotification();
    }
  }

  telephonyClient = self->_telephonyClient;
  if (telephonyClient)
  {
    [(CoreTelephonyClient *)telephonyClient setDelegate:self];
  }
}

- (void)_executeOnQueue:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STKUSSDAlertSessionManager.m" lineNumber:219 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end