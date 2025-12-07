@interface PBBridgeIDSServiceDelegate
- (BOOL)connectionStateWithDevices:(id)devices accounts:(id)accounts;
- (BOOL)reportConnectionForService:(id)service accounts:(id)accounts devices:(id)devices;
- (id)_sendProtoBuf:(id)buf service:(id)service priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response;
- (id)sendProtoBuf:(id)buf service:(id)service priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response retryCount:(int64_t)count retryInterval:(double)interval;
- (void)_postMessageSendFailureForErrorMessage:(id)message;
- (void)beginSetupTransaction;
- (void)cancelReachabilityTimer;
- (void)checkReachability;
- (void)endSetupTransaction;
- (void)resetTransportReachabilityTimer;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)setShouldSuppressTransportReachabilityTimeout:(BOOL)timeout;
- (void)startReachabilityTimer;
- (void)stopListeningForIDSSentMessages;
- (void)transportBecameReachable;
- (void)transportBecameUnreachable;
- (void)updateConnectivityTimer:(BOOL)timer;
@end

@implementation PBBridgeIDSServiceDelegate

- (void)beginSetupTransaction
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "BEGAN TRANSACTION!", &v16, 2u);
  }

  if (self->_service)
  {
    v5 = pbb_setupflow_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PBBridgeIDSServiceDelegate *)v5 beginSetupTransaction];
    }
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D18778]);
    serviceIdentifier = [(PBBridgeIDSServiceDelegate *)self serviceIdentifier];
    v8 = [v6 initWithService:serviceIdentifier];
    service = self->_service;
    self->_service = v8;

    [(PBBridgeIDSServiceDelegate *)self setupServiceMessageSelectorMappings];
    [(IDSService *)self->_service addDelegate:self queue:MEMORY[0x277D85CD0]];
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inflightMessages = self->_inflightMessages;
    self->_inflightMessages = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingMessages = self->_pendingMessages;
    self->_pendingMessages = v12;

    self->_listeningForIDSSentMessages = 1;
    v5 = pbb_setupflow_log(v14);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_service;
      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Created Service (%@) and set (%@) as delegate", &v16, 0x16u);
    }
  }
}

- (void)endSetupTransaction
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "ENDED TRANSACTION!", &v11, 2u);
  }

  v5 = pbb_setupflow_log(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    v11 = 138412546;
    v12 = service;
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Destroyed Service (%@) and removed (%@) as delegate", &v11, 0x16u);
  }

  [(IDSService *)self->_service removeDelegate:self];
  v7 = self->_service;
  self->_service = 0;

  [(NSMutableDictionary *)self->_inflightMessages removeAllObjects];
  inflightMessages = self->_inflightMessages;
  self->_inflightMessages = 0;

  [(NSMutableDictionary *)self->_pendingMessages removeAllObjects];
  pendingMessages = self->_pendingMessages;
  self->_pendingMessages = 0;

  [(NSTimer *)self->_transportReachabilityTimer invalidate];
  transportReachabilityTimer = self->_transportReachabilityTimer;
  self->_transportReachabilityTimer = 0;

  self->_shouldSuppressTransportReachabilityTimeout = 0;
  self->_listeningForIDSSentMessages = 0;
}

- (void)_postMessageSendFailureForErrorMessage:(id)message
{
  v12[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = messageCopy;
  if (self->_listeningForIDSSentMessages)
  {
    if (PBIsInternalInstall(messageCopy, v5))
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v8 = [standardUserDefaults BOOLForKey:@"SuppressMessageFailError"];

      if ((v8 & 1) == 0)
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v11 = @"PBBridgeMessageError";
        v12[0] = v6;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
        [defaultCenter postNotificationName:@"PBBridgeMessageFailedToSend" object:0 userInfo:v10];
      }
    }
  }
}

- (id)_sendProtoBuf:(id)buf service:(id)service priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response
{
  responseCopy = response;
  bufCopy = buf;
  identifierCopy = identifier;
  v14 = identifierCopy;
  if (self->_service)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __96__PBBridgeIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke;
    v18[3] = &unk_2799F4B20;
    v19 = identifierCopy;
    v20 = bufCopy;
    selfCopy = self;
    v15 = PBProtoSend(service, v20, priority, v19, responseCopy, v18);

    v16 = v19;
  }

  else
  {
    v16 = pbb_setupflow_log(identifierCopy);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [PBBridgeIDSServiceDelegate _sendProtoBuf:v14 service:bufCopy priority:v16 responseIdentifier:? expectsResponse:?];
    }

    v15 = 0;
  }

  return v15;
}

