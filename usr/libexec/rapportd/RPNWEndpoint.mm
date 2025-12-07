@interface RPNWEndpoint
+ (BOOL)addEndpointMapping:(id)mapping endpointID:(id)d applicationService:(id)service discoverySessionID:(id)iD shouldAutomapListener:(BOOL)listener;
+ (BOOL)removeEndpointMapping:(id)mapping discoverySessionID:(id)d immediate:(BOOL)immediate;
+ (BOOL)updateEndpointMapping:(id)mapping discoverySessionID:(id)d;
+ (id)dduiEndpointsKey;
+ (id)findEndpoint:(id)endpoint;
+ (id)findEndpoint:(id)endpoint discoverySessionID:(id)d;
+ (id)findEndpoint:(id)endpoint endpointArray:(id)array;
+ (id)findEndpoint:(id)endpoint isFromDDUI:(BOOL *)i;
+ (id)getEndpointArray:(id)array;
+ (id)globalEndpointsKey;
+ (id)listEndpointsForDiscoverySession:(id)session;
+ (void)addDiscoverySessionID:(id)d forAgentClientID:(id)iD;
+ (void)addEndpoint:(id)endpoint discoverySessionID:(id)d;
+ (void)ageOutEndpointMapping:(id)mapping discoverySessionID:(id)d;
+ (void)clearEndpointMappings:(id)mappings;
+ (void)initialize;
+ (void)listEndpoints:(id)endpoints;
+ (void)pairWithEndpoint:(id)endpoint pin:(id)pin completionHandler:(id)handler;
+ (void)removeDiscoverySession:(id)session;
+ (void)startEndpointTimer;
+ (void)updateClientBrowseResult:(id)result browseResponse:(id)response token:(id)token agentUUID:(id)d agentClientID:(id)iD agentClientPID:(int)pID applicationService:(id)service discoverySessionID:(id)self0 predicate:(id)self1;
- (RPNWEndpoint)init;
- (RPNWEndpoint)initWithDevice:(id)device applicationService:(id)service endpointID:(id)d discoverySessionID:(id)iD shouldAutomapListener:(BOOL)listener;
- (id)description;
- (void)addAlternativeRepresentationDevice:(id)device;
- (void)dealloc;
- (void)startAgeOutTimer;
@end

@implementation RPNWEndpoint

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"RPNWEndpoint[%@:%@] '%@'", self->_applicationService, self->_endpointUUID, self->_device];
  ageOutTimeout = self->_ageOutTimeout;
  if (ageOutTimeout)
  {
    v5 = +[NSDate now];
    [(NSDate *)ageOutTimeout timeIntervalSinceDate:v5];
    v7 = v6;

    if (v7 >= 0.0)
    {
      v12 = v7;
      v8 = @" ageOut=%.0fs ";
    }

    else
    {
      v8 = @" ageOut=stale ";
    }

    [v3 appendFormat:v8, *&v12];
  }

  alternativeDevice = self->_alternativeDevice;
  if (alternativeDevice)
  {
    identifier = [(RPCompanionLinkDevice *)alternativeDevice identifier];
    [v3 appendFormat:@" alternative=%@ ", identifier];
  }

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPNWEndpoint;
  [(RPNWEndpoint *)&v2 dealloc];
}

+ (id)dduiEndpointsKey
{
  v2 = qword_1001D6240;
  if (!qword_1001D6240)
  {
    v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
    v4 = qword_1001D6240;
    qword_1001D6240 = v3;

    v2 = qword_1001D6240;
  }

  return v2;
}

+ (id)globalEndpointsKey
{
  v2 = qword_1001D6238;
  if (!qword_1001D6238)
  {
    v3 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
    v4 = qword_1001D6238;
    qword_1001D6238 = v3;

    v2 = qword_1001D6238;
  }

  return v2;
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v10[0] = 0;
    v10[1] = 0;
    v4 = [[NSUUID alloc] initWithUUIDBytes:v10];
    v5 = qword_1001D6238;
    qword_1001D6238 = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = qword_1001D6248;
    qword_1001D6248 = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = qword_1001D6250;
    qword_1001D6250 = v8;

    +[RPNWEndpoint startEndpointTimer];
  }
}

