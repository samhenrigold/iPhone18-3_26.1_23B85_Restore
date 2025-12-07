@interface RWIRelay
- (RWIRelay)init;
- (id)_allApplicationDetails;
- (id)_allDriverDetails;
- (void)_addPendingClientConnection:(id)connection;
- (void)_applicationConnected:(id)connected;
- (void)_applicationDisconnected:(id)disconnected;
- (void)_applicationUpdated:(id)updated;
- (void)_disconnectApplicationConnect:(id)connect;
- (void)_driverConnected:(id)connected;
- (void)_driverDisconnected:(id)disconnected;
- (void)_driverUpdated:(id)updated;
- (void)_dumpApplication:(id)application withOrdinal:(unint64_t)ordinal;
- (void)_dumpClientConnection:(id)connection withOrdinal:(unint64_t)ordinal;
- (void)_finalizePendingClientConnection:(id)connection withIdentifier:(id)identifier;
- (void)_handleApplicationListenConnectionEvent:(id)event;
- (void)_handleDumpStateNotification;
- (void)_proxyApplicationConnected:(id)connected;
- (void)_proxyApplicationResponse:(id)response userInfo:(id)info;
- (void)_receivedAutomaticInspectionCandidate:(id)candidate connection:(id)connection;
- (void)_receivedDataMessage:(id)message connection:(id)connection;
- (void)_receivedListingMessage:(id)message connection:(id)connection;
- (void)_receivedProxyApplicationSetupResponseMessage:(id)message connection:(id)connection;
- (void)_reportCurrentStateToAllClients;
- (void)_reportCurrentStateToClient:(id)client;
- (void)_rpc_debuggerDidWake:(id)wake;
- (void)_rpc_debuggerWillSleep:(id)sleep;
- (void)_rpc_forwardAutomaticInspectionConfiguration:(id)configuration;
- (void)_rpc_forwardAutomaticInspectionRejection:(id)rejection;
- (void)_rpc_forwardAutomationSessionRequest:(id)request;
- (void)_rpc_forwardDidClose:(id)close;
- (void)_rpc_forwardDriverStateChangeRequest:(id)request;
- (void)_rpc_forwardGetListing:(id)listing;
- (void)_rpc_forwardIndicateWebView:(id)view;
- (void)_rpc_forwardSocketData:(id)data;
- (void)_rpc_forwardSocketSetup:(id)setup;
- (void)_rpc_forwardWakeUpDebuggables:(id)debuggables;
- (void)_rpc_getConnectedApplications:(id)applications;
- (void)_rpc_getConnectedDrivers:(id)drivers;
- (void)_rpc_reportDriverConnected:(id)connected;
- (void)_rpc_reportDriverDisconnected:(id)disconnected;
- (void)_rpc_reportDriverUpdated:(id)updated;
- (void)_rpc_reportIdentifier:(id)identifier;
- (void)_rpc_requestApplicationLaunch:(id)launch;
- (void)_setGlobalNotifyStateWithAutomaticInspectionEnabled:(BOOL)enabled;
- (void)clientConnectionDidClose:(id)close;
- (void)setup;
- (void)shutdownIfDisabled;
- (void)xpcConnection:(id)connection receivedMessage:(id)message userInfo:(id)info;
- (void)xpcConnectionFailed:(id)failed;
@end

@implementation RWIRelay

- (RWIRelay)init
{
  v44 = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = RWIRelay;
  v2 = [(RWIRelay *)&v41 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    applicationConnections = v2->_applicationConnections;
    v2->_applicationConnections = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clientConnections = v2->_clientConnections;
    v2->_clientConnections = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    driverInterfaces = v2->_driverInterfaces;
    v2->_driverInterfaces = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingClientConnections = v2->_pendingClientConnections;
    v2->_pendingClientConnections = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingProxyApplicationConnections = v2->_pendingProxyApplicationConnections;
    v2->_pendingProxyApplicationConnections = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    automaticInspectionDebuggers = v2->_automaticInspectionDebuggers;
    v2->_automaticInspectionDebuggers = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    automaticInspectionSessions = v2->_automaticInspectionSessions;
    v2->_automaticInspectionSessions = v15;

    [(RWIRelay *)v2 _setGlobalNotifyStateWithAutomaticInspectionEnabled:0];
    v17 = MEMORY[0x277D85CD0];
    mach_service = xpc_connection_create_mach_service("com.apple.webinspector", MEMORY[0x277D85CD0], 1uLL);
    xpcApplicationListenConnection = v2->_xpcApplicationListenConnection;
    v2->_xpcApplicationListenConnection = mach_service;

    v20 = v2->_xpcApplicationListenConnection;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __16__RWIRelay_init__block_invoke;
    handler[3] = &unk_279EAA450;
    v21 = v2;
    v40 = v21;
    xpc_connection_set_event_handler(v20, handler);
    xpc_connection_resume(v2->_xpcApplicationListenConnection);
    out_token = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __16__RWIRelay_init__block_invoke_2;
    v36[3] = &unk_279EAC0D0;
    v22 = v21;
    v37 = v22;
    notify_register_dispatch("com.apple.webinspectord.enabled", &out_token, v17, v36);

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __16__RWIRelay_init__block_invoke_10;
    v34[3] = &unk_279EAC0D0;
    v23 = v22;
    v35 = v23;
    notify_register_dispatch("com.apple.webinspectord.disabled", &out_token, v17, v34);

    notify_register_dispatch("com.apple.webinspectord.availability_check", &out_token, v17, &__block_literal_global_0);
    v24 = notify_post("com.apple.webinspectord.available");
    v25 = RWIDefaultLog(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v43 = "com.apple.webinspectord.available";
      _os_log_impl(&dword_273C9C000, v25, OS_LOG_TYPE_INFO, "notify post for %s", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v23 selector:sel__developerPreferencesChanged name:@"_SFDeveloperPreferencesDidChangeNotification" object:0];

    if (isInternalInstall(v27, v28))
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __16__RWIRelay_init__block_invoke_18;
      v32[3] = &unk_279EAC0D0;
      v33 = v23;
      v29 = MEMORY[0x277D85CD0];
      notify_register_dispatch("com.apple.webinspectord.debug_dump_state", &out_token, MEMORY[0x277D85CD0], v32);
    }

    v30 = v23;
  }

  return v2;
}

