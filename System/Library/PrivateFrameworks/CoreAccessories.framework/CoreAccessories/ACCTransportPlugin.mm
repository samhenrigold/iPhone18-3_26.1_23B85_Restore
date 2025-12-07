@interface ACCTransportPlugin
- (ACCTransportPlugin)initWithDelegate:(id)delegate;
- (ACCTransportPluginManagerProtocol)delegate;
- (BOOL)connectedThroughAdapter:(id)adapter;
- (BOOL)destroyConnectionWithUUID:(id)d;
- (BOOL)destroyEndpointWithUUID:(id)d;
- (BOOL)processIncomingData:(id)data forEndpointWithUUID:(id)d;
- (BOOL)publishConnectionWithUUID:(id)d;
- (BOOL)routeOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD;
- (BOOL)sendOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD;
- (BOOL)setAccessoryInfo:(id)info forEndpointWithUUID:(id)d;
- (BOOL)setAuthenticationStatus:(int)status andCertificateData:(id)data authCTA:(BOOL)a forConnectionWithUUID:(id)d;
- (BOOL)setProperties:(id)properties forConnectionWithUUID:(id)d;
- (BOOL)setProperties:(id)properties forEndpointWithUUID:(id)d;
- (BOOL)setSupervisedTransportsRestricted:(BOOL)restricted forConnectionWithUUID:(id)d;
- (NSString)pluginClassAndName;
- (id)allConnectionUUIDs;
- (id)allEndpointsUUIDs;
- (id)certificateCapabilitiesForConnectionWithUUID:(id)d;
- (id)certificateDataForConnectionWithUUID:(id)d;
- (id)certificateSerialForConnectionWithUUID:(id)d;
- (id)certificateSerialStringForConnectionWithUUID:(id)d;
- (id)connectionUUIDForEndpointWithUUID:(id)d;
- (id)createConnectionWithType:(int)type andIdentifier:(id)identifier;
- (id)createEndpointWithTransportType:(int)type andProtocol:(int)protocol andIdentifier:(id)identifier forConnectionWithUUID:(id)d publishConnection:(BOOL)connection;
- (id)endpointUUIDsForConnectionWithUUID:(id)d;
- (id)identifierForConnectionWithUUID:(id)d;
- (id)identifierForEndpointWithUUID:(id)d;
- (id)propertiesForConnectionWithUUID:(id)d;
- (id)propertiesForEndpointWithUUID:(id)d;
- (int)authStatusForConnectionWithUUID:(id)d authType:(int)type;
- (int)connectionTypeForConnectionWithUUID:(id)d;
- (int)protocolForEndpointWithUUID:(id)d;
- (int)transportTypeForEndpointWithUUID:(id)d;
- (void)authStatusDidChangeHandler:(id)handler;
- (void)connectionPropertiesDidChangeHandler:(id)handler;
- (void)dealloc;
- (void)endpointPropertiesDidChangeHandler:(id)handler;
- (void)initPlugin;
- (void)setHandler:(id)handler forConnectionProperty:(id)property;
- (void)setHandler:(id)handler forEndpointProperty:(id)property;
- (void)startPlugin;
- (void)startSafeConnectionTransaction;
- (void)stopPlugin;
- (void)stopSafeConnectionTransaction;
@end

@implementation ACCTransportPlugin

- (void)startSafeConnectionTransaction
{
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(ACCTransportPlugin *)self delegate];
      [delegate3 startSafeConnectionTransaction];
    }
  }
}

- (ACCTransportPluginManagerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)allEndpointsUUIDs
{
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v4 = delegate, [(ACCTransportPlugin *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    allEndpointsUUIDs = [delegate2 allEndpointsUUIDs];
  }

  else
  {
    allEndpointsUUIDs = 0;
  }

  return allEndpointsUUIDs;
}

- (void)stopSafeConnectionTransaction
{
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(ACCTransportPlugin *)self delegate];
      [delegate3 stopSafeConnectionTransaction];
    }
  }
}

