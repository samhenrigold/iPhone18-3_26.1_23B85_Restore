@interface HVConsumerCoordinator
+ (id)defaultCoordinator;
- (BOOL)deleteContentWithRequest:(id)request error:(id *)error;
- (BOOL)harvestContentWithMinimumLevelOfService:(unsigned __int8)service ignoringDiscretionaryPowerBudget:(BOOL)budget error:(id *)error shouldContinueBlock:(id)block;
- (BOOL)registerInteractionConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (BOOL)registerMailConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (BOOL)registerMessagesConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (BOOL)registerNewsConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (BOOL)registerNotesConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (BOOL)registerNotificationsConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (BOOL)registerParsecConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (BOOL)registerPhotosConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (BOOL)registerRemindersConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (BOOL)registerSafariConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (BOOL)registerSiriConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (BOOL)registerThirdPartyAppConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (BOOL)registerUserActivityConsumer:(id)consumer levelOfService:(unsigned __int8)service;
- (HVConsumerCoordinator)init;
- (HVConsumerCoordinator)initWithQueues:(id)queues path:(id)path;
- (id)_consumersForOneDataSource:(void *)source guardedData:;
- (id)_statsForConsumers:(uint64_t)consumers;
- (id)statsWithError:(id *)error;
- (uint64_t)_consumeContentFromAllDataSources:(int)sources minimumLevelOfService:(char)service inMemoryItemsOnly:(void *)only guardedData:(void *)data shouldContinueBlock:(void *)block error:;
- (void)_registerConsumer:(uint64_t)consumer levelOfService:(id *)service consumerMapTableOut:;
- (void)contentAvailableFromSources:(unsigned int)sources;
- (void)disableConsumptionOfDataSources:(unsigned int)sources;
- (void)enableConsumptionOfDataSources:(unsigned int)sources;
- (void)restoreConsumptionOfDataSources:(unsigned int)sources;
@end

@implementation HVConsumerCoordinator

- (id)statsWithError:(id *)error
{
  v4 = objc_opt_new();
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__HVConsumerCoordinator_statsWithError___block_invoke;
  v14[3] = &unk_278968F20;
  v14[4] = self;
  v6 = v4;
  v15 = v6;
  [(_PASLock *)lock runWithLockAcquired:v14];
  v7 = objc_opt_new();
  [v6 setObject:v7 forKeyedSubscript:@"Deferrals"];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__HVConsumerCoordinator_statsWithError___block_invoke_2;
  v12[3] = &unk_278968F70;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  HVDataSourceRunBlockPerSetBit(-1, v12);
  v9 = v13;
  v10 = v8;

  return v8;
}

void __40__HVConsumerCoordinator_statsWithError___block_invoke(uint64_t a1, void *a2)
{
  v35[8] = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_group_leave(*(*(a1 + 32) + 40));
  v4 = *(v3 + 1);
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = +[HVPowerBudget defaultBudget];
    v7 = [v6 throttlingState];
    [v5 setObject:v7 forKeyedSubscript:@"PowerBudget"];

    v34[0] = @"Allowed & Registered";
    v8 = [(HVBudget *)v4 sourcesFilteredByBudgetAndRegistrationsFromAvailableSources:1 levelOfService:?];
    v29 = HVDataSourceDescription(v8);
    v35[0] = v29;
    v34[1] = @"Always Allow Override";
    v27 = HVDataSourceDescription(v4[2]);
    v35[1] = v27;
    v34[2] = @"Always Deny Override";
    v9 = HVDataSourceDescription(v4[3]);
    v35[2] = v9;
    v34[3] = @"Realtime";
    v10 = HVDataSourceDescription(v4[8]);
    v35[3] = v10;
    v34[4] = @"Periodic Background";
    v11 = HVDataSourceDescription(v4[5]);
    v35[4] = v11;
    v34[5] = @"Budgeted";
    v12 = HVDataSourceDescription(v4[7]);
    v35[5] = v12;
    v34[6] = @"Delayed Budgeted";
    v13 = HVDataSourceDescription(v4[6]);
    v35[6] = v13;
    v34[7] = @"No Service";
    v14 = HVDataSourceDescription(v4[4]);
    v35[7] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:8];
    v31 = v5;
    [v5 setObject:v15 forKeyedSubscript:@"Sources"];
  }

  else
  {
    v31 = 0;
  }

  if (v31)
  {
    [*(a1 + 40) setObject:v31 forKeyedSubscript:@"Budget"];
  }

  v32[0] = @"Mail";
  v30 = [(HVConsumerCoordinator *)*(a1 + 32) _statsForConsumers:?];
  v33[0] = v30;
  v32[1] = @"Messages";
  v28 = [(HVConsumerCoordinator *)*(a1 + 32) _statsForConsumers:?];
  v33[1] = v28;
  v32[2] = @"News";
  v26 = [(HVConsumerCoordinator *)*(a1 + 32) _statsForConsumers:?];
  v33[2] = v26;
  v32[3] = @"Notes";
  v25 = [(HVConsumerCoordinator *)*(a1 + 32) _statsForConsumers:?];
  v33[3] = v25;
  v32[4] = @"Parsec";
  v24 = [(HVConsumerCoordinator *)*(a1 + 32) _statsForConsumers:?];
  v33[4] = v24;
  v32[5] = @"Photos";
  v16 = [(HVConsumerCoordinator *)*(a1 + 32) _statsForConsumers:?];
  v33[5] = v16;
  v32[6] = @"Reminders";
  v17 = [(HVConsumerCoordinator *)*(a1 + 32) _statsForConsumers:?];
  v33[6] = v17;
  v32[7] = @"Safari";
  v18 = [(HVConsumerCoordinator *)*(a1 + 32) _statsForConsumers:?];
  v33[7] = v18;
  v32[8] = @"Siri";
  v19 = [(HVConsumerCoordinator *)*(a1 + 32) _statsForConsumers:?];
  v33[8] = v19;
  v32[9] = @"ThirdPartyApp";
  v20 = [(HVConsumerCoordinator *)*(a1 + 32) _statsForConsumers:?];
  v33[9] = v20;
  v32[10] = @"Interactions";
  v21 = [(HVConsumerCoordinator *)*(a1 + 32) _statsForConsumers:?];
  v33[10] = v21;
  v32[11] = @"UserActivities";
  v22 = [(HVConsumerCoordinator *)*(a1 + 32) _statsForConsumers:?];
  v33[11] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:12];
  [*(a1 + 40) setObject:v23 forKeyedSubscript:@"Consumers"];
}

void __40__HVConsumerCoordinator_statsWithError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  v5 = [[HVDataSourceContentState alloc] initWithDataSource:a2 basePath:*(*(a1 + 32) + 32)];
  v6 = [(HVDataSourceContentState *)v5 deferredContentStates];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__HVConsumerCoordinator_statsWithError___block_invoke_3;
  v10[3] = &unk_278969B30;
  v11 = v4;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  v8 = [*(a1 + 40) objectForKeyedSubscript:@"Deferrals"];
  v9 = HVDataSourceDescription(a2);
  [v8 setObject:v7 forKeyedSubscript:v9];
}

void __40__HVConsumerCoordinator_statsWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"Level of Service";
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 numberWithUnsignedChar:{objc_msgSend(v6, "levelOfService")}];
  v12[1] = @"Consumers";
  v13[0] = v8;
  v9 = [v6 consumers];

  v10 = [v9 allObjects];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v7];
}

