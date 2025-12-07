@interface FMNanoIDSManager
- (BOOL)_checkMinVersionDeviceID:(id)d;
- (BOOL)cancelMessageWithId:(id)id;
- (FMNanoIDSManager)initWithServiceId:(id)id minimumVersion:(int64_t)version;
- (NSArray)devices;
- (id)_sendMessageWithProtobuf:(id)protobuf inResponseToRequest:(id)request withPriority:(int64_t)priority timeout:(double)timeout bypassingDuet:(BOOL)duet deviceID:(id)d responseHandler:(id)handler;
- (id)_sendProtobuf:(id)protobuf priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response bypassingDuet:(BOOL)duet deviceID:(id)d;
- (void)handleRequestsOfType:(unsigned __int16)type withHandler:(id)handler;
- (void)sendMessageWithProtobuf:(id)protobuf inResponseToRequest:(id)request withPriority:(int64_t)priority timeout:(double)timeout bypassingDuet:(BOOL)duet deviceID:(id)d requestAcceptedHandler:(id)handler responseHandler:(id)self0;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)start;
@end

@implementation FMNanoIDSManager

- (FMNanoIDSManager)initWithServiceId:(id)id minimumVersion:(int64_t)version
{
  idCopy = id;
  v17.receiver = self;
  v17.super_class = FMNanoIDSManager;
  v8 = [(FMNanoIDSManager *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serviceId, id);
    if (version <= 4)
    {
      v9->_minVersion = dword_24A307508[version];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    outstandingRequests = v9->_outstandingRequests;
    v9->_outstandingRequests = dictionary;

    v12 = dispatch_queue_create("com.apple.icloud.fmcore.nano_ids_mod_queue", 0);
    outstandingRequestsModQueue = v9->_outstandingRequestsModQueue;
    v9->_outstandingRequestsModQueue = v12;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    registeredRequestHandlers = v9->_registeredRequestHandlers;
    v9->_registeredRequestHandlers = dictionary2;
  }

  return v9;
}

- (void)start
{
  service = [(FMNanoIDSManager *)self service];

  if (!service)
  {
    v4 = objc_alloc(MEMORY[0x277D18778]);
    serviceId = [(FMNanoIDSManager *)self serviceId];
    v6 = [v4 initWithService:serviceId];
    [(FMNanoIDSManager *)self setService:v6];

    service2 = [(FMNanoIDSManager *)self service];
    [service2 addDelegate:self queue:MEMORY[0x277D85CD0]];
  }
}

- (NSArray)devices
{
  service = [(FMNanoIDSManager *)self service];
  devices = [service devices];

  return devices;
}

- (void)sendMessageWithProtobuf:(id)protobuf inResponseToRequest:(id)request withPriority:(int64_t)priority timeout:(double)timeout bypassingDuet:(BOOL)duet deviceID:(id)d requestAcceptedHandler:(id)handler responseHandler:(id)self0
{
  protobufCopy = protobuf;
  requestCopy = request;
  dCopy = d;
  handlerCopy = handler;
  responseHandlerCopy = responseHandler;
  v22 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __147__FMNanoIDSManager_sendMessageWithProtobuf_inResponseToRequest_withPriority_timeout_bypassingDuet_deviceID_requestAcceptedHandler_responseHandler___block_invoke;
  block[3] = &unk_278FD9898;
  block[4] = self;
  v29 = dCopy;
  v33 = handlerCopy;
  priorityCopy = priority;
  v30 = protobufCopy;
  v31 = requestCopy;
  timeoutCopy = timeout;
  duetCopy = duet;
  v32 = responseHandlerCopy;
  v23 = handlerCopy;
  v24 = requestCopy;
  v25 = protobufCopy;
  v26 = responseHandlerCopy;
  v27 = dCopy;
  dispatch_async(v22, block);
}

void __147__FMNanoIDSManager_sendMessageWithProtobuf_inResponseToRequest_withPriority_timeout_bypassingDuet_deviceID_requestAcceptedHandler_responseHandler___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _checkMinVersionDeviceID:*(a1 + 40)])
  {
    v2 = *(a1 + 80);
    if (v2 > 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_24A307520[v2];
    }

    v8 = [*(a1 + 32) _sendMessageWithProtobuf:*(a1 + 48) inResponseToRequest:*(a1 + 56) withPriority:v3 timeout:*(a1 + 96) bypassingDuet:*(a1 + 40) deviceID:*(a1 + 64) responseHandler:*(a1 + 88)];
    v9 = *(a1 + 72);
    if (v9 && v8)
    {
      (*(v9 + 16))();
    }

    MEMORY[0x2821F96F8]();
  }

  else
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA470];
      v11[0] = @"Min Version check failed";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v7 = [v5 errorWithDomain:@"com.apple.icloud.FMCore" code:0 userInfo:v6];
      (*(v4 + 16))(v4, 0, 0, 0, v7);
    }
  }
}

