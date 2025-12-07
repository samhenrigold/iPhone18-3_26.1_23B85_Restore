@interface PPSCoreStorage
+ (id)sharedFlatStorage;
+ (id)sharedSQLStorage;
- (BOOL)mergePreUnlockDBFiles;
- (PPSCoreStorage)init;
- (id)storageClassForKey:(id)key;
- (id)storageClassForType:(int)type;
- (void)setupEntryObjects;
- (void)setupMetadataStorage;
- (void)setupStorage;
- (void)startAllStorage;
- (void)startStorage;
@end

@implementation PPSCoreStorage

+ (id)sharedSQLStorage
{
  v2 = +[PowerlogCore sharedCore];
  coreStorage = [v2 coreStorage];

  sqlStorage = [coreStorage sqlStorage];

  return sqlStorage;
}

- (PPSCoreStorage)init
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
LABEL_3:
    selfCopy = 0;
    goto LABEL_4;
  }

  v5 = +[PLUtilities PreUnlockTelemetryEnabled];
  v6 = v5;
  v7 = PPSCoreStorageLog(v5);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "PreUnlockTelemetry enabled", buf, 2u);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "PreUnlockTelemetry disabled", buf, 2u);
    }

    v9 = +[PowerlogCore sharedCore];
    storage = [v9 storage];
    storageLocked = [storage storageLocked];

    if (storageLocked)
    {
      goto LABEL_3;
    }
  }

  v25.receiver = self;
  v25.super_class = PPSCoreStorage;
  v12 = [(PPSCoreStorage *)&v25 init];
  v13 = v12;
  if (v12)
  {
    v14 = PPSCoreStorageLog(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "Initializing", buf, 2u);
    }

    v15 = objc_alloc_init(PPSSQLStorage);
    [(PPSCoreStorage *)v13 setSqlStorage:v15];

    v16 = +[PowerlogCore sharedCore];
    storage2 = [v16 storage];
    storageLocked2 = [storage2 storageLocked];

    sqlStorage = v13->_sqlStorage;
    if (storageLocked2)
    {
      v29 = &unk_1F540A290;
      v30[0] = sqlStorage;
      v20 = MEMORY[0x1E695DF20];
      v21 = v30;
      v22 = &v29;
      v23 = 1;
    }

    else
    {
      v27[0] = &unk_1F540A290;
      v27[1] = &unk_1F540A2A8;
      v28[0] = sqlStorage;
      v28[1] = sqlStorage;
      v27[2] = &unk_1F540A2C0;
      v27[3] = &unk_1F540A2D8;
      v28[2] = sqlStorage;
      v28[3] = sqlStorage;
      v27[4] = &unk_1F540A2F0;
      v28[4] = sqlStorage;
      v20 = MEMORY[0x1E695DF20];
      v21 = v28;
      v22 = v27;
      v23 = 5;
    }

    v24 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
    [(PPSCoreStorage *)v13 setStorageMap:v24];
  }

  self = v13;
  selfCopy = self;
LABEL_4:

  return selfCopy;
}

- (void)startStorage
{
  v3 = PPSCoreStorageLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Starting Storage", v4, 2u);
  }

  [MEMORY[0x1E69BDC20] buildDeviceMetadata];
  [(PPSCoreStorage *)self setupEntryObjects];
  [(PPSCoreStorage *)self setupMetadataStorage];
  [(PPSCoreStorage *)self setupStorage];
  [(PPSCoreStorage *)self startAllStorage];
}

- (void)startAllStorage
{
  storageMap = [(PPSCoreStorage *)self storageMap];
  allValues = [storageMap allValues];
  [allValues enumerateObjectsUsingBlock:&__block_literal_global_54];
}

- (void)setupEntryObjects
{
  v2 = +[PPSCoreUtilities getAllowlist];
  allKeys = [v2 allKeys];

  [allKeys enumerateObjectsUsingBlock:&__block_literal_global_30_1];
}

void __35__PPSCoreStorage_setupEntryObjects__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69BDC20] getMetadataByCategoryForSubsystem:v2];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__PPSCoreStorage_setupEntryObjects__block_invoke_2;
  v5[3] = &unk_1E851ADE0;
  v6 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __35__PPSCoreStorage_setupEntryObjects__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (+[PLUtilities OverrideAllowlistEnabled]|| (v8 = *(a1 + 32), v7 = (a1 + 32), v9 = [PPSCoreUtilities isAllowedSubsystem:v8 category:v5], (v9 & 1) != 0))
  {
    [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_34];
  }

  else
  {
    v10 = PPSLogCommon(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __35__PPSCoreStorage_setupEntryObjects__block_invoke_2_cold_1(v7, v5, v10);
    }
  }
}

