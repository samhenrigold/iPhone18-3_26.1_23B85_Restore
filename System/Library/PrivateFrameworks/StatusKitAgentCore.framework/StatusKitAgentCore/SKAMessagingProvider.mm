@interface SKAMessagingProvider
+ (BOOL)_isBlastdoorEnabledForService:(id)service;
+ (BOOL)isRegisteredWithIDS;
+ (id)deviceTokenForTokenURI:(id)i;
+ (id)handleForTokenURI:(id)i;
+ (id)logger;
- (BOOL)_keysharingIsDisabledByServer;
- (BOOL)_selfSharingIsDisabledByServer;
- (BOOL)isFromIDFromSelfAccount:(id)account;
- (BOOL)isHandleAvailableToMessageFrom:(id)from;
- (BOOL)isValidURI:(id)i;
- (BOOL)sendMessage:(id)message toHandle:(id)handle fromHandle:(id)fromHandle limitToPresenceCapable:(BOOL)capable identifier:(id *)identifier error:(id *)error;
- (BOOL)sendMessage:(id)message toHandles:(id)handles fromHandle:(id)handle limitToPresenceCapable:(BOOL)capable identifier:(id *)identifier error:(id *)error;
- (BOOL)sendMessageToSelfDevices:(id)devices limitToPresenceCapable:(BOOL)capable identifier:(id *)identifier error:(id *)error;
- (SKAMessagingProvider)initWithDelegate:(id)delegate serviceIdentifier:(id)identifier pushManager:(id)manager queue:(id)queue;
- (SKAMessagingProvidingDelegate)delegate;
- (id)registerIDSDeviceChangedObserver:(id)observer;
- (id)resolveSenderHandleWithPreferredSenderHandle:(id)handle;
- (id)selfAddressedURIForURI:(id)i error:(id *)error;
- (id)tokenURIWithError:(id *)error;
- (void)_keysharingIsDisabledByServer;
- (void)_selfSharingIsDisabledByServer;
- (void)isHandle:(id)handle inFirewallForService:(id)service completion:(id)completion;
- (void)isHandleMessageable:(id)messageable completion:(id)completion;
- (void)isHandleMessageableForPresence:(id)presence completion:(id)completion;
- (void)listOfValidSenderHandles:(id)handles containsSenderMergeID:(id)d completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service didHintCheckingTransportLogWithReason:(int64_t)reason;
- (void)signPayload:(id)payload completion:(id)completion;
- (void)verifySignedPayload:(id)payload matchesPayload:(id)matchesPayload fromTokenURI:(id)i completion:(id)completion;
- (void)verifySignedPayloads:(id)payloads completion:(id)completion;
@end

@implementation SKAMessagingProvider

- (SKAMessagingProvider)initWithDelegate:(id)delegate serviceIdentifier:(id)identifier pushManager:(id)manager queue:(id)queue
{
  v30 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  identifierCopy = identifier;
  managerCopy = manager;
  queueCopy = queue;
  v25.receiver = self;
  v25.super_class = SKAMessagingProvider;
  v14 = [(SKAMessagingProvider *)&v25 init];
  if (v14)
  {
    v15 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = delegateCopy;
      _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Initializing messaging provider with service %@ and delegate %@", buf, 0x16u);
    }

    if ([(SKAMessagingProvider *)v14 _keysharingIsDisabledByServer])
    {
      mEMORY[0x277D18728] = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(mEMORY[0x277D18728], OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider initWithDelegate:serviceIdentifier:pushManager:queue:];
      }
    }

    else
    {
      objc_storeWeak(&v14->_delegate, delegateCopy);
      objc_storeStrong(&v14->_serviceIdentifier, identifier);
      objc_storeStrong(&v14->_pushManager, manager);
      objc_storeStrong(&v14->_queue, queue);
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      registeredIDSDeviceChangedObservers = v14->_registeredIDSDeviceChangedObservers;
      v14->_registeredIDSDeviceChangedObservers = v17;

      v19 = [objc_alloc(MEMORY[0x277D18778]) initWithService:identifierCopy];
      service = v14->_service;
      v14->_service = v19;

      v21 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [SKAMessagingProvider _isBlastdoorEnabledForService:v14->_service];
        v23 = @"NO";
        if (v22)
        {
          v23 = @"YES";
        }

        *buf = 138412290;
        v27 = v23;
        _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "IDSService is Blastdoored: %@", buf, 0xCu);
      }

      [(IDSService *)v14->_service addDelegate:v14 queue:queueCopy];
      mEMORY[0x277D18728] = [MEMORY[0x277D18728] sharedInstance];
      [mEMORY[0x277D18728] addListenerID:@"com.apple.StatusKit" forService:@"com.apple.private.alloy.status.keysharing"];
    }
  }

  return v14;
}

