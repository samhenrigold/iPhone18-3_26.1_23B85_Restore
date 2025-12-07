@interface AAMessagingService
+ (id)sharedService;
- (AAMessagingService)initWithServiceName:(id)name;
- (AAMessagingServiceDelegate)custodianDelegate;
- (AAMessagingServiceDelegate)inheritanceDelegate;
- (id)_optionsDictionaryWithResponseIdentifier:(id)identifier fireAndForget:(BOOL)forget requiredCapabilities:(id)capabilities lackingCapabilities:(id)lackingCapabilities sendFromHandleUri:(id)uri;
- (id)sendMessage:(id)message destinations:(id)destinations sendFromHandleUri:(id)uri responseIdentifier:(id)identifier fireAndForget:(BOOL)forget requiredCapabilities:(id)capabilities lackingCapabilities:(id)lackingCapabilities error:(id *)self0;
- (void)_addMessageToPendingCustodianMessages:(id)messages;
- (void)_addMessageToPendingInheritanceMessages:(id)messages;
- (void)_getCurrentRemoteDevices:(id)devices completion:(id)completion;
- (void)_processMessage:(id)message;
- (void)_processPendingIDSMessagesOfType:(int64_t)type;
- (void)doDestinations:(id)destinations haveIneligibleDeviceForCapability:(id)capability completion:(id)completion;
- (void)fetchCapability:(id)capability destinations:(id)destinations completion:(id)completion;
- (void)partitionByCapability:(id)capability completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)setCustodianDelegate:(id)delegate;
- (void)setInheritanceDelegate:(id)delegate;
@end

@implementation AAMessagingService

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    +[AAMessagingService sharedService];
  }

  v3 = sharedService_sharedService;

  return v3;
}

uint64_t __35__AAMessagingService_sharedService__block_invoke()
{
  sharedService_sharedService = [[AAMessagingService alloc] initWithServiceName:@"com.apple.private.alloy.accounts.representative"];

  return MEMORY[0x1EEE66BB8]();
}

- (AAMessagingService)initWithServiceName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = AAMessagingService;
  v5 = [(AAMessagingService *)&v20 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v8 = [objc_alloc(getIDSServiceClass()) initWithService:v5->_serviceName];
    service = v5->_service;
    v5->_service = v8;

    v10 = dispatch_queue_create("com.apple.AAMessaging", 0);
    queue = v5->_queue;
    v5->_queue = v10;

    v12 = objc_alloc_init(getIDSServiceDelegatePropertiesClass());
    [v12 setWantsCrossAccountMessaging:1];
    [(IDSService *)v5->_service addDelegate:v5 withDelegateProperties:v12 queue:v5->_queue];
    sharedInstance = [getIDSIDQueryControllerClass() sharedInstance];
    queryController = v5->_queryController;
    v5->_queryController = sharedInstance;

    v15 = dispatch_queue_create("com.apple.appleaccount.incomingMessageProcessing", 0);
    incomingMessageQueue = v5->_incomingMessageQueue;
    v5->_incomingMessageQueue = v15;

    v5->_lock._os_unfair_lock_opaque = 0;
    v18 = _AALogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = nameCopy;
      _os_log_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEFAULT, "Created AAMessagingService: %@", buf, 0xCu);
    }
  }

  return v5;
}

- (void)partitionByCapability:(id)capability completion:(id)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = MEMORY[0x1E695DF90];
  capabilityCopy = capability;
  v9 = objc_alloc_init(v7);
  v16[0] = capabilityCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__AAMessagingService_partitionByCapability_completion___block_invoke;
  v13[3] = &unk_1E7C9D9A0;
  v14 = v9;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = v9;
  [(AAMessagingService *)self _getCurrentRemoteDevices:v10 completion:v13];
}

void __55__AAMessagingService_partitionByCapability_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = _AALogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __55__AAMessagingService_partitionByCapability_completion___block_invoke_cold_1(v7, v8, v9);
  }

  if (a2)
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __55__AAMessagingService_partitionByCapability_completion___block_invoke_40;
    v18 = &unk_1E7C9D978;
    v19 = v10;
    v20 = *(a1 + 32);
    v11 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:&v15];
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) copy];
    (*(v12 + 16))(v12, 1, v13, 0);
  }

  else
  {
    v14 = *(a1 + 40);
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AAMessagingErrorDomain" code:3 userInfo:0];
    (*(v14 + 16))(v14, 0, 0, v11);
  }
}

void __55__AAMessagingService_partitionByCapability_completion___block_invoke_40(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AAMessagingService_partitionByCapability_completion___block_invoke_2;
  v5[3] = &unk_1E7C9D950;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [a3 enumerateObjectsUsingBlock:v5];
}

