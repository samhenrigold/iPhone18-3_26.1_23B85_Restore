@interface NPKSubcredentialInvitationCoordinator
+ (BOOL)canAddSecureElementPassWithConfiguration:(id)configuration outError:(id *)error;
+ (BOOL)canAddSecureElementPassWithInvitation:(id)invitation;
- (BOOL)_isInvitationUniqueForPairedReaderIdentifier:(id)identifier;
- (NPKStandaloneFirstUnlockCoordinator)firstUnlockCoordinator;
- (NPKSubcredentialInvitationCoordinator)initWithCallbackQueue:(id)queue;
- (NPKWatchSubcredentialProvisioningService)subcredentialProvisioningService;
- (PKPaymentService)paymentService;
- (id)_errorWithCode:(int64_t)code message:(id)message;
- (void)_endProvisioningWithPassForInvitation:(id)invitation error:(id)error;
- (void)_fetchInvitationMatchingInvitation:(id)invitation completion:(id)completion;
- (void)_fetchInvitationWithIdentifier:(id)identifier completion:(id)completion;
- (void)_handleProvisioningAttemptForConfiguration:(id)configuration error:(id)error;
- (void)_invokeCompletionWithPassForInvitation:(id)invitation error:(id)error;
- (void)_makeConfigurationForInvitation:(id)invitation session:(id)session metadata:(id)metadata paymentWebService:(id)service completion:(id)completion;
- (void)_performBlockFollowingFirstUnlockWithBlock:(id)block;
- (void)_queue_accountAttestationAnonymizationSaltWithCompletion:(id)completion;
- (void)_queue_canAcceptInvitation:(id)invitation completion:(id)completion;
- (void)_queue_declineRelatedInvitationsIfNecessaryForInvitation:(id)invitation completion:(id)completion;
- (void)_queue_deviceContainsInvitationMatchingInvitation:(id)invitation withTimeout:(unint64_t)timeout completion:(id)completion;
- (void)_queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion:(id)completion;
- (void)_queue_listSubcredentialInvitationsWithCompletion:(id)completion;
- (void)_queue_registerCredentialsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)_queue_removeSharingInvitation:(id)invitation completion:(id)completion;
- (void)_queue_requestSubcredentialInvitation:(id)invitation fromIDSHandle:(id)handle completion:(id)completion;
- (void)_queue_revokeCredentialsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)_queue_setAccountAttestationAnonymizationSalt:(id)salt completion:(id)completion;
- (void)_queue_updateSubcredentialMetadataOnPass:(id)pass withCredential:(id)credential completion:(id)completion;
- (void)_setUpSharingSessionWithSubcredentialProvisioningController:(id)controller forInvitation:(id)invitation;
- (void)_setUpSubcredentialProvisioningController;
- (void)_startProvisioningForProvisioningController:(id)controller withConfiguration:(id)configuration;
- (void)accountAttestationAnonymizationSaltWithCompletion:(id)completion;
- (void)canAcceptInvitation:(id)invitation completion:(id)completion;
- (void)canAcceptInvitationOnRemoteDeviceForInvitation:(id)invitation completion:(id)completion;
- (void)declineRelatedInvitationsIfNecessaryForInvitation:(id)invitation completion:(id)completion;
- (void)deviceContainsInvitationMatchingInvitation:(id)invitation withTimeout:(unint64_t)timeout completion:(id)completion;
- (void)fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion:(id)completion;
- (void)listSubcredentialInvitationsWithCompletion:(id)completion;
- (void)registerCredentialsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)removeSharingInvitation:(id)invitation completion:(id)completion;
- (void)requestSubcredentialInvitation:(id)invitation completion:(id)completion;
- (void)revokeCredentialsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)setAccountAttestationAnonymizationSalt:(id)salt completion:(id)completion;
- (void)startProvisioningWithInvitation:(id)invitation metadata:(id)metadata completion:(id)completion;
- (void)startProvisioningWithInvitationIdentifier:(id)identifier metadata:(id)metadata completion:(id)completion;
- (void)startProvisioningWithMailboxAddress:(id)address activationCode:(id)code completion:(id)completion;
- (void)startSubcredentialProvisioningOnLocalDeviceMatchingInvitation:(id)invitation shouldFetchAnonymizationSaltFromRemoteDevice:(BOOL)device completion:(id)completion;
- (void)startSubcredentialProvisioningOnRemoteDeviceForInvitation:(id)invitation;
- (void)startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress:(id)address activationCode:(id)code;
- (void)subcredentialProvisioningController:(id)controller didFinishWithError:(id)error inState:(int64_t)state;
- (void)subcredentialProvisioningController:(id)controller didFinishWithPass:(id)pass;
- (void)updateSubcredentialMetadataOnPass:(id)pass withCredential:(id)credential completion:(id)completion;
@end

@implementation NPKSubcredentialInvitationCoordinator

- (NPKSubcredentialInvitationCoordinator)initWithCallbackQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = NPKSubcredentialInvitationCoordinator;
  v5 = [(NPKSubcredentialInvitationCoordinator *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.NPKSubcredentialInvitationCoordinator", 0);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v6;

    if (queueCopy)
    {
      v8 = queueCopy;
      callbackQueue = v5->_callbackQueue;
      v5->_callbackQueue = v8;
    }

    else
    {
      v10 = MEMORY[0x277D85CD0];
      v11 = MEMORY[0x277D85CD0];
      callbackQueue = v5->_callbackQueue;
      v5->_callbackQueue = v10;
    }
  }

  return v5;
}

- (PKPaymentService)paymentService
{
  paymentService = self->_paymentService;
  if (!paymentService)
  {
    v4 = objc_alloc_init(MEMORY[0x277D380F0]);
    v5 = self->_paymentService;
    self->_paymentService = v4;

    paymentService = self->_paymentService;
  }

  return paymentService;
}

- (NPKStandaloneFirstUnlockCoordinator)firstUnlockCoordinator
{
  firstUnlockCoordinator = self->_firstUnlockCoordinator;
  if (!firstUnlockCoordinator)
  {
    v4 = [NPKStandaloneFirstUnlockCoordinator alloc];
    internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
    v6 = [(NPKStandaloneFirstUnlockCoordinator *)v4 initWithQueue:internalQueue];
    v7 = self->_firstUnlockCoordinator;
    self->_firstUnlockCoordinator = v6;

    firstUnlockCoordinator = self->_firstUnlockCoordinator;
  }

  return firstUnlockCoordinator;
}

- (NPKWatchSubcredentialProvisioningService)subcredentialProvisioningService
{
  subcredentialProvisioningService = self->_subcredentialProvisioningService;
  if (!subcredentialProvisioningService)
  {
    v4 = objc_alloc_init(NPKWatchSubcredentialProvisioningService);
    v5 = self->_subcredentialProvisioningService;
    self->_subcredentialProvisioningService = v4;

    subcredentialProvisioningService = self->_subcredentialProvisioningService;
  }

  return subcredentialProvisioningService;
}

+ (BOOL)canAddSecureElementPassWithInvitation:(id)invitation
{
  v4 = MEMORY[0x277D37CF0];
  invitationCopy = invitation;
  v6 = objc_alloc_init(v4);
  [v6 setSupportedRadioTechnologies:{objc_msgSend(invitationCopy, "supportedRadioTechnologies")}];
  manufacturerIdentifier = [invitationCopy manufacturerIdentifier];
  [v6 setManufacturerIdentifier:manufacturerIdentifier];

  brandIdentifier = [invitationCopy brandIdentifier];

  [v6 setIssuerIdentifier:brandIdentifier];
  LOBYTE(self) = [self canAddSecureElementPassWithConfiguration:v6 outError:0];

  return self;
}

+ (BOOL)canAddSecureElementPassWithConfiguration:(id)configuration outError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v6 = objc_alloc_init(MEMORY[0x277D37FC0]);
    v7 = [v6 canAddSecureElementPassWithConfiguration:configurationCopy outError:error];
  }

  else
  {
    v8 = pk_General_log(0);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v15 = 138543618;
        v16 = v13;
        v17 = 2112;
        v18 = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: %{public}@: Expected to have a configuration but instead found %@!", &v15, 0x16u);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (void)canAcceptInvitation:(id)invitation completion:(id)completion
{
  invitationCopy = invitation;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__NPKSubcredentialInvitationCoordinator_canAcceptInvitation_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = invitationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = invitationCopy;
  dispatch_async(internalQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __72__NPKSubcredentialInvitationCoordinator_canAcceptInvitation_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = _Block_copy(*(a1 + 40));
      *buf = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Checking whether pass library can accept invitation: %@ completion: %@", buf, 0x20u);
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __72__NPKSubcredentialInvitationCoordinator_canAcceptInvitation_completion___block_invoke_60;
  v15 = &unk_279945A70;
  objc_copyWeak(&v17, (a1 + 48));
  v16 = *(a1 + 40);
  v11 = _Block_copy(&v12);
  [WeakRetained _queue_canAcceptInvitation:*(a1 + 32) completion:{v11, v12, v13, v14, v15}];

  objc_destroyWeak(&v17);
}

void __72__NPKSubcredentialInvitationCoordinator_canAcceptInvitation_completion___block_invoke_60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__NPKSubcredentialInvitationCoordinator_canAcceptInvitation_completion___block_invoke_2;
  block[3] = &unk_279945A48;
  block[4] = WeakRetained;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);
}

