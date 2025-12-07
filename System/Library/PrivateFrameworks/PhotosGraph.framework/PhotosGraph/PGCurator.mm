@interface PGCurator
+ (unint64_t)maximumNumberOfItemsToElectWithTotalNumberOfItems:(unint64_t)items spanningNumberOfDays:(double)days options:(id)options;
+ (unint64_t)numberOfItemsToShaveOffWithNumberOfItems:(unint64_t)items maximumNumberOfItems:(unint64_t)ofItems options:(id)options;
- (PGCurator)init;
- (double)evaluatedDurationWithItems:(id)items options:(id)options;
- (double)maximumDurationWithItems:(id)items options:(id)options;
- (id)bestItemIdentifiersWithItems:(id)items options:(id)options debugInfo:(id *)info;
- (id)bestItemsForFeeder:(id)feeder options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)completedItems:(id)items withNumberOfItems:(unint64_t)ofItems fromAllItems:(id)allItems avoidingItems:(id)avoidingItems options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)deduplicatedItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)defaultItemSortDescriptors;
- (id)focusedItemsInItems:(id)items withOptions:(id)options;
- (id)newSemanticalDeduperWithOptions:(id)options;
- (id)shaveItems:(id)items downToNumberOfItems:(unint64_t)ofItems options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)summarizedItemsFromCluster:(id)cluster withBeautifier:(id)beautifier debugInfo:(id)info progressBlock:(id)block;
- (unint64_t)targetDurationBasedNumberOfItemsToElectFromItems:(id)items options:(id)options;
- (void)_checkRequiredItemsWithIdentifiers:(id)identifiers inItems:(id)items;
- (void)completeItems:(id)items withFavoriteItemsFromItems:(id)fromItems upToNumberOfItems:(unint64_t)ofItems debugInfo:(id)info progressBlock:(id)block;
- (void)completeItems:(id)items withItems:(id)withItems forPersonLocalIdentifiers:(id)identifiers options:(id)options nonRemovableItems:(id)removableItems debugInfo:(id)info progressBlock:(id)block;
@end

@implementation PGCurator

- (id)newSemanticalDeduperWithOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_alloc_init(PGSemanticalDeduper);
  semanticalDedupingUsesAdaptiveSimilarStacking = [optionsCopy semanticalDedupingUsesAdaptiveSimilarStacking];

  [(PGSemanticalDeduper *)v4 setUsesAdaptiveSimilarStacking:semanticalDedupingUsesAdaptiveSimilarStacking];
  return v4;
}

- (id)shaveItems:(id)items downToNumberOfItems:(unint64_t)ofItems options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v10 = MEMORY[0x277D27670];
  blockCopy = block;
  optionsCopy = options;
  itemsCopy = items;
  v14 = [[v10 alloc] initWithSimilarityModelClass:objc_opt_class()];
  [v14 setEnableStatisticalSampling:1];
  [v14 setUsesKMeans:1];
  [v14 setEnableIntermediateNaturalClustering:0];
  [v14 setEnableFinalNaturalClustering:0];
  [v14 setEnableFinalTimeClustering:0];
  uuidsOfRequiredAssets = [optionsCopy uuidsOfRequiredAssets];

  [v14 setIdentifiersOfRequiredItems:uuidsOfRequiredAssets];
  v16 = [v14 performWithItems:itemsCopy maximumNumberOfItemsToChoose:ofItems debugInfo:0 progressBlock:blockCopy];

  return v16;
}

- (id)bestItemIdentifiersWithItems:(id)items options:(id)options debugInfo:(id *)info
{
  v38 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __60__PGCurator_bestItemIdentifiersWithItems_options_debugInfo___block_invoke;
  v33[3] = &unk_278886108;
  v26 = v10;
  v34 = v26;
  v11 = optionsCopy;
  v35 = v11;
  v12 = v9;
  v36 = v12;
  v28 = itemsCopy;
  [itemsCopy enumerateKeysAndObjectsUsingBlock:v33];
  v13 = [[PGCuratorInvestigationFeeder alloc] initWithItems:v12];
  v14 = [[PGCurationOptions alloc] initWithDictionaryRepresentation:v11];
  v15 = [objc_alloc(MEMORY[0x277D276A0]) initWithItems:v12];
  v25 = v13;
  v16 = [(PGCurator *)self bestItemsForFeeder:v13 options:v14 debugInfo:v15 progressBlock:0];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        clsIdentifier = [*(*(&v29 + 1) + 8 * i) clsIdentifier];
        [v17 addObject:clsIdentifier];
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v20);
  }

  if (info)
  {
    *info = [v15 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
  }

  return v17;
}

void __60__PGCurator_bestItemIdentifiersWithItems_options_debugInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v5 curationModelForItemInfo:v7 options:v6];
  v9 = [PGCuratorInvestigationItem itemWithUUID:v8 itemInfo:v7 curationModel:v10];

  [*(a1 + 48) addObject:v9];
}

- (id)defaultItemSortDescriptors
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"cls_universalDate" ascending:1];
  v6[0] = v2;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"clsIdentifier" ascending:1];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)completedItems:(id)items withNumberOfItems:(unint64_t)ofItems fromAllItems:(id)allItems avoidingItems:(id)avoidingItems options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v88 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  allItemsCopy = allItems;
  avoidingItemsCopy = avoidingItems;
  optionsCopy = options;
  infoCopy = info;
  blockCopy = block;
  v15 = _Block_copy(blockCopy);
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v48 = blockCopy;
  if (!v15 || (v16 = CFAbsoluteTimeGetCurrent(), v16 - v75[3] < 0.01) || (v75[3] = v16, v73 = 0, (*(v15 + 2))(v15, &v73, 0.0), v17 = *(v79 + 24) | v73, *(v79 + 24) = v17, (v17 & 1) == 0))
  {
    if (!ofItems)
    {
      v18 = itemsCopy;
      goto LABEL_45;
    }

    ofItemsCopy = ofItems;
    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v20 = avoidingItemsCopy;
    v21 = [v20 countByEnumeratingWithState:&v69 objects:v83 count:16];
    if (v21)
    {
      v22 = *v70;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v70 != v22)
          {
            objc_enumerationMutation(v20);
          }

          clsIdentifier = [*(*(&v69 + 1) + 8 * i) clsIdentifier];
          [v19 addObject:clsIdentifier];
        }

        v21 = [v20 countByEnumeratingWithState:&v69 objects:v83 count:16];
      }

      while (v21);
    }

    v54 = +[PGCurationManager assetsBeautifier];
    [v54 setIdentifiersOfRequiredItems:v19];
    uuidsOfEligibleAssets = [optionsCopy uuidsOfEligibleAssets];
    [v54 setIdentifiersOfEligibleItems:uuidsOfEligibleAssets];

    v26 = [v19 count];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __105__PGCurator_completedItems_withNumberOfItems_fromAllItems_avoidingItems_options_debugInfo_progressBlock___block_invoke;
    v64[3] = &unk_27888A188;
    v27 = v15;
    v65 = v27;
    v66 = &v74;
    v67 = &v78;
    v68 = 0x3F847AE147AE147BLL;
    v46 = [v54 performWithItems:allItemsCopy maximumNumberOfItemsToChoose:v26 + ofItemsCopy debugInfo:0 progressBlock:v64];
    if (*(v79 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v85 = 939;
        v86 = 2080;
        v87 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v18 = MEMORY[0x277CBEBF8];
      goto LABEL_44;
    }

    v45 = v27;
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v29 = v46;
    v30 = [v29 countByEnumeratingWithState:&v60 objects:v82 count:16];
    if (v30)
    {
      v31 = *v61;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v61 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v60 + 1) + 8 * j);
          clsIdentifier2 = [v33 clsIdentifier];
          v35 = [v19 containsObject:clsIdentifier2];

          if ((v35 & 1) == 0)
          {
            [v28 addObject:v33];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v60 objects:v82 count:16];
      }

      while (v30);
    }

    v36 = v28;
    v37 = v36;
    if ([v36 count] > ofItemsCopy)
    {
      [v54 setIdentifiersOfRequiredItems:0];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __105__PGCurator_completedItems_withNumberOfItems_fromAllItems_avoidingItems_options_debugInfo_progressBlock___block_invoke_283;
      v55[3] = &unk_27888A188;
      v56 = v45;
      v57 = &v74;
      v58 = &v78;
      v59 = 0x3F847AE147AE147BLL;
      v37 = [v54 performWithItems:v36 maximumNumberOfItemsToChoose:ofItemsCopy progressBlock:v55];
    }

    v38 = itemsCopy;
    if ([v37 count])
    {
      v39 = [v38 arrayByAddingObjectsFromArray:v37];

      if (infoCopy)
      {
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Adding %lu assets (%lu requested, %lu found) for layout purposes", objc_msgSend(v37, "count"), ofItemsCopy, objc_msgSend(v36, "count")];
        v41 = [MEMORY[0x277CBEB98] setWithArray:v37];
        [infoCopy setState:3 ofItems:v41 withReason:v40];
      }

      if (!v15)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v39 = v38;
      if (!v15)
      {
        goto LABEL_42;
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v75[3] >= 0.01)
    {
      v75[3] = Current;
      v73 = 0;
      (v45)[2](v45, &v73, 1.0);
      v43 = *(v79 + 24) | v73;
      *(v79 + 24) = v43;
      if (v43)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v85 = 971;
          v86 = 2080;
          v87 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v18 = MEMORY[0x277CBEBF8];
        goto LABEL_43;
      }
    }

