@interface IDSCrossDeviceTransport
+ (BOOL)isIDSEndpointEnabled;
- (IDSCrossDeviceTransport)initWithServiceName:(id)name;
- (unint64_t)deliverMessage:(id)message toEndpoint:(id)endpoint;
- (void)addDelegate:(id)delegate endpoint:(id)endpoint;
- (void)dealloc;
- (void)registerIDSService;
- (void)removeDelegate:(id)delegate endpoint:(id)endpoint;
- (void)sendMessage:(id)message toIDSDevices:(id)devices toEndpoint:(id)endpoint validFor:(double)for reply:(id)reply;
- (void)sendMessage:(id)message toIDSDevicesMatching:(id)matching toEndpoint:(id)endpoint reply:(id)reply;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)unregisterIDSService;
@end

@implementation IDSCrossDeviceTransport

+ (BOOL)isIDSEndpointEnabled
{
  v2 = +[SystemProperties sharedInstance];
  if ([v2 internalBuild])
  {
    v3 = [v2 factoryBuild] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  v3.receiver = self;
  v3.super_class = IDSCrossDeviceTransport;
  [(IDSCrossDeviceTransport *)&v3 dealloc];
}

- (IDSCrossDeviceTransport)initWithServiceName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = IDSCrossDeviceTransport;
  v6 = [(IDSCrossDeviceTransport *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_create("com.apple.symptoms.idsservice.queue", v7);
    idsServiceQueue = v6->_idsServiceQueue;
    v6->_idsServiceQueue = v8;

    objc_storeStrong(&v6->_serviceName, name);
  }

  return v6;
}

- (void)registerIDSService
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[IDSCrossDeviceTransport isIDSEndpointEnabled];
  if (v3 && !self->_idsService)
  {
    v5 = [objc_alloc(MEMORY[0x277D18778]) initWithService:self->_serviceName];
    idsService = self->_idsService;
    self->_idsService = v5;

    v7 = self->_idsService;
    v9 = crossdeviceLogHandle(v8);
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        serviceName = self->_serviceName;
        v16 = 138412290;
        v17 = serviceName;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "Registering for IDSService %@", &v16, 0xCu);
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      endpointsRegistry = self->_endpointsRegistry;
      self->_endpointsRegistry = dictionary;

      v14 = [MEMORY[0x277CBEB58] set];
      delegateRegistry = self->_delegateRegistry;
      self->_delegateRegistry = v14;

      [(IDSService *)self->_idsService addDelegate:self queue:self->_idsServiceQueue];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Failed to allocate IDSService object", &v16, 2u);
      }
    }
  }

  else
  {
    v4 = crossdeviceLogHandle(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "IDSService is already registered.", &v16, 2u);
    }
  }
}

- (void)unregisterIDSService
{
  v9 = *MEMORY[0x277D85DE8];
  idsService = self->_idsService;
  v4 = crossdeviceLogHandle(self);
  v5 = v4;
  if (idsService)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      serviceName = self->_serviceName;
      v7 = 138412290;
      v8 = serviceName;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_INFO, "Unregistering from IDSService %@", &v7, 0xCu);
    }

    [(IDSService *)self->_idsService removeDelegate:self];
    v5 = self->_idsService;
    self->_idsService = 0;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "IDSService is not registered.", &v7, 2u);
  }
}

