@interface NPKContactlessPaymentSessionManager
- (BOOL)_canHandleRKEActionForTileItem:(id)item pass:(id)pass outAction:(id *)action outFunction:(id *)function outError:(id *)error;
- (NPKContactlessPaymentSessionManager)init;
- (id)_baseSessionStateForUpdate;
- (id)_managerContextForContactlessInterfaceTransactionContext:(id)context;
- (id)_paymentBalancesFromTransitAppletBalances:(id)balances;
- (id)_sessionStateForBarcodeTransactionStatus:(unint64_t)status paymentBarcode:(id)barcode transaction:(id)transaction;
- (id)_sessionStateForExpressTransactionStatus:(unint64_t)status pass:(id)pass paymentApplication:(id)application concreteTransactions:(id)transactions ephemeralTransaction:(id)transaction mutatedBalances:(id)balances appletState:(id)state;
- (id)_sessionStateForPaymentBarcode:(id)barcode;
- (id)_sessionStateForTransactionContext:(id)context;
- (id)_sessionStateForUserCanceledBarcodeTransaction;
- (id)_updatedPassItemFieldWithPaymentPass:(id)pass transitAppletBalances:(id)balances appletState:(id)state paymentApplication:(id)application;
- (void)_cleanupBarcodePaymentSession;
- (void)_cleanupQuickPaymentSession;
- (void)_handleRKEActionRequestedForPass:(id)pass action:(id)action function:(id)function withSession:(id)session completion:(id)completion;
- (void)_handleServiceModeRequestEnded;
- (void)_handleSessionTimerFired;
- (void)_handleValueAddedServiceTransactions:(id)transactions forValueAddedServicePasses:(id)passes paymentTransaction:(id)transaction outUserInterventionRequiredPasses:(id *)requiredPasses;
- (void)_prepareSessionStateForSendingToObservers:(id)observers;
- (void)_registerForServiceModeRequestNotification;
- (void)_sendSessionStateToObservers:(id)observers;
- (void)_startSessionTimerWithReason:(unint64_t)reason;
- (void)_stopSessionTimer;
- (void)barcodePaymentSession:(id)session didReceivePaymentBarcode:(id)barcode;
- (void)barcodePaymentSession:(id)session didUpdateTransactionStatus:(unint64_t)status withTransaction:(id)transaction;
- (void)handleAuthorize18013RequestWithDataToRelease:(id)release credential:(id)credential;
- (void)handleBarcodePaymentPinCodeEntry:(id)entry;
- (void)handleBarcodePaymentUserIntentionConfirmation:(BOOL)confirmation;
- (void)handleContactlessPaymentInterfaceDidAppear;
- (void)handleContactlessPaymentInterfaceDidDisappear;
- (void)handleContactlessPaymentSession:(id)session authenticationExpected:(BOOL)expected;
- (void)handleCredential:(id)credential;
- (void)handleDidPresentPasscodeAuthentication;
- (void)handleDoublePressReceivedAtDate:(id)date;
- (void)handleEndBarcodePaymentSessionRequestedByUI;
- (void)handleEndQuickPaymentSessionRequestedByUI;
- (void)handleEndSessionRequestedForReason:(unint64_t)reason;
- (void)handleExpressTransactionStatus:(unint64_t)status forPass:(id)pass paymentApplication:(id)application concreteTransactions:(id)transactions ephemeralTransaction:(id)transaction mutatedBalances:(id)balances appletState:(id)state;
- (void)handleFailureToReleaseDataWithError:(id)error;
- (void)handleISO18013DataReleaseCanceled;
- (void)handleISO18013Request:(id)request withReaderAuthInfo:(id)info;
- (void)handleISO18013TransactionStarted;
- (void)handleLocalAuthenticationError:(id)error;
- (void)handlePaymentBarcodeRequested;
- (void)handleRKEActionRequestedForTileItem:(id)item pass:(id)pass completion:(id)completion;
- (void)handleRKETransactionForPass:(id)pass fromTile:(id)tile;
- (void)handleRetryLoadingPaymentBarcodeRequested;
- (void)handleServiceModeRequestedForPass:(id)pass;
- (void)handleStandaloneTransactionWithAction:(unint64_t)action forPass:(id)pass;
- (void)handleStandaloneTransactionWithAction:(unint64_t)action forPass:(id)pass withAccessory:(id)accessory;
- (void)handleTransactionStarted;
- (void)handleUserSelectedPass:(id)pass;
- (void)passesDataSource:(id)source didRemovePasses:(id)passes;
- (void)passesDataSource:(id)source didUpdatePasses:(id)passes;
- (void)passesDataSourceDidReloadPasses:(id)passes;
- (void)paymentSession:(id)session didActivatePass:(id)pass;
- (void)paymentSession:(id)session didCompleteTransactionForReason:(unint64_t)reason withTransactionContext:(id)context shouldCleanupSession:(BOOL)cleanupSession;
- (void)paymentSession:(id)session didFailTransactionForPass:(id)pass withValueAddedServiceTransactions:(id)transactions forValueAddedServicePasses:(id)passes;
- (void)paymentSession:(id)session didMakePassCurrent:(id)current;
- (void)paymentSession:(id)session didReceive18013Request:(id)request readerAuthInfo:(id)info;
- (void)paymentSession:(id)session willActivatePass:(id)pass;
- (void)paymentSessionDidEnterField:(id)field;
- (void)paymentSessionDidExitField:(id)field;
- (void)paymentSessionDidReceiveActivationError:(id)error;
- (void)paymentSessionDidReceiveActivityTimeout:(id)timeout;
- (void)paymentSessionDidReceiveAuthorizationTimeout:(id)timeout;
- (void)paymentSessionDidReceiveCredential:(id)credential;
- (void)paymentSessionDidReceiveStartTransaction:(id)transaction;
- (void)paymentSessionDidReceiveTransactionError:(id)error;
- (void)paymentSessionDidSelectPayment:(id)payment;
- (void)paymentSessionDidSelectValueAddedService:(id)service;
- (void)paymentSessionDidStart:(id)start;
- (void)paymentSessionIsWaitingToStart:(id)start;
- (void)registerObserver:(id)observer withRelativePriority:(unint64_t)priority;
- (void)unregisterObserver:(id)observer;
@end

@implementation NPKContactlessPaymentSessionManager

- (NPKContactlessPaymentSessionManager)init
{
  v18.receiver = self;
  v18.super_class = NPKContactlessPaymentSessionManager;
  v2 = [(NPKContactlessPaymentSessionManager *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(NPKObserverManager);
    v4 = *(v2 + 6);
    *(v2 + 6) = v3;

    v5 = objc_alloc_init(NPKQuickPaymentSessionCleanupDelegate);
    v6 = *(v2 + 5);
    *(v2 + 5) = v5;

    objc_initWeak(&location, v2);
    v7 = dispatch_get_global_queue(0, 0);
    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
    v9 = *(v2 + 8);
    *(v2 + 8) = v8;

    v10 = *(v2 + 8);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __43__NPKContactlessPaymentSessionManager_init__block_invoke;
    v15 = &unk_279945030;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(v10, &v12);
    dispatch_resume(*(v2 + 8));
    [v2 _registerForServiceModeRequestNotification];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __43__NPKContactlessPaymentSessionManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__NPKContactlessPaymentSessionManager_init__block_invoke_2;
    block[3] = &unk_279944F98;
    v4 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)handleContactlessPaymentSession:(id)session authenticationExpected:(BOOL)expected
{
  expectedCopy = expected;
  v29 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v8 = pk_Payment_log(sessionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = sessionCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling new contactless payment session: %@", &v27, 0xCu);
    }
  }

  [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
  [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
  objc_storeStrong(&self->_quickPaymentSession, session);
  v13 = pk_Payment_log(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v16 = pk_Payment_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = sessionCopy;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] did set new quick payment session: %@", &v27, 0xCu);
    }
  }

  serviceModeRequestedPass = [(NPKContactlessPaymentSessionState *)self->_lastSessionState serviceModeRequestedPass];
  uniqueID = [serviceModeRequestedPass uniqueID];
  currentPass = [sessionCopy currentPass];
  uniqueID2 = [currentPass uniqueID];
  v21 = [uniqueID isEqualToString:uniqueID2];

  if (v21)
  {
    [(NPKQuickPaymentSession *)self->_quickPaymentSession setInServiceMode:1];
    [(NPKContactlessPaymentSessionManager *)self _handleServiceModeRequestEnded];
  }

  lastSessionState = self->_lastSessionState;
  self->_lastSessionState = 0;

  credential = self->_credential;
  self->_credential = 0;

  [sessionCopy setDelegate:self];
  currentPass2 = [sessionCopy currentPass];
  if (!currentPass2)
  {
    userSelectedPass = self->_userSelectedPass;
    if (userSelectedPass)
    {
      currentPass2 = userSelectedPass;
      [sessionCopy setCurrentPass:currentPass2];
    }

    else
    {
      currentPass2 = 0;
    }
  }

  if (!self->_contactlessPaymentInterfaceVisible || (-[NPKContactlessPaymentSessionManager _startSessionTimerWithReason:](self, "_startSessionTimerWithReason:", 1), [sessionCopy confirmSessionExpectingCredential:expectedCopy], !self->_contactlessPaymentInterfaceVisible))
  {
    [(NPKContactlessPaymentSessionManager *)self _startSessionTimerWithReason:0];
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setCurrentPass:currentPass2];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)handleDidPresentPasscodeAuthentication
{
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling did present passcode Authentication", v7, 2u);
    }
  }

  [(NPKContactlessPaymentSessionManager *)self _stopSessionTimer];
}

- (void)handleContactlessPaymentInterfaceDidAppear
{
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling contactless payment interface did appear", v7, 2u);
    }
  }

  self->_contactlessPaymentInterfaceVisible = 1;
  [(NPKContactlessPaymentSessionManager *)self _startSessionTimerWithReason:1];
  [(NPKQuickPaymentSession *)self->_quickPaymentSession confirmSessionExpectingCredential:[(NPKContactlessPaymentSessionState *)self->_lastSessionState doublePressReceived]];
  if ([(NPKContactlessPaymentSessionState *)self->_lastSessionState contactlessInterfaceReady])
  {
    kdebug_trace();
  }
}

- (void)handleContactlessPaymentInterfaceDidDisappear
{
  v13 = *MEMORY[0x277D85DE8];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  v4 = pk_Payment_log(quickPaymentSession);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = quickPaymentSession;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling contactless payment interface did disappear with session: %@", &v11, 0xCu);
    }
  }

  self->_contactlessPaymentInterfaceVisible = 0;
  if (quickPaymentSession)
  {
    [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
    v8 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
    [v8 setCompletionReason:1];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v8];
  }

  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  if (barcodePaymentSession)
  {
    [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
    v10 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
    [v10 setCompletionReason:1];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v10];
  }
}

- (void)handleCredential:(id)credential
{
  v16 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  v5 = pk_Payment_log(credentialCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      quickPaymentSession = self->_quickPaymentSession;
      v12 = 138412546;
      v13 = credentialCopy;
      v14 = 2112;
      v15 = quickPaymentSession;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling credential: %@ with quickPaymentSession:%@", &v12, 0x16u);
    }
  }

  credential = self->_credential;
  self->_credential = credentialCopy;
  v11 = credentialCopy;

  [(NPKQuickPaymentSession *)self->_quickPaymentSession setCredential:v11];
  if (self->_contactlessPaymentInterfaceVisible)
  {
    [(NPKContactlessPaymentSessionManager *)self _startSessionTimerWithReason:1];
  }
}

- (void)handleUserSelectedPass:(id)pass
{
  v42 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v6 = pk_Payment_log(passCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      v36 = 138412290;
      v37 = uniqueID;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling user selected pass: %@", &v36, 0xCu);
    }
  }

  p_userSelectedPass = &self->_userSelectedPass;
  v12 = pk_Payment_log([(PKPass *)self->_userSelectedPass isEqualToPassIncludingMetadata:passCopy]);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [(PKPass *)*p_userSelectedPass uniqueID];
      uniqueID3 = [passCopy uniqueID];
      v18 = NSStringFromBOOL();
      v36 = 138412802;
      v37 = uniqueID2;
      v38 = 2112;
      v39 = uniqueID3;
      v40 = 2112;
      v41 = v18;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Is previous user selected pass (%@) equal to new pass (%@)? %@", &v36, 0x20u);
    }
  }

  objc_storeStrong(&self->_userSelectedPass, pass);
  if (self->_quickPaymentSession)
  {
    v20 = pk_Payment_log(v19);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v23 = pk_Payment_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Updating payment session with user selected pass", &v36, 2u);
      }
    }

    [(NPKQuickPaymentSession *)self->_quickPaymentSession setCurrentPass:passCopy];
  }

  serviceModeRequestedPass = [(NPKContactlessPaymentSessionState *)self->_lastSessionState serviceModeRequestedPass];
  v25 = serviceModeRequestedPass;
  if (serviceModeRequestedPass)
  {
    uniqueID4 = [serviceModeRequestedPass uniqueID];
    uniqueID5 = [(PKPass *)*p_userSelectedPass uniqueID];
    v28 = [uniqueID4 isEqualToString:uniqueID5];

    if ((v28 & 1) == 0)
    {
      v30 = pk_Payment_log(v29);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

      if (v31)
      {
        v33 = pk_Payment_log(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID6 = [v25 uniqueID];
          v36 = 138412290;
          v37 = uniqueID6;
          _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Clearing service mode requested pass %@", &v36, 0xCu);
        }
      }

      _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
      [_baseSessionStateForUpdate setServiceModeRequestedPass:0];
      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
      [(NPKContactlessPaymentSessionManager *)self _handleServiceModeRequestEnded];
    }
  }
}

