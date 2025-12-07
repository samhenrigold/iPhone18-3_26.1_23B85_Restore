@interface PLEnergyIssuesService
+ (BOOL)isTestRackDevice:(id)device withExpGroup:(id)group internalKeyDetected:(BOOL)detected;
+ (BOOL)shouldPopUpForPowerException;
+ (BOOL)shouldPopUpForPowerExceptionForProcess:(id)process;
+ (BOOL)shouldPopUpForPowerExceptionWithFatalCount:(id)count withNonFatalCount:(id)fatalCount withMitigationsEnabled:(BOOL)enabled;
+ (BOOL)supportsUrsa;
+ (id)createIssueEntriesFrom:(id)from forKey:(id)key now:(id)now midnight:(id)midnight;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventIntervalDefinitionsUrsaIssues;
+ (id)entryEventPointDefinitionUrsaInteraction;
+ (id)entryEventPointDefinitionUrsaSummary;
+ (id)entryEventPointDefinitions;
+ (id)parseBootArgs:(id)args;
+ (void)load;
- (BOOL)isValidUrsaEntry:(id)entry;
- (BOOL)shouldUpdateTableFrom:(id)from newPayload:(id)payload;
- (PLEnergyIssuesService)init;
- (__CFDictionary)createAssertionThreshold:(int)threshold withAggregateLimit:(int)limit;
- (id)extractActionfromEntry:(id)entry;
- (id)extractProcessNameFromEntry:(id)entry;
- (id)insertSystemTime:(id)time fromPLEntry:(id)entry;
- (void)handleAssertionNotifications;
- (void)initOperatorDependancies;
- (void)initializeSafeguardsSystem;
- (void)setAssertionThresholds;
@end

@implementation PLEnergyIssuesService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLEnergyIssuesService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLEnergyIssuesService)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLEnergyIssuesService;
    self = [(PLOperator *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    [(PLEnergyIssuesService *)self setAssertionThresholds];

    [(PLEnergyIssuesService *)self initializeSafeguardsSystem];
  }
}

- (__CFDictionary)createAssertionThreshold:(int)threshold withAggregateLimit:(int)limit
{
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = threshold;
  v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
  limitCopy = limit;
  v9 = CFNumberCreate(v6, kCFNumberIntType, &limitCopy);
  CFDictionarySetValue(Mutable, @"Asssertion Duration Limit", v8);
  CFDictionarySetValue(Mutable, @"Aggregate Assertion Limit", v9);
  CFRelease(v8);
  CFRelease(v9);
  return Mutable;
}

- (void)setAssertionThresholds
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25EE51000, v0, OS_LOG_TYPE_DEBUG, "%@", v1, 0xCu);
}

void *__47__PLEnergyIssuesService_setAssertionThresholds__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setAssertionThresholds_classDebugEnabled = result;
  return result;
}

void *__47__PLEnergyIssuesService_setAssertionThresholds__block_invoke_120(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  setAssertionThresholds_classDebugEnabled_119 = result;
  return result;
}

- (void)handleAssertionNotifications
{
  v2 = dispatch_queue_create("PM test queue", 0);
  IOPMScheduleAssertionExceptionNotification();
}

+ (id)entryEventIntervalDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v6 = @"UrsaDefinition";
    entryEventIntervalDefinitionsUrsaIssues = [self entryEventIntervalDefinitionsUrsaIssues];
    v7[0] = entryEventIntervalDefinitionsUrsaIssues;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (id)entryEventIntervalDefinitionsUrsaIssues
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v27[0] = *MEMORY[0x277D3F568];
  v27[1] = v2;
  v28[0] = &unk_28714B1D8;
  v28[1] = &unk_2871458C8;
  v27[2] = *MEMORY[0x277D3F588];
  v28[2] = &unk_28714B1E8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"radar";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v26[0] = commonTypeDict_IntegerFormat;
  v25[1] = @"impact";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v26[1] = commonTypeDict_IntegerFormat2;
  v25[2] = @"timestampStart";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v26[2] = commonTypeDict_DateFormat;
  v25[3] = @"timestampEnd";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
  v26[3] = commonTypeDict_DateFormat2;
  v25[4] = @"hitIn";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v26[4] = commonTypeDict_StringFormat;
  v25[5] = @"fixedIn";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v26[5] = commonTypeDict_StringFormat2;
  v25[6] = @"isCritical";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]7 commonTypeDict_BoolFormat];
  v26[6] = commonTypeDict_BoolFormat;
  v25[7] = @"timestampInvalid";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_DateFormat];
  v26[7] = commonTypeDict_DateFormat3;
  v25[8] = @"driMessage";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]9 commonTypeDict_StringFormat];
  v26[8] = commonTypeDict_StringFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:9];
  v30[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  return v12;
}

