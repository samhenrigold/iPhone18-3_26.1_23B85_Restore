@interface HFAccessoryCategoryStatusItem
+ (id)statusItemClasses;
- (HFAccessoryCategoryStatusItem)initWithHome:(id)home room:(id)room valueSource:(id)source;
- (HFAccessoryTypeGroup)accessoryTypeGroup;
- (id)_statusItemOfClass:(Class)class;
- (id)_subclass_updateWithOptions:(id)options;
- (id)accessoryTypeGroupFilter;
- (id)sortedActionSetItemsWithProvider:(id)provider;
- (void)applyInflectionToDescriptions:(id)descriptions;
@end

@implementation HFAccessoryCategoryStatusItem

- (HFAccessoryCategoryStatusItem)initWithHome:(id)home room:(id)room valueSource:(id)source
{
  homeCopy = home;
  roomCopy = room;
  sourceCopy = source;
  v24.receiver = self;
  v24.super_class = HFAccessoryCategoryStatusItem;
  v11 = [(HFStatusItem *)&v24 initWithHome:homeCopy room:roomCopy valueSource:sourceCopy];
  if (v11)
  {
    statusItemClasses = [objc_opt_class() statusItemClasses];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__HFAccessoryCategoryStatusItem_initWithHome_room_valueSource___block_invoke;
    v20[3] = &unk_277DF4258;
    v21 = homeCopy;
    v22 = roomCopy;
    v23 = sourceCopy;
    v13 = [statusItemClasses na_map:v20];
    statusItems = v11->_statusItems;
    v11->_statusItems = v13;

    accessoryTypeGroup = [(HFAccessoryCategoryStatusItem *)v11 accessoryTypeGroup];
    uniqueIdentifier = [accessoryTypeGroup uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    uuidString = v11->_uuidString;
    v11->_uuidString = uUIDString;
  }

  return v11;
}

id __63__HFAccessoryCategoryStatusItem_initWithHome_room_valueSource___block_invoke(void *a1, Class a2)
{
  v2 = [[a2 alloc] initWithHome:a1[4] room:a1[5] valueSource:a1[6]];

  return v2;
}

- (id)accessoryTypeGroupFilter
{
  accessoryTypeGroup = [(HFAccessoryCategoryStatusItem *)self accessoryTypeGroup];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__HFAccessoryCategoryStatusItem_accessoryTypeGroupFilter__block_invoke;
  aBlock[3] = &unk_277DF4280;
  v8 = accessoryTypeGroup;
  v3 = accessoryTypeGroup;
  v4 = _Block_copy(aBlock);
  v5 = [v4 copy];

  return v5;
}

uint64_t __57__HFAccessoryCategoryStatusItem_accessoryTypeGroupFilter__block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = [v3 actions];
    v6 = [v5 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v45;
      v34 = v4;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v45 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v44 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 characteristic];
            v12 = objc_msgSend_service(v11);

            v13 = *(a1 + 32);
            v14 = [v12 hf_accessoryType];
            LOBYTE(v13) = [v13 containsType:v14];

            if (v13)
            {
              v28 = 1;
              v4 = v34;
              goto LABEL_33;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v10;
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v16 = [v15 mediaProfiles];
              v33 = [v16 countByEnumeratingWithState:&v40 objects:v49 count:16];
              if (v33)
              {
                v17 = *v41;
                v35 = v5;
                v30 = v7;
                v31 = v8;
                v32 = v15;
                v29 = *v41;
                do
                {
                  v18 = 0;
                  do
                  {
                    if (*v41 != v17)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v19 = *(*(&v40 + 1) + 8 * v18);
                    v36 = 0u;
                    v37 = 0u;
                    v38 = 0u;
                    v39 = 0u;
                    v20 = [v19 accessories];
                    v21 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
                    if (v21)
                    {
                      v22 = v21;
                      v23 = *v37;
                      while (2)
                      {
                        for (j = 0; j != v22; ++j)
                        {
                          if (*v37 != v23)
                          {
                            objc_enumerationMutation(v20);
                          }

                          v25 = *(a1 + 32);
                          v26 = [*(*(&v36 + 1) + 8 * j) hf_accessoryType];
                          LOBYTE(v25) = [v25 containsType:v26];

                          if (v25)
                          {

                            v28 = 1;
                            v4 = v34;
                            v5 = v35;
                            goto LABEL_33;
                          }
                        }

                        v22 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
                        if (v22)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    ++v18;
                    v5 = v35;
                    v7 = v30;
                    v8 = v31;
                    v17 = v29;
                  }

                  while (v18 != v33);
                  v15 = v32;
                  v33 = [v16 countByEnumeratingWithState:&v40 objects:v49 count:16];
                }

                while (v33);
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v44 objects:v50 count:16];
        v28 = 0;
        v4 = v34;
      }

      while (v7);
    }

    else
    {
      v28 = 0;
    }

LABEL_33:
  }

  else
  {
    v28 = 1;
  }

  return v28;
}

- (id)sortedActionSetItemsWithProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  room = [(HFStatusItem *)self room];
  [providerCopy setRoom:room];

  accessoryTypeGroupFilter = [(HFAccessoryCategoryStatusItem *)self accessoryTypeGroupFilter];
  [providerCopy setFilter:accessoryTypeGroupFilter];

  objc_initWeak(&location, self);
  reloadItems = [providerCopy reloadItems];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HFAccessoryCategoryStatusItem_sortedActionSetItemsWithProvider___block_invoke;
  v12[3] = &unk_277DF42A8;
  objc_copyWeak(&v14, &location);
  v9 = v5;
  v13 = v9;
  v10 = [reloadItems addCompletionBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

void __66__HFAccessoryCategoryStatusItem_sortedActionSetItemsWithProvider___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v14 allItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [HFReorderableHomeKitItemList alloc];
    v7 = [WeakRetained room];
    if (v7)
    {
      v8 = [(HFReorderableHomeKitItemList *)v6 initWithApplicationDataContainer:v7 category:@"categoryActionSets"];
    }

    else
    {
      v10 = objc_msgSend_home(WeakRetained);
      v8 = [(HFReorderableHomeKitItemList *)v6 initWithApplicationDataContainer:v10 category:@"categoryActionSets"];
    }

    v11 = [v14 allItems];
    v12 = [v11 allObjects];
    v13 = [(HFReorderableHomeKitItemList *)v8 sortedHomeKitItemComparator];
    v9 = [v12 sortedArrayUsingComparator:v13];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  [*(a1 + 32) finishWithResult:v9];
}

- (HFAccessoryTypeGroup)accessoryTypeGroup
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryCategoryStatusItem.m" lineNumber:100 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFAccessoryCategoryStatusItem accessoryTypeGroup]", objc_opt_class()}];

  return 0;
}

+ (id)statusItemClasses
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryCategoryStatusItem.m" lineNumber:106 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFAccessoryCategoryStatusItem statusItemClasses]", objc_opt_class()}];

  return 0;
}

