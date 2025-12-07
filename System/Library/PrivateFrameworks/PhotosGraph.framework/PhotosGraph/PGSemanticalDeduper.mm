@interface PGSemanticalDeduper
- (id)deduplicatedItemsWithItems:(id)items debugInfo:(id)info progressBlock:(id)block;
- (id)itemsNeedingSceneprintInTimeClusters:(id)clusters;
- (id)sceneprintByItemIdentifierWithItems:(id)items;
@end

@implementation PGSemanticalDeduper

- (id)itemsNeedingSceneprintInTimeClusters:(id)clusters
{
  v19 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = clustersCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objects = [*(*(&v14 + 1) + 8 * i) objects];
        if ([objects count] >= 2)
        {
          v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_45];
          v12 = [objects filteredArrayUsingPredicate:v11];

          if ([v12 count] >= 2)
          {
            [v4 addObjectsFromArray:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)deduplicatedItemsWithItems:(id)items debugInfo:(id)info progressBlock:(id)block
{
  v148 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  infoCopy = info;
  blockCopy = block;
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v139 = 0;
  v132 = 0;
  v133 = &v132;
  v134 = 0x2020000000;
  v135 = 0;
  v80 = _Block_copy(blockCopy);
  if (v80 && (v7 = CFAbsoluteTimeGetCurrent(), v7 - v133[3] >= 0.01) && (v133[3] = v7, v131 = 0, (*(v80 + 2))(v80, &v131, 0.0), v8 = *(v137 + 24) | v131, *(v137 + 24) = v8, (v8 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v142 = 54;
      *&v142[4] = 2080;
      *&v142[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v85 = [itemsCopy count];
    v10 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:&__block_literal_global_38698];
    [v10 setMaximumDistance:90.0];
    [v10 setMinimumNumberOfObjects:1];
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_2;
    v126[3] = &unk_27888A188;
    v78 = v80;
    v127 = v78;
    v128 = &v132;
    v130 = 0x3F847AE147AE147BLL;
    v129 = &v136;
    v72 = v10;
    v75 = [v10 performWithDataset:itemsCopy progressBlock:v126];
    if (*(v137 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v142 = 68;
        *&v142[4] = 2080;
        *&v142[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v71 = [(PGSemanticalDeduper *)self itemsNeedingSceneprintInTimeClusters:v75];
      v11 = [(PGSemanticalDeduper *)self sceneprintByItemIdentifierWithItems:?];
      v12 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:objc_opt_class()];
      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_31;
      v124[3] = &unk_278883F90;
      v70 = v11;
      v125 = v70;
      [v12 setSceneprintGetterBlock:v124];
      v84 = v12;
      if (v80 && (v13 = CFAbsoluteTimeGetCurrent(), v13 - v133[3] >= 0.01) && (v133[3] = v13, v131 = 0, (*(v78 + 2))(v78, &v131, 0.2), v14 = *(v137 + 24) | v131, *(v137 + 24) = v14, (v14 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v142 = 80;
          *&v142[4] = 2080;
          *&v142[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v9 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v15 = [v75 count];
        v92 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        obj = v75;
        v16 = [obj countByEnumeratingWithState:&v120 objects:v147 count:16];
        if (v16)
        {
          v17 = 0.8 / v15;
          v79 = *v121;
          v18 = 0.2;
          do
          {
            v83 = 0;
            v77 = v16;
            do
            {
              if (*v121 != v79)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v120 + 1) + 8 * v83);
              v81 = objc_autoreleasePoolPush();
              objects = [v19 objects];
              v20 = [objects count];
              if (v20 >= 2)
              {
                v113[0] = MEMORY[0x277D85DD0];
                v113[1] = 3221225472;
                v113[2] = __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_34;
                v113[3] = &unk_278886858;
                v21 = v78;
                v114 = v21;
                v115 = &v132;
                v118 = v18;
                v119 = v17;
                v117 = 0x3F847AE147AE147BLL;
                v116 = &v136;
                v22 = [v84 stackSimilarItems:objects withSimilarity:2 timestampSupport:0 progressBlock:v113];
                v23 = MEMORY[0x277D86220];
                v24 = v22;
                if (*(v137 + 24) == 1)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *v142 = 97;
                    *&v142[4] = 2080;
                    *&v142[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
                    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  goto LABEL_97;
                }

                if (self->_usesAdaptiveSimilarStacking)
                {
                  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  v111 = 0u;
                  v112 = 0u;
                  v109 = 0u;
                  v110 = 0u;
                  v27 = v24;
                  v28 = [v27 countByEnumeratingWithState:&v109 objects:v146 count:16];
                  if (!v28)
                  {
                    goto LABEL_48;
                  }

                  v29 = *v110;
LABEL_31:
                  v30 = 0;
                  while (1)
                  {
                    if (*v110 != v29)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v31 = *(*(&v109 + 1) + 8 * v30);
                    v32 = [v31 count];
                    if (v32 >= 4 && 3 * v32 > v85)
                    {
                      v102[0] = MEMORY[0x277D85DD0];
                      v102[1] = 3221225472;
                      v102[2] = __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_35;
                      v102[3] = &unk_278886858;
                      v103 = v21;
                      v104 = &v132;
                      v107 = v18;
                      v108 = v17;
                      v106 = 0x3F847AE147AE147BLL;
                      v105 = &v136;
                      v34 = [v84 adaptiveStackSimilarItems:v31 progressBlock:v102];
                      v35 = v34;
                      if (*(v137 + 24) == 1)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                        {
                          *buf = 67109378;
                          *v142 = 111;
                          *&v142[4] = 2080;
                          *&v142[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
                          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                        }

LABEL_97:
LABEL_98:
                        v65 = 0;
                        goto LABEL_99;
                      }

                      if ([v34 count])
                      {
                        [v26 addObjectsFromArray:v35];
                        v36 = MEMORY[0x277D86220];
                        v37 = MEMORY[0x277D86220];
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                        {
                          v38 = [v35 count];
                          *buf = 134218240;
                          *v142 = v32;
                          *&v142[8] = 2048;
                          *&v142[10] = v38;
                          _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "Semantically deduping cluster of %lu items is too lossy, deduping at first split to %lu items", buf, 0x16u);
                        }
                      }

                      else
                      {
                        [v26 addObject:v31];
                      }
                    }

                    else
                    {
                      [v26 addObject:v31];
                    }

                    if (v28 == ++v30)
                    {
                      v28 = [v27 countByEnumeratingWithState:&v109 objects:v146 count:16];
                      if (!v28)
                      {
LABEL_48:

                        goto LABEL_50;
                      }

                      goto LABEL_31;
                    }
                  }
                }

                v26 = v22;
LABEL_50:
                v100 = 0u;
                v101 = 0u;
                v98 = 0u;
                v99 = 0u;
                v88 = v26;
                v39 = [v88 countByEnumeratingWithState:&v98 objects:v145 count:16];
                if (!v39)
                {
                  goto LABEL_86;
                }

                v89 = *v99;
                while (2)
                {
                  v40 = 0;
                  v91 = v39;
LABEL_53:
                  if (*v99 != v89)
                  {
                    objc_enumerationMutation(v88);
                  }

                  v41 = *(*(&v98 + 1) + 8 * v40);
                  context = objc_autoreleasePoolPush();
                  v42 = [v41 count];
                  v43 = [(PGDeduper *)self requiredItemsInItems:v41];
                  v44 = [v43 count];
                  if (v44)
                  {
                    [v92 addObjectsFromArray:v43];
                    if (v42 > v44)
                    {
                      v45 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 134218498;
                        v46 = @"they are";
                        if (v44 == 1)
                        {
                          v46 = @"it is";
                        }

                        *v142 = v42;
                        *&v142[8] = 2048;
                        *&v142[10] = v44;
                        v143 = 2112;
                        v144 = v46;
                        _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_INFO, "Semantically deduped %lu items to %lu because %@ required", buf, 0x20u);
                      }

                      [infoCopy dedupItems:v41 toRequiredItems:v43 withDedupingType:2];
                    }

LABEL_84:

                    objc_autoreleasePoolPop(context);
                    if (++v40 == v91)
                    {
                      v39 = [v88 countByEnumeratingWithState:&v98 objects:v145 count:16];
                      if (!v39)
                      {
LABEL_86:

                        firstObject2 = v114;
LABEL_87:

                        goto LABEL_88;
                      }

                      continue;
                    }

                    goto LABEL_53;
                  }

                  break;
                }

                v47 = v92;
                if (v42 < 2)
                {
                  firstObject = [v41 firstObject];
                  if (firstObject)
                  {
                    goto LABEL_82;
                  }
                }

                else
                {
                  v96 = 0u;
                  v97 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v48 = v41;
                  v49 = [v48 countByEnumeratingWithState:&v94 objects:v140 count:16];
                  v86 = v42;
                  if (v49)
                  {
                    v50 = 0;
                    firstObject = 0;
                    v52 = *v95;
                    v53 = -1.79769313e308;
                    do
                    {
                      for (i = 0; i != v49; ++i)
                      {
                        if (*v95 != v52)
                        {
                          objc_enumerationMutation(v48);
                        }

                        v55 = *(*(&v94 + 1) + 8 * i);
                        [v55 clsContentScore];
                        v57 = v56;
                        isFavorite = [v55 isFavorite];
                        v59 = isFavorite;
                        if (!firstObject || v57 > v53 && ((v50 ^ 1 | isFavorite) & 1) != 0)
                        {
                          v60 = v55;

                          v50 = v59;
                          v53 = v57;
                          firstObject = v60;
                        }
                      }

                      v49 = [v48 countByEnumeratingWithState:&v94 objects:v140 count:16];
                    }

                    while (v49);
                  }

                  else
                  {
                    firstObject = 0;
                  }

                  v61 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 134217984;
                    *v142 = v86;
                    _os_log_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_INFO, "Semantically deduped %lu assets to 1", buf, 0xCu);
                  }

                  v47 = v92;
                  if (firstObject)
                  {
                    [infoCopy dedupItems:v48 toItem:firstObject withDedupingType:2];
LABEL_82:
                    [v47 addObject:firstObject];
                  }
                }

                goto LABEL_84;
              }

              if (v20 == 1)
              {
                firstObject2 = [objects firstObject];
                [v92 addObject:firstObject2];
                goto LABEL_87;
              }

LABEL_88:
              v18 = v17 + v18;
              if (v80)
              {
                Current = CFAbsoluteTimeGetCurrent();
                if (Current - v133[3] >= 0.01)
                {
                  v133[3] = Current;
                  v131 = 0;
                  (*(v78 + 2))(v78, &v131, v18);
                  v63 = MEMORY[0x277D86220];
                  v64 = *(v137 + 24) | v131;
                  *(v137 + 24) = v64;
                  if (v64)
                  {
                    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      *v142 = 197;
                      *&v142[4] = 2080;
                      *&v142[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
                      _os_log_impl(&dword_22F0FC000, v63, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

                    goto LABEL_98;
                  }
                }
              }

              v65 = 1;
LABEL_99:

              objc_autoreleasePoolPop(v81);
              if (!v65)
              {

                goto LABEL_109;
              }

              ++v83;
            }

            while (v83 != v77);
            v16 = [obj countByEnumeratingWithState:&v120 objects:v147 count:16];
          }

          while (v16);
        }

        if (v80 && (v66 = CFAbsoluteTimeGetCurrent(), v66 - v133[3] >= 0.01) && (v133[3] = v66, v131 = 0, (*(v78 + 2))(v78, &v131, 1.0), v67 = *(v137 + 24) | v131, *(v137 + 24) = v67, (v67 & 1) != 0))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v142 = 201;
            *&v142[4] = 2080;
            *&v142[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGSemanticalDeduper.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_109:
          v9 = MEMORY[0x277CBEBF8];
          v68 = v92;
        }

        else
        {
          v68 = v92;
          v9 = v92;
        }
      }
    }
  }

  _Block_object_dispose(&v132, 8);
  _Block_object_dispose(&v136, 8);

  return v9;
}

void __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

id __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_31(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 clsIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_34(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64) + *(a1 + 72) * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke_35(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64) + *(a1 + 72));
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

double __74__PGSemanticalDeduper_deduplicatedItemsWithItems_debugInfo_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 cls_universalDate];
  v6 = [v4 cls_universalDate];

  [v5 timeIntervalSinceDate:v6];
  v8 = fabs(v7);

  return v8;
}

- (id)sceneprintByItemIdentifierWithItems:(id)items
{
  v20 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        clsSceneprint = [v10 clsSceneprint];
        if (clsSceneprint)
        {
          clsIdentifier = [v10 clsIdentifier];
          [v4 setObject:clsSceneprint forKeyedSubscript:clsIdentifier];
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

@end