uint64_t __72__NPKSubcredentialInvitationCoordinator_canAcceptInvitation_completion___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = a1[5];
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with error: %@", &v10, 0x16u);
    }
  }

  return (*(a1[6] + 16))();
}

- (void)listSubcredentialInvitationsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__NPKSubcredentialInvitationCoordinator_listSubcredentialInvitationsWithCompletion___block_invoke;
  block[3] = &unk_279945468;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __84__NPKSubcredentialInvitationCoordinator_listSubcredentialInvitationsWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Listing subcredential invitations", buf, 0xCu);
    }
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __84__NPKSubcredentialInvitationCoordinator_listSubcredentialInvitationsWithCompletion___block_invoke_63;
  v13 = &unk_279945AC0;
  objc_copyWeak(&v15, (a1 + 40));
  v14 = *(a1 + 32);
  v9 = _Block_copy(&v10);
  [WeakRetained _queue_listSubcredentialInvitationsWithCompletion:{v9, v10, v11, v12, v13}];

  objc_destroyWeak(&v15);
}

void __84__NPKSubcredentialInvitationCoordinator_listSubcredentialInvitationsWithCompletion___block_invoke_63(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__NPKSubcredentialInvitationCoordinator_listSubcredentialInvitationsWithCompletion___block_invoke_2;
  block[3] = &unk_279945A48;
  block[4] = WeakRetained;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);
}

uint64_t __84__NPKSubcredentialInvitationCoordinator_listSubcredentialInvitationsWithCompletion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [*(a1 + 40) description];
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with invitations: %@", &v10, 0x16u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)startProvisioningWithInvitationIdentifier:(id)identifier metadata:(id)metadata completion:(id)completion
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke;
  aBlock[3] = &unk_279945B60;
  objc_copyWeak(&v24, &location);
  v11 = identifierCopy;
  v21 = v11;
  v12 = metadataCopy;
  v22 = v12;
  v13 = completionCopy;
  v23 = v13;
  v14 = _Block_copy(aBlock);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_5;
  block[3] = &unk_279945468;
  objc_copyWeak(&v19, &location);
  v18 = v14;
  v16 = v14;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = _Block_copy(*(a1 + 48));
      *buf = 138544130;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Begin provisioning with invitation identifier: %@ metadata: %@ completion: %@", buf, 0x2Au);
    }
  }

  [WeakRetained setCompletion:*(a1 + 48)];
  [WeakRetained _setUpSubcredentialProvisioningController];
  v12 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_65;
  v13[3] = &unk_279945B38;
  objc_copyWeak(&v15, (a1 + 56));
  v14 = *(a1 + 40);
  [WeakRetained _fetchInvitationWithIdentifier:v12 completion:v13];

  objc_destroyWeak(&v15);
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_2;
  v6[3] = &unk_279945B10;
  v6[4] = WeakRetained;
  objc_copyWeak(&v9, (a1 + 40));
  v5 = v3;
  v7 = v5;
  v8 = *(a1 + 32);
  [WeakRetained canAcceptInvitation:v5 completion:v6];

  objc_destroyWeak(&v9);
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] internalQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_3;
  v6[3] = &unk_279945308;
  objc_copyWeak(&v10, a1 + 7);
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v10);
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    [WeakRetained _handleProvisioningAttemptForConfiguration:0 error:?];
  }

  else
  {
    v4 = [WeakRetained subcredentialProvisioningController];
    [v3 _setUpSharingSessionWithSubcredentialProvisioningController:v4 forInvitation:*(a1 + 40)];

    v5 = *(a1 + 40);
    v6 = [v3 sharingSession];
    v7 = *(a1 + 48);
    v8 = [v3 _paymentWebService];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_4;
    v9[3] = &unk_279945AE8;
    objc_copyWeak(&v10, (a1 + 56));
    [v3 _makeConfigurationForInvitation:v5 session:v6 metadata:v7 paymentWebService:v8 completion:v9];

    objc_destroyWeak(&v10);
  }
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleProvisioningAttemptForConfiguration:v6 error:v5];
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitationIdentifier_metadata_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performBlockFollowingFirstUnlockWithBlock:*(a1 + 32)];
}

- (void)startProvisioningWithInvitation:(id)invitation metadata:(id)metadata completion:(id)completion
{
  invitationCopy = invitation;
  metadataCopy = metadata;
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke;
  aBlock[3] = &unk_279945B60;
  objc_copyWeak(&v24, &location);
  v11 = invitationCopy;
  v21 = v11;
  v12 = metadataCopy;
  v22 = v12;
  v13 = completionCopy;
  v23 = v13;
  v14 = _Block_copy(aBlock);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_4;
  block[3] = &unk_279945468;
  objc_copyWeak(&v19, &location);
  v18 = v14;
  v16 = v14;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = _Block_copy(*(a1 + 48));
      *buf = 138544130;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Begin provisioning with invitation: %@ metadata: %@ completion: %@", buf, 0x2Au);
    }
  }

  [WeakRetained setCompletion:*(a1 + 48)];
  [WeakRetained _setUpSubcredentialProvisioningController];
  if (*(a1 + 32))
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_68;
    v18 = &unk_279945B88;
    objc_copyWeak(&v20, (a1 + 56));
    v19 = *(a1 + 40);
    v12 = _Block_copy(&v15);
    v13 = [*(a1 + 32) type];
    if (v13)
    {
      if (v13 == 1)
      {
        (*(v12 + 2))(v12, *(a1 + 32), 0);
      }
    }

    else
    {
      [WeakRetained deviceContainsInvitationMatchingInvitation:*(a1 + 32) withTimeout:60 completion:v12];
    }

    objc_destroyWeak(&v20);
  }

  else
  {
    v14 = [WeakRetained _errorWithCode:0 message:@"Unable to start provisioning - insufficient information"];
    [WeakRetained _handleProvisioningAttemptForConfiguration:0 error:v14];
  }
}

void __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_2;
  block[3] = &unk_279945290;
  objc_copyWeak(&v10, (a1 + 40));
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v10);
}

void __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained subcredentialProvisioningController];
  [WeakRetained _setUpSharingSessionWithSubcredentialProvisioningController:v3 forInvitation:*(a1 + 32)];

  v4 = *(a1 + 32);
  v5 = [WeakRetained sharingSession];
  v6 = *(a1 + 40);
  v7 = [WeakRetained _paymentWebService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_3;
  v8[3] = &unk_279945AE8;
  objc_copyWeak(&v9, (a1 + 48));
  [WeakRetained _makeConfigurationForInvitation:v4 session:v5 metadata:v6 paymentWebService:v7 completion:v8];

  objc_destroyWeak(&v9);
}

void __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleProvisioningAttemptForConfiguration:v6 error:v5];
}

void __93__NPKSubcredentialInvitationCoordinator_startProvisioningWithInvitation_metadata_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performBlockFollowingFirstUnlockWithBlock:*(a1 + 32)];
}

- (void)deviceContainsInvitationMatchingInvitation:(id)invitation withTimeout:(unint64_t)timeout completion:(id)completion
{
  invitationCopy = invitation;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__NPKSubcredentialInvitationCoordinator_deviceContainsInvitationMatchingInvitation_withTimeout_completion___block_invoke;
  block[3] = &unk_279945C00;
  objc_copyWeak(v16, &location);
  v16[1] = timeout;
  v14 = invitationCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = invitationCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __107__NPKSubcredentialInvitationCoordinator_deviceContainsInvitationMatchingInvitation_withTimeout_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 56);
      v10 = *(a1 + 32);
      v11 = _Block_copy(*(a1 + 40));
      *buf = 138544130;
      v20 = v8;
      v21 = 2112;
      v22 = v10;
      v23 = 2048;
      v24 = v9;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Checking whether device contains invitation matching invitation: %@ timeout: %lu completion: %@", buf, 0x2Au);
    }
  }

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __107__NPKSubcredentialInvitationCoordinator_deviceContainsInvitationMatchingInvitation_withTimeout_completion___block_invoke_73;
  v16 = &unk_279945BD8;
  objc_copyWeak(&v18, (a1 + 48));
  v17 = *(a1 + 40);
  v12 = _Block_copy(&v13);
  [WeakRetained _queue_deviceContainsInvitationMatchingInvitation:*(a1 + 32) withTimeout:*(a1 + 56) completion:{v12, v13, v14, v15, v16}];

  objc_destroyWeak(&v18);
}