- (id)_statsForConsumers:(uint64_t)consumers
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = v3;
  if (consumers)
  {
    v4 = v3;
    v21 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = v4;
    v24 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v24)
    {
      v6 = *v26;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v26 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v25 + 1) + 8 * i);
          consumerName = [v8 consumerName];
          v10 = [v5 objectForKey:v8];
          v11 = v10;
          if (v8)
          {
            v12 = v10 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            v18 = hv_default_log_handle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v8;
              _os_log_error_impl(&dword_2321EC000, v18, OS_LOG_TYPE_ERROR, "HVConsumerCoordinator: _statsForConsumers failed for %@", &buf, 0xCu);
            }
          }

          else
          {
            v30[0] = @"Level of Service";
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v10 + 8)];
            *&buf = v22;
            v30[1] = @"Documents Consumed";
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11[3]];
            *(&buf + 1) = v13;
            v30[2] = @"Documents Ignored";
            v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11[4]];
            v32 = v14;
            v30[3] = @"Number of Extractions";
            [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11[5]];
            v15 = v23 = consumerName;
            v33 = v15;
            v30[4] = @"Number of Interruptions";
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11[6]];
            v34 = v16;
            v30[5] = @"Errors Reported";
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11[7]];
            v35 = v17;
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:v30 count:6];

            consumerName = v23;
            [v21 setObject:v18 forKeyedSubscript:v23];
          }
        }

        v24 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)registerNotificationsConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HVConsumerCoordinator_registerNotificationsConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __70__HVConsumerCoordinator_registerNotificationsConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 14 consumerMapTableOut:?];
  [(HVBudget *)*(v4 + 1) registerLevelOfService:0x4000 oneDataSource:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:0x8000];
}

- (void)_registerConsumer:(uint64_t)consumer levelOfService:(id *)service consumerMapTableOut:
{
  v7 = a2;
  if (self)
  {
    v12 = v7;
    if (!service)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__registerConsumer_levelOfService_consumerMapTableOut_ object:self file:@"HVConsumerCoordinator.m" lineNumber:881 description:{@"Invalid parameter not satisfying: %@", @"consumerMapTableOut"}];
    }

    if (!*service)
    {
      v8 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:5 valueOptions:0];
      v9 = *service;
      *service = v8;
    }

    v10 = objc_opt_new();
    [v10 setLevelOfService:consumer];
    [*service setObject:v10 forKey:v12];

    v7 = v12;
  }
}

- (BOOL)registerUserActivityConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HVConsumerCoordinator_registerUserActivityConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __69__HVConsumerCoordinator_registerUserActivityConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 13 consumerMapTableOut:?];
  [(HVBudget *)*(v4 + 1) registerLevelOfService:4096 oneDataSource:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:0x2000];
}

- (BOOL)registerInteractionConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HVConsumerCoordinator_registerInteractionConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __68__HVConsumerCoordinator_registerInteractionConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 12 consumerMapTableOut:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:2048];
}

- (BOOL)registerThirdPartyAppConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HVConsumerCoordinator_registerThirdPartyAppConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __70__HVConsumerCoordinator_registerThirdPartyAppConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 11 consumerMapTableOut:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:1024];
}

- (BOOL)registerSiriConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HVConsumerCoordinator_registerSiriConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __61__HVConsumerCoordinator_registerSiriConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 10 consumerMapTableOut:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:512];
}

- (BOOL)registerSafariConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HVConsumerCoordinator_registerSafariConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __63__HVConsumerCoordinator_registerSafariConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 9 consumerMapTableOut:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:256];
}

- (BOOL)registerRemindersConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HVConsumerCoordinator_registerRemindersConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __66__HVConsumerCoordinator_registerRemindersConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 8 consumerMapTableOut:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:128];
}

- (BOOL)registerPhotosConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HVConsumerCoordinator_registerPhotosConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __63__HVConsumerCoordinator_registerPhotosConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 7 consumerMapTableOut:?];
  [(HVBudget *)*(v4 + 1) registerLevelOfService:32 oneDataSource:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:64];
}

- (BOOL)registerParsecConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HVConsumerCoordinator_registerParsecConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __63__HVConsumerCoordinator_registerParsecConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 6 consumerMapTableOut:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:16];
}

- (BOOL)registerNotesConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HVConsumerCoordinator_registerNotesConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __62__HVConsumerCoordinator_registerNotesConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 5 consumerMapTableOut:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:8];
}

- (BOOL)registerNewsConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HVConsumerCoordinator_registerNewsConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __61__HVConsumerCoordinator_registerNewsConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 4 consumerMapTableOut:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:4];
}

- (BOOL)registerMessagesConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__HVConsumerCoordinator_registerMessagesConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __65__HVConsumerCoordinator_registerMessagesConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 3 consumerMapTableOut:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:2];
}

- (BOOL)registerMailConsumer:(id)consumer levelOfService:(unsigned __int8)service
{
  consumerCopy = consumer;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HVConsumerCoordinator_registerMailConsumer_levelOfService___block_invoke;
  v10[3] = &unk_278968F48;
  v10[4] = self;
  v11 = consumerCopy;
  serviceCopy = service;
  v8 = consumerCopy;
  [(_PASLock *)lock runWithLockAcquired:v10];

  return 1;
}

void __61__HVConsumerCoordinator_registerMailConsumer_levelOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  [(HVConsumerCoordinator *)*(a1 + 32) _registerConsumer:*(a1 + 48) levelOfService:v4 + 2 consumerMapTableOut:?];
  v5 = *(v4 + 1);

  v6 = *(a1 + 48);

  [(HVBudget *)v5 registerLevelOfService:v6 oneDataSource:1];
}

- (BOOL)deleteContentWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HVConsumerCoordinator_deleteContentWithRequest_error___block_invoke;
  v9[3] = &unk_278968F20;
  v9[4] = self;
  v10 = requestCopy;
  v7 = requestCopy;
  [(_PASLock *)lock runWithLockAcquired:v9];

  return 1;
}

void __56__HVConsumerCoordinator_deleteContentWithRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_group_leave(*(*(a1 + 32) + 40));
  v4 = [*(a1 + 40) bundleIdentifier];
  v5 = v4;
  if (!v3)
  {
    goto LABEL_21;
  }

  if (([v4 isEqualToString:@"com.apple.mobilemail"] & 1) == 0)
  {
    if ([v5 isEqualToString:@"com.apple.MobileSMS"])
    {
      v6 = 3;
      goto LABEL_23;
    }

    if ([v5 isEqualToString:@"com.apple.news"])
    {
      v6 = 4;
      goto LABEL_23;
    }

    if ([v5 isEqualToString:@"com.apple.mobilenotes"])
    {
      v6 = 5;
      goto LABEL_23;
    }

    if ([v5 isEqualToString:@"com.apple.parsecd"])
    {
      v6 = 6;
      goto LABEL_23;
    }

    if ([v5 isEqualToString:@"com.apple.mobileslideshow"])
    {
      v6 = 7;
      goto LABEL_23;
    }

    if ([v5 isEqualToString:@"com.apple.reminders"])
    {
      v6 = 8;
      goto LABEL_23;
    }

    if ([v5 isEqualToString:@"com.apple.mobilesafari"])
    {
      v6 = 9;
      goto LABEL_23;
    }

    if ([v5 isEqualToString:@"com.apple.siri"])
    {
      v6 = 10;
      goto LABEL_23;
    }

    if (([v5 hasPrefix:@"com.apple."] & 1) == 0)
    {
      v6 = 11;
      goto LABEL_23;
    }

LABEL_21:
    v7 = 0;
    goto LABEL_24;
  }

  v6 = 2;
