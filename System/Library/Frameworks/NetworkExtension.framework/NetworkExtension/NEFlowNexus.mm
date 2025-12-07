@interface NEFlowNexus
- (BOOL)setDiscoveredEndpoints:(id)endpoints forClient:(id)client;
- (NEFlowNexus)initWithName:(id)name delegate:(id)delegate;
- (void)dealloc;
- (void)handleAssertFromClient:(id)client;
- (void)handleUnassertFromClient:(id)client;
- (void)setRemoteConnectionDirector:(id)director;
- (void)setSupportsBrowseRequests:(BOOL)requests;
@end

@implementation NEFlowNexus

- (void)handleUnassertFromClient:(id)client
{
  clientCopy = client;
  v17.receiver = self;
  v17.super_class = NEFlowNexus;
  [(NENexus *)&v17 handleUnassertFromClient:clientCopy];
  if (self)
  {
    Property = objc_getProperty(self, v5, 200, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  objc_sync_enter(v7);
  if (self)
  {
    v9 = objc_getProperty(self, v8, 200, 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v10 containsObject:clientCopy];

  if (v11)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = objc_alloc_init(NENexusBrowse);
      [(NENexusBrowse *)v13 setClientIdentifier:clientCopy];
      [WeakRetained stopBrowse:v13 fromNexus:self];
    }

    [(NEFlowNexus *)self setDiscoveredEndpoints:0 forClient:clientCopy];
    if (self)
    {
      v15 = objc_getProperty(self, v14, 200, 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    [v16 removeObject:clientCopy];
  }

  objc_sync_exit(v7);
}

- (void)handleAssertFromClient:(id)client
{
  v23 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v20.receiver = self;
  v20.super_class = NEFlowNexus;
  [(NENexus *)&v20 handleAssertFromClient:clientCopy];
  v5 = [MEMORY[0x1E6977E48] pathForClientID:clientCopy];
  v6 = v5;
  if (!v5)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = clientCopy;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Failed to get path for assert client %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if ([v5 hasBrowseDescriptor])
  {
    if (self)
    {
      Property = objc_getProperty(self, v7, 200, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = Property;
    objc_sync_enter(v9);
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->super._delegate);
      v12 = objc_getProperty(self, v11, 200, 1);
    }

    else
    {
      WeakRetained = 0;
      v12 = 0;
    }

    v13 = v12;
    if (([(NENexusBrowse *)v13 containsObject:clientCopy]& 1) == 0)
    {
      v14 = objc_opt_respondsToSelector();

      if ((v14 & 1) == 0)
      {
LABEL_13:

        objc_sync_exit(v9);
LABEL_16:

        goto LABEL_17;
      }

      v13 = objc_alloc_init(NENexusBrowse);
      [(NENexusBrowse *)v13 setClientIdentifier:clientCopy];
      browseDescriptor = [v6 browseDescriptor];
      [(NENexusBrowse *)v13 setDescriptor:browseDescriptor];

      parameters = [v6 parameters];
      [(NENexusBrowse *)v13 setParameters:parameters];

      [WeakRetained startBrowse:v13 fromNexus:self];
      if (self)
      {
        v18 = objc_getProperty(self, v17, 200, 1);
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      [v19 addObject:clientCopy];
    }

    goto LABEL_13;
  }

LABEL_17:
}

- (BOOL)setDiscoveredEndpoints:(id)endpoints forClient:(id)client
{
  v35 = *MEMORY[0x1E69E9840];
  endpointsCopy = endpoints;
  clientCopy = client;
  if (!clientCopy)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v34 = "[NEFlowNexus setDiscoveredEndpoints:forClient:]";
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "%s called with null clientID", buf, 0xCu);
    }

    goto LABEL_28;
  }

  if (self)
  {
    Property = objc_getProperty(self, v7, 200, 1);
  }

  else
  {
    Property = 0;
  }

  if (([Property containsObject:clientCopy] & 1) == 0)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = clientCopy;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Client %@ has not asserted browse, cannot assign discovered endpoints", buf, 0xCu);
    }

    goto LABEL_28;
  }

  if ([endpointsCopy count])
  {
    v10 = MEMORY[0x1BFAFAD90]();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = endpointsCopy;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          copyCEndpoint = [*(*(&v28 + 1) + 8 * i) copyCEndpoint];
          nw_array_append();
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = 0;
  }

  browse_result = nw_path_create_browse_result();
  if (!browse_result)
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "nw_path_create_browse_result failed", buf, 2u);
    }

    goto LABEL_27;
  }

  v19 = browse_result;
  if (self)
  {
    v20 = objc_getProperty(self, v18, 128, 1);
    self = v20;
    if (v20)
    {
      v20 = objc_getProperty(v20, v21, 32, 1);
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = v20;
  v23 = [MEMORY[0x1E695DEF0] dataWithBytes:v19 length:0];
  v24 = [(NEFlowNexus *)v22 assignNexusData:v23 toClient:clientCopy];

  free(v19);
  if ((v24 & 1) == 0)
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = clientCopy;
      _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "Could not assign browse result to client %@", buf, 0xCu);
    }

