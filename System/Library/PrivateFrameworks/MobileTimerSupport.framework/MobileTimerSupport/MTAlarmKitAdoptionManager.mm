@interface MTAlarmKitAdoptionManager
- (MTAlarmKitAdoptionManager)init;
- (void)cancelAlarm:(id)alarm;
- (void)countdownAlarm:(id)alarm;
- (void)dismissAlarm:(id)alarm;
- (void)pauseCountdown:(id)countdown;
- (void)resumeCountdown:(id)countdown;
- (void)scheduleAlarm:(id)alarm;
- (void)scheduleTimer:(id)timer;
- (void)unscheduleAll;
@end

@implementation MTAlarmKitAdoptionManager

- (MTAlarmKitAdoptionManager)init
{
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = MTAlarmKitAdoptionManager;
  v2 = [(MTAlarmKitAdoptionManager *)&v7 init];
  if (v2)
  {
    v3 = MTLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v9 = v2;
      _os_log_impl(&dword_22D741000, v3, OS_LOG_TYPE_INFO, "%{public}@ initializing", buf, 0xCu);
    }

    v4 = objc_opt_new();
    manager = v2->_manager;
    v2->_manager = v4;
  }

  return v2;
}

- (void)unscheduleAll
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v3, OS_LOG_TYPE_INFO, "%{public}@ unscheduling all alarms with ⏰ AlarmKit", &v4, 0xCu);
  }

  [(AlarmKitAdoptionManager *)self->_manager unscheduleAllAlarms];
}

- (void)scheduleAlarm:(id)alarm
{
  v10 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = alarmCopy;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ scheduling alarm with ⏰ AlarmKit: %{public}@", &v6, 0x16u);
  }

  [(AlarmKitAdoptionManager *)self->_manager scheduleWithAlarm:alarmCopy];
}

- (void)scheduleTimer:(id)timer
{
  v10 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = timerCopy;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ scheduling timer with ⏰ AlarmKit: %{public}@", &v6, 0x16u);
  }

  [(AlarmKitAdoptionManager *)self->_manager scheduleWithTimer:timerCopy];
}

- (void)countdownAlarm:(id)alarm
{
  v12 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = alarmCopy;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ countdown alarm: %{public}@ with ⏰ AlarmKit", &v8, 0x16u);
  }

  manager = self->_manager;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:alarmCopy];
  [(AlarmKitAdoptionManager *)manager countdownAlarmWithId:v7];
}

- (void)pauseCountdown:(id)countdown
{
  v12 = *MEMORY[0x277D85DE8];
  countdownCopy = countdown;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = countdownCopy;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ pause countdown for alarm: %{public}@ with ⏰ AlarmKit", &v8, 0x16u);
  }

  manager = self->_manager;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:countdownCopy];
  [(AlarmKitAdoptionManager *)manager pauseCountdownWithId:v7];
}

- (void)resumeCountdown:(id)countdown
{
  v12 = *MEMORY[0x277D85DE8];
  countdownCopy = countdown;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = countdownCopy;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ resume countdown for alarm: %{public}@ with ⏰ AlarmKit", &v8, 0x16u);
  }

  manager = self->_manager;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:countdownCopy];
  [(AlarmKitAdoptionManager *)manager resumeCountdownWithId:v7];
}

- (void)dismissAlarm:(id)alarm
{
  v12 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = alarmCopy;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ dismiss alarm: %{public}@ with ⏰ AlarmKit", &v8, 0x16u);
  }

  manager = self->_manager;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:alarmCopy];
  [(AlarmKitAdoptionManager *)manager dismissAlarmWithId:v7];
}

- (void)cancelAlarm:(id)alarm
{
  v12 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = alarmCopy;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_INFO, "%{public}@ cancel alarm: %{public}@ with ⏰ AlarmKit", &v8, 0x16u);
  }

  manager = self->_manager;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:alarmCopy];
  [(AlarmKitAdoptionManager *)manager cancelAlarmWithId:v7];
}

@end