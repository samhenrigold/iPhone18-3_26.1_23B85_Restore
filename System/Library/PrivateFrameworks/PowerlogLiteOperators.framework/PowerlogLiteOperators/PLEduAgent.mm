@interface PLEduAgent
+ (id)entryEventPointDefinitionMode;
+ (id)entryEventPointDefinitionSyncBubble;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLEduAgent)init;
- (void)initOperatorDependancies;
- (void)logEventPointMode;
@end

@implementation PLEduAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLEduAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"Mode";
  v2 = +[PLEduAgent entryEventPointDefinitionMode];
  v6[1] = @"SyncBubble";
  v7[0] = v2;
  v3 = +[PLEduAgent entryEventPointDefinitionSyncBubble];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

+ (id)entryEventPointDefinitionMode
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1C108;
  v12[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"EduMode";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventPointDefinitionSyncBubble
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D3F4E8];
  v10 = *MEMORY[0x277D3F568];
  v11 = &unk_282C1C118;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277D3F540];
  v8 = @"status";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v9 = commonTypeDict_BoolFormat;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

- (PLEduAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLEduAgent;
    self = [(PLAgent *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__PLEduAgent_initOperatorDependancies__block_invoke;
  v6[3] = &unk_27825A1D8;
  v6[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C179F0 withBlock:v6];
  syncBubbleStatusNotification = self->_syncBubbleStatusNotification;
  self->_syncBubbleStatusNotification = v4;
}

void __38__PLEduAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogEdu();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SYNCBUBBLE STATUS payload=%@", &v10, 0xCu);
  }

  v8 = [(PLOperator *)PLEduAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SyncBubble"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [*(a1 + 32) logEntry:v9];
}

- (void)logEventPointMode
{
  v5 = [(PLOperator *)PLEduAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Mode"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F258], "isEduMode")}];
  [v3 setObject:v4 forKeyedSubscript:@"EduMode"];

  [(PLOperator *)self logEntry:v3];
}

@end