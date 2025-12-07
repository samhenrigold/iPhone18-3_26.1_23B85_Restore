@interface COMeshLocalNode
- (COCompanionLinkClientFactoryProtocol)companionLinkClientFactory;
- (COMeshLocalNode)initWithCompanionLinkClient:(id)client source:(id)source;
- (id)IDSIdentifier;
- (id)_createNodeForDevice:(id)device IDSIdentifier:(id)identifier configure:(id)configure;
- (id)_handleDiscoveryRecord:(id)record;
- (id)_nodeForIDSIdentifier:(id)identifier;
- (void)_handleActivation:(id)activation;
- (void)_handleEventIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options fromNode:(id)node;
- (void)_handleFoundDevice:(id)device;
- (void)_handleLostDevice:(id)device;
- (void)_handleLostNode:(id)node;
- (void)_handleRequestIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options responseHandler:(id)handler fromNode:(id)node at:(unint64_t)at;
- (void)_invalidateAndReintroduceNode:(id)node;
- (void)_updateListeningPort:(id)port;
- (void)activate;
- (void)setAcceptableCommands:(id)commands;
- (void)setCommands:(id)commands;
@end

@implementation COMeshLocalNode

- (COMeshLocalNode)initWithCompanionLinkClient:(id)client source:(id)source
{
  clientCopy = client;
  v18.receiver = self;
  v18.super_class = COMeshLocalNode;
  v7 = [(COMeshNode *)&v18 initWithCompanionLinkClient:clientCopy source:source];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    commands = v7->_commands;
    v7->_commands = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
    nodes = v7->_nodes;
    v7->_nodes = v10;

    localDevice = [clientCopy localDevice];
    [(COMeshLocalNode *)v7 _updateListeningPort:localDevice];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [standardUserDefaults stringArrayForKey:@"IgnoredIDSIdentifiers"];

    if ([v14 count])
    {
      v15 = [MEMORY[0x277CBEB98] setWithArray:v14];
      ignoredIDSIdentifiers = v7->_ignoredIDSIdentifiers;
      v7->_ignoredIDSIdentifiers = v15;
    }
  }

  return v7;
}

- (void)_updateListeningPort:(id)port
{
  v13 = *MEMORY[0x277D85DE8];
  portCopy = port;
  v5 = portCopy;
  if (portCopy)
  {
    listeningPort = [portCopy listeningPort];
    if (listeningPort >= 1)
    {
      v7 = listeningPort;
      if (listeningPort != [(COMeshLocalNode *)self listeningPort])
      {
        self->_listeningPort = v7;
        v8 = COCoreLogForCategory(0);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 138412546;
          selfCopy = self;
          v11 = 1024;
          listeningPort2 = [(COMeshLocalNode *)self listeningPort];
          _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%@ listening port updated to %hu", &v9, 0x12u);
        }

        [(COMeshLocalNode *)self _handleActivation:0];
      }
    }
  }
}

- (void)setCommands:(id)commands
{
  commandsCopy = commands;
  commands = [(COMeshLocalNode *)self commands];
  if (([commands isEqualToDictionary:commandsCopy] & 1) == 0)
  {
    client = [(COMeshNode *)self client];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __31__COMeshLocalNode_setCommands___block_invoke;
    v16[3] = &unk_278E179F0;
    v7 = client;
    v17 = v7;
    [commands enumerateKeysAndObjectsUsingBlock:v16];
    v8 = [commandsCopy copy];
    commands = self->_commands;
    self->_commands = v8;

    objc_initWeak(&location, self);
    v10 = self->_commands;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __31__COMeshLocalNode_setCommands___block_invoke_2;
    v12[3] = &unk_278E17A40;
    v11 = v7;
    v13 = v11;
    objc_copyWeak(&v14, &location);
    [(NSDictionary *)v10 enumerateKeysAndObjectsUsingBlock:v12];
    objc_destroyWeak(&v14);

    objc_destroyWeak(&location);
  }
}

void __31__COMeshLocalNode_setCommands___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 isSubclassOfClass:objc_opt_class()];
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 deregisterRequestID:v7];
  }

  else
  {
    [v6 deregisterEventID:v7];
  }
}

