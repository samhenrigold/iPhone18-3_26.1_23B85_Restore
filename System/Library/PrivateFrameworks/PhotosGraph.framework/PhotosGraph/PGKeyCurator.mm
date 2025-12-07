@interface PGKeyCurator
- (BOOL)cluster:(id)cluster isBetterThanCluster:(id)thanCluster forMemories:(BOOL)memories allowGuestAsset:(BOOL)asset;
- (BOOL)cluster:(id)cluster scoresBetterThanCluster:(id)thanCluster;
- (BOOL)scoreLevelOfCluster:(id)cluster isAboveScoreLevelOfCluster:(id)ofCluster;
- (PGKeyCurator)initWithCurationCriteriaFactory:(id)factory;
- (id)_keyItemInItems:(id)items options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block;
- (id)bestItemIdentifierWithItems:(id)items options:(id)options debugInfo:(id *)info criteria:(id)criteria curationOptions:(id)curationOptions;
- (id)bestItemInItems:(id)items options:(id)options criteria:(id)criteria minimumCriteriaScore:(double)score triedAndFailedToDoBetter:(BOOL *)better;
- (id)bestItemInItems:(id)items options:(id)options criteria:(id)criteria minimumCriteriaScore:(double)score useIconicScore:(BOOL)iconicScore;
- (id)clusterWithSubclusters:(id)subclusters keyItem:(id)item;
- (id)itemsByIconicScoreBucketWithItems:(id)items;
- (id)keyItemIdentifierWithItems:(id)items options:(id)options debugInfo:(id *)info;
- (id)keyItemInItems:(id)items options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block;
- (id)keyItemWithFeeder:(id)feeder options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block;
@end

@implementation PGKeyCurator

