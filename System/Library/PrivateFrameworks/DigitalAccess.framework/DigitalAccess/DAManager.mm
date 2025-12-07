@interface DAManager
+ (BOOL)isCarKeySupportedForManufacturer:(id)manufacturer brand:(id)brand ppid:(id)ppid error:(id *)error;
+ (BOOL)isSharingEnabledForManufacturer:(id)manufacturer brand:(id)brand ppid:(id)ppid error:(id *)error;
+ (id)createAliroHomeKey:(id)key seid:(id)seid readerIdentifier:(id)identifier readerPublicKey:(id)publicKey homeUUID:(id)d outError:(id *)error;
+ (id)createAliroHydraKey:(id)key seid:(id)seid serverParameters:(id)parameters outError:(id *)error;
+ (id)createHomeKey:(id)key seid:(id)seid readerIdentifier:(id)identifier readerPublicKey:(id)publicKey outError:(id *)error;
+ (id)createHydraKey:(id)key seid:(id)seid serverParameters:(id)parameters outError:(id *)error;
+ (id)sharedManager;
+ (void)handleSharingMessage:(id)message forInvitationIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler;
+ (void)listKeysWithSession:(id)session seid:(id)seid callback:(id)callback;
+ (void)rejectSharingInvitation:(id)invitation completionHandler:(id)handler;
- (DAManager)init;
- (id)createManagementSessionWithDelegate:(id)delegate;
- (id)createPairingSessionWithDelegate:(id)delegate;
- (id)createSharingSessionWithDelegate:(id)delegate;
- (id)releaseConnection;
- (void)cleanup;
- (void)establishXpcConnection;
- (void)handleSharingMessage:(void *)message forInvitationIdentifier:(void *)identifier fromMailboxIdentifier:;
- (void)invalidateSessions;
- (void)registerCrossPlatformTestMessageOverIDSHandler:(id)handler;
- (void)registerCrossPlatformTestMessageSendHandler:(id)handler;
- (void)registerFriendSideInvitationUnusableHandler:(id)handler;
- (void)registerFriendSidePasscodeRetryRequestTestHandler:(id)handler;
- (void)registerFriendSideSharingTestCompletion:(id)completion;
- (void)registerFriendSideSharingTestInvitationUUIDHandler:(id)handler;
- (void)registerOwnerSideInvitationRequestHandler:(id)handler;
- (void)registerOwnerSideSharingTestInvitations:(id)invitations callback:(id)callback;
- (void)registerSession:(id)session;
- (void)sendCrossPlatformTestData:(id)data toIdsIdentifier:(id)identifier;
- (void)setServiceName:(uint64_t)name;
- (void)unregisterSession:(id)session;
- (void)unregisterSharingTestHandlers;
@end

@implementation DAManager

