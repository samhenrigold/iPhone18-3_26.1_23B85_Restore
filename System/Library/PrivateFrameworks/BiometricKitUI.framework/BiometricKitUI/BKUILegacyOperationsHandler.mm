@interface BKUILegacyOperationsHandler
+ (id)handlersForEnrollmentConfiguration:(unint64_t)configuration inBuddy:(BOOL)buddy delegate:(id)delegate credential:(id)credential externalizedAuthContext:(id)context;
- (void)advanceEnrollmentState;
- (void)enrollOperation:(id)operation finishedWithEnrollResult:(id)result;
- (void)startEnroll;
@end

@implementation BKUILegacyOperationsHandler

- (void)advanceEnrollmentState
{
  v61 = *MEMORY[0x277D85DE8];
  operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  v4 = MEMORY[0x277CCACA8];
  [(BKUIFaceIDEnrollOperationsHandler *)self bioKitCompletionPercentage];
  v6 = (v5 * 100.0);
  operationsDelegate2 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate2 percentOfPillsCompleted];
  v9 = [v4 stringWithFormat:@"BioKit: %d%%, rings: %d%%", v6, (v8 * 100.0)];
  [operationsDelegate setProgressString:v9];

  operationsDelegate3 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate3 _updateDebugLabel];

  operationsDelegate4 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate4 percentOfPillsCompleted];
  v13 = v12;

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  poseStatus = [(BKUIFaceIDEnrollOperationsHandler *)self poseStatus];
  v15 = [poseStatus countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v52;
    do
    {
      v18 = 0;
      do
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(poseStatus);
        }

        [*(*(&v51 + 1) + 8 * v18++) integerValue];
      }

      while (v16 != v18);
      v16 = [poseStatus countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v16);
  }

  v20 = _BKUILoggingFacility(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    operationsDelegate5 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    state = [operationsDelegate5 state];
    [(BKUIFaceIDEnrollOperationsHandler *)self bioKitCompletionPercentage];
    v24 = (v23 * 100.0);
    operationsDelegate6 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    [operationsDelegate6 percentOfPillsCompleted];
    *buf = 134218752;
    v56 = *&v13;
    v57 = 1024;
    *v58 = state;
    *&v58[4] = 1024;
    *&v58[6] = v24;
    LOWORD(v59[0]) = 1024;
    *(v59 + 2) = (v26 * 100.0);
    _os_log_impl(&dword_241B0A000, v20, OS_LOG_TYPE_DEFAULT, "advanceEnrollmentState evaluate next state for advancement... percentPillsCompleted:%f state:%i BioKit: %d%%, rings: %d%%", buf, 0x1Eu);
  }

  operationsDelegate7 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  state2 = [operationsDelegate7 state];

  if (state2 == 5 && v13 >= 1.0)
  {
    v30 = _BKUILoggingFacility(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241B0A000, v30, OS_LOG_TYPE_DEFAULT, "Finishing 1st phase and continuing moving to 1st scan complete...", buf, 2u);
    }

    operationsDelegate8 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
    [operationsDelegate8 setState:6 animated:1 afterDelay:1.0];
    goto LABEL_15;
  }

  operationsDelegate8 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  if ([operationsDelegate8 state] != 7 || v13 < 1.0)
  {
LABEL_15:

    return;
  }

  [(BKUIFaceIDEnrollOperationsHandler *)self bioKitCompletionPercentage];
  v33 = v32;

  if (v33 >= 1.0)
  {
    v35 = _BKUILoggingFacility(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      [(BKUIFaceIDEnrollOperationsHandler *)self bioKitCompletionPercentage];
      v37 = v36;
      operationsDelegate9 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
      state3 = [operationsDelegate9 state];
      *buf = 138412802;
      v56 = @"Legacy";
      v57 = 2048;
      *v58 = v37;
      *&v58[8] = 1024;
      v59[0] = state3 == 7;
      _os_log_impl(&dword_241B0A000, v35, OS_LOG_TYPE_DEFAULT, "Finishing %@ enroll operation... %f %i", buf, 0x1Cu);
    }

    enrollOperation = [(BKUIFaceIDEnrollOperationsHandler *)self enrollOperation];
    state4 = [enrollOperation state];

    if (state4 != 4)
    {
      v50 = 0;
      v42 = [(BKUIFaceIDEnrollOperationsHandler *)self _completeOperationWithError:&v50];
      operationsDelegate8 = v50;
      v43 = _BKUILoggingFacility(operationsDelegate8);
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
      if (v42)
      {
        if (v44)
        {
          *buf = 138412290;
          v56 = @"Legacy";
          _os_log_impl(&dword_241B0A000, v43, OS_LOG_TYPE_DEFAULT, "%@ enroll operation marked as completed!", buf, 0xCu);
        }

        enrollmentConfiguration = [(BKUIFaceIDEnrollOperationsHandler *)self enrollmentConfiguration];
        operationsDelegate10 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
        operationsDelegate12 = operationsDelegate10;
        if (!enrollmentConfiguration || (v48 = [operationsDelegate10 state], operationsDelegate12, -[BKUIFaceIDEnrollOperationsHandler operationsDelegate](self, "operationsDelegate"), operationsDelegate12 = objc_claimAutoreleasedReturnValue(), v48 == 7))
        {
          [operationsDelegate12 setState:8 animated:1 afterDelay:0.5];
LABEL_34:

          goto LABEL_15;
        }

        operationsDelegate11 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
        [operationsDelegate12 setState:objc_msgSend(operationsDelegate11 animated:"state") + 1 afterDelay:{1, 0.5}];
      }

      else
      {
        if (v44)
        {
          *buf = 138412546;
          v56 = @"Legacy";
          v57 = 2112;
          *v58 = operationsDelegate8;
          _os_log_impl(&dword_241B0A000, v43, OS_LOG_TYPE_DEFAULT, "Failed to complete %@ enroll operation: %@", buf, 0x16u);
        }

        operationsDelegate12 = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
        operationsDelegate11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to complete %@ enroll: %@", @"Legacy", operationsDelegate8];
        [operationsDelegate12 setStatus:operationsDelegate11];
      }

      goto LABEL_34;
    }
  }
}

