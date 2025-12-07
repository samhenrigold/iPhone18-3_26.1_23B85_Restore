@interface NPKExpressPassController
- (BOOL)_canProceedWithTransactionForPass:(id)pass selector:(SEL)selector;
- (NPKExpressPassController)initWithPaymentService:(id)service passLibrary:(id)library distributedNotificationCenter:(id)center delegate:(id)delegate;
- (NPKExpressPassControllerDelegate)delegate;
- (NSDistributedNotificationCenter)distributedNotificationCenter;
- (PKPassLibrary)passLibrary;
- (id)_expressPassInformationWithTechnologyType:(int64_t)type;
- (id)_expressPassesInformationWithAutomaticSelectionTechnologyType:(int64_t)type;
- (id)_expressPassesInformationWithTCIs:(id)is;
- (id)_queue_expressPassForTransactionApplicationIdentifier:(id)identifier transactionApplicationKeyIdentifier:(id)keyIdentifier;
- (id)_queue_siblingExpressPassesForExpressPass:(id)pass applicationIdentifier:(id)identifier;
- (id)paymentService;
- (unint64_t)_operationSourceFromRawValue:(id)value;
- (unint64_t)_transactionEventFromLockStatus:(id)status;
- (void)_handleCarKeyExpressEnteredNotification:(id)notification;
- (void)_handleCarKeyExpressExitedNotification:(id)notification;
- (void)_handleCarKeyRKEActionCompletedNotification:(id)notification;
- (void)_handleCarKeyRangingEndedNotification:(id)notification;
- (void)_handleCarKeyRangingStartedNotification:(id)notification;
- (void)_handleCarKeySessionEndedNotification:(id)notification;
- (void)_handleCarKeySessionEndedWithErrorNotification:(id)notification;
- (void)_handleCarKeyVehicleConnectedNotification:(id)notification;
- (void)_handleCarKeyVehicleDisconnectedNotification:(id)notification;
- (void)_handleCarKeyVehicleLockedNotification:(id)notification;
- (void)_handleCarKeyVehicleUnlockedNotification:(id)notification;
- (void)_handleEnterNearFieldNotification:(id)notification;
- (void)_handleExitNearFieldNotification:(id)notification;
- (void)_handleExpressTransactionEndNotification:(id)notification;
- (void)_handleExpressTransactionFailedNotification:(id)notification;
- (void)_handleExpressTransactionStartNotification:(id)notification;
- (void)_handleExpressTransactionTimeOutNotification:(id)notification;
- (void)_handleHomeKeyLockConnectedNotification:(id)notification;
- (void)_handleHomeKeyLockDisconnectedNotification:(id)notification;
- (void)_handleHomeKeyLockStatusChangedNotification:(id)notification;
- (void)_handlePassesLibraryChangedNotification:(id)notification;
- (void)_handleStandaloneTransactionDoneNotification:(id)notification;
- (void)_internalQueue_startFieldDetector;
- (void)_internalQueue_stopFieldDetector;
- (void)_internalQueue_updateExpressPasses;
- (void)_onqueue_transactionCompletedForRKEAction:(id)action function:(id)function withApplicationIdentifier:(id)identifier applicationKeyIdentifier:(id)keyIdentifier;
- (void)_onqueue_transactionCompletedForStandaloneTransactionEvent:(unint64_t)event withApplicationIdentifier:(id)identifier applicationKeyIdentifier:(id)keyIdentifier;
- (void)_onqueue_transactionEndedWithApplicationIdentifier:(id)identifier applicationKeyIdentifier:(id)keyIdentifier;
- (void)_onqueue_transactionFailedWithApplicationIdentifier:(id)identifier applicationKeyIdentifier:(id)keyIdentifier;
- (void)_onqueue_transactionStartedWithApplicationIdentifier:(id)identifier applicationKeyIdentifier:(id)keyIdentifier;
- (void)_parseExpressNotificationObject:(id)object outApplicationIdentifier:(id *)identifier outApplicationKeyIdentifier:(id *)keyIdentifier;
- (void)_parseHomeKeyUWBExpressNotificationObject:(id)object outApplicationIdentifier:(id *)identifier outApplicationKeyIdentifier:(id *)keyIdentifier outReaderIdentifier:(id *)readerIdentifier outTimestamp:(id *)timestamp outTransactionLockStatus:(id *)status outLockOperationSource:(id *)source;
- (void)_parseRKEActionNotificationObject:(id)object outApplicationIdentifier:(id *)identifier outApplicationKeyIdentifier:(id *)keyIdentifier outFunctionNumber:(id *)number outActionNumber:(id *)actionNumber outExecutionStatusNumber:(id *)statusNumber outErrorMessage:(id *)message;
- (void)_startListeningForCarKeyNotifications;
- (void)_startListeningForExpressNotifications;
- (void)_startListeningForGenericNotifications;
- (void)_startListeningForHomeKeyNotifications;
- (void)_stopListeningForExpressNotifications;
- (void)_transitionToCompletedRKEAction:(id)action function:(id)function forExpressPass:(id)pass;
- (void)_transitionToStandaloneTransactionEvent:(unint64_t)event forExpressPass:(id)pass;
- (void)_transitionToStandaloneTransactionEvent:(unint64_t)event forExpressPass:(id)pass withExpressUWBInfo:(id)info;
- (void)_transitionToStatus:(unint64_t)status forExpressPass:(id)pass paymentApplicationIdentifier:(id)identifier;
- (void)dealloc;
- (void)fieldDetectorDidEnterField:(id)field withProperties:(id)properties;
- (void)reset;
- (void)updateExpressPasses;
- (void)updateExpressPassesSynchronous;
@end

@implementation NPKExpressPassController

- (NPKExpressPassController)initWithPaymentService:(id)service passLibrary:(id)library distributedNotificationCenter:(id)center delegate:(id)delegate
{
  serviceCopy = service;
  libraryCopy = library;
  centerCopy = center;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = NPKExpressPassController;
  v14 = [(NPKExpressPassController *)&v27 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v16 = dispatch_queue_create("com.apple.expressPassController.internalQueue", v15);
    internalQueue = v14->_internalQueue;
    v14->_internalQueue = v16;

    v14->_transactionStatus = 0;
    objc_storeWeak(&v14->_delegate, delegateCopy);
    objc_storeWeak(&v14->_distributedNotificationCenter, centerCopy);
    objc_storeWeak(&v14->_passLibrary, libraryCopy);
    objc_storeWeak(&v14->_paymentService, serviceCopy);
    v14->_expressPassChangedNotifyToken = -1;
    objc_initWeak(&location, v14);
    uTF8String = [*MEMORY[0x277D385D0] UTF8String];
    v19 = v14->_internalQueue;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __102__NPKExpressPassController_initWithPaymentService_passLibrary_distributedNotificationCenter_delegate___block_invoke;
    v24 = &unk_279944F20;
    objc_copyWeak(&v25, &location);
    notify_register_dispatch(uTF8String, &v14->_expressPassChangedNotifyToken, v19, &v21);
    [(NPKExpressPassController *)v14 updateExpressPasses:v21];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __102__NPKExpressPassController_initWithPaymentService_passLibrary_distributedNotificationCenter_delegate___block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Got express passes changed notification in express pass controller", v7, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _internalQueue_updateExpressPasses];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_expressPassChangedNotifyToken))
  {
    notify_cancel(self->_expressPassChangedNotifyToken);
  }

  v3.receiver = self;
  v3.super_class = NPKExpressPassController;
  [(NPKExpressPassController *)&v3 dealloc];
}

- (void)reset
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __33__NPKExpressPassController_reset__block_invoke;
  v2[3] = &unk_279944F98;
  v2[4] = self;
  NPKGuaranteeMainThread(v2);
}

- (id)paymentService
{
  WeakRetained = objc_loadWeakRetained(&self->_paymentService);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(MEMORY[0x277D380F0]);
  }

  return WeakRetained;
}

- (PKPassLibrary)passLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_passLibrary);
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x277D37FC0] sharedInstance];
  }

  return WeakRetained;
}

- (NSDistributedNotificationCenter)distributedNotificationCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_distributedNotificationCenter);
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x277CCA9A0] defaultCenter];
    objc_storeWeak(&self->_distributedNotificationCenter, WeakRetained);
  }

  return WeakRetained;
}

