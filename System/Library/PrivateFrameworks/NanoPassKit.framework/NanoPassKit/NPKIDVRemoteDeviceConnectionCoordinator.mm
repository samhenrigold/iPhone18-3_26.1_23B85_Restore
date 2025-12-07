@interface NPKIDVRemoteDeviceConnectionCoordinator
- (NPKIDVRemoteDeviceConnectionCoordinator)init;
- (id)_outstandingRequestItemWithCompletion:(id)completion errorHandler:(id)handler;
- (id)_safeQueue_outstandingRequestItemForIDSProtobuf:(id)protobuf remove:(BOOL)remove;
- (id)_safeQueue_outstandingRequestItemWithMessageIdentifier:(id)identifier remove:(BOOL)remove;
- (void)_inQueue_teardownCurrentRemoteDeviceConnection;
- (void)_safeQueue_resetCleanupTimerForOutstandingRequestItemWithMessageIdentifier:(id)identifier;
- (void)_sendEstablishPrearmTrustRequest:(id)request item:(id)item;
- (void)_sendRequest:(id)request withType:(unsigned __int16)type priority:(int64_t)priority queueIdentifier:(id)identifier requestItem:(id)item timeout:(double)timeout;
- (void)addNotificationResponse:(id)response;
- (void)addNotificationWithType:(unint64_t)type documentType:(unint64_t)documentType issuerName:(id)name completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)createCredentialInPartition:(id)partition options:(id)options completion:(id)completion;
- (void)createCredentialResponse:(id)response;
- (void)credentialIdentifiersInPartitions:(id)partitions completion:(id)completion;
- (void)deleteCredential:(id)credential withConfiguredPartitions:(id)partitions completion:(id)completion;
- (void)deleteCredentialResponse:(id)response;
- (void)deleteGlobalAuthACLResponse:(id)response;
- (void)deleteGlobalAuthACLWithCompletion:(id)completion;
- (void)deletePIIHashDataForCredentialIdentifier:(id)identifier withConfiguredPartitions:(id)partitions completion:(id)completion;
- (void)deletePIIHashDataResponse:(id)response;
- (void)establishPrearmTrustResponse:(id)response;
- (void)establishPrearmTrustV2:(id)v2 completion:(id)completion;
- (void)establishPrearmTrustV2Response:(id)response;
- (void)fetchPartitionsCredentialIdentifiersResponse:(id)response;
- (void)fetchPropertiesOfCredentialResponse:(id)response;
- (void)generateCredentialSigningKeyResponse:(id)response;
- (void)generateKeyWithType:(unint64_t)type credentialIdentifier:(id)identifier withConfiguredPartitions:(id)partitions completion:(id)completion;
- (void)generatePresentmentKeysForCredential:(id)credential numKeys:(int64_t)keys withConfiguredPartitions:(id)partitions completion:(id)completion;
- (void)generatePresentmentKeysForCredentialResponse:(id)response;
- (void)getCASDCertificateResponse:(id)response;
- (void)getCASDCertificateWithCompletion:(id)completion;
- (void)handleHeartbeats:(id)heartbeats service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)handlePrearmStatusUpdate:(id)update service:(id)service account:(id)account fromID:(id)d context:(id)context;
- (void)nonceForAuthorizationTokenResponse:(id)response;
- (void)nonceForAuthorizationTokenWithCompletion:(id)completion;
- (void)prearmCredentialWithAuthorizationToken:(id)token completion:(id)completion;
- (void)prearmCredentialWithAuthorizationTokenResponse:(id)response;
- (void)propertiesOfCredential:(id)credential withConfiguredPartitions:(id)partitions completion:(id)completion;
- (void)provisionCredentialResponse:(id)response;
- (void)provisionCredentialWithType:(unint64_t)type metadata:(id)metadata credentialIdentifier:(id)identifier attestations:(id)attestations supplementalData:(id)data completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)retrievePIIHashDataForCredentialIdentifier:(id)identifier withConfiguredPartitions:(id)partitions completion:(id)completion;
- (void)retrievePIIHashDataResponse:(id)response;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)startCurrentRemoteDeviceConnection;
- (void)storePIIHashDataForCredentialIdentifier:(id)identifier data:(id)data withConfiguredPartitions:(id)partitions completion:(id)completion;
- (void)storePIIHashDataResponse:(id)response;
- (void)teardownCurrentRemoteDeviceConnection;
- (void)updatePrearmStatus;
- (void)updateProofingConfiguration:(id)configuration completion:(id)completion;
- (void)updateProofingConfigurationResponse:(id)response;
@end

@implementation NPKIDVRemoteDeviceConnectionCoordinator

- (NPKIDVRemoteDeviceConnectionCoordinator)init
{
  v12.receiver = self;
  v12.super_class = NPKIDVRemoteDeviceConnectionCoordinator;
  v2 = [(NPKIDVRemoteDeviceConnectionCoordinator *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoPassKit.remoteDeviceConnection.IDSMessages", 0);
    IDSMessagesQueue = v2->_IDSMessagesQueue;
    v2->_IDSMessagesQueue = v3;

    v5 = dispatch_queue_create("com.apple.NanoPassKit.remoteDeviceConnection.observer", 0);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    outstandingRequestItems = v2->_outstandingRequestItems;
    v2->_outstandingRequestItems = v7;

    pk_weakObjectsHashTableUsingPointerPersonality = [MEMORY[0x277CCAA50] pk_weakObjectsHashTableUsingPointerPersonality];
    observers = v2->_observers;
    v2->_observers = pk_weakObjectsHashTableUsingPointerPersonality;
  }

  return v2;
}

- (void)startCurrentRemoteDeviceConnection
{
  IDSMessagesQueue = self->_IDSMessagesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NPKIDVRemoteDeviceConnectionCoordinator_startCurrentRemoteDeviceConnection__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(IDSMessagesQueue, block);
}

void __77__NPKIDVRemoteDeviceConnectionCoordinator_startCurrentRemoteDeviceConnection__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Will Start new IDV Remote Device IDS service", &v16, 2u);
    }
  }

  if (*(*(a1 + 32) + 8))
  {
    v6 = pk_Payment_log(v4);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 8);
        v16 = 138412290;
        v17 = v10;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: We currently have an existing IDS service:%@ we will teardown it first", &v16, 0xCu);
      }
    }

    [*(a1 + 32) _inQueue_teardownCurrentRemoteDeviceConnection];
  }

  v11 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.applepay.identitycredential"];
  [v11 setProtobufAction:sel_createCredentialResponse_ forIncomingResponsesOfType:1];
  [v11 setProtobufAction:sel_generateCredentialSigningKeyResponse_ forIncomingResponsesOfType:4];
  [v11 setProtobufAction:sel_generatePresentmentKeysForCredentialResponse_ forIncomingResponsesOfType:14];
  [v11 setProtobufAction:sel_deleteCredentialResponse_ forIncomingResponsesOfType:3];
  [v11 setProtobufAction:sel_fetchPropertiesOfCredentialResponse_ forIncomingResponsesOfType:2];
  [v11 setProtobufAction:sel_fetchPartitionsCredentialIdentifiersResponse_ forIncomingResponsesOfType:5];
  [v11 setProtobufAction:sel_nonceForAuthorizationTokenResponse_ forIncomingResponsesOfType:6];
  [v11 setProtobufAction:sel_prearmCredentialWithAuthorizationTokenResponse_ forIncomingResponsesOfType:7];
  [v11 setProtobufAction:sel_provisionCredentialResponse_ forIncomingResponsesOfType:12];
  [v11 setProtobufAction:sel_handlePrearmStatusUpdate_service_account_fromID_context_ forIncomingRequestsOfType:8];
  [v11 setProtobufAction:sel_establishPrearmTrustResponse_ forIncomingResponsesOfType:9];
  [v11 setProtobufAction:sel_establishPrearmTrustV2Response_ forIncomingResponsesOfType:16];
  [v11 setProtobufAction:sel_deleteGlobalAuthACLResponse_ forIncomingResponsesOfType:11];
  [v11 setProtobufAction:sel_getCASDCertificateResponse_ forIncomingResponsesOfType:15];
  [v11 setProtobufAction:sel_storePIIHashDataResponse_ forIncomingResponsesOfType:19];
  [v11 setProtobufAction:sel_retrievePIIHashDataResponse_ forIncomingResponsesOfType:20];
  [v11 setProtobufAction:sel_deletePIIHashDataResponse_ forIncomingResponsesOfType:21];
  [v11 setProtobufAction:sel_addNotificationResponse_ forIncomingResponsesOfType:13];
  [v11 setProtobufAction:sel_updateProofingConfigurationResponse_ forIncomingResponsesOfType:17];
  [v11 setProtobufAction:sel_handleHeartbeats_service_account_fromID_context_ forIncomingRequestsOfType:0xFFFFLL];
  objc_storeStrong((*(a1 + 32) + 8), v11);
  v12 = pk_Payment_log([v11 addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)]);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did Start IDV Remote Device IDS service:%@", &v16, 0xCu);
    }
  }
}

