@interface EDSearchableIndexSchedulerState
- (BOOL)_isIndexingEnabledByActivitiesOrTasks;
- (BOOL)isIndexingEnabledByActivities;
- (BOOL)isIndexingEnabledForActivityType:(id)type;
- (BOOL)isIndexingEnabledForTaskType:(id)type;
- (EDSearchableIndexSchedulerState)init;
- (NSDictionary)powerEventData;
- (void)didIndexForTime:(double)time;
- (void)didIndexItemCount:(int64_t)count;
- (void)disableIndexingForActivityType:(id)type;
- (void)disableIndexingForTaskType:(id)type;
- (void)enableIndexingForActivityType:(id)type;
- (void)enableIndexingForTaskType:(id)type;
- (void)setDataSourceIndexingPermitted:(BOOL)permitted;
@end

@implementation EDSearchableIndexSchedulerState

- (EDSearchableIndexSchedulerState)init
{
  v8.receiver = self;
  v8.super_class = EDSearchableIndexSchedulerState;
  v2 = [(EDSearchableIndexSchedulerState *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    indexingEnabledForActivityTypes = v2->_indexingEnabledForActivityTypes;
    v2->_indexingEnabledForActivityTypes = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    indexingEnabledForTaskTypes = v2->_indexingEnabledForTaskTypes;
    v2->_indexingEnabledForTaskTypes = v5;

    *&v2->_otherIndexingTime = 0u;
    *&v2->_fastPassIndexedItemCount = 0u;
  }

  return v2;
}

- (void)setDataSourceIndexingPermitted:(BOOL)permitted
{
  if (self->_dataSourceIndexingPermitted != permitted)
  {
    self->_dataSourceIndexingPermitted = permitted;
    if (permitted)
    {
      [(EDSearchableIndexSchedulerState *)self setOtherIndexingTime:0.0];

      [(EDSearchableIndexSchedulerState *)self setFastPassIndexingTime:0.0];
    }
  }
}

- (NSDictionary)powerEventData
{
  v38[2] = *MEMORY[0x1E69E9840];
  v37[0] = @"maintenanceIndexingTime";
  v3 = MEMORY[0x1E696AD98];
  [(EDSearchableIndexSchedulerState *)self maintenanceIndexingTime];
  v4 = [v3 numberWithDouble:?];
  v37[1] = @"extraIndexingTime";
  v38[0] = v4;
  v5 = MEMORY[0x1E696AD98];
  [(EDSearchableIndexSchedulerState *)self otherIndexingTime];
  v6 = [v5 numberWithDouble:?];
  v38[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v8 = [v7 mutableCopy];

  [(EDSearchableIndexSchedulerState *)self fastPassIndexingTime];
  if (v9 != 0.0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(EDSearchableIndexSchedulerState *)self fastPassIndexingTime];
    v11 = [v10 numberWithDouble:?];
    [v8 setObject:v11 forKeyedSubscript:@"fastPassIndexingTime"];
  }

  if ([(EDSearchableIndexSchedulerState *)self fastPassIndexedItemCount])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[EDSearchableIndexSchedulerState fastPassIndexedItemCount](self, "fastPassIndexedItemCount")}];
    [v8 setObject:v12 forKeyedSubscript:@"fastPassIndexedItemCount"];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = +[EDSearchableIndexScheduler activityTypes];
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v14)
  {
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = [(EDSearchableIndexSchedulerState *)self isIndexingEnabledForActivityType:v17];
        v19 = [MEMORY[0x1E696AD98] numberWithBool:v18];
        [v8 setObject:v19 forKeyedSubscript:v17];
      }

      v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v14);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = +[EDSearchableIndexScheduler taskTypes];
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v21)
  {
    v22 = *v28;
    v23 = MEMORY[0x1E695E118];
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v27 + 1) + 8 * j);
        if ([(EDSearchableIndexSchedulerState *)self isIndexingEnabledForTaskType:v25])
        {
          [v8 setObject:v23 forKeyedSubscript:v25];
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v21);
  }

  return v8;
}

- (BOOL)isIndexingEnabledByActivities
{
  indexingEnabledForActivityTypes = [(EDSearchableIndexSchedulerState *)self indexingEnabledForActivityTypes];
  v3 = [indexingEnabledForActivityTypes count] != 0;

  return v3;
}