void __31__COMeshLocalNode_setCommands___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 isSubclassOfClass:objc_opt_class()];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __31__COMeshLocalNode_setCommands___block_invoke_3;
    v13[3] = &unk_278E15C60;
    v9 = &v15;
    objc_copyWeak(&v15, (a1 + 40));
    v14 = v5;
    [v7 registerRequestID:v14 options:0 handler:v13];
  }

  else
  {
    v8 = v10;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__COMeshLocalNode_setCommands___block_invoke_254;
    v10[3] = &unk_278E15CB0;
    v9 = &v12;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = v5;
    [v7 registerEventID:v11 options:0 handler:v10];
  }

  objc_destroyWeak(v9);
}

void __31__COMeshLocalNode_setCommands___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __31__COMeshLocalNode_setCommands___block_invoke_4;
  v25 = &unk_278E17A18;
  objc_copyWeak(v30, (a1 + 40));
  v11 = v8;
  v26 = v11;
  v27 = *(a1 + 32);
  v12 = v7;
  v28 = v12;
  v13 = v9;
  v29 = v13;
  v30[1] = v10;
  v14 = MEMORY[0x245D5FF10](&v22);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = WeakRetained;
  if (WeakRetained && ([WeakRetained nodeActivated] & 1) == 0)
  {
    v17 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v32 = v16;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_244378000, v17, OS_LOG_TYPE_DEFAULT, "%@ deferring request %@ with options %@, not fully activated", buf, 0x20u);
    }

    v18 = [v16 pendingActivation];
    v19 = [v18 mutableCopy];

    if (!v19)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v20 = MEMORY[0x245D5FF10](v14);
    [v19 addObject:v20];

    v21 = v16[24];
    v16[24] = v19;
  }

  else
  {
    v14[2](v14);
  }

  objc_destroyWeak(v30);
}

void __31__COMeshLocalNode_setCommands___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) objectForKey:*MEMORY[0x277D442D0]];
    if ([v3 length])
    {
      v4 = [v5 _nodeForIDSIdentifier:v3];
    }

    else
    {
      v4 = 0;
    }

    [v5 _handleRequestIdentifier:*(a1 + 40) rapportRepresentation:*(a1 + 48) options:*(a1 + 32) responseHandler:*(a1 + 56) fromNode:v4 at:*(a1 + 72)];

    WeakRetained = v5;
  }
}

void __31__COMeshLocalNode_setCommands___block_invoke_254(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __31__COMeshLocalNode_setCommands___block_invoke_2_255;
  v20 = &unk_278E177E0;
  objc_copyWeak(&v24, (a1 + 40));
  v7 = v6;
  v21 = v7;
  v22 = *(a1 + 32);
  v8 = v5;
  v23 = v8;
  v9 = MEMORY[0x245D5FF10](&v17);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained && ([WeakRetained nodeActivated] & 1) == 0)
  {
    v12 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v26 = v11;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%@ deferring command %@ with options %@, not fully activated", buf, 0x20u);
    }

    v13 = [v11 pendingActivation];
    v14 = [v13 mutableCopy];

    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v15 = MEMORY[0x245D5FF10](v9);
    [v14 addObject:v15];

    v16 = v11[24];
    v11[24] = v14;
  }

  else
  {
    v9[2](v9);
  }

  objc_destroyWeak(&v24);
}

void __31__COMeshLocalNode_setCommands___block_invoke_2_255(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) objectForKey:*MEMORY[0x277D442D0]];
    if ([v3 length])
    {
      v4 = [v5 _nodeForIDSIdentifier:v3];
    }

    else
    {
      v4 = 0;
    }

    [v5 _handleEventIdentifier:*(a1 + 40) rapportRepresentation:*(a1 + 48) options:*(a1 + 32) fromNode:v4];

    WeakRetained = v5;
  }
}

- (id)IDSIdentifier
{
  client = [(COMeshNode *)self client];
  localDevice = [client localDevice];
  idsDeviceIdentifier = [localDevice idsDeviceIdentifier];

  return idsDeviceIdentifier;
}

- (COCompanionLinkClientFactoryProtocol)companionLinkClientFactory
{
  companionLinkClientFactory = self->_companionLinkClientFactory;
  if (!companionLinkClientFactory)
  {
    v4 = objc_alloc_init(COCompanionLinkClientFactory);
    v5 = self->_companionLinkClientFactory;
    self->_companionLinkClientFactory = v4;

    companionLinkClientFactory = self->_companionLinkClientFactory;
  }

  return companionLinkClientFactory;
}

