@interface BKUIMatchVerifyPearlOperation
- (BKUIFaceIDEnrollOperationsHandler)weakHandler;
- (BKUIMatchVerifyPearlOperation)init;
- (BKUIPearlEnrollOperationsDelegate)operationsDelegate;
- (int)substateForFaceDetectionFeedBack:(int64_t)back;
- (void)cancelMatchOperation;
- (void)matchOperation:(id)operation failedWithReason:(int64_t)reason;
- (void)matchOperation:(id)operation matchedWithResult:(id)result;
- (void)matchOperation:(id)operation providedFeedback:(int64_t)feedback;
- (void)moveEnrollStateToNeedsPositioning:(int)positioning;
- (void)operation:(id)operation faceDetectStateChanged:(id)changed;
- (void)operation:(id)operation stateChanged:(int64_t)changed;
- (void)retryMatchOperation;
- (void)startMatchOperationWithDevice:(id)device identity:(id)identity credential:(id)credential withConfiguration:(unint64_t)configuration matchOperationActionBlock:(id)block;
@end

@implementation BKUIMatchVerifyPearlOperation

- (BKUIMatchVerifyPearlOperation)init
{
  v3.receiver = self;
  v3.super_class = BKUIMatchVerifyPearlOperation;
  result = [(BKUIMatchVerifyPearlOperation *)&v3 init];
  if (result)
  {
    result->_failReason = -314159;
    *&result->_substate = 0;
    result->_lastErrorousSubState = 0;
  }

  return result;
}

- (void)retryMatchOperation
{
  v3 = _BKUILoggingFacility(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_241B0A000, v3, OS_LOG_TYPE_DEFAULT, "_matchOperation retrying match operation", v13, 2u);
  }

  matchOperation = [(BKUIMatchVerifyPearlOperation *)self matchOperation];
  state = [matchOperation state];

  if (state != 4)
  {
    matchOperation2 = [(BKUIMatchVerifyPearlOperation *)self matchOperation];
    [matchOperation2 cancel];
  }

  self->_failReason = -314159;
  self->_lastErrorousSubState = 0;
  self->_substate = 0;
  matchedIdentity = self->_matchedIdentity;
  self->_matchedIdentity = 0;

  device = [(BKUIMatchVerifyPearlOperation *)self device];
  identity = [(BKUIMatchVerifyPearlOperation *)self identity];
  credentialSet = [(BKUIMatchVerifyPearlOperation *)self credentialSet];
  enrollmentConfiguration = [(BKUIMatchVerifyPearlOperation *)self enrollmentConfiguration];
  matchOperationDidMatch = [(BKUIMatchVerifyPearlOperation *)self matchOperationDidMatch];
  [(BKUIMatchVerifyPearlOperation *)self startMatchOperationWithDevice:device identity:identity credential:credentialSet withConfiguration:enrollmentConfiguration matchOperationActionBlock:matchOperationDidMatch];
}

