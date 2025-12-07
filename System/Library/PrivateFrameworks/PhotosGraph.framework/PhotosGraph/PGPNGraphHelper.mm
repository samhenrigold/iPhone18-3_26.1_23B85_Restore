@interface PGPNGraphHelper
+ (id)_createSocialGraphWithPersonClusterManager:(id)manager persons:(id)persons moments:(id)moments inferredMePersonLocalIdentifier:(id *)identifier updateBlock:(id)block;
+ (id)_socialGroupsLocalIdentifiersInGraph:(id)graph includeMeNode:(BOOL)node includeCouples:(BOOL)couples includeInvalid:(BOOL)invalid;
+ (id)computeFTESocialGroupsWithPhotoLibrary:(id)library updateBlock:(id)block;
+ (id)densityClusteringForObjects:(id)objects maximumDistance:(double)distance minimumNumberOfObjects:(unint64_t)ofObjects withDistanceBlock:(id)block;
+ (id)multiLevelSocialGroupsWithPersonClusterManager:(id)manager forPersons:(id)persons updateBlock:(id)block;
+ (id)socialGroupsOverTheYearsWithPersonClusterManager:(id)manager forPersons:(id)persons updateBlock:(id)block;
@end

@implementation PGPNGraphHelper

+ (id)densityClusteringForObjects:(id)objects maximumDistance:(double)distance minimumNumberOfObjects:(unint64_t)ofObjects withDistanceBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  blockCopy = block;
  v11 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:blockCopy];
  [v11 setMaximumDistance:distance];
  [v11 setMinimumNumberOfObjects:ofObjects];
  v12 = [v11 performWithDataset:objectsCopy progressBlock:0];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        objects = [*(*(&v21 + 1) + 8 * i) objects];
        [v13 addObject:objects];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v13;
}

+ (id)socialGroupsOverTheYearsWithPersonClusterManager:(id)manager forPersons:(id)persons updateBlock:(id)block
{
  v72 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  personsCopy = persons;
  blockCopy = block;
  v47 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v50 = managerCopy;
  pn_fetchMoments = [managerCopy pn_fetchMoments];
  fetchedObjects = [pn_fetchMoments fetchedObjects];
  v10 = objc_opt_new();
  v51 = fetchedObjects;
  firstObject = [fetchedObjects firstObject];
  startDate = [firstObject startDate];

  v13 = objc_opt_new();
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v14 = pn_fetchMoments;
  v15 = [v14 countByEnumeratingWithState:&v56 objects:v71 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v57;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v57 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v56 + 1) + 8 * i);
        [v13 addObject:v19];
        startDate2 = [v19 startDate];
        [startDate2 timeIntervalSinceDate:startDate];
        if (v21 > 31556926.0 || ([v51 lastObject], v22 = objc_claimAutoreleasedReturnValue(), v22, v19 == v22))
        {
          v23 = [v13 copy];
          [v10 addObject:v23];

          v24 = startDate2;
          [v13 removeAllObjects];
          startDate = v24;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v56 objects:v71 count:16];
    }

    while (v16);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v10;
  v25 = [obj countByEnumeratingWithState:&v52 objects:v70 count:16];
  if (v25)
  {
    v26 = v25;
    v46 = *v53;
    v27 = off_27887B000;
    while (2)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v53 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v52 + 1) + 8 * j);
        v30 = objc_autoreleasePoolPush();
        v31 = [(__objc2_class *)v27[370] _createSocialGraphWithPersonClusterManager:v50 persons:personsCopy moments:v29 inferredMePersonLocalIdentifier:0 updateBlock:blockCopy];
        if (!v31)
        {
          objc_autoreleasePoolPop(v30);

          objc_autoreleasePoolPop(context);
          allObjects = MEMORY[0x277CBEBF8];
          v37 = v47;
          goto LABEL_23;
        }

        v32 = v31;
        v33 = v27;
        v34 = [(__objc2_class *)v27[370] _socialGroupsLocalIdentifiersInGraph:v31 includeMeNode:1 includeCouples:1 includeInvalid:1];
        [v47 addObjectsFromArray:v34];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v41 = [v29 count];
          firstObject2 = [v29 firstObject];
          startDate3 = [firstObject2 startDate];
          lastObject = [v29 lastObject];
          endDate = [lastObject endDate];
          v36 = [v34 count];
          *buf = 134219010;
          v61 = v41;
          v62 = 2112;
          v63 = startDate3;
          v64 = 2112;
          v65 = endDate;
          v66 = 2048;
          v67 = v36;
          v68 = 2112;
          v69 = v34;
          _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Created graph from %lu moments: %@ - %@.\nFound %lu social groups: %@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v30);
        v27 = v33;
      }

      v26 = [obj countByEnumeratingWithState:&v52 objects:v70 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  objc_autoreleasePoolPop(context);
  v37 = v47;
  allObjects = [v47 allObjects];
LABEL_23:

  return allObjects;
}

