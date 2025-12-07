@interface NPKQuickPaymentSession
+ (BOOL)hasOutstandingSessions;
+ (NPKQuickPaymentSession)sessionWithQueue:(id)queue;
+ (id)_outstandingSessionHashTable;
+ (void)_handleNewContactlessSession:(id)session;
- (BOOL)_invokeStateUpdateForReason:(unint64_t)reason shouldCleanupSession:(BOOL)session;
- (BOOL)_sessionQueue_authorizeWithUseCredential:(BOOL)credential deferAuthorizationIfCredentialUsed:(BOOL)used;
- (BOOL)_sessionQueue_enablePersistentCardEmulation;
- (BOOL)_sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue:(id)queue;
- (BOOL)_sessionQueue_updateContactlessSessionForPass:(id)pass paymentApplications:(id)applications vasPasses:(id)passes sessionConfirmed:(BOOL)confirmed deferAuthorization:(BOOL)authorization;
- (BOOL)startSessionWithCompletion:(id)completion;
- (NPKQuickPaymentSession)initWithQueue:(id)queue;
- (NPKQuickPaymentSessionDelegate)delegate;
- (void)_callbackQueue_invokeDidCompleteForReason:(unint64_t)reason withTransactionContext:(id)context shouldCleanupSession:(BOOL)session;
- (void)_checkContactlessValidity:(unint64_t)validity authorizationValidity:(unint64_t)authorizationValidity performWork:(id)work;
- (void)_checkContactlessValidity:(unint64_t)validity performWork:(id)work;
- (void)_handleConventionalTransactionWithContext:(id)context;
- (void)_handleFieldEntry;
- (void)_handleFieldExit;
- (void)_handleTransactionCompleteWithContext:(id)context;
- (void)_internalQueue_deactivateSessionWithCompletion:(id)completion;
- (void)_internalQueue_getContactlessAndAuthorizationValidityAndPerformWork:(id)work;
- (void)_internalQueue_invokeDeactivationCompletionBlocks;
- (void)_internalQueue_setCurrentPass:(id)pass;
- (void)_internalQueue_updateContactlessSessionForPass:(id)pass vasPasses:(id)passes deferAuthorization:(BOOL)authorization;
- (void)_internalQueue_updateContactlessValidityAndPerformWork:(id)work;
- (void)_internalQueue_updateSessionWithCurrentPassAndLoyaltyState;
- (void)_loyaltyEngineConfigurationChanged:(id)changed;
- (void)_sessionQueue_invokeAppropriateCallbackForActivationWithSuccess:(BOOL)success invokeOnSuccess:(BOOL)onSuccess contactlessValidity:(unint64_t)validity forPass:(id)pass;
- (void)_updateAuthorizationValidity;
- (void)_updateSessionWithCredentialAndActivate;
- (void)authorize18013RequestWithDataToRelease:(id)release credential:(id)credential;
- (void)confirmSessionExpectingCredential:(BOOL)credential;
- (void)contactlessInterfaceSession:(id)session didEndPersistentCardEmulationWithContexts:(id)contexts;
- (void)contactlessInterfaceSession:(id)session didFinishTransactionWithContext:(id)context;
- (void)contactlessInterfaceSession:(id)session didReceive18013Request:(id)request readerAuthInfo:(id)info;
- (void)contactlessInterfaceSessionDidFail:(id)fail forPaymentApplications:(id)applications paymentPass:(id)pass valueAddedServicePasses:(id)passes;
- (void)contactlessInterfaceSessionDidFailDeferredAuthorization:(id)authorization;
- (void)contactlessInterfaceSessionDidFailTransaction:(id)transaction forPaymentApplication:(id)application paymentPass:(id)pass;
- (void)contactlessInterfaceSessionDidReceiveActivityTimeout:(id)timeout;
- (void)contactlessInterfaceSessionDidReceiveTerminalError:(id)error;
- (void)contactlessInterfaceSessionDidReceiveUntrustedTerminal:(id)terminal;
- (void)contactlessInterfaceSessionDidSelectPayment:(id)payment;
- (void)contactlessInterfaceSessionDidSelectValueAddedService:(id)service;
- (void)contactlessInterfaceSessionDidStartTransaction:(id)transaction withContext:(id)context;
- (void)contactlessInterfaceSessionDidTerminate:(id)terminate;
- (void)contactlessInterfaceSessionDidTerminate:(id)terminate withErrorCode:(unint64_t)code;
- (void)contactlessInterfaceSessionDidTimeout:(id)timeout forPaymentApplications:(id)applications paymentPass:(id)pass valueAddedServicePasses:(id)passes;
- (void)contactlessInterfaceSessionHasPendingServerRequest:(id)request;
- (void)deactivateSessionWithCompletion:(id)completion;
- (void)dealloc;
- (void)executeRKEActionForPass:(id)pass function:(id)function action:(id)action withCompletion:(id)completion;
- (void)setCredential:(id)credential;
- (void)setCurrentPass:(id)pass;
- (void)setDeferAuthorization:(BOOL)authorization;
- (void)setInField:(BOOL)field;
- (void)setInServiceMode:(BOOL)mode;
- (void)setVasPasses:(id)passes;
- (void)stsSession:(id)session didDetectField:(BOOL)field;
@end

@implementation NPKQuickPaymentSession

+ (NPKQuickPaymentSession)sessionWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = off_279943028;
  v6 = NPKIsRunningInUIOnlyDemoMode(queueCopy, v5);
  if ((v6 & 1) == 0 && !NPKIsRunningInStoreDemoMode(v6, v7))
  {
    v4 = off_279943D58;
  }

  v8 = [objc_alloc(*v4) initWithQueue:queueCopy];

  return v8;
}

+ (id)_outstandingSessionHashTable
{
  if (_outstandingSessionHashTable_onceToken != -1)
  {
    +[NPKQuickPaymentSession _outstandingSessionHashTable];
  }

  v3 = _outstandingSessionHashTable_hashTable;

  return v3;
}

void __54__NPKQuickPaymentSession__outstandingSessionHashTable__block_invoke()
{
  v0 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  v1 = _outstandingSessionHashTable_hashTable;
  _outstandingSessionHashTable_hashTable = v0;
}

+ (BOOL)hasOutstandingSessions
{
  v22 = *MEMORY[0x277D85DE8];
  [self _outstandingSessionHashTable];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  isDeactivated2 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  v4 = isDeactivated2;
  if (isDeactivated2)
  {
    v5 = *v14;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = pk_Payment_log(isDeactivated2);
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

        if (v9)
        {
          v10 = pk_Payment_log(isDeactivated2);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            isDeactivated = [v7 isDeactivated];
            *buf = 138412546;
            v18 = v7;
            v19 = 1024;
            v20 = isDeactivated;
            _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: session: %@ deactivated %d", buf, 0x12u);
          }
        }

        if (v7)
        {
          isDeactivated2 = [v7 isDeactivated];
          if (!isDeactivated2)
          {
            LOBYTE(v4) = 1;
            goto LABEL_16;
          }
        }

        ++v6;
      }

      while (v4 != v6);
      isDeactivated2 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
      v4 = isDeactivated2;
      if (isDeactivated2)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v4;
}

+ (void)_handleNewContactlessSession:(id)session
{
  v12 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = pk_Payment_log(sessionCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = sessionCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Handling new contactless session: %@", &v10, 0xCu);
    }
  }

  _outstandingSessionHashTable = [self _outstandingSessionHashTable];
  [_outstandingSessionHashTable addObject:sessionCopy];
}

- (NPKQuickPaymentSession)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = NPKQuickPaymentSession;
  v6 = [(NPKQuickPaymentSession *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("NPKQuickPaymentSessionInternalQueue", v7);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v8;

    v10 = dispatch_queue_create("NPKQuickPaymentSessionQueue", v7);
    paymentSessionQueue = v6->_paymentSessionQueue;
    v6->_paymentSessionQueue = v10;

    objc_storeStrong(&v6->_callbackQueue, queue);
    v6->_requireFirstInQueue = 1;
    v6->_endSessionWhenAuthorizationIsConsumed = 1;
    atomic_store(0, &v6->_atomicIsSwitchingSessionTypeCount);
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  contactlessSession = [(NPKQuickPaymentSession *)self contactlessSession];
  lifecycleState = [contactlessSession lifecycleState];

  if (lifecycleState != 2)
  {
    contactlessSession2 = [(NPKQuickPaymentSession *)self contactlessSession];
    [contactlessSession2 invalidateSessionWithCompletion:&__block_literal_global_117];
  }

  objc_storeWeak(&self->_delegate, 0);
  [(PKFieldDetector *)self->_fieldDetector unregisterObserver:self];
  fieldDetector = self->_fieldDetector;
  self->_fieldDetector = 0;

  v8.receiver = self;
  v8.super_class = NPKQuickPaymentSession;
  [(NPKQuickPaymentSession *)&v8 dealloc];
}

void __33__NPKQuickPaymentSession_dealloc__block_invoke(uint64_t a1)
{
  v1 = pk_Payment_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    v4 = pk_Payment_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Warning: Quick payment session: invalidated session we left open", v5, 2u);
    }
  }
}

- (BOOL)startSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  [objc_opt_class() _handleNewContactlessSession:self];
  paymentSessionQueue = self->_paymentSessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NPKQuickPaymentSession_startSessionWithCompletion___block_invoke;
  block[3] = &unk_279947610;
  v9 = completionCopy;
  v10 = &v11;
  block[4] = self;
  v6 = completionCopy;
  dispatch_sync(paymentSessionQueue, block);
  LOBYTE(completionCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return completionCopy;
}

void __53__NPKQuickPaymentSession_startSessionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__NPKQuickPaymentSession_startSessionWithCompletion___block_invoke_2;
  v5[3] = &unk_2799475E8;
  v5[4] = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  *(*(*(a1 + 48) + 8) + 24) = [v2 _sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue:v5];
}

void __53__NPKQuickPaymentSession_startSessionWithCompletion___block_invoke_2(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 72));
  kdebug_trace();
  v2 = [*(a1 + 32) currentPass];
  if (v2)
  {
    [*(a1 + 32) _internalQueue_updateSessionWithCurrentPassAndLoyaltyState];
  }

  if ([*(a1 + 32) inServiceMode])
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__NPKQuickPaymentSession_startSessionWithCompletion___block_invoke_3;
    block[3] = &unk_279944F98;
    block[4] = v3;
    dispatch_async(v4, block);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, *(*(*(a1 + 48) + 8) + 24));
  }
}

