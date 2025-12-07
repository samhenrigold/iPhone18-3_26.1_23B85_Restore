@interface EDRemindMeNotificationController
+ (OS_os_log)log;
- (EDRemindMeNotificationController)initWithHookRegistry:(id)registry messagePersistence:(id)persistence alarmDateProvider:(id)provider eventDelegate:(id)delegate alarmScheduler:(id)scheduler;
- (EDRemindMeNotificationController)initWithHookRegistry:(id)registry messagePersistence:(id)persistence alarmScheduler:(id)scheduler;
- (EDRemindMeNotificationControllerEventDelegate)eventDelegate;
- (id)_fetchMessagesToNotifyWithStartDate:(id)date endDate:(id)endDate;
- (id)addRemindMeObserver:(id)observer;
- (id)nextAlarmDate;
- (void)_alarmFired;
- (void)_notify:(id)_notify;
- (void)_updateAlarmUpdatedMessages:(id)messages readLaterDate:(id)date startDate:(id)startDate changeIsRemote:(BOOL)remote;
- (void)controller:(id)controller scheduleAlarmForMessage:(id)message date:(id)date;
- (void)performDelayedTasks;
- (void)persistenceDidChangeReadLaterDate:(id)date messages:(id)messages changeIsRemote:(BOOL)remote generationWindow:(id)window;
- (void)removeRemindMeObserver:(id)observer;
- (void)resetRemindMeAlarmIfNeeded;
- (void)setNextAlarmDate:(uint64_t)date;
- (void)test_tearDown;
- (void)test_waitForUpdates;
@end

@implementation EDRemindMeNotificationController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__EDRemindMeNotificationController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_81 != -1)
  {
    dispatch_once(&log_onceToken_81, block);
  }

  v2 = log_log_81;

  return v2;
}

void __39__EDRemindMeNotificationController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_81;
  log_log_81 = v1;
}

- (EDRemindMeNotificationController)initWithHookRegistry:(id)registry messagePersistence:(id)persistence alarmScheduler:(id)scheduler
{
  registryCopy = registry;
  persistenceCopy = persistence;
  schedulerCopy = scheduler;
  v11 = objc_alloc_init(DefaultEDRemindMeNotificationControllerAlarmDateProvider);
  v12 = [(EDRemindMeNotificationController *)self initWithHookRegistry:registryCopy messagePersistence:persistenceCopy alarmDateProvider:v11 eventDelegate:self alarmScheduler:schedulerCopy];

  return v12;
}

- (EDRemindMeNotificationController)initWithHookRegistry:(id)registry messagePersistence:(id)persistence alarmDateProvider:(id)provider eventDelegate:(id)delegate alarmScheduler:(id)scheduler
{
  registryCopy = registry;
  persistenceCopy = persistence;
  providerCopy = provider;
  delegateCopy = delegate;
  schedulerCopy = scheduler;
  v39.receiver = self;
  v39.super_class = EDRemindMeNotificationController;
  v18 = [(EDRemindMeNotificationController *)&v39 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_hookRegistry, registry);
    objc_storeStrong(&v19->_messagePersistence, persistence);
    objc_storeStrong(&v19->_alarmDateProvider, provider);
    objc_storeWeak(&v19->_eventDelegate, delegateCopy);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v21 = [objc_alloc(MEMORY[0x1E699B7F0]) initWithObject:weakObjectsHashTable];
    observers = v19->_observers;
    v19->_observers = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.EmailDaemon.EDRemindMeNotificationController.messageScheduler", v23);
    alarmQueue = v19->_alarmQueue;
    v19->_alarmQueue = v24;

    v26 = [objc_alloc(MEMORY[0x1E699B998]) initWithScheduler:schedulerCopy eventName:@"EDRemindMeNotificationController.alarm" eventHandlerQueue:v19->_alarmQueue];
    xpcAlarm = v19->_xpcAlarm;
    v19->_xpcAlarm = v26;

    objc_initWeak(&location, v19);
    v28 = v19->_xpcAlarm;
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __123__EDRemindMeNotificationController_initWithHookRegistry_messagePersistence_alarmDateProvider_eventDelegate_alarmScheduler___block_invoke;
    v36 = &unk_1E8256350;
    objc_copyWeak(&v37, &location);
    [(EFXPCAlarm *)v28 beginReceivingEventsWithHandler:&v33];
    v29 = [EDQueryCreator alloc];
    v30 = [(EDQueryCreator *)v29 initWithQueryType:*MEMORY[0x1E699A958], v33, v34, v35, v36];
    readLaterQueryCreator = v19->_readLaterQueryCreator;
    v19->_readLaterQueryCreator = v30;

    [registryCopy registerMessageChangeHookResponder:v19];
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v19;
}

