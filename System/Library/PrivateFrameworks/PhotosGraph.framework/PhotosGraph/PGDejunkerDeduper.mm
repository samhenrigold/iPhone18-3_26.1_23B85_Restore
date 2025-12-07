@interface PGDejunkerDeduper
+ (BOOL)useFaceprintsForIdenticalDedupingWithOptions:(id)options;
- (BOOL)isJunkForItem:(id)item;
- (BOOL)shouldPerformIdenticalDedupingForItemFeature:(id)feature options:(id)options;
- (BOOL)shouldPerformSemanticalDedupingForItemFeature:(id)feature options:(id)options;
- (PGDejunkerDeduper)initWithSimilarityModelClass:(Class)class;
- (double)identicalDedupingSimilarityForItemFeature:(id)feature options:(id)options;
- (double)identicalDedupingTimeIntervalForItemFeature:(id)feature options:(id)options;
- (double)semanticalDedupingSimilarityForItemFeature:(id)feature options:(id)options;
- (double)semanticalDedupingTimeIntervalForItemFeature:(id)feature options:(id)options;
- (id)bestItemGroupsBasedOnFaceprintsWithItemGroups:(id)groups options:(id)options;
- (id)bestItemGroupsBasedOnSceneprintsWithItemGroups:(id)groups forSimilarity:(int64_t)similarity options:(id)options;
- (id)bestItemsInItems:(id)items options:(id)options;
- (id)debugPersonStringForItem:(id)item;
- (id)dejunkedDedupedItemsInItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)dejunkedItemsWithItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)eligibleItemsInItems:(id)items options:(id)options;
- (id)faceprintByPersonLocalIdentifierByItemIdentifierWithItems:(id)items;
- (id)featureWithItem:(id)item;
- (id)finalItemsWithItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)identicallyDedupedItemsInItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)itemsByFeatureWithItems:(id)items;
- (id)itemsSortedByScoreWithItems:(id)items options:(id)options;
- (id)requiredItemsInItems:(id)items options:(id)options containStronglyRequiredItems:(BOOL *)requiredItems;
- (id)semanticallyDedupedItemsInItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)splitItemGroupsWithItemGroups:(id)groups maximumNumberOfItemsPerGroup:(unint64_t)group debugInfo:(id)info;
- (id)splitItemGroupsWithTimeSortedItems:(id)items numberOfBuckets:(unint64_t)buckets;
- (id)timeGroupsOfTimeSortedItemsWithTimeSortedItems:(id)items timeInterval:(double)interval maximumTimeGroupExtension:(double)extension;
@end

@implementation PGDejunkerDeduper

- (id)requiredItemsInItems:(id)items options:(id)options containStronglyRequiredItems:(BOOL *)requiredItems
{
  v9 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315138;
    v8 = "[PGDejunkerDeduper requiredItemsInItems:options:containStronglyRequiredItems:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v7, 0xCu);
  }

  return MEMORY[0x277CBEBF8];
}

- (id)itemsSortedByScoreWithItems:(id)items options:(id)options
{
  v8 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = "[PGDejunkerDeduper itemsSortedByScoreWithItems:options:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v6, 0xCu);
  }

  return MEMORY[0x277CBEBF8];
}

- (id)featureWithItem:(id)item
{
  v8 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = "[PGDejunkerDeduper featureWithItem:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v6, 0xCu);
  }

  v4 = [[PGDejunkerDeduperFeature alloc] initWithPersonLocalIdentifiers:0 peopleScenes:0 isVideo:0];

  return v4;
}

- (id)faceprintByPersonLocalIdentifierByItemIdentifierWithItems:(id)items
{
  v7 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315138;
    v6 = "[PGDejunkerDeduper faceprintByPersonLocalIdentifierByItemIdentifierWithItems:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v5, 0xCu);
  }

  return MEMORY[0x277CBEC10];
}

- (id)debugPersonStringForItem:(id)item
{
  v7 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315138;
    v6 = "[PGDejunkerDeduper debugPersonStringForItem:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v5, 0xCu);
  }

  return &stru_2843F5C58;
}

- (BOOL)isJunkForItem:(id)item
{
  v7 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315138;
    v6 = "[PGDejunkerDeduper isJunkForItem:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v5, 0xCu);
  }

  return 0;
}

- (id)bestItemsInItems:(id)items options:(id)options
{
  v8 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315138;
    v7 = "[PGDejunkerDeduper bestItemsInItems:options:]";
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "%s needs to be implemented by subclass", &v6, 0xCu);
  }

  return MEMORY[0x277CBEBF8];
}

- (id)eligibleItemsInItems:(id)items options:(id)options
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  identifiersOfEligibleItems = [options identifiersOfEligibleItems];
  if (identifiersOfEligibleItems)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = itemsCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          clsIdentifier = [v13 clsIdentifier];
          v15 = [identifiersOfEligibleItems containsObject:clsIdentifier];

          if (v15)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = itemsCopy;
  }

  return v7;
}

- (id)itemsByFeatureWithItems:(id)items
{
  v20 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        v12 = [(PGDejunkerDeduper *)self featureWithItem:v11, v15];
        if (v12)
        {
          v13 = [v5 objectForKeyedSubscript:v12];
          if (!v13)
          {
            v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v5 setObject:v13 forKeyedSubscript:v12];
          [v13 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

uint64_t __46__PGDejunkerDeduper_timeSortedItemsWithItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 cls_universalDate];
  v7 = [v5 cls_universalDate];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 clsIdentifier];
    v10 = [v5 clsIdentifier];
    v8 = [v9 compare:v10];
  }

  return v8;
}

