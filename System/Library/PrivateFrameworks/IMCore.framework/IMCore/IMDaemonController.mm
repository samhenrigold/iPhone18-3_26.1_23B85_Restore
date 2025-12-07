@interface IMDaemonController
+ (IMDaemonController)sharedController;
+ (id)sharedInstance;
- (BOOL)_hasMultiplexedConnectionWithUniqueID:(id)d;
- (BOOL)addListenerID:(id)d capabilities:(unsigned int)capabilities;
- (BOOL)connectToDaemon;
- (BOOL)connectToDaemonWithLaunch:(BOOL)launch;
- (BOOL)connectToDaemonWithLaunch:(BOOL)launch capabilities:(unsigned int)capabilities blockUntilConnected:(BOOL)connected;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (IMDaemonController)init;
- (IMDaemonProtocol)remoteDaemon;
- (IMDaemonProtocol)replyingRemoteDaemon;
- (IMDaemonProtocol)synchronousRemoteDaemon;
- (IMDaemonProtocol)synchronousReplyingRemoteDaemon;
- (NSDictionary)processContext;
- (id)_multiplexedConnectionWithUniqueID:(id)d label:(id)label capabilities:(unint64_t)capabilities context:(id)context retain:(BOOL)retain;
- (id)delegate;
- (id)multiplexedConnectionWithLabel:(id)label capabilities:(unint64_t)capabilities context:(id)context;
- (unint64_t)_capabilitiesForMultiplexedConnectionWithUniqueID:(id)d;
- (unint64_t)_clientCapabilitiesForLegacyClientWithListenerID:(id)d requestedCapabilities:(unint64_t)capabilities;
- (unint64_t)processCapabilities;
- (unint64_t)requestedCapabilities;
- (unsigned)capabilitiesForListenerID:(id)d;
- (void)_capabilitiesDidChangeWithContextChange:(BOOL)change;
- (void)_connectWithCompletion:(id)completion;
- (void)_connectWithContextChange:(BOOL)change;
- (void)_handleDaemonLaunched:(id)launched;
- (void)_invalidateMultiplexedConnectionWithUniqueID:(id)d;
- (void)_reconnectIfNeeded;
- (void)_updateAnonymousMultiplexedConnectionWithAddedCapabilities:(unint64_t)capabilities;
- (void)blockUntilConnected;
- (void)disconnectFromDaemon;
- (void)killDaemon;
- (void)requestSetup;
@end

@implementation IMDaemonController

+ (IMDaemonController)sharedController
{
  if (qword_1ED7677C0 != -1)
  {
    sub_1A82419F4();
  }

  v3 = qword_1ED7677D8;

  return v3;
}

+ (id)sharedInstance
{
  v2 = +[IMDaemonController sharedController];
  remoteDaemonProxy = [v2 remoteDaemonProxy];

  return remoteDaemonProxy;
}

