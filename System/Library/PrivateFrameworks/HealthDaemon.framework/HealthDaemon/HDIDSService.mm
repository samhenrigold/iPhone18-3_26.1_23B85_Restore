@interface HDIDSService
- (BOOL)sendMessage:(id)message destination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error;
- (HDIDSService)initWithService:(id)service;
- (HDIDSService)initWithServiceName:(id)name;
- (HDIDSServiceDelegate)delegate;
- (id)devices;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation HDIDSService

- (HDIDSService)initWithServiceName:(id)name
{
  v4 = MEMORY[0x277D18778];
  nameCopy = name;
  v6 = [[v4 alloc] initWithService:nameCopy];

  v7 = [(HDIDSService *)self initWithService:v6];
  return v7;
}

- (HDIDSService)initWithService:(id)service
{
  v27 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  serviceIdentifier = [serviceCopy serviceIdentifier];
  objc_opt_self();
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"idsservice_%@", serviceIdentifier];

  v8 = HKCreateSerialDispatchQueue();

  v9 = serviceCopy;
  v10 = v8;
  if (self)
  {
    v22.receiver = self;
    v22.super_class = HDIDSService;
    v11 = [(HDIDSService *)&v22 init];
    self = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_service, service);
      [(IDSService *)self->_service addDelegate:self queue:v10];
      serviceIdentifier2 = [v9 serviceIdentifier];
      serviceIdentifier = self->_serviceIdentifier;
      self->_serviceIdentifier = serviceIdentifier2;

      if (![(NSString *)self->_serviceIdentifier containsString:@"com.apple.private.alloy."])
      {
        _HKInitializeLogging();
        v14 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v18 = v14;
          v19 = objc_opt_class();
          v20 = self->_serviceIdentifier;
          *buf = 138543618;
          v24 = v19;
          v25 = 2114;
          v26 = v20;
          v21 = v19;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@ WARNING: serviceName %{public}@ does not follow expected naming convention.", buf, 0x16u);
        }
      }

      v15 = [(NSString *)self->_serviceIdentifier stringByReplacingOccurrencesOfString:@"com.apple.private.alloy." withString:&stru_283BF39C8];
      shortServiceIdentifier = self->_shortServiceIdentifier;
      self->_shortServiceIdentifier = v15;

      objc_storeStrong(&self->_queue, v8);
    }
  }

  return self;
}

