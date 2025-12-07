@interface PGPhotosGraphProfile
+ (id)_computeBlockedTaxonomyNodeNamesWithSceneTaxonomy:(id)taxonomy;
+ (id)informantDependenciesIdentifiers;
- (PGPhotosGraphProfile)init;
- (PGPhotosGraphProfile)initWithSceneTaxonomy:(id)taxonomy;
- (void)_insertEntityNetScenesForClueCollection:(id)collection;
- (void)_insertEventCluesForClueCollection:(id)collection serviceManager:(id)manager locationCache:(id)cache;
- (void)_insertPlacesForClueCollection:(id)collection;
- (void)_insertScenesForClueCollection:(id)collection;
- (void)processResultsSynchronouslyForInvestigation:(id)investigation withProgressBlock:(id)block;
@end

@implementation PGPhotosGraphProfile

- (void)processResultsSynchronouslyForInvestigation:(id)investigation withProgressBlock:(id)block
{
  v52 = *MEMORY[0x277D85DE8];
  investigationCopy = investigation;
  blockCopy = block;
  v8 = _Block_copy(blockCopy);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  clueCollection = [investigationCopy clueCollection];
  if ((CLSDeviceIs2GBOrLess() & 1) == 0)
  {
    helper = [investigationCopy helper];
    serviceManager = [helper serviceManager];
    helper2 = [investigationCopy helper];
    locationCache = [helper2 locationCache];
    [(PGPhotosGraphProfile *)self _insertEventCluesForClueCollection:clueCollection serviceManager:serviceManager locationCache:locationCache];
  }

  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v41[3] >= 0.01)
    {
      v41[3] = Current;
      v39 = 0;
      v8[2](v8, &v39, 0.1);
      v15 = *(v45 + 24) | v39;
      *(v45 + 24) = v15;
      if (v15)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v49 = 223;
          v50 = 2080;
          v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Profile/PGPhotosGraphProfile.m";
          v16 = MEMORY[0x277D86220];
LABEL_23:
          _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_39;
        }

        goto LABEL_39;
      }
    }
  }

  [(PGPhotosGraphProfile *)self _insertPlacesForClueCollection:clueCollection];
  if (!v8 || (v17 = CFAbsoluteTimeGetCurrent(), v17 - v41[3] < 0.01) || (v41[3] = v17, v39 = 0, v8[2](v8, &v39, 0.2), v18 = *(v45 + 24) | v39, *(v45 + 24) = v18, (v18 & 1) == 0))
  {
    [(PGPhotosGraphProfile *)self _insertScenesForClueCollection:clueCollection];
    if (v8)
    {
      v19 = CFAbsoluteTimeGetCurrent();
      if (v19 - v41[3] >= 0.01)
      {
        v41[3] = v19;
        v39 = 0;
        v8[2](v8, &v39, 0.3);
        v20 = *(v45 + 24) | v39;
        *(v45 + 24) = v20;
        if (v20)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v49 = 229;
            v50 = 2080;
            v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Profile/PGPhotosGraphProfile.m";
            v16 = MEMORY[0x277D86220];
            goto LABEL_23;
          }

          goto LABEL_39;
        }
      }
    }

    [(PGPhotosGraphProfile *)self _insertEntityNetScenesForClueCollection:clueCollection];
    if (v8)
    {
      v21 = CFAbsoluteTimeGetCurrent();
      if (v21 - v41[3] >= 0.01)
      {
        v41[3] = v21;
        v39 = 0;
        v8[2](v8, &v39, 0.4);
        v22 = *(v45 + 24) | v39;
        *(v45 + 24) = v22;
        if (v22)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v49 = 232;
            v50 = 2080;
            v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Profile/PGPhotosGraphProfile.m";
            v16 = MEMORY[0x277D86220];
            goto LABEL_23;
          }

          goto LABEL_39;
        }
      }
    }

    if (![clueCollection numberOfLocations])
    {
      goto LABEL_39;
    }

    helper3 = [investigationCopy helper];
    locationCache2 = [helper3 locationCache];

    mePerson = [clueCollection mePerson];
    v26 = mePerson;
    if (mePerson)
    {
      [mePerson prefetchPersonAddressesIfNeededWithLocationCache:locationCache2];
      if (!v8)
      {
        goto LABEL_38;
      }

      v27 = CFAbsoluteTimeGetCurrent();
      if (v27 - v41[3] >= 0.01)
      {
        v41[3] = v27;
        v39 = 0;
        v8[2](v8, &v39, 0.5);
        v28 = *(v45 + 24) | v39;
        *(v45 + 24) = v28;
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v49 = 241;
            v50 = 2080;
            v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Profile/PGPhotosGraphProfile.m";
            v29 = MEMORY[0x277D86220];
LABEL_36:
            _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_37;
          }

          goto LABEL_37;
        }
      }
    }

    else if (!v8)
    {
      goto LABEL_38;
    }

    v30 = CFAbsoluteTimeGetCurrent();
    if (v30 - v41[3] >= 0.01)
    {
      v41[3] = v30;
      v39 = 0;
      v8[2](v8, &v39, 0.6);
      v31 = *(v45 + 24) | v39;
      *(v45 + 24) = v31;
      if (v31)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v49 = 244;
          v50 = 2080;
          v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Profile/PGPhotosGraphProfile.m";
          v29 = MEMORY[0x277D86220];
          goto LABEL_36;
        }

