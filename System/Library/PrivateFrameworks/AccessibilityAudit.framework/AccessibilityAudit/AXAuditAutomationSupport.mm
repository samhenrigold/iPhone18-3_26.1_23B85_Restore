@interface AXAuditAutomationSupport
+ (__AXUIElement)createAXElementForAuditIssue:(id)issue;
+ (id)_currentTimestamp;
+ (id)longDescriptionForAuditIssue:(id)issue;
+ (id)sharedManager;
+ (id)shortDescriptionForAuditIssue:(id)issue;
- (AXAuditAutomationDelegate)delegate;
- (AXAuditAutomationSupport)init;
- (BOOL)_initializeAXObserverIfNeeded;
- (id)_setupWarningsFromAuditTypes;
- (id)fetchScreenshot;
- (void)_captureScreenshot;
- (void)_informDelegateOfResults:(id)results error:(id)error;
- (void)_registerForAXNotifications:(BOOL)notifications;
- (void)_runAudit;
- (void)_runNextAuditIfNeeded;
- (void)_screenChangedNotification;
- (void)_screenChangedThrottled;
- (void)_sendResultsToDelegate:(id)delegate;
- (void)_setupAudit;
- (void)_startContinuousAudit;
- (void)auditer:(id)auditer didCompleteWithResults:(id)results;
- (void)setAuditWarningsToIgnore:(id)ignore;
- (void)startAuditWithCompletionBlock:(id)block;
- (void)startContinuousAudit;
- (void)startSingleAudit;
- (void)stopContinuousAudit;
@end

@implementation AXAuditAutomationSupport

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AXAuditAutomationSupport_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_6 != -1)
  {
    dispatch_once(&sharedManager_onceToken_6, block);
  }

  v2 = sharedManager_instance_6;

  return v2;
}

uint64_t __41__AXAuditAutomationSupport_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_instance_6 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)shortDescriptionForAuditIssue:(id)issue
{
  issueCopy = issue;
  v4 = +[AXAuditIssueDescriptionManager sharedManager];
  v5 = [v4 shortTitleForAuditIssue:issueCopy];

  return v5;
}

+ (id)longDescriptionForAuditIssue:(id)issue
{
  issueCopy = issue;
  v4 = +[AXAuditIssueDescriptionManager sharedManager];
  v5 = [v4 longDescriptionForAuditIssue:issueCopy];

  return v5;
}

+ (__AXUIElement)createAXElementForAuditIssue:(id)issue
{
  auditElement = [issue auditElement];
  createAxElementRefForXCTest = [auditElement createAxElementRefForXCTest];

  return createAxElementRefForXCTest;
}

- (AXAuditAutomationSupport)init
{
  v11.receiver = self;
  v11.super_class = AXAuditAutomationSupport;
  v2 = [(AXAuditAutomationSupport *)&v11 init];
  if (v2)
  {
    v3 = +[AXAuditPluginManager sharedManager];
    [v3 loadAuditBundles];

    v4 = dispatch_queue_create("com.apple.axAudit.automation", 0);
    auditQueue = v2->__auditQueue;
    v2->__auditQueue = v4;

    v6 = dispatch_queue_create("com.apple.accessibilityAudit.automation.background", 0);
    backgroudQueue = v2->__backgroudQueue;
    v2->__backgroudQueue = v6;

    v8 = [AXAuditThrottler throttlerWithInterval:v2 target:sel__screenChangedThrottled selector:v2->__backgroudQueue queue:1 alwaysReschedule:1.75];
    screenChangedThrottler = v2->__screenChangedThrottler;
    v2->__screenChangedThrottler = v8;
  }

  return v2;
}

+ (id)_currentTimestamp
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v2 setTimeZone:systemTimeZone];

  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v5 = [v2 stringFromDate:v3];

  return v5;
}

