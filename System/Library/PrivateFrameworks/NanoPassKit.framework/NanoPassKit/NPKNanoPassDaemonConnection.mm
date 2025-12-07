@interface NPKNanoPassDaemonConnection
- (NPKNanoPassDaemonConnection)init;
- (id)_errorHandlerWithCompletion:(id)completion;
- (id)_remoteObjectProxySynchronous:(BOOL)synchronous withFailureHandler:(id)handler;
- (void)_addLegacyExpressModeEnabledUserNotificationForPassUniqueID:(id)d completion:(id)completion;
- (void)addRemoteDevicePendingProvisionings:(id)provisionings;
- (void)addUserNotificationForEnabledExpressMode:(unint64_t)mode passUniqueID:(id)d completion:(id)completion;
- (void)addUserNotificationOfType:(unint64_t)type passUniqueID:(id)d completion:(id)completion;
- (void)canAcceptInvitationOnRemoteDeviceForInvitation:(id)invitation completion:(id)completion;
- (void)canNotifyAboutExpressModeWithCompletion:(id)completion;
- (void)fetchIdentityProofingConfigurationForCountry:(id)country state:(id)state completion:(id)completion;
- (void)fetchRelevantPassInformationWithCompletion:(id)completion;
- (void)handleApplicationRedirectRequestOnPairedDeviceForPaymentPass:(id)pass transaction:(id)transaction;
- (void)handleMetadataRequestOnPairedDevice:(id)device withAssociatedApplicationIdentifiers:(id)identifiers completion:(id)completion;
- (void)identityPassPrearmStatusSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)insertBridgeBulletinWithTitle:(id)title message:(id)message actionURL:(id)l forPass:(id)pass playSound:(BOOL)sound notificationIdentifier:(id)identifier expirationDate:(id)date;
- (void)noteWillDeleteAccountsSynchronous:(BOOL)synchronous completion:(id)completion;
- (void)remoteService:(id)service didEstablishConnection:(id)connection;
- (void)remoteService:(id)service didInterruptConnection:(id)connection;
- (void)remoteServiceDidResume:(id)resume;
- (void)remoteServiceDidSuspend:(id)suspend;
- (void)startSubcredentialProvisioningOnLocalDeviceMatchingInvitation:(id)invitation shouldFetchAnonymizationSaltFromRemoteDevice:(BOOL)device completion:(id)completion;
- (void)startSubcredentialProvisioningOnRemoteDeviceForInvitation:(id)invitation;
- (void)startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress:(id)address activationCode:(id)code;
@end

@implementation NPKNanoPassDaemonConnection

- (NPKNanoPassDaemonConnection)init
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = NPKNanoPassDaemonConnection;
  v2 = [(NPKNanoPassDaemonConnection *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = pk_General_log(v2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v7 = pk_General_log(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v3;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] New connection created: %@", buf, 0xCu);
      }
    }

    v8 = objc_alloc(MEMORY[0x277D38348]);
    v9 = NPKNanoPassDaemonConnectionProtocolInterface();
    v10 = [v8 initWithMachServiceName:@"com.apple.NPKNanoPassDaemonConnection.XPC" remoteObjectInterface:v9 exportedObjectInterface:0 exportedObject:0];
    remoteService = v3->_remoteService;
    v3->_remoteService = v10;

    [(PKXPCService *)v3->_remoteService setDelegate:v3];
    [(PKXPCService *)v3->_remoteService setForceConnectionOnResume:1];
  }

  return v3;
}

- (void)handleMetadataRequestOnPairedDevice:(id)device withAssociatedApplicationIdentifiers:(id)identifiers completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  if (completionCopy)
  {
    identifiersCopy = identifiers;
    v11 = pk_General_log(identifiersCopy);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_General_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = deviceCopy;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection handleMetadataRequestOnPairedDevice %@", buf, 0xCu);
      }
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __115__NPKNanoPassDaemonConnection_handleMetadataRequestOnPairedDevice_withAssociatedApplicationIdentifiers_completion___block_invoke;
    v21[3] = &unk_279945198;
    v15 = completionCopy;
    v22 = v15;
    v16 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v21];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __115__NPKNanoPassDaemonConnection_handleMetadataRequestOnPairedDevice_withAssociatedApplicationIdentifiers_completion___block_invoke_2;
    v17[3] = &unk_279945668;
    v18 = deviceCopy;
    selfCopy = self;
    v20 = v15;
    [v16 handleMetadataRequestOnPairedDevice:v18 withAssociatedApplicationIdentifiers:identifiersCopy completion:v17];
  }
}

