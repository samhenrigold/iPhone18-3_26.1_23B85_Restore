@interface PGGraphIngestBusinessProcessor
+ (id)_spatialMapCategoriesByMeaningIdentifier;
- (BOOL)_momentNode:(id)node hasValidConstraintsForLocationOfInterestVisit:(id)visit requiredCriteriaByPOIIdentifier:(id)identifier meaningfulEventProcessorCache:(id)cache;
- (BOOL)shouldRunWithGraphUpdate:(id)update;
- (PGGraphIngestBusinessProcessor)initWithGraphBuilder:(id)builder;
- (id)_businessItemContainersToEnrichForLowConfidenceDisambiguation:(id)disambiguation requiredCriteriaByPOIIdentifier:(id)identifier meaningfulEventProcessorCache:(id)cache;
- (id)_predominantVisitForMomentNode:(id)node publicEventBusinessItemMuid:(unint64_t)muid;
- (id)requiredCriteriaByPOIIdentifierForGraph:(id)graph;
- (void)_insertBusinessItemsForMomentNodesToResolvedBusinessItems:(id)items graph:(id)graph progressBlock:(id)block;
- (void)_insertBusinessItemsFromMomentNodes:(id)nodes graph:(id)graph withLocationOfInterestVisitsToResolveByMomentUUID:(id)d requiredCriteriaByPOIIdentifier:(id)identifier progressBlock:(id)block;
- (void)deleteBusinessCategoryNodesWithNoEdges:(id)edges;
- (void)deleteBusinessEdgesWithMomentNodes:(id)nodes inGraph:(id)graph;
- (void)deleteBusinessNodesWithNoInEdgesInGraph:(id)graph;
- (void)runWithGraphUpdate:(id)update progressBlock:(id)block;
@end

@implementation PGGraphIngestBusinessProcessor

- (id)requiredCriteriaByPOIIdentifierForGraph:(id)graph
{
  v14[10] = *MEMORY[0x277D85DE8];
  v14[0] = @"Performance";
  v14[1] = @"SportEvent";
  v14[2] = @"Lunch";
  v14[3] = @"Dinner";
  v14[4] = @"Breakfast";
  v14[5] = @"NightOut";
  v14[6] = @"Entertainment";
  v14[7] = @"AmusementPark";
  v14[8] = @"Museum";
  v14[9] = @"Concert";
  v4 = MEMORY[0x277CBEA60];
  graphCopy = graph;
  v6 = [v4 arrayWithObjects:v14 count:10];
  sceneTaxonomy = [(PGGraphBuilder *)self->_graphBuilder sceneTaxonomy];
  v8 = [PGMeaningfulEventRequiredCriteriaFactory requiredCriteriaForIdentifiers:v6 inferenceType:0 graph:graphCopy sceneTaxonomy:sceneTaxonomy];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__PGGraphIngestBusinessProcessor_requiredCriteriaByPOIIdentifierForGraph___block_invoke;
  v12[3] = &unk_2788807E0;
  v10 = v9;
  v13 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];

  return v10;
}

void __74__PGGraphIngestBusinessProcessor_requiredCriteriaByPOIIdentifierForGraph___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a3;
  v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v16 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v6 = [v5 poisTrait];
        v7 = [v6 nodes];

        if ([v7 count])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v18 = v7;
          v8 = [v7 labels];
          v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v20;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v20 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v19 + 1) + 8 * j);
                v14 = [*(a1 + 32) objectForKeyedSubscript:v13];
                if (!v14)
                {
                  v14 = [MEMORY[0x277CBEB58] set];
                  [*(a1 + 32) setObject:v14 forKeyedSubscript:v13];
                }

                [v14 addObject:v5];
              }

              v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v10);
          }

          v7 = v18;
        }
      }

      v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }
}

- (id)_predominantVisitForMomentNode:(id)node publicEventBusinessItemMuid:(unint64_t)muid
{
  nodeCopy = node;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__15654;
  v38 = __Block_byref_object_dispose__15655;
  v39 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__15654;
  v31 = __Block_byref_object_dispose__15655;
  v32 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v7 = *MEMORY[0x277D27628] != muid;
  serviceManager = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[PGGraphIngestBusinessProcessor _predominantVisitForMomentNode:publicEventBusinessItemMuid:]", "PGGraphIngestBusinessProcessor.m", 577, "serviceManager != nil");
  }

  universalStartDate = [nodeCopy universalStartDate];
  universalEndDate = [nodeCopy universalEndDate];
  v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:universalStartDate endDate:universalEndDate];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__PGGraphIngestBusinessProcessor__predominantVisitForMomentNode_publicEventBusinessItemMuid___block_invoke;
  v17[3] = &unk_2788807B8;
  v12 = serviceManager;
  v18 = v12;
  v13 = v11;
  v19 = v13;
  v20 = &v34;
  v25 = v7;
  v21 = v33;
  v22 = &v27;
  v23 = v26;
  muidCopy = muid;
  [nodeCopy enumeratePreciseAddressNodesUsingBlock:v17];
  v14 = v28[5];
  if (!v14)
  {
    v14 = v35[5];
  }

  v15 = v14;

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v34, 8);

  return v15;
}

