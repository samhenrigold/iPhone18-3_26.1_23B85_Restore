@interface PLNfcAgent
+ (id)entryEventForwardDefinitionCard;
+ (id)entryEventForwardDefinitionField;
+ (id)entryEventForwardDefinitionLPEM;
+ (id)entryEventForwardDefinitionTSMCommunication;
+ (id)entryEventForwardDefinitionTransaction;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionAccessoryPower;
+ (id)entryEventIntervalDefinitionPower;
+ (id)entryEventIntervalDefinitions;
+ (id)parseLPEMFromData:(id)data;
+ (void)load;
- (PLNfcAgent)init;
- (unsigned)getNFCHarwareState;
- (void)fieldChangedWithEntry:(id)entry;
- (void)initOperatorDependancies;
- (void)initTaskOperatorDependancies;
- (void)logEventForwardLPEM;
- (void)retrieveAndLogNfcAccessoryPowerCountersWithRetry:(BOOL)retry;
- (void)retrieveAndLogNfcPowerCountersWithRetry:(BOOL)retry;
- (void)setUpNfcPowerCounterRetrieval;
- (void)setupLPEMCounter;
- (void)setupNfcAccessoryPowerCounterRetrieval;
@end

@implementation PLNfcAgent

void __38__PLNfcAgent_initOperatorDependancies__block_invoke_172(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogNfc();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLNfcAgent:: Field Notification fired with payload=%@", &v10, 0xCu);
  }

  v8 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Field"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [*(a1 + 32) fieldChangedWithEntry:v9];
  [*(a1 + 32) logEntry:v9];
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLNfcAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"Card";
  entryEventForwardDefinitionCard = [self entryEventForwardDefinitionCard];
  v11[0] = entryEventForwardDefinitionCard;
  v10[1] = @"Field";
  entryEventForwardDefinitionField = [self entryEventForwardDefinitionField];
  v11[1] = entryEventForwardDefinitionField;
  v10[2] = @"Transaction";
  entryEventForwardDefinitionTransaction = [self entryEventForwardDefinitionTransaction];
  v11[2] = entryEventForwardDefinitionTransaction;
  v10[3] = @"TSMCommunication";
  entryEventForwardDefinitionTSMCommunication = [self entryEventForwardDefinitionTSMCommunication];
  v11[3] = entryEventForwardDefinitionTSMCommunication;
  v10[4] = @"LPEM";
  entryEventForwardDefinitionLPEM = [self entryEventForwardDefinitionLPEM];
  v11[4] = entryEventForwardDefinitionLPEM;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

+ (id)entryEventForwardDefinitionCard
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_282C1C878;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"AuthorizedStatus";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v9 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)entryEventForwardDefinitionField
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1C878;
  v12[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"State";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventForwardDefinitionTransaction
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_282C1C878;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"Status";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v9 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)entryEventForwardDefinitionTSMCommunication
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_282C1C878;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"Status";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v9 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