- (void)_setupAudit
{
  v3 = objc_opt_new();
  [(AXAuditAutomationSupport *)self set_auditor:v3];

  _auditor = [(AXAuditAutomationSupport *)self _auditor];
  [_auditor setDelegate:self];

  v5 = +[AXAuditAutomationSupport _currentTimestamp];
  [(AXAuditAutomationSupport *)self set_auditTimestamp:v5];

  targetPid = [(AXAuditAutomationSupport *)self targetPid];
  _auditor2 = [(AXAuditAutomationSupport *)self _auditor];
  [_auditor2 setTargetPid:targetPid];

  v8 = +[AXAuditScreenshotManager sharedManager];
  [v8 clear];
}

- (void)_runAudit
{
  v40 = *MEMORY[0x277D85DE8];
  if ([(AXAuditAutomationSupport *)self targetPid])
  {
    AXAuditCurrentApplications();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v3 = v37 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v35;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        v9 = AXAuditPidForElement(v8);
        if ([(AXAuditAutomationSupport *)self targetPid]== v9)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v10 = v8;

      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_10:
    }
  }

  v10 = [MEMORY[0x277CCA9B8] _axAudit_error:-902 description:{@"Invalid target app %i", -[AXAuditAutomationSupport targetPid](self, "targetPid")}];
  if (v10)
  {
    [(AXAuditAutomationSupport *)self _informDelegateOfResults:0 error:v10];
  }

  else
  {
LABEL_14:
    v27 = v10;
    [(AXAuditAutomationSupport *)self _setupAudit];
    _completionBlock = [(AXAuditAutomationSupport *)self _completionBlock];

    if (_completionBlock)
    {
      v12 = +[AXAuditPluginManager sharedManager];
      _auditQueue = [(AXAuditAutomationSupport *)self _auditQueue];
      _auditor = [(AXAuditAutomationSupport *)self _auditor];
      [_auditor setAuditQueue:_auditQueue];
    }

    v15 = [MEMORY[0x277CBEB58] set];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    auditTypes = [(AXAuditAutomationSupport *)self auditTypes];
    v17 = [auditTypes countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(auditTypes);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          _auditor2 = [(AXAuditAutomationSupport *)self _auditor];
          allSupportedAuditTypes = [_auditor2 allSupportedAuditTypes];
          v24 = [allSupportedAuditTypes containsObject:v21];

          if (v24)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [auditTypes countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v18);
    }

    _auditQueue2 = [(AXAuditAutomationSupport *)self _auditQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__AXAuditAutomationSupport__runAudit__block_invoke;
    block[3] = &unk_278BE2CA8;
    block[4] = self;
    v29 = v15;
    v26 = v15;
    dispatch_async(_auditQueue2, block);

    v10 = v27;
  }
}

void __37__AXAuditAutomationSupport__runAudit__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _captureScreenshot];
  v3 = [*(a1 + 32) _auditor];
  v2 = [*(a1 + 40) allObjects];
  [v3 startWithAuditTypes:v2];
}

- (id)_setupWarningsFromAuditTypes
{
  [(AXAuditAutomationSupport *)self setAuditWarningsToIgnore:0];
  [(AXAuditAutomationSupport *)self setAuditWarningsToCapture:0];
  return 0;
}

- (void)startAuditWithCompletionBlock:(id)block
{
  [(AXAuditAutomationSupport *)self set_completionBlock:block];
  _setupWarningsFromAuditTypes = [(AXAuditAutomationSupport *)self _setupWarningsFromAuditTypes];
  v5 = _setupWarningsFromAuditTypes;
  if (_setupWarningsFromAuditTypes)
  {
    [(AXAuditAutomationSupport *)self _informDelegateOfResults:0 error:_setupWarningsFromAuditTypes];
  }

  else
  {
    [(AXAuditAutomationSupport *)self startSingleAudit];
  }
}

