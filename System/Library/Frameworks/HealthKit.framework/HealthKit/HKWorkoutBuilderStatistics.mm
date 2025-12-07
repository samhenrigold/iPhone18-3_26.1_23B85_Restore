@interface HKWorkoutBuilderStatistics
- (BOOL)isEmpty;
- (HKWorkoutBuilderStatistics)initWithCoder:(id)coder;
- (NSDictionary)activitiesStatistics;
- (NSDictionary)workoutStatistics;
- (NSSet)allTypes;
- (void)addActivityStatistics:(id)statistics forType:(id)type activityUUID:(id)d;
- (void)addWorkoutStatistics:(id)statistics forType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkoutBuilderStatistics

- (void)encodeWithCoder:(id)coder
{
  workoutStatistics = self->_workoutStatistics;
  coderCopy = coder;
  [coderCopy encodeObject:workoutStatistics forKey:@"workout_stats"];
  [coderCopy encodeObject:self->_activitiesStatistics forKey:@"activities_stats"];
}

- (HKWorkoutBuilderStatistics)initWithCoder:(id)coder
{
  v19[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HKWorkoutBuilderStatistics;
  v5 = [(HKWorkoutBuilderStatistics *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"workout_stats"];
    workoutStatistics = v5->_workoutStatistics;
    v5->_workoutStatistics = v9;

    v11 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
    v13 = [v11 setWithArray:v12];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"activities_stats"];
    activitiesStatistics = v5->_activitiesStatistics;
    v5->_activitiesStatistics = v14;
  }

  return v5;
}

- (NSDictionary)workoutStatistics
{
  v2 = [(NSMutableDictionary *)self->_workoutStatistics copy];

  return v2;
}

- (NSDictionary)activitiesStatistics
{
  v2 = [(NSMutableDictionary *)self->_activitiesStatistics copy];

  return v2;
}

- (BOOL)isEmpty
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_workoutStatistics count])
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_activitiesStatistics;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_activitiesStatistics objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];
        v10 = [v9 count];

        if (v10)
        {
          v3 = 0;
          goto LABEL_13;
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v3 = 1;
LABEL_13:

  return v3;
}

- (NSSet)allTypes
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  allKeys = [(NSMutableDictionary *)self->_workoutStatistics allKeys];
  v5 = [v3 setWithArray:allKeys];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_activitiesStatistics;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_activitiesStatistics objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i), v14];
        allKeys2 = [v11 allKeys];
        [v5 addObjectsFromArray:allKeys2];
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)addWorkoutStatistics:(id)statistics forType:(id)type
{
  statisticsCopy = statistics;
  typeCopy = type;
  workoutStatistics = self->_workoutStatistics;
  if (!workoutStatistics)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_workoutStatistics;
    self->_workoutStatistics = v8;

    workoutStatistics = self->_workoutStatistics;
  }

  [(NSMutableDictionary *)workoutStatistics setObject:statisticsCopy forKeyedSubscript:typeCopy];
}

- (void)addActivityStatistics:(id)statistics forType:(id)type activityUUID:(id)d
{
  statisticsCopy = statistics;
  typeCopy = type;
  dCopy = d;
  activitiesStatistics = self->_activitiesStatistics;
  if (!activitiesStatistics)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = self->_activitiesStatistics;
    self->_activitiesStatistics = v11;

    activitiesStatistics = self->_activitiesStatistics;
  }

  v13 = [(NSMutableDictionary *)activitiesStatistics objectForKeyedSubscript:dCopy];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_activitiesStatistics setObject:v14 forKeyedSubscript:dCopy];
  }

  v15 = [(NSMutableDictionary *)self->_activitiesStatistics objectForKeyedSubscript:dCopy];
  [v15 setObject:statisticsCopy forKeyedSubscript:typeCopy];
}

@end