void __96__PBBridgeIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = pbb_setupflow_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __96__PBBridgeIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke_cold_1(a1, v3, v4);
  }

  v5 = *(a1 + 48);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to Send Message (Pre-Send): %@", *(a1 + 40)];
  [v5 _postMessageSendFailureForErrorMessage:v6];
}

- (id)sendProtoBuf:(id)buf service:(id)service priority:(int64_t)priority responseIdentifier:(id)identifier expectsResponse:(BOOL)response retryCount:(int64_t)count retryInterval:(double)interval
{
  responseCopy = response;
  bufCopy = buf;
  serviceCopy = service;
  identifierCopy = identifier;
  v19 = [(PBBridgeIDSServiceDelegate *)self _sendProtoBuf:bufCopy service:serviceCopy priority:priority responseIdentifier:identifierCopy expectsResponse:responseCopy];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v21 = [standardUserDefaults BOOLForKey:@"SuppressMessageRetry"];

  if ((v21 & 1) == 0 && v19)
  {
    selfCopy = self;
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __120__PBBridgeIDSServiceDelegate_sendProtoBuf_service_priority_responseIdentifier_expectsResponse_retryCount_retryInterval___block_invoke;
    v34 = &unk_2799F4B48;
    v35 = selfCopy;
    v23 = bufCopy;
    v36 = v23;
    v37 = serviceCopy;
    priorityCopy = priority;
    v38 = identifierCopy;
    v40 = responseCopy;
    v24 = selfCopy;
    v25 = MEMORY[0x25F8A6750](&v31);
    inflightMessages = v24->_inflightMessages;
    type = [v23 type];
    intervalCopy = 0.0;
    if (interval >= 0.0)
    {
      intervalCopy = interval;
    }

    v29 = [PBBridgeIDSMessageInstance newMessageInstanceOfType:type retryCount:count & ~(count >> 63) retryInterval:v25 withAction:intervalCopy];
    [(NSMutableDictionary *)inflightMessages setObject:v29 forKey:v19];
  }

  return v19;
}

- (BOOL)connectionStateWithDevices:(id)devices accounts:(id)accounts
{
  v42 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  accountsCopy = accounts;
  canSend2 = [accountsCopy countByEnumeratingWithState:&v32 objects:v41 count:16];
  v8 = "ompanionController refreshTimeoutTimerWithNewActivationGranularState:]_block_invoke";
  if (canSend2)
  {
    v9 = canSend2;
    v25 = devicesCopy;
    v10 = *v33;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(accountsCopy);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        v13 = pbb_setupflow_log(canSend2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          canSend = [v12 canSend];
          *buf = 138412546;
          v38 = v12;
          v39 = 1024;
          v40 = canSend;
          _os_log_impl(&dword_25DE64000, v13, OS_LOG_TYPE_DEFAULT, "account: %@ canSend: %d", buf, 0x12u);
        }

        canSend2 = [v12 canSend];
        if (canSend2)
        {
          v15 = 1;
          goto LABEL_13;
        }

        ++v11;
      }

      while (v9 != v11);
      canSend2 = [accountsCopy countByEnumeratingWithState:&v32 objects:v41 count:16];
      v9 = canSend2;
      if (canSend2)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_13:
    devicesCopy = v25;
    v8 = "[PBBridgeCompanionController refreshTimeoutTimerWithNewActivationGranularState:]_block_invoke" + 11;
  }

  else
  {
    v15 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = devicesCopy;
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v26 = v15;
    v18 = *v29;
    v27 = *(v8 + 306);
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        isNearby = [v20 isNearby];
        v22 = isNearby;
        v23 = pbb_setupflow_log(isNearby);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v27;
          v38 = v20;
          v39 = 1024;
          v40 = v22;
          _os_log_impl(&dword_25DE64000, v23, OS_LOG_TYPE_DEFAULT, "device: %@ isNearby: %d", buf, 0x12u);
        }

        if (v22)
        {
          LOBYTE(v17) = 1;
          goto LABEL_27;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

LABEL_27:
    v15 = v26;
  }

  return v15 & v17;
}

- (void)checkReachability
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  pb_mineTinkerDevices = [(IDSService *)self->_service pb_mineTinkerDevices];
  v4 = [pb_mineTinkerDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(pb_mineTinkerDevices);
      }

      v8 = *(*(&v10 + 1) + 8 * v7);
      if ([v8 isDefaultPairedDevice])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [pb_mineTinkerDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    isNearby = [v8 isNearby];

    if (isNearby)
    {
      return;
    }
  }

  else
  {
LABEL_9:
  }

  if (self->_service)
  {
    [(PBBridgeIDSServiceDelegate *)self startReachabilityTimer];
  }
}