LABEL_42:
    v18 = v39;
LABEL_43:

LABEL_44:
    goto LABEL_45;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v85 = 918;
    v86 = 2080;
    v87 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v18 = MEMORY[0x277CBEBF8];
LABEL_45:
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);

  return v18;
}

void __105__PGCurator_completedItems_withNumberOfItems_fromAllItems_avoidingItems_options_debugInfo_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __105__PGCurator_completedItems_withNumberOfItems_fromAllItems_avoidingItems_options_debugInfo_progressBlock___block_invoke_283(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)completeItems:(id)items withItems:(id)withItems forPersonLocalIdentifiers:(id)identifiers options:(id)options nonRemovableItems:(id)removableItems debugInfo:(id)info progressBlock:(id)block
{
  v165 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  withItemsCopy = withItems;
  identifiersCopy = identifiers;
  optionsCopy = options;
  removableItemsCopy = removableItems;
  infoCopy = info;
  v17 = 0.0;
  v119 = _Block_copy(block);
  if (!v119)
  {
    goto LABEL_7;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 0.01)
  {
    goto LABEL_7;
  }

  v152 = 0;
  v119[2](v119, &v152, 0.0);
  if (v152 != 1)
  {
    v17 = Current;
LABEL_7:
    v97 = optionsCopy;
    v98 = infoCopy;
    v96 = identifiersCopy;
    v118 = [identifiersCopy mutableCopy];
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v20 = itemsCopy;
    v114 = [v20 countByEnumeratingWithState:&v148 objects:v160 count:16];
    v117 = v20;
    if (v114)
    {
      v111 = *v149;
      do
      {
        for (i = 0; i != v114; ++i)
        {
          if (*v149 != v111)
          {
            objc_enumerationMutation(v20);
          }

          v22 = *(*(&v148 + 1) + 8 * i);
          if (v119)
          {
            v23 = CFAbsoluteTimeGetCurrent();
            if (v23 - v17 >= 0.01)
            {
              v152 = 0;
              v119[2](v119, &v152, 0.5);
              if (v152)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v162 = 789;
                  v163 = 2080;
                  v164 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v34 = v118;
                goto LABEL_100;
              }

              v17 = v23;
            }
          }

          clsPersonAndPetLocalIdentifiers = [v22 clsPersonAndPetLocalIdentifiers];
          v25 = [MEMORY[0x277CBEB98] setWithArray:clsPersonAndPetLocalIdentifiers];
          [v118 minusSet:v25];

          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v26 = clsPersonAndPetLocalIdentifiers;
          v27 = [v26 countByEnumeratingWithState:&v144 objects:v159 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v145;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v145 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v144 + 1) + 8 * j);
                v32 = [v19 objectForKeyedSubscript:v31];
                v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "unsignedIntegerValue") + 1}];

                [v19 setObject:v33 forKeyedSubscript:v31];
              }

              v28 = [v26 countByEnumeratingWithState:&v144 objects:v159 count:16];
            }

            while (v28);
          }

          v20 = v117;
        }

        v114 = [v117 countByEnumeratingWithState:&v148 objects:v160 count:16];
      }

      while (v114);
    }

    v34 = v118;
    if (![v118 count])
    {
LABEL_101:

      identifiersCopy = v96;
      optionsCopy = v97;
      infoCopy = v98;
      goto LABEL_102;
    }

    v105 = +[PGCurationManager assetsBeautifier];
    v102 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    obj = [v118 copy];
    v35 = [obj countByEnumeratingWithState:&v140 objects:v158 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v141;
      v103 = *v141;
      do
      {
        v38 = 0;
        v106 = v36;
        do
        {
          if (*v141 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v140 + 1) + 8 * v38);
          if (v119)
          {
            v40 = CFAbsoluteTimeGetCurrent();
            if (v40 - v17 >= 0.01)
            {
              v152 = 0;
              v119[2](v119, &v152, 0.5);
              if (v152)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v162 = 812;
                  v163 = 2080;
                  v164 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                goto LABEL_99;
              }

              v17 = v40;
            }
          }

          if ([v34 containsObject:v39])
          {
            v115 = v38;
            v41 = objc_opt_new();
            v136 = 0u;
            v137 = 0u;
            v138 = 0u;
            v139 = 0u;
            v42 = withItemsCopy;
            v43 = [v42 countByEnumeratingWithState:&v136 objects:v157 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v137;
              do
              {
                for (k = 0; k != v44; ++k)
                {
                  if (*v137 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v47 = *(*(&v136 + 1) + 8 * k);
                  clsPersonAndPetLocalIdentifiers2 = [v47 clsPersonAndPetLocalIdentifiers];
                  v49 = [clsPersonAndPetLocalIdentifiers2 containsObject:v39];

                  if (v49)
                  {
                    [v41 addObject:v47];
                  }
                }

                v44 = [v42 countByEnumeratingWithState:&v136 objects:v157 count:16];
              }

              while (v44);
            }

            v50 = [v105 bestItemInItems:v41];
            v51 = v50;
            v34 = v118;
            if (v50)
            {
              clsPersonAndPetLocalIdentifiers3 = [v50 clsPersonAndPetLocalIdentifiers];
              [v117 addObject:v51];
              v112 = v51;
              [v102 addObject:v51];
              v53 = [MEMORY[0x277CBEB98] setWithArray:clsPersonAndPetLocalIdentifiers3];
              [v118 minusSet:v53];

              v134 = 0u;
              v135 = 0u;
              v132 = 0u;
              v133 = 0u;
              v54 = clsPersonAndPetLocalIdentifiers3;
              v55 = [v54 countByEnumeratingWithState:&v132 objects:v156 count:16];
              if (v55)
              {
                v56 = v55;
                v57 = *v133;
                do
                {
                  for (m = 0; m != v56; ++m)
                  {
                    if (*v133 != v57)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v59 = *(*(&v132 + 1) + 8 * m);
                    v60 = [v19 objectForKeyedSubscript:v59];
                    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v60, "unsignedIntegerValue") + 1}];

                    [v19 setObject:v61 forKeyedSubscript:v59];
                  }

                  v56 = [v54 countByEnumeratingWithState:&v132 objects:v156 count:16];
                }

                while (v56);
              }

              v51 = v112;
              v34 = v118;
            }

            v37 = v103;
            v36 = v106;
            v38 = v115;
          }

          ++v38;
        }

        while (v38 != v36);
        v36 = [obj countByEnumeratingWithState:&v140 objects:v158 count:16];
      }

      while (v36);
    }

    v62 = +[PGCurationManager maximumNumberOfItemsForDuration:withTotalNumberOfItems:](PGCurationManager, "maximumNumberOfItemsForDuration:withTotalNumberOfItems:", [v97 duration], objc_msgSend(withItemsCopy, "count"));
    if (v98)
    {
      [v98 setAgent:@"CompleteItems"];
      [v98 setStage:@"Repechage"];
      [v98 setState:3 ofItems:v102 withReason:@"Contains needed faces"];
    }

    v63 = v117;
    if ([v117 count] <= v62)
    {
      goto LABEL_109;
    }

    v64 = [v117 count];
    v65 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    reverseObjectEnumerator = [v117 reverseObjectEnumerator];
    v66 = [reverseObjectEnumerator countByEnumeratingWithState:&v128 objects:v155 count:16];
    if (!v66)
    {
      goto LABEL_104;
    }

    v67 = v66;
    v95 = v64 - v62;
    v68 = *v129;
    v94 = v65;
    v100 = *v129;
LABEL_62:
    v69 = 0;
    v104 = v67;
    while (1)
    {
      if (*v129 != v68)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v116 = v69;
      v70 = *(*(&v128 + 1) + 8 * v69);
      --v64;
      v71 = MEMORY[0x277CBEB98];
      clsPersonAndPetLocalIdentifiers4 = [v70 clsPersonAndPetLocalIdentifiers];
      v73 = [v71 setWithArray:clsPersonAndPetLocalIdentifiers4];

      if (([removableItemsCopy containsObject:v70] & 1) == 0)
      {
        break;
      }

      v74 = v116;
LABEL_90:

      v69 = v74 + 1;
      if (v69 == v67)
      {
        v67 = [reverseObjectEnumerator countByEnumeratingWithState:&v128 objects:v155 count:16];
        if (v67)
        {
          goto LABEL_62;
        }

LABEL_104:

        v34 = v118;
        if ([v65 count])
        {
          if (v98)
          {
            v92 = [v63 objectsAtIndexes:v65];
            v93 = [MEMORY[0x277CBEB98] setWithArray:v92];
            [v98 setState:2 ofItems:v93 withReason:@"Too many items after repechage"];
          }

          [v63 removeObjectsAtIndexes:v65];
        }

LABEL_109:
        if (v119)
        {
          if (CFAbsoluteTimeGetCurrent() - v17 >= 0.01)
          {
            v152 = 0;
            v119[2](v119, &v152, 1.0);
            if (v152)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v162 = 912;
                v163 = 2080;
                v164 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }
            }
          }
        }

LABEL_99:

        v20 = v105;
