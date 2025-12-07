@interface NPKPeerPaymentMessagesTransactionsManager
+ (id)sharedInstance;
- (NPKPeerPaymentMessagesTransactionsManager)initWithPeerPaymentPassUniqueID:(id)d paymentService:(id)service;
- (NSString)peerPaymentPassUniqueID;
- (id)_transactionsQueue_transactionDetailsCreatedIfNecessaryForServiceIdentifier:(id)identifier;
- (id)availableActionsForPaymentTransactionWithServiceIdentifier:(id)identifier;
- (id)peerPaymentTransactionWithServiceIdentifier:(id)identifier;
- (unint64_t)_transactionQueue_statusOfPaymentTransactionWithServiceIdentifier:(id)identifier;
- (unint64_t)statusOfPaymentTransactionWithServiceIdentifier:(id)identifier;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_fetchAllPeerPaymentTransactionsWithPeerPaymentPassID:(id)d;
- (void)_passLibraryChanged:(id)changed;
- (void)_transactionsQueue_notifyStatusUpdateOfTransactionWithServiceIdentifier:(id)identifier;
- (void)_transactionsQueue_setStatus:(unint64_t)status forPaymentTransactionWithServiceIdentifier:(id)identifier notifyUpdate:(BOOL)update;
- (void)dealloc;
- (void)lookupTransactionActionsIfNeededWithServiceIdentifier:(id)identifier;
- (void)setPeerPaymentPassUniqueID:(id)d;
- (void)setStatus:(unint64_t)status forPaymentTransactionWithServiceIdentifier:(id)identifier;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier;
@end

@implementation NPKPeerPaymentMessagesTransactionsManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[NPKPeerPaymentMessagesTransactionsManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

void __59__NPKPeerPaymentMessagesTransactionsManager_sharedInstance__block_invoke()
{
  v0 = [MEMORY[0x277D37FC0] sharedInstance];
  v3 = [v0 peerPaymentPassUniqueID];

  v1 = [[NPKPeerPaymentMessagesTransactionsManager alloc] initWithPeerPaymentPassUniqueID:v3];
  v2 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v1;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NPKPeerPaymentMessagesTransactionsManager;
  [(NPKPeerPaymentMessagesTransactionsManager *)&v4 dealloc];
}

- (NPKPeerPaymentMessagesTransactionsManager)initWithPeerPaymentPassUniqueID:(id)d paymentService:(id)service
{
  dCopy = d;
  serviceCopy = service;
  v25.receiver = self;
  v25.super_class = NPKPeerPaymentMessagesTransactionsManager;
  v8 = [(NPKPeerPaymentMessagesTransactionsManager *)&v25 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.nanopasskit.peerPaymentmessagesTransactionManager.transactions", 0);
    transactionsQueue = v8->_transactionsQueue;
    v8->_transactionsQueue = v9;

    v11 = dispatch_queue_create("com.apple.nanopasskit.peerPaymentmessagesTransactionManager.peerPaymentPass", 0);
    peerPaymentPassQueue = v8->_peerPaymentPassQueue;
    v8->_peerPaymentPassQueue = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transactionDetails = v8->_transactionDetails;
    v8->_transactionDetails = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    currentLookupIdentifiers = v8->_currentLookupIdentifiers;
    v8->_currentLookupIdentifiers = v15;

    v17 = [dCopy copy];
    peerPaymentPassUniqueID = v8->_peerPaymentPassUniqueID;
    v8->_peerPaymentPassUniqueID = v17;

    if (serviceCopy)
    {
      v19 = serviceCopy;
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x277D380F0]) initWithDelegate:v8];
    }

    paymentService = v8->_paymentService;
    v8->_paymentService = v19;

    [(PKPaymentService *)v8->_paymentService setDelegate:v8];
    [(NPKPeerPaymentMessagesTransactionsManager *)v8 _fetchAllPeerPaymentTransactionsWithPeerPaymentPassID:v8->_peerPaymentPassUniqueID];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = *MEMORY[0x277D386D8];
    mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
    [defaultCenter addObserver:v8 selector:sel__passLibraryChanged_ name:v22 object:mEMORY[0x277D37FC0]];

    [defaultCenter addObserver:v8 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D38A10] object:0];
  }

  return v8;
}

