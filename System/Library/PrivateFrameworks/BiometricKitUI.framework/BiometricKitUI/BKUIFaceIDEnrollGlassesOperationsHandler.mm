@interface BKUIFaceIDEnrollGlassesOperationsHandler
- (BOOL)showAddGlassesButton;
- (void)matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction:(id)action;
@end

@implementation BKUIFaceIDEnrollGlassesOperationsHandler

- (void)matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction:(id)action
{
  actionCopy = action;
  [(BKUIFaceIDEnrollOperationsHandler *)self setMatchUserThenDoSingleEnrollmentCompletion:actionCopy];
  v5 = objc_alloc_init(BKUIMatchVerifyPearlOperation);
  [(BKUIFaceIDEnrollOperationsHandler *)self setMatchOperation:v5];

  operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  matchOperation = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
  [matchOperation setOperationsDelegate:operationsDelegate];

  v20 = 0;
  LOBYTE(matchOperation) = [(BKUIFaceIDEnrollOperationsHandler *)self _matchOperationPreflightCheck:&v20];
  v8 = v20;
  v9 = v8;
  if (matchOperation)
  {
    if ([(BKUIFaceIDEnrollOperationsHandler *)self enrollmentConfiguration]== 4)
    {
      operationsDelegate2 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
      [operationsDelegate2 setState:3 animated:1];
    }

    objc_initWeak(&location, self);
    matchOperation2 = [(BKUIFaceIDEnrollOperationsHandler *)self matchOperation];
    device = [(BKUIFaceIDEnrollOperationsHandler *)self device];
    identity = [(BKUIFaceIDEnrollOperationsHandler *)self identity];
    enrollmentConfiguration = [(BKUIFaceIDEnrollOperationsHandler *)self enrollmentConfiguration];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __121__BKUIFaceIDEnrollGlassesOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke;
    v16[3] = &unk_278D09A10;
    objc_copyWeak(&v18, &location);
    v17 = actionCopy;
    [matchOperation2 startMatchOperationWithDevice:device identity:identity credential:v9 withConfiguration:enrollmentConfiguration matchOperationActionBlock:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v15 = _BKUILoggingFacility(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BKUIFaceIDEnrollGlassesOperationsHandler matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction:];
    }
  }
}

void __121__BKUIFaceIDEnrollGlassesOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!v3)
  {
    v9 = [WeakRetained matchOperation];
    v10 = [v5 matchOperation];
    [v5 matchOperation:v9 failedToMatchWithUserPositionSubstate:objc_msgSend(v10 operationCompleteAction:{"lastErrorousSubState"), *(a1 + 32)}];

LABEL_14:
    goto LABEL_15;
  }

  v6 = [WeakRetained supportsPeriocularEnrollment];
  if ((v6 & 1) == 0)
  {
    v11 = _BKUILoggingFacility(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __121__BKUIFaceIDEnrollGlassesOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke_cold_1();
    }

    v12 = [v5 operationsDelegate];
    v13 = MEMORY[0x277CCA9B8];
    v14 = -4;
    goto LABEL_10;
  }

  v7 = [v3 hasPeriocularEnrollment];
  if ((v7 & 1) == 0)
  {
    v16 = _BKUILoggingFacility(v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __121__BKUIFaceIDEnrollGlassesOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke_cold_2();
    }

    v9 = [v5 matchOperation];
    [v5 matchOperation:v9 failedToMatchWithUserPositionSubstate:11 operationCompleteAction:*(a1 + 32)];
    goto LABEL_14;
  }

  v8 = [v3 canAddPeriocularEnrollment];
  if ((v8 & 1) == 0)
  {
    v17 = _BKUILoggingFacility(v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __121__BKUIFaceIDEnrollGlassesOperationsHandler_matchUserThenDoSingleEnrollmentWithExisitingEnrollmentConfigCompletionAction___block_invoke_cold_3();
    }

    v12 = [v5 operationsDelegate];
    v13 = MEMORY[0x277CCA9B8];
    v14 = -6;
LABEL_10:
    v15 = [v13 errorWithDomain:@"com.apple.biometrickitui.pearl_enroll" code:v14 userInfo:0];
    [v12 endEnrollFlowWithError:v15];

    goto LABEL_15;
  }

  [v5 startEnrollForEnrollmentType:objc_msgSend(v5 glassesRequirement:"enrollmentType") identity:objc_msgSend(v5 operationStartedActionBlock:{"glassesRequirement"), v3, *(a1 + 32)}];
LABEL_15:
}

- (BOOL)showAddGlassesButton
{
  if (![(BKUIFaceIDEnrollOperationsHandler *)self supportsPeriocularEnrollment])
  {
    return 0;
  }

  identity = [(BKUIFaceIDEnrollOperationsHandler *)self identity];
  if ([identity canAddPeriocularEnrollment])
  {
    identity2 = [(BKUIFaceIDEnrollOperationsHandler *)self identity];
    if ([identity2 hasPeriocularEnrollment])
    {
      glassesFound = [(BKUIFaceIDEnrollOperationsHandler *)self glassesFound];
    }

    else
    {
      glassesFound = 0;
    }
  }

  else
  {
    glassesFound = 0;
  }

  return glassesFound;
}

@end