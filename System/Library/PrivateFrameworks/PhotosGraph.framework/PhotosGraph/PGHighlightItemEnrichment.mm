@interface PGHighlightItemEnrichment
- (PGHighlightItemEnrichment)initWithRule:(id)rule modelWriter:(id)writer;
- (void)_contextualKeyAssetForYearHighlightItemList:(id)list sharingFilter:(unsigned __int16)filter curationContext:(id)context contextualOptions:(id)options options:(id)a7 availableContextualRules:(id)rules progressBlock:(id)block;
- (void)contextualKeyAssetForYearHighlightItemLists:(id)lists withManager:(id)manager curationContext:(id)context options:(id)options progressBlock:(id)block;
- (void)enrichHighlightItemLists:(id)lists progressBlock:(id)block;
- (void)updateVisibilityStateForHighlightItemLists:(id)lists withManager:(id)manager progressBlock:(id)block;
@end

@implementation PGHighlightItemEnrichment

- (void)enrichHighlightItemLists:(id)lists progressBlock:(id)block
{
  v50 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  blockCopy = block;
  if ([listsCopy count])
  {
    v8 = 0.0;
    v37 = _Block_copy(blockCopy);
    if (v37)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current >= 0.01)
      {
        v42 = 0;
        v37[2](v37, &v42, 0.0);
        if (v42 == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v44 = 232;
            *&v44[4] = 2080;
            *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_54:

          goto LABEL_55;
        }

        v8 = Current;
      }
    }

    loggingConnection = [(PGHighlightItemEnrichmentRule *)self->_rule loggingConnection];
    modelWriter = [(PGHighlightItemEnrichment *)self modelWriter];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      v12 = loggingConnection;
      v13 = [listsCopy count];
      rule = self->_rule;
      *buf = 134218242;
      *v44 = v13;
      *&v44[8] = 2112;
      *&v44[10] = rule;
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_DEFAULT, "Enriching %ld time unit list using rule %@", buf, 0x16u);
    }

    v15 = [listsCopy count];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = listsCopy;
    obj = listsCopy;
    v16 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 1.0 / v15;
      v19 = *v39;
      v20 = 0.0;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          if ([modelWriter visibilityStateForHighlightItem:v22 sharingFilter:0])
          {
            v23 = objc_autoreleasePoolPush();
            v24 = [(PGHighlightItemEnrichmentRule *)self->_rule keyAssetForHighlightItemList:v22 sharingFilter:0];
            if (v24)
            {
              [v22 setKeyAssetPrivate:v24];
            }

            else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v44 = v22;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to enrich highlight %@: no private key asset found", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v23);
          }

          else
          {
            v24 = 0;
          }

          if ([modelWriter visibilityStateForHighlightItem:v22 sharingFilter:1])
          {
            v25 = objc_autoreleasePoolPush();
            v26 = [(PGHighlightItemEnrichmentRule *)self->_rule keyAssetForHighlightItemList:v22 sharingFilter:1];
            if (v26)
            {
              [v22 setKeyAssetShared:v26];
            }

            else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v44 = v22;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to enrich highlight %@: no shared key asset found", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v25);
          }

          else
          {
            v26 = 0;
          }

          if ([v22 sharingComposition] == 2)
          {
            if (v24 && v26)
            {
              v27 = [PGHighlightEnrichmentUtilities mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:v24 keyAssetShared:v26 shouldCompareHighlight:1];
            }

            else if (v24)
            {
              v27 = 1;
            }

            else
            {
              v27 = 2 * (v26 != 0);
            }
          }

          else
          {
            v27 = 0;
          }

          [v22 setMixedSharingCompositionKeyAssetRelationship:v27];
          v28 = objc_autoreleasePoolPush();
          [(PGHighlightItemEnrichmentRule *)self->_rule promotionScoreForHighlightItemList:v22];
          v30 = v29;
          [v22 setPromotionScore:?];
          objc_autoreleasePoolPop(v28);
          v31 = loggingConnection;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v33 = [0 count];
            *buf = 138413058;
            *v44 = v22;
            *&v44[8] = 2112;
            *&v44[10] = v24;
            v45 = 2048;
            v46 = v33;
            v47 = 2048;
            v48 = v30;
            _os_log_debug_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEBUG, "Enriched %@ with:\n\tKey asset: %@\n\tCurated assets count: %lu\n\tPromotion score: %.2f", buf, 0x2Au);
          }

          v20 = v18 + v20;
          if (v37)
          {
            v32 = CFAbsoluteTimeGetCurrent();
            if (v32 - v8 >= 0.01)
            {
              v42 = 0;
              v37[2](v37, &v42, v20);
              if (v42)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v44 = 314;
                  *&v44[4] = 2080;
                  *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                blockCopy = v34;
                listsCopy = v35;
                goto LABEL_53;
              }

              v8 = v32;
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    blockCopy = v34;
    listsCopy = v35;
    if (v37)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
      {
        v42 = 0;
        v37[2](v37, &v42, 1.0);
        if (v42)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v44 = 317;
            *&v44[4] = 2080;
            *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

LABEL_53:

    goto LABEL_54;
  }

LABEL_55:
}