- (void)authorize18013RequestWithDataToRelease:(id)release credential:(id)credential
{
  v22 = *MEMORY[0x277D85DE8];
  releaseCopy = release;
  credentialCopy = credential;
  v8 = pk_Payment_log(credentialCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = releaseCopy;
      v20 = 2112;
      v21 = credentialCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Authorizing ISO18013 Request with dataToRelease:%@ credential:%@", buf, 0x16u);
    }
  }

  paymentSessionQueue = [(NPKQuickPaymentSession *)self paymentSessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NPKQuickPaymentSession_authorize18013RequestWithDataToRelease_credential___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v16 = releaseCopy;
  v17 = credentialCopy;
  v13 = credentialCopy;
  v14 = releaseCopy;
  dispatch_async(paymentSessionQueue, block);
}

void __76__NPKQuickPaymentSession_authorize18013RequestWithDataToRelease_credential___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactlessSession];
  [v2 authorize18013RequestWithDataToRelease:*(a1 + 40) credential:*(a1 + 48)];
}

- (void)executeRKEActionForPass:(id)pass function:(id)function action:(id)action withCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  functionCopy = function;
  actionCopy = action;
  completionCopy = completion;
  v14 = pk_Payment_log(completionCopy);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v17 = pk_Payment_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = _Block_copy(completionCopy);
      *buf = 138413058;
      v32 = passCopy;
      v33 = 2112;
      v34 = functionCopy;
      v35 = 2112;
      v36 = actionCopy;
      v37 = 2112;
      v38 = v18;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Executing RKE action for pass:%@ function:%@ action:%@ with completion:%@", buf, 0x2Au);
    }
  }

  requireFirstInQueue = [(NPKQuickPaymentSession *)self requireFirstInQueue];
  if (requireFirstInQueue)
  {
    v20 = pk_General_log(requireFirstInQueue);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);

    if (v21)
    {
      v23 = pk_General_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v32 = "[NPKQuickPaymentSession executeRKEActionForPass:function:action:withCompletion:]";
        v33 = 2082;
        v34 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKQuickPaymentSession.m";
        v35 = 2048;
        v36 = 238;
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: We don't need to require first in queue when executing RKE actions.)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke;
  v27[3] = &unk_279947688;
  v27[4] = self;
  v28 = functionCopy;
  v29 = actionCopy;
  v30 = completionCopy;
  v24 = completionCopy;
  v25 = actionCopy;
  v26 = functionCopy;
  [(NPKQuickPaymentSession *)self startSessionWithCompletion:v27];
}

void __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke_2;
    block[3] = &unk_279945BB0;
    v10 = *(a1 + 32);
    v3 = *(v10 + 64);
    v4 = *(&v10 + 1);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v12 = v10;
    v13 = v7;
    dispatch_async(v3, block);
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

void __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) contactlessSession];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke_3;
  v5[3] = &unk_279947660;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 56);
  [v2 sendRKEFunction:v3 action:v4 withAuthorization:0 completion:v5];
}

void __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke_3(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 32) + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke_4;
  v4[3] = &unk_279947638;
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

uint64_t __81__NPKQuickPaymentSession_executeRKEActionForPass_function_action_withCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)setCurrentPass:(id)pass
{
  v16 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v5 = pk_Payment_log(passCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412290;
      v15 = uniqueID;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Payment session: setting current pass to %@", buf, 0xCu);
    }
  }

  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__NPKQuickPaymentSession_setCurrentPass___block_invoke;
  v12[3] = &unk_2799454E0;
  v12[4] = self;
  v13 = passCopy;
  v11 = passCopy;
  dispatch_sync(internalQueue, v12);
}

void __41__NPKQuickPaymentSession_setCurrentPass___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) uniqueID];
  v3 = [*(a1 + 40) uniqueID];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v9 = pk_Payment_log(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 40) uniqueID];
        v11 = [*(*(a1 + 32) + 32) uniqueID];
        *buf = 138412546;
        *v42 = v10;
        *&v42[8] = 2112;
        *&v42[10] = v11;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Payment session: new pass: (%@) is same as current pass in session (%@), returning.", buf, 0x16u);
      }
    }
  }

  else
  {
    v12 = NPKQuickPaymentSessionTypeForPass(*(*(a1 + 32) + 32));
    v13 = *(*(a1 + 32) + 56);
    v14 = NPKQuickPaymentSessionTypeForPass(*(a1 + 40));
    v15 = v14;
    if (*(a1 + 40))
    {
      v18 = v12 != 1 || v13 != 1 || v13 != v14;
      if (*(*(a1 + 32) + 96))
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = pk_Payment_log(v14);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v23 = pk_Payment_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = NSStringFromNPKQuickPaymentSessionType(v12);
        v25 = NSStringFromNPKQuickPaymentSessionType(v13);
        v26 = NSStringFromNPKQuickPaymentSessionType(v15);
        v27 = *(a1 + 40);
        v28 = *(*(a1 + 32) + 96) != 0;
        *buf = 67110402;
        *v42 = v19;
        *&v42[4] = 2112;
        *&v42[6] = v24;
        *&v42[14] = 2112;
        *&v42[16] = v25;
        v43 = 2112;
        v44 = v26;
        v45 = 2112;
        v46 = v27;
        v47 = 1024;
        v48 = v28;
        _os_log_impl(&dword_25B300000, v23, OS_LOG_TYPE_DEFAULT, "Notice: Needs to refresh session:%d, current pass sessionType:%@ current session:%@ expected:%@ currentPass:%@ hasContactLessSession:%d", buf, 0x36u);
      }
    }

    v29 = *(a1 + 32);
    if (v19)
    {
      add = atomic_fetch_add(v29 + 4, 1u);
      *(*(a1 + 32) + 21) = 0;
      v31 = pk_Payment_log(v29);
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

      if (v32)
      {
        v34 = pk_Payment_log(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [*(a1 + 40) uniqueID];
          *buf = 138412546;
          *v42 = v35;
          *&v42[8] = 2048;
          *&v42[10] = add + 1;
          _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_DEFAULT, "Notice: refreshing session for pass with uniqueID:%@ count:%lu", buf, 0x16u);
        }
      }

      [*(*(a1 + 32) + 96) setDelegate:0];
      [*(a1 + 32) _internalQueue_deactivateSessionWithCompletion:&__block_literal_global_124];
      [*(a1 + 32) _internalQueue_setCurrentPass:*(a1 + 40)];
      v37 = *(a1 + 32);
      v36 = *(a1 + 40);
      v38 = *(v37 + 64);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __41__NPKQuickPaymentSession_setCurrentPass___block_invoke_125;
      v39[3] = &unk_2799454E0;
      v39[4] = v37;
      v40 = v36;
      dispatch_async(v38, v39);
    }

    else
    {
      [(atomic_uint *)v29 _internalQueue_setCurrentPass:*(a1 + 40)];
    }
  }
}

void __41__NPKQuickPaymentSession_setCurrentPass___block_invoke_122(uint64_t a1)
{
  v1 = pk_Payment_log(a1);
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);

  if (v2)
  {
    v4 = pk_Payment_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Old session deactivated", v5, 2u);
    }
  }
}

void __41__NPKQuickPaymentSession_setCurrentPass___block_invoke_125(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__NPKQuickPaymentSession_setCurrentPass___block_invoke_2;
  v2[3] = &unk_2799454E0;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue:v2];
}

void __41__NPKQuickPaymentSession_setCurrentPass___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  add = atomic_fetch_add((*(a1 + 32) + 16), 0xFFFFFFFF);
  v3 = pk_Payment_log(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = add - 1;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: finish refresh session count:%lu", &v7, 0xCu);
    }
  }

  dispatch_assert_queue_V2(*(*(a1 + 32) + 72));
  if (*(a1 + 40))
  {
    [*(a1 + 32) _internalQueue_updateSessionWithCurrentPassAndLoyaltyState];
  }
}

- (void)_internalQueue_setCurrentPass:(id)pass
{
  v28 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  dispatch_assert_queue_V2(self->_internalQueue);
  currentPass = self->_currentPass;
  objc_storeStrong(&self->_currentPass, pass);
  if (currentPass != passCopy)
  {
    v7 = NPKQuickPaymentSessionTypeForPass(passCopy);
    sessionStarted = [(NPKQuickPaymentSession *)self sessionStarted];
    if (sessionStarted)
    {
      if (v7 != self->_sessionType)
      {
        v9 = pk_General_log(sessionStarted);
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

        if (v10)
        {
          v12 = pk_General_log(v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = NSStringFromNPKQuickPaymentSessionType(v7);
            v14 = NSStringFromNPKQuickPaymentSessionType(self->_sessionType);
            *buf = 138412802;
            v23 = v13;
            v24 = 2112;
            v25 = passCopy;
            v26 = 2112;
            v27 = v14;
            _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: expected session type:%@ for pass:%@, current session type:%@ doesn't match. Expect bad thing to happen.", buf, 0x20u);
          }
        }
      }
    }

    callbackQueue = self->_callbackQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __56__NPKQuickPaymentSession__internalQueue_setCurrentPass___block_invoke;
    v19 = &unk_2799454E0;
    selfCopy = self;
    v21 = passCopy;
    dispatch_async(callbackQueue, &v16);
    if (self->_contactlessSession)
    {
      [(NPKQuickPaymentSession *)self _internalQueue_updateSessionWithCurrentPassAndLoyaltyState:v16];
    }
  }
}

void __56__NPKQuickPaymentSession__internalQueue_setCurrentPass___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSession:*(a1 + 32) didMakePassCurrent:*(a1 + 40)];
  }
}

- (void)setVasPasses:(id)passes
{
  passesCopy = passes;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__NPKQuickPaymentSession_setVasPasses___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = passesCopy;
  v6 = passesCopy;
  dispatch_sync(internalQueue, v7);
}

void *__39__NPKQuickPaymentSession_setVasPasses___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  result = *(a1 + 32);
  if (result[12])
  {

    return [result _internalQueue_updateSessionWithCurrentPassAndLoyaltyState];
  }

  return result;
}

- (void)setCredential:(id)credential
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
      *buf = 138412290;
      v15 = credentialCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: requested to set credential:%@", buf, 0xCu);
    }
  }

  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__NPKQuickPaymentSession_setCredential___block_invoke;
  v11[3] = &unk_2799454E0;
  v12 = credentialCopy;
  selfCopy = self;
  v10 = credentialCopy;
  dispatch_async(internalQueue, v11);
}

void __40__NPKQuickPaymentSession_setCredential___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: setting credential:%@", buf, 0xCu);
    }
  }

  objc_storeStrong((*(a1 + 40) + 8), *(a1 + 32));
  v7 = *(a1 + 40);
  if (*(v7 + 25) == 1)
  {
    [v7 _updateSessionWithCredentialAndActivate];
    v7 = *(a1 + 40);
  }

  v8 = *(v7 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NPKQuickPaymentSession_setCredential___block_invoke_128;
  block[3] = &unk_279944F98;
  block[4] = v7;
  dispatch_async(v8, block);
}

void __40__NPKQuickPaymentSession_setCredential___block_invoke_128(uint64_t a1)
{
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: paymentSessionDidReceiveCredential callback", v9, 2u);
    }
  }

  v6 = [*(a1 + 32) delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [*(a1 + 32) delegate];
    [v8 paymentSessionDidReceiveCredential:*(a1 + 32)];
  }
}