- (id)bestItemInItems:(id)items options:(id)options criteria:(id)criteria minimumCriteriaScore:(double)score triedAndFailedToDoBetter:(BOOL *)better
{
  itemsCopy = items;
  optionsCopy = options;
  criteriaCopy = criteria;
  v15 = [(CLSAssetsBeautifier *)self->_beautifier bestItemInItems:itemsCopy];
  if (v15)
  {
    isForMemories = [optionsCopy isForMemories];
    allowGuestAsset = [optionsCopy allowGuestAsset];
    v59[0] = 1.0;
    if (criteriaCopy)
    {
      v18 = ![(PGKeyCurator *)self item:v15 passesCriteria:criteriaCopy score:v59];
    }

    else
    {
      v18 = 0;
    }

    v44 = isForMemories;
    v47 = [v15 clsAvoidIfPossibleAsKeyItemForMemories:isForMemories allowGuestAsset:allowGuestAsset];
    wantsGoodSquareCropScore = [optionsCopy wantsGoodSquareCropScore];
    if (wantsGoodSquareCropScore && [v15 clsPeopleCount])
    {
      [v15 clsSquareCropScore];
      v21 = v20 < *MEMORY[0x277D3C780];
    }

    else
    {
      v21 = 0;
    }

    betterCopy = better;
    promoteAutoplayableItems = [optionsCopy promoteAutoplayableItems];
    if (promoteAutoplayableItems)
    {
      [v15 clsAutoplaySuggestionScore];
      v23 = v22 <= 0.71;
    }

    else
    {
      v23 = 0;
    }

    v43 = allowGuestAsset;
    if (v18)
    {

      v15 = 0;
    }

    if (v59[0] < score)
    {
      v24 = 1;
    }

    else
    {
      v24 = v18;
    }

    v25 = [itemsCopy count];
    v26 = v25 > 1;
    if (!((v25 < 2) | v47 & 1 | v24 & 1))
    {
      v26 = v23 || v21;
    }

    if (v26)
    {
      v27 = betterCopy;
      if (betterCopy)
      {
        *betterCopy = 1;
      }

      v28 = itemsCopy;
      v29 = v28;
      if (criteriaCopy || wantsGoodSquareCropScore)
      {
        v30 = v28;
        v31 = MEMORY[0x277CCAC30];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __95__PGKeyCurator_bestItemInItems_options_criteria_minimumCriteriaScore_triedAndFailedToDoBetter___block_invoke;
        v54[3] = &unk_2788843C0;
        v58 = wantsGoodSquareCropScore;
        v55 = criteriaCopy;
        selfCopy = self;
        scoreCopy = score;
        v32 = [v31 predicateWithBlock:v54];
        v29 = [v30 filteredArrayUsingPredicate:v32];

        v27 = betterCopy;
      }

      if (promoteAutoplayableItems)
      {
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __95__PGKeyCurator_bestItemInItems_options_criteria_minimumCriteriaScore_triedAndFailedToDoBetter___block_invoke_2;
        v51[3] = &__block_descriptor_34_e49_B24__0___CLSInvestigationItem__8__NSDictionary_16l;
        v52 = v44;
        v53 = v43;
        v33 = [MEMORY[0x277CCAC30] predicateWithBlock:v51];
        v34 = v29;
        v35 = [v29 filteredArrayUsingPredicate:v33];

        if ([v35 count])
        {
          v36 = [(CLSAssetsBeautifier *)self->_beautifier bestItemInItems:v35];

          v29 = v34;
          v27 = betterCopy;
          if (v36)
          {
            goto LABEL_37;
          }
        }

        else
        {

          v29 = v34;
          v27 = betterCopy;
        }
      }

      if ((v24 | v47 | v21))
      {
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __95__PGKeyCurator_bestItemInItems_options_criteria_minimumCriteriaScore_triedAndFailedToDoBetter___block_invoke_3;
        v48[3] = &__block_descriptor_34_e49_B24__0___CLSInvestigationItem__8__NSDictionary_16l;
        v49 = v44;
        v50 = v43;
        v37 = [MEMORY[0x277CCAC30] predicateWithBlock:v48];
        v38 = [v29 filteredArrayUsingPredicate:v37];

        if ([v38 count])
        {
          v36 = [(CLSAssetsBeautifier *)self->_beautifier bestItemInItems:v38];

          v27 = betterCopy;
          if (v36)
          {
            goto LABEL_37;
          }
        }

        else
        {

          v27 = betterCopy;
        }
      }

      if (((v24 | v21) & 1) == 0)
      {
        v36 = 0;
        goto LABEL_49;
      }

      v36 = [(CLSAssetsBeautifier *)self->_beautifier bestItemInItems:v29];
      if (!v36)
      {
LABEL_49:

        goto LABEL_50;
      }

LABEL_37:
      if (criteriaCopy && (([(PGKeyCurator *)self item:v36 passesCriteria:criteriaCopy score:v59]| v24) & 1) == 0)
      {
        goto LABEL_49;
      }

      if ((((v47 | v21) | v24) & 1) == 0 && ((promoteAutoplayableItems ^ 1) & 1) == 0)
      {
        [v36 clsContentScore];
        v39 = *MEMORY[0x277D3C760];
        if (v40 < *MEMORY[0x277D3C760])
        {
          [v15 clsContentScore];
          if (v41 >= v39)
          {
            goto LABEL_49;
          }
        }

LABEL_46:
        v36 = v36;

        if (v27)
        {
          *v27 = 0;
        }

        v15 = v36;
        goto LABEL_49;
      }

      if (((v47 | v21) | v24))
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }
  }

LABEL_50:

  return v15;
}

BOOL __95__PGKeyCurator_bestItemInItems_options_criteria_minimumCriteriaScore_triedAndFailedToDoBetter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = 0.0;
  if (*(a1 + 56))
  {
    if ([v5 clsPeopleCount])
    {
      [v5 clsSquareCropScore];
      if (v7 < *MEMORY[0x277D3C780])
      {
        goto LABEL_7;
      }
    }
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (![*(a1 + 40) item:v5 passesCriteria:v8 score:&v11])
  {
LABEL_7:
    v9 = 0;
  }

  else
  {
    v9 = v11 >= *(a1 + 48);
  }

LABEL_9:

  return v9;
}

BOOL __95__PGKeyCurator_bestItemInItems_options_criteria_minimumCriteriaScore_triedAndFailedToDoBetter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 clsAvoidIfPossibleAsKeyItemForMemories:*(a1 + 32) allowGuestAsset:*(a1 + 33)])
  {
    v4 = 0;
  }

  else
  {
    [v3 clsAutoplaySuggestionScore];
    v4 = v5 > 0.71;
  }

  return v4;
}

