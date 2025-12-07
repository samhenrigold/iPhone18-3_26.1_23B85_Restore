@interface NetworkExtensionStateRelay
- (BOOL)_createSessionForNEConfiguration:(id)configuration queue:(id)queue;
- (BOOL)_setupNetworkExtensionSessionMonitors:(id)monitors;
- (NetworkExtensionStateRelay)initWithQueue:(id)queue;
- (void)_removeNESessionWatchers;
- (void)_setUpNEConfigurationChangedWatcher:(id)watcher;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation NetworkExtensionStateRelay

- (NetworkExtensionStateRelay)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = NetworkExtensionStateRelay;
  v5 = [(NetworkExtensionStateRelay *)&v11 init];
  v6 = v5;
  if (v5)
  {
    vpnConnSessions = v5->_vpnConnSessions;
    v5->_vpnConnSessions = 0;

    contentFilterSessions = v6->_contentFilterSessions;
    v6->_contentFilterSessions = 0;

    dnsProxySessions = v6->_dnsProxySessions;
    v6->_dnsProxySessions = 0;

    [(NetworkExtensionStateRelay *)v6 _setupNetworkExtensionSessionMonitors:queueCopy];
  }

  return v6;
}

- (void)dealloc
{
  [(NetworkExtensionStateRelay *)self _removeNESessionWatchers];
  vpnConnSessions = self->_vpnConnSessions;
  self->_vpnConnSessions = 0;

  contentFilterSessions = self->_contentFilterSessions;
  self->_contentFilterSessions = 0;

  dnsProxySessions = self->_dnsProxySessions;
  self->_dnsProxySessions = 0;

  v6.receiver = self;
  v6.super_class = NetworkExtensionStateRelay;
  [(NetworkExtensionStateRelay *)&v6 dealloc];
}

- (BOOL)_createSessionForNEConfiguration:(id)configuration queue:(id)queue
{
  v50 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  queueCopy = queue;
  v8 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    v48 = 138412290;
    v49 = configurationCopy;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "NEStateRelay: Configuration: %@", &v48, 0xCu);
  }

  v9 = [configurationCopy VPN];
  if ([v9 isEnabled])
  {
  }

  else
  {
    v10 = [configurationCopy VPN];
    isOnDemandEnabled = [v10 isOnDemandEnabled];

    if (!isOnDemandEnabled)
    {
      goto LABEL_12;
    }
  }

  v12 = [SFVPNConnSession alloc];
  identifier = [configurationCopy identifier];
  v14 = [(SFVPNConnSession *)v12 initWithQueue:queueCopy configID:identifier];

  if (!v14)
  {
    v41 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v42 = v41;
    identifier2 = [configurationCopy identifier];
    v48 = 138412290;
    v49 = identifier2;
    v44 = "NEStateRelay: Failed to create an NE session to monitor VPN connection: %@";
LABEL_33:
    _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, v44, &v48, 0xCu);

    goto LABEL_34;
  }

  if (!self->_vpnConnSessions)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    vpnConnSessions = self->_vpnConnSessions;
    self->_vpnConnSessions = v15;
  }

  [(SFVPNConnSession *)v14 addObserver:self forKeyPath:@"connected" options:1 context:2];
  [(NSMutableArray *)self->_vpnConnSessions addObject:v14];
  v17 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    v18 = v17;
    identifier3 = [configurationCopy identifier];
    v48 = 138412290;
    v49 = identifier3;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "NEStateRelay: Created an NE session to monitor VPN connection: %@", &v48, 0xCu);
  }

LABEL_12:
  contentFilter = [configurationCopy contentFilter];
  isEnabled = [contentFilter isEnabled];

  if (!isEnabled)
  {
    goto LABEL_19;
  }

  v22 = [SFContentFilterSession alloc];
  identifier4 = [configurationCopy identifier];
  v24 = [(SFContentFilterSession *)v22 initWithQueue:queueCopy configID:identifier4];

  if (!v24)
  {
    v45 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v42 = v45;
    identifier2 = [configurationCopy identifier];
    v48 = 138412290;
    v49 = identifier2;
    v44 = "NEStateRelay: Failed to create an NE session to monitor Content Filter connection: %@";
    goto LABEL_33;
  }

  if (!self->_contentFilterSessions)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    contentFilterSessions = self->_contentFilterSessions;
    self->_contentFilterSessions = v25;
  }

  [(SFContentFilterSession *)v24 addObserver:self forKeyPath:@"connected" options:1 context:3];
  [(NSMutableArray *)self->_contentFilterSessions addObject:v24];
  v27 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    v28 = v27;
    identifier5 = [configurationCopy identifier];
    v48 = 138412290;
    v49 = identifier5;
    _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_INFO, "NEStateRelay: Created an NE session to monitor Content Filter connection: %@", &v48, 0xCu);
  }