- (void)confirmSessionExpectingCredential:(BOOL)credential
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__NPKQuickPaymentSession_confirmSessionExpectingCredential___block_invoke;
  v4[3] = &unk_279944FC0;
  v4[4] = self;
  credentialCopy = credential;
  dispatch_async(internalQueue, v4);
}

void *__60__NPKQuickPaymentSession_confirmSessionExpectingCredential___block_invoke(void *result)
{
  v1 = *(result + 4);
  v2 = *(v1 + 25);
  *(v1 + 25) = 1;
  if ((v2 & 1) == 0 && (*(*(result + 4) + 8) || (*(result + 40) & 1) == 0))
  {
    return [*(result + 4) _updateSessionWithCredentialAndActivate];
  }

  return result;
}

- (void)setDeferAuthorization:(BOOL)authorization
{
  authorizationCopy = authorization;
  v15 = *MEMORY[0x277D85DE8];
  v5 = pk_Payment_log(self);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"no";
      if (authorizationCopy)
      {
        v9 = @"yes";
      }

      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Setting defer authorization on quick payment session: %@", buf, 0xCu);
    }
  }

  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__NPKQuickPaymentSession_setDeferAuthorization___block_invoke;
  v11[3] = &unk_279944FC0;
  v11[4] = self;
  v12 = authorizationCopy;
  dispatch_sync(internalQueue, v11);
}

- (void)setInServiceMode:(BOOL)mode
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__NPKQuickPaymentSession_setInServiceMode___block_invoke;
  v4[3] = &unk_279944FC0;
  modeCopy = mode;
  v4[4] = self;
  dispatch_sync(internalQueue, v4);
}

void __43__NPKQuickPaymentSession_setInServiceMode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 22))
  {
    *(v2 + 22) = v1;
    if (*(a1 + 40) == 1)
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 64);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__NPKQuickPaymentSession_setInServiceMode___block_invoke_2;
      block[3] = &unk_279944F98;
      block[4] = v3;
      dispatch_async(v4, block);
    }

    else
    {
      v5 = pk_Payment_log(a1);
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

      if (v6)
      {
        v8 = pk_Payment_log(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Cannot disable persistent card emulation on a session!", v9, 2u);
        }
      }
    }
  }
}

void __43__NPKQuickPaymentSession_setInServiceMode___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _sessionQueue_enablePersistentCardEmulation];
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__NPKQuickPaymentSession_setInServiceMode___block_invoke_3;
    block[3] = &unk_279944F98;
    block[4] = v3;
    dispatch_async(v4, block);
  }

  else
  {
    v5 = pk_Payment_log(v2);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Failed to enable service mode!", v9, 2u);
      }
    }
  }
}

- (void)setInField:(BOOL)field
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__NPKQuickPaymentSession_setInField___block_invoke;
  v4[3] = &unk_279944FC0;
  fieldCopy = field;
  v4[4] = self;
  dispatch_sync(internalQueue, v4);
}

uint64_t __37__NPKQuickPaymentSession_setInField___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 23))
  {
    *(v2 + 23) = v1;
  }

  return result;
}

- (void)_updateSessionWithCredentialAndActivate
{
  kdebug_trace();
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 26);
  *(v2 + 26) = 1;
  v4 = pk_Payment_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @" (first activation)";
      if (v3)
      {
        v8 = &stru_286C934F8;
      }

      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: updating session%@", buf, 0xCu);
    }
  }

  v9 = [*(a1 + 32) contactlessSession];
  v10 = [*(a1 + 32) deferAuthorization];
  v11 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_143;
  v13[3] = &unk_279947700;
  v15 = v3 ^ 1;
  v13[4] = v11;
  v14 = v9;
  v16 = v10;
  v12 = v9;
  [v11 _internalQueue_getContactlessAndAuthorizationValidityAndPerformWork:v13];
}

void __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_143(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_2;
    block[3] = &unk_279944F98;
    block[4] = v6;
    dispatch_async(v7, block);
  }

  v8 = *(*(a1 + 32) + 64);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_3;
  v11[3] = &unk_2799476D8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v12 = v9;
  v13 = v10;
  v14 = a2;
  v15 = a3;
  v16 = *(a1 + 49);
  dispatch_async(v8, v11);
}

void __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [v4 currentPass];
    [v6 paymentSession:v4 willActivatePass:v5];
  }
}

void __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = pk_Payment_log(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = v2;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Confirm or renew quick payment session state is %u", buf, 8u);
    }
  }

  if ((v2 - 1) <= 1)
  {
    [*(a1 + 40) _checkContactlessValidity:? authorizationValidity:? performWork:?];
  }
}

void __65__NPKQuickPaymentSession__updateSessionWithCredentialAndActivate__block_invoke_146(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 contactlessSession];
    v5 = [v4 activatedPaymentApplications];
    v6 = [v3 _sessionQueue_authorizeWithUseCredential:objc_msgSend(v5 deferAuthorizationIfCredentialUsed:{"count") != 0, *(a1 + 48)}];

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = [v8 currentPass];
    [v8 _sessionQueue_invokeAppropriateCallbackForActivationWithSuccess:v6 invokeOnSuccess:1 contactlessValidity:v7 forPass:v9];
  }
}

- (void)deactivateSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = pk_Payment_log(completionCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: deactivating session", buf, 2u);
    }
  }

  *buf = 0;
  v17 = buf;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = [(NPKQuickPaymentSession *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NPKQuickPaymentSession_deactivateSessionWithCompletion___block_invoke;
  block[3] = &unk_279947610;
  v15 = buf;
  block[4] = self;
  v10 = completionCopy;
  v14 = v10;
  dispatch_sync(internalQueue, block);

  if ((v17[24] & 1) == 0)
  {
    callbackQueue = self->_callbackQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__NPKQuickPaymentSession_deactivateSessionWithCompletion___block_invoke_2;
    v12[3] = &unk_279944F98;
    v12[4] = self;
    dispatch_async(callbackQueue, v12);
  }

  _Block_object_dispose(buf, 8);
}

uint64_t __58__NPKQuickPaymentSession_deactivateSessionWithCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDeactivating])
  {
    v2 = 1;
  }

  else
  {
    v2 = [*(a1 + 32) isDeactivated];
  }

  *(*(*(a1 + 48) + 8) + 24) = v2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _internalQueue_deactivateSessionWithCompletion:v4];
}

- (void)_internalQueue_deactivateSessionWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  internalQueue = [(NPKQuickPaymentSession *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v7 = pk_Payment_log(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      isDeactivating = [(NPKQuickPaymentSession *)self isDeactivating];
      v16 = 1024;
      isDeactivated = [(NPKQuickPaymentSession *)self isDeactivated];
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Deactivate quick payment session: deactivating %d deactivated %d", buf, 0xEu);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke;
  v12[3] = &unk_279947728;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(NPKQuickPaymentSession *)self _internalQueue_updateContactlessValidityAndPerformWork:v12];
}

void __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactlessSession];
  v3 = [*(a1 + 32) contactlessSessionHandle];
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) deactivationCompletionBlocks];

    if (!v4)
    {
      v5 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 32) setDeactivationCompletionBlocks:v5];
    }

    v6 = [*(a1 + 32) deactivationCompletionBlocks];
    v7 = _Block_copy(*(a1 + 40));
    [v6 addObject:v7];
  }

  if (([*(a1 + 32) isDeactivating] & 1) == 0)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke_2;
    aBlock[3] = &unk_2799454E0;
    aBlock[4] = *(a1 + 32);
    v8 = v2;
    v19 = v8;
    v9 = _Block_copy(aBlock);
    kdebug_trace();
    if (v8)
    {
      v10 = *(*(a1 + 32) + 64);
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke_2_150;
      v15 = &unk_279945530;
      v16 = v8;
      v17 = v9;
      dispatch_async(v10, &v12);
    }

    else
    {
      [v3 invalidateSessionWithCompletion:v9];
    }

    [*(a1 + 32) setContactlessSessionHandle:{0, v12, v13, v14, v15}];
    [*(a1 + 32) setContactlessSession:0];
    v11 = [*(a1 + 32) fieldDetector];
    [v11 unregisterObserver:*(a1 + 32)];

    [*(a1 + 32) setFieldDetector:0];
    [*(a1 + 32) setDeactivating:1];
  }
}

void __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = kdebug_trace();
  v3 = pk_Payment_log(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_Payment_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Deactivate quick payment session: underlying session deactivated", buf, 2u);
    }
  }

  v7 = *(*(a1 + 32) + 72);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke_149;
  v10[3] = &unk_2799454E0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  dispatch_async(v7, v10);
}

uint64_t __73__NPKQuickPaymentSession__internalQueue_deactivateSessionWithCompletion___block_invoke_149(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  [*(a1 + 40) setDeactivating:0];
  [*(a1 + 40) setDeactivated:1];
  v2 = *(a1 + 40);

  return [v2 _internalQueue_invokeDeactivationCompletionBlocks];
}

- (void)_internalQueue_updateContactlessSessionForPass:(id)pass vasPasses:(id)passes deferAuthorization:(BOOL)authorization
{
  v27 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  passesCopy = passes;
  v10 = pk_Payment_log(passesCopy);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      v15 = [passesCopy pk_arrayByApplyingBlock:&__block_literal_global_154];
      *buf = 138412546;
      v24 = uniqueID;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Internal queue: updating contactless session for pass %@ auto-select VAS passes %@", buf, 0x16u);
    }
  }

  dispatch_assert_queue_V2(self->_internalQueue);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_158;
  v18[3] = &unk_2799477A0;
  v19 = passCopy;
  selfCopy = self;
  v21 = passesCopy;
  authorizationCopy = authorization;
  v16 = passesCopy;
  v17 = passCopy;
  [(NPKQuickPaymentSession *)self _internalQueue_updateContactlessValidityAndPerformWork:v18];
}

id __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 passTypeIdentifier];
  v5 = [v3 uniqueID];

  v6 = [v2 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

void __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_158(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) paymentPass];
  v5 = [v4 npkPreferredContactlessPaymentApplications];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v7 + 64);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_2;
  v10[3] = &unk_279947778;
  v10[4] = v7;
  v14 = a2;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 48);
  v15 = *(a1 + 56);
  v9 = v5;
  dispatch_async(v8, v10);
}

void __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 64);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_3;
  v10[3] = &unk_279947750;
  v4 = *(a1 + 32);
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *v2;
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v14 = *(a1 + 72);
  v13 = *(a1 + 64);
  [v4 _checkContactlessValidity:v3 performWork:v10];
}

