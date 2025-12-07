@interface SSVSubscriptionEntitlementsCoordinator
+ (id)_cachedSubscriptionEntitlementsDictionary;
+ (id)_cachedSubscriptionEntitlementsPath;
+ (id)cachedSubscriptionEntitlementsExpired:(BOOL *)expired;
+ (void)_notifyClientsOfChangedSubscriptionEntitlements;
+ (void)_setCachedSubscriptionEntitlementsDictionary:(id)dictionary;
+ (void)markCachedSubscriptionEntitlementsAsExpired;
+ (void)setCachedSubscriptionEntitlements:(id)entitlements;
@end

@implementation SSVSubscriptionEntitlementsCoordinator

+ (id)cachedSubscriptionEntitlementsExpired:(BOOL *)expired
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _cachedSubscriptionEntitlementsDictionary = [selfCopy _cachedSubscriptionEntitlementsDictionary];
  objc_sync_exit(selfCopy);

  v6 = [SSURLBagContext contextWithBagType:0];
  v7 = +[ISURLBagCache sharedCache];
  v8 = [v7 URLBagForContext:v6];

  v9 = [v8 valueForKey:@"fsEntitlementsRefreshIntervalInSeconds"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [_cachedSubscriptionEntitlementsDictionary objectForKeyedSubscript:kCacheTimestampKey];
  v13 = [v12 dateByAddingTimeInterval:v11];

  v14 = &CFDictionaryGetValue_ptr;
  if (!v13 || (+[NSDate date](NSDate, "date"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v13 compare:v15], v15, v16 != 1))
  {
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog;
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v39 = 138412290;
      v40 = objc_opt_class();
      expiredCopy = expired;
      v22 = v8;
      v23 = v6;
      v24 = v40;
      v25 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Cached subscription entitlements have expired.", &v39, 12);

      v6 = v23;
      v8 = v22;
      expired = expiredCopy;
      v14 = &CFDictionaryGetValue_ptr;

      if (v25)
      {
        v26 = [NSString stringWithCString:v25 encoding:4];
        free(v25);
        v37 = v26;
        SSFileLog();
      }
    }

    else
    {
    }

    if (expired)
    {
      *expired = 1;
    }
  }

  sharedDaemonConfig = [v14[412] sharedDaemonConfig];
  if (!sharedDaemonConfig)
  {
    sharedDaemonConfig = [v14[412] sharedConfig];
  }

  shouldLog2 = [sharedDaemonConfig shouldLog];
  if ([sharedDaemonConfig shouldLogToDisk])
  {
    v29 = shouldLog2 | 2;
  }

  else
  {
    v29 = shouldLog2;
  }

  oSLogObject2 = [sharedDaemonConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v29;
  }

  else
  {
    v31 = v29 & 2;
  }

  if (v31)
  {
    v32 = objc_opt_class();
    v39 = 138412290;
    v40 = v32;
    v33 = v32;
    LODWORD(v38) = 12;
    v34 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Returning cached subscription entitlements.", &v39, v38);

    if (!v34)
    {
      goto LABEL_29;
    }

    oSLogObject2 = [NSString stringWithCString:v34 encoding:4];
    free(v34);
    SSFileLog();
  }

LABEL_29:
  v35 = [SSVSubscriptionEntitlements _parseJSONDictionary:_cachedSubscriptionEntitlementsDictionary];

  return v35;
}

+ (void)markCachedSubscriptionEntitlementsAsExpired
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v13 = 138412290;
    v14 = objc_opt_class();
    v7 = v14;
    v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Marking the cached subscription entitlements as expired.", &v13, 12);

    if (v8)
    {
      v9 = [NSString stringWithCString:v8 encoding:4];
      free(v8);
      SSFileLog();
    }
  }

  else
  {
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  _cachedSubscriptionEntitlementsDictionary = [selfCopy _cachedSubscriptionEntitlementsDictionary];
  v12 = [_cachedSubscriptionEntitlementsDictionary mutableCopy];

  if (v12)
  {
    [v12 removeObjectForKey:kCacheTimestampKey];
    [selfCopy _setCachedSubscriptionEntitlementsDictionary:v12];
  }

  objc_sync_exit(selfCopy);
  [selfCopy _notifyClientsOfChangedSubscriptionEntitlements];
}