void __55__AAMessagingService_partitionByCapability_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 capabilities];
  v4 = [v3 valueForCapability:@"IDSRegistrationPropertySupportsCustodian"] == 1;

  v5 = [[AAMessagingCapability alloc] initWithCapabilityType:v4];
  [*(a1 + 32) addObject:v5];

  v6 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 32)];
    v11 = [v7 numberWithInteger:{objc_msgSend(v8, "integerValue") + 1}];

    [*(a1 + 40) setObject:v11 forKeyedSubscript:*(a1 + 32)];
  }

  else
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);

    [v9 setObject:&unk_1F2F24BE0 forKeyedSubscript:v10];
  }
}

- (void)fetchCapability:(id)capability destinations:(id)destinations completion:(id)completion
{
  capabilityCopy = capability;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__AAMessagingService_fetchCapability_destinations_completion___block_invoke;
  v12[3] = &unk_1E7C9D9A0;
  v13 = capabilityCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = capabilityCopy;
  [(AAMessagingService *)self _getCurrentRemoteDevices:destinations completion:v12];
}

void __62__AAMessagingService_fetchCapability_destinations_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  if (a2)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __62__AAMessagingService_fetchCapability_destinations_completion___block_invoke_2;
    v15 = &unk_1E7C9D978;
    v16 = *(a1 + 32);
    v7 = v6;
    v17 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:&v12];
    v8 = *(a1 + 40);
    v9 = [v7 copy];
    (*(v8 + 16))(v8, 1, v9, 0);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AAMessagingErrorDomain" code:3 userInfo:0];
    (*(v10 + 16))(v10, 0, 0, v11);
  }
}

void __62__AAMessagingService_fetchCapability_destinations_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __62__AAMessagingService_fetchCapability_destinations_completion___block_invoke_3;
  v11 = &unk_1E7C9D9C8;
  v12 = *(a1 + 32);
  v13 = &v14;
  [v6 enumerateObjectsUsingBlock:&v8];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{*(v15 + 24), v8, v9, v10, v11}];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];

  _Block_object_dispose(&v14, 8);
}

void __62__AAMessagingService_fetchCapability_destinations_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 capabilities];
  v7 = [*(a1 + 32) capabilityString];
  v8 = [v6 valueForCapability:v7];

  if (v8 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)doDestinations:(id)destinations haveIneligibleDeviceForCapability:(id)capability completion:(id)completion
{
  capabilityCopy = capability;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__AAMessagingService_doDestinations_haveIneligibleDeviceForCapability_completion___block_invoke;
  v12[3] = &unk_1E7C9D9A0;
  v13 = capabilityCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = capabilityCopy;
  [(AAMessagingService *)self _getCurrentRemoteDevices:destinations completion:v12];
}

void __82__AAMessagingService_doDestinations_haveIneligibleDeviceForCapability_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  if (a2)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __82__AAMessagingService_doDestinations_haveIneligibleDeviceForCapability_completion___block_invoke_2;
    v15 = &unk_1E7C9D978;
    v16 = *(a1 + 32);
    v7 = v6;
    v17 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:&v12];
    v8 = *(a1 + 40);
    v9 = [v7 copy];
    (*(v8 + 16))(v8, 1, v9, 0);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AAMessagingErrorDomain" code:3 userInfo:0];
    (*(v10 + 16))(v10, 0, 0, v11);
  }
}

void __82__AAMessagingService_doDestinations_haveIneligibleDeviceForCapability_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __82__AAMessagingService_doDestinations_haveIneligibleDeviceForCapability_completion___block_invoke_3;
  v11 = &unk_1E7C9D9C8;
  v12 = *(a1 + 32);
  v13 = &v14;
  [v6 enumerateObjectsUsingBlock:&v8];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{*(v15 + 24), v8, v9, v10, v11}];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];

  _Block_object_dispose(&v14, 8);
}

void __82__AAMessagingService_doDestinations_haveIneligibleDeviceForCapability_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 capabilities];
  v7 = [*(a1 + 32) capabilityString];
  v8 = [v6 valueForCapability:v7];

  if (v8 != 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)_getCurrentRemoteDevices:(id)devices completion:(id)completion
{
  completionCopy = completion;
  v7 = [devices aaf_map:&__block_literal_global_50];
  queryController = self->_queryController;
  serviceName = self->_serviceName;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__AAMessagingService__getCurrentRemoteDevices_completion___block_invoke_2;
  v12[3] = &unk_1E7C9DA38;
  v13 = completionCopy;
  v11 = completionCopy;
  [(IDSIDQueryController *)queryController currentRemoteDevicesForDestinations:v7 service:serviceName listenerID:serviceName queue:queue completionBlock:v12];
}