void __93__PGGraphIngestBusinessProcessor__predominantVisitForMomentNode_publicEventBusinessItemMuid___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [a2 location];
  if (v3)
  {
    v4 = [*(a1 + 32) fetchLocationOfInterestVisitsAtLocation:v3 inDateInterval:*(a1 + 40)];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v5)
    {
      goto LABEL_20;
    }

    v6 = v5;
    v7 = *v19;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 visitInterval];
        [v10 duration];
        v12 = v11;

        v13 = *(*(a1 + 48) + 8);
        v15 = *(v13 + 40);
        v14 = (v13 + 40);
        if (!v15 || v12 > *(*(*(a1 + 56) + 8) + 24))
        {
          objc_storeStrong(v14, v9);
          *(*(*(a1 + 56) + 8) + 24) = v12;
        }

        if (*(a1 + 88) == 1)
        {
          v16 = [v9 locationOfInterest];
          if ([v16 businessItemMuid] != *(a1 + 80))
          {

            continue;
          }

          if (!*(*(*(a1 + 64) + 8) + 40))
          {

LABEL_17:
            objc_storeStrong((*(*(a1 + 64) + 8) + 40), v9);
            *(*(*(a1 + 72) + 8) + 24) = v12;
            continue;
          }

          v17 = *(*(*(a1 + 72) + 8) + 24);

          if (v12 > v17)
          {
            goto LABEL_17;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v6)
      {
LABEL_20:

        break;
      }
    }
  }
}

- (id)_businessItemContainersToEnrichForLowConfidenceDisambiguation:(id)disambiguation requiredCriteriaByPOIIdentifier:(id)identifier meaningfulEventProcessorCache:(id)cache
{
  disambiguationCopy = disambiguation;
  identifierCopy = identifier;
  cacheCopy = cache;
  v11 = [MEMORY[0x277CBEB58] set];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __158__PGGraphIngestBusinessProcessor__businessItemContainersToEnrichForLowConfidenceDisambiguation_requiredCriteriaByPOIIdentifier_meaningfulEventProcessorCache___block_invoke;
  v42[3] = &unk_2788875D0;
  v12 = v11;
  v43 = v12;
  [disambiguationCopy enumeratePOINodesUsingBlock:v42];
  name = [disambiguationCopy name];
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  v14 = PGIsAppleInternal_isAppleInternal;
  if ([v12 count])
  {
    v26 = cacheCopy;
    v27 = identifierCopy;
    v15 = [MEMORY[0x277CBEB58] set];
    poiCache = [(PGGraphBuilder *)self->_graphBuilder poiCache];
    _spatialMapCategoriesByMeaningIdentifier = [objc_opt_class() _spatialMapCategoriesByMeaningIdentifier];
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy__15654;
    v40[4] = __Block_byref_object_dispose__15655;
    v41 = 0;
    serviceManager = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __158__PGGraphIngestBusinessProcessor__businessItemContainersToEnrichForLowConfidenceDisambiguation_requiredCriteriaByPOIIdentifier_meaningfulEventProcessorCache___block_invoke_2;
    v28[3] = &unk_278880790;
    v29 = v12;
    v30 = v27;
    v38 = v40;
    v31 = disambiguationCopy;
    v32 = cacheCopy;
    v19 = serviceManager;
    v33 = v19;
    v20 = _spatialMapCategoriesByMeaningIdentifier;
    v34 = v20;
    v21 = poiCache;
    v35 = v21;
    v22 = v15;
    v36 = v22;
    v39 = v14;
    v37 = name;
    [v31 enumerateConsolidatedAddressesUsingBlock:v28];
    v23 = v37;
    v24 = v22;

    _Block_object_dispose(v40, 8);
    cacheCopy = v26;
    identifierCopy = v27;
  }

  else
  {
    v24 = [MEMORY[0x277CBEB98] set];
  }

  return v24;
}

