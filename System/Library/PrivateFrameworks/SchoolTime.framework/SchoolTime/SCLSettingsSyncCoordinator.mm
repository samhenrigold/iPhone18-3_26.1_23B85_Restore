@interface SCLSettingsSyncCoordinator
- (SCLSettingsSyncCoordinator)initWithFileURL:(id)l pairingID:(id)d schedule:(id)schedule queue:(id)queue;
- (SCLSettingsSyncTransport)transport;
- (void)activate;
- (void)applySchedule:(id)schedule;
- (void)beginActivity:(id)activity;
- (void)cancelCommitTimerForStateMachine:(id)machine;
- (void)cancelRetryActivityForStateMachine:(id)machine;
- (void)commitTimerFired;
- (void)didDeliverMessageWithIdentifier:(id)identifier;
- (void)identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)noteSignificantUserInteractionOccured;
- (void)performSyncForStateMachine:(id)machine;
- (void)registerActivityWithCriteria:(id)criteria;
- (void)stateMachine:(id)machine didTransitionFromState:(id)state toState:(id)toState;
- (void)stateMachine:(id)machine scheduleCommitTimerWithInterval:(double)interval;
- (void)stateMachine:(id)machine scheduleRetryWithActivityCriteria:(id)criteria;
@end

@implementation SCLSettingsSyncCoordinator

- (SCLSettingsSyncCoordinator)initWithFileURL:(id)l pairingID:(id)d schedule:(id)schedule queue:(id)queue
{
  lCopy = l;
  dCopy = d;
  scheduleCopy = schedule;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = SCLSettingsSyncCoordinator;
  v14 = [(SCLSettingsSyncCoordinator *)&v26 init];
  if (v14)
  {
    v15 = [lCopy URLByAppendingPathComponent:@"SettingsSyncContext.plist"];
    contextURL = v14->_contextURL;
    v14->_contextURL = v15;

    objc_storeStrong(&v14->_schedule, schedule);
    objc_storeStrong(&v14->_queue, queue);
    v17 = MEMORY[0x277CCACA8];
    uUIDString = [dCopy UUIDString];
    v19 = [v17 stringWithFormat:@"com.apple.schooltimed.settingssync-%@", uUIDString];
    xpcActivityName = v14->_xpcActivityName;
    v14->_xpcActivityName = v19;

    v21 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v14->_contextURL];
    if (v21)
    {
      v22 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v21 error:0];
    }

    else
    {
      v22 = 0;
    }

    v23 = [[SCLSettingsSyncStateMachine alloc] initWithContext:v22];
    stateMachine = v14->_stateMachine;
    v14->_stateMachine = v23;

    [(SCLSettingsSyncStateMachine *)v14->_stateMachine setDelegate:v14];
    [(SCLSettingsSyncCoordinator *)v14 registerActivityWithCriteria:*MEMORY[0x277D86238]];
  }

  return v14;
}

- (void)activate
{
  stateMachine = [(SCLSettingsSyncCoordinator *)self stateMachine];
  [stateMachine activate];
}