LABEL_19:
  dnsProxy = [configurationCopy dnsProxy];
  isEnabled2 = [dnsProxy isEnabled];

  if (isEnabled2)
  {
    v32 = [SFDNSProxySession alloc];
    identifier6 = [configurationCopy identifier];
    v34 = [(SFDNSProxySession *)v32 initWithQueue:queueCopy configID:identifier6];

    if (v34)
    {
      if (!self->_dnsProxySessions)
      {
        v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
        dnsProxySessions = self->_dnsProxySessions;
        self->_dnsProxySessions = v35;
      }

      [(SFDNSProxySession *)v34 addObserver:self forKeyPath:@"connected" options:1 context:4];
      [(NSMutableArray *)self->_dnsProxySessions addObject:v34];
      v37 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        v38 = v37;
        identifier7 = [configurationCopy identifier];
        v48 = 138412290;
        v49 = identifier7;
        _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_INFO, "NEStateRelay: Created an NE session to monitor DNS Proxy connection: %@", &v48, 0xCu);
      }

      goto LABEL_26;
    }

    v46 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v42 = v46;
      identifier2 = [configurationCopy identifier];
      v48 = 138412290;
      v49 = identifier2;
      v44 = "NEStateRelay: Failed to create an NE session to monitor DNS Proxy connection: %@";
      goto LABEL_33;
    }

LABEL_34:
    v40 = 0;
    goto LABEL_35;
  }

LABEL_26:
  v40 = 1;
LABEL_35:

  return v40;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  contextCopy = context;
  v36 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = otherLogHandle;
  v14 = os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG);
  if (pathCopy && objectCopy && changeCopy)
  {
    if (v14)
    {
      v32 = 138412546;
      v33 = pathCopy;
      v34 = 2112;
      v35 = objectCopy;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "NEStateRelay: Update for keypath %@ of object %@", &v32, 0x16u);
    }

    v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        goto LABEL_14;
      }

      v32 = 138412546;
      v33 = pathCopy;
      v34 = 2112;
      v35 = objectCopy;
      v17 = "NEStateRelay: Ignoring null value for keypath %@ of object %@";
      v18 = v16;
      v19 = 22;
LABEL_10:
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, v17, &v32, v19);
      goto LABEL_11;
    }

    switch(contextCopy)
    {
      case 4:
        bOOLValue = [v15 BOOLValue];
        if (self->_dnsProxyConnected == bOOLValue)
        {
          goto LABEL_11;
        }

        [(NetworkExtensionStateRelay *)self setDnsProxyConnected:bOOLValue];
        v29 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_11;
        }

        v22 = v29;
        dnsProxyConnected = [(NetworkExtensionStateRelay *)self dnsProxyConnected];
        v32 = 67109120;
        LODWORD(v33) = dnsProxyConnected;
        v24 = "NEStateRelay: DNS proxy state changed to %u";
        break;
      case 3:
        bOOLValue2 = [v15 BOOLValue];
        if (self->_contentFilterConnected == bOOLValue2)
        {
          goto LABEL_11;
        }

        [(NetworkExtensionStateRelay *)self setContentFilterConnected:bOOLValue2];
        v26 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_11;
        }

        v22 = v26;
        contentFilterConnected = [(NetworkExtensionStateRelay *)self contentFilterConnected];
        v32 = 67109120;
        LODWORD(v33) = contentFilterConnected;
        v24 = "NEStateRelay: Content filter state changed to %u";
        break;
      case 2:
        bOOLValue3 = [v15 BOOLValue];
        if (self->_vpnConnected == bOOLValue3)
        {
          goto LABEL_11;
        }

        [(NetworkExtensionStateRelay *)self setVpnConnected:bOOLValue3];
        v21 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_11;
        }

        v22 = v21;
        vpnConnected = [(NetworkExtensionStateRelay *)self vpnConnected];
        v32 = 67109120;
        LODWORD(v33) = vpnConnected;
        v24 = "NEStateRelay: VPN state changed to %u";
        break;
      default:
        v31 = otherLogHandle;
        if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        LOWORD(v32) = 0;
        v17 = "NEStateRelay: Invalid context string passed to KVO.";
        v18 = v31;
        v19 = 2;
        goto LABEL_10;
    }

    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_INFO, v24, &v32, 8u);

    goto LABEL_11;
  }

  if (v14)
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "NEStateRelay: Skipping observation of invalid value", &v32, 2u);
  }

