@interface MRCompanionLinkClient
+ (id)sharedCompanionLinkClient;
+ (id)sharedIDSCompanionLinkClient;
+ (void)rapportCompanionLinkClient:(id)client;
- (MRCompanionLinkClient)initWithOptions:(int)options;
- (NSArray)companionLinkDevices;
- (id)_resolveEventID:(id)d;
- (id)deviceUIDForRapportUID:(id)d;
- (id)nameForUID:(id)d;
- (id)rapportUIDForDeviceUID:(id)d;
- (id)registerEvent:(id)event callback:(id)callback;
- (id)registerRequest:(id)request callback:(id)callback;
- (void)_enqueueEvent:(id)event userInfo:(id)info destination:(id)destination uid:(id)uid;
- (void)_enqueueRequest:(id)request userInfo:(id)info destination:(id)destination uid:(id)uid date:(id)date response:(id)response;
- (void)_handleEventID:(id)d event:(id)event options:(id)options;
- (void)_handleRequestID:(id)d request:(id)request options:(id)options response:(id)response;
- (void)_registerEvent:(id)event;
- (void)_registerRequest:(id)request;
- (void)_sendEvent:(id)event userInfo:(id)info destination:(id)destination uid:(id)uid;
- (void)_sendRequest:(id)request userInfo:(id)info destination:(id)destination uid:(id)uid date:(id)date response:(id)response;
- (void)removeCallback:(id)callback;
- (void)sendEvent:(id)event destination:(id)destination userInfo:(id)info;
- (void)sendEvent:(id)event toDevicesOfHomeUser:(id)user userInfo:(id)info;
- (void)sendRequest:(id)request destination:(id)destination userInfo:(id)info timeout:(double)timeout response:(id)response;
- (void)setConnection:(id)connection;
@end

@implementation MRCompanionLinkClient

+ (id)sharedCompanionLinkClient
{
  if (sharedCompanionLinkClient_onceToken != -1)
  {
    +[MRCompanionLinkClient sharedCompanionLinkClient];
  }

  v3 = sharedCompanionLinkClient___connection;

  return v3;
}

void __50__MRCompanionLinkClient_sharedCompanionLinkClient__block_invoke()
{
  v0 = [[MRCompanionLinkClient alloc] initWithOptions:0];
  v1 = sharedCompanionLinkClient___connection;
  sharedCompanionLinkClient___connection = v0;
}

+ (id)sharedIDSCompanionLinkClient
{
  if (sharedIDSCompanionLinkClient_onceToken != -1)
  {
    +[MRCompanionLinkClient sharedIDSCompanionLinkClient];
  }

  return 0;
}

+ (void)rapportCompanionLinkClient:(id)client
{
  clientCopy = client;
  v4 = objc_alloc_init(MEMORY[0x1E69C6B70]);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.mediaremote.companionLinkClient", v5);
  [v4 setDispatchQueue:v6];

  [v4 setInvalidationHandler:&__block_literal_global_89];
  [v4 setInterruptionHandler:&__block_literal_global_92];
  v7 = [[MRBlockGuard alloc] initWithTimeout:@"CompanionLinkClient:activate" reason:&__block_literal_global_100 handler:30.0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_101;
  v11[3] = &unk_1E769B898;
  v13 = v4;
  v14 = clientCopy;
  v12 = v7;
  v8 = v4;
  v9 = clientCopy;
  v10 = v7;
  [v8 activateWithCompletion:v11];
}

void __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke()
{
  v0 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_cold_1();
  }
}

void __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_90()
{
  v0 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_90_cold_1();
  }
}

void __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_97(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_97_cold_1();
  }
}

void __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_101(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] disarm];
  v4 = _MRLogForCategory(7uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_101_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] CompanionLinkClient activated", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__MRCompanionLinkClient_rapportCompanionLinkClient___block_invoke_102;
  v6[3] = &unk_1E769AB28;
  v8 = a1[6];
  v7 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (MRCompanionLinkClient)initWithOptions:(int)options
{
  v8.receiver = self;
  v8.super_class = MRCompanionLinkClient;
  v3 = [(MRCompanionLinkClient *)&v8 init];
  v4 = v3;
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__MRCompanionLinkClient_initWithOptions___block_invoke;
    v6[3] = &unk_1E769B8C0;
    v7 = v3;
    [MRCompanionLinkClient rapportCompanionLinkClient:v6];
  }

  return v4;
}

