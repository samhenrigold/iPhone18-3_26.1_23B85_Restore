@interface ATXContextualActionManager
- (ATXContextualActionManager)init;
- (ATXContextualActionManager)initWithStaticActions:(id)actions;
- (double)getIntervalSinceOldestEvent;
- (id)getAllCounts;
- (id)getCountsForContext:(id)context;
- (void)_getActionsFromLastMonth;
- (void)_updateCacheIfNeeded;
@end

@implementation ATXContextualActionManager

- (ATXContextualActionManager)init
{
  v8.receiver = self;
  v8.super_class = ATXContextualActionManager;
  v2 = [(ATXContextualActionManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    actionCountCache = v2->actionCountCache;
    v2->actionCountCache = v3;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    actionCountCacheCreationDate = v2->actionCountCacheCreationDate;
    v2->actionCountCacheCreationDate = distantPast;
  }

  return v2;
}

- (id)getCountsForContext:(id)context
{
  contextCopy = context;
  [(ATXContextualActionManager *)self _updateCacheIfNeeded];
  v5 = [(ATXContextualActionCountCache *)self->actionCountCache getCountsForContext:contextCopy];

  return v5;
}

- (id)getAllCounts
{
  [(ATXContextualActionManager *)self _updateCacheIfNeeded];
  actionCountCache = self->actionCountCache;

  return [(ATXContextualActionCountCache *)actionCountCache getAllCounts];
}

- (double)getIntervalSinceOldestEvent
{
  [(ATXContextualActionManager *)self _updateCacheIfNeeded];
  oldestAction = [(ATXContextualActionCountCache *)self->actionCountCache oldestAction];
  [oldestAction timeIntervalSinceNow];
  v5 = -v4;

  return v5;
}

- (void)_updateCacheIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [v3 timeIntervalSinceDate:self->actionCountCacheCreationDate];
  v6 = v5;
  p_super = __atxlog_handle_dailyroutines(v4);
  v8 = os_log_type_enabled(p_super, OS_LOG_TYPE_INFO);
  if (v6 <= 3600.0)
  {
    if (v8)
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_2263AA000, p_super, OS_LOG_TYPE_INFO, "Using cached counts. Cache age: %f", &v10, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_2263AA000, p_super, OS_LOG_TYPE_INFO, "Updating cached counts. Cache age: %f", &v10, 0xCu);
    }

    [(ATXContextualActionManager *)self _getActionsFromLastMonth];
    v9 = v3;
    p_super = &self->actionCountCacheCreationDate->super;
    self->actionCountCacheCreationDate = v9;
  }
}

- (void)_getActionsFromLastMonth
{
  v7 = +[_ATXDataStore sharedInstance];
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [v3 dateByAddingTimeInterval:-2419200.0];
  v5 = [v7 minimalActionParametersforActionsBetweenStartDate:v4 endDate:v3 limit:2000];
  actionCountCache = self->actionCountCache;
  self->actionCountCache = v5;
}

- (ATXContextualActionManager)initWithStaticActions:(id)actions
{
  v22 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v20.receiver = self;
  v20.super_class = ATXContextualActionManager;
  v5 = [(ATXContextualActionManager *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_new();
    actionCountCache = v5->actionCountCache;
    v5->actionCountCache = v6;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = actionsCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(ATXContextualActionCountCache *)v5->actionCountCache addMinimalActionParameter:*(*(&v16 + 1) + 8 * v12++), v16];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    actionCountCacheCreationDate = v5->actionCountCacheCreationDate;
    v5->actionCountCacheCreationDate = distantFuture;
  }

  return v5;
}

@end