- (id)_sendMessageWithProtobuf:(id)protobuf inResponseToRequest:(id)request withPriority:(int64_t)priority timeout:(double)timeout bypassingDuet:(BOOL)duet deviceID:(id)d responseHandler:(id)handler
{
  duetCopy = duet;
  protobufCopy = protobuf;
  requestCopy = request;
  dCopy = d;
  handlerCopy = handler;
  v20 = [(FMNanoIDSManager *)self _sendProtobuf:protobufCopy priority:priority responseIdentifier:requestCopy expectsResponse:handlerCopy != 0 bypassingDuet:duetCopy deviceID:dCopy];
  v21 = v20;
  if (handlerCopy && v20)
  {
    v22 = objc_alloc_init(FMNanoIDSRequest);
    v23 = [handlerCopy copy];
    [(FMNanoIDSRequest *)v22 setResponseHandler:v23];

    [(FMNanoIDSRequest *)v22 setIdsMessageID:v21];
    v24 = &off_24A307000;
    if (timeout <= 0.0)
    {
      v27 = 0;
    }

    else
    {
      objc_initWeak(&location, self);
      v25 = [FMDispatchTimer alloc];
      v26 = dispatch_get_global_queue(0, 0);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __125__FMNanoIDSManager__sendMessageWithProtobuf_inResponseToRequest_withPriority_timeout_bypassingDuet_deviceID_responseHandler___block_invoke;
      v34[3] = &unk_278FD98C0;
      objc_copyWeak(&v37, &location);
      v35 = v21;
      v36 = handlerCopy;
      v27 = [(FMDispatchTimer *)v25 initWithQueue:v26 timeout:v34 completion:timeout];

      [(FMNanoIDSRequest *)v22 setTimer:v27];
      objc_destroyWeak(&v37);
      objc_destroyWeak(&location);
      v24 = &off_24A307000;
    }

    outstandingRequestsModQueue = [(FMNanoIDSManager *)self outstandingRequestsModQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = *(v24 + 149);
    block[2] = __125__FMNanoIDSManager__sendMessageWithProtobuf_inResponseToRequest_withPriority_timeout_bypassingDuet_deviceID_responseHandler___block_invoke_2;
    block[3] = &unk_278FD98E8;
    block[4] = self;
    v32 = v21;
    v33 = v22;
    v29 = v22;
    dispatch_sync(outstandingRequestsModQueue, block);

    [(FMDispatchTimer *)v27 start];
  }

  return v21;
}

void __125__FMNanoIDSManager__sendMessageWithProtobuf_inResponseToRequest_withPriority_timeout_bypassingDuet_deviceID_responseHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained cancelMessageWithId:*(a1 + 32)];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, 1, 0, 0);
  }
}