- (void)_transitionToStatus:(unint64_t)status forExpressPass:(id)pass paymentApplicationIdentifier:(id)identifier
{
  v42 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  transactionStatus = self->_transactionStatus;
  if (transactionStatus == status)
  {
    goto LABEL_33;
  }

  if (passCopy && self->_currentTransactionPass)
  {
    uniqueID = [passCopy uniqueID];
    uniqueID2 = [(PKPass *)self->_currentTransactionPass uniqueID];
    v15 = [uniqueID isEqualToString:uniqueID2];

    if (!v15)
    {
      v23 = pk_Payment_log(v11);
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v19 = pk_Payment_log(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID3 = [(PKPass *)self->_currentTransactionPass uniqueID];
          uniqueID4 = [passCopy uniqueID];
          v36 = 138412546;
          selfCopy = uniqueID3;
          v38 = 2112;
          v39 = uniqueID4;
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: Accepting new express status because express transit pass changed from %@ to %@.", &v36, 0x16u);
        }

        goto LABEL_18;
      }

      goto LABEL_19;
    }

    transactionStatus = self->_transactionStatus;
  }

  if (transactionStatus >= status)
  {
    if (status)
    {
      goto LABEL_33;
    }

    v21 = pk_Payment_log(v11);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (!v22)
    {
      goto LABEL_19;
    }

    v19 = pk_Payment_log(v18);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v36) = 0;
    v20 = "Notice: Accepting reset of express status.";
    goto LABEL_14;
  }

  v16 = pk_Payment_log(v11);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v19 = pk_Payment_log(v18);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:

      goto LABEL_19;
    }

    LOWORD(v36) = 0;
    v20 = "Notice: Accepting new express status because it is greater than the previous express status.";
LABEL_14:
    _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, v20, &v36, 2u);
    goto LABEL_18;
  }

LABEL_19:
  v27 = pk_General_log(v18);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

  if (v28)
  {
    v30 = pk_General_log(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = NSStringFromNPKExpressPassControllerStatus(self->_transactionStatus);
      v32 = NSStringFromNPKExpressPassControllerStatus(status);
      v36 = 138412802;
      selfCopy = self;
      v38 = 2112;
      v39 = v31;
      v40 = 2112;
      v41 = v32;
      _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Notice: %@ transition from status %@ to %@", &v36, 0x20u);
    }
  }

  self->_transactionStatus = status;
  objc_storeStrong(&self->_currentTransactionPass, pass);
  delegate = [(NPKExpressPassController *)self delegate];
  v34 = delegate;
  if (passCopy && delegate)
  {
    v35 = [(NPKExpressPassController *)self _queue_siblingExpressPassesForExpressPass:passCopy applicationIdentifier:identifierCopy];
    switch(status)
    {
      case 4uLL:
        [v34 expressPassController:self didCompleteTransactionForPass:passCopy];
        break;
      case 3uLL:
        [v34 expressPassController:self didFailTransactionForPass:passCopy];
        break;
      case 2uLL:
        [v34 expressPassController:self didStartTransactionForPass:passCopy paymentApplicationIdentifier:identifierCopy siblingExpressPasses:v35];
        break;
    }
  }

LABEL_33:
}

- (void)_transitionToStandaloneTransactionEvent:(unint64_t)event forExpressPass:(id)pass
{
  passCopy = pass;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(NPKExpressPassController *)self _canProceedWithTransactionForPass:passCopy selector:sel__transitionToStandaloneTransactionEvent_forExpressPass_])
  {
    delegate = [(NPKExpressPassController *)self delegate];
    if (passCopy && delegate)
    {
      [delegate expressPassController:self didCompleteStandaloneTransactionEvent:event forPass:passCopy];
    }
  }
}

- (void)_transitionToCompletedRKEAction:(id)action function:(id)function forExpressPass:(id)pass
{
  actionCopy = action;
  functionCopy = function;
  passCopy = pass;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(NPKExpressPassController *)self _canProceedWithTransactionForPass:passCopy selector:sel__transitionToCompletedRKEAction_function_forExpressPass_])
  {
    delegate = [(NPKExpressPassController *)self delegate];
    v11 = delegate;
    if (passCopy && delegate)
    {
      [delegate expressPassController:self didCompleteRKEAction:actionCopy function:functionCopy forPass:passCopy];
    }
  }
}

- (void)_transitionToStandaloneTransactionEvent:(unint64_t)event forExpressPass:(id)pass withExpressUWBInfo:(id)info
{
  passCopy = pass;
  infoCopy = info;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ([(NPKExpressPassController *)self _canProceedWithTransactionForPass:passCopy selector:sel__transitionToStandaloneTransactionEvent_forExpressPass_withExpressUWBInfo_])
  {
    delegate = [(NPKExpressPassController *)self delegate];
    if (passCopy && delegate)
    {
      delegate2 = [(NPKExpressPassController *)self delegate];
      [delegate2 expressPassController:self didCompleteStandaloneTransactionEvent:event forPass:passCopy withUWBTransactionInfo:infoCopy];
    }
  }
}

- (BOOL)_canProceedWithTransactionForPass:(id)pass selector:(SEL)selector
{
  v23 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v7 = passCopy;
  transactionStatus = self->_transactionStatus;
  if (transactionStatus)
  {
    v9 = pk_General_log(passCopy);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v12 = pk_General_log(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = NSStringFromSelector(selector);
        v14 = NSStringFromNPKExpressPassControllerStatus(self->_transactionStatus);
        uniqueID = [v7 uniqueID];
        v17 = 138412802;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        v21 = 2112;
        v22 = uniqueID;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: %@: We're in the middle of some other transaction (transactionStatus: %@). Suppressing event for pass %@.", &v17, 0x20u);
      }
    }
  }

  return transactionStatus == 0;
}

- (void)_startListeningForExpressNotifications
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __66__NPKExpressPassController__startListeningForExpressNotifications__block_invoke;
  v2[3] = &unk_279944F98;
  v2[4] = self;
  NPKGuaranteeMainThread(v2);
}

void __66__NPKExpressPassController__startListeningForExpressNotifications__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) distributedNotificationCenter];
  v3 = pk_Payment_log([v2 removeObserver:*(a1 + 32)]);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %@ Start listening for express notifications", &v8, 0xCu);
    }
  }

  [*(a1 + 32) _startListeningForGenericNotifications];
  [*(a1 + 32) _startListeningForCarKeyNotifications];
  [*(a1 + 32) _startListeningForHomeKeyNotifications];
  [v2 addObserver:*(a1 + 32) selector:sel__handlePassesLibraryChangedNotification_ name:*MEMORY[0x277D386D0] object:0];
  [v2 addObserver:*(a1 + 32) selector:sel__handlePassesLibraryChangedNotification_ name:*MEMORY[0x277D386F0] object:0];
  [v2 addObserver:*(a1 + 32) selector:sel__handlePassesLibraryChangedNotification_ name:*MEMORY[0x277D386E8] object:0];
}

- (void)_startListeningForGenericNotifications
{
  distributedNotificationCenter = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter addObserver:self selector:sel__handleEnterNearFieldNotification_ name:*MEMORY[0x277D385E8] object:0];

  distributedNotificationCenter2 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter2 addObserver:self selector:sel__handleExpressTransactionStartNotification_ name:*MEMORY[0x277D38610] object:0];

  distributedNotificationCenter3 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter3 addObserver:self selector:sel__handleExpressTransactionTimeOutNotification_ name:*MEMORY[0x277D38618] object:0];

  distributedNotificationCenter4 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter4 addObserver:self selector:sel__handleExpressTransactionEndNotification_ name:*MEMORY[0x277D385F8] object:0];

  distributedNotificationCenter5 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter5 addObserver:self selector:sel__handleExpressTransactionFailedNotification_ name:*MEMORY[0x277D38608] object:0];

  distributedNotificationCenter6 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter6 addObserver:self selector:sel__handleExpressTransactionFailedNotification_ name:*MEMORY[0x277D38600] object:0];

  distributedNotificationCenter7 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter7 addObserver:self selector:sel__handleExitNearFieldNotification_ name:*MEMORY[0x277D385F0] object:0];

  distributedNotificationCenter8 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter8 addObserver:self selector:sel__handleStandaloneTransactionDoneNotification_ name:@"NPKDistributedNotificationStandaloneTransactionDone" object:0];
}

