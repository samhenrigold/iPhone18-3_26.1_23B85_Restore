@interface HKMHSettingsManager
- (BOOL)endOfDayNotificationsEnabled;
- (BOOL)hasAnyMentalHealthNotificationsEnabled;
- (BOOL)hasAnyStateOfMindReminderEnabled;
- (BOOL)hasEverEnabledAStateOfMindReminderNotification;
- (BOOL)middayNotificationsEnabled;
- (BOOL)periodicPromptedAssessmentNotificationsEnabled;
- (HKMHSettingsManager)init;
- (HKMHSettingsManager)initWithUserDefaults:(id)defaults;
- (NSArray)customReminderSchedule;
- (id)periodicPromptedAssessmentNotificationTimeOfDay;
- (void)_notificationSettingsDidUpdate;
- (void)_setTestDefaults:(id)defaults;
- (void)_startObservingDefaults;
- (void)_stopObservingAllDefaults;
- (void)customReminderSchedule;
- (void)dealloc;
- (void)endOfDayNotificationsEnabled;
- (void)middayNotificationsEnabled;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)onboardToPregnancyRecommendedSettings;
- (void)periodicPromptedAssessmentNotificationTimeOfDay;
- (void)periodicPromptedAssessmentNotificationsEnabled;
- (void)setCustomReminderSchedule:(id)schedule;
- (void)setEndOfDayNotificationsEnabled:(BOOL)enabled;
- (void)setMiddayNotificationsEnabled:(BOOL)enabled;
- (void)setPeriodicPromptedAssessmentNotificationTimeOfDay:(id)day;
- (void)setPeriodicPromptedAssessmentNotificationsEnabled:(BOOL)enabled;
- (void)setReminders:(BOOL)reminders;
@end

@implementation HKMHSettingsManager

- (HKMHSettingsManager)init
{
  hkmh_mentalHealthDefaults = [MEMORY[0x277CBEBD0] hkmh_mentalHealthDefaults];
  v4 = [(HKMHSettingsManager *)self initWithUserDefaults:hkmh_mentalHealthDefaults];

  return v4;
}

- (HKMHSettingsManager)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v14.receiver = self;
  v14.super_class = HKMHSettingsManager;
  v6 = [(HKMHSettingsManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, defaults);
    v8 = objc_alloc(MEMORY[0x277CCD738]);
    v9 = [v8 initWithName:@"HKMHSettingsManagerObservers" loggingCategory:*MEMORY[0x277CCC2F0]];
    observers = v7->_observers;
    v7->_observers = v9;

    v11 = _NotificationSettingKeys();
    allSettingsToObserve = v7->_allSettingsToObserve;
    v7->_allSettingsToObserve = v11;

    [(HKMHSettingsManager *)v7 _startObservingDefaults];
  }

  return v7;
}

- (void)dealloc
{
  [(HKMHSettingsManager *)self _stopObservingAllDefaults];
  v3.receiver = self;
  v3.super_class = HKMHSettingsManager;
  [(HKMHSettingsManager *)&v3 dealloc];
}

- (BOOL)middayNotificationsEnabled
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEBUG))
  {
    [(HKMHSettingsManager *)v3 middayNotificationsEnabled];
  }

  return [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"StateOfMindLoggingReminderNotificationMiddayEnabledKey"];
}

- (void)setMiddayNotificationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = @"NO";
    if (enabledCopy)
    {
      v8 = @"YES";
    }

    *v11 = 138543618;
    *&v11[4] = v7;
    *&v11[12] = 2114;
    *&v11[14] = v8;
    v9 = v7;
    _os_log_impl(&dword_25895E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set emotion logging reminder notifications enabled: %{public}@", v11, 0x16u);
  }

  [(NSUserDefaults *)self->_userDefaults setBool:enabledCopy forKey:@"StateOfMindLoggingReminderNotificationMiddayEnabledKey", *v11, *&v11[8], v12];
  v10 = [MEMORY[0x277CBEB98] setWithObject:@"StateOfMindLoggingReminderNotificationMiddayEnabledKey"];
  HKSynchronizeNanoPreferencesUserDefaults();
}

- (BOOL)endOfDayNotificationsEnabled
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEBUG))
  {
    [(HKMHSettingsManager *)v3 endOfDayNotificationsEnabled];
  }

  return [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"StateOfMindLoggingReminderNotificationEndOfDayEnabledKey"];
}

