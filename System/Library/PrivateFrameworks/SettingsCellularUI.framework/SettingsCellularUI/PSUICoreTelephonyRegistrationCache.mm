@interface PSUICoreTelephonyRegistrationCache
+ (PSUICoreTelephonyRegistrationCache)sharedInstance;
- (BOOL)IMSStatusSMS:(id)s;
- (BOOL)IMSStatusVoice:(id)voice;
- (BOOL)RCSStatus:(id)status;
- (BOOL)is2GEnabledForContext:(id)context;
- (BOOL)is2GSwitchSupportedForContext:(id)context;
- (PSUICoreTelephonyRegistrationCache)init;
- (id)initPrivate;
- (id)localizedOperatorName:(id)name;
- (id)rejectCauseCode:(id)code;
- (id)supportedDataRates:(id)rates;
- (int64_t)maxDataRate:(id)rate;
- (void)clearCache;
- (void)dataRatesChanged;
- (void)fetch2GSwitchEnabled;
- (void)fetch2GSwitchSupported;
- (void)fetchIMSStatus;
- (void)fetchLocalizedOperatorName;
- (void)fetchMaxDataRate;
- (void)fetchRCSStatus;
- (void)fetchRejectCauseCode;
- (void)fetchSupportedDataRates;
- (void)handleDataUsageChanged;
- (void)imsRegistrationChanged:(id)changed info:(id)info;
- (void)operatorNameChanged:(id)changed name:(id)name;
- (void)set2GEnabled:(BOOL)enabled forContext:(id)context;
- (void)setMaxDataRate:(id)rate dataRate:(int64_t)dataRate;
@end

@implementation PSUICoreTelephonyRegistrationCache

+ (PSUICoreTelephonyRegistrationCache)sharedInstance
{
  if (qword_28156A7B0 != -1)
  {
    dispatch_once(&qword_28156A7B0, &__block_literal_global_19);
  }

  v3 = _MergedGlobals_74;

  return v3;
}

uint64_t __52__PSUICoreTelephonyRegistrationCache_sharedInstance__block_invoke()
{
  _MergedGlobals_74 = [[PSUICoreTelephonyRegistrationCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v11.receiver = self;
  v11.super_class = PSUICoreTelephonyRegistrationCache;
  v2 = [(PSUICoreTelephonyRegistrationCache *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [MEMORY[0x277D4D878] createCTClientSerialQueue:@"registration_cache"];
    v5 = [v3 initWithQueue:v4];
    client = v2->_client;
    v2->_client = v5;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
    [(PSUICoreTelephonyRegistrationCache *)v2 setImsStatusVoiceDict:0];
    [(PSUICoreTelephonyRegistrationCache *)v2 setImsStatusSMSDict:0];
    [(PSUICoreTelephonyRegistrationCache *)v2 setRcsStatusDict:0];
    [(PSUICoreTelephonyRegistrationCache *)v2 setRejectCauseCodeDict:0];
    [(PSUICoreTelephonyRegistrationCache *)v2 setSupportedDataRatesDict:0];
    [(PSUICoreTelephonyRegistrationCache *)v2 setMaxDataRateDict:0];
    [(PSUICoreTelephonyRegistrationCache *)v2 setOperatorNameDict:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_clearCache name:*MEMORY[0x277D76758] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_clearCache name:*MEMORY[0x277D4D888] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_handleDataUsageChanged name:*MEMORY[0x277D4D8A8] object:0];
  }

  return v2;
}

- (PSUICoreTelephonyRegistrationCache)init
{
  v5 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSUICoreTelephonyRegistrationCache init]";
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)clearCache
{
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing registration cache", v5, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setImsStatusVoiceDict:0];
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setImsStatusSMSDict:0];
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setRcsStatusDict:0];
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setRejectCauseCodeDict:0];
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setSupportedDataRatesDict:0];
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setMaxDataRateDict:0];
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setDataRate2GSupportedDict:0];
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setDataRate2GEnabledDict:0];
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setOperatorNameDict:0];
  objc_sync_exit(selfCopy);
}