+ (id)createHydraKey:(id)key seid:(id)seid serverParameters:(id)parameters outError:(id *)error
{
  v6 = SESEndPointCreateForHydraWithSession();
  if (v6)
  {
    v7 = [[DAKeyInformation alloc] initWithEndpoint:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (DAManager)init
{
  v7.receiver = self;
  v7.super_class = DAManager;
  v2 = [(DAManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeSessions = v2->_activeSessions;
    v2->_activeSessions = v3;

    serviceName = v2->_serviceName;
    v2->_serviceName = @"com.apple.seserviced.kmlXpcService";
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[DAManager sharedManager];
  }

  v3 = sharedManager__keyManager;

  return v3;
}

uint64_t __26__DAManager_sharedManager__block_invoke()
{
  sharedManager__keyManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isCarKeySupportedForManufacturer:(id)manufacturer brand:(id)brand ppid:(id)ppid error:(id *)error
{
  manufacturerCopy = manufacturer;
  brandCopy = brand;
  ppidCopy = ppid;
  v12 = ppidCopy;
  if (ppidCopy)
  {
    v13 = kmlUtilDataForHexString(ppidCopy);
  }

  else
  {
    v13 = 0;
  }

  v14 = SESEndPointIsCarKeySupported();
  v15 = 0;
  if (v12)
  {
  }

  if (error && v15)
  {
    v16 = sesErrorToKmlError(v15, 0xD6u);

    *error = kmlErrorToDAError(v16);
    v15 = v16;
  }

  bOOLValue = [v14 BOOLValue];

  return bOOLValue;
}

+ (BOOL)isSharingEnabledForManufacturer:(id)manufacturer brand:(id)brand ppid:(id)ppid error:(id *)error
{
  manufacturerCopy = manufacturer;
  brandCopy = brand;
  ppidCopy = ppid;
  v12 = ppidCopy;
  if (ppidCopy)
  {
    v13 = kmlUtilDataForHexString(ppidCopy);
  }

  else
  {
    v13 = 0;
  }

  v14 = SESEndPointIsSharingEnabled();
  v15 = 0;
  if (v12)
  {
  }

  if (error && v15)
  {
    v16 = sesErrorToKmlError(v15, 0xD6u);

    *error = kmlErrorToDAError(v16);
    v15 = v16;
  }

  if (v14)
  {
    bOOLValue = [v14 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (void)listKeysWithSession:(id)session seid:(id)seid callback:(id)callback
{
  v52 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  seidCopy = seid;
  callbackCopy = callback;
  v10 = KmlLogger(callbackCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v45 = "+[DAManager listKeysWithSession:seid:callback:]";
    v46 = 1024;
    v47 = 135;
    _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  if (sessionCopy && seidCopy)
  {
    v40 = 0;
    v12 = SESEndPointListWithSession();
    v13 = 0;
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
    if (v13)
    {
      v15 = MEMORY[0x277CCA9B8];
      userInfo = [v13 userInfo];
      v17 = [v15 errorWithDomain:@"DigitalAccessError" code:209 userInfo:userInfo];

      callbackCopy[2](callbackCopy, 0, v17);
    }

    else
    {
      v33 = callbackCopy;
      v34 = seidCopy;
      v35 = sessionCopy;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = v12;
      v22 = [v21 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v37;
        do
        {
          v25 = 0;
          do
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v36 + 1) + 8 * v25);
            v27 = KmlLogger(v22);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              publicKeyIdentifier = [v26 publicKeyIdentifier];
              *buf = 136315650;
              v45 = "+[DAManager listKeysWithSession:seid:callback:]";
              v46 = 1024;
              v47 = 148;
              v48 = 2112;
              v49 = publicKeyIdentifier;
              _os_log_impl(&dword_248BF3000, v27, OS_LOG_TYPE_INFO, "%s : %i : Key id = %@", buf, 0x1Cu);
            }

            v29 = [[DAKeyInformation alloc] initWithEndpoint:v26];
            [v14 addObject:v29];

            ++v25;
          }

          while (v23 != v25);
          v22 = [v21 countByEnumeratingWithState:&v36 objects:v41 count:16];
          v23 = v22;
        }

        while (v22);
      }

      v12 = v21;

      v31 = KmlLogger(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = [v14 count];
        *buf = 136315650;
        v45 = "+[DAManager listKeysWithSession:seid:callback:]";
        v46 = 1024;
        v47 = 152;
        v48 = 2048;
        v49 = v32;
        _os_log_impl(&dword_248BF3000, v31, OS_LOG_TYPE_INFO, "%s : %i : key count = %lu", buf, 0x1Cu);
      }

      callbackCopy = v33;
      (v33)[2](v33, v14, 0);
      seidCopy = v34;
      sessionCopy = v35;
    }
  }

  else
  {
    v18 = KmlLogger(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v45 = "+[DAManager listKeysWithSession:seid:callback:]";
      v46 = 1024;
      v47 = 137;
      v48 = 2112;
      v49 = sessionCopy;
      v50 = 2112;
      v51 = seidCopy;
      _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_ERROR, "%s : %i : Null arguments provided. Session : %@, seid : %@", buf, 0x26u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DAErrorString(217)];
    v43 = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v20 = [v19 errorWithDomain:@"DigitalAccessError" code:217 userInfo:v14];
    callbackCopy[2](callbackCopy, 0, v20);
  }
}

+ (void)handleSharingMessage:(id)message forInvitationIdentifier:(id)identifier fromMailboxIdentifier:(id)mailboxIdentifier completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  mailboxIdentifierCopy = mailboxIdentifier;
  identifierCopy = identifier;
  messageCopy = message;
  v13 = KmlLogger(messageCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "+[DAManager handleSharingMessage:forInvitationIdentifier:fromMailboxIdentifier:completionHandler:]";
    v18 = 1024;
    v19 = 165;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : This function is deprecated, please use either [DAKeySharingSession handleRecipientMessage] or [DAKeySharingSession handleInititiatorMessage] instead", &v16, 0x12u);
  }

  v14 = +[DAManager sharedManager];
  v15 = [(DAManager *)v14 handleSharingMessage:messageCopy forInvitationIdentifier:identifierCopy fromMailboxIdentifier:mailboxIdentifierCopy];

  handlerCopy[2](handlerCopy, v15);
}

- (void)handleSharingMessage:(void *)message forInvitationIdentifier:(void *)identifier fromMailboxIdentifier:
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  messageCopy = message;
  identifierCopy = identifier;
  v10 = identifierCopy;
  if (self)
  {
    v11 = KmlLogger(identifierCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[DAManager handleSharingMessage:forInvitationIdentifier:fromMailboxIdentifier:]";
      *&buf[12] = 1024;
      *&buf[14] = 416;
      _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
    }

    [(DAManager *)self establishXpcConnection];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v18 = __Block_byref_object_copy__3;
    v19 = __Block_byref_object_dispose__3;
    v20 = 0;
    v12 = self[2];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__DAManager_handleSharingMessage_forInvitationIdentifier_fromMailboxIdentifier___block_invoke;
    v16[3] = &unk_278F6FB00;
    v16[4] = buf;
    v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__DAManager_handleSharingMessage_forInvitationIdentifier_fromMailboxIdentifier___block_invoke_84;
    v15[3] = &unk_278F6FB00;
    v15[4] = buf;
    [v13 queueCrossPlatformSharingMessage:v7 forInvitationIdentifier:messageCopy fromMailboxIdentifier:v10 callback:v15];

    self = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  return self;
}

+ (void)rejectSharingInvitation:(id)invitation completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  handlerCopy = handler;
  v7 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v30 = "+[DAManager rejectSharingInvitation:completionHandler:]";
    v31 = 1024;
    v32 = 174;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_DEBUG, "%s : %i : ", buf, 0x12u);
  }

  genericData = [invitationCopy genericData];
  if (genericData && (v9 = genericData, [invitationCopy genericData], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "sharingIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v11))
  {
    v12 = KmlLogger(genericData);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      genericData2 = [invitationCopy genericData];
      sharingIdentifier = [genericData2 sharingIdentifier];
      *buf = 136315650;
      v30 = "+[DAManager rejectSharingInvitation:completionHandler:]";
      v31 = 1024;
      v32 = 179;
      v33 = 2112;
      v34 = sharingIdentifier;
      _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_INFO, "%s : %i : Cancel invite with id : %@", buf, 0x1Cu);
    }

    v15 = [[KmlCancelMessage alloc] initWithCCCErrorCode:34];
    asData = [(KmlCancelMessage *)v15 asData];

    v17 = [DACarKeyGenericCrossPlatformSharingData alloc];
    genericData3 = [invitationCopy genericData];
    sharingIdentifier2 = [genericData3 sharingIdentifier];
    v20 = [(DACarKeyGenericCrossPlatformSharingData *)v17 initWithSharingIdentifier:sharingIdentifier2 friendKeyIdentifier:0 sharingMessageType:5 message:asData];

    v21 = [DACarKeySharingMessage alloc];
    additionalData = [invitationCopy additionalData];
    v23 = [(DACarKeySharingMessage *)v21 initWithGenericCrossPlatformSharingData:v20 additionalData:additionalData privateData:0];

    v24 = 0;
  }

  else
  {
    v25 = KmlLogger(genericData);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v30 = "+[DAManager rejectSharingInvitation:completionHandler:]";
      v31 = 1024;
      v32 = 198;
      _os_log_impl(&dword_248BF3000, v25, OS_LOG_TYPE_INFO, "%s : %i : Can't cancel invite missing invitationIdentifier", buf, 0x12u);
    }

    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    asData = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(109), v27}];
    v28 = asData;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v24 = [v26 errorWithDomain:@"DigitalAccessError" code:109 userInfo:v20];
    v23 = 0;
  }

  handlerCopy[2](handlerCopy, v23, v24);
}