+ (void)setCachedSubscriptionEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  if (entitlementsCopy)
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v23 = 138412290;
      v24 = objc_opt_class();
      v9 = v24;
      v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Caching subscription entitlements.", &v23, 12);

      if (v10)
      {
        v11 = [NSString stringWithCString:v10 encoding:4];
        free(v10);
        SSFileLog();
      }
    }

    else
    {
    }

    _cachedSubscriptionEntitlementsPath = [entitlementsCopy mutableCopy];
    v20 = +[NSDate date];
    [_cachedSubscriptionEntitlementsPath setObject:v20 forKeyedSubscript:kCacheTimestampKey];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [selfCopy _setCachedSubscriptionEntitlementsDictionary:_cachedSubscriptionEntitlementsPath];
  }

  else
  {
    _cachedSubscriptionEntitlementsPath = [self _cachedSubscriptionEntitlementsPath];
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      LODWORD(v15) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v15) = shouldLog2;
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v23 = 138412290;
      v24 = objc_opt_class();
      v17 = v24;
      v18 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Clearing cached subscription entitlements.", &v23, 12);

      if (v18)
      {
        v19 = [NSString stringWithCString:v18 encoding:4];
        free(v18);
        SSFileLog();
      }
    }

    else
    {
    }

    objc_sync_enter(self);
    v22 = +[NSFileManager defaultManager];
    [v22 removeItemAtPath:_cachedSubscriptionEntitlementsPath error:0];
  }

  objc_sync_exit(self);

  [self _notifyClientsOfChangedSubscriptionEntitlements];
}

+ (id)_cachedSubscriptionEntitlementsDictionary
{
  _cachedSubscriptionEntitlementsPath = [self _cachedSubscriptionEntitlementsPath];
  v3 = [NSData dataWithContentsOfFile:_cachedSubscriptionEntitlementsPath];
  if (!v3)
  {
    v13 = 0;
    goto LABEL_22;
  }

  v15 = 0;
  v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:&v15];
  v5 = v15;
  if (v5)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      v11 = v10;
      v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Failed to read the subscription entitlements from disk. %@", &v16, 22);

      if (!v12)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

LABEL_22:

  return v13;
}

+ (id)_cachedSubscriptionEntitlementsPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v15[0] = lastObject;
  v15[1] = @"com.apple.itunesstored";
  v15[2] = @"SubscriptionEntitlements_v2.plist";
  v4 = [NSArray arrayWithObjects:v15 count:3];
  v5 = [NSString pathWithComponents:v4];
  if (!v5)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = shouldLog | 2;
    }

    else
    {
      LODWORD(v8) = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v13 = 138412290;
      v14 = objc_opt_class();
      v10 = v14;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Unable to determine the path of the cached subscription entitlements.", &v13, 12);

      if (!v11)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

+ (void)_notifyClientsOfChangedSubscriptionEntitlements
{
  uTF8String = [kSSVNotificationSubscriptionEntitlementsChanged UTF8String];

  notify_post(uTF8String);
}

+ (void)_setCachedSubscriptionEntitlementsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _cachedSubscriptionEntitlementsPath = [self _cachedSubscriptionEntitlementsPath];
  if ([_cachedSubscriptionEntitlementsPath length])
  {
    v16 = 0;
    v6 = [NSPropertyListSerialization dataWithPropertyList:dictionaryCopy format:200 options:0 error:&v16];
    v7 = v16;
    if (!v7)
    {
LABEL_16:
      [v6 writeToFile:_cachedSubscriptionEntitlementsPath atomically:{1, v15}];

      goto LABEL_17;
    }

    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      LODWORD(v10) = shouldLog | 2;
    }

    else
    {
      LODWORD(v10) = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v10;
    }

    else
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v17 = 138412546;
      v18 = v12;
      v19 = 2112;
      v20 = v7;
      v13 = v12;
      v14 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Failed to write the subscription entitlements to disk. %@", &v17, 22);

      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v14 encoding:4];
      free(v14);
      v15 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_17:
}

@end