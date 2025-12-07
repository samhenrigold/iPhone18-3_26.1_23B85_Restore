@interface PLEntry
+ (Class)classForEntryKey:(id)key;
+ (id)entryWithEntryKey:(id)key withData:(id)data;
+ (id)entryWithEntryKey:(id)key withRawData:(id)data;
+ (id)summarizeAggregateEntries:(id)entries;
+ (id)summarizeAggregateEntries:(id)entries withPrimaryKeys:(id)keys;
+ (signed)dataFormatForMetric:(id)metric auxiliaryMetrics:(id)metrics;
+ (void)load;
+ (void)registerEntry:(Class)entry;
- (BOOL)filterEntryLogging;
- (BOOL)hasAppIdentifierKeys;
- (BOOL)hasArrayKeys;
- (BOOL)hasDMAKeys;
- (BOOL)hasDynamicKeys;
- (BOOL)isKeyAggregateValue:(id)value;
- (BOOL)isKeyDynamic:(id)dynamic;
- (BOOL)isPPSEnabled;
- (NSArray)DMAKeys;
- (NSArray)arrayKeys;
- (NSArray)definedKeys;
- (NSArray)dynamicKeys;
- (NSDictionary)entryDefinition;
- (NSMutableArray)allValues;
- (NSMutableArray)keys;
- (OS_dispatch_semaphore)sem;
- (PLEntry)initWithEntryDate:(id)date;
- (PLEntry)initWithEntryKey:(id)key;
- (PLEntry)initWithEntryKey:(id)key withData:(id)data;
- (PLEntry)initWithEntryKey:(id)key withDate:(id)date;
- (PLEntry)initWithEntryKey:(id)key withRawData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)definitionForKey:(id)key;
- (id)descriptionRespectingAllowlist:(BOOL)allowlist;
- (id)initEntryWithData:(id)data;
- (id)initEntryWithRawData:(id)data;
- (id)keyValuePathForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)serialized;
- (id)serializedForJSON;
- (id)subEntryKey;
- (id)unitForKey:(id)key;
- (int)staticArraySizeForKey:(id)key;
- (int64_t)compare:(id)compare options:(signed __int16)options;
- (signed)formaterForKey:(id)key;
- (void)checkOverridesEntryDateWithNowDate:(id)date;
- (void)loadDynamicKeys;
- (void)removeObjectForKey:(id)key;
- (void)setDynamicObjectsFromRawData:(id)data;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObjectsFromData:(id)data;
- (void)setObjectsFromRawData:(id)data;
- (void)setObjectsUsingMetricsFromData:(id)data;
@end

@implementation PLEntry

- (NSDictionary)entryDefinition
{
  entryDefinition = self->_entryDefinition;
  if (!entryDefinition)
  {
    entryKey = [(PLEntry *)self entryKey];
    v5 = [PLEntryDefinition definitionForEntryKey:entryKey];
    v6 = self->_entryDefinition;
    self->_entryDefinition = v5;

    entryDefinition = self->_entryDefinition;
  }

  return entryDefinition;
}

- (OS_dispatch_semaphore)sem
{
  if (sem_onceToken != -1)
  {
    [PLEntry sem];
  }

  dispatch_semaphore_wait(sem_masterSem, 0xFFFFFFFFFFFFFFFFLL);
  sem = self->_sem;
  if (!sem)
  {
    v4 = sem_entryKeyToSem;
    entryKey = [(PLEntry *)self entryKey];
    v6 = [v4 objectForKeyedSubscript:entryKey];
    v7 = self->_sem;
    self->_sem = v6;

    sem = self->_sem;
    if (!sem)
    {
      v8 = dispatch_semaphore_create(1);
      v9 = self->_sem;
      self->_sem = v8;

      v10 = self->_sem;
      v11 = sem_entryKeyToSem;
      entryKey2 = [(PLEntry *)self entryKey];
      [v11 setObject:v10 forKeyedSubscript:entryKey2];

      sem = self->_sem;
    }
  }

  v13 = sem;
  dispatch_semaphore_signal(sem_masterSem);

  return v13;
}

- (BOOL)filterEntryLogging
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey filterEntryLoggingForEntryKey:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    v6 = [PLEntryDefinition filterEntryLoggingForEntryDefinition:entryKey2];
  }

  v7 = v6;

  return v7;
}

- (BOOL)hasDMAKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey hasDMAKeys:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    v6 = [PLEntryDefinition hasDMAKeysForEntryDefinition:entryKey2];
  }

  v7 = v6;

  return v7;
}

- (id)subEntryKey
{
  entryDefinition = [(PLEntry *)self entryDefinition];
  v4 = [PLEntryDefinition subEntryKeyKeyForEntryDefinition:entryDefinition];

  if (v4)
  {
    v5 = [(PLEntry *)self objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasDynamicKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey hasDynamicKeys:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    v6 = [PLEntryDefinition hasDynamicKeysForEntryDefinition:entryKey2];
  }

  v7 = v6;

  return v7;
}

- (NSArray)DMAKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    [PPSEntryKey allDMAKeysForEntryKey:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    [PLEntryDefinition DMAKeysForEntryDefinition:entryKey2];
  }
  v6 = ;

  return v6;
}

- (NSMutableArray)keys
{
  dictionary = [(PLEntry *)self dictionary];
  allKeys = [dictionary allKeys];

  return allKeys;
}

- (NSArray)definedKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    [PPSEntryKey allBaseKeysForEntryKey:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    [PLEntryDefinition allKeysForEntryDefinition:entryKey2];
  }
  v6 = ;

  return v6;
}

- (BOOL)isPPSEnabled
{
  entryKey = [(PLEntry *)self entryKey];
  v3 = [PPSEntryKey PPSEnabled:entryKey];

  return v3;
}

- (BOOL)hasArrayKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey hasArrayKeys:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    v6 = [PLEntryDefinition hasArrayKeysForEntryDefinition:entryKey2];
  }

  v7 = v6;

  return v7;
}

- (void)loadDynamicKeys
{
  v4 = +[PowerlogCore sharedCore];
  storage = [v4 storage];
  [storage loadDynamicValuesIntoEntry:self];
}

- (NSArray)dynamicKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v6 = [PPSEntryKey allDynamicKeysForEntryKey:entryKey2];
  }

  else
  {
    v7 = MEMORY[0x1E695DF70];
    keys = [(PLEntry *)self keys];
    v6 = [v7 arrayWithArray:keys];

    definedKeys = [(PLEntry *)self definedKeys];
    [v6 removeObjectsInArray:definedKeys];

    if ([v6 containsObject:@"timestampLogged"])
    {
      [v6 removeObject:@"timestampLogged"];
    }
  }

  return v6;
}

- (NSArray)arrayKeys
{
  entryKey = [(PLEntry *)self entryKey];
  v4 = [PPSEntryKey PPSEnabled:entryKey];

  if (v4)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    [PPSEntryKey allArrayKeysForEntryKey:entryKey2];
  }

  else
  {
    entryKey2 = [(PLEntry *)self entryDefinition];
    [PLEntryDefinition arrayKeysForEntryDefinition:entryKey2];
  }
  v6 = ;

  return v6;
}

- (NSMutableArray)allValues
{
  dictionary = [(PLEntry *)self dictionary];
  allValues = [dictionary allValues];

  return allValues;
}

+ (void)load
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    v3 = objc_opt_class();

    [PLEntry registerEntry:v3];
  }
}

+ (void)registerEntry:(Class)entry
{
  if (registerEntry__onceToken != -1)
  {
    +[PLEntry registerEntry:];
  }

  v4 = PLLogCommon(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(PLEntry *)entry registerEntry:v4];
  }

  v5 = _registeredEntries;
  objc_sync_enter(v5);
  [_registeredEntries addObject:entry];
  objc_sync_exit(v5);
}

