@interface _DDUIRapportPairingTransport
- (NSArray)availableDevices;
- (_DDUIRapportPairingTransport)initWithMode:(unint64_t)mode;
- (_DDUIRapportPairingTransport)initWithMode:(unint64_t)mode companionLinkClient:(id)client;
- (id)sessionForDevice:(id)device bundleID:(id)d serviceIdentifier:(id)identifier error:(id *)error;
- (void)_setupListeningForResponseMessagesIfNeeded;
- (void)activateForDeviceTypes:(unsigned int)types withCompletion:(id)completion;
- (void)createListenerMappingForDevice:(id)device forServiceIdentifier:(id)identifier completion:(id)completion;
- (void)invalidate;
- (void)setAvailableDevicesChangedHandler:(id)handler;
- (void)setupListeningForSessionsWithHandler:(id)handler;
- (void)shouldReauthenticateDevice:(id)device forServiceIdentifier:(id)identifier completion:(id)completion;
@end

@implementation _DDUIRapportPairingTransport

- (_DDUIRapportPairingTransport)initWithMode:(unint64_t)mode
{
  v5 = objc_alloc_init(MEMORY[0x277D44160]);
  v6 = [(_DDUIRapportPairingTransport *)self initWithMode:mode companionLinkClient:v5];

  return v6;
}

- (_DDUIRapportPairingTransport)initWithMode:(unint64_t)mode companionLinkClient:(id)client
{
  v22 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v19.receiver = self;
  v19.super_class = _DDUIRapportPairingTransport;
  v8 = [(_DDUIRapportPairingTransport *)&v19 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D44150]);
    rpClient = v8->_rpClient;
    v8->_rpClient = v9;

    objc_storeStrong(&v8->_client, client);
    v12 = DDUICorePrimaryQueue(v11);
    [(RPCompanionLinkClient *)v8->_client setDispatchQueue:v12];

    if (mode)
    {
      v13 = 0;
    }

    else
    {
      v13 = 4231174;
    }

    if (_os_feature_enabled_impl())
    {
      v14 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_230EF9000, v14, OS_LOG_TYPE_DEFAULT, "Starting discovery with AWDL enabled", buf, 2u);
      }
    }

    else
    {
      v13 |= 0x400000uLL;
    }

    [(RPCompanionLinkClient *)v8->_client setControlFlags:v13];
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    transportSessionByUUID = v8->_transportSessionByUUID;
    v8->_transportSessionByUUID = strongToWeakObjectsMapTable;

    v17 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = v8;
      _os_log_impl(&dword_230EF9000, v17, OS_LOG_TYPE_DEFAULT, "[_DDUIRapportPairingTransport init] {self: %p}", buf, 0xCu);
    }
  }

  return v8;
}

