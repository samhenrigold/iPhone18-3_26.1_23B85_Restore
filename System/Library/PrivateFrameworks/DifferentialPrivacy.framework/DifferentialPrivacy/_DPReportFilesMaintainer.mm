@interface _DPReportFilesMaintainer
+ (BOOL)removeFilesFrom:(id)from olderThanSecond:(double)second;
+ (BOOL)retireFiles:(id)files toDirectory:(id)directory;
+ (id)reportsInDirectory:(id)directory;
- (BOOL)doMaintenance;
- (_DPReportFilesMaintainer)init;
- (_DPReportFilesMaintainer)initWithDirectoryPath:(id)path;
- (void)scheduleMaintenanceWithName:(id)name database:(id)database;
@end

@implementation _DPReportFilesMaintainer

- (_DPReportFilesMaintainer)initWithDirectoryPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = _DPReportFilesMaintainer;
  v6 = [(_DPReportFilesMaintainer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportsDirectoryPath, path);
  }

  return v7;
}

- (_DPReportFilesMaintainer)init
{
  v3 = +[_DPStrings reportsDirectoryPath];
  v4 = [(_DPReportFilesMaintainer *)self initWithDirectoryPath:v3];

  return v4;
}

+ (id)reportsInDirectory:(id)directory
{
  directoryCopy = directory;
  context = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager enumeratorAtPath:directoryCopy];
  nextObject = [v6 nextObject];
  if (nextObject)
  {
    v8 = nextObject;
    do
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", directoryCopy, v8];
      v15 = 0;
      if ([defaultManager fileExistsAtPath:v9 isDirectory:&v15])
      {
        if (v15 == 1)
        {
          [v6 skipDescendents];
        }

        else
        {
          v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
          [v4 addObject:v10];
        }
      }

      nextObject2 = [v6 nextObject];

      v8 = nextObject2;
    }

    while (nextObject2);
  }

  v12 = [v4 copy];

  objc_autoreleasePoolPop(context);

  return v12;
}

+ (BOOL)removeFilesFrom:(id)from olderThanSecond:(double)second
{
  fromCopy = from;
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-second];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager enumeratorAtPath:fromCopy];
  nextObject = [v8 nextObject];
  if (nextObject)
  {
    v10 = nextObject;
    v11 = 0x277CCA000uLL;
    do
    {
      v12 = [*(v11 + 3240) stringWithFormat:@"%@/%@", fromCopy, v10];
      v21 = 0;
      if ([defaultManager fileExistsAtPath:v12 isDirectory:&v21])
      {
        if (v21 == 1)
        {
          [v8 skipDescendents];
        }

        else
        {
          v13 = [defaultManager attributesOfItemAtPath:v12 error:0];
          fileCreationDate = [v13 fileCreationDate];

          if ([fileCreationDate compare:v6] == -1)
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager2 attributesOfItemAtPath:v12 error:0];
            v16 = v11;
            v18 = v17 = v6;
            [v18 fileSize];

            v6 = v17;
            v11 = v16;

            [defaultManager removeItemAtPath:v12 error:0];
          }
        }
      }

      nextObject2 = [v8 nextObject];

      v10 = nextObject2;
    }

    while (nextObject2);
  }

  return 1;
}

+ (BOOL)retireFiles:(id)files toDirectory:(id)directory
{
  v41 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  directoryCopy = directory;
  [MEMORY[0x277CCAA00] defaultManager];
  v26 = v33 = 0;
  v27 = directoryCopy;
  if (([v26 fileExistsAtPath:directoryCopy isDirectory:&v33] & 1) == 0)
  {
    obj = +[_DPLog daemon];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      +[_DPReportFilesMaintainer retireFiles:toDirectory:];
    }

    goto LABEL_19;
  }

  if ((v33 & 1) == 0)
  {
    obj = +[_DPLog daemon];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      +[_DPReportFilesMaintainer retireFiles:toDirectory:];
    }

LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = filesCopy;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v23 = filesCopy;
    v9 = *v30;
    v24 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        absoluteString = [v11 absoluteString];
        lastPathComponent = [absoluteString lastPathComponent];

        v14 = [v27 stringByAppendingPathComponent:lastPathComponent];
        v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:0];
        path = [v11 path];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v18 = [defaultManager attributesOfItemAtPath:path error:0];
        [v18 fileSize];

        v28 = 0;
        LOBYTE(defaultManager) = [v26 moveItemAtURL:v11 toURL:v15 error:&v28];
        v19 = v28;
        if ((defaultManager & 1) == 0)
        {
          v20 = +[_DPLog daemon];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v35 = v11;
            v36 = 2112;
            v37 = v15;
            v38 = 2112;
            v39 = v19;
            _os_log_debug_impl(&dword_22622D000, v20, OS_LOG_TYPE_DEBUG, "moveItemAtURL:%@ toURL:%@ failed with error %@", buf, 0x20u);
          }

          v24 = 0;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v40 count:16];
    }

    while (v8);
    filesCopy = v23;
    v21 = v24;
  }

  else
  {
    v21 = 1;
  }

LABEL_20:

  return v21 & 1;
}

- (BOOL)doMaintenance
{
  v3 = kSecondsIn3Day;
  v4 = objc_autoreleasePoolPush();
  [objc_opt_class() removeFilesFrom:self->_reportsDirectoryPath olderThanSecond:v3];
  v5 = objc_opt_class();
  v6 = [objc_opt_class() retiredReportsPath:self->_reportsDirectoryPath];
  [v5 removeFilesFrom:v6 olderThanSecond:v3];

  objc_autoreleasePoolPop(v4);
  return 1;
}

- (void)scheduleMaintenanceWithName:(id)name database:(id)database
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65___DPReportFilesMaintainer_scheduleMaintenanceWithName_database___block_invoke;
  v7[3] = &unk_27858A930;
  v7[4] = self;
  nameCopy = name;
  v5 = MEMORY[0x22AA7A8C0](v7);
  v6 = [_DPPeriodicTask taskWithName:nameCopy period:kSecondsIn24Hours handler:v5];

  [_DPPeriodicTaskManager registerTask:v6];
}

@end