void __58__AAMessagingService__getCurrentRemoteDevices_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__AAMessagingService__getCurrentRemoteDevices_completion___block_invoke_3;
    v9[3] = &unk_1E7C9DA10;
    v10 = v4;
    v5 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v9];
    v6 = *(a1 + 32);
    v7 = [v5 copy];
    (*(v6 + 16))(v6, 1, v7, 0);
  }

  else
  {
    v8 = *(a1 + 32);
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AAMessagingErrorDomain" code:3 userInfo:0];
    (*(v8 + 16))(v8, 0, 0, v5);
  }
}

void __58__AAMessagingService__getCurrentRemoteDevices_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[AAMessagingDestination alloc] initWithHandle:v6];

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
}

- (id)_optionsDictionaryWithResponseIdentifier:(id)identifier fireAndForget:(BOOL)forget requiredCapabilities:(id)capabilities lackingCapabilities:(id)lackingCapabilities sendFromHandleUri:(id)uri
{
  forgetCopy = forget;
  capabilitiesCopy = capabilities;
  lackingCapabilitiesCopy = lackingCapabilities;
  uriCopy = uri;
  v15 = MEMORY[0x1E695DF90];
  identifierCopy = identifier;
  v17 = objc_alloc_init(v15);
  if (!identifierCopy)
  {
    v18 = getIDSSendMessageOptionExpectsPeerResponseKey();
    [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v18];
  }

  v19 = getIDSSendMessageOptionPeerResponseIdentifierKey();
  [v17 setObject:identifierCopy forKeyedSubscript:v19];

  if (uriCopy)
  {
    v20 = getIDSSendMessageOptionFromIDKey();
    [v17 setObject:uriCopy forKeyedSubscript:v20];
  }

  if (forgetCopy)
  {
    v21 = getIDSSendMessageOptionFireAndForgetKey();
    [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v21];
  }

  if ([capabilitiesCopy count])
  {
    v22 = [(AAMessagingService *)self _createNewCapabilitySetFrom:capabilitiesCopy];
    v23 = getIDSSendMessageOptionRequireAllRegistrationPropertiesKey();
    [v17 setObject:v22 forKeyedSubscript:v23];
  }

  if ([lackingCapabilitiesCopy count])
  {
    v24 = [(AAMessagingService *)self _createNewCapabilitySetFrom:lackingCapabilitiesCopy];
    v25 = getIDSSendMessageOptionRequireLackOfRegistrationPropertiesKey();
    [v17 setObject:v24 forKeyedSubscript:v25];
  }

  v26 = [v17 copy];

  return v26;
}

- (id)sendMessage:(id)message destinations:(id)destinations sendFromHandleUri:(id)uri responseIdentifier:(id)identifier fireAndForget:(BOOL)forget requiredCapabilities:(id)capabilities lackingCapabilities:(id)lackingCapabilities error:(id *)self0
{
  forgetCopy = forget;
  v51 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identifierCopy = identifier;
  v18 = MEMORY[0x1E695DFA8];
  lackingCapabilitiesCopy = lackingCapabilities;
  capabilitiesCopy = capabilities;
  uriCopy = uri;
  destinationsCopy = destinations;
  v23 = objc_alloc_init(v18);
  v24 = [(AAMessagingService *)self _optionsDictionaryWithResponseIdentifier:identifierCopy fireAndForget:forgetCopy requiredCapabilities:capabilitiesCopy lackingCapabilities:lackingCapabilitiesCopy sendFromHandleUri:uriCopy];

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __145__AAMessagingService_sendMessage_destinations_sendFromHandleUri_responseIdentifier_fireAndForget_requiredCapabilities_lackingCapabilities_error___block_invoke;
  v41[3] = &unk_1E7C9DA60;
  v25 = v23;
  v42 = v25;
  [destinationsCopy enumerateObjectsUsingBlock:v41];

  v26 = @"message";
  if (forgetCopy)
  {
    v26 = @"fire-and-forget message";
  }

  v27 = v26;
  v28 = _AALogSystem(v27);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (identifierCopy)
  {
    if (!v29)
    {
      goto LABEL_9;
    }

    *buf = 138413058;
    v44 = v27;
    v45 = 2112;
    v46 = messageCopy;
    v47 = 2112;
    v48 = v25;
    v49 = 2112;
    v50 = identifierCopy;
    v30 = "Sending %@: %@ to %@ in response to %@";
    v31 = v28;
    v32 = 42;
  }

  else
  {
    if (!v29)
    {
      goto LABEL_9;
    }

    *buf = 138412802;
    v44 = v27;
    v45 = 2112;
    v46 = messageCopy;
    v47 = 2112;
    v48 = v25;
    v30 = "Sending %@: %@ to %@";
    v31 = v28;
    v32 = 32;
  }

  _os_log_impl(&dword_1B6F6A000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
LABEL_9:

  service = self->_service;
  v40 = 0;
  v34 = [(IDSService *)service sendData:messageCopy toDestinations:v25 priority:300 options:v24 identifier:&v40 error:error];
  v35 = v40;
  v36 = _AALogSystem(v35);
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG);
  if (v34)
  {
    if (v37)
    {
      [AAMessagingService sendMessage:destinations:sendFromHandleUri:responseIdentifier:fireAndForget:requiredCapabilities:lackingCapabilities:error:];
    }
  }

  else if (v37)
  {
    [AAMessagingService sendMessage:destinations:sendFromHandleUri:responseIdentifier:fireAndForget:requiredCapabilities:lackingCapabilities:error:];
  }

  [MEMORY[0x1E696AFB0] UUID];
  v38 = [objc_claimAutoreleasedReturnValue() initWithUUIDString:v35];

  return v38;
}

