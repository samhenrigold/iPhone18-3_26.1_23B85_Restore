@interface PGMemoryGeneratorUtils
+ (BOOL)isImportedAsset:(id)asset;
+ (id)_outdoorROITypes;
+ (id)babyAndChildPersonNodesAtHomeOrFrequentLocationInGraph:(id)graph;
+ (id)filterImportedAssets:(id)assets byOverlapWithRelevantAssets:(id)relevantAssets withGraph:(id)graph;
+ (id)filterImportedAssetsWithoutLocationAndWithoutSceneOrPersonOverlapFromAllAssets:(id)assets withGraph:(id)graph;
+ (id)momentNodesAtHomeOrWorkOrFrequentLocationInGraph:(id)graph;
+ (id)outdoorROIMomentNodesNotAtHomeOrFrequentLocationInGraph:(id)graph useMomentFeatureEdges:(BOOL)edges;
+ (id)outdoorROINodesInGraph:(id)graph;
+ (id)personAndPetLocalIdentifiersInAssets:(id)assets;
@end

@implementation PGMemoryGeneratorUtils

+ (BOOL)isImportedAsset:(id)asset
{
  importProperties = [asset importProperties];
  importedBy = [importProperties importedBy];

  return (importedBy < 0x10) & (0xAFF8u >> importedBy);
}

+ (id)personAndPetLocalIdentifiersInAssets:(id)assets
{
  v17 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        clsPersonAndPetLocalIdentifiers = [*(*(&v12 + 1) + 8 * i) clsPersonAndPetLocalIdentifiers];
        [v4 addObjectsFromArray:clsPersonAndPetLocalIdentifiers];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)filterImportedAssets:(id)assets byOverlapWithRelevantAssets:(id)relevantAssets withGraph:(id)graph
{
  v51 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  relevantAssetsCopy = relevantAssets;
  graphCopy = graph;
  v11 = objc_alloc(MEMORY[0x277CBEB58]);
  v38 = relevantAssetsCopy;
  v12 = [self personAndPetLocalIdentifiersInAssets:relevantAssetsCopy];
  v13 = [v11 initWithSet:v12];

  v35 = graphCopy;
  meNode = [graphCopy meNode];
  localIdentifier = [meNode localIdentifier];

  if (localIdentifier)
  {
    [v13 addObject:localIdentifier];
  }

  v34 = localIdentifier;
  v37 = v13;
  v16 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:objc_opt_class()];
  v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = assetsCopy;
  v17 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v40 = *v46;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        v21 = objc_alloc(MEMORY[0x277CBEB98]);
        clsPersonAndPetLocalIdentifiers = [v20 clsPersonAndPetLocalIdentifiers];
        v23 = [v21 initWithArray:clsPersonAndPetLocalIdentifiers];

        if ([v23 count] && objc_msgSend(v23, "isSubsetOfSet:", v37))
        {
          [v39 addObject:v20];
        }

        else
        {
          clsSimilarityModelVersion = [v20 clsSimilarityModelVersion];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v25 = v38;
          v26 = [v25 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v42;
            while (2)
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v42 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                [v16 distanceBetweenItem:v20 andItem:*(*(&v41 + 1) + 8 * j)];
                v31 = v30;
                [v16 distanceThresholdForSimilarity:2 withSimilarityModelVersion:clsSimilarityModelVersion];
                if (v31 < v32)
                {
                  [v39 addObject:v20];
                  goto LABEL_21;
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v41 objects:v49 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:
        }
      }

      v18 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v18);
  }

  return v39;
}

+ (id)filterImportedAssetsWithoutLocationAndWithoutSceneOrPersonOverlapFromAllAssets:(id)assets withGraph:(id)graph
{
  v27 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  graphCopy = graph;
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = assetsCopy;
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
        v15 = MEMORY[0x277D3ACD0];
        [v14 locationCoordinate];
        if (([v15 canUseCoordinate:?] & 1) == 0 && objc_msgSend(self, "isImportedAsset:", v14))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  if ([v8 count] && objc_msgSend(v9, "count"))
  {
    v16 = [v8 count];
    v17 = v16 / [v9 count];
    v18 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v9];
    [v18 minusSet:v8];
    if (v17 >= 0.25 || [v18 count] <= 0xD)
    {
      v20 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v9];
    }

    else
    {
      v19 = [self filterImportedAssets:v8 byOverlapWithRelevantAssets:v18 withGraph:graphCopy];
      [v18 unionSet:v19];
      v20 = v18;
    }
  }

  else
  {
    v20 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v9];
  }

  return v20;
}

+ (id)momentNodesAtHomeOrWorkOrFrequentLocationInGraph:(id)graph
{
  graphCopy = graph;
  v4 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:graphCopy];
  momentNodes = [v4 momentNodes];
  v6 = [(PGGraphNodeCollection *)PGGraphHomeWorkNodeCollection nodesInGraph:graphCopy];

  addressNodes = [v6 addressNodes];
  momentNodes2 = [addressNodes momentNodes];

  v9 = [momentNodes collectionByFormingUnionWith:momentNodes2];

  return v9;
}

+ (id)_outdoorROITypes
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB58]);
  [v2 addIndex:2];
  [v2 addIndex:3];
  [v2 addIndex:4];
  [v2 addIndex:5];

  return v2;
}

+ (id)outdoorROIMomentNodesNotAtHomeOrFrequentLocationInGraph:(id)graph useMomentFeatureEdges:(BOOL)edges
{
  edgesCopy = edges;
  graphCopy = graph;
  v7 = [(PGGraphNodeCollection *)PGGraphHomeWorkNodeCollection nodesInGraph:graphCopy];
  addressNodes = [v7 addressNodes];
  momentNodes = [addressNodes momentNodes];

  v10 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:graphCopy];
  momentNodes2 = [v10 momentNodes];
  v12 = [momentNodes collectionByFormingUnionWith:momentNodes2];
  v13 = [self outdoorROINodesInGraph:graphCopy];

  if (edgesCopy)
  {
    featureNodeCollection = [v13 featureNodeCollection];
    momentNodes3 = [featureNodeCollection momentNodes];
  }

  else
  {
    momentNodes3 = [v13 momentNodes];
  }

  v16 = [momentNodes3 collectionBySubtracting:v12];

  return v16;
}

+ (id)outdoorROINodesInGraph:(id)graph
{
  graphCopy = graph;
  _outdoorROITypes = [self _outdoorROITypes];
  v6 = [PGGraphROINodeCollection roiNodesOfTypes:_outdoorROITypes inGraph:graphCopy];

  return v6;
}

+ (id)babyAndChildPersonNodesAtHomeOrFrequentLocationInGraph:(id)graph
{
  graphCopy = graph;
  v4 = [PGGraphPersonNodeCollection personNodesInAgeCategories:&unk_284485B98 includingMe:0 inGraph:graphCopy];
  if ([v4 count])
  {
    meNodeCollection = [graphCopy meNodeCollection];
    homeNodes = [meNodeCollection homeNodes];
    addressNodes = [homeNodes addressNodes];
    momentNodes = [addressNodes momentNodes];
    personNodes = [momentNodes personNodes];

    v10 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:graphCopy];

    momentNodes2 = [v10 momentNodes];
    personNodes2 = [momentNodes2 personNodes];

    v13 = [personNodes collectionByFormingUnionWith:personNodes2];
    v14 = [v13 collectionByIntersecting:v4];

    graphCopy = personNodes;
  }

  else
  {
    v14 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithGraph:graphCopy];
  }

  return v14;
}

@end