void __158__PGGraphIngestBusinessProcessor__businessItemContainersToEnrichForLowConfidenceDisambiguation_requiredCriteriaByPOIIdentifier_meaningfulEventProcessorCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void __158__PGGraphIngestBusinessProcessor__businessItemContainersToEnrichForLowConfidenceDisambiguation_requiredCriteriaByPOIIdentifier_meaningfulEventProcessorCache___block_invoke_2(uint64_t a1, void *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 duration];
  if (v4 >= 1800.0)
  {
    [v3 centerCoordinates];
    v6 = v5;
    v8 = v7;
    v9 = objc_alloc(MEMORY[0x277CBFBC8]);
    [MEMORY[0x277D27768] defaultPrecision];
    v11 = v10;
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];
    v57 = [v9 initWithCenter:v13 radius:v6 identifier:{v8, v11}];

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = *(a1 + 32);
    v53 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
    if (v53)
    {
      v52 = *v74;
      do
      {
        v14 = 0;
        do
        {
          if (*v74 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v54 = v14;
          v15 = [*(a1 + 40) objectForKeyedSubscript:*(*(&v73 + 1) + 8 * v14)];
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v58 = v15;
          v16 = [v58 countByEnumeratingWithState:&v69 objects:v83 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v70;
            v55 = *v70;
            do
            {
              v19 = 0;
              v56 = v17;
              do
              {
                if (*v70 != v18)
                {
                  objc_enumerationMutation(v58);
                }

                v20 = *(*(&v69 + 1) + 8 * v19);
                v21 = objc_autoreleasePoolPush();
                v22 = *(*(*(a1 + 104) + 8) + 40);
                if (!v22)
                {
                  v23 = [[PGMeaningfulEventMatchingCriteria alloc] initWithMoment:*(a1 + 48) cache:*(a1 + 56) serviceManager:*(a1 + 64)];
                  v24 = *(*(a1 + 104) + 8);
                  v25 = *(v24 + 40);
                  *(v24 + 40) = v23;

                  v22 = *(*(*(a1 + 104) + 8) + 40);
                }

                v26 = [v22 matchingResultWithCriteria:v20];
                v27 = [v26 isMatching];

                if (v27)
                {
                  v28 = *(a1 + 72);
                  v29 = [v20 identifier];
                  v30 = [v28 objectForKeyedSubscript:v29];

                  v31 = [*(a1 + 80) businessItemsInRegion:v57 categories:v30 maximumDistance:50.0];
                  v32 = [v31 count];
                  if (v32)
                  {
                    v61 = v21;
                    v62 = v19;
                    v59 = v31;
                    v60 = v30;
                    if (v32 > 3)
                    {
                      v68[0] = MEMORY[0x277D85DD0];
                      v68[1] = 3221225472;
                      v68[2] = __158__PGGraphIngestBusinessProcessor__businessItemContainersToEnrichForLowConfidenceDisambiguation_requiredCriteriaByPOIIdentifier_meaningfulEventProcessorCache___block_invoke_3;
                      v68[3] = &__block_descriptor_48_e45_q24__0__CLSBusinessItem_8__CLSBusinessItem_16l;
                      *&v68[4] = v6;
                      *&v68[5] = v8;
                      v34 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 comparator:v68];
                      v82 = v34;
                      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
                      v36 = [v31 sortedArrayUsingDescriptors:v35];

                      v37 = [v36 subarrayWithRange:{0, 3}];
                      v33 = [MEMORY[0x277CBEB98] setWithArray:v37];
                    }

                    else
                    {
                      v33 = v31;
                    }

                    v66 = 0u;
                    v67 = 0u;
                    v64 = 0u;
                    v65 = 0u;
                    v63 = v33;
                    v38 = [v63 countByEnumeratingWithState:&v64 objects:v81 count:16];
                    if (v38)
                    {
                      v39 = v38;
                      v40 = *v65;
                      do
                      {
                        v41 = 0;
                        do
                        {
                          if (*v65 != v40)
                          {
                            objc_enumerationMutation(v63);
                          }

                          v42 = *(*(&v64 + 1) + 8 * v41);
                          v43 = objc_autoreleasePoolPush();
                          v44 = objc_alloc(MEMORY[0x277CCA970]);
                          v45 = [v3 startDate];
                          v46 = [v3 endDate];
                          v47 = [v44 initWithStartDate:v45 endDate:v46];

                          v48 = [[PGGraphIngestBusinessItemContainer alloc] initWithBusinessItem:v42 dateInterval:v47];
                          [*(a1 + 88) addObject:v48];
                          if (*(a1 + 112) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
                          {
                            v49 = *(a1 + 96);
                            v50 = [v42 muid];
                            *buf = 138412546;
                            v78 = v49;
                            v79 = 2048;
                            v80 = v50;
                            _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[IngestBusiness] [%@] Matching constraints for business %lu.", buf, 0x16u);
                          }

                          objc_autoreleasePoolPop(v43);
                          ++v41;
                        }

                        while (v39 != v41);
                        v39 = [v63 countByEnumeratingWithState:&v64 objects:v81 count:16];
                      }

                      while (v39);
                    }

                    v18 = v55;
                    v17 = v56;
                    v21 = v61;
                    v19 = v62;
                    v31 = v59;
                    v30 = v60;
                  }
                }

                objc_autoreleasePoolPop(v21);
                ++v19;
              }

              while (v19 != v17);
              v17 = [v58 countByEnumeratingWithState:&v69 objects:v83 count:16];
            }

            while (v17);
          }

          v14 = v54 + 1;
        }

        while (v54 + 1 != v53);
        v53 = [obj countByEnumeratingWithState:&v73 objects:v84 count:16];
      }

      while (v53);
    }
  }
}

uint64_t __158__PGGraphIngestBusinessProcessor__businessItemContainersToEnrichForLowConfidenceDisambiguation_requiredCriteriaByPOIIdentifier_meaningfulEventProcessorCache___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 region];
  [v6 center];
  v21 = v7;
  v22 = v8;

  v9 = [v5 region];
  [v9 center];
  v19 = v10;
  v20 = v11;

  CLLocationCoordinate2DGetDistanceFrom();
  v13 = v12;
  CLLocationCoordinate2DGetDistanceFrom();
  if (v13 <= v14)
  {
    if (v13 < v14)
    {
      v15 = -1;
    }

    else
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "muid", v19, v20, v21, v22)}];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "muid")}];
      v15 = [v16 compare:v17];
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (BOOL)_momentNode:(id)node hasValidConstraintsForLocationOfInterestVisit:(id)visit requiredCriteriaByPOIIdentifier:(id)identifier meaningfulEventProcessorCache:(id)cache
{
  nodeCopy = node;
  visitCopy = visit;
  identifierCopy = identifier;
  cacheCopy = cache;
  locationOfInterest = [visitCopy locationOfInterest];
  businessItemMuid = [locationOfInterest businessItemMuid];
  name = [nodeCopy name];
  if (businessItemMuid != *MEMORY[0x277D27628])
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    visitInterval = [visitCopy visitInterval];
    [visitInterval duration];
    v20 = v19;

    if (v20 >= 3600.0)
    {
      if ([visitCopy isHighConfidence])
      {
        v17 = 1;
        *(v38 + 24) = 1;
        goto LABEL_10;
      }
    }

    else if (v20 < 1800.0)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x2020000000;
      v32[3] = 0;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __154__PGGraphIngestBusinessProcessor__momentNode_hasValidConstraintsForLocationOfInterestVisit_requiredCriteriaByPOIIdentifier_meaningfulEventProcessorCache___block_invoke;
      v31[3] = &unk_278880720;
      v31[4] = v32;
      v31[5] = &v33;
      [nodeCopy enumerateConsolidatedAddressesUsingBlock:v31];
      v21 = *(v34 + 24);
      _Block_object_dispose(v32, 8);
      _Block_object_dispose(&v33, 8);
      if (!v21)
      {
        v17 = 0;
LABEL_10:
        _Block_object_dispose(&v37, 8);
        goto LABEL_11;
      }
    }

    serviceManager = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __154__PGGraphIngestBusinessProcessor__momentNode_hasValidConstraintsForLocationOfInterestVisit_requiredCriteriaByPOIIdentifier_meaningfulEventProcessorCache___block_invoke_2;
    v25[3] = &unk_278880748;
    v26 = identifierCopy;
    v27 = nodeCopy;
    v28 = cacheCopy;
    v23 = serviceManager;
    v29 = v23;
    v30 = &v37;
    [v27 enumeratePOINodesUsingBlock:v25];

    v17 = *(v38 + 24);
    goto LABEL_10;
  }

  v17 = 0;