+ (id)multiLevelSocialGroupsWithPersonClusterManager:(id)manager forPersons:(id)persons updateBlock:(id)block
{
  v83 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  personsCopy = persons;
  blockCopy = block;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"highlyInteresting == YES"];
  v11 = [personsCopy filteredSetUsingPredicate:v10];

  if ([v11 count] <= 3)
  {
    v12 = personsCopy;

    v11 = v12;
  }

  v13 = objc_opt_new();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v74;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v74 != v17)
        {
          objc_enumerationMutation(v14);
        }

        backingMomentIdentifiers = [*(*(&v73 + 1) + 8 * i) backingMomentIdentifiers];
        [v13 unionSet:backingMomentIdentifiers];
      }

      v16 = [v14 countByEnumeratingWithState:&v73 objects:v82 count:16];
    }

    while (v16);
  }

  allObjects = [v13 allObjects];
  v21 = [managerCopy pn_fetchMomentsWithLocalIdentifiers:allObjects];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v49 = [v14 count];
    v50 = [v21 count];
    *buf = 134218240;
    v79 = v49;
    v80 = 2048;
    v81 = v50;
    _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Generating graph with %lu persons, %lu moments", buf, 0x16u);
  }

  v22 = blockCopy;
  v23 = [PGPNGraphHelper _createSocialGraphWithPersonClusterManager:managerCopy persons:v14 moments:v21 inferredMePersonLocalIdentifier:0 updateBlock:blockCopy];
  v24 = v23;
  if (!v23)
  {
    v48 = MEMORY[0x277CBEBF8];
    goto LABEL_44;
  }

  v63 = personsCopy;
  meNode = [v23 meNode];
  localIdentifier = [meNode localIdentifier];

  v27 = [PGPNGraphHelper _socialGroupsLocalIdentifiersInGraph:v24 includeMeNode:1 includeCouples:1 includeInvalid:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v28 = [v27 count];
    *buf = 134218242;
    v79 = v28;
    v80 = 2112;
    v81 = v27;
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Found %lu social groups, %@", buf, 0x16u);
  }

  if ([v27 count])
  {
    v29 = MEMORY[0x277CCAC30];
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __89__PGPNGraphHelper_multiLevelSocialGroupsWithPersonClusterManager_forPersons_updateBlock___block_invoke;
    v70[3] = &unk_2788844E8;
    v62 = v27;
    v71 = v62;
    localIdentifier = localIdentifier;
    v72 = localIdentifier;
    v30 = [v29 predicateWithBlock:v70];
    v31 = [v63 filteredSetUsingPredicate:v30];

    if ([v31 count] < 3)
    {
      v44 = 1;
    }

    else
    {
      v57 = v24;
      v58 = v21;
      v59 = v22;
      v60 = managerCopy;
      v64 = objc_opt_new();
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v61 = v31;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v66 objects:v77 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v67;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v67 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v66 + 1) + 8 * j);
            localIdentifier2 = [v37 localIdentifier];
            v39 = [localIdentifier2 isEqualToString:localIdentifier];

            if ((v39 & 1) == 0)
            {
              backingMomentIdentifiers2 = [v37 backingMomentIdentifiers];
              [v64 unionSet:backingMomentIdentifiers2];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v66 objects:v77 count:16];
        }

        while (v34);
      }

      allObjects2 = [v64 allObjects];
      managerCopy = v60;
      v42 = [v60 pn_fetchMomentsWithLocalIdentifiers:allObjects2];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v53 = [v32 count];
        v54 = [v42 count];
        *buf = 134218240;
        v79 = v53;
        v80 = 2048;
        v81 = v54;
        _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Generating extra graph with %lu persons, %lu moments", buf, 0x16u);
      }

      v65 = localIdentifier;
      v56 = v42;
      v22 = v59;
      v43 = [PGPNGraphHelper _createSocialGraphWithPersonClusterManager:v60 persons:v32 moments:v42 inferredMePersonLocalIdentifier:&v65 updateBlock:v59];
      v55 = v65;

      v44 = v43 != 0;
      v31 = v61;
      if (v43)
      {
        v45 = [PGPNGraphHelper _socialGroupsLocalIdentifiersInGraph:v43 includeMeNode:1 includeCouples:0 includeInvalid:0];
        if ([v45 count])
        {
          v46 = [v62 arrayByAddingObjectsFromArray:v45];

          v24 = v57;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v47 = [v45 count];
            *buf = 134218242;
            v79 = v47;
            v80 = 2112;
            v81 = v45;
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Adding %lu extra social groups, %@", buf, 0x16u);
          }

          v31 = v61;
        }

        else
        {
          v46 = v62;
          v24 = v57;
        }

        v62 = v46;
      }

      else
      {
        v24 = v57;
      }

      localIdentifier = v55;
      v21 = v58;
    }

    if (!v44)
    {
      v48 = MEMORY[0x277CBEBF8];
      v51 = v62;
      goto LABEL_43;
    }

    v27 = v62;
  }

  v51 = v27;
  v48 = v51;
