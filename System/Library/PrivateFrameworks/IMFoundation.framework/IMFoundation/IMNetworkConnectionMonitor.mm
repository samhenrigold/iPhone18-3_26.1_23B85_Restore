@interface IMNetworkConnectionMonitor
- (BOOL)isImmediatelyReachable;
- (void)_clearReachability:(id *)reachability flags:(unint64_t *)flags;
- (void)_doCallbackLater;
- (void)_doCallbackNow;
- (void)_networkManagedUpdated:(id)updated;
- (void)_setup;
- (void)_setupReachability;
- (void)clear;
- (void)dealloc;
- (void)goConnectedWithLocalSocketAddress:(id)address remoteSocketAddress:(id)socketAddress;
- (void)goDisconnected;
- (void)reachabilityDidChange:(id)change;
- (void)systemDidWake;
- (void)systemWillSleep;
@end

@implementation IMNetworkConnectionMonitor

- (BOOL)isImmediatelyReachable
{
  selfCopy = self;
  v43 = *MEMORY[0x1E69E9840];
  hostFlags = self->_hostFlags;
  ipFlags = self->_ipFlags;
  if ((hostFlags & 2) != 0)
  {
    ipReachability = self->_ipReachability;
    if (ipReachability)
    {
      v5 = (ipFlags >> 1) & 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
    ipReachability = self->_ipReachability;
  }

  v8 = (self->_hostFlags & 0x24) == 4 || (self->_ipFlags & 0x24) == 4;
  if (ipReachability)
  {
    v9 = OSLogHandleForIDSCategory("IMConnectionMonitor");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = selfCopy->_hostFlags;
      v11 = selfCopy->_ipFlags;
      isSleeping = selfCopy->_isSleeping;
      v29 = 138413826;
      v30 = selfCopy;
      v31 = 1024;
      v32 = v5;
      v33 = 1024;
      v34 = v10;
      v35 = 1024;
      v36 = v11;
      v37 = 1024;
      v38 = isSleeping;
      v39 = 1024;
      v40 = v8;
      v41 = 1024;
      v42 = (ipFlags >> 5) & 1;
      _os_log_impl(&dword_195988000, v9, OS_LOG_TYPE_DEFAULT, "[%@ isImmediatelyReachable] = %d.  Host:0x%06x IP:0x%06x Sleeping:%d ConnectionRequired:%d OnDemand:%d", &v29, 0x30u);
    }
  }

  else
  {
    v9 = OSLogHandleForIDSCategory("IMConnectionMonitor");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v22 = selfCopy->_hostFlags;
      v23 = selfCopy->_isSleeping;
      v29 = 138413570;
      v30 = selfCopy;
      v31 = 1024;
      v32 = v5;
      v33 = 1024;
      v34 = v22;
      v35 = 1024;
      v36 = v23;
      v37 = 1024;
      v38 = v8;
      v39 = 1024;
      v40 = (hostFlags >> 5) & 1;
      _os_log_impl(&dword_195988000, v9, OS_LOG_TYPE_DEFAULT, "[%@ isImmediatelyReachable] = %d.  Host:0x%06x IP:nil Sleeping:%d ConnectionRequired:%d OnDemand:%d", &v29, 0x2Au);
    }
  }

  if (!v5)
  {
    LOBYTE(selfCopy) = 0;
    return selfCopy;
  }

  v15 = selfCopy->_hostFlags;
  if (selfCopy->_ipReachability && (selfCopy->_ipFlags & 0x40000) != 0)
  {
    v24 = objc_msgSend_sharedInstance(IMMobileNetworkManager, v13, v14);
    LODWORD(selfCopy) = objc_msgSend_isDataConnectionActive(v24, v25, v26);

    v20 = OSLogHandleForIDSCategory("IMConnectionMonitor");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v27 = @"NO";
      if (selfCopy)
      {
        v27 = @"YES";
      }

      v29 = 138412290;
      v30 = v27;
      _os_log_impl(&dword_195988000, v20, OS_LOG_TYPE_DEFAULT, "  => We're on WWAN for ip reachability, checking data active: %@", &v29, 0xCu);
    }

    goto LABEL_24;
  }

  hostReachability = selfCopy->_hostReachability;
  LOBYTE(selfCopy) = 1;
  if (hostReachability && (v15 & 0x40000) != 0)
  {
    v17 = objc_msgSend_sharedInstance(IMMobileNetworkManager, v13, v14);
    LODWORD(selfCopy) = objc_msgSend_isDataConnectionActive(v17, v18, v19);

    v20 = OSLogHandleForIDSCategory("IMConnectionMonitor");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = @"NO";
      if (selfCopy)
      {
        v21 = @"YES";
      }

      v29 = 138412290;
      v30 = v21;
      _os_log_impl(&dword_195988000, v20, OS_LOG_TYPE_DEFAULT, "  => We're on WWAN for host reachability, checking data active: %@", &v29, 0xCu);
    }

