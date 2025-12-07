@interface CLIPSShim
+ (CLIPSShim)sharedInstance;
+ (_CCCryptor)cryptor;
+ (id)createDecryptedCLPData:(const void *)data length:(unint64_t)length;
+ (id)dataSectionNameForModule:(id)module;
+ (id)decodeAndInflateCLIPSString:(id)string;
+ (id)decryptCLIPSData:(id)data forModule:(id)module;
- ($019B15D08CAF2F6032DDFBB53180E398)consoleNameRegex;
- ($019B15D08CAF2F6032DDFBB53180E398)dumpStringRegex;
- (BOOL)addModuleNamed:(id)named withConstruct:(id)construct;
- (BOOL)addNewConstruct:(id)construct;
- (BOOL)factIsImportant:(id)important;
- (BOOL)initializeWorkspace;
- (BOOL)loadConstructsForModule:(id)module;
- (CLIPSShim)init;
- (CLIPSShimDelegate)delegate;
- (id)consoleBuffer;
- (id)currentModule;
- (id)currentRuleName;
- (id)deftemplatesMatchingPrefix:(id)prefix;
- (id)dumpEngineStatusWithContext:(id)context;
- (id)factDictionaryForFact:(void *)fact;
- (id)factStringForFactDictionary:(id)dictionary;
- (id)getValueForSlotNamed:(id)named fromFact:(void *)fact;
- (id)loadDataSection:(id)section;
- (id)matchFactsWithDeftemplateName:(id)name withSlotKeyValues:(id)values;
- (id)moduleNames;
- (id)moduleRulesByName:(id)name;
- (id)objectForDO:(dataObject *)o;
- (id)objectFromMultifieldArg:(void *)arg start:(int64_t)start end:(int64_t)end;
- (id)otaUpdatePlatformStringForDeviceClass:(int64_t)class;
- (id)parseCLIPSModuleInfoFromConstructs:(id)constructs;
- (id)printedFacts:(id)facts limit:(int64_t)limit;
- (id)setCurrentModule:(id)module;
- (id)slotsStringForTemplate:(id)template fromDictionary:(id)dictionary moduleName:(id)name;
- (id)stringFromConstructsLoadState:(int64_t)state;
- (id)swapConsoleBuffer:(id)buffer;
- (int)executeBatchCommand:(id)command module:(id)module;
- (int64_t)constructLoadStateForModule:(id)module;
- (int64_t)run;
- (void)_logFactsForModule:(id)module limit:(int64_t)limit when:(int64_t)when;
- (void)addCallbackInvocation:(id)invocation invocation:(id)a4;
- (void)addObjectToEnvironment:(id)environment;
- (void)assertFactString:(id)string moduleName:(id)name;
- (void)clear;
- (void)deactivateModule:(id)module;
- (void)dealloc;
- (void)deftemplateNamed:(id)named moduleName:(id)name;
- (void)executeCommand:(id)command moduleName:(id)name;
- (void)log:(id)log;
- (void)logMemoryStatistics:(id)statistics verboseOnly:(BOOL)only;
- (void)performOnFactsWithDeftemplateName:(id)name usingBlock:(id)block;
- (void)pushFocus:(id)focus;
- (void)registerCallbackFunction:(id)function selector:(SEL)selector target:(id)target;
- (void)releaseFact:(void *)fact;
- (void)removeCallbackInvocation:(id)invocation;
- (void)reportError:(id)error;
- (void)reset;
- (void)retainFact:(void *)fact;
- (void)retractFact:(void *)fact;
- (void)setCommandString:(id)string;
- (void)setConsoleNameRegex:(id *)regex;
- (void)setDumpStringRegex:(id *)regex;
- (void)setOTAUpdate:(id)update version:(id)version module:(id)module;
- (void)unloadConstructsForModule:(id)module unconditionally:(BOOL)unconditionally;
- (void)updateAllModuleInfos;
- (void)updateModuleInfoForModule:(id)module slotValues:(id)values;
@end

@implementation CLIPSShim

- ($019B15D08CAF2F6032DDFBB53180E398)dumpStringRegex
{
  v3 = *&self[5].var1;
  *&retstr->var0 = *&self[4].var3;
  *&retstr->var2 = v3;
  return self;
}

- ($019B15D08CAF2F6032DDFBB53180E398)consoleNameRegex
{
  v3 = *&self[4].var1;
  *&retstr->var0 = *&self[3].var3;
  *&retstr->var2 = v3;
  return self;
}

- (CLIPSShimDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)run
{
  v3 = EnvRun(self->_environment, 1000);
  [(CLIPSShim *)self logMemoryStatistics:@"Post-run memory usage by CLIPS" verboseOnly:1];
  return v3;
}

- (id)consoleBuffer
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [(CLIPSShim *)self swapConsoleBuffer:string];

  return v4;
}

+ (CLIPSShim)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__CLIPSShim_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_49 != -1)
  {
    dispatch_once(&sharedInstance_pred_49, block);
  }

  v2 = sharedInstance_sharedInstance_51;

  return v2;
}

uint64_t __27__CLIPSShim_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_51;
  sharedInstance_sharedInstance_51 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (_CCCryptor)cryptor
{
  result = sCryptor;
  if (!sCryptor)
  {
    cryptorRef = 0;
    if (CCCryptorCreate(1u, 0, 1u, &kSymptomsCLPCCKeyData, 0x20uLL, &kSymptomsCLPCCIVData, &cryptorRef))
    {
      return sCryptor;
    }

    else
    {
      result = cryptorRef;
      sCryptor = cryptorRef;
    }
  }

  return result;
}

- (CLIPSShim)init
{
  v18.receiver = self;
  v18.super_class = CLIPSShim;
  v2 = [(CLIPSShim *)&v18 init];
  if (v2)
  {
    if (+[CLIPSShim cryptor])
    {
      Environment = CreateEnvironment();
      *(v2 + 7) = Environment;
      SetEnvironmentContext(Environment, v2);
      v4 = objc_opt_new();
      v5 = *(v2 + 8);
      *(v2 + 8) = v4;

      v6 = objc_opt_new();
      v7 = *(v2 + 9);
      *(v2 + 9) = v6;

      v8 = objc_opt_new();
      v9 = *(v2 + 12);
      *(v2 + 12) = v8;

      regcomp((v2 + 120), "wdialog|wdisplay|werror|wwarning|wtrace|wclips|stdout|stderr", 5);
      regcomp((v2 + 152), "dump|cmd", 5);
      EnvAddRouter(*(v2 + 7), "CLIPSShim", 100, _routerQueryImpl, _routerPrintImpl, _routerGetCImpl, _routerUngetCImpl, _routerExitImpl);
      EnvAddClearFunction(*(v2 + 7), "core-clear", _clearCallback, 4294957296);
      EnvAddResetFunction(*(v2 + 7), "core-reset", _resetCallback, 4294957296);
      EnvWatch(*(v2 + 7), "all");
      v17[0] = xmmword_2847950D8;
      v17[1] = *&off_2847950E8;
      v17[2] = xmmword_2847950F8;
      *(v2 + 8) = InstallExternalAddressType(*(v2 + 7), v17);
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = *(v2 + 13);
      *(v2 + 13) = v10;

      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = *(v2 + 6);
      *(v2 + 6) = v12;

      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = *(v2 + 14);
      *(v2 + 14) = v14;

      [v2 logMemoryStatistics:@"Initial memory usage by CLIPS"];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  SetEnvironmentContext(self->_environment, 0);
  EnvDeleteRouter(self->_environment, "CLIPSShim");
  EnvRemoveClearFunction(self->_environment, "core-clear");
  EnvRemoveResetFunction(self->_environment, "core-reset");
  DestroyEnvironment(self->_environment);
  self->_environment = 0;
  MEMORY[0x2383888C0](&self->_consoleNameRegex);
  MEMORY[0x2383888C0](&self->_dumpStringRegex);
  [(NSMutableDictionary *)self->_invocationMap removeAllObjects];
  if (sCryptor)
  {
    CCCryptorRelease(sCryptor);
    sCryptor = 0;
  }

  v3.receiver = self;
  v3.super_class = CLIPSShim;
  [(CLIPSShim *)&v3 dealloc];
}

- (BOOL)initializeWorkspace
{
  v3 = MEMORY[0x277D6B500];
  v4 = +[SystemSettingsRelay defaultRelay];
  symptomEvaluatorDatabaseContainerPath = [v4 symptomEvaluatorDatabaseContainerPath];
  v6 = [v3 workspaceWithName:@"netusage" atPath:symptomEvaluatorDatabaseContainerPath objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

  v7 = [v6 copy];
  clipsWorkspace = self->_clipsWorkspace;
  self->_clipsWorkspace = v7;

  v9 = self->_clipsWorkspace;
  if (v9)
  {
    v10 = [ImpoExpoService impoExpoServiceInWorkspace:self->_clipsWorkspace andQueue:self->_queue];
    ieService = self->_ieService;
    self->_ieService = v10;
  }

  else
  {
    v12 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Unable to copy Flow Analytics workspace", v14, 2u);
    }
  }

  return v9 != 0;
}

- (void)clear
{
  EnvHalt(self->_environment);
  EnvClear(self->_environment);
  modules = self->_modules;

  [(NSMutableDictionary *)modules removeAllObjects];
}

- (void)reset
{
  EnvHalt(self->_environment);
  environment = self->_environment;

  EnvReset(environment);
}

- (void)reportError:(id)error
{
  environment = self->_environment;
  errorCopy = error;
  EnvPrintRouter(environment, "werror", [error UTF8String]);
  v7 = self->_environment;

  EnvPrintRouter(v7, "werror", "\n");
}

- (void)log:(id)log
{
  environment = self->_environment;
  logCopy = log;
  EnvPrintRouter(environment, "wtrace", [log UTF8String]);
  v7 = self->_environment;

  EnvPrintRouter(v7, "wtrace", "\n");
}

- (id)currentRuleName
{
  v15 = *MEMORY[0x277D85DE8];
  environment = self->_environment;
  v3 = *(environment[6] + 144);
  v4 = *v3;
  if (*v3)
  {
    DefruleName = EnvGetDefruleName(environment, *v3);
    if (DefruleName)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:DefruleName];
      goto LABEL_10;
    }

    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134217984;
      v14 = v4;
      v8 = "ruleName nil, rule: %p";
      v9 = v11;
      v10 = 12;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      v8 = "thisRule nil";
      v9 = v7;
      v10 = 2;
LABEL_8:
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, v8, &v13, v10);
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (void)setCommandString:(id)string
{
  stringCopy = string;
  [(CLIPSShim *)self setCommandStringLoc:0];
  [(CLIPSShim *)self setCurrentCommand:stringCopy];
}

- (id)objectFromMultifieldArg:(void *)arg start:(int64_t)start end:(int64_t)end
{
  if (end == start)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:end - start + 1];
  }

  v9 = v8;
  if (end >= start)
  {
    v10 = end - start + 1;
    v11 = arg + 16 * start + 16;
    v9 = v8;
    do
    {
      v12 = 0;
      v13 = *(v11 - 4);
      if (v13 <= 1)
      {
        if (*(v11 - 4))
        {
          if (v13 != 1)
          {
            goto LABEL_24;
          }

          v14 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*v11 + 24)];
        }

        else
        {
          v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(*v11 + 24)];
        }
      }

      else if (v13 - 2 >= 2)
      {
        if (v13 != 5)
        {
          goto LABEL_24;
        }

        v14 = *(*v11 + 24);
      }

      else
      {
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(*v11 + 24)];
      }

      v12 = v14;
      if (v14)
      {
        v15 = v8 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        if (v14)
        {
          v16 = v8 == 0;
        }

        else
        {
          v16 = 0;
        }

        if (!v16)
        {
LABEL_24:
          v17 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            *v19 = 0;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "Failure parsing arguments during function call, this is BAD", v19, 2u);
          }

          goto LABEL_27;
        }

        v12 = v14;

        v9 = v12;
      }

      else
      {
        [v8 addObject:v14];
      }