LABEL_11:

  return v17 & 1;
}

void *__154__PGGraphIngestBusinessProcessor__momentNode_hasValidConstraintsForLocationOfInterestVisit_requiredCriteriaByPOIIdentifier_meaningfulEventProcessorCache___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 duration];
  *(*(*(a1 + 32) + 8) + 24) = v6;
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) >= 1800.0;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

void __154__PGGraphIngestBusinessProcessor__momentNode_hasValidConstraintsForLocationOfInterestVisit_requiredCriteriaByPOIIdentifier_meaningfulEventProcessorCache___block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = [a2 label];
  v7 = [v5 objectForKeyedSubscript:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      v14 = [PGMeaningfulEventMatchingCriteria alloc];
      v15 = [(PGMeaningfulEventMatchingCriteria *)v14 initWithMoment:a1[5] cache:a1[6] serviceManager:a1[7], v17];
      v16 = [(PGMeaningfulEventMatchingCriteria *)v15 matchingResultWithCriteria:v13];
      *(*(a1[8] + 8) + 24) = [v16 isMatching];

      LOBYTE(v16) = *(*(a1[8] + 8) + 24);
      if (v16)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  *a3 = *(*(a1[8] + 8) + 24);
}

- (void)_insertBusinessItemsFromMomentNodes:(id)nodes graph:(id)graph withLocationOfInterestVisitsToResolveByMomentUUID:(id)d requiredCriteriaByPOIIdentifier:(id)identifier progressBlock:(id)block
{
  v111 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  graphCopy = graph;
  dCopy = d;
  identifierCopy = identifier;
  blockCopy = block;
  v50 = nodesCopy;
  if ([nodesCopy count])
  {
    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v99 = 0x3FE0000000000000;
    v43 = blockCopy;
    v49 = _Block_copy(blockCopy);
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v95 = 0;
    v88 = 0;
    v89 = &v88;
    v90 = 0x2020000000;
    v91 = 0;
    if (v49)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v89[3] >= 0.01)
      {
        v89[3] = Current;
        v102[0] = 0;
        v49[2](v49, v102, v97[3]);
        v14 = *(v93 + 24) | v102[0];
        *(v93 + 24) = v14;
        if (v14)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *&buf[4] = 262;
            LOWORD(v107) = 2080;
            *(&v107 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestBusinessProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_37;
        }
      }
    }

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v16 = [MEMORY[0x277CBEB58] set];
    v17 = [nodesCopy count];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __172__PGGraphIngestBusinessProcessor__insertBusinessItemsFromMomentNodes_graph_withLocationOfInterestVisitsToResolveByMomentUUID_requiredCriteriaByPOIIdentifier_progressBlock___block_invoke;
    aBlock[3] = &unk_2788806D0;
    v45 = strongToStrongObjectsMapTable;
    v86 = v45;
    v44 = v16;
    v87 = v44;
    v18 = _Block_copy(aBlock);
    *buf = 0;
    *&v107 = buf;
    *(&v107 + 1) = 0x3032000000;
    v108 = __Block_byref_object_copy__15654;
    v109 = __Block_byref_object_dispose__15655;
    v110 = [[PGMeaningfulEventProcessorCache alloc] initWithMomentNodes:nodesCopy];
    serviceManager = [(PGGraphBuilder *)self->_graphBuilder serviceManager];
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __172__PGGraphIngestBusinessProcessor__insertBusinessItemsFromMomentNodes_graph_withLocationOfInterestVisitsToResolveByMomentUUID_requiredCriteriaByPOIIdentifier_progressBlock___block_invoke_2;
    v72[3] = &unk_2788806F8;
    v73 = dCopy;
    selfCopy = self;
    v75 = identifierCopy;
    v79 = buf;
    v41 = serviceManager;
    v76 = v41;
    v40 = v18;
    v77 = v40;
    v42 = v49;
    v78 = v42;
    v80 = &v88;
    v83 = 0x3F847AE147AE147BLL;
    v81 = &v96;
    v82 = &v92;
    v84 = 0.2 / v17;
    [nodesCopy enumerateNodesUsingBlock:v72];
    if ([v45 count])
    {
      businessCacheUpdater = self->_businessCacheUpdater;
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __172__PGGraphIngestBusinessProcessor__insertBusinessItemsFromMomentNodes_graph_withLocationOfInterestVisitsToResolveByMomentUUID_requiredCriteriaByPOIIdentifier_progressBlock___block_invoke_332;
      v66[3] = &unk_27888A110;
      v21 = v42;
      v67 = v21;
      v68 = &v88;
      v71 = xmmword_22F78C010;
      v69 = &v96;
      v70 = &v92;
      v22 = [(CLSBusinessCacheUpdater *)businessCacheUpdater enrichedBusinessItemsByMuidsForBusinessItems:v44 progressBlock:v66];
      v97[3] = v97[3] + 0.2;
      if (v49)
      {
        v23 = CFAbsoluteTimeGetCurrent();
        if (v23 - v89[3] >= 0.01)
        {
          v89[3] = v23;
          v65 = 0;
          v21[2](v21, &v65, v97[3]);
          v24 = *(v93 + 24) | v65;
          *(v93 + 24) = v24;
          if (v24)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *v102 = 67109378;
              v103 = 343;
              v104 = 2080;
              v105 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestBusinessProcessor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v102, 0x12u);
            }

LABEL_36:
            _Block_object_dispose(buf, 8);

LABEL_37:
            _Block_object_dispose(&v88, 8);
            _Block_object_dispose(&v92, 8);

            _Block_object_dispose(&v96, 8);
            blockCopy = v43;
            goto LABEL_38;
          }
        }
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v45;
      v25 = [obj countByEnumeratingWithState:&v61 objects:v101 count:16];
      if (v25)
      {
        v51 = *v62;
        do
        {
          v26 = 0;
          v52 = v25;
          do
          {
            if (*v62 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v55 = v26;
            v27 = *(*(&v61 + 1) + 8 * v26);
            context = objc_autoreleasePoolPush();
            v28 = [obj objectForKey:v27];
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v29 = v28;
            v30 = [v29 countByEnumeratingWithState:&v57 objects:v100 count:16];
            if (v30)
            {
              v31 = *v58;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v58 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v33 = *(*(&v57 + 1) + 8 * i);
                  businessItem = [v33 businessItem];
                  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(businessItem, "muid")}];
                  v36 = [v22 objectForKeyedSubscript:v35];

                  if (v36)
                  {
                    [v33 updateBusinessItem:v36];
                    v37 = [(PGGraphBuilder *)self->_graphBuilder insertBusiness:v33 fromMomentNode:v27];
                  }
                }

                v30 = [v29 countByEnumeratingWithState:&v57 objects:v100 count:16];
              }

              while (v30);
            }

            objc_autoreleasePoolPop(context);
            v26 = v55 + 1;
          }

          while (v55 + 1 != v52);
          v25 = [obj countByEnumeratingWithState:&v61 objects:v101 count:16];
        }

        while (v25);
      }
    }

    if (v49)
    {
      v38 = CFAbsoluteTimeGetCurrent();
      if (v38 - v89[3] >= 0.01)
      {
        v89[3] = v38;
        v65 = 0;
        v42[2](v42, &v65, 1.0);
        v39 = *(v93 + 24) | v65;
        *(v93 + 24) = v39;
        if ((v39 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v102 = 67109378;
          v103 = 360;
          v104 = 2080;
          v105 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestBusinessProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v102, 0x12u);
        }
      }
    }

    goto LABEL_36;
  }