void __107__NPKSubcredentialInvitationCoordinator_deviceContainsInvitationMatchingInvitation_withTimeout_completion___block_invoke_73(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained callbackQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __107__NPKSubcredentialInvitationCoordinator_deviceContainsInvitationMatchingInvitation_withTimeout_completion___block_invoke_2;
  v11[3] = &unk_279945BB0;
  v11[4] = WeakRetained;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

uint64_t __107__NPKSubcredentialInvitationCoordinator_deviceContainsInvitationMatchingInvitation_withTimeout_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [*(a1 + 40) description];
      v9 = [*(a1 + 48) description];
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with invitation: %@ error: %@", &v11, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)accountAttestationAnonymizationSaltWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__NPKSubcredentialInvitationCoordinator_accountAttestationAnonymizationSaltWithCompletion___block_invoke;
  block[3] = &unk_279945468;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __91__NPKSubcredentialInvitationCoordinator_accountAttestationAnonymizationSaltWithCompletion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Fetching account attestation anonymization salt", buf, 0xCu);
    }
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __91__NPKSubcredentialInvitationCoordinator_accountAttestationAnonymizationSaltWithCompletion___block_invoke_74;
  v13 = &unk_279945C28;
  objc_copyWeak(&v15, (a1 + 40));
  v14 = *(a1 + 32);
  v9 = _Block_copy(&v10);
  [WeakRetained _queue_accountAttestationAnonymizationSaltWithCompletion:{v9, v10, v11, v12, v13}];

  objc_destroyWeak(&v15);
}

void __91__NPKSubcredentialInvitationCoordinator_accountAttestationAnonymizationSaltWithCompletion___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained callbackQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__NPKSubcredentialInvitationCoordinator_accountAttestationAnonymizationSaltWithCompletion___block_invoke_2;
  v11[3] = &unk_279945BB0;
  v11[4] = WeakRetained;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

uint64_t __91__NPKSubcredentialInvitationCoordinator_accountAttestationAnonymizationSaltWithCompletion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [*(a1 + 40) description];
      v9 = [*(a1 + 48) description];
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with anonymizationSalt: %@ error: %@", &v11, 0x20u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)setAccountAttestationAnonymizationSalt:(id)salt completion:(id)completion
{
  saltCopy = salt;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__NPKSubcredentialInvitationCoordinator_setAccountAttestationAnonymizationSalt_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = saltCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = saltCopy;
  dispatch_async(internalQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __91__NPKSubcredentialInvitationCoordinator_setAccountAttestationAnonymizationSalt_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      *buf = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Setting account attestation anonymization salt: %@", buf, 0x16u);
    }
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __91__NPKSubcredentialInvitationCoordinator_setAccountAttestationAnonymizationSalt_completion___block_invoke_76;
  v14 = &unk_279945A70;
  objc_copyWeak(&v16, (a1 + 48));
  v15 = *(a1 + 40);
  v10 = _Block_copy(&v11);
  [WeakRetained _queue_setAccountAttestationAnonymizationSalt:*(a1 + 32) completion:{v10, v11, v12, v13, v14}];

  objc_destroyWeak(&v16);
}

void __91__NPKSubcredentialInvitationCoordinator_setAccountAttestationAnonymizationSalt_completion___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__NPKSubcredentialInvitationCoordinator_setAccountAttestationAnonymizationSalt_completion___block_invoke_2;
  block[3] = &unk_279945A48;
  block[4] = WeakRetained;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);
}

uint64_t __91__NPKSubcredentialInvitationCoordinator_setAccountAttestationAnonymizationSalt_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [*(a1 + 40) description];
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with error: %@", &v10, 0x16u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)requestSubcredentialInvitation:(id)invitation completion:(id)completion
{
  invitationCopy = invitation;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__NPKSubcredentialInvitationCoordinator_requestSubcredentialInvitation_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = invitationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = invitationCopy;
  dispatch_async(internalQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __83__NPKSubcredentialInvitationCoordinator_requestSubcredentialInvitation_completion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      *buf = 138543618;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Requesting subcredential invitation: %@", buf, 0x16u);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__NPKSubcredentialInvitationCoordinator_requestSubcredentialInvitation_completion___block_invoke_77;
  aBlock[3] = &unk_279945C78;
  objc_copyWeak(&v18, (a1 + 48));
  v11 = *(a1 + 32);
  v10 = (a1 + 32);
  v16 = v11;
  v17 = v10[1];
  v12 = _Block_copy(aBlock);
  v13 = *v10;
  v14 = [*v10 originatorIDSHandle];
  [WeakRetained _queue_requestSubcredentialInvitation:v13 fromIDSHandle:v14 completion:v12];

  objc_destroyWeak(&v18);
}

void __83__NPKSubcredentialInvitationCoordinator_requestSubcredentialInvitation_completion___block_invoke_77(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [WeakRetained callbackQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__NPKSubcredentialInvitationCoordinator_requestSubcredentialInvitation_completion___block_invoke_2;
  v8[3] = &unk_279945C50;
  v8[4] = WeakRetained;
  v9 = a1[4];
  v6 = a1[5];
  v10 = v3;
  v11 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

uint64_t __83__NPKSubcredentialInvitationCoordinator_requestSubcredentialInvitation_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [*(a1 + 40) description];
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with invitation: %@", &v10, 0x16u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)updateSubcredentialMetadataOnPass:(id)pass withCredential:(id)credential completion:(id)completion
{
  passCopy = pass;
  credentialCopy = credential;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__NPKSubcredentialInvitationCoordinator_updateSubcredentialMetadataOnPass_withCredential_completion___block_invoke;
  block[3] = &unk_279945B60;
  objc_copyWeak(&v19, &location);
  v16 = passCopy;
  v17 = credentialCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = credentialCopy;
  v14 = passCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __101__NPKSubcredentialInvitationCoordinator_updateSubcredentialMetadataOnPass_withCredential_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = _Block_copy(*(a1 + 48));
      *buf = 138544130;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Updating metadata on pass: %@ with credential: %@ completion: %@", buf, 0x2Au);
    }
  }

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __101__NPKSubcredentialInvitationCoordinator_updateSubcredentialMetadataOnPass_withCredential_completion___block_invoke_78;
  v16 = &unk_279945CA0;
  objc_copyWeak(&v18, (a1 + 56));
  v17 = *(a1 + 48);
  v12 = _Block_copy(&v13);
  [WeakRetained _queue_updateSubcredentialMetadataOnPass:*(a1 + 32) withCredential:*(a1 + 40) completion:{v12, v13, v14, v15, v16}];

  objc_destroyWeak(&v18);
}

void __101__NPKSubcredentialInvitationCoordinator_updateSubcredentialMetadataOnPass_withCredential_completion___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__NPKSubcredentialInvitationCoordinator_updateSubcredentialMetadataOnPass_withCredential_completion___block_invoke_2;
  block[3] = &unk_279945A48;
  block[4] = WeakRetained;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v5, block);
}

uint64_t __101__NPKSubcredentialInvitationCoordinator_updateSubcredentialMetadataOnPass_withCredential_completion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [*(a1 + 40) description];
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with pass: %@", &v10, 0x16u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)registerCredentialsWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__NPKSubcredentialInvitationCoordinator_registerCredentialsWithIdentifiers_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = identifiersCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(internalQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __87__NPKSubcredentialInvitationCoordinator_registerCredentialsWithIdentifiers_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = _Block_copy(*(a1 + 40));
      *buf = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Registering credentials with identifiers: %@ completion: %@", buf, 0x20u);
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __87__NPKSubcredentialInvitationCoordinator_registerCredentialsWithIdentifiers_completion___block_invoke_80;
  v15 = &unk_279945CC8;
  objc_copyWeak(&v17, (a1 + 48));
  v16 = *(a1 + 40);
  v11 = _Block_copy(&v12);
  [WeakRetained _queue_registerCredentialsWithIdentifiers:*(a1 + 32) completion:{v11, v12, v13, v14, v15}];

  objc_destroyWeak(&v17);
}