- (void)handleDataUsageChanged
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setMaxDataRateDict:0];
  v3 = [MEMORY[0x277CCAB88] notificationWithName:@"PSMaxDataRateChangedNotification" object:0];
  getLogger = [(PSUICoreTelephonyRegistrationCache *)selfCopy getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[PSUICoreTelephonyRegistrationCache handleDataUsageChanged]";
    v8 = 2112;
    v9 = @"PSMaxDataRateChangedNotification";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s posting notification %@ from main thread", &v6, 0x16u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter performSelectorOnMainThread:sel_postNotification_ withObject:v3 waitUntilDone:0];

  objc_sync_exit(selfCopy);
}

- (void)fetchIMSStatus
{
  v41 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = "[PSUICoreTelephonyRegistrationCache fetchIMSStatus]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = subscriptionContexts;
  v6 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v6)
  {
    v8 = *v29;
    *&v7 = 136315906;
    v23 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        client = self->_client;
        v27 = 0;
        v12 = [(CoreTelephonyClient *)client getIMSRegistrationStatus:v10 error:&v27, v23];
        v13 = v27;
        getLogger2 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v15 = os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 136315650;
            v33 = "[PSUICoreTelephonyRegistrationCache fetchIMSStatus]";
            v34 = 2112;
            v35 = v13;
            v36 = 2112;
            v37 = v10;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@, %@", buf, 0x20u);
          }
        }

        else
        {
          if (v15)
          {
            if ([v12 isRegisteredForVoice])
            {
              v16 = @"YES";
            }

            else
            {
              v16 = @"NO";
            }

            isRegisteredForSMS = [v12 isRegisteredForSMS];
            *buf = v23;
            v18 = @"NO";
            if (isRegisteredForSMS)
            {
              v18 = @"YES";
            }

            v33 = "[PSUICoreTelephonyRegistrationCache fetchIMSStatus]";
            v34 = 2112;
            v35 = v16;
            v36 = 2112;
            v37 = v18;
            v38 = 2112;
            v39 = v10;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %@, %@, %@", buf, 0x2Au);
          }

          v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isRegisteredForVoice")}];
          v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString slotID](v10, "slotID")}];
          [v25 setObject:v19 forKeyedSubscript:v20];

          getLogger2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isRegisteredForSMS")}];
          v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString slotID](v10, "slotID")}];
          [v24 setObject:getLogger2 forKeyedSubscript:v21];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v6);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setImsStatusVoiceDict:v25];
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setImsStatusSMSDict:v24];
  objc_sync_exit(selfCopy);
}

- (BOOL)IMSStatusVoice:(id)voice
{
  voiceCopy = voice;
  imsStatusVoiceDict = [(PSUICoreTelephonyRegistrationCache *)self imsStatusVoiceDict];

  if (!imsStatusVoiceDict)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchIMSStatus];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  imsStatusVoiceDict2 = [(PSUICoreTelephonyRegistrationCache *)selfCopy imsStatusVoiceDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(voiceCopy, "slotID")}];
  v9 = [imsStatusVoiceDict2 objectForKeyedSubscript:v8];

  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  objc_sync_exit(selfCopy);
  return bOOLValue;
}

- (BOOL)IMSStatusSMS:(id)s
{
  sCopy = s;
  imsStatusSMSDict = [(PSUICoreTelephonyRegistrationCache *)self imsStatusSMSDict];

  if (!imsStatusSMSDict)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchIMSStatus];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  imsStatusSMSDict2 = [(PSUICoreTelephonyRegistrationCache *)selfCopy imsStatusSMSDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(sCopy, "slotID")}];
  v9 = [imsStatusSMSDict2 objectForKeyedSubscript:v8];

  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  objc_sync_exit(selfCopy);
  return bOOLValue;
}

- (void)fetchRCSStatus
{
  v33 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Fetching RCS status", buf, 2u);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = subscriptionContexts;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v9 = *v25;
    *&v8 = 138412546;
    v21 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        client = self->_client;
        v23 = 0;
        v13 = [(CoreTelephonyClient *)client getSystemConfiguration:v11 withError:&v23, v21];
        v14 = v23;
        if (v14)
        {
          getLogger2 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
          if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v29 = v14;
            v30 = 2112;
            v31 = v11;
            _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "RCS status fetch failed: %@, %@", buf, 0x16u);
          }
        }

        else
        {
          operationStatus = [v13 operationStatus];
          registrationState = [operationStatus registrationState];

          getLogger3 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
          if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v29 = v11;
            v30 = 2048;
            v31 = registrationState;
            _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "RCS status fetch succeeded, context: %@, registration state: %ld", buf, 0x16u);
          }

          if (registrationState == 1)
          {
            [MEMORY[0x277CCABB0] numberWithBool:1];
          }

          else
          {
            [MEMORY[0x277CCABB0] numberWithBool:0];
          }
          getLogger2 = ;
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "slotID")}];
          [v22 setObject:getLogger2 forKeyedSubscript:v19];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setRcsStatusDict:v22];
  objc_sync_exit(selfCopy);
}