- (id)_statusItemOfClass:(Class)class
{
  statusItems = [(HFAccessoryCategoryStatusItem *)self statusItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HFAccessoryCategoryStatusItem__statusItemOfClass___block_invoke;
  v7[3] = &__block_descriptor_40_e22_B16__0__HFStatusItem_8lu32l8;
  v7[4] = class;
  v5 = [statusItems na_firstObjectPassingTest:v7];

  return v5;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v46[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  room = [(HFStatusItem *)self room];
  accessories = [room accessories];
  v8 = accessories;
  if (accessories)
  {
    accessories2 = accessories;
  }

  else
  {
    v3 = objc_msgSend_home(self);
    accessories2 = [v3 accessories];
  }

  if (+[HFUtilities isPressDemoModeEnabled])
  {
    room2 = [(HFStatusItem *)self room];
    hf_demoModeAccessories = [room2 hf_demoModeAccessories];
    hf_demoModeAccessories2 = hf_demoModeAccessories;
    if (!hf_demoModeAccessories)
    {
      v3 = objc_msgSend_home(self);
      hf_demoModeAccessories2 = [v3 hf_demoModeAccessories];
    }

    v13 = [accessories2 arrayByAddingObjectsFromArray:hf_demoModeAccessories2];

    if (!hf_demoModeAccessories)
    {
    }

    accessories2 = v13;
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke;
  v44[3] = &unk_277DF3888;
  v44[4] = self;
  v14 = [accessories2 na_firstObjectPassingTest:v44];
  v15 = v14 == 0;

  if (v15 && [(HFAccessoryCategoryStatusItem *)self hidesWithNoAccessories])
  {
    v16 = MEMORY[0x277CBEB98];
    statusItemClasses = [objc_opt_class() statusItemClasses];
    v18 = [v16 setWithArray:statusItemClasses];
    v19 = [v18 na_flatMap:&__block_literal_global_18];

    v20 = MEMORY[0x277D2C900];
    v45[0] = @"hidden";
    v45[1] = @"dependentServiceTypes";
    v46[0] = MEMORY[0x277CBEC38];
    v46[1] = v19;
    v45[2] = @"dependentHomeKitClasses";
    v21 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v46[2] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
    v23 = [HFItemUpdateOutcome outcomeWithResults:v22];
    v24 = [v20 futureWithResult:v23];
  }

  else
  {
    v25 = [optionsCopy objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
    bOOLValue = [v25 BOOLValue];

    v27 = MEMORY[0x277D2C900];
    if (bOOLValue)
    {
      v19 = [HFItemUpdateOutcome outcomeWithResults:MEMORY[0x277CBEC10]];
      v24 = [v27 futureWithResult:v19];
    }

    else
    {
      v28 = objc_alloc_init(MEMORY[0x277D2C900]);
      statusItems = [(HFAccessoryCategoryStatusItem *)self statusItems];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_4;
      v42[3] = &unk_277DF4310;
      v43 = optionsCopy;
      v30 = [statusItems na_map:v42];

      v31 = MEMORY[0x277D2C900];
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v33 = [v31 combineAllFutures:v30 ignoringErrors:1 scheduler:mainThreadScheduler];

      objc_initWeak(&location, self);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_5;
      v38[3] = &unk_277DF4360;
      objc_copyWeak(&v40, &location);
      v34 = v28;
      v39 = v34;
      v35 = [v33 addCompletionBlock:v38];
      v36 = v39;
      v19 = v34;

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);

      v24 = v19;
    }
  }

  return v24;
}

BOOL __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isNonServiceBasedAccessory])
  {
    if ([v3 hf_isVisibleInHomeStatus])
    {
      v4 = [*(a1 + 32) accessoryTypeGroup];
      v5 = [v3 hf_accessoryType];
      v6 = [v4 containsType:v5];

      if (v6)
      {
        goto LABEL_7;
      }
    }
  }

  if (![v3 hf_isMatterOnlyAccessory])
  {
    goto LABEL_9;
  }

  v7 = [[HFMatterAccessoryRepresentable alloc] initWithAccessory:v3];
  if (![(HFMatterAccessoryRepresentable *)v7 hf_isVisibleInHomeStatus])
  {

    goto LABEL_9;
  }

  v8 = [*(a1 + 32) accessoryTypeGroup];
  v9 = [(HFMatterAccessoryRepresentable *)v7 hf_accessoryType];
  v10 = [v8 containsType:v9];

  if ((v10 & 1) == 0)
  {
LABEL_9:
    v12 = [v3 hf_visibleServices];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_2;
    v15[3] = &unk_277DF4020;
    v15[4] = *(a1 + 32);
    v13 = [v12 na_firstObjectPassingTest:v15];
    v11 = v13 != 0;

    goto LABEL_10;
  }

LABEL_7:
  v11 = 1;
LABEL_10:

  return v11;
}

uint64_t __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isVisibleInHomeStatus])
  {
    v4 = [*(a1 + 32) accessoryTypeGroup];
    v5 = [v3 hf_accessoryType];
    v6 = [v4 containsType:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_28252BE28])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return [v4 serviceTypes];
}

