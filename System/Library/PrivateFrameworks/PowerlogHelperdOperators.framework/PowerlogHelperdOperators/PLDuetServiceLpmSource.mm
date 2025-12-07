@interface PLDuetServiceLpmSource
+ (id)entryEventForwardDefinitionLpmSourceInformation;
- (PLDuetServiceLpmSource)init;
- (PLService)duetService;
- (void)didReceiveLpmSourceInfoWithPayload:(id)payload withFlag:(signed __int16)flag;
- (void)initOperatorDependanciesLpmSource:(id)source;
@end

@implementation PLDuetServiceLpmSource

- (PLDuetServiceLpmSource)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLDuetServiceLpmSource;
    self = [(PLDuetServiceLpmSource *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)entryEventForwardDefinitionLpmSourceInformation
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v12 = *MEMORY[0x277D3F568];
  v13 = &unk_28714BC08;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[0] = v2;
  v14[1] = *MEMORY[0x277D3F540];
  v10[0] = @"Source";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v10[1] = @"LpmEnabled";
  v11[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v11[1] = commonTypeDict_IntegerFormat;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v8;
}

- (void)initOperatorDependanciesLpmSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy && !+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    [(PLDuetServiceLpmSource *)self setDuetService:sourceCopy];
    v5 = objc_alloc(MEMORY[0x277D3F270]);
    duetService = [(PLDuetServiceLpmSource *)self duetService];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__PLDuetServiceLpmSource_initOperatorDependanciesLpmSource___block_invoke;
    v12[3] = &unk_279A5BCB8;
    v12[4] = self;
    v7 = [v5 initWithOperator:duetService withRegistration:&unk_28714B010 withBlock:v12];
    [(PLDuetServiceLpmSource *)self setLpmEnabledXPCListener:v7];

    v8 = objc_alloc(MEMORY[0x277D3F270]);
    duetService2 = [(PLDuetServiceLpmSource *)self duetService];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__PLDuetServiceLpmSource_initOperatorDependanciesLpmSource___block_invoke_2;
    v11[3] = &unk_279A5BCB8;
    v11[4] = self;
    v10 = [v8 initWithOperator:duetService2 withRegistration:&unk_28714B038 withBlock:v11];
    [(PLDuetServiceLpmSource *)self setLpmDisabledXPCListener:v10];
  }
}

- (void)didReceiveLpmSourceInfoWithPayload:(id)payload withFlag:(signed __int16)flag
{
  flagCopy = flag;
  payloadCopy = payload;
  if (payloadCopy)
  {
    duetService = [(PLDuetServiceLpmSource *)self duetService];

    if (duetService)
    {
      v9 = PLLogDuetServiceLpmSource(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLDuetServiceLpmSource didReceiveLpmSourceInfoWithPayload:payloadCopy withFlag:v9];
      }

      v10 = objc_alloc(MEMORY[0x277D3F190]);
      v11 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LpmSourceInformation"];
      v12 = [v10 initWithEntryKey:v11];

      v13 = [payloadCopy objectForKeyedSubscript:@"source"];
      [v12 setObject:v13 forKeyedSubscript:@"Source"];
      v14 = [MEMORY[0x277CCABB0] numberWithShort:flagCopy];
      [v12 setObject:v14 forKeyedSubscript:@"LpmEnabled"];

      duetService2 = [(PLDuetServiceLpmSource *)self duetService];

      if (duetService2)
      {
        duetService3 = [(PLDuetServiceLpmSource *)self duetService];
        [duetService3 logEntry:v12];
      }

      v17 = objc_opt_new();
      if (flagCopy == 1)
      {
        v18 = @"lpm.enabledCount.";
      }

      else
      {
        v18 = @"lpm.disabledCount.";
      }

      if (flagCopy == 1)
      {
        v19 = @"enabled";
      }

      else
      {
        v19 = @"disabled";
      }

      v20 = [@"com.apple.power." stringByAppendingString:v18];
      [v17 setObject:v19 forKeyedSubscript:@"state"];
      MEMORY[0x25F8D18D0]([v20 stringByAppendingString:v13], 1);
      [v17 setObject:v13 forKeyedSubscript:@"source"];
      v22 = v17;
      v21 = v17;
      AnalyticsSendEventLazy();
    }
  }
}

- (PLService)duetService
{
  WeakRetained = objc_loadWeakRetained(&self->_duetService);

  return WeakRetained;
}

- (void)didReceiveLpmSourceInfoWithPayload:(uint64_t)a1 withFlag:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "didReceiveLpmSourceInfoWithPayload payload=%@", &v2, 0xCu);
}

@end