void __125__FMNanoIDSManager__sendMessageWithProtobuf_inResponseToRequest_withPriority_timeout_bypassingDuet_deviceID_responseHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) outstandingRequests];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (BOOL)cancelMessageWithId:(id)id
{
  v24 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = LogCategory_Unspecified(idCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = idCopy;
    _os_log_impl(&dword_24A2EE000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling message with ID %@", buf, 0xCu);
  }

  outstandingRequests = [(FMNanoIDSManager *)self outstandingRequests];
  v7 = [outstandingRequests objectForKeyedSubscript:idCopy];

  timer = [v7 timer];
  [timer cancel];

  v10 = LogCategory_Unspecified(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"YES";
    if (!v7)
    {
      v11 = @"NO";
    }

    *buf = 138412546;
    v21 = idCopy;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_24A2EE000, v10, OS_LOG_TYPE_DEFAULT, "Did find outstanding message to cancel with ID %@ : %@", buf, 0x16u);
  }

  service = [(FMNanoIDSManager *)self service];
  v19 = 0;
  [service cancelIdentifier:idCopy error:&v19];
  v13 = v19;

  outstandingRequestsModQueue = [(FMNanoIDSManager *)self outstandingRequestsModQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FMNanoIDSManager_cancelMessageWithId___block_invoke;
  block[3] = &unk_278FD9690;
  block[4] = self;
  v18 = idCopy;
  v15 = idCopy;
  dispatch_sync(outstandingRequestsModQueue, block);

  return v7 != 0;
}

void __40__FMNanoIDSManager_cancelMessageWithId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outstandingRequests];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)handleRequestsOfType:(unsigned __int16)type withHandler:(id)handler
{
  typeCopy = type;
  v9 = [handler copy];
  v6 = MEMORY[0x24C215A50]();
  registeredRequestHandlers = [(FMNanoIDSManager *)self registeredRequestHandlers];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:typeCopy];
  [registeredRequestHandlers setObject:v6 forKeyedSubscript:v8];
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  *&v39[5] = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  v14 = LogCategory_Unspecified(incomingResponseIdentifier);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v39[0] = [protobufCopy type];
    LOWORD(v39[1]) = 2112;
    *(&v39[1] + 2) = incomingResponseIdentifier;
    _os_log_impl(&dword_24A2EE000, v14, OS_LOG_TYPE_DEFAULT, "Received request of type %d with message ID %@", buf, 0x12u);
  }

  if (!incomingResponseIdentifier)
  {
    registeredRequestHandlers = [(FMNanoIDSManager *)self registeredRequestHandlers];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(protobufCopy, "type")}];
    v16 = [registeredRequestHandlers objectForKeyedSubscript:v23];

    if (v16)
    {
      v25 = dispatch_get_global_queue(21, 0);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __77__FMNanoIDSManager_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke_45;
      v31[3] = &unk_278FD9910;
      v35 = v16;
      v31[4] = self;
      v32 = protobufCopy;
      v33 = contextCopy;
      v34 = dCopy;
      dispatch_async(v25, v31);

      v26 = v35;
    }

    else
    {
      v26 = LogCategory_Unspecified(v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        type = [protobufCopy type];
        *buf = 67109120;
        v39[0] = type;
        v27 = "No handler found for request of type %d. Ignoring the request...";
        v28 = v26;
        v29 = 8;
        goto LABEL_14;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  outstandingRequests = [(FMNanoIDSManager *)self outstandingRequests];
  v16 = [outstandingRequests objectForKeyedSubscript:incomingResponseIdentifier];

  if (!v16)
  {
    v26 = LogCategory_Unspecified(v17);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v39 = incomingResponseIdentifier;
      v27 = "No outstanding request with message ID %@";
      v28 = v26;
      v29 = 12;
LABEL_14:
      _os_log_impl(&dword_24A2EE000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  timer = [v16 timer];
  [timer cancel];

  outstandingRequestsModQueue = [(FMNanoIDSManager *)self outstandingRequestsModQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__FMNanoIDSManager_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke;
  block[3] = &unk_278FD9690;
  block[4] = self;
  v37 = incomingResponseIdentifier;
  dispatch_sync(outstandingRequestsModQueue, block);

  responseHandler = [v16 responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [v16 responseHandler];
    (responseHandler2)[2](responseHandler2, protobufCopy, 0, dCopy, 0);
  }

LABEL_16:
}

void __77__FMNanoIDSManager_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) outstandingRequests];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void __77__FMNanoIDSManager_service_account_incomingUnhandledProtobuf_fromID_context___block_invoke_45(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) outgoingResponseIdentifier];
  (*(v2 + 16))(v2, v3, v4, v5, *(a1 + 56));
}

