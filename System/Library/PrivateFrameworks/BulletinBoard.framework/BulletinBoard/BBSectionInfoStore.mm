@interface BBSectionInfoStore
- (BBSectionInfoStore)initWithEffectiveSettingsProvider:(id)provider persistence:(id)persistence;
- (id)allSortedActiveSections:(BOOL)sections;
- (id)allSortedSectionInfo:(BOOL)info;
- (id)effectiveSectionInfoForSectionInfo:(id)info;
- (id)sectionInfoForSectionID:(id)d effective:(BOOL)effective;
- (id)sectionInfosByIDForSectionIDs:(id)ds effective:(BOOL)effective;
- (id)sortedSectionInfoForSectionIDs:(id)ds effective:(BOOL)effective;
- (void)_sortSectionIDs:(id)ds usingGuideArray:(id)array;
- (void)addActiveSectionID:(id)d;
- (void)removeSectionWithID:(id)d;
- (void)setClearedInfo:(id)info forSectionID:(id)d;
- (void)setClearedSectionsByID:(id)d;
- (void)setSectionInfoByID:(id)d;
@end

@implementation BBSectionInfoStore

- (BBSectionInfoStore)initWithEffectiveSettingsProvider:(id)provider persistence:(id)persistence
{
  providerCopy = provider;
  persistenceCopy = persistence;
  v19.receiver = self;
  v19.super_class = BBSectionInfoStore;
  v9 = [(BBSectionInfoStore *)&v19 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sectionInfoByID = v9->_sectionInfoByID;
    v9->_sectionInfoByID = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeSectionIDs = v9->_activeSectionIDs;
    v9->_activeSectionIDs = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sortedSectionIDs = v9->_sortedSectionIDs;
    v9->_sortedSectionIDs = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clearedSectionsByID = v9->_clearedSectionsByID;
    v9->_clearedSectionsByID = v16;

    objc_storeStrong(&v9->_effectiveSettings, provider);
    objc_storeStrong(&v9->_persistence, persistence);
  }

  return v9;
}

- (void)removeSectionWithID:(id)d
{
  sectionInfoByID = self->_sectionInfoByID;
  dCopy = d;
  [(NSMutableDictionary *)sectionInfoByID removeObjectForKey:dCopy];
  [(NSMutableSet *)self->_activeSectionIDs removeObject:dCopy];
  [(NSMutableArray *)self->_sortedSectionIDs removeObject:dCopy];
  [(NSMutableDictionary *)self->_clearedSectionsByID removeObjectForKey:dCopy];

  [(BBPersistentStoreInterface *)self->_persistence writeSectionInfo:self->_sectionInfoByID];
  persistence = self->_persistence;
  clearedSectionsByID = self->_clearedSectionsByID;

  [(BBPersistentStoreInterface *)persistence writeClearedSections:clearedSectionsByID];
}

- (id)sectionInfoForSectionID:(id)d effective:(BOOL)effective
{
  effectiveCopy = effective;
  v6 = [(NSMutableDictionary *)self->_sectionInfoByID objectForKey:d];
  if (effectiveCopy)
  {
    v7 = [(BBSectionInfoStore *)self effectiveSectionInfoForSectionInfo:v6];

    v6 = v7;
  }

  return v6;
}