+ (BOOL)_isBlastdoorEnabledForService:(id)service
{
  v3 = MEMORY[0x277D18A30];
  serviceCopy = service;
  v5 = [v3 alloc];
  serviceIdentifier = [serviceCopy serviceIdentifier];

  v7 = [v5 initWithServiceIdentifier:serviceIdentifier];
  LOBYTE(serviceCopy) = [v7 constraintType] == 2;

  return serviceCopy;
}

- (BOOL)sendMessage:(id)message toHandle:(id)handle fromHandle:(id)fromHandle limitToPresenceCapable:(BOOL)capable identifier:(id *)identifier error:(id *)error
{
  capableCopy = capable;
  v21 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v14 = MEMORY[0x277CBEA60];
  fromHandleCopy = fromHandle;
  handleCopy2 = handle;
  messageCopy = message;
  v18 = [v14 arrayWithObjects:&handleCopy count:1];

  LOBYTE(error) = [(SKAMessagingProvider *)self sendMessage:messageCopy toHandles:v18 fromHandle:fromHandleCopy limitToPresenceCapable:capableCopy identifier:identifier error:error, handleCopy, v21];
  return error;
}

- (BOOL)sendMessage:(id)message toHandles:(id)handles fromHandle:(id)handle limitToPresenceCapable:(BOOL)capable identifier:(id *)identifier error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlesCopy = handles;
  handleCopy = handle;
  if ([(SKAMessagingProvider *)self _keysharingIsDisabledByServer])
  {
    v14 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:];
    }

    LOBYTE(v15) = 0;
  }

  else
  {
    selfCopy = self;
    v41 = handleCopy;
    v42 = messageCopy;
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v16 = handlesCopy;
    v17 = [v16 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v47;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v47 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v46 + 1) + 8 * i);
          idsDestination = [v21 idsDestination];
          if ([idsDestination length])
          {
            [v14 addObject:idsDestination];
          }

          else
          {
            v23 = +[SKAMessagingProvider logger];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v51 = v21;
              _os_log_error_impl(&dword_220099000, v23, OS_LOG_TYPE_ERROR, "Failed to generate IDS destination for handle: %@", buf, 0xCu);
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v18);
    }

    if ([v14 count])
    {
      idsDestination2 = [v41 idsDestination];
      v56 = *MEMORY[0x277D185E0];
      v57 = idsDestination2;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v26 = [v25 mutableCopy];

      v27 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v51 = v42;
        v52 = 2112;
        v53 = v14;
        v54 = 2112;
        v55 = v26;
        _os_log_impl(&dword_220099000, v27, OS_LOG_TYPE_DEFAULT, "Sending message %@ to destinations %@ options: %@", buf, 0x20u);
      }

      service = selfCopy->_service;
      v44 = 0;
      v45 = 0;
      v15 = [(IDSService *)service sendMessage:v42 toDestinations:v14 priority:300 options:v26 identifier:&v45 error:&v44];
      v29 = v45;
      v30 = v44;
      v31 = +[SKAMessagingProvider logger];
      v32 = v31;
      if (v15)
      {
        errorCopy2 = error;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v29;
          _os_log_impl(&dword_220099000, v32, OS_LOG_TYPE_DEFAULT, "Successfully sent invitation message, assigned message identifier: %@", buf, 0xCu);
        }
      }

      else
      {
        errorCopy2 = error;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [SKAMessagingProvider sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:];
        }
      }

      if (identifier)
      {
        v37 = v29;
        *identifier = v29;
      }

      handleCopy = v41;
      if (errorCopy2)
      {
        *errorCopy2 = [SKAError errorWithCode:505 underlyingError:v30];
      }

      messageCopy = v42;
    }

    else
    {
      v34 = +[SKAMessagingProvider logger];
      handleCopy = v41;
      messageCopy = v42;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:];
      }

      v35 = [SKAError errorWithCode:502];
      idsDestination2 = v35;
      if (error)
      {
        v36 = v35;
        LOBYTE(v15) = 0;
        *error = idsDestination2;
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }
  }

  return v15;
}