- (void)setAcceptableCommands:(id)commands
{
  commandsCopy = commands;
  acceptableCommands = [(COMeshLocalNode *)self acceptableCommands];
  v6 = [acceptableCommands isEqualToSet:commandsCopy];

  if ((v6 & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(commandsCopy, "count")}];
    v8 = [commandsCopy copy];
    acceptableCommands = self->_acceptableCommands;
    self->_acceptableCommands = v8;

    v10 = self->_acceptableCommands;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __41__COMeshLocalNode_setAcceptableCommands___block_invoke;
    v15 = &unk_278E17A68;
    v16 = v7;
    selfCopy = self;
    v11 = v7;
    [(NSSet *)v10 enumerateObjectsUsingBlock:&v12];
    [(COMeshLocalNode *)self setCommands:v11, v12, v13, v14, v15];
  }
}

void __41__COMeshLocalNode_setAcceptableCommands___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _eventIDForClass:a2];
  [v3 setObject:a2 forKey:v4];
}

- (void)activate
{
  client = [(COMeshNode *)self client];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__COMeshLocalNode_activate__block_invoke;
  v9[3] = &unk_278E158D8;
  objc_copyWeak(&v10, &location);
  [client setDeviceFoundHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__COMeshLocalNode_activate__block_invoke_2;
  v7[3] = &unk_278E158D8;
  objc_copyWeak(&v8, &location);
  [client setDeviceLostHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__COMeshLocalNode_activate__block_invoke_3;
  v5[3] = &unk_278E158D8;
  objc_copyWeak(&v6, &location);
  [client setLocalDeviceUpdatedHandler:v5];
  v4.receiver = self;
  v4.super_class = COMeshLocalNode;
  [(COMeshNode *)&v4 activate];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __27__COMeshLocalNode_activate__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleFoundDevice:v5];
  }
}

void __27__COMeshLocalNode_activate__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleLostDevice:v5];
  }
}

void __27__COMeshLocalNode_activate__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateListeningPort:v5];
  }
}

- (void)_handleActivation:(id)activation
{
  v37 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = COMeshLocalNode;
  [(COMeshNode *)&v30 _handleActivation:activation];
  client = [(COMeshNode *)self client];
  activeDevices = [client activeDevices];

  v6 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [activeDevices count];
    *buf = 138412546;
    selfCopy2 = self;
    v35 = 2048;
    v36 = v7;
    _os_log_impl(&dword_244378000, v6, OS_LOG_TYPE_DEFAULT, "%@ triggering found events for %lu devices post-activation", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = activeDevices;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(COMeshLocalNode *)self _handleFoundDevice:*(*(&v26 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v10);
  }

  pendingActivation = [(COMeshLocalNode *)self pendingActivation];
  pendingActivation = self->_pendingActivation;
  self->_pendingActivation = 0;

  v15 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [pendingActivation count];
    *buf = 138412546;
    selfCopy2 = self;
    v35 = 2048;
    v36 = v16;
    _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%@ triggering %lu pending actions post-activation", buf, 0x16u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = pendingActivation;
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        (*(*(*(&v22 + 1) + 8 * v21) + 16))(*(*(&v22 + 1) + 8 * v21));
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v19);
  }
}