- (void)handleDoublePressReceivedAtDate:(id)date
{
  v12 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = pk_Payment_log(dateCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = dateCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] handleDoublePressReceivedAtDate:%@", &v10, 0xCu);
    }
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setDoublePressReceived:1];
  [_baseSessionStateForUpdate setDoublePressTimestamp:dateCopy];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)handleServiceModeRequestedForPass:(id)pass
{
  passCopy = pass;
  [(NPKContactlessPaymentSessionManager *)self handleUserSelectedPass:?];
  quickPaymentSession = self->_quickPaymentSession;
  if (quickPaymentSession)
  {
    [(NPKQuickPaymentSession *)quickPaymentSession setInServiceMode:1];
    [(NPKContactlessPaymentSessionManager *)self _handleServiceModeRequestEnded];
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  v6 = _baseSessionStateForUpdate;
  if (!self->_quickPaymentSession)
  {
    [_baseSessionStateForUpdate setServiceModeRequestedPass:passCopy];
  }

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v6];
}

- (void)handleRKEActionRequestedForTileItem:(id)item pass:(id)pass completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  passCopy = pass;
  completionCopy = completion;
  v11 = pk_Payment_log(completionCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412546;
      v42 = itemCopy;
      v43 = 2112;
      v44 = uniqueID;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling tile requested for item: %@ pass: %@", buf, 0x16u);
    }
  }

  action = [itemCopy action];
  type = [action type];

  if (type == 4)
  {
    v39 = 0;
    v40 = 0;
    v38 = 0;
    v19 = [(NPKContactlessPaymentSessionManager *)self _canHandleRKEActionForTileItem:itemCopy pass:passCopy outAction:&v40 outFunction:&v39 outError:&v38];
    v20 = v40;
    v21 = v39;
    v22 = v38;
    v23 = v22;
    if (v22 || !v19)
    {
      v32 = pk_Payment_log(v22);
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

      if (v33)
      {
        v35 = pk_Payment_log(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          uniqueID2 = [passCopy uniqueID];
          *buf = 138413058;
          v42 = uniqueID2;
          v43 = 2112;
          v44 = v20;
          v45 = 2112;
          v46 = v21;
          v47 = 2112;
          v48 = v23;
          _os_log_impl(&dword_25B300000, v35, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Unable to handle RKE action for pass: %@ with action: %@ function: %@ error: %@", buf, 0x2Au);
        }
      }

      quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

      if (quickPaymentSession)
      {
        [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      }

      quickPaymentSession4 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
      [quickPaymentSession4 setCompletionReason:6];
      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:quickPaymentSession4];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      v24 = [NPKQuickPaymentSession sessionWithQueue:MEMORY[0x277D85CD0]];
      [(NPKContactlessPaymentSessionManager *)self setQuickPaymentSession:v24];

      quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [quickPaymentSession2 setCurrentPass:passCopy];

      quickPaymentSession3 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [quickPaymentSession3 setRequireFirstInQueue:0];

      quickPaymentSession4 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [(NPKContactlessPaymentSessionManager *)self _handleRKEActionRequestedForPass:passCopy action:v20 function:v21 withSession:quickPaymentSession4 completion:completionCopy];
    }

LABEL_21:
    goto LABEL_22;
  }

  v28 = pk_Payment_log(v18);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

  if (v29)
  {
    v20 = pk_Payment_log(v30);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      uniqueID3 = [passCopy uniqueID];
      *buf = 138412546;
      v42 = itemCopy;
      v43 = 2112;
      v44 = uniqueID3;
      _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Asked to handle RKE action for unexpected item: %@ pass: %@; Aborting.", buf, 0x16u);
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (void)handleEndSessionRequestedForReason:(unint64_t)reason
{
  v21 = *MEMORY[0x277D85DE8];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  v6 = quickPaymentSession;
  if (quickPaymentSession)
  {
    v7 = pk_Payment_log(quickPaymentSession);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = pk_Payment_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v6;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling end quick payment session requested with session: %@", &v19, 0xCu);
      }
    }

    [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
    v11 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
    [v11 setCompletionReason:reason];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v11];
  }

  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  v13 = barcodePaymentSession;
  if (barcodePaymentSession)
  {
    v14 = pk_Payment_log(barcodePaymentSession);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v17 = pk_Payment_log(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v13;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling end barcode payment session requested with session: %@", &v19, 0xCu);
      }
    }

    [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
    _sessionStateForUserCanceledBarcodeTransaction = [(NPKContactlessPaymentSessionManager *)self _sessionStateForUserCanceledBarcodeTransaction];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_sessionStateForUserCanceledBarcodeTransaction];
  }
}

- (void)handleStandaloneTransactionWithAction:(unint64_t)action forPass:(id)pass
{
  v8 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForExpressTransactionStatus:4 pass:pass paymentApplication:0 concreteTransactions:0 ephemeralTransaction:0 mutatedBalances:0 appletState:0];
  transactionContext = [v8 transactionContext];
  [transactionContext setAction:action];

  transactionContext2 = [v8 transactionContext];
  [transactionContext2 setTransactionStatus:2];

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v8];
}

- (void)handleRKETransactionForPass:(id)pass fromTile:(id)tile
{
  tileCopy = tile;
  v10 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForExpressTransactionStatus:4 pass:pass paymentApplication:0 concreteTransactions:0 ephemeralTransaction:0 mutatedBalances:0 appletState:0];
  transactionContext = [v10 transactionContext];
  [transactionContext setAction:5];

  transactionContext2 = [v10 transactionContext];
  [transactionContext2 setPassTile:tileCopy];

  transactionContext3 = [v10 transactionContext];
  [transactionContext3 setTransactionStatus:2];

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v10];
}

- (void)handleStandaloneTransactionWithAction:(unint64_t)action forPass:(id)pass withAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v12 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForExpressTransactionStatus:4 pass:pass paymentApplication:0 concreteTransactions:0 ephemeralTransaction:0 mutatedBalances:0 appletState:0];
  transactionContext = [v12 transactionContext];
  [transactionContext setAction:action];

  transactionContext2 = [v12 transactionContext];
  [transactionContext2 setTransactionStatus:2];

  transactionContext3 = [v12 transactionContext];
  [transactionContext3 setAccessory:accessoryCopy];

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v12];
}

- (void)handleExpressTransactionStatus:(unint64_t)status forPass:(id)pass paymentApplication:(id)application concreteTransactions:(id)transactions ephemeralTransaction:(id)transaction mutatedBalances:(id)balances appletState:(id)state
{
  v40 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  applicationCopy = application;
  transactionsCopy = transactions;
  transactionCopy = transaction;
  balancesCopy = balances;
  stateCopy = state;
  v21 = pk_Payment_log(stateCopy);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

  if (v22)
  {
    v24 = pk_Payment_log(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v27 = NSStringFromNPKExpressTransactionStatus(status);
      [passCopy uniqueID];
      *buf = 138413570;
      v29 = v27;
      v31 = v30 = 2112;
      v25 = v31;
      v32 = 2112;
      v33 = transactionsCopy;
      v34 = 2112;
      v35 = transactionCopy;
      v36 = 2112;
      v37 = balancesCopy;
      v38 = 2112;
      v39 = stateCopy;
      _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Got express transaction status %@ for pass %@ concrete transactions %@ ephemeral transactions %@ mutatedBalances:%@ applet state %@", buf, 0x3Eu);
    }
  }

  v26 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForExpressTransactionStatus:status pass:passCopy paymentApplication:applicationCopy concreteTransactions:transactionsCopy ephemeralTransaction:transactionCopy mutatedBalances:balancesCopy appletState:stateCopy];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v26];
}

- (void)handleLocalAuthenticationError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = pk_Payment_log(errorCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = errorCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling local authentication error %@", &v12, 0xCu);
    }
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setSessionAuthorized:0];
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277CD4770]])
  {

LABEL_9:
    [_baseSessionStateForUpdate setFailureType:1];
    goto LABEL_10;
  }

  if ([errorCopy code] != -9)
  {
    code = [errorCopy code];

    if (code == -4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)handleEndQuickPaymentSessionRequestedByUI
{
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

  if (quickPaymentSession)
  {
    v5 = pk_Payment_log(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling ending quick payment session requested by UI.", v12, 2u);
      }
    }

    userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
    paymentPass = [userSelectedPass paymentPass];

    if (([paymentPass supportsBarcodePayment] & 1) == 0)
    {
      [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      v11 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
      [v11 setCompletionReason:7];
      [v11 setDoublePressReceived:0];
      [v11 setSessionAuthorized:0];
      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v11];
    }
  }
}

- (void)handlePaymentBarcodeRequested
{
  v24 = *MEMORY[0x277D85DE8];
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  paymentPass = [userSelectedPass paymentPass];

  if ([paymentPass supportsBarcodePayment])
  {
    devicePrimaryBarcodePaymentApplication = [paymentPass devicePrimaryBarcodePaymentApplication];
    [devicePrimaryBarcodePaymentApplication state];
    IsPersonalized = PKPaymentApplicationStateIsPersonalized();

    quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

    barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

    v10 = pk_Payment_log(v9);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (IsPersonalized && quickPaymentSession && !barcodePaymentSession)
    {
      if (v11)
      {
        v13 = pk_Payment_log(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v19[0]) = 0;
          _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Transitioning from quickPaymentSession into barcodePaymentSession.", v19, 2u);
        }
      }

      [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      v14 = [NPKBarcodePaymentSession alloc];
      credential = [(NPKContactlessPaymentSessionManager *)self credential];
      v16 = [(NPKBarcodePaymentSession *)v14 initWithPaymentPass:paymentPass authorizationCredential:credential];

      [v16 setDelegate:self];
      [v16 startSession];
      [(NPKContactlessPaymentSessionManager *)self setBarcodePaymentSession:v16];
      currentPaymentBarcode = [v16 currentPaymentBarcode];
      v18 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForPaymentBarcode:currentPaymentBarcode];

      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v18];
    }

    else
    {
      if (!v11)
      {
        goto LABEL_14;
      }

      v16 = pk_Payment_log(v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19[0] = 67109632;
        v19[1] = IsPersonalized != 0;
        v20 = 1024;
        v21 = quickPaymentSession != 0;
        v22 = 1024;
        v23 = barcodePaymentSession == 0;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Skip creating new barcodePaymentSession - isPersonalized: %d, hasQuickPaymentSession: %d, hasNoExistingBarcodePaymentSession: %d", v19, 0x14u);
      }
    }
  }

LABEL_14:
}

- (void)handleRetryLoadingPaymentBarcodeRequested
{
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (barcodePaymentSession)
  {
    v5 = pk_Payment_log(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling retry loading paymentBarcode", v10, 2u);
      }
    }

    barcodePaymentSession2 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
    [barcodePaymentSession2 retryFetchingBarcode];
  }
}

- (void)handleBarcodePaymentUserIntentionConfirmation:(BOOL)confirmation
{
  confirmationCopy = confirmation;
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  [barcodePaymentSession submitUserIntentionConfirmation:confirmationCopy];
}

- (void)handleBarcodePaymentPinCodeEntry:(id)entry
{
  entryCopy = entry;
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  [barcodePaymentSession submitPinCode:entryCopy];
}

- (void)handleEndBarcodePaymentSessionRequestedByUI
{
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (barcodePaymentSession)
  {
    v5 = pk_Payment_log(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling ending barcode payment session requested by UI.", v11, 2u);
      }
    }

    [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
    _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
    [_baseSessionStateForUpdate setCompletionReason:7];
    transactionContext = [_baseSessionStateForUpdate transactionContext];
    [transactionContext setTransactionStatus:2];

    [_baseSessionStateForUpdate setDoublePressReceived:0];
    [_baseSessionStateForUpdate setSessionAuthorized:0];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
  }
}

- (void)handleTransactionStarted
{
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setCanChangePass:0];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)handleISO18013TransactionStarted
{
  v8 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v8 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v8 setReleaseDataStatus:1];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v8 setTransactionStatus:1];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass = [quickPaymentSession currentPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v8 setTransactionPass:currentPass];

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass2 = [quickPaymentSession2 currentPass];
  [_baseSessionStateForUpdate setCurrentPass:currentPass2];

  [_baseSessionStateForUpdate setSessionAuthorized:0];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [_baseSessionStateForUpdate setCanChangePass:0];
  [_baseSessionStateForUpdate setCompletionReason:0];
  [_baseSessionStateForUpdate setTransactionContext:v8];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)handleISO18013DataReleaseCanceled
{
  v3 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v3 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v3 setReleaseDataStatus:6];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v3 setTransactionStatus:2];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

  if (quickPaymentSession)
  {
    v6 = pk_Payment_log(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling ending quick payment session requested by UI.", v13, 2u);
      }
    }

    userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
    paymentPass = [userSelectedPass paymentPass];

    if (([paymentPass supportsBarcodePayment] & 1) == 0)
    {
      [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      v12 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
      [v12 setTransactionContext:v3];
      [v12 setCompletionReason:7];
      [v12 setFailureType:7];
      [v12 setDoublePressReceived:0];
      [v12 setSessionAuthorized:0];
      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v12];
    }
  }
}