LABEL_27:

LABEL_28:
    v25 = 0;
    goto LABEL_29;
  }

  v25 = 1;
LABEL_29:

  return v25;
}

- (void)setSupportsBrowseRequests:(BOOL)requests
{
  requestsCopy = requests;
  self->_supportsBrowseRequests = requests;
  v5 = objc_getProperty(self, a2, 128, 1);
  [v5 setSupportsBrowseRequests:requestsCopy];

  Property = objc_getProperty(self, v6, 128, 1);
  v12 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v8, 32, 1);
  }

  v9 = Property;
  v11 = objc_getProperty(self, v10, 128, 1);
  [v9 updateNetworkAgent:v11];
}

- (void)setRemoteConnectionDirector:(id)director
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, director, 192);
  }
}

- (void)dealloc
{
  if (self && self->_flowDivertDirector)
  {
    NEFlowDirectorDestroy();
    self->_flowDivertDirector = 0;
  }

  v3.receiver = self;
  v3.super_class = NEFlowNexus;
  [(NENexus *)&v3 dealloc];
}

- (NEFlowNexus)initWithName:(id)name delegate:(id)delegate
{
  v79 = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = NEFlowNexus;
  v4 = [(NENexus *)&v60 initWithLevel:4 name:name virtualInterfaceType:1 delegate:delegate channelCount:0];
  if (!v4)
  {
    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *v70 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_FAULT, "[super initWithLevel:name:delegate:] failed", v70, 2u);
    }

    goto LABEL_40;
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("FlowDivertDirector", v5);
  objc_setProperty_atomic(v4, v7, v6, 176);

  if (!objc_getProperty(v4, v8, 176, 1))
  {
    v31 = ne_log_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v32 = "dispatch_queue_create failed";
    goto LABEL_15;
  }

  initFlowDivertControlSocket = [[NEFlowDivertFileHandle alloc] initFlowDivertControlSocket];
  objc_setProperty_atomic(v4, v10, initFlowDivertControlSocket, 168);

  if (!objc_getProperty(v4, v11, 168, 1))
  {
    v31 = ne_log_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v32 = "[NEFlowDivertFileHandle initFlowDivertControlSocket] failed";
    goto LABEL_15;
  }

  v13 = [objc_getProperty(v4 v12];
  v4->_flowDivertControlUnit = [v13 unsignedIntValue];

  v15 = [objc_getProperty(v4 v14];
  objc_setProperty_atomic(v4, v16, v15, 184);

  v18 = [objc_getProperty(v4 v17];
  [v18 fileDescriptor];
  objc_getProperty(v4, v19, 176, 1);
  v4->_flowDivertDirector = NEFlowDirectorCreate();

  if (!v4->_flowDivertDirector)
  {
    v31 = ne_log_obj();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v32 = "NEFlowDirectorCreate failed";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_FAULT, v32, buf, 2u);
LABEL_16:

    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *v70 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_FAULT, "setupFlowDivertDirector failed", v70, 2u);
    }

    goto LABEL_40;
  }

  v69 = 0;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v20 = NEFlowTLVMsgCreate();
  NEFlowTLVAdd();
  v22 = [objc_getProperty(v4 v21];
  fileDescriptor = [v22 fileDescriptor];
  v24 = send(fileDescriptor, v20, v66 - v68, 0);

  if (v24 < 0)
  {
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v54 = __error();
      v55 = strerror(*v54);
      *buf = 136315138;
      v76 = v55;
      _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "Failed to send a FLOW_DIVERT_PKT_APP_MAP_CREATE message: %s", buf, 0xCu);
    }

    if (v20)
    {
      CFAllocatorDeallocate(*MEMORY[0x1E695E480], v20);
    }
  }

  else
  {
    v25 = *MEMORY[0x1E695E480];
    CFAllocatorDeallocate(*MEMORY[0x1E695E480], v20);
    v69 = 1;
    v26 = NEFlowTLVMsgCreate();
    NEFlowTLVAdd();
    NEFlowTLVAdd();
    v28 = [objc_getProperty(v4 v27];
    fileDescriptor2 = [v28 fileDescriptor];
    v30 = send(fileDescriptor2, v26, v66 - v68, 0);

    if (v30 >= 0)
    {
      if (!v26)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v35 = ne_log_obj();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v56 = v66;
      v57 = v68;
      v58 = __error();
      v59 = strerror(*v58);
      *buf = 134218242;
      v76 = (v56 - v57);
      v77 = 2080;
      v78 = v59;
      _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "Failed to send a FLOW_DIVERT_PKT_APP_MAP_CREATE with size %lu bytes: %s", buf, 0x16u);
    }

    if (v26)
    {
LABEL_26:
      CFAllocatorDeallocate(v25, v26);
    }
  }

