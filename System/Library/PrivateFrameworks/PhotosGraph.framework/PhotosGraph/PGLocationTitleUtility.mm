@interface PGLocationTitleUtility
+ (BOOL)_titleComponentsAreInSameSupersetCity:(id)city graph:(id)graph locationHelper:(id)helper;
+ (BOOL)containsAmusementParkPOIFromMomentNodes:(id)nodes;
+ (double)_weightForAreaNode:(id)node withAddressNodes:(id)nodes;
+ (id)_aoiSubsetsFromAOI:(id)i idx:(unint64_t)idx currentSubset:(id)subset subsetSize:(unint64_t)size;
+ (id)_aoiSubsetsFromAOI:(id)i maxSubsetSize:(unint64_t)size;
+ (id)_beautifiedLocationStringWithTitleComponents:(id)components momentNodes:(id)nodes lineBreakBehavior:(unint64_t)behavior keyAssetAddressNode:(id)node curationAddressNodes:(id)addressNodes isMatchingKeyAsset:(BOOL *)asset useDistrict:(BOOL)district allowFamilyHome:(BOOL)self0 showAllCities:(BOOL)self1 locationHelper:(id)self2 serviceManager:(id)self3;
+ (id)_commonCityTitleComponentsFromMomentNodes:(id)nodes remainingAddressNodes:(id)addressNodes ignoredAddressNodes:(id)ignoredAddressNodes incompleteLocationResolver:(id)resolver locationHelper:(id)helper;
+ (id)_filteredAOINodeCombinationsForCombinations:(id)combinations minSize:(unint64_t)size maxSize:(unint64_t)maxSize maxTitleLength:(unint64_t)length minNumberOfAssets:(unint64_t)assets aoiNodesToAddressNodesMapTable:(id)table assetCountByAddressNodeIdentifier:(id)identifier locationHelper:(id)self0;
+ (id)_filteredAOINodesForAddressNodes:(id)nodes aoiTitleMaximumLength:(unint64_t)length locationHelper:(id)helper;
+ (id)_filteredAddressNodesWithAddressNodes:(id)nodes momentNodes:(id)momentNodes incompleteLocationResolver:(id)resolver filterSignificantLocationsOption:(unint64_t)option locationHelper:(id)helper;
+ (id)_firstComponentInTimeFromComponents:(id)components momentNodes:(id)nodes curationAddressNodes:(id)addressNodes allowFamilyHome:(BOOL)home serviceManager:(id)manager;
+ (id)_localizedStringForMultipleLocationsWithFirstComponentForTitle:(id)title secondComponentForTitle:(id)forTitle firstLocation:(id)location otherLocation:(id)otherLocation;
+ (id)_localizedStringForTwoLocationsWithFirstComponentForTitle:(id)title secondComponentForTitle:(id)forTitle firstLocation:(id)location otherLocation:(id)otherLocation;
+ (id)_locationStringWithDistrictsFromTitleComponents:(id)components momentNodes:(id)nodes lineBreakBehavior:(unint64_t)behavior allowFamilyHome:(BOOL)home locationHelper:(id)helper serviceManager:(id)manager;
+ (id)_peopleLocationFromAddressNode:(id)node serviceManager:(id)manager;
+ (id)_sortedAOINodeCombinationsForCombinations:(id)combinations aoiNodesToAddressNodesMapTable:(id)table assetCountByAddressNodeIdentifier:(id)identifier locationHelper:(id)helper;
+ (id)_sortedComponentsFromComponents:(id)components;
+ (id)_titleWithLineBreakBehavior:(unint64_t)behavior forTitle:(id)title titleComponents:(id)components;
+ (id)_twoPartLocationTitleWithFirstPartTitle:(id)title withDimension:(unint64_t)dimension usedFirstPartLocationNode:(id)node addressNode:(id)addressNode locationHelper:(id)helper;
+ (id)beautifiedLocationNodeStringWithPlaceNode:(id)node locationHelper:(id)helper;
+ (id)businessNodeForTitlingFromMomentNodes:(id)nodes businessNodesByMomentNode:(id)node;
+ (id)commonAOIComponentsForMomentNodes:(id)nodes addressNodes:(id)addressNodes aoiDisplayType:(unint64_t)type containsAmusementParkPOI:(BOOL)i locationHelper:(id)helper;
+ (id)commonCityTitleComponentsFromMomentNodes:(id)nodes addressNodes:(id)addressNodes incompleteLocationResolver:(id)resolver locationHelper:(id)helper;
+ (id)peopleLocationTitleComponentsFromAddressNodes:(id)nodes peopleDisplayType:(unint64_t)type serviceManager:(id)manager;
+ (id)peopleLocationTitleComponentsFromAddressNodesSet:(id)set peopleDisplayType:(unint64_t)type serviceManager:(id)manager;
+ (void)generateBusinessItemLocationWithOptions:(id)options result:(id)result;
+ (void)generateHighlightLocationTitleForTripWithMomentNodes:(id)nodes lineBreakBehavior:(unint64_t)behavior locationHelper:(id)helper result:(id)result;
+ (void)generateLocationTitleForTripWithMomentNodes:(id)nodes locationHelper:(id)helper result:(id)result;
+ (void)generateLocationTitleWithOptions:(id)options locationHelper:(id)helper serviceManager:(id)manager result:(id)result;
@end

@implementation PGLocationTitleUtility

+ (id)_peopleLocationFromAddressNode:(id)node serviceManager:(id)manager
{
  nodeCopy = node;
  managerCopy = manager;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__67482;
  v30 = __Block_byref_object_dispose__67483;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__67482;
  v24 = __Block_byref_object_dispose__67483;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __72__PGLocationTitleUtility__peopleLocationFromAddressNode_serviceManager___block_invoke;
  v13 = &unk_2788897B8;
  v7 = managerCopy;
  v14 = v7;
  v15 = &v26;
  v16 = &v20;
  v17 = v18;
  [nodeCopy enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:@"IS_HOME_WORK" domain:202 usingBlock:&v10];
  if (v21[5] && v27[5])
  {
    v8 = objc_alloc_init(PGLocationTitleComponent);
    [(PGLocationTitleComponent *)v8 setNode:v21[5], v10, v11, v12, v13];
    [(PGLocationTitleComponent *)v8 setEdge:v27[5]];
    [(PGLocationTitleComponent *)v8 addAddressNode:nodeCopy];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v8;
}

void __72__PGLocationTitleUtility__peopleLocationFromAddressNode_serviceManager___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__PGLocationTitleUtility__peopleLocationFromAddressNode_serviceManager___block_invoke_2;
  v12[3] = &unk_278889790;
  v13 = *(a1 + 32);
  v14 = v8;
  v16 = *(a1 + 40);
  v9 = *(a1 + 56);
  v15 = v7;
  v17 = v9;
  v18 = a4;
  v10 = v7;
  v11 = v8;
  [v11 enumerateNeighborNodesThroughEdgesWithLabel:@"IS_OWNED_BY" domain:202 usingBlock:v12];
}

void __72__PGLocationTitleUtility__peopleLocationFromAddressNode_serviceManager___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = a2;
  v6 = [PGPeopleTitleUtility nameFromPersonNode:"nameFromPersonNode:serviceManager:" serviceManager:?];
  if ([v6 length])
  {
    v7 = [v16 isMeNode];
    v8 = [*(a1 + 40) label];
    v9 = [v8 isEqualToString:@"Home"];

    v10 = [*(*(*(a1 + 56) + 8) + 40) targetNode];
    v11 = [v10 label];
    v12 = [v11 isEqualToString:@"Home"];

    if (v7)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      *(*(*(a1 + 72) + 8) + 24) = 1;
      v13 = *(*(a1 + 56) + 8);
      v15 = *(v13 + 40);
      v14 = (v13 + 40);
      if (!v15 || ((v12 | v9 ^ 1) & 1) == 0)
      {
        objc_storeStrong(v14, *(a1 + 48));
        if (v9)
        {
          **(a1 + 80) = 1;
          *a3 = 1;
        }
      }
    }

    else if (((*(*(*(a1 + 72) + 8) + 24) == 0) & v9) == 1 && !*(*(*(a1 + 56) + 8) + 40))
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 48));
    }
  }
}

+ (id)peopleLocationTitleComponentsFromAddressNodesSet:(id)set peopleDisplayType:(unint64_t)type serviceManager:(id)manager
{
  typeCopy = type;
  v35 = *MEMORY[0x277D85DE8];
  setCopy = set;
  managerCopy = manager;
  v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = setCopy;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v30;
    obj = v8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [self _peopleLocationFromAddressNode:*(*(&v29 + 1) + 8 * i) serviceManager:{managerCopy, typeCopy}];
        if (v14)
        {
          ++v11;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v15 = v23;
          v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v26;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v26 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                if ([*(*(&v25 + 1) + 8 * j) canMergeWithTitleComponent:v14])
                {

                  goto LABEL_17;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          [v15 addObject:v14];
        }

LABEL_17:
      }

      v8 = obj;
      v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if (typeCopy == 2 && [v8 count] && v11 != objc_msgSend(v8, "count"))
  {
    [v23 removeAllObjects];
  }

  return v23;
}

+ (id)peopleLocationTitleComponentsFromAddressNodes:(id)nodes peopleDisplayType:(unint64_t)type serviceManager:(id)manager
{
  managerCopy = manager;
  v8 = [nodes set];
  v9 = [PGLocationTitleUtility peopleLocationTitleComponentsFromAddressNodesSet:v8 peopleDisplayType:type serviceManager:managerCopy];

  return v9;
}

+ (id)beautifiedLocationNodeStringWithPlaceNode:(id)node locationHelper:(id)helper
{
  v22 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  helperCopy = helper;
  name = [nodeCopy name];
  v8 = name;
  if (name)
  {
    if ([name length])
    {
      label = [nodeCopy label];
      v10 = [label isEqualToString:@"Country"];

      if (!v10)
      {
        if (([nodeCopy supportsNameShortening] & 1) == 0 || (+[PGAOINameShortener shortenedAOIForLocationOrAreaNode:locationHelper:](PGAOINameShortener, "shortenedAOIForLocationOrAreaNode:locationHelper:", nodeCopy, helperCopy), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v16 = v8;
        }

        goto LABEL_17;
      }

      v11 = v8;
      v12 = shouldLocationRemoveParenthesesForCountryCode(v11);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v14 = [currentLocale localizedStringForCountryCode:v11];
      v15 = v14;
      if (v14 && [v14 length])
      {
        v16 = v15;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v20 = 138412290;
          v21 = v11;
          _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not find name for country code %@", &v20, 0xCu);
        }

        v16 = 0;
      }

      if (!v16)
      {
        v16 = v11;
        pg_stringByRemovingParentheses = v16;
        if ((v12 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      pg_stringByRemovingParentheses = v16;
      if (v12)
      {
LABEL_17:
        pg_stringByRemovingParentheses = [v16 pg_stringByRemovingParentheses];

        v16 = pg_stringByRemovingParentheses;
      }
    }

    else
    {
      pg_stringByRemovingParentheses = 0;
      v16 = v8;
    }
  }

  else
  {
    v16 = 0;
    pg_stringByRemovingParentheses = 0;
  }

LABEL_18:
  v18 = v16;

  return v16;
}

+ (id)_twoPartLocationTitleWithFirstPartTitle:(id)title withDimension:(unint64_t)dimension usedFirstPartLocationNode:(id)node addressNode:(id)addressNode locationHelper:(id)helper
{
  titleCopy = title;
  nodeCopy = node;
  addressNodeCopy = addressNode;
  helperCopy = helper;
  if (dimension - 10 < 0xFFFFFFFFFFFFFFF7)
  {
    v16 = titleCopy;
    goto LABEL_15;
  }

  v17 = 0;
  v18 = 0;
  do
  {
    v19 = v18;
    v18 = [helperCopy closestLocationNodeFromLocationNode:addressNodeCopy withDimension:dimension remapMatchingDimensionBlock:&__block_literal_global_433];

    if (v18)
    {
      v20 = [self beautifiedLocationNodeStringWithPlaceNode:v18 locationHelper:helperCopy];

      name = [nodeCopy name];
      v22 = [v20 isEqualToString:name];

      v17 = v20;
      if (!v22)
      {
        break;
      }
    }

    ++dimension;
  }

  while (dimension != 10);
  if (![v17 length])
  {
    v25 = titleCopy;
    goto LABEL_13;
  }

  v16 = 0;
  if ([titleCopy rangeOfString:v17 options:0] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([titleCopy length])
    {
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"PGLocationTitleFormatTwoPartWithFirstLocation %@ secondLocation %@ invisibleSeparator %@" value:@"PGLocationTitleFormatTwoPartWithFirstLocation %@ secondLocation %@ invisibleSeparator %@" table:@"Localizable"];

      v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v24, titleCopy, v17, @"\n"];

      goto LABEL_14;
    }

    v25 = v17;
LABEL_13:
    v16 = v25;
  }

LABEL_14:

LABEL_15:

  return v16;
}

uint64_t __133__PGLocationTitleUtility__twoPartLocationTitleWithFirstPartTitle_withDimension_usedFirstPartLocationNode_addressNode_locationHelper___block_invoke(uint64_t a1, uint64_t a2)
{
  result = a2;
  v3 = a2 - 2;
  if (a2 - 2) <= 5 && ((0x2Bu >> v3))
  {
    return qword_22F78CE50[v3];
  }

  return result;
}

+ (id)_titleWithLineBreakBehavior:(unint64_t)behavior forTitle:(id)title titleComponents:(id)components
{
  behaviorCopy = behavior;
  titleCopy = title;
  componentsCopy = components;
  if ((behaviorCopy & 2) != 0)
  {
    v10 = [titleCopy stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

    v9 = [PGCommonTitleUtility titleWithNoLineBreakSpaceForTitle:v10 andUsedNames:componentsCopy];
    titleCopy = v10;
  }

  else
  {
    if ((behaviorCopy & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = [PGCommonTitleUtility titleWithLineBreakForTitle:titleCopy andUsedNames:componentsCopy];
  }

  titleCopy = v9;
LABEL_6:

  return titleCopy;
}

+ (id)_sortedComponentsFromComponents:(id)components
{
  allObjects = [components allObjects];
  v4 = [allObjects sortedArrayUsingComparator:&__block_literal_global_67521];

  return v4;
}

uint64_t __58__PGLocationTitleUtility__sortedComponentsFromComponents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 weight];
  v7 = v6;
  [v5 weight];
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      v9 = 1;
      goto LABEL_39;
    }

    v10 = [v4 node];
    v11 = [v5 node];
    v12 = [v10 domain];
    v13 = [v11 domain];
    if (v12 == 300 && v13 != 300)
    {
      goto LABEL_8;
    }

    if (v13 != 300 && v12 == 300)
    {
      goto LABEL_11;
    }

    if (v12 == 300 && v13 == 300)
    {
      v14 = [v10 graph];
      v15 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v14];

      v16 = [v15 containsNode:v10];
      v17 = [v15 containsNode:v11];
      if (v16 && !v17)
      {
        v9 = -1;
LABEL_37:

        goto LABEL_38;
      }

      v18 = v17 ^ 1;
      if (((v16 | v17 ^ 1) & 1) == 0)
      {
        goto LABEL_36;
      }

      if (!v16)
      {
        v18 = v17;
      }

      if ((v18 & 1) == 0)
      {
        v24 = [v4 edge];
        v23 = [v24 targetNode];

        v25 = [v5 edge];
        v26 = [v25 targetNode];

        v27 = [v23 label];
        v28 = [v27 isEqualToString:@"Home"];

        v29 = [v26 label];
        v30 = [v29 isEqualToString:@"Home"];

        if (v28 && (v30 & 1) == 0)
        {

          goto LABEL_33;
        }

        if (!(v28 & 1 | ((v30 & 1) == 0)))
        {
LABEL_36:
          v9 = 1;
          goto LABEL_37;
        }
      }
    }

    [v4 timestampStart];
    v20 = v19;
    [v5 timestampStart];
    if (v20 < v21)
    {
LABEL_8:
      v9 = -1;
LABEL_38:

      goto LABEL_39;
    }

    if (v20 > v21)
    {
LABEL_11:
      v9 = 1;
      goto LABEL_38;
    }

    v15 = [v10 name];
    v22 = [v11 name];
    v23 = v22;
    if (!v15 && v22)
    {
      v15 = 0;
      v9 = 1;
LABEL_34:

      goto LABEL_37;
    }

    if (!v15 || v22)
    {
      v9 = [v15 localizedCompare:v22];
      goto LABEL_34;
    }

LABEL_33:
    v9 = -1;
    goto LABEL_34;
  }

  v9 = -1;