- (void)_startListeningForCarKeyNotifications
{
  distributedNotificationCenter = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter addObserver:self selector:sel__handleCarKeyExpressEnteredNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.express.enter" object:0];

  distributedNotificationCenter2 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter2 addObserver:self selector:sel__handleCarKeyExpressExitedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.express.exit" object:0];

  distributedNotificationCenter3 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter3 addObserver:self selector:sel__handleCarKeySessionEndedNotification_ name:@"com.apple.secureelementservice.dck.event.session.did.end" object:0];

  distributedNotificationCenter4 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter4 addObserver:self selector:sel__handleCarKeySessionEndedWithErrorNotification_ name:@"com.apple.secureelementservice.dck.event.session.did.end.with.error" object:0];

  distributedNotificationCenter5 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter5 addObserver:self selector:sel__handleCarKeyVehicleConnectedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.connect" object:0];

  distributedNotificationCenter6 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter6 addObserver:self selector:sel__handleCarKeyVehicleDisconnectedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.disconnect" object:0];

  distributedNotificationCenter7 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter7 addObserver:self selector:sel__handleCarKeyVehicleLockedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.lock" object:0];

  distributedNotificationCenter8 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter8 addObserver:self selector:sel__handleCarKeyVehicleUnlockedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.unlock" object:0];

  distributedNotificationCenter9 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter9 addObserver:self selector:sel__handleCarKeyRKEActionCompletedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.rke.action.complete" object:0];

  distributedNotificationCenter10 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter10 addObserver:self selector:sel__handleCarKeyRangingStartedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.ranging.start" object:0];

  distributedNotificationCenter11 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter11 addObserver:self selector:sel__handleCarKeyRangingEndedNotification_ name:@"com.apple.secureelementservice.dck.event.vehicle.did.ranging.end" object:0];
}

- (void)_startListeningForHomeKeyNotifications
{
  distributedNotificationCenter = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter addObserver:self selector:sel__handleHomeKeyLockConnectedNotification_ name:@"com.apple.secureelementservice.acwg.event.did.connect" object:0];

  distributedNotificationCenter2 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter2 addObserver:self selector:sel__handleHomeKeyLockDisconnectedNotification_ name:@"com.apple.secureelementservice.acwg.event.did.disconnect" object:0];

  distributedNotificationCenter3 = [(NPKExpressPassController *)self distributedNotificationCenter];
  [distributedNotificationCenter3 addObserver:self selector:sel__handleHomeKeyLockStatusChangedNotification_ name:@"com.apple.secureelementservice.acwg.event.did.status.update" object:0];
}

- (void)_stopListeningForExpressNotifications
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __65__NPKExpressPassController__stopListeningForExpressNotifications__block_invoke;
  v2[3] = &unk_279944F98;
  v2[4] = self;
  NPKGuaranteeMainThread(v2);
}

void __65__NPKExpressPassController__stopListeningForExpressNotifications__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %@ Stop listening for express notifications", &v8, 0xCu);
    }
  }

  v7 = [*(a1 + 32) distributedNotificationCenter];
  [v7 removeObserver:*(a1 + 32)];
}

- (void)_handleEnterNearFieldNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  kdebug_trace();
  object = [notificationCopy object];

  v6 = PKPassAutomaticSelectionTechnologyTypeForExpressEnteredObject();
  v8 = pk_General_log(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Received Enter Near Field Notification for automatic selection technology type %d", buf, 8u);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__NPKExpressPassController__handleEnterNearFieldNotification___block_invoke;
  v12[3] = &unk_279945830;
  v12[4] = self;
  v12[5] = v6;
  NPKGuaranteeMainThread(v12);
}

void __62__NPKExpressPassController__handleEnterNearFieldNotification___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _expressPassesInformationWithAutomaticSelectionTechnologyType:*(a1 + 40)];
  if ([v2 count] == 1)
  {
    v3 = [v2 anyObject];
    [*(a1 + 32) setCurrentTransactionExpressPassInformation:v3];
    goto LABEL_3;
  }

  v24 = [v2 count];
  v25 = pk_General_log(v24);
  v26 = v25;
  if (v24 < 2)
  {
    v32 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

    if (!v32)
    {
      goto LABEL_4;
    }

    v3 = pk_General_log(v33);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *v34 = 138412290;
    *&v34[4] = v2;
    v29 = "Error: Received Enter Near Field Notification, but no express pass information: %@";
    v30 = v3;
    v31 = OS_LOG_TYPE_ERROR;
    goto LABEL_25;
  }

  v27 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

  if (!v27)
  {
    goto LABEL_4;
  }

  v3 = pk_General_log(v28);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 138412290;
    *&v34[4] = v2;
    v29 = "Notice: More than one express pass for this technology type: %@";
    v30 = v3;
    v31 = OS_LOG_TYPE_DEFAULT;
LABEL_25:
    _os_log_impl(&dword_25B300000, v30, v31, v29, v34, 0xCu);
  }

LABEL_3:

LABEL_4:
  v4 = [*(a1 + 32) _hasNoTransactionStartOrEndNotificationForTechnologyType:{*(a1 + 40), *v34, *&v34[8]}];
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = pk_Payment_log(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) currentTransactionExpressPassInformation];
      *v34 = 134218242;
      *&v34[4] = v9;
      *&v34[12] = 2112;
      *&v34[14] = v10;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Technology type: %ld detected. Express passes information: %@", v34, 0x16u);
    }
  }

  v11 = [*(a1 + 32) currentTransactionExpressPassInformation];

  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = [*(a1 + 32) currentTransactionExpressPassInformation];
  v13 = [v12 passUniqueIdentifier];

  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = [*(a1 + 32) expressPasses];
  v15 = [v14 objectForKey:v13];

  if (!v15)
  {

LABEL_27:
    [*(a1 + 32) _transitionToStatus:1 forExpressPass:0 paymentApplicationIdentifier:0];
    goto LABEL_28;
  }

  v16 = [*(a1 + 32) currentTransactionExpressPassInformation];
  v17 = [v16 paymentApplicationIdentifiers];

  v18 = [v17 count];
  if (v18 >= 2)
  {
    v19 = pk_Payment_log(v18);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v22 = pk_Payment_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Warning: More than one express payment application identifier for a transit pass! This isn't supported.", v34, 2u);
      }
    }
  }

  v23 = [v17 firstObject];
  [*(a1 + 32) setCurrentApplicationIdentifier:v23];
  [*(a1 + 32) setCurrentSubCredentialIdentifier:0];
  [*(a1 + 32) _transitionToStatus:2 forExpressPass:v15 paymentApplicationIdentifier:v23];

LABEL_28:
}

- (void)_handleExpressTransactionStartNotification:(id)notification
{
  notificationCopy = notification;
  kdebug_trace();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__NPKExpressPassController__handleExpressTransactionStartNotification___block_invoke;
  v6[3] = &unk_2799454E0;
  v6[4] = self;
  v7 = notificationCopy;
  v5 = notificationCopy;
  NPKGuaranteeMainThread(v6);
}

void __71__NPKExpressPassController__handleExpressTransactionStartNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) object];
  v11 = 0;
  v12 = 0;
  [v2 _parseExpressNotificationObject:v3 outApplicationIdentifier:&v12 outApplicationKeyIdentifier:&v11];
  v4 = v12;
  v5 = v11;

  v7 = pk_General_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Received Express Transaction Start Notification for application identifier: %@, application key identifier: %@", buf, 0x16u);
    }
  }

  [*(a1 + 32) _onqueue_transactionStartedWithApplicationIdentifier:v4 applicationKeyIdentifier:v5];
}

- (void)_handleExpressTransactionTimeOutNotification:(id)notification
{
  notificationCopy = notification;
  kdebug_trace();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__NPKExpressPassController__handleExpressTransactionTimeOutNotification___block_invoke;
  v6[3] = &unk_2799454E0;
  v6[4] = self;
  v7 = notificationCopy;
  v5 = notificationCopy;
  NPKGuaranteeMainThread(v6);
}

void __73__NPKExpressPassController__handleExpressTransactionTimeOutNotification___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__14;
  v23 = __Block_byref_object_dispose__14;
  v24 = 0;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) object];
  v5 = (v20 + 5);
  v4 = v20[5];
  v17 = 0;
  obj = v4;
  [v2 _parseExpressNotificationObject:v3 outApplicationIdentifier:&obj outApplicationKeyIdentifier:&v17];
  objc_storeStrong(v5, obj);
  v6 = v17;

  if (!v20[5])
  {
    v8 = [*(a1 + 32) currentTransactionExpressPassInformation];
    v9 = v8 == 0;

    if (!v9)
    {
      v10 = [*(a1 + 32) currentTransactionExpressPassInformation];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __73__NPKExpressPassController__handleExpressTransactionTimeOutNotification___block_invoke_112;
      v16[3] = &unk_279948760;
      v16[4] = *(a1 + 32);
      v16[5] = &v19;
      [v10 enumerateCriteriaWithHandler:v16];
    }
  }

  v11 = pk_General_log(v7);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_General_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v20[5];
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Received Express Transaction Time Out Notification for application identifier %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _onqueue_transactionEndedWithApplicationIdentifier:v20[5] applicationKeyIdentifier:v6];

  _Block_object_dispose(&v19, 8);
}