- (id)_nodeForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__15;
  v25 = __Block_byref_object_dispose__15;
  v26 = 0;
  v6 = 1;
  while (1)
  {
    nodes = [(COMeshLocalNode *)self nodes];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__COMeshLocalNode__nodeForIDSIdentifier___block_invoke;
    v18[3] = &unk_278E17A90;
    v8 = identifierCopy;
    v19 = v8;
    v20 = &v21;
    [nodes enumerateObjectsUsingBlock:v18];
    if (v22[5])
    {
      break;
    }

    client = [(COMeshNode *)self client];
    activeDevices = [client activeDevices];

    if (![activeDevices count])
    {

      break;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__COMeshLocalNode__nodeForIDSIdentifier___block_invoke_2;
    v15[3] = &unk_278E17AB8;
    v16 = v8;
    selfCopy = self;
    v11 = [activeDevices indexOfObjectPassingTest:v15] == 0x7FFFFFFFFFFFFFFFLL;

    v12 = v11 & v6;
    v5 = nodes;
    v6 = 0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __41__COMeshLocalNode__nodeForIDSIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v10 = a2;
  v7 = [v10 IDSIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 compare:*(a1 + 32) options:1];
    *a4 = v9 == 0;
    if (!v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

BOOL __41__COMeshLocalNode__nodeForIDSIdentifier___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  v7 = [v6 idsDeviceIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 compare:*(a1 + 32) options:1];
    *a4 = v9 == 0;
    if (!v9)
    {
      [*(a1 + 40) _handleFoundDevice:v6];
    }
  }

  v10 = *a4;

  return v10;
}

- (void)_handleFoundDevice:(id)device
{
  v31 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  nodeActivated = [(COMeshNode *)self nodeActivated];
  v7 = [idsDeviceIdentifier length];
  if (nodeActivated)
  {
    if (v7)
    {
      ignoredIDSIdentifiers = [(COMeshLocalNode *)self ignoredIDSIdentifiers];
      v9 = [ignoredIDSIdentifiers containsObject:idsDeviceIdentifier];

      if (v9)
      {
        nodes = COCoreLogForCategory(0);
        if (os_log_type_enabled(nodes, OS_LOG_TYPE_ERROR))
        {
          [COMeshLocalNode _handleFoundDevice:];
        }
      }

      else
      {
        nodes = [(COMeshLocalNode *)self nodes];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v28 = __Block_byref_object_copy__15;
        v29 = __Block_byref_object_dispose__15;
        v30 = 0;
        v17 = MEMORY[0x277D85DD0];
        v18 = 3221225472;
        v19 = __38__COMeshLocalNode__handleFoundDevice___block_invoke;
        v20 = &unk_278E17A90;
        v11 = idsDeviceIdentifier;
        v21 = v11;
        v22 = buf;
        [nodes enumerateObjectsUsingBlock:&v17];
        v12 = *(*&buf[8] + 40);
        if (v12)
        {
          discoveryType = [v12 discoveryType];
          [*(*&buf[8] + 40) setDiscoveryType:discoveryType | 1];
          if (![*(*&buf[8] + 40) connectionType])
          {
            v14 = COCoreLogForCategory(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *v23 = 138412546;
              selfCopy2 = self;
              v25 = 2112;
              v26 = v11;
              _os_log_impl(&dword_244378000, v14, OS_LOG_TYPE_DEFAULT, "%@ updating unknown connection type for %@", v23, 0x16u);
            }

            [*(*&buf[8] + 40) setConnectionType:1];
          }
        }

        else
        {
          v15 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v23 = 138412546;
            selfCopy2 = self;
            v25 = 2112;
            v26 = v11;
            _os_log_impl(&dword_244378000, v15, OS_LOG_TYPE_DEFAULT, "%@ found %@", v23, 0x16u);
          }

          v16 = [(COMeshLocalNode *)self _createNodeForDevice:deviceCopy IDSIdentifier:v11 configure:&__block_literal_global_267, v17, v18, v19, v20];
        }

        _Block_object_dispose(buf, 8);
      }

LABEL_18:
    }
  }

  else if (v7)
  {
    nodes = COCoreLogForCategory(0);
    if (os_log_type_enabled(nodes, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = idsDeviceIdentifier;
      _os_log_impl(&dword_244378000, nodes, OS_LOG_TYPE_DEFAULT, "%@ ignore found %@, not fully activated", buf, 0x16u);
    }

    goto LABEL_18;
  }
}

void __38__COMeshLocalNode__handleFoundDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v9 = a2;
  v7 = [v9 IDSIdentifier];
  v8 = [v7 compare:*(a1 + 32) options:1];
  *a4 = v8 == 0;

  if (!v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __38__COMeshLocalNode__handleFoundDevice___block_invoke_264(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDiscoveryType:1];
  [v2 setConnectionType:1];
}

- (void)_handleLostDevice:(id)device
{
  v17 = *MEMORY[0x277D85DE8];
  idsDeviceIdentifier = [device idsDeviceIdentifier];
  nodeActivated = [(COMeshNode *)self nodeActivated];
  v6 = [idsDeviceIdentifier length];
  if (nodeActivated)
  {
    if (v6)
    {
      v7 = [(COMeshLocalNode *)self _nodeForIDSIdentifier:idsDeviceIdentifier];
      v8 = v7;
      if (v7)
      {
        connectionType = [v7 connectionType];
        discoveryType = [v8 discoveryType];
        if (connectionType == 1)
        {
          [(COMeshLocalNode *)self _handleLostNode:v8];
        }

        else
        {
          v11 = discoveryType;
          v12 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 138412546;
            selfCopy2 = self;
            v15 = 2112;
            v16 = idsDeviceIdentifier;
            _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%@ ignoring loss %@", &v13, 0x16u);
          }

          [v8 setDiscoveryType:v11 & 0xFFFFFFFFFFFFFFFELL];
        }
      }

LABEL_12:
    }
  }

  else if (v6)
  {
    v8 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      selfCopy2 = self;
      v15 = 2112;
      v16 = idsDeviceIdentifier;
      _os_log_impl(&dword_244378000, v8, OS_LOG_TYPE_DEFAULT, "%@ ignore lost %@, not fully activated", &v13, 0x16u);
    }

    goto LABEL_12;
  }
}