LABEL_39:

  return v9;
}

+ (id)_firstComponentInTimeFromComponents:(id)components momentNodes:(id)nodes curationAddressNodes:(id)addressNodes allowFamilyHome:(BOOL)home serviceManager:(id)manager
{
  homeCopy = home;
  v80 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  nodesCopy = nodes;
  addressNodesCopy = addressNodes;
  managerCopy = manager;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__67482;
  v77 = __Block_byref_object_dispose__67483;
  v78 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0x7FEFFFFFFFFFFFFFLL;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0xFFEFFFFFFFFFFFFFLL;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = componentsCopy;
  v12 = [obj countByEnumeratingWithState:&v61 objects:v79 count:16];
  if (v12)
  {
    v57 = *v62;
    do
    {
      v59 = v12;
      for (i = 0; i != v59; ++i)
      {
        if (*v62 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v61 + 1) + 8 * i);
        [v14 updateWithMomentNodes:nodesCopy];
        if ([addressNodesCopy count])
        {
          addressNodes = [v14 addressNodes];
          v16 = [addressNodes intersectsSet:addressNodesCopy];

          if ((v16 & 1) == 0)
          {
            continue;
          }
        }

        [v14 timestampStart];
        v18 = v17;
        [v14 weight];
        v20 = v19;
        node = [v14 node];
        name = [node name];

        if (![name length])
        {
          goto LABEL_14;
        }

        if (!v74[5] || (v23 = v70[3], v23 > v18))
        {
          v24 = 1;
          goto LABEL_15;
        }

        if (v23 == v18)
        {
          v24 = v66[3] < v20;
        }

        else
        {
LABEL_14:
          v24 = 0;
        }

LABEL_15:
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __126__PGLocationTitleUtility__firstComponentInTimeFromComponents_momentNodes_curationAddressNodes_allowFamilyHome_serviceManager___block_invoke;
        aBlock[3] = &unk_278889700;
        *&aBlock[8] = v18;
        *&aBlock[9] = v20;
        aBlock[6] = &v65;
        aBlock[7] = &v73;
        aBlock[4] = v14;
        aBlock[5] = &v69;
        v25 = _Block_copy(aBlock);
        v26 = v25;
        if (v24)
        {
          v25[2](v25);
LABEL_39:

          continue;
        }

        v27 = v74[5];
        if (!v27 || v70[3] != v18 || v66[3] != v20)
        {
          goto LABEL_39;
        }

        node2 = [v27 node];
        domain = [node2 domain];

        node3 = [v14 node];
        domain2 = [node3 domain];

        if (domain != 300 && domain2 == 300)
        {
          v26[2](v26);
          goto LABEL_39;
        }

        if (domain == 300 && domain2 == 300)
        {
          node4 = [v14 node];
          graph = [node4 graph];
          name2 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];

          node5 = [v14 node];
          v36 = [name2 containsNode:node5];

          if (v36)
          {
            goto LABEL_24;
          }

          edge = [v74[5] edge];
          targetNode = [edge targetNode];

          edge2 = [v14 edge];
          targetNode2 = [edge2 targetNode];

          label = [targetNode label];
          v42 = [label isEqualToString:@"Home"];

          label2 = [targetNode2 label];
          v44 = [label2 isEqualToString:@"Home"];

          if (v42 & 1 | ((v44 & 1) == 0))
          {
            if (v42 == v44)
            {
              node6 = [v74[5] node];
              edge3 = [v74[5] edge];
              v46 = [PGPeopleTitleUtility beautifiedLocationStringWithPersonNode:node6 peopleAddressEdge:edge3 titleComponent:v74[5] insertLineBreak:0 allowFamilyHome:homeCopy serviceManager:managerCopy];

              node7 = [v14 node];
              edge4 = [v14 edge];
              v48 = [PGPeopleTitleUtility beautifiedLocationStringWithPersonNode:node7 peopleAddressEdge:edge4 titleComponent:v14 insertLineBreak:0 allowFamilyHome:homeCopy serviceManager:managerCopy];

              if ([v48 length] && (!objc_msgSend(v46, "length") || objc_msgSend(v46, "localizedCompare:", v48) == 1))
              {
                v26[2](v26);
              }
            }
          }

          else
          {
            v26[2](v26);
          }
        }

        else
        {
          if (domain == 300)
          {
            goto LABEL_39;
          }

          node8 = [v74[5] node];
          name2 = [node8 name];

          if ([name2 localizedCompare:name] == 1)
          {
LABEL_24:
            v26[2](v26);
          }
        }

        goto LABEL_39;
      }

      v12 = [obj countByEnumeratingWithState:&v61 objects:v79 count:16];
    }

    while (v12);
  }

  v49 = v74[5];
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  return v49;
}

void __126__PGLocationTitleUtility__firstComponentInTimeFromComponents_momentNodes_curationAddressNodes_allowFamilyHome_serviceManager___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 64);
  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 72);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
}