LABEL_23:
  v7 = v3[v6];
LABEL_24:

  v8 = hv_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v39 = [v7 count];
    v40 = *(a1 + 40);
    *buf = 134218243;
    v59 = v39;
    v60 = 2113;
    v61 = v40;
    _os_log_debug_impl(&dword_2321EC000, v8, OS_LOG_TYPE_DEBUG, "HVConsumerCoordinator: deleteContentWithRequest: consumer count: %tu request: %{private}@", buf, 0x16u);
  }

  v41 = v7;
  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v7, "count", v7)}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v52;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v52 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v51 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [v15 deleteDataDerivedFromContentMatchingRequest:*(a1 + 40)];
          v18 = [v15 consumerName];
          [v9 addObject:v18];

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = 0;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v42 = v3;
  v19 = v3[12];
  v20 = [v19 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v48;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v47 + 1) + 8 * j);
        v25 = objc_autoreleasePoolPush();
        v26 = [v24 consumerName];
        v27 = [v9 containsObject:v26];

        if ((v27 & 1) == 0)
        {
          v28 = [v24 deleteDataDerivedFromContentMatchingRequest:*(a1 + 40)];
        }

        objc_autoreleasePoolPop(v25);
      }

      v21 = [v19 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v21);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v42[13];
  v30 = [v29 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v43 + 1) + 8 * k);
        v35 = objc_autoreleasePoolPush();
        v36 = [v34 consumerName];
        v37 = [v9 containsObject:v36];

        if ((v37 & 1) == 0)
        {
          v38 = [v34 deleteDataDerivedFromContentMatchingRequest:*(a1 + 40)];
        }

        objc_autoreleasePoolPop(v35);
      }

      v31 = [v29 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v31);
  }
}

- (void)restoreConsumptionOfDataSources:(unsigned int)sources
{
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HVConsumerCoordinator_restoreConsumptionOfDataSources___block_invoke;
  v6[3] = &unk_278968EF8;
  v6[4] = self;
  sourcesCopy = sources;
  [(_PASLock *)lock runWithLockAcquired:v6];
}

void __57__HVConsumerCoordinator_restoreConsumptionOfDataSources___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  v5 = hv_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HVDataSourceDescription(*(a1 + 40));
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_2321EC000, v5, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: restoreConsumptionOfDataSources: %{public}@", &v11, 0xCu);
  }

  v7 = v4[1];
  if (v7)
  {
    v7[1] = vand_s8(v7[1], vdup_n_s32(~*(a1 + 40)));
    v8 = hv_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(HVBudget *)v7 sourcesFilteredByBudgetAndRegistrationsFromAvailableSources:1 levelOfService:?];
      v10 = HVDataSourceDescription(v9);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_2321EC000, v8, OS_LOG_TYPE_DEFAULT, "HVBudget: Sources With Budget And Consumers Available: %@", &v11, 0xCu);
    }
  }
}

- (void)disableConsumptionOfDataSources:(unsigned int)sources
{
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HVConsumerCoordinator_disableConsumptionOfDataSources___block_invoke;
  v6[3] = &unk_278968EF8;
  v6[4] = self;
  sourcesCopy = sources;
  [(_PASLock *)lock runWithLockAcquired:v6];
}

void __57__HVConsumerCoordinator_disableConsumptionOfDataSources___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  v5 = hv_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HVDataSourceDescription(*(a1 + 40));
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_2321EC000, v5, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: disableConsumptionOfDataSources: %{public}@", &v14, 0xCu);
  }

  v7 = v4[1];
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = v7[2] & ~v8;
    v10 = v7[3] | v8;
    v7[2] = v9;
    v7[3] = v10;
    v11 = hv_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HVBudget *)v7 sourcesFilteredByBudgetAndRegistrationsFromAvailableSources:1 levelOfService:?];
      v13 = HVDataSourceDescription(v12);
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_2321EC000, v11, OS_LOG_TYPE_DEFAULT, "HVBudget: Sources With Budget And Consumers Available: %@", &v14, 0xCu);
    }
  }
}

- (void)enableConsumptionOfDataSources:(unsigned int)sources
{
  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HVConsumerCoordinator_enableConsumptionOfDataSources___block_invoke;
  v6[3] = &unk_278968EF8;
  v6[4] = self;
  sourcesCopy = sources;
  [(_PASLock *)lock runWithLockAcquired:v6];
}

void __56__HVConsumerCoordinator_enableConsumptionOfDataSources___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  dispatch_group_leave(v3);
  v5 = hv_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HVDataSourceDescription(*(a1 + 40));
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_2321EC000, v5, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: enableConsumptionOfDataSources: %{public}@", &v13, 0xCu);
  }

  v7 = v4[1];
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = v7[3] & ~v8;
    v7[2] |= v8;
    v7[3] = v9;
    v10 = hv_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(HVBudget *)v7 sourcesFilteredByBudgetAndRegistrationsFromAvailableSources:1 levelOfService:?];
      v12 = HVDataSourceDescription(v11);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&dword_2321EC000, v10, OS_LOG_TYPE_DEFAULT, "HVBudget: Sources With Budget And Consumers Available: %@", &v13, 0xCu);
    }
  }
}