- (void)setConnection:(id)connection
{
  v62 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = connectionCopy;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Setting Connection %@", buf, 0xCu);
  }

  objc_storeStrong(&selfCopy->_connection, connection);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = selfCopy->_pendingRegisteredEvents;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v8)
  {
    v9 = *v53;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(MRCompanionLinkClient *)selfCopy _registerEvent:*(*(&v52 + 1) + 8 * i), connectionCopy];
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v8);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = selfCopy->_pendingRegisteredRequests;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v12)
  {
    v13 = *v49;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [(MRCompanionLinkClient *)selfCopy _registerRequest:*(*(&v48 + 1) + 8 * j), connectionCopy];
      }

      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v12);
  }

  pendingRegisteredEvents = selfCopy->_pendingRegisteredEvents;
  selfCopy->_pendingRegisteredEvents = 0;

  pendingRegisteredRequests = selfCopy->_pendingRegisteredRequests;
  selfCopy->_pendingRegisteredRequests = 0;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = selfCopy->_pendingEvents;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v18)
  {
    v19 = *v45;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v44 + 1) + 8 * k);
        eventID = [v21 eventID];
        userInfo = [v21 userInfo];
        destination = [v21 destination];
        v25 = [v21 uid];
        [(MRCompanionLinkClient *)selfCopy _sendEvent:eventID userInfo:userInfo destination:destination uid:v25];
      }

      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v18);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = selfCopy->_pendingRequests;
  v26 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v26)
  {
    v27 = *v41;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v40 + 1) + 8 * m);
        eventID2 = [v29 eventID];
        userInfo2 = [v29 userInfo];
        destination2 = [v29 destination];
        v33 = [v29 uid];
        date = [v29 date];
        callback = [v29 callback];
        [(MRCompanionLinkClient *)selfCopy _sendRequest:eventID2 userInfo:userInfo2 destination:destination2 uid:v33 date:date response:callback];
      }

      v26 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v56 count:16];
    }

    while (v26);
  }

  pendingEvents = selfCopy->_pendingEvents;
  selfCopy->_pendingEvents = 0;

  pendingRequests = selfCopy->_pendingRequests;
  selfCopy->_pendingRequests = 0;

  objc_sync_exit(selfCopy);
}

