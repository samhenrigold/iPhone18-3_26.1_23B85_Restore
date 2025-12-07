@interface _DASAssertionArbiter
- ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForPID:(SEL)d success:(int)success;
- (BOOL)areAssertionsValidForActivity:(id)activity;
- (BOOL)doesAuditToken:(id *)token haveEntitlement:(id)entitlement;
- (BOOL)doesPID:(int)d haveEntitlement:(id)entitlement;
- (BOOL)isBackgroundFetchActivity:(id)activity;
- (BOOL)shouldCreateAssertionForActivity:(id)activity;
- (BOOL)shouldTakeGPUAssertionFor:(id)for;
- (_DASAssertionArbiter)initWithDelegate:(id)delegate;
- (_DASAssertionArbiterDelegate)handlerDelegate;
- (id)assertionGroupForActivity:(id)activity targetPID:(int)d;
- (id)assertionsForWebBrowserContinuedProcessingTask:(id)task targetPID:(int)d;
- (id)createAssertionsForActivity:(id)activity targetPID:(int)d;
- (id)createAssertionsForBackgroundFetchActivity:(id)activity targetPID:(int)d;
- (id)createAssertionsForBackgroundTaskActivity:(id)activity targetPID:(int)d;
- (id)createAssertionsForHealthKitActivity:(id)activity targetPID:(int)d;
- (id)createUnmanagedAssertionsForActivity:(id)activity targetPID:(int)d;
- (int)hostPIDForTarget:(int)target;
- (void)assertionGroup:(id)group wasInvalidatedForActivity:(id)activity;
- (void)cleanupForActivity:(id)activity;
@end

@implementation _DASAssertionArbiter

- (_DASAssertionArbiter)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = _DASAssertionArbiter;
  v5 = [(_DASAssertionArbiter *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_handlerDelegate, delegateCopy);
    v7 = +[NSMutableDictionary dictionary];
    assertionGroups = v6->_assertionGroups;
    v6->_assertionGroups = v7;

    v9 = os_log_create("com.apple.duetactivityscheduler", "AssertionArbiter");
    log = v6->_log;
    v6->_log = v9;
  }

  return v6;
}

- (id)createUnmanagedAssertionsForActivity:(id)activity targetPID:(int)d
{
  v4 = *&d;
  activityCopy = activity;
  v7 = [(_DASAssertionArbiter *)self createAssertionsForActivity:activityCopy targetPID:v4];
  v8 = v7;
  if (v7 && objc_msgSend_count(v7))
  {
    v9 = v8;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011E9EC();
    }

    v9 = 0;
  }

  return v9;
}

- (id)assertionGroupForActivity:(id)activity targetPID:(int)d
{
  v4 = *&d;
  activityCopy = activity;
  v7 = [(_DASAssertionArbiter *)self createAssertionsForActivity:activityCopy targetPID:v4];
  if (objc_msgSend_count(v7))
  {
    v8 = [[_DASAssertionGroup alloc] initWithActivity:activityCopy assertions:v7 delegate:self];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_assertionGroups setObject:v8 forKeyedSubscript:activityCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011EA54();
    }

    v8 = 0;
  }

  return v8;
}

- (void)cleanupForActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_assertionGroups objectForKeyedSubscript:activityCopy];
  if (v6)
  {
    log = selfCopy->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Cleaning up assertions for %@", &v8, 0xCu);
    }

    [v6 invalidate];
    [(NSMutableDictionary *)selfCopy->_assertionGroups removeObjectForKey:activityCopy];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)areAssertionsValidForActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_assertionGroups objectForKeyedSubscript:activityCopy];
  isActive = [v6 isActive];

  objc_sync_exit(selfCopy);
  return isActive;
}

- (id)createAssertionsForActivity:(id)activity targetPID:(int)d
{
  v4 = *&d;
  activityCopy = activity;
  if (![(_DASAssertionArbiter *)self shouldCreateAssertionForActivity:activityCopy])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      sub_10011EABC();
    }