LABEL_27:

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  return v9;
}

- (id)objectForDO:(dataObject *)o
{
  v3 = 0;
  var1 = o->var1;
  if (var1 <= 1)
  {
    if (o->var1)
    {
      if (var1 != 1)
      {
        goto LABEL_16;
      }

      v5 = [MEMORY[0x277CCABB0] numberWithLongLong:*(o->var2 + 3)];
    }

    else
    {
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(o->var2 + 3)];
    }

    goto LABEL_15;
  }

  if (var1 - 2 >= 2)
  {
    if (var1 == 4)
    {
      v5 = [(CLIPSShim *)self objectFromMultifieldArg:o->var2 start:o->var3 + 1 end:o->var4 + 1];
    }

    else
    {
      if (var1 != 5)
      {
        goto LABEL_16;
      }

      v5 = *(o->var2 + 3);
    }

LABEL_15:
    v3 = v5;
    goto LABEL_16;
  }

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(o->var2 + 3)];
  if (([v3 isEqualToString:@"YES"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TRUE") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"true"))
  {

    v3 = MEMORY[0x277CBEC38];
  }

  else if (([v3 isEqualToString:@"NO"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"FALSE") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"false"))
  {

    v3 = MEMORY[0x277CBEC28];
  }

  else if (([v3 isEqualToString:@"NULL"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"nil"))
  {

    v3 = 0;
  }

LABEL_16:

  return v3;
}

- (void)registerCallbackFunction:(id)function selector:(SEL)selector target:(id)target
{
  v18 = *MEMORY[0x277D85DE8];
  functionCopy = function;
  targetCopy = target;
  v10 = [(NSMutableDictionary *)self->_invocationMap objectForKey:functionCopy];
  if (v10)
  {
    goto LABEL_4;
  }

  v11 = MEMORY[0x277CBEAE8];
  v12 = [targetCopy methodSignatureForSelector:selector];
  v10 = [v11 invocationWithMethodSignature:v12];

  if (v10)
  {
    [v10 setTarget:targetCopy];
    [v10 setSelector:selector];
    [(NSMutableDictionary *)self->_invocationMap setObject:v10 forKey:functionCopy];
LABEL_4:
    [(CLIPSShim *)self addCallbackInvocation:functionCopy invocation:v10];

    goto LABEL_5;
  }

  v13 = debuggabilityLogHandle;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = NSStringFromSelector(selector);
    v16 = 138412290;
    v17 = v14;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Failed to create NSInvocation for %@", &v16, 0xCu);
  }

  v15 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = functionCopy;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "Failure creating invocation function for %@", &v16, 0xCu);
  }

LABEL_5:
}

- (void)addCallbackInvocation:(id)invocation invocation:(id)a4
{
  invocationCopy = invocation;
  environment = self->_environment;
  invocationCopy2 = invocation;
  v8 = a4;
  LODWORD(invocationCopy) = EnvDefineFunctionWithContext(environment, [invocationCopy UTF8String], 117, delegateCallbackRouter, "delegateCallbackRouter", v8);

  if (!invocationCopy)
  {
    v9 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Error from EnvDefineFunctionWithContext", v10, 2u);
    }
  }
}

- (void)removeCallbackInvocation:(id)invocation
{
  environment = self->_environment;
  invocationCopy = invocation;
  uTF8String = [invocation UTF8String];

  UndefineFunction(environment, uTF8String);
}

- (void)addObjectToEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [(NSMutableSet *)self->_clipsHeldObjects member:environmentCopy];
  v6 = v5;
  if (environmentCopy && !v5)
  {
    [(NSMutableSet *)self->_clipsHeldObjects addObject:environmentCopy];
    v6 = environmentCopy;
  }

  v7 = EnvAddExternalAddress(self->_environment, v6, self->_strongAddressType);

  return v7;
}

- (void)logMemoryStatistics:(id)statistics verboseOnly:(BOOL)only
{
  v23 = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  EnvironmentZoneStatistics(&v12, &v11, &v10);
  if (!only)
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      memoryUsed = [(CLIPSShim *)self memoryUsed];
      *buf = 138413314;
      v14 = statisticsCopy;
      v15 = 2048;
      v16 = memoryUsed;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = v11;
      v21 = 2048;
      v22 = v10;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "%@ - memory usage by CLIPS %ld. Zone size_in_use:%zu, max_size_in_use: %zu, size_allocated: %zu", buf, 0x34u);
    }
  }
}

- (id)dumpEngineStatusWithContext:(id)context
{
  context = [MEMORY[0x277CCAB68] stringWithFormat:@"%@\nCLIPS Engine Dump:\n", context];
  v5 = MEMORY[0x277CCACA8];
  consoleBuffer = [(CLIPSShim *)self consoleBuffer];
  v7 = [v5 stringWithFormat:@"CLIPS Console:%@\n", consoleBuffer];
  [context appendString:v7];

  v8 = MEMORY[0x277CCACA8];
  v9 = [(CLIPSShim *)self printedFacts:0 limit:0];
  v10 = [v8 stringWithFormat:@"CLIPS Facts:%@\n", v9];
  [context appendString:v10];

  return context;
}

- (id)swapConsoleBuffer:(id)buffer
{
  bufferCopy = buffer;
  consoleContents = self->_consoleContents;
  v6 = consoleContents;
  v7 = self->_consoleContents;
  self->_consoleContents = bufferCopy;
  v8 = bufferCopy;

  return consoleContents;
}

- (id)moduleNames
{
  v3 = objc_opt_new();
  NextDefmodule = EnvGetNextDefmodule(self->_environment, 0);
  if (NextDefmodule)
  {
    v5 = NextDefmodule;
    do
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{EnvGetConstructNameString(self->_environment, v5)}];
      [v3 addObject:v6];

      v5 = EnvGetNextDefmodule(self->_environment, v5);
    }

    while (v5);
  }

  return v3;
}

- (void)_logFactsForModule:(id)module limit:(int64_t)limit when:(int64_t)when
{
  whenCopy = when;
  v53 = *MEMORY[0x277D85DE8];
  moduleCopy = module;
  factCount = [(CLIPSShim *)self factCount];
  if (limit < 1)
  {
    limit = 1000;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = [(CLIPSShim *)self printedFacts:moduleCopy limit:limit];
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v12 = [v11 componentsSeparatedByCharactersInSet:?];
  v40 = v11;
  v41 = moduleCopy;
  if ((whenCopy & 1) == 0)
  {
    if ((whenCopy & 4) != 0)
    {
      goto LABEL_20;
    }

    v13 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v14 = @"(Showing Only Important Facts) ";
    if ((whenCopy & 2) == 0)
    {
      v14 = &stru_2847966D8;
    }

    *buf = 134218242;
    limitCopy = factCount;
    v49 = 2112;
    v50 = v14;
    v15 = " --- NDFSM Expert System Facts (%lu)  %@---";
    v16 = v13;
    v17 = OS_LOG_TYPE_INFO;
    goto LABEL_18;
  }

  v18 = debuggabilityLogHandle;
  v19 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT);
  if (limit >= factCount)
  {
    if (v19)
    {
      v22 = @"(Showing Only Important Facts) ";
      if ((whenCopy & 2) == 0)
      {
        v22 = &stru_2847966D8;
      }

      *buf = 134218242;
      limitCopy = factCount;
      v49 = 2112;
      v50 = v22;
      v15 = " --- NDFSM Expert System Facts (%lu) %@---";
      v16 = v18;
      v17 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
      v21 = 22;
LABEL_19:
      _os_log_impl(&dword_23255B000, v16, v17, v15, buf, v21);
    }
  }

  else if (v19)
  {
    v20 = @"(Showing Only Important Facts) ";
    *buf = 134218498;
    limitCopy = limit;
    if ((whenCopy & 2) == 0)
    {
      v20 = &stru_2847966D8;
    }

    v49 = 2048;
    v50 = factCount;
    v51 = 2112;
    v52 = v20;
    v15 = " --- NDFSM Expert System Facts (%lu of %lu) %@---";
    v16 = v18;
    v17 = OS_LOG_TYPE_DEFAULT;
    v21 = 32;
    goto LABEL_19;
  }

LABEL_20:
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v23 = v12;
  v24 = [v23 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v24)
  {
    goto LABEL_37;
  }

  v25 = v24;
  v26 = *v43;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v43 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v42 + 1) + 8 * i);
      if ([v28 length] && ((whenCopy & 2) == 0 || -[CLIPSShim factIsImportant:](self, "factIsImportant:", v28)))
      {
        if (whenCopy)
        {
          v32 = debuggabilityLogHandle;
          if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          *buf = 138412290;
          limitCopy = v28;
          v30 = v32;
          v31 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_34;
        }

        if ((whenCopy & 4) == 0)
        {
          v29 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            limitCopy = v28;
            v30 = v29;
            v31 = OS_LOG_TYPE_INFO;
LABEL_34:
            _os_log_impl(&dword_23255B000, v30, v31, "NDFSM ES: %@", buf, 0xCu);
            continue;
          }
        }
      }
    }

    v25 = [v23 countByEnumeratingWithState:&v42 objects:v46 count:16];
  }

  while (v25);
LABEL_37:

  objc_autoreleasePoolPop(v10);
  if (whenCopy)
  {
    v38 = debuggabilityLogHandle;
    v34 = v40;
    v33 = v41;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v36 = v38;
      v37 = OS_LOG_TYPE_DEFAULT;
LABEL_43:
      _os_log_impl(&dword_23255B000, v36, v37, " --- NDFSM Expert System Facts End ---", buf, 2u);
    }
  }

  else
  {
    v34 = v40;
    v33 = v41;
    if ((whenCopy & 4) == 0)
    {
      v35 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v36 = v35;
        v37 = OS_LOG_TYPE_INFO;
        goto LABEL_43;
      }
    }
  }
}