- (id)deviceUIDForRapportUID:(id)d
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  activeDevices = [(RPCompanionLinkClient *)selfCopy->_connection activeDevices];
  v7 = [activeDevices countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (!v7)
  {
    mediaRouteIdentifier = 0;
    goto LABEL_23;
  }

  v8 = *v27;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(activeDevices);
      }

      v10 = *(*(&v26 + 1) + 8 * i);
      effectiveIdentifier = [v10 effectiveIdentifier];
      isEqualToString = objc_msgSend_isEqualToString_(effectiveIdentifier);

      if (isEqualToString)
      {
        mediaRouteIdentifier = [v10 mediaRouteIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name = [v10 name];
          *buf = 138543874;
          v31 = dCopy;
          v32 = 2114;
          v33 = mediaRouteIdentifier;
          v34 = 2114;
          v35 = name;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped inputUID <%{public}@> to effectiveIdentifier <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      identifier = [v10 identifier];
      v14 = objc_msgSend_isEqualToString_(identifier);

      if (v14)
      {
        mediaRouteIdentifier = [v10 mediaRouteIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name2 = [v10 name];
          *buf = 138543874;
          v31 = dCopy;
          v32 = 2114;
          v33 = mediaRouteIdentifier;
          v34 = 2114;
          v35 = name2;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped inputUID <%{public}@> to identifier <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      mediaRouteIdentifier2 = [v10 mediaRouteIdentifier];
      v16 = objc_msgSend_isEqualToString_(mediaRouteIdentifier2);

      if (v16)
      {
        mediaRouteIdentifier = [v10 mediaRouteIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name3 = [v10 name];
          *buf = 138543874;
          v31 = dCopy;
          v32 = 2114;
          v33 = mediaRouteIdentifier;
          v34 = 2114;
          v35 = name3;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped inputUID <%{public}@> to mediaRouteIdentifier <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      mediaRemoteIdentifier = [v10 mediaRemoteIdentifier];
      v18 = objc_msgSend_isEqualToString_(mediaRemoteIdentifier);

      if (v18)
      {
        mediaRouteIdentifier = [v10 mediaRouteIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name4 = [v10 name];
          *buf = 138543874;
          v31 = dCopy;
          v32 = 2114;
          v33 = mediaRouteIdentifier;
          v34 = 2114;
          v35 = name4;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped inputUID <%{public}@> to mediaRemoteIdentifier <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    v7 = [activeDevices countByEnumeratingWithState:&v26 objects:v36 count:16];
    mediaRouteIdentifier = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_23:

  objc_sync_exit(selfCopy);

  return mediaRouteIdentifier;
}

- (id)rapportUIDForDeviceUID:(id)d
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  activeDevices = [(RPCompanionLinkClient *)selfCopy->_connection activeDevices];
  v7 = [activeDevices countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (!v7)
  {
    effectiveIdentifier = 0;
    goto LABEL_23;
  }

  v8 = *v27;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(activeDevices);
      }

      v10 = *(*(&v26 + 1) + 8 * i);
      mediaRouteIdentifier = [v10 mediaRouteIdentifier];
      isEqualToString = objc_msgSend_isEqualToString_(mediaRouteIdentifier);

      if (isEqualToString)
      {
        effectiveIdentifier = [v10 effectiveIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name = [v10 name];
          *buf = 138543874;
          v31 = dCopy;
          v32 = 2114;
          v33 = effectiveIdentifier;
          v34 = 2114;
          v35 = name;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped deviceUID <%{public}@> to rapportUID <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      effectiveIdentifier2 = [v10 effectiveIdentifier];
      v14 = objc_msgSend_isEqualToString_(effectiveIdentifier2);

      if (v14)
      {
        effectiveIdentifier = [v10 effectiveIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name2 = [v10 name];
          *buf = 138543874;
          v31 = dCopy;
          v32 = 2114;
          v33 = effectiveIdentifier;
          v34 = 2114;
          v35 = name2;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped effectiveIdentifier <%{public}@> to rapportUID <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      identifier = [v10 identifier];
      v16 = objc_msgSend_isEqualToString_(identifier);

      if (v16)
      {
        effectiveIdentifier = [v10 effectiveIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name3 = [v10 name];
          *buf = 138543874;
          v31 = dCopy;
          v32 = 2114;
          v33 = effectiveIdentifier;
          v34 = 2114;
          v35 = name3;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped identifier <%{public}@> to rapportUID <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

        goto LABEL_22;
      }

      mediaRemoteIdentifier = [v10 mediaRemoteIdentifier];
      v18 = objc_msgSend_isEqualToString_(mediaRemoteIdentifier);

      if (v18)
      {
        effectiveIdentifier = [v10 effectiveIdentifier];
        v20 = _MRLogForCategory(7uLL);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          name4 = [v10 name];
          *buf = 138543874;
          v31 = dCopy;
          v32 = 2114;
          v33 = effectiveIdentifier;
          v34 = 2114;
          v35 = name4;
          _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[CompanionLinkClient] Mapped mediaRemoteIdentifier <%{public}@> to rapportUID <%{public}@> <(%{public}@)>", buf, 0x20u);
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    v7 = [activeDevices countByEnumeratingWithState:&v26 objects:v36 count:16];
    effectiveIdentifier = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_23:

  objc_sync_exit(selfCopy);

  return effectiveIdentifier;
}

- (id)nameForUID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  activeDevices = [(RPCompanionLinkClient *)selfCopy->_connection activeDevices];
  v7 = [activeDevices countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(activeDevices);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        mediaRouteIdentifier = [v10 mediaRouteIdentifier];
        isEqualToString = objc_msgSend_isEqualToString_(mediaRouteIdentifier);

        if (!isEqualToString)
        {
          effectiveIdentifier = [v10 effectiveIdentifier];
          v14 = objc_msgSend_isEqualToString_(effectiveIdentifier);

          if ((v14 & 1) == 0)
          {
            identifier = [v10 identifier];
            v16 = objc_msgSend_isEqualToString_(identifier);

            if ((v16 & 1) == 0)
            {
              mediaRemoteIdentifier = [v10 mediaRemoteIdentifier];
              v18 = objc_msgSend_isEqualToString_(mediaRemoteIdentifier);

              if ((v18 & 1) == 0)
              {
                continue;
              }
            }
          }
        }

        name = [v10 name];
        goto LABEL_15;
      }

      v7 = [activeDevices countByEnumeratingWithState:&v21 objects:v25 count:16];
      name = 0;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    name = 0;
  }

LABEL_15:

  objc_sync_exit(selfCopy);

  return name;
}

- (id)registerEvent:(id)event callback:(id)callback
{
  eventCopy = event;
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_eventCallbacks objectForKey:eventCopy];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    eventCallbacks = selfCopy->_eventCallbacks;
    if (!eventCallbacks)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = selfCopy->_eventCallbacks;
      selfCopy->_eventCallbacks = v11;

      eventCallbacks = selfCopy->_eventCallbacks;
    }

    [(NSMutableDictionary *)eventCallbacks setObject:v9 forKey:eventCopy];
  }

  v13 = [callbackCopy copy];
  v14 = MEMORY[0x1A58E3570]();
  [v9 addObject:v14];

  if (selfCopy->_connection)
  {
    [(MRCompanionLinkClient *)selfCopy _registerEvent:eventCopy];
  }

  else
  {
    pendingRegisteredEvents = selfCopy->_pendingRegisteredEvents;
    if (!pendingRegisteredEvents)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v17 = selfCopy->_pendingRegisteredEvents;
      selfCopy->_pendingRegisteredEvents = v16;

      pendingRegisteredEvents = selfCopy->_pendingRegisteredEvents;
    }

    [(NSMutableSet *)pendingRegisteredEvents addObject:eventCopy];
  }

  v18 = MEMORY[0x1A58E3570](v13);

  objc_sync_exit(selfCopy);

  return v18;
}

- (id)registerRequest:(id)request callback:(id)callback
{
  requestCopy = request;
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = [(NSMutableDictionary *)selfCopy->_requestCallbacks objectForKey:requestCopy];
  if (v10)
  {
    if (!callbackCopy)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MRCompanionLinkClient.m" lineNumber:316 description:{@"Duplicate request handler for %@", requestCopy}];
  }

  else
  {
    if (!selfCopy->_requestCallbacks)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      requestCallbacks = selfCopy->_requestCallbacks;
      selfCopy->_requestCallbacks = v12;
    }

    v10 = [callbackCopy copy];
    v14 = selfCopy->_requestCallbacks;
    currentHandler = MEMORY[0x1A58E3570]();
    [(NSMutableDictionary *)v14 setObject:currentHandler forKey:requestCopy];
  }

LABEL_8:
  if (selfCopy->_connection)
  {
    [(MRCompanionLinkClient *)selfCopy _registerRequest:requestCopy];
  }

  else
  {
    pendingRegisteredRequests = selfCopy->_pendingRegisteredRequests;
    if (!pendingRegisteredRequests)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v17 = selfCopy->_pendingRegisteredRequests;
      selfCopy->_pendingRegisteredRequests = v16;

      pendingRegisteredRequests = selfCopy->_pendingRegisteredRequests;
    }

    [(NSMutableSet *)pendingRegisteredRequests addObject:requestCopy];
  }

  v18 = MEMORY[0x1A58E3570](v10);

  objc_sync_exit(selfCopy);

  return v18;
}

- (void)removeCallback:(id)callback
{
  v31 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_eventCallbacks allValues];
  v7 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = MEMORY[0x1A58E3570](callbackCopy);
        [v10 removeObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  requestCallbacks = selfCopy->_requestCallbacks;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __40__MRCompanionLinkClient_removeCallback___block_invoke;
  v17 = &unk_1E769B8E8;
  v13 = callbackCopy;
  v18 = v13;
  v19 = &v20;
  [(NSMutableDictionary *)requestCallbacks enumerateKeysAndObjectsUsingBlock:&v14];
  if (v21[5])
  {
    [(NSMutableDictionary *)selfCopy->_requestCallbacks removeObjectForKey:v14, v15, v16, v17];
  }

  _Block_object_dispose(&v20, 8);
  objc_sync_exit(selfCopy);
}

void __40__MRCompanionLinkClient_removeCallback___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (void)_registerEvent:(id)event
{
  eventCopy = event;
  registeredEvents = self->_registeredEvents;
  if (!registeredEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_registeredEvents;
    self->_registeredEvents = v6;

    registeredEvents = self->_registeredEvents;
  }

  if (([(NSMutableSet *)registeredEvents containsObject:eventCopy]& 1) == 0)
  {
    objc_initWeak(&location, self);
    connection = self->_connection;
    v9 = [(MRCompanionLinkClient *)self _resolveEventID:eventCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__MRCompanionLinkClient__registerEvent___block_invoke;
    v11[3] = &unk_1E769B910;
    objc_copyWeak(&v13, &location);
    v10 = eventCopy;
    v12 = v10;
    [(RPCompanionLinkClient *)connection registerEventID:v9 options:0 handler:v11];

    [(NSMutableSet *)self->_registeredEvents addObject:v10];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __40__MRCompanionLinkClient__registerEvent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleEventID:*(a1 + 32) event:v8 options:v5];
  }
}

- (void)_registerRequest:(id)request
{
  requestCopy = request;
  registeredRequests = self->_registeredRequests;
  if (!registeredRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_registeredRequests;
    self->_registeredRequests = v6;

    registeredRequests = self->_registeredRequests;
  }

  if (([(NSMutableSet *)registeredRequests containsObject:requestCopy]& 1) == 0)
  {
    objc_initWeak(&location, self);
    connection = self->_connection;
    v9 = [(MRCompanionLinkClient *)self _resolveEventID:requestCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__MRCompanionLinkClient__registerRequest___block_invoke;
    v11[3] = &unk_1E769B960;
    objc_copyWeak(&v13, &location);
    v10 = requestCopy;
    v12 = v10;
    [(RPCompanionLinkClient *)connection registerRequestID:v9 options:0 handler:v11];

    [(NSMutableSet *)self->_registeredRequests addObject:v10];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __42__MRCompanionLinkClient__registerRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__MRCompanionLinkClient__registerRequest___block_invoke_2;
    v13[3] = &unk_1E769B938;
    v14 = v9;
    [WeakRetained _handleRequestID:v11 request:v7 options:v8 response:v13];
  }

  else
  {
    Error = MRMediaRemoteCreateError(4);
    (*(v9 + 2))(v9, 0, 0, Error);
  }
}

- (void)sendEvent:(id)event toDevicesOfHomeUser:(id)user userInfo:(id)info
{
  v36 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  userCopy = user;
  selfCopy = self;
  infoCopy = info;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(RPCompanionLinkClient *)self->_connection activeDevices];
  v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v25 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        homeKitUserIdentifiers = [v12 homeKitUserIdentifiers];
        v14 = [homeKitUserIdentifiers countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v27;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v27 != v16)
              {
                objc_enumerationMutation(homeKitUserIdentifiers);
              }

              uUIDString = [*(*(&v26 + 1) + 8 * j) UUIDString];
              isEqualToString = objc_msgSend_isEqualToString_(uUIDString);

              if (isEqualToString)
              {
                effectiveIdentifier = [v12 effectiveIdentifier];
                [(MRCompanionLinkClient *)selfCopy sendEvent:eventCopy destination:effectiveIdentifier userInfo:infoCopy];

                goto LABEL_16;
              }
            }

            v15 = [homeKitUserIdentifiers countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }
}

- (void)sendEvent:(id)event destination:(id)destination userInfo:(id)info
{
  eventCopy = event;
  destinationCopy = destination;
  infoCopy = info;
  v10 = [infoCopy copy];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_connection)
  {
    [(MRCompanionLinkClient *)selfCopy _sendEvent:eventCopy userInfo:v10 destination:destinationCopy uid:uUIDString];
  }

  else
  {
    [(MRCompanionLinkClient *)selfCopy _enqueueEvent:eventCopy userInfo:v10 destination:destinationCopy uid:uUIDString];
  }

  objc_sync_exit(selfCopy);
}

- (void)sendRequest:(id)request destination:(id)destination userInfo:(id)info timeout:(double)timeout response:(id)response
{
  v48 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  destinationCopy = destination;
  infoCopy = info;
  responseCopy = response;
  v15 = [infoCopy copy];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  date = [MEMORY[0x1E695DF00] date];
  v19 = [MRBlockGuard alloc];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", requestCopy, uUIDString];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __75__MRCompanionLinkClient_sendRequest_destination_userInfo_timeout_response___block_invoke;
  v38[3] = &unk_1E769AD80;
  v21 = responseCopy;
  v39 = v21;
  v22 = [(MRBlockGuard *)v19 initWithTimeout:v20 reason:v38 handler:timeout];

  v23 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v41 = requestCopy;
    v42 = 2114;
    v43 = uUIDString;
    v44 = 2112;
    v45 = destinationCopy;
    v46 = 2112;
    v47 = infoCopy;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Request: %{public}@<%{public}@> to destination <%@> with userInfo %@", buf, 0x2Au);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __75__MRCompanionLinkClient_sendRequest_destination_userInfo_timeout_response___block_invoke_125;
  v32[3] = &unk_1E769B988;
  v24 = v22;
  v33 = v24;
  v25 = date;
  v34 = v25;
  v26 = requestCopy;
  v35 = v26;
  v27 = uUIDString;
  v36 = v27;
  v28 = v21;
  v37 = v28;
  v29 = MEMORY[0x1A58E3570](v32);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_connection)
  {
    [(MRCompanionLinkClient *)selfCopy _sendRequest:v26 userInfo:v15 destination:destinationCopy uid:v27 date:v25 response:v29];
  }

  else
  {
    [(MRCompanionLinkClient *)selfCopy _enqueueRequest:v26 userInfo:v15 destination:destinationCopy uid:v27 date:v25 response:v29];
  }

  objc_sync_exit(selfCopy);
}

uint64_t __75__MRCompanionLinkClient_sendRequest_destination_userInfo_timeout_response___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __75__MRCompanionLinkClient_sendRequest_destination_userInfo_timeout_response___block_invoke_125(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) disarm])
  {
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceDate:*(a1 + 40)];
    v9 = v8;

    v10 = _MRLogForCategory(7uLL);
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        v17 = 138544130;
        v18 = v12;
        v19 = 2114;
        v20 = v13;
        v21 = 2114;
        v22 = v6;
        v23 = 2048;
        v24 = v9;
        _os_log_error_impl(&dword_1A2860000, v11, OS_LOG_TYPE_ERROR, "[CompanionLinkClient] Response: %{public}@<%{public}@> returned error <%{public}@> in <%lf> seconds", &v17, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v17 = 138544130;
      v18 = v14;
      v19 = 2114;
      v20 = v15;
      v21 = 2048;
      v22 = v9;
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Response: %{public}@<%{public}@> returned in <%lf> seconds with %{public}@@", &v17, 0x2Au);
    }

    v16 = *(a1 + 64);
    if (v16)
    {
      (*(v16 + 16))(v16, v5, v6);
    }
  }
}

