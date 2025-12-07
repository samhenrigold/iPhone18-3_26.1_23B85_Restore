@interface NPKWatchSubcredentialProvisioningService
- (NPKWatchSubcredentialProvisioningService)init;
- (void)canAcceptInvitationOnRemoteDeviceResponse:(id)response;
- (void)fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion:(id)completion;
- (void)fetchAccountAttestationAnonymizationSaltResponse:(id)response;
- (void)registerProtobufActionsForService:(id)service;
- (void)sendAcceptSubcredentialProvisioningRequestForInvitation:(id)invitation metadata:(id)metadata;
- (void)sendAcceptSubcredentialProvisioningRequestForMailboxAddress:(id)address activationCode:(id)code;
- (void)sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation:(id)invitation completion:(id)completion;
@end

@implementation NPKWatchSubcredentialProvisioningService

- (NPKWatchSubcredentialProvisioningService)init
{
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Expected to instantiate NPKWatchSubcredentialProvisioningService on watch.", v8, 2u);
    }
  }

  return 0;
}

- (void)registerProtobufActionsForService:(id)service
{
  serviceCopy = service;
  [serviceCopy setProtobufAction:sel_canAcceptInvitationOnRemoteDeviceResponse_ forIncomingResponsesOfType:73];
  [serviceCopy setProtobufAction:sel_fetchAccountAttestationAnonymizationSaltResponse_ forIncomingResponsesOfType:74];
}

- (void)sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation:(id)invitation completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  completionCopy = completion;
  v8 = pk_General_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = _Block_copy(completionCopy);
      *buf = 138543618;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Sending can accept invitation on remote device request with completion: %@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  subcredentialProvisioningQueue = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __113__NPKWatchSubcredentialProvisioningService_sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation_completion___block_invoke;
  v18[3] = &unk_279946CF8;
  objc_copyWeak(&v22, buf);
  selfCopy = self;
  v21 = completionCopy;
  v19 = invitationCopy;
  v16 = completionCopy;
  v17 = invitationCopy;
  dispatch_async(subcredentialProvisioningQueue, v18);

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

void __113__NPKWatchSubcredentialProvisioningService_sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_alloc_init(NPKProtoCanAcceptInvitationRequest);
  v4 = NPKSecureArchiveObject(*(a1 + 32));
  [(NPKProtoCanAcceptInvitationRequest *)v3 setInvitationData:v4];

  v5 = objc_alloc(MEMORY[0x277D189F0]);
  v6 = [(NPKProtoCanAcceptInvitationRequest *)v3 data];
  v7 = [v5 initWithProtobufData:v6 type:73 isResponse:0];

  v8 = [WeakRetained sendProtobuf:v7 responseExpected:1];
  if (v8)
  {
    v9 = _Block_copy(*(a1 + 48));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __113__NPKWatchSubcredentialProvisioningService_sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation_completion___block_invoke_2;
    aBlock[3] = &unk_279946CD0;
    v21 = *(a1 + 48);
    aBlock[4] = WeakRetained;
    v10 = v8;
    v20 = v10;
    v11 = _Block_copy(aBlock);
    v12 = *(a1 + 40);
    v13 = _Block_copy(v9);
    [v12 trackOutstandingRequestWithMessageIdentifier:v10 completionHandler:v13 errorHandler:v11];
  }

  else
  {
    v14 = pk_General_log(0);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (!v15)
    {
      goto LABEL_4;
    }

    v9 = pk_General_log(v16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: %{public}@: No message identifier for protobuf %@", buf, 0x16u);
    }
  }

LABEL_4:
}

void __113__NPKWatchSubcredentialProvisioningService_sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation_completion___block_invoke_2(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else
  {
    v4 = pk_Payment_log(0);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = pk_Payment_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = a1[5];
        v11 = 138543618;
        v12 = v9;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: No response expected for message with identifier %@", &v11, 0x16u);
      }
    }
  }
}

