@interface NPKQuickPaymentSessionSource
- (NPKQuickPaymentSessionSource)initWithDelegate:(id)delegate buttonListener:(id)listener callbackQueue:(id)queue;
- (void)_handleAuthIntentEventFromSource:(unint64_t)source;
- (void)setDeferAuthorization:(BOOL)authorization;
- (void)setDelegateHandlingButtonEvents:(BOOL)events;
- (void)setInitialPass:(id)pass;
- (void)setLocalAuthenticationCoordinator:(id)coordinator;
- (void)setPreconditionState:(unint64_t)state;
- (void)setRequireFirstInQueue:(BOOL)queue;
- (void)setVasPasses:(id)passes;
@end

@implementation NPKQuickPaymentSessionSource

- (NPKQuickPaymentSessionSource)initWithDelegate:(id)delegate buttonListener:(id)listener callbackQueue:(id)queue
{
  delegateCopy = delegate;
  listenerCopy = listener;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = NPKQuickPaymentSessionSource;
  v11 = [(NPKQuickPaymentSessionSource *)&v21 init];
  if (v11)
  {
    if (queueCopy)
    {
      v12 = queueCopy;
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
    }

    callbackQueue = v11->_callbackQueue;
    v11->_callbackQueue = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create("com.apple.NanoPassKit.NPKQuickPaymentSessionSource", v14);
    sessionSourceQueue = v11->_sessionSourceQueue;
    v11->_sessionSourceQueue = v15;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_initWeak(&location, v11);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__NPKQuickPaymentSessionSource_initWithDelegate_buttonListener_callbackQueue___block_invoke;
    v18[3] = &unk_279945EF0;
    objc_copyWeak(&v19, &location);
    [listenerCopy setButtonHandler:v18];
    objc_storeStrong(&v11->_buttonListener, listener);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __78__NPKQuickPaymentSessionSource_initWithDelegate_buttonListener_callbackQueue___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __78__NPKQuickPaymentSessionSource_initWithDelegate_buttonListener_callbackQueue___block_invoke_2;
    v6[3] = &unk_279945830;
    v7 = WeakRetained;
    v8 = a2;
    dispatch_async(v5, v6);
  }
}

- (void)setDelegateHandlingButtonEvents:(BOOL)events
{
  sessionSourceQueue = self->_sessionSourceQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NPKQuickPaymentSessionSource_setDelegateHandlingButtonEvents___block_invoke;
  v4[3] = &unk_279944FC0;
  v4[4] = self;
  eventsCopy = events;
  dispatch_async(sessionSourceQueue, v4);
}

- (void)setDeferAuthorization:(BOOL)authorization
{
  sessionSourceQueue = self->_sessionSourceQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__NPKQuickPaymentSessionSource_setDeferAuthorization___block_invoke;
  v4[3] = &unk_279944FC0;
  v4[4] = self;
  authorizationCopy = authorization;
  dispatch_async(sessionSourceQueue, v4);
}

- (void)setRequireFirstInQueue:(BOOL)queue
{
  sessionSourceQueue = self->_sessionSourceQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__NPKQuickPaymentSessionSource_setRequireFirstInQueue___block_invoke;
  v4[3] = &unk_279944FC0;
  v4[4] = self;
  queueCopy = queue;
  dispatch_async(sessionSourceQueue, v4);
}

- (void)setPreconditionState:(unint64_t)state
{
  sessionSourceQueue = self->_sessionSourceQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__NPKQuickPaymentSessionSource_setPreconditionState___block_invoke;
  v4[3] = &unk_279945830;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(sessionSourceQueue, v4);
}

- (void)setInitialPass:(id)pass
{
  passCopy = pass;
  sessionSourceQueue = self->_sessionSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__NPKQuickPaymentSessionSource_setInitialPass___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = passCopy;
  v6 = passCopy;
  dispatch_async(sessionSourceQueue, v7);
}

- (void)setVasPasses:(id)passes
{
  passesCopy = passes;
  sessionSourceQueue = self->_sessionSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__NPKQuickPaymentSessionSource_setVasPasses___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = passesCopy;
  v6 = passesCopy;
  dispatch_async(sessionSourceQueue, v7);
}

