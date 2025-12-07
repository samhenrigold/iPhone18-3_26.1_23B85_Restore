@interface PGLocationTripTitleUtility
+ (BOOL)visitedLocations:(id)locations onlyDuringMoments:(id)moments locationHelper:(id)helper;
+ (id)_filteredCityNodesByNameForCityNodes:(id)nodes;
+ (void)_aoiTitleWithLocationNodes:(id)nodes momentNodes:(id)momentNodes allowLongAOI:(BOOL)i graph:(id)graph locationHelper:(id)helper result:(id)result;
+ (void)_cityStateAndCountryNodesForLocationNodes:(id)nodes result:(id)result;
- (PGLocationTripTitleUtility)initWithMomentNodes:(id)nodes filterMomentsAndCities:(BOOL)cities allowLongAOI:(BOOL)i locationHelper:(id)helper;
- (id)_bestAddressNodeForCityNodes:(id)nodes inMomentNodes:(id)momentNodes;
- (id)_cityNodesFromMomentNodes:(id)nodes;
- (id)_locationTitleWithLocationNode:(id)node addressNode:(id)addressNode countryNode:(id)countryNode allowSecondPart:(BOOL)part;
- (void)_cityTitleWithCityNode:(id)node countryNode:(id)countryNode visitedCountryOnlyOnce:(BOOL)once momentNodes:(id)nodes result:(id)result;
- (void)_generateLocationTitle;
- (void)_generateTitleForMomentNodes:(id)nodes resolvedMomentNodes:(id)momentNodes resolvedLocations:(id)locations;
- (void)_resolveMomentNodes:(id)nodes withResult:(id)result;
@end

@implementation PGLocationTripTitleUtility

- (id)_locationTitleWithLocationNode:(id)node addressNode:(id)addressNode countryNode:(id)countryNode allowSecondPart:(BOOL)part
{
  partCopy = part;
  nodeCopy = node;
  addressNodeCopy = addressNode;
  countryNodeCopy = countryNode;
  v13 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:nodeCopy locationHelper:self->_locationHelper];
  if (partCopy)
  {
    graph = [countryNodeCopy graph];
    supersetCountryNodes = [graph supersetCountryNodes];

    if ([supersetCountryNodes containsNode:countryNodeCopy])
    {
    }

    else
    {
      name = [countryNodeCopy name];
      v17 = [PGCountrySize isLargeCountry:name];

      if (v17)
      {
        v18 = 8;
      }

      else
      {
        v18 = 9;
      }

      v19 = [PGLocationTitleUtility _twoPartLocationTitleWithFirstPartTitle:v13 withDimension:v18 usedFirstPartLocationNode:nodeCopy addressNode:addressNodeCopy locationHelper:self->_locationHelper];

      if (v19)
      {
        goto LABEL_9;
      }
    }
  }

  v19 = v13;
LABEL_9:

  return v19;
}

- (id)_bestAddressNodeForCityNodes:(id)nodes inMomentNodes:(id)momentNodes
{
  v58 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  momentNodesCopy = momentNodes;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = nodesCopy;
  v28 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v28)
  {
    bestAddressNode = 0;
    v26 = *v52;
    v7 = -1.79769313e308;
    do
    {
      v8 = 0;
      do
      {
        if (*v52 != v26)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v29 = v8;
        v10 = *(*(&v51 + 1) + 8 * v8);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v30 = momentNodesCopy;
        v11 = [v30 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v11)
        {
          v12 = *v48;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v48 != v12)
              {
                objc_enumerationMutation(v30);
              }

              v14 = *(*(&v47 + 1) + 8 * i);
              v43 = 0;
              v44 = &v43;
              v45 = 0x2020000000;
              v46 = 0;
              *buf = 0;
              v38 = buf;
              v39 = 0x3032000000;
              v40 = __Block_byref_object_copy__48759;
              v41 = __Block_byref_object_dispose__48760;
              v42 = 0;
              v36[0] = MEMORY[0x277D85DD0];
              v36[1] = 3221225472;
              v36[2] = __73__PGLocationTripTitleUtility__bestAddressNodeForCityNodes_inMomentNodes___block_invoke;
              v36[3] = &unk_2788852E8;
              v36[4] = self;
              v36[5] = v10;
              v36[6] = &v43;
              v36[7] = buf;
              [v14 enumerateAddressEdgesAndNodesUsingBlock:v36];
              v15 = v44[3];
              if (v15 > v7)
              {
                v16 = *(v38 + 5);
                v17 = bestAddressNode;
                bestAddressNode = v16;

                v7 = v15;
              }

              _Block_object_dispose(buf, 8);

              _Block_object_dispose(&v43, 8);
            }

            v11 = [v30 countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v11);
        }

        v8 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v28);

    if (bestAddressNode)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v18 = +[PGLogging sharedLogging];
  loggingConnection = [v18 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Could not find best address for city in moments. Using any address", buf, 2u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = momentNodesCopy;
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v55 count:16];
  if (v21)
  {
    v22 = *v33;
LABEL_24:
    v23 = 0;
    while (1)
    {
      if (*v33 != v22)
      {
        objc_enumerationMutation(v20);
      }

      bestAddressNode = [*(*(&v32 + 1) + 8 * v23) bestAddressNode];
      if (bestAddressNode)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [v20 countByEnumeratingWithState:&v32 objects:v55 count:16];
        if (v21)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_30:
    bestAddressNode = 0;
  }

LABEL_32:

  return bestAddressNode;
}