+ (id)entryEventPointDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"UrsaSummary";
  entryEventPointDefinitionUrsaSummary = [self entryEventPointDefinitionUrsaSummary];
  v7[1] = @"UrsaInteraction";
  v8[0] = entryEventPointDefinitionUrsaSummary;
  entryEventPointDefinitionUrsaInteraction = [self entryEventPointDefinitionUrsaInteraction];
  v8[1] = entryEventPointDefinitionUrsaInteraction;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryEventPointDefinitionUrsaSummary
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (+[PLEnergyIssuesService supportsUrsa])
  {
    v24[0] = *MEMORY[0x277D3F4E8];
    v22 = *MEMORY[0x277D3F568];
    v23 = &unk_28714B1F8;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25[0] = v19;
    v24[1] = *MEMORY[0x277D3F540];
    v20[0] = @"requestId";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v21[0] = commonTypeDict_StringFormat;
    v20[1] = @"countBui";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v21[1] = commonTypeDict_IntegerFormat;
    v20[2] = @"countNotification";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v21[2] = commonTypeDict_IntegerFormat2;
    v20[3] = @"error";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v21[3] = commonTypeDict_IntegerFormat3;
    v20[4] = @"peProcess";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
    v21[4] = commonTypeDict_StringFormat2;
    v20[5] = @"peReason";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
    v21[5] = commonTypeDict_StringFormat3;
    v20[6] = @"peFK_ID";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v21[6] = commonTypeDict_IntegerFormat4;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];
    v25[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

+ (id)entryEventPointDefinitionUrsaInteraction
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (+[PLEnergyIssuesService supportsUrsa])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v14 = *MEMORY[0x277D3F568];
    v15 = &unk_28714B208;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v2;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"source";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
    v13[0] = commonTypeDict_StringFormat;
    v12[1] = @"radar";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v13[1] = commonTypeDict_IntegerFormat;
    v12[2] = @"action";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v13[2] = commonTypeDict_StringFormat2;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  return v10;
}

+ (BOOL)supportsUrsa
{
  internalBuild = [MEMORY[0x277D3F208] internalBuild];
  if (internalBuild)
  {
    if ([MEMORY[0x277D3F208] nonUIBuild])
    {
      LOBYTE(internalBuild) = 0;
    }

    else
    {
      LOBYTE(internalBuild) = [MEMORY[0x277D3F1B8] isVirtualDevice] ^ 1;
    }
  }

  return internalBuild;
}