- (void)canAcceptInvitationOnRemoteDeviceResponse:(id)response
{
  v43 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      npkDescription = [responseCopy npkDescription];
      v39 = 138543618;
      v40 = v10;
      v41 = 2112;
      v42 = npkDescription;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Received canAcceptInvitationOnRemoteDeviceResponse: incoming protobuf %@", &v39, 0x16u);
    }
  }

  context = [responseCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  if (!incomingResponseIdentifier)
  {
    v26 = pk_Payment_log(v14);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

    if (v27)
    {
      v29 = pk_Payment_log(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v39 = 138543362;
        v40 = v31;
        v32 = "Error: %{public}@: No associated message ID in response";
        v33 = v29;
        v34 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_25B300000, v33, v34, v32, &v39, 0xCu);
      }

LABEL_16:
    }

LABEL_17:
    completionHandler = 0;
    v25 = 0;
    goto LABEL_18;
  }

  outstandingRequests = [(NPKSubcredentialProvisioningService *)self outstandingRequests];
  v16 = [outstandingRequests objectForKey:incomingResponseIdentifier];

  if (!v16)
  {
    v35 = pk_Payment_log(v17);
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

    if (v36)
    {
      v29 = pk_Payment_log(v37);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        v31 = NSStringFromClass(v38);
        v39 = 138543362;
        v40 = v31;
        v32 = "Warning: %{public}@: Got response with no associated message handler";
        v33 = v29;
        v34 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v18 = [NPKProtoCanAcceptInvitationResponse alloc];
  data = [responseCopy data];
  v20 = [(NPKProtoCanAcceptInvitationResponse *)v18 initWithData:data];

  outstandingRequests2 = [(NPKSubcredentialProvisioningService *)self outstandingRequests];
  [outstandingRequests2 removeObjectForKey:incomingResponseIdentifier];

  completionHandler = [v16 completionHandler];
  errorData = [(NPKProtoCanAcceptInvitationResponse *)v20 errorData];
  v24 = objc_opt_class();
  v25 = NPKSecureUnarchiveObject(errorData, v24);

  if (completionHandler)
  {
    (completionHandler)[2](completionHandler, v25 == 0, v25);
  }

LABEL_18:
}

- (void)sendAcceptSubcredentialProvisioningRequestForInvitation:(id)invitation metadata:(id)metadata
{
  v25 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  metadataCopy = metadata;
  v8 = pk_General_log(metadataCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = invitationCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Sending subcredential provisioning request for invitation: %@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  subcredentialProvisioningQueue = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__NPKWatchSubcredentialProvisioningService_sendAcceptSubcredentialProvisioningRequestForInvitation_metadata___block_invoke;
  block[3] = &unk_279945290;
  objc_copyWeak(&v20, buf);
  v18 = invitationCopy;
  v19 = metadataCopy;
  v15 = metadataCopy;
  v16 = invitationCopy;
  dispatch_async(subcredentialProvisioningQueue, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __109__NPKWatchSubcredentialProvisioningService_sendAcceptSubcredentialProvisioningRequestForInvitation_metadata___block_invoke(void **a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_alloc_init(NPKProtoAcceptSubcredentialInvitationRequest);
  v4 = NPKSecureArchiveObject(a1[4]);
  [(NPKProtoAcceptSubcredentialInvitationRequest *)v3 setInvitationData:v4];

  v5 = NPKSecureArchiveObject(a1[5]);
  [(NPKProtoAcceptSubcredentialInvitationRequest *)v3 setMetadataData:v5];

  v6 = objc_alloc(MEMORY[0x277D189F0]);
  v7 = [(NPKProtoAcceptSubcredentialInvitationRequest *)v3 data];
  v8 = [v6 initWithProtobufData:v7 type:122 isResponse:0];

  v9 = MEMORY[0x277CCACA8];
  v10 = [a1[4] identifier];
  v11 = [v9 stringWithFormat:@"%@-%@", @"SubcredentialProvisioning", v10];

  v24 = *MEMORY[0x277D18630];
  v25[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v13 = [WeakRetained sendProtobuf:v8 responseExpected:0 extraOptions:v12];
  if (!v13)
  {
    v14 = pk_General_log(0);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      v17 = pk_General_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138543618;
        v21 = v19;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_ERROR, "Error: %{public}@: No message identifier for protobuf %@", buf, 0x16u);
      }
    }
  }
}

- (void)sendAcceptSubcredentialProvisioningRequestForMailboxAddress:(id)address activationCode:(id)code
{
  v33 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  codeCopy = code;
  v8 = [addressCopy length];
  v9 = v8 == 0;
  v10 = pk_General_log(v8);
  v11 = v10;
  if (v9)
  {
    v18 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v18)
    {
      v20 = pk_General_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138543362;
        v28 = v22;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: %{public}@: Unable to initiate subcredential provisioning request for empty mailbox address", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_General_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138543875;
        v28 = v16;
        v29 = 2113;
        v30 = addressCopy;
        v31 = 2113;
        v32 = codeCopy;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Sending subcredential provisioning request for mailbox address: %{private}@, activationCode: %{private}@", buf, 0x20u);
      }
    }

    objc_initWeak(buf, self);
    subcredentialProvisioningQueue = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __119__NPKWatchSubcredentialProvisioningService_sendAcceptSubcredentialProvisioningRequestForMailboxAddress_activationCode___block_invoke;
    block[3] = &unk_279945290;
    objc_copyWeak(&v26, buf);
    v24 = addressCopy;
    v25 = codeCopy;
    dispatch_async(subcredentialProvisioningQueue, block);

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }
}