void __115__NPKNanoPassDaemonConnection_handleMetadataRequestOnPairedDevice_withAssociatedApplicationIdentifiers_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __115__NPKNanoPassDaemonConnection_handleMetadataRequestOnPairedDevice_withAssociatedApplicationIdentifiers_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_General_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection got response (%@, %@) for request %@", &v12, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)handleApplicationRedirectRequestOnPairedDeviceForPaymentPass:(id)pass transaction:(id)transaction
{
  v17 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  transactionCopy = transaction;
  v8 = pk_General_log(transactionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = passCopy;
      v15 = 2112;
      v16 = transactionCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection applicationRedirectRequestOnPairDevice %@-%@", &v13, 0x16u);
    }
  }

  v12 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:&__block_literal_global_1];
  [v12 handleApplicationRedirectRequestOnPairedDeviceForPaymentPass:passCopy transaction:transactionCopy];
}

void __104__NPKNanoPassDaemonConnection_handleApplicationRedirectRequestOnPairedDeviceForPaymentPass_transaction___block_invoke(uint64_t a1)
{
  v1 = pk_General_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);

  if (v2)
  {
    v4 = pk_General_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v5, 2u);
    }
  }
}

- (void)canAcceptInvitationOnRemoteDeviceForInvitation:(id)invitation completion:(id)completion
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
      v12 = _Block_copy(completionCopy);
      *buf = 138412546;
      v24 = invitationCopy;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection canAcceptInvitationOnRemoteDeviceForInvitation: %@ completion: %@", buf, 0x16u);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __89__NPKNanoPassDaemonConnection_canAcceptInvitationOnRemoteDeviceForInvitation_completion___block_invoke;
  v21[3] = &unk_279945198;
  v13 = completionCopy;
  v22 = v13;
  v14 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v21];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__NPKNanoPassDaemonConnection_canAcceptInvitationOnRemoteDeviceForInvitation_completion___block_invoke_58;
  v17[3] = &unk_2799456B0;
  selfCopy = self;
  v20 = v13;
  v18 = invitationCopy;
  v15 = v13;
  v16 = invitationCopy;
  [v14 canAcceptInvitationOnRemoteDeviceForInvitation:v16 completion:v17];
}

void __89__NPKNanoPassDaemonConnection_canAcceptInvitationOnRemoteDeviceForInvitation_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v8, 2u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

void __89__NPKNanoPassDaemonConnection_canAcceptInvitationOnRemoteDeviceForInvitation_completion___block_invoke_58(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_General_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_General_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      v11 = *(a1 + 32);
      v13 = 138412802;
      if (a2)
      {
        v10 = @"YES";
      }

      v14 = v10;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection got response (%@, %@) for invitation %@", &v13, 0x20u);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v5);
  }
}

- (void)startSubcredentialProvisioningOnRemoteDeviceForInvitation:(id)invitation
{
  v12 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  v5 = pk_General_log(invitationCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = invitationCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection startSubcredentialProvisioningOnRemoteDeviceForInvitation: %@", &v10, 0xCu);
    }
  }

  v9 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:&__block_literal_global_67];
  [v9 startSubcredentialProvisioningOnRemoteDeviceForInvitation:invitationCopy];
}

void __89__NPKNanoPassDaemonConnection_startSubcredentialProvisioningOnRemoteDeviceForInvitation___block_invoke(uint64_t a1)
{
  v1 = pk_General_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);

  if (v2)
  {
    v4 = pk_General_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v5, 2u);
    }
  }
}