- (void)startMatchOperationWithDevice:(id)device identity:(id)identity credential:(id)credential withConfiguration:(unint64_t)configuration matchOperationActionBlock:(id)block
{
  v61 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  identityCopy = identity;
  credentialCopy = credential;
  v16 = _Block_copy(block);
  matchOperationDidMatch = self->_matchOperationDidMatch;
  self->_matchOperationDidMatch = v16;

  objc_storeStrong(&self->_device, device);
  objc_storeStrong(&self->_credentialSet, credential);
  objc_storeStrong(&self->_identity, identity);
  self->_enrollmentConfiguration = configuration;
  v19 = _BKUILoggingFacility(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v54 = deviceCopy;
    v55 = 2112;
    v56 = identityCopy;
    v57 = 2112;
    v58 = credentialCopy;
    v59 = 2048;
    configurationCopy = configuration;
    _os_log_impl(&dword_241B0A000, v19, OS_LOG_TYPE_DEFAULT, "startMatchOperationWithDevice: device:%@ identity:%@ credentails::%@ config:%lu", buf, 0x2Au);
  }

  v51 = 0;
  v44 = deviceCopy;
  v20 = [deviceCopy identitiesWithError:&v51];
  firstObject = v51;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v23)
  {
    v24 = credentialCopy;
    v25 = identityCopy;
    v26 = 0;
    v27 = *v48;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(v22);
        }

        v26 += [*(*(&v47 + 1) + 8 * i) hasPeriocularEnrollment];
      }

      v23 = [v22 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v23);
    v23 = v26 == 1;
    identityCopy = v25;
    credentialCopy = v24;
  }

  if (firstObject)
  {
    identity = _BKUILoggingFacility(v29);
    if (os_log_type_enabled(identity, OS_LOG_TYPE_ERROR))
    {
      [BKUIMatchVerifyPearlOperation startMatchOperationWithDevice:firstObject identity:identity credential:? withConfiguration:? matchOperationActionBlock:?];
    }

    v31 = v44;
    goto LABEL_15;
  }

  v31 = v44;
  if (configuration == 4)
  {
    if ((([v22 count] > 1) & v23) == 1)
    {
      firstObject = [v22 firstObject];
      if (([firstObject hasPeriocularEnrollment] & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_37;
    }
  }

  else if (configuration == 3 && (([v22 count] > 1) & v23) == 1)
  {
    firstObject = [v22 firstObject];
    if ([firstObject hasPeriocularEnrollment])
    {
LABEL_24:
      lastObject = [v22 lastObject];
LABEL_38:
      identity = self->_identity;
      self->_identity = lastObject;
LABEL_15:

      goto LABEL_16;
    }

LABEL_37:
    lastObject = [v22 firstObject];
    goto LABEL_38;
  }

LABEL_16:
  v46 = 0;
  v32 = [v31 createMatchOperationWithError:&v46];
  v33 = v46;
  matchOperation = self->_matchOperation;
  self->_matchOperation = v32;

  if (v33)
  {
    v36 = _BKUILoggingFacility(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v33;
      _os_log_impl(&dword_241B0A000, v36, OS_LOG_TYPE_DEFAULT, "_matchOperation createMatchOperation Error:%@", buf, 0xCu);
    }
  }

  else
  {
    v38 = self->_matchOperation;
    if (v38)
    {
      [(BKMatchPearlOperation *)v38 setPreAugmentationCheck:1];
      [(BKMatchPearlOperation *)self->_matchOperation setPreAugmentationCheckIdentity:self->_identity];
      [(BKMatchPearlOperation *)self->_matchOperation setPurpose:6];
      [(BKMatchPearlOperation *)self->_matchOperation setCredentialSet:credentialCopy];
      [(BKMatchPearlOperation *)self->_matchOperation setStopOnSuccess:1];
      [(BKMatchPearlOperation *)self->_matchOperation setDelegate:self];
      [(BKMatchPearlOperation *)self->_matchOperation setShouldAutoRetry:1];
      v38 = self->_matchOperation;
    }

    v45 = 0;
    v39 = [(BKMatchPearlOperation *)v38 startWithError:&v45];
    v40 = v45;
    v33 = v40;
    if (v39)
    {
      [(BKUIMatchVerifyPearlOperation *)self setFailReason:-314159];
      goto LABEL_34;
    }

    v41 = _BKUILoggingFacility(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v33;
      _os_log_impl(&dword_241B0A000, v41, OS_LOG_TYPE_DEFAULT, "_matchOperation failed to start with Error:%@", buf, 0xCu);
    }

    [(BKMatchPearlOperation *)self->_matchOperation setDelegate:0];
    [(BKUIMatchVerifyPearlOperation *)self setFailReason:-9999];
  }

  matchOperationDidMatch = [(BKUIMatchVerifyPearlOperation *)self matchOperationDidMatch];

  if (matchOperationDidMatch)
  {
    matchOperationDidMatch2 = [(BKUIMatchVerifyPearlOperation *)self matchOperationDidMatch];
    matchOperationDidMatch2[2](matchOperationDidMatch2, 0);
  }

LABEL_34:
}

- (void)matchOperation:(id)operation matchedWithResult:(id)result
{
  v25 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  feedback = [resultCopy feedback];
  v7 = _BKUILoggingFacility(feedback);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    lastErrorousSubState = self->_lastErrorousSubState;
    substate = self->_substate;
    identity = [resultCopy identity];
    *buf = 138413058;
    v18 = resultCopy;
    v19 = 1024;
    v20 = lastErrorousSubState;
    v21 = 1024;
    v22 = substate;
    v23 = 2112;
    v24 = identity;
    _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "_matchOperation matchedWithResult BKMatchResultInfo:%@ lastSubState:%u converted substate %u identity %@", buf, 0x22u);
  }

  matchOperationDidMatch = [(BKUIMatchVerifyPearlOperation *)self matchOperationDidMatch];

  if (matchOperationDidMatch)
  {
    identity2 = [resultCopy identity];

    if (identity2)
    {
      identity3 = [resultCopy identity];
      [(BKUIMatchVerifyPearlOperation *)self setMatchedIdentity:identity3];
    }

    else
    {
      [(BKUIMatchVerifyPearlOperation *)self setFailReason:1];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__BKUIMatchVerifyPearlOperation_matchOperation_matchedWithResult___block_invoke;
    block[3] = &unk_278D09DA8;
    block[4] = self;
    v16 = feedback;
    v15 = resultCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __66__BKUIMatchVerifyPearlOperation_matchOperation_matchedWithResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) substateForFaceDetectionFeedBack:*(a1 + 48)];
  *(*(a1 + 32) + 12) = *(*(a1 + 32) + 16);
  *(*(a1 + 32) + 16) = v2;
  v3 = *(a1 + 32);
  if (!v3[3] && !v3[4])
  {
    v4 = [*(a1 + 40) identity];

    v3 = *(a1 + 32);
    if (!v4)
    {
      v3[3] = 11;
      *(*(a1 + 32) + 16) = 11;
      v3 = *(a1 + 32);
    }
  }

  v6 = [v3 matchOperationDidMatch];
  v5 = [*(a1 + 40) identity];
  v6[2](v6, v5);
}

