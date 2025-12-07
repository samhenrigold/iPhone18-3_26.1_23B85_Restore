@interface ATXMFeedbackConversionLogger
+ (void)logRecordedFeedbackWithEngagementType:(int)type consumerSubType:(unsigned __int8)subType tracker:(id)tracker;
+ (void)logUserInteractionFeedbackWithEngagementType:(int)type consumerSubType:(unsigned __int8)subType tracker:(id)tracker;
@end

@implementation ATXMFeedbackConversionLogger

+ (void)logUserInteractionFeedbackWithEngagementType:(int)type consumerSubType:(unsigned __int8)subType tracker:(id)tracker
{
  subTypeCopy = subType;
  v6 = *&type;
  v22 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E698B028];
  trackerCopy = tracker;
  v10 = [v8 stringForConsumerSubtype:subTypeCopy];
  v11 = objc_opt_new();
  [v11 setEngagementType:v6];
  [v11 setConsumerSubType:v10];
  [trackerCopy trackScalarForMessage:v11];

  v13 = __atxlog_handle_metrics(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = NSStringFromClass(self);
    if (v6)
    {
      if (v6 == 1)
      {
        v15 = @"Rejection";
      }

      else
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
      }
    }

    else
    {
      v15 = @"Engagement";
    }

    *buf = 138412802;
    v17 = v14;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v10;
    _os_log_debug_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMFeedbackUIInteractionsTracker with engagementType: %@ and consumerSubType: %@", buf, 0x20u);
  }
}

+ (void)logRecordedFeedbackWithEngagementType:(int)type consumerSubType:(unsigned __int8)subType tracker:(id)tracker
{
  subTypeCopy = subType;
  v6 = *&type;
  v22 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E698B028];
  trackerCopy = tracker;
  v10 = [v8 stringForConsumerSubtype:subTypeCopy];
  v11 = objc_opt_new();
  [v11 setEngagementType:v6];
  [v11 setConsumerSubType:v10];
  [trackerCopy trackScalarForMessage:v11];

  v13 = __atxlog_handle_metrics(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = NSStringFromClass(self);
    if (v6)
    {
      if (v6 == 1)
      {
        v15 = @"Rejection";
      }

      else
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
      }
    }

    else
    {
      v15 = @"Engagement";
    }

    *buf = 138412802;
    v17 = v14;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v10;
    _os_log_debug_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMFeedbackRecordedTracker with engagementType: %@ and consumerSubType: %@", buf, 0x20u);
  }
}

@end