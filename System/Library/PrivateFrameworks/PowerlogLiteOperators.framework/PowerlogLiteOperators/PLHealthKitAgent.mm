@interface PLHealthKitAgent
+ (id)entryEventPointDefinitions;
+ (void)load;
- (void)initOperatorDependancies;
@end

@implementation PLHealthKitAgent

+ (void)load
{
  v2 = MEMORY[0x277D3F170];
  v3 = objc_opt_class();

  [v2 registerOperator:v3];
}

+ (id)entryEventPointDefinitions
{
  v62[2] = *MEMORY[0x277D85DE8];
  v61[0] = @"HealthKitQuery";
  v58 = *MEMORY[0x277D3F4E8];
  v2 = v58;
  v4 = *MEMORY[0x277D3F4A0];
  v56[0] = *MEMORY[0x277D3F568];
  v3 = v56[0];
  v56[1] = v4;
  v57[0] = &unk_282C1C968;
  v57[1] = MEMORY[0x277CBEC38];
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
  v60[0] = v47;
  v59 = *MEMORY[0x277D3F540];
  v5 = v59;
  v54[0] = @"clientID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v55[0] = commonTypeDict_IntegerFormat;
  v54[1] = @"bundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v55[1] = commonTypeDict_StringFormat_withBundleID;
  v54[2] = @"queryID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v55[2] = commonTypeDict_StringFormat;
  v54[3] = @"queryType";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v55[3] = commonTypeDict_StringFormat2;
  v54[4] = @"totalDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v55[4] = commonTypeDict_RealFormat;
  v54[5] = @"isBackgroundQuery";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]6 commonTypeDict_BoolFormat];
  v55[5] = commonTypeDict_BoolFormat;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:6];
  v60[1] = v34;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v58 count:2];
  v61[1] = @"HealthKitCloudSync";
  v62[0] = v33;
  v50 = v3;
  v51 = &unk_282C1C978;
  v52[0] = v2;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v52[1] = v5;
  v53[0] = v32;
  v48[0] = @"options";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v49[0] = commonTypeDict_IntegerFormat2;
  v48[1] = @"reason";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v49[1] = commonTypeDict_IntegerFormat3;
  v48[2] = @"operation";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v49[2] = commonTypeDict_IntegerFormat4;
  v48[3] = @"zone-count";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v49[3] = commonTypeDict_IntegerFormat5;
  v48[4] = @"rebase-reason";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v49[4] = commonTypeDict_IntegerFormat6;
  v48[5] = @"deadline";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v49[5] = commonTypeDict_IntegerFormat7;
  v48[6] = @"epoch-change";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v49[6] = commonTypeDict_IntegerFormat8;
  v48[7] = @"status";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v49[7] = commonTypeDict_IntegerFormat9;
  v48[8] = @"result";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]15 commonTypeDict_BoolFormat];
  v49[8] = commonTypeDict_BoolFormat2;
  v48[9] = @"upload";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]16 commonTypeDict_BoolFormat];
  v49[9] = commonTypeDict_BoolFormat3;
  v48[10] = @"download";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]17 commonTypeDict_BoolFormat];
  v49[10] = commonTypeDict_BoolFormat4;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:11];
  v53[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  v62[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];

  return v15;
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    if ([MEMORY[0x277D3F180] fullMode])
    {
      v3 = [MEMORY[0x277D3F208] isWatch] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }

    internalBuild = [MEMORY[0x277D3F208] internalBuild];
    if (internalBuild)
    {
      LOBYTE(internalBuild) = [MEMORY[0x277D3F208] isWatch];
    }

    if ((v3 | internalBuild))
    {
      if ([MEMORY[0x277D3F258] isHealthDataSubmissionAllowed])
      {
        v5 = objc_alloc(MEMORY[0x277D3F270]);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __44__PLHealthKitAgent_initOperatorDependancies__block_invoke;
        v12[3] = &unk_27825A1D8;
        v12[4] = self;
        v6 = [v5 initWithOperator:self withRegistration:&unk_282C19250 withBlock:v12];
        queryHandler = self->_queryHandler;
        self->_queryHandler = v6;
      }
    }

    v8 = objc_alloc(MEMORY[0x277D3F270]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__PLHealthKitAgent_initOperatorDependancies__block_invoke_96;
    v11[3] = &unk_27825A1D8;
    v11[4] = self;
    v9 = [v8 initWithOperator:self withRegistration:&unk_282C19278 withBlock:v11];
    cloudSyncHandler = self->_cloudSyncHandler;
    self->_cloudSyncHandler = v9;
  }
}