- (void)_handleLostNode:(id)node
{
  v14 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  iDSIdentifier = [nodeCopy IDSIdentifier];
  nodes = [(COMeshLocalNode *)self nodes];
  v7 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = iDSIdentifier;
    _os_log_impl(&dword_244378000, v7, OS_LOG_TYPE_DEFAULT, "%@ lost %@", &v10, 0x16u);
  }

  [nodeCopy setParent:0];
  v8 = [nodes mutableCopy];
  [v8 removeObject:nodeCopy];
  [(COMeshLocalNode *)self setNodes:v8];
  delegate = [(COMeshNode *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didRemoveNode:nodeCopy];
  }

  else
  {
    [nodeCopy invalidate];
    if (objc_opt_respondsToSelector())
    {
      [delegate didInvalidateNode:nodeCopy];
    }
  }
}

- (id)_handleDiscoveryRecord:(id)record
{
  v31 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  iDSIdentifier = [recordCopy IDSIdentifier];
  if ([iDSIdentifier length])
  {
    nodes = [(COMeshLocalNode *)self nodes];
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__15;
    v23 = __Block_byref_object_dispose__15;
    v24 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __42__COMeshLocalNode__handleDiscoveryRecord___block_invoke;
    v16[3] = &unk_278E17A90;
    v7 = iDSIdentifier;
    v17 = v7;
    v18 = &v19;
    [nodes enumerateObjectsUsingBlock:v16];
    v8 = v20[5];
    if (v8)
    {
      discoveryType = [v8 discoveryType];
      [v20[5] setDiscoveryType:discoveryType | 2];
      v10 = v20[5];
    }

    else
    {
      companionLinkDevice = [recordCopy companionLinkDevice];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __42__COMeshLocalNode__handleDiscoveryRecord___block_invoke_2;
      v14[3] = &unk_278E17B00;
      v15 = recordCopy;
      v10 = [(COMeshLocalNode *)self _createNodeForDevice:companionLinkDevice IDSIdentifier:v7 configure:v14];
      v12 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy = self;
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&dword_244378000, v12, OS_LOG_TYPE_DEFAULT, "%@ discovered (IP) %@, created %@", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __42__COMeshLocalNode__handleDiscoveryRecord___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v9 = a2;
  v7 = [v9 IDSIdentifier];
  v8 = [v7 compare:*(a1 + 32) options:1];
  *a4 = v8 == 0;

  if (!v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __42__COMeshLocalNode__handleDiscoveryRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDiscoveryRecord:v2];
  [v3 setDiscoveryType:2];
  [v3 setConnectionType:0];
}

- (id)_createNodeForDevice:(id)device IDSIdentifier:(id)identifier configure:(id)configure
{
  configureCopy = configure;
  identifierCopy = identifier;
  deviceCopy = device;
  client = [(COMeshNode *)self client];
  companionLinkClientFactory = [(COMeshLocalNode *)self companionLinkClientFactory];
  v13 = [companionLinkClientFactory companionLinkClientForDevice:deviceCopy withIDSIdentifier:identifierCopy];

  dispatchQueue = [client dispatchQueue];
  [v13 setDispatchQueue:dispatchQueue];

  v15 = [COMeshNode alloc];
  source = [(COMeshNode *)self source];
  v17 = [(COMeshNode *)v15 initWithCompanionLinkClient:v13 source:source];

  [(COMeshNode *)v17 setParent:self];
  meshName = [(COMeshNode *)self meshName];
  [(COMeshNode *)v17 setMeshName:meshName];

  label = [(COMeshNode *)self label];
  [(COMeshNode *)v17 setLabel:label];

  recorder = [(COMeshNode *)self recorder];
  [(COMeshNode *)v17 setRecorder:recorder];

  [(COMeshNode *)v17 _setIDSIdentifier:identifierCopy];
  configureCopy[2](configureCopy, v17);

  nodes = [(COMeshLocalNode *)self nodes];
  v22 = [nodes arrayByAddingObject:v17];
  [(COMeshLocalNode *)self setNodes:v22];

  delegate = [(COMeshNode *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didAddNode:v17];
  }

  else
  {
    [(COMeshNode *)v17 activate];
  }

  return v17;
}

- (void)_handleEventIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options fromNode:(id)node
{
  identifierCopy = identifier;
  representationCopy = representation;
  optionsCopy = options;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__15;
  v82 = __Block_byref_object_dispose__15;
  nodeCopy = node;
  v83 = nodeCopy;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__15;
  v76 = __Block_byref_object_dispose__15;
  v77 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__15;
  v70 = __Block_byref_object_dispose__15;
  v71 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__15;
  v60 = __Block_byref_object_dispose__15;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__15;
  v54 = __Block_byref_object_dispose__15;
  v55 = 0;
  v14 = objc_opt_class();
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke;
  v49[3] = &unk_278E15DF0;
  v49[4] = &v56;
  v49[5] = &v50;
  [v14 _commandPayloadFromRapportRepresentation:representationCopy result:v49];
  if (v51[5])
  {
    commands = [(COMeshLocalNode *)self commands];
    v16 = [commands objectForKey:identifierCopy];

    if (v16)
    {
      v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v16 fromData:v51[5] error:0];
      v18 = v67;
    }

    else
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      v18 = v73;
    }

    v22 = v18[5];
    v18[5] = v17;
  }

  else
  {
    v19 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [COMeshLocalNode _handleEventIdentifier:rapportRepresentation:options:fromNode:];
    }

    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
    v21 = v73[5];
    v73[5] = v20;

    *(v63 + 24) = 1;
  }

  v23 = v67;
  v24 = v67[5];
  if (v24)
  {
    if (v57[5])
    {
      [v24 _setSendingConstituent:?];
      v23 = v67;
    }

    if (v79[5])
    {
      [v23[5] _setSender:?];
      v23 = v67;
    }

    [v23[5] _setRapportOptions:optionsCopy];
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__15;
  v47 = __Block_byref_object_dispose__15;
  v25 = v79[5];
  if (v25)
  {
    [v25 delegate];
  }

  else
  {
    [(COMeshNode *)self delegate];
  }
  v48 = ;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273;
  v34[3] = &unk_278E17B28;
  v36 = &v78;
  v34[4] = self;
  v26 = identifierCopy;
  v35 = v26;
  v37 = &v43;
  v38 = &v56;
  v39 = &v72;
  v40 = &v62;
  v41 = &v66;
  v42 = &v50;
  v27 = MEMORY[0x245D5FF10](v34);
  if (!v79[5] && v57[5] && v67[5] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v28 = v44[5];
    v29 = v67[5];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_278;
    v30[3] = &unk_278E17B50;
    v33 = &v78;
    v30[4] = self;
    v31 = v26;
    v32 = v27;
    [v28 unknownNodeForCommand:v29 result:v30];
  }

  else
  {
    v27[2](v27);
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v78, 8);
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = COCoreLogForCategory(0);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_1();
    }

    v5 = [*(*(*(a1 + 48) + 8) + 40) delegate];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (([*(*(*(a1 + 48) + 8) + 40) _validateSource:*(*(*(a1 + 64) + 8) + 40)] & 1) == 0)
    {
      v8 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_2();
      }

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
      v10 = *(*(a1 + 72) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      *(*(*(a1 + 80) + 8) + 24) = 1;
      v12 = *(*(a1 + 88) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;

      v14 = *(*(a1 + 96) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = 0;
    }

    v16 = *(*(*(a1 + 88) + 8) + 40);
    if (v16)
    {
      [v16 _setSender:*(*(*(a1 + 48) + 8) + 40)];
      if (objc_opt_respondsToSelector())
      {
        [*(*(*(a1 + 56) + 8) + 40) node:*(*(*(a1 + 48) + 8) + 40) didReceiveCommand:*(*(*(a1 + 88) + 8) + 40)];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v17 = *(*(*(a1 + 72) + 8) + 40);
      if (!v17)
      {
        v18 = COCoreLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_3();
        }

        v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
        v20 = *(*(a1 + 72) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        v17 = *(*(*(a1 + 72) + 8) + 40);
      }

      [*(*(*(a1 + 56) + 8) + 40) node:*(*(*(a1 + 48) + 8) + 40) didReceiveError:v17 forCommand:0];
    }

    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      [*(a1 + 32) _invalidateAndReintroduceNode:*(*(*(a1 + 48) + 8) + 40)];
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_4();
    }
  }
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_278(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[7] + 8) + 40), a2);
  v5 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1[7] + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%@ received node %@ from delegate for command %@", &v9, 0x20u);
  }

  (*(a1[6] + 16))();
}

