@interface WADeviceAnalytics_UsageStats
- (WADeviceAnalytics_UsageStats)initWithUniqueMO:(id)o;
@end

@implementation WADeviceAnalytics_UsageStats

- (WADeviceAnalytics_UsageStats)initWithUniqueMO:(id)o
{
  v15 = *MEMORY[0x1E69E9840];
  oCopy = o;
  if (!oCopy)
  {

    self = 0;
    goto LABEL_6;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v12 = "[WADeviceAnalytics_UsageStats initWithUniqueMO:]";
      v13 = 1024;
      v14 = 89;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "%{public}s::%d:UniqueMO does not contain Usage Properties", buf, 0x12u);
    }

    goto LABEL_5;
  }

  v10.receiver = self;
  v10.super_class = WADeviceAnalytics_UsageStats;
  self = [(WADeviceAnalytics_UsageStats *)&v10 init];
  if (self)
  {
    v5 = [oCopy valueForKey:@"latestCompleteWeekUsageSeconds"];
    -[WADeviceAnalytics_UsageStats setLatestCompleteWeekUsageSeconds:](self, "setLatestCompleteWeekUsageSeconds:", [v5 integerValue]);

    v6 = [oCopy valueForKey:@"latestCompleteWeekUsagePercentage"];
    -[WADeviceAnalytics_UsageStats setLatestCompleteWeekUsagePercentage:](self, "setLatestCompleteWeekUsagePercentage:", [v6 shortValue]);

    v7 = [oCopy valueForKey:@"latestCompleteWeekUsageCumulativeSeconds"];
    -[WADeviceAnalytics_UsageStats setLatestCompleteWeekUsageCumulativeSeconds:](self, "setLatestCompleteWeekUsageCumulativeSeconds:", [v7 integerValue]);

    v8 = [oCopy valueForKey:@"latestCompleteWeekUsageCumulativePercentage"];
    [(WADeviceAnalytics_UsageStats *)self setLatestCompleteWeekUsageCumulativePercentage:[v8 shortValue]];
LABEL_5:
  }

LABEL_6:

  return self;
}

@end