- (id)bestItemGroupsBasedOnSceneprintsWithItemGroups:(id)groups forSimilarity:(int64_t)similarity options:(id)options
{
  v45 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v8 = [(PGDejunkerDeduper *)self itemsSortedByScoreWithItems:groups options:optionsCopy];
  identifiersOfEligibleItems = [optionsCopy identifiersOfEligibleItems];
  v30 = optionsCopy;
  v10 = [(PGDejunkerDeduper *)self requiredItemsInItems:v8 options:optionsCopy containStronglyRequiredItems:0];
  v33 = [v10 mutableCopy];
  v29 = v10;
  v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    v31 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        if (([v11 containsObject:v16] & 1) == 0)
        {
          if (!identifiersOfEligibleItems || ([v16 clsIdentifier], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(identifiersOfEligibleItems, "containsObject:", v17), v17, v18))
          {
            v19 = v11;
            -[CLSSimilarStacker distanceThresholdForSimilarity:withSimilarityModelVersion:](self->_similarStacker, "distanceThresholdForSimilarity:withSimilarityModelVersion:", similarity, [v16 clsSimilarityModelVersion]);
            v21 = v20;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v22 = v33;
            v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v36;
              while (2)
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v36 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  [(CLSSimilarStacker *)self->_similarStacker distanceBetweenItem:*(*(&v35 + 1) + 8 * j) andItem:v16];
                  if (v27 < v21)
                  {

                    goto LABEL_19;
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            [v22 addObject:v16];
LABEL_19:
            v11 = v19;
            v14 = v31;
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v13);
  }

  return v33;
}

- (id)bestItemGroupsBasedOnFaceprintsWithItemGroups:(id)groups options:(id)options
{
  v114 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  optionsCopy = options;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = groupsCopy;
  v7 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v106;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v106 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v105 + 1) + 8 * i);
        if ([v11 count] < 2)
        {
          [v6 addObject:v11];
        }

        else
        {
          v12 = [(PGDejunkerDeduper *)self itemsSortedByScoreWithItems:v11 options:optionsCopy];
          [v6 addObject:v12];
          [v65 addObjectsFromArray:v12];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
    }

    while (v8);
  }

  v84 = [(PGDejunkerDeduper *)self faceprintByPersonLocalIdentifierByItemIdentifierWithItems:v65];
  [optionsCopy identicalDedupingFaceprintDistance];
  v14 = v13;
  identifiersOfEligibleItems = [optionsCopy identifiersOfEligibleItems];
  v69 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v67 = v6;
  v16 = [v67 countByEnumeratingWithState:&v101 objects:v112 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v102;
    v73 = identifiersOfEligibleItems;
    v64 = *v102;
    do
    {
      v19 = 0;
      v66 = v17;
      do
      {
        if (*v102 != v18)
        {
          v20 = v19;
          objc_enumerationMutation(v67);
          v19 = v20;
        }

        v72 = v19;
        v21 = *(*(&v101 + 1) + 8 * v19);
        if ([v21 count] == 1)
        {
          v22 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v21 options:optionsCopy];
          if ([v22 count])
          {
            [v69 addObject:v22];
          }
        }

        else
        {
          v23 = [(PGDejunkerDeduper *)self requiredItemsInItems:v21 options:optionsCopy containStronglyRequiredItems:0];
          v76 = [v23 mutableCopy];
          v70 = v23;
          v24 = [MEMORY[0x277CBEB98] setWithArray:v23];
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v80 = v21;
          v25 = [v80 countByEnumeratingWithState:&v97 objects:v111 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v98;
            v74 = *v98;
            v75 = v24;
            do
            {
              v28 = 0;
              v78 = v26;
              do
              {
                if (*v98 != v27)
                {
                  objc_enumerationMutation(v80);
                }

                v29 = *(*(&v97 + 1) + 8 * v28);
                if (([v24 containsObject:v29] & 1) == 0)
                {
                  if (!identifiersOfEligibleItems || ([v29 clsIdentifier], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(identifiersOfEligibleItems, "containsObject:", v30), v30, v31))
                  {
                    v81 = v28;
                    v32 = [(PGDejunkerDeduper *)self featureWithItem:v29];
                    personLocalIdentifiers = [v32 personLocalIdentifiers];

                    clsIdentifier = [v29 clsIdentifier];
                    v34 = [v84 objectForKeyedSubscript:clsIdentifier];

                    v79 = v29;
                    curationModel = [v29 curationModel];
                    faceModel = [curationModel faceModel];

                    v95 = 0u;
                    v96 = 0u;
                    v93 = 0u;
                    v94 = 0u;
                    v87 = v76;
                    v37 = [v87 countByEnumeratingWithState:&v93 objects:v110 count:16];
                    if (v37)
                    {
                      v38 = v37;
                      v39 = *v94;
                      v82 = *v94;
                      v83 = faceModel;
                      while (2)
                      {
                        v40 = 0;
                        v85 = v38;
                        do
                        {
                          if (*v94 != v39)
                          {
                            objc_enumerationMutation(v87);
                          }

                          v41 = *(*(&v93 + 1) + 8 * v40);
                          version = [faceModel version];
                          curationModel2 = [v41 curationModel];
                          faceModel2 = [curationModel2 faceModel];
                          version2 = [faceModel2 version];

                          if (version == version2)
                          {
                            clsIdentifier2 = [v41 clsIdentifier];
                            v47 = [v84 objectForKeyedSubscript:clsIdentifier2];

                            v91 = 0u;
                            v92 = 0u;
                            v89 = 0u;
                            v90 = 0u;
                            v48 = personLocalIdentifiers;
                            v49 = [v48 countByEnumeratingWithState:&v89 objects:v109 count:16];
                            if (v49)
                            {
                              v50 = v49;
                              v51 = *v90;
                              v52 = 0.0;
                              do
                              {
                                for (j = 0; j != v50; ++j)
                                {
                                  if (*v90 != v51)
                                  {
                                    objc_enumerationMutation(v48);
                                  }

                                  v54 = *(*(&v89 + 1) + 8 * j);
                                  v55 = [v34 objectForKeyedSubscript:v54];
                                  v56 = [v47 objectForKeyedSubscript:v54];
                                  v88 = 0;
                                  v57 = [v55 computeDistance:v56 withDistanceFunction:0 error:&v88];
                                  [v57 doubleValue];
                                  v52 = v52 + v58 * v58;
                                }

                                v50 = [v48 countByEnumeratingWithState:&v89 objects:v109 count:16];
                              }

                              while (v50);
                            }

                            else
                            {
                              v52 = 0.0;
                            }

                            v59 = [v48 count];
                            v60 = v14;
                            faceModel = v83;
                            if (v14 == -1.0)
                            {
                              distanceNode = [v83 distanceNode];
                              [distanceNode operatingPoint];
                              v60 = v62;
                            }

                            v39 = v82;
                            v38 = v85;
                            if (sqrt(v52 / v59) < v60)
                            {

                              goto LABEL_49;
                            }
                          }

                          ++v40;
                        }

                        while (v40 != v38);
                        v38 = [v87 countByEnumeratingWithState:&v93 objects:v110 count:16];
                        if (v38)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    [v87 addObject:v79];
LABEL_49:

                    identifiersOfEligibleItems = v73;
                    v27 = v74;
                    v24 = v75;
                    v26 = v78;
                    v28 = v81;
                  }
                }

                ++v28;
              }

              while (v28 != v26);
              v26 = [v80 countByEnumeratingWithState:&v97 objects:v111 count:16];
            }

            while (v26);
          }

          [v69 addObject:v76];
          v18 = v64;
          v17 = v66;
          v22 = v70;
        }

        v19 = v72 + 1;
      }

      while (v72 + 1 != v17);
      v17 = [v67 countByEnumeratingWithState:&v101 objects:v112 count:16];
    }

    while (v17);
  }

  return v69;
}

