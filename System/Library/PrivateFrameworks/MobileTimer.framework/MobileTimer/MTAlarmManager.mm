@interface MTAlarmManager
+ (id)_filterSleepAlarmOverrides:(id)overrides date:(id)date;
+ (id)_filteredAlarms:(id)alarms afterDate:(id)date maxCount:(unint64_t)count filter:(id)filter;
+ (id)_sortedAlarms:(id)alarms date:(id)date includeBedtimeNotification:(BOOL)notification;
+ (id)assistantSyncNotificationName;
+ (void)warmUp;
- (MTAlarmManager)init;
- (MTAlarmManager)initWithConnectionProvider:(id)provider metrics:(id)metrics;
- (MTAlarmManager)initWithConnectionProvider:(id)provider metrics:(id)metrics notificationCenter:(id)center;
- (id)_alarmWithIDStringAsync:(id)async;
- (id)_alarmsIncludingSleepAlarm:(BOOL)alarm doSynchronous:(BOOL)synchronous;
- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics;
- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics notificationCenter:(id)center;
- (id)_nextAlarmsForDate:(id)date maxCount:(unint64_t)count includeSleepAlarm:(BOOL)alarm includeBedtimeNotification:(BOOL)notification doSynchronous:(BOOL)synchronous;
- (id)_nextAlarmsInRange:(id)range maxCount:(unint64_t)count includeSleepAlarm:(BOOL)alarm includeBedtimeNotification:(BOOL)notification doSynchronous:(BOOL)synchronous;
- (id)_sortedNextAlarmsAfterDate:(id)date includeSleepAlarm:(BOOL)alarm includeBedtimeNotification:(BOOL)notification doSynchronous:(BOOL)synchronous;
- (id)addAlarm:(id)alarm;
- (id)alarmAtIndex:(unint64_t)index;
- (id)alarmWithIDString:(id)string includeSleep:(BOOL)sleep;
- (id)alarmsSyncIncludingSleepAlarm:(BOOL)alarm;
- (id)dismissAlarmWithIdentifier:(id)identifier;
- (id)dismissAlarmWithIdentifier:(id)identifier dismissAction:(unint64_t)action;
- (id)nextAlarm;
- (id)nextAlarmInHoursThreshold:(int64_t)threshold;
- (id)nextAlarmSync;
- (id)nextAlarmsForDateSync:(id)sync maxCount:(unint64_t)count includeSleepAlarm:(BOOL)alarm includeBedtimeNotification:(BOOL)notification;
- (id)nextAlarmsInRangeSync:(id)sync maxCount:(unint64_t)count includeSleepAlarm:(BOOL)alarm includeBedtimeNotification:(BOOL)notification;
- (id)nextExpectedRefreshDate;
- (id)nextFutureAlarmDate;
- (id)nextSleepAlarm;
- (id)removeAlarm:(id)alarm;
- (id)resetSleepAlarmSnoozeState;
- (id)sleepAlarm;
- (id)sleepAlarmSync;
- (id)sleepAlarms;
- (id)sleepAlarmsSync;
- (id)snoozeAlarmWithIdentifier:(id)identifier;
- (id)snoozeAlarmWithIdentifier:(id)identifier snoozeAction:(unint64_t)action;
- (id)updateAlarm:(id)alarm;
- (id)updateSleepAlarms;
- (unint64_t)alarmCountIncludingSleepAlarm:(BOOL)alarm;
- (unint64_t)firingAlarmCount;
- (unint64_t)indexForAlarm:(id)alarm;
- (void)_getCachedAlarmsWithFuture:(id)future finishBlock:(id)block;
- (void)checkIn;
- (void)dealloc;
- (void)didAlertNotificationWithID:(id)d;
- (void)didDuckPlaybackForAttentionAwarenessWithId:(id)id;
- (void)didPostToneAlert:(id)alert;
- (void)didRenderSceneForAlarm:(id)alarm withType:(id)type;
- (void)didShowCoversheetForIdentifier:(id)identifier;
- (void)didStopSoundPlaybackWithId:(id)id;
- (void)didTearDownToneAlert:(id)alert;
- (void)didTriggerSoundPlaybackWithId:(id)id;
- (void)didUpdateAudioReporterId:(int64_t)id;
- (void)reconnect;
@end

@implementation MTAlarmManager

- (MTAlarmManager)init
{
  v3 = objc_alloc_init(MTMetrics);
  v4 = [(MTAlarmManager *)self initWithMetrics:v3];

  return v4;
}

+ (void)warmUp
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ warming...", &v7, 0xCu);
  }

  v5 = MTAlarmServerInterface(v4);
  v6 = MTAlarmClientInterface(v5);
}

+ (id)assistantSyncNotificationName
{
  v2 = [MEMORY[0x1E696AEC0] stringWithCString:".siri_data_changed" encoding:4];
  v3 = [@"com.apple.alarm.label" stringByAppendingString:v2];

  return v3;
}

id __34__MTAlarmManager_initWithMetrics___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTAlarmServerInterface(v2);
  v4 = [v2 exportedObject];
  v5 = MTAlarmClientInterface(v4);
  v6 = [MTXPCConnectionInfo infoForMachServiceName:@"com.apple.MobileTimer.alarmserver" remoteObjectInterface:v3 exportedObject:v4 exportedObjectInterface:v5 lifecycleNotification:@"com.apple.MTAlarmServer.wakeup" requiredEntitlement:0 options:4096];

  objc_initWeak(&location, v2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__MTAlarmManager_initWithMetrics___block_invoke_2;
  v9[3] = &unk_1E7B0CF70;
  objc_copyWeak(&v10, &location);
  v7 = [MTXPCConnectionProvider providerWithConnectionInfo:v6 reconnectHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __34__MTAlarmManager_initWithMetrics___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reconnect];
}

- (MTAlarmManager)initWithConnectionProvider:(id)provider metrics:(id)metrics
{
  providerCopy = provider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__MTAlarmManager_initWithConnectionProvider_metrics___block_invoke;
  v10[3] = &unk_1E7B0F2D8;
  v11 = providerCopy;
  v7 = providerCopy;
  v8 = [(MTAlarmManager *)self _initWithConnectionProvidingBlock:v10 metrics:metrics];

  return v8;
}

- (MTAlarmManager)initWithConnectionProvider:(id)provider metrics:(id)metrics notificationCenter:(id)center
{
  providerCopy = provider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__MTAlarmManager_initWithConnectionProvider_metrics_notificationCenter___block_invoke;
  v12[3] = &unk_1E7B0F2D8;
  v13 = providerCopy;
  v9 = providerCopy;
  v10 = [(MTAlarmManager *)self _initWithConnectionProvidingBlock:v12 metrics:metrics notificationCenter:center];

  return v10;
}

- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics
{
  v6 = MEMORY[0x1E696AD88];
  metricsCopy = metrics;
  blockCopy = block;
  defaultCenter = [v6 defaultCenter];
  v10 = [(MTAlarmManager *)self _initWithConnectionProvidingBlock:blockCopy metrics:metricsCopy notificationCenter:defaultCenter];

  return v10;
}