void __73__PGLocationTripTitleUtility__bestAddressNodeForCityNodes_inMomentNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) cityNodeFromAddressNode:v5];
  v7 = [v6 anyNode];

  if (!v7)
  {
    v7 = [*(*(a1 + 32) + 48) resolvedLocationNodeForIncompleteAddressNode:v5 withTargetDimension:6];
  }

  if ([*(a1 + 40) isSameNodeAsNode:v7])
  {
    [v10 relevance];
    if (v8 > *(*(*(a1 + 48) + 8) + 24))
    {
      [v10 relevance];
      *(*(*(a1 + 48) + 8) + 24) = v9;
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    }
  }
}

- (void)_cityTitleWithCityNode:(id)node countryNode:(id)countryNode visitedCountryOnlyOnce:(BOOL)once momentNodes:(id)nodes result:(id)result
{
  onceCopy = once;
  selfCopy = self;
  v40 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  countryNodeCopy = countryNode;
  nodesCopy = nodes;
  resultCopy = result;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = nodesCopy;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v14)
  {
    v15 = *v31;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v31 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v30 + 1) + 8 * v16);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __107__PGLocationTripTitleUtility__cityTitleWithCityNode_countryNode_visitedCountryOnlyOnce_momentNodes_result___block_invoke;
      v29[3] = &unk_2788852C0;
      v29[4] = &v34;
      [v17 enumerateROINodesUsingBlock:{v29, selfCopy, nodeCopy}];
      if (v35[3])
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = countryNodeCopy;
  v19 = *(v35 + 24);
  v20 = nodeCopy;
  v21 = v20;
  if (!onceCopy || (v19 & 1) != 0)
  {
    name = [v20 name];
  }

  else
  {
    v38 = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v23 = [(PGLocationTripTitleUtility *)selfCopy _bestAddressNodeForCityNodes:v22 inMomentNodes:v13];

    name = [(PGLocationTripTitleUtility *)selfCopy _locationTitleWithLocationNode:v21 addressNode:v23 countryNode:v18 allowSecondPart:1];
  }

  if (v21)
  {
    [MEMORY[0x277CBEB98] setWithObject:v21];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v25 = ;
  if (resultCopy)
  {
    resultCopy[2](resultCopy, name, v25);
  }

  _Block_object_dispose(&v34, 8);
}

void __107__PGLocationTripTitleUtility__cityTitleWithCityNode_countryNode_visitedCountryOnlyOnce_momentNodes_result___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 label];
  v6 = [v5 isEqualToString:@"Urban"];

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)_cityNodesFromMomentNodes:(id)nodes
{
  v25 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = nodesCopy;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __56__PGLocationTripTitleUtility__cityNodesFromMomentNodes___block_invoke;
        v17[3] = &unk_278885270;
        v17[4] = self;
        v18 = v6;
        v19 = array;
        [v11 enumerateAddressEdgesAndNodesUsingBlock:v17];
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__PGLocationTripTitleUtility__cityNodesFromMomentNodes___block_invoke_2;
  v15[3] = &unk_278885298;
  v16 = v6;
  v12 = v6;
  [array sortUsingComparator:v15];

  return array;
}

void __56__PGLocationTripTitleUtility__cityNodesFromMomentNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) closestLocationNodeFromLocationNode:v5 withDimension:6 reverse:0];
  v7 = [v6 label];
  v8 = [PGCommonTitleUtility dimensionForLabel:v7];

  if (v8 >= 7)
  {
    v9 = [*(*(a1 + 32) + 48) resolvedLocationNodeForIncompleteAddressNode:v5 withTargetDimension:6];
    v10 = v9;
    if (v9)
    {
      v11 = v9;

      v8 = 6;
      v6 = v11;
    }
  }

  if (v6)
  {
    v12 = [v15 universalStartDate];
    v13 = [*(a1 + 40) objectForKey:v6];
    v14 = v13;
    if (v12 && (!v13 || [v12 compare:v13] == -1))
    {
      [*(a1 + 40) setObject:v12 forKey:v6];
    }

    if (v8 == 6 && ([*(a1 + 48) containsObject:v6] & 1) == 0)
    {
      [*(a1 + 48) addObject:v6];
    }
  }
}

