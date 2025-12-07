@interface PLInitialSyncAgent
+ (id)entryEventIntervalDefinitions;
+ (void)load;
- (void)initOperatorDependancies;
- (void)logInitialSyncActivityFromEvent:(id)event;
- (void)logInitialSyncFromEvent:(id)event;
@end

@implementation PLInitialSyncAgent

+ (void)load
{
  v2 = MEMORY[0x277D3F170];
  v3 = objc_opt_class();

  [v2 registerOperator:v3];
}

+ (id)entryEventIntervalDefinitions
{
  v39[2] = *MEMORY[0x277D85DE8];
  v38[0] = @"InitialSync";
  v35 = *MEMORY[0x277D3F4E8];
  v2 = v35;
  v33 = *MEMORY[0x277D3F568];
  v3 = v33;
  v34 = &unk_282C1C498;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v37[0] = v24;
  v36 = *MEMORY[0x277D3F540];
  v4 = v36;
  v31[0] = @"count";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v32[0] = commonTypeDict_IntegerFormat;
  v31[1] = @"timestampEnd";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v32[1] = commonTypeDict_DateFormat;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v37[1] = v19;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v35 count:2];
  v38[1] = @"InitialSyncActivity";
  v39[0] = v18;
  v28 = &unk_282C1C498;
  v29[0] = v2;
  v27 = v3;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v29[1] = v4;
  v30[0] = v17;
  v25[0] = @"activityID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v26[0] = commonTypeDict_StringFormat;
  v25[1] = @"errorDescription";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v26[1] = commonTypeDict_StringFormat2;
  v25[2] = @"success";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v26[2] = commonTypeDict_IntegerFormat2;
  v25[3] = @"timestampEnd";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]6 commonTypeDict_DateFormat];
  v26[3] = commonTypeDict_DateFormat2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v30[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v39[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

  return v14;
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v3 = objc_alloc(MEMORY[0x277D3F270]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__PLInitialSyncAgent_initOperatorDependancies__block_invoke;
    v6[3] = &unk_27825A1D8;
    v6[4] = self;
    v4 = [v3 initWithOperator:self withRegistration:&unk_282C18468 withBlock:v6];
    xpcHandler = self->_xpcHandler;
    self->_xpcHandler = v4;
  }
}

void __46__PLInitialSyncAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v7 = a5;
  if ([v8 isEqualToString:@"InitialSyncActivity"])
  {
    [*(a1 + 32) logInitialSyncActivityFromEvent:v7];
  }

  else if ([v8 isEqualToString:@"InitialSync"])
  {
    [*(a1 + 32) logInitialSyncFromEvent:v7];
  }
}

- (void)logInitialSyncActivityFromEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy objectForKeyedSubscript:@"state"];
  v6 = [(PLOperator *)PLInitialSyncAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"InitialSyncActivity"];
  if ([v5 isEqualToString:@"start"])
  {
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
    v8 = [eventCopy objectForKeyedSubscript:@"activity"];
    [v7 setObject:v8 forKeyedSubscript:@"activityID"];

    [(PLOperator *)self logEntry:v7];
LABEL_10:

    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"end"])
  {
    v9 = objc_msgSend_storage(self);
    v7 = [v9 lastEntryForKey:v6];

    if (v7 && ([v7 objectForKeyedSubscript:@"timestampEnd"], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __54__PLInitialSyncAgent_logInitialSyncActivityFromEvent___block_invoke;
      v17[3] = &unk_278259658;
      v18 = v7;
      v19 = eventCopy;
      [(PLOperator *)self updateEntry:v18 withBlock:v17];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withDate:0];
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [v11 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];

      v13 = [eventCopy objectForKeyedSubscript:@"activity"];
      [v11 setObject:v13 forKeyedSubscript:@"activityID"];

      v14 = [eventCopy objectForKeyedSubscript:@"success"];
      [v11 setObject:v14 forKeyedSubscript:@"success"];

      v15 = [eventCopy objectForKeyedSubscript:@"success"];
      LOBYTE(v14) = [v15 BOOLValue];

      if ((v14 & 1) == 0)
      {
        v16 = [eventCopy objectForKeyedSubscript:@"error"];
        [v11 setObject:v16 forKeyedSubscript:@"errorDescription"];
      }

      [(PLOperator *)self logEntry:v11];
    }

    goto LABEL_10;
  }

LABEL_11:
}

void __54__PLInitialSyncAgent_logInitialSyncActivityFromEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"timestampEnd"];

  v3 = [*(a1 + 40) objectForKeyedSubscript:@"success"];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"success"];

  v4 = [*(a1 + 40) objectForKeyedSubscript:@"success"];
  LOBYTE(v3) = [v4 BOOLValue];

  if ((v3 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"error"];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"errorDescription"];
  }
}

- (void)logInitialSyncFromEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy objectForKeyedSubscript:@"state"];
  v6 = [(PLOperator *)PLInitialSyncAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"InitialSync"];
  if ([v5 isEqualToString:@"start"])
  {
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
    v8 = [eventCopy objectForKeyedSubscript:@"activityCount"];
    [v7 setObject:v8 forKeyedSubscript:@"count"];

    [(PLOperator *)self logEntry:v7];
LABEL_8:

    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"end"])
  {
    v9 = objc_msgSend_storage(self);
    v7 = [v9 lastEntryForKey:v6];

    if (v7 && ([v7 objectForKeyedSubscript:@"timestampEnd"], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __46__PLInitialSyncAgent_logInitialSyncFromEvent___block_invoke;
      v14[3] = &unk_2782591D0;
      v15 = v7;
      [(PLOperator *)self updateEntry:v15 withBlock:v14];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withDate:0];
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [v11 setObject:monotonicDate forKeyedSubscript:@"timestampEnd"];

      v13 = [eventCopy objectForKeyedSubscript:@"activityCount"];
      [v11 setObject:v13 forKeyedSubscript:@"count"];

      [(PLOperator *)self logEntry:v11];
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __46__PLInitialSyncAgent_logInitialSyncFromEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"timestampEnd"];
}

@end