void __119__NPKWatchSubcredentialProvisioningService_sendAcceptSubcredentialProvisioningRequestForMailboxAddress_activationCode___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_alloc_init(NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest);
  [(NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest *)v3 setMailboxAddress:*(a1 + 32)];
  [(NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest *)v3 setActivationCode:*(a1 + 40)];
  v4 = objc_alloc(MEMORY[0x277D189F0]);
  v5 = [(NPKProtoAcceptSubcredentialInvitationWithMailboxAddressRequest *)v3 data];
  v6 = [v4 initWithProtobufData:v5 type:126 isResponse:0];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"SubcredentialProvisioning", *(a1 + 32)];
  v20 = *MEMORY[0x277D18630];
  v21[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v9 = [WeakRetained sendProtobuf:v6 responseExpected:0 extraOptions:v8];
  if (!v9)
  {
    v10 = pk_General_log(0);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v13 = pk_General_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138543618;
        v17 = v15;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: %{public}@: No message identifier for protobuf %@", buf, 0x16u);
      }
    }
  }
}

- (void)fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_General_log(completionCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = _Block_copy(completionCopy);
      *buf = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Sending fetch account attestation anonymization salt request with completion: %@", buf, 0x16u);
    }
  }

  objc_initWeak(buf, self);
  subcredentialProvisioningQueue = [(NPKSubcredentialProvisioningService *)self subcredentialProvisioningQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__NPKWatchSubcredentialProvisioningService_fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion___block_invoke;
  block[3] = &unk_279946D20;
  objc_copyWeak(&v16, buf);
  block[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  dispatch_async(subcredentialProvisioningQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __113__NPKWatchSubcredentialProvisioningService_fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_alloc_init(NPKProtoAccountAttestationAnonymizationSaltRequest);
  v4 = objc_alloc(MEMORY[0x277D189F0]);
  v5 = [(NPKProtoAccountAttestationAnonymizationSaltRequest *)v3 data];
  v6 = [v4 initWithProtobufData:v5 type:74 isResponse:0];

  v26 = *MEMORY[0x277D18630];
  v27[0] = @"SubcredentialProvisioning";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v8 = [WeakRetained sendProtobuf:v6 responseExpected:1 extraOptions:v7];
  if (v8)
  {
    v9 = _Block_copy(*(a1 + 40));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __113__NPKWatchSubcredentialProvisioningService_fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion___block_invoke_2;
    aBlock[3] = &unk_279946CD0;
    v21 = *(a1 + 40);
    aBlock[4] = WeakRetained;
    v10 = v8;
    v20 = v10;
    v11 = _Block_copy(aBlock);
    v12 = *(a1 + 32);
    v13 = _Block_copy(v9);
    [v12 trackOutstandingRequestWithMessageIdentifier:v10 completionHandler:v13 errorHandler:v11];
  }

  else
  {
    v14 = pk_General_log(0);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (!v15)
    {
      goto LABEL_4;
    }

    v9 = pk_General_log(v16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: %{public}@: No message identifier for protobuf %@", buf, 0x16u);
    }
  }

LABEL_4:
}

void __113__NPKWatchSubcredentialProvisioningService_fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion___block_invoke_2(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (v2)
  {
    v3 = *(v2 + 16);

    v3();
  }

  else
  {
    v4 = pk_Payment_log(0);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = pk_Payment_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = a1[5];
        v11 = 138543618;
        v12 = v9;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: No response expected for message with identifier %@", &v11, 0x16u);
      }
    }
  }
}

