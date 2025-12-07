@interface PGCuratedLibraryIntelligenceMetricEvent
+ (id)librarySizeRangeDescriptionForLibrarySizeRange:(int64_t)range;
- (PGCuratedLibraryIntelligenceMetricEvent)initWithGraphManager:(id)manager;
- (double)_ratioFromNumerator:(unint64_t)numerator denominator:(unint64_t)denominator;
- (id)_aggregationGroups;
- (id)_assetsStatisticsInHighlights:(id)highlights photoLibrary:(id)library includeUtility:(BOOL)utility progressReporter:(id)reporter;
- (id)_dayHighlights;
- (id)_daysWithinAggregations;
- (id)_daysWithinTrips;
- (id)_defaultHighlights;
- (id)_longTripDayGroups;
- (id)_shortTripDayGroups;
- (id)payload;
- (unint64_t)_debugNumberOfAssets;
- (unint64_t)_numberOfDayHighlights;
- (void)_fillContentScoreStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillDayHighlightsStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillGenericStatisticsWithGraph:(id)graph;
- (void)_fillHiddenHighlightsStatisticsWithGraph:(id)graph;
- (void)_fillKeyAssetsStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillMomentsStatisticsWithGraph:(id)graph;
- (void)_fillMonthHighlightsStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillOnesiesHighlightStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillProcessingLevelStatisticsWithGraph:(id)graph progressReporter:(id)reporter;
- (void)_fillYearHighlightsStatisticsWithGraph:(id)graph;
- (void)_saveKey:(id)key doubleValue:(double)value payload:(id)payload;
- (void)_saveKey:(id)key integerValue:(unint64_t)value payload:(id)payload;
- (void)gatherMetricsWithProgressBlock:(id)block;
@end

@implementation PGCuratedLibraryIntelligenceMetricEvent

- (id)_longTripDayGroups
{
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 1];
  [librarySpecificFetchOptions setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000304 options:librarySpecificFetchOptions];

  return v5;
}

- (id)_shortTripDayGroups
{
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 2];
  [librarySpecificFetchOptions setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000304 options:librarySpecificFetchOptions];

  return v5;
}

- (id)_daysWithinTrips
{
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 5];
  [librarySpecificFetchOptions setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:librarySpecificFetchOptions];

  return v5;
}

- (id)_aggregationGroups
{
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 3];
  [librarySpecificFetchOptions setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000304 options:librarySpecificFetchOptions];

  return v5;
}

- (id)_daysWithinAggregations
{
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 6];
  [librarySpecificFetchOptions setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:librarySpecificFetchOptions];

  return v5;
}

- (id)_defaultHighlights
{
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 0];
  [librarySpecificFetchOptions setPredicate:v4];

  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:librarySpecificFetchOptions];

  return v5;
}

- (unint64_t)_numberOfDayHighlights
{
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  v4 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:librarySpecificFetchOptions];
  v5 = [v4 count];

  return v5;
}

- (id)_dayHighlights
{
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:librarySpecificFetchOptions];

  return v4;
}

- (double)_ratioFromNumerator:(unint64_t)numerator denominator:(unint64_t)denominator
{
  if (denominator)
  {
    return numerator / denominator;
  }

  else
  {
    return -1.0;
  }
}

- (id)_assetsStatisticsInHighlights:(id)highlights photoLibrary:(id)library includeUtility:(BOOL)utility progressReporter:(id)reporter
{
  utilityCopy = utility;
  v45 = *MEMORY[0x277D85DE8];
  highlightsCopy = highlights;
  libraryCopy = library;
  reporterCopy = reporter;
  if (![reporterCopy isCancelledWithProgress:0.0])
  {
    v32 = libraryCopy;
    v31 = objc_autoreleasePoolPush();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = highlightsCopy;
    v14 = highlightsCopy;
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      v19 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          v17 += [v21 estimatedAssetCount];
          v18 += [v21 extendedCount];
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    if (utilityCopy)
    {
      libraryCopy = v32;
      librarySpecificFetchOptions = [v32 librarySpecificFetchOptions];
      [librarySpecificFetchOptions setShouldPrefetchCount:1];
      utilityPredicate = [(PGCuratedLibraryIntelligenceMetricEvent *)self utilityPredicate];
      [librarySpecificFetchOptions setInternalPredicate:utilityPredicate];

      [librarySpecificFetchOptions setIncludeGuestAssets:1];
      v24 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollections:v14 options:librarySpecificFetchOptions];
      v25 = [v24 count];
      v26 = v31;
      if ([reporterCopy isCancelledWithProgress:0.8])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v42 = 787;
          v43 = 2080;
          v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v31);
        goto LABEL_24;
      }
    }

    else
    {
      v25 = 0;
      v26 = v31;
      libraryCopy = v32;
    }

    objc_autoreleasePoolPop(v26);
    if (![reporterCopy isCancelledWithProgress:1.0])
    {
      v38[0] = @"total";
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
      v39[0] = v27;
      v38[1] = @"curated";
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
      v39[1] = v28;
      v38[2] = @"utility";
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
      v39[2] = v29;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];

      goto LABEL_26;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v42 = 790;
      v43 = 2080;
      v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_24:
    v13 = MEMORY[0x277CBEC10];
LABEL_26:
    highlightsCopy = v33;
    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v42 = 764;
    v43 = 2080;
    v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v13 = MEMORY[0x277CBEC10];
LABEL_27:

  return v13;
}

- (unint64_t)_debugNumberOfAssets
{
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"creationDate >= %@", self->_debugDate];
  [librarySpecificFetchOptions setPredicate:v5];

  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v6 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v7 = [v6 count];

  return v7;
}

