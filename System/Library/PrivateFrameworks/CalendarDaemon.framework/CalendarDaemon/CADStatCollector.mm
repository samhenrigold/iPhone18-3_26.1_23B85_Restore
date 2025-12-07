@interface CADStatCollector
+ (BOOL)enabled;
+ (id)eventName;
- (BOOL)enabled;
- (id)eventName;
@end

@implementation CADStatCollector

+ (BOOL)enabled
{
  eventName = [self eventName];
  IsEventUsed = CalAnalyticsIsEventUsed();

  return IsEventUsed;
}

- (BOOL)enabled
{
  eventName = [(CADStatCollector *)self eventName];
  IsEventUsed = CalAnalyticsIsEventUsed();

  return IsEventUsed;
}

+ (id)eventName
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    v6 = 138412290;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_ERROR, "CADStat subclass %@ should override +eventName", &v6, 0xCu);
  }

  return 0;
}

- (id)eventName
{
  v2 = objc_opt_class();

  return [v2 eventName];
}

@end