- (id)bestItemInItems:(id)items options:(id)options criteria:(id)criteria minimumCriteriaScore:(double)score useIconicScore:(BOOL)iconicScore
{
  iconicScoreCopy = iconicScore;
  v60 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  criteriaCopy = criteria;
  if (iconicScoreCopy)
  {
    promoteAutoplayableItems = [optionsCopy promoteAutoplayableItems];
    if ([optionsCopy promoteAutoplayableItems])
    {
      v14 = [optionsCopy avoidPromotingAutoplayableItemsWhenUsingIconicScore] ^ 1;
    }

    else
    {
      v14 = 0;
    }

    v47 = criteriaCopy;
    [optionsCopy setPromoteAutoplayableItems:v14];
    v48 = itemsCopy;
    v51 = [(PGKeyCurator *)self itemsByIconicScoreBucketWithItems:itemsCopy];
    allKeys = [v51 allKeys];
    v16 = [allKeys sortedArrayUsingSelector:sel_compare_];
    reverseObjectEnumerator = [v16 reverseObjectEnumerator];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = reverseObjectEnumerator;
    v18 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v18)
    {
      v19 = v18;
      v52 = 0;
      v15 = 0;
      v50 = *v56;
LABEL_8:
      v20 = 0;
      while (1)
      {
        if (*v56 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v55 + 1) + 8 * v20);
        if (![v21 intValue])
        {
          break;
        }

        v22 = [v51 objectForKeyedSubscript:v21];
        v54 = 0;
        v23 = [(PGKeyCurator *)self bestItemInItems:v22 options:optionsCopy criteria:0 minimumCriteriaScore:&v54 triedAndFailedToDoBetter:score];
        v24 = v23;
        if (v23)
        {
          curationModel = [v23 curationModel];
          iconicScoreModel = [curationModel iconicScoreModel];

          curationModel2 = [v15 curationModel];
          iconicScoreModel2 = [curationModel2 iconicScoreModel];

          [iconicScoreModel similarIconicScoreThreshold];
          v30 = v29;
          version = [iconicScoreModel version];
          version2 = [iconicScoreModel2 version];
          [v15 clsIconicScore];
          v34 = v33;
          [v24 clsIconicScore];
          v36 = v35;
          [v24 clsContentScore];
          v38 = v37;
          [v15 clsContentScore];
          if (!v15 || (v52 & (v54 == 0)) != 0 || (v52 & 1) == v54 && version == version2 && v34 - v36 <= v30 && v38 - v39 >= 0.05)
          {
            v40 = v24;

            v52 = v54;
            v15 = v40;
          }
        }

        if (v19 == ++v20)
        {
          v19 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
          if (v19)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    else
    {
      v52 = 0;
      v15 = 0;
    }

    [optionsCopy setPromoteAutoplayableItems:promoteAutoplayableItems];
    if (v15 && (v52 & 1) == 0)
    {
      v15 = v15;

      v41 = v15;
      criteriaCopy = v47;
      itemsCopy = v48;
      goto LABEL_34;
    }

    criteriaCopy = v47;
    itemsCopy = v48;
  }

  else
  {
    v15 = 0;
  }

  v54 = 0;
  v41 = [(PGKeyCurator *)self bestItemInItems:itemsCopy options:optionsCopy criteria:criteriaCopy minimumCriteriaScore:&v54 triedAndFailedToDoBetter:score];
  if (v54 == 1 && v15 != 0)
  {
    v43 = v15;

    v41 = v43;
  }

LABEL_34:

  return v41;
}

- (id)itemsByIconicScoreBucketWithItems:(id)items
{
  v23 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        [v10 clsIconicScore];
        v12 = v11;
        curationModel = [v10 curationModel];
        iconicScoreModel = [curationModel iconicScoreModel];

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(iconicScoreModel, "bucketForIconicScore:", v12)}];
        v16 = [v4 objectForKeyedSubscript:v15];
        if (!v16)
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v4 setObject:v16 forKeyedSubscript:v15];
        }

        [v16 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)cluster:(id)cluster isBetterThanCluster:(id)thanCluster forMemories:(BOOL)memories allowGuestAsset:(BOOL)asset
{
  assetCopy = asset;
  memoriesCopy = memories;
  clusterCopy = cluster;
  thanClusterCopy = thanCluster;
  keyItem = [clusterCopy keyItem];
  v13 = [keyItem clsAvoidIfPossibleAsKeyItemForMemories:memoriesCopy allowGuestAsset:assetCopy];

  keyItem2 = [thanClusterCopy keyItem];
  v15 = [keyItem2 clsAvoidIfPossibleAsKeyItemForMemories:memoriesCopy allowGuestAsset:assetCopy];

  v16 = (v13 & 1) == 0 && v15 || v15 & 1 | ((v13 & 1) == 0) && [(PGKeyCurator *)self cluster:clusterCopy scoresBetterThanCluster:thanClusterCopy];
  return v16;
}