+ (id)entryEventForwardDefinitionLPEM
{
  v32[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasLPEM])
  {
    v31[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F580];
    v29[0] = *MEMORY[0x277D3F568];
    v29[1] = v2;
    v30[0] = &unk_282C1C878;
    v30[1] = MEMORY[0x277CBEC38];
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v32[0] = v26;
    v31[1] = *MEMORY[0x277D3F540];
    v27[0] = @"BTCC";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v28[0] = commonTypeDict_IntegerFormat;
    v27[1] = @"BTCT";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v28[1] = commonTypeDict_IntegerFormat2;
    v27[2] = @"SRSC";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v28[2] = commonTypeDict_IntegerFormat3;
    v27[3] = @"SRST";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v28[3] = commonTypeDict_IntegerFormat4;
    v27[4] = @"SRUC";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v28[4] = commonTypeDict_IntegerFormat5;
    v27[5] = @"SRLC";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v28[5] = commonTypeDict_IntegerFormat6;
    v27[6] = @"SERESET";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v28[6] = commonTypeDict_IntegerFormat7;
    v27[7] = @"ROLL";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v28[7] = commonTypeDict_IntegerFormat8;
    v27[8] = @"BTENTRY";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
    v28[8] = commonTypeDict_IntegerFormat9;
    v27[9] = @"BTEXIT";
    mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
    v28[9] = commonTypeDict_IntegerFormat10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:10];
    v32[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"Power";
  v2 = +[PLNfcAgent entryEventIntervalDefinitionPower];
  v6[1] = @"AccessoryPower";
  v7[0] = v2;
  v3 = +[PLNfcAgent entryEventIntervalDefinitionAccessoryPower];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)entryEventIntervalDefinitionPower
{
  v36[2] = *MEMORY[0x277D85DE8];
  v35[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v33[0] = *MEMORY[0x277D3F568];
  v33[1] = v2;
  v34[0] = &unk_282C1C888;
  v34[1] = MEMORY[0x277CBEC38];
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v36[0] = v30;
  v35[1] = *MEMORY[0x277D3F540];
  v31[0] = @"idleTime";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v32[0] = commonTypeDict_IntegerFormat;
  v31[1] = @"rfTime";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v32[1] = commonTypeDict_IntegerFormat2;
  v31[2] = @"sleepTime";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v32[2] = commonTypeDict_IntegerFormat3;
  v31[3] = @"SEUptime";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v32[3] = commonTypeDict_IntegerFormat4;
  v31[4] = @"lpcdFalseDetectCount";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v32[4] = commonTypeDict_IntegerFormat5;
  v31[5] = @"falseDetect";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v32[5] = commonTypeDict_IntegerFormat6;
  v31[6] = @"timestampEnd";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]7 commonTypeDict_DateFormat];
  v32[6] = commonTypeDict_DateFormat;
  v31[7] = @"expressUpTime";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v32[7] = commonTypeDict_IntegerFormat7;
  v31[8] = @"fieldDetectUpTime";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v32[8] = commonTypeDict_IntegerFormat8;
  v31[9] = @"uiccUpCounter";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v32[9] = commonTypeDict_IntegerFormat9;
  v31[10] = @"jcopUpCounter";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v32[10] = commonTypeDict_IntegerFormat10;
  v31[11] = @"mboxStatus";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v32[11] = commonTypeDict_IntegerFormat11;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:12];
  v36[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  return v12;
}

+ (id)entryEventIntervalDefinitionAccessoryPower
{
  v29[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasCapability:7])
  {
    v28[0] = *MEMORY[0x277D3F4E8];
    v26 = *MEMORY[0x277D3F568];
    v27 = &unk_282C1C878;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v29[0] = v23;
    v28[1] = *MEMORY[0x277D3F540];
    v24[0] = @"idleTime";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v25[0] = commonTypeDict_IntegerFormat;
    v24[1] = @"rfTime";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v25[1] = commonTypeDict_IntegerFormat2;
    v24[2] = @"sleepTime";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
    v25[2] = commonTypeDict_IntegerFormat3;
    v24[3] = @"SEUptime";
    mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
    v25[3] = commonTypeDict_IntegerFormat4;
    v24[4] = @"lpcdFalseDetectCount";
    mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
    v25[4] = commonTypeDict_IntegerFormat5;
    v24[5] = @"falseDetect";
    mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
    v25[5] = commonTypeDict_IntegerFormat6;
    v24[6] = @"vGpioFalseDetectCount";
    mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
    v25[6] = commonTypeDict_IntegerFormat7;
    v24[7] = @"vGpioFalseDetectCountWithTags";
    mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
    v25[7] = commonTypeDict_IntegerFormat8;
    v24[8] = @"timestampEnd";
    mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_DateFormat = [mEMORY[0x277D3F198]9 commonTypeDict_DateFormat];
    v25[8] = commonTypeDict_DateFormat;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:9];
    v29[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  return v11;
}

