@interface PLCPUEnergySnapshot
+ (NSMutableDictionary)coalitionIDToCoalitionNameMapping;
+ (NSMutableDictionary)identifierToAccountingName;
+ (NSMutableDictionary)identifierToCoalitionID;
+ (void)setCoalitionIDToCoalitionNameMapping:(id)mapping;
+ (void)setIdentifierToAccountingName:(id)name;
+ (void)setIdentifierToCoalitionID:(id)d;
- (BOOL)snapshotCPUEnergy:(id)energy;
- (PLCPUEnergySnapshot)initWithIdentifier:(id)identifier andMockData:(id)data;
- (double)computeEnergyDiff:(id)diff;
- (double)computeEnergyDiffUntilNow:(id)now andAdjustSnapshotToNow:(BOOL)toNow;
- (id)getCoalitionIDForIdentifier:(id)identifier;
- (id)searchCoalitionsCacheForID:(id)d;
- (void)refreshCoalitionIDMapping;
@end

@implementation PLCPUEnergySnapshot

- (PLCPUEnergySnapshot)initWithIdentifier:(id)identifier andMockData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = PLCPUEnergySnapshot;
  v8 = [(PLCPUEnergySnapshot *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PLCPUEnergySnapshot *)v8 setMockData:dataCopy];
    [(PLCPUEnergySnapshot *)v9 snapshotCPUEnergy:identifierCopy];
  }

  return v9;
}

- (double)computeEnergyDiffUntilNow:(id)now andAdjustSnapshotToNow:(BOOL)toNow
{
  toNowCopy = toNow;
  nowCopy = now;
  v7 = [PLCPUEnergySnapshot alloc];
  mockData = [(PLCPUEnergySnapshot *)self mockData];
  v9 = [(PLCPUEnergySnapshot *)v7 initWithIdentifier:nowCopy andMockData:mockData];

  v10 = [(PLCPUEnergySnapshot *)v9 computeEnergyDiff:self];
  v12 = v11;
  if (toNowCopy)
  {
    v13 = PLLogDiscretionaryEnergyMonitor(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLCPUEnergySnapshot computeEnergyDiffUntilNow:andAdjustSnapshotToNow:];
    }

    [(PLCPUEnergySnapshot *)self setCpuEnergy:[(PLCPUEnergySnapshot *)v9 cpuEnergy]];
    [(PLCPUEnergySnapshot *)self setCpuEnergyBilledToMe:[(PLCPUEnergySnapshot *)v9 cpuEnergyBilledToMe]];
    v14 = PLLogDiscretionaryEnergyMonitor([(PLCPUEnergySnapshot *)self setCpuEnergyBilledToOthers:[(PLCPUEnergySnapshot *)v9 cpuEnergyBilledToOthers]]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PLCPUEnergySnapshot computeEnergyDiffUntilNow:andAdjustSnapshotToNow:];
    }
  }

  return v12;
}

- (double)computeEnergyDiff:(id)diff
{
  diffCopy = diff;
  v5 = PLLogDiscretionaryEnergyMonitor(diffCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLCPUEnergySnapshot computeEnergyDiff:];
  }

  v6 = 0.0;
  if ([(PLCPUEnergySnapshot *)self isValid])
  {
    if ([diffCopy isValid])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLCPUEnergySnapshot cpuEnergy](self, "cpuEnergy") - objc_msgSend(diffCopy, "cpuEnergy")}];
      [v7 doubleValue];
      v9 = v8;

      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLCPUEnergySnapshot cpuEnergyBilledToMe](self, "cpuEnergyBilledToMe") - objc_msgSend(diffCopy, "cpuEnergyBilledToMe")}];
      [v10 doubleValue];
      v12 = v11;

      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLCPUEnergySnapshot cpuEnergyBilledToOthers](self, "cpuEnergyBilledToOthers") - objc_msgSend(diffCopy, "cpuEnergyBilledToOthers")}];
      [v13 doubleValue];
      v15 = v14;

      if (v9 >= 0.0 && v12 >= 0.0 && v15 >= 0.0)
      {
        if ((v9 + v12 - v15) / 3600000000.0 >= 0.0)
        {
          v6 = (v9 + v12 - v15) / 3600000000.0;
        }

        else
        {
          v6 = 0.0;
        }
      }
    }
  }

  return v6;
}