uint64_t __16__RWIRelay_init__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = RWIDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "com.apple.webinspectord.enabled";
    _os_log_impl(&dword_273C9C000, v2, OS_LOG_TYPE_INFO, "notify handler for %s", &v4, 0xCu);
  }

  return [*(*(a1 + 32) + 48) relay:*(a1 + 32) remoteInspectionEnablementDidChange:1];
}

void __16__RWIRelay_init__block_invoke_10(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = RWIDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "com.apple.webinspectord.disabled";
    _os_log_impl(&dword_273C9C000, v2, OS_LOG_TYPE_INFO, "notify handler for %s", &v3, 0xCu);
  }

  [*(a1 + 32) _setGlobalNotifyStateWithAutomaticInspectionEnabled:0];
  [*(*(a1 + 32) + 48) relay:*(a1 + 32) remoteInspectionEnablementDidChange:0];
  exit(0);
}

uint64_t __16__RWIRelay_init__block_invoke_12(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = RWIDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "com.apple.webinspectord.availability_check";
    _os_log_impl(&dword_273C9C000, v1, OS_LOG_TYPE_INFO, "notify handler for %s", &v3, 0xCu);
  }

  return notify_post("com.apple.webinspectord.available");
}

uint64_t __16__RWIRelay_init__block_invoke_18(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = RWIDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "com.apple.webinspectord.debug_dump_state";
    _os_log_impl(&dword_273C9C000, v2, OS_LOG_TYPE_INFO, "notify handler for %s", &v4, 0xCu);
  }

  return [*(a1 + 32) _handleDumpStateNotification];
}

- (void)setup
{
  [(RWIRelayDelegate *)self->_delegate relayInitialize:self];
  delegate = self->_delegate;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[RWIRelayDelegate relay:remoteInspectionEnablementDidChange:](delegate, "relay:remoteInspectionEnablementDidChange:", self, [standardUserDefaults BOOLForKey:@"RemoteInspectorEnabled"]);
}

- (void)shutdownIfDisabled
{
  if (MGGetSInt32Answer() != 7)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults BOOLForKey:@"RemoteInspectorEnabled"];

    if ((v4 & 1) == 0)
    {
      v6 = RWIDefaultLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_273C9C000, v6, OS_LOG_TYPE_DEFAULT, "Shutting Down, Preference Disabled", v7, 2u);
      }

      [(RWIRelay *)self _setGlobalNotifyStateWithAutomaticInspectionEnabled:0];
      notify_post("com.apple.webinspectord.disabled");
      exit(0);
    }
  }
}

- (id)_allApplicationDetails
{
  v21 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_applicationConnections;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v9, v14];
        dictionaryRepresentation = [v10 dictionaryRepresentation];
        [dictionary setObject:dictionaryRepresentation forKey:v9];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  v18 = @"WIRApplicationDictionaryKey";
  v19 = dictionary;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  return v12;
}

- (id)_allDriverDetails
{
  v21 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_driverInterfaces;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_driverInterfaces objectForKey:v9, v14];
        dictionaryRepresentation = [v10 dictionaryRepresentation];
        [dictionary setObject:dictionaryRepresentation forKey:v9];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  v18 = @"WIRDriverDictionaryKey";
  v19 = dictionary;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  return v12;
}

- (void)_setGlobalNotifyStateWithAutomaticInspectionEnabled:(BOOL)enabled
{
  LODWORD(v3) = enabled;
  v10 = *MEMORY[0x277D85DE8];
  if (_setGlobalNotifyStateWithAutomaticInspectionEnabled__sToken || (self = notify_register_check("com.apple.webinspectord.automatic_inspection_enabled", &_setGlobalNotifyStateWithAutomaticInspectionEnabled__sToken), !self))
  {
    v4 = RWIDefaultLog(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v3;
      _os_log_impl(&dword_273C9C000, v4, OS_LOG_TYPE_DEFAULT, "Automatic Inspection Configuration Changed : enabled(%d)", v9, 8u);
    }

    v3 = v3;
    v7 = isInternalInstall(v5, v6);
    if (v7)
    {
      if (isSimulatingCustomerInstall(v7, v8))
      {
        v3 = v3 | 0x8000000000000000;
      }
    }

    notify_set_state(_setGlobalNotifyStateWithAutomaticInspectionEnabled__sToken, v3);
  }
}

- (void)_dumpClientConnection:(id)connection withOrdinal:(unint64_t)ordinal
{
  v21 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = isKindOfClass;
  v8 = RWIMessageDumpStateLog(isKindOfClass);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [connectionCopy tag];
    if (v7)
    {
      v10 = @"TCP";
    }

    else
    {
      v10 = @"XPC";
    }

    sleeping = [connectionCopy sleeping];
    v12 = @"NO";
    v13 = 134218754;
    ordinalCopy = ordinal;
    v15 = 2114;
    if (sleeping)
    {
      v12 = @"YES";
    }

    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2114;
    v20 = v12;
    _os_log_debug_impl(&dword_273C9C000, v8, OS_LOG_TYPE_DEBUG, "  %zu: Client[%{public}@] type[%{public}@] sleeping[%{public}@]", &v13, 0x2Au);
  }
}

- (void)_dumpApplication:(id)application withOrdinal:(unint64_t)ordinal
{
  v22 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v6 = [applicationCopy isProxy];
  if (v6)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"isProxied[YES, via %d]", objc_msgSend(applicationCopy, "hostApplicationPID")];
    v7 = v6;
  }

  else
  {
    v7 = @"isProxied[NO]";
  }

  v8 = RWIMessageDumpStateLog(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    identifier = [applicationCopy identifier];
    hasRemoteDebugSession = [applicationCopy hasRemoteDebugSession];
    v13 = @"NO";
    *buf = 134218754;
    ordinalCopy = ordinal;
    v16 = 2114;
    if (hasRemoteDebugSession)
    {
      v13 = @"YES";
    }

    v17 = identifier;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v13;
    _os_log_debug_impl(&dword_273C9C000, v8, OS_LOG_TYPE_DEBUG, "  %zu: Application[%{public}@] %{public}@ hasRemoteDebugSession[%{public}@]", buf, 0x2Au);
  }

  v10 = RWIMessageDumpStateLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [RWIRelay _dumpApplication:applicationCopy withOrdinal:?];
  }
}