- (void)handleISO18013Request:(id)request withReaderAuthInfo:(id)info
{
  infoCopy = info;
  requestCopy = request;
  v11 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setReleaseDataStatus:2];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setTransactionStatus:1];
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setTransactionPass:userSelectedPass];

  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setReleaseDataRequest:requestCopy];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v11 setReaderAuthInfo:infoCopy];

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  userSelectedPass2 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [_baseSessionStateForUpdate setCurrentPass:userSelectedPass2];

  [_baseSessionStateForUpdate setSessionAuthorized:0];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [_baseSessionStateForUpdate setCanChangePass:0];
  [_baseSessionStateForUpdate setCompletionReason:0];
  [_baseSessionStateForUpdate setTransactionContext:v11];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)handleAuthorize18013RequestWithDataToRelease:(id)release credential:(id)credential
{
  credentialCopy = credential;
  releaseCopy = release;
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  [quickPaymentSession authorize18013RequestWithDataToRelease:releaseCopy credential:credentialCopy];

  v16 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setReleaseDataStatus:3];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setTransactionStatus:1];
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setTransactionPass:userSelectedPass];

  lastSessionState = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
  transactionContext = [lastSessionState transactionContext];
  releaseDataRequest = [transactionContext releaseDataRequest];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v16 setReleaseDataRequest:releaseDataRequest];

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  userSelectedPass2 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [_baseSessionStateForUpdate setCurrentPass:userSelectedPass2];

  [_baseSessionStateForUpdate setSessionAuthorized:1];
  [_baseSessionStateForUpdate setDoublePressReceived:1];
  v15 = [MEMORY[0x277CBEAA8] now];
  [_baseSessionStateForUpdate setDoublePressTimestamp:v15];

  [_baseSessionStateForUpdate setContactlessInterfaceReady:1];
  [_baseSessionStateForUpdate setCanChangePass:0];
  [_baseSessionStateForUpdate setCompletionReason:0];
  [_baseSessionStateForUpdate setTransactionContext:v16];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)handleFailureToReleaseDataWithError:(id)error
{
  v6 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v6 setTransactionType:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v6 setReleaseDataStatus:5];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v6 setTransactionStatus:2];
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [_baseSessionStateForUpdate setCurrentPass:userSelectedPass];

  [_baseSessionStateForUpdate setTransactionContext:v6];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setSessionAuthorized:0];
  [_baseSessionStateForUpdate setCompletionReason:5];
  [_baseSessionStateForUpdate setFailureType:2];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)barcodePaymentSession:(id)session didReceivePaymentBarcode:(id)barcode
{
  barcodeCopy = barcode;
  sessionCopy = session;
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (barcodePaymentSession == sessionCopy)
  {
    v8 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForPaymentBarcode:barcodeCopy];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v8];
  }
}

- (void)barcodePaymentSession:(id)session didUpdateTransactionStatus:(unint64_t)status withTransaction:(id)transaction
{
  sessionCopy = session;
  transactionCopy = transaction;
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (barcodePaymentSession == sessionCopy)
  {
    currentPaymentBarcode = [sessionCopy currentPaymentBarcode];
    v11 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForBarcodeTransactionStatus:status paymentBarcode:currentPaymentBarcode transaction:transactionCopy];

    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v11];
    transactionContext = [v11 transactionContext];
    transactionStatus = [transactionContext transactionStatus];

    if (transactionStatus == 2)
    {
      [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
      _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];

      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
      v11 = _baseSessionStateForUpdate;
    }
  }
}

- (void)_cleanupBarcodePaymentSession
{
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  if (barcodePaymentSession)
  {
    v4 = barcodePaymentSession;
    [barcodePaymentSession invalidateSession];
    [(NPKContactlessPaymentSessionManager *)self setBarcodePaymentSession:0];
    barcodePaymentSession = v4;
  }
}

- (void)passesDataSource:(id)source didRemovePasses:(id)passes
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  v6 = [passes pk_arrayByApplyingBlock:&__block_literal_global_545];
  v7 = [v5 setWithArray:v6];

  v9 = pk_Payment_log(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_Payment_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      allObjects = [v7 allObjects];
      v14 = [allObjects componentsJoinedByString:{@", "}];
      v40 = 138412290;
      v41 = v14;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Got removed unique IDs: %@", &v40, 0xCu);
    }
  }

  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass = [quickPaymentSession currentPass];
  uniqueID = [currentPass uniqueID];

  v19 = pk_Payment_log(v18);
  LODWORD(currentPass) = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

  if (currentPass)
  {
    v21 = pk_Payment_log(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138412290;
      v41 = uniqueID;
      _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Quick payment session pass unique ID is %@", &v40, 0xCu);
    }
  }

  if (uniqueID)
  {
    v22 = [v7 containsObject:uniqueID];
    if (v22)
    {
      v23 = pk_Payment_log(v22);
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

      if (v24)
      {
        v26 = pk_Payment_log(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v40) = 0;
          _os_log_impl(&dword_25B300000, v26, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Clearing quick payment session current pass because it has been removed", &v40, 2u);
        }
      }

      [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
      v27 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:0];
      [v27 setCompletionReason:7];
      [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v27];
    }
  }

  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  paymentPass = [barcodePaymentSession paymentPass];
  uniqueID2 = [paymentPass uniqueID];

  v32 = pk_Payment_log(v31);
  LODWORD(paymentPass) = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);

  if (paymentPass)
  {
    v34 = pk_Payment_log(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138412290;
      v41 = uniqueID2;
      _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Barcode payment session pass unique ID is %@", &v40, 0xCu);
    }
  }

  if (uniqueID2)
  {
    v35 = [v7 containsObject:uniqueID2];
    if (v35)
    {
      v36 = pk_Payment_log(v35);
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

      if (v37)
      {
        v39 = pk_Payment_log(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v40) = 0;
          _os_log_impl(&dword_25B300000, v39, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Tearing down barcode payment session because pass has been removed", &v40, 2u);
        }
      }

      [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
    }
  }
}

- (void)passesDataSource:(id)source didUpdatePasses:(id)passes
{
  v68 = *MEMORY[0x277D85DE8];
  passesCopy = passes;
  v6 = MEMORY[0x277CBEB98];
  v7 = [passesCopy pk_arrayByApplyingBlock:&__block_literal_global_550];
  v8 = [v6 setWithArray:v7];

  v10 = pk_Payment_log(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      allObjects = [v8 allObjects];
      v15 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v67 = v15;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Got updated unique IDs: %@", buf, 0xCu);
    }
  }

  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass = [quickPaymentSession currentPass];
  uniqueID = [currentPass uniqueID];

  v20 = pk_Payment_log(v19);
  LODWORD(currentPass) = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (currentPass)
  {
    v22 = pk_Payment_log(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v67 = uniqueID;
      _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Quick payment session pass unique ID is %@", buf, 0xCu);
    }
  }

  if (uniqueID && [v8 containsObject:uniqueID])
  {
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_551;
    v64[3] = &unk_279946E00;
    v65 = uniqueID;
    v23 = [passesCopy pk_objectsPassingTest:v64];
    firstObject = [v23 firstObject];

    if (firstObject)
    {
      v26 = pk_Payment_log(v25);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (v27)
      {
        v29 = pk_Payment_log(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID2 = [firstObject uniqueID];
          *buf = 138412290;
          v67 = uniqueID2;
          _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Setting updated payment session pass with unique ID %@", buf, 0xCu);
        }
      }

      quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [quickPaymentSession2 setCurrentPass:firstObject];
    }
  }

  uniqueID3 = [(PKPass *)self->_userSelectedPass uniqueID];
  v33 = pk_Payment_log(uniqueID3);
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

  if (v34)
  {
    v36 = pk_Payment_log(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v67 = uniqueID3;
      _os_log_impl(&dword_25B300000, v36, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] User selected pass unique ID is %@", buf, 0xCu);
    }
  }

  if (uniqueID3 && [v8 containsObject:uniqueID3])
  {
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_553;
    v63[3] = &unk_279946E00;
    v63[4] = self;
    v37 = [passesCopy pk_objectsPassingTest:v63];
    firstObject2 = [v37 firstObject];

    if (firstObject2)
    {
      v40 = pk_Payment_log(v39);
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

      if (v41)
      {
        v43 = pk_Payment_log(v42);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID4 = [firstObject2 uniqueID];
          *buf = 138412290;
          v67 = uniqueID4;
          _os_log_impl(&dword_25B300000, v43, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Setting updated user selected pass with unique ID %@", buf, 0xCu);
        }
      }

      objc_storeStrong(&self->_userSelectedPass, firstObject2);
    }
  }

  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  paymentPass = [barcodePaymentSession paymentPass];
  uniqueID5 = [paymentPass uniqueID];

  v49 = pk_Payment_log(v48);
  LODWORD(paymentPass) = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);

  if (paymentPass)
  {
    v51 = pk_Payment_log(v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v67 = uniqueID5;
      _os_log_impl(&dword_25B300000, v51, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Barcode payment session pass unique ID is %@", buf, 0xCu);
    }
  }

  if (uniqueID5 && [v8 containsObject:uniqueID5])
  {
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_554;
    v61[3] = &unk_279946E00;
    v62 = uniqueID;
    v52 = [passesCopy pk_objectsPassingTest:v61];
    firstObject3 = [v52 firstObject];

    secureElementPass = [firstObject3 secureElementPass];
    passActivationState = [secureElementPass passActivationState];

    if (passActivationState)
    {
      v57 = pk_Payment_log(v56);
      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);

      if (v58)
      {
        v60 = pk_Payment_log(v59);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v67 = passActivationState;
          _os_log_impl(&dword_25B300000, v60, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Tearing down barcode payment session because updated pass is not activated (state %lu)", buf, 0xCu);
        }
      }

      [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
    }
  }
}

uint64_t __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_551(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_553(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [*(*(a1 + 32) + 56) uniqueID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __72__NPKContactlessPaymentSessionManager_passesDataSource_didUpdatePasses___block_invoke_554(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)passesDataSourceDidReloadPasses:(id)passes
{
  v59 = *MEMORY[0x277D85DE8];
  passesCopy = passes;
  v5 = pk_Payment_log(passesCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v55) = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Got passes reloaded", &v55, 2u);
    }
  }

  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass = [quickPaymentSession currentPass];

  uniqueID = [currentPass uniqueID];
  v12 = pk_Payment_log(uniqueID);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v55 = 138412290;
      v56 = uniqueID;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Quick payment session pass unique ID is %@", &v55, 0xCu);
    }
  }

  if (uniqueID)
  {
    v16 = [passesCopy passForUniqueID:uniqueID];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 isEqualToPassIncludingMetadata:currentPass];
      if (v18)
      {
        goto LABEL_24;
      }

      v19 = pk_Payment_log(v18);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        v22 = pk_Payment_log(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID2 = [v17 uniqueID];
          v55 = 138412290;
          v56 = uniqueID2;
          _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Setting reloaded pass for unique ID %@", &v55, 0xCu);
        }
      }

      quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [quickPaymentSession2 setCurrentPass:v17];

      uniqueID3 = [(PKPass *)self->_userSelectedPass uniqueID];
      uniqueID4 = [v17 uniqueID];
      v27 = [uniqueID3 isEqualToString:uniqueID4];

      if (!v27)
      {
        goto LABEL_24;
      }

      v28 = v17;
      userSelectedPass = self->_userSelectedPass;
      self->_userSelectedPass = v28;
    }

    else
    {
      v30 = pk_Payment_log(0);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

      if (v31)
      {
        v33 = pk_Payment_log(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v55) = 0;
          _os_log_impl(&dword_25B300000, v33, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Clearing quick payment session current pass because it has been removed", &v55, 2u);
        }
      }

      userSelectedPass = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      [userSelectedPass setCurrentPass:0];
    }

LABEL_24:
  }

  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
  paymentPass = [barcodePaymentSession paymentPass];
  uniqueID5 = [paymentPass uniqueID];

  v38 = pk_Payment_log(v37);
  LODWORD(paymentPass) = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);

  if (paymentPass)
  {
    v40 = pk_Payment_log(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v55 = 138412290;
      v56 = uniqueID5;
      _os_log_impl(&dword_25B300000, v40, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Barcode payment session pass unique ID is %@", &v55, 0xCu);
    }
  }

  if (uniqueID5)
  {
    v41 = [passesCopy passForUniqueID:uniqueID5];
    v42 = pk_Payment_log(v41);
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

    if (v43)
    {
      v45 = pk_Payment_log(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        secureElementPass = [v41 secureElementPass];
        passActivationState = [secureElementPass passActivationState];
        v55 = 138412546;
        v56 = v41;
        v57 = 2048;
        v58 = passActivationState;
        _os_log_impl(&dword_25B300000, v45, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Reloaded barcode payment pass is %@ (state %lu)", &v55, 0x16u);
      }
    }

    if (!v41 || ([v41 secureElementPass], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v48, "passActivationState"), v48, v49))
    {
      v50 = pk_Payment_log(v44);
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);

      if (v51)
      {
        v53 = pk_Payment_log(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v55) = 0;
          _os_log_impl(&dword_25B300000, v53, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Tearing down barcode payment session because updated pass no longer exists or is not activated", &v55, 2u);
        }
      }

      barcodePaymentSession2 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
      [barcodePaymentSession2 invalidateSession];
    }
  }
}