- (id)payload
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"librarySize" integerValue:self->_librarySize payload:dictionary];
  v4 = [objc_opt_class() librarySizeRangeDescriptionForLibrarySizeRange:self->_librarySizeRange];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"librarySizeRange" stringValue:v4 payload:dictionary];

  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfDaysWithPhotosInPastYear" integerValue:self->_numberOfDaysWithPhotosInPastYear payload:dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfDayHighlights" integerValue:self->_numberOfDayHighlights payload:dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfDefaultDayHighlights" integerValue:self->_numberOfDefaultDayHighlights payload:dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfDaysInTrips" integerValue:self->_numberOfDaysInTrips payload:dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfDaysInAggregations" integerValue:self->_numberOfDaysInAggregations payload:dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfDefaultDays" doubleValue:dictionary payload:self->_ratioOfDefaultDays];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfDaysInTrips" doubleValue:dictionary payload:self->_ratioOfDaysInTrips];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfDaysInAggregations" doubleValue:dictionary payload:self->_ratioOfDaysInAggregations];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfAggregations" integerValue:self->_numberOfAggregations payload:dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfShortTrips" integerValue:self->_numberOfShortTrips payload:dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfLongTrips" integerValue:self->_numberOfLongTrips payload:dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"averageNumberOfAssetsInDefaultHighlights" doubleValue:dictionary payload:self->_averageNumberOfAssetsInDefaultHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"averageNumberOfAssetsInAggregationHighlights" doubleValue:dictionary payload:self->_averageNumberOfAssetsInAggregationHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"averageNumberOfAssetsInTripHighlights" doubleValue:dictionary payload:self->_averageNumberOfAssetsInTripHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfHiddenDayHighlights" doubleValue:dictionary payload:self->_ratioOfHiddenDayHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsInDefaultHighlights" doubleValue:dictionary payload:self->_ratioOfAssetsInDefaultHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsInAggregationHighlights" doubleValue:dictionary payload:self->_ratioOfAssetsInAggregationHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsInTripHighlights" doubleValue:dictionary payload:self->_ratioOfAssetsInTripHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsWithUtilityCurationScore" doubleValue:dictionary payload:self->_ratioOfAssetsWithUtilityCurationScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsWithDefaultCurationScore" doubleValue:dictionary payload:self->_ratioOfAssetsWithDefaultCurationScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsWithImprovedCurationScore" doubleValue:dictionary payload:self->_ratioOfAssetsWithImprovedCurationScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAssetsWithBetterCurationScore" doubleValue:dictionary payload:self->_ratioOfAssetsWithBetterCurationScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"personalHighAestheticScore" doubleValue:dictionary payload:self->_personalHighAestheticScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"personalGoodAestheticScore" doubleValue:dictionary payload:self->_personalGoodAestheticScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"topTierAestheticScore" doubleValue:dictionary payload:self->_topTierAestheticScore];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"topTierAestheticScoreForTripKeyAsset" doubleValue:dictionary payload:self->_topTierAestheticScoreForTripKeyAsset];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfMonthHighlights" integerValue:self->_numberOfMonthHighlights payload:dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"averageNumberOfPromotedHighlightsPerMonth" doubleValue:dictionary payload:self->_averageNumberOfPromotedHighlightsPerMonth];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"averageNumberOfPromotedHighlightsPerMonthPastYear" doubleValue:dictionary payload:self->_averageNumberOfPromotedHighlightsPerMonthPastYear];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"averageNumberOfCuratedAssetsPerMonth" doubleValue:dictionary payload:self->_averageNumberOfCuratedAssetsPerMonth];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfCuratedAssetsCoveredInMonth" doubleValue:dictionary payload:self->_ratioOfCuratedAssetsCoveredInMonth];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfYearHighlights" integerValue:self->_numberOfYearHighlights payload:dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOf1siesAmongVisibleHighlights" doubleValue:dictionary payload:self->_ratioOfCurated1siesAmongVisibleHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOf2siesAmongVisibleHighlights" doubleValue:dictionary payload:self->_ratioOfCurated2siesAmongVisibleHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfCuratedAssets" doubleValue:dictionary payload:self->_numberOfCuratedAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfCuratedAssets" doubleValue:dictionary payload:self->_ratioOfCuratedAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfCuratedAssetsInTrips" doubleValue:dictionary payload:self->_ratioOfCuratedAssetsInTrips];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfCuratedAssetsInDefaultHighlights" doubleValue:dictionary payload:self->_ratioOfCuratedAssetsInDefaultHighlights];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfCuratedAssetsInAggregations" doubleValue:dictionary payload:self->_ratioOfCuratedAssetsInAggregations];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfUtilityAssets" doubleValue:dictionary payload:self->_ratioOfUtilityAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfUtilityAssetsInTrips" doubleValue:dictionary payload:self->_ratioOfUtilityAssetsInTrips];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfDedupedAssets" doubleValue:dictionary payload:self->_ratioOfDedupedAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfDedupedAssetsInTrips" doubleValue:dictionary payload:self->_ratioOfDedupedAssetsInTrips];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"numberOfMoments" integerValue:self->_numberOfMoments payload:dictionary];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfPhotoKeyAssets" doubleValue:dictionary payload:self->_ratioOfPhotoKeyAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfVideoKeyAssets" doubleValue:dictionary payload:self->_ratioOfVideoKeyAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAutoplayedPhotoKeyAssets" doubleValue:dictionary payload:self->_ratioOfAutoplayedPhotoKeyAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfAutoplayedVideoKeyAssets" doubleValue:dictionary payload:self->_ratioOfAutoplayedVideoKeyAssets];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfProcessedScenes" doubleValue:dictionary payload:self->_ratioOfProcessedScenes];
  [(PGCuratedLibraryIntelligenceMetricEvent *)self _saveKey:@"ratioOfProcessedFaces" doubleValue:dictionary payload:self->_ratioOfProcessedFaces];

  return dictionary;
}

- (void)_saveKey:(id)key integerValue:(unint64_t)value payload:(id)payload
{
  v7 = MEMORY[0x277CCABB0];
  payloadCopy = payload;
  keyCopy = key;
  v10 = [v7 numberWithUnsignedInteger:value];
  [payloadCopy setObject:v10 forKeyedSubscript:keyCopy];
}

- (void)_saveKey:(id)key doubleValue:(double)value payload:(id)payload
{
  if (*&PGMetricsUnavailableDoubleValue != value)
  {
    v7 = MEMORY[0x277CCABB0];
    payloadCopy = payload;
    keyCopy = key;
    v10 = [v7 numberWithDouble:value];
    [payloadCopy setObject:v10 forKeyedSubscript:keyCopy];
  }
}

- (void)_fillProcessingLevelStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v16 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  if (![v9 isCancelledWithProgress:0.0])
  {
    photoLibrary = [(PGManager *)self->_manager photoLibrary];
    [photoLibrary ratioOfAssetsWithFacesProcessed];
    [(PGCuratedLibraryIntelligenceMetricEvent *)self setRatioOfProcessedFaces:?];
    if ([v9 isCancelledWithProgress:0.5])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_11:

        goto LABEL_12;
      }

      v12 = 67109378;
      v13 = 619;
      v14 = 2080;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      [photoLibrary ratioOfAssetsWithScenesProcessed];
      [(PGCuratedLibraryIntelligenceMetricEvent *)self setRatioOfProcessedScenes:?];
      if (![v9 isCancelledWithProgress:1.0] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      v12 = 67109378;
      v13 = 621;
      v14 = 2080;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      v11 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v12, 0x12u);
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = 67109378;
    v13 = 614;
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v12, 0x12u);
  }

LABEL_12:

  objc_autoreleasePoolPop(v8);
}

- (void)_fillMomentsStatisticsWithGraph:(id)graph
{
  graphCopy = graph;
  v4 = objc_autoreleasePoolPush();
  self->_numberOfMoments = [graphCopy numberOfMomentNodes];
  objc_autoreleasePoolPop(v4);
}

