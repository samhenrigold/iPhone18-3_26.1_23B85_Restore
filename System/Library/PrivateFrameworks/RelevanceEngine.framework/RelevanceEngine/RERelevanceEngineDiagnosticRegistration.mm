@interface RERelevanceEngineDiagnosticRegistration
- (id)_allProcesses;
- (id)_defaultRegistrationDirectory;
- (id)_init;
- (id)_processesFileURL;
- (void)_accessEngineDataForProcess:(id)process usingBlock:(id)block;
- (void)_allProcesses;
- (void)checkinEngine:(id)engine;
- (void)enumerateAvailableEngines:(id)engines;
@end

@implementation RERelevanceEngineDiagnosticRegistration

- (id)_init
{
  v6.receiver = self;
  v6.super_class = RERelevanceEngineDiagnosticRegistration;
  _init = [(RESingleton *)&v6 _init];
  if (_init)
  {
    if (_fetchedInternalBuildOnceToken_8 != -1)
    {
      [RERelevanceEngineDiagnosticRegistration _init];
    }

    if (_isInternalDevice_8)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      _defaultRegistrationDirectory = [_init _defaultRegistrationDirectory];
      _init[8] = [defaultManager fileExistsAtPath:_defaultRegistrationDirectory];
    }

    else
    {
      _init[8] = 0;
    }
  }

  return _init;
}

uint64_t __48__RERelevanceEngineDiagnosticRegistration__init__block_invoke(uint64_t a1, uint64_t a2)
{
  result = _REGetIsInternalBuild(a1, a2);
  _isInternalDevice_8 = result;
  return result;
}

- (id)_defaultRegistrationDirectory
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RERelevanceEngineDiagnosticRegistration__defaultRegistrationDirectory__block_invoke;
  block[3] = &unk_2785F9AB8;
  v4 = @"/private/var/mobile/Library/RelevanceEngine/Registration/";
  if (_defaultRegistrationDirectory_onceToken != -1)
  {
    dispatch_once(&_defaultRegistrationDirectory_onceToken, block);
  }

  return @"/private/var/mobile/Library/RelevanceEngine/Registration/";
}

void __72__RERelevanceEngineDiagnosticRegistration__defaultRegistrationDirectory__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(a1 + 32);
  v4 = 0;
  [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v4];
}

- (id)_processesFileURL
{
  _defaultRegistrationDirectory = [(RERelevanceEngineDiagnosticRegistration *)self _defaultRegistrationDirectory];
  v3 = [_defaultRegistrationDirectory stringByAppendingPathComponent:@"Processes.dat"];

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];

  return v4;
}

- (id)_allProcesses
{
  if (self->_supportsRegistration)
  {
    v2 = MEMORY[0x277CBEA60];
    _processesFileURL = [(RERelevanceEngineDiagnosticRegistration *)self _processesFileURL];
    v8 = 0;
    v4 = [v2 arrayWithContentsOfURL:_processesFileURL error:&v8];
    v5 = v8;

    if (!v4)
    {
      v6 = RELogForDomain(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(RERelevanceEngineDiagnosticRegistration *)v5 _allProcesses];
      }

      v4 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)_accessEngineDataForProcess:(id)process usingBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  processCopy = process;
  blockCopy = block;
  v8 = blockCopy;
  if (!blockCopy || !self->_supportsRegistration)
  {
    goto LABEL_36;
  }

  v47 = blockCopy;
  _defaultRegistrationDirectory = [(RERelevanceEngineDiagnosticRegistration *)self _defaultRegistrationDirectory];
  v10 = [_defaultRegistrationDirectory stringByAppendingString:processCopy];

  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
  v12 = MEMORY[0x277CBEB58];
  selfCopy = self;
  _allProcesses = [(RERelevanceEngineDiagnosticRegistration *)self _allProcesses];
  v14 = [v12 setWithArray:_allProcesses];

  v50 = v14;
  v49 = [v14 copy];
  v60 = 0;
  dictionary = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v11 error:&v60];
  v16 = v60;
  v17 = v16;
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    v18 = RELogForDomain(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [RERelevanceEngineDiagnosticRegistration _accessEngineDataForProcess:usingBlock:];
    }
  }

  v45 = v17;
  v46 = v10;
  v48 = processCopy;
  v52 = REBuildVersion(v16);
  date = [MEMORY[0x277CBEAA8] date];
  v20 = [dictionary mutableCopy];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = dictionary;
  v21 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v57;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v57 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v56 + 1) + 8 * i);
        v26 = [v20 objectForKeyedSubscript:v25];
        v27 = [v26 objectForKeyedSubscript:@"Version"];
        v28 = [v27 isEqualToString:v52];

        if (!v28 || ([date timeIntervalSinceDate:date], fabs(v29) > 604800.0))
        {
          [v20 removeObjectForKey:v25];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v22);
  }

  v8 = v47;
  v47[2](v47, v20);
  if (![v20 count])
  {
    processCopy = v48;
    [v50 removeObject:v48];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v54 = 0;
    v31 = v11;
    v37 = [defaultManager removeItemAtURL:v11 error:&v54];
    v33 = v54;

    if (!v37)
    {
      v34 = v46;
      v35 = v49;
      v30 = v50;
      goto LABEL_29;
    }

    v38 = RELogForDomain(0);
    v34 = v46;
    v35 = v49;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [RERelevanceEngineDiagnosticRegistration _accessEngineDataForProcess:usingBlock:];
    }

    v30 = v50;
    goto LABEL_27;
  }

  v30 = v50;
  processCopy = v48;
  [v50 addObject:v48];
  v55 = 0;
  v31 = v11;
  v32 = [v20 writeToURL:v11 error:&v55];
  v33 = v55;
  if ((v32 & 1) == 0)
  {
    v38 = RELogForDomain(0);
    v34 = v46;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [RERelevanceEngineDiagnosticRegistration _accessEngineDataForProcess:usingBlock:];
    }

    v35 = v49;