void __87__NPKSubcredentialInvitationCoordinator_registerCredentialsWithIdentifiers_completion___block_invoke_80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained callbackQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__NPKSubcredentialInvitationCoordinator_registerCredentialsWithIdentifiers_completion___block_invoke_2;
  v11[3] = &unk_279945BB0;
  v11[4] = WeakRetained;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

uint64_t __87__NPKSubcredentialInvitationCoordinator_registerCredentialsWithIdentifiers_completion___block_invoke_2(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = a1[5];
      v9 = a1[6];
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with passes: %@ errors: %@", &v11, 0x20u);
    }
  }

  return (*(a1[7] + 16))();
}

- (void)revokeCredentialsWithIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__NPKSubcredentialInvitationCoordinator_revokeCredentialsWithIdentifiers_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = identifiersCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(internalQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __85__NPKSubcredentialInvitationCoordinator_revokeCredentialsWithIdentifiers_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = _Block_copy(*(a1 + 40));
      *buf = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Revoking credentials with identifiers: %@ completion: %@", buf, 0x20u);
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __85__NPKSubcredentialInvitationCoordinator_revokeCredentialsWithIdentifiers_completion___block_invoke_82;
  v15 = &unk_279945D18;
  objc_copyWeak(&v17, (a1 + 48));
  v16 = *(a1 + 40);
  v11 = _Block_copy(&v12);
  [WeakRetained _queue_revokeCredentialsWithIdentifiers:*(a1 + 32) completion:{v11, v12, v13, v14, v15}];

  objc_destroyWeak(&v17);
}

void __85__NPKSubcredentialInvitationCoordinator_revokeCredentialsWithIdentifiers_completion___block_invoke_82(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NPKSubcredentialInvitationCoordinator_revokeCredentialsWithIdentifiers_completion___block_invoke_2;
  block[3] = &unk_279945CF0;
  block[4] = WeakRetained;
  v8 = a2;
  v7 = *(a1 + 32);
  dispatch_async(v5, block);
}

uint64_t __85__NPKSubcredentialInvitationCoordinator_revokeCredentialsWithIdentifiers_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = v7;
      v9 = @"NO";
      if (*(a1 + 48))
      {
        v9 = @"YES";
      }

      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with success: %@", &v11, 0x16u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)removeSharingInvitation:(id)invitation completion:(id)completion
{
  invitationCopy = invitation;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__NPKSubcredentialInvitationCoordinator_removeSharingInvitation_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = invitationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = invitationCopy;
  dispatch_async(internalQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __76__NPKSubcredentialInvitationCoordinator_removeSharingInvitation_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = _Block_copy(*(a1 + 40));
      *buf = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Removing sharing invitation: %@ completion: %@", buf, 0x20u);
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __76__NPKSubcredentialInvitationCoordinator_removeSharingInvitation_completion___block_invoke_90;
  v15 = &unk_279945D18;
  objc_copyWeak(&v17, (a1 + 48));
  v16 = *(a1 + 40);
  v11 = _Block_copy(&v12);
  [WeakRetained _queue_removeSharingInvitation:*(a1 + 32) completion:{v11, v12, v13, v14, v15}];

  objc_destroyWeak(&v17);
}

void __76__NPKSubcredentialInvitationCoordinator_removeSharingInvitation_completion___block_invoke_90(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NPKSubcredentialInvitationCoordinator_removeSharingInvitation_completion___block_invoke_2;
  block[3] = &unk_279945CF0;
  block[4] = WeakRetained;
  v8 = a2;
  v7 = *(a1 + 32);
  dispatch_async(v5, block);
}

uint64_t __76__NPKSubcredentialInvitationCoordinator_removeSharingInvitation_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = v7;
      v9 = @"NO";
      if (*(a1 + 48))
      {
        v9 = @"YES";
      }

      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with success: %@", &v11, 0x16u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)declineRelatedInvitationsIfNecessaryForInvitation:(id)invitation completion:(id)completion
{
  invitationCopy = invitation;
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __102__NPKSubcredentialInvitationCoordinator_declineRelatedInvitationsIfNecessaryForInvitation_completion___block_invoke;
  v11[3] = &unk_279945A98;
  objc_copyWeak(&v14, &location);
  v12 = invitationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = invitationCopy;
  dispatch_async(internalQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __102__NPKSubcredentialInvitationCoordinator_declineRelatedInvitationsIfNecessaryForInvitation_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = _Block_copy(*(a1 + 40));
      *buf = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Declining related invitations if necessary for invitation: %@ completion: %@", buf, 0x20u);
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __102__NPKSubcredentialInvitationCoordinator_declineRelatedInvitationsIfNecessaryForInvitation_completion___block_invoke_91;
  v15 = &unk_279945D18;
  objc_copyWeak(&v17, (a1 + 48));
  v16 = *(a1 + 40);
  v11 = _Block_copy(&v12);
  [WeakRetained _queue_declineRelatedInvitationsIfNecessaryForInvitation:*(a1 + 32) completion:{v11, v12, v13, v14, v15}];

  objc_destroyWeak(&v17);
}

void __102__NPKSubcredentialInvitationCoordinator_declineRelatedInvitationsIfNecessaryForInvitation_completion___block_invoke_91(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__NPKSubcredentialInvitationCoordinator_declineRelatedInvitationsIfNecessaryForInvitation_completion___block_invoke_2;
  block[3] = &unk_279945CF0;
  block[4] = WeakRetained;
  v8 = a2;
  v7 = *(a1 + 32);
  dispatch_async(v5, block);
}

uint64_t __102__NPKSubcredentialInvitationCoordinator_declineRelatedInvitationsIfNecessaryForInvitation_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = v7;
      v9 = @"NO";
      if (*(a1 + 48))
      {
        v9 = @"YES";
      }

      v11 = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with didDeclineInvitations: %@", &v11, 0x16u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __119__NPKSubcredentialInvitationCoordinator_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke;
  block[3] = &unk_279945468;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __119__NPKSubcredentialInvitationCoordinator_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = _Block_copy(*(a1 + 32));
      *buf = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Initializing account attestation anonymization salt if necessary with completion: %@", buf, 0x16u);
    }
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __119__NPKSubcredentialInvitationCoordinator_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke_92;
  v14 = &unk_279945C28;
  objc_copyWeak(&v16, (a1 + 40));
  v15 = *(a1 + 32);
  v10 = _Block_copy(&v11);
  [WeakRetained _queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion:{v10, v11, v12, v13, v14}];

  objc_destroyWeak(&v16);
}

void __119__NPKSubcredentialInvitationCoordinator_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained callbackQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __119__NPKSubcredentialInvitationCoordinator_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke_2;
  v11[3] = &unk_279945BB0;
  v11[4] = WeakRetained;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, v11);
}

uint64_t __119__NPKSubcredentialInvitationCoordinator_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke_2(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = a1[5];
      v9 = a1[6];
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Invoking completion with anonymization salt: %@ error: %@", &v11, 0x20u);
    }
  }

  return (*(a1[7] + 16))();
}

- (void)canAcceptInvitationOnRemoteDeviceForInvitation:(id)invitation completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  completionCopy = completion;
  v8 = pk_Payment_log(completionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = invitationCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Sending can accept invitation on remote device request for invitation: %@", &v15, 0x16u);
    }
  }

  subcredentialProvisioningService = [(NPKSubcredentialInvitationCoordinator *)self subcredentialProvisioningService];
  [subcredentialProvisioningService sendCanAcceptInvitationOnRemoteDeviceRequestForInvitation:invitationCopy completion:completionCopy];
}

- (void)startSubcredentialProvisioningOnRemoteDeviceForInvitation:(id)invitation
{
  invitationCopy = invitation;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __99__NPKSubcredentialInvitationCoordinator_startSubcredentialProvisioningOnRemoteDeviceForInvitation___block_invoke;
  v6[3] = &unk_279945D40;
  objc_copyWeak(&v8, &location);
  v5 = invitationCopy;
  v7 = v5;
  [(NPKSubcredentialInvitationCoordinator *)self accountAttestationAnonymizationSaltWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __99__NPKSubcredentialInvitationCoordinator_startSubcredentialProvisioningOnRemoteDeviceForInvitation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!v5 || v6)
  {
    v11 = pk_General_log(WeakRetained);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      if (!v12)
      {
        goto LABEL_13;
      }

      v14 = pk_General_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v21 = 138543618;
        v22 = v16;
        v23 = 2112;
        v24 = v6;
        v17 = "Warning: %{public}@: Expected to initiate subcredential provisioning on the remote device, but encountered an error: %@";
        v18 = v14;
        v19 = 22;
LABEL_11:
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, v17, &v21, v19);
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_13;
      }

      v14 = pk_General_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v16 = NSStringFromClass(v20);
        v21 = 138543874;
        v22 = v16;
        v23 = 2112;
        v24 = 0;
        v25 = 2112;
        v26 = v6;
        v17 = "Warning: %{public}@: Expected to initiate subcredential provisioning on the remote device, but failed to obtain the anonymizationSalt: %@ error: %@";
        v18 = v14;
        v19 = 32;
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  v9 = objc_alloc_init(MEMORY[0x277D37D68]);
  [v9 setAnonymizationSalt:v5];
  v10 = [v8 subcredentialProvisioningService];
  [v10 sendAcceptSubcredentialProvisioningRequestForInvitation:*(a1 + 32) metadata:v9];