- (RPNWEndpoint)init
{
  v6.receiver = self;
  v6.super_class = RPNWEndpoint;
  v2 = [(RPNWEndpoint *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (RPNWEndpoint)initWithDevice:(id)device applicationService:(id)service endpointID:(id)d discoverySessionID:(id)iD shouldAutomapListener:(BOOL)listener
{
  listenerCopy = listener;
  deviceCopy = device;
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = RPNWEndpoint;
  v16 = [(RPNWEndpoint *)&v20 init];
  v17 = v16;
  if (v16)
  {
    [(RPNWEndpoint *)v16 setDevice:deviceCopy];
    [(RPNWEndpoint *)v17 setApplicationService:serviceCopy];
    [(RPNWEndpoint *)v17 setEndpointUUID:dCopy];
    [(RPNWEndpoint *)v17 setShouldAutomapListener:listenerCopy];
    if (([iDCopy isEqual:qword_1001D6238] & 1) == 0 && (objc_msgSend(iDCopy, "isEqual:", qword_1001D6240) & 1) == 0)
    {
      [(RPNWEndpoint *)v17 setBrowseSession:1];
    }

    v18 = v17;
  }

  return v17;
}

- (void)startAgeOutTimer
{
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A248(self);
  }

  v3 = [NSDate dateWithTimeIntervalSinceNow:180.0];
  ageOutTimeout = self->_ageOutTimeout;
  self->_ageOutTimeout = v3;
}

- (void)addAlternativeRepresentationDevice:(id)device
{
  deviceCopy = device;
  alternativeDevice = [(RPNWEndpoint *)self alternativeDevice];

  if (alternativeDevice)
  {
    if (dword_1001D3EE0 <= 30)
    {
      if (dword_1001D3EE0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_10011A288(v5, v6, v7);
      }
    }
  }

  [(RPNWEndpoint *)self setAlternativeDevice:deviceCopy];
}

+ (id)getEndpointArray:(id)array
{
  if (!array)
  {
    array = qword_1001D6238;
  }

  v3 = [qword_1001D6250 objectForKeyedSubscript:array];

  return v3;
}

+ (id)listEndpointsForDiscoverySession:(id)session
{
  sessionCopy = session;
  v4 = objc_alloc_init(NSMutableString);
  v5 = [RPNWEndpoint getEndpointArray:sessionCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) description];
        [v4 appendFormat:@"  %@\n", v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)startEndpointTimer
{
  v2 = +[RPNWNetworkAgent sharedNetworkAgent];
  dispatchQueue = [v2 dispatchQueue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, dispatchQueue);
  v5 = qword_1001D6258;
  qword_1001D6258 = v4;

  dispatch_source_set_event_handler(qword_1001D6258, &stru_1001ACD80);
  CUDispatchTimerSet();
  v6 = qword_1001D6258;

  dispatch_activate(v6);
}

+ (void)removeDiscoverySession:(id)session
{
  sessionCopy = session;
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A2A4(sessionCopy);
  }

  v4 = [RPNWEndpoint getEndpointArray:sessionCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v22 + 1) + 8 * i) startAgeOutTimer];
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [qword_1001D6248 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v18 + 1) + 8 * j);
        v15 = [qword_1001D6248 objectForKeyedSubscript:v14];
        v16 = [v15 containsObject:sessionCopy];

        if (v16)
        {
          v17 = [qword_1001D6248 objectForKeyedSubscript:v14];
          [v17 removeObject:sessionCopy];

          goto LABEL_21;
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:
}

+ (void)addDiscoverySessionID:(id)d forAgentClientID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v6 = [qword_1001D6248 objectForKeyedSubscript:iDCopy];
  if (!v6)
  {
    v7 = objc_alloc_init(NSMutableSet);
    [qword_1001D6248 setObject:v7 forKeyedSubscript:iDCopy];

    v6 = [qword_1001D6248 objectForKeyedSubscript:iDCopy];
  }

  [v6 addObject:dCopy];
}