uint64_t __25__PLEntry_registerEntry___block_invoke()
{
  v0 = objc_opt_new();
  _registeredEntries = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

+ (id)entryWithEntryKey:(id)key withRawData:(id)data
{
  keyCopy = key;
  dataCopy = data;
  v7 = [PLEntry classForEntryKey:keyCopy];
  if (v7 == objc_opt_class())
  {
    v8 = [[PLEntry alloc] initWithEntryKey:keyCopy withRawData:dataCopy];
  }

  else
  {
    v8 = [[v7 alloc] initEntryWithRawData:dataCopy];
  }

  v9 = v8;

  return v9;
}

+ (id)entryWithEntryKey:(id)key withData:(id)data
{
  keyCopy = key;
  dataCopy = data;
  v7 = [PLEntry classForEntryKey:keyCopy];
  if (v7 == objc_opt_class())
  {
    v8 = [[PLEntry alloc] initWithEntryKey:keyCopy withData:dataCopy];
  }

  else
  {
    v8 = [[v7 alloc] initEntryWithData:dataCopy];
  }

  v9 = v8;

  return v9;
}

+ (Class)classForEntryKey:(id)key
{
  keyCopy = key;
  if (classForEntryKey__onceToken != -1)
  {
    +[PLEntry classForEntryKey:];
  }

  v4 = [_entryKeyToClass objectForKeyedSubscript:keyCopy];

  if (v4)
  {
    [_entryKeyToClass objectForKeyedSubscript:keyCopy];
  }

  else
  {
    objc_opt_class();
  }
  v5 = ;

  return v5;
}

void __28__PLEntry_classForEntryKey___block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = _entryKeyToClass;
  _entryKeyToClass = v0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = _registeredEntries;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = _entryKeyToClass;
        v9 = [v7 entryKey];
        [v8 setObject:v7 forKeyedSubscript:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (BOOL)hasAppIdentifierKeys
{
  entryDefinition = [(PLEntry *)self entryDefinition];
  v3 = [PLEntryDefinition hasAppIdentifierKeysForEntryDefinition:entryDefinition];

  return v3;
}

- (void)checkOverridesEntryDateWithNowDate:(id)date
{
  dateCopy = date;
  entryDefinition = [(PLEntry *)self entryDefinition];
  v5 = [PLEntryDefinition overridesEntryDateForEntryDefinition:entryDefinition];

  if (v5)
  {
    monotonicDate = dateCopy;
    if (!dateCopy)
    {
      monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    }

    dateCopy = monotonicDate;
    [(PLEntry *)self setObject:monotonicDate forKeyedSubscript:@"timestampLogged"];
  }
}

uint64_t __14__PLEntry_sem__block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = sem_masterSem;
  sem_masterSem = v0;

  v2 = [MEMORY[0x1E695DF90] dictionary];
  sem_entryKeyToSem = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

- (PLEntry)initWithEntryDate:(id)date
{
  v8.receiver = self;
  v8.super_class = PLEntry;
  v3 = [(PLEntry *)&v8 init];
  if (v3)
  {
    if (initWithEntryDate__onceToken != -1)
    {
      [PLEntry initWithEntryDate:];
    }

    v4 = objc_opt_new();
    v5 = *(v3 + 2);
    *(v3 + 2) = v4;

    v6 = *(v3 + 3);
    *(v3 + 3) = 0;

    *(v3 + 6) = -1;
    *(v3 + 9) = 256;
  }

  return v3;
}

BOOL __29__PLEntry_initWithEntryDate___block_invoke()
{
  result = [PLDefaults isClassDebugEnabled:objc_opt_class()];
  PLEntryDebug = result;
  return result;
}

- (id)initEntryWithRawData:(id)data
{
  dataCopy = data;
  entryKey = [objc_opt_class() entryKey];
  v6 = [(PLEntry *)self initWithEntryKey:entryKey withRawData:dataCopy];

  return v6;
}

- (id)initEntryWithData:(id)data
{
  dataCopy = data;
  entryKey = [objc_opt_class() entryKey];
  v6 = [(PLEntry *)self initWithEntryKey:entryKey withData:dataCopy];

  return v6;
}

- (PLEntry)initWithEntryKey:(id)key
{
  keyCopy = key;
  v6 = [(PLEntry *)self init];
  if (v6)
  {
    monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
    entryDate = v6->_entryDate;
    v6->_entryDate = monotonicDate;

    objc_storeStrong(&v6->_entryKey, key);
    [(PLEntry *)v6 checkOverridesEntryDateWithNowDate:v6->_entryDate];
  }

  return v6;
}

- (PLEntry)initWithEntryKey:(id)key withDate:(id)date
{
  keyCopy = key;
  dateCopy = date;
  v9 = [(PLEntry *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryDate, date);
    objc_storeStrong(&v10->_entryKey, key);
    [(PLEntry *)v10 checkOverridesEntryDateWithNowDate:0];
  }

  return v10;
}

- (PLEntry)initWithEntryKey:(id)key withRawData:(id)data
{
  keyCopy = key;
  dataCopy = data;
  v9 = [(PLEntry *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryKey, key);
    [(PLEntry *)v10 setObjectsFromRawData:dataCopy];
    if (v10->_entryDate)
    {
      v11 = 0;
    }

    else
    {
      monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
      entryDate = v10->_entryDate;
      v10->_entryDate = monotonicDate;

      v11 = v10->_entryDate;
    }

    [(PLEntry *)v10 checkOverridesEntryDateWithNowDate:v11];
  }

  return v10;
}

- (PLEntry)initWithEntryKey:(id)key withData:(id)data
{
  keyCopy = key;
  dataCopy = data;
  v9 = [(PLEntry *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryKey, key);
    [(PLEntry *)v10 setObjectsFromData:dataCopy];
    v11 = [dataCopy objectForKeyedSubscript:@"ID"];
    v10->_entryID = [v11 longLongValue];

    v12 = [dataCopy objectForKeyedSubscript:@"timestamp"];
    if (!v12 || (v13 = v12, [dataCopy objectForKeyedSubscript:@"timestamp"], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DFB0], "null"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v14 == v15))
    {
      entryDefinition = [(PLEntry *)v10 entryDefinition];
      v21 = [entryDefinition objectForKeyedSubscript:@"Configs"];
      v22 = [v21 objectForKeyedSubscript:@"AllowNilTimestamp"];
      bOOLValue = [v22 BOOLValue];

      if (bOOLValue)
      {
        entryDate = v10->_entryDate;
        v10->_entryDate = 0;
      }

      else if (+[PLDefaults debugEnabled])
      {
        dataCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** ERROR *** missing timestamp from Database record entryKey=%@ data=%@", keyCopy, dataCopy];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
        lastPathComponent = [v26 lastPathComponent];
        v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry initWithEntryKey:withData:]"];
        [PLCoreStorage logMessage:dataCopy fromFile:lastPathComponent fromFunction:v28 fromLineNumber:275];

        v30 = PLLogCommon(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    else
    {
      v16 = MEMORY[0x1E695DF00];
      v17 = [dataCopy objectForKeyedSubscript:@"timestamp"];
      [v17 doubleValue];
      v18 = [v16 dateWithTimeIntervalSince1970:?];
      v19 = v10->_entryDate;
      v10->_entryDate = v18;
    }

    if ([PLEntryDefinition isAggregateForEntryKey:keyCopy])
    {
      v31 = [dataCopy objectForKeyedSubscript:@"timeInterval"];
      if (v31)
      {
        v32 = v31;
        v33 = [dataCopy objectForKeyedSubscript:@"timeInterval"];
        null = [MEMORY[0x1E695DFB0] null];

        if (v33 != null)
        {
          v35 = [dataCopy objectForKeyedSubscript:@"timeInterval"];
          [(PLEntry *)v10 setObject:v35 forKeyedSubscript:@"timeInterval"];
        }
      }
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  entryKey = [(PLEntry *)self entryKey];
  entryDate = [(PLEntry *)self entryDate];
  v7 = [v4 initWithEntryKey:entryKey withDate:entryDate];

  dictionary = [(PLEntry *)self dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __24__PLEntry_copyWithZone___block_invoke;
  v11[3] = &unk_1E8519700;
  v9 = v7;
  v12 = v9;
  [dictionary enumerateKeysAndObjectsUsingBlock:v11];

  return v9;
}

- (void)setObjectsFromRawData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      entryDefinition = [(PLEntry *)self entryDefinition];
      v6 = [entryDefinition objectForKeyedSubscript:@"Keys"];

      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __33__PLEntry_setObjectsFromRawData___block_invoke;
      v17 = &unk_1E8519948;
      selfCopy = self;
      v7 = dataCopy;
      v19 = v7;
      [v6 enumerateKeysAndObjectsUsingBlock:&v14];
      v8 = [v7 objectForKey:{@"entryDate", v14, v15, v16, v17, selfCopy}];

      if (v8)
      {
        v9 = [v7 objectForKeyedSubscript:@"entryDate"];
        entryDate = self->_entryDate;
        self->_entryDate = v9;
      }

      else
      {
        v11 = [v7 objectForKey:@"__pl_internal_timeSensitiveSystemDate"];

        if (!v11)
        {
LABEL_8:

          goto LABEL_9;
        }

        entryDate = [v7 objectForKey:@"__pl_internal_timeSensitiveSystemDate"];
        convertFromSystemToMonotonic = [entryDate convertFromSystemToMonotonic];
        v13 = self->_entryDate;
        self->_entryDate = convertFromSystemToMonotonic;
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

void __33__PLEntry_setObjectsFromRawData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"CalculatedValue"];
  if (([v6 BOOLValue] & 1) == 0)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v18];

    if (v7)
    {
      goto LABEL_16;
    }

    v8 = [v5 objectForKeyedSubscript:@"Type"];
    v9 = [v8 shortValue];

    v10 = [v5 objectForKeyedSubscript:@"KeyValuePath"];

    if (v10)
    {
      v11 = [v5 objectForKeyedSubscript:@"KeyValuePath"];
      v12 = [v11 componentsJoinedByString:@"."];

      v6 = [*(a1 + 40) valueForKeyPath:v12];
    }

    else
    {
      v6 = [*(a1 + 40) objectForKey:v18];
    }

    v13 = v18;
    if (v6 && v9 == 2)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = [v5 objectForKeyedSubscript:@"isCFAbsoluteTime"];
        v15 = [v14 BOOLValue];

        v16 = MEMORY[0x1E695DF00];
        [v6 doubleValue];
        if (v15)
        {
          [v16 dateWithTimeIntervalSinceReferenceDate:?];
        }

        else
        {
          [v16 dateWithTimeIntervalSince1970:?];
        }
        v17 = ;

        v6 = v17;
      }

      v13 = v18;
    }

    [*(a1 + 32) setObject:v6 forKeyedSubscript:v13];
  }

LABEL_16:
}

- (void)setDynamicObjectsFromRawData:(id)data
{
  dataCopy = data;
  if ([(PLEntry *)self hasDynamicKeys])
  {
    entryDefinition = [(PLEntry *)self entryDefinition];
    v6 = [entryDefinition objectForKeyedSubscript:@"Keys"];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__PLEntry_setDynamicObjectsFromRawData___block_invoke;
    v8[3] = &unk_1E8519948;
    v9 = v6;
    selfCopy = self;
    v7 = v6;
    [dataCopy enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __40__PLEntry_setDynamicObjectsFromRawData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];

  if (!v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = *(a1 + 40);
    if (isKindOfClass)
    {
      [v8 setObjectsFromRawData:v5];
    }

    else
    {
      [v8 setObject:v5 forKeyedSubscript:v9];
    }
  }
}

- (void)setObjectsFromData:(id)data
{
  dataCopy = data;
  entryKey = [(PLEntry *)self entryKey];
  v6 = [PPSEntryKey PPSEnabled:entryKey];

  if (v6)
  {
    [(PLEntry *)self setObjectsUsingMetricsFromData:dataCopy];
  }

  else
  {
    entryDefinition = [(PLEntry *)self entryDefinition];
    v8 = [entryDefinition objectForKeyedSubscript:@"Keys"];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__PLEntry_setObjectsFromData___block_invoke;
    v9[3] = &unk_1E8519948;
    v10 = dataCopy;
    selfCopy = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v9];
  }
}

void __30__PLEntry_setObjectsFromData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = [a3 objectForKeyedSubscript:@"Type"];
  v6 = [v5 shortValue];

  v7 = [*(a1 + 32) objectForKey:v17];
  if (v6 == 2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ([v7 isNil] & 1) == 0)
    {
      v15 = MEMORY[0x1E695DF00];
      [v7 doubleValue];
      v16 = [v15 dateWithTimeIntervalSince1970:?];

      v7 = v16;
    }
  }

  else if (!v6 && [*(a1 + 40) staticArraySizeForKey:v17] >= 1 && !v7)
  {
    v7 = objc_opt_new();
    v8 = [*(a1 + 40) staticArraySizeForKey:v17];
    if (v8 >= 1)
    {
      v9 = v8;
      v10 = 0;
      do
      {
        v11 = *(a1 + 32);
        v12 = [v17 stringByAppendingFormat:@"_%d", v10];
        v13 = [v11 objectForKey:v12];

        if (v13)
        {
          [v7 addObject:v13];
        }

        else
        {
          v14 = [MEMORY[0x1E695DFB0] null];
          [v7 addObject:v14];
        }

        v10 = (v10 + 1);
      }

      while (v9 != v10);
    }
  }

  [*(a1 + 40) setObject:v7 forKeyedSubscript:v17];
}