- (void)_passLibraryChanged:(id)changed
{
  mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
  peerPaymentPassUniqueID = [mEMORY[0x277D37FC0] peerPaymentPassUniqueID];
  [(NPKPeerPaymentMessagesTransactionsManager *)self setPeerPaymentPassUniqueID:peerPaymentPassUniqueID];
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  peerPaymentPassUniqueID = [(NPKPeerPaymentMessagesTransactionsManager *)self peerPaymentPassUniqueID];
  if (peerPaymentPassUniqueID)
  {
    v5 = peerPaymentPassUniqueID;
    [(NPKPeerPaymentMessagesTransactionsManager *)self _fetchAllPeerPaymentTransactionsWithPeerPaymentPassID:peerPaymentPassUniqueID];
    peerPaymentPassUniqueID = v5;
  }
}

- (void)setPeerPaymentPassUniqueID:(id)d
{
  v4 = [d copy];
  peerPaymentPassQueue = self->_peerPaymentPassQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__NPKPeerPaymentMessagesTransactionsManager_setPeerPaymentPassUniqueID___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(peerPaymentPassQueue, v7);
}

void *__72__NPKPeerPaymentMessagesTransactionsManager_setPeerPaymentPassUniqueID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(a1 + 32) + 24);
  if (result != v2)
  {
    result = [result isEqualToString:?];
    if ((result & 1) == 0)
    {
      objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);

      return [v4 _fetchAllPeerPaymentTransactionsWithPeerPaymentPassID:v5];
    }
  }

  return result;
}

- (NSString)peerPaymentPassUniqueID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  peerPaymentPassQueue = self->_peerPaymentPassQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__NPKPeerPaymentMessagesTransactionsManager_peerPaymentPassUniqueID__block_invoke;
  v5[3] = &unk_279944FE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(peerPaymentPassQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)statusOfPaymentTransactionWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 2;
  transactionsQueue = self->_transactionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NPKPeerPaymentMessagesTransactionsManager_statusOfPaymentTransactionWithServiceIdentifier___block_invoke;
  block[3] = &unk_279946940;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(transactionsQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void *__93__NPKPeerPaymentMessagesTransactionsManager_statusOfPaymentTransactionWithServiceIdentifier___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _transactionQueue_statusOfPaymentTransactionWithServiceIdentifier:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)availableActionsForPaymentTransactionWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  transactionsQueue = self->_transactionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__NPKPeerPaymentMessagesTransactionsManager_availableActionsForPaymentTransactionWithServiceIdentifier___block_invoke;
  block[3] = &unk_279946940;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(transactionsQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __104__NPKPeerPaymentMessagesTransactionsManager_availableActionsForPaymentTransactionWithServiceIdentifier___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) transactionDetails];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 availableActions];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (unint64_t)_transactionQueue_statusOfPaymentTransactionWithServiceIdentifier:(id)identifier
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  peerPaymentPassUniqueID = [(NPKPeerPaymentMessagesTransactionsManager *)self peerPaymentPassUniqueID];

  if (peerPaymentPassUniqueID)
  {
    transactionDetails = [(NPKPeerPaymentMessagesTransactionsManager *)self transactionDetails];
    v8 = [transactionDetails objectForKey:identifierCopy];

    if (v8)
    {
      paymentStatus = [v8 paymentStatus];
      v10 = paymentStatus;
      if (paymentStatus)
      {
LABEL_18:
        v23 = pk_Payment_log(paymentStatus);
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

        if (v24)
        {
          v26 = pk_Payment_log(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = NSStringWithNPKPeerPaymentStatus(v10);
            v29 = 138412802;
            v30 = v27;
            v31 = 2112;
            v32 = v8;
            v33 = 2112;
            v34 = identifierCopy;
            _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: Returning status %@ for transaction details %@ (service identifier %@)", &v29, 0x20u);
          }
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    if (NPKShouldHonorUserPreferenceTransactionStatus())
    {
      v11 = NPKGlobalDomainPreferencesGetValue(@"NPKUserPreferenceTransactionsStatus");
      v10 = NPKPeerPaymentStatusWithNSString(v11);
      v12 = pk_General_log(v10);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (!v13)
      {
LABEL_17:

        goto LABEL_18;
      }

      availableActions = pk_General_log(v14);
      if (os_log_type_enabled(availableActions, OS_LOG_TYPE_DEFAULT))
      {
        v16 = NSStringWithNPKPeerPaymentStatus(v10);
        v29 = 138412546;
        v30 = v16;
        v31 = 2112;
        v32 = identifierCopy;
        _os_log_impl(&dword_25B300000, availableActions, OS_LOG_TYPE_DEFAULT, "Notice: Using mock SURF server; will return status %@ for transaction with identifier %@", &v29, 0x16u);
      }
    }

    else
    {
      transaction = [v8 transaction];
      v11 = transaction;
      if (!transaction)
      {
        v10 = 0;
        goto LABEL_17;
      }

      peerPaymentStatus = [transaction peerPaymentStatus];
      availableActions = [v8 availableActions];
      v10 = NPKPeerPaymentStatusWithPKPeerPaymentStatusAndActions(peerPaymentStatus, availableActions);
    }

    goto LABEL_17;
  }

  v17 = pk_Payment_log(v6);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v8 = pk_Payment_log(v19);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringWithNPKPeerPaymentStatus(0);
      v29 = 138412546;
      v30 = v20;
      v31 = 2112;
      v32 = identifierCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Returning status %@ (service identifier %@). We don't have a peer payment pass setup.", &v29, 0x16u);
    }

    v10 = 1;
    goto LABEL_22;
  }

  v10 = 1;
LABEL_23:

  return v10;
}