- (void)_informDelegateOfResults:(id)results error:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  errorCopy = error;
  delegate = [(AXAuditAutomationSupport *)self delegate];

  if (delegate)
  {
    delegate2 = [(AXAuditAutomationSupport *)self delegate];
    [delegate2 automationSupport:self didFindResults:resultsCopy success:errorCopy == 0];
  }

  _completionBlock = [(AXAuditAutomationSupport *)self _completionBlock];

  if (_completionBlock)
  {
    v24 = errorCopy;
    v11 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = resultsCopy;
    v12 = resultsCopy;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        v16 = 0;
        do
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v30 + 1) + 8 * v16);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          allIssues = [v17 allIssues];
          v19 = [allIssues countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v27;
            do
            {
              v22 = 0;
              do
              {
                if (*v27 != v21)
                {
                  objc_enumerationMutation(allIssues);
                }

                [v11 addObject:*(*(&v26 + 1) + 8 * v22++)];
              }

              while (v20 != v22);
              v20 = [allIssues countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v20);
          }

          ++v16;
        }

        while (v16 != v14);
        v14 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v14);
    }

    _completionBlock2 = [(AXAuditAutomationSupport *)self _completionBlock];
    errorCopy = v24;
    (_completionBlock2)[2](_completionBlock2, v11, v24);

    [(AXAuditAutomationSupport *)self set_completionBlock:0];
    resultsCopy = v25;
  }
}

- (void)_runNextAuditIfNeeded
{
  if ([(AXAuditAutomationSupport *)self _singleAuditPendingCount]< 1)
  {
    if ([(AXAuditAutomationSupport *)self _runningContinuousAudit])
    {

      [(AXAuditAutomationSupport *)self _startContinuousAudit];
    }
  }

  else
  {

    [(AXAuditAutomationSupport *)self _runAudit];
  }
}

- (void)_startContinuousAudit
{
  if (![(AXAuditAutomationSupport *)self _registeredForNotifications])
  {
    [(AXAuditAutomationSupport *)self _runAudit];

    [(AXAuditAutomationSupport *)self _registerForAXNotifications:1];
  }
}

- (void)startSingleAudit
{
  runningContinuousAudit = [(AXAuditAutomationSupport *)self runningContinuousAudit];
  [(AXAuditAutomationSupport *)self set_singleAuditPendingCount:[(AXAuditAutomationSupport *)self _singleAuditPendingCount]+ 1];
  if (!runningContinuousAudit)
  {

    [(AXAuditAutomationSupport *)self _runNextAuditIfNeeded];
  }
}

- (void)startContinuousAudit
{
  [(AXAuditAutomationSupport *)self set_runningContinuousAudit:1];

  [(AXAuditAutomationSupport *)self _runNextAuditIfNeeded];
}

- (void)stopContinuousAudit
{
  if ([(AXAuditAutomationSupport *)self _runningContinuousAudit])
  {
    [(AXAuditAutomationSupport *)self set_runningContinuousAudit:0];

    [(AXAuditAutomationSupport *)self _stopContinuousAudit];
  }
}

- (void)_captureScreenshot
{
  _auditTimestamp = [(AXAuditAutomationSupport *)self _auditTimestamp];
  v2 = +[AXAuditPluginManager sharedManager];
  platformPlugin = [v2 platformPlugin];
  v4 = [platformPlugin screenshotInfoForTransportWithFrame:{0.0, 0.0, 0.0, 0.0}];

  if (v4)
  {
    v5 = +[AXAuditScreenshotManager sharedManager];
    [v5 addScreenshotWithInfo:v4 timestamp:_auditTimestamp completion:&__block_literal_global_25];
  }
}

- (id)fetchScreenshot
{
  v2 = +[AXAuditPluginManager sharedManager];
  platformPlugin = [v2 platformPlugin];
  v4 = [platformPlugin screenshotInfoForTransportWithFrame:{0.0, 0.0, 0.0, 0.0}];

  return v4;
}

- (void)auditer:(id)auditer didCompleteWithResults:(id)results
{
  resultsCopy = results;
  _completionBlock = [(AXAuditAutomationSupport *)self _completionBlock];

  if (_completionBlock)
  {
    _auditTimestamp = [(AXAuditAutomationSupport *)self _auditTimestamp];
    updateTimestampOfResults(resultsCopy, _auditTimestamp);

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__AXAuditAutomationSupport_auditer_didCompleteWithResults___block_invoke;
    block[3] = &unk_278BE2CD0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [(AXAuditAutomationSupport *)self _sendResultsToDelegate:resultsCopy];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__AXAuditAutomationSupport_auditer_didCompleteWithResults___block_invoke_2;
    v8[3] = &unk_278BE2CA8;
    v8[4] = self;
    v9 = resultsCopy;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

uint64_t __59__AXAuditAutomationSupport_auditer_didCompleteWithResults___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _singleAuditPendingCount];
  if (result >= 1)
  {
    v3 = *(a1 + 32);
    v4 = [v3 _singleAuditPendingCount] - 1;

    return [v3 set_singleAuditPendingCount:v4];
  }

  return result;
}