- (void)matchOperation:(id)operation failedWithReason:(int64_t)reason
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = _BKUILoggingFacility(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    lastErrorousSubState = self->_lastErrorousSubState;
    v10 = 134218240;
    reasonCopy = reason;
    v12 = 1024;
    v13 = lastErrorousSubState;
    _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "_matchOperation failedWithReason with BKMatchFailReason:%li lastSubState:%i", &v10, 0x12u);
  }

  [(BKMatchPearlOperation *)self->_matchOperation setDelegate:0];
  [(BKUIMatchVerifyPearlOperation *)self setFailReason:reason];
  matchOperationDidMatch = [(BKUIMatchVerifyPearlOperation *)self matchOperationDidMatch];

  if (matchOperationDidMatch)
  {
    matchOperationDidMatch2 = [(BKUIMatchVerifyPearlOperation *)self matchOperationDidMatch];
    matchOperationDidMatch2[2](matchOperationDidMatch2, 0);
  }
}

- (int)substateForFaceDetectionFeedBack:(int64_t)back
{
  if ((back - 2) > 9)
  {
    return 0;
  }

  else
  {
    return dword_241B72960[back - 2];
  }
}

- (void)matchOperation:(id)operation providedFeedback:(int64_t)feedback
{
  operationCopy = operation;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BKUIMatchVerifyPearlOperation_matchOperation_providedFeedback___block_invoke;
  block[3] = &unk_278D09DA8;
  v9 = operationCopy;
  feedbackCopy = feedback;
  block[4] = self;
  v7 = operationCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__BKUIMatchVerifyPearlOperation_matchOperation_providedFeedback___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) failReason] == -314159)
  {
    v2 = [*(a1 + 32) matchedIdentity];

    if (!v2)
    {
      v3 = [*(a1 + 32) substateForFaceDetectionFeedBack:*(a1 + 48)];
      v4 = v3;
      v5 = _BKUILoggingFacility(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v7 = *(a1 + 48);
        v8 = 138412802;
        v9 = v6;
        v10 = 2048;
        v11 = v7;
        v12 = 1024;
        v13 = v4;
        _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "matchOperation providedFeedback with operation:%@ lastSubState:%li converted substate %u", &v8, 0x1Cu);
      }

      *(*(a1 + 32) + 12) = *(*(a1 + 32) + 16);
      *(*(a1 + 32) + 16) = v4;
      if ([*(a1 + 32) substate])
      {
        [*(a1 + 32) moveEnrollStateToNeedsPositioning:{objc_msgSend(*(a1 + 32), "substate")}];
      }
    }
  }
}