uint64_t __56__PGLocationTripTitleUtility__cityNodesFromMomentNodes___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  if (v7)
  {
    if (v8)
    {
      v9 = [v7 compare:v8];
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_resolveMomentNodes:(id)nodes withResult:(id)result
{
  nodesCopy = nodes;
  resultCopy = result;
  v8 = [[PGLocationsResolver alloc] initWithSortedMomentNodes:nodesCopy incompleteLocationResolver:self->_incompleteLocationResolver locationHelper:self->_locationHelper];
  if (self->_filterMomentsAndCities)
  {
    firstObject = [nodesCopy firstObject];
    graph = [firstObject graph];

    v11 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:nodesCopy graph:graph];
    frequentLocationNodes = [(PGGraphMomentNodeCollection *)v11 frequentLocationNodes];

    addressNodes = [frequentLocationNodes addressNodes];
    cityNodes = [addressNodes cityNodes];

    temporarySet = [cityNodes temporarySet];
    [(PGLocationsResolver *)v8 setIgnoredLocationNodes:temporarySet];
  }

  resolvedMomentNodes = [(PGLocationsResolver *)v8 resolvedMomentNodes];
  resolvedLocationNodes = [(PGLocationsResolver *)v8 resolvedLocationNodes];
  if (![resolvedMomentNodes count])
  {
    v18 = +[PGLogging sharedLogging];
    loggingConnection = [v18 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Filtered out all moments. Resetting to all moments.", v24, 2u);
    }

    v20 = nodesCopy;
    resolvedMomentNodes = v20;
  }

  if (![resolvedLocationNodes count])
  {
    v21 = [(PGLocationTripTitleUtility *)self _cityNodesFromMomentNodes:resolvedMomentNodes];

    resolvedLocationNodes = v21;
  }

  if (self->_filterMomentsAndCities)
  {
    v22 = [[PGLocationsFilterer alloc] initWithSortedMomentNodes:nodesCopy locationNodes:resolvedLocationNodes incompleteLocationResolver:self->_incompleteLocationResolver];
    filteredLocationNodes = [(PGLocationsFilterer *)v22 filteredLocationNodes];

    resolvedLocationNodes = filteredLocationNodes;
  }

  if (resultCopy)
  {
    resultCopy[2](resultCopy, resolvedMomentNodes, resolvedLocationNodes);
  }
}

- (void)_generateTitleForMomentNodes:(id)nodes resolvedMomentNodes:(id)momentNodes resolvedLocations:(id)locations
{
  v280 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  momentNodesCopy = momentNodes;
  locationsCopy = locations;
  v191 = momentNodesCopy;
  firstObject = [momentNodesCopy firstObject];
  graph = [firstObject graph];

  if (graph)
  {
    *buf = 0;
    v257 = buf;
    v258 = 0x3032000000;
    v259 = __Block_byref_object_copy__48759;
    v260 = __Block_byref_object_dispose__48760;
    v261 = 0;
    v250 = 0;
    v251 = &v250;
    v252 = 0x3032000000;
    v253 = __Block_byref_object_copy__48759;
    v254 = __Block_byref_object_dispose__48760;
    v255 = [MEMORY[0x277CBEB98] set];
    v244 = 0;
    v245 = &v244;
    v246 = 0x3032000000;
    v247 = __Block_byref_object_copy__48759;
    v248 = __Block_byref_object_dispose__48760;
    v249 = [MEMORY[0x277CBEB98] set];
    v238 = 0;
    v239 = &v238;
    v240 = 0x3032000000;
    v241 = __Block_byref_object_copy__48759;
    v242 = __Block_byref_object_dispose__48760;
    v243 = 0;
    v232 = 0;
    v233 = &v232;
    v234 = 0x3032000000;
    v235 = __Block_byref_object_copy__48759;
    v236 = __Block_byref_object_dispose__48760;
    v237 = 0;
    v226 = 0;
    v227 = &v226;
    v228 = 0x3032000000;
    v229 = __Block_byref_object_copy__48759;
    v230 = __Block_byref_object_dispose__48760;
    v231 = 0;
    v9 = objc_opt_class();
    v225[0] = MEMORY[0x277D85DD0];
    v225[1] = 3221225472;
    v225[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke;
    v225[3] = &unk_278885158;
    v225[4] = &v238;
    v225[5] = &v232;
    v225[6] = &v226;
    [v9 _cityStateAndCountryNodesForLocationNodes:locationsCopy result:v225];
    if (![v227[5] count])
    {
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      obj = nodesCopy;
      v12 = [obj countByEnumeratingWithState:&v221 objects:v279 count:16];
      if (v12)
      {
        v13 = *v222;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v222 != v13)
            {
              objc_enumerationMutation(obj);
            }

            collection = [*(*(&v221 + 1) + 8 * i) collection];
            addressNodes = [collection addressNodes];
            stateNodes = [addressNodes stateNodes];
            v218[0] = MEMORY[0x277D85DD0];
            v218[1] = 3221225472;
            v218[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_2;
            v218[3] = &unk_2788851A8;
            v219 = array2;
            v220 = array;
            [stateNodes enumerateNodesUsingBlock:v218];
          }

          v12 = [obj countByEnumeratingWithState:&v221 objects:v279 count:16];
        }

        while (v12);
      }

      v18 = v227[5];
      v227[5] = array;
      v19 = array;

      v20 = v233[5];
      v233[5] = array2;
    }

    if ([v227[5] count] == 1 && (objc_msgSend(v227[5], "firstObject"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "name"), v22 = objc_claimAutoreleasedReturnValue(), v23 = +[PGCountrySize isLargeCountry:](PGCountrySize, "isLargeCountry:", v22), v22, v21, v23))
    {
      v24 = [v233[5] count];
      v188 = 1;
    }

    else
    {
      v24 = [v227[5] count];
      v188 = 0;
    }

    obja = [graph supersetCountryNodes];
    supersetStateNodes = [graph supersetStateNodes];
    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v25 = v227[5];
    v26 = [v25 countByEnumeratingWithState:&v214 objects:v278 count:16];
    v186 = v24;
    if (v26)
    {
      v27 = *v215;
      while (2)
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v215 != v27)
          {
            objc_enumerationMutation(v25);
          }

          if (([obja containsNode:*(*(&v214 + 1) + 8 * j)] & 1) == 0)
          {
            v187 = 0;
            goto LABEL_25;
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v214 objects:v278 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v187 = 1;
LABEL_25:

    selfCopy2 = self;
    v189 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:self->_momentNodes graph:graph];
    if (v227[5])
    {
      v30 = [PGGraphLocationCountryNodeCollection alloc];
      v31 = [(MAElementCollection *)v30 initWithArray:v227[5] graph:graph];
      v32 = [(PGGraphLocationHelper *)self->_locationHelper addressNodesFromLocationNodes:v31];
      v184 = [objc_opt_class() visitedLocations:v32 onlyDuringMoments:v189 locationHelper:self->_locationHelper];

      selfCopy2 = self;
    }

    else
    {
      v184 = 0;
    }

    v35 = v233;
    if (v233[5])
    {
      v36 = [PGGraphLocationStateNodeCollection alloc];
      v37 = [(MAElementCollection *)v36 initWithArray:v233[5] graph:graph];
      v38 = [(PGGraphLocationHelper *)selfCopy2->_locationHelper addressNodesFromLocationNodes:v37];
      v185 = [objc_opt_class() visitedLocations:v38 onlyDuringMoments:v189 locationHelper:selfCopy2->_locationHelper];

      v35 = v233;
    }

    else
    {
      v185 = 0;
    }

    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v39 = v35[5];
    v40 = [v39 countByEnumeratingWithState:&v210 objects:v277 count:16];
    if (v40)
    {
      v41 = *v211;
      while (2)
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v211 != v41)
          {
            objc_enumerationMutation(v39);
          }

          if ([supersetStateNodes containsNode:*(*(&v210 + 1) + 8 * k)])
          {
            v183 = 1;
            goto LABEL_44;
          }
        }

        v40 = [v39 countByEnumeratingWithState:&v210 objects:v277 count:16];
        if (v40)
        {
          continue;
        }

        break;
      }
    }

    v183 = 0;