- (void)_handleDumpStateNotification
{
  [*(self + 56) count];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_reportCurrentStateToAllClients
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [(RWIRelay *)self _reportCurrentStateToClient:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_reportCurrentStateToClient:(id)client
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBD0];
  clientCopy = client;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"RemoteAutomationEnabled"];

  v7 = @"WIRAutomationAvailabilityNotAvailable";
  if (v6)
  {
    v7 = @"WIRAutomationAvailabilityAvailable";
  }

  v11 = @"WIRAutomationAvailabilityKey";
  v12[0] = v7;
  v8 = MEMORY[0x277CBEAC0];
  v9 = v7;
  v10 = [v8 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [clientCopy _rpc_reportCurrentState:v10];
}

- (void)_rpc_reportIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [identifierCopy objectForKeyedSubscript:@"RWIServiceConnectionKey"];
    [(RWIRelay *)self _finalizePendingClientConnection:v5 withIdentifier:v4];
  }

  else
  {
    v6 = objc_opt_class();
    logUnexpectedType(v6, v5);
  }
}

- (void)_rpc_getConnectedApplications:(id)applications
{
  v4 = [applications objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v4];
    if (v5)
    {
      _allApplicationDetails = [(RWIRelay *)self _allApplicationDetails];
      [v5 _rpc_reportConnectedApplicationList:_allApplicationDetails];
    }

    else
    {
      _allApplicationDetails = RWIDefaultLog(0);
      if (os_log_type_enabled(_allApplicationDetails, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_getConnectedApplications:];
      }
    }
  }

  else
  {
    v7 = objc_opt_class();
    logUnexpectedType(v7, v5);
  }
}

- (void)_rpc_forwardGetListing:(id)listing
{
  listingCopy = listing;
  v4 = [listingCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    connection = [v5 connection];
    v7 = [listingCopy dictionaryWithValuesForKeys:&unk_2882BC7E0];
    [connection sendMessage:@"WIRApplicationGetListingMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardWakeUpDebuggables:(id)debuggables
{
  debuggablesCopy = debuggables;
  v4 = [debuggablesCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    connection = [v5 connection];
    v7 = [debuggablesCopy dictionaryWithValuesForKeys:&unk_2882BC7F8];
    [connection sendMessage:@"WIRApplicationWakeUpDebuggablesMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardIndicateWebView:(id)view
{
  viewCopy = view;
  v4 = [viewCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    connection = [v5 connection];
    v7 = [viewCopy dictionaryWithValuesForKeys:&unk_2882BC810];
    [connection sendMessage:@"WIRIndicateMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardDidClose:(id)close
{
  closeCopy = close;
  v4 = [closeCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    connection = [v5 connection];
    v7 = [closeCopy dictionaryWithValuesForKeys:&unk_2882BC828];
    [connection sendMessage:@"WIRWebPageCloseMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardSocketSetup:(id)setup
{
  v30 = *MEMORY[0x277D85DE8];
  setupCopy = setup;
  v5 = [setupCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [setupCopy objectForKeyedSubscript:@"WIRPageIdentifierKey"];
    v7 = objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v7 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v5];
      connection = [v7 connection];
      v9 = [setupCopy dictionaryWithValuesForKeys:&unk_2882BC840];
      [connection sendMessage:@"WIRSocketSetupMessage" userInfo:v9];

      if ([(NSMutableDictionary *)self->_automaticInspectionSessions count])
      {
        [(NSMutableDictionary *)self->_automaticInspectionSessions allValues];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = v26 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v23 + 1) + 8 * i);
              v16 = [v15 matchesPageId:v6 applicationIdentifier:{v5, v23}];
              if (v16)
              {
                v19 = RWIDefaultLog(v16);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  identifier = [v15 identifier];
                  *buf = 138543362;
                  v28 = identifier;
                  _os_log_impl(&dword_273C9C000, v19, OS_LOG_TYPE_DEFAULT, "Automatic Inspection Candidate ACCEPT : Session (%{public}@)", buf, 0xCu);
                }

                automaticInspectionSessions = self->_automaticInspectionSessions;
                identifier2 = [v15 identifier];
                [(NSMutableDictionary *)automaticInspectionSessions removeObjectForKey:identifier2];

                goto LABEL_18;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }
    }

    else
    {
      v18 = objc_opt_class();
      logUnexpectedType(v18, v7);
    }
  }

  else
  {
    v17 = objc_opt_class();
    logUnexpectedType(v17, v6);
  }
}

- (void)_rpc_forwardSocketData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    connection = [v5 connection];
    v7 = [dataCopy dictionaryWithValuesForKeys:&unk_2882BC858];
    [connection sendMessage:@"WIRSocketDataMessage" userInfo:v7];
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_forwardAutomaticInspectionConfiguration:(id)configuration
{
  v25[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = [configurationCopy objectForKeyedSubscript:@"WIRAutomaticInspectionEnabledKey"];
  v6 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = objc_opt_class();
    logUnexpectedType(v10, v6);
    goto LABEL_15;
  }

  v6 = [configurationCopy objectForKeyedSubscript:@"RWIServiceConnectionKey"];
  bOOLValue = [v5 BOOLValue];
  automaticInspectionDebuggers = self->_automaticInspectionDebuggers;
  if (bOOLValue)
  {
    v9 = [(NSMutableArray *)automaticInspectionDebuggers count];
    [(NSMutableArray *)self->_automaticInspectionDebuggers addObject:v6];
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    removeObjectFromArray(automaticInspectionDebuggers, v6);
    if ([(NSMutableArray *)self->_automaticInspectionDebuggers count])
    {
      goto LABEL_15;
    }
  }

  [(RWIRelay *)self _setGlobalNotifyStateWithAutomaticInspectionEnabled:bOOLValue];
  v24 = @"WIRAutomaticInspectionEnabledKey";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  v25[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  allValues = [(NSMutableDictionary *)self->_applicationConnections allValues];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(allValues);
        }

        connection = [*(*(&v19 + 1) + 8 * v17) connection];
        [connection sendMessage:@"WIRAutomaticInspectionConfigurationMessage" userInfo:v12];

        ++v17;
      }

      while (v15 != v17);
      v15 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

LABEL_15:
}

- (void)_rpc_forwardAutomaticInspectionRejection:(id)rejection
{
  rejectionCopy = rejection;
  v4 = [rejectionCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [rejectionCopy objectForKeyedSubscript:@"WIRAutomaticInspectionSessionIdentifierKey"];
    v6 = objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v6 = [(NSMutableDictionary *)self->_automaticInspectionSessions objectForKey:v5];
      if ([v6 receivedRejectResponse])
      {
        v7 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
        connection = [v7 connection];
        v9 = [rejectionCopy dictionaryWithValuesForKeys:&unk_2882BC870];
        [connection sendMessage:@"WIRAutomaticInspectionRejectMessage" userInfo:v9];

        [(NSMutableDictionary *)self->_automaticInspectionSessions removeObjectForKey:v6];
      }
    }

    else
    {
      v11 = objc_opt_class();
      logUnexpectedType(v11, v6);
    }
  }

  else
  {
    v10 = objc_opt_class();
    logUnexpectedType(v10, v5);
  }
}

- (void)_rpc_forwardDriverStateChangeRequest:(id)request
{
  v15[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [requestCopy objectForKeyedSubscript:@"WIRDriverIsActiveKey"];
    v7 = objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v8 = [(NSMutableDictionary *)self->_driverInterfaces objectForKey:v5];
      connection = [v8 connection];
      v14[1] = @"WIRDriverIsActiveKey";
      v15[0] = v5;
      v14[0] = @"WIRDriverIdentifierKey";
      v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "BOOLValue")}];
      v15[1] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
      [connection _rpc_requestDriverStateChange:v11];
    }

    else
    {
      v13 = objc_opt_class();
      logUnexpectedType(v13, v7);
    }
  }

  else
  {
    v12 = objc_opt_class();
    logUnexpectedType(v12, v6);
  }
}

- (void)_rpc_reportDriverConnected:(id)connected
{
  connectedCopy = connected;
  v5 = [connectedCopy objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [RWIDriverConfiguration decodeFromPayload:connectedCopy];
    if (v6)
    {
      v7 = [RWIDriverState decodeFromPayload:connectedCopy];
      if (v7)
      {
        v8 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v5];
        v9 = [[_RWIDriverInterfaceInfo alloc] initWithConfiguration:v6 connection:v8];
        [(_RWIDriverInterfaceInfo *)v9 updateDriverState:v7];
        [(RWIRelay *)self _driverConnected:v9];
      }

      else
      {
        v11 = RWIDefaultLog(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [RWIRelay _rpc_reportDriverConnected:];
        }
      }
    }

    else
    {
      v7 = RWIDefaultLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_reportDriverConnected:];
      }
    }
  }

  else
  {
    v10 = objc_opt_class();
    logUnexpectedType(v10, v6);
  }
}