- (void)teardownCurrentRemoteDeviceConnection
{
  IDSMessagesQueue = self->_IDSMessagesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NPKIDVRemoteDeviceConnectionCoordinator_teardownCurrentRemoteDeviceConnection__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(IDSMessagesQueue, block);
}

- (void)_inQueue_teardownCurrentRemoteDeviceConnection
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_IDSMessagesQueue);
  v3 = [(NSMutableDictionary *)self->_outstandingRequestItems count];
  if (v3)
  {
    v4 = pk_Payment_log(v3);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log(v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        outstandingRequestItems = self->_outstandingRequestItems;
        v19 = 138412290;
        v20 = outstandingRequestItems;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: outstandingRequestItems is not empty:%@. expected to timeout eventually.", &v19, 0xCu);
      }
    }
  }

  v8 = pk_Payment_log(v3);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      remoteDeviceIDSService = self->_remoteDeviceIDSService;
      v19 = 138412290;
      v20 = remoteDeviceIDSService;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Will teardownIDV Remote Device IDS service:%@", &v19, 0xCu);
    }
  }

  [self->_remoteDeviceIDSService removeDelegate:self];
  v13 = self->_remoteDeviceIDSService;
  self->_remoteDeviceIDSService = 0;

  v15 = pk_Payment_log(v14);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v18 = pk_Payment_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Did teardownIDV Remote Device IDS service", &v19, 2u);
    }
  }
}

- (void)createCredentialResponse:(id)response
{
  v23 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[NPKIDVRemoteDeviceConnectionCoordinator createCredentialResponse:]";
      v21 = 2112;
      v22 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v19, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoCreateCredentialResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoCreateCredentialResponse *)v11 initWithData:data];

    errorData = [(NPKIDVRemoteDeviceProtoCreateCredentialResponse *)v13 errorData];
    v15 = objc_opt_class();
    v16 = NPKSecureUnarchiveObject(errorData, v15);

    completion2 = [v9 completion];
    credentialIdentifier = [(NPKIDVRemoteDeviceProtoCreateCredentialResponse *)v13 credentialIdentifier];
    (completion2)[2](completion2, credentialIdentifier, v16);
  }
}

- (void)createCredentialInPartition:(id)partition options:(id)options completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  optionsCopy = options;
  partitionCopy = partition;
  v11 = pk_Payment_log(partitionCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[NPKIDVRemoteDeviceConnectionCoordinator createCredentialInPartition:options:completion:]";
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v15 = objc_alloc_init(NPKIDVRemoteDeviceProtoCreateCredentialRequest);
  [(NPKIDVRemoteDeviceProtoCreateCredentialRequest *)v15 setPartitionIdentifier:partitionCopy];

  v16 = NPKSecureArchiveObject(optionsCopy);

  [(NPKIDVRemoteDeviceProtoCreateCredentialRequest *)v15 setCredentialOptionsData:v16];
  v17 = _Block_copy(completionCopy);
  aBlock = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __90__NPKIDVRemoteDeviceConnectionCoordinator_createCredentialInPartition_options_completion___block_invoke;
  v27 = &unk_279945218;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = _Block_copy(&aBlock);
  v20 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v17 errorHandler:v19];

  v21 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v23 = [v21 stringWithFormat:@"CreateCredential-%@", uUID, aBlock, v25, v26, v27];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v15 withType:1 queueIdentifier:v23 requestItem:v20];
}

void __90__NPKIDVRemoteDeviceConnectionCoordinator_createCredentialInPartition_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while creating credential:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)generateCredentialSigningKeyResponse:(id)response
{
  v25 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[NPKIDVRemoteDeviceConnectionCoordinator generateCredentialSigningKeyResponse:]";
      v23 = 2112;
      v24 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v21, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoGenerateKeyResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoGenerateKeyResponse *)v11 initWithData:data];

    signingKeyData = [(NPKIDVRemoteDeviceProtoGenerateKeyResponse *)v13 signingKeyData];
    getDCCredentialCryptoKeyClass();
    v15 = objc_opt_class();
    v16 = NPKSecureUnarchiveObject(signingKeyData, v15);

    errorData = [(NPKIDVRemoteDeviceProtoGenerateKeyResponse *)v13 errorData];
    v18 = objc_opt_class();
    v19 = NPKSecureUnarchiveObject(errorData, v18);

    completion2 = [v9 completion];
    (completion2)[2](completion2, v16, v19);
  }
}

- (void)generateKeyWithType:(unint64_t)type credentialIdentifier:(id)identifier withConfiguredPartitions:(id)partitions completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  partitionsCopy = partitions;
  identifierCopy = identifier;
  v13 = pk_Payment_log(identifierCopy);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_Payment_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[NPKIDVRemoteDeviceConnectionCoordinator generateKeyWithType:credentialIdentifier:withConfiguredPartitions:completion:]";
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v17 = objc_alloc_init(NPKIDVRemoteDeviceProtoGenerateKeyRequest);
  [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)v17 setCredentialIdentifier:identifierCopy];
  v18 = NSStringFromNPKIDVRemoteDeviceCredentialStorageKeyType(type);
  [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)v17 setKeyTypeString:v18];

  allObjects = [partitionsCopy allObjects];

  v20 = [allObjects mutableCopy];
  [(NPKIDVRemoteDeviceProtoGenerateKeyRequest *)v17 setConfiguredPartitionsIdentifiers:v20];

  v21 = _Block_copy(completionCopy);
  aBlock = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __120__NPKIDVRemoteDeviceConnectionCoordinator_generateKeyWithType_credentialIdentifier_withConfiguredPartitions_completion___block_invoke;
  v29 = &unk_279945218;
  v30 = completionCopy;
  v22 = completionCopy;
  v23 = _Block_copy(&aBlock);
  v24 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v21 errorHandler:v23];

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"GenerateCredentialKey-%@", identifierCopy, aBlock, v27, v28, v29];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v17 withType:4 queueIdentifier:v25 requestItem:v24];
}

void __120__NPKIDVRemoteDeviceConnectionCoordinator_generateKeyWithType_credentialIdentifier_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while Generating signing key:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)generatePresentmentKeysForCredentialResponse:(id)response
{
  v38 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[NPKIDVRemoteDeviceConnectionCoordinator generatePresentmentKeysForCredentialResponse:]";
      v36 = 2112;
      v37 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", buf, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoGeneratePresentmentKeysResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysResponse *)v11 initWithData:data];

    v14 = objc_alloc(MEMORY[0x277CBEB18]);
    presentmentKeysDatas = [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysResponse *)v13 presentmentKeysDatas];
    v16 = [v14 initWithCapacity:{objc_msgSend(presentmentKeysDatas, "count")}];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    presentmentKeysDatas2 = [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysResponse *)v13 presentmentKeysDatas];
    v18 = [presentmentKeysDatas2 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        v21 = 0;
        do
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(presentmentKeysDatas2);
          }

          v22 = *(*(&v29 + 1) + 8 * v21);
          getDCCredentialCryptoKeyClass();
          v23 = objc_opt_class();
          v24 = NPKSecureUnarchiveObject(v22, v23);
          [v16 safelyAddObject:v24];

          ++v21;
        }

        while (v19 != v21);
        v19 = [presentmentKeysDatas2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    errorData = [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysResponse *)v13 errorData];
    v26 = objc_opt_class();
    v27 = NPKSecureUnarchiveObject(errorData, v26);

    completion2 = [v9 completion];
    (completion2)[2](completion2, v16, v27);
  }
}