- (BOOL)factIsImportant:(id)important
{
  importantCopy = important;
  if (objc_msgSend(importantCopy, "containsString:", @"(Symptom (")) & 1 != 0 || (objc_msgSend(importantCopy, "containsString:", @"(AnalyticsEvent_") & 1) != 0 || (objc_msgSend(importantCopy, "containsString:", @"(WaitingFor") & 1) != 0 || (objc_msgSend(importantCopy, "containsString:", @"ProbeStatus"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [importantCopy containsString:@"AllProbesStatus"];
  }

  return v4;
}

- (id)printedFacts:(id)facts limit:(int64_t)limit
{
  factsCopy = facts;
  v7 = factsCopy;
  if (factsCopy)
  {
    Defmodule = EnvFindDefmodule(self->_environment, [factsCopy UTF8String]);
    if (!Defmodule)
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    Defmodule = 0;
  }

  [(NSMutableString *)self->_dumpedString setString:&stru_2847966D8];
  EnvFacts(self->_environment, "dump", Defmodule, -1, -1, limit);
  v9 = self->_dumpedString;
  v10 = objc_opt_new();
  dumpedString = self->_dumpedString;
  self->_dumpedString = v10;

LABEL_6:

  return v9;
}

- (id)moduleRulesByName:(id)name
{
  environment = self->_environment;
  nameCopy = name;
  Defmodule = EnvFindDefmodule(environment, [name UTF8String]);
  if (Defmodule)
  {
    v8 = Defmodule;
    v9 = objc_opt_new();
    CurrentModule = EnvGetCurrentModule(self->_environment);
    EnvSetCurrentModule(self->_environment, v8);
    NextDefrule = EnvGetNextDefrule(self->_environment, 0);
    if (NextDefrule)
    {
      v12 = NextDefrule;
      do
      {
        DefruleName = EnvGetDefruleName(self->_environment, v12);
        DefrulePPForm = EnvGetDefrulePPForm();
        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:DefruleName];
        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:DefrulePPForm];
        [v9 setObject:v16 forKeyedSubscript:v15];

        v12 = EnvGetNextDefrule(self->_environment, v12);
      }

      while (v12);
    }

    EnvSetCurrentModule(self->_environment, CurrentModule);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)addModuleNamed:(id)named withConstruct:(id)construct
{
  v13 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  constructCopy = construct;
  if (EnvFindDefmodule(self->_environment, [namedCopy UTF8String]))
  {
    v8 = debuggabilityLogHandle;
    v9 = 1;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = namedCopy;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "The %@ module already exists", &v11, 0xCu);
    }
  }

  else
  {
    v9 = [(CLIPSShim *)self addNewConstruct:constructCopy];
  }

  return v9;
}

- (BOOL)addNewConstruct:(id)construct
{
  environment = self->_environment;
  constructCopy = construct;
  return EnvBuild(environment, [construct UTF8String]) != 0;
}

- (BOOL)loadConstructsForModule:(id)module
{
  v125 = *MEMORY[0x277D85DE8];
  v114 = 0;
  v115 = &v114;
  v116 = 0x2020000000;
  v117 = 0;
  moduleCopy = module;
  v94 = [(NSMutableDictionary *)self->_modules objectForKeyedSubscript:?];
  if (!v94)
  {
    v94 = [MEMORY[0x277CBEB38] dictionaryWithObject:&unk_2847EFDB8 forKey:@"LoadState"];
    [(NSMutableDictionary *)self->_modules setObject:v94 forKeyedSubscript:moduleCopy];
  }

  v3 = [v94 objectForKeyedSubscript:@"LoadState"];
  integerValue = [v3 integerValue];

  LOBYTE(v5) = (integerValue - 1) < 2;
  *(v115 + 24) = v5;
  if (integerValue == 3 || integerValue == 0)
  {
    context = objc_autoreleasePoolPush();
    v110 = 0;
    v111 = &v110;
    v112 = 0x2020000000;
    v113 = 0;
    v88 = [CLIPSShim dataSectionNameForModule:moduleCopy];
    if ([v88 length])
    {
      v92 = objc_msgSend_loadDataSection_(self);
      if ([v92 length])
      {
        v7 = [(CLIPSShim *)self parseCLIPSModuleInfoFromConstructs:v92];
        if (!v7)
        {
          v17 = debuggabilityLogHandle;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v20 = [v92 substringToIndex:50];
            *buf = 138412290;
            v121 = v20;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "BAD BUILT-IN %@", buf, 0xCu);
          }

          v5 = 0;
          goto LABEL_125;
        }

        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v106 objects:v124 count:16];
        if (v9)
        {
          v10 = *v107;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v107 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v106 + 1) + 8 * i);
              v13 = [v12 objectForKeyedSubscript:@"Module"];
              v14 = [v13 isEqualToString:moduleCopy];

              if (v14)
              {
                v17 = [v12 objectForKeyedSubscript:@"Version"];
                v19 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v17, @"Version", 0}];
                [v94 setObject:v19 forKeyedSubscript:@"BuiltIn"];
                *(v111 + 24) = 1;

                goto LABEL_26;
              }

              v15 = debuggabilityLogHandle;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                v16 = [v12 objectForKeyedSubscript:@"Module"];
                *buf = 138412546;
                v121 = v16;
                v122 = 2112;
                v123 = moduleCopy;
                _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "The module name (%@) doesn't match %@", buf, 0x16u);
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v106 objects:v124 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }

          v17 = 0;
LABEL_26:

LABEL_32:
          moduleCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"CLIPSOTAUpdate[%@]", moduleCopy];
          v21 = MEMORY[0x277CBEB38];
          v22 = [(NSMutableDictionary *)self->_pendingOTAUpdates objectForKeyedSubscript:moduleCopy];
          v23 = [v21 dictionaryWithDictionary:v22];

          v24 = [v23 objectForKeyedSubscript:@"Version"];
          v90 = [v23 objectForKeyedSubscript:@"OTASerialNumber"];
          v25 = debuggabilityLogHandle;
          v26 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
          if (!v24)
          {
            if (v26)
            {
              *buf = 138412290;
              v121 = moduleCopy;
              _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "No pending OTA update for %@", buf, 0xCu);
            }

            goto LABEL_86;
          }

          if (v26)
          {
            *buf = 138412546;
            v121 = v24;
            v122 = 2112;
            v123 = moduleCopy;
            _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "There is a Pending OTA Update (version %@) for %@", buf, 0x16u);
          }

          if (v17)
          {
            integerValue2 = [v24 integerValue];
            if (integerValue2 != [v17 integerValue])
            {
              v32 = debuggabilityLogHandle;
              if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v121 = v24;
                v122 = 2112;
                v123 = v17;
                _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_INFO, "The Pending OTA Update (%@) is NOT the same as the built in version (%@)", buf, 0x16u);
              }

              v31 = 0;
LABEL_82:
              [(NSMutableDictionary *)self->_pendingOTAUpdates removeObjectForKey:moduleCopy];
              if (v31)
              {
                v51 = @"<UNKNOWN>";
                if (v90)
                {
                  v51 = v90;
                }

                v52 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"Unloaded (OTA)", @"location", v24, @"baseVersion", v51, @"otaSerialNumber", 0}];
                [(CLIPSShim *)self updateModuleInfoForModule:moduleCopy slotValues:v52];
                goto LABEL_118;
              }

LABEL_86:
              v53 = [(ImpoExpoService *)self->_ieService listItemsNameWithPrefix:moduleCopy sortDescriptor:0];
              if ([v53 count] != 1)
              {
                if ([v53 count] < 2)
                {
                  v52 = 0;
                  v63 = 0;
                  v55 = 0;
LABEL_117:

LABEL_118:
                  if (*(v111 + 24) == 1)
                  {
                    if ([(CLIPSShim *)self executeBatchCommand:v92 module:moduleCopy])
                    {
                      [v94 setObject:&unk_2847EFDE8 forKeyedSubscript:@"LoadState"];
                      *(v115 + 24) = 1;
                      if (v17)
                      {
                        v118[0] = @"baseVersion";
                        v118[1] = @"location";
                        v119[0] = v17;
                        v119[1] = @"Built-in";
                        v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:2];
                        [(CLIPSShim *)self updateModuleInfoForModule:moduleCopy slotValues:v80];
                      }
                    }

                    else
                    {
                      v81 = debuggabilityLogHandle;
                      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v121 = moduleCopy;
                        _os_log_impl(&dword_23255B000, v81, OS_LOG_TYPE_ERROR, "=== FAILURE loading %@ embedded constructs ===", buf, 0xCu);
                      }
                    }
                  }

                  v5 = 1;
LABEL_125:

                  _Block_object_dispose(&v110, 8);
                  objc_autoreleasePoolPop(context);
                  if (v5)
                  {
                    LOBYTE(v5) = *(v115 + 24);
                  }

                  goto LABEL_127;
                }

                v64 = debuggabilityLogHandle;
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  v65 = [v53 count];
                  *buf = 134218242;
                  v121 = v65;
                  v122 = 2112;
                  v123 = moduleCopy;
                  _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_ERROR, "There are too many (%lu) OTA Updates for %@ in the database. Deleting all of them.", buf, 0x16u);
                }

                ieService = self->_ieService;
                v62 = [MEMORY[0x277CBEB98] setWithArray:v53];
                [(ImpoExpoService *)ieService deleteItemsWithNames:v62];
                v52 = 0;
                v63 = 0;
                v55 = 0;
LABEL_115:

                goto LABEL_117;
              }

              v54 = [v53 objectAtIndexedSubscript:0];
              v55 = v54;
              if (v54)
              {
                v56 = objc_msgSend(v54, "rangeOfString:", @"(");
                v58 = v57;
                v59 = [v55 rangeOfString:@""]);
                if (v56 == 0x7FFFFFFFFFFFFFFFLL || (v67 = v59, v56 != [moduleCopy length]) || v67 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v60 = debuggabilityLogHandle;
                  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v121 = v55;
                    _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_ERROR, "Couldn't find the version ending delimiter (%@)", buf, 0xCu);
                  }

                  v61 = self->_ieService;
                  v62 = [MEMORY[0x277CBEB98] setWithObject:v55];
                  [(ImpoExpoService *)v61 deleteItemsWithNames:v62];
                  v52 = 0;
                  v63 = 0;
                  goto LABEL_115;
                }

                v62 = [v55 substringWithRange:{v56 + v58, v67 - (v56 + v58)}];
                if (![v62 length])
                {
                  v70 = debuggabilityLogHandle;
                  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v121 = v55;
                    _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_ERROR, "Couldn't parse the version (%@)", buf, 0xCu);
                  }

                  goto LABEL_108;
                }

                if (v62 && v17)
                {
                  integerValue3 = [v62 integerValue];
                  if (integerValue3 != [v17 integerValue])
                  {
                    v69 = debuggabilityLogHandle;
                    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v121 = v62;
                      v122 = 2112;
                      v123 = v17;
                      _os_log_impl(&dword_23255B000, v69, OS_LOG_TYPE_INFO, "The database version (%@) does not match the built-in version (%@). The database version will be deleted", buf, 0x16u);
                    }

LABEL_108:
                    v71 = self->_ieService;
                    v72 = [MEMORY[0x277CBEB98] setWithObject:v55];
                    [(ImpoExpoService *)v71 deleteItemsWithNames:v72];
                    v52 = 0;
                    v63 = 0;
LABEL_114:

                    goto LABEL_115;
                  }