- (void)setStatus:(unint64_t)status forPaymentTransactionWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  transactionsQueue = self->_transactionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__NPKPeerPaymentMessagesTransactionsManager_setStatus_forPaymentTransactionWithServiceIdentifier___block_invoke;
  block[3] = &unk_279945F18;
  v10 = identifierCopy;
  statusCopy = status;
  block[4] = self;
  v8 = identifierCopy;
  dispatch_sync(transactionsQueue, block);
}

- (void)_transactionsQueue_setStatus:(unint64_t)status forPaymentTransactionWithServiceIdentifier:(id)identifier notifyUpdate:(BOOL)update
{
  updateCopy = update;
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_transactionsQueue);
  v9 = [(NPKPeerPaymentMessagesTransactionsManager *)self _transactionsQueue_transactionDetailsCreatedIfNecessaryForServiceIdentifier:identifierCopy];
  transaction = [v9 transaction];
  v11 = transaction;
  if (transaction && (transaction = NPKPeerPaymentStatusWithPKPeerPaymentStatus([transaction peerPaymentStatus]), transaction > status) && (transaction > 7 || ((1 << transaction) & 0xB0) == 0))
  {
    v17 = pk_General_log(transaction);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v20 = pk_General_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringWithNPKPeerPaymentStatus(status);
        v22 = 138412802;
        v23 = v21;
        v24 = 2112;
        v25 = identifierCopy;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Ignoring new peer payment transaction status %@ for transaction with identifier: %@ transaction: %@", &v22, 0x20u);
      }
    }
  }

  else
  {
    v12 = pk_General_log(transaction);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v15 = pk_General_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = NSStringWithNPKPeerPaymentStatus(status);
        v22 = 138412546;
        v23 = v16;
        v24 = 2112;
        v25 = identifierCopy;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Setting new peer payment transaction status %@ for transaction with identifier: %@", &v22, 0x16u);
      }
    }

    [v9 setPaymentStatus:status];
    if (updateCopy)
    {
      [(NPKPeerPaymentMessagesTransactionsManager *)self _transactionsQueue_notifyStatusUpdateOfTransactionWithServiceIdentifier:identifierCopy];
    }
  }
}

- (id)peerPaymentTransactionWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  transactionsQueue = self->_transactionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__NPKPeerPaymentMessagesTransactionsManager_peerPaymentTransactionWithServiceIdentifier___block_invoke;
  block[3] = &unk_279946940;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(transactionsQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __89__NPKPeerPaymentMessagesTransactionsManager_peerPaymentTransactionWithServiceIdentifier___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) transactionDetails];
  v2 = [v6 objectForKey:*(a1 + 40)];
  v3 = [v2 transaction];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)lookupTransactionActionsIfNeededWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    transactionsQueue = self->_transactionsQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __99__NPKPeerPaymentMessagesTransactionsManager_lookupTransactionActionsIfNeededWithServiceIdentifier___block_invoke;
    v7[3] = &unk_2799454E0;
    v7[4] = self;
    v8 = identifierCopy;
    dispatch_async(transactionsQueue, v7);
  }
}