- (id)splitItemGroupsWithItemGroups:(id)groups maximumNumberOfItemsPerGroup:(unint64_t)group debugInfo:(id)info
{
  v54 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  infoCopy = info;
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = groupsCopy;
  v9 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    v39 = group - 1;
    v42 = infoCopy;
    do
    {
      v12 = 0;
      v40 = v10;
      do
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v45 + 1) + 8 * v12);
        v14 = [v13 count];
        if (v14 > group)
        {
          v15 = v11;
          groupCopy = group;
          v17 = (v39 + v14) / group;
          v18 = [(PGDejunkerDeduper *)self timeSortedItemsWithItems:v13];
          v19 = [(PGDejunkerDeduper *)self splitItemGroupsWithTimeSortedItems:v18 numberOfBuckets:v17];
          [v44 addObjectsFromArray:v19];
          loggingConnection = self->_loggingConnection;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
          {
            v34 = loggingConnection;
            v35 = [obj count];
            v36 = [v19 count];
            *buf = 134218240;
            v50 = v35;
            v51 = 2048;
            v52 = v36;
            _os_log_debug_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_DEBUG, "DejunkerDeduper: cluster with %lu items, split in %lu", buf, 0x16u);

            if (infoCopy)
            {
LABEL_9:
              lastObject = [v18 lastObject];
              cls_universalDate = [lastObject cls_universalDate];
              firstObject = [v18 firstObject];
              cls_universalDate2 = [firstObject cls_universalDate];
              [cls_universalDate timeIntervalSinceDate:cls_universalDate2];
              v26 = v25;

              infoCopy = v42;
              v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f sec, %lu items, split in %lu", v26, objc_msgSend(v18, "count"), objc_msgSend(v19, "count")];
              [v42 setState:1 ofCluster:v13 withReason:v27];
            }
          }

          else if (infoCopy)
          {
            goto LABEL_9;
          }

          group = groupCopy;
          v11 = v15;
          v10 = v40;
          goto LABEL_13;
        }

        [v44 addObject:v13];
        if (!infoCopy)
        {
          goto LABEL_14;
        }

        v18 = [(PGDejunkerDeduper *)self timeSortedItemsWithItems:v13];
        lastObject2 = [v18 lastObject];
        cls_universalDate3 = [lastObject2 cls_universalDate];
        firstObject2 = [v18 firstObject];
        cls_universalDate4 = [firstObject2 cls_universalDate];
        [cls_universalDate3 timeIntervalSinceDate:cls_universalDate4];
        v33 = v32;

        infoCopy = v42;
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f sec, %lu items", v33, objc_msgSend(v13, "count")];
        [v42 setState:1 ofCluster:v13 withReason:v19];
LABEL_13:

LABEL_14:
        ++v12;
      }

      while (v10 != v12);
      v37 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
      v10 = v37;
    }

    while (v37);
  }

  return v44;
}

- (id)splitItemGroupsWithTimeSortedItems:(id)items numberOfBuckets:(unint64_t)buckets
{
  v26 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [itemsCopy count];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = itemsCopy;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *v22;
    do
    {
      v13 = 0;
      v18 = v10;
      v14 = buckets * v10;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v21 + 1) + 8 * v13);
        if (v14 >= v9 * v6)
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB18]);

          [v19 addObject:v16];
          ++v9;
          v11 = v16;
        }

        [v11 addObject:v15];
        ++v13;
        v14 += buckets;
      }

      while (v8 != v13);
      v10 = v18 + v8;
      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v11 = 0;
  }

  return v19;
}

- (id)timeGroupsOfTimeSortedItemsWithTimeSortedItems:(id)items timeInterval:(double)interval maximumTimeGroupExtension:(double)extension
{
  v35 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__PGDejunkerDeduper_timeGroupsOfTimeSortedItemsWithTimeSortedItems_timeInterval_maximumTimeGroupExtension___block_invoke;
  aBlock[3] = &unk_27887EDC0;
  v33 = interval * extension;
  aBlock[4] = self;
  v10 = v9;
  v32 = v10;
  v11 = _Block_copy(aBlock);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (!v13)
  {

    v16 = 0;
    v15 = 0;
    goto LABEL_17;
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  v17 = *v28;
  v26 = v10;
  do
  {
    v18 = 0;
    v19 = v15;
    do
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v20 = *(*(&v27 + 1) + 8 * v18);
      cls_universalDate = [v20 cls_universalDate];
      v15 = cls_universalDate;
      if (!v16)
      {
        goto LABEL_9;
      }

      [cls_universalDate timeIntervalSinceDate:v19];
      if (v22 > interval)
      {
        v11[2](v11, v16);
LABEL_9:
        v23 = objc_alloc_init(MEMORY[0x277CBEB18]);

        [v23 addObject:v20];
        v16 = v23;
        goto LABEL_11;
      }

      [v16 addObject:v20];
LABEL_11:

      ++v18;
      v19 = v15;
    }

    while (v14 != v18);
    v14 = [v12 countByEnumeratingWithState:&v27 objects:v34 count:16];
  }

  while (v14);

  if (v16)
  {
    v11[2](v11, v16);
  }

  v10 = v26;
LABEL_17:
  v24 = v10;

  return v10;
}

void __107__PGDejunkerDeduper_timeGroupsOfTimeSortedItemsWithTimeSortedItems_timeInterval_maximumTimeGroupExtension___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastObject];
  v5 = [v4 cls_universalDate];
  v6 = [v3 firstObject];
  v7 = [v6 cls_universalDate];
  [v5 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = *(a1 + 48);
  if (v9 <= v10)
  {
    [*(a1 + 40) addObject:v3];
  }

  else
  {
    v11 = vcvtpd_u64_f64(v9 / v10);
    [*(*(a1 + 32) + 16) setK:v11];
    v12 = [*(*(a1 + 32) + 16) performWithDataset:v3 progressBlock:0];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(a1 + 32);
          v18 = [*(*(&v21 + 1) + 8 * v16) objects];
          v19 = [v17 timeSortedItemsWithItems:v18];

          [*(a1 + 40) addObject:v19];
          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v14);
    }

    v20 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v26 = v9;
      v27 = 2048;
      v28 = v11;
      _os_log_debug_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_DEBUG, "DejunkerDeduper: cluster with duration %f, split in %lu", buf, 0x16u);
    }
  }
}

- (double)semanticalDedupingSimilarityForItemFeature:(id)feature options:(id)options
{
  featureCopy = feature;
  v5 = 4.0;
  if (([featureCopy hasPersons] & 1) == 0)
  {
    if ([featureCopy hasPeopleScenes])
    {
      v5 = 3.0;
    }

    else
    {
      v5 = 2.0;
    }
  }

  return v5;
}

- (double)semanticalDedupingTimeIntervalForItemFeature:(id)feature options:(id)options
{
  featureCopy = feature;
  optionsCopy = options;
  if ([featureCopy hasPersons])
  {
    [optionsCopy semanticalDedupingTimeIntervalForPersons];
  }

  else if ([featureCopy hasPeopleScenes])
  {
    [optionsCopy semanticalDedupingTimeIntervalForPeople];
  }

  else
  {
    [optionsCopy semanticalDedupingTimeInterval];
  }

  v8 = v7;

  return v8;
}

- (BOOL)shouldPerformSemanticalDedupingForItemFeature:(id)feature options:(id)options
{
  featureCopy = feature;
  optionsCopy = options;
  if ([optionsCopy doNotDedupeVideos] && (objc_msgSend(featureCopy, "isVideo") & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    if ([featureCopy hasPersons])
    {
      dontSemanticallyDedupePersons = [optionsCopy dontSemanticallyDedupePersons];
    }

    else
    {
      if (![featureCopy hasPeopleScenes])
      {
        v7 = 1;
        goto LABEL_10;
      }

      dontSemanticallyDedupePersons = [optionsCopy dontSemanticallyDedupePeople];
    }

    v7 = dontSemanticallyDedupePersons ^ 1;
  }

LABEL_10:

  return v7;
}

- (double)identicalDedupingSimilarityForItemFeature:(id)feature options:(id)options
{
  featureCopy = feature;
  v5 = 1.0;
  if (([featureCopy hasPersons] & 1) == 0)
  {
    if ([featureCopy hasPeopleScenes])
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }
  }

  return v5;
}

