@interface MTLegacyStopwatchMigrator
- (BOOL)needsMigration;
- (MTLegacyStopwatchMigrator)initWithDefaults:(id)defaults manager:(id)manager;
- (id)generateStopwatchFromDefaults;
- (id)migrateLegacyStopwatch;
- (void)eraseLocalDefaults;
- (void)loadInitialState;
@end

@implementation MTLegacyStopwatchMigrator

- (void)loadInitialState
{
  defaults = [(MTLegacyStopwatchMigrator *)self defaults];
  -[MTLegacyStopwatchMigrator setIsTimerRunning:](self, "setIsTimerRunning:", [defaults BOOLForKey:@"TIMERRUNNING"]);

  defaults2 = [(MTLegacyStopwatchMigrator *)self defaults];
  v4 = [defaults2 objectForKey:@"LASTTIME"];
  [v4 doubleValue];
  [(MTLegacyStopwatchMigrator *)self setCurrentInterval:?];
}

- (MTLegacyStopwatchMigrator)initWithDefaults:(id)defaults manager:(id)manager
{
  v14 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = MTLegacyStopwatchMigrator;
  v8 = [(MTLegacyStopwatchMigrator *)&v11 init];
  if (v8)
  {
    v9 = MTLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_22D741000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ initialized", buf, 0xCu);
    }

    [(MTLegacyStopwatchMigrator *)v8 setDefaults:defaultsCopy];
    [(MTLegacyStopwatchMigrator *)v8 setManager:managerCopy];
    [(MTLegacyStopwatchMigrator *)v8 loadInitialState];
  }

  return v8;
}

- (id)migrateLegacyStopwatch
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_22D741000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ migrating legacy stopwatch", buf, 0xCu);
  }

  generateStopwatchFromDefaults = [(MTLegacyStopwatchMigrator *)self generateStopwatchFromDefaults];
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v15 = 2114;
    v16 = generateStopwatchFromDefaults;
    _os_log_impl(&dword_22D741000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ generated stopwatch from previous defaults: %{public}@", buf, 0x16u);
  }

  manager = [(MTLegacyStopwatchMigrator *)self manager];
  getStopwatches = [manager getStopwatches];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__MTLegacyStopwatchMigrator_migrateLegacyStopwatch__block_invoke;
  v11[3] = &unk_278770B28;
  v11[4] = self;
  v12 = generateStopwatchFromDefaults;
  v8 = generateStopwatchFromDefaults;
  v9 = [getStopwatches flatMap:v11];

  return v9;
}

id __51__MTLegacyStopwatchMigrator_migrateLegacyStopwatch__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  v4 = MTLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_22D741000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved default stopwatch: %{public}@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) manager];
  v7 = [v6 createStopwatch:*(a1 + 40)];

  if (v3)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__MTLegacyStopwatchMigrator_migrateLegacyStopwatch__block_invoke_16;
    v10[3] = &unk_278770B00;
    v10[4] = *(a1 + 32);
    v11 = v3;
    v8 = [v7 flatMap:v10];
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

id __51__MTLegacyStopwatchMigrator_migrateLegacyStopwatch__block_invoke_16(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MTLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_22D741000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ created stopwatch from previous defaults, proceeding to delete default one", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) manager];
  v5 = [v4 removeStopwatch:*(a1 + 40)];

  return v5;
}

- (BOOL)needsMigration
{
  if ([(MTLegacyStopwatchMigrator *)self isTimerRunning])
  {
    return 1;
  }

  [(MTLegacyStopwatchMigrator *)self currentInterval];
  return v4 > 0.0;
}

- (id)generateStopwatchFromDefaults
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  defaults = [(MTLegacyStopwatchMigrator *)self defaults];
  v5 = [defaults objectForKey:@"LAPS"];

  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        [v3 addObject:v11];
        [v11 doubleValue];
        v9 = v9 + v12;
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  defaults2 = [(MTLegacyStopwatchMigrator *)self defaults];
  v14 = [defaults2 objectForKey:@"OFFSET"];
  [v14 doubleValue];
  v16 = v15;

  defaults3 = [(MTLegacyStopwatchMigrator *)self defaults];
  v18 = [defaults3 objectForKey:@"STARTTIME"];

  v19 = objc_opt_new();
  v20 = [v19 mutableCopy];

  [v20 setStartDate:v18];
  [v20 setOffset:v16];
  [(MTLegacyStopwatchMigrator *)self currentInterval];
  [v20 setCurrentInterval:?];
  [v20 setPreviousLapsTotalInterval:v9];
  [v20 setLaps:v3];
  [v20 setState:0];
  if ([(MTLegacyStopwatchMigrator *)self isTimerRunning])
  {
    v21 = 2;
  }

  else
  {
    [(MTLegacyStopwatchMigrator *)self currentInterval];
    if (v22 <= 0.0)
    {
      goto LABEL_15;
    }

    v21 = 1;
  }

  [v20 setState:v21];
LABEL_15:

  return v20;
}

- (void)eraseLocalDefaults
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MTLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_22D741000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ erasing local defaults", &v9, 0xCu);
  }

  defaults = [(MTLegacyStopwatchMigrator *)self defaults];
  [defaults removeObjectForKey:@"TIMERRUNNING"];

  defaults2 = [(MTLegacyStopwatchMigrator *)self defaults];
  [defaults2 removeObjectForKey:@"LASTTIME"];

  defaults3 = [(MTLegacyStopwatchMigrator *)self defaults];
  [defaults3 removeObjectForKey:@"LAPS"];

  defaults4 = [(MTLegacyStopwatchMigrator *)self defaults];
  [defaults4 removeObjectForKey:@"OFFSET"];

  defaults5 = [(MTLegacyStopwatchMigrator *)self defaults];
  [defaults5 removeObjectForKey:@"STARTTIME"];
}

@end