LABEL_38:
}

void __172__PGGraphIngestBusinessProcessor__insertBusinessItemsFromMomentNodes_graph_withLocationOfInterestVisitsToResolveByMomentUUID_requiredCriteriaByPOIIdentifier_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKey:v10];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v7 forKey:v10];
  }

  [v7 addObject:v6];
  v8 = *(a1 + 40);
  v9 = [v6 businessItem];

  [v8 addObject:v9];
}

void __172__PGGraphIngestBusinessProcessor__insertBusinessItemsFromMomentNodes_graph_withLocationOfInterestVisitsToResolveByMomentUUID_requiredCriteriaByPOIIdentifier_progressBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = [v5 uuid];
  v9 = [v7 objectForKeyedSubscript:v8];

  if ([v9 count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v10)
    {
      v11 = v10;
      v34 = v9;
      v35 = a3;
      v36 = v6;
      v40 = *v46;
      v38 = *MEMORY[0x277D27628];
      v12 = "GraphPOIProcessingV2";
      v37 = v5;
      while (1)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v46 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          if (_os_feature_enabled_impl() && ([v14 isHighConfidence] & 1) != 0)
          {
            v15 = +[PGLogging sharedLogging];
            v16 = [v15 loggingConnection];

            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              v51 = v14;
              _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_DEFAULT, "[IngestBusiness] Not using constraint validation for visit:%{private}@", buf, 0xCu);
            }
          }

          else if (([*(a1 + 40) _momentNode:v5 hasValidConstraintsForLocationOfInterestVisit:v14 requiredCriteriaByPOIIdentifier:*(a1 + 48) meaningfulEventProcessorCache:*(*(*(a1 + 80) + 8) + 40)] & 1) == 0)
          {
            continue;
          }

          v17 = objc_alloc_init(MEMORY[0x277D27680]);
          v18 = [v14 locationOfInterest];
          [v17 setMuid:{objc_msgSend(v18, "businessItemMuid")}];

          v19 = v12;
          if (_os_feature_enabled_impl())
          {
            v20 = *(a1 + 56);
            [v14 identifier];
            v22 = v21 = v11;
            v23 = [v20 fetchFinerGranularityBusinessItemNumberForVisitIdentifier:v22];

            v11 = v21;
            if (v23 != v38)
            {
              v24 = +[PGLogging sharedLogging];
              v25 = [v24 loggingConnection];

              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [v17 muid];
                *buf = 134283777;
                v51 = v23;
                v52 = 2049;
                v53 = v26;
                _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_DEFAULT, "[BusinessIngest][BusinessProcessor] Using finerGranularity business item MUID:%{private}llu | Business Item MUID:%{private}llu", buf, 0x16u);
              }

              [v17 setMuid:v23];
              v5 = v37;
              v11 = v21;
            }
          }

          v27 = [[PGGraphIngestBusinessItemContainer alloc] initWithBusinessItem:v17 visit:v14];
          (*(*(a1 + 64) + 16))();

          v12 = v19;
        }

        v11 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (!v11)
        {
          a3 = v35;
          v6 = v36;
          v9 = v34;
          break;
        }
      }
    }
  }

  else
  {
    [*(a1 + 40) _businessItemContainersToEnrichForLowConfidenceDisambiguation:v5 requiredCriteriaByPOIIdentifier:*(a1 + 48) meaningfulEventProcessorCache:*(*(*(a1 + 80) + 8) + 40)];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v44 = 0u;
    v28 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v42;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(obj);
          }

          (*(*(a1 + 64) + 16))();
        }

        v29 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v29);
    }
  }

  if (*(a1 + 72) && (Current = CFAbsoluteTimeGetCurrent(), v33 = *(*(a1 + 88) + 8), Current - *(v33 + 24) >= *(a1 + 112)) && (*(v33 + 24) = Current, buf[0] = 0, (*(*(a1 + 72) + 16))(*(*(*(a1 + 96) + 8) + 24)), *(*(*(a1 + 104) + 8) + 24) |= buf[0], *(*(*(a1 + 104) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    *(*(*(a1 + 96) + 8) + 24) = *(a1 + 120) + *(*(*(a1 + 96) + 8) + 24);
  }

  objc_autoreleasePoolPop(v6);
}

void __172__PGGraphIngestBusinessProcessor__insertBusinessItemsFromMomentNodes_graph_withLocationOfInterestVisitsToResolveByMomentUUID_requiredCriteriaByPOIIdentifier_progressBlock___block_invoke_332(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 64))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(*(*(a1 + 48) + 8) + 24) + *(a1 + 72) * a3);
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)_insertBusinessItemsForMomentNodesToResolvedBusinessItems:(id)items graph:(id)graph progressBlock:(id)block
{
  v64 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  graphCopy = graph;
  blockCopy = block;
  v11 = _Block_copy(blockCopy);
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  if (v11 && (v12 = CFAbsoluteTimeGetCurrent(), v12 - v48[3] >= 0.01) && (v48[3] = v12, LOBYTE(v38) = 0, (*(v11 + 2))(v11, &v38, 0.0), v13 = *(v52 + 24) | v38, *(v52 + 24) = v13, (v13 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 186;
      LOWORD(v60) = 2080;
      *(&v60 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestBusinessProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    v14 = MEMORY[0x277CBEB98];
    allKeys = [itemsCopy allKeys];
    v16 = [v14 setWithArray:allKeys];

    *buf = 0;
    *&v60 = buf;
    *(&v60 + 1) = 0x3032000000;
    v61 = __Block_byref_object_copy__15654;
    v62 = __Block_byref_object_dispose__15655;
    businessCacheUpdater = self->_businessCacheUpdater;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __112__PGGraphIngestBusinessProcessor__insertBusinessItemsForMomentNodesToResolvedBusinessItems_graph_progressBlock___block_invoke;
    v42[3] = &unk_27888A1B0;
    v18 = v11;
    v43 = v18;
    v44 = &v47;
    v46 = xmmword_22F78C020;
    v45 = &v51;
    v63 = [(CLSBusinessCacheUpdater *)businessCacheUpdater enrichedBusinessItemsByMuidsForMuids:v16 progressBlock:v42];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0x3FDCCCCCCCCCCCCDLL;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    *&v37[3] = 0.05 / [itemsCopy count];
    if (v11 && (v19 = CFAbsoluteTimeGetCurrent(), v19 - v48[3] >= 0.01) && (v48[3] = v19, v36 = 0, (*(v18 + 2))(v18, &v36, v39[3]), v20 = *(v52 + 24) | v36, *(v52 + 24) = v20, (v20 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v55 = 67109378;
        v56 = 198;
        v57 = 2080;
        v58 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestBusinessProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v55, 0x12u);
      }
    }

    else
    {
      publicEventManager = [(PGGraphBuilder *)self->_graphBuilder publicEventManager];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __112__PGGraphIngestBusinessProcessor__insertBusinessItemsForMomentNodesToResolvedBusinessItems_graph_progressBlock___block_invoke_319;
      v26[3] = &unk_2788806A8;
      v30 = buf;
      v22 = publicEventManager;
      v27 = v22;
      selfCopy = self;
      v31 = &v38;
      v32 = v37;
      v23 = v18;
      v29 = v23;
      v33 = &v47;
      v34 = &v51;
      v35 = 0x3F847AE147AE147BLL;
      [itemsCopy enumerateKeysAndObjectsUsingBlock:v26];
      if (v11)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v48[3] >= 0.01)
        {
          v48[3] = Current;
          v36 = 0;
          (*(v23 + 2))(v23, &v36, 0.5);
          v25 = *(v52 + 24) | v36;
          *(v52 + 24) = v25;
          if ((v25 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v55 = 67109378;
            v56 = 245;
            v57 = 2080;
            v58 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Ingest/Ingest Processing/PGGraphIngestBusinessProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v55, 0x12u);
          }
        }
      }
    }

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
}

void __112__PGGraphIngestBusinessProcessor__insertBusinessItemsForMomentNodesToResolvedBusinessItems_graph_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(*(a1 + 64) * a3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __112__PGGraphIngestBusinessProcessor__insertBusinessItemsForMomentNodesToResolvedBusinessItems_graph_progressBlock___block_invoke_319(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v26 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:a2];
  if (v26)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = v6;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v25 = *v33;
      v24 = *MEMORY[0x277D27628];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          v11 = [v10 publicEventNode];
          v12 = [*(a1 + 32) cachedPublicEventsForMuid:{objc_msgSend(v11, "muid")}];
          v13 = [v12 anyObject];
          v14 = v13;
          v15 = v24;
          if (v13)
          {
            v15 = [v13 businessItemMuid];
          }

          v16 = [v11 collection];
          v17 = [v16 momentNodes];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __112__PGGraphIngestBusinessProcessor__insertBusinessItemsForMomentNodesToResolvedBusinessItems_graph_progressBlock___block_invoke_2;
          v27[3] = &unk_278880680;
          v27[4] = *(a1 + 40);
          v31 = v15;
          v28 = v26;
          v29 = v10;
          v30 = v11;
          v18 = v11;
          [v17 enumerateNodesUsingBlock:v27];
        }

        v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v8);
    }

    *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + *(*(*(a1 + 64) + 8) + 24);
    v6 = v22;
    if (*(a1 + 48))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v20 = *(*(a1 + 80) + 8);
      if (Current - *(v20 + 24) >= *(a1 + 96))
      {
        *(v20 + 24) = Current;
        (*(*(a1 + 48) + 16))(*(*(*(a1 + 64) + 8) + 24));
        *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
        if (*(*(*(a1 + 88) + 8) + 24) == 1)
        {
          *a4 = 1;
        }
      }
    }
  }
}