LABEL_100:

        goto LABEL_101;
      }
    }

    v113 = v64;
    if (v119)
    {
      v75 = CFAbsoluteTimeGetCurrent();
      if (v75 - v17 >= 0.01)
      {
        v152 = 0;
        v119[2](v119, &v152, 0.5);
        if (v152)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v162 = 871;
            v163 = 2080;
            v164 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v34 = v118;
          goto LABEL_99;
        }

        v17 = v75;
      }
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    obja = v73;
    v76 = v73;
    v77 = [v76 countByEnumeratingWithState:&v124 objects:v154 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v125;
LABEL_73:
      v80 = 0;
      while (1)
      {
        if (*v125 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = [v19 objectForKeyedSubscript:*(*(&v124 + 1) + 8 * v80)];
        unsignedIntegerValue = [v81 unsignedIntegerValue];

        if (unsignedIntegerValue == 1)
        {
          break;
        }

        if (v78 == ++v80)
        {
          v78 = [v76 countByEnumeratingWithState:&v124 objects:v154 count:16];
          if (v78)
          {
            goto LABEL_73;
          }

          goto LABEL_79;
        }
      }
    }

    else
    {
LABEL_79:

      v64 = v113;
      [v65 addIndex:v113];
      if (v95 == 1)
      {

        goto LABEL_104;
      }

      --v95;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v83 = v76;
      v84 = [v83 countByEnumeratingWithState:&v120 objects:v153 count:16];
      if (!v84)
      {
        goto LABEL_89;
      }

      v85 = v84;
      v86 = *v121;
      do
      {
        for (n = 0; n != v85; ++n)
        {
          if (*v121 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v88 = *(*(&v120 + 1) + 8 * n);
          v89 = [v19 objectForKeyedSubscript:v88];
          unsignedIntegerValue2 = [v89 unsignedIntegerValue];
          v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2 - 1];

          [v19 setObject:v91 forKeyedSubscript:v88];
        }

        v85 = [v83 countByEnumeratingWithState:&v120 objects:v153 count:16];
      }

      while (v85);
      v63 = v117;
      v65 = v94;
    }

    v64 = v113;
LABEL_89:
    v68 = v100;
    v74 = v116;

    v67 = v104;
    v73 = obja;
    goto LABEL_90;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v162 = 781;
    v163 = 2080;
    v164 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_102:
}

- (void)completeItems:(id)items withFavoriteItemsFromItems:(id)fromItems upToNumberOfItems:(unint64_t)ofItems debugInfo:(id)info progressBlock:(id)block
{
  v49 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  fromItemsCopy = fromItems;
  infoCopy = info;
  v14 = _Block_copy(block);
  v15 = 0.0;
  if (!v14 || (v16 = CFAbsoluteTimeGetCurrent(), v16 < 0.01))
  {
LABEL_7:
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v37 = itemsCopy;
    v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:itemsCopy];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v36 = fromItemsCopy;
    v19 = fromItemsCopy;
    v20 = [v19 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          if (([v18 containsObject:v24] & 1) == 0 && objc_msgSend(v24, "isFavorite"))
          {
            [v17 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v21);
    }

    if (v14)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v26 = &unk_22F784000;
      if (Current - v15 >= 0.01)
      {
        v42 = 0;
        v14[2](v14, &v42, 0.5);
        if (v42)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v46 = 744;
            v47 = 2080;
            v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          fromItemsCopy = v36;
          itemsCopy = v37;
LABEL_38:

          goto LABEL_39;
        }

        v15 = Current;
      }
    }

    else
    {
      v26 = &unk_22F784000;
    }

    v27 = [v17 count];
    if (v27)
    {
      v28 = v27;
      [infoCopy setAgent:@"PGManager"];
      [infoCopy setStage:@"Complete with Favorite Items"];
      if (v28 > ofItems)
      {
        v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"clsContentScore" ascending:0];
        v43[0] = v29;
        v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"cls_universalDate" ascending:1];
        v43[1] = v30;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];

        v32 = [v17 sortedArrayUsingDescriptors:v31];
        v33 = [v32 subarrayWithRange:{0, ofItems}];

        [v37 addObjectsFromArray:v33];
        if (infoCopy)
        {
          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Electing %lu out of %lu available favorite items", objc_msgSend(v33, "count"), v28];
          v35 = [MEMORY[0x277CBEB98] setWithArray:v17];
          [infoCopy setState:3 ofItems:v35 withReason:v34];
        }

        v26 = &unk_22F784000;
        goto LABEL_32;
      }

      [v37 addObjectsFromArray:v17];
      if (infoCopy)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Enough remaining slots (%lu) to include all %lu available favorite items", ofItems, v28];
        v33 = [MEMORY[0x277CBEB98] setWithArray:v17];
        [infoCopy setState:3 ofItems:v33 withReason:v31];
LABEL_32:
      }
    }

    fromItemsCopy = v36;
    itemsCopy = v37;
    if (v14)
    {
      if (CFAbsoluteTimeGetCurrent() - v15 >= v26[76])
      {
        v42 = 0;
        v14[2](v14, &v42, 1.0);
        if (v42)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v46 = 774;
            v47 = 2080;
            v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_38;
  }

  v42 = 0;
  v14[2](v14, &v42, 0.0);
  if (v42 != 1)
  {
    v15 = v16;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v46 = 732;
    v47 = 2080;
    v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_39:
}

- (id)deduplicatedItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v56 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  infoCopy = info;
  blockCopy = block;
  v14 = _Block_copy(blockCopy);
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  if (!v14 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v45[3] < 0.01) || (v45[3] = v15, v43 = 0, (*(v14 + 2))(v14, &v43, 0.0), v16 = *(v49 + 24) | v43, *(v49 + 24) = v16, (v16 & 1) == 0))
  {
    uuidsOfRequiredAssets = [optionsCopy uuidsOfRequiredAssets];
    v19 = itemsCopy;
    if ([optionsCopy semanticalDedupingIsEnabled])
    {
      v20 = [(PGCurator *)self newSemanticalDeduperWithOptions:optionsCopy];
      if (v20)
      {
        v31 = [v19 count];
        [v20 setIdentifiersOfRequiredItems:uuidsOfRequiredAssets];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __63__PGCurator_deduplicatedItems_options_debugInfo_progressBlock___block_invoke;
        v38[3] = &unk_27888A188;
        v39 = v14;
        v40 = &v44;
        v41 = &v48;
        v42 = 0x3F847AE147AE147BLL;
        v21 = [v20 deduplicatedItemsWithItems:v19 debugInfo:infoCopy progressBlock:v38];

        if (*(v49 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v53 = 704;
            v54 = 2080;
            v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_35;
        }

        v22 = self->_loggingConnection;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v29 = [v21 count];
          *buf = 67109376;
          v53 = v31;
          v54 = 1024;
          LODWORD(v55) = v29;
          _os_log_debug_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_DEBUG, "Semantical deduper reduced %d assets to %d", buf, 0xEu);
        }
      }

      else
      {
        v21 = v19;
      }
    }

    else
    {
      v21 = v19;
    }

    if ([optionsCopy movieDedupingIsEnabled])
    {
      v23 = [(PGCurator *)self newMovieDeduperWithOptions:optionsCopy];
      if (v23)
      {
        v32 = [v21 count];
        [v23 setIdentifiersOfRequiredItems:uuidsOfRequiredAssets];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __63__PGCurator_deduplicatedItems_options_debugInfo_progressBlock___block_invoke_248;
        v33[3] = &unk_27888A188;
        v34 = v14;
        v35 = &v44;
        v36 = &v48;
        v37 = 0x3F847AE147AE147BLL;
        v24 = [v23 deduplicatedItemsWithItems:v21 debugInfo:infoCopy progressBlock:v33];

        if (*(v49 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v53 = 719;
            v54 = 2080;
            v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v17 = MEMORY[0x277CBEBF8];
          v21 = v24;
          goto LABEL_37;
        }

        v25 = self->_loggingConnection;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v30 = [v24 count];
          *buf = 67109376;
          v53 = v32;
          v54 = 1024;
          LODWORD(v55) = v30;
          _os_log_debug_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_DEBUG, "Movie deduper reduced %d assets to %d", buf, 0xEu);
        }
      }

      else
      {
        v24 = v21;
      }

      v21 = v24;
    }

    if (!v14 || (Current = CFAbsoluteTimeGetCurrent(), Current - v45[3] < 0.01) || (v45[3] = Current, v43 = 0, (*(v14 + 2))(v14, &v43, 1.0), v27 = *(v49 + 24) | v43, *(v49 + 24) = v27, (v27 & 1) == 0))
    {
      v21 = v21;
      v17 = v21;
      goto LABEL_37;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v53 = 724;
      v54 = 2080;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_35:
    v17 = MEMORY[0x277CBEBF8];
LABEL_37:

    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v53 = 688;
    v54 = 2080;
    v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v17 = MEMORY[0x277CBEBF8];
LABEL_38:
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  return v17;
}

void __63__PGCurator_deduplicatedItems_options_debugInfo_progressBlock___block_invoke(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __63__PGCurator_deduplicatedItems_options_debugInfo_progressBlock___block_invoke_248(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)_checkRequiredItemsWithIdentifiers:(id)identifiers inItems:(id)items
{
  v27 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  itemsCopy = items;
  if (identifiersCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = itemsCopy;
    v9 = itemsCopy;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          clsIdentifier = [v14 clsIdentifier];
          v16 = [identifiersCopy containsObject:clsIdentifier];

          if (v16)
          {
            if ([v8 containsObject:v14])
            {
              loggingConnection = self->_loggingConnection;
              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Required items found several times in final sorted items", buf, 2u);
              }
            }

            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v18 = [v8 count];
    if (v18 != [identifiersCopy count])
    {
      v19 = self->_loggingConnection;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "Final sorted items don't contain all required items", buf, 2u);
      }
    }

    itemsCopy = v20;
  }
}