- (void)setEndOfDayNotificationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = @"NO";
    if (enabledCopy)
    {
      v8 = @"YES";
    }

    *v11 = 138543618;
    *&v11[4] = v7;
    *&v11[12] = 2114;
    *&v11[14] = v8;
    v9 = v7;
    _os_log_impl(&dword_25895E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set emotion logging reminder notifications enabled: %{public}@", v11, 0x16u);
  }

  [(NSUserDefaults *)self->_userDefaults setBool:enabledCopy forKey:@"StateOfMindLoggingReminderNotificationEndOfDayEnabledKey", *v11, *&v11[8], v12];
  v10 = [MEMORY[0x277CBEB98] setWithObject:@"StateOfMindLoggingReminderNotificationEndOfDayEnabledKey"];
  HKSynchronizeNanoPreferencesUserDefaults();
}

- (NSArray)customReminderSchedule
{
  v3 = [(NSUserDefaults *)self->_userDefaults dataForKey:@"StateOfMindLoggingReminderNotificationCustomScheduleKey"];
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v3 error:&v8];
    v5 = v8;
    if (!v4)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC2F0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
      {
        [(HKMHSettingsManager *)v6 customReminderSchedule];
      }
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)setCustomReminderSchedule:(id)schedule
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:schedule requiringSecureCoding:1 error:&v8];
  v5 = v8;
  if (v4)
  {
    [(NSUserDefaults *)self->_userDefaults setObject:v4 forKey:@"StateOfMindLoggingReminderNotificationCustomScheduleKey"];
    v6 = [MEMORY[0x277CBEB98] setWithObject:@"StateOfMindLoggingReminderNotificationCustomScheduleKey"];
    HKSynchronizeNanoPreferencesUserDefaults();
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [(HKMHSettingsManager *)v7 setCustomReminderSchedule:?];
    }
  }
}

- (BOOL)periodicPromptedAssessmentNotificationsEnabled
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEBUG))
  {
    [(HKMHSettingsManager *)v3 periodicPromptedAssessmentNotificationsEnabled];
  }

  return [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"PeriodicPromptedAssessmentNotificationEnabledKey"];
}

- (void)onboardToPregnancyRecommendedSettings
{
  v7 = *MEMORY[0x277D85DE8];
  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *v6 = 138543362;
      *&v6[4] = objc_opt_class();
      v5 = *&v6[4];
      _os_log_impl(&dword_25895E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding to recommended pregnancy settings", v6, 0xCu);
    }
  }

  [(HKMHSettingsManager *)self setPeriodicPromptedAssessmentNotificationsEnabled:1, *v6, *&v6[8]];
}

- (void)setPeriodicPromptedAssessmentNotificationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = @"NO";
    *v10 = 138543874;
    *&v10[4] = v7;
    *&v10[12] = 2114;
    if (enabledCopy)
    {
      v8 = @"YES";
    }

    *&v10[14] = @"PeriodicPromptedAssessmentNotificationEnabledKey";
    *&v10[22] = 2114;
    v11 = v8;
    v9 = v7;
    _os_log_impl(&dword_25895E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set Periodic prompted assessment notifications for key: %{public}@: %{public}@", v10, 0x20u);
  }

  [(NSUserDefaults *)self->_userDefaults setBool:enabledCopy forKey:@"PeriodicPromptedAssessmentNotificationEnabledKey", *v10, *&v10[8], v11];
}

- (id)periodicPromptedAssessmentNotificationTimeOfDay
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleInternalInstall = [mEMORY[0x277CCDD30] isAppleInternalInstall];

  if (isAppleInternalInstall && (v5 = MEMORY[0x277CCAAC8], v6 = objc_opt_class(), -[NSUserDefaults dataForKey:](self->_userDefaults, "dataForKey:", @"PeriodicPromptedAssessmentNotificationTimeOfDayOverride"), v7 = objc_claimAutoreleasedReturnValue(), [v5 unarchivedObjectOfClass:v6 fromData:v7 error:0], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEBUG))
    {
      [(HKMHSettingsManager *)v9 periodicPromptedAssessmentNotificationTimeOfDay];
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v8 setHour:20];
  }

  return v8;
}

- (void)setPeriodicPromptedAssessmentNotificationTimeOfDay:(id)day
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:day requiringSecureCoding:1 error:0];
  [(NSUserDefaults *)self->_userDefaults setObject:v4 forKey:@"PeriodicPromptedAssessmentNotificationTimeOfDayOverride"];
}