+ (BOOL)_titleComponentsAreInSameSupersetCity:(id)city graph:(id)graph locationHelper:(id)helper
{
  v35 = *MEMORY[0x277D85DE8];
  cityCopy = city;
  graphCopy = graph;
  helperCopy = helper;
  if ([cityCopy count])
  {
    v9 = [MEMORY[0x277CBEB58] set];
    supersetCityNodes = [graphCopy supersetCityNodes];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = cityCopy;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      v27 = graphCopy;
      v28 = cityCopy;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          node = [v16 node];
          label = [node label];
          v19 = [label isEqualToString:@"City"];

          if (v19)
          {
            v20 = node;
          }

          else if ([node domain] != 300 || (objc_msgSend(v16, "edge"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "sourceNode"), v22 = objc_claimAutoreleasedReturnValue(), v21, objc_msgSend(helperCopy, "cityNodeFromAddressNode:", v22), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "anyNode"), v20 = objc_claimAutoreleasedReturnValue(), v23, v22, !v20))
          {

LABEL_17:
            v25 = 0;
            graphCopy = v27;
            cityCopy = v28;
            goto LABEL_18;
          }

          [v9 addObject:v20];
          v24 = [supersetCityNodes containsNode:v20];

          if (!v24)
          {
            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
        graphCopy = v27;
        cityCopy = v28;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v25 = [v9 count] == 1;
LABEL_18:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)_locationStringWithDistrictsFromTitleComponents:(id)components momentNodes:(id)nodes lineBreakBehavior:(unint64_t)behavior allowFamilyHome:(BOOL)home locationHelper:(id)helper serviceManager:(id)manager
{
  homeCopy = home;
  v144 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  nodesCopy = nodes;
  helperCopy = helper;
  managerCopy = manager;
  v134 = 0;
  v135 = &v134;
  v136 = 0x2020000000;
  v137 = 0;
  v130 = 0;
  v131 = &v130;
  v132 = 0x2020000000;
  v133 = 0x7FFFFFFFFFFFFFFFLL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __150__PGLocationTitleUtility__locationStringWithDistrictsFromTitleComponents_momentNodes_lineBreakBehavior_allowFamilyHome_locationHelper_serviceManager___block_invoke;
  aBlock[3] = &unk_2788896D8;
  aBlock[4] = &v134;
  aBlock[5] = &v130;
  v101 = _Block_copy(aBlock);
  v93 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = componentsCopy;
  v12 = [obj countByEnumeratingWithState:&v125 objects:v143 count:16];
  v13 = 0;
  if (v12)
  {
    v97 = *v126;
LABEL_3:
    v95 = v12;
    v14 = 0;
    while (1)
    {
      if (*v126 != v97)
      {
        objc_enumerationMutation(obj);
      }

      if (v135[3])
      {
        break;
      }

      v15 = *(*(&v125 + 1) + 8 * v14);
      node = [v15 node];
      label = [node label];
      v17 = [label isEqualToString:@"City"];

      if (v17)
      {
        collection = [node collection];
        v101[2](v101, collection);

        if (v135[3])
        {
          goto LABEL_36;
        }

        addressNodes = [v15 addressNodes];
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v20 = addressNodes;
        v21 = [v20 countByEnumeratingWithState:&v121 objects:v142 count:16];
        if (v21)
        {
          v22 = *v122;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v122 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v121 + 1) + 8 * i);
              v25 = [helperCopy districtNodeFromAddressNode:v24];
              anyNode = [v25 anyNode];

              if (!anyNode)
              {
                *(v135 + 24) = 1;
                goto LABEL_31;
              }

              v27 = [dictionary objectForKeyedSubscript:anyNode];
              if (!v27)
              {
                v27 = objc_alloc_init(PGLocationTitleComponent);
                [(PGLocationTitleComponent *)v27 setNode:anyNode];
                [dictionary setObject:v27 forKeyedSubscript:anyNode];
              }

              [(PGLocationTitleComponent *)v27 addAddressNode:v24];

              v13 = 1;
            }

            v21 = [v20 countByEnumeratingWithState:&v121 objects:v142 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

LABEL_31:
      }

      else
      {
        addressNodes2 = [v15 addressNodes];
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v20 = addressNodes2;
        v29 = [v20 countByEnumeratingWithState:&v117 objects:v141 count:16];
        if (v29)
        {
          v30 = *v118;
LABEL_22:
          v31 = 0;
          while (1)
          {
            if (*v118 != v30)
            {
              objc_enumerationMutation(v20);
            }

            v32 = [helperCopy cityNodeFromAddressNode:*(*(&v117 + 1) + 8 * v31)];
            v101[2](v101, v32);
            v33 = *(v135 + 24);

            if (v33)
            {
              break;
            }

            if (v29 == ++v31)
            {
              v29 = [v20 countByEnumeratingWithState:&v117 objects:v141 count:16];
              if (v29)
              {
                goto LABEL_22;
              }

              break;
            }
          }
        }

        if (*(v135 + 24) == 1)
        {

LABEL_36:
          break;
        }

        [v93 addObject:v15];
      }

      if (++v14 == v95)
      {
        v12 = [obj countByEnumeratingWithState:&v125 objects:v143 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v34 = v135;
  v35 = *(v135 + 24) | ~v13;
  *(v135 + 24) = v135[3] & 1 | ((v13 & 1) == 0);
  if (v35)
  {
    v36 = 0;
    *(v34 + 24) = 1;
    goto LABEL_106;
  }

  v37 = v131[3] == 0x7FFFFFFFFFFFFFFFLL;
  *(v34 + 24) = v37;
  if (v37)
  {
    v36 = 0;
    goto LABEL_106;
  }

  anyObject = [nodesCopy anyObject];
  graph = [anyObject graph];
  v86 = [graph nodeForIdentifier:v131[3]];

  v87 = [self beautifiedLocationNodeStringWithPlaceNode:v86 locationHelper:helperCopy];
  if (![v87 length])
  {
    v36 = 0;
    goto LABEL_105;
  }

  allValues = [dictionary allValues];
  [v93 addObjectsFromArray:allValues];

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v41 = v93;
  v42 = [v41 countByEnumeratingWithState:&v113 objects:v140 count:16];
  if (v42)
  {
    v43 = *v114;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v114 != v43)
        {
          objc_enumerationMutation(v41);
        }

        [*(*(&v113 + 1) + 8 * j) updateWithMomentNodes:nodesCopy];
      }

      v42 = [v41 countByEnumeratingWithState:&v113 objects:v140 count:16];
    }

    while (v42);
  }

  v45 = [self _firstComponentInTimeFromComponents:v41 momentNodes:nodesCopy curationAddressNodes:0 allowFamilyHome:homeCopy serviceManager:managerCopy];
  v85 = v45;
  if (!v45)
  {
    v36 = 0;
    goto LABEL_104;
  }

  v46 = [MEMORY[0x277CBEB18] arrayWithObject:v45];
  if ([v41 count] >= 2)
  {
    v47 = [v41 mutableCopy];
    [v47 removeObject:v85];
    v48 = [self _sortedComponentsFromComponents:v47];
    [v46 addObjectsFromArray:v48];
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v98 = v46;
  v49 = [v98 countByEnumeratingWithState:&v109 objects:v139 count:16];
  if (!v49)
  {
    goto LABEL_73;
  }

  v50 = *v110;
  while (2)
  {
    for (k = 0; k != v49; ++k)
    {
      if (*v110 != v50)
      {
        objc_enumerationMutation(v98);
      }

      v52 = *(*(&v109 + 1) + 8 * k);
      node2 = [v52 node];
      if ([node2 domain] == 300)
      {
        edge = [v52 edge];
        v55 = [PGPeopleTitleUtility beautifiedLocationStringWithPersonNode:node2 peopleAddressEdge:edge titleComponent:v52 insertLineBreak:behavior & 1 allowFamilyHome:homeCopy serviceManager:managerCopy];

        if (!v55 || ([array containsObject:v55] & 1) != 0)
        {
          goto LABEL_66;
        }

LABEL_65:
        [array addObject:v55];
        [array2 addObject:v52];
        goto LABEL_66;
      }

      label2 = [node2 label];
      v57 = [label2 isEqualToString:@"District"];

      if (!v57)
      {
        goto LABEL_67;
      }

      v55 = [self beautifiedLocationNodeStringWithPlaceNode:node2 locationHelper:helperCopy];
      if (![v55 length])
      {
        *(v135 + 24) = 1;

        goto LABEL_73;
      }

      if (([array containsObject:v55] & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_66:

LABEL_67:
    }

    v49 = [v98 countByEnumeratingWithState:&v109 objects:v139 count:16];
    if (v49)
    {
      continue;
    }

    break;
  }

LABEL_73:

  if (v135[3])
  {
    v36 = 0;
    goto LABEL_103;
  }

  v58 = [v87 componentsSeparatedByString:@" "];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v91 = array;
  v59 = [v91 countByEnumeratingWithState:&v105 objects:v138 count:16];
  if (v59)
  {
    v60 = *v106;
    while (2)
    {
      v61 = v59;
      for (m = 0; m != v61; ++m)
      {
        if (*v106 != v60)
        {
          objc_enumerationMutation(v91);
        }

        v63 = [*(*(&v105 + 1) + 8 * m) componentsSeparatedByString:@" "];
        v64 = [v63 count];
        v65 = [v58 count];
        v66 = v64 - v65;
        if (v64 >= v65)
        {
          v67 = 0;
          while (1)
          {
            v68 = [v63 subarrayWithRange:{v67, v65}];
            v69 = [v68 isEqualToArray:v58];

            if (v69)
            {
              break;
            }

            if (++v67 > v66)
            {
              goto LABEL_84;
            }
          }

          v36 = 0;
          v75 = v91;
          goto LABEL_100;
        }

LABEL_84:
      }

      v59 = [v91 countByEnumeratingWithState:&v105 objects:v138 count:16];
      if (v59)
      {
        continue;
      }

      break;
    }
  }

  v70 = [v91 count];
  if (v70 != 2)
  {
    if (v70 == 1)
    {
      v71 = MEMORY[0x277CCACA8];
      firstObject2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      lastObject = [firstObject2 localizedStringForKey:@"PGLocationTitleFormatOneDistrict %@ city %@" value:@"PGLocationTitleFormatOneDistrict %@ city %@" table:@"Localizable"];
      firstObject = [v91 firstObject];
      v75 = [v71 localizedStringWithFormat:lastObject, firstObject, v87];
      goto LABEL_98;
    }

    goto LABEL_101;
  }

  firstObject2 = [v91 firstObject];
  lastObject = [v91 lastObject];
  firstObject3 = [array2 firstObject];
  type = [firstObject3 type];

  lastObject2 = [array2 lastObject];
  type2 = [lastObject2 type];

  if (type || type2 != 1)
  {
    v83 = MEMORY[0x277CCACA8];
    if (type != 1 || type2)
    {
      firstObject = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v81 = [firstObject localizedStringForKey:@"PGLocationTitleFormatDistrict %@ otherDistrict %@ inCity %@" value:@"PGLocationTitleFormatDistrict %@ otherDistrict %@ inCity %@" table:@"Localizable"];
      v82 = [v83 localizedStringWithFormat:v81, firstObject2, lastObject, v87];
    }

    else
    {
      firstObject = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v81 = [firstObject localizedStringForKey:@"PGLocationTitleFormatHomeAndDistrict %@ inCity %@" value:@"PGLocationTitleFormatHomeAndDistrict %@ inCity %@" table:@"Localizable"];
      v82 = [v83 localizedStringWithFormat:v81, lastObject, v87];
    }
  }

  else
  {
    v80 = MEMORY[0x277CCACA8];
    firstObject = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v81 = [firstObject localizedStringForKey:@"PGLocationTitleFormatDistrict %@ andHomeInCity %@" value:@"PGLocationTitleFormatDistrict %@ andHomeInCity %@" table:@"Localizable"];
    v82 = [v80 localizedStringWithFormat:v81, firstObject2, v87];
  }

  v75 = v82;

LABEL_98:
  if (v75)
  {
    [v91 addObject:v87];
    v36 = [self _titleWithLineBreakBehavior:behavior forTitle:v75 titleComponents:v91];
LABEL_100:
  }

  else
  {
LABEL_101:
    v36 = 0;
  }

LABEL_103:
LABEL_104:

LABEL_105:
LABEL_106:

  _Block_object_dispose(&v130, 8);
  _Block_object_dispose(&v134, 8);

  return v36;
}

void __150__PGLocationTitleUtility__locationStringWithDistrictsFromTitleComponents_momentNodes_lineBreakBehavior_allowFamilyHome_locationHelper_serviceManager___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 count])
  {
    v3 = [v8 elementIdentifiers];
    v4 = [v3 firstElement];

    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 24);
    v7 = v8;
    if (v4 != v6)
    {
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        *(v5 + 24) = v4;
      }

      else
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v7 = v8;
  }
}