LABEL_37:

        goto LABEL_39;
      }
    }

LABEL_38:
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __86__PGPhotosGraphProfile_processResultsSynchronouslyForInvestigation_withProgressBlock___block_invoke;
    v33[3] = &unk_27887EF10;
    v32 = locationCache2;
    v34 = v32;
    v35 = v8;
    v36 = &v40;
    v37 = &v44;
    v38 = 0x3F847AE147AE147BLL;
    [clueCollection enumeratePeopleClues:v33];

    goto LABEL_39;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v49 = 226;
    v50 = 2080;
    v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Profile/PGPhotosGraphProfile.m";
    v16 = MEMORY[0x277D86220];
    goto LABEL_23;
  }

LABEL_39:

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
}

void __86__PGPhotosGraphProfile_processResultsSynchronouslyForInvestigation_withProgressBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 person];
  v7 = v6;
  if (v6)
  {
    [v6 prefetchPersonAddressesIfNeededWithLocationCache:*(a1 + 32)];
    if (*(a1 + 40))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v9 = *(*(a1 + 48) + 8);
      if (Current - *(v9 + 24) >= *(a1 + 64))
      {
        *(v9 + 24) = Current;
        (*(*(a1 + 40) + 16))(0.7);
        *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
        if (*(*(*(a1 + 56) + 8) + 24) == 1)
        {
          *a4 = 1;
        }
      }
    }
  }
}

- (void)_insertEntityNetScenesForClueCollection:(id)collection
{
  v3 = MEMORY[0x277CBEB18];
  collectionCopy = collection;
  v5 = objc_alloc_init(v3);
  v6 = [collectionCopy outputCluesForKey:*MEMORY[0x277D277D8]];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__PGPhotosGraphProfile__insertEntityNetScenesForClueCollection___block_invoke;
  v8[3] = &unk_27887EEE8;
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
  [collectionCopy mergeClues:v7];
}

void __64__PGPhotosGraphProfile__insertEntityNetScenesForClueCollection___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 value];
  if (v3)
  {
    v4 = MEMORY[0x277D27730];
    [v10 confidence];
    v6 = v5;
    [v10 relevance];
    v8 = [v4 clueWithValue:v3 forKey:@"EntityNetScene" confidence:v6 relevance:v7];
    v9 = [v10 extraParameters];
    [v8 setExtraParameters:v9];

    [*(a1 + 32) addObject:v8];
  }
}

