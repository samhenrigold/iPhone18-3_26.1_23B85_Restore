@interface RPNWNetworkAgent
+ (id)sharedNetworkAgent;
- (BOOL)_isTCPTransport:(id)transport;
- (BOOL)createBrowseAgent;
- (BOOL)createConnectionFramer:(id)framer assign:(id)assign local:(id)local remote:(id)remote incomingConnection:(id)connection;
- (BOOL)createDDUIResolveAgent;
- (BOOL)createListenerFramer:(id)framer;
- (BOOL)createNearbyInvitationConnectionFramer:(id)framer assign:(id)assign local:(id)local remote:(id)remote incomingConnection:(id)connection;
- (BOOL)createNetworkAgent;
- (BOOL)createPairingConnectionFramer:(id)framer assign:(id)assign local:(id)local remote:(id)remote pin:(id)pin;
- (BOOL)createRapportServer;
- (BOOL)discoverDevices:(id)devices response:(id)response context:(int)context;
- (BOOL)setupBrowseHandlers;
- (BOOL)setupFlowHandlers;
- (BOOL)setupListenHandlers;
- (BOOL)setupPolicyWithQueue:(id)queue browseAgent:(BOOL)agent;
- (BOOL)setupResolveHandlers;
- (RPNWNetworkAgent)init;
- (id)_applicationServiceAdvertiseDescriptorForClient:(id)client;
- (id)_quicProtocolOptionsFromParameters:(id)parameters;
- (id)descriptionWithLevel:(int)level;
- (id)getDiscoveryDeviceTypesDescription:(unsigned int)description;
- (id)getPersonaFromParameters:(id)parameters;
- (unint64_t)convertBrowseParamsToControlFlags:(id)flags;
- (unint64_t)convertBrowseScopeToControlFlags:(unsigned int)flags;
- (unint64_t)convertConnectionParametersToControlFlags:(id)flags;
- (void)_completePendingKeyExchangeForAgentClient:(id)client;
- (void)_invalidate;
- (void)_invalidated;
- (void)_invokeKeyExchange:(id)exchange agentClient:(id)client;
- (void)_update;
- (void)activate;
- (void)createListener:(id)listener context:(int)context;
- (void)createPairingListener:(id)listener endpoint:(id)endpoint pin:(id)pin;
- (void)dealloc;
- (void)exchangeQUICPublicKeyFor:(id)for publicKey:(id)key completion:(id)completion;
- (void)executeAgentLogicInPersona:(id)persona pid:(int)pid handlerDescription:(id)description handler:(id)handler;
- (void)invalidate;
- (void)resolveRequest:(id)request existingEndpoint:(id)endpoint controlFlags:(unint64_t)flags clientPublicKey:(id)key client:(id)client token:(id)token;
- (void)setupAssertHandlers:(id)handlers;
- (void)setupPolicyForDDUIResolveAgent;
- (void)setupResolveHandlersForDDUIResolveAgent;
- (void)startFlow:(id)flow listener:(id)listener client:(id)client assign:(id)assign parameters:(id)parameters;
@end

@implementation RPNWNetworkAgent

- (BOOL)createPairingConnectionFramer:(id)framer assign:(id)assign local:(id)local remote:(id)remote pin:(id)pin
{
  framerCopy = framer;
  assignCopy = assign;
  localCopy = local;
  remoteCopy = remote;
  pinCopy = pin;
  if (dword_1001D2EF0 <= 30)
  {
    if (dword_1001D2EF0 != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&dword_1001D2EF0, "[RPNWNetworkAgent(Pairing) createPairingConnectionFramer:assign:local:remote:pin:]", 30, "Setting pairing connection framer options, local=%@, remote=%@\n", localCopy, remoteCopy);
    }

    if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
    {
      sub_10010D4A8(framerCopy);
    }
  }

  v42 = pinCopy;
  v51[0] = 0;
  v51[1] = 0;
  nw_endpoint_get_service_identifier();
  v16 = [[NSUUID alloc] initWithUUIDBytes:v51];
  v17 = [RPNWEndpoint findEndpoint:v16];
  if (v17)
  {
    v18 = v17;
    v40 = localCopy;
    v41 = assignCopy;
    v44 = v16;
    goto LABEL_10;
  }

  apple_service_apple_id = nw_endpoint_get_apple_service_apple_id();
  if (apple_service_apple_id)
  {
    v28 = [NSString stringWithUTF8String:apple_service_apple_id];
    v29 = [[NSUUID alloc] initWithUUIDString:v28];

    v44 = v29;
    v30 = [RPNWEndpoint findEndpoint:v29];
    if (v30)
    {
      v18 = v30;
      v40 = localCopy;
      v41 = assignCopy;

LABEL_10:
      applicationService = [v18 applicationService];
      v20 = [RPNWConnection alloc];
      device = [v18 device];
      v43 = framerCopy;
      flowToken = [framerCopy flowToken];
      browseSession = [v18 browseSession];
      v24 = +[NSUUID UUID];
      endpointUUID = [v18 endpointUUID];
      v26 = [(RPNWConnection *)v20 initWithPeer:device token:flowToken version:0 inbound:0 internal:browseSession applicationService:applicationService connectionID:v24 endpointID:endpointUUID];

      if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1001D2EF0, "[RPNWNetworkAgent(Pairing) createPairingConnectionFramer:assign:local:remote:pin:]", 30, "Found remote endpoint=%@, created pairing connection=%@\n", v18, v26);
      }

      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100013A80;
      v48[3] = &unk_1001AA920;
      v31 = v26;
      v49 = v31;
      v32 = v43;
      v50 = v32;
      v33 = v42;
      [RPNWEndpoint pairWithEndpoint:v44 pin:v42 completionHandler:v48];
      [v32 setConnection:v31];
      start_handler[0] = _NSConcreteStackBlock;
      start_handler[1] = 3221225472;
      start_handler[2] = sub_100013BC4;
      start_handler[3] = &unk_1001AA998;
      v46 = v31;
      v47 = v32;
      v34 = v31;
      definition = nw_framer_create_definition("client-pipe-pairing", 0, start_handler);
      options = nw_framer_create_options(definition);

      v37 = nwrapport_copy_protocol_definition();
      if (dword_1001D2EF0 <= 40 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
      {
        sub_10010D4E8(v37);
      }

      nw_framer_options_set_peer_protocol_definition();
      localCopy = v40;
      assignCopy = v41;
      if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
      {
        sub_10010D528(v40, remoteCopy);
      }

      v41[2](v41, v40, remoteCopy, options);

      v38 = 1;
      framerCopy = v43;
      goto LABEL_24;
    }

    if (dword_1001D2EF0 <= 90 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
    {
      sub_10010D580(v29);
    }

    v38 = 0;
LABEL_35:
    v33 = pinCopy;
LABEL_24:

    goto LABEL_25;
  }

  if (dword_1001D2EF0 > 90)
  {
    v38 = 0;
    v44 = v16;
    goto LABEL_35;
  }

  v33 = pinCopy;
  if (dword_1001D2EF0 != -1 || _LogCategory_Initialize())
  {
    sub_10010D5C0(remoteCopy);
  }

  v38 = 0;

LABEL_25:
  return v38;
}