- (void)generatePresentmentKeysForCredential:(id)credential numKeys:(int64_t)keys withConfiguredPartitions:(id)partitions completion:(id)completion
{
  completionCopy = completion;
  partitionsCopy = partitions;
  credentialCopy = credential;
  v13 = NPKPairedOrPairingDevice();
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E63BF630-F388-4DCC-B73A-40EFB659A4C2"];
  v15 = [v13 supportsCapability:v14];

  if (keys == 1 || (v15 & 1) == 0)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __124__NPKIDVRemoteDeviceConnectionCoordinator_generatePresentmentKeysForCredential_numKeys_withConfiguredPartitions_completion___block_invoke;
    aBlock[3] = &unk_279945808;
    v31 = completionCopy;
    v16 = completionCopy;
    v24 = _Block_copy(aBlock);
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self generateKeyWithType:3 credentialIdentifier:credentialCopy withConfiguredPartitions:partitionsCopy completion:v24];

    v20 = v31;
  }

  else
  {
    v16 = objc_alloc_init(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysRequest);
    [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysRequest *)v16 setCredentialIdentifier:credentialCopy];

    allObjects = [partitionsCopy allObjects];

    v18 = [allObjects mutableCopy];
    [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysRequest *)v16 setConfiguredPartitionsIdentifiers:v18];

    [(NPKIDVRemoteDeviceProtoGeneratePresentmentKeysRequest *)v16 setNumKeys:keys];
    v19 = _Block_copy(completionCopy);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __124__NPKIDVRemoteDeviceConnectionCoordinator_generatePresentmentKeysForCredential_numKeys_withConfiguredPartitions_completion___block_invoke_2;
    v28 = &unk_279945218;
    v29 = completionCopy;
    v20 = completionCopy;
    v21 = _Block_copy(&v25);
    v22 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v19 errorHandler:v21, v25, v26, v27, v28];

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"GenerateCredentialKey-PresentmentKeys"];
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v16 withType:14 queueIdentifier:v23 requestItem:v22];
  }
}

void __124__NPKIDVRemoteDeviceConnectionCoordinator_generatePresentmentKeysForCredential_numKeys_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v9[0] = a2;
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = a2;
  v8 = [v5 arrayWithObjects:v9 count:1];
  (*(v4 + 16))(v4, v8, v6);
}

void __124__NPKIDVRemoteDeviceConnectionCoordinator_generatePresentmentKeysForCredential_numKeys_withConfiguredPartitions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while generating presentment keys:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)deleteCredentialResponse:(id)response
{
  v22 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NPKIDVRemoteDeviceConnectionCoordinator deleteCredentialResponse:]";
      v20 = 2112;
      v21 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v18, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoDeleteCredentialResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoDeleteCredentialResponse *)v11 initWithData:data];

    errorData = [(NPKIDVRemoteDeviceProtoDeleteCredentialResponse *)v13 errorData];
    v15 = objc_opt_class();
    v16 = NPKSecureUnarchiveObject(errorData, v15);

    completion2 = [v9 completion];
    (completion2)[2](completion2, v16);
  }
}

- (void)deleteCredential:(id)credential withConfiguredPartitions:(id)partitions completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  partitionsCopy = partitions;
  credentialCopy = credential;
  v11 = pk_Payment_log(credentialCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[NPKIDVRemoteDeviceConnectionCoordinator deleteCredential:withConfiguredPartitions:completion:]";
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v15 = objc_alloc_init(NPKIDVRemoteDeviceProtoDeleteCredentialRequest);
  [(NPKIDVRemoteDeviceProtoDeleteCredentialRequest *)v15 setCredentialIdentifier:credentialCopy];
  allObjects = [partitionsCopy allObjects];

  v17 = [allObjects mutableCopy];
  [(NPKIDVRemoteDeviceProtoDeleteCredentialRequest *)v15 setConfiguredPartitionsIdentifiers:v17];

  v18 = _Block_copy(completionCopy);
  aBlock = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __96__NPKIDVRemoteDeviceConnectionCoordinator_deleteCredential_withConfiguredPartitions_completion___block_invoke;
  v26 = &unk_279945218;
  v27 = completionCopy;
  v19 = completionCopy;
  v20 = _Block_copy(&aBlock);
  v21 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v18 errorHandler:v20];

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"DeleteCredential-%@", credentialCopy, aBlock, v24, v25, v26];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v15 withType:3 queueIdentifier:v22 requestItem:v21];
}

void __96__NPKIDVRemoteDeviceConnectionCoordinator_deleteCredential_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while deleting credential:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchPropertiesOfCredentialResponse:(id)response
{
  v31 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[NPKIDVRemoteDeviceConnectionCoordinator fetchPropertiesOfCredentialResponse:]";
      *&buf[12] = 2112;
      *&buf[14] = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", buf, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];
  v11 = completion == 0;

  if (!v11)
  {
    v12 = [NPKIDVRemoteDeviceProtoCredentialPropertiesResponse alloc];
    data = [responseCopy data];
    v14 = [(NPKIDVRemoteDeviceProtoCredentialPropertiesResponse *)v12 initWithData:data];

    credentialPropertiesData = [(NPKIDVRemoteDeviceProtoCredentialPropertiesResponse *)v14 credentialPropertiesData];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v16 = getDCCredentialPropertiesClass_softClass;
    v27 = getDCCredentialPropertiesClass_softClass;
    if (!getDCCredentialPropertiesClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getDCCredentialPropertiesClass_block_invoke;
      v29 = &unk_2799457C8;
      v30 = &v24;
      __getDCCredentialPropertiesClass_block_invoke(buf);
      v16 = v25[3];
    }

    v17 = v16;
    _Block_object_dispose(&v24, 8);
    v18 = objc_opt_class();
    v19 = NPKSecureUnarchiveObject(credentialPropertiesData, v18);

    errorData = [(NPKIDVRemoteDeviceProtoCredentialPropertiesResponse *)v14 errorData];
    v21 = objc_opt_class();
    v22 = NPKSecureUnarchiveObject(errorData, v21);

    completion2 = [v9 completion];
    (completion2)[2](completion2, v19, v22);
  }
}

- (void)propertiesOfCredential:(id)credential withConfiguredPartitions:(id)partitions completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  partitionsCopy = partitions;
  credentialCopy = credential;
  v11 = pk_Payment_log(credentialCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[NPKIDVRemoteDeviceConnectionCoordinator propertiesOfCredential:withConfiguredPartitions:completion:]";
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v15 = objc_alloc_init(NPKIDVRemoteDeviceProtoCredentialPropertiesRequest);
  [(NPKIDVRemoteDeviceProtoCredentialPropertiesRequest *)v15 setCredentialIdentifier:credentialCopy];

  allObjects = [partitionsCopy allObjects];

  v17 = [allObjects mutableCopy];
  [(NPKIDVRemoteDeviceProtoCredentialPropertiesRequest *)v15 setConfiguredPartitionsIdentifiers:v17];

  v18 = _Block_copy(completionCopy);
  aBlock = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __102__NPKIDVRemoteDeviceConnectionCoordinator_propertiesOfCredential_withConfiguredPartitions_completion___block_invoke;
  v28 = &unk_279945218;
  v29 = completionCopy;
  v19 = completionCopy;
  v20 = _Block_copy(&aBlock);
  v21 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v18 errorHandler:v20];

  v22 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v24 = [v22 stringWithFormat:@"CredentialProperties-%@", uUID, aBlock, v26, v27, v28];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v15 withType:2 queueIdentifier:v24 requestItem:v21];
}

