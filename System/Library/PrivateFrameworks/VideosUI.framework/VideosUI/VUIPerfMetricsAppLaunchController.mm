@interface VUIPerfMetricsAppLaunchController
+ (id)sharedInstance;
- (VUIPerfMetricsAppLaunchController)init;
- (void)_setAppLaunchFieldWithData:(id)data;
- (void)recordAppLaunchEventWithEventType:(id)type;
@end

@implementation VUIPerfMetricsAppLaunchController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__VUIPerfMetricsAppLaunchController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once_1 != -1)
  {
    dispatch_once(&sharedInstance_once_1, block);
  }

  v2 = sharedInstance_sharedInstance_10;

  return v2;
}

void __51__VUIPerfMetricsAppLaunchController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_10;
  sharedInstance_sharedInstance_10 = v1;
}

- (VUIPerfMetricsAppLaunchController)init
{
  v18 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VUIPerfMetricsAppLaunchController;
  v2 = [(VUIPerfMetricsAppLaunchController *)&v11 init];
  if (v2)
  {
    *v15 = 0xE00000001;
    v16 = 1;
    v17 = getpid();
    memset(v14, 0, 512);
    v10 = 648;
    v3 = sysctl(v15, 4u, v14, &v10, 0, 0);
    if (v3)
    {
      v4 = VUIDefaultLogObject(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "Could not read processStartTime", v9, 2u);
      }

      v5 = 0;
    }

    else
    {
      v5 = ((SDWORD2(v14[0]) / 1000000.0 + *&v14[0]) * 1000.0);
    }

    v12 = @"processStartTime";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    v13 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [(VUIPerfMetricsAppLaunchController *)v2 _setAppLaunchFieldWithData:v7];
  }

  return v2;
}

- (void)recordAppLaunchEventWithEventType:(id)type
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF00];
  typeCopy = type;
  date = [v4 date];
  [date timeIntervalSince1970];
  v8 = v7 * 1000.0;

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vcvtad_u64_f64(v8)];
  v11 = typeCopy;
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(VUIPerfMetricsAppLaunchController *)self _setAppLaunchFieldWithData:v10];
}

- (void)_setAppLaunchFieldWithData:(id)data
{
  v13[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  appLaunchData = [(VUIPerfMetricsAppLaunchController *)selfCopy appLaunchData];

  if (!appLaunchData)
  {
    v12 = @"isAppLaunch";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(VUIPerfMetricsAppLaunchController *)selfCopy setAppLaunchData:v8];
  }

  appLaunchData2 = [(VUIPerfMetricsAppLaunchController *)selfCopy appLaunchData];
  v10 = [appLaunchData2 mutableCopy];

  [v10 addEntriesFromDictionary:dataCopy];
  v11 = [v10 copy];
  [(VUIPerfMetricsAppLaunchController *)selfCopy setAppLaunchData:v11];

  objc_sync_exit(selfCopy);
}

@end