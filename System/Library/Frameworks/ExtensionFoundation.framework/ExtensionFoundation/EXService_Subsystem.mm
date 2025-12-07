@interface EXService_Subsystem
+ (id)initForPlugInKit;
+ (id)sharedInstance;
- (void)beginUsing:(id)using withBundle:(id)bundle;
@end

@implementation EXService_Subsystem

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EXService_Subsystem_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once_1 != -1)
  {
    dispatch_once(&sharedInstance_once_1, block);
  }

  v2 = sharedInstance___instance_0;

  return v2;
}

+ (id)initForPlugInKit
{
  v2 = _EXLegacyLog(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1847D1000, v2, OS_LOG_TYPE_DEFAULT, "Initializing 'EXService_Subsystem'", v5, 2u);
  }

  v3 = +[EXService_Subsystem sharedInstance];

  return v3;
}

- (void)beginUsing:(id)using withBundle:(id)bundle
{
  v21 = *MEMORY[0x1E69E9840];
  usingCopy = using;
  bundleCopy = bundle;
  v8 = _EXLegacyLog(bundleCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = bundleCopy;
    _os_log_impl(&dword_1847D1000, v8, OS_LOG_TYPE_DEFAULT, "Begin using %{public}@ for bundle %{public}@", &v17, 0x16u);
  }

  v9 = +[_EXRunningExtensionInfo extensionInfoForCurrentProcess];
  if (!v9)
  {
    v16 = _EXDefaultLog(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [EXService_Subsystem beginUsing:v16 withBundle:?];
    }

    __break(1u);
  }

  v10 = v9;
  runLoopType = [v9 runLoopType];
  v12 = [runLoopType isEqualToString:@"NSRunLoop"];

  v14 = _EXDefaultLog(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v15)
    {
      [EXService_Subsystem beginUsing:v14 withBundle:?];
    }
  }

  else if (v15)
  {
    [EXService_Subsystem beginUsing:v10 withBundle:v14];
  }

  [MEMORY[0x1E696B0F8] _startListening:v12];
}

- (void)beginUsing:(void *)a1 withBundle:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 runLoopType];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_1847D1000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ (non-NSRunLoop) type detected. Start listening with delayed launchd checkin.", &v4, 0xCu);
}

- (void)beginUsing:(os_log_t)log withBundle:.cold.3(os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = "info";
  v3 = 2080;
  v1 = 136315650;
  v4 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/PK Subsystems/EXService_Subsystem.m";
  v5 = 1024;
  v6 = 36;
  _os_log_fault_impl(&dword_1847D1000, log, OS_LOG_TYPE_FAULT, "%s - %s:%d: Failed to get extension info  for current process", &v1, 0x1Cu);
}

@end