void __112__PGGraphIngestBusinessProcessor__insertBusinessItemsForMomentNodesToResolvedBusinessItems_graph_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  v5 = a2;
  v13 = [v3 _predominantVisitForMomentNode:v5 publicEventBusinessItemMuid:v4];
  if (v13)
  {
    v6 = [[PGGraphIngestBusinessItemContainer alloc] initWithBusinessItem:*(a1 + 40) visit:v13];
  }

  else
  {
    v7 = [*(a1 + 48) consolidatedAddress];
    v8 = [v7 startDate];
    v9 = [v7 endDate];
    v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v9];
    v6 = [[PGGraphIngestBusinessItemContainer alloc] initWithBusinessItem:*(a1 + 40) dateInterval:v10];
  }

  v11 = [*(*(a1 + 32) + 8) insertBusiness:v6 fromMomentNode:v5];

  v12 = [*(*(a1 + 32) + 8) connectPublicEventNode:*(a1 + 56) withBusinessNode:v11];
}

- (void)deleteBusinessCategoryNodesWithNoEdges:(id)edges
{
  v13 = *MEMORY[0x277D85DE8];
  edgesCopy = edges;
  v5 = [(PGGraphNodeCollection *)PGGraphBusinessCategoryNodeCollection nodesInGraph:edgesCopy];
  categories = [v5 categories];
  v7 = [PGGraphBusinessCategoryNode filterWithCategories:categories];
  [v7 setWhereNoInAndOutEdges:1];
  v8 = [edgesCopy nodeIdentifiersMatchingFilter:v7];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = [v8 count];
    _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "[IngestBusiness] Deleted %lu business category nodes from the graph", &v11, 0xCu);
  }

  v10 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v10 removeNodesForIdentifiers:v8];
  [edgesCopy executeGraphChangeRequest:v10];
}