- (void)createPairingListener:(id)listener endpoint:(id)endpoint pin:(id)pin
{
  listenerCopy = listener;
  pinCopy = pin;
  browseClient = [listenerCopy browseClient];
  v9 = [_TtC8rapportd16RPPairingSession agentClientListenerAdvertiseSensitiveInfo:browseClient];

  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (v10 != [listenerCopy listenerPairingState])
  {
    if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
    {
      sub_10010D740(listenerCopy, v9);
    }

    pairingSession = [listenerCopy pairingSession];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000140AC;
    v22[3] = &unk_1001AA970;
    v23 = listenerCopy;
    [pairingSession stopServerWithCompletionHandler:v22];
  }

  [listenerCopy setListenerPairingState:v10];
  if (dword_1001D2EF0 <= 30 && (dword_1001D2EF0 != -1 || _LogCategory_Initialize()))
  {
    sub_10010D7C4(listenerCopy, v9);
  }

  v12 = [_TtC8rapportd16RPPairingSession alloc];
  applicationService = [listenerCopy applicationService];
  v14 = +[RPNWNetworkAgent sharedNetworkAgent];
  dispatchQueue = [v14 dispatchQueue];
  v16 = [(RPPairingSession *)v12 initWithApplicationService:applicationService queue:dispatchQueue availablePINsChangedHandler:&stru_1001AA9D8 bonjourResolveHandler:&stru_1001AAA18 endpointsChangedHandler:0];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100014114;
  v19[3] = &unk_1001AAA40;
  v20 = listenerCopy;
  v21 = v16;
  v17 = v16;
  v18 = listenerCopy;
  [(RPPairingSession *)v17 activateForServerWithPin:pinCopy advertiseSensitiveInfo:v9 completionHandler:v19];
}

+ (id)sharedNetworkAgent
{
  if (qword_1001D63D8 != -1)
  {
    sub_10011FD60();
  }

  v3 = qword_1001D63D0;

  return v3;
}

- (id)getPersonaFromParameters:(id)parameters
{
  v3 = nw_parameters_copy_application_id();
  if (v3)
  {
    *uu = 0;
    v9 = 0;
    nw_application_id_get_persona();
    uUIDString = 0;
    if (!uuid_is_null(uu))
    {
      v5 = [[NSUUID alloc] initWithUUIDBytes:uu];
      v6 = v5;
      if (v5)
      {
        uUIDString = [v5 UUIDString];
      }

      else
      {
        uUIDString = 0;
      }
    }
  }

  else
  {
    uUIDString = 0;
  }

  return uUIDString;
}

- (void)executeAgentLogicInPersona:(id)persona pid:(int)pid handlerDescription:(id)description handler:(id)handler
{
  personaCopy = persona;
  descriptionCopy = description;
  handlerCopy = handler;
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10011FD74(descriptionCopy);
  }

  handlerCopy[2](handlerCopy);
}

- (RPNWNetworkAgent)init
{
  v5.receiver = self;
  v5.super_class = RPNWNetworkAgent;
  v2 = [(RPNWNetworkAgent *)&v5 init];
  if (v2)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FDB4();
    }

    v3 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPNWNetworkAgent;
  [(RPNWNetworkAgent *)&v2 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  v5 = 0;
  NSAppendPrintF(&v5, "-- RPNWNetworkAgent --\n", *&level);
  v3 = v5;
  [RPNWAgentClient listAgentClients:v3];
  [RPNWEndpoint listEndpoints:v3];
  [RPNWListener listAllowedApplicationServices:v3];
  [RPNWConnection listConnections:v3];

  return v3;
}

- (void)activate
{
  label = dispatch_queue_get_label(self->_dispatchQueue);
  if (dword_1001D4638 <= 30)
  {
    v4 = label;
    if (dword_1001D4638 != -1 || _LogCategory_Initialize())
    {
      sub_10011FDE8(v4);
    }
  }

  [(RPNWNetworkAgent *)self createRapportServer];
  [(RPNWNetworkAgent *)self createBrowseAgent];
  [(RPNWNetworkAgent *)self createNetworkAgent];
  [(RPNWNetworkAgent *)self createDDUIResolveAgent];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080F18;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10011FE28();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080F94;
  block[3] = &unk_1001AA970;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    selfCopy = self;
    self->_invalidateCalled = 1;
    if (dword_1001D4638 <= 30)
    {
      if (dword_1001D4638 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10011FE5C(self, a2, v2);
      }
    }

    [(RPNWNetworkAgent *)selfCopy _invalidated];
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    if (dword_1001D4638 <= 30)
    {
      if (dword_1001D4638 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_10011FE78(self, a2, v2);
      }
    }
  }
}

- (void)_update
{
  if (self->_prefNetworkAgentEnabled)
  {
    [(RPNWNetworkAgent *)self _ensureStarted];
  }

  else
  {
    [(RPNWNetworkAgent *)self _ensureStopped];
  }
}