- (void)startReachabilityTimer
{
  v14 = *MEMORY[0x277D85DE8];
  if (!self->_transportReachabilityTimer && !self->_shouldSuppressTransportReachabilityTimeout)
  {
    v8 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_transportBecameUnreachable selector:0 userInfo:0 repeats:60.0];
    transportReachabilityTimer = self->_transportReachabilityTimer;
    self->_transportReachabilityTimer = v8;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:self->_transportReachabilityTimer forMode:*MEMORY[0x277CBE738]];

    v3 = pbb_setupflow_log(v11);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    LOWORD(v12) = 0;
    v5 = "Started reachability timer.";
    v6 = v3;
    v7 = 2;
    goto LABEL_8;
  }

  v3 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_shouldSuppressTransportReachabilityTimeout)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v12 = 138543362;
    v13 = v4;
    v5 = "Not starting reachability timer. (is suppressed? %{public}@)";
    v6 = v3;
    v7 = 12;
LABEL_8:
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, v5, &v12, v7);
  }

LABEL_9:
}

- (void)cancelReachabilityTimer
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = pbb_setup_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PBBridgeIDSServiceDelegate cancelReachabilityTimer]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(NSTimer *)self->_transportReachabilityTimer invalidate];
  transportReachabilityTimer = self->_transportReachabilityTimer;
  self->_transportReachabilityTimer = 0;
}

- (void)resetTransportReachabilityTimer
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = pbb_setup_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[PBBridgeIDSServiceDelegate resetTransportReachabilityTimer]";
    _os_log_impl(&dword_25DE64000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(PBBridgeIDSServiceDelegate *)self cancelReachabilityTimer];
  [(PBBridgeIDSServiceDelegate *)self startReachabilityTimer];
}

- (void)setShouldSuppressTransportReachabilityTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  v11 = *MEMORY[0x277D85DE8];
  v5 = pbb_setup_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (timeoutCopy)
    {
      v6 = @"YES";
    }

    v7 = 136315394;
    v8 = "[PBBridgeIDSServiceDelegate setShouldSuppressTransportReachabilityTimeout:]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%s:%@", &v7, 0x16u);
  }

  if (self->_shouldSuppressTransportReachabilityTimeout != timeoutCopy)
  {
    self->_shouldSuppressTransportReachabilityTimeout = timeoutCopy;
    if (timeoutCopy)
    {
      [(PBBridgeIDSServiceDelegate *)self cancelReachabilityTimer];
    }

    else
    {
      [(PBBridgeIDSServiceDelegate *)self checkReachability];
    }
  }
}

- (void)transportBecameReachable
{
  v2 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "Transport became reachable.", v3, 2u);
  }
}

- (void)transportBecameUnreachable
{
  v2 = pbb_setupflow_log(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(PBBridgeIDSServiceDelegate *)v2 transportBecameUnreachable];
  }
}

- (void)stopListeningForIDSSentMessages
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[PBBridgeIDSServiceDelegate stopListeningForIDSSentMessages]";
  _os_log_error_impl(&dword_25DE64000, log, OS_LOG_TYPE_ERROR, "%s", &v1, 0xCu);
}

- (void)updateConnectivityTimer:(BOOL)timer
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__PBBridgeIDSServiceDelegate_updateConnectivityTimer___block_invoke;
  v3[3] = &unk_2799F4760;
  v3[4] = self;
  timerCopy = timer;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void *__54__PBBridgeIDSServiceDelegate_updateConnectivityTimer___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + 8) & 1) == 0)
  {
    if ((*(a1 + 40) & 1) != 0 || !*(result + 2))
    {
      [result cancelReachabilityTimer];
      v3 = *(a1 + 32);

      return [v3 transportBecameReachable];
    }

    else
    {

      return [result startReachabilityTimer];
    }
  }

  return result;
}