- (void)applySchedule:(id)schedule
{
  scheduleCopy = schedule;
  queue = [(SCLSettingsSyncCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [scheduleCopy copy];
  schedule = self->_schedule;
  self->_schedule = v6;

  stateMachine = [(SCLSettingsSyncCoordinator *)self stateMachine];
  [stateMachine settingsDidChange];
}

- (void)noteSignificantUserInteractionOccured
{
  queue = [(SCLSettingsSyncCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  stateMachine = [(SCLSettingsSyncCoordinator *)self stateMachine];
  [stateMachine significantUserInteractionOccurred];
}

- (void)commitTimerFired
{
  queue = [(SCLSettingsSyncCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  timerSource = [(SCLSettingsSyncCoordinator *)self timerSource];
  dispatch_source_cancel(timerSource);

  [(SCLSettingsSyncCoordinator *)self setTimerSource:0];
  stateMachine = [(SCLSettingsSyncCoordinator *)self stateMachine];
  [stateMachine commitSettings];
}

- (void)identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  identifierCopy = identifier;
  stateMachine = [(SCLSettingsSyncCoordinator *)self stateMachine];
  v10 = stateMachine;
  if (successCopy)
  {
    [stateMachine messageDidSend:identifierCopy];
  }

  else
  {
    [stateMachine message:identifierCopy failedWithError:errorCopy];
  }
}

- (void)didDeliverMessageWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stateMachine = [(SCLSettingsSyncCoordinator *)self stateMachine];
  [stateMachine messageWasDelivered:identifierCopy];
}

- (void)beginActivity:(id)activity
{
  v19 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = _os_activity_create(&dword_264829000, "Settings Sync Activity", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = scl_transport_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    xpcActivityName = [(SCLSettingsSyncCoordinator *)self xpcActivityName];
    *buf = 138412290;
    v18 = xpcActivityName;
    _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "Begin sync activity %@", buf, 0xCu);
  }

  v9 = xpc_activity_set_state(activityCopy, 4);
  if (!v9)
  {
    v10 = scl_persistence_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      xpcActivityName2 = [(SCLSettingsSyncCoordinator *)self xpcActivityName];
      [(SCLSettingsSyncCoordinator *)xpcActivityName2 beginActivity:buf, v10];
    }
  }

  queue = [(SCLSettingsSyncCoordinator *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__SCLSettingsSyncCoordinator_beginActivity___block_invoke;
  v14[3] = &unk_279B6C5D8;
  v14[4] = self;
  v15 = activityCopy;
  v13 = activityCopy;
  dispatch_async(queue, v14);

  os_activity_scope_leave(&state);
}

void __44__SCLSettingsSyncCoordinator_beginActivity___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [*(a1 + 32) stateMachine];
  [v2 xpcActivityStarted];

  v3 = xpc_activity_set_state(*(v1 + 8), 5);
  if (!v3)
  {
    v4 = scl_transport_log(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__SCLSettingsSyncCoordinator_beginActivity___block_invoke_cold_1(v1, v4);
    }
  }
}

- (void)stateMachine:(id)machine didTransitionFromState:(id)state toState:(id)toState
{
  v6 = MEMORY[0x277CCAAB0];
  context = [machine context];
  v18 = 0;
  v8 = [v6 archivedDataWithRootObject:context requiringSecureCoding:1 error:&v18];
  v9 = v18;

  if (v9)
  {
    v11 = scl_transport_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [SCLSettingsSyncCoordinator stateMachine:v9 didTransitionFromState:v11 toState:?];
    }
  }

  else
  {
    contextURL = [(SCLSettingsSyncCoordinator *)self contextURL];
    v17 = 0;
    v13 = [v8 writeToURL:contextURL options:0x10000000 error:&v17];
    v9 = v17;

    v15 = scl_transport_log(v14);
    v11 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_264829000, v11, OS_LOG_TYPE_INFO, "Saved state machine context", v16, 2u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [SCLSettingsSyncCoordinator stateMachine:v9 didTransitionFromState:v11 toState:?];
    }
  }
}

- (void)stateMachine:(id)machine scheduleCommitTimerWithInterval:(double)interval
{
  v23 = *MEMORY[0x277D85DE8];
  machineCopy = machine;
  v7 = scl_persistence_log(machineCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "Sync coordinator start timer: %@", buf, 0xCu);
  }

  timerSource = [(SCLSettingsSyncCoordinator *)self timerSource];

  if (timerSource)
  {
    timerSource2 = [(SCLSettingsSyncCoordinator *)self timerSource];
    dispatch_source_cancel(timerSource2);

    [(SCLSettingsSyncCoordinator *)self setTimerSource:0];
  }

  timerSource3 = [(SCLSettingsSyncCoordinator *)self timerSource];
  v12 = timerSource3 == 0;

  if (v12)
  {
    queue = [(SCLSettingsSyncCoordinator *)self queue];
    v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
    [(SCLSettingsSyncCoordinator *)self setTimerSource:v14];
  }

  timerSource4 = [(SCLSettingsSyncCoordinator *)self timerSource];
  v16 = dispatch_walltime(0, (interval * 1000000000.0));
  dispatch_source_set_timer(timerSource4, v16, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);

  objc_initWeak(buf, self);
  timerSource5 = [(SCLSettingsSyncCoordinator *)self timerSource];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __75__SCLSettingsSyncCoordinator_stateMachine_scheduleCommitTimerWithInterval___block_invoke;
  handler[3] = &unk_279B6C3A8;
  objc_copyWeak(&v20, buf);
  dispatch_source_set_event_handler(timerSource5, handler);

  timerSource6 = [(SCLSettingsSyncCoordinator *)self timerSource];
  dispatch_resume(timerSource6);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

void __75__SCLSettingsSyncCoordinator_stateMachine_scheduleCommitTimerWithInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained commitTimerFired];
}

- (void)cancelCommitTimerForStateMachine:(id)machine
{
  v4 = scl_persistence_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "Sync coordinator cancel tiemr", v7, 2u);
  }

  timerSource = [(SCLSettingsSyncCoordinator *)self timerSource];

  if (timerSource)
  {
    timerSource2 = [(SCLSettingsSyncCoordinator *)self timerSource];
    dispatch_source_cancel(timerSource2);
  }
}

