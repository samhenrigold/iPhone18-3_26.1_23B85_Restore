@interface AKCDaemon
- (AKCDaemon)initWithWorkloop:(id)workloop standaloneMode:(BOOL)mode;
- (AKCDaemonDelegate)delegate;
- (AKCPersistenceDelegate)persistence;
- (id)nextEventDateWithSchedule:(id)schedule after:(id)after;
- (void)activityDataWithAlarmID:(id)d completion:(id)completion;
- (void)alarmsWithCompletion:(id)completion;
- (void)authorizationStatesWithCompletion:(id)completion;
- (void)createAlarm:(id)alarm completion:(id)completion;
- (void)createAuthorization:(id)authorization;
- (void)deleteAlarmWithAlarmID:(id)d;
- (void)deleteAuthorizationWithBundleID:(id)d;
- (void)dismissNotificationWithIdentifier:(id)identifier;
- (void)requestAlarmNotification:(id)notification completion:(id)completion;
- (void)requestTimerNotification:(id)notification completion:(id)completion;
- (void)updateAlarm:(id)alarm completion:(id)completion;
- (void)updateAuthorization:(id)authorization;
@end

@implementation AKCDaemon

- (AKCDaemon)initWithWorkloop:(id)workloop standaloneMode:(BOOL)mode
{
  modeCopy = mode;
  workloopCopy = workloop;
  v11.receiver = self;
  v11.super_class = AKCDaemon;
  v7 = [(AKCDaemon *)&v11 init];
  if (v7)
  {
    v8 = [[_TtC12AlarmKitCore6Daemon alloc] initWithWorkloop:workloopCopy standaloneMode:modeCopy];
    daemon = v7->_daemon;
    v7->_daemon = v8;

    [(Daemon *)v7->_daemon setDelegate:v7];
  }

  return v7;
}

- (id)nextEventDateWithSchedule:(id)schedule after:(id)after
{
  afterCopy = after;
  scheduleCopy = schedule;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained nextEventDateForSchedule:scheduleCopy afterDate:afterCopy];

  return v9;
}

- (void)requestAlarmNotification:(id)notification completion:(id)completion
{
  completionCopy = completion;
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestAlarmNotification:notificationCopy completion:completionCopy];
}

- (void)requestTimerNotification:(id)notification completion:(id)completion
{
  completionCopy = completion;
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained requestTimerNotification:notificationCopy completion:completionCopy];
}

- (void)dismissNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dismissNotificationWithID:identifierCopy];
}

- (void)authorizationStatesWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_persistence);

  if (!WeakRetained)
  {
    completionCopy[2](completionCopy, MEMORY[0x277CBEC10]);
  }

  v6 = objc_loadWeakRetained(&self->_persistence);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__AKCDaemon_authorizationStatesWithCompletion___block_invoke;
  v8[3] = &unk_27876F6D8;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 selectAllAuthorizations:v8];
}

void __47__AKCDaemon_authorizationStatesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = objc_alloc(MEMORY[0x277CCABB0]);
        v12 = [v11 initWithInteger:{objc_msgSend(v10, "status", v14)}];
        v13 = [v10 bundleID];
        [v4 setObject:v12 forKeyedSubscript:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)createAuthorization:(id)authorization
{
  v8[1] = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  WeakRetained = objc_loadWeakRetained(&self->_persistence);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_persistence);
    v8[0] = authorizationCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v6 insertAuthorizations:v7 completion:&__block_literal_global];
  }
}

- (void)deleteAuthorizationWithBundleID:(id)d
{
  v8[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_persistence);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_persistence);
    v8[0] = dCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v6 deleteAuthorizationsWithBundleIds:v7 completion:&__block_literal_global_6];
  }
}

- (void)updateAuthorization:(id)authorization
{
  v8[1] = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  WeakRetained = objc_loadWeakRetained(&self->_persistence);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_persistence);
    v8[0] = authorizationCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v6 updateAuthorizations:v7 completion:&__block_literal_global_8];
  }
}

- (void)alarmsWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_persistence);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_persistence);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __34__AKCDaemon_alarmsWithCompletion___block_invoke;
    v7[3] = &unk_27876F6D8;
    v8 = completionCopy;
    [v6 selectAllAlarmsIncludingAttributes:0 completion:v7];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8]);
  }
}

void __34__AKCDaemon_alarmsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) data];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)activityDataWithAlarmID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_persistence);

  if (WeakRetained)
  {
    dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", dCopy];
    v10 = objc_loadWeakRetained(&self->_persistence);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__AKCDaemon_activityDataWithAlarmID_completion___block_invoke;
    v11[3] = &unk_27876F6D8;
    v12 = completionCopy;
    [v10 selectAlarmsWithPredicate:dCopy includeAttributes:1 completion:v11];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __48__AKCDaemon_activityDataWithAlarmID_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 firstObject];
  v3 = [v4 attributes];
  (*(*(a1 + 32) + 16))();
}

- (void)createAlarm:(id)alarm completion:(id)completion
{
  v11[1] = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_persistence);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_persistence);
    v11[0] = alarmCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v9 insertAlarms:v10 completion:completionCopy];
  }
}

- (void)deleteAlarmWithAlarmID:(id)d
{
  v8[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_persistence);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_persistence);
    v8[0] = dCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [v6 deleteAlarmsWithIdentifiers:v7 completion:&__block_literal_global_13];
  }
}

- (void)updateAlarm:(id)alarm completion:(id)completion
{
  v11[1] = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_persistence);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_persistence);
    v11[0] = alarmCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v9 updateAlarms:v10 completion:completionCopy];
  }
}

- (AKCDaemonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AKCPersistenceDelegate)persistence
{
  WeakRetained = objc_loadWeakRetained(&self->_persistence);

  return WeakRetained;
}

@end