- (void)_rpc_reportDriverUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = [updatedCopy objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
  v6 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = [RWIDriverState decodeFromPayload:updatedCopy];
    if (v6)
    {
      v7 = [(NSMutableDictionary *)self->_driverInterfaces objectForKey:v5];
      [v7 updateDriverState:v6];
      [(RWIRelay *)self _driverUpdated:v7];
    }

    else
    {
      v9 = RWIDefaultLog(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_reportDriverConnected:];
      }
    }
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v6);
  }
}

- (void)_rpc_reportDriverDisconnected:(id)disconnected
{
  v4 = [disconnected objectForKeyedSubscript:@"WIRDriverIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_driverInterfaces objectForKey:v4];
    if (v5)
    {
      [(RWIRelay *)self _driverDisconnected:v5];
    }

    else
    {
      v7 = RWIDefaultLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_reportDriverDisconnected:];
      }
    }
  }

  else
  {
    v6 = objc_opt_class();
    logUnexpectedType(v6, v5);
  }
}

- (void)_rpc_getConnectedDrivers:(id)drivers
{
  v4 = [drivers objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v4];
    if (v5)
    {
      _allDriverDetails = [(RWIRelay *)self _allDriverDetails];
      [v5 _rpc_reportConnectedDriverList:_allDriverDetails];
    }

    else
    {
      _allDriverDetails = RWIDefaultLog(0);
      if (os_log_type_enabled(_allDriverDetails, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_getConnectedApplications:];
      }
    }
  }

  else
  {
    v7 = objc_opt_class();
    logUnexpectedType(v7, v5);
  }
}

- (void)_rpc_forwardAutomationSessionRequest:(id)request
{
  requestCopy = request;
  v4 = [requestCopy objectForKeyedSubscript:@"WIRApplicationIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v4];
    delegate = self->_delegate;
    bundleId = [v5 bundleId];
    [(RWIRelayDelegate *)delegate relay:self activateApplicationWithBundleIdentifier:bundleId];

    connection = [v5 connection];
    v9 = [requestCopy dictionaryWithValuesForKeys:&unk_2882BC888];
    [connection sendMessage:@"WIRAutomationSessionRequestMessage" userInfo:v9];
  }

  else
  {
    v10 = objc_opt_class();
    logUnexpectedType(v10, v5);
  }
}

- (void)_rpc_requestApplicationLaunch:(id)launch
{
  v6 = [launch objectForKeyedSubscript:@"WIRApplicationBundleIdentifierKey"];
  v4 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(RWIRelayDelegate *)self->_delegate relay:self activateApplicationWithBundleIdentifier:v6];
  }

  else
  {
    v5 = objc_opt_class();
    logUnexpectedType(v5, v4);
  }
}

- (void)_rpc_debuggerWillSleep:(id)sleep
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [sleep objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v4];
    v6 = RWIDefaultLog(v5);
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = v5;
        _os_log_impl(&dword_273C9C000, v7, OS_LOG_TYPE_DEFAULT, "Client Connection will sleep: %{public}@", &v9, 0xCu);
      }

      [v5 setSleeping:1];
      [(RWIRelayDelegate *)self->_delegate relayClientConnectionDidChange:self];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_getConnectedApplications:];
      }
    }
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_rpc_debuggerDidWake:(id)wake
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [wake objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v5 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v5 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v4];
    v6 = RWIDefaultLog(v5);
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = v5;
        _os_log_impl(&dword_273C9C000, v7, OS_LOG_TYPE_DEFAULT, "Client Connection did wake: %{public}@", &v9, 0xCu);
      }

      [v5 setSleeping:0];
      [(RWIRelayDelegate *)self->_delegate relayClientConnectionDidChange:self];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _rpc_getConnectedApplications:];
      }
    }
  }

  else
  {
    v8 = objc_opt_class();
    logUnexpectedType(v8, v5);
  }
}

