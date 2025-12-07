@interface EmergencyServicesOverrideProvider
- (NSArray)emergencyServicesOverrides;
@end

@implementation EmergencyServicesOverrideProvider

- (NSArray)emergencyServicesOverrides
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"Siri.PhoneIntentHandler.EmergencyServicesOverride"];

  v5 = IntentHandlerDefaultLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002FF2C(v3, v5);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010228;
  v8[3] = &unk_10004CF50;
  v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v9 = v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

@end