void __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__2;
    v37 = __Block_byref_object_dispose__2;
    v38 = [MEMORY[0x277CBEB58] set];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__2;
    v31 = __Block_byref_object_dispose__2;
    v32 = [MEMORY[0x277CBEB58] set];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__2;
    v25 = __Block_byref_object_dispose__2;
    v26 = [MEMORY[0x277CBEB58] set];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v8 = [WeakRetained statusItems];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_31;
    v16[3] = &unk_277DF4338;
    v16[4] = &v17;
    v16[5] = &v21;
    v16[6] = &v33;
    v16[7] = &v27;
    [v8 na_each:v16];

    v9 = [MEMORY[0x277CBEB38] dictionary];
    [v9 setObject:v28[5] forKeyedSubscript:@"dependentHomeKitObjects"];
    [v9 setObject:v34[5] forKeyedSubscript:@"dependentServiceTypes"];
    [v9 setObject:v22[5] forKeyedSubscript:@"representedHomeKitObjects"];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v18[3]];
    [v9 setObject:v10 forKeyedSubscript:@"state"];

    v11 = *(a1 + 32);
    v12 = [HFItemUpdateOutcome outcomeWithResults:v9];
    [v11 finishWithResult:v12];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v13 = *(a1 + 32);
    v39 = @"hidden";
    v40[0] = MEMORY[0x277CBEC38];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v15 = [HFItemUpdateOutcome outcomeWithResults:v14];
    [v13 finishWithResult:v15];
  }
}

void __61__HFAccessoryCategoryStatusItem__subclass_updateWithOptions___block_invoke_31(void *a1, void *a2)
{
  v21 = a2;
  v3 = [v21 latestResults];
  v4 = [v3 objectForKeyedSubscript:@"state"];
  v5 = [v4 integerValue];

  v6 = v21;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 24);
  if (v8 <= v5)
  {
    v8 = v5;
  }

  *(v7 + 24) = v8;
  if (v5 == 2)
  {
    v9 = *(*(a1[5] + 8) + 40);
    v10 = [v21 latestResults];
    v11 = [v10 objectForKeyedSubscript:@"representedHomeKitObjects"];
    if (v11)
    {
      [v9 unionSet:v11];
    }

    else
    {
      v12 = [MEMORY[0x277CBEB98] set];
      [v9 unionSet:v12];
    }

    v6 = v21;
  }

  v13 = *(*(a1[6] + 8) + 40);
  v14 = [v6 latestResults];
  v15 = [v14 objectForKeyedSubscript:@"dependentServiceTypes"];
  if (v15)
  {
    [v13 unionSet:v15];
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] set];
    [v13 unionSet:v16];
  }

  v17 = *(*(a1[7] + 8) + 40);
  v18 = [v21 latestResults];
  v19 = [v18 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  if (v19)
  {
    [v17 unionSet:v19];
  }

  else
  {
    v20 = [MEMORY[0x277CBEB98] set];
    [v17 unionSet:v20];
  }
}

- (void)applyInflectionToDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  v3 = [descriptionsCopy objectForKeyedSubscript:@"title"];
  v4 = [descriptionsCopy objectForKeyedSubscript:@"description"];

  if (v4)
  {
    v5 = MEMORY[0x277CCA898];
    v6 = [descriptionsCopy objectForKeyedSubscript:@"description"];
    v7 = [v5 hf_attributedStringWithInflectableAccessoryStatus:v6 accessoryName:v3 forcePluralAgreement:1];
    string = [v7 string];
    [descriptionsCopy setObject:string forKeyedSubscript:@"description"];
  }

  v9 = [descriptionsCopy objectForKeyedSubscript:@"controlDescription"];

  if (v9)
  {
    v10 = MEMORY[0x277CCA898];
    v11 = [descriptionsCopy objectForKeyedSubscript:@"controlDescription"];
    v12 = [v10 hf_attributedStringWithInflectableAccessoryStatus:v11 accessoryName:v3 forcePluralAgreement:1];
    string2 = [v12 string];
    [descriptionsCopy setObject:string2 forKeyedSubscript:@"controlDescription"];
  }

  v14 = [descriptionsCopy objectForKeyedSubscript:@"detailedControlDescription"];

  if (v14)
  {
    v15 = MEMORY[0x277CCA898];
    v16 = [descriptionsCopy objectForKeyedSubscript:@"detailedControlDescription"];
    v17 = [v15 hf_attributedStringWithInflectableAccessoryStatus:v16 accessoryName:v3 forcePluralAgreement:1];
    string3 = [v17 string];
    [descriptionsCopy setObject:string3 forKeyedSubscript:@"detailedControlDescription"];
  }
}

@end