- (void)_proxyApplicationConnected:(id)connected
{
  v17 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  v5 = RWIDefaultLog(connectedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [connectedCopy pid];
    identifier = [connectedCopy identifier];
    bundleId = [connectedCopy bundleId];
    v12[0] = 67109635;
    v12[1] = v6;
    v13 = 2114;
    v14 = identifier;
    v15 = 2113;
    v16 = bundleId;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Proxy Application Connected: %d - %{public}@ - %{private}@", v12, 0x1Cu);
  }

  pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
  identifier2 = [connectedCopy identifier];
  [(NSMutableDictionary *)pendingProxyApplicationConnections setObject:connectedCopy forKey:identifier2];

  connection = [connectedCopy connection];
  [connection sendMessage:@"WIRProxyApplicationSetupMessage" userInfo:0];
}

- (void)_proxyApplicationResponse:(id)response userInfo:(id)info
{
  v33 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  infoCopy = info;
  v8 = RWIDefaultLog(infoCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [responseCopy pid];
    identifier = [responseCopy identifier];
    bundleId = [responseCopy bundleId];
    v29 = 67109635;
    *v30 = v9;
    *&v30[4] = 2114;
    *&v30[6] = identifier;
    v31 = 2113;
    v32 = bundleId;
    _os_log_impl(&dword_273C9C000, v8, OS_LOG_TYPE_DEFAULT, "Proxy Application Response: %d - %{public}@ - %{private}@", &v29, 0x1Cu);
  }

  pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
  identifier2 = [responseCopy identifier];
  v14 = [(NSMutableDictionary *)pendingProxyApplicationConnections objectForKey:identifier2];

  if (v14)
  {
    v16 = self->_pendingProxyApplicationConnections;
    identifier3 = [responseCopy identifier];
    [(NSMutableDictionary *)v16 removeObjectForKey:identifier3];

    connection3 = [infoCopy objectForKeyedSubscript:@"WIRProxyApplicationParentPID"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v25 = RWIDefaultLog(isKindOfClass);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_273C9C000, v25, OS_LOG_TYPE_DEFAULT, "Proxy setup response message missing data", &v29, 2u);
      }

      connection = [responseCopy connection];
      [(RWIRelay *)self _disconnectApplicationConnect:connection];
      goto LABEL_19;
    }

    connection = [infoCopy objectForKeyedSubscript:@"WIRProxyApplicationParentAuditData"];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();
    if ((v21 & 1) != 0 && (v21 = [connection length]) != 0)
    {
      v22 = [connection length];
      if (v22 == 32)
      {
        [responseCopy setHostApplicationPID:{objc_msgSend(connection3, "unsignedLongValue")}];
        [(RWIRelay *)self _applicationConnected:responseCopy];
LABEL_19:

        goto LABEL_20;
      }

      v26 = RWIDefaultLog(v22);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        v27 = "Proxy setup response audit data does not appear to be valid.";
        goto LABEL_17;
      }
    }

    else
    {
      v26 = RWIDefaultLog(v21);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        v27 = "Proxy setup response message missing data";
LABEL_17:
        _os_log_impl(&dword_273C9C000, v26, OS_LOG_TYPE_DEFAULT, v27, &v29, 2u);
      }
    }

    connection2 = [responseCopy connection];
    [(RWIRelay *)self _disconnectApplicationConnect:connection2];

    goto LABEL_19;
  }

  v23 = RWIDefaultLog(v15);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    identifier4 = [responseCopy identifier];
    v29 = 138543362;
    *v30 = identifier4;
    _os_log_impl(&dword_273C9C000, v23, OS_LOG_TYPE_DEFAULT, "Attempted to Complete Setup of a Proxy Connection not found in Pending Proxy Connections: %{public}@", &v29, 0xCu);
  }

  connection3 = [responseCopy connection];
  [(RWIRelay *)self _disconnectApplicationConnect:connection3];
LABEL_20:
}

- (void)_applicationUpdated:(id)updated
{
  v26 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = RWIDefaultLog(updatedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [updatedCopy pid];
    identifier = [updatedCopy identifier];
    bundleId = [updatedCopy bundleId];
    *buf = 67109635;
    v21 = v6;
    v22 = 2114;
    v23 = identifier;
    v24 = 2113;
    v25 = bundleId;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_INFO, "Application Updated: %d - %{public}@ - %{private}@", buf, 0x1Cu);
  }

  dictionaryRepresentation = [updatedCopy dictionaryRepresentation];
  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v15 + 1) + 8 * v14++) _rpc_applicationUpdated:dictionaryRepresentation];
      }

      while (v12 != v14);
      v12 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [(RWIRelayDelegate *)self->_delegate relay:self applicationUpdated:updatedCopy];
}

- (void)_applicationConnected:(id)connected
{
  v29 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  v5 = RWIDefaultLog(connectedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [connectedCopy pid];
    identifier = [connectedCopy identifier];
    bundleId = [connectedCopy bundleId];
    *buf = 67109635;
    v24 = v6;
    v25 = 2114;
    v26 = identifier;
    v27 = 2113;
    v28 = bundleId;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Application Connected: %d - %{public}@ - %{private}@", buf, 0x1Cu);
  }

  applicationConnections = self->_applicationConnections;
  identifier2 = [connectedCopy identifier];
  [(NSMutableDictionary *)applicationConnections setObject:connectedCopy forKey:identifier2];

  if ([(NSMutableArray *)self->_automaticInspectionDebuggers count])
  {
    connection = [connectedCopy connection];
    [connection sendMessage:@"WIRAutomaticInspectionConfigurationMessage" userInfo:&unk_2882BC8B8];
  }

  dictionaryRepresentation = [connectedCopy dictionaryRepresentation];
  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v18 + 1) + 8 * v17++) _rpc_applicationConnected:dictionaryRepresentation];
      }

      while (v15 != v17);
      v15 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }

  [(RWIRelayDelegate *)self->_delegate relay:self applicationConnected:connectedCopy];
}

- (void)_applicationDisconnected:(id)disconnected
{
  v28 = *MEMORY[0x277D85DE8];
  disconnectedCopy = disconnected;
  v5 = RWIDefaultLog(disconnectedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [disconnectedCopy pid];
    identifier = [disconnectedCopy identifier];
    bundleId = [disconnectedCopy bundleId];
    *buf = 67109635;
    v23 = v6;
    v24 = 2114;
    v25 = identifier;
    v26 = 2113;
    v27 = bundleId;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Application Disconnected: %d - %{public}@ - %{private}@", buf, 0x1Cu);
  }

  dictionaryRepresentation = [disconnectedCopy dictionaryRepresentation];
  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v17 + 1) + 8 * v14++) _rpc_applicationDisconnected:dictionaryRepresentation];
      }

      while (v12 != v14);
      v12 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  applicationConnections = self->_applicationConnections;
  identifier2 = [disconnectedCopy identifier];
  [(NSMutableDictionary *)applicationConnections removeObjectForKey:identifier2];

  [(RWIRelayDelegate *)self->_delegate relay:self applicationDisconnected:disconnectedCopy];
}