- (void)sendMessage:(id)message toIDSDevicesMatching:(id)matching toEndpoint:(id)endpoint reply:(id)reply
{
  v60 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  matchingCopy = matching;
  endpointCopy = endpoint;
  replyCopy = reply;
  v14 = [MEMORY[0x277CBEB58] set];
  devices = [(IDSService *)self->_idsService devices];
  v16 = devices;
  if (matchingCopy)
  {
    v17 = [devices filteredArrayUsingPredicate:matchingCopy];

    v19 = crossdeviceLogHandle(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v55 = [v17 count];
      v56 = 2112;
      v57 = matchingCopy;
      v58 = 2112;
      v59 = v17;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_INFO, "%ld IDSDevices matched with %@: %@", buf, 0x20u);
    }
  }

  else
  {
    v19 = crossdeviceLogHandle(devices);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = v16;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_INFO, "No predicate given, sending to all IDSDevices: %@", buf, 0xCu);
    }

    v17 = v16;
  }

  if ([v17 count])
  {
    selfCopy = self;
    v37 = v17;
    v38 = replyCopy;
    v39 = endpointCopy;
    v40 = matchingCopy;
    v41 = messageCopy;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v46;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v45 + 1) + 8 * i);
          v26 = IDSCopyIDForDevice();
          if ([v26 length])
          {
            [v14 addObject:v26];
          }

          else
          {
            v27 = crossdeviceLogHandle(0);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v55 = v25;
              _os_log_impl(&dword_241804000, v27, OS_LOG_TYPE_ERROR, "Failed to copy ID for IDS device %@", buf, 0xCu);
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v22);
    }

    if ([v14 count])
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __77__IDSCrossDeviceTransport_sendMessage_toIDSDevicesMatching_toEndpoint_reply___block_invoke;
      v42[3] = &unk_278CF1F58;
      v43 = v14;
      replyCopy = v38;
      v44 = v38;
      messageCopy = v41;
      endpointCopy = v39;
      [(IDSCrossDeviceTransport *)selfCopy sendMessage:v41 toIDSDevices:v43 toEndpoint:v39 reply:v42];

      v28 = v43;
      matchingCopy = v40;
      v17 = v37;
LABEL_31:

      goto LABEL_32;
    }

    v34 = crossdeviceLogHandle(0);
    matchingCopy = v40;
    messageCopy = v41;
    endpointCopy = v39;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v20 count];
      *buf = 134217984;
      v55 = v35;
      _os_log_impl(&dword_241804000, v34, OS_LOG_TYPE_DEFAULT, "No IDS destinations identifiers copied from %lu devices", buf, 0xCu);
    }

    v17 = v37;
    replyCopy = v38;
    if (v38)
    {
      v49 = @"count";
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
      v50 = v30;
      v31 = MEMORY[0x277CBEAC0];
      v32 = &v50;
      v33 = &v49;
      goto LABEL_30;
    }
  }

  else
  {
    v29 = crossdeviceLogHandle(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = matchingCopy;
      _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_DEFAULT, "Did not find IDS devices that match %@", buf, 0xCu);
    }

    if (replyCopy)
    {
      v52 = @"count";
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
      v53 = v30;
      v31 = MEMORY[0x277CBEAC0];
      v32 = &v53;
      v33 = &v52;
LABEL_30:
      v28 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:{1, selfCopy}];

      (*(replyCopy + 2))(replyCopy, 0, v28, 0);
      goto LABEL_31;
    }
  }

LABEL_32:
}