- (void)startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress:(id)address activationCode:(id)code
{
  v17 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  codeCopy = code;
  v8 = pk_General_log(codeCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138478083;
      v14 = addressCopy;
      v15 = 2113;
      v16 = codeCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress: %{private}@, activationCode: %{private}@", &v13, 0x16u);
    }
  }

  v12 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:&__block_literal_global_69];
  [v12 startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress:addressCopy activationCode:codeCopy];
}

void __108__NPKNanoPassDaemonConnection_startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress_activationCode___block_invoke(uint64_t a1)
{
  v1 = pk_General_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);

  if (v2)
  {
    v4 = pk_General_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v5, 2u);
    }
  }
}

- (void)startSubcredentialProvisioningOnLocalDeviceMatchingInvitation:(id)invitation shouldFetchAnonymizationSaltFromRemoteDevice:(BOOL)device completion:(id)completion
{
  deviceCopy = device;
  v32 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  completionCopy = completion;
  v10 = pk_General_log(completionCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (deviceCopy)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = _Block_copy(completionCopy);
      *buf = 138412802;
      v27 = invitationCopy;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection startSubcredentialProvisioningOnLocalDeviceMatchingInvitation: %@ shouldFetchAnonymizationSaltFromRemoteDevice: %@ completion: %@", buf, 0x20u);
    }
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __149__NPKNanoPassDaemonConnection_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke;
  v24[3] = &unk_279945198;
  v16 = completionCopy;
  v25 = v16;
  v17 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v24];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __149__NPKNanoPassDaemonConnection_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke_70;
  v20[3] = &unk_2799456D8;
  selfCopy = self;
  v23 = v16;
  v21 = invitationCopy;
  v18 = v16;
  v19 = invitationCopy;
  [v17 startSubcredentialProvisioningOnLocalDeviceMatchingInvitation:v19 shouldFetchAnonymizationSaltFromRemoteDevice:deviceCopy completion:v20];
}

void __149__NPKNanoPassDaemonConnection_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v8, 2u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

void __149__NPKNanoPassDaemonConnection_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke_70(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_General_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection got response (%@, %@) for invitation %@", &v12, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)addRemoteDevicePendingProvisionings:(id)provisionings
{
  v12 = *MEMORY[0x277D85DE8];
  provisioningsCopy = provisionings;
  v5 = pk_General_log(provisioningsCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = provisioningsCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection addRemoteDevicePendingProvisionings: %@", &v10, 0xCu);
    }
  }

  v9 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:&__block_literal_global_73];
  [v9 addRemoteDevicePendingProvisionings:provisioningsCopy];
}

void __67__NPKNanoPassDaemonConnection_addRemoteDevicePendingProvisionings___block_invoke(uint64_t a1)
{
  v1 = pk_General_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);

  if (v2)
  {
    v4 = pk_General_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v5, 2u);
    }
  }
}

- (void)noteWillDeleteAccountsSynchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = pk_General_log(completionCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = synchronousCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection stated noteWillDeleteAccountsSynchronous: %d", buf, 8u);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__NPKNanoPassDaemonConnection_noteWillDeleteAccountsSynchronous_completion___block_invoke;
  v17[3] = &unk_279945198;
  v11 = completionCopy;
  v18 = v11;
  v12 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:synchronousCopy withFailureHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__NPKNanoPassDaemonConnection_noteWillDeleteAccountsSynchronous_completion___block_invoke_74;
  v14[3] = &unk_279945700;
  v16 = synchronousCopy;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 noteWillDeleteAccountsWithCompletion:v14];
}

uint64_t __76__NPKNanoPassDaemonConnection_noteWillDeleteAccountsSynchronous_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v7, 2u);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __76__NPKNanoPassDaemonConnection_noteWillDeleteAccountsSynchronous_completion___block_invoke_74(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection finished noteWillDeleteAccountsSynchronous: %d", v8, 8u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)identityPassPrearmStatusSynchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = pk_General_log(completionCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v19 = synchronousCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection started identityPassPrearmStatusSynchronous %d", buf, 8u);
    }
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__NPKNanoPassDaemonConnection_identityPassPrearmStatusSynchronous_completion___block_invoke;
  v16[3] = &unk_279945198;
  v11 = completionCopy;
  v17 = v11;
  v12 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:synchronousCopy withFailureHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__NPKNanoPassDaemonConnection_identityPassPrearmStatusSynchronous_completion___block_invoke_75;
  v14[3] = &unk_279945728;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 identityPassPrearmStatusWithCompletion:v14];
}

