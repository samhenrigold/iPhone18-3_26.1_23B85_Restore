@interface MTAlarmKit
+ (id)_nextEventDateForSchedule:(id)schedule afterDate:(id)date;
+ (unint64_t)mtScheduleFromAkSchedule:(int64_t)schedule;
- (MTAlarmKit)initWithCoreDataStore:(id)store notificationCenter:(id)center;
- (id)nextEventDateForSchedule:(id)schedule afterDate:(id)date;
- (void)deleteAlarmsWithIdentifiers:(id)identifiers completion:(id)completion;
- (void)deleteAuthorizationsWithBundleIds:(id)ids completion:(id)completion;
- (void)didAlertNotificationWithID:(id)d;
- (void)didFinishLoadingStore;
- (void)dismissAlarmWithIdentifier:(id)identifier;
- (void)dismissNotificationWithID:(id)d;
- (void)dismissTimerWithIdentifier:(id)identifier;
- (void)insertAlarms:(id)alarms completion:(id)completion;
- (void)insertAuthorizations:(id)authorizations completion:(id)completion;
- (void)performSecondaryActionWithIdentifier:(id)identifier;
- (void)repeatTimerWithIdentifier:(id)identifier;
- (void)requestAlarmNotification:(id)notification completion:(id)completion;
- (void)requestTimerNotification:(id)notification completion:(id)completion;
- (void)selectAlarmsWithPredicate:(id)predicate includeAttributes:(BOOL)attributes completion:(id)completion;
- (void)selectAllAlarmsIncludingAttributes:(BOOL)attributes completion:(id)completion;
- (void)selectAllAuthorizations:(id)authorizations;
- (void)selectAuthorizationsWithPredicate:(id)predicate completion:(id)completion;
- (void)snoozeAlarmWithIdentifier:(id)identifier;
- (void)updateAlarms:(id)alarms completion:(id)completion;
- (void)updateAuthorizations:(id)authorizations completion:(id)completion;
@end

@implementation MTAlarmKit

- (MTAlarmKit)initWithCoreDataStore:(id)store notificationCenter:(id)center
{
  v29 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  centerCopy = center;
  v20.receiver = self;
  v20.super_class = MTAlarmKit;
  v9 = [(MTAlarmKit *)&v20 init];
  if (v9)
  {
    v10 = MTLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_INFO, "%{public}@ initializing", &buf, 0xCu);
    }

    objc_storeStrong(&v9->_dataStore, store);
    [(MTCDDataStore *)v9->_dataStore setAlarmKitObserver:v9];
    objc_storeStrong(&v9->_notificationCenter, center);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v11 = getAKCDaemonClass_softClass;
    v24 = getAKCDaemonClass_softClass;
    if (!getAKCDaemonClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v26 = __getAKCDaemonClass_block_invoke;
      v27 = &unk_1E7B0C600;
      v28 = &v21;
      __getAKCDaemonClass_block_invoke(&buf);
      v11 = v22[3];
    }

    v12 = v11;
    _Block_object_dispose(&v21, 8);
    v13 = [v11 alloc];
    v14 = dispatch_get_global_queue(2, 0);
    v15 = [v13 initWithWorkloop:v14 standaloneMode:0];
    akcDaemon = v9->_akcDaemon;
    v9->_akcDaemon = v15;

    [(AKCDaemon *)v9->_akcDaemon setDelegate:v9];
    [(AKCDaemon *)v9->_akcDaemon setPersistence:v9];
    v17 = objc_opt_new();
    conductor = v9->_conductor;
    v9->_conductor = v17;
  }

  return v9;
}

- (void)didFinishLoadingStore
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ received didFinishLoadingStore, proceeding to start AlarmKit", &v4, 0xCu);
  }

  [(AKCDaemon *)self->_akcDaemon start];
}

- (id)nextEventDateForSchedule:(id)schedule afterDate:(id)date
{
  v17 = *MEMORY[0x1E69E9840];
  scheduleCopy = schedule;
  dateCopy = date;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543874;
    selfCopy = self;
    v13 = 2114;
    v14 = scheduleCopy;
    v15 = 2114;
    v16 = dateCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling nextEventDateForSchedule for: %{public}@ after date: %{public}@", &v11, 0x20u);
  }

  v9 = [objc_opt_class() _nextEventDateForSchedule:scheduleCopy afterDate:dateCopy];

  return v9;
}