- (BOOL)sendMessageToSelfDevices:(id)devices limitToPresenceCapable:(BOOL)capable identifier:(id *)identifier error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  if ([(SKAMessagingProvider *)self _selfSharingIsDisabledByServer])
  {
    v10 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider sendMessageToSelfDevices:limitToPresenceCapable:identifier:error:];
    }

    LOBYTE(v11) = 0;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    service = [(SKAMessagingProvider *)self service];
    devices = [service devices];

    v14 = [devices countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(devices);
          }

          v18 = IDSCopyIDForDevice();
          if (v18)
          {
            [v10 addObject:v18];
          }
        }

        v15 = [devices countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v15);
    }

    if ([v10 count])
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v20 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v38 = devicesCopy;
        v39 = 2112;
        v40 = v10;
        v41 = 2112;
        v42 = v19;
        _os_log_impl(&dword_220099000, v20, OS_LOG_TYPE_DEFAULT, "Sending message %@ to destinations %@ options: %@", buf, 0x20u);
      }

      service = self->_service;
      v31 = 0;
      v32 = 0;
      v11 = [(IDSService *)service sendMessage:devicesCopy toDestinations:v10 priority:300 options:v19 identifier:&v32 error:&v31];
      v22 = v32;
      v23 = v31;
      v24 = +[SKAMessagingProvider logger];
      v25 = v24;
      if (v11)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = v22;
          _os_log_impl(&dword_220099000, v25, OS_LOG_TYPE_DEFAULT, "Successfully sent invitation message, assigned message identifier: %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:];
      }

      if (identifier)
      {
        v29 = v22;
        *identifier = v22;
      }

      if (error)
      {
        *error = [SKAError errorWithCode:505 underlyingError:v23];
      }
    }

    else
    {
      v26 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider sendMessageToSelfDevices:limitToPresenceCapable:identifier:error:];
      }

      v27 = [SKAError errorWithCode:502];
      v19 = v27;
      if (error)
      {
        v28 = v27;
        LOBYTE(v11) = 0;
        *error = v19;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }
  }

  return v11;
}

- (void)isHandleMessageable:(id)messageable completion:(id)completion
{
  messageableCopy = messageable;
  completionCopy = completion;
  if ([(SKAMessagingProvider *)self _keysharingIsDisabledByServer])
  {
    v8 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:];
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    idsDestination = [messageableCopy idsDestination];
    serviceIdentifier = [(SKAMessagingProvider *)self serviceIdentifier];
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@_%p", v13, self];

    mEMORY[0x277D18728] = [MEMORY[0x277D18728] sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__SKAMessagingProvider_isHandleMessageable_completion___block_invoke;
    v16[3] = &unk_27843E8C0;
    v17 = completionCopy;
    [mEMORY[0x277D18728] refreshIDStatusForDestination:idsDestination service:serviceIdentifier listenerID:v14 queue:MEMORY[0x277D85CD0] completionBlock:v16];
  }
}