- (void)setupMetadataStorage
{
  storageMap = [(PPSCoreStorage *)self storageMap];
  allValues = [storageMap allValues];
  [allValues enumerateObjectsUsingBlock:&__block_literal_global_38_0];
}

- (void)setupStorage
{
  v3 = +[PPSEntryKey allEntryKeys];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__PPSCoreStorage_setupStorage__block_invoke;
  v4[3] = &unk_1E851B108;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __30__PPSCoreStorage_setupStorage__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 storageClassForKey:v3];
  [v4 setupStorageForEntryKey:v3];
}

- (BOOL)mergePreUnlockDBFiles
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = +[PPSFileUtilities containerPath];
  v5 = [v4 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v6 = [v5 stringByAppendingString:@"PreUnlock/"];
  v7 = [defaultManager contentsOfDirectoryAtPath:v6 error:0];
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_49];

  v9 = [v8 count];
  v10 = PLLogCommon(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_INFO, "Merging pre-unlock DBs...", buf, 2u);
    }

    sqlStorage = [(PPSCoreStorage *)self sqlStorage];
    ePSQLConnection = [sqlStorage EPSQLConnection];

    *buf = 0;
    v20 = buf;
    v21 = 0x2020000000;
    v22 = 1;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke_50;
    v16[3] = &unk_1E851B498;
    v18 = buf;
    v10 = ePSQLConnection;
    v17 = v10;
    [v8 enumerateObjectsUsingBlock:v16];
    v14 = v20[24];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_INFO, "No pre-unlock DBs to merge", buf, 2u);
    }

    v14 = 0;
  }

  return v14 & 1;
}

uint64_t __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[PPSFileUtilities containerPath];
  v7 = [v6 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v8 = [v7 stringByAppendingString:@"PreUnlock/"];
  v9 = [v8 stringByAppendingPathComponent:v5];

  v10 = +[PPSFileUtilities containerPath];
  v11 = [v10 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v12 = [v11 stringByAppendingString:@"PreUnlock/"];
  v13 = [v12 stringByAppendingPathComponent:v4];

  v14 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = [v14 attributesOfItemAtPath:v9 error:0];

  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [v16 attributesOfItemAtPath:v13 error:0];

  v18 = *MEMORY[0x1E696A308];
  v19 = [v15 objectForKeyedSubscript:*MEMORY[0x1E696A308]];
  v20 = [v17 objectForKeyedSubscript:v18];
  v21 = [v19 compare:v20];

  return v21;
}

void __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 pathExtension];
    v5 = [v4 hasSuffix:@"EPSQL"];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = +[PPSFileUtilities containerPath];
      v8 = [v7 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
      v9 = [v8 stringByAppendingString:@"PreUnlock/"];
      v10 = [v9 stringByAppendingPathComponent:v3];
      *(*(*(a1 + 40) + 8) + 24) &= [v6 mergeDataFromOtherDBFile:v10];

      LOBYTE(v6) = *(*(*(a1 + 40) + 8) + 24);
      v12 = PLLogCommon(v11);
      v13 = v12;
      if (v6)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke_50_cold_2(v3, v13);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke_50_cold_1(v3, v13);
      }
    }
  }
}

- (id)storageClassForKey:(id)key
{
  v4 = [PPSEntryKey storageForEntryKey:key];

  return [(PPSCoreStorage *)self storageClassForType:v4];
}

- (id)storageClassForType:(int)type
{
  v3 = *&type;
  storageMap = [(PPSCoreStorage *)self storageMap];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v6 = [storageMap objectForKeyedSubscript:v5];

  return v6;
}

+ (id)sharedFlatStorage
{
  v2 = +[PowerlogCore sharedCore];
  coreStorage = [v2 coreStorage];

  flatStorage = [coreStorage flatStorage];

  return flatStorage;
}

void __35__PPSCoreStorage_setupEntryObjects__block_invoke_2_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "Subsystem %@ Category %@ not allowed", &v4, 0x16u);
}

void __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke_50_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Failed to merge pre-unlock DB '%@'...", &v2, 0xCu);
}

void __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke_50_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "Merged pre-unlock DB '%@'...", &v2, 0xCu);
}

@end