@interface NRDataFileHistoryHelpers
+ (BOOL)archiveDeviceHistory:(id)history;
+ (BOOL)archiveSecureProperties:(id)properties;
+ (BOOL)createMissingDates:(id)dates;
+ (id)unarchiveDeviceHistory;
+ (id)unarchiveSecureProperties;
@end

@implementation NRDataFileHistoryHelpers

+ (id)unarchiveDeviceHistory
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACD0];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v4 = +[NRDataFilePaths pathToNanoRegistryHistoryFile];
  v5 = [v2 nr_secureUnarchiveObjectOfClasses:v3 withFile:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = nr_daemon_log();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (v7)
      {
        v8 = nr_daemon_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = +[NRDataFilePaths pathToNanoRegistryHistoryFile];
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = 138543618;
          v14 = v10;
          v15 = 2114;
          v16 = v12;
          _os_log_error_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_ERROR, "Failure loading history file %{public}@: File has incorrect object %{public}@.", &v13, 0x16u);
        }
      }

      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)archiveDeviceHistory:(id)history
{
  v20 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  v4 = +[NRDataFilePaths pathToNanoRegistryHistoryFile];
  if ([historyCopy dirty])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x1E696ACC8] nr_secureArchivedDataWithRootObject:historyCopy];
    v7 = v6;
    if (v6)
    {
      v15 = 0;
      v8 = [v6 writeToFile:v4 options:268435457 error:&v15];
      v9 = v15;
      if (v8)
      {
        LOBYTE(v10) = 1;
LABEL_15:

        objc_autoreleasePoolPop(v5);
        goto LABEL_16;
      }

      v12 = nr_daemon_log();
      LODWORD(v10) = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (!v10)
      {
        goto LABEL_15;
      }

      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        nr_safeDescription = [v9 nr_safeDescription];
        *buf = 138543618;
        v17 = v4;
        v18 = 2114;
        v19 = nr_safeDescription;
        _os_log_error_impl(&dword_1E0ADF000, v10, OS_LOG_TYPE_ERROR, "Failure saving active state machine file %{public}@: writeToFile returned NO %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v11 = nr_daemon_log();
      LODWORD(v10) = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v10)
      {
        v9 = 0;
        goto LABEL_15;
      }

      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v4;
        _os_log_error_impl(&dword_1E0ADF000, v10, OS_LOG_TYPE_ERROR, "Failure saving history file %{public}@: Archiver returned nil", buf, 0xCu);
      }

      v9 = 0;
    }

    LOBYTE(v10) = 0;
    goto LABEL_15;
  }

  v9 = 0;
  LOBYTE(v10) = 1;
LABEL_16:

  return v10;
}