+ (void)addEndpoint:(id)endpoint discoverySessionID:(id)d
{
  endpointCopy = endpoint;
  dCopy = d;
  v6 = [RPNWEndpoint getEndpointArray:dCopy];
  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableArray);
    [qword_1001D6250 setObject:v6 forKeyedSubscript:dCopy];
  }

  [v6 addObject:endpointCopy];
}

+ (BOOL)addEndpointMapping:(id)mapping endpointID:(id)d applicationService:(id)service discoverySessionID:(id)iD shouldAutomapListener:(BOOL)listener
{
  listenerCopy = listener;
  mappingCopy = mapping;
  dCopy = d;
  serviceCopy = service;
  iDCopy = iD;
  v17 = iDCopy;
  p_opt_inst_meths = &OBJC_PROTOCOL___NSCoding.opt_inst_meths;
  if (dword_1001D3EE0 <= 30)
  {
    if (dword_1001D3EE0 != -1 || (iDCopy = _LogCategory_Initialize(), iDCopy))
    {
      iDCopy = LogPrintF(&dword_1001D3EE0, "+[RPNWEndpoint addEndpointMapping:endpointID:applicationService:discoverySessionID:shouldAutomapListener:]", 30, "Adding endpoint mapping [%@:%@] for device '%@' and session '%@'\n", serviceCopy, dCopy, mappingCopy, v17);
    }
  }

  if (!v17)
  {
    if (dword_1001D3EE0 <= 30)
    {
      if (dword_1001D3EE0 != -1 || (iDCopy = _LogCategory_Initialize(), iDCopy))
      {
        sub_10011A3C4(iDCopy, v15, v16);
      }
    }

    v30 = 0;
    goto LABEL_48;
  }

  v19 = +[RPNWEndpoint dduiEndpointsKey];

  v49 = serviceCopy;
  v50 = dCopy;
  v48 = listenerCopy;
  if (v19 == v17)
  {
    v20 = v17;
    if (dword_1001D3EE0 <= 40 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
    {
      sub_10011A324();
    }

    [RPNWConnection stopAllOutgoingConnectionsNotForPeer:mappingCopy];
    v31 = +[RPNWEndpoint dduiEndpointsKey];
    v32 = [RPNWEndpoint getEndpointArray:v31];

    [v32 removeAllObjects];
  }

  else
  {
    v20 = v17;
    [RPNWEndpoint getEndpointArray:v17];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v21 = v58 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v56;
      while (2)
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v56 != v24)
          {
            objc_enumerationMutation(v21);
          }

          device = [*(*(&v55 + 1) + 8 * i) device];
          identifier = [device identifier];
          identifier2 = [mappingCopy identifier];
          v29 = [identifier isEqual:identifier2];

          if (v29)
          {
            if (dword_1001D3EE0 <= 40 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
            {
              sub_10011A2E4(mappingCopy);
            }

            v30 = 0;
            serviceCopy = v49;
            dCopy = v50;
            v17 = v20;
            goto LABEL_48;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    serviceCopy = v49;
    dCopy = v50;
    listenerCopy = v48;
    p_opt_inst_meths = (&OBJC_PROTOCOL___NSCoding + 40);
  }

  v17 = v20;
  if (![serviceCopy isEqualToString:@"com.apple.DDUI-Picker"])
  {
LABEL_44:
    v44 = [[RPNWEndpoint alloc] initWithDevice:mappingCopy applicationService:serviceCopy endpointID:dCopy discoverySessionID:v17 shouldAutomapListener:listenerCopy];
    v45 = *(p_opt_inst_meths + 952);
    if (v45 <= 40 && (v45 != -1 || _LogCategory_Initialize()))
    {
      sub_10011A384(v44);
    }

    [RPNWEndpoint addEndpoint:v44 discoverySessionID:v17];

    v30 = 1;
    goto LABEL_48;
  }

  v47 = v20;
  [RPNWEndpoint getEndpointArray:v20];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v33 = v54 = 0u;
  v34 = [v33 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (!v34)
  {
LABEL_37:

LABEL_43:
    serviceCopy = v49;
    dCopy = v50;
    v17 = v47;
    listenerCopy = v48;
    p_opt_inst_meths = &OBJC_PROTOCOL___NSCoding.opt_inst_meths;
    goto LABEL_44;
  }

  v35 = v34;
  v36 = *v52;
LABEL_31:
  v37 = 0;
  while (1)
  {
    if (*v52 != v36)
    {
      objc_enumerationMutation(v33);
    }

    v38 = *(*(&v51 + 1) + 8 * v37);
    device2 = [v38 device];
    idsDeviceIdentifier = [device2 idsDeviceIdentifier];
    idsDeviceIdentifier2 = [mappingCopy idsDeviceIdentifier];
    v42 = [idsDeviceIdentifier isEqualToString:idsDeviceIdentifier2];

    if (v42)
    {
      break;
    }

    if (v35 == ++v37)
    {
      v35 = [v33 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v35)
      {
        goto LABEL_31;
      }

      goto LABEL_37;
    }
  }

  v43 = v38;

  if (!v43)
  {
    goto LABEL_43;
  }

  serviceCopy = v49;
  dCopy = v50;
  if (dword_1001D3EE0 <= 40 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A344(v43);
  }

  [v43 addAlternativeRepresentationDevice:mappingCopy];

  v30 = 1;
  v17 = v47;
LABEL_48:

  return v30;
}

+ (BOOL)updateEndpointMapping:(id)mapping discoverySessionID:(id)d
{
  mappingCopy = mapping;
  dCopy = d;
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A3E0(mappingCopy);
  }

  v20 = dCopy;
  v7 = [RPNWEndpoint getEndpointArray:dCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        device = [v13 device];
        v15 = [device isEqualToDevice:mappingCopy];

        if (v15)
        {
          if (dword_1001D3EE0 <= 40 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
          {
            sub_10011A420(v13);
          }

          [v13 setDevice:mappingCopy];
          v10 = 1;
        }

        alternativeDevice = [v13 alternativeDevice];
        v17 = [alternativeDevice isEqualToDevice:mappingCopy];

        if (v17)
        {
          if (dword_1001D3EE0 <= 40 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
          {
            sub_10011A460(v13);
          }

          [v13 setAlternativeDevice:mappingCopy];
          v10 = 1;
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v18 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v9 = v18;
    }

    while (v18);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

+ (void)ageOutEndpointMapping:(id)mapping discoverySessionID:(id)d
{
  mappingCopy = mapping;
  dCopy = d;
  v6 = [RPNWEndpoint findEndpoint:mappingCopy discoverySessionID:dCopy];
  v7 = v6;
  if (v6)
  {
    [v6 startAgeOutTimer];
  }

  else if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3EE0, "+[RPNWEndpoint ageOutEndpointMapping:discoverySessionID:]", 30, "Did not find endpoint:%@ in session:%@, not starting age-out", mappingCopy, dCopy);
  }
}

+ (BOOL)removeEndpointMapping:(id)mapping discoverySessionID:(id)d immediate:(BOOL)immediate
{
  immediateCopy = immediate;
  mappingCopy = mapping;
  dCopy = d;
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3EE0, "+[RPNWEndpoint removeEndpointMapping:discoverySessionID:immediate:]", 30, "Removing endpoint '%@' for device '%@'", self, mappingCopy);
  }

  v28 = dCopy;
  v9 = [RPNWEndpoint getEndpointArray:dCopy];
  v29 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v10)
  {
    v31 = 0;
    goto LABEL_31;
  }

  v11 = v10;
  v31 = 0;
  v12 = *v34;
  do
  {
    v13 = 0;
    do
    {
      if (*v34 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v33 + 1) + 8 * v13);
      device = [v14 device];
      identifier = [device identifier];
      identifier2 = [mappingCopy identifier];
      v18 = [identifier isEqual:identifier2];

      if (!v18)
      {
        goto LABEL_16;
      }

      alternativeDevice = [v14 alternativeDevice];

      if (alternativeDevice)
      {
        if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
        {
          sub_10011A4A0();
        }

        alternativeDevice2 = [v14 alternativeDevice];
        [v14 setDevice:alternativeDevice2];

LABEL_16:
        v21 = 0;
        goto LABEL_17;
      }

      v21 = 1;
LABEL_17:
      alternativeDevice3 = [v14 alternativeDevice];
      identifier3 = [alternativeDevice3 identifier];
      identifier4 = [mappingCopy identifier];
      v25 = [identifier3 isEqual:identifier4];

      if (v25)
      {
        [v14 setAlternativeDevice:0];
      }

      if (v21)
      {
        if (immediateCopy)
        {
          [v29 addObject:v14];
        }

        else
        {
          [v14 startAgeOutTimer];
        }

        v31 = 1;
      }

      v13 = v13 + 1;
    }

    while (v11 != v13);
    v26 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    v11 = v26;
  }

  while (v26);
LABEL_31:

  [obj removeObjectsInArray:v29];
  return v31 & 1;
}

