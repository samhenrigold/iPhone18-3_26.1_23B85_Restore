@interface STEyeReliefChangedCoreAnalyticsEvent
- (NSDictionary)payload;
- (STEyeReliefChangedCoreAnalyticsEvent)initWithEyeReliefEnabled:(BOOL)enabled;
@end

@implementation STEyeReliefChangedCoreAnalyticsEvent

- (STEyeReliefChangedCoreAnalyticsEvent)initWithEyeReliefEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = STEyeReliefChangedCoreAnalyticsEvent;
  result = [(STEyeReliefChangedCoreAnalyticsEvent *)&v5 init];
  result->_eyeReliefEnabled = enabled;
  return result;
}

- (NSDictionary)payload
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"eyeReliefEnabled";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{-[STEyeReliefChangedCoreAnalyticsEvent eyeReliefEnabled](self, "eyeReliefEnabled")}];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end