void __64__NRDataFileHistoryHelpers_findPairedDateForDeviceID_inHistory___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a4;
  if ([a2 isEqual:*(a1 + 32)] && objc_msgSend(v9, "isEqual:", MEMORY[0x1E695E118]))
  {
    v6 = [*(a1 + 40) date];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

+ (BOOL)createMissingDates:(id)dates
{
  v89 = *MEMORY[0x1E69E9840];
  datesCopy = dates;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = [datesCopy deviceCollection];
  v47 = [obj countByEnumeratingWithState:&v62 objects:v86 count:16];
  if (v47)
  {
    v46 = *v63;
    do
    {
      v3 = 0;
      do
      {
        if (*v63 != v46)
        {
          v4 = v3;
          objc_enumerationMutation(obj);
          v3 = v4;
        }

        v48 = v3;
        v51 = *(*(&v62 + 1) + 8 * v3);
        deviceCollection = [datesCopy deviceCollection];
        v53 = [deviceCollection objectForKeyedSubscript:v51];

        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v6 = [v53 objectForKeyedSubscript:@"isPaired"];
        value = [v6 value];
        bOOLValue = [value BOOLValue];

        if (bOOLValue)
        {
          v9 = [v53 objectForKeyedSubscript:@"pairedDate"];
          value2 = [v9 value];

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v10 = MEMORY[0x1E695DF00];
          if (isKindOfClass)
          {
            [value2 doubleValue];
            v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
            if (!v11)
            {
              goto LABEL_12;
            }

LABEL_29:
            v28 = [NRDevicePropertyDiffType alloc];
            v29 = [[NRDevicePropertyDiff alloc] initWithValue:v11];
            v30 = [(NRDevicePropertyDiffType *)v28 initWithDiff:v29 andChangeType:1];

            [dictionary2 setObject:v30 forKeyedSubscript:@"pairedDate"];
            if (v11)
            {
LABEL_30:
              v31 = [v53 objectForKeyedSubscript:@"lastActiveDate"];
              value3 = [v31 value];

              if (value3)
              {
                value2 = value3;
              }

              else
              {
                v33 = [NRDevicePropertyDiffType alloc];
                v34 = [[NRDevicePropertyDiff alloc] initWithValue:v11];
                v35 = [(NRDevicePropertyDiffType *)v33 initWithDiff:v34 andChangeType:1];

                [dictionary2 setObject:v35 forKeyedSubscript:@"lastActiveDate"];
                value2 = 0;
              }
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = value2;
              if (v11)
              {
                goto LABEL_30;
              }
            }

LABEL_12:
            v56 = v51;
            v12 = datesCopy;
            objc_opt_self();
            v76 = 0;
            v77 = &v76;
            v78 = 0x3032000000;
            v79 = __Block_byref_object_copy__6;
            v80 = __Block_byref_object_dispose__6;
            v81 = 0;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v54 = v12;
            v57 = [v54 countByEnumeratingWithState:&v72 objects:v87 count:16];
            if (v57)
            {
              v55 = *v73;
              do
              {
                for (i = 0; i != v57; ++i)
                {
                  if (*v73 != v55)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v13 = *(*(&v72 + 1) + 8 * i);
                  diff = [v13 diff];
                  v66[0] = MEMORY[0x1E69E9820];
                  v66[1] = 3221225472;
                  v67 = __64__NRDataFileHistoryHelpers_findPairedDateForDeviceID_inHistory___block_invoke;
                  v68 = &unk_1E86DC780;
                  v15 = v56;
                  v70 = v13;
                  v71 = &v76;
                  v69 = v15;
                  v16 = diff;
                  v61 = @"isPaired";
                  v59 = v66;
                  objc_opt_self();
                  v84 = 0u;
                  v85 = 0u;
                  v82 = 0u;
                  v83 = 0u;
                  v17 = v16;
                  v18 = [v17 countByEnumeratingWithState:&v82 objects:v88 count:16];
                  if (v18)
                  {
                    v60 = *v83;
                    do
                    {
                      for (j = 0; j != v18; ++j)
                      {
                        if (*v83 != v60)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v20 = *(*(&v82 + 1) + 8 * j);
                        v21 = [v17 objectForKeyedSubscript:v20];
                        diff2 = [v21 diff];
                        v23 = [diff2 objectForKeyedSubscript:v61];
                        v24 = v23;
                        if (v23)
                        {
                          changeType = [v23 changeType];
                          diff3 = [v24 diff];
                          value4 = [diff3 value];
                          v67(v59, v20, changeType, value4);
                        }
                      }

                      v18 = [v17 countByEnumeratingWithState:&v82 objects:v88 count:16];
                    }

                    while (v18);
                  }
                }

                v57 = [v54 countByEnumeratingWithState:&v72 objects:v87 count:16];
              }

              while (v57);
            }

            v11 = v77[5];
            _Block_object_dispose(&v76, 8);

            if (((v11 == 0) & ~isKindOfClass) == 0)
            {
              goto LABEL_29;
            }

            v11 = 0;
          }
        }

        if ([dictionary2 count])
        {
          v36 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:dictionary2];
          v37 = [[NRDeviceDiffType alloc] initWithDiff:v36 andChangeType:1];
          [dictionary setObject:v37 forKeyedSubscript:v51];
        }

        v3 = v48 + 1;
      }

      while (v48 + 1 != v47);
      v47 = [obj countByEnumeratingWithState:&v62 objects:v86 count:16];
    }

    while (v47);
  }

  if ([dictionary count])
  {
    v38 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:dictionary];
    deviceCollection2 = [datesCopy deviceCollection];
    v40 = [deviceCollection2 applyDiff:v38];
  }

  if ([datesCopy dirty])
  {
    v41 = [NRDataFileHistoryHelpers archiveDeviceHistory:datesCopy];
  }

  else
  {
    v41 = 1;
  }

  return v41;
}

+ (BOOL)archiveSecureProperties:(id)properties
{
  v12 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if ([propertiesCopy dirty] && (v4 = MEMORY[0x1E696ACC8], +[NRDataFilePaths pathToNanoRegistryHistorySecurePropertiesFile](NRDataFilePaths, "pathToNanoRegistryHistorySecurePropertiesFile"), v5 = objc_claimAutoreleasedReturnValue(), LOBYTE(v4) = objc_msgSend(v4, "nr_secureArchiveRootObject:toFile:", propertiesCopy, v5), v5, (v4 & 1) == 0))
  {
    v8 = nr_daemon_log();
    LODWORD(v6) = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v6 = nr_daemon_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NRDataFilePaths pathToNanoRegistryHistorySecurePropertiesFile];
        v10 = 138543362;
        v11 = v9;
        _os_log_error_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_ERROR, "Failure saving secure properties file %{public}@: Archiver returned NO", &v10, 0xCu);
      }

      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

+ (id)unarchiveSecureProperties
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACD0];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v4 = +[NRDataFilePaths pathToNanoRegistryHistorySecurePropertiesFile];
  v5 = [v2 nr_secureUnarchiveObjectOfClasses:v3 withFile:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = nr_daemon_log();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (v7)
      {
        v8 = nr_daemon_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = +[NRDataFilePaths pathToNanoRegistryHistorySecurePropertiesFile];
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = 138543618;
          v14 = v10;
          v15 = 2114;
          v16 = v12;
          _os_log_error_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_ERROR, "Failure loading secure properties file %{public}@: File has incorrect object %{public}@.", &v13, 0x16u);
        }
      }

      v5 = 0;
    }
  }

  return v5;
}

@end