+ (id)_localizedStringForMultipleLocationsWithFirstComponentForTitle:(id)title secondComponentForTitle:(id)forTitle firstLocation:(id)location otherLocation:(id)otherLocation
{
  titleCopy = title;
  forTitleCopy = forTitle;
  locationCopy = location;
  otherLocationCopy = otherLocation;
  type = [titleCopy type];
  type2 = [forTitleCopy type];
  if (type > 1)
  {
    if (type != 2)
    {
      if (type == 3)
      {
        if (type2 <= 1)
        {
          if (!type2)
          {
            v22 = MEMORY[0x277CCACA8];
            v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andLocation %@" value:@"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andLocation %@" table:@"Localizable"];
            personName = [titleCopy personName];
            personName2 = personName;
            v47 = otherLocationCopy;
LABEL_69:
            [v22 localizedStringWithFormat:v32, personName, v47];
            goto LABEL_70;
          }

          if (type2 != 1)
          {
            goto LABEL_78;
          }

          v22 = MEMORY[0x277CCACA8];
          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v23;
          v24 = @"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andHome";
        }

        else
        {
          switch(type2)
          {
            case 2:
              v22 = MEMORY[0x277CCACA8];
              v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v20 = v23;
              v24 = @"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andWork";
              break;
            case 3:
              v34 = MEMORY[0x277CCACA8];
              v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andAnothersHome %@" value:@"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andAnothersHome %@" table:@"Localizable"];
              personName2 = [titleCopy personName];
              personName3 = [forTitleCopy personName];
              otherLocationCopy = [v34 localizedStringWithFormat:v32, personName2, personName3];

LABEL_71:
LABEL_76:

LABEL_77:
              if (otherLocationCopy)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            case 4:
              v22 = MEMORY[0x277CCACA8];
              v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v20 = v23;
              v24 = @"PGLocationTitleFormatMultipleLocationsWithSomeonesHome %@ andFamilyHome";
              break;
            default:
              goto LABEL_78;
          }
        }

        v32 = [v23 localizedStringForKey:v24 value:v24 table:@"Localizable"];
        v33 = titleCopy;
LABEL_68:
        personName = [v33 personName];
        personName2 = personName;
        goto LABEL_69;
      }

      if (type != 4)
      {
        goto LABEL_78;
      }

      if (type2 > 1)
      {
        if (type2 != 2)
        {
          if (type2 != 3)
          {
            if (type2 == 4)
            {
              v15 = +[PGLogging sharedLogging];
              loggingConnection = [v15 loggingConnection];

              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                v48 = 0;
                v17 = "Attempted to create location string with Multiple title components both of type Family Home";
                v18 = &v48;
LABEL_83:
                _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, v17, v18, 2u);
                goto LABEL_50;
              }

              goto LABEL_50;
            }

            goto LABEL_78;
          }

          v22 = MEMORY[0x277CCACA8];
          v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v30;
          v31 = @"PGLocationTitleFormatMultipleLocationsWithFamilyHomeAndSomeonesHome %@";
          goto LABEL_67;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v19;
        v21 = @"PGLocationTitleFormatMultipleLocationsWithFamilyHomeAndWork";
LABEL_63:
        otherLocationCopy = [v19 localizedStringForKey:v21 value:v21 table:@"Localizable"];
        goto LABEL_77;
      }

      if (type2)
      {
        if (type2 != 1)
        {
          goto LABEL_78;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v19;
        v21 = @"PGLocationTitleFormatMultipleLocationsWithFamilyHomeAndHome";
        goto LABEL_63;
      }

      v38 = MEMORY[0x277CCACA8];
      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v39;
      v40 = @"PGLocationTitleFormatMultipleLocationsWithFamilyHomeAndLocation %@";
      goto LABEL_74;
    }

    if (type2 > 1)
    {
      if (type2 == 2)
      {
        v29 = +[PGLogging sharedLogging];
        loggingConnection = [v29 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v17 = "Attempted to create location string with two title components both of type Work";
          v18 = buf;
          goto LABEL_83;
        }

        goto LABEL_50;
      }

      if (type2 != 3)
      {
        if (type2 != 4)
        {
          goto LABEL_78;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v19;
        v21 = @"PGLocationTitleFormatMultipleLocationsWithWorkAndFamilyHome";
        goto LABEL_63;
      }

      v22 = MEMORY[0x277CCACA8];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v30;
      v31 = @"PGLocationTitleFormatMultipleLocationsWithWorkAndSomeonesHome %@";
      goto LABEL_67;
    }

    if (type2)
    {
      if (type2 != 1)
      {
        goto LABEL_78;
      }

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"PGLocationTitleFormatMultipleLocationsWithWorkAndHome";
      goto LABEL_63;
    }

    v38 = MEMORY[0x277CCACA8];
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v39;
    v40 = @"PGLocationTitleFormatMultipleLocationsWithWorkAndLocation %@";
LABEL_74:
    v32 = [v39 localizedStringForKey:v40 value:v40 table:@"Localizable"];
    [v38 localizedStringWithFormat:v32, otherLocationCopy, v47];
    goto LABEL_75;
  }

  if (!type)
  {
    if (type2 <= 1)
    {
      if (!type2)
      {
        v25 = MEMORY[0x277CCACA8];
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsWithLocation %@ otherLocation %@" value:@"PGLocationTitleFormatMultipleLocationsWithLocation %@ otherLocation %@" table:@"Localizable"];
        v47 = otherLocationCopy;
        goto LABEL_65;
      }

      if (type2 != 1)
      {
        goto LABEL_78;
      }

      v25 = MEMORY[0x277CCACA8];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v26;
      v27 = @"PGLocationTitleFormatMultipleLocationsWithLocation %@ andHome";
    }

    else
    {
      switch(type2)
      {
        case 2:
          v25 = MEMORY[0x277CCACA8];
          v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v26;
          v27 = @"PGLocationTitleFormatMultipleLocationsWithLocation %@ andWork";
          break;
        case 3:
          v41 = MEMORY[0x277CCACA8];
          v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsWithLocation %@ andSomeonesHome %@" value:@"PGLocationTitleFormatMultipleLocationsWithLocation %@ andSomeonesHome %@" table:@"Localizable"];
          personName2 = [forTitleCopy personName];
          [v41 localizedStringWithFormat:v32, locationCopy, personName2];
          otherLocationCopy = LABEL_70:;
          goto LABEL_71;
        case 4:
          v25 = MEMORY[0x277CCACA8];
          v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v26;
          v27 = @"PGLocationTitleFormatMultipleLocationsWithLocation %@ andFamilyHome";
          break;
        default:
          goto LABEL_78;
      }
    }

    v32 = [v26 localizedStringForKey:v27 value:v27 table:@"Localizable"];
LABEL_65:
    [v25 localizedStringWithFormat:v32, locationCopy, v47];
    otherLocationCopy = LABEL_75:;
    goto LABEL_76;
  }

  if (type != 1)
  {
    goto LABEL_78;
  }

  if (type2 > 1)
  {
    if (type2 == 2)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"PGLocationTitleFormatMultipleLocationsWithHomeAndWork";
      goto LABEL_63;
    }

    if (type2 != 3)
    {
      if (type2 != 4)
      {
        goto LABEL_78;
      }

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"PGLocationTitleFormatMultipleLocationsWithHomeAndFamilyHome";
      goto LABEL_63;
    }

    v22 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v30;
    v31 = @"PGLocationTitleFormatMultipleLocationsWithHomeAndSomeonesHome %@";
LABEL_67:
    v32 = [v30 localizedStringForKey:v31 value:v31 table:@"Localizable"];
    v33 = forTitleCopy;
    goto LABEL_68;
  }

  if (!type2)
  {
    v38 = MEMORY[0x277CCACA8];
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v39;
    v40 = @"PGLocationTitleFormatMultipleLocationsWithHomeAndLocation %@";
    goto LABEL_74;
  }

  if (type2 == 1)
  {
    v28 = +[PGLogging sharedLogging];
    loggingConnection = [v28 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v50 = 0;
      v17 = "Attempted to create location string with two title components both of type Home";
      v18 = &v50;
      goto LABEL_83;
    }

LABEL_50:
  }

LABEL_78:
  v43 = MEMORY[0x277CCACA8];
  v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v45 = [v44 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsWithLocation %@ otherLocation %@" value:@"PGLocationTitleFormatMultipleLocationsWithLocation %@ otherLocation %@" table:@"Localizable"];
  otherLocationCopy = [v43 localizedStringWithFormat:v45, locationCopy, otherLocationCopy];

LABEL_79:

  return otherLocationCopy;
}

+ (id)_localizedStringForTwoLocationsWithFirstComponentForTitle:(id)title secondComponentForTitle:(id)forTitle firstLocation:(id)location otherLocation:(id)otherLocation
{
  titleCopy = title;
  forTitleCopy = forTitle;
  locationCopy = location;
  otherLocationCopy = otherLocation;
  type = [titleCopy type];
  type2 = [forTitleCopy type];
  if (type > 1)
  {
    if (type != 2)
    {
      if (type == 3)
      {
        if (type2 <= 1)
        {
          if (!type2)
          {
            v22 = MEMORY[0x277CCACA8];
            v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andLocation %@" value:@"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andLocation %@" table:@"Localizable"];
            personName = [titleCopy personName];
            personName2 = personName;
            v47 = otherLocationCopy;
LABEL_69:
            [v22 localizedStringWithFormat:v32, personName, v47];
            goto LABEL_70;
          }

          if (type2 != 1)
          {
            goto LABEL_78;
          }

          v22 = MEMORY[0x277CCACA8];
          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v23;
          v24 = @"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andHome";
        }

        else
        {
          switch(type2)
          {
            case 2:
              v22 = MEMORY[0x277CCACA8];
              v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v20 = v23;
              v24 = @"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andWork";
              break;
            case 3:
              v34 = MEMORY[0x277CCACA8];
              v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andAnothersHome %@" value:@"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andAnothersHome %@" table:@"Localizable"];
              personName2 = [titleCopy personName];
              personName3 = [forTitleCopy personName];
              otherLocationCopy = [v34 localizedStringWithFormat:v32, personName2, personName3];

LABEL_71:
LABEL_76:

LABEL_77:
              if (otherLocationCopy)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            case 4:
              v22 = MEMORY[0x277CCACA8];
              v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v20 = v23;
              v24 = @"PGLocationTitleFormatTwoLocationsWithSomeonesHome %@ andFamilyHome";
              break;
            default:
              goto LABEL_78;
          }
        }

        v32 = [v23 localizedStringForKey:v24 value:v24 table:@"Localizable"];
        v33 = titleCopy;
LABEL_68:
        personName = [v33 personName];
        personName2 = personName;
        goto LABEL_69;
      }

      if (type != 4)
      {
        goto LABEL_78;
      }

      if (type2 > 1)
      {
        if (type2 != 2)
        {
          if (type2 != 3)
          {
            if (type2 == 4)
            {
              v15 = +[PGLogging sharedLogging];
              loggingConnection = [v15 loggingConnection];

              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                v48 = 0;
                v17 = "Attempted to create location string with two title components both of type Family Home";
                v18 = &v48;
LABEL_83:
                _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, v17, v18, 2u);
                goto LABEL_50;
              }

              goto LABEL_50;
            }

            goto LABEL_78;
          }

          v22 = MEMORY[0x277CCACA8];
          v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v30;
          v31 = @"PGLocationTitleFormatTwoLocationsWithFamilyHomeAndSomeonesHome %@";
          goto LABEL_67;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v19;
        v21 = @"PGLocationTitleFormatTwoLocationsWithFamilyHomeAndWork";
LABEL_63:
        otherLocationCopy = [v19 localizedStringForKey:v21 value:v21 table:@"Localizable"];
        goto LABEL_77;
      }

      if (type2)
      {
        if (type2 != 1)
        {
          goto LABEL_78;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v19;
        v21 = @"PGLocationTitleFormatTwoLocationsWithFamilyHomeAndHome";
        goto LABEL_63;
      }

      v38 = MEMORY[0x277CCACA8];
      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v39;
      v40 = @"PGLocationTitleFormatTwoLocationsWithFamilyHomeAndLocation %@";
      goto LABEL_74;
    }

    if (type2 > 1)
    {
      if (type2 == 2)
      {
        v29 = +[PGLogging sharedLogging];
        loggingConnection = [v29 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v17 = "Attempted to create location string with two title components both of type Work";
          v18 = buf;
          goto LABEL_83;
        }

        goto LABEL_50;
      }

      if (type2 != 3)
      {
        if (type2 != 4)
        {
          goto LABEL_78;
        }

        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v19;
        v21 = @"PGLocationTitleFormatTwoLocationsWithWorkAndFamilyHome";
        goto LABEL_63;
      }

      v22 = MEMORY[0x277CCACA8];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v30;
      v31 = @"PGLocationTitleFormatTwoLocationsWithWorkAndSomeonesHome %@";
      goto LABEL_67;
    }

    if (type2)
    {
      if (type2 != 1)
      {
        goto LABEL_78;
      }

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"PGLocationTitleFormatTwoLocationsWithWorkAndHome";
      goto LABEL_63;
    }

    v38 = MEMORY[0x277CCACA8];
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v39;
    v40 = @"PGLocationTitleFormatTwoLocationsWithWorkAndLocation %@";
LABEL_74:
    v32 = [v39 localizedStringForKey:v40 value:v40 table:@"Localizable"];
    [v38 localizedStringWithFormat:v32, otherLocationCopy, v47];
    goto LABEL_75;
  }

  if (!type)
  {
    if (type2 <= 1)
    {
      if (!type2)
      {
        v25 = MEMORY[0x277CCACA8];
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatTwoLocationsWithLocation %@ otherLocation %@" value:@"PGLocationTitleFormatTwoLocationsWithLocation %@ otherLocation %@" table:@"Localizable"];
        v47 = otherLocationCopy;
        goto LABEL_65;
      }

      if (type2 != 1)
      {
        goto LABEL_78;
      }

      v25 = MEMORY[0x277CCACA8];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v26;
      v27 = @"PGLocationTitleFormatTwoLocationsWithLocation %@ andHome";
    }

    else
    {
      switch(type2)
      {
        case 2:
          v25 = MEMORY[0x277CCACA8];
          v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v26;
          v27 = @"PGLocationTitleFormatTwoLocationsWithLocation %@ andWork";
          break;
        case 3:
          v41 = MEMORY[0x277CCACA8];
          v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v32 = [v20 localizedStringForKey:@"PGLocationTitleFormatTwoLocationsWithLocation %@ andSomeonesHome %@" value:@"PGLocationTitleFormatTwoLocationsWithLocation %@ andSomeonesHome %@" table:@"Localizable"];
          personName2 = [forTitleCopy personName];
          [v41 localizedStringWithFormat:v32, locationCopy, personName2];
          otherLocationCopy = LABEL_70:;
          goto LABEL_71;
        case 4:
          v25 = MEMORY[0x277CCACA8];
          v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v20 = v26;
          v27 = @"PGLocationTitleFormatTwoLocationsWithLocation %@ andFamilyHome";
          break;
        default:
          goto LABEL_78;
      }
    }

    v32 = [v26 localizedStringForKey:v27 value:v27 table:@"Localizable"];
LABEL_65:
    [v25 localizedStringWithFormat:v32, locationCopy, v47];
    otherLocationCopy = LABEL_75:;
    goto LABEL_76;
  }

  if (type != 1)
  {
    goto LABEL_78;
  }

  if (type2 > 1)
  {
    if (type2 == 2)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"PGLocationTitleFormatTwoLocationsWithHomeAndWork";
      goto LABEL_63;
    }

    if (type2 != 3)
    {
      if (type2 != 4)
      {
        goto LABEL_78;
      }

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"PGLocationTitleFormatTwoLocationsWithHomeAndFamilyHome";
      goto LABEL_63;
    }

    v22 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v30;
    v31 = @"PGLocationTitleFormatTwoLocationsWithHomeAndSomeonesHome %@";
LABEL_67:
    v32 = [v30 localizedStringForKey:v31 value:v31 table:@"Localizable"];
    v33 = forTitleCopy;
    goto LABEL_68;
  }

  if (!type2)
  {
    v38 = MEMORY[0x277CCACA8];
    v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v39;
    v40 = @"PGLocationTitleFormatTwoLocationsWithHomeAndLocation %@";
    goto LABEL_74;
  }

  if (type2 == 1)
  {
    v28 = +[PGLogging sharedLogging];
    loggingConnection = [v28 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v50 = 0;
      v17 = "Attempted to create location string with two title components both of type Home";
      v18 = &v50;
      goto LABEL_83;
    }

LABEL_50:
  }

LABEL_78:
  v43 = MEMORY[0x277CCACA8];
  v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v45 = [v44 localizedStringForKey:@"PGLocationTitleFormatTwoLocationsWithLocation %@ otherLocation %@" value:@"PGLocationTitleFormatTwoLocationsWithLocation %@ otherLocation %@" table:@"Localizable"];
  otherLocationCopy = [v43 localizedStringWithFormat:v45, locationCopy, otherLocationCopy];

LABEL_79:

  return otherLocationCopy;
}

+ (id)_beautifiedLocationStringWithTitleComponents:(id)components momentNodes:(id)nodes lineBreakBehavior:(unint64_t)behavior keyAssetAddressNode:(id)node curationAddressNodes:(id)addressNodes isMatchingKeyAsset:(BOOL *)asset useDistrict:(BOOL)district allowFamilyHome:(BOOL)self0 showAllCities:(BOOL)self1 locationHelper:(id)self2 serviceManager:(id)self3
{
  homeCopy3 = home;
  v149 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  nodesCopy = nodes;
  nodeCopy = node;
  addressNodesCopy = addressNodes;
  v23 = nodesCopy;
  helperCopy = helper;
  managerCopy = manager;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __233__PGLocationTitleUtility__beautifiedLocationStringWithTitleComponents_momentNodes_lineBreakBehavior_keyAssetAddressNode_curationAddressNodes_isMatchingKeyAsset_useDistrict_allowFamilyHome_showAllCities_locationHelper_serviceManager___block_invoke;
  aBlock[3] = &unk_278889688;
  behaviorCopy = behavior;
  v110 = behavior & 1;
  v145 = behavior & 1;
  homeCopy2 = home;
  v114 = managerCopy;
  selfCopy = self;
  v142 = v114;
  selfCopy2 = self;
  v26 = componentsCopy;
  v113 = helperCopy;
  v143 = v113;
  v128 = _Block_copy(aBlock);
  v121 = nodeCopy;
  if (district)
  {
    anyObject = [nodesCopy anyObject];
    graph = [anyObject graph];
    if ([selfCopy _titleComponentsAreInSameSupersetCity:componentsCopy graph:? locationHelper:?])
    {
      v27 = [selfCopy _locationStringWithDistrictsFromTitleComponents:componentsCopy momentNodes:nodesCopy lineBreakBehavior:behavior allowFamilyHome:home locationHelper:v113 serviceManager:v114];
      if (v27)
      {
        v28 = v27;
        v29 = v28;
        goto LABEL_101;
      }
    }
  }

  if (cities)
  {
    v30 = [selfCopy _firstComponentInTimeFromComponents:componentsCopy momentNodes:nodesCopy curationAddressNodes:0 allowFamilyHome:home serviceManager:v114];
    if (v30)
    {
      v122 = addressNodesCopy;
      v104 = nodesCopy;
      anyObject = v30;
      v31 = [MEMORY[0x277CBEB18] arrayWithObject:?];
      if ([componentsCopy count] >= 2)
      {
        v32 = [componentsCopy mutableCopy];
        [v32 removeObject:anyObject];
        v33 = [selfCopy _sortedComponentsFromComponents:v32];
        [v31 addObjectsFromArray:v33];
      }

      v107 = componentsCopy;
      v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(componentsCopy, "count")}];
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v35 = v31;
      v36 = [v35 countByEnumeratingWithState:&v137 objects:v148 count:16];
      graph = v35;
      if (v36)
      {
        v37 = v36;
        v38 = *v138;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v138 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v137 + 1) + 8 * i);
            node = [v40 node];
            if ([node domain] == 200)
            {
              label = [node label];
              if ([label isEqualToString:@"City"])
              {
              }

              else
              {
                domain = [node domain];

                v44 = domain == 300;
                v35 = graph;
                if (!v44)
                {
                  goto LABEL_26;
                }
              }
            }

            else if ([node domain] != 300)
            {
              goto LABEL_26;
            }

            v45 = v128[2](v128, v40);
            if (v45 && ([v34 containsObject:v45] & 1) == 0)
            {
              [v34 addObject:v45];
            }