LABEL_43:

  personsCopy = v63;
LABEL_44:

  return v48;
}

uint64_t __89__PGPNGraphHelper_multiLevelSocialGroupsWithPersonClusterManager_forPersons_updateBlock___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [a2 localIdentifier];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * v8) containsObject:{v3, v11}] && !objc_msgSend(v3, "isEqualToString:", *(a1 + 40)))
        {
          v9 = 0;
          goto LABEL_12;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_12:

  return v9;
}

+ (id)computeFTESocialGroupsWithPhotoLibrary:(id)library updateBlock:(id)block
{
  v53 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  blockCopy = block;
  v7 = objc_alloc(MEMORY[0x277D3C7F0]);
  v8 = [v7 initWithPhotoLibrary:libraryCopy rawClusters:MEMORY[0x277CBEC10] includesPets:1];
  v9 = [objc_alloc(MEMORY[0x277D3C7E0]) initWithPhotoLibrary:v8];
  v10 = [v9 pn_fetchPersonsWithType:1];
  v11 = MEMORY[0x277CBEB58];
  v38 = v10;
  fetchedObjects = [v10 fetchedObjects];
  v13 = [v11 setWithArray:fetchedObjects];

  v14 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v45;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v15);
        }

        backingMomentIdentifiers = [*(*(&v44 + 1) + 8 * i) backingMomentIdentifiers];
        [v14 unionSet:backingMomentIdentifiers];
      }

      v17 = [v15 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v17);
  }

  allObjects = [v14 allObjects];
  v22 = [v9 pn_fetchMomentsWithLocalIdentifiers:allObjects];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v33 = [v15 count];
    v34 = [v22 count];
    *buf = 134218240;
    v49 = v33;
    v50 = 2048;
    v51 = v34;
    _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Generating graph with %lu persons, %lu moments", buf, 0x16u);
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __70__PGPNGraphHelper_computeFTESocialGroupsWithPhotoLibrary_updateBlock___block_invoke;
  v42[3] = &unk_2788844C0;
  v23 = blockCopy;
  v43 = v23;
  v39 = v9;
  v24 = [PGPNGraphHelper _createSocialGraphWithPersonClusterManager:v9 persons:v15 moments:v22 inferredMePersonLocalIdentifier:0 updateBlock:v42];
  if (v24)
  {
    v35 = [[PGManager alloc] initWithGraph:v24 photoLibrary:libraryCopy];
    v25 = [[PGGraphBuilder alloc] initWithGraph:v24 manager:v35];
    v26 = [[PGGraphIngestSocialGroupsProcessor alloc] initWithGraphBuilder:v25];
    v36 = libraryCopy;
    v37 = v8;
    v27 = [[PGGraphUpdate alloc] initWithPhotoLibrary:libraryCopy updateType:3];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __70__PGPNGraphHelper_computeFTESocialGroupsWithPhotoLibrary_updateBlock___block_invoke_2;
    v40[3] = &unk_27888A280;
    v41 = v23;
    [(PGGraphIngestSocialGroupsProcessor *)v26 runWithGraphUpdate:v27 progressBlock:v40];
    [(PGGraphIngestSocialGroupsProcessor *)v26 persistenceActions];
    v29 = v28 = v22;
    if (v29)
    {
      v30 = v24;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    v22 = v28;
    libraryCopy = v36;
    v8 = v37;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

+ (id)_socialGroupsLocalIdentifiersInGraph:(id)graph includeMeNode:(BOOL)node includeCouples:(BOOL)couples includeInvalid:(BOOL)invalid
{
  graphCopy = graph;
  v10 = objc_opt_new();
  meNode = [graphCopy meNode];
  localIdentifier = [meNode localIdentifier];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__PGPNGraphHelper__socialGroupsLocalIdentifiersInGraph_includeMeNode_includeCouples_includeInvalid___block_invoke;
  aBlock[3] = &unk_278884498;
  couplesCopy = couples;
  nodeCopy = node;
  v26 = localIdentifier;
  v13 = v10;
  v27 = v13;
  v14 = localIdentifier;
  v15 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __100__PGPNGraphHelper__socialGroupsLocalIdentifiersInGraph_includeMeNode_includeCouples_includeInvalid___block_invoke_2;
  v23[3] = &unk_2788861E0;
  v24 = v15;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__PGPNGraphHelper__socialGroupsLocalIdentifiersInGraph_includeMeNode_includeCouples_includeInvalid___block_invoke_3;
  v20[3] = &unk_278886208;
  invalidCopy = invalid;
  v21 = v24;
  v16 = v24;
  [graphCopy enumerateSocialGroupsIncludingMeNode:0 validGroupsBlock:v23 invalidGroupsBlock:v20 averageWeight:0];

  v17 = v21;
  v18 = v13;

  return v13;
}

void __100__PGPNGraphHelper__socialGroupsLocalIdentifiersInGraph_includeMeNode_includeCouples_includeInvalid___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) localIdentifier];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ((*(a1 + 48) & 1) != 0 || [v4 count] >= 2)
  {
    if (*(a1 + 49) == 1 && [*(a1 + 32) length])
    {
      [v4 addObject:*(a1 + 32)];
    }

    [*(a1 + 40) addObject:{v4, v11}];
  }
}