- (id)getDiscoveryDeviceTypesDescription:(unsigned int)description
{
  v4 = objc_alloc_init(NSMutableString);
  [v4 appendString:@"<"];
  if (description == -1)
  {
    v5 = @" all devices";
LABEL_18:
    [v4 appendString:v5];
    goto LABEL_19;
  }

  if (description)
  {
    [v4 appendString:@" iPhone"];
    if ((description & 2) == 0)
    {
LABEL_4:
      if ((description & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((description & 2) == 0)
  {
    goto LABEL_4;
  }

  [v4 appendString:@" iPad"];
  if ((description & 4) == 0)
  {
LABEL_5:
    if ((description & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v4 appendString:@" mac"];
  if ((description & 8) == 0)
  {
LABEL_6:
    if ((description & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v4 appendString:@" watch"];
  if ((description & 0x10) == 0)
  {
LABEL_7:
    if ((description & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    [v4 appendString:@" homepod"];
    if ((description & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_15:
  [v4 appendString:@" atv"];
  if ((description & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((description & 0x40) != 0)
  {
LABEL_17:
    v5 = @" vision";
    goto LABEL_18;
  }

LABEL_19:
  [v4 appendString:@" >"];

  return v4;
}

- (unint64_t)convertBrowseScopeToControlFlags:(unsigned int)flags
{
  v3 = 12288;
  if (flags)
  {
    v3 = 0;
  }

  v4 = (flags << 18) & 0x100000 | ((((flags & 8) >> 3) & 1) << 44) | v3 | (flags << 11) & 0x1000 | (flags << 9) & 0x2000 | ((flags & 0x40) << 37) & 0xFFFFDFFFFFFFFFFFLL | ((((flags & 0x20) >> 5) & 1) << 45);
  if ((flags & 0x80) != 0)
  {
    return 0x380000103C00;
  }

  else
  {
    return v4;
  }
}

- (unint64_t)convertConnectionParametersToControlFlags:(id)flags
{
  v3 = 0x60000220000;
  flagsCopy = flags;
  next_hop_required_interface_subtype = nw_parameters_get_next_hop_required_interface_subtype();
  if (next_hop_required_interface_subtype != 1002)
  {
    if (next_hop_required_interface_subtype == 1001)
    {
      v3 = 0x60000400000;
    }

    else if (nw_parameters_get_include_ble())
    {
      v3 = 0x40000600100;
    }

    else
    {
      v3 = 0;
    }
  }

  v6 = nw_parameters_copy_prohibited_interface_subtypes();
  if (xpc_array_get_count(v6))
  {
    v7 = 0;
    do
    {
      uint64 = xpc_array_get_uint64(v6, v7);
      v9 = v3 | 0x400000;
      if (uint64 != 1002)
      {
        v9 = v3;
      }

      if (uint64 == 1001)
      {
        v3 |= 0x200000uLL;
      }

      else
      {
        v3 = v9;
      }

      ++v7;
    }

    while (v7 < xpc_array_get_count(v6));
  }

  v10 = nw_parameters_copy_preferred_interface_subtypes();
  if (xpc_array_get_count(v10))
  {
    v11 = 0;
    do
    {
      if (xpc_array_get_uint64(v10, v11) == 1002)
      {
        v3 |= 0x20000uLL;
      }

      ++v11;
    }

    while (v11 < xpc_array_get_count(v10));
  }

  return v3;
}

- (unint64_t)convertBrowseParamsToControlFlags:(id)flags
{
  flagsCopy = flags;
  include_ble = nw_parameters_get_include_ble();
  include_screen_off_devices = nw_parameters_get_include_screen_off_devices();
  v6 = 2;
  if (!include_ble)
  {
    v6 = 0;
  }

  v7 = 65538;
  if (!include_ble)
  {
    v7 = 0;
  }

  if (include_screen_off_devices)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (nw_parameters_get_next_hop_required_interface_type())
  {
    if (nw_parameters_get_next_hop_required_interface_type() == 1)
    {
      v8 |= 4uLL;
    }

    LOBYTE(include_ble) = 1;
  }

  if (nw_parameters_get_next_hop_required_interface_subtype())
  {
    next_hop_required_interface_subtype = nw_parameters_get_next_hop_required_interface_subtype();
    if (next_hop_required_interface_subtype == 1002)
    {
      if (dword_1001D4638 <= 60)
      {
        if (dword_1001D4638 != -1 || (next_hop_required_interface_subtype = _LogCategory_Initialize(), next_hop_required_interface_subtype))
        {
          sub_10011FE94(next_hop_required_interface_subtype, v10, v11);
        }
      }
    }

    else if (next_hop_required_interface_subtype == 1001)
    {
      v8 |= 4uLL;
    }

    v12 = nw_parameters_copy_preferred_interface_subtypes();
    goto LABEL_18;
  }

  v13 = nw_parameters_copy_preferred_interface_subtypes();
  v12 = v13;
  if (include_ble)
  {
LABEL_18:
    v14 = 1;
    goto LABEL_19;
  }

  v14 = xpc_array_get_count(v13) != 0;
LABEL_19:
  if (xpc_array_get_count(v12))
  {
    v15 = 0;
    do
    {
      uint64 = xpc_array_get_uint64(v12, v15);
      if (uint64 == 1002)
      {
        if (dword_1001D4638 <= 60)
        {
          if (dword_1001D4638 != -1 || (uint64 = _LogCategory_Initialize(), uint64))
          {
            sub_10011FE94(uint64, v17, v18);
          }
        }
      }

      else if (uint64 == 1001)
      {
        v8 |= 4uLL;
      }

      ++v15;
    }

    while (v15 < xpc_array_get_count(v12));
  }

  v19 = nw_parameters_copy_prohibited_interface_subtypes();
  count = xpc_array_get_count(v19);
  if (count)
  {
    for (i = 0; i < count; ++i)
    {
      v24 = xpc_array_get_uint64(v19, i);
      v25 = v8 & 0xFFFFFFFFFFFFFFFBLL;
      if (v24 != 1001)
      {
        v25 = v8;
      }

      if (v24 == 1002)
      {
        v8 &= ~8uLL;
      }

      else
      {
        v8 = v25;
      }

      count = xpc_array_get_count(v19);
    }
  }

  if (v19)
  {
    if (dword_1001D4638 <= 60)
    {
      if (dword_1001D4638 != -1 || (count = _LogCategory_Initialize(), count))
      {
        sub_10011FEB0(count, v21, v22);
      }
    }
  }

  else
  {
    v26 = nw_parameters_copy_prohibited_interface_types();
    v27 = v26;
    if (v26)
    {
      v28 = 1;
    }

    else
    {
      v28 = v14;
    }

    if (xpc_array_get_count(v26))
    {
      v29 = 0;
      do
      {
        v30 = xpc_array_get_uint64(v27, v29);
        v31 = v8 & 0xFFFFFFFFFFFFFFFBLL;
        if (v30 != 1001)
        {
          v31 = v8;
        }

        if (v30 == 1002)
        {
          v8 &= ~8uLL;
        }

        else
        {
          v8 = v31;
        }

        ++v29;
      }

      while (v29 < xpc_array_get_count(v27));
    }

    if (!v28)
    {
      v8 = 32774;
    }
  }

  return v8;
}

- (BOOL)discoverDevices:(id)devices response:(id)response context:(int)context
{
  devicesCopy = devices;
  responseCopy = response;
  browseDescriptor = [devicesCopy browseDescriptor];

  if (!browseDescriptor)
  {
    if (dword_1001D4638 <= 30)
    {
      if (dword_1001D4638 != -1 || (v11 = _LogCategory_Initialize(), v11))
      {
        sub_100120018(v11, v12, v13);
      }
    }

    goto LABEL_44;
  }

  if (context == 2)
  {
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_43;
    }

    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FECC(devicesCopy);
    }

    applicationService = [devicesCopy applicationService];

    if (applicationService)
    {
      networkAgentID = self->_networkAgentID;
      applicationService2 = [devicesCopy applicationService];
      [devicesCopy startPairingDiscovery:responseCopy agentUUID:networkAgentID applicationService:applicationService2 browseMode:0];
LABEL_19:

      goto LABEL_43;
    }

    if (dword_1001D4638 <= 30)
    {
      if (dword_1001D4638 != -1 || (v17 = _LogCategory_Initialize(), v17))
      {
        sub_10011FF28(v17, v18, v19);
      }
    }

LABEL_44:
    v43 = 0;
    goto LABEL_45;
  }

  if (context != 1)
  {
    browseDescriptor2 = [devicesCopy browseDescriptor];
    device_types = nw_browse_descriptor_get_device_types();

    if (device_types)
    {
      browseDescriptor3 = [devicesCopy browseDescriptor];
      browse_scope = nw_browse_descriptor_get_browse_scope();

      v28 = [(RPNWNetworkAgent *)self convertBrowseScopeToControlFlags:browse_scope];
      browseClient = [devicesCopy browseClient];
      v30 = nw_agent_client_copy_parameters();

      v48 = v30;
      v31 = [(RPNWNetworkAgent *)self convertBrowseParamsToControlFlags:v30];
      v32 = objc_alloc_init(NSMutableArray);
      browseDescriptor4 = [devicesCopy browseDescriptor];
      v34 = v32;
      nw_browse_descriptor_enumerate_device_filters();

      browseDescriptor5 = [devicesCopy browseDescriptor];
      rssi_threshold = nw_browse_descriptor_get_rssi_threshold();

      if (dword_1001D4638 <= 10 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_10011FF88(rssi_threshold);
      }

      applicationService3 = [devicesCopy applicationService];

      if (applicationService3)
      {
        v37 = v31 | v28;
        if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          browseToken = [devicesCopy browseToken];
          applicationService4 = [devicesCopy applicationService];
          v45 = [(RPNWNetworkAgent *)self getDiscoveryDeviceTypesDescription:device_types];
          browseDescriptor6 = [devicesCopy browseDescriptor];
          LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent discoverDevices:response:context:]", 30, "%@ DISCOVER: appSvc:'%@' device_types:%@ scope:%X descriptor:%@ cflags:%ll{flags}\n", browseToken, applicationService4, v45, browse_scope, browseDescriptor6, v37, &unk_100148C05);
        }

        v40 = self->_networkAgentID;
        applicationService5 = [devicesCopy applicationService];
        predicate = [devicesCopy predicate];
        [devicesCopy startDiscovery:responseCopy deviceTypes:device_types controlFlags:v37 deviceFilter:v34 agentUUID:v40 rssiThreshold:rssi_threshold applicationService:applicationService5 predicate:predicate];
      }

      else if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_10011FFC8();
      }

      if (applicationService3)
      {
        goto LABEL_43;
      }
    }

    else if (dword_1001D4638 <= 30)
    {
      if (dword_1001D4638 != -1 || (v23 = _LogCategory_Initialize(), v23))
      {
        sub_10011FFFC(v23, v24, v25);
      }
    }

    goto LABEL_44;
  }

  if (_os_feature_enabled_impl())
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10011FF44(devicesCopy);
    }

    v14 = self->_networkAgentID;
    applicationService2 = [devicesCopy applicationService];
    [devicesCopy startNearbyInvitationDiscovery:responseCopy agentUUID:v14 applicationService:applicationService2];
    goto LABEL_19;
  }

LABEL_43:
  v43 = 1;
LABEL_45:

  return v43;
}

- (BOOL)createRapportServer
{
  v3 = objc_alloc_init(RPNWPeer);
  server = self->server;
  self->server = v3;

  [(RPNWPeer *)self->server receiveWithRequestID:@"com.apple.oneapi.resolve" receiveHandler:&stru_1001AD968];
  v5 = self->server;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100081FE8;
  v7[3] = &unk_1001AD990;
  v7[4] = self;
  [(RPNWPeer *)v5 receiveWithRequestID:@"com.apple.oneapi.connection" receiveHandler:v7];
  [(RPNWPeer *)self->server handleConnectionData:1];
  return 1;
}

- (BOOL)createListenerFramer:(id)framer
{
  framerCopy = framer;
  flowToken = [framerCopy flowToken];
  if (flowToken)
  {
    [framerCopy flowToken];
  }

  else
  {
    [framerCopy browseToken];
  }
  v6 = ;

  if ([framerCopy type] != 1)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10012006C(v6);
    }

    goto LABEL_27;
  }

  listen_framer = [framerCopy listen_framer];

  if (listen_framer)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_1001200AC(v6);
    }

LABEL_27:
    v17 = 0;
    goto LABEL_28;
  }

  if (!framerCopy || ([framerCopy flowAssignHandler], (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, objc_msgSend(framerCopy, "localEndpoint"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
  {
    if (([framerCopy isUsingQUIC] & 1) == 0 && dword_1001D4638 <= 40 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120154(v6);
    }

    goto LABEL_27;
  }

  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001200EC(framerCopy);
  }

  if (([framerCopy isUsingQUIC] & 1) == 0)
  {
    v22[0] = 0;
    v22[1] = 0;
    [(NSUUID *)self->_networkAgentID getUUIDBytes:v22];
    localEndpoint = [framerCopy localEndpoint];
    nw_endpoint_set_agent_identifier();
  }

  start_handler[0] = _NSConcreteStackBlock;
  start_handler[1] = 3221225472;
  start_handler[2] = sub_100082478;
  start_handler[3] = &unk_1001AA998;
  v12 = framerCopy;
  v20 = v12;
  v21 = v6;
  definition = nw_framer_create_definition("listen-pipe", 0, start_handler);
  options = nw_framer_create_options(definition);

  flowAssignHandler = [v12 flowAssignHandler];
  localEndpoint2 = [v12 localEndpoint];
  (flowAssignHandler)[2](flowAssignHandler, localEndpoint2, 0, options);

  [v12 setFlowAssignHandler:0];
  v17 = 1;
LABEL_28:

  return v17;
}

- (BOOL)createConnectionFramer:(id)framer assign:(id)assign local:(id)local remote:(id)remote incomingConnection:(id)connection
{
  framerCopy = framer;
  assignCopy = assign;
  localCopy = local;
  remoteCopy = remote;
  connectionCopy = connection;
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_1001202C8();
  }

  if ([framerCopy type] == 4)
  {
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_1001204C8(framerCopy);
    }

    v75[0] = 0;
    v75[1] = 0;
    nw_endpoint_get_service_identifier();
    v16 = [[NSUUID alloc] initWithUUIDBytes:v75];
    v17 = [RPNWEndpoint findEndpoint:v16];
    if (v17)
    {
      v18 = v17;
      goto LABEL_10;
    }

    apple_service_apple_id = nw_endpoint_get_apple_service_apple_id();
    if (!apple_service_apple_id)
    {
      goto LABEL_57;
    }

    v31 = [NSString stringWithUTF8String:apple_service_apple_id];
    if (v31)
    {
      v62 = connectionCopy;
      v32 = remoteCopy;
      v33 = [[NSUUID alloc] initWithUUIDString:v31];

      if (v33)
      {
        v18 = [RPNWEndpoint findEndpoint:v33];

        v16 = v33;
        remoteCopy = v32;
        if (v18)
        {
          connectionCopy = v62;
LABEL_10:
          v55 = localCopy;
          v56 = assignCopy;
          v58 = remoteCopy;
          v60 = connectionCopy;
          if (_os_feature_enabled_impl() && (application_service_name = nw_endpoint_get_application_service_name(), !strcmp(application_service_name, "com.apple.DDUI-Picker")))
          {
            applicationService = @"com.apple.DDUI-Picker";
          }

          else
          {
            applicationService = [v18 applicationService];
          }

          shouldAutomapListener = [v18 shouldAutomapListener];
          v74[0] = 0;
          v74[1] = 0;
          flowClient = [framerCopy flowClient];
          nw_agent_client_get_uuid();

          v22 = [[NSUUID alloc] initWithUUIDBytes:v74];
          v23 = [RPNWConnection alloc];
          device = [v18 device];
          flowToken = [framerCopy flowToken];
          browseSession = [v18 browseSession];
          endpointUUID = [v18 endpointUUID];
          applicationService2 = applicationService;
          v28 = [(RPNWConnection *)v23 initWithPeer:device token:flowToken version:0 inbound:0 internal:browseSession applicationService:applicationService connectionID:v22 endpointID:endpointUUID];

          if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
          {
            sub_100120530();
          }

          connectionCopy = v60;
          if (v28)
          {
            remoteCopy = v58;
LABEL_27:
            v59 = remoteCopy;
            v61 = connectionCopy;
            if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
            {
              sub_100120598(framerCopy, v28);
            }

            goto LABEL_45;
          }

          remoteCopy = v58;
          if (dword_1001D4638 > 90)
          {
            v48 = 0;
            localCopy = v55;
            assignCopy = v56;
            v34 = applicationService2;
            goto LABEL_69;
          }

          localCopy = v55;
          assignCopy = v56;
          v34 = applicationService2;
          if (dword_1001D4638 != -1 || _LogCategory_Initialize())
          {
            sub_1001206F8(framerCopy);
          }

LABEL_68:
          v48 = 0;
          goto LABEL_69;
        }

        connectionCopy = v62;
        goto LABEL_57;
      }

      v16 = 0;
      remoteCopy = v32;
      connectionCopy = v62;
    }

LABEL_57:
LABEL_67:
    v34 = 0;
    goto LABEL_68;
  }

  if ([framerCopy type] != 3)
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120334(framerCopy);
    }

    goto LABEL_67;
  }

  if (dword_1001D4638 > 30 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
  {
    if (connectionCopy)
    {
      goto LABEL_23;
    }

LABEL_64:
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10012046C(framerCopy);
    }

    goto LABEL_67;
  }

  sub_10012039C(framerCopy);
  if (!connectionCopy)
  {
    goto LABEL_64;
  }

LABEL_23:
  v55 = localCopy;
  v56 = assignCopy;
  v28 = connectionCopy;
  flowToken2 = [framerCopy flowToken];
  [(RPNWConnection *)v28 setToken:flowToken2];

  applicationService2 = [framerCopy applicationService];
  if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || _LogCategory_Initialize())
    {
      sub_100120404(framerCopy);
    }

    shouldAutomapListener = 0;
    goto LABEL_27;
  }

  v59 = remoteCopy;
  v61 = connectionCopy;
  shouldAutomapListener = 0;
LABEL_45:
  peer = [(RPNWConnection *)v28 peer];
  peer2 = [(RPNWConnection *)v28 peer];
  destinationDevice = [peer2 destinationDevice];
  flowToken3 = [framerCopy flowToken];
  inbound = [(RPNWConnection *)v28 inbound];
  controlFlags = [framerCopy controlFlags];
  endpointUUID2 = [(RPNWConnection *)v28 endpointUUID];
  connectionUUID = [(RPNWConnection *)v28 connectionUUID];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100082E80;
  v71[3] = &unk_1001AD9E0;
  v72 = framerCopy;
  v73 = v28;
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1000830BC;
  v68[3] = &unk_1001AB488;
  v41 = v72;
  v69 = v41;
  v42 = v73;
  v70 = v42;
  LOBYTE(v50) = shouldAutomapListener;
  [peer connectToPeer:destinationDevice token:flowToken3 inboundConnection:inbound controlFlags:controlFlags applicationService:applicationService2 listenerID:endpointUUID2 automapListener:v50 connectionID:connectionUUID connectHandler:v71 lostHandler:v68];

  [v41 setConnection:v42];
  start_handler[0] = _NSConcreteStackBlock;
  start_handler[1] = 3221225472;
  start_handler[2] = sub_100083170;
  start_handler[3] = &unk_1001ADA30;
  v64 = v42;
  v43 = v41;
  v65 = v43;
  v34 = applicationService2;
  v66 = v34;
  selfCopy = self;
  v44 = v42;
  definition = nw_framer_create_definition("client-pipe", 0, start_handler);
  options = nw_framer_create_options(definition);

  v47 = nwrapport_copy_protocol_definition();
  if (dword_1001D4638 <= 40 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120620(v43);
  }

  nw_framer_options_set_peer_protocol_definition();
  localCopy = v55;
  assignCopy = v56;
  remoteCopy = v59;
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120678();
  }

  (*(v56 + 2))(v56, v55, v59, options);

  v48 = 1;
  connectionCopy = v61;
LABEL_69:

  return v48;
}

