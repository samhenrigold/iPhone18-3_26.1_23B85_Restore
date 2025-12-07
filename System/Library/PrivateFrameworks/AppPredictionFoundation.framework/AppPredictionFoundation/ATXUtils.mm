@interface ATXUtils
+ (BOOL)isInTrashPath:(id)path;
+ (BOOL)shouldSkipExpensiveTask;
+ (id)shuffle:(id)shuffle;
+ (void)logCurrentMemoryFootprint:(id)footprint;
@end

@implementation ATXUtils

+ (BOOL)shouldSkipExpensiveTask
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForAppDataDictionary = [MEMORY[0x277CFE338] keyPathForAppDataDictionary];
  v4 = [userContext objectForKeyedSubscript:keyPathForAppDataDictionary];
  appBundleIdKey = [MEMORY[0x277CFE338] appBundleIdKey];
  v6 = [v4 objectForKeyedSubscript:appBundleIdKey];

  v7 = [v6 isEqualToString:@"com.apple.camera"];
  v8 = v7;
  if (v7)
  {
    v9 = __atxlog_handle_default(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_226368000, v9, OS_LOG_TYPE_DEFAULT, "Should hold off on expensive task", v11, 2u);
    }
  }

  return v8;
}

+ (id)shuffle:(id)shuffle
{
  shuffleCopy = shuffle;
  if ([shuffleCopy count])
  {
    allObjects = [shuffleCopy allObjects];
    v5 = [allObjects mutableCopy];

    v6 = [v5 count];
    v7 = v6 - 1;
    if (v6 != 1)
    {
      do
      {
        [v5 exchangeObjectAtIndex:v7 withObjectAtIndex:arc4random_uniform(v7 + 1)];
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

+ (void)logCurrentMemoryFootprint:(id)footprint
{
  v12 = *MEMORY[0x277D85DE8];
  footprintCopy = footprint;
  if ([MEMORY[0x277D42590] isInternalBuild])
  {
    v4 = ATXMemoryUsageInMBOfCurrentProcess();
    v6 = __atxlog_handle_default(v5);
    v7 = v6;
    if (v4 < 0.0)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [ATXUtils logCurrentMemoryFootprint:footprintCopy];
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218242;
      v9 = v4;
      v10 = 2112;
      v11 = footprintCopy;
      _os_log_impl(&dword_226368000, v7, OS_LOG_TYPE_DEFAULT, "[MemoryLogging] Physical memory footprint: %lf MB, context: %@", &v8, 0x16u);
    }
  }
}

+ (BOOL)isInTrashPath:(id)path
{
  pathCopy = path;
  v11 = 2;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  [defaultManager getRelationship:&v11 ofDirectory:102 inDomain:0 toItemAtURL:pathCopy error:&v10];
  v5 = v10;

  if (v5)
  {
    v7 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXUtils *)pathCopy isInTrashPath:v5];
    }

    v8 = 0;
  }

  else
  {
    v8 = v11 == 0;
  }

  return v8;
}

+ (void)logCurrentMemoryFootprint:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = __error();
  *v9 = 136315394;
  *&v9[4] = strerror(*v2);
  *&v9[12] = 2112;
  *&v9[14] = a1;
  OUTLINED_FUNCTION_1_3(&dword_226368000, v3, v4, "proc_pid_rusage returned error: %s, context: %@", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

+ (void)isInTrashPath:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 path];
  v4 = [a2 localizedDescription];
  *v11 = 138740227;
  *&v11[4] = v3;
  *&v11[12] = 2112;
  *&v11[14] = v4;
  OUTLINED_FUNCTION_1_3(&dword_226368000, v5, v6, "Error retrieving relationship of %{sensitive}@ to Trash folder: %@", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16]);
}

@end