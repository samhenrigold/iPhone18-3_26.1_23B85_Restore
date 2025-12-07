@interface GCLogicalDeviceAnalytics
- (GCLogicalDeviceAnalytics)initWithAnonymousIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier productCategory:(id)category;
- (double)sessionActiveDuration;
- (double)sessionTotalDuration;
- (id)description;
- (void)flushSessionAndSendCAEvent;
- (void)pauseSession;
- (void)resumeSession;
@end

@implementation GCLogicalDeviceAnalytics

- (GCLogicalDeviceAnalytics)initWithAnonymousIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier productCategory:(id)category
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  categoryCopy = category;
  v16.receiver = self;
  v16.super_class = GCLogicalDeviceAnalytics;
  v12 = [(GCLogicalDeviceAnalytics *)&v16 init];
  if (v12)
  {
    array = [MEMORY[0x1E695DF70] array];
    sessionIntervals = v12->_sessionIntervals;
    v12->_sessionIntervals = array;

    objc_storeStrong(&v12->_bundleID, bundleIdentifier);
    objc_storeStrong(&v12->_productCategory, category);
    objc_storeStrong(&v12->_controllerID, identifier);
    if (!v12->_bundleID)
    {
      v12->_bundleID = @"N/A";
    }

    if (!v12->_productCategory)
    {
      v12->_productCategory = @"N/A";
    }

    if (!v12->_controllerID)
    {
      v12->_controllerID = @"N/A";
    }
  }

  return v12;
}

- (double)sessionActiveDuration
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_sessionIntervals;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) duration];
        v6 = v6 + v8;
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)sessionTotalDuration
{
  if (!self->_firstSessionStartTime)
  {
    return 0.0;
  }

  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  firstSessionStartTime = self->_firstSessionStartTime;
  date = [MEMORY[0x1E695DF00] date];
  v6 = [v3 initWithStartDate:firstSessionStartTime endDate:date];
  [v6 duration];
  v8 = v7;

  return v8;
}

- (void)resumeSession
{
  v2 = getGCAnalyticsLogger(self);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v3, v4, "Resume session - %@", v5, v6, v7, v8);
  }
}

- (void)pauseSession
{
  v2 = getGCAnalyticsLogger(self);
  if (OUTLINED_FUNCTION_11(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v3, v4, "Pause session - %@", v5, v6, v7, v8);
  }
}

- (void)flushSessionAndSendCAEvent
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = getGCAnalyticsLogger(self);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_8();
    _os_log_error_impl(&dword_1D2CD5000, v1, OS_LOG_TYPE_ERROR, "%@ - ERROR! Attempting to flush a session that has already been flushed. Create a new devie analytics instance instead.", v2, 0xCu);
  }
}

id __54__GCLogicalDeviceAnalytics_flushSessionAndSendCAEvent__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v14 = *(v2 + 40);
  v13[0] = @"bundleID";
  v13[1] = @"productCategory";
  v15 = *(v2 + 32);
  v13[2] = @"controllerID";
  v13[3] = @"sessionTotalDuration";
  v3 = MEMORY[0x1E696AD98];
  [v2 sessionTotalDuration];
  LODWORD(v5) = llround(v4);
  v6 = [v3 numberWithInt:v5];
  v16 = v6;
  v13[4] = @"sessionActionDuration";
  v7 = MEMORY[0x1E696AD98];
  [*(a1 + 32) sessionActiveDuration];
  LODWORD(v9) = llround(v8);
  v10 = [v7 numberWithInt:v9];
  v17 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:v13 count:5];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  controllerID = [(GCLogicalDeviceAnalytics *)self controllerID];
  productCategory = [(GCLogicalDeviceAnalytics *)self productCategory];
  bundleID = [(GCLogicalDeviceAnalytics *)self bundleID];
  [(GCLogicalDeviceAnalytics *)self sessionTotalDuration];
  v9 = v8;
  [(GCLogicalDeviceAnalytics *)self sessionActiveDuration];
  v11 = [v3 stringWithFormat:@"<%@ for %@ (%@) - %@, total = %f, active = %f>", v4, controllerID, productCategory, bundleID, v9, v10];

  return v11;
}

@end