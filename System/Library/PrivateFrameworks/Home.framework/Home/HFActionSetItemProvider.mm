@interface HFActionSetItemProvider
- (HFActionSetItemProvider)initWithHome:(id)home actionSetItemStyle:(unint64_t)style;
- (HFCharacteristicValueSource)valueSource;
- (id)_favoriteFilter;
- (id)_roomFilter;
- (id)_showInHomeDashboardFilter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
- (void)setServiceLikeItem:(id)item;
@end

@implementation HFActionSetItemProvider

- (HFActionSetItemProvider)initWithHome:(id)home actionSetItemStyle:(unint64_t)style
{
  homeCopy = home;
  v13.receiver = self;
  v13.super_class = HFActionSetItemProvider;
  v8 = [(HFItemProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    v10 = [MEMORY[0x277CBEB58] set];
    actionSetItems = v9->_actionSetItems;
    v9->_actionSetItems = v10;

    v9->_actionSetItemStyle = style;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = objc_msgSend_home(self);
  v6 = [v4 initWithHome:v5 actionSetItemStyle:{-[HFActionSetItemProvider actionSetItemStyle](self, "actionSetItemStyle")}];

  return v6;
}

- (void)setServiceLikeItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_serviceLikeItem, item);
  actionSetItems = [(HFActionSetItemProvider *)self actionSetItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HFActionSetItemProvider_setServiceLikeItem___block_invoke;
  v8[3] = &unk_277DF5B98;
  v9 = itemCopy;
  v7 = itemCopy;
  [actionSetItems na_each:v8];
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__HFActionSetItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5228;
  objc_copyWeak(&v15, &location);
  v3 = _Block_copy(aBlock);
  v4 = objc_msgSend_home(self);
  actionSets = [v4 actionSets];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__HFActionSetItemProvider_reloadItems__block_invoke_2;
  v13[3] = &unk_277DF4280;
  v13[4] = self;
  v6 = [actionSets na_filter:v13];

  filter = [(HFActionSetItemProvider *)self filter];
  v8 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v6 filter:filter itemMap:v3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__HFActionSetItemProvider_reloadItems__block_invoke_3;
  v11[3] = &unk_277DF30B8;
  objc_copyWeak(&v12, &location);
  v9 = [v8 flatMap:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v9;
}

HFActionSetItem *__38__HFActionSetItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [HFActionSetItem alloc];
  v6 = [WeakRetained actionSetItemStyle];
  v7 = [WeakRetained valueSource];
  v8 = [(HFActionSetItem *)v5 initWithActionSet:v3 actionSetItemStyle:v6 valueSource:v7];

  v9 = [WeakRetained serviceLikeItem];
  [(HFActionSetItem *)v8 setServiceLikeItem:v9];

  return v8;
}

uint64_t __38__HFActionSetItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isVisible])
  {
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
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __38__HFActionSetItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained actionSetItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained actionSetItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFActionSetItemProvider;
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"actionSet"];

  return v3;
}

- (HFCharacteristicValueSource)valueSource
{
  overrideValueSource = [(HFActionSetItemProvider *)self overrideValueSource];

  if (overrideValueSource)
  {
    overrideValueSource2 = [(HFActionSetItemProvider *)self overrideValueSource];
  }

  else
  {
    v5 = objc_msgSend_home(self);
    overrideValueSource2 = [v5 hf_characteristicValueManager];
  }

  return overrideValueSource2;
}

- (id)_roomFilter
{
  room = [(HFActionSetItemProvider *)self room];
  uniqueIdentifier = [room uniqueIdentifier];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__HFActionSetItemProvider__roomFilter__block_invoke;
  aBlock[3] = &unk_277DF4280;
  v9 = uniqueIdentifier;
  v4 = uniqueIdentifier;
  v5 = _Block_copy(aBlock);
  v6 = [v5 copy];

  return v6;
}

uint64_t __38__HFActionSetItemProvider__roomFilter__block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 32))
  {
    v31 = 1;
    goto LABEL_37;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = [v3 actions];
  v41 = [v5 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (!v41)
  {
    v31 = 0;
    goto LABEL_36;
  }

  v6 = *v51;
  v38 = v4;
  while (2)
  {
    for (i = 0; i != v41; ++i)
    {
      if (*v51 != v6)
      {
        objc_enumerationMutation(v5);
      }

      v8 = *(*(&v50 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 characteristic];
        v10 = objc_msgSend_service(v9);

        v11 = *(a1 + 32);
        v12 = [v10 accessory];
        v13 = [v12 room];
        v14 = [v13 uniqueIdentifier];
        LOBYTE(v11) = [v11 isEqual:v14];

        if (v11)
        {
          v31 = 1;
LABEL_34:
          v4 = v38;
          goto LABEL_36;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v8;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v16 = [v15 mediaProfiles];
          v37 = [v16 countByEnumeratingWithState:&v46 objects:v55 count:16];
          if (v37)
          {
            v17 = *v47;
            v39 = v16;
            v40 = v5;
            v35 = v6;
            v36 = v15;
            v34 = *v47;
            do
            {
              v18 = 0;
              do
              {
                if (*v47 != v17)
                {
                  objc_enumerationMutation(v16);
                }

                v19 = *(*(&v46 + 1) + 8 * v18);
                v42 = 0u;
                v43 = 0u;
                v44 = 0u;
                v45 = 0u;
                v20 = [v19 accessories];
                v21 = [v20 countByEnumeratingWithState:&v42 objects:v54 count:16];
                if (v21)
                {
                  v22 = v21;
                  v23 = *v43;
                  while (2)
                  {
                    for (j = 0; j != v22; ++j)
                    {
                      if (*v43 != v23)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v25 = *(a1 + 32);
                      v26 = [*(*(&v42 + 1) + 8 * j) room];
                      v27 = [v26 uniqueIdentifier];
                      LOBYTE(v25) = [v25 isEqual:v27];

                      if (v25)
                      {
                        v31 = 1;
                        v28 = v39;
                        v5 = v40;
                        v29 = v36;
                        goto LABEL_33;
                      }
                    }

                    v22 = [v20 countByEnumeratingWithState:&v42 objects:v54 count:16];
                    if (v22)
                    {
                      continue;
                    }

                    break;
                  }
                }

                ++v18;
                v16 = v39;
                v5 = v40;
                v17 = v34;
                v6 = v35;
              }

              while (v18 != v37);
              v15 = v36;
              v37 = [v39 countByEnumeratingWithState:&v46 objects:v55 count:16];
            }

            while (v37);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = [v8 commands];
            v33 = [v32 firstObject];
            v29 = [v33 accessory];

            v28 = [v29 room];
            v20 = [v28 uniqueIdentifier];
            v31 = [v20 isEqual:*(a1 + 32)];
LABEL_33:

            goto LABEL_34;
          }
        }
      }
    }

    v31 = 0;
    v4 = v38;
    v41 = [v5 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v41)
    {
      continue;
    }

    break;
  }

LABEL_36:

LABEL_37:
  return v31;
}

- (id)_favoriteFilter
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__HFActionSetItemProvider__favoriteFilter__block_invoke;
  aBlock[3] = &unk_277DF5BC0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

uint64_t __42__HFActionSetItemProvider__favoriteFilter__block_invoke(uint64_t a1, void *a2)
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
  aBlock[2] = __53__HFActionSetItemProvider__showInHomeDashboardFilter__block_invoke;
  aBlock[3] = &unk_277DF5BE8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

uint64_t __53__HFActionSetItemProvider__showInHomeDashboardFilter__block_invoke(uint64_t a1, void *a2)
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