- (BOOL)sendMessage:(id)message destination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error
{
  errorCopy = error;
  v69 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  destinationCopy = destination;
  v55 = objc_msgSend_copy(message);
  v12 = destinationCopy;
  selfCopy = self;
  if (self)
  {
    v13 = [MEMORY[0x277CBEB58] set];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    devices = [(HDIDSService *)self devices];
    v15 = [devices countByEnumeratingWithState:&v59 objects:buf count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v60;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v60 != v17)
          {
            objc_enumerationMutation(devices);
          }

          v19 = *(*(&v59 + 1) + 8 * i);
          deviceFilterBlock = [v12 deviceFilterBlock];
          v21 = (deviceFilterBlock)[2](deviceFilterBlock, v19);

          if (v21)
          {
            destinationID = [v19 destinationID];
            [v13 addObject:destinationID];
          }
        }

        v16 = [devices countByEnumeratingWithState:&v59 objects:buf count:16];
      }

      while (v16);
    }

    v23 = objc_msgSend_copy(v13);
  }

  else
  {
    v23 = 0;
  }

  priority = [optionsCopy priority];
  if (priority > 2)
  {
    v25 = 200;
  }

  else
  {
    v25 = qword_22916E428[priority];
  }

  v26 = optionsCopy;
  v28 = v55;
  identifierCopy2 = identifier;
  if (selfCopy)
  {
    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v26 timeoutInterval];
    if (v30 > 0.0)
    {
      v31 = MEMORY[0x277CCABB0];
      [v26 timeoutInterval];
      v32 = [v31 numberWithDouble:?];
      [v29 setObject:v32 forKeyedSubscript:*MEMORY[0x277D18650]];
    }

    v33 = objc_msgSend_copy(v29, errorCopy);
  }

  else
  {
    v33 = 0;
  }

  if ([v23 count] || selfCopy->_unitTest_sendOnEmptyDestinationSet)
  {
    service = selfCopy->_service;
    v57 = 0;
    v58 = 0;
    errorCopy = [(IDSService *)service sendMessage:v55 toDestinations:v23 priority:v25 options:v33 identifier:&v58 error:&v57, errorCopy];
    v36 = v58;
    v37 = v57;
    _HKInitializeLogging();
    v38 = *MEMORY[0x277CCC328];
    v39 = *MEMORY[0x277CCC328];
    if (errorCopy)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = MEMORY[0x277CCABB0];
        v41 = v38;
        v42 = [v40 numberWithUnsignedInteger:{objc_msgSend(v23, "count")}];
        *buf = 138543875;
        v64 = selfCopy;
        v65 = 2114;
        v66 = v36;
        v67 = 2113;
        v68 = v42;
        _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueued message %{public}@ to %{private}@ destinations", buf, 0x20u);

        v28 = v55;
      }
    }

    else
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v64 = selfCopy;
        v65 = 2114;
        v66 = v36;
        v67 = 2114;
        v68 = v37;
        _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "%{public}@ Could not enqueue message %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v43 = v37;
      v44 = v43;
      if (v43)
      {
        if (v53)
        {
          v45 = v43;
          *v53 = v44;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      identifierCopy2 = identifier;
    }

    if (identifierCopy2)
    {
      v50 = v36;
      *identifierCopy2 = v36;
    }
  }

  else
  {
    _HKInitializeLogging();
    v46 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
      devices2 = [(HDIDSService *)selfCopy devices];
      v49 = [devices2 count];
      *buf = 138543618;
      v64 = selfCopy;
      v65 = 2048;
      v66 = v49;
      _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ Did not enqueue message: No valid destinations. Available devices: %lu", buf, 0x16u);

      v28 = v55;
    }

    LOBYTE(errorCopy) = 1;
  }

  return errorCopy;
}

- (id)devices
{
  if (self)
  {
    devices = [*(self + 48) devices];
    v2 = [devices hk_map:&__block_literal_global_149];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

HDIDSDevice *__23__HDIDSService_devices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HDIDSDevice alloc] initWithIDSDevice:v2];

  return v3;
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  messageCopy = message;
  serviceCopy = service;
  v15 = [[HDIDSMessageContext alloc] initWithMessageContext:contextCopy];

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = HKSensitiveLogItem();
    originalGUID = [(HDIDSMessageContext *)v15 originalGUID];
    v24 = 138543874;
    selfCopy = self;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = originalGUID;
    _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Received message from %{public}@, originalGUID: %{public}@", &v24, 0x20u);
  }

  delegate = [(HDIDSService *)self delegate];
  v21 = [HDIDSDevice alloc];
  v22 = [serviceCopy deviceForFromID:dCopy];

  v23 = [(HDIDSDevice *)v21 initWithIDSDevice:v22];
  [delegate service:self didReceiveMessage:messageCopy fromDevice:v23 messageContext:v15];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC328];
  v14 = *MEMORY[0x277CCC328];
  if (successCopy)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      selfCopy2 = self;
      v18 = 2114;
      v19 = identifierCopy;
      _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully sent message %{public}@", &v16, 0x16u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v16 = 138543874;
    selfCopy2 = self;
    v18 = 2114;
    v19 = identifierCopy;
    v20 = 2114;
    v21 = errorCopy;
    _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Could not enqueue message %{public}@. Error: %{public}@", &v16, 0x20u);
  }

  delegate = [(HDIDSService *)self delegate];
  [delegate service:self didSendWithSuccess:successCopy identifier:identifierCopy error:errorCopy];
}

- (HDIDSServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end