- (id)insertSystemTime:(id)time fromPLEntry:(id)entry
{
  timeCopy = time;
  entryCopy = entry;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!timeCopy || (isKindOfClass & 1) != 0)
  {
    v9 = PLLogUrsa(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PLEnergyIssuesService insertSystemTime:fromPLEntry:];
    }

    v13 = 0;
  }

  else
  {
    v8 = [timeCopy mutableCopy];
    v9 = v8;
    if (!v8)
    {
      v11 = PLLogUrsa(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PLEnergyIssuesService insertSystemTime:fromPLEntry:];
      }

      goto LABEL_27;
    }

    if (entryCopy)
    {
      v10 = [entryCopy objectForKeyedSubscript:@"timestampEnd"];

      if (v10)
      {
        v11 = [entryCopy objectForKeyedSubscript:@"timestampEnd"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          objc_opt_class();
          v15 = objc_opt_isKindOfClass();
          if ((v15 & 1) == 0)
          {
            v21 = PLLogUrsa(v15);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [PLEnergyIssuesService insertSystemTime:fromPLEntry:];
            }

            v22 = v9;
            goto LABEL_27;
          }

          v16 = MEMORY[0x277CBEAA8];
          [v11 doubleValue];
          v12 = [v16 dateWithTimeIntervalSince1970:?];
        }

        v17 = v12;
        convertFromMonotonicToSystem = [v12 convertFromMonotonicToSystem];
        if (convertFromMonotonicToSystem)
        {
          [v9 setObject:convertFromMonotonicToSystem forKeyedSubscript:@"timestamp"];
        }

        else
        {
          v19 = PLLogUrsa(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [PLEnergyIssuesService insertSystemTime:fromPLEntry:];
          }
        }

        v20 = v9;

LABEL_27:
        v13 = v9;
        goto LABEL_28;
      }
    }

    v14 = PLLogUrsa(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PLEnergyIssuesService insertSystemTime:fromPLEntry:];
    }

    v9 = v9;
    v13 = v9;
  }

LABEL_28:

  return v13;
}

- (BOOL)isValidUrsaEntry:(id)entry
{
  entryCopy = entry;
  v4 = entryCopy;
  if (entryCopy)
  {
    isKindOfClass = [entryCopy objectForKeyedSubscript:@"driMessage"];
    v6 = isKindOfClass;
    if (isKindOfClass)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v6 = v6;
        v7 = [v6 length];
        if (!v7 || (v7 = [v6 rangeOfString:@":"], v7 == 0x7FFFFFFFFFFFFFFFLL))
        {
          v8 = PLLogUrsa(v7);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [PLEnergyIssuesService isValidUrsaEntry:];
          }

          v9 = 0;
          goto LABEL_42;
        }

        v8 = [v4 objectForKeyedSubscript:@"timestampEnd"];
        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v12 = objc_opt_isKindOfClass(), (v12))
          {
            v13 = [v4 objectForKeyedSubscript:@"hitIn"];
            v14 = v13;
            if (v13 && (objc_opt_class(), v13 = objc_opt_isKindOfClass(), (v13 & 1) != 0))
            {
              if ([v14 length])
              {
                v15 = [v4 objectForKeyedSubscript:@"radar"];
                if (v15)
                {
                  objc_opt_class();
                  v16 = objc_opt_isKindOfClass();
                  if ((v16 & 1) == 0)
                  {
                    v17 = PLLogUrsa(v16);
                    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                    {
                      [PLEnergyIssuesService isValidUrsaEntry:];
                    }

                    v9 = 0;
                    goto LABEL_60;
                  }
                }

                v17 = [v4 objectForKeyedSubscript:@"impact"];
                if (v17)
                {
                  objc_opt_class();
                  v18 = objc_opt_isKindOfClass();
                  if ((v18 & 1) == 0)
                  {
                    v19 = PLLogUrsa(v18);
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                    {
                      [PLEnergyIssuesService isValidUrsaEntry:];
                    }

                    v9 = 0;
                    goto LABEL_59;
                  }
                }

                v19 = [v4 objectForKeyedSubscript:@"fixedIn"];
                if (v19 && (objc_opt_class(), v20 = objc_opt_isKindOfClass(), (v20 & 1) == 0))
                {
                  v21 = PLLogUrsa(v20);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    [PLEnergyIssuesService isValidUrsaEntry:];
                  }
                }

                else
                {
                  v21 = [v6 componentsSeparatedByString:@":"];
                  v22 = [v21 count];
                  if (v22 == 2)
                  {
                    v23 = [v21 objectAtIndexedSubscript:0];
                    if ([v23 length])
                    {
                      v27 = v23;
                      v9 = 1;
                      v24 = [v21 objectAtIndexedSubscript:1];
                      v26 = [v24 length];

                      if (v26)
                      {
LABEL_58:

LABEL_59:
LABEL_60:

                        goto LABEL_37;
                      }
                    }

                    else
                    {
                    }
                  }

                  v25 = PLLogUrsa(v22);
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    [PLEnergyIssuesService isValidUrsaEntry:];
                  }
                }

                v9 = 0;
                goto LABEL_58;
              }

              v15 = PLLogUrsa(0);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                [PLEnergyIssuesService isValidUrsaEntry:];
              }
            }

            else
            {
              v15 = PLLogUrsa(v13);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                [PLEnergyIssuesService isValidUrsaEntry:];
              }
            }

            v9 = 0;