- (void)_disconnectApplicationConnect:(id)connect
{
  connectCopy = connect;
  [connectCopy sendMessage:@"WIRPermissionDenied" userInfo:0];
  [connectCopy setDelegate:0];
}

- (void)_handleApplicationListenConnectionEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (MEMORY[0x2743DBE80]() == MEMORY[0x277D86450])
  {
    v5 = eventCopy;
    xpc_connection_get_audit_token();
    pid = xpc_connection_get_pid(v5);
    v7 = [[_RWIRelayConnectionToApplication alloc] initWithConnection:v5];
    [(_RWIRelayConnectionToApplication *)v7 setDelegate:self];
    v8 = [_RWIApplicationInfo identifierForPID:pid];
    v9 = [(NSMutableDictionary *)self->_applicationConnections objectForKey:v8];

    if (!v9)
    {
      memset(buf, 0, 32);
      v10 = CPCopyBundleIdentifierAndTeamFromAuditToken();
      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v12 = MEMORY[0x277CCACA8];
        v13 = processNameForPID();
        v11 = [v12 stringWithFormat:@"process-%@", v13];
      }

      v14 = RWIDefaultLog(v10);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109379;
        *&buf[4] = pid;
        *&buf[8] = 2113;
        *&buf[10] = v11;
        _os_log_impl(&dword_273C9C000, v14, OS_LOG_TYPE_DEFAULT, "XPC Application Connection Event: %d - %{private}@", buf, 0x12u);
      }

      v15 = [(RWIRelayDelegate *)self->_delegate relay:self applicationInfoForIncomingConnection:v7 bundleIdentifier:v11];
      if (v15)
      {
        [(_RWIRelayConnectionToApplication *)v7 setTag:v8];
        if ([v15 isProxy])
        {
          [(RWIRelay *)self _proxyApplicationConnected:v15];
        }

        else
        {
          [(RWIRelay *)self _applicationConnected:v15];
        }
      }

      else
      {
        [(RWIRelay *)self _disconnectApplicationConnect:v7];
      }
    }
  }
}

- (void)_addPendingClientConnection:(id)connection
{
  v8 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = RWIDefaultLog(connectionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = connectionCopy;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Received Pending Client Connection: %{public}@", &v6, 0xCu);
  }

  [(NSMutableArray *)self->_pendingClientConnections addObject:connectionCopy];
}

- (void)_finalizePendingClientConnection:(id)connection withIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  identifierCopy = identifier;
  v8 = RWIDefaultLog(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = connectionCopy;
    _os_log_impl(&dword_273C9C000, v8, OS_LOG_TYPE_DEFAULT, "Finalized Client Connection: %{public}@", &v14, 0xCu);
  }

  v9 = removeObjectFromArray(self->_pendingClientConnections, connectionCopy);
  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_clientConnections objectForKeyedSubscript:identifierCopy];

    if (v10)
    {
      _allDriverDetails = RWIDefaultLog(v11);
      if (os_log_type_enabled(_allDriverDetails, OS_LOG_TYPE_ERROR))
      {
        [RWIRelay _finalizePendingClientConnection:withIdentifier:];
      }
    }

    else
    {
      [connectionCopy setTag:identifierCopy];
      MEMORY[0x2743DBE90]([(NSMutableDictionary *)self->_clientConnections setObject:connectionCopy forKey:identifierCopy]);
      [(RWIRelay *)self _reportCurrentStateToClient:connectionCopy];
      _allApplicationDetails = [(RWIRelay *)self _allApplicationDetails];
      [connectionCopy _rpc_reportConnectedApplicationList:_allApplicationDetails];

      _allDriverDetails = [(RWIRelay *)self _allDriverDetails];
      [connectionCopy _rpc_reportConnectedDriverList:_allDriverDetails];
    }
  }

  else
  {
    _allDriverDetails = RWIDefaultLog(v9);
    if (os_log_type_enabled(_allDriverDetails, OS_LOG_TYPE_ERROR))
    {
      [RWIRelay _finalizePendingClientConnection:withIdentifier:];
    }
  }
}

- (void)clientConnectionDidClose:(id)close
{
  v37[1] = *MEMORY[0x277D85DE8];
  closeCopy = close;
  v5 = [closeCopy tag];

  if (v5)
  {
    v36 = @"WIRConnectionIdentifierKey";
    v6 = [closeCopy tag];
    v37[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];

    allValues = [(NSMutableDictionary *)self->_applicationConnections allValues];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = [allValues countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          connection = [*(*(&v30 + 1) + 8 * i) connection];
          [connection sendMessage:@"WIRConnectionDiedMessage" userInfo:v7];
        }

        v10 = [allValues countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v10);
    }

    clientConnections = self->_clientConnections;
    v15 = [closeCopy tag];
    [(NSMutableDictionary *)clientConnections removeObjectForKey:v15];

    v16 = removeObjectFromArray(self->_automaticInspectionDebuggers, closeCopy);
    MEMORY[0x2743DBEA0](v16);
    allValues2 = [(NSMutableDictionary *)self->_driverInterfaces allValues];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = [allValues2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(allValues2);
          }

          v22 = *(*(&v26 + 1) + 8 * j);
          connection2 = [v22 connection];

          if (connection2 == closeCopy)
          {
            [(RWIRelay *)self _driverDisconnected:v22];
          }
        }

        v19 = [allValues2 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }
  }

  else
  {
    removeObjectFromArray(self->_pendingClientConnections, closeCopy);
  }

  if (![(NSMutableDictionary *)self->_clientConnections count])
  {
    v24 = RWIDefaultLog(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_273C9C000, v24, OS_LOG_TYPE_DEFAULT, "Shutting Down, last client disconnected.", v25, 2u);
    }

    [(RWIRelay *)self _setGlobalNotifyStateWithAutomaticInspectionEnabled:0];
    exit(0);
  }
}

