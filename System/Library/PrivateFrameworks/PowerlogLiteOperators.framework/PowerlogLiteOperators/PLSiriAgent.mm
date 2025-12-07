@interface PLSiriAgent
+ (id)entryEventForwardASREvent;
+ (id)entryEventForwardDefinitionDictationConnection;
+ (id)entryEventForwardDefinitionSiriConfig;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventIntervalSelfTriggerSuppression;
+ (id)entryEventPointDefinitionSiriWakes;
+ (id)entryEventPointDefinitions;
+ (id)entryEventPointSelfTriggerSuppressionDetected;
+ (void)load;
- (PLSiriAgent)init;
- (unint64_t)convertASREvent:(id)event;
- (unint64_t)convertMode:(id)mode;
- (unint64_t)convertRecognition:(id)recognition;
- (unint64_t)convertSiriEvent:(id)event;
- (void)initOperatorDependancies;
- (void)logEventForwardASREvent:(id)event;
- (void)logEventForwardDictationConnection:(id)connection;
- (void)logEventForwardSiriConfig:(id)config;
- (void)logEventIntervalSelfTriggerSuppression:(id)suppression;
- (void)logEventPointSelfTriggerSuppressionDetected:(id)detected;
- (void)logEventPointSiriWakes:(id)wakes;
@end

@implementation PLSiriAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLSiriAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"SiriWakes";
  entryEventPointDefinitionSiriWakes = [self entryEventPointDefinitionSiriWakes];
  v7[1] = @"SelfTriggerSuppressionDetected";
  v8[0] = entryEventPointDefinitionSiriWakes;
  entryEventPointSelfTriggerSuppressionDetected = [self entryEventPointSelfTriggerSuppressionDetected];
  v8[1] = entryEventPointSelfTriggerSuppressionDetected;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryEventPointDefinitionSiriWakes
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v14 = *MEMORY[0x277D3F568];
  v15 = &unk_282C1BDF8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v2;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"phID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v13[0] = commonTypeDict_IntegerFormat;
  v12[1] = @"secondPassState";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat2;
  v12[2] = @"secondPassScore";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v13[2] = commonTypeDict_RealFormat;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventPointSelfTriggerSuppressionDetected
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v14 = *MEMORY[0x277D3F568];
  v15 = &unk_282C1BDF8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v2;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"AudioClientType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v13[0] = commonTypeDict_IntegerFormat;
  v12[1] = @"AudioPlaybackRouteType";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat2;
  v12[2] = @"AudioSourceType";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v13[2] = commonTypeDict_IntegerFormat3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

+ (id)entryEventForwardDefinitions
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"ASR";
  entryEventForwardASREvent = [self entryEventForwardASREvent];
  v9[0] = entryEventForwardASREvent;
  v8[1] = @"DictationConnection";
  entryEventForwardDefinitionDictationConnection = [self entryEventForwardDefinitionDictationConnection];
  v9[1] = entryEventForwardDefinitionDictationConnection;
  v8[2] = @"SiriConfig";
  entryEventForwardDefinitionSiriConfig = [self entryEventForwardDefinitionSiriConfig];
  v9[2] = entryEventForwardDefinitionSiriConfig;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (id)entryEventForwardASREvent
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_282C1BDF8;
  v18[1] = MEMORY[0x277CBEC38];
  v17[2] = *MEMORY[0x277D3F4F0];
  v18[2] = &unk_282C14088;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"ASREvent";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v16[0] = commonTypeDict_IntegerFormat;
  v15[1] = @"ApplicationName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v16[1] = commonTypeDict_StringFormat_withBundleID;
  v15[2] = @"Language";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v16[2] = commonTypeDict_StringFormat;
  v15[3] = @"ModelVersion";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v16[3] = commonTypeDict_StringFormat2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  return v12;
}

+ (id)entryEventForwardDefinitionDictationConnection
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_282C1BDF8;
  v22[1] = MEMORY[0x277CBEC38];
  v21[2] = *MEMORY[0x277D3F4F0];
  v22[2] = &unk_282C140A0;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"SiriEvent";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v20[0] = commonTypeDict_IntegerFormat;
  v19[1] = @"Mode";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v20[1] = commonTypeDict_IntegerFormat2;
  v19[2] = @"startReason";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v20[2] = commonTypeDict_StringFormat;
  v19[3] = @"stopReason";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v20[3] = commonTypeDict_StringFormat2;
  v19[4] = @"appBundleID";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat_withBundleID];
  v20[4] = commonTypeDict_StringFormat_withBundleID;
  v19[5] = @"Recognition";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v20[5] = commonTypeDict_IntegerFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v12;
}