LABEL_13:
}

- (void)startProvisioningWithMailboxAddress:(id)address activationCode:(id)code completion:(id)completion
{
  addressCopy = address;
  codeCopy = code;
  completionCopy = completion;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithMailboxAddress_activationCode_completion___block_invoke;
  aBlock[3] = &unk_279945D90;
  objc_copyWeak(&v25, &location);
  v11 = addressCopy;
  v21 = v11;
  v12 = codeCopy;
  v22 = v12;
  v13 = completionCopy;
  selfCopy = self;
  v24 = v13;
  v14 = _Block_copy(aBlock);
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithMailboxAddress_activationCode_completion___block_invoke_98;
  v17[3] = &unk_279945468;
  objc_copyWeak(&v19, &location);
  v18 = v14;
  v16 = v14;
  dispatch_async(internalQueue, v17);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithMailboxAddress_activationCode_completion___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = _Block_copy(*(a1 + 56));
      *buf = 138544131;
      v24 = v8;
      v25 = 2113;
      v26 = v9;
      v27 = 2113;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Begin provisioning with mailbox address: %{private}@, activation code: %{private}@, completion: %@", buf, 0x2Au);
    }
  }

  [WeakRetained setCompletion:*(a1 + 56)];
  if ([*(a1 + 32) length])
  {
    v12 = objc_alloc_init(MEMORY[0x277D380F0]);
    v13 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithMailboxAddress_activationCode_completion___block_invoke_94;
    v17[3] = &unk_279945D68;
    v18 = v13;
    v19 = WeakRetained;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v20 = v14;
    v21 = v15;
    v22 = v16;
    [v12 retrieveShareInvitationForMailboxAddress:v18 completion:v17];
  }

  else
  {
    v12 = [WeakRetained _errorWithCode:0 message:@"Unable to start provisioning - insufficient information"];
    [WeakRetained _handleProvisioningAttemptForConfiguration:0 error:v12];
  }
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithMailboxAddress_activationCode_completion___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  isKindOfClass = a3;
  v7 = isKindOfClass;
  if (v5 && !isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v8 = MEMORY[0x277D37D60];
    v9 = v5;
    v10 = [[v8 alloc] initWithCrossPlatformInvitation:v9];
    [v10 setActivationCode:*(a1 + 48)];
    [*(a1 + 56) startProvisioningWithInvitation:v10 metadata:0 completion:*(a1 + 64)];
  }

  else
  {
    v11 = pk_General_log(isKindOfClass);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v14 = pk_General_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v16 = 138478339;
        v17 = v5;
        v18 = 2113;
        v19 = v15;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_ERROR, "Error: Unable to start provisioning for invitation: %{private}@. mailboxAddress: %{private}@. Error: %@", &v16, 0x20u);
      }
    }

    [*(a1 + 40) _handleProvisioningAttemptForConfiguration:0 error:v7];
  }
}

void __103__NPKSubcredentialInvitationCoordinator_startProvisioningWithMailboxAddress_activationCode_completion___block_invoke_98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performBlockFollowingFirstUnlockWithBlock:*(a1 + 32)];
}

- (void)startSubcredentialProvisioningOnRemoteDeviceForMailboxAddress:(id)address activationCode:(id)code
{
  v17 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  codeCopy = code;
  if ([addressCopy length])
  {
    subcredentialProvisioningService = [(NPKSubcredentialInvitationCoordinator *)self subcredentialProvisioningService];
    [subcredentialProvisioningService sendAcceptSubcredentialProvisioningRequestForMailboxAddress:addressCopy activationCode:codeCopy];
  }

  else
  {
    v9 = pk_General_log(0);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = pk_General_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = 138543362;
        v16 = v14;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to initiate subcredential provisioning on the remote device, but failed to obtain the mailboxAddress.", &v15, 0xCu);
      }
    }
  }
}

- (void)startSubcredentialProvisioningOnLocalDeviceMatchingInvitation:(id)invitation shouldFetchAnonymizationSaltFromRemoteDevice:(BOOL)device completion:(id)completion
{
  deviceCopy = device;
  v55 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  completionCopy = completion;
  v10 = pk_Payment_log(completionCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543874;
      v50 = v15;
      v51 = 2112;
      v52 = invitationCopy;
      v53 = 2048;
      type = [invitationCopy type];
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Start local device provisioning with invitation: %@ of type %lu", buf, 0x20u);
    }
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __159__NPKSubcredentialInvitationCoordinator_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke;
  aBlock[3] = &unk_279945DE0;
  objc_copyWeak(&v45, &location);
  v16 = invitationCopy;
  v42 = v16;
  v17 = completionCopy;
  selfCopy = self;
  v44 = v17;
  v18 = _Block_copy(aBlock);
  if (deviceCopy)
  {
    subcredentialProvisioningService = [(NPKSubcredentialInvitationCoordinator *)self subcredentialProvisioningService];
    isPairedDeviceConnected = [subcredentialProvisioningService isPairedDeviceConnected];

    if (isPairedDeviceConnected)
    {
      v22 = pk_General_log(v21);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

      if (v23)
      {
        v25 = pk_General_log(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          *buf = 138543362;
          v50 = v27;
          _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Remote device is connected.", buf, 0xCu);
        }
      }

      subcredentialProvisioningService2 = [(NPKSubcredentialInvitationCoordinator *)self subcredentialProvisioningService];
      [subcredentialProvisioningService2 fetchAccountAttestationAnonymizationSaltOnRemoteDeviceWithCompletion:v18];
    }

    else
    {
      v29 = pk_General_log(v21);
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

      if (v30)
      {
        v32 = pk_General_log(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          *buf = 138543362;
          v50 = v34;
          _os_log_impl(&dword_25B300000, v32, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Remote device is not connected; failing immediately...", buf, 0xCu);
        }
      }

      v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v36 = [v35 localizedStringForKey:@"COMPANION_UNREACHABLE_ALERT_TITLE" value:&stru_286C934F8 table:@"NanoPassKit"];
      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"COMPANION_UNREACHABLE_ALERT_MESSAGE" value:&stru_286C934F8 table:@"NanoPassKit"];
      subcredentialProvisioningService2 = PKDisplayableErrorCustom();

      v47 = *MEMORY[0x277CCA7E8];
      v48 = subcredentialProvisioningService2;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v40 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D389E0] code:19 userInfo:v39];
      v18[2](v18, 0, v40);
    }
  }

  else
  {
    [(NPKSubcredentialInvitationCoordinator *)self fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion:v18];
  }

  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);
}

void __159__NPKSubcredentialInvitationCoordinator_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (!v5 || v6)
  {
    if (a1[6])
    {
      if (!v6)
      {
        if (v5)
        {
          v10 = @"An unknown error occurred!";
          v11 = 0;
        }

        else
        {
          v10 = @"Unable to start provisioning on local device without an anonymization salt";
          v11 = 3;
        }

        v6 = [a1[5] _errorWithCode:v11 message:v10];
      }

      (*(a1[6] + 2))();
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D37D68]);
    [v8 setAnonymizationSalt:v5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __159__NPKSubcredentialInvitationCoordinator_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke_2;
    v12[3] = &unk_279945DB8;
    objc_copyWeak(&v16, a1 + 7);
    v13 = a1[4];
    v9 = v8;
    v14 = v9;
    v15 = a1[6];
    [WeakRetained setAccountAttestationAnonymizationSalt:v5 completion:v12];

    objc_destroyWeak(&v16);
    v6 = 0;
  }
}