LABEL_26:
          }

          v37 = [v35 countByEnumeratingWithState:&v137 objects:v148 count:16];
        }

        while (v37);
      }

      if ([v34 count] > 2)
      {
        lastObject = [v34 lastObject];
        v82 = [v34 subarrayWithRange:{0, objc_msgSend(v34, "count") - 1}];
        v83 = MEMORY[0x277CCACA8];
        v84 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v85 = [v84 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsWithConcatenatedLocations %@ lastLocation %@" value:@"PGLocationTitleFormatMultipleLocationsWithConcatenatedLocations %@ lastLocation %@" table:@"Localizable"];
        v86 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v87 = [v86 localizedStringForKey:@"PGLocationTitleFormatMultipleLocationsConcatenator" value:@"PGLocationTitleFormatMultipleLocationsConcatenator" table:@"Localizable"];
        v88 = [v82 componentsJoinedByString:v87];
        v28 = [v83 localizedStringWithFormat:v85, v88, lastObject];

        v29 = [selfCopy _titleWithLineBreakBehavior:behaviorCopy forTitle:v28 titleComponents:v34];

        v23 = v104;
        v26 = v107;
        addressNodesCopy = v122;
        goto LABEL_101;
      }

      v23 = v104;
      v26 = v107;
      nodeCopy = v121;
      v30 = anyObject;
      homeCopy3 = home;
    }
  }

  v46 = [selfCopy _firstComponentInTimeFromComponents:v26 momentNodes:v23 curationAddressNodes:addressNodesCopy allowFamilyHome:homeCopy3 serviceManager:v114];
  v127 = v128[2](v128, v46);
  anyObject = v46;
  if (nodeCopy)
  {
    addressNodes = [v46 addressNodes];
    v119 = [addressNodes containsObject:nodeCopy];

    v46 = anyObject;
  }

  else
  {
    v119 = 1;
  }

  v48 = [v26 count] == 1;
  v49 = [v26 count];
  v50 = [v26 count];
  v51 = 0;
  v52 = selfCopy;
  if (!v46 || v50 < 2)
  {
    v71 = 0;
    goto LABEL_66;
  }

  v118 = v49;
  v123 = v48;
  v53 = [v26 mutableCopy];
  [v53 removeObject:v46];
  v103 = v53;
  v54 = [selfCopy _sortedComponentsFromComponents:v53];
  v55 = v46;
  v56 = v54;
  node2 = [v55 node];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = v56;
  v58 = [obj countByEnumeratingWithState:&v133 objects:v147 count:16];
  if (!v58)
  {
    v51 = 0;
    v71 = 0;
    goto LABEL_65;
  }

  v59 = v58;
  v105 = v23;
  v108 = v26;
  v117 = 0;
  v60 = *v134;
  do
  {
    v61 = 0;
    do
    {
      if (*v134 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v62 = *(*(&v133 + 1) + 8 * v61);
      node3 = [v62 node];
      if ([addressNodesCopy count])
      {
        addressNodes2 = [v62 addressNodes];
        v65 = [addressNodes2 intersectsSet:addressNodesCopy];

        if (!v65)
        {
          goto LABEL_55;
        }
      }

      if ([node2 domain] == 200 && objc_msgSend(node3, "domain") == 200)
      {
        label2 = [node2 label];
        label3 = [node3 label];
        v68 = [label2 isEqualToString:label3];

        if (!v68)
        {
          goto LABEL_55;
        }
      }

      if (v121)
      {
        addressNodes3 = [v62 addressNodes];
        v70 = [addressNodes3 containsObject:v121];

        v123 = v70;
        if (((v119 | v70) & 1) == 0)
        {
          v123 = 0;
          goto LABEL_55;
        }
      }

      else
      {
        v123 = 1;
      }

      v71 = v128[2](v128, v62);
      if (![v71 length] || !objc_msgSend(v127, "length"))
      {
        goto LABEL_54;
      }

      if ([v127 isEqualToString:v71])
      {
        --v118;
LABEL_54:

LABEL_55:
        goto LABEL_56;
      }

      v51 = v62;

      if (v51)
      {
        goto LABEL_62;
      }

      v117 = v71;
LABEL_56:
      ++v61;
    }

    while (v59 != v61);
    v72 = [obj countByEnumeratingWithState:&v133 objects:v147 count:16];
    v59 = v72;
  }

  while (v72);
  v51 = 0;
  v71 = v117;
LABEL_62:
  v23 = v105;
  v26 = v108;
LABEL_65:

  v52 = selfCopy;
  v46 = anyObject;
  v48 = v123;
  v49 = v118;
LABEL_66:
  if (asset)
  {
    *asset = (v46 != 0) & (v119 | v48);
  }

  if (!v51 || ![v71 length])
  {
    v73 = v127;
    v75 = v73;
    goto LABEL_87;
  }

  v73 = v127;
  if (![v127 length])
  {
    v75 = 0;
    goto LABEL_87;
  }

  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __233__PGLocationTitleUtility__beautifiedLocationStringWithTitleComponents_momentNodes_lineBreakBehavior_keyAssetAddressNode_curationAddressNodes_isMatchingKeyAsset_useDistrict_allowFamilyHome_showAllCities_locationHelper_serviceManager___block_invoke_2;
  v129[3] = &unk_2788896B0;
  v132 = v52;
  anyObject = v46;
  v130 = anyObject;
  v51 = v51;
  v131 = v51;
  v74 = _Block_copy(v129);
  v75 = v74[2](v74, v127, v71, v49);
  if ([v75 length] < 0x17 || (objc_msgSend(v127, "containsString:", v71) & 1) == 0 && !objc_msgSend(v71, "containsString:", v127))
  {
    goto LABEL_86;
  }

  v124 = addressNodesCopy;
  v106 = v23;
  v109 = v26;
  if (!v121)
  {
LABEL_83:
    v78 = v51;
    v79 = 0;
    v76 = anyObject;
    goto LABEL_84;
  }

  if ((v119 & 1) == 0)
  {
    if (v48)
    {
      firstObject = v51;
      v80 = v71;
      v76 = anyObject;
      v78 = v51;
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  v76 = anyObject;
  firstObject = anyObject;
  v78 = v51;
  v79 = v127;
  v80 = v79;
  if (!firstObject)
  {
LABEL_84:
    v89 = [MEMORY[0x277CBEB98] setWithObjects:{v76, v78, 0}];
    v90 = [selfCopy _sortedComponentsFromComponents:v89];
    firstObject = [v90 firstObject];
    v80 = v128[2](v128, firstObject);
  }

LABEL_85:
  v91 = firstObject;

  v92 = v80;
  v51 = 0;
  v71 = 0;
  v127 = v92;
  anyObject = v91;
  v75 = v92;
  v23 = v106;
  v26 = v109;
  addressNodesCopy = v124;
LABEL_86:

  v73 = v127;
LABEL_87:
  graph = v73;
  if (v73)
  {
    v93 = v71 ? v110 : 0;
    if ((behaviorCopy & 2) != 0 || v93)
    {
      v125 = v51;
      v94 = [v75 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
      array = [MEMORY[0x277CBEB18] array];
      v96 = [v73 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
      [array addObject:v96];
      if (v71)
      {
        v97 = v23;
        v98 = v26;
        v99 = [v71 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];
        [array addObject:v99];
        if (v110)
        {
          v100 = [PGCommonTitleUtility titleWithLineBreakForTitle:v94 andUsedNames:array];

          v94 = v100;
        }

        v26 = v98;
        v23 = v97;
      }

      if ((behaviorCopy & 2) != 0)
      {
        v101 = [PGCommonTitleUtility titleWithNoLineBreakSpaceForTitle:v94 andUsedNames:array];

        v94 = v101;
      }

      v75 = v94;
      v51 = v125;
    }
  }

  v28 = v75;

  v29 = v28;
LABEL_101:

  return v29;
}

id __233__PGLocationTitleUtility__beautifiedLocationStringWithTitleComponents_momentNodes_lineBreakBehavior_keyAssetAddressNode_curationAddressNodes_isMatchingKeyAsset_useDistrict_allowFamilyHome_showAllCities_locationHelper_serviceManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 node];
  v5 = v4;
  if (v4)
  {
    if ([v4 domain] == 300)
    {
      v6 = [v3 edge];
      v7 = [PGPeopleTitleUtility beautifiedLocationStringWithPersonNode:v5 peopleAddressEdge:v6 titleComponent:v3 insertLineBreak:*(a1 + 56) allowFamilyHome:*(a1 + 57) serviceManager:*(a1 + 32)];
    }

    else
    {
      v7 = [*(a1 + 48) beautifiedLocationNodeStringWithPlaceNode:v5 locationHelper:*(a1 + 40)];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __233__PGLocationTitleUtility__beautifiedLocationStringWithTitleComponents_momentNodes_lineBreakBehavior_keyAssetAddressNode_curationAddressNodes_isMatchingKeyAsset_useDistrict_allowFamilyHome_showAllCities_locationHelper_serviceManager___block_invoke_2(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (!v8 || a4 == 1)
  {
    v12 = v7;
  }

  else
  {
    v10 = a1[5];
    v9 = a1[6];
    v11 = a1[4];
    if (a4 == 2)
    {
      [v9 _localizedStringForTwoLocationsWithFirstComponentForTitle:v11 secondComponentForTitle:v10 firstLocation:v7 otherLocation:v8];
    }

    else
    {
      [v9 _localizedStringForMultipleLocationsWithFirstComponentForTitle:v11 secondComponentForTitle:v10 firstLocation:v7 otherLocation:v8];
    }
    v12 = ;
  }

  v13 = v12;

  return v13;
}

+ (id)_commonCityTitleComponentsFromMomentNodes:(id)nodes remainingAddressNodes:(id)addressNodes ignoredAddressNodes:(id)ignoredAddressNodes incompleteLocationResolver:(id)resolver locationHelper:(id)helper
{
  v111 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  addressNodesCopy = addressNodes;
  ignoredAddressNodesCopy = ignoredAddressNodes;
  resolverCopy = resolver;
  helperCopy = helper;
  v76 = nodesCopy;
  v73 = resolverCopy;
  v16 = [[PGLocationsResolver alloc] initWithMomentNodes:nodesCopy incompleteLocationResolver:resolverCopy locationHelper:helperCopy];
  [(PGLocationsResolver *)v16 setShouldCreateLocationToAddressMapTable:1];
  v74 = ignoredAddressNodesCopy;
  [(PGLocationsResolver *)v16 setIgnoredAddressNodes:ignoredAddressNodesCopy];
  LODWORD(v17) = 1051931443;
  [(PGLocationsResolver *)v16 setMaximumMissingLocationsThreshold:v17];
  v72 = v16;
  resolvedLocationNodesToAddressNodesMapTable = [(PGLocationsResolver *)v16 resolvedLocationNodesToAddressNodesMapTable];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  keyEnumerator = [resolvedLocationNodesToAddressNodesMapTable keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v21 = [allObjects countByEnumeratingWithState:&v102 objects:v110 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v103;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v103 != v23)
        {
          objc_enumerationMutation(allObjects);
        }

        v25 = *(*(&v102 + 1) + 8 * i);
        v26 = [resolvedLocationNodesToAddressNodesMapTable objectForKey:v25];
        if (([v26 intersectsSet:addressNodesCopy] & 1) == 0)
        {
          [resolvedLocationNodesToAddressNodesMapTable removeObjectForKey:v25];
        }
      }

      v22 = [allObjects countByEnumeratingWithState:&v102 objects:v110 count:16];
    }

    while (v22);
  }

  v75 = addressNodesCopy;

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  keyEnumerator2 = [resolvedLocationNodesToAddressNodesMapTable keyEnumerator];
  allObjects2 = [keyEnumerator2 allObjects];

  v29 = [allObjects2 countByEnumeratingWithState:&v98 objects:v109 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v99;
    v78 = allObjects2;
    v79 = helperCopy;
    v77 = *v99;
    do
    {
      v32 = 0;
      v80 = v30;
      do
      {
        if (*v99 != v31)
        {
          objc_enumerationMutation(allObjects2);
        }

        v33 = *(*(&v98 + 1) + 8 * v32);
        name = [v33 name];
        lowercaseString = [name lowercaseString];

        if (lowercaseString)
        {
          v82 = lowercaseString;
          if ([lowercaseString length])
          {
            v81 = v32;
            label = [v33 label];
            if ([label isEqualToString:@"City"])
            {
              v37 = [resolvedLocationNodesToAddressNodesMapTable objectForKey:v33];

              v32 = v81;
              if (!v37)
              {
                goto LABEL_45;
              }

              label = v33;
              v38 = [helperCopy countyNodeFromCityNode:label];
              anyNode = [v38 anyNode];

              if (anyNode)
              {
                name2 = [anyNode name];
                [name2 lowercaseString];
                v41 = v85 = anyNode;
                v42 = [v41 containsString:lowercaseString];

                anyNode = v85;
                if (v42)
                {
                  v84 = [resolvedLocationNodesToAddressNodesMapTable objectForKey:label];
                  v83 = [MEMORY[0x277CBEB58] set];
                  v94 = 0u;
                  v95 = 0u;
                  v96 = 0u;
                  v97 = 0u;
                  keyEnumerator3 = [resolvedLocationNodesToAddressNodesMapTable keyEnumerator];
                  allObjects3 = [keyEnumerator3 allObjects];

                  v45 = [allObjects3 countByEnumeratingWithState:&v94 objects:v108 count:16];
                  if (v45)
                  {
                    v46 = v45;
                    v47 = *v95;
                    do
                    {
                      for (j = 0; j != v46; ++j)
                      {
                        if (*v95 != v47)
                        {
                          objc_enumerationMutation(allObjects3);
                        }

                        v49 = *(*(&v94 + 1) + 8 * j);
                        if (([label isSameNodeAsNode:v49] & 1) == 0)
                        {
                          label2 = [v49 label];
                          v51 = [label2 isEqualToString:@"City"];

                          if (v51)
                          {
                            v52 = v49;
                            collection = [v52 collection];
                            countyNodes = [collection countyNodes];
                            anyNode2 = [countyNodes anyNode];

                            if ([v85 isSameNodeAsNode:anyNode2])
                            {
                              v56 = [resolvedLocationNodesToAddressNodesMapTable objectForKey:v52];
                              [v84 unionSet:v56];
                              [v83 addObject:v52];
                            }
                          }
                        }
                      }

                      v46 = [allObjects3 countByEnumeratingWithState:&v94 objects:v108 count:16];
                    }

                    while (v46);
                  }

                  helperCopy = v79;
                  v31 = v77;
                  if ([v83 count])
                  {
                    [resolvedLocationNodesToAddressNodesMapTable setObject:v84 forKey:v85];
                    v92 = 0u;
                    v93 = 0u;
                    v90 = 0u;
                    v91 = 0u;
                    v57 = v83;
                    v58 = [v57 countByEnumeratingWithState:&v90 objects:v107 count:16];
                    if (v58)
                    {
                      v59 = v58;
                      v60 = *v91;
                      do
                      {
                        for (k = 0; k != v59; ++k)
                        {
                          if (*v91 != v60)
                          {
                            objc_enumerationMutation(v57);
                          }

                          [resolvedLocationNodesToAddressNodesMapTable removeObjectForKey:*(*(&v90 + 1) + 8 * k)];
                        }

                        v59 = [v57 countByEnumeratingWithState:&v90 objects:v107 count:16];
                      }

                      while (v59);
                    }

                    [resolvedLocationNodesToAddressNodesMapTable removeObjectForKey:label];
                  }

                  allObjects2 = v78;
                  v30 = v80;
                  anyNode = v85;
                }
              }
            }

            v32 = v81;
            lowercaseString = v82;
          }
        }

LABEL_45:

        ++v32;
      }

      while (v32 != v30);
      v30 = [allObjects2 countByEnumeratingWithState:&v98 objects:v109 count:16];
    }

    while (v30);
  }

  v62 = [MEMORY[0x277CBEB58] set];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  keyEnumerator4 = [resolvedLocationNodesToAddressNodesMapTable keyEnumerator];
  v64 = [keyEnumerator4 countByEnumeratingWithState:&v86 objects:v106 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v87;
    do
    {
      for (m = 0; m != v65; ++m)
      {
        if (*v87 != v66)
        {
          objc_enumerationMutation(keyEnumerator4);
        }

        v68 = *(*(&v86 + 1) + 8 * m);
        v69 = objc_alloc_init(PGLocationTitleComponent);
        [(PGLocationTitleComponent *)v69 setNode:v68];
        v70 = [resolvedLocationNodesToAddressNodesMapTable objectForKey:v68];
        [(PGLocationTitleComponent *)v69 setAddressNodes:v70];

        [v62 addObject:v69];
      }

      v65 = [keyEnumerator4 countByEnumeratingWithState:&v86 objects:v106 count:16];
    }

    while (v65);
  }

  return v62;
}

+ (id)commonCityTitleComponentsFromMomentNodes:(id)nodes addressNodes:(id)addressNodes incompleteLocationResolver:(id)resolver locationHelper:(id)helper
{
  v10 = MEMORY[0x277CBEB98];
  helperCopy = helper;
  resolverCopy = resolver;
  addressNodesCopy = addressNodes;
  nodesCopy = nodes;
  v15 = objc_alloc_init(v10);
  v16 = [self _commonCityTitleComponentsFromMomentNodes:nodesCopy remainingAddressNodes:addressNodesCopy ignoredAddressNodes:v15 incompleteLocationResolver:resolverCopy locationHelper:helperCopy];

  return v16;
}

+ (id)_filteredAOINodeCombinationsForCombinations:(id)combinations minSize:(unint64_t)size maxSize:(unint64_t)maxSize maxTitleLength:(unint64_t)length minNumberOfAssets:(unint64_t)assets aoiNodesToAddressNodesMapTable:(id)table assetCountByAddressNodeIdentifier:(id)identifier locationHelper:(id)self0
{
  v70 = *MEMORY[0x277D85DE8];
  combinationsCopy = combinations;
  tableCopy = table;
  identifierCopy = identifier;
  helperCopy = helper;
  v43 = [MEMORY[0x277CBEB58] set];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = combinationsCopy;
  v16 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v64;
    sizeCopy = size;
    maxSizeCopy = maxSize;
    v46 = *v64;
    do
    {
      v19 = 0;
      v49 = v17;
      do
      {
        if (*v64 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v63 + 1) + 8 * v19);
        v21 = [v20 count];
        if (v21 >= size && v21 <= maxSize)
        {
          v51 = v19;
          v23 = [MEMORY[0x277CBEB58] set];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v24 = v20;
          v25 = [v24 countByEnumeratingWithState:&v59 objects:v68 count:16];
          v52 = v24;
          if (v25)
          {
            v26 = v25;
            v27 = 0;
            v28 = *v60;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v60 != v28)
                {
                  objc_enumerationMutation(v52);
                }

                v30 = *(*(&v59 + 1) + 8 * i);
                v31 = [self beautifiedLocationNodeStringWithPlaceNode:v30 locationHelper:helperCopy];
                v27 += [v31 length];
                v32 = [tableCopy objectForKey:v30];
                allObjects = [v32 allObjects];
                [v23 addObjectsFromArray:allObjects];
              }

              v26 = [v52 countByEnumeratingWithState:&v59 objects:v68 count:16];
            }

            while (v26);

            if (v27 > length)
            {
              goto LABEL_31;
            }
          }

          else
          {
          }

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v34 = v23;
          v35 = [v34 countByEnumeratingWithState:&v55 objects:v67 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = 0;
            v38 = *v56;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v56 != v38)
                {
                  objc_enumerationMutation(v34);
                }

                v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v55 + 1) + 8 * j), "identifier")}];
                v41 = [identifierCopy objectForKeyedSubscript:v40];
                v37 += [v41 unsignedIntegerValue];
              }

              v36 = [v34 countByEnumeratingWithState:&v55 objects:v67 count:16];
            }

            while (v36);
          }

          else
          {
            v37 = 0;
          }

          if (v37 >= assets)
          {
            [v43 addObject:v52];
          }

