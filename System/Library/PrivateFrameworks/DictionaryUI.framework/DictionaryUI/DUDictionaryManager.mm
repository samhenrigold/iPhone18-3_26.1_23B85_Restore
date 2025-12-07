@interface DUDictionaryManager
+ (id)assetManager;
- (BOOL)_hasDefinitionForTerm:(id)term;
- (DUDictionaryManager)init;
- (id)_allAvailableDefinitionDictionaries;
- (id)_availableDictionaryAssets;
- (id)_definitionValuesForTerm:(id)term;
- (int64_t)_compareOrderOfDictionary:(id)dictionary withDictionary:(id)withDictionary;
- (void)_downloadDictionaryAssetCatalogWithTimeout:(int64_t)timeout completion:(id)completion;
- (void)_migrateInstalledStateForNewDictionaries:(id)dictionaries;
@end

@implementation DUDictionaryManager

- (DUDictionaryManager)init
{
  v7.receiver = self;
  v7.super_class = DUDictionaryManager;
  v2 = [(DUDictionaryManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    _allAvailableDefinitionDictionaries = [(DUDictionaryManager *)v2 _allAvailableDefinitionDictionaries];
    availableDefinitionDictionaries = v3->_availableDefinitionDictionaries;
    v3->_availableDefinitionDictionaries = _allAvailableDefinitionDictionaries;

    v3->_initiallyEmptyAssets = [(NSArray *)v3->_availableDefinitionDictionaries count]== 0;
  }

  return v3;
}

+ (id)assetManager
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)_hasDefinitionForTerm:(id)term
{
  v16 = *MEMORY[0x277D85DE8];
  termCopy = term;
  v5 = termCopy;
  if (termCopy && [termCopy length])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_availableDefinitionDictionaries;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v11 + 1) + 8 * i) _hasDefinitionForTerm:{v5, v11}])
          {
            LOBYTE(v7) = 1;
            goto LABEL_14;
          }
        }

        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)_definitionValuesForTerm:(id)term
{
  v20 = *MEMORY[0x277D85DE8];
  termCopy = term;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_availableDefinitionDictionaries;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 activated])
        {
          v12 = [v11 _definitionValueForTerm:termCopy];
          v13 = v12;
          if (v12 && [v12 foundRecordRefs])
          {
            [v5 addObject:v13];
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {

    v5 = 0;
  }

  return v5;
}

- (void)_downloadDictionaryAssetCatalogWithTimeout:(int64_t)timeout completion:(id)completion
{
  completionCopy = completion;
  v7 = objc_opt_new();
  [v7 setAllowsCellularAccess:1];
  [v7 setDiscretionary:0];
  [v7 setTimeoutIntervalForResource:timeout];
  v8 = MEMORY[0x277D289C0];
  _dictionaryAssetType = [(DUDictionaryManager *)self _dictionaryAssetType];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__DUDictionaryManager__downloadDictionaryAssetCatalogWithTimeout_completion___block_invoke;
  v11[3] = &unk_278F6F3E8;
  v12 = completionCopy;
  v10 = completionCopy;
  [v8 startCatalogDownload:_dictionaryAssetType options:v7 then:v11];
}

uint64_t __77__DUDictionaryManager__downloadDictionaryAssetCatalogWithTimeout_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_availableDictionaryAssets
{
  v3 = objc_alloc(MEMORY[0x277D289D8]);
  _dictionaryAssetType = [(DUDictionaryManager *)self _dictionaryAssetType];
  v5 = [v3 initWithType:_dictionaryAssetType];

  [v5 returnTypes:2];
  [v5 setDoNotBlockBeforeFirstUnlock:1];
  queryMetaDataSync = [v5 queryMetaDataSync];
  if (queryMetaDataSync)
  {
    NSLog(&cfstr_DictionaryuiDu.isa, queryMetaDataSync);
    results = 0;
  }

  else
  {
    results = [v5 results];
  }

  return results;
}

- (id)_allAvailableDefinitionDictionaries
{
  v50 = *MEMORY[0x277D85DE8];
  _availableDictionaryAssets = [(DUDictionaryManager *)self _availableDictionaryAssets];
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  if (_availableDictionaryAssets)
  {
    array = [MEMORY[0x277CBEB18] array];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v3 = _availableDictionaryAssets;
    v4 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v4)
    {
      v5 = *v44;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v44 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v43 + 1) + 8 * i);
          _formatVersion = [v7 _formatVersion];
          if (_formatVersion == MEMORY[0x24C1E7090]())
          {
            v9 = [[DUDefinitionDictionary alloc] initWithAsset:v7];
            if (v9)
            {
              if ([v7 state] != 1)
              {
                [(DUDefinitionDictionary *)v9 setActivated:1];
              }

              attributes = [v7 attributes];
              [(DUDefinitionDictionary *)v9 setPreferredOrder:MEMORY[0x24C1E70C0](attributes, preferredLanguages)];

              [array addObject:v9];
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v4);
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __58__DUDictionaryManager__allAvailableDefinitionDictionaries__block_invoke;
    v42[3] = &unk_278F6F410;
    v42[4] = self;
    [array sortUsingComparator:v42];
  }

  else
  {
    array = 0;
  }

  [array _filteredArrayOfObjectsPassingTest:&__block_literal_global_471];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
  if (v11)
  {
    v12 = *v35;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * j);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __58__DUDictionaryManager__allAvailableDefinitionDictionaries__block_invoke_3;
        v33[3] = &unk_278F6F458;
        v33[4] = v14;
        v33[5] = &v38;
        v15 = [array _filteredArrayOfObjectsPassingTest:v33];
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v47 count:16];
        if (v17)
        {
          v18 = *v30;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(v16);
              }

              [array removeObject:*(*(&v29 + 1) + 8 * k)];
            }

            v17 = [v16 countByEnumeratingWithState:&v29 objects:v47 count:16];
          }

          while (v17);
        }

        rawAsset = [v14 rawAsset];
        if (![v16 count] && objc_msgSend(rawAsset, "state") == 3)
        {
          [array removeObject:v14];
          purgeSync = [rawAsset purgeSync];
          *(v39 + 24) = 1;
          attributes2 = [rawAsset attributes];
          v23 = [attributes2 objectForKeyedSubscript:@"DictionaryIdentifier"];
          NSLog(&cfstr_DictionaryuiAl.isa, v23, purgeSync);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
    }

    while (v11);
  }

  if (self->_initiallyEmptyAssets && [array count] && !objc_msgSend(obj, "count"))
  {
    [(DUDictionaryManager *)self _migrateInstalledStateForNewDictionaries:array];
    self->_initiallyEmptyAssets = 0;
  }

  objc_storeStrong(&self->_availableDefinitionDictionaries, array);
  _Block_object_dispose(&v38, 8);

  return array;
}