- (void)_sendEvent:(id)event userInfo:(id)info destination:(id)destination uid:(id)uid
{
  v37 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  infoCopy = info;
  destinationCopy = destination;
  uidCopy = uid;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = +[MROrigin localOrigin];
  v16 = [MRDeviceInfoRequest deviceInfoForOrigin:v15];

  data = [v16 data];
  [v14 setObject:data forKeyedSubscript:@"deviceInfoData"];

  [v14 setObject:uidCopy forKeyedSubscript:@"uid"];
  if (infoCopy)
  {
    v18 = MRCreateEncodedUserInfo(infoCopy);
    [v14 setObject:v18 forKeyedSubscript:@"userInfoData"];
  }

  v19 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v30 = eventCopy;
    v31 = 2114;
    v32 = uidCopy;
    v33 = 2112;
    v34 = destinationCopy;
    v35 = 2112;
    v36 = infoCopy;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Sending event %{public}@<%{public}@> to destination <%@> with userInfo %@", buf, 0x2Au);
  }

  connection = self->_connection;
  v21 = [(MRCompanionLinkClient *)self _resolveEventID:eventCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __61__MRCompanionLinkClient__sendEvent_userInfo_destination_uid___block_invoke;
  v25[3] = &unk_1E769B9B0;
  v26 = eventCopy;
  v27 = uidCopy;
  v28 = destinationCopy;
  v22 = destinationCopy;
  v23 = uidCopy;
  v24 = eventCopy;
  [(RPCompanionLinkClient *)connection sendEventID:v21 event:v14 destinationID:v22 options:0 completion:v25];
}