- (BOOL)createNearbyInvitationConnectionFramer:(id)framer assign:(id)assign local:(id)local remote:(id)remote incomingConnection:(id)connection
{
  framerCopy = framer;
  assignCopy = assign;
  localCopy = local;
  remoteCopy = remote;
  connectionCopy = connection;
  v16 = &unk_1001D4000;
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createNearbyInvitationConnectionFramer:assign:local:remote:incomingConnection:]", 30, "Setting NearbyInvitation connection framer options, local=%@, remote=%@\n", localCopy, remoteCopy);
  }

  if ([framerCopy type] != 4)
  {
    type = [framerCopy type];
    if (type != 3)
    {
      v53 = connectionCopy;
      v54 = remoteCopy;
      v29 = 0;
      applicationService = 0;
      goto LABEL_21;
    }

    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || (type = _LogCategory_Initialize(), type)))
    {
      type = sub_100120CA0(framerCopy);
      if (connectionCopy)
      {
        goto LABEL_16;
      }
    }

    else if (connectionCopy)
    {
LABEL_16:
      v29 = connectionCopy;
      applicationService = [framerCopy applicationService];
      v53 = connectionCopy;
      v54 = remoteCopy;
      if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_100120CE0(v29);
      }

      goto LABEL_21;
    }

    if (dword_1001D4638 <= 90)
    {
      if (dword_1001D4638 != -1 || (type = _LogCategory_Initialize(), type))
      {
        sub_100120D20(type, v32, v33);
      }
    }

    goto LABEL_34;
  }

  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100120D3C(framerCopy);
  }

  v65[0] = 0;
  v65[1] = 0;
  nw_endpoint_get_service_identifier();
  v17 = [[NSUUID alloc] initWithUUIDBytes:v65];
  v18 = [RPNWNearbyInvitationEndpoint findEndpoint:v17];
  if (!v18)
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100120E14(v17);
    }