- (void)_insertScenesForClueCollection:(id)collection
{
  v4 = MEMORY[0x277CBEB18];
  collectionCopy = collection;
  v6 = objc_alloc_init(v4);
  v7 = [collectionCopy outputCluesForKey:*MEMORY[0x277D277E0]];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__PGPhotosGraphProfile__insertScenesForClueCollection___block_invoke;
  v12 = &unk_27887EEC0;
  selfCopy = self;
  v14 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:&v9];
  [collectionCopy mergeClues:{v8, v9, v10, v11, v12, selfCopy}];
}

void __55__PGPhotosGraphProfile__insertScenesForClueCollection___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 value];
  if (v3 && ([*(a1 + 32) isBlockedTaxonomyNodeWithName:v3] & 1) == 0)
  {
    v4 = MEMORY[0x277D27730];
    [v10 confidence];
    v6 = v5;
    [v10 relevance];
    v8 = [v4 clueWithValue:v3 forKey:@"Scene" confidence:v6 relevance:v7];
    v9 = [v10 extraParameters];
    [v8 setExtraParameters:v9];

    [*(a1 + 40) addObject:v8];
  }
}

- (void)_insertPlacesForClueCollection:(id)collection
{
  v3 = MEMORY[0x277CBEB58];
  collectionCopy = collection;
  v5 = [v3 set];
  v6 = [collectionCopy outputCluesForKey:*MEMORY[0x277D27578]];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__PGPhotosGraphProfile__insertPlacesForClueCollection___block_invoke;
  v16[3] = &unk_27887EE98;
  v7 = v5;
  v17 = v7;
  [v6 enumerateObjectsUsingBlock:v16];
  v8 = [collectionCopy outputCluesForKey:*MEMORY[0x277D274F0]];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__PGPhotosGraphProfile__insertPlacesForClueCollection___block_invoke_2;
  v14 = &unk_27887EE98;
  v15 = v7;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:&v11];
  allObjects = [v9 allObjects];
  [collectionCopy mergeClues:allObjects];
}

void __55__PGPhotosGraphProfile__insertPlacesForClueCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D27730];
  v4 = a2;
  v5 = [v4 value];
  [v4 confidence];
  v7 = v6;
  [v4 relevance];
  v11 = [v3 clueWithValue:v5 forKey:@"ROI" confidence:v7 relevance:v8];

  v9 = [v4 relatedInputLocationClues];

  v10 = [v9 firstObject];
  [v11 setRelatedData:v10];

  [*(a1 + 32) addObject:v11];
}

void __55__PGPhotosGraphProfile__insertPlacesForClueCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D27730];
  v4 = a2;
  v5 = [v4 value];
  [v4 confidence];
  v7 = v6;
  [v4 relevance];
  v11 = [v3 clueWithValue:v5 forKey:@"POI" confidence:v7 relevance:v8];

  v9 = [v4 relatedInputLocationClues];

  v10 = [v9 firstObject];
  [v11 setRelatedData:v10];

  [*(a1 + 32) addObject:v11];
}

- (void)_insertEventCluesForClueCollection:(id)collection serviceManager:(id)manager locationCache:(id)cache
{
  collectionCopy = collection;
  managerCopy = manager;
  cacheCopy = cache;
  v10 = [managerCopy eventsForClueCollection:collectionCopy];
  array = [MEMORY[0x277CBEB18] array];
  [v10 count];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __88__PGPhotosGraphProfile__insertEventCluesForClueCollection_serviceManager_locationCache___block_invoke;
  v19 = &unk_27887EE70;
  v20 = collectionCopy;
  v21 = cacheCopy;
  v22 = managerCopy;
  v23 = array;
  v12 = array;
  v13 = managerCopy;
  v14 = cacheCopy;
  v15 = collectionCopy;
  [v10 enumerateObjectsUsingBlock:&v16];
  [v15 mergeClues:{v12, v16, v17, v18, v19}];
}