+ (id)createHomeKey:(id)key seid:(id)seid readerIdentifier:(id)identifier readerPublicKey:(id)publicKey outError:(id *)error
{
  v7 = MEMORY[0x24C1E74E0](key, seid, identifier, publicKey, error);
  if (v7)
  {
    v8 = [[DAKeyInformation alloc] initWithEndpoint:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)registerSession:(id)session
{
  v13 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = KmlLogger(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315650;
    v8 = "[DAManager registerSession:]";
    v9 = 1024;
    v10 = 217;
    v11 = 2112;
    v12 = sessionCopy;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", &v7, 0x1Cu);
  }

  v6 = self->_activeSessions;
  objc_sync_enter(v6);
  [(NSMutableSet *)self->_activeSessions addObject:sessionCopy];
  objc_sync_exit(v6);
}

- (void)unregisterSession:(id)session
{
  v13 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = KmlLogger(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315650;
    v8 = "[DAManager unregisterSession:]";
    v9 = 1024;
    v10 = 225;
    v11 = 2112;
    v12 = sessionCopy;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : %@", &v7, 0x1Cu);
  }

  v6 = self->_activeSessions;
  objc_sync_enter(v6);
  [(NSMutableSet *)self->_activeSessions removeObject:sessionCopy];
  objc_sync_exit(v6);
}

- (void)invalidateSessions
{
  objc_sync_exit(self);

  [a2 enumerateObjectsUsingBlock:&__block_literal_global_28];
}

void __31__DAManager_invalidateSessions__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v11 = "[DAManager invalidateSessions]_block_invoke";
    v12 = 1024;
    v13 = 242;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_DEBUG, "%s : %i : %@", buf, 0x1Cu);
  }

  v4 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DAErrorString(216), v8}];
  v9 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = [v4 errorWithDomain:@"DigitalAccessError" code:216 userInfo:v6];

  [v2 didEnd:v7];
}