- (BOOL)RCSStatus:(id)status
{
  statusCopy = status;
  rcsStatusDict = [(PSUICoreTelephonyRegistrationCache *)self rcsStatusDict];

  if (!rcsStatusDict)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchRCSStatus];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  rcsStatusDict2 = [(PSUICoreTelephonyRegistrationCache *)selfCopy rcsStatusDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(statusCopy, "slotID")}];
  v9 = [rcsStatusDict2 objectForKeyedSubscript:v8];

  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  objc_sync_exit(selfCopy);
  return bOOLValue;
}

- (void)imsRegistrationChanged:(id)changed info:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  infoCopy = info;
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[PSUICoreTelephonyRegistrationCache imsRegistrationChanged:info:]";
    v12 = 2112;
    v13 = changedCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s updating: %@", &v10, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setImsStatusVoiceDict:0];
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setImsStatusSMSDict:0];
  objc_sync_exit(selfCopy);
}

- (void)fetchRejectCauseCode
{
  v32 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[PSUICoreTelephonyRegistrationCache fetchRejectCauseCode]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = subscriptionContexts;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v6)
  {
    v8 = *v22;
    *&v7 = 136315650;
    v17 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        client = self->_client;
        v20 = 0;
        v12 = [(CoreTelephonyClient *)client getRejectCauseCode:v10 error:&v20, v17];
        v13 = v20;
        getLogger2 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v15 = os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 136315394;
            v26 = "[PSUICoreTelephonyRegistrationCache fetchRejectCauseCode]";
            v27 = 2112;
            v28 = v13;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v15)
          {
            *buf = v17;
            v26 = "[PSUICoreTelephonyRegistrationCache fetchRejectCauseCode]";
            v27 = 2112;
            v28 = v12;
            v29 = 2112;
            v30 = v10;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %@, %@", buf, 0x20u);
          }

          getLogger2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "slotID")}];
          [v18 setObject:v12 forKeyedSubscript:getLogger2];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v6);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setRejectCauseCodeDict:v18];
  objc_sync_exit(selfCopy);
}

- (id)rejectCauseCode:(id)code
{
  codeCopy = code;
  rejectCauseCodeDict = [(PSUICoreTelephonyRegistrationCache *)self rejectCauseCodeDict];

  if (!rejectCauseCodeDict)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchRejectCauseCode];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  rejectCauseCodeDict2 = [(PSUICoreTelephonyRegistrationCache *)selfCopy rejectCauseCodeDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(codeCopy, "slotID")}];
  v9 = [rejectCauseCodeDict2 objectForKeyedSubscript:v8];

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)fetchSupportedDataRates
{
  v35 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[PSUICoreTelephonyRegistrationCache fetchSupportedDataRates]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = subscriptionContexts;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v6)
  {
    v8 = *v25;
    *&v7 = 136315650;
    v20 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        client = self->_client;
        v23 = 0;
        v12 = [(CoreTelephonyClient *)client getSupportedDataRates:v10 error:&v23, v20];
        v13 = v23;
        getLogger2 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v15 = os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 136315394;
            v29 = "[PSUICoreTelephonyRegistrationCache fetchSupportedDataRates]";
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v15)
          {
            rates = [v12 rates];
            *buf = v20;
            v29 = "[PSUICoreTelephonyRegistrationCache fetchSupportedDataRates]";
            v30 = 2112;
            v31 = rates;
            v32 = 2112;
            v33 = v10;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %@, %@", buf, 0x20u);
          }

          getLogger2 = [v12 rates];
          v17 = [getLogger2 copy];
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "slotID")}];
          [v21 setObject:v17 forKeyedSubscript:v18];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v6);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setSupportedDataRatesDict:v21];
  objc_sync_exit(selfCopy);
}