LABEL_6:
    v8 = 0;
    goto LABEL_12;
  }

  if (![activityCopy isBackgroundTaskActivity])
  {
    if ([(_DASAssertionArbiter *)self isBackgroundFetchActivity:activityCopy])
    {
      v7 = [(_DASAssertionArbiter *)self createAssertionsForBackgroundFetchActivity:activityCopy targetPID:v4];
      goto LABEL_11;
    }

    launchReason = [activityCopy launchReason];
    v10 = [launchReason isEqualToString:_DASLaunchReasonHealthKit];

    if (v10)
    {
      v7 = [(_DASAssertionArbiter *)self createAssertionsForHealthKitActivity:activityCopy targetPID:v4];
      goto LABEL_11;
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  v7 = [(_DASAssertionArbiter *)self createAssertionsForBackgroundTaskActivity:activityCopy targetPID:v4];
LABEL_11:
  v8 = v7;
LABEL_12:

  return v8;
}

- (BOOL)shouldCreateAssertionForActivity:(id)activity
{
  activityCopy = activity;
  if (([activityCopy isBackgroundTaskActivity] & 1) != 0 || -[_DASAssertionArbiter isBackgroundFetchActivity:](self, "isBackgroundFetchActivity:", activityCopy))
  {
    v5 = 1;
  }

  else
  {
    launchReason = [activityCopy launchReason];
    v5 = [launchReason isEqualToString:_DASLaunchReasonHealthKit];
  }

  return v5;
}

- (BOOL)isBackgroundFetchActivity:(id)activity
{
  activityCopy = activity;
  launchReason = [activityCopy launchReason];
  if ([launchReason isEqualToString:_DASLaunchReasonBackgroundFetch])
  {
    v5 = 1;
  }

  else
  {
    launchReason2 = [activityCopy launchReason];
    if ([launchReason2 isEqualToString:_DASLaunchReasonBackgroundRemoteNotification])
    {
      v5 = 1;
    }

    else
    {
      launchReason3 = [activityCopy launchReason];
      if ([launchReason3 isEqualToString:_DASLaunchReasonNSURLSessionComplete])
      {
        v5 = 1;
      }

      else
      {
        launchReason4 = [activityCopy launchReason];
        v5 = [launchReason4 isEqualToString:_DASLaunchReasonNSURLSessionAuthorizationRequired];
      }
    }
  }

  return v5;
}

- (id)createAssertionsForBackgroundFetchActivity:(id)activity targetPID:(int)d
{
  v4 = *&d;
  activityCopy = activity;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011EB24();
  }

  v7 = [RBSDomainAttribute attributeWithDomain:@"com.apple.dasd" name:@"BackgroundDownload"];
  v8 = [RBSAssertion alloc];
  v9 = [RBSTarget targetWithPid:v4];
  v15 = v7;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v11 = [v8 initWithExplanation:@"com.apple.das.backgroundFetch" target:v9 attributes:v10];

  v12 = [[_DASAssertion alloc] initWithRBSAssertion:v11 forPid:v4];
  v13 = [NSSet setWithObject:v12];

  return v13;
}

- (id)createAssertionsForHealthKitActivity:(id)activity targetPID:(int)d
{
  v4 = *&d;
  activityCopy = activity;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011EB94();
  }

  launchReason = [activityCopy launchReason];
  v8 = [RBSDomainAttribute attributeWithDomain:@"com.apple.dasd" name:@"HealthLaunch"];
  v9 = [RBSAssertion alloc];
  v10 = [RBSTarget targetWithPid:v4];
  v16 = v8;
  v11 = [NSArray arrayWithObjects:&v16 count:1];
  v12 = [v9 initWithExplanation:launchReason target:v10 attributes:v11];

  v13 = [[_DASAssertion alloc] initWithRBSAssertion:v12 forPid:v4];
  v14 = [NSSet setWithObject:v13];

  return v14;
}