- (void)establishXpcConnection
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(self, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    v3 = 285;
    _os_log_impl(&dword_248BF3000, self, OS_LOG_TYPE_INFO, "%s : %i : DAKeyManager: XPC connection already established", v2, 0x12u);
  }
}

void __35__DAManager_establishXpcConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    __35__DAManager_establishXpcConnection__block_invoke_cold_1(WeakRetained);
  }
}

void __35__DAManager_establishXpcConnection__block_invoke_73(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    __35__DAManager_establishXpcConnection__block_invoke_73_cold_1(WeakRetained);
  }
}

- (id)createPairingSessionWithDelegate:(id)delegate
{
  v17 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = KmlLogger(delegateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAManager createPairingSessionWithDelegate:]";
    *&buf[12] = 1024;
    *&buf[14] = 324;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = [[DAKeyPairingSession alloc] initWithDelegate:delegateCopy];
  [(DAManager *)self establishXpcConnection];
  [(DAManager *)self registerSession:*(*&buf[8] + 40)];
  clientConnection = self->_clientConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__DAManager_createPairingSessionWithDelegate___block_invoke;
  v12[3] = &unk_278F70900;
  v12[4] = self;
  v12[5] = buf;
  v7 = [(NSXPCConnection *)clientConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v8 = *(*&buf[8] + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__DAManager_createPairingSessionWithDelegate___block_invoke_76;
  v11[3] = &unk_278F70928;
  v11[4] = self;
  v11[5] = buf;
  [v7 queueOwnerPairingSession:v8 callback:v11];

  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v9;
}

void __46__DAManager_createPairingSessionWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = KmlLogger(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[DAManager createPairingSessionWithDelegate:]_block_invoke";
      v10 = 1024;
      v11 = 333;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v8, 0x1Cu);
    }

    [*(a1 + 32) unregisterSession:*(*(*(a1 + 40) + 8) + 40)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

void __46__DAManager_createPairingSessionWithDelegate___block_invoke_76(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = KmlLogger(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[DAManager createPairingSessionWithDelegate:]_block_invoke";
      v13 = 1024;
      v14 = 341;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v11, 0x1Cu);
    }

    [*(a1 + 32) unregisterSession:*(*(*(a1 + 40) + 8) + 40)];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  else
  {
    [*(*(*(a1 + 40) + 8) + 40) setProxy:a2];
  }
}

- (id)createSharingSessionWithDelegate:(id)delegate
{
  v17 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = KmlLogger(delegateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAManager createSharingSessionWithDelegate:]";
    *&buf[12] = 1024;
    *&buf[14] = 354;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = [[DAKeySharingSession alloc] initWithDelegate:delegateCopy];
  [(DAManager *)self establishXpcConnection];
  [(DAManager *)self registerSession:*(*&buf[8] + 40)];
  clientConnection = self->_clientConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__DAManager_createSharingSessionWithDelegate___block_invoke;
  v12[3] = &unk_278F70900;
  v12[4] = self;
  v12[5] = buf;
  v7 = [(NSXPCConnection *)clientConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v8 = *(*&buf[8] + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__DAManager_createSharingSessionWithDelegate___block_invoke_79;
  v11[3] = &unk_278F70950;
  v11[4] = self;
  v11[5] = buf;
  [v7 queueSharingSession:v8 callback:v11];

  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v9;
}

void __46__DAManager_createSharingSessionWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = KmlLogger(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[DAManager createSharingSessionWithDelegate:]_block_invoke";
      v10 = 1024;
      v11 = 363;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v8, 0x1Cu);
    }

    [*(a1 + 32) unregisterSession:*(*(*(a1 + 40) + 8) + 40)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

void __46__DAManager_createSharingSessionWithDelegate___block_invoke_79(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = KmlLogger(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[DAManager createSharingSessionWithDelegate:]_block_invoke";
      v13 = 1024;
      v14 = 371;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v11, 0x1Cu);
    }

    [*(a1 + 32) unregisterSession:*(*(*(a1 + 40) + 8) + 40)];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  else
  {
    [*(*(*(a1 + 40) + 8) + 40) setProxy:a2];
  }
}

- (id)createManagementSessionWithDelegate:(id)delegate
{
  v17 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = KmlLogger(delegateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[DAManager createManagementSessionWithDelegate:]";
    *&buf[12] = 1024;
    *&buf[14] = 384;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = [[DAKeyManagementSession alloc] initWithDelegate:delegateCopy];
  [(DAManager *)self establishXpcConnection];
  [(DAManager *)self registerSession:*(*&buf[8] + 40)];
  clientConnection = self->_clientConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__DAManager_createManagementSessionWithDelegate___block_invoke;
  v12[3] = &unk_278F70900;
  v12[4] = self;
  v12[5] = buf;
  v7 = [(NSXPCConnection *)clientConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v8 = *(*&buf[8] + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__DAManager_createManagementSessionWithDelegate___block_invoke_82;
  v11[3] = &unk_278F70978;
  v11[4] = self;
  v11[5] = buf;
  [v7 queueManagementSession:v8 callback:v11];

  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v9;
}

void __49__DAManager_createManagementSessionWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = KmlLogger(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "[DAManager createManagementSessionWithDelegate:]_block_invoke";
      v10 = 1024;
      v11 = 393;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v8, 0x1Cu);
    }

    [*(a1 + 32) unregisterSession:*(*(*(a1 + 40) + 8) + 40)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

void __49__DAManager_createManagementSessionWithDelegate___block_invoke_82(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = KmlLogger(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "[DAManager createManagementSessionWithDelegate:]_block_invoke";
      v13 = 1024;
      v14 = 401;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v11, 0x1Cu);
    }

    [*(a1 + 32) unregisterSession:*(*(*(a1 + 40) + 8) + 40)];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  else
  {
    [*(*(*(a1 + 40) + 8) + 40) setProxy:a2];
  }
}

void __80__DAManager_handleSharingMessage_forInvitationIdentifier_fromMailboxIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = KmlLogger(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "[DAManager handleSharingMessage:forInvitationIdentifier:fromMailboxIdentifier:]_block_invoke";
      v9 = 1024;
      v10 = 422;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_ERROR, "%s : %i : proxyError: %@", &v7, 0x1Cu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (void)registerOwnerSideSharingTestInvitations:(id)invitations callback:(id)callback
{
  v16 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  invitationsCopy = invitations;
  v8 = KmlLogger(invitationsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[DAManager registerOwnerSideSharingTestInvitations:callback:]";
    v14 = 1024;
    v15 = 436;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : ", &v12, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v9 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_86];
  [v9 registerOwnerSideSharingTestInvitations:invitationsCopy callback:callbackCopy];

  v11 = KmlLogger(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[DAManager registerOwnerSideSharingTestInvitations:callback:]";
    v14 = 1024;
    v15 = 442;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : ", &v12, 0x12u);
  }
}

void __62__DAManager_registerOwnerSideSharingTestInvitations_callback___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "[DAManager registerOwnerSideSharingTestInvitations:callback:]_block_invoke";
    v6 = 1024;
    v7 = 440;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v4, 0x1Cu);
  }
}

- (void)registerOwnerSideInvitationRequestHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerOwnerSideInvitationRequestHandler:]";
    v11 = 1024;
    v12 = 447;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_88];
  [v6 registerOwnerSideInvitationRequestHandler:handlerCopy];

  v8 = KmlLogger(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerOwnerSideInvitationRequestHandler:]";
    v11 = 1024;
    v12 = 453;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }
}