void __61__MRCompanionLinkClient__sendEvent_userInfo_destination_uid___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __61__MRCompanionLinkClient__sendEvent_userInfo_destination_uid___block_invoke_cold_1();
    }
  }
}

- (void)_enqueueEvent:(id)event userInfo:(id)info destination:(id)destination uid:(id)uid
{
  v26 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  infoCopy = info;
  destinationCopy = destination;
  uidCopy = uid;
  v14 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544130;
    v19 = eventCopy;
    v20 = 2114;
    v21 = uidCopy;
    v22 = 2112;
    v23 = destinationCopy;
    v24 = 2112;
    v25 = infoCopy;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Enqueing event %{public}@<%{public}@> to destination <%@> with userInfo %@", &v18, 0x2Au);
  }

  if (!self->_pendingEvents)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingEvents = self->_pendingEvents;
    self->_pendingEvents = v15;
  }

  v17 = objc_alloc_init(MRCompanionLinkClientEvent);
  [(MRCompanionLinkClientEvent *)v17 setEventID:eventCopy];
  [(MRCompanionLinkClientEvent *)v17 setUserInfo:infoCopy];
  [(MRCompanionLinkClientEvent *)v17 setDestination:destinationCopy];
  [(MRCompanionLinkClientEvent *)v17 setUid:uidCopy];
  [(NSMutableArray *)self->_pendingEvents addObject:v17];
}