- (void)setLocalAuthenticationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  sessionSourceQueue = self->_sessionSourceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__NPKQuickPaymentSessionSource_setLocalAuthenticationCoordinator___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = coordinatorCopy;
  v6 = coordinatorCopy;
  dispatch_async(sessionSourceQueue, v7);
}

- (void)_handleAuthIntentEventFromSource:(unint64_t)source
{
  v81 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = date;
  if (source == 1)
  {
    v12 = pk_Payment_log(date);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (!v13)
    {
      goto LABEL_11;
    }

    v10 = pk_Payment_log(v14);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v11 = "Notice: Session source received an assistive touch gesture event";
    goto LABEL_9;
  }

  if (!source)
  {
    v7 = pk_Payment_log(date);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = pk_Payment_log(v9);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        goto LABEL_11;
      }

      *buf = 0;
      v11 = "Notice: Session source received PMU button event";
LABEL_9:
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  dispatch_assert_queue_V2(self->_sessionSourceQueue);
  preconditionState = self->_preconditionState;
  v17 = pk_Payment_log(v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v20 = pk_Payment_log(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = NPKQuickPaymentSessionSourcePreconditionStateToString(preconditionState);
      *buf = 138412290;
      v78 = v21;
      _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Session source initial precondition state is %@", buf, 0xCu);
    }
  }

  if (preconditionState == 9)
  {
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_88;
    v75[3] = &unk_279944F98;
    v75[4] = self;
    v24 = v75;
    goto LABEL_73;
  }

  if (preconditionState == 6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23 = [WeakRetained paymentSessionSourceIsWalletInstalledRequiredToStartPaymentSession:self];

    if (v23)
    {
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke;
      v76[3] = &unk_279944F98;
      v76[4] = self;
      v24 = v76;
LABEL_73:
      [(NPKQuickPaymentSessionSource *)self _performDelegateCallback:v24];
      goto LABEL_74;
    }
  }

  v25 = NPKIsAssistiveTouchEnabled();
  v26 = v25;
  if (!self->_delegateHandlingButtonEvents)
  {
    v31 = pk_Payment_log(v25);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

    if (v32)
    {
      v34 = pk_Payment_log(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_DEFAULT, "Notice: Session source is NOT delegating auth intent event", buf, 2u);
      }
    }

    v35 = objc_loadWeakRetained(&self->_delegate);
    [v35 paymentSessionSource:self receivedButtonEventAtDate:v6 authIntentSource:source delegated:0];

    if (v26 != source)
    {
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_91;
      v70[3] = &unk_279944F98;
      v70[4] = self;
      v24 = v70;
      goto LABEL_73;
    }

    v36 = +[NPKQuickPaymentSession hasOutstandingSessions];
    if (v36)
    {
      v37 = pk_Payment_log(v36);
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

      if (!v38)
      {
        goto LABEL_74;
      }

      v40 = pk_Payment_log(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v41 = "Notice: Outstanding payment sessions; ignoring";
        v42 = v40;
        v43 = 2;
LABEL_59:
        _os_log_impl(&dword_25B300000, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
      }

LABEL_60:

      goto LABEL_74;
    }

    if (!preconditionState)
    {
      if (self->_initialPass)
      {
        localAuthenticationCoordinator = self->_localAuthenticationCoordinator;
        if (localAuthenticationCoordinator)
        {
          [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)localAuthenticationCoordinator beginLocalAuthenticationWithCompletion:0];
        }

        v49 = [NPKQuickPaymentSession sessionWithQueue:MEMORY[0x277D85CD0]];
        [v49 setCurrentPass:self->_initialPass];
        [v49 setVasPasses:self->_vasPasses];
        [v49 setRequireFirstInQueue:self->_requireFirstInQueue];
        if (self->_deferAuthorization)
        {
          [v49 setDeferAuthorization:1];
        }

        startSession = [v49 startSession];
        v51 = startSession;
        v52 = pk_Payment_log(startSession);
        v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);

        if (v51)
        {
          if (v53)
          {
            v55 = pk_Payment_log(v54);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_25B300000, v55, OS_LOG_TYPE_DEFAULT, "Notice: Session source providing session to delegate", buf, 2u);
            }
          }

          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_93;
          v66[3] = &unk_279945958;
          v66[4] = self;
          v67 = v49;
          v68 = v6;
          sourceCopy = source;
          v56 = v49;
          [(NPKQuickPaymentSessionSource *)self _performDelegateCallback:v66];

          goto LABEL_74;
        }

        if (v53)
        {
          v64 = pk_Payment_log(v54);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25B300000, v64, OS_LOG_TYPE_DEFAULT, "Notice: Payment session failed to start; session source reporting busy", buf, 2u);
          }
        }

        [(NPKQuickPaymentSessionLocalAuthenticationCoordinator *)self->_localAuthenticationCoordinator invalidateLocalAuthenticationContexts];
        preconditionState = 7;
      }

      else
      {
        v61 = pk_Payment_log(v36);
        v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);

        if (!v62)
        {
          preconditionState = 3;
          goto LABEL_72;
        }

        v49 = pk_Payment_log(v63);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v49, OS_LOG_TYPE_DEFAULT, "Notice: No initial pass; session source reporting no cards", buf, 2u);
        }

        preconditionState = 3;
      }
    }

