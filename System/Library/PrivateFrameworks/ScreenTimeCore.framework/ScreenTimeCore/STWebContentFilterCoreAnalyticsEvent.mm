@interface STWebContentFilterCoreAnalyticsEvent
- (NSDictionary)payload;
- (STWebContentFilterCoreAnalyticsEvent)initWithWebContentFilterEnabled:(BOOL)enabled;
@end

@implementation STWebContentFilterCoreAnalyticsEvent

- (STWebContentFilterCoreAnalyticsEvent)initWithWebContentFilterEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = STWebContentFilterCoreAnalyticsEvent;
  result = [(STWebContentFilterCoreAnalyticsEvent *)&v5 init];
  result->_webContentFilterEnabled = enabled;
  return result;
}

- (NSDictionary)payload
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"webContentFilterEnabled";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{-[STWebContentFilterCoreAnalyticsEvent webContentFilterEnabled](self, "webContentFilterEnabled")}];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end