- (void)_sendRequest:(id)request userInfo:(id)info destination:(id)destination uid:(id)uid date:(id)date response:(id)response
{
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  infoCopy = info;
  destinationCopy = destination;
  uidCopy = uid;
  responseCopy = response;
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = +[MROrigin localOrigin];
  v20 = [MRDeviceInfoRequest deviceInfoForOrigin:v19];

  data = [v20 data];
  [v18 setObject:data forKeyedSubscript:@"deviceInfoData"];

  [v18 setObject:uidCopy forKeyedSubscript:@"uid"];
  if (infoCopy)
  {
    v22 = MRCreateEncodedUserInfo(infoCopy);
    [v18 setObject:v22 forKeyedSubscript:@"userInfoData"];
  }

  v23 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v30 = requestCopy;
    v31 = 2114;
    v32 = uidCopy;
    v33 = 2112;
    v34 = destinationCopy;
    v35 = 2112;
    v36 = infoCopy;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Sending request %{public}@<%{public}@> to destination <%@> with userInfo %@", buf, 0x2Au);
  }

  connection = self->_connection;
  v25 = [(MRCompanionLinkClient *)self _resolveEventID:requestCopy];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __77__MRCompanionLinkClient__sendRequest_userInfo_destination_uid_date_response___block_invoke;
  v27[3] = &unk_1E769B9D8;
  v28 = responseCopy;
  v26 = responseCopy;
  [(RPCompanionLinkClient *)connection sendRequestID:v25 request:v18 destinationID:destinationCopy options:0 responseHandler:v27];
}

