@interface STViewAllActivityCoreAnalyticsEvent
- (NSDictionary)payload;
- (STViewAllActivityCoreAnalyticsEvent)initWithDaysSinceLastView:(int64_t)view userAgeGroup:(int64_t)group userIsManaged:(BOOL)managed userIsRemote:(BOOL)remote;
@end

@implementation STViewAllActivityCoreAnalyticsEvent

- (STViewAllActivityCoreAnalyticsEvent)initWithDaysSinceLastView:(int64_t)view userAgeGroup:(int64_t)group userIsManaged:(BOOL)managed userIsRemote:(BOOL)remote
{
  v11.receiver = self;
  v11.super_class = STViewAllActivityCoreAnalyticsEvent;
  result = [(STViewAllActivityCoreAnalyticsEvent *)&v11 init];
  result->_daysSinceLastView = view;
  result->_userAgeGroup = group;
  result->_userIsManaged = managed;
  result->_userIsRemote = remote;
  return result;
}

- (NSDictionary)payload
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"daysSinceLastView";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STViewAllActivityCoreAnalyticsEvent daysSinceLastView](self, "daysSinceLastView")}];
  v10[0] = v3;
  v9[1] = @"userAgeGroup";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STViewAllActivityCoreAnalyticsEvent userAgeGroup](self, "userAgeGroup")}];
  v10[1] = v4;
  v9[2] = @"userIsManaged";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[STViewAllActivityCoreAnalyticsEvent userIsManaged](self, "userIsManaged")}];
  v10[2] = v5;
  v9[3] = @"userIsRemote";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[STViewAllActivityCoreAnalyticsEvent userIsRemote](self, "userIsRemote")}];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end