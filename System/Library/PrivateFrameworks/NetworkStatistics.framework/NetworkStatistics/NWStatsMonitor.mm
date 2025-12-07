@interface NWStatsMonitor
- (BOOL)currentForegroundStateForProcessWithPid:(int)pid;
- (NWStatsMonitor)initWithQueue:(id)queue;
- (id)allIdentifiersForUUID:(id)d EUUID:(id)iD pid:(int)pid epid:(int)epid procname:(char *)procname;
- (id)bestIdentifierForUUID:(id)d EUUID:(id)iD pid:(int)pid epid:(int)epid procname:(char *)procname derivation:(int *)derivation;
- (id)extensionNameForUUID:(id)d;
- (id)identifierForUUID:(id)d derivation:(int *)derivation;
- (id)stateDictionary;
- (void)configure:(id)configure;
- (void)noteFailedLookupFor:(id)for processName:(char *)name pid:(int)pid;
@end

@implementation NWStatsMonitor

- (BOOL)currentForegroundStateForProcessWithPid:(int)pid
{
  appStateHandler = self->_appStateHandler;
  if (appStateHandler)
  {
    LOBYTE(appStateHandler) = [(NWAppStateHandler *)appStateHandler currentForegroundStateForProcessWithPid:*&pid];
  }

  return appStateHandler;
}

