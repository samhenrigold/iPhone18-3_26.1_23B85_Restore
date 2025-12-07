@interface PGGraphIngestRecipe
- (NSArray)highlightsToIngest;
- (NSArray)momentsToIngest;
- (PGGraphIngestRecipe)initWithPhotoLibrary:(id)library;
- (id)_highlightsForLibraryAnalysis;
- (id)_momentsForLibraryAnalysis;
- (id)defaultPostprocessorsWithGraphBuilder:(id)builder;
- (id)defaultPreprocessorsWithGraphBuilder:(id)builder;
@end

@implementation PGGraphIngestRecipe

- (id)defaultPostprocessorsWithGraphBuilder:(id)builder
{
  v26[20] = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v25 = [[PGGraphIngestHomeWorkProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[0] = v25;
  v24 = [[PGGraphIngestLocationDisambiguationProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[1] = v24;
  v23 = [[PGGraphIngestFrequentLocationProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[2] = v23;
  v22 = [[PGGraphIngestPointsOfInterestProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[3] = v22;
  v21 = [[PGGraphIngestLocationsOfInterestProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[4] = v21;
  v20 = [[PGGraphIngestPublicEventsProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[5] = v20;
  v19 = [[PGGraphIngestBusinessProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[6] = v19;
  v18 = [[PGGraphIngestNextEdgesProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[7] = v18;
  v17 = [[PGGraphRelationshipTaggingProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[8] = v17;
  v16 = [[PGGraphIngestSocialGroupsProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[9] = v16;
  v15 = [[PGGraphIngestAOIBlockingProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[10] = v15;
  v4 = [[PGGraphIngestHolidaysProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[11] = v4;
  v5 = [[PGGraphIngestMeaningfulEventsProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[12] = v5;
  v6 = [[PGGraphIngestPersonAgeCategoryProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[13] = v6;
  v7 = [[PGGraphIngestPersonBiologicalSexProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[14] = v7;
  v8 = [[PGGraphIngestRelationshipProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[15] = v8;
  v9 = [[PGGraphIngestPetProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[16] = v9;
  v10 = [[PGGraphIngestEventLabelingProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[17] = v10;
  v11 = [[PGGraphIngestTripProcessor alloc] initWithGraphBuilder:builderCopy];
  v26[18] = v11;
  v12 = [[PGGraphIngestMemoryProcessor alloc] initWithGraphBuilder:builderCopy];

  v26[19] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:20];

  return v13;
}

- (id)defaultPreprocessorsWithGraphBuilder:(id)builder
{
  v9[3] = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v4 = [[PGGraphIngestPrefetchEventProcessor alloc] initWithGraphBuilder:builderCopy];
  v5 = [[PGGraphIngestPrefetchPeopleProcessor alloc] initWithGraphBuilder:builderCopy, v4];
  v9[1] = v5;
  v6 = [[PGGraphIngestPrefetchLocationProcessor alloc] initWithGraphBuilder:builderCopy];

  v9[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];

  return v7;
}

- (id)_highlightsForLibraryAnalysis
{
  v13[3] = *MEMORY[0x277D85DE8];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v13[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:0];
  v13[1] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v13[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  [librarySpecificFetchOptions setSortDescriptors:v6];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kind = %ld || kind = %ld", 0, 3];
  [librarySpecificFetchOptions setPredicate:v7];

  v8 = [MEMORY[0x277CD9958] fetchHighlightsWithOptions:librarySpecificFetchOptions];
  v9 = MEMORY[0x277CBEA60];
  fetchedObjects = [v8 fetchedObjects];
  v11 = [v9 arrayWithArray:fetchedObjects];

  return v11;
}

- (id)_momentsForLibraryAnalysis
{
  v20[3] = *MEMORY[0x277D85DE8];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v20[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:0];
  v20[1] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v20[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  [librarySpecificFetchOptions setSortDescriptors:v6];

  v7 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:librarySpecificFetchOptions];
  v8 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, objc_msgSend(v7, "count")}];
  v9 = [v8 mutableCopy];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __49__PGGraphIngestRecipe__momentsForLibraryAnalysis__block_invoke;
  v17 = &unk_278889B40;
  v18 = v7;
  v19 = v9;
  v10 = v9;
  v11 = v7;
  [v8 enumerateIndexesUsingBlock:&v14];
  v12 = [v11 objectsAtIndexes:{v10, v14, v15, v16, v17}];

  return v12;
}

void __49__PGGraphIngestRecipe__momentsForLibraryAnalysis__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectAtIndex:a2];
  if (![v4 estimatedAssetCount])
  {
    [*(a1 + 40) removeIndex:a2];
  }
}

- (NSArray)highlightsToIngest
{
  highlightsToIngest = self->_highlightsToIngest;
  if (!highlightsToIngest)
  {
    _highlightsForLibraryAnalysis = [(PGGraphIngestRecipe *)self _highlightsForLibraryAnalysis];
    v5 = self->_highlightsToIngest;
    self->_highlightsToIngest = _highlightsForLibraryAnalysis;

    highlightsToIngest = self->_highlightsToIngest;
  }

  return highlightsToIngest;
}

- (NSArray)momentsToIngest
{
  momentsToIngest = self->_momentsToIngest;
  if (!momentsToIngest)
  {
    _momentsForLibraryAnalysis = [(PGGraphIngestRecipe *)self _momentsForLibraryAnalysis];
    v5 = self->_momentsToIngest;
    self->_momentsToIngest = _momentsForLibraryAnalysis;

    momentsToIngest = self->_momentsToIngest;
  }

  return momentsToIngest;
}

- (PGGraphIngestRecipe)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PGGraphIngestRecipe;
  v6 = [(PGGraphIngestRecipe *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
  }

  return v7;
}

@end