- (void)_contextualKeyAssetForYearHighlightItemList:(id)list sharingFilter:(unsigned __int16)filter curationContext:(id)context contextualOptions:(id)options options:(id)a7 availableContextualRules:(id)rules progressBlock:(id)block
{
  filterCopy = filter;
  v102 = *MEMORY[0x277D85DE8];
  listCopy = list;
  contextCopy = context;
  optionsCopy = options;
  v48 = a7;
  rulesCopy = rules;
  blockCopy = block;
  v49 = rulesCopy;
  if ([rulesCopy count])
  {
    v46 = blockCopy;
    v90 = 0;
    v91 = &v90;
    v92 = 0x2020000000;
    v93 = 0;
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0;
    v52 = _Block_copy(blockCopy);
    if (v52)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v87[3] >= 0.01)
      {
        v87[3] = Current;
        LOBYTE(v78) = 0;
        v52[2](v52, &v78, 0.0);
        v18 = *(v91 + 24) | v78;
        *(v91 + 24) = v18;
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            buf = 0x9804000202;
            LOWORD(v98) = 2080;
            *(&v98 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
          }

LABEL_49:
          _Block_object_dispose(&v86, 8);
          _Block_object_dispose(&v90, 8);

          blockCopy = v46;
          goto LABEL_50;
        }
      }
    }

    buf = 0;
    *&v98 = &buf;
    *(&v98 + 1) = 0x3032000000;
    v99 = __Block_byref_object_copy__20170;
    v100 = __Block_byref_object_dispose__20171;
    v101 = 0;
    v85[0] = 0;
    v85[1] = v85;
    v85[2] = 0x2020000000;
    v85[3] = 0xFFEFFFFFFFFFFFFFLL;
    v84[0] = 0;
    v84[1] = v84;
    v84[2] = 0x2020000000;
    v84[3] = 0xFFEFFFFFFFFFFFFFLL;
    v78 = 0;
    v79 = &v78;
    v80 = 0x3032000000;
    v81 = __Block_byref_object_copy__20170;
    v82 = __Block_byref_object_dispose__20171;
    v83 = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__20170;
    v76 = __Block_byref_object_dispose__20171;
    v77 = 0;
    modelWriter = [(PGHighlightItemEnrichment *)self modelWriter];
    oslog = [(PGHighlightItemEnrichmentRule *)self->_rule loggingConnection];
    v20 = [rulesCopy count];
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    v68 = 0u;
    obj = rulesCopy;
    v21 = [obj countByEnumeratingWithState:&v68 objects:v96 count:16];
    if (!v21)
    {
LABEL_41:

LABEL_43:
      if (v52)
      {
        v43 = CFAbsoluteTimeGetCurrent();
        if (v43 - v87[3] >= 0.01)
        {
          v87[3] = v43;
          v56 = 0;
          (v52)[2](v52, &v56, 1.0);
          v44 = *(v91 + 24) | v56;
          *(v91 + 24) = v44;
          if ((v44 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v94 = 67109378;
            LODWORD(v95[0]) = 222;
            WORD2(v95[0]) = 2080;
            *(v95 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v94, 0x12u);
          }
        }
      }

LABEL_48:

      _Block_object_dispose(&v72, 8);
      _Block_object_dispose(&v78, 8);

      _Block_object_dispose(v84, 8);
      _Block_object_dispose(v85, 8);
      _Block_object_dispose(&buf, 8);

      goto LABEL_49;
    }

    v23 = 1.0 / v20;
    v51 = *v69;
    v24 = 0.0;
    *&v22 = 138412546;
    v45 = v22;
LABEL_9:
    v25 = 0;
    while (1)
    {
      if (*v69 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v68 + 1) + 8 * v25);
      v27 = objc_autoreleasePoolPush();
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __168__PGHighlightItemEnrichment__contextualKeyAssetForYearHighlightItemList_sharingFilter_curationContext_contextualOptions_options_availableContextualRules_progressBlock___block_invoke;
      v57[3] = &unk_278881480;
      v24 = v23 + v24;
      p_buf = &buf;
      v60 = v85;
      v61 = v84;
      v62 = &v78;
      v63 = &v72;
      v58 = v52;
      v64 = &v86;
      v67 = v24;
      v66 = 0x3F847AE147AE147BLL;
      v65 = &v90;
      [v26 enumerateContextualKeyAssetsForYearHighlight:listCopy sharingFilter:filterCopy withOptions:optionsCopy modelReader:modelWriter curationContext:contextCopy usingBlock:v57];
      if (*(v91 + 24) == 1)
      {
        v28 = 1;
        v29 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v94 = 67109378;
          LODWORD(v95[0]) = 184;
          WORD2(v95[0]) = 2080;
          *(v95 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
          _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v94, 0x12u);
        }

        v30 = 0;
        goto LABEL_34;
      }

      v31 = *(v98 + 40);
      if (v31)
      {
        break;
      }

      v28 = 0;
      v30 = 1;