- (void)setObjectsUsingMetricsFromData:(id)data
{
  dataCopy = data;
  entryKey = [(PLEntry *)self entryKey];
  v6 = [PPSEntryKey metricsForEntryKey:entryKey];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PLEntry_setObjectsUsingMetricsFromData___block_invoke;
  v8[3] = &unk_1E851B0C0;
  v9 = dataCopy;
  selfCopy = self;
  v7 = dataCopy;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void __42__PLEntry_setObjectsUsingMetricsFromData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = [a3 datatype];
  v6 = [*(a1 + 32) objectForKey:v9];
  if (v5 == 4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ([v6 isNil] & 1) == 0)
    {
      v7 = MEMORY[0x1E695DF00];
      [v6 doubleValue];
      v8 = [v7 dateWithTimeIntervalSince1970:?];

      v6 = v8;
    }
  }

  [*(a1 + 40) setObject:v6 forKeyedSubscript:v9];
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = [(PLEntry *)self sem];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

  if (!objectCopy)
  {
    objectCopy = [MEMORY[0x1E695DFB0] null];
  }

  dictionary = [(PLEntry *)self dictionary];
  [dictionary setObject:objectCopy forKeyedSubscript:keyCopy];

  v9 = [(PLEntry *)self sem];
  dispatch_semaphore_signal(v9);
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  v5 = [(PLEntry *)self sem];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  dictionary = [(PLEntry *)self dictionary];
  [dictionary removeObjectForKey:keyCopy];

  v7 = [(PLEntry *)self sem];
  dispatch_semaphore_signal(v7);
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(PLEntry *)self sem];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  dictionary = [(PLEntry *)self dictionary];
  v7 = [dictionary objectForKeyedSubscript:keyCopy];

  null = [MEMORY[0x1E695DFB0] null];

  if (v7 == null)
  {

    goto LABEL_6;
  }

  if (v7)
  {
    goto LABEL_13;
  }

  if ([keyCopy isEqualToString:@"timestamp"])
  {
    v9 = MEMORY[0x1E696AD98];
    entryDate = [(PLEntry *)self entryDate];
    [entryDate timeIntervalSince1970];
    v7 = [v9 numberWithDouble:?];

    goto LABEL_13;
  }

  if (![keyCopy isEqualToString:@"entryDate"])
  {
    if (([keyCopy isEqualToString:@"ID"] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"entryID"))
    {
      entryDate2 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PLEntry entryID](self, "entryID")}];
      goto LABEL_12;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_13;
  }

  entryDate2 = [(PLEntry *)self entryDate];