LABEL_31:

          size = sizeCopy;
          maxSize = maxSizeCopy;
          v18 = v46;
          v17 = v49;
          v19 = v51;
        }

        ++v19;
      }

      while (v19 != v17);
      v17 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v17);
  }

  return v43;
}

+ (id)_sortedAOINodeCombinationsForCombinations:(id)combinations aoiNodesToAddressNodesMapTable:(id)table assetCountByAddressNodeIdentifier:(id)identifier locationHelper:(id)helper
{
  tableCopy = table;
  identifierCopy = identifier;
  helperCopy = helper;
  allObjects = [combinations allObjects];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __148__PGLocationTitleUtility__sortedAOINodeCombinationsForCombinations_aoiNodesToAddressNodesMapTable_assetCountByAddressNodeIdentifier_locationHelper___block_invoke;
  v19[3] = &unk_278889660;
  v20 = helperCopy;
  v21 = tableCopy;
  v22 = identifierCopy;
  selfCopy = self;
  v14 = identifierCopy;
  v15 = tableCopy;
  v16 = helperCopy;
  v17 = [allObjects sortedArrayUsingComparator:v19];

  return v17;
}

uint64_t __148__PGLocationTitleUtility__sortedAOINodeCombinationsForCombinations_aoiNodesToAddressNodesMapTable_assetCountByAddressNodeIdentifier_locationHelper___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v121 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v83 = a3;
  context = objc_autoreleasePoolPush();
  v87 = [MEMORY[0x277CBEB58] set];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v111 objects:v120 count:16];
  v8 = 0.0;
  obj = v6;
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v112;
    v12 = 0.0;
    v13 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v112 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v111 + 1) + 8 * i);
        v16 = [*(a1 + 56) beautifiedLocationNodeStringWithPlaceNode:v15 locationHelper:*(a1 + 32)];
        v10 += [v16 length];
        v17 = [*(a1 + 40) objectForKey:v15];
        v18 = [v17 allObjects];
        [v87 addObjectsFromArray:v18];

        [v15 popularityScore];
        v20 = v19 == -1.0;
        v21 = v19 != -1.0;
        v22 = v12 + v19;
        v13 &= v21;
        if (!v20)
        {
          v12 = v22;
        }
      }

      v6 = obj;
      v9 = [obj countByEnumeratingWithState:&v111 objects:v120 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v13 = 1;
    v12 = 0.0;
  }

  v23 = [v6 count];
  v24 = v12 / v23;
  if (!v23)
  {
    v24 = 0.0;
  }

  if (v13)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  v86 = [MEMORY[0x277CBEB58] set];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v26 = v83;
  v27 = [v26 countByEnumeratingWithState:&v107 objects:v119 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v84 = *v108;
    v8 = 0.0;
    v80 = v26;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v108 != v84)
        {
          objc_enumerationMutation(v80);
        }

        v31 = *(*(&v107 + 1) + 8 * j);
        v32 = [*(a1 + 56) beautifiedLocationNodeStringWithPlaceNode:v31 locationHelper:*(a1 + 32)];
        v29 += [v32 length];
        v33 = [*(a1 + 40) objectForKey:v31];
        v34 = [v33 allObjects];
        [v86 addObjectsFromArray:v34];

        [v31 popularityScore];
        v20 = v35 == -1.0;
        v36 = v35 != -1.0;
        v37 = v8 + v35;
        if (!v20)
        {
          v8 = v37;
        }

        v13 &= v36;
      }

      v26 = v80;
      v28 = [v80 countByEnumeratingWithState:&v107 objects:v119 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
  }

  v38 = [v26 count];
  v39 = 0.0;
  if (v13 && v38)
  {
    v39 = v8 / v38;
  }

  if (v25 > v39)
  {
    goto LABEL_32;
  }

  if (v39 > v25)
  {
LABEL_34:
    v40 = 1;
    goto LABEL_58;
  }

  v81 = v26;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v41 = v87;
  v42 = [v41 countByEnumeratingWithState:&v103 objects:v118 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = 0;
    v45 = *v104;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v104 != v45)
        {
          objc_enumerationMutation(v41);
        }

        v47 = *(a1 + 48);
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v103 + 1) + 8 * k), "identifier")}];
        v49 = [v47 objectForKeyedSubscript:v48];
        v44 += [v49 unsignedIntegerValue];
      }

      v43 = [v41 countByEnumeratingWithState:&v103 objects:v118 count:16];
    }

    while (v43);
  }

  else
  {
    v44 = 0;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v85 = v86;
  v50 = [v85 countByEnumeratingWithState:&v99 objects:v117 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = 0;
    v53 = *v100;
    do
    {
      for (m = 0; m != v51; ++m)
      {
        if (*v100 != v53)
        {
          objc_enumerationMutation(v85);
        }

        v55 = *(a1 + 48);
        v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v99 + 1) + 8 * m), "identifier")}];
        v57 = [v55 objectForKeyedSubscript:v56];
        v52 += [v57 unsignedIntegerValue];
      }

      v51 = [v85 countByEnumeratingWithState:&v99 objects:v117 count:16];
    }

    while (v51);
  }

  else
  {
    v52 = 0;
  }

  if (v44 > v52)
  {
    v40 = -1;
LABEL_57:
    v26 = v81;
    goto LABEL_58;
  }

  if (v52 > v44)
  {
    v40 = 1;
    goto LABEL_57;
  }

  v59 = [obj count];
  v26 = v81;
  if (v59 > [v81 count])
  {
    goto LABEL_34;
  }

  v60 = [v81 count];
  if (v60 <= [obj count])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __148__PGLocationTitleUtility__sortedAOINodeCombinationsForCombinations_aoiNodesToAddressNodesMapTable_assetCountByAddressNodeIdentifier_locationHelper___block_invoke_2;
    aBlock[3] = &unk_278889638;
    v61 = *(a1 + 40);
    v62 = *(a1 + 56);
    v97 = v61;
    v98 = v62;
    v63 = _Block_copy(aBlock);
    v64 = v63[2](v63, obj);
    v65 = v63[2](v63, v81);
    if (v64 <= v65)
    {
      v40 = 1;
      if (v65 > v64 || v10 > v29)
      {
        goto LABEL_63;
      }

      if (v29 <= v10)
      {
        v66 = [obj anyObject];
        v67 = [v66 identifier];

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v68 = obj;
        v69 = [v68 countByEnumeratingWithState:&v92 objects:v116 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v93;
          do
          {
            for (n = 0; n != v70; ++n)
            {
              if (*v93 != v71)
              {
                objc_enumerationMutation(v68);
              }

              v73 = [*(*(&v92 + 1) + 8 * n) identifier];
              if (v67 >= v73)
              {
                v67 = v73;
              }
            }

            v70 = [v68 countByEnumeratingWithState:&v92 objects:v116 count:16];
          }

          while (v70);
        }

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v74 = v81;
        v75 = [v74 countByEnumeratingWithState:&v88 objects:v115 count:16];
        if (v75)
        {
          v76 = v75;
          v77 = *v89;
          v40 = 1;
LABEL_78:
          v78 = 0;
          while (1)
          {
            if (*v89 != v77)
            {
              objc_enumerationMutation(v74);
            }

            if ([*(*(&v88 + 1) + 8 * v78) identifier] < v67)
            {
              break;
            }

            if (v76 == ++v78)
            {
              v76 = [v74 countByEnumeratingWithState:&v88 objects:v115 count:16];
              if (v76)
              {
                goto LABEL_78;
              }

              goto LABEL_84;
            }
          }
        }

        else
        {
LABEL_84:
          v40 = -1;
        }

        goto LABEL_63;
      }
    }

    v40 = -1;
LABEL_63:

    goto LABEL_58;
  }

LABEL_32:
  v40 = -1;
LABEL_58:

  objc_autoreleasePoolPop(context);
  return v40;
}