LABEL_34:
    v46 = 0;
    goto LABEL_35;
  }

  v19 = v18;
  v53 = connectionCopy;
  v54 = remoteCopy;
  applicationService2 = [v18 applicationService];
  v21 = [RPNWNearbyInvitationConnection alloc];
  device = [v19 device];
  browseSession = [v19 browseSession];
  +[NSUUID UUID];
  v25 = v24 = assignCopy;
  [v19 endpointUUID];
  v52 = v17;
  v26 = framerCopy;
  v28 = v27 = localCopy;
  v29 = [(RPNWNearbyInvitationConnection *)v21 initWithPeer:device session:0 inbound:0 internal:browseSession applicationService:applicationService2 connectionID:v25 endpointID:v28];

  localCopy = v27;
  framerCopy = v26;
  applicationService = applicationService2;

  assignCopy = v24;
  v16 = &unk_1001D4000;
LABEL_21:
  peer = [(RPNWNearbyInvitationConnection *)v29 peer];
  nearbyInvitationSession = [peer nearbyInvitationSession];

  if (!nearbyInvitationSession)
  {
    peer2 = [(RPNWNearbyInvitationConnection *)v29 peer];
    peer3 = [(RPNWNearbyInvitationConnection *)v29 peer];
    [peer3 destinationDevice];
    v36 = v51 = localCopy;
    inbound = [(RPNWNearbyInvitationConnection *)v29 inbound];
    endpointUUID = [(RPNWNearbyInvitationConnection *)v29 endpointUUID];
    connectionUUID = [(RPNWNearbyInvitationConnection *)v29 connectionUUID];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100083E50;
    v62[3] = &unk_1001AD9E0;
    v63 = v29;
    v64 = framerCopy;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100084044;
    v59[3] = &unk_1001AB488;
    v60 = v63;
    v61 = v64;
    [peer2 connectToPeer:v36 inboundConnection:inbound applicationService:applicationService listenerID:endpointUUID connectionID:connectionUUID connectHandler:v62 disconnectHandler:v59];

    localCopy = v51;
  }

  [framerCopy setNearbyInvitationConnection:v29];
  start_handler[0] = _NSConcreteStackBlock;
  start_handler[1] = 3221225472;
  start_handler[2] = sub_1000840F4;
  start_handler[3] = &unk_1001ADA58;
  v56 = v29;
  v57 = framerCopy;
  v58 = applicationService;
  v39 = applicationService;
  v40 = v29;
  definition = nw_framer_create_definition("client-pipe-nbinv", 0, start_handler);
  options = nw_framer_create_options(definition);

  v43 = nwrapport_copy_protocol_definition();
  v44 = v16[398];
  if (v44 <= 40 && (v44 != -1 || _LogCategory_Initialize()))
  {
    sub_100120D7C(v43);
  }

  nw_framer_options_set_peer_protocol_definition();
  v45 = v16[398];
  remoteCopy = v54;
  if (v45 <= 30 && (v45 != -1 || _LogCategory_Initialize()))
  {
    sub_100120DBC(localCopy, v54);
  }

  assignCopy[2](assignCopy, localCopy, v54, options);

  v46 = 1;
  connectionCopy = v53;
LABEL_35:

  return v46;
}

- (BOOL)setupPolicyWithQueue:(id)queue browseAgent:(BOOL)agent
{
  agentCopy = agent;
  queueCopy = queue;
  v9 = queueCopy;
  if (agentCopy)
  {
    if (dword_1001D4638 <= 30)
    {
      if (dword_1001D4638 != -1 || (queueCopy = _LogCategory_Initialize(), queueCopy))
      {
        sub_100121110(queueCopy, v7, v8);
      }
    }

    v10 = objc_alloc_init(NEPolicySession);
    policySession = self->_policySession;
    self->_policySession = v10;

    v14 = self->_policySession;
    if (!v14)
    {
      if (dword_1001D4638 <= 90)
      {
        if (dword_1001D4638 != -1 || (v14 = _LogCategory_Initialize(), v14))
        {
          sub_1001211EC(v14, v12, v13);
        }
      }

      goto LABEL_42;
    }

    v37 = v9;
    [v14 setPriority:300];
    [(NEPolicySession *)self->_policySession lockSessionToCurrentProcess];
    v15 = [NEPolicyResult netAgentUUID:self->_browseAgentID];
    v16 = +[NEPolicyCondition allInterfaces];
    v17 = [NEPolicyCondition requiredAgentDomain:@"com.apple.rapport.browse" agentType:@"RapportBrowseAgent"];
    v18 = [NEPolicyCondition customEntitlement:@"com.apple.private.application-service-browse"];
    v19 = geteuid();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10012112C(v19);
    }

    v20 = [NEPolicyCondition uid:v19];
    v41[0] = v16;
    v41[1] = v17;
    v41[2] = v18;
    v41[3] = v20;
    v21 = [NSArray arrayWithObjects:v41 count:4];
    v22 = v15;
    v23 = [[NEPolicy alloc] initWithOrder:10 result:v15 conditions:v21];
    v24 = [(NEPolicySession *)self->_policySession addPolicy:v23];
    if (v24)
    {
      if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_10012116C();
      }

      [(NEPolicySession *)self->_policySession apply];
    }

    else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_1001211AC();
    }

    v9 = v37;
    if (!v24)
    {
LABEL_42:
      v35 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    v25 = NEVirtualInterfaceCreate();
    self->_interface = v25;
    if (!v25)
    {
      if (dword_1001D4638 <= 90)
      {
        if (dword_1001D4638 != -1 || (v25 = _LogCategory_Initialize(), v25))
        {
          sub_1001210F4(v25, v26, v27);
        }
      }

      goto LABEL_42;
    }

    v28 = NEVirtualInterfaceCopyName();
    NEVirtualInterfaceSetRankNever();
    v40 = 0;
    v39 = 0;
    v38 = 33022;
    v29 = v28;
    arc4random_buf(&v39, 8uLL);
    inet_ntop(30, &v38, v42, 0x1Cu);
    v30 = [NSString stringWithUTF8String:v42];
    v31 = [v30 stringByAppendingString:@"%"];
    v32 = [v31 stringByAppendingString:v29];

    v33 = v32;
    NEVirtualInterfaceAddAddress();
    NEVirtualInterfaceUpdateAdHocService();
    NEVirtualInterfaceSetReadAutomatically();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121080(v29);
    }

    [v29 UTF8String];
    v34 = nw_interface_create_with_name();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent setupPolicyWithQueue:browseAgent:]", 30, "Calling nw_agent_add_to_interface agent=%@, interface=%@\n", self->_networkAgent, v34);
    }

    if ((nw_agent_add_to_interface() & 1) == 0)
    {
      if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_1001210C0();
      }

      goto LABEL_42;
    }
  }

  v35 = 1;