LABEL_14:
}

- (BOOL)_setupNetworkExtensionSessionMonitors:(id)monitors
{
  monitorsCopy = monitors;
  v5 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "NEStateRelay: Setting up Session Watchers...", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x2020000000;
  v16 = 0;
  mEMORY[0x277CD92B8] = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__NetworkExtensionStateRelay__setupNetworkExtensionSessionMonitors___block_invoke;
  v10[3] = &unk_27898F1E0;
  v10[4] = self;
  v7 = monitorsCopy;
  v11 = v7;
  v12 = buf;
  [mEMORY[0x277CD92B8] loadConfigurationsWithCompletionQueue:v7 handler:v10];
  v8 = v14[24];

  _Block_object_dispose(buf, 8);
  return v8;
}

void __68__NetworkExtensionStateRelay__setupNetworkExtensionSessionMonitors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v6;
      v8 = "NEStateRelay: Failed to load Network Extension configuration with error: %@.";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 12;
LABEL_4:
      _os_log_impl(&dword_23255B000, v9, v10, v8, buf, v11);
    }
  }

  else
  {
    if (!v5)
    {
      v16 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      *buf = 0;
      v8 = "NEStateRelay: No NEConfigurations found.";
      v9 = v16;
      v10 = OS_LOG_TYPE_DEBUG;
      v11 = 2;
      goto LABEL_4;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 32) _createSessionForNEConfiguration:*(*(&v17 + 1) + 8 * i) queue:*(a1 + 40)];
        }

        v13 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_16:
}

- (void)_setUpNEConfigurationChangedWatcher:(id)watcher
{
  watcherCopy = watcher;
  mEMORY[0x277CD92B8] = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
  objc_initWeak(&location, mEMORY[0x277CD92B8]);

  v6 = objc_loadWeakRetained(&location);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__NetworkExtensionStateRelay__setUpNEConfigurationChangedWatcher___block_invoke;
  v8[3] = &unk_27898F230;
  objc_copyWeak(&v11, &location);
  v7 = watcherCopy;
  v9 = v7;
  selfCopy = self;
  [v6 setChangedQueue:v7 andHandler:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __66__NetworkExtensionStateRelay__setUpNEConfigurationChangedWatcher___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __66__NetworkExtensionStateRelay__setUpNEConfigurationChangedWatcher___block_invoke_2;
        v13[3] = &unk_27898F208;
        v12 = *(a1 + 32);
        v11 = v12.i64[0];
        v14 = vextq_s8(v12, v12, 8uLL);
        [WeakRetained loadConfigurationWithID:v10 withCompletionQueue:v11 handler:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

void __66__NetworkExtensionStateRelay__setUpNEConfigurationChangedWatcher___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5)
    {
      [*(a1 + 32) _createSessionForNEConfiguration:v5 queue:*(a1 + 40)];
      goto LABEL_9;
    }

    v12 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    LOWORD(v13) = 0;
    v8 = "NEStateRelay: No NEConfiguration to update.";
    v9 = v12;
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 2;
    goto LABEL_4;
  }

  v7 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    v8 = "NEStateRelay: Failed to load Network Extension configuration: loadConfigurationWithID failed. error: %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 12;
LABEL_4:
    _os_log_impl(&dword_23255B000, v9, v10, v8, &v13, v11);
  }

LABEL_9:
}

- (void)_removeNESessionWatchers
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = self->_vpnConnSessions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v26 + 1) + 8 * v7++) removeObserver:self forKeyPath:@"connected"];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v5);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_contentFilterSessions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v22 + 1) + 8 * v12++) removeObserver:self forKeyPath:@"connected"];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = self->_dnsProxySessions;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17++) removeObserver:self forKeyPath:{@"connected", v18}];
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v15);
  }
}

@end