- (id)_initWithConnectionProvidingBlock:(id)block metrics:(id)metrics notificationCenter:(id)center
{
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  metricsCopy = metrics;
  centerCopy = center;
  v23.receiver = self;
  v23.super_class = MTAlarmManager;
  v11 = [(MTAlarmManager *)&v23 init];
  if (v11)
  {
    v12 = MTLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing...", buf, 0xCu);
    }

    objc_storeStrong(&v11->_notificationCenter, center);
    v13 = [[MTAlarmManagerExportedObject alloc] initWithAlarmManager:v11];
    exportedObject = v11->_exportedObject;
    v11->_exportedObject = v13;

    objc_storeStrong(&v11->_metrics, metrics);
    v15 = blockCopy[2](blockCopy, v11);
    connectionProvider = v11->_connectionProvider;
    v11->_connectionProvider = v15;

    objc_initWeak(buf, v11);
    v17 = [MTAlarmCache alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __79__MTAlarmManager__initWithConnectionProvidingBlock_metrics_notificationCenter___block_invoke;
    v21[3] = &unk_1E7B0F350;
    objc_copyWeak(&v22, buf);
    v18 = [(MTAlarmCache *)v17 initWithUpdateBlock:v21];
    cache = v11->_cache;
    v11->_cache = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  return v11;
}

void __79__MTAlarmManager__initWithConnectionProvidingBlock_metrics_notificationCenter___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained connectionProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__MTAlarmManager__initWithConnectionProvidingBlock_metrics_notificationCenter___block_invoke_2;
  v11[3] = &unk_1E7B0F328;
  v12 = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__MTAlarmManager__initWithConnectionProvidingBlock_metrics_notificationCenter___block_invoke_4;
  v9[3] = &unk_1E7B0C688;
  v10 = v12;
  v8 = v12;
  [v7 performRemoteBlock:v11 withErrorHandler:v9 isSynchronous:a3];
}

void __79__MTAlarmManager__initWithConnectionProvidingBlock_metrics_notificationCenter___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__MTAlarmManager__initWithConnectionProvidingBlock_metrics_notificationCenter___block_invoke_3;
  v3[3] = &unk_1E7B0F300;
  v4 = *(a1 + 32);
  [a2 getAlarmsWithCompletion:v3];
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocing...", buf, 0xCu);
  }

  [(MTXPCConnectionProvider *)self->_connectionProvider invalidate];
  v4.receiver = self;
  v4.super_class = MTAlarmManager;
  [(MTAlarmManager *)&v4 dealloc];
}

- (void)checkIn
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ checking in...", &v4, 0xCu);
  }

  [(MTAlarmManager *)self reconnect];
}

- (void)reconnect
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ reconnecting...", buf, 0xCu);
  }

  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    cache = [(MTAlarmManager *)self cache];
    *buf = 138543618;
    selfCopy3 = self;
    v15 = 2114;
    v16 = cache;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ updating cache %{public}@", buf, 0x16u);
  }

  cache2 = [(MTAlarmManager *)self cache];
  [cache2 markNeedsUpdate];

  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    connectionProvider = [(MTAlarmManager *)self connectionProvider];
    *buf = 138543618;
    selfCopy3 = self;
    v15 = 2114;
    v16 = connectionProvider;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ calling connection provider %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionProvider2 = [(MTAlarmManager *)self connectionProvider];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __27__MTAlarmManager_reconnect__block_invoke;
  v11[3] = &unk_1E7B0F378;
  objc_copyWeak(&v12, buf);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__MTAlarmManager_reconnect__block_invoke_52;
  v10[3] = &unk_1E7B0D658;
  v10[4] = self;
  [connectionProvider2 performRemoteBlock:v11 withErrorHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __27__MTAlarmManager_reconnect__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained connectionProvider];
    v7 = 138543618;
    v8 = WeakRetained;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ remote block being called on connection provider %{public}@...", &v7, 0x16u);
  }

  [v3 checkIn];
}

void __27__MTAlarmManager_reconnect__block_invoke_52(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __27__MTAlarmManager_reconnect__block_invoke_52_cold_1();
  }
}

- (void)_getCachedAlarmsWithFuture:(id)future finishBlock:(id)block
{
  blockCopy = block;
  cache = self->_cache;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__MTAlarmManager__getCachedAlarmsWithFuture_finishBlock___block_invoke;
  v8[3] = &unk_1E7B0F300;
  v9 = blockCopy;
  v7 = blockCopy;
  [(MTAlarmCache *)cache getCachedAlarmsWithCompletion:v8];
}

- (id)_alarmsIncludingSleepAlarm:(BOOL)alarm doSynchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  v7 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__MTAlarmManager__alarmsIncludingSleepAlarm_doSynchronous___block_invoke;
  aBlock[3] = &__block_descriptor_33_e62___NSArray_40__0__NSArray_8__NSArray_16__MTAlarm_24__NSError_32l;
  alarmCopy = alarm;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (synchronousCopy)
  {
    cache = self->_cache;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__MTAlarmManager__alarmsIncludingSleepAlarm_doSynchronous___block_invoke_3;
    v21[3] = &unk_1E7B0F3C0;
    v11 = &v22;
    v12 = &v23;
    v22 = v7;
    v23 = v9;
    v13 = v9;
    [(MTAlarmCache *)cache getCachedAlarmsSyncWithCompletion:v21];
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__MTAlarmManager__alarmsIncludingSleepAlarm_doSynchronous___block_invoke_4;
    v18[3] = &unk_1E7B0F3E8;
    v11 = &v20;
    v20 = v8;
    v12 = &v19;
    v14 = v7;
    v19 = v14;
    v15 = v9;
    v16 = _Block_copy(v18);
    [(MTAlarmManager *)self _getCachedAlarmsWithFuture:v14 finishBlock:v16];
  }

  return v7;
}

id __59__MTAlarmManager__alarmsIncludingSleepAlarm_doSynchronous___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  if (a5)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithArray:a2];
    [v9 sortUsingComparator:&__block_literal_global_57];
    if (*(a1 + 32) == 1)
    {
      [v9 na_safeAddObjectsFromArray:v8];
    }
  }

  return v9;
}

void __59__MTAlarmManager__alarmsIncludingSleepAlarm_doSynchronous___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = *(a1 + 32);

    [v6 finishWithError:{a5, a4}];
  }

  else
  {
    v7 = (*(*(a1 + 40) + 16))();
    [*(a1 + 32) finishWithResult:v7];
  }
}

void __59__MTAlarmManager__alarmsIncludingSleepAlarm_doSynchronous___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 40);
  v10 = *(v9 + 16);
  v11 = a5;
  v12 = v10(v9, a2, a3, a4, v11);
  [*(a1 + 32) finishWithResult:v12 error:v11];
}

- (id)sleepAlarm
{
  v3 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __28__MTAlarmManager_sleepAlarm__block_invoke;
  aBlock[3] = &unk_1E7B0F410;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  [(MTAlarmManager *)self _getCachedAlarmsWithFuture:v4 finishBlock:v5];
  v6 = v4;

  return v4;
}