LABEL_44:

    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v43 = v227[5];
    v44 = [v43 countByEnumeratingWithState:&v206 objects:v276 count:16];
    if (v44)
    {
      v45 = *v207;
      v46 = 1;
      v47 = 1;
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v207 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v49 = *(*(&v206 + 1) + 8 * m);
          v50 = [obja containsNode:v49];
          name = [v49 name];
          v52 = [PGCountrySize isLargeCountry:name];

          v47 &= v50 ^ 1;
          v46 &= !v52;
        }

        v44 = [v43 countByEnumeratingWithState:&v206 objects:v276 count:16];
      }

      while (v44);
      v53 = v46 ^ 1;
      v54 = v47 ^ 1;
    }

    else
    {
      v53 = 0;
      v54 = 0;
    }

    firstObject2 = [nodesCopy firstObject];
    lastObject = [nodesCopy lastObject];
    universalEndDate = [lastObject universalEndDate];
    universalStartDate = [firstObject2 universalStartDate];
    [universalEndDate timeIntervalSinceDate:universalStartDate];
    v60 = v59;

    v61 = v60 < 1209600.0 || [v227[5] count] < 5;
    v62 = [objc_opt_class() _filteredCityNodesByNameForCityNodes:v239[5]];
    v63 = v239[5];
    v239[5] = v62;

    v64 = lastObject;
    v65 = [v239[5] count];
    v66 = v65;
    v68 = (v186 * 1.2) > v65 && v65 != 0;
    selfCopy5 = self;
    v70 = self->_locationHelper;
    v71 = [v233[5] count];
    v72 = v188 | v187;
    if (v71 != 1)
    {
      v72 = 0;
    }

    if ((v72 & v185) == 1)
    {
      firstObject3 = [v233[5] firstObject];
      v74 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:firstObject3 locationHelper:v70];
      v75 = v74;
      if (v74)
      {
        v275 = v74;
        v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v275 count:1];
        v77 = *(v257 + 5);
        *(v257 + 5) = v76;

        v78 = [MEMORY[0x277CBEB98] setWithObject:firstObject3];
        v79 = v251[5];
        v251[5] = v78;

        v80 = [MEMORY[0x277CBEB98] setWithObject:firstObject3];
        v81 = v245[5];
        v245[5] = v80;

        self->_tripTitleLocationType = 2;
        if (v187)
        {
          self->_tripTitleType = 2;
        }
      }
    }

    else
    {
      v82 = [v227[5] count];
      v83 = v188;
      if (v82 != 1)
      {
        v83 = 1;
      }

      if ((v187 | v83) & 1) != 0 || ((v184 ^ 1))
      {
        if (v66 == 1)
        {
          firstObject3 = [v239[5] firstObject];
          firstObject4 = [v227[5] firstObject];
          v205[0] = MEMORY[0x277D85DD0];
          v205[1] = 3221225472;
          v205[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_4;
          v205[3] = &unk_2788851D0;
          v205[6] = &v250;
          v205[7] = &v244;
          v205[4] = self;
          v205[5] = buf;
          [(PGLocationTripTitleUtility *)self _cityTitleWithCityNode:firstObject3 countryNode:firstObject4 visitedCountryOnlyOnce:v184 momentNodes:v191 result:v205];

          goto LABEL_109;
        }

        if (((v183 | v188 ^ 1) & 1) != 0 || v66 < 3)
        {
          if ((v66 < 3) | (v53 | v54) & 1 || !v61)
          {
            if (v68)
            {
              goto LABEL_98;
            }

            v111 = v187 ^ 1;
            if (v66 - 1 > 3)
            {
              v111 = 1;
            }

            if (v111)
            {
              if (!v188 || ![v233[5] count] || objc_msgSend(v233[5], "count") >= 5)
              {
                if (!v187)
                {
                  if (![v227[5] count])
                  {
                    goto LABEL_110;
                  }

                  firstObject3 = [v227[5] firstObject];
                  lastObject2 = [v227[5] lastObject];
                  v165 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:firstObject3 locationHelper:v70];
                  v166 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:lastObject2 locationHelper:v70];
                  v167 = [MEMORY[0x277CBEB98] setWithObjects:{firstObject3, lastObject2, 0}];
                  v168 = v251[5];
                  v251[5] = v167;

                  v169 = [MEMORY[0x277CBEB98] setWithArray:v227[5]];
                  v170 = v245[5];
                  v245[5] = v169;

                  self->_tripTitleLocationType = 3;
                  if (v165)
                  {
                    v171 = [firstObject3 isSameNodeAsNode:lastObject2];
                    if (v166)
                    {
                      v172 = v171;
                    }

                    else
                    {
                      v172 = 1;
                    }

                    if (v172 == 1)
                    {
                      v265 = v165;
                      v173 = [MEMORY[0x277CBEA60] arrayWithObjects:&v265 count:1];
                      v174 = *(v257 + 5);
                      *(v257 + 5) = v173;
                    }

                    else if (v61)
                    {
                      v264[0] = v165;
                      v264[1] = v166;
                      v177 = [MEMORY[0x277CBEA60] arrayWithObjects:v264 count:2];
                      v178 = *(v257 + 5);
                      *(v257 + 5) = v177;

                      if ([v227[5] count] >= 3)
                      {
                        self->_tripTitleType = 4;
                      }
                    }

                    else
                    {
                      v179 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      v180 = [v179 localizedStringForKey:@"PGLocationTitleFormatTripWorldTrip" value:@"PGLocationTitleFormatTripWorldTrip" table:@"Localizable"];
                      v263 = v180;
                      v181 = [MEMORY[0x277CBEA60] arrayWithObjects:&v263 count:1];
                      v182 = *(v257 + 5);
                      *(v257 + 5) = v181;
                    }
                  }

                  goto LABEL_109;
                }

                if (![v233[5] count])
                {
                  goto LABEL_110;
                }
              }

              firstObject3 = [v233[5] firstObject];
              lastObject3 = [v233[5] lastObject];
              v152 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:firstObject3 locationHelper:v70];
              v153 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:lastObject3 locationHelper:v70];
              v154 = [MEMORY[0x277CBEB98] setWithObjects:{firstObject3, lastObject3, 0}];
              v155 = v251[5];
              v251[5] = v154;

              v156 = [MEMORY[0x277CBEB98] setWithArray:v233[5]];
              v157 = v245[5];
              v245[5] = v156;

              self->_tripTitleLocationType = 2;
              if (v152)
              {
                v158 = [firstObject3 isSameNodeAsNode:lastObject3];
                if (v153)
                {
                  v159 = v158;
                }

                else
                {
                  v159 = 1;
                }

                if (v159 == 1)
                {
                  v267 = v152;
                  v160 = [MEMORY[0x277CBEA60] arrayWithObjects:&v267 count:1];
                  v161 = *(v257 + 5);
                  *(v257 + 5) = v160;
                }

                else
                {
                  v266[0] = v152;
                  v266[1] = v153;
                  v175 = [MEMORY[0x277CBEA60] arrayWithObjects:v266 count:2];
                  v176 = *(v257 + 5);
                  *(v257 + 5) = v175;

                  if ([v233[5] count] >= 3)
                  {
                    self->_tripTitleType = 4;
                  }
                }
              }
            }

            else
            {
LABEL_98:
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_5;
              aBlock[3] = &unk_278885220;
              v201 = v191;
              v112 = v70;
              v202 = v112;
              selfCopy4 = self;
              v204 = &v238;
              v113 = _Block_copy(aBlock);
              v114 = (*(v113 + 2))(v113, 0, 0);
              v115 = (*(v113 + 2))(v113, 1, v114);
              v116 = [MEMORY[0x277CBEB98] setWithObjects:{v114, v115, 0}];
              v117 = v251[5];
              v251[5] = v116;

              v118 = [MEMORY[0x277CBEB98] setWithArray:v239[5]];
              v119 = v245[5];
              v245[5] = v118;

              self->_tripTitleLocationType = 1;
              v120 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v114 locationHelper:v112];
              v121 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v115 locationHelper:v112];
              v122 = v121;
              if (v120)
              {
                if (v121 && ![v114 isSameNodeAsNode:v115])
                {
                  v268[0] = v120;
                  v268[1] = v122;
                  v162 = [MEMORY[0x277CBEA60] arrayWithObjects:v268 count:2];
                  v163 = *(v257 + 5);
                  *(v257 + 5) = v162;

                  if ([v239[5] count] >= 3)
                  {
                    self->_tripTitleType = 4;
                  }
                }

                else
                {
                  v269 = v120;
                  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v269 count:1];
                  v124 = *(v257 + 5);
                  *(v257 + 5) = v123;
                }
              }

              firstObject3 = v201;
            }