void __102__NPKIDVRemoteDeviceConnectionCoordinator_propertiesOfCredential_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while fetching credential properties:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchPartitionsCredentialIdentifiersResponse:(id)response
{
  v25 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[NPKIDVRemoteDeviceConnectionCoordinator fetchPartitionsCredentialIdentifiersResponse:]";
      v23 = 2112;
      v24 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v21, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersResponse *)v11 initWithData:data];

    partitionsCredentialIdentifiersData = [(NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersResponse *)v13 partitionsCredentialIdentifiersData];
    v15 = objc_opt_class();
    v16 = NPKSecureUnarchiveObject(partitionsCredentialIdentifiersData, v15);

    errorData = [(NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersResponse *)v13 errorData];
    v18 = objc_opt_class();
    v19 = NPKSecureUnarchiveObject(errorData, v18);

    completion2 = [v9 completion];
    (completion2)[2](completion2, v16, v19);
  }
}

- (void)credentialIdentifiersInPartitions:(id)partitions completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  partitionsCopy = partitions;
  v8 = pk_Payment_log(partitionsCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[NPKIDVRemoteDeviceConnectionCoordinator credentialIdentifiersInPartitions:completion:]";
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v12 = objc_alloc_init(NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersRequest);
  v13 = [partitionsCopy mutableCopy];

  [(NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersRequest *)v12 setPartitionsIdentifiers:v13];
  v14 = _Block_copy(completionCopy);
  aBlock = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __88__NPKIDVRemoteDeviceConnectionCoordinator_credentialIdentifiersInPartitions_completion___block_invoke;
  v24 = &unk_279945218;
  v25 = completionCopy;
  v15 = completionCopy;
  v16 = _Block_copy(&aBlock);
  v17 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v14 errorHandler:v16];

  v18 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v20 = [v18 stringWithFormat:@"partitionsCredentialsIdentifiers-%@", uUID, aBlock, v22, v23, v24];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v12 withType:5 queueIdentifier:v20 requestItem:v17];
}

void __88__NPKIDVRemoteDeviceConnectionCoordinator_credentialIdentifiersInPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while fetching partition's credential identifiers:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)provisionCredentialResponse:(id)response
{
  v25 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[NPKIDVRemoteDeviceConnectionCoordinator provisionCredentialResponse:]";
      v23 = 2112;
      v24 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v21, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoProvisionCredentialResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)v11 initWithData:data];

    if ([(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)v13 hasSecureElementPassData])
    {
      secureElementPassData = [(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)v13 secureElementPassData];
      v15 = objc_opt_class();
      v16 = NPKSecureUnarchiveObject(secureElementPassData, v15);
    }

    else
    {
      v16 = 0;
    }

    if ([(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)v13 hasErrorData])
    {
      errorData = [(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)v13 errorData];
      v18 = objc_opt_class();
      v19 = NPKSecureUnarchiveObject(errorData, v18);
    }

    else
    {
      v19 = 0;
    }

    completion2 = [v9 completion];
    (completion2)[2](completion2, v16, v19);
  }
}

- (void)provisionCredentialWithType:(unint64_t)type metadata:(id)metadata credentialIdentifier:(id)identifier attestations:(id)attestations supplementalData:(id)data completion:(id)completion
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  completionCopy = completion;
  dataCopy = data;
  attestationsCopy = attestations;
  v19 = objc_alloc_init(NPKIDVRemoteDeviceProtoProvisionCredentialRequest);
  v20 = v19;
  if (!type)
  {
    v21 = 0;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v21 = 1;
LABEL_5:
    [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)v19 setCredentialType:v21];
  }

  v22 = NPKSecureArchiveObject(metadataCopy);
  [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)v20 setMetadataData:v22];

  [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)v20 setCredentialIdentifier:identifierCopy];
  v23 = NPKSecureArchiveObject(attestationsCopy);

  [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)v20 setAttestationsData:v23];
  [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)v20 setSupplementalData:dataCopy];

  v24 = _Block_copy(completionCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __142__NPKIDVRemoteDeviceConnectionCoordinator_provisionCredentialWithType_metadata_credentialIdentifier_attestations_supplementalData_completion___block_invoke;
  aBlock[3] = &unk_279945150;
  v33 = identifierCopy;
  v34 = completionCopy;
  v25 = completionCopy;
  v26 = identifierCopy;
  v27 = _Block_copy(aBlock);
  v28 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v24 errorHandler:v27];

  v29 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v31 = [v29 stringWithFormat:@"credentialProvisioning-%@", uUID];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v20 withType:12 queueIdentifier:v31 requestItem:v28];
}

void __142__NPKIDVRemoteDeviceConnectionCoordinator_provisionCredentialWithType_metadata_credentialIdentifier_attestations_supplementalData_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while provisioning credential with identifier:%@ error:%@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)nonceForAuthorizationTokenResponse:(id)response
{
  v31 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[NPKIDVRemoteDeviceConnectionCoordinator nonceForAuthorizationTokenResponse:]";
      *&buf[12] = 2112;
      *&buf[14] = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", buf, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];
  v11 = completion == 0;

  if (!v11)
  {
    v12 = [NPKIDVRemoteDeviceProtoNonceForAuthorizationTokenResponse alloc];
    data = [responseCopy data];
    v14 = [(NPKIDVRemoteDeviceProtoNonceForAuthorizationTokenResponse *)v12 initWithData:data];

    nonceData = [(NPKIDVRemoteDeviceProtoNonceForAuthorizationTokenResponse *)v14 nonceData];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v16 = getDCCredentialNonceClass_softClass;
    v27 = getDCCredentialNonceClass_softClass;
    if (!getDCCredentialNonceClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getDCCredentialNonceClass_block_invoke;
      v29 = &unk_2799457C8;
      v30 = &v24;
      __getDCCredentialNonceClass_block_invoke(buf);
      v16 = v25[3];
    }

    v17 = v16;
    _Block_object_dispose(&v24, 8);
    v18 = objc_opt_class();
    v19 = NPKSecureUnarchiveObject(nonceData, v18);

    errorData = [(NPKIDVRemoteDeviceProtoNonceForAuthorizationTokenResponse *)v14 errorData];
    v21 = objc_opt_class();
    v22 = NPKSecureUnarchiveObject(errorData, v21);

    completion2 = [v9 completion];
    (completion2)[2](completion2, v19, v22);
  }
}

- (void)nonceForAuthorizationTokenWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_Payment_log(completionCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[NPKIDVRemoteDeviceConnectionCoordinator nonceForAuthorizationTokenWithCompletion:]";
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v9 = objc_alloc_init(NPKIDVRemoteDeviceProtoNonceForAuthorizationTokenRequest);
  v10 = _Block_copy(completionCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__NPKIDVRemoteDeviceConnectionCoordinator_nonceForAuthorizationTokenWithCompletion___block_invoke;
  aBlock[3] = &unk_279945218;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = _Block_copy(aBlock);
  v13 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v10 errorHandler:v12];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v9 withType:6 priority:300 queueIdentifier:@"nonceForAuthorizationToken" requestItem:v13];
}

void __84__NPKIDVRemoteDeviceConnectionCoordinator_nonceForAuthorizationTokenWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while fetching nonce for authentication token error:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)prearmCredentialWithAuthorizationTokenResponse:(id)response
{
  v22 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NPKIDVRemoteDeviceConnectionCoordinator prearmCredentialWithAuthorizationTokenResponse:]";
      v20 = 2112;
      v21 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v18, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoPrearmCredentialResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoPrearmCredentialResponse *)v11 initWithData:data];

    errorData = [(NPKIDVRemoteDeviceProtoPrearmCredentialResponse *)v13 errorData];
    v15 = objc_opt_class();
    v16 = NPKSecureUnarchiveObject(errorData, v15);

    completion2 = [v9 completion];
    (completion2)[2](completion2, v16);
  }
}

- (void)prearmCredentialWithAuthorizationToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  v8 = objc_alloc_init(NPKIDVRemoteDeviceProtoPrearmCredentialRequest);
  v9 = NPKSecureArchiveObject(tokenCopy);

  [(NPKIDVRemoteDeviceProtoPrearmCredentialRequest *)v8 setAuthorizationTokenData:v9];
  v10 = _Block_copy(completionCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__NPKIDVRemoteDeviceConnectionCoordinator_prearmCredentialWithAuthorizationToken_completion___block_invoke;
  aBlock[3] = &unk_279945218;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = _Block_copy(aBlock);
  v13 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v10 errorHandler:v12];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v8 withType:7 priority:300 queueIdentifier:@"prearmCredentialWithAuthorizationToken" requestItem:v13];
}

void __93__NPKIDVRemoteDeviceConnectionCoordinator_prearmCredentialWithAuthorizationToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while pre-arming credential with authentication token error:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)establishPrearmTrustResponse:(id)response
{
  v22 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NPKIDVRemoteDeviceConnectionCoordinator establishPrearmTrustResponse:]";
      v20 = 2112;
      v21 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v18, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoEstablishPrearmTrustResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustResponse *)v11 initWithData:data];

    if ([(NPKIDVRemoteDeviceProtoEstablishPrearmTrustResponse *)v13 hasErrorData])
    {
      errorData = [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustResponse *)v13 errorData];
      v15 = objc_opt_class();
      v16 = NPKSecureUnarchiveObject(errorData, v15);
    }

    else
    {
      v16 = 0;
    }

    completion2 = [v9 completion];
    (completion2)[2](completion2, v16);
  }
}

- (void)establishPrearmTrustV2Response:(id)response
{
  v31 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[NPKIDVRemoteDeviceConnectionCoordinator establishPrearmTrustV2Response:]";
      *&buf[12] = 2112;
      *&buf[14] = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", buf, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];
  v11 = completion == 0;

  if (!v11)
  {
    v12 = [NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Response alloc];
    data = [responseCopy data];
    v14 = [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Response *)v12 initWithData:data];

    if ([(NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Response *)v14 hasErrorData])
    {
      errorData = [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Response *)v14 errorData];
      v16 = objc_opt_class();
      v17 = NPKSecureUnarchiveObject(errorData, v16);
    }

    else
    {
      v17 = 0;
    }

    attestationData = [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Response *)v14 attestationData];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v19 = getDCCredentialAttestationClass_softClass;
    v27 = getDCCredentialAttestationClass_softClass;
    if (!getDCCredentialAttestationClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getDCCredentialAttestationClass_block_invoke;
      v29 = &unk_2799457C8;
      v30 = &v24;
      __getDCCredentialAttestationClass_block_invoke(buf);
      v19 = v25[3];
    }

    v20 = v19;
    _Block_object_dispose(&v24, 8);
    v21 = objc_opt_class();
    v22 = NPKSecureUnarchiveObject(attestationData, v21);

    completion2 = [v9 completion];
    (completion2)[2](completion2, v22, v17);
  }
}

- (void)establishPrearmTrustV2:(id)v2 completion:(id)completion
{
  completionCopy = completion;
  v2Copy = v2;
  v8 = NPKPairedOrPairingDevice();
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"E63BF630-F388-4DCC-B73A-40EFB659A4C2"];
  v10 = [v8 supportsCapability:v9];

  if (v10)
  {
    v11 = _Block_copy(completionCopy);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __77__NPKIDVRemoteDeviceConnectionCoordinator_establishPrearmTrustV2_completion___block_invoke;
    aBlock[3] = &unk_279945218;
    v12 = &v27;
    v27 = completionCopy;
    v13 = completionCopy;
    v14 = _Block_copy(aBlock);
    v15 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v11 errorHandler:v14];

    v16 = objc_alloc_init(NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Request);
    v17 = NPKSecureArchiveObject(v2Copy);

    [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2Request *)v16 setTrustData:v17];
    [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v16 withType:16 queueIdentifier:@"establishPrearmTrustV2" requestItem:v15];
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__NPKIDVRemoteDeviceConnectionCoordinator_establishPrearmTrustV2_completion___block_invoke_163;
    v24[3] = &unk_279945218;
    v12 = &v25;
    v25 = completionCopy;
    v18 = completionCopy;
    v19 = _Block_copy(v24);
    v20 = _Block_copy(v19);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__NPKIDVRemoteDeviceConnectionCoordinator_establishPrearmTrustV2_completion___block_invoke_2;
    v22[3] = &unk_279945218;
    v23 = v19;
    v16 = v19;
    v21 = _Block_copy(v22);
    v15 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v20 errorHandler:v21];

    [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendEstablishPrearmTrustRequest:v2Copy item:v15];
  }
}

void __77__NPKIDVRemoteDeviceConnectionCoordinator_establishPrearmTrustV2_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while establishing prearm trust, error:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __77__NPKIDVRemoteDeviceConnectionCoordinator_establishPrearmTrustV2_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while establishing prearm trust, error:%@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_sendEstablishPrearmTrustRequest:(id)request item:(id)item
{
  itemCopy = item;
  requestCopy = request;
  v9 = objc_alloc_init(NPKIDVRemoteDeviceProtoEstablishPrearmTrustRequest);
  v8 = NPKSecureArchiveObject(requestCopy);

  [(NPKIDVRemoteDeviceProtoEstablishPrearmTrustRequest *)v9 setTrustData:v8];
  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v9 withType:9 queueIdentifier:@"establishPrearmTrust" requestItem:itemCopy];
}

- (void)handlePrearmStatusUpdate:(id)update service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v9 = [NPKIDVRemoteDeviceProtoPrearmStatusUpdate alloc];
  data = [updateCopy data];

  v11 = [(NPKIDVRemoteDeviceProtoPrearmStatusUpdate *)v9 initWithData:data];
  prearmStatus = [(NPKIDVRemoteDeviceProtoPrearmStatusUpdate *)v11 prearmStatus];
  v13 = (prearmStatus + 1);
  if (v13 >= 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13 - 1;
  }

  v15 = pk_Payment_log(prearmStatus);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v18 = pk_Payment_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromNPKIDVDeviceCredentialPrearmStatus(v14);
      *buf = 138412290;
      v23 = v19;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Received credential prearm status update:%@", buf, 0xCu);
    }
  }

  observerQueue = self->_observerQueue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __99__NPKIDVRemoteDeviceConnectionCoordinator_handlePrearmStatusUpdate_service_account_fromID_context___block_invoke;
  v21[3] = &unk_279945830;
  v21[4] = self;
  v21[5] = v14;
  dispatch_async(observerQueue, v21);
}

void __99__NPKIDVRemoteDeviceConnectionCoordinator_handlePrearmStatusUpdate_service_account_fromID_context___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) remoteDeviceConnectionCoordinator:*(a1 + 32) didReceivePrearmStatusUpdate:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updatePrearmStatus
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[NPKIDVRemoteDeviceConnectionCoordinator updatePrearmStatus]";
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", &v8, 0xCu);
    }
  }

  v7 = objc_alloc_init(NPKIDVRemoteDeviceProtoUpdatePrearmStatusRequest);
  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v7 withType:18 queueIdentifier:@"updatePrearmStatus" requestItem:0];
}

- (void)deleteGlobalAuthACLResponse:(id)response
{
  v22 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NPKIDVRemoteDeviceConnectionCoordinator deleteGlobalAuthACLResponse:]";
      v20 = 2112;
      v21 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v18, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoDeleteGlobalAuthACLResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoDeleteGlobalAuthACLResponse *)v11 initWithData:data];

    errorData = [(NPKIDVRemoteDeviceProtoDeleteGlobalAuthACLResponse *)v13 errorData];
    v15 = objc_opt_class();
    v16 = NPKSecureUnarchiveObject(errorData, v15);

    completion2 = [v9 completion];
    (completion2)[2](completion2, v16);
  }
}

- (void)deleteGlobalAuthACLWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_Payment_log(completionCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[NPKIDVRemoteDeviceConnectionCoordinator deleteGlobalAuthACLWithCompletion:]";
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v9 = objc_alloc_init(NPKIDVRemoteDeviceProtoDeleteGlobalAuthACLRequest);
  v10 = _Block_copy(completionCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__NPKIDVRemoteDeviceConnectionCoordinator_deleteGlobalAuthACLWithCompletion___block_invoke;
  aBlock[3] = &unk_279945218;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = _Block_copy(aBlock);
  v13 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v10 errorHandler:v12];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v9 withType:11 queueIdentifier:@"deleteGlobalAuthACL" requestItem:v13];
}