- (void)_fillKeyAssetsStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v55 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v10 = [v9 isCancelledWithProgress:0.0];
  *(v45 + 24) = v10;
  if (!v10)
  {
    _dayHighlights = [(PGCuratedLibraryIntelligenceMetricEvent *)self _dayHighlights];
    if (v45[3])
    {
      *(v45 + 24) = 1;
      goto LABEL_7;
    }

    v12 = [v9 isCancelledWithProgress:0.2];
    *(v45 + 24) = v12;
    if (v12)
    {
LABEL_7:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 562;
        LOWORD(v53) = 2080;
        *(&v53 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_21;
    }

    *buf = 0;
    *&v53 = buf;
    *(&v53 + 1) = 0x2020000000;
    v54 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    photoLibrary = [(PGManager *)self->_manager photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v15 = [MEMORY[0x277CD97A8] fetchKeyAssetByHighlightUUIDForHighlights:_dayHighlights options:librarySpecificFetchOptions];
    if (v45[3])
    {
      *(v45 + 24) = 1;
      goto LABEL_12;
    }

    v16 = [v9 isCancelledWithProgress:0.5];
    *(v45 + 24) = v16;
    if (v16)
    {
LABEL_12:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v48 = 67109378;
        v49 = 572;
        v50 = 2080;
        v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v48, 0x12u);
      }

      goto LABEL_20;
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __94__PGCuratedLibraryIntelligenceMetricEvent__fillKeyAssetsStatisticsWithGraph_progressReporter___block_invoke;
    v25[3] = &unk_278880030;
    v27 = buf;
    v28 = &v36;
    v29 = &v40;
    v30 = &v32;
    v31 = &v44;
    v24 = v9;
    v26 = v24;
    [v15 enumerateKeysAndObjectsUsingBlock:v25];
    v17 = *(v53 + 24);
    v18 = v41[3];
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v17 denominator:v18 + v17];
    self->_ratioOfPhotoKeyAssets = v19;
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v37[3] denominator:v18 + v17];
    self->_ratioOfAutoplayedPhotoKeyAssets = v20;
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v41[3] denominator:v18 + v17];
    self->_ratioOfVideoKeyAssets = v21;
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v33[3] denominator:v18 + v17];
    self->_ratioOfAutoplayedVideoKeyAssets = v22;
    if (v45[3])
    {
      *(v45 + 24) = 1;
    }

    else
    {
      v23 = [v24 isCancelledWithProgress:1.0];
      *(v45 + 24) = v23;
      if ((v23 & 1) == 0)
      {
LABEL_19:

LABEL_20:
        _Block_object_dispose(&v32, 8);
        _Block_object_dispose(&v36, 8);
        _Block_object_dispose(&v40, 8);
        _Block_object_dispose(buf, 8);
LABEL_21:

        goto LABEL_22;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v48 = 67109378;
      v49 = 600;
      v50 = 2080;
      v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v48, 0x12u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 559;
    LOWORD(v53) = 2080;
    *(&v53 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_22:
  _Block_object_dispose(&v44, 8);

  objc_autoreleasePoolPop(v8);
}

void __94__PGCuratedLibraryIntelligenceMetricEvent__fillKeyAssetsStatisticsWithGraph_progressReporter___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  [v9 highlightVisibilityScore];
  v5 = v4;
  if ([v9 mediaType] == 1)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    if (v5 < 0.769230769)
    {
      goto LABEL_8;
    }

    v6 = 48;
  }

  else
  {
    if ([v9 mediaType] != 2)
    {
      goto LABEL_8;
    }

    ++*(*(*(a1 + 56) + 8) + 24);
    if (v5 < 0.769230769)
    {
      goto LABEL_8;
    }

    v6 = 64;
  }

  ++*(*(*(a1 + v6) + 8) + 24);
LABEL_8:
  v7 = *(*(a1 + 72) + 8);
  if (*(v7 + 24))
  {
    v8 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) isCancelledWithProgress:0.8];
    v7 = *(*(a1 + 72) + 8);
  }

  *(v7 + 24) = v8;
}

- (void)_fillOnesiesHighlightStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v42 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  if (![v9 isCancelledWithProgress:0.0])
  {
    photoLibrary = [(PGManager *)self->_manager photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"visibilityState == %d || visibilityState == %d", 1, 3];
    [librarySpecificFetchOptions setInternalPredicate:v12];

    v13 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
    if ([v9 isCancelledWithProgress:0.4])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_30:

        goto LABEL_31;
      }

      *buf = 67109378;
      v39 = 530;
      v40 = 2080;
      v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      v14 = MEMORY[0x277D86220];
    }

    else
    {
      v30 = librarySpecificFetchOptions;
      v31 = v8;
      v32 = graphCopy;
      v28 = [v13 count];
      v29 = v13;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = 0;
        v20 = *v34;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v20)
            {
              objc_enumerationMutation(v15);
            }

            v22 = *(*(&v33 + 1) + 8 * i);
            v23 = objc_autoreleasePoolPush();
            extendedCount = [v22 extendedCount];
            if (extendedCount == 1)
            {
              v25 = v19 + 1;
            }

            else
            {
              v25 = v19;
            }

            if (extendedCount == 2)
            {
              ++v18;
            }

            else
            {
              v19 = v25;
            }

            if ([v9 isCancelledWithProgress:0.8])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v39 = 547;
                v40 = 2080;
                v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              objc_autoreleasePoolPop(v23);

              v8 = v31;
              graphCopy = v32;
              v13 = v29;
              librarySpecificFetchOptions = v30;
              goto LABEL_30;
            }

            objc_autoreleasePoolPop(v23);
          }

          v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v19 denominator:v28];
      self->_ratioOfCurated1siesAmongVisibleHighlights = v26;
      [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v18 denominator:v28];
      self->_ratioOfCurated2siesAmongVisibleHighlights = v27;
      v8 = v31;
      graphCopy = v32;
      v13 = v29;
      librarySpecificFetchOptions = v30;
      if (![v9 isCancelledWithProgress:1.0] || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_30;
      }

      *buf = 67109378;
      v39 = 552;
      v40 = 2080;
      v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      v14 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v39 = 525;
    v40 = 2080;
    v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_31:

  objc_autoreleasePoolPop(v8);
}

- (void)_fillHiddenHighlightsStatisticsWithGraph:(id)graph
{
  graphCopy = graph;
  v4 = objc_autoreleasePoolPush();
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"promotionScore < 0.25"];
  [librarySpecificFetchOptions setInternalPredicate:v7];

  v8 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:librarySpecificFetchOptions];
  -[PGCuratedLibraryIntelligenceMetricEvent _ratioFromNumerator:denominator:](self, "_ratioFromNumerator:denominator:", [v8 count], self->_numberOfDayHighlights);
  self->_ratioOfHiddenDayHighlights = v9;

  objc_autoreleasePoolPop(v4);
}

- (void)_fillYearHighlightsStatisticsWithGraph:(id)graph
{
  graphCopy = graph;
  v4 = objc_autoreleasePoolPush();
  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v7 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000303 options:librarySpecificFetchOptions];
  self->_numberOfYearHighlights = [v7 count];

  objc_autoreleasePoolPop(v4);
}