void __77__IDSCrossDeviceTransport_sendMessage_toIDSDevicesMatching_toEndpoint_reply___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = crossdeviceLogHandle(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"failed";
    v11 = *(a1 + 32);
    if (a2)
    {
      v10 = @"successful";
    }

    v16 = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "IDS message sending %@, destinations: %@", &v16, 0x16u);
  }

  if (v8)
  {
    v13 = crossdeviceLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "   Error: %@", &v16, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v14 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v7];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    [v14 setObject:v15 forKeyedSubscript:@"count"];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)sendMessage:(id)message toIDSDevices:(id)devices toEndpoint:(id)endpoint validFor:(double)for reply:(id)reply
{
  v46[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v13 = COERCE_DOUBLE(devices);
  endpointCopy = endpoint;
  replyCopy = reply;
  if ([*&v13 count])
  {
    v16 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{endpointCopy, @"endpoint", messageCopy, @"message", 0}];
    v17 = v16;
    dictionary = 0;
    if (for > 0.0)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v21 = v20 + for;

      v22 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
      [v17 setObject:v22 forKey:@"ttl"];

      v24 = crossdeviceLogHandle(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        forCopy = for;
        v41 = 2048;
        v42 = v21;
        _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEBUG, "IDS message will expire in %.0lf seconds at %{time_t}ld", buf, 0x16u);
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v25 = [MEMORY[0x277CCABB0] numberWithDouble:for + 30.0];
      [dictionary setObject:v25 forKeyedSubscript:*MEMORY[0x277D18650]];

      v16 = [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18678]];
    }

    v26 = crossdeviceLogHandle(v16);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      forCopy = v13;
      _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_DEBUG, "Ready to send to IDS destinations with identifiers: %@", buf, 0xCu);
    }

    v37 = 0.0;
    v38 = 0;
    v27 = [(IDSService *)self->_idsService sendMessage:v17 toDestinations:*&v13 priority:300 options:dictionary identifier:&v37 error:&v38];
    v28 = v27;
    v29 = crossdeviceLogHandle(v27);
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      if (v30)
      {
        v31 = v37;
        v32 = [*&v13 count];
        *buf = 138412546;
        forCopy = v31;
        v41 = 2048;
        v42 = v32;
        _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_DEFAULT, "Request to send IDS message %@ to %ld destinations was successful.", buf, 0x16u);
      }

      if (replyCopy)
      {
        v45 = @"IDSMessageIdentifier";
        *v46 = v37;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
        replyCopy[2](replyCopy, 1, v33, 0);
      }
    }

    else
    {
      if (v30)
      {
        v35 = v37;
        v36 = [*&v13 count];
        *buf = 138412802;
        forCopy = v35;
        v41 = 2048;
        v42 = v36;
        v43 = 2112;
        v44 = v38;
        _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_DEFAULT, "Request to send IDS message %@ to %ld destinations failed. %@", buf, 0x20u);
      }

      if (replyCopy)
      {
        replyCopy[2](replyCopy, 0, 0, v38);
      }
    }
  }

  else
  {
    v34 = crossdeviceLogHandle(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      forCopy = v13;
      _os_log_impl(&dword_241804000, v34, OS_LOG_TYPE_DEFAULT, "Invalid IDS destinations: %@", buf, 0xCu);
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0, 0, 0);
    }
  }
}

- (void)addDelegate:(id)delegate endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  endpointsRegistry = self->_endpointsRegistry;
  delegateCopy = delegate;
  v8 = [(NSMutableDictionary *)endpointsRegistry objectForKeyedSubscript:endpointCopy];
  if (v8)
  {
    v9 = v8;
    [v8 addObject:delegateCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithObject:delegateCopy];
    [(NSMutableDictionary *)self->_endpointsRegistry setObject:v9 forKeyedSubscript:endpointCopy];
  }

  [(NSMutableSet *)self->_delegateRegistry addObject:delegateCopy];
}