uint64_t __78__NPKNanoPassDaemonConnection_identityPassPrearmStatusSynchronous_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v7, 2u);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __78__NPKNanoPassDaemonConnection_identityPassPrearmStatusSynchronous_completion___block_invoke_75(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromNPKIDVDeviceCredentialPrearmStatus(a2);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Received identity Pass Prearm status: %@", &v10, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)addUserNotificationOfType:(unint64_t)type passUniqueID:(id)d completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v10 = pk_General_log(completionCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = NSStringFromNPKNanoPassbookUserNotificationType(type);
      v17 = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Request to add user notification of type: %@ for passUniqueID: %@", &v17, 0x16u);
    }
  }

  if (type > 1)
  {
    if (type == 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    if (type == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = v16;
    }
  }

  else
  {
    if (!type)
    {
      [(NPKNanoPassDaemonConnection *)self _addLegacyExpressModeEnabledUserNotificationForPassUniqueID:dCopy completion:completionCopy];
      goto LABEL_15;
    }

    v15 = type == 1;
  }

  [(NPKNanoPassDaemonConnection *)self addUserNotificationForEnabledExpressMode:v15 passUniqueID:dCopy completion:completionCopy];
LABEL_15:
}

- (void)addUserNotificationForEnabledExpressMode:(unint64_t)mode passUniqueID:(id)d completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v10 = pk_General_log(completionCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      modeCopy = mode;
      v27 = 2112;
      v28 = dCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection started addUserNotificationForEnabledExpressMode: %lu, pass unique ID: %@", buf, 0x16u);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __96__NPKNanoPassDaemonConnection_addUserNotificationForEnabledExpressMode_passUniqueID_completion___block_invoke;
  v23[3] = &unk_279945198;
  v14 = completionCopy;
  v24 = v14;
  v15 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v23];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__NPKNanoPassDaemonConnection_addUserNotificationForEnabledExpressMode_passUniqueID_completion___block_invoke_77;
  v18[3] = &unk_279945750;
  v21 = v14;
  modeCopy2 = mode;
  v19 = dCopy;
  selfCopy = self;
  v16 = v14;
  v17 = dCopy;
  [v15 addUserNotificationForEnabledExpressMode:mode passUniqueID:v17 completion:v18];
}

void __96__NPKNanoPassDaemonConnection_addUserNotificationForEnabledExpressMode_passUniqueID_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v8, 2u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }
}

void __96__NPKNanoPassDaemonConnection_addUserNotificationForEnabledExpressMode_passUniqueID_completion___block_invoke_77(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[7];
      v9 = a1[4];
      v11 = 134218498;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection finished addUserNotificationForEnabledExpressMode: %lu, passUniqueID: %@, error?: %@", &v11, 0x20u);
    }
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

- (void)canNotifyAboutExpressModeWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_General_log(completionCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = _Block_copy(completionCopy);
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection started canNotifyAboutExpressModeWithCompletion %@", buf, 0xCu);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__NPKNanoPassDaemonConnection_canNotifyAboutExpressModeWithCompletion___block_invoke;
  v15[3] = &unk_279945198;
  v10 = completionCopy;
  v16 = v10;
  v11 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__NPKNanoPassDaemonConnection_canNotifyAboutExpressModeWithCompletion___block_invoke_79;
  v13[3] = &unk_2799451F0;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 canNotifyAboutExpressModeWithCompletion:v13];
}

void __71__NPKNanoPassDaemonConnection_canNotifyAboutExpressModeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v7, 2u);
    }
  }

  if (*(a1 + 32))
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(*(a1 + 32) + 16))(*(a1 + 32), v6 != 0);
  }
}

