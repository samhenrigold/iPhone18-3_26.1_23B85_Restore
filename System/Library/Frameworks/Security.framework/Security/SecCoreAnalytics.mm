@interface SecCoreAnalytics
+ (id)appNameFromPath:(id)path;
+ (void)sendEvent:(id)event event:(id)a4;
+ (void)sendEventLazy:(id)lazy builder:(id)builder;
@end

@implementation SecCoreAnalytics

+ (id)appNameFromPath:(id)path
{
  pathCopy = path;
  v4 = [MEMORY[0x1E696AAE8] bundleWithPath:pathCopy];
  if (v4)
  {
    v5 = v4;
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
  if (v9)
  {
    v10 = v9;
    v11 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
    v12 = v11;
    if (v11)
    {
      v13 = CFBundleCopyBundleURL(v11);

      if (v13)
      {
        v5 = [MEMORY[0x1E696AAE8] bundleWithURL:v13];

        if (v5)
        {
LABEL_3:
          infoDictionary = [v5 infoDictionary];
          v7 = [infoDictionary objectForKey:@"CFBundleVisibleComponentName"];
          if (!v7)
          {
            v14 = [infoDictionary objectForKey:@"CFBundleDisplayName"];
            v15 = v14;
            if (v14)
            {
              v16 = v14;
            }

            else
            {
              v16 = [infoDictionary objectForKey:@"CFBundleName"];
            }

            v8 = v16;

            goto LABEL_14;
          }

          goto LABEL_4;
        }

        goto LABEL_23;
      }

      v10 = 0;
    }
  }

LABEL_23:
  v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
  v5 = v20;
  if (!v20)
  {
    infoDictionary = 0;
    v8 = 0;
    goto LABEL_15;
  }

  v21 = CFBundleCopyInfoDictionaryForURL(v20);
  infoDictionary = v21;
  if (v21)
  {
    v22 = [(__CFDictionary *)v21 objectForKeyedSubscript:@"CFBundleVisibleComponentName"];
    if (v22 || ([infoDictionary objectForKeyedSubscript:@"CFBundleDisplayName"], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v22;
      goto LABEL_15;
    }

    v8 = [infoDictionary objectForKeyedSubscript:@"CFBundleName"];
    if (v8)
    {
      goto LABEL_15;
    }
  }

  v24 = 0;
  v23 = [v5 getResourceValue:&v24 forKey:*MEMORY[0x1E695DC30] error:0];
  v7 = v24;
  if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = 0;
    goto LABEL_14;
  }

LABEL_4:
  v8 = v7;
LABEL_14:

LABEL_15:
  if (!v8 || [&unk_1EFAAC5F8 indexOfObject:v8] != 0x7FFFFFFFFFFFFFFFLL)
  {
    lastPathComponent = [pathCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    v8 = stringByDeletingPathExtension;
  }

  return v8;
}

+ (void)sendEventLazy:(id)lazy builder:(id)builder
{
  v8 = *MEMORY[0x1E69E9840];
  lazyCopy = lazy;
  if (gSecCoreAnalyticsEnabled)
  {
    AnalyticsSendEventLazy();
  }

  else
  {
    v5 = secLogObjForScope("seccoreanalytics");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = lazyCopy;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Skipping sending event %@ due to process configuration", &v6, 0xCu);
    }
  }
}

+ (void)sendEvent:(id)event event:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (gSecCoreAnalyticsEnabled)
  {
    AnalyticsSendEvent();
  }

  else
  {
    v5 = secLogObjForScope("seccoreanalytics");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = eventCopy;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Skipping sending event %@ due to process configuration", &v6, 0xCu);
    }
  }
}

@end