LABEL_27:
  objc_initWeak(buf, v4);
  *v70 = MEMORY[0x1E69E9820];
  v71 = 3221225472;
  v72 = __38__NEFlowNexus_setupFlowDivertDirector__block_invoke;
  v73 = &unk_1E7F078E8;
  objc_copyWeak(v74, buf);
  NEFlowDirectorSetNewFlowCallback();
  *v61 = MEMORY[0x1E69E9820];
  v62 = 3221225472;
  v63 = __38__NEFlowNexus_setupFlowDivertDirector__block_invoke_2;
  v64 = &unk_1E7F07910;
  objc_copyWeak(v65, buf);
  NEFlowDirectorSetMatchRulesCallback();
  NEFlowDirectorStart();
  objc_destroyWeak(v65);
  objc_destroyWeak(v74);
  objc_destroyWeak(buf);
  v36 = [NEPolicy alloc];
  v37 = [NEPolicyResult divertSocketToControlUnit:v4->_flowDivertControlUnit];
  interfaceName = [(NENexus *)v4 interfaceName];
  v39 = [NEPolicyCondition scopedInterface:interfaceName];
  *v70 = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
  v41 = [(NEPolicy *)v36 initWithOrder:0 result:v37 conditions:v40];

  if (!v41)
  {
    v51 = ne_log_obj();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_38;
    }

    *v61 = 0;
    v52 = "[NEPolicy initWithOrder:result:conditions:] failed";
    goto LABEL_37;
  }

  v43 = objc_getProperty(v4, v42, 120, 1);
  v44 = [v43 addPolicy:v41] == 0;

  if (v44)
  {
    v51 = ne_log_obj();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_38;
    }

    *v61 = 0;
    v52 = "[NEPolicySession addPolicy:] failed";
    goto LABEL_37;
  }

  v46 = objc_getProperty(v4, v45, 120, 1);
  apply = [v46 apply];

  if ((apply & 1) == 0)
  {
    v51 = ne_log_obj();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_38;
    }

    *v61 = 0;
    v52 = "[NEPolicySession apply] failed";
LABEL_37:
    _os_log_fault_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_FAULT, v52, v61, 2u);
LABEL_38:

    v33 = ne_log_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *v70 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_FAULT, "setupFlowDivertDirector failed", v70, 2u);
    }