- (void)fetchAccountAttestationAnonymizationSaltResponse:(id)response
{
  v44 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = pk_Payment_log(responseCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      npkDescription = [responseCopy npkDescription];
      v40 = 138543618;
      v41 = v10;
      v42 = 2112;
      v43 = npkDescription;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Received accountAttestationAnonymizationSaltResponse: incoming protobuf %@", &v40, 0x16u);
    }
  }

  context = [responseCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  if (!incomingResponseIdentifier)
  {
    v27 = pk_Payment_log(v14);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

    if (v28)
    {
      v30 = pk_Payment_log(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v40 = 138543362;
        v41 = v32;
        v33 = "Error: %{public}@: No associated message ID in response";
        v34 = v30;
        v35 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_25B300000, v34, v35, v33, &v40, 0xCu);
      }

LABEL_16:
    }

LABEL_17:
    completionHandler = 0;
    anonymizationSalt = 0;
    v26 = 0;
    goto LABEL_18;
  }

  outstandingRequests = [(NPKSubcredentialProvisioningService *)self outstandingRequests];
  v16 = [outstandingRequests objectForKey:incomingResponseIdentifier];

  if (!v16)
  {
    v36 = pk_Payment_log(v17);
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

    if (v37)
    {
      v30 = pk_Payment_log(v38);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        v32 = NSStringFromClass(v39);
        v40 = 138543362;
        v41 = v32;
        v33 = "Warning: %{public}@: Got response with no associated message handler";
        v34 = v30;
        v35 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v18 = [NPKProtoAccountAttestationAnonymizationSaltResponse alloc];
  data = [responseCopy data];
  v20 = [(NPKProtoAccountAttestationAnonymizationSaltResponse *)v18 initWithData:data];

  outstandingRequests2 = [(NPKSubcredentialProvisioningService *)self outstandingRequests];
  [outstandingRequests2 removeObjectForKey:incomingResponseIdentifier];

  completionHandler = [v16 completionHandler];
  anonymizationSalt = [(NPKProtoAccountAttestationAnonymizationSaltResponse *)v20 anonymizationSalt];
  errorData = [(NPKProtoAccountAttestationAnonymizationSaltResponse *)v20 errorData];
  v25 = objc_opt_class();
  v26 = NPKSecureUnarchiveObject(errorData, v25);

  if (completionHandler)
  {
    (completionHandler)[2](completionHandler, anonymizationSalt, v26);
  }

LABEL_18:
}

@end