- (id)supportedDataRates:(id)rates
{
  ratesCopy = rates;
  supportedDataRatesDict = [(PSUICoreTelephonyRegistrationCache *)self supportedDataRatesDict];

  if (!supportedDataRatesDict)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchSupportedDataRates];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  supportedDataRatesDict2 = [(PSUICoreTelephonyRegistrationCache *)selfCopy supportedDataRatesDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(ratesCopy, "slotID")}];
  v9 = [supportedDataRatesDict2 objectForKeyedSubscript:v8];

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)fetchMaxDataRate
{
  v34 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[PSUICoreTelephonyRegistrationCache fetchMaxDataRate]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = subscriptionContexts;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v7)
  {
    v9 = *v24;
    *&v8 = 136315650;
    v20 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        client = self->_client;
        v22 = 0;
        v13 = [(CoreTelephonyClient *)client getMaxDataRate:v11 error:&v22, v20];
        v14 = v22;
        getLogger2 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v16 = os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            *buf = 136315394;
            v28 = "[PSUICoreTelephonyRegistrationCache fetchMaxDataRate]";
            v29 = 2112;
            v30 = v14;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v16)
          {
            v17 = CTDataRateAsString();
            *buf = v20;
            v28 = "[PSUICoreTelephonyRegistrationCache fetchMaxDataRate]";
            v29 = 2080;
            v30 = v17;
            v31 = 2112;
            v32 = v11;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %s, %@", buf, 0x20u);
          }

          getLogger2 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
          v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "slotID")}];
          [v21 setObject:getLogger2 forKeyedSubscript:v18];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setMaxDataRateDict:v21];
  objc_sync_exit(selfCopy);
}

- (int64_t)maxDataRate:(id)rate
{
  rateCopy = rate;
  maxDataRateDict = [(PSUICoreTelephonyRegistrationCache *)self maxDataRateDict];

  if (!maxDataRateDict)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchMaxDataRate];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  maxDataRateDict2 = [(PSUICoreTelephonyRegistrationCache *)selfCopy maxDataRateDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(rateCopy, "slotID")}];
  v9 = [maxDataRateDict2 objectForKeyedSubscript:v8];

  objc_sync_exit(selfCopy);
  integerValue = [v9 integerValue];

  return integerValue;
}

- (void)setMaxDataRate:(id)rate dataRate:(int64_t)dataRate
{
  v22 = *MEMORY[0x277D85DE8];
  rateCopy = rate;
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[PSUICoreTelephonyRegistrationCache setMaxDataRate:dataRate:]";
    v18 = 2048;
    dataRateCopy2 = dataRate;
    v20 = 2112;
    v21 = rateCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s setting: %li, %@", buf, 0x20u);
  }

  objc_initWeak(&location, self);
  v8 = [(CoreTelephonyClient *)self->_client setMaxDataRate:rateCopy rate:dataRate];
  if (v8)
  {
    getLogger2 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[PSUICoreTelephonyRegistrationCache setMaxDataRate:dataRate:]";
      v18 = 2112;
      dataRateCopy2 = v8;
      _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "%s set failed: %@", buf, 0x16u);
    }
  }

  else
  {
    getLogger3 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
    if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "[PSUICoreTelephonyRegistrationCache setMaxDataRate:dataRate:]";
      v18 = 2048;
      dataRateCopy2 = dataRate;
      v20 = 2112;
      v21 = rateCopy;
      _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "%s set succeeded: %li, %@", buf, 0x20u);
    }

    getLogger2 = objc_loadWeakRetained(&location);
    objc_sync_enter(getLogger2);
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:dataRate];
    v12 = objc_loadWeakRetained(&location);
    maxDataRateDict = [v12 maxDataRateDict];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(rateCopy, "slotID")}];
    [maxDataRateDict setObject:v11 forKeyedSubscript:v14];

    objc_sync_exit(getLogger2);
  }

  objc_destroyWeak(&location);
}

- (void)dataRatesChanged
{
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Data Rates Changed. Clearing maxDataRate & supportedDataRates cache.", v6, 2u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setMaxDataRateDict:0];
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setSupportedDataRatesDict:0];
  objc_sync_exit(selfCopy);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"PSMaxDataRateChangedNotification" object:0];
}