void __28__MTAlarmManager_sleepAlarm__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v7 = [a3 firstObject];
  v8 = *(a1 + 32);
  if (v9 | v7)
  {
    [v8 finishWithResult:v7 error:v9];
  }

  else
  {
    [v8 finishWithNoResult];
  }
}

- (id)sleepAlarms
{
  v3 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __29__MTAlarmManager_sleepAlarms__block_invoke;
  aBlock[3] = &unk_1E7B0F410;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  [(MTAlarmManager *)self _getCachedAlarmsWithFuture:v4 finishBlock:v5];
  v6 = v4;

  return v4;
}

uint64_t __29__MTAlarmManager_sleepAlarms__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (a3 | a5)
  {
    return [v5 finishWithResult:? error:?];
  }

  else
  {
    return [v5 finishWithNoResult];
  }
}

- (id)nextAlarm
{
  v3 = objc_opt_new();
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __27__MTAlarmManager_nextAlarm__block_invoke;
  v11 = &unk_1E7B0F438;
  selfCopy = self;
  v4 = v3;
  v13 = v4;
  v5 = _Block_copy(&v8);
  [(MTAlarmManager *)self _getCachedAlarmsWithFuture:v4 finishBlock:v5, v8, v9, v10, v11, selfCopy];
  v6 = v4;

  return v4;
}

void __27__MTAlarmManager_nextAlarm__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = MTLogForCategory(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v15 = 138543362;
    v16 = v10;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ finish block called for next alarm", &v15, 0xCu);
  }

  v11 = MTLogForCategory(3);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v7 | v8)
  {
    if (v12)
    {
      v14 = *(a1 + 32);
      v15 = 138543874;
      v16 = v14;
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ finish block called with next alarm: %{public}@, error: %{public}@", &v15, 0x20u);
    }

    [*(a1 + 40) finishWithResult:v7 error:v8];
  }

  else
  {
    if (v12)
    {
      v13 = *(a1 + 32);
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ finish block called with no next alarm", &v15, 0xCu);
    }

    [*(a1 + 40) finishWithNoResult];
  }
}

- (unint64_t)alarmCountIncludingSleepAlarm:(BOOL)alarm
{
  v4 = [(MTAlarmManager *)self alarmsSyncIncludingSleepAlarm:?];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MTAlarmManager_alarmCountIncludingSleepAlarm___block_invoke;
  v8[3] = &__block_descriptor_33_e17_B16__0__MTAlarm_8l;
  alarmCopy = alarm;
  v5 = [v4 na_filter:v8];
  v6 = [v5 count];

  return v6;
}

uint64_t __48__MTAlarmManager_alarmCountIncludingSleepAlarm___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    return 1;
  }

  else
  {
    return [a2 isSleepAlarm] ^ 1;
  }
}

- (unint64_t)firingAlarmCount
{
  v2 = [(MTAlarmManager *)self alarmsSyncIncludingSleepAlarm:1];
  v3 = [v2 na_filter:&__block_literal_global_62];
  v4 = [v3 count];

  return v4;
}

- (id)alarmsSyncIncludingSleepAlarm:(BOOL)alarm
{
  v5 = [(MTAlarmManager *)self _alarmsIncludingSleepAlarm:alarm doSynchronous:1];
  if (([v5 isFinished] & 1) == 0)
  {
    [(MTAlarmManager *)a2 alarmsSyncIncludingSleepAlarm:?];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__12;
  v14 = __Block_byref_object_dispose__12;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__MTAlarmManager_alarmsSyncIncludingSleepAlarm___block_invoke;
  v9[3] = &unk_1E7B0F480;
  v9[4] = &v10;
  v6 = [v5 addCompletionBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __48__MTAlarmManager_alarmsSyncIncludingSleepAlarm___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }
}

- (id)_nextAlarmsForDate:(id)date maxCount:(unint64_t)count includeSleepAlarm:(BOOL)alarm includeBedtimeNotification:(BOOL)notification doSynchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  notificationCopy = notification;
  alarmCopy = alarm;
  dateCopy = date;
  v13 = [(MTAlarmManager *)self _sortedNextAlarmsAfterDate:dateCopy includeSleepAlarm:alarmCopy includeBedtimeNotification:notificationCopy doSynchronous:synchronousCopy];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v15 = [currentCalendar components:30 fromDate:dateCopy];
  v16 = [currentCalendar dateFromComponents:v15];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __105__MTAlarmManager__nextAlarmsForDate_maxCount_includeSleepAlarm_includeBedtimeNotification_doSynchronous___block_invoke;
  v26 = &unk_1E7B0F4A8;
  v30 = notificationCopy;
  v27 = dateCopy;
  v28 = currentCalendar;
  v29 = v16;
  v17 = v16;
  v18 = currentCalendar;
  v19 = dateCopy;
  v20 = _Block_copy(&v23);
  v21 = [objc_opt_class() _filteredAlarms:v13 afterDate:v19 maxCount:count filter:{v20, v23, v24, v25, v26}];

  return v21;
}