- (void)isHandleMessageableForPresence:(id)presence completion:(id)completion
{
  presenceCopy = presence;
  completionCopy = completion;
  if ([(SKAMessagingProvider *)self _keysharingIsDisabledByServer])
  {
    v8 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:];
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    idsDestination = [presenceCopy idsDestination];
    serviceIdentifier = [(SKAMessagingProvider *)self serviceIdentifier];
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@_%p", v13, self];

    mEMORY[0x277D18728] = [MEMORY[0x277D18728] sharedInstance];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__SKAMessagingProvider_isHandleMessageableForPresence_completion___block_invoke;
    v16[3] = &unk_27843E8C0;
    v17 = completionCopy;
    [mEMORY[0x277D18728] refreshIDStatusForDestination:idsDestination service:serviceIdentifier listenerID:v14 queue:MEMORY[0x277D85CD0] completionBlock:v16];
  }
}

- (BOOL)isHandleAvailableToMessageFrom:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = objc_alloc(MEMORY[0x277D18A48]);
  normalizedHandleString = [fromCopy normalizedHandleString];
  v7 = [v5 initWithUnprefixedURI:normalizedHandleString];

  service = [(SKAMessagingProvider *)self service];
  uRIs = [service URIs];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = uRIs;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v19 + 1) + 8 * i) isEqualToURI:{v7, v19}])
        {
          v17 = +[SKAMessagingProvider logger];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = fromCopy;
            _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Sender handle %@ is a valid sender handle for active iCloud account", buf, 0xCu);
          }

          v16 = 1;
          v15 = v10;
          goto LABEL_15;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = +[SKAMessagingProvider logger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = fromCopy;
    _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Sender handle %@ is not a valid sender handle for active iCloud account", buf, 0xCu);
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (BOOL)isFromIDFromSelfAccount:(id)account
{
  accountCopy = account;
  service = [(SKAMessagingProvider *)self service];
  v6 = [service deviceForFromID:accountCopy];

  return v6 != 0;
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v13 = +[SKAMessagingProvider logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
    v21 = 138412802;
    v22 = messageCopy;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = senderCorrelationIdentifier;
    _os_log_impl(&dword_220099000, v13, OS_LOG_TYPE_DEFAULT, "Received incoming message: %@ fromID: %@ (%@)", &v21, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if ([(SKAMessagingProvider *)self _keysharingIsDisabledByServer])
    {
      serviceIdentifier = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(serviceIdentifier, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider service:account:incomingMessage:fromID:context:];
      }
    }

    else
    {
      serviceIdentifier = [contextCopy serviceIdentifier];
      originalGUID = [contextCopy originalGUID];
      toID = [contextCopy toID];
      v19 = objc_loadWeakRetained(&self->_delegate);
      senderCorrelationIdentifier2 = [contextCopy senderCorrelationIdentifier];
      [v19 service:serviceIdentifier didReceiveIncomingMessage:messageCopy fromID:dCopy fromMergeID:senderCorrelationIdentifier2 toID:toID messageGuid:originalGUID];
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  serviceCopy = service;
  v15 = +[SKAMessagingProvider logger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = identifierCopy;
    v22 = 1024;
    v23 = successCopy;
    _os_log_impl(&dword_220099000, v15, OS_LOG_TYPE_DEFAULT, "Message: %@ did send with success: %d", &v20, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  serviceIdentifier = [serviceCopy serviceIdentifier];

  fromID = [contextCopy fromID];
  toID = [contextCopy toID];

  [WeakRetained service:serviceIdentifier outgoingMessageWithIdentifier:identifierCopy fromID:fromID toID:toID didSendWithSuccess:successCopy];
}

- (void)service:(id)service didHintCheckingTransportLogWithReason:(int64_t)reason
{
  v5 = [SKAMessagingProvider logger:service];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Received didHintCheckingTransportLogWithReason", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 networkBecameReachable];
  }
}

- (id)resolveSenderHandleWithPreferredSenderHandle:(id)handle
{
  v31 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (handleCopy)
  {
    v5 = objc_alloc(MEMORY[0x277D18A48]);
    handleString = [handleCopy handleString];
    v7 = [v5 initWithUnprefixedURI:handleString];

    if (v7 && ([v7 unprefixedURI], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v9))
    {
      v10 = handleCopy;
    }

    else
    {
      v11 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider resolveSenderHandleWithPreferredSenderHandle:];
      }

      v10 = 0;
    }
  }

  else
  {
    uRIs = [(IDSService *)self->_service URIs];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = uRIs;
    v14 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v7);
          }

          unprefixedURI = [*(*(&v24 + 1) + 8 * i) unprefixedURI];
          if (unprefixedURI)
          {
            [v13 addObject:unprefixedURI];
          }
        }

        v15 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v15);
    }

    v19 = [v13 copy];
    v20 = _IDSCopyCallerID();

    if ([v20 length])
    {
      v21 = IDSCopyRawAddressForDestination();
      v22 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v21;
        _os_log_impl(&dword_220099000, v22, OS_LOG_TYPE_DEFAULT, "Resolved default caller ID: %@", buf, 0xCu);
      }

      v10 = [objc_alloc(MEMORY[0x277D680C0]) initWithString:v21];
    }

    else
    {
      v21 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider resolveSenderHandleWithPreferredSenderHandle:];
      }

      v10 = 0;
    }
  }

  return v10;
}