- (BOOL)reportConnectionForService:(id)service accounts:(id)accounts devices:(id)devices
{
  v23 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountsCopy = accounts;
  devicesCopy = devices;
  v11 = [(PBBridgeIDSServiceDelegate *)self connectionStateWithDevices:devicesCopy accounts:accountsCopy];
  v12 = pbb_setupflow_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    v15 = 138413058;
    if (v11)
    {
      v13 = @"YES";
    }

    v16 = v13;
    v17 = 2112;
    v18 = serviceCopy;
    v19 = 2112;
    v20 = accountsCopy;
    v21 = 2112;
    v22 = devicesCopy;
    _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "Connected: %@ (Service: %@ Accounts: %@ Devices: %@)", &v15, 0x2Au);
  }

  return v11;
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  changedCopy = changed;
  serviceCopy = service;
  v8 = pbb_setupflow_log(serviceCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "Accounts Changed!", v10, 2u);
  }

  pb_mineTinkerDevices = [serviceCopy pb_mineTinkerDevices];
  [(PBBridgeIDSServiceDelegate *)self reportConnectionForService:serviceCopy accounts:changedCopy devices:pb_mineTinkerDevices];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  serviceCopy = service;
  v6 = pbb_setupflow_log(serviceCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "Devices Changed!", v10, 2u);
  }

  pb_mineTinkerDevices = [serviceCopy pb_mineTinkerDevices];
  accounts = [serviceCopy accounts];
  v9 = [(PBBridgeIDSServiceDelegate *)self reportConnectionForService:serviceCopy accounts:accounts devices:pb_mineTinkerDevices];

  [(PBBridgeIDSServiceDelegate *)self updateConnectivityTimer:v9];
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  v12 = pbb_setupflow_log(contextCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v13 = 138412802;
    v14 = protobufCopy;
    v15 = 2112;
    v16 = dCopy;
    v17 = 2112;
    v18 = contextCopy;
    _os_log_fault_impl(&dword_25DE64000, v12, OS_LOG_TYPE_FAULT, "incomingUnhandledProtobuf: %@ from: %@ context: %@", &v13, 0x20u);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  v51 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v13 = COERCE_DOUBLE(account);
  identifierCopy = identifier;
  errorCopy = error;
  v16 = [(NSMutableDictionary *)self->_inflightMessages objectForKey:identifierCopy];
  v17 = v16;
  if (!v16)
  {
    v18 = pbb_setupflow_log(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 138413058;
    v42 = identifierCopy;
    v43 = 2112;
    v44 = serviceCopy;
    v45 = 2112;
    v46 = v13;
    v47 = 2112;
    v48 = *&errorCopy;
    v20 = "Unknown message ID: %@ (%@ -- %@) Error: %@. Not taking any action.";
LABEL_16:
    _os_log_error_impl(&dword_25DE64000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0x2Au);
    goto LABEL_25;
  }

  if (!errorCopy && success)
  {
    kdebug_trace();
    v18 = [(NSMutableDictionary *)self->_pendingMessages objectForKey:identifierCopy];
    if ([v17 typeID]== 0xFFFF)
    {
      if ([v18 typeID]== 0xFFFF)
      {
        v27 = @"UNACCOUNTED MESSAGE!! Please file with Pepper Pairing!";
        goto LABEL_20;
      }

      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v27 = [(PBBridgeIDSServiceDelegate *)self customDescriptionOfMessageType:[v19 typeID]];
LABEL_20:
    Current = CFAbsoluteTimeGetCurrent();
    sentAbsoluteTime = [v17 sentAbsoluteTime];
    [sentAbsoluteTime doubleValue];
    v31 = v30;

    if (PBLogPerformanceMetrics(v32, v33))
    {
      v34 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v34 addMeasurement:v27 timeSent:identifierCopy activityType:Current - v31 activityIdentifier:v31];
    }

    v35 = pbb_setupflow_log([PBBridgeCAReporter pushCommunicationTimingType:0 withValue:Current - v31]);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v42 = v27;
      v43 = 2112;
      v44 = identifierCopy;
      v45 = 2048;
      v46 = Current - v31;
      v47 = 2048;
      v48 = Current;
      v49 = 2048;
      v50 = v31;
      _os_log_impl(&dword_25DE64000, v35, OS_LOG_TYPE_DEFAULT, "Success Sending Message: (%@) ID: (%@) Sending took (%f // %f -> %f)", buf, 0x34u);
    }

    [(NSMutableDictionary *)self->_inflightMessages removeObjectForKey:identifierCopy];
    [(NSMutableDictionary *)self->_pendingMessages removeObjectForKey:identifierCopy];

    goto LABEL_25;
  }

  v21 = pbb_setupflow_log(v16);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413058;
    v42 = identifierCopy;
    v43 = 2112;
    v44 = serviceCopy;
    v45 = 2112;
    v46 = v13;
    v47 = 2112;
    v48 = *&errorCopy;
    _os_log_error_impl(&dword_25DE64000, v21, OS_LOG_TYPE_ERROR, "Failed to send message ID: %@ (%@ -- %@) Error: %@", buf, 0x2Au);
  }

  errorCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to Send Message (Post-Send): %@ (%@ -- %@) Error: %@", identifierCopy, serviceCopy, *&v13, errorCopy];
  [(PBBridgeIDSServiceDelegate *)self _postMessageSendFailureForErrorMessage:errorCopy];

  CFPreferencesSetAppValue(@"LastFailedMessageID", identifierCopy, @"com.apple.pbbridge");
  CFPreferencesSetAppValue(@"LastIDSFailureCode", [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}], @"com.apple.pbbridge");
  retryCount = [v17 retryCount];
  v24 = pbb_setupflow_log(retryCount);
  v18 = v24;
  if (retryCount < 1)
  {
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 138413058;
    v42 = identifierCopy;
    v43 = 2112;
    v44 = serviceCopy;
    v45 = 2112;
    v46 = v13;
    v47 = 2112;
    v48 = *&errorCopy;
    v20 = "Failed fallback attempt(s) for message ID: %@ (%@ -- %@) Error: %@";
    goto LABEL_16;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v42 = identifierCopy;
    v43 = 2112;
    v44 = serviceCopy;
    v45 = 2112;
    v46 = v13;
    v47 = 2112;
    v48 = *&errorCopy;
    _os_log_impl(&dword_25DE64000, v18, OS_LOG_TYPE_DEFAULT, "Attempt fallback message send for ID: %@ (%@ -- %@) Error: %@", buf, 0x2Au);
  }

  [(NSMutableDictionary *)self->_inflightMessages removeObjectForKey:identifierCopy];
  [v17 setRetryCount:[v17 retryCount]- 1];
  [(NSMutableDictionary *)self->_pendingMessages setObject:v17 forKey:identifierCopy];
  [v17 retryInterval];
  v26 = dispatch_time(0, (v25 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__PBBridgeIDSServiceDelegate_service_account_identifier_didSendWithSuccess_error___block_invoke;
  block[3] = &unk_2799F49F8;
  v37 = identifierCopy;
  v38 = serviceCopy;
  v39 = *&v13;
  selfCopy = self;
  dispatch_after(v26, MEMORY[0x277D85CD0], block);

  v18 = v37;
LABEL_25:
}

void __82__PBBridgeIDSServiceDelegate_service_account_identifier_didSendWithSuccess_error___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = pbb_setupflow_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_25DE64000, v2, OS_LOG_TYPE_DEFAULT, "Firing fallback message ID: %@ (%@ -- %@)", &v10, 0x20u);
  }

  v6 = [*(a1[7] + 40) objectForKey:a1[4]];
  v7 = pbb_setupflow_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Firing messageInstance %@", &v10, 0xCu);
  }

  if (v6)
  {
    v8 = [v6 retryAction];

    if (v8)
    {
      [*(a1[7] + 32) setObject:v6 forKey:a1[4]];
      v9 = [v6 retryAction];
      v9[2]();
    }
  }
}

