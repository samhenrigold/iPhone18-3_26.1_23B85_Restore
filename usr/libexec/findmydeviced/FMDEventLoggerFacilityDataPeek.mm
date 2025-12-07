@interface FMDEventLoggerFacilityDataPeek
- (FMDEventLoggerFacilityDataPeek)init;
- (void)logEvent:(id)event;
@end

@implementation FMDEventLoggerFacilityDataPeek

- (FMDEventLoggerFacilityDataPeek)init
{
  v7.receiver = self;
  v7.super_class = FMDEventLoggerFacilityDataPeek;
  v2 = [(FMDEventLoggerFacilityDataPeek *)&v7 init];
  if (v2)
  {
    v3 = +[NSBundle mainBundle];
    bundleIdentifier = [v3 bundleIdentifier];

    v5 = [bundleIdentifier stringByAppendingString:@"."];
    [(FMDEventLoggerFacilityDataPeek *)v2 setBaseIdentifierKey:v5];
  }

  return v2;
}

- (void)logEvent:(id)event
{
  eventCopy = event;
  if ([(FMDEventLoggerFacilityDataPeek *)self shouldLog])
  {
    baseIdentifierKey = [(FMDEventLoggerFacilityDataPeek *)self baseIdentifierKey];
    eventName = [eventCopy eventName];
    v7 = [baseIdentifierKey stringByAppendingString:eventName];

    userInfo = [eventCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:@"FMDEventLoggerFacilityDataPeekDistributionValue"];

    if (v9)
    {
      doubleValue = [v9 doubleValue];
      v12 = v11;
      v13 = sub_100002880(doubleValue);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v7;
        v20 = 2048;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "DataPeek Distribution : %@ %f", &v18, 0x16u);
      }

      ADClientPushValueForDistributionKey();
    }

    userInfo2 = [eventCopy userInfo];
    v15 = [userInfo2 objectForKeyedSubscript:@"FMDEventLoggerFacilityDataPeekCompoundScalarValue"];

    if (v15)
    {
      integerValue = [v15 integerValue];
      v17 = sub_100002880(integerValue);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v7;
        v20 = 2048;
        v21 = integerValue;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "DataPeek Compound Scalar : %@ %lli", &v18, 0x16u);
      }

      ADClientAddValueForScalarKey();
    }
  }
}

@end