- (NSArray)availableDevices
{
  v113 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v84 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  activeDevices = [(RPCompanionLinkClient *)self->_client activeDevices];
  v5 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v112 = activeDevices;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "Finding available devices among %@", buf, 0xCu);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = activeDevices;
  v6 = [obj countByEnumeratingWithState:&v103 objects:v110 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v104;
    do
    {
      v9 = 0;
      do
      {
        if (*v104 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v103 + 1) + 8 * v9);
        model = [v10 model];
        v12 = selfCopy->_wantedDeviceTypes & DDUIDeviceTypeForModelString(model);

        if (v12)
        {
          sourceVersion = [v10 sourceVersion];
          if ([sourceVersion length])
          {
            sourceVersion2 = [v10 sourceVersion];
            integerValue = [sourceVersion2 integerValue];

            if (integerValue < 400)
            {
              goto LABEL_34;
            }

            idsDeviceIdentifier = [v10 idsDeviceIdentifier];
            idsDeviceIdentifier2 = v88;
            if (idsDeviceIdentifier)
            {
              idsDeviceIdentifier2 = [v10 idsDeviceIdentifier];
              if ([v84 containsObject:idsDeviceIdentifier2])
              {
                v88 = idsDeviceIdentifier2;

                goto LABEL_14;
              }
            }

            idsDeviceIdentifier3 = [v10 idsDeviceIdentifier];
            v88 = idsDeviceIdentifier2;
            if (idsDeviceIdentifier3)
            {

LABEL_26:
              if (idsDeviceIdentifier)
              {
              }
            }

            else
            {
              identifier = [v10 identifier];
              if (!identifier)
              {
                goto LABEL_26;
              }

              v30 = identifier;
              identifier2 = [v10 identifier];
              v32 = [v84 containsObject:identifier2];

              if (idsDeviceIdentifier)
              {

                if ((v32 & 1) == 0)
                {
                  goto LABEL_28;
                }
              }

              else if (!v32)
              {
                goto LABEL_28;
              }

LABEL_14:
              if (([v10 statusFlags] & 4) == 0)
              {
                goto LABEL_34;
              }

              if ([v3 count])
              {
                v18 = 0;
                while (1)
                {
                  v19 = [v3 objectAtIndexedSubscript:v18];
                  idsDeviceIdentifier4 = [v19 idsDeviceIdentifier];
                  idsDeviceIdentifier5 = [v10 idsDeviceIdentifier];
                  if (!idsDeviceIdentifier5)
                  {
                    break;
                  }

                  v22 = idsDeviceIdentifier5;
                  v23 = [idsDeviceIdentifier4 isEqual:idsDeviceIdentifier5];

                  if (v23)
                  {
                    goto LABEL_19;
                  }

LABEL_20:
                  if (++v18 >= [v3 count])
                  {
                    goto LABEL_28;
                  }
                }

                identifier3 = [v10 identifier];
                v25 = [idsDeviceIdentifier4 isEqual:identifier3];

                if ((v25 & 1) == 0)
                {
                  goto LABEL_20;
                }

LABEL_19:
                [v3 removeObjectAtIndex:v18--];
                goto LABEL_20;
              }
            }

LABEL_28:
            v27 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v112 = v10;
              _os_log_impl(&dword_230EF9000, v27, OS_LOG_TYPE_DEFAULT, "Found acceptable device %@", buf, 0xCu);
            }

            [v3 addObject:v10];
            sourceVersion = [v10 idsDeviceIdentifier];
            if (sourceVersion)
            {
              [v84 addObject:sourceVersion];
            }

            else
            {
              identifier4 = [v10 identifier];
              [v84 addObject:identifier4];
            }
          }
        }

LABEL_34:
        ++v9;
      }

      while (v9 != v7);
      v33 = [obj countByEnumeratingWithState:&v103 objects:v110 count:16];
      v7 = v33;
    }

    while (v33);
  }

  v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  previousAvailableDevices = [(_DDUIRapportPairingTransport *)selfCopy previousAvailableDevices];
  v36 = [previousAvailableDevices countByEnumeratingWithState:&v99 objects:v109 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v100;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v100 != v38)
        {
          objc_enumerationMutation(previousAvailableDevices);
        }

        v40 = *(*(&v99 + 1) + 8 * i);
        idsDeviceIdentifier6 = [v40 idsDeviceIdentifier];
        if (idsDeviceIdentifier6)
        {
          [v34 addObject:idsDeviceIdentifier6];
        }

        else
        {
          identifier5 = [v40 identifier];
          [v34 addObject:identifier5];
        }
      }

      v37 = [previousAvailableDevices countByEnumeratingWithState:&v99 objects:v109 count:16];
    }

    while (v37);
  }

  v89 = [v84 mutableCopy];
  [v89 minusSet:v34];
  v43 = [v34 mutableCopy];
  [v43 minusSet:v84];
  v82 = v34;
  v85 = [v34 mutableCopy];
  [v85 unionSet:v84];
  previousAvailableDevices2 = [(_DDUIRapportPairingTransport *)selfCopy previousAvailableDevices];
  v45 = [previousAvailableDevices2 mutableCopy];
  v46 = v45;
  if (v45)
  {
    array = v45;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v48 = array;

  if ([v48 count])
  {
    v49 = 0;
    do
    {
      v50 = [v48 objectAtIndexedSubscript:v49];
      idsDeviceIdentifier7 = [v50 idsDeviceIdentifier];
      v52 = idsDeviceIdentifier7;
      if (idsDeviceIdentifier7)
      {
        identifier6 = idsDeviceIdentifier7;
      }

      else
      {
        identifier6 = [v50 identifier];
      }

      v54 = identifier6;

      if ([v43 containsObject:v54])
      {
        [v48 removeObjectAtIndex:v49--];
      }

      ++v49;
    }

    while (v49 < [v48 count]);
  }

  v81 = v43;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  subsystem = v3;
  v55 = [subsystem countByEnumeratingWithState:&v95 objects:v108 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v96;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v96 != v57)
        {
          objc_enumerationMutation(subsystem);
        }

        v59 = *(*(&v95 + 1) + 8 * j);
        idsDeviceIdentifier8 = [v59 idsDeviceIdentifier];
        if (idsDeviceIdentifier8)
        {
          v61 = idsDeviceIdentifier8;
          v62 = [v89 containsObject:idsDeviceIdentifier8];

          if (v62)
          {
            goto LABEL_71;
          }
        }

        else
        {
          identifier7 = [v59 identifier];
          v64 = [v89 containsObject:identifier7];

          if (v64)
          {
LABEL_71:
            [v48 addObject:v59];
            continue;
          }
        }

        idsDeviceIdentifier9 = [v59 idsDeviceIdentifier];
        v66 = [v85 containsObject:idsDeviceIdentifier9];

        if (v66 && [v48 count])
        {
          v67 = 0;
          while (1)
          {
            idsDeviceIdentifier10 = [v59 idsDeviceIdentifier];
            v69 = [v48 objectAtIndexedSubscript:v67];
            idsDeviceIdentifier11 = [v69 idsDeviceIdentifier];
            v71 = [idsDeviceIdentifier10 isEqual:idsDeviceIdentifier11];

            if (v71)
            {
              break;
            }

            if (++v67 >= [v48 count])
            {
              goto LABEL_80;
            }
          }

          [v48 replaceObjectAtIndex:v67 withObject:v59];
        }

LABEL_80:
        ;
      }

      v56 = [subsystem countByEnumeratingWithState:&v95 objects:v108 count:16];
    }

    while (v56);
  }

  v72 = [v48 copy];
  objc_autoreleasePoolPop(context);
  [(_DDUIRapportPairingTransport *)selfCopy setPreviousAvailableDevices:v72];
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v74 = v72;
  v75 = [v74 countByEnumeratingWithState:&v91 objects:v107 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v92;
    do
    {
      for (k = 0; k != v76; ++k)
      {
        if (*v92 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = [[_DDUIRapportDevice alloc] initWithRPCompanionLinkDevice:*(*(&v91 + 1) + 8 * k)];
        [v73 addObject:v79];
      }

      v76 = [v74 countByEnumeratingWithState:&v91 objects:v107 count:16];
    }

    while (v76);
  }

  return v73;
}

