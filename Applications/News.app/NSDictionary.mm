@interface NSDictionary
- (unint64_t)sync_headlineCount;
- (unint64_t)sync_type;
@end

@implementation NSDictionary

- (unint64_t)sync_headlineCount
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"sync_headlineCount"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)sync_type
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"sync_type"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  if (unsignedIntegerValue >= 6)
  {
    v5 = NNSetupCompanionSyncLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = unsignedIntegerValue;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Unknown type %lu", &v7, 0xCu);
    }

    return 0;
  }

  return unsignedIntegerValue;
}

@end