uint64_t __100__PGPNGraphHelper__socialGroupsLocalIdentifiersInGraph_includeMeNode_includeCouples_includeInvalid___block_invoke_3(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

+ (id)_createSocialGraphWithPersonClusterManager:(id)manager persons:(id)persons moments:(id)moments inferredMePersonLocalIdentifier:(id *)identifier updateBlock:(id)block
{
  v110 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  personsCopy = persons;
  momentsCopy = moments;
  blockCopy = block;
  if (!momentsCopy)
  {
    momentsCopy = [managerCopy pn_fetchMoments];
  }

  v13 = objc_alloc_init(PGMutableGraph);
  v71 = managerCopy;
  if (identifier)
  {
    v80 = *identifier;
  }

  else
  {
    v80 = 0;
  }

  v98 = 0;
  v14 = [momentsCopy count];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v15 = momentsCopy;
  v74 = [v15 countByEnumeratingWithState:&v94 objects:v109 count:16];
  if (v74)
  {
    v73 = *v95;
    v16 = 0.0 / v14;
    v81 = v13;
    v72 = v15;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v95 != v73)
        {
          objc_enumerationMutation(v15);
        }

        v18 = *(*(&v94 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, &v98, v16);
        if (v98)
        {
          objc_autoreleasePoolPop(v19);

          v58 = 0;
          v55 = v71;
          goto LABEL_43;
        }

        context = v19;
        v79 = v17;
        v107[0] = @"utcs";
        v20 = MEMORY[0x277CCABB0];
        obja = [v18 startDate];
        [obja timeIntervalSince1970];
        v83 = [v20 numberWithDouble:?];
        v108[0] = v83;
        v107[1] = @"utce";
        v21 = MEMORY[0x277CCABB0];
        endDate = [v18 endDate];
        [endDate timeIntervalSince1970];
        v23 = [v21 numberWithDouble:?];
        v108[1] = v23;
        v107[2] = @"tzs";
        v24 = MEMORY[0x277CCABB0];
        startDate = [v18 startDate];
        [startDate timeIntervalSince1970];
        v26 = [v24 numberWithDouble:?];
        v108[2] = v26;
        v107[3] = @"tze";
        v27 = MEMORY[0x277CCABB0];
        endDate2 = [v18 endDate];
        [endDate2 timeIntervalSince1970];
        v29 = [v27 numberWithDouble:?];
        v108[3] = v29;
        v107[4] = @"cnt";
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "estimatedAssetCount")}];
        v108[4] = v30;
        v107[5] = @"lclid";
        localIdentifier = [v18 localIdentifier];
        v108[5] = localIdentifier;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:6];

        v13 = v81;
        v77 = v32;
        v82 = [(PGMutableGraph *)v81 addUniqueNodeWithLabel:@"Moment" domain:100 properties:v32 didCreate:0];
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        obj = personsCopy;
        v33 = [obj countByEnumeratingWithState:&v90 objects:v106 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v91;
          do
          {
            v36 = 0;
            v84 = v34;
            do
            {
              if (*v91 != v35)
              {
                objc_enumerationMutation(obj);
              }

              v37 = *(*(&v90 + 1) + 8 * v36);
              v38 = objc_autoreleasePoolPush();
              backingMomentIdentifiers = [v37 backingMomentIdentifiers];
              localIdentifier2 = [v18 localIdentifier];
              v41 = [backingMomentIdentifiers containsObject:localIdentifier2];

              if (v41)
              {
                v42 = v18;
                anonymizedName = [v37 anonymizedName];
                v44 = anonymizedName;
                v45 = &stru_2843F5C58;
                if (anonymizedName)
                {
                  v45 = anonymizedName;
                }

                v46 = v45;

                localIdentifier3 = [v37 localIdentifier];
                v104[0] = @"name";
                v104[1] = @"id";
                v105[0] = v46;
                v105[1] = localIdentifier3;
                v104[2] = @"usercreated";
                v48 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v37, "isVerified")}];
                v105[2] = v48;
                v104[3] = @"fav";
                v49 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v37, "favorite")}];
                v105[3] = v49;
                v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:4];

                if (v80)
                {
                  localIdentifier4 = [v37 localIdentifier];
                  v52 = [v80 isEqualToString:localIdentifier4];

                  if (v52)
                  {
                    v53 = @"Me";
                  }

                  else
                  {
                    v53 = @"People";
                  }
                }

                else
                {
                  v53 = @"People";
                }

                v13 = v81;
                v54 = [(PGMutableGraph *)v81 addUniqueNodeWithLabel:v53 domain:300 properties:v50 didCreate:0];
                [(PGMutableGraph *)v81 addUniqueEdgeWithLabel:@"PRESENT" sourceNode:v54 targetNode:v82 domain:300 properties:0];

                v18 = v42;
                v34 = v84;
              }

              objc_autoreleasePoolPop(v38);
              ++v36;
            }

            while (v34 != v36);
            v34 = [obj countByEnumeratingWithState:&v90 objects:v106 count:16];
          }

          while (v34);
        }

        objc_autoreleasePoolPop(context);
        v17 = v79 + 1;
        v15 = v72;
      }

      while (v79 + 1 != v74);
      v74 = [v72 countByEnumeratingWithState:&v94 objects:v109 count:16];
      if (v74)
      {
        continue;
      }

      break;
    }
  }

  v55 = v71;
  if (!v80)
  {
    inferMeNodeFromSocialGroups = [(PGGraph *)v13 inferMeNodeFromSocialGroups];
    if (inferMeNodeFromSocialGroups)
    {
      v57 = inferMeNodeFromSocialGroups;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v100 = v57;
        _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "inferredMeNode found %@", buf, 0xCu);
      }

      if (v70)
      {
        *v70 = [v57 localIdentifier];
      }
    }

    else
    {
      if (![personsCopy count])
      {
        goto LABEL_42;
      }

      v59 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"faceCount" ascending:0];
      v103 = v59;
      v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
      v61 = [personsCopy sortedArrayUsingDescriptors:v60];

      firstObject = [v61 firstObject];
      localIdentifier5 = [firstObject localIdentifier];
      v57 = [(PGGraph *)v13 personNodeForPersonLocalIdentifier:localIdentifier5];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v100 = v57;
        v101 = 2112;
        v102 = firstObject;
        _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "inferredMeNode fallback found %@ - backing person: %@", buf, 0x16u);
      }

      if (!v57)
      {
        goto LABEL_42;
      }
    }

    propertyDictionary = [v57 propertyDictionary];
    v65 = [(PGMutableGraph *)v13 addUniqueNodeWithLabel:@"Me" domain:300 properties:propertyDictionary didCreate:0];

    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __122__PGPNGraphHelper__createSocialGraphWithPersonClusterManager_persons_moments_inferredMePersonLocalIdentifier_updateBlock___block_invoke;
    v87[3] = &unk_278885D60;
    v66 = v13;
    v88 = v66;
    v89 = v65;
    v67 = v65;
    [v57 enumerateEdgesWithLabel:@"PRESENT" domain:300 usingBlock:v87];
    v68 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v68 removeNode:v57];
    [(MAGraph *)v66 executeGraphChangeRequest:v68];
  }

LABEL_42:
  v58 = v13;
LABEL_43:

  return v58;
}

void __122__PGPNGraphHelper__createSocialGraphWithPersonClusterManager_persons_moments_inferredMePersonLocalIdentifier_updateBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 targetNode];
  v5 = [v2 addUniqueEdgeWithLabel:@"PRESENT" sourceNode:v3 targetNode:v4 domain:300 properties:0];
}

@end