- (void)registerObserver:(id)observer withRelativePriority:(unint64_t)priority
{
  observersManager = self->_observersManager;
  observerCopy = observer;
  [NPKObserverManager registerObserver:"registerObserver:withRelativePriority:" withRelativePriority:?];
  lastSessionState = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
  v7 = lastSessionState;
  if (lastSessionState)
  {
    _baseSessionStateForUpdate = lastSessionState;
  }

  else
  {
    _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  }

  v9 = _baseSessionStateForUpdate;

  [(NPKContactlessPaymentSessionManager *)self _prepareSessionStateForSendingToObservers:v9];
  [observerCopy contactlessPaymentSessionManager:self didChangeSessionState:v9];
}

- (void)unregisterObserver:(id)observer
{
  observersManager = self->_observersManager;
  observerCopy = observer;
  [(NPKObserverManager *)observersManager unregisterObserver:observerCopy];
}

- (void)paymentSession:(id)session didMakePassCurrent:(id)current
{
  v16 = *MEMORY[0x277D85DE8];
  currentCopy = current;
  v6 = pk_Payment_log(currentCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [currentCopy uniqueID];
      v14 = 138412290;
      v15 = uniqueID;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] New current pass from payment session: %@", &v14, 0xCu);
    }
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setCurrentPass:currentCopy];
  v13 = 1;
  if ([currentCopy passType] != 1 || (objc_msgSend(_baseSessionStateForUpdate, "doublePressReceived") & 1) == 0)
  {
    if (![currentCopy npkHasValidNFCPayload] || (-[NPKContactlessPaymentSessionManager quickPaymentSession](self, "quickPaymentSession"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      v13 = 0;
    }
  }

  [_baseSessionStateForUpdate setPassActivating:v13];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)paymentSession:(id)session willActivatePass:(id)pass
{
  v68 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  passCopy = pass;
  v8 = pk_Payment_log(passCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412290;
      v67 = uniqueID;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session will activate pass: %@", buf, 0xCu);
    }
  }

  kdebug_trace();
  if ([passCopy style] != 8)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v13 setObject:*MEMORY[0x277D38468] forKeyedSubscript:*MEMORY[0x277D383D8]];
    [v13 setObject:*MEMORY[0x277D384C0] forKeyedSubscript:*MEMORY[0x277D384B8]];
    v14 = v13;
    v15 = passCopy;
    v16 = v15;
    if (!v15 || !v14)
    {
LABEL_76:

      v57 = MEMORY[0x277D37D28];
      v65 = *MEMORY[0x277D38558];
      v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
      [v57 subjects:v58 sendEvent:v14];

      goto LABEL_77;
    }

    passType = [v15 passType];
    v18 = MEMORY[0x277D38530];
    if ((passType + 1) >= 3)
    {
      v19 = *MEMORY[0x277D38530];
    }

    else
    {
      v19 = off_2799470B8[passType + 1];
    }

    [v14 setObject:v19 forKeyedSubscript:*MEMORY[0x277D384F0]];

    style = [v16 style];
    secureElementPass = [v16 secureElementPass];
    isIdentityPass = [secureElementPass isIdentityPass];

    if (isIdentityPass)
    {
      v23 = @"identity";
    }

    else if (style < 0xE && ((0x27FFu >> style) & 1) != 0)
    {
      v23 = off_2799470D0[style];
    }

    else
    {
      v23 = *v18;
    }

    [v14 setObject:v23 forKeyedSubscript:*MEMORY[0x277D384E8]];

    nfcPayload = [v16 nfcPayload];
    v25 = PKAnalyticsReportSwitchToggleResultValue();
    [v14 setObject:v25 forKeyedSubscript:*MEMORY[0x277D384C8]];

    v26 = v16;
    if ([v26 passType] == 1)
    {
      secureElementPass2 = [v26 secureElementPass];
      cardType = [secureElementPass2 cardType];
      if (cardType <= 4)
      {
        v25 = **(&unk_279947140 + cardType);
      }
    }

    else
    {
      v25 = @"other";
    }

    [v14 setObject:v25 forKeyedSubscript:*MEMORY[0x277D384E0]];
    secureElementPass3 = [v26 secureElementPass];
    if ([secureElementPass3 isIdentityPass])
    {
      identityType = [secureElementPass3 identityType];
      if (identityType <= 2)
      {
        if (identityType == 1)
        {
          v31 = MEMORY[0x277D383A0];
          goto LABEL_43;
        }

        if (identityType == 2)
        {
          v31 = MEMORY[0x277D38518];
          goto LABEL_43;
        }
      }

      else
      {
        switch(identityType)
        {
          case 3:
            goto LABEL_27;
          case 4:
            v31 = MEMORY[0x277D38488];
            goto LABEL_43;
          case 5:
LABEL_27:
            v31 = MEMORY[0x277D384F8];
LABEL_43:
            v36 = *v31;
            goto LABEL_44;
        }
      }

LABEL_36:
      v36 = *v18;
LABEL_44:
      v35 = v36;
      goto LABEL_57;
    }

    if (![secureElementPass3 isAccessPass])
    {
      goto LABEL_36;
    }

    accessType = [secureElementPass3 accessType];
    accessReportingType = [secureElementPass3 accessReportingType];
    v34 = accessReportingType;
    if (accessType <= 2)
    {
      switch(accessType)
      {
        case 0:
          v37 = @"general";
          if (accessReportingType)
          {
            v37 = accessReportingType;
          }

          goto LABEL_52;
        case 1:
          v35 = @"hospitality";
          goto LABEL_56;
        case 2:
          v35 = @"corporate";
LABEL_56:

LABEL_57:
          [v14 setObject:v35 forKeyedSubscript:*MEMORY[0x277D384D8]];

          secureElementPass4 = [v26 secureElementPass];
          devicePaymentApplications = [secureElementPass4 devicePaymentApplications];
          [devicePaymentApplications count];

          v40 = PKAnalyticsReportSwitchToggleResultValue();

          [v14 setObject:v40 forKeyedSubscript:*MEMORY[0x277D38398]];
          secureElementPass5 = [v26 secureElementPass];
          v42 = *v18;
          organizationName = [secureElementPass5 organizationName];
          if ([organizationName length])
          {
            cardType2 = [secureElementPass5 cardType];
            if (cardType2 <= 4 && ((1 << cardType2) & 0x16) != 0)
            {
              v45 = organizationName;

              v42 = v45;
            }
          }

          [v14 setObject:v42 forKeyedSubscript:*MEMORY[0x277D38490]];
          secureElementPass6 = [v26 secureElementPass];
          v47 = secureElementPass6;
          if (secureElementPass6)
          {
            v60 = sessionCopy;
            [secureElementPass6 devicePaymentApplications];
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v48 = v64 = 0u;
            v49 = [v48 countByEnumeratingWithState:&v61 objects:buf count:16];
            selfCopy = self;
            if (v49)
            {
              v50 = v49;
              paymentType = 0;
              v52 = *v62;
              while (2)
              {
                for (i = 0; i != v50; ++i)
                {
                  if (*v62 != v52)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v54 = *(*(&v61 + 1) + 8 * i);
                  if (paymentType && paymentType != [*(*(&v61 + 1) + 8 * i) paymentType])
                  {

                    v55 = @"multiple";
                    goto LABEL_74;
                  }

                  paymentType = [v54 paymentType];
                }

                v50 = [v48 countByEnumeratingWithState:&v61 objects:buf count:16];
                if (v50)
                {
                  continue;
                }

                break;
              }
            }

            v55 = PKPaymentMethodTypeToString();
LABEL_74:

            [v14 setObject:v55 forKeyedSubscript:*MEMORY[0x277D38508]];
            issuerCountryCode = [v47 issuerCountryCode];
            [v14 setObject:issuerCountryCode forKeyedSubscript:*MEMORY[0x277D384D0]];

            self = selfCopy;
            sessionCopy = v60;
          }

          goto LABEL_76;
      }
    }

    else
    {
      if (accessType <= 4)
      {
        if (accessType == 3)
        {
          v35 = @"singlefamily";
        }

        else
        {
          v35 = @"cars";
        }

        goto LABEL_56;
      }

      if (accessType == 5)
      {
        v35 = @"multifamily";
        goto LABEL_56;
      }

      if (accessType == 6)
      {
        v35 = @"urbanmobility";
        goto LABEL_56;
      }
    }

    v37 = *v18;
LABEL_52:
    v35 = v37;
    goto LABEL_56;
  }

LABEL_77:
  [(NPKContactlessPaymentSessionManager *)self paymentSession:sessionCopy didMakePassCurrent:passCopy, selfCopy];
}

- (void)paymentSession:(id)session didActivatePass:(id)pass
{
  v14 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v6 = pk_Payment_log(passCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      v12 = 138412290;
      v13 = uniqueID;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session did activate pass: %@", &v12, 0xCu);
    }
  }

  kdebug_trace();
  if (self->_contactlessPaymentInterfaceVisible)
  {
    kdebug_trace();
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setCurrentPass:passCopy];
  [_baseSessionStateForUpdate setPassActivating:0];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:1];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)paymentSession:(id)session didFailTransactionForPass:(id)pass withValueAddedServiceTransactions:(id)transactions forValueAddedServicePasses:(id)passes
{
  v43 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  passCopy = pass;
  transactionsCopy = transactions;
  passesCopy = passes;
  v14 = pk_Payment_log(passesCopy);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v17 = pk_Payment_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      *buf = 138412802;
      *&buf[4] = sessionCopy;
      *&buf[12] = 2112;
      *&buf[14] = quickPaymentSession;
      *&buf[22] = 2112;
      v42 = passCopy;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session %@ (current %@) failed (VAS) transaction for pass %@", buf, 0x20u);
    }
  }

  if (transactionsCopy)
  {
    v36 = 0;
    [(NPKContactlessPaymentSessionManager *)self _handleValueAddedServiceTransactions:transactionsCopy forValueAddedServicePasses:passesCopy paymentTransaction:0 outUserInterventionRequiredPasses:&v36];
    v19 = v36;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v19 count];
  if (!v20)
  {
    if (![transactionsCopy count])
    {
      goto LABEL_25;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v42) = 1;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __141__NPKContactlessPaymentSessionManager_paymentSession_didFailTransactionForPass_withValueAddedServiceTransactions_forValueAddedServicePasses___block_invoke;
    v35[3] = &unk_279946E28;
    v35[4] = buf;
    [transactionsCopy enumerateObjectsUsingBlock:v35];
    quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
    currentPass = [quickPaymentSession2 currentPass];

    v28 = pk_Payment_log(v27);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

    if (v29)
    {
      v31 = pk_Payment_log(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        style = [currentPass style];
        *v37 = 138412546;
        v38 = currentPass;
        v39 = 1024;
        v40 = style;
        _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] current pass unique ID is %@ style %d", v37, 0x12u);
      }
    }

    _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
    [_baseSessionStateForUpdate setCurrentPass:passCopy];
    [_baseSessionStateForUpdate setContactlessInterfaceReady:1];
    if ([currentPass passType] == 1 && (*(*&buf[8] + 24) & 1) != 0)
    {
      v34 = 4;
    }

    else
    {
      if (![currentPass npkHasValidNFCPayload])
      {
LABEL_24:
        [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];

        _Block_object_dispose(buf, 8);
        goto LABEL_25;
      }

      v34 = 2;
    }

    [_baseSessionStateForUpdate setFailureType:v34];
    goto LABEL_24;
  }

  v21 = pk_Payment_log(v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

  if (v22)
  {
    v24 = pk_Payment_log(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v19;
      _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Got user intervention required passes %@", buf, 0xCu);
    }
  }

LABEL_25:
}

void *__141__NPKContactlessPaymentSessionManager_paymentSession_didFailTransactionForPass_withValueAddedServiceTransactions_forValueAddedServicePasses___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 terminalMode];
  if (result != 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (void)paymentSession:(id)session didCompleteTransactionForReason:(unint64_t)reason withTransactionContext:(id)context shouldCleanupSession:(BOOL)cleanupSession
{
  v35 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  contextCopy = context;
  v12 = pk_Payment_log(contextCopy);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      v17 = NSStringFromNPKQuickPaymentSessionCompletionReason(reason);
      v29 = 138412802;
      v30 = sessionCopy;
      v31 = 2112;
      v32 = quickPaymentSession;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session %@ (current %@) completed for reason %@", &v29, 0x20u);
    }
  }

  quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];

  if (quickPaymentSession2 == sessionCopy)
  {
    v19 = [(NPKContactlessPaymentSessionManager *)self _sessionStateForTransactionContext:contextCopy];
    [v19 setCompletionReason:reason];
    v20 = reason - 4;
    if (reason - 4 <= 7 && ((0xF3u >> v20) & 1) != 0)
    {
      [v19 setFailureType:qword_25B59A968[v20]];
    }

    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:v19];
    hasSession = [v19 hasSession];
    if (hasSession)
    {
      transactionContext = [v19 transactionContext];
      v23 = [transactionContext transactionType] == 5;

      if (cleanupSession)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = 0;
      if (cleanupSession)
      {
        goto LABEL_14;
      }
    }

    if (!v23)
    {
LABEL_19:

      goto LABEL_20;
    }