- (BOOL)harvestContentWithMinimumLevelOfService:(unsigned __int8)service ignoringDiscretionaryPowerBudget:(BOOL)budget error:(id *)error shouldContinueBlock:(id)block
{
  serviceCopy = service;
  v50 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = hv_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = serviceCopy;
    _os_log_impl(&dword_2321EC000, v9, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: harvestContentWithMinimumLevelOfService: %u", buf, 8u);
  }

  if ((blockCopy[2])())
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __124__HVConsumerCoordinator_harvestContentWithMinimumLevelOfService_ignoringDiscretionaryPowerBudget_error_shouldContinueBlock___block_invoke;
    v32[3] = &unk_278968E58;
    v34 = &v40;
    v35 = &v36;
    v10 = blockCopy;
    v32[4] = self;
    v33 = v10;
    v11 = MEMORY[0x238381E60](v32);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    *buf = 0;
    v45 = buf;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__691;
    v48 = __Block_byref_object_dispose__692;
    v49 = 0;
    do
    {
      while (*(v37 + 24) != 1)
      {
        if ((v41[3] & 1) == 0)
        {
          *(v37 + 24) = 0;
          lock = self->_lock;
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __124__HVConsumerCoordinator_harvestContentWithMinimumLevelOfService_ignoringDiscretionaryPowerBudget_error_shouldContinueBlock___block_invoke_117;
          v21[3] = &unk_278968E80;
          budgetCopy = budget;
          v26 = serviceCopy;
          v23 = &v28;
          v21[4] = self;
          v22 = v11;
          v24 = buf;
          [(_PASLock *)lock runWithLockAcquired:v21 shouldContinueBlock:v22];

          if (v41[3] & 1) == 0 && (v37[3])
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      v12 = hv_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *v27 = 0;
        _os_log_debug_impl(&dword_2321EC000, v12, OS_LOG_TYPE_DEBUG, "HVConsumerCoordinator: harvestContentWithMinimumLevelOfService waiting for lock contention to subside...", v27, 2u);
      }

      waitingForLock = self->_waitingForLock;
      v14 = dispatch_time(0, 1000000000);
      v15 = dispatch_group_wait(waitingForLock, v14) != 0;
      *(v37 + 24) = v15;
    }

    while ((blockCopy[2](v10) & 1) != 0);
    *(v41 + 24) = 1;
LABEL_15:
    v17 = *(v29 + 24);
    if (error && (v29[3] & 1) == 0)
    {
      *error = *(v45 + 5);
      v17 = *(v29 + 24);
    }

    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

uint64_t __124__HVConsumerCoordinator_harvestContentWithMinimumLevelOfService_ignoringDiscretionaryPowerBudget_error_shouldContinueBlock___block_invoke(void *a1)
{
  v1 = a1 + 6;
  if (*(*(a1[6] + 8) + 24))
  {
    return 0;
  }

  v3 = a1 + 7;
  if (*(*(a1[7] + 8) + 24))
  {
    return 0;
  }

  if ((*(a1[5] + 16))())
  {
    if (!dispatch_group_wait(*(a1[4] + 40), 0))
    {
      return 1;
    }

    v5 = hv_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2321EC000, v5, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: harvestContentWithMinimumLevelOfService interruptedByLockContention, will unlock to let other threads use the lock for a bit", v6, 2u);
    }

    v1 = v3;
  }

  else
  {
    v5 = hv_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, v5, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: harvestContentWithMinimumLevelOfService shouldContinueBlock returned NO", buf, 2u);
    }
  }

  result = 0;
  *(*(*v1 + 8) + 24) = 1;
  return result;
}

void __124__HVConsumerCoordinator_harvestContentWithMinimumLevelOfService_ignoringDiscretionaryPowerBudget_error_shouldContinueBlock___block_invoke_117(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 64) != 1)
  {
    goto LABEL_4;
  }

  v5 = v3[1];
  if (v5)
  {
    if (*(v5 + 40))
    {
LABEL_4:
      v6 = 0;
      goto LABEL_6;
    }

    v6 = 1;
    *(v5 + 40) = 1;
  }

  else
  {
    v6 = 1;
  }

LABEL_6:
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEBUG, "HVConsumerCoordinator: harvestContentWithMinimumLevelOfService acquired lock", buf, 2u);
  }

  v8 = [(HVBudget *)v4[1] sourcesFilteredByBudgetAndRegistrationsFromAvailableSources:*(a1 + 65) levelOfService:?];
  if (*(a1 + 65) == 1)
  {
    v9 = v4[1];
    if (v9)
    {
      v10 = ~v9[3];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v8;
  }

  v11 = hv_default_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HVDataSourceDescription(v10);
    *buf = 138543362;
    v24 = v12;
    _os_log_impl(&dword_2321EC000, v11, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: harvestContentWithMinimumLevelOfService: sources after applying budget: %{public}@", buf, 0xCu);
  }

  v13 = *(a1 + 65);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(*(a1 + 56) + 8);
  v19 = *(v16 + 40);
  v18 = (v16 + 40);
  v17 = v19;
  obj = v19;
  if (v14)
  {
    v20 = [(HVConsumerCoordinator *)v14 _consumeContentFromAllDataSources:v10 minimumLevelOfService:v13 inMemoryItemsOnly:0 guardedData:v4 shouldContinueBlock:v15 error:&obj];
    v17 = obj;
  }

  else
  {
    v20 = 0;
  }

  objc_storeStrong(v18, v17);
  *(*(*(a1 + 48) + 8) + 24) = v20;
  if (v6)
  {
    v21 = v4[1];
    if (v21)
    {
      *(v21 + 40) = 0;
    }
  }
}

- (uint64_t)_consumeContentFromAllDataSources:(int)sources minimumLevelOfService:(char)service inMemoryItemsOnly:(void *)only guardedData:(void *)data shouldContinueBlock:(void *)block error:
{
  v56 = *MEMORY[0x277D85DE8];
  onlyCopy = only;
  dataCopy = data;
  v15 = hv_default_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HVDataSourceDescription(a2);
    *buf = 138543618;
    *&buf[4] = v16;
    *&buf[12] = 1024;
    *&buf[14] = sources;
    _os_log_impl(&dword_2321EC000, v15, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: consumeContentFromDataSources: %{public}@ with minimum LoS %hhu", buf, 0x12u);
  }

  v18 = sources != 1 || dataCopy == 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 1;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v53 = __Block_byref_object_copy__691;
  v54 = __Block_byref_object_dispose__692;
  v55 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __137__HVConsumerCoordinator__consumeContentFromAllDataSources_minimumLevelOfService_inMemoryItemsOnly_guardedData_shouldContinueBlock_error___block_invoke;
  v31[3] = &unk_278968ED0;
  sourcesCopy = sources;
  v40 = v18;
  v19 = onlyCopy;
  v38 = a2;
  v32 = v19;
  selfCopy = self;
  serviceCopy = service;
  v20 = dataCopy;
  v34 = v20;
  v35 = &v42;
  v36 = buf;
  v37 = &v46;
  HVDataSourceRunBlockPerSetBit(a2, v31);
  if (block)
  {
    v21 = *(*&buf[8] + 40);
    if (v21)
    {
      *block = v21;
    }
  }

  v22 = *(self + 24);
  v23 = *(v43 + 6);
  v30 = 0;
  v24 = [v22 dequeuedContentConsumedForDataSources:v23 withError:&v30];
  v25 = v30;
  if (v24)
  {
    v26 = *(v47 + 24);
  }

  else
  {
    v27 = hv_default_log_handle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *v50 = 138412290;
      v51 = v25;
      _os_log_fault_impl(&dword_2321EC000, v27, OS_LOG_TYPE_FAULT, "HVConsumerCoordinator: _consumeContentWithGuardedData: consumptionCompletedWithError: %@", v50, 0xCu);
    }

    if (block)
    {
      v28 = v25;
      v26 = 0;
      *block = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v46, 8);
  return v26 & 1;
}