- (void)performSyncForStateMachine:(id)machine
{
  v22 = *MEMORY[0x277D85DE8];
  machineCopy = machine;
  v5 = _os_activity_create(&dword_264829000, "Perform Settings Sync", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v7 = scl_persistence_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264829000, v7, OS_LOG_TYPE_DEFAULT, "Sync coordinator perform sync", buf, 2u);
  }

  transport = [(SCLSettingsSyncCoordinator *)self transport];
  schedule = [(SCLSettingsSyncCoordinator *)self schedule];
  v17 = 0;
  v18 = 0;
  v10 = [transport sendSchedule:schedule identifier:&v18 error:&v17];
  v11 = v18;
  v12 = v17;

  if (v10)
  {
    v14 = scl_transport_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_264829000, v14, OS_LOG_TYPE_DEFAULT, "Sent schedule settings with identifier %@", buf, 0xCu);
    }

    stateMachine = [(SCLSettingsSyncCoordinator *)self stateMachine];
    [stateMachine didEnqueueMessage:v11];
  }

  else
  {
    v16 = scl_transport_log(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_264829000, v16, OS_LOG_TYPE_DEFAULT, "Failed to send schedule settings with error: %@", buf, 0xCu);
    }

    stateMachine = [(SCLSettingsSyncCoordinator *)self stateMachine];
    [stateMachine enqueueFailedWithError:v12];
  }

  os_activity_scope_leave(&state);
}

- (void)cancelRetryActivityForStateMachine:(id)machine
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = scl_persistence_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    xpcActivityName = [(SCLSettingsSyncCoordinator *)self xpcActivityName];
    v8 = 138412290;
    v9 = xpcActivityName;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "Sync coordinator cancel retry activity: %@", &v8, 0xCu);
  }

  xpcActivityName2 = [(SCLSettingsSyncCoordinator *)self xpcActivityName];
  v7 = [xpcActivityName2 cStringUsingEncoding:4];

  xpc_activity_unregister(v7);
}

- (void)stateMachine:(id)machine scheduleRetryWithActivityCriteria:(id)criteria
{
  v9 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  v6 = scl_persistence_log(criteriaCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = criteriaCopy;
    _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "Sync coordinator schedule retry activity %@", &v7, 0xCu);
  }

  [(SCLSettingsSyncCoordinator *)self registerActivityWithCriteria:criteriaCopy];
}

- (void)registerActivityWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  xpcActivityName = [(SCLSettingsSyncCoordinator *)self xpcActivityName];
  objc_initWeak(&location, self);
  v6 = [xpcActivityName cStringUsingEncoding:4];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __59__SCLSettingsSyncCoordinator_registerActivityWithCriteria___block_invoke;
  handler[3] = &unk_279B6CAB8;
  v7 = xpcActivityName;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  xpc_activity_register(v6, criteriaCopy, handler);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __59__SCLSettingsSyncCoordinator_registerActivityWithCriteria___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!xpc_activity_get_state(v3))
  {
    v5 = xpc_activity_copy_criteria(v3);
    if (v5)
    {
      goto LABEL_13;
    }

    v6 = scl_transport_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "No existing activity for checkin %@", &v12, 0xCu);
    }

LABEL_12:

    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained beginActivity:v3];
    goto LABEL_13;
  }

  v8 = scl_transport_log(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __59__SCLSettingsSyncCoordinator_registerActivityWithCriteria___block_invoke_cold_1(a1, v8, v9);
  }

  v10 = xpc_activity_set_state(v3, 5);
  if (!v10)
  {
    v6 = scl_transport_log(v10);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__SCLSettingsSyncCoordinator_registerActivityWithCriteria___block_invoke_cold_2(a1, v6, v11);
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (SCLSettingsSyncTransport)transport
{
  WeakRetained = objc_loadWeakRetained(&self->_transport);

  return WeakRetained;
}

- (void)beginActivity:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_1(&dword_264829000, a3, a3, "Failed to move activity %@ to CONTINUE state", a2);
}

void __44__SCLSettingsSyncCoordinator_beginActivity___block_invoke_cold_1(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*a1 xpcActivityName];
  v5 = 138412290;
  v6 = v3;
  OUTLINED_FUNCTION_0_1(&dword_264829000, a2, v4, "Failed to move activity %@ to DONE state", &v5);
}

- (void)stateMachine:(uint64_t)a1 didTransitionFromState:(NSObject *)a2 toState:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_264829000, a2, OS_LOG_TYPE_FAULT, "Could not generate data for state machine context: %@", &v2, 0xCu);
}

- (void)stateMachine:(uint64_t)a1 didTransitionFromState:(NSObject *)a2 toState:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_264829000, a2, OS_LOG_TYPE_FAULT, "Could not save state machine context: %@", &v2, 0xCu);
}

void __59__SCLSettingsSyncCoordinator_registerActivityWithCriteria___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412290;
  v5 = v3;
  OUTLINED_FUNCTION_0_1(&dword_264829000, a2, a3, "Could not start activity %@", &v4);
}

void __59__SCLSettingsSyncCoordinator_registerActivityWithCriteria___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412290;
  v5 = v3;
  OUTLINED_FUNCTION_0_1(&dword_264829000, a2, a3, "Could not end %@", &v4);
}

@end