LABEL_110:
                  v73 = [v55 rangeOfString:@"{SN:"];
                  v75 = v74;
                  v76 = [v55 rangeOfString:@"}"];
                  v77 = 0;
                  if (v73 != 0x7FFFFFFFFFFFFFFFLL && v76 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v77 = [v55 substringWithRange:{v73 + v75, v76 - (v73 + v75)}];
                  }

                  v87 = self->_ieService;
                  v105 = 0;
                  v96[0] = MEMORY[0x277D85DD0];
                  v78 = v77;
                  v96[1] = 3221225472;
                  v96[2] = __37__CLIPSShim_loadConstructsForModule___block_invoke;
                  v96[3] = &unk_2789903B8;
                  v97 = moduleCopy;
                  v98 = v92;
                  selfCopy = self;
                  v103 = &v110;
                  v100 = v94;
                  v52 = v62;
                  v101 = v52;
                  v63 = v78;
                  v102 = v63;
                  v104 = &v114;
                  v79 = [(ImpoExpoService *)v87 exportAndUnarchiveItemUnderName:v55 lastUpdated:&v105 verificationBlock:v96];
                  v62 = v105;

                  v72 = v97;
                  goto LABEL_114;
                }

                if (v62)
                {
                  goto LABEL_110;
                }
              }

              v52 = 0;
              v63 = 0;
              goto LABEL_117;
            }
          }

          v28 = [v23 objectForKeyedSubscript:@"Constructs"];
          v29 = [CLIPSShim decodeAndInflateCLIPSString:v28];
          if (!v29 || ([CLIPSShim decryptCLIPSData:v29 forModule:moduleCopy], (v86 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v31 = 0;
LABEL_81:

            goto LABEL_82;
          }

          if (v92 && ([v86 isEqualToString:v92] & 1) != 0)
          {
            v30 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, "No point in loading OTA constructs that match built-in constructs", buf, 2u);
            }

            v31 = 0;
            goto LABEL_80;
          }

          v85 = [(CLIPSShim *)self parseCLIPSModuleInfoFromConstructs:v86];
          v33 = [v85 count];
          if (v33)
          {
            v34 = [v85 objectAtIndexedSubscript:0];
            v35 = [v34 objectForKeyedSubscript:@"OTASerialNumber"];

            v36 = [v34 objectForKeyedSubscript:@"Platforms"];

            v90 = v35;
            v33 = v36;
          }

          v84 = v33;
          if ([v33 count])
          {
            v37 = +[SystemProperties sharedInstance];
            v38 = -[CLIPSShim otaUpdatePlatformStringForDeviceClass:](self, "otaUpdatePlatformStringForDeviceClass:", [v37 deviceClass]);

            if (([v84 containsObject:v38] & 1) == 0)
            {
              v40 = debuggabilityLogHandle;
              if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v121 = v84;
                v122 = 2112;
                v123 = v38;
                _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_ERROR, "The constructs preamble's platforms %@ doesn't match this device type %@", buf, 0x16u);
              }

              goto LABEL_62;
            }
          }

          if ([(CLIPSShim *)self executeBatchCommand:v86 module:moduleCopy])
          {
            *(v111 + 24) = 0;
            gzipDeflate = [v29 gzipDeflate];
            if ([gzipDeflate length])
            {
              [v23 setObject:gzipDeflate forKey:@"Constructs"];
              if ([(__CFString *)v90 length])
              {
                [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@){SN:%@}", moduleCopy, v24, v90];
              }

              else
              {
                [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@)", moduleCopy, v24];
              }
              v83 = ;
              v44 = [(ImpoExpoService *)self->_ieService listItemsNameWithPrefix:moduleCopy sortDescriptor:0];
              if ([v44 count])
              {
                v45 = self->_ieService;
                v46 = [MEMORY[0x277CBEB98] setWithArray:v44];
                [(ImpoExpoService *)v45 deleteItemsWithNames:v46];
              }

              v47 = [(ImpoExpoService *)self->_ieService archiveAndImportItemUnderName:v83 item:v23];
              *(v115 + 24) = v47;
              if (v47)
              {
                [v94 setObject:&unk_2847EFDD0 forKeyedSubscript:@"LoadState"];
                v48 = [v94 objectForKeyedSubscript:@"Database"];
                v49 = v48;
                if (v48)
                {
                  [v48 setObject:v24 forKey:@"Version"];
                }

                else
                {
                  v49 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v24, @"Version", 0}];
                  [v94 setObject:v49 forKeyedSubscript:@"Database"];
                }
              }

              else
              {
                v50 = debuggabilityLogHandle;
                if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_ERROR, "Failed to save the CLIPSOTAUpdate to the ImpoExpo", buf, 2u);
                }
              }
            }

            else
            {
              v43 = debuggabilityLogHandle;
              if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_ERROR, "Unable to gzipdeflate Pending OTA Update", buf, 2u);
              }
            }

            v41 = v85;
            v31 = 1;
LABEL_79:

LABEL_80:
            goto LABEL_81;
          }

LABEL_62:
          v41 = v85;
          v42 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, "The pending OTA Update could not be loaded for some reason", buf, 2u);
          }

          v31 = 0;
          goto LABEL_79;
        }
      }

      v17 = 0;
      goto LABEL_32;
    }

    v18 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "Don't have a built-in version. This could be ok", buf, 2u);
    }

    v17 = 0;
    v92 = 0;
    goto LABEL_32;
  }

LABEL_127:
  _Block_object_dispose(&v114, 8);

  return v5 & 1;
}

uint64_t __37__CLIPSShim_loadConstructsForModule___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"Constructs"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v4 length])
    {
      v15 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "These constructs are blank!", buf, 2u);
      }

      v9 = 0;
      v5 = v4;
      goto LABEL_14;
    }

    v5 = [v4 gzipInflate];

    v6 = [v5 length];
    if (v6 <= [@";;[{Module:" length])
    {
      v17 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        *buf = 138412290;
        v32 = v18;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "gzipInflate of the %@ OTA Update from the database failed", buf, 0xCu);
      }

      v9 = 0;
      goto LABEL_14;
    }

    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v5 length:"bytes") encoding:{objc_msgSend(@";;[{Module:", "length"), 1}];
    if ([v7 isEqualToString:@";;[{Module:"])
    {
      v8 = debuggabilityLogHandle;
      v9 = 0;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 138412290;
        v32 = v10;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "The %@ constructs in the database are unencrypted. Tossing them.", buf, 0xCu);
        v9 = 0;
      }

      goto LABEL_38;
    }

    v19 = +[CLIPSShim createDecryptedCLPData:length:](CLIPSShim, "createDecryptedCLPData:length:", [v5 bytes], objc_msgSend(v5, "length"));
    if (![v19 length])
    {
      v21 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 32);
        *buf = 138412290;
        v32 = v22;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Unable to decrypt the %@ constructs in the database", buf, 0xCu);
      }

      v9 = 0;
      goto LABEL_37;
    }

    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v19 length:"bytes") encoding:{objc_msgSend(v19, "length"), 1}];
    if (([v20 isEqualToString:*(a1 + 40)] & 1) == 0)
    {
      if ([*(a1 + 48) executeBatchCommand:v20 module:*(a1 + 32)])
      {
        *(*(*(a1 + 80) + 8) + 24) = 0;
        [*(a1 + 56) setObject:&unk_2847EFDD0 forKeyedSubscript:@"LoadState"];
        v23 = [*(a1 + 56) objectForKeyedSubscript:@"Database"];
        if (v23)
        {
          v24 = v23;
          [v23 setObject:*(a1 + 64) forKey:@"Version"];
        }

        else
        {
          v24 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*(a1 + 64), @"Version", 0}];
          [*(a1 + 56) setObject:v24 forKeyedSubscript:@"Database"];
        }

        v28 = *(a1 + 64);
        if (v28)
        {
          v29 = *(a1 + 72);
          if (!v29)
          {
            v29 = @"<UNKNOWN>";
          }

          v30 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"Database (OTA)", @"location", v28, @"baseVersion", v29, @"otaSerialNumber", 0}];
          [*(a1 + 48) updateModuleInfoForModule:*(a1 + 32) slotValues:v30];
        }

        *(*(*(a1 + 88) + 8) + 24) = 1;
        v9 = *(*(*(a1 + 88) + 8) + 24);

        goto LABEL_36;
      }

      v25 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 32);
        v27 = *(a1 + 64);
        *buf = 138412546;
        v32 = v26;
        v33 = 2112;
        v34 = v27;
        _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "=== FAILURE loading %@ constructs with version (%@) from ImpoExpo ===", buf, 0x16u);
      }
    }

    v9 = 0;
LABEL_36:

LABEL_37:
LABEL_38:

LABEL_14:
    goto LABEL_15;
  }

  v11 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412290;
    v32 = v14;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "the CLIPSOTAUpdate in the database is not a dictionary! (%@)", buf, 0xCu);
  }

  v9 = 0;
LABEL_15:

  return v9 & 1;
}

- (id)parseCLIPSModuleInfoFromConstructs:(id)constructs
{
  constructsCopy = constructs;
  v4 = [constructsCopy rangeOfString:@";;"];
  v6 = v5;
  v7 = [constructsCopy rangeOfString:@"\n"];
  v8 = 0;
  if (!v4 && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [constructsCopy substringWithRange:{v6, v7 - 1}];
    v10 = [v9 dataUsingEncoding:1];
    v12 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:&v12];
  }

  return v8;
}

+ (id)decodeAndInflateCLIPSString:(id)string
{
  v3 = MEMORY[0x277CBEA90];
  stringCopy = string;
  v5 = [[v3 alloc] initWithBase64EncodedString:stringCopy options:1];

  if (v5)
  {
    gzipInflate = [v5 gzipInflate];
    if (gzipInflate)
    {
      goto LABEL_9;
    }

    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v8 = "Unable to gzip inflate the data";
      v9 = &v12;
LABEL_7:
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    }
  }

  else
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v8 = "Unable to base64decode the data";
      v9 = &v11;
      goto LABEL_7;
    }
  }

  gzipInflate = 0;
LABEL_9:

  return gzipInflate;
}

+ (id)decryptCLIPSData:(id)data forModule:(id)module
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  moduleCopy = module;
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:1];
  if ([v7 hasPrefix:@";;[{Module:"])
  {
    v8 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = moduleCopy;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "This OTA %@ module constructs is unencrypted!. Ignoring", &v16, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v10 = +[CLIPSShim createDecryptedCLPData:length:](CLIPSShim, "createDecryptedCLPData:length:", [dataCopy bytes], objc_msgSend(dataCopy, "length"));
    if ([v10 length])
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:1];
      v12 = v11;
      if (v11 && [v11 hasPrefix:@";;[{Module:"])
      {
        v9 = v12;
      }

      else
      {
        v13 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          v16 = 138412290;
          v17 = moduleCopy;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "%@ OTA module constructs is corrupted.", &v16, 0xCu);
        }

        v9 = 0;
      }
    }

    else
    {
      v14 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = moduleCopy;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "%@ OTA module couldn't be decrypted", &v16, 0xCu);
      }

      v9 = 0;
    }
  }

  return v9;
}