- (id)sortedSectionInfoForSectionIDs:(id)ds effective:(BOOL)effective
{
  effectiveCopy = effective;
  v23 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  array = [MEMORY[0x277CBEB18] array];
  v8 = MEMORY[0x277CBEB18];
  allObjects = [dsCopy allObjects];
  v10 = [v8 arrayWithArray:allObjects];

  [(BBSectionInfoStore *)self _sortSectionIDs:v10 usingGuideArray:self->_sortedSectionIDs];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(BBSectionInfoStore *)self sectionInfoForSectionID:*(*(&v18 + 1) + 8 * i) effective:effectiveCopy, v18];
        if (v16)
        {
          [array addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return array;
}

- (void)setSectionInfoByID:(id)d
{
  self->_sectionInfoByID = [d mutableCopy];

  MEMORY[0x2821F96F8]();
}

- (void)addActiveSectionID:(id)d
{
  dCopy = d;
  [(NSMutableSet *)self->_activeSectionIDs addObject:dCopy];
  if (([(NSMutableArray *)self->_sortedSectionIDs containsObject:dCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_sortedSectionIDs addObject:dCopy];
  }
}

- (id)allSortedSectionInfo:(BOOL)info
{
  infoCopy = info;
  v5 = MEMORY[0x277CBEB98];
  allUnsortedSectionInfoIDs = [(BBSectionInfoStore *)self allUnsortedSectionInfoIDs];
  v7 = [v5 setWithArray:allUnsortedSectionInfoIDs];

  v8 = [(BBSectionInfoStore *)self sortedSectionInfoForSectionIDs:v7 effective:infoCopy];

  return v8;
}

- (void)_sortSectionIDs:(id)ds usingGuideArray:(id)array
{
  v64 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  arrayCopy = array;
  if ([dsCopy count])
  {
    v7 = [arrayCopy count];
    if (dsCopy != arrayCopy)
    {
      if (v7)
      {
        v32 = arrayCopy;
        v8 = [MEMORY[0x277CBEB98] setWithArray:arrayCopy];
        v9 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v41 = [dsCopy mutableCopy];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v31 = dsCopy;
        obj = dsCopy;
        v37 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
        if (v37)
        {
          v34 = *v54;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v54 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v42 = *(*(&v53 + 1) + 8 * i);
              v11 = [BBSectionInfoStore sectionInfoForSectionID:"sectionInfoForSectionID:effective:" effective:?];
              dataProviderIDs = [v11 dataProviderIDs];
              if ([dataProviderIDs count])
              {
                v39 = v11;
                v40 = i;
                array = [MEMORY[0x277CBEB18] array];
                v49 = 0u;
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v38 = dataProviderIDs;
                v14 = dataProviderIDs;
                v15 = [v14 countByEnumeratingWithState:&v49 objects:v62 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v50;
                  do
                  {
                    for (j = 0; j != v16; ++j)
                    {
                      if (*v50 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v19 = *(*(&v49 + 1) + 8 * j);
                      if ([v9 containsObject:v19])
                      {
                        if (([v8 containsObject:v19] & 1) == 0)
                        {
                          [array addObject:v19];
                        }
                      }

                      else
                      {
                        v20 = BBLogGeneral;
                        if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v59 = v19;
                          v60 = 2112;
                          v61 = v42;
                          _os_log_error_impl(&dword_241EFF000, v20, OS_LOG_TYPE_ERROR, "BBServer: unknown subsection %@ (of %@) cannot be sorted.", buf, 0x16u);
                        }
                      }
                    }

                    v16 = [v14 countByEnumeratingWithState:&v49 objects:v62 count:16];
                  }

                  while (v16);
                }

                if ([array count])
                {
                  [dictionary setObject:array forKey:v42];
                  [v41 removeObjectsInArray:array];
                }

                v11 = v39;
                i = v40;
                dataProviderIDs = v38;
              }
            }

            v37 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
          }

          while (v37);
        }

        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __54__BBSectionInfoStore__sortSectionIDs_usingGuideArray___block_invoke;
        v47[3] = &unk_278D2A488;
        v48 = v32;
        [v41 sortUsingComparator:v47];
        v21 = dictionary;
        if ([dictionary count])
        {
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          allKeys = [dictionary allKeys];
          v23 = [allKeys countByEnumeratingWithState:&v43 objects:v57 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v44;
            do
            {
              for (k = 0; k != v24; ++k)
              {
                if (*v44 != v25)
                {
                  objc_enumerationMutation(allKeys);
                }

                v27 = *(*(&v43 + 1) + 8 * k);
                v28 = [dictionary objectForKey:v27];
                v29 = [v41 indexOfObject:v27];
                if (v29 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v30 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v29 + 1, objc_msgSend(v28, "count")}];
                  [v41 insertObjects:v28 atIndexes:v30];
                }
              }

              v24 = [allKeys countByEnumeratingWithState:&v43 objects:v57 count:16];
            }

            while (v24);
          }

          v21 = dictionary;
        }

        [obj removeAllObjects];
        [obj addObjectsFromArray:v41];

        dsCopy = v31;
        arrayCopy = v32;
      }
    }
  }
}

uint64_t __54__BBSectionInfoStore__sortSectionIDs_usingGuideArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqual:v6])
  {
    v7 = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v13 isEqual:{v5, v15}])
          {
            v7 = -1;
            goto LABEL_16;
          }

          if ([v13 isEqual:v6])
          {
            v7 = 1;
            goto LABEL_16;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v7 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_16:
  }

  return v7;
}