- (IMDaemonController)init
{
  v33[2] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = IMDaemonController;
  v2 = [(IMDaemonController *)&v32 init];
  if (v2)
  {
    v3 = objc_alloc_init(_IMLegacyDaemonListener);
    listener = v2->_listener;
    v2->_listener = v3;

    v5 = [[IMDaemonConnection alloc] initWithListener:v2->_listener];
    connection = v2->_connection;
    v2->_connection = v5;

    v7 = IMGetMainBundleIdentifier();
    v8 = v7;
    if (v7)
    {
      stringGUID = v7;
    }

    else
    {
      stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    }

    listenerID = v2->_listenerID;
    v2->_listenerID = stringGUID;

    v11 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0x10000 valueOptions:5 capacity:1];
    multiplexedConnections = v2->_multiplexedConnections;
    v2->_multiplexedConnections = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    retainedMultiplexedConnections = v2->_retainedMultiplexedConnections;
    v2->_retainedMultiplexedConnections = v13;

    v15 = [[IMDaemonQueryController alloc] initWithDaemonController:v2];
    queryController = v2->_queryController;
    v2->_queryController = v15;

    v2->_lock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v2);
    v17 = objc_alloc(MEMORY[0x1E69A80D8]);
    v18 = IMGetDaemonProtocol();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1A82434AC;
    v29[3] = &unk_1E7810400;
    objc_copyWeak(&v30, &location);
    v19 = [v17 initWithProtocol:v18 forwardingHandler:v29];

    v20 = objc_alloc(MEMORY[0x1E69A8040]);
    v21 = objc_loadWeakRetained(&location);
    v33[0] = v21;
    v33[1] = v19;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v23 = [v20 initWithTargets:v22];
    remoteDaemonProxy = v2->_remoteDaemonProxy;
    v2->_remoteDaemonProxy = v23;

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1A824C17C;
    v27[3] = &unk_1E7810428;
    objc_copyWeak(&v28, &location);
    [(IMDaemonConnectionManaging *)v2->_connection setOnSetupComplete:v27];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1A8282F98, *MEMORY[0x1E69A61F8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_destroyWeak(&v28);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (BOOL)isConnected
{
  connection = [(IMDaemonController *)self connection];
  if ([connection isConnected])
  {
    listener = [(IMDaemonController *)self listener];
    isSetupComplete = [listener isSetupComplete];
  }

  else
  {
    isSetupComplete = 0;
  }

  return isSetupComplete;
}

- (void)blockUntilConnected
{
  [(IMDaemonController *)self _connectWithContextChange:0];
  connection = [(IMDaemonController *)self connection];
  [connection waitForSetup];
}

- (unint64_t)requestedCapabilities
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  multiplexedConnections = [(IMDaemonController *)self multiplexedConnections];
  objectEnumerator = [multiplexedConnections objectEnumerator];

  v5 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v7 |= [*(*(&v11 + 1) + 8 * i) capabilities];
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (NSDictionary)processContext
{
  v25 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  processContext = self->_processContext;
  if (!processContext)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    multiplexedConnections = [(IMDaemonController *)self multiplexedConnections];
    keyEnumerator = [multiplexedConnections keyEnumerator];

    v7 = [keyEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          multiplexedConnections2 = [(IMDaemonController *)self multiplexedConnections];
          v13 = [multiplexedConnections2 objectForKey:v11];

          if (v13)
          {
            context = [v13 context];

            if (context)
            {
              context2 = [v13 context];
              [v4 setObject:context2 forKeyedSubscript:v11];
            }
          }
        }

        v8 = [keyEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v16 = [v4 copy];
    v17 = self->_processContext;
    self->_processContext = v16;

    processContext = self->_processContext;
  }

  v18 = processContext;
  os_unfair_lock_unlock(&self->_lock);

  return v18;
}

- (unint64_t)processCapabilities
{
  if (self->_processCapabilities)
  {
    return self->_processCapabilities;
  }

  else
  {
    return [(IMDaemonController *)self requestedCapabilities];
  }
}

- (IMDaemonProtocol)replyingRemoteDaemon
{
  connection = [(IMDaemonController *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (IMDaemonProtocol)remoteDaemon
{
  connection = [(IMDaemonController *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (IMDaemonProtocol)synchronousRemoteDaemon
{
  connection = [(IMDaemonController *)self connection];
  synchronousRemoteObjectProxy = [connection synchronousRemoteObjectProxy];

  return synchronousRemoteObjectProxy;
}

- (void)_connectWithContextChange:(BOOL)change
{
  changeCopy = change;
  requestedCapabilities = [(IMDaemonController *)self requestedCapabilities];
  processContext = [(IMDaemonController *)self processContext];
  connection = [(IMDaemonController *)self connection];
  [connection connectWithCapabilities:requestedCapabilities context:processContext contextChanged:changeCopy];
}

- (void)_connectWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Requesting asynchronous connection and setup for client", buf, 2u);
    }
  }

  connection = [(IMDaemonController *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A828322C;
  v8[3] = &unk_1E780FE90;
  v9 = completionCopy;
  v7 = completionCopy;
  [connection requestSetupIfNeededWithCompletionHandler:v8];
}

- (BOOL)connectToDaemon
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Connecting with anonymous multiplexed connection", v5, 2u);
    }
  }

  [(IMDaemonController *)self _connectWithContextChange:0];
  return 1;
}

- (BOOL)connectToDaemonWithLaunch:(BOOL)launch
{
  launchCopy = launch;
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (launchCopy)
      {
        v6 = @"YES";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Connecting with anonymous multiplexed connection with launch %@", &v8, 0xCu);
    }
  }

  [(IMDaemonController *)self _connectWithContextChange:0];
  return 1;
}

- (BOOL)connectToDaemonWithLaunch:(BOOL)launch capabilities:(unsigned int)capabilities blockUntilConnected:(BOOL)connected
{
  connectedCopy = connected;
  v18 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = IMStringFromClientCapabilities();
      v10 = v9;
      v11 = @"NO";
      if (connectedCopy)
      {
        v11 = @"YES";
      }

      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Connecting with anonymous multiplexed connection using capabilities: %@ blockUntilConnected: %@", &v14, 0x16u);
    }
  }

  [(IMDaemonController *)self _updateAnonymousMultiplexedConnectionWithAddedCapabilities:capabilities];
  [(IMDaemonController *)self _connectWithContextChange:0];
  if (connectedCopy)
  {
    connection = [(IMDaemonController *)self connection];
    [connection waitForSetup];
  }

  return 1;
}

