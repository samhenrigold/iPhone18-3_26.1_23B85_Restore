@interface NSDictionary
+ (id)nn_activeSyncStateWithIdentifier:(id)identifier active:(BOOL)active;
- (BOOL)nn_active;
- (unint64_t)sync_headlineCount;
- (unint64_t)sync_type;
@end

@implementation NSDictionary

+ (id)nn_activeSyncStateWithIdentifier:(id)identifier active:(BOOL)active
{
  activeCopy = active;
  identifierCopy = identifier;
  v7 = +[NSDate date];
  v14[0] = identifierCopy;
  v14[1] = v7;
  v8 = [NSNumber numberWithBool:activeCopy];
  v14[2] = v8;
  v9 = [NSArray arrayWithObjects:v14 count:3];
  v13[0] = @"nn_identifier";
  v13[1] = @"nn_date";
  v13[2] = @"nn_active";
  v10 = [NSArray arrayWithObjects:v13 count:3];

  v11 = [self dictionaryWithObjects:v9 forKeys:v10];

  return v11;
}

- (BOOL)nn_active
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"nn_active"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

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