- (void)_sendProtoBuf:(os_log_t)log service:priority:responseIdentifier:expectsResponse:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = @"Response ";
  v4 = 138413058;
  if (!a1)
  {
    v3 = &stru_286FA8098;
  }

  v5 = v3;
  v6 = 1024;
  v7 = 142;
  v8 = 2080;
  v9 = "[PBBridgeIDSServiceDelegate _sendProtoBuf:service:priority:responseIdentifier:expectsResponse:]";
  v10 = 2112;
  v11 = a2;
  _os_log_fault_impl(&dword_25DE64000, log, OS_LOG_TYPE_FAULT, "Service Was Nil! %@Protobuf (%d %s) -- %@", &v4, 0x26u);
}

void __96__PBBridgeIDSServiceDelegate__sendProtoBuf_service_priority_responseIdentifier_expectsResponse___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = @"Response ";
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = 138413314;
  if (!v4)
  {
    v3 = &stru_286FA8098;
  }

  v7 = v3;
  v8 = 1024;
  v9 = 145;
  v10 = 2080;
  v11 = "[PBBridgeIDSServiceDelegate _sendProtoBuf:service:priority:responseIdentifier:expectsResponse:]_block_invoke";
  v12 = 2112;
  v13 = v5;
  v14 = 2112;
  v15 = a2;
  _os_log_fault_impl(&dword_25DE64000, log, OS_LOG_TYPE_FAULT, "Failed to send IDS %@Protobuf (%d %s) -- %@ (Error: %@)", &v6, 0x30u);
}

@end