void __77__NPKIDVRemoteDeviceConnectionCoordinator_deleteGlobalAuthACLWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while deleting global auth ACL error:%@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)getCASDCertificateResponse:(id)response
{
  v24 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      v21 = "[NPKIDVRemoteDeviceConnectionCoordinator getCASDCertificateResponse:]";
      v22 = 2112;
      v23 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v20, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoCasdCertificateResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoCasdCertificateResponse *)v11 initWithData:data];

    errorData = [(NPKIDVRemoteDeviceProtoCasdCertificateResponse *)v13 errorData];
    if (errorData)
    {
      errorData2 = [(NPKIDVRemoteDeviceProtoCasdCertificateResponse *)v13 errorData];
      v16 = objc_opt_class();
      v17 = NPKSecureUnarchiveObject(errorData2, v16);
    }

    else
    {
      v17 = 0;
    }

    completion2 = [v9 completion];
    casdCertificate = [(NPKIDVRemoteDeviceProtoCasdCertificateResponse *)v13 casdCertificate];
    (completion2)[2](completion2, casdCertificate, v17);
  }
}

- (void)getCASDCertificateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(NPKIDVRemoteDeviceProtoCasdCertificateRequest);
  v6 = _Block_copy(completionCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__NPKIDVRemoteDeviceConnectionCoordinator_getCASDCertificateWithCompletion___block_invoke;
  aBlock[3] = &unk_279945218;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = _Block_copy(aBlock);
  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v6 errorHandler:v8];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v5 withType:15 queueIdentifier:@"getCASDCertificate" requestItem:v9];
}

void __76__NPKIDVRemoteDeviceConnectionCoordinator_getCASDCertificateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while retrieving CASD certificate. Error: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)storePIIHashDataResponse:(id)response
{
  v22 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NPKIDVRemoteDeviceConnectionCoordinator storePIIHashDataResponse:]";
      v20 = 2112;
      v21 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v18, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoStorePIIHashDataResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoStorePIIHashDataResponse *)v11 initWithData:data];

    errorData = [(NPKIDVRemoteDeviceProtoStorePIIHashDataResponse *)v13 errorData];
    v15 = objc_opt_class();
    v16 = NPKSecureUnarchiveObject(errorData, v15);

    completion2 = [v9 completion];
    (completion2)[2](completion2, v16);
  }
}

- (void)storePIIHashDataForCredentialIdentifier:(id)identifier data:(id)data withConfiguredPartitions:(id)partitions completion:(id)completion
{
  completionCopy = completion;
  partitionsCopy = partitions;
  dataCopy = data;
  identifierCopy = identifier;
  v14 = objc_alloc_init(NPKIDVRemoteDeviceProtoStorePIIHashDataRequest);
  v15 = _Block_copy(completionCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__NPKIDVRemoteDeviceConnectionCoordinator_storePIIHashDataForCredentialIdentifier_data_withConfiguredPartitions_completion___block_invoke;
  aBlock[3] = &unk_279945218;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = _Block_copy(aBlock);
  v18 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v15 errorHandler:v17];

  [(NPKIDVRemoteDeviceProtoStorePIIHashDataRequest *)v14 setCredentialIdentifier:identifierCopy];
  allObjects = [partitionsCopy allObjects];

  v20 = [allObjects mutableCopy];
  [(NPKIDVRemoteDeviceProtoStorePIIHashDataRequest *)v14 setConfiguredPartitionsIdentifiers:v20];

  [(NPKIDVRemoteDeviceProtoStorePIIHashDataRequest *)v14 setPiiHashData:dataCopy];
  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v14 withType:19 queueIdentifier:@"storePIIHashDataForCredentialIdentifier" requestItem:v18];
}

void __124__NPKIDVRemoteDeviceConnectionCoordinator_storePIIHashDataForCredentialIdentifier_data_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while storing PII Hash with error:%@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)retrievePIIHashDataResponse:(id)response
{
  v23 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[NPKIDVRemoteDeviceConnectionCoordinator retrievePIIHashDataResponse:]";
      v21 = 2112;
      v22 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v19, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)v11 initWithData:data];

    errorData = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)v13 errorData];
    v15 = objc_opt_class();
    v16 = NPKSecureUnarchiveObject(errorData, v15);

    completion2 = [v9 completion];
    piiHashData = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)v13 piiHashData];
    (completion2)[2](completion2, piiHashData, v16);
  }
}

- (void)retrievePIIHashDataForCredentialIdentifier:(id)identifier withConfiguredPartitions:(id)partitions completion:(id)completion
{
  completionCopy = completion;
  partitionsCopy = partitions;
  identifierCopy = identifier;
  v11 = objc_alloc_init(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest);
  v12 = _Block_copy(completionCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__NPKIDVRemoteDeviceConnectionCoordinator_retrievePIIHashDataForCredentialIdentifier_withConfiguredPartitions_completion___block_invoke;
  aBlock[3] = &unk_279945218;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = _Block_copy(aBlock);
  v15 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v12 errorHandler:v14];

  [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)v11 setCredentialIdentifier:identifierCopy];
  allObjects = [partitionsCopy allObjects];

  v17 = [allObjects mutableCopy];
  [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataRequest *)v11 setConfiguredPartitionsIdentifiers:v17];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v11 withType:20 queueIdentifier:@"retrievePIIHashDataForCredentialIdentifier" requestItem:v15];
}

void __122__NPKIDVRemoteDeviceConnectionCoordinator_retrievePIIHashDataForCredentialIdentifier_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while retrieving PII Hash with error:%@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, 0, v3);
  }
}

- (void)deletePIIHashDataResponse:(id)response
{
  v22 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[NPKIDVRemoteDeviceConnectionCoordinator deletePIIHashDataResponse:]";
      v20 = 2112;
      v21 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v18, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse *)v11 initWithData:data];

    errorData = [(NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse *)v13 errorData];
    v15 = objc_opt_class();
    v16 = NPKSecureUnarchiveObject(errorData, v15);

    completion2 = [v9 completion];
    (completion2)[2](completion2, v16);
  }
}

- (void)deletePIIHashDataForCredentialIdentifier:(id)identifier withConfiguredPartitions:(id)partitions completion:(id)completion
{
  completionCopy = completion;
  partitionsCopy = partitions;
  identifierCopy = identifier;
  v11 = objc_alloc_init(NPKIDVRemoteDeviceProtoDeletePIIHashDataRequest);
  v12 = _Block_copy(completionCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __120__NPKIDVRemoteDeviceConnectionCoordinator_deletePIIHashDataForCredentialIdentifier_withConfiguredPartitions_completion___block_invoke;
  aBlock[3] = &unk_279945218;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = _Block_copy(aBlock);
  v15 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v12 errorHandler:v14];

  [(NPKIDVRemoteDeviceProtoDeletePIIHashDataRequest *)v11 setCredentialIdentifier:identifierCopy];
  allObjects = [partitionsCopy allObjects];

  v17 = [allObjects mutableCopy];
  [(NPKIDVRemoteDeviceProtoDeletePIIHashDataRequest *)v11 setConfiguredPartitionsIdentifiers:v17];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v11 withType:21 queueIdentifier:@"deletePIIHashDataForCredentialIdentifier" requestItem:v15];
}