LABEL_72:
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_94;
    v65[3] = &unk_279945830;
    v65[4] = self;
    v65[5] = preconditionState;
    v24 = v65;
    goto LABEL_73;
  }

  if (v25 == source)
  {
    v27 = pk_Payment_log(v25);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

    if (v28)
    {
      v30 = pk_Payment_log(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Notice: Session source is delegating auth intent event", buf, 2u);
      }
    }

    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_89;
    v72[3] = &unk_279945F18;
    v72[4] = self;
    v73 = v6;
    sourceCopy2 = source;
    [(NPKQuickPaymentSessionSource *)self _performDelegateCallback:v72];

    goto LABEL_74;
  }

  if (source == 1)
  {
    v57 = pk_Payment_log(v25);
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);

    if (!v58)
    {
      goto LABEL_74;
    }

    v40 = pk_Payment_log(v59);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v60 = NPKIsAssistiveTouchEnabled();
      *buf = 134218240;
      v78 = 1;
      v79 = 1024;
      v80 = v60;
      v41 = "Warning: Received unexpected auth intent source: %lu, is double click disabled: %i";
      v42 = v40;
      v43 = 18;
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (!source)
  {
    v44 = pk_Payment_log(v25);
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);

    if (v45)
    {
      v47 = pk_Payment_log(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v47, OS_LOG_TYPE_DEFAULT, "Notice: Session source is requesting AssistiveTouch enabled alert presentation", buf, 2u);
      }
    }

    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_90;
    v71[3] = &unk_279944F98;
    v71[4] = self;
    v24 = v71;
    goto LABEL_73;
  }

LABEL_74:
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %@ Declining to handle button event. Wallet is not installed", &v8, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained paymentSessionSource:*(a1 + 32) declinedToStartPaymentSessionDueToPreconditionState:6];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_88(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %@ Declining to handle button event. System state lock (sleep mode, water lock, school mode, etc) in effect", &v8, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained paymentSessionSource:*(a1 + 32) declinedToStartPaymentSessionDueToPreconditionState:9];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_89(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained paymentSessionSource:a1[4] receivedButtonEventAtDate:a1[5] authIntentSource:a1[6] delegated:1];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained paymentSessionSourceRequestsAssistiveTouchAlertPresentation:*(a1 + 32)];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_91(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained paymentSessionSourceRequestsAssistiveTouchAlertPresentation:*(a1 + 32)];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_93(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  [WeakRetained paymentSessionSource:a1[4] startedPaymentSession:a1[5] dueToButtonEventAtDate:a1[6] authIntentSource:a1[7]];
}

void __65__NPKQuickPaymentSessionSource__handleAuthIntentEventFromSource___block_invoke_94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained paymentSessionSource:*(a1 + 32) declinedToStartPaymentSessionDueToPreconditionState:*(a1 + 40)];
}

@end