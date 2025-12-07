@interface SOClockAlarmManager
+ (void)warmUp;
- (SOClockAlarmManager)init;
- (SOClockAlarmManager)initWithInstanceContext:(id)context;
- (id)_registeredObservations;
- (id)addAlarm:(id)alarm;
- (id)alarms;
- (id)alarmsIncludingSleepAlarm:(BOOL)alarm;
- (id)dismissAlarmWithIdentifier:(id)identifier;
- (id)removeAlarm:(id)alarm;
- (id)updateAlarm:(id)alarm;
- (void)addHandler:(id)handler forEvent:(int64_t)event;
- (void)checkIn;
- (void)removeHandlerForEvent:(int64_t)event;
@end

@implementation SOClockAlarmManager

- (id)dismissAlarmWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SOClockAlarmManager dismissAlarmWithIdentifier:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) != 0 || (mtAlarmManager = self->_mtAlarmManager) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MTAlarmManager *)mtAlarmManager dismissAlarmWithIdentifier:identifierCopy];
  }

  return v7;
}

- (id)removeAlarm:(id)alarm
{
  v11 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SOClockAlarmManager removeAlarm:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) != 0 || (mtAlarmManager = self->_mtAlarmManager) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MTAlarmManager *)mtAlarmManager removeAlarm:alarmCopy];
  }

  return v7;
}

- (id)updateAlarm:(id)alarm
{
  v11 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SOClockAlarmManager updateAlarm:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) != 0 || (mtAlarmManager = self->_mtAlarmManager) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MTAlarmManager *)mtAlarmManager updateAlarm:alarmCopy];
  }

  return v7;
}

- (id)addAlarm:(id)alarm
{
  v11 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SOClockAlarmManager addAlarm:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) != 0 || (mtAlarmManager = self->_mtAlarmManager) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(MTAlarmManager *)mtAlarmManager addAlarm:alarmCopy];
  }

  return v7;
}

- (id)alarmsIncludingSleepAlarm:(BOOL)alarm
{
  alarmCopy = alarm;
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[SOClockAlarmManager alarmsIncludingSleepAlarm:]";
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  if ([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled])
  {
    mtAlarmManager = 0;
  }

  else
  {
    mtAlarmManager = self->_mtAlarmManager;
    if (mtAlarmManager)
    {
      mtAlarmManager = [mtAlarmManager alarmsIncludingSleepAlarm:alarmCopy];
    }
  }

  return mtAlarmManager;
}

- (id)alarms
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SOClockAlarmManager alarms]";
    _os_log_impl(&dword_26858F000, v3, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  if ([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled])
  {
    mtAlarmManager = 0;
  }

  else
  {
    mtAlarmManager = self->_mtAlarmManager;
    if (mtAlarmManager)
    {
      mtAlarmManager = [mtAlarmManager alarms];
    }
  }

  return mtAlarmManager;
}

- (void)removeHandlerForEvent:(int64_t)event
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = AFClockAlarmManagerEventGetName();
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "[SOClockAlarmManager removeHandlerForEvent:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_26858F000, v5, OS_LOG_TYPE_INFO, "%s event = %@", &v11, 0x16u);
  }

  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) == 0)
  {
    _registeredObservations = [(SOClockAlarmManager *)self _registeredObservations];
    v7 = [_registeredObservations objectForKey:v4];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = defaultCenter;
    if (v7)
    {
      [defaultCenter removeObserver:v7];
      _registeredObservations2 = [(SOClockAlarmManager *)self _registeredObservations];
      [_registeredObservations2 removeObjectForKey:v4];
    }
  }
}

- (void)addHandler:(id)handler forEvent:(int64_t)event
{
  v25 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = AFClockAlarmManagerEventGetName();
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[SOClockAlarmManager addHandler:forEvent:]";
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_26858F000, v8, OS_LOG_TYPE_INFO, "%s event = %@", buf, 0x16u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __43__SOClockAlarmManager_addHandler_forEvent___block_invoke;
  v19[3] = &unk_279C3D690;
  v9 = handlerCopy;
  v20 = v9;
  v10 = MEMORY[0x26D61D070](v19);
  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) == 0)
  {
    _registeredObservations = [(SOClockAlarmManager *)self _registeredObservations];
    v12 = [_registeredObservations objectForKey:v7];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v14 = defaultCenter;
    if (v12)
    {
      [defaultCenter removeObserver:v12];
    }

    if ((event - 1) <= 7)
    {
      v15 = (*off_279C3CF80[event - 1])();
      if (v15)
      {
        v16 = v15;
        v17 = [v14 addObserverForName:v15 object:self->_mtAlarmManager queue:0 usingBlock:v10];
        _registeredObservations2 = [(SOClockAlarmManager *)self _registeredObservations];
        [_registeredObservations2 setObject:v17 forKey:v7];
      }
    }
  }
}

