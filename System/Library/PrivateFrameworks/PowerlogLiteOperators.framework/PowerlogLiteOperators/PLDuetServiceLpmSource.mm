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
  v13 = &unk_282C1C1B8;
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
  if (sourceCopy && ([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    [(PLDuetServiceLpmSource *)self setDuetService:sourceCopy];
    v5 = objc_alloc(MEMORY[0x277D3F270]);
    duetService = [(PLDuetServiceLpmSource *)self duetService];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__PLDuetServiceLpmSource_initOperatorDependanciesLpmSource___block_invoke;
    v12[3] = &unk_27825A1D8;
    v12[4] = self;
    v7 = [v5 initWithOperator:duetService withRegistration:&unk_282C17CE8 withBlock:v12];
    [(PLDuetServiceLpmSource *)self setLpmEnabledXPCListener:v7];

    v8 = objc_alloc(MEMORY[0x277D3F270]);
    duetService2 = [(PLDuetServiceLpmSource *)self duetService];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__PLDuetServiceLpmSource_initOperatorDependanciesLpmSource___block_invoke_2;
    v11[3] = &unk_27825A1D8;
    v11[4] = self;
    v10 = [v8 initWithOperator:duetService2 withRegistration:&unk_282C17D10 withBlock:v11];
    [(PLDuetServiceLpmSource *)self setLpmDisabledXPCListener:v10];
  }
}

- (void)didReceiveLpmSourceInfoWithPayload:(id)payload withFlag:(signed __int16)flag
{
  flagCopy = flag;
  v24 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if (payloadCopy)
  {
    duetService = [(PLDuetServiceLpmSource *)self duetService];

    if (duetService)
    {
      v8 = PLLogDuetServiceLpmSource();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = payloadCopy;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "didReceiveLpmSourceInfoWithPayload payload=%@", buf, 0xCu);
      }

      v9 = objc_alloc(MEMORY[0x277D3F190]);
      v10 = [(PLOperator *)PLDuetService entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LpmSourceInformation"];
      v11 = [v9 initWithEntryKey:v10];

      v12 = [payloadCopy objectForKeyedSubscript:@"source"];
      [v11 setObject:v12 forKeyedSubscript:@"Source"];
      v13 = [MEMORY[0x277CCABB0] numberWithShort:flagCopy];
      [v11 setObject:v13 forKeyedSubscript:@"LpmEnabled"];

      duetService2 = [(PLDuetServiceLpmSource *)self duetService];

      if (duetService2)
      {
        duetService3 = [(PLDuetServiceLpmSource *)self duetService];
        [duetService3 logEntry:v11];
      }

      v16 = objc_opt_new();
      if (flagCopy == 1)
      {
        v17 = @"lpm.enabledCount.";
      }

      else
      {
        v17 = @"lpm.disabledCount.";
      }

      if (flagCopy == 1)
      {
        v18 = @"enabled";
      }

      else
      {
        v18 = @"disabled";
      }

      v19 = [@"com.apple.power." stringByAppendingString:v17];
      [v16 setObject:v18 forKeyedSubscript:@"state"];
      MEMORY[0x21CEDCD40]([v19 stringByAppendingString:v12], 1);
      [v16 setObject:v12 forKeyedSubscript:@"source"];
      v21 = v16;
      v20 = v16;
      AnalyticsSendEventLazy();
    }
  }
}

- (PLService)duetService
{
  WeakRetained = objc_loadWeakRetained(&self->_duetService);

  return WeakRetained;
}

@end