LABEL_109:

            selfCopy5 = self;
LABEL_110:
            v133 = objc_opt_class();
            v134 = v251[5];
            allowLongAOI = selfCopy5->_allowLongAOI;
            v199[0] = MEMORY[0x277D85DD0];
            v199[1] = 3221225472;
            v199[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_7;
            v199[3] = &unk_278885248;
            v199[6] = &v250;
            v199[7] = &v244;
            v199[4] = selfCopy5;
            v199[5] = buf;
            [v133 _aoiTitleWithLocationNodes:v134 momentNodes:v191 allowLongAOI:allowLongAOI graph:graph locationHelper:v70 result:v199];
            firstObject5 = [*(v257 + 5) firstObject];
            lastObject4 = [*(v257 + 5) lastObject];
            v138 = v64;
            if ([*(v257 + 5) count] == 1 && objc_msgSend(firstObject5, "length"))
            {
              if (self->_tripTitleType != 2)
              {
                self->_tripTitleType = 1;
              }

              v139 = firstObject5;
            }

            else
            {
              if ([*(v257 + 5) count] < 2 || !objc_msgSend(firstObject5, "length") || !objc_msgSend(lastObject4, "length"))
              {
                goto LABEL_123;
              }

              if (self->_tripTitleType == 4)
              {
                v140 = MEMORY[0x277CCACA8];
                v141 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                [v141 localizedStringForKey:@"PGLocationTitleTitleFormatTripMultipleLocationsWithLocation %@ otherLocation %@" value:@"PGLocationTitleTitleFormatTripMultipleLocationsWithLocation %@ otherLocation %@" table:@"Localizable"];
              }

              else
              {
                self->_tripTitleType = 3;
                v140 = MEMORY[0x277CCACA8];
                v141 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                [v141 localizedStringForKey:@"PGLocationTitleFormatTwoLocationsWithLocation %@ otherLocation %@" value:@"PGLocationTitleFormatTwoLocationsWithLocation %@ otherLocation %@" table:@"Localizable"];
              }
              v142 = ;
              v137 = [v140 localizedStringWithFormat:v142, firstObject5, lastObject4];

              v262[0] = firstObject5;
              v262[1] = lastObject4;
              v144 = [MEMORY[0x277CBEA60] arrayWithObjects:v262 count:2];
              v139 = [PGCommonTitleUtility titleWithLineBreakForTitle:v137 andUsedNames:v144];
            }

            if (v139)
            {
LABEL_126:
              title = self->_title;
              self->_title = v139;
              v150 = v139;

              objc_storeStrong(&self->_usedLocationNodes, v251[5]);
              objc_storeStrong(&self->_filteredLocationNodes, v245[5]);
              objc_storeStrong(&self->_usedTitleComponents, *(v257 + 5));

              _Block_object_dispose(&v226, 8);
              _Block_object_dispose(&v232, 8);

              _Block_object_dispose(&v238, 8);
              _Block_object_dispose(&v244, 8);

              _Block_object_dispose(&v250, 8);
              _Block_object_dispose(buf, 8);

              goto LABEL_127;
            }

LABEL_123:
            v145 = +[PGLogging sharedLogging];
            loggingConnection = [v145 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
            {
              *v198 = 0;
              _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Falling back to normal title generation", v198, 2u);
            }

            v147 = v251[5];
            v251[5] = 0;

            v148 = v245[5];
            v245[5] = 0;

            v139 = 0;
            goto LABEL_126;
          }

          firstObject3 = [v227[5] firstObject];
          lastObject5 = [v227[5] lastObject];
          v93 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:firstObject3 locationHelper:v70];
          v94 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:lastObject5 locationHelper:v70];
          v103 = [MEMORY[0x277CBEB98] setWithArray:v227[5]];
          v104 = v245[5];
          v245[5] = v103;

          self->_tripTitleLocationType = 3;
          if (v93)
          {
            v105 = [firstObject3 isSameNodeAsNode:lastObject5];
            if (v94)
            {
              v106 = v105;
            }

            else
            {
              v106 = 1;
            }

            if (v106 == 1)
            {
              v271 = v93;
              v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v271 count:1];
              v108 = *(v257 + 5);
              *(v257 + 5) = v107;

              v109 = [MEMORY[0x277CBEB98] setWithObject:firstObject3];
              v110 = v251[5];
              v251[5] = v109;
            }

            else
            {
              v270[0] = v93;
              v270[1] = v94;
              v129 = [MEMORY[0x277CBEA60] arrayWithObjects:v270 count:2];
              v130 = *(v257 + 5);
              *(v257 + 5) = v129;

              v131 = [MEMORY[0x277CBEB98] setWithObjects:{firstObject3, lastObject5, 0}];
              v132 = v251[5];
              v251[5] = v131;

              if ([v227[5] count] >= 3)
              {
                self->_tripTitleType = 4;
              }
            }
          }
        }

        else
        {
          firstObject3 = [v233[5] firstObject];
          lastObject5 = [v233[5] lastObject];
          v93 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:firstObject3 locationHelper:v70];
          v94 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:lastObject5 locationHelper:v70];
          v95 = [MEMORY[0x277CBEB98] setWithArray:v233[5]];
          v96 = v245[5];
          v245[5] = v95;

          self->_tripTitleLocationType = 2;
          if (v93)
          {
            v97 = [firstObject3 isSameNodeAsNode:lastObject5];
            if (v94)
            {
              v98 = v97;
            }

            else
            {
              v98 = 1;
            }

            if (v98 == 1)
            {
              v273 = v93;
              v99 = [MEMORY[0x277CBEA60] arrayWithObjects:&v273 count:1];
              v100 = *(v257 + 5);
              *(v257 + 5) = v99;

              v101 = [MEMORY[0x277CBEB98] setWithObject:firstObject3];
              v102 = v251[5];
              v251[5] = v101;
            }

            else
            {
              v272[0] = v93;
              v272[1] = v94;
              v125 = [MEMORY[0x277CBEA60] arrayWithObjects:v272 count:2];
              v126 = *(v257 + 5);
              *(v257 + 5) = v125;

              v127 = [MEMORY[0x277CBEB98] setWithObjects:{firstObject3, lastObject5, 0}];
              v128 = v251[5];
              v251[5] = v127;

              if ([v233[5] count] >= 3)
              {
                self->_tripTitleType = 4;
              }
            }
          }
        }

        goto LABEL_109;
      }

      firstObject3 = [v227[5] firstObject];
      v84 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:firstObject3 locationHelper:v70];
      v75 = v84;
      if (v84)
      {
        v274 = v84;
        v85 = [MEMORY[0x277CBEA60] arrayWithObjects:&v274 count:1];
        v86 = *(v257 + 5);
        *(v257 + 5) = v85;

        v87 = [MEMORY[0x277CBEB98] setWithObject:firstObject3];
        v88 = v251[5];
        v251[5] = v87;

        v89 = [MEMORY[0x277CBEB98] setWithObject:firstObject3];
        v90 = v245[5];
        v245[5] = v89;

        self->_tripTitleLocationType = 3;
      }
    }

    goto LABEL_109;
  }

  v33 = +[PGLogging sharedLogging];
  loggingConnection2 = [v33 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "No filtered moment nodes, falling back to normal title generation", buf, 2u);
  }