- (void)moveEnrollStateToNeedsPositioning:(int)positioning
{
  [(BKUIMatchVerifyPearlOperation *)self setCurrentUIDelegateDisplaySubState:*&positioning];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BKUIMatchVerifyPearlOperation_moveEnrollStateToNeedsPositioning___block_invoke;
  block[3] = &unk_278D09978;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__BKUIMatchVerifyPearlOperation_moveEnrollStateToNeedsPositioning___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateUIAtNeedsPosition];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 operationsDelegate];
    [v4 setSubstate:objc_msgSend(*(a1 + 32) animated:"currentUIDelegateDisplaySubState") afterDelay:{1, 0.0}];

    v9 = [*(a1 + 32) operationsDelegate];
    [v9 refreshEscapeHatchForCurrentState];
  }

  else
  {
    [v3 setDelegateUIAtNeedsPosition:1];
    v5 = [*(a1 + 32) operationsDelegate];
    v6 = [v5 state];

    if (v6 == 6)
    {
      v7 = [*(a1 + 32) operationsDelegate];
      [v7 setState:5 animated:1];
    }

    v8 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__BKUIMatchVerifyPearlOperation_moveEnrollStateToNeedsPositioning___block_invoke_2;
    block[3] = &unk_278D09978;
    block[4] = *(a1 + 32);
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }
}

void __67__BKUIMatchVerifyPearlOperation_moveEnrollStateToNeedsPositioning___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) operationsDelegate];
  [v2 setState:3 animated:1];

  v3 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BKUIMatchVerifyPearlOperation_moveEnrollStateToNeedsPositioning___block_invoke_3;
  block[3] = &unk_278D09978;
  block[4] = *(a1 + 32);
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __67__BKUIMatchVerifyPearlOperation_moveEnrollStateToNeedsPositioning___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) operationsDelegate];
  [v2 setSubstate:objc_msgSend(*(a1 + 32) animated:"currentUIDelegateDisplaySubState") afterDelay:{1, 0.1}];

  v3 = [*(a1 + 32) operationsDelegate];
  [v3 refreshEscapeHatchForCurrentState];
}

- (void)operation:(id)operation faceDetectStateChanged:(id)changed
{
  faceDetected = [changed faceDetected];

  [(BKUIMatchVerifyPearlOperation *)self setFaceDetected:faceDetected];
}

- (void)operation:(id)operation stateChanged:(int64_t)changed
{
  if ([(BKUIMatchVerifyPearlOperation *)self failReason]== -314159)
  {
    matchedIdentity = [(BKUIMatchVerifyPearlOperation *)self matchedIdentity];

    if (changed == 5 && !matchedIdentity && ![(BKUIMatchVerifyPearlOperation *)self faceDetected])
    {
      [(BKUIMatchVerifyPearlOperation *)self moveEnrollStateToNeedsPositioning:0];
      matchOperation = [(BKUIMatchVerifyPearlOperation *)self matchOperation];
      v11 = 0;
      [matchOperation startNewMatchAttemptWithError:&v11];
      v8 = v11;

      if (v8)
      {
        v10 = _BKUILoggingFacility(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BKUIMatchVerifyPearlOperation operation:v8 stateChanged:v10];
        }
      }
    }
  }
}

- (void)cancelMatchOperation
{
  matchOperation = [(BKUIMatchVerifyPearlOperation *)self matchOperation];
  [matchOperation setDelegate:0];

  matchOperation2 = [(BKUIMatchVerifyPearlOperation *)self matchOperation];
  [matchOperation2 cancel];
}

- (BKUIFaceIDEnrollOperationsHandler)weakHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_weakHandler);

  return WeakRetained;
}

- (BKUIPearlEnrollOperationsDelegate)operationsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_operationsDelegate);

  return WeakRetained;
}

- (void)startMatchOperationWithDevice:(uint64_t)a1 identity:(NSObject *)a2 credential:withConfiguration:matchOperationActionBlock:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "unable to fetch identities for user:%@ matching may be unreliable and users may run in to Face ID not available", &v2, 0xCu);
}

- (void)operation:(void *)a1 stateChanged:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_241B0A000, a2, OS_LOG_TYPE_ERROR, "_matchOperation stateChanged == HOLD + !Face ... startNewMatchAttemptWithError errored out :%@", &v4, 0xCu);
}

@end