LABEL_40:

    v50 = 0;
    goto LABEL_41;
  }

  v48 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  browseAssertions = v4->_browseAssertions;
  v4->_browseAssertions = v48;

  v50 = v4;
LABEL_41:

  return v50;
}

void __38__NEFlowNexus_setupFlowDivertDirector__block_invoke(uint64_t a1, const void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  self = objc_loadWeakRetained((a1 + 32));
  v6 = v5;
  if (!self)
  {
    goto LABEL_26;
  }

  v7 = [NENexusFlowDivertFlow alloc];
  if (!v7)
  {
    p_isa = 0;
    goto LABEL_23;
  }

  p_super = &v7->super.super;
  if (a2)
  {
    v38.receiver = v7;
    v38.super_class = NENexusFlowDivertFlow;
    v9 = objc_msgSendSuper2(&v38, sel_init);
    if (v9)
    {
      v10 = v9;
      v9[8] = CFRetain(a2);
      v11 = [MEMORY[0x1E696AFB0] UUID];
      v12 = *(v10 + 5);
      *(v10 + 5) = v11;

      [(NENexusFlow *)v10 setupFlowProtocolWithUUID:?];
      v13 = NEFlowCopyProperty();
      v14 = NEFlowCopyProperty();
      v15 = isa_nsstring(v14);
      v16 = isa_nsdata(v13);
      if (v15)
      {
        if (v16 && (v17 = [v13 bytes]) != 0)
        {
          v18 = *(v17 + 1);
          if (v18 == 30 || v18 == 2)
          {
            v19 = *(v17 + 2);
          }

          else
          {
            v19 = 0;
          }

          v22 = __rev16(v19);
        }

        else
        {
          v22 = 0;
        }

        v23 = MEMORY[0x1E6977E28];
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v22];
        v24 = [v21 stringValue];
        v25 = [v23 endpointWithHostname:v14 port:v24];
        v26 = *(v10 + 6);
        *(v10 + 6) = v25;
      }

      else
      {
        if (!v16)
        {
LABEL_18:
          v27 = objc_alloc_init(MEMORY[0x1E6977E40]);
          v28 = *(v10 + 7);
          *(v10 + 7) = v27;

          if (NEFlowGetFlowType() == 1)
          {
            v29 = 2;
          }

          else
          {
            v29 = 1;
          }

          [*(v10 + 7) setDataMode:v29];
          p_super = v10;

          p_isa = &p_super->isa;
          goto LABEL_22;
        }

        v20 = [MEMORY[0x1E6977E08] endpointWithAddress:{objc_msgSend(v13, "bytes")}];
        v21 = *(v10 + 6);
        *(v10 + 6) = v20;
      }

      goto LABEL_18;
    }

    p_super = ne_log_obj();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }
  }

  else
  {
    v35 = ne_log_obj();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v38.receiver) = 136315138;
      *(&v38.receiver + 4) = "[NENexusFlowDivertFlow initWithFlowDivertFlow:]";
      _os_log_fault_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_FAULT, "%s called with null flowDivertFlow", &v38, 0xCu);
    }
  }

  p_isa = 0;
LABEL_22:

LABEL_23:
  [p_isa setState:1];
  v32 = objc_getProperty(self, v31, 112, 1);
  if (p_isa)
  {
    objc_storeWeak(p_isa + 4, v32);
  }

  WeakRetained = objc_loadWeakRetained(self + 17);
  v38.receiver = MEMORY[0x1E69E9820];
  v38.super_class = 3221225472;
  v39 = __51__NEFlowNexus_flowDivertNewFlow_completionHandler___block_invoke;
  v40 = &unk_1E7F078C0;
  v41 = p_isa;
  v43 = v6;
  v42 = self;
  v34 = p_isa;
  [WeakRetained acceptNewFlow:v34 fromNexus:self completionHandler:&v38];

LABEL_26:
}

void __38__NEFlowNexus_setupFlowDivertDirector__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = a4;
    _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "Allowing flow from %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  NEFlowDirectorHandleMatchRulesResult();
}