- (id)tokenURIWithError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  if (+[SKAMessagingProvider isRegisteredWithIDS])
  {
    uRIs = [(IDSService *)self->_service URIs];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = uRIs;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          unprefixedURI = [*(*(&v23 + 1) + 8 * i) unprefixedURI];
          if (unprefixedURI)
          {
            [v6 addObject:unprefixedURI];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
    v14 = _IDSCopyCallerID();

    deviceToken = [(SKAMessagingProvider *)self deviceToken];
    if (deviceToken && v14)
    {
      v27 = v14;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v17 = _IDSCopyOrderedAliases();
      firstObject = [v17 firstObject];

      v19 = MEMORY[0x223D77480](deviceToken, firstObject);
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else if (error)
      {
        *error = [SKAError errorWithCode:706 customDescription:@"Could not retrieve token URI"];
      }
    }

    else if (error)
    {
      [SKAError errorWithCode:706 customDescription:@"Could not retrieve device token or caller ID destination"];
      *error = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  else if (error)
  {
    [SKAError errorWithCode:705];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)isValidURI:(id)i
{
  v48 = *MEMORY[0x277D85DE8];
  iCopy = i;
  if (iCopy)
  {
    v5 = iCopy;
    if ([iCopy isTokenURI])
    {
      v6 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v5;
        _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Stripping token from: %@", buf, 0xCu);
      }

      tokenFreeURI = [v5 tokenFreeURI];

      v5 = tokenFreeURI;
    }

    [(IDSService *)self->_service accounts];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = v42 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      v30 = *v40;
LABEL_8:
      v12 = 0;
      while (1)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v39 + 1) + 8 * v12);
        if ([v5 IDSIDType]== 7)
        {
          v37 = 0uLL;
          v38 = 0uLL;
          v35 = 0uLL;
          v36 = 0uLL;
          pseudonyms = [v13 pseudonyms];
          v15 = [pseudonyms countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v36;
LABEL_14:
            v18 = 0;
            while (1)
            {
              if (*v36 != v17)
              {
                objc_enumerationMutation(pseudonyms);
              }

              v19 = [*(*(&v35 + 1) + 8 * v18) URI];
              v20 = [v19 isEqualToURI:v5];

              if (v20)
              {
                break;
              }

              if (v16 == ++v18)
              {
                v16 = [pseudonyms countByEnumeratingWithState:&v35 objects:v44 count:16];
                if (v16)
                {
                  goto LABEL_14;
                }

                goto LABEL_29;
              }
            }

LABEL_35:

            v28 = 1;
            v27 = v8;
            goto LABEL_36;
          }
        }

        else
        {
          v33 = 0uLL;
          v34 = 0uLL;
          v31 = 0uLL;
          v32 = 0uLL;
          pseudonyms = [v13 handles];
          v21 = [pseudonyms countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v32;
LABEL_23:
            v24 = 0;
            while (1)
            {
              if (*v32 != v23)
              {
                objc_enumerationMutation(pseudonyms);
              }

              v25 = [*(*(&v31 + 1) + 8 * v24) URI];
              v26 = [v25 isEqualToURI:v5];

              if (v26)
              {
                goto LABEL_35;
              }

              if (v22 == ++v24)
              {
                v22 = [pseudonyms countByEnumeratingWithState:&v31 objects:v43 count:16];
                if (v22)
                {
                  goto LABEL_23;
                }

LABEL_29:
                v11 = v30;
                break;
              }
            }
          }
        }

        if (++v12 == v10)
        {
          v10 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
          if (v10)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v27 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider isValidURI:];
    }

    v28 = 0;
LABEL_36:
  }

  else
  {
    v5 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider isValidURI:];
    }

    v28 = 0;
  }

  return v28;
}