void __88__PGPhotosGraphProfile__insertEventCluesForClueCollection_serviceManager_locationCache___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 location];
  v32 = v3;
  if (v4)
  {
    v5 = [v3 location];
    [v5 coordinate];
    v7 = v6;
    v9 = v8;
    v43 = v6;
    v44 = v8;

    if ([MEMORY[0x277D3ACD0] canUseCoordinate:{v7, v9}])
    {
      [*(a1 + 32) locations];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v10 = v42 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v39 objects:v47 count:16];
      v12 = v10;
      if (v11)
      {
        v13 = v11;
        v14 = *v40;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v40 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v39 + 1) + 8 * i);
            if (([MEMORY[0x277D3ACD0] locationIsCoarse:v16] & 1) == 0)
            {
              [v16 coordinate];
              v37 = v17;
              v38 = v18;
              CLLocationCoordinate2DGetDistanceFrom();
              if (v19 < 1500.0)
              {

                v12 = [MEMORY[0x277D276E0] clueWithLocation:v4 locationCache:*(a1 + 40)];
                v20 = MEMORY[0x277D276F0];
                v21 = [v3 startDate];
                v46[0] = v21;
                v22 = [v3 endDate];
                v46[1] = v22;
                v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
                v24 = [v20 clueWithDates:v23 serviceManager:*(a1 + 48)];

                v3 = v32;
                [*(a1 + 56) addObject:v12];
                [*(a1 + 56) addObject:v24];

                goto LABEL_14;
              }
            }
          }

          v13 = [v10 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

        v12 = v10;
      }

LABEL_14:
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = [v3 attendees];
  v26 = [v25 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v34;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v33 + 1) + 8 * j) objectForKeyedSubscript:@"name"];
        if (v30)
        {
          v31 = [MEMORY[0x277D276E8] clueWithPeople:v30 serviceManager:*(a1 + 48)];
          [*(a1 + 56) addObject:v31];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v27);
  }
}

- (PGPhotosGraphProfile)initWithSceneTaxonomy:(id)taxonomy
{
  taxonomyCopy = taxonomy;
  v5 = [(PGPhotosGraphProfile *)self init];
  if (v5)
  {
    v6 = [objc_opt_class() _computeBlockedTaxonomyNodeNamesWithSceneTaxonomy:taxonomyCopy];
    blockedTaxonomyNodeNames = v5->_blockedTaxonomyNodeNames;
    v5->_blockedTaxonomyNodeNames = v6;
  }

  return v5;
}

- (PGPhotosGraphProfile)init
{
  v7.receiver = self;
  v7.super_class = PGPhotosGraphProfile;
  v2 = [(CLSProfile *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3C800]);
    sceneNames = [v3 sceneNames];
    personalTraitsSceneNames = v2->_personalTraitsSceneNames;
    v2->_personalTraitsSceneNames = sceneNames;
  }

  return v2;
}

+ (id)_computeBlockedTaxonomyNodeNamesWithSceneTaxonomy:(id)taxonomy
{
  v22 = *MEMORY[0x277D85DE8];
  taxonomyCopy = taxonomy;
  v5 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  _blockedNamesToTraverse = [self _blockedNamesToTraverse];
  v7 = [_blockedNamesToTraverse countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(_blockedNamesToTraverse);
        }

        v11 = [taxonomyCopy nodeForName:*(*(&v17 + 1) + 8 * i)];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __74__PGPhotosGraphProfile__computeBlockedTaxonomyNodeNamesWithSceneTaxonomy___block_invoke;
        v15[3] = &unk_2788884F0;
        v16 = v5;
        [v11 traverseChildrenUsingNameBlock:v15];
      }

      v8 = [_blockedNamesToTraverse countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  _blockedNames = [selfCopy _blockedNames];
  [v5 addObjectsFromArray:_blockedNames];

  return v5;
}

+ (id)informantDependenciesIdentifiers
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D27608];
  v5[0] = *MEMORY[0x277D27610];
  v5[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  return v3;
}

@end