- (double)identicalDedupingTimeIntervalForItemFeature:(id)feature options:(id)options
{
  featureCopy = feature;
  optionsCopy = options;
  if (([featureCopy hasPersons] & 1) != 0 || objc_msgSend(featureCopy, "hasPeopleScenes"))
  {
    [optionsCopy identicalDedupingTimeIntervalForPeople];
  }

  else
  {
    [optionsCopy identicalDedupingTimeInterval];
  }

  v8 = v7;

  return v8;
}

- (BOOL)shouldPerformIdenticalDedupingForItemFeature:(id)feature options:(id)options
{
  featureCopy = feature;
  if ([options doNotDedupeVideos])
  {
    v6 = [featureCopy isVideo] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)finalItemsWithItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v52 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  infoCopy = info;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PGDejunkerDeduper_finalItemsWithItems_options_debugInfo_progressBlock___block_invoke;
  aBlock[3] = &unk_27887ED98;
  selfCopy = self;
  aBlock[4] = self;
  v41 = optionsCopy;
  v48 = v41;
  v38 = v12;
  v49 = v38;
  v37 = infoCopy;
  v50 = v37;
  v13 = _Block_copy(aBlock);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = itemsCopy;
  v16 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  v40 = v13;
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v44;
    selfCopy2 = self;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        v22 = v18;
        if (*v44 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v43 + 1) + 8 * i);
        v24 = [(PGDejunkerDeduper *)selfCopy2 featureWithItem:v23];
        if (v22)
        {
          v25 = [v15 containsObject:v24];
          isVideo = [v24 isVideo];
          if (v25)
          {
            goto LABEL_24;
          }

          if (isVideo)
          {
            goto LABEL_24;
          }

          cls_universalDate = [v23 cls_universalDate];
          cls_universalDate2 = [v22 cls_universalDate];
          [cls_universalDate timeIntervalSinceDate:cls_universalDate2];
          v30 = v29;

          selfCopy2 = selfCopy;
          [v41 finalPassTimeInterval];
          if (v30 >= v31)
          {
            goto LABEL_24;
          }

          [(CLSSimilarStacker *)selfCopy->_similarStacker distanceBetweenItem:v23 andItem:v22];
          v33 = v32;
          [v41 finalPassDedupingThreshold];
          if (v34 < 0.0)
          {
            -[CLSSimilarStacker distanceThresholdForSimilarity:withSimilarityModelVersion:](selfCopy->_similarStacker, "distanceThresholdForSimilarity:withSimilarityModelVersion:", 0, [v23 clsSimilarityModelVersion]);
          }

          if (v33 >= v34)
          {
LABEL_24:
            if ([v14 count])
            {
              (v40)[2](v40, v14);
              [v14 removeAllObjects];
              [v15 removeAllObjects];
            }
          }
        }

        [v14 addObject:v23];
        [v15 addObject:v24];
        v18 = v23;
      }

      v17 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  if ([v14 count])
  {
    (v40)[2](v40, v14);
  }

  v35 = v38;

  return v38;
}

void __73__PGDejunkerDeduper_finalItemsWithItems_options_debugInfo_progressBlock___block_invoke(id *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 count];
  v5 = a1[4];
  if (v4 < 2)
  {
    v9 = [a1[4] eligibleItemsInItems:v3 options:a1[5]];
    [a1[6] addObjectsFromArray:v9];
  }

  else
  {
    [a1[5] finalPassTimeInterval];
    v7 = v6;
    [a1[5] finalPassMaximumTimeGroupExtension];
    v9 = [v5 timeGroupsOfTimeSortedItemsWithTimeSortedItems:v3 timeInterval:v7 maximumTimeGroupExtension:v8];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 count];
          v16 = a1[4];
          v17 = a1[5];
          if (v15 < 2)
          {
            v18 = [v16 eligibleItemsInItems:v14 options:v17];
            [a1[6] addObjectsFromArray:v18];
          }

          else
          {
            v18 = [v16 bestItemsInItems:v14 options:v17];
            [a1[6] addObjectsFromArray:v18];
            [a1[7] dedupItems:v14 toItems:v18 withDedupingType:5];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }
}

- (id)dejunkedItemsWithItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  itemsCopy = items;
  infoCopy = info;
  optionsCopy = options;
  identifiersOfRequiredItems = [optionsCopy identifiersOfRequiredItems];
  identifiersOfEligibleItems = [optionsCopy identifiersOfEligibleItems];

  v14 = MEMORY[0x277CCAC30];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__PGDejunkerDeduper_dejunkedItemsWithItems_options_debugInfo_progressBlock___block_invoke;
  v26[3] = &unk_27887ED48;
  v15 = identifiersOfRequiredItems;
  v27 = v15;
  v16 = identifiersOfEligibleItems;
  v28 = v16;
  selfCopy = self;
  v17 = [v14 predicateWithBlock:v26];
  v18 = [itemsCopy filteredArrayUsingPredicate:v17];

  if (infoCopy)
  {
    v19 = MEMORY[0x277CCAC30];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__PGDejunkerDeduper_dejunkedItemsWithItems_options_debugInfo_progressBlock___block_invoke_2;
    v24[3] = &unk_27887ED70;
    v24[4] = self;
    v25 = v15;
    v20 = [v19 predicateWithBlock:v24];
    v21 = [itemsCopy filteredArrayUsingPredicate:v20];

    v22 = [MEMORY[0x277CBEB98] setWithArray:v21];
    [infoCopy setState:2 ofItems:v22 withReason:@"Junk"];
  }

  return v18;
}

uint64_t __76__PGDejunkerDeduper_dejunkedItemsWithItems_options_debugInfo_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clsIdentifier];
  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6 && ![v6 containsObject:v4])
    {
      v5 = 0;
    }

    else
    {
      v5 = [*(a1 + 48) isJunkForItem:v3] ^ 1;
    }
  }

  return v5;
}