- (BOOL)snapshotCPUEnergy:(id)energy
{
  v24 = *MEMORY[0x1E69E9840];
  energyCopy = energy;
  mockData = [(PLCPUEnergySnapshot *)self mockData];
  v6 = [mockData objectForKeyedSubscript:@"CPUCoalitionsMock"];
  v7 = [v6 objectForKeyedSubscript:energyCopy];

  if (!v7)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    v12 = [(PLCPUEnergySnapshot *)self getCoalitionIDForIdentifier:energyCopy];

    if ([v12 unsignedLongLongValue])
    {
      v15 = PLLogDiscretionaryEnergyMonitor([v12 longLongValue]);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLCPUEnergySnapshot snapshotCPUEnergy:];
      }

      v16 = malloc_type_malloc(0x168uLL, 0x1000040DAE56E47uLL);
      v17 = coalition_info_resource_usage();
      v13 = v17 == 0;
      if (v17)
      {
        if (!v16)
        {
LABEL_14:
          v13 = 0;
          goto LABEL_17;
        }
      }

      else
      {
        [(PLCPUEnergySnapshot *)self setCpuEnergy:v16[11]];
        [(PLCPUEnergySnapshot *)self setCpuEnergyBilledToMe:v16[20]];
        [(PLCPUEnergySnapshot *)self setCpuEnergyBilledToOthers:v16[21]];
      }

      free(v16);
      goto LABEL_17;
    }

    v18 = PLLogDiscretionaryEnergyMonitor(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PLCPUEnergySnapshot snapshotCPUEnergy:];
    }

    goto LABEL_14;
  }

  v9 = PLLogDiscretionaryEnergyMonitor(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v20 = 138412546;
    v21 = energyCopy;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_1BACB7000, v9, OS_LOG_TYPE_INFO, "Reading mock coalitions data for identifier=%@, mockDataForIdentifier=%@", &v20, 0x16u);
  }

  v10 = [v7 objectForKeyedSubscript:@"cpuEnergy"];
  -[PLCPUEnergySnapshot setCpuEnergy:](self, "setCpuEnergy:", [v10 longLongValue]);

  v11 = [v7 objectForKeyedSubscript:@"cpuEnergyBilledToMe"];
  -[PLCPUEnergySnapshot setCpuEnergyBilledToMe:](self, "setCpuEnergyBilledToMe:", [v11 longLongValue]);

  v12 = [v7 objectForKeyedSubscript:@"cpuEnergyBilledToOthers"];
  -[PLCPUEnergySnapshot setCpuEnergyBilledToOthers:](self, "setCpuEnergyBilledToOthers:", [v12 longLongValue]);
  v13 = 1;
LABEL_17:

  return v13;
}

- (void)refreshCoalitionIDMapping
{
  v0 = +[PLCPUEnergySnapshot coalitionIDToCoalitionNameMapping];
  [v0 count];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (id)getCoalitionIDForIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
  v6 = +[PLCPUEnergySnapshot identifierToCoalitionID];
  v7 = [v6 objectForKeyedSubscript:identifierCopy];

  if (v7)
  {
    v9 = PLLogDiscretionaryEnergyMonitor(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLCPUEnergySnapshot getCoalitionIDForIdentifier:];
    }

    v10 = +[PLCPUEnergySnapshot identifierToCoalitionID];
    v11 = [v10 objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v12 = [(PLCPUEnergySnapshot *)self searchCoalitionsCacheForID:identifierCopy];

    if (![v12 unsignedLongLongValue])
    {
      v13 = PLLogDiscretionaryEnergyMonitor(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = identifierCopy;
        _os_log_impl(&dword_1BACB7000, v13, OS_LOG_TYPE_INFO, "coalitionID not found, refreshing coalition mapping and searching again for identifier=%@", &v18, 0xCu);
      }

      [(PLCPUEnergySnapshot *)self refreshCoalitionIDMapping];
      v14 = [(PLCPUEnergySnapshot *)self searchCoalitionsCacheForID:identifierCopy];

      v12 = v14;
    }

    if (![v12 unsignedLongLongValue])
    {
      v15 = PLLogDiscretionaryEnergyMonitor(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PLCPUEnergySnapshot getCoalitionIDForIdentifier:];
      }
    }

    if ([v12 unsignedLongLongValue])
    {
      v16 = +[PLCPUEnergySnapshot identifierToCoalitionID];
      [v16 setObject:v12 forKeyedSubscript:identifierCopy];
    }

    v5 = v12;
    v11 = v5;
  }

  return v11;
}