- (void)disconnectFromDaemon
{
  connection = [(IMDaemonController *)self connection];
  [connection disconnect];

  listener = [(IMDaemonController *)self listener];
  [listener _noteDisconnected];
}

- (void)killDaemon
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Request to terminate daemon ignored, this function is no longer supported", v3, 2u);
    }
  }
}

- (void)_reconnectIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Request to reconnect if needed", &v13, 2u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  anonymousMultiplexedConnection = [(IMDaemonController *)self anonymousMultiplexedConnection];
  if (anonymousMultiplexedConnection)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  multiplexedConnections = [(IMDaemonController *)self multiplexedConnections];
  v7 = [multiplexedConnections count] < v5;

  os_unfair_lock_unlock(&self->_lock);
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Not reconnecting, no non-anonymous multiplexed connections", &v13, 2u);
      }
    }
  }

  else
  {
    if (v8)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        multiplexedConnections2 = [(IMDaemonController *)self multiplexedConnections];
        v12 = [multiplexedConnections2 count];
        v13 = 134217984;
        v14 = v12;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Reconnecting, controller has %llu multiplexed connections", &v13, 0xCu);
      }
    }

    [(IMDaemonController *)self _connectWithContextChange:0];
  }
}

- (void)_handleDaemonLaunched:(id)launched
{
  launchedCopy = launched;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Daemon launch detected while process was running", v6, 2u);
    }
  }

  [(IMDaemonController *)self _reconnectIfNeeded];
}

- (id)multiplexedConnectionWithLabel:(id)label capabilities:(unint64_t)capabilities context:(id)context
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = MEMORY[0x1E696AFB0];
  contextCopy = context;
  labelCopy = label;
  uUID = [v9 UUID];
  uUIDString = [uUID UUIDString];
  v14 = [v8 stringWithFormat:@"%@-%@", labelCopy, uUIDString];

  v15 = [(IMDaemonController *)self _multiplexedConnectionWithUniqueID:v14 label:labelCopy capabilities:capabilities context:contextCopy retain:0];

  return v15;
}