+ (id)dataSectionNameForModule:(id)module
{
  v9 = *MEMORY[0x277D85DE8];
  moduleCopy = module;
  if ([moduleCopy isEqualToString:@"Baseband"])
  {
    v4 = @"baseband_clp";
  }

  else if ([moduleCopy isEqualToString:@"BasebandMAV"])
  {
    v4 = @"bb_MAV_clp";
  }

  else if ([moduleCopy isEqualToString:@"BasebandINT"])
  {
    v4 = @"bb_INT_clp";
  }

  else if ([moduleCopy isEqualToString:@"BasebandDAL"])
  {
    v4 = @"bb_DAL_clp";
  }

  else if ([moduleCopy isEqualToString:@"COMMON"])
  {
    v4 = @"default_clp";
  }

  else if ([moduleCopy isEqualToString:@"Symptoms"])
  {
    v4 = @"symptoms_clp";
  }

  else if ([moduleCopy isEqualToString:@"Networking"])
  {
    v4 = @"network_clp";
  }

  else if ([moduleCopy isEqualToString:@"Modules"])
  {
    v4 = @"modules_clp";
  }

  else
  {
    v5 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = moduleCopy;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Unknown module name: %@", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (id)stringFromConstructsLoadState:(int64_t)state
{
  if (state >= 4)
  {
    state = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown load state (%ld)", state];
  }

  else
  {
    state = off_278990400[state];
  }

  return state;
}

- (id)otaUpdatePlatformStringForDeviceClass:(int64_t)class
{
  if (class > 7)
  {
    return 0;
  }

  else
  {
    return off_278990420[class];
  }
}

- (int64_t)constructLoadStateForModule:(id)module
{
  v3 = [(NSMutableDictionary *)self->_modules objectForKeyedSubscript:module];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"LoadState"];
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)updateAllModuleInfos
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_modules;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v26;
    *&v4 = 138412546;
    v23 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        v9 = v6;
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v6 = [(NSMutableDictionary *)self->_modules objectForKeyedSubscript:v10, v23];

        if (v6)
        {
          v11 = [v6 objectForKeyedSubscript:@"BuiltIn"];
          v12 = [v11 objectForKeyedSubscript:@"Version"];
          if (v12)
          {
            v13 = [v6 objectForKeyedSubscript:@"LoadState"];
            integerValue = [v13 integerValue];

            if (integerValue == 1)
            {
              v15 = @"Built-in";
            }

            else if (integerValue == 2)
            {
              v15 = @"Database";
            }

            else
            {
              v18 = debuggabilityLogHandle;
              v19 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
              v15 = @"Unloaded";
              if (v19)
              {
                v20 = v18;
                v21 = [(CLIPSShim *)self stringFromConstructsLoadState:integerValue];
                *buf = v23;
                v32 = v10;
                v33 = 2112;
                v34 = v21;
                _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "Load state for %@ is %@", buf, 0x16u);

                v15 = @"Unloaded";
              }
            }

            v29[0] = @"baseVersion";
            v29[1] = @"location";
            v30[0] = v12;
            v30[1] = v15;
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
            [(CLIPSShim *)self updateModuleInfoForModule:v10 slotValues:v22];
          }

          else
          {
            v17 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = v23;
              v32 = v6;
              v33 = 2112;
              v34 = v10;
              _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "No version in %@ for %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v16 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v10;
            _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "No Module Dict for %@", buf, 0xCu);
          }
        }
      }

      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }
}

- (void)updateModuleInfoForModule:(id)module slotValues:(id)values
{
  v50 = *MEMORY[0x277D85DE8];
  moduleCopy = module;
  valuesCopy = values;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObject:moduleCopy forKey:@"name"];
  v9 = [(CLIPSShim *)self matchFactsWithDeftemplateName:@"ModuleInfo" withSlotKeyValues:v8];

  if ([v9 count] == 1)
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    pointerValue = [(__CFString *)v10 pointerValue];
    if (!pointerValue)
    {
      v32 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v47 = v10;
        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "Couldn't get fact pointer %p", buf, 0xCu);
      }

      goto LABEL_29;
    }

    v12 = pointerValue;
    v13 = [(CLIPSShim *)self factDictionaryForFact:pointerValue];
    v14 = [v13 objectForKeyedSubscript:@"DeftemplateSlots"];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = valuesCopy;
    v16 = [(__CFString *)v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v16)
    {
      v17 = v16;
      v34 = v12;
      selfCopy = self;
      v36 = v13;
      v37 = v10;
      v38 = v9;
      v39 = valuesCopy;
      v40 = moduleCopy;
      v18 = 0;
      v19 = 0;
      v20 = *v42;
      do
      {
        v21 = 0;
        v22 = v18;
        do
        {
          if (*v42 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v23 = *(*(&v41 + 1) + 8 * v21);
          v18 = [(__CFString *)v15 objectForKeyedSubscript:v23];

          v24 = [v14 objectForKeyedSubscript:v23];
          v25 = [v24 isEqual:v18];

          if ((v25 & 1) == 0)
          {
            [v14 setObject:v18 forKeyedSubscript:v23];
            v19 = 1;
          }

          ++v21;
          v22 = v18;
        }

        while (v17 != v21);
        v17 = [(__CFString *)v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v17);

      v10 = v37;
      if ((v19 & 1) == 0)
      {
        valuesCopy = v39;
        moduleCopy = v40;
        v9 = v38;
        v13 = v36;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      [(CLIPSShim *)selfCopy retractFact:v34];
      [(CLIPSShim *)selfCopy releaseFact:v34];
      v13 = v36;
      v26 = [(CLIPSShim *)selfCopy factStringForFactDictionary:v36];
      v27 = [(CLIPSShim *)selfCopy assertFactString:v26 moduleName:@"Modules"];
      moduleCopy = v40;
      if (v27)
      {
        [(CLIPSShim *)selfCopy retainFact:v27];
        v15 = v26;
        valuesCopy = v39;
      }

      else
      {
        v33 = debuggabilityLogHandle;
        valuesCopy = v39;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v47 = v15;
          _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "Could not assert module info fact with %@", buf, 0xCu);
        }

        v15 = v26;
      }

      v9 = v38;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_28;
  }

  v28 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v29 = v28;
    v30 = [v9 count];
    v31 = @"have too many ";
    if (!v30)
    {
      v31 = @"don't yet have a ";
    }

    *buf = 138412546;
    v47 = v31;
    v48 = 2112;
    v49 = moduleCopy;
    _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_INFO, "We %@ Module Info for %@", buf, 0x16u);
  }

LABEL_30:
}

- (id)factDictionaryForFact:(void *)fact
{
  v33 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (fact)
  {
    v6 = EnvFactDeftemplate(self->_environment, fact);
    if (v6)
    {
      v7 = v6;
      v8 = EnvDefruleModule(self->_environment, v6);
      if (v8)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
        [dictionary setObject:v9 forKeyedSubscript:@"DeftemplateModule"];
      }

      DefruleName = EnvGetDefruleName(self->_environment, v7);
      if (DefruleName)
      {
        v11 = DefruleName;
        if (*DefruleName)
        {
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DefruleName];
          [dictionary setObject:v12 forKeyedSubscript:@"DeftemplateName"];
        }
      }

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:dictionary2 forKeyedSubscript:@"DeftemplateSlots"];
      v30 = 0u;
      v31 = 0u;
      *buf = 0u;
      EnvFactSlotNames(self->_environment, fact, buf);
      v14 = [(CLIPSShim *)self objectForDO:buf];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v24 = dictionary;
        v17 = 0;
        v18 = *v26;
        do
        {
          v19 = 0;
          v20 = v17;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v21 = *(*(&v25 + 1) + 8 * v19);
            v17 = [(CLIPSShim *)self getValueForSlotNamed:v21 fromFact:fact];

            if (v17)
            {
              [dictionary2 setObject:v17 forKeyedSubscript:v21];
            }

            ++v19;
            v20 = v17;
          }

          while (v16 != v19);
          v16 = [v14 countByEnumeratingWithState:&v25 objects:v32 count:16];
        }

        while (v16);

        dictionary = v24;
      }
    }
  }

  else
  {
    v22 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "factDictionaryForFact(). fact was nil", buf, 2u);
    }
  }

  return dictionary;
}

- (id)factStringForFactDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"DeftemplateModule"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"DeftemplateName"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"DeftemplateSlots"];

  v8 = [(CLIPSShim *)self slotsStringForTemplate:v6 fromDictionary:v7 moduleName:v5];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@%@)", v6, v8];

  return v9;
}

- (void)unloadConstructsForModule:(id)module unconditionally:(BOOL)unconditionally
{
  moduleCopy = module;
  v6 = [(NSMutableDictionary *)self->_modules objectForKeyedSubscript:?];
  v7 = [v6 objectForKeyedSubscript:@"LoadState"];
  integerValue = [v7 integerValue];

  if (unconditionally || (integerValue - 1) <= 1)
  {
    moduleCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Pre-unload %@ memory usage by CLIPS", moduleCopy];
    [(CLIPSShim *)self logMemoryStatistics:moduleCopy verboseOnly:1];

    environment = self->_environment;
    v11 = moduleCopy;
    Defmodule = EnvFindDefmodule(environment, [moduleCopy UTF8String]);
    if (Defmodule)
    {
      v13 = Defmodule;
      CurrentModule = EnvGetCurrentModule(self->_environment);
      EnvSetCurrentModule(self->_environment, v13);
      NextDefrule = EnvGetNextDefrule(self->_environment, 0);
      if (NextDefrule)
      {
        v16 = NextDefrule;
        do
        {
          EnvUndefrule(self->_environment, v16);
          v16 = EnvGetNextDefrule(self->_environment, v16);
        }

        while (v16);
      }

      NextDeffunction = EnvGetNextDeffunction(self->_environment, 0);
      if (NextDeffunction)
      {
        v18 = NextDeffunction;
        do
        {
          EnvUndeffunction(self->_environment, v18);
          v18 = EnvGetNextDeffunction(self->_environment, v18);
        }

        while (v18);
      }

      NextDeffacts = EnvGetNextDeffacts(self->_environment, 0);
      if (NextDeffacts)
      {
        v20 = NextDeffacts;
        do
        {
          EnvUndeffacts(self->_environment, v20);
          v20 = EnvGetNextDeffacts(self->_environment, v20);
        }

        while (v20);
      }

      NextDeftemplate = EnvGetNextDeftemplate(self->_environment, 0);
      if (NextDeftemplate)
      {
        v22 = NextDeftemplate;
        do
        {
          EnvUndeftemplate(self->_environment, v22);
          v22 = EnvGetNextDeftemplate(self->_environment, v22);
        }

        while (v22);
      }

      NextDefglobal = EnvGetNextDefglobal(self->_environment, 0);
      if (NextDefglobal)
      {
        v24 = NextDefglobal;
        do
        {
          EnvUndefglobal(self->_environment, v24);
          v24 = EnvGetNextDefglobal(self->_environment, v24);
        }

        while (v24);
      }

      EnvSetCurrentModule(self->_environment, CurrentModule);
      [v6 setObject:&unk_2847EFDB8 forKeyedSubscript:@"LoadState"];
      [(CLIPSShim *)self releaseAllFreeMemory];
      moduleCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Post-unload %@ memory usage by CLIPS", moduleCopy];
      [(CLIPSShim *)self logMemoryStatistics:moduleCopy2 verboseOnly:1];
    }
  }
}