LABEL_12:
  v7 = entryDate2;
LABEL_13:
  v12 = [(PLEntry *)self sem];
  dispatch_semaphore_signal(v12);

  return v7;
}

- (id)definitionForKey:(id)key
{
  keyCopy = key;
  entryDefinition = [(PLEntry *)self entryDefinition];
  v6 = [entryDefinition objectForKeyedSubscript:@"Keys"];
  v7 = [v6 objectForKeyedSubscript:keyCopy];

  return v7;
}

- (BOOL)isKeyDynamic:(id)dynamic
{
  dynamicCopy = dynamic;
  if ([(PLEntry *)self hasDynamicKeys])
  {
    v5 = [(PLEntry *)self definitionForKey:dynamicCopy];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isKeyAggregateValue:(id)value
{
  v3 = [(PLEntry *)self definitionForKey:value];
  v4 = [v3 objectForKeyedSubscript:@"IsAggregateValue"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"IsAggregateValue"];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)unitForKey:(id)key
{
  v3 = [(PLEntry *)self definitionForKey:key];
  v4 = [v3 objectForKeyedSubscript:@"Unit"];

  return v4;
}

- (signed)formaterForKey:(id)key
{
  keyCopy = key;
  entryKey = [(PLEntry *)self entryKey];
  v6 = [PPSEntryKey PPSEnabled:entryKey];

  if (v6)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v8 = [PPSEntryKey subsystemForEntryKey:entryKey2];

    entryKey3 = [(PLEntry *)self entryKey];
    v10 = [PPSEntryKey categoryForEntryKey:entryKey3];

    v11 = [MEMORY[0x1E69BDC20] getMetadataForSubsystem:v8 category:v10 name:keyCopy];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "datatype")}];
    shortValue = [PLValueUtilties formatterFromDataType:v12];
  }

  else
  {
    v14 = [(PLEntry *)self definitionForKey:keyCopy];
    v8 = [v14 objectForKeyedSubscript:@"Type"];

    if (v8)
    {
      shortValue = [v8 shortValue];
    }

    else
    {
      shortValue = 0x8000;
    }
  }

  return shortValue;
}

+ (signed)dataFormatForMetric:(id)metric auxiliaryMetrics:(id)metrics
{
  if (!metric || !metrics)
  {
    return 0x8000;
  }

  v4 = [metrics objectForKeyedSubscript:?];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "datatype")}];
  v6 = [PLValueUtilties formatterFromDataType:v5];

  return v6;
}

- (int)staticArraySizeForKey:(id)key
{
  keyCopy = key;
  entryKey = [(PLEntry *)self entryKey];
  v6 = [PPSEntryKey PPSEnabled:entryKey];

  if (v6)
  {
    entryKey2 = [(PLEntry *)self entryKey];
    v8 = [PPSEntryKey subsystemForEntryKey:entryKey2];

    entryKey3 = [(PLEntry *)self entryKey];
    v10 = [PPSEntryKey categoryForEntryKey:entryKey3];

    v11 = [MEMORY[0x1E69BDC20] getMetadataForSubsystem:v8 category:v10 name:keyCopy];
    v12 = v11;
    if (v11 && [v11 auxiliaryType] == 3 && objc_msgSend(v12, "fixedArraySize"))
    {
      fixedArraySize = [v12 fixedArraySize];
    }

    else
    {
      fixedArraySize = -1;
    }

    goto LABEL_10;
  }

  if (![(PLEntry *)self formaterForKey:keyCopy])
  {
    v15 = [(PLEntry *)self definitionForKey:keyCopy];
    v16 = [v15 objectForKeyedSubscript:@"TypeArraySize"];

    if (v16)
    {
      v8 = [(PLEntry *)self definitionForKey:keyCopy];
      v10 = [v8 objectForKeyedSubscript:@"TypeArraySize"];
      fixedArraySize = [v10 intValue];
LABEL_10:

      goto LABEL_11;
    }
  }

  fixedArraySize = -1;
LABEL_11:

  return fixedArraySize;
}

- (id)keyValuePathForKey:(id)key
{
  v3 = [(PLEntry *)self definitionForKey:key];
  v4 = [v3 objectForKeyedSubscript:@"KeyValuePath"];
  v5 = [v4 componentsJoinedByString:@"."];

  return v5;
}

