@interface DKForegroundServicesMonitor
@end

@implementation DKForegroundServicesMonitor

void __37___DKForegroundServicesMonitor_start__block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D46FB0];
  v4 = a2;
  v5 = [v3 descriptor];
  [v4 setStateDescriptor:v5];

  v6 = MEMORY[0x277D46FA0];
  v7 = [*(a1 + 32) servicesOfInterestForWatchCommunication];
  v8 = [v6 predicateMatchingBundleIdentifiers:v7];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v4 setPredicates:v9];

  v10 = [*(a1 + 32) processUpdateHandler];
  [v4 setUpdateHandler:v10];
}

void __52___DKForegroundServicesMonitor_processUpdateHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52___DKForegroundServicesMonitor_processUpdateHandler__block_invoke_2;
    v14[3] = &unk_27856F6C8;
    v14[4] = v12;
    v15 = v7;
    v16 = v9;
    v17 = v8;
    dispatch_sync(v13, v14);
  }
}

id *__52___DKForegroundServicesMonitor_processUpdateHandler__block_invoke_2(id *result)
{
  if (*(result[4] + 19) == result[5])
  {
    return [result[4] processMonitor:? didUpdateState:? forProcess:?];
  }

  return result;
}

@end