+ (id)_nextEventDateForSchedule:(id)schedule afterDate:(id)date
{
  dateCopy = date;
  scheduleCopy = schedule;
  v7 = -[MTAlarm initWithHour:minute:]([MTMutableAlarm alloc], "initWithHour:minute:", [scheduleCopy hour], objc_msgSend(scheduleCopy, "minute"));
  v8 = objc_opt_class();
  days = [scheduleCopy days];

  -[MTAlarm setRepeatSchedule:](v7, "setRepeatSchedule:", [v8 mtScheduleFromAkSchedule:days]);
  v10 = [(MTAlarm *)v7 nextTriggerAfterDate:dateCopy ofType:0];

  triggerDate = [v10 triggerDate];

  return triggerDate;
}

+ (unint64_t)mtScheduleFromAkSchedule:(int64_t)schedule
{
  v3 = 0;
  result = 0;
  do
  {
    if ((qword_1B20B87F8[v3] & schedule) != 0)
    {
      result |= qword_1B20B87C0[v3];
    }

    ++v3;
  }

  while (v3 != 7);
  return result;
}

- (void)requestAlarmNotification:(id)notification completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v17 = 2114;
    v18 = notificationCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling requestAlarmNotification for: %{public}@", buf, 0x16u);
  }

  notificationCenter = self->_notificationCenter;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__MTAlarmKit_requestAlarmNotification_completion___block_invoke;
  v12[3] = &unk_1E7B0C5D8;
  v12[4] = self;
  v13 = notificationCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = notificationCopy;
  [(MTNotificationCenter *)notificationCenter postNotificationForAlarmKitAlarm:v11 completionBlock:v12];
}

void __50__MTAlarmKit_requestAlarmNotification_completion___block_invoke(id *a1)
{
  v2 = [a1[4] conductor];
  v3 = [a1[5] identifier];
  v4 = [v3 UUIDString];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__MTAlarmKit_requestAlarmNotification_completion___block_invoke_2;
  v6[3] = &unk_1E7B0C5B0;
  v5 = a1[5];
  v6[4] = a1[4];
  v7 = v5;
  v8 = a1[6];
  [v2 registerReplyPublisherWithId:v4 timeOut:v6 completion:1.0];
}

uint64_t __50__MTAlarmKit_requestAlarmNotification_completion___block_invoke_2(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) identifier];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ requestAlarmNotification %{public}@ called back with status: %i", &v8, 0x1Cu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)requestTimerNotification:(id)notification completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy = self;
    v17 = 2114;
    v18 = notificationCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling requestTimerNotification for: %{public}@", buf, 0x16u);
  }

  notificationCenter = self->_notificationCenter;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__MTAlarmKit_requestTimerNotification_completion___block_invoke;
  v12[3] = &unk_1E7B0C5D8;
  v12[4] = self;
  v13 = notificationCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = notificationCopy;
  [(MTNotificationCenter *)notificationCenter postNotificationForAlarmKitTimer:v11 completionBlock:v12];
}

void __50__MTAlarmKit_requestTimerNotification_completion___block_invoke(id *a1)
{
  v2 = [a1[4] conductor];
  v3 = [a1[5] identifier];
  v4 = [v3 UUIDString];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__MTAlarmKit_requestTimerNotification_completion___block_invoke_2;
  v6[3] = &unk_1E7B0C5B0;
  v5 = a1[5];
  v6[4] = a1[4];
  v7 = v5;
  v8 = a1[6];
  [v2 registerReplyPublisherWithId:v4 timeOut:v6 completion:1.0];
}

uint64_t __50__MTAlarmKit_requestTimerNotification_completion___block_invoke_2(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) identifier];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "%{public}@ requestTimerNotification %{public}@ called back with status: %i", &v8, 0x1Cu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)dismissNotificationWithID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = dCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ calling dismissNotificicationForAlertWIthId for: %{public}@", &v8, 0x16u);
  }

  notificationCenter = self->_notificationCenter;
  uUIDString = [dCopy UUIDString];
  [(MTNotificationCenter *)notificationCenter dismissNotificationsForAlarmKitAlertWithId:uUIDString];
}

- (void)selectAllAuthorizations:(id)authorizations
{
  v8 = *MEMORY[0x1E69E9840];
  authorizationsCopy = authorizations;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ calling selectAllAuthorizations", &v6, 0xCu);
  }

  [(MTCDDataStore *)self->_dataStore getAKCAuthorizationsWithCompletion:authorizationsCopy];
}