- (BOOL)cluster:(id)cluster scoresBetterThanCluster:(id)thanCluster
{
  clusterCopy = cluster;
  thanClusterCopy = thanCluster;
  subclusters = [clusterCopy subclusters];
  v9 = [subclusters count];

  subclusters2 = [thanClusterCopy subclusters];
  v11 = [subclusters2 count];

  if (v9 <= v11)
  {
    [clusterCopy score];
    v14 = v13;
    [thanClusterCopy score];
    v17 = v14 < v15 || v9 < v11 >> 1;
    if (v9 < (3 * v11) >> 2 || v14 <= v15)
    {
      LOBYTE(v12) = !v17 && [(PGKeyCurator *)self scoreLevelOfCluster:clusterCopy isAboveScoreLevelOfCluster:thanClusterCopy];
    }

    else
    {
      keyItem = [clusterCopy keyItem];
      [keyItem clsContentScore];
      v20 = v19;
      keyItem2 = [thanClusterCopy keyItem];
      [keyItem2 clsContentScore];
      LOBYTE(v12) = v20 > v22;
      if (v20 <= v22 && !v17)
      {
        LOBYTE(v12) = [(PGKeyCurator *)self scoreLevelOfCluster:clusterCopy isAboveScoreLevelOfCluster:thanClusterCopy];
      }
    }
  }

  else
  {
    v12 = ![(PGKeyCurator *)self cluster:thanClusterCopy scoresBetterThanCluster:clusterCopy];
  }

  return v12;
}

- (BOOL)scoreLevelOfCluster:(id)cluster isAboveScoreLevelOfCluster:(id)ofCluster
{
  v5 = ContentScoreLevelIsBetterThanOtherContentScoreLevel;
  ofClusterCopy = ofCluster;
  keyItem = [cluster keyItem];
  [keyItem clsContentScore];
  v9 = v8;
  keyItem2 = [ofClusterCopy keyItem];

  [keyItem2 clsContentScore];
  LOBYTE(v5) = v5[2](v9, v11);

  return v5;
}

- (id)clusterWithSubclusters:(id)subclusters keyItem:(id)item
{
  v20 = *MEMORY[0x277D85DE8];
  subclustersCopy = subclusters;
  itemCopy = item;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [subclustersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(subclustersCopy);
        }

        [*(*(&v15 + 1) + 8 * i) score];
        v10 = v10 + v12;
      }

      v8 = [subclustersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v13 = -[PGKeyCuratorCluster initWithSubclusters:keyItem:score:]([PGKeyCuratorCluster alloc], "initWithSubclusters:keyItem:score:", subclustersCopy, itemCopy, v10 / [subclustersCopy count]);

  return v13;
}