LABEL_24:
  }

  return selfCopy;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory("IMConnectionMonitor");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "[%@ dealloc]", buf, 0xCu);
  }

  v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
  objc_msgSend_removeObserver_name_object_(v6, v7, self, 0, 0);

  v10 = objc_msgSend_sharedInstance(IMSystemMonitor, v8, v9);
  objc_msgSend__removeEarlyListener_(v10, v11, self);

  objc_msgSend__clearReachability_flags_(self, v12, &self->_ipReachability, &self->_ipFlags);
  objc_msgSend__clearReachability_flags_(self, v13, &self->_hostReachability, &self->_hostFlags);
  v14.receiver = self;
  v14.super_class = IMNetworkConnectionMonitor;
  [(IMNetworkConnectionMonitor *)&v14 dealloc];
}

- (void)_clearReachability:(id *)reachability flags:(unint64_t *)flags
{
  objc_msgSend_setDelegate_(*reachability, a2, 0);
  v6 = *reachability;
  *reachability = 0;

  *flags = 0;
}

- (void)_doCallbackNow
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory("IMConnectionMonitor");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "[%@ _doCallbackNow]", &v10, 0xCu);
  }

  objc_msgSend_cancelPendingExecutions(self->_performCallbackTask, v4, v5);
  v8 = objc_msgSend_delegate(self, v6, v7);
  objc_msgSend_connectionMonitorDidUpdate_(v8, v9, self);
}

- (void)_doCallbackLater
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory("IMConnectionMonitor");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "[%@ _doCallbackLater]", &v7, 0xCu);
  }

  objc_msgSend_cancelPendingExecutions(self->_performCallbackTask, v4, v5);
  objc_msgSend_enqueueExecutionWithTarget_afterDelay_(self->_performCallbackTask, v6, self, 0.001);
}

- (void)_setupReachability
{
  objc_msgSend__clearReachability_flags_(self, a2, &self->_hostReachability, &self->_hostFlags);
  v14 = objc_msgSend_remoteHost(self, v3, v4);
  v7 = objc_msgSend_length(v14, v5, v6);
  v8 = [IMReachability alloc];
  if (v7)
  {
    v10 = objc_msgSend_initWithRemoteHost_delegate_(v8, v9, v14, self);
  }

  else
  {
    v10 = objc_msgSend_initWithLocalSocketAddress_remoteSocketAddress_delegate_(v8, v9, 0, 0, self);
  }

  hostReachability = self->_hostReachability;
  self->_hostReachability = v10;

  self->_isConnected = 1;
  objc_msgSend_goDisconnected(self, v12, v13);
}

- (void)reachabilityDidChange:(id)change
{
  v21 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v7 = objc_msgSend_flags(changeCopy, v5, v6);
  v8 = v7;
  if (self->_hostReachability == changeCopy)
  {
    p_hostFlags = &self->_hostFlags;
    if (self->_hostFlags != v7)
    {
      v10 = OSLogHandleForIDSCategory("IMConnectionMonitor");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *p_hostFlags;
        v15 = 138412802;
        selfCopy2 = self;
        v17 = 1024;
        v18 = v12;
        v19 = 1024;
        v20 = v8;
        _os_log_impl(&dword_195988000, v10, OS_LOG_TYPE_DEFAULT, "[%@ reachabilityDidChange:].  _hostFlags: 0x%06x -> 0x%06x", &v15, 0x18u);
      }

      goto LABEL_10;
    }
  }

  if (self->_ipReachability == changeCopy)
  {
    p_hostFlags = &self->_ipFlags;
    if (self->_ipFlags != v7)
    {
      v10 = OSLogHandleForIDSCategory("IMConnectionMonitor");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *p_hostFlags;
        v15 = 138412802;
        selfCopy2 = self;
        v17 = 1024;
        v18 = v11;
        v19 = 1024;
        v20 = v8;
        _os_log_impl(&dword_195988000, v10, OS_LOG_TYPE_DEFAULT, "[%@ reachabilityDidChange:].  _ipFlags: 0x%06x -> 0x%06x", &v15, 0x18u);
      }

LABEL_10:

      *p_hostFlags = v8;
      objc_msgSend__doCallbackLater(self, v13, v14);
    }
  }
}