LABEL_127:
}

void __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = [v3 collection];
  v5 = [v4 countryNodes];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_3;
  v6[3] = &unk_278885180;
  v7 = *(a1 + 40);
  [v5 enumerateNodesUsingBlock:v6];
}

void __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_4(void *a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a2)
  {
    v12[0] = a2;
    v7 = MEMORY[0x277CBEA60];
    v8 = a2;
    v9 = [v7 arrayWithObjects:v12 count:1];
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
    *(a1[4] + 72) = 1;
  }
}

id __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_5(uint64_t a1, unsigned int a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = [v5 reverseObjectEnumerator];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v23 = [v24 name];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v8)
  {
    v22 = *v42;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v42 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v41 + 1) + 8 * v9);
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x2020000000;
      v40[3] = a2 - 1;
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__48759;
      v38 = __Block_byref_object_dispose__48760;
      v39 = 0;
      v11 = [v10 collection];
      v12 = [v11 addressNodes];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_6;
      v25[3] = &unk_2788851F8;
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v26 = v13;
      v27 = v14;
      v15 = v24;
      v16 = *(a1 + 56);
      v28 = v15;
      v30 = v16;
      v17 = v23;
      v33 = a2;
      v29 = v17;
      v31 = v40;
      v32 = &v34;
      [v12 enumerateNodesUsingBlock:v25];

      v18 = v35[5];
      if (v18)
      {
        v21 = v18;
      }

      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(v40, 8);
      if (v18)
      {
        break;
      }

      if (v8 == ++v9)
      {
        v8 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v21 = 0;
  }

  return v21;
}

