@interface NSDictionary
+ (id)_gkDictionaryWithServerData:(id)data error:(id *)error;
+ (id)_gkDictionaryWithServerData:(id)data serverStatus:(int64_t *)status error:(id *)error;
+ (id)_gkDictionaryWithServerDataJson:(id)json error:(id *)error;
+ (id)_gkDictionaryWithServerDataJson:(id)json serverStatus:(int64_t *)status error:(id *)error;
- (id)_gkPlistXMLDataForAppSession:(id)session;
@end

@implementation NSDictionary

- (id)_gkPlistXMLDataForAppSession:(id)session
{
  sessionCopy = session;
  if (sessionCopy)
  {
    v5 = [(NSDictionary *)self mutableCopy];
    [v5 setObject:sessionCopy forKey:@"app-session"];
    v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:100 options:0 error:0];
  }

  else
  {
    v6 = [NSPropertyListSerialization dataWithPropertyList:self format:100 options:0 error:0];
  }

  return v6;
}

+ (id)_gkDictionaryWithServerData:(id)data serverStatus:(int64_t *)status error:(id *)error
{
  dataCopy = data;
  if (!status)
  {
    v8 = [NSString stringWithFormat:@"Assertion failed"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/NSDictionary+GKDaemonAdditions.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (serverStatus != ((void*)0))\n[%s (%s:%d)]", v8, "+[NSDictionary(GKDaemonAdditions) _gkDictionaryWithServerData:serverStatus:error:]", [lastPathComponent UTF8String], 38);

    [NSException raise:@"GameKit Exception" format:@"%@", v11];
  }

  *status = 0;
  if (dataCopy)
  {
    v27 = 0;
    v28[0] = 100;
    v12 = [NSPropertyListSerialization propertyListWithData:dataCopy options:0 format:v28 error:&v27];
    v13 = v27;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v12)
      {
        v14 = [v12 objectForKey:GKRequestStatusKey];
        integerValue = [v14 integerValue];

        *status = integerValue;
        if (error && integerValue)
        {
          v16 = [v12 objectForKey:GKErrorMessageKey];
          v17 = GKAuthenticateAlertKey;
          v18 = [v12 objectForKeyedSubscript:GKAuthenticateAlertKey];

          if (v18)
          {
            v28[3] = v17;
            v19 = [v12 objectForKeyedSubscript:v17];
            v28[4] = v19;
            v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);
            *error = [NSError userErrorForServerCode:integerValue reason:v16 userInfo:v20];
          }

          else
          {
            *error = [NSError userErrorForServerCode:integerValue reason:v16];
          }
        }
      }

      else if (error)
      {
        v25 = v13;
        *error = v13;
      }
    }

    else if (error)
    {
      v28[5] = NSLocalizedFailureReasonErrorKey;
      v28[6] = @"Received unexpected data format in server response.";
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);
      *error = [NSError userErrorForCode:3 userInfo:v24];
    }
  }

  else
  {
    if (error)
    {
      if (!os_log_GKGeneral)
      {
        v21 = GKOSLoggers();
      }

      v22 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10028DB14(v22);
      }

      v28[1] = NSLocalizedFailureReasonErrorKey;
      v28[2] = @"No data received from the server.";
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);
      *error = [NSError userErrorForCode:3 userInfo:v23];
    }

    v13 = 0;
    v12 = 0;
  }

  return v12;
}

+ (id)_gkDictionaryWithServerDataJson:(id)json serverStatus:(int64_t *)status error:(id *)error
{
  jsonCopy = json;
  if (!status)
  {
    v8 = [NSString stringWithFormat:@"Assertion failed"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/NSDictionary+GKDaemonAdditions.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (serverStatus != ((void*)0))\n[%s (%s:%d)]", v8, "+[NSDictionary(GKDaemonAdditions) _gkDictionaryWithServerDataJson:serverStatus:error:]", [lastPathComponent UTF8String], 91);

    [NSException raise:@"GameKit Exception" format:@"%@", v11];
  }

  *status = 0;
  if (!jsonCopy)
  {
    if (error)
    {
      if (!os_log_GKGeneral)
      {
        v21 = GKOSLoggers();
      }

      v22 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10028DB14(v22);
      }

      v27[1] = NSLocalizedFailureReasonErrorKey;
      v27[2] = @"No data received from the server.";
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);
      *error = [NSError userErrorForCode:3 userInfo:v23];
    }

    v13 = 0;
    goto LABEL_17;
  }

  v27[0] = 0;
  v12 = [NSJSONSerialization JSONObjectWithData:jsonCopy options:0 error:v27];
  v13 = v27[0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v12)
    {
      v14 = [v12 objectForKey:GKRequestStatusKey];
      integerValue = [v14 integerValue];

      *status = integerValue;
      if (error && integerValue)
      {
        v16 = [v12 objectForKey:GKErrorMessageKey];
        v17 = GKAuthenticateAlertKey;
        v18 = [v12 objectForKeyedSubscript:GKAuthenticateAlertKey];

        if (v18)
        {
          v27[3] = v17;
          v19 = [v12 objectForKeyedSubscript:v17];
          v27[4] = v19;
          v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);
          *error = [NSError userErrorForServerCode:integerValue reason:v16 userInfo:v20];
        }

        else
        {
          *error = [NSError userErrorForServerCode:integerValue reason:v16];
        }
      }

      goto LABEL_24;
    }

    if (error)
    {
      v25 = v13;
      v12 = 0;
      *error = v13;
      goto LABEL_24;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_24;
  }

  if (error)
  {
    v27[5] = NSLocalizedFailureReasonErrorKey;
    v27[6] = @"Received unexpected data format in server response.";
    v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);
    *error = [NSError userErrorForCode:3 userInfo:v24];
  }

LABEL_24:

  return v12;
}

+ (id)_gkDictionaryWithServerData:(id)data error:(id *)error
{
  v6 = 0;
  v4 = [self _gkDictionaryWithServerData:data serverStatus:&v6 error:error];

  return v4;
}

+ (id)_gkDictionaryWithServerDataJson:(id)json error:(id *)error
{
  v6 = 0;
  v4 = [self _gkDictionaryWithServerDataJson:json serverStatus:&v6 error:error];

  return v4;
}

@end