void __137__HVConsumerCoordinator__consumeContentFromAllDataSources_minimumLevelOfService_inMemoryItemsOnly_guardedData_shouldContinueBlock_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v6 = *(a1 + 84);
  v7 = *(a1 + 85);
  v19[0] = MEMORY[0x277D85DD0];
  v8 = *(a1 + 80);
  v9 = *(a1 + 86);
  v18 = *(a1 + 32);
  v10 = *(v18.i64[0] + 8);
  v19[1] = 3221225472;
  v20 = __137__HVConsumerCoordinator__consumeContentFromAllDataSources_minimumLevelOfService_inMemoryItemsOnly_guardedData_shouldContinueBlock_error___block_invoke_2;
  v21 = &unk_278968EA8;
  v30 = v6;
  v24 = &v32;
  v28 = v8;
  v29 = a2;
  v31 = v9;
  v11 = v18.i64[0];
  v22 = vextq_s8(v18, v18, 8uLL);
  v23 = *(a1 + 48);
  v25 = *(a1 + 56);
  v26 = *(a1 + 72);
  v27 = a3;
  v12 = v19;
  v13 = v12;
  if (v10)
  {
    if ((*(v10 + 8) & v4) != 0)
    {
      v20(v12, v6);
    }

    else if (!v7 || [(HVBudget *)v10 sourcesFilteredByBudgetAndRegistrationsFromAvailableSources:v4 levelOfService:v6]== v4)
    {
      v14 = *(v10 + 40);
      v15 = objc_autoreleasePoolPush();
      if (v14 == 1)
      {
        v20(v13, v6);
      }

      else
      {
        v16 = +[HVPowerBudget defaultBudget];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __82__HVBudget_performWorkForOneDataSource_levelOfService_requireRegistrations_block___block_invoke;
        v44[3] = &unk_278969A20;
        v45 = v13;
        v46 = v6;
        *buf = MEMORY[0x277D85DD0];
        v37 = 3221225472;
        v38 = __82__HVBudget_performWorkForOneDataSource_levelOfService_requireRegistrations_block___block_invoke_2;
        v39 = &unk_278969A48;
        v40 = v10;
        v42 = v4;
        v41 = v45;
        v43 = v6;
        [v16 doDiscretionaryWork:v44 orElse:buf];
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  if ((v33[3] & 1) == 0)
  {
    v17 = hv_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, v17, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: consumeAllContentFromAllDataSources: Did not perform work", buf, 2u);
    }
  }

  _Block_object_dispose(&v32, 8);
}

void __137__HVConsumerCoordinator__consumeContentFromAllDataSources_minimumLevelOfService_inMemoryItemsOnly_guardedData_shouldContinueBlock_error___block_invoke_2(uint64_t a1, unsigned int a2)
{
  v171 = *MEMORY[0x277D85DE8];
  v4 = hv_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HVDataSourceDescription(*(a1 + 96));
    v6 = *(a1 + 104);
    *buf = 67109634;
    *v165 = a2;
    *&v165[4] = 2114;
    *&v165[6] = v5;
    *&v165[14] = 1024;
    *&v165[16] = v6;
    _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: consumeContentFromDataSources: effective LoS %hhu for %{public}@ with minimum LoS %hhu", buf, 0x18u);
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v7 = *(a1 + 100);
  v125 = *(a1 + 105);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  v133 = v9;
  if (!v8)
  {

    v104 = 0;
LABEL_151:
    v106 = v104;
LABEL_172:
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v106);
    *(*(*(a1 + 80) + 8) + 24) = 0;
    goto LABEL_173;
  }

  v126 = [(HVConsumerCoordinator *)v8 _consumersForOneDataSource:v7 guardedData:v10];
  v139 = a2;
  if (v7 > 255)
  {
    if (v7 > 4095)
    {
      if (v7 >= 0x4000)
      {
        if (v7 == 0x4000)
        {
          v11 = &selRef_consumeNotificationsWithContext_;
        }

        else
        {
          if (v7 != 0x8000)
          {
            goto LABEL_148;
          }

          v11 = &selRef_consumeNotificationStackWithContext_;
        }
      }

      else if (v7 == 4096)
      {
        v11 = &selRef_consumeUserActivityMetadataWithContext_;
      }

      else
      {
        if (v7 != 0x2000)
        {
          goto LABEL_148;
        }

        v11 = &selRef_consumeSearchableUserActivityWithContext_;
      }
    }

    else if (v7 > 1023)
    {
      if (v7 == 1024)
      {
        v11 = &selRef_consumeThirdPartyAppContentWithContext_;
      }

      else
      {
        if (v7 != 2048)
        {
          goto LABEL_148;
        }

        v11 = &selRef_consumeInteractionWithContext_;
      }
    }

    else if (v7 == 256)
    {
      v11 = &selRef_consumeSafariContentWithContext_;
    }

    else
    {
      if (v7 != 512)
      {
        goto LABEL_148;
      }

      v11 = &selRef_consumeSiriQueriesWithContext_;
    }
  }

  else if (v7 > 15)
  {
    if (v7 > 63)
    {
      if (v7 == 64)
      {
        v11 = &selRef_consumePhotosKnowledgeGraphWithContext_;
      }

      else
      {
        if (v7 != 128)
        {
          goto LABEL_148;
        }

        v11 = &selRef_consumeRemindersContentWithContext_;
      }
    }

    else if (v7 == 16)
    {
      v11 = &selRef_consumeParsecSearchesWithContext_;
    }

    else
    {
      if (v7 != 32)
      {
        goto LABEL_148;
      }

      v11 = &selRef_consumePhotosPhotoViewsWithContext_;
    }
  }

  else if (v7 > 3)
  {
    if (v7 == 4)
    {
      v11 = &selRef_consumeNewsArticleViewsWithContext_;
    }

    else
    {
      if (v7 != 8)
      {
        goto LABEL_148;
      }

      v11 = &selRef_consumeNotesContentWithContext_;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v11 = &selRef_consumeMessagesContentWithContext_;
        goto LABEL_43;
      }

LABEL_148:
      v103 = hv_default_log_handle();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        *v165 = v7;
        _os_log_fault_impl(&dword_2321EC000, v103, OS_LOG_TYPE_FAULT, "HVConsumerCoordinator: _consumeAllContentFromOneDataSource: unknown datasource value: %u", buf, 8u);
      }

      v104 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HVErrorDomain" code:11 userInfo:0];
      v105 = v104;

      goto LABEL_151;
    }

    v11 = &selRef_consumeMailContentWithContext_;
  }