void __44__PLHealthKitAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogHealthKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412290;
    v20 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "HealthKitQuery payload: %@", &v19, 0xCu);
  }

  v8 = [(PLOperator *)PLHealthKitAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"HealthKitQuery"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v10 = [v6 objectForKeyedSubscript:@"clientId"];
  [v9 setObject:v10 forKeyedSubscript:@"clientID"];

  v11 = [v6 objectForKeyedSubscript:@"bundleId"];
  [v9 setObject:v11 forKeyedSubscript:@"bundleID"];

  v12 = [v6 objectForKeyedSubscript:@"queryId"];
  [v9 setObject:v12 forKeyedSubscript:@"queryID"];

  v13 = [v6 objectForKeyedSubscript:@"queryType"];
  [v9 setObject:v13 forKeyedSubscript:@"queryType"];

  v14 = [v6 objectForKeyedSubscript:@"totalDuration"];
  [v9 setObject:v14 forKeyedSubscript:@"totalDuration"];

  v15 = [v6 objectForKeyedSubscript:@"isBackgroundQuery"];
  v16 = MEMORY[0x277CBEC38];
  v17 = [v15 isEqual:MEMORY[0x277CBEC38]];

  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = MEMORY[0x277CBEC28];
  }

  [v9 setObject:v18 forKeyedSubscript:@"isBackgroundQuery"];
  [*(a1 + 32) logEntry:v9];
}

void __44__PLHealthKitAgent_initOperatorDependancies__block_invoke_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogHealthKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138412290;
    v22 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "HealthKitCloudSync Payload: %@", &v21, 0xCu);
  }

  v8 = [(PLOperator *)PLHealthKitAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"HealthKitCloudSync"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v10 = [v6 objectForKeyedSubscript:@"options"];
  [v9 setObject:v10 forKeyedSubscript:@"options"];

  v11 = [v6 objectForKeyedSubscript:@"reason"];
  [v9 setObject:v11 forKeyedSubscript:@"reason"];

  v12 = [v6 objectForKeyedSubscript:@"operation"];
  [v9 setObject:v12 forKeyedSubscript:@"operation"];

  v13 = [v6 objectForKeyedSubscript:@"zone-count"];
  [v9 setObject:v13 forKeyedSubscript:@"zone-count"];

  v14 = [v6 objectForKeyedSubscript:@"rebase-reason"];
  [v9 setObject:v14 forKeyedSubscript:@"rebase-reason"];

  v15 = [v6 objectForKeyedSubscript:@"deadline"];
  [v9 setObject:v15 forKeyedSubscript:@"deadline"];

  v16 = [v6 objectForKeyedSubscript:@"epoch-change"];
  [v9 setObject:v16 forKeyedSubscript:@"epoch-change"];

  v17 = [v6 objectForKeyedSubscript:@"status"];
  [v9 setObject:v17 forKeyedSubscript:@"status"];

  v18 = [v6 objectForKeyedSubscript:@"result"];
  [v9 setObject:v18 forKeyedSubscript:@"result"];

  v19 = [v6 objectForKeyedSubscript:@"upload"];
  [v9 setObject:v19 forKeyedSubscript:@"upload"];

  v20 = [v6 objectForKeyedSubscript:@"download"];
  [v9 setObject:v20 forKeyedSubscript:@"download"];

  [*(a1 + 32) logEntry:v9];
}

@end