@interface COIDSServiceDirector
- (COIDSServiceDirector)initWithIDSService:(id)service meshName:(id)name;
- (COIDSServiceDirectorOnDemandDiscoveryDelegate)discoveryDelegate;
- (NSString)description;
- (id)tokenFromURI:(id)i;
- (id)transportWithDiscoveryRecord:(id)record withExecutionContext:(id)context;
- (void)_withLock:(id)lock;
- (void)sendMessage:(id)message toDestination:(id)destination completionHandler:(id)handler;
- (void)sendResponse:(id)response responseIdentifier:(id)identifier toDestination:(id)destination;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)start;
@end

@implementation COIDSServiceDirector

- (COIDSServiceDirector)initWithIDSService:(id)service meshName:(id)name
{
  serviceCopy = service;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = COIDSServiceDirector;
  v9 = [(COIDSServiceDirector *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_service, service);
    objc_storeStrong(&v10->_meshName, name);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.coordination.idsdirector", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    activeTransports = v10->_activeTransports;
    v10->_activeTransports = strongToWeakObjectsMapTable;

    v16 = objc_alloc_init(COIDSMessageFactory);
    messageFactory = v10->_messageFactory;
    v10->_messageFactory = v16;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, mesh = %@>", v5, self, self->_meshName];

  return v6;
}

- (void)start
{
  service = [(COIDSServiceDirector *)self service];
  queue = [(COIDSServiceDirector *)self queue];
  [service addDelegate:self queue:queue];
}

- (id)transportWithDiscoveryRecord:(id)record withExecutionContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  contextCopy = context;
  v8 = [[COIDSTransport alloc] initWithDiscoveryRecord:recordCopy executionContext:contextCopy];

  v9 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    iDSIdentifier = [recordCopy IDSIdentifier];
    v18 = 138543874;
    selfCopy = self;
    v20 = 2048;
    v21 = v8;
    v22 = 2114;
    v23 = iDSIdentifier;
    _os_log_impl(&dword_244378000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ created new transport %p for remote IDS identifier %{public}@", &v18, 0x20u);
  }

  deviceTokenURI = [recordCopy deviceTokenURI];
  service = [(COIDSServiceDirector *)self service];
  v13 = [service conformsToProtocol:&unk_2857E6360];

  if (v13)
  {
    service2 = [(COIDSServiceDirector *)self service];
    v15 = [service2 tokenFromID:deviceTokenURI];
  }

  else
  {
    v15 = [(COIDSServiceDirector *)self tokenFromURI:deviceTokenURI];
  }

  activeTransports = [(COIDSServiceDirector *)self activeTransports];
  [activeTransports setObject:v8 forKey:v15];

  return v8;
}

- (void)sendMessage:(id)message toDestination:(id)destination completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = *MEMORY[0x277D185B0];
  v20[0] = &unk_2857C8898;
  v8 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  destinationCopy = destination;
  messageCopy = message;
  v12 = [v8 dictionaryWithObjects:v20 forKeys:&v19 count:1];
  service = [(COIDSServiceDirector *)self service];
  v14 = [MEMORY[0x277CBEB98] setWithObject:destinationCopy];

  v17 = 0;
  v18 = 0;
  [service sendMessage:messageCopy toDestinations:v14 priority:300 options:v12 identifier:&v18 error:&v17];

  v15 = v18;
  v16 = v17;

  handlerCopy[2](handlerCopy, v15, v16);
}