- (id)bestItemsForFeeder:(id)feeder options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v364 = *MEMORY[0x277D85DE8];
  feederCopy = feeder;
  optionsCopy = options;
  infoCopy = info;
  blockCopy = block;
  v10 = _Block_copy(blockCopy);
  v348 = 0;
  v349 = &v348;
  v350 = 0x2020000000;
  v351 = 0;
  v344 = 0;
  v345 = &v344;
  v346 = 0x2020000000;
  v347 = 0;
  if (v10)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v345[3] >= 0.01)
    {
      v345[3] = Current;
      LOBYTE(v319) = 0;
      v10[2](v10, &v319, 0.0);
      v12 = *(v349 + 24) | v319;
      *(v349 + 24) = v12;
      if (v12)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v354 = 155;
          *&v354[4] = 2080;
          *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_11;
      }
    }
  }

  if (![feederCopy numberOfItems])
  {
LABEL_11:
    v15 = MEMORY[0x277CBEBF8];
    goto LABEL_279;
  }

  selfCopy = self;
  v226 = v10;
  context = objc_autoreleasePoolPush();
  sharingFilter = [optionsCopy sharingFilter];
  if (sharingFilter)
  {
    if (sharingFilter == 1)
    {
      sharedItems = [feederCopy sharedItems];
      v14 = [sharedItems count];
    }

    else if (sharingFilter == 2)
    {
      sharedItems = [feederCopy allItems];
      v14 = [sharedItems count];
    }

    else
    {
      sharedItems = 0;
      v14 = [0 count];
    }
  }

  else
  {
    sharedItems = [feederCopy privateItems];
    v14 = [sharedItems count];
  }

  if (v14)
  {
    uuidsOfEligibleAssets = [optionsCopy uuidsOfEligibleAssets];
    identicalDedupingIsEnabled = [optionsCopy identicalDedupingIsEnabled];
    uuidsOfRequiredAssets = [optionsCopy uuidsOfRequiredAssets];
    v17 = [uuidsOfRequiredAssets count];
    v18 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v17];
    if (v17)
    {
      v343 = 0u;
      v342 = 0u;
      v341 = 0u;
      v340 = 0u;
      v19 = sharedItems;
      v20 = [v19 countByEnumeratingWithState:&v340 objects:v363 count:16];
      if (v20)
      {
        v21 = *v341;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v341 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v340 + 1) + 8 * i);
            clsIdentifier = [v23 clsIdentifier];
            if ([uuidsOfRequiredAssets containsObject:clsIdentifier])
            {
              if (uuidsOfEligibleAssets && ([uuidsOfEligibleAssets containsObject:clsIdentifier] & 1) == 0)
              {
                v25 = selfCopy->_loggingConnection;
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *v354 = clsIdentifier;
                  _os_log_error_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_ERROR, "Required item %@ is not part of eligible items", buf, 0xCu);
                }
              }

              [v18 addObject:v23];
              if ([v18 count] == v17)
              {

                goto LABEL_34;
              }
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v340 objects:v363 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