void __51__NEFlowNexus_flowDivertNewFlow_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  location[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      objc_getProperty(v5, v3, 176, 1);
    }

    NEFlowSetDispatchQueue();
    v6 = [v4 localEndpoint];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0 || ([v4 localEndpoint], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "addressData"), v9 = objc_claimAutoreleasedReturnValue(), v10 = NEFlowSetProperty(), v9, v8, v10))
    {
      objc_initWeak(location, *(a1 + 40));
      v32[1] = MEMORY[0x1E69E9820];
      v32[2] = 3221225472;
      v32[3] = __51__NEFlowNexus_flowDivertNewFlow_completionHandler___block_invoke_26;
      v32[4] = &unk_1E7F07870;
      v33 = *(a1 + 32);
      v11 = NEFlowSetEventHandler();
      v30[1] = MEMORY[0x1E69E9820];
      v30[2] = 3221225472;
      v30[3] = __51__NEFlowNexus_flowDivertNewFlow_completionHandler___block_invoke_2;
      v30[4] = &unk_1E7F07898;
      v31 = *(a1 + 32);
      objc_copyWeak(v32, location);
      v12 = NEFlowSetEventHandler();
      v29 = *(a1 + 32);
      objc_copyWeak(v30, location);
      v13 = NEFlowSetEventHandler();
      if (v11)
      {
        if (v13)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        v15 = !v14;
        objc_destroyWeak(v30);

        objc_destroyWeak(v32);
        objc_destroyWeak(location);
        if (v15)
        {
          if (NEFlowOpen())
          {
            v18 = *(a1 + 32);
            Property = *(a1 + 40);
            if (Property)
            {
              Property = objc_getProperty(Property, v16, 144, 1);
            }

            v20 = Property;
            v21 = *(a1 + 32);
            if (v21)
            {
              v22 = objc_getProperty(v21, v19, 40, 1);
            }

            else
            {
              v22 = 0;
            }

            [v20 setObject:v18 forKeyedSubscript:v22];

            goto LABEL_26;
          }

          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v28 = *(a1 + 32);
            if (v28)
            {
              v28 = objc_getProperty(v28, v26, 40, 1);
            }

            LODWORD(location[0]) = 138412290;
            *(location + 4) = v28;
            _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "NEFlowOpen failed for client %@", location, 0xCu);
          }
        }
      }

      else
      {
        objc_destroyWeak(v30);

        objc_destroyWeak(v32);
        objc_destroyWeak(location);
      }
    }

    [*(a1 + 32) setState:3];
    NEFlowSetEventHandler();
    NEFlowSetEventHandler();
    NEFlowSetEventHandler();
    goto LABEL_26;
  }

  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(a1 + 32);
    if (v27)
    {
      v27 = objc_getProperty(v27, v24, 40, 1);
    }

    LODWORD(location[0]) = 138412290;
    *(location + 4) = v27;
    _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "Rejecting new flow for client %@", location, 0xCu);
  }

  [*(a1 + 32) setState:3];
LABEL_26:
  (*(*(a1 + 48) + 16))();
}

void __51__NEFlowNexus_flowDivertNewFlow_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setState:3];
  NEFlowSetEventHandler();
  NEFlowSetEventHandler();
  NEFlowSetEventHandler();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = objc_getProperty(WeakRetained, v3, 144, 1);
  }

  v5 = WeakRetained;
  v6 = *(a1 + 32);
  if (v6)
  {
    Property = objc_getProperty(v6, v4, 40, 1);
  }

  else
  {
    Property = 0;
  }

  [v5 setObject:0 forKeyedSubscript:Property];
}

void __51__NEFlowNexus_flowDivertNewFlow_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setState:3];
  NEFlowSetEventHandler();
  NEFlowSetEventHandler();
  NEFlowSetEventHandler();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = objc_getProperty(WeakRetained, v3, 144, 1);
  }

  v5 = WeakRetained;
  v6 = *(a1 + 32);
  if (v6)
  {
    Property = objc_getProperty(v6, v4, 40, 1);
  }

  else
  {
    Property = 0;
  }

  [v5 setObject:0 forKeyedSubscript:Property];
}

@end