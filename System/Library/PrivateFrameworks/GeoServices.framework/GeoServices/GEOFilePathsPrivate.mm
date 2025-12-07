@interface GEOFilePathsPrivate
+ (id)daemonContainerCachesPathUsingLibSystem;
+ (id)daemonContainerLibraryPathUsingLibSystem;
+ (id)daemonContainerPathUsingLibSystem;
+ (id)systemContainerCachesPathUsingLibSystem;
+ (id)systemContainerLibraryPathUsingLibSystem;
+ (id)systemContainerPathUsingLibSystem;
@end

@implementation GEOFilePathsPrivate

void __56__GEOFilePathsPrivate_daemonContainerPathUsingLibSystem__block_invoke()
{
  v1 = [GEOEntitlements currentProcessEntitlement:@"com.apple.security.system-groups"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = [v1 containsObject:@"systemgroup.com.apple.geod"];
  }

  else
  {
    v0 = 0;
  }

  daemonContainerPathUsingLibSystem_isEntitled = v0;
}

+ (id)systemContainerLibraryPathUsingLibSystem
{
  systemContainerPathUsingLibSystem = [self systemContainerPathUsingLibSystem];
  v3 = [systemContainerPathUsingLibSystem stringByAppendingPathComponent:@"Library"];

  return v3;
}

+ (id)systemContainerCachesPathUsingLibSystem
{
  systemContainerLibraryPathUsingLibSystem = [self systemContainerLibraryPathUsingLibSystem];
  v3 = [systemContainerLibraryPathUsingLibSystem stringByAppendingPathComponent:@"Caches"];

  return v3;
}

+ (id)daemonContainerPathUsingLibSystem
{
  v10 = *MEMORY[0x1E69E9840];
  if (daemonContainerPathUsingLibSystem_onceToken != -1)
  {
    dispatch_once(&daemonContainerPathUsingLibSystem_onceToken, &__block_literal_global_51591);
  }

  if (daemonContainerPathUsingLibSystem_isEntitled == 1)
  {
    v2 = container_system_group_path_for_identifier();
    if (v2)
    {
      v3 = v2;
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v2];
      free(v3);
      goto LABEL_9;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 134218242;
      v7 = 1;
      v8 = 2080;
      v9 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[ERROR] system container error %llu system container path = '%s'", buf, 0x16u);
    }
  }

  v4 = 0;
LABEL_9:

  return v4;
}

+ (id)daemonContainerLibraryPathUsingLibSystem
{
  daemonContainerPathUsingLibSystem = [self daemonContainerPathUsingLibSystem];
  v3 = [daemonContainerPathUsingLibSystem stringByAppendingPathComponent:@"Library"];

  return v3;
}

+ (id)daemonContainerCachesPathUsingLibSystem
{
  daemonContainerLibraryPathUsingLibSystem = [self daemonContainerLibraryPathUsingLibSystem];
  v3 = [daemonContainerLibraryPathUsingLibSystem stringByAppendingPathComponent:@"Caches"];

  return v3;
}

+ (id)systemContainerPathUsingLibSystem
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = container_system_path_for_identifier();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v2];
    free(v3);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 134218242;
      v7 = 1;
      v8 = 2080;
      v9 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[ERROR] system container error %llu. system container path = '%s'", buf, 0x16u);
    }

    v4 = 0;
  }

  return v4;
}

@end