void __59__AXAuditAutomationSupport_auditer_didCompleteWithResults___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) set_auditor:0];
  if ([*(a1 + 32) _singleAuditPendingCount] > 0 || objc_msgSend(*(a1 + 32), "_runningContinuousAudit"))
  {
    v2 = [*(a1 + 32) delegate];

    if (v2)
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 32) _auditTimestamp];
      updateTimestampOfResults(v3, v4);

      if ([*(a1 + 32) _singleAuditPendingCount] >= 1)
      {
        [*(a1 + 32) set_singleAuditPendingCount:{objc_msgSend(*(a1 + 32), "_singleAuditPendingCount") - 1}];
      }

      [*(a1 + 32) _sendResultsToDelegate:*(a1 + 40)];
      if (([*(a1 + 32) _runningContinuousAudit] & 1) == 0)
      {
        v5 = *(a1 + 32);

        [v5 _runNextAuditIfNeeded];
      }
    }
  }
}

- (void)_sendResultsToDelegate:(id)delegate
{
  v56 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  auditWarningsToCapture = [(AXAuditAutomationSupport *)self auditWarningsToCapture];
  v6 = [auditWarningsToCapture count];

  elementIdentifiersToIgnore = [(AXAuditAutomationSupport *)self elementIdentifiersToIgnore];
  v39 = [elementIdentifiersToIgnore count];
  v40 = v6;

  if (v6 | v39)
  {
    selfCopy = self;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v28 = delegateCopy;
    obj = delegateCopy;
    v31 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (!v31)
    {
      goto LABEL_38;
    }

    v30 = *v50;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v50 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v8;
        v9 = *(*(&v49 + 1) + 8 * v8);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        caseResults = [v9 caseResults];
        v35 = [caseResults countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v35)
        {
          v34 = *v46;
          do
          {
            v10 = 0;
            do
            {
              if (*v46 != v34)
              {
                objc_enumerationMutation(caseResults);
              }

              v36 = *(*(&v45 + 1) + 8 * v10);
              v37 = v10;
              auditIssues = [v36 auditIssues];
              v12 = objc_opt_new();
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v13 = auditIssues;
              v14 = [v13 countByEnumeratingWithState:&v41 objects:v53 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v42;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v42 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v41 + 1) + 8 * i);
                    if (v40)
                    {
                      issueClassification = [*(*(&v41 + 1) + 8 * i) issueClassification];
                      v20 = [MEMORY[0x277CCABB0] numberWithLong:issueClassification];
                      auditWarningsToCapture2 = [(AXAuditAutomationSupport *)selfCopy auditWarningsToCapture];
                      v22 = [auditWarningsToCapture2 containsObject:v20];

                      if (v22)
                      {
                        v23 = v39 == 0;
                      }

                      else
                      {
                        v23 = 1;
                      }

                      if (v23)
                      {
                        if (v22)
                        {
                          goto LABEL_31;
                        }

                        continue;
                      }
                    }

                    else if (!v39)
                    {
                      goto LABEL_31;
                    }

                    auditElement = [v18 auditElement];
                    accessibilityIdentifier = [auditElement accessibilityIdentifier];
                    if (![accessibilityIdentifier length])
                    {

LABEL_31:
                      [v12 addObject:v18];
                      continue;
                    }

                    elementIdentifiersToIgnore2 = [(AXAuditAutomationSupport *)selfCopy elementIdentifiersToIgnore];
                    v27 = [elementIdentifiersToIgnore2 containsObject:accessibilityIdentifier];

                    if ((v27 & 1) == 0)
                    {
                      goto LABEL_31;
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v41 objects:v53 count:16];
                }

                while (v15);
              }

              [v36 setAuditIssues:v12];
              v10 = v37 + 1;
            }

            while (v37 + 1 != v35);
            v35 = [caseResults countByEnumeratingWithState:&v45 objects:v54 count:16];
          }

          while (v35);
        }

        v8 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (!v31)
      {
LABEL_38:

        [(AXAuditAutomationSupport *)selfCopy _informDelegateOfResults:obj error:0];
        delegateCopy = v28;
        goto LABEL_39;
      }
    }
  }

  [(AXAuditAutomationSupport *)self _informDelegateOfResults:delegateCopy error:0];