void __120__NPKIDVRemoteDeviceConnectionCoordinator_deletePIIHashDataForCredentialIdentifier_withConfiguredPartitions_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while retrieving PII Hash with error:%@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)addNotificationWithType:(unint64_t)type documentType:(unint64_t)documentType issuerName:(id)name completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  nameCopy = name;
  v12 = pk_Payment_log(nameCopy);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[NPKIDVRemoteDeviceConnectionCoordinator addNotificationWithType:documentType:issuerName:completion:]";
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v16 = objc_alloc_init(NPKIDVRemoteDeviceProtoNotificationRequest);
  [(NPKIDVRemoteDeviceProtoNotificationRequest *)v16 setIssuerName:nameCopy];

  if (type <= 8)
  {
    [(NPKIDVRemoteDeviceProtoNotificationRequest *)v16 setNotificationType:type];
  }

  if (documentType <= 3)
  {
    [(NPKIDVRemoteDeviceProtoNotificationRequest *)v16 setDocumentType:(documentType - 1)];
  }

  v17 = _Block_copy(completionCopy);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __102__NPKIDVRemoteDeviceConnectionCoordinator_addNotificationWithType_documentType_issuerName_completion___block_invoke;
  v24 = &unk_279945128;
  v25 = completionCopy;
  typeCopy = type;
  v18 = completionCopy;
  v19 = _Block_copy(&v21);
  v20 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v17 errorHandler:v19, v21, v22, v23, v24];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v16 withType:13 queueIdentifier:@"addExtendedNotification" requestItem:v20];
}

void __102__NPKIDVRemoteDeviceConnectionCoordinator_addNotificationWithType_documentType_issuerName_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromNPKIDVRemoteDeviceNotificationType(*(a1 + 40));
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while adding notification type:%@ error:%@", &v10, 0x16u);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (void)addNotificationResponse:(id)response
{
  v23 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[NPKIDVRemoteDeviceConnectionCoordinator addNotificationResponse:]";
      v21 = 2112;
      v22 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v19, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoNotificationResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoNotificationResponse *)v11 initWithData:data];

    errorData = [(NPKIDVRemoteDeviceProtoNotificationResponse *)v13 errorData];
    if (errorData)
    {
      errorData2 = [(NPKIDVRemoteDeviceProtoNotificationResponse *)v13 errorData];
      v16 = objc_opt_class();
      v17 = NPKSecureUnarchiveObject(errorData2, v16);
    }

    else
    {
      v17 = 0;
    }

    completion2 = [v9 completion];
    (completion2)[2](completion2, v17);
  }
}

- (void)updateProofingConfiguration:(id)configuration completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v29 = "[NPKIDVRemoteDeviceConnectionCoordinator updateProofingConfiguration:completion:]";
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s", buf, 0xCu);
    }
  }

  v12 = objc_alloc_init(NPKIDVRemoteDeviceProtoUpdateProofingConfigurationRequest);
  v13 = v12;
  if (configurationCopy)
  {
    v14 = NPKSecureArchiveObject(configurationCopy);
    [(NPKIDVRemoteDeviceProtoUpdateProofingConfigurationRequest *)v13 setConfigurationData:v14];
  }

  else
  {
    [(NPKIDVRemoteDeviceProtoUpdateProofingConfigurationRequest *)v12 setConfigurationData:0];
  }

  v15 = _Block_copy(completionCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__NPKIDVRemoteDeviceConnectionCoordinator_updateProofingConfiguration_completion___block_invoke;
  aBlock[3] = &unk_279945150;
  v26 = configurationCopy;
  v27 = completionCopy;
  v16 = completionCopy;
  v17 = configurationCopy;
  v18 = _Block_copy(aBlock);
  v19 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _outstandingRequestItemWithCompletion:v15 errorHandler:v18];

  v20 = MEMORY[0x277CCACA8];
  credentialIdentifier = [v17 credentialIdentifier];
  v22 = credentialIdentifier;
  v23 = &stru_286C934F8;
  if (credentialIdentifier)
  {
    v23 = credentialIdentifier;
  }

  v24 = [v20 stringWithFormat:@"updateProofingConfiguration-%@", v23];

  [(NPKIDVRemoteDeviceConnectionCoordinator *)self _sendRequest:v13 withType:17 priority:200 queueIdentifier:v24 requestItem:v19 timeout:*MEMORY[0x277D18828]];
}

void __82__NPKIDVRemoteDeviceConnectionCoordinator_updateProofingConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Error while updating proofing configuration:%@. Error:%@", &v10, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }
}

- (void)updateProofingConfigurationResponse:(id)response
{
  v23 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[NPKIDVRemoteDeviceConnectionCoordinator updateProofingConfigurationResponse:]";
      v21 = 2112;
      v22 = responseCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s response:%@", &v19, 0x16u);
    }
  }

  v9 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemForIDSProtobuf:responseCopy];
  completion = [v9 completion];

  if (completion)
  {
    v11 = [NPKIDVRemoteDeviceProtoUpdateProofingConfigurationResponse alloc];
    data = [responseCopy data];
    v13 = [(NPKIDVRemoteDeviceProtoUpdateProofingConfigurationResponse *)v11 initWithData:data];

    errorData = [(NPKIDVRemoteDeviceProtoUpdateProofingConfigurationResponse *)v13 errorData];
    if (errorData)
    {
      errorData2 = [(NPKIDVRemoteDeviceProtoUpdateProofingConfigurationResponse *)v13 errorData];
      v16 = objc_opt_class();
      v17 = NPKSecureUnarchiveObject(errorData2, v16);
    }

    else
    {
      v17 = 0;
    }

    completion2 = [v9 completion];
    (completion2)[2](completion2, v17);
  }
}

- (void)handleHeartbeats:(id)heartbeats service:(id)service account:(id)account fromID:(id)d context:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  heartbeatsCopy = heartbeats;
  v9 = pk_Payment_log(heartbeatsCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_Payment_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[NPKIDVRemoteDeviceConnectionCoordinator handleHeartbeats:service:account:fromID:context:]";
      v26 = 2112;
      v27 = heartbeatsCopy;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: %s request:%@", buf, 0x16u);
    }
  }

  v13 = [NPKIDVRemoteDeviceProtoHeartbeatRequest alloc];
  data = [heartbeatsCopy data];
  v15 = [(NPKIDVRemoteDeviceProtoHeartbeatRequest *)v13 initWithData:data];

  v17 = pk_Payment_log(v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v20 = pk_Payment_log(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      inProgressResponseIdentifiers = [(NPKIDVRemoteDeviceProtoHeartbeatRequest *)v15 inProgressResponseIdentifiers];
      *buf = 138412290;
      v25 = inProgressResponseIdentifiers;
      _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Received heartbeat for response identifiers:%@", buf, 0xCu);
    }
  }

  inProgressResponseIdentifiers2 = [(NPKIDVRemoteDeviceProtoHeartbeatRequest *)v15 inProgressResponseIdentifiers];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91__NPKIDVRemoteDeviceConnectionCoordinator_handleHeartbeats_service_account_fromID_context___block_invoke;
  v23[3] = &unk_279945858;
  v23[4] = self;
  [inProgressResponseIdentifiers2 enumerateObjectsUsingBlock:v23];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__NPKIDVRemoteDeviceConnectionCoordinator_addObserver___block_invoke;
  v7[3] = &unk_2799454E0;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_async(observerQueue, v7);
}

uint64_t __55__NPKIDVRemoteDeviceConnectionCoordinator_addObserver___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Register observer:%@ at:%@", &v9, 0x16u);
    }
  }

  return [*(*(a1 + 40) + 40) addObject:*(a1 + 32)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__NPKIDVRemoteDeviceConnectionCoordinator_removeObserver___block_invoke;
  v7[3] = &unk_2799454E0;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_async(observerQueue, v7);
}

