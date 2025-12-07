@interface BRReportManager
+ (id)reporterWithCatergory:(unsigned __int16)catergory;
- (BRRTCPairingReportManager)pairingReportManager;
- (BRReportManager)initWithCategory:(unsigned __int16)category;
- (id)categortyToConfiguration:(unsigned __int16)configuration;
- (void)reportRTCMetric:(id)metric;
@end

@implementation BRReportManager

- (BRReportManager)initWithCategory:(unsigned __int16)category
{
  categoryCopy = category;
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = BRReportManager;
  v4 = [(BRReportManager *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(BRReportManager *)v4 setCategory:categoryCopy];
    v6 = [(BRReportManager *)v5 categortyToConfiguration:categoryCopy];
    [(BRReportManager *)v5 setConfiguration:v6];
  }

  v7 = br_metriccollection_log(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_241ECA000, v7, OS_LOG_TYPE_DEFAULT, "Returning report manager: %@", buf, 0xCu);
  }

  return v5;
}

+ (id)reporterWithCatergory:(unsigned __int16)catergory
{
  v3 = [[self alloc] initWithCategory:catergory];

  return v3;
}

- (void)reportRTCMetric:(id)metric
{
  v29 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  v5 = br_metriccollection_log(metricCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[BRReportManager reportRTCMetric:]";
    _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  dictionaryRepresentation = [metricCopy dictionaryRepresentation];
  allValues = [dictionaryRepresentation allValues];

  v8 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v14 = MEMORY[0x277CCA9B8];
              v24 = *MEMORY[0x277CCA450];
              v25 = @"RTC only accepts NSString, NSNumber, or NSDate as submittable values";
              v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
              v16 = [v14 errorWithDomain:@"BRReportingErrorDomain" code:3 userInfo:v15];
              v17 = v16;

              objc_exception_throw(v16);
            }
          }
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v9);
  }

  configuration = [(BRReportManager *)self configuration];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __35__BRReportManager_reportRTCMetric___block_invoke;
  v18[3] = &unk_278D27388;
  v18[4] = self;
  v19 = metricCopy;
  v13 = metricCopy;
  [BRRTCSession startRTCReportingSessionWithConfiguration:configuration andComplection:v18];
}

void __35__BRReportManager_reportRTCMetric___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) category];
    v9 = [*(a1 + 40) rtcType];
    v10 = [*(a1 + 40) dictionaryRepresentation];
    [v5 sendMessageWithCategory:v8 type:v9 payload:v10 error:0];
  }

  else
  {
    v10 = br_metriccollection_log(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_241ECA000, v10, OS_LOG_TYPE_DEFAULT, "RTC session failed with error: %@", &v11, 0xCu);
    }
  }
}

- (id)categortyToConfiguration:(unsigned __int16)configuration
{
  configurationCopy = configuration;
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_2854117E0;
  v8[1] = &unk_2854117F8;
  v9[0] = @"WatchPairing";
  v9[1] = @"WatchMigration";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:configurationCopy];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (BRRTCPairingReportManager)pairingReportManager
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingReportManager);

  return WeakRetained;
}

@end