- (id)selfAddressedURIForURI:(id)i error:(id *)error
{
  iCopy = i;
  if (+[SKAMessagingProvider isRegisteredWithIDS])
  {
    v7 = objc_alloc(MEMORY[0x277D18A08]);
    deviceToken = [(SKAMessagingProvider *)self deviceToken];
    v9 = [v7 initWithData:deviceToken];

    if (v9 && ([v9 rawToken], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      if ([iCopy isTokenURI])
      {
        tokenFreeURI = [iCopy tokenFreeURI];

        iCopy = tokenFreeURI;
      }

      v12 = [iCopy URIByAddingPushToken:v9];
      prefixedURI = [v12 prefixedURI];
    }

    else
    {
      v14 = +[SKAMessagingProvider logger];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SKAMessagingProvider selfAddressedURIForURI:error:];
      }

      if (error)
      {
        [SKAError errorWithCode:706 customDescription:@"Could not retrieve device token"];
        *error = prefixedURI = 0;
      }

      else
      {
        prefixedURI = 0;
      }
    }
  }

  else if (error)
  {
    [SKAError errorWithCode:705];
    *error = prefixedURI = 0;
  }

  else
  {
    prefixedURI = 0;
  }

  return prefixedURI;
}

+ (id)deviceTokenForTokenURI:(id)i
{
  v3 = IDSCopyTokenAndIDForTokenWithID();

  return 0;
}

+ (id)handleForTokenURI:(id)i
{
  v3 = IDSCopyRawAddressForDestination();
  v4 = [objc_alloc(MEMORY[0x277D680C0]) initWithString:v3];

  return v4;
}

- (void)signPayload:(id)payload completion:(id)completion
{
  completionCopy = completion;
  payloadCopy = payload;
  service = [(SKAMessagingProvider *)self service];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__SKAMessagingProvider_signPayload_completion___block_invoke;
  v10[3] = &unk_27843E1F8;
  v11 = completionCopy;
  v9 = completionCopy;
  [service signData:payloadCopy withAlgorithm:2 completion:v10];
}

void __47__SKAMessagingProvider_signPayload_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v6 = [SKAError errorWithCode:405 underlyingError:a3];
    (*(v3 + 16))(v3, v6, 0);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0, a2);
  }
}

- (void)verifySignedPayload:(id)payload matchesPayload:(id)matchesPayload fromTokenURI:(id)i completion:(id)completion
{
  completionCopy = completion;
  v11 = MEMORY[0x277D18A48];
  iCopy = i;
  matchesPayloadCopy = matchesPayload;
  payloadCopy = payload;
  v15 = [[v11 alloc] initWithPrefixedURI:iCopy];

  service = [(SKAMessagingProvider *)self service];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__SKAMessagingProvider_verifySignedPayload_matchesPayload_fromTokenURI_completion___block_invoke;
  v18[3] = &unk_27843E8E8;
  v19 = completionCopy;
  v17 = completionCopy;
  [service verifySignedData:payloadCopy matchesExpectedData:matchesPayloadCopy withTokenURI:v15 forAlgorithm:2 completion:v18];
}