LABEL_34:

      objc_autoreleasePoolPop(v27);
      if (!v30)
      {

        if ((v28 | 2) != 2)
        {
          goto LABEL_48;
        }

        goto LABEL_43;
      }

      if (v21 == ++v25)
      {
        v42 = [obj countByEnumeratingWithState:&v68 objects:v96 count:16];
        v21 = v42;
        if (v42)
        {
          goto LABEL_9;
        }

        goto LABEL_41;
      }
    }

    [modelWriter setContextualKeyAsset:v31 forHighlightItem:listCopy sharingFilter:filterCopy];
    [modelWriter setContextualKeyAsset:*(v98 + 40) forHighlightItem:v73[5] sharingFilter:filterCopy];
    [modelWriter setContextualKeyAsset:*(v98 + 40) forHighlightItem:v79[5] sharingFilter:filterCopy];
    v32 = [modelWriter visibilityStateForHighlightItem:v79[5] sharingFilter:filterCopy];
    if ([v79[5] kind] || (MEMORY[0x231902060](v32) & 1) != 0)
    {
      if ([v79[5] kind] != 3)
      {
LABEL_33:
        v30 = 0;
        v28 = 2;
        goto LABEL_34;
      }

      v33 = objc_autoreleasePoolPush();
      firstObject = [PGContextualRuleUtils dayHighlightContainingAsset:*(v98 + 40)];
      if (firstObject)
      {
        [modelWriter setContextualKeyAsset:*(v98 + 40) forHighlightItem:firstObject sharingFilter:filterCopy];
LABEL_32:

        objc_autoreleasePoolPop(v33);
        goto LABEL_33;
      }

      if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        firstObject = 0;
        goto LABEL_32;
      }

      v36 = v79[5];
      v37 = *(v98 + 40);
      v94 = v45;
      v95[0] = v36;
      LOWORD(v95[1]) = 2112;
      *(&v95[1] + 2) = v37;
      v38 = oslog;
      v39 = "Cannot find child highlight of day group %@ containing asset %@";
    }

    else
    {
      if ([v79[5] type] != 5 && objc_msgSend(v79[5], "type") != 6)
      {
        [modelWriter addVisibleHighlight:v79[5] inMonth:v73[5] withHighlightFilter:filterCopy];
        goto LABEL_33;
      }

      v33 = objc_autoreleasePoolPush();
      v35 = [MEMORY[0x277CD9958] fetchParentDayGroupHighlightForHighlight:v79[5] options:0];
      firstObject = [v35 firstObject];

      if (firstObject)
      {
        [modelWriter setContextualKeyAsset:*(v98 + 40) forHighlightItem:firstObject sharingFilter:filterCopy];
        if ((MEMORY[0x231902060]([firstObject visibilityState]) & 1) == 0)
        {
          [modelWriter addVisibleHighlight:firstObject inMonth:v73[5] withHighlightFilter:filterCopy];
        }

        goto LABEL_32;
      }

      if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      v40 = v79[5];
      v41 = *(v98 + 40);
      v94 = v45;
      v95[0] = v40;
      LOWORD(v95[1]) = 2112;
      *(&v95[1] + 2) = v41;
      v38 = oslog;
      v39 = "Cannot find parent day group highlight of %@ containing asset %@";
    }

    _os_log_error_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_ERROR, v39, &v94, 0x16u);
    goto LABEL_31;
  }

