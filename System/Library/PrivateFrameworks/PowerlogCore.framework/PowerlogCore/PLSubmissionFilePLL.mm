@interface PLSubmissionFilePLL
- (BOOL)copyAndPrepareLog;
- (BOOL)copyArchiveAtPath:(id)path to:(id)to;
- (BOOL)copyLastArchiveToPath:(id)path;
- (BOOL)copyPowerlogToPath:(id)path;
- (BOOL)copyUpgradePowerlogToPath:(id)path;
- (BOOL)prepareDatabaseAtPath:(id)path;
- (PLSubmissionFilePLL)initWithConfig:(id)config;
- (id)baseCADictionary;
- (id)fileExtension;
- (id)fileType;
- (id)updateSubmissionTagWithConnection:(id)connection;
- (void)emitCopyResult:(BOOL)result;
- (void)emitDecompressionResult:(BOOL)result;
- (void)emitFileExists:(BOOL)exists;
- (void)emitPreparationResult:(BOOL)result;
- (void)flush;
- (void)generateSubmissionTagForCurrentLog;
- (void)logSubmissionSizeToAnalytics:(unint64_t)analytics withUncompressedSize:(unint64_t)size;
- (void)submit;
@end

@implementation PLSubmissionFilePLL

- (PLSubmissionFilePLL)initWithConfig:(id)config
{
  configCopy = config;
  if (([configCopy submitPLL] & 1) == 0 && !objc_msgSend(configCopy, "submitPLLUpgrade"))
  {
    goto LABEL_9;
  }

  v8.receiver = self;
  v8.super_class = PLSubmissionFilePLL;
  self = [(PLSubmissionFile *)&v8 initWithConfig:configCopy];
  if (!self)
  {
    goto LABEL_8;
  }

  if ([configCopy submitReasonType] == 5)
  {
    taskingType = [configCopy taskingType];
    -[PLSubmissionFilePLL setIsEnergyTasking:](self, "setIsEnergyTasking:", [taskingType isEqualToString:@"Energy"]);
  }

  else
  {
    [(PLSubmissionFilePLL *)self setIsEnergyTasking:0];
  }

  if ([(PLSubmissionFilePLL *)self copyAndPrepareLog])
  {
LABEL_8:
    self = self;
    selfCopy = self;
  }

  else
  {
LABEL_9:
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)fileType
{
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  if ([taskingConfig submittedFilesMask] == 1024)
  {
    v3 = @"UpgradePowerlog";
  }

  else
  {
    v3 = @"Powerlog";
  }

  v4 = v3;

  return v3;
}

- (id)fileExtension
{
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  if ([taskingConfig submittedFilesMask] == 1024)
  {
    v3 = @".PLSQL.pllupgrade.anon";
  }

  else
  {
    v3 = @".PLSQL.pll.anon";
  }

  v4 = v3;

  return v3;
}

- (void)logSubmissionSizeToAnalytics:(unint64_t)analytics withUncompressedSize:(unint64_t)size
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFilePLL logSubmissionSizeToAnalytics:withUncompressedSize:];
  }

  AnalyticsSendEventLazy();
}