void __159__NPKSubcredentialInvitationCoordinator_startSubcredentialProvisioningOnLocalDeviceMatchingInvitation_shouldFetchAnonymizationSaltFromRemoteDevice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [WeakRetained startProvisioningWithInvitation:*(a1 + 32) metadata:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)subcredentialProvisioningController:(id)controller didFinishWithError:(id)error inState:(int64_t)state
{
  controllerCopy = controller;
  errorCopy = error;
  objc_initWeak(&location, self);
  callbackQueue = [(NPKSubcredentialInvitationCoordinator *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__NPKSubcredentialInvitationCoordinator_subcredentialProvisioningController_didFinishWithError_inState___block_invoke;
  block[3] = &unk_279945E08;
  objc_copyWeak(v16, &location);
  v14 = controllerCopy;
  v15 = errorCopy;
  v16[1] = state;
  v11 = errorCopy;
  v12 = controllerCopy;
  dispatch_async(callbackQueue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __104__NPKSubcredentialInvitationCoordinator_subcredentialProvisioningController_didFinishWithError_inState___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(a1 + 56);
      v12 = 138544130;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2048;
      v19 = v11;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Subcredential provisioning controller %@ did finish with error: %@ in state: %lu", &v12, 0x2Au);
    }
  }

  [WeakRetained _endProvisioningWithPassForInvitation:0 error:*(a1 + 40)];
}

- (void)subcredentialProvisioningController:(id)controller didFinishWithPass:(id)pass
{
  controllerCopy = controller;
  passCopy = pass;
  objc_initWeak(&location, self);
  callbackQueue = [(NPKSubcredentialInvitationCoordinator *)self callbackQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__NPKSubcredentialInvitationCoordinator_subcredentialProvisioningController_didFinishWithPass___block_invoke;
  v11[3] = &unk_279945290;
  objc_copyWeak(&v14, &location);
  v12 = controllerCopy;
  v13 = passCopy;
  v9 = passCopy;
  v10 = controllerCopy;
  dispatch_async(callbackQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __95__NPKSubcredentialInvitationCoordinator_subcredentialProvisioningController_didFinishWithPass___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = 138543874;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Subcredential provisioning controller %@ did finish with pass: %@", &v11, 0x20u);
    }
  }

  [WeakRetained _endProvisioningWithPassForInvitation:*(a1 + 40) error:0];
}

- (void)_queue_canAcceptInvitation:(id)invitation completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  completionCopy = completion;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  _paymentWebService = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  targetDevice = [_paymentWebService targetDevice];

  v11 = objc_opt_respondsToSelector();
  if (v11)
  {
    _paymentWebService2 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [targetDevice paymentWebService:_paymentWebService2 canAcceptInvitation:invitationCopy withCompletionV2:completionCopy];
LABEL_9:

    goto LABEL_10;
  }

  v13 = pk_General_log(v11);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_General_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = 138543362;
      v20 = v18;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:canAcceptInvitation:withCompletionV2:]", &v19, 0xCu);
    }
  }

  if (completionCopy)
  {
    _paymentWebService2 = [(NPKSubcredentialInvitationCoordinator *)self _errorWithCode:1 message:@"Unable to attempt to accept invitation"];
    completionCopy[2](completionCopy, _paymentWebService2);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_queue_listSubcredentialInvitationsWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  _paymentWebService = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  targetDevice = [_paymentWebService targetDevice];

  v8 = objc_opt_respondsToSelector();
  if (v8)
  {
    _paymentWebService2 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [targetDevice paymentWebService:_paymentWebService2 subcredentialInvitationsWithCompletion:completionCopy];
  }

  else
  {
    v10 = pk_General_log(v8);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_General_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = 138543362;
        v17 = v15;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:subcredentialInvitationsWithCompletion:]", &v16, 0xCu);
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)_queue_deviceContainsInvitationMatchingInvitation:(id)invitation withTimeout:(unint64_t)timeout completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  completionCopy = completion;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  _paymentWebService = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  targetDevice = [_paymentWebService targetDevice];

  v13 = objc_opt_respondsToSelector();
  if (v13)
  {
    _paymentWebService2 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [targetDevice paymentWebService:_paymentWebService2 matchingInvitationOnDevice:invitationCopy withTimeout:timeout completion:completionCopy];
LABEL_9:

    goto LABEL_10;
  }

  v15 = pk_General_log(v13);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v18 = pk_General_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = 138543362;
      v22 = v20;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:matchingInvitationOnDevice:withTimeout:completion:]", &v21, 0xCu);
    }
  }

  if (completionCopy)
  {
    _paymentWebService2 = [(NPKSubcredentialInvitationCoordinator *)self _errorWithCode:2 message:@"Unable to check whether device has matching invitation"];
    completionCopy[2](completionCopy, 0, _paymentWebService2);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_queue_accountAttestationAnonymizationSaltWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  _paymentWebService = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  targetDevice = [_paymentWebService targetDevice];

  v8 = objc_opt_respondsToSelector();
  if (v8)
  {
    _paymentWebService2 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [targetDevice paymentWebService:_paymentWebService2 accountAttestationAnonymizationSaltWithCompletion:completionCopy];
LABEL_9:

    goto LABEL_10;
  }

  v10 = pk_General_log(v8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:accountAttestationAnonymizationSaltWithCompletion:]", &v16, 0xCu);
    }
  }

  if (completionCopy)
  {
    _paymentWebService2 = [(NPKSubcredentialInvitationCoordinator *)self _errorWithCode:3 message:@"Unable to fetch account attestation"];
    completionCopy[2](completionCopy, 0, _paymentWebService2);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_queue_setAccountAttestationAnonymizationSalt:(id)salt completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  saltCopy = salt;
  completionCopy = completion;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  _paymentWebService = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  targetDevice = [_paymentWebService targetDevice];

  v11 = objc_opt_respondsToSelector();
  if (v11)
  {
    _paymentWebService2 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [targetDevice paymentWebService:_paymentWebService2 setAccountAttestationAnonymizationSalt:saltCopy withCompletion:completionCopy];
LABEL_9:

    goto LABEL_10;
  }

  v13 = pk_General_log(v11);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_General_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = 138543362;
      v20 = v18;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:setAccountAttestationAnonymizationSalt:withCompletion:]", &v19, 0xCu);
    }
  }

  if (completionCopy)
  {
    _paymentWebService2 = [(NPKSubcredentialInvitationCoordinator *)self _errorWithCode:0 message:@"Unable to set anonymiztion salt for account attestaion"];
    completionCopy[2](completionCopy, _paymentWebService2);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_queue_requestSubcredentialInvitation:(id)invitation fromIDSHandle:(id)handle completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  completionCopy = completion;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  _paymentWebService = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  targetDevice = [_paymentWebService targetDevice];

  v12 = objc_opt_respondsToSelector();
  if (v12)
  {
    _paymentWebService2 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [targetDevice paymentWebService:_paymentWebService2 requestSubcredentialInvitation:invitationCopy completion:completionCopy];
LABEL_9:

    goto LABEL_10;
  }

  v14 = pk_General_log(v12);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v17 = pk_General_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = 138543362;
      v21 = v19;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:requestSubcredentialInvitation:completion:]", &v20, 0xCu);
    }
  }

  if (completionCopy)
  {
    _paymentWebService2 = [(NPKSubcredentialInvitationCoordinator *)self _errorWithCode:2 message:@"Unable to request new invitation"];
    completionCopy[2](completionCopy, _paymentWebService2);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_queue_updateSubcredentialMetadataOnPass:(id)pass withCredential:(id)credential completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  credentialCopy = credential;
  completionCopy = completion;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  _paymentWebService = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
  targetDevice = [_paymentWebService targetDevice];

  v14 = objc_opt_respondsToSelector();
  if (v14)
  {
    _paymentWebService2 = [(NPKSubcredentialInvitationCoordinator *)self _paymentWebService];
    [targetDevice paymentWebService:_paymentWebService2 updateMetadataOnPass:passCopy withCredential:credentialCopy completion:completionCopy];
  }

  else
  {
    v16 = pk_General_log(v14);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v19 = pk_General_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = 138543362;
        v23 = v21;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Target device does not respond to -[paymentWebService:updateMetadataOnPass:withCredential:completion:]", &v22, 0xCu);
      }
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)_queue_registerCredentialsWithIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  identifiersCopy = identifiers;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  paymentService = [(NPKSubcredentialInvitationCoordinator *)self paymentService];
  [paymentService registerCredentialsWithIdentifiers:identifiersCopy completion:completionCopy];
}

- (void)_queue_revokeCredentialsWithIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  identifiersCopy = identifiers;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  paymentService = [(NPKSubcredentialInvitationCoordinator *)self paymentService];
  [paymentService revokeCredentialsWithIdentifiers:identifiersCopy completion:completionCopy];
}

- (void)_queue_removeSharingInvitation:(id)invitation completion:(id)completion
{
  completionCopy = completion;
  invitationCopy = invitation;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  paymentService = [(NPKSubcredentialInvitationCoordinator *)self paymentService];
  [paymentService removeSharingInvitation:invitationCopy withCompletion:completionCopy];
}

