@interface CMISmartStyleProcessorSettingsV1
+ (id)sharedInstance;
+ (id)tuningParametersForVariant:(unint64_t)variant;
- (id)tuningParametersForVariant:(uint64_t)variant;
- (uint64_t)loadTuningParameters;
- (void)initLoadingSmartStyleProcessorSettings;
@end

@implementation CMISmartStyleProcessorSettingsV1

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken != -1)
  {
    +[CMISmartStyleProcessorSettingsV1 sharedInstance];
  }

  v0 = sharedInstance_instance;

  return v0;
}

void __50__CMISmartStyleProcessorSettingsV1_sharedInstance__block_invoke(id a1)
{
  sharedInstance_instance = [[CMISmartStyleProcessorSettingsV1 alloc] initLoadingSmartStyleProcessorSettings];

  _objc_release_x1();
}

+ (id)tuningParametersForVariant:(unint64_t)variant
{
  v4 = +[CMISmartStyleProcessorSettingsV1 sharedInstance];
  v5 = [(CMISmartStyleProcessorSettingsV1 *)v4 tuningParametersForVariant:variant];

  return v5;
}

- (void)initLoadingSmartStyleProcessorSettings
{
  if (!self)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CMISmartStyleProcessorSettingsV1;
  v1 = objc_msgSendSuper2(&v6, "init");
  v2 = v1;
  if (!v1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6.receiver, v6.super_class, v7, v8, vars0, vars8);
    return v2;
  }

  if (([(CMISmartStyleProcessorSettingsV1 *)v1 loadTuningParameters]& 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6.receiver, v6.super_class, v7, v8, vars0, vars8);

    return 0;
  }

  return v2;
}

- (id)tuningParametersForVariant:(uint64_t)variant
{
  if (variant)
  {
    v2 = *(variant + 8);
    v3 = [NSNumber numberWithUnsignedInteger:a2];
    v4 = [v2 objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)loadTuningParameters
{
  if (!self)
  {
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  v37[0] = 0;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (!v3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v22, v23, v24, v25, v26, v28, v30);
LABEL_30:
    LOBYTE(v6) = 0;
    goto LABEL_23;
  }

  v5 = [v3 pathForResource:@"SmartStyleProcessorV1-Tuning" ofType:@"plist"];
  v6 = [NSDictionary dictionaryWithContentsOfFile:v5];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"SmartStyleProcessorV1"];
    if (v7)
    {
      v8 = v7;
      v31 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
      if (v31)
      {
        v27 = v6;
        v29 = v4;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v33 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v34;
LABEL_8:
          v13 = 0;
          while (1)
          {
            if (*v34 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v33 + 1) + 8 * v13);
            v15 = [v9 objectForKeyedSubscript:v14];
            v16 = [&off_209F8 objectForKeyedSubscript:v14];
            if (!v16)
            {
              break;
            }

            v17 = objc_alloc_init(CMISmartStyleProcessorTuningV1);
            if (!v17)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
              goto LABEL_21;
            }

            v18 = v17;
            [v15 cmi_floatValueForKey:@"PersonMaskDilatedMaskVal" defaultValue:v37 found:0.0];
            [(CMISmartStyleProcessorTuningV1 *)v18 setPersonMaskDilatedMaskVal:?];
            if ((v37[0] & 1) == 0)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v22, v23, v1, self, v27, v29, v31);

              goto LABEL_21;
            }

            [v31 setObject:v18 forKeyedSubscript:v16];

            if (v11 == ++v13)
            {
              v11 = [v9 countByEnumeratingWithState:&v33 objects:v32 count:16];
              if (v11)
              {
                goto LABEL_8;
              }

              goto LABEL_16;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_1();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_21:

          LOBYTE(v6) = v37[0];
          goto LABEL_22;
        }

LABEL_16:

        v6 = *(self + 8);
        *(self + 8) = v31;
        v19 = v31;

        LOBYTE(v6) = 1;
        v37[0] = 1;

LABEL_22:
        v4 = v29;
        goto LABEL_23;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v22, v23, v24, v25, v26, v28, 0);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v22, v23, v24, v25, v26, v28, v30);
    }

    goto LABEL_30;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v22, v23, v24, v25, v26, v28, v30);
LABEL_23:

  return v6 & 1;
}

@end