- (ACCTransportPlugin)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  init_logging();
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportPlugin initWithDelegate:?];
  }

  v17.receiver = self;
  v17.super_class = ACCTransportPlugin;
  v8 = [(ACCTransportPlugin *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [MEMORY[0x277CBEB58] set];
    activeConnectionUUIDs = v9->_activeConnectionUUIDs;
    v9->_activeConnectionUUIDs = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    connectionPropertyChangeHandlers = v9->_connectionPropertyChangeHandlers;
    v9->_connectionPropertyChangeHandlers = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    endpointPropertyChangeHandlers = v9->_endpointPropertyChangeHandlers;
    v9->_endpointPropertyChangeHandlers = v14;
  }

  return v9;
}

- (void)dealloc
{
  pluginClassAndName = [self pluginClassAndName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (NSString)pluginClassAndName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  pluginName = [(ACCTransportPlugin *)self pluginName];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v5, pluginName];

  return v7;
}

- (void)initPlugin
{
  pluginClassAndName = [self pluginClassAndName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)startPlugin
{
  pluginClassAndName = [self pluginClassAndName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)stopPlugin
{
  pluginClassAndName = [self pluginClassAndName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)authStatusDidChangeHandler:(id)handler
{
  handlerCopy = handler;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportPlugin authStatusDidChangeHandler:?];
  }

  if ([(ACCTransportPlugin *)self conformsToProtocol:&unk_283537440]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    userInfo = [handlerCopy userInfo];
    v9 = [userInfo objectForKey:@"ACCTransportPlugin_AuthStatusDidChangeNotification_ConnectionUUID"];

    userInfo2 = [handlerCopy userInfo];
    v11 = [userInfo2 objectForKey:@"ACCTransportPlugin_AuthStatusDidChangeNotification_AuthStatusOld"];
    intValue = [v11 intValue];

    userInfo3 = [handlerCopy userInfo];
    v14 = [userInfo3 objectForKey:@"ACCTransportPlugin_AuthStatusDidChangeNotification_AuthStatusNew"];
    intValue2 = [v14 intValue];

    userInfo4 = [handlerCopy userInfo];
    v17 = [userInfo4 objectForKey:@"ACCTransportPlugin_AuthStatusDidChangeNotification_AuthType"];
    intValue3 = [v17 intValue];

    userInfo5 = [handlerCopy userInfo];
    v20 = [userInfo5 objectForKey:@"ACCTransportPlugin_AuthStatusDidChangeNotification_ConnectionIsAuthenticated"];
    bOOLValue = [v20 BOOLValue];

    userInfo6 = [handlerCopy userInfo];
    v23 = [userInfo6 objectForKey:@"ACCTransportPlugin_AuthStatusDidChangeNotification_ConnectionWasAuthenticated"];
    bOOLValue2 = [v23 BOOLValue];

    [(ACCTransportPlugin *)self authStatusDidChange:intValue2 forConnectionWithUUID:v9 previousAuthStatus:intValue authType:intValue3 connectionIsAuthenticated:bOOLValue connectionWasAuthenticated:bOOLValue2];
  }
}

- (void)connectionPropertiesDidChangeHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportPlugin authStatusDidChangeHandler:?];
  }

  userInfo = [handlerCopy userInfo];
  v9 = [userInfo objectForKey:@"ACCTransportPlugin_PropertiesDidChangeNotification_ConnectionUUID"];

  activeConnectionUUIDs = [(ACCTransportPlugin *)self activeConnectionUUIDs];
  v33 = v9;
  LODWORD(v9) = [activeConnectionUUIDs containsObject:v9];

  if (v9)
  {
    userInfo2 = [handlerCopy userInfo];
    v12 = [userInfo2 objectForKey:@"ACCTransportPlugin_PropertiesDidChangeNotification_PropertiesOld"];

    v31 = handlerCopy;
    userInfo3 = [handlerCopy userInfo];
    v14 = [userInfo3 objectForKey:@"ACCTransportPlugin_PropertiesDidChangeNotification_PropertiesNew"];

    if ([(ACCTransportPlugin *)self conformsToProtocol:&unk_283537440]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(ACCTransportPlugin *)self propertiesDidChange:v14 forConnectionWithUUID:v33 previousProperties:v12];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    selfCopy = self;
    connectionPropertyChangeHandlers = [(ACCTransportPlugin *)self connectionPropertyChangeHandlers];
    allKeys = [connectionPropertyChangeHandlers allKeys];

    obj = allKeys;
    v17 = [allKeys countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      v20 = MEMORY[0x277D86220];
      v32 = *v38;
      do
      {
        v21 = 0;
        v35 = v18;
        do
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v37 + 1) + 8 * v21);
          v23 = [v14 objectForKey:v22];
          v24 = [v12 objectForKey:v22];
          if ((isNSObjectEqual(v23, v24) & 1) == 0)
          {
            v25 = gLogObjects;
            v26 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v27 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v42 = v25;
                v43 = 1024;
                LODWORD(v44) = v26;
                _os_log_error_impl(&dword_221CB0000, v20, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v28 = v20;
              v27 = v20;
              v19 = v32;
            }

            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v42 = v22;
              v43 = 2112;
              v44 = v23;
              v45 = 2112;
              v46 = v24;
              _os_log_debug_impl(&dword_221CB0000, v27, OS_LOG_TYPE_DEBUG, "Calling connection property did change handler for property: %@ (newValue: %@, oldValue: %@)", buf, 0x20u);
            }

            connectionPropertyChangeHandlers2 = [(ACCTransportPlugin *)selfCopy connectionPropertyChangeHandlers];
            v30 = [connectionPropertyChangeHandlers2 objectForKey:v22];

            if (v30)
            {
              (v30)[2](v30, v33, v22, v23, v24);
            }

            v18 = v35;
          }

          ++v21;
        }

        while (v18 != v21);
        v18 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v18);
    }

    handlerCopy = v31;
  }
}