void __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_3(uint64_t a1, int a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) paymentPass];
    if (!v3 || ([*(a1 + 32) paymentPass], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "contactlessActivationState"), v4, v3, !v5))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(v7 + 80);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_4;
      block[3] = &unk_2799454E0;
      block[4] = v7;
      v31 = v6;
      dispatch_async(v8, block);
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v9 = *(a1 + 40);
    v10 = *(v9 + 72);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_5;
    v25[3] = &unk_279944FE8;
    v25[4] = v9;
    v25[5] = &v26;
    dispatch_sync(v10, v25);
    v11 = [*(a1 + 40) _sessionQueue_updateContactlessSessionForPass:*(a1 + 32) paymentApplications:*(a1 + 48) vasPasses:*(a1 + 56) sessionConfirmed:*(v27 + 24) deferAuthorization:*(a1 + 72)];
    v12 = [*(a1 + 40) contactlessSession];
    v13 = [v12 activatedPaymentApplications];
    if ([v13 count])
    {
      v14 = 1;
    }

    else
    {
      v15 = [*(a1 + 40) contactlessSession];
      v16 = [v15 activatedValueAddedServicePasses];
      v14 = [v16 count] != 0;
    }

    v18 = pk_Payment_log(v17);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v21 = pk_Payment_log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v27 + 24);
        *buf = 67109632;
        v33 = v11;
        v34 = 1024;
        v35 = v14;
        v36 = 1024;
        v37 = v22;
        _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Internal queue update contactless session: success %d now activated %d session confirmed %d", buf, 0x14u);
      }

      v23 = *(a1 + 40);
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v23 = *(a1 + 40);
      if (!v14)
      {
LABEL_12:
        v24 = 0;
LABEL_15:
        [v23 _sessionQueue_invokeAppropriateCallbackForActivationWithSuccess:v11 invokeOnSuccess:v24 & 1 contactlessValidity:*(a1 + 64) forPass:*(a1 + 32)];
        _Block_object_dispose(&v26, 8);
        return;
      }
    }

    v24 = *(v27 + 24);
    goto LABEL_15;
  }
}

void __102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSession:*(a1 + 32) willActivatePass:*(a1 + 40)];
  }
}

void *__102__NPKQuickPaymentSession__internalQueue_updateContactlessSessionForPass_vasPasses_deferAuthorization___block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 32) isConfirmed];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_sessionQueue_updateContactlessSessionForPass:(id)pass paymentApplications:(id)applications vasPasses:(id)passes sessionConfirmed:(BOOL)confirmed deferAuthorization:(BOOL)authorization
{
  authorizationCopy = authorization;
  confirmedCopy = confirmed;
  v62 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  applicationsCopy = applications;
  passesCopy = passes;
  v15 = pk_Payment_log(passesCopy);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v18 = pk_Payment_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      v20 = [passesCopy pk_arrayByApplyingBlock:&__block_literal_global_160];
      contactlessSession = [(NPKQuickPaymentSession *)self contactlessSession];
      *buf = 138412802;
      v58 = uniqueID;
      v59 = 2112;
      *v60 = v20;
      *&v60[8] = 2112;
      v61 = contactlessSession;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Session queue update contactless session: pass %@ auto-select VAS passes %@ (session %@)", buf, 0x20u);
    }
  }

  dispatch_assert_queue_V2(self->_paymentSessionQueue);
  paymentPass = [passCopy paymentPass];
  contactlessSession2 = [(NPKQuickPaymentSession *)self contactlessSession];

  if (!contactlessSession2)
  {
    v28 = 1;
    goto LABEL_38;
  }

  v24 = MEMORY[0x277CBEBF8];
  if (passesCopy)
  {
    v24 = passesCopy;
  }

  contactlessActivationState = v24;
  v26 = contactlessActivationState;
  v52 = authorizationCopy;
  if (!passCopy)
  {
    goto LABEL_15;
  }

  if (!paymentPass)
  {
    nfcPayload = [passCopy nfcPayload];

    if (nfcPayload)
    {
      v56 = passCopy;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];

      v27 = 0;
      v26 = v30;
      goto LABEL_16;
    }

LABEL_15:
    v27 = 0;
    goto LABEL_16;
  }

  contactlessActivationState = [paymentPass contactlessActivationState];
  if (contactlessActivationState)
  {
    goto LABEL_15;
  }

  contactlessActivationState = applicationsCopy;
  v27 = contactlessActivationState;
LABEL_16:
  v31 = pk_Payment_log(contactlessActivationState);
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

  if (v32)
  {
    v34 = pk_Payment_log(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v26 pk_arrayByApplyingBlock:&__block_literal_global_164];
      *buf = 138412290;
      v58 = v35;
      _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_DEFAULT, "Notice: Using VAS passes when updating contactless session: %@", buf, 0xCu);
    }
  }

  v53 = passCopy;
  v54 = confirmedCopy;
  v55 = passesCopy;
  v36 = applicationsCopy;
  kdebug_trace();
  contactlessSession3 = [(NPKQuickPaymentSession *)self contactlessSession];
  activatedValueAddedServicePasses = [contactlessSession3 activatedValueAddedServicePasses];
  v39 = PKEqualObjects();

  v40 = v26;
  if (v39)
  {
    v41 = 1;
  }

  else
  {
    v41 = [contactlessSession3 activateValueAddedServicePasses:v26];
  }

  if ([v27 count])
  {
    v42 = paymentPass;
  }

  else
  {
    v42 = 0;
  }

  v43 = [contactlessSession3 activatePaymentApplications:v27 forPaymentPass:v42];
  v44 = kdebug_trace();
  v45 = pk_Payment_log(v44);
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);

  if (v46)
  {
    v48 = pk_Payment_log(v47);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v58 = contactlessSession3;
      v59 = 1024;
      *v60 = v41;
      *&v60[4] = 1024;
      *&v60[6] = v43;
      LOWORD(v61) = 1024;
      *(&v61 + 2) = v54;
      _os_log_impl(&dword_25B300000, v48, OS_LOG_TYPE_DEFAULT, "Notice: Session queue update contactless session::%@ VAS success %d payment success %d session confirmed %d", buf, 0x1Eu);
    }
  }

  applicationsCopy = v36;
  v28 = v41 | v43;
  if (v28)
  {
    passesCopy = v55;
    v49 = v40;
    passCopy = v53;
    if (v54)
    {
      if ([v27 count] || objc_msgSend(v49, "count"))
      {
        activatedPaymentApplications = [contactlessSession3 activatedPaymentApplications];
        v28 = -[NPKQuickPaymentSession _sessionQueue_authorizeWithUseCredential:deferAuthorizationIfCredentialUsed:](self, "_sessionQueue_authorizeWithUseCredential:deferAuthorizationIfCredentialUsed:", [activatedPaymentApplications count] != 0, v52);
      }

      else
      {
        v28 = 1;
      }
    }
  }

  else
  {
    passesCopy = v55;
    v49 = v40;
    passCopy = v53;
  }

LABEL_38:
  return v28 & 1;
}

- (void)_sessionQueue_invokeAppropriateCallbackForActivationWithSuccess:(BOOL)success invokeOnSuccess:(BOOL)onSuccess contactlessValidity:(unint64_t)validity forPass:(id)pass
{
  onSuccessCopy = onSuccess;
  successCopy = success;
  v31 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  dispatch_assert_queue_V2(self->_paymentSessionQueue);
  v12 = pk_Payment_log(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v15 = pk_Payment_log(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      v24 = successCopy;
      v25 = 1024;
      v26 = onSuccessCopy;
      v27 = 1024;
      validityCopy = validity;
      v29 = 2112;
      v30 = passCopy;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Invoking callback for activation: success %d invokeOnSuccess %d contactlessValidity %u pass %@", buf, 0x1Eu);
    }
  }

  callbackQueue = self->_callbackQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __134__NPKQuickPaymentSession__sessionQueue_invokeAppropriateCallbackForActivationWithSuccess_invokeOnSuccess_contactlessValidity_forPass___block_invoke;
  v18[3] = &unk_2799477F0;
  v21 = successCopy;
  v22 = onSuccessCopy;
  v19 = passCopy;
  validityCopy2 = validity;
  v18[4] = self;
  v17 = passCopy;
  dispatch_async(callbackQueue, v18);
}

void __134__NPKQuickPaymentSession__sessionQueue_invokeAppropriateCallbackForActivationWithSuccess_invokeOnSuccess_contactlessValidity_forPass___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 57) == 1)
    {
      v1 = *(a1 + 32);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __134__NPKQuickPaymentSession__sessionQueue_invokeAppropriateCallbackForActivationWithSuccess_invokeOnSuccess_contactlessValidity_forPass___block_invoke_2;
      v5[3] = &unk_2799477C8;
      v7 = 1;
      v5[4] = v1;
      v2 = *(a1 + 48);
      v6 = *(a1 + 40);
      [v1 _checkContactlessValidity:v2 performWork:v5];
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [v3 endSessionWhenAuthorizationIsConsumed];

    [v3 _callbackQueue_invokeDidCompleteForReason:4 withTransactionContext:0 shouldCleanupSession:v4];
  }
}

void __134__NPKQuickPaymentSession__sessionQueue_invokeAppropriateCallbackForActivationWithSuccess_invokeOnSuccess_contactlessValidity_forPass___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 48) == 1)
    {
      v3 = [*(a1 + 32) delegate];
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        v5 = [*(a1 + 32) delegate];
        [v5 paymentSession:*(a1 + 32) didActivatePass:*(a1 + 40)];
      }
    }
  }
}

