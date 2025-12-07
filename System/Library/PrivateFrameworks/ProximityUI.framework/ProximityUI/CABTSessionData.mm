@interface CABTSessionData
- (CABTSessionData)init;
- (void)configure:(id)configure withOwner:(BOOL)owner;
- (void)configureComplete:(id)complete withTxPower:(int)power;
- (void)error:(id)error;
- (void)logData;
@end

@implementation CABTSessionData

- (CABTSessionData)init
{
  v5.receiver = self;
  v5.super_class = CABTSessionData;
  v2 = [(CABTSessionData *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CABTSessionData *)v2 setNumberOfErrorEvents:v3];

    [(CABTSessionData *)v2 setTxPower:4294967096];
  }

  return v2;
}

- (void)configure:(id)configure withOwner:(BOOL)owner
{
  ownerCopy = owner;
  configureCopy = configure;
  [(CABTSessionData *)self setIsOwner:ownerCopy];
  [(CABTSessionData *)self setConfigureEvent:configureCopy];
}

- (void)configureComplete:(id)complete withTxPower:(int)power
{
  v4 = *&power;
  completeCopy = complete;
  [(CABTSessionData *)self setConfigureCompleteEvent:?];
  [(CABTSessionData *)self setTxPower:v4];
}

- (void)error:(id)error
{
  v17[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = MEMORY[0x277CCABB0];
  numberOfErrorEvents = [(CABTSessionData *)self numberOfErrorEvents];
  v7 = [v5 numberWithInt:{objc_msgSend(numberOfErrorEvents, "intValue") + 1}];
  [(CABTSessionData *)self setNumberOfErrorEvents:v7];

  v16[0] = @"status";
  v8 = [errorCopy objectForKeyedSubscript:?];
  v16[1] = @"errorDescription";
  v17[0] = v8;
  v9 = [errorCopy objectForKeyedSubscript:?];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
  productUUID = [(CABTSessionData *)self productUUID];
  LOBYTE(v9) = productUUID == 0;

  if ((v9 & 1) == 0)
  {
    productUUID2 = [(CABTSessionData *)self productUUID];
    uUIDString = [productUUID2 UUIDString];
    [v11 setObject:uUIDString forKeyedSubscript:@"ProductUUID"];
  }

  v15 = v11;
  AnalyticsSendEventLazy();
}

- (void)logData
{
  v31[5] = *MEMORY[0x277D85DE8];
  configureEvent = [(CABTSessionData *)self configureEvent];

  if (configureEvent)
  {
    configureEvent2 = [(CABTSessionData *)self configureEvent];
    v5 = [configureEvent2 objectForKeyedSubscript:@"timeElapsed"];
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  configureCompleteEvent = [(CABTSessionData *)self configureCompleteEvent];

  if (configureCompleteEvent)
  {
    configureCompleteEvent2 = [(CABTSessionData *)self configureCompleteEvent];
    v10 = [configureCompleteEvent2 objectForKeyedSubscript:@"timeElapsed"];
    [v10 doubleValue];
    v12 = v11 - v7;
  }

  else
  {
    v12 = -1.0;
  }

  deinitEvent = [(CABTSessionData *)self deinitEvent];

  if (deinitEvent)
  {
    deinitEvent2 = [(CABTSessionData *)self deinitEvent];
    v15 = [deinitEvent2 objectForKeyedSubscript:@"timeElapsed"];
    [v15 doubleValue];
    v17 = v16 - v7;
  }

  else
  {
    v17 = -1.0;
  }

  v18 = MEMORY[0x277CBEB38];
  v30[0] = @"TimeToConfigure";
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v31[0] = v19;
  v30[1] = @"SessionDuration";
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  v31[1] = v20;
  v30[2] = @"NumberOfErrorEvents";
  numberOfErrorEvents = [(CABTSessionData *)self numberOfErrorEvents];
  v31[2] = numberOfErrorEvents;
  v30[3] = @"IsOwner";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[CABTSessionData isOwner](self, "isOwner")}];
  v31[3] = v22;
  v30[4] = @"TxPower";
  v23 = [MEMORY[0x277CCABB0] numberWithInt:{-[CABTSessionData txPower](self, "txPower")}];
  v31[4] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:5];
  v25 = [v18 dictionaryWithDictionary:v24];

  productUUID = [(CABTSessionData *)self productUUID];
  LOBYTE(v19) = productUUID == 0;

  if ((v19 & 1) == 0)
  {
    productUUID2 = [(CABTSessionData *)self productUUID];
    uUIDString = [productUUID2 UUIDString];
    [v25 setObject:uUIDString forKeyedSubscript:@"ProductUUID"];
  }

  v29 = v25;
  AnalyticsSendEventLazy();
}

@end