- (id)searchCoalitionsCacheForID:(id)d
{
  dCopy = d;
  v4 = PLLogDiscretionaryEnergyMonitor(dCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLCPUEnergySnapshot searchCoalitionsCacheForID:];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
  v5 = +[PLCPUEnergySnapshot coalitionIDToCoalitionNameMapping];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__PLCPUEnergySnapshot_searchCoalitionsCacheForID___block_invoke;
  v9[3] = &unk_1E7F18690;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__PLCPUEnergySnapshot_searchCoalitionsCacheForID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v9 objectAtIndexedSubscript:1];

  if ([v10 isEqualToString:&stru_1F38DE2A8])
  {
    if ([v11 length] > 9)
    {
      v12 = [v11 substringFromIndex:10];
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  v14 = (a1 + 32);
  if (([v12 isEqualToString:*(a1 + 32)] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", *v14) & 1) != 0 || objc_msgSend(v11, "isEqualToString:", *v14))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v15 = [v13 isEqualToString:*(a1 + 32)];
    if ((v15 & 1) == 0)
    {
      v16 = PLLogDiscretionaryEnergyMonitor(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __50__PLCPUEnergySnapshot_searchCoalitionsCacheForID___block_invoke_cold_1();
      }

      v17 = +[PLCPUEnergySnapshot identifierToAccountingName];
      v18 = [v17 objectForKeyedSubscript:*v14];

      if (!v18)
      {
        v19 = +[PLCPUEnergySnapshot identifierToAccountingName];
        [v19 setObject:v13 forKeyedSubscript:*v14];

        v21 = PLLogDiscretionaryEnergyMonitor(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = +[PLCPUEnergySnapshot identifierToAccountingName];
          v23 = 138412290;
          v24 = v22;
          _os_log_impl(&dword_1BACB7000, v21, OS_LOG_TYPE_INFO, "identifierToAccountingName=%@", &v23, 0xCu);
        }
      }
    }

    *a4 = 1;
  }
}

+ (NSMutableDictionary)identifierToCoalitionID
{
  v2 = _identifierToCoalitionID;
  if (!_identifierToCoalitionID)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = _identifierToCoalitionID;
    _identifierToCoalitionID = v3;

    v2 = _identifierToCoalitionID;
  }

  return v2;
}

+ (void)setIdentifierToCoalitionID:(id)d
{
  if (_identifierToCoalitionID != d)
  {
    _identifierToCoalitionID = [d mutableCopy];

    MEMORY[0x1EEE66BB8]();
  }
}

+ (NSMutableDictionary)coalitionIDToCoalitionNameMapping
{
  v2 = _coalitionIDToCoalitionNameMapping;
  if (!_coalitionIDToCoalitionNameMapping)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = _coalitionIDToCoalitionNameMapping;
    _coalitionIDToCoalitionNameMapping = v3;

    v2 = _coalitionIDToCoalitionNameMapping;
  }

  return v2;
}

+ (void)setCoalitionIDToCoalitionNameMapping:(id)mapping
{
  if (_coalitionIDToCoalitionNameMapping != mapping)
  {
    _coalitionIDToCoalitionNameMapping = [mapping mutableCopy];

    MEMORY[0x1EEE66BB8]();
  }
}

+ (NSMutableDictionary)identifierToAccountingName
{
  v2 = _identifierToAccountingName;
  if (!_identifierToAccountingName)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = _identifierToAccountingName;
    _identifierToAccountingName = v3;

    v2 = _identifierToAccountingName;
  }

  return v2;
}

+ (void)setIdentifierToAccountingName:(id)name
{
  if (_identifierToAccountingName != name)
  {
    _identifierToAccountingName = [name mutableCopy];

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)computeEnergyDiffUntilNow:andAdjustSnapshotToNow:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)computeEnergyDiffUntilNow:andAdjustSnapshotToNow:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)snapshotCPUEnergy:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)snapshotCPUEnergy:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getCoalitionIDForIdentifier:.cold.1()
{
  v0 = +[PLCPUEnergySnapshot identifierToCoalitionID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)getCoalitionIDForIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)searchCoalitionsCacheForID:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __50__PLCPUEnergySnapshot_searchCoalitionsCacheForID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11(&dword_1BACB7000, v0, v1, "identifier received is not equal to accountingIdentifier: identifier=%@, accountingIdentifier=%@");
}

@end