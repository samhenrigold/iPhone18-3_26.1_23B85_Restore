@interface PGHighlightEnrichmentUtilities
+ (BOOL)canUseLocationInformationWithHighlightInfo:(id)info graph:(id)graph;
+ (BOOL)canUseSharingComposition:(unsigned __int16)composition forSharingFilter:(unsigned __int16)filter;
+ (double)meaningScoreWithMeanings:(id)meanings forLongTrip:(BOOL)trip graph:(id)graph collection:(id)collection keyAsset:(id)asset keyAssetCriteriaScore:(double *)score curationManager:(id)manager;
+ (id)assetPropertySetsForEnrichment;
+ (id)childHighlightNodeOfGroupHighlightNode:(id)node withLocalIdentifier:(id)identifier;
+ (id)filteredAssetsInAssets:(id)assets withSharingComposition:(unsigned __int16)composition forSharingFilter:(unsigned __int16)filter;
+ (id)filteredHighlightNodesWithHighlightNodes:(id)nodes forSharingFilter:(unsigned __int16)filter;
+ (id)filteredMomentNodesWithHighlightNode:(id)node forSharingFilter:(unsigned __int16)filter;
+ (id)filteredSummarizedFeaturesForHighlightWithInfo:(id)info sharingFilter:(unsigned __int16)filter;
+ (id)headKeyAssetWithExtendedCuration:(id)curation;
+ (id)internalPredicateForFetchingAssetsForSharingFilter:(unsigned __int16)filter;
+ (id)keyAssetForDayGroupHighlightWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter curationManager:(id)manager progressBlock:(id)block;
+ (id)keyAssetForMixedSharingCompositionKeyAssetRelationship:(unsigned __int16)relationship keyAssetPrivate:(id)private keyAssetShared:(id)shared;
+ (id)requiredAssetsInAssets:(id)assets withHighlightInfo:(id)info;
+ (id)selectKeyAssetForSharingComposition:(unsigned __int16)composition mixedSharingCompositionKeyAssetRelationship:(unsigned __int16)relationship givenHighlightFilter:(unsigned __int16)filter privateHandler:(id)handler sharedHandler:(id)sharedHandler;
+ (unsigned)mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:(id)private keyAssetShared:(id)shared shouldCompareHighlight:(BOOL)highlight;
@end

@implementation PGHighlightEnrichmentUtilities

+ (id)filteredSummarizedFeaturesForHighlightWithInfo:(id)info sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  infoCopy = info;
  v7 = infoCopy;
  if (filterCopy == 2)
  {
    mixedSummarizedFeatures = [infoCopy mixedSummarizedFeatures];
  }

  else if (filterCopy == 1)
  {
    mixedSummarizedFeatures = [infoCopy sharedSummarizedFeatures];
  }

  else
  {
    if (filterCopy)
    {
      goto LABEL_8;
    }

    mixedSummarizedFeatures = [infoCopy privateSummarizedFeatures];
  }

  v4 = mixedSummarizedFeatures;
LABEL_8:

  return v4;
}