- (id)_keyItemInItems:(id)items options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block
{
  v128 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  criteriaCopy = criteria;
  infoCopy = info;
  blockCopy = block;
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v66 = _Block_copy(blockCopy);
  if (v66)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v112[3] >= 0.01)
    {
      v112[3] = Current;
      v110 = 0;
      v66[2](v66, &v110, 0.0);
      v14 = *(v116 + 24) | v110;
      *(v116 + 24) = v14;
      if (v14)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *&buf[4] = 284;
          v126 = 2080;
          v127 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGKeyCurator.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_9;
      }
    }
  }

  v15 = [itemsCopy count];
  if (!v15)
  {
LABEL_9:
    firstObject = 0;
    goto LABEL_70;
  }

  if (v15 == 1)
  {
    firstObject = [itemsCopy firstObject];
  }

  else
  {
    if ([optionsCopy complete])
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    v18 = [PGCurationManager summaryClusteringForDuration:v17];
    [v18 setDiffuseDensityClusteringMaximumDistance:28800.0];
    [v18 setConciseDensityClusteringMaximumDistance:2700.0];
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __73__PGKeyCurator__keyItemInItems_options_criteria_debugInfo_progressBlock___block_invoke;
    v105[3] = &unk_27888A188;
    v73 = v66;
    v106 = v73;
    v107 = &v111;
    v109 = 0x3F847AE147AE147BLL;
    v108 = &v115;
    v64 = v18;
    v19 = [v18 densityClustersWithItems:itemsCopy progressBlock:v105];
    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v19, "count")}];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = v19;
    v21 = [obj countByEnumeratingWithState:&v101 objects:v124 count:16];
    if (v21)
    {
      v22 = *v102;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v102 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [MEMORY[0x277D3AC38] clusterWithObjects:*(*(&v101 + 1) + 8 * i)];
          [v20 addObject:v24];
        }

        v21 = [obj countByEnumeratingWithState:&v101 objects:v124 count:16];
      }

      while (v21);
    }

    [infoCopy setClusters:v20 withReason:@"Summarizer"];
    if ([optionsCopy useIconicScore])
    {
      v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"iconicScoreBucket" ascending:0];
      v123[0] = v25;
      v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
      v123[1] = v26;
      v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"keyItem.clsIdentifier" ascending:0];
      v123[2] = v27;
      v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:3];
    }

    else
    {
      v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
      v122[0] = v25;
      v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"keyItem.clsIdentifier" ascending:0];
      v122[1] = v26;
      v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:2];
    }

    isForMemories = [optionsCopy isForMemories];
    allowGuestAsset = [optionsCopy allowGuestAsset];
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v68 = v20;
    v74 = [v68 countByEnumeratingWithState:&v97 objects:v121 count:16];
    if (v74)
    {
      v76 = 0;
      v71 = *v98;
      do
      {
        for (j = 0; j != v74; ++j)
        {
          if (*v98 != v71)
          {
            objc_enumerationMutation(v68);
          }

          v28 = *(*(&v97 + 1) + 8 * j);
          v82 = [infoCopy debugInfoForCluster:v28];
          similarStacker = self->_similarStacker;
          objects = [v28 objects];
          v92[0] = MEMORY[0x277D85DD0];
          v92[1] = 3221225472;
          v92[2] = __73__PGKeyCurator__keyItemInItems_options_criteria_debugInfo_progressBlock___block_invoke_2;
          v92[3] = &unk_27888A188;
          v93 = v73;
          v94 = &v111;
          v96 = 0x3F847AE147AE147BLL;
          v95 = &v115;
          v31 = [(CLSSimilarStacker *)similarStacker stackSimilarItems:objects withSimilarity:0 timestampSupport:0 progressBlock:v92];

          v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v31, "count")}];
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v33 = v31;
          v34 = [v33 countByEnumeratingWithState:&v88 objects:v120 count:16];
          if (v34)
          {
            v35 = *v89;
            do
            {
              for (k = 0; k != v34; ++k)
              {
                if (*v89 != v35)
                {
                  objc_enumerationMutation(v33);
                }

                v37 = [MEMORY[0x277D3AC38] clusterWithObjects:*(*(&v88 + 1) + 8 * k)];
                [v32 addObject:v37];
              }

              v34 = [v33 countByEnumeratingWithState:&v88 objects:v120 count:16];
            }

            while (v34);
          }

          [v82 setClusters:v32 withReason:@"Stack Similar"];
          v80 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v33, "count")}];
          v81 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v33, "count")}];
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v79 = v33;
          v38 = [v79 countByEnumeratingWithState:&v84 objects:v119 count:16];
          if (v38)
          {
            v39 = *v85;
            v40 = 0.0;
            do
            {
              for (m = 0; m != v38; ++m)
              {
                if (*v85 != v39)
                {
                  objc_enumerationMutation(v79);
                }

                v42 = *(*(&v84 + 1) + 8 * m);
                v43 = -[PGKeyCurator bestItemInItems:options:criteria:minimumCriteriaScore:useIconicScore:](self, "bestItemInItems:options:criteria:minimumCriteriaScore:useIconicScore:", v42, optionsCopy, criteriaCopy, [optionsCopy useIconicScore], 0.0);
                if (v43)
                {
                  *buf = 0.0;
                  [(PGKeyCurator *)self item:v43 passesCriteria:criteriaCopy score:buf];
                  [v81 addObject:v43];
                  if (criteriaCopy)
                  {
                    v44 = *buf;
                    [v43 clsContentScore];
                    v46 = (v44 + v45) * 0.5;
                  }

                  else
                  {
                    [v43 clsContentScore];
                    v46 = v48;
                  }

                  if ([optionsCopy useIconicScore])
                  {
                    [v43 clsIconicScore];
                    v50 = v49;
                    curationModel = [v43 curationModel];
                    iconicScoreModel = [curationModel iconicScoreModel];

                    [iconicScoreModel minimumMeaningfulIconicScore];
                    if (v50 < v53)
                    {
                      v54 = 0.0;
                    }

                    else
                    {
                      v54 = v50;
                    }

                    v55 = [iconicScoreModel bucketForIconicScore:v54];
                  }

                  else
                  {
                    v55 = 0;
                  }

                  v56 = [[PGKeyCuratorSubcluster alloc] initWithItems:v42 keyItem:v43 score:v55 iconicScoreBucket:v46];
                  [v80 addObject:v56];
                  v57 = *buf;
                  [v82 dedupItems:v42 toItem:v43 withDedupingType:1];
                  if (criteriaCopy)
                  {
                    v40 = v40 + v57;
                  }
                }

                else
                {
                  v47 = [MEMORY[0x277CBEB98] setWithArray:v42];
                  [v82 setState:2 ofItems:v47 withReason:@"No key item"];
                }
              }

              v38 = [v79 countByEnumeratingWithState:&v84 objects:v119 count:16];
            }

            while (v38);
          }

          else
          {
            v40 = 0.0;
          }

          v58 = [v81 count];
          if (v58)
          {
            v40 = v40 / v58;
          }

          v59 = -[PGKeyCurator bestItemInItems:options:criteria:minimumCriteriaScore:useIconicScore:](self, "bestItemInItems:options:criteria:minimumCriteriaScore:useIconicScore:", v81, optionsCopy, criteriaCopy, [optionsCopy useIconicScore], fmin(v40, 0.5));
          [v82 setState:3 ofItem:v59 withReason:@"Key item in subcluster"];
          [v80 sortUsingDescriptors:v72];
          v60 = [(PGKeyCurator *)self clusterWithSubclusters:v80 keyItem:v59];
          v61 = v76;
          if (!v76 || (v61 = v76, [(PGKeyCurator *)self cluster:v60 isBetterThanCluster:v76 forMemories:isForMemories allowGuestAsset:allowGuestAsset]))
          {
            v62 = v60;

            v76 = v62;
          }
        }

        v74 = [v68 countByEnumeratingWithState:&v97 objects:v121 count:16];
      }

      while (v74);
    }

    else
    {
      v76 = 0;
    }

    firstObject = [v76 keyItem];
    if (firstObject)
    {
      [infoCopy forceState:4 ofItem:firstObject withReason:@"Key item in town"];
    }
  }