- (PLNfcAgent)init
{
  if ([MEMORY[0x277D3F208] hasNFC])
  {
    v5.receiver = self;
    v5.super_class = PLNfcAgent;
    self = [(PLAgent *)&v5 init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  if ([(PLOperator *)self isDebugEnabled])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, logFieldChangedNotificationReceived, @"com.apple.powerlogd.PLNfcAgent.logFieldChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v4 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"nfc"];
  v5 = [v4 objectForKeyedSubscript:@"field"];
  [v5 doubleValue];
  [(PLNfcAgent *)self setOnPower:?];

  v6 = objc_alloc(MEMORY[0x277D3F270]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__PLNfcAgent_initOperatorDependancies__block_invoke;
  v17[3] = &unk_27825A1D8;
  v17[4] = self;
  v7 = [v6 initWithOperator:self withRegistration:&unk_282C18FA8 withBlock:v17];
  [(PLNfcAgent *)self setCardNotification:v7];

  v8 = objc_alloc(MEMORY[0x277D3F270]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__PLNfcAgent_initOperatorDependancies__block_invoke_172;
  v16[3] = &unk_27825A1D8;
  v16[4] = self;
  v9 = [v8 initWithOperator:self withRegistration:&unk_282C18FD0 withBlock:v16];
  [(PLNfcAgent *)self setFieldNotification:v9];

  v10 = objc_alloc(MEMORY[0x277D3F270]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__PLNfcAgent_initOperatorDependancies__block_invoke_177;
  v15[3] = &unk_27825A1D8;
  v15[4] = self;
  v11 = [v10 initWithOperator:self withRegistration:&unk_282C18FF8 withBlock:v15];
  [(PLNfcAgent *)self setTransactionNotification:v11];

  v12 = objc_alloc(MEMORY[0x277D3F270]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__PLNfcAgent_initOperatorDependancies__block_invoke_182;
  v14[3] = &unk_27825A1D8;
  v14[4] = self;
  v13 = [v12 initWithOperator:self withRegistration:&unk_282C19020 withBlock:v14];
  [(PLNfcAgent *)self setTsmCommunicationNotification:v13];

  [(PLNfcAgent *)self setupNfcAccessoryPowerCounterRetrieval];
}

void __38__PLNfcAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogNfc();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLNfcAgent:: Card notification with payload=%@", &v11, 0xCu);
  }

  v8 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Card"];
  v9 = *(a1 + 32);
  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [v9 logEntry:v10];
}

void __38__PLNfcAgent_initOperatorDependancies__block_invoke_177(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogNfc();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLNfcAgent:: Transaction otification fired with payload=%@", &v11, 0xCu);
  }

  v8 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Transaction"];
  v9 = *(a1 + 32);
  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [v9 logEntry:v10];
}

void __38__PLNfcAgent_initOperatorDependancies__block_invoke_182(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogNfc();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLNfcAgent:: TSMCommunication Notification fired with payload=%@", &v11, 0xCu);
  }

  v8 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"TSMCommunication"];
  v9 = *(a1 + 32);
  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [v9 logEntry:v10];
}

- (void)setupLPEMCounter
{
  if ([MEMORY[0x277D3F208] hasLPEM])
  {
    self->_nfcConnectionRetryCount = 0;
    v3 = objc_alloc(MEMORY[0x277D3F250]);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
    workQueue = [(PLOperator *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__PLNfcAgent_setupLPEMCounter__block_invoke;
    v8[3] = &unk_278259C40;
    v8[4] = self;
    v6 = [v3 initWithFireDate:v4 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v8 withQueue:300.0 withBlock:0.0];
    nfcConnectionRetryTimer = self->_nfcConnectionRetryTimer;
    self->_nfcConnectionRetryTimer = v6;
  }
}

void *__30__PLNfcAgent_setupLPEMCounter__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getNFCHarwareState];
  result = *(a1 + 32);
  if (v2 != 4)
  {
    if (v2 == 2)
    {
      [result logEventForwardLPEM];
      result = *(a1 + 32);
    }

    else
    {
      ++*(result + 12);
      result = *(a1 + 32);
      if (*(result + 12) < 5)
      {
        return result;
      }
    }
  }

  v4 = *(result + 16);

  return [v4 invalidate];
}

- (void)initTaskOperatorDependancies
{
  [(PLNfcAgent *)self setupLPEMCounter];

  [(PLNfcAgent *)self setUpNfcPowerCounterRetrieval];
}

- (void)setUpNfcPowerCounterRetrieval
{
  v21 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D2C840] = [MEMORY[0x277D2C840] sharedHardwareManager];
  v16 = 0;
  v4 = [mEMORY[0x277D2C840] queryHardwareSupport:&v16];
  v5 = v16;

  if (v4 == 4)
  {
    v6 = PLLogNfc();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Initial check: NF hardware not supported, error message: %@", buf, 0xCu);
    }

    v7 = v5;
  }

  else
  {
    mEMORY[0x277D2C840]2 = [MEMORY[0x277D2C840] sharedHardwareManager];
    v15 = v5;
    v6 = [mEMORY[0x277D2C840]2 getPowerCounters:&v15];
    v7 = v15;

    v9 = PLLogNfc();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Initial NFC power counters: %@, error: %@", buf, 0x16u);
    }

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLNfcAgent *)self setLastPowerCountersLogTime:monotonicDate];

    v11 = PLLogNfc();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      lastPowerCountersLogTime = [(PLNfcAgent *)self lastPowerCountersLogTime];
      *buf = 138412290;
      v18 = lastPowerCountersLogTime;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "NFC power logging start time: %@", buf, 0xCu);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __43__PLNfcAgent_setUpNfcPowerCounterRetrieval__block_invoke;
    v14[3] = &unk_2782597E8;
    v14[4] = self;
    v12 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v14];
    [(PLNfcAgent *)self setNfcPowerCountersNotification:v12];
  }
}