uint64_t __105__MTAlarmManager__nextAlarmsForDate_maxCount_includeSleepAlarm_includeBedtimeNotification_doSynchronous___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled])
  {
    v4 = [v3 nextTriggerAfterDate:*(a1 + 32) includeBedtimeNotification:*(a1 + 56)];
    v5 = [v4 triggerDate];
    if ([v5 mtIsAfterDate:*(a1 + 32)] && (objc_msgSend(v4, "isPastOverrideEvent") & 1) == 0)
    {
      v7 = [*(a1 + 40) components:30 fromDate:v5];
      v8 = [*(a1 + 40) dateFromComponents:v7];
      v6 = [*(a1 + 48) isEqualToDate:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_nextAlarmsInRange:(id)range maxCount:(unint64_t)count includeSleepAlarm:(BOOL)alarm includeBedtimeNotification:(BOOL)notification doSynchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  notificationCopy = notification;
  alarmCopy = alarm;
  rangeCopy = range;
  startDate = [rangeCopy startDate];
  v14 = [(MTAlarmManager *)self _sortedNextAlarmsAfterDate:startDate includeSleepAlarm:alarmCopy includeBedtimeNotification:notificationCopy doSynchronous:synchronousCopy];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __105__MTAlarmManager__nextAlarmsInRange_maxCount_includeSleepAlarm_includeBedtimeNotification_doSynchronous___block_invoke;
  v24 = &unk_1E7B0F4D0;
  v25 = rangeCopy;
  v26 = notificationCopy;
  v15 = rangeCopy;
  v16 = _Block_copy(&v21);
  v17 = objc_opt_class();
  startDate2 = [v15 startDate];
  v19 = [v17 _filteredAlarms:v14 afterDate:startDate2 maxCount:count filter:v16];

  return v19;
}

uint64_t __105__MTAlarmManager__nextAlarmsInRange_maxCount_includeSleepAlarm_includeBedtimeNotification_doSynchronous___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled])
  {
    v4 = [*(a1 + 32) startDate];
    v5 = [v3 nextFireDateAfterDate:v4 includeBedtimeNotification:*(a1 + 40)];

    v6 = [*(a1 + 32) containsDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_sortedNextAlarmsAfterDate:(id)date includeSleepAlarm:(BOOL)alarm includeBedtimeNotification:(BOOL)notification doSynchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  notificationCopy = notification;
  alarmCopy = alarm;
  dateCopy = date;
  v11 = [(MTAlarmManager *)self _alarmsIncludingSleepAlarm:alarmCopy doSynchronous:synchronousCopy];
  if (alarmCopy)
  {
    v12 = [objc_opt_class() _filterSleepAlarmOverrides:v11 date:dateCopy];

    v11 = v12;
  }

  v13 = [objc_opt_class() _sortedAlarms:v11 date:dateCopy includeBedtimeNotification:notificationCopy];

  return v13;
}

+ (id)_filterSleepAlarmOverrides:(id)overrides date:(id)date
{
  dateCopy = date;
  v6 = MEMORY[0x1E695DEE8];
  overridesCopy = overrides;
  mtGregorianCalendar = [v6 mtGregorianCalendar];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__MTAlarmManager__filterSleepAlarmOverrides_date___block_invoke;
  v13[3] = &unk_1E7B0DBF0;
  v14 = dateCopy;
  v15 = mtGregorianCalendar;
  v9 = mtGregorianCalendar;
  v10 = dateCopy;
  v11 = [overridesCopy flatMap:v13];

  return v11;
}

id __50__MTAlarmManager__filterSleepAlarmOverrides_date___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__12;
  v23 = __Block_byref_object_dispose__12;
  v24 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__MTAlarmManager__filterSleepAlarmOverrides_date___block_invoke_2;
  v15[3] = &unk_1E7B0F4F8;
  v6 = v4;
  v16 = v6;
  v7 = v5;
  v17 = v7;
  v18 = &v19;
  [v3 na_each:v15];
  if (v20[5])
  {
    [v6 addObject:?];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__MTAlarmManager__filterSleepAlarmOverrides_date___block_invoke_3;
    v10[3] = &unk_1E7B0F520;
    v14 = &v19;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = v6;
    [v7 na_each:v10];
  }

  else
  {
    [v6 addObjectsFromArray:v7];
  }

  v8 = [MEMORY[0x1E69B3780] futureWithResult:v6];

  _Block_object_dispose(&v19, 8);

  return v8;
}

void __50__MTAlarmManager__filterSleepAlarmOverrides_date___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isSleepAlarm])
  {
    [*(a1 + 40) addObject:v4];
    if ([v4 isSingleTimeAlarm])
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    }
  }

  else
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __50__MTAlarmManager__filterSleepAlarmOverrides_date___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(*(*(a1 + 56) + 8) + 40) overridesNextAlarm:? date:? calendar:?] & 1) == 0)
  {
    [*(a1 + 48) addObject:v3];
  }
}

+ (id)_sortedAlarms:(id)alarms date:(id)date includeBedtimeNotification:(BOOL)notification
{
  dateCopy = date;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__MTAlarmManager__sortedAlarms_date_includeBedtimeNotification___block_invoke;
  v11[3] = &unk_1E7B0F570;
  v12 = dateCopy;
  notificationCopy = notification;
  v8 = dateCopy;
  v9 = [alarms flatMap:v11];

  return v9;
}

id __64__MTAlarmManager__sortedAlarms_date_includeBedtimeNotification___block_invoke(uint64_t a1, void *a2)
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __64__MTAlarmManager__sortedAlarms_date_includeBedtimeNotification___block_invoke_2;
  v10 = &unk_1E7B0F548;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v4 = [a2 sortedArrayUsingComparator:&v7];
  v5 = [MEMORY[0x1E69B3780] futureWithResult:{v4, v7, v8, v9, v10}];

  return v5;
}

uint64_t __64__MTAlarmManager__sortedAlarms_date_includeBedtimeNotification___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEnabled] && objc_msgSend(v6, "isEnabled"))
  {
    v7 = [v5 nextFireDateAfterDate:*(a1 + 32) includeBedtimeNotification:*(a1 + 40)];
    v8 = [v6 nextFireDateAfterDate:*(a1 + 32) includeBedtimeNotification:*(a1 + 40)];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = [v7 compare:v8];
    }

    else if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }
  }

  else if ([v6 isEnabled])
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

+ (id)_filteredAlarms:(id)alarms afterDate:(id)date maxCount:(unint64_t)count filter:(id)filter
{
  filterCopy = filter;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__MTAlarmManager__filteredAlarms_afterDate_maxCount_filter___block_invoke;
  v12[3] = &unk_1E7B0F598;
  v13 = filterCopy;
  countCopy = count;
  v9 = filterCopy;
  v10 = [alarms flatMap:v12];

  return v10;
}

id __60__MTAlarmManager__filteredAlarms_afterDate_maxCount_filter___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([v4 count] >= *(a1 + 40))
      {
        break;
      }

      if ((*(*(a1 + 32) + 16))())
      {
        [v4 addObject:v10];
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = [MEMORY[0x1E69B3780] futureWithResult:v4];

  return v11;
}