+ (void)clearEndpointMappings:(id)mappings
{
  mappingsCopy = mappings;
  v24 = +[NSMutableArray array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = qword_1001D6250;
  v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v27)
  {
    v26 = *v37;
    do
    {
      v4 = 0;
      do
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v36 + 1) + 8 * v4);
        v29 = v4;
        v5 = [qword_1001D6250 objectForKeyedSubscript:v24];
        v6 = +[NSMutableArray array];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v33;
          v30 = *v33;
          do
          {
            v11 = 0;
            v31 = v9;
            do
            {
              if (*v33 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v32 + 1) + 8 * v11);
              if (mappingsCopy)
              {
                device = [v12 device];
                v14 = [device isEqualToDevice:mappingsCopy];

                if (!v14)
                {
                  goto LABEL_26;
                }

                if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
                {
                  v15 = "Removing endpoint '%@'\n";
                  goto LABEL_24;
                }

                goto LABEL_25;
              }

              ageOutTimeout = [v12 ageOutTimeout];
              if (ageOutTimeout)
              {
                v17 = ageOutTimeout;
                v18 = +[NSDate now];
                [v12 ageOutTimeout];
                v20 = v19 = v6;
                v21 = [v18 earlierDate:v20];
                ageOutTimeout2 = [v12 ageOutTimeout];

                v6 = v19;
                mappingsCopy = 0;
                v9 = v31;

                v23 = v21 == ageOutTimeout2;
                v10 = v30;
                if (v23)
                {
                  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
                  {
                    v15 = "Endpoint aged out, removing endpoint '%@'\n";
LABEL_24:
                    sub_10011A4D4(v15, v12);
                  }

LABEL_25:
                  [v6 addObject:v12];
                }
              }

LABEL_26:
              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v9);
        }

        [v7 removeObjectsInArray:v6];
        if (![v7 count])
        {
          [v24 addObject:v28];
        }

        v4 = v29 + 1;
      }

      while ((v29 + 1) != v27);
      v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v27);
  }

  [qword_1001D6250 removeObjectsForKeys:v24];
}

