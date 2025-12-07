@interface BRRTCMigrationReportManager
- (BRRTCMigrationReportManager)initWithPairingID:(id)d;
- (id)_likelyOffendingTransaction;
- (id)_transactionNameFromKey:(id)key;
- (id)formatDate:(id)date;
- (void)addDeviceDetails:(id)details;
- (void)addTransactionPhase:(id)phase withSuccess:(BOOL)success withPairingID:(id)d;
- (void)setErrorCode:(id)code domain:(id)domain description:(id)description;
- (void)setIsAutomation:(BOOL)automation;
- (void)setLastActiveDate:(id)date;
- (void)setMigrationBegan:(BOOL)began;
- (void)setMigrationDeviceUnpairedBecauseKeychainIsOff:(BOOL)off;
- (void)setMigrationDeviceUnpairedBecauseStale:(BOOL)stale;
- (void)setMigrationDeviceUnpairedByUserAction:(BOOL)action;
- (void)setMigrationFailedBTKeysNotSynced:(BOOL)synced;
- (void)setMigrationSucceeded:(BOOL)succeeded;
- (void)setSessionID:(id)d;
- (void)submitMetic;
@end

@implementation BRRTCMigrationReportManager

- (BRRTCMigrationReportManager)initWithPairingID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = BRRTCMigrationReportManager;
  v6 = [(BRRTCMigrationReportManager *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(BRRTCMigrationMetric);
    migrationMetric = v6->_migrationMetric;
    v6->_migrationMetric = v7;

    objc_storeStrong(&v6->_pairingID, d);
  }

  return v6;
}

- (void)addTransactionPhase:(id)phase withSuccess:(BOOL)success withPairingID:(id)d
{
  successCopy = success;
  v20 = *MEMORY[0x277D85DE8];
  phaseCopy = phase;
  v8 = br_metriccollection_log(phaseCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"Failure";
    if (successCopy)
    {
      v9 = @"Success";
    }

    v16 = 138412546;
    v17 = phaseCopy;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_241ECA000, v8, OS_LOG_TYPE_DEFAULT, "Adding transaction phase: %@ with success: %@", &v16, 0x16u);
  }

  transactionPhases = [(BRRTCMigrationMetric *)self->_migrationMetric transactionPhases];
  v11 = [transactionPhases objectForKey:phaseCopy];

  if (v11)
  {
    migrationMetric = br_metriccollection_log(v12);
    if (os_log_type_enabled(migrationMetric, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_241ECA000, migrationMetric, OS_LOG_TYPE_DEFAULT, "migration phase already recorded, skipping...", &v16, 2u);
    }
  }

  else
  {
    migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
    transactionPhases2 = [migrationMetric transactionPhases];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:successCopy];
    [transactionPhases2 setObject:v15 forKey:phaseCopy];
  }
}

- (void)addDeviceDetails:(id)details
{
  detailsCopy = details;
  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setDeviceDetails:detailsCopy];
}

- (void)setIsAutomation:(BOOL)automation
{
  automationCopy = automation;
  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setIsAutomation:automationCopy];
}

- (void)setErrorCode:(id)code domain:(id)domain description:(id)description
{
  v19 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  descriptionCopy = description;
  domainCopy = domain;
  v11 = br_metriccollection_log(domainCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = codeCopy;
    v17 = 2112;
    v18 = descriptionCopy;
    _os_log_impl(&dword_241ECA000, v11, OS_LOG_TYPE_DEFAULT, "Setting migration failure code %@ with description %@", &v15, 0x16u);
  }

  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setMigrationFailureCode:codeCopy];

  migrationMetric2 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric2 setMigrationFailureDomain:domainCopy];

  migrationMetric3 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric3 setMigrationFailureDescription:descriptionCopy];
}

- (void)setMigrationFailedBTKeysNotSynced:(BOOL)synced
{
  syncedCopy = synced;
  v12 = *MEMORY[0x277D85DE8];
  v5 = br_metriccollection_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"is";
    if (syncedCopy)
    {
      v6 = @"not";
    }

    v8 = 136315394;
    v9 = "[BRRTCMigrationReportManager setMigrationFailedBTKeysNotSynced:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "%s %@ synced", &v8, 0x16u);
  }

  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setMigrationFailedBTKeysNotSynced:syncedCopy];
}

- (void)setMigrationDeviceUnpairedBecauseKeychainIsOff:(BOOL)off
{
  offCopy = off;
  v12 = *MEMORY[0x277D85DE8];
  v5 = br_metriccollection_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"not";
    if (offCopy)
    {
      v6 = @"indeed";
    }

    v8 = 136315394;
    v9 = "[BRRTCMigrationReportManager setMigrationDeviceUnpairedBecauseKeychainIsOff:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "%s keychain is %@ off", &v8, 0x16u);
  }

  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setMigrationDeviceUnpairedBecauseKeychainIsOff:offCopy];
}