- (void)sendResponse:(id)response responseIdentifier:(id)identifier toDestination:(id)destination
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18 = *MEMORY[0x277D18610];
  v19[0] = identifier;
  v8 = MEMORY[0x277CBEAC0];
  destinationCopy = destination;
  identifierCopy = identifier;
  responseCopy = response;
  v12 = [v8 dictionaryWithObjects:v19 forKeys:&v18 count:1];
  service = [(COIDSServiceDirector *)self service];
  v14 = [MEMORY[0x277CBEB98] setWithObject:destinationCopy];

  v16 = 0;
  v17 = 0;
  [service sendMessage:responseCopy toDestinations:v14 priority:300 options:v12 identifier:&v17 error:&v16];

  v15 = v17;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  v12 = COCoreLogForCategory(17);
  v13 = v12;
  if (successCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      selfCopy2 = self;
      v16 = 2114;
      v17 = identifierCopy;
      _os_log_impl(&dword_244378000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Did send message %{public}@ successfully", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 138543874;
    selfCopy2 = self;
    v16 = 2114;
    v17 = identifierCopy;
    v18 = 2114;
    v19 = errorCopy;
    _os_log_error_impl(&dword_244378000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to send message %{public}@: %{public}@", &v14, 0x20u);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__COIDSServiceDirector_service_account_incomingMessage_fromID_context___block_invoke;
  v16[3] = &unk_278E15C88;
  v16[4] = self;
  v17 = dCopy;
  v18 = contextCopy;
  v19 = messageCopy;
  v13 = messageCopy;
  v14 = contextCopy;
  v15 = dCopy;
  [(COIDSServiceDirector *)self _withLock:v16];
}

void __71__COIDSServiceDirector_service_account_incomingMessage_fromID_context___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) service];
  v3 = [v2 conformsToProtocol:&unk_2857E6360];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 service];
    v6 = [v5 tokenFromID:*(a1 + 40)];
  }

  else
  {
    v6 = [v4 tokenFromURI:*(a1 + 40)];
  }

  v7 = [*(a1 + 32) activeTransports];
  v8 = [v7 objectForKey:v6];

  v9 = [*(a1 + 48) outgoingResponseIdentifier];
  v10 = [*(a1 + 48) incomingResponseIdentifier];
  v11 = [*(a1 + 32) messageFactory];
  v12 = *(a1 + 56);
  v34 = 0;
  v13 = [v11 decodeDictionary:v12 error:&v34];
  v14 = v34;

  if (v13)
  {
    if (v8)
    {
      [v8 handleMessage:v13 requestIdentifier:v9 responseIdentifier:v10 from:*(a1 + 40)];
      goto LABEL_27;
    }

    if ([v13 type])
    {
      v20 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        *buf = 138543874;
        v36 = v21;
        v37 = 2112;
        v38 = v9;
        v39 = 2112;
        v40 = v10;
        _os_log_error_impl(&dword_244378000, v20, OS_LOG_TYPE_ERROR, "%{public}@ dropping response '%@' for '%@' from unknown node", buf, 0x20u);
      }

LABEL_26:

      goto LABEL_27;
    }

    v22 = [*(a1 + 32) service];
    v23 = [v22 conformsToProtocol:&unk_2857E6360];

    if (v23)
    {
      v24 = [*(a1 + 32) service];
      v25 = [v24 localIDSIdentifierForDestination:*(a1 + 40)];
    }

    else
    {
      v26 = [v13 metadata];
      v24 = v26;
      if (!v26)
      {
        v20 = 0;
LABEL_18:

        v27 = [*(a1 + 32) discoveryDelegate];
        if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v28 = [[COOnDemandIDSNodeCreationRequest alloc] initWithMessage:v13 idsIdentifier:v20 uriToken:*(a1 + 40) requestIdentifier:v9 responseIdentifier:v10];
          log = COCoreLogForCategory(17);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 32);
            *buf = 138543618;
            v36 = v29;
            v37 = 2112;
            v38 = v9;
            _os_log_impl(&dword_244378000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ received message '%@' from unknown node. Attempting to create node on demand.", buf, 0x16u);
          }

          [v27 onDemandDiscoveryForRequest:v28];
        }

        else
        {
          v28 = COCoreLogForCategory(17);
          if (os_log_type_enabled(&v28->super.super, OS_LOG_TYPE_ERROR))
          {
            v32 = *(a1 + 32);
            *buf = 138543874;
            v36 = v32;
            v37 = 2112;
            v38 = v9;
            v39 = 2114;
            v40 = v20;
            _os_log_error_impl(&dword_244378000, &v28->super.super, OS_LOG_TYPE_ERROR, "%{public}@ dropping message '%@' from unknown node. IDS identifier = %{public}@", buf, 0x20u);
          }
        }

        goto LABEL_26;
      }

      v25 = [v26 objectForKey:0x2857B6848];
    }

    v20 = v25;
    goto LABEL_18;
  }

  v15 = COCoreLogForCategory(17);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v30 = [*(a1 + 32) description];
    v31 = *(a1 + 40);
    *buf = 138543874;
    v36 = v30;
    v37 = 2114;
    v38 = v31;
    v39 = 2114;
    v40 = v14;
    _os_log_error_impl(&dword_244378000, v15, OS_LOG_TYPE_ERROR, "%{public}@ received invalid message from %{public}@: %{public}@", buf, 0x20u);
  }

  v16 = [*(a1 + 32) messageFactory];
  v17 = [v16 encodeError:v14];

  v18 = *(a1 + 32);
  v19 = [v17 dictionaryRepresentation];
  [v18 sendResponse:v19 responseIdentifier:v9 toDestination:*(a1 + 40)];

LABEL_27:
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)tokenFromURI:(id)i
{
  v6 = 0;
  v3 = [i _stripPotentialTokenURIWithToken:&v6];
  v4 = v6;

  return v4;
}

- (COIDSServiceDirectorOnDemandDiscoveryDelegate)discoveryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_discoveryDelegate);

  return WeakRetained;
}

@end