- (void)_fillMonthHighlightsStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v63 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  v8 = objc_autoreleasePoolPush();
  v9 = reporterCopy;
  v48 = v9;
  if ([v9 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v60 = 445;
      v61 = 2080;
      v62 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    photoLibrary = [(PGManager *)self->_manager photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v12 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000302 options:librarySpecificFetchOptions];
    self->_numberOfMonthHighlights = [v12 count];
    if ([v9 isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v60 = 452;
        v61 = 2080;
        v62 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
      librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
      v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"visibilityState == %d || visibilityState == %d", 3, 2];
      v46 = librarySpecificFetchOptions2;
      [librarySpecificFetchOptions2 setInternalPredicate:v14];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = v12;
      v45 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      if (v45)
      {
        v44 = *v54;
        v41 = v8;
        v42 = graphCopy;
        v39 = librarySpecificFetchOptions;
        v40 = photoLibrary;
        v38 = v12;
        selfCopy = self;
        while (2)
        {
          v19 = 0;
          v20 = v48;
          do
          {
            if (*v54 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v53 + 1) + 8 * v19);
            v22 = objc_autoreleasePoolPush();
            startDate = [v21 startDate];
            [startDate timeIntervalSinceDate:currentLocalDate];
            v25 = v24;

            if (v25 < 0.0)
            {
              v25 = -v25;
            }

            if (v25 < 31536000.0)
            {
              ++v15;
            }

            v26 = [MEMORY[0x277CD9958] fetchChildHighlightsForHighlight:v21 options:v46];
            if ([v20 isCancelledWithProgress:0.5])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v60 = 476;
                v61 = 2080;
                v62 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              objc_autoreleasePoolPop(v22);
              v8 = v41;
              graphCopy = v42;
              librarySpecificFetchOptions = v39;
              photoLibrary = v40;
              v12 = v38;
              goto LABEL_38;
            }

            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v27 = v26;
            v28 = [v27 countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v50;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v50 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v17 += [*(*(&v49 + 1) + 8 * i) extendedCount];
                }

                if (v25 >= 31536000.0)
                {
                  v32 = 0;
                }

                else
                {
                  v32 = v29;
                }

                v18 += v29;
                v16 += v32;
                v29 = [v27 countByEnumeratingWithState:&v49 objects:v57 count:16];
              }

              while (v29);
            }

            objc_autoreleasePoolPop(v22);
            v20 = v48;
            if ([v48 isCancelledWithProgress:0.5])
            {
              v8 = v41;
              graphCopy = v42;
              librarySpecificFetchOptions = v39;
              photoLibrary = v40;
              v12 = v38;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v60 = 487;
                v61 = 2080;
                v62 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

LABEL_38:

              goto LABEL_39;
            }

            ++v19;
          }

          while (v19 != v45);
          v8 = v41;
          graphCopy = v42;
          librarySpecificFetchOptions = v39;
          photoLibrary = v40;
          v12 = v38;
          self = selfCopy;
          v45 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }
      }

      [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v16 denominator:v15];
      self->_averageNumberOfPromotedHighlightsPerMonthPastYear = v33;
      [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v18 denominator:self->_numberOfMonthHighlights];
      self->_averageNumberOfPromotedHighlightsPerMonth = v34;
      [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v17 denominator:self->_numberOfMonthHighlights];
      self->_averageNumberOfCuratedAssetsPerMonth = v35;
      [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:v17 denominator:self->_numberOfCuratedAssets];
      self->_ratioOfCuratedAssetsCoveredInMonth = v36;
      if ([v48 isCancelledWithProgress:1.0] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v60 = 494;
        v61 = 2080;
        v62 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

LABEL_39:
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (void)_fillContentScoreStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v10 = *MEMORY[0x277D85DE8];
  if ([reporter isCancelledWithProgress:{graph, 0.0}])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109378;
      v7[1] = 375;
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v7, 0x12u);
    }
  }

  else
  {
    v5 = *&PGMetricsUnavailableDoubleValue;
    *&self->_ratioOfAssetsWithUtilityCurationScore = PGMetricsUnavailableDoubleValue;
    self->_ratioOfAssetsWithDefaultCurationScore = v5;
    v6 = *&PGMetricsUnavailableDoubleValue;
    *&self->_ratioOfAssetsWithImprovedCurationScore = PGMetricsUnavailableDoubleValue;
    self->_ratioOfAssetsWithBetterCurationScore = v6;
  }
}