- (BOOL)_isIndexingEnabledByActivitiesOrTasks
{
  indexingEnabledForActivityTypes = [(EDSearchableIndexSchedulerState *)self indexingEnabledForActivityTypes];
  if ([indexingEnabledForActivityTypes count])
  {
    v4 = 1;
  }

  else
  {
    indexingEnabledForTaskTypes = [(EDSearchableIndexSchedulerState *)self indexingEnabledForTaskTypes];
    v4 = [indexingEnabledForTaskTypes count] != 0;
  }

  return v4;
}

- (BOOL)isIndexingEnabledForActivityType:(id)type
{
  typeCopy = type;
  indexingEnabledForActivityTypes = [(EDSearchableIndexSchedulerState *)self indexingEnabledForActivityTypes];
  v6 = [indexingEnabledForActivityTypes containsObject:typeCopy];

  return v6;
}

- (void)enableIndexingForActivityType:(id)type
{
  typeCopy = type;
  [(NSMutableSet *)self->_indexingEnabledForActivityTypes addObject:?];
  [(EDSearchableIndexSchedulerState *)self setDataSourceIndexingPermitted:[(EDSearchableIndexSchedulerState *)self _isIndexingEnabledByActivitiesOrTasks]];
}

- (void)disableIndexingForActivityType:(id)type
{
  typeCopy = type;
  [(NSMutableSet *)self->_indexingEnabledForActivityTypes removeObject:?];
  [(EDSearchableIndexSchedulerState *)self setDataSourceIndexingPermitted:[(EDSearchableIndexSchedulerState *)self _isIndexingEnabledByActivitiesOrTasks]];
}

- (BOOL)isIndexingEnabledForTaskType:(id)type
{
  typeCopy = type;
  indexingEnabledForTaskTypes = [(EDSearchableIndexSchedulerState *)self indexingEnabledForTaskTypes];
  v6 = [indexingEnabledForTaskTypes containsObject:typeCopy];

  return v6;
}

- (void)enableIndexingForTaskType:(id)type
{
  typeCopy = type;
  [(NSMutableSet *)self->_indexingEnabledForTaskTypes addObject:?];
  [(EDSearchableIndexSchedulerState *)self setDataSourceIndexingPermitted:[(EDSearchableIndexSchedulerState *)self _isIndexingEnabledByActivitiesOrTasks]];
}

- (void)disableIndexingForTaskType:(id)type
{
  typeCopy = type;
  [(NSMutableSet *)self->_indexingEnabledForTaskTypes removeObject:?];
  [(EDSearchableIndexSchedulerState *)self setDataSourceIndexingPermitted:[(EDSearchableIndexSchedulerState *)self _isIndexingEnabledByActivitiesOrTasks]];
}

- (void)didIndexForTime:(double)time
{
  if ([(EDSearchableIndexSchedulerState *)self isIndexingEnabledForActivityType:@"maintenance"])
  {
    [(EDSearchableIndexSchedulerState *)self maintenanceIndexingTime];
    [(EDSearchableIndexSchedulerState *)self setMaintenanceIndexingTime:v5 + time];
  }

  else
  {
    [(EDSearchableIndexSchedulerState *)self isIndexingEnabledForActivityType:@"budgeted"];
  }

  if ([(EDSearchableIndexSchedulerState *)self isIndexingEnabledForTaskType:@"fastpass"])
  {
    [(EDSearchableIndexSchedulerState *)self fastPassIndexingTime];
    [(EDSearchableIndexSchedulerState *)self setFastPassIndexingTime:v6 + time];
  }

  if (![(EDSearchableIndexSchedulerState *)self _isIndexingEnabledByActivitiesOrTasks])
  {
    [(EDSearchableIndexSchedulerState *)self otherIndexingTime];
    v8 = v7 + time;

    [(EDSearchableIndexSchedulerState *)self setOtherIndexingTime:v8];
  }
}

- (void)didIndexItemCount:(int64_t)count
{
  if ([(EDSearchableIndexSchedulerState *)self isIndexingEnabledForTaskType:@"fastpass"])
  {
    self->_fastPassIndexedItemCount += count;
  }
}

@end