- (id)nextAlarmsForDateSync:(id)sync maxCount:(unint64_t)count includeSleepAlarm:(BOOL)alarm includeBedtimeNotification:(BOOL)notification
{
  notificationCopy = notification;
  alarmCopy = alarm;
  syncCopy = sync;
  v12 = [(MTAlarmManager *)self _nextAlarmsForDate:syncCopy maxCount:count includeSleepAlarm:alarmCopy includeBedtimeNotification:notificationCopy doSynchronous:1];
  if (([v12 isFinished] & 1) == 0)
  {
    [MTAlarmManager nextAlarmsForDateSync:a2 maxCount:self includeSleepAlarm:? includeBedtimeNotification:?];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12;
  v21 = __Block_byref_object_dispose__12;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__MTAlarmManager_nextAlarmsForDateSync_maxCount_includeSleepAlarm_includeBedtimeNotification___block_invoke;
  v16[3] = &unk_1E7B0F480;
  v16[4] = &v17;
  v13 = [v12 addCompletionBlock:v16];
  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

- (id)nextAlarmsInRangeSync:(id)sync maxCount:(unint64_t)count includeSleepAlarm:(BOOL)alarm includeBedtimeNotification:(BOOL)notification
{
  notificationCopy = notification;
  alarmCopy = alarm;
  syncCopy = sync;
  v12 = [(MTAlarmManager *)self _nextAlarmsInRange:syncCopy maxCount:count includeSleepAlarm:alarmCopy includeBedtimeNotification:notificationCopy doSynchronous:1];
  if (([v12 isFinished] & 1) == 0)
  {
    [MTAlarmManager nextAlarmsInRangeSync:a2 maxCount:self includeSleepAlarm:? includeBedtimeNotification:?];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12;
  v21 = __Block_byref_object_dispose__12;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__MTAlarmManager_nextAlarmsInRangeSync_maxCount_includeSleepAlarm_includeBedtimeNotification___block_invoke;
  v16[3] = &unk_1E7B0F480;
  v16[4] = &v17;
  v13 = [v12 addCompletionBlock:v16];
  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

- (id)sleepAlarmSync
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  cache = self->_cache;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__MTAlarmManager_sleepAlarmSync__block_invoke;
  v5[3] = &unk_1E7B0F5C0;
  v5[4] = &v6;
  [(MTAlarmCache *)cache getCachedAlarmsSyncWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __32__MTAlarmManager_sleepAlarmSync__block_invoke(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    v6 = result;
    v7 = [a3 firstObject];
    v8 = *(*(v6 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    return MEMORY[0x1EEE66BB8](v7, v9);
  }

  return result;
}

- (id)sleepAlarmsSync
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  cache = self->_cache;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MTAlarmManager_sleepAlarmsSync__block_invoke;
  v5[3] = &unk_1E7B0F5C0;
  v5[4] = &v6;
  [(MTAlarmCache *)cache getCachedAlarmsSyncWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __33__MTAlarmManager_sleepAlarmsSync__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  if (!a5)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v8 = v9;
  }
}

- (id)nextAlarmSync
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  cache = self->_cache;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__MTAlarmManager_nextAlarmSync__block_invoke;
  v5[3] = &unk_1E7B0F5C0;
  v5[4] = &v6;
  [(MTAlarmCache *)cache getCachedAlarmsSyncWithCompletion:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__MTAlarmManager_nextAlarmSync__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  if (!a5)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
    v8 = v9;
  }
}

- (id)alarmWithIDString:(id)string includeSleep:(BOOL)sleep
{
  sleepCopy = sleep;
  v20 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(MTAlarmManager *)self alarmsSyncIncludingSleepAlarm:sleepCopy, 0];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        alarmIDString = [v11 alarmIDString];
        v13 = [alarmIDString isEqualToString:stringCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)_alarmWithIDStringAsync:(id)async
{
  asyncCopy = async;
  v5 = [(MTAlarmManager *)self _alarmsIncludingSleepAlarm:1 doSynchronous:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__MTAlarmManager__alarmWithIDStringAsync___block_invoke;
  v9[3] = &unk_1E7B0F5E8;
  v10 = asyncCopy;
  v6 = asyncCopy;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __42__MTAlarmManager__alarmWithIDStringAsync___block_invoke(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__MTAlarmManager__alarmWithIDStringAsync___block_invoke_2;
  v8[3] = &unk_1E7B0C6B0;
  v9 = *(a1 + 32);
  v3 = [a2 na_firstObjectPassingTest:v8];
  v4 = MEMORY[0x1E69B3780];
  if (v3)
  {
    v5 = [MEMORY[0x1E69B3780] futureWithResult:v3];
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.mobiletimer.MTAlarmManager" code:1 userInfo:0];
    v5 = [v4 futureWithError:v6];
  }

  return v5;
}

uint64_t __42__MTAlarmManager__alarmWithIDStringAsync___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 alarmIDString];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (unint64_t)indexForAlarm:(id)alarm
{
  alarmCopy = alarm;
  alarmsSync = [(MTAlarmManager *)self alarmsSync];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__MTAlarmManager_indexForAlarm___block_invoke;
  v9[3] = &unk_1E7B0F610;
  v10 = alarmCopy;
  v6 = alarmCopy;
  v7 = [alarmsSync indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __32__MTAlarmManager_indexForAlarm___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 alarmIDString];
  v5 = [v3 alarmIDString];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (id)alarmAtIndex:(unint64_t)index
{
  alarmsSync = [(MTAlarmManager *)self alarmsSync];
  if ([alarmsSync count] <= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [alarmsSync objectAtIndexedSubscript:index];
  }

  return v5;
}

- (id)nextSleepAlarm
{
  v3 = objc_opt_new();
  connectionProvider = [(MTAlarmManager *)self connectionProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__MTAlarmManager_nextSleepAlarm__block_invoke;
  v8[3] = &unk_1E7B0F660;
  v5 = v3;
  v9 = v5;
  errorOnlyCompletionHandlerAdapter = [v5 errorOnlyCompletionHandlerAdapter];
  [connectionProvider performRemoteBlock:v8 withErrorHandler:errorOnlyCompletionHandlerAdapter];

  return v5;
}

void __32__MTAlarmManager_nextSleepAlarm__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__MTAlarmManager_nextSleepAlarm__block_invoke_2;
  v3[3] = &unk_1E7B0F638;
  v4 = *(a1 + 32);
  [a2 nextSleepAlarmWithCompletion:v3];
}

uint64_t __32__MTAlarmManager_nextSleepAlarm__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2 | a3)
  {
    return [v3 finishWithResult:a2 error:a3];
  }

  else
  {
    return [v3 finishWithNoResult];
  }
}

- (id)addAlarm:(id)alarm
{
  v21 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    alarmIDString = [alarmCopy alarmIDString];
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = alarmIDString;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ addAlarm:%{public}@", buf, 0x16u);
  }

  v7 = objc_opt_new();
  v8 = MTNewChildActivityForName(0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__MTAlarmManager_addAlarm___block_invoke;
  block[3] = &unk_1E7B0C9A0;
  block[4] = self;
  v15 = alarmCopy;
  v9 = v7;
  v16 = v9;
  v10 = alarmCopy;
  os_activity_apply(v8, block);

  v11 = v16;
  v12 = v9;

  return v9;
}

void __27__MTAlarmManager_addAlarm___block_invoke(id *a1)
{
  v2 = [a1[4] cache];
  [v2 markNeedsUpdate];

  v3 = [a1[4] connectionProvider];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__MTAlarmManager_addAlarm___block_invoke_2;
  v6[3] = &unk_1E7B0F688;
  v7 = a1[5];
  v8 = a1[6];
  v4 = [a1[6] errorOnlyCompletionHandlerAdapter];
  [v3 performRemoteBlock:v6 withErrorHandler:v4];

  [*(a1[4] + 3) logAlarmAdded:{objc_msgSend(a1[5], "isSleepAlarm")}];
  v5 = +[MTAlarmManager assistantSyncNotificationName];
  notify_post([v5 cStringUsingEncoding:4]);
}

void __27__MTAlarmManager_addAlarm___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTAlarmManager - Adding Alarm", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 addAlarm:v5 withCompletion:v6];
}

- (id)updateAlarm:(id)alarm
{
  v21 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    alarmIDString = [alarmCopy alarmIDString];
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = alarmIDString;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ updateAlarm:%{public}@", buf, 0x16u);
  }

  v7 = objc_opt_new();
  v8 = MTNewChildActivityForName(1uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MTAlarmManager_updateAlarm___block_invoke;
  block[3] = &unk_1E7B0C9A0;
  block[4] = self;
  v15 = alarmCopy;
  v9 = v7;
  v16 = v9;
  v10 = alarmCopy;
  os_activity_apply(v8, block);

  v11 = v16;
  v12 = v9;

  return v9;
}

void __30__MTAlarmManager_updateAlarm___block_invoke(id *a1)
{
  v2 = [a1[4] cache];
  [v2 markNeedsUpdate];

  v3 = [a1[4] connectionProvider];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__MTAlarmManager_updateAlarm___block_invoke_2;
  v6[3] = &unk_1E7B0F688;
  v7 = a1[5];
  v8 = a1[6];
  v4 = [a1[6] errorOnlyCompletionHandlerAdapter];
  [v3 performRemoteBlock:v6 withErrorHandler:v4];

  [*(a1[4] + 3) logAlarmUpdated:{objc_msgSend(a1[5], "isSleepAlarm")}];
  v5 = +[MTAlarmManager assistantSyncNotificationName];
  notify_post([v5 cStringUsingEncoding:4]);
}

void __30__MTAlarmManager_updateAlarm___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTAlarmManager - Updating Alarm", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 updateAlarm:v5 withCompletion:v6];
}

- (id)removeAlarm:(id)alarm
{
  v21 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    alarmIDString = [alarmCopy alarmIDString];
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = alarmIDString;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ removeAlarm:%{public}@", buf, 0x16u);
  }

  v7 = objc_opt_new();
  v8 = MTNewChildActivityForName(2uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MTAlarmManager_removeAlarm___block_invoke;
  block[3] = &unk_1E7B0C9A0;
  block[4] = self;
  v15 = alarmCopy;
  v9 = v7;
  v16 = v9;
  v10 = alarmCopy;
  os_activity_apply(v8, block);

  v11 = v16;
  v12 = v9;

  return v9;
}

void __30__MTAlarmManager_removeAlarm___block_invoke(id *a1)
{
  v2 = [a1[4] cache];
  [v2 markNeedsUpdate];

  v3 = [a1[4] connectionProvider];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__MTAlarmManager_removeAlarm___block_invoke_2;
  v6[3] = &unk_1E7B0F688;
  v7 = a1[5];
  v8 = a1[6];
  v4 = [a1[6] errorOnlyCompletionHandlerAdapter];
  [v3 performRemoteBlock:v6 withErrorHandler:v4];

  [*(a1[4] + 3) logAlarmDeleted:{objc_msgSend(a1[5], "isSleepAlarm")}];
  v5 = +[MTAlarmManager assistantSyncNotificationName];
  notify_post([v5 cStringUsingEncoding:4]);
}

void __30__MTAlarmManager_removeAlarm___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTAlarmManager - Removing Alarm", v7, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 removeAlarm:v5 withCompletion:v6];
}

- (id)snoozeAlarmWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(MTAlarmManager *)self _alarmWithIDStringAsync:identifierCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__MTAlarmManager_snoozeAlarmWithIdentifier___block_invoke;
  v9[3] = &unk_1E7B0F6B0;
  v9[4] = self;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [v5 flatMap:v9];

  return v7;
}