id __73__PLSubmissionFilePLL_logSubmissionSizeToAnalytics_withUncompressedSize___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"PowerlogCompressedSize";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 32)];
  v6[1] = @"PowerlogUncompressedSize";
  v7[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (BOOL)copyAndPrepareLog
{
  v31 = *MEMORY[0x1E69E9840];
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  startDate = [taskingConfig startDate];
  taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
  endDate = [taskingConfig2 endDate];
  [PLEnhancedTaskingAgent logAggregatedDataFromSignpostWithStartDate:startDate withEndDate:endDate];

  filePath = [(PLSubmissionFile *)self filePath];
  if (filePath)
  {
    directory = [(PLSubmissionFile *)self directory];

    if (directory)
    {
      directory2 = [(PLSubmissionFile *)self directory];
      [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:directory2];
    }

    isEnergyTasking = [(PLSubmissionFilePLL *)self isEnergyTasking];
    if (isEnergyTasking)
    {
      v11 = PLLogSubmission(isEnergyTasking);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEFAULT, "Preparing most recent powerlog archive...", &v29, 2u);
      }

      v12 = [(PLSubmissionFilePLL *)self copyLastArchiveToPath:filePath];
LABEL_19:
      v19 = v12;
      goto LABEL_22;
    }

    taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
    submittedFilesMask = [taskingConfig3 submittedFilesMask];

    v23 = PLLogSubmission(v22);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (submittedFilesMask != 1024)
    {
      if (v24)
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_1D8611000, v23, OS_LOG_TYPE_DEFAULT, "Preparing powerlog...", &v29, 2u);
      }

      v12 = [(PLSubmissionFilePLL *)self copyPowerlogToPath:filePath];
      goto LABEL_19;
    }

    if (v24)
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_1D8611000, v23, OS_LOG_TYPE_DEFAULT, "Preparing upgrade powerlog...", &v29, 2u);
    }

    taskingConfig4 = [(PLSubmissionFile *)self taskingConfig];
    startDate2 = [taskingConfig4 startDate];
    if (startDate2)
    {
      v27 = [(PLSubmissionFilePLL *)self copyPowerlogToPath:filePath];
    }

    else
    {
      v27 = [(PLSubmissionFilePLL *)self copyUpgradePowerlogToPath:filePath];
    }

    v19 = v27;
  }

  else
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error no path provided!"];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFilePLL.m"];
    lastPathComponent = [v14 lastPathComponent];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFilePLL copyAndPrepareLog]"];
    [PLCoreStorage logMessage:v13 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:103];

    v18 = PLLogCommon(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = v13;
      _os_log_impl(&dword_1D8611000, v18, OS_LOG_TYPE_DEFAULT, "%@", &v29, 0xCu);
    }

    v19 = 0;
  }

LABEL_22:

  return v19;
}

- (void)flush
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_1D8611000, v1, OS_LOG_TYPE_DEBUG, "Flush cache for %@ with timeout %d", v2, 0x12u);
}