uint64_t __76__PGDejunkerDeduper_dejunkedItemsWithItems_options_debugInfo_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isJunkForItem:v3])
  {
    v4 = *(a1 + 40);
    v5 = [v3 clsIdentifier];
    v6 = [v4 containsObject:v5] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)semanticallyDedupedItemsInItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v94 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  infoCopy = info;
  v12 = _Block_copy(block);
  v13 = 0.0;
  if (v12)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v86 = 0;
      v12[2](v12, &v86, 0.0);
      if (v86 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v91 = 249;
          v92 = 2080;
          v93 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v15 = MEMORY[0x277CBEBF8];
        goto LABEL_68;
      }

      v13 = Current;
    }
  }

  [infoCopy setStage:@"Semantical"];
  v16 = [(PGDejunkerDeduper *)self itemsByFeatureWithItems:itemsCopy];
  v17 = [v16 count];
  if (v17)
  {
    v18 = v17;
    v59 = itemsCopy;
    similarStacker = self->_similarStacker;
    [optionsCopy semanticalDedupingThreshold];
    [(CLSSimilarStacker *)similarStacker overrideDistanceThreshold:2 forSimilarity:?];
    v20 = self->_similarStacker;
    [optionsCopy semanticalDedupingThresholdForPeople];
    [(CLSSimilarStacker *)v20 overrideDistanceThreshold:3 forSimilarity:?];
    v21 = self->_similarStacker;
    [optionsCopy semanticalDedupingThresholdForPersons];
    [(CLSSimilarStacker *)v21 overrideDistanceThreshold:4 forSimilarity:?];
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    maximumNumberOfItemsPerSemanticalCluster = [optionsCopy maximumNumberOfItemsPerSemanticalCluster];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v58 = v16;
    obj = v16;
    v60 = [obj countByEnumeratingWithState:&v82 objects:v89 count:16];
    if (v60)
    {
      v24 = 1.0 / v18;
      v25 = *v83;
      v26 = 0.0;
      v63 = maximumNumberOfItemsPerSemanticalCluster;
      v64 = v12;
      v57 = *v83;
      while (2)
      {
        v27 = 0;
        do
        {
          if (*v83 != v25)
          {
            v28 = v27;
            objc_enumerationMutation(obj);
            v27 = v28;
          }

          v61 = v27;
          v67 = *(*(&v82 + 1) + 8 * v27);
          if (v12)
          {
            v29 = CFAbsoluteTimeGetCurrent();
            if (v29 - v13 >= 0.01)
            {
              v86 = 0;
              v12[2](v12, &v86, v26);
              if (v86)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v91 = 276;
                  v92 = 2080;
                  v93 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

LABEL_63:

                goto LABEL_64;
              }

              v13 = v29;
            }
          }

          v26 = v24 + v26;
          v30 = [obj objectForKeyedSubscript:{v67, v57}];
          if (-[PGDejunkerDeduper shouldPerformSemanticalDedupingForItemFeature:options:](self, "shouldPerformSemanticalDedupingForItemFeature:options:", v67, optionsCopy) && [v30 count] != 1)
          {
            [(PGDejunkerDeduper *)self semanticalDedupingTimeIntervalForItemFeature:v67 options:optionsCopy];
            v33 = v32;
            v34 = [(PGDejunkerDeduper *)self timeSortedItemsWithItems:v30];
            [optionsCopy semanticalDedupingMaximumTimeGroupExtension];
            v36 = [(PGDejunkerDeduper *)self timeGroupsOfTimeSortedItemsWithTimeSortedItems:v34 timeInterval:v33 maximumTimeGroupExtension:v35];
            v37 = [v36 count];
            if ([optionsCopy semanticalDedupingProtectSmallClusters])
            {
              v38 = vcvtad_u64_f64(2.0 / [v36 count]) + 2;
            }

            else
            {
              v38 = 2;
            }

            v69 = v38;
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v31 = v36;
            v71 = [v31 countByEnumeratingWithState:&v78 objects:v88 count:16];
            if (v71)
            {
              v39 = v24 / v37;
              v70 = *v79;
              v40 = 0.0;
              v65 = v31;
              v66 = v30;
              while (2)
              {
                v41 = 0;
                v42 = v34;
                do
                {
                  if (*v79 != v70)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v34 = *(*(&v78 + 1) + 8 * v41);

                  if (v12)
                  {
                    v43 = CFAbsoluteTimeGetCurrent();
                    if (v43 - v13 >= 0.01)
                    {
                      v86 = 0;
                      v12[2](v12, &v86, v26 + v40);
                      if (v86)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                        {
                          *buf = 67109378;
                          v91 = 305;
                          v92 = 2080;
                          v93 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
                          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                        }

                        goto LABEL_63;
                      }

                      v13 = v43;
                    }
                  }

                  v72 = v41;
                  if ([v34 count] >= v69)
                  {
                    [(PGDejunkerDeduper *)self semanticalDedupingSimilarityForItemFeature:v67 options:optionsCopy];
                    v46 = v45;
                    v47 = [(CLSSimilarStacker *)self->_similarStacker stackSimilarItems:v34 withSimilarity:v45 timestampSupport:0 progressBlock:0];
                    v68 = v34;
                    if (maximumNumberOfItemsPerSemanticalCluster)
                    {
                      v48 = [(PGDejunkerDeduper *)self splitItemGroupsWithItemGroups:v47 maximumNumberOfItemsPerGroup:maximumNumberOfItemsPerSemanticalCluster debugInfo:0];

                      v47 = v48;
                    }

                    v76 = 0u;
                    v77 = 0u;
                    v74 = 0u;
                    v75 = 0u;
                    v44 = v47;
                    v49 = [v44 countByEnumeratingWithState:&v74 objects:v87 count:16];
                    if (v49)
                    {
                      v50 = v49;
                      v51 = *v75;
                      do
                      {
                        for (i = 0; i != v50; ++i)
                        {
                          if (*v75 != v51)
                          {
                            objc_enumerationMutation(v44);
                          }

                          v53 = *(*(&v74 + 1) + 8 * i);
                          if ([v53 count] == 1)
                          {
                            v54 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v53 options:optionsCopy];
                            [v22 addObjectsFromArray:v54];
                          }

                          else
                          {
                            v54 = [(PGDejunkerDeduper *)self bestItemGroupsBasedOnSceneprintsWithItemGroups:v53 forSimilarity:v46 options:optionsCopy];
                            [v22 addObjectsFromArray:v54];
                            [infoCopy dedupItems:v53 toItems:v54 withDedupingType:2];
                          }
                        }

                        v50 = [v44 countByEnumeratingWithState:&v74 objects:v87 count:16];
                      }

                      while (v50);
                    }

                    maximumNumberOfItemsPerSemanticalCluster = v63;
                    v12 = v64;
                    v31 = v65;
                    v30 = v66;
                    v34 = v68;
                  }

                  else
                  {
                    v44 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v34 options:optionsCopy];
                    [v22 addObjectsFromArray:v44];
                  }

                  v40 = v39 + v40;

                  v41 = v72 + 1;
                  v42 = v34;
                }

                while (v72 + 1 != v71);
                v71 = [v31 countByEnumeratingWithState:&v78 objects:v88 count:16];
                if (v71)
                {
                  continue;
                }

                break;
              }
            }

            v25 = v57;
          }

          else
          {
            v31 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v30 options:optionsCopy];
            [v22 addObjectsFromArray:v31];
          }

          v27 = v61 + 1;
        }

        while (v61 + 1 != v60);
        v55 = [obj countByEnumeratingWithState:&v82 objects:v89 count:16];
        v60 = v55;
        if (v55)
        {
          continue;
        }

        break;
      }
    }

    if (v12 && CFAbsoluteTimeGetCurrent() - v13 >= 0.01 && (v86 = 0, v12[2](v12, &v86, 1.0), v86))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v91 = 340;
        v92 = 2080;
        v93 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_64:
      v15 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v15 = [(PGDejunkerDeduper *)self timeSortedItemsWithItems:v22];
    }

    v16 = v58;
    itemsCopy = v59;
  }

  else
  {
    v15 = [(PGDejunkerDeduper *)self eligibleItemsInItems:itemsCopy options:optionsCopy];
  }

LABEL_68:

  return v15;
}

- (id)identicallyDedupedItemsInItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v132 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  infoCopy = info;
  blockCopy = block;
  v14 = 0.0;
  v91 = _Block_copy(blockCopy);
  if (v91)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v122 = 0;
      v91[2](v91, &v122, 0.0);
      if (v122 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v129 = 114;
          v130 = 2080;
          v131 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v16 = MEMORY[0x277CBEBF8];
        goto LABEL_96;
      }

      v14 = Current;
    }
  }

  [infoCopy setStage:@"Identical"];
  v17 = [(PGDejunkerDeduper *)self itemsByFeatureWithItems:itemsCopy];
  v18 = [v17 count];
  if (v18)
  {
    v19 = v18;
    v82 = itemsCopy;
    v83 = v17;
    v81 = blockCopy;
    similarStacker = self->_similarStacker;
    [optionsCopy identicalDedupingThreshold];
    [(CLSSimilarStacker *)similarStacker overrideDistanceThreshold:0 forSimilarity:?];
    v21 = self->_similarStacker;
    [optionsCopy identicalDedupingThresholdForPeople];
    [(CLSSimilarStacker *)v21 overrideDistanceThreshold:1 forSimilarity:?];
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    maximumNumberOfItemsPerIdenticalCluster = [optionsCopy maximumNumberOfItemsPerIdenticalCluster];
    v93 = 0;
    if ([objc_opt_class() useFaceprintsForIdenticalDedupingWithOptions:optionsCopy])
    {
      v93 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = v17;
    v105 = infoCopy;
    v85 = [obj countByEnumeratingWithState:&v118 objects:v127 count:16];
    if (v85)
    {
      v95 = 0;
      v23 = 1.0 / v19;
      v24 = v91;
      v84 = *v119;
      v25 = 0.0;
      while (2)
      {
        v26 = 0;
        do
        {
          if (*v119 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v87 = v26;
          v27 = *(*(&v118 + 1) + 8 * v26);
          v28 = objc_autoreleasePoolPush();
          if (v24)
          {
            v29 = CFAbsoluteTimeGetCurrent();
            if (v29 - v14 >= 0.01)
            {
              v122 = 0;
              v24[2](v24, &v122, v25);
              if (v122 | v95 & 1)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v129 = 142;
                  v130 = 2080;
                  v131 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                objc_autoreleasePoolPop(v28);
LABEL_92:

                goto LABEL_93;
              }

              v95 = 0;
              v14 = v29;
            }
          }

          v89 = v28;
          v30 = [obj objectForKeyedSubscript:v27];
          v31 = [(PGDejunkerDeduper *)self timeSortedItemsWithItems:v30];
          v32 = [(PGDejunkerDeduper *)self shouldPerformIdenticalDedupingForItemFeature:v27 options:optionsCopy];
          v88 = v30;
          v97 = v32;
          if ([v30 count] < 2 || !v32)
          {
            v126 = v31;
            [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
          }

          else
          {
            [(PGDejunkerDeduper *)self identicalDedupingTimeIntervalForItemFeature:v27 options:optionsCopy];
            v35 = v34;
            [optionsCopy identicalDedupingMaximumTimeGroupExtension];
            [(PGDejunkerDeduper *)self timeGroupsOfTimeSortedItemsWithTimeSortedItems:v31 timeInterval:v35 maximumTimeGroupExtension:v36];
          }
          v37 = ;
          v25 = v23 + v25;
          [infoCopy addClusters:v37 withReason:@"Time Clustering"];
          v38 = [v37 count];
          v114 = 0u;
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v94 = v37;
          v99 = [v94 countByEnumeratingWithState:&v114 objects:v125 count:16];
          if (v99)
          {
            v39 = v23 / v38;
            v98 = *v115;
            v40 = 0.0;
            v41 = v14;
            v96 = v27;
            while (2)
            {
              v42 = 0;
              v43 = v31;
              do
              {
                if (*v115 != v98)
                {
                  objc_enumerationMutation(v94);
                }

                v31 = *(*(&v114 + 1) + 8 * v42);

                v102 = v42;
                context = objc_autoreleasePoolPush();
                if (v24)
                {
                  v14 = CFAbsoluteTimeGetCurrent();
                  if (v14 - v41 >= 0.01)
                  {
                    v122 = 0;
                    v24[2](v24, &v122, v25 + v40);
                    if (v122 | v95 & 1)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        v129 = 169;
                        v130 = 2080;
                        v131 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }

                      objc_autoreleasePoolPop(context);
                      v70 = 0;
                      v95 = 1;
                      goto LABEL_66;
                    }

                    v95 = 0;
                    v41 = v14;
                  }
                }

                if (infoCopy)
                {
                  firstObject = [v31 firstObject];
                  v100 = [(PGDejunkerDeduper *)self debugPersonStringForItem:firstObject];

                  lastObject = [v31 lastObject];
                  cls_universalDate = [lastObject cls_universalDate];
                  [v31 firstObject];
                  v47 = v24;
                  v48 = infoCopy;
                  v50 = v49 = v31;
                  cls_universalDate2 = [v50 cls_universalDate];
                  [cls_universalDate timeIntervalSinceDate:cls_universalDate2];
                  v53 = v52;

                  v31 = v49;
                  infoCopy = v48;
                  v24 = v47;

                  v54 = MEMORY[0x277CCACA8];
                  v55 = [v31 count];
                  v56 = [v31 count];
                  v57 = &stru_2843F5C58;
                  if (v56 > 1)
                  {
                    v57 = @"s";
                  }

                  v80 = v55;
                  v27 = v96;
                  v100 = [v54 stringWithFormat:@"%.0f sec, %lu item%@: %@", v53, v80, v57, v100];
                  [infoCopy setState:1 ofCluster:v31 withReason:v100];
                }

                if (v97 && [v31 count] != 1)
                {
                  [(PGDejunkerDeduper *)self identicalDedupingSimilarityForItemFeature:v27 options:optionsCopy];
                  v60 = v27;
                  v62 = v61;
                  v59 = [(CLSSimilarStacker *)self->_similarStacker stackSimilarItems:v31 withSimilarity:v61 timestampSupport:0 progressBlock:0];
                  v101 = [infoCopy debugInfoForCluster:v31];
                  [v101 setClusters:v59 withReason:@"Similar Stacking"];
                  if (v93 && [v60 hasPersons])
                  {
                    [v93 addObjectsFromArray:v59];
                  }

                  else
                  {
                    v92 = v31;
                    if (maximumNumberOfItemsPerIdenticalCluster)
                    {
                      v63 = [(PGDejunkerDeduper *)self splitItemGroupsWithItemGroups:v59 maximumNumberOfItemsPerGroup:maximumNumberOfItemsPerIdenticalCluster debugInfo:v101];

                      v59 = v63;
                    }

                    v112 = 0u;
                    v113 = 0u;
                    v110 = 0u;
                    v111 = 0u;
                    v59 = v59;
                    v64 = [v59 countByEnumeratingWithState:&v110 objects:v124 count:16];
                    if (v64)
                    {
                      v65 = v64;
                      v66 = *v111;
                      do
                      {
                        for (i = 0; i != v65; ++i)
                        {
                          if (*v111 != v66)
                          {
                            objc_enumerationMutation(v59);
                          }

                          v68 = *(*(&v110 + 1) + 8 * i);
                          if ([v68 count] == 1)
                          {
                            v69 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v68 options:optionsCopy];
                            [v22 addObjectsFromArray:v69];
                          }

                          else
                          {
                            v69 = [(PGDejunkerDeduper *)self bestItemGroupsBasedOnSceneprintsWithItemGroups:v68 forSimilarity:v62 options:optionsCopy];
                            [v22 addObjectsFromArray:v69];
                            [v105 dedupItems:v68 toItems:v69 withDedupingType:1];
                          }
                        }

                        v65 = [v59 countByEnumeratingWithState:&v110 objects:v124 count:16];
                      }

                      while (v65);
                    }

                    infoCopy = v105;
                    v24 = v91;
                    v31 = v92;
                  }

                  v27 = v96;
                }

                else
                {
                  v59 = [(PGDejunkerDeduper *)self eligibleItemsInItems:v31 options:optionsCopy];
                  [v22 addObjectsFromArray:v59];
                }

                v40 = v39 + v40;

                objc_autoreleasePoolPop(context);
                v42 = v102 + 1;
                v43 = v31;
              }

              while (v102 + 1 != v99);
              v99 = [v94 countByEnumeratingWithState:&v114 objects:v125 count:16];
              if (v99)
              {
                continue;
              }

              break;
            }

            v70 = 1;
            v14 = v41;
          }

          else
          {
            v70 = 1;
          }

LABEL_66:

          objc_autoreleasePoolPop(v89);
          if (!v70)
          {
            goto LABEL_92;
          }

          v26 = v87 + 1;
        }

        while (v87 + 1 != v85);
        v85 = [obj countByEnumeratingWithState:&v118 objects:v127 count:16];
        if (v85)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v95 = 0;
      v24 = v91;
    }

    if ([v93 count])
    {
      [(PGDejunkerDeduper *)self bestItemGroupsBasedOnFaceprintsWithItemGroups:v93 options:optionsCopy];
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      contexta = v109 = 0u;
      v71 = [contexta countByEnumeratingWithState:&v106 objects:v123 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = 0;
        v74 = *v107;
        do
        {
          for (j = 0; j != v72; ++j)
          {
            if (*v107 != v74)
            {
              objc_enumerationMutation(contexta);
            }

            v76 = *(*(&v106 + 1) + 8 * j);
            v77 = [v93 objectAtIndexedSubscript:v73];
            v78 = [v77 count];
            if (v78 != [v76 count])
            {
              [v105 dedupItems:v77 toItems:v76 withDedupingType:1];
            }

            [v22 addObjectsFromArray:v76];
            ++v73;
          }

          v72 = [contexta countByEnumeratingWithState:&v106 objects:v123 count:16];
        }

        while (v72);
      }

      infoCopy = v105;
      v24 = v91;
    }

    if (v24 && CFAbsoluteTimeGetCurrent() - v14 >= 0.01 && (v122 = 0, v24[2](v24, &v122, 1.0), v122 | v95 & 1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v129 = 241;
        v130 = 2080;
        v131 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_93:
      v16 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v16 = [(PGDejunkerDeduper *)self timeSortedItemsWithItems:v22];
    }

    blockCopy = v81;
    itemsCopy = v82;
    v17 = v83;
  }

  else
  {
    v16 = [(PGDejunkerDeduper *)self eligibleItemsInItems:itemsCopy options:optionsCopy];
  }

LABEL_96:

  return v16;
}

- (id)dejunkedDedupedItemsInItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v77 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  infoCopy = info;
  blockCopy = block;
  v12 = _Block_copy(blockCopy);
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v36 = infoCopy;
  if (!v12 || (v13 = CFAbsoluteTimeGetCurrent(), v13 - v60[3] < 0.01) || (v60[3] = v13, v58 = 0, (*(v12 + 2))(v12, &v58, 0.0), v14 = *(v64 + 24) | v58, *(v64 + 24) = v14, (v14 & 1) == 0))
  {
    [infoCopy setAgent:@"DejunkerDeduper"];
    v16 = itemsCopy;
    v17 = v16;
    if ([optionsCopy doIdenticalDeduping])
    {
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke;
      v53[3] = &unk_27888A188;
      v54 = v12;
      v55 = &v59;
      v56 = &v63;
      v57 = 0x3F847AE147AE147BLL;
      v17 = [(PGDejunkerDeduper *)self identicallyDedupedItemsInItems:v16 options:optionsCopy debugInfo:infoCopy progressBlock:v53];

      if (*(v64 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v68 = 65;
          *&v68[4] = 2080;
          *&v68[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v15 = MEMORY[0x277CBEBF8];
        v18 = v54;
        goto LABEL_45;
      }
    }

    v17 = v17;
    v18 = v17;
    if ([optionsCopy doSemanticalDeduping])
    {
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke_184;
      v48[3] = &unk_27888A188;
      v49 = v12;
      v50 = &v59;
      v51 = &v63;
      v52 = 0x3F847AE147AE147BLL;
      v18 = [(PGDejunkerDeduper *)self semanticallyDedupedItemsInItems:v17 options:optionsCopy debugInfo:infoCopy progressBlock:v48];

      if (*(v64 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v68 = 75;
          *&v68[4] = 2080;
          *&v68[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v15 = MEMORY[0x277CBEBF8];
        v19 = v49;
        goto LABEL_44;
      }
    }

    v18 = v18;
    v19 = v18;
    if ([optionsCopy doDejunk])
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke_185;
      v43[3] = &unk_27888A188;
      v44 = v12;
      v45 = &v59;
      v46 = &v63;
      v47 = 0x3F847AE147AE147BLL;
      v19 = [(PGDejunkerDeduper *)self dejunkedItemsWithItems:v18 options:optionsCopy debugInfo:infoCopy progressBlock:v43];

      if (*(v64 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v68 = 85;
          *&v68[4] = 2080;
          *&v68[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v15 = MEMORY[0x277CBEBF8];
        v20 = v44;
        goto LABEL_43;
      }

      if (![v19 count] && objc_msgSend(optionsCopy, "returnDedupedJunkIfOnlyJunk"))
      {
        v21 = v18;

        v19 = v21;
      }
    }

    v19 = v19;
    v20 = v19;
    if ([optionsCopy doFinalPass])
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke_186;
      v38[3] = &unk_27888A188;
      v39 = v12;
      v40 = &v59;
      v41 = &v63;
      v42 = 0x3F847AE147AE147BLL;
      v20 = [(PGDejunkerDeduper *)self finalItemsWithItems:v19 options:optionsCopy debugInfo:infoCopy progressBlock:v38];

      if (*(v64 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v68 = 99;
          *&v68[4] = 2080;
          *&v68[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_33;
      }
    }

    v22 = self->_loggingConnection;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = MEMORY[0x277CCA968];
      firstObject = [v16 firstObject];
      cls_universalDate = [firstObject cls_universalDate];
      v24 = [v23 localizedStringFromDate:cls_universalDate dateStyle:2 timeStyle:0];
      v32 = [v16 count];
      v31 = [v17 count];
      v25 = [v18 count];
      v26 = [v19 count];
      v27 = [v20 count];
      *buf = 138413570;
      *v68 = v24;
      *&v68[8] = 2048;
      *&v68[10] = v32;
      v69 = 2048;
      v70 = v31;
      v71 = 2048;
      v72 = v25;
      v73 = 2048;
      v74 = v26;
      v75 = 2048;
      v76 = v27;
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "DejunkerDeduper: %@: %lu -> %lu -> %lu -> %lu -> %lu", buf, 0x3Eu);
    }

    if (!v12 || (Current = CFAbsoluteTimeGetCurrent(), Current - v60[3] < 0.01) || (v60[3] = Current, v58 = 0, (*(v12 + 2))(v12, &v58, 1.0), v29 = *(v64 + 24) | v58, *(v64 + 24) = v29, (v29 & 1) == 0))
    {
      v20 = v20;
      v15 = v20;
      goto LABEL_43;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v68 = 104;
      *&v68[4] = 2080;
      *&v68[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_33:
    v15 = MEMORY[0x277CBEBF8];
LABEL_43:

LABEL_44:
LABEL_45:

    goto LABEL_46;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v68 = 54;
    *&v68[4] = 2080;
    *&v68[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/DejunkDedupe/PGDejunkerDeduper.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v15 = MEMORY[0x277CBEBF8];
LABEL_46:
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);

  return v15;
}

void __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke_184(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.4 + 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke_185(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.8);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __81__PGDejunkerDeduper_dejunkedDedupedItemsInItems_options_debugInfo_progressBlock___block_invoke_186(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.9);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (PGDejunkerDeduper)initWithSimilarityModelClass:(Class)class
{
  v10.receiver = self;
  v10.super_class = PGDejunkerDeduper;
  v4 = [(PGDejunkerDeduper *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D3AC98]) initWithNumericValueKeypaths:&unk_284485430];
    kMeanTimeClusterer = v4->_kMeanTimeClusterer;
    v4->_kMeanTimeClusterer = v5;

    v7 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:class];
    similarStacker = v4->_similarStacker;
    v4->_similarStacker = v7;

    objc_storeStrong(&v4->_loggingConnection, MEMORY[0x277D86220]);
  }

  return v4;
}

+ (BOOL)useFaceprintsForIdenticalDedupingWithOptions:(id)options
{
  optionsCopy = options;
  if (([optionsCopy personDedupingType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    useFaceprintsForIdenticalDeduping = [optionsCopy useFaceprintsForIdenticalDeduping];
  }

  else
  {
    useFaceprintsForIdenticalDeduping = 0;
  }

  return useFaceprintsForIdenticalDeduping;
}

uint64_t __73__PGDejunkerDeduper_CLSCurationItem_itemsSortedByScoreWithItems_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 clsContentScore];
  v8 = v7;
  [v6 clsContentScore];
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [v5 clsIdentifier];
      v12 = [v6 clsIdentifier];
      if (*(a1 + 40) == 1 && ([*(*(a1 + 32) + 48) objectForKeyedSubscript:v11], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = v13;
        [v13 doubleValue];
        v16 = v15;
      }

      else
      {
        [v5 clsAestheticScore];
        v16 = v17;
      }

      if (*(a1 + 40) == 1 && ([*(*(a1 + 32) + 48) objectForKeyedSubscript:v12], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v19 = v18;
        [v18 doubleValue];
        v21 = v20;
      }

      else
      {
        [v6 clsAestheticScore];
        v21 = v22;
      }

      if (v16 <= v21)
      {
        if (v16 < v21)
        {
          v10 = 1;
        }

        else
        {
          v10 = [v11 compare:v12];
        }
      }

      else
      {
        v10 = -1;
      }
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

void __95__PGDejunkerDeduper_CLSCurationItem_dejunkedDedupedItemIdentifiersWithItems_options_debugInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v5 curationModelForItemInfo:v7 options:v6];
  v9 = [PGCuratorInvestigationItem itemWithUUID:v8 itemInfo:v7 curationModel:v10];

  [*(a1 + 48) addObject:v9];
}

void __88__PGDejunkerDeduper_PHAsset_personLocalIdentifiersFromFaceInformation_faceQualityScore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v5 isKnownPerson])
  {
    [*(a1 + 32) addObject:v11];
    [v5 faceQuality];
    if (v6 >= 0.0)
    {
      *(*(*(a1 + 40) + 8) + 24) = v6 + *(*(*(a1 + 40) + 8) + 24);
      ++*(*(*(a1 + 48) + 8) + 24);
    }

    [v5 faceSize];
    if (v7 > 0.0)
    {
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 24);
      if (v9 < v7 && v9 > 0.0)
      {
        v7 = *(v8 + 24);
      }

      *(v8 + 24) = v7;
    }
  }
}

void __88__PGDejunkerDeduper_PHAsset_personLocalIdentifiersFromFaceInformation_faceQualityScore___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([v5 isKnownPerson] & 1) == 0)
  {
    [v5 faceSize];
    if (v6 >= *(a1 + 56))
    {
      [v5 faceQuality];
      if (v7 >= 0.0)
      {
        [*(a1 + 32) addObject:v9];
        [v5 faceQuality];
        *(*(*(a1 + 40) + 8) + 24) = v8 + *(*(*(a1 + 40) + 8) + 24);
        ++*(*(*(a1 + 48) + 8) + 24);
      }
    }
  }
}

