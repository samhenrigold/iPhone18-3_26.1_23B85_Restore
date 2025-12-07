@interface FMFScheduler
+ (id)_nextStartOrEndDateFrom:(id)from forSchedules:(id)schedules;
- (FMFScheduler)initWithDelegate:(id)delegate;
- (NSArray)currentSchedules;
- (void)_registerForSignificantTimeChangeNotifications;
- (void)_significantTimeChange:(id)change;
- (void)_updateScheduleTimer;
- (void)scheduleTimerFired;
- (void)setSchedules:(id)schedules;
- (void)setTimer:(id)timer;
@end

@implementation FMFScheduler

- (FMFScheduler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v6 = [(FMFScheduler *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    [(FMFScheduler *)v7 _registerForSignificantTimeChangeNotifications];
  }

  return v7;
}

- (void)setSchedules:(id)schedules
{
  objc_storeStrong(&self->_schedules, schedules);
  delegate = [(FMFScheduler *)self delegate];
  [delegate schedulerCurrentSchedulesDidChange:self];

  [(FMFScheduler *)self _updateScheduleTimer];
}

- (NSArray)currentSchedules
{
  schedules = [(FMFScheduler *)self schedules];
  v3 = [schedules fm_filter:&__block_literal_global_7];

  return v3;
}

uint64_t __32__FMFScheduler_currentSchedules__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  v5 = [v3 isCurrentAt:v4];

  return v5;
}

- (void)scheduleTimerFired
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_Daemon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    v6 = 136315394;
    v7 = "[FMFScheduler scheduleTimerFired]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_24A33F000, v3, OS_LOG_TYPE_DEFAULT, "%s: Schedule timer fired at date %@", &v6, 0x16u);
  }

  delegate = [(FMFScheduler *)self delegate];
  [delegate schedulerCurrentSchedulesDidChange:self];

  [(FMFScheduler *)self _updateScheduleTimer];
}

- (void)_updateScheduleTimer
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  date = [MEMORY[0x277CBEAA8] date];
  schedules = [(FMFScheduler *)self schedules];
  v6 = [v3 _nextStartOrEndDateFrom:date forSchedules:schedules];

  if (v6)
  {
    xpc_set_event();
    v8 = xpc_dictionary_create(0, 0, 0);
    [v6 timeIntervalSinceNow];
    v10 = v9;
    v11 = time(0);
    xpc_dictionary_set_date(v8, "Date", ((ceil(v10) + v11) * 1000000000.0));
    xpc_dictionary_set_BOOL(v8, "UserVisible", 1);
    xpc_set_event();
  }

  v12 = LogCategory_Daemon(v7);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    timer = [(FMFScheduler *)self timer];
    schedules2 = [(FMFScheduler *)self schedules];
    v15 = 136315906;
    v16 = "[FMFScheduler _updateScheduleTimer]";
    v17 = 2112;
    v18 = timer;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = schedules2;
    _os_log_impl(&dword_24A33F000, v12, OS_LOG_TYPE_DEFAULT, "%s: %@ fireDate: %@ schedules: %@", &v15, 0x2Au);
  }
}

+ (id)_nextStartOrEndDateFrom:(id)from forSchedules:(id)schedules
{
  fromCopy = from;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__FMFScheduler__nextStartOrEndDateFrom_forSchedules___block_invoke;
  v10[3] = &unk_278FDE7B8;
  v11 = fromCopy;
  v6 = fromCopy;
  v7 = [schedules fm_map:v10];
  v8 = [FMFSchedule firstDateFromDates:v7 order:-1];

  return v8;
}

- (void)setTimer:(id)timer
{
  timerCopy = timer;
  timer = self->_timer;
  p_timer = &self->_timer;
  timerCopy2 = timer;
  if (timer != timerCopy)
  {
    [(FMXPCTimer *)timerCopy2 invalidate];
    objc_storeStrong(p_timer, timer);
  }

  MEMORY[0x2821F96F8]();
}

- (void)_registerForSignificantTimeChangeNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__significantTimeChange_ name:@"FMFSchedulerSignificantTimeChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__significantTimeChange_ name:*MEMORY[0x277CBE778] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__significantTimeChange_ name:*MEMORY[0x277CBE780] object:0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__FMFScheduler__registerForSignificantTimeChangeNotifications__block_invoke;
  block[3] = &unk_278FDE000;
  block[4] = self;
  if (_registerForSignificantTimeChangeNotifications_onceToken != -1)
  {
    dispatch_once(&_registerForSignificantTimeChangeNotifications_onceToken, block);
  }
}

void __62__FMFScheduler__registerForSignificantTimeChangeNotifications__block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _significantTimeChange, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_significantTimeChange:(id)change
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateScheduleTimer object:0];

  [(FMFScheduler *)self performSelector:sel__updateScheduleTimer withObject:0 afterDelay:0.2];
}

@end