void __77__MRCompanionLinkClient__sendRequest_userInfo_destination_uid_date_response___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  v7 = MRCreateDecodedUserInfo(a2);
  (*(v5 + 16))(v5, v7, v6);
}

- (void)_enqueueRequest:(id)request userInfo:(id)info destination:(id)destination uid:(id)uid date:(id)date response:(id)response
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  infoCopy = info;
  destinationCopy = destination;
  uidCopy = uid;
  responseCopy = response;
  dateCopy = date;
  v20 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138544130;
    v25 = requestCopy;
    v26 = 2114;
    v27 = uidCopy;
    v28 = 2112;
    v29 = destinationCopy;
    v30 = 2112;
    v31 = infoCopy;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Enqueing request %{public}@<%{public}@> to destination <%@> with userInfo %@", &v24, 0x2Au);
  }

  if (!self->_pendingRequests)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingRequests = self->_pendingRequests;
    self->_pendingRequests = v21;
  }

  v23 = objc_alloc_init(MRCompanionLinkClientRequest);
  [(MRCompanionLinkClientEvent *)v23 setEventID:requestCopy];
  [(MRCompanionLinkClientEvent *)v23 setUserInfo:infoCopy];
  [(MRCompanionLinkClientEvent *)v23 setDestination:destinationCopy];
  [(MRCompanionLinkClientEvent *)v23 setUid:uidCopy];
  [(MRCompanionLinkClientRequest *)v23 setDate:dateCopy];

  [(MRCompanionLinkClientRequest *)v23 setCallback:responseCopy];
  [(NSMutableArray *)self->_pendingRequests addObject:v23];
}

- (void)_handleEventID:(id)d event:(id)event options:(id)options
{
  v61 = *MEMORY[0x1E69E9840];
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  v30 = *MEMORY[0x1E69C6BE8];
  v31 = optionsCopy;
  v9 = [optionsCopy objectForKeyedSubscript:?];
  v10 = [MRDeviceInfo alloc];
  v11 = [eventCopy objectForKeyedSubscript:@"deviceInfoData"];
  v12 = [(MRDeviceInfo *)v10 initWithData:v11];

  v13 = [eventCopy objectForKeyedSubscript:@"userInfoData"];
  v36 = MRCreateDecodedUserInfo(v13);

  v33 = [eventCopy objectForKeyedSubscript:@"uid"];
  deviceUID = [(MRDeviceInfo *)v12 deviceUID];
  name = [(MRDeviceInfo *)v12 name];
  v14 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544898;
    v48 = dCopy;
    v49 = 2114;
    v50 = v33;
    v51 = 2114;
    v52 = deviceUID;
    v53 = 2114;
    v54 = name;
    v55 = 2112;
    v56 = v30;
    v57 = 2114;
    v58 = v9;
    v59 = 2112;
    v60 = v36;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Received event %{public}@<%{public}@> from <%{public}@> (%{public}@) with %@ <%{public}@> userInfo %@", buf, 0x48u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_connection activeDevices];
  v16 = [activeDevices countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v16)
  {
    v17 = *v43;
LABEL_5:
    v18 = 0;
    while (1)
    {
      if (*v43 != v17)
      {
        objc_enumerationMutation(activeDevices);
      }

      v19 = *(*(&v42 + 1) + 8 * v18);
      effectiveIdentifier = [v19 effectiveIdentifier];
      isEqualToString = objc_msgSend_isEqualToString_(effectiveIdentifier);

      if (isEqualToString)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [activeDevices countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v16)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v22 = v19;

    if (!v22)
    {
      goto LABEL_15;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v24 = [(NSMutableDictionary *)selfCopy->_eventCallbacks objectForKey:dCopy];
    v25 = [v24 copy];

    objc_sync_exit(selfCopy);
    if (v36)
    {
      v26 = [v36 mutableCopy];
    }

    else
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v27 = v26;
    [v26 setObject:v9 forKeyedSubscript:v30];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MRCompanionLinkClient__handleEventID_event_options___block_invoke;
    block[3] = &unk_1E769BA00;
    v39 = v25;
    v40 = v12;
    v41 = v27;
    v28 = v27;
    v29 = v25;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
LABEL_11:

LABEL_15:
    v22 = _MRLogForCategory(7uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544386;
      v48 = dCopy;
      v49 = 2114;
      v50 = deviceUID;
      v51 = 2114;
      v52 = name;
      v53 = 2112;
      v54 = v30;
      v55 = 2112;
      v56 = v9;
      _os_log_error_impl(&dword_1A2860000, v22, OS_LOG_TYPE_ERROR, "[CompanionLinkClient] Received event <%{public}@> from <%{public}@> (%{public}@) with <%@> <%@> but could not find device", buf, 0x34u);
    }
  }
}

void __54__MRCompanionLinkClient__handleEventID_event_options___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_handleRequestID:(id)d request:(id)request options:(id)options response:(id)response
{
  v71 = *MEMORY[0x1E69E9840];
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  responseCopy = response;
  v34 = *MEMORY[0x1E69C6BE8];
  v35 = optionsCopy;
  v11 = [optionsCopy objectForKeyedSubscript:?];
  v12 = [MRDeviceInfo alloc];
  v13 = [requestCopy objectForKeyedSubscript:@"deviceInfoData"];
  v41 = [(MRDeviceInfo *)v12 initWithData:v13];

  v14 = [requestCopy objectForKeyedSubscript:@"userInfoData"];
  v40 = MRCreateDecodedUserInfo(v14);

  v15 = [requestCopy objectForKeyedSubscript:@"uid"];
  deviceUID = [(MRDeviceInfo *)v41 deviceUID];
  name = [(MRDeviceInfo *)v41 name];
  v16 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544898;
    v58 = dCopy;
    v59 = 2114;
    v60 = v15;
    v61 = 2114;
    v62 = deviceUID;
    v63 = 2114;
    v64 = name;
    v65 = 2112;
    v66 = v34;
    v67 = 2114;
    v68 = v11;
    v69 = 2112;
    v70 = v40;
    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Received request %{public}@<%{public}@> from <%{public}@> (%{public}@) with %@ <%{public}@> userInfo %@", buf, 0x48u);
  }

  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v52 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_connection activeDevices];
  v18 = [activeDevices countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v18)
  {
    v19 = *v53;
    while (2)
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(activeDevices);
        }

        v21 = *(*(&v52 + 1) + 8 * i);
        effectiveIdentifier = [v21 effectiveIdentifier];
        isEqualToString = objc_msgSend_isEqualToString_(effectiveIdentifier);

        if (isEqualToString)
        {
          v18 = v21;
          goto LABEL_13;
        }
      }

      v18 = [activeDevices countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __67__MRCompanionLinkClient__handleRequestID_request_options_response___block_invoke;
  v48[3] = &unk_1E769BA28;
  v24 = dCopy;
  v49 = v24;
  v25 = v15;
  v50 = v25;
  v26 = responseCopy;
  v51 = v26;
  v27 = MEMORY[0x1A58E3570](v48);
  if (v18)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v29 = [(NSMutableDictionary *)selfCopy->_requestCallbacks objectForKey:v24];
    v30 = [v29 copy];

    objc_sync_exit(selfCopy);
    if (v30)
    {
      if (v40)
      {
        v31 = [v40 mutableCopy];
      }

      else
      {
        v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v33 = v31;
      [v31 setObject:v11 forKeyedSubscript:v34];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__MRCompanionLinkClient__handleRequestID_request_options_response___block_invoke_132;
      block[3] = &unk_1E769BA50;
      v46 = v30;
      v44 = v41;
      v45 = v33;
      v47 = v27;
      Error = v33;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      Error = MRMediaRemoteCreateError(14);
      (v27)[2](v27, 0, Error);
    }
  }

  else
  {
    v30 = MRMediaRemoteCreateError(4);
    (v27)[2](v27, 0, v30);
  }
}