- (void)setupNfcAccessoryPowerCounterRetrieval
{
  v17 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasCapability:7])
  {
    mEMORY[0x277D2C8B0] = [MEMORY[0x277D2C8B0] sharedHardwareManager];
    v12 = 0;
    v4 = [mEMORY[0x277D2C8B0] getPowerCounters:&v12];
    v5 = v12;

    v6 = PLLogNfc();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Initial NFC accessory power counters: %@, error: %@", buf, 0x16u);
    }

    if (!v5)
    {
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLNfcAgent *)self setLastAccessoryPowerCountersLogTime:monotonicDate];

      v8 = PLLogNfc();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        lastAccessoryPowerCountersLogTime = [(PLNfcAgent *)self lastAccessoryPowerCountersLogTime];
        *buf = 138412290;
        v14 = lastAccessoryPowerCountersLogTime;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "NFC accessory power logging start time: %@", buf, 0xCu);
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __52__PLNfcAgent_setupNfcAccessoryPowerCounterRetrieval__block_invoke;
      v11[3] = &unk_2782597E8;
      v11[4] = self;
      v9 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v11];
      [(PLNfcAgent *)self setNfcAccessoryPowerCounterNotification:v9];
    }
  }
}

- (void)retrieveAndLogNfcPowerCountersWithRetry:(BOOL)retry
{
  retryCopy = retry;
  v31 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D2C840] = [MEMORY[0x277D2C840] sharedHardwareManager];
  v26 = 0;
  v6 = [mEMORY[0x277D2C840] getPowerCounters:&v26];
  v7 = v26;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = v7;
    v10 = PLLogNfc();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v28 = v6;
      v29 = 2112;
      v30 = v9;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Power counters not valid: %@, error: %@", buf, 0x16u);
    }

    v25 = 0;
    v11 = [mEMORY[0x277D2C840] queryHardwareSupport:&v25];
    v12 = v25;
    if (v11 == 4)
    {
      v13 = PLLogNfc();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "NF hardware state is not supported, error message: %@", buf, 0xCu);
      }
    }

    else if (retryCopy)
    {
      v21 = PLLogNfc();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v28) = v11;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "Retry NF power counters query once with current HW state: %d", buf, 8u);
      }

      v22 = dispatch_time(0, 30000000000);
      workQueue = [(PLOperator *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__PLNfcAgent_retrieveAndLogNfcPowerCountersWithRetry___block_invoke;
      block[3] = &unk_2782591D0;
      block[4] = self;
      dispatch_after(v22, workQueue, block);
    }
  }

  else
  {
    v14 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"Power"];
    v15 = PLLogNfc();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Received valid NFC power counters: %@", buf, 0xCu);
    }

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v18 = PLLogNfc();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = monotonicDate;
      _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "NFC power logging end time: %@", buf, 0xCu);
    }

    v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14 withRawData:v6];
    lastPowerCountersLogTime = [(PLNfcAgent *)self lastPowerCountersLogTime];
    [v19 setEntryDate:lastPowerCountersLogTime];

    [v19 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];
    [(PLOperator *)self logEntry:v19];
    [(PLNfcAgent *)self setLastPowerCountersLogTime:monotonicDate];

    v12 = 0;
  }
}