- (BOOL)prepareDatabaseAtPath:(id)path
{
  v87 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  v6 = taskingConfig;
  if (!taskingConfig)
  {
    v12 = 0;
    goto LABEL_42;
  }

  cacheSize = [taskingConfig cacheSize];
  longLongValue = [cacheSize longLongValue];

  removeEntries = [v6 removeEntries];
  hashEntries = [v6 hashEntries];
  trimmingQueries = [v6 trimmingQueries];
  v11 = [[PLSQLiteConnection alloc] initWithFilePath:pathCopy];
  v12 = v11 != 0;
  if (v11)
  {
    v13 = [(PLSubmissionFilePLL *)self updateSubmissionTagWithConnection:v11];
    removeEntries2 = [v6 removeEntries];
    if (removeEntries2 || ([v6 hashEntries], (removeEntries2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      trimmingQueries2 = [v6 trimmingQueries];

      if (!trimmingQueries2)
      {
LABEL_39:
        [(PLSQLiteConnection *)v11 closeConnection];
        goto LABEL_40;
      }
    }

    [(PLSQLiteConnection *)v11 dropTables:removeEntries];
    [(PLSQLiteConnection *)v11 hashEntryKeyKeys:hashEntries];
    submitReasonType = [v6 submitReasonType];
    v58 = hashEntries;
    v59 = removeEntries;
    if (submitReasonType == 4)
    {
      v56 = trimmingQueries;
      v57 = pathCopy;
      v16 = PLLogSubmission(submitReasonType);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_INFO, "Dropping tables with > 24 hr retention for upgrade tasking", buf, 2u);
      }

      v17 = [MEMORY[0x1E695DFA8] set];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v18 = +[(PLCoreOperator *)PLCoreAgent];
      v19 = [v18 countByEnumeratingWithState:&v80 objects:v86 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v81;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v81 != v21)
            {
              objc_enumerationMutation(v18);
            }

            entryKeys = [*(*(&v80 + 1) + 8 * i) entryKeys];
            v78[0] = MEMORY[0x1E69E9820];
            v78[1] = 3221225472;
            v78[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke;
            v78[3] = &unk_1E851B108;
            v79 = v17;
            [entryKeys enumerateObjectsUsingBlock:v78];
          }

          v20 = [v18 countByEnumeratingWithState:&v80 objects:v86 count:16];
        }

        while (v20);
      }

      v24 = +[PPSEntryKey allEntryKeys];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_2;
      v76[3] = &unk_1E851B108;
      v25 = v17;
      v77 = v25;
      [v24 enumerateObjectsUsingBlock:v76];

      v27 = PLLogSubmission(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v27, OS_LOG_TYPE_INFO, "Deleting tables > 24 hours for upgrade tasking", buf, 2u);
      }

      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_57;
      v74[3] = &unk_1E851A158;
      v28 = v11;
      v75 = v28;
      v29 = PLLogSubmission([v25 enumerateObjectsUsingBlock:v74]);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v29, OS_LOG_TYPE_INFO, "Dropping config data for upgrade tasking", buf, 2u);
      }

      v30 = MEMORY[0x1E696AEC0];
      v31 = +[PLUtilities buildVersion];
      v32 = [v30 stringWithFormat:@"DELETE FROM %@ WHERE (%@ != %@)", @"PLConfigAgent_EventNone_Config", @"Build", v31];

      v33 = [(PLSQLiteConnection *)v28 performQuery:v32];
      v35 = PLLogSubmission(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v35, OS_LOG_TYPE_INFO, "Removing config columns for upgrade tasking", buf, 2u);
      }

      v36 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F540C670];
      v37 = [PLEntryDefinition allKeysForEntryKey:@"PLConfigAgent_EventNone_Config"];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_111;
      v71[3] = &unk_1E851B130;
      v72 = v36;
      v38 = v28;
      v73 = v38;
      v39 = v36;
      [v37 enumerateObjectsUsingBlock:v71];

      v40 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F540C688];
      v41 = PLLogSubmission(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v41, OS_LOG_TYPE_INFO, "Applying config timestamp bucketization for upgrade tasking", buf, 2u);
      }

      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WITH tmp AS (SELECT rowid, ROW_NUMBER() OVER (PARTITION BY %@, %@ ORDER BY timestamp) AS rn FROM %@ WHERE %@ != %@ OR %@ IS NULL)", @"LastBuild", @"Build", @"PLConfigAgent_EventNone_Config", @"LastBuild", @"Build", @"LastBuild"];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_125;
      v68[3] = &unk_1E851B158;
      v43 = v42;
      v69 = v43;
      v44 = v38;
      v70 = v44;
      [v40 enumerateObjectsUsingBlock:v68];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_2_136;
      v65[3] = &unk_1E851B158;
      v66 = v43;
      v67 = v44;
      v45 = v43;
      [v40 enumerateObjectsUsingBlock:v65];

      pathCopy = v57;
      trimmingQueries = v56;
    }

    if (!+[PLUtilities SwitchToIncrementalVacuumEnabled])
    {
      [(PLSQLiteConnection *)v11 vacuum];
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v46 = trimmingQueries;
    v47 = trimmingQueries;
    v48 = [v47 countByEnumeratingWithState:&v61 objects:v85 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v62;
LABEL_29:
      v51 = 0;
      while (1)
      {
        if (*v62 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v61 + 1) + 8 * v51);
        if ([PLFileStats fileSizeAtPath:pathCopy]<= longLongValue)
        {
          break;
        }

        if ([PLUtilities isValidString:v52])
        {
          v53 = [(PLSQLiteConnection *)v11 performQuery:v52];
          if (!+[PLUtilities SwitchToIncrementalVacuumEnabled])
          {
            [(PLSQLiteConnection *)v11 vacuum];
          }
        }

        if (v49 == ++v51)
        {
          v49 = [v47 countByEnumeratingWithState:&v61 objects:v85 count:16];
          if (v49)
          {
            goto LABEL_29;
          }

          break;
        }
      }
    }

    v12 = v11 != 0;
    hashEntries = v58;
    trimmingQueries = v46;
    removeEntries = v59;
    goto LABEL_39;
  }

