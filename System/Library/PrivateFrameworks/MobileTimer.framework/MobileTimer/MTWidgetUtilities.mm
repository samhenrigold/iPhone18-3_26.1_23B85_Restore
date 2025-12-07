@interface MTWidgetUtilities
+ (id)reloadAlarmWidgetTimeline;
+ (id)timeZonesForCurrentClockWidgets;
@end

@implementation MTWidgetUtilities

+ (id)timeZonesForCurrentClockWidgets
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v3 = getCHSWidgetConfigurationReaderClass_softClass;
  v16 = getCHSWidgetConfigurationReaderClass_softClass;
  if (!getCHSWidgetConfigurationReaderClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getCHSWidgetConfigurationReaderClass_block_invoke;
    v12[3] = &unk_1E7B0C600;
    v12[4] = &v13;
    __getCHSWidgetConfigurationReaderClass_block_invoke(v12);
    v3 = v14[3];
  }

  v4 = v3;
  _Block_object_dispose(&v13, 8);
  v5 = objc_alloc_init(v3);
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__MTWidgetUtilities_timeZonesForCurrentClockWidgets__block_invoke;
  v9[3] = &unk_1E7B0C7E8;
  selfCopy = self;
  v7 = v6;
  v10 = v7;
  [v5 allConfiguredWidgetsWithCompletion:v9];

  return v7;
}

void __52__MTWidgetUtilities_timeZonesForCurrentClockWidgets__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    obj = v5;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v43 = [v5 countByEnumeratingWithState:&v51 objects:v60 count:16];
    v8 = 0;
    if (!v43)
    {
      goto LABEL_33;
    }

    v42 = *v52;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v52 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v9;
        v10 = [*(*(&v51 + 1) + 8 * v9) widgetConfigurations];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v45 = v10;
        v11 = [v10 countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (v11)
        {
          v12 = v11;
          v46 = *v48;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v48 != v46)
              {
                objc_enumerationMutation(v45);
              }

              v14 = *(*(&v47 + 1) + 8 * i);
              v15 = [v14 widget];
              v16 = [v15 intent];

              if (v16)
              {
                v17 = a1;
                v18 = [v14 widget];
                v19 = [v18 intent];
                v20 = [v19 _className];
                v21 = objc_opt_class();
                v22 = NSStringFromClass(v21);
                v23 = [v20 isEqualToString:v22];

                if (v23)
                {
                  v24 = MTLogForCategory(8);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    a1 = v17;
                    v25 = *(v17 + 40);
                    *buf = 138543362;
                    v56 = v25;
                    v26 = v24;
                    v27 = "%{public}@ read widget intent ClocksIntent";
                    goto LABEL_22;
                  }

                  a1 = v17;
                  goto LABEL_24;
                }

                v28 = [v14 widget];
                v29 = [v28 intent];
                v30 = [v29 _className];
                v31 = objc_opt_class();
                v32 = NSStringFromClass(v31);
                v33 = [v30 isEqualToString:v32];

                if (v33)
                {
                  v24 = MTLogForCategory(8);
                  a1 = v17;
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    v34 = *(v17 + 40);
                    *buf = 138543362;
                    v56 = v34;
                    v26 = v24;
                    v27 = "%{public}@ read widget intent ClocksSingleIntent";
LABEL_22:
                    _os_log_impl(&dword_1B1F9F000, v26, OS_LOG_TYPE_INFO, v27, buf, 0xCu);
                  }

LABEL_24:

                  v35 = [v14 widget];
                  v36 = [v35 intent];
                  v37 = [v36 valueForKey:@"cities"];

                  v38 = [*(a1 + 40) timeZoneFromCities:v37];

                  v8 = v38;
                }

                else
                {
                  a1 = v17;
                }

                v39 = MTLogForCategory(8);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  v40 = *(a1 + 40);
                  *buf = 138543618;
                  v56 = v40;
                  v57 = 2114;
                  v58 = v8;
                  _os_log_impl(&dword_1B1F9F000, v39, OS_LOG_TYPE_INFO, "%{public}@ read clock widget timezones: %{public}@", buf, 0x16u);
                }

                continue;
              }
            }

            v12 = [v45 countByEnumeratingWithState:&v47 objects:v59 count:16];
          }

          while (v12);
        }

        v9 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
      if (!v43)
      {
LABEL_33:
        [*(a1 + 32) finishWithResult:v8];

        v6 = 0;
        v5 = obj;
        goto LABEL_34;
      }
    }
  }

  v7 = MTLogForCategory(8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __52__MTWidgetUtilities_timeZonesForCurrentClockWidgets__block_invoke_cold_1(a1, v6, v7);
  }

  [*(a1 + 32) finishWithError:v6];
LABEL_34:
}

+ (id)reloadAlarmWidgetTimeline
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = @"com.apple.mobiletimer.WorldClockWidget";
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ reloading widget timeline for %{bundleIdentifier}@", buf, 0x16u);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getCHSTimelineControllerClass_softClass;
  v13 = getCHSTimelineControllerClass_softClass;
  if (!getCHSTimelineControllerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCHSTimelineControllerClass_block_invoke;
    v15 = &unk_1E7B0C600;
    v16 = &v10;
    __getCHSTimelineControllerClass_block_invoke(buf);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = [v4 alloc];
  v7 = [v6 initWithExtensionBundleIdentifier:@"com.apple.mobiletimer.WorldClockWidget" kind:{@"com.apple.mobiletimer.alarm", v10}];
  v8 = [v7 reloadTimelineWithReason:@"alarm update"];

  return v8;
}

void __52__MTWidgetUtilities_timeZonesForCurrentClockWidgets__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ error reading into widgets config: %{public}@", &v4, 0x16u);
}

@end