void __145__AAMessagingService_sendMessage_destinations_sendFromHandleUri_responseIdentifier_fireAndForget_requiredCapabilities_lackingCapabilities_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 destinationURI];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 destinationURI];
    [v4 addObject:v5];
  }
}

- (void)setCustodianDelegate:(id)delegate
{
  v14 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_custodianDelegate);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AAMessagingService.m" lineNumber:247 description:@"Custodian delegate already set!"];
  }

  v9 = _AALogSystem(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = delegateCopy;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Setting custodian delegate %@", &v12, 0xCu);
  }

  if (delegateCopy)
  {
    objc_storeWeak(&self->_custodianDelegate, delegateCopy);
    [(AAMessagingService *)self _processPendingIDSMessagesOfType:0];
  }

  else
  {
    v11 = _AALogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AAMessagingService setCustodianDelegate:];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setInheritanceDelegate:(id)delegate
{
  v14 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_inheritanceDelegate);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AAMessagingService.m" lineNumber:263 description:@"Inheritance delegate already set!"];
  }

  v9 = _AALogSystem(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = delegateCopy;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Setting inheritance delegate %@", &v12, 0xCu);
  }

  if (delegateCopy)
  {
    objc_storeWeak(&self->_inheritanceDelegate, delegateCopy);
    [(AAMessagingService *)self _processPendingIDSMessagesOfType:1];
  }

  else
  {
    v11 = _AALogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AAMessagingService setInheritanceDelegate:];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addMessageToPendingInheritanceMessages:(id)messages
{
  pendingInheritanceMessages = self->_pendingInheritanceMessages;
  if (pendingInheritanceMessages)
  {
    messagesCopy = messages;
    v5 = pendingInheritanceMessages;
  }

  else
  {
    v7 = MEMORY[0x1E695DF70];
    messagesCopy2 = messages;
    v9 = objc_alloc_init(v7);
    v10 = self->_pendingInheritanceMessages;
    self->_pendingInheritanceMessages = v9;

    v5 = self->_pendingInheritanceMessages;
    messagesCopy = messagesCopy2;
  }

  [(NSMutableArray *)v5 addObject:messagesCopy];
}

- (void)_addMessageToPendingCustodianMessages:(id)messages
{
  pendingCustodianMessages = self->_pendingCustodianMessages;
  if (pendingCustodianMessages)
  {
    messagesCopy = messages;
    v5 = pendingCustodianMessages;
  }

  else
  {
    v7 = MEMORY[0x1E695DF70];
    messagesCopy2 = messages;
    v9 = objc_alloc_init(v7);
    v10 = self->_pendingCustodianMessages;
    self->_pendingCustodianMessages = v9;

    v5 = self->_pendingCustodianMessages;
    messagesCopy = messagesCopy2;
  }

  [(NSMutableArray *)v5 addObject:messagesCopy];
}