LABEL_70:
  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);

  return firstObject;
}

void __73__PGKeyCurator__keyItemInItems_options_criteria_debugInfo_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

void __73__PGKeyCurator__keyItemInItems_options_criteria_debugInfo_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
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

- (id)bestItemIdentifierWithItems:(id)items options:(id)options debugInfo:(id *)info criteria:(id)criteria curationOptions:(id)curationOptions
{
  optionsCopy = options;
  v13 = MEMORY[0x277CBEB18];
  curationOptionsCopy = curationOptions;
  criteriaCopy = criteria;
  itemsCopy = items;
  v17 = objc_alloc_init(v13);
  v18 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __87__PGKeyCurator_bestItemIdentifierWithItems_options_debugInfo_criteria_curationOptions___block_invoke;
  v26[3] = &unk_278886108;
  v19 = v18;
  v27 = v19;
  v20 = optionsCopy;
  v28 = v20;
  v21 = v17;
  v29 = v21;
  [itemsCopy enumerateKeysAndObjectsUsingBlock:v26];

  v22 = [objc_alloc(MEMORY[0x277D276A0]) initWithItems:v21];
  v23 = [(PGKeyCurator *)self keyItemInItems:v21 options:curationOptionsCopy criteria:criteriaCopy debugInfo:v22 progressBlock:0];

  if (info)
  {
    *info = [v22 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
  }

  clsIdentifier = [v23 clsIdentifier];

  return clsIdentifier;
}

void __87__PGKeyCurator_bestItemIdentifierWithItems_options_debugInfo_criteria_curationOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v5 curationModelForItemInfo:v7 options:v6];
  v9 = [PGCuratorInvestigationItem itemWithUUID:v8 itemInfo:v7 curationModel:v10];

  [*(a1 + 48) addObject:v9];
}