void __67__MRCompanionLinkClient__handleRequestID_request_options_response___block_invoke(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory(7uLL);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__MRCompanionLinkClient__handleRequestID_request_options_response___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[5];
    v13 = 138543874;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[CompanionLinkClient] Responding to request %{public}@<%{public}@> with <%{public}@>", &v13, 0x20u);
  }

  v11 = a1[6];
  v12 = MRCreateEncodedUserInfo(v5);
  (*(v11 + 16))(v11, v12, v6);
}

- (id)_resolveEventID:(id)d
{
  v3 = MEMORY[0x1E696AEC0];
  dCopy = d;
  dCopy = [[v3 alloc] initWithFormat:@"com.apple.mediaremote.%@", dCopy];

  return dCopy;
}

- (NSArray)companionLinkDevices
{
  connection = [(MRCompanionLinkClient *)self connection];
  activeDevices = [connection activeDevices];

  return activeDevices;
}

void __61__MRCompanionLinkClient__sendEvent_userInfo_destination_uid___block_invoke_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  v5 = 2112;
  v6 = v0;
  v7 = v1;
  v8 = v2;
  _os_log_error_impl(&dword_1A2860000, v3, OS_LOG_TYPE_ERROR, "[CompanionLinkClient] Error sending <%{public}@> <%{public}@> event to <%@> <%{public}@>", v4, 0x2Au);
}

void __67__MRCompanionLinkClient__handleRequestID_request_options_response___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_1A2860000, v2, OS_LOG_TYPE_ERROR, "[CompanionLinkClient] Responding to request %{public}@<%{public}@> with error <%{public}@>", v3, 0x20u);
}

@end