- (id)_multiplexedConnectionWithUniqueID:(id)d label:(id)label capabilities:(unint64_t)capabilities context:(id)context retain:(BOOL)retain
{
  retainCopy = retain;
  v45 = *MEMORY[0x1E69E9840];
  dCopy = d;
  labelCopy = label;
  contextCopy = context;
  os_unfair_lock_lock(&self->_lock);
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A8283DE0;
  aBlock[3] = &unk_1E7810450;
  objc_copyWeak(&v37, &location);
  v15 = dCopy;
  v36 = v15;
  v16 = _Block_copy(aBlock);
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = sub_1A8283E30;
  v33 = &unk_1E780FDC8;
  objc_copyWeak(&v34, &location);
  v17 = _Block_copy(&v30);
  v18 = [IMMultiplexedDaemonConnection alloc];
  v19 = [(IMMultiplexedDaemonConnection *)v18 initWithLabel:labelCopy capabilities:capabilities context:contextCopy onInvalidate:v16 onDealloc:v17, v30, v31, v32, v33];
  multiplexedConnections = [(IMDaemonController *)self multiplexedConnections];
  [multiplexedConnections setObject:v19 forKey:v15];

  retainedMultiplexedConnections = [(IMDaemonController *)self retainedMultiplexedConnections];
  v22 = retainedMultiplexedConnections;
  if (retainCopy)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  [retainedMultiplexedConnections setObject:v23 forKeyedSubscript:v15];

  if (contextCopy)
  {
    processContext = self->_processContext;
    self->_processContext = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = IMStringFromClientCapabilities();
      v27 = v26;
      v28 = MEMORY[0x1E695E110];
      if (contextCopy)
      {
        v28 = MEMORY[0x1E695E118];
      }

      *buf = 138412802;
      v40 = labelCopy;
      v41 = 2112;
      v42 = v26;
      v43 = 2112;
      v44 = v28;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Multiplexing connection with label: %@ capabilities: %@ hasContext: %@", buf, 0x20u);
    }
  }

  [(IMDaemonController *)self _capabilitiesDidChangeWithContextChange:contextCopy != 0];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  return v19;
}

- (void)_invalidateMultiplexedConnectionWithUniqueID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  multiplexedConnections = [(IMDaemonController *)self multiplexedConnections];
  [multiplexedConnections removeObjectForKey:dCopy];

  retainedMultiplexedConnections = [(IMDaemonController *)self retainedMultiplexedConnections];
  [retainedMultiplexedConnections setObject:0 forKeyedSubscript:dCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = dCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Removed multiplexed connection with uniqueID: %@", &v8, 0xCu);
    }
  }

  [(IMDaemonController *)self _capabilitiesDidChange];
}

- (BOOL)_hasMultiplexedConnectionWithUniqueID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  multiplexedConnections = [(IMDaemonController *)self multiplexedConnections];
  v6 = [multiplexedConnections objectForKey:dCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v6 != 0;
}

- (unint64_t)_capabilitiesForMultiplexedConnectionWithUniqueID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  multiplexedConnections = [(IMDaemonController *)self multiplexedConnections];
  v6 = [multiplexedConnections objectForKey:dCopy];

  capabilities = [v6 capabilities];
  os_unfair_lock_unlock(&self->_lock);
  return capabilities;
}

- (void)_updateAnonymousMultiplexedConnectionWithAddedCapabilities:(unint64_t)capabilities
{
  v16 = *MEMORY[0x1E69E9840];
  if (capabilities)
  {
    capabilitiesCopy = capabilities;
    anonymousMultiplexedConnection = [(IMDaemonController *)self anonymousMultiplexedConnection];

    if (anonymousMultiplexedConnection)
    {
      anonymousMultiplexedConnection2 = [(IMDaemonController *)self anonymousMultiplexedConnection];
      capabilities = [anonymousMultiplexedConnection2 capabilities];

      capabilitiesCopy |= capabilities;
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = IMStringFromClientCapabilities();
          v10 = IMStringFromClientCapabilities();
          v12 = 138412546;
          v13 = v9;
          v14 = 2112;
          v15 = v10;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Had existing anonymous capabilities %@, updating to %@", &v12, 0x16u);
        }
      }
    }

    v11 = [(IMDaemonController *)self _multiplexedConnectionWithUniqueID:@"__IMDaemonControllerAnonymousConnectionIdentifier" label:@"__IMDaemonControllerAnonymousConnectionIdentifier" capabilities:capabilitiesCopy context:0 retain:1];
    [(IMDaemonController *)self setAnonymousMultiplexedConnection:v11];
  }
}