- (BOOL)_sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue:(id)queue
{
  v71 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  dispatch_assert_queue_V2(self->_paymentSessionQueue);
  v6 = pk_Payment_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Starting contactless session on session queue", buf, 2u);
    }
  }

  v10 = dispatch_group_create();
  *buf = 0;
  v60 = buf;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__10;
  v63 = __Block_byref_object_dispose__10;
  v64 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__10;
  v57[4] = __Block_byref_object_dispose__10;
  v58 = 0;
  dispatch_group_enter(v10);
  dispatch_group_enter(v10);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke;
  aBlock[3] = &unk_279947818;
  v55 = buf;
  v56 = v57;
  v11 = v10;
  v54 = v11;
  v12 = _Block_copy(aBlock);
  v13 = dispatch_get_global_queue(33, 0);
  v14 = NPKQuickPaymentSessionTypeForPass(self->_currentPass);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v21 = [MEMORY[0x277D380F8] startDigitalCarKeySessionWithCompletion:v12 targetQueue:v13];
      v22 = v21;
      v23 = 2;
    }

    else
    {
      v21 = [MEMORY[0x277D380F8] startSTSContactlessInterfaceSessionWithDelegate:self completion:v12];
      v22 = v21;
      v23 = 3;
    }
  }

  else
  {
    if (!v14)
    {
      v15 = pk_General_log(0);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        v18 = pk_General_log(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = NSStringFromNPKQuickPaymentSessionType(0);
          currentPass = self->_currentPass;
          *v65 = 138412802;
          v66 = v19;
          v67 = 2112;
          v68 = @"NPKQuickPaymentSessionContactlessType";
          v69 = 2112;
          v70 = currentPass;
          _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Warning: falling back from session type:%@ to:%@ for pass:%@.", v65, 0x20u);
        }
      }
    }

    v21 = [MEMORY[0x277D380F8] startContactlessInterfaceSessionWithCompletion:v12 targetQueue:v13];
    v22 = v21;
    v23 = 1;
  }

  self->_sessionType = v23;
  v24 = pk_General_log(v21);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (v25)
  {
    v27 = pk_General_log(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = NSStringFromNPKQuickPaymentSessionType(v23);
      v29 = self->_currentPass;
      *v65 = 138412802;
      v66 = v22;
      v67 = 2112;
      v68 = v28;
      v69 = 2112;
      v70 = v29;
      _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: Obtain session handler:%@ for sessionType:%@ pass:%@", v65, 0x20u);
    }
  }

  isFirstInQueue = [v22 isFirstInQueue];
  requireFirstInQueue = [(NPKQuickPaymentSession *)self requireFirstInQueue];
  v32 = requireFirstInQueue ^ 1 | isFirstInQueue;
  if (v32)
  {
    if ((isFirstInQueue & 1) == 0)
    {
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_169;
      block[3] = &unk_279944F98;
      block[4] = self;
      dispatch_async(callbackQueue, block);
    }

    internalQueue = self->_internalQueue;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_2;
    v50[3] = &unk_2799454E0;
    v50[4] = self;
    v51 = v22;
    dispatch_sync(internalQueue, v50);
  }

  else
  {
    v35 = pk_Payment_log(requireFirstInQueue);
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

    if (v36)
    {
      v38 = pk_Payment_log(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *v65 = 0;
        _os_log_impl(&dword_25B300000, v38, OS_LOG_TYPE_DEFAULT, "Notice: Was not first in queue; tearing down and invalidating session", v65, 2u);
      }
    }

    [v22 invalidateSession];
    v39 = self->_internalQueue;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_172;
    v49[3] = &unk_279944F98;
    v49[4] = self;
    dispatch_sync(v39, v49);
  }

  dispatch_group_leave(v11);
  internalQueue = [(NPKQuickPaymentSession *)self internalQueue];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_2_173;
  v43[3] = &unk_279947840;
  v47 = v32 & 1;
  v48 = isFirstInQueue;
  v43[4] = self;
  v44 = queueCopy;
  v45 = buf;
  v46 = v57;
  v41 = queueCopy;
  dispatch_group_notify(v11, internalQueue, v43);

  _Block_object_dispose(v57, 8);
  _Block_object_dispose(buf, 8);

  return v32 & 1;
}

void __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_169(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionIsWaitingToStart:*(a1 + 32)];
  }
}

void __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_2_173(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 32);
    if (v2 == 1)
    {
      [v3 setContactlessSession:?];
      [*(*(*(a1 + 48) + 8) + 40) setDelegate:*(a1 + 32)];
      v4 = [*(a1 + 32) fieldDetector];

      if (!v4)
      {
        v5 = objc_alloc_init(MEMORY[0x277D37EE0]);
        [*(a1 + 32) setFieldDetector:v5];

        v6 = [*(a1 + 32) fieldDetector];
        [v6 registerObserver:*(a1 + 32)];
      }

      if ((*(a1 + 65) & 1) == 0)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 80);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_3;
        block[3] = &unk_279944F98;
        block[4] = v7;
        dispatch_async(v8, block);
      }

      v9 = *(a1 + 40);
      if (v9)
      {
        (*(v9 + 16))();
      }
    }

    else
    {

      [v3 _internalQueue_deactivateSessionWithCompletion:0];
    }
  }

  else
  {
    v10 = pk_Payment_log(a1);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412290;
        v21 = v14;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: No contactless session; marking as deactivated (error: %@)", buf, 0xCu);
      }
    }

    [*(a1 + 32) setContactlessSession:0];
    [*(a1 + 32) setContactlessSessionHandle:0];
    v15 = [*(a1 + 32) fieldDetector];
    [v15 unregisterObserver:*(a1 + 32)];

    [*(a1 + 32) setFieldDetector:0];
    [*(a1 + 32) setDeactivating:0];
    [*(a1 + 32) setDeactivated:1];
    *(*(a1 + 32) + 56) = 0;
    if (*(a1 + 64) == 1)
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 80);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_177;
      v18[3] = &unk_279944F98;
      v18[4] = v16;
      dispatch_async(v17, v18);
    }
  }
}

void __103__NPKQuickPaymentSession__sessionQueue_startContactlessSessionWithSuccessfulCompletionOnInternalQueue___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidStart:*(a1 + 32)];
  }
}

- (BOOL)_sessionQueue_enablePersistentCardEmulation
{
  dispatch_assert_queue_V2(self->_paymentSessionQueue);
  contactlessSession = [(NPKQuickPaymentSession *)self contactlessSession];

  v5 = pk_Payment_log(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (contactlessSession)
  {
    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Enabling persistent card emulation", buf, 2u);
      }
    }

    contactlessSession2 = [(NPKQuickPaymentSession *)self contactlessSession];
    queuePersistentCardEmulation = [contactlessSession2 queuePersistentCardEmulation];
  }

  else
  {
    if (!v6)
    {
      return 1;
    }

    contactlessSession2 = pk_Payment_log(v7);
    if (os_log_type_enabled(contactlessSession2, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_25B300000, contactlessSession2, OS_LOG_TYPE_DEFAULT, "Notice: No contactless session; not yet enabling persistent card emulation", v12, 2u);
    }

    queuePersistentCardEmulation = 1;
  }

  return queuePersistentCardEmulation;
}

- (BOOL)_sessionQueue_authorizeWithUseCredential:(BOOL)credential deferAuthorizationIfCredentialUsed:(BOOL)used
{
  usedCopy = used;
  credentialCopy = credential;
  v38 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (credential)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__NPKQuickPaymentSession__sessionQueue_authorizeWithUseCredential_deferAuthorizationIfCredentialUsed___block_invoke;
    block[3] = &unk_279947868;
    block[4] = self;
    block[5] = &v26;
    block[6] = v25;
    block[7] = &v21;
    usedCopy2 = used;
    dispatch_sync(internalQueue, block);
    if ((v22[3] & 1) != 0 && !v27[5] && self->_sessionType == 1)
    {
      v8 = pk_Payment_log(self);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v10 = pk_Payment_log(self);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: No credential to activate: setting deferAuthorization to NO to present VAS pass", buf, 2u);
        }
      }

      usedCopy = 0;
    }
  }

  v11 = pk_Payment_log(self);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v14 = pk_Payment_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v27[5];
      *buf = 67109634;
      v33 = usedCopy;
      v34 = 1024;
      v35 = credentialCopy;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Authorizing deferred authorization: %d use credential: %d credential: %@", buf, 0x18u);
    }
  }

  kdebug_trace();
  contactlessSession = [(NPKQuickPaymentSession *)self contactlessSession];
  v17 = [contactlessSession authorizeAndStartCardEmulationWithCredential:v27[5] deferAuthorization:usedCopy];

  kdebug_trace();
  [(NPKQuickPaymentSession *)self _updateAuthorizationValidity];
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v26, 8);

  return v17;
}

void __102__NPKQuickPaymentSession__sessionQueue_authorizeWithUseCredential_deferAuthorizationIfCredentialUsed___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 8));
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 56);
  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 40) count] != 0;
  if ((*(a1 + 64) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
  }
}

- (void)_internalQueue_updateSessionWithCurrentPassAndLoyaltyState
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
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: updating with current pass and loyalty state", v10, 2u);
    }
  }

  currentPass = self->_currentPass;
  allValues = [(NSDictionary *)self->_vasPasses allValues];
  [(NPKQuickPaymentSession *)self _internalQueue_updateContactlessSessionForPass:currentPass vasPasses:allValues deferAuthorization:[(NPKQuickPaymentSession *)self deferAuthorization]];
}

- (void)_internalQueue_updateContactlessValidityAndPerformWork:(id)work
{
  workCopy = work;
  dispatch_assert_queue_V2(self->_internalQueue);
  v4 = workCopy;
  ++self->_contactlessValidity;
  if (workCopy)
  {
    (*(workCopy + 2))(workCopy);
    v4 = workCopy;
  }
}

- (void)_updateAuthorizationValidity
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NPKQuickPaymentSession__updateAuthorizationValidity__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (void)_internalQueue_getContactlessAndAuthorizationValidityAndPerformWork:(id)work
{
  workCopy = work;
  dispatch_assert_queue_V2(self->_internalQueue);
  v4 = workCopy;
  if (workCopy)
  {
    (*(workCopy + 2))(workCopy, self->_contactlessValidity, self->_authorizationValidity);
    v4 = workCopy;
  }
}

- (void)_checkContactlessValidity:(unint64_t)validity performWork:(id)work
{
  workCopy = work;
  if (workCopy)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__NPKQuickPaymentSession__checkContactlessValidity_performWork___block_invoke;
    block[3] = &unk_279947890;
    block[5] = &v9;
    block[6] = validity;
    block[4] = self;
    dispatch_sync(internalQueue, block);
    workCopy[2](workCopy, *(v10 + 24));
    _Block_object_dispose(&v9, 8);
  }
}

void *__64__NPKQuickPaymentSession__checkContactlessValidity_performWork___block_invoke(void *result)
{
  if (result[6] == *(result[4] + 104))
  {
    *(*(result[5] + 8) + 24) = 1;
  }

  return result;
}

- (void)_checkContactlessValidity:(unint64_t)validity authorizationValidity:(unint64_t)authorizationValidity performWork:(id)work
{
  workCopy = work;
  if (workCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    internalQueue = self->_internalQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__NPKQuickPaymentSession__checkContactlessValidity_authorizationValidity_performWork___block_invoke;
    v10[3] = &unk_2799478B8;
    v10[6] = validity;
    v10[7] = authorizationValidity;
    v10[4] = self;
    v10[5] = &v11;
    dispatch_sync(internalQueue, v10);
    workCopy[2](workCopy, *(v12 + 24));
    _Block_object_dispose(&v11, 8);
  }
}

void *__86__NPKQuickPaymentSession__checkContactlessValidity_authorizationValidity_performWork___block_invoke(void *result)
{
  v1 = result[4];
  if (result[6] == *(v1 + 104) && result[7] == *(v1 + 112))
  {
    *(*(result[5] + 8) + 24) = 1;
  }

  return result;
}