double __148__PGLocationTitleUtility__sortedAOINodeCombinationsForCombinations_aoiNodesToAddressNodesMapTable_assetCountByAddressNodeIdentifier_locationHelper___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [*(a1 + 32) objectForKey:v9];
        [*(a1 + 40) _weightForAreaNode:v9 withAddressNodes:v10];
        v7 = v7 + v11;
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (double)_weightForAreaNode:(id)node withAddressNodes:(id)nodes
{
  v21 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  nodesCopy = nodes;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [nodesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(nodesCopy);
        }

        v12 = [nodeCopy anyEdgeFromNode:*(*(&v16 + 1) + 8 * i)];
        [v12 relevance];
        v14 = 1.0 - v13;

        v10 = v10 + v14;
      }

      v8 = [nodesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

+ (id)_aoiSubsetsFromAOI:(id)i maxSubsetSize:(unint64_t)size
{
  iCopy = i;
  v7 = [MEMORY[0x277CBEB58] set];
  if (size)
  {
    v8 = 1;
    do
    {
      v9 = [MEMORY[0x277CBEB98] set];
      v10 = [self _aoiSubsetsFromAOI:iCopy idx:0 currentSubset:v9 subsetSize:v8];
      [v7 unionSet:v10];

      ++v8;
    }

    while (v8 <= size);
  }

  return v7;
}

+ (id)_aoiSubsetsFromAOI:(id)i idx:(unint64_t)idx currentSubset:(id)subset subsetSize:(unint64_t)size
{
  iCopy = i;
  subsetCopy = subset;
  v12 = [MEMORY[0x277CBEB58] set];
  if ([iCopy count] != idx || objc_msgSend(subsetCopy, "count") >= size)
  {
    if ([subsetCopy count] == size)
    {
      [v12 addObject:subsetCopy];
    }

    else
    {
      v13 = [self _aoiSubsetsFromAOI:iCopy idx:idx + 1 currentSubset:subsetCopy subsetSize:size];
      [v12 unionSet:v13];

      v14 = [subsetCopy mutableCopy];
      v15 = [iCopy objectAtIndexedSubscript:idx];
      [v14 addObject:v15];

      v16 = [self _aoiSubsetsFromAOI:iCopy idx:idx + 1 currentSubset:v14 subsetSize:size];
      [v12 unionSet:v16];
    }
  }

  return v12;
}

+ (id)commonAOIComponentsForMomentNodes:(id)nodes addressNodes:(id)addressNodes aoiDisplayType:(unint64_t)type containsAmusementParkPOI:(BOOL)i locationHelper:(id)helper
{
  iCopy = i;
  v105 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  addressNodesCopy = addressNodes;
  helperCopy = helper;
  v71 = addressNodesCopy;
  if (![addressNodesCopy count] || type - 1 >= 4)
  {
    v42 = objc_alloc_init(MEMORY[0x277CBEB98]);
    goto LABEL_40;
  }

  if (iCopy)
  {
    v12 = 0.55;
  }

  else
  {
    v12 = dbl_22F78CE30[type - 1];
  }

  v13 = type == 2 || type == 4;
  v14 = 24;
  if (v13)
  {
    v14 = 45;
  }

  v60 = v14;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = nodesCopy;
  v15 = 0;
  v16 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
  if (v16)
  {
    v17 = *v98;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v98 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v97 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        numberOfAssets = [v19 numberOfAssets];
        v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v96[0] = 0;
        v96[1] = v96;
        v96[2] = 0x2020000000;
        v96[3] = 0;
        v92[0] = MEMORY[0x277D85DD0];
        v92[1] = 3221225472;
        v92[2] = __128__PGLocationTitleUtility_commonAOIComponentsForMomentNodes_addressNodes_aoiDisplayType_containsAmusementParkPOI_locationHelper___block_invoke;
        v92[3] = &unk_2788895E8;
        v93 = v71;
        v23 = v22;
        v94 = v23;
        v95 = v96;
        [v19 enumerateAddressEdgesAndNodesUsingBlock:v92];
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __128__PGLocationTitleUtility_commonAOIComponentsForMomentNodes_addressNodes_aoiDisplayType_containsAmusementParkPOI_locationHelper___block_invoke_2;
        v88[3] = &unk_278889610;
        v90 = v96;
        v89 = dictionary;
        v91 = numberOfAssets;
        [v23 enumerateKeysAndObjectsUsingBlock:v88];

        _Block_object_dispose(v96, 8);
        objc_autoreleasePoolPop(v20);
        v15 += numberOfAssets;
      }

      v16 = [obj countByEnumeratingWithState:&v97 objects:v104 count:16];
    }

    while (v16);
  }

  obja = [MEMORY[0x277CBEB38] dictionary];
  v73 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v61 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v57 = v71;
  v64 = [v57 countByEnumeratingWithState:&v84 objects:v103 count:16];
  v24 = vcvtpd_u64_f64(v12 * v15);
  v55 = v24;
  if (!v64)
  {

LABEL_44:
    keyEnumerator = [v73 keyEnumerator];
    allObjects = [keyEnumerator allObjects];

    contexta = [self _aoiSubsetsFromAOI:allObjects maxSubsetSize:2];
    v66 = [self _filteredAOINodeCombinationsForCombinations:contexta minSize:1 maxSize:2 maxTitleLength:v60 minNumberOfAssets:v55 aoiNodesToAddressNodesMapTable:v73 assetCountByAddressNodeIdentifier:dictionary locationHelper:helperCopy];
    v45 = [self _sortedAOINodeCombinationsForCombinations:v66 aoiNodesToAddressNodesMapTable:v73 assetCountByAddressNodeIdentifier:dictionary locationHelper:helperCopy];
    firstObject = [v45 firstObject];
    v42 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(firstObject, "count")}];
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v47 = firstObject;
    v48 = [v47 countByEnumeratingWithState:&v76 objects:v101 count:16];
    if (v48)
    {
      v49 = *v77;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v77 != v49)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v76 + 1) + 8 * j);
          v52 = [v73 objectForKey:v51];
          v53 = objc_alloc_init(PGLocationTitleComponent);
          [(PGLocationTitleComponent *)v53 setNode:v51];
          [(PGLocationTitleComponent *)v53 setAddressNodes:v52];
          [v42 addObject:v53];
        }

        v48 = [v47 countByEnumeratingWithState:&v76 objects:v101 count:16];
      }

      while (v48);
    }

    goto LABEL_52;
  }

  v54 = v15 - v24;
  v58 = 0;
  v59 = *v85;
  do
  {
    v25 = 0;
    do
    {
      if (*v85 != v59)
      {
        v26 = v25;
        objc_enumerationMutation(v57);
        v25 = v26;
      }

      v65 = v25;
      v27 = *(*(&v84 + 1) + 8 * v25);
      context = objc_autoreleasePoolPush();
      v28 = [MEMORY[0x277CBEB98] setWithObject:v27];
      v69 = [self _filteredAOINodesForAddressNodes:v28 aoiTitleMaximumLength:v60 locationHelper:helperCopy];

      [v61 setObject:v69 forKey:v27];
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v27, "identifier")}];
      v30 = [dictionary objectForKeyedSubscript:v29];
      unsignedIntegerValue = [v30 unsignedIntegerValue];

      if ([v69 count])
      {
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v32 = v69;
        v33 = [v32 countByEnumeratingWithState:&v80 objects:v102 count:16];
        if (v33)
        {
          v34 = *v81;
          do
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v81 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v36 = *(*(&v80 + 1) + 8 * k);
              v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "identifier")}];
              v38 = [obja objectForKeyedSubscript:v37];
              unsignedIntegerValue2 = [v38 unsignedIntegerValue];

              v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2 + unsignedIntegerValue];
              [obja setObject:v40 forKeyedSubscript:v37];

              v41 = [v73 objectForKey:v36];
              if (!v41)
              {
                v41 = [MEMORY[0x277CBEB58] set];
                [v73 setObject:v41 forKey:v36];
              }

              [v41 addObject:v27];
            }

            v33 = [v32 countByEnumeratingWithState:&v80 objects:v102 count:16];
          }

          while (v33);
        }
      }

      else
      {
        v58 += unsignedIntegerValue;
      }

      objc_autoreleasePoolPop(context);
      v25 = v65 + 1;
    }

    while (v65 + 1 != v64);
    v64 = [v57 countByEnumeratingWithState:&v84 objects:v103 count:16];
  }

  while (v64);

  if (v58 <= v54)
  {
    goto LABEL_44;
  }

  v42 = objc_alloc_init(MEMORY[0x277CBEB98]);
LABEL_52:

LABEL_40:

  return v42;
}

void __128__PGLocationTitleUtility_commonAOIComponentsForMomentNodes_addressNodes_aoiDisplayType_containsAmusementParkPOI_locationHelper___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v5])
  {
    [v11 relevance];
    v7 = v6;
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "identifier")}];
    [v9 setObject:v8 forKeyedSubscript:v10];

    *(*(*(a1 + 48) + 8) + 24) = v7 + *(*(*(a1 + 48) + 8) + 24);
  }
}

void __128__PGLocationTitleUtility_commonAOIComponentsForMomentNodes_addressNodes_aoiDisplayType_containsAmusementParkPOI_locationHelper___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 doubleValue];
  v7 = v6 / *(*(*(a1 + 40) + 8) + 24);
  v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v9 = [v8 unsignedIntegerValue];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:ceil(v7 * *(a1 + 48)) + v9];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
}

