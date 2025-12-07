@interface EXSwiftUI_Subsystem
+ (id)sharedInstance;
- (EXSwiftUI_Subsystem)init;
- (void)beginUsing:(id)using withBundle:(id)bundle;
- (void)init;
@end

@implementation EXSwiftUI_Subsystem

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EXSwiftUI_Subsystem_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, block);
  }

  v2 = __instance;

  return v2;
}

- (EXSwiftUI_Subsystem)init
{
  v21.receiver = self;
  v21.super_class = EXSwiftUI_Subsystem;
  v2 = [(EXSwiftUI_Subsystem *)&v21 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v4 = _EXLegacyLog(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [EXSwiftUI_Subsystem init];
  }

  size = 0;
  prog_image_header = _dyld_get_prog_image_header();
  if (!prog_image_header)
  {
    v9 = _EXLegacyLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [EXSwiftUI_Subsystem init];
    }

    goto LABEL_13;
  }

  v6 = getsectiondata(prog_image_header, "__TEXT", "__swift5_entry", &size);
  if (!v6 || size <= 3)
  {
LABEL_13:
    v10 = _EXLegacyLog(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [EXSwiftUI_Subsystem init];
    }

    goto LABEL_16;
  }

  v7 = *v6;
  if (v7)
  {
    v8 = (v6 + v7);
    if ((v6 + v7))
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_16:
  v11 = _EXLegacyLog(v6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [EXSwiftUI_Subsystem init];
  }

LABEL_19:
  v12 = _EXLegacyLog(v6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [EXSwiftUI_Subsystem init];
  }

  v6 = dlsym(0xFFFFFFFFFFFFFFFBLL, "main");
  v8 = v6;
  if (!v6)
  {
    v18 = _EXLegacyLog(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [EXSwiftUI_Subsystem init];
    }

    goto LABEL_34;
  }

LABEL_22:
  v13 = _EXLegacyLog(v6);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [EXSwiftUI_Subsystem init];
  }

  v14 = _NSGetArgc();
  v15 = _NSGetArgv();
  if (v14)
  {
    v16 = *v14;
    if (v15)
    {
LABEL_26:
      v17 = *v15;
      goto LABEL_31;
    }
  }

  else
  {
    v16 = 0;
    if (v15)
    {
      goto LABEL_26;
    }
  }

  v17 = 0;
LABEL_31:
  v19 = v8(v16, v17);
  if (v19 == 1)
  {
    v18 = _EXLegacyLog(v19);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [EXSwiftUI_Subsystem init];
    }

LABEL_34:
  }

  return v3;
}

- (void)beginUsing:(id)using withBundle:(id)bundle
{
  v15 = *MEMORY[0x1E69E9840];
  usingCopy = using;
  bundleCopy = bundle;
  v8 = _EXLegacyLog(bundleCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138543874;
    selfCopy = self;
    v11 = 2112;
    v12 = bundleCopy;
    v13 = 2112;
    v14 = usingCopy;
    _os_log_debug_impl(&dword_1847D1000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ - Begin using bunde %@ with personality: %@ personality.", &v9, 0x20u);
  }

  +[EXConcreteExtensionContextVendor _startListening];
}

- (void)init
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end