void __73__NPKExpressPassController__handleExpressTransactionTimeOutNotification___block_invoke_112(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = a3;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(a1 + 32) _hasNoTransactionStartOrEndNotificationForTechnologyType:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "technologyType", v14)}])
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_handleExpressTransactionEndNotification:(id)notification
{
  notificationCopy = notification;
  kdebug_trace();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__NPKExpressPassController__handleExpressTransactionEndNotification___block_invoke;
  v6[3] = &unk_2799454E0;
  v6[4] = self;
  v7 = notificationCopy;
  v5 = notificationCopy;
  NPKGuaranteeMainThread(v6);
}

void __69__NPKExpressPassController__handleExpressTransactionEndNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) object];
  v11 = 0;
  v12 = 0;
  [v2 _parseExpressNotificationObject:v3 outApplicationIdentifier:&v12 outApplicationKeyIdentifier:&v11];
  v4 = v12;
  v5 = v11;

  v7 = pk_General_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Received Express Transaction End Notification for application identifier %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _onqueue_transactionEndedWithApplicationIdentifier:v4 applicationKeyIdentifier:v5];
}

- (void)_handleExpressTransactionFailedNotification:(id)notification
{
  notificationCopy = notification;
  kdebug_trace();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__NPKExpressPassController__handleExpressTransactionFailedNotification___block_invoke;
  v6[3] = &unk_2799454E0;
  v6[4] = self;
  v7 = notificationCopy;
  v5 = notificationCopy;
  NPKGuaranteeMainThread(v6);
}

void __72__NPKExpressPassController__handleExpressTransactionFailedNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) object];
  v11 = 0;
  v12 = 0;
  [v2 _parseExpressNotificationObject:v3 outApplicationIdentifier:&v12 outApplicationKeyIdentifier:&v11];
  v4 = v12;
  v5 = v11;

  v7 = pk_General_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Received Express Transaction Failed Notification for application identifier %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) _onqueue_transactionFailedWithApplicationIdentifier:v4 applicationKeyIdentifier:v5];
}

- (void)_handleExitNearFieldNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  kdebug_trace();
  object = [notificationCopy object];

  v6 = PKPassAutomaticSelectionTechnologyTypeForExpressEnteredObject();
  v8 = pk_General_log(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_General_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v6;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Received Exit Near Field Notification for automatic selection technology type %d", buf, 8u);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__NPKExpressPassController__handleExitNearFieldNotification___block_invoke;
  v12[3] = &unk_279944F98;
  v12[4] = self;
  NPKGuaranteeMainThread(v12);
}

uint64_t __61__NPKExpressPassController__handleExitNearFieldNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[3] == 2)
  {
    v3 = [v2 currentApplicationIdentifier];

    if (v3)
    {
      v5 = pk_General_log(v4);
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

      if (v6)
      {
        v8 = pk_General_log(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(a1 + 32) currentTransactionPass];
          v14 = 138412290;
          v15 = v9;
          _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Received Exit Near Field Notification, but didn't finish transaction with applicationIdentifier:%@ assume it fails.", &v14, 0xCu);
        }
      }

      v10 = *(a1 + 32);
      v11 = [v10 currentApplicationIdentifier];
      v12 = [*(a1 + 32) currentSubCredentialIdentifier];
      [v10 _onqueue_transactionFailedWithApplicationIdentifier:v11 applicationKeyIdentifier:v12];
    }
  }

  [*(a1 + 32) _transitionToStatus:0 forExpressPass:0 paymentApplicationIdentifier:0];
  [*(a1 + 32) setCurrentTransactionExpressPassInformation:0];
  [*(a1 + 32) setCurrentApplicationIdentifier:0];
  return [*(a1 + 32) setCurrentSubCredentialIdentifier:0];
}

- (void)_onqueue_transactionStartedWithApplicationIdentifier:(id)identifier applicationKeyIdentifier:(id)keyIdentifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(NPKExpressPassController *)self setCurrentApplicationIdentifier:identifierCopy];
  [(NPKExpressPassController *)self setCurrentSubCredentialIdentifier:keyIdentifierCopy];
  v8 = [(NPKExpressPassController *)self _queue_expressPassForTransactionApplicationIdentifier:identifierCopy transactionApplicationKeyIdentifier:keyIdentifierCopy];

  v9 = [(NPKExpressPassController *)self _transitionToStatus:2 forExpressPass:v8 paymentApplicationIdentifier:identifierCopy];
  if (!v8)
  {
    v10 = pk_General_log(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v13 = pk_General_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = identifierCopy;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: Received Express Transaction Started Notification for application identifier %@, but no pass.", &v14, 0xCu);
      }
    }
  }
}

- (void)_onqueue_transactionEndedWithApplicationIdentifier:(id)identifier applicationKeyIdentifier:(id)keyIdentifier
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  currentApplicationIdentifier = [(NPKExpressPassController *)self currentApplicationIdentifier];
  v9 = identifierCopy;
  v10 = currentApplicationIdentifier;
  v11 = v10;
  if (v10 == v9)
  {
  }

  else
  {
    if (!v9 || !v10)
    {

      goto LABEL_15;
    }

    v12 = [v9 isEqualToString:v10];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  if ([keyIdentifierCopy length])
  {
LABEL_15:

    goto LABEL_16;
  }

  currentSubCredentialIdentifier = [(NPKExpressPassController *)self currentSubCredentialIdentifier];
  v14 = [currentSubCredentialIdentifier length];

  if (v14)
  {
    currentSubCredentialIdentifier2 = [(NPKExpressPassController *)self currentSubCredentialIdentifier];

    v17 = pk_General_log(v16);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v20 = pk_General_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        currentSubCredentialIdentifier3 = [(NPKExpressPassController *)self currentSubCredentialIdentifier];
        v28 = 138412802;
        v29 = currentSubCredentialIdentifier3;
        v30 = 2112;
        v31 = v9;
        v32 = 2112;
        v33 = currentSubCredentialIdentifier2;
        _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Using the subcredential identifier (%@) from the start transaction event for %@ since the transaction end event didn't include it (%@)", &v28, 0x20u);
      }
    }

    keyIdentifierCopy = currentSubCredentialIdentifier2;
  }

LABEL_16:
  v22 = [(NPKExpressPassController *)self _queue_expressPassForTransactionApplicationIdentifier:v9 transactionApplicationKeyIdentifier:keyIdentifierCopy];
  v23 = [(NPKExpressPassController *)self _transitionToStatus:4 forExpressPass:v22 paymentApplicationIdentifier:v9];
  if (!v22)
  {
    v24 = pk_General_log(v23);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      v27 = pk_General_log(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = 138412290;
        v29 = v9;
        _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_ERROR, "Error: Received Express Transaction Ended Notification for application identifier %@, but no pass.", &v28, 0xCu);
      }
    }
  }
}

- (void)_onqueue_transactionFailedWithApplicationIdentifier:(id)identifier applicationKeyIdentifier:(id)keyIdentifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [(NPKExpressPassController *)self _queue_expressPassForTransactionApplicationIdentifier:identifierCopy transactionApplicationKeyIdentifier:keyIdentifierCopy];

  v9 = [(NPKExpressPassController *)self _transitionToStatus:3 forExpressPass:v8 paymentApplicationIdentifier:identifierCopy];
  if (!v8)
  {
    v10 = pk_General_log(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v13 = pk_General_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = identifierCopy;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: Received Express Transaction Failed Notification for application identifier %@, but no pass.", &v14, 0xCu);
      }
    }
  }
}

- (void)_handleCarKeyExpressEnteredNotification:(id)notification
{
  v11 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v4 = kdebug_trace();
  v5 = pk_General_log(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = notificationCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Express Entered Notification: %@", &v9, 0xCu);
    }
  }
}

- (void)_handleCarKeyExpressExitedNotification:(id)notification
{
  v11 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v4 = kdebug_trace();
  v5 = pk_General_log(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = notificationCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Express Exited Notification: %@", &v9, 0xCu);
    }
  }
}

- (void)_handleCarKeySessionEndedNotification:(id)notification
{
  v10 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v4 = pk_General_log(notificationCopy);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = notificationCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Session Ended Notification: %@", &v8, 0xCu);
    }
  }
}