- (void)invalidate
{
  [(RPCompanionLinkClient *)self->_client invalidate];
  client = self->_client;
  self->_client = 0;
}

- (void)setAvailableDevicesChangedHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_availableDevicesChangedHandler != handlerCopy)
  {
    v5 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _Block_copy(handlerCopy);
      *buf = 134218242;
      selfCopy = self;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport set devices changed handler {self: %p, availableDevicesChangedHandler: %@}", buf, 0x16u);
    }

    v7 = _Block_copy(handlerCopy);
    availableDevicesChangedHandler = self->_availableDevicesChangedHandler;
    self->_availableDevicesChangedHandler = v7;

    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66___DDUIRapportPairingTransport_setAvailableDevicesChangedHandler___block_invoke;
    v13[3] = &unk_2788F5958;
    objc_copyWeak(&v15, buf);
    v9 = handlerCopy;
    v14 = v9;
    [(RPCompanionLinkClient *)self->_client setDeviceFoundHandler:v13];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66___DDUIRapportPairingTransport_setAvailableDevicesChangedHandler___block_invoke_2;
    v10[3] = &unk_2788F5958;
    objc_copyWeak(&v12, buf);
    v11 = v9;
    [(RPCompanionLinkClient *)self->_client setDeviceLostHandler:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

- (id)sessionForDevice:(id)device bundleID:(id)d serviceIdentifier:(id)identifier error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  identifierCopy = identifier;
  dCopy = d;
  v12 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 134218498;
    selfCopy = self;
    v33 = 2112;
    v34 = deviceCopy;
    v35 = 2112;
    v36 = identifierCopy;
    _os_log_impl(&dword_230EF9000, v12, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport creating transport session {self: %p, device: %@, serviceIdentifier %@}", &v31, 0x20u);
  }

  v13 = [[_DDUIRapportOutgoingTransportSession alloc] initWithServiceIdentifier:identifierCopy];
  v14 = objc_alloc_init(MEMORY[0x277D44170]);
  identifier = [deviceCopy identifier];
  [v14 setIdentifier:identifier];

  v16 = objc_alloc_init(MEMORY[0x277D44160]);
  [(_DDUIRapportOutgoingTransportSession *)v13 setClient:v16];

  v18 = DDUICorePrimaryQueue(v17);
  client = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [client setDispatchQueue:v18];

  client2 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [client2 setServiceType:@"com.apple.devicediscoveryui.rapportwake"];

  client3 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [client3 setDestinationDevice:v14];

  client4 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [client4 setUseCase:327680];

  client5 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [client5 setBleClientUseCase:327680];

  client6 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [client6 setAppID:dCopy];

  if (_os_feature_enabled_impl())
  {
    v25 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_230EF9000, v25, OS_LOG_TYPE_DEFAULT, "Creating session with AWDL enabled", &v31, 2u);
    }

    v26 = 262;
  }

  else
  {
    v26 = 4194566;
  }

  client7 = [(_DDUIRapportOutgoingTransportSession *)v13 client];
  [client7 setControlFlags:{objc_msgSend(client7, "controlFlags") | v26}];

  transportSessionByUUID = self->_transportSessionByUUID;
  sessionID = [(_DDUIRapportOutgoingTransportSession *)v13 sessionID];
  [(NSMapTable *)transportSessionByUUID setObject:v13 forKey:sessionID];

  [(_DDUIRapportPairingTransport *)self _setupListeningForResponseMessagesIfNeeded];

  return v13;
}