+ (id)_filteredAOINodesForAddressNodes:(id)nodes aoiTitleMaximumLength:(unint64_t)length locationHelper:(id)helper
{
  v32 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  helperCopy = helper;
  v8 = [MEMORY[0x277CBEB58] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = nodesCopy;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        collection = [v13 collection];
        v16 = [helperCopy areaNodesFromAddressNodes:collection];
        temporarySet = [v16 temporarySet];

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __96__PGLocationTitleUtility__filteredAOINodesForAddressNodes_aoiTitleMaximumLength_locationHelper___block_invoke;
        v23[3] = &unk_2788895C0;
        selfCopy = self;
        v24 = helperCopy;
        lengthCopy = length;
        v18 = [temporarySet objectsPassingTest:v23];
        [v8 unionSet:v18];

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  return v8;
}

BOOL __96__PGLocationTitleUtility__filteredAOINodesForAddressNodes_aoiTitleMaximumLength_locationHelper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isBlocked] & 1) == 0 && ((objc_msgSend(v3, "popularityScore"), v4 >= 500.0) || (objc_msgSend(v3, "popularityScore"), v5 == -1.0)))
  {
    v7 = [*(a1 + 40) beautifiedLocationNodeStringWithPlaceNode:v3 locationHelper:*(a1 + 32)];
    v8 = v7;
    if (v7)
    {
      v6 = [v7 length] <= *(a1 + 48);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_filteredAddressNodesWithAddressNodes:(id)nodes momentNodes:(id)momentNodes incompleteLocationResolver:(id)resolver filterSignificantLocationsOption:(unint64_t)option locationHelper:(id)helper
{
  v36[3] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  helperCopy = helper;
  resolverCopy = resolver;
  momentNodesCopy = momentNodes;
  v15 = [[PGLocationsResolver alloc] initWithMomentNodes:momentNodesCopy incompleteLocationResolver:resolverCopy locationHelper:helperCopy];

  LODWORD(v16) = 1051931443;
  [(PGLocationsResolver *)v15 setMaximumMissingLocationsThreshold:v16];
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v36[0] = v17;
  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  v36[1] = v18;
  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v36[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];

  v21 = [momentNodesCopy sortedArrayUsingDescriptors:v20];

  resolvedLocationNodes = [(PGLocationsResolver *)v15 resolvedLocationNodes];
  v23 = [[PGLocationsFilterer alloc] initWithSortedMomentNodes:v21 locationNodes:resolvedLocationNodes incompleteLocationResolver:resolverCopy];

  if (option == 3)
  {
    v24 = 2;
  }

  else
  {
    v24 = option == 2;
  }

  [(PGLocationsFilterer *)v23 setFilteringType:v24];
  filteredLocationNodes = [(PGLocationsFilterer *)v23 filteredLocationNodes];
  v26 = [filteredLocationNodes count];
  if (v26 < [resolvedLocationNodes count] && objc_msgSend(nodesCopy, "count"))
  {
    anyObject = [nodesCopy anyObject];
    graph = [anyObject graph];

    v35 = [(MAElementCollection *)[PGGraphAddressNodeCollection alloc] initWithSet:nodesCopy graph:graph];
    v29 = [(MAElementCollection *)[PGGraphLocationNodeCollection alloc] initWithArray:filteredLocationNodes graph:graph];
    [(PGGraphLocationNodeCollection *)v29 addressNodes];
    v31 = v30 = nodesCopy;
    v32 = [(MAElementCollection *)v35 collectionByIntersecting:v31];
    temporarySet = [v32 temporarySet];

    nodesCopy = temporarySet;
  }

  return nodesCopy;
}

+ (void)generateHighlightLocationTitleForTripWithMomentNodes:(id)nodes lineBreakBehavior:(unint64_t)behavior locationHelper:(id)helper result:(id)result
{
  resultCopy = result;
  helperCopy = helper;
  nodesCopy = nodes;
  v13 = [[PGLocationTripTitleUtility alloc] initWithMomentNodes:nodesCopy filterMomentsAndCities:1 allowLongAOI:0 locationHelper:helperCopy];

  usedTitleComponents = [(PGLocationTripTitleUtility *)v13 usedTitleComponents];
  tripTitleType = [(PGLocationTripTitleUtility *)v13 tripTitleType];
  v16 = 0;
  if (tripTitleType > 2)
  {
    if (tripTitleType == 3)
    {
      firstObject = [usedTitleComponents firstObject];
      lastObject = [usedTitleComponents lastObject];
      v22 = MEMORY[0x277CCACA8];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v23;
      v24 = @"PGTripHighlightTitleFormatToLocation %@ andLocation %@";
    }

    else
    {
      if (tripTitleType != 4)
      {
        goto LABEL_15;
      }

      firstObject = [usedTitleComponents firstObject];
      lastObject = [usedTitleComponents lastObject];
      v22 = MEMORY[0x277CCACA8];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v23;
      v24 = @"PGTripHighlightTitleFormatFromLocation %@ toLocation %@";
    }

    v27 = [v23 localizedStringForKey:v24 value:v24 table:@"Localizable"];
    v21 = [v22 localizedStringWithFormat:v27, firstObject, lastObject];
  }

  else
  {
    if ((tripTitleType - 1) >= 2)
    {
      if (tripTitleType)
      {
        goto LABEL_15;
      }

      v25 = +[PGLogging sharedLogging];
      loggingConnection = [v25 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Trip title type was not set properly, found to be PGTripTitleTypeOther", buf, 2u);
      }

LABEL_18:
      v16 = 0;
      if (!resultCopy)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    firstObject = [usedTitleComponents firstObject];
    v18 = MEMORY[0x277CCACA8];
    lastObject = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [lastObject localizedStringForKey:@"PGTripHighlightTitleFormatOneLocation %@" value:@"PGTripHighlightTitleFormatOneLocation %@" table:@"Localizable"];
    v21 = [v18 localizedStringWithFormat:v20, firstObject];
  }

  if (!v21)
  {
    goto LABEL_18;
  }

  v16 = [self _titleWithLineBreakBehavior:behavior forTitle:v21 titleComponents:usedTitleComponents];

LABEL_15:
  if (resultCopy)
  {
LABEL_16:
    usedLocationNodes = [(PGLocationTripTitleUtility *)v13 usedLocationNodes];
    resultCopy[2](resultCopy, v16, usedLocationNodes);
  }

LABEL_17:
}

+ (void)generateLocationTitleForTripWithMomentNodes:(id)nodes locationHelper:(id)helper result:(id)result
{
  resultCopy = result;
  helperCopy = helper;
  nodesCopy = nodes;
  v9 = [[PGLocationTripTitleUtility alloc] initWithMomentNodes:nodesCopy filterMomentsAndCities:1 locationHelper:helperCopy];

  if (resultCopy)
  {
    title = [(PGLocationTripTitleUtility *)v9 title];
    usedLocationNodes = [(PGLocationTripTitleUtility *)v9 usedLocationNodes];
    resultCopy[2](resultCopy, title, usedLocationNodes);
  }
}

+ (BOOL)containsAmusementParkPOIFromMomentNodes:(id)nodes
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  nodesCopy = nodes;
  v4 = [nodesCopy countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(nodesCopy);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __66__PGLocationTitleUtility_containsAmusementParkPOIFromMomentNodes___block_invoke;
      v10[3] = &unk_278889598;
      v10[4] = &v15;
      [v7 enumeratePOINodesUsingBlock:v10];
      if (v16[3])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [nodesCopy countByEnumeratingWithState:&v11 objects:v19 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v8 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v8 & 1;
}

void __66__PGLocationTitleUtility_containsAmusementParkPOIFromMomentNodes___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 label];
  *(*(*(a1 + 32) + 8) + 24) = [v5 isEqualToString:@"AmusementPark"];

  *a3 = *(*(*(a1 + 32) + 8) + 24);
}

+ (void)generateLocationTitleWithOptions:(id)options locationHelper:(id)helper serviceManager:(id)manager result:(id)result
{
  v102 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  helperCopy = helper;
  managerCopy = manager;
  resultCopy = result;
  v69 = optionsCopy;
  momentNodes = [optionsCopy momentNodes];
  if ([momentNodes count])
  {
    v11 = optionsCopy;
    if ([optionsCopy useBusinessItems])
    {
      v93 = 0;
      v94 = &v93;
      v95 = 0x3032000000;
      v96 = __Block_byref_object_copy__67482;
      v97 = __Block_byref_object_dispose__67483;
      v98 = 0;
      v87 = 0;
      v88 = &v87;
      v89 = 0x3032000000;
      v90 = __Block_byref_object_copy__67482;
      v91 = __Block_byref_object_dispose__67483;
      v92 = 0;
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __96__PGLocationTitleUtility_generateLocationTitleWithOptions_locationHelper_serviceManager_result___block_invoke;
      v86[3] = &unk_278889568;
      v86[4] = &v93;
      v86[5] = &v87;
      [PGLocationTitleUtility generateBusinessItemLocationWithOptions:optionsCopy result:v86];
      if (v94[5])
      {
        if (resultCopy)
        {
          if (v88[5])
          {
            [MEMORY[0x277CBEB98] setWithObject:?];
          }

          else
          {
            [MEMORY[0x277CBEB98] set];
          }
          v56 = ;
          resultCopy[2](resultCopy, v94[5], v56);
        }

        _Block_object_dispose(&v87, 8);

        _Block_object_dispose(&v93, 8);
        goto LABEL_85;
      }

      _Block_object_dispose(&v87, 8);

      _Block_object_dispose(&v93, 8);
      v11 = optionsCopy;
    }

    keyAssetAddressNode = [v11 keyAssetAddressNode];
    curationAddressNodes = [optionsCopy curationAddressNodes];
    lineBreakBehavior = [optionsCopy lineBreakBehavior];
    v12 = [MEMORY[0x277CBEB58] set];
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v13 = momentNodes;
    v14 = [v13 countByEnumeratingWithState:&v82 objects:v101 count:16];
    if (v14)
    {
      v15 = *v83;
      v16 = 1.79769313e308;
      v17 = -1.79769313e308;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v83 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v82 + 1) + 8 * i);
          [v19 timestampUTCStart];
          v21 = v20;
          [v19 timestampUTCEnd];
          if (v21 < v16)
          {
            v16 = v21;
          }

          if (v22 > v17)
          {
            v17 = v22;
          }

          addressNodes = [v19 addressNodes];
          if (addressNodes)
          {
            [v12 unionSet:addressNodes];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v82 objects:v101 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 1.79769313e308;
      v17 = -1.79769313e308;
    }

    v24 = [v12 count];
    if (resultCopy && !v24)
    {
      resultCopy[2](resultCopy, 0, 0);
    }

    filterSignificantLocationsType = [v69 filterSignificantLocationsType];
    if (((v17 - v16 > 172800.0) & [v69 useTripTitleForLongDuration]) == 1)
    {
      v26 = [[PGLocationTripTitleUtility alloc] initWithMomentNodes:v13 filterMomentsAndCities:filterSignificantLocationsType != 0 locationHelper:helperCopy];
      title = [(PGLocationTripTitleUtility *)v26 title];
      usedLocationNodes = [(PGLocationTripTitleUtility *)v26 usedLocationNodes];

      if (title)
      {
        v72 = usedLocationNodes;
LABEL_79:
        if (resultCopy)
        {
          (resultCopy)[2](resultCopy, title, v72);
        }

        goto LABEL_85;
      }
    }

    else
    {
      usedLocationNodes = 0;
    }

    v61 = [[PGIncompleteLocationResolver alloc] initWithAddressNodes:v12 locationHelper:helperCopy];
    if (filterSignificantLocationsType)
    {
      v27 = [self _filteredAddressNodesWithAddressNodes:v12 momentNodes:v13 incompleteLocationResolver:v61 filterSignificantLocationsOption:objc_msgSend(v69 locationHelper:{"filterSignificantLocationsType"), helperCopy}];
      v28 = v27;
      if (v27 != v12 || (v29 = [v27 count], v29 != objc_msgSend(v12, "count")))
      {
        v30 = [MEMORY[0x277CBEB58] setWithSet:v28];

        v12 = v30;
      }
    }

    v31 = [MEMORY[0x277CBEB58] set];
    if ([v69 peopleDisplayType])
    {
      v32 = [objc_opt_class() peopleLocationTitleComponentsFromAddressNodesSet:v12 peopleDisplayType:objc_msgSend(v69 serviceManager:{"peopleDisplayType"), managerCopy}];
      [v31 unionSet:v32];
    }

    v73 = [MEMORY[0x277CBEB58] set];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v33 = v31;
    v34 = [v33 countByEnumeratingWithState:&v78 objects:v100 count:16];
    if (v34)
    {
      v35 = *v79;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v79 != v35)
          {
            objc_enumerationMutation(v33);
          }

          addressNodes2 = [*(*(&v78 + 1) + 8 * j) addressNodes];
          [v73 unionSet:addressNodes2];
          [v12 minusSet:addressNodes2];
        }

        v34 = [v33 countByEnumeratingWithState:&v78 objects:v100 count:16];
      }

      while (v34);
    }

    aoiDisplayType = [v69 aoiDisplayType];
    if ((aoiDisplayType - 1) > 3)
    {
      v64 = 0;
    }

    else
    {
      v64 = [self commonAOIComponentsForMomentNodes:v13 addressNodes:v12 aoiDisplayType:aoiDisplayType containsAmusementParkPOI:objc_msgSend(self locationHelper:{"containsAmusementParkPOIFromMomentNodes:", v13), helperCopy}];
    }

    if ([v69 useCities])
    {
      v59 = [self _commonCityTitleComponentsFromMomentNodes:v13 remainingAddressNodes:v12 ignoredAddressNodes:v73 incompleteLocationResolver:v61 locationHelper:helperCopy];
      if (![v64 count])
      {
        if (v59)
        {
          [v33 unionSet:?];
        }

        else
        {
          v59 = 0;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v59 = 0;
      if (![v64 count])
      {
        goto LABEL_55;
      }
    }

    [v33 unionSet:v64];
LABEL_55:
    showAllCities = [v69 showAllCities];
    useDistrict = [v69 useDistrict];
    allowFamilyHome = [v69 allowFamilyHome];
    LOBYTE(v93) = 0;
    BYTE2(v57) = showAllCities;
    BYTE1(v57) = allowFamilyHome;
    LOBYTE(v57) = useDistrict;
    title = [self _beautifiedLocationStringWithTitleComponents:v33 momentNodes:v13 lineBreakBehavior:lineBreakBehavior keyAssetAddressNode:keyAssetAddressNode curationAddressNodes:curationAddressNodes isMatchingKeyAsset:&v93 useDistrict:v57 allowFamilyHome:helperCopy showAllCities:managerCopy locationHelper:? serviceManager:?];
    if ((v93 & 1) == 0 && [v64 count])
    {
      [v33 minusSet:v64];
      if ([v59 count])
      {
        [v33 unionSet:v59];
      }

      BYTE2(v58) = showAllCities;
      BYTE1(v58) = allowFamilyHome;
      LOBYTE(v58) = useDistrict;
      v42 = [self _beautifiedLocationStringWithTitleComponents:v33 momentNodes:v13 lineBreakBehavior:lineBreakBehavior keyAssetAddressNode:keyAssetAddressNode curationAddressNodes:curationAddressNodes isMatchingKeyAsset:&v93 useDistrict:v58 allowFamilyHome:helperCopy showAllCities:managerCopy locationHelper:? serviceManager:?];

      title = v42;
    }

    v72 = [MEMORY[0x277CBEB58] set];
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v43 = v33;
    v44 = [v43 countByEnumeratingWithState:&v74 objects:v99 count:16];
    if (v44)
    {
      v45 = *v75;
      do
      {
        v46 = 0;
        do
        {
          if (*v75 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v47 = *(*(&v74 + 1) + 8 * v46);
          node = [v47 node];
          v49 = node;
          if (node)
          {
            if ([node domain] == 200 || objc_msgSend(v49, "domain") == 201)
            {
              [v72 addObject:v49];
            }

            else if ([v49 domain] == 300)
            {
              edge = [v47 edge];
              v51 = edge;
              if (edge)
              {
                sourceNode = [edge sourceNode];
                v53 = [helperCopy cityNodeFromAddressNode:sourceNode];
                anyNode = [v53 anyNode];

                if (anyNode)
                {
                  [v72 addObject:anyNode];
                }
              }
            }
          }

          ++v46;
        }

        while (v44 != v46);
        v55 = [v43 countByEnumeratingWithState:&v74 objects:v99 count:16];
        v44 = v55;
      }

      while (v55);
    }

    goto LABEL_79;
  }

  if (resultCopy)
  {
    resultCopy[2](resultCopy, 0, 0);
  }

LABEL_85:
}

void __96__PGLocationTitleUtility_generateLocationTitleWithOptions_locationHelper_serviceManager_result___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (id)businessNodeForTitlingFromMomentNodes:(id)nodes businessNodesByMomentNode:(id)node
{
  nodesCopy = nodes;
  v6 = [node intersectingSourcesWith:nodesCopy];
  targets = [v6 targets];
  v8 = [targets count];

  if (v8 == 1)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 1;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __90__PGLocationTitleUtility_businessNodeForTitlingFromMomentNodes_businessNodesByMomentNode___block_invoke;
    v18 = &unk_278889540;
    v9 = v6;
    v19 = v9;
    v20 = v21;
    [nodesCopy enumerateIdentifiersAsCollectionsWithBlock:&v15];
    targets2 = [v9 targets];
    anyNode = [targets2 anyNode];

    name = [anyNode name];
    if ([name length] <= 0x1E && objc_msgSend(name, "length"))
    {
      v13 = anyNode;
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(v21, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __90__PGLocationTitleUtility_businessNodeForTitlingFromMomentNodes_businessNodesByMomentNode___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) targetsForSources:a3];
  v7 = [v6 count];

  if (!v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

+ (void)generateBusinessItemLocationWithOptions:(id)options result:(id)result
{
  v22[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  resultCopy = result;
  if (resultCopy)
  {
    momentNodes = [optionsCopy momentNodes];
    anyObject = [momentNodes anyObject];
    graph = [anyObject graph];

    if ([momentNodes count] && graph)
    {
      v11 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:momentNodes graph:graph];
      v12 = MEMORY[0x277D22BF8];
      v13 = +[PGGraphMomentNode businessOfMoment];
      v14 = [v12 adjacencyWithSources:v11 relation:v13 targetsClass:objc_opt_class()];

      v15 = [self businessNodeForTitlingFromMomentNodes:v11 businessNodesByMomentNode:v14];
      v16 = v15;
      if (v15)
      {
        name = [v15 name];
        lineBreakBehavior = [optionsCopy lineBreakBehavior];
        v22[0] = name;
        [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
        v19 = v18 = v14;
        v20 = [self _titleWithLineBreakBehavior:lineBreakBehavior forTitle:name titleComponents:v19];

        v14 = v18;
        resultCopy[2](resultCopy, v20, v16);
      }

      else
      {
        resultCopy[2](resultCopy, 0, 0);
      }
    }

    else
    {
      resultCopy[2](resultCopy, 0, 0);
    }
  }
}

@end