- (void)_driverConnected:(id)connected
{
  v30 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  v5 = RWIDefaultLog(connectedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [connectedCopy identifier];
    name = [connectedCopy name];
    isActive = [connectedCopy isActive];
    v9 = @"Inactive";
    *buf = 138543875;
    v25 = identifier;
    if (isActive)
    {
      v9 = @"Active";
    }

    v26 = 2113;
    v27 = name;
    v28 = 2114;
    v29 = v9;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Added Driver Interface: %{public}@ - %{private}@ (%{public}@)", buf, 0x20u);
  }

  driverInterfaces = self->_driverInterfaces;
  identifier2 = [connectedCopy identifier];
  [(NSMutableDictionary *)driverInterfaces setObject:connectedCopy forKey:identifier2];

  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(allValues);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        dictionaryRepresentation = [connectedCopy dictionaryRepresentation];
        [v17 _rpc_driverConnected:dictionaryRepresentation];

        ++v16;
      }

      while (v14 != v16);
      v14 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }
}

- (void)_driverUpdated:(id)updated
{
  v28 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = RWIDefaultLog(updatedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [updatedCopy identifier];
    name = [updatedCopy name];
    isActive = [updatedCopy isActive];
    v9 = @"Inactive";
    *buf = 138543875;
    v23 = identifier;
    if (isActive)
    {
      v9 = @"Active";
    }

    v24 = 2113;
    v25 = name;
    v26 = 2114;
    v27 = v9;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Updated Driver Interface %{public}@ - %{private}@ (%{public}@)", buf, 0x20u);
  }

  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        dictionaryRepresentation = [updatedCopy dictionaryRepresentation];
        [v15 _rpc_driverUpdated:dictionaryRepresentation];

        ++v14;
      }

      while (v12 != v14);
      v12 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (void)_driverDisconnected:(id)disconnected
{
  v30 = *MEMORY[0x277D85DE8];
  disconnectedCopy = disconnected;
  v5 = RWIDefaultLog(disconnectedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [disconnectedCopy identifier];
    name = [disconnectedCopy name];
    isActive = [disconnectedCopy isActive];
    v9 = @"Inactive";
    *buf = 138543875;
    v25 = identifier;
    if (isActive)
    {
      v9 = @"Active";
    }

    v26 = 2113;
    v27 = name;
    v28 = 2114;
    v29 = v9;
    _os_log_impl(&dword_273C9C000, v5, OS_LOG_TYPE_DEFAULT, "Removed Driver Interface %{public}@ - %{private}@ (%{public}@)", buf, 0x20u);
  }

  driverInterfaces = self->_driverInterfaces;
  identifier2 = [disconnectedCopy identifier];
  [(NSMutableDictionary *)driverInterfaces removeObjectForKey:identifier2];

  allValues = [(NSMutableDictionary *)self->_clientConnections allValues];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(allValues);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        dictionaryRepresentation = [disconnectedCopy dictionaryRepresentation];
        [v17 _rpc_driverDisconnected:dictionaryRepresentation];

        ++v16;
      }

      while (v14 != v16);
      v14 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }
}

- (void)xpcConnectionFailed:(id)failed
{
  failedCopy = failed;
  v5 = [failedCopy tag];

  if (v5)
  {
    applicationConnections = self->_applicationConnections;
    v7 = [failedCopy tag];
    v8 = [(NSMutableDictionary *)applicationConnections objectForKey:v7];

    v10 = RWIDefaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(RWIRelay *)v8 xpcConnectionFailed:v10];
    }

    if (v8)
    {
      [(RWIRelay *)self _applicationDisconnected:v8];
    }

    pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
    v12 = [failedCopy tag];
    [(NSMutableDictionary *)pendingProxyApplicationConnections removeObjectForKey:v12];
  }
}

- (void)xpcConnection:(id)connection receivedMessage:(id)message userInfo:(id)info
{
  connectionCopy = connection;
  messageCopy = message;
  infoCopy = info;
  v10 = [connectionCopy tag];

  if (v10)
  {
    if ([messageCopy isEqualToString:@"WIRRawDataMessage"])
    {
      [(RWIRelay *)self _receivedDataMessage:infoCopy connection:connectionCopy];
    }

    else if ([messageCopy isEqualToString:@"WIRListingMessage"])
    {
      [(RWIRelay *)self _receivedListingMessage:infoCopy connection:connectionCopy];
    }

    else if ([messageCopy isEqualToString:@"WIRProxyApplicationSetupResponseMessage"])
    {
      [(RWIRelay *)self _receivedProxyApplicationSetupResponseMessage:infoCopy connection:connectionCopy];
    }

    else if ([messageCopy isEqualToString:@"WIRAutomaticInspectionCandidateMessage"])
    {
      [(RWIRelay *)self _receivedAutomaticInspectionCandidate:infoCopy connection:connectionCopy];
    }

    else if ([messageCopy isEqualToString:@"WIRPingMessage"])
    {
      [(RWIRelay *)self _receivedPingMessage:infoCopy connection:connectionCopy];
    }
  }
}

- (void)_receivedDataMessage:(id)message connection:(id)connection
{
  v26[4] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  connectionCopy = connection;
  v8 = [messageCopy objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v9 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v9 = [messageCopy objectForKeyedSubscript:@"WIRRawDataKey"];
    v10 = objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v11 = [messageCopy objectForKeyedSubscript:@"WIRMessageDataTypeKey"];
      v12 = v11;
      v13 = @"WIRMessageDataTypeFull";
      if (v11)
      {
        v13 = v11;
      }

      v14 = v13;

      v10 = v14;
      v15 = objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        v16 = [messageCopy objectForKeyedSubscript:@"WIRDestinationKey"];
        v17 = objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v18 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v8];
          v25[0] = @"WIRMessageDataKey";
          v25[1] = @"WIRMessageDataTypeKey";
          v26[0] = v9;
          v26[1] = v10;
          v26[2] = v16;
          v25[2] = @"WIRDestinationKey";
          v25[3] = @"WIRApplicationIdentifierKey";
          v19 = [connectionCopy tag];
          v26[3] = v19;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
          [v18 _rpc_applicationSentData:v20];
        }

        else
        {
          v24 = objc_opt_class();
          logUnexpectedType(v24, v17);
        }
      }

      else
      {
        v23 = objc_opt_class();
        logUnexpectedType(v23, v15);
      }
    }

    else
    {
      v22 = objc_opt_class();
      logUnexpectedType(v22, v10);
    }
  }

  else
  {
    v21 = objc_opt_class();
    logUnexpectedType(v21, v9);
  }
}