- (id)keyItemIdentifierWithItems:(id)items options:(id)options debugInfo:(id *)info
{
  optionsCopy = options;
  v9 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  v11 = objc_alloc_init(v9);
  v12 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__PGKeyCurator_keyItemIdentifierWithItems_options_debugInfo___block_invoke;
  v25[3] = &unk_278886108;
  v13 = v12;
  v26 = v13;
  v14 = optionsCopy;
  v27 = v14;
  v15 = v11;
  v28 = v15;
  [itemsCopy enumerateKeysAndObjectsUsingBlock:v25];

  v16 = [v14 objectForKeyedSubscript:@"useSummarizer"];

  if (v16)
  {
    v17 = [[PGKeyAssetCurationOptions alloc] initWithDictionaryRepresentation:v14];
  }

  else
  {
    v17 = objc_alloc_init(PGKeyAssetCurationOptions);
  }

  v18 = v17;
  v19 = [objc_alloc(MEMORY[0x277D276A0]) initWithItems:v15];
  v20 = [v14 objectForKeyedSubscript:@"meaningForCriteria"];
  if (v20)
  {
    v21 = [(PGCurationCriteriaFactory *)self->_curationCriteriaFactory curationCriteriaWithCollection:0 meaningLabel:v20 inGraph:0 client:0];
  }

  else
  {
    v21 = 0;
  }

  v22 = [(PGKeyCurator *)self keyItemInItems:v15 options:v18 criteria:v21 debugInfo:v19 progressBlock:0];
  if (info)
  {
    *info = [v19 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
  }

  clsIdentifier = [v22 clsIdentifier];

  return clsIdentifier;
}

void __61__PGKeyCurator_keyItemIdentifierWithItems_options_debugInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v5 curationModelForItemInfo:v7 options:v6];
  v9 = [PGCuratorInvestigationItem itemWithUUID:v8 itemInfo:v7 curationModel:v10];

  [*(a1 + 48) addObject:v9];
}

