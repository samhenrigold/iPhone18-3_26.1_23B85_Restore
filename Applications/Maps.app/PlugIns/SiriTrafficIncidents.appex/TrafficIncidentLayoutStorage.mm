@interface TrafficIncidentLayoutStorage
+ (id)sharedInstance;
- (id)_cachedIncidentLayoutWithIncidentKey:(id)key;
- (void)_saveIncidentLayout:(id)layout withIncidentKey:(id)key;
- (void)clearCache;
@end

@implementation TrafficIncidentLayoutStorage

+ (id)sharedInstance
{
  if (qword_10000CED8 != -1)
  {
    sub_100002C9C();
  }

  v3 = qword_10000CEE0;

  return v3;
}

- (void)clearCache
{
  _sharedUserDefaults = [(TrafficIncidentLayoutStorage *)self _sharedUserDefaults];
  [_sharedUserDefaults setObject:0 forKey:@"TrafficIncidentVotingDictionary"];
  [_sharedUserDefaults setObject:0 forKey:@"TrafficIncidentLayoutDictionary"];
  [_sharedUserDefaults synchronize];
}

- (void)_saveIncidentLayout:(id)layout withIncidentKey:(id)key
{
  keyCopy = key;
  layoutCopy = layout;
  _sharedUserDefaults = [(TrafficIncidentLayoutStorage *)self _sharedUserDefaults];
  v13 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:layoutCopy requiringSecureCoding:1 error:&v13];

  v10 = v13;
  v11 = v10;
  if (v10)
  {
    v12 = MAPSGetIncidentsReportingLog(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "TrafficIncidentLayoutStorage error archiving incidentLayout %@", buf, 0xCu);
    }
  }

  [_sharedUserDefaults setObject:v9 forKey:keyCopy];
  [_sharedUserDefaults synchronize];
}

- (id)_cachedIncidentLayoutWithIncidentKey:(id)key
{
  keyCopy = key;
  _sharedUserDefaults = [(TrafficIncidentLayoutStorage *)self _sharedUserDefaults];
  v6 = [_sharedUserDefaults objectForKey:keyCopy];

  v13 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v13];
  v8 = v13;
  v9 = v8;
  if (v8)
  {
    v10 = MAPSGetIncidentsReportingLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "TrafficIncidentLayoutStorage error decoding incidentLayout %@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

@end