+ (void)updateClientBrowseResult:(id)result browseResponse:(id)response token:(id)token agentUUID:(id)d agentClientID:(id)iD agentClientPID:(int)pID applicationService:(id)service discoverySessionID:(id)self0 predicate:(id)self1
{
  responseCopy = response;
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  serviceCopy = service;
  sessionIDCopy = sessionID;
  predicateCopy = predicate;
  v17 = nw_array_create();
  v18 = objc_alloc_init(NSMutableArray);
  v41 = iDCopy;
  v19 = [qword_1001D6248 objectForKeyedSubscript:iDCopy];
  v20 = [v19 copy];

  v40 = sessionIDCopy;
  v38 = v20;
  if (v20)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v50 objects:v55 count:16];
    v23 = dCopy;
    if (v22)
    {
      v24 = v22;
      v25 = *v51;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v51 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = [RPNWEndpoint getEndpointArray:*(*(&v50 + 1) + 8 * i)];
          [v18 addObjectsFromArray:v27];
        }

        v24 = [v21 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v28 = [RPNWEndpoint getEndpointArray:sessionIDCopy];
    [v18 addObjectsFromArray:v28];

    v23 = dCopy;
  }

  v29 = +[_TtC8rapportd15RPNWBrowseAgent shared];
  v39 = v18;
  v30 = [v29 filterEndpoints:v18 serviceName:serviceCopy predicate:predicateCopy];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = 0;
    v35 = *v47;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = [RPNWPeer createNWEndpointForEndpoint:*(*(&v46 + 1) + 8 * j) agentID:v23 applicationService:serviceCopy];
        if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D3EE0, "+[RPNWEndpoint updateClientBrowseResult:browseResponse:token:agentUUID:agentClientID:agentClientPID:applicationService:discoverySessionID:predicate:]", 30, "%@  %d -> %@", tokenCopy, v34++, v37, v38);
          v23 = dCopy;
        }

        nw_array_append();
      }

      v33 = [v31 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v33);
  }

  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A510(v17, tokenCopy);
  }

  responseCopy[2](responseCopy, v17);
}