LABEL_14:
    v24 = pk_Payment_log(hasSession);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

    if (v25)
    {
      v27 = pk_Payment_log(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Will cleanup payment session", &v29, 2u);
      }
    }

    [(NPKContactlessPaymentSessionManager *)self _cleanupQuickPaymentSession];
    _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];

    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
    v19 = _baseSessionStateForUpdate;
    goto LABEL_19;
  }

LABEL_20:
}

- (void)paymentSessionDidEnterField:(id)field
{
  v68 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  v5 = pk_Payment_log(fieldCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session detected field entry", buf, 2u);
    }
  }

  currentPass = [fieldCopy currentPass];
  paymentPass = [currentPass paymentPass];
  effectiveContactlessPaymentApplicationState = [paymentPass effectiveContactlessPaymentApplicationState];
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setInField:1];
  if (!currentPass || paymentPass && effectiveContactlessPaymentApplicationState != 1)
  {
    [_baseSessionStateForUpdate setCurrentPass:currentPass];
    [_baseSessionStateForUpdate setFailureType:5];
  }

  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
  currentPass2 = [fieldCopy currentPass];
  if ([currentPass2 style] != 8)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v14 setObject:*MEMORY[0x277D38438] forKeyedSubscript:*MEMORY[0x277D383D8]];
    v15 = v14;
    v16 = currentPass2;
    v17 = v16;
    if (!v16 || !v15)
    {
LABEL_79:

      v56 = MEMORY[0x277D37D28];
      v66 = *MEMORY[0x277D38558];
      v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
      [v56 subjects:v57 sendEvent:v15];

      goto LABEL_80;
    }

    passType = [v16 passType];
    if ((passType + 1) >= 3)
    {
      v19 = *MEMORY[0x277D38530];
    }

    else
    {
      v19 = off_2799470B8[passType + 1];
    }

    [v15 setObject:v19 forKeyedSubscript:*MEMORY[0x277D384F0]];

    style = [v17 style];
    secureElementPass = [v17 secureElementPass];
    isIdentityPass = [secureElementPass isIdentityPass];

    if (isIdentityPass)
    {
      v23 = @"identity";
    }

    else if (style < 0xE && ((0x27FFu >> style) & 1) != 0)
    {
      v23 = off_2799470D0[style];
    }

    else
    {
      v23 = *MEMORY[0x277D38530];
    }

    [v15 setObject:v23 forKeyedSubscript:*MEMORY[0x277D384E8]];

    nfcPayload = [v17 nfcPayload];
    v25 = PKAnalyticsReportSwitchToggleResultValue();
    [v15 setObject:v25 forKeyedSubscript:*MEMORY[0x277D384C8]];

    v60 = v17;
    v26 = v17;
    if ([v26 passType] == 1)
    {
      secureElementPass2 = [v26 secureElementPass];
      cardType = [secureElementPass2 cardType];
      if (cardType <= 4)
      {
        v25 = **(&unk_279947140 + cardType);
      }
    }

    else
    {
      v25 = @"other";
    }

    [v15 setObject:v25 forKeyedSubscript:*MEMORY[0x277D384E0]];
    secureElementPass3 = [v26 secureElementPass];
    v61 = paymentPass;
    if ([secureElementPass3 isIdentityPass])
    {
      identityType = [secureElementPass3 identityType];
      if (identityType <= 2)
      {
        if (identityType == 1)
        {
          v31 = MEMORY[0x277D383A0];
          goto LABEL_47;
        }

        if (identityType == 2)
        {
          v31 = MEMORY[0x277D38518];
          goto LABEL_47;
        }
      }

      else
      {
        switch(identityType)
        {
          case 3:
            goto LABEL_31;
          case 4:
            v31 = MEMORY[0x277D38488];
            goto LABEL_47;
          case 5:
LABEL_31:
            v31 = MEMORY[0x277D384F8];
LABEL_47:
            v35 = *v31;
            goto LABEL_60;
        }
      }

LABEL_40:
      v31 = MEMORY[0x277D38530];
      goto LABEL_47;
    }

    if (![secureElementPass3 isAccessPass])
    {
      goto LABEL_40;
    }

    accessType = [secureElementPass3 accessType];
    accessReportingType = [secureElementPass3 accessReportingType];
    v34 = accessReportingType;
    if (accessType <= 2)
    {
      switch(accessType)
      {
        case 0:
          v36 = @"general";
          if (accessReportingType)
          {
            v36 = accessReportingType;
          }

          goto LABEL_55;
        case 1:
          v35 = @"hospitality";
          goto LABEL_59;
        case 2:
          v35 = @"corporate";
LABEL_59:

LABEL_60:
          [v15 setObject:v35 forKeyedSubscript:*MEMORY[0x277D384D8]];

          secureElementPass4 = [v26 secureElementPass];
          devicePaymentApplications = [secureElementPass4 devicePaymentApplications];
          [devicePaymentApplications count];

          v39 = PKAnalyticsReportSwitchToggleResultValue();

          [v15 setObject:v39 forKeyedSubscript:*MEMORY[0x277D38398]];
          secureElementPass5 = [v26 secureElementPass];
          v41 = *MEMORY[0x277D38530];
          organizationName = [secureElementPass5 organizationName];
          if ([organizationName length])
          {
            cardType2 = [secureElementPass5 cardType];
            if (cardType2 <= 4 && ((1 << cardType2) & 0x16) != 0)
            {
              v44 = organizationName;

              v41 = v44;
            }
          }

          [v15 setObject:v41 forKeyedSubscript:*MEMORY[0x277D38490]];
          secureElementPass6 = [v26 secureElementPass];
          v46 = secureElementPass6;
          if (secureElementPass6)
          {
            v58 = currentPass2;
            [secureElementPass6 devicePaymentApplications];
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v47 = v65 = 0u;
            v48 = [v47 countByEnumeratingWithState:&v62 objects:buf count:16];
            v59 = fieldCopy;
            if (v48)
            {
              v49 = v48;
              paymentType = 0;
              v51 = *v63;
              while (2)
              {
                for (i = 0; i != v49; ++i)
                {
                  if (*v63 != v51)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v53 = *(*(&v62 + 1) + 8 * i);
                  if (paymentType && paymentType != [*(*(&v62 + 1) + 8 * i) paymentType])
                  {

                    v54 = @"multiple";
                    goto LABEL_77;
                  }

                  paymentType = [v53 paymentType];
                }

                v49 = [v47 countByEnumeratingWithState:&v62 objects:buf count:16];
                if (v49)
                {
                  continue;
                }

                break;
              }
            }

            v54 = PKPaymentMethodTypeToString();
LABEL_77:

            [v15 setObject:v54 forKeyedSubscript:*MEMORY[0x277D38508]];
            issuerCountryCode = [v46 issuerCountryCode];
            [v15 setObject:issuerCountryCode forKeyedSubscript:*MEMORY[0x277D384D0]];

            currentPass2 = v58;
            fieldCopy = v59;
          }

          v17 = v60;
          paymentPass = v61;
          goto LABEL_79;
      }
    }

    else
    {
      if (accessType <= 4)
      {
        if (accessType == 3)
        {
          v35 = @"singlefamily";
        }

        else
        {
          v35 = @"cars";
        }

        goto LABEL_59;
      }

      if (accessType == 5)
      {
        v35 = @"multifamily";
        goto LABEL_59;
      }

      if (accessType == 6)
      {
        v35 = @"urbanmobility";
        goto LABEL_59;
      }
    }

    v36 = *MEMORY[0x277D38530];
LABEL_55:
    v35 = v36;
    goto LABEL_59;
  }

LABEL_80:
}

- (void)paymentSessionDidExitField:(id)field
{
  v73 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  v5 = pk_Payment_log(fieldCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session detected field exit", buf, 2u);
    }
  }

  transactionContext = [(NPKContactlessPaymentSessionState *)self->_lastSessionState transactionContext];
  if (!transactionContext || (v10 = transactionContext, -[NPKContactlessPaymentSessionState transactionContext](self->_lastSessionState, "transactionContext"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 transactionType], v11, v10, v12 != 5))
  {
    _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
    [_baseSessionStateForUpdate setInField:0];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
    currentPass = [fieldCopy currentPass];
    if ([currentPass style] == 8)
    {
LABEL_82:

LABEL_83:
      goto LABEL_84;
    }

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v19 setObject:*MEMORY[0x277D38440] forKeyedSubscript:*MEMORY[0x277D383D8]];
    v20 = v19;
    v21 = currentPass;
    v22 = v21;
    if (!v21 || !v20)
    {
LABEL_81:

      v63 = MEMORY[0x277D37D28];
      v71 = *MEMORY[0x277D38558];
      v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
      [v63 subjects:v64 sendEvent:v20];

      goto LABEL_82;
    }

    passType = [v21 passType];
    v24 = MEMORY[0x277D38530];
    if ((passType + 1) >= 3)
    {
      v25 = *MEMORY[0x277D38530];
    }

    else
    {
      v25 = off_2799470B8[passType + 1];
    }

    [v20 setObject:v25 forKeyedSubscript:*MEMORY[0x277D384F0]];

    style = [v22 style];
    secureElementPass = [v22 secureElementPass];
    isIdentityPass = [secureElementPass isIdentityPass];

    if (isIdentityPass)
    {
      v29 = @"identity";
    }

    else if (style < 0xE && ((0x27FFu >> style) & 1) != 0)
    {
      v29 = off_2799470D0[style];
    }

    else
    {
      v29 = *v24;
    }

    [v20 setObject:v29 forKeyedSubscript:*MEMORY[0x277D384E8]];

    nfcPayload = [v22 nfcPayload];
    v31 = PKAnalyticsReportSwitchToggleResultValue();
    [v20 setObject:v31 forKeyedSubscript:*MEMORY[0x277D384C8]];

    v32 = v22;
    if ([v32 passType] == 1)
    {
      secureElementPass2 = [v32 secureElementPass];
      cardType = [secureElementPass2 cardType];
      if (cardType <= 4)
      {
        v31 = **(&unk_279947140 + cardType);
      }
    }

    else
    {
      v31 = @"other";
    }

    [v20 setObject:v31 forKeyedSubscript:*MEMORY[0x277D384E0]];
    secureElementPass3 = [v32 secureElementPass];
    if ([secureElementPass3 isIdentityPass])
    {
      identityType = [secureElementPass3 identityType];
      if (identityType <= 2)
      {
        if (identityType == 1)
        {
          v37 = MEMORY[0x277D383A0];
          goto LABEL_48;
        }

        if (identityType == 2)
        {
          v37 = MEMORY[0x277D38518];
          goto LABEL_48;
        }
      }

      else
      {
        switch(identityType)
        {
          case 3:
            goto LABEL_32;
          case 4:
            v37 = MEMORY[0x277D38488];
            goto LABEL_48;
          case 5:
LABEL_32:
            v37 = MEMORY[0x277D384F8];
LABEL_48:
            v42 = *v37;
            goto LABEL_49;
        }
      }

LABEL_41:
      v42 = *v24;
LABEL_49:
      v41 = v42;
      goto LABEL_62;
    }

    if (![secureElementPass3 isAccessPass])
    {
      goto LABEL_41;
    }

    accessType = [secureElementPass3 accessType];
    accessReportingType = [secureElementPass3 accessReportingType];
    v40 = accessReportingType;
    if (accessType <= 2)
    {
      switch(accessType)
      {
        case 0:
          v43 = @"general";
          if (accessReportingType)
          {
            v43 = accessReportingType;
          }

          goto LABEL_57;
        case 1:
          v41 = @"hospitality";
          goto LABEL_61;
        case 2:
          v41 = @"corporate";
LABEL_61:

LABEL_62:
          [v20 setObject:v41 forKeyedSubscript:*MEMORY[0x277D384D8]];

          secureElementPass4 = [v32 secureElementPass];
          devicePaymentApplications = [secureElementPass4 devicePaymentApplications];
          [devicePaymentApplications count];

          v46 = PKAnalyticsReportSwitchToggleResultValue();

          [v20 setObject:v46 forKeyedSubscript:*MEMORY[0x277D38398]];
          secureElementPass5 = [v32 secureElementPass];
          v48 = *v24;
          organizationName = [secureElementPass5 organizationName];
          if ([organizationName length])
          {
            cardType2 = [secureElementPass5 cardType];
            if (cardType2 <= 4 && ((1 << cardType2) & 0x16) != 0)
            {
              v51 = organizationName;

              v48 = v51;
            }
          }

          [v20 setObject:v48 forKeyedSubscript:*MEMORY[0x277D38490]];
          secureElementPass6 = [v32 secureElementPass];
          v53 = secureElementPass6;
          if (secureElementPass6)
          {
            v66 = fieldCopy;
            [secureElementPass6 devicePaymentApplications];
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v54 = v70 = 0u;
            v55 = [v54 countByEnumeratingWithState:&v67 objects:buf count:16];
            v65 = v22;
            if (v55)
            {
              v56 = v55;
              paymentType = 0;
              v58 = *v68;
              while (2)
              {
                for (i = 0; i != v56; ++i)
                {
                  if (*v68 != v58)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v60 = *(*(&v67 + 1) + 8 * i);
                  if (paymentType && paymentType != [*(*(&v67 + 1) + 8 * i) paymentType])
                  {

                    v61 = @"multiple";
                    goto LABEL_79;
                  }

                  paymentType = [v60 paymentType];
                }

                v56 = [v54 countByEnumeratingWithState:&v67 objects:buf count:16];
                if (v56)
                {
                  continue;
                }

                break;
              }
            }

            v61 = PKPaymentMethodTypeToString();
LABEL_79:

            [v20 setObject:v61 forKeyedSubscript:*MEMORY[0x277D38508]];
            issuerCountryCode = [v53 issuerCountryCode];
            [v20 setObject:issuerCountryCode forKeyedSubscript:*MEMORY[0x277D384D0]];

            v22 = v65;
            fieldCopy = v66;
          }

          goto LABEL_81;
      }
    }

    else
    {
      if (accessType <= 4)
      {
        if (accessType == 3)
        {
          v41 = @"singlefamily";
        }

        else
        {
          v41 = @"cars";
        }

        goto LABEL_61;
      }

      if (accessType == 5)
      {
        v41 = @"multifamily";
        goto LABEL_61;
      }

      if (accessType == 6)
      {
        v41 = @"urbanmobility";
        goto LABEL_61;
      }
    }

    v43 = *v24;