- (void)_fillDayHighlightsStatisticsWithGraph:(id)graph progressReporter:(id)reporter
{
  v110 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v109 = 269;
      *&v109[4] = 2080;
      *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    v104 = graphCopy;
    photoLibrary = [(PGManager *)self->_manager photoLibrary];
    enrichmentLoggingConnection = [(PGManager *)self->_manager enrichmentLoggingConnection];
    v10 = objc_autoreleasePoolPush();
    self->_numberOfDayHighlights = [(PGCuratedLibraryIntelligenceMetricEvent *)self _numberOfDayHighlights];
    objc_autoreleasePoolPop(v10);
    context = objc_autoreleasePoolPush();
    v11 = enrichmentLoggingConnection;
    v12 = os_signpost_id_generate(v11);
    v13 = v11;
    v14 = v13;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "DayDefaultStatistics", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v100 = mach_absolute_time();
    _defaultHighlights = [(PGCuratedLibraryIntelligenceMetricEvent *)self _defaultHighlights];
    self->_numberOfDefaultDayHighlights = [_defaultHighlights count];
    v106 = reporterCopy;
    v16 = [reporterCopy childProgressReporterFromStart:0.01 toEnd:0.09];
    v105 = photoLibrary;
    v17 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _assetsStatisticsInHighlights:_defaultHighlights photoLibrary:photoLibrary includeUtility:0 progressReporter:v16];
    v18 = [v17 objectForKeyedSubscript:@"total"];
    unsignedIntegerValue = [v18 unsignedIntegerValue];

    v20 = [v17 objectForKeyedSubscript:@"curated"];
    unsignedIntegerValue2 = [v20 unsignedIntegerValue];

    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:unsignedIntegerValue denominator:self->_numberOfDefaultDayHighlights];
    self->_averageNumberOfAssetsInDefaultHighlights = v22;
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:unsignedIntegerValue denominator:self->_librarySize];
    self->_ratioOfAssetsInDefaultHighlights = v23;
    v97 = unsignedIntegerValue2;
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:unsignedIntegerValue2 denominator:unsignedIntegerValue];
    self->_ratioOfCuratedAssetsInDefaultHighlights = v24;
    [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:self->_numberOfDefaultDayHighlights denominator:self->_numberOfDayHighlights];
    self->_ratioOfDefaultDays = v25;
    v26 = mach_absolute_time();
    v27 = info;
    v28 = v14;
    v29 = v28;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v12, "DayDefaultStatistics", "", buf, 2u);
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v109 = "DayDefaultStatistics";
      *&v109[8] = 2048;
      *&v109[10] = ((((v26 - v100) * v27.numer) / v27.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    reporterCopy = v106;
    if ([v106 isCancelledWithProgress:0.1])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v109 = 300;
        *&v109[4] = 2080;
        *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      objc_autoreleasePoolPop(context);
      v30 = v105;
    }

    else
    {

      objc_autoreleasePoolPop(context);
      v31 = objc_autoreleasePoolPush();
      v32 = v29;
      v33 = os_signpost_id_generate(v32);
      v34 = v32;
      v35 = v34;
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "DayAggregationsStatistics", "", buf, 2u);
      }

      info = 0;
      mach_timebase_info(&info);
      v36 = mach_absolute_time();
      _daysWithinAggregations = [(PGCuratedLibraryIntelligenceMetricEvent *)self _daysWithinAggregations];
      if ([v106 isCancelledWithProgress:0.2])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v109 = 308;
          *&v109[4] = 2080;
          *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v31);
        v30 = v105;
        reporterCopy = v106;
      }

      else
      {
        _aggregationGroups = [(PGCuratedLibraryIntelligenceMetricEvent *)self _aggregationGroups];
        if ([v106 isCancelledWithProgress:0.3])
        {
          LOBYTE(v39) = 1;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v109 = 311;
            *&v109[4] = 2080;
            *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          contexta = 0;
          v40 = 0;
          v30 = v105;
          reporterCopy = v106;
        }

        else
        {
          v95 = _aggregationGroups;
          self->_numberOfAggregations = [_aggregationGroups count];
          self->_numberOfDaysInAggregations = [_daysWithinAggregations count];
          [v106 childProgressReporterFromStart:0.31 toEnd:0.39];
          v93 = spid = _daysWithinAggregations;
          v41 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _assetsStatisticsInHighlights:_daysWithinAggregations photoLibrary:v105 includeUtility:0 progressReporter:?];
          v42 = [v41 objectForKeyedSubscript:@"total"];
          unsignedIntegerValue3 = [v42 unsignedIntegerValue];

          v91 = v41;
          v44 = [v41 objectForKeyedSubscript:@"curated"];
          unsignedIntegerValue4 = [v44 unsignedIntegerValue];

          [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:unsignedIntegerValue3 denominator:self->_numberOfAggregations];
          self->_averageNumberOfAssetsInAggregationHighlights = v46;
          [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:unsignedIntegerValue3 denominator:self->_librarySize];
          self->_ratioOfAssetsInAggregationHighlights = v47;
          contexta = unsignedIntegerValue4;
          [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:unsignedIntegerValue4 denominator:unsignedIntegerValue3];
          self->_ratioOfCuratedAssetsInAggregations = v48;
          [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:self->_numberOfDaysInAggregations denominator:self->_numberOfDayHighlights];
          self->_ratioOfDaysInAggregations = v49;
          v50 = mach_absolute_time();
          numer = info.numer;
          denom = info.denom;
          v53 = v35;
          v54 = v53;
          if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v54, OS_SIGNPOST_INTERVAL_END, v33, "DayAggregationsStatistics", "", buf, 2u);
          }

          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v109 = "DayAggregationsStatistics";
            *&v109[8] = 2048;
            *&v109[10] = ((((v50 - v36) * numer) / denom) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          reporterCopy = v106;
          v39 = [v106 isCancelledWithProgress:0.4];
          v30 = v105;
          _aggregationGroups = v95;
          if (v39 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v109 = 327;
            *&v109[4] = 2080;
            *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v40 = v39 ^ 1;

          _daysWithinAggregations = spid;
        }

        objc_autoreleasePoolPop(v31);
        if (v40)
        {
          v55 = objc_autoreleasePoolPush();
          v56 = v35;
          v57 = os_signpost_id_generate(v56);
          v58 = v56;
          v59 = v58;
          if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v59, OS_SIGNPOST_INTERVAL_BEGIN, v57, "TripsStatistics", "", buf, 2u);
          }

          info = 0;
          mach_timebase_info(&info);
          v60 = mach_absolute_time();
          _daysWithinTrips = [(PGCuratedLibraryIntelligenceMetricEvent *)self _daysWithinTrips];
          if ((v39 & 1) != 0 || [v106 isCancelledWithProgress:0.5])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v109 = 335;
              *&v109[4] = 2080;
              *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            objc_autoreleasePoolPop(v55);
            reporterCopy = v106;
          }

          else
          {
            v96 = v60;
            _shortTripDayGroups = [(PGCuratedLibraryIntelligenceMetricEvent *)self _shortTripDayGroups];
            v101 = _shortTripDayGroups;
            if ([v106 isCancelledWithProgress:0.6])
            {
              LOBYTE(v63) = 1;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v109 = 338;
                *&v109[4] = 2080;
                *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v64 = 0;
              v65 = 0;
              reporterCopy = v106;
            }

            else
            {
              spida = _daysWithinTrips;
              _longTripDayGroups = [(PGCuratedLibraryIntelligenceMetricEvent *)self _longTripDayGroups];
              if ([v106 isCancelledWithProgress:0.7])
              {
                LOBYTE(v63) = 1;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v109 = 341;
                  *&v109[4] = 2080;
                  *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v64 = 0;
                v65 = 0;
                reporterCopy = v106;
              }

              else
              {
                v94 = v55;
                self->_numberOfShortTrips = [_shortTripDayGroups count];
                v92 = _longTripDayGroups;
                v67 = [_longTripDayGroups count];
                self->_numberOfLongTrips = v67;
                numberOfShortTrips = self->_numberOfShortTrips;
                self->_numberOfDaysInTrips = [spida count];
                v90 = [v106 childProgressReporterFromStart:0.71 toEnd:0.79];
                v69 = [(PGCuratedLibraryIntelligenceMetricEvent *)self _assetsStatisticsInHighlights:spida photoLibrary:v30 includeUtility:0 progressReporter:v90];
                v70 = [v69 objectForKeyedSubscript:@"total"];
                unsignedIntegerValue5 = [v70 unsignedIntegerValue];

                [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:unsignedIntegerValue5 denominator:numberOfShortTrips + v67];
                self->_averageNumberOfAssetsInTripHighlights = v72;
                [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:unsignedIntegerValue5 denominator:self->_librarySize];
                self->_ratioOfAssetsInTripHighlights = v73;
                v74 = [v69 objectForKeyedSubscript:@"curated"];
                unsignedIntegerValue6 = [v74 unsignedIntegerValue];

                [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:unsignedIntegerValue6 denominator:unsignedIntegerValue5];
                self->_ratioOfCuratedAssetsInTrips = v76;
                v89 = v69;
                v77 = [v69 objectForKeyedSubscript:@"utility"];
                unsignedIntegerValue7 = [v77 unsignedIntegerValue];

                [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:unsignedIntegerValue7 denominator:unsignedIntegerValue5];
                self->_ratioOfUtilityAssetsInTrips = v79;
                v80 = unsignedIntegerValue6;
                [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:unsignedIntegerValue5 - (unsignedIntegerValue6 + unsignedIntegerValue7) denominator:unsignedIntegerValue5];
                self->_ratioOfDedupedAssetsInTrips = v81;
                [(PGCuratedLibraryIntelligenceMetricEvent *)self _ratioFromNumerator:self->_numberOfDaysInTrips denominator:self->_numberOfDayHighlights];
                self->_ratioOfDaysInTrips = v82;
                v83 = mach_absolute_time();
                v85 = info.numer;
                v84 = info.denom;
                v86 = v59;
                v87 = v86;
                if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v87, OS_SIGNPOST_INTERVAL_END, v57, "TripsStatistics", "", buf, 2u);
                }

                v55 = v94;
                if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  *v109 = "TripsStatistics";
                  *&v109[8] = 2048;
                  *&v109[10] = ((((v83 - v96) * v85) / v84) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v87, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                }

                reporterCopy = v106;
                v63 = [v106 isCancelledWithProgress:0.8];
                v30 = v105;
                v64 = v80;
                if (v63 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v109 = 363;
                  *&v109[4] = 2080;
                  *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v65 = v63 ^ 1;

                _longTripDayGroups = v92;
              }

              _daysWithinTrips = spida;
            }

            objc_autoreleasePoolPop(v55);
            if (v65)
            {
              self->_numberOfCuratedAssets = contexta + v97 + v64;
              [PGCuratedLibraryIntelligenceMetricEvent _ratioFromNumerator:"_ratioFromNumerator:denominator:" denominator:?];
              self->_ratioOfCuratedAssets = v88;
              if (((v63 & 1) != 0 || [reporterCopy isCancelledWithProgress:1.0]) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v109 = 370;
                *&v109[4] = 2080;
                *&v109[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }
            }
          }
        }
      }
    }

    graphCopy = v104;
  }
}