LABEL_43:

  return v35;
}

- (BOOL)setupBrowseHandlers
{
  if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100121208(self, a2, v2);
    }
  }

  nw_agent_set_filterable_browse_handlers();
  return 1;
}

- (void)resolveRequest:(id)request existingEndpoint:(id)endpoint controlFlags:(unint64_t)flags clientPublicKey:(id)key client:(id)client token:(id)token
{
  requestCopy = request;
  clientCopy = client;
  tokenCopy = token;
  keyCopy = key;
  endpointCopy = endpoint;
  v19 = objc_alloc_init(RPNWPeer);
  device = [endpointCopy device];
  applicationService = [endpointCopy applicationService];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000850B4;
  v25[3] = &unk_1001ADB38;
  v25[4] = self;
  v26 = tokenCopy;
  v27 = requestCopy;
  v28 = clientCopy;
  v22 = clientCopy;
  v23 = requestCopy;
  v24 = tokenCopy;
  [(RPNWPeer *)v19 resolvePeer:device token:v24 controlFlags:flags applicationService:applicationService clientPublicKey:keyCopy resolveHandler:v25];
}

- (BOOL)setupResolveHandlers
{
  if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100121368(self, a2, v2);
    }
  }

  nw_agent_add_resolve_handlers();
  return 1;
}

- (void)createListener:(id)listener context:(int)context
{
  listenerCopy = listener;
  v7 = +[NSUUID UUID];
  if ([listenerCopy isUsingQUIC])
  {
    networkAgentID = 0;
  }

  else
  {
    networkAgentID = self->_networkAgentID;
  }

  applicationService = [listenerCopy applicationService];
  v10 = [RPNWPeer createNWEndpointWithID:v7 agentID:networkAgentID applicationService:applicationService];

  if (context != 2)
  {
    v13 = 0;
    goto LABEL_20;
  }

  browseClient = [listenerCopy browseClient];
  v12 = [_TtC8rapportd16RPPairingSession agentClientListenerGetPairingData:browseClient];

  if (v12)
  {
    v13 = [[NSString alloc] initWithData:v12 encoding:4];
    [v13 cStringUsingEncoding:4];
    nw_endpoint_set_device_id();
    if (dword_1001D4638 > 30 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_19;
    }

    v14 = "%@ LISTEN: Setting pin on local endpoint for pairing listener.\n";
  }

  else
  {
    if (dword_1001D4638 > 30)
    {
      v13 = 0;
      goto LABEL_19;
    }

    if (dword_1001D4638 == -1)
    {
      v13 = 0;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = "%@ LISTEN: Starting pairing listener with no PIN.\n";
  }

  browseToken = [listenerCopy browseToken];
  LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent createListener:context:]", 30, v14, browseToken);

LABEL_19:
LABEL_20:
  v16 = nw_array_create();
  nw_array_append();
  browseResponse = [listenerCopy browseResponse];
  (browseResponse)[2](browseResponse, v16);

  if (context != 1)
  {
    if (context == 2)
    {
      if (!_os_feature_enabled_impl())
      {
        goto LABEL_38;
      }

      [(RPNWNetworkAgent *)self createPairingListener:listenerCopy endpoint:v10 pin:v13];
      if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_1001215B0(listenerCopy);
      }
    }

    else if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121554(listenerCopy);
    }

    [(RPNWNetworkAgent *)self createListenerFramer:listenerCopy];
    goto LABEL_38;
  }

  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_10012160C(listenerCopy);
  }

  v18 = objc_alloc_init(RPNWNearbyInvitationPeer);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10008633C;
  v24[3] = &unk_1001AAA40;
  v25 = listenerCopy;
  v26 = v18;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000863D4;
  v21[3] = &unk_1001AB488;
  v19 = v25;
  v22 = v19;
  v23 = v26;
  v20 = v26;
  [(RPNWNearbyInvitationPeer *)v20 startServer:v19 withCompletion:v24 disconnectHandler:v21];
  if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
  {
    sub_100121668(v19);
  }

  [(RPNWNetworkAgent *)self createListenerFramer:v19];

LABEL_38:
}

- (BOOL)setupListenHandlers
{
  if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100121788(self, a2, v2);
    }
  }

  nw_agent_set_browse_handlers();
  return 1;
}

- (id)_applicationServiceAdvertiseDescriptorForClient:(id)client
{
  v3 = nw_agent_client_copy_advertise_descriptor();
  v6 = v3;
  if (v3)
  {
    type = nw_advertise_descriptor_get_type();
    if (type == 2)
    {
      v8 = v6;
      goto LABEL_12;
    }

    if (dword_1001D4638 <= 30)
    {
      v9 = type;
      if (dword_1001D4638 != -1 || _LogCategory_Initialize())
      {
        sub_10012194C(v9);
      }
    }
  }

  else if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_10012198C(v3, v4, v5);
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)startFlow:(id)flow listener:(id)listener client:(id)client assign:(id)assign parameters:(id)parameters
{
  flowCopy = flow;
  listenerCopy = listener;
  clientCopy = client;
  assignCopy = assign;
  parametersCopy = parameters;
  v16 = nw_agent_client_copy_endpoint();
  v17 = [_TtC8rapportd16RPPairingSession endpointGetPINFor:v16];
  nearbyInvitationConnection = [listenerCopy nearbyInvitationConnection];

  if (listenerCopy && !nearbyInvitationConnection)
  {
    v19 = [RPNWListener findListenerForAgentClient:listenerCopy sender:0 browseRequest:0];
    v20 = v19;
    if (v19)
    {
      v58 = clientCopy;
      removeTriggeredConnection = [v19 removeTriggeredConnection];
      if (removeTriggeredConnection)
      {
        v63 = removeTriggeredConnection;
        v54 = v17;
        v55 = assignCopy;
        v60 = parametersCopy;
        if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          sub_1001219A8(flowCopy);
        }

        v56 = flowCopy;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        incomingConnections = [v20 incomingConnections];
        v23 = [incomingConnections countByEnumeratingWithState:&v64 objects:v69 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v65;
          while (2)
          {
            v26 = 0;
            do
            {
              if (*v65 != v25)
              {
                objc_enumerationMutation(incomingConnections);
              }

              v27 = *(*(&v64 + 1) + 8 * v26);
              if ([v27 isTriggerable])
              {
                flowCopy = v56;
                if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
                {
                  sub_100121A5C(v56);
                }

                v30 = v27;

                if (v30)
                {
                  v53 = v30;
                  [v20 startConnection:v30 agentClient:listenerCopy];
                }

                else
                {
                  v53 = 0;
                }

                goto LABEL_36;
              }

              if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
              {
                sub_100121A04(v56);
              }

              v26 = v26 + 1;
            }

            while (v24 != v26);
            v28 = [incomingConnections countByEnumeratingWithState:&v64 objects:v69 count:16];
            v24 = v28;
            if (v28)
            {
              continue;
            }

            break;
          }
        }

        v53 = 0;
        flowCopy = v56;
LABEL_36:
        endpointUUID = [v63 endpointUUID];
        if ([flowCopy isUsingQUIC])
        {
          networkAgentID = 0;
        }

        else
        {
          networkAgentID = self->_networkAgentID;
        }

        applicationService = [listenerCopy applicationService];
        v57 = [RPNWPeer createNWEndpointWithID:endpointUUID agentID:networkAgentID applicationService:applicationService];

        peer = [v63 peer];
        destinationDevice = [peer destinationDevice];
        endpointUUID2 = [v63 endpointUUID];
        applicationService2 = [v63 applicationService];
        v38 = +[RPNWEndpoint globalEndpointsKey];
        [RPNWEndpoint addEndpointMapping:destinationDevice endpointID:endpointUUID2 applicationService:applicationService2 discoverySessionID:v38 shouldAutomapListener:1];

        v16 = v57;
        clientCopy = v58;
        v17 = v54;
        assignCopy = v55;
        parametersCopy = v60;
        goto LABEL_40;
      }

      if (dword_1001D4638 > 30 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
      {
LABEL_71:

        goto LABEL_72;
      }

      flowToken = [flowCopy flowToken];
      LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent startFlow:listener:client:assign:parameters:]", 30, "%@ FLOW: Received incoming connection but listener does not have a triggered connection\n", flowToken);
    }

    else
    {
      if (dword_1001D4638 > 90 || dword_1001D4638 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_71;
      }

      flowToken = [flowCopy flowToken];
      LogPrintF(&dword_1001D4638, "[RPNWNetworkAgent startFlow:listener:client:assign:parameters:]", 90, "%@ FLOW: Received incoming connection but listener agent has no mapping\n", flowToken);
    }

    goto LABEL_71;
  }

  v63 = 0;