LABEL_57:
    v41 = v43;
    goto LABEL_61;
  }

  v14 = pk_Payment_log(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    _baseSessionStateForUpdate = pk_Payment_log(v16);
    if (os_log_type_enabled(_baseSessionStateForUpdate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, _baseSessionStateForUpdate, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session did ignore exit field notification while on STS_ISO18013 transaction", buf, 2u);
    }

    goto LABEL_83;
  }

LABEL_84:
}

- (void)paymentSessionDidSelectPayment:(id)payment
{
  v15 = *MEMORY[0x277D85DE8];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass = [quickPaymentSession currentPass];

  v7 = pk_Payment_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [currentPass uniqueID];
      v13 = 138412290;
      v14 = uniqueID;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session did select payment for unique ID: %@", &v13, 0xCu);
    }
  }

  if ([currentPass passType] != 1)
  {
    _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
    [_baseSessionStateForUpdate setCurrentPass:currentPass];
    [_baseSessionStateForUpdate setFailureType:3];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
  }
}

- (void)paymentSessionDidSelectValueAddedService:(id)service
{
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session selected value added service", v7, 2u);
    }
  }
}

- (void)paymentSessionDidReceiveStartTransaction:(id)transaction
{
  v3 = pk_Payment_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received start transaction", v7, 2u);
    }
  }
}

- (void)paymentSessionDidReceiveActivityTimeout:(id)timeout
{
  v48 = *MEMORY[0x277D85DE8];
  timeoutCopy = timeout;
  currentPass = [timeoutCopy currentPass];
  paymentPass = [currentPass paymentPass];
  isTransitPass = [paymentPass isTransitPass];

  v7 = pk_Payment_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = isTransitPass;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received activity timeout isTransit %i", &buf, 8u);
    }
  }

  if (isTransitPass)
  {
    v11 = NPKIsTruthOnCardTransitPass(currentPass);
    v12 = v11;
    v13 = pk_Payment_log(v11);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      if (v14)
      {
        v16 = pk_Payment_log(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling activity timeout in transit pass as completion", &buf, 2u);
        }
      }

      quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
      currentPass2 = [quickPaymentSession currentPass];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      paymentPass2 = [currentPass2 paymentPass];
      obj = [paymentPass2 npkPreferredContactlessPaymentApplications];

      v20 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v20)
      {
        v33 = *v39;
        do
        {
          v21 = 0;
          do
          {
            if (*v39 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v38 + 1) + 8 * v21);
            v23 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
            [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 setTransactionStatus:2];
            currentPass3 = [timeoutCopy currentPass];
            [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 setTransactionPass:currentPass3];

            if (NPKIsTruthOnCardTransitPass(currentPass2))
            {
              v25 = objc_alloc_init(MEMORY[0x277D380F0]);
              v26 = dispatch_semaphore_create(0);
              *&buf = 0;
              *(&buf + 1) = &buf;
              v43 = 0x3032000000;
              v44 = __Block_byref_object_copy__7;
              v45 = __Block_byref_object_dispose__7;
              v46 = 0;
              uniqueID = [currentPass2 uniqueID];
              v35[0] = MEMORY[0x277D85DD0];
              v35[1] = 3221225472;
              v35[2] = __79__NPKContactlessPaymentSessionManager_paymentSessionDidReceiveActivityTimeout___block_invoke;
              v35[3] = &unk_279946E50;
              p_buf = &buf;
              v28 = v26;
              v36 = v28;
              [v25 transitStateWithPassUniqueIdentifier:uniqueID paymentApplication:v22 completion:v35];

              dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
              [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 updateWithConcreteTransactions:MEMORY[0x277CBEBF8] ephemeralTransaction:0 updatedPassTransitItems:MEMORY[0x277CBEBF8] paymentApplication:v22];
              if (*(*(&buf + 1) + 40))
              {
                [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 forceToTransitTypeTransactionWithTransactionStatus:1];
              }

              _Block_object_dispose(&buf, 8);
            }

            else
            {
              [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 updateWithConcreteTransactions:MEMORY[0x277CBEBF8] ephemeralTransaction:0 updatedPassTransitItems:MEMORY[0x277CBEBF8] paymentApplication:v22];
            }

            _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
            [_baseSessionStateForUpdate setCurrentPass:currentPass2];
            [_baseSessionStateForUpdate setSessionAuthorized:0];
            [_baseSessionStateForUpdate setDoublePressReceived:0];
            [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
            [_baseSessionStateForUpdate setCanChangePass:1];
            [_baseSessionStateForUpdate setCompletionReason:0];
            [_baseSessionStateForUpdate setTransactionContext:v23];
            [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];

            ++v21;
          }

          while (v20 != v21);
          v20 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v20);
      }

LABEL_27:
      goto LABEL_28;
    }

    if (v14)
    {
      currentPass2 = pk_Payment_log(v15);
      if (os_log_type_enabled(currentPass2, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID2 = [currentPass uniqueID];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = uniqueID2;
        _os_log_impl(&dword_25B300000, currentPass2, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] unexpected activity timeout event for cEMV pass with uniqueID:%@", &buf, 0xCu);
      }

      goto LABEL_27;
    }
  }

LABEL_28:
}

void __79__NPKContactlessPaymentSessionManager_paymentSessionDidReceiveActivityTimeout___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)paymentSessionDidReceiveCredential:(id)credential
{
  v4 = pk_Payment_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received credential", v9, 2u);
    }
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setSessionAuthorized:1];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)paymentSession:(id)session didReceive18013Request:(id)request readerAuthInfo:(id)info
{
  requestCopy = request;
  infoCopy = info;
  v9 = pk_Payment_log(infoCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_Payment_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received 18013 Request", v13, 2u);
    }
  }

  [(NPKContactlessPaymentSessionManager *)self handleISO18013Request:requestCopy withReaderAuthInfo:infoCopy];
}

- (void)paymentSessionDidReceiveAuthorizationTimeout:(id)timeout
{
  v4 = pk_Payment_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received authorization timeout", v9, 2u);
    }
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setSessionAuthorized:0];
  if ([(NPKContactlessPaymentSessionState *)self->_lastSessionState sessionAuthorized])
  {
    [_baseSessionStateForUpdate setFailureType:6];
    [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
  }
}

- (void)paymentSessionDidReceiveActivationError:(id)error
{
  v4 = pk_Payment_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received activation error", v9, 2u);
    }
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setSessionAuthorized:0];
  [_baseSessionStateForUpdate setFailureType:1];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)paymentSessionDidReceiveTransactionError:(id)error
{
  v4 = pk_Payment_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session received transaction error", v9, 2u);
    }
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setSessionAuthorized:0];
  [_baseSessionStateForUpdate setFailureType:2];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)paymentSessionIsWaitingToStart:(id)start
{
  v4 = pk_Payment_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session waiting to start", v9, 2u);
    }
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setSessionWaitingToStart:1];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)paymentSessionDidStart:(id)start
{
  v4 = pk_Payment_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Payment session did start", v9, 2u);
    }
  }

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [(NPKContactlessPaymentSessionManager *)self _sendSessionStateToObservers:_baseSessionStateForUpdate];
}

- (void)_cleanupQuickPaymentSession
{
  v14 = *MEMORY[0x277D85DE8];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  v4 = quickPaymentSession;
  if (quickPaymentSession)
  {
    v5 = pk_Payment_log(quickPaymentSession);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "[NPKContactlessPaymentSessionManager _cleanupQuickPaymentSession]";
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] %s cleaning payment session:%@", &v10, 0x16u);
      }
    }

    [v4 deactivateSessionWithCompletion:0];
    [(NPKContactlessPaymentSessionManager *)self setQuickPaymentSession:0];
    cleanupDelegate = [(NPKContactlessPaymentSessionManager *)self cleanupDelegate];
    [v4 setDelegate:cleanupDelegate];

    [(NPKContactlessPaymentSessionManager *)self _stopSessionTimer];
  }
}

- (id)_managerContextForContactlessInterfaceTransactionContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  paymentPass = [contextCopy paymentPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionPass:paymentPass];

  paymentPass2 = [contextCopy paymentPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setValueAddedServicePass:paymentPass2];

  transaction = [contextCopy transaction];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setPaymentTransaction:transaction];

  lastSessionState = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
  transactionContext = [lastSessionState transactionContext];
  transactionType = [transactionContext transactionType];

  if (transactionType == 5)
  {
    if ([contextCopy success])
    {
      v12 = 4;
    }

    else
    {
      v12 = 5;
    }

    [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setReleaseDataStatus:v12];
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionType:5];
    lastSessionState2 = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
    transactionContext2 = [lastSessionState2 transactionContext];
    releaseDataRequest = [transactionContext2 releaseDataRequest];
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setReleaseDataRequest:releaseDataRequest];
  }

  valueAddedServiceTransactions = [contextCopy valueAddedServiceTransactions];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke;
  v67[3] = &unk_279946EA0;
  v17 = contextCopy;
  v68 = v17;
  v18 = v5;
  v69 = v18;
  [valueAddedServiceTransactions enumerateObjectsUsingBlock:v67];

  valueAddedServicePasses = [v17 valueAddedServicePasses];
  firstObject = [valueAddedServicePasses firstObject];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 setValueAddedServicePass:firstObject];

  transactionPass = [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 transactionPass];

  if (!transactionPass)
  {
    valueAddedServicePass = [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 valueAddedServicePass];
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 setTransactionPass:valueAddedServicePass];
  }

  transaction2 = [v17 transaction];
  if (transaction2)
  {
    paymentPass4 = objc_alloc_init(MEMORY[0x277D380F0]);
    paymentPass3 = [v17 paymentPass];
    uniqueID = [paymentPass3 uniqueID];
    paymentApplication = [v17 paymentApplication];
    [paymentPass4 insertOrUpdatePaymentTransaction:transaction2 forPassUniqueIdentifier:uniqueID paymentApplication:paymentApplication completion:0];
LABEL_12:

    goto LABEL_13;
  }

  transitHistory = [v17 transitHistory];

  if (transitHistory)
  {
    selfCopy = self;
    paymentPass4 = [v17 paymentPass];
    uniqueID2 = [paymentPass4 uniqueID];
    v30 = objc_alloc_init(MEMORY[0x277D380F0]);
    v31 = dispatch_semaphore_create(0);
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy__7;
    v65 = __Block_byref_object_dispose__7;
    v66 = 0;
    devicePrimaryPaymentApplication = [paymentPass4 devicePrimaryPaymentApplication];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke_3;
    v58[3] = &unk_279946E50;
    v60 = &v61;
    paymentApplication = v31;
    v59 = paymentApplication;
    [v30 transitStateWithPassUniqueIdentifier:uniqueID2 paymentApplication:devicePrimaryPaymentApplication completion:v58];
    v53 = v30;
    v50 = uniqueID2;

    dispatch_semaphore_wait(paymentApplication, 0xFFFFFFFFFFFFFFFFLL);
    v56 = 0;
    v57 = MEMORY[0x277CBEBF8];
    v55 = 0;
    v33 = v62[5];
    transitHistory2 = [v17 transitHistory];
    transactionPass2 = [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 transactionPass];
    paymentPass5 = [transactionPass2 paymentPass];
    v51 = [v33 npk_processUpdateWithAppletHistory:transitHistory2 concreteTransactions:&v57 ephemeralTransaction:&v56 mutatedBalances:&v55 pass:paymentPass5];

    transitHistory3 = [v17 transitHistory];
    date = [v17 date];
    paymentApplication2 = [v17 paymentApplication];
    paymentPass6 = [v17 paymentPass];
    uniqueID3 = [paymentPass6 uniqueID];
    expressState = [v17 expressState];
    [v53 processTransitTransactionEventWithHistory:transitHistory3 transactionDate:date forPaymentApplication:paymentApplication2 withPassUniqueIdentifier:uniqueID3 expressTransactionState:expressState];

    v42 = v55;
    paymentApplication3 = [v17 paymentApplication];
    v44 = [(NPKContactlessPaymentSessionManager *)selfCopy _updatedPassItemFieldWithPaymentPass:paymentPass4 transitAppletBalances:v42 appletState:v51 paymentApplication:paymentApplication3];

    v46 = v56;
    v45 = v57;
    paymentApplication4 = [v17 paymentApplication];
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 updateWithConcreteTransactions:v45 ephemeralTransaction:v46 updatedPassTransitItems:v44 paymentApplication:paymentApplication4];

    [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 forceToTransitTypeTransactionWithTransactionStatus:5];
    _Block_object_dispose(&v61, 8);

    paymentPass3 = v50;
    uniqueID = v53;
    goto LABEL_12;
  }