uint64_t __58__DUDictionaryManager__allAvailableDefinitionDictionaries__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) _compareOrderOfDictionary:v5 withDictionary:v6];
  objc_autoreleasePoolPop(v7);

  return v8;
}

uint64_t __58__DUDictionaryManager__allAvailableDefinitionDictionaries__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 rawAsset];
  v3 = [v2 wasLocal];

  return v3;
}

uint64_t __58__DUDictionaryManager__allAvailableDefinitionDictionaries__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) localizedDictionaryName];
  v5 = [v3 localizedDictionaryName];
  if (([v4 isEqual:v5] & 1) == 0)
  {

    goto LABEL_5;
  }

  v6 = [v3 rawAsset];
  v7 = [v6 wasLocal];

  if (v7)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = *(a1 + 32);
  v9 = [v3 rawAsset];
  [v8 setAssetToUpgrade:v9];

  v10 = *(*(a1 + 40) + 8);
  v11 = 1;
  *(v10 + 24) = 1;
LABEL_6:

  return v11;
}

- (int64_t)_compareOrderOfDictionary:(id)dictionary withDictionary:(id)withDictionary
{
  dictionaryCopy = dictionary;
  withDictionaryCopy = withDictionary;
  preferredOrder = [dictionaryCopy preferredOrder];
  preferredOrder2 = [withDictionaryCopy preferredOrder];
  if (preferredOrder == -1 && preferredOrder2 == -1)
  {
    localizedSortName = [dictionaryCopy localizedSortName];
    localizedSortName2 = [withDictionaryCopy localizedSortName];
    v11 = localizedSortName2;
    if (localizedSortName2)
    {
      v12 = localizedSortName2;
    }

    else
    {
      v12 = &stru_285B95F20;
    }

    v13 = [localizedSortName localizedStandardCompare:v12];
  }

  else if (preferredOrder == -1 || preferredOrder2 == -1)
  {
    if (preferredOrder == -1)
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }
  }

  else if (preferredOrder > preferredOrder2)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

- (void)_migrateInstalledStateForNewDictionaries:(id)dictionaries
{
  v47 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v4 = objc_alloc(MEMORY[0x277D289A8]);
  _dictionaryAssetType = [(DUDictionaryManager *)self _dictionaryAssetType];
  v6 = [v4 initWithAssetType:_dictionaryAssetType];

  [v6 setQueriesLocalAssetInformationOnly:1];
  v27 = v6;
  v7 = [v6 runQueryAndReturnError:0];
  if ([v7 count])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      v28 = *v42;
      v29 = v7;
      do
      {
        v11 = 0;
        v31 = v9;
        do
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v41 + 1) + 8 * v11);
          if ([v12 state] == 1)
          {
            v33 = v12;
            v34 = v11;
            attributes = [v12 attributes];
            v14 = [attributes objectForKeyedSubscript:@"DictionaryIdentifier"];

            NSLog(&cfstr_DictionaryuiV1.isa, v14);
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v15 = dictionariesCopy;
            v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v38;
              while (2)
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v38 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v37 + 1) + 8 * i);
                  rawAsset = [v20 rawAsset];
                  attributes2 = [rawAsset attributes];
                  v23 = [attributes2 objectForKeyedSubscript:@"DictionaryIdentifier"];
                  v24 = [v23 isEqualToString:v14];

                  if (v24)
                  {
                    rawAsset2 = [v20 rawAsset];
                    [v20 setAssetToUpgrade:rawAsset2];

                    goto LABEL_18;
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

LABEL_18:

            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = __64__DUDictionaryManager__migrateInstalledStateForNewDictionaries___block_invoke;
            v35[3] = &unk_278F6F480;
            v36 = v14;
            v26 = v14;
            [v33 purge:v35];

            v10 = v28;
            v7 = v29;
            v9 = v31;
            v11 = v34;
          }

          ++v11;
        }

        while (v11 != v9);
        v9 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v9);
    }
  }
}

void __64__DUDictionaryManager__migrateInstalledStateForNewDictionaries___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_DictionaryuiPu.isa, *(a1 + 32), a2);
  }
}

@end