LABEL_40:
  v39 = nw_parameters_copy_local_endpoint(parametersCopy);
  if (!v39)
  {
    v40 = +[NSUUID UUID];
    if ([flowCopy isUsingQUIC])
    {
      v41 = 0;
    }

    else
    {
      v41 = self->_networkAgentID;
    }

    v39 = [RPNWPeer createNWEndpointWithID:v40 agentID:v41 applicationService:@"dummy"];
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121AB4(flowCopy);
    }
  }

  v42 = nw_agent_client_copy_path();
  if (nw_path_is_listener())
  {
    [flowCopy setFlowAssignHandler:assignCopy];
    [flowCopy setLocalEndpoint:v39];
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121B60(flowCopy);
    }

    [(RPNWNetworkAgent *)self createListenerFramer:flowCopy];
  }

  else
  {
    v43 = v16;
    v44 = v17;
    v59 = v43;
    v61 = parametersCopy;
    v68[0] = 0;
    v68[1] = 0;
    nw_endpoint_get_service_identifier();
    v45 = [[NSUUID alloc] initWithUUIDBytes:v68];
    v46 = [RPNWNearbyInvitationEndpoint findEndpoint:v45];
    nearbyInvitationConnection2 = [listenerCopy nearbyInvitationConnection];
    v48 = v46 | nearbyInvitationConnection2;

    if (v48)
    {
      if (v46)
      {
        [v46 applicationService];
        v50 = v49 = clientCopy;
        [flowCopy setApplicationService:v50];

        clientCopy = v49;
      }

      v17 = v44;
      if (_os_feature_enabled_impl())
      {
        [listenerCopy nearbyInvitationConnection];
        v52 = v51 = clientCopy;
        [(RPNWNetworkAgent *)self createNearbyInvitationConnectionFramer:flowCopy assign:assignCopy local:v39 remote:v59 incomingConnection:v52];

        clientCopy = v51;
        v17 = v44;
      }
    }

    else
    {
      v17 = v44;
      if (v44)
      {
        if (_os_feature_enabled_impl())
        {
          [(RPNWNetworkAgent *)self createPairingConnectionFramer:flowCopy assign:assignCopy local:v39 remote:v59 pin:v44];
        }
      }

      else if (![(RPNWNetworkAgent *)self createConnectionFramer:flowCopy assign:assignCopy local:v39 remote:v59 incomingConnection:v63])
      {
        if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
        {
          sub_100121B0C(flowCopy);
        }

        (*(assignCopy + 2))(assignCopy, 0, 0, 0);
      }
    }

    v16 = v59;
    parametersCopy = v61;
  }

LABEL_72:
}

- (BOOL)setupFlowHandlers
{
  if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100121BB4(self, a2, v2);
    }
  }

  nw_agent_set_flow_handlers();
  return 1;
}

- (void)setupAssertHandlers:(id)handlers
{
  handlersCopy = handlers;
  v6 = handlersCopy;
  if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || (handlersCopy = _LogCategory_Initialize(), handlersCopy))
    {
      sub_100121CB4(handlersCopy, v4, v5);
    }
  }

  nw_agent_set_assert_handlers();
}

- (BOOL)createBrowseAgent
{
  selfCopy = self;
  if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100121D50(self, a2, v2);
    }
  }

  v4 = nw_agent_create();
  browseAgent = selfCopy->_browseAgent;
  selfCopy->_browseAgent = v4;

  v9 = selfCopy->_browseAgent;
  if (v9)
  {
    v13[0] = 0;
    v13[1] = 0;
    nw_agent_get_uuid();
    v10 = [[NSUUID alloc] initWithUUIDBytes:v13];
    browseAgentID = selfCopy->_browseAgentID;
    selfCopy->_browseAgentID = v10;

    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121D88();
    }

    [(RPNWNetworkAgent *)selfCopy setupPolicyWithQueue:selfCopy->_dispatchQueue browseAgent:1];
    [(RPNWNetworkAgent *)selfCopy setupBrowseHandlers];
    [(RPNWNetworkAgent *)selfCopy setupResolveHandlers];
    [(RPNWNetworkAgent *)selfCopy setupAssertHandlers:selfCopy->_browseAgent];
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121DC8();
    }

    nw_agent_change_state();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121DFC();
    }
  }

  else if (dword_1001D4638 <= 90)
  {
    if (dword_1001D4638 != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      sub_100121D6C(v6, v7, v8);
    }
  }

  return v9 != 0;
}

- (BOOL)createDDUIResolveAgent
{
  selfCopy = self;
  if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100121E30(self, a2, v2);
    }
  }

  v4 = nw_agent_create();
  dduiResolveAgent = selfCopy->_dduiResolveAgent;
  selfCopy->_dduiResolveAgent = v4;

  v9 = selfCopy->_dduiResolveAgent;
  if (v9)
  {
    [(RPNWNetworkAgent *)selfCopy setupPolicyForDDUIResolveAgent];
    [(RPNWNetworkAgent *)selfCopy setupResolveHandlersForDDUIResolveAgent];
    v10 = [(RPNWNetworkAgent *)selfCopy setupAssertHandlers:selfCopy->_dduiResolveAgent];
    if (dword_1001D4638 <= 30)
    {
      if (dword_1001D4638 != -1 || (v10 = _LogCategory_Initialize(), v10))
      {
        sub_100121E68(v10, v11, v12);
      }
    }

    v13 = nw_agent_change_state();
    if (dword_1001D4638 <= 30)
    {
      if (dword_1001D4638 != -1 || (v13 = _LogCategory_Initialize(), v13))
      {
        sub_100121E84(v13, v14, v15);
      }
    }
  }

  else if (dword_1001D4638 <= 90)
  {
    if (dword_1001D4638 != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      sub_100121E4C(v6, v7, v8);
    }
  }

  return v9 != 0;
}