- (void)_fillGenericStatisticsWithGraph:(id)graph
{
  graphCopy = graph;
  v4 = objc_autoreleasePoolPush();
  infoNode = [graphCopy infoNode];
  self->_librarySize = [infoNode numberOfAssets];

  self->_librarySizeRange = [graphCopy librarySizeRange];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [MEMORY[0x277D27690] dateByAddingDays:-365 toDate:date];
  v8 = [MEMORY[0x277D27690] startOfDayForDate:v7];

  photoLibrary = [(PGManager *)self->_manager photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"startDate >= %@", v8];
  [librarySpecificFetchOptions setPredicate:v11];

  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  v12 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:librarySpecificFetchOptions];
  self->_numberOfDaysWithPhotosInPastYear = [v12 count];

  objc_autoreleasePoolPop(v4);
}

- (void)gatherMetricsWithProgressBlock:(id)block
{
  blockCopy = block;
  enrichmentLoggingConnection = [(PGManager *)self->_manager enrichmentLoggingConnection];
  manager = self->_manager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__PGCuratedLibraryIntelligenceMetricEvent_gatherMetricsWithProgressBlock___block_invoke;
  v9[3] = &unk_27888B2F8;
  selfCopy = self;
  v12 = blockCopy;
  v10 = enrichmentLoggingConnection;
  v7 = enrichmentLoggingConnection;
  v8 = blockCopy;
  [(PGManager *)manager performSynchronousConcurrentGraphReadUsingBlock:v9];
}