LABEL_27:

    goto LABEL_29;
  }

  v34 = v46;
  v35 = v49;
LABEL_29:

  if (([v35 isEqualToSet:v30] & 1) == 0)
  {
    allObjects = [v30 allObjects];
    _processesFileURL = [(RERelevanceEngineDiagnosticRegistration *)selfCopy _processesFileURL];
    v53 = 0;
    v41 = [allObjects writeToURL:_processesFileURL error:&v53];
    v42 = v53;

    if ((v41 & 1) == 0)
    {
      v43 = RELogForDomain(0);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [RERelevanceEngineDiagnosticRegistration _accessEngineDataForProcess:v42 usingBlock:v43];
      }
    }

    v35 = v49;
    v30 = v50;
  }

LABEL_36:
}

- (void)checkinEngine:(id)engine
{
  engineCopy = engine;
  if (self->_supportsRegistration)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__RERelevanceEngineDiagnosticRegistration_checkinEngine___block_invoke;
    v7[3] = &unk_2785FD460;
    v8 = engineCopy;
    [(RERelevanceEngineDiagnosticRegistration *)self _accessEngineDataForProcess:processName usingBlock:v7];
  }
}

void __57__RERelevanceEngineDiagnosticRegistration_checkinEngine___block_invoke(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 name];
  v5 = REBuildVersion(v4);
  v6 = [MEMORY[0x277CBEAA8] date];
  v8[0] = @"Version";
  v8[1] = @"Date";
  v9[0] = v5;
  v9[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v3 setObject:v7 forKeyedSubscript:v4];
}

- (void)enumerateAvailableEngines:(id)engines
{
  v19 = *MEMORY[0x277D85DE8];
  enginesCopy = engines;
  if (enginesCopy && self->_supportsRegistration)
  {
    _allProcesses = [(RERelevanceEngineDiagnosticRegistration *)self _allProcesses];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [_allProcesses countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(_allProcesses);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __69__RERelevanceEngineDiagnosticRegistration_enumerateAvailableEngines___block_invoke;
          v12[3] = &unk_2785FD4B0;
          v11 = enginesCopy;
          v12[4] = v10;
          v13 = v11;
          [(RERelevanceEngineDiagnosticRegistration *)self _accessEngineDataForProcess:v10 usingBlock:v12];

          ++v9;
        }

        while (v7 != v9);
        v7 = [_allProcesses countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

void __69__RERelevanceEngineDiagnosticRegistration_enumerateAvailableEngines___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__RERelevanceEngineDiagnosticRegistration_enumerateAvailableEngines___block_invoke_2;
  v5[3] = &unk_2785FD488;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 enumerateKeysAndObjectsUsingBlock:v5];
}

- (void)_allProcesses
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to read registration list: %@", &v2, 0xCu);
}

- (void)_accessEngineDataForProcess:(uint64_t)a1 usingBlock:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to write registration list: %@", &v2, 0xCu);
}

@end