uint64_t __58__NPKIDVRemoteDeviceConnectionCoordinator_removeObserver___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Remove observer:%@ at:%@", &v9, 0x16u);
    }
  }

  return [*(*(a1 + 40) + 40) removeObject:*(a1 + 32)];
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = pk_Payment_log(changedCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = changedCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: IDS service accounts changed: %@", &v9, 0xCu);
    }
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = pk_Payment_log(changedCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = changedCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: IDS service devices changed: %@", &v9, 0xCu);
    }
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  v16 = pk_Payment_log(contextCopy);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v19 = pk_Payment_log(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138413314;
      v21 = serviceCopy;
      v22 = 2112;
      v23 = accountCopy;
      v24 = 2112;
      v25 = protobufCopy;
      v26 = 2112;
      v27 = dCopy;
      v28 = 2112;
      v29 = contextCopy;
      _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: IDS service incoming unhandled protobuf: %@ %@ %@ %@ %@", &v20, 0x34u);
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v34 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = pk_Payment_log(errorCopy);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v19 = pk_Payment_log(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v25 = serviceCopy;
      v26 = 2112;
      v27 = accountCopy;
      v28 = 2112;
      v29 = identifierCopy;
      v30 = 1024;
      v31 = successCopy;
      v32 = 2112;
      v33 = errorCopy;
      _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: IDS service did send with success: %@ %@ %@ %d %@", buf, 0x30u);
    }
  }

  if (!successCopy)
  {
    IDSMessagesQueue = self->_IDSMessagesQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__NPKIDVRemoteDeviceConnectionCoordinator_service_account_identifier_didSendWithSuccess_error___block_invoke;
    block[3] = &unk_279945880;
    block[4] = self;
    v22 = identifierCopy;
    v23 = errorCopy;
    dispatch_async(IDSMessagesQueue, block);
  }
}

void __95__NPKIDVRemoteDeviceConnectionCoordinator_service_account_identifier_didSendWithSuccess_error___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _safeQueue_outstandingRequestItemWithMessageIdentifier:*(a1 + 40) remove:1];
  v2 = [v4 errorHandler];

  if (v2)
  {
    v3 = [v4 errorHandler];
    v3[2](v3, *(a1 + 48));
  }
}

- (id)_outstandingRequestItemWithCompletion:(id)completion errorHandler:(id)handler
{
  handlerCopy = handler;
  completionCopy = completion;
  v8 = [[NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem alloc] initWithtimeoutQueue:self->_IDSMessagesQueue];
  [(NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem *)v8 setCompletion:completionCopy];

  [(NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem *)v8 setErrorHandler:handlerCopy];

  return v8;
}

- (void)_sendRequest:(id)request withType:(unsigned __int16)type priority:(int64_t)priority queueIdentifier:(id)identifier requestItem:(id)item timeout:(double)timeout
{
  typeCopy = type;
  v46[4] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  itemCopy = item;
  v15 = MEMORY[0x277D189F0];
  requestCopy = request;
  v17 = [v15 alloc];
  data = [requestCopy data];

  v19 = [v17 initWithProtobufData:data type:typeCopy isResponse:0];
  v20 = *MEMORY[0x277D18630];
  v45[0] = *MEMORY[0x277D18650];
  v45[1] = v20;
  v46[0] = &unk_286CE77C8;
  v46[1] = identifierCopy;
  v21 = *MEMORY[0x277D18580];
  v45[2] = *MEMORY[0x277D185D0];
  v45[3] = v21;
  v46[2] = MEMORY[0x277CBEC38];
  v46[3] = MEMORY[0x277CBEC38];
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];
  v23 = pk_Payment_log(v22);
  LODWORD(data) = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

  if (data)
  {
    v25 = pk_Payment_log(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      npkDescription = [v19 npkDescription];
      *buf = 138412802;
      v40 = npkDescription;
      v41 = 2112;
      v42 = identifierCopy;
      v43 = 2112;
      v44 = @"com.apple.private.alloy.applepay.identitycredential";
      _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Sending protobuf:%@ queueIdentifier:%@ serviceIdentifier:%@", buf, 0x20u);
    }
  }

  IDSMessagesQueue = self->_IDSMessagesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__NPKIDVRemoteDeviceConnectionCoordinator__sendRequest_withType_priority_queueIdentifier_requestItem_timeout___block_invoke;
  block[3] = &unk_2799458D0;
  block[4] = self;
  v33 = v19;
  v38 = itemCopy != 0;
  v34 = itemCopy;
  v35 = v22;
  v36 = identifierCopy;
  priorityCopy = priority;
  v28 = identifierCopy;
  v29 = v22;
  v30 = itemCopy;
  v31 = v19;
  dispatch_async(IDSMessagesQueue, block);
}

void __110__NPKIDVRemoteDeviceConnectionCoordinator__sendRequest_withType_priority_queueIdentifier_requestItem_timeout___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = [*(a1 + 48) errorHandler];
  v7 = NPKProtoSendWithOptions(v3, v2, v4, 0, v5 & 1, v6, *(a1 + 56));

  if (v7)
  {
    if (*(a1 + 80))
    {
      objc_initWeak(location, *(a1 + 32));
      objc_initWeak(&from, *(a1 + 48));
      [*(a1 + 48) setMessageIdentifier:v7];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __110__NPKIDVRemoteDeviceConnectionCoordinator__sendRequest_withType_priority_queueIdentifier_requestItem_timeout___block_invoke_215;
      v15[3] = &unk_2799458A8;
      objc_copyWeak(&v16, &from);
      objc_copyWeak(&v17, location);
      [*(a1 + 48) setTimeoutHandler:v15];
      [*(a1 + 48) setOrResetCleanupTimer];
      [*(*(a1 + 32) + 24) setObject:*(a1 + 48) forKeyedSubscript:v7];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v9 = pk_Payment_log(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v12 = pk_Payment_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [*(a1 + 40) npkDescription];
        v14 = *(a1 + 64);
        *location = 138412546;
        *&location[4] = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Fail to send protobuf:%@ queueIdentifier:%@", location, 0x16u);
      }
    }
  }
}

void __110__NPKIDVRemoteDeviceConnectionCoordinator__sendRequest_withType_priority_queueIdentifier_requestItem_timeout___block_invoke_215(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    v4 = [WeakRetained messageIdentifier];

    if (v4)
    {
      v6 = pk_Payment_log(v5);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

      if (v7)
      {
        v9 = pk_Payment_log(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [WeakRetained messageIdentifier];
          v16 = 138412290;
          v17 = v10;
          _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: Timeout timer trigger for message with identifier %@", &v16, 0xCu);
        }
      }

      v11 = v3[3];
      v12 = [WeakRetained messageIdentifier];
      [v11 removeObjectForKey:v12];
    }
  }

  v13 = [WeakRetained errorHandler];

  if (v13)
  {
    v14 = [WeakRetained errorHandler];
    v15 = NPKIDVRemoteDeviceSessionError(-500, 0);
    (v14)[2](v14, v15);
  }
}

- (id)_safeQueue_outstandingRequestItemWithMessageIdentifier:(id)identifier remove:(BOOL)remove
{
  removeCopy = remove;
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_IDSMessagesQueue);
  if (!identifierCopy)
  {
    v10 = pk_Payment_log(v7);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v21) = 0;
        v14 = "Error: NPKIDVRemoteDeviceService: Missing IDS Message identifier";
        v15 = v13;
        v16 = 2;
LABEL_11:
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_ERROR, v14, &v21, v16);
      }

LABEL_12:
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v8 = [(NSMutableDictionary *)self->_outstandingRequestItems objectForKeyedSubscript:identifierCopy];
  if (!v8)
  {
    v17 = pk_Payment_log(0);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

    if (v18)
    {
      v13 = pk_Payment_log(v19);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v21 = 138412290;
        v22 = identifierCopy;
        v14 = "Error: NPKIDVRemoteDeviceService: Could not find completion handler for received Message Identifier:%@";
        v15 = v13;
        v16 = 12;
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v9 = v8;
  if (removeCopy)
  {
    [v8 invalidateCleanupTimer];
    [(NSMutableDictionary *)self->_outstandingRequestItems removeObjectForKey:identifierCopy];
  }

LABEL_14:

  return v9;
}

- (void)_safeQueue_resetCleanupTimerForOutstandingRequestItemWithMessageIdentifier:(id)identifier
{
  v3 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemWithMessageIdentifier:identifier remove:0];
  [v3 setOrResetCleanupTimer];
}

- (id)_safeQueue_outstandingRequestItemForIDSProtobuf:(id)protobuf remove:(BOOL)remove
{
  removeCopy = remove;
  context = [protobuf context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  v8 = [(NPKIDVRemoteDeviceConnectionCoordinator *)self _safeQueue_outstandingRequestItemWithMessageIdentifier:incomingResponseIdentifier remove:removeCopy];

  return v8;
}

@end