void __123__EDRemindMeNotificationController_initWithHookRegistry_messagePersistence_alarmDateProvider_eventDelegate_alarmScheduler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _alarmFired];
}

- (void)test_waitForUpdates
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDRemindMeNotificationController.m" lineNumber:110 description:{@"%s can only be called from unit tests", "-[EDRemindMeNotificationController test_waitForUpdates]"}];
  }

  alarmQueue = self->_alarmQueue;

  dispatch_sync(alarmQueue, &__block_literal_global_67);
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDRemindMeNotificationController.m" lineNumber:116 description:{@"%s can only be called from unit tests", "-[EDRemindMeNotificationController test_tearDown]"}];
  }

  [(EFXPCAlarm *)self->_xpcAlarm invalidate];
  v4 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
  alarmQueue = self->_alarmQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__EDRemindMeNotificationController_test_tearDown__block_invoke;
  block[3] = &unk_1E8250260;
  v6 = v4;
  v11 = v6;
  dispatch_async(alarmQueue, block);
  while (([v6 tryLockWhenCondition:1] & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.001];
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop runUntilDate:v7];

    [MEMORY[0x1E696AF00] sleepUntilDate:v7];
  }

  [v6 unlock];
}

- (id)addRemindMeObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__EDRemindMeNotificationController_addRemindMeObserver___block_invoke;
  v15[3] = &unk_1E8256378;
  v6 = observerCopy;
  v16 = v6;
  [(EFLocked *)observers performWhileLocked:v15];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v7 = MEMORY[0x1E699B7F8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__EDRemindMeNotificationController_addRemindMeObserver___block_invoke_2;
  v10[3] = &unk_1E8255050;
  objc_copyWeak(&v11, &location);
  objc_copyWeak(&v12, &from);
  v8 = [v7 tokenWithCancelationBlock:v10];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v8;
}

void __56__EDRemindMeNotificationController_addRemindMeObserver___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      [v4 removeRemindMeObserver:v3];
    }

    WeakRetained = v4;
  }
}

- (void)removeRemindMeObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__EDRemindMeNotificationController_removeRemindMeObserver___block_invoke;
  v7[3] = &unk_1E8256378;
  v8 = observerCopy;
  v6 = observerCopy;
  [(EFLocked *)observers performWhileLocked:v7];
}

- (void)setNextAlarmDate:(uint64_t)date
{
  v3 = a2;
  if (date)
  {
    [*(date + 24) setNextDate:v3];
  }
}

- (void)performDelayedTasks
{
  alarmQueue = self->_alarmQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__EDRemindMeNotificationController_performDelayedTasks__block_invoke;
  v3[3] = &unk_1E8250A90;
  v3[4] = self;
  v3[5] = a2;
  dispatch_async(alarmQueue, v3);
}

void __55__EDRemindMeNotificationController_performDelayedTasks__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(EDRemindMeNotificationController *)*(a1 + 32) nextAlarmDate];
  v3 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 40));
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v2;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ nextAlarmDate:%{public}@", &v7, 0x16u);
  }

  if (!v2 || ([MEMORY[0x1E695DF00] now], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v2, "ef_isEarlierThanDate:", v5), v5, v6))
  {
    [*(a1 + 32) _updateAlarmStartDate:0];
  }
}