- (void)activateForDeviceTypes:(unsigned int)types withCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = DDUIDeviceTypeString(types);
    v9 = _Block_copy(completionCopy);
    *buf = 134218498;
    selfCopy = self;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_230EF9000, v7, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport activating {self: %p, deviceTypes: %@, completion: %@}", buf, 0x20u);
  }

  self->_wantedDeviceTypes = types;
  client = self->_client;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70___DDUIRapportPairingTransport_activateForDeviceTypes_withCompletion___block_invoke;
  v12[3] = &unk_2788F5980;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(RPCompanionLinkClient *)client activateWithCompletion:v12];
}

- (void)_setupListeningForResponseMessagesIfNeeded
{
  if (!self->_listeningForResponses)
  {
    self->_listeningForResponses = 1;
    objc_initWeak(&location, self);
    client = self->_client;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __74___DDUIRapportPairingTransport__setupListeningForResponseMessagesIfNeeded__block_invoke;
    v4[3] = &unk_2788F59A8;
    objc_copyWeak(&v5, &location);
    [(RPCompanionLinkClient *)client registerRequestID:@"DDUI-pair-resp" options:0 handler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)setupListeningForSessionsWithHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v5 = os_log_create("com.apple.DeviceDiscoveryUI", "rapport");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _Block_copy(handlerCopy);
    *buf = 134218242;
    selfCopy = self;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "_DDUIRapportPairingTransport setup listening {self: %p, incomingSessionHandler: %@}", buf, 0x16u);
  }

  client = self->_client;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69___DDUIRapportPairingTransport_setupListeningForSessionsWithHandler___block_invoke;
  v13[3] = &unk_2788F59D0;
  objc_copyWeak(&v15, &location);
  v13[4] = self;
  v8 = handlerCopy;
  v14 = v8;
  [(RPCompanionLinkClient *)client registerRequestID:@"DDUI-pair-init" options:0 handler:v13];
  v9 = self->_client;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69___DDUIRapportPairingTransport_setupListeningForSessionsWithHandler___block_invoke_33;
  v11[3] = &unk_2788F59F8;
  v11[4] = self;
  v10 = v8;
  v12 = v10;
  [(RPCompanionLinkClient *)v9 registerRequestID:@"_ccConfirmStart" options:0 handler:v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)shouldReauthenticateDevice:(id)device forServiceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  deviceCopy = device;
  rpClient = [(_DDUIRapportPairingTransport *)self rpClient];
  identifier = [deviceCopy identifier];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91___DDUIRapportPairingTransport_shouldReauthenticateDevice_forServiceIdentifier_completion___block_invoke;
  v14[3] = &unk_2788F5A20;
  v15 = completionCopy;
  v13 = completionCopy;
  [rpClient queryDeviceToListenerMapping:identifierCopy deviceID:identifier completion:v14];
}

- (void)createListenerMappingForDevice:(id)device forServiceIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  deviceCopy = device;
  rpClient = [(_DDUIRapportPairingTransport *)self rpClient];
  identifier = [deviceCopy identifier];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95___DDUIRapportPairingTransport_createListenerMappingForDevice_forServiceIdentifier_completion___block_invoke;
  v14[3] = &unk_2788F5A20;
  v15 = completionCopy;
  v13 = completionCopy;
  [rpClient createDeviceToListenerMapping:identifierCopy deviceID:identifier completion:v14];
}

@end