uint64_t __65__PGDejunkerDeduper_PHAsset_itemsSortedByScoreWithItems_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 clsContentScore];
  v8 = v7;
  [v6 clsContentScore];
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      v10 = 1;
    }

    else
    {
      v11 = [v5 uuid];
      v12 = [v6 uuid];
      if (*(a1 + 40) == 1 && ([*(*(a1 + 32) + 80) objectForKeyedSubscript:v11], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = v13;
        [v13 doubleValue];
        v16 = v15;
      }

      else
      {
        [v5 overallAestheticScore];
        v16 = v17;
      }

      if (*(a1 + 40) == 1 && ([*(*(a1 + 32) + 80) objectForKeyedSubscript:v12], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v19 = v18;
        [v18 doubleValue];
        v21 = v20;
      }

      else
      {
        [v6 overallAestheticScore];
        v21 = v22;
      }

      if (v16 <= v21)
      {
        if (v16 < v21)
        {
          v10 = 1;
        }

        else
        {
          v10 = [v11 compare:v12];
        }
      }

      else
      {
        v10 = -1;
      }
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

void __87__PGDejunkerDeduper_PHAsset_faceprintByPersonLocalIdentifierByItemIdentifierWithItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 personLocalIdentifier];
        if (v12)
        {
          v13 = [v11 faceClusteringProperties];
          v14 = [v13 faceprint];
          v15 = [v14 faceprintData];

          if (v15)
          {
            v16 = objc_alloc(MEMORY[0x277CE2CD8]);
            v22 = 0;
            v17 = [v16 initWithState:v15 error:&v22];
            if (v17)
            {
              [v5 setObject:v17 forKeyedSubscript:v12];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v18 = *(a1 + 32);
  v19 = [MEMORY[0x277CD97A8] uuidFromLocalIdentifier:v21];
  [v18 setObject:v5 forKeyedSubscript:v19];
}

@end