uint64_t __71__NPKNanoPassDaemonConnection_canNotifyAboutExpressModeWithCompletion___block_invoke_79(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = pk_General_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"NO";
      if (a2)
      {
        v8 = @"YES";
      }

      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection got response with canNotify: %@", &v10, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (void)fetchRelevantPassInformationWithCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pk_General_log(completionCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = _Block_copy(completionCopy);
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection started fetchRelevantPassInformationWithCompletion %@", buf, 0xCu);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__NPKNanoPassDaemonConnection_fetchRelevantPassInformationWithCompletion___block_invoke;
  v15[3] = &unk_279945198;
  v10 = completionCopy;
  v16 = v10;
  v11 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__NPKNanoPassDaemonConnection_fetchRelevantPassInformationWithCompletion___block_invoke_81;
  v13[3] = &unk_279945778;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 fetchRelevantPassInformationWithCompletion:v13];
}

void __74__NPKNanoPassDaemonConnection_fetchRelevantPassInformationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v7, 2u);
    }
  }

  if (*(a1 + 32))
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

void __74__NPKNanoPassDaemonConnection_fetchRelevantPassInformationWithCompletion___block_invoke_81(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection got response with relevantPassInformation: %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3, 0);
  }
}

- (void)insertBridgeBulletinWithTitle:(id)title message:(id)message actionURL:(id)l forPass:(id)pass playSound:(BOOL)sound notificationIdentifier:(id)identifier expirationDate:(id)date
{
  soundCopy = sound;
  dateCopy = date;
  identifierCopy = identifier;
  passCopy = pass;
  lCopy = l;
  messageCopy = message;
  titleCopy = title;
  v22 = pk_General_log(titleCopy);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

  if (v23)
  {
    v25 = pk_General_log(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection started insertBridgeBulletinWithTitle:message:actionURL:forPass:playSound:notificationIdentifier:expirationDate:", buf, 2u);
    }
  }

  v26 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:&__block_literal_global_84];
  [v26 insertBridgeBulletinWithTitle:titleCopy message:messageCopy actionURL:lCopy forPass:passCopy playSound:soundCopy notificationIdentifier:identifierCopy expirationDate:dateCopy];
}

void __135__NPKNanoPassDaemonConnection_insertBridgeBulletinWithTitle_message_actionURL_forPass_playSound_notificationIdentifier_expirationDate___block_invoke(uint64_t a1)
{
  v1 = pk_General_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);

  if (v2)
  {
    v4 = pk_General_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v5, 2u);
    }
  }
}

- (void)fetchIdentityProofingConfigurationForCountry:(id)country state:(id)state completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  stateCopy = state;
  countryCopy = country;
  v11 = pk_General_log(countryCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_General_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = _Block_copy(completionCopy);
      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection started fetchIdentityProofingConfigurationForCountry:state:completion %@", buf, 0xCu);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__NPKNanoPassDaemonConnection_fetchIdentityProofingConfigurationForCountry_state_completion___block_invoke;
  v21[3] = &unk_279945198;
  v16 = completionCopy;
  v22 = v16;
  v17 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __93__NPKNanoPassDaemonConnection_fetchIdentityProofingConfigurationForCountry_state_completion___block_invoke_85;
  v19[3] = &unk_2799457A0;
  v19[4] = self;
  v20 = v16;
  v18 = v16;
  [v17 fetchIdentityProofingConfigurationForCountry:countryCopy state:stateCopy completion:v19];
}

void __93__NPKNanoPassDaemonConnection_fetchIdentityProofingConfigurationForCountry_state_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v8, 2u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

void __93__NPKNanoPassDaemonConnection_fetchIdentityProofingConfigurationForCountry_state_completion___block_invoke_85(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_General_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection got response with configuration: %@, error: %@", &v12, 0x16u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }
}