LABEL_50:
}

void __168__PGHighlightItemEnrichment__contextualKeyAssetForYearHighlightItemList_sharingFilter_curationContext_contextualOptions_options_availableContextualRules_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5, double a6)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  [v13 promotionScore];
  v16 = v15;
  v17 = *(*(a1 + 40) + 8);
  if (!*(v17 + 40))
  {
    goto LABEL_5;
  }

  v18 = *(*(*(a1 + 48) + 8) + 24);
  if (v18 < a6)
  {
    goto LABEL_5;
  }

  if (v18 == a6)
  {
    v19 = *(*(*(a1 + 56) + 8) + 24);
    if (v16 > v19)
    {
LABEL_5:
      objc_storeStrong((v17 + 40), a2);
      *(*(*(a1 + 48) + 8) + 24) = a6;
      *(*(*(a1 + 56) + 8) + 24) = v16;
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), a4);
      goto LABEL_6;
    }

    if (v16 == v19)
    {
      v22 = [*(*(*(a1 + 64) + 8) + 40) uuid];
      v23 = [v13 uuid];
      v24 = [v22 compare:v23];

      if (v24 == -1)
      {
        v17 = *(*(a1 + 40) + 8);
        goto LABEL_5;
      }
    }
  }

LABEL_6:
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v21 = *(*(a1 + 80) + 8);
    if (Current - *(v21 + 24) >= *(a1 + 96))
    {
      *(v21 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 104));
      *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
      if (*(*(*(a1 + 88) + 8) + 24) == 1)
      {
        *a5 = 1;
      }
    }
  }
}