LABEL_37:

LABEL_41:
LABEL_42:

            goto LABEL_15;
          }

          v14 = PLLogUrsa(v12);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [PLEnergyIssuesService isValidUrsaEntry:];
          }
        }

        else
        {
          v14 = PLLogUrsa(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [PLEnergyIssuesService isValidUrsaEntry:];
          }
        }

        v9 = 0;
        goto LABEL_41;
      }
    }

    v10 = PLLogUrsa(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PLEnergyIssuesService isValidUrsaEntry:];
    }
  }

  else
  {
    v6 = PLLogUrsa(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PLEnergyIssuesService isValidUrsaEntry:];
    }
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (BOOL)shouldUpdateTableFrom:(id)from newPayload:(id)payload
{
  LOBYTE(v4) = 0;
  if (from && payload)
  {
    payloadCopy = payload;
    v8 = [(PLEnergyIssuesService *)self extractActionfromEntry:from];
    v9 = [payloadCopy objectForKeyedSubscript:@"action"];

    if (v9 && ([v8 isEqualToString:@"softwareUpdate"] & 1) == 0)
    {
      v4 = [v8 isEqualToString:v9] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (id)extractActionfromEntry:(id)entry
{
  v3 = [entry objectForKeyedSubscript:@"driMessage"];
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)extractProcessNameFromEntry:(id)entry
{
  v3 = [entry objectForKeyedSubscript:@"driMessage"];
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)parseBootArgs:(id)args
{
  v3 = MEMORY[0x277CCA900];
  argsCopy = args;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [argsCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__PLEnergyIssuesService_parseBootArgs___block_invoke;
  v11[3] = &unk_279A5C3A8;
  v8 = dictionary;
  v12 = v8;
  [v6 enumerateObjectsUsingBlock:v11];
  if ([v8 count])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __39__PLEnergyIssuesService_parseBootArgs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    if ([v3 rangeOfString:@"="] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) setObject:@"?" forKeyedSubscript:v3];
    }

    else
    {
      v4 = [v3 componentsSeparatedByString:@"="];
      v5 = [v4 count];
      if (v5 == 2)
      {
        v6 = [v4 firstObject];
        v7 = [v4 lastObject];
        v8 = v7;
        if (v6 && v7)
        {
          [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
        }

        else
        {
          v9 = PLLogUrsa(v7);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            __39__PLEnergyIssuesService_parseBootArgs___block_invoke_cold_1();
          }
        }
      }

      else
      {
        v6 = PLLogUrsa(v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __39__PLEnergyIssuesService_parseBootArgs___block_invoke_cold_1();
        }
      }
    }
  }
}

+ (id)createIssueEntriesFrom:(id)from forKey:(id)key now:(id)now midnight:(id)midnight
{
  v81 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  keyCopy = key;
  nowCopy = now;
  midnightCopy = midnight;
  if (fromCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v58 = fromCopy;
    v10 = fromCopy;
    v11 = [v10 countByEnumeratingWithState:&v74 objects:v80 count:16];
    if (!v11)
    {
      goto LABEL_51;
    }

    v12 = v11;
    v13 = @"radar";
    v14 = @"impact";
    v64 = *v75;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v75 != v64)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v74 + 1) + 8 * v15);
        v17 = [v16 objectForKeyedSubscript:{v13, v58}];
        v18 = [v16 objectForKeyedSubscript:v14];
        v71 = [v16 objectForKeyedSubscript:@"timestampStart"];
        v70 = [v16 objectForKeyedSubscript:@"timestampEnd"];
        v69 = [v16 objectForKeyedSubscript:@"hitIn"];
        v68 = [v16 objectForKeyedSubscript:@"fixedIn"];
        v73 = [v16 objectForKeyedSubscript:@"isCritical"];
        v67 = [v16 objectForKeyedSubscript:@"timestampInvalid"];
        v72 = [v16 objectForKeyedSubscript:@"driMessage"];
        v19 = [v16 objectForKeyedSubscript:@"notificationMessage"];
        v65 = v18;
        v66 = v19;
        if (!v17 || !v18 || !v71 || !v70 || !v69 || !v68 || !v73 || !v67 || !v72 || !v19)
        {
          v30 = PLLogUrsa(v19);
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          *buf = 138412290;
          v79 = v16;
          v38 = v30;
          v39 = "Insufficient information for issue. Given information: %@";
          goto LABEL_49;
        }

        null = [MEMORY[0x277CBEB68] null];
        if (v17 == null)
        {
          goto LABEL_28;
        }

        null2 = [MEMORY[0x277CBEB68] null];
        if (v73 == null2)
        {
          goto LABEL_27;
        }

        v63 = v17;
        v22 = v14;
        v23 = v13;
        v24 = v10;
        null3 = [MEMORY[0x277CBEB68] null];
        v26 = null3;
        if (v72 == null3)
        {

          v10 = v24;
          v13 = v23;
          v14 = v22;
LABEL_27:

LABEL_28:
LABEL_29:
          v30 = PLLogUrsa(v28);
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          *buf = 138412290;
          v79 = v16;
          v38 = v30;
          v39 = "Null data found in issue: %@";
LABEL_49:
          _os_log_error_impl(&dword_25EE51000, v38, OS_LOG_TYPE_ERROR, v39, buf, 0xCu);
          goto LABEL_30;
        }

        null4 = [MEMORY[0x277CBEB68] null];

        v29 = v66 == null4;
        v10 = v24;
        v13 = v23;
        v14 = v22;
        v17 = v63;
        if (v29)
        {
          goto LABEL_29;
        }

        v30 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:keyCopy withDate:nowCopy];
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v63, "unsignedIntValue")}];
        [v30 setObject:v31 forKeyedSubscript:v13];

        v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v73, "BOOLValue")}];
        [v30 setObject:v32 forKeyedSubscript:@"isCritical"];

        [v30 setObject:v72 forKeyedSubscript:@"driMessage"];
        [v30 setObject:v66 forKeyedSubscript:@"notificationMessage"];
        null5 = [MEMORY[0x277CBEB68] null];

        if (v67 == null5)
        {
          v35 = 0.0;
LABEL_33:
          [v30 setObject:midnightCopy forKeyedSubscript:@"timestampInvalid"];
          v37 = 0;
          goto LABEL_34;
        }

        [v67 doubleValue];
        v35 = v34;
        if (v34 == 0.0)
        {
          goto LABEL_33;
        }

        v36 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
        [v30 setObject:v36 forKeyedSubscript:@"timestampInvalid"];

        v37 = 1;