- (void)_startObservingDefaults
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_allSettingsToObserve;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSUserDefaults *)self->_userDefaults addObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7++) options:3 context:0, v8];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_stopObservingAllDefaults
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_allSettingsToObserve;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v31 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = objc_opt_class();
    v16 = *MEMORY[0x277CCA300];
    v17 = v15;
    v18 = [changeCopy objectForKeyedSubscript:v16];
    v19 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    *buf = 138544130;
    v24 = v15;
    v25 = 2114;
    v26 = pathCopy;
    v27 = 2114;
    v28 = v18;
    v29 = 2114;
    v30 = v19;
    _os_log_impl(&dword_25895E000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ changed: %{public}@ -> %{public}@", buf, 0x2Au);
  }

  v20 = _NotificationSettingKeys();
  v21 = [v20 containsObject:pathCopy];

  if (v21)
  {
    [(HKMHSettingsManager *)self _notificationSettingsDidUpdate];
  }

  else
  {
    v22.receiver = self;
    v22.super_class = HKMHSettingsManager;
    [(HKMHSettingsManager *)&v22 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (BOOL)hasAnyMentalHealthNotificationsEnabled
{
  if ([(HKMHSettingsManager *)self hasAnyStateOfMindReminderEnabled])
  {
    return 1;
  }

  return [(HKMHSettingsManager *)self periodicPromptedAssessmentNotificationsEnabled];
}

- (BOOL)hasAnyStateOfMindReminderEnabled
{
  if ([(HKMHSettingsManager *)self middayNotificationsEnabled]|| [(HKMHSettingsManager *)self endOfDayNotificationsEnabled])
  {
    return 1;
  }

  customReminderSchedule = [(HKMHSettingsManager *)self customReminderSchedule];
  v3 = [customReminderSchedule count] != 0;

  return v3;
}

- (BOOL)hasEverEnabledAStateOfMindReminderNotification
{
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"StateOfMindLoggingReminderNotificationMiddayEnabledKey"];

  v4 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"StateOfMindLoggingReminderNotificationEndOfDayEnabledKey"];
  v5 = v3 | v4;

  v6 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"StateOfMindLoggingReminderNotificationCustomScheduleKey"];

  return (v5 | v6) != 0;
}

- (void)setReminders:(BOOL)reminders
{
  remindersCopy = reminders;
  [(HKMHSettingsManager *)self setMiddayNotificationsEnabled:?];

  [(HKMHSettingsManager *)self setEndOfDayNotificationsEnabled:remindersCopy];
}

- (void)_notificationSettingsDidUpdate
{
  observers = self->_observers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__HKMHSettingsManager__notificationSettingsDidUpdate__block_invoke;
  v3[3] = &unk_2798A99F0;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

void __53__HKMHSettingsManager__notificationSettingsDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 settingsManagerDidUpdateNotificationSettings:*(a1 + 32)];
  }
}

- (void)_setTestDefaults:(id)defaults
{
  defaultsCopy = defaults;
  [(HKMHSettingsManager *)self _stopObservingAllDefaults];
  userDefaults = self->_userDefaults;
  self->_userDefaults = defaultsCopy;

  [(HKMHSettingsManager *)self _startObservingDefaults];
}

- (void)middayNotificationsEnabled
{
  selfCopy = self;
  v4 = objc_opt_class();
  v5 = *(a2 + 24);
  v6 = v4;
  [v5 BOOLForKey:@"StateOfMindLoggingReminderNotificationMiddayEnabledKey"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25895E000, v7, v8, "[%{public}@] Emotion logging enabled: %{public}@", v9, v10, v11, v12);
}

- (void)endOfDayNotificationsEnabled
{
  selfCopy = self;
  v4 = objc_opt_class();
  v5 = *(a2 + 24);
  v6 = v4;
  [v5 BOOLForKey:@"StateOfMindLoggingReminderNotificationEndOfDayEnabledKey"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25895E000, v7, v8, "[%{public}@] Emotion logging enabled: %{public}@", v9, v10, v11, v12);
}

- (void)customReminderSchedule
{
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_3(&dword_25895E000, v5, v6, "[%{public}@] Failed to fetch custom schedule with error: %{public}@", v7, v8, v9, v10);
}

- (void)setCustomReminderSchedule:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_3(&dword_25895E000, v5, v6, "[%{public}@] Failed to write data with error: %{public}@", v7, v8, v9, v10);
}

- (void)periodicPromptedAssessmentNotificationsEnabled
{
  selfCopy = self;
  v4 = objc_opt_class();
  v5 = *(a2 + 24);
  v6 = v4;
  [v5 BOOLForKey:@"PeriodicPromptedAssessmentNotificationEnabledKey"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25895E000, v7, v8, "[%{public}@] Periodic prompted assessment notifications enabled: %{public}@", v9, v10, v11, v12);
}

- (void)periodicPromptedAssessmentNotificationTimeOfDay
{
  v6 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_1(v3);
  _os_log_debug_impl(&dword_25895E000, selfCopy, OS_LOG_TYPE_DEBUG, "[%{public}@] Using overridden mental health notification time: %{public}@", v5, 0x16u);
}

@end