- (void)retrieveAndLogNfcAccessoryPowerCountersWithRetry:(BOOL)retry
{
  retryCopy = retry;
  v26 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D2C8B0] = [MEMORY[0x277D2C8B0] sharedHardwareManager];
  v21 = 0;
  v6 = [mEMORY[0x277D2C8B0] getPowerCounters:&v21];
  v7 = v21;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = PLLogNfc();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Accessory power counters not valid: %@, error: %@", buf, 0x16u);
    }

    if (retryCopy)
    {
      v10 = PLLogNfc();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Retry NF power counters query once", buf, 2u);
      }

      v11 = dispatch_time(0, 30000000000);
      workQueue = [(PLOperator *)self workQueue];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __63__PLNfcAgent_retrieveAndLogNfcAccessoryPowerCountersWithRetry___block_invoke;
      v20[3] = &unk_2782591D0;
      v20[4] = self;
      dispatch_after(v11, workQueue, v20);
    }
  }

  else
  {
    v13 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"AccessoryPower"];
    v14 = PLLogNfc();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Received valid NFC accessory power counters: %@", buf, 0xCu);
    }

    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v17 = PLLogNfc();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = monotonicDate;
      _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "NFC accessory power logging end time: %@", buf, 0xCu);
    }

    v18 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:v6];
    lastAccessoryPowerCountersLogTime = [(PLNfcAgent *)self lastAccessoryPowerCountersLogTime];
    [v18 setEntryDate:lastAccessoryPowerCountersLogTime];

    [v18 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];
    [(PLOperator *)self logEntry:v18];
    [(PLNfcAgent *)self setLastAccessoryPowerCountersLogTime:monotonicDate];
  }
}

- (unsigned)getNFCHarwareState
{
  v10 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D2C840] = [MEMORY[0x277D2C840] sharedHardwareManager];
  v7 = 0;
  v3 = [mEMORY[0x277D2C840] queryHardwareSupport:&v7];
  v4 = v7;

  if (v4)
  {
    v5 = PLLogNfc();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "failed to get the hardware state: %@", buf, 0xCu);
    }

    v3 = 1;
LABEL_9:

    goto LABEL_10;
  }

  if (v3 == 4)
  {
    v5 = PLLogNfc();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v9 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "The hardware is not supported: %@", buf, 0xCu);
    }

    v3 = 4;
    goto LABEL_9;
  }

LABEL_10:

  return v3;
}

- (void)logEventForwardLPEM
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__14;
  v9[4] = __Block_byref_object_dispose__14;
  v10 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__14;
  v7[4] = __Block_byref_object_dispose__14;
  v8 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__14;
  v5[4] = __Block_byref_object_dispose__14;
  v6 = 0;
  v3 = dispatch_get_global_queue(2, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__PLNfcAgent_logEventForwardLPEM__block_invoke;
  v4[3] = &unk_278261378;
  v4[6] = v7;
  v4[7] = v5;
  v4[4] = self;
  v4[5] = v9;
  dispatch_async(v3, v4);

  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(v9, 8);
}