- (void)_updateAlarmUpdatedMessages:(id)messages readLaterDate:(id)date startDate:(id)startDate changeIsRemote:(BOOL)remote
{
  remoteCopy = remote;
  v54 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dateCopy = date;
  startDateCopy = startDate;
  dispatch_assert_queue_V2(self->_alarmQueue);
  if (!startDateCopy)
  {
    nextAlarmDate = [(EDRemindMeNotificationController *)&self->super.isa nextAlarmDate];
    v16 = nextAlarmDate;
    if (nextAlarmDate)
    {
      startDateCopy = nextAlarmDate;
    }

    else
    {
      v17 = [MEMORY[0x1E695DF00] now];
      startDateCopy = [v17 ec_integerDate];
    }
  }

  aSelector = a2;
  v18 = self->_readLaterQueryCreator;
  v19 = [(EDQueryCreator *)v18 queryWithStartDate:startDateCopy endDate:0];

  v20 = self->_messagePersistence;
  v21 = [(EDMessagePersistence *)v20 persistedMessagesMatchingQuery:v19 limit:1];

  v22 = [messagesCopy count];
  if (!dateCopy && v22)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __103__EDRemindMeNotificationController__updateAlarmUpdatedMessages_readLaterDate_startDate_changeIsRemote___block_invoke;
    v40 = &unk_1E8251360;
    v41 = messagesCopy;
    v23 = [v21 ef_filter:{&v37, aSelector}];

    v21 = v23;
  }

  if ([v21 count])
  {
    firstObject = [v21 firstObject];
    readLater = [firstObject readLater];
    date = [readLater date];

    if (!remoteCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    date = 0;
    if (!remoteCopy)
    {
      goto LABEL_14;
    }
  }

  firstObject = [MEMORY[0x1E695DF00] now];
  if (![dateCopy ef_isLaterThanDate:firstObject])
  {
LABEL_27:

    goto LABEL_28;
  }

LABEL_14:
  v26 = [messagesCopy count];
  if (dateCopy)
  {
    v27 = v26 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = !v27;
  if (remoteCopy)
  {

    if ((v28 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (!v28)
  {
    goto LABEL_28;
  }

  if (!date || [dateCopy ef_isEarlierThanDate:date])
  {
    v29 = messagesCopy;

    firstObject = date;
    v21 = v29;
    date = dateCopy;
    goto LABEL_27;
  }

LABEL_28:
  v30 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = NSStringFromSelector(aSelectora);
    v32 = [messagesCopy count];
    *buf = 138544642;
    v43 = v31;
    v44 = 2048;
    v45 = v32;
    v46 = 2114;
    v47 = dateCopy;
    v48 = 2114;
    v49 = startDateCopy;
    v50 = 1024;
    v51 = remoteCopy;
    v52 = 2114;
    v53 = date;
    _os_log_impl(&dword_1C61EF000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ updatedMessages:%lu readLaterDate:%{public}@ startDate:%{public}@ changeIsRemote:%{BOOL}d firstMessageReadLaterDate:%{public}@", buf, 0x3Au);
  }

  eventDelegate = [(EDRemindMeNotificationController *)self eventDelegate];
  if (date)
  {
    firstObject2 = [v21 firstObject];
  }

  else
  {
    firstObject2 = 0;
  }

  [eventDelegate controller:self scheduleAlarmForMessage:firstObject2 date:date];
  [(EDRemindMeNotificationController *)self setNextAlarmDate:date];
}

uint64_t __80__EDRemindMeNotificationController__fetchMessagesToNotifyWithStartDate_endDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "globalMessageID")}];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "globalMessageID")}];
  v8 = [v6 compare:v7];

  return v8;
}

- (void)_alarmFired
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_alarmQueue);
  nextAlarmDate = [(EDRemindMeNotificationController *)&self->super.isa nextAlarmDate];
  v5 = [MEMORY[0x1E695DF00] now];
  ec_integerDate = [v5 ec_integerDate];

  if ([ec_integerDate ef_isLaterThanDate:nextAlarmDate])
  {
    ec_integerDate2 = ec_integerDate;
  }

  else
  {
    v8 = [nextAlarmDate dateByAddingTimeInterval:1.0];
    ec_integerDate2 = [v8 ec_integerDate];

    v9 = +[EDRemindMeNotificationController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138543618;
      v26 = v10;
      v27 = 2114;
      v28 = ec_integerDate2;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ update endDate to %{public}@ so it's after startDate", buf, 0x16u);
    }
  }

  v11 = [(EDRemindMeNotificationController *)self _fetchMessagesToNotifyWithStartDate:nextAlarmDate endDate:ec_integerDate2];
  v12 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    nextAlarmDate2 = [(EDRemindMeNotificationController *)&self->super.isa nextAlarmDate];
    v15 = [v11 count];
    *buf = 138543874;
    v26 = v13;
    v27 = 2114;
    v28 = nextAlarmDate2;
    v29 = 2048;
    v30 = v15;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ nextAlarmDate:%{public}@ messages to notify:%lu", buf, 0x20u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v17)
  {
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [(EDRemindMeNotificationController *)self _notify:*(*(&v20 + 1) + 8 * v19++), v20];
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }

  [(EDRemindMeNotificationController *)self _updateAlarmStartDate:ec_integerDate2];
}