LABEL_43:
  v128 = *v11;
  if (!*v11)
  {
    goto LABEL_148;
  }

  v122 = a1;
  v124 = [[HVDataSourceContentState alloc] initWithDataSource:v7 basePath:v8[4]];
  v12 = 0;
  v138 = v7;
  v136 = v8;
  v127 = v10;
  while (2)
  {
    v129 = v12;
    v13 = objc_autoreleasePoolPush();
    v14 = v124;
    v132 = v10;
    v15 = v133;
    v134 = v126;
    v160 = 0;
    v161 = 0;
    v16 = v8[3];
    v159 = 0;
    v135 = v14;
    v17 = v139;
    LOBYTE(v14) = [v16 dequeueContent:&v161 contentProtection:&v160 dataSource:v7 dataSourceContentState:v14 minimumLevelOfService:v139 inMemoryItemsOnly:v125 error:&v159];
    v18 = v159;
    v131 = v15;
    context = v13;
    if ((v14 & 1) == 0)
    {
      v26 = hv_default_log_handle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v165 = v18;
        _os_log_error_impl(&dword_2321EC000, v26, OS_LOG_TYPE_ERROR, "HVConsumerCoordinator: _consumeOneContentFromOneDataSource: dequeueContent error: %@", buf, 0xCu);
      }

      v27 = v18;
      v28 = 0;
      v167[0] = 0;
      v29 = v18;
      goto LABEL_123;
    }

    if (!v161)
    {
      v30 = hv_default_log_handle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2321EC000, v30, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: _consumeOneContentFromOneDataSource: no content available", buf, 2u);
      }

      v28 = 0;
      v29 = 0;
      v167[0] = 1;
      goto LABEL_123;
    }

    v19 = [HVConsumptionContext alloc];
    v142 = [(HVConsumptionContext *)v19 initWithContent:v161 contentProtection:v160 scheduledTaskShouldContinueBlock:v15];
    v20 = HVDataSourceContentStateKey(v7, v161);
    v21 = [(HVDataSourceContentState *)v135 deferredContentStates];
    v123 = v20;
    v22 = [v21 objectForKeyedSubscript:v20];
    v23 = [v22 mutableCopy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v31 = [HVMutableContentState alloc];
      v32 = [MEMORY[0x277CBEB98] set];
      v25 = [(HVMutableContentState *)v31 initWithConsumers:v32 levelOfService:v139];
    }

    v33 = [(HVContentState *)v25 levelOfService];
    if (v33 >= v139)
    {
      v34 = v139;
    }

    else
    {
      v34 = v33;
    }

    [(HVMutableContentState *)v25 setLevelOfService:v34];
    v35 = [(HVDataSourceContentState *)v135 deferredContentStates];
    [v35 setObject:0 forKeyedSubscript:v123];

    v36 = hv_default_log_handle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *v165 = v142;
      *&v165[8] = 2112;
      *&v165[10] = v126;
      _os_log_debug_impl(&dword_2321EC000, v36, OS_LOG_TYPE_DEBUG, "HVConsumerCoordinator: _consumeOneContentFromOneDataSource: context: %@ consumers: %@", buf, 0x16u);
    }

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v37 = v134;
    v144 = [v37 countByEnumeratingWithState:&v155 objects:buf count:16];
    if (!v144)
    {

      v29 = 0;
      v86 = 1;
      goto LABEL_122;
    }

    v137 = 0;
    v143 = *v156;
    v38 = 1;
    v140 = v37;
    v141 = v25;
    while (2)
    {
      v39 = 0;
      do
      {
        if (*v156 != v143)
        {
          objc_enumerationMutation(v37);
        }

        v40 = *(*(&v155 + 1) + 8 * v39);
        v41 = objc_autoreleasePoolPush();
        v42 = [v37 objectForKey:v40];
        if (!v42)
        {
          v82 = [MEMORY[0x277CCA890] currentHandler];
          [v82 handleFailureInMethod:sel__consumeOneContentFromOneDataSource_minimumLevelOfService_inMemoryItemsOnly_dataSourceContentState_guardedData_shouldContinueBlock_contentWasAvailable_consumers_consumerSelector_error_ object:v136 file:@"HVConsumerCoordinator.m" lineNumber:681 description:{@"Consumer %@ is missing state", v40}];
        }

        if (![v42 levelOfService])
        {
          v57 = hv_default_log_handle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *v167 = 138412290;
            v168 = v40;
            _os_log_impl(&dword_2321EC000, v57, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: _consumeOneContentFromOneDataSource: ignoring consumer %@ registered for No Service.", v167, 0xCu);
          }

          goto LABEL_96;
        }

        v147 = v18;
        v43 = v161;
        v44 = v40;
        v45 = v42;
        v46 = v25;
        v148 = v142;
        v47 = v43;
        v48 = [v44 consumerName];
        v49 = [(HVContentState *)v46 consumers];
        v50 = [v49 containsObject:v48];

        v149 = v45;
        v145 = v41;
        v146 = v47;
        if (v50)
        {
          v51 = hv_default_log_handle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = [v47 uniqueId];
            *v167 = 138412546;
            v168 = v48;
            v169 = 2112;
            *v170 = v52;
            v53 = v51;
            v54 = "HVConsumerCoordinator: _consumeOneContentFromOneDataSourceToOneConsumer: consumer %@ has already seen content %@";
            goto LABEL_72;
          }

          goto LABEL_74;
        }

        if ([v45 levelOfService] < v139)
        {
          v51 = hv_default_log_handle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v58 = [v45 levelOfService];
            *v167 = 138412802;
            v168 = v48;
            v169 = 1024;
            *v170 = v58;
            *&v170[4] = 1024;
            *&v170[6] = v139;
            _os_log_impl(&dword_2321EC000, v51, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: _consumeOneContentFromOneDataSourceToOneConsumer: consumer %@ registered at LoS %hhu which is below minimum LoS %hhu.", v167, 0x18u);
          }

          v56 = 1;
          v55 = 1;
          goto LABEL_82;
        }

        v70 = [v44 methodForSelector:v128];
        if (!v70)
        {
          v51 = hv_default_log_handle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            *v167 = 138412290;
            v168 = v44;
            _os_log_fault_impl(&dword_2321EC000, v51, OS_LOG_TYPE_FAULT, "HVConsumerCoordinator: _consumeOneContentFromOneDataSourceToOneConsumer: methodForSelector on %@ failed", v167, 0xCu);
          }

          goto LABEL_74;
        }

        v51 = v70(v44, v128, v148);
        v71 = [v51 contentWasProcessed];
        v72 = [v71 BOOLValue];

        if (v72)
        {
          [v45 setDocumentsConsumed:{objc_msgSend(v45, "documentsConsumed") + 1}];
          v73 = [v51 numberOfExtractions];

          if (v73)
          {
            v74 = [v51 numberOfExtractions];
            [v45 setNumberOfExtractions:{objc_msgSend(v45, "numberOfExtractions") + objc_msgSend(v74, "intValue")}];
          }
        }

        else
        {
          [v45 setDocumentsIgnored:{objc_msgSend(v45, "documentsIgnored") + 1}];
        }

        if ((-[NSObject success](v51, "success") & 1) != 0 || ([v45 setErrorsReported:{objc_msgSend(v45, "errorsReported") + 1}], -[NSObject error](v51, "error"), v75 = objc_claimAutoreleasedReturnValue(), v76 = objc_msgSend(v75, "code"), v75, v76 != 1))
        {
          v79 = objc_autoreleasePoolPush();
          v80 = [(HVContentState *)v46 consumers];
          v81 = [v80 setByAddingObject:v48];

          objc_autoreleasePoolPop(v79);
          [(HVMutableContentState *)v46 setConsumers:v81];

          v52 = hv_default_log_handle();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *v167 = 138412546;
            v168 = v44;
            v169 = 2112;
            *v170 = v45;
            v53 = v52;
            v54 = "HVConsumerCoordinator: _consumeOneContentFromOneDataSourceToOneConsumer: %@ consumed content: new state = %@";
LABEL_72:
            _os_log_impl(&dword_2321EC000, v53, OS_LOG_TYPE_DEFAULT, v54, v167, 0x16u);
          }

LABEL_74:
          v55 = 0;
          v56 = 1;
LABEL_82:
          v59 = v147;
          v60 = v147;
          goto LABEL_83;
        }

        v77 = hv_default_log_handle();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *v167 = 138412290;
          v168 = v44;
          _os_log_impl(&dword_2321EC000, v77, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: _consumeOneContentFromOneDataSourceToOneConsumer: %@ reported being interrupted so exiting early and leaving content in queue", v167, 0xCu);
        }

        [v45 setNumberOfInterruptions:{objc_msgSend(v45, "numberOfInterruptions") + 1}];
        v60 = [v51 error];
        v78 = v60;
        v56 = 0;
        v55 = 1;
        v59 = v147;