LABEL_34:
        null6 = [MEMORY[0x277CBEB68] null];

        if (v65 != null6)
        {
          v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v65, "unsignedIntValue")}];
          [v30 setObject:v41 forKeyedSubscript:v22];
        }

        null7 = [MEMORY[0x277CBEB68] null];

        if (v71 != null7)
        {
          v43 = MEMORY[0x277CCABB0];
          [v71 doubleValue];
          v44 = [v43 numberWithDouble:?];
          [v30 setObject:v44 forKeyedSubscript:@"timestampStart"];
        }

        null8 = [MEMORY[0x277CBEB68] null];

        if (v70 != null8)
        {
          v46 = MEMORY[0x277CCABB0];
          [v70 doubleValue];
          v47 = [v46 numberWithDouble:?];
          [v30 setObject:v47 forKeyedSubscript:@"timestampEnd"];
        }

        null9 = [MEMORY[0x277CBEB68] null];

        if (v69 != null9)
        {
          v49 = [MEMORY[0x277CCACA8] stringWithString:?];
          [v30 setObject:v49 forKeyedSubscript:@"hitIn"];
        }

        null10 = [MEMORY[0x277CBEB68] null];

        if (v68 != null10)
        {
          v51 = [MEMORY[0x277CCACA8] stringWithString:?];
          [v30 setObject:v51 forKeyedSubscript:@"fixedIn"];
        }

        v52 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v35];
        v53 = v52;
        if (!v37 || ([v52 laterDate:nowCopy], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "isEqualToDate:", nowCopy), v54, (v55 & 1) == 0))
        {
          [array addObject:v30];
        }

        v17 = v63;
