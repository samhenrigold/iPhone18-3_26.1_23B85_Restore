@interface PGTripEnrichmentProfile
- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options;
- (double)promotionScoreWithHighlightInfo:(id)info;
- (id)curationOptionsWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter;
- (id)titleWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter curatedAssets:(id)assets keyAsset:(id)asset createVerboseTitle:(BOOL)title error:(id *)error;
@end

@implementation PGTripEnrichmentProfile

- (double)promotionScoreWithHighlightInfo:(id)info
{
  infoCopy = info;
  highlightNode = [infoCopy highlightNode];
  numberOfExtendedAssets = [infoCopy numberOfExtendedAssets];
  highlightTailorContext = [infoCopy highlightTailorContext];

  neighborScoreComputer = [highlightTailorContext neighborScoreComputer];
  [PGGraphHighlightNode promotionScoreWithHighlightNode:highlightNode enrichmentState:4 numberOfExtendedAssets:numberOfExtendedAssets neighborScoreComputer:neighborScoreComputer];
  v9 = v8;

  return v9;
}

- (id)curationOptionsWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter
{
  filterCopy = filter;
  infoCopy = info;
  v6 = [[PGCurationOptions alloc] initWithDuration:14];
  [(PGCurationOptions *)v6 setLastPassMovieAdditionEnabled:0];
  [(PGCurationOptions *)v6 setSharingFilter:filterCopy];
  [(PGCurationOptions *)v6 setUseDurationBasedCuration:1];
  [(PGCurationOptions *)v6 setMinimumDuration:0.0];
  [PGDefaultEnrichmentProfile targetCurationDurationWithHighlightInfo:infoCopy sharingFilter:filterCopy options:v6];
  [(PGCurationOptions *)v6 setTargetDuration:?];
  [(PGCurationOptions *)v6 setFailIfMinimumDurationNotReached:0];
  [(PGCurationOptions *)v6 setSemanticalDedupingEnabled:1];
  [(PGCurationOptions *)v6 setMovieDedupingEnabled:1];
  v7 = [infoCopy uuidsOfRequiredAssetsForSharingFilter:filterCopy];

  if ([v7 count])
  {
    [(PGCurationOptions *)v6 setUuidsOfRequiredAssets:v7];
  }

  return v6;
}

- (id)titleWithHighlightInfo:(id)info sharingFilter:(unsigned __int16)filter curatedAssets:(id)assets keyAsset:(id)asset createVerboseTitle:(BOOL)title error:(id *)error
{
  infoCopy = info;
  highlightNode = [infoCopy highlightNode];
  highlightTailorContext = [infoCopy highlightTailorContext];

  titleGenerationContext = [highlightTailorContext titleGenerationContext];
  locationHelper = [titleGenerationContext locationHelper];
  v19 = 0;
  v14 = [PGTripTitleGenerator titleTupleForDayHighlightGroupNode:highlightNode locationHelper:locationHelper error:&v19];
  v15 = v19;

  if (v14)
  {
    v16 = v14;
  }

  else if (error)
  {
    v17 = v15;
    *error = v15;
  }

  return v14;
}

- (BOOL)canEnrichHighlight:(id)highlight withOptions:(unint64_t)options
{
  [highlight type];

  JUMPOUT(0x231902050);
}

@end