- (void)deleteBusinessNodesWithNoInEdgesInGraph:(id)graph
{
  v11 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = +[PGGraphBusinessNode filter];
  [v5 setWhereNoInEdges:1];
  v6 = [graphCopy nodeIdentifiersMatchingFilter:v5];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    v10 = [v6 count];
    _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "[IngestBusiness] Deleted %lu business item nodes from the graph", &v9, 0xCu);
  }

  v8 = objc_alloc_init(MEMORY[0x277D22C50]);
  [v8 removeNodesForIdentifiers:v6];
  [graphCopy executeGraphChangeRequest:v8];
}

- (void)deleteBusinessEdgesWithMomentNodes:(id)nodes inGraph:(id)graph
{
  v5 = MEMORY[0x277D22C50];
  graphCopy = graph;
  nodesCopy = nodes;
  v10 = objc_alloc_init(v5);
  businessNodes = [nodesCopy businessNodes];
  v9 = [(PGGraphEdgeCollection *)PGGraphPlaceBusinessEdgeCollection edgesFromNodes:nodesCopy toNodes:businessNodes];

  [v10 removeEdges:v9];
  [graphCopy executeGraphChangeRequest:v10];
}

- (void)runWithGraphUpdate:(id)update progressBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  blockCopy = block;
  graph = [(PGGraphBuilder *)self->_graphBuilder graph];
  loggingConnection = [(PGGraphBuilder *)self->_graphBuilder loggingConnection];
  v9 = os_signpost_id_generate(loggingConnection);
  v10 = loggingConnection;
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PGGraphIngestBusinessProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v13 = mach_absolute_time();
  v14 = [updateCopy momentNodesToProcessInGraph:graph forMomentUpdateTypes:objc_msgSend(objc_opt_class() includeInsertedNodes:{"requiredMomentUpdateTypes"), 1}];
  [(PGGraphIngestBusinessProcessor *)self deleteBusinessEdgesWithMomentNodes:v14 inGraph:graph];
  registeredResolvableItemsByBusinessItemMuid = [updateCopy registeredResolvableItemsByBusinessItemMuid];
  if ([registeredResolvableItemsByBusinessItemMuid count])
  {
    [(PGGraphIngestBusinessProcessor *)self _insertBusinessItemsForMomentNodesToResolvedBusinessItems:registeredResolvableItemsByBusinessItemMuid graph:graph progressBlock:blockCopy];
  }

  if ([v14 count])
  {
    registeredLocationOfInterestVisitsToResolveByMomentUUID = [updateCopy registeredLocationOfInterestVisitsToResolveByMomentUUID];
    [(PGGraphIngestBusinessProcessor *)self requiredCriteriaByPOIIdentifierForGraph:graph];
    v28 = v11;
    v17 = registeredResolvableItemsByBusinessItemMuid;
    v18 = v9 - 1;
    v19 = updateCopy;
    v20 = v9;
    v22 = v21 = v13;
    [(PGGraphIngestBusinessProcessor *)self _insertBusinessItemsFromMomentNodes:v14 graph:graph withLocationOfInterestVisitsToResolveByMomentUUID:registeredLocationOfInterestVisitsToResolveByMomentUUID requiredCriteriaByPOIIdentifier:v22 progressBlock:blockCopy];

    v13 = v21;
    v9 = v20;
    updateCopy = v19;
    v12 = v18;
    registeredResolvableItemsByBusinessItemMuid = v17;
    v11 = v28;
  }

  [(PGGraphIngestBusinessProcessor *)self deleteBusinessNodesWithNoInEdgesInGraph:graph];
  [(PGGraphIngestBusinessProcessor *)self deleteBusinessCategoryNodesWithNoEdges:graph];
  v23 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v26 = v11;
  v27 = v26;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_END, v9, "PGGraphIngestBusinessProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "PGGraphIngestBusinessProcessor";
    v33 = 2048;
    v34 = ((((v23 - v13) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

- (BOOL)shouldRunWithGraphUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy isResumingFullAnalysis] & 1) != 0 || (objc_msgSend(updateCopy, "hasMomentsToInsert") & 1) != 0 || (objc_msgSend(updateCopy, "hasMomentsToDelete"))
  {
    v4 = 1;
  }

  else
  {
    momentUpdateTypes = [updateCopy momentUpdateTypes];
    v4 = ([objc_opt_class() requiredMomentUpdateTypes] & momentUpdateTypes) != 0;
  }

  return v4;
}