- (id)effectiveSectionInfoForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    factorySectionID = [infoCopy factorySectionID];

    if (!factorySectionID || ([v5 factorySectionID], v7 = objc_claimAutoreleasedReturnValue(), -[BBSectionInfoStore sectionInfoForSectionID:effective:](self, "sectionInfoForSectionID:effective:", v7, 0), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8) || (v9 = -[BBEffectiveSettingsProvider effectiveGlobalContentPreviewSetting](self->_effectiveSettings, "effectiveGlobalContentPreviewSetting"), v10 = -[BBEffectiveSettingsProvider effectiveGlobalAnnounceSetting](self->_effectiveSettings, "effectiveGlobalAnnounceSetting"), v11 = -[BBEffectiveSettingsProvider effectiveGlobalScheduledDeliverySetting](self->_effectiveSettings, "effectiveGlobalScheduledDeliverySetting"), v12 = -[BBEffectiveSettingsProvider effectiveGlobalSummarizationSetting](self->_effectiveSettings, "effectiveGlobalSummarizationSetting"), v13 = -[BBEffectiveSettingsProvider effectiveGlobalPrioritizationSetting](self->_effectiveSettings, "effectiveGlobalPrioritizationSetting"), v14 = -[BBEffectiveSettingsProvider hasPairedVehiclesForCarPlay](self->_effectiveSettings, "hasPairedVehiclesForCarPlay"), BYTE1(v23) = -[BBEffectiveSettingsProvider hasDestinationForRemoteNotifications](self->_effectiveSettings, "hasDestinationForRemoteNotifications"), LOBYTE(v23) = v14, objc_msgSend(v5, "effectiveSectionInfoWithFactoryInfo:defaultContentPreviewSetting:globalAnnounceSetting:globalScheduledDeliverySetting:globalSummarizationSetting:globalPrioritizationSetting:hasPairedVehiclesForCarPlay:hasDestinationForRemoteNotifications:", v8, v9, v10, v11, v12, v13, v23), v15 = objc_claimAutoreleasedReturnValue(), v8, !v15))
    {
      effectiveGlobalContentPreviewSetting = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalContentPreviewSetting];
      effectiveGlobalAnnounceSetting = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalAnnounceSetting];
      effectiveGlobalScheduledDeliverySetting = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalScheduledDeliverySetting];
      effectiveGlobalSummarizationSetting = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalSummarizationSetting];
      effectiveGlobalPrioritizationSetting = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalPrioritizationSetting];
      hasPairedVehiclesForCarPlay = [(BBEffectiveSettingsProvider *)self->_effectiveSettings hasPairedVehiclesForCarPlay];
      LOBYTE(v23) = [(BBEffectiveSettingsProvider *)self->_effectiveSettings hasDestinationForRemoteNotifications];
      v15 = [v5 effectiveSectionInfoWithDefaultContentPreviewSetting:effectiveGlobalContentPreviewSetting globalAnnounceSetting:effectiveGlobalAnnounceSetting globalScheduledDeliverySetting:effectiveGlobalScheduledDeliverySetting globalSummarizationSetting:effectiveGlobalSummarizationSetting globalPrioritizationSetting:effectiveGlobalPrioritizationSetting hasPairedVehiclesForCarPlay:hasPairedVehiclesForCarPlay hasDestinationForRemoteNotifications:v23];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)allSortedActiveSections:(BOOL)sections
{
  sectionsCopy = sections;
  activeSectionIDs = [(BBSectionInfoStore *)self activeSectionIDs];
  v6 = [(BBSectionInfoStore *)self sortedSectionInfoForSectionIDs:activeSectionIDs effective:sectionsCopy];

  return v6;
}

- (id)sectionInfosByIDForSectionIDs:(id)ds effective:(BOOL)effective
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [(BBSectionInfoStore *)self sortedSectionInfoForSectionIDs:ds effective:effective];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        sectionID = [v11 sectionID];
        [dictionary setObject:v11 forKey:sectionID];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (void)setClearedInfo:(id)info forSectionID:(id)d
{
  infoCopy = info;
  dCopy = d;
  if (infoCopy && ([MEMORY[0x277CBEB68] null], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", infoCopy), v7, (v8 & 1) == 0))
  {
    [(NSMutableDictionary *)self->_clearedSectionsByID setObject:infoCopy forKey:dCopy];
  }

  else
  {
    [(NSMutableDictionary *)self->_clearedSectionsByID removeObjectForKey:dCopy];
  }
}

- (void)setClearedSectionsByID:(id)d
{
  self->_clearedSectionsByID = [d mutableCopy];

  MEMORY[0x2821F96F8]();
}

@end