- (int64_t)compare:(id)compare options:(signed __int16)options
{
  optionsCopy = options;
  v228 = *MEMORY[0x1E69E9840];
  compareCopy = compare;
  entryDate = [(PLEntry *)self entryDate];
  entryDate2 = [compareCopy entryDate];
  v9 = [entryDate compare:entryDate2];

  p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
  v220 = compareCopy;
  if (optionsCopy == 2)
  {
    if (PLEntryDebug == 1)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tolerance in play"];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v11 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:547];

      v16 = PLLogCommon(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      compareCopy = v220;
      p_superclass = (&OBJC_METACLASS___PLEntryDefinition + 8);
    }
  }

  else if (optionsCopy == 1)
  {
    if (PLEntryDebug != 1)
    {
      goto LABEL_20;
    }

    v17 = MEMORY[0x1E696AEC0];
    entryDate3 = [(PLEntry *)self entryDate];
    entryDate4 = [compareCopy entryDate];
    v20 = [v17 stringWithFormat:@"PLEntry.compare date: self.date=%@ other.date=%@", entryDate3, entryDate4];

    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    lastPathComponent2 = [v21 lastPathComponent];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    obj = v20;
    [PLCoreStorage logMessage:v20 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:550];

    v25 = PLLogCommon(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

LABEL_18:
    p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
    goto LABEL_19;
  }

  keys = [(PLEntry *)self keys];
  v27 = [keys count];
  keys2 = [compareCopy keys];
  v29 = [keys2 count];

  if (v27 != v29)
  {
    if (*(p_superclass + 3928) != 1)
    {
      goto LABEL_20;
    }

    v41 = MEMORY[0x1E696AEC0];
    keys3 = [(PLEntry *)self keys];
    v43 = [keys3 count];
    keys4 = [compareCopy keys];
    v45 = [v41 stringWithFormat:@"PLEntry.compare key count: self.count=%lu other.count=%lu", v43, objc_msgSend(keys4, "count")];

    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    lastPathComponent3 = [v46 lastPathComponent];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    obj = v45;
    [PLCoreStorage logMessage:v45 fromFile:lastPathComponent3 fromFunction:v48 fromLineNumber:555];

    v25 = PLLogCommon(v49);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  entryKey = [(PLEntry *)self entryKey];
  entryKey2 = [compareCopy entryKey];
  v32 = [entryKey caseInsensitiveCompare:entryKey2];

  if (v32)
  {
    if (*(p_superclass + 3928) != 1)
    {
      goto LABEL_20;
    }

    v33 = MEMORY[0x1E696AEC0];
    entryKey3 = [(PLEntry *)self entryKey];
    entryKey4 = [compareCopy entryKey];
    v36 = [v33 stringWithFormat:@"PLEntry.compare key: self.key=%@ other.key=%@", entryKey3, entryKey4];

    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    lastPathComponent4 = [v37 lastPathComponent];
    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    obj = v36;
    [PLCoreStorage logMessage:v36 fromFile:lastPathComponent4 fromFunction:v39 fromLineNumber:560];

    v25 = PLLogCommon(v40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v217 = optionsCopy;
  v214 = v9;
  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  obj = [(PLEntry *)self keys];
  v215 = [obj countByEnumeratingWithState:&v221 objects:v227 count:16];
  if (!v215)
  {
LABEL_110:

    if (*(p_superclass + 3928) == 1)
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLEntry.compare NSOrderedSame!"];
      v161 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      lastPathComponent5 = [v161 lastPathComponent];
      v163 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v50 fromFile:lastPathComponent5 fromFunction:v163 fromLineNumber:692];

      v55 = PLLogCommon(v164);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v9 = 0;
LABEL_23:
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_24;
  }

  v216 = *v222;
LABEL_27:
  v57 = 0;
  while (1)
  {
    if (*v222 != v216)
    {
      objc_enumerationMutation(obj);
    }

    v58 = *(*(&v221 + 1) + 8 * v57);
    entryDefinition = [(PLEntry *)self entryDefinition];
    v60 = [PLEntryDefinition keyConfigsForEntryDefinition:entryDefinition];
    v61 = [v60 objectForKeyedSubscript:v58];
    v25 = [v61 objectForKeyedSubscript:@"FilterEntryLoggingTolerances"];

    v62 = *(p_superclass + 3928);
    v64 = v217 == 2 && v25 != 0;
    if (v62 == 1 && v64)
    {
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"key=%@ toleranceDefinition=%@", v58, v25];
      v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      lastPathComponent6 = [v66 lastPathComponent];
      v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v65 fromFile:lastPathComponent6 fromFunction:v68 fromLineNumber:567];

      v70 = PLLogCommon(v69);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v226 = v65;
        _os_log_debug_impl(&dword_1D8611000, v70, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    compareCopy = v220;
    if (v64)
    {
      v71 = [v25 objectForKeyedSubscript:@"Ignore"];
      v132 = v71;
      if (v71 && ([v71 BOOLValue] & 1) != 0)
      {
        goto LABEL_87;
      }
    }

    v73 = [(PLEntry *)self objectForKeyedSubscript:v58];
    if (v73)
    {
    }

    else
    {
      v74 = [v220 objectForKeyedSubscript:v58];

      if (!v74)
      {
        goto LABEL_88;
      }
    }

    v75 = [v220 objectForKeyedSubscript:v58];

    if (!v75)
    {
      p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
      if (PLEntryDebug != 1)
      {
        goto LABEL_145;
      }

      v165 = MEMORY[0x1E696AEC0];
      v166 = [(PLEntry *)self objectForKeyedSubscript:v58];
      v167 = [v220 objectForKeyedSubscript:v58];
      v167 = [v165 stringWithFormat:@"PLEntry.compare(%@) nil value: self.value=%@ other.value=%@", v58, v166, v167];

      v169 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      lastPathComponent7 = [v169 lastPathComponent];
      v171 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v167 fromFile:lastPathComponent7 fromFunction:v171 fromLineNumber:579];

      v173 = PLLogCommon(v172);
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      goto LABEL_122;
    }

    v76 = [(PLEntry *)self objectForKeyedSubscript:v58];
    v77 = [v220 objectForKeyedSubscript:v58];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
      if (PLEntryDebug != 1)
      {
        goto LABEL_145;
      }

      v174 = MEMORY[0x1E696AEC0];
      v175 = [(PLEntry *)self objectForKeyedSubscript:v58];
      v176 = objc_opt_class();
      v177 = NSStringFromClass(v176);
      v178 = [v220 objectForKeyedSubscript:v58];
      v179 = objc_opt_class();
      v180 = NSStringFromClass(v179);
      v167 = [v174 stringWithFormat:@"PLEntry.compare(%@) class value: self.value.class=%@ other.value.class=%@", v58, v177, v180];

      v181 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      lastPathComponent8 = [v181 lastPathComponent];
      v183 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v167 fromFile:lastPathComponent8 fromFunction:v183 fromLineNumber:584];

      v173 = PLLogCommon(v184);
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      compareCopy = v220;
LABEL_122:
      v9 = v214;
LABEL_138:

      goto LABEL_19;
    }

    v79 = [(PLEntry *)self objectForKeyedSubscript:v58];
    if (v64)
    {
      objc_opt_class();
      v80 = objc_opt_isKindOfClass();

      v81 = [(PLEntry *)self objectForKeyedSubscript:v58];
      v82 = v81;
      if (v80)
      {
        [v81 doubleValue];
        v84 = v83;

        v85 = [v220 objectForKeyedSubscript:v58];
        [v85 doubleValue];
        v87 = v86;
        p_superclass = (&OBJC_METACLASS___PLEntryDefinition + 8);
      }

      else
      {
        objc_opt_class();
        v93 = objc_opt_isKindOfClass();

        p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
        if ((v93 & 1) == 0)
        {
          if (PLEntryDebug != 1)
          {
            goto LABEL_88;
          }

          v129 = MEMORY[0x1E696AEC0];
          v130 = [(PLEntry *)self objectForKeyedSubscript:v58];
          v131 = objc_opt_class();
          v132 = NSStringFromClass(v131);
          v132 = [v129 stringWithFormat:@"bailing on class %@", v132];

          v133 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          lastPathComponent9 = [v133 lastPathComponent];
          v135 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v132 fromFile:lastPathComponent9 fromFunction:v135 fromLineNumber:603];

          v128 = PLLogCommon(v136);
          if (!os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_86;
          }

LABEL_99:
          *buf = 138412290;
          v226 = v132;
          _os_log_debug_impl(&dword_1D8611000, v128, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          goto LABEL_86;
        }

        v94 = [(PLEntry *)self objectForKeyedSubscript:v58];
        [v94 timeIntervalSince1970];
        v84 = v95;

        v85 = [v220 objectForKeyedSubscript:v58];
        [v85 timeIntervalSince1970];
        v87 = v96;
      }

      v97 = [v25 objectForKeyedSubscript:@"SpecialCase"];

      if (v97)
      {
        v98 = [v25 objectForKeyedSubscript:@"SpecialCase"];
        [v98 doubleValue];
        v100 = v99;

        if (*(p_superclass + 3928) == 1)
        {
          v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"specialCase! specialCase=%f thisValue=%f otherValue=%f", *&v100, *&v84, *&v87];
          v102 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          lastPathComponent10 = [v102 lastPathComponent];
          v104 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v101 fromFile:lastPathComponent10 fromFunction:v104 fromLineNumber:608];

          v106 = PLLogCommon(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v226 = v101;
            _os_log_debug_impl(&dword_1D8611000, v106, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          compareCopy = v220;
        }

        v107 = v87 == v100 || v84 == v100;
        if (v107 && v84 != v87)
        {
          if (*(p_superclass + 3928) != 1)
          {
            goto LABEL_145;
          }

          v167 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hit specialCase!"];
          v210 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          lastPathComponent11 = [v210 lastPathComponent];
          v212 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v167 fromFile:lastPathComponent11 fromFunction:v212 fromLineNumber:610];

          v173 = PLLogCommon(v213);
          v9 = v214;
          if (!os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_138;
          }

          goto LABEL_141;
        }
      }

      v108 = [v25 objectForKeyedSubscript:@"ChangeBy"];

      if (v108)
      {
        v109 = [v25 objectForKeyedSubscript:@"ChangeBy"];
        [v109 doubleValue];
        v111 = v110;

        v112 = v84 - v111;
LABEL_72:
        v113 = v84 + v111;
        goto LABEL_75;
      }

      v114 = [v25 objectForKeyedSubscript:@"ChangePercent"];

      if (v114)
      {
        v115 = [v25 objectForKeyedSubscript:@"ChangePercent"];
        [v115 doubleValue];
        v117 = v116;

        v112 = v84 - v117 * v84;
        v113 = v84 + v117 * v84;
        goto LABEL_75;
      }

      v137 = [v25 objectForKeyedSubscript:@"ChangeByUpper"];
      if (v137)
      {

LABEL_93:
        v139 = [v25 objectForKeyedSubscript:@"ChangeByLower"];

        v112 = v84;
        if (v139)
        {
          v140 = [v25 objectForKeyedSubscript:@"ChangeByLower"];
          [v140 doubleValue];
          v142 = v141;

          v112 = v84 - v142;
        }

        v143 = [v25 objectForKeyedSubscript:@"ChangeByUpper"];

        if (v143)
        {
          v144 = [v25 objectForKeyedSubscript:@"ChangeByUpper"];
          [v144 doubleValue];
          v111 = v145;

          goto LABEL_72;
        }

LABEL_105:
        v113 = v84;
        goto LABEL_75;
      }

      v138 = [v25 objectForKeyedSubscript:@"ChangeByLower"];

      if (v138)
      {
        goto LABEL_93;
      }

      v146 = [v25 objectForKeyedSubscript:@"ChangePercentUpper"];
      if (v146)
      {

LABEL_101:
        v148 = [v25 objectForKeyedSubscript:@"ChangePercentLower"];

        v112 = v84;
        if (v148)
        {
          v149 = [v25 objectForKeyedSubscript:@"ChangePercentLower"];
          [v149 doubleValue];
          v151 = v150;

          v112 = v84 - v84 * v151;
        }

        v152 = [v25 objectForKeyedSubscript:@"ChangePercentUpper"];

        if (!v152)
        {
          goto LABEL_105;
        }

        v153 = [v25 objectForKeyedSubscript:@"ChangePercentUpper"];
        [v153 doubleValue];
        v155 = v154;

        v113 = v84 + v84 * v155;
LABEL_75:
        if (*(p_superclass + 3928) == 1)
        {
          v118 = [MEMORY[0x1E696AEC0] stringWithFormat:@"key=%@ thisValue=%f otherValue=%f lowerBound=%f upperBound=%f", v58, *&v84, *&v87, *&v112, *&v113];
          v119 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          lastPathComponent12 = [v119 lastPathComponent];
          v121 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v118 fromFile:lastPathComponent12 fromFunction:v121 fromLineNumber:661];

          v123 = PLLogCommon(v122);
          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v226 = v118;
            _os_log_debug_impl(&dword_1D8611000, v123, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          compareCopy = v220;
        }

        if (v112 <= v87 && v87 <= v113)
        {
          if (!*(p_superclass + 3928))
          {
            goto LABEL_88;
          }

          v132 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inside tolerance"];
          v124 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
          lastPathComponent13 = [v124 lastPathComponent];
          v126 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
          [PLCoreStorage logMessage:v132 fromFile:lastPathComponent13 fromFunction:v126 fromLineNumber:663];

          v128 = PLLogCommon(v127);
          if (!os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_86;
          }

          goto LABEL_99;
        }

        if (!*(p_superclass + 3928))
        {
          goto LABEL_145;
        }

        v167 = [MEMORY[0x1E696AEC0] stringWithFormat:@"outside tolerance"];
        v206 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
        lastPathComponent14 = [v206 lastPathComponent];
        v208 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
        [PLCoreStorage logMessage:v167 fromFile:lastPathComponent14 fromFunction:v208 fromLineNumber:666];

        v173 = PLLogCommon(v209);
        v9 = v214;
        if (!os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_138;
        }

LABEL_141:
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        goto LABEL_138;
      }

      v147 = [v25 objectForKeyedSubscript:@"ChangePercentLower"];

      if (v147)
      {
        goto LABEL_101;
      }

      if (*(p_superclass + 3928) == 1)
      {
        v132 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bailing on no matched tolerance..."];
        v156 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
        lastPathComponent15 = [v156 lastPathComponent];
        v158 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
        [PLCoreStorage logMessage:v132 fromFile:lastPathComponent15 fromFunction:v158 fromLineNumber:657];

        v128 = PLLogCommon(v159);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_99;
        }

LABEL_86:
        compareCopy = v220;

LABEL_87:
        goto LABEL_88;
      }

      goto LABEL_88;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {

LABEL_124:
      p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
      if (PLEntryDebug != 1)
      {
        goto LABEL_145;
      }

      v185 = MEMORY[0x1E696AEC0];
      v186 = [(PLEntry *)self objectForKeyedSubscript:v58];
      if (objc_opt_respondsToSelector())
      {
        v187 = @"YES";
      }

      else
      {
        v187 = @"NO";
      }

      v188 = [v220 objectForKeyedSubscript:v58];
      if (objc_opt_respondsToSelector())
      {
        v189 = @"YES";
      }

      else
      {
        v189 = @"NO";
      }

      v167 = [v185 stringWithFormat:@"PLEntry.compare(%@) respondsToSelector: self.respondsToSelector=%@ other.respondsToSelector=%@", v58, v187, v189];

      v190 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
      lastPathComponent16 = [v190 lastPathComponent];
      v192 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
      [PLCoreStorage logMessage:v167 fromFile:lastPathComponent16 fromFunction:v192 fromLineNumber:681];

      v173 = PLLogCommon(v193);
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

LABEL_137:
      v9 = v214;
      p_superclass = (&OBJC_METACLASS___PLEntryDefinition + 8);
      goto LABEL_138;
    }

    v88 = [v220 objectForKeyedSubscript:v58];
    v89 = objc_opt_respondsToSelector();

    if ((v89 & 1) == 0)
    {
      goto LABEL_124;
    }

    v90 = [(PLEntry *)self objectForKeyedSubscript:v58];
    v91 = [v220 objectForKeyedSubscript:v58];
    v92 = [v90 compare:v91];

    if (v92)
    {
      break;
    }

LABEL_88:

    ++v57;
    p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
    if (v215 == v57)
    {
      v160 = [obj countByEnumeratingWithState:&v221 objects:v227 count:16];
      v215 = v160;
      if (!v160)
      {
        goto LABEL_110;
      }

      goto LABEL_27;
    }
  }

  p_superclass = &OBJC_METACLASS___PLEntryDefinition.superclass;
  if (PLEntryDebug == 1)
  {
    v218 = MEMORY[0x1E696AEC0];
    v194 = [(PLEntry *)self objectForKeyedSubscript:v58];
    v195 = objc_opt_class();
    v196 = NSStringFromClass(v195);
    v197 = [(PLEntry *)self objectForKeyedSubscript:v58];
    v198 = [v220 objectForKeyedSubscript:v58];
    v199 = objc_opt_class();
    v200 = NSStringFromClass(v199);
    v201 = [v220 objectForKeyedSubscript:v58];
    v167 = [v218 stringWithFormat:@"PLEntry.compare(%@) value: self.value(%@)=%@ other.value(%@)=%@", v58, v196, v197, v200, v201];

    v202 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    lastPathComponent17 = [v202 lastPathComponent];
    v204 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    [PLCoreStorage logMessage:v167 fromFile:lastPathComponent17 fromFunction:v204 fromLineNumber:673];

    v173 = PLLogCommon(v205);
    if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

    compareCopy = v220;
    goto LABEL_137;
  }