void __33__PLNfcAgent_logEventForwardLPEM__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D2C840] sharedHardwareManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__PLNfcAgent_logEventForwardLPEM__block_invoke_2;
  v5[3] = &unk_278261350;
  v3 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = [v2 startSecureElementLoggingSession:v5];
}

void __33__PLNfcAgent_logEventForwardLPEM__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = PLLogNfc();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v47 = v8;
      v9 = "failed to start  logEventForwardLPEM%@";
LABEL_10:
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
    }
  }

  else
  {
    v10 = [MEMORY[0x277D2C868] embeddedSecureElement];
    v11 = [v10 serialNumber];
    v12 = *(*(a1 + 40) + 8);
    obj = *(v12 + 40);
    v13 = [v5 getLogs:4 forSEID:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v7 = PLLogNfc();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v16 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v47 = v16;
        v9 = "failed to get logs%@";
        goto LABEL_10;
      }
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277CBEA90]);
      v18 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"A000000704E000010002"];
      v19 = [v18 objectForKeyedSubscript:@"FixedBuffer"];
      v20 = [v17 initWithData:v19];
      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = [MEMORY[0x277D2C868] embeddedSecureElement];
      v24 = [v23 serialNumber];
      v25 = [v5 clearLogs:4 forSEID:v24];
      v26 = *(*(a1 + 40) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        goto LABEL_12;
      }

      v7 = PLLogNfc();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v28 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v47 = v28;
        v9 = "failed to clear the log: %@";
        goto LABEL_10;
      }
    }
  }

LABEL_12:
  [v5 endSession];
  v29 = [PLNfcAgent parseLPEMFromData:*(*(*(a1 + 56) + 8) + 40)];
  v30 = *(*(a1 + 48) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v29;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v32 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LPEM"];
    v33 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v32 withRawData:*(*(*(a1 + 48) + 8) + 40)];
    [*(a1 + 32) logEntry:v33];
    v34 = [v33 objectForKeyedSubscript:@"BTCC"];
    [v34 intValue];
    ADClientSetValueForScalarKey();

    v35 = [v33 objectForKeyedSubscript:@"BTCT"];
    [v35 intValue];
    ADClientSetValueForScalarKey();

    v36 = [v33 objectForKeyedSubscript:@"SRSC"];
    [v36 intValue];
    ADClientSetValueForScalarKey();

    v37 = [v33 objectForKeyedSubscript:@"SRST"];
    [v37 intValue];
    ADClientSetValueForScalarKey();

    v38 = [v33 objectForKeyedSubscript:@"SRUC"];
    [v38 intValue];
    ADClientSetValueForScalarKey();

    v39 = [v33 objectForKeyedSubscript:@"SRLC"];
    [v39 intValue];
    ADClientSetValueForScalarKey();

    v40 = [v33 objectForKeyedSubscript:@"SERESET"];
    [v40 intValue];
    ADClientSetValueForScalarKey();

    v41 = [v33 objectForKeyedSubscript:@"ROLL"];
    [v41 intValue];
    ADClientSetValueForScalarKey();

    v42 = [v33 objectForKeyedSubscript:@"BTENTRY"];
    [v42 intValue];
    ADClientSetValueForScalarKey();

    v43 = [v33 objectForKeyedSubscript:@"BTEXIT"];
    [v43 intValue];
    ADClientSetValueForScalarKey();

    v44 = v33;
    AnalyticsSendEventLazy();
  }
}