- (void)contactlessInterfaceSessionDidFailTransaction:(id)transaction forPaymentApplication:(id)application paymentPass:(id)pass
{
  v21 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  passCopy = pass;
  v9 = pk_Payment_log(passCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_Payment_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      applicationIdentifier = [applicationCopy applicationIdentifier];
      uniqueID = [passCopy uniqueID];
      *buf = 138412546;
      v18 = applicationIdentifier;
      v19 = 2112;
      v20 = uniqueID;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: did fail transaction for AID %@ and pass with unique ID %@", buf, 0x16u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__NPKQuickPaymentSession_contactlessInterfaceSessionDidFailTransaction_forPaymentApplication_paymentPass___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

uint64_t __106__NPKQuickPaymentSession_contactlessInterfaceSessionDidFailTransaction_forPaymentApplication_paymentPass___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 endSessionWhenAuthorizationIsConsumed];

  return [v1 _callbackQueue_invokeDidCompleteForReason:5 withTransactionContext:0 shouldCleanupSession:v2];
}

- (void)contactlessInterfaceSessionDidTimeout:(id)timeout forPaymentApplications:(id)applications paymentPass:(id)pass valueAddedServicePasses:(id)passes
{
  v21 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v9 = [applications pk_createArrayByApplyingBlock:&__block_literal_global_180];
  v10 = pk_Payment_log(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = uniqueID;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Session timed out for AID(s) %@ and pass with unique ID %@", buf, 0x16u);
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __123__NPKQuickPaymentSession_contactlessInterfaceSessionDidTimeout_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke_181;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __123__NPKQuickPaymentSession_contactlessInterfaceSessionDidTimeout_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke_181(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 22) == 1)
  {
    v2 = pk_Payment_log(a1);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v5 = pk_Payment_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Ignoring timeout for service mode (should get persistent card emulation event instead)", buf, 2u);
      }
    }
  }

  else
  {
    v6 = *(v1 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __123__NPKQuickPaymentSession_contactlessInterfaceSessionDidTimeout_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke_182;
    block[3] = &unk_279944F98;
    block[4] = v1;
    dispatch_async(v6, block);
  }
}

uint64_t __123__NPKQuickPaymentSession_contactlessInterfaceSessionDidTimeout_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke_182(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 endSessionWhenAuthorizationIsConsumed];

  return [v1 _callbackQueue_invokeDidCompleteForReason:2 withTransactionContext:0 shouldCleanupSession:v2];
}

- (void)contactlessInterfaceSessionDidFail:(id)fail forPaymentApplications:(id)applications paymentPass:(id)pass valueAddedServicePasses:(id)passes
{
  v21 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v9 = [applications pk_createArrayByApplyingBlock:&__block_literal_global_184];
  v10 = pk_Payment_log(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = uniqueID;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Session failed for AID(s) %@ and pass with unique ID %@", buf, 0x16u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__NPKQuickPaymentSession_contactlessInterfaceSessionDidFail_forPaymentApplications_paymentPass_valueAddedServicePasses___block_invoke_185;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)contactlessInterfaceSessionDidStartTransaction:(id)transaction withContext:(id)context
{
  v5 = pk_Payment_log(self);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Received Start Transaction", buf, 2u);
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NPKQuickPaymentSession_contactlessInterfaceSessionDidStartTransaction_withContext___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __85__NPKQuickPaymentSession_contactlessInterfaceSessionDidStartTransaction_withContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 22) == 1)
  {
    v2 = pk_Payment_log(a1);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v5 = pk_Payment_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: In service mode; ignoring Start Transaction", buf, 2u);
      }
    }
  }

  else
  {
    v6 = *(v1 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__NPKQuickPaymentSession_contactlessInterfaceSessionDidStartTransaction_withContext___block_invoke_186;
    block[3] = &unk_279944F98;
    block[4] = v1;
    dispatch_async(v6, block);
  }
}

void __85__NPKQuickPaymentSession_contactlessInterfaceSessionDidStartTransaction_withContext___block_invoke_186(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidReceiveStartTransaction:*(a1 + 32)];
  }
}

- (void)contactlessInterfaceSession:(id)session didReceive18013Request:(id)request readerAuthInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  infoCopy = info;
  v9 = pk_Payment_log(infoCopy);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v12 = pk_Payment_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = requestCopy;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: did received ISO18013 Requests %@", buf, 0xCu);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__NPKQuickPaymentSession_contactlessInterfaceSession_didReceive18013Request_readerAuthInfo___block_invoke;
  block[3] = &unk_279945880;
  block[4] = self;
  v17 = requestCopy;
  v18 = infoCopy;
  v14 = infoCopy;
  v15 = requestCopy;
  dispatch_async(callbackQueue, block);
}

void __92__NPKQuickPaymentSession_contactlessInterfaceSession_didReceive18013Request_readerAuthInfo___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 48));
    [v4 paymentSession:a1[4] didReceive18013Request:a1[5] readerAuthInfo:a1[6]];
  }
}

- (void)contactlessInterfaceSessionDidReceiveActivityTimeout:(id)timeout
{
  v4 = pk_Payment_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Received activity timeout", buf, 2u);
    }
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__NPKQuickPaymentSession_contactlessInterfaceSessionDidReceiveActivityTimeout___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __79__NPKQuickPaymentSession_contactlessInterfaceSessionDidReceiveActivityTimeout___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 22) == 1)
  {
    v2 = pk_Payment_log(a1);
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v5 = pk_Payment_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: In service mode; ignoring activity timeout", buf, 2u);
      }
    }
  }

  else
  {
    v6 = *(v1 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__NPKQuickPaymentSession_contactlessInterfaceSessionDidReceiveActivityTimeout___block_invoke_191;
    block[3] = &unk_279944F98;
    block[4] = v1;
    dispatch_async(v6, block);
  }
}

void __79__NPKQuickPaymentSession_contactlessInterfaceSessionDidReceiveActivityTimeout___block_invoke_191(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidReceiveActivityTimeout:*(a1 + 32)];
  }
}

- (void)contactlessInterfaceSession:(id)session didFinishTransactionWithContext:(id)context
{
  v30[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = pk_Payment_log(contextCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_Payment_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Received Finish Transaction", &v28, 2u);
    }
  }

  transitHistory = [contextCopy transitHistory];
  if (transitHistory)
  {
    transaction = [contextCopy transaction];

    if (!transaction)
    {
      v22 = pk_Payment_log(v12);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

      if (v23)
      {
        v19 = pk_Payment_log(v24);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v28) = 0;
          v20 = "Notice: Handling truth-on-card transit transaction";
          goto LABEL_19;
        }

LABEL_20:
      }

LABEL_21:
      [(NPKQuickPaymentSession *)self _handleTransactionCompleteWithContext:contextCopy, v28];
      goto LABEL_22;
    }
  }

  paymentPass = [contextCopy paymentPass];
  isTransitPass = [paymentPass isTransitPass];

  v16 = pk_Payment_log(v15);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (isTransitPass)
  {
    if (v17)
    {
      v19 = pk_Payment_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        v20 = "Notice: Handling transit transaction";
LABEL_19:
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, v20, &v28, 2u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v17)
  {
    v21 = pk_Payment_log(v18);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Handling conventional transaction", &v28, 2u);
    }
  }

  [(NPKQuickPaymentSession *)self _handleConventionalTransactionWithContext:contextCopy];
LABEL_22:
  v25 = MEMORY[0x277D37D28];
  v26 = *MEMORY[0x277D38538];
  v29 = *MEMORY[0x277D384A0];
  v30[0] = *MEMORY[0x277D384A8];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [v25 subject:v26 sendEvent:v27];
}

- (void)contactlessInterfaceSessionDidReceiveUntrustedTerminal:(id)terminal
{
  v22 = *MEMORY[0x277D85DE8];
  terminalCopy = terminal;
  v5 = pk_Payment_log(terminalCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = terminalCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: contactlessInterfaceSessionDidReceiveUntrustedTerminal:%@", buf, 0xCu);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__NPKQuickPaymentSession_contactlessInterfaceSessionDidReceiveUntrustedTerminal___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
  v10 = MEMORY[0x277D37D28];
  v11 = *MEMORY[0x277D38538];
  v19[0] = *MEMORY[0x277D38558];
  v19[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v13 = *MEMORY[0x277D383C0];
  v17[0] = *MEMORY[0x277D383D8];
  v17[1] = v13;
  v14 = *MEMORY[0x277D383D0];
  v18[0] = *MEMORY[0x277D38458];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v10 subjects:v12 sendEvent:v15];
}

- (void)contactlessInterfaceSessionDidReceiveTerminalError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = pk_Payment_log(errorCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = errorCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: contactlessInterfaceSessionDidReceiveTerminalError: %@", buf, 0xCu);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NPKQuickPaymentSession_contactlessInterfaceSessionDidReceiveTerminalError___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)contactlessInterfaceSessionDidTerminate:(id)terminate withErrorCode:(unint64_t)code
{
  v17 = *MEMORY[0x277D85DE8];
  terminateCopy = terminate;
  v7 = pk_Payment_log(terminateCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_Payment_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = terminateCopy;
      v15 = 2048;
      codeCopy = code;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: contactlessInterfaceSessionDidTerminate:%@ with error code:%lu", buf, 0x16u);
    }
  }

  callbackQueue = self->_callbackQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__NPKQuickPaymentSession_contactlessInterfaceSessionDidTerminate_withErrorCode___block_invoke;
  v12[3] = &unk_279945830;
  v12[4] = self;
  v12[5] = code;
  dispatch_async(callbackQueue, v12);
}

uint64_t __80__NPKQuickPaymentSession_contactlessInterfaceSessionDidTerminate_withErrorCode___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = 5;
  if (v2 == 3)
  {
    v4 = 9;
  }

  if (v2 == 2)
  {
    v5 = 8;
  }

  else
  {
    v5 = v4;
  }

  return [v1 _callbackQueue_invokeDidCompleteForReason:v5 withTransactionContext:0 shouldCleanupSession:1];
}

- (void)contactlessInterfaceSessionDidTerminate:(id)terminate
{
  v13 = *MEMORY[0x277D85DE8];
  terminateCopy = terminate;
  v5 = pk_Payment_log(terminateCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_Payment_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = terminateCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: contactlessInterfaceSessionDidTerminate:%@", buf, 0xCu);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__NPKQuickPaymentSession_contactlessInterfaceSessionDidTerminate___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)contactlessInterfaceSession:(id)session didEndPersistentCardEmulationWithContexts:(id)contexts
{
  v15 = *MEMORY[0x277D85DE8];
  contextsCopy = contexts;
  sessionCopy = session;
  v8 = pk_Payment_log(sessionCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v11 = pk_Payment_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = contextsCopy;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: ended persistent card emulation with contexts: %@", &v13, 0xCu);
    }
  }

  firstObject = [contextsCopy firstObject];
  [(NPKQuickPaymentSession *)self contactlessInterfaceSession:sessionCopy didFinishTransactionWithContext:firstObject];
}

- (void)contactlessInterfaceSessionDidSelectPayment:(id)payment
{
  v4 = pk_Payment_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: selected payment", buf, 2u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__NPKQuickPaymentSession_contactlessInterfaceSessionDidSelectPayment___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

void __70__NPKQuickPaymentSession_contactlessInterfaceSessionDidSelectPayment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidSelectPayment:*(a1 + 32)];
  }
}

