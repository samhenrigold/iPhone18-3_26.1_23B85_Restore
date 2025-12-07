@interface HDHAHealthPluginHostFeedGenerator
- (HDHAHealthPluginHostFeedGenerator)init;
- (void)handleJournaledSharingEntries:(id)entries;
- (void)invalidateStoreCache;
- (void)runBackgroundGenerationForPluginIdentifiers:(id)identifiers commitUrgentTransaction:(BOOL)transaction feedItemsOnly:(BOOL)only;
@end

@implementation HDHAHealthPluginHostFeedGenerator

- (HDHAHealthPluginHostFeedGenerator)init
{
  v8.receiver = self;
  v8.super_class = HDHAHealthPluginHostFeedGenerator;
  v2 = [(HDHAHealthPluginHostFeedGenerator *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(HDHAHealthAppPluginHostConnection);
    pluginHostConnection = v2->_pluginHostConnection;
    v2->_pluginHostConnection = v3;

    v5 = objc_alloc_init(_TtC21HealthAppHealthDaemon40HealthAppHealthDaemonOrchestrationClient);
    orchestrationConnection = v2->_orchestrationConnection;
    v2->_orchestrationConnection = v5;
  }

  return v2;
}

- (void)runBackgroundGenerationForPluginIdentifiers:(id)identifiers commitUrgentTransaction:(BOOL)transaction feedItemsOnly:(BOOL)only
{
  onlyCopy = only;
  transactionCopy = transaction;
  identifiersCopy = identifiers;
  orchestrationConnection = self->_orchestrationConnection;
  if (onlyCopy)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __119__HDHAHealthPluginHostFeedGenerator_runBackgroundGenerationForPluginIdentifiers_commitUrgentTransaction_feedItemsOnly___block_invoke;
  v12[3] = &unk_278658228;
  v13 = identifiersCopy;
  v11 = identifiersCopy;
  [(HealthAppHealthDaemonOrchestrationClient *)orchestrationConnection runBackgroundGenerationWithPlugins:v11 commitAsUrgent:transactionCopy generationType:v10 completion:v12];
}

void __119__HDHAHealthPluginHostFeedGenerator_runBackgroundGenerationForPluginIdentifiers_commitUrgentTransaction_feedItemsOnly___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3 == 0;
    v7 = 2112;
    v8 = v5;
    _os_log_impl(&dword_22939E000, v4, OS_LOG_TYPE_DEFAULT, "Running background generation success %d for pluginIdentifiers %@", v6, 0x12u);
  }
}

void __73__HDHAHealthPluginHostFeedGenerator_runBackgroundGenerationForAllPlugins__block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2 == 0;
    _os_log_impl(&dword_22939E000, v3, OS_LOG_TYPE_DEFAULT, "Running background generation success %d for all plugins", v4, 8u);
  }
}

- (void)handleJournaledSharingEntries:(id)entries
{
  entriesCopy = entries;
  healthAppPluginHost = [(HDHAHealthPluginHostFeedGenerator *)self healthAppPluginHost];
  _HKInitializeLogging();
  v6 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22939E000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to handle journaled sharing entries", v7, 2u);
  }

  [healthAppPluginHost handleJournaledSharingEntries:entriesCopy completion:&__block_literal_global_299];
}

void __67__HDHAHealthPluginHostFeedGenerator_handleJournaledSharingEntries___block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_22939E000, v5, OS_LOG_TYPE_DEFAULT, "Error handling journaled sharing entries %{public}@", &v6, 0xCu);
    }
  }
}

- (void)invalidateStoreCache
{
  _HKInitializeLogging();
  v3 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22939E000, v3, OS_LOG_TYPE_DEFAULT, "Wiping Health app store cache", v5, 2u);
  }

  synchronousHealthAppPluginHost = [(HDHAHealthPluginHostFeedGenerator *)self synchronousHealthAppPluginHost];
  [synchronousHealthAppPluginHost invalidateStoreCache];
}

@end