- (void)contextualKeyAssetForYearHighlightItemLists:(id)lists withManager:(id)manager curationContext:(id)context options:(id)options progressBlock:(id)block
{
  v49 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  managerCopy = manager;
  contextCopy = context;
  optionsCopy = options;
  blockCopy = block;
  if ([listsCopy count])
  {
    v17 = _Block_copy(blockCopy);
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    if (v17 && (v18 = CFAbsoluteTimeGetCurrent(), v18 - v38[3] >= 0.01) && (v38[3] = v18, v36 = 0, (*(v17 + 2))(v17, &v36, 0.0), v19 = *(v42 + 24) | v36, *(v42 + 24) = v19, (v19 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v46 = 98;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      loggingConnection = [(PGHighlightItemEnrichmentRule *)self->_rule loggingConnection];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __123__PGHighlightItemEnrichment_contextualKeyAssetForYearHighlightItemLists_withManager_curationContext_options_progressBlock___block_invoke;
      v25[3] = &unk_278881458;
      v26 = managerCopy;
      v27 = optionsCopy;
      v21 = loggingConnection;
      v28 = v21;
      v29 = listsCopy;
      v22 = v17;
      v35 = 0x3F847AE147AE147BLL;
      v33 = &v37;
      v34 = &v41;
      v32 = v22;
      selfCopy = self;
      v31 = contextCopy;
      [v26 performSynchronousConcurrentGraphReadUsingBlock:v25];
      if (v17)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v38[3] >= 0.01)
        {
          v38[3] = Current;
          v36 = 0;
          (*(v22 + 2))(v22, &v36, 1.0);
          v24 = *(v42 + 24) | v36;
          *(v42 + 24) = v24;
          if ((v24 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v46 = 143;
            v47 = 2080;
            v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
  }
}

void __123__PGHighlightItemEnrichment_contextualKeyAssetForYearHighlightItemLists_withManager_curationContext_options_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [PGContextualOptions alloc];
  v29 = v3;
  v5 = [v3 graph];
  v6 = [*(a1 + 32) photoLibrary];
  v7 = [*(a1 + 32) curationManager];
  v8 = [(PGContextualOptions *)v4 initWithGraph:v5 photoLibrary:v6 curationManager:v7 options:*(a1 + 40) loggingConnection:*(a1 + 48)];

  v32 = v8;
  v9 = [(PGContextualOptions *)v8 availableContextualRules];
  v10 = [*(a1 + 56) count];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(a1 + 56);
  v11 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 1.0 / v10;
    v14 = *v45;
    v15 = 0.0;
    v30 = v9;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v45 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v44 + 1) + 8 * v16);
      v15 = v13 + v15;
      if (*(a1 + 80))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v19 = *(*(a1 + 88) + 8);
        if (Current - *(v19 + 24) >= *(a1 + 104))
        {
          *(v19 + 24) = Current;
          v43 = 0;
          (*(*(a1 + 80) + 16))(v15);
          *(*(*(a1 + 96) + 8) + 24) |= v43;
          if (*(*(*(a1 + 96) + 8) + 24))
          {
            goto LABEL_19;
          }
        }
      }

      v20 = [v17 sharingComposition];
      if (!v20)
      {
        break;
      }

      if (v20 == 1)
      {
        goto LABEL_16;
      }

      if (v20 == 2)
      {
        v21 = 1;
        goto LABEL_14;
      }

LABEL_17:
      if (v12 == ++v16)
      {
        v12 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    v21 = 0;
LABEL_14:
    v22 = *(a1 + 64);
    v23 = *(a1 + 72);
    v24 = *(a1 + 40);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __123__PGHighlightItemEnrichment_contextualKeyAssetForYearHighlightItemLists_withManager_curationContext_options_progressBlock___block_invoke_2;
    v38[3] = &unk_27888A1B0;
    v39 = *(a1 + 80);
    v41 = *(a1 + 104);
    v42 = v15;
    v40 = *(a1 + 88);
    v9 = v30;
    [v22 _contextualKeyAssetForYearHighlightItemList:v17 sharingFilter:0 curationContext:v23 contextualOptions:v32 options:v24 availableContextualRules:v30 progressBlock:v38];
    LOBYTE(v22) = *(*(*(a1 + 96) + 8) + 24);

    if (v22)
    {
      goto LABEL_19;
    }

    if (v21)
    {
LABEL_16:
      v25 = *(a1 + 64);
      v26 = *(a1 + 72);
      v27 = *(a1 + 40);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __123__PGHighlightItemEnrichment_contextualKeyAssetForYearHighlightItemLists_withManager_curationContext_options_progressBlock___block_invoke_3;
      v33[3] = &unk_27888A1B0;
      v34 = *(a1 + 80);
      v36 = *(a1 + 104);
      v37 = v15;
      v35 = *(a1 + 88);
      [v25 _contextualKeyAssetForYearHighlightItemList:v17 sharingFilter:1 curationContext:v26 contextualOptions:v32 options:v27 availableContextualRules:v9 progressBlock:v33];
      v28 = *(*(*(a1 + 96) + 8) + 24);

      if (v28)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    goto LABEL_17;
  }

LABEL_19:
}

void __123__PGHighlightItemEnrichment_contextualKeyAssetForYearHighlightItemLists_withManager_curationContext_options_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64));
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __123__PGHighlightItemEnrichment_contextualKeyAssetForYearHighlightItemLists_withManager_curationContext_options_progressBlock___block_invoke_3(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64));
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)updateVisibilityStateForHighlightItemLists:(id)lists withManager:(id)manager progressBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  listsCopy = lists;
  managerCopy = manager;
  blockCopy = block;
  if ([listsCopy count])
  {
    v11 = _Block_copy(blockCopy);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __98__PGHighlightItemEnrichment_updateVisibilityStateForHighlightItemLists_withManager_progressBlock___block_invoke;
    v14[3] = &unk_278881430;
    v15 = listsCopy;
    selfCopy = self;
    v12 = v11;
    v17 = v12;
    v18 = &v21;
    v19 = &v25;
    v20 = 0x3F847AE147AE147BLL;
    [managerCopy performSynchronousConcurrentGraphReadUsingBlock:v14];
    if (*(v26 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v30 = 87;
        v31 = 2080;
        v32 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/HighlightCollection/PGHighlightItemEnrichment.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else if (v12)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v22[3] >= 0.01)
      {
        v22[3] = Current;
        buf[0] = 0;
        (*(v12 + 2))(v12, buf, 1.0);
        *(v26 + 24) |= buf[0];
      }
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }
}

