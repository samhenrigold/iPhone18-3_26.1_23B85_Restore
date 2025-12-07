@interface SMCMNoMovementMonitor
- (SMCMNoMovementMonitor)init;
- (void)didStateUpdate:(id)update;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)requestLatestStateUpdate;
- (void)setIsMonitoring:(BOOL)monitoring;
@end

@implementation SMCMNoMovementMonitor

- (SMCMNoMovementMonitor)init
{
  v6.receiver = self;
  v6.super_class = SMCMNoMovementMonitor;
  v2 = [(RTNotifier *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_isMonitoring = 0;
    noMovementManager = v2->_noMovementManager;
    v2->_noMovementManager = 0;
  }

  return v3;
}

- (void)setIsMonitoring:(BOOL)monitoring
{
  monitoringCopy = monitoring;
  if ([(SMCMNoMovementMonitor *)self isMonitoring]!= monitoring)
  {
    self->_isMonitoring = monitoringCopy;
    if (monitoringCopy)
    {
      v5 = objc_opt_new();
      [(SMCMNoMovementMonitor *)self setNoMovementManager:v5];

      noMovementManager = [(SMCMNoMovementMonitor *)self noMovementManager];
      [noMovementManager setDelegate:self];
    }

    else
    {
      noMovementManager2 = [(SMCMNoMovementMonitor *)self noMovementManager];
      [noMovementManager2 setDelegate:0];

      [(SMCMNoMovementMonitor *)self setNoMovementManager:0];
    }
  }
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = +[(RTNotification *)SMCMNoMovementStateUpdateNotification];
  v7 = [nameCopy isEqualToString:v6];

  if (v7)
  {
    [(SMCMNoMovementMonitor *)self setIsMonitoring:[(RTNotifier *)self getNumberOfObservers:nameCopy]!= 0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[SMCMNoMovementMonitor internalAddObserver:name:]";
      v11 = 2112;
      v12 = nameCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s,unsupported notification, %@", &v9, 0x16u);
    }
  }

  [(SMCMNoMovementMonitor *)self requestLatestStateUpdate];
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = +[(RTNotification *)SMCMNoMovementStateUpdateNotification];
  v7 = [nameCopy isEqualToString:v6];

  if (v7)
  {
    [(SMCMNoMovementMonitor *)self setIsMonitoring:[(RTNotifier *)self getNumberOfObservers:nameCopy]!= 0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[SMCMNoMovementMonitor internalRemoveObserver:name:]";
      v11 = 2112;
      v12 = nameCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s,unsupported notification, %@", &v9, 0x16u);
    }
  }
}

- (void)requestLatestStateUpdate
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[SMCMNoMovementMonitor requestLatestStateUpdate]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, requesting state update", &v5, 0xCu);
    }
  }

  noMovementManager = [(SMCMNoMovementMonitor *)self noMovementManager];
  [noMovementManager requestLatestStateUpdate];
}

- (void)didStateUpdate:(id)update
{
  updateCopy = update;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SMCMNoMovementMonitor_didStateUpdate___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = updateCopy;
  selfCopy = self;
  v6 = updateCopy;
  dispatch_async(queue, v7);
}

void __40__SMCMNoMovementMonitor_didStateUpdate___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = objc_opt_new();
    v4 = [[SMCMNoMovementStateUpdate alloc] initWithCMNoMovementStateUpdate:*(a1 + 32)];
    [v3 setState:v4];

    [*(a1 + 40) postNotification:v3];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [v3 state];
        v7 = 136315394;
        v8 = "[SMCMNoMovementMonitor didStateUpdate:]_block_invoke";
        v9 = 2112;
        v10 = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, posted notification with state, %@", &v7, 0x16u);
      }
    }
  }
}

@end