- (void)_handleRequestIdentifier:(id)identifier rapportRepresentation:(id)representation options:(id)options responseHandler:(id)handler fromNode:(id)node at:(unint64_t)at
{
  identifierCopy = identifier;
  representationCopy = representation;
  optionsCopy = options;
  handlerCopy = handler;
  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__15;
  v92 = __Block_byref_object_dispose__15;
  nodeCopy = node;
  v93 = nodeCopy;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__15;
  v86 = __Block_byref_object_dispose__15;
  v87 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__15;
  v80 = __Block_byref_object_dispose__15;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__15;
  v70 = __Block_byref_object_dispose__15;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__15;
  v64 = __Block_byref_object_dispose__15;
  v65 = 0;
  v19 = objc_opt_class();
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke;
  v59[3] = &unk_278E15DF0;
  v59[4] = &v66;
  v59[5] = &v60;
  [v19 _commandPayloadFromRapportRepresentation:representationCopy result:v59];
  if (v61[5])
  {
    commands = [(COMeshLocalNode *)self commands];
    v21 = [commands objectForKey:identifierCopy];

    if (!v21)
    {
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
      goto LABEL_10;
    }

    v22 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v21 fromData:v61[5] error:0];
    v23 = v77[5];
    v77[5] = v22;

    if (v77[5])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = v77[5];
        v77[5] = 0;

        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
LABEL_10:
        v29 = v83[5];
        v83[5] = v25;
      }
    }
  }

  else
  {
    v26 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [COMeshLocalNode _handleRequestIdentifier:rapportRepresentation:options:responseHandler:fromNode:at:];
    }

    v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
    v28 = v83[5];
    v83[5] = v27;

    *(v73 + 24) = 1;
  }

  v30 = v77;
  v31 = v77[5];
  if (v31)
  {
    if (v67[5])
    {
      [v31 _setSendingConstituent:?];
      v30 = v77;
    }

    if (v89[5])
    {
      [v30[5] _setSender:?];
      v30 = v77;
    }

    [v30[5] _setRapportOptions:optionsCopy];
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__15;
  v57 = __Block_byref_object_dispose__15;
  v32 = v89[5];
  if (v32)
  {
    [v32 delegate];
  }

  else
  {
    [(COMeshNode *)self delegate];
  }
  v58 = ;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279;
  v42[3] = &unk_278E17BA0;
  v45 = &v88;
  v42[4] = self;
  v33 = identifierCopy;
  v43 = v33;
  v46 = &v82;
  v34 = handlerCopy;
  v44 = v34;
  v47 = &v53;
  v48 = &v66;
  v49 = &v72;
  v50 = &v76;
  v51 = &v60;
  atCopy = at;
  v35 = MEMORY[0x245D5FF10](v42);
  if (!v89[5] && v67[5] && v77[5] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v36 = v54[5];
    v37 = v77[5];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_285;
    v38[3] = &unk_278E17B50;
    v41 = &v88;
    v38[4] = self;
    v39 = v33;
    v40 = v35;
    [v36 unknownNodeForRequest:v37 result:v38];
  }

  else
  {
    v35[2](v35);
  }

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v88, 8);
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = COCoreLogForCategory(0);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279_cold_1();
    }

    v5 = [*(*(*(a1 + 56) + 8) + 40) delegate];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (([*(*(*(a1 + 56) + 8) + 40) _validateSource:*(*(*(a1 + 80) + 8) + 40)] & 1) == 0)
    {
      v8 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279_cold_2();
      }

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
      v10 = *(*(a1 + 64) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      *(*(*(a1 + 88) + 8) + 24) = 1;
      v12 = *(*(a1 + 96) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;

      v14 = *(*(a1 + 104) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = 0;
    }

    v16 = *(*(*(a1 + 96) + 8) + 40);
    if (v16)
    {
      [v16 _setSender:*(*(*(a1 + 56) + 8) + 40)];
      if (objc_opt_respondsToSelector())
      {
        v17 = *(*(*(a1 + 72) + 8) + 40);
        v18 = *(a1 + 56);
        v19 = *(*(v18 + 8) + 40);
        v20 = *(*(*(a1 + 96) + 8) + 40);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_282;
        v30[3] = &unk_278E17B78;
        v30[4] = *(a1 + 32);
        v21 = *(a1 + 112);
        v32 = v18;
        v33 = v21;
        v31 = *(a1 + 48);
        [v17 node:v19 didReceiveRequest:v20 responseCallBack:v30];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v25 = *(*(*(a1 + 64) + 8) + 40);
        if (!v25)
        {
          v26 = COCoreLogForCategory(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279_cold_3();
          }

          v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:0];
          v28 = *(*(a1 + 64) + 8);
          v29 = *(v28 + 40);
          *(v28 + 40) = v27;

          v25 = *(*(*(a1 + 64) + 8) + 40);
        }

        [*(*(*(a1 + 72) + 8) + 40) node:*(*(*(a1 + 56) + 8) + 40) didReceiveError:v25 forCommand:0];
      }

      (*(*(a1 + 48) + 16))();
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        [*(a1 + 32) _invalidateAndReintroduceNode:*(*(*(a1 + 56) + 8) + 40)];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_4();
    }

    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"COMeshNodeErrorDomain" code:-4001 userInfo:0];
    v23 = *(*(a1 + 64) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    (*(*(a1 + 48) + 16))();
  }
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_282(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_282_cold_1();
    }

    v8 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) _serializedDataForCommand:v5];
    v9 = [*(a1 + 32) _eventIDForClass:objc_opt_class()];
    v10 = COCoreLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 32);
      v16 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412802;
      v20 = v15;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v16;
      _os_log_debug_impl(&dword_244378000, v10, OS_LOG_TYPE_DEBUG, "%@ responding with %@ to %@", buf, 0x20u);
    }

    v11 = MEMORY[0x277CCAAB0];
    v12 = [*(*(*(a1 + 48) + 8) + 40) source];
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
    v18[0] = v13;
    v18[1] = v7;
    v17[1] = @"command";
    v17[2] = @"response";
    v18[2] = v9;
    v17[3] = @"overhead";
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:(clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - *(a1 + 56))];
    v18[3] = v14;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  }

  (*(*(a1 + 40) + 16))();
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_285(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[7] + 8) + 40), a2);
  v5 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1[7] + 8) + 40);
    v7 = a1[4];
    v8 = a1[5];
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_244378000, v5, OS_LOG_TYPE_DEFAULT, "%@ received node %@ from delegate for request %@", &v9, 0x20u);
  }

  (*(a1[6] + 16))();
}