void __55__DAManager_registerOwnerSideInvitationRequestHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "[DAManager registerOwnerSideInvitationRequestHandler:]_block_invoke";
    v6 = 1024;
    v7 = 451;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v4, 0x1Cu);
  }
}

- (void)registerFriendSideSharingTestCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = KmlLogger(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSideSharingTestCompletion:]";
    v11 = 1024;
    v12 = 458;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_90];
  [v6 registerFriendSideSharingTestCompletion:completionCopy];

  v8 = KmlLogger(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSideSharingTestCompletion:]";
    v11 = 1024;
    v12 = 464;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }
}

void __53__DAManager_registerFriendSideSharingTestCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "[DAManager registerFriendSideSharingTestCompletion:]_block_invoke";
    v6 = 1024;
    v7 = 462;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v4, 0x1Cu);
  }
}

- (void)registerFriendSideSharingTestInvitationUUIDHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSideSharingTestInvitationUUIDHandler:]";
    v11 = 1024;
    v12 = 469;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_92];
  [v6 registerFriendSideSharingTestInvitationUUIDHandler:handlerCopy];

  v8 = KmlLogger(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSideSharingTestInvitationUUIDHandler:]";
    v11 = 1024;
    v12 = 475;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }
}

void __64__DAManager_registerFriendSideSharingTestInvitationUUIDHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "[DAManager registerFriendSideSharingTestInvitationUUIDHandler:]_block_invoke";
    v6 = 1024;
    v7 = 473;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v4, 0x1Cu);
  }
}

- (void)registerFriendSideInvitationUnusableHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSideInvitationUnusableHandler:]";
    v11 = 1024;
    v12 = 480;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_94];
  [v6 registerFriendSideInvitationUnusableHandler:handlerCopy];

  v8 = KmlLogger(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSideInvitationUnusableHandler:]";
    v11 = 1024;
    v12 = 486;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }
}

void __57__DAManager_registerFriendSideInvitationUnusableHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "[DAManager registerFriendSideInvitationUnusableHandler:]_block_invoke";
    v6 = 1024;
    v7 = 484;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v4, 0x1Cu);
  }
}

- (void)registerCrossPlatformTestMessageOverIDSHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerCrossPlatformTestMessageOverIDSHandler:]";
    v11 = 1024;
    v12 = 491;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_96];
  [v6 registerCrossPlatformTestMessageOverIDSHandler:handlerCopy];

  v8 = KmlLogger(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerCrossPlatformTestMessageOverIDSHandler:]";
    v11 = 1024;
    v12 = 497;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }
}

void __60__DAManager_registerCrossPlatformTestMessageOverIDSHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "[DAManager registerCrossPlatformTestMessageOverIDSHandler:]_block_invoke";
    v6 = 1024;
    v7 = 495;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v4, 0x1Cu);
  }
}

- (void)registerCrossPlatformTestMessageSendHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerCrossPlatformTestMessageSendHandler:]";
    v11 = 1024;
    v12 = 502;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_98];
  [v6 registerCrossPlatformTestMessageSendHandler:handlerCopy];

  v8 = KmlLogger(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerCrossPlatformTestMessageSendHandler:]";
    v11 = 1024;
    v12 = 508;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }
}

void __57__DAManager_registerCrossPlatformTestMessageSendHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "[DAManager registerCrossPlatformTestMessageSendHandler:]_block_invoke";
    v6 = 1024;
    v7 = 506;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v4, 0x1Cu);
  }
}

- (void)sendCrossPlatformTestData:(id)data toIdsIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  v8 = KmlLogger(dataCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[DAManager sendCrossPlatformTestData:toIdsIdentifier:]";
    v14 = 1024;
    v15 = 513;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : ", &v12, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v9 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_100];
  [v9 sendCrossPlatformTestData:dataCopy toIdsIdentifier:identifierCopy];

  v11 = KmlLogger(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[DAManager sendCrossPlatformTestData:toIdsIdentifier:]";
    v14 = 1024;
    v15 = 519;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : ", &v12, 0x12u);
  }
}