uint64_t __44__MTAlarmManager_snoozeAlarmWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if ([a2 isSleepAlarm])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return [v2 snoozeAlarmWithIdentifier:v3 snoozeAction:v4];
}

- (id)snoozeAlarmWithIdentifier:(id)identifier snoozeAction:(unint64_t)action
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v21 = 2114;
    v22 = identifierCopy;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ snoozeAlarmWithIdentifier:%{public}@", buf, 0x16u);
  }

  v8 = objc_opt_new();
  v9 = MTNewChildActivityForName(4uLL);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__MTAlarmManager_snoozeAlarmWithIdentifier_snoozeAction___block_invoke;
  v15[3] = &unk_1E7B0F700;
  v15[4] = self;
  v16 = identifierCopy;
  actionCopy = action;
  v10 = v8;
  v17 = v10;
  v11 = identifierCopy;
  os_activity_apply(v9, v15);

  v12 = v17;
  v13 = v10;

  return v10;
}

void __57__MTAlarmManager_snoozeAlarmWithIdentifier_snoozeAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  [v2 markNeedsUpdate];

  v3 = [*(a1 + 32) connectionProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__MTAlarmManager_snoozeAlarmWithIdentifier_snoozeAction___block_invoke_2;
  v8[3] = &unk_1E7B0F6D8;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v9 = v4;
  v11 = v5;
  v10 = v6;
  v7 = [*(a1 + 48) errorOnlyCompletionHandlerAdapter];
  [v3 performRemoteBlock:v8 withErrorHandler:v7];

  [*(*(a1 + 32) + 24) logAlarmSnoozeAction:*(a1 + 56)];
}

void __57__MTAlarmManager_snoozeAlarmWithIdentifier_snoozeAction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTAlarmManager - Snoozing Alarm", v8, 2u);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 snoozeAlarmWithIdentifier:v6 snoozeAction:v5 withCompletion:v7];
}

- (id)dismissAlarmWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(MTAlarmManager *)self _alarmWithIDStringAsync:identifierCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__MTAlarmManager_dismissAlarmWithIdentifier___block_invoke;
  v9[3] = &unk_1E7B0F6B0;
  v9[4] = self;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [v5 flatMap:v9];

  return v7;
}

uint64_t __45__MTAlarmManager_dismissAlarmWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if ([a2 isSleepAlarm])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return [v2 dismissAlarmWithIdentifier:v3 dismissAction:v4];
}

- (id)dismissAlarmWithIdentifier:(id)identifier dismissAction:(unint64_t)action
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MTDismissAlarmActionDescription(action);
    *buf = 138543874;
    selfCopy = self;
    v22 = 2114;
    v23 = identifierCopy;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissAlarmWithIdentifier:%{public}@ (%{public}@)", buf, 0x20u);
  }

  v9 = objc_opt_new();
  v10 = MTNewChildActivityForName(3uLL);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__MTAlarmManager_dismissAlarmWithIdentifier_dismissAction___block_invoke;
  v16[3] = &unk_1E7B0F700;
  v16[4] = self;
  v17 = identifierCopy;
  actionCopy = action;
  v11 = v9;
  v18 = v11;
  v12 = identifierCopy;
  os_activity_apply(v10, v16);

  v13 = v18;
  v14 = v11;

  return v11;
}

void __59__MTAlarmManager_dismissAlarmWithIdentifier_dismissAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  [v2 markNeedsUpdate];

  v3 = [*(a1 + 32) connectionProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__MTAlarmManager_dismissAlarmWithIdentifier_dismissAction___block_invoke_2;
  v8[3] = &unk_1E7B0F6D8;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v9 = v4;
  v11 = v5;
  v10 = v6;
  v7 = [*(a1 + 48) errorOnlyCompletionHandlerAdapter];
  [v3 performRemoteBlock:v8 withErrorHandler:v7];

  [*(*(a1 + 32) + 24) logAlarmDismissAction:*(a1 + 56)];
}

void __59__MTAlarmManager_dismissAlarmWithIdentifier_dismissAction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTAlarmManager - Dismissing Alarm", v8, 2u);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v3 dismissAlarmWithIdentifier:v6 dismissAction:v5 withCompletion:v7];
}