- (void)_handleCarKeySessionEndedWithErrorNotification:(id)notification
{
  v10 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v4 = pk_General_log(notificationCopy);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_General_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = notificationCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Session Ended with Error Notification: %@", &v8, 0xCu);
    }
  }
}

- (void)_handleCarKeyVehicleConnectedNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  v13 = 0;
  v14 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:object outApplicationIdentifier:&v14 outApplicationKeyIdentifier:&v13];
  v6 = v14;
  v7 = v13;

  v9 = pk_General_log(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_General_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v16 = notificationCopy;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Vehicle Connected Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }
}

- (void)_handleCarKeyVehicleDisconnectedNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  v13 = 0;
  v14 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:object outApplicationIdentifier:&v14 outApplicationKeyIdentifier:&v13];
  v6 = v14;
  v7 = v13;

  v9 = pk_General_log(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_General_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v16 = notificationCopy;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Vehicle Disconnected Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }
}

- (void)_handleCarKeyVehicleLockedNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  kdebug_trace();
  object = [notificationCopy object];
  v18 = 0;
  v19 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:object outApplicationIdentifier:&v19 outApplicationKeyIdentifier:&v18];
  v6 = v19;
  v7 = v18;

  v9 = pk_General_log(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_General_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v21 = notificationCopy;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Vehicle Locked Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__NPKExpressPassController__handleCarKeyVehicleLockedNotification___block_invoke;
  v15[3] = &unk_279945880;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  NPKGuaranteeMainThread(v15);
}

- (void)_handleCarKeyVehicleUnlockedNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  kdebug_trace();
  object = [notificationCopy object];
  v18 = 0;
  v19 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:object outApplicationIdentifier:&v19 outApplicationKeyIdentifier:&v18];
  v6 = v19;
  v7 = v18;

  v9 = pk_General_log(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_General_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v21 = notificationCopy;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Vehicle Unlocked Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__NPKExpressPassController__handleCarKeyVehicleUnlockedNotification___block_invoke;
  v15[3] = &unk_279945880;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  NPKGuaranteeMainThread(v15);
}

- (void)_handleStandaloneTransactionDoneNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  kdebug_trace();
  object = [notificationCopy object];
  v18 = 0;
  v19 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:object outApplicationIdentifier:&v19 outApplicationKeyIdentifier:&v18];
  v6 = v19;
  v7 = v18;

  v9 = pk_General_log(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_General_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v21 = notificationCopy;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Received Generic Transaction Done Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__NPKExpressPassController__handleStandaloneTransactionDoneNotification___block_invoke;
  v15[3] = &unk_279945880;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  NPKGuaranteeMainThread(v15);
}

- (void)_handleCarKeyRKEActionCompletedNotification:(id)notification
{
  v49 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  kdebug_trace();
  object = [notificationCopy object];

  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  [(NPKExpressPassController *)self _parseRKEActionNotificationObject:object outApplicationIdentifier:&v36 outApplicationKeyIdentifier:&v35 outFunctionNumber:&v34 outActionNumber:&v33 outExecutionStatusNumber:&v32 outErrorMessage:&v31];
  v6 = v36;
  v7 = v35;
  v8 = v34;
  v9 = v33;
  v10 = v32;
  v11 = v31;

  v13 = pk_General_log(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_General_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413570;
      v38 = v6;
      v39 = 2112;
      v40 = v7;
      v41 = 2112;
      v42 = v8;
      v43 = 2112;
      v44 = v9;
      v45 = 2112;
      v46 = v10;
      v47 = 2112;
      v48 = v11;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key RKE Action Completed Notification for...\nAID: %@\nkey ID: %@\nfunctionNumber: %@\nactionNumber: %@\nexecutionStatusNumber: %@\nerrorMessage: %@", buf, 0x3Eu);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__NPKExpressPassController__handleCarKeyRKEActionCompletedNotification___block_invoke;
  v23[3] = &unk_279948788;
  v24 = v11;
  v25 = v10;
  selfCopy = self;
  v27 = v9;
  v28 = v8;
  v29 = v6;
  v30 = v7;
  v17 = v7;
  v18 = v6;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  NPKGuaranteeMainThread(v23);
}

void __72__NPKExpressPassController__handleCarKeyRKEActionCompletedNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) length];
  if (v2)
  {
    v3 = pk_General_log(v2);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (!v4)
    {
      return;
    }

    v6 = pk_General_log(v5);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v7 = *(a1 + 32);
    v21 = 138412290;
    v22 = v7;
    v8 = "Error: RKE action failed with error: %@";
LABEL_12:
    _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, v8, &v21, 0xCu);
LABEL_13:

    return;
  }

  v9 = *(a1 + 40);
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:0];
  LOBYTE(v9) = [v9 isEqualToNumber:v10];

  if ((v9 & 1) == 0)
  {
    v17 = pk_General_log(v11);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

    if (!v18)
    {
      return;
    }

    v6 = pk_General_log(v19);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v20 = *(a1 + 40);
    v21 = 138412290;
    v22 = v20;
    v8 = "Error: RKE action completed with unexpected execution status number! Received: %@; expected: 0";
    goto LABEL_12;
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);

  [v12 _onqueue_transactionCompletedForRKEAction:v13 function:v14 withApplicationIdentifier:v15 applicationKeyIdentifier:v16];
}

- (void)_handleCarKeyRangingStartedNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  v13 = 0;
  v14 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:object outApplicationIdentifier:&v14 outApplicationKeyIdentifier:&v13];
  v6 = v14;
  v7 = v13;

  v9 = pk_General_log(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_General_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v16 = notificationCopy;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Started Ranging Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }
}

- (void)_handleCarKeyRangingEndedNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  v13 = 0;
  v14 = 0;
  [(NPKExpressPassController *)self _parseExpressNotificationObject:object outApplicationIdentifier:&v14 outApplicationKeyIdentifier:&v13];
  v6 = v14;
  v7 = v13;

  v9 = pk_General_log(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_General_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v16 = notificationCopy;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Received Car Key Ended Ranging Notification: %@ for AID: %@ key ID: %@", buf, 0x20u);
    }
  }
}

- (void)_handleHomeKeyLockConnectedNotification:(id)notification
{
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Received lock connected notification.", v7, 2u);
    }
  }
}

- (void)_handleHomeKeyLockDisconnectedNotification:(id)notification
{
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Received lock disconnected notification.", v7, 2u);
    }
  }
}

- (void)_handleHomeKeyLockStatusChangedNotification:(id)notification
{
  v50 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  [(NPKExpressPassController *)self _parseHomeKeyUWBExpressNotificationObject:object outApplicationIdentifier:&v35 outApplicationKeyIdentifier:&v34 outReaderIdentifier:&v33 outTimestamp:&v32 outTransactionLockStatus:&v31 outLockOperationSource:&v30];
  v6 = v35;
  v7 = v34;
  v8 = v33;
  v9 = v32;
  v10 = v31;
  v11 = v30;

  v13 = pk_General_log(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_General_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413826;
      v37 = notificationCopy;
      v38 = 2112;
      v39 = v6;
      v40 = 2112;
      v41 = v7;
      v42 = 2112;
      v43 = v10;
      v44 = 2112;
      v45 = v8;
      v46 = 2112;
      v47 = v9;
      v48 = 2112;
      v49 = v11;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Received home key status changed notification: %@ for AID: %@ key ID: %@ lock status: %@ reader ID: %@ timestamp %@ operation source: %@", buf, 0x48u);
    }
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__NPKExpressPassController__handleHomeKeyLockStatusChangedNotification___block_invoke;
  v23[3] = &unk_279948788;
  v23[4] = self;
  v24 = v6;
  v25 = v7;
  v26 = v8;
  v27 = v10;
  v28 = v9;
  v29 = v11;
  v17 = v11;
  v18 = v9;
  v19 = v10;
  v20 = v8;
  v21 = v7;
  v22 = v6;
  NPKGuaranteeMainThread(v23);
}

void __72__NPKExpressPassController__handleHomeKeyLockStatusChangedNotification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _queue_expressPassForTransactionApplicationIdentifier:*(a1 + 40) transactionApplicationKeyIdentifier:*(a1 + 48)];
  v3 = [[NPKExpressUWBTransactionInfo alloc] initWithReaderID:*(a1 + 56) lockStatus:*(a1 + 64) timestamp:*(a1 + 72)];
  v4 = [*(a1 + 32) _transactionEventFromLockStatus:*(a1 + 64)];
  v5 = [*(a1 + 32) _operationSourceFromRawValue:*(a1 + 80)];
  if (v4 == 1 && v5 == 4)
  {
    [*(a1 + 32) _transitionToStandaloneTransactionEvent:1 forExpressPass:v2 withExpressUWBInfo:v3];
  }

  else
  {
    v7 = v5;
    v8 = @"Locked";
    if (v4 == 2)
    {
      v8 = @"Generic";
    }

    if (v4 == 1)
    {
      v8 = @"Unlocked";
    }

    v9 = v8;
    v10 = v9;
    if (v7 > 7)
    {
      v11 = @"SourceUnknown";
    }

    else
    {
      v11 = off_2799488E8[v7];
    }

    v12 = pk_General_log(v9);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v15 = pk_General_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Ignoring UWB event %@ with operation source %@", &v16, 0x16u);
      }
    }
  }
}