void __99__NPKPeerPaymentMessagesTransactionsManager_lookupTransactionActionsIfNeededWithServiceIdentifier___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentLookupIdentifiers];
  v3 = [v2 containsObject:*(a1 + 40)];
  if (!v3)
  {
    v9 = [*(a1 + 32) _transactionQueue_statusOfPaymentTransactionWithServiceIdentifier:*(a1 + 40)];
    v10 = [*(a1 + 32) transactionDetails];
    v11 = [v10 objectForKey:*(a1 + 40)];
    v7 = [v11 availableActionsFetchDate];

    if (v9 <= 3 && v9 != 1)
    {
      if (!v7 || ([v7 timeIntervalSinceNow], fabs(v12) >= 60.0))
      {
        v13 = pk_General_log([v2 addObject:*(a1 + 40)]);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

        if (v14)
        {
          v16 = pk_General_log(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(a1 + 40);
            *buf = 138412290;
            v24 = v17;
            _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Starting looking up actions for transaction with service identifier: %@", buf, 0xCu);
          }
        }

        v18 = [*(a1 + 32) _sharedPeerPaymentWebService];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __99__NPKPeerPaymentMessagesTransactionsManager_lookupTransactionActionsIfNeededWithServiceIdentifier___block_invoke_117;
        v20[3] = &unk_279947B60;
        v19 = *(a1 + 40);
        v20[4] = *(a1 + 32);
        v21 = v2;
        v22 = *(a1 + 40);
        [v18 peerPaymentStatusWithPaymentIdentifier:v19 completion:v20];
      }
    }

    goto LABEL_14;
  }

  v4 = pk_General_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: We are currently looking up actions for transaction with service identifier: %@", buf, 0xCu);
    }

LABEL_14:
  }
}

void __99__NPKPeerPaymentMessagesTransactionsManager_lookupTransactionActionsIfNeededWithServiceIdentifier___block_invoke_117(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__NPKPeerPaymentMessagesTransactionsManager_lookupTransactionActionsIfNeededWithServiceIdentifier___block_invoke_2;
  block[3] = &unk_279946210;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v6;
  v8 = *(a1 + 32);
  v15 = v5;
  v16 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __99__NPKPeerPaymentMessagesTransactionsManager_lookupTransactionActionsIfNeededWithServiceIdentifier___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) removeObject:*(a1 + 40)];
  if (*(a1 + 48) || !*(a1 + 56))
  {
    v3 = pk_General_log(v2);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v4)
    {
      return;
    }

    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v22 = 138412546;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Error when looking up actions for transaction with service identifier %@: %@", &v22, 0x16u);
    }
  }

  else
  {
    v6 = [*(a1 + 64) _transactionsQueue_transactionDetailsCreatedIfNecessaryForServiceIdentifier:*(a1 + 40)];
    v9 = [*(a1 + 56) actions];
    [v6 setAvailableActions:v9];

    v10 = [MEMORY[0x277CBEAA8] date];
    [v6 setAvailableActionsFetchDate:v10];

    v11 = [*(a1 + 56) status];
    v12 = [*(a1 + 56) actions];
    v13 = NPKPeerPaymentStatusWithPKPeerPaymentStatusAndActions(v11, v12);

    v15 = pk_General_log(v14);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v18 = pk_General_log(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 40);
        v20 = [v6 availableActions];
        v21 = NSStringWithNPKPeerPaymentStatus(v13);
        v22 = 138412802;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Finished looking up actions for transaction with service identifier %@: actions %@, status %@", &v22, 0x20u);
      }
    }

    [*(a1 + 64) _transactionsQueue_setStatus:v13 forPaymentTransactionWithServiceIdentifier:*(a1 + 40) notifyUpdate:1];
  }
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  transactionCopy = transaction;
  v8 = pk_General_log(transactionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = identifierCopy;
      v20 = 2112;
      v21 = transactionCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: TransactionManager: transactionSourceIdentifier:%@ didReceiveTransaction:%@", buf, 0x16u);
    }
  }

  transactionsQueue = self->_transactionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__NPKPeerPaymentMessagesTransactionsManager_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v16 = identifierCopy;
  v17 = transactionCopy;
  v13 = transactionCopy;
  v14 = identifierCopy;
  dispatch_async(transactionsQueue, block);
}