- (void)enrollOperation:(id)operation finishedWithEnrollResult:(id)result
{
  operationCopy = operation;
  resultCopy = result;
  enrolledIdentity = [resultCopy enrolledIdentity];
  if (!enrolledIdentity)
  {
    [BKUILegacyOperationsHandler enrollOperation:finishedWithEnrollResult:];
  }

  v8 = enrolledIdentity;
  operationsDelegate = [(BKUIFaceIDEnrollOperationsHandler *)self operationsDelegate];
  [operationsDelegate enrollOperation:operationCopy finishedWithIdentity:v8 animateImmediately:0];

  [(BKUIFaceIDEnrollOperationsHandler *)self cleanupEnroll];
}

- (void)startEnroll
{
  [(BKUIFaceIDEnrollOperationsHandler *)self setUserSelectedUseAccessibilityEnrollment:0];

  [(BKUIFaceIDEnrollOperationsHandler *)self startEnrollForEnrollmentType:1 glassesRequirement:0 identity:0 operationStartedActionBlock:0];
}

+ (id)handlersForEnrollmentConfiguration:(unint64_t)configuration inBuddy:(BOOL)buddy delegate:(id)delegate credential:(id)credential externalizedAuthContext:(id)context
{
  buddyCopy = buddy;
  v10 = MEMORY[0x277CBEB18];
  contextCopy = context;
  credentialCopy = credential;
  delegateCopy = delegate;
  array = [v10 array];
  v15 = objc_alloc_init(BKUILegacyOperationsHandler);
  [array addObject:v15];
  [(BKUIFaceIDEnrollOperationsHandler *)v15 setEnrollmentType:1];
  [(BKUIFaceIDEnrollOperationsHandler *)v15 setOperationsDelegate:delegateCopy];

  [(BKUIFaceIDEnrollOperationsHandler *)v15 setInbuddy:buddyCopy];
  [(BKUIFaceIDEnrollOperationsHandler *)v15 setEnrollmentConfiguration:0];
  [(BKUIFaceIDEnrollOperationsHandler *)v15 setCredential:credentialCopy];

  [(BKUIFaceIDEnrollOperationsHandler *)v15 setExternalizedAuthContext:contextCopy];

  return array;
}

@end