- (void)didAlertNotificationWithID:(id)d
{
  dCopy = d;
  connectionProvider = [(MTAlarmManager *)self connectionProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__MTAlarmManager_didAlertNotificationWithID___block_invoke;
  v8[3] = &unk_1E7B0F660;
  v9 = dCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MTAlarmManager_didAlertNotificationWithID___block_invoke_2;
  v7[3] = &unk_1E7B0D658;
  v7[4] = self;
  v6 = dCopy;
  [connectionProvider performRemoteBlock:v8 withErrorHandler:v7];
}

void __45__MTAlarmManager_didAlertNotificationWithID___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__MTAlarmManager_didAlertNotificationWithID___block_invoke_2_cold_1();
  }
}

- (id)updateSleepAlarms
{
  v3 = objc_opt_new();
  v4 = MTNewChildActivityForName(1uLL);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__MTAlarmManager_Sleep__updateSleepAlarms__block_invoke;
  v9[3] = &unk_1E7B0C928;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  os_activity_apply(v4, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

void __42__MTAlarmManager_Sleep__updateSleepAlarms__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionProvider];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__MTAlarmManager_Sleep__updateSleepAlarms__block_invoke_2;
  v4[3] = &unk_1E7B0F660;
  v5 = *(a1 + 40);
  v3 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v2 performRemoteBlock:v4 withErrorHandler:v3];
}

void __42__MTAlarmManager_Sleep__updateSleepAlarms__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTAlarmManager - Refreshing Sleep Alarms", v6, 2u);
  }

  v5 = [*(a1 + 32) errorOnlyCompletionHandlerAdapter];
  [v3 updateSleepAlarmsWithCompletion:v5];
}

- (id)resetSleepAlarmSnoozeState
{
  v3 = objc_opt_new();
  v4 = MTNewChildActivityForName(1uLL);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__MTAlarmManager_Sleep__resetSleepAlarmSnoozeState__block_invoke;
  v9[3] = &unk_1E7B0C928;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  os_activity_apply(v4, v9);

  v6 = v10;
  v7 = v5;

  return v5;
}

void __51__MTAlarmManager_Sleep__resetSleepAlarmSnoozeState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionProvider];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__MTAlarmManager_Sleep__resetSleepAlarmSnoozeState__block_invoke_2;
  v4[3] = &unk_1E7B0F660;
  v5 = *(a1 + 40);
  v3 = [*(a1 + 40) errorOnlyCompletionHandlerAdapter];
  [v2 performRemoteBlock:v4 withErrorHandler:v3];
}

void __51__MTAlarmManager_Sleep__resetSleepAlarmSnoozeState__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MTLogForCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_INFO, "MTAlarmManager - Resetting Sleep Alarms Snooze State", v6, 2u);
  }

  v5 = [*(a1 + 32) errorOnlyCompletionHandlerAdapter];
  [v3 resetSleepAlarmSnoozeStateWithCompletion:v5];
}

- (id)nextExpectedRefreshDate
{
  v16 = *MEMORY[0x1E69E9840];
  nextWidgetAlarmInThreshold = [(MTAlarmManager *)self nextWidgetAlarmInThreshold];
  v4 = nextWidgetAlarmInThreshold;
  if (nextWidgetAlarmInThreshold)
  {
    nextFireDate = [nextWidgetAlarmInThreshold nextFireDate];
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543874;
      selfCopy = self;
      v12 = 2114;
      v13 = v4;
      v14 = 2114;
      v15 = nextFireDate;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ next alarm: %{public}@. nextExpectedRefreshDate at %{public}@", &v10, 0x20u);
    }
  }

  else
  {
    nextFutureAlarmDate = [(MTAlarmManager *)self nextFutureAlarmDate];
    if (nextFutureAlarmDate)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      nextFireDate = [currentCalendar dateByAddingUnit:32 value:-20 toDate:nextFutureAlarmDate options:0];
    }

    else
    {
      nextFireDate = 0;
    }
  }

  return nextFireDate;
}

- (id)nextAlarmInHoursThreshold:(int64_t)threshold
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [currentCalendar dateByAddingUnit:32 value:threshold toDate:date options:0];

  v8 = objc_alloc(MEMORY[0x1E696AB80]);
  date2 = [MEMORY[0x1E695DF00] date];
  v10 = [v8 initWithStartDate:date2 endDate:v7];

  v11 = [(MTAlarmManager *)self nextAlarmsInRangeSync:v10 maxCount:1 includeSleepAlarm:1];
  firstObject = [v11 firstObject];

  return firstObject;
}

- (id)nextFutureAlarmDate
{
  v2 = [(MTAlarmManager *)self nextAlarmInHoursThreshold:168];
  nextFireDate = [v2 nextFireDate];

  return nextFireDate;
}

- (void)didShowCoversheetForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  connectionProvider = [(MTAlarmManager *)self connectionProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MTAlarmManager_Analytics__didShowCoversheetForIdentifier___block_invoke;
  v8[3] = &unk_1E7B0F660;
  v9 = identifierCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MTAlarmManager_Analytics__didShowCoversheetForIdentifier___block_invoke_2;
  v7[3] = &unk_1E7B0D658;
  v7[4] = self;
  v6 = identifierCopy;
  [connectionProvider performRemoteBlock:v8 withErrorHandler:v7];
}

void __60__MTAlarmManager_Analytics__didShowCoversheetForIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__MTAlarmManager_Analytics__didShowCoversheetForIdentifier___block_invoke_2_cold_1();
  }
}

- (void)didRenderSceneForAlarm:(id)alarm withType:(id)type
{
  alarmCopy = alarm;
  typeCopy = type;
  connectionProvider = [(MTAlarmManager *)self connectionProvider];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__MTAlarmManager_Analytics__didRenderSceneForAlarm_withType___block_invoke;
  v12[3] = &unk_1E7B0F688;
  v13 = alarmCopy;
  v14 = typeCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__MTAlarmManager_Analytics__didRenderSceneForAlarm_withType___block_invoke_2;
  v11[3] = &unk_1E7B0D658;
  v11[4] = self;
  v9 = typeCopy;
  v10 = alarmCopy;
  [connectionProvider performRemoteBlock:v12 withErrorHandler:v11];
}

void __61__MTAlarmManager_Analytics__didRenderSceneForAlarm_withType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __61__MTAlarmManager_Analytics__didRenderSceneForAlarm_withType___block_invoke_2_cold_1();
  }
}

- (void)didPostToneAlert:(id)alert
{
  alertCopy = alert;
  connectionProvider = [(MTAlarmManager *)self connectionProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__MTAlarmManager_Analytics__didPostToneAlert___block_invoke;
  v8[3] = &unk_1E7B0F660;
  v9 = alertCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__MTAlarmManager_Analytics__didPostToneAlert___block_invoke_2;
  v7[3] = &unk_1E7B0D658;
  v7[4] = self;
  v6 = alertCopy;
  [connectionProvider performRemoteBlock:v8 withErrorHandler:v7];
}

void __46__MTAlarmManager_Analytics__didPostToneAlert___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 toneIdentifier];
  [v3 didPostToneAlertWithIdentifier:v4];
}