- (void)_onqueue_transactionCompletedForStandaloneTransactionEvent:(unint64_t)event withApplicationIdentifier:(id)identifier applicationKeyIdentifier:(id)keyIdentifier
{
  keyIdentifierCopy = keyIdentifier;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v10 = [(NPKExpressPassController *)self _queue_expressPassForTransactionApplicationIdentifier:identifierCopy transactionApplicationKeyIdentifier:keyIdentifierCopy];

  [(NPKExpressPassController *)self _transitionToStandaloneTransactionEvent:event forExpressPass:v10];
}

- (void)_onqueue_transactionCompletedForRKEAction:(id)action function:(id)function withApplicationIdentifier:(id)identifier applicationKeyIdentifier:(id)keyIdentifier
{
  keyIdentifierCopy = keyIdentifier;
  identifierCopy = identifier;
  functionCopy = function;
  actionCopy = action;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v14 = [(NPKExpressPassController *)self _queue_expressPassForTransactionApplicationIdentifier:identifierCopy transactionApplicationKeyIdentifier:keyIdentifierCopy];

  [(NPKExpressPassController *)self _transitionToCompletedRKEAction:actionCopy function:functionCopy forExpressPass:v14];
}

- (void)_handlePassesLibraryChangedNotification:(id)notification
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Received Library Passes Changed Notification %@", &v8, 0xCu);
    }
  }

  [(NPKExpressPassController *)self updateExpressPasses];
}

- (id)_queue_expressPassForTransactionApplicationIdentifier:(id)identifier transactionApplicationKeyIdentifier:(id)keyIdentifier
{
  v46 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__14;
  v39 = __Block_byref_object_dispose__14;
  v40 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  expressPassConfigurations = [(NPKExpressPassController *)self expressPassConfigurations];
  v7 = [expressPassConfigurations countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v7)
  {
    v8 = *v32;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(expressPassConfigurations);
      }

      passInformation = [*(*(&v31 + 1) + 8 * v9) passInformation];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __118__NPKExpressPassController__queue_expressPassForTransactionApplicationIdentifier_transactionApplicationKeyIdentifier___block_invoke;
      v26[3] = &unk_2799487B0;
      v11 = passInformation;
      v27 = v11;
      v28 = identifierCopy;
      v29 = keyIdentifierCopy;
      v30 = &v35;
      [v11 enumerateCriteriaWithHandler:v26];
      v12 = v36[5] == 0;

      if (!v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [expressPassConfigurations countByEnumeratingWithState:&v31 objects:v45 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (v36[5])
  {
    expressPasses = [(NPKExpressPassController *)selfCopy expressPasses];
    passUniqueIdentifier = [v36[5] passUniqueIdentifier];
    v16 = [expressPasses objectForKey:passUniqueIdentifier];
  }

  else
  {
    v16 = 0;
  }

  v17 = pk_Payment_log(v13);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v20 = pk_Payment_log(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [v16 uniqueID];
      *buf = 138412546;
      v42 = identifierCopy;
      v43 = 2112;
      v44 = uniqueID;
      _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Transaction application identifier: %@ express pass unique ID %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v35, 8);

  return v16;
}

void __118__NPKExpressPassController__queue_expressPassForTransactionApplicationIdentifier_transactionApplicationKeyIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) paymentApplicationIdentifiers];
  v7 = [v6 containsObject:*(a1 + 40)];

  if (v7)
  {
    v8 = [*(a1 + 32) subcredentialCredentialIdentifiers];
    v9 = [v8 objectForKey:*(a1 + 40)];

    if (!*(a1 + 48) || PKEqualObjects())
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
      *a4 = 1;
    }
  }
}

- (void)updateExpressPasses
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__NPKExpressPassController_updateExpressPasses__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)updateExpressPassesSynchronous
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKExpressPassController_updateExpressPassesSynchronous__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_internalQueue_updateExpressPasses
{
  selfCopy = self;
  v59 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_internalQueue);
  paymentService = [(NPKExpressPassController *)selfCopy paymentService];
  expressPassConfigurations = [paymentService expressPassConfigurations];
  v5 = pk_Payment_log(expressPassConfigurations);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      expressPassConfigurations2 = [(NPKExpressPassController *)selfCopy expressPassConfigurations];
      *buf = 138412546;
      v53 = expressPassConfigurations;
      v54 = 2112;
      v55 = expressPassConfigurations2;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Updating current express passes with new configurations: %@ (previous: %@)", buf, 0x16u);
    }
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (![expressPassConfigurations count])
  {
    [(NPKExpressPassController *)selfCopy _stopListeningForExpressNotifications];
LABEL_29:
    [(NPKExpressPassController *)selfCopy _internalQueue_stopFieldDetector];
    goto LABEL_30;
  }

  [(NPKExpressPassController *)selfCopy _startListeningForExpressNotifications];
  passLibrary = [(NPKExpressPassController *)selfCopy passLibrary];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v11 = expressPassConfigurations;
  v12 = [v11 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (!v12)
  {

    goto LABEL_29;
  }

  v13 = v12;
  v38 = expressPassConfigurations;
  v39 = selfCopy;
  v40 = paymentService;
  v14 = 0;
  v43 = *v49;
  obj = v11;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v49 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v48 + 1) + 8 * i);
      passUniqueIdentifier = [v16 passUniqueIdentifier];
      if (passUniqueIdentifier)
      {
        v18 = passLibrary;
        v19 = [passLibrary passWithUniqueID:passUniqueIdentifier];
        v20 = pk_Payment_log(v19);
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (v21)
        {
          v23 = pk_Payment_log(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            uniqueID = [v19 uniqueID];
            *buf = 138412802;
            v53 = v19;
            v54 = 2112;
            v55 = uniqueID;
            v56 = 2112;
            v57 = v16;
            _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: Fetched pass %@ with Unique Identifier %@ for express pass configuration %@", buf, 0x20u);
          }
        }

        paymentPass = [v19 paymentPass];
        v26 = [paymentPass cardType] == 3;

        if (v19)
        {
          [dictionary setObject:v19 forKey:passUniqueIdentifier];
          passLibrary = v18;
        }

        else
        {
          v28 = pk_Payment_log(v27);
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

          passLibrary = v18;
          if (v29)
          {
            v31 = pk_Payment_log(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v53 = v16;
              _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_ERROR, "Error: Express pass controller could not find pass for express pass configuration: %@", buf, 0xCu);
            }
          }
        }

        v14 |= v26;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  }

  while (v13);

  selfCopy = v39;
  paymentService = v40;
  expressPassConfigurations = v38;
  if ((v14 & 1) == 0)
  {
    goto LABEL_29;
  }

  [(NPKExpressPassController *)v39 _internalQueue_startFieldDetector];
LABEL_30:
  v32 = MEMORY[0x277CBEB98];
  allValues = [dictionary allValues];
  v34 = [v32 setWithArray:allValues];

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __62__NPKExpressPassController__internalQueue_updateExpressPasses__block_invoke;
  v44[3] = &unk_279946260;
  v44[4] = selfCopy;
  v45 = expressPassConfigurations;
  v46 = v34;
  v47 = dictionary;
  v35 = dictionary;
  v36 = v34;
  v37 = expressPassConfigurations;
  NPKGuaranteeMainThread(v44);
}

void __62__NPKExpressPassController__internalQueue_updateExpressPasses__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) expressPassConfigurations];
  if (PKEqualObjects())
  {
    v3 = [*(a1 + 32) expressPasses];
    v4 = PKEqualObjects();

    if (v4)
    {
      return;
    }
  }

  else
  {
  }

  [*(a1 + 32) setExpressPassConfigurations:*(a1 + 40)];
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);

  [v6 setExpressPasses:v5];
}