void __74__PGCuratedLibraryIntelligenceMetricEvent_gatherMetricsWithProgressBlock___block_invoke(uint64_t a1, void *a2)
{
  v184 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 48))
  {
    [MEMORY[0x277D22C80] progressReporterWithProgressBlock:?];
  }

  else
  {
    [MEMORY[0x277D22C80] ignoreProgress];
  }
  v4 = ;

  v5 = v4;
  if ([v5 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v183 = 163;
      *&v183[4] = 2080;
      *&v183[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    v6 = [v3 graph];
    v7 = *(a1 + 32);
    v8 = os_signpost_id_generate(v7);
    v9 = v7;
    v10 = v9;
    v169 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CuratedLibraryIntelligenceMetrics", "", buf, 2u);
    }

    spid = v8;

    info = 0;
    mach_timebase_info(&info);
    v168 = mach_absolute_time();
    v11 = +[PGLogging sharedLogging];
    v12 = [v11 loggingConnection];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsGeneric", buf, 2u);
    }

    v170 = v10;

    v13 = *(a1 + 32);
    v14 = os_signpost_id_generate(v13);
    v15 = v13;
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "CuratedLibraryIntelligenceMetricsGeneric", "", buf, 2u);
    }

    v180 = 0;
    mach_timebase_info(&v180);
    v17 = mach_absolute_time();
    [*(a1 + 40) _fillGenericStatisticsWithGraph:v6];
    v18 = mach_absolute_time();
    v19 = v180;
    v20 = v16;
    v21 = v20;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_END, v14, "CuratedLibraryIntelligenceMetricsGeneric", "", buf, 2u);
    }

    v22 = v21;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v183 = "CuratedLibraryIntelligenceMetricsGeneric";
      *&v183[8] = 2048;
      *&v183[10] = ((((v18 - v17) * v19.numer) / v19.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if ([v5 isCancelledWithProgress:0.1])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v183 = 173;
        *&v183[4] = 2080;
        *&v183[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      v23 = +[PGLogging sharedLogging];
      v24 = [v23 loggingConnection];

      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsProcessingLevels", buf, 2u);
      }

      v25 = *(a1 + 32);
      v26 = os_signpost_id_generate(v25);
      v27 = v25;
      v28 = v27;
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "CuratedLibraryIntelligenceMetricsProcessingLevels", "", buf, 2u);
      }

      v179 = 0;
      mach_timebase_info(&v179);
      v29 = mach_absolute_time();
      v30 = [v5 childProgressReporterFromStart:0.11 toEnd:0.19];
      [*(a1 + 40) _fillProcessingLevelStatisticsWithGraph:v6 progressReporter:v30];
      if ([v5 isCancelledWithProgress:0.2])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v183 = 180;
          *&v183[4] = 2080;
          *&v183[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      else
      {
        v165 = v30;
        v31 = mach_absolute_time();
        numer = v179.numer;
        denom = v179.denom;
        v166 = v28;
        v34 = v28;
        v35 = v34;
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_END, v26, "CuratedLibraryIntelligenceMetricsProcessingLevels", "", buf, 2u);
        }

        v36 = v35;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v183 = "CuratedLibraryIntelligenceMetricsProcessingLevels";
          *&v183[8] = 2048;
          *&v183[10] = ((((v31 - v29) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v37 = +[PGLogging sharedLogging];
        v38 = [v37 loggingConnection];

        v28 = v166;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsDayHighlights", buf, 2u);
        }

        v39 = *(a1 + 32);
        v40 = os_signpost_id_generate(v39);
        v41 = v39;
        v42 = v41;
        if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v40, "CuratedLibraryIntelligenceMetricsDayHighlights", "", buf, 2u);
        }

        v178 = 0;
        mach_timebase_info(&v178);
        v43 = mach_absolute_time();
        v163 = [v5 childProgressReporterFromStart:0.21 toEnd:0.29];
        [*(a1 + 40) _fillDayHighlightsStatisticsWithGraph:v6 progressReporter:?];
        v164 = v42;
        if ([v5 isCancelledWithProgress:0.3])
        {
          v30 = v165;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v183 = 188;
            *&v183[4] = 2080;
            *&v183[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else
        {
          v162 = v6;
          v44 = mach_absolute_time();
          v46 = v178.numer;
          v45 = v178.denom;
          v47 = v42;
          v48 = v47;
          if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v48, OS_SIGNPOST_INTERVAL_END, v40, "CuratedLibraryIntelligenceMetricsDayHighlights", "", buf, 2u);
          }

          v49 = v48;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v183 = "CuratedLibraryIntelligenceMetricsDayHighlights";
            *&v183[8] = 2048;
            *&v183[10] = ((((v44 - v43) * v46) / v45) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          v50 = +[PGLogging sharedLogging];
          v51 = [v50 loggingConnection];

          v28 = v166;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsContentScore", buf, 2u);
          }

          v52 = *(a1 + 32);
          v53 = os_signpost_id_generate(v52);
          v54 = v52;
          v55 = v54;
          v6 = v162;
          if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v55, OS_SIGNPOST_INTERVAL_BEGIN, v53, "CuratedLibraryIntelligenceMetricsContentScore", "", buf, 2u);
          }

          v177 = 0;
          mach_timebase_info(&v177);
          v56 = mach_absolute_time();
          v160 = [v5 childProgressReporterFromStart:0.31 toEnd:0.39];
          [*(a1 + 40) _fillContentScoreStatisticsWithGraph:v162 progressReporter:?];
          v161 = v55;
          if ([v5 isCancelledWithProgress:0.4])
          {
            v30 = v165;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v183 = 196;
              *&v183[4] = 2080;
              *&v183[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }

          else
          {
            v158 = mach_absolute_time();
            v58 = v177.numer;
            v57 = v177.denom;
            v59 = v55;
            v60 = v59;
            if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v60, OS_SIGNPOST_INTERVAL_END, v53, "CuratedLibraryIntelligenceMetricsContentScore", "", buf, 2u);
            }

            v61 = v60;
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *v183 = "CuratedLibraryIntelligenceMetricsContentScore";
              *&v183[8] = 2048;
              *&v183[10] = ((((v158 - v56) * v58) / v57) / 1000000.0);
              _os_log_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
            }

            v62 = +[PGLogging sharedLogging];
            v63 = [v62 loggingConnection];

            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, v63, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsMonthHighlights", buf, 2u);
            }

            v64 = *(a1 + 32);
            v65 = os_signpost_id_generate(v64);
            v66 = v64;
            v67 = v66;
            if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v67, OS_SIGNPOST_INTERVAL_BEGIN, v65, "CuratedLibraryIntelligenceMetricsMonthHighlights", "", buf, 2u);
            }

            v176 = 0;
            mach_timebase_info(&v176);
            v68 = mach_absolute_time();
            v157 = [v5 childProgressReporterFromStart:0.51 toEnd:0.59];
            [*(a1 + 40) _fillMonthHighlightsStatisticsWithGraph:v162 progressReporter:?];
            v159 = v67;
            if ([v5 isCancelledWithProgress:0.6])
            {
              v30 = v165;
              v28 = v166;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v183 = 204;
                *&v183[4] = 2080;
                *&v183[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }
            }

            else
            {
              v69 = mach_absolute_time();
              v71 = v176.numer;
              v70 = v176.denom;
              v72 = v67;
              v73 = v72;
              if (v65 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_22F0FC000, v73, OS_SIGNPOST_INTERVAL_END, v65, "CuratedLibraryIntelligenceMetricsMonthHighlights", "", buf, 2u);
              }

              v74 = v73;
              if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *v183 = "CuratedLibraryIntelligenceMetricsMonthHighlights";
                *&v183[8] = 2048;
                *&v183[10] = ((((v69 - v68) * v71) / v70) / 1000000.0);
                _os_log_impl(&dword_22F0FC000, v74, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
              }

              v75 = +[PGLogging sharedLogging];
              v76 = [v75 loggingConnection];

              v28 = v166;
              if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, v76, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsYearHighlights", buf, 2u);
              }

              v77 = *(a1 + 32);
              v78 = os_signpost_id_generate(v77);
              v79 = v77;
              v80 = v79;
              if (v78 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_22F0FC000, v80, OS_SIGNPOST_INTERVAL_BEGIN, v78, "CuratedLibraryIntelligenceMetricsYearHighlights", "", buf, 2u);
              }

              v175 = 0;
              mach_timebase_info(&v175);
              v81 = mach_absolute_time();
              [*(a1 + 40) _fillYearHighlightsStatisticsWithGraph:v162];
              v156 = v80;
              if ([v5 isCancelledWithProgress:0.7])
              {
                v82 = MEMORY[0x277D86220];
                v83 = MEMORY[0x277D86220];
                v30 = v165;
                if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  *v183 = 211;
                  *&v183[4] = 2080;
                  *&v183[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                  _os_log_impl(&dword_22F0FC000, v82, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }
              }

              else
              {
                v154 = mach_absolute_time();
                v85 = v175.numer;
                v84 = v175.denom;
                v86 = v80;
                v87 = v86;
                if (v78 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v87, OS_SIGNPOST_INTERVAL_END, v78, "CuratedLibraryIntelligenceMetricsYearHighlights", "", buf, 2u);
                }

                v88 = v87;
                if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  *v183 = "CuratedLibraryIntelligenceMetricsYearHighlights";
                  *&v183[8] = 2048;
                  *&v183[10] = ((((v154 - v81) * v85) / v84) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v88, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                }

                v89 = +[PGLogging sharedLogging];
                v90 = [v89 loggingConnection];

                if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22F0FC000, v90, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsHiddenHighlights", buf, 2u);
                }

                v91 = *(a1 + 32);
                v92 = os_signpost_id_generate(v91);
                v93 = v91;
                v94 = v93;
                if (v92 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v93))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v94, OS_SIGNPOST_INTERVAL_BEGIN, v92, "CuratedLibraryIntelligenceMetricsHiddenHighlights", "", buf, 2u);
                }

                v174 = 0;
                mach_timebase_info(&v174);
                v95 = mach_absolute_time();
                [*(a1 + 40) _fillHiddenHighlightsStatisticsWithGraph:v162];
                v96 = mach_absolute_time();
                v97 = v174;
                v98 = v94;
                v99 = v98;
                if (v92 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v98))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v99, OS_SIGNPOST_INTERVAL_END, v92, "CuratedLibraryIntelligenceMetricsHiddenHighlights", "", buf, 2u);
                }

                v100 = v99;
                if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  *v183 = "CuratedLibraryIntelligenceMetricsHiddenHighlights";
                  *&v183[8] = 2048;
                  *&v183[10] = ((((v96 - v95) * v97.numer) / v97.denom) / 1000000.0);
                  _os_log_impl(&dword_22F0FC000, v100, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                }

                v155 = v100;

                v101 = +[PGLogging sharedLogging];
                v102 = [v101 loggingConnection];

                if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22F0FC000, v102, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsOnesieHighlights", buf, 2u);
                }

                v103 = *(a1 + 32);
                v104 = os_signpost_id_generate(v103);
                v105 = v103;
                v106 = v105;
                if (v104 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v105))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v106, OS_SIGNPOST_INTERVAL_BEGIN, v104, "CuratedLibraryIntelligenceMetricsOnesieHighlights", "", buf, 2u);
                }

                v173 = 0;
                mach_timebase_info(&v173);
                v107 = mach_absolute_time();
                v152 = [v5 childProgressReporterFromStart:0.71 toEnd:0.79];
                [*(a1 + 40) _fillOnesiesHighlightStatisticsWithGraph:v162 progressReporter:?];
                v153 = v106;
                if ([v5 isCancelledWithProgress:0.8])
                {
                  v108 = MEMORY[0x277D86220];
                  v109 = MEMORY[0x277D86220];
                  v10 = v170;
                  v30 = v165;
                  v28 = v166;
                  v82 = v155;
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *v183 = 225;
                    *&v183[4] = 2080;
                    *&v183[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                    _os_log_impl(&dword_22F0FC000, v108, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }
                }

                else
                {
                  v110 = mach_absolute_time();
                  v112 = v173.numer;
                  v111 = v173.denom;
                  v113 = v106;
                  v114 = v113;
                  if (v104 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v113))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v114, OS_SIGNPOST_INTERVAL_END, v104, "CuratedLibraryIntelligenceMetricsOnesieHighlights", "", buf, 2u);
                  }

                  v115 = v114;
                  if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315394;
                    *v183 = "CuratedLibraryIntelligenceMetricsOnesieHighlights";
                    *&v183[8] = 2048;
                    *&v183[10] = ((((v110 - v107) * v112) / v111) / 1000000.0);
                    _os_log_impl(&dword_22F0FC000, v115, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                  }

                  v116 = +[PGLogging sharedLogging];
                  v117 = [v116 loggingConnection];

                  v28 = v166;
                  if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22F0FC000, v117, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsMoments", buf, 2u);
                  }

                  v118 = *(a1 + 32);
                  v119 = os_signpost_id_generate(v118);
                  v120 = v118;
                  v121 = v120;
                  if (v119 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v120))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v121, OS_SIGNPOST_INTERVAL_BEGIN, v119, "CuratedLibraryIntelligenceMetricsMoments", "", buf, 2u);
                  }

                  v172 = 0;
                  mach_timebase_info(&v172);
                  v122 = mach_absolute_time();
                  [*(a1 + 40) _fillMomentsStatisticsWithGraph:v162];
                  v151 = v121;
                  if ([v5 isCancelledWithProgress:0.9])
                  {
                    v123 = MEMORY[0x277D86220];
                    v124 = MEMORY[0x277D86220];
                    v10 = v170;
                    v30 = v165;
                    v82 = v155;
                    if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      *v183 = 232;
                      *&v183[4] = 2080;
                      *&v183[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                      _os_log_impl(&dword_22F0FC000, v123, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }
                  }

                  else
                  {
                    v149 = mach_absolute_time();
                    v126 = v172.numer;
                    v125 = v172.denom;
                    v127 = v121;
                    v128 = v127;
                    if (v119 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v128, OS_SIGNPOST_INTERVAL_END, v119, "CuratedLibraryIntelligenceMetricsMoments", "", buf, 2u);
                    }

                    v129 = v128;
                    if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315394;
                      *v183 = "CuratedLibraryIntelligenceMetricsMoments";
                      *&v183[8] = 2048;
                      *&v183[10] = ((((v149 - v122) * v126) / v125) / 1000000.0);
                      _os_log_impl(&dword_22F0FC000, v129, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                    }

                    v130 = +[PGLogging sharedLogging];
                    v131 = [v130 loggingConnection];

                    v28 = v166;
                    if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_22F0FC000, v131, OS_LOG_TYPE_INFO, "CuratedLibraryIntelligenceMetricsKeyAssets", buf, 2u);
                    }

                    v132 = *(a1 + 32);
                    v133 = os_signpost_id_generate(v132);
                    v134 = v132;
                    v135 = v134;
                    if (v133 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v134))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v135, OS_SIGNPOST_INTERVAL_BEGIN, v133, "CuratedLibraryIntelligenceMetricsKeyAssets", "", buf, 2u);
                    }

                    v171 = 0;
                    mach_timebase_info(&v171);
                    v148 = mach_absolute_time();
                    v150 = [v5 childProgressReporterFromStart:0.91 toEnd:0.99];
                    [*(a1 + 40) _fillKeyAssetsStatisticsWithGraph:v162 progressReporter:?];
                    v136 = mach_absolute_time();
                    v137 = v171;
                    v138 = v135;
                    v139 = v138;
                    if (v133 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v138))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v139, OS_SIGNPOST_INTERVAL_END, v133, "CuratedLibraryIntelligenceMetricsKeyAssets", "", buf, 2u);
                    }

                    v123 = v139;
                    if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315394;
                      *v183 = "CuratedLibraryIntelligenceMetricsKeyAssets";
                      *&v183[8] = 2048;
                      *&v183[10] = ((((v136 - v148) * v137.numer) / v137.denom) / 1000000.0);
                      _os_log_impl(&dword_22F0FC000, v123, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                    }

                    v140 = mach_absolute_time();
                    v142 = info.numer;
                    v141 = info.denom;
                    v10 = v170;
                    v143 = v170;
                    v144 = v143;
                    if (v169 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v143))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v144, OS_SIGNPOST_INTERVAL_END, spid, "CuratedLibraryIntelligenceMetrics", "", buf, 2u);
                    }

                    v145 = v144;
                    if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315394;
                      *v183 = "CuratedLibraryIntelligenceMetrics";
                      *&v183[8] = 2048;
                      *&v183[10] = ((((v140 - v168) * v142) / v141) / 1000000.0);
                      _os_log_impl(&dword_22F0FC000, v145, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
                    }

                    v82 = v155;
                    if ([v5 isCancelledWithProgress:1.0])
                    {
                      v146 = MEMORY[0x277D86220];
                      v147 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        *v183 = 243;
                        *&v183[4] = 2080;
                        *&v183[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGCuratedLibraryIntelligenceMetricEvent.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }
                    }

                    v30 = v165;
                  }

                  v108 = v151;
                }
              }
            }
          }
        }
      }
    }
  }
}

- (PGCuratedLibraryIntelligenceMetricEvent)initWithGraphManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = PGCuratedLibraryIntelligenceMetricEvent;
  v6 = [(PGCuratedLibraryIntelligenceMetricEvent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1559088000.0];
    debugDate = v7->_debugDate;
    v7->_debugDate = v8;
  }

  return v7;
}

+ (id)librarySizeRangeDescriptionForLibrarySizeRange:(int64_t)range
{
  if (range > 5)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = *off_278880050[range];
  }

  return v4;
}

@end