+ (id)entryEventForwardDefinitionSiriConfig
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isAppleTV])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v14 = *MEMORY[0x277D3F568];
    v15 = &unk_282C1BDF8;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"HeySiriEnabled";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
    v13[0] = commonTypeDict_BoolFormat;
    v12[1] = @"Language";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
    v13[1] = commonTypeDict_StringFormat;
    v12[2] = @"ModelVersion";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v13[2] = commonTypeDict_StringFormat2;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
    v17[1] = v10;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  return v2;
}

+ (id)entryEventIntervalDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"SelfTriggerSuppression";
  entryEventIntervalSelfTriggerSuppression = [self entryEventIntervalSelfTriggerSuppression];
  v6[0] = entryEventIntervalSelfTriggerSuppression;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventIntervalSelfTriggerSuppression
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v20 = *MEMORY[0x277D3F568];
  v21 = &unk_282C1BDF8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"AudioClientType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v19[0] = commonTypeDict_IntegerFormat;
  v18[1] = @"AudioPlaybackRouteType";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v19[1] = commonTypeDict_IntegerFormat2;
  v18[2] = @"AudioSourceType";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v19[2] = commonTypeDict_IntegerFormat3;
  v18[3] = @"NumSelfTriggers";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v19[3] = commonTypeDict_IntegerFormat4;
  v18[4] = @"DurationSec";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v19[4] = commonTypeDict_IntegerFormat5;
  v18[5] = @"timestampEnd";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]6 commonTypeDict_DateFormat];
  v19[5] = commonTypeDict_DateFormat;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:6];
  v23[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  return v11;
}

- (PLSiriAgent)init
{
  v3.receiver = self;
  v3.super_class = PLSiriAgent;
  return [(PLAgent *)&v3 init];
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__PLSiriAgent_initOperatorDependancies__block_invoke;
  v20[3] = &unk_27825A1D8;
  v20[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C17270 withBlock:v20];
  [(PLSiriAgent *)self setAsrEventListener:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __39__PLSiriAgent_initOperatorDependancies__block_invoke_114;
  v19[3] = &unk_27825A1D8;
  v19[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_282C17298 withBlock:v19];
  [(PLSiriAgent *)self setDictationConnectionListener:v6];

  v7 = objc_alloc(MEMORY[0x277D3F270]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__PLSiriAgent_initOperatorDependancies__block_invoke_119;
  v18[3] = &unk_27825A1D8;
  v18[4] = self;
  v8 = [v7 initWithOperator:self withRegistration:&unk_282C172C0 withBlock:v18];
  [(PLSiriAgent *)self setSelfTriggerSuppressionDetectedListener:v8];

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__PLSiriAgent_initOperatorDependancies__block_invoke_127;
  v17[3] = &unk_27825A1D8;
  v17[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_282C172E8 withBlock:v17];
  [(PLSiriAgent *)self setSelfTriggerSuppressionProcessingListener:v10];

  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__PLSiriAgent_initOperatorDependancies__block_invoke_132;
  v16[3] = &unk_27825A1D8;
  v16[4] = self;
  v12 = [v11 initWithOperator:self withRegistration:&unk_282C17310 withBlock:v16];
  [(PLSiriAgent *)self setSiriWakesListener:v12];

  if (([MEMORY[0x277D3F208] isAppleTV] & 1) == 0)
  {
    v13 = objc_alloc(MEMORY[0x277D3F270]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__PLSiriAgent_initOperatorDependancies__block_invoke_137;
    v15[3] = &unk_27825A1D8;
    v15[4] = self;
    v14 = [v13 initWithOperator:self withRegistration:&unk_282C17338 withBlock:v15];
    [(PLSiriAgent *)self setSiriConfigListener:v14];
  }
}

void __39__PLSiriAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ESConnection payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardASREvent:v6];
}

void __39__PLSiriAgent_initOperatorDependancies__block_invoke_114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "DictationConnection payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardDictationConnection:v6];
}