- (id)_expressPassesInformationWithAutomaticSelectionTechnologyType:(int64_t)type
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = [MEMORY[0x277CBEB58] set];
  expressPassConfigurations = [(NPKExpressPassController *)self expressPassConfigurations];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__NPKExpressPassController__expressPassesInformationWithAutomaticSelectionTechnologyType___block_invoke;
  v8[3] = &unk_279948800;
  v8[4] = &v9;
  v8[5] = type;
  [expressPassConfigurations enumerateObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __90__NPKExpressPassController__expressPassesInformationWithAutomaticSelectionTechnologyType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 passInformation];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__NPKExpressPassController__expressPassesInformationWithAutomaticSelectionTechnologyType___block_invoke_2;
  v7[3] = &unk_2799487D8;
  v5 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v5;
  v8 = v3;
  v6 = v3;
  [v4 enumerateCriteriaWithHandler:v7];
}

void __90__NPKExpressPassController__expressPassesInformationWithAutomaticSelectionTechnologyType___block_invoke_2(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 supportsExpress] && objc_msgSend(v11, "technologyType") == a1[6])
        {
          v12 = a1[4];
          v13 = *(*(a1[5] + 8) + 40);
          v14 = [v12 passInformation];
          [v13 addObject:v14];

          *a4 = 1;
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (id)_queue_siblingExpressPassesForExpressPass:(id)pass applicationIdentifier:(id)identifier
{
  v95 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__14;
  v84 = __Block_byref_object_dispose__14;
  v85 = 0;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  selfCopy = self;
  expressPassConfigurations = [(NPKExpressPassController *)self expressPassConfigurations];
  v8 = [expressPassConfigurations countByEnumeratingWithState:&v76 objects:v94 count:16];
  if (v8)
  {
    v9 = *v77;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v77 != v9)
        {
          objc_enumerationMutation(expressPassConfigurations);
        }

        passInformation = [*(*(&v76 + 1) + 8 * i) passInformation];
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __92__NPKExpressPassController__queue_siblingExpressPassesForExpressPass_applicationIdentifier___block_invoke;
        v72[3] = &unk_279948828;
        v12 = passInformation;
        v73 = v12;
        v74 = identifierCopy;
        v75 = &v80;
        [v12 enumerateCriteriaWithHandler:v72];
      }

      v8 = [expressPassConfigurations countByEnumeratingWithState:&v76 objects:v94 count:16];
    }

    while (v8);
  }

  v49 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEB58] set];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v14 = v81[5];
  v15 = [v14 countByEnumeratingWithState:&v68 objects:v93 count:16];
  if (v15)
  {
    v16 = *v69;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v69 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v68 + 1) + 8 * j);
        if ([v18 supportsExpress] && objc_msgSend(v18, "supportsInSessionExpress"))
        {
          if ([v18 technologyType] != 4)
          {
            primaryTCIs2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "technologyType")}];
            [v13 addObject:primaryTCIs2];
            goto LABEL_21;
          }

          tCIs = [v18 TCIs];

          if (tCIs)
          {
            tCIs2 = [v18 TCIs];
            [v49 unionSet:tCIs2];
          }

          primaryTCIs = [v18 primaryTCIs];

          if (primaryTCIs)
          {
            primaryTCIs2 = [v18 primaryTCIs];
            [v49 unionSet:primaryTCIs2];
LABEL_21:

            continue;
          }
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v68 objects:v93 count:16];
    }

    while (v15);
  }

  v23 = [(NPKExpressPassController *)selfCopy _expressPassesInformationWithTCIs:v49];
  v24 = [MEMORY[0x277CBEB58] set];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v23;
  v25 = [obj countByEnumeratingWithState:&v64 objects:v92 count:16];
  if (v25)
  {
    v26 = *v65;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v65 != v26)
        {
          objc_enumerationMutation(obj);
        }

        passUniqueIdentifier = [*(*(&v64 + 1) + 8 * k) passUniqueIdentifier];
        if (passUniqueIdentifier)
        {
          uniqueID = [passCopy uniqueID];
          v30 = [passUniqueIdentifier isEqualToString:uniqueID];

          if ((v30 & 1) == 0)
          {
            v31 = [(NSDictionary *)selfCopy->_expressPasses objectForKey:passUniqueIdentifier];
            if (v31)
            {
              [v24 addObject:v31];
            }
          }
        }
      }

      v25 = [obj countByEnumeratingWithState:&v64 objects:v92 count:16];
    }

    while (v25);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v48 = v13;
  v51 = [v48 countByEnumeratingWithState:&v60 objects:v91 count:16];
  if (v51)
  {
    v50 = *v61;
    do
    {
      for (m = 0; m != v51; ++m)
      {
        if (*v61 != v50)
        {
          objc_enumerationMutation(v48);
        }

        v32 = *(*(&v60 + 1) + 8 * m);
        v33 = -[NPKExpressPassController _expressPassInformationWithTechnologyType:](selfCopy, "_expressPassInformationWithTechnologyType:", [v32 integerValue]);
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v34 = v33;
        v35 = [v34 countByEnumeratingWithState:&v56 objects:v90 count:16];
        if (v35)
        {
          v36 = *v57;
          do
          {
            for (n = 0; n != v35; ++n)
            {
              if (*v57 != v36)
              {
                objc_enumerationMutation(v34);
              }

              passUniqueIdentifier2 = [*(*(&v56 + 1) + 8 * n) passUniqueIdentifier];
              if (passUniqueIdentifier2)
              {
                uniqueID2 = [passCopy uniqueID];
                v40 = [passUniqueIdentifier2 isEqualToString:uniqueID2];

                if ((v40 & 1) == 0)
                {
                  v42 = pk_General_log(v41);
                  v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

                  if (v43)
                  {
                    v45 = pk_General_log(v44);
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v87 = v32;
                      v88 = 2112;
                      v89 = passUniqueIdentifier2;
                      _os_log_impl(&dword_25B300000, v45, OS_LOG_TYPE_DEFAULT, "Notice: Found technology type %@ sibling express pass %@", buf, 0x16u);
                    }
                  }

                  v46 = [(NSDictionary *)selfCopy->_expressPasses objectForKey:passUniqueIdentifier2];
                  if (v46)
                  {
                    [v24 addObject:v46];
                  }
                }
              }
            }

            v35 = [v34 countByEnumeratingWithState:&v56 objects:v90 count:16];
          }

          while (v35);
        }
      }

      v51 = [v48 countByEnumeratingWithState:&v60 objects:v91 count:16];
    }

    while (v51);
  }

  _Block_object_dispose(&v80, 8);

  return v24;
}

void __92__NPKExpressPassController__queue_siblingExpressPassesForExpressPass_applicationIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [*(a1 + 32) paymentApplicationIdentifiers];
  v8 = [v7 containsObject:*(a1 + 40)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)_expressPassesInformationWithTCIs:(id)is
{
  isCopy = is;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = [MEMORY[0x277CBEB58] set];
  expressPassConfigurations = [(NPKExpressPassController *)self expressPassConfigurations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__NPKExpressPassController__expressPassesInformationWithTCIs___block_invoke;
  v9[3] = &unk_279948878;
  v6 = isCopy;
  v10 = v6;
  v11 = &v12;
  [expressPassConfigurations enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __62__NPKExpressPassController__expressPassesInformationWithTCIs___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 passInformation];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__NPKExpressPassController__expressPassesInformationWithTCIs___block_invoke_2;
  v7[3] = &unk_279948850;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v8 = v4;
  v6 = v3;
  [v6 enumerateCriteriaWithHandler:v7];
}

void __62__NPKExpressPassController__expressPassesInformationWithTCIs___block_invoke_2(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 supportsExpress] && objc_msgSend(v11, "technologyType") == 4)
        {
          v12 = [v11 TCIs];
          if ([v12 intersectsSet:a1[4]])
          {

LABEL_14:
            [*(*(a1[6] + 8) + 40) addObject:a1[5]];
            *a4 = 1;
            goto LABEL_15;
          }

          v13 = [v11 primaryTCIs];
          v14 = [v13 intersectsSet:a1[4]];

          if (v14)
          {
            goto LABEL_14;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (id)_expressPassInformationWithTechnologyType:(int64_t)type
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = [MEMORY[0x277CBEB58] set];
  expressPassConfigurations = [(NPKExpressPassController *)self expressPassConfigurations];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__NPKExpressPassController__expressPassInformationWithTechnologyType___block_invoke;
  v8[3] = &unk_279948800;
  v8[4] = &v9;
  v8[5] = type;
  [expressPassConfigurations enumerateObjectsUsingBlock:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __70__NPKExpressPassController__expressPassInformationWithTechnologyType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 passInformation];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__NPKExpressPassController__expressPassInformationWithTechnologyType___block_invoke_2;
  v6[3] = &unk_2799487D8;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v4;
  v7 = v3;
  v5 = v3;
  [v5 enumerateCriteriaWithHandler:v6];
}

void __70__NPKExpressPassController__expressPassInformationWithTechnologyType___block_invoke_2(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 supportsExpress] && objc_msgSend(v11, "technologyType") == a1[6])
        {
          [*(*(a1[5] + 8) + 40) addObject:a1[4]];
          *a4 = 1;
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (unint64_t)_transactionEventFromLockStatus:(id)status
{
  v19 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:0];
  if ([statusCopy isEqualToNumber:v4])
  {

LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInt:80];
  v6 = [statusCopy isEqualToNumber:v5];

  if (v6)
  {
    goto LABEL_4;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:1];
  if ([statusCopy isEqualToNumber:v9])
  {

LABEL_9:
    v7 = 1;
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:81];
  v11 = [statusCopy isEqualToNumber:v10];

  if (v11)
  {
    goto LABEL_9;
  }

  v13 = pk_General_log(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_General_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = statusCopy;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Warning: Got lock status changed for unexpected lock status: %@", &v17, 0xCu);
    }
  }

  v7 = 2;