+ (id)findEndpoint:(id)endpoint endpointArray:(id)array
{
  endpointCopy = endpoint;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        endpointUUID = [v10 endpointUUID];
        v12 = [endpointUUID isEqual:endpointCopy];

        if (v12)
        {
          if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
          {
            sub_10011A560(v10);
          }

          v7 = v10;
          goto LABEL_14;
        }
      }

      v7 = [arrayCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v7;
}

+ (id)findEndpoint:(id)endpoint discoverySessionID:(id)d
{
  endpointCopy = endpoint;
  dCopy = d;
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A5A0(endpointCopy);
  }

  v7 = [RPNWEndpoint getEndpointArray:dCopy];
  v8 = [RPNWEndpoint findEndpoint:endpointCopy endpointArray:v7];

  return v8;
}

+ (id)findEndpoint:(id)endpoint
{
  v5 = 0;
  v3 = [RPNWEndpoint findEndpoint:endpoint isFromDDUI:&v5];

  return v3;
}

+ (id)findEndpoint:(id)endpoint isFromDDUI:(BOOL *)i
{
  endpointCopy = endpoint;
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A5E0(endpointCopy);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = qword_1001D6250;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    iCopy = i;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [qword_1001D6250 objectForKeyedSubscript:v11];
        v13 = [RPNWEndpoint findEndpoint:endpointCopy endpointArray:v12];
        if (v13)
        {
          v14 = v13;
          v15 = +[RPNWEndpoint dduiEndpointsKey];
          *iCopy = v11 == v15;

          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

+ (void)listEndpoints:(id)endpoints
{
  endpointsCopy = endpoints;
  [endpointsCopy appendString:@"Discovered Endpoints\n"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = qword_1001D6250;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([v8 isEqual:qword_1001D6238])
        {
          v9 = endpointsCopy;
          v10 = @" + Global endpoints\n";
        }

        else if ([v8 isEqual:qword_1001D6240])
        {
          v9 = endpointsCopy;
          v10 = @" + DDUI mapped endpoints\n";
        }

        else
        {
          v16 = v8;
          v9 = endpointsCopy;
          v10 = @" + Endpoints discovered by session '%@'\n";
        }

        [v9 appendFormat:v10, v16];
        v11 = [qword_1001D6250 objectForKeyedSubscript:v8];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v18 + 1) + 8 * j) description];
              [endpointsCopy appendFormat:@"  %@\n"];
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v13);
        }

        if (![v11 count])
        {
          [endpointsCopy appendString:@"  <empty>\n"];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }
}

+ (void)pairWithEndpoint:(id)endpoint pin:(id)pin completionHandler:(id)handler
{
  endpointCopy = endpoint;
  pinCopy = pin;
  handlerCopy = handler;
  if (dword_1001D3EE0 <= 30 && (dword_1001D3EE0 != -1 || _LogCategory_Initialize()))
  {
    sub_10011A620(endpointCopy);
  }

  v10 = +[_TtC8rapportd16RPPairingSession pairingEndpoints];
  v11 = [v10 objectForKeyedSubscript:endpointCopy];

  if (v11)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100066FD0;
    v20[3] = &unk_1001ACDA8;
    v21 = handlerCopy;
    [v11 pairWithPin:pinCopy completionHandler:v20];
  }

  else
  {
    v18 = RPErrorF(4294960569, "Pairing session not found", v12, v13, v14, v15, v16, v17, v19);
    (*(handlerCopy + 2))(handlerCopy, 0, v18);
  }
}

@end