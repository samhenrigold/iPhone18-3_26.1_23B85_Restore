@interface DDSBackgroundActivityScheduler
- (DDSBackgroundActivityScheduler)init;
- (void)cancelActivityWithIdentifier:(id)identifier;
- (void)scheduleActivityWithIdentifier:(id)identifier interval:(double)interval tolerance:(double)tolerance;
@end

@implementation DDSBackgroundActivityScheduler

- (DDSBackgroundActivityScheduler)init
{
  v5.receiver = self;
  v5.super_class = DDSBackgroundActivityScheduler;
  v2 = [(DDSBackgroundActivityScheduler *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(DDSBackgroundActivityScheduler *)v2 setSchedulerByIdentifier:v3];
  }

  return v2;
}

- (void)scheduleActivityWithIdentifier:(id)identifier interval:(double)interval tolerance:(double)tolerance
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  date = [MEMORY[0x1E695DF00] date];
  v10 = [date dateByAddingTimeInterval:interval];

  v12 = UpdateLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [DDSBackgroundActivityScheduler scheduleActivityWithIdentifier:v10 interval:v12 tolerance:interval];
  }

  v14 = UpdateLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = DDS_STRING_FROM_DATE(v10);
    *buf = 138543874;
    v24 = identifierCopy;
    v25 = 2114;
    v26 = v15;
    v27 = 2048;
    toleranceCopy = tolerance;
    _os_log_impl(&dword_1DF7C6000, v14, OS_LOG_TYPE_DEFAULT, "Scheduling activity: %{public}@ for approximately %{public}@ (tolerance of %ld seconds)", buf, 0x20u);
  }

  v16 = [objc_alloc(MEMORY[0x1E696AAD0]) initWithIdentifier:identifierCopy];
  [v16 setQualityOfService:17];
  [v16 setRepeats:0];
  [v16 setDelay:interval];
  [v16 setTolerance:tolerance];
  v17 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v17, *MEMORY[0x1E69E9C68], interval);
  [v16 _setAdditionalXPCActivityProperties:v17];
  schedulerByIdentifier = [(DDSBackgroundActivityScheduler *)self schedulerByIdentifier];
  [schedulerByIdentifier setObject:v16 forKey:identifierCopy];

  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__DDSBackgroundActivityScheduler_scheduleActivityWithIdentifier_interval_tolerance___block_invoke;
  v20[3] = &unk_1E86C5FE8;
  objc_copyWeak(&v22, buf);
  v19 = identifierCopy;
  v21 = v19;
  [v16 scheduleWithBlock:v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

void __84__DDSBackgroundActivityScheduler_scheduleActivityWithIdentifier_interval_tolerance___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = UpdateLog(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Scheduled activity %{public}@ fired!", &v10, 0xCu);
    }

    v8 = [v5 delegate];
    [v8 performScheduledActivityWithIdentifier:*(a1 + 32)];

    v9 = [v5 schedulerByIdentifier];
    [v9 removeObjectForKey:*(a1 + 32)];
  }

  v3[2](v3, 1);
}

- (void)cancelActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  schedulerByIdentifier = [(DDSBackgroundActivityScheduler *)self schedulerByIdentifier];
  v7 = [schedulerByIdentifier objectForKeyedSubscript:identifierCopy];

  v6 = v7;
  if (v7)
  {
    [v7 invalidate];
    v6 = v7;
  }
}

- (void)scheduleActivityWithIdentifier:(void *)a1 interval:(NSObject *)a2 tolerance:(double)a3 .cold.1(void *a1, NSObject *a2, double a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = DDS_STRING_FROM_DATE(v6);
  v8 = DDS_STRING_FROM_DATE(a1);
  v9 = 134218498;
  v10 = a3;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Delay: %ld Now: %{public}@ Future: %{public}@", &v9, 0x20u);
}

@end