- (void)selectAuthorizationsWithPredicate:(id)predicate completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = predicateCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling selectAuthorizationsWithPredicate with predicate: %{public}@", &v9, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore getAKCAuthorizationsWithPredicate:predicateCopy completion:completionCopy];
}

- (void)insertAuthorizations:(id)authorizations completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  authorizationsCopy = authorizations;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = authorizationsCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling insertAuthorizations for: %{public}@", &v9, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore addAKCAuthorizations:authorizationsCopy completion:completionCopy];
}

- (void)updateAuthorizations:(id)authorizations completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  authorizationsCopy = authorizations;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = authorizationsCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling updateAuthorizations for: %{public}@", &v9, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore updateAKCAuthorizations:authorizationsCopy completion:completionCopy];
}

- (void)deleteAuthorizationsWithBundleIds:(id)ids completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = idsCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling deleteAuthorizationsWithBundleIds for: %{public}@", &v9, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore deleteAKCAuthorizations:idsCopy completion:completionCopy];
}

- (void)selectAllAlarmsIncludingAttributes:(BOOL)attributes completion:(id)completion
{
  attributesCopy = attributes;
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 1024;
    v11 = attributesCopy;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%{public}@ calling selectAllAlarmsIncludingAttributes include attributes: %i", &v8, 0x12u);
  }

  [(MTCDDataStore *)self->_dataStore getAKCAlarmsWithIncludeAttributes:attributesCopy completion:completionCopy];
}

- (void)selectAlarmsWithPredicate:(id)predicate includeAttributes:(BOOL)attributes completion:(id)completion
{
  attributesCopy = attributes;
  v17 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  completionCopy = completion;
  v10 = MTLogForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 138543874;
    selfCopy = self;
    v13 = 2114;
    v14 = predicateCopy;
    v15 = 1024;
    v16 = attributesCopy;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_INFO, "%{public}@ calling selectAllAlarmsIncludingAttributes with predicate %{public}@, include attributes: %i", &v11, 0x1Cu);
  }

  [(MTCDDataStore *)self->_dataStore getAKCAlarmsWithPredicate:predicateCopy includeAttributes:attributesCopy completion:completionCopy];
}

- (void)insertAlarms:(id)alarms completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  alarmsCopy = alarms;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = alarmsCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling insertAlarms with %{public}@", &v9, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore addAKCAlarms:alarmsCopy completion:completionCopy];
}

- (void)updateAlarms:(id)alarms completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  alarmsCopy = alarms;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = alarmsCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling updateAlarms with %{public}@", &v9, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore updateAKCAlarms:alarmsCopy completion:completionCopy];
}

- (void)deleteAlarmsWithIdentifiers:(id)identifiers completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  completionCopy = completion;
  v8 = MTLogForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = identifiersCopy;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ calling deleteAlarmsWithIdentifiers %{public}@", &v9, 0x16u);
  }

  [(MTCDDataStore *)self->_dataStore deleteAKCAlarms:identifiersCopy completion:completionCopy];
}

- (void)didAlertNotificationWithID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = dCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ didAlertNotificationWithID received %{public}@, forwarding to conductor", &v6, 0x16u);
  }

  [(StringConductor *)self->_conductor send:dCopy];
}

- (void)snoozeAlarmWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ forwarding alarm snooze action to AlarmKit for id: %{public}@", &v6, 0x16u);
  }

  [(AKCDaemon *)self->_akcDaemon countdownAlertWithIdentifier:identifierCopy];
}

- (void)dismissAlarmWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ forwarding alarm dismiss action to AlarmKit for id: %{public}@", &v6, 0x16u);
  }

  [(AKCDaemon *)self->_akcDaemon dismissAlertWithIdentifier:identifierCopy];
}

- (void)repeatTimerWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ forwarding timer repeat action to AlarmKit for id: %{public}@", &v6, 0x16u);
  }

  [(AKCDaemon *)self->_akcDaemon countdownAlertWithIdentifier:identifierCopy];
}

- (void)dismissTimerWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ forwarding timer dismiss action to AlarmKit for id: %{public}@", &v6, 0x16u);
  }

  [(AKCDaemon *)self->_akcDaemon dismissAlertWithIdentifier:identifierCopy];
}

- (void)performSecondaryActionWithIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ forwarding secondary action to AlarmKit for id: %{public}@", &v6, 0x16u);
  }

  [(AKCDaemon *)self->_akcDaemon performSecondaryActionWithIdentifier:identifierCopy];
}

@end