- (void)contactlessInterfaceSessionDidSelectValueAddedService:(id)service
{
  v4 = pk_Payment_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: selected VAS", buf, 2u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NPKQuickPaymentSession_contactlessInterfaceSessionDidSelectValueAddedService___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

void __80__NPKQuickPaymentSession_contactlessInterfaceSessionDidSelectValueAddedService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidSelectValueAddedService:*(a1 + 32)];
  }
}

- (void)contactlessInterfaceSessionDidFailDeferredAuthorization:(id)authorization
{
  v4 = pk_Payment_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: failed deferred authorization", buf, 2u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NPKQuickPaymentSession_contactlessInterfaceSessionDidFailDeferredAuthorization___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)contactlessInterfaceSessionHasPendingServerRequest:(id)request
{
  v4 = pk_Payment_log(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: has pending server request, sending timeout event", buf, 2u);
    }
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NPKQuickPaymentSession_contactlessInterfaceSessionHasPendingServerRequest___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(callbackQueue, block);
}

- (void)stsSession:(id)session didDetectField:(BOOL)field
{
  if (field)
  {
    [(NPKQuickPaymentSession *)self _handleFieldEntry];
  }

  else
  {
    [(NPKQuickPaymentSession *)self _handleFieldExit];
  }
}

- (void)_handleTransactionCompleteWithContext:(id)context
{
  contextCopy = context;
  callbackQueue = self->_callbackQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__NPKQuickPaymentSession__handleTransactionCompleteWithContext___block_invoke;
  v7[3] = &unk_2799454E0;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(callbackQueue, v7);
}

uint64_t __64__NPKQuickPaymentSession__handleTransactionCompleteWithContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 endSessionWhenAuthorizationIsConsumed];

  return [v1 _callbackQueue_invokeDidCompleteForReason:3 withTransactionContext:v2 shouldCleanupSession:v3];
}

- (void)_handleConventionalTransactionWithContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  paymentApplication = [contextCopy paymentApplication];
  paymentPass = [contextCopy paymentPass];
  transaction = [contextCopy transaction];
  valueAddedServicePasses = [contextCopy valueAddedServicePasses];
  valueAddedServiceTransactions = [contextCopy valueAddedServiceTransactions];
  v10 = pk_Payment_log(valueAddedServiceTransactions);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v13 = pk_Payment_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      applicationIdentifier = [paymentApplication applicationIdentifier];
      uniqueID = [paymentPass uniqueID];
      *buf = 138413570;
      *&buf[4] = transaction;
      *&buf[12] = 2112;
      *&buf[14] = applicationIdentifier;
      *&buf[22] = 2112;
      v24 = uniqueID;
      v25 = 2112;
      v26 = valueAddedServiceTransactions;
      v27 = 2112;
      v28 = valueAddedServicePasses;
      v29 = 1024;
      success = [contextCopy success];
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Transaction: %@ AID: %@ UniqueID: %@ valueAddedServiceTransactions: %@ valueAddedServicePasses: %@ success: %u", buf, 0x3Au);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v24) = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __68__NPKQuickPaymentSession__handleConventionalTransactionWithContext___block_invoke;
  v22[3] = &unk_279946E28;
  v22[4] = buf;
  [valueAddedServiceTransactions enumerateObjectsUsingBlock:v22];
  paymentPass2 = [contextCopy paymentPass];
  if ([paymentPass2 isAccessPass])
  {
    success2 = [contextCopy success];
  }

  else
  {
    success2 = 0;
  }

  if (transaction || ((*(*&buf[8] + 24) | success2) & 1) != 0)
  {
    kdebug_trace();
    [(NPKQuickPaymentSession *)self _handleTransactionCompleteWithContext:contextCopy];
  }

  else
  {
    kdebug_trace();
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__NPKQuickPaymentSession__handleConventionalTransactionWithContext___block_invoke_2;
    block[3] = &unk_279945880;
    block[4] = self;
    v20 = valueAddedServiceTransactions;
    v21 = valueAddedServicePasses;
    dispatch_async(callbackQueue, block);
  }

  _Block_object_dispose(buf, 8);
}

void *__68__NPKQuickPaymentSession__handleConventionalTransactionWithContext___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 didSucceed];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void __68__NPKQuickPaymentSession__handleConventionalTransactionWithContext___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [v4 currentPass];
    [v6 paymentSession:v4 didFailTransactionForPass:v5 withValueAddedServiceTransactions:*(a1 + 40) forValueAddedServicePasses:*(a1 + 48)];
  }
}

- (void)_loyaltyEngineConfigurationChanged:(id)changed
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NPKQuickPaymentSession__loyaltyEngineConfigurationChanged___block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __61__NPKQuickPaymentSession__loyaltyEngineConfigurationChanged___block_invoke(uint64_t a1)
{
  v2 = pk_Payment_log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v5 = pk_Payment_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: Loyalty engine configuration changed", v7, 2u);
    }
  }

  return [*(a1 + 32) _internalQueue_updateSessionWithCurrentPassAndLoyaltyState];
}

- (void)_callbackQueue_invokeDidCompleteForReason:(unint64_t)reason withTransactionContext:(id)context shouldCleanupSession:(BOOL)session
{
  sessionCopy = session;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_callbackQueue);
  if (reason - 1 <= 0xA && ((0x79Fu >> (reason - 1)) & 1) != 0)
  {
    kdebug_trace();
  }

  if (![(NPKQuickPaymentSession *)self _invokeStateUpdateForReason:reason shouldCleanupSession:sessionCopy])
  {
    delegate = [(NPKQuickPaymentSession *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate2 = [(NPKQuickPaymentSession *)self delegate];
      [delegate2 paymentSession:self didCompleteTransactionForReason:reason withTransactionContext:contextCopy shouldCleanupSession:sessionCopy];
    }
  }
}

- (BOOL)_invokeStateUpdateForReason:(unint64_t)reason shouldCleanupSession:(BOOL)session
{
  if (session)
  {
    return 0;
  }

  switch(reason)
  {
    case 2uLL:
      delegate = [(NPKQuickPaymentSession *)self delegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        delegate2 = [(NPKQuickPaymentSession *)self delegate];
        [delegate2 paymentSessionDidReceiveAuthorizationTimeout:self];
        goto LABEL_12;
      }

      break;
    case 4uLL:
      delegate3 = [(NPKQuickPaymentSession *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        delegate2 = [(NPKQuickPaymentSession *)self delegate];
        [delegate2 paymentSessionDidReceiveActivationError:self];
        goto LABEL_12;
      }

      break;
    case 5uLL:
      delegate4 = [(NPKQuickPaymentSession *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        delegate2 = [(NPKQuickPaymentSession *)self delegate];
        [delegate2 paymentSessionDidReceiveTransactionError:self];
LABEL_12:

        return 1;
      }

      break;
  }

  return 0;
}

- (void)_internalQueue_invokeDeactivationCompletionBlocks
{
  dispatch_assert_queue_V2(self->_internalQueue);
  deactivationCompletionBlocks = [(NPKQuickPaymentSession *)self deactivationCompletionBlocks];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__NPKQuickPaymentSession__internalQueue_invokeDeactivationCompletionBlocks__block_invoke;
  v5[3] = &unk_279947900;
  v5[4] = self;
  [deactivationCompletionBlocks enumerateObjectsUsingBlock:v5];

  deactivationCompletionBlocks2 = [(NPKQuickPaymentSession *)self deactivationCompletionBlocks];
  [deactivationCompletionBlocks2 removeAllObjects];
}

- (void)_handleFieldEntry
{
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__NPKQuickPaymentSession__handleFieldEntry__block_invoke;
  v4[3] = &unk_279945030;
  objc_copyWeak(&v5, &location);
  dispatch_async(internalQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __43__NPKQuickPaymentSession__handleFieldEntry__block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained inField];
    if ((v3 & 1) == 0)
    {
      v4 = pk_Payment_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

      if (v5)
      {
        v7 = pk_Payment_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: did enter field", buf, 2u);
        }
      }

      *(v2 + 23) = 1;
      v8 = *(v2 + 10);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__NPKQuickPaymentSession__handleFieldEntry__block_invoke_212;
      block[3] = &unk_279944F98;
      block[4] = v2;
      dispatch_async(v8, block);
      v9 = [v2 currentPass];
      if ([v9 style] == 8)
      {
        goto LABEL_79;
      }

      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v10 setObject:*MEMORY[0x277D38438] forKeyedSubscript:*MEMORY[0x277D383D8]];
      v11 = v10;
      v12 = v9;
      v13 = v12;
      if (!v12 || !v11)
      {
LABEL_78:

        v55 = MEMORY[0x277D37D28];
        v63 = *MEMORY[0x277D38558];
        v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
        [v55 subjects:v56 sendEvent:v11];

LABEL_79:
        goto LABEL_80;
      }

      v14 = [v12 passType];
      v15 = MEMORY[0x277D38530];
      if ((v14 + 1) >= 3)
      {
        v16 = *MEMORY[0x277D38530];
      }

      else
      {
        v16 = off_2799479A0[v14 + 1];
      }

      [v11 setObject:v16 forKeyedSubscript:*MEMORY[0x277D384F0]];

      v17 = [v13 style];
      v18 = [v13 secureElementPass];
      v19 = [v18 isIdentityPass];

      if (v19)
      {
        v20 = @"identity";
      }

      else if (v17 < 0xE && ((0x27FFu >> v17) & 1) != 0)
      {
        v20 = off_2799479B8[v17];
      }

      else
      {
        v20 = *v15;
      }

      [v11 setObject:v20 forKeyedSubscript:*MEMORY[0x277D384E8]];

      v21 = [v13 nfcPayload];
      v22 = PKAnalyticsReportSwitchToggleResultValue();
      [v11 setObject:v22 forKeyedSubscript:*MEMORY[0x277D384C8]];

      v23 = v13;
      if ([v23 passType] == 1)
      {
        v24 = [v23 secureElementPass];
        v25 = [v24 cardType];
        if (v25 <= 4)
        {
          v22 = **(&unk_279947A28 + v25);
        }
      }

      else
      {
        v22 = @"other";
      }

      [v11 setObject:v22 forKeyedSubscript:*MEMORY[0x277D384E0]];
      v26 = [v23 secureElementPass];
      if ([v26 isIdentityPass])
      {
        v27 = [v26 identityType];
        if (v27 <= 2)
        {
          if (v27 == 1)
          {
            v28 = MEMORY[0x277D383A0];
            goto LABEL_45;
          }

          if (v27 == 2)
          {
            v28 = MEMORY[0x277D38518];
            goto LABEL_45;
          }
        }

        else
        {
          switch(v27)
          {
            case 3:
              goto LABEL_29;
            case 4:
              v28 = MEMORY[0x277D38488];
              goto LABEL_45;
            case 5:
LABEL_29:
              v28 = MEMORY[0x277D384F8];
LABEL_45:
              v33 = *v28;
              goto LABEL_46;
          }
        }

LABEL_38:
        v33 = *v15;
LABEL_46:
        v32 = v33;
        goto LABEL_59;
      }

      if (![v26 isAccessPass])
      {
        goto LABEL_38;
      }

      v29 = [v26 accessType];
      v30 = [v26 accessReportingType];
      v31 = v30;
      if (v29 <= 2)
      {
        switch(v29)
        {
          case 0:
            v34 = @"general";
            if (v30)
            {
              v34 = v30;
            }

            goto LABEL_54;
          case 1:
            v32 = @"hospitality";
            goto LABEL_58;
          case 2:
            v32 = @"corporate";
LABEL_58:

LABEL_59:
            [v11 setObject:v32 forKeyedSubscript:*MEMORY[0x277D384D8]];

            v35 = [v23 secureElementPass];
            v36 = [v35 devicePaymentApplications];
            [v36 count];

            v37 = PKAnalyticsReportSwitchToggleResultValue();

            [v11 setObject:v37 forKeyedSubscript:*MEMORY[0x277D38398]];
            v38 = [v23 secureElementPass];
            v39 = *v15;
            v40 = [v38 organizationName];
            if ([v40 length])
            {
              v41 = [v38 cardType];
              if (v41 <= 4 && ((1 << v41) & 0x16) != 0)
              {
                v42 = v40;

                v39 = v42;
              }
            }

            [v11 setObject:v39 forKeyedSubscript:*MEMORY[0x277D38490]];
            v43 = [v23 secureElementPass];
            v44 = v43;
            if (v43)
            {
              v57 = v13;
              v45 = [v43 devicePaymentApplications];
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v46 = v45;
              v47 = [v46 countByEnumeratingWithState:&v59 objects:buf count:16];
              if (v47)
              {
                v48 = v47;
                v49 = 0;
                v50 = *v60;
                while (2)
                {
                  for (i = 0; i != v48; ++i)
                  {
                    if (*v60 != v50)
                    {
                      objc_enumerationMutation(v46);
                    }

                    v52 = *(*(&v59 + 1) + 8 * i);
                    if (v49 && v49 != [*(*(&v59 + 1) + 8 * i) paymentType])
                    {

                      v53 = @"multiple";
                      goto LABEL_76;
                    }

                    v49 = [v52 paymentType];
                  }

                  v48 = [v46 countByEnumeratingWithState:&v59 objects:buf count:16];
                  if (v48)
                  {
                    continue;
                  }

                  break;
                }
              }

              v53 = PKPaymentMethodTypeToString();
LABEL_76:

              [v11 setObject:v53 forKeyedSubscript:*MEMORY[0x277D38508]];
              v54 = [v44 issuerCountryCode];
              [v11 setObject:v54 forKeyedSubscript:*MEMORY[0x277D384D0]];

              v13 = v57;
            }

            goto LABEL_78;
        }
      }

      else
      {
        if (v29 <= 4)
        {
          if (v29 == 3)
          {
            v32 = @"singlefamily";
          }

          else
          {
            v32 = @"cars";
          }

          goto LABEL_58;
        }

        if (v29 == 5)
        {
          v32 = @"multifamily";
          goto LABEL_58;
        }

        if (v29 == 6)
        {
          v32 = @"urbanmobility";
          goto LABEL_58;
        }
      }

      v34 = *v15;
LABEL_54:
      v32 = v34;
      goto LABEL_58;
    }
  }