void __39__PLSiriAgent_initOperatorDependancies__block_invoke_119(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SelfTriggerSuppressionDetected payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventPointSelfTriggerSuppressionDetected:v6];
}

void __39__PLSiriAgent_initOperatorDependancies__block_invoke_127(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SelfTriggerSuppressionEvent payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventIntervalSelfTriggerSuppression:v6];
}

void __39__PLSiriAgent_initOperatorDependancies__block_invoke_132(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SiriWakes payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventPointSiriWakes:v6];
}

void __39__PLSiriAgent_initOperatorDependancies__block_invoke_137(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SiriConfig payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardSiriConfig:v6];
}

- (void)logEventPointSelfTriggerSuppressionDetected:(id)detected
{
  v4 = *MEMORY[0x277D3F5E8];
  detectedCopy = detected;
  v14 = [(PLOperator *)PLSiriAgent entryKeyForType:v4 andName:@"SelfTriggerSuppressionDetected"];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [detectedCopy objectForKeyedSubscript:@"DetectedTime"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14 withDate:convertFromSystemToMonotonic];
  v11 = [detectedCopy objectForKeyedSubscript:@"PhoneCallConnected"];
  [v10 setObject:v11 forKeyedSubscript:@"AudioClientType"];

  v12 = [detectedCopy objectForKeyedSubscript:@"AudioPlaybackRouteType"];
  [v10 setObject:v12 forKeyedSubscript:@"AudioPlaybackRouteType"];

  v13 = [detectedCopy objectForKeyedSubscript:@"AudioSourceType"];

  [v10 setObject:v13 forKeyedSubscript:@"AudioSourceType"];
  [(PLOperator *)self logEntry:v10];
}

- (void)logEventPointSiriWakes:(id)wakes
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D3F5E8];
  wakesCopy = wakes;
  v6 = [(PLOperator *)PLSiriAgent entryKeyForType:v4 andName:@"SiriWakes"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:wakesCopy];

  v8 = PLLogSiri();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v7 objectForKeyedSubscript:@"secondPassState"];
    v12 = 138412290;
    v13 = v11;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "logEventPointSiriWakes: secondPassState value: %@", &v12, 0xCu);
  }

  v9 = [v7 objectForKeyedSubscript:@"secondPassState"];
  intValue = [v9 intValue];

  if (intValue == 11)
  {
    [v7 setObject:&unk_282C102C0 forKeyedSubscript:@"secondPassState"];
  }

  [(PLOperator *)self logEntry:v7];
}

- (unint64_t)convertASREvent:(id)event
{
  v9 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy isEqualToString:@"preheatSpeechRecognitionWithAssetConfig"])
  {
    v4 = 0;
  }

  else if ([eventCopy isEqualToString:@"startSpeechRecognitionWithParameters"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"createSpeechProfileWithLanguage"])
  {
    v4 = 2;
  }

  else if ([eventCopy isEqualToString:@"compileAllAssetsWithCompletion"])
  {
    v4 = 3;
  }

  else if ([eventCopy isEqualToString:@"didFinishRecognitionWithError"])
  {
    v4 = 4;
  }

  else
  {
    v5 = PLLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = eventCopy;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Unknown/Other ASR siriEvent %@", &v7, 0xCu);
    }

    v4 = 5;
  }

  return v4;
}

- (void)logEventForwardASREvent:(id)event
{
  v4 = *MEMORY[0x277D3F5D0];
  eventCopy = event;
  v10 = [(PLOperator *)PLSiriAgent entryKeyForType:v4 andName:@"ASR"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withRawData:eventCopy];
  v7 = [eventCopy objectForKeyedSubscript:@"ASR Event"];

  v8 = [(PLSiriAgent *)self convertASREvent:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"ASREvent"];

  [(PLOperator *)self logEntry:v6];
}

- (unint64_t)convertMode:(id)mode
{
  v9 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Location"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"Person"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"Text"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"PhonemeTranscription"])
  {
    v4 = 3;
  }

  else
  {
    v5 = PLLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = modeCopy;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Unknown Dictation mode %@", &v7, 0xCu);
    }

    v4 = 4;
  }

  return v4;
}

