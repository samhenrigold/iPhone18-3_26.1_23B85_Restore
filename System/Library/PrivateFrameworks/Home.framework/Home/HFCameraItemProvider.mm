@interface HFCameraItemProvider
- (HFCameraItemProvider)init;
- (HFCameraItemProvider)initWithHome:(id)home;
- (id)_favoriteFilter;
- (id)_roomFilter;
- (id)_showInHomeDashboardFilter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFCameraItemProvider

- (HFCameraItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraItemProvider.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HFCameraItemProvider init]", v5}];

  return 0;
}

- (HFCameraItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v10.receiver = self;
  v10.super_class = HFCameraItemProvider;
  v6 = [(HFItemProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = [MEMORY[0x277CBEB58] set];
    [(HFCameraItemProvider *)v7 setCameraItems:v8];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = objc_msgSend_home(self);
  v6 = [v4 initWithHome:v5];

  return v6;
}

- (id)reloadItems
{
  v27 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__HFCameraItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5228;
  objc_copyWeak(&v24, &location);
  v3 = _Block_copy(aBlock);
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = objc_msgSend_home(self);
  accessories = [v5 accessories];

  v7 = [accessories countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(accessories);
        }

        cameraProfiles = [*(*(&v19 + 1) + 8 * i) cameraProfiles];
        [array addObjectsFromArray:cameraProfiles];
      }

      v7 = [accessories countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v7);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __35__HFCameraItemProvider_reloadItems__block_invoke_2;
  v18[3] = &unk_277DF8038;
  v18[4] = self;
  v11 = [array na_filter:v18];
  filter = [(HFCameraItemProvider *)self filter];
  v13 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v11 filter:filter itemMap:v3];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __35__HFCameraItemProvider_reloadItems__block_invoke_3;
  v16[3] = &unk_277DF30B8;
  objc_copyWeak(&v17, &location);
  v14 = [v13 flatMap:v16];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v14;
}

HFCameraItem *__35__HFCameraItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [HFCameraItem alloc];
  v6 = objc_msgSend_home(WeakRetained);
  v7 = [v6 hf_characteristicValueManager];
  v8 = [(HFAccessoryProfileItem *)v5 initWithProfile:v3 valueSource:v7];

  return v8;
}

uint64_t __35__HFCameraItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _roomFilter];
  if ((v4)[2](v4, v3))
  {
    v5 = [*(a1 + 32) _showInHomeDashboardFilter];
    v6 = (v5)[2](v5, v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __35__HFCameraItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained cameraItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained cameraItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = HFCameraItemProvider;
  invalidationReasons = [(HFItemProvider *)&v6 invalidationReasons];
  v7[0] = @"service";
  v7[1] = @"accessory";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [invalidationReasons setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)_roomFilter
{
  room = [(HFCameraItemProvider *)self room];
  uniqueIdentifier = [room uniqueIdentifier];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__HFCameraItemProvider__roomFilter__block_invoke;
  aBlock[3] = &unk_277DF8038;
  v9 = uniqueIdentifier;
  v4 = uniqueIdentifier;
  v5 = _Block_copy(aBlock);
  v6 = [v5 copy];

  return v6;
}

uint64_t __35__HFCameraItemProvider__roomFilter__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 1;
  }

  v3 = [a2 accessory];
  v4 = [v3 room];
  v5 = [v4 uniqueIdentifier];
  v6 = [v2 isEqual:v5];

  return v6;
}

- (id)_favoriteFilter
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__HFCameraItemProvider__favoriteFilter__block_invoke;
  aBlock[3] = &unk_277DF5BC0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

uint64_t __39__HFCameraItemProvider__favoriteFilter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) onlyShowsFavorites])
  {
    v4 = [v3 hf_effectiveIsFavorite];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_showInHomeDashboardFilter
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__HFCameraItemProvider__showInHomeDashboardFilter__block_invoke;
  aBlock[3] = &unk_277DF5BE8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

uint64_t __50__HFCameraItemProvider__showInHomeDashboardFilter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) onlyShowsFavorites])
  {
    v4 = [v3 hf_effectiveShowInHomeDashboard];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end