+ (id)selectKeyAssetForSharingComposition:(unsigned __int16)composition mixedSharingCompositionKeyAssetRelationship:(unsigned __int16)relationship givenHighlightFilter:(unsigned __int16)filter privateHandler:(id)handler sharedHandler:(id)sharedHandler
{
  filterCopy = filter;
  relationshipCopy = relationship;
  compositionCopy = composition;
  handlerCopy = handler;
  sharedHandlerCopy = sharedHandler;
  v13 = sharedHandlerCopy;
  if (compositionCopy == 2)
  {
    sharedHandlerCopy = handlerCopy;
    if (filterCopy)
    {
      if (filterCopy == 2)
      {
        sharedHandlerCopy = handlerCopy;
        if (relationshipCopy >= 2)
        {
          if (relationshipCopy != 2)
          {
            goto LABEL_11;
          }

          sharedHandlerCopy = v13;
        }
      }

      else
      {
        sharedHandlerCopy = v13;
        if (filterCopy != 1)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    if (compositionCopy != 1)
    {
      if (!compositionCopy)
      {
        sharedHandlerCopy = handlerCopy;
        if ((filterCopy & 0xFFFFFFFD) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_11:
      v14 = 0;
      goto LABEL_16;
    }

    if ((filterCopy - 1) >= 2)
    {
      goto LABEL_11;
    }
  }

LABEL_15:
  v14 = (*(sharedHandlerCopy + 2))();
LABEL_16:

  return v14;
}

+ (BOOL)canUseLocationInformationWithHighlightInfo:(id)info graph:(id)graph
{
  v18 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  infoNode = [graph infoNode];
  canUseLocationDomain = [infoNode canUseLocationDomain];

  if (canUseLocationDomain)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    momentNodes = [infoCopy momentNodes];
    v8 = [momentNodes countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(momentNodes);
          }

          if ([*(*(&v13 + 1) + 8 * i) hasLocation])
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [momentNodes countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v8;
}

+ (BOOL)canUseSharingComposition:(unsigned __int16)composition forSharingFilter:(unsigned __int16)filter
{
  v4 = (composition - 1) < 2;
  v5 = (composition & 0xFFFD) == 0;
  if (filter)
  {
    v5 = 0;
  }

  if (filter != 1)
  {
    v4 = v5;
  }

  return filter == 2 || v4;
}

+ (id)keyAssetForMixedSharingCompositionKeyAssetRelationship:(unsigned __int16)relationship keyAssetPrivate:(id)private keyAssetShared:(id)shared
{
  relationshipCopy = relationship;
  privateCopy = private;
  sharedCopy = shared;
  v9 = sharedCopy;
  if (relationshipCopy == 2)
  {
    v10 = sharedCopy;
    goto LABEL_7;
  }

  v10 = privateCopy;
  if (relationshipCopy == 1)
  {
LABEL_7:
    v12 = v10;
    goto LABEL_9;
  }

  if (!relationshipCopy)
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v10 = privateCopy;
    if (v11)
    {
      *v14 = 0;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Mixed composition has unspecified key asset relationship: using private key asset.", v14, 2u);
      v10 = privateCopy;
    }

    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (unsigned)mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:(id)private keyAssetShared:(id)shared shouldCompareHighlight:(BOOL)highlight
{
  highlightCopy = highlight;
  v44 = *MEMORY[0x277D85DE8];
  privateCopy = private;
  sharedCopy = shared;
  [privateCopy curationScore];
  v10 = v9;
  [sharedCopy curationScore];
  v12 = v11;
  if (highlightCopy && v10 >= *MEMORY[0x277D3C768] && v11 >= *MEMORY[0x277D3C768])
  {
    photoLibrary = [privateCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setFetchLimit:1];
    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"kind", 0];
    [librarySpecificFetchOptions setPredicate:v16];

    v17 = [MEMORY[0x277CD9958] fetchAssetCollectionsContainingAsset:privateCopy withType:6 options:librarySpecificFetchOptions];
    firstObject = [v17 firstObject];

    v19 = [MEMORY[0x277CD9958] fetchAssetCollectionsContainingAsset:sharedCopy withType:6 options:librarySpecificFetchOptions];
    firstObject2 = [v19 firstObject];

    if (firstObject && firstObject2)
    {
      [firstObject promotionScore];
      v22 = v21;
      [firstObject2 promotionScore];
      if (v22 > v23)
      {
        v24 = 1;
LABEL_24:

        goto LABEL_25;
      }

      if (v23 > v22)
      {
        v24 = 2;
        goto LABEL_24;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      uuid = [privateCopy uuid];
      uuid2 = [firstObject uuid];
      uuid3 = [sharedCopy uuid];
      uuid4 = [firstObject2 uuid];
      *buf = 138413058;
      v37 = uuid;
      v38 = 2112;
      v39 = uuid2;
      v40 = 2112;
      v41 = uuid3;
      v42 = 2112;
      v43 = uuid4;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot find corresponding highlight for key asset private %@: %@, key asset shared %@: %@", buf, 0x2Au);
    }
  }

  if (v10 > v12)
  {
    goto LABEL_15;
  }

  if (v12 > v10)
  {
    goto LABEL_17;
  }

  [privateCopy overallAestheticScore];
  v30 = v29;
  [sharedCopy overallAestheticScore];
  if (v30 > v31)
  {
LABEL_15:
    v24 = 1;
    goto LABEL_25;
  }

  if (v31 > v30)
  {
LABEL_17:
    v24 = 2;
    goto LABEL_25;
  }

  uuid5 = [privateCopy uuid];
  uuid6 = [sharedCopy uuid];
  v34 = [uuid5 compare:uuid6];

  if (v34 == -1)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

LABEL_25:

  return v24;
}

+ (id)filteredHighlightNodesWithHighlightNodes:(id)nodes forSharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  nodesCopy = nodes;
  v6 = nodesCopy;
  if (filterCopy)
  {
    if (filterCopy == 1)
    {
      subsetWithSharedAssets = [nodesCopy subsetWithSharedAssets];
    }

    else
    {
      subsetWithSharedAssets = nodesCopy;
    }
  }

  else
  {
    subsetWithSharedAssets = [nodesCopy subsetWithPrivateAssets];
  }

  v8 = subsetWithSharedAssets;

  return v8;
}

+ (id)filteredMomentNodesWithHighlightNode:(id)node forSharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  nodeCopy = node;
  sharingComposition = [nodeCopy sharingComposition];
  if ([self canUseSharingComposition:sharingComposition forSharingFilter:filterCopy])
  {
    if (sharingComposition != 2)
    {
LABEL_6:
      eventEnrichmentMomentNodes = [nodeCopy eventEnrichmentMomentNodes];
      goto LABEL_9;
    }

    switch(filterCopy)
    {
      case 0:
        eventEnrichmentMomentNodes2 = [nodeCopy eventEnrichmentMomentNodes];
        subsetWithPrivateAssets = [eventEnrichmentMomentNodes2 subsetWithPrivateAssets];
        goto LABEL_8;
      case 1:
        eventEnrichmentMomentNodes2 = [nodeCopy eventEnrichmentMomentNodes];
        subsetWithPrivateAssets = [eventEnrichmentMomentNodes2 subsetWithSharedAssets];
        goto LABEL_8;
      case 2:
        goto LABEL_6;
    }
  }

  v9 = [PGGraphMomentNodeCollection alloc];
  eventEnrichmentMomentNodes2 = [nodeCopy graph];
  subsetWithPrivateAssets = [(MAElementCollection *)v9 initWithGraph:eventEnrichmentMomentNodes2];
LABEL_8:
  eventEnrichmentMomentNodes = subsetWithPrivateAssets;

LABEL_9:

  return eventEnrichmentMomentNodes;
}

+ (id)internalPredicateForFetchingAssetsForSharingFilter:(unsigned __int16)filter
{
  if (filter == 2)
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  }

  else if (filter == 1)
  {
    v3 = [MEMORY[0x277D3ACE0] predicateToIncludeSharedLibraryAssetsAllowingIndexingOnParticipationState:?];
  }

  else if (filter)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277D3ACE0] predicateToIncludePrivateLibraryAssetsAllowingIndexingOnParticipationState:1];
  }

  return v3;
}

