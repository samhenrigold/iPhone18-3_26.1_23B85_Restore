@interface PGContextualRuleUtils
+ (id)dayHighlightContainingAsset:(id)asset;
+ (id)onThisDayLocalDateForYearHighlight:(id)highlight withOptions:(id)options;
+ (void)returnContextualKeyAssetForHighlightNode:(id)node yearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter score:(double)score inPhotoLibrary:(id)library loggingConnection:(id)connection usingBlock:(id)block;
@end

@implementation PGContextualRuleUtils

+ (id)dayHighlightContainingAsset:(id)asset
{
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v6 = MEMORY[0x277CCAC30];
  objectID = [assetCopy objectID];

  v8 = [v6 predicateWithFormat:@"assets CONTAINS %@ and kind = %d", objectID, 0];
  [librarySpecificFetchOptions setInternalPredicate:v8];

  v9 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  firstObject = [v9 firstObject];

  return firstObject;
}

+ (void)returnContextualKeyAssetForHighlightNode:(id)node yearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter score:(double)score inPhotoLibrary:(id)library loggingConnection:(id)connection usingBlock:(id)block
{
  filterCopy = filter;
  v49 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  highlightCopy = highlight;
  libraryCopy = library;
  connectionCopy = connection;
  blockCopy = block;
  v20 = [nodeCopy fetchAssetCollectionInPhotoLibrary:libraryCopy];
  if (v20)
  {
    v38 = nodeCopy;
    v39 = blockCopy;
    oslog = connectionCopy;
    [libraryCopy librarySpecificFetchOptions];
    v22 = v21 = highlightCopy;
    [v22 setFetchLimit:1];
    [v22 setSharingFilter:filterCopy];
    v23 = [MEMORY[0x277CD9958] fetchParentDayGroupHighlightForHighlight:v20 options:v22];
    firstObject = [v23 firstObject];

    if (firstObject)
    {
      v25 = firstObject;
    }

    else
    {
      v25 = v20;
    }

    v26 = [MEMORY[0x277CD9958] fetchParentHighlightForHighlight:v25 options:v22];
    firstObject2 = [v26 firstObject];

    v28 = [MEMORY[0x277CD9958] fetchParentHighlightForHighlight:firstObject2 options:v22];
    firstObject3 = [v28 firstObject];

    uuid = [firstObject3 uuid];
    v40 = v21;
    uuid2 = [v21 uuid];
    v32 = [uuid isEqualToString:uuid2];

    if (v32)
    {
      librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
      [librarySpecificFetchOptions setSharingFilter:filterCopy];
      [librarySpecificFetchOptions setIncludeGuestAssets:1];
      [librarySpecificFetchOptions setFetchLimit:1];
      v34 = [MEMORY[0x277CD97A8] fetchKeyCuratedAssetInAssetCollection:v20 referenceAsset:0 options:librarySpecificFetchOptions];
      firstObject4 = [v34 firstObject];

      if (firstObject4 && firstObject2)
      {
        buf[0] = 0;
        connectionCopy = oslog;
        nodeCopy = v38;
        if (score == 0.0)
        {
          [v20 promotionScore];
          score = v36;
        }

        v39[2](v39, firstObject4, v20, firstObject2, buf, score);
      }

      else
      {
        connectionCopy = oslog;
        nodeCopy = v38;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v42 = v38;
          v43 = 2112;
          v44 = v20;
          v45 = 2112;
          v46 = firstObject2;
          v47 = 2112;
          v48 = firstObject4;
          _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "Did not return contextual key asset for highlight node %@:\n\tHighlight: %@\n\tMonth highlight: %@\n\tKey asset: %@", buf, 0x2Au);
        }
      }
    }

    else
    {
      connectionCopy = oslog;
      nodeCopy = v38;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v42 = v38;
        v43 = 2112;
        v44 = v20;
        v45 = 2112;
        v46 = firstObject3;
        v47 = 2112;
        v48 = v40;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_DEFAULT, "Contextual year highlight do not match year highlight for highlight node %@:\n\tContexutal Highlight: %@\n\tContextual Year Highlight: %@\n\tYear highlight: %@\n", buf, 0x2Au);
      }
    }

    blockCopy = v39;
    highlightCopy = v40;
  }

  else if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v42 = nodeCopy;
    _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "Cannot find highlight for highlight node %@: graph might be out of date", buf, 0xCu);
  }
}

+ (id)onThisDayLocalDateForYearHighlight:(id)highlight withOptions:(id)options
{
  optionsCopy = options;
  localDateComponents = [highlight localDateComponents];
  localTodayComponents = [optionsCopy localTodayComponents];

  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setYear:{objc_msgSend(localDateComponents, "year")}];
  [v8 setMonth:{objc_msgSend(localTodayComponents, "month")}];
  [v8 setDay:{objc_msgSend(localTodayComponents, "day")}];
  [v8 setHour:12];
  [v8 setMinute:0];
  [v8 setSecond:0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [currentCalendar dateFromComponents:v8];

  return v10;
}

@end