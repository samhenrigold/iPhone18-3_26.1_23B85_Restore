@interface SFNetworkExtensionSessionMonitor
- (BOOL)_setUpNESessionForConfigurationID:(id)d neSessionType:(int)type statusChangedCallback:(id)callback;
- (SFNetworkExtensionSessionMonitor)initWithQueue:(id)queue configID:(id)d neSessionType:(int)type statusChangedCallback:(id)callback;
- (void)dealloc;
@end

@implementation SFNetworkExtensionSessionMonitor

- (SFNetworkExtensionSessionMonitor)initWithQueue:(id)queue configID:(id)d neSessionType:(int)type statusChangedCallback:(id)callback
{
  v7 = *&type;
  v32 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  dCopy = d;
  callbackCopy = callback;
  v29.receiver = self;
  v29.super_class = SFNetworkExtensionSessionMonitor;
  v14 = [(SFNetworkExtensionSessionMonitor *)&v29 init];
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = dCopy;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "NEStateRelay: Initializing an NESession, Configuration ID: %@", buf, 0xCu);
  }

  objc_storeStrong(&v14->_configurationID, d);
  objc_storeStrong(&v14->_queue, queue);
  objc_initWeak(buf, v14);
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __95__SFNetworkExtensionSessionMonitor_initWithQueue_configID_neSessionType_statusChangedCallback___block_invoke;
  v26 = &unk_27898F1B8;
  objc_copyWeak(&v28, buf);
  v16 = dCopy;
  v27 = v16;
  v17 = _Block_copy(&v23);
  defaultNEStatusChangedCallback = v14->_defaultNEStatusChangedCallback;
  v14->_defaultNEStatusChangedCallback = v17;

  v19 = callbackCopy;
  if (!callbackCopy)
  {
    v19 = v14->_defaultNEStatusChangedCallback;
  }

  v20 = [(SFNetworkExtensionSessionMonitor *)v14 _setUpNESessionForConfigurationID:v16 neSessionType:v7 statusChangedCallback:v19, v23, v24, v25, v26];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
  if (!v20)
  {
    v21 = 0;
  }

  else
  {
LABEL_7:
    v21 = v14;
  }

  return v21;
}

void __95__SFNetworkExtensionSessionMonitor_initWithQueue_configID_neSessionType_statusChangedCallback___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2 == 2)
  {
    [WeakRetained session];
    ne_session_cancel();
    [v5 session];
    ne_session_release();
    [v5 setSession:0];
  }

  else if (a2 == 1)
  {
    [WeakRetained session];
    v6 = [v5 queue];
    v7 = v5;
    v8 = *(a1 + 32);
    ne_session_get_status();
  }
}

void __95__SFNetworkExtensionSessionMonitor_initWithQueue_configID_neSessionType_statusChangedCallback___block_invoke_2(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        [v3 setConnected:0];
        v13 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        v5 = v13;
        v14 = objc_opt_class();
        v7 = NSStringFromClass(v14);
        v15 = *(a1 + 40);
        v28 = 138412546;
        v29 = v7;
        v30 = 2112;
        v31 = v15;
        v9 = "NEStateRelay: %@ -- NESessionStatusInvalid, Configuration ID: %@";
        goto LABEL_22;
      case 1:
        [v3 setConnected:0];
        v22 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        v5 = v22;
        v23 = objc_opt_class();
        v7 = NSStringFromClass(v23);
        v24 = *(a1 + 40);
        v28 = 138412546;
        v29 = v7;
        v30 = 2112;
        v31 = v24;
        v9 = "NEStateRelay: %@ -- NESessionStatusDisconnected, Configuration ID: %@";
        goto LABEL_22;
      case 2:
        [v3 setConnected:0];
        v4 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        v5 = v4;
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = *(a1 + 40);
        v28 = 138412546;
        v29 = v7;
        v30 = 2112;
        v31 = v8;
        v9 = "NEStateRelay: %@ -- NESessionStatusConnecting, Configuration ID: %@";
        goto LABEL_22;
    }

LABEL_16:
    [v3 setConnected:0];
    v19 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v5 = v19;
    v20 = objc_opt_class();
    v7 = NSStringFromClass(v20);
    v21 = *(a1 + 40);
    v28 = 138412546;
    v29 = v7;
    v30 = 2112;
    v31 = v21;
    v9 = "NEStateRelay: %@ -- Invalid NESessionStatus, Configuration ID: %@";
    goto LABEL_22;
  }

  if (a2 == 5)
  {
    [v3 setConnected:0];
    v16 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v5 = v16;
    v17 = objc_opt_class();
    v7 = NSStringFromClass(v17);
    v18 = *(a1 + 40);
    v28 = 138412546;
    v29 = v7;
    v30 = 2112;
    v31 = v18;
    v9 = "NEStateRelay: %@ -- NESessionStatusDisconnecting, Configuration ID: %@";
    goto LABEL_22;
  }

  if (a2 != 4)
  {
    if (a2 == 3)
    {
      [v3 setConnected:1];
      v10 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v5 = v10;
      v11 = objc_opt_class();
      v7 = NSStringFromClass(v11);
      v12 = *(a1 + 40);
      v28 = 138412546;
      v29 = v7;
      v30 = 2112;
      v31 = v12;
      v9 = "NEStateRelay: %@ -- NESessionStatusConnected, Configuration ID: %@";
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  [v3 setConnected:0];
  v25 = otherLogHandle;
  if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    return;
  }

  v5 = v25;
  v26 = objc_opt_class();
  v7 = NSStringFromClass(v26);
  v27 = *(a1 + 40);
  v28 = 138412546;
  v29 = v7;
  v30 = 2112;
  v31 = v27;
  v9 = "NEStateRelay: %@ -- NESessionStatusReasserting, Configuration ID: %@";
LABEL_22:
  _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, v9, &v28, 0x16u);
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    configurationID = self->_configurationID;
    *buf = 138412290;
    v7 = configurationID;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "NEStateRelay: Deallocating the NESession Object for configuration ID: %@", buf, 0xCu);
  }

  ne_session_cancel();
  ne_session_release();
  self->_session = 0;
  v5.receiver = self;
  v5.super_class = SFNetworkExtensionSessionMonitor;
  [(SFNetworkExtensionSessionMonitor *)&v5 dealloc];
}

- (BOOL)_setUpNESessionForConfigurationID:(id)d neSessionType:(int)type statusChangedCallback:(id)callback
{
  v20[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  callbackCopy = callback;
  v20[0] = 0;
  v20[1] = 0;
  [dCopy getUUIDBytes:v20];
  v9 = ne_session_create();
  self->_session = v9;
  if (v9)
  {
    ne_session_set_event_handler();
    v10 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412546;
      v17 = dCopy;
      v18 = 2080;
      v19 = v20;
      v11 = "NEStateRelay: Set Event handler for session: ConfigurationID: %@ config_id: %s";
      v12 = v10;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, v11, &v16, v13);
    }
  }

  else
  {
    v14 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      v11 = "NEStateRelay: Session returned nil!";
      v12 = v14;
      v13 = 2;
      goto LABEL_6;
    }
  }

  return v9 != 0;
}

@end