LABEL_83:

        v61 = v60;
        v25 = v141;
        v41 = v145;
        if (v55)
        {
          v62 = v161;
          v63 = [v62 uniqueId];
          v64 = v136[3];
          v162 = 0;
          v65 = [v64 dequeuedContentNotConsumed:v62 dataSource:v138 error:&v162];

          v66 = v162;
          v67 = hv_default_log_handle();
          v68 = v67;
          if (v65)
          {
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
LABEL_93:

              v137 = 1;
              goto LABEL_94;
            }

            v69 = HVDataSourceDescription(v138);
            *v167 = 138412546;
            v168 = v63;
            v169 = 2114;
            *v170 = v69;
            _os_log_impl(&dword_2321EC000, v68, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: _reportDeferralWithContent: reenqueued %@ to %{public}@", v167, 0x16u);
          }

          else
          {
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_93;
            }

            v69 = HVDataSourceDescription(v138);
            *v167 = 138412546;
            v168 = v63;
            v169 = 2114;
            *v170 = v69;
            _os_log_error_impl(&dword_2321EC000, v68, OS_LOG_TYPE_ERROR, "HVConsumerCoordinator: _reportDeferralWithContent: failed to reenqueue %@ to %{public}@", v167, 0x16u);
          }

          goto LABEL_93;
        }

LABEL_94:
        v38 = v56;
        if ((v56 & 1) == 0)
        {

          objc_autoreleasePoolPop(v145);
          v7 = v138;
          v17 = v139;
          if ((v137 & 1) == 0)
          {
            goto LABEL_119;
          }

          goto LABEL_113;
        }

        v18 = v61;
        v37 = v140;
LABEL_96:

        objc_autoreleasePoolPop(v41);
        ++v39;
      }

      while (v144 != v39);
      v83 = [v37 countByEnumeratingWithState:&v155 objects:buf count:16];
      v144 = v83;
      if (v83)
      {
        continue;
      }

      break;
    }

    if ((v137 & 1) == 0)
    {
      v7 = v138;
      v17 = v139;
      if (v38)
      {
        v29 = 0;
        v86 = 1;
        goto LABEL_121;
      }

      v61 = v18;
      goto LABEL_119;
    }

    v61 = v18;
    v7 = v138;
    v17 = v139;
LABEL_113:
    v84 = [(HVMutableContentState *)v25 copy];
    v85 = [(HVDataSourceContentState *)v135 deferredContentStates];
    [v85 setObject:v84 forKeyedSubscript:v123];

    if (v38)
    {
      v29 = 0;
      v86 = 1;
      goto LABEL_120;
    }

LABEL_119:
    v87 = v61;
    v86 = 0;
    v29 = v61;
LABEL_120:
    v18 = v61;
LABEL_121:
    v8 = v136;
LABEL_122:
    v167[0] = v86;

    v28 = 1;
LABEL_123:

    v88 = v167[0];
    v89 = v29;

    if (v133 && ((v133)[2](v131) & 1) == 0)
    {
      v91 = hv_default_log_handle();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2321EC000, v91, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: _consumeAllContentFromOneDataSource: shouldContinueBlock returned NO.", buf, 2u);
      }

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v10 = v127;
    v92 = v127[1];
    if (v92 && [(HVBudget *)v92 sourcesFilteredByBudgetAndRegistrationsFromAvailableSources:v7 levelOfService:v17]== v7)
    {
      v93 = 1;
    }

    else
    {
      v94 = hv_default_log_handle();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2321EC000, v94, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: _consumeAllContentFromOneDataSource: consumed budget while processing", buf, 2u);
      }

      v93 = 0;
      v10 = v127;
    }

    objc_autoreleasePoolPop(context);
    if (v88)
    {
      v12 = v89;
      if ((v90 & v93 & v28 & 1) == 0)
      {
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v95 = v134;
        v96 = [v95 countByEnumeratingWithState:&v151 objects:v163 count:16];
        if (v96)
        {
          v97 = v96;
          v98 = *v152;
          v99 = 4;
          do
          {
            for (i = 0; i != v97; ++i)
            {
              if (*v152 != v98)
              {
                objc_enumerationMutation(v95);
              }

              v101 = [v95 objectForKey:*(*(&v151 + 1) + 8 * i)];
              if ([v101 levelOfService])
              {
                v102 = [v101 levelOfService];
                if (v102 < v99)
                {
                  v99 = v102;
                }
              }
            }

            v97 = [v95 countByEnumeratingWithState:&v151 objects:v163 count:16];
          }

          while (v97);
        }

        else
        {
          v99 = 4;
        }

        if ([v95 count] && (v139 > v99 || ((v28 | v90 & v93 ^ 1) & 1) != 0))
        {
          v111 = v135;
          [(HVDataSourceContentState *)v135 saveStateWithError:0];
          v110 = 0;
          v109 = 1;
          a1 = v122;
        }

        else
        {
          if (![v95 count])
          {
            v112 = hv_default_log_handle();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
            {
              v113 = HVDataSourceDescription(v138);
              *buf = 138543362;
              *v165 = v113;
              _os_log_impl(&dword_2321EC000, v112, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator<%{public}@>: no consumers found for data source!", buf, 0xCu);
            }
          }

          v114 = v136[4];
          v150 = 0;
          v115 = [HVDataSourceContentState deleteStateForDataSource:v138 basePath:v114 error:&v150];
          v116 = v150;
          a1 = v122;
          v111 = v135;
          if (!v115)
          {
            v117 = hv_default_log_handle();
            if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
            {
              v118 = v136[4];
              v119 = HVDataSourceDescription(v138);
              *buf = 138543874;
              *v165 = v118;
              *&v165[8] = 2112;
              *&v165[10] = v119;
              *&v165[18] = 2112;
              v166 = v116;
              _os_log_impl(&dword_2321EC000, v117, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: _consumeAllContentFromOneDataSource<%{public}@>: failed to delete state file at %@: %@", buf, 0x20u);
            }
          }

          v110 = 0;
          v109 = 2;
        }

        goto LABEL_169;
      }

      continue;
    }

    break;
  }

  v107 = hv_default_log_handle();
  if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v165 = v89;
    _os_log_error_impl(&dword_2321EC000, v107, OS_LOG_TYPE_ERROR, "HVConsumerCoordinator: _consumeAllContentFromOneDataSource: error: %@", buf, 0xCu);
  }

  v108 = v89;
  v109 = 0;
  v110 = v89;
  a1 = v122;
  v111 = v135;
LABEL_169:

  v106 = v110;
  if (!v109)
  {
    goto LABEL_172;
  }

  if (v109 == 2)
  {
    *(*(*(a1 + 64) + 8) + 24) |= *(a1 + 100);
  }

LABEL_173:
  v120 = *(a1 + 48);
  if (v120 && ((*(v120 + 16))() & 1) == 0)
  {
    v121 = hv_default_log_handle();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2321EC000, v121, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: consumeAllContentFromAllDataSources: shouldContinueBlock returned NO.", buf, 2u);
    }

    **(a1 + 88) = 1;
  }
}