- (id)_remoteObjectProxySynchronous:(BOOL)synchronous withFailureHandler:(id)handler
{
  synchronousCopy = synchronous;
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  remoteService = [(NPKNanoPassDaemonConnection *)self remoteService];
  v8 = [(NPKNanoPassDaemonConnection *)self _errorHandlerWithCompletion:handlerCopy];
  if (synchronousCopy)
  {
    [remoteService synchronousRemoteObjectProxyWithErrorHandler:v8];
  }

  else
  {
    [remoteService remoteObjectProxyWithErrorHandler:v8];
  }
  v9 = ;

  if (!v9)
  {
    v11 = pk_General_log(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v14 = pk_General_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = 136446978;
        v17 = "[NPKNanoPassDaemonConnection _remoteObjectProxySynchronous:withFailureHandler:]";
        v18 = 2082;
        v19 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKNanoPassDaemonConnection.m";
        v20 = 2048;
        v21 = 307;
        v22 = 1024;
        v23 = synchronousCopy;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: [NPKNanoPassDaemonConnection _remoteObjectProxySynchronous:withFailureHandler:] (synchronous:%d) would have returned nil)", &v16, 0x26u);
      }
    }

    _NPKAssertAbort();
  }

  return v9;
}

- (id)_errorHandlerWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__NPKNanoPassDaemonConnection__errorHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_279945218;
  v9 = completionCopy;
  v4 = completionCopy;
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  return v6;
}

void __59__NPKNanoPassDaemonConnection__errorHandlerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Error on NPKNanoPassDaemonConnection connection: %@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

- (void)_addLegacyExpressModeEnabledUserNotificationForPassUniqueID:(id)d completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = pk_General_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = dCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Handling legacy express mode enabled codepath for pass unique ID: %@", buf, 0xCu);
    }
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __102__NPKNanoPassDaemonConnection__addLegacyExpressModeEnabledUserNotificationForPassUniqueID_completion___block_invoke;
  v21[3] = &unk_279945198;
  v12 = completionCopy;
  v22 = v12;
  v13 = [(NPKNanoPassDaemonConnection *)self _remoteObjectProxySynchronous:0 withFailureHandler:v21];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __102__NPKNanoPassDaemonConnection__addLegacyExpressModeEnabledUserNotificationForPassUniqueID_completion___block_invoke_88;
  v16[3] = &unk_279945750;
  v19 = v12;
  v20 = 0;
  v17 = dCopy;
  selfCopy = self;
  v14 = v12;
  v15 = dCopy;
  [v13 addUserNotificationOfType:0 passUniqueID:v15 completion:v16];
}

void __102__NPKNanoPassDaemonConnection__addLegacyExpressModeEnabledUserNotificationForPassUniqueID_completion___block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: [NanoPassdXPC] Failed to create remoteObjectProxy", v8, 2u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }
}

void __102__NPKNanoPassDaemonConnection__addLegacyExpressModeEnabledUserNotificationForPassUniqueID_completion___block_invoke_88(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[7];
      v9 = a1[4];
      v11 = 134218498;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Connection finished addUserNotificationOfType: %lu, passUniqueID: %@, error?: %@", &v11, 0x20u);
    }
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

- (void)remoteService:(id)service didEstablishConnection:(id)connection
{
  v15 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  connectionCopy = connection;
  v7 = pk_General_log(connectionCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = serviceCopy;
      v13 = 2112;
      v14 = connectionCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Service %@ didEstablishConnection: %@", &v11, 0x16u);
    }
  }
}

- (void)remoteService:(id)service didInterruptConnection:(id)connection
{
  v15 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  connectionCopy = connection;
  v7 = pk_General_log(connectionCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = serviceCopy;
      v13 = 2112;
      v14 = connectionCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Service %@ didInterruptConnection: %@", &v11, 0x16u);
    }
  }
}

- (void)remoteServiceDidResume:(id)resume
{
  v10 = *MEMORY[0x277D85DE8];
  resumeCopy = resume;
  v4 = pk_General_log(resumeCopy);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = resumeCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Service didResume: %@", &v8, 0xCu);
    }
  }
}

- (void)remoteServiceDidSuspend:(id)suspend
{
  v10 = *MEMORY[0x277D85DE8];
  suspendCopy = suspend;
  v4 = pk_General_log(suspendCopy);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = suspendCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [NanoPassdXPC] Service didSuspend: %@", &v8, 0xCu);
    }
  }
}

@end