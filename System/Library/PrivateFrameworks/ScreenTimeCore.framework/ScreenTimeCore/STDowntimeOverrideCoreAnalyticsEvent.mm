@interface STDowntimeOverrideCoreAnalyticsEvent
- (NSDictionary)payload;
- (STDowntimeOverrideCoreAnalyticsEvent)initWithDowntimeEnabled:(BOOL)enabled gracePeriodUsed:(BOOL)used scheduleEnabled:(BOOL)scheduleEnabled hourOfDay:(int64_t)day userIsManaged:(BOOL)managed;
@end

@implementation STDowntimeOverrideCoreAnalyticsEvent

- (STDowntimeOverrideCoreAnalyticsEvent)initWithDowntimeEnabled:(BOOL)enabled gracePeriodUsed:(BOOL)used scheduleEnabled:(BOOL)scheduleEnabled hourOfDay:(int64_t)day userIsManaged:(BOOL)managed
{
  v13.receiver = self;
  v13.super_class = STDowntimeOverrideCoreAnalyticsEvent;
  result = [(STDowntimeOverrideCoreAnalyticsEvent *)&v13 init];
  result->_downtimeEnabled = enabled;
  result->_gracePeriodUsed = used;
  result->_scheduleEnabled = scheduleEnabled;
  result->_hourOfDay = day;
  result->_userIsManaged = managed;
  return result;
}

- (NSDictionary)payload
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"downtimeEnabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[STDowntimeOverrideCoreAnalyticsEvent downtimeEnabled](self, "downtimeEnabled")}];
  v11[0] = v3;
  v10[1] = @"gracePeriodUsed";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[STDowntimeOverrideCoreAnalyticsEvent gracePeriodUsed](self, "gracePeriodUsed")}];
  v11[1] = v4;
  v10[2] = @"scheduleEnabled";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[STDowntimeOverrideCoreAnalyticsEvent scheduleEnabled](self, "scheduleEnabled")}];
  v11[2] = v5;
  v10[3] = @"hourOfDay";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STDowntimeOverrideCoreAnalyticsEvent hourOfDay](self, "hourOfDay")}];
  v11[3] = v6;
  v10[4] = @"userIsManaged";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STDowntimeOverrideCoreAnalyticsEvent userIsManaged](self, "userIsManaged")}];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

@end