- (void)endpointPropertiesDidChangeHandler:(id)handler
{
  v50 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportPlugin authStatusDidChangeHandler:?];
  }

  userInfo = [handlerCopy userInfo];
  v9 = [userInfo objectForKey:@"ACCTransportPlugin_PropertiesDidChangeNotification_ConnectionUUID"];

  activeConnectionUUIDs = [(ACCTransportPlugin *)self activeConnectionUUIDs];
  v35 = v9;
  LODWORD(v9) = [activeConnectionUUIDs containsObject:v9];

  if (v9)
  {
    userInfo2 = [handlerCopy userInfo];
    v34 = [userInfo2 objectForKey:@"ACCTransportPlugin_EndpointPropertiesDidChangeNotification_EndpointUUID"];

    userInfo3 = [handlerCopy userInfo];
    v13 = [userInfo3 objectForKey:@"ACCTransportPlugin_PropertiesDidChangeNotification_PropertiesOld"];

    v32 = handlerCopy;
    userInfo4 = [handlerCopy userInfo];
    v33 = [userInfo4 objectForKey:@"ACCTransportPlugin_PropertiesDidChangeNotification_PropertiesNew"];

    if ([(ACCTransportPlugin *)self conformsToProtocol:&unk_283537440]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(ACCTransportPlugin *)self propertiesDidChange:v33 forEndpointWithUUID:v34 previousProperties:v13 connectionUUID:v35];
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    selfCopy = self;
    endpointPropertyChangeHandlers = [(ACCTransportPlugin *)self endpointPropertyChangeHandlers];
    allKeys = [endpointPropertyChangeHandlers allKeys];

    obj = allKeys;
    v17 = [allKeys countByEnumeratingWithState:&v39 objects:v49 count:16];
    v18 = v33;
    if (v17)
    {
      v19 = v17;
      v20 = *v40;
      v21 = MEMORY[0x277D86220];
      do
      {
        v22 = 0;
        v37 = v19;
        do
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v39 + 1) + 8 * v22);
          v24 = [v18 objectForKey:v23];
          v25 = [v13 objectForKey:v23];
          if ((isNSObjectEqual(v24, v25) & 1) == 0)
          {
            v26 = gLogObjects;
            v27 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v28 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v44 = v26;
                v45 = 1024;
                LODWORD(v46) = v27;
                _os_log_error_impl(&dword_221CB0000, v21, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v29 = v21;
              v28 = v21;
              v18 = v33;
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v44 = v23;
              v45 = 2112;
              v46 = v24;
              v47 = 2112;
              v48 = v25;
              _os_log_debug_impl(&dword_221CB0000, v28, OS_LOG_TYPE_DEBUG, "Calling endpoint property did change handler for property: %@ (newValue: %@, oldValue: %@)", buf, 0x20u);
            }

            endpointPropertyChangeHandlers2 = [(ACCTransportPlugin *)selfCopy endpointPropertyChangeHandlers];
            v31 = [endpointPropertyChangeHandlers2 objectForKey:v23];

            if (v31)
            {
              (v31)[2](v31, v34, v23, v24, v25, v35);
            }

            v19 = v37;
          }

          ++v22;
        }

        while (v19 != v22);
        v19 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v19);
    }

    handlerCopy = v32;
  }
}