id __33__PLNfcAgent_logEventForwardLPEM__block_invoke_225(uint64_t a1)
{
  v35[10] = *MEMORY[0x277D85DE8];
  v34[0] = @"BTCC";
  v2 = MEMORY[0x277CCABB0];
  v33 = [*(a1 + 32) objectForKeyedSubscript:?];
  v32 = [v2 numberWithInt:{objc_msgSend(v33, "intValue")}];
  v35[0] = v32;
  v34[1] = @"BTCT";
  v3 = MEMORY[0x277CCABB0];
  v31 = [*(a1 + 32) objectForKeyedSubscript:?];
  v30 = [v3 numberWithInt:{objc_msgSend(v31, "intValue")}];
  v35[1] = v30;
  v34[2] = @"SRSC";
  v4 = MEMORY[0x277CCABB0];
  v29 = [*(a1 + 32) objectForKeyedSubscript:?];
  v28 = [v4 numberWithInt:{objc_msgSend(v29, "intValue")}];
  v35[2] = v28;
  v34[3] = @"SRST";
  v5 = MEMORY[0x277CCABB0];
  v27 = [*(a1 + 32) objectForKeyedSubscript:?];
  v26 = [v5 numberWithInt:{objc_msgSend(v27, "intValue")}];
  v35[3] = v26;
  v34[4] = @"SRUC";
  v6 = MEMORY[0x277CCABB0];
  v25 = [*(a1 + 32) objectForKeyedSubscript:?];
  v24 = [v6 numberWithInt:{objc_msgSend(v25, "intValue")}];
  v35[4] = v24;
  v34[5] = @"SRLC";
  v7 = MEMORY[0x277CCABB0];
  v23 = [*(a1 + 32) objectForKeyedSubscript:?];
  v8 = [v7 numberWithInt:{objc_msgSend(v23, "intValue")}];
  v35[5] = v8;
  v34[6] = @"SERESET";
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) objectForKeyedSubscript:?];
  v11 = [v9 numberWithInt:{objc_msgSend(v10, "intValue")}];
  v35[6] = v11;
  v34[7] = @"ROLL";
  v12 = MEMORY[0x277CCABB0];
  v13 = [*(a1 + 32) objectForKeyedSubscript:?];
  v14 = [v12 numberWithInt:{objc_msgSend(v13, "intValue")}];
  v35[7] = v14;
  v34[8] = @"BTENTRY";
  v15 = MEMORY[0x277CCABB0];
  v16 = [*(a1 + 32) objectForKeyedSubscript:?];
  v17 = [v15 numberWithInt:{objc_msgSend(v16, "intValue")}];
  v35[8] = v17;
  v34[9] = @"BTEXIT";
  v18 = MEMORY[0x277CCABB0];
  v19 = [*(a1 + 32) objectForKeyedSubscript:?];
  v20 = [v18 numberWithInt:{objc_msgSend(v19, "intValue")}];
  v35[9] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:10];

  return v21;
}

- (void)fieldChangedWithEntry:(id)entry
{
  entryCopy = entry;
  v4 = [entryCopy objectForKeyedSubscript:@"State"];
  bOOLValue = [v4 BOOLValue];

  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
  v7 = 0.0;
  if (bOOLValue)
  {
    [(PLNfcAgent *)self onPower];
    v7 = v8;
  }

  entryDate = [entryCopy entryDate];
  [mEMORY[0x277D3F0C0] createPowerEventForwardWithRootNodeID:16 withPower:entryDate withStartDate:v7];

  [(PLOperator *)self logEntry:entryCopy];
}

+ (id)parseLPEMFromData:(id)data
{
  v19[10] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length] < 0x10)
  {
    v5 = PLLogNfc();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Not able to parse the LPEM, mismatch of length", buf, 2u);
    }

    v13 = 0;
  }

  else
  {
    bytes = [dataCopy bytes];
    v18[0] = @"BTCC";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*bytes];
    v19[0] = v5;
    v18[1] = @"BTCT";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 1)];
    v19[1] = v16;
    v18[2] = @"SRSC";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:bytes[5]];
    v19[2] = v15;
    v18[3] = @"SRST";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(bytes + 6)];
    v19[3] = v6;
    v18[4] = @"SRUC";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:bytes[10]];
    v19[4] = v7;
    v18[5] = @"SRLC";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:bytes[11]];
    v19[5] = v8;
    v18[6] = @"SERESET";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:bytes[12]];
    v19[6] = v9;
    v18[7] = @"ROLL";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:bytes[13]];
    v19[7] = v10;
    v18[8] = @"BTENTRY";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:bytes[14]];
    v19[8] = v11;
    v18[9] = @"BTEXIT";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:bytes[15]];
    v19[9] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:10];
  }

  return v13;
}

@end