- (void)fetch2GSwitchSupported
{
  v34 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[PSUICoreTelephonyRegistrationCache fetch2GSwitchSupported]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = subscriptionContexts;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v8 = *v24;
    *&v7 = 136315650;
    v19 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        client = self->_client;
        v22 = 0;
        v12 = [(CoreTelephonyClient *)client getRegulatedRatsSwitchEnabledSync:v10 error:&v22, v19];
        v13 = v22;
        getLogger2 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v15 = os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 136315394;
            v28 = "[PSUICoreTelephonyRegistrationCache fetch2GSwitchSupported]";
            v29 = 2112;
            v30 = v13;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v15)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithBool:v12];
            *buf = v19;
            v28 = "[PSUICoreTelephonyRegistrationCache fetch2GSwitchSupported]";
            v29 = 2112;
            v30 = v16;
            v31 = 2112;
            v32 = v10;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %@, %@", buf, 0x20u);
          }

          getLogger2 = [MEMORY[0x277CCABB0] numberWithBool:v12];
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "slotID")}];
          [v20 setObject:getLogger2 forKeyedSubscript:v17];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v6);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setDataRate2GSupportedDict:v20];
  objc_sync_exit(selfCopy);
}

- (void)fetch2GSwitchEnabled
{
  v34 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[PSUICoreTelephonyRegistrationCache fetch2GSwitchEnabled]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = subscriptionContexts;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v8 = *v24;
    *&v7 = 136315650;
    v19 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        client = self->_client;
        v22 = 0;
        v12 = [(CoreTelephonyClient *)client getRegulatedRatsUserPreferenceSync:v10 error:&v22, v19];
        v13 = v22;
        getLogger2 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v15 = os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 136315394;
            v28 = "[PSUICoreTelephonyRegistrationCache fetch2GSwitchEnabled]";
            v29 = 2112;
            v30 = v13;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v15)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithBool:v12];
            *buf = v19;
            v28 = "[PSUICoreTelephonyRegistrationCache fetch2GSwitchEnabled]";
            v29 = 2112;
            v30 = v16;
            v31 = 2112;
            v32 = v10;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %@, %@", buf, 0x20u);
          }

          getLogger2 = [MEMORY[0x277CCABB0] numberWithBool:v12];
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "slotID")}];
          [v20 setObject:getLogger2 forKeyedSubscript:v17];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v6);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setDataRate2GEnabledDict:v20];
  objc_sync_exit(selfCopy);
}

- (BOOL)is2GSwitchSupportedForContext:(id)context
{
  contextCopy = context;
  dataRate2GSupportedDict = [(PSUICoreTelephonyRegistrationCache *)self dataRate2GSupportedDict];

  if (!dataRate2GSupportedDict)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetch2GSwitchSupported];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dataRate2GSupportedDict2 = [(PSUICoreTelephonyRegistrationCache *)selfCopy dataRate2GSupportedDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
  v9 = [dataRate2GSupportedDict2 objectForKeyedSubscript:v8];

  objc_sync_exit(selfCopy);
  LOBYTE(selfCopy) = [v9 BOOLValue];

  return selfCopy;
}

- (BOOL)is2GEnabledForContext:(id)context
{
  contextCopy = context;
  dataRate2GEnabledDict = [(PSUICoreTelephonyRegistrationCache *)self dataRate2GEnabledDict];

  if (!dataRate2GEnabledDict)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetch2GSwitchEnabled];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dataRate2GEnabledDict2 = [(PSUICoreTelephonyRegistrationCache *)selfCopy dataRate2GEnabledDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "slotID")}];
  v9 = [dataRate2GEnabledDict2 objectForKeyedSubscript:v8];

  objc_sync_exit(selfCopy);
  LOBYTE(selfCopy) = [v9 BOOLValue];

  return selfCopy;
}

- (void)set2GEnabled:(BOOL)enabled forContext:(id)context
{
  enabledCopy = enabled;
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
    *buf = 136315650;
    v16 = "[PSUICoreTelephonyRegistrationCache set2GEnabled:forContext:]";
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = contextCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s setting: %@, %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  client = self->_client;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PSUICoreTelephonyRegistrationCache_set2GEnabled_forContext___block_invoke;
  v11[3] = &unk_279BAA928;
  v11[4] = self;
  v14 = enabledCopy;
  v10 = contextCopy;
  v12 = v10;
  objc_copyWeak(&v13, buf);
  [(CoreTelephonyClient *)client setRegulatedRatsUserPreference:v10 enable:enabledCopy completion:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(buf);
}

void __62__PSUICoreTelephonyRegistrationCache_set2GEnabled_forContext___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) getLogger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[PSUICoreTelephonyRegistrationCache set2GEnabled:forContext:]_block_invoke";
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&dword_2658DE000, WeakRetained, OS_LOG_TYPE_ERROR, "%s set failed: %@", &v12, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
      v7 = *(a1 + 40);
      v12 = 136315650;
      v13 = "[PSUICoreTelephonyRegistrationCache set2GEnabled:forContext:]_block_invoke";
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_2658DE000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%s set succeeded: %@, %@", &v12, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    objc_sync_enter(WeakRetained);
    v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
    v9 = objc_loadWeakRetained((a1 + 48));
    v10 = [v9 dataRate2GEnabledDict];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "slotID")}];
    [v10 setObject:v8 forKeyedSubscript:v11];

    objc_sync_exit(WeakRetained);
  }
}