void __83__SKAMessagingProvider_verifySignedPayload_matchesPayload_fromTokenURI_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKAMessagingProvider logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a2;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Signature verification returned with result: %d", v9, 8u);
  }

  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = [SKAError errorWithCode:406 underlyingError:v5];
    (*(v7 + 16))(v7, v8, a2);
  }

  else
  {
    (*(v7 + 16))(v7, 0, a2);
  }
}

- (void)verifySignedPayloads:(id)payloads completion:(id)completion
{
  completionCopy = completion;
  payloadsCopy = payloads;
  service = [(SKAMessagingProvider *)self service];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SKAMessagingProvider_verifySignedPayloads_completion___block_invoke;
  v10[3] = &unk_27843E910;
  v11 = completionCopy;
  v9 = completionCopy;
  [service verifySignedPayloads:payloadsCopy forAlgorithm:2 options:0 completion:v10];
}

void __56__SKAMessagingProvider_verifySignedPayloads_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKAMessagingProvider logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Signature verification returned with result: %@", &v10, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v6)
  {
    v9 = [SKAError errorWithCode:406 underlyingError:v6];
    (*(v8 + 16))(v8, v9, 0);
  }

  else
  {
    (*(v8 + 16))(v8, 0, v5);
  }
}

- (void)isHandle:(id)handle inFirewallForService:(id)service completion:(id)completion
{
  handleCopy = handle;
  serviceCopy = service;
  completionCopy = completion;
  v11 = [objc_alloc(MEMORY[0x277D18710]) initWithService:serviceCopy queue:self->_queue];
  if (v11)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__SKAMessagingProvider_isHandle_inFirewallForService_completion___block_invoke;
    v13[3] = &unk_27843E938;
    v14 = serviceCopy;
    v16 = completionCopy;
    v15 = handleCopy;
    [v11 currentEntries:v13];
  }

  else
  {
    v12 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider isHandle:inFirewallForService:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __65__SKAMessagingProvider_isHandle_inFirewallForService_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKAMessagingProvider logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__SKAMessagingProvider_isHandle_inFirewallForService_completion___block_invoke_cold_1(a1, v6, v8);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 count];
      v10 = *(a1 + 32);
      *buf = 134218498;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Retrieved %lu IDS firewall entries for %@: %@", buf, 0x20u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = v5;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v21 + 1) + 8 * v15) uri];
          v17 = [v16 unprefixedURI];
          v18 = [*(a1 + 40) normalizedHandleString];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            (*(*(a1 + 48) + 16))();

            goto LABEL_17;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    (*(*(a1 + 48) + 16))();
LABEL_17:
    v5 = v20;
  }
}

