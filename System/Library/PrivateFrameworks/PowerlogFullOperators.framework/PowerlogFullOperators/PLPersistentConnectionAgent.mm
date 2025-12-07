@interface PLPersistentConnectionAgent
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLPersistentConnectionAgent)init;
- (void)log;
- (void)logEventForwardConfig;
- (void)logEventPointCache;
@end

@implementation PLPersistentConnectionAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLPersistentConnectionAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = @"Cache";
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_2870FEF10;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"CacheId";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v14[0] = commonTypeDict_StringFormat;
  v13[1] = @"CacheInterval";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v14[1] = commonTypeDict_IntegerFormat;
  v13[2] = @"CacheAge";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v14[2] = commonTypeDict_IntegerFormat2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  return v11;
}

+ (id)entryEventForwardDefinitions
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = @"Config";
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_2870FEF10;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"Enabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v11[1] = @"PollingInterval";
  v12[0] = commonTypeDict_BoolFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  return v9;
}

- (PLPersistentConnectionAgent)init
{
  v18.receiver = self;
  v18.super_class = PLPersistentConnectionAgent;
  v2 = [(PLAgent *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D3F160]);
    v4 = *MEMORY[0x277D3A198];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __35__PLPersistentConnectionAgent_init__block_invoke;
    v16[3] = &unk_279A58F10;
    v5 = v2;
    v17 = v5;
    v6 = [v3 initWithOperator:v5 forNotification:v4 requireState:0 withBlock:v16];
    intervalChangedNotification = v5->_intervalChangedNotification;
    v5->_intervalChangedNotification = v6;

    v8 = objc_alloc(MEMORY[0x277D3F160]);
    v9 = *MEMORY[0x277D3A1B0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __35__PLPersistentConnectionAgent_init__block_invoke_37;
    v14[3] = &unk_279A58F10;
    v10 = v5;
    v15 = v10;
    v11 = [v8 initWithOperator:v10 forNotification:v9 requireState:0 withBlock:v14];
    preferencesChangedNotification = v10->_preferencesChangedNotification;
    v10->_preferencesChangedNotification = v11;
  }

  return v2;
}

uint64_t __35__PLPersistentConnectionAgent_init__block_invoke(uint64_t a1)
{
  v2 = PLLogPersistentConnection(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __35__PLPersistentConnectionAgent_init__block_invoke_cold_1(v2);
  }

  return [*(a1 + 32) log];
}

uint64_t __35__PLPersistentConnectionAgent_init__block_invoke_37(uint64_t a1)
{
  v2 = PLLogPersistentConnection(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __35__PLPersistentConnectionAgent_init__block_invoke_37_cold_1(v2);
  }

  return [*(a1 + 32) log];
}

- (void)log
{
  [(PLPersistentConnectionAgent *)self logEventForwardConfig];

  [(PLPersistentConnectionAgent *)self logEventPointCache];
}

- (void)logEventPointCache
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_25EE16000, a2, OS_LOG_TYPE_DEBUG, "Cache = %@", &v2, 0xCu);
}

- (void)logEventForwardConfig
{
  v6 = [(PLOperator *)PLPersistentConnectionAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Config"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLPersistentConnectionAgent pushEnabled](self, "pushEnabled")}];
  [v3 setObject:v4 forKeyedSubscript:@"Enabled"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PLPersistentConnectionAgent pollingInterval](self, "pollingInterval")}];
  [v3 setObject:v5 forKeyedSubscript:@"PollingInterval"];

  [(PLOperator *)self logEntry:v3];
}

@end