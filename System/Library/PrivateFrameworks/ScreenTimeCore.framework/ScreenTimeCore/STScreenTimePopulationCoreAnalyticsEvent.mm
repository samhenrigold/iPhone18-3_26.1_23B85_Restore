@interface STScreenTimePopulationCoreAnalyticsEvent
- (NSDictionary)payload;
- (STScreenTimePopulationCoreAnalyticsEvent)initWithIsScreenTimeEnabled:(BOOL)enabled isShareAcrossDevicesEnabled:(BOOL)devicesEnabled;
@end

@implementation STScreenTimePopulationCoreAnalyticsEvent

- (STScreenTimePopulationCoreAnalyticsEvent)initWithIsScreenTimeEnabled:(BOOL)enabled isShareAcrossDevicesEnabled:(BOOL)devicesEnabled
{
  v7.receiver = self;
  v7.super_class = STScreenTimePopulationCoreAnalyticsEvent;
  result = [(STScreenTimePopulationCoreAnalyticsEvent *)&v7 init];
  result->_isScreenTimeEnabled = enabled;
  result->_isShareAcrossDevicesEnabled = devicesEnabled;
  return result;
}

- (NSDictionary)payload
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"isScreenTimeEnabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[STScreenTimePopulationCoreAnalyticsEvent isScreenTimeEnabled](self, "isScreenTimeEnabled")}];
  v7[1] = @"isShareAcrossDevicesEnabled";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[STScreenTimePopulationCoreAnalyticsEvent isShareAcrossDevicesEnabled](self, "isShareAcrossDevicesEnabled")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end