- (id)keyItemInItems:(id)items options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block
{
  v61 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  criteriaCopy = criteria;
  infoCopy = info;
  blockCopy = block;
  if (![itemsCopy count])
  {
    firstObject = 0;
    goto LABEL_5;
  }

  v17 = [(PGKeyCurator *)self _keyItemInItems:itemsCopy options:optionsCopy criteria:criteriaCopy debugInfo:infoCopy progressBlock:blockCopy];
  if (v17)
  {
LABEL_3:
    firstObject = v17;
    goto LABEL_5;
  }

  if (([optionsCopy complete] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Couldn't find a key item with complete == NO, retrying with complete == YES", &buf, 2u);
    }

    [infoCopy resetWithReason:{@"Couldn't find a key item with complete == NO, retrying with complete == YES"}];
    [optionsCopy setComplete:1];
    firstObject = [(PGKeyCurator *)self _keyItemInItems:itemsCopy options:optionsCopy criteria:criteriaCopy debugInfo:infoCopy progressBlock:blockCopy];
    [optionsCopy setComplete:0];
    if (firstObject)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      clsIdentifier = [firstObject clsIdentifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = clsIdentifier;
      v21 = MEMORY[0x277D86220];
      v22 = "Found '%@' as key item with complete == YES";
      goto LABEL_53;
    }
  }

  selfCopy = self;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Couldn't find a key item with complete == YES, try and use the highest content scoring non-utility item, or the if none the highest aesthetic scoring utility item", &buf, 2u);
  }

  v50 = blockCopy;
  v51 = infoCopy;
  [infoCopy resetWithReason:{@"Couldn't find a key item with complete == YES, try and use the highest content scoring non-utility item, or the if none the highest aesthetic scoring utility item"}];
  isForMemories = [optionsCopy isForMemories];
  v52 = optionsCopy;
  allowGuestAsset = [optionsCopy allowGuestAsset];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v25 = itemsCopy;
  v26 = [v25 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v26)
  {
    v27 = v26;
    v49 = itemsCopy;
    v28 = 0;
    firstObject = 0;
    v29 = *v55;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v55 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v37 = *(*(&v54 + 1) + 8 * i);
        buf = 0uLL;
        v59 = 0.0;
        [v37 clsContentScore];
        *&buf = v38;
        if (!criteriaCopy || [(PGKeyCurator *)selfCopy item:v37 passesCriteria:criteriaCopy score:&buf + 8])
        {
          [v37 clsAestheticScore];
          v59 = v39;
          if ([v37 clsAvoidIfPossibleAsKeyItemForMemories:isForMemories allowGuestAsset:allowGuestAsset])
          {
            if (!v28 || (*(ItemScoreIsBetterThanOtherItemScore + 2))(*&buf, *(&buf + 1), v59, v32, v31, v30))
            {
              v40 = v37;

              v31 = *(&buf + 1);
              v32 = *&buf;
              v28 = v40;
              v30 = v59;
            }
          }

          else if (!firstObject || (*(ItemScoreIsBetterThanOtherItemScore + 2))(*&buf, *(&buf + 1), v59, v35, v34, v33))
          {
            v41 = v37;

            v34 = *(&buf + 1);
            v35 = *&buf;
            firstObject = v41;
            v33 = v59;
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v27);

    v42 = MEMORY[0x277D3C778];
    if (firstObject)
    {
      v43 = *MEMORY[0x277D3C778];
      if (v35 != *MEMORY[0x277D3C778] || v32 <= v43)
      {
        v32 = v35;
        itemsCopy = v49;
        infoCopy = v51;
        goto LABEL_41;
      }
    }

    v45 = v28;

    itemsCopy = v49;
    infoCopy = v51;
    if (v45)
    {
      v43 = *v42;
      firstObject = v45;
LABEL_41:
      if (v32 <= v43)
      {
        [infoCopy chooseItem:firstObject inItems:v25 withReason:@"Key utility item"];
        optionsCopy = v52;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          clsIdentifier2 = [firstObject clsIdentifier];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = clsIdentifier2;
          v47 = MEMORY[0x277D86220];
          v48 = "Found utility item '%@' for key item";
          goto LABEL_56;
        }
      }

      else
      {
        [infoCopy chooseItem:firstObject inItems:v25 withReason:@"Key non-utility item"];
        optionsCopy = v52;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          clsIdentifier2 = [firstObject clsIdentifier];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = clsIdentifier2;
          v47 = MEMORY[0x277D86220];
          v48 = "Found non-utility item '%@' for key item";
LABEL_56:
          _os_log_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_INFO, v48, &buf, 0xCu);
        }
      }

      blockCopy = v50;
      goto LABEL_5;
    }
  }

  else
  {
  }

  optionsCopy = v52;
  blockCopy = v50;
  if (criteriaCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Couldn't find a key item with criteria, retrying without criteria", &buf, 2u);
    }

    [infoCopy resetWithReason:{@"Couldn't find a key item with criteria, retrying without criteria"}];
    v17 = [(PGKeyCurator *)selfCopy keyItemInItems:v25 options:v52 criteria:0 debugInfo:infoCopy progressBlock:v50];
    if (v17)
    {
      goto LABEL_3;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf) = 0;
    _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Couldn't find anything although we have items, this should never happen", &buf, 2u);
  }

  firstObject = [v25 firstObject];
  [infoCopy chooseItem:firstObject inItems:v25 withReason:@"At least it's an item"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    clsIdentifier = [firstObject clsIdentifier];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = clsIdentifier;
    v21 = MEMORY[0x277D86220];
    v22 = "Found '%@' item for key item";
LABEL_53:
    _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, v22, &buf, 0xCu);
  }

LABEL_5:

  return firstObject;
}

- (id)keyItemWithFeeder:(id)feeder options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block
{
  blockCopy = block;
  infoCopy = info;
  criteriaCopy = criteria;
  optionsCopy = options;
  allItems = [feeder allItems];
  v17 = [(PGKeyCurator *)self keyItemInItems:allItems options:optionsCopy criteria:criteriaCopy debugInfo:infoCopy progressBlock:blockCopy];

  return v17;
}

- (PGKeyCurator)initWithCurationCriteriaFactory:(id)factory
{
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = PGKeyCurator;
  v6 = [(PGKeyCurator *)&v12 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D27670]) initWithSimilarityModelClass:objc_opt_class()];
    beautifier = v6->_beautifier;
    v6->_beautifier = v7;

    v9 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:objc_opt_class()];
    similarStacker = v6->_similarStacker;
    v6->_similarStacker = v9;

    objc_storeStrong(&v6->_curationCriteriaFactory, factory);
  }

  return v6;
}

@end