LABEL_40:

LABEL_42:
  return v12;
}

void __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0 && (objc_msgSend(v11, "isEqualToString:", @"PLConfigAgent_EventNone_Config") & 1) == 0)
  {
    v3 = [PLEntryDefinition configsForEntryKey:v11];
    v4 = [v3 objectForKeyedSubscript:@"TaskModeTable"];
    v5 = [v4 BOOLValue];

    if ((v5 & 1) != 0 || ([v3 objectForKeyedSubscript:@"TrimConditionsTemplateArg"], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v3, "objectForKeyedSubscript:", @"TrimConditionsTemplateArg"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "doubleValue"), v10 = v9, v8, v7, v10 > 86400.0))
    {
      [*(a1 + 32) addObject:v11];
    }
  }
}

uint64_t __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([*(a1 + 32) containsObject:v7] & 1) == 0)
  {
    v3 = [PPSEntryKey baseMetricsForEntryKey:v7];
    v4 = [v3 allValues];
    v5 = [v4 firstObject];

    if (v5 && ([v5 mode] == 3 || objc_msgSend(v5, "mode") == 7 || objc_msgSend(v5, "timeToLive") >= 2))
    {
      [*(a1 + 32) addObject:v7];
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

void __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogSubmission(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_57_cold_1();
  }

  [*(a1 + 32) dropTable:v3];
}

void __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_111(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE %@ DROP COLUMN %@", @"PLConfigAgent_EventNone_Config", v5];
    v4 = [*(a1 + 40) performQuery:v3];
  }
}

void __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_125(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE %@ SET %@ = (((cast(%@ as int) + 60) + (60 / 2)) / 60) * 60", @"PLConfigAgent_EventNone_Config", a2, a2];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", *(a1 + 32), v5, @"WHERE rowid IN (SELECT rowid FROM tmp WHERE rn = 1)"];;
  v4 = [*(a1 + 40) performQuery:v3];
}

void __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_2_136(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE %@ SET %@ = (((cast(%@ as int) + 180) + (180 / 2)) / 180) * 180", @"PLConfigAgent_EventNone_Config", a2, a2];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", *(a1 + 32), v5, @"WHERE rowid IN (SELECT rowid FROM tmp WHERE rn > 1)"];;
  v4 = [*(a1 + 40) performQuery:v3];
}