void __98__PGHighlightItemEnrichment_updateVisibilityStateForHighlightItemLists_withManager_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v3 = [v17 graph];
  v4 = [*(a1 + 32) count];
  objc_initWeak(&location, *(a1 + 40));
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = 1.0 / v4;
    v7 = *v25;
    v8 = 0.0;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      if (*(a1 + 48) && (Current = CFAbsoluteTimeGetCurrent(), v13 = *(*(a1 + 56) + 8), Current - *(v13 + 24) >= *(a1 + 72)) && (*(v13 + 24) = Current, v23 = 0, (*(*(a1 + 48) + 16))(v8), *(*(*(a1 + 64) + 8) + 24) |= v23, (*(*(*(a1 + 64) + 8) + 24) & 1) != 0))
      {
        v14 = 0;
      }

      else
      {
        v15 = [v10 kind] == 2 ? 4 : 2;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __98__PGHighlightItemEnrichment_updateVisibilityStateForHighlightItemLists_withManager_progressBlock___block_invoke_2;
        aBlock[3] = &unk_278881408;
        objc_copyWeak(&v21, &location);
        aBlock[4] = v10;
        v20 = v3;
        v22 = v15;
        v16 = _Block_copy(aBlock);
        v16[2](v16, 0);
        v16[2](v16, 1);
        v16[2](v16, 2);

        objc_destroyWeak(&v21);
        v8 = v6 + v8;
        v14 = 1;
      }

      objc_autoreleasePoolPop(v11);
      if (!v14)
      {
        break;
      }

      if (v5 == ++v9)
      {
        v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_destroyWeak(&location);
}

void __98__PGHighlightItemEnrichment_updateVisibilityStateForHighlightItemLists_withManager_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [WeakRetained rule];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = [WeakRetained neighborScoreComputer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__PGHighlightItemEnrichment_updateVisibilityStateForHighlightItemLists_withManager_progressBlock___block_invoke_3;
  v11[3] = &unk_2788813E0;
  v12 = a2;
  v11[4] = WeakRetained;
  v11[5] = &v13;
  [v5 enumerateChildVisibilityStateForHighlightItemList:v7 sharingFilter:a2 withGraph:v6 neighborScoreComputer:v8 usingBlock:v11];

  if (*(v14 + 24) == 1)
  {
    v9 = *(a1 + 56);
  }

  else
  {
    v9 = 0;
  }

  v10 = [WeakRetained modelWriter];
  [v10 setVisibilityState:v9 forHighlightItemList:*(a1 + 32) sharingFilter:a2];

  _Block_object_dispose(&v13, 8);
}

uint64_t __98__PGHighlightItemEnrichment_updateVisibilityStateForHighlightItemLists_withManager_progressBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 modelWriter];
  [v7 setVisibilityState:a3 forHighlightItem:v6 sharingFilter:*(a1 + 48)];

  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24))
  {
    result = 1;
  }

  else
  {
    result = MEMORY[0x231902060](a3);
    v8 = *(*(a1 + 40) + 8);
  }

  *(v8 + 24) = result;
  return result;
}

- (PGHighlightItemEnrichment)initWithRule:(id)rule modelWriter:(id)writer
{
  ruleCopy = rule;
  writerCopy = writer;
  v14.receiver = self;
  v14.super_class = PGHighlightItemEnrichment;
  v9 = [(PGHighlightItemEnrichment *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rule, rule);
    objc_storeStrong(&v10->_modelWriter, writer);
    v11 = objc_alloc_init(PGNeighborScoreComputer);
    neighborScoreComputer = v10->_neighborScoreComputer;
    v10->_neighborScoreComputer = v11;
  }

  return v10;
}

@end