- (void)fetchLocalizedOperatorName
{
  v32 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[PSUICoreTelephonyRegistrationCache fetchLocalizedOperatorName]";
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s executing fetch", buf, 0xCu);
  }

  mEMORY[0x277D4D868] = [MEMORY[0x277D4D868] sharedInstance];
  subscriptionContexts = [mEMORY[0x277D4D868] subscriptionContexts];

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = subscriptionContexts;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v7)
  {
    v9 = *v22;
    *&v8 = 136315650;
    v18 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        client = self->_client;
        v20 = 0;
        v13 = [(CoreTelephonyClient *)client getLocalizedOperatorName:v11 error:&v20, v18];
        v14 = v20;
        getLogger2 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
        v16 = os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            *buf = 136315394;
            v26 = "[PSUICoreTelephonyRegistrationCache fetchLocalizedOperatorName]";
            v27 = 2112;
            v28 = v14;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch failed: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v16)
          {
            *buf = v18;
            v26 = "[PSUICoreTelephonyRegistrationCache fetchLocalizedOperatorName]";
            v27 = 2114;
            v28 = v13;
            v29 = 2112;
            v30 = v11;
            _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s fetch succeeded: %{public}@, %@", buf, 0x20u);
          }

          getLogger2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "slotID")}];
          [v19 setObject:v13 forKeyedSubscript:getLogger2];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v7);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PSUICoreTelephonyRegistrationCache *)selfCopy setOperatorNameDict:v19];
  objc_sync_exit(selfCopy);
}

- (id)localizedOperatorName:(id)name
{
  nameCopy = name;
  operatorNameDict = [(PSUICoreTelephonyRegistrationCache *)self operatorNameDict];

  if (!operatorNameDict)
  {
    [(PSUICoreTelephonyRegistrationCache *)self fetchLocalizedOperatorName];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  operatorNameDict2 = [(PSUICoreTelephonyRegistrationCache *)selfCopy operatorNameDict];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(nameCopy, "slotID")}];
  v9 = [operatorNameDict2 objectForKeyedSubscript:v8];

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)operatorNameChanged:(id)changed name:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  nameCopy = name;
  getLogger = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[PSUICoreTelephonyRegistrationCache operatorNameChanged:name:]";
    v19 = 2112;
    v20 = changedCopy;
    v21 = 2112;
    v22 = nameCopy;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", buf, 0x20u);
  }

  client = self->_client;
  v16 = 0;
  v10 = [(CoreTelephonyClient *)client getLocalizedOperatorName:changedCopy error:&v16];
  v11 = v16;

  getLogger2 = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
  if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v18 = "[PSUICoreTelephonyRegistrationCache operatorNameChanged:name:]";
    v19 = 2112;
    v20 = changedCopy;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "%s localized name: %@, %@", buf, 0x20u);
  }

  if (!v10 || v11)
  {
    selfCopy = [(PSUICoreTelephonyRegistrationCache *)self getLogger];
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v18 = "[PSUICoreTelephonyRegistrationCache operatorNameChanged:name:]";
      v19 = 2112;
      v20 = changedCopy;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_error_impl(&dword_2658DE000, &selfCopy->super, OS_LOG_TYPE_ERROR, "%s failed to localize operator name: %@, %@, %@", buf, 0x2Au);
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    operatorNameDict = [(PSUICoreTelephonyRegistrationCache *)selfCopy operatorNameDict];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(changedCopy, "slotID")}];
    [operatorNameDict setObject:v10 forKeyedSubscript:v15];

    objc_sync_exit(selfCopy);
  }
}

@end