void __55__DAManager_sendCrossPlatformTestData_toIdsIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "[DAManager sendCrossPlatformTestData:toIdsIdentifier:]_block_invoke";
    v6 = 1024;
    v7 = 517;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v4, 0x1Cu);
  }
}

- (void)registerFriendSidePasscodeRetryRequestTestHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = KmlLogger(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSidePasscodeRetryRequestTestHandler:]";
    v11 = 1024;
    v12 = 524;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v6 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_102];
  [v6 registerFriendSidePasscodeRetryRequestHandler:handlerCopy];

  v8 = KmlLogger(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[DAManager registerFriendSidePasscodeRetryRequestTestHandler:]";
    v11 = 1024;
    v12 = 530;
    _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_INFO, "%s : %i : ", &v9, 0x12u);
  }
}

void __63__DAManager_registerFriendSidePasscodeRetryRequestTestHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "[DAManager registerFriendSidePasscodeRetryRequestTestHandler:]_block_invoke";
    v6 = 1024;
    v7 = 528;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v4, 0x1Cu);
  }
}

- (void)unregisterSharingTestHandlers
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = KmlLogger(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[DAManager unregisterSharingTestHandlers]";
    v9 = 1024;
    v10 = 535;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : ", &v7, 0x12u);
  }

  [(DAManager *)self establishXpcConnection];
  v4 = [(NSXPCConnection *)self->_clientConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_104];
  [v4 unregisterSharingTestHandlers];

  v6 = KmlLogger(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[DAManager unregisterSharingTestHandlers]";
    v9 = 1024;
    v10 = 541;
    _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_INFO, "%s : %i : ", &v7, 0x12u);
  }
}

void __42__DAManager_unregisterSharingTestHandlers__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = KmlLogger(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "[DAManager unregisterSharingTestHandlers]_block_invoke";
    v6 = 1024;
    v7 = 539;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : proxyError: %@", &v4, 0x1Cu);
  }
}

+ (id)createAliroHomeKey:(id)key seid:(id)seid readerIdentifier:(id)identifier readerPublicKey:(id)publicKey homeUUID:(id)d outError:(id *)error
{
  v12 = MEMORY[0x277CCABB0];
  dCopy = d;
  publicKeyCopy = publicKey;
  identifierCopy = identifier;
  seidCopy = seid;
  keyCopy = key;
  v18 = [v12 numberWithInt:0];
  v19 = SESEndPointCreateForLyonWithSession();

  if (v19)
  {
    v20 = [[DAKeyInformation alloc] initWithEndpoint:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)createAliroHydraKey:(id)key seid:(id)seid serverParameters:(id)parameters outError:(id *)error
{
  v6 = SESEndPointCreateForLyonHydraWithSession();
  if (v6)
  {
    v7 = [[DAKeyInformation alloc] initWithEndpoint:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setServiceName:(uint64_t)name
{
  if (name)
  {
    objc_storeStrong((name + 24), a2);
  }
}

- (void)cleanup
{
  if (self)
  {
    v3 = KmlLogger(self);
    if (OUTLINED_FUNCTION_2_2(v3))
    {
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_6(&dword_248BF3000, v4, v5, "%s : %i : ", v6, v7, v8, v9);
    }

    [(DAManager *)self invalidateSessions];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = selfCopy[2];
    selfCopy[2] = 0;

    objc_sync_exit(selfCopy);
  }
}

- (id)releaseConnection
{
  if (result)
  {
    v2 = result;
    v3 = KmlLogger(result);
    if (OUTLINED_FUNCTION_2_2(v3))
    {
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_6(&dword_248BF3000, v4, v5, "%s : %i : ", v6, v7, v8, v9);
    }

    return [v2[2] invalidate];
  }

  return result;
}

id *__35__DAManager_establishXpcConnection__block_invoke_cold_1(id *a1)
{
  v3 = KmlLogger(a1);
  if (OUTLINED_FUNCTION_2_2(v3))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_248BF3000, v4, v5, "%s : %i : ", v6, v7, v8, v9);
  }

  return [(DAManager *)a1 releaseConnection];
}

void __35__DAManager_establishXpcConnection__block_invoke_73_cold_1(void *a1)
{
  v3 = KmlLogger(a1);
  if (OUTLINED_FUNCTION_2_2(v3))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6(&dword_248BF3000, v4, v5, "%s : %i : ", v6, v7, v8, v9);
  }

  [(DAManager *)a1 cleanup];
}

@end