- (void)_receivedListingMessage:(id)message connection:(id)connection
{
  v41[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  connectionCopy = connection;
  v8 = [messageCopy objectForKeyedSubscript:@"WIRConnectionIdentifierKey"];
  v9 = objc_opt_class();
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = objc_opt_class();
    logUnexpectedType(v20, v9);
  }

  else
  {

    v10 = [messageCopy objectForKeyedSubscript:@"WIRListingKey"];
    v11 = objc_opt_class();
    if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = objc_opt_class();
      logUnexpectedType(v21, v11);
    }

    else
    {

      pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
      v13 = [connectionCopy tag];
      v14 = [(NSMutableDictionary *)pendingProxyApplicationConnections objectForKey:v13];

      if (v10)
      {
        if (v14)
        {
          allValues = [v10 allValues];
          v16 = [allValues indexOfObjectPassingTest:&__block_literal_global_232];

          if (v16 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = self->_pendingProxyApplicationConnections;
            identifier = [v14 identifier];
            [(NSMutableDictionary *)v17 removeObjectForKey:identifier];

            [(RWIRelay *)self _applicationConnected:v14];
          }
        }
      }

      if (v8)
      {
        v19 = [(NSMutableDictionary *)self->_clientConnections objectForKey:v8];
      }

      else
      {
        v19 = 0;
      }

      if (v10)
      {
        v22 = v10;
      }

      else
      {
        v22 = MEMORY[0x277CBEC10];
      }

      v40[0] = @"WIRListingKey";
      v40[1] = @"WIRApplicationIdentifierKey";
      v41[0] = v22;
      v23 = [connectionCopy tag];
      v41[1] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];

      if (v19)
      {
        [v19 _rpc_applicationSentListing:v24];
      }

      else
      {
        v33 = v14;
        selfCopy = self;
        allValues2 = [(NSMutableDictionary *)self->_clientConnections allValues];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v26 = [allValues2 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v36;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v36 != v28)
              {
                objc_enumerationMutation(allValues2);
              }

              [*(*(&v35 + 1) + 8 * i) _rpc_applicationSentListing:v24];
            }

            v27 = [allValues2 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v27);
        }

        v14 = v33;
        self = selfCopy;
      }

      applicationConnections = self->_applicationConnections;
      v31 = [connectionCopy tag];
      v32 = [(NSMutableDictionary *)applicationConnections objectForKey:v31];

      if ([v32 updateFromListing:messageCopy])
      {
        [(RWIRelay *)self _applicationUpdated:v32];
      }
    }
  }
}

BOOL __47__RWIRelay__receivedListingMessage_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v3 = [v2 objectForKeyedSubscript:@"WIRHostApplicationIdentifierKey"];
    v4 = v3 != 0;
  }

  else
  {
    v5 = objc_opt_class();
    logUnexpectedType(v5, v3);
    v4 = 0;
  }

  return v4;
}

- (void)_receivedProxyApplicationSetupResponseMessage:(id)message connection:(id)connection
{
  messageCopy = message;
  pendingProxyApplicationConnections = self->_pendingProxyApplicationConnections;
  v7 = [connection tag];
  v8 = [(NSMutableDictionary *)pendingProxyApplicationConnections objectForKey:v7];

  if (v8)
  {
    [(RWIRelay *)self _proxyApplicationResponse:v8 userInfo:messageCopy];
  }
}

- (void)_receivedAutomaticInspectionCandidate:(id)candidate connection:(id)connection
{
  candidateCopy = candidate;
  connectionCopy = connection;
  v8 = [candidateCopy objectForKeyedSubscript:@"WIRPageIdentifierKey"];
  v9 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    applicationConnections = self->_applicationConnections;
    v11 = [connectionCopy tag];
    v9 = [(NSMutableDictionary *)applicationConnections objectForKey:v11];

    if (v9)
    {
      if ([(NSMutableArray *)self->_automaticInspectionDebuggers count])
      {
        v12 = [candidateCopy objectForKeyedSubscript:@"WIRTargetAllowsAutomaticInspectionInSameProcess"];
        v13 = objc_opt_class();
        if (v12 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = objc_opt_class();
          logUnexpectedType(v23, v13);

          v16 = v12;
        }

        else
        {

          v14 = [_RWIAutomaticInspectionSession alloc];
          v15 = [connectionCopy tag];
          v16 = -[_RWIAutomaticInspectionSession initWithPageId:applicationIdentifier:applicationPID:debuggers:shouldAllowSameProcess:](v14, "initWithPageId:applicationIdentifier:applicationPID:debuggers:shouldAllowSameProcess:", v8, v15, [v9 pid], self->_automaticInspectionDebuggers, -[_RWIAutomaticInspectionSession BOOLValue](v12, "BOOLValue"));

          automaticInspectionSessions = self->_automaticInspectionSessions;
          identifier = [(_RWIAutomaticInspectionSession *)v16 identifier];
          [(NSMutableDictionary *)automaticInspectionSessions setObject:v16 forKey:identifier];

          [(_RWIAutomaticInspectionSession *)v16 start];
        }
      }

      else
      {
        v20 = RWIDefaultLog(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v24[0] = 0;
          _os_log_impl(&dword_273C9C000, v20, OS_LOG_TYPE_DEFAULT, "Automatic Inspection Candidate REJECT : No Automatic Inspection Debuggers", v24, 2u);
        }

        connection = [v9 connection];
        v22 = [candidateCopy dictionaryWithValuesForKeys:&unk_2882BC8A0];
        [connection sendMessage:@"WIRAutomaticInspectionRejectMessage" userInfo:v22];
      }
    }
  }

  else
  {
    v19 = objc_opt_class();
    logUnexpectedType(v19, v9);
  }
}

- (void)_dumpApplication:(void *)a1 withOrdinal:.cold.1(void *a1)
{
  v2 = [a1 name];
  v8 = [a1 bundleId];
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)xpcConnectionFailed:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 pid];
  v5 = [a1 identifier];
  v6 = [a1 bundleId];
  v7[0] = 67109635;
  v7[1] = v4;
  v8 = 2114;
  v9 = v5;
  v10 = 2113;
  v11 = v6;
  _os_log_error_impl(&dword_273C9C000, a2, OS_LOG_TYPE_ERROR, "XPC Connection Failed for Application: %d - %{public}@ - %{private}@", v7, 0x1Cu);
}

@end