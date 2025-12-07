@interface PPSFeatureFlagReader
- (BOOL)hasEntitlements;
- (PPSFeatureFlagReader)init;
- (void)getFeatureFlags:(id)flags;
@end

@implementation PPSFeatureFlagReader

- (PPSFeatureFlagReader)init
{
  v9.receiver = self;
  v9.super_class = PPSFeatureFlagReader;
  v2 = [(PPSFeatureFlagReader *)&v9 init];
  if (v2)
  {
    signal(15, 1);
    v3 = dispatch_get_global_queue(21, 0);
    [(PPSFeatureFlagReader *)v2 setSigterm_queue:v3];

    sigterm_queue = [(PPSFeatureFlagReader *)v2 sigterm_queue];
    v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, sigterm_queue);
    [(PPSFeatureFlagReader *)v2 setSigterm_source:v5];

    sigterm_source = [(PPSFeatureFlagReader *)v2 sigterm_source];
    dispatch_source_set_event_handler(sigterm_source, &stru_1000042B8);

    sigterm_source2 = [(PPSFeatureFlagReader *)v2 sigterm_source];
    dispatch_activate(sigterm_source2);
  }

  return v2;
}

- (void)getFeatureFlags:(id)flags
{
  flagsCopy = flags;
  context = objc_autoreleasePoolPush();
  hasEntitlements = [(PPSFeatureFlagReader *)self hasEntitlements];
  if (hasEntitlements)
  {
    v5 = +[FFConfiguration shared];
    domains = [v5 domains];

    v7 = [domains count];
    if (!v7)
    {
      v8 = logPPSFeatureFlagReader(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_100001ED0(v8);
      }

      v7 = flagsCopy[2](flagsCopy, &__NSArray0__struct);
    }

    v9 = logPPSFeatureFlagReader(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100001F14(domains, v9);
    }

    v35 = +[NSMutableArray array];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = domains;
    v32 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v32)
    {
      v31 = *v43;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v43 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v42 + 1) + 8 * i);
          v11 = +[FFConfiguration shared];
          v34 = [v11 featuresForDomain:v10];

          if ([v34 count])
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = v34;
            v12 = [v36 countByEnumeratingWithState:&v38 objects:v52 count:16];
            if (v12)
            {
              v37 = *v39;
              do
              {
                v13 = 0;
                do
                {
                  if (*v39 != v37)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v14 = *(*(&v38 + 1) + 8 * v13);
                  v15 = +[FFConfiguration shared];
                  v16 = [v15 stateForFeature:v14 domain:v10];

                  if (v16)
                  {
                    v17 = +[FFConfiguration shared];
                    v18 = [v17 defaultStateForFeature:v14 domain:v10];

                    if (!v18 || (v19 = [v18 value], v19 != objc_msgSend(v16, "value")))
                    {
                      attributes = [v18 attributes];
                      v21 = [attributes objectForKeyedSubscript:@"TargetRelease"];
                      value = [v21 value];
                      v23 = logPPSFeatureFlagReader(value);
                      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412802;
                        v47 = v10;
                        v48 = 2112;
                        v49 = v14;
                        v50 = 2112;
                        v51 = v21;
                        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] FFDomain: %@, FFName: %@, FFTargetRelease: %@", buf, 0x20u);
                      }

                      v24 = +[NSMutableDictionary dictionary];
                      [v24 setObject:v10 forKeyedSubscript:@"Domain"];
                      [v24 setObject:v14 forKeyedSubscript:@"FeatureName"];
                      v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 value]);
                      [v24 setObject:v25 forKeyedSubscript:@"State"];

                      if (value)
                      {
                        v26 = value;
                      }

                      else
                      {
                        v26 = @"Unknown";
                      }

                      [v24 setObject:v26 forKeyedSubscript:@"TargetRelease"];
                      [v35 addObject:v24];
                    }
                  }

                  v13 = v13 + 1;
                }

                while (v12 != v13);
                v12 = [v36 countByEnumeratingWithState:&v38 objects:v52 count:16];
              }

              while (v12);
            }
          }
        }

        v32 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v32);
    }

    flagsCopy[2](flagsCopy, v35);
  }

  else
  {
    v27 = logPPSFeatureFlagReader(hasEntitlements);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100001E8C(v27);
    }

    flagsCopy[2](flagsCopy, &__NSArray0__struct);
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)hasEntitlements
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.powerlog.PPSFeatureFlagReader.launch-xpc"];
  v4 = objc_opt_respondsToSelector();
  if (v4 & 1) != 0 && (v4 = [v3 BOOLValue], (v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = logPPSFeatureFlagReader(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10000207C(v8, [v2 processIdentifier], v6);
    }

    v5 = 0;
  }

  return v5;
}

@end