- (void)_processPendingIDSMessagesOfType:(int64_t)type
{
  v32 = *MEMORY[0x1E69E9840];
  if (type == 1)
  {
    v5 = 80;
  }

  else
  {
    v5 = 72;
  }

  v6 = *(&self->super.isa + v5);
  v7 = [*(&self->super.isa + v5) copy];
  v8 = [v7 count];
  v9 = _AALogSystem(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 134217984;
      typeCopy2 = type;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Processing pending messages of type %ld", buf, 0xCu);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(AAMessagingService *)self _processMessage:*(*(&v24 + 1) + 8 * i)];
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v13);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v11;
    v16 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v9);
          }

          [v6 removeObject:{*(*(&v20 + 1) + 8 * j), v20}];
        }

        v17 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }
  }

  else if (v10)
  {
    *buf = 134217984;
    typeCopy2 = type;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "No messages of type %ld for the delegate to process.", buf, 0xCu);
  }
}

- (void)_processMessage:(id)message
{
  messageCopy = message;
  objc_initWeak(&location, self);
  incomingMessageQueue = self->_incomingMessageQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AAMessagingService__processMessage___block_invoke;
  block[3] = &unk_1E7C9DA88;
  objc_copyWeak(&v9, &location);
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(incomingMessageQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __38__AAMessagingService__processMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([*(a1 + 32) type])
    {
      v3 = WeakRetained + 7;
    }

    else
    {
      v3 = WeakRetained + 8;
    }

    v5 = objc_loadWeakRetained(v3);
    v6 = [*(a1 + 32) data];
    v7 = [*(a1 + 32) senderHandle];
    v8 = [*(a1 + 32) sentToHandleUri];
    [v5 messageService:WeakRetained didReceiveMessage:v6 fromID:v7 sentToHandleUri:v8];
  }

  else
  {
    v4 = _AALogSystem(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__AAMessagingService__processMessage___block_invoke_cold_1();
    }
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v38 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  v13 = [AAMessagingDestination alloc];
  toID = [contextCopy toID];
  v15 = [(AAMessagingDestination *)v13 initWithHandle:toID];
  destinationURI = [(AAMessagingDestination *)v15 destinationURI];

  v18 = _AALogSystem(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    fromID = [contextCopy fromID];
    v30 = 138413058;
    v31 = dataCopy;
    v32 = 2112;
    v33 = dCopy;
    v34 = 2112;
    v35 = destinationURI;
    v36 = 2112;
    v37 = fromID;
    _os_log_debug_impl(&dword_1B6F6A000, v18, OS_LOG_TYPE_DEBUG, "🎒AAMessagingService: received data %@ from %@, sentToHandleUri: %@ and context %@. Calling delegates", &v30, 0x2Au);
  }

  v19 = [[AAPendingIDSMessage alloc] initInheritanceMessageFrom:dCopy data:dataCopy sentToHandleUri:destinationURI];
  v20 = [[AAPendingIDSMessage alloc] initCustodianMessageFrom:dCopy data:dataCopy sentToHandleUri:destinationURI];
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_inheritanceDelegate);

  v23 = _AALogSystem(v22);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
  if (WeakRetained)
  {
    if (v24)
    {
      [AAMessagingService service:account:incomingData:fromID:context:];
    }

    [(AAMessagingService *)self _processMessage:v19];
  }

  else
  {
    if (v24)
    {
      [AAMessagingService service:account:incomingData:fromID:context:];
    }

    [(AAMessagingService *)self _addMessageToPendingInheritanceMessages:v19];
  }

  v25 = objc_loadWeakRetained(&self->_custodianDelegate);

  v27 = _AALogSystem(v26);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
  if (v25)
  {
    if (v28)
    {
      [AAMessagingService service:account:incomingData:fromID:context:];
    }

    [(AAMessagingService *)self _processMessage:v20];
  }

  else
  {
    if (v28)
    {
      [AAMessagingService service:account:incomingData:fromID:context:];
    }

    [(AAMessagingService *)self _addMessageToPendingCustodianMessages:v20];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  v14 = _AALogSystem(contextCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:successCopy];
    v16 = 138413058;
    v17 = identifierCopy;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = errorCopy;
    v22 = 2112;
    v23 = contextCopy;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Did send message %@ success %@ error %@ context %@", &v16, 0x2Au);
  }
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v8 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = _AALogSystem(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changedCopy;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "activeAccountsChanged: %@", &v6, 0xCu);
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v8 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = _AALogSystem(changedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changedCopy;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "devicesChanged: %@", &v6, 0xCu);
  }
}

- (AAMessagingServiceDelegate)inheritanceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inheritanceDelegate);

  return WeakRetained;
}

- (AAMessagingServiceDelegate)custodianDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_custodianDelegate);

  return WeakRetained;
}

void __55__AAMessagingService_partitionByCapability_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, a2, a3, "Results of _getCurrentRemoteDevices: %@, error: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end