- (void)setupPolicyForDDUIResolveAgent
{
  selfCopy = self;
  if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100121EA0(self, a2, v2);
    }
  }

  v4 = objc_alloc_init(NEPolicySession);
  dduiResolvePolicySession = selfCopy->_dduiResolvePolicySession;
  selfCopy->_dduiResolvePolicySession = v4;

  v8 = selfCopy->_dduiResolvePolicySession;
  if (v8)
  {
    [v8 setPriority:300];
    [(NEPolicySession *)selfCopy->_dduiResolvePolicySession lockSessionToCurrentProcess];
    v19[0] = 0;
    v19[1] = 0;
    nw_agent_get_uuid();
    v9 = [[NSUUID alloc] initWithUUIDBytes:v19];
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121EBC(v9);
    }

    v10 = [NEPolicyResult netAgentUUID:v9];
    v11 = +[NEPolicyCondition allInterfaces];
    v12 = [NEPolicyCondition requiredAgentDomain:@"com.apple.rapport.dduiresolve" agentType:@"RapportDDUIResolveAgent"];
    v13 = [NEPolicyCondition customEntitlement:@"com.apple.private.application-service-browse"];
    v14 = geteuid();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121EFC(v14);
    }

    v15 = [NEPolicyCondition uid:v14];
    v18[0] = v11;
    v18[1] = v12;
    v18[2] = v13;
    v18[3] = v15;
    v16 = [NSArray arrayWithObjects:v18 count:4];
    v17 = [[NEPolicy alloc] initWithOrder:10 result:v10 conditions:v16];
    if ([(NEPolicySession *)selfCopy->_dduiResolvePolicySession addPolicy:v17])
    {
      if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_100121F3C(selfCopy);
      }

      [(NEPolicySession *)selfCopy->_dduiResolvePolicySession apply];
    }

    else if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100121F80(selfCopy);
    }
  }

  else if (dword_1001D4638 <= 90)
  {
    if (dword_1001D4638 != -1 || (v8 = _LogCategory_Initialize(), v8))
    {
      sub_100121FC4(v8, v6, v7);
    }
  }
}

- (void)setupResolveHandlersForDDUIResolveAgent
{
  if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100121FE0(self, a2, v2);
    }
  }

  nw_agent_add_resolve_handlers();
}

- (BOOL)createNetworkAgent
{
  selfCopy = self;
  if (dword_1001D4638 <= 30)
  {
    if (dword_1001D4638 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_1001220BC(self, a2, v2);
    }
  }

  v4 = nw_agent_create();
  networkAgent = selfCopy->_networkAgent;
  selfCopy->_networkAgent = v4;

  v9 = selfCopy->_networkAgent;
  if (v9)
  {
    v13[0] = 0;
    v13[1] = 0;
    nw_agent_get_uuid();
    v10 = [[NSUUID alloc] initWithUUIDBytes:v13];
    networkAgentID = selfCopy->_networkAgentID;
    selfCopy->_networkAgentID = v10;

    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_1001220F4();
    }

    [(RPNWNetworkAgent *)selfCopy setupPolicyWithQueue:selfCopy->_dispatchQueue browseAgent:0];
    [(RPNWNetworkAgent *)selfCopy setupListenHandlers];
    [(RPNWNetworkAgent *)selfCopy setupFlowHandlers];
    [(RPNWNetworkAgent *)selfCopy setupAssertHandlers:selfCopy->_networkAgent];
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100122134();
    }

    nw_agent_change_state();
    if (dword_1001D4638 <= 30 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_100122168();
    }
  }

  else if (dword_1001D4638 <= 90)
  {
    if (dword_1001D4638 != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      sub_1001220D8(v6, v7, v8);
    }
  }

  return v9 != 0;
}

- (id)_quicProtocolOptionsFromParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = nw_parameters_copy_default_protocol_stack(parametersCopy);
  v5 = v4;
  if (v4)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_100002A1C;
    v13 = sub_1000031A4;
    v14 = 0;
    iterate_block[0] = _NSConcreteStackBlock;
    iterate_block[1] = 3221225472;
    iterate_block[2] = sub_100088590;
    iterate_block[3] = &unk_1001AAA68;
    iterate_block[4] = &v9;
    nw_protocol_stack_iterate_application_protocols(v4, iterate_block);
    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_10012219C(parametersCopy);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_isTCPTransport:(id)transport
{
  transportCopy = transport;
  v4 = nw_parameters_copy_default_protocol_stack(transportCopy);
  if (v4)
  {
    v5 = nw_protocol_copy_tcp_definition();
    v6 = nw_protocol_stack_includes_protocol();
  }

  else
  {
    if (dword_1001D4638 <= 90 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
    {
      sub_1001221DC(transportCopy);
    }

    v6 = 0;
  }

  return v6;
}

- (void)exchangeQUICPublicKeyFor:(id)for publicKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  forCopy = for;
  v10 = [[RPNWPendingKeyExchange alloc] initWithApplicationService:forCopy publicKey:keyCopy handler:completionCopy];

  v11 = [RPNWAgentClient findListenerAgentClientFromApplicationServiceName:forCopy];

  if (v11)
  {
    [(RPNWNetworkAgent *)self _invokeKeyExchange:v10 agentClient:v11];
  }

  else
  {
    pendingKeyExchangesByIdentifier = self->_pendingKeyExchangesByIdentifier;
    identifier = [(RPNWPendingKeyExchange *)v10 identifier];
    v14 = [(NSMutableDictionary *)pendingKeyExchangesByIdentifier objectForKeyedSubscript:identifier];

    if (v14)
    {
      if (dword_1001D4638 <= 60 && (dword_1001D4638 != -1 || _LogCategory_Initialize()))
      {
        sub_10012221C(v10);
      }

      v21 = RPErrorF(4294960566, "New key exchange for same service and key", v15, v16, v17, v18, v19, v20, v26);
      handler = [v14 handler];
      (handler)[2](handler, 0, 0, v21);
    }

    else
    {
      v23 = self->_pendingKeyExchangesByIdentifier;
      if (!v23)
      {
        v24 = +[NSMutableDictionary dictionary];
        v25 = self->_pendingKeyExchangesByIdentifier;
        self->_pendingKeyExchangesByIdentifier = v24;

        v23 = self->_pendingKeyExchangesByIdentifier;
      }

      [(NSMutableDictionary *)v23 setObject:v10 forKeyedSubscript:keyCopy];
    }
  }
}

- (void)_completePendingKeyExchangeForAgentClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  v5 = [(NSMutableDictionary *)self->_pendingKeyExchangesByIdentifier copy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        applicationService = [v12 applicationService];
        applicationService2 = [clientCopy applicationService];
        v15 = [applicationService isEqualToString:applicationService2];

        if (v15)
        {
          [(RPNWNetworkAgent *)selfCopy _invokeKeyExchange:v12 agentClient:clientCopy];
          [(NSMutableDictionary *)selfCopy->_pendingKeyExchangesByIdentifier setObject:0 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)_invokeKeyExchange:(id)exchange agentClient:(id)client
{
  clientCopy = client;
  exchangeCopy = exchange;
  agentClientID = [clientCopy agentClientID];
  uUIDString = [agentClientID UUIDString];
  v9 = [uUIDString cStringUsingEncoding:4];

  bonjour_service = nw_endpoint_create_bonjour_service(v9, "_asquic._udp", "local");
  publicKey = [exchangeCopy publicKey];
  v18 = publicKey;
  v12 = [NSArray arrayWithObjects:&v18 count:1];
  nw_endpoint_set_public_keys();

  browseClient = [clientCopy browseClient];
  v14 = [RPNWUtils publicKeyFromAgentClient:browseClient];

  v15 = nw_array_create();
  nw_array_append();
  browseResponse = [clientCopy browseResponse];

  (browseResponse)[2](browseResponse, v15);
  handler = [exchangeCopy handler];

  (handler)[2](handler, agentClientID, v14, 0);
}

@end