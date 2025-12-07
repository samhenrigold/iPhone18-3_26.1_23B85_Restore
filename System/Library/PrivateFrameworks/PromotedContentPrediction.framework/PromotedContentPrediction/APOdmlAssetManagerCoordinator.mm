@interface APOdmlAssetManagerCoordinator
+ (id)sharedAssetManagerCoordinator;
- (APOdmlAssetManagerCoordinator)init;
- (id)assetManagerForPlacementType:(unint64_t)type assetManagerType:(unint64_t)managerType;
- (void)initializeAssetManagersforPlacementTypes:(id)types;
- (void)refreshTrialClientForPlacementTypes:(id)types;
- (void)setUpdateHandlerForNamespace:(id)namespace;
@end

@implementation APOdmlAssetManagerCoordinator

+ (id)sharedAssetManagerCoordinator
{
  if (qword_280CCF588 != -1)
  {
    sub_260EF80B0();
  }

  v3 = qword_280CCF580;

  return v3;
}

- (APOdmlAssetManagerCoordinator)init
{
  v22.receiver = self;
  v22.super_class = APOdmlAssetManagerCoordinator;
  v2 = [(APOdmlAssetManagerCoordinator *)&v22 init];
  if (v2)
  {
    v3 = [[APOdmlUnfairLock alloc] initWithOptions:1];
    refreshTrialLock = v2->_refreshTrialLock;
    v2->_refreshTrialLock = v3;

    v5 = [MEMORY[0x277D73660] clientWithIdentifier:238];
    trialClient = v2->_trialClient;
    v2->_trialClient = v5;

    [(APOdmlAssetManagerCoordinator *)v2 setUpdateHandlerForNamespace:@"AD_PLATFORMS_ODML"];
    [(APOdmlAssetManagerCoordinator *)v2 setUpdateHandlerForNamespace:@"SEARCH_ADS_COUNTERFACTUAL"];
    v2->_respondToRefreshNotification = 1;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    assetManagers = v2->_assetManagers;
    v2->_assetManagers = dictionary;

    v9 = MEMORY[0x277CBEA60];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v11 = [v9 arrayWithObjects:{v10, 0}];
    [(APOdmlAssetManagerCoordinator *)v2 initializeAssetManagersforPlacementTypes:v11];

    v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
    refreshClientQueue = v2->_refreshClientQueue;
    v2->_refreshClientQueue = v12;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    v15 = v2->_refreshClientQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_260ECE07C;
    v20[3] = &unk_279AC5F00;
    v16 = v2;
    v21 = v16;
    v17 = [defaultCenter addObserverForName:@"kAPODMLDeviceKnowledgeManagerRanNotification" object:0 queue:v15 usingBlock:v20];
    refreshClientNotificationObserver = v16->_refreshClientNotificationObserver;
    v16->_refreshClientNotificationObserver = v17;
  }

  return v2;
}

- (id)assetManagerForPlacementType:(unint64_t)type assetManagerType:(unint64_t)managerType
{
  v15[1] = *MEMORY[0x277D85DE8];
  trialClient = [(APOdmlAssetManagerCoordinator *)self trialClient];

  if (!trialClient)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(APOdmlAssetManagerCoordinator *)self refreshTrialClientForPlacementTypes:v9];
  }

  assetManagers = [(APOdmlAssetManagerCoordinator *)self assetManagers];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:type];
  v12 = [assetManagers objectForKey:v11];
  v13 = [v12 assetManagerForType:managerType];

  return v13;
}

- (void)refreshTrialClientForPlacementTypes:(id)types
{
  typesCopy = types;
  refreshTrialLock = [(APOdmlAssetManagerCoordinator *)self refreshTrialLock];
  [refreshTrialLock lock];

  v6 = [MEMORY[0x277D73660] clientWithIdentifier:238];
  [(APOdmlAssetManagerCoordinator *)self setTrialClient:v6];

  [(APOdmlAssetManagerCoordinator *)self setUpdateHandlerForNamespace:@"AD_PLATFORMS_ODML"];
  [(APOdmlAssetManagerCoordinator *)self setUpdateHandlerForNamespace:@"SEARCH_ADS_COUNTERFACTUAL"];
  [(APOdmlAssetManagerCoordinator *)self initializeAssetManagersforPlacementTypes:typesCopy];

  refreshTrialLock2 = [(APOdmlAssetManagerCoordinator *)self refreshTrialLock];
  [refreshTrialLock2 unlock];
}

- (void)initializeAssetManagersforPlacementTypes:(id)types
{
  v16 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [typesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(typesCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = -[APOdmlAssetManagersForPlacement initWithPlacementType:trialClient:]([APOdmlAssetManagersForPlacement alloc], "initWithPlacementType:trialClient:", [v9 unsignedIntegerValue], self->_trialClient);
        [(NSMutableDictionary *)self->_assetManagers setObject:v10 forKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [typesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)setUpdateHandlerForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  objc_initWeak(&location, self);
  trialClient = [(APOdmlAssetManagerCoordinator *)self trialClient];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_260ECE558;
  v7[3] = &unk_279AC5F28;
  objc_copyWeak(&v8, &location);
  v6 = [trialClient addUpdateHandlerForNamespaceName:namespaceCopy usingBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

@end