LABEL_13:
  v48 = v18;

  return v18;
}

void __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 didSucceed])
  {
    v7 = [*(a1 + 32) valueAddedServicePasses];
    v8 = MEMORY[0x277CCAC30];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke_2;
    v12[3] = &unk_279946E78;
    v13 = v6;
    v9 = [v8 predicateWithBlock:v12];
    v10 = [v7 filteredArrayUsingPredicate:v9];
    v11 = [v10 firstObject];

    if (v11)
    {
      [*(a1 + 40) setValueAddedServicePass:v11];
      *a4 = 1;
    }
  }
}

uint64_t __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 passTypeIdentifier];
  v4 = [v3 dataUsingEncoding:4];
  v5 = [v4 SHA256Hash];

  v6 = [*(a1 + 32) merchant];
  v7 = [v6 identifier];
  v8 = [v5 isEqual:v7];

  return v8;
}

void __96__NPKContactlessPaymentSessionManager__managerContextForContactlessInterfaceTransactionContext___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_handleValueAddedServiceTransactions:(id)transactions forValueAddedServicePasses:(id)passes paymentTransaction:(id)transaction outUserInterventionRequiredPasses:(id *)requiredPasses
{
  v51 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  passesCopy = passes;
  transactionCopy = transaction;
  v11 = pk_Payment_log(transactionCopy);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = transactionsCopy;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Handling VAS transactions: %@", buf, 0xCu);
    }
  }

  if (requiredPasses)
  {
    array = [MEMORY[0x277CBEB18] array];
    *requiredPasses = array;
  }

  else
  {
    array = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v16 = passesCopy;
  v17 = [v16 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v44 + 1) + 8 * i);
        passTypeIdentifier = [v21 passTypeIdentifier];
        v23 = [passTypeIdentifier dataUsingEncoding:4];
        sHA256Hash = [v23 SHA256Hash];

        array2 = [v15 objectForKey:sHA256Hash];
        if (!array2)
        {
          array2 = [MEMORY[0x277CBEB18] array];
          [v15 setObject:array2 forKey:sHA256Hash];
        }

        [array2 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v18);
  }

  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  v28 = objc_alloc_init(MEMORY[0x277D380F0]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __156__NPKContactlessPaymentSessionManager__handleValueAddedServiceTransactions_forValueAddedServicePasses_paymentTransaction_outUserInterventionRequiredPasses___block_invoke;
  v37[3] = &unk_279946EC8;
  v38 = v15;
  v39 = array3;
  v40 = array4;
  v41 = v28;
  v42 = transactionCopy;
  v43 = array;
  v29 = array;
  v30 = transactionCopy;
  v31 = v28;
  v32 = array4;
  v33 = array3;
  v34 = v15;
  [transactionsCopy enumerateObjectsUsingBlock:v37];
}

void __156__NPKContactlessPaymentSessionManager__handleValueAddedServiceTransactions_forValueAddedServicePasses_paymentTransaction_outUserInterventionRequiredPasses___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 merchant];
  v6 = [v5 identifier];
  v7 = [v4 objectForKey:v6];

  if ([v3 didSucceed])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          [*(a1 + 40) addObject:{v3, v20}];
          v14 = *(a1 + 48);
          v15 = [v13 uniqueID];
          [v14 addObject:v15];

          v16 = *(a1 + 56);
          v17 = [v13 uniqueID];
          [v16 insertOrUpdateValueAddedServiceTransaction:v3 forPassUniqueIdentifier:v17 paymentTransaction:*(a1 + 64) completion:0];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [*(a1 + 40) addObject:v3];
    [*(a1 + 48) addObject:&stru_286C934F8];
    if ([v3 error] == 3)
    {
      [*(a1 + 72) addObjectsFromArray:v7];
    }

    else if ([v3 error] == 1)
    {
      v18 = [v3 merchantURL];
      v19 = [v18 length];

      if (v19)
      {
        [*(a1 + 56) insertOrUpdateValueAddedServiceTransaction:v3 forPassUniqueIdentifier:0 paymentTransaction:0 completion:0];
      }
    }
  }
}

- (id)_baseSessionStateForUpdate
{
  v3 = [(NPKContactlessPaymentSessionState *)self->_lastSessionState copy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(NPKContactlessPaymentSessionState);
  }

  v6 = v5;

  v7 = objc_alloc_init(MEMORY[0x277CCAD78]);
  [(NPKContactlessPaymentSessionState *)v6 setUniqueID:v7];

  date = [MEMORY[0x277CBEAA8] date];
  [(NPKContactlessPaymentSessionState *)v6 setTimestamp:date];

  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  [(NPKContactlessPaymentSessionState *)v6 setHasSession:quickPaymentSession != 0];

  quickPaymentSession2 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  -[NPKContactlessPaymentSessionState setSessionStarted:](v6, "setSessionStarted:", [quickPaymentSession2 sessionStarted]);

  quickPaymentSession3 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  -[NPKContactlessPaymentSessionState setIsSwitchingSessionType:](v6, "setIsSwitchingSessionType:", [quickPaymentSession3 isSwitchingSessionType]);

  quickPaymentSession4 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  -[NPKContactlessPaymentSessionState setSessionType:](v6, "setSessionType:", [quickPaymentSession4 sessionType]);

  if (![(NPKContactlessPaymentSessionState *)v6 hasSession]|| [(NPKContactlessPaymentSessionState *)v6 sessionStarted])
  {
    [(NPKContactlessPaymentSessionState *)v6 setSessionWaitingToStart:0];
  }

  quickPaymentSession5 = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  -[NPKContactlessPaymentSessionState setInServiceMode:](v6, "setInServiceMode:", [quickPaymentSession5 inServiceMode]);

  if ([(NPKContactlessPaymentSessionState *)v6 inServiceMode])
  {
    [(NPKContactlessPaymentSessionState *)v6 setServiceModeRequestedPass:0];
  }

  [(NPKContactlessPaymentSessionState *)v6 setTransactionContext:0];
  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (barcodePaymentSession)
  {
    [(NPKContactlessPaymentSessionState *)v6 setHasSession:1];
    barcodePaymentSession2 = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];
    -[NPKContactlessPaymentSessionState setSessionStarted:](v6, "setSessionStarted:", [barcodePaymentSession2 sessionStarted]);

    [(NPKContactlessPaymentSessionState *)v6 setInServiceMode:0];
  }

  [(NPKContactlessPaymentSessionState *)v6 setExpressTransactionStatus:0];
  [(NPKContactlessPaymentSessionState *)v6 setFailureType:0];
  [(NPKContactlessPaymentSessionState *)v6 setCompletionReason:0];

  return v6;
}

- (void)_prepareSessionStateForSendingToObservers:(id)observers
{
  observersCopy = observers;
  isArmed = [observersCopy isArmed];
  v5 = isArmed & [observersCopy inField];
  if ([observersCopy inServiceMode])
  {
    v6 = [observersCopy doublePressReceived] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  [observersCopy setCanChangePass:(v5 ^ 1) & v6];
  if (([observersCopy hasSession] & 1) == 0)
  {
    [observersCopy setCurrentPass:self->_userSelectedPass];
  }
}

- (void)_sendSessionStateToObservers:(id)observers
{
  v17 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  [(NPKContactlessPaymentSessionManager *)self _prepareSessionStateForSendingToObservers:observersCopy];
  objc_storeStrong(&self->_lastSessionState, observers);
  v7 = pk_Payment_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = observersCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] sending to observer new session State:%@", buf, 0xCu);
    }
  }

  observersManager = self->_observersManager;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__NPKContactlessPaymentSessionManager__sendSessionStateToObservers___block_invoke;
  v13[3] = &unk_279946EF0;
  v13[4] = self;
  v14 = observersCopy;
  v12 = observersCopy;
  [(NPKObserverManager *)observersManager enumerateObserversUsingBlock:v13];
}

- (id)_sessionStateForTransactionContext:(id)context
{
  contextCopy = context;
  v5 = pk_Payment_log(contextCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Getting session state for transaction completion", buf, 2u);
    }
  }

  valueAddedServicePasses = [contextCopy valueAddedServicePasses];
  valueAddedServiceTransactions = [contextCopy valueAddedServiceTransactions];
  *buf = 0;
  v22 = buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7;
  v25 = __Block_byref_object_dispose__7;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__NPKContactlessPaymentSessionManager__sessionStateForTransactionContext___block_invoke;
  v20[3] = &unk_279946E28;
  v20[4] = buf;
  [valueAddedServiceTransactions enumerateObjectsUsingBlock:v20];
  quickPaymentSession = [(NPKContactlessPaymentSessionManager *)self quickPaymentSession];
  currentPass = [quickPaymentSession currentPass];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transaction = [contextCopy transaction];
    if (transaction || ([contextCopy transitHistory], (transaction = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else if (*(v22 + 5))
    {
      firstObject = [valueAddedServicePasses firstObject];

      firstObject2 = 0;
      currentPass = firstObject;
      if (!contextCopy)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  if (*(v22 + 5))
  {
    firstObject2 = [valueAddedServicePasses firstObject];
    if (!contextCopy)
    {
LABEL_17:
      v15 = 0;
      if (!valueAddedServiceTransactions)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    firstObject2 = 0;
    if (!contextCopy)
    {
      goto LABEL_17;
    }
  }

LABEL_13:
  v15 = [(NPKContactlessPaymentSessionManager *)self _managerContextForContactlessInterfaceTransactionContext:contextCopy];
  [v15 setValueAddedServicePass:firstObject2];
  if (valueAddedServiceTransactions)
  {
LABEL_18:
    transaction2 = [contextCopy transaction];
    [(NPKContactlessPaymentSessionManager *)self _handleValueAddedServiceTransactions:valueAddedServiceTransactions forValueAddedServicePasses:valueAddedServicePasses paymentTransaction:transaction2 outUserInterventionRequiredPasses:0];
  }

LABEL_19:
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setCurrentPass:currentPass];
  [_baseSessionStateForUpdate setSessionAuthorized:0];
  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [_baseSessionStateForUpdate setCanChangePass:1];
  [_baseSessionStateForUpdate setTransactionContext:v15];

  _Block_object_dispose(buf, 8);

  return _baseSessionStateForUpdate;
}

void __74__NPKContactlessPaymentSessionManager__sessionStateForTransactionContext___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 didSucceed])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_sessionStateForExpressTransactionStatus:(unint64_t)status pass:(id)pass paymentApplication:(id)application concreteTransactions:(id)transactions ephemeralTransaction:(id)transaction mutatedBalances:(id)balances appletState:(id)state
{
  passCopy = pass;
  applicationCopy = application;
  transactionsCopy = transactions;
  transactionCopy = transaction;
  balancesCopy = balances;
  stateCopy = state;
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setCurrentPass:passCopy];
  [_baseSessionStateForUpdate setSessionAuthorized:1];
  [_baseSessionStateForUpdate setDoublePressReceived:1];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [_baseSessionStateForUpdate setCanChangePass:1];
  [_baseSessionStateForUpdate setExpressTransactionStatus:status];
  if (status == 1)
  {
    [_baseSessionStateForUpdate setCanChangePass:0];
  }

  else
  {
    IsComplete = NPKExpressTransactionStatusIsComplete(status);
    if (status == 3 || IsComplete)
    {
      v23 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
      [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 setTransactionPass:passCopy];
      if (NPKIsTruthOnCard(passCopy))
      {
        [passCopy paymentPass];
        v24 = v27 = transactionsCopy;
        v25 = [(NPKContactlessPaymentSessionManager *)self _updatedPassItemFieldWithPaymentPass:v24 transitAppletBalances:balancesCopy appletState:stateCopy paymentApplication:applicationCopy];

        transactionsCopy = v27;
        [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 updateWithConcreteTransactions:v27 ephemeralTransaction:transactionCopy updatedPassTransitItems:v25 paymentApplication:applicationCopy];
        [(NPKContactlessPaymentSessionManagerTransactionContext *)v23 forceToTransitTypeTransactionWithTransactionStatus:status];
      }

      [_baseSessionStateForUpdate setTransactionContext:v23];
      [_baseSessionStateForUpdate setCompletionReason:3];
    }

    else if (status == 2)
    {
      [_baseSessionStateForUpdate setCompletionReason:5];
      [_baseSessionStateForUpdate setFailureType:2];
    }
  }

  return _baseSessionStateForUpdate;
}