LABEL_145:
  v9 = v214;
LABEL_19:

LABEL_20:
  if (*(p_superclass + 3928) == 1)
  {
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLEntry.compare notSame"];
    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
    lastPathComponent18 = [v51 lastPathComponent];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLEntry compare:options:]"];
    [PLCoreStorage logMessage:v50 fromFile:lastPathComponent18 fromFunction:v53 fromLineNumber:689];

    v55 = PLLogCommon(v54);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

    goto LABEL_23;
  }

LABEL_24:

  return v9;
}

- (id)descriptionRespectingAllowlist:(BOOL)allowlist
{
  allowlistCopy = allowlist;
  v37 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD60];
  entryDate = [(PLEntry *)self entryDate];
  entryKey = [(PLEntry *)self entryKey];
  v8 = [v5 stringWithFormat:@"%@ [%@]", entryDate, entryKey];

  if ([(PLEntry *)self entryID]> 0)
  {
    goto LABEL_5;
  }

  v9 = objc_opt_class();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PLEntry_descriptionRespectingAllowlist___block_invoke;
  block[3] = &unk_1E8519630;
  v34 = @"printID";
  v35 = v9;
  if (descriptionRespectingAllowlist__defaultOnce != -1)
  {
    dispatch_once(&descriptionRespectingAllowlist__defaultOnce, block);
  }

  v10 = descriptionRespectingAllowlist__classDebugEnabled;

  if (v10 == 1)
  {
LABEL_5:
    [v8 appendFormat:@" ID=%lld; ", -[PLEntry entryID](self, "entryID")];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  keys = [(PLEntry *)self keys];
  v12 = [keys countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    v28 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(keys);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [(PLEntry *)self objectForKeyedSubscript:v16];
        if ([v17 isNil])
        {
          [v8 appendFormat:@" %@=<unknown>;", v16];
          goto LABEL_33;
        }

        if (!allowlistCopy)
        {
          goto LABEL_32;
        }

        v18 = v8;
        v19 = keys;
        v20 = allowlistCopy;
        entryKey2 = [(PLEntry *)self entryKey];
        v22 = [PLUtilities logModeForEntryKey:entryKey2 withKey:v16 andValue:v17];

        if (v22 <= 1u)
        {
          if (v22)
          {
            allowlistCopy = v20;
            if (v22 == 1)
            {
              v24 = [(PLEntry *)self unitForKey:v16];
              [v18 appendFormat:@" %@=<private>%@;", v16, v24];
            }

            keys = v19;
LABEL_23:
            v8 = v18;
            v14 = v28;
            goto LABEL_33;
          }

          allowlistCopy = v20;
          keys = v19;
LABEL_30:
          v8 = v18;
          goto LABEL_31;
        }

        if (v22 == 4)
        {
          v25 = [PLUtilities hashBundleID:v17];
          allowlistCopy = v20;
          keys = v19;
        }

        else
        {
          allowlistCopy = v20;
          if (v22 == 3)
          {
            objc_opt_class();
            keys = v19;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_30;
            }

            lastPathComponent = [v17 lastPathComponent];
          }

          else
          {
            keys = v19;
            if (v22 != 2)
            {
              goto LABEL_23;
            }

            lastPathComponent = [PLUtilities hashString:v17];
          }

          v25 = lastPathComponent;
        }

        v8 = v18;

        v17 = v25;
LABEL_31:
        v14 = v28;
LABEL_32:
        v26 = [(PLEntry *)self unitForKey:v16];
        [v8 appendFormat:@" %@=%@%@;", v16, v17, v26];

LABEL_33:
      }

      v13 = [keys countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v13);
  }

  [v8 appendFormat:@" existsInDB=%i;", -[PLEntry existsInDB](self, "existsInDB")];

  return v8;
}