LABEL_34:

      if (infoCopy)
      {
        [infoCopy setAgent:@"Curator"];
        [infoCopy setStage:@"Required Items"];
        [infoCopy setState:4 ofItems:v18 withReason:@"Items are required"];
      }
    }

    v26 = [(PGCurator *)selfCopy focusedItemsInItems:sharedItems withOptions:optionsCopy];
    if ([v26 count])
    {
      if ([v18 count])
      {
        v27 = [v18 setByAddingObjectsFromArray:v26];
        allObjects = [v27 allObjects];

        v26 = allObjects;
      }

      if (infoCopy)
      {
        v29 = [MEMORY[0x277CBEB98] setWithArray:v26];
        [infoCopy chooseItems:v29 inItems:sharedItems withReason:@"Focused Items"];
      }

      v26 = v26;

      v30 = v26;
    }

    else
    {
      v30 = sharedItems;
    }

    sharedItems = v30;
    v222 = [v30 count];
    if (!v222)
    {
      v15 = MEMORY[0x277CBEBF8];
LABEL_277:

      goto LABEL_278;
    }

    if (uuidsOfEligibleAssets)
    {
      v31 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:v222];
      v339 = 0u;
      v338 = 0u;
      v337 = 0u;
      v336 = 0u;
      v32 = sharedItems;
      v33 = [v32 countByEnumeratingWithState:&v336 objects:v362 count:16];
      if (v33)
      {
        v34 = *v337;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v337 != v34)
            {
              objc_enumerationMutation(v32);
            }

            clsIdentifier2 = [*(*(&v336 + 1) + 8 * j) clsIdentifier];
            [v31 addObject:clsIdentifier2];
          }

          v33 = [v32 countByEnumeratingWithState:&v336 objects:v362 count:16];
        }

        while (v33);
      }

      [v31 intersectSet:uuidsOfEligibleAssets];
      v224 = v31;
    }

    else
    {
      v224 = 0;
    }

    duration = [optionsCopy duration];
    includesAllFaces = [optionsCopy includesAllFaces];
    useDurationBasedCuration = [optionsCopy useDurationBasedCuration];
    if (useDurationBasedCuration)
    {
      [(PGCurator *)selfCopy maximumDurationWithItems:sharedItems options:optionsCopy];
      v40 = v39;
      [optionsCopy minimumDuration];
      v42 = v41;
      if (v41 > 0.0 && v40 < v41)
      {
        v43 = selfCopy->_loggingConnection;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *v354 = v40;
          *&v354[8] = 2048;
          *&v354[10] = v42;
          _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "DurationEvaluation: maximumDuration with all items is %f, cannot match minimum duration %f", buf, 0x16u);
        }

        if ([optionsCopy failIfMinimumDurationNotReached])
        {
          v15 = MEMORY[0x277CBEBF8];
LABEL_276:
          uuidsOfEligibleAssets = v224;
          goto LABEL_277;
        }
      }

      targetNumberOfItems = [(PGCurator *)selfCopy targetDurationBasedNumberOfItemsToElectFromItems:sharedItems options:optionsCopy];
    }

    else if ([optionsCopy targetNumberOfItems])
    {
      targetNumberOfItems = [optionsCopy targetNumberOfItems];
    }

    else
    {
      universalEndDate = [feederCopy universalEndDate];
      universalStartDate = [feederCopy universalStartDate];
      [universalEndDate timeIntervalSinceDate:universalStartDate];
      v48 = v47;

      targetNumberOfItems = [objc_opt_class() maximumNumberOfItemsToElectWithTotalNumberOfItems:v222 spanningNumberOfDays:optionsCopy options:v48 / 86400.0];
    }

    v49 = targetNumberOfItems;
    if (targetNumberOfItems <= [v18 count])
    {
      defaultItemSortDescriptors = [(PGCurator *)selfCopy defaultItemSortDescriptors];
      v15 = [v18 sortedArrayUsingDescriptors:defaultItemSortDescriptors];

      goto LABEL_276;
    }

    v50 = [v224 count];
    skipCurationIfEligibleItemsFitTargetDuration = [optionsCopy skipCurationIfEligibleItemsFitTargetDuration];
    if (v224)
    {
      v52 = skipCurationIfEligibleItemsFitTargetDuration;
    }

    else
    {
      v52 = 0;
    }

    if (v52 == 1 && v49 + 2 >= v50)
    {
      v53 = MEMORY[0x277CCAC30];
      v334[0] = MEMORY[0x277D85DD0];
      v334[1] = 3221225472;
      v334[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke;
      v334[3] = &unk_27887FE70;
      v335 = v224;
      v54 = [v53 predicateWithBlock:v334];
      v15 = [sharedItems filteredArrayUsingPredicate:v54];

      goto LABEL_276;
    }

    v216 = v49;
    v221 = [PGCurationManager summaryClusteringForDuration:duration];
    if ([optionsCopy shouldSkipClustering])
    {
      v56 = objc_alloc(MEMORY[0x277D277C8]);
      v57 = [MEMORY[0x277D3AC38] clusterWithObjects:sharedItems];
      v58 = [v56 initWithCluster:v57 numberOfItemsToElect:v49];
      v361 = v58;
      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v361 count:1];
    }

    else
    {
      v329[0] = MEMORY[0x277D85DD0];
      v329[1] = 3221225472;
      v329[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_2;
      v329[3] = &unk_27888A188;
      v330 = v226;
      v331 = &v344;
      v333 = 0x3F847AE147AE147BLL;
      v332 = &v348;
      v59 = [v221 performWithItems:sharedItems identifiersOfEligibleItems:v224 maximumNumberOfItemsToElect:v49 debugInfo:infoCopy progressBlock:v329];
      v57 = v330;
    }

    v60 = selfCopy->_loggingConnection;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v61 = [sharedItems count];
      v62 = [v59 count];
      *buf = 134219008;
      *v354 = v61;
      *&v354[8] = 1024;
      *&v354[10] = useDurationBasedCuration;
      *&v354[14] = 2048;
      *&v354[16] = v49;
      *&v354[24] = 1024;
      *&v354[26] = includesAllFaces;
      *v355 = 2048;
      *&v355[2] = v62;
      _os_log_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_INFO, "Curated Items: feederCount:%ld durationBased:%d maximumNumberOfItems:%ld includeAllFaces:%d clustersCount:%ld", buf, 0x2Cu);
    }

    if (*(v349 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v354 = 302;
        *&v354[4] = 2080;
        *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v15 = MEMORY[0x277CBEBF8];
      goto LABEL_275;
    }

    if (![v59 count])
    {
      defaultItemSortDescriptors2 = [(PGCurator *)selfCopy defaultItemSortDescriptors];
      v15 = [v18 sortedArrayUsingDescriptors:defaultItemSortDescriptors2];

LABEL_275:
      goto LABEL_276;
    }

    v63 = +[PGCurationManager assetsBeautifier];
    [v63 setIdentifiersOfRequiredItems:uuidsOfRequiredAssets];
    [v63 setIdentifiersOfEligibleItems:v224];
    [v63 setDiscardNonEligibleClustersInSampling:v224 != 0];
    [v63 setEnableIntermediateNaturalClustering:identicalDedupingIsEnabled];
    [v63 setEnableFinalNaturalClustering:identicalDedupingIsEnabled];
    v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v207 = includesAllFaces;
    if (useDurationBasedCuration)
    {
      v65 = objc_alloc_init(MEMORY[0x277CBEB18]);

      v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v67 = v59;
    }

    else
    {
      v67 = v59;
      v66 = 0;
      v65 = 0;
    }

    v325 = 0;
    v326 = &v325;
    v327 = 0x2020000000;
    v328 = 0;
    v319 = 0;
    v320 = &v319;
    v321 = 0x3032000000;
    v322 = __Block_byref_object_copy__10246;
    v323 = __Block_byref_object_dispose__10247;
    v324 = 0;
    v313 = 0;
    v314 = &v313;
    v315 = 0x3032000000;
    v316 = __Block_byref_object_copy__10246;
    v317 = __Block_byref_object_dispose__10247;
    v318 = 0;
    v69 = objc_alloc_init(PGUnfairLock);
    v70 = [v67 count];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_210;
    block[3] = &unk_27887FEC0;
    v206 = v67;
    v296 = v206;
    v208 = v226;
    v305 = v208;
    v311 = 0x3F847AE147AE147BLL;
    v306 = &v344;
    v307 = &v348;
    v211 = v69;
    v297 = v211;
    v298 = selfCopy;
    v212 = v63;
    v299 = v212;
    v209 = infoCopy;
    v300 = v209;
    v214 = optionsCopy;
    v301 = v214;
    v220 = v64;
    v302 = v220;
    v312 = useDurationBasedCuration;
    v215 = v66;
    v303 = v215;
    v308 = &v325;
    v213 = v65;
    v304 = v213;
    v309 = &v319;
    v310 = &v313;
    dispatch_apply(v70, 0, block);
    if (*(v349 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v354 = 372;
        *&v354[4] = 2080;
        *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v15 = MEMORY[0x277CBEBF8];
      v59 = v67;
      goto LABEL_274;
    }

    v59 = v67;
    v71 = v207;
    if ([v18 count])
    {
      v72 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v18];
      v293 = 0u;
      v294 = 0u;
      v291 = 0u;
      v292 = 0u;
      v73 = v220;
      v74 = [v73 countByEnumeratingWithState:&v291 objects:v360 count:16];
      if (v74)
      {
        v75 = *v292;
LABEL_95:
        v76 = 0;
        while (1)
        {
          if (*v292 != v75)
          {
            objc_enumerationMutation(v73);
          }

          [v72 removeObject:*(*(&v291 + 1) + 8 * v76)];
          if (![v72 count])
          {
            break;
          }

          if (v74 == ++v76)
          {
            v74 = [v73 countByEnumeratingWithState:&v291 objects:v360 count:16];
            if (v74)
            {
              goto LABEL_95;
            }

            break;
          }
        }
      }

      v71 = v207;
      if ([v72 count])
      {
        allObjects2 = [v72 allObjects];
        [v73 addObjectsFromArray:allObjects2];

        if (useDurationBasedCuration)
        {
          allObjects3 = [v72 allObjects];
          [v213 addObjectsFromArray:allObjects3];

          v79 = [v72 count];
          v326[3] += v79;
        }
      }
    }

    v80 = v214;
    v81 = [v220 count];
    v82 = [v215 count];
    if (v82)
    {
      if (v82 >= [v206 count])
      {
        LODWORD(v82) = 0;
      }

      else
      {
        v83 = v81;
        v84 = selfCopy->_loggingConnection;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
        {
          v85 = v326[3];
          *buf = 67109376;
          *v354 = v82;
          *&v354[4] = 1024;
          *&v354[6] = v85;
          _os_log_impl(&dword_22F0FC000, v84, OS_LOG_TYPE_INFO, "DurationEvaluation: Initiating second pass with %d clusters, already have %d items", buf, 0xEu);
        }

        v86 = v71;
        v87 = v216 - v326[3];
        v286[0] = MEMORY[0x277D85DD0];
        v286[1] = 3221225472;
        v286[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_213;
        v286[3] = &unk_27888A188;
        v88 = v208;
        v287 = v88;
        v288 = &v344;
        v290 = 0x3F847AE147AE147BLL;
        v289 = &v348;
        v89 = [v221 adaptiveElection:v215 identifiersOfEligibleItems:v224 maximumNumberOfItemsToElect:v87 debugInfo:v209 progressBlock:v286];
        v90 = [v89 count];
        v273[0] = MEMORY[0x277D85DD0];
        v273[1] = 3221225472;
        v273[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_2_214;
        v273[3] = &unk_27887FEE8;
        v282 = v88;
        v274 = v211;
        v283 = &v344;
        v285 = 0x3F847AE147AE147BLL;
        v284 = &v348;
        v91 = v89;
        v275 = v91;
        v276 = selfCopy;
        v277 = v212;
        v278 = v209;
        v279 = v214;
        v92 = v220;
        v280 = v92;
        v93 = v213;
        v281 = v93;
        dispatch_apply(v90, 0, v273);
        v220 = v93;

        v71 = v86;
        v94 = *(v349 + 24);
        if (v94 == 1)
        {
          v95 = MEMORY[0x277D86220];
          v96 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v354 = 430;
            *&v354[4] = 2080;
            *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        if (v94)
        {
          goto LABEL_272;
        }

        v81 = v83;
        LODWORD(v82) = 1;
        v80 = v214;
      }
    }

    if (useDurationBasedCuration)
    {
      if (v226)
      {
        v97 = CFAbsoluteTimeGetCurrent();
        if (v97 - v345[3] >= 0.01)
        {
          v345[3] = v97;
          v272 = 0;
          (*(v208 + 2))(v208, &v272, 0.5);
          v98 = *(v349 + 24) | v272;
          *(v349 + 24) = v98;
          if (v98)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v354 = 440;
              *&v354[4] = 2080;
              *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_272;
          }
        }
      }

      v223 = v82;
      v210 = v81;
      defaultItemSortDescriptors3 = [(PGCurator *)selfCopy defaultItemSortDescriptors];
      v108 = [v220 sortedArrayUsingDescriptors:defaultItemSortDescriptors3];

      v270 = 0u;
      v271 = 0u;
      v268 = 0u;
      v269 = 0u;
      v109 = v108;
      v110 = [v109 countByEnumeratingWithState:&v268 objects:v359 count:16];
      v218 = v59;
      v111 = v26;
      v112 = 0;
      v113 = 0;
      v114 = 0;
      if (v110)
      {
        v115 = *v269;
        v116 = *MEMORY[0x277D3C768];
        do
        {
          for (k = 0; k != v110; ++k)
          {
            if (*v269 != v115)
            {
              objc_enumerationMutation(v109);
            }

            v118 = *(*(&v268 + 1) + 8 * k);
            [v118 clsContentScore];
            if (v119 >= v116)
            {
              ++v114;
              if ([v118 isVideo])
              {
                ++v112;
              }

              else
              {
                ++v113;
              }
            }
          }

          v110 = [v109 countByEnumeratingWithState:&v268 objects:v359 count:16];
        }

        while (v110);
      }

      v59 = v218;
      v26 = v111;
      v120 = selfCopy->_loggingConnection;
      if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        *v354 = v114;
        *&v354[8] = 2048;
        *&v354[10] = v113;
        *&v354[18] = 2048;
        *&v354[20] = v112;
        _os_log_impl(&dword_22F0FC000, v120, OS_LOG_TYPE_INFO, "DurationEvaluation: elected %lu items, %lu photos, %lu videos", buf, 0x20u);
      }

      v121 = selfCopy->_loggingConnection;
      if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
      {
        v122 = [sharedItems count];
        if (v223)
        {
          v123 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d after second pass", -[NSObject count](v109, "count")];
        }

        else
        {
          v123 = @"no second pass";
        }

        *buf = 67109890;
        *v354 = v122;
        *&v354[4] = 1024;
        *&v354[6] = v216;
        *&v354[10] = 1024;
        *&v354[12] = v210;
        *&v354[16] = 2112;
        *&v354[18] = v123;
        _os_log_impl(&dword_22F0FC000, v121, OS_LOG_TYPE_INFO, "DurationEvaluation: %d total assets, was aiming for %d elected assets, got %d after first pass, %@", buf, 0x1Eu);
        if (v223)
        {
        }
      }

      minimumNumberOfItems = [v214 minimumNumberOfItems];
      [(PGCurator *)selfCopy evaluatedDurationWithItems:v109 options:v214];
      v141 = v140;
      [(PGCurator *)selfCopy maximumDurationWithItems:v109 options:v214];
      v143 = v142;
      [v214 minimumDuration];
      v145 = v144;
      v147 = fmax(v143, 0.0) < v144 || v114 < minimumNumberOfItems;
      v148 = @"passed";
      if (v147)
      {
        v148 = @"didn't pass";
      }

      v149 = v148;
      v150 = selfCopy->_loggingConnection;
      if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
      {
        [v214 targetDuration];
        *buf = 134219266;
        *v354 = v141;
        *&v354[8] = 2048;
        *&v354[10] = v143;
        *&v354[18] = 2112;
        *&v354[20] = v149;
        *&v354[28] = 2048;
        *v355 = v145;
        *&v355[8] = 2048;
        v356 = v151;
        v357 = 1024;
        v358 = minimumNumberOfItems;
        _os_log_impl(&dword_22F0FC000, v150, OS_LOG_TYPE_INFO, "DurationEvaluation: %.2f sec. (max %.2f sec.), %@ constraint [%.2f, %.2f, %d items]", buf, 0x3Au);
      }

      if (v147 && [v214 failIfMinimumDurationNotReached])
      {

        v109 = MEMORY[0x277CBEBF8];
      }

LABEL_266:

      if (!v226 || (v201 = CFAbsoluteTimeGetCurrent(), v201 - v345[3] < 0.01) || (v345[3] = v201, v272 = 0, (*(v208 + 2))(v208, &v272, 1.0), v202 = *(v349 + 24) | v272, *(v349 + 24) = v202, (v202 & 1) == 0))
      {
        v15 = v109;

        goto LABEL_274;
      }

      v203 = MEMORY[0x277D86220];
      v204 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v203, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v354 = 649;
        *&v354[4] = 2080;
        *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_272;
    }

    if (duration == 20 || duration == 2)
    {
      universalStartDate2 = [feederCopy universalStartDate];
      universalEndDate2 = [feederCopy universalEndDate];
      [universalEndDate2 timeIntervalSinceDate:universalStartDate2];
      v102 = v101;
      [v314[5] timeIntervalSinceDate:v320[5]];
      v104 = v103;
      if (v226)
      {
        v105 = CFAbsoluteTimeGetCurrent();
        if (v105 - v345[3] >= 0.01)
        {
          v345[3] = v105;
          v272 = 0;
          (*(v208 + 2))(v208, &v272, 0.5);
          v106 = *(v349 + 24) | v272;
          *(v349 + 24) = v106;
          if (v106)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v354 = 487;
              *&v354[4] = 2080;
              *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v15 = MEMORY[0x277CBEBF8];
LABEL_191:

LABEL_274:
            _Block_object_dispose(&v313, 8);

            _Block_object_dispose(&v319, 8);
            _Block_object_dispose(&v325, 8);

            goto LABEL_275;
          }
        }
      }

      if (v104 <= v102 * 0.05)
      {
        [v209 resetWithReason:@"All clustered items span insufficient"];
        v132 = [v80 copy];
        v133 = v132;
        if (duration == 2)
        {
          v134 = 4;
        }

        else
        {
          v134 = 21;
        }

        [v132 setDuration:v134];
        v263[0] = MEMORY[0x277D85DD0];
        v263[1] = 3221225472;
        v263[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_232;
        v263[3] = &unk_27888A188;
        v264 = v208;
        v265 = &v344;
        v267 = 0x3F847AE147AE147BLL;
        v266 = &v348;
        v135 = [(PGCurator *)selfCopy bestItemsForFeeder:feederCopy options:v133 debugInfo:v209 progressBlock:v263];
        v136 = v135;
        if (*(v349 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v354 = 497;
            *&v354[4] = 2080;
            *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v15 = MEMORY[0x277CBEBF8];
        }

        else
        {
          v15 = v135;
        }

        goto LABEL_191;
      }

      v80 = v214;
    }

    if (v71)
    {
      v124 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v261 = 0u;
      v262 = 0u;
      v259 = 0u;
      v260 = 0u;
      v125 = sharedItems;
      v126 = [v125 countByEnumeratingWithState:&v259 objects:v352 count:16];
      if (v126)
      {
        v127 = *v260;
        do
        {
          for (m = 0; m != v126; ++m)
          {
            if (*v260 != v127)
            {
              objc_enumerationMutation(v125);
            }

            clsPersonAndPetLocalIdentifiers = [*(*(&v259 + 1) + 8 * m) clsPersonAndPetLocalIdentifiers];
            [v124 addObjectsFromArray:clsPersonAndPetLocalIdentifiers];
          }

          v126 = [v125 countByEnumeratingWithState:&v259 objects:v352 count:16];
        }

        while (v126);
      }

      if (v226)
      {
        v130 = CFAbsoluteTimeGetCurrent();
        if (v130 - v345[3] >= 0.01)
        {
          v345[3] = v130;
          v272 = 0;
          (*(v208 + 2))(v208, &v272, 0.5);
          v131 = *(v349 + 24) | v272;
          *(v349 + 24) = v131;
          if (v131)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v354 = 512;
              *&v354[4] = 2080;
              *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_272;
          }
        }
      }

      v254[0] = MEMORY[0x277D85DD0];
      v254[1] = 3221225472;
      v254[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_233;
      v254[3] = &unk_27888A188;
      v255 = v208;
      v256 = &v344;
      v258 = 0x3F847AE147AE147BLL;
      v257 = &v348;
      [(PGCurator *)selfCopy completeItems:v220 withItems:v125 forPersonLocalIdentifiers:v124 options:v214 nonRemovableItems:0 debugInfo:v209 progressBlock:v254];
      if (v349[3])
      {
        v137 = MEMORY[0x277D86220];
        v138 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v354 = 518;
          *&v354[4] = 2080;
          *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_272;
      }

      v80 = v214;
    }

    if (v226)
    {
      v152 = CFAbsoluteTimeGetCurrent();
      if (v152 - v345[3] >= 0.01)
      {
        v345[3] = v152;
        v272 = 0;
        (*(v208 + 2))(v208, &v272, 0.5);
        v153 = *(v349 + 24) | v272;
        *(v349 + 24) = v153;
        if (v153)
        {
          v154 = MEMORY[0x277D86220];
          v155 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v354 = 521;
            *&v354[4] = 2080;
            *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_272;
        }
      }
    }

    v156 = [v220 count];
    v157 = v216 - v156;
    if (v216 != v156)
    {
      v249[0] = MEMORY[0x277D85DD0];
      v249[1] = 3221225472;
      v249[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_234;
      v249[3] = &unk_27888A188;
      v250 = v208;
      v251 = &v344;
      v252 = &v348;
      v253 = 0x3F847AE147AE147BLL;
      [(PGCurator *)selfCopy completeItems:v220 withFavoriteItemsFromItems:sharedItems upToNumberOfItems:v157 debugInfo:v209 progressBlock:v249];

      v80 = v214;
    }

    if (v226)
    {
      v158 = CFAbsoluteTimeGetCurrent();
      if (v158 - v345[3] >= 0.01)
      {
        v345[3] = v158;
        v272 = 0;
        (*(v208 + 2))(v208, &v272, 0.5);
        v159 = *(v349 + 24) | v272;
        *(v349 + 24) = v159;
        if (v159)
        {
          v160 = MEMORY[0x277D86220];
          v161 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v160, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v354 = 531;
            *&v354[4] = 2080;
            *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_206:

LABEL_272:
          v15 = MEMORY[0x277CBEBF8];
          goto LABEL_274;
        }
      }
    }

    [(PGCurator *)selfCopy lastPassToCompleteItems:v220 fromFeeder:feederCopy options:v80 maximumNumberOfItems:v216 debugInfo:v209];
    if (v226)
    {
      v162 = CFAbsoluteTimeGetCurrent();
      if (v162 - v345[3] >= 0.01)
      {
        v345[3] = v162;
        v272 = 0;
        (*(v208 + 2))(v208, &v272, 0.5);
        v163 = *(v349 + 24) | v272;
        *(v349 + 24) = v163;
        if (v163)
        {
          v164 = MEMORY[0x277D86220];
          v165 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v164, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v354 = 535;
            *&v354[4] = 2080;
            *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_206;
        }
      }
    }

    v244[0] = MEMORY[0x277D85DD0];
    v244[1] = 3221225472;
    v244[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_235;
    v244[3] = &unk_27888A188;
    v166 = v208;
    v245 = v166;
    v246 = &v344;
    v247 = &v348;
    v248 = 0x3F847AE147AE147BLL;
    v167 = [(PGCurator *)selfCopy deduplicatedItems:v220 options:v80 debugInfo:v209 progressBlock:v244];
    v168 = v167;
    if (*(v349 + 24) == 1)
    {
      v109 = MEMORY[0x277D86220];
      v169 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v354 = 540;
        *&v354[4] = 2080;
        *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
        _os_log_impl(&dword_22F0FC000, v109, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_216;
    }

    v170 = [v167 count];
    if (v170 > v216)
    {
      v171 = v168;
      v172 = [objc_opt_class() numberOfItemsToShaveOffWithNumberOfItems:v170 maximumNumberOfItems:v216 options:v80];
      if (v172)
      {
        v173 = [(PGCurator *)selfCopy shaveItems:v171 downToNumberOfItems:v170 - v172 options:v80 debugInfo:0 progressBlock:&__block_literal_global_10268];
        if (v209)
        {
          v174 = [MEMORY[0x277CBEB58] setWithArray:v171];
          v175 = [MEMORY[0x277CBEB98] setWithArray:v173];
          [v174 minusSet:v175];

          [v209 setState:2 ofItems:v174 withReason:@"Last minute shaving"];
        }

        v176 = v173;

        v177 = selfCopy->_loggingConnection;
        if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
        {
          v178 = [v176 count];
          *buf = 134217984;
          *v354 = v178;
          _os_log_impl(&dword_22F0FC000, v177, OS_LOG_TYPE_INFO, "Shaved down to %lu items", buf, 0xCu);
        }
      }

      else
      {
        v176 = v171;
      }

      goto LABEL_264;
    }

    v109 = 0;
    v179 = 0;
    if (duration > 19)
    {
      if (duration == 21)
      {
        goto LABEL_238;
      }

      if (duration != 20)
      {
        goto LABEL_239;
      }
    }

    else if (duration != 2)
    {
      if (duration != 4)
      {
        goto LABEL_239;
      }

      goto LABEL_238;
    }

    v180 = [v168 count];
    v181 = [PGCurationManager minimumNumberOfItemsForDuration:duration withMaximumNumberOfItems:v216];
    if (v180 < v181)
    {
      v181 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not enough best items for Short curation, %lu for a minimum of %lu, switching to Complete Short", v180, v181];
      [v209 resetWithReason:v181];
      v183 = [v214 copy];
      v184 = v183;
      if (duration == 2)
      {
        v185 = 4;
      }

      else
      {
        v185 = 21;
      }

      [v183 setDuration:v185];
      v239[0] = MEMORY[0x277D85DD0];
      v239[1] = 3221225472;
      v239[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_243;
      v239[3] = &unk_27888A188;
      v240 = v166;
      v241 = &v344;
      v242 = &v348;
      v243 = 0x3F847AE147AE147BLL;
      v109 = [(PGCurator *)selfCopy bestItemsForFeeder:feederCopy options:v184 debugInfo:v209 progressBlock:v239];
      if (*(v349 + 24) == 1)
      {
        v186 = MEMORY[0x277D86220];
        v187 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v186, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v354 = 607;
          *&v354[4] = 2080;
          *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_216;
      }

      v179 = 0;
LABEL_239:
      if (v226)
      {
        v188 = CFAbsoluteTimeGetCurrent();
        if (v188 - v345[3] >= 0.01)
        {
          v345[3] = v188;
          v272 = 0;
          (v166->data)(v166, &v272, 0.5);
          v189 = *(v349 + 24) | v272;
          *(v349 + 24) = v189;
          if (v189)
          {
            v190 = MEMORY[0x277D86220];
            v191 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v190, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v354 = 615;
              *&v354[4] = 2080;
              *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_216;
          }
        }
      }

      if (v179 && (v192 = [v168 count], v192 < v222) && v192 + 2 >= v222)
      {
        v222 = [MEMORY[0x277CCACA8] stringWithFormat:@"Almost all items included in curation (%lu out of %lu), falling back to beautification", v192, v222];
        [v209 resetWithReason:v222];
        v234[0] = MEMORY[0x277D85DD0];
        v234[1] = 3221225472;
        v234[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_247;
        v234[3] = &unk_27888A188;
        v235 = v166;
        v236 = &v344;
        v237 = &v348;
        v238 = 0x3F847AE147AE147BLL;
        v176 = [v212 performWithItems:sharedItems maximumNumberOfItemsToChoose:v216 debugInfo:v209 progressBlock:v234];

        if (*(v349 + 24) == 1)
        {
          v194 = MEMORY[0x277D86220];
          v195 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v194, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v354 = 632;
            *&v354[4] = 2080;
            *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_259;
        }
      }

      else
      {
        v176 = v168;
      }

      if (!v226 || (v196 = CFAbsoluteTimeGetCurrent(), v196 - v345[3] < 0.01) || (v345[3] = v196, v272 = 0, (v166->data)(v166, &v272, 0.5), v197 = *(v349 + 24) | v272, *(v349 + 24) = v197, (v197 & 1) == 0))
      {
        if (v109)
        {
LABEL_265:

          v149 = v245;
          goto LABEL_266;
        }

LABEL_264:
        defaultItemSortDescriptors4 = [(PGCurator *)selfCopy defaultItemSortDescriptors];
        v109 = [v176 sortedArrayUsingDescriptors:defaultItemSortDescriptors4];

        goto LABEL_265;
      }

      v198 = MEMORY[0x277D86220];
      v199 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v198, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v354 = 636;
        *&v354[4] = 2080;
        *&v354[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurator.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_259:
      v168 = v176;
LABEL_216:

      goto LABEL_272;
    }

LABEL_238:
    v109 = 0;
    v179 = 1;
    goto LABEL_239;
  }

  v15 = MEMORY[0x277CBEBF8];
LABEL_278:

  objc_autoreleasePoolPop(context);
  v10 = v226;
LABEL_279:
  _Block_object_dispose(&v344, 8);
  _Block_object_dispose(&v348, 8);

  return v15;
}

uint64_t __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 clsIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_210(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = *(a1 + 104);
  if (v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [*(a1 + 40) lock];
    v6 = *(*(a1 + 112) + 8);
    if (Current - *(v6 + 24) >= *(a1 + 152))
    {
      *(v6 + 24) = Current;
      v51 = 0;
      (*(*(a1 + 104) + 16))(0.5);
      *(*(*(a1 + 120) + 8) + 24) = *(*(*(a1 + 120) + 8) + 24);
      if (*(*(*(a1 + 120) + 8) + 24) == 1)
      {
        [*(a1 + 40) unlock];
        goto LABEL_30;
      }
    }

    [*(a1 + 40) unlock];
    v4 = *(a1 + 104);
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_2_211;
  v46[3] = &unk_27887FE98;
  v48 = v4;
  v47 = *(a1 + 40);
  v50 = *(a1 + 152);
  v49 = *(a1 + 112);
  v10 = [v7 summarizedItemsFromCluster:v3 withBeautifier:v8 debugInfo:v9 progressBlock:v46];
  [*(a1 + 40) lock];
  LOBYTE(v7) = *(*(*(a1 + 120) + 8) + 24);
  [*(a1 + 40) unlock];
  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v12 = *(a1 + 48);
    v14 = *(a1 + 64);
    v13 = *(a1 + 72);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_3;
    v42[3] = &unk_27888A188;
    v43 = *(a1 + 104);
    v45 = *(a1 + 152);
    v44 = *(a1 + 112);
    v11 = [v12 deduplicatedItems:v10 options:v13 debugInfo:v14 progressBlock:v42];

    [*(a1 + 40) lock];
    LOBYTE(v13) = *(*(*(a1 + 120) + 8) + 24);
    [*(a1 + 40) unlock];
    if ((v13 & 1) == 0)
    {
      v15 = *(a1 + 80);
      objc_sync_enter(v15);
      v16 = [v3 cluster];
      v17 = [v16 objects];

      if (*(a1 + 160) == 1)
      {
        v18 = [v3 numberOfItemsToElect];
        if ([v11 count] < v18 || objc_msgSend(v17, "count") <= v18)
        {
          *(*(*(a1 + 128) + 8) + 24) += [v11 count];
          [*(a1 + 96) addObjectsFromArray:v11];
        }

        else
        {
          v19 = *(a1 + 88);
          v20 = [v3 cluster];
          [v19 addObject:v20];
        }
      }

      [*(a1 + 80) addObjectsFromArray:v11];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v21 = v17;
      v22 = [v21 countByEnumeratingWithState:&v38 objects:v52 count:16];
      if (v22)
      {
        v23 = *v39;
        do
        {
          v24 = 0;
          do
          {
            if (*v39 != v23)
            {
              objc_enumerationMutation(v21);
            }

            v25 = [*(*(&v38 + 1) + 8 * v24) cls_universalDate];
            v26 = *(*(a1 + 136) + 8);
            v27 = *(v26 + 40);
            if (v27)
            {
              v28 = [v27 earlierDate:v25];
              v29 = *(*(a1 + 136) + 8);
              v30 = *(v29 + 40);
              *(v29 + 40) = v28;
            }

            else
            {
              v31 = v25;
              v30 = *(v26 + 40);
              *(v26 + 40) = v31;
            }

            v32 = *(*(a1 + 144) + 8);
            v33 = *(v32 + 40);
            if (v33)
            {
              v34 = [v33 laterDate:v25];
              v35 = *(*(a1 + 144) + 8);
              v36 = *(v35 + 40);
              *(v35 + 40) = v34;
            }

            else
            {
              v37 = v25;
              v36 = *(v32 + 40);
              *(v32 + 40) = v37;
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [v21 countByEnumeratingWithState:&v38 objects:v52 count:16];
        }

        while (v22);
      }

      objc_sync_exit(v15);
    }
  }

LABEL_30:
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_213(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_2_214(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96))
  {
    Current = CFAbsoluteTimeGetCurrent();
    [*(a1 + 32) lock];
    v5 = *(*(a1 + 104) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 120))
    {
      *(v5 + 24) = Current;
      v29 = 0;
      (*(*(a1 + 96) + 16))(0.5);
      *(*(*(a1 + 112) + 8) + 24) = *(*(*(a1 + 112) + 8) + 24);
      if (*(*(*(a1 + 112) + 8) + 24) == 1)
      {
        [*(a1 + 32) unlock];
        return;
      }
    }

    [*(a1 + 32) unlock];
  }

  v6 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_3_215;
  v24[3] = &unk_27887FE98;
  v26 = *(a1 + 96);
  v25 = *(a1 + 32);
  v28 = *(a1 + 120);
  v27 = *(a1 + 104);
  v10 = [v7 summarizedItemsFromCluster:v6 withBeautifier:v8 debugInfo:v9 progressBlock:v24];
  [*(a1 + 32) lock];
  LOBYTE(v7) = *(*(*(a1 + 112) + 8) + 24);
  [*(a1 + 32) unlock];
  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v12 = *(a1 + 48);
    v14 = *(a1 + 64);
    v13 = *(a1 + 72);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_4;
    v20 = &unk_27888A188;
    v21 = *(a1 + 96);
    v23 = *(a1 + 120);
    v22 = *(a1 + 104);
    v11 = [v12 deduplicatedItems:v10 options:v13 debugInfo:v14 progressBlock:&v17];

    [*(a1 + 32) lock];
    v15 = *(*(*(a1 + 112) + 8) + 24);
    [*(a1 + 32) unlock];
    if ((v15 & 1) == 0)
    {
      v16 = *(a1 + 80);
      objc_sync_enter(v16);
      [*(a1 + 88) addObjectsFromArray:v11];
      objc_sync_exit(v16);
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_232(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_233(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_234(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_235(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_243(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_247(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

double *__64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_3_215(double *result, _BYTE *a2, double a3)
{
  if (*(result + 5))
  {
    v5 = result;
    Current = CFAbsoluteTimeGetCurrent();
    [*(v5 + 4) lock];
    v7 = *(*(v5 + 6) + 8);
    if (Current - *(v7 + 24) >= v5[8])
    {
      *(v7 + 24) = Current;
      (*(*(v5 + 5) + 16))(a3 * 0.0 + 0.5);
      *(*(*(v5 + 7) + 8) + 24) = *(*(*(v5 + 7) + 8) + 24);
      if (*(*(*(v5 + 7) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }

    return [*(v5 + 4) unlock];
  }

  return result;
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_4(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

double *__64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_2_211(double *result, _BYTE *a2, double a3)
{
  if (*(result + 5))
  {
    v5 = result;
    Current = CFAbsoluteTimeGetCurrent();
    [*(v5 + 4) lock];
    v7 = *(*(v5 + 6) + 8);
    if (Current - *(v7 + 24) >= v5[8])
    {
      *(v7 + 24) = Current;
      (*(*(v5 + 5) + 16))(a3 * 0.0 + 0.5);
      *(*(*(v5 + 7) + 8) + 24) = *(*(*(v5 + 7) + 8) + 24);
      if (*(*(*(v5 + 7) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }

    return [*(v5 + 4) unlock];
  }

  return result;
}

void __64__PGCurator_bestItemsForFeeder_options_debugInfo_progressBlock___block_invoke_3(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)summarizedItemsFromCluster:(id)cluster withBeautifier:(id)beautifier debugInfo:(id)info progressBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  infoCopy = info;
  beautifierCopy = beautifier;
  clusterCopy = cluster;
  numberOfItemsToElect = [clusterCopy numberOfItemsToElect];
  cluster = [clusterCopy cluster];
  objects = [cluster objects];

  cluster2 = [clusterCopy cluster];

  v18 = [infoCopy debugInfoForCluster:cluster2];

  v19 = [beautifierCopy performWithItems:objects maximumNumberOfItemsToChoose:numberOfItemsToElect debugInfo:v18 progressBlock:blockCopy];

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    v22 = loggingConnection;
    v23 = 134218496;
    v24 = [objects count];
    v25 = 2048;
    v26 = numberOfItemsToElect;
    v27 = 2048;
    v28 = [v19 count];
    _os_log_debug_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_DEBUG, "Curated Items: summarize cluster of %lu items, expected to elect %lu, got %lu", &v23, 0x20u);
  }

  return v19;
}

- (double)maximumDurationWithItems:(id)items options:(id)options
{
  v20 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 isVideo])
        {
          [v12 clsDuration];
        }

        else if ([v12 clsIsInterestingLivePhoto])
        {
          [optionsCopy defaultDurationOfLivePhoto];
        }

        else
        {
          [optionsCopy defaultDurationOfStillPhoto];
        }

        v10 = v10 + v13;
      }

      v8 = [itemsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)evaluatedDurationWithItems:(id)items options:(id)options
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 isVideo])
        {
          [optionsCopy defaultDurationOfVideo];
          v14 = v13;
          [v12 clsDuration];
          if (v14 < v15)
          {
            v15 = v14;
          }
        }

        else if ([v12 clsIsInterestingLivePhoto])
        {
          [optionsCopy defaultDurationOfLivePhoto];
        }

        else
        {
          [optionsCopy defaultDurationOfStillPhoto];
        }

        v10 = v10 + v15;
      }

      v8 = [itemsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (unint64_t)targetDurationBasedNumberOfItemsToElectFromItems:(id)items options:(id)options
{
  v53 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  uuidsOfEligibleAssets = [optionsCopy uuidsOfEligibleAssets];
  [optionsCopy targetDuration];
  v10 = v9;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = itemsCopy;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v35 = optionsCopy;
    v14 = 0;
    v36 = 0;
    v37 = 0;
    v15 = 0;
    v16 = *v39;
    v17 = *MEMORY[0x277D3C768];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v38 + 1) + 8 * i);
        if (uuidsOfEligibleAssets)
        {
          clsIdentifier = [*(*(&v38 + 1) + 8 * i) clsIdentifier];
          v21 = [uuidsOfEligibleAssets containsObject:clsIdentifier];

          if (!v21)
          {
            continue;
          }
        }

        [v19 clsContentScore];
        if (v22 >= v17)
        {
          ++v15;
          if ([v19 isVideo])
          {
            ++v14;
          }

          else if ([v19 clsIsInterestingLivePhoto])
          {
            ++v37;
          }

          else
          {
            ++v36;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v13);

    self = selfCopy;
    optionsCopy = v35;
    if (v15)
    {
      v23 = v10 * v15;
      [v35 defaultDurationOfStillPhoto];
      v25 = v24;
      [v35 defaultDurationOfLivePhoto];
      v27 = v26 * v37 + v25 * v36;
      [v35 defaultDurationOfVideo];
      v29 = vcvtad_u64_f64(v23 / (v27 + v28 * v14));
      if (v15 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v15;
      }

      loggingConnection = selfCopy->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 134219008;
        v43 = v30;
        v44 = 2048;
        v45 = v15;
        v46 = 2048;
        v47 = v36;
        v48 = 2048;
        v49 = v37;
        v50 = 2048;
        v51 = v14;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "targetNumberOfItemsToElect = %lu for %lu eligible items, %lu still photos, %lu live photos, %lu videos", buf, 0x34u);
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  v32 = self->_loggingConnection;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "targetNumberOfItemsToElect = 0 because all items are non-eligible", buf, 2u);
  }

  v30 = 0;
LABEL_26:

  return v30;
}

- (id)focusedItemsInItems:(id)items withOptions:(id)options
{
  itemsCopy = items;
  optionsCopy = options;
  personLocalIdentifiersToFocus = [optionsCopy personLocalIdentifiersToFocus];
  focusOnInterestingItems = [optionsCopy focusOnInterestingItems];

  v9 = [personLocalIdentifiersToFocus count];
  if ((focusOnInterestingItems & 1) != 0 || v9)
  {
    v11 = MEMORY[0x277CCAC30];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __45__PGCurator_focusedItemsInItems_withOptions___block_invoke;
    v17 = &unk_27887FE48;
    v19 = focusOnInterestingItems;
    v20 = v9 != 0;
    v18 = personLocalIdentifiersToFocus;
    v12 = [v11 predicateWithBlock:&v14];
    v10 = [itemsCopy filteredArrayUsingPredicate:{v12, v14, v15, v16, v17}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __45__PGCurator_focusedItemsInItems_withOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40) == 1)
  {
    [v5 clsContentScore];
    if (v7 < *MEMORY[0x277D3C770] && ([v5 clsIsInhabited] & 1) == 0 && !objc_msgSend(v5, "clsHasInterestingScenes"))
    {
      v9 = 0;
      goto LABEL_10;
    }

    v8 = [v5 clsIsUtility] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = (*(a1 + 41) ^ 1) & v8;
  if (((*(a1 + 41) ^ 1) & 1) == 0 && v8)
  {
    v10 = *(a1 + 32);
    v11 = MEMORY[0x277CBEB98];
    v12 = [v5 clsPersonAndPetLocalIdentifiers];
    v13 = [v11 setWithArray:v12];
    v9 = [v10 intersectsSet:v13];
  }

LABEL_10:

  return v9 & 1;
}

- (PGCurator)init
{
  v5.receiver = self;
  v5.super_class = PGCurator;
  v2 = [(PGCurator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_loggingConnection, MEMORY[0x277D86220]);
  }

  return v3;
}

+ (unint64_t)numberOfItemsToShaveOffWithNumberOfItems:(unint64_t)items maximumNumberOfItems:(unint64_t)ofItems options:(id)options
{
  if (items >= ofItems)
  {
    return items - ofItems;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)maximumNumberOfItemsToElectWithTotalNumberOfItems:(unint64_t)items spanningNumberOfDays:(double)days options:(id)options
{
  duration = [options duration];

  return [PGCurationManager maximumNumberOfItemsForDuration:duration withTotalNumberOfItems:items spanningNumberOfDays:days];
}

@end