- (id)_sendProtobuf:(id)protobuf priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response bypassingDuet:(BOOL)duet deviceID:(id)d
{
  duetCopy = duet;
  responseCopy = response;
  v39 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  identifierCopy = identifier;
  dCopy = d;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = dictionary;
  if (identifierCopy)
  {
    [dictionary setObject:identifierCopy forKeyedSubscript:*MEMORY[0x277D18610]];
  }

  if (responseCopy)
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185B0]];
  }

  if (duetCopy)
  {
    [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18580]];
  }

  if (dCopy)
  {
    v19 = dCopy;
  }

  else
  {
    v19 = *MEMORY[0x277D187E8];
  }

  v20 = [MEMORY[0x277CBEB98] setWithObject:v19];
  service = [(FMNanoIDSManager *)self service];
  v31 = 0;
  v32 = 0;
  v22 = [service sendProtobuf:protobufCopy toDestinations:v20 priority:priority options:v18 identifier:&v32 error:&v31];
  v23 = v32;
  v24 = v31;

  v26 = LogCategory_Unspecified(v25);
  v27 = v26;
  if ((v22 & 1) != 0 || !v24)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      type = [protobufCopy type];
      *buf = 138412802;
      v34 = v20;
      v35 = 1024;
      v36 = type;
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&dword_24A2EE000, v27, OS_LOG_TYPE_DEFAULT, "Sent message to %@ of type %d with id %@", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    type2 = [protobufCopy type];
    *buf = 138412802;
    v34 = v20;
    v35 = 1024;
    v36 = type2;
    v37 = 2112;
    v38 = v24;
    _os_log_error_impl(&dword_24A2EE000, v27, OS_LOG_TYPE_ERROR, "Error sending the message to %@ of type %d : %@", buf, 0x1Cu);
  }

  return v23;
}

- (BOOL)_checkMinVersionDeviceID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  if (dCopy)
  {
    devices = [(FMNanoIDSManager *)self devices];
    v6 = LogCategory_Unspecified(devices);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FMNanoIDSManager _checkMinVersionDeviceID:v6];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__FMNanoIDSManager__checkMinVersionDeviceID___block_invoke;
    v18[3] = &unk_278FD9938;
    v19 = dCopy;
    v20 = &v21;
    [devices enumerateObjectsUsingBlock:v18];
    v7 = v19;
  }

  else
  {
    devices = [MEMORY[0x277D2BCF8] sharedInstance];
    getActivePairedDevice = [devices getActivePairedDevice];
    v7 = v22[5];
    v22[5] = getActivePairedDevice;
  }

  if (v22[5])
  {
    v9 = NRWatchOSVersionForRemoteDevice();
    minVersion = [(FMNanoIDSManager *)self minVersion];
    if (v9 >= minVersion)
    {
      v16 = 1;
      goto LABEL_15;
    }

    v11 = LogCategory_Unspecified(minVersion);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      minVersion2 = [(FMNanoIDSManager *)self minVersion];
      *buf = 67109376;
      v28 = v9;
      v29 = 1024;
      v30 = minVersion2;
      v13 = "Paired device version %X is older the minuimum supported version %X";
      v14 = v11;
      v15 = 14;
LABEL_12:
      _os_log_impl(&dword_24A2EE000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    }
  }

  else
  {
    v11 = LogCategory_Unspecified(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "No paired device version found";
      v14 = v11;
      v15 = 2;
      goto LABEL_12;
    }
  }

  v16 = 0;
LABEL_15:
  _Block_object_dispose(&v21, 8);

  return v16;
}

void __45__FMNanoIDSManager__checkMinVersionDeviceID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = IDSCopyIDForDevice();
  v8 = LogCategory_Unspecified(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __45__FMNanoIDSManager__checkMinVersionDeviceID___block_invoke_cold_1(v7, a1, v8);
  }

  if ([v7 isEqualToString:*(a1 + 32)])
  {
    v9 = [MEMORY[0x277D2BCF8] sharedInstance];
    v10 = [v9 deviceForIDSDevice:v6];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

void __45__FMNanoIDSManager__checkMinVersionDeviceID___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_24A2EE000, log, OS_LOG_TYPE_DEBUG, "Comparing %@ to %@ IDS identifiers", &v4, 0x16u);
}

@end