- (id)identifierForUUID:(id)d derivation:(int *)derivation
{
  dCopy = d;
  if (self->_useStaticMapping)
  {
    v7 = [(NWStatsEntityMapperStaticAssignment *)self->_staticAssignmentUUIDMapper identifierForUUID:dCopy derivation:derivation];
    if (v7)
    {
      goto LABEL_11;
    }
  }

  if (self->_useLaunchServices)
  {
    v7 = [(NWStatsEntityMapperDynamicLaunchServices *)self->_dynamicLaunchServicesUUIDMapper identifierForUUID:dCopy derivation:derivation];
    if (v7)
    {
      goto LABEL_11;
    }
  }

  if (self->_useNEHelper)
  {
    v7 = [(NWStatsEntityMapperNEHelper *)self->_neHelperUUIDMapper identifierForUUID:dCopy derivation:derivation];
    if (v7)
    {
      goto LABEL_11;
    }
  }

  if (self->_useCoalitionIDs)
  {
    v7 = [(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper identifierForUUID:dCopy derivation:derivation];
    if (v7)
    {
      goto LABEL_11;
    }
  }

  if (self->_useProcessNames)
  {
    v7 = [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper identifierForUUID:dCopy derivation:derivation];
LABEL_11:
    v8 = v7;
    goto LABEL_12;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)noteFailedLookupFor:(id)for processName:(char *)name pid:(int)pid
{
  v27 = *MEMORY[0x277D85DE8];
  forCopy = for;
  if (forCopy)
  {
    if (name)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:name];
    }

    else
    {
      if (pid)
      {
        pid_to_process_name(pid);
      }

      else
      {
        [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper identifierForUUID:forCopy derivation:0];
      }
      v9 = ;
    }

    v10 = v9;
    if (!v9 || ([(NSSet *)self->_knownDaemonSet member:v9], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      v12 = [(NSMutableDictionary *)self->_reportedLookupFailures objectForKeyedSubscript:forCopy];
      if (v12)
      {
        v13 = v12;
        [v12 timeIntervalSinceNow];
        if (v14 >= -900.0)
        {
LABEL_17:

          goto LABEL_18;
        }
      }

      date = [MEMORY[0x277CBEAA8] date];
      [(NSMutableDictionary *)self->_reportedLookupFailures setObject:date forKeyedSubscript:forCopy];

      v16 = [(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper identifierForUUID:forCopy derivation:0];
      v17 = [(NWStatsEntityMapperNEHelper *)self->_neHelperUUIDMapper identifierForUUID:forCopy derivation:0];
      v18 = NStatGetLog(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138544130;
        v20 = forCopy;
        v21 = 2114;
        v22 = v10;
        v23 = 2114;
        v24 = v16;
        v25 = 2114;
        v26 = v17;
        _os_log_impl(&dword_25BA3A000, v18, OS_LOG_TYPE_DEFAULT, "Can't lookup UUID %{public}@ for procname %{public}@, coalition %{public}@ nehelper %{public}@", &v19, 0x2Au);
      }

      v13 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_18:
}

- (id)allIdentifiersForUUID:(id)d EUUID:(id)iD pid:(int)pid epid:(int)epid procname:(char *)procname
{
  v8 = *&epid;
  v9 = *&pid;
  v40[10] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v35 = [(NWStatsEntityMapperDynamicLaunchServices *)self->_dynamicLaunchServicesUUIDMapper identifierForUUID:dCopy derivation:0];
  v14 = [(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper identifierForUUID:dCopy derivation:0];
  v15 = [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper identifierForUUID:dCopy derivation:0];
  v34 = [(NWStatsEntityMapperNEHelper *)self->_neHelperUUIDMapper identifierForUUID:dCopy derivation:0];
  v33 = [(NWStatsEntityMapperStaticAssignment *)self->_staticAssignmentUUIDMapper identifierForUUID:dCopy derivation:0];
  if (v15)
  {
    if (v14)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:procname];
  if (v16)
  {
    v15 = v16;
  }

  else
  {
    v15 = @"malformed-proc-name";
  }

  [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper noteUUID:dCopy forProcessName:v15];
  if (!v14)
  {
LABEL_8:
    if ([(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper noteUUID:dCopy forPid:v9])
    {
      v14 = [(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper identifierForUUID:dCopy derivation:0];
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_11:
  v37 = v15;
  v38 = iDCopy;
  if (iDCopy && ([dCopy isEqual:iDCopy] & 1) == 0)
  {
    v30 = v9;
    v17 = [(NWStatsEntityMapperDynamicLaunchServices *)self->_dynamicLaunchServicesUUIDMapper identifierForUUID:iDCopy derivation:0];
    v18 = [(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper identifierForUUID:iDCopy derivation:0];
    v19 = [(NWStatsEntityMapperNEHelper *)self->_neHelperUUIDMapper identifierForUUID:iDCopy derivation:0];
    v31 = [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper identifierForUUID:iDCopy derivation:0];
    v21 = [(NWStatsEntityMapperStaticAssignment *)self->_staticAssignmentUUIDMapper identifierForUUID:iDCopy derivation:0];
    if (v8 && !v18)
    {
      if (v8 == v30 || ![(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper noteUUID:iDCopy forPid:v8])
      {
        v18 = 0;
      }

      else
      {
        v18 = [(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper identifierForUUID:iDCopy derivation:0];
      }
    }

    v20 = v31;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  if (v35)
  {
    v22 = v35;
  }

  else
  {
    v22 = @"nil-Core-UUID";
  }

  v36 = v22;
  if (v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = @"nil-Coal-UUID";
  }

  v32 = v23;
  if (v34)
  {
    v24 = v34;
  }

  else
  {
    v24 = @"nil-NE-UUID";
  }

  if (v33)
  {
    v25 = v33;
  }

  else
  {
    v25 = @"nil-static-UUID";
  }

  v39[0] = @"kNWStatsLookupUUIDCoreServices";
  v39[1] = @"kNWStatsLookupUUIDStatic";
  if (!v17)
  {
    v17 = @"nil-Core-EUUID";
  }

  v40[0] = v22;
  v40[1] = v25;
  v39[2] = @"kNWStatsLookupUUIDNEHelper";
  v39[3] = @"kNWStatsLookupUUIDCoalitionID";
  v40[2] = v24;
  v40[3] = v23;
  v39[4] = @"kNWStatsLookupUUIDProcessName";
  v39[5] = @"kNWStatsLookupEUUIDCoreServices";
  if (!v18)
  {
    v18 = @"nil-Coal-EUUID";
  }

  v40[4] = v37;
  v40[5] = v17;
  v39[6] = @"kNWStatsLookupEUUIDStatic";
  v39[7] = @"kNWStatsLookupEUUIDNEHelper";
  if (!v19)
  {
    v19 = @"nil-NE-EUUID";
  }

  if (v20)
  {
    v26 = v20;
  }

  else
  {
    v26 = @"nil-Proc-EUUID";
  }

  if (v21)
  {
    v27 = v21;
  }

  else
  {
    v27 = @"nil-static-EUUID";
  }

  v40[6] = v27;
  v40[7] = v19;
  v39[8] = @"kNWStatsLookupEUUIDCoalitionID";
  v39[9] = @"kNWStatsLookupEUUIDProcessName";
  v40[8] = v18;
  v40[9] = v26;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:10];

  return v28;
}

- (id)extensionNameForUUID:(id)d
{
  if (self->_useLaunchServices)
  {
    v5 = [(NWStatsEntityMapperDynamicLaunchServices *)self->_dynamicLaunchServicesUUIDMapper extensionNameForUUID:d, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)bestIdentifierForUUID:(id)d EUUID:(id)iD pid:(int)pid epid:(int)epid procname:(char *)procname derivation:(int *)derivation
{
  v10 = *&epid;
  v11 = *&pid;
  dCopy = d;
  iDCopy = iD;
  v32 = 0;
  v16 = [(NWStatsMonitor *)self identifierForUUID:dCopy derivation:&v32 + 4];
  if (v16 || self->_useCoalitionIDs && [(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper noteUUID:dCopy forPid:v11]&& ([(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper identifierForUUID:dCopy derivation:&v32 + 4], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
    if (!iDCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  [(NWStatsMonitor *)self noteFailedLookupFor:dCopy processName:procname pid:v11];
  if (self->_useProcessNames)
  {
    v17 = 0;
    if (!procname)
    {
      goto LABEL_17;
    }

LABEL_11:
    if (!v17)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:procname];
      v19 = v18;
      if (v18 && [v18 length])
      {
        [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper noteUUID:dCopy forProcessName:v19];
        v17 = [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper identifierForUUID:dCopy derivation:&v32 + 4];
      }

      else
      {
        v17 = 0;
      }
    }

    goto LABEL_17;
  }

  v17 = [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper identifierForUUID:dCopy derivation:&v32 + 4];
  if (procname)
  {
    goto LABEL_11;
  }

LABEL_17:
  if (v17)
  {
    if (iDCopy)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (derivation)
    {
      *derivation = HIDWORD(v32);
    }

    v20 = [MEMORY[0x277CCACA8] stringWithString:v17];
    goto LABEL_46;
  }

  HIDWORD(v32) = 0;
  v17 = @"UnknownProcess";
  if (!iDCopy)
  {
    goto LABEL_20;
  }

LABEL_19:
  if ([dCopy isEqual:iDCopy])
  {
    goto LABEL_20;
  }

  v21 = [(NWStatsMonitor *)self identifierForUUID:iDCopy derivation:&v32];
  if (!v21)
  {
    if (v10 == v11 || !v10 || !self->_useCoalitionIDs || ![(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper noteUUID:iDCopy forPid:v10]|| ([(NWStatsEntityMapperCoalitionWatcher *)self->_coalitionUUIDMapper identifierForUUID:iDCopy derivation:&v32], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v22 = v10 == v11 ? 0 : v10;
      [(NWStatsMonitor *)self noteFailedLookupFor:dCopy processName:0 pid:v22];
      v21 = [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper identifierForUUID:iDCopy derivation:&v32];
      if (!v21)
      {
        v29 = [(NSSet *)self->_useNEHelperSet count];
        if (!procname)
        {
          goto LABEL_20;
        }

        if (!v29)
        {
          goto LABEL_20;
        }

        useNEHelperSet = self->_useNEHelperSet;
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:procname];
        LODWORD(useNEHelperSet) = [(NSSet *)useNEHelperSet containsObject:v31];

        if (!useNEHelperSet)
        {
          goto LABEL_20;
        }

        v21 = [(NWStatsEntityMapperNEHelper *)self->_neHelperUUIDMapper identifierForUUID:iDCopy derivation:&v32];
        if (!v21)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v23 = v21;
  appendProcNameSet = self->_appendProcNameSet;
  if (appendProcNameSet)
  {
    v25 = [(NSSet *)appendProcNameSet count];
    if (procname)
    {
      if (v25)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:procname];
        if (v26 && [(NSSet *)self->_appendProcNameSet containsObject:v26])
        {
          v27 = [v26 stringByAppendingFormat:@"/%@", v23];

          v23 = v27;
          if (!v27)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }
      }
    }
  }

  if (derivation)
  {
    *derivation = v32;
  }

  v20 = [MEMORY[0x277CCACA8] stringWithString:v23];

LABEL_46:

  return v20;
}

- (void)configure:(id)configure
{
  configureCopy = configure;
  v5 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingUseNEHelper"];

  if (v5)
  {
    self->_useNEHelper = 1;
  }

  v6 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingUseNEHelperForSet"];

  if (v6)
  {
    v7 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingUseNEHelperForSet"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingUseNEHelperForSet"];
      useNEHelperSet = self->_useNEHelperSet;
      self->_useNEHelperSet = v10;
    }

    else
    {
      v12 = NStatGetLog(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_25BA3A000, v12, OS_LOG_TYPE_ERROR, "Configuration Parameters for UseNEHelperForSet not a set", buf, 2u);
      }
    }
  }

  v13 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingUseProcessPrefixForSet"];

  if (v13)
  {
    v14 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingUseProcessPrefixForSet"];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    if (v15)
    {
      v17 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingUseProcessPrefixForSet"];
      p_super = &self->_appendProcNameSet->super;
      self->_appendProcNameSet = v17;
    }

    else
    {
      p_super = NStatGetLog(v16);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *v42 = 0;
        _os_log_impl(&dword_25BA3A000, p_super, OS_LOG_TYPE_ERROR, "Configuration Parameters for UseProcessPrefixForSet not a set", v42, 2u);
      }
    }
  }

  v19 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingUseCoalitions"];

  if (v19)
  {
    v20 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingUseCoalitions"];
    bOOLValue = [v20 BOOLValue];
    self->_useCoalitionIDs = bOOLValue;
    self->_useProcessNames = bOOLValue ^ 1;
  }

  v22 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingCheckStaticAssignments"];

  if (v22)
  {
    v23 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingCheckStaticAssignments"];
    self->_useStaticMapping = [v23 BOOLValue];
  }

  v24 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingAvoidCoalitions"];

  if (v24)
  {
    v25 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingAvoidCoalitions"];
    bOOLValue2 = [v25 BOOLValue];
    self->_useCoalitionIDs = bOOLValue2 ^ 1;
    self->_useProcessNames = bOOLValue2;
  }

  v27 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingAvoidLaunchServices"];

  if (v27)
  {
    v28 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingAvoidLaunchServices"];
    self->_useLaunchServices = [v28 BOOLValue] ^ 1;
  }

  v29 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingDebugMode"];

  if (v29)
  {
    v30 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingDebugMode"];
    self->_debugMode = [v30 BOOLValue];
  }

  v31 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingCanonicalizeProcessNames"];

  if (v31)
  {
    v32 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingCanonicalizeProcessNames"];
    -[NWStatsEntityMapperProcessWatcher setCanonicalizedNames:](self->_processWatcherUUIDMapper, "setCanonicalizedNames:", [v32 BOOLValue]);
  }

  v33 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingAppStateMonitoring"];

  if (v33)
  {
    v34 = [configureCopy objectForKeyedSubscript:@"kNWStatsParameterMappingAppStateMonitoring"];
    if ([v34 BOOLValue])
    {
      if (!self->_appEventListener)
      {
        v35 = [[NWStatsAppEventListener alloc] initWithQueue:self->_queue];
        appEventListener = self->_appEventListener;
        self->_appEventListener = v35;
      }

      if (self->_appStateHandler)
      {
        goto LABEL_37;
      }

      v37 = objc_alloc_init(NWAppStateHandler);
      appStateHandler = self->_appStateHandler;
      self->_appStateHandler = v37;

      v39 = self->_appStateHandler;
      if (!v39)
      {
        goto LABEL_37;
      }

      v40 = self->_appEventListener;
      if (!v40)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v41 = self->_appStateHandler;
      self->_appStateHandler = 0;

      v40 = self->_appEventListener;
      v39 = 0;
    }

    [(NWStatsAppEventListener *)v40 setAppStateDelegate:v39];
LABEL_37:
  }
}

- (id)stateDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  stateDictionary = [(NWStatsEntityMapperDynamicLaunchServices *)self->_dynamicLaunchServicesUUIDMapper stateDictionary];
  if (stateDictionary)
  {
    [v3 setObject:stateDictionary forKeyedSubscript:@"DynLSMapper"];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    [v3 setObject:dictionary forKeyedSubscript:@"DynLSMapper"];
  }

  stateDictionary2 = [(NWStatsEntityMapperProcessWatcher *)self->_processWatcherUUIDMapper stateDictionary];
  if (stateDictionary2)
  {
    [v3 setObject:stateDictionary2 forKeyedSubscript:@"ProcMapper"];
  }

  else
  {
    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
    [v3 setObject:dictionary2 forKeyedSubscript:@"ProcMapper"];
  }

  return v3;
}

- (NWStatsMonitor)initWithQueue:(id)queue
{
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = NWStatsMonitor;
  v6 = [(NWStatsMonitor *)&v29 init];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = objc_alloc_init(NWStatsEntityMapperStaticAssignment);
  staticAssignmentUUIDMapper = v6->_staticAssignmentUUIDMapper;
  v6->_staticAssignmentUUIDMapper = v7;

  v9 = objc_alloc_init(NWStatsEntityMapperNEHelper);
  neHelperUUIDMapper = v6->_neHelperUUIDMapper;
  v6->_neHelperUUIDMapper = v9;

  v11 = objc_alloc_init(NWStatsEntityMapperDynamicLaunchServices);
  dynamicLaunchServicesUUIDMapper = v6->_dynamicLaunchServicesUUIDMapper;
  v6->_dynamicLaunchServicesUUIDMapper = v11;

  v13 = objc_alloc_init(NWStatsEntityMapperProcessWatcher);
  processWatcherUUIDMapper = v6->_processWatcherUUIDMapper;
  v6->_processWatcherUUIDMapper = v13;

  if (v6->_staticAssignmentUUIDMapper && v6->_neHelperUUIDMapper && v6->_dynamicLaunchServicesUUIDMapper && v6->_processWatcherUUIDMapper)
  {
    *&v6->_useCoalitionIDs = 256;
    objc_storeStrong(&v6->_queue, queue);
    v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_286D3E5A0];
    knownDaemonSet = v6->_knownDaemonSet;
    v6->_knownDaemonSet = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    reportedLookupFailures = v6->_reportedLookupFailures;
    v6->_reportedLookupFailures = v18;

    v20 = objc_alloc_init(NWStatsEntityMapperCoalitionWatcher);
    coalitionUUIDMapper = v6->_coalitionUUIDMapper;
    v6->_coalitionUUIDMapper = v20;

    v6->_useStaticMapping = 1;
    *&v6->_useNEHelper = 256;
    v22 = [MEMORY[0x277CBEB98] setWithObjects:{@"nsurlsessiond", 0}];
    useNEHelperSet = v6->_useNEHelperSet;
    v6->_useNEHelperSet = v22;

    appendProcNameSet = v6->_appendProcNameSet;
    v6->_appendProcNameSet = 0;

    v6->_debugMode = 0;
LABEL_7:
    v25 = v6;
    goto LABEL_11;
  }

  v26 = NStatGetLog(v15);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_25BA3A000, v26, OS_LOG_TYPE_ERROR, "Cannot initialize all UUID mappers", buf, 2u);
  }

  v25 = 0;
LABEL_11:

  return v25;
}

@end