- (id)createAssertionsForBackgroundTaskActivity:(id)activity targetPID:(int)d
{
  v4 = *&d;
  activityCopy = activity;
  if (![activityCopy isBackgroundTaskActivity])
  {
    v14 = 0;
    goto LABEL_28;
  }

  v7 = +[NSMutableSet set];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011EC04();
  }

  launchReason = [activityCopy launchReason];
  v9 = [launchReason isEqualToString:_DASLaunchReasonBackgroundRefresh];

  if (v9)
  {
    v10 = [RBSDomainAttribute attributeWithDomain:@"com.apple.dasd" name:@"BGAppRefreshTask"];
    v11 = [RBSAssertion alloc];
    v12 = [RBSTarget targetWithPid:v4];
    v41 = v10;
    v13 = &v41;
LABEL_20:
    v21 = [NSArray arrayWithObjects:v13 count:1];
    v22 = [v11 initWithExplanation:@"com.apple.das.backgroundTasks" target:v12 attributes:v21];

    v23 = [[_DASAssertion alloc] initWithRBSAssertion:v22 forPid:v4];
    [v7 addObject:v23];
    goto LABEL_21;
  }

  launchReason2 = [activityCopy launchReason];
  v16 = [launchReason2 isEqualToString:_DASLaunchReasonBackgroundProcessing];

  if (v16)
  {
    if ([activityCopy isContactTracingBackgroundActivity] && !objc_msgSend(activityCopy, "requiresPlugin"))
    {
      v17 = @"BGProcessingTask-ExposureNotification";
    }

    else if ([activityCopy requiresPlugin])
    {
      v17 = @"BGProcessingTask-Unrestricted";
    }

    else
    {
      v17 = @"BGProcessingTask-Restricted";
    }

    v10 = [RBSDomainAttribute attributeWithDomain:@"com.apple.dasd" name:v17];
    v11 = [RBSAssertion alloc];
    v12 = [RBSTarget targetWithPid:v4];
    v40 = v10;
    v13 = &v40;
    goto LABEL_20;
  }

  launchReason3 = [activityCopy launchReason];
  v19 = [launchReason3 isEqualToString:_DASLaunchReasonHealthResearch];

  if (v19)
  {
    v10 = [RBSDomainAttribute attributeWithDomain:@"com.apple.dasd" name:@"BGProcessingTask-Unrestricted"];
    v11 = [RBSAssertion alloc];
    v12 = [RBSTarget targetWithPid:v4];
    v39 = v10;
    v13 = &v39;
    goto LABEL_20;
  }

  if ([activityCopy isContinuedProcessingTask])
  {
    if ([(_DASAssertionArbiter *)self doesPID:v4 haveEntitlement:@"com.apple.developer.web-browser-engine.networking"])
    {
      v20 = -[_DASAssertionArbiter assertionsForWebBrowserContinuedProcessingTask:targetPID:](self, "assertionsForWebBrowserContinuedProcessingTask:targetPID:", activityCopy, [activityCopy pid]);
      goto LABEL_25;
    }

    v10 = [RBSDomainAttribute attributeWithDomain:@"com.apple.dasd" name:@"BGContinuedProcessingTask"];
    v25 = [RBSAssertion alloc];
    v26 = [RBSTarget targetWithPid:v4];
    v38 = v10;
    v27 = [NSArray arrayWithObjects:&v38 count:1];
    v22 = [v25 initWithExplanation:@"DAS: background Continued Processing task" target:v26 attributes:v27];

    v28 = [[_DASAssertion alloc] initWithRBSAssertion:v22 forPid:v4];
    [v7 addObject:v28];

    if (![(_DASAssertionArbiter *)self shouldTakeGPUAssertionFor:activityCopy])
    {
      goto LABEL_22;
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = activityCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Creating GPU assertion for %@", buf, 0xCu);
    }

    v23 = [RBSDomainAttribute attributeWithDomain:@"com.apple.dasd" name:@"BGContinuedProcessingTask-GPU"];
    v30 = [RBSAssertion alloc];
    v31 = [RBSTarget targetWithPid:v4];
    v35 = v23;
    v32 = [NSArray arrayWithObjects:&v35 count:1];
    v33 = [v30 initWithExplanation:@"DAS: background Continued Processing GPU" target:v31 attributes:v32];

    v34 = [[_DASAssertion alloc] initWithRBSAssertion:v33 forPid:v4];
    [v7 addObject:v34];

LABEL_21:
LABEL_22:
  }

  if (!objc_msgSend_count(v7))
  {
    v14 = 0;
    goto LABEL_27;
  }

  v20 = [v7 copy];
LABEL_25:
  v14 = v20;
LABEL_27:

LABEL_28:

  return v14;
}

- (id)assertionsForWebBrowserContinuedProcessingTask:(id)task targetPID:(int)d
{
  v4 = *&d;
  taskCopy = task;
  if (![(_DASAssertionArbiter *)self doesPID:v4 haveEntitlement:@"com.apple.developer.web-browser-engine.networking"])
  {
    v22 = 0;
    goto LABEL_12;
  }

  v7 = [RBSDomainAttribute attributeWithDomain:@"com.apple.dasd" name:@"ContinuousDownload"];
  v8 = [RBSAssertion alloc];
  launchReason = [taskCopy launchReason];
  v10 = [RBSTarget targetWithPid:v4];
  v25 = v7;
  v11 = [NSArray arrayWithObjects:&v25 count:1];
  v12 = [v8 initWithExplanation:launchReason target:v10 attributes:v11];

  v13 = [[_DASAssertion alloc] initWithRBSAssertion:v12 forPid:v4];
  v14 = [(_DASAssertionArbiter *)self hostPIDForTarget:v4];
  if (!v14)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011ECDC();
    }

    goto LABEL_10;
  }

  v15 = v14;
  if (![(_DASAssertionArbiter *)self doesPID:v14 haveEntitlement:@"com.apple.developer.web-browser"])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011EC74();
    }