- (unint64_t)convertRecognition:(id)recognition
{
  v9 = *MEMORY[0x277D85DE8];
  recognitionCopy = recognition;
  if ([recognitionCopy isEqualToString:@"on-device"])
  {
    v4 = 0;
  }

  else if ([recognitionCopy isEqualToString:@"server"])
  {
    v4 = 1;
  }

  else
  {
    v5 = PLLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = recognitionCopy;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Unknown/Other Dictation recognition %@", &v7, 0xCu);
    }

    v4 = 2;
  }

  return v4;
}

- (unint64_t)convertSiriEvent:(id)event
{
  v9 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy isEqualToString:@"Dictation start"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"Dictation stop"])
  {
    v4 = 0;
  }

  else if ([eventCopy isEqualToString:@"Dictation endSession"])
  {
    v4 = 2;
  }

  else if ([eventCopy isEqualToString:@"Dictation pause"])
  {
    v4 = 4;
  }

  else if ([eventCopy isEqualToString:@"Dictation resume"])
  {
    v4 = 3;
  }

  else
  {
    v5 = PLLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = eventCopy;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Unknown/Other Dictation siriEvent %@", &v7, 0xCu);
    }

    v4 = 5;
  }

  return v4;
}

- (void)logEventForwardDictationConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [(PLOperator *)PLSiriAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DictationConnection"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:connectionCopy];
  v6 = [connectionCopy objectForKeyedSubscript:@"Siri Event"];
  v7 = [(PLSiriAgent *)self convertSiriEvent:v6];

  if (v7 != 5)
  {
    if (v7 == 1)
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [connectionCopy objectForKeyedSubscript:@"mode"];
      v10 = [v8 numberWithUnsignedInteger:{-[PLSiriAgent convertMode:](self, "convertMode:", v9)}];
      [v5 setObject:v10 forKeyedSubscript:@"Mode"];

      v11 = MEMORY[0x277CCABB0];
      v12 = [connectionCopy objectForKeyedSubscript:@"recognition"];
      v13 = [v11 numberWithUnsignedInteger:{-[PLSiriAgent convertRecognition:](self, "convertRecognition:", v12)}];
      [v5 setObject:v13 forKeyedSubscript:@"Recognition"];
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    [v5 setObject:v14 forKeyedSubscript:@"SiriEvent"];

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventForwardSiriConfig:(id)config
{
  v4 = *MEMORY[0x277D3F5D0];
  configCopy = config;
  v7 = [(PLOperator *)PLSiriAgent entryKeyForType:v4 andName:@"SiriConfig"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:configCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventIntervalSelfTriggerSuppression:(id)suppression
{
  v4 = *MEMORY[0x277D3F5D8];
  suppressionCopy = suppression;
  v20 = [(PLOperator *)PLSiriAgent entryKeyForType:v4 andName:@"SelfTriggerSuppression"];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [suppressionCopy objectForKeyedSubscript:@"StartTime"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic = [v8 convertFromSystemToMonotonic];

  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v20 withDate:convertFromSystemToMonotonic];
  v11 = [suppressionCopy objectForKeyedSubscript:@"PhoneCallConnected"];
  [v10 setObject:v11 forKeyedSubscript:@"AudioClientType"];

  v12 = [suppressionCopy objectForKeyedSubscript:@"AudioPlaybackRouteType"];
  [v10 setObject:v12 forKeyedSubscript:@"AudioPlaybackRouteType"];

  v13 = [suppressionCopy objectForKeyedSubscript:@"AudioSourceType"];
  [v10 setObject:v13 forKeyedSubscript:@"AudioSourceType"];

  v14 = [suppressionCopy objectForKeyedSubscript:@"DurationSec"];
  [v10 setObject:v14 forKeyedSubscript:@"DurationSec"];

  v15 = [suppressionCopy objectForKeyedSubscript:@"NumSelfTriggersInInterval"];
  [v10 setObject:v15 forKeyedSubscript:@"NumSelfTriggers"];

  v16 = MEMORY[0x277CBEAA8];
  v17 = [suppressionCopy objectForKeyedSubscript:@"StopTime"];

  [v17 doubleValue];
  v18 = [v16 dateWithTimeIntervalSince1970:?];

  convertFromSystemToMonotonic2 = [v18 convertFromSystemToMonotonic];

  [v10 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"timestampEnd"];
  [(PLOperator *)self logEntry:v10];
}

@end