- (void)_startSessionTimerWithReason:(unint64_t)reason
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = pk_ui_log(self);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_ui_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"authTokenInUse";
      if (!reason)
      {
        v9 = @"sessionCreated";
      }

      v10 = v9;
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Starting contactless session timer for reason: %@", &v14, 0xCu);
    }
  }

  sessionTimer = self->_sessionTimer;
  if (reason)
  {
    v12 = 60000000000;
  }

  else
  {
    v12 = 5000000000;
  }

  v13 = dispatch_time(0, v12);
  dispatch_source_set_timer(sessionTimer, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)_stopSessionTimer
{
  v3 = pk_ui_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_ui_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Stopping contactless session timer", v7, 2u);
    }
  }

  dispatch_source_set_timer(self->_sessionTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)_handleSessionTimerFired
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = pk_ui_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_ui_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      contactlessPaymentInterfaceVisible = self->_contactlessPaymentInterfaceVisible;
      v9[0] = 67109120;
      v9[1] = contactlessPaymentInterfaceVisible;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: contactless session timer fired with visibility %d", v9, 8u);
    }
  }

  if (self->_quickPaymentSession)
  {
    [(NPKContactlessPaymentSessionManager *)self handleEndSessionRequestedForReason:2];
  }

  barcodePaymentSession = [(NPKContactlessPaymentSessionManager *)self barcodePaymentSession];

  if (barcodePaymentSession)
  {
    [(NPKContactlessPaymentSessionManager *)self _cleanupBarcodePaymentSession];
  }
}

- (void)_handleServiceModeRequestEnded
{
  uTF8String = [@"NPKEndedServiceModeRequestDarwinNotification" UTF8String];

  notify_post(uTF8String);
}

- (void)_registerForServiceModeRequestNotification
{
  objc_initWeak(&location, self);
  uTF8String = [@"NPKCancelledServiceModeRequestDarwinNotification" UTF8String];
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__NPKContactlessPaymentSessionManager__registerForServiceModeRequestNotification__block_invoke;
  v6[3] = &unk_279944F20;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(uTF8String, &self->_serviceModeRequestNotifyToken, v4, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __81__NPKContactlessPaymentSessionManager__registerForServiceModeRequestNotification__block_invoke(uint64_t a1)
{
  v2 = pk_General_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Got cancel service mode requests notification", v10, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained[2] serviceModeRequestedPass];

    if (v8)
    {
      v9 = [v7 _baseSessionStateForUpdate];
      [v9 setServiceModeRequestedPass:0];
      [v7 _sendSessionStateToObservers:v9];
    }
  }
}

- (BOOL)_canHandleRKEActionForTileItem:(id)item pass:(id)pass outAction:(id *)action outFunction:(id *)function outError:(id *)error
{
  v66 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  passCopy = pass;
  v56 = 0;
  v12 = [PKGetClassNFDigitalCarKeySession() getVehicleReports:&v56];
  v13 = v56;
  secureElementPass = [passCopy secureElementPass];
  devicePrimaryPaymentApplication = [secureElementPass devicePrimaryPaymentApplication];

  v49 = devicePrimaryPaymentApplication;
  subcredentials = [devicePrimaryPaymentApplication subcredentials];
  anyObject = [subcredentials anyObject];
  identifier = [anyObject identifier];

  v19 = [v12 objectForKeyedSubscript:identifier];
  v20 = v19;
  v51 = v12;
  if (v19 && !v13)
  {
    errorCopy = error;
    functionCopy2 = function;
    action = [itemCopy action];
    vehicleFunctionActions = [action vehicleFunctionActions];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    tile = [itemCopy tile];
    metadata = [tile metadata];
    metadataTypeVehicleFunction = [metadata metadataTypeVehicleFunction];
    vehicleFunctions = [metadataTypeVehicleFunction vehicleFunctions];

    v27 = [vehicleFunctions countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v27)
    {
      v45 = passCopy;
      v46 = itemCopy;
      v28 = *v53;
      while (2)
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v53 != v28)
          {
            objc_enumerationMutation(vehicleFunctions);
          }

          v30 = *(*(&v52 + 1) + 8 * i);
          if ([v20 isRKEFunctionSupported:v30])
          {
            v31 = [vehicleFunctionActions objectForKeyedSubscript:v30];
            if (v31)
            {
              v32 = v31;
              v27 = v30;
              goto LABEL_18;
            }
          }
        }

        v27 = [vehicleFunctions countByEnumeratingWithState:&v52 objects:v65 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }

      v32 = 0;
LABEL_18:
      passCopy = v45;
      itemCopy = v46;
    }

    else
    {
      v32 = 0;
    }

    error = errorCopy;
LABEL_23:
    actionCopy2 = action;

    function = functionCopy2;
    if (!action)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v33 = pk_Payment_log(v19);
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);

  if (v34)
  {
    functionCopy2 = function;
    vehicleFunctionActions = pk_Payment_log(v35);
    if (os_log_type_enabled(vehicleFunctionActions, OS_LOG_TYPE_ERROR))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138413058;
      v58 = v20;
      v59 = 2112;
      v60 = uniqueID;
      v61 = 2112;
      v62 = identifier;
      v63 = 2112;
      v64 = v13;
      _os_log_impl(&dword_25B300000, vehicleFunctionActions, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Failed to obtain vehicle report (%@) for pass: %@ with subcredential identifier: %@! Error: %@", buf, 0x2Au);
    }

    v27 = 0;
    v32 = 0;
    goto LABEL_23;
  }

  v27 = 0;
  v32 = 0;
  actionCopy2 = action;
  if (action)
  {
LABEL_24:
    v38 = v32;
    *actionCopy2 = v32;
  }

LABEL_25:
  if (function)
  {
    v39 = v27;
    *function = v27;
  }

  if (error)
  {
    v40 = v13;
    *error = v13;
  }

  if (v32)
  {
    v41 = v27 == 0;
  }

  else
  {
    v41 = 1;
  }

  v43 = !v41 && v13 == 0;

  return v43;
}

- (void)_handleRKEActionRequestedForPass:(id)pass action:(id)action function:(id)function withSession:(id)session completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  actionCopy = action;
  functionCopy = function;
  sessionCopy = session;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__NPKContactlessPaymentSessionManager__handleRKEActionRequestedForPass_action_function_withSession_completion___block_invoke;
  aBlock[3] = &unk_279946F18;
  v17 = passCopy;
  v36 = v17;
  v18 = actionCopy;
  v37 = v18;
  v19 = functionCopy;
  v38 = v19;
  v20 = sessionCopy;
  v39 = v20;
  selfCopy = self;
  v21 = completionCopy;
  v41 = v21;
  v22 = _Block_copy(aBlock);
  v23 = v22;
  if (v17 && v18 && v19)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __111__NPKContactlessPaymentSessionManager__handleRKEActionRequestedForPass_action_function_withSession_completion___block_invoke_568;
    v29[3] = &unk_279946F68;
    v30 = v17;
    v31 = v19;
    v32 = v18;
    v33 = v20;
    v34 = v23;
    [v33 executeRKEActionForPass:v30 function:v31 action:v32 withCompletion:v29];
  }

  else
  {
    v24 = pk_Payment_log(v22);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

    if (v25)
    {
      v27 = pk_Payment_log(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        uniqueID = [v17 uniqueID];
        *buf = 138412802;
        v43 = uniqueID;
        v44 = 2112;
        v45 = v19;
        v46 = 2112;
        v47 = v18;
        _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_ERROR, "Error: [PaymentSessionManager] Unable to handle RKE action for pass: %@ function: %@ action: %@! Invalid input.", buf, 0x20u);
      }
    }

    v23[2](v23, 0, 6);
  }
}

void __111__NPKContactlessPaymentSessionManager__handleRKEActionRequestedForPass_action_function_withSession_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = pk_Payment_log(a1);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) uniqueID];
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v16 = 138413314;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2048;
      v23 = a3;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] Invoking RKE action completion handler for pass %@ action %@ function %@ with reason %lu for session %@", &v16, 0x34u);
    }
  }

  if (*(a1 + 56))
  {
    [*(a1 + 64) _cleanupQuickPaymentSession];
  }

  v14 = [*(a1 + 64) _sessionStateForTransactionContext:0];
  [v14 setCompletionReason:a3];
  [*(a1 + 64) _sendSessionStateToObservers:v14];
  v15 = *(a1 + 72);
  if (v15)
  {
    (*(v15 + 16))(v15, a2);
  }
}

void __111__NPKContactlessPaymentSessionManager__handleRKEActionRequestedForPass_action_function_withSession_completion___block_invoke_568(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = pk_Payment_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) uniqueID];
      v9 = v8;
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = @"NO";
      v13 = *(a1 + 56);
      if (a2)
      {
        v12 = @"YES";
      }

      *buf = 138413314;
      v21 = v8;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: [PaymentSessionManager] RKE action execution for pass: %@ function: %@ action: %@ completed with success: %@ for session: %@", buf, 0x34u);
    }
  }

  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = 5;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__NPKContactlessPaymentSessionManager__handleRKEActionRequestedForPass_action_function_withSession_completion___block_invoke_575;
  block[3] = &unk_279946F40;
  v15 = *(a1 + 64);
  v19 = a2;
  v17 = v15;
  v18 = v14;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_sessionStateForPaymentBarcode:(id)barcode
{
  barcodeCopy = barcode;
  v5 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionPass:userSelectedPass];

  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionType:4];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setTransactionStatus:0];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v5 setPaymentBarcode:barcodeCopy];

  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setTransactionContext:v5];

  return _baseSessionStateForUpdate;
}

- (id)_sessionStateForBarcodeTransactionStatus:(unint64_t)status paymentBarcode:(id)barcode transaction:(id)transaction
{
  transactionCopy = transaction;
  barcodeCopy = barcode;
  v10 = objc_alloc_init(NPKContactlessPaymentSessionManagerTransactionContext);
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setTransactionPass:userSelectedPass];

  [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setTransactionType:4];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setPaymentBarcode:barcodeCopy];

  [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setPaymentTransaction:transactionCopy];
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  [_baseSessionStateForUpdate setTransactionContext:v10];
  if (status <= 2)
  {
    if (status)
    {
      if (status != 1)
      {
        if (status == 2)
        {
          [_baseSessionStateForUpdate setCompletionReason:6];
          v13 = _baseSessionStateForUpdate;
          v14 = 7;
LABEL_13:
          [v13 setFailureType:v14];
LABEL_18:
          [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setTransactionStatus:2];
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      [(NPKContactlessPaymentSessionManagerTransactionContext *)v10 setAuthenticationRequested:1];
    }

    else
    {
      lastSessionState = [(NPKContactlessPaymentSessionManager *)self lastSessionState];
      transactionContext = [lastSessionState transactionContext];
      transactionStatus = [transactionContext transactionStatus];

      if (transactionStatus != 1)
      {
        v18 = v10;
        v19 = 0;
LABEL_16:
        [(NPKContactlessPaymentSessionManagerTransactionContext *)v18 setTransactionStatus:v19];
        goto LABEL_20;
      }
    }

    v18 = v10;
    v19 = 1;
    goto LABEL_16;
  }

  switch(status)
  {
    case 3uLL:
      [_baseSessionStateForUpdate setCompletionReason:5];
      v13 = _baseSessionStateForUpdate;
      v14 = 2;
      goto LABEL_13;
    case 4uLL:
      [_baseSessionStateForUpdate setCompletionReason:3];
      goto LABEL_18;
    case 5uLL:
      [_baseSessionStateForUpdate setCompletionReason:2];
      v13 = _baseSessionStateForUpdate;
      v14 = 6;
      goto LABEL_13;
  }

LABEL_19:
  userSelectedPass2 = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [_baseSessionStateForUpdate setCurrentPass:userSelectedPass2];

  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [_baseSessionStateForUpdate setCanChangePass:1];
LABEL_20:

  return _baseSessionStateForUpdate;
}

- (id)_sessionStateForUserCanceledBarcodeTransaction
{
  _baseSessionStateForUpdate = [(NPKContactlessPaymentSessionManager *)self _baseSessionStateForUpdate];
  userSelectedPass = [(NPKContactlessPaymentSessionManager *)self userSelectedPass];
  [_baseSessionStateForUpdate setCurrentPass:userSelectedPass];

  [_baseSessionStateForUpdate setDoublePressReceived:0];
  [_baseSessionStateForUpdate setContactlessInterfaceReady:0];
  [_baseSessionStateForUpdate setCanChangePass:1];
  [_baseSessionStateForUpdate setCompletionReason:6];
  [_baseSessionStateForUpdate setFailureType:7];

  return _baseSessionStateForUpdate;
}

- (id)_paymentBalancesFromTransitAppletBalances:(id)balances
{
  balancesCopy = balances;
  v4 = balancesCopy;
  if (balancesCopy)
  {
    balancesCopy = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(balancesCopy, "count")}];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__NPKContactlessPaymentSessionManager__paymentBalancesFromTransitAppletBalances___block_invoke;
  v7[3] = &unk_279946F90;
  v5 = balancesCopy;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __81__NPKContactlessPaymentSessionManager__paymentBalancesFromTransitAppletBalances___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D38008] NPK_paymentBalanceWithAppletBalance:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (id)_updatedPassItemFieldWithPaymentPass:(id)pass transitAppletBalances:(id)balances appletState:(id)state paymentApplication:(id)application
{
  applicationCopy = application;
  stateCopy = state;
  passCopy = pass;
  v13 = [(NPKContactlessPaymentSessionManager *)self _paymentBalancesFromTransitAppletBalances:balances];
  v14 = [stateCopy transitPassPropertiesWithPaymentApplication:applicationCopy pass:passCopy];

  v15 = [[NPKPassAssociatedInfoModel alloc] initWithPass:passCopy transitProperties:v14 balances:v13 commutePlanValueRequired:1];
  allPassItemsFields = [(NPKPassAssociatedInfoModel *)v15 allPassItemsFields];

  return allPassItemsFields;
}

@end