LABEL_39:
}

- (void)_screenChangedThrottled
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AXAuditAutomationSupport__screenChangedThrottled__block_invoke;
  block[3] = &unk_278BE2CD0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)setAuditWarningsToIgnore:(id)ignore
{
  objc_storeStrong(&self->_auditWarningsToIgnore, ignore);
  ignoreCopy = ignore;
  v6 = +[AXAuditIssueDescriptionManager allAuditIssueClassificationCodes];
  v8 = [v6 mutableCopy];

  [v8 removeObjectsInArray:ignoreCopy];
  v7 = [v8 copy];
  [(AXAuditAutomationSupport *)self setAuditWarningsToCapture:v7];
}

- (void)_screenChangedNotification
{
  _screenChangedThrottler = [(AXAuditAutomationSupport *)self _screenChangedThrottler];
  [_screenChangedThrottler scheduleNow];
}

- (BOOL)_initializeAXObserverIfNeeded
{
  if ([(AXAuditAutomationSupport *)self _axEventObserver])
  {
    goto LABEL_5;
  }

  AXUIElementRegisterSystemWideServerDeathCallback();
  pid = 0;
  AXUIElementGetPid([MEMORY[0x277CE6BB0] systemWideAXUIElement], &pid);
  if (![(AXAuditAutomationSupport *)self _axEventObserver])
  {
    v7 = 0;
    if (AXObserverCreate(pid, _axNotificationHandler, &v7))
    {
      LOBYTE(RunLoopSource) = 0;
      return RunLoopSource;
    }

    [(AXAuditAutomationSupport *)self set_axEventObserver:v7];
  }

  RunLoopSource = AXObserverGetRunLoopSource([(AXAuditAutomationSupport *)self _axEventObserver]);
  if (RunLoopSource)
  {
    v4 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v4, *MEMORY[0x277CBF058]);
LABEL_5:
    LOBYTE(RunLoopSource) = 1;
  }

  return RunLoopSource;
}

- (void)_registerForAXNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v18 = *MEMORY[0x277D85DE8];
  if (notifications)
  {
    [(AXAuditAutomationSupport *)self _initializeAXObserverIfNeeded];
  }

  if ([(AXAuditAutomationSupport *)self _axEventObserver])
  {
    systemWideAXUIElement = [MEMORY[0x277CE6BB0] systemWideAXUIElement];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    _accessibilityNotificationsForContinuousAudit = [(AXAuditAutomationSupport *)self _accessibilityNotificationsForContinuousAudit];
    v7 = [_accessibilityNotificationsForContinuousAudit countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = *v14;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(_accessibilityNotificationsForContinuousAudit);
        }

        intValue = [*(*(&v13 + 1) + 8 * i) intValue];
        _axEventObserver = [(AXAuditAutomationSupport *)self _axEventObserver];
        if (notificationsCopy)
        {
          if (AXObserverAddNotification(_axEventObserver, systemWideAXUIElement, intValue, self))
          {
            continue;
          }
        }

        else if (AXObserverRemoveNotification(_axEventObserver, systemWideAXUIElement, intValue))
        {
          continue;
        }

        [(AXAuditAutomationSupport *)self set_registeredForNotifications:notificationsCopy];
      }

      v8 = [_accessibilityNotificationsForContinuousAudit countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (!v8)
      {
LABEL_16:

        return;
      }
    }
  }
}

- (AXAuditAutomationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end