- (void)setMigrationDeviceUnpairedBecauseStale:(BOOL)stale
{
  staleCopy = stale;
  v12 = *MEMORY[0x277D85DE8];
  v5 = br_metriccollection_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"didn't";
    if (staleCopy)
    {
      v6 = @"did";
    }

    v8 = 136315394;
    v9 = "[BRRTCMigrationReportManager setMigrationDeviceUnpairedBecauseStale:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "%s device %@ unpair", &v8, 0x16u);
  }

  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setMigrationDeviceUnpairedBecauseStale:staleCopy];
}

- (void)setMigrationDeviceUnpairedByUserAction:(BOOL)action
{
  actionCopy = action;
  v12 = *MEMORY[0x277D85DE8];
  v5 = br_metriccollection_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"didn't";
    if (actionCopy)
    {
      v6 = @"did";
    }

    v8 = 136315394;
    v9 = "[BRRTCMigrationReportManager setMigrationDeviceUnpairedByUserAction:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "%s device %@ unpair by user action", &v8, 0x16u);
  }

  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setMigrationDeviceUnpairedByUserAction:actionCopy];
}

- (void)setMigrationSucceeded:(BOOL)succeeded
{
  succeededCopy = succeeded;
  v12 = *MEMORY[0x277D85DE8];
  v5 = br_metriccollection_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"did not";
    if (succeededCopy)
    {
      v6 = @"did";
    }

    v8 = 136315394;
    v9 = "[BRRTCMigrationReportManager setMigrationSucceeded:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "%s Migration %@ succeed", &v8, 0x16u);
  }

  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setMigrationSucceeded:succeededCopy];
}

- (void)setMigrationBegan:(BOOL)began
{
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [(BRRTCMigrationReportManager *)self formatDate:date];

  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setMigrationBeganTime:v6];
}

- (void)setLastActiveDate:(id)date
{
  v5 = [(BRRTCMigrationReportManager *)self formatDate:date];
  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setLastActiveDate:v5];
}

- (void)setSessionID:(id)d
{
  dCopy = d;
  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  [migrationMetric setSessionID:dCopy];
}

- (void)submitMetic
{
  v13 = *MEMORY[0x277D85DE8];
  _likelyOffendingTransaction = [(BRRTCMigrationReportManager *)self _likelyOffendingTransaction];
  v4 = _likelyOffendingTransaction;
  if (_likelyOffendingTransaction)
  {
    migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
    [migrationMetric setSuspectTransaction:v4];
  }

  v6 = br_metriccollection_log(_likelyOffendingTransaction);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    migrationMetric2 = [(BRRTCMigrationReportManager *)self migrationMetric];
    dictionaryRepresentation = [migrationMetric2 dictionaryRepresentation];
    v11 = 138412290;
    v12 = dictionaryRepresentation;
    _os_log_impl(&dword_241ECA000, v6, OS_LOG_TYPE_DEFAULT, "Request to submit migration Metric with these keys: %@", &v11, 0xCu);
  }

  v9 = [BRReportManager reporterWithCatergory:2000];
  migrationMetric3 = [(BRRTCMigrationReportManager *)self migrationMetric];
  [v9 reportRTCMetric:migrationMetric3];

  [(BRRTCMigrationReportManager *)self setMetricSubmitted:1];
  [(BRRTCMigrationReportManager *)self setMigrationMetric:0];
}

- (id)_transactionNameFromKey:(id)key
{
  keyCopy = key;
  v4 = [keyCopy substringFromIndex:{objc_msgSend(@"MigrationPhonePhase", "length")}];

  v5 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 3}];

  return v5;
}

- (id)_likelyOffendingTransaction
{
  v18 = *MEMORY[0x277D85DE8];
  migrationMetric = [(BRRTCMigrationReportManager *)self migrationMetric];
  transactionPhases = [migrationMetric transactionPhases];

  if (transactionPhases)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__BRRTCMigrationReportManager__likelyOffendingTransaction__block_invoke;
    v9[3] = &unk_278D27360;
    v9[4] = self;
    v9[5] = &v10;
    v5 = br_metriccollection_log([transactionPhases enumerateKeysAndObjectsUsingBlock:v9]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v11[5];
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "offending transaction %@", buf, 0xCu);
    }

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __58__BRRTCMigrationReportManager__likelyOffendingTransaction__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  if (([v7 BOOLValue] & 1) != 0 || *(*(*(a1 + 40) + 8) + 40))
  {
    if (([v7 BOOLValue] & 1) == 0)
    {
      *a4 = 1;
    }
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [*(a1 + 32) _transactionNameFromKey:v13];
    v10 = [v8 stringWithFormat:@"EPSagaTransaction%@", v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)formatDate:(id)date
{
  v3 = MEMORY[0x277CCA968];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  if (BRIsInternalInstall(v5, v6))
  {
    v7 = @"yyyy.MM.dd_HH-mm-ss";
  }

  else
  {
    v7 = @"yyyy.MM.dd_HH-mm";
  }

  [v5 setDateFormat:v7];
  v8 = [v5 stringFromDate:dateCopy];

  return v8;
}

@end