@interface _DKSyncUrgencyTracker
+ (id)sharedInstance;
- (id)allUrgencies;
- (id)urgencyForClient:(id *)result;
- (void)ageUrgencies;
- (void)recomputeUrgency;
- (void)updateUrgency:(void *)urgency forClient:;
@end

@implementation _DKSyncUrgencyTracker

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_initialized_4 != -1)
  {
    +[_DKSyncUrgencyTracker sharedInstance];
  }

  v1 = sharedInstance_tracker;

  return v1;
}

- (void)recomputeUrgency
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_urgencies;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(_DKSyncUrgencyTracker *)&self->super.isa urgencyForClient:?];
        if (v6 <= v9)
        {
          v6 = v9;
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (v6 != self->_urgency)
  {
    self->_urgency = v6;
    v10 = +[_CDObservationCenter sharedInstance];
    v17 = @"urgency";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_urgency];
    v18 = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v10 postNotificationName:@"_DKSyncUrgencyDidChangeNotification" userInfo:v12 sender:self];
  }
}

- (void)updateUrgency:(void *)urgency forClient:
{
  v21 = *MEMORY[0x1E69E9840];
  urgencyCopy = urgency;
  if (self)
  {
    v6 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v6);

    if (a2 >= 0xC)
    {
      v7 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v18 = [objc_opt_class() description];
        v19 = [OUTLINED_FUNCTION_1_27() numberWithUnsignedInteger:?];
        OUTLINED_FUNCTION_0_34();
        _os_log_error_impl(&dword_191750000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Invalid urgency from %@: %@", v20, 0x20u);
      }

      a2 = 10;
    }

    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v10 = [OUTLINED_FUNCTION_1_27() numberWithUnsignedInteger:?];
      OUTLINED_FUNCTION_0_34();
      _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating urgency for %@ to %@", v20, 0x20u);
    }

    v11 = self[2];
    if (!v11)
    {
      v12 = objc_opt_new();
      v13 = self[2];
      self[2] = v12;

      v11 = self[2];
    }

    v14 = [v11 objectForKeyedSubscript:urgencyCopy];
    if (v14)
    {
      v15 = [OUTLINED_FUNCTION_1_27() numberWithUnsignedInteger:?];
      v16 = [v14 isEqualToNumber:v15];

      if ((v16 & 1) == 0)
      {
        if (!a2)
        {
          [self[2] setObject:0 forKeyedSubscript:urgencyCopy];
LABEL_16:
          [self recomputeUrgency];
          goto LABEL_17;
        }

LABEL_15:
        v17 = [OUTLINED_FUNCTION_1_27() numberWithUnsignedInteger:?];
        [self[2] setObject:v17 forKeyedSubscript:urgencyCopy];

        goto LABEL_16;
      }
    }

    else if (a2)
    {
      goto LABEL_15;
    }

LABEL_17:
  }
}

- (id)urgencyForClient:(id *)result
{
  if (result)
  {
    v2 = [result[2] objectForKeyedSubscript:a2];
    unsignedIntegerValue = [v2 unsignedIntegerValue];

    return unsignedIntegerValue;
  }

  return result;
}

- (id)allUrgencies
{
  if (self)
  {
    self = [self[2] copy];
    v1 = vars8;
  }

  return self;
}

- (void)ageUrgencies
{
  if (result)
  {
    v1 = result;
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = objc_opt_new();
    v4 = v1[2];
    v1[2] = v3;

    return [v1 recomputeUrgency];
  }

  return result;
}

@end