- (void)_notify:(id)_notify
{
  v16 = *MEMORY[0x1E69E9840];
  _notifyCopy = _notify;
  dispatch_assert_queue_V2(self->_alarmQueue);
  observers = [(EDRemindMeNotificationController *)self observers];
  allObjects = [observers allObjects];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10++) controller:self messageTimerFired:{_notifyCopy, v11}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)resetRemindMeAlarmIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    alarmDateProvider = self->_alarmDateProvider;
  }

  else
  {
    alarmDateProvider = 0;
  }

  v4 = alarmDateProvider;
  nextDate = [(EDRemindMeNotificationControllerAlarmDateProvider *)v4 nextDate];

  v6 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = nextDate;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Next alarm date from DefaultEDRemindMeNotificationControllerAlarmDateProvider: %{public}@.", &v9, 0xCu);
  }

  if (nextDate)
  {
    v7 = +[EDRemindMeNotificationController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = nextDate;
      _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_DEFAULT, "Reset remind me later next alarm to %{public}@.", &v9, 0xCu);
    }

    xpcAlarm = [(EDRemindMeNotificationController *)self xpcAlarm];
    [xpcAlarm setNextFireDate:nextDate isUserVisible:1];
  }
}

- (void)controller:(id)controller scheduleAlarmForMessage:(id)message date:(id)date
{
  v19 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dateCopy = date;
  v10 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v13 = 138543874;
    v14 = v11;
    v15 = 2114;
    v16 = dateCopy;
    v17 = 2048;
    globalMessageID = [messageCopy globalMessageID];
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ date:%{public}@ message.globalMessageID:%lld", &v13, 0x20u);
  }

  xpcAlarm = [(EDRemindMeNotificationController *)self xpcAlarm];
  [xpcAlarm setNextFireDate:dateCopy isUserVisible:1];
}

- (void)persistenceDidChangeReadLaterDate:(id)date messages:(id)messages changeIsRemote:(BOOL)remote generationWindow:(id)window
{
  remoteCopy = remote;
  v27 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  messagesCopy = messages;
  v12 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138543874;
    v22 = v13;
    v23 = 1024;
    v24 = remoteCopy;
    v25 = 2114;
    v26 = dateCopy;
    _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ changeIsRemote:%{BOOL}d readLaterDate:%{public}@", buf, 0x1Cu);
  }

  alarmQueue = self->_alarmQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __111__EDRemindMeNotificationController_persistenceDidChangeReadLaterDate_messages_changeIsRemote_generationWindow___block_invoke;
  v17[3] = &unk_1E8255940;
  v17[4] = self;
  v18 = dateCopy;
  v19 = messagesCopy;
  v20 = remoteCopy;
  v15 = messagesCopy;
  v16 = dateCopy;
  dispatch_async(alarmQueue, v17);
}

- (EDRemindMeNotificationControllerEventDelegate)eventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_eventDelegate);

  return WeakRetained;
}

- (id)nextAlarmDate
{
  if (self)
  {
    self = [self[3] nextDate];
    v1 = vars8;
  }

  return self;
}

- (id)_fetchMessagesToNotifyWithStartDate:(id)date endDate:(id)endDate
{
  v23 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  if (self)
  {
    readLaterQueryCreator = self->_readLaterQueryCreator;
  }

  else
  {
    readLaterQueryCreator = 0;
  }

  v10 = [(EDQueryCreator *)readLaterQueryCreator queryWithStartDate:dateCopy endDate:endDateCopy];
  v11 = +[EDRemindMeNotificationController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    v17 = 138543874;
    v18 = v12;
    v19 = 2114;
    v20 = dateCopy;
    v21 = 2114;
    v22 = endDateCopy;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ startDate:%{public}@ endDate:%{public}@", &v17, 0x20u);
  }

  if (self)
  {
    messagePersistence = self->_messagePersistence;
  }

  else
  {
    messagePersistence = 0;
  }

  v14 = [(EDMessagePersistence *)messagePersistence persistedMessagesMatchingQuery:v10 limit:0x7FFFFFFFFFFFFFFFLL];
  v15 = [v14 ef_uniquifyWithComparator:&__block_literal_global_87_1];

  return v15;
}

void __111__EDRemindMeNotificationController_persistenceDidChangeReadLaterDate_messages_changeIsRemote_generationWindow___block_invoke(uint64_t a1)
{
  v2 = [(EDRemindMeNotificationController *)*(a1 + 32) nextAlarmDate];
  if (!v2 || !*(a1 + 40) || ([v2 isEqualToDate:?] & 1) == 0)
  {
    [*(a1 + 32) _updateAlarmUpdatedMessages:*(a1 + 48) readLaterDate:*(a1 + 40) startDate:0 changeIsRemote:*(a1 + 56)];
  }
}

@end