LABEL_30:

        ++v15;
      }

      while (v12 != v15);
      v56 = [v10 countByEnumeratingWithState:&v74 objects:v80 count:16];
      v12 = v56;
      if (!v56)
      {
LABEL_51:

        fromCopy = v58;
        goto LABEL_53;
      }
    }
  }

  array = 0;
LABEL_53:

  return array;
}

+ (BOOL)shouldPopUpForPowerExceptionWithFatalCount:(id)count withNonFatalCount:(id)fatalCount withMitigationsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  fatalCountCopy = fatalCount;
  v8 = !enabledCopy || [count intValue] >= 1 && objc_msgSend(fatalCountCopy, "intValue") > 0;

  return v8;
}

+ (BOOL)shouldPopUpForPowerExceptionForProcess:(id)process
{
  processCopy = process;
  if (processCopy)
  {
    if (shouldPopUpForPowerExceptionForProcess__onceToken != -1)
    {
      +[PLEnergyIssuesService shouldPopUpForPowerExceptionForProcess:];
    }

    v4 = [shouldPopUpForPowerExceptionForProcess__allowedProcesses containsObject:processCopy];
  }

  else
  {
    v5 = PLLogUrsa(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[PLEnergyIssuesService shouldPopUpForPowerExceptionForProcess:];
    }

    v4 = 0;
  }

  return v4;
}

uint64_t __64__PLEnergyIssuesService_shouldPopUpForPowerExceptionForProcess___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_28714C788];
  shouldPopUpForPowerExceptionForProcess__allowedProcesses = v0;

  return MEMORY[0x2821F96F8](v0);
}

+ (BOOL)shouldPopUpForPowerException
{
  date = [MEMORY[0x277CBEAA8] date];
  [MEMORY[0x277D3F180] doubleForKey:@"UrsaNotifyAfter" ifNotSet:0.0];
  if (v3 == 0.0 || (v4 = v3, [date timeIntervalSince1970], v5 >= v4))
  {
    v6 = [MEMORY[0x277CBEAA8] nearestMidnightAfterDate:date];
    [v6 timeIntervalSince1970];
    v8 = v7;

    v9 = MEMORY[0x277D3F180];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v11 = 1;
    [v9 setObject:v10 forKey:@"UrsaNotifyAfter" saveToDisk:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isTestRackDevice:(id)device withExpGroup:(id)group internalKeyDetected:(BOOL)detected
{
  detectedCopy = detected;
  v15 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v8 = [group isEqualToString:@"carry"];
  if (v8)
  {
    v9 = PLLogUrsa(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      v10 = "carry expGroup detected";
LABEL_7:
      _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_DEFAULT, v10, v14, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (detectedCopy)
  {
    v9 = PLLogUrsa(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      v10 = "internal key detected";
      goto LABEL_7;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v13 = [deviceCopy length];
  v11 = v13 != 0;
  v9 = PLLogUrsa(v13);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109120;
    v14[1] = v13 != 0;
    _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_DEFAULT, "adg set: %d", v14, 8u);
  }

LABEL_9:

  return v11;
}

- (void)initializeSafeguardsSystem
{
  if (([MEMORY[0x277D3F208] nonUIBuild] & 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3F068]);
    safeguardsManagingClient = self->_safeguardsManagingClient;
    self->_safeguardsManagingClient = v3;

    if (!self->_safeguardsManagingClient)
    {
      v6 = PLLogComputeSafeguards(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [PLEnergyIssuesService initializeSafeguardsSystem];
      }
    }
  }
}

- (void)insertSystemTime:fromPLEntry:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)isValidUrsaEntry:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __39__PLEnergyIssuesService_parseBootArgs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end