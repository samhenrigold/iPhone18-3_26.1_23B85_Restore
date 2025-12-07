@interface PGAggregationEnrichmentProfile
- (PGAggregationEnrichmentProfile)initWithCurationManager:(id)manager loggingConnection:(id)connection;
- (double)promotionScoreWithHighlightInfo:(id)info;
- (id)curationOptionsWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter;
- (id)titleWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter curatedAssets:(id)assets keyAsset:(id)asset createVerboseTitle:(BOOL)title error:(id *)error;
@end

@implementation PGAggregationEnrichmentProfile

- (id)curationOptionsWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  infoCopy = info;
  v6 = [[PGCurationOptions alloc] initWithDuration:12];
  [(PGCurationOptions *)v6 setSemanticalDedupingEnabled:1];
  [(PGCurationOptions *)v6 setMovieDedupingEnabled:1];
  [(PGCurationOptions *)v6 setLastPassMovieAdditionEnabled:0];
  [(PGCurationOptions *)v6 setFocusOnInterestingItems:1];
  v7 = [infoCopy uuidsOfRequiredAssetsForSharingFilter:filterCopy];

  if ([v7 count])
  {
    [(PGCurationOptions *)v6 setUuidsOfRequiredAssets:v7];
  }

  return v6;
}

- (id)titleWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter curatedAssets:(id)assets keyAsset:(id)asset createVerboseTitle:(BOOL)title error:(id *)error
{
  filterCopy = filter;
  v47[2] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  assetCopy = asset;
  assetsCopy = assets;
  highlightNode = [infoCopy highlightNode];
  v15 = +[PGHighlightEnrichmentUtilities filteredAssetsInAssets:withSharingComposition:forSharingFilter:](PGHighlightEnrichmentUtilities, "filteredAssetsInAssets:withSharingComposition:forSharingFilter:", assetsCopy, [highlightNode sharingComposition], filterCopy);

  if ([v15 count])
  {
    v16 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssets:v15 title:0];
  }

  else
  {
    v16 = 0;
  }

  v17 = [PGHighlightEnrichmentUtilities filteredMomentNodesWithHighlightNode:highlightNode forSharingFilter:filterCopy];
  v45 = highlightNode;
  if ([v17 count])
  {
    v44 = v16;
    v18 = [PGAggregationHighlightTitleGenerator alloc];
    temporarySet = [v17 temporarySet];
    highlightTailorContext = [infoCopy highlightTailorContext];
    [highlightTailorContext titleGenerationContext];
    v21 = v42 = infoCopy;
    v22 = [(PGAggregationHighlightTitleGenerator *)v18 initWithMomentNodes:temporarySet keyAsset:assetCopy curatedAssetCollection:v44 titleGenerationContext:v21];

    [(PGTitleGenerator *)v22 setLineBreakBehavior:2];
    [(PGTitleGenerator *)v22 setPreferredTitleType:2];
    title = [(PGTitleGenerator *)v22 title];
    v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v47[0] = v23;
    v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
    v47[1] = v24;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];

    v25 = [v15 sortedArrayUsingDescriptors:v40];
    firstObject = [v25 firstObject];
    localCreationDate = [firstObject localCreationDate];

    lastObject = [v25 lastObject];
    localCreationDate2 = [lastObject localCreationDate];

    v30 = [(PLDateRangeTitleGenerator *)self->_dateRangeTitleGenerator dateRangeTitleWithStartDate:localCreationDate endDate:localCreationDate2 category:0 kind:3 type:3];
    v31 = [PGTitle titleWithString:v30 category:0];
    v32 = [[PGTitleTuple alloc] initWithWithTitle:title subtitle:v31];

    v16 = v44;
    infoCopy = v42;
  }

  else
  {
    if (error)
    {
      v33 = v16;
      v34 = MEMORY[0x277CCA9B8];
      v35 = MEMORY[0x277CCACA8];
      v36 = PHDescriptionForSharingFilter();
      v37 = [v35 stringWithFormat:@"No moment nodes for sharing filter %@", v36];
      v38 = v34;
      v16 = v33;
      *error = [v38 errorWithDescription:v37];
    }

    v32 = 0;
  }

  return v32;
}

- (double)promotionScoreWithHighlightInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  childHighlights = [info childHighlights];
  v4 = [childHighlights countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(childHighlights);
        }

        [*(*(&v11 + 1) + 8 * i) promotionScore];
        if (v7 < v9)
        {
          v7 = v9;
        }
      }

      v5 = [childHighlights countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (PGAggregationEnrichmentProfile)initWithCurationManager:(id)manager loggingConnection:(id)connection
{
  v8.receiver = self;
  v8.super_class = PGAggregationEnrichmentProfile;
  v4 = [(PGDayGroupAbstractEnrichmentProfile *)&v8 initWithCurationManager:manager loggingConnection:connection];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D3AC48]);
    dateRangeTitleGenerator = v4->_dateRangeTitleGenerator;
    v4->_dateRangeTitleGenerator = v5;
  }

  return v4;
}

@end