- (void)removeDelegate:(id)delegate endpoint:(id)endpoint
{
  delegateCopy = delegate;
  v6 = [(NSMutableDictionary *)self->_endpointsRegistry objectForKeyedSubscript:endpoint];
  v7 = v6;
  if (v6)
  {
    [v6 removeObject:delegateCopy];
  }

  [(NSMutableSet *)self->_delegateRegistry removeObject:delegateCopy];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  v12 = crossdeviceLogHandle(errorCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"failed";
    if (successCopy)
    {
      v13 = @"succeeded";
    }

    *buf = 138412802;
    v27 = v13;
    v28 = 2112;
    v29 = identifierCopy;
    if (errorCopy)
    {
      v14 = errorCopy;
    }

    else
    {
      v14 = &stru_285368168;
    }

    v30 = 2112;
    v31 = v14;
    _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "Send message via IDS %@. (%@) %@", buf, 0x20u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allObjects = [(NSMutableSet *)self->_delegateRegistry allObjects];
  v16 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(allObjects);
        }

        v20 = *(*(&v21 + 1) + 8 * v19);
        if (objc_opt_respondsToSelector())
        {
          [v20 messageWithIdentifier:identifierCopy didSendWithSuccess:successCopy error:errorCopy];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  contextCopy = context;
  v12 = contextCopy;
  if (contextCopy)
  {
    contextCopy = [MEMORY[0x277CCACA8] stringWithFormat:@" (context: %@)", contextCopy];
    v13 = contextCopy;
  }

  else
  {
    v13 = &stru_285368168;
  }

  v14 = crossdeviceLogHandle(contextCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = identifierCopy;
    v30 = 2112;
    v31 = v13;
    _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_INFO, "Delivered message via IDS with identifier: %@%@", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allObjects = [(NSMutableSet *)self->_delegateRegistry allObjects];
  v16 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(allObjects);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v20 messageWithIdentifierHasBeenDelivered:identifierCopy];
        }
      }

      v17 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v45 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v17 = contextCopy;
  if (contextCopy)
  {
    contextCopy = [MEMORY[0x277CCACA8] stringWithFormat:@" (context: %@)", contextCopy];
    v18 = contextCopy;
  }

  else
  {
    v18 = &stru_285368168;
  }

  v19 = crossdeviceLogHandle(contextCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v40 = dCopy;
    v41 = 2112;
    v42 = messageCopy;
    v43 = 2112;
    v44 = v18;
    _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEFAULT, "Received incoming message via IDS from %@, message %@%@", buf, 0x20u);
  }

  v20 = [serviceCopy deviceForFromID:dCopy];

  if (v20)
  {
    selfCopy = self;
    v22 = [messageCopy objectForKeyedSubscript:@"endpoint"];
    v23 = [messageCopy objectForKeyedSubscript:@"ttl"];
    isKindOfClass = [messageCopy objectForKeyedSubscript:@"message"];
    v25 = isKindOfClass;
    if (v23)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v36 = accountCopy;
        longValue = [v23 longValue];
        v27 = crossdeviceLogHandle(longValue);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v40 = longValue;
          _os_log_impl(&dword_241804000, v27, OS_LOG_TYPE_INFO, "Message is valid until %{time_t}ld", buf, 0xCu);
        }

        v35 = longValue;
        v28 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:longValue];
        timeIntervalSinceNow = [v28 timeIntervalSinceNow];
        if (v30 < 0.0)
        {
          v31 = crossdeviceLogHandle(timeIntervalSinceNow);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v40 = v35;
            _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_DEFAULT, "Received message expired at %{time_t}ld. Will NOT deliver to endpoint.", buf, 0xCu);
          }

          accountCopy = v36;
LABEL_25:

          goto LABEL_26;
        }

        accountCopy = v36;
      }
    }

    if (v22 && v25)
    {
      v37 = serviceCopy;
      v32 = v18;
      v33 = accountCopy;
      v34 = [(IDSCrossDeviceTransport *)selfCopy deliverMessage:v25 toEndpoint:v22];
      v28 = crossdeviceLogHandle(v34);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v40 = v34;
        _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_INFO, "Delivered message to %ld receivers", buf, 0xCu);
      }

      accountCopy = v33;
      v18 = v32;
      serviceCopy = v37;
    }

    else
    {
      v28 = crossdeviceLogHandle(isKindOfClass);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v40 = v22;
        v41 = 2112;
        v42 = messageCopy;
        _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_ERROR, "Invalid endpoint (%@) or failed to unwrap correctly. Dropping message %@", buf, 0x16u);
      }
    }

    goto LABEL_25;
  }

  v22 = crossdeviceLogHandle(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_ERROR, "Incoming message is not from a local account - dropping", buf, 2u);
  }

LABEL_26:
}

- (unint64_t)deliverMessage:(id)message toEndpoint:(id)endpoint
{
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  endpointCopy = endpoint;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = [(NSMutableDictionary *)self->_endpointsRegistry objectForKeyedSubscript:endpointCopy];
  if (v8)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__IDSCrossDeviceTransport_deliverMessage_toEndpoint___block_invoke;
    v12[3] = &unk_278CF1F80;
    v13 = messageCopy;
    v14 = &v15;
    [v8 enumerateObjectsUsingBlock:v12];
    v9 = v13;
  }

  else
  {
    v9 = crossdeviceLogHandle(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = endpointCopy;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Unknown endpoint received: %@", buf, 0xCu);
    }
  }

  v10 = v16[3];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __53__IDSCrossDeviceTransport_deliverMessage_toEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = crossdeviceLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "Delivery to %@ with message %@", &v8, 0x16u);
  }

  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    [v3 messageReceivedFromIDS:*(a1 + 32)];
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v7 = crossdeviceLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "Delegatee does not respond to messageReceived:, skipping.", &v8, 2u);
    }
  }
}

@end