- (void)_queue_declineRelatedInvitationsIfNecessaryForInvitation:(id)invitation completion:(id)completion
{
  completionCopy = completion;
  invitationCopy = invitation;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  paymentService = [(NPKSubcredentialInvitationCoordinator *)self paymentService];
  [paymentService declineRelatedSharingInvitationsIfNecessary:invitationCopy withCompletion:completionCopy];
}

- (void)_queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __126__NPKSubcredentialInvitationCoordinator__queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke;
  v7[3] = &unk_279945C28;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [(NPKSubcredentialInvitationCoordinator *)self _queue_accountAttestationAnonymizationSaltWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __126__NPKSubcredentialInvitationCoordinator__queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!v5 || v6)
  {
    if (v6)
    {
      v16 = pk_General_log(WeakRetained);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v19 = pk_General_log(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          *buf = 138543618;
          v35 = v21;
          v36 = 2112;
          v37 = v6;
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Failed to get anonymization salt: %@. Proceeding anyway...", buf, 0x16u);
        }
      }
    }

    v22 = [MEMORY[0x277D37CC8] createAnonymizationSalt];
    v23 = pk_General_log(v22);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

    if (v24)
    {
      v26 = pk_General_log(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138543362;
        v35 = v28;
        _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: No salt found, setting default salt", buf, 0xCu);
      }
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __126__NPKSubcredentialInvitationCoordinator__queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke_150;
    v30[3] = &unk_279945C78;
    objc_copyWeak(&v33, (a1 + 40));
    v29 = v22;
    v31 = v29;
    v32 = *(a1 + 32);
    [v8 setAccountAttestationAnonymizationSalt:v29 completion:v30];

    objc_destroyWeak(&v33);
  }

  else
  {
    v9 = pk_General_log(WeakRetained);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = pk_General_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v35 = v14;
        v36 = 2112;
        v37 = v5;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Found previously established anonymization salt: %@", buf, 0x16u);
      }
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      (*(v15 + 16))(v15, v5, 0);
    }
  }
}

void __126__NPKSubcredentialInvitationCoordinator__queue_fetchOrInitializeAccountAttestationAnonymizationSaltIfNecessaryWithCompletion___block_invoke_150(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = pk_General_log(WeakRetained);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 32);
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Set default salt with salt: %@ error: %@", &v13, 0x20u);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, *(a1 + 32), v3);
  }
}

- (void)_setUpSubcredentialProvisioningController
{
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v4 = objc_alloc_init(MEMORY[0x277D382E0]);
  [(NPKSubcredentialInvitationCoordinator *)self setSubcredentialProvisioningController:v4];

  subcredentialProvisioningController = [(NPKSubcredentialInvitationCoordinator *)self subcredentialProvisioningController];
  [subcredentialProvisioningController setDelegate:self];
}

- (void)_setUpSharingSessionWithSubcredentialProvisioningController:(id)controller forInvitation:(id)invitation
{
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  invitationCopy = invitation;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (controllerCopy && invitationCopy)
  {
    if ([invitationCopy type] == 1)
    {
      [MEMORY[0x277D37D70] createPendingSessionWithDelegate:controllerCopy];
    }

    else
    {
      [MEMORY[0x277D37D70] createSessionWithDelegate:controllerCopy];
    }
    v13 = ;
    [(NPKSubcredentialInvitationCoordinator *)self setSharingSession:v13];
LABEL_10:

    goto LABEL_11;
  }

  v10 = pk_General_log(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = 138543618;
      v17 = v15;
      v18 = 2112;
      v19 = controllerCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to find a subcredential provisioning controller, but instead found nil!: %@", &v16, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (BOOL)_isInvitationUniqueForPairedReaderIdentifier:(id)identifier
{
  v49 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = objc_alloc_init(MEMORY[0x277D37FC0]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  passes = [v4 passes];
  v6 = [passes countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(passes);
        }

        paymentPass = [*(*(&v36 + 1) + 8 * i) paymentPass];
        pairedTerminalIdentifier = [paymentPass pairedTerminalIdentifier];
        v12 = pairedTerminalIdentifier;
        if (pairedTerminalIdentifier && ![(__CFString *)pairedTerminalIdentifier caseInsensitiveCompare:identifierCopy])
        {
          v14 = pk_General_log(0);
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

          if (v15)
          {
            v17 = pk_General_log(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = objc_opt_class();
              v19 = NSStringFromClass(v18);
              uniqueID = [paymentPass uniqueID];
              *buf = 138544130;
              v41 = v19;
              v42 = 2112;
              v43 = identifierCopy;
              v44 = 2112;
              v45 = v12;
              v46 = 2112;
              v47 = uniqueID;
              _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: The invitation's paired reader identifier (%@) matches the paired reader identifier (%@) of pass with unique ID %@", buf, 0x2Au);
            }
          }

          devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];
          [devicePrimaryPaymentApplication state];
          IsPersonalized = PKPaymentApplicationStateIsPersonalized();

          effectiveContactlessPaymentApplicationState = [paymentPass effectiveContactlessPaymentApplicationState];
          v24 = pk_General_log(effectiveContactlessPaymentApplicationState);
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

          if (v25)
          {
            v27 = pk_General_log(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = objc_opt_class();
              v29 = NSStringFromClass(v28);
              uniqueID2 = [paymentPass uniqueID];
              v31 = uniqueID2;
              v32 = @"YES";
              *buf = 138544130;
              v41 = v29;
              if (IsPersonalized)
              {
                v33 = @"YES";
              }

              else
              {
                v33 = @"NO";
              }

              if (effectiveContactlessPaymentApplicationState != 2)
              {
                v32 = @"NO";
              }

              v42 = 2112;
              v43 = uniqueID2;
              v44 = 2112;
              v45 = v33;
              v46 = 2112;
              v47 = v32;
              _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Pass with unique ID %@ is personalized: %@ personalizing: %@", buf, 0x2Au);
            }
          }

          if (IsPersonalized)
          {
            v34 = 1;
          }

          else
          {
            v34 = effectiveContactlessPaymentApplicationState == 2;
          }

          v13 = !v34;

          goto LABEL_31;
        }
      }

      v7 = [passes countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_31:

  return v13;
}

- (void)_fetchInvitationWithIdentifier:(id)identifier completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (completionCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __83__NPKSubcredentialInvitationCoordinator__fetchInvitationWithIdentifier_completion___block_invoke;
    v16[3] = &unk_279945E58;
    v17 = identifierCopy;
    v18 = completionCopy;
    [(NPKSubcredentialInvitationCoordinator *)self listSubcredentialInvitationsWithCompletion:v16];

    v10 = v17;
  }

  else
  {
    v11 = pk_General_log(v9);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (!v12)
    {
      goto LABEL_4;
    }

    v10 = pk_General_log(v13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = 0;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to return an invitation, but no completion block was provided: %@", buf, 0x16u);
    }
  }

LABEL_4:
}

void __83__NPKSubcredentialInvitationCoordinator__fetchInvitationWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__NPKSubcredentialInvitationCoordinator__fetchInvitationWithIdentifier_completion___block_invoke_154;
  v6[3] = &unk_279945E30;
  v7 = *(a1 + 32);
  v8 = &v9;
  [v3 enumerateObjectsUsingBlock:v6];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v10[5], v4, v5);

  _Block_object_dispose(&v9, 8);
}

void __83__NPKSubcredentialInvitationCoordinator__fetchInvitationWithIdentifier_completion___block_invoke_154(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_fetchInvitationMatchingInvitation:(id)invitation completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  completionCopy = completion;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (completionCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __87__NPKSubcredentialInvitationCoordinator__fetchInvitationMatchingInvitation_completion___block_invoke;
    v16[3] = &unk_279945E58;
    v17 = invitationCopy;
    v18 = completionCopy;
    [(NPKSubcredentialInvitationCoordinator *)self listSubcredentialInvitationsWithCompletion:v16];

    v10 = v17;
  }

  else
  {
    v11 = pk_General_log(v9);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (!v12)
    {
      goto LABEL_4;
    }

    v10 = pk_General_log(v13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = 0;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to return an invitation, but no completion block was provided: %@", buf, 0x16u);
    }
  }

LABEL_4:
}

void __87__NPKSubcredentialInvitationCoordinator__fetchInvitationMatchingInvitation_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__NPKSubcredentialInvitationCoordinator__fetchInvitationMatchingInvitation_completion___block_invoke_2;
  v6[3] = &unk_279945E30;
  v7 = *(a1 + 32);
  v8 = &v9;
  [v3 enumerateObjectsUsingBlock:v6];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v10[5], v4, v5);

  _Block_object_dispose(&v9, 8);
}