void __95__NPKPeerPaymentMessagesTransactionsManager_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D37FC0] sharedInstance];
  v3 = [*(a1 + 32) peerPaymentPassUniqueID];
  v4 = [v2 passWithUniqueID:v3];
  v5 = [v4 paymentPass];

  v6 = [v5 deviceTransactionSourceIdentifiers];
  if ([v6 containsObject:*(a1 + 40)])
  {
    v7 = [*(a1 + 48) serviceIdentifier];
    v8 = v7;
    if (v7)
    {
      v9 = pk_General_log(v7);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v10)
      {
        v12 = pk_General_log(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v8;
          _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: TransactionManager: did update transaction detail with service Identifier:%@", &v14, 0xCu);
        }
      }

      v13 = [*(a1 + 32) _transactionsQueue_transactionDetailsCreatedIfNecessaryForServiceIdentifier:v8];
      [v13 setTransaction:*(a1 + 48)];
      [v13 setPaymentStatus:0];
      [*(a1 + 32) _transactionsQueue_notifyStatusUpdateOfTransactionWithServiceIdentifier:v8];
    }
  }
}

- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  transactionsQueue = self->_transactionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__NPKPeerPaymentMessagesTransactionsManager_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v12 = identifierCopy;
  v13 = withIdentifierCopy;
  v9 = withIdentifierCopy;
  v10 = identifierCopy;
  dispatch_async(transactionsQueue, block);
}

void __108__NPKPeerPaymentMessagesTransactionsManager_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D37FC0] sharedInstance];
  v3 = [*(a1 + 32) peerPaymentPassUniqueID];
  v4 = [v2 passWithUniqueID:v3];
  v5 = [v4 paymentPass];

  v6 = [v5 deviceTransactionSourceIdentifiers];
  if ([v6 containsObject:*(a1 + 40)])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__11;
    v19 = __Block_byref_object_dispose__11;
    v20 = 0;
    v7 = [*(a1 + 32) transactionDetails];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __108__NPKPeerPaymentMessagesTransactionsManager_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke_2;
    v12 = &unk_279947B88;
    v13 = *(a1 + 48);
    v14 = &v15;
    [v7 enumerateKeysAndObjectsUsingBlock:&v9];

    if (v16[5])
    {
      v8 = [*(a1 + 32) transactionDetails];
      [v8 removeObjectForKey:v16[5]];

      [*(a1 + 32) _transactionsQueue_notifyStatusUpdateOfTransactionWithServiceIdentifier:v16[5]];
    }

    _Block_object_dispose(&v15, 8);
  }
}

void __108__NPKPeerPaymentMessagesTransactionsManager_transactionSourceIdentifier_didRemoveTransactionWithIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v13 = a3;
  v6 = [v13 transaction];
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = [v13 transaction];
    v10 = [v9 serviceIdentifier];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

- (id)_transactionsQueue_transactionDetailsCreatedIfNecessaryForServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  transactionDetails = [(NPKPeerPaymentMessagesTransactionsManager *)self transactionDetails];
  v6 = [transactionDetails objectForKey:identifierCopy];

  if (identifierCopy && !v6)
  {
    v6 = objc_alloc_init(NPKPeerPaymentTransactionDetails);
    [(NPKPeerPaymentTransactionDetails *)v6 setServiceIdentifier:identifierCopy];
    transactionDetails2 = [(NPKPeerPaymentMessagesTransactionsManager *)self transactionDetails];
    [transactionDetails2 setObject:v6 forKey:identifierCopy];
  }

  return v6;
}

- (void)_transactionsQueue_notifyStatusUpdateOfTransactionWithServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_transactionsQueue);
  v5 = [(NPKPeerPaymentMessagesTransactionsManager *)self _transactionQueue_statusOfPaymentTransactionWithServiceIdentifier:identifierCopy];
  transactionDetails = [(NPKPeerPaymentMessagesTransactionsManager *)self transactionDetails];
  v7 = [transactionDetails objectForKeyedSubscript:identifierCopy];
  availableActions = [v7 availableActions];
  v9 = availableActions;
  v10 = MEMORY[0x277CBEBF8];
  if (availableActions)
  {
    v10 = availableActions;
  }

  v11 = v10;

  v12 = dispatch_get_global_queue(33, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __117__NPKPeerPaymentMessagesTransactionsManager__transactionsQueue_notifyStatusUpdateOfTransactionWithServiceIdentifier___block_invoke;
  v15[3] = &unk_279945958;
  v16 = v11;
  v17 = identifierCopy;
  selfCopy = self;
  v19 = v5;
  v13 = identifierCopy;
  v14 = v11;
  dispatch_async(v12, v15);
}