+ (id)createDecryptedCLPData:(const void *)data length:(unint64_t)length
{
  v31 = *MEMORY[0x277D85DE8];
  if (!data || !length)
  {
    v13 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = data;
      v29 = 2048;
      lengthCopy = length;
      v10 = "Decrypting bad parameters (%p/%ld)";
      v11 = v13;
      v12 = 22;
      goto LABEL_8;
    }

LABEL_21:
    v24 = 0;
    goto LABEL_22;
  }

  v6 = +[CLIPSShim cryptor];
  v7 = CCCryptorReset(v6, &kSymptomsCLPCCIVData);
  if (v7)
  {
    v8 = v7;
    v9 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      v10 = "Decrypting - CCCryptorReset() failed: %d";
      v11 = v9;
      v12 = 8;
LABEL_8:
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  OutputLength = CCCryptorGetOutputLength(v6, length, 1);
  *buf = 0;
  dataOutMoved = 0;
  if (!OutputLength)
  {
    EnvironmentZoneMalloc_cold_2(v27);
  }

  v15 = OutputLength;
  v16 = malloc_type_malloc(OutputLength, 0x40BC3867uLL);
  if (!v16)
  {
    [NetworkAnalyticsEngine _createJournalRecordOfType:v27 forInterface:? fromDict:?];
  }

  v17 = v16;
  bzero(v16, v15);
  v18 = CCCryptorUpdate(v6, data, length, v17, v15, buf);
  if (v18)
  {
    v19 = v18;
    v20 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v27 = 67109120;
      *&v27[4] = v19;
      v21 = "Decrypting - CCCryptorUpdate failed: %d";
LABEL_17:
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, v21, v27, 8u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v22 = CCCryptorFinal(v6, &v17[*buf], v15 - *buf, &dataOutMoved);
  if (v22)
  {
    v19 = v22;
    v20 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v27 = 67109120;
      *&v27[4] = v19;
      v21 = "Decrypting - CCCryptorFinal failed: %d";
      goto LABEL_17;
    }

LABEL_18:
    v23 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v27 = 67109120;
      *&v27[4] = v19;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "CCCrypt() error: %d", v27, 8u);
    }

    free(v17);
    goto LABEL_21;
  }

  v24 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v17 length:dataOutMoved + *buf freeWhenDone:1];
LABEL_22:

  return v24;
}

- (id)loadDataSection:(id)section
{
  v14 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  size = 0;
  v4 = getsectiondata(&dword_23255B000, "__TEXT", [sectionCopy UTF8String], &size);
  v5 = 0;
  if (v4)
  {
    v6 = size == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [CLIPSShim createDecryptedCLPData:v4 length:?];
    if (v7)
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v7 length:"bytes") encoding:{objc_msgSend(v7, "length"), 1}];
      if (v5)
      {
LABEL_10:

        goto LABEL_11;
      }

      v8 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = sectionCopy;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Unable to decode %@ decrypted data section into a string", buf, 0xCu);
      }
    }

    v5 = 0;
    goto LABEL_10;
  }

LABEL_11:
  if (![v5 length])
  {
    v9 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = sectionCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Unable to get datasection with name %@", buf, 0xCu);
    }
  }

  return v5;
}

- (void)deactivateModule:(id)module
{
  v18 = *MEMORY[0x277D85DE8];
  moduleCopy = module;
  moduleCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"CLIPSOTAUpdate[%@]", moduleCopy];
  v6 = [(ImpoExpoService *)self->_ieService listItemsNameWithPrefix:moduleCopy sortDescriptor:0];
  if ([v6 count] == 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    if (v7)
    {
      v8 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = moduleCopy;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "We've been told to delete the OTA Update for %@", buf, 0xCu);
      }

      ieService = self->_ieService;
      v10 = [MEMORY[0x277CBEB98] setWithObject:v7];
      [(ImpoExpoService *)ieService deleteItemsWithNames:v10];
    }

LABEL_10:

    goto LABEL_11;
  }

  if ([v6 count] >= 2)
  {
    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      *buf = 134218242;
      v15 = [v6 count];
      v16 = 2112;
      v17 = moduleCopy;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "There are too many (%lu) OTA Updates for %@ in the database which we've been told to delete. Deleting all of them.", buf, 0x16u);
    }

    v13 = self->_ieService;
    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
    [(ImpoExpoService *)v13 deleteItemsWithNames:v7];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)setOTAUpdate:(id)update version:(id)version module:(id)module
{
  v19 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  versionCopy = version;
  moduleCopy = module;
  if (![moduleCopy length])
  {
    v13 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v14 = "Input module is empty!\n";
LABEL_11:
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_12;
  }

  if (![versionCopy length])
  {
    v13 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v14 = "Input version is empty!\n";
    goto LABEL_11;
  }

  if (![updateCopy length])
  {
    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = moduleCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "%@ module constructs is empty. This would be ok if the ota update is meant to be blank.", buf, 0xCu);
    }
  }

  v15[0] = @"Version";
  v15[1] = @"Constructs";
  v16[0] = versionCopy;
  v16[1] = updateCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [(NSMutableDictionary *)self->_pendingOTAUpdates setObject:v12 forKeyedSubscript:moduleCopy];

  [(NSMutableDictionary *)self->_modules removeObjectForKey:moduleCopy];
LABEL_12:
}

- (int)executeBatchCommand:(id)command module:(id)module
{
  v13 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  moduleCopy = module;
  if (([moduleCopy isEqualToString:@"COMMON"] & 1) != 0 || (objc_msgSend(moduleCopy, "isEqualToString:", @"Modules") & 1) != 0 || EnvFindDefmodule(self->_environment, objc_msgSend(moduleCopy, "UTF8String")))
  {
    [(CLIPSShim *)self setCommandString:commandCopy];
    ConstructsFromLogicalName = LoadConstructsFromLogicalName(self->_environment, "cmd");
    [(CLIPSShim *)self setCommandString:0];
  }

  else
  {
    v10 = debuggabilityLogHandle;
    ConstructsFromLogicalName = 0;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = moduleCopy;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "executeBatchCommand: %@ defmodule is unknown", &v11, 0xCu);
      ConstructsFromLogicalName = 0;
    }
  }

  return ConstructsFromLogicalName;
}

- (void)executeCommand:(id)command moduleName:(id)name
{
  commandCopy = command;
  nameCopy = name;
  Defmodule = EnvFindDefmodule(self->_environment, [nameCopy UTF8String]);
  if (Defmodule)
  {
    v8 = Defmodule;
    CurrentModule = EnvGetCurrentModule(self->_environment);
    EnvSetCurrentModule(self->_environment, v8);
    commandCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s> %@\n", EnvGetConstructNameString(self->_environment, v8), commandCopy];
    EnvPrintRouter(self->_environment, "wtrace", [commandCopy UTF8String]);
    SetHaltExecution(self->_environment, 0);
    SetEvaluationError(self->_environment, 0);
    FlushPPBuffer(self->_environment);
    SetPPBufferStatus(self->_environment, 0);
    environment = self->_environment;
    v12 = commandCopy;
    RouteCommand(environment, [commandCopy UTF8String], 0);
    FlushPPBuffer(self->_environment);
    SetHaltExecution(self->_environment, 0);
    SetEvaluationError(self->_environment, 0);
    EnvSetCurrentModule(self->_environment, CurrentModule);
  }

  else
  {
    commandCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' is not a valid module name", nameCopy];
    EnvPrintRouter(self->_environment, "werror", [commandCopy UTF8String]);
  }
}

- (void)retractFact:(void *)fact
{
  if (fact)
  {
    if (!GetEvaluationError(self->_environment))
    {
      environment = self->_environment;

      EnvRetract(environment, fact);
    }
  }

  else
  {
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Don't call retractFact with a NULL fact", v7, 2u);
    }
  }
}

- (void)retainFact:(void *)fact
{
  if (fact)
  {
    environment = self->_environment;

    EnvIncrementFactCount(environment, fact);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Don't call retainFact with a NULL fact", v7, 2u);
    }
  }
}

- (void)releaseFact:(void *)fact
{
  if (fact)
  {
    environment = self->_environment;

    EnvDecrementFactCount(environment, fact);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Don't call releaseFact with a NULL fact", v7, 2u);
    }
  }
}

- (void)assertFactString:(id)string moduleName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  nameCopy = name;
  Defmodule = EnvFindDefmodule(self->_environment, [nameCopy UTF8String]);
  if (Defmodule)
  {
    v9 = Defmodule;
    SaveCurrentModule(self->_environment);
    EnvSetCurrentModule(self->_environment, v9);
    v10 = EnvAssertString(self->_environment, [stringCopy UTF8String]);
    if (!v10)
    {
      v11 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412546;
        v15 = stringCopy;
        v16 = 2112;
        v17 = nameCopy;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "EnvAssertString() failed for %@ in module %@. Possibly a duplicate fact.", &v14, 0x16u);
      }
    }

    RestoreCurrentModule(self->_environment);
  }

  else
  {
    v12 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = nameCopy;
      v16 = 2112;
      v17 = stringCopy;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "EnvFindDefmodule() failed to find module %@ when asserting %@", &v14, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)currentModule
{
  CurrentModule = EnvGetCurrentModule(self->_environment);
  if (CurrentModule)
  {
    CurrentModule = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:{EnvGetConstructNameString(self->_environment, CurrentModule)}];
  }

  return CurrentModule;
}

- (id)setCurrentModule:(id)module
{
  moduleCopy = module;
  if ([moduleCopy length] && (Defmodule = EnvFindDefmodule(self->_environment, objc_msgSend(moduleCopy, "UTF8String"))) != 0)
  {
    v6 = Defmodule;
    currentModule = [(CLIPSShim *)self currentModule];
    EnvSetCurrentModule(self->_environment, v6);
  }

  else
  {
    currentModule = 0;
  }

  return currentModule;
}

- (void)pushFocus:(id)focus
{
  environment = self->_environment;
  focusCopy = focus;
  CurrentModule = EnvGetCurrentModule(environment);
  v7 = self->_environment;
  uTF8String = [focusCopy UTF8String];

  Defmodule = EnvFindDefmodule(v7, uTF8String);
  EnvFocus(self->_environment, Defmodule);
  v10 = self->_environment;

  EnvSetCurrentModule(v10, CurrentModule);
}