- (id)_consumersForOneDataSource:(void *)source guardedData:
{
  sourceCopy = source;
  v6 = sourceCopy;
  if (self)
  {
    self = 0;
    if (a2 <= 255)
    {
      if (a2 <= 15)
      {
        if (a2 > 3)
        {
          if (a2 == 4)
          {
            v7 = 32;
          }

          else
          {
            if (a2 != 8)
            {
              goto LABEL_40;
            }

            v7 = 40;
          }
        }

        else if (a2 == 1)
        {
          v7 = 16;
        }

        else
        {
          if (a2 != 2)
          {
            goto LABEL_40;
          }

          v7 = 24;
        }

        goto LABEL_39;
      }

      if (a2 > 63)
      {
        if (a2 != 64)
        {
          if (a2 != 128)
          {
            goto LABEL_40;
          }

          v7 = 64;
          goto LABEL_39;
        }
      }

      else
      {
        if (a2 == 16)
        {
          v7 = 48;
          goto LABEL_39;
        }

        if (a2 != 32)
        {
          goto LABEL_40;
        }
      }

      v7 = 56;
LABEL_39:
      self = *&sourceCopy[v7];
      goto LABEL_40;
    }

    if (a2 <= 4095)
    {
      if (a2 > 1023)
      {
        if (a2 == 1024)
        {
          v7 = 88;
        }

        else
        {
          if (a2 != 2048)
          {
            goto LABEL_40;
          }

          v7 = 96;
        }
      }

      else if (a2 == 256)
      {
        v7 = 72;
      }

      else
      {
        if (a2 != 512)
        {
          goto LABEL_40;
        }

        v7 = 80;
      }

      goto LABEL_39;
    }

    if (a2 >= 0x4000)
    {
      if (a2 == 0x4000 || a2 == 0x8000)
      {
        v7 = 112;
        goto LABEL_39;
      }
    }

    else if (a2 == 4096 || a2 == 0x2000)
    {
      v7 = 104;
      goto LABEL_39;
    }
  }

LABEL_40:

  return self;
}

- (void)contentAvailableFromSources:(unsigned int)sources
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = os_transaction_create();
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HVDataSourceDescription(sources);
    *buf = 138543362;
    v13 = v8;
    _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: contentAvailableFromSources: %{public}@", buf, 0xCu);
  }

  dispatch_group_enter(self->_waitingForLock);
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HVConsumerCoordinator_contentAvailableFromSources___block_invoke;
  v10[3] = &unk_278968E30;
  sourcesCopy = sources;
  v10[4] = self;
  v10[5] = a2;
  [(_PASLock *)lock runWithLockAcquired:v10];
}

void __53__HVConsumerCoordinator_contentAvailableFromSources___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_group_leave(*(*(a1 + 32) + 40));
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v4 = *(a1 + 48);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __53__HVConsumerCoordinator_contentAvailableFromSources___block_invoke_2;
  v18 = &unk_278968E08;
  v19 = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 40);
  v21 = &v23;
  v22 = v6;
  v20 = v5;
  HVDataSourceRunBlockPerSetBit(v4, &v15);
  if (*(v24 + 24) == 1)
  {
    [HVScheduledTasks delayedBudgetedContentAvailable:v15];
    v7 = [(HVBudget *)v5[1] sourcesFilteredByBudgetAndRegistrationsFromAvailableSources:2 levelOfService:?];
    v8 = hv_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HVDataSourceDescription(v7);
      *buf = 138543362;
      v28 = v9;
      _os_log_impl(&dword_2321EC000, v8, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: sources after applying budget: %{public}@", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      [(HVConsumerCoordinator *)v10 _consumeContentFromAllDataSources:v7 minimumLevelOfService:2 inMemoryItemsOnly:1 guardedData:v5 shouldContinueBlock:0 error:0];
    }
  }

  v11 = [(HVBudget *)v5[1] sourcesFilteredByBudgetAndRegistrationsFromAvailableSources:3 levelOfService:?];
  v12 = hv_default_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HVDataSourceDescription(v11);
    *buf = 138543362;
    v28 = v13;
    _os_log_impl(&dword_2321EC000, v12, OS_LOG_TYPE_DEFAULT, "HVConsumerCoordinator: sources after applying budget: %{public}@", buf, 0xCu);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    [(HVConsumerCoordinator *)v14 _consumeContentFromAllDataSources:v11 minimumLevelOfService:3 inMemoryItemsOnly:0 guardedData:v5 shouldContinueBlock:0 error:0];
  }

  _Block_object_dispose(&v23, 8);
}

void __53__HVConsumerCoordinator_contentAvailableFromSources___block_invoke_2(uint64_t a1, int a2, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  [(HVConsumerCoordinator *)*(a1 + 32) _consumersForOneDataSource:a2 guardedData:*(a1 + 40)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v5 objectForKey:v10];
        if (!v12)
        {
          [MEMORY[0x277CCA890] currentHandler];
          v13 = v14 = v10;
          [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"HVConsumerCoordinator.m" lineNumber:221 description:{@"Consumer %@ is missing state", v14}];
        }

        if ([v12 levelOfService] == 2)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          *a3 = 1;

          objc_autoreleasePoolPop(v11);
          goto LABEL_13;
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (HVConsumerCoordinator)initWithQueues:(id)queues path:(id)path
{
  v31 = *MEMORY[0x277D85DE8];
  queuesCopy = queues;
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = HVConsumerCoordinator;
  v9 = [(HVConsumerCoordinator *)&v28 init];
  if (v9)
  {
    v10 = dispatch_group_create();
    waitingForLock = v9->_waitingForLock;
    v9->_waitingForLock = v10;

    v12 = [pathCopy stringByAppendingPathComponent:@"ConsumerCoordinator"];
    path = v9->_path;
    v9->_path = v12;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    objc_sync_enter(defaultManager);
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = v9->_path;
    v27 = 0;
    v17 = [defaultManager2 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v27];
    v18 = v27;

    if ((v17 & 1) == 0)
    {
      v19 = hv_default_log_handle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v30 = v18;
        _os_log_fault_impl(&dword_2321EC000, v19, OS_LOG_TYPE_FAULT, "HVConsumerCoordinator: failed to create ConsumerCoordinator subdirectory: %@", buf, 0xCu);
      }
    }

    objc_sync_exit(defaultManager);
    v20 = objc_alloc(MEMORY[0x277D425F8]);
    v21 = objc_opt_new();
    v22 = [v20 initWithGuardedData:v21];
    lock = v9->_lock;
    v9->_lock = v22;

    v24 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.proactive.ProactiveHarvesting.HVConsumerCoordinator.serialQueue" qosClass:9];
    serialQueue = v9->_serialQueue;
    v9->_serialQueue = v24;

    objc_storeStrong(&v9->_queues, queues);
    [(HVQueues *)v9->_queues registerQueueObserver:v9 dispatchQueue:v9->_serialQueue];
  }

  return v9;
}

- (HVConsumerCoordinator)init
{
  v3 = +[HVQueues defaultQueues];
  v4 = [HVPaths topDirectoryCreateIfNeeded:1];
  v5 = [(HVConsumerCoordinator *)self initWithQueues:v3 path:v4];

  return v5;
}

+ (id)defaultCoordinator
{
  if (defaultCoordinator__pasOnceToken2 != -1)
  {
    dispatch_once(&defaultCoordinator__pasOnceToken2, &__block_literal_global_728);
  }

  v3 = defaultCoordinator__pasExprOnceResult;

  return v3;
}

void __43__HVConsumerCoordinator_defaultCoordinator__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = defaultCoordinator__pasExprOnceResult;
  defaultCoordinator__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end