- (PGGraphIngestBusinessProcessor)initWithGraphBuilder:(id)builder
{
  builderCopy = builder;
  v13.receiver = self;
  v13.super_class = PGGraphIngestBusinessProcessor;
  v6 = [(PGGraphIngestBusinessProcessor *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphBuilder, builder);
    v8 = objc_alloc(MEMORY[0x277D27678]);
    poiCache = [builderCopy poiCache];
    v10 = [v8 initWithBusinessCategoryCache:poiCache];
    businessCacheUpdater = v7->_businessCacheUpdater;
    v7->_businessCacheUpdater = v10;
  }

  return v7;
}

+ (id)_spatialMapCategoriesByMeaningIdentifier
{
  if (_spatialMapCategoriesByMeaningIdentifier_onceToken != -1)
  {
    dispatch_once(&_spatialMapCategoriesByMeaningIdentifier_onceToken, &__block_literal_global_15715);
  }

  v3 = _spatialMapCategoriesByMeaningIdentifier_spatialMapCategoriesByMeaningIdentifier;

  return v3;
}

void __74__PGGraphIngestBusinessProcessor__spatialMapCategoriesByMeaningIdentifier__block_invoke()
{
  v3[12] = *MEMORY[0x277D85DE8];
  v2[0] = @"Performance";
  v2[1] = @"Concert";
  v3[0] = &unk_2844856D0;
  v3[1] = &unk_2844856E8;
  v2[2] = @"SportEvent";
  v2[3] = @"Lunch";
  v3[2] = &unk_284485700;
  v3[3] = &unk_284485718;
  v2[4] = @"Dinner";
  v2[5] = @"Breakfast";
  v3[4] = &unk_284485730;
  v3[5] = &unk_284485748;
  v2[6] = @"NightOut";
  v2[7] = @"Entertainment";
  v3[6] = &unk_284485760;
  v3[7] = &unk_284485778;
  v2[8] = @"AmusementPark";
  v2[9] = @"Museum";
  v3[8] = &unk_284485790;
  v3[9] = &unk_2844857A8;
  v2[10] = @"Diving";
  v2[11] = @"Hiking";
  v3[10] = &unk_2844857C0;
  v3[11] = &unk_2844857D8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:12];
  v1 = _spatialMapCategoriesByMeaningIdentifier_spatialMapCategoriesByMeaningIdentifier;
  _spatialMapCategoriesByMeaningIdentifier_spatialMapCategoriesByMeaningIdentifier = v0;
}

@end