void __117__NPKPeerPaymentMessagesTransactionsManager__transactionsQueue_notifyStatusUpdateOfTransactionWithServiceIdentifier___block_invoke(void *a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"kNPKPeerPaymentMessagesTransactionsManagerTransactionStatus";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v5[1] = @"kNPKPeerPaymentMessagesTransactionsManagerAvailableActions";
  v6[0] = v2;
  v6[1] = a1[4];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:a1[5] object:a1[6] userInfo:v3];
}

- (void)_fetchAllPeerPaymentTransactionsWithPeerPaymentPassID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = pk_General_log(dCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = dCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Start fetching all peer payment transactions With peer payment pass ID: %@", buf, 0xCu);
    }
  }

  if (dCopy)
  {
    mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
    v10 = [mEMORY[0x277D37FC0] passWithUniqueID:dCopy];
    paymentPass = [v10 paymentPass];

    if (paymentPass)
    {
      deviceTransactionSourceIdentifiers = [paymentPass deviceTransactionSourceIdentifiers];
      paymentService = [(NPKPeerPaymentMessagesTransactionsManager *)self paymentService];
      v14 = *MEMORY[0x277D38648];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __99__NPKPeerPaymentMessagesTransactionsManager__fetchAllPeerPaymentTransactionsWithPeerPaymentPassID___block_invoke_2;
      v16[3] = &unk_279947BD8;
      v17 = dCopy;
      selfCopy = self;
      [paymentService transactionsForTransactionSourceIdentifiers:deviceTransactionSourceIdentifiers withTransactionSource:0 withBackingData:0 limit:v14 completion:v16];
    }
  }

  else
  {
    transactionsQueue = self->_transactionsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__NPKPeerPaymentMessagesTransactionsManager__fetchAllPeerPaymentTransactionsWithPeerPaymentPassID___block_invoke;
    block[3] = &unk_279944F98;
    block[4] = self;
    dispatch_async(transactionsQueue, block);
  }
}

void __99__NPKPeerPaymentMessagesTransactionsManager__fetchAllPeerPaymentTransactionsWithPeerPaymentPassID___block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: New peer payment pass identifier is nil. Removing existing transactions.", buf, 2u);
    }
  }

  v6 = [*(a1 + 32) transactionDetails];
  v7 = [v6 allKeys];

  v8 = [*(a1 + 32) transactionDetails];
  [v8 removeAllObjects];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __99__NPKPeerPaymentMessagesTransactionsManager__fetchAllPeerPaymentTransactionsWithPeerPaymentPassID___block_invoke_124;
  v9[3] = &unk_279945858;
  v9[4] = *(a1 + 32);
  [v7 enumerateObjectsUsingBlock:v9];
}

void __99__NPKPeerPaymentMessagesTransactionsManager__fetchAllPeerPaymentTransactionsWithPeerPaymentPassID___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 count];
      v9 = *(a1 + 32);
      *buf = 134218242;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Received %ld transactions for peer payment pass with unique ID %@", buf, 0x16u);
    }
  }

  v10 = *(a1 + 40);
  v11 = *(v10 + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__NPKPeerPaymentMessagesTransactionsManager__fetchAllPeerPaymentTransactionsWithPeerPaymentPassID___block_invoke_126;
  v13[3] = &unk_2799454E0;
  v14 = v3;
  v15 = v10;
  v12 = v3;
  dispatch_async(v11, v13);
}

uint64_t __99__NPKPeerPaymentMessagesTransactionsManager__fetchAllPeerPaymentTransactionsWithPeerPaymentPassID___block_invoke_126(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __99__NPKPeerPaymentMessagesTransactionsManager__fetchAllPeerPaymentTransactionsWithPeerPaymentPassID___block_invoke_2_127;
  v3[3] = &unk_279947BB0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __99__NPKPeerPaymentMessagesTransactionsManager__fetchAllPeerPaymentTransactionsWithPeerPaymentPassID___block_invoke_2_127(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 serviceIdentifier];
  if (v3)
  {
    v4 = [*(a1 + 32) _transactionsQueue_transactionDetailsCreatedIfNecessaryForServiceIdentifier:v3];
    [v4 setTransaction:v7];
    if ([v7 peerPaymentStatus])
    {
      [v4 setPaymentStatus:0];
    }

    v5 = *(a1 + 32);
    v6 = [v7 serviceIdentifier];
    [v5 _transactionsQueue_notifyStatusUpdateOfTransactionWithServiceIdentifier:v6];
  }
}

@end