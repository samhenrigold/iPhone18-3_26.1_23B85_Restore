@interface HDMHValenceSummaryQueryServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
- (BOOL)_queue_surfaceDaySummariesWithError:(id *)error;
- (HDMHValenceSummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDMHValenceSummaryQueryServer

- (HDMHValenceSummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDMHValenceSummaryQueryServer;
  v12 = [(HDQueryServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
  }

  return v13;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  clientCopy = client;
  entitlements = [clientCopy entitlements];
  v8 = *MEMORY[0x277CCC8B0];
  v9 = [entitlements hasEntitlement:*MEMORY[0x277CCC8B0]];

  if (v9 & 1) != 0 || ([clientCopy entitlements], v10 = objc_claimAutoreleasedReturnValue(), v11 = *MEMORY[0x277CCC898], v12 = objc_msgSend(v10, "hasPrivateAccessEntitlementWithIdentifier:", *MEMORY[0x277CCC898]), v10, (v12))
  {
    v13 = 1;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:4 format:{@"Missing required entitlement: %@ for core apps or %@ for second-party access.", v8, v11}];
    v13 = 0;
  }

  return v13;
}

- (id)objectTypes
{
  v2 = MEMORY[0x277CBEB98];
  stateOfMindType = [MEMORY[0x277CCD8D8] stateOfMindType];
  v4 = [v2 setWithObject:stateOfMindType];

  return v4;
}

- (void)_queue_start
{
  v37 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = HDMHValenceSummaryQueryServer;
  [(HDQueryServer *)&v31 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  objectTypes = [(HDMHValenceSummaryQueryServer *)self objectTypes];
  v30 = 0;
  v8 = [authorizationOracle authorizationStatusRecordsForTypes:objectTypes error:&v30];
  v9 = v30;

  if (!v8)
  {
    queryUUID = [(HDQueryServer *)self queryUUID];
    [remoteObjectProxy client_deliverError:v9 forQuery:queryUUID];
    goto LABEL_19;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  allValues = [v8 allValues];
  v11 = [allValues countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (!v11)
  {

LABEL_18:
    queryUUID = [MEMORY[0x277D106B8] contextForReadingProtectedData];
    profile = [(HDQueryServer *)self profile];
    database = [profile database];
    v24[4] = self;
    v25 = v9;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__HDMHValenceSummaryQueryServer__queue_start__block_invoke;
    v24[3] = &unk_2798AABE8;
    [database performTransactionWithContext:queryUUID error:&v25 block:v24 inaccessibilityHandler:0];
    v23 = v25;

    v9 = v23;
    goto LABEL_19;
  }

  v12 = v11;
  v13 = *v27;
  canRead = 1;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(allValues);
      }

      if (canRead)
      {
        canRead = [*(*(&v26 + 1) + 8 * i) canRead];
      }

      else
      {
        canRead = 0;
      }
    }

    v12 = [allValues countByEnumeratingWithState:&v26 objects:v36 count:16];
  }

  while (v12);

  if (canRead)
  {
    goto LABEL_18;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = objc_opt_class();
    *buf = 138543618;
    v33 = v18;
    v34 = 2114;
    v35 = v8;
    v19 = v18;
    _os_log_impl(&dword_258977000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Avoiding exposing health data due to missing authorization: %{public}@", buf, 0x16u);
  }

  queryUUID = [(HDQueryServer *)self queryUUID];
  [remoteObjectProxy client_deliverValenceSummary:0 queryUUID:queryUUID];
LABEL_19:
}

- (BOOL)_queue_surfaceDaySummariesWithError:(id *)error
{
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  v7 = [HDMHDaySummaryEnumerator alloc];
  profile = [(HDQueryServer *)self profile];
  dayIndexRange = [(HKMHCountBasedQueryConfiguration *)self->_configuration dayIndexRange];
  v11 = v10;
  gregorianCalendar = [(HKMHCountBasedQueryConfiguration *)self->_configuration gregorianCalendar];
  predicateForQueryClient = [(HDQueryServer *)self predicateForQueryClient];
  LOBYTE(v27) = 1;
  v14 = [(HDMHDaySummaryEnumerator *)v7 initWithProfile:profile dayIndexRange:dayIndexRange gregorianCalendar:v11 predicate:gregorianCalendar pendingDailyStateOfMind:predicateForQueryClient ascending:0, v27];

  v15 = objc_alloc(MEMORY[0x277D280D8]);
  dayIndexRange2 = [(HKMHCountBasedQueryConfiguration *)self->_configuration dayIndexRange];
  v18 = [v15 initWithDayIndexRange:{dayIndexRange2, v17}];
  v30 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__HDMHValenceSummaryQueryServer__queue_surfaceDaySummariesWithError___block_invoke;
  v28[3] = &unk_2798AADC0;
  v28[4] = self;
  v19 = v18;
  v29 = v19;
  v20 = [(HDMHDaySummaryEnumerator *)v14 enumerateWithError:&v30 handler:v28];
  v21 = v30;
  queryUUID = [(HDQueryServer *)self queryUUID];
  if (v20)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  [remoteObjectProxy client_deliverValenceSummary:v23 queryUUID:queryUUID];

  v24 = v21;
  if (v24)
  {
    if (error)
    {
      v25 = v24;
      *error = v24;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v20;
}

void __69__HDMHValenceSummaryQueryServer__queue_surfaceDaySummariesWithError___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) != 0 || objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    if (a3)
    {
      *a3 = 1;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v5 momentaryStatesOfMind];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 40) _addValence:{objc_msgSend(*(*(&v13 + 1) + 8 * v10++), "valenceClassification")}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v11 = [v5 dailyStateOfMind];
    v12 = v11;
    if (v11)
    {
      [*(a1 + 40) _addValence:{objc_msgSend(v11, "valenceClassification")}];
    }
  }
}

@end