- (void)generateSubmissionTagForCurrentLog
{
  v3 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventForward" andName:@"SubmissionTag"];
  v4 = +[PowerlogCore sharedCore];
  storage = [v4 storage];
  v6 = [storage lastEntryForKey:v3];

  if (v6)
  {
    v7 = +[PowerlogCore sharedCore];
    storage2 = [v7 storage];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke;
    v27[3] = &unk_1E8519100;
    v9 = v6;
    v28 = v9;
    selfCopy = self;
    [storage2 updateEntry:v9 withBlock:v27];

    v10 = v28;
LABEL_3:

    goto LABEL_11;
  }

  v9 = [[PLEntry alloc] initWithEntryKey:v3];
  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  [(PLEntry *)v9 setEntryDate:v11];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(PLEntry *)v9 setObject:uUIDString forKeyedSubscript:@"UUIDTag"];

  v14 = +[PowerlogCore sharedCore];
  storage3 = [v14 storage];
  [storage3 writeEntry:v9 withCompletionBlock:&__block_literal_global_48];

  if (+[PLDefaults debugEnabled])
  {
    v16 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke_2_155;
    v25 = &__block_descriptor_40_e5_v8__0lu32l8;
    v26 = v16;
    if (generateSubmissionTagForCurrentLog_defaultOnce != -1)
    {
      dispatch_once(&generateSubmissionTagForCurrentLog_defaultOnce, &block);
    }

    if (generateSubmissionTagForCurrentLog_classDebugEnabled == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"generateSubmissionTag CREATE (%@)\n", v9, block, v23, v24, v25, v26];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFilePLL.m"];
      lastPathComponent = [v17 lastPathComponent];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFilePLL generateSubmissionTagForCurrentLog]"];
      [PLCoreStorage logMessage:v10 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:354];

      v21 = PLLogCommon(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [PLArchiveManager migrateArchive:];
      }

      goto LABEL_3;
    }
  }

LABEL_11:
}

void __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"UUIDTag"];

  if (+[PLDefaults debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke_2;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v4;
    if (ArrayReserved_block_invoke_defaultOnce_0 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_defaultOnce_0, &block);
    }

    if (ArrayReserved_block_invoke_classDebugEnabled_0 == 1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"generateSubmissionTag UPDATE (%@)\n", *(a1 + 32), block, v12, v13, v14, v15];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFilePLL.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFilePLL generateSubmissionTagForCurrentLog]_block_invoke"];
      [PLCoreStorage logMessage:v5 fromFile:v7 fromFunction:v8 fromLineNumber:347];

      v10 = PLLogCommon(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLArchiveManager migrateArchive:];
      }
    }
  }
}

BOOL __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_classDebugEnabled_0 = result;
  return result;
}

BOOL __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke_2_155(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  generateSubmissionTagForCurrentLog_classDebugEnabled = result;
  return result;
}

- (id)updateSubmissionTagWithConnection:(id)connection
{
  connectionCopy = connection;
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  getSubmitReasonTypeToReasonLog = [taskingConfig getSubmitReasonTypeToReasonLog];
  v7 = PLLogSubmission(getSubmitReasonTypeToReasonLog);
  v8 = v7;
  if (connectionCopy && getSubmitReasonTypeToReasonLog)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFilePLL updateSubmissionTagWithConnection:];
    }

    tagUUID = [taskingConfig tagUUID];
    v8 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventForward" andName:@"SubmissionTag"];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE %@ SET %@ = '%@', %@ = '%@'", v8, @"Reason", getSubmitReasonTypeToReasonLog, @"UUIDTag", tagUUID];
    v11 = [connectionCopy performQuery:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFilePLL updateSubmissionTagWithConnection:];
    }

    tagUUID = 0;
  }

  return tagUUID;
}

- (void)submit
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