LABEL_80:
}

void __43__NPKQuickPaymentSession__handleFieldEntry__block_invoke_212(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidEnterField:*(a1 + 32)];
  }
}

- (void)_handleFieldExit
{
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__NPKQuickPaymentSession__handleFieldExit__block_invoke;
  v4[3] = &unk_279945030;
  objc_copyWeak(&v5, &location);
  dispatch_async(internalQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__NPKQuickPaymentSession__handleFieldExit__block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained inField];
    if (v3)
    {
      v4 = pk_Payment_log(v3);
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

      if (v5)
      {
        v7 = pk_Payment_log(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Quick payment session: did exit field", buf, 2u);
        }
      }

      *(v2 + 23) = 0;
      v8 = *(v2 + 10);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__NPKQuickPaymentSession__handleFieldExit__block_invoke_216;
      block[3] = &unk_279944F98;
      block[4] = v2;
      dispatch_async(v8, block);
      v9 = [v2 currentPass];
      if ([v9 style] == 8)
      {
        goto LABEL_79;
      }

      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v10 setObject:*MEMORY[0x277D38440] forKeyedSubscript:*MEMORY[0x277D383D8]];
      v11 = v10;
      v12 = v9;
      v13 = v12;
      if (!v12 || !v11)
      {
LABEL_78:

        v55 = MEMORY[0x277D37D28];
        v63 = *MEMORY[0x277D38558];
        v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
        [v55 subjects:v56 sendEvent:v11];

LABEL_79:
        goto LABEL_80;
      }

      v14 = [v12 passType];
      v15 = MEMORY[0x277D38530];
      if ((v14 + 1) >= 3)
      {
        v16 = *MEMORY[0x277D38530];
      }

      else
      {
        v16 = off_2799479A0[v14 + 1];
      }

      [v11 setObject:v16 forKeyedSubscript:*MEMORY[0x277D384F0]];

      v17 = [v13 style];
      v18 = [v13 secureElementPass];
      v19 = [v18 isIdentityPass];

      if (v19)
      {
        v20 = @"identity";
      }

      else if (v17 < 0xE && ((0x27FFu >> v17) & 1) != 0)
      {
        v20 = off_2799479B8[v17];
      }

      else
      {
        v20 = *v15;
      }

      [v11 setObject:v20 forKeyedSubscript:*MEMORY[0x277D384E8]];

      v21 = [v13 nfcPayload];
      v22 = PKAnalyticsReportSwitchToggleResultValue();
      [v11 setObject:v22 forKeyedSubscript:*MEMORY[0x277D384C8]];

      v23 = v13;
      if ([v23 passType] == 1)
      {
        v24 = [v23 secureElementPass];
        v25 = [v24 cardType];
        if (v25 <= 4)
        {
          v22 = **(&unk_279947A28 + v25);
        }
      }

      else
      {
        v22 = @"other";
      }

      [v11 setObject:v22 forKeyedSubscript:*MEMORY[0x277D384E0]];
      v26 = [v23 secureElementPass];
      if ([v26 isIdentityPass])
      {
        v27 = [v26 identityType];
        if (v27 <= 2)
        {
          if (v27 == 1)
          {
            v28 = MEMORY[0x277D383A0];
            goto LABEL_45;
          }

          if (v27 == 2)
          {
            v28 = MEMORY[0x277D38518];
            goto LABEL_45;
          }
        }

        else
        {
          switch(v27)
          {
            case 3:
              goto LABEL_29;
            case 4:
              v28 = MEMORY[0x277D38488];
              goto LABEL_45;
            case 5:
LABEL_29:
              v28 = MEMORY[0x277D384F8];
LABEL_45:
              v33 = *v28;
              goto LABEL_46;
          }
        }

LABEL_38:
        v33 = *v15;
LABEL_46:
        v32 = v33;
        goto LABEL_59;
      }

      if (![v26 isAccessPass])
      {
        goto LABEL_38;
      }

      v29 = [v26 accessType];
      v30 = [v26 accessReportingType];
      v31 = v30;
      if (v29 <= 2)
      {
        switch(v29)
        {
          case 0:
            v34 = @"general";
            if (v30)
            {
              v34 = v30;
            }

            goto LABEL_54;
          case 1:
            v32 = @"hospitality";
            goto LABEL_58;
          case 2:
            v32 = @"corporate";
LABEL_58:

LABEL_59:
            [v11 setObject:v32 forKeyedSubscript:*MEMORY[0x277D384D8]];

            v35 = [v23 secureElementPass];
            v36 = [v35 devicePaymentApplications];
            [v36 count];

            v37 = PKAnalyticsReportSwitchToggleResultValue();

            [v11 setObject:v37 forKeyedSubscript:*MEMORY[0x277D38398]];
            v38 = [v23 secureElementPass];
            v39 = *v15;
            v40 = [v38 organizationName];
            if ([v40 length])
            {
              v41 = [v38 cardType];
              if (v41 <= 4 && ((1 << v41) & 0x16) != 0)
              {
                v42 = v40;

                v39 = v42;
              }
            }

            [v11 setObject:v39 forKeyedSubscript:*MEMORY[0x277D38490]];
            v43 = [v23 secureElementPass];
            v44 = v43;
            if (v43)
            {
              v57 = v13;
              v45 = [v43 devicePaymentApplications];
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v46 = v45;
              v47 = [v46 countByEnumeratingWithState:&v59 objects:buf count:16];
              if (v47)
              {
                v48 = v47;
                v49 = 0;
                v50 = *v60;
                while (2)
                {
                  for (i = 0; i != v48; ++i)
                  {
                    if (*v60 != v50)
                    {
                      objc_enumerationMutation(v46);
                    }

                    v52 = *(*(&v59 + 1) + 8 * i);
                    if (v49 && v49 != [*(*(&v59 + 1) + 8 * i) paymentType])
                    {

                      v53 = @"multiple";
                      goto LABEL_76;
                    }

                    v49 = [v52 paymentType];
                  }

                  v48 = [v46 countByEnumeratingWithState:&v59 objects:buf count:16];
                  if (v48)
                  {
                    continue;
                  }

                  break;
                }
              }

              v53 = PKPaymentMethodTypeToString();
LABEL_76:

              [v11 setObject:v53 forKeyedSubscript:*MEMORY[0x277D38508]];
              v54 = [v44 issuerCountryCode];
              [v11 setObject:v54 forKeyedSubscript:*MEMORY[0x277D384D0]];

              v13 = v57;
            }

            goto LABEL_78;
        }
      }

      else
      {
        if (v29 <= 4)
        {
          if (v29 == 3)
          {
            v32 = @"singlefamily";
          }

          else
          {
            v32 = @"cars";
          }

          goto LABEL_58;
        }

        if (v29 == 5)
        {
          v32 = @"multifamily";
          goto LABEL_58;
        }

        if (v29 == 6)
        {
          v32 = @"urbanmobility";
          goto LABEL_58;
        }
      }

      v34 = *v15;
LABEL_54:
      v32 = v34;
      goto LABEL_58;
    }
  }

LABEL_80:
}

void __42__NPKQuickPaymentSession__handleFieldExit__block_invoke_216(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 paymentSessionDidExitField:*(a1 + 32)];
  }
}

- (NPKQuickPaymentSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end