void __46__MTAlarmManager_Analytics__didPostToneAlert___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __46__MTAlarmManager_Analytics__didPostToneAlert___block_invoke_2_cold_1();
  }
}

- (void)didTearDownToneAlert:(id)alert
{
  alertCopy = alert;
  connectionProvider = [(MTAlarmManager *)self connectionProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__MTAlarmManager_Analytics__didTearDownToneAlert___block_invoke;
  v8[3] = &unk_1E7B0F660;
  v9 = alertCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MTAlarmManager_Analytics__didTearDownToneAlert___block_invoke_2;
  v7[3] = &unk_1E7B0D658;
  v7[4] = self;
  v6 = alertCopy;
  [connectionProvider performRemoteBlock:v8 withErrorHandler:v7];
}

void __50__MTAlarmManager_Analytics__didTearDownToneAlert___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 toneIdentifier];
  [v3 didTearDownToneAlertWithIdentifier:v4];
}

void __50__MTAlarmManager_Analytics__didTearDownToneAlert___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__MTAlarmManager_Analytics__didTearDownToneAlert___block_invoke_2_cold_1();
  }
}

- (void)didDuckPlaybackForAttentionAwarenessWithId:(id)id
{
  idCopy = id;
  connectionProvider = [(MTAlarmManager *)self connectionProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__MTAlarmManager_Analytics__didDuckPlaybackForAttentionAwarenessWithId___block_invoke;
  v8[3] = &unk_1E7B0F660;
  v9 = idCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__MTAlarmManager_Analytics__didDuckPlaybackForAttentionAwarenessWithId___block_invoke_2;
  v7[3] = &unk_1E7B0D658;
  v7[4] = self;
  v6 = idCopy;
  [connectionProvider performRemoteBlock:v8 withErrorHandler:v7];
}

void __72__MTAlarmManager_Analytics__didDuckPlaybackForAttentionAwarenessWithId___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __72__MTAlarmManager_Analytics__didDuckPlaybackForAttentionAwarenessWithId___block_invoke_2_cold_1();
  }
}

- (void)didTriggerSoundPlaybackWithId:(id)id
{
  idCopy = id;
  connectionProvider = [(MTAlarmManager *)self connectionProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__MTAlarmManager_Analytics__didTriggerSoundPlaybackWithId___block_invoke;
  v8[3] = &unk_1E7B0F660;
  v9 = idCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__MTAlarmManager_Analytics__didTriggerSoundPlaybackWithId___block_invoke_2;
  v7[3] = &unk_1E7B0D658;
  v7[4] = self;
  v6 = idCopy;
  [connectionProvider performRemoteBlock:v8 withErrorHandler:v7];
}

void __59__MTAlarmManager_Analytics__didTriggerSoundPlaybackWithId___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59__MTAlarmManager_Analytics__didTriggerSoundPlaybackWithId___block_invoke_2_cold_1();
  }
}

- (void)didUpdateAudioReporterId:(int64_t)id
{
  connectionProvider = [(MTAlarmManager *)self connectionProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MTAlarmManager_Analytics__didUpdateAudioReporterId___block_invoke;
  v7[3] = &__block_descriptor_40_e25_v16__0___MTAlarmServer__8l;
  v7[4] = id;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__MTAlarmManager_Analytics__didUpdateAudioReporterId___block_invoke_2;
  v6[3] = &unk_1E7B0D658;
  v6[4] = self;
  [connectionProvider performRemoteBlock:v7 withErrorHandler:v6];
}

void __54__MTAlarmManager_Analytics__didUpdateAudioReporterId___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  [v4 didUpdateAudioReporterId:v5];
}

void __54__MTAlarmManager_Analytics__didUpdateAudioReporterId___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__MTAlarmManager_Analytics__didUpdateAudioReporterId___block_invoke_2_cold_1();
  }
}

- (void)didStopSoundPlaybackWithId:(id)id
{
  idCopy = id;
  connectionProvider = [(MTAlarmManager *)self connectionProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MTAlarmManager_Analytics__didStopSoundPlaybackWithId___block_invoke;
  v8[3] = &unk_1E7B0F660;
  v9 = idCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MTAlarmManager_Analytics__didStopSoundPlaybackWithId___block_invoke_2;
  v7[3] = &unk_1E7B0D658;
  v7[4] = self;
  v6 = idCopy;
  [connectionProvider performRemoteBlock:v8 withErrorHandler:v7];
}

void __56__MTAlarmManager_Analytics__didStopSoundPlaybackWithId___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__MTAlarmManager_Analytics__didStopSoundPlaybackWithId___block_invoke_2_cold_1();
  }
}

void __27__MTAlarmManager_reconnect__block_invoke_52_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ error while reconnecting: %{public}@");
}

- (void)alarmsSyncIncludingSleepAlarm:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTAlarmManager.m" lineNumber:317 description:@"Expected alarm future to be finished."];
}

- (void)nextAlarmsForDateSync:(uint64_t)a1 maxCount:(uint64_t)a2 includeSleepAlarm:includeBedtimeNotification:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTAlarmManager.m" lineNumber:512 description:@"Expected next alarm future to be finished."];
}

- (void)nextAlarmsInRangeSync:(uint64_t)a1 maxCount:(uint64_t)a2 includeSleepAlarm:includeBedtimeNotification:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MTAlarmManager.m" lineNumber:528 description:@"Expected next alarm future to be finished."];
}

void __45__MTAlarmManager_didAlertNotificationWithID___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ couldn't connect to alarm server for didAlertNotificationWithID with error: %{public}@ ");
}

void __60__MTAlarmManager_Analytics__didShowCoversheetForIdentifier___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ couldn't connect to alarm server for didShowCoversheetForIdentifier with error: %{public}@ ");
}

void __61__MTAlarmManager_Analytics__didRenderSceneForAlarm_withType___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ couldn't connect to alarm server for didRenderSceneForAlarm with error: %{public}@ ");
}

void __46__MTAlarmManager_Analytics__didPostToneAlert___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ couldn't connect to alarm server for didPostToneAlertWithIdentifier with error: %{public}@ ");
}

void __50__MTAlarmManager_Analytics__didTearDownToneAlert___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ couldn't connect to alarm server for didTearDownToneAlertWithIdentifier with error: %{public}@ ");
}

void __72__MTAlarmManager_Analytics__didDuckPlaybackForAttentionAwarenessWithId___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ couldn't connect to alarm server for didDuckPlaybackForAttentionAwarenessWithId with error: %{public}@ ");
}

void __59__MTAlarmManager_Analytics__didTriggerSoundPlaybackWithId___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ couldn't connect to alarm server for didTriggerSoundPlaybackWithId with error: %{public}@ ");
}

void __54__MTAlarmManager_Analytics__didUpdateAudioReporterId___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ couldn't connect to alarm server for didUpdateAudioReporterId with error: %{public}@ ");
}

void __56__MTAlarmManager_Analytics__didStopSoundPlaybackWithId___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2(&dword_1B1F9F000, v0, v1, "%{public}@ couldn't connect to alarm server for didStopSoundPlaybackWithId with error: %{public}@ ");
}

@end