- (id)getValueForSlotNamed:(id)named fromFact:(void *)fact
{
  memset(v11, 0, sizeof(v11));
  environment = self->_environment;
  namedCopy = named;
  if (EnvGetFactSlot(environment, fact, [named UTF8String], v11))
  {
    v9 = [(CLIPSShim *)self objectForDO:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)performOnFactsWithDeftemplateName:(id)name usingBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  NextFact = EnvGetNextFact(self->_environment, 0);
  if (NextFact)
  {
    v8 = NextFact;
    while (1)
    {
      v9 = EnvFactDeftemplate(self->_environment, v8);
      if (v9)
      {
        break;
      }

      if (blockCopy)
      {
        goto LABEL_9;
      }

LABEL_10:
      v8 = EnvGetNextFact(self->_environment, v8);
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    DefruleName = EnvGetDefruleName(self->_environment, v9);
    if (!DefruleName)
    {
      goto LABEL_10;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:DefruleName];
    v12 = [nameCopy isEqualToString:v11];

    if (!blockCopy || (v12 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    blockCopy[2](blockCopy, v8);
    goto LABEL_10;
  }

LABEL_11:
}

- (id)matchFactsWithDeftemplateName:(id)name withSlotKeyValues:(id)values
{
  valuesCopy = values;
  v7 = MEMORY[0x277CBEB18];
  nameCopy = name;
  array = [v7 array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__CLIPSShim_matchFactsWithDeftemplateName_withSlotKeyValues___block_invoke;
  v15[3] = &unk_2789903E0;
  v16 = valuesCopy;
  selfCopy = self;
  v10 = array;
  v18 = v10;
  v11 = valuesCopy;
  [(CLIPSShim *)self performOnFactsWithDeftemplateName:nameCopy usingBlock:v15];

  v12 = v18;
  v13 = v10;

  return v10;
}

void __61__CLIPSShim_matchFactsWithDeftemplateName_withSlotKeyValues___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v12 = *(*(&v15 + 1) + 8 * v10);
      v8 = [*(a1 + 32) objectForKeyedSubscript:{v12, v15}];

      if (v8)
      {
        v13 = [*(a1 + 40) getValueForSlotNamed:v12 fromFact:a2];

        if (!v13)
        {
          break;
        }

        v7 = v13;
        if (![v13 isEqual:v8])
        {
          break;
        }
      }

      ++v10;
      v11 = v8;
      if (v6 == v10)
      {
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
LABEL_13:

    v14 = *(a1 + 48);
    v4 = [MEMORY[0x277CCAE60] valueWithPointer:a2];
    [v14 addObject:v4];
    v13 = v7;
  }
}

- (void)deftemplateNamed:(id)named moduleName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  Defmodule = EnvFindDefmodule(self->_environment, [name UTF8String]);
  if (Defmodule)
  {
    CurrentModule = EnvGetCurrentModule(self->_environment);
    EnvSetCurrentModule(self->_environment, Defmodule);
    Defmodule = EnvFindDeftemplate(self->_environment, [namedCopy UTF8String]);
    if (!Defmodule)
    {
      v9 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = namedCopy;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "CLIPS: FAILED TO FIND %@", &v11, 0xCu);
      }
    }

    if (CurrentModule)
    {
      EnvSetCurrentModule(self->_environment, CurrentModule);
    }
  }

  return Defmodule;
}

- (id)deftemplatesMatchingPrefix:(id)prefix
{
  v66 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  v5 = prefixCopy;
  if (!prefixCopy || ![prefixCopy length])
  {
    v46 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_ERROR, "ANALYTICS-CLIPS: Prefix passed in was empty", buf, 2u);
    }

    goto LABEL_54;
  }

  v6 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "ANALYTICS-CLIPS: Looking for deftemplate that matches prefix %@", buf, 0xCu);
  }

  uTF8String = [v5 UTF8String];
  v8 = strlen(uTF8String);
  NextDeftemplate = EnvGetNextDeftemplate(self->_environment, 0);
  if (!NextDeftemplate)
  {
LABEL_54:
    v12 = 0;
    goto LABEL_55;
  }

  v11 = NextDeftemplate;
  v12 = 0;
  v13 = 0x277CBE000uLL;
  *&v10 = 138412290;
  v48 = v10;
  v49 = v5;
  v53 = uTF8String;
  do
  {
    if (!v12)
    {
      v12 = objc_alloc_init(*(v13 + 2872));
    }

    DefruleName = EnvGetDefruleName(self->_environment, v11);
    v15 = EnvDefruleModule(self->_environment, v11);
    if (DefruleName)
    {
      v16 = v15;
      if (strlen(DefruleName) >= v8 && !strncmp(uTF8String, DefruleName, v8))
      {
        v17 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = DefruleName;
          *&buf[12] = 2080;
          *&buf[14] = v53;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "ANALYTICS-CLIPS: Found deftemplate %s that matches prefix %s", buf, 0x16u);
        }

        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:DefruleName];
        v19 = [v18 rangeOfString:@"_"];
        if (v19 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v18;
            *&buf[12] = 2112;
            *&buf[14] = v5;
            _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Unable to parse AWD metric name from deftemplate name. (deftemplate: %@, prefix: %@)", buf, 0x16u);
          }
        }

        else
        {
          v51 = [v18 substringFromIndex:v19 + v20];
          v22 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = v48;
            *&buf[4] = v51;
            _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "ANALYTICS-CLIPS: Parsed out AWD metric name: %@", buf, 0xCu);
          }

          v65 = 0u;
          memset(buf, 0, sizeof(buf));
          EnvDeftemplateSlotNames(self->_environment, v11, buf);
          v23 = *&buf[16];
          if (*&buf[16])
          {
            v50 = v18;
            v54 = objc_alloc_init(*(v13 + 2872));
            v24 = *&buf[24];
            v56 = v65;
            if (*&buf[24] <= v65)
            {
              v55 = v23 + 24;
              v52 = v8;
              do
              {
                v25 = (v55 + 16 * v24);
                if ((*v25 & 0xFFFE) == 2)
                {
                  v26 = *(*(v25 + 1) + 24);
                  if (v26)
                  {
                    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v26];
                    v62 = 0u;
                    v63 = 0u;
                    *v61 = 0u;
                    EnvDeftemplateSlotTypes(self->_environment, v11, v26, v61);
                    if (!v62 || v63 - *(&v62 + 1) == -1)
                    {
                      v34 = debuggabilityLogHandle;
                      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
                      {
                        *v57 = 0;
                        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "    slot types is nil or length is zero for this slot.", v57, 2u);
                      }
                    }

                    else if (v63 >= *(&v62 + 1))
                    {
                      v28 = v63 - *(&v62 + 1) + 1;
                      v29 = (v62 + 16 * *(&v62 + 1) + 24);
                      do
                      {
                        if ((*v29 & 0xFFFE) != 2)
                        {
                          v30 = debuggabilityLogHandle;
                          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                          {
                            v31 = *v29;
                            *v57 = 67109378;
                            v58 = v31;
                            v59 = 2080;
                            v60 = v26;
                            _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "Found unexpected multi-field type of %d for %s (should be STRING or SYMBOL)", v57, 0x12u);
                          }
                        }

                        v29 += 8;
                        --v28;
                      }

                      while (v28);
                    }

                    v35 = [v27 rangeOfString:{@"/", v48}];
                    if (v35 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      [v54 setObject:v27 forKeyedSubscript:v27];
                      v8 = v52;
                    }

                    else
                    {
                      v37 = v35;
                      v38 = v36;
                      v39 = [v27 substringWithRange:{0, v35}];
                      v40 = [v27 substringFromIndex:v37 + v38];
                      v41 = [v54 objectForKeyedSubscript:v39];
                      v8 = v52;
                      if (!v41)
                      {
                        v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
                        [v54 setObject:v41 forKeyedSubscript:v39];
                      }

                      [v41 setObject:v27 forKeyedSubscript:v40];
                    }

                    v13 = 0x277CBE000;
                  }
                }

                else
                {
                  v32 = debuggabilityLogHandle;
                  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    v33 = *v25;
                    *v61 = 67109120;
                    *&v61[4] = v33;
                    _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "Found unexpected multi-field type of %d for slot names (should be STRING or SYMBOL)", v61, 8u);
                  }
                }
              }

              while (v24++ != v56);
            }

            v18 = v50;
            [v54 setObject:v50 forKeyedSubscript:{@"kAnalyticsCLIPSTemplateName", v48}];
            v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v16];
            [v54 setObject:v43 forKeyedSubscript:@"kAnalyticsCLIPSTemplateModule"];

            v44 = v51;
            [v12 setObject:v54 forKeyedSubscript:v51];

            v5 = v49;
          }

          else
          {
            v45 = debuggabilityLogHandle;
            v44 = v51;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *v61 = 0;
              _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "  Missing slot names value for this deftemplate.", v61, 2u);
            }
          }
        }

        uTF8String = v53;
      }
    }

    v11 = EnvGetNextDeftemplate(self->_environment, v11);
  }

  while (v11);
LABEL_55:

  return v12;
}

- (id)slotsStringForTemplate:(id)template fromDictionary:(id)dictionary moduleName:(id)name
{
  v141 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  dictionaryCopy = dictionary;
  nameCopy = name;
  v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v98 = dictionaryCopy;
  if (![dictionaryCopy count])
  {
    v88 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_137;
    }

    *v138 = 0;
    v89 = "CLIPS: Nothing to parse";
    v90 = v88;
    v91 = OS_LOG_TYPE_DEBUG;
    v92 = 2;
LABEL_134:
    _os_log_impl(&dword_23255B000, v90, v91, v89, v138, v92);
    goto LABEL_137;
  }

  v12 = [(CLIPSShim *)self deftemplateNamed:templateCopy moduleName:nameCopy];
  if (!v12)
  {
    v93 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_137;
    }

    *v138 = 138412290;
    *&v138[4] = templateCopy;
    v89 = "CLIPS: Could not locate this deftemplate: %@";
    v90 = v93;
    v91 = OS_LOG_TYPE_ERROR;
    v92 = 12;
    goto LABEL_134;
  }

  v13 = v12;
  v96 = templateCopy;
  v139 = 0u;
  v140 = 0u;
  *v138 = 0u;
  EnvDeftemplateSlotNames(self->_environment, v12, v138);
  v14 = [(CLIPSShim *)self objectForDO:v138];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = [dictionaryCopy allKeys];
  v103 = [obj countByEnumeratingWithState:&v121 objects:v137 count:16];
  if (v103)
  {
    v15 = 0;
    v102 = *v122;
    selfCopy = self;
    v101 = v14;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v122 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v104 = v16;
        v17 = *(*(&v121 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v14 isEqualToString:v17])
          {
            goto LABEL_16;
          }

          goto LABEL_111;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = debuggabilityLogHandle;
          if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
          {
            v19 = v18;
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            *buf = 138412802;
            v126 = v21;
            v127 = 2112;
            v128 = v17;
            v129 = 2112;
            v130 = v96;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "CLIPS: Unexpected slot name class %@ for key: '%@' in this template: '%@'", buf, 0x20u);
          }

LABEL_16:
          EnvDeftemplateSlotTypes(self->_environment, v13, [v17 UTF8String], v138);
          v22 = [(CLIPSShim *)self objectForDO:v138];
          v23 = EnvDeftemplateSlotMultiP(self->_environment, v13, [v17 UTF8String]);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v22;
            if ([v22 count])
            {
              v24 = [v22 objectAtIndexedSubscript:0];

              v22 = v24;
              self = selfCopy;
              goto LABEL_19;
            }

            v52 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_ERROR, "CLIPS: empty slotTypes", buf, 2u);
            }

LABEL_108:
            v14 = v101;
LABEL_109:
            v16 = v104;
LABEL_110:

            goto LABEL_111;
          }

