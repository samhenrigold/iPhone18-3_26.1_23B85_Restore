@interface SettingsCellularSharedUtils
+ (id)createCTClientSerialQueue:(id)queue;
+ (id)sharedCTClientWorkloop;
+ (id)usageSizeString:(double)string;
+ (void)logSpecifiers:(id)specifiers origin:(id)origin;
@end

@implementation SettingsCellularSharedUtils

+ (id)sharedCTClientWorkloop
{
  if (qword_280F75D60 != -1)
  {
    dispatch_once(&qword_280F75D60, &__block_literal_global_3);
  }

  v3 = _MergedGlobals_7;

  return v3;
}

uint64_t __53__SettingsCellularSharedUtils_sharedCTClientWorkloop__block_invoke()
{
  _MergedGlobals_7 = dispatch_workloop_create("com.apple.preferences.coretelephony_client_workloop");

  return MEMORY[0x2821F96F8]();
}

+ (id)createCTClientSerialQueue:(id)queue
{
  queue = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.preferences.coretelephony_client_%@_queue", queue];
  uTF8String = [queue UTF8String];
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  sharedCTClientWorkloop = [self sharedCTClientWorkloop];
  v8 = dispatch_queue_create_with_target_V2(uTF8String, v6, sharedCTClientWorkloop);

  return v8;
}

+ (void)logSpecifiers:(id)specifiers origin:(id)origin
{
  v27 = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  originCopy = origin;
  v7 = [Logger loggerWithCategory:@"Specifiers"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = originCopy;
    v25 = 2048;
    v26 = [specifiersCopy count];
    _os_log_impl(&dword_2658CA000, v7, OS_LOG_TYPE_DEFAULT, "%@ showing %zu specifiers", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = specifiersCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v19;
    *&v10 = 138412546;
    v17 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = [Logger loggerWithCategory:@"Specifiers", v17, v18];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          name = [v14 name];
          *buf = v17;
          v24 = originCopy;
          v25 = 2112;
          v26 = name;
          _os_log_impl(&dword_2658CA000, v15, OS_LOG_TYPE_DEFAULT, "%@ showing specifier: %@", buf, 0x16u);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

+ (id)usageSizeString:(double)string
{
  if (qword_280F75D70 != -1)
  {
    dispatch_once(&qword_280F75D70, &__block_literal_global_8);
  }

  v4 = qword_280F75D68;

  return [v4 stringFromByteCount:string];
}

uint64_t __47__SettingsCellularSharedUtils_usageSizeString___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA8E8]);
  v1 = qword_280F75D68;
  qword_280F75D68 = v0;

  [qword_280F75D68 setZeroPadsFractionDigits:1];
  [qword_280F75D68 setAdaptive:0];
  v2 = qword_280F75D68;

  return [v2 setCountStyle:3];
}

@end