void __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_7(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if ([v7 count])
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
    *(a1[4] + 72) = 4;
  }
}

void __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_6(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) cityNodeFromAddressNode:?];
  v4 = [v3 anyNode];

  if (v4 || ([*(*(a1 + 40) + 48) resolvedLocationNodeForIncompleteAddressNode:v11 withTargetDimension:6], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (([v4 isSameNodeAsNode:*(a1 + 48)] & 1) == 0)
    {
      if ([*(*(*(a1 + 64) + 8) + 40) containsObject:v4])
      {
        v5 = *(a1 + 56);
        if (!v5 || ([v4 name], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, (v7 & 1) == 0))
        {
          if ((v8 = [*(*(*(a1 + 64) + 8) + 40) indexOfObject:v4], v9 = v8, v10 = *(a1 + 88), v10 == 1) && v8 >= *(*(*(a1 + 72) + 8) + 24) || (v10 & 1) == 0 && v8 < *(*(*(a1 + 72) + 8) + 24))
          {
            objc_storeStrong((*(*(a1 + 80) + 8) + 40), v4);
            *(*(*(a1 + 72) + 8) + 24) = v9;
          }
        }
      }
    }
  }
}

void __97__PGLocationTripTitleUtility__generateTitleForMomentNodes_resolvedMomentNodes_resolvedLocations___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)_generateLocationTitle
{
  v10[1] = *MEMORY[0x277D85DE8];
  momentNodes = self->_momentNodes;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestampUTCStart" ascending:1];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v6 = [(NSSet *)momentNodes sortedArrayUsingDescriptors:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__PGLocationTripTitleUtility__generateLocationTitle__block_invoke;
  v8[3] = &unk_278885130;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(PGLocationTripTitleUtility *)self _resolveMomentNodes:v7 withResult:v8];
}

- (PGLocationTripTitleUtility)initWithMomentNodes:(id)nodes filterMomentsAndCities:(BOOL)cities allowLongAOI:(BOOL)i locationHelper:(id)helper
{
  nodesCopy = nodes;
  helperCopy = helper;
  v19.receiver = self;
  v19.super_class = PGLocationTripTitleUtility;
  v13 = [(PGLocationTripTitleUtility *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_momentNodes, nodes);
    v14->_filterMomentsAndCities = cities;
    v14->_allowLongAOI = i;
    v15 = [PGCommonTitleUtility addressNodesFromMomentNodes:nodesCopy];
    v16 = [[PGIncompleteLocationResolver alloc] initWithAddressNodes:v15 locationHelper:helperCopy];
    incompleteLocationResolver = v14->_incompleteLocationResolver;
    v14->_incompleteLocationResolver = v16;

    objc_storeStrong(&v14->_locationHelper, helper);
    [(PGLocationTripTitleUtility *)v14 _generateLocationTitle];
  }

  return v14;
}

