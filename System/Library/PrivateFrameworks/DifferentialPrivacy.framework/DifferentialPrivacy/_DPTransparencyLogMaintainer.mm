@interface _DPTransparencyLogMaintainer
+ (BOOL)checkAndRemoveFile:(id)file;
+ (double)lifetimeOfFile:(id)file;
- (BOOL)doMaintenance;
- (_DPTransparencyLogMaintainer)init;
- (_DPTransparencyLogMaintainer)initWithDirectoryPath:(id)path;
- (void)scheduleMaintenanceWithName:(id)name database:(id)database;
@end

@implementation _DPTransparencyLogMaintainer

- (_DPTransparencyLogMaintainer)initWithDirectoryPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = _DPTransparencyLogMaintainer;
  v6 = [(_DPTransparencyLogMaintainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportsDirectoryPath, path);
  }

  return v7;
}

- (_DPTransparencyLogMaintainer)init
{
  v3 = +[_DPStrings transparencyLogDirectoryPath];
  v4 = [(_DPTransparencyLogMaintainer *)self initWithDirectoryPath:v3];

  return v4;
}

+ (double)lifetimeOfFile:(id)file
{
  v27 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v4 = kSecondsIn3Day;
  v22 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:fileCopy options:1 error:&v22];
  v6 = v22;
  if (v5)
  {
    v21 = v6;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v21];
    v8 = v21;

    if (!v7)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(_DPTransparencyLogMaintainer *)fileCopy lifetimeOfFile:v8];
      }
    }

    if (![v7 count])
    {
      v18 = 0.0;
      goto LABEL_28;
    }

    v10 = [v7 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v12 = 0;
    if (isKindOfClass)
    {
      v13 = [v7 objectAtIndexedSubscript:0];
      v12 = [v13 objectForKeyedSubscript:@"key"];
    }

    v14 = [v12 length];
    v15 = +[_DPLog framework];
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v24 = v12;
        v25 = 2112;
        v26 = fileCopy;
        _os_log_impl(&dword_22622D000, v16, OS_LOG_TYPE_INFO, "Found the key %@ in transparency log %@", buf, 0x16u);
      }

      v17 = [_DPKeyNames keyPropertiesForKey:v12];
      if (v17)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(_DPTransparencyLogMaintainer *)fileCopy lifetimeOfFile:v16];
      }
    }

    v19 = +[_DPLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[_DPTransparencyLogMaintainer lifetimeOfFile:];
    }

    v17 = 0;
LABEL_24:
    if ([v17 transparencyLogLifetime])
    {
      v18 = [v17 transparencyLogLifetime] * 24.0 * 3600.0;
    }

    else
    {
      v18 = v4;
    }

    goto LABEL_28;
  }

  v7 = +[_DPLog framework];
  v18 = 0.0;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(_DPTransparencyLogMaintainer *)fileCopy lifetimeOfFile:v6];
  }

  v8 = v6;
LABEL_28:

  return v18;
}

+ (BOOL)checkAndRemoveFile:(id)file
{
  v23 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  [objc_opt_class() lifetimeOfFile:fileCopy];
  v5 = v4;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  date = [MEMORY[0x277CBEAA8] date];
  v20 = 0;
  v8 = *MEMORY[0x277CBE7C0];
  v19 = 0;
  v9 = [fileCopy getResourceValue:&v20 forKey:v8 error:&v19];
  v10 = v20;
  v11 = v19;
  if ((v9 & 1) == 0)
  {
    v12 = +[_DPLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[_DPTransparencyLogMaintainer checkAndRemoveFile:];
    }

    goto LABEL_9;
  }

  if (!v10)
  {
    v12 = +[_DPLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(_DPTransparencyLogMaintainer *)fileCopy checkAndRemoveFile:v12];
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v12 = [v10 dateByAddingTimeInterval:v5];
  if ([v12 compare:date]== -1)
  {
    v18 = 0;
    v13 = [defaultManager removeItemAtURL:fileCopy error:&v18];
    v15 = v18;
    v16 = +[_DPLog framework];
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = fileCopy;
        _os_log_impl(&dword_22622D000, v17, OS_LOG_TYPE_INFO, "Successfully removed transparency log %@.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(_DPTransparencyLogMaintainer *)fileCopy checkAndRemoveFile:v15];
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_10:

  return v13;
}

- (BOOL)doMaintenance
{
  v17 = *MEMORY[0x277D85DE8];
  reportsDirectoryPath = [(_DPTransparencyLogMaintainer *)self reportsDirectoryPath];
  v3 = [_DPReportFilesMaintainer reportsInDirectory:reportsDirectoryPath];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [objc_opt_class() checkAndRemoveFile:{v9, v12}];
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return 1;
}

- (void)scheduleMaintenanceWithName:(id)name database:(id)database
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69___DPTransparencyLogMaintainer_scheduleMaintenanceWithName_database___block_invoke;
  v7[3] = &unk_27858A930;
  v7[4] = self;
  nameCopy = name;
  v5 = MEMORY[0x22AA7A8C0](v7);
  v6 = [_DPPeriodicTask taskWithName:nameCopy period:kSecondsIn24Hours handler:v5];

  [_DPPeriodicTaskManager registerTask:v6];
}

+ (void)lifetimeOfFile:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3(&dword_22622D000, v3, v4, "Failed to parse the JSON transparency log for file %@ with error %@.", v5, v6, v7, v8);
}

+ (void)lifetimeOfFile:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "No key found in the transparency log %@", &v2, 0xCu);
}

+ (void)lifetimeOfFile:(uint64_t)a1 .cold.4(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3(&dword_22622D000, v3, v4, "Failed to read transparency log file %@ with error %@.", v5, v6, v7, v8);
}

+ (void)checkAndRemoveFile:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3(&dword_22622D000, v3, v4, "Failed to remove transparency log %@ with error %@.", v5, v6, v7, v8);
}

+ (void)checkAndRemoveFile:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "No value for NSURLCreationDateKey from %@.", &v2, 0xCu);
}

@end