id __29__PLSubmissionFilePLL_submit__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"reasonType";
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) taskingConfig];
  v3 = [v1 numberWithShort:{objc_msgSend(v2, "submitReasonType")}];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (BOOL)copyPowerlogToPath:(id)path
{
  pathCopy = path;
  [(PLSubmissionFilePLL *)self generateSubmissionTagForCurrentLog];
  [(PLSubmissionFilePLL *)self flush];
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  startDate = [taskingConfig startDate];

  taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
  submitReasonType = [taskingConfig2 submitReasonType];

  if (submitReasonType == 4)
  {
    taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
    endDate = [taskingConfig3 endDate];
  }

  else
  {
    endDate = 0;
  }

  taskingConfig4 = [(PLSubmissionFile *)self taskingConfig];
  cacheSize = [taskingConfig4 cacheSize];

  if (cacheSize)
  {
    taskingConfig5 = [(PLSubmissionFile *)self taskingConfig];
    cacheSize2 = [taskingConfig5 cacheSize];
    integerValue = [cacheSize2 integerValue];

    v16 = +[PLSQLiteConnection sharedSQLiteConnection];
    v17 = [PLCoreStorage allOperatorTablesToTrimConditionsForTrimDate:startDate];
    LOBYTE(integerValue) = [v16 copyDatabaseToPath:pathCopy fromDate:startDate toDate:endDate withTableFilters:v17 vacuumDB:0 withCacheSize:integerValue];

    if (integerValue)
    {
LABEL_6:
      [(PLSubmissionFilePLL *)self prepareDatabaseAtPath:pathCopy];
      [(PLSubmissionFile *)self decorateFile];
      v19 = +[PLSQLiteConnection sharedSQLiteConnection];
      [v19 clearTableHasTimestampColumnCache];

      v20 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v21 = +[PLUtilities SwitchToIncrementalVacuumEnabled];
    v22 = +[PLSQLiteConnection sharedSQLiteConnection];
    v23 = [PLCoreStorage allOperatorTablesToTrimConditionsForTrimDate:startDate];
    LOBYTE(v21) = [v22 copyDatabaseToPath:pathCopy fromDate:startDate toDate:endDate withTableFilters:v23 vacuumDB:v21 ^ 1u];

    if (v21)
    {
      goto LABEL_6;
    }
  }

  v24 = PLLogSubmission(v18);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissionFilePLL copyPowerlogToPath:v24];
  }

  v20 = 0;
LABEL_11:

  return v20;
}

- (BOOL)copyArchiveAtPath:(id)path to:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  toCopy = to;
  v8 = [toCopy stringByAppendingString:@".gz"];
  v9 = PLLogSubmission(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = pathCopy;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Copying archive at '%@' to '%@'...", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v26 = 0;
  v11 = [defaultManager copyItemAtPath:pathCopy toPath:v8 error:&v26];
  v12 = v26;

  v13 = PLLogSubmission([(PLSubmissionFilePLL *)self emitCopyResult:v11]);
  v14 = v13;
  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFilePLL copyArchiveAtPath:to:];
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFilePLL copyArchiveAtPath:to:];
  }

  v15 = [PLUtilities decompressWithSource:v8 withDestination:toCopy withRemoveSrc:1];
  v16 = [(PLSubmissionFilePLL *)self emitDecompressionResult:v15];
  if (!v15)
  {
    v24 = PLLogSubmission(v16);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFilePLL copyArchiveAtPath:to:];
    }

    goto LABEL_21;
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = [defaultManager2 fileExistsAtPath:toCopy];

  v19 = PLLogSubmission([(PLSubmissionFilePLL *)self emitFileExists:v18]);
  v14 = v19;
  if ((v18 & 1) == 0)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFilePLL copyArchiveAtPath:toCopy to:v14];
    }

LABEL_17:

LABEL_21:
    v23 = 0;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = toCopy;
    _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "Successfully copied archived powerlog to %@!", buf, 0xCu);
  }

  v20 = [(PLSubmissionFilePLL *)self prepareDatabaseAtPath:toCopy];
  v21 = [(PLSubmissionFilePLL *)self emitPreparationResult:v20];
  if (!v20)
  {
    v22 = PLLogSubmission(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFilePLL copyArchiveAtPath:to:];
    }
  }

  [(PLSubmissionFile *)self decorateFile];
  v23 = 1;
LABEL_22:

  return v23;
}

- (BOOL)copyLastArchiveToPath:(id)path
{
  pathCopy = path;
  v5 = +[PLArchiveManager lastArchivePath];
  LOBYTE(self) = [(PLSubmissionFilePLL *)self copyArchiveAtPath:v5 to:pathCopy];

  return self;
}