- (id)createConnectionWithType:(int)type andIdentifier:(id)identifier
{
  v4 = *&type;
  identifierCopy = identifier;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v8 = delegate, [(ACCTransportPlugin *)self delegate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v12 = [delegate2 createConnectionWithType:v4 andIdentifier:identifierCopy];

    if (v12)
    {
      activeConnectionUUIDs = [(ACCTransportPlugin *)self activeConnectionUUIDs];
      [activeConnectionUUIDs addObject:v12];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)setSupervisedTransportsRestricted:(BOOL)restricted forConnectionWithUUID:(id)d
{
  restrictedCopy = restricted;
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v8 = delegate, [(ACCTransportPlugin *)self delegate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v12 = [delegate2 setSupervisedTransportsRestricted:restrictedCopy forConnectionWithUUID:dCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)setProperties:(id)properties forConnectionWithUUID:(id)d
{
  propertiesCopy = properties;
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v9 = delegate, [(ACCTransportPlugin *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v13 = [delegate2 setProperties:propertiesCopy forConnectionWithUUID:dCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)setAuthenticationStatus:(int)status andCertificateData:(id)data authCTA:(BOOL)a forConnectionWithUUID:(id)d
{
  aCopy = a;
  v8 = *&status;
  dataCopy = data;
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v13 = delegate, [(ACCTransportPlugin *)self delegate], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_respondsToSelector(), v14, v13, (v15 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v17 = [delegate2 setAuthenticationStatus:v8 andCertificateData:dataCopy authCTA:aCopy forConnectionWithUUID:dCopy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)createEndpointWithTransportType:(int)type andProtocol:(int)protocol andIdentifier:(id)identifier forConnectionWithUUID:(id)d publishConnection:(BOOL)connection
{
  connectionCopy = connection;
  v9 = *&protocol;
  v10 = *&type;
  identifierCopy = identifier;
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v15 = delegate, [(ACCTransportPlugin *)self delegate], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_respondsToSelector(), v16, v15, (v17 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __120__ACCTransportPlugin_createEndpointWithTransportType_andProtocol_andIdentifier_forConnectionWithUUID_publishConnection___block_invoke;
    v21[3] = &unk_278485C40;
    v21[4] = self;
    v19 = [delegate2 createEndpointWithTransportType:v10 andProtocol:v9 andIdentifier:identifierCopy dataOutHandler:v21 forConnectionWithUUID:dCopy];

    if (v19 && connectionCopy)
    {
      [(ACCTransportPlugin *)self publishConnectionWithUUID:dCopy];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)setAccessoryInfo:(id)info forEndpointWithUUID:(id)d
{
  infoCopy = info;
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v9 = delegate, [(ACCTransportPlugin *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v13 = [delegate2 setAccessoryInfo:infoCopy forEndpointWithUUID:dCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)setProperties:(id)properties forEndpointWithUUID:(id)d
{
  propertiesCopy = properties;
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v9 = delegate, [(ACCTransportPlugin *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v13 = [delegate2 setProperties:propertiesCopy forEndpointWithUUID:dCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)publishConnectionWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 publishConnectionWithUUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)destroyEndpointWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 destroyEndpointWithUUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)destroyConnectionWithUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    activeConnectionUUIDs = [(ACCTransportPlugin *)self activeConnectionUUIDs];
    [activeConnectionUUIDs removeObject:dCopy];
  }

  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v7 = delegate, [(ACCTransportPlugin *)self delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v11 = [delegate2 destroyConnectionWithUUID:dCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)allConnectionUUIDs
{
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v4 = delegate, [(ACCTransportPlugin *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    allConnectionUUIDs = [delegate2 allConnectionUUIDs];
  }

  else
  {
    allConnectionUUIDs = 0;
  }

  return allConnectionUUIDs;
}

- (id)connectionUUIDForEndpointWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 connectionUUIDForEndpointWithUUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)endpointUUIDsForConnectionWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 endpointUUIDsForConnectionWithUUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int)authStatusForConnectionWithUUID:(id)d authType:(int)type
{
  v4 = *&type;
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v8 = delegate, [(ACCTransportPlugin *)self delegate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v12 = [delegate2 authStatusForConnectionWithUUID:dCopy authType:v4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int)connectionTypeForConnectionWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 connectionTypeForConnectionWithUUID:dCopy];
  }

  else
  {
    v10 = 11;
  }

  return v10;
}

- (id)certificateDataForConnectionWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 certificateDataForConnectionWithUUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)certificateSerialForConnectionWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 certificateSerialForConnectionWithUUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)certificateSerialStringForConnectionWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 certificateSerialStringForConnectionWithUUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)certificateCapabilitiesForConnectionWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 certificateCapabilitiesForConnectionWithUUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int)transportTypeForEndpointWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 transportTypeForEndpointWithUUID:dCopy];
  }

  else
  {
    v10 = 18;
  }

  return v10;
}

- (int)protocolForEndpointWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 protocolForEndpointWithUUID:dCopy];
  }

  else
  {
    v10 = 19;
  }

  return v10;
}

- (id)identifierForConnectionWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 identifierForConnectionWithUUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)identifierForEndpointWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 identifierForEndpointWithUUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)propertiesForConnectionWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 propertiesForConnectionWithUUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)propertiesForEndpointWithUUID:(id)d
{
  dCopy = d;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 propertiesForEndpointWithUUID:dCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setHandler:(id)handler forConnectionProperty:(id)property
{
  aBlock = handler;
  propertyCopy = property;
  if (propertyCopy)
  {
    connectionPropertyChangeHandlers = [(ACCTransportPlugin *)self connectionPropertyChangeHandlers];
    if (aBlock)
    {
      v8 = _Block_copy(aBlock);
      [connectionPropertyChangeHandlers setObject:v8 forKey:propertyCopy];
    }

    else
    {
      [connectionPropertyChangeHandlers removeObjectForKey:propertyCopy];
    }
  }
}

- (void)setHandler:(id)handler forEndpointProperty:(id)property
{
  aBlock = handler;
  propertyCopy = property;
  if (propertyCopy)
  {
    endpointPropertyChangeHandlers = [(ACCTransportPlugin *)self endpointPropertyChangeHandlers];
    if (aBlock)
    {
      v8 = _Block_copy(aBlock);
      [endpointPropertyChangeHandlers setObject:v8 forKey:propertyCopy];
    }

    else
    {
      [endpointPropertyChangeHandlers removeObjectForKey:propertyCopy];
    }
  }
}

- (BOOL)connectedThroughAdapter:(id)adapter
{
  adapterCopy = adapter;
  delegate = [(ACCTransportPlugin *)self delegate];
  if (delegate && (v6 = delegate, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    delegate2 = [(ACCTransportPlugin *)self delegate];
    v10 = [delegate2 connectedThroughAdapter:adapterCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)routeOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD
{
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  v11 = [(ACCTransportPlugin *)self conformsToProtocol:&unk_283537440]&& (objc_opt_respondsToSelector() & 1) != 0 && [(ACCTransportPlugin *)self sendOutgoingData:dataCopy forEndpointWithUUID:dCopy connectionUUID:iDCopy];

  return v11;
}

- (BOOL)sendOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD
{
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 2;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [ACCTransportPlugin sendOutgoingData:v13 forEndpointWithUUID:? connectionUUID:?];
  }

  return 0;
}

- (BOOL)processIncomingData:(id)data forEndpointWithUUID:(id)d
{
  dataCopy = data;
  dCopy = d;
  if (dataCopy && ([(ACCTransportPlugin *)self delegate], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, [(ACCTransportPlugin *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    delegate = [(ACCTransportPlugin *)self delegate];
    v13 = [delegate processIncomingData:dataCopy forEndpointWithUUID:dCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)initWithDelegate:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 pluginClassAndName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)authStatusDidChangeHandler:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 pluginClassAndName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)sendOutgoingData:(uint64_t)a1 forEndpointWithUUID:(NSObject *)a2 connectionUUID:.cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_221CB0000, a2, OS_LOG_TYPE_ERROR, "Class '%@' is missing implementation for the sendOutgoingData:forConnectionWithUUID: method!", v5, 0xCu);
}

@end