- (void)_invalidateAndReintroduceNode:(id)node
{
  v18 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  iDSIdentifier = [nodeCopy IDSIdentifier];
  discoveryRecord = [nodeCopy discoveryRecord];
  [nodeCopy invalidate];
  if ([iDSIdentifier length])
  {
    v7 = [(COMeshLocalNode *)self _nodeForIDSIdentifier:iDSIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412802;
        selfCopy2 = self;
        v14 = 2112;
        v15 = v8;
        v16 = 2112;
        v17 = nodeCopy;
        v10 = "%@ reintroduced node %@ for %@";
LABEL_9:
        _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, v10, &v12, 0x20u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  if (discoveryRecord)
  {
    v11 = [(COMeshLocalNode *)self _handleDiscoveryRecord:discoveryRecord];
    if (v11)
    {
      v8 = v11;
      v9 = COCoreLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412802;
        selfCopy2 = self;
        v14 = 2112;
        v15 = v8;
        v16 = 2112;
        v17 = nodeCopy;
        v10 = "%@ reintroduced (IP) node %@ for %@";
        goto LABEL_9;
      }

LABEL_10:

      goto LABEL_13;
    }
  }

  v8 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [COMeshLocalNode _invalidateAndReintroduceNode:];
  }

LABEL_13:
}

- (void)_handleFoundDevice:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_handleEventIdentifier:rapportRepresentation:options:fromNode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_1()
{
  OUTLINED_FUNCTION_9_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_7_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_2()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __81__COMeshLocalNode__handleEventIdentifier_rapportRepresentation_options_fromNode___block_invoke_273_cold_4()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_handleRequestIdentifier:rapportRepresentation:options:responseHandler:fromNode:at:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279_cold_1()
{
  OUTLINED_FUNCTION_9_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_7_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279_cold_2()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __102__COMeshLocalNode__handleRequestIdentifier_rapportRepresentation_options_responseHandler_fromNode_at___block_invoke_279_cold_3()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_invalidateAndReintroduceNode:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end