LABEL_19:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v35 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              v36 = v35;
              v37 = objc_opt_class();
              *buf = 138412802;
              v126 = v17;
              v127 = 2112;
              v128 = v22;
              v129 = 2112;
              v130 = v37;
              v38 = v37;
              _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, "CLIPS: %@'s slotType (%@) class (%@) is not a string!", buf, 0x20u);

              self = selfCopy;
            }

            goto LABEL_108;
          }

          v25 = [v98 objectForKeyedSubscript:v17];

          if ([v22 isEqualToString:@"STRING"])
          {
            if (v23)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v97 = v22;
                objc_msgSend(v11, "appendFormat:", @" (%@ "), v17;
                v119 = 0u;
                v120 = 0u;
                v117 = 0u;
                v118 = 0u;
                v15 = v25;
                v26 = [v15 countByEnumeratingWithState:&v117 objects:v136 count:16];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v118;
                  do
                  {
                    for (i = 0; i != v27; ++i)
                    {
                      if (*v118 != v28)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v30 = *(*(&v117 + 1) + 8 * i);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v11 appendFormat:@" %@", v30];
                      }

                      else
                      {
                        v31 = debuggabilityLogHandle;
                        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                        {
                          v32 = v31;
                          v33 = objc_opt_class();
                          *buf = 138412802;
                          v126 = v30;
                          v127 = 2112;
                          v128 = v33;
                          v129 = 2112;
                          v130 = v17;
                          v34 = v33;
                          _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "CLIPS: value %@ is a '%@' but %@'s STRING slot expects an NSString from this array!", buf, 0x20u);
                        }
                      }
                    }

                    v27 = [v15 countByEnumeratingWithState:&v117 objects:v136 count:16];
                  }

                  while (v27);
                }

LABEL_103:

                [v11 appendFormat:@""]);
                self = selfCopy;
                v14 = v101;
                v16 = v104;
                v22 = v97;
                goto LABEL_110;
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v11 appendFormat:@" (%@ %@", v17, v25];
              goto LABEL_106;
            }

            v62 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              v63 = v62;
              v64 = objc_opt_class();
              *buf = 138412802;
              v126 = v25;
              v127 = 2112;
              v128 = v64;
              v129 = 2112;
              v130 = v17;
              v65 = v64;
              v66 = v63;
              v67 = "CLIPS: value %@ is a '%@' but %@'s STRING slot expects an NSString!";
              goto LABEL_87;
            }

LABEL_106:
            v15 = v25;
LABEL_107:
            self = selfCopy;
            goto LABEL_108;
          }

          if ([v22 isEqualToString:@"SYMBOL"])
          {
            if (v23)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v97 = v22;
                objc_msgSend(v11, "appendFormat:", @" (%@ "), v17;
                v115 = 0u;
                v116 = 0u;
                v113 = 0u;
                v114 = 0u;
                v15 = v25;
                v39 = [v15 countByEnumeratingWithState:&v113 objects:v135 count:16];
                if (!v39)
                {
                  goto LABEL_103;
                }

                v40 = v39;
                v41 = *v114;
                while (1)
                {
                  v42 = 0;
                  do
                  {
                    if (*v114 != v41)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v43 = *(*(&v113 + 1) + 8 * v42);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v95 = v43;
                      v44 = v11;
                      v45 = @" %@";
LABEL_47:
                      [v44 appendFormat:v45, v95];
                      goto LABEL_48;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if ([v43 BOOLValue])
                      {
                        v44 = v11;
                        v45 = @" TRUE";
                        goto LABEL_47;
                      }

                      if (([v43 BOOLValue] & 1) == 0)
                      {
                        v44 = v11;
                        v45 = @" FALSE";
                        goto LABEL_47;
                      }

                      v50 = debuggabilityLogHandle;
                      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v126 = v43;
                        v127 = 2112;
                        v128 = v17;
                        _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_ERROR, "CLIPS: value %@ is a non-Boolean NSNumber and %@'s SYMBOL slot expects an value of TRUE (1) or FALSE (0)!", buf, 0x16u);
                      }
                    }

                    else
                    {
                      v46 = debuggabilityLogHandle;
                      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                      {
                        v47 = v46;
                        v48 = objc_opt_class();
                        *buf = 138412802;
                        v126 = v43;
                        v127 = 2112;
                        v128 = v48;
                        v129 = 2112;
                        v130 = v17;
                        v49 = v48;
                        _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_ERROR, "CLIPS: value %@ is a '%@' but %@'s SYMBOL slot expects an NSString from this array!", buf, 0x20u);
                      }
                    }

LABEL_48:
                    ++v42;
                  }

                  while (v40 != v42);
                  v51 = [v15 countByEnumeratingWithState:&v113 objects:v135 count:16];
                  v40 = v51;
                  if (!v51)
                  {
                    goto LABEL_103;
                  }
                }
              }
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = v101;
                if ([v25 BOOLValue])
                {
                  [v11 appendFormat:@" (%@ TRUE)", v17];
                }

                else
                {
                  if ([v25 BOOLValue])
                  {
                    v86 = debuggabilityLogHandle;
                    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v126 = v25;
                      v127 = 2112;
                      v128 = v17;
                      _os_log_impl(&dword_23255B000, v86, OS_LOG_TYPE_ERROR, "CLIPS: value %@ is a non-Boolean NSNumber and %@'s SYMBOL slot expects an value of TRUE (1) or FALSE (0)!", buf, 0x16u);
                    }

                    goto LABEL_106;
                  }

                  [v11 appendFormat:@" (%@ FALSE)", v17];
                }

                v15 = v25;
                self = selfCopy;
                goto LABEL_109;
              }

              v81 = debuggabilityLogHandle;
              if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_106;
              }

              v63 = v81;
              v82 = objc_opt_class();
              *buf = 138412802;
              v126 = v25;
              v127 = 2112;
              v128 = v82;
              v129 = 2112;
              v130 = v17;
              v65 = v82;
              v66 = v63;
              v67 = "CLIPS: value %@ is a '%@' but %@'s SYMBOL slot expects an NSString!";
LABEL_87:
              v68 = 32;
LABEL_88:
              _os_log_impl(&dword_23255B000, v66, OS_LOG_TYPE_ERROR, v67, buf, v68);

              goto LABEL_106;
            }

LABEL_105:
            [v11 appendFormat:@" (%@ %@)", v17, v25];
            goto LABEL_106;
          }

          if ([v22 isEqualToString:@"INTEGER"])
          {
            if (v23)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v97 = v22;
                objc_msgSend(v11, "appendFormat:", @" (%@ "), v17;
                v111 = 0u;
                v112 = 0u;
                v109 = 0u;
                v110 = 0u;
                v15 = v25;
                v53 = [v15 countByEnumeratingWithState:&v109 objects:v134 count:16];
                if (v53)
                {
                  v54 = v53;
                  v55 = *v110;
                  do
                  {
                    for (j = 0; j != v54; ++j)
                    {
                      if (*v110 != v55)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v57 = *(*(&v109 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v11 appendFormat:@" %@", v57];
                      }

                      else
                      {
                        v58 = debuggabilityLogHandle;
                        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                        {
                          v59 = v58;
                          v60 = objc_opt_class();
                          *buf = 138412802;
                          v126 = v57;
                          v127 = 2112;
                          v128 = v60;
                          v129 = 2112;
                          v130 = v17;
                          v61 = v60;
                          _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_ERROR, "CLIPS: value %@ is a '%@' but %@'s INTEGER slot expects an NSNumber from this array!", buf, 0x20u);
                        }
                      }
                    }

                    v54 = [v15 countByEnumeratingWithState:&v109 objects:v134 count:16];
                  }

                  while (v54);
                }

                goto LABEL_103;
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_105;
            }

            v84 = debuggabilityLogHandle;
            if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_106;
            }
          }

          else
          {
            if (![v22 isEqualToString:@"FLOAT"])
            {
              v79 = debuggabilityLogHandle;
              if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_106;
              }

              v63 = v79;
              v80 = objc_opt_class();
              *buf = 138413058;
              v126 = v22;
              v127 = 2112;
              v128 = v17;
              v129 = 2112;
              v130 = v25;
              v131 = 2112;
              v132 = v80;
              v65 = v80;
              v66 = v63;
              v67 = "CLIPS: This slotType (%@) for %@'s value %@ (class is %@) is not handled";
              v68 = 42;
              goto LABEL_88;
            }

            if (v23)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v97 = v22;
                objc_msgSend(v11, "appendFormat:", @" (%@ "), v17;
                v107 = 0u;
                v108 = 0u;
                v105 = 0u;
                v106 = 0u;
                v15 = v25;
                v69 = [v15 countByEnumeratingWithState:&v105 objects:v133 count:16];
                if (v69)
                {
                  v70 = v69;
                  v71 = *v106;
                  do
                  {
                    for (k = 0; k != v70; ++k)
                    {
                      if (*v106 != v71)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v73 = *(*(&v105 + 1) + 8 * k);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v73 floatValue];
                        [v11 appendFormat:@"%.1f", v74];
                      }

                      else
                      {
                        v75 = debuggabilityLogHandle;
                        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
                        {
                          v76 = v75;
                          v77 = objc_opt_class();
                          *buf = 138412802;
                          v126 = v73;
                          v127 = 2112;
                          v128 = v77;
                          v129 = 2112;
                          v130 = v17;
                          v78 = v77;
                          _os_log_impl(&dword_23255B000, v76, OS_LOG_TYPE_ERROR, "CLIPS: value %@ is a '%@' but %@'s FLOAT slot expects an NSNumber from this array!", buf, 0x20u);
                        }
                      }
                    }

                    v70 = [v15 countByEnumeratingWithState:&v105 objects:v133 count:16];
                  }

                  while (v70);
                }

                goto LABEL_103;
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v25;
              [v15 floatValue];
              [v11 appendFormat:@" (%@ %.1f)", v17, v83];

              goto LABEL_107;
            }

            v84 = debuggabilityLogHandle;
            if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_106;
            }
          }

          v63 = v84;
          v85 = objc_opt_class();
          *buf = 138412802;
          v126 = v25;
          v127 = 2112;
          v128 = v85;
          v129 = 2112;
          v130 = v17;
          v65 = v85;
          v66 = v63;
          v67 = "CLIPS: value %@ is a '%@' but %@'s INTEGER slot expects an NSNumber!";
          goto LABEL_87;
        }

        if ([v14 containsObject:v17])
        {
          goto LABEL_16;
        }

LABEL_111:
        ++v16;
      }

      while (v16 != v103);
      v87 = [obj countByEnumeratingWithState:&v121 objects:v137 count:16];
      v103 = v87;
      if (!v87)
      {
        goto LABEL_136;
      }
    }
  }

  v15 = 0;
LABEL_136:

  templateCopy = v96;
LABEL_137:

  return v11;
}

- (void)setConsoleNameRegex:(id *)regex
{
  v3 = *&regex->var0;
  *&self->_consoleNameRegex.re_endp = *&regex->var2;
  *&self->_consoleNameRegex.re_magic = v3;
}

- (void)setDumpStringRegex:(id *)regex
{
  v3 = *&regex->var0;
  *&self->_dumpStringRegex.re_endp = *&regex->var2;
  *&self->_dumpStringRegex.re_magic = v3;
}

- (void)registerCallbackFunction:(void *)a1 selector:target:.cold.1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "Caught exception: %@", &v3, 0xCu);
  }

  objc_end_catch();
}

@end