void __43__SOClockAlarmManager_addHandler_forEvent___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *v12 = 136315394;
    *&v12[4] = "[SOClockAlarmManager addHandler:forEvent:]_block_invoke";
    *&v12[12] = 2112;
    *&v12[14] = v3;
    _os_log_impl(&dword_26858F000, v4, OS_LOG_TYPE_INFO, "%s notification = %@", v12, 0x16u);
  }

  v5 = [v3 userInfo];
  v6 = getMTAlarmManagerAlarmsKey();
  v7 = [v5 objectForKey:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    MTAlarmClass = getMTAlarmClass();
    *v12 = MEMORY[0x277D85DD0];
    *&v12[8] = 3221225472;
    *&v12[16] = ___SOClockAlarmManagerGetMTAlarmsFromNotification_block_invoke;
    v13 = &__block_descriptor_40_e24_B32__0__MTAlarm_8Q16_B24lu32l8;
    v14 = MTAlarmClass;
    v9 = [v7 indexesOfObjectsPassingTest:v12];
    v10 = [v7 objectsAtIndexes:v9];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = SOClockAlarmCreateFromMTAlarms(v10);
  (*(*(a1 + 32) + 16))();
}

- (void)checkIn
{
  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) == 0)
  {
    mtAlarmManager = self->_mtAlarmManager;
    if (mtAlarmManager)
    {

      [(MTAlarmManager *)mtAlarmManager checkIn];
    }
  }
}

- (SOClockAlarmManager)initWithInstanceContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = SOClockAlarmManager;
  v5 = [(SOClockAlarmManager *)&v17 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  if (contextCopy)
  {
    defaultContext = contextCopy;
  }

  else
  {
    defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
  }

  instanceContext = v5->_instanceContext;
  v5->_instanceContext = defaultContext;

  v8 = MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[SOClockAlarmManager initWithInstanceContext:]";
    v20 = 2112;
    v21 = contextCopy;
    _os_log_impl(&dword_26858F000, v9, OS_LOG_TYPE_INFO, "%s instanceContext = %@", buf, 0x16u);
  }

  if ([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled])
  {
    goto LABEL_11;
  }

  v10 = objc_alloc_init(getMTAlarmManagerClass());
  mtAlarmManager = v5->_mtAlarmManager;
  v5->_mtAlarmManager = v10;

  v12 = v5->_mtAlarmManager;
  v13 = *v8;
  v14 = *v8;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[SOClockAlarmManager initWithInstanceContext:]";
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_26858F000, v13, OS_LOG_TYPE_INFO, "%s Initialized for MobileTimer (%@)", buf, 0x16u);
    }

LABEL_11:
    v15 = v5;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v19 = "[SOClockAlarmManager initWithInstanceContext:]";
    _os_log_error_impl(&dword_26858F000, v13, OS_LOG_TYPE_ERROR, "%s Unable to get an instance of MTAlarmManager", buf, 0xCu);
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (SOClockAlarmManager)init
{
  defaultContext = [MEMORY[0x277CEF2C8] defaultContext];
  v4 = [(SOClockAlarmManager *)self initWithInstanceContext:defaultContext];

  return v4;
}

- (id)_registeredObservations
{
  registeredObservations = self->_registeredObservations;
  if (!registeredObservations)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_registeredObservations;
    self->_registeredObservations = v4;

    registeredObservations = self->_registeredObservations;
  }

  return registeredObservations;
}

+ (void)warmUp
{
  if (([MEMORY[0x277CEF2A8] isTimerAlarmCoordinationEnabled] & 1) == 0)
  {
    MTAlarmManagerClass = getMTAlarmManagerClass();

    [MTAlarmManagerClass warmUp];
  }
}

@end