void __87__NPKSubcredentialInvitationCoordinator__fetchInvitationMatchingInvitation_completion___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 isSameInvitationAsInvitation:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_makeConfigurationForInvitation:(id)invitation session:(id)session metadata:(id)metadata paymentWebService:(id)service completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  sessionCopy = session;
  metadataCopy = metadata;
  serviceCopy = service;
  completionCopy = completion;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  if (completionCopy)
  {
    if (invitationCopy && sessionCopy && serviceCopy)
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __119__NPKSubcredentialInvitationCoordinator__makeConfigurationForInvitation_session_metadata_paymentWebService_completion___block_invoke;
      v31[3] = &unk_279945E80;
      v32 = sessionCopy;
      v33 = invitationCopy;
      v34 = metadataCopy;
      v35 = serviceCopy;
      selfCopy = self;
      v37 = completionCopy;
      [(NPKSubcredentialInvitationCoordinator *)self canAcceptInvitation:v33 completion:v31];

      v19 = v32;
    }

    else
    {
      v25 = pk_General_log(v18);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

      if (v26)
      {
        v28 = pk_General_log(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138544386;
          v39 = v30;
          v40 = 2112;
          v41 = sessionCopy;
          v42 = 2112;
          v43 = invitationCopy;
          v44 = 2112;
          v45 = metadataCopy;
          v46 = 2112;
          v47 = serviceCopy;
          _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to make accept invitation configuration with a non-nil sharing session, invitation, and paymentWebService! sharingSession: %@ invitation: %@ metadata: %@ paymentWebService: %@", buf, 0x34u);
        }
      }

      v19 = [(NPKSubcredentialInvitationCoordinator *)self _errorWithCode:0 message:@"Unable to make invitation configuration - insufficient information"];
      (*(completionCopy + 2))(completionCopy, 0, v19);
    }

LABEL_14:

    goto LABEL_15;
  }

  v20 = pk_General_log(v18);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (v21)
  {
    v19 = pk_General_log(v22);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138543618;
      v39 = v24;
      v40 = 2112;
      v41 = 0;
      _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to return a configuration, but no completion block was provided: %@", buf, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_15:
}

void __119__NPKSubcredentialInvitationCoordinator__makeConfigurationForInvitation_session_metadata_paymentWebService_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = pk_General_log(v3);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_General_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Unable to make accept invitation configuration for this invitation! error: %@", &v13, 0x16u);
      }
    }

    v11 = [*(a1 + 64) _errorWithCode:1 message:@"Unable to make invitation configuration - cannot accept invitation"];
    v12 = *(*(a1 + 72) + 16);
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D382D8]) initWithSession:*(a1 + 32) invitation:*(a1 + 40) metadata:*(a1 + 48) declineRelatedInvitations:0 localDeviceWebService:*(a1 + 56) remoteDeviceWebService:0];
    v12 = *(*(a1 + 72) + 16);
  }

  v12();
}

- (void)_handleProvisioningAttemptForConfiguration:(id)configuration error:(id)error
{
  configurationCopy = configuration;
  errorCopy = error;
  objc_initWeak(&location, self);
  if (errorCopy)
  {
    callbackQueue = [(NPKSubcredentialInvitationCoordinator *)self callbackQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __90__NPKSubcredentialInvitationCoordinator__handleProvisioningAttemptForConfiguration_error___block_invoke_2;
    v12[3] = &unk_279945240;
    v9 = &v14;
    objc_copyWeak(&v14, &location);
    v10 = &v13;
    v13 = errorCopy;
    v11 = v12;
  }

  else
  {
    callbackQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__NPKSubcredentialInvitationCoordinator__handleProvisioningAttemptForConfiguration_error___block_invoke;
    block[3] = &unk_279945240;
    v9 = &v17;
    objc_copyWeak(&v17, &location);
    v10 = &v16;
    v16 = configurationCopy;
    v11 = block;
  }

  dispatch_async(callbackQueue, v11);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __90__NPKSubcredentialInvitationCoordinator__handleProvisioningAttemptForConfiguration_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained subcredentialProvisioningController];
  [WeakRetained _startProvisioningForProvisioningController:v2 withConfiguration:*(a1 + 32)];
}

void __90__NPKSubcredentialInvitationCoordinator__handleProvisioningAttemptForConfiguration_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _endProvisioningWithPassForInvitation:0 error:*(a1 + 32)];
}

- (void)_performBlockFollowingFirstUnlockWithBlock:(id)block
{
  blockCopy = block;
  if (NPKProtectedDataAvailable())
  {
    blockCopy[2](blockCopy);
  }

  else
  {
    firstUnlockCoordinator = [(NPKSubcredentialInvitationCoordinator *)self firstUnlockCoordinator];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __84__NPKSubcredentialInvitationCoordinator__performBlockFollowingFirstUnlockWithBlock___block_invoke;
    v6[3] = &unk_279945198;
    v7 = blockCopy;
    [firstUnlockCoordinator performSubjectToFirstUnlock:v6];
  }
}

- (id)_errorWithCode:(int64_t)code message:(id)message
{
  v13[1] = *MEMORY[0x277D85DE8];
  if ((code - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_25B59A8F0[code - 1];
  }

  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D389E0];
  v12 = *MEMORY[0x277CCA470];
  v13[0] = message;
  v7 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v5 errorWithDomain:v6 code:v4 userInfo:v9];

  return v10;
}

- (void)_startProvisioningForProvisioningController:(id)controller withConfiguration:(id)configuration
{
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  configurationCopy = configuration;
  internalQueue = [(NPKSubcredentialInvitationCoordinator *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v10 = pk_General_log(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543874;
      v22 = v15;
      v23 = 2112;
      v24 = controllerCopy;
      v25 = 2112;
      v26 = configurationCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Starting provisioning for provisioning controller: %@ with configuration: %@", buf, 0x20u);
    }
  }

  if (controllerCopy && configurationCopy)
  {
    [controllerCopy startProvisioningWithConfiguration:configurationCopy];
  }

  else
  {
    objc_initWeak(buf, self);
    callbackQueue = [(NPKSubcredentialInvitationCoordinator *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__NPKSubcredentialInvitationCoordinator__startProvisioningForProvisioningController_withConfiguration___block_invoke;
    block[3] = &unk_279945290;
    objc_copyWeak(&v20, buf);
    v18 = controllerCopy;
    v19 = configurationCopy;
    dispatch_async(callbackQueue, block);

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __103__NPKSubcredentialInvitationCoordinator__startProvisioningForProvisioningController_withConfiguration___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = pk_General_log(WeakRetained);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = 138543874;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Expected to start provisioning with a non-nil subcredential provisioning controller and configuration! subcredentialProvisioningController: %@ configuration: %@", &v12, 0x20u);
    }
  }

  v11 = [WeakRetained _errorWithCode:0 message:@"Unable to start provisioning - insufficient information"];
  [WeakRetained _endProvisioningWithPassForInvitation:0 error:v11];
}

- (void)_endProvisioningWithPassForInvitation:(id)invitation error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  errorCopy = error;
  callbackQueue = [(NPKSubcredentialInvitationCoordinator *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  v10 = pk_General_log(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_General_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v17 = 138543874;
      v18 = v15;
      v19 = 2112;
      v20 = invitationCopy;
      v21 = 2112;
      v22 = errorCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: End provisioning with pass: %@ error: %@", &v17, 0x20u);
    }
  }

  [(NPKSubcredentialInvitationCoordinator *)self _invokeCompletionWithPassForInvitation:invitationCopy error:errorCopy];
  [(NPKSubcredentialInvitationCoordinator *)self setSubcredentialProvisioningController:0];
  sharingSession = [(NPKSubcredentialInvitationCoordinator *)self sharingSession];
  [sharingSession endSession];

  [(NPKSubcredentialInvitationCoordinator *)self setSharingSession:0];
  [(NPKSubcredentialInvitationCoordinator *)self setFirstUnlockCoordinator:0];
}

- (void)_invokeCompletionWithPassForInvitation:(id)invitation error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  errorCopy = error;
  callbackQueue = [(NPKSubcredentialInvitationCoordinator *)self callbackQueue];
  dispatch_assert_queue_V2(callbackQueue);

  completion = [(NPKSubcredentialInvitationCoordinator *)self completion];
  v10 = [(NPKSubcredentialInvitationCoordinator *)self setCompletion:0];
  if (completion)
  {
    (completion)[2](completion, invitationCopy, errorCopy);
  }

  else
  {
    v11 = pk_General_log(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_General_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = 138543362;
        v18 = v16;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Warning: %{public}@: Attempted to invoke completion handler, but no block was found!", &v17, 0xCu);
      }
    }
  }
}

@end