+ (void)_cityStateAndCountryNodesForLocationNodes:(id)nodes result:(id)result
{
  v32 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  resultCopy = result;
  if ([nodesCopy count])
  {
    firstObject = [nodesCopy firstObject];
    label = [firstObject label];

    if ([label isEqualToString:@"City"])
    {
      v9 = nodesCopy;
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
    }

    else
    {
      if ([label isEqualToString:@"State"])
      {
        array = nodesCopy;
        array2 = [MEMORY[0x277CBEB18] array];
      }

      else
      {
        if ([label isEqualToString:@"Country"])
        {
          array2 = nodesCopy;
        }

        else
        {
          array2 = 0;
        }

        array = 0;
      }

      v9 = 0;
    }

    if (([label isEqualToString:@"Country"] & 1) == 0)
    {
      v23 = v9;
      v24 = resultCopy;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = nodesCopy;
      obj = nodesCopy;
      v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          v15 = 0;
          do
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v27 + 1) + 8 * v15);
            if (array && ([label isEqualToString:@"State"] & 1) == 0)
            {
              locationNodeCollection = [v16 locationNodeCollection];
              v18 = [locationNodeCollection nearestDeepParentLocationNodesWithLabel:@"State"];
              anyNode = [v18 anyNode];

              if (anyNode && ([array containsObject:anyNode] & 1) == 0)
              {
                [array addObject:anyNode];
              }
            }

            locationNodeCollection2 = [v16 locationNodeCollection];
            v21 = [locationNodeCollection2 nearestDeepParentLocationNodesWithLabel:@"Country"];
            anyNode2 = [v21 anyNode];

            if (anyNode2 && ([array2 containsObject:anyNode2] & 1) == 0)
            {
              [array2 addObject:anyNode2];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v13);
      }

      resultCopy = v24;
      nodesCopy = v25;
      v9 = v23;
    }

    if (resultCopy)
    {
      resultCopy[2](resultCopy, v9, array, array2);
    }
  }
}

+ (BOOL)visitedLocations:(id)locations onlyDuringMoments:(id)moments locationHelper:(id)helper
{
  momentsCopy = moments;
  v8 = [helper momentNodesByAddressNodeIntersectingAddressNodes:locations];
  v9 = [v8 subtractingTargetsWith:momentsCopy];

  LOBYTE(v8) = [v9 sourcesCount] == 0;
  return v8;
}

+ (void)_aoiTitleWithLocationNodes:(id)nodes momentNodes:(id)momentNodes allowLongAOI:(BOOL)i graph:(id)graph locationHelper:(id)helper result:(id)result
{
  iCopy = i;
  v55[2] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  momentNodesCopy = momentNodes;
  graphCopy = graph;
  helperCopy = helper;
  resultCopy = result;
  v17 = [MEMORY[0x277CBEB58] set];
  array = [MEMORY[0x277CBEB18] array];
  context = objc_autoreleasePoolPush();
  v19 = [MEMORY[0x277CBEB98] setWithArray:momentNodesCopy];
  v20 = [PGLocationTitleUtility containsAmusementParkPOIFromMomentNodes:v19];
  v48 = momentNodesCopy;
  v21 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:momentNodesCopy graph:graphCopy];
  v49 = nodesCopy;
  v47 = graphCopy;
  v22 = [(MAElementCollection *)[PGGraphLocationNodeCollection alloc] initWithSet:nodesCopy graph:graphCopy];
  v43 = v21;
  addressNodes = [(PGGraphMomentNodeCollection *)v21 addressNodes];
  v42 = v22;
  addressNodes2 = [(PGGraphLocationNodeCollection *)v22 addressNodes];
  v25 = [addressNodes collectionByIntersecting:addressNodes2];

  if (iCopy)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  v41 = v25;
  temporarySet = [v25 temporarySet];
  v44 = v19;
  v28 = [PGLocationTitleUtility commonAOIComponentsForMomentNodes:v19 addressNodes:temporarySet aoiDisplayType:v26 containsAmusementParkPOI:v20 locationHelper:helperCopy];

  v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestampStart" ascending:1];
  v55[0] = v29;
  v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"node.name" ascending:1];
  v55[1] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v40 = v28;
  v32 = [v28 sortedArrayUsingDescriptors:v31];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v33 = v32;
  v34 = [v33 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v51;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v51 != v36)
        {
          objc_enumerationMutation(v33);
        }

        node = [*(*(&v50 + 1) + 8 * i) node];
        v39 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:node locationHelper:helperCopy];
        if ([v39 length])
        {
          [array addObject:v39];
          [v17 addObject:node];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v35);
  }

  objc_autoreleasePoolPop(context);
  if (resultCopy)
  {
    resultCopy[2](resultCopy, array, v17);
  }
}

+ (id)_filteredCityNodesByNameForCityNodes:(id)nodes
{
  v19 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(nodesCopy, "count")}];
  v5 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = nodesCopy;
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
        name = [v11 name];
        if (name && ([v5 containsObject:name] & 1) == 0)
        {
          [v4 addObject:v11];
          [v5 addObject:name];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v4;
}

@end