@interface AAFAnalyticsTransportCA
- (void)sendEvent:(id)event;
@end

@implementation AAFAnalyticsTransportCA

- (void)sendEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (MEMORY[0x1EEE86508])
  {
    eventName = [eventCopy eventName];
    reportData = [v5 reportData];
    AnalyticsSendEvent();
  }

  else
  {
    v8 = _AAFLogSystem(eventCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AAFAnalyticsTransportCA *)self sendEvent:v8];
    }
  }
}

- (void)sendEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 138412546;
  v6 = objc_opt_class();
  v7 = 2048;
  v8 = a1;
  v4 = v6;
  _os_log_error_impl(&dword_1C8644000, a2, OS_LOG_TYPE_ERROR, "<%@: %p> CoreAnalytics is not avaiable.", &v5, 0x16u);
}

@end