- (void)listOfValidSenderHandles:(id)handles containsSenderMergeID:(id)d completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  dCopy = d;
  completionCopy = completion;
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = handlesCopy;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        idsURI = [*(*(&v30 + 1) + 8 * v15) idsURI];
        destinationURIs = [idsURI destinationURIs];
        allObjects = [destinationURIs allObjects];
        [v10 addObjectsFromArray:allObjects];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v13);
  }

  v19 = [v10 count];
  v20 = +[SKAMessagingProvider logger];
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = v10;
      v36 = 2112;
      v37 = dCopy;
      _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Querying IDS for URI destinations: %@ looking for sender merge ID: %@", buf, 0x16u);
    }

    mEMORY[0x277D18728] = [MEMORY[0x277D18728] sharedInstance];
    allObjects2 = [v10 allObjects];
    queue = self->_queue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __82__SKAMessagingProvider_listOfValidSenderHandles_containsSenderMergeID_completion___block_invoke;
    v26[3] = &unk_27843E960;
    v29 = completionCopy;
    v27 = v10;
    v28 = dCopy;
    [mEMORY[0x277D18728] idInfoForDestinations:allObjects2 service:@"com.apple.private.alloy.status.keysharing" infoTypes:1 options:0 listenerID:@"com.apple.StatusKit" queue:queue completionBlock:v26];
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider listOfValidSenderHandles:containsSenderMergeID:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __82__SKAMessagingProvider_listOfValidSenderHandles_containsSenderMergeID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__SKAMessagingProvider_listOfValidSenderHandles_containsSenderMergeID_completion___block_invoke_cold_1();
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v23 = a1;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v5;
    v9 = [v5 objectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v15 = [v14 endpoints];
          v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v26;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v26 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [*(*(&v25 + 1) + 8 * j) senderCorrelationIdentifier];
                [v8 addObject:v20];
              }

              v17 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
            }

            while (v17);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v11);
    }

    v21 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v23[4];
      *buf = 138412546;
      v34 = v22;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "URI destinations: %@ map to valid merge IDs: %@", buf, 0x16u);
    }

    (*(v23[6] + 16))(v23[6], [v8 containsObject:v23[5]]);
    v6 = 0;
    v5 = v24;
  }
}

+ (BOOL)isRegisteredWithIDS
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D186C8]) initWithService:@"com.apple.private.alloy.status.keysharing"];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  accounts = [v2 accounts];
  v4 = [accounts countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(accounts);
        }

        if ([*(*(&v8 + 1) + 8 * i) isActive])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [accounts countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(SKAMessagingProvider *)self registeredIDSDeviceChangedObservers:service];
  allValues = [v4 allValues];

  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        (*(*(*(&v10 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)_keysharingIsDisabledByServer
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"status-kit-keysharing-disabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 BOOLValue])
  {
    v4 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider _keysharingIsDisabledByServer];
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_selfSharingIsDisabledByServer
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"status-kit-selfsharing-disabled"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 BOOLValue])
  {
    v4 = +[SKAMessagingProvider logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SKAMessagingProvider _selfSharingIsDisabledByServer];
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)registerIDSDeviceChangedObserver:(id)observer
{
  v4 = MEMORY[0x277CCAD78];
  observerCopy = observer;
  v6 = objc_alloc_init(v4);
  v7 = _Block_copy(observerCopy);

  [(NSMutableDictionary *)self->_registeredIDSDeviceChangedObservers setObject:v7 forKeyedSubscript:v6];

  return v6;
}

+ (id)logger
{
  if (logger_onceToken_15 != -1)
  {
    +[SKAMessagingProvider logger];
  }

  v3 = logger__logger_15;

  return v3;
}

uint64_t __30__SKAMessagingProvider_logger__block_invoke()
{
  logger__logger_15 = os_log_create("com.apple.StatusKit", "SKAMessagingProvider");

  return MEMORY[0x2821F96F8]();
}

- (SKAMessagingProvidingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:serviceIdentifier:pushManager:queue:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendMessage:toHandles:fromHandle:limitToPresenceCapable:identifier:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageToSelfDevices:limitToPresenceCapable:identifier:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageToSelfDevices:limitToPresenceCapable:identifier:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)service:account:incomingMessage:fromID:context:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resolveSenderHandleWithPreferredSenderHandle:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)resolveSenderHandleWithPreferredSenderHandle:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)isValidURI:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)selfAddressedURIForURI:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)isHandle:inFirewallForService:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__SKAMessagingProvider_isHandle_inFirewallForService_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_220099000, log, OS_LOG_TYPE_ERROR, "Retrieving IDS firewall for %@ returned error: %@", &v4, 0x16u);
}

- (void)listOfValidSenderHandles:containsSenderMergeID:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __82__SKAMessagingProvider_listOfValidSenderHandles_containsSenderMergeID_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_keysharingIsDisabledByServer
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_selfSharingIsDisabledByServer
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end