LABEL_10:
    v22 = [NSSet setWithObject:v13];
    goto LABEL_11;
  }

  v16 = [RBSDomainAttribute attributeWithDomain:@"com.apple.dasd" name:@"BackgroundDownloadHostJetsamBand"];
  v17 = [RBSAssertion alloc];
  v18 = [RBSTarget targetWithPid:v15];
  v24 = v16;
  v19 = [NSArray arrayWithObjects:&v24 count:1];
  v20 = [v17 initWithExplanation:@"Assertion on networking process host" target:v18 attributes:v19];

  v21 = [[_DASAssertion alloc] initWithRBSAssertion:v20 forPid:v15];
  v22 = [NSSet setWithObjects:v21, v13, 0];

LABEL_11:
LABEL_12:

  return v22;
}

- (BOOL)shouldTakeGPUAssertionFor:(id)for
{
  forCopy = for;
  continuedProcessingWrapper = [forCopy continuedProcessingWrapper];
  resources = [continuedProcessingWrapper resources];

  if ((resources & 1) == 0)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  if (!-[_DASAssertionArbiter doesPID:haveEntitlement:](self, "doesPID:haveEntitlement:", [forCopy pid], @"com.apple.developer.background-tasks.continued-processing.gpu"))
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10011ED50(forCopy, log);
    }

    goto LABEL_9;
  }

  if (!+[_DASDeviceQuery supportsBackgroundGPU])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10011EE20();
    }

    goto LABEL_9;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (BOOL)doesPID:(int)d haveEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  objc_msgSend_auditTokenForPID_success_(self);

  return 0;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForPID:(SEL)d success:(int)success
{
  v6 = *&success;
  WeakRetained = objc_loadWeakRetained(&self->_handlerDelegate);
  v10 = [WeakRetained assertionArbiter:self clientForPID:v6];
  connection = [v10 connection];

  v12 = os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG);
  if (connection)
  {
    if (v12)
    {
      sub_10011EE88();
    }

    *a5 = 1;
    [connection auditToken];
  }

  else
  {
    if (v12)
    {
      sub_10011EEFC();
    }

    v13 = [RBSProcessIdentifier identifierWithPid:v6];
    v18 = 0;
    v14 = [RBSProcessHandle handleForIdentifier:v13 error:&v18];
    v15 = v18;
    v16 = v15;
    if (!v14 || v15)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10011EF70();
      }

      *a5 = 0;
      *retstr->var0 = 0u;
      *&retstr->var0[4] = 0u;
    }

    else
    {
      *a5 = 1;
      [v14 auditToken];
    }
  }

  return result;
}

- (BOOL)doesAuditToken:(id *)token haveEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v7 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    *token.val = 0;
    v10 = SecTaskCopyValueForEntitlement(v8, entitlementCopy, &token);
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10011EFE4();
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    else if (!v10)
    {
      goto LABEL_10;
    }

    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v10 BOOLValue];
LABEL_11:
      v13 = *token.val;
      if (*token.val)
      {
        code = [*token.val code];
        log = self->_log;
        if (code == 3)
        {
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "sectask entitlement check made for not-running process", v17, 2u);
          }
        }

        else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          sub_10011F060();
        }
      }

      CFRelease(v9);

      goto LABEL_19;
    }

LABEL_10:
    bOOLValue = 0;
    goto LABEL_11;
  }

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10011F0C8(v12);
  }

  bOOLValue = 0;
LABEL_19:

  return bOOLValue;
}

- (int)hostPIDForTarget:(int)target
{
  v3 = *&target;
  v5 = [NSNumber numberWithInt:?];
  v13 = 0;
  v6 = [RBSProcessHandle handleForIdentifier:v5 error:&v13];
  v7 = v13;

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    hostProcess = [v6 hostProcess];
    rbs_pid = [hostProcess rbs_pid];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10011F10C(v7, v3, log);
    }

    rbs_pid = 0;
  }

  return rbs_pid;
}

- (void)assertionGroup:(id)group wasInvalidatedForActivity:(id)activity
{
  groupCopy = group;
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_assertionGroups removeObjectForKey:activityCopy];
  objc_sync_exit(selfCopy);
}

- (_DASAssertionArbiterDelegate)handlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_handlerDelegate);

  return WeakRetained;
}

@end