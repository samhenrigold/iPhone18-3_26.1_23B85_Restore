@interface PGSingleMomentMemoryGenerator
- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block;
- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter;
- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph;
@end

@implementation PGSingleMomentMemoryGenerator

- (id)relevantFeederForTriggeredMemory:(id)memory inGraph:(id)graph allowGuestAsset:(BOOL)asset progressReporter:(id)reporter
{
  assetCopy = asset;
  graphCopy = graph;
  v27.receiver = self;
  v27.super_class = PGSingleMomentMemoryGenerator;
  v11 = [(PGMemoryGenerator *)&v27 relevantFeederForTriggeredMemory:memory inGraph:graphCopy allowGuestAsset:assetCopy progressReporter:reporter];
  assetFetchResult = [v11 assetFetchResult];
  v13 = MEMORY[0x277CD97A8];
  memoryCurationSession = [(PGMemoryGenerator *)self memoryCurationSession];
  curationContext = [memoryCurationSession curationContext];
  v16 = [v13 clsAllAssetsFromFetchResult:assetFetchResult prefetchOptions:22 curationContext:curationContext];

  if ([v16 count] > 0xC)
  {
    v26 = [PGMemoryGeneratorUtils filterImportedAssetsWithoutLocationAndWithoutSceneOrPersonOverlapFromAllAssets:v16 withGraph:graphCopy];
    v18 = objc_alloc(MEMORY[0x277CD98D0]);
    allObjects = [v26 allObjects];
    photoLibrary = [assetFetchResult photoLibrary];
    fetchType = [assetFetchResult fetchType];
    fetchPropertySets = [assetFetchResult fetchPropertySets];
    v23 = [v18 initWithObjects:allObjects photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

    memoryCurationSession2 = [(PGMemoryGenerator *)self memoryCurationSession];
    v17 = [PGMemoryGenerationHelper feederForMemoriesWithAssetFetchResult:v23 memoryCurationSession:memoryCurationSession2 graph:graphCopy];
  }

  else
  {
    v17 = v11;
  }

  return v17;
}

- (id)titleGeneratorForTriggeredMemory:(id)memory withKeyAsset:(id)asset curatedAssets:(id)assets extendedCuratedAssets:(id)curatedAssets titleGenerationContext:(id)context inGraph:(id)graph
{
  memoryCopy = memory;
  assetCopy = asset;
  assetsCopy = assets;
  curatedAssetsCopy = curatedAssets;
  contextCopy = context;
  graphCopy = graph;
  triggerTypes = [memoryCopy triggerTypes];
  v21 = [triggerTypes containsIndex:4];

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x277CCA970]);
    creationDate = [memoryCopy creationDate];
    anyNode = [v22 initWithStartDate:creationDate duration:0.0];

    v25 = [PGTitleGenerator alloc];
    memoryMomentNodes = [memoryCopy memoryMomentNodes];
    v27 = [memoryMomentNodes set];
    v28 = [(PGTitleGenerator *)v25 initWithMomentNodes:v27 referenceDateInterval:anyNode keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:1 titleGenerationContext:contextCopy];

LABEL_5:
    goto LABEL_7;
  }

  triggerTypes2 = [memoryCopy triggerTypes];
  v30 = [triggerTypes2 containsIndex:11];

  if (v30)
  {
    v31 = MEMORY[0x277D27690];
    creationDate2 = [memoryCopy creationDate];
    v33 = [v31 yearFromDate:creationDate2];

    memoryMomentNodes2 = [memoryCopy memoryMomentNodes];
    anyNode = [memoryMomentNodes2 anyNode];

    v35 = MEMORY[0x277D27690];
    universalStartDate = [anyNode universalStartDate];
    v37 = [v35 yearFromDate:universalStartDate];

    v28 = [[PGThrowbackThursdayMemoryTitleGenerator alloc] initWithMomentNode:anyNode numberOfYearsAgo:v33 - v37 titleGenerationContext:contextCopy];
    goto LABEL_5;
  }

  v39.receiver = self;
  v39.super_class = PGSingleMomentMemoryGenerator;
  v28 = [(PGMemoryGenerator *)&v39 titleGeneratorForTriggeredMemory:memoryCopy withKeyAsset:assetCopy curatedAssets:assetsCopy extendedCuratedAssets:curatedAssetsCopy titleGenerationContext:contextCopy inGraph:graphCopy];
LABEL_7:

  return v28;
}

- (id)generatePotentialMemoriesForProcessingWindow:(id)window graph:(id)graph progressBlock:(id)block
{
  v34[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v8 = MEMORY[0x277CBEB18];
  windowCopy = window;
  v10 = objc_alloc_init(v8);
  memoryGenerationContext = [(PGMemoryGenerator *)self memoryGenerationContext];
  v12 = [memoryGenerationContext momentNodesForProcessingWindow:windowCopy inGraph:graphCopy];

  interestingForMemoriesSubset = [v12 interestingForMemoriesSubset];

  v14 = [interestingForMemoriesSubset momentNodesWithMinimumNumberOfExtendedCuratedAssets:13];

  if ([v14 count])
  {
    v15 = [PGGraphMemoryNodeCollection memoryNodesOfCategory:16 inGraph:graphCopy];
    momentNodes = [v15 momentNodes];
    v17 = [v14 collectionBySubtracting:momentNodes];

    momentNodesWithBlockedFeatureCache = [(PGMemoryGenerator *)self momentNodesWithBlockedFeatureCache];
    momentNodesWithBlockedFeature = [momentNodesWithBlockedFeatureCache momentNodesWithBlockedFeature];

    v20 = [v17 collectionBySubtracting:momentNodesWithBlockedFeature];

    memoryGenerationContext2 = [(PGMemoryGenerator *)self memoryGenerationContext];
    v22 = [memoryGenerationContext2 momentNodesAtSensitiveLocationsInGraph:graphCopy];

    v14 = [v20 collectionBySubtracting:v22];

    v23 = MEMORY[0x277D22C90];
    v24 = +[PGGraphMomentNode dateOfMoment];
    v34[0] = v24;
    v25 = +[PGGraphDateNode monthDayOfDate];
    v34[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v27 = [v23 chain:v26];

    v28 = [MEMORY[0x277D22BF8] adjacencyWithSources:v14 relation:v27 targetsClass:objc_opt_class()];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __98__PGSingleMomentMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke;
    v32[3] = &unk_2788820D8;
    v29 = v10;
    v33 = v29;
    [v28 enumerateTargetsBySourceWithBlock:v32];
    v30 = v29;
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  return v30;
}

void __98__PGSingleMomentMemoryGenerator_generatePotentialMemoriesForProcessingWindow_graph_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 featureNodeCollection];
  v8 = [v5 featureNodeCollection];

  v10 = [v7 collectionByFormingUnionWith:v8];

  v9 = [[PGGraphMemory alloc] initWithMemoryCategory:1 memoryCategorySubcategory:1001 momentNodes:v6 featureNodes:v10];
  [*(a1 + 32) addObject:v9];
}

@end