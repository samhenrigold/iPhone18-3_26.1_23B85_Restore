@interface BKHIDUISensorConfiguratorFactory
+ (id)_digitizerServiceWrapper;
+ (id)_proximityServiceWrapper;
+ (id)sensorConfiguratorForCurrentPlatform;
@end

@implementation BKHIDUISensorConfiguratorFactory

+ (id)_digitizerServiceWrapper
{
  v5[0] = @"DeviceUsagePage";
  v5[1] = @"Built-In";
  v6[0] = &off_100107A30;
  v6[1] = &__kCFBooleanTrue;
  v5[2] = @"DisplayIntegrated";
  v6[2] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = [[BKHIDUISensorServiceMatchingWrapper alloc] initWithMatchingDictionary:v2 instantiateWrapperUsingBlock:&stru_1000FBA20];

  return v3;
}

+ (id)_proximityServiceWrapper
{
  v5[0] = @"DeviceUsagePage";
  v5[1] = @"DeviceUsage";
  v6[0] = &off_100107A00;
  v6[1] = &off_100107A18;
  v2 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = [[BKHIDUISensorServiceMatchingWrapper alloc] initWithMatchingDictionary:v2 instantiateWrapperUsingBlock:&stru_1000FBA00];

  return v3;
}

+ (id)sensorConfiguratorForCurrentPlatform
{
  v3 = +[BSPlatform sharedInstance];
  deviceClass = [v3 deviceClass];

  if (deviceClass || ([self _proximityServiceWrapper], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "_digitizerServiceWrapper"), v7 = objc_claimAutoreleasedReturnValue(), _digitizerServiceWrapper = objc_alloc_init(BKHIDUIServiceConfiguringAggregator), v13[0] = v7, v13[1] = v6, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v13, 2), v8 = objc_claimAutoreleasedReturnValue(), -[BKHIDUIServiceConfiguringAggregator setServiceConfigurings:](_digitizerServiceWrapper, "setServiceConfigurings:", v8), v8, v7, v6, !_digitizerServiceWrapper))
  {
    _digitizerServiceWrapper = [self _digitizerServiceWrapper];
  }

  v9 = BKLogUISensor();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = _digitizerServiceWrapper;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "UI sensor configuration: %{public}@", &v11, 0xCu);
  }

  return _digitizerServiceWrapper;
}

@end