BOOL __42__PLEntry_descriptionRespectingAllowlist___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  descriptionRespectingAllowlist__classDebugEnabled = result;
  return result;
}

- (id)serialized
{
  v3 = objc_opt_new();
  dictionary = [(PLEntry *)self dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __21__PLEntry_serialized__block_invoke;
  v10[3] = &unk_1E8519700;
  v5 = v3;
  v11 = v5;
  [dictionary enumerateKeysAndObjectsUsingBlock:v10];

  entryDate = [(PLEntry *)self entryDate];

  if (entryDate)
  {
    [(PLEntry *)self entryDate];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v7 = ;
  [v5 setObject:v7 forKeyedSubscript:@"timestamp"];

  entryKey = [(PLEntry *)self entryKey];
  [v5 setObject:entryKey forKeyedSubscript:@"EntryKey"];

  return v5;
}

void __21__PLEntry_serialized__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v5 isNil] & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

- (id)serializedForJSON
{
  dictionary = [(PLEntry *)self dictionary];
  v4 = [PLUtilities JSONSanitizeDictionary:dictionary];
  v5 = [v4 mutableCopy];

  v6 = MEMORY[0x1E696AD98];
  entryDate = [(PLEntry *)self entryDate];
  [entryDate timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];
  [v5 setObject:v8 forKeyedSubscript:@"timestamp"];

  return v5;
}

+ (id)summarizeAggregateEntries:(id)entries
{
  entriesCopy = entries;
  if ([entriesCopy count])
  {
    v4 = [entriesCopy objectAtIndexedSubscript:0];
    entryDefinition = [v4 entryDefinition];
    v6 = [entryDefinition objectForKeyedSubscript:@"AggregateKeys"];

    v7 = [entriesCopy objectAtIndexedSubscript:0];
    definedKeys = [v7 definedKeys];
    v9 = [definedKeys arrayByRemovingObjectsFromArray:v6];

    v10 = [PLEntry summarizeAggregateEntries:entriesCopy withPrimaryKeys:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)summarizeAggregateEntries:(id)entries withPrimaryKeys:(id)keys
{
  v136 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  keysCopy = keys;
  v93 = entriesCopy;
  v7 = [entriesCopy count];
  v107 = 0;
  if (keysCopy && v7)
  {
    if ([keysCopy count])
    {
      v8 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__PLEntry_summarizeAggregateEntries_withPrimaryKeys___block_invoke;
      block[3] = &unk_1E8519630;
      v128 = @"sumarizeAggregate";
      v129 = v8;
      if (summarizeAggregateEntries_withPrimaryKeys__defaultOnce != -1)
      {
        dispatch_once(&summarizeAggregateEntries_withPrimaryKeys__defaultOnce, block);
      }

      v9 = summarizeAggregateEntries_withPrimaryKeys__classDebugEnabled;

      v10 = objc_opt_new();
      v101 = objc_opt_new();
      v11 = [entriesCopy objectAtIndexedSubscript:0];
      entryDefinition = [v11 entryDefinition];
      v96 = [entryDefinition objectForKeyedSubscript:@"AggregateKeys"];

      v104 = objc_opt_new();
      if (v9 == 1)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"primaryKeys=%@\naggregateKeys=%@", keysCopy, v96];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
        lastPathComponent = [v14 lastPathComponent];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntry summarizeAggregateEntries:withPrimaryKeys:]"];
        [PLCoreStorage logMessage:v13 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:803];

        v18 = PLLogCommon(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      obj = v93;
      v94 = v10;
      v95 = keysCopy;
      v99 = [obj countByEnumeratingWithState:&v123 objects:v135 count:16];
      if (v99)
      {
        v98 = *v124;
        v102 = v9;
        do
        {
          v19 = 0;
          do
          {
            if (*v124 != v98)
            {
              objc_enumerationMutation(obj);
            }

            v100 = v19;
            v106 = *(*(&v123 + 1) + 8 * v19);
            v20 = v10;
            if (v9)
            {
              v103 = objc_opt_new();
              if (![keysCopy count])
              {
                v21 = v20;
                v108 = 0;
LABEL_40:
                v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"aggregating... for %@", v103];
                v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
                lastPathComponent2 = [v43 lastPathComponent];
                v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntry summarizeAggregateEntries:withPrimaryKeys:]"];
                [PLCoreStorage logMessage:v103 fromFile:lastPathComponent2 fromFunction:v45 fromLineNumber:842];

                v47 = PLLogCommon(v46);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v134 = v103;
                  _os_log_debug_impl(&dword_1D8611000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v20 = v21;
                if (v108)
                {
                  v9 = v102;
LABEL_46:
                  v121 = 0u;
                  v122 = 0u;
                  v119 = 0u;
                  v120 = 0u;
                  v105 = v96;
                  v48 = [v105 countByEnumeratingWithState:&v119 objects:v132 count:16];
                  if (!v48)
                  {
                    goto LABEL_68;
                  }

                  v49 = v48;
                  v97 = v20;
                  v50 = *v120;
                  v51 = v106;
                  while (2)
                  {
                    v52 = 0;
LABEL_49:
                    if (*v120 != v50)
                    {
                      objc_enumerationMutation(v105);
                    }

                    v53 = *(*(&v119 + 1) + 8 * v52);
                    v54 = [v51 definitionForKey:v53];
                    v55 = [v54 objectForKeyedSubscript:@"AggregateFunction"];
                    shortValue = [v55 shortValue];

                    if (shortValue <= 1)
                    {
                      v57 = MEMORY[0x1E696AD98];
                      v58 = [v108 objectForKeyedSubscript:v53];
                      [v58 doubleValue];
                      v60 = v59;
                      v61 = [v51 objectForKeyedSubscript:v53];
                      [v61 doubleValue];
                      v63 = [v57 numberWithDouble:v60 + v62];
                      [v108 setObject:v63 forKeyedSubscript:v53];

                      v51 = v106;
                      if (shortValue == 1)
                      {
                        [v104 addObject:v53];
                      }

LABEL_58:

                      if (v49 == ++v52)
                      {
                        v71 = [v105 countByEnumeratingWithState:&v119 objects:v132 count:16];
                        v49 = v71;
                        if (!v71)
                        {
                          v10 = v94;
                          keysCopy = v95;
                          v9 = v102;
                          v20 = v97;
                          goto LABEL_68;
                        }

                        continue;
                      }

                      goto LABEL_49;
                    }

                    break;
                  }

                  if (shortValue == 3)
                  {
                    v68 = [v108 objectForKeyedSubscript:v53];
                    v69 = [v51 objectForKeyedSubscript:v53];
                    v70 = [v68 compare:v69];

                    if (v70 != -1)
                    {
                      goto LABEL_58;
                    }
                  }

                  else
                  {
                    if (shortValue != 2)
                    {
                      goto LABEL_58;
                    }

                    v64 = [v108 objectForKeyedSubscript:v53];
                    v65 = [v51 objectForKeyedSubscript:v53];
                    v66 = [v64 compare:v65];

                    if (v66 != 1)
                    {
                      goto LABEL_58;
                    }
                  }

                  v67 = [v51 objectForKeyedSubscript:v53];
                  [v108 setObject:v67 forKeyedSubscript:v53];

                  goto LABEL_58;
                }

                v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"We should not be here!"];
                v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
                lastPathComponent3 = [v73 lastPathComponent];
                v75 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntry summarizeAggregateEntries:withPrimaryKeys:]"];
                v105 = v72;
                [PLCoreStorage logMessage:v72 fromFile:lastPathComponent3 fromFunction:v75 fromLineNumber:864];

                v41 = PLLogCommon(v76);
                v9 = v102;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v134 = v72;
                  _os_log_debug_impl(&dword_1D8611000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v108 = 0;
LABEL_67:

LABEL_68:
                goto LABEL_69;
              }
            }

            else
            {
              v103 = 0;
              if (![keysCopy count])
              {
                v108 = 0;
                goto LABEL_69;
              }
            }

            v22 = 0;
            v108 = 0;
            v23 = 0;
            do
            {
              v24 = [keysCopy objectAtIndexedSubscript:v22];
              v25 = [v106 objectForKeyedSubscript:v24];

              if (v9)
              {
                v26 = [keysCopy objectAtIndexedSubscript:v22];
                [v103 setObject:v25 forKeyedSubscript:v26];
              }

              v27 = [v20 objectForKeyedSubscript:v25];

              if (!v27)
              {
                if (v22 == [keysCopy count] - 1)
                {
                  v28 = [v106 copy];
                  [v28 entryKey];
                  v30 = v29 = v20;
                  v31 = [PLEntryKey baseEntryKeyForEntryKey:v30];
                  [v28 setEntryKey:v31];

                  v20 = v29;
                  v9 = v102;
                  [v29 setObject:v28 forKeyedSubscript:v25];
                  [v101 addObject:v28];
                  v23 = 1;
                }

                else
                {
                  v28 = objc_opt_new();
                  [v20 setObject:v28 forKeyedSubscript:v25];
                }
              }

              v32 = [keysCopy count] - 1;
              v33 = [v20 objectForKeyedSubscript:v25];
              v34 = v108;
              if (v22 == v32)
              {
                v35 = v108;
              }

              else
              {
                v35 = v20;
              }

              if (v22 == v32)
              {
                v34 = v33;
              }

              else
              {
                v20 = v33;
              }

              v108 = v34;

              ++v22;
            }

            while ([keysCopy count] > v22);
            if (v23)
            {
              if (!v9)
              {
                goto LABEL_69;
              }

              v1032 = [MEMORY[0x1E696AEC0] stringWithFormat:@"first hit for %@", v103];
              v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLEntry.m"];
              lastPathComponent4 = [v37 lastPathComponent];
              v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLEntry summarizeAggregateEntries:withPrimaryKeys:]"];
              v105 = v1032;
              [PLCoreStorage logMessage:v1032 fromFile:lastPathComponent4 fromFunction:v39 fromLineNumber:838];

              v41 = PLLogCommon(v40);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v134 = v1032;
                _os_log_debug_impl(&dword_1D8611000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              goto LABEL_67;
            }

            if (v9)
            {
              v21 = v20;
              goto LABEL_40;
            }

            if (v108)
            {
              goto LABEL_46;
            }

            v108 = 0;
LABEL_69:

            v19 = v100 + 1;
          }

          while (v100 + 1 != v99);
          v77 = [obj countByEnumeratingWithState:&v123 objects:v135 count:16];
          v99 = v77;
        }

        while (v77);
      }

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v107 = v101;
      v78 = [v107 countByEnumeratingWithState:&v115 objects:v131 count:16];
      if (v78)
      {
        v79 = v78;
        v109 = *v116;
        do
        {
          for (i = 0; i != v79; ++i)
          {
            if (*v116 != v109)
            {
              objc_enumerationMutation(v107);
            }

            v81 = *(*(&v115 + 1) + 8 * i);
            v111 = 0u;
            v112 = 0u;
            v113 = 0u;
            v114 = 0u;
            v82 = v104;
            v83 = [v82 countByEnumeratingWithState:&v111 objects:v130 count:16];
            if (v83)
            {
              v84 = v83;
              v85 = *v112;
              do
              {
                for (j = 0; j != v84; ++j)
                {
                  if (*v112 != v85)
                  {
                    objc_enumerationMutation(v82);
                  }

                  v87 = *(*(&v111 + 1) + 8 * j);
                  v88 = MEMORY[0x1E696AD98];
                  v89 = [v81 objectForKeyedSubscript:v87];
                  [v89 doubleValue];
                  v91 = [v88 numberWithDouble:{v90 / objc_msgSend(obj, "count")}];
                  [v81 setObject:v91 forKeyedSubscript:v87];
                }

                v84 = [v82 countByEnumeratingWithState:&v111 objects:v130 count:16];
              }

              while (v84);
            }
          }

          v79 = [v107 countByEnumeratingWithState:&v115 objects:v131 count:16];
        }

        while (v79);
      }

      keysCopy = v95;
    }

    else
    {
      v107 = 0;
    }
  }

  return v107;
}

BOOL __53__PLEntry_summarizeAggregateEntries_withPrimaryKeys___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  summarizeAggregateEntries_withPrimaryKeys__classDebugEnabled = result;
  return result;
}

+ (void)registerEntry:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 superclass];
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = a1;
  v5 = v4;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "%@ %@ registered", v6, 0x16u);
}

@end