+ (id)filteredAssetsInAssets:(id)assets withSharingComposition:(unsigned __int16)composition forSharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  compositionCopy = composition;
  assetsCopy = assets;
  if (![self canUseSharingComposition:compositionCopy forSharingFilter:filterCopy])
  {
    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_15;
  }

  if (compositionCopy != 2)
  {
    v11 = assetsCopy;
    goto LABEL_15;
  }

  if (filterCopy == 2)
  {
    v12 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  }

  else
  {
    if (filterCopy == 1)
    {
      v9 = MEMORY[0x277CCAC30];
      v10 = @"clsIsInSharedLibrary == YES";
    }

    else
    {
      if (filterCopy)
      {
        v13 = 0;
        goto LABEL_14;
      }

      v9 = MEMORY[0x277CCAC30];
      v10 = @"clsIsInSharedLibrary == NO";
    }

    v12 = [v9 predicateWithFormat:v10];
  }

  v13 = v12;
LABEL_14:
  v11 = [assetsCopy filteredArrayUsingPredicate:v13];

LABEL_15:

  return v11;
}

+ (id)requiredAssetsInAssets:(id)assets withHighlightInfo:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  infoCopy = info;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  keyAssetPrivateUUID = [infoCopy keyAssetPrivateUUID];
  keyAssetSharedUUID = [infoCopy keyAssetSharedUUID];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = assetsCopy;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        uuid = [v15 uuid];
        if (([v15 isFavorite] & 1) != 0 || (objc_msgSend(uuid, "isEqualToString:", keyAssetPrivateUUID) & 1) != 0 || objc_msgSend(uuid, "isEqualToString:", keyAssetSharedUUID))
        {
          [v7 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v7;
}

+ (id)headKeyAssetWithExtendedCuration:(id)curation
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  curationCopy = curation;
  v4 = [curationCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    *&v8 = -1.79769313e308;
    v9 = 4;
    v10 = -1.79769313e308;
LABEL_3:
    v11 = 0;
    v12 = *&v8;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(curationCopy);
      }

      if ((v13 = *(*(&v20 + 1) + 8 * v11), [v13 clsContentScore], v15 = v14, objc_msgSend(v13, "clsAestheticScore"), *&v8 = v16, v6) && v15 <= v10 && (v15 == v10 ? (v17 = v16 <= v12) : (v17 = 1), v17))
      {
        *&v8 = v12;
      }

      else
      {
        v18 = v13;

        v10 = v15;
        v6 = v18;
      }

      if (!--v9)
      {
        break;
      }

      ++v11;
      v12 = *&v8;
      if (v5 == v11)
      {
        v5 = [curationCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (double)meaningScoreWithMeanings:(id)meanings forLongTrip:(BOOL)trip graph:(id)graph collection:(id)collection keyAsset:(id)asset keyAssetCriteriaScore:(double *)score curationManager:(id)manager
{
  scoreCopy = score;
  tripCopy = trip;
  v39 = *MEMORY[0x277D85DE8];
  meaningsCopy = meanings;
  graphCopy = graph;
  collectionCopy = collection;
  assetCopy = asset;
  managerCopy = manager;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = [meaningsCopy countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v16)
  {
    v20 = 0.0;
    v21 = 0.0;
    goto LABEL_33;
  }

  v17 = v16;
  v18 = *v35;
  if (tripCopy)
  {
    v19 = 0.2;
  }

  else
  {
    v19 = 0.4;
  }

  v20 = 0.0;
  v21 = 0.0;
  do
  {
    v22 = 0;
    do
    {
      if (*v35 != v18)
      {
        objc_enumerationMutation(meaningsCopy);
      }

      v23 = *(*(&v34 + 1) + 8 * v22);
      scoreCopy = [PGGraph meaningForMeaningLabel:v23, scoreCopy];
      v25 = 0.0;
      if (scoreCopy <= 4)
      {
        if ((scoreCopy - 2) < 2)
        {
          goto LABEL_19;
        }

        if (scoreCopy == 1)
        {
          v25 = 0.5;
        }

        else if (scoreCopy == 4)
        {
          v25 = 0.3;
        }
      }

      else if (scoreCopy <= 0x10)
      {
        v25 = v19;
        if (((1 << scoreCopy) & 0x7C00) == 0)
        {
          if (((1 << scoreCopy) & 0x2E0) != 0 || (v25 = 0.0, scoreCopy == 16))
          {
LABEL_19:
            v25 = 0.1;
          }
        }
      }

      if (v25 >= v21)
      {
        curationCriteriaFactory = [managerCopy curationCriteriaFactory];
        v27 = [curationCriteriaFactory curationCriteriaWithCollection:collectionCopy meaningLabel:v23 inGraph:graphCopy client:0];

        v33 = 0.0;
        if ([v27 passesForItem:assetCopy score:&v33] && (v25 > v21 || v25 == v21 && v33 >= v20))
        {
          v20 = v33;
          v21 = v25;
        }
      }

      ++v22;
    }

    while (v17 != v22);
    v28 = [meaningsCopy countByEnumeratingWithState:&v34 objects:v38 count:16];
    v17 = v28;
  }

  while (v28);
LABEL_33:
  if (scoreCopy)
  {
    *scoreCopy = v20;
  }

  return v21;
}

+ (id)childHighlightNodeOfGroupHighlightNode:(id)node withLocalIdentifier:(id)identifier
{
  nodeCopy = node;
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__63046;
  v17 = __Block_byref_object_dispose__63047;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__PGHighlightEnrichmentUtilities_childHighlightNodeOfGroupHighlightNode_withLocalIdentifier___block_invoke;
  v10[3] = &unk_278888438;
  v7 = identifierCopy;
  v11 = v7;
  v12 = &v13;
  [nodeCopy enumerateHighlightNodesUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __93__PGHighlightEnrichmentUtilities_childHighlightNodeOfGroupHighlightNode_withLocalIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 localIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (id)keyAssetForDayGroupHighlightWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter curationManager:(id)manager progressBlock:(id)block
{
  filterCopy = filter;
  v176[3] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  managerCopy = manager;
  blockCopy = block;
  v12 = _Block_copy(blockCopy);
  v13 = 0.0;
  v14 = &unk_22F784000;
  if (v12)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      LOBYTE(v150) = 0;
      v12[2](v12, &v150, 0.0);
      if (v150 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v156 = 62;
          *&v156[4] = 2080;
          *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightEnrichmentUtilities.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v16 = 0;
        goto LABEL_128;
      }

      v13 = Current;
    }
  }

  v112 = blockCopy;
  v127 = managerCopy;
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"promotionScore" ascending:0];
  v176[0] = v17;
  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v176[1] = v18;
  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v176[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:3];

  childHighlights = [infoCopy childHighlights];
  v111 = v20;
  v22 = [childHighlights sortedArrayUsingDescriptors:v20];

  highlightNode = [infoCopy highlightNode];
  LODWORD(v20) = [highlightNode isTrip];
  v128 = highlightNode;
  graph = [highlightNode graph];
  v133 = v12;
  v142 = v20;
  if (v20 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    highlight = [infoCopy highlight];
    assetCollection = [highlight assetCollection];
    uuid = [assetCollection uuid];
    highlight2 = [infoCopy highlight];
    assetCollection2 = [highlight2 assetCollection];
    localizedTitle = [assetCollection2 localizedTitle];
    [infoCopy highlight];
    v29 = v28 = infoCopy;
    assetCollection3 = [v29 assetCollection];
    localizedSubtitle = [assetCollection3 localizedSubtitle];
    *buf = 138412802;
    *v156 = uuid;
    *&v156[8] = 2112;
    *&v156[10] = localizedTitle;
    v157 = 2112;
    v158 = localizedSubtitle;
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "TripKeyAsset: highlight (%@): %@, %@", buf, 0x20u);

    infoCopy = v28;
    v12 = v133;

    v14 = &unk_22F784000;
  }

  photoLibrary = [v127 photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setSharingFilter:filterCopy];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v34 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions setFetchPropertySets:v34];

  v110 = librarySpecificFetchOptions;
  v35 = [MEMORY[0x277CD97A8] fetchKeyAssetByHighlightUUIDForHighlights:v22 options:librarySpecificFetchOptions];
  v36 = MEMORY[0x277CD97A8];
  v147 = v35;
  allValues = [v35 allValues];
  highlightTailorContext = [infoCopy highlightTailorContext];
  curationContext = [highlightTailorContext curationContext];
  [v36 prefetchOnAssets:allValues options:31 curationContext:curationContext];

  highlightTailorContext2 = [infoCopy highlightTailorContext];
  neighborScoreComputer = [highlightTailorContext2 neighborScoreComputer];

  meaningLabelsByChildHighlightUUID = [infoCopy meaningLabelsByChildHighlightUUID];
  if (v142)
  {
    sceneGeography = [v127 sceneGeography];
  }

  else
  {
    sceneGeography = 0;
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v41 = v22;
  v149 = [v41 countByEnumeratingWithState:&v151 objects:v175 count:16];
  v113 = infoCopy;
  if (!v149)
  {
    v144 = 0;
    goto LABEL_119;
  }

  v143 = 0;
  v144 = 0;
  v145 = *v152;
  v42 = *MEMORY[0x277D3C778];
  v43 = 1;
  v138 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  v139 = 0.0;
  v46 = 0.0;
  obj = v41;
  v114 = *MEMORY[0x277D3C778];
  while (2)
  {
    for (i = 0; i != v149; ++i)
    {
      if (*v152 != v145)
      {
        objc_enumerationMutation(obj);
      }

      v48 = *(*(&v151 + 1) + 8 * i);
      v49 = objc_autoreleasePoolPush();
      if (v12)
      {
        v50 = CFAbsoluteTimeGetCurrent();
        if (v50 - v13 >= v14[76])
        {
          LOBYTE(v150) = 0;
          v12[2](v12, &v150, 0.5);
          if (v150)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v156 = 110;
              *&v156[4] = 2080;
              *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightEnrichmentUtilities.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            objc_autoreleasePoolPop(v49);
            v41 = obj;

            v16 = 0;
            blockCopy = v112;
            infoCopy = v113;
            managerCopy = v127;
            goto LABEL_125;
          }

          v13 = v50;
        }
      }

      uuid2 = [v48 uuid];
      v52 = [v147 objectForKeyedSubscript:uuid2];

      if (v52)
      {
        v53 = 1;
        if (([v52 clsAvoidIfPossibleAsKeyItemForMemories:0 allowGuestAsset:1] & 1) == 0)
        {
          [v52 curationScore];
          v53 = v54 <= v42;
        }

        if (!(v43 | !v53))
        {
          v43 = 0;
          goto LABEL_111;
        }

        [v48 promotionScore];
        v56 = v55;
        if (!((v55 >= v46) | v142 & 1))
        {
          if ((v43 & 1) == 0)
          {

            objc_autoreleasePoolPop(v49);
            v41 = obj;
            goto LABEL_119;
          }

          if (v139 > v42 && v53)
          {
            v43 = 1;
            goto LABEL_111;
          }
        }

        v140 = v13;
        v150 = 0;
        [v52 overallAestheticScore];
        v59 = v58;
        v60 = 0.0;
        v136 = v46;
        v137 = v44;
        if (v142)
        {
          v132 = v43;
          v61 = v128;
          localIdentifier = [v48 localIdentifier];
          v63 = [self childHighlightNodeOfGroupHighlightNode:v61 withLocalIdentifier:localIdentifier];

          if (v63)
          {
            v123 = v49;
            localIdentifier2 = [v48 localIdentifier];
            v65 = [meaningLabelsByChildHighlightUUID objectForKeyedSubscript:localIdentifier2];

            v130 = v65;
            [self meaningScoreWithMeanings:v65 forLongTrip:objc_msgSend(v61 graph:"isLongTrip") collection:graph keyAsset:v63 keyAssetCriteriaScore:v52 curationManager:{&v150, v127}];
            v60 = v66;
            v67 = v56;
            if (v56 >= 0.6)
            {
              v67 = v56;
              if (v66 == 0.0)
              {
                [v63 nonMeaningfulPromotionScoreForTripKeyAssetWithEnrichmentState:objc_msgSend(v48 neighborScoreComputer:{"enrichmentState"), neighborScoreComputer}];
                v67 = v68;
              }
            }

            if (v60 <= v44)
            {
              v69 = v60 == v44;
              if (v67 <= v46)
              {
                v69 = 0;
              }
            }

            else
            {
              v69 = 1;
            }

            v131 = v69;
            v122 = v63;
            v74 = v60 == v44;
            if (v67 != v46)
            {
              v74 = 0;
            }

            v129 = v74;
            v125 = v61;
            if (sceneGeography)
            {
              v116 = v45;
              [v52 clsIconicSceneScoreWithSceneGeography:sceneGeography];
              v73 = v75;
              curationModel = [v52 curationModel];
              iconicScoreModel = [curationModel iconicScoreModel];

              curationModel2 = [v144 curationModel];
              iconicScoreModel2 = [curationModel2 iconicScoreModel];

              [iconicScoreModel minimumMeaningfulIconicScore];
              v80 = v79;
              [iconicScoreModel similarIconicScoreThreshold];
              v82 = v81;
              if (v73 >= v80)
              {
                curationModel3 = [v52 curationModel];
                v71 = [curationModel3 isAestheticallyPrettyGoodWithAsset:v52];
              }

              else
              {
                v71 = 0;
              }

              v49 = v123;
              if (v144)
              {
                version = [iconicScoreModel2 version];
                version2 = [iconicScoreModel version];
                v86 = vabdd_f64(v73, v138);
                if (version == version2)
                {
                  v87 = v71;
                }

                else
                {
                  v87 = 0;
                }

                if (v86 <= v82)
                {
                  v72 = v87;
                }

                else
                {
                  v72 = 0;
                }

                v135 = [iconicScoreModel bucketForIconicScore:v73];
                v88 = [iconicScoreModel2 bucketForIconicScore:v138];
                v42 = v114;
                if (v71)
                {
                  v134 = (v135 > v88) & ~v72;
                }

                else
                {
                  v134 = 0;
                }
              }

              else
              {
                v72 = 0;
                v134 = 0;
                v42 = v114;
              }

              v45 = v116;
            }

            else
            {
              v72 = 0;
              v71 = 0;
              v134 = 0;
              v73 = 0.0;
              v49 = v123;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              [v48 uuid];
              v89 = v124 = v72;
              localizedTitle2 = [v48 localizedTitle];
              localizedSubtitle2 = [v48 localizedSubtitle];
              allObjects = [v130 allObjects];
              v118 = [allObjects componentsJoinedByString:{@", "}];
              *buf = 138414850;
              *v156 = v89;
              *&v156[8] = 2112;
              *&v156[10] = localizedTitle2;
              v157 = 2112;
              v158 = localizedSubtitle2;
              v159 = 2112;
              v160 = v118;
              v161 = 2048;
              v162 = v60;
              v163 = 2048;
              v164 = v67;
              v165 = 2048;
              v166 = v56;
              v167 = 1024;
              v168 = v131;
              v169 = 1024;
              v170 = v129;
              v171 = 2048;
              v172 = v150;
              v173 = 2048;
              v174 = v73;
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "TripKeyAsset: child (%@): %@, %@\n\t[%@], meaningScore = %.3f, promotionScore = %.3f (%.3f), hasHigherMeaningScore %d, hasSameMeaningScore %d, criteriaScore %.3f, iconicSceneScore %.3f", buf, 0x68u);

              v72 = v124;
            }

            if (!v129)
            {
              v93 = 0;
              v70 = v131;
              v43 = v132;
LABEL_71:
              v94 = v59;
              if (v70)
              {
                v95 = v71;
              }

              else
              {
                v95 = v143;
              }

              v143 = v95;
              [v52 clsContentScore];
              v97 = v96;
              v98 = v45;
              v99 = vabdd_f64(v94, v45);
              v14 = &unk_22F784000;
              if (!v144)
              {
                goto LABEL_97;
              }

              if (v43 | v53)
              {
                if (!(v43 & !v53) && v96 <= v139)
                {
                  v53 = v43;
LABEL_109:
                  v12 = v133;
                  v45 = v98;
                  v46 = v136;
                  v44 = v137;
LABEL_110:
                  v43 = v53;
                  v13 = v140;
                  goto LABEL_111;
                }
              }

              else
              {
                if (v143)
                {
                  if ((v70 | v93 & v134))
                  {
                    goto LABEL_97;
                  }

                  v100 = v96 > v139;
                  LOBYTE(v101) = v93 & v72;
                  if (v99 <= 0.025)
                  {
                    LOBYTE(v101) = 0;
                  }

                  if (v98 >= v94)
                  {
                    LOBYTE(v101) = 0;
                  }

                  v102 = (v101 & 1 | ((v93 & 1) == 0) | ((v72 & 1) == 0) | (v99 > 0.025)) == 0;
                }

                else
                {
                  if (v70)
                  {
                    goto LABEL_97;
                  }

                  v100 = v98 < v94;
                  if (v96 > v139)
                  {
                    v101 = v93;
                  }

                  else
                  {
                    v101 = 0;
                  }

                  v103 = v101 | v93 ^ 1;
                  if (v96 != v139)
                  {
                    v103 = 1;
                  }

                  v102 = v103 == 0;
                }

                if (!v102)
                {
                  v100 = v101;
                }

                if (!v100)
                {
                  v53 = 0;
                  goto LABEL_109;
                }
              }

LABEL_97:
              v104 = v52;

              v105 = v138;
              if (v73 > v138)
              {
                v105 = v73;
              }

              if (!v72)
              {
                v105 = v73;
              }

              v138 = v105;
              if (v99 <= 0.025)
              {
                if (v98 >= v94)
                {
                  v45 = v98;
                }

                else
                {
                  v45 = v94;
                }

                v44 = v60;
              }

              else
              {
                v44 = v60;
                v45 = v94;
              }

              v139 = v97;
              v46 = v67;
              v144 = v104;
              v12 = v133;
              goto LABEL_110;
            }

            v143 |= v71;
            v56 = v67;
            v70 = v131;
          }

          else
          {

            v70 = 0;
            v134 = 0;
            v71 = 0;
            v72 = 0;
            v73 = 0.0;
          }

          v43 = v132;
        }

        else
        {
          v70 = 0;
          v134 = 0;
          v71 = 0;
          v72 = 0;
          v73 = 0.0;
        }

        v93 = 1;
        v67 = v56;
        goto LABEL_71;
      }

LABEL_111:

      objc_autoreleasePoolPop(v49);
    }

    v41 = obj;
    v149 = [obj countByEnumeratingWithState:&v151 objects:v175 count:16];
    if (v149)
    {
      continue;
    }

    break;
  }

LABEL_119:

  blockCopy = v112;
  infoCopy = v113;
  managerCopy = v127;
  if (v12 && CFAbsoluteTimeGetCurrent() - v13 >= v14[76] && (LOBYTE(v150) = 0, v12[2](v12, &v150, 1.0), v150))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v156 = 249;
      *&v156[4] = 2080;
      *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Enrich/PGHighlightEnrichmentUtilities.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v16 = 0;
LABEL_125:
    v106 = v110;
    v107 = sceneGeography;
    v108 = v144;
  }

  else
  {
    v108 = v144;
    v16 = v108;
    v106 = v110;
    v107 = sceneGeography;
  }

LABEL_128:

  return v16;
}

+ (id)assetPropertySetsForEnrichment
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD9AB8];
  v5[0] = *MEMORY[0x277CD9A78];
  v5[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];

  return v3;
}

@end