- (void)_capabilitiesDidChangeWithContextChange:(BOOL)change
{
  changeCopy = change;
  v12 = *MEMORY[0x1E69E9840];
  [(IMDaemonController *)self setProcessCapabilities:0];
  requestedCapabilities = [(IMDaemonController *)self requestedCapabilities];
  v6 = IMOSLoggingEnabled();
  if (requestedCapabilities)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = IMStringFromClientCapabilities();
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Process capabilities changed to %@, requesting new setup message", &v10, 0xCu);
      }
    }

    [(IMDaemonController *)self _connectWithContextChange:changeCopy];
  }

  else
  {
    if (v6)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Process capabilities changed to nil, disconnecting", &v10, 2u);
      }
    }

    [(IMDaemonController *)self disconnectFromDaemon];
  }
}

- (BOOL)addListenerID:(id)d capabilities:(unsigned int)capabilities
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = [(IMDaemonController *)self _multiplexedConnectionWithUniqueID:dCopy label:dCopy capabilities:[(IMDaemonController *)self _clientCapabilitiesForLegacyClientWithListenerID:dCopy requestedCapabilities:capabilities] context:0 retain:1];
  if ([(IMDaemonController *)self _clientRequiresSynchronousConnectionRescueWithListenerID:dCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = dCopy;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Forcing block until connected for client %@ to rescue poor asynchronous behavior", &v10, 0xCu);
      }
    }

    [(IMDaemonController *)self blockUntilConnected];
  }

  return 1;
}

- (unsigned)capabilitiesForListenerID:(id)d
{
  if (d)
  {
    return [(IMDaemonController *)self _capabilitiesForMultiplexedConnectionWithUniqueID:?];
  }

  else
  {
    return [(IMDaemonController *)self processCapabilities];
  }
}

- (unint64_t)_clientCapabilitiesForLegacyClientWithListenerID:(id)d requestedCapabilities:(unint64_t)capabilities
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ((capabilities & 0x200004) == 4)
  {
    capabilitiesCopy = capabilities | 0x400000;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = dCopy;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Assuming client %@ wants Precached Recent Chats (has no on-demand chat registry capability)", &v15, 0xCu);
      }
    }
  }

  else
  {
    capabilitiesCopy = capabilities;
    capabilitiesCopy2 = capabilities;
    if ((capabilities & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  capabilitiesCopy2 = capabilitiesCopy | 0x43200;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = dCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Assuming client %@ wants Send Messages, Message History Modify Read State, and Accounts (has chat capability)", &v15, 0xCu);
    }
  }

LABEL_11:
  if ([dCopy isEqualToString:@"CKSettingsMessagesController"])
  {
    capabilitiesCopy2 |= 0x20000000uLL;
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Granting synced settings capability to CKSettingsMessagesController listener.", &v15, 2u);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = IMStringFromClientCapabilities();
      v13 = IMStringFromClientCapabilities();
      v15 = 138412802;
      v16 = dCopy;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Client %@ requested %@ with legacy API, upgrading capabilities to %@", &v15, 0x20u);
    }
  }

  return capabilitiesCopy2;
}

- (BOOL)isConnecting
{
  connection = [(IMDaemonController *)self connection];
  if ([connection isConnected])
  {
    listener = [(IMDaemonController *)self listener];
    v5 = [listener isSetupComplete] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)requestSetup
{
  connection = [(IMDaemonController *)self connection];
  [connection requestSetup];
}

- (IMDaemonProtocol)synchronousReplyingRemoteDaemon
{
  connection = [(IMDaemonController *)self connection];
  synchronousRemoteObjectProxy = [connection synchronousRemoteObjectProxy];

  return synchronousRemoteObjectProxy;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end