- (void)systemWillSleep
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory("IMConnectionMonitor");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isSleeping = self->_isSleeping;
    v7 = 138412546;
    selfCopy = self;
    v9 = 1024;
    v10 = isSleeping;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "[%@ systemWillSleep].  _isSleeping: %d -> 1", &v7, 0x12u);
  }

  if (!self->_isSleeping)
  {
    self->_isSleeping = 1;
    objc_msgSend__doCallbackNow(self, v5, v6);
  }
}

- (void)systemDidWake
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory("IMConnectionMonitor");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isSleeping = self->_isSleeping;
    v7 = 138412546;
    selfCopy = self;
    v9 = 1024;
    v10 = isSleeping;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "[%@ systemDidWake].  _isSleeping: %d -> 0", &v7, 0x12u);
  }

  if (self->_isSleeping)
  {
    self->_isSleeping = 0;
    objc_msgSend__doCallbackLater(self, v5, v6);
  }
}

- (void)_networkManagedUpdated:(id)updated
{
  v10 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v5 = OSLogHandleForIDSCategory("IMConnectionMonitor");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_195988000, v5, OS_LOG_TYPE_DEFAULT, "[%@ _networkManagedUpdated].", &v8, 0xCu);
  }

  objc_msgSend__doCallbackLater(self, v6, v7);
}

- (void)_setup
{
  v4 = objc_msgSend_sharedInstance(IMSystemMonitor, a2, v2);
  objc_msgSend__addEarlyListener_(v4, v5, self);

  v8 = objc_msgSend_sharedInstance(IMMobileNetworkManager, v6, v7);
  v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
  objc_msgSend_addObserver_selector_name_object_(v11, v12, self, sel__networkManagedUpdated_, @"__kIMMobileNetworkManagerDataStatusChangedNotification", 0);

  v13 = objc_alloc(MEMORY[0x1E69956C8]);
  v14 = im_primary_queue();
  v16 = objc_msgSend_initWithCapacity_queue_block_(v13, v15, 1, v14, &unk_1F09D2300);
  performCallbackTask = self->_performCallbackTask;
  self->_performCallbackTask = v16;

  MEMORY[0x1EEE66B58](self, sel__setupReachability, v18);
}

- (void)goConnectedWithLocalSocketAddress:(id)address remoteSocketAddress:(id)socketAddress
{
  v23 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  socketAddressCopy = socketAddress;
  v8 = OSLogHandleForIDSCategory("IMConnectionMonitor");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isConnected = self->_isConnected;
    v15 = 138413058;
    selfCopy = self;
    v17 = 1024;
    v18 = isConnected;
    v19 = 2112;
    v20 = addressCopy;
    v21 = 2112;
    v22 = socketAddressCopy;
    _os_log_impl(&dword_195988000, v8, OS_LOG_TYPE_DEFAULT, "[%@ goConnectedWithLocalSocketAddress]._isConnected: %d -> 1\n    localSocketAddress: %@\n    remoteSocketAddress: %@", &v15, 0x26u);
  }

  if (!self->_isConnected)
  {
    self->_isConnected = 1;
    objc_msgSend__clearReachability_flags_(self, v10, &self->_ipReachability, &self->_ipFlags);
    v11 = [IMReachability alloc];
    v13 = objc_msgSend_initWithLocalSocketAddress_remoteSocketAddress_delegate_(v11, v12, addressCopy, socketAddressCopy, self);
    ipReachability = self->_ipReachability;
    self->_ipReachability = v13;
  }
}

- (void)goDisconnected
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForIDSCategory("IMConnectionMonitor");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isConnected = self->_isConnected;
    v6 = 138412546;
    selfCopy = self;
    v8 = 1024;
    v9 = isConnected;
    _os_log_impl(&dword_195988000, v3, OS_LOG_TYPE_DEFAULT, "[%@ goDisconnected].  _isConnected: %d -> 0", &v6, 0x12u);
  }

  if (self->_isConnected)
  {
    self->_isConnected = 0;
    objc_msgSend__clearReachability_flags_(self, v5, &self->_ipReachability, &self->_ipFlags);
  }
}

- (void)clear
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], a2, self, sel__doCallbackNow, 0);
  v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v3, v4);
  objc_msgSend_removeObserver_name_object_(v6, v5, self, 0, 0);
}

@end