- (BOOL)copyUpgradePowerlogToPath:(id)path
{
  v24 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = MEMORY[0x1E695DF00];
  [PLDefaults doubleForKey:@"LastUpgradeTimestamp" ifNotSet:-1.0];
  v6 = [v5 dateWithTimeIntervalSince1970:?];
  v7 = [PLArchiveManager archiveForDate:v6];
  v8 = v7;
  if (v7)
  {
    startDate = [v7 startDate];
    taskingConfig = [(PLSubmissionFile *)self taskingConfig];
    [taskingConfig setStartDate:startDate];

    endDate = [v8 endDate];
    taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
    [taskingConfig2 setEndDate:endDate];

    v14 = PLLogSubmission(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      compressedPath = [v8 compressedPath];
      lastPathComponent = [compressedPath lastPathComponent];
      v20 = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = lastPathComponent;
      _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_INFO, "Choosing archived powerlog for upgrade date '%@': %@", &v20, 0x16u);
    }

    compressedPath2 = [v8 compressedPath];
    v18 = [(PLSubmissionFilePLL *)self copyArchiveAtPath:compressedPath2 to:pathCopy];
  }

  else
  {
    compressedPath2 = PLLogSubmission(0);
    if (os_log_type_enabled(compressedPath2, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v6;
      _os_log_impl(&dword_1D8611000, compressedPath2, OS_LOG_TYPE_INFO, "No archived upgrade powerlog for upgrade date '%@'", &v20, 0xCu);
    }

    v18 = 0;
  }

  return v18;
}

- (id)baseCADictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  request = [taskingConfig request];
  [dictionary setObject:request forKeyedSubscript:@"TaskingRequest"];

  taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
  taskingType = [taskingConfig2 taskingType];
  [dictionary setObject:taskingType forKeyedSubscript:@"TaskingType"];

  taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
  configUUID = [taskingConfig3 configUUID];
  uUIDString = [configUUID UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:@"TaskingUUID"];

  return dictionary;
}

- (void)emitCopyResult:(BOOL)result
{
  resultCopy = result;
  baseCADictionary = [(PLSubmissionFilePLL *)self baseCADictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:resultCopy];
  [baseCADictionary setObject:v5 forKeyedSubscript:@"CopyResult"];

  v6 = baseCADictionary;
  AnalyticsSendEventLazy();
}

- (void)emitDecompressionResult:(BOOL)result
{
  resultCopy = result;
  baseCADictionary = [(PLSubmissionFilePLL *)self baseCADictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:resultCopy];
  [baseCADictionary setObject:v5 forKeyedSubscript:@"DecompressionResult"];

  v6 = baseCADictionary;
  AnalyticsSendEventLazy();
}

- (void)emitPreparationResult:(BOOL)result
{
  resultCopy = result;
  baseCADictionary = [(PLSubmissionFilePLL *)self baseCADictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:resultCopy];
  [baseCADictionary setObject:v5 forKeyedSubscript:@"PreparationResult"];

  v6 = baseCADictionary;
  AnalyticsSendEventLazy();
}

- (void)emitFileExists:(BOOL)exists
{
  existsCopy = exists;
  baseCADictionary = [(PLSubmissionFilePLL *)self baseCADictionary];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:existsCopy];
  [baseCADictionary setObject:v5 forKeyedSubscript:@"FileExists"];

  v6 = baseCADictionary;
  AnalyticsSendEventLazy();
}

- (void)logSubmissionSizeToAnalytics:withUncompressedSize:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_57_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)updateSubmissionTagWithConnection:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)copyArchiveAtPath:to:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)copyArchiveAtPath:(uint64_t)a1 to:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = 138412546;
  v6 = a1;
  v7 = 1024;
  v8 = [v4 fileExistsAtPath:a1];
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Expected file %@ not found after decompression! fileExists = %d", &v5, 0x12u);
}

- (void)copyArchiveAtPath:to:.cold.5()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D8611000, v0, OS_LOG_TYPE_ERROR, "Failed to prepare PLL file %@", v1, 0xCu);
}

@end