LABEL_5:

  return v7;
}

- (unint64_t)_operationSourceFromRawValue:(id)value
{
  result = [value integerValue];
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

- (void)_parseExpressNotificationObject:(id)object outApplicationIdentifier:(id *)identifier outApplicationKeyIdentifier:(id *)keyIdentifier
{
  isKindOfClass = object;
  v8 = isKindOfClass;
  if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v9 = [v8 componentsSeparatedByString:@":"];
    *identifier = [v9 firstObject];
    if ([v9 count] == 2)
    {
      lastObject = [v9 lastObject];
      *keyIdentifier = lastObject;
    }

    else
    {
      *keyIdentifier = 0;
    }
  }

  else
  {
    v11 = pk_Payment_log(isKindOfClass);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = pk_Payment_log(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Warning: Expected to be provided a notification object, but instead found nil!", v15, 2u);
      }
    }
  }
}

- (void)_parseHomeKeyUWBExpressNotificationObject:(id)object outApplicationIdentifier:(id *)identifier outApplicationKeyIdentifier:(id *)keyIdentifier outReaderIdentifier:(id *)readerIdentifier outTimestamp:(id *)timestamp outTransactionLockStatus:(id *)status outLockOperationSource:(id *)source
{
  v30 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [objectCopy componentsSeparatedByString:@":"];
      v16 = pk_General_log(v15);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

      if (v17)
      {
        v19 = pk_General_log(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412290;
          v29 = v15;
          _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Will parse notification %@", &v28, 0xCu);
        }
      }

      v20 = [v15 count];
      if (v20 <= 5)
      {
        v25 = pk_General_log(v20);
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

        if (!v26)
        {
          goto LABEL_13;
        }

        v21 = pk_General_log(v27);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 138412290;
          v29 = v15;
          _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Warning: Got malformed event from sesd. %@", &v28, 0xCu);
        }
      }

      else
      {
        *identifier = [v15 objectAtIndex:0];
        *keyIdentifier = [v15 objectAtIndex:1];
        v21 = [v15 objectAtIndex:2];
        *readerIdentifier = [MEMORY[0x277CBEA90] dataWithHexEncodedString:v21];
        v22 = [v15 objectAtIndex:3];
        *timestamp = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v22, "integerValue")}];
        v23 = [v15 objectAtIndex:4];
        *status = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "integerValue")}];
        v24 = [v15 objectAtIndex:5];
        *source = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v24, "integerValue")}];
      }

LABEL_13:
    }
  }
}

- (void)_parseRKEActionNotificationObject:(id)object outApplicationIdentifier:(id *)identifier outApplicationKeyIdentifier:(id *)keyIdentifier outFunctionNumber:(id *)number outActionNumber:(id *)actionNumber outExecutionStatusNumber:(id *)statusNumber outErrorMessage:(id *)message
{
  isKindOfClass = object;
  v15 = isKindOfClass;
  if (isKindOfClass)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v16 = [v15 componentsSeparatedByString:@":"];
      *identifier = [v16 firstObject];
      if ([v16 count]<= 1)
      {
        *keyIdentifier = 0;
      }

      else
      {
        v17 = [v16 objectAtIndex:1];
        *keyIdentifier = v17;
      }

      if ([v16 count]>= 3)
      {
        v21 = [v16 objectAtIndex:2];
        if (v21)
        {
          v22 = v21;
          *number = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v21, "integerValue")}];
        }
      }

      if ([v16 count]>= 4)
      {
        v23 = [v16 objectAtIndex:3];
        if (v23)
        {
          v24 = v23;
          *actionNumber = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "integerValue")}];
        }
      }

      if ([v16 count]>= 5)
      {
        v25 = [v16 objectAtIndex:4];
        if (v25)
        {
          v26 = v25;
          *statusNumber = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v25, "integerValue")}];
        }
      }

      if ([v16 count]< 6)
      {
        v27 = 0;
      }

      else
      {
        v27 = [v16 objectAtIndex:5];
      }

      v28 = v27;
      *message = v28;

LABEL_22:
      goto LABEL_23;
    }
  }

  v18 = pk_Payment_log(isKindOfClass);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v19)
  {
    v16 = pk_Payment_log(v20);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Warning: Expected to be provided a notification object, but instead found nil!", v29, 2u);
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (void)_internalQueue_startFieldDetector
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Starting field detector for terminal-requested auth", v10, 2u);
    }
  }

  if (!self->_fieldDetector)
  {
    v8 = objc_alloc_init(MEMORY[0x277D37EE0]);
    fieldDetector = self->_fieldDetector;
    self->_fieldDetector = v8;

    [(PKFieldDetector *)self->_fieldDetector registerObserver:self];
  }
}

- (void)_internalQueue_stopFieldDetector
{
  dispatch_assert_queue_V2(self->_internalQueue);
  [(PKFieldDetector *)self->_fieldDetector unregisterObserver:self];
  fieldDetector = self->_fieldDetector;
  self->_fieldDetector = 0;
}

- (void)fieldDetectorDidEnterField:(id)field withProperties:(id)properties
{
  propertiesCopy = properties;
  passLibrary = [(NPKExpressPassController *)self passLibrary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__NPKExpressPassController_fieldDetectorDidEnterField_withProperties___block_invoke;
  v8[3] = &unk_2799488A0;
  v9 = propertiesCopy;
  selfCopy = self;
  v7 = propertiesCopy;
  [passLibrary getMetadataForFieldWithProperties:v7 withHandler:v8];
}

void __70__NPKExpressPassController_fieldDetectorDidEnterField_withProperties___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 shouldIgnoreField] & 1) == 0 && objc_msgSend(*(a1 + 32), "authenticationRequired") && objc_msgSend(*(a1 + 32), "terminalType") == 3)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) TCIs];
    v8 = [v5 setWithArray:v7];
    v9 = [v6 _expressPassesInformationWithTCIs:v8];

    if ([v9 count])
    {
      v10 = [v9 count];
      if (v10 >= 2)
      {
        v11 = pk_Payment_log(v10);
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

        if (v12)
        {
          v14 = pk_Payment_log(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Warning: Multiple express passes match TCIs for transient authentication required field detect event", buf, 2u);
          }
        }
      }

      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __70__NPKExpressPassController_fieldDetectorDidEnterField_withProperties___block_invoke_126;
      v21[3] = &unk_2799454E0;
      v15 = v9;
      v16 = *(a1 + 40);
      v22 = v15;
      v23 = v16;
      NPKGuaranteeMainThread(v21);
      v17 = v22;
    }

    else
    {
      v18 = pk_Payment_log(0);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

      if (!v19)
      {
        goto LABEL_13;
      }

      v17 = pk_Payment_log(v20);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Warning: No express passes match TCIs for transient authentication required field detect event", buf, 2u);
      }
    }

LABEL_13:
  }
}

void __70__NPKExpressPassController_fieldDetectorDidEnterField_withProperties___block_invoke_126(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) anyObject];
  v3 = [*(a1 + 40) expressPasses];
  v4 = [v2 passUniqueIdentifier];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v7 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 expressPassController:*(a1 + 40) didReceiveAuthenticationRequestForPass:v5];
    }
  }

  else
  {
    v8 = pk_Payment_log(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v2 passUniqueIdentifier];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: Got on-device authentication required for unique ID %@, but no express pass!", &v13, 0xCu);
      }
    }
  }
}

- (NPKExpressPassControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end