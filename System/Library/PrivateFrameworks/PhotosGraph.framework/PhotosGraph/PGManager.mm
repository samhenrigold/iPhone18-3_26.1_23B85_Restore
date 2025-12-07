@interface PGManager
+ (BOOL)geoServiceProviderDidChangeForGraph:(id)graph;
+ (id)_calendarEventsBetweenDate:(id)date andDate:(id)andDate atLocation:(id)location withPersonLocalIdentifiers:(id)identifiers inPhotoLibrary:(id)library serviceManager:(id)manager locationCache:(id)cache;
+ (id)_nodesOfClass:(id)class matchingNodes:(id)nodes inGraph:(id)graph;
+ (id)consistencyCheckResultOfGraph:(id)graph andGraph:(id)andGraph loggingConnection:(id)connection progressBlock:(id)block;
+ (id)consistencyIgnoredNodeDomainClasses;
+ (id)consistencyIgnoredNodeDomainCodes;
+ (id)defaultRulesWithOptions:(id)options graph:(id)graph;
+ (id)edgesByNodeFromEdges:(id)edges andNode:(id)node;
+ (id)exportableDictionaryFromKeywords:(id)keywords;
+ (id)graphServicesURLWithPhotoLibrary:(id)library;
+ (id)nodeDomainsFromGraph:(id)graph;
+ (id)nodesByClassFromGraph:(id)graph;
+ (id)nodesOfClass:(id)class matchingNode:(id)node inGraph:(id)graph;
+ (id)stringFromPGDuration:(unint64_t)duration;
+ (id)summaryCurationForHighlight:(id)highlight;
+ (int64_t)_totalNumberOfIdenticalNodesFromNode1ByNode2:(id)node2 withNumberOfIdenticalNodesByDomain:(id)domain loggingConnection:(id)connection progressBlock:(id)block;
+ (void)initialize;
- (BOOL)_addressesDidChangeBetweenAddressesInGraph:(id)graph andAddressesInContacts:(id)contacts addressType:(unint64_t)type person:(id)person graph:(id)a7;
- (BOOL)_isReadyWithError:(id *)error;
- (BOOL)_supportsSemanticalDedupingForMemory:(id)memory;
- (BOOL)copyGraphToURL:(id)l;
- (BOOL)date:(id)date isEqualToDate:(id)toDate;
- (BOOL)destroyValidationGraph;
- (BOOL)generateDefaultRulesForLibraryScopeWithLocalIdentifier:(id)identifier withOptions:(id)options error:(id *)error;
- (BOOL)graphIsUsable:(id)usable error:(id *)error;
- (BOOL)homeWorkAddressesDidChangeForPersonInContact:(id)contact andPersonNode:(id)node withHomeWorkNodesByPersonNode:(id)personNode graph:(id)graph;
- (BOOL)isInterestingForMoment:(id)moment;
- (BOOL)isSmartInterestingForMoment:(id)moment;
- (BOOL)mePersonContactIdentifierDidChangeWithGraphUpdate:(id)update;
- (BOOL)saveGraphToURL:(id)l;
- (BOOL)shouldValidateGraphConsistency;
- (BOOL)suggestsToStartSharedLibraryWithError:(id *)error;
- (BOOL)swapInGraphAtURL:(id)l progressBlock:(id)block error:(id *)error;
- (BOOL)updateGraph:(id)graph withGraphUpdate:(id)update withRecipe:(id)recipe progressBlock:(id)block;
- (CPAnalytics)analytics;
- (NSArray)availableMetricEvents;
- (NSDate)dateOfLastIncrementalUpdateInvocation;
- (NSURL)graphPersistenceParentDirectoryURL;
- (PGManager)init;
- (PGManager)initWithGraph:(id)graph photoLibrary:(id)library;
- (PGManager)initWithGraph:(id)graph readonlyPhotoLibrary:(id)library;
- (PGManager)initWithGraphPersistentStoreURL:(id)l photoLibrary:(id)library analytics:(id)analytics progressBlock:(id)block;
- (PGManager)initWithImmutableGraph:(id)graph photoLibrary:(id)library;
- (PGManager)initWithPhotoLibrary:(id)library analytics:(id)analytics progressBlock:(id)block;
- (PGManager)initWithPhotoLibrary:(id)library progressBlock:(id)block;
- (PGManager)initWithReadonlyPhotoLibrary:(id)library;
- (double)graphScoreForMoment:(id)moment;
- (double)libraryDuration;
- (double)neighborScoreForMoment:(id)moment;
- (double)targetCurationDurationWithCurationLength:(unint64_t)length customDuration:(double)result;
- (double)timeIntervalSinceLastGraphFullRebuild;
- (id)_changingPropertyKeysForPersonProperties:(id)properties andPersonContactProperties:(id)contactProperties;
- (id)_checkConsistencyOfGraph:(id)graph;
- (id)_collectionStatisticsForCurrentPhotoLibrary;
- (id)_curationDebugInformationForHighlight:(id)highlight options:(id)options;
- (id)_dateFormatter;
- (id)_dayOfWeekStatisticsWithGraph:(id)graph;
- (id)_defaultStatisticsWithGraph:(id)graph verbose:(BOOL)verbose forDiagnostics:(BOOL)diagnostics;
- (id)_diagnosticSummaryInfoForMemory:(id)memory;
- (id)_domainLabelCountStatisticsWithGraph:(id)graph;
- (id)_entityTagsStatistics:(id)statistics;
- (id)_extractDatesAndAssetCountsFromMemory:(id)memory;
- (id)_extractYearStatsFromOrderedCollectionFetchResults:(id)results fetchOptions:(id)options yearEntryKey:(id)key numberOfYearsEntryKey:(id)entryKey;
- (id)_fallbackCurationOfLength:(unint64_t)length forMemory:(id)memory customDuration:(double)duration curationContext:(id)context;
- (id)_featureNodesForEncodedFeatures:(id)features inGraph:(id)graph;
- (id)_fetchResultMatchingInternalPredicate:(id)predicate;
- (id)_getDefaultOutputPathForMetadataSnapshot;
- (id)_highlightEstimatesStatisticsWithCurationContext:(id)context;
- (id)_highlightTitleStatisticsWithGraph:(id)graph titleGenerationContext:(id)context;
- (id)_homeWorkNodesByPersonNodeForContactIdentifiers:(id)identifiers inGraph:(id)graph;
- (id)_interestingStatisticsWithGraph:(id)graph;
- (id)_mobilityStatisticsWithGraph:(id)graph;
- (id)_momentNodesFromMemory:(id)memory inGraph:(id)graph;
- (id)_momentsStatisticsForCurrentPhotoLibrary;
- (id)_moodStatisticsWithGraph:(id)graph;
- (id)_oneOnOneTripsWithGraph:(id)graph;
- (id)_partOfDayStatisticsWithGraph:(id)graph titleGenerationContext:(id)context;
- (id)_peopleNameBiologicalSexStatisticsWithGraph:(id)graph;
- (id)_peopleRelationshipsStatisticsWithGraph:(id)graph includingDebugInfo:(BOOL)info;
- (id)_peopleVisionAgeStatisticsWithGraph:(id)graph;
- (id)_peopleVisionBiologicalSexStatisticsWithGraph:(id)graph;
- (id)_poiStatisticsWithGraph:(id)graph;
- (id)_recentlyUsedSongAdamIDsFromCurationOptions:(id)options;
- (id)_sanitizeGraphDataDictionaryForArchiving:(id)archiving referencedMemory:(id)memory;
- (id)_sharedLibraryStatistics:(id)statistics;
- (id)_snapshotFilenameForLookupKey:(id)key;
- (id)_socialGroupsDebugStatistics:(id)statistics;
- (id)_socialGroupsDebugStringIncludingMeNode:(BOOL)node withGraph:(id)graph;
- (id)_socialGroupsDebugStringWithGraph:(id)graph;
- (id)_socialGroupsStatistics:(id)statistics;
- (id)_sortedTextFeaturesFromTextFeatures:(id)features;
- (id)_stringDescriptionForBusinessItemsWithGraph:(id)graph includingInferredThroughPublicEvents:(BOOL)events verbose:(BOOL)verbose;
- (id)_stringDescriptionForDisambiguatedLocationsWithGraph:(id)graph;
- (id)_stringDescriptionForDisambiguatedPOIsInMomentNodes:(id)nodes;
- (id)_stringDescriptionForInterestingAreas:(id)areas;
- (id)_stringDescriptionForInterestingCities:(id)cities;
- (id)_stringDescriptionForLanguagesWithGraph:(id)graph;
- (id)_stringDescriptionForLocationsWithGraph:(id)graph;
- (id)_stringDescriptionForMeNode:(id)node;
- (id)_stringDescriptionForMeaningfulEvents:(id)events isTrip:(BOOL)trip forDiagnostics:(BOOL)diagnostics titleGenerationContext:(id)context;
- (id)_stringDescriptionForMemoriesNotification;
- (id)_stringDescriptionForPeopleEventsWithGraph:(id)graph;
- (id)_stringDescriptionForPetsWithGraph:(id)graph;
- (id)_stringDescriptionForPublicEventsWithGraph:(id)graph verbose:(BOOL)verbose;
- (id)_stringDescriptionForSocialGroups:(id)groups includeImportance:(BOOL)importance;
- (id)_stringDescriptionForUrbanCities:(id)cities;
- (id)_summaryOfInferencesForMomentNodes:(id)nodes inGraph:(id)graph;
- (id)_titleStatisticsWithGraph:(id)graph titleGenerationContext:(id)context;
- (id)_yearsStatisticsForCurrentPhotoLibrary;
- (id)allSocialGroupsForMemberLocalIdentifier:(id)identifier options:(id)options;
- (id)assetCollectionFingerprintsWithVersion:(int64_t)version forAssetCollections:(id)collections withTransformers:(id)transformers error:(id *)error;
- (id)assetCollectionsForPersonLocalIdentifiers:(id)identifiers;
- (id)assetFingerprintsWithVersion:(int64_t)version forAssets:(id)assets withTransformers:(id)transformers error:(id *)error;
- (id)assetIdentifiersForPersonLocalIdentifiers:(id)identifiers;
- (id)assetSearchKeywordsByMomentUUIDWithEventUUIDs:(id)ds ofType:(unint64_t)type progressReporter:(id)reporter;
- (id)blockedFeatures;
- (id)curatedKeyAssetForAssetCollection:(id)collection curatedAssetCollection:(id)assetCollection options:(id)options curationContext:(id)context;
- (id)curationDebugInformationForAssetCollection:(id)collection options:(id)options curationContext:(id)context;
- (id)curationOfLength:(unint64_t)length forMemory:(id)memory customDuration:(double)duration useAssetEligibility:(BOOL)eligibility curationContext:(id)context;
- (id)defaultGraphExportFullPath;
- (id)defaultPeopleClustersExportIntermediatePath;
- (id)diagnosticsSummaryInfoOnExistingMemoriesForCurrentPhotoLibrary;
- (id)fastGraphExportFullPath;
- (id)graphAndAlgorithmVersionsWithGraph:(id)graph;
- (id)graphForLibraryFullAnalysisAtURL:(id)l alreadyIngestedMomentIdentifiers:(id *)identifiers alreadyIngestedHighlightIdentifiers:(id *)highlightIdentifiers progressBlock:(id)block error:(id *)error;
- (id)graphPersistenceParentDirectoryCandidateURLs;
- (id)graphPersistentStoreURL;
- (id)graphUpdateForContactsChangesWithProgressReporter:(id)reporter;
- (id)highlightDebugInformationWithHighlight:(id)highlight;
- (id)homeCircularRegions;
- (id)initForTesting;
- (id)instantiateMutableGraphWithError:(id *)error;
- (id)keywordsForAssetCollection:(id)collection relatedType:(unint64_t)type;
- (id)libraryStatisticsForCurrentPhotoLibrary;
- (id)maximalSocialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers;
- (id)memoryDebugInformationWithMoments:(id)moments meaningLabels:(id)labels;
- (id)momentLocalIdentifiersInDateInterval:(id)interval error:(id *)error;
- (id)musicCurationInflationContextWithInflationOptions:(id)options error:(id *)error;
- (id)musicCuratorContextWithCurationOptions:(id)options error:(id *)error;
- (id)musicCuratorContextWithRecentlyUsedSongAdamIDs:(id)ds error:(id *)error;
- (id)newSearchComputationCache;
- (id)performerIdentifiersForMomentUUIDs:(id)ds;
- (id)performerIdentifiersForMomentUUIDs:(id)ds withCategoryNames:(id)names;
- (id)processSubdirectoryName;
- (id)recentFrequentLocationRegions;
- (id)relationshipInferencesForPersonLocalIdentifiers:(id)identifiers;
- (id)searchKeywordsByEventWithUUIDs:(id)ds ofType:(unint64_t)type progressReporter:(id)reporter;
- (id)searchMetadataWithOptions:(id)options progressReporter:(id)reporter;
- (id)searchSynonymsDictionariesWithProgressReporter:(id)reporter;
- (id)searchableAssetUUIDsBySocialGroupWithEventUUIDs:(id)ds ofType:(unint64_t)type isFullAnalysis:(BOOL)analysis progressReporter:(id)reporter;
- (id)sharingMessageSuggestionDebugInformationForAssetCollection:(id)collection;
- (id)sharingSuggestionDebugInformationForSuggestion:(id)suggestion;
- (id)snapshotOuputFilePathURLForKey:(id)key;
- (id)socialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers;
- (id)sortedArrayForPersonLocalIdentifiers:(id)identifiers;
- (id)statisticsWithTypeStrings:(id)strings;
- (id)suggestedContributionsForAssetsMetadata:(id)metadata;
- (id)suggestedMomentLocalIdentifiersForPersonLocalIdentifiers:(id)identifiers withOptions:(id)options error:(id *)error;
- (id)suggestedPersonsForHome;
- (id)suggestedPersonsForSharedLibraryContentInclusion;
- (id)suggestedPersonsForSharedLibraryParticipants;
- (id)suggestedRecipientsForAssetLocalIdentifiers:(id)identifiers momentLocalIdentifiers:(id)localIdentifiers sharingOptions:(id)options;
- (id)summaryOfInferencesPerMomentByLocalIdentifiers:(id)identifiers error:(id *)error;
- (id)summaryOfInferencesPerMomentInDateInterval:(id)interval error:(id *)error;
- (id)textFeaturesForMomentLocalIdentifiers:(id)identifiers;
- (id)titleTupleForAlbum:(id)album format:(int64_t)format error:(id *)error;
- (id)titleTupleForAssetCollection:(id)collection format:(int64_t)format error:(id *)error;
- (id)titleTupleForMoment:(id)moment format:(int64_t)format error:(id *)error;
- (id)titleTupleForMomentList:(id)list format:(int64_t)format error:(id *)error;
- (id)titleTupleForPersonLocalIdentifiers:(id)identifiers format:(int64_t)format error:(id *)error;
- (id)utilityAssetInformation;
- (id)workingContext;
- (id)workingContextForEnrichment;
- (id)workingContextForExternalRelevance;
- (id)workingContextForGraphConsistencyCheck;
- (id)workingContextForMemories;
- (id)workingContextForMetrics;
- (id)workingContextForRelated;
- (id)workingContextForSuggestions;
- (id)workingContextForUpNext;
- (id)zeroKeywordsWithOptions:(id)options progressReporter:(id)reporter;
- (int64_t)performLibraryAnalysisWithGraphURL:(id)l withRecipe:(id)recipe processedGraphUpdate:(id *)update progressBlock:(id)block;
- (int64_t)validatePHObject:(id)object featureAggregationValidator:(id)validator assetFetchOptionPropertySet:(id)set error:(id *)error;
- (int64_t)validatePHObject:(id)object graphRelationsFeatureValidator:(id)validator error:(id *)error;
- (unint64_t)_numberOfAssetsMatchingInternalPredicate:(id)predicate;
- (unint64_t)_numberOfFamilyHolidayMomentsWithGraph:(id)graph;
- (unint64_t)_numberOfMomentsOverWeekendsWithGraph:(id)graph;
- (unint64_t)_numberOfNightOutMomentsWithGraph:(id)graph;
- (unint64_t)_sexHintForGivenNameOfContactForIdentifier:(id)identifier inGraph:(id)graph;
- (unint64_t)medianValueFromUnsignedItegerArray:(id)array;
- (unint64_t)numberOfEntities;
- (void)_invalidatePersistentCachesBeforeDateWithTimestamp:(double)timestamp;
- (void)_invalidatePersistentCachesForGeoServiceProviderChange;
- (void)_invalidatePersistentCachesIncludingPublicEvents:(BOOL)events;
- (void)_invalidateTransientCaches;
- (void)_precachePersonsInformationFromGraph:(id)graph progressBlock:(id)block;
- (void)_unloadGraph;
- (void)_waitGraphUntilFinishedUsingBlock:(id)block;
- (void)_waitLibraryUpdateUntilFinishedUsingBlock:(id)block;
- (void)commonInitWithPhotoLibrary:(id)library progressBlock:(id)block;
- (void)legacyPerformAsynchronousBarrierGraphWriteUsingBlock:(id)block;
- (void)loadGraphWithProgressBlock:(id)block;
- (void)matchWithVisualFormat:(id)format elements:(id)elements usingBlock:(id)block;
- (void)matchWithVisualFormat:(id)format usingBlock:(id)block;
- (void)notifyCoalescingBlocksGraphAnalysisFinished:(BOOL)finished error:(id)error;
- (void)performAsynchronousGraphBarrierUsingBlock:(id)block;
- (void)performAsynchronousGraphWriteUsingBlock:(id)block;
- (void)performAsynchronousNotification:(id)notification;
- (void)performFullLibraryAnalysisInGraph:(id)graph withRecipe:(id)recipe withAlreadyIngestedMomentIdentifiers:(id)identifiers alreadyIngestedHighlightIdentifiers:(id)highlightIdentifiers processedGraphUpdate:(id *)update progressBlock:(id)block;
- (void)performSynchronousConcurrentGraphReadUsingBlock:(id)block;
- (void)regenerateMemoriesOfCategory:(unint64_t)category progressReporter:(id)reporter completionBlock:(id)block;
- (void)registerCoalescingBlockWhenGraphAnalysisFinishes:(id)finishes;
- (void)reportMetricsLogWithConsistencyCheckResult:(id)result loggingConnection:(id)connection;
- (void)setGraph:(id)graph;
- (void)setGraphInfoDateOfLastIncrementalUpdateInvocationWithDate:(id)date completionBlock:(id)block;
- (void)setMutableGraph:(id)graph;
- (void)startGraphUpdate:(id)update progressBlock:(id)block completionBlock:(id)completionBlock;
- (void)startLibraryAnalysis:(id)analysis keepExistingGraph:(BOOL)graph completionBlock:(id)block;
- (void)startLibraryAnalysisWithRecipe:(id)recipe progressBlock:(id)block keepExistingGraph:(BOOL)graph completionBlock:(id)completionBlock;
- (void)unloadGraph;
- (void)updateGraphWithRecipe:(id)recipe keepExistingGraph:(BOOL)graph progressBlock:(id)block completionBlock:(id)completionBlock;
- (void)validateGraphConsistencyIfNeededWithProgressBlock:(id)block;
- (void)waitUntilFinishedUsingBlock:(id)block;
@end

@implementation PGManager

- (id)textFeaturesForMomentLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__PGManager_Sharing__textFeaturesForMomentLocalIdentifiers___block_invoke;
  v11[3] = &unk_27888A4D0;
  v12 = identifiersCopy;
  selfCopy = self;
  v6 = dictionary;
  v14 = v6;
  v7 = identifiersCopy;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v11];
  v8 = v14;
  v9 = v6;

  return v6;
}

void __60__PGManager_Sharing__textFeaturesForMomentLocalIdentifiers___block_invoke(id *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1[4], "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = a1[4];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CD9918] uuidFromLocalIdentifier:*(*(&v17 + 1) + 8 * v9)];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v11 = [v3 graph];
  v12 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v4 inGraph:v11];

  if ([v12 count])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__PGManager_Sharing__textFeaturesForMomentLocalIdentifiers___block_invoke_295;
    v15[3] = &unk_278889290;
    v16 = a1[6];
    [v12 enumerateNodesUsingBlock:v15];
    v13 = v16;
  }

  else
  {
    v13 = [a1[5] suggestionsLoggingConnection];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[4];
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "Cannot get text features for moments %@ - no moment node found", buf, 0xCu);
    }
  }
}

void __60__PGManager_Sharing__textFeaturesForMomentLocalIdentifiers___block_invoke_295(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [PGTextFeatureGenerator alloc];
  v5 = [MEMORY[0x277CBEB98] setWithObject:v3];
  v6 = [v3 graph];
  v7 = [(PGTextFeatureGenerator *)v4 initWithMomentNodes:v5 graph:v6];

  v8 = [(PGTextFeatureGenerator *)v7 knowledgeFeatures];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) encodedData];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *(a1 + 32);
  v17 = [v3 localIdentifier];
  [v16 setObject:v9 forKeyedSubscript:v17];
}

- (id)recentFrequentLocationRegions
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__PGManager_Sharing__recentFrequentLocationRegions__block_invoke;
  v7[3] = &unk_27888A638;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v7];
  v5 = v4;

  return v4;
}

void __51__PGManager_Sharing__recentFrequentLocationRegions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 graph];
  v5 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v4];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = [MEMORY[0x277CBEAA8] distantPast];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__PGManager_Sharing__recentFrequentLocationRegions__block_invoke_2;
  v18[3] = &unk_27887F098;
  v18[4] = &v19;
  [v5 enumerateNodesUsingBlock:v18];
  v6 = v20[5];
  v7 = [MEMORY[0x277CBEAA8] distantPast];
  LOBYTE(v6) = [v6 isEqualToDate:v7];

  if ((v6 & 1) == 0)
  {
    v8 = [v20[5] dateByAddingTimeInterval:-7889400.0];
    v9 = objc_alloc(MEMORY[0x277CCA970]);
    v10 = [v9 initWithStartDate:v8 endDate:v20[5]];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__PGManager_Sharing__recentFrequentLocationRegions__block_invoke_3;
    v14[3] = &unk_27887F0C0;
    v11 = v10;
    v15 = v11;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16 = v12;
    v17 = v13;
    [v5 enumerateNodesUsingBlock:v14];
  }

  _Block_object_dispose(&v19, 8);
}

void __51__PGManager_Sharing__recentFrequentLocationRegions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 universalEndDate];
  v4 = [v3 laterDate:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __51__PGManager_Sharing__recentFrequentLocationRegions__block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 universalDateInterval];
  v5 = [v4 intersectsDateInterval:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 addressNode];
    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277CBFBC8]);
      [v6 coordinate];
      v9 = v8;
      v11 = v10;
      v12 = [v6 description];
      v13 = [v7 initWithCenter:v12 radius:v9 identifier:{v11, 150.0}];

      [*(a1 + 40) addObject:v13];
    }

    else
    {
      v14 = [*(a1 + 48) graphLoggingConnection];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v15 = 136315395;
        v16 = "[PGManager(Sharing) recentFrequentLocationRegions]_block_invoke_3";
        v17 = 2113;
        v18 = v3;
        _os_log_fault_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_FAULT, "%s: frequent location skipped due to missing address node edge: %{private}@", &v15, 0x16u);
      }
    }
  }
}

- (id)homeCircularRegions
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  serviceManager = [(PGManager *)self serviceManager];
  if (!serviceManager)
  {
    __assert_rtn("[PGManager(Sharing) homeCircularRegions]", "PGManager+Sharing.m", 270, "serviceManager != nil");
  }

  v5 = serviceManager;
  mePerson = [serviceManager mePerson];
  v7 = mePerson;
  if (mePerson)
  {
    v8 = [mePerson countOfAddressesOfType:0];
    graphLoggingConnection = [(PGManager *)self graphLoggingConnection];
    if (os_log_type_enabled(graphLoggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v19 = "[PGManager(Sharing) homeCircularRegions]";
      v20 = 2048;
      v21 = v8;
      _os_log_impl(&dword_22F0FC000, graphLoggingConnection, OS_LOG_TYPE_DEFAULT, "%s: Found %zu potential home addresses", buf, 0x16u);
    }

    locationCache = [(PGManager *)self locationCache];
    [v7 prefetchPersonAddressesIfNeededWithLocationCache:locationCache];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __41__PGManager_Sharing__homeCircularRegions__block_invoke;
    v16[3] = &unk_27887F070;
    v11 = v3;
    v17 = v11;
    [v7 enumerateAddressesOfType:0 asPlacemarkWithBlock:v16];
    graphLoggingConnection2 = [(PGManager *)self graphLoggingConnection];
    if (os_log_type_enabled(graphLoggingConnection2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 count];
      *buf = 136315394;
      v19 = "[PGManager(Sharing) homeCircularRegions]";
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&dword_22F0FC000, graphLoggingConnection2, OS_LOG_TYPE_DEFAULT, "%s: Created %zu home circular regions", buf, 0x16u);
    }

    graphLoggingConnection3 = v17;
  }

  else
  {
    graphLoggingConnection3 = [(PGManager *)self graphLoggingConnection];
    if (os_log_type_enabled(graphLoggingConnection3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[PGManager(Sharing) homeCircularRegions]";
      _os_log_impl(&dword_22F0FC000, graphLoggingConnection3, OS_LOG_TYPE_DEFAULT, "%s: No me person found, not returning any home circular regions", buf, 0xCu);
    }
  }

  return v3;
}

void __41__PGManager_Sharing__homeCircularRegions__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 region];
  [v2 addObject:v3];
}

- (id)suggestedMomentLocalIdentifiersForPersonLocalIdentifiers:(id)identifiers withOptions:(id)options error:(id *)error
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__PGManager_Sharing__suggestedMomentLocalIdentifiersForPersonLocalIdentifiers_withOptions_error___block_invoke;
  v13[3] = &unk_27887F048;
  v10 = identifiersCopy;
  v14 = v10;
  v15 = &v23;
  v16 = &v17;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v13];
  if (error)
  {
    *error = v18[5];
  }

  allObjects = [v24[5] allObjects];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return allObjects;
}

void __97__PGManager_Sharing__suggestedMomentLocalIdentifiersForPersonLocalIdentifiers_withOptions_error___block_invoke(void *a1, void *a2)
{
  v25 = [a2 graph];
  v3 = [PGGraphPersonNodeCollection personNodesForArrayOfLocalIdentifiers:a1[4] inGraph:?];
  if ([v3 count])
  {
    v4 = [v3 momentNodes];
    v5 = [v4 count];
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    if (v5)
    {
      v8 = [v4 localIdentifiers];
      [v7 unionSet:v8];

      v9 = [PGGraphHighlightTypeNodeCollection concludedTripTypeNodesInGraph:v25];
      v10 = [v9 highlightGroupNodes];
      v11 = [v4 highlightNodes];
      v12 = [v11 highlightGroupNodes];

      v13 = [v10 collectionByIntersecting:v12];
      v14 = *(*(a1[5] + 8) + 40);
      v15 = [v13 momentNodes];
      v16 = [v15 localIdentifiers];
      [v14 unionSet:v16];
    }

    else
    {
      *(v6 + 40) = 0;

      v22 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"No moment nodes found for persons with local identifiers: %@", a1[4]];
      v23 = [v22 errorWithDescription:v9];
      v24 = *(a1[6] + 8);
      v10 = *(v24 + 40);
      *(v24 + 40) = v23;
    }
  }

  else
  {
    v17 = *(a1[5] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    v19 = MEMORY[0x277CCA9B8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"No person nodes found for local identifiers: %@", a1[4]];
    v20 = [v19 errorWithDescription:v4];
    v21 = *(a1[6] + 8);
    v9 = *(v21 + 40);
    *(v21 + 40) = v20;
  }
}

- (BOOL)generateDefaultRulesForLibraryScopeWithLocalIdentifier:(id)identifier withOptions:(id)options error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  photoLibrary = [(PGManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v12 = MEMORY[0x277CD98A8];
  v34[0] = identifierCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v14 = [v12 fetchLibraryScopesWithLocalIdentifiers:v13 options:librarySpecificFetchOptions];

  firstObject = [v14 firstObject];
  if (firstObject)
  {
    identifierCopy = [MEMORY[0x277CD98C0] fetchLibraryScopeRulesForLibraryScope:firstObject options:librarySpecificFetchOptions];
    if ([identifierCopy count])
    {
      if (error)
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Library scope already has existing rules: %@", identifierCopy];
        *error = [v17 errorWithDescription:v18];
      }

      v19 = 0;
    }

    else
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy_;
      v32 = __Block_byref_object_dispose_;
      v33 = 0;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __95__PGManager_Sharing__generateDefaultRulesForLibraryScopeWithLocalIdentifier_withOptions_error___block_invoke;
      v25[3] = &unk_278888EB8;
      v27 = &v28;
      v25[4] = self;
      v26 = optionsCopy;
      [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v25];
      if ([v29[5] count])
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __95__PGManager_Sharing__generateDefaultRulesForLibraryScopeWithLocalIdentifier_withOptions_error___block_invoke_2;
        v22[3] = &unk_27888A700;
        v23 = firstObject;
        v24 = &v28;
        v19 = [photoLibrary performChangesAndWait:v22 error:error];
      }

      else
      {
        v19 = 1;
      }

      _Block_object_dispose(&v28, 8);
    }

    goto LABEL_13;
  }

  if (error)
  {
    v20 = MEMORY[0x277CCA9B8];
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot find library scope for identifier: %@", identifierCopy];
    [v20 errorWithDescription:identifierCopy];
    *error = v19 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v19 = 0;
LABEL_14:

  return v19;
}

void __95__PGManager_Sharing__generateDefaultRulesForLibraryScopeWithLocalIdentifier_withOptions_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = a1[5];
  v9 = [v3 graph];

  v6 = [v4 defaultRulesWithOptions:v5 graph:v9];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __95__PGManager_Sharing__generateDefaultRulesForLibraryScopeWithLocalIdentifier_withOptions_error___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CD98B0] changeRequestForLibraryScope:*(a1 + 32)];
  if ([*(a1 + 32) autoSharePolicy] != 2)
  {
    [v2 setAutoSharePolicy:2];
  }

  [v2 updateWithCustomRules:*(*(*(a1 + 40) + 8) + 40)];
}

- (id)suggestedContributionsForAssetsMetadata:(id)metadata
{
  v33 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  suggestionsLoggingConnection = [(PGManager *)self suggestionsLoggingConnection];
  v6 = objc_opt_new();
  v7 = suggestionsLoggingConnection;
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SuggestedContribution", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v11 = mach_absolute_time();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v30 = metadataCopy;
    _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Asking for contributions for metadata: %{private}@", buf, 0xCu);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__PGManager_Sharing__suggestedContributionsForAssetsMetadata___block_invoke;
  v23[3] = &unk_27888A408;
  v24 = metadataCopy;
  v12 = v10;
  v25 = v12;
  selfCopy = self;
  v13 = v6;
  v27 = v13;
  v14 = metadataCopy;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v23];
  v15 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v18 = v12;
  v19 = v18;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_END, v8, "SuggestedContribution", "", buf, 2u);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "SuggestedContribution";
    v31 = 2048;
    v32 = ((((v15 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v20 = v27;
  v21 = v13;

  return v21;
}

void __62__PGManager_Sharing__suggestedContributionsForAssetsMetadata___block_invoke(uint64_t a1, void *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [PGShareBackSuggesterInput suggesterInputsWithDictionaries:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) photoLibrary];
  v7 = [PGShareBackSuggester shareBackSuggesterForCMMWithLoggingConnection:v5 photoLibrary:v6 graph:v3];

  v76 = 0;
  v8 = [v7 suggesterResultsForUnclusteredSuggesterInputs:v4 inGraph:v3 error:&v76];
  v9 = v76;
  v10 = [PGShareBackSuggesterResult momentNodesForSuggesterResults:v8];
  v11 = [v10 mutableCopy];

  if ([v11 count] < 2)
  {
    v58 = v7;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:&__block_literal_global_1138];
    [v12 setMaximumDistance:864000.0];
    [v12 setMinimumNumberOfObjects:2];
    v13 = [v11 allObjects];
    v14 = [v12 performWithDataset:v13 progressBlock:0];

    if (![v14 count])
    {
      v31 = *(a1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v82 = v11;
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] None of the matched moment nodes were contiguous: %{private}@", buf, 0xCu);
      }

      goto LABEL_26;
    }

    v56 = v3;
    v58 = v7;
    v51 = v9;
    v52 = v4;
    v53 = [v11 mutableCopy];
    v15 = objc_opt_new();
    v16 = v11;
    v11 = v15;

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v73;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v73 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v72 + 1) + 8 * i) objects];
          [v11 addObjectsFromArray:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v19);
    }

    [v53 minusSet:v11];
    if ([v53 count])
    {
      v23 = *(a1 + 40);
      v3 = v56;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v82 = v53;
        _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Discarding non contiguous moments: %{private}@", buf, 0xCu);
      }

      v9 = v51;
      v4 = v52;
      v7 = v58;
LABEL_26:

      goto LABEL_27;
    }

    v55 = v8;
    v32 = objc_alloc_init(MEMORY[0x277CCA940]);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v33 = v11;
    v34 = [v33 countByEnumeratingWithState:&v68 objects:v79 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v69;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v69 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v68 + 1) + 8 * j);
          if ([v38 isPartOfTrip])
          {
            v39 = [v38 highlightGroupNode];
            [v32 addObject:v39];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v68 objects:v79 count:16];
      }

      while (v35);
    }

    v59 = v33;

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v40 = v32;
    v41 = [v40 countByEnumeratingWithState:&v64 objects:v78 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v65;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v65 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v64 + 1) + 8 * k);
          v46 = [v40 countForObject:v45];
          if (v46 >= 2)
          {
            v47 = v46;
            v48 = [v45 eventEnrichmentMomentNodes];
            if ([v48 count] > v47)
            {
              v49 = *(a1 + 40);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138477827;
                v82 = v45;
                _os_log_impl(&dword_22F0FC000, v49, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Adding moment nodes from trip %{private}@", buf, 0xCu);
              }

              v50 = [v48 temporarySet];
              [v59 unionSet:v50];
            }
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v64 objects:v78 count:16];
      }

      while (v42);
    }

    v8 = v55;
    v3 = v56;
    v9 = v51;
    v4 = v52;
    v11 = v59;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v12 = v11;
  v24 = [v12 countByEnumeratingWithState:&v60 objects:v77 count:16];
  if (v24)
  {
    v25 = v24;
    v54 = v8;
    v57 = v3;
    v26 = v9;
    v27 = *v61;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v61 != v27)
        {
          objc_enumerationMutation(v12);
        }

        v29 = *(a1 + 56);
        v30 = [*(*(&v60 + 1) + 8 * m) localIdentifier];
        [v29 addObject:v30];
      }

      v25 = [v12 countByEnumeratingWithState:&v60 objects:v77 count:16];
    }

    while (v25);
    v11 = v12;
    v3 = v57;
    v7 = v58;
    v9 = v26;
    v8 = v54;
  }

  else
  {
    v11 = v12;
    v7 = v58;
  }

LABEL_27:
}

void __62__PGManager_Sharing__suggestedContributionsForAssetsMetadata___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 universalStartDate];
  v6 = [v4 universalStartDate];

  [v5 timeIntervalSinceDate:v6];
}

- (id)suggestedRecipientsForAssetLocalIdentifiers:(id)identifiers momentLocalIdentifiers:(id)localIdentifiers sharingOptions:(id)options
{
  v33 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  localIdentifiersCopy = localIdentifiers;
  optionsCopy = options;
  suggestionsLoggingConnection = [(PGManager *)self suggestionsLoggingConnection];
  v12 = os_signpost_id_generate(suggestionsLoggingConnection);
  v13 = suggestionsLoggingConnection;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SuggestedRecipientsForAssetLocalIdentifiers", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v25 = mach_absolute_time();
  workingContextForSuggestions = [(PGManager *)self workingContextForSuggestions];
  v16 = [[PGSharingManager alloc] initWithWorkingContext:workingContextForSuggestions];
  suggestionsLoggingConnection2 = [(PGManager *)self suggestionsLoggingConnection];
  if (os_log_type_enabled(suggestionsLoggingConnection2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = optionsCopy;
    v29 = 2112;
    v30 = *&identifiersCopy;
    v31 = 2112;
    v32 = localIdentifiersCopy;
    _os_log_impl(&dword_22F0FC000, suggestionsLoggingConnection2, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Asking for recipient suggestions from options %@, for assets %@ moments %@", buf, 0x20u);
  }

  v18 = [(PGSharingManager *)v16 suggestionResultsForAssetLocalIdentifiers:identifiersCopy momentLocalIdentifiers:localIdentifiersCopy options:optionsCopy];
  v19 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v22 = v14;
  v23 = v22;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, v12, "SuggestedRecipientsForAssetLocalIdentifiers", "", buf, 2u);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "SuggestedRecipientsForAssetLocalIdentifiers";
    v29 = 2048;
    v30 = ((((v19 - v25) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v18;
}

+ (id)defaultRulesWithOptions:(id)options graph:(id)graph
{
  v23 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  partners = [graphCopy partners];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [partners countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(partners);
        }

        localIdentifier = [*(*(&v17 + 1) + 8 * i) localIdentifier];
        if ([localIdentifier length])
        {
          v12 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:localIdentifier];
          v13 = objc_alloc_init(MEMORY[0x277CD98B8]);
          [v13 setCriteria:1];
          v21 = v12;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
          [v13 setPersonUUIDs:v14];

          v15 = objc_alloc_init(MEMORY[0x277CD98C0]);
          [v15 addCondition:v13];
          [array addObject:v15];
        }
      }

      v8 = [partners countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)regenerateMemoriesOfCategory:(unint64_t)category progressReporter:(id)reporter completionBlock:(id)block
{
  reporterCopy = reporter;
  blockCopy = block;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __92__PGManager_MemoriesPrivate__regenerateMemoriesOfCategory_progressReporter_completionBlock___block_invoke;
  v12[3] = &unk_27887F188;
  v12[4] = self;
  v13 = reporterCopy;
  v14 = blockCopy;
  categoryCopy = category;
  v10 = blockCopy;
  v11 = reporterCopy;
  [(PGManager *)self performAsynchronousGraphWriteUsingBlock:v12];
}

void __92__PGManager_MemoriesPrivate__regenerateMemoriesOfCategory_progressReporter_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v4 instantiateMutableGraphWithError:&v9];
  v6 = v9;
  if (v5)
  {
    [v5 enableInTransactionCheck];
    [v5 enterBatch];
    v7 = [[PGGraphBuilder alloc] initWithGraph:v5 manager:v3];
    v8 = [*(a1 + 40) childProgressReporterFromStart:0.1 toEnd:1.0];
    [PGGraphIngestMemoryProcessor regenerateMemoriesOfCategory:*(a1 + 56) withGraphBuilder:v7 progressReporter:v8];
    [v5 leaveBatch];
  }

  (*(*(a1 + 48) + 16))();
}

- (id)_fallbackCurationOfLength:(unint64_t)length forMemory:(id)memory customDuration:(double)duration curationContext:(id)context
{
  v88[1] = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  contextCopy = context;
  photoLibrary = [(PGManager *)self photoLibrary];
  v13 = photoLibrary;
  if (length == 2)
  {
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v88[0] = *MEMORY[0x277CD9AA8];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v15];

    v16 = [MEMORY[0x277CD97A8] fetchCuratedAssetsInAssetCollection:memoryCopy options:librarySpecificFetchOptions];
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v16, "count")}];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    defaultAssetFetchOptionsForMemories = v16;
    v19 = [defaultAssetFetchOptionsForMemories countByEnumeratingWithState:&v80 objects:v87 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v81;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v81 != v21)
          {
            objc_enumerationMutation(defaultAssetFetchOptionsForMemories);
          }

          uuid = [*(*(&v80 + 1) + 8 * i) uuid];
          [v17 addObject:uuid];
        }

        v20 = [defaultAssetFetchOptionsForMemories countByEnumeratingWithState:&v80 objects:v87 count:16];
      }

      while (v20);
    }

    v24 = defaultAssetFetchOptionsForMemories;
  }

  else
  {
    curationManager = [(PGManager *)self curationManager];
    librarySpecificFetchOptions2 = [v13 librarySpecificFetchOptions];
    v86 = *MEMORY[0x277CD9AA8];
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
    [librarySpecificFetchOptions2 setFetchPropertySets:v27];

    v70 = curationManager;
    defaultAssetFetchOptionsForMemories = [curationManager defaultAssetFetchOptionsForMemories];
    v68 = memoryCopy;
    v66 = librarySpecificFetchOptions2;
    if (length != 1 && (length || duration >= 60.0))
    {
      v28 = [MEMORY[0x277CD97A8] fetchExtendedCuratedAssetsInAssetCollection:memoryCopy options:defaultAssetFetchOptionsForMemories];
      v29 = [MEMORY[0x277CD97A8] fetchCuratedAssetsInAssetCollection:memoryCopy options:librarySpecificFetchOptions2];
    }

    else
    {
      v28 = [MEMORY[0x277CD97A8] fetchCuratedAssetsInAssetCollection:memoryCopy options:defaultAssetFetchOptionsForMemories];
      v29 = [MEMORY[0x277CD97A8] fetchKeyAssetsInAssetCollection:memoryCopy options:librarySpecificFetchOptions2];
    }

    v30 = v29;
    v31 = objc_alloc(MEMORY[0x277CBEA60]);
    v65 = v28;
    fetchedObjects = [v28 fetchedObjects];
    v33 = [v31 initWithArray:fetchedObjects];

    curationSession = [contextCopy curationSession];
    [curationSession prepareAssets:v33];

    [PGGraphBuilder topTierAestheticScoreForRatio:v13 inPhotoLibrary:0.01];
    [PGMemoryGenerationHelper prepareAssets:v33 forMemoriesWithTopTierAestheticScore:contextCopy curationContext:?];
    v35 = objc_alloc(MEMORY[0x277CD98D0]);
    v36 = MEMORY[0x277CBEB98];
    fetchPropertySets = [defaultAssetFetchOptionsForMemories fetchPropertySets];
    v38 = [v36 setWithArray:fetchPropertySets];
    v64 = v33;
    v71 = v13;
    v39 = [v35 initWithObjects:v33 photoLibrary:v13 fetchType:0 fetchPropertySets:v38 identifier:0 registerIfNeeded:0];

    v63 = v39;
    v69 = [objc_alloc(MEMORY[0x277D27710]) initWithAssetFetchResult:v39 curationContext:contextCopy];
    v40 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v30, "count")}];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v41 = v30;
    v42 = [v41 countByEnumeratingWithState:&v76 objects:v85 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v77;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v77 != v44)
          {
            objc_enumerationMutation(v41);
          }

          uuid2 = [*(*(&v76 + 1) + 8 * j) uuid];
          [v40 addObject:uuid2];
        }

        v43 = [v41 countByEnumeratingWithState:&v76 objects:v85 count:16];
      }

      while (v43);
    }

    memoriesLoggingConnection = [(PGManager *)self memoriesLoggingConnection];
    v48 = objc_alloc_init(PGCurator_PHAsset);
    [(PGCurator *)v48 setLoggingConnection:memoriesLoggingConnection];
    +[PGGraphLocationHelper inefficientLocationHelper];
    v60 = v67 = contextCopy;
    v59 = [[PGMemoryCurationSession alloc] initWithCurationManager:v70 photoLibrary:v71 curationContext:contextCopy locationHelper:v60];
    v62 = memoriesLoggingConnection;
    v58 = [[PGMemoryGenerator alloc] initWithMemoryCurationSession:v59 loggingConnection:memoriesLoggingConnection];
    v49 = [(PGMemoryGenerator *)v58 baseCurationOptionsWithRequiredAssetUUIDs:v40 eligibleAssetUUIDs:0];
    [v49 setUseDurationBasedCuration:1];
    [v49 setMinimumDuration:0.0];
    [(PGManager *)self targetCurationDurationWithCurationLength:length customDuration:duration];
    [v49 setTargetDuration:?];
    [v49 setFailIfMinimumDurationNotReached:0];
    v61 = v48;
    v50 = [(PGCurator_PHAsset *)v48 bestAssetsForFeeder:v69 options:v49 debugInfo:0 progressBlock:&__block_literal_global_1405];
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v50, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v51 = v50;
    v52 = [v51 countByEnumeratingWithState:&v72 objects:v84 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v73;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v73 != v54)
          {
            objc_enumerationMutation(v51);
          }

          uuid3 = [*(*(&v72 + 1) + 8 * k) uuid];
          [v17 addObject:uuid3];
        }

        v53 = [v51 countByEnumeratingWithState:&v72 objects:v84 count:16];
      }

      while (v53);
    }

    contextCopy = v67;
    memoryCopy = v68;
    librarySpecificFetchOptions = v70;
    v13 = v71;
    v24 = v66;
  }

  return v17;
}

- (id)curationOfLength:(unint64_t)length forMemory:(id)memory customDuration:(double)duration useAssetEligibility:(BOOL)eligibility curationContext:(id)context
{
  eligibilityCopy = eligibility;
  v70[1] = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  contextCopy = context;
  photoLibrary = [(PGManager *)self photoLibrary];
  if ([(PGManager *)self isReady])
  {
    context = objc_autoreleasePoolPush();
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v70[0] = *MEMORY[0x277CD9AA8];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v12];

    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    v13 = [MEMORY[0x277CD97A8] fetchKeyAssetsInAssetCollection:memoryCopy options:librarySpecificFetchOptions];
    firstObject = [v13 firstObject];

    if (eligibilityCopy)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v15 = [MEMORY[0x277CD97A8] fetchExtendedCuratedAssetsInAssetCollection:memoryCopy options:{librarySpecificFetchOptions, firstObject}];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      isGuestAsset = 0;
      v17 = [v15 countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (v17)
      {
        v18 = *v58;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v58 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v57 + 1) + 8 * i);
            uuid = [v20 uuid];
            [v14 addObject:uuid];

            if (isGuestAsset)
            {
              isGuestAsset = 1;
            }

            else
            {
              isGuestAsset = [v20 isGuestAsset];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v57 objects:v69 count:16];
        }

        while (v17);
      }
    }

    else
    {
      isGuestAsset = 0;
      v14 = 0;
    }

    objc_autoreleasePoolPop(context);
    curationManager = [(PGManager *)self curationManager];
    serviceManager = [(PGManager *)self serviceManager];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v66 = __Block_byref_object_copy__1408;
    v67 = __Block_byref_object_dispose__1409;
    v68 = 0;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __101__PGManager_Memories__curationOfLength_forMemory_customDuration_useAssetEligibility_curationContext___block_invoke;
    v45[3] = &unk_27887F160;
    v45[4] = self;
    v28 = memoryCopy;
    v46 = v28;
    lengthCopy = length;
    durationCopy = duration;
    v29 = curationManager;
    v47 = v29;
    v48 = photoLibrary;
    v30 = contextCopy;
    v49 = v30;
    v31 = serviceManager;
    v50 = v31;
    v53 = buf;
    v32 = firstObject;
    v51 = v32;
    v33 = v14;
    v52 = v33;
    v56 = isGuestAsset;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v45];
    if ([*(*&buf[8] + 40) count])
    {
      v34 = *(*&buf[8] + 40);
    }

    else
    {
      workingContext = [(PGManager *)self workingContext];
      loggingConnection = [workingContext loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [v28 uuid];
        *v61 = 136315394;
        v62 = "[PGManager(Memories) curationOfLength:forMemory:customDuration:useAssetEligibility:curationContext:]";
        v63 = 2112;
        v64 = uuid2;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "%s using fallback curation for memory uuid %@, as memory specific enrichment failed", v61, 0x16u);
      }

      v34 = [(PGManager *)self _fallbackCurationOfLength:length forMemory:v28 customDuration:v30 curationContext:duration];
    }

    v25 = v34;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    workingContext2 = [(PGManager *)self workingContext];
    loggingConnection2 = [workingContext2 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_DEFAULT))
    {
      uuid3 = [memoryCopy uuid];
      *buf = 136315394;
      *&buf[4] = "[PGManager(Memories) curationOfLength:forMemory:customDuration:useAssetEligibility:curationContext:]";
      *&buf[12] = 2112;
      *&buf[14] = uuid3;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_DEFAULT, "%s using fallback curation for memory uuid %@, graph is not ready", buf, 0x16u);
    }

    v25 = [(PGManager *)self _fallbackCurationOfLength:length forMemory:memoryCopy customDuration:contextCopy curationContext:duration];
  }

  return v25;
}

void __101__PGManager_Memories__curationOfLength_forMemory_customDuration_useAssetEligibility_curationContext___block_invoke(uint64_t a1, void *a2)
{
  v31 = [a2 graph];
  v29 = [*(a1 + 32) _momentNodesFromMemory:*(a1 + 40) inGraph:v31];
  v3 = [*(a1 + 40) photosGraphProperties];
  v30 = [v3 objectForKeyedSubscript:@"encodedFeatures"];

  v4 = [*(a1 + 40) photosGraphProperties];
  v5 = [v4 objectForKeyedSubscript:@"memoryCategorySubcategory"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [*(a1 + 32) _featureNodesForEncodedFeatures:v30 inGraph:v31];
  v8 = [*(a1 + 40) photosGraphProperties];
  v9 = [v8 objectForKeyedSubscript:@"generatedWithFallbackRequirements"];
  v10 = [v9 BOOLValue];

  v11 = [PGTriggeredMemory alloc];
  v12 = [*(a1 + 40) category];
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [*(a1 + 40) graphMemoryIdentifier];
  LOBYTE(v28) = v10;
  v15 = [(PGTriggeredMemory *)v11 initWithMemoryCategory:v12 memoryCategorySubcategory:v6 memoryMomentNodes:v29 memoryFeatureNodes:v7 validityIntervalByTriggerType:MEMORY[0x277CBEC10] creationDate:v13 uniqueMemoryIdentifier:v14 generatedWithFallbackRequirements:v28];

  [*(a1 + 32) targetCurationDurationWithCurationLength:*(a1 + 104) customDuration:*(a1 + 112)];
  v17 = v16;
  v18 = [[PGGraphLocationHelper alloc] initWithGraph:v31];
  v19 = [[PGMemoryCurationSession alloc] initWithCurationManager:*(a1 + 48) photoLibrary:*(a1 + 56) curationContext:*(a1 + 64) locationHelper:v18];
  v20 = [[PGEnrichedMemoryFactory alloc] initWithMemoryCurationSession:v19 graph:v31 serviceManager:*(a1 + 72)];
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  v23 = *(a1 + 120);
  v24 = [MEMORY[0x277D22C80] ignoreProgress];
  v25 = [(PGEnrichedMemoryFactory *)v20 curatedAssetUUIDsWithTriggeredMemory:v15 keyAsset:v21 extendedCuratedAssetUUIDs:v22 targetCurationDuration:v23 allowGuestAsset:v24 progressReporter:v17];
  v26 = *(*(a1 + 96) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;
}

- (double)targetCurationDurationWithCurationLength:(unint64_t)length customDuration:(double)result
{
  if (length)
  {
    if (length == 4)
    {
      return 90.0;
    }

    else
    {
      result = 60.0;
      if (length == 1)
      {
        return 40.0;
      }
    }
  }

  return result;
}

- (id)_featureNodesForEncodedFeatures:(id)features inGraph:(id)graph
{
  v25 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  graphCopy = graph;
  if ([featuresCopy count])
  {
    v7 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = featuresCopy;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [PGFeature alloc];
          v15 = [(PGFeature *)v14 initWithEncodedFeature:v13, v20];
          v16 = [(PGFeature *)v15 nodeInGraph:graphCopy];
          v17 = v16;
          if (v16)
          {
            [v7 addIdentifier:{objc_msgSend(v16, "identifier")}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v18 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:graphCopy elementIdentifiers:v7];
  }

  else
  {
    v18 = [(MAElementCollection *)[PGGraphFeatureNodeCollection alloc] initWithGraph:graphCopy];
  }

  return v18;
}

- (id)_momentNodesFromMemory:(id)memory inGraph:(id)graph
{
  v24 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  graphCopy = graph;
  photoLibrary = [memoryCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v9 = [MEMORY[0x277CD98D8] fetchMomentsBackingMemory:memoryCopy options:librarySpecificFetchOptions];
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        uuid = [*(*(&v19 + 1) + 8 * i) uuid];
        [v10 addObject:uuid];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v10 inGraph:graphCopy];

  return v17;
}

- (void)validateGraphConsistencyIfNeededWithProgressBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graphConsistencyCheckLoggingConnection = [(PGManager *)self graphConsistencyCheckLoggingConnection];
  if ([(PGManager *)self shouldValidateGraphConsistency])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__3805;
    v29 = __Block_byref_object_dispose__3806;
    v30 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__PGManager_Consistency__validateGraphConsistencyIfNeededWithProgressBlock___block_invoke;
    v21[3] = &unk_278880D38;
    v21[4] = self;
    v24 = &v25;
    v23 = blockCopy;
    v6 = graphConsistencyCheckLoggingConnection;
    v22 = v6;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v21];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v26[5];
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Graph consistency check: %@", buf, 0xCu);
    }

    v8 = *(v26 + 5);
    if (v8 && ((-[PGManager graphConsistencyCheckLoggingConnection](self, "graphConsistencyCheckLoggingConnection"), v9 = objc_claimAutoreleasedReturnValue(), -[PGManager reportMetricsLogWithConsistencyCheckResult:loggingConnection:](self, "reportMetricsLogWithConsistencyCheckResult:loggingConnection:", v8, v9), v9, [*(v26 + 5) overallSimilarityScore], v11 = v10, +[PGUserDefaults graphConsistencyPercentageThresholdForTTR](PGUserDefaults, "graphConsistencyPercentageThresholdForTTR"), v13 = v12, v14 = +[PGUserDefaults graphConsistencyNotificationIsEnabled](PGUserDefaults, "graphConsistencyNotificationIsEnabled"), v11 < v13) ? (v15 = v14) : (v15 = 0), v15))
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v32 = v11;
        v33 = 2048;
        v34 = v13;
        _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_DEFAULT, "[PGManager+Consistency] Graph consistency score %.2f bellow %.2f: prompting user to file a radar.", buf, 0x16u);
      }

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"an incremental graph rebuild inconsistency was detected"];
      v17 = v11 * 100.0;
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Graph] %@ - %.2f%% consistent", v16, *&v17];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"The last incrementally updated graph is %.2f%% consistent with the fully rebuilt one. Please file a radar to help diagnose consistency issues.", *&v17];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@\n\nDetails per domain:\n%@", v18, v19, *(v26 + 5)];
      [MEMORY[0x277D3AC50] tapToRadarWithTitle:v18 description:v20 radarComponent:1 isUserInitiated:0 displayReason:v16 attachments:MEMORY[0x277CBEBF8]];
    }

    else
    {
      [(PGManager *)self destroyValidationGraph];
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    [(PGManager *)self destroyValidationGraph];
  }
}

void __76__PGManager_Consistency__validateGraphConsistencyIfNeededWithProgressBlock___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) graphPersistenceParentDirectoryURL];
  v5 = [PGGraph graphURLForName:@"validation-photosgraph" parentDirectoryURL:v4];
  v15 = 0;
  v6 = [(MAGraph *)[PGGraph alloc] initWithPersistentStoreURL:v5 options:4 error:&v15];
  v7 = v15;
  if (v6)
  {
    v8 = [v3 graph];
    v9 = objc_opt_class();
    v10 = [*(a1 + 32) graphConsistencyCheckLoggingConnection];
    v11 = [v9 consistencyCheckResultOfGraph:v6 andGraph:v8 loggingConnection:v10 progressBlock:*(a1 + 48)];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "[PGManager+Consistency] Failed to load validation graph: %@", buf, 0xCu);
    }
  }
}

- (void)reportMetricsLogWithConsistencyCheckResult:(id)result loggingConnection:(id)connection
{
  v19[3] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  connectionCopy = connection;
  if (resultCopy)
  {
    analytics = [(PGManager *)self analytics];

    if (analytics)
    {
      [resultCopy overallSimilarityScore];
      v10 = v9;
      analytics2 = [(PGManager *)self analytics];
      v18[0] = @"graphSchemaVersion";
      v18[1] = @"type";
      v19[0] = &unk_2844821C0;
      v19[1] = @"overall";
      v18[2] = @"similarityScore";
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
      v19[2] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
      [analytics2 sendEvent:@"com.apple.Photos.Intelligence.GraphConsistency" withPayload:v13];

      objc_initWeak(&location, self);
      similarityScoreByDomain = [resultCopy similarityScoreByDomain];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __87__PGManager_Consistency__reportMetricsLogWithConsistencyCheckResult_loggingConnection___block_invoke;
      v15[3] = &unk_27887F4D8;
      objc_copyWeak(&v16, &location);
      [similarityScoreByDomain enumerateKeysAndObjectsUsingBlock:v15];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location) = 0;
      _os_log_error_impl(&dword_22F0FC000, connectionCopy, OS_LOG_TYPE_ERROR, "[PGManager+Consistency] Core Analytics is nil", &location, 2u);
    }
  }
}

void __87__PGManager_Consistency__reportMetricsLogWithConsistencyCheckResult_loggingConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PGGraphDomainToString([a2 unsignedIntValue]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained analytics];
  v10[0] = @"graphSchemaVersion";
  v10[1] = @"type";
  v11[0] = &unk_2844821C0;
  v11[1] = v6;
  v10[2] = @"similarityScore";
  v11[2] = v5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  [v8 sendEvent:@"com.apple.Photos.Intelligence.GraphConsistency" withPayload:v9];
}

- (BOOL)destroyValidationGraph
{
  graphPersistenceParentDirectoryURL = [(PGManager *)self graphPersistenceParentDirectoryURL];
  v3 = [PGGraph graphURLForName:@"validation-photosgraph" parentDirectoryURL:graphPersistenceParentDirectoryURL];
  v6 = 0;
  v4 = [(MAGraph *)PGGraph destroyPersistentStoreAtURL:v3 error:&v6];

  return v4;
}

- (BOOL)shouldValidateGraphConsistency
{
  v21 = *MEMORY[0x277D85DE8];
  graphConsistencyCheckLoggingConnection = [(PGManager *)self graphConsistencyCheckLoggingConnection];
  if ([objc_opt_class() graphConsistencyCheckIsEnabled])
  {
    v4 = @"validation-photosgraph";
    graphPersistenceParentDirectoryURL = [(PGManager *)self graphPersistenceParentDirectoryURL];
    v6 = [PGGraph graphURLForName:@"validation-photosgraph" parentDirectoryURL:graphPersistenceParentDirectoryURL];
    if ([(PGManager *)self isReady])
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [v6 path];
      v9 = [defaultManager fileExistsAtPath:path];

      if (v9)
      {
        v18 = 0;
        v10 = [(MAGraph *)[PGGraph alloc] initWithPersistentStoreURL:v6 options:4 error:&v18];
        v11 = v18;
        if (v10)
        {
          infoNode = [(PGGraph *)v10 infoNode];
          dateOfLastIncrementalUpdateInvocation = [infoNode dateOfLastIncrementalUpdateInvocation];
          if (dateOfLastIncrementalUpdateInvocation && ([MEMORY[0x277CBEA80] currentCalendar], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isDateInToday:", dateOfLastIncrementalUpdateInvocation), v14, (v15 & 1) != 0))
          {
            v16 = 1;
          }

          else
          {
            if (os_log_type_enabled(graphConsistencyCheckLoggingConnection, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v20 = dateOfLastIncrementalUpdateInvocation;
              _os_log_impl(&dword_22F0FC000, graphConsistencyCheckLoggingConnection, OS_LOG_TYPE_INFO, "Skipping graph consistency check: Graph was last updated on %@", buf, 0xCu);
            }

            v16 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(graphConsistencyCheckLoggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v20 = v11;
            _os_log_error_impl(&dword_22F0FC000, graphConsistencyCheckLoggingConnection, OS_LOG_TYPE_ERROR, "[PGManager+Consistency] Skipping graph consistency check: Failed to load the validation graph: %@", buf, 0xCu);
          }

          v16 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(graphConsistencyCheckLoggingConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, graphConsistencyCheckLoggingConnection, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Skipping graph consistency check: No validation graph available", buf, 2u);
        }

        v16 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(graphConsistencyCheckLoggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, graphConsistencyCheckLoggingConnection, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Skipping graph consistency check: manager is not ready", buf, 2u);
      }

      v16 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(graphConsistencyCheckLoggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, graphConsistencyCheckLoggingConnection, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Skipping graph consistency check: default disabled", buf, 2u);
    }

    v16 = 0;
  }

  return v16;
}

+ (id)consistencyIgnoredNodeDomainCodes
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:21];
  v6[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:302];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)consistencyIgnoredNodeDomainClasses
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v10[0] = v4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v2 setWithArray:v7];

  return v8;
}

+ (id)_nodesOfClass:(id)class matchingNodes:(id)nodes inGraph:(id)graph
{
  classCopy = class;
  nodesCopy = nodes;
  graphCopy = graph;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3805;
  v24 = __Block_byref_object_dispose__3806;
  v25 = [(MAElementCollection *)[PGGraphNodeCollection alloc] initWithGraph:graphCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__PGManager_Consistency___nodesOfClass_matchingNodes_inGraph___block_invoke;
  v15[3] = &unk_27887F5A0;
  selfCopy = self;
  v11 = classCopy;
  v16 = v11;
  v12 = graphCopy;
  v17 = v12;
  v18 = &v20;
  [nodesCopy enumerateNodesUsingBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __62__PGManager_Consistency___nodesOfClass_matchingNodes_inGraph___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v7 = [objc_opt_class() nodesOfClass:a1[4] matchingNode:v3 inGraph:a1[5]];

  v4 = [*(*(a1[6] + 8) + 40) collectionByFormingUnionWith:v7];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (id)nodesOfClass:(id)class matchingNode:(id)node inGraph:(id)graph
{
  v31[2] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  graphCopy = graph;
  classCopy = class;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [classCopy isEqualToString:v11];

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    collection = [nodeCopy collection];
    ownerNodes = [collection ownerNodes];
    v18 = [v13 _nodesOfClass:v15 matchingNodes:ownerNodes inGraph:graphCopy];

    v19 = objc_alloc(MEMORY[0x277D22C00]);
    v20 = +[PGGraphIsOwnedByEdge filter];
    inRelation = [v20 inRelation];
    v31[0] = inRelation;
    v22 = objc_alloc(MEMORY[0x277D22C78]);
    label = [nodeCopy label];
    v24 = [v22 initWithLabel:label domain:{objc_msgSend(nodeCopy, "domain")}];
    relation = [v24 relation];
    v31[1] = relation;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v27 = [v19 initWithSteps:v26];

    v28 = [(MANodeCollection *)PGGraphHomeWorkNodeCollection nodesRelatedToNodes:v18 withRelation:v27];
  }

  else
  {
    entityFilter = [nodeCopy entityFilter];
    v28 = [(MANodeCollection *)PGGraphNodeCollection nodesMatchingFilter:entityFilter inGraph:graphCopy];
  }

  return v28;
}

+ (id)nodesByClassFromGraph:(id)graph
{
  v4 = MEMORY[0x277CBEB38];
  graphCopy = graph;
  v6 = objc_alloc_init(v4);
  consistencyIgnoredNodeDomainClasses = [self consistencyIgnoredNodeDomainClasses];
  v8 = [MEMORY[0x277D22C78] any];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__PGManager_Consistency__nodesByClassFromGraph___block_invoke;
  v14[3] = &unk_278887CF8;
  v15 = consistencyIgnoredNodeDomainClasses;
  v9 = v6;
  v16 = v9;
  v10 = consistencyIgnoredNodeDomainClasses;
  [graphCopy enumerateNodesMatchingFilter:v8 usingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __48__PGManager_Consistency__nodesByClassFromGraph___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if (([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [*(a1 + 40) setObject:v5 forKeyedSubscript:v4];
    }

    [v5 addObject:v6];
  }
}

+ (id)nodeDomainsFromGraph:(id)graph
{
  v4 = MEMORY[0x277CBEB58];
  graphCopy = graph;
  v6 = [v4 set];
  consistencyIgnoredNodeDomainClasses = [self consistencyIgnoredNodeDomainClasses];
  v8 = [MEMORY[0x277D22C78] any];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__PGManager_Consistency__nodeDomainsFromGraph___block_invoke;
  v14[3] = &unk_278887CF8;
  v15 = consistencyIgnoredNodeDomainClasses;
  v9 = v6;
  v16 = v9;
  v10 = consistencyIgnoredNodeDomainClasses;
  [graphCopy enumerateNodesMatchingFilter:v8 usingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __47__PGManager_Consistency__nodeDomainsFromGraph___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if (([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v7, "domain")}];
    [v5 addObject:v6];
  }
}

+ (id)edgesByNodeFromEdges:(id)edges andNode:(id)node
{
  nodeCopy = node;
  v6 = MEMORY[0x277CBEB38];
  edgesCopy = edges;
  v8 = objc_alloc_init(v6);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__PGManager_Consistency__edgesByNodeFromEdges_andNode___block_invoke;
  v14[3] = &unk_278885D60;
  v15 = nodeCopy;
  v9 = v8;
  v16 = v9;
  v10 = nodeCopy;
  [edgesCopy enumerateEdgesUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __55__PGManager_Consistency__edgesByNodeFromEdges_andNode___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 oppositeNode:*(a1 + 32)];
  v4 = [*(a1 + 40) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [*(a1 + 40) setObject:v4 forKeyedSubscript:v3];
  }

  [v4 addObject:v5];
}

+ (int64_t)_totalNumberOfIdenticalNodesFromNode1ByNode2:(id)node2 withNumberOfIdenticalNodesByDomain:(id)domain loggingConnection:(id)connection progressBlock:(id)block
{
  v52 = *MEMORY[0x277D85DE8];
  node2Copy = node2;
  domainCopy = domain;
  connectionCopy = connection;
  blockCopy = block;
  v14 = _Block_copy(blockCopy);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (!v14 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v38[3] < 0.01) || (v38[3] = v15, LOBYTE(v45) = 0, (*(v14 + 2))(v14, &v45, 0.0), v16 = *(v42 + 24) | v45, *(v42 + 24) = v16, (v16 & 1) == 0))
  {
    consistencyIgnoredNodeDomainClasses = [objc_opt_class() consistencyIgnoredNodeDomainClasses];
    buf = 0;
    *&v50 = &buf;
    *(&v50 + 1) = 0x2020000000;
    v51 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __138__PGManager_Consistency___totalNumberOfIdenticalNodesFromNode1ByNode2_withNumberOfIdenticalNodesByDomain_loggingConnection_progressBlock___block_invoke;
    v26[3] = &unk_27887F578;
    selfCopy = self;
    v27 = node2Copy;
    v19 = consistencyIgnoredNodeDomainClasses;
    v28 = v19;
    v29 = domainCopy;
    p_buf = &buf;
    v30 = connectionCopy;
    v20 = v14;
    v31 = v20;
    v33 = &v37;
    v36 = 0x3F847AE147AE147BLL;
    v34 = &v41;
    [v27 enumerateKeysAndObjectsUsingBlock:v26];
    if (*(v42 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v45 = 67109378;
        v46 = 408;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
        v21 = MEMORY[0x277D86220];
LABEL_10:
        _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v45, 0x12u);
      }
    }

    else
    {
      if (!v14 || (Current = CFAbsoluteTimeGetCurrent(), Current - v38[3] < 0.01) || (v38[3] = Current, v25 = 0, (*(v20 + 2))(v20, &v25, 1.0), v23 = *(v42 + 24) | v25, *(v42 + 24) = v23, (v23 & 1) == 0))
      {
        v17 = *(v50 + 24);
        goto LABEL_18;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v45 = 67109378;
        v46 = 410;
        v47 = 2080;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
        v21 = MEMORY[0x277D86220];
        goto LABEL_10;
      }
    }

    v17 = 0;
LABEL_18:

    _Block_object_dispose(&buf, 8);
    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x14104000202;
    LOWORD(v50) = 2080;
    *(&v50 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v17 = 0;
LABEL_19:
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  return v17;
}

void __138__PGManager_Consistency___totalNumberOfIdenticalNodesFromNode1ByNode2_withNumberOfIdenticalNodesByDomain_loggingConnection_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v28 = a4;
  v46 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || ([v7 properties], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "properties"), v9 = objc_claimAutoreleasedReturnValue(), v10 = +[PGConsistencyUtility properties:areConsistentWithProperties:toleranceFactor:](PGConsistencyUtility, "properties:areConsistentWithProperties:toleranceFactor:", v8, v9, 2), v9, v8, v10))
  {
    v11 = [(MANodeCollection *)[PGGraphNodeCollection alloc] initWithNode:v7];
    v12 = [PGGraphEdgeCollection edgesFromNodes:v11];
    v13 = [*(a1 + 96) edgesByNodeFromEdges:v12 andNode:v7];
    v14 = [(MANodeCollection *)[PGGraphNodeCollection alloc] initWithNode:v6];
    v15 = [PGGraphEdgeCollection edgesFromNodes:v14];
    v16 = [v12 count];
    if (v16 == [v15 count])
    {
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __138__PGManager_Consistency___totalNumberOfIdenticalNodesFromNode1ByNode2_withNumberOfIdenticalNodesByDomain_loggingConnection_progressBlock___block_invoke_2;
      v32 = &unk_27887F550;
      v17 = v6;
      v33 = v17;
      v34 = *(a1 + 32);
      v35 = *(a1 + 40);
      v37 = &v38;
      v36 = v13;
      [v15 enumerateEdgesUsingBlock:&v29];
      if (*(v39 + 24) == 1)
      {
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v17, "domain")}];
        v19 = [*(a1 + 48) objectForKey:v18];
        v20 = v19 == 0;

        if (v20)
        {
          [*(a1 + 48) setObject:&unk_2844870A8 forKeyedSubscript:v18];
        }

        v21 = [*(a1 + 48) objectForKeyedSubscript:{v18, v28, v29, v30, v31, v32, v33, v34, v35}];
        [v21 doubleValue];
        v23 = v22;

        v24 = [MEMORY[0x277CCABB0] numberWithDouble:v23 + 1.0];
        [*(a1 + 48) setObject:v24 forKeyedSubscript:v18];

        ++*(*(*(a1 + 72) + 8) + 24);
      }

      else
      {
        v25 = *(a1 + 56);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v43 = v7;
          v44 = 2112;
          v45 = v17;
          _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "[PGManager+Consistency] The node %@ is not consistent with node %@", buf, 0x16u);
        }
      }

      if (*(a1 + 64))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v27 = *(*(a1 + 80) + 8);
        if (Current - *(v27 + 24) >= *(a1 + 104))
        {
          *(v27 + 24) = Current;
          buf[0] = 0;
          (*(*(a1 + 64) + 16))(0.5);
          *(*(*(a1 + 88) + 8) + 24) |= buf[0];
          if (*(*(*(a1 + 88) + 8) + 24) == 1)
          {
            *v28 = 1;
          }
        }
      }
    }
  }

  _Block_object_dispose(&v38, 8);
}

void __138__PGManager_Consistency___totalNumberOfIdenticalNodesFromNode1ByNode2_withNumberOfIdenticalNodesByDomain_loggingConnection_progressBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 oppositeNode:*(a1 + 32)];
  v8 = [*(a1 + 40) objectForKeyedSubscript:v7];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  if (([*(a1 + 48) containsObject:v10] & 1) == 0 && (objc_msgSend(*(a1 + 48), "containsObject:", v12) & 1) == 0)
  {
    if (v8)
    {
      v28 = v12;
      v29 = v10;
      v26 = a1;
      v27 = a3;
      v31 = v7;
      v32 = v6;
      v30 = v8;
      [*(a1 + 56) objectForKeyedSubscript:v8];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v13 = v36 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v34;
LABEL_6:
        v17 = 0;
        while (1)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v33 + 1) + 8 * v17);
          v19 = [v18 label];
          v20 = [v5 label];
          if ([v19 isEqualToString:v20])
          {
            v21 = [v18 domain];
            v22 = [v5 domain];

            if (v21 == v22)
            {
              v23 = [v18 properties];
              v24 = [v5 properties];
              v25 = [PGConsistencyUtility properties:v23 areConsistentWithProperties:v24 toleranceFactor:2];

              if (v25)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          else
          {
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
            if (v15)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

LABEL_18:
      *(*(*(v26 + 64) + 8) + 24) = 0;
      *v27 = 1;
LABEL_19:

      v7 = v31;
      v6 = v32;
      v10 = v29;
      v8 = v30;
      v12 = v28;
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a3 = 1;
    }
  }

  objc_autoreleasePoolPop(v6);
}

+ (id)consistencyCheckResultOfGraph:(id)graph andGraph:(id)andGraph loggingConnection:(id)connection progressBlock:(id)block
{
  v152 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  andGraphCopy = andGraph;
  connectionCopy = connection;
  aBlock = block;
  v10 = connectionCopy;
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGManagerConsitencySimilarityScore", "", &buf, 2u);
  }

  oslog = v13;

  info = 0;
  mach_timebase_info(&info);
  v79 = mach_absolute_time();
  v96 = _Block_copy(aBlock);
  v136 = 0;
  v137 = &v136;
  v138 = 0x2020000000;
  v139 = 0;
  v132 = 0;
  v133 = &v132;
  v134 = 0x2020000000;
  v135 = 0;
  if (!v96 || (v14 = CFAbsoluteTimeGetCurrent(), v14 - v133[3] < 0.01) || (v133[3] = v14, LOBYTE(v141) = 0, v96[2](v96, &v141, 0.0), v15 = *(v137 + 24) | v141, *(v137 + 24) = v15, (v15 & 1) == 0))
  {
    v16 = 0;
    if (!graphCopy || !andGraphCopy)
    {
      goto LABEL_110;
    }

    nodesCount = [graphCopy nodesCount];
    nodesCount2 = [andGraphCopy nodesCount];
    +[PGManager consistencyIgnoredNodeDomainCodes];
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    obj = v129 = 0u;
    v19 = [obj countByEnumeratingWithState:&v128 objects:v151 count:16];
    if (v19)
    {
      v20 = *v129;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v129 != v20)
          {
            objc_enumerationMutation(obj);
          }

          unsignedIntValue = [*(*(&v128 + 1) + 8 * i) unsignedIntValue];
          nodesCount -= [graphCopy nodesCountForDomain:unsignedIntValue];
          nodesCount2 -= [andGraphCopy nodesCountForDomain:unsignedIntValue];
        }

        v19 = [obj countByEnumeratingWithState:&v128 objects:v151 count:16];
      }

      while (v19);
    }

    v84 = objc_alloc_init(PGGraphConsistencyCheckResult);
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = [objc_opt_class() nodeDomainsFromGraph:graphCopy];
    v85 = [v24 mutableCopy];

    v25 = [objc_opt_class() nodeDomainsFromGraph:andGraphCopy];
    [v85 unionSet:v25];

    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = __97__PGManager_Consistency__consistencyCheckResultOfGraph_andGraph_loggingConnection_progressBlock___block_invoke;
    v126[3] = &unk_27887F500;
    v26 = v23;
    v127 = v26;
    [v85 enumerateObjectsUsingBlock:v126];
    [(PGGraphConsistencyCheckResult *)v84 setSimilarityScoreByDomain:v26];
    v78 = v26;
    if (!nodesCount && nodesCount2 > 0 || nodesCount >= 1 && !nodesCount2)
    {
      v16 = v84;
LABEL_109:

      goto LABEL_110;
    }

    v83 = [objc_opt_class() nodesByClassFromGraph:graphCopy];
    v82 = [objc_opt_class() nodesByClassFromGraph:andGraphCopy];
    if (v96)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v133[3] >= 0.01)
      {
        v133[3] = Current;
        LOBYTE(v141) = 0;
        v96[2](v96, &v141, 0.1);
        v28 = *(v137 + 24) | v141;
        *(v137 + 24) = v28;
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            buf = 0xF104000202;
            LOWORD(v144) = 2080;
            *(&v144 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
          }

          v16 = 0;
          goto LABEL_108;
        }
      }
    }

    v29 = MEMORY[0x277CBEB98];
    allKeys = [v83 allKeys];
    v76 = [v29 setWithArray:allKeys];

    v31 = MEMORY[0x277CBEB98];
    allKeys2 = [v82 allKeys];
    v75 = [v31 setWithArray:allKeys2];

    v33 = [v76 mutableCopy];
    [v33 intersectSet:v75];
    v74 = v33;
    if (![v33 count])
    {
      v16 = v84;
LABEL_107:

LABEL_108:
      goto LABEL_109;
    }

    v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v77 = v33;
    v34 = [v77 countByEnumeratingWithState:&v122 objects:v150 count:16];
    if (v34)
    {
      v81 = *v123;
      while (2)
      {
        v35 = 0;
        v80 = v34;
        do
        {
          if (*v123 != v81)
          {
            objc_enumerationMutation(v77);
          }

          v87 = v35;
          v36 = *(*(&v122 + 1) + 8 * v35);
          context = objc_autoreleasePoolPush();
          v37 = [v83 objectForKeyedSubscript:v36];
          v88 = [v82 objectForKeyedSubscript:v36];
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v95 = v37;
          v38 = [v95 countByEnumeratingWithState:&v118 objects:v149 count:16];
          if (v38)
          {
            v39 = *v119;
            while (2)
            {
              for (j = 0; j != v38; ++j)
              {
                if (*v119 != v39)
                {
                  objc_enumerationMutation(v95);
                }

                v41 = *(*(&v118 + 1) + 8 * j);
                if (v96)
                {
                  v42 = CFAbsoluteTimeGetCurrent();
                  if (v42 - v133[3] >= 0.01)
                  {
                    v133[3] = v42;
                    LOBYTE(v141) = 0;
                    v96[2](v96, &v141, 0.4);
                    v43 = *(v137 + 24) | v141;
                    *(v137 + 24) = v43;
                    if (v43)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        buf = 0x10504000202;
                        LOWORD(v144) = 2080;
                        *(&v144 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
                      }

                      v58 = 0;
                      v47 = v95;
                      goto LABEL_73;
                    }
                  }
                }

                v44 = [objc_opt_class() nodesOfClass:v36 matchingNode:v41 inGraph:andGraphCopy];
                v45 = v44;
                if (v44 && [v44 count] == 1)
                {
                  anyNode = [v45 anyNode];
                  [v94 setObject:v41 forKeyedSubscript:anyNode];
                }
              }

              v38 = [v95 countByEnumeratingWithState:&v118 objects:v149 count:16];
              if (v38)
              {
                continue;
              }

              break;
            }
          }

          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v47 = v88;
          v48 = [v47 countByEnumeratingWithState:&v114 objects:v148 count:16];
          if (v48)
          {
            v91 = v47;
            v92 = *v115;
            while (2)
            {
              v93 = v48;
              for (k = 0; k != v93; ++k)
              {
                if (*v115 != v92)
                {
                  objc_enumerationMutation(v91);
                }

                v50 = *(*(&v114 + 1) + 8 * k);
                if (v96)
                {
                  v51 = CFAbsoluteTimeGetCurrent();
                  if (v51 - v133[3] >= 0.01)
                  {
                    v133[3] = v51;
                    LOBYTE(v141) = 0;
                    v96[2](v96, &v141, 0.4);
                    v52 = *(v137 + 24) | v141;
                    *(v137 + 24) = v52;
                    if (v52)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        buf = 0x10E04000202;
                        LOWORD(v144) = 2080;
                        *(&v144 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
                      }

                      v58 = 0;
                      goto LABEL_71;
                    }
                  }
                }

                v53 = [objc_opt_class() nodesOfClass:v36 matchingNode:v50 inGraph:graphCopy];
                v54 = v53;
                if (v53 && [v53 count] == 1)
                {
                  anyNode2 = [v54 anyNode];
                  v56 = [v94 objectForKeyedSubscript:v50];
                  v57 = [anyNode2 isEqualToNode:v56];

                  if ((v57 & 1) == 0)
                  {
                    [v94 removeObjectForKey:v50];
                  }
                }
              }

              v48 = [v91 countByEnumeratingWithState:&v114 objects:v148 count:16];
              if (v48)
              {
                continue;
              }

              break;
            }

            v58 = 1;
LABEL_71:
            v47 = v91;
          }

          else
          {
            v58 = 1;
          }

LABEL_73:

          objc_autoreleasePoolPop(context);
          if (!v58)
          {
            v16 = 0;
            v62 = v77;
            goto LABEL_106;
          }

          v35 = v87 + 1;
        }

        while (v87 + 1 != v80);
        v34 = [v77 countByEnumeratingWithState:&v122 objects:v150 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    v59 = objc_opt_class();
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __97__PGManager_Consistency__consistencyCheckResultOfGraph_andGraph_loggingConnection_progressBlock___block_invoke_321;
    v109[3] = &unk_27888A188;
    v60 = v96;
    v110 = v60;
    v111 = &v132;
    v112 = &v136;
    v113 = 0x3F847AE147AE147BLL;
    v61 = [v59 _totalNumberOfIdenticalNodesFromNode1ByNode2:v94 withNumberOfIdenticalNodesByDomain:v78 loggingConnection:oslog progressBlock:v109];
    if (*(v137 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 0x11E04000202;
        LOWORD(v144) = 2080;
        *(&v144 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }

      v16 = 0;
LABEL_105:
      v62 = v110;
LABEL_106:

      goto LABEL_107;
    }

    v63 = v61;
    buf = 0;
    *&v144 = &buf;
    *(&v144 + 1) = 0x3032000000;
    v145 = __Block_byref_object_copy__3805;
    v146 = __Block_byref_object_dispose__3806;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __97__PGManager_Consistency__consistencyCheckResultOfGraph_andGraph_loggingConnection_progressBlock___block_invoke_323;
    v101[3] = &unk_27887F528;
    v102 = graphCopy;
    v103 = andGraphCopy;
    p_buf = &buf;
    v64 = v60;
    v104 = v64;
    v106 = &v132;
    v107 = &v136;
    v108 = 0x3F847AE147AE147BLL;
    [v78 enumerateKeysAndObjectsUsingBlock:v101];
    if (*(v137 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v141 = 67109378;
        LODWORD(v142[0]) = 303;
        WORD2(v142[0]) = 2080;
        *(v142 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
        v65 = MEMORY[0x277D86220];
LABEL_85:
        _os_log_impl(&dword_22F0FC000, v65, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v141, 0x12u);
      }
    }

    else
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        v141 = 134217984;
        v142[0] = v63;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Total number of identical nodes in graph1 and graph2 = %lu\n", &v141, 0xCu);
      }

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        v141 = 134217984;
        v142[0] = nodesCount;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Total number of nodes in graph1 = %lu\n", &v141, 0xCu);
      }

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        v141 = 134217984;
        v142[0] = nodesCount2;
        _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGManager+Consistency] Total number of nodes in graph2 = %lu\n", &v141, 0xCu);
      }

      [(PGGraphConsistencyCheckResult *)v84 setOverallSimilarityScore:v63 / (nodesCount + nodesCount2 - v63)];
      [(PGGraphConsistencyCheckResult *)v84 setSimilarityScoreByDomain:*(v144 + 40)];
      v66 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v69 = oslog;
      v70 = v69;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
      {
        LOWORD(v141) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v70, OS_SIGNPOST_INTERVAL_END, v11, "PGManagerConsitencySimilarityScore", "", &v141, 2u);
      }

      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        v141 = 136315394;
        v142[0] = "PGManagerConsitencySimilarityScore";
        LOWORD(v142[1]) = 2048;
        *(&v142[1] + 2) = ((((v66 - v79) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v70, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v141, 0x16u);
      }

      if (!v96 || (v71 = CFAbsoluteTimeGetCurrent(), v71 - v133[3] < 0.01) || (v133[3] = v71, v100 = 0, v64[2](v64, &v100, 1.0), v72 = *(v137 + 24) | v100, *(v137 + 24) = v72, (v72 & 1) == 0))
      {
        v16 = v84;
        goto LABEL_104;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v141 = 67109378;
        LODWORD(v142[0]) = 314;
        WORD2(v142[0]) = 2080;
        *(v142 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
        v65 = MEMORY[0x277D86220];
        goto LABEL_85;
      }
    }

    v16 = 0;
LABEL_104:

    _Block_object_dispose(&buf, 8);
    goto LABEL_105;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0xD004000202;
    LOWORD(v144) = 2080;
    *(&v144 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Consistency.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

  v16 = 0;
LABEL_110:
  _Block_object_dispose(&v132, 8);
  _Block_object_dispose(&v136, 8);

  return v16;
}

void __97__PGManager_Consistency__consistencyCheckResultOfGraph_andGraph_loggingConnection_progressBlock___block_invoke_321(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = *(*(a1 + 40) + 8);
    if (Current - *(v5 + 24) >= *(a1 + 56))
    {
      *(v5 + 24) = Current;
      (*(*(a1 + 32) + 16))(0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __97__PGManager_Consistency__consistencyCheckResultOfGraph_andGraph_loggingConnection_progressBlock___block_invoke_323(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 unsignedIntValue];
  v10 = [*(a1 + 32) nodesCountForDomain:v9];
  v11 = [*(a1 + 40) nodesCountForDomain:v9];
  [v8 doubleValue];
  v13 = v12;

  v14 = v10 + v11 - v13;
  if (v14 <= 0.0)
  {
    [*(*(*(a1 + 56) + 8) + 40) setObject:&unk_2844870A8 forKeyedSubscript:v7];
  }

  else
  {
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13 / v14];
    [*(*(*(a1 + 56) + 8) + 40) setObject:v15 forKeyedSubscript:v7];
  }

  if (*(a1 + 48))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v17 = *(*(a1 + 64) + 8);
    if (Current - *(v17 + 24) >= *(a1 + 80))
    {
      *(v17 + 24) = Current;
      (*(*(a1 + 48) + 16))(0.9);
      *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24);
      if (*(*(*(a1 + 72) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }
  }
}

- (id)suggestedPersonsForSharedLibraryContentInclusion
{
  v22 = *MEMORY[0x277D85DE8];
  guessWhoLoggingConnection = [(PGManager *)self guessWhoLoggingConnection];
  v4 = os_signpost_id_generate(guessWhoLoggingConnection);
  v5 = guessWhoLoggingConnection;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "suggestedPersonsForSharedLibraryContentInclusion", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v7 = mach_absolute_time();
  array = [MEMORY[0x277CBEB18] array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__PGManager_People__suggestedPersonsForSharedLibraryContentInclusion__block_invoke;
  v15[3] = &unk_27888A3B8;
  v9 = array;
  v16 = v9;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v15];
  v10 = mach_absolute_time();
  v11 = info;
  v12 = v6;
  v13 = v12;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_END, v4, "suggestedPersonsForSharedLibraryContentInclusion", "", buf, 2u);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "suggestedPersonsForSharedLibraryContentInclusion";
    v20 = 2048;
    v21 = ((((v10 - v7) * v11.numer) / v11.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v9;
}

void __69__PGManager_People__suggestedPersonsForSharedLibraryContentInclusion__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = [a2 graph];
  v3 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:?];
  v4 = [v3 familyPersonNodes];
  v19 = v3;
  v5 = [v3 inferredFamilyPersonNodes];
  v6 = [v4 collectionByFormingUnionWith:v5];

  v18 = v6;
  v7 = [v6 array];
  v8 = [v7 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v22 + 1) + 8 * v13) localIdentifier];
        if ([v14 length])
        {
          v15 = *(a1 + 32);
          v26 = @"localIdentifier";
          v27 = v14;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          [v15 addObject:v16];
        }

        else
        {
          v17 = +[PGLogging sharedLogging];
          v16 = [v17 loggingConnection];

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, "[Person Knowledge] no local identifier found for person", buf, 2u);
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v11);
  }
}

- (id)suggestedPersonsForSharedLibraryParticipants
{
  v22 = *MEMORY[0x277D85DE8];
  guessWhoLoggingConnection = [(PGManager *)self guessWhoLoggingConnection];
  v4 = os_signpost_id_generate(guessWhoLoggingConnection);
  v5 = guessWhoLoggingConnection;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "suggestedPersonsForSharedLibraryParticipants", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v7 = mach_absolute_time();
  array = [MEMORY[0x277CBEB18] array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__PGManager_People__suggestedPersonsForSharedLibraryParticipants__block_invoke;
  v15[3] = &unk_27888A3B8;
  v9 = array;
  v16 = v9;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v15];
  v10 = mach_absolute_time();
  v11 = info;
  v12 = v6;
  v13 = v12;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_END, v4, "suggestedPersonsForSharedLibraryParticipants", "", buf, 2u);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "suggestedPersonsForSharedLibraryParticipants";
    v20 = 2048;
    v21 = ((((v10 - v7) * v11.numer) / v11.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v9;
}

void __65__PGManager_People__suggestedPersonsForSharedLibraryParticipants__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [MEMORY[0x277CBEB58] set];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__PGManager_People__suggestedPersonsForSharedLibraryParticipants__block_invoke_2;
  v22[3] = &unk_278889240;
  v5 = v4;
  v23 = v5;
  [v3 enumeratePersonNodesIncludingMe:0 withBlock:v22];
  v17 = v5;
  v6 = [v5 allObjects];
  v7 = [v6 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = *(a1 + 32);
        v24 = @"localIdentifier";
        v15 = [v13 localIdentifier];
        v25 = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        [v14 addObject:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v10);
  }
}

void __65__PGManager_People__suggestedPersonsForSharedLibraryParticipants__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isMyPartner] & 1) != 0 || objc_msgSend(v3, "isMyInferredPartner"))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)suggestedPersonsForHome
{
  v22 = *MEMORY[0x277D85DE8];
  guessWhoLoggingConnection = [(PGManager *)self guessWhoLoggingConnection];
  v4 = os_signpost_id_generate(guessWhoLoggingConnection);
  v5 = guessWhoLoggingConnection;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "SuggestedPersonsForHome", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v7 = mach_absolute_time();
  array = [MEMORY[0x277CBEB18] array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__PGManager_People__suggestedPersonsForHome__block_invoke;
  v15[3] = &unk_27888A3B8;
  v9 = array;
  v16 = v9;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v15];
  v10 = mach_absolute_time();
  v11 = info;
  v12 = v6;
  v13 = v12;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_END, v4, "SuggestedPersonsForHome", "", buf, 2u);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "SuggestedPersonsForHome";
    v20 = 2048;
    v21 = ((((v10 - v7) * v11.numer) / v11.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v9;
}

void __44__PGManager_People__suggestedPersonsForHome__block_invoke(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [MEMORY[0x277CBEB58] set];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __44__PGManager_People__suggestedPersonsForHome__block_invoke_2;
  v55[3] = &unk_278889240;
  v5 = v4;
  v56 = v5;
  [v3 enumeratePersonNodesIncludingMe:1 withBlock:v55];
  v6 = objc_alloc_init(MEMORY[0x277CCA940]);
  v40 = v3;
  v7 = [v3 meNodeCollection];
  v8 = [v7 homeNodes];
  v9 = [v8 addressNodes];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __44__PGManager_People__suggestedPersonsForHome__block_invoke_3;
  v53[3] = &unk_278887858;
  v10 = v6;
  v54 = v10;
  [v9 enumerateIdentifiersAsCollectionsWithBlock:v53];

  v11 = [v10 count];
  if (v11)
  {
    v12 = v11;
    v49 = 0u;
    v50 = 0u;
    v13 = [v10 pg_accumulatedCount] / v11;
    v51 = 0u;
    v52 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v50;
      v18 = 0.0;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v50 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = [v14 countForObject:*(*(&v49 + 1) + 8 * i)];
          v18 = v18 + (v20 - v13) * (v20 - v13);
        }

        v16 = [v14 countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 0.0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v21 = v14;
    v22 = [v21 countByEnumeratingWithState:&v45 objects:v60 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = fmax(ceil(v13 + sqrt(v18 / v12) * -0.5), 2.0);
      v25 = *v46;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v46 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v45 + 1) + 8 * j);
          if ([v21 countForObject:v27] > v24)
          {
            [v5 addObject:v27];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v45 objects:v60 count:16];
      }

      while (v23);
    }
  }

  v38 = v10;
  v39 = v5;
  v28 = [v5 allObjects];
  v29 = [v28 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v41 objects:v59 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v42;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v42 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v41 + 1) + 8 * k) localIdentifier];
        if ([v35 length])
        {
          v36 = *(a1 + 32);
          v57 = @"localIdentifier";
          v58 = v35;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          [v36 addObject:v37];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v41 objects:v59 count:16];
    }

    while (v32);
  }
}

void __44__PGManager_People__suggestedPersonsForHome__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isFavorite] & 1) != 0 || (objc_msgSend(v3, "isMemberOfMyFamily") & 1) != 0 || (objc_msgSend(v3, "isInferredMemberOfMyFamily") & 1) != 0 || objc_msgSend(v3, "isMeNode"))
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __44__PGManager_People__suggestedPersonsForHome__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 momentNodes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PGManager_People__suggestedPersonsForHome__block_invoke_4;
  v5[3] = &unk_278887A68;
  v6 = *(a1 + 32);
  [v4 enumerateIdentifiersAsCollectionsWithBlock:v5];
}

void __44__PGManager_People__suggestedPersonsForHome__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v5 = [a3 personNodes];
  v4 = [v5 temporarySet];
  [v3 unionSet:v4];
}

- (id)relationshipInferencesForPersonLocalIdentifiers:(id)identifiers
{
  v28 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  guessWhoLoggingConnection = [(PGManager *)self guessWhoLoggingConnection];
  v6 = os_signpost_id_generate(guessWhoLoggingConnection);
  v7 = guessWhoLoggingConnection;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "RelationshipInferencesForPersonLocalIdentifiers", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v9 = mach_absolute_time();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([identifiersCopy count])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __69__PGManager_People__relationshipInferencesForPersonLocalIdentifiers___block_invoke;
    v20[3] = &unk_27888A638;
    v21 = identifiersCopy;
    v11 = dictionary;
    v22 = v11;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v20];
    v12 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v15 = v8;
    v16 = v15;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_END, v6, "RelationshipInferencesForPersonLocalIdentifiers", "", buf, 2u);
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "RelationshipInferencesForPersonLocalIdentifiers";
      v26 = 2048;
      v27 = ((((v12 - v9) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v17 = v22;
    v18 = v11;
  }

  return dictionary;
}

void __69__PGManager_People__relationshipInferencesForPersonLocalIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  [v3 _checkCanRead];
  v34 = [v3 meNode];
  if (v34)
  {
    v31 = a1;
    v4 = [*(a1 + 32) allObjects];
    v30 = v3;
    v5 = [v3 personNodesForPersonLocalIdentifiers:v4];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v6 = v5;
    v35 = [v6 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v35)
    {
      v32 = *v43;
      v33 = v6;
      do
      {
        v7 = 0;
        do
        {
          if (*v43 != v32)
          {
            objc_enumerationMutation(v6);
          }

          v36 = v7;
          v8 = *(*(&v42 + 1) + 8 * v7);
          v9 = [v8 localIdentifier];
          v10 = +[PGLogging sharedLogging];
          v11 = [v10 loggingConnection];

          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v47 = v9;
            _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "[Person Knowledge] Querying for inferred relationships for person %@", buf, 0xCu);
          }

          v37 = v9;

          v12 = [MEMORY[0x277CBEB38] dictionary];
          v13 = [v34 relationshipEdgesToPersonNode:v8 matchingQuery:2];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v38 objects:v52 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v39;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v39 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v38 + 1) + 8 * i);
                v19 = [v18 label];
                v20 = PGRelationshipTypeFromRelationshipLabel(v19);
                v21 = MEMORY[0x277CCABB0];
                [v18 confidence];
                v22 = [v21 numberWithDouble:?];
                [v12 setObject:v22 forKeyedSubscript:v20];

                v23 = +[PGLogging sharedLogging];
                v24 = [v23 loggingConnection];

                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  [v18 confidence];
                  *buf = 138412802;
                  v47 = v19;
                  v48 = 2112;
                  v49 = v37;
                  v50 = 2048;
                  v51 = v25;
                  _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "[Person Knowledge] Relationship of type %@ inferred for person %@ with confidence %.02f", buf, 0x20u);
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v38 objects:v52 count:16];
            }

            while (v15);
          }

          if ([v12 count])
          {
            v26 = v37;
            [*(v31 + 40) setObject:v12 forKeyedSubscript:v37];
          }

          else
          {
            v27 = +[PGLogging sharedLogging];
            v28 = [v27 loggingConnection];

            v26 = v37;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v47 = v37;
              _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[Person Knowledge] No inferred relationships found for person %@", buf, 0xCu);
            }
          }

          v6 = v33;

          v7 = v36 + 1;
        }

        while (v36 + 1 != v35);
        v35 = [v33 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v35);
    }

    v3 = v30;
  }

  else
  {
    v29 = +[PGLogging sharedLogging];
    v6 = [v29 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "[Person Knowledge] No relationship inferences found due to nil me node", buf, 2u);
    }
  }
}

- (BOOL)mePersonContactIdentifierDidChangeWithGraphUpdate:(id)update
{
  v29 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  loggingConnection = [(PGManager *)self loggingConnection];
  v6 = os_signpost_id_generate(loggingConnection);
  v7 = loggingConnection;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MePersonContactIdentifierDidChange", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v9 = mach_absolute_time();
  *buf = 0;
  v21 = buf;
  v22 = 0x2020000000;
  v23 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__PGManager_People__mePersonContactIdentifierDidChangeWithGraphUpdate___block_invoke;
  v17[3] = &unk_27888A570;
  v10 = updateCopy;
  v18 = v10;
  v19 = buf;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v17];
  v11 = mach_absolute_time();
  v12 = info;
  v13 = v8;
  v14 = v13;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_END, v6, "MePersonContactIdentifierDidChange", "", v25, 2u);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v25 = 136315394;
    v26 = "MePersonContactIdentifierDidChange";
    v27 = 2048;
    v28 = ((((v11 - v9) * v12.numer) / v12.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v25, 0x16u);
  }

  v15 = v21[24];

  _Block_object_dispose(buf, 8);
  return v15 & 1;
}

void __71__PGManager_People__mePersonContactIdentifierDidChangeWithGraphUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [v3 meNode];
  v5 = [v4 inferredPersonNode];
  v6 = [v4 localIdentifier];
  if ([v6 length])
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = [v7 localIdentifier];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__PGManager_People__mePersonContactIdentifierDidChangeWithGraphUpdate___block_invoke_2;
  v12[3] = &unk_27887FBA8;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v8;
  v14 = v9;
  v11 = v8;
  [v10 enumerateConsolidatedChanges:v12];
}

void __71__PGManager_People__mePersonContactIdentifierDidChangeWithGraphUpdate___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = objc_autoreleasePoolPush();
  if ([v9 type] == 6)
  {
    v6 = v9;
    v7 = [v6 personLocalIdentifier];
    v8 = [v6 propertyNames];

    if ([v7 isEqualToString:*(a1 + 32)] && objc_msgSend(v8, "containsObject:", @"cnid"))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (id)assetIdentifiersForPersonLocalIdentifiers:(id)identifiers
{
  v41[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_opt_new();
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__7680;
  v37 = __Block_byref_object_dispose__7681;
  v38 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__PGManager_People__assetIdentifiersForPersonLocalIdentifiers___block_invoke;
  v30[3] = &unk_27888A570;
  v6 = identifiersCopy;
  v31 = v6;
  v32 = &v33;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v30];
  if ([v34[5] count])
  {
    photoLibrary = [(PGManager *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__PGManager_People__assetIdentifiersForPersonLocalIdentifiers___block_invoke_2;
    v28[3] = &unk_278887698;
    v10 = v9;
    v29 = v10;
    [v6 enumerateObjectsUsingBlock:v28];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN (%@) AND ANY %K.%K IN (%@)", @"moment.uuid", v34[5], @"detectedFaces", @"personForFace.personUUID", v10];
    v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v41[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v13];

    [librarySpecificFetchOptions setInternalPredicate:v11];
    [librarySpecificFetchOptions setChunkSizeForFetch:2000];
    v40 = *MEMORY[0x277CD9AA8];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v14];

    [librarySpecificFetchOptions setIncludeAssetSourceTypes:5];
    photoLibrary2 = [(PGManager *)self photoLibrary];
    [librarySpecificFetchOptions setPhotoLibrary:photoLibrary2];

    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v16 = v25 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v39 count:16];
    if (v17)
    {
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v16);
          }

          localIdentifier = [*(*(&v24 + 1) + 8 * i) localIdentifier];
          [v5 addObject:localIdentifier];
        }

        v17 = [v16 countByEnumeratingWithState:&v24 objects:v39 count:16];
      }

      while (v17);
    }
  }

  v21 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    v21 = v5;
  }

  v22 = v21;

  _Block_object_dispose(&v33, 8);

  return v22;
}

void __63__PGManager_People__assetIdentifiersForPersonLocalIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 graph];
  v10 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:v3 inGraph:v4];

  v5 = [v10 socialGroupNodes];
  v6 = [v5 momentNodes];
  v7 = [v6 uuids];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __63__PGManager_People__assetIdentifiersForPersonLocalIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CD9918] uuidFromLocalIdentifier:a2];
  [*(a1 + 32) addObject:v3];
}

- (id)assetCollectionsForPersonLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7680;
  v18 = __Block_byref_object_dispose__7681;
  v19 = 0;
  photoLibrary = [(PGManager *)self photoLibrary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__PGManager_People__assetCollectionsForPersonLocalIdentifiers___block_invoke;
  v10[3] = &unk_278888EB8;
  v6 = identifiersCopy;
  v11 = v6;
  v13 = &v14;
  v7 = photoLibrary;
  v12 = v7;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __63__PGManager_People__assetCollectionsForPersonLocalIdentifiers___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v14 = [v3 graph];
  v4 = a1[4];
  v5 = [v3 graph];

  v6 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:v4 inGraph:v5];

  v7 = [v6 count];
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = [v6 socialGroupNodes];
      v9 = [v8 momentNodes];
    }

    else
    {
      v9 = [v14 momentNodesForPersonNodes:v6];
    }

    v10 = [v9 temporarySet];
    v11 = [v14 momentsForMomentNodes:v10 inPhotoLibrary:a1[5] sortChronologically:1];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (id)maximalSocialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7680;
  v18 = __Block_byref_object_dispose__7681;
  v19 = 0;
  photoLibrary = [(PGManager *)self photoLibrary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__PGManager_People__maximalSocialGroupsOverlappingMemberLocalIdentifiers___block_invoke;
  v10[3] = &unk_278888EB8;
  v13 = &v14;
  v6 = identifiersCopy;
  v11 = v6;
  v7 = photoLibrary;
  v12 = v7;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __74__PGManager_People__maximalSocialGroupsOverlappingMemberLocalIdentifiers___block_invoke(void *a1, void *a2)
{
  v9 = [a2 graph];
  v3 = [v9 maximalSocialGroupsOverlappingMemberLocalIdentifiers:a1[4]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [PGPeopleUtilities validateSocialGroups:*(*(a1[6] + 8) + 40) withPhotoLibrary:a1[5] graph:v9];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)socialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7680;
  v18 = __Block_byref_object_dispose__7681;
  v19 = 0;
  photoLibrary = [(PGManager *)self photoLibrary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__PGManager_People__socialGroupsOverlappingMemberLocalIdentifiers___block_invoke;
  v10[3] = &unk_278888EB8;
  v13 = &v14;
  v6 = identifiersCopy;
  v11 = v6;
  v7 = photoLibrary;
  v12 = v7;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __67__PGManager_People__socialGroupsOverlappingMemberLocalIdentifiers___block_invoke(void *a1, void *a2)
{
  v9 = [a2 graph];
  v3 = [v9 socialGroupsOverlappingMemberLocalIdentifiers:a1[4]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [PGPeopleUtilities validateSocialGroups:*(*(a1[6] + 8) + 40) withPhotoLibrary:a1[5] graph:v9];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)allSocialGroupsForMemberLocalIdentifier:(id)identifier options:(id)options
{
  identifierCopy = identifier;
  optionsCopy = options;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7680;
  v23 = __Block_byref_object_dispose__7681;
  v24 = 0;
  photoLibrary = [(PGManager *)self photoLibrary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__PGManager_People__allSocialGroupsForMemberLocalIdentifier_options___block_invoke;
  v14[3] = &unk_278889308;
  v18 = &v19;
  v9 = identifierCopy;
  v15 = v9;
  v10 = optionsCopy;
  v16 = v10;
  v11 = photoLibrary;
  v17 = v11;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __69__PGManager_People__allSocialGroupsForMemberLocalIdentifier_options___block_invoke(uint64_t a1, void *a2)
{
  v11 = [a2 graph];
  v3 = [v11 allSocialGroupsForMemberLocalIdentifier:*(a1 + 32) options:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D3AFF0]];
  v7 = v6 != 0;

  v8 = [PGPeopleUtilities validateSocialGroups:*(*(*(a1 + 56) + 8) + 40) withPhotoLibrary:*(a1 + 48) graph:v11 usePersonMoments:v7];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)sortedArrayForPersonLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__PGManager_People__sortedArrayForPersonLocalIdentifiers___block_invoke;
  v11[3] = &unk_27888A638;
  v12 = identifiersCopy;
  v6 = v5;
  v13 = v6;
  v7 = identifiersCopy;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __58__PGManager_People__sortedArrayForPersonLocalIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [*(a1 + 32) allObjects];
  v5 = [v3 personNodesForPersonLocalIdentifiers:v4];

  v6 = [v5 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 40);
        v12 = [*(*(&v13 + 1) + 8 * v10) localIdentifier];
        [v11 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)blockedFeatures
{
  v43 = *MEMORY[0x277D85DE8];
  photoLibrary = [(PGManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v31 = librarySpecificFetchOptions;
  v30 = [MEMORY[0x277CD98D8] fetchBlockedMemoriesWithOptions:librarySpecificFetchOptions];
  fetchedObjects = [v30 fetchedObjects];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = fetchedObjects;
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        blacklistedFeature = [*(*(&v36 + 1) + 8 * i) blacklistedFeature];
        if (blacklistedFeature)
        {
          [v6 addObject:blacklistedFeature];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v9);
  }

  v29 = v7;

  photoLibrary2 = [(PGManager *)self photoLibrary];
  librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

  v41 = *MEMORY[0x277CD9C68];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
  [librarySpecificFetchOptions2 setFetchPropertySets:v15];

  v28 = librarySpecificFetchOptions2;
  v16 = [MEMORY[0x277CD9938] fetchPersonsWithUserFeedbackWithOptions:librarySpecificFetchOptions2];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * j);
        userFeedbackProperties = [v21 userFeedbackProperties];
        userFeedback = [userFeedbackProperties userFeedback];

        if ([userFeedback type] == 2 || objc_msgSend(userFeedback, "type") == 3)
        {
          v24 = MEMORY[0x277CD98F0];
          localIdentifier = [v21 localIdentifier];
          v26 = [v24 peopleMemoryFeatureWithPersonLocalIdentifier:localIdentifier];

          if (v26)
          {
            [v6 addObject:v26];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v18);
  }

  return v6;
}

- (BOOL)date:(id)date isEqualToDate:(id)toDate
{
  if (date && toDate)
  {
    return [date isEqualToDate:toDate];
  }

  else
  {
    return date == toDate;
  }
}

- (id)_changingPropertyKeysForPersonProperties:(id)properties andPersonContactProperties:(id)contactProperties
{
  v81 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  contactPropertiesCopy = contactProperties;
  if ([propertiesCopy isEqualToDictionary:contactPropertiesCopy])
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB98]);
    goto LABEL_67;
  }

  workingContext = [(PGManager *)self workingContext];
  loggingConnection = [workingContext loggingConnection];

  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = [propertiesCopy objectForKeyedSubscript:@"id"];
  v13 = [contactPropertiesCopy objectForKeyedSubscript:@"id"];
  if (v13)
  {
    if (-[PGManager length](v12, "length") && [v13 length] && (-[PGManager isEqualToString:](v12, "isEqualToString:", v13) & 1) == 0)
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v76 = v13;
        v77 = 2112;
        selfCopy = v12;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Trying to merge person local identifier %@ into person node with local identifier %@", buf, 0x16u);
      }

      v8 = objc_alloc_init(MEMORY[0x277CBEB98]);
      goto LABEL_66;
    }

    if (!-[PGManager length](v12, "length") && [v13 length])
    {
      [v11 addObject:@"id"];
    }
  }

  v72 = v13;
  v14 = [propertiesCopy objectForKeyedSubscript:@"cnid"];
  v15 = [contactPropertiesCopy objectForKeyedSubscript:@"cnid"];
  if (v15)
  {
    if (-[PGManager length](v14, "length") && [v15 length] && (-[PGManager isEqualToString:](v14, "isEqualToString:", v15) & 1) == 0 && os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v76 = v15;
      v77 = 2112;
      selfCopy = v14;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Trying to merge person contact identifier %@ into person node with contact identifier %@", buf, 0x16u);
    }

    if (!-[PGManager length](v14, "length") && [v15 length])
    {
      [v11 addObject:@"cnid"];
    }
  }

  v70 = v15;
  v16 = [propertiesCopy objectForKeyedSubscript:@"shareparticipant"];
  v17 = [contactPropertiesCopy objectForKeyedSubscript:@"shareparticipant"];
  v18 = v17;
  if (v17)
  {
    if ([v17 length] && objc_msgSend(v16, "length") && (objc_msgSend(v16, "isEqualToString:", v18) & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v76 = v18;
      v77 = 2112;
      selfCopy = self;
      v79 = 2112;
      v80 = v16;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Trying to merge ShareParticipantIdentifier %@ into person node %@ with share participant identifier %@", buf, 0x20u);
      if (!v16)
      {
LABEL_25:
        if ([v18 length])
        {
          [v11 addObject:@"shareparticipant"];
        }
      }
    }

    else if (!v16)
    {
      goto LABEL_25;
    }
  }

  v68 = v18;
  v73 = v12;
  v74 = loggingConnection;
  v19 = [propertiesCopy objectForKeyedSubscript:@"name"];
  v66 = [contactPropertiesCopy objectForKeyedSubscript:@"name"];
  v20 = [v66 length];
  v67 = v19;
  if (v20 > [v19 length])
  {
    [v11 addObject:@"name"];
  }

  v21 = [propertiesCopy objectForKeyedSubscript:@"sex"];
  unsignedIntegerValue = [v21 unsignedIntegerValue];

  v23 = [contactPropertiesCopy objectForKeyedSubscript:@"sex"];
  unsignedIntegerValue2 = [v23 unsignedIntegerValue];

  if (!unsignedIntegerValue && unsignedIntegerValue2)
  {
    [v11 addObject:@"sex"];
  }

  v25 = [propertiesCopy objectForKeyedSubscript:@"agecategory"];
  unsignedIntegerValue3 = [v25 unsignedIntegerValue];

  v27 = [contactPropertiesCopy objectForKeyedSubscript:@"agecategory"];
  unsignedIntegerValue4 = [v27 unsignedIntegerValue];

  if (!unsignedIntegerValue3 && unsignedIntegerValue4)
  {
    [v11 addObject:@"agecategory"];
  }

  v29 = [propertiesCopy objectForKeyedSubscript:@"fav"];
  bOOLValue = [v29 BOOLValue];

  v31 = [contactPropertiesCopy objectForKeyedSubscript:@"fav"];
  bOOLValue2 = [v31 BOOLValue];

  if ((bOOLValue & 1) == 0 && bOOLValue2)
  {
    [v11 addObject:@"fav"];
  }

  v33 = [propertiesCopy objectForKeyedSubscript:@"usercreated"];
  bOOLValue3 = [v33 BOOLValue];

  v35 = [contactPropertiesCopy objectForKeyedSubscript:@"usercreated"];
  bOOLValue4 = [v35 BOOLValue];

  if ((bOOLValue3 & 1) == 0 && bOOLValue4)
  {
    [v11 addObject:@"usercreated"];
  }

  v37 = [propertiesCopy objectForKeyedSubscript:@"bday"];
  v65 = v37;
  if (v37)
  {
    v38 = MEMORY[0x277CBEAA8];
    [v37 doubleValue];
    v39 = [v38 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v39 = 0;
  }

  v40 = [contactPropertiesCopy objectForKeyedSubscript:@"bday"];
  v63 = v40;
  if (v40)
  {
    v41 = MEMORY[0x277CBEAA8];
    [v40 doubleValue];
    v42 = [v41 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v42 = 0;
  }

  v62 = v42;
  if (![(PGManager *)self date:v39 isEqualToDate:v42])
  {
    [v11 addObject:@"bday"];
  }

  v43 = [propertiesCopy objectForKeyedSubscript:@"pbday"];
  v71 = v14;
  v61 = v43;
  if (v43)
  {
    v44 = MEMORY[0x277CBEAA8];
    [v43 doubleValue];
    v45 = [v44 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v45 = 0;
  }

  v64 = v39;
  v46 = [contactPropertiesCopy objectForKeyedSubscript:@"pbday"];
  v47 = v46;
  if (v46)
  {
    v48 = MEMORY[0x277CBEAA8];
    [v46 doubleValue];
    v49 = [v48 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v49 = 0;
  }

  if (![(PGManager *)self date:v45 isEqualToDate:v49, v45])
  {
    [v11 addObject:@"pbday"];
  }

  v50 = v11;
  v51 = [propertiesCopy objectForKeyedSubscript:@"anniv"];
  v52 = v51;
  v69 = v16;
  if (v51)
  {
    v53 = MEMORY[0x277CBEAA8];
    [v51 doubleValue];
    v54 = [v53 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v54 = 0;
  }

  v55 = [contactPropertiesCopy objectForKeyedSubscript:@"anniv"];
  v56 = v55;
  if (v55)
  {
    v57 = MEMORY[0x277CBEAA8];
    [v55 doubleValue];
    v58 = [v57 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v58 = 0;
  }

  if (![(PGManager *)self date:v54 isEqualToDate:v58])
  {
    [v50 addObject:@"anniv"];
  }

  v8 = v50;

  v11 = v50;
  v12 = v73;
  loggingConnection = v74;
  v13 = v72;
LABEL_66:

LABEL_67:

  return v8;
}

- (id)_homeWorkNodesByPersonNodeForContactIdentifiers:(id)identifiers inGraph:(id)graph
{
  v5 = MEMORY[0x277CBEB98];
  graphCopy = graph;
  v7 = [v5 setWithArray:identifiers];
  v8 = [PGGraphPersonNodeCollection personNodesForContactIdentifiers:v7 inGraph:graphCopy];

  v9 = MEMORY[0x277D22BF8];
  v10 = +[PGGraphPersonNode homeOrWorkOfPerson];
  v11 = [v9 adjacencyWithSources:v8 relation:v10 targetsClass:objc_opt_class()];

  return v11;
}

- (id)graphUpdateForContactsChangesWithProgressReporter:(id)reporter
{
  v45 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  graphLoggingConnection = [(PGManager *)self graphLoggingConnection];
  v6 = os_signpost_id_generate(graphLoggingConnection);
  v7 = graphLoggingConnection;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "GetGraphUpdateForContactChanges", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v32 = mach_absolute_time();
  workingContext = [(PGManager *)self workingContext];
  loggingConnection = [workingContext loggingConnection];

  v11 = [PGGraphUpdate alloc];
  photoLibrary = [(PGManager *)self photoLibrary];
  v13 = [(PGGraphUpdate *)v11 initWithPhotoLibrary:photoLibrary updateType:1];

  v14 = reporterCopy;
  v15 = v13;
  *buf = 0;
  v39 = buf;
  v40 = 0x2020000000;
  v41 = 0;
  v16 = [v14 isCancelledWithProgress:0.0];
  v39[24] = v16;
  if (!v16)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __73__PGManager_Contacts__graphUpdateForContactsChangesWithProgressReporter___block_invoke;
    v33[3] = &unk_278883A18;
    v33[4] = self;
    v37 = buf;
    v18 = v14;
    v34 = v18;
    v19 = loggingConnection;
    v35 = v19;
    v20 = v15;
    v36 = v20;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v33];
    if (v39[24])
    {
      v39[24] = 1;
    }

    else
    {
      v21 = [v18 isCancelledWithProgress:1.0];
      v39[24] = v21;
      if ((v21 & 1) == 0)
      {
        v25 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v28 = v8;
        v29 = v28;
        if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
        {
          *v43 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v6, "GetGraphUpdateForContactChanges", "", v43, 2u);
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *v43 = 136315394;
          *v44 = "GetGraphUpdateForContactChanges";
          *&v44[8] = 2048;
          *&v44[10] = ((((v25 - v32) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v43, 0x16u);
        }

        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          goto LABEL_21;
        }

        *v43 = 0;
        v23 = "PGManager (Contacts): finished proceeding with the graph update from Contacts";
        v22 = v19;
        v24 = 2;
        goto LABEL_20;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
LABEL_21:
      v30 = v20;

      goto LABEL_22;
    }

    *v43 = 67109378;
    *v44 = 92;
    *&v44[4] = 2080;
    *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Contacts.m";
    v22 = MEMORY[0x277D86220];
    v23 = "Cancelled at line %d in file %s";
    v24 = 18;
LABEL_20:
    _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, v23, v43, v24);
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v43 = 67109378;
    *v44 = 34;
    *&v44[4] = 2080;
    *&v44[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Contacts.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v43, 0x12u);
  }

  v17 = v15;
LABEL_22:
  _Block_object_dispose(buf, 8);

  return v15;
}

void __73__PGManager_Contacts__graphUpdateForContactsChangesWithProgressReporter___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 graph];
  v5 = [PGGraphPersonNodeCollection personNodesIncludingMeInGraph:v4];
  if ([v5 count])
  {
    v6 = *(a1 + 32);
    v7 = [v5 contactIdentifiers];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __73__PGManager_Contacts__graphUpdateForContactsChangesWithProgressReporter___block_invoke_2;
    v29[3] = &unk_278889448;
    v31 = *(a1 + 64);
    v30 = *(a1 + 40);
    v8 = [v6 clsPersonByContactIdentifierWithPersonContactIdentifiers:v7 progressBlock:v29];

    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v9 = *(a1 + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "PGManager (Contacts): people in Contacts: %@", &buf, 0xCu);
      }

      v10 = *(a1 + 32);
      v11 = [v8 allKeys];
      v12 = [v10 _homeWorkNodesByPersonNodeForContactIdentifiers:v11 inGraph:v4];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v33 = 0x2020000000;
      v34 = 0x3FE3333333333333;
      v13 = 1.0 / [v5 count];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __73__PGManager_Contacts__graphUpdateForContactsChangesWithProgressReporter___block_invoke_253;
      v18[3] = &unk_278881DA0;
      v14 = v8;
      v15 = *(a1 + 32);
      v19 = v14;
      v20 = v15;
      v16 = v12;
      v21 = v16;
      v22 = v4;
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);
      v28 = v13;
      v17 = *(a1 + 64);
      p_buf = &buf;
      v27 = v17;
      v25 = *(a1 + 40);
      [v5 enumerateNodesUsingBlock:v18];

      _Block_object_dispose(&buf, 8);
    }
  }
}

uint64_t __73__PGManager_Contacts__graphUpdateForContactsChangesWithProgressReporter___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:0.1];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

void __73__PGManager_Contacts__graphUpdateForContactsChangesWithProgressReporter___block_invoke_253(uint64_t a1, void *a2, _BYTE *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 contactIdentifier];
  if ([v7 length])
  {
    v8 = [v5 localIdentifier];
    v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
    if (v9)
    {
      v19 = a3;
      v10 = [v5 propertyDictionary];
      v11 = [PGGraphPersonNode propertiesWithPerson:v9];
      v12 = [*(a1 + 40) _changingPropertyKeysForPersonProperties:v10 andPersonContactProperties:v11];
      if ([v12 count] || objc_msgSend(*(a1 + 40), "homeWorkAddressesDidChangeForPersonInContact:andPersonNode:withHomeWorkNodesByPersonNode:graph:", v9, v5, *(a1 + 48), *(a1 + 56)))
      {
        v13 = *(a1 + 64);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v21 = v5;
          v22 = 2112;
          v23 = v12;
          _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "PGManager (Contacts): Update %@ with information from Contacts for property keys = %@", buf, 0x16u);
        }

        v14 = [[PGGraphPersonChange alloc] initWithPersonLocalIdentifier:v8 contactIdentifier:v7 propertyNames:v12];
        [*(a1 + 72) addChange:v14];
      }

      a3 = v19;
    }

    else
    {
      v15 = +[PGGraphPersonNode changedPropertyNamesForContactsChange];
      v16 = [[PGGraphPersonChange alloc] initWithPersonLocalIdentifier:v8 contactIdentifier:v7 propertyNames:v15];
      [*(a1 + 72) addChange:v16];
    }

    *(*(*(a1 + 88) + 8) + 24) = *(a1 + 104) + *(*(*(a1 + 88) + 8) + 24);
    v17 = *(*(a1 + 96) + 8);
    if (*(v17 + 24))
    {
      v18 = 1;
    }

    else
    {
      v18 = [*(a1 + 80) isCancelledWithProgress:*(*(*(a1 + 88) + 8) + 24)];
      v17 = *(*(a1 + 96) + 8);
    }

    *(v17 + 24) = v18;
    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  objc_autoreleasePoolPop(v6);
}

- (id)libraryStatisticsForCurrentPhotoLibrary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _momentsStatisticsForCurrentPhotoLibrary = [(PGManager *)self _momentsStatisticsForCurrentPhotoLibrary];
  if ([_momentsStatisticsForCurrentPhotoLibrary count])
  {
    [dictionary addEntriesFromDictionary:_momentsStatisticsForCurrentPhotoLibrary];
  }

  _collectionStatisticsForCurrentPhotoLibrary = [(PGManager *)self _collectionStatisticsForCurrentPhotoLibrary];

  if ([_collectionStatisticsForCurrentPhotoLibrary count])
  {
    [dictionary addEntriesFromDictionary:_collectionStatisticsForCurrentPhotoLibrary];
  }

  _yearsStatisticsForCurrentPhotoLibrary = [(PGManager *)self _yearsStatisticsForCurrentPhotoLibrary];

  if ([_yearsStatisticsForCurrentPhotoLibrary count])
  {
    [dictionary addEntriesFromDictionary:_yearsStatisticsForCurrentPhotoLibrary];
  }

  return dictionary;
}

- (id)_yearsStatisticsForCurrentPhotoLibrary
{
  v16[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  photoLibrary = [(PGManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v7];

  v8 = [MEMORY[0x277CD9848] fetchMomentListsWithSubtype:2 options:librarySpecificFetchOptions];
  v9 = [(PGManager *)self _extractYearStatsFromOrderedCollectionFetchResults:v8 fetchOptions:librarySpecificFetchOptions yearEntryKey:@"startYear" numberOfYearsEntryKey:0];
  [dictionary addEntriesFromDictionary:v9];
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:0];
  v15 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v11];

  v12 = [MEMORY[0x277CD9848] fetchMomentListsWithSubtype:2 options:librarySpecificFetchOptions];
  v13 = [(PGManager *)self _extractYearStatsFromOrderedCollectionFetchResults:v12 fetchOptions:librarySpecificFetchOptions yearEntryKey:@"endYear" numberOfYearsEntryKey:@"numberOfYearsWithAsset"];
  [dictionary addEntriesFromDictionary:v13];

  return dictionary;
}

- (id)_extractYearStatsFromOrderedCollectionFetchResults:(id)results fetchOptions:(id)options yearEntryKey:(id)key numberOfYearsEntryKey:(id)entryKey
{
  v37 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  optionsCopy = options;
  keyCopy = key;
  entryKeyCopy = entryKey;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = resultsCopy;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v10)
  {
    startDate = 0;
    v11 = 0;
    v18 = -1;
    currentCalendar = obj;
    goto LABEL_18;
  }

  v11 = 0;
  startDate = 0;
  v13 = *v33;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v33 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v32 + 1) + 8 * i);
      v16 = [MEMORY[0x277CD97B8] fetchMomentsInMomentList:v15 options:optionsCopy];
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __125__PGManager_Diagnostics___extractYearStatsFromOrderedCollectionFetchResults_fetchOptions_yearEntryKey_numberOfYearsEntryKey___block_invoke;
      v27[3] = &unk_278881F50;
      v27[4] = &v28;
      [v16 enumerateObjectsUsingBlock:v27];
      if (v29[3])
      {
        if (!startDate)
        {
          startDate = [v15 startDate];
        }

        if (!entryKeyCopy)
        {
          _Block_object_dispose(&v28, 8);

          goto LABEL_15;
        }

        ++v11;
      }

      _Block_object_dispose(&v28, 8);
    }

    v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_15:

  if (startDate)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v18 = [currentCalendar component:4 fromDate:startDate];
LABEL_18:

    goto LABEL_20;
  }

  v18 = -1;
LABEL_20:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
  [dictionary setObject:v20 forKey:keyCopy];

  if (entryKeyCopy)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    [dictionary setObject:v21 forKey:entryKeyCopy];
  }

  return dictionary;
}

uint64_t __125__PGManager_Diagnostics___extractYearStatsFromOrderedCollectionFetchResults_fetchOptions_yearEntryKey_numberOfYearsEntryKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 estimatedAssetCount];
  *(*(*(a1 + 32) + 8) + 24) += result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

- (id)_collectionStatisticsForCurrentPhotoLibrary
{
  v42[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  photoLibrary = [(PGManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v42[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v4];

  v5 = [MEMORY[0x277CD9848] fetchMomentListsWithSubtype:1 options:librarySpecificFetchOptions];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v7 = 0;
  v8 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v8)
  {
    v30 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        localIdentifier = [v10 localIdentifier];
        v33 = 0;
        v34 = &v33;
        v35 = 0x2020000000;
        v36 = 0;
        v12 = [MEMORY[0x277CD97B8] fetchMomentsInMomentList:v10 options:librarySpecificFetchOptions];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __69__PGManager_Diagnostics___collectionStatisticsForCurrentPhotoLibrary__block_invoke;
        v32[3] = &unk_278881F50;
        v32[4] = &v33;
        [v12 enumerateObjectsUsingBlock:v32];
        v13 = [dictionary2 objectForKeyedSubscript:localIdentifier];
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = &unk_2844832E8;
        }

        unsignedIntegerValue = [v14 unsignedIntegerValue];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34[3] + unsignedIntegerValue];
        [dictionary2 setObject:v16 forKeyedSubscript:localIdentifier];

        v17 = v34[3];
        _Block_object_dispose(&v33, 8);

        v7 += v17;
      }

      v8 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v8);
  }

  v18 = [dictionary2 count];
  v19 = v18;
  if (v18)
  {
    v20 = v7 / v18;
  }

  else
  {
    v20 = 0;
  }

  allValues = [dictionary2 allValues];
  v22 = [(PGManager *)self medianValueFromUnsignedItegerArray:allValues];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  [dictionary setObject:v23 forKey:@"numberOfCollections"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
  [dictionary setObject:v24 forKey:@"averageNumberOfAssetsInCollections"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  [dictionary setObject:v25 forKey:@"medianNumberOfAssetsInCollections"];

  return dictionary;
}

uint64_t __69__PGManager_Diagnostics___collectionStatisticsForCurrentPhotoLibrary__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 estimatedAssetCount];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (id)_momentsStatisticsForCurrentPhotoLibrary
{
  v34 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  selfCopy = self;
  photoLibrary = [(PGManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v27 = librarySpecificFetchOptions;
  v5 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:librarySpecificFetchOptions];
  v25 = [v5 count];
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        estimatedAssetCount = [v14 estimatedAssetCount];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:estimatedAssetCount];
        [array addObject:v17];

        v10 += estimatedAssetCount;
        if (estimatedAssetCount == 1)
        {
          ++v11;
        }

        objc_autoreleasePoolPop(v15);
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v18 = v10 / v25;
  v19 = [(PGManager *)selfCopy medianValueFromUnsignedItegerArray:array];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
  [dictionary setObject:v20 forKey:@"numberOfMoments"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
  [dictionary setObject:v21 forKey:@"averageNumberOfAssetsInMoments"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  [dictionary setObject:v22 forKey:@"medianNumberOfAssetsInMoments"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  [dictionary setObject:v23 forKey:@"numberOfMomentsWithSingleAsset"];

  return dictionary;
}

- (unint64_t)medianValueFromUnsignedItegerArray:(id)array
{
  v13[2] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if ([arrayCopy count])
  {
    if ([arrayCopy count] == 1)
    {
      firstObject = [arrayCopy firstObject];
      unsignedIntegerValue = [firstObject unsignedIntegerValue];
    }

    else
    {
      firstObject = [arrayCopy sortedArrayUsingSelector:sel_compare_];
      v6 = [arrayCopy count];
      v7 = [firstObject count] >> 1;
      if (v6)
      {
        v8 = [firstObject objectAtIndex:v7];
        unsignedIntegerValue = [v8 unsignedIntegerValue];
      }

      else
      {
        v8 = [firstObject objectAtIndex:v7 - 1];
        v13[0] = v8;
        v9 = [firstObject objectAtIndex:v7];
        v13[1] = v9;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
        v11 = [v10 valueForKeyPath:@"@avg.self"];
        unsignedIntegerValue = [v11 unsignedIntegerValue];
      }
    }
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)diagnosticsSummaryInfoOnExistingMemoriesForCurrentPhotoLibrary
{
  v23[1] = *MEMORY[0x277D85DE8];
  photoLibrary = [(PGManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludePendingMemories:0];
  [librarySpecificFetchOptions setIncludeRejectedMemories:0];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v23[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v6];

  [librarySpecificFetchOptions setFetchLimit:15];
  v7 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [(PGManager *)self _diagnosticSummaryInfoForMemory:v14, v18];
        localIdentifier = [v14 localIdentifier];
        [dictionary setValue:v15 forKey:localIdentifier];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return dictionary;
}

- (id)_diagnosticSummaryInfoForMemory:(id)memory
{
  memoryCopy = memory;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  localizedTitle = [memoryCopy localizedTitle];
  v7 = [localizedTitle length];

  if (v7)
  {
    localizedTitle2 = [memoryCopy localizedTitle];
    [dictionary setObject:localizedTitle2 forKey:@"title"];
  }

  assetCollectionType = [memoryCopy assetCollectionType];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:assetCollectionType];
  [dictionary setObject:v10 forKey:@"assetCollectionType"];

  assetCollectionSubtype = [memoryCopy assetCollectionSubtype];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:assetCollectionSubtype];
  [dictionary setObject:v12 forKey:@"assetCollectionSubType"];

  creationDate = [memoryCopy creationDate];

  if (creationDate)
  {
    creationDate2 = [memoryCopy creationDate];
    [dictionary setObject:creationDate2 forKey:@"creationDate"];
  }

  localIdentifier = [memoryCopy localIdentifier];

  if (localIdentifier)
  {
    localIdentifier2 = [memoryCopy localIdentifier];
    [dictionary setObject:localIdentifier2 forKey:@"localIdentifier"];
  }

  isRejected = [memoryCopy isRejected];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:isRejected];
  [dictionary setObject:v18 forKey:@"rejected"];

  isFavorite = [memoryCopy isFavorite];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:isFavorite];
  [dictionary setObject:v20 forKey:@"favorite"];

  pendingState = [memoryCopy pendingState];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:pendingState];
  [dictionary setObject:v22 forKey:@"pendingState"];

  photosGraphVersion = [memoryCopy photosGraphVersion];
  v24 = [MEMORY[0x277CCABB0] numberWithLongLong:photosGraphVersion];
  [dictionary setObject:v24 forKey:@"photoGraphVersion"];

  photosGraphProperties = [memoryCopy photosGraphProperties];
  if (photosGraphProperties)
  {
    v26 = [(PGManager *)self _sanitizeGraphDataDictionaryForArchiving:photosGraphProperties referencedMemory:memoryCopy];
    [dictionary setObject:v26 forKey:@"photosGraphProperties"];
  }

  movieData = [memoryCopy movieData];
  if (movieData)
  {
    [dictionary setObject:movieData forKey:@"movieData"];
  }

  [memoryCopy score];
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [dictionary setObject:v28 forKey:@"score"];

  uuid = [memoryCopy uuid];
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  lastViewedDate = [memoryCopy lastViewedDate];
  if (lastViewedDate)
  {
    [dictionary setObject:lastViewedDate forKey:@"lastViewedDate"];
  }

  lastMoviePlayedDate = [memoryCopy lastMoviePlayedDate];
  if (lastMoviePlayedDate)
  {
    [dictionary setObject:lastMoviePlayedDate forKey:@"lastMoviePlayedDate"];
  }

  category = [memoryCopy category];
  v33 = [MEMORY[0x277CD98D8] stringForCategory:category];
  [dictionary setObject:v33 forKey:@"category"];
  subcategory = [memoryCopy subcategory];
  v35 = [MEMORY[0x277CD98D8] stringForSubcategory:subcategory];
  [dictionary setObject:v35 forKey:@"subCategory"];
  v36 = [(PGManager *)self _extractDatesAndAssetCountsFromMemory:memoryCopy];
  [dictionary addEntriesFromDictionary:v36];

  return dictionary;
}

- (id)_extractDatesAndAssetCountsFromMemory:(id)memory
{
  memoryCopy = memory;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  photoLibrary = [memoryCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v7 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:memoryCopy options:librarySpecificFetchOptions];
  v8 = [v7 count];
  if (v8)
  {
    v9 = v8;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__26362;
    v25 = __Block_byref_object_dispose__26363;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__26362;
    v19 = __Block_byref_object_dispose__26363;
    v20 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__PGManager_Diagnostics___extractDatesAndAssetCountsFromMemory___block_invoke;
    v14[3] = &unk_278881F28;
    v14[4] = &v21;
    v14[5] = &v15;
    [v7 enumerateObjectsUsingBlock:v14];
    v10 = v22[5];
    if (v10)
    {
      [dictionary setObject:v10 forKey:@"startDate"];
    }

    v11 = v16[5];
    if (v11)
    {
      [dictionary setObject:v11 forKey:@"endDate"];
    }

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    [dictionary setObject:v12 forKey:@"estimatedAssetCount"];

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  return dictionary;
}

void __64__PGManager_Diagnostics___extractDatesAndAssetCountsFromMemory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 creationDate];
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  obj = v3;
  if (*(v5 + 40))
  {
    if ([v3 compare:?] != -1)
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 32) + 8);
    v4 = obj;
  }

  objc_storeStrong((v5 + 40), v4);
LABEL_5:
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 40))
  {
    if ([obj compare:?] != 1)
    {
      goto LABEL_9;
    }

    v6 = *(*(a1 + 40) + 8);
  }

  objc_storeStrong((v6 + 40), obj);
LABEL_9:
}

- (id)_sanitizeGraphDataDictionaryForArchiving:(id)archiving referencedMemory:(id)memory
{
  v55 = *MEMORY[0x277D85DE8];
  archivingCopy = archiving;
  memoryCopy = memory;
  if (archivingCopy)
  {
    v8 = [archivingCopy objectForKey:@"backingMoments"];
    v9 = [archivingCopy objectForKey:@"collectionsInfo"];
    v40 = memoryCopy;
    v43 = v9;
    if (!v8 || !v9)
    {
      photoLibrary = [(PGManager *)self photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      v41 = librarySpecificFetchOptions;
      v12 = [MEMORY[0x277CD97B8] fetchMomentsBackingMemory:memoryCopy options:librarySpecificFetchOptions];
      fetchedObjects = [v12 fetchedObjects];
      v14 = [archivingCopy objectForKeyedSubscript:@"info"];
      v15 = [v14 objectForKeyedSubscript:@"meaningLabels"];

      v16 = [MEMORY[0x277CBEB98] setWithArray:v15];
      v17 = [(PGManager *)self memoryDebugInformationWithMoments:fetchedObjects meaningLabels:v16];

      v18 = [v17 objectForKeyedSubscript:@"backingMoments"];
      v19 = v18;
      if (v8 || !v18)
      {
        v21 = +[PGLogging sharedLogging];
        loggingConnection = [v21 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v52 = fetchedObjects;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Memory backing moments debug information is not available for moments: %@", buf, 0xCu);
        }
      }

      else
      {
        v8 = [v17 objectForKeyedSubscript:@"backingMoments"];
      }

      v23 = [v17 objectForKeyedSubscript:@"collectionsInfo"];

      if (v43 || !v23)
      {
        v24 = +[PGLogging sharedLogging];
        loggingConnection2 = [v24 loggingConnection];

        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
        {
          v26 = [v15 componentsJoinedByString:{@", "}];
          *buf = 138412546;
          v52 = fetchedObjects;
          v53 = 2112;
          v54 = v26;
          _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "Memory graph collections debug information is not available for moments: '%@' and meanings: '%@'", buf, 0x16u);
        }
      }

      else
      {
        v43 = [v17 objectForKeyedSubscript:@"collectionsInfo"];
      }
    }

    v42 = archivingCopy;
    v39 = [archivingCopy mutableCopy];
    array = [MEMORY[0x277CBEB18] array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v28 = v8;
    v29 = [v28 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v47;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v47 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v46 + 1) + 8 * i);
          v34 = [v33 objectForKey:@"keywords"];
          if (v34)
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __84__PGManager_Diagnostics___sanitizeGraphDataDictionaryForArchiving_referencedMemory___block_invoke;
            v44[3] = &unk_278881F00;
            v45 = dictionary;
            v36 = dictionary;
            [v34 enumerateKeysAndObjectsUsingBlock:v44];
            v37 = [v33 mutableCopy];
            [v37 setObject:v36 forKey:@"keywords"];
            [array addObject:v37];
          }

          else
          {
            [array addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v30);
    }

    dictionary2 = v39;
    [v39 setObject:array forKey:@"backingMoments"];
    if (v43)
    {
      [v39 setObject:v43 forKey:@"collectionsInfo"];
    }

    memoryCopy = v40;
    archivingCopy = v42;
  }

  else
  {
    dictionary2 = [MEMORY[0x277CBEAC0] dictionary];
  }

  return dictionary2;
}

void __84__PGManager_Diagnostics___sanitizeGraphDataDictionaryForArchiving_referencedMemory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 stringValue];

    v5 = v6;
  }

  [*(a1 + 32) setObject:v7 forKey:v5];
}

- (id)highlightDebugInformationWithHighlight:(id)highlight
{
  highlightCopy = highlight;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  photoLibrary = [(PGManager *)self photoLibrary];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__PGManager_Diagnostics__highlightDebugInformationWithHighlight___block_invoke;
  v12[3] = &unk_27888A408;
  v13 = highlightCopy;
  v14 = photoLibrary;
  v7 = dictionary;
  v15 = v7;
  selfCopy = self;
  v8 = photoLibrary;
  v9 = highlightCopy;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v12];
  v10 = v7;

  return v7;
}

void __65__PGManager_Diagnostics__highlightDebugInformationWithHighlight___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [*(a1 + 32) uuid];
  v5 = [PGGraphHighlightNodeCollection highlightNodeForUUID:v4 inGraph:v3];
  v6 = [v5 anyNode];

  if (v6)
  {
    v30 = v3;
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) nonDefaultCurationScorePercentageForPhotoLibrary:*(a1 + 40)];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v7 setObject:v8 forKeyedSubscript:@"curationScorePercentage"];

    [*(a1 + 32) faceAnalysisProgressForPhotoLibrary:*(a1 + 40)];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v7 setObject:v9 forKeyedSubscript:@"faceAnalysisProgress"];

    [*(a1 + 32) sceneAnalysisProgressForPhotoLibrary:*(a1 + 40)];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v7 setObject:v10 forKeyedSubscript:@"sceneAnalysisProgress"];

    [*(a1 + 48) setObject:v7 forKeyedSubscript:@"collectionsInfo"];
    v11 = objc_alloc_init(PGNeighborScoreComputer);
    if ([v6 isTrip])
    {
      v12 = 0;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [v6 collection];
    v15 = [v14 momentNodes];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __65__PGManager_Diagnostics__highlightDebugInformationWithHighlight___block_invoke_2;
    v35[3] = &unk_278881ED8;
    v16 = v11;
    v36 = v16;
    v37 = v3;
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    v38 = v17;
    v39 = v18;
    v19 = v13;
    v40 = v19;
    v20 = v12;
    v41 = v20;
    [v15 enumerateNodesUsingBlock:v35];

    [*(a1 + 48) setObject:v19 forKeyedSubscript:@"backingMoments"];
    if ([v20 count])
    {
      v28 = v16;
      v29 = v7;
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v22 = +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v32;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v32 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v31 + 1) + 8 * i);
            if ([v20 containsObject:v27])
            {
              [v21 addObject:v27];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v31 objects:v42 count:16];
        }

        while (v24);
      }

      [*(a1 + 48) setObject:v21 forKeyedSubscript:@"sortedMeaningLabels"];

      v7 = v29;
      v3 = v30;
      v16 = v28;
    }
  }
}

void __65__PGManager_Diagnostics__highlightDebugInformationWithHighlight___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "numberOfAssets")}];
  [v4 setObject:v5 forKeyedSubscript:@"numberOfAssets"];

  v6 = MEMORY[0x277CCABB0];
  [v24 graphScore];
  v7 = [v6 numberWithDouble:?];
  [v4 setObject:v7 forKeyedSubscript:@"graphScore"];

  v8 = MEMORY[0x277CCABB0];
  [*(a1 + 32) neighborScoreWithMomentNode:v24];
  v9 = [v8 numberWithDouble:?];
  [v4 setObject:v9 forKeyedSubscript:@"neighborScore"];

  v10 = MEMORY[0x277CCABB0];
  [v24 contentScore];
  v11 = [v10 numberWithDouble:?];
  [v4 setObject:v11 forKeyedSubscript:@"curationScore"];

  v12 = [v24 keywordsForRelatedType:63 focusOnNodes:0];
  v13 = [v12 mutableCopy];

  v14 = [*(a1 + 40) momentForMomentNode:v24 inPhotoLibrary:*(a1 + 48)];
  if (v14)
  {
    v15 = [v13 objectForKeyedSubscript:&unk_2844832D0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = [v15 mutableCopy];
    }

    v17 = v16;
    v18 = MEMORY[0x277CCACA8];
    v19 = MEMORY[0x231902040]([v14 processedLocation]);
    v20 = [v18 stringWithFormat:@"[processedLocationType] %@", v19];
    [v17 addObject:v20];

    [v13 setObject:v17 forKeyedSubscript:&unk_2844832D0];
  }

  if ([v13 count])
  {
    v21 = [objc_opt_class() exportableDictionaryFromKeywords:v13];
    [v4 setObject:v21 forKeyedSubscript:@"keywords"];
  }

  [*(a1 + 64) addObject:v4];
  v22 = *(a1 + 72);
  v23 = [v24 meaningLabels];
  [v22 unionSet:v23];

  objc_autoreleasePoolPop(v3);
}

- (id)memoryDebugInformationWithMoments:(id)moments meaningLabels:(id)labels
{
  momentsCopy = moments;
  labelsCopy = labels;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__26362;
  v23 = __Block_byref_object_dispose__26363;
  v24 = 0;
  serviceManager = [(PGManager *)self serviceManager];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__PGManager_Diagnostics__memoryDebugInformationWithMoments_meaningLabels___block_invoke;
  v14[3] = &unk_278889308;
  v9 = momentsCopy;
  v15 = v9;
  v18 = &v19;
  v10 = labelsCopy;
  v16 = v10;
  v11 = serviceManager;
  v17 = v11;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v14];
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __74__PGManager_Diagnostics__memoryDebugInformationWithMoments_meaningLabels___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * v9) uuid];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = [v3 graph];
  v12 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v4 inGraph:v11];

  v13 = [v12 array];
  v14 = [PGMemoryDebugConvenience memoryDebugInformationWithMomentNodes:v13 meaningLabels:*(a1 + 40) serviceManager:*(a1 + 48)];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

- (id)workingContextForGraphConsistencyCheck
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_graphConsistencyCheckLoggingConnection];

  return v2;
}

- (id)workingContextForExternalRelevance
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_externalRelevanceLoggingConnection];

  return v2;
}

- (id)workingContextForUpNext
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_upNextLoggingConnection];

  return v2;
}

- (id)workingContextForMetrics
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_metricsLoggingConnection];

  return v2;
}

- (id)workingContextForSuggestions
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_suggestionsLoggingConnection];

  return v2;
}

- (id)workingContextForEnrichment
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_enrichmentLoggingConnection];

  return v2;
}

- (id)workingContextForRelated
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_relatedLoggingConnection];

  return v2;
}

- (id)workingContextForMemories
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_memoriesLoggingConnection];

  return v2;
}

- (id)workingContext
{
  v2 = [[PGManagerWorkingContext alloc] initWithManager:self loggingConnection:self->_loggingConnection];

  return v2;
}

- (int64_t)validatePHObject:(id)object featureAggregationValidator:(id)validator assetFetchOptionPropertySet:(id)set error:(id *)error
{
  objectCopy = object;
  validatorCopy = validator;
  setCopy = set;
  if ([(PGManager *)self isReady])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__29844;
    v25 = __Block_byref_object_dispose__29845;
    v26 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__PGManager_validatePHObject_featureAggregationValidator_assetFetchOptionPropertySet_error___block_invoke;
    v15[3] = &unk_2788826E0;
    v19 = &v27;
    v16 = validatorCopy;
    v17 = objectCopy;
    v18 = setCopy;
    v20 = &v21;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v15];
    v13 = v28[3];
    if (error && !v13)
    {
      *error = v22[5];
      v13 = v28[3];
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v13 = [validatorCopy isValidEntity:objectCopy graph:0 assetFetchOptionPropertySet:setCopy error:error];
  }

  return v13;
}

void __92__PGManager_validatePHObject_featureAggregationValidator_assetFetchOptionPropertySet_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = [a2 graph];
  v6 = a1[6];
  v7 = *(a1[8] + 8);
  obj = *(v7 + 40);
  v8 = [v3 isValidEntity:v4 graph:v5 assetFetchOptionPropertySet:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[7] + 8) + 24) = v8;
}

- (int64_t)validatePHObject:(id)object graphRelationsFeatureValidator:(id)validator error:(id *)error
{
  objectCopy = object;
  validatorCopy = validator;
  if ([(PGManager *)self isReady])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__29844;
    v21 = __Block_byref_object_dispose__29845;
    v22 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__PGManager_validatePHObject_graphRelationsFeatureValidator_error___block_invoke;
    v12[3] = &unk_2788826B8;
    v15 = &v23;
    v13 = validatorCopy;
    v14 = objectCopy;
    v16 = &v17;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v12];
    v10 = v24[3];
    if (error && !v10)
    {
      *error = v18[5];
      v10 = v24[3];
    }

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v10 = [validatorCopy isValidEntity:objectCopy graph:0 error:error];
  }

  return v10;
}

void __67__PGManager_validatePHObject_graphRelationsFeatureValidator_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = [a2 graph];
  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v7 = [v3 isValidEntity:v4 graph:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[6] + 8) + 24) = v7;
}

- (id)assetCollectionFingerprintsWithVersion:(int64_t)version forAssetCollections:(id)collections withTransformers:(id)transformers error:(id *)error
{
  collectionsCopy = collections;
  transformersCopy = transformers;
  if ([(PGManager *)self isReady])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__29844;
    v31 = __Block_byref_object_dispose__29845;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__29844;
    v25 = __Block_byref_object_dispose__29845;
    v26 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __95__PGManager_assetCollectionFingerprintsWithVersion_forAssetCollections_withTransformers_error___block_invoke;
    v15[3] = &unk_278882A28;
    v18 = &v27;
    versionCopy = version;
    v16 = collectionsCopy;
    v17 = transformersCopy;
    v19 = &v21;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v15];
    v12 = v28[5];
    if (error && !v12)
    {
      *error = v22[5];
      v12 = v28[5];
    }

    v13 = v12;

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v13 = [PGFingerprint assetCollectionFingerprintsWithVersion:version forAssetCollections:collectionsCopy withGraph:0 withTransformers:transformersCopy error:error];
  }

  return v13;
}

void __95__PGManager_assetCollectionFingerprintsWithVersion_forAssetCollections_withTransformers_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[8];
  v4 = a1[4];
  v5 = [a2 graph];
  v6 = a1[5];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [PGFingerprint assetCollectionFingerprintsWithVersion:v3 forAssetCollections:v4 withGraph:v5 withTransformers:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)assetFingerprintsWithVersion:(int64_t)version forAssets:(id)assets withTransformers:(id)transformers error:(id *)error
{
  assetsCopy = assets;
  transformersCopy = transformers;
  if ([(PGManager *)self isReady])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__29844;
    v31 = __Block_byref_object_dispose__29845;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__29844;
    v25 = __Block_byref_object_dispose__29845;
    v26 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__PGManager_assetFingerprintsWithVersion_forAssets_withTransformers_error___block_invoke;
    v15[3] = &unk_278882A28;
    v18 = &v27;
    versionCopy = version;
    v16 = assetsCopy;
    v17 = transformersCopy;
    v19 = &v21;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v15];
    v12 = v28[5];
    if (error && !v12)
    {
      *error = v22[5];
      v12 = v28[5];
    }

    v13 = v12;

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v13 = [PGFingerprint assetFingerprintsWithVersion:version forAssets:assetsCopy withGraph:0 withTransformers:transformersCopy error:error];
  }

  return v13;
}

void __75__PGManager_assetFingerprintsWithVersion_forAssets_withTransformers_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[8];
  v4 = a1[4];
  v5 = [a2 graph];
  v6 = a1[5];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [PGFingerprint assetFingerprintsWithVersion:v3 forAssets:v4 withGraph:v5 withTransformers:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (BOOL)copyGraphToURL:(id)l
{
  lCopy = l;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__PGManager_copyGraphToURL___block_invoke;
  v7[3] = &unk_27888A570;
  v9 = &v10;
  v5 = lCopy;
  v8 = v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __28__PGManager_copyGraphToURL___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v3 copyPersistentStoreToURL:v4 error:&v9];
  v6 = v9;
  *(*(*(a1 + 40) + 8) + 24) = v5;

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && v6)
  {
    v7 = +[PGLogging sharedLogging];
    v8 = [v7 loggingConnection];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_error_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_ERROR, "requested graph copy failed: %@", buf, 0xCu);
    }
  }
}

- (BOOL)saveGraphToURL:(id)l
{
  lCopy = l;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__PGManager_saveGraphToURL___block_invoke;
  v7[3] = &unk_27888A570;
  v9 = &v10;
  v5 = lCopy;
  v8 = v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __28__PGManager_saveGraphToURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  *(*(*(a1 + 40) + 8) + 24) = [v3 saveToURL:*(a1 + 32)];
}

- (void)matchWithVisualFormat:(id)format usingBlock:(id)block
{
  formatCopy = format;
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__PGManager_matchWithVisualFormat_usingBlock___block_invoke;
  v10[3] = &unk_278882690;
  v11 = formatCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = formatCopy;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v10];
}

void __46__PGManager_matchWithVisualFormat_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v47 = a1;
  v4 = *(a1 + 32);
  v76 = 0;
  v5 = [v3 matchWithVisualFormat:v4 elements:MEMORY[0x277CBEC10] error:&v76];
  v46 = v76;

  v58 = [MEMORY[0x277CBEB38] dictionary];
  v59 = v5;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = [v5 nodesNames];
  v52 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
  if (v52)
  {
    v50 = *v73;
    do
    {
      v6 = 0;
      do
      {
        if (*v73 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(*(&v72 + 1) + 8 * v6);
        v56 = v6;
        v7 = [v59 nodesForName:?];
        v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier" ascending:1];
        v85 = v8;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
        v10 = [v7 sortedArrayUsingDescriptors:v9];

        v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v68 objects:v84 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v69;
          do
          {
            v16 = 0;
            do
            {
              if (*v69 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v68 + 1) + 8 * v16);
              v18 = [MEMORY[0x277CBEB38] dictionary];
              v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "identifier")}];
              [v18 setObject:v19 forKeyedSubscript:@"identifier"];

              v20 = [v17 label];
              [v18 setObject:v20 forKeyedSubscript:@"label"];

              v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v17, "domain")}];
              [v18 setObject:v21 forKeyedSubscript:@"domain"];

              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "inEdgesCount")}];
              [v18 setObject:v22 forKeyedSubscript:@"inEdgesCount"];

              v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "outEdgesCount")}];
              [v18 setObject:v23 forKeyedSubscript:@"outEdgesCount"];

              v24 = [v17 propertyDictionary];
              [v18 setObject:v24 forKeyedSubscript:@"properties"];

              [v11 addObject:v18];
              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v68 objects:v84 count:16];
          }

          while (v14);
        }

        v82[0] = @"count";
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
        v82[1] = @"nodes";
        v83[0] = v25;
        v83[1] = v11;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
        [v58 setObject:v26 forKeyedSubscript:v54];

        v6 = v56 + 1;
      }

      while (v56 + 1 != v52);
      v52 = [obj countByEnumeratingWithState:&v72 objects:v86 count:16];
    }

    while (v52);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obja = [v59 edgesNames];
  v53 = [obja countByEnumeratingWithState:&v64 objects:v81 count:16];
  if (v53)
  {
    v51 = *v65;
    do
    {
      v27 = 0;
      do
      {
        if (*v65 != v51)
        {
          objc_enumerationMutation(obja);
        }

        v55 = *(*(&v64 + 1) + 8 * v27);
        v57 = v27;
        v28 = [v59 edgesForName:?];
        v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier" ascending:1];
        v80 = v29;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
        v31 = [v28 sortedArrayUsingDescriptors:v30];

        v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v31, "count")}];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v33 = v31;
        v34 = [v33 countByEnumeratingWithState:&v60 objects:v79 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v61;
          do
          {
            v37 = 0;
            do
            {
              if (*v61 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v60 + 1) + 8 * v37);
              v39 = [MEMORY[0x277CBEB38] dictionary];
              v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v38, "identifier")}];
              [v39 setObject:v40 forKeyedSubscript:@"identifier"];

              v41 = [v38 label];
              [v39 setObject:v41 forKeyedSubscript:@"label"];

              v42 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v38, "domain")}];
              [v39 setObject:v42 forKeyedSubscript:@"domain"];

              v43 = [v38 propertyDictionary];
              [v39 setObject:v43 forKeyedSubscript:@"properties"];

              [v32 addObject:v39];
              ++v37;
            }

            while (v35 != v37);
            v35 = [v33 countByEnumeratingWithState:&v60 objects:v79 count:16];
          }

          while (v35);
        }

        v77[0] = @"count";
        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v33, "count")}];
        v77[1] = @"edges";
        v78[0] = v44;
        v78[1] = v32;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
        [v58 setObject:v45 forKeyedSubscript:v55];

        v27 = v57 + 1;
      }

      while (v57 + 1 != v53);
      v53 = [obja countByEnumeratingWithState:&v64 objects:v81 count:16];
    }

    while (v53);
  }

  (*(*(v47 + 40) + 16))();
}

- (void)matchWithVisualFormat:(id)format elements:(id)elements usingBlock:(id)block
{
  formatCopy = format;
  elementsCopy = elements;
  blockCopy = block;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__PGManager_matchWithVisualFormat_elements_usingBlock___block_invoke;
  v14[3] = &unk_27888B2F8;
  v15 = formatCopy;
  v16 = elementsCopy;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = elementsCopy;
  v13 = formatCopy;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v14];
}

void __55__PGManager_matchWithVisualFormat_elements_usingBlock___block_invoke(void *a1, void *a2)
{
  v3 = [a2 graph];
  v4 = a1[4];
  v5 = a1[5];
  v8 = 0;
  v6 = [v3 matchWithVisualFormat:v4 elements:v5 error:&v8];
  v7 = v8;

  (*(a1[6] + 16))();
}

- (void)waitUntilFinishedUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__PGManager_waitUntilFinishedUsingBlock___block_invoke;
  v6[3] = &unk_2788825D0;
  v6[4] = self;
  v7 = blockCopy;
  v5 = blockCopy;
  [(PGManager *)self _waitLibraryUpdateUntilFinishedUsingBlock:v6];
}

void __41__PGManager_waitUntilFinishedUsingBlock___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__PGManager_waitUntilFinishedUsingBlock___block_invoke_2;
  v2[3] = &unk_278883848;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _waitGraphUntilFinishedUsingBlock:v2];
}

- (void)_waitLibraryUpdateUntilFinishedUsingBlock:(id)block
{
  blockCopy = block;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PGManager__waitLibraryUpdateUntilFinishedUsingBlock___block_invoke;
  block[3] = &unk_2788825D0;
  block[4] = self;
  v11 = blockCopy;
  v5 = blockCopy;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PGManager__waitLibraryUpdateUntilFinishedUsingBlock___block_invoke_2;
  v8[3] = &unk_278882668;
  v9 = v6;
  v7 = v6;
  [(PGManager *)self performAsynchronousGraphBarrierUsingBlock:v8];
}

- (void)_waitGraphUntilFinishedUsingBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PGManager__waitGraphUntilFinishedUsingBlock___block_invoke;
  v6[3] = &unk_278882668;
  v7 = blockCopy;
  v5 = blockCopy;
  [(PGManager *)self performAsynchronousGraphBarrierUsingBlock:v6];
}

void __47__PGManager__waitGraphUntilFinishedUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__PGManager__waitGraphUntilFinishedUsingBlock___block_invoke_2;
  v3[3] = &unk_278883848;
  v4 = *(a1 + 32);
  [a2 performAsynchronousNotification:v3];
}

- (BOOL)_isReadyWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  graph = self->_graph;
  v4 = graph != 0;
  if (error && !graph)
  {
    graphPersistentStoreURL = [(PGManager *)self graphPersistentStoreURL];
    if (!graphPersistentStoreURL || ![PGGraph graphExistsAtURL:graphPersistentStoreURL])
    {
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = graphPersistentStoreURL;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Graph does not exist at URL %@", &v16, 0xCu);
      }

      [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:27];
      *error = v4 = 0;
      goto LABEL_21;
    }

    v8 = [objc_alloc(objc_msgSend(objc_opt_class() "graphClass"))];
    if (v8)
    {
      v9 = [(PGManager *)self graphIsUsable:v8 error:error];
      v10 = self->_loggingConnection;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = @"NO";
        if (v9)
        {
          v11 = @"YES";
        }

        v16 = 138412546;
        v17 = graphPersistentStoreURL;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_DEFAULT, "Loaded graph from URL %@, is graph usable: %@", &v16, 0x16u);
      }

      if (v9)
      {
        v12 = self->_loggingConnection;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v16 = 138412290;
          v17 = graphPersistentStoreURL;
          _os_log_fault_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_FAULT, "Loaded a usable graph from URL %@, but unexpectedly had a nil graph in this manager", &v16, 0xCu);
        }

        [(PGManager *)self setGraph:v8];
        v4 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      v14 = self->_loggingConnection;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = graphPersistentStoreURL;
        _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_DEFAULT, "Tried and failed to load the graph from URL: %@", &v16, 0xCu);
      }
    }

    v4 = 0;
LABEL_20:

LABEL_21:
  }

  return v4;
}

- (BOOL)_addressesDidChangeBetweenAddressesInGraph:(id)graph andAddressesInContacts:(id)contacts addressType:(unint64_t)type person:(id)person graph:(id)a7
{
  graphCopy = graph;
  contactsCopy = contacts;
  personCopy = person;
  v14 = a7;
  v15 = [graphCopy count];
  v16 = [contactsCopy count];
  if (v15 | v16)
  {
    if (!v15 || v16)
    {
      if (v15 || !v16)
      {
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v27 = 0;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __104__PGManager__addressesDidChangeBetweenAddressesInGraph_andAddressesInContacts_addressType_person_graph___block_invoke;
        v20[3] = &unk_278882640;
        v22 = &v24;
        v23 = 0x4062C00000000000;
        v21 = graphCopy;
        [personCopy enumerateAddressesOfType:type asCLLocationsWithBlock:v20];
        v17 = v25[3] != 0;

        _Block_object_dispose(&v24, 8);
      }

      else
      {
        v18 = [PGGraphAddressNodeCollection addressNodesWithinDistance:contactsCopy ofLocations:v14 inGraph:150.0];
        v17 = [v18 count] != 0;
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __104__PGManager__addressesDidChangeBetweenAddressesInGraph_andAddressesInContacts_addressType_person_graph___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  [a2 coordinate];
  v6 = v5;
  v8 = v7;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = *(a1 + 32);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v16 + 1) + 8 * v13) coordinate];
        if ([PGLocationUtility coordinate:v6 isCloseToCoordinate:v8 threshold:v14, v15, *(a1 + 48)])
        {

          return;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  *a3 = 1;
}

- (BOOL)homeWorkAddressesDidChangeForPersonInContact:(id)contact andPersonNode:(id)node withHomeWorkNodesByPersonNode:(id)personNode graph:(id)graph
{
  contactCopy = contact;
  graphCopy = graph;
  personNodeCopy = personNode;
  collection = [node collection];
  v11 = [personNodeCopy targetsForSources:?];

  v12 = +[PGGraphHomeWorkNode homeFilter];
  v13 = [v11 nodesMatchingFilter:v12];

  v14 = MEMORY[0x277CBEB98];
  v36 = v13;
  addressNodes = [v13 addressNodes];
  locations = [addressNodes locations];
  v17 = [v14 setWithArray:locations];

  v18 = +[PGGraphHomeWorkNode workFilter];
  v19 = [v11 nodesMatchingFilter:v18];

  v20 = MEMORY[0x277CBEB98];
  addressNodes2 = [v19 addressNodes];
  locations2 = [addressNodes2 locations];
  v23 = [v20 setWithArray:locations2];

  v24 = MEMORY[0x277CBEB98];
  locationsByAddressTypes = [contactCopy locationsByAddressTypes];
  v26 = [locationsByAddressTypes objectForKeyedSubscript:&unk_2844836D8];
  v27 = [v24 setWithArray:v26];

  v28 = MEMORY[0x277CBEB98];
  locationsByAddressTypes2 = [contactCopy locationsByAddressTypes];
  v30 = [locationsByAddressTypes2 objectForKeyedSubscript:&unk_2844836F0];
  v31 = [v28 setWithArray:v30];

  v32 = [(PGManager *)self _addressesDidChangeBetweenAddressesInGraph:v17 andAddressesInContacts:v27 addressType:0 person:contactCopy graph:graphCopy]|| [(PGManager *)self _addressesDidChangeBetweenAddressesInGraph:v23 andAddressesInContacts:v31 addressType:1 person:contactCopy graph:graphCopy];
  return v32;
}

void __39__PGManager_invalidatePersistentCaches__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  [v5 _invalidatePersistentCachesIncludingPublicEvents:1];
  [v4 invalidateMemoryCaches];

  [v5 _invalidateTransientCaches];
}

void __38__PGManager_invalidateTransientCaches__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 invalidateMemoryCaches];
  [v4 _invalidateTransientCaches];
}

- (void)_invalidatePersistentCachesIncludingPublicEvents:(BOOL)events
{
  eventsCopy = events;
  [(CLSLocationCache *)self->_locationCache invalidateDiskCaches];
  [(CLSPOICache *)self->_poiCache invalidateDiskCaches];
  [(CLSROICache *)self->_roiCache invalidateDiskCaches];
  [(CLSAOICache *)self->_aoiCache invalidateDiskCaches];
  [(CLSNatureCache *)self->_natureCache invalidateDiskCaches];
  [(CLSServiceManager *)self->_serviceManager invalidatePermanentMemoryCaches];
  [(PGCurationManager *)self->_curationManager invalidateDiskCaches];
  if (!_os_feature_enabled_impl() || eventsCopy)
  {
    publicEventManager = self->_publicEventManager;

    [(CLSPublicEventManager *)publicEventManager invalidateDiskCaches];
  }
}

- (void)_invalidatePersistentCachesBeforeDateWithTimestamp:(double)timestamp
{
  [(CLSLocationCache *)self->_locationCache invalidateCacheItemsBeforeDateWithTimestamp:?];
  [(CLSPOICache *)self->_poiCache invalidateCacheItemsBeforeDateWithTimestamp:timestamp];
  [(CLSROICache *)self->_roiCache invalidateCacheItemsBeforeDateWithTimestamp:timestamp];
  [(CLSAOICache *)self->_aoiCache invalidateCacheItemsBeforeDateWithTimestamp:timestamp];
  [(CLSNatureCache *)self->_natureCache invalidateCacheItemsBeforeDateWithTimestamp:timestamp];
  [(CLSServiceManager *)self->_serviceManager invalidateMePerson];
  [(CLSServiceManager *)self->_serviceManager invalidatePermanentMemoryCaches];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    publicEventManager = self->_publicEventManager;

    [(CLSPublicEventManager *)publicEventManager invalidateCacheItemsBeforeDateWithTimestamp:timestamp];
  }
}

- (void)_invalidatePersistentCachesForGeoServiceProviderChange
{
  currentRevGeoProvider = [MEMORY[0x277D3AD60] currentRevGeoProvider];
  [(CLSLocationCache *)self->_locationCache invalidateCacheForGeoServiceProviderChangeToProvider:currentRevGeoProvider];
  [(CLSPOICache *)self->_poiCache invalidateCacheForGeoServiceProviderChangeToProvider:currentRevGeoProvider];
  [(CLSROICache *)self->_roiCache invalidateCacheForGeoServiceProviderChangeToProvider:currentRevGeoProvider];
  [(CLSAOICache *)self->_aoiCache invalidateCacheForGeoServiceProviderChangeToProvider:currentRevGeoProvider];
  [(CLSNatureCache *)self->_natureCache invalidateCacheForGeoServiceProviderChangeToProvider:currentRevGeoProvider];
  [(CLSServiceManager *)self->_serviceManager invalidatePermanentMemoryCaches];
  [(PGCurationManager *)self->_curationManager invalidateDiskCaches];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(CLSPublicEventManager *)self->_publicEventManager invalidateDiskCaches];
  }
}

- (void)_invalidateTransientCaches
{
  [(CLSLocationCache *)self->_locationCache invalidateMemoryCaches];
  [(CLSPOICache *)self->_poiCache invalidateMemoryCaches];
  [(CLSROICache *)self->_roiCache invalidateMemoryCaches];
  [(CLSAOICache *)self->_aoiCache invalidateMemoryCaches];
  [(CLSNatureCache *)self->_natureCache invalidateMemoryCaches];
  [(CLSServiceManager *)self->_serviceManager invalidateMomentaryMemoryCaches];
  [(PGCurationManager *)self->_curationManager invalidateMemoryCaches];
  publicEventManager = self->_publicEventManager;

  [(CLSPublicEventManager *)publicEventManager invalidateMemoryCaches];
}

- (void)performAsynchronousNotification:(id)notification
{
  notificationCopy = notification;
  v5 = notificationCopy;
  if (notificationCopy)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PGManager_performAsynchronousNotification___block_invoke;
    block[3] = &unk_278883848;
    v8 = notificationCopy;
    dispatch_async(notificationQueue, block);
  }
}

- (void)legacyPerformAsynchronousBarrierGraphWriteUsingBlock:(id)block
{
  blockCopy = block;
  atomic_fetch_add(&self->_numberOfCurrentGraphAccesses, 1uLL);
  graphAccessQueue = self->_graphAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__PGManager_legacyPerformAsynchronousBarrierGraphWriteUsingBlock___block_invoke;
  v7[3] = &unk_2788825D0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_barrier_async(graphAccessQueue, v7);
}

void __66__PGManager_legacyPerformAsynchronousBarrierGraphWriteUsingBlock___block_invoke(uint64_t a1)
{
  v2 = os_signpost_id_generate(*(*(a1 + 32) + 184));
  v3 = *(*(a1 + 32) + 184);
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Perform Graph Transaction Barrier", "", buf, 2u);
  }

  (*(*(a1 + 40) + 16))();
  atomic_fetch_add((*(a1 + 32) + 64), 0xFFFFFFFFFFFFFFFFLL);
  v5 = *(*(a1 + 32) + 184);
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_END, v2, "Perform Graph Transaction Barrier", "", v7, 2u);
  }
}

- (void)performAsynchronousGraphBarrierUsingBlock:(id)block
{
  blockCopy = block;
  atomic_fetch_add(&self->_numberOfCurrentGraphAccesses, 1uLL);
  graphAccessQueue = self->_graphAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PGManager_performAsynchronousGraphBarrierUsingBlock___block_invoke;
  v7[3] = &unk_2788825D0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_barrier_async(graphAccessQueue, v7);
}

void __55__PGManager_performAsynchronousGraphBarrierUsingBlock___block_invoke(uint64_t a1)
{
  v2 = os_signpost_id_generate(*(*(a1 + 32) + 184));
  v3 = *(*(a1 + 32) + 184);
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Perform Graph Barrier", "", buf, 2u);
  }

  (*(*(a1 + 40) + 16))();
  [MEMORY[0x277D22BB0] drainBitsetPool];
  atomic_fetch_add((*(a1 + 32) + 64), 0xFFFFFFFFFFFFFFFFLL);
  v5 = *(*(a1 + 32) + 184);
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_END, v2, "Perform Graph Barrier", "", v7, 2u);
  }
}

- (void)performSynchronousConcurrentGraphReadUsingBlock:(id)block
{
  blockCopy = block;
  atomic_fetch_add(&self->_numberOfCurrentGraphAccesses, 1uLL);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __61__PGManager_performSynchronousConcurrentGraphReadUsingBlock___block_invoke;
  v10 = &unk_2788825D0;
  selfCopy = self;
  v5 = blockCopy;
  v12 = v5;
  v6 = _Block_copy(&v7);
  if ([(PGGraph *)self->_graph isOnGraphQueue:v7])
  {
    v6[2](v6);
  }

  else
  {
    dispatch_sync(self->_graphAccessQueue, v6);
  }
}

void __61__PGManager_performSynchronousConcurrentGraphReadUsingBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  [v2 enableInTransactionCheck];
  [v2 enterBatch];
  v3 = [[PGGraphEnabler alloc] initWithGraph:v2];
  (*(*(a1 + 40) + 16))();
  [v2 leaveBatch];
  [MEMORY[0x277D22BB0] drainBitsetPool];
  atomic_fetch_add((*(a1 + 32) + 64), 0xFFFFFFFFFFFFFFFFLL);
}

- (void)performAsynchronousGraphWriteUsingBlock:(id)block
{
  blockCopy = block;
  atomic_fetch_add(&self->_numberOfCurrentGraphAccesses, 1uLL);
  graphAccessQueue = self->_graphAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__PGManager_performAsynchronousGraphWriteUsingBlock___block_invoke;
  v7[3] = &unk_2788825D0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(graphAccessQueue, v7);
}

void __53__PGManager_performAsynchronousGraphWriteUsingBlock___block_invoke(uint64_t a1)
{
  v2 = os_signpost_id_generate(*(*(a1 + 32) + 184));
  v3 = *(*(a1 + 32) + 184);
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Perform Graph Transaction", "", buf, 2u);
  }

  (*(*(a1 + 40) + 16))();
  [MEMORY[0x277D22BB0] drainBitsetPool];
  atomic_fetch_add((*(a1 + 32) + 64), 0xFFFFFFFFFFFFFFFFLL);
  v5 = *(*(a1 + 32) + 184);
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_END, v2, "Perform Graph Transaction", "", v7, 2u);
  }
}

- (id)instantiateMutableGraphWithError:(id *)error
{
  v5 = self->_mutableGraph;
  if (!v5)
  {
    graphPersistentStoreURL = [(PGManager *)self graphPersistentStoreURL];
    v5 = [(PGGraph *)[PGMutableGraph alloc] initWithURL:graphPersistentStoreURL persistenceOptions:32 error:error];
  }

  return v5;
}

- (double)timeIntervalSinceLastGraphFullRebuild
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0x7FEFFFFFFFFFFFFFLL;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__PGManager_timeIntervalSinceLastGraphFullRebuild__block_invoke;
  v4[3] = &unk_27888A5C0;
  v4[4] = &v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __50__PGManager_timeIntervalSinceLastGraphFullRebuild__block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 graph];
  v3 = [v7 infoNode];
  v4 = [v3 creationDate];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAA8] now];
    [v5 timeIntervalSinceDate:v4];
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }
}

- (void)setGraphInfoDateOfLastIncrementalUpdateInvocationWithDate:(id)date completionBlock:(id)block
{
  dateCopy = date;
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__PGManager_setGraphInfoDateOfLastIncrementalUpdateInvocationWithDate_completionBlock___block_invoke;
  v10[3] = &unk_2788825F8;
  v10[4] = self;
  v11 = dateCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = dateCopy;
  [(PGManager *)self performAsynchronousGraphWriteUsingBlock:v10];
}

void __87__PGManager_setGraphInfoDateOfLastIncrementalUpdateInvocationWithDate_completionBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v5 = 0;
  v3 = [v2 instantiateMutableGraphWithError:&v5];
  v4 = v5;
  if (v3)
  {
    [v3 enableInTransactionCheck];
    [v3 enterBatch];
    [PGGraphBuilder setLastIncrementalUpdateInvocationDate:a1[5] inGraph:v3];
    [v3 leaveBatch];
  }

  (*(a1[6] + 16))();
}

- (void)setMutableGraph:(id)graph
{
  graphCopy = graph;
  [(PGManager *)self _unloadGraph];
  objc_storeStrong(&self->_mutableGraph, graph);
  graph = self->_graph;
  self->_graph = graphCopy;
  v7 = graphCopy;

  [(PGGraph *)self->_graph setGraphQueue:self->_graphAccessQueue];
}

- (void)setGraph:(id)graph
{
  graphCopy = graph;
  [(PGManager *)self _unloadGraph];
  graph = self->_graph;
  self->_graph = graphCopy;
  v6 = graphCopy;

  [(PGGraph *)self->_graph setGraphQueue:self->_graphAccessQueue];
}

- (CPAnalytics)analytics
{
  analytics = self->_analytics;
  if (!analytics)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "PGManager: analytics instance is nil.", v6, 2u);
      analytics = self->_analytics;
    }

    else
    {
      analytics = 0;
    }
  }

  return analytics;
}

- (id)processSubdirectoryName
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier length])
  {
    processName = bundleIdentifier;
  }

  else
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
  }

  return processName;
}

- (id)graphPersistenceParentDirectoryCandidateURLs
{
  array = [MEMORY[0x277CBEB18] array];
  photoLibrary = [(PGManager *)self photoLibrary];
  pg_urlForGraphApplicationData = [photoLibrary pg_urlForGraphApplicationData];

  if (pg_urlForGraphApplicationData)
  {
    [array addObject:pg_urlForGraphApplicationData];
  }

  return array;
}

- (NSURL)graphPersistenceParentDirectoryURL
{
  v32 = *MEMORY[0x277D85DE8];
  cachedGraphPersistenceParentDirectoryURL = self->_cachedGraphPersistenceParentDirectoryURL;
  if (cachedGraphPersistenceParentDirectoryURL)
  {
    v3 = cachedGraphPersistenceParentDirectoryURL;
    goto LABEL_27;
  }

  location = &self->_cachedGraphPersistenceParentDirectoryURL;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  graphPersistenceParentDirectoryCandidateURLs = [(PGManager *)self graphPersistenceParentDirectoryCandidateURLs];
  v7 = [graphPersistenceParentDirectoryCandidateURLs countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v26;
    *&v8 = 138412290;
    v22 = v8;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(graphPersistenceParentDirectoryCandidateURLs);
      }

      v13 = *(*(&v25 + 1) + 8 * v12);
      path = [v13 path];
      if (([defaultManager fileExistsAtPath:path] & 1) == 0)
      {
        v24 = v10;
        v15 = [defaultManager createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v24];
        v16 = v24;

        if ((v15 & 1) == 0)
        {
          v17 = +[PGLogging sharedLogging];
          loggingConnection = [v17 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v30 = v16;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unable to create graph cache directory: %@", buf, 0xCu);
          }

          v10 = v16;
          goto LABEL_16;
        }

        v10 = v16;
      }

      if ([defaultManager isWritableFileAtPath:path])
      {
        v3 = v13;

        if (v3)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

LABEL_16:

      if (v9 == ++v12)
      {
        v9 = [graphPersistenceParentDirectoryCandidateURLs countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }
  }

  v10 = 0;
LABEL_22:

LABEL_23:
  v19 = +[PGLogging sharedLogging];
  loggingConnection2 = [v19 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Unable to find writable graph cache directory", buf, 2u);
  }

  v3 = 0;
LABEL_26:
  objc_storeStrong(location, v3);

LABEL_27:

  return v3;
}

- (id)graphPersistentStoreURL
{
  cachedGraphPersistentStoreURL = self->_cachedGraphPersistentStoreURL;
  if (cachedGraphPersistentStoreURL)
  {
    v3 = cachedGraphPersistentStoreURL;
  }

  else
  {
    graphPersistenceParentDirectoryURL = [(PGManager *)self graphPersistenceParentDirectoryURL];
    if (graphPersistenceParentDirectoryURL)
    {
      graphName = self->_graphName;
      if (!graphName)
      {
        graphName = @"photosgraph";
      }

      loggingConnection2 = graphName;
      v8 = [PGGraph graphURLForName:loggingConnection2 parentDirectoryURL:graphPersistenceParentDirectoryURL];
      if (v8)
      {
        [(PGManager *)self setGraphPersistentStoreURL:v8];
        v3 = self->_cachedGraphPersistentStoreURL;
      }

      else
      {
        v10 = +[PGLogging sharedLogging];
        loggingConnection = [v10 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *v13 = 0;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unable to construct writable graph persistence store URL", v13, 2u);
        }

        v3 = 0;
      }
    }

    else
    {
      v9 = +[PGLogging sharedLogging];
      loggingConnection2 = [v9 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Unable to construct writable graph persistence store URL", buf, 2u);
      }

      v3 = 0;
    }
  }

  return v3;
}

- (void)notifyCoalescingBlocksGraphAnalysisFinished:(BOOL)finished error:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = selfCopy->_coalescingGraphIsReady;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)selfCopy->_coalescingGraphIsReady removeAllObjects];
  objc_sync_exit(selfCopy);
}

- (void)registerCoalescingBlockWhenGraphAnalysisFinishes:(id)finishes
{
  aBlock = finishes;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (aBlock)
  {
    if ([(PGManager *)selfCopy libraryAnalysisState])
    {
      coalescingGraphIsReady = selfCopy->_coalescingGraphIsReady;
      v6 = _Block_copy(aBlock);
      [(NSMutableArray *)coalescingGraphIsReady addObject:v6];
    }

    else
    {
      (*(aBlock + 2))(aBlock, [(PGManager *)selfCopy isReady], 0);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)commonInitWithPhotoLibrary:(id)library progressBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  objc_storeStrong(&self->_photoLibrary, library);
  v9 = os_log_create("com.apple.PhotosGraph", "core");
  loggingConnection = self->_loggingConnection;
  self->_loggingConnection = v9;

  v11 = os_log_create("com.apple.PhotosGraph", "memory");
  memoriesLoggingConnection = self->_memoriesLoggingConnection;
  self->_memoriesLoggingConnection = v11;

  v13 = os_log_create("com.apple.PhotosGraph", "related");
  relatedLoggingConnection = self->_relatedLoggingConnection;
  self->_relatedLoggingConnection = v13;

  v15 = os_log_create("com.apple.PhotosGraph", "ingest");
  ingestLoggingConnection = self->_ingestLoggingConnection;
  self->_ingestLoggingConnection = v15;

  v17 = os_log_create("com.apple.PhotosGraph", "graph");
  graphLoggingConnection = self->_graphLoggingConnection;
  self->_graphLoggingConnection = v17;

  v19 = os_log_create("com.apple.PhotosGraph", "enrichment");
  enrichmentLoggingConnection = self->_enrichmentLoggingConnection;
  self->_enrichmentLoggingConnection = v19;

  v21 = os_log_create("com.apple.PhotosGraph", "suggestions");
  suggestionsLoggingConnection = self->_suggestionsLoggingConnection;
  self->_suggestionsLoggingConnection = v21;

  v23 = os_log_create("com.apple.PhotosGraph", "guess");
  guessWhoLoggingConnection = self->_guessWhoLoggingConnection;
  self->_guessWhoLoggingConnection = v23;

  v25 = os_log_create("com.apple.PhotosGraph", "metrics");
  metricsLoggingConnection = self->_metricsLoggingConnection;
  self->_metricsLoggingConnection = v25;

  v27 = os_log_create("com.apple.PhotosGraph", "upNext");
  upNextLoggingConnection = self->_upNextLoggingConnection;
  self->_upNextLoggingConnection = v27;

  v29 = os_log_create("com.apple.PhotosGraph", "externalAssetRelevance");
  externalRelevanceLoggingConnection = self->_externalRelevanceLoggingConnection;
  self->_externalRelevanceLoggingConnection = v29;

  v31 = os_log_create("com.apple.PhotosGraph", "graphConsistencyCheck");
  graphConsistencyCheckLoggingConnection = self->_graphConsistencyCheckLoggingConnection;
  self->_graphConsistencyCheckLoggingConnection = v31;

  v33 = [objc_opt_class() graphServicesURLWithPhotoLibrary:libraryCopy];
  v34 = [[PGCurationManager alloc] initWithPhotoLibrary:libraryCopy cacheURL:v33];
  curationManager = self->_curationManager;
  self->_curationManager = v34;

  v36 = objc_alloc(MEMORY[0x277D27718]);
  v37 = [MEMORY[0x277D27718] urlWithParentURL:v33];
  v38 = [v36 initWithURL:v37];
  locationCache = self->_locationCache;
  self->_locationCache = v38;

  v40 = [objc_alloc(MEMORY[0x277D277B0]) initWithLocationCache:self->_locationCache];
  serviceManager = self->_serviceManager;
  self->_serviceManager = v40;

  v42 = objc_alloc(MEMORY[0x277D27660]);
  v43 = [MEMORY[0x277D27660] urlWithParentURL:v33];
  v44 = [v42 initWithURL:v43];
  aoiCache = self->_aoiCache;
  self->_aoiCache = v44;

  v46 = objc_alloc(MEMORY[0x277D27750]);
  v47 = [MEMORY[0x277D27750] urlWithParentURL:v33];
  v48 = [v46 initWithURL:v47];
  poiCache = self->_poiCache;
  self->_poiCache = v48;

  v50 = objc_alloc(MEMORY[0x277D27790]);
  v51 = [MEMORY[0x277D27790] urlWithParentURL:v33];
  v52 = [v50 initWithURL:v51];
  roiCache = self->_roiCache;
  self->_roiCache = v52;

  v54 = objc_alloc(MEMORY[0x277D27740]);
  v55 = [MEMORY[0x277D27740] urlWithParentURL:v33];
  v56 = [v54 initWithURL:v55];
  natureCache = self->_natureCache;
  self->_natureCache = v56;

  v58 = objc_alloc(MEMORY[0x277D27788]);
  analytics = [(PGManager *)self analytics];
  v60 = [v58 initWithURL:v33 analytics:analytics];
  publicEventManager = self->_publicEventManager;
  self->_publicEventManager = v60;

  v62 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v63 = dispatch_queue_attr_make_initially_inactive(v62);
  v64 = dispatch_queue_create("com.apple.PhotosGraph.graphAccessQueue", v63);
  graphAccessQueue = self->_graphAccessQueue;
  self->_graphAccessQueue = v64;

  dispatch_set_qos_class_floor(self->_graphAccessQueue, QOS_CLASS_UTILITY, 0);
  dispatch_activate(self->_graphAccessQueue);
  v66 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v67 = dispatch_queue_attr_make_initially_inactive(v66);
  v68 = dispatch_queue_create("com.apple.PhotosGraph.graphUpdateQueue", v67);
  graphUpdateQueue = self->_graphUpdateQueue;
  self->_graphUpdateQueue = v68;

  dispatch_set_qos_class_floor(self->_graphUpdateQueue, QOS_CLASS_UTILITY, 0);
  dispatch_activate(self->_graphUpdateQueue);
  v70 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v71 = dispatch_queue_create("com.apple.PhotosGraph.notificationQueue", v70);
  notificationQueue = self->_notificationQueue;
  self->_notificationQueue = v71;

  atomic_store(0, &self->_numberOfCurrentGraphAccesses);
  if (!self->_graph && self->_photoLibrary)
  {
    v73 = self->_graphAccessQueue;
    v76 = MEMORY[0x277D85DD0];
    v77 = 3221225472;
    v78 = __54__PGManager_commonInitWithPhotoLibrary_progressBlock___block_invoke;
    v79 = &unk_2788825D0;
    selfCopy = self;
    v81 = blockCopy;
    dispatch_sync(v73, &v76);
  }

  array = [MEMORY[0x277CBEB18] array];
  coalescingGraphIsReady = self->_coalescingGraphIsReady;
  self->_coalescingGraphIsReady = array;
}

- (NSDate)dateOfLastIncrementalUpdateInvocation
{
  infoNode = [(PGGraph *)self->_graph infoNode];
  dateOfLastIncrementalUpdateInvocation = [infoNode dateOfLastIncrementalUpdateInvocation];

  return dateOfLastIncrementalUpdateInvocation;
}

- (unint64_t)numberOfEntities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__PGManager_numberOfEntities__block_invoke;
  v4[3] = &unk_27888A5C0;
  v4[4] = &v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __29__PGManager_numberOfEntities__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  *(*(*(a1 + 32) + 8) + 24) += [v3 nodesCount];
  *(*(*(a1 + 32) + 8) + 24) += [v3 edgesCount];
}

- (void)unloadGraph
{
  graphAccessQueue = self->_graphAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__PGManager_unloadGraph__block_invoke;
  block[3] = &unk_27888A660;
  block[4] = self;
  dispatch_barrier_sync(graphAccessQueue, block);
}

- (void)_unloadGraph
{
  if (self->_graph)
  {
    [(MAGraph *)self->_mutableGraph savePersistentStore];
    [(MAGraph *)self->_graph closePersistentStore];
    graph = self->_graph;
    self->_graph = 0;

    mutableGraph = self->_mutableGraph;
    self->_mutableGraph = 0;
  }
}

- (void)loadGraphWithProgressBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = self->_graphLoggingConnection;
  blockCopy = block;
  v7 = os_signpost_id_generate(v5);
  v8 = v5;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "GraphLoading", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v10 = mach_absolute_time();
  v11 = _Block_copy(blockCopy);

  v12 = 0.0;
  v13 = &unk_22F784000;
  if (!v11 || (v14 = CFAbsoluteTimeGetCurrent(), v14 < 0.01))
  {
LABEL_10:
    graphPersistentStoreURL = [(PGManager *)self graphPersistentStoreURL];
    if (!graphPersistentStoreURL || ![PGGraph graphExistsAtURL:graphPersistentStoreURL])
    {
LABEL_37:
      v25 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v28 = v9;
      v29 = v28;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v7, "GraphLoading", " enableTelemetry=YES ", buf, 2u);
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v38 = "GraphLoading";
        *&v38[8] = 2048;
        *&v38[10] = ((((v25 - v10) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v30 = v29;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        humanReadableMemoryFootprint = [MEMORY[0x277D22C58] humanReadableMemoryFootprint];
        *buf = 136315394;
        *v38 = "GraphLoading";
        *&v38[8] = 2112;
        *&v38[10] = humanReadableMemoryFootprint;
        _os_log_debug_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_DEBUG, "[Memory Footprint] %s : %@", buf, 0x16u);
      }

      if (v11)
      {
        if (CFAbsoluteTimeGetCurrent() - v12 >= v13[76])
        {
          v35 = 0;
          v11[2](v11, &v35, 1.0);
          if (v35)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v38 = 474;
              *&v38[4] = 2080;
              *&v38[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_49;
    }

    v32 = v10;
    v34 = 0;
    v16 = [objc_alloc(objc_msgSend(objc_opt_class() "graphClass"))];
    v17 = v34;
    if (!v16 && (loggingConnection = self->_loggingConnection, os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR)))
    {
      *buf = 138412290;
      *v38 = v17;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error loading existing graph due to internal error, graph database is corrupt or missing, rebuild required and will occur next time we attempt to open it: %@", buf, 0xCu);
      if (v11)
      {
LABEL_15:
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v12 >= 0.01)
        {
          v35 = 0;
          v11[2](v11, &v35, 0.5);
          if (v35)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v38 = 434;
              *&v38[4] = 2080;
              *&v38[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_49:
            goto LABEL_50;
          }

          v12 = Current;
        }
      }
    }

    else if (v11)
    {
      goto LABEL_15;
    }

    if (v16)
    {
      v33 = v17;
      v20 = [(PGManager *)self graphIsUsable:v16 error:&v33];
      v21 = v33;

      if (v20)
      {
        v13 = &unk_22F784000;
        v10 = v32;
      }

      else
      {
        [v16 closePersistentStore];

        v10 = v32;
        if ([v21 code] == 34)
        {
          [(PGManager *)self _invalidatePersistentCachesForGeoServiceProviderChange];
          v16 = 0;
          v13 = &unk_22F784000;
        }

        else
        {
          [(PGManager *)self _invalidateTransientCaches];
          v22 = _os_feature_enabled_impl();
          v13 = &unk_22F784000;
          if (v22)
          {
            v23 = [v21 code] == 32 || objc_msgSend(v21, "code") == 33;
            selfCopy2 = self;
          }

          else
          {
            selfCopy2 = self;
            v23 = 1;
          }

          [(PGManager *)selfCopy2 _invalidatePersistentCachesIncludingPublicEvents:v23];
          v16 = 0;
        }
      }

      [(PGManager *)self setGraph:v16];
    }

    else
    {
      v21 = v17;
      v10 = v32;
    }

    goto LABEL_37;
  }

  v35 = 0;
  v11[2](v11, &v35, 0.0);
  if (v35 != 1)
  {
    v12 = v14;
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v38 = 418;
    *&v38[4] = 2080;
    *&v38[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_50:
}

- (BOOL)graphIsUsable:(id)usable error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  usableCopy = usable;
  graphLoggingConnection = [(PGManager *)self graphLoggingConnection];
  version = [usableCopy version];
  if (version == 701)
  {
    infoNode = [usableCopy infoNode];
    if ([infoNode curationAlgorithmsVersion] == 12)
    {
      if ([infoNode meaningAlgorithmsVersion] == 5)
      {
        v10 = objc_alloc_init(PGEventLabelingConfiguration);
        modelVersion = [(PGEventLabelingConfiguration *)v10 modelVersion];
        if ([infoNode eventLabelingV2ModelVersion] == modelVersion)
        {
          v12 = objc_alloc_init(MEMORY[0x277D3C800]);
          configurationVersion = [v12 configurationVersion];

          if ([infoNode personalTraitsEntityNamesVersion] == configurationVersion)
          {
            localeIdentifier = [infoNode localeIdentifier];
            currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
            localeIdentifier2 = [currentLocale localeIdentifier];
            v17 = [localeIdentifier isEqualToString:localeIdentifier2];

            if (v17)
            {
              v18 = MEMORY[0x277CBEB98];
              preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
              v20 = [v18 setWithArray:preferredLanguages];

              v21 = MEMORY[0x277CBEB98];
              languageIdentifiers = [infoNode languageIdentifiers];
              v23 = [v21 setWithArray:languageIdentifiers];

              if ([v23 isEqualToSet:v20])
              {
                if (![PGManager geoServiceProviderDidChangeForGraph:usableCopy])
                {
                  canAccessContactsStore = [MEMORY[0x277D277B0] canAccessContactsStore];
                  v37 = canAccessContactsStore ^ [infoNode canAccessContactsStore];
                  if (v37 == 1)
                  {
                    if (os_log_type_enabled(graphLoggingConnection, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(v39) = 0;
                      _os_log_impl(&dword_22F0FC000, graphLoggingConnection, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging contacts store access permission", &v39, 2u);
                    }

                    if (error)
                    {
                      *error = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:35];
                    }
                  }

                  v27 = v37 ^ 1;
                  goto LABEL_54;
                }

                if (os_log_type_enabled(graphLoggingConnection, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v39) = 0;
                  _os_log_impl(&dword_22F0FC000, graphLoggingConnection, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging geo service provider id", &v39, 2u);
                }

                if (error)
                {
                  v24 = MEMORY[0x277CCA9B8];
                  v25 = 34;
LABEL_46:
                  [v24 pl_analysisErrorWithCode:v25];
                  *error = v27 = 0;
LABEL_54:

                  goto LABEL_55;
                }
              }

              else
              {
                if (os_log_type_enabled(graphLoggingConnection, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v39) = 0;
                  _os_log_impl(&dword_22F0FC000, graphLoggingConnection, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging keyboard languages", &v39, 2u);
                }

                if (error)
                {
                  v24 = MEMORY[0x277CCA9B8];
                  v25 = 33;
                  goto LABEL_46;
                }
              }

              v27 = 0;
              goto LABEL_54;
            }

            if (os_log_type_enabled(graphLoggingConnection, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v39) = 0;
              _os_log_impl(&dword_22F0FC000, graphLoggingConnection, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging locale", &v39, 2u);
            }

            if (error)
            {
              v33 = MEMORY[0x277CCA9B8];
              v34 = 32;
              goto LABEL_40;
            }

LABEL_41:
            v27 = 0;
            goto LABEL_55;
          }

          v35 = graphLoggingConnection;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v39 = 134218240;
            personalTraitsEntityNamesVersion = [infoNode personalTraitsEntityNamesVersion];
            v41 = 2048;
            v42 = configurationVersion;
            _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging graph personalTraitsEntityNames version (%ld vs expected %ld)", &v39, 0x16u);
          }

          if (!error)
          {
            goto LABEL_41;
          }

          v33 = MEMORY[0x277CCA9B8];
          v34 = 36;
        }

        else
        {
          v32 = graphLoggingConnection;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v39 = 134218240;
            personalTraitsEntityNamesVersion = [infoNode eventLabelingV2ModelVersion];
            v41 = 2048;
            v42 = modelVersion;
            _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging graph eventLabelingV2 model version (%ld vs expected %ld)", &v39, 0x16u);
          }

          if (!error)
          {
            goto LABEL_41;
          }

          v33 = MEMORY[0x277CCA9B8];
          v34 = 31;
        }

LABEL_40:
        [v33 pl_analysisErrorWithCode:v34];
        *error = v27 = 0;
LABEL_55:

        goto LABEL_56;
      }

      v31 = graphLoggingConnection;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 134218240;
        personalTraitsEntityNamesVersion = [infoNode meaningAlgorithmsVersion];
        v41 = 1024;
        LODWORD(v42) = 5;
        _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging graph meaning inference algorithm version (%lu vs expected %d)", &v39, 0x12u);
      }

      if (error)
      {
        v29 = MEMORY[0x277CCA9B8];
        v30 = 30;
        goto LABEL_26;
      }
    }

    else
    {
      v28 = graphLoggingConnection;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 134218240;
        personalTraitsEntityNamesVersion = [infoNode curationAlgorithmsVersion];
        v41 = 1024;
        LODWORD(v42) = 12;
        _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging curation algorithms version (%lu vs expected %d)", &v39, 0x12u);
      }

      if (error)
      {
        v29 = MEMORY[0x277CCA9B8];
        v30 = 29;
LABEL_26:
        [v29 pl_analysisErrorWithCode:v30];
        *error = v27 = 0;
LABEL_56:

        goto LABEL_57;
      }
    }

    v27 = 0;
    goto LABEL_56;
  }

  v26 = version;
  if (os_log_type_enabled(graphLoggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 134218240;
    personalTraitsEntityNamesVersion = v26;
    v41 = 1024;
    LODWORD(v42) = 701;
    _os_log_impl(&dword_22F0FC000, graphLoggingConnection, OS_LOG_TYPE_DEFAULT, "Graph cannot be used because of diverging graph versions (%lu vs expected %d)", &v39, 0x12u);
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:28];
    *error = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_57:

  return v27;
}

- (PGManager)initWithGraph:(id)graph photoLibrary:(id)library
{
  graphCopy = graph;
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = PGManager;
  v8 = [(PGManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PGManager *)v8 setMutableGraph:graphCopy];
    [(PGManager *)v9 commonInitWithPhotoLibrary:libraryCopy progressBlock:0];
  }

  return v9;
}

- (PGManager)initWithImmutableGraph:(id)graph photoLibrary:(id)library
{
  graphCopy = graph;
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = PGManager;
  v8 = [(PGManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PGManager *)v8 setGraph:graphCopy];
    [(PGManager *)v9 commonInitWithPhotoLibrary:libraryCopy progressBlock:0];
  }

  return v9;
}

- (id)initForTesting
{
  v5.receiver = self;
  v5.super_class = PGManager;
  v2 = [(PGManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PGManager *)v2 commonInitWithPhotoLibrary:0 progressBlock:0];
  }

  return v3;
}

- (PGManager)init
{
  [(PGManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PGManager)initWithGraph:(id)graph readonlyPhotoLibrary:(id)library
{
  result = [(PGManager *)self initWithGraph:graph photoLibrary:library];
  if (result)
  {
    result->_photoLibraryIsReadonly = 1;
  }

  return result;
}

- (PGManager)initWithReadonlyPhotoLibrary:(id)library
{
  result = [(PGManager *)self initWithPhotoLibrary:library progressBlock:&__block_literal_global_265];
  if (result)
  {
    result->_photoLibraryIsReadonly = 1;
  }

  return result;
}

- (PGManager)initWithGraphPersistentStoreURL:(id)l photoLibrary:(id)library analytics:(id)analytics progressBlock:(id)block
{
  lCopy = l;
  libraryCopy = library;
  analyticsCopy = analytics;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = PGManager;
  v14 = [(PGManager *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_analytics, analytics);
    [(PGManager *)v15 setGraphPersistentStoreURL:lCopy];
    [(PGManager *)v15 commonInitWithPhotoLibrary:libraryCopy progressBlock:blockCopy];
  }

  return v15;
}

- (PGManager)initWithPhotoLibrary:(id)library progressBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = PGManager;
  v8 = [(PGManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PGManager *)v8 commonInitWithPhotoLibrary:libraryCopy progressBlock:blockCopy];
  }

  return v9;
}

- (PGManager)initWithPhotoLibrary:(id)library analytics:(id)analytics progressBlock:(id)block
{
  analyticsCopy = analytics;
  v10 = [(PGManager *)self initWithPhotoLibrary:library progressBlock:block];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_analytics, analytics);
  }

  return v11;
}

+ (id)stringFromPGDuration:(unint64_t)duration
{
  if (duration > 0x17)
  {
    return @"invalid";
  }

  else
  {
    return off_278882700[duration];
  }
}

+ (BOOL)geoServiceProviderDidChangeForGraph:(id)graph
{
  infoNode = [graph infoNode];
  geoServiceProviderID = [infoNode geoServiceProviderID];

  currentRevGeoProvider = [MEMORY[0x277D3AD60] currentRevGeoProvider];
  v6 = [geoServiceProviderID isEqualToString:currentRevGeoProvider];

  return v6 ^ 1;
}

+ (id)graphServicesURLWithPhotoLibrary:(id)library
{
  v29 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  if (([processName isEqualToString:@"photoanalysisd"] & 1) != 0 || objc_msgSend(processName, "isEqualToString:", @"LifeCipher"))
  {
    v26 = 0;
    v6 = [libraryCopy urlForApplicationDataFolderIdentifier:1 error:&v26];
    v7 = v26;
    if (v6)
    {
      goto LABEL_22;
    }

    v8 = +[PGLogging sharedLogging];
    loggingConnection = [v8 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to access the graph service URL. Error: %@", buf, 0xCu);
    }
  }

  v10 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v25 = 0;
  v11 = [v10 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v25];
  v12 = v25;
  if (v11)
  {
    v6 = [v11 URLByAppendingPathComponent:processName];
    if (libraryCopy)
    {
      databaseUUID = [libraryCopy databaseUUID];
      v14 = databaseUUID;
      if (databaseUUID)
      {
        uUIDString = databaseUUID;
      }

      else
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];
      }

      v17 = [v6 URLByAppendingPathComponent:uUIDString];

      v6 = v17;
    }

    buf[0] = 0;
    path = [v6 path];
    v19 = [v10 fileExistsAtPath:path isDirectory:buf];

    if (v19)
    {
      v20 = v12;
      if (buf[0])
      {
        v20 = v12;
LABEL_19:
        v12 = v20;
        goto LABEL_20;
      }
    }

    else
    {
      v24 = v12;
      v21 = [v10 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v24];
      v20 = v24;

      if (v21)
      {
        goto LABEL_19;
      }
    }

    v6 = 0;
    goto LABEL_19;
  }

  v6 = 0;
LABEL_20:

  if (v6)
  {
    goto LABEL_23;
  }

  v22 = MEMORY[0x277CBEBC0];
  v7 = NSTemporaryDirectory();
  v6 = [v22 fileURLWithPath:v7 isDirectory:1];
LABEL_22:

LABEL_23:

  return v6;
}

+ (void)initialize
{
  if (initialize_onceToken_30066 != -1)
  {
    dispatch_once(&initialize_onceToken_30066, &__block_literal_global_30067);
  }
}

- (id)titleTupleForAlbum:(id)album format:(int64_t)format error:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  albumCopy = album;
  if (format)
  {
    photoLibrary = [(PGManager *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIncludeGuestAssets:1];
    v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v39[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v12];

    v13 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:albumCopy options:librarySpecificFetchOptions];
    if ([v13 count])
    {
      firstObject = [v13 firstObject];
      lastObject = [v13 lastObject];
      localCreationDate = [firstObject localCreationDate];
      v17 = localCreationDate;
      if (firstObject == lastObject)
      {
        localCreationDate2 = localCreationDate;
      }

      else
      {
        localCreationDate2 = [lastObject localCreationDate];
      }

      v37 = localCreationDate2;
      v22 = [PGTimeUtility dateIntervalWithStartDate:v17 endDate:localCreationDate2];
      v38 = v22;
      if (format != 2 && ([albumCopy localizedTitle], (v23 = objc_claimAutoreleasedReturnValue()) != 0) && (v24 = v23, objc_msgSend(albumCopy, "localizedTitle"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "length"), v25, v22 = v38, v24, v26))
      {
        if (format == 3)
        {
          v27 = 0;
        }

        else
        {
          localizedTitle = [albumCopy localizedTitle];
          v27 = [PGTitle titleWithString:localizedTitle category:4];
        }

        v30 = [PGTimeTitleUtility timeTitleWithDateInterval:v38 allowedFormats:7];
        v33 = [PGTitle titleWithString:v30 category:5];
      }

      else
      {
        v36 = firstObject;
        v28 = v17;
        v29 = lastObject;
        v30 = [PGTimeTitleUtility splitTimeTitleWithDateInterval:v22 allowedFormats:7];
        firstObject2 = [v30 firstObject];
        v27 = [PGTitle titleWithString:firstObject2 category:5];

        if ([v30 count] < 2)
        {
          v33 = 0;
        }

        else
        {
          v32 = [v30 objectAtIndexedSubscript:1];
          v33 = [PGTitle titleWithString:v32 category:5];
        }

        lastObject = v29;
        v17 = v28;
        firstObject = v36;
      }

      v19 = [[PGTitleTuple alloc] initWithWithTitle:v27 subtitle:v33];
    }

    else
    {
      if (!error)
      {
        v19 = 0;
        goto LABEL_21;
      }

      v20 = MEMORY[0x277CCACA8];
      localIdentifier = [albumCopy localIdentifier];
      firstObject = [v20 stringWithFormat:@"Cannot create title from asset collection %@ with no assets.", localIdentifier];

      [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:firstObject];
      *error = v19 = 0;
    }

LABEL_21:
    goto LABEL_22;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:@"Undefined format"];
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  return v19;
}

- (id)titleTupleForMoment:(id)moment format:(int64_t)format error:(id *)error
{
  momentCopy = moment;
  v9 = momentCopy;
  if (format)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__30784;
    v28 = __Block_byref_object_dispose__30785;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__30784;
    v22 = __Block_byref_object_dispose__30785;
    v23 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__PGManager_TitleSupport__titleTupleForMoment_format_error___block_invoke;
    v12[3] = &unk_278882A28;
    v13 = momentCopy;
    selfCopy = self;
    v16 = &v18;
    formatCopy = format;
    v15 = &v24;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v12];
    if (error)
    {
      *error = v19[5];
    }

    v10 = v25[5];

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:@"Undefined format"];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __60__PGManager_TitleSupport__titleTupleForMoment_format_error___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [v3 momentNodeForMoment:*(a1 + 32)];

  if (v4)
  {
    if (*(a1 + 64) == 2)
    {
      v5 = 1;
    }

    else
    {
      v15 = [*(a1 + 32) localizedTitle];
      if (v15)
      {
        v16 = [*(a1 + 32) localizedTitle];
        v5 = [v16 length] == 0;
      }

      else
      {
        v5 = 1;
      }
    }

    v17 = objc_alloc_init(PGTimeTitleOptions);
    v18 = [MEMORY[0x277CBEB98] setWithObject:v4];
    [(PGTimeTitleOptions *)v17 setMomentNodes:v18];

    if (v5)
    {
      v19 = [PGTimeTitleUtility splitTimeTitleWithOptions:v17];
      v20 = [v19 firstObject];
      v21 = [PGTitle titleWithString:v20 category:5];

      if ([v19 count] < 2)
      {
        v23 = 0;
      }

      else
      {
        v22 = [v19 objectAtIndexedSubscript:1];
        v23 = [PGTitle titleWithString:v22 category:5];
      }
    }

    else
    {
      if (*(a1 + 64) == 3)
      {
        v21 = 0;
      }

      else
      {
        v24 = [*(a1 + 32) localizedTitle];
        v21 = [PGTitle titleWithString:v24 category:4];
      }

      v19 = [PGTimeTitleUtility timeTitleWithOptions:v17];
      v23 = [PGTitle titleWithString:v19 category:5];
    }

    v25 = [[PGTitleTuple alloc] initWithWithTitle:v21 subtitle:v23];
    v26 = *(*(a1 + 48) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

  else
  {
    v6 = [*(a1 + 40) graphLoggingConnection];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) localIdentifier];
      *buf = 138412290;
      v30 = v7;
      _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "Cannot find node for moment %@. Generating without graph access.", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 64);
    v11 = *(*(a1 + 56) + 8);
    obj = *(v11 + 40);
    v12 = [v8 titleTupleForAlbum:v9 format:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (id)titleTupleForAssetCollection:(id)collection format:(int64_t)format error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  assetCollectionType = [collectionCopy assetCollectionType];
  if (assetCollectionType == 3)
  {
    v10 = [(PGManager *)self titleTupleForMoment:collectionCopy format:format error:error];
LABEL_5:
    v12 = v10;
    goto LABEL_11;
  }

  v11 = assetCollectionType;
  if ((assetCollectionType - 1) <= 1)
  {
    v10 = [(PGManager *)self titleTupleForAlbum:collectionCopy format:format error:error];
    goto LABEL_5;
  }

  v13 = MEMORY[0x277CCACA8];
  localIdentifier = [collectionCopy localIdentifier];
  v15 = [v13 stringWithFormat:@"Unsupported asset collection type %lu for asset collection %@", v11, localIdentifier];

  graphLoggingConnection = [(PGManager *)self graphLoggingConnection];
  if (os_log_type_enabled(graphLoggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v15;
    _os_log_impl(&dword_22F0FC000, graphLoggingConnection, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:v15];
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)titleTupleForMomentList:(id)list format:(int64_t)format error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v9 = listCopy;
  if (!format)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:@"Undefined format"];
      *error = v17 = 0;
      goto LABEL_53;
    }

    goto LABEL_14;
  }

  collectionListType = [listCopy collectionListType];
  collectionListSubtype = [v9 collectionListSubtype];
  if (collectionListType != 1)
  {
    v18 = MEMORY[0x277CCACA8];
    localIdentifier = [v9 localIdentifier];
    v15 = [v18 stringWithFormat:@"Unsupported collection list type %lu for collection list %@.", collectionListType, localIdentifier];

    graphLoggingConnection = [(PGManager *)self graphLoggingConnection];
    if (os_log_type_enabled(graphLoggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = v15;
      goto LABEL_10;
    }

LABEL_11:

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:v15];
    }

LABEL_14:
    v17 = 0;
    goto LABEL_53;
  }

  v12 = collectionListSubtype;
  if ((collectionListSubtype - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = MEMORY[0x277CCACA8];
    localIdentifier2 = [v9 localIdentifier];
    v15 = [v13 stringWithFormat:@"Unsupported collection list sub type %lu for collection list %@.", v12, localIdentifier2];

    graphLoggingConnection = [(PGManager *)self graphLoggingConnection];
    if (os_log_type_enabled(graphLoggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = v15;
LABEL_10:
      _os_log_impl(&dword_22F0FC000, graphLoggingConnection, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  photoLibrary = [(PGManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v65 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v23];

  v24 = [MEMORY[0x277CD97B8] fetchMomentsInMomentList:v9 options:librarySpecificFetchOptions];
  firstObject = [v24 firstObject];
  v64 = v24;
  lastObject = [v24 lastObject];
  v27 = lastObject;
  if (firstObject && lastObject)
  {
    cls_localStartDate = [firstObject cls_localStartDate];
    cls_localEndDate = [v27 cls_localEndDate];
    v60 = firstObject;
    v61 = librarySpecificFetchOptions;
    if (v12 == 2)
    {
      v30 = [MEMORY[0x277D27690] yearFromDate:cls_localStartDate];
      v31 = v64;
      if (v30 != [MEMORY[0x277D27690] yearFromDate:cls_localEndDate] && objc_msgSend(v64, "count") >= 3)
      {
        v58 = v27;
        v62 = cls_localEndDate;
        v32 = [MEMORY[0x277D27690] monthFromDate:cls_localStartDate];
        v33 = [MEMORY[0x277D27690] dayFromDate:cls_localStartDate];
        v34 = [v64 count] - 2;
        v35 = 1;
        v36 = v34;
        while (v32 == 12 && v33 == 31)
        {
          v37 = [v64 objectAtIndex:v35];
          cls_localEndDate2 = [v37 cls_localEndDate];

          v32 = [MEMORY[0x277D27690] monthFromDate:cls_localEndDate2];
          v33 = [MEMORY[0x277D27690] dayFromDate:cls_localEndDate2];
          ++v35;

          cls_localStartDate = cls_localEndDate2;
          if (!--v36)
          {
            goto LABEL_57;
          }
        }

        cls_localEndDate2 = cls_localStartDate;
LABEL_57:
        cls_localEndDate = v62;
        v54 = [MEMORY[0x277D27690] monthFromDate:v62];
        v55 = [MEMORY[0x277D27690] dayFromDate:v62];
        v31 = v64;
        while (v54 == 1 && v55 == 1)
        {
          v56 = [v64 objectAtIndex:v34];
          cls_localStartDate2 = [v56 cls_localStartDate];

          v54 = [MEMORY[0x277D27690] monthFromDate:cls_localStartDate2];
          v55 = [MEMORY[0x277D27690] dayFromDate:cls_localStartDate2];
          --v34;

          cls_localEndDate = cls_localStartDate2;
          if (!v34)
          {
            cls_localEndDate = cls_localStartDate2;
            break;
          }
        }

        cls_localStartDate = cls_localEndDate2;
        v12 = 2;
        v27 = v58;
      }
    }

    else
    {
      v31 = v24;
    }

    v63 = cls_localEndDate;
    v43 = [PGTimeUtility dateIntervalWithStartDate:cls_localStartDate endDate:cls_localEndDate];
    if (v12 == 2)
    {
      v44 = [PGTimeTitleUtility timeTitleWithDateInterval:v43 allowedFormats:4];
      v45 = [PGTitle titleWithString:v44 category:5];
      v46 = format == 3;
      if (format == 3)
      {
        v47 = 0;
      }

      else
      {
        v47 = v45;
      }

      if (v46)
      {
        v48 = v45;
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      localizedTitle = [v9 localizedTitle];
      v44 = localizedTitle;
      if (format != 2 && localizedTitle && [localizedTitle length])
      {
        if (format == 3)
        {
          v47 = 0;
        }

        else
        {
          v47 = [PGTitle titleWithString:v44 category:4];
        }

        v50 = [PGTimeTitleUtility timeTitleWithDateInterval:v43 allowedFormats:7];
        v48 = [PGTitle titleWithString:v50 category:5];
      }

      else
      {
        v59 = v27;
        v50 = [PGTimeTitleUtility splitTimeTitleWithDateInterval:v43 allowedFormats:7];
        firstObject2 = [v50 firstObject];
        v47 = [PGTitle titleWithString:firstObject2 category:5];

        if ([v50 count] < 2)
        {
          v48 = 0;
        }

        else
        {
          v52 = [v50 objectAtIndexedSubscript:1];
          v48 = [PGTitle titleWithString:v52 category:5];
        }

        v27 = v59;
      }
    }

    v17 = [[PGTitleTuple alloc] initWithWithTitle:v47 subtitle:v48];
    firstObject = v60;
    librarySpecificFetchOptions = v61;
  }

  else
  {
    v39 = lastObject;
    v40 = MEMORY[0x277CCACA8];
    localIdentifier3 = [v9 localIdentifier];
    cls_localStartDate = [v40 stringWithFormat:@"Missing moments in collection list %@.", localIdentifier3];

    graphLoggingConnection2 = [(PGManager *)self graphLoggingConnection];
    if (os_log_type_enabled(graphLoggingConnection2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = cls_localStartDate;
      _os_log_impl(&dword_22F0FC000, graphLoggingConnection2, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:cls_localStartDate];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }

    v31 = v64;
    v27 = v39;
  }

LABEL_53:

  return v17;
}

- (id)titleTupleForPersonLocalIdentifiers:(id)identifiers format:(int64_t)format error:(id *)error
{
  identifiersCopy = identifiers;
  v9 = identifiersCopy;
  if (!format)
  {
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = @"Undefined format";
      goto LABEL_11;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (!identifiersCopy || ![identifiersCopy count])
  {
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = @"No person identifiers given. Need at least one person identifier.";
LABEL_11:
      [v13 errorWithDomain:@"PGErrorDomain" code:-101 localizedDescription:v14];
      *error = v12 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__30784;
  v32 = __Block_byref_object_dispose__30785;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__30784;
  v26 = __Block_byref_object_dispose__30785;
  v27 = 0;
  serviceManager = [(PGManager *)self serviceManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__PGManager_TitleSupport__titleTupleForPersonLocalIdentifiers_format_error___block_invoke;
  v16[3] = &unk_278882A28;
  v17 = v9;
  v19 = &v22;
  v11 = serviceManager;
  v20 = &v28;
  formatCopy = format;
  v18 = v11;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v16];
  if (error)
  {
    *error = v23[5];
  }

  v12 = v29[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

LABEL_13:

  return v12;
}

void __76__PGManager_TitleSupport__titleTupleForPersonLocalIdentifiers_format_error___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v30 = v3;
  v5 = [v3 graph];
  v6 = [PGGraphPersonNodeCollection personNodesForArrayOfLocalIdentifiers:v4 inGraph:v5];

  if ([v6 isEmpty])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Information Mismatch. Cannot find people for person id's %@.", a1[4]];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-102 localizedDescription:v7];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = [v30 graph];
    v7 = [v11 momentNodesForPersonNodes:v6];

    if ([v7 isEmpty])
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Information Mismatch. Cannot find moments for people nodes with id's %@.", a1[4]];
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:-102 localizedDescription:v10];
      v13 = *(a1[6] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    else
    {
      v15 = 2 * ([a1[4] count] > 1);
      v16 = [PGPeopleMemoryTitleGenerator alloc];
      v17 = [v7 temporarySet];
      v18 = [v6 temporarySet];
      v19 = [PGTitleGenerationContext alloc];
      v20 = [v30 graph];
      v21 = [(PGTitleGenerationContext *)v19 initWithGraph:v20 serviceManager:a1[5]];
      v10 = [(PGPeopleMemoryTitleGenerator *)v16 initWithMomentNodes:v17 personNodes:v18 timeTitleOptions:0 type:v15 titleGenerationContext:v21];

      v22 = [(PGTitleGenerator *)v10 subtitle];
      v23 = v22;
      v24 = a1[8];
      if (v24 == 2)
      {
        v25 = 0;
        v14 = v22;
      }

      else
      {
        if (v24 == 3)
        {
          v14 = 0;
        }

        else
        {
          v14 = [(PGTitleGenerator *)v10 title];
        }

        v25 = v23;
      }

      v26 = v23;
      v27 = [[PGTitleTuple alloc] initWithWithTitle:v14 subtitle:v25];

      v28 = *(a1[7] + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;
    }
  }
}

- (id)searchSynonymsDictionariesWithProgressReporter:(id)reporter
{
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    v5 = MEMORY[0x277CBEC10];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__31820;
    v18 = __Block_byref_object_dispose__31821;
    v19 = 0;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __68__PGManager_Search__searchSynonymsDictionariesWithProgressReporter___block_invoke;
    v11 = &unk_27888A570;
    v6 = reporterCopy;
    v12 = v6;
    v13 = &v14;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:&v8];
    if ([v6 isCancelled] & 1) != 0 || (objc_msgSend(v6, "isCancelledWithProgress:", 1.0))
    {
      v5 = MEMORY[0x277CBEC10];
    }

    else
    {
      v5 = v15[5];
    }

    _Block_object_dispose(&v14, 8);
  }

  return v5;
}

void __68__PGManager_Search__searchSynonymsDictionariesWithProgressReporter___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([*(a1 + 32) isCancelledWithProgress:0.1] & 1) == 0)
  {
    v3 = [v7 graph];
    v4 = [PGGraphSynonymSupportHelper synonymsByIndexCategoryMaskForGraph:v3];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)searchableAssetUUIDsBySocialGroupWithEventUUIDs:(id)ds ofType:(unint64_t)type isFullAnalysis:(BOOL)analysis progressReporter:(id)reporter
{
  dsCopy = ds;
  reporterCopy = reporter;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__31820;
  v30 = __Block_byref_object_dispose__31821;
  v31 = 0;
  newSearchComputationCache = [(PGManager *)self newSearchComputationCache];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __108__PGManager_Search__searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_isFullAnalysis_progressReporter___block_invoke;
  v18[3] = &unk_278882EC8;
  v13 = newSearchComputationCache;
  v19 = v13;
  v23 = &v26;
  v14 = dsCopy;
  typeCopy = type;
  v20 = v14;
  selfCopy = self;
  analysisCopy = analysis;
  v15 = reporterCopy;
  v22 = v15;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v18];
  [v13 save];
  v16 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v16;
}

void __108__PGManager_Search__searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_isFullAnalysis_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PGSearchKeywordComputer alloc];
  v5 = [v3 graph];

  v6 = [(PGSearchKeywordComputer *)v4 initWithGraph:v5 searchComputationCache:*(a1 + 32)];
  v7 = *(a1 + 72);
  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) photoLibrary];
  v10 = *(a1 + 80);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __108__PGManager_Search__searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_isFullAnalysis_progressReporter___block_invoke_2;
  v14[3] = &unk_278882E50;
  v15 = *(a1 + 56);
  v11 = [(PGSearchKeywordComputer *)v6 searchableAssetUUIDsBySocialGroupWithEventUUIDs:v8 ofType:v7 inPhotoLibrary:v9 isFullAnalysis:v10 progressBlock:v14];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void *__108__PGManager_Search__searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_isFullAnalysis_progressReporter___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelledWithProgress:?];
  *a2 = result;
  return result;
}

- (id)assetSearchKeywordsByMomentUUIDWithEventUUIDs:(id)ds ofType:(unint64_t)type progressReporter:(id)reporter
{
  dsCopy = ds;
  reporterCopy = reporter;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__31820;
  v26 = __Block_byref_object_dispose__31821;
  v27 = 0;
  newSearchComputationCache = [(PGManager *)self newSearchComputationCache];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__PGManager_Search__assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_progressReporter___block_invoke;
  v16[3] = &unk_278882EA0;
  v11 = newSearchComputationCache;
  v17 = v11;
  v20 = &v22;
  v12 = dsCopy;
  v18 = v12;
  typeCopy = type;
  v13 = reporterCopy;
  v19 = v13;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v16];
  [v11 save];
  v14 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v14;
}

void __91__PGManager_Search__assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PGSearchKeywordComputer alloc];
  v5 = [v3 graph];

  v6 = [(PGSearchKeywordComputer *)v4 initWithGraph:v5 searchComputationCache:*(a1 + 32)];
  v7 = *(a1 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__PGManager_Search__assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_progressReporter___block_invoke_2;
  v12[3] = &unk_278882E50;
  v8 = *(a1 + 40);
  v13 = *(a1 + 48);
  v9 = [(PGSearchKeywordComputer *)v6 assetSearchKeywordsByMomentUUIDWithEventUUIDs:v8 ofType:v7 progressBlock:v12];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void *__91__PGManager_Search__assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_progressReporter___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelledWithProgress:?];
  *a2 = result;
  return result;
}

- (id)searchKeywordsByEventWithUUIDs:(id)ds ofType:(unint64_t)type progressReporter:(id)reporter
{
  dsCopy = ds;
  reporterCopy = reporter;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__31820;
  v30 = __Block_byref_object_dispose__31821;
  v31 = 0;
  newSearchComputationCache = [(PGManager *)self newSearchComputationCache];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __76__PGManager_Search__searchKeywordsByEventWithUUIDs_ofType_progressReporter___block_invoke;
  v19 = &unk_278882E78;
  v11 = newSearchComputationCache;
  v20 = v11;
  v24 = &v26;
  v12 = dsCopy;
  typeCopy = type;
  v21 = v12;
  selfCopy = self;
  v13 = reporterCopy;
  v23 = v13;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:&v16];
  [v11 save];
  v14 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v14;
}

void __76__PGManager_Search__searchKeywordsByEventWithUUIDs_ofType_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PGSearchKeywordComputer alloc];
  v5 = [v3 graph];

  v6 = [(PGSearchKeywordComputer *)v4 initWithGraph:v5 searchComputationCache:*(a1 + 32)];
  v7 = *(a1 + 72);
  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) photoLibrary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__PGManager_Search__searchKeywordsByEventWithUUIDs_ofType_progressReporter___block_invoke_2;
  v13[3] = &unk_278882E50;
  v14 = *(a1 + 56);
  v10 = [(PGSearchKeywordComputer *)v6 searchKeywordsByEventWithEventUUIDs:v8 ofType:v7 photoLibrary:v9 progressBlock:v13];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void *__76__PGManager_Search__searchKeywordsByEventWithUUIDs_ofType_progressReporter___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelledWithProgress:?];
  *a2 = result;
  return result;
}

- (id)searchMetadataWithOptions:(id)options progressReporter:(id)reporter
{
  optionsCopy = options;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    v8 = MEMORY[0x277CBEC10];
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__31820;
    v19 = __Block_byref_object_dispose__31821;
    v20 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__PGManager_Search__searchMetadataWithOptions_progressReporter___block_invoke;
    v11[3] = &unk_278888EB8;
    v9 = reporterCopy;
    v12 = v9;
    v14 = &v15;
    v13 = optionsCopy;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v11];
    if ([v9 isCancelled] & 1) != 0 || (objc_msgSend(v9, "isCancelledWithProgress:", 1.0))
    {
      v8 = MEMORY[0x277CBEC10];
    }

    else
    {
      v8 = v16[5];
    }

    _Block_object_dispose(&v15, 8);
  }

  return v8;
}

void __64__PGManager_Search__searchMetadataWithOptions_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (([*(a1 + 32) isCancelledWithProgress:0.1] & 1) == 0)
  {
    v3 = [PGSearchMetadataComputer alloc];
    v4 = [v9 graph];
    v5 = [(PGSearchMetadataComputer *)v3 initWithGraph:v4];

    v6 = [(PGSearchMetadataComputer *)v5 searchMetadataWithOptions:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)zeroKeywordsWithOptions:(id)options progressReporter:(id)reporter
{
  optionsCopy = options;
  reporterCopy = reporter;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__31820;
  v32 = __Block_byref_object_dispose__31821;
  v33 = 0;
  newSearchComputationCache = [(PGManager *)self newSearchComputationCache];
  photoLibrary = [(PGManager *)self photoLibrary];
  curationManager = [(PGManager *)self curationManager];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __62__PGManager_Search__zeroKeywordsWithOptions_progressReporter___block_invoke;
  v21 = &unk_27888A6D8;
  v11 = photoLibrary;
  v22 = v11;
  v12 = curationManager;
  v23 = v12;
  v13 = newSearchComputationCache;
  v24 = v13;
  v27 = &v28;
  v14 = optionsCopy;
  v25 = v14;
  v15 = reporterCopy;
  v26 = v15;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:&v18];
  [v13 save];
  v16 = v29[5];

  _Block_object_dispose(&v28, 8);

  return v16;
}

void __62__PGManager_Search__zeroKeywordsWithOptions_progressReporter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PGZeroKeywordComputer alloc] initWithPhotoLibrary:*(a1 + 32) curationManager:*(a1 + 40) searchComputationCache:*(a1 + 48)];
  v5 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:*(a1 + 32)];
  v6 = [v3 graph];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PGManager_Search__zeroKeywordsWithOptions_progressReporter___block_invoke_2;
  v11[3] = &unk_278882E50;
  v7 = *(a1 + 56);
  v12 = *(a1 + 64);
  v8 = [(PGZeroKeywordComputer *)v4 zeroKeywordsWithGraph:v6 curationContext:v5 options:v7 progressBlock:v11];
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void *__62__PGManager_Search__zeroKeywordsWithOptions_progressReporter___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelledWithProgress:?];
  *a2 = result;
  return result;
}

- (id)newSearchComputationCache
{
  v3 = [PGSearchComputationCache persistentStoreURLWithManager:self];
  v4 = [PGSearchComputationCache alloc];
  photoLibrary = [(PGManager *)self photoLibrary];
  v6 = [(PGSearchComputationCache *)v4 initWithPersistentStoreURL:v3 photoLibrary:photoLibrary];

  return v6;
}

- (NSArray)availableMetricEvents
{
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [[PGCuratedLibraryIntelligenceMetricEvent alloc] initWithGraphManager:self];
  v16[0] = v4;
  v5 = [[PGGraphStatisticsMetricEvent alloc] initWithGraphManager:self];
  v16[1] = v5;
  v6 = [[PGGuessWhoRelationshipMetricEvent alloc] initWithGraphManager:self];
  v16[2] = v6;
  v7 = [PGGraphSyndicatedAssetsMetricEvent alloc];
  workingContext = [(PGManager *)self workingContext];
  v9 = [(PGGraphSyndicatedAssetsMetricEvent *)v7 initWithWorkingContext:workingContext];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  v11 = [v3 arrayWithArray:v10];

  v12 = [PGGraphHolidayMetricEvent celebratedHolidayMetricEventsWithGraphManager:self];
  [v11 addObjectsFromArray:v12];
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  if (PGIsAppleInternal_isAppleInternal == 1 && [objc_opt_class() photosChallengeIsEnabled])
  {
    v13 = [PGPhotosChallengeMetricEvent allMetricEventsWithGraphManager:self];
    [v11 addObjectsFromArray:v13];
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v11];

  return v14;
}

- (void)updateGraphWithRecipe:(id)recipe keepExistingGraph:(BOOL)graph progressBlock:(id)block completionBlock:(id)completionBlock
{
  recipeCopy = recipe;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  [(PGManager *)self setLibraryAnalysisState:1];
  if (!graph)
  {
    [(PGManager *)self _unloadGraph];
  }

  [(PGManager *)self stampFullGraphRebuild];
  currentFullGraphRebuildStamp = [(PGManager *)self currentFullGraphRebuildStamp];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke;
  aBlock[3] = &unk_278883920;
  v22 = blockCopy;
  v23 = currentFullGraphRebuildStamp;
  aBlock[4] = self;
  v20 = recipeCopy;
  v21 = completionBlockCopy;
  v14 = blockCopy;
  v15 = recipeCopy;
  v16 = completionBlockCopy;
  v17 = _Block_copy(aBlock);
  graphUpdateQueue = [(PGManager *)self graphUpdateQueue];
  dispatch_async(graphUpdateQueue, v17);
}

void __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = atomic_load((a1 + 64));
  if ([v2 canProceedWithFullGraphRebuildStamp:v3])
  {
    v4 = [*(a1 + 32) graphPersistenceParentDirectoryURL];
    v5 = @"construction-photosgraph";
    v6 = [PGGraph graphURLForName:@"construction-photosgraph" parentDirectoryURL:v4];
    v7 = @"validation-photosgraph";
    v8 = [PGGraph graphURLForName:@"validation-photosgraph" parentDirectoryURL:v4];
    if ([objc_opt_class() graphConsistencyCheckIsEnabled])
    {
      [*(a1 + 32) copyGraphToURL:v8];
    }

    v9 = [*(a1 + 32) ingestLoggingConnection];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "[PGManager][updateGraphWithRecipe] Start performing library analysis", buf, 2u);
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v49 = 0;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_280;
    v46[3] = &unk_278883880;
    v12 = *(a1 + 56);
    v46[4] = *(a1 + 32);
    v47 = v12;
    v13 = atomic_load((a1 + 64));
    v48 = v13;
    v14 = [v10 performLibraryAnalysisWithGraphURL:v6 withRecipe:v11 processedGraphUpdate:&v49 progressBlock:v46];
    v15 = v49;
    v16 = [*(a1 + 32) ingestLoggingConnection];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v53 = v14;
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGManager][updateGraphWithRecipe] Finished performing library analysis with analysis result=%ld", buf, 0xCu);
    }

    if (v14 == 2)
    {
      v24 = dispatch_semaphore_create(0);
      v25 = *(a1 + 32);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_284;
      v36[3] = &unk_2788838F8;
      v26 = v6;
      v37 = v26;
      v27 = v8;
      v38 = v27;
      v28 = v24;
      v39 = v28;
      [v25 performAsynchronousGraphBarrierUsingBlock:v36];
      dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
      v29 = [*(a1 + 32) ingestLoggingConnection];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v26 path];
        v31 = [v27 path];
        *buf = 138412546;
        v53 = v30;
        v54 = 2112;
        v55 = v31;
        _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[PGManager][updateGraphWithRecipe] Successfully destroy the two databases=%@ and %@", buf, 0x16u);
      }
    }

    else if (!v14)
    {
      v17 = dispatch_semaphore_create(0);
      v18 = *(a1 + 32);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_281;
      v40[3] = &unk_2788838D0;
      v41 = v6;
      v44 = *(a1 + 56);
      v45 = *(a1 + 48);
      v42 = v15;
      v19 = v17;
      v43 = v19;
      [v18 performAsynchronousGraphBarrierUsingBlock:v40];
      dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      v20 = [*(a1 + 32) ingestLoggingConnection];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[PGManager][updateGraphWithRecipe] Successfully perform a graph full rebuild", buf, 2u);
      }

      goto LABEL_23;
    }

    [*(a1 + 32) setLibraryAnalysisState:0];
    v32 = *(a1 + 48);
    if (!v32)
    {
LABEL_24:

      return;
    }

    v33 = *(a1 + 32);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_285;
    v34[3] = &unk_278883848;
    v35 = v32;
    [v33 performAsynchronousNotification:v34];
    v19 = v35;
LABEL_23:

    goto LABEL_24;
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    v22 = *(a1 + 32);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_2;
    v50[3] = &unk_278883848;
    v51 = v21;
    [v22 performAsynchronousNotification:v50];
  }

  v23 = [*(a1 + 32) ingestLoggingConnection];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[PGManager][updateGraphWithRecipe] Unable to proceed with the full graph rebuild stamp", buf, 2u);
  }

  [*(a1 + 32) setLibraryAnalysisState:0];
}

void __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [PGError errorForCode:-4];
  (*(v1 + 16))(v1, 0, v2, 0);
}

void *__101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_280(void *a1, _BYTE *a2, double a3)
{
  (*(a1[5] + 16))(a3 * 0.95);
  v5 = a1[4];
  v6 = atomic_load(a1 + 6);
  result = [v5 canProceedWithFullGraphRebuildStamp:v6];
  if ((result & 1) == 0)
  {
    *a2 = 1;
  }

  return result;
}

void __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_281(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v17 = 0;
  v6 = [v3 swapInGraphAtURL:v4 progressBlock:v5 error:&v17];
  v7 = v17;
  [v3 setLibraryAnalysisState:0];
  v8 = *(a1 + 64);
  if (v8)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_2_282;
    v11[3] = &unk_2788838A8;
    v15 = v8;
    v16 = v6;
    v12 = v7;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    [v3 performAsynchronousNotification:v11];
  }

  else
  {
    v9 = +[PGLogging sharedLogging];
    v10 = [v9 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v7;
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Failed swapping the updated graph in: %@", buf, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 48));
  }
}

void __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_284(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v13 = 0;
  v3 = [(MAGraph *)PGGraph destroyPersistentStoreAtURL:v2 error:&v13];
  v4 = v13;
  if (!v3)
  {
    v5 = +[PGLogging sharedLogging];
    v6 = [v5 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "An error occurred while destroying working (and possibly corrupt) database %@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 40);
  v12 = v4;
  v8 = [(MAGraph *)PGGraph destroyPersistentStoreAtURL:v7 error:&v12];
  v9 = v12;

  if (!v8)
  {
    v10 = +[PGLogging sharedLogging];
    v11 = [v10 loggingConnection];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "An error occurred while destroying validation graph database %@", buf, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_285(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [PGError errorForCode:-4];
  (*(v1 + 16))(v1, 0, v2, 0);
}

intptr_t __101__PGManager_Analysis_Private__updateGraphWithRecipe_keepExistingGraph_progressBlock_completionBlock___block_invoke_2_282(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

- (void)startGraphUpdate:(id)update progressBlock:(id)block completionBlock:(id)completionBlock
{
  updateCopy = update;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  ingestLoggingConnection = [(PGManager *)self ingestLoggingConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__PGManager_Analysis_Private__startGraphUpdate_progressBlock_completionBlock___block_invoke;
  v16[3] = &unk_278883820;
  v20 = blockCopy;
  v21 = completionBlockCopy;
  v17 = updateCopy;
  selfCopy = self;
  v19 = ingestLoggingConnection;
  v12 = ingestLoggingConnection;
  v13 = updateCopy;
  v14 = completionBlockCopy;
  v15 = blockCopy;
  [(PGManager *)self performAsynchronousGraphWriteUsingBlock:v16];
}

void __78__PGManager_Analysis_Private__startGraphUpdate_progressBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _Block_copy(*(a1 + 56));
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (!v4)
  {
    goto LABEL_6;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current - v26[3] >= 0.01)
  {
    v26[3] = Current;
    buf[0] = 0;
    v4[2](v4, buf, 0.0);
    v8 = *(v30 + 24) | buf[0];
    *(v30 + 24) = v8;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_6:
    v9 = *(a1 + 40);
    v24 = 0;
    v10 = [v9 instantiateMutableGraphWithError:&v24];
    v7 = v24;
    if (v10)
    {
      [v10 enableInTransactionCheck];
      [v10 enterBatch];
      v11 = [PGGraphIngestRecipe alloc];
      v12 = [v3 photoLibrary];
      v13 = [(PGGraphIngestRecipe *)v11 initWithPhotoLibrary:v12];

      v14 = *(a1 + 32);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __78__PGManager_Analysis_Private__startGraphUpdate_progressBlock_completionBlock___block_invoke_2;
      v19[3] = &unk_27888A188;
      v20 = v4;
      v21 = &v25;
      v22 = &v29;
      v23 = 0x3F847AE147AE147BLL;
      if ([v3 updateGraph:v10 withGraphUpdate:v14 withRecipe:v13 progressBlock:v19])
      {

        v15 = [MEMORY[0x277CBEAA8] date];
        [PGGraphBuilder setLastIncrementalUpdateInvocationDate:v15 inGraph:v10];
        v16 = *(a1 + 48);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_DEFAULT, "Live update succeeded", buf, 2u);
        }

        [v10 leaveBatch];

LABEL_15:
        (*(*(a1 + 64) + 16))();

        goto LABEL_16;
      }

      v17 = [PGError errorForCode:-4];

      v7 = v17;
    }

    v18 = *(a1 + 48);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v7;
      _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Live update failed, rolling back: %@", buf, 0xCu);
    }

    [v10 rollbackBatch];
    goto LABEL_15;
  }

  if ((v30[3] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = *(a1 + 64);
  v7 = [PGError errorForCode:-4];
  (*(v6 + 16))(v6, 0, v7, *(a1 + 32));
LABEL_16:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

void __78__PGManager_Analysis_Private__startGraphUpdate_progressBlock_completionBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.8 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)updateGraph:(id)graph withGraphUpdate:(id)update withRecipe:(id)recipe progressBlock:(id)block
{
  v48 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  updateCopy = update;
  recipeCopy = recipe;
  blockCopy = block;
  v14 = _Block_copy(blockCopy);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  if (!v14 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v37[3] < 0.01) || (v37[3] = v15, v35 = 0, (*(v14 + 2))(v14, &v35, 0.0), v16 = *(v41 + 24) | v35, *(v41 + 24) = v16, (v16 & 1) == 0))
  {
    v18 = [[PGGraphBuilder alloc] initWithGraph:graphCopy manager:self];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __84__PGManager_Analysis_Private__updateGraph_withGraphUpdate_withRecipe_progressBlock___block_invoke;
    v30[3] = &unk_27888A188;
    v19 = v14;
    v31 = v19;
    v32 = &v36;
    v33 = &v40;
    v34 = 0x3F847AE147AE147BLL;
    [(PGManager *)self _precachePersonsInformationFromGraph:graphCopy progressBlock:v30];
    if (*(v41 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v45 = 459;
        v46 = 2080;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v17 = 0;
      goto LABEL_23;
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __84__PGManager_Analysis_Private__updateGraph_withGraphUpdate_withRecipe_progressBlock___block_invoke_275;
    v25[3] = &unk_27888A188;
    v20 = v19;
    v26 = v20;
    v27 = &v36;
    v28 = &v40;
    v29 = 0x3F847AE147AE147BLL;
    [(PGGraphBuilder *)v18 performBatchUpdatesWithGraphUpdate:updateCopy withRecipe:recipeCopy progressBlock:v25];
    [(PGManager *)self _invalidateTransientCaches];
    if (*(v41 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v45 = 468;
        v46 = 2080;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
        v21 = MEMORY[0x277D86220];
LABEL_14:
        _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (!v14 || (Current = CFAbsoluteTimeGetCurrent(), Current - v37[3] < 0.01) || (v37[3] = Current, v35 = 0, (*(v20 + 2))(v20, &v35, 1.0), v23 = *(v41 + 24) | v35, *(v41 + 24) = v23, (v23 & 1) == 0))
      {
        v17 = 1;
        goto LABEL_22;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v45 = 470;
        v46 = 2080;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
        v21 = MEMORY[0x277D86220];
        goto LABEL_14;
      }
    }

    v17 = 0;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v45 = 451;
    v46 = 2080;
    v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v17 = 0;
LABEL_24:
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v17;
}

void __84__PGManager_Analysis_Private__updateGraph_withGraphUpdate_withRecipe_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __84__PGManager_Analysis_Private__updateGraph_withGraphUpdate_withRecipe_progressBlock___block_invoke_275(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.9 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)swapInGraphAtURL:(id)l progressBlock:(id)block error:(id *)error
{
  v92 = *MEMORY[0x277D85DE8];
  lCopy = l;
  blockCopy = block;
  v9 = _Block_copy(blockCopy);
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v67 = blockCopy;
  if (!v9 || (v10 = CFAbsoluteTimeGetCurrent(), v10 - v83[3] < 0.01) || (v83[3] = v10, LOBYTE(info.numer) = 0, v9[2](v9, &info, 0.0), v11 = *(v87 + 24) | LOBYTE(info.numer), *(v87 + 24) = v11, (v11 & 1) == 0))
  {
    graphName = [(PGManager *)self graphName];
    v14 = graphName;
    v15 = @"photosgraph";
    if (graphName)
    {
      v15 = graphName;
    }

    v69 = v15;

    graphPersistenceParentDirectoryURL = [(PGManager *)self graphPersistenceParentDirectoryURL];
    v17 = [PGGraph graphURLForName:v69 parentDirectoryURL:graphPersistenceParentDirectoryURL];
    v70 = [PGGraph graphURLForName:@"photosgraph-tmp" parentDirectoryURL:graphPersistenceParentDirectoryURL];
    if (v9)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v83[3] >= 0.01)
      {
        v83[3] = Current;
        LOBYTE(info.numer) = 0;
        v9[2](v9, &info, 0.2);
        v19 = *(v87 + 24) | LOBYTE(info.numer);
        *(v87 + 24) = v19;
        if (v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v91 = 372;
            *&v91[4] = 2080;
            *&v91[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_30:
          LOBYTE(v12) = 0;
LABEL_76:

          goto LABEL_77;
        }
      }
    }

    if (!v70 || !v17)
    {
      v33 = +[PGLogging sharedLogging];
      loggingConnection = [v33 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v91 = v70;
        *&v91[8] = 2112;
        *&v91[10] = v17;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot access URLs: %@, %@", buf, 0x16u);
      }

      goto LABEL_30;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    graphLoggingConnection = [(PGManager *)self graphLoggingConnection];
    v21 = os_signpost_id_generate(graphLoggingConnection);
    v22 = graphLoggingConnection;
    v23 = v22;
    spid = v21;
    v64 = v21 - 1;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "SwapGraph", "", buf, 2u);
    }

    v65 = v23;

    info = 0;
    mach_timebase_info(&info);
    v62 = mach_absolute_time();
    [(PGManager *)self _unloadGraph];
    path = [v17 path];
    v25 = [defaultManager fileExistsAtPath:path];

    if (v25)
    {
      v80 = 0;
      v26 = [(MAGraph *)PGGraph migratePersistentStoreFromURL:v17 toURL:v70 error:&v80];
      v27 = v80;
      if (!v26)
      {
        v28 = +[PGLogging sharedLogging];
        loggingConnection2 = [v28 loggingConnection];

        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v91 = v27;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Error when renaming previous graph library: %@", buf, 0xCu);
        }
      }
    }

    v79 = 0;
    v12 = [(MAGraph *)PGGraph migratePersistentStoreFromURL:lCopy toURL:v17 error:&v79];
    v30 = v79;
    v31 = v30;
    if (v12)
    {
      v32 = v30;
    }

    else
    {
      v35 = +[PGLogging sharedLogging];
      loggingConnection3 = [v35 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v91 = v31;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "Error when moving new graph to Library directory, trying to rollback the old one %@", buf, 0xCu);
      }

      if (error)
      {
        v37 = v31;
        *error = v31;
      }

      v78 = v31;
      v38 = [(MAGraph *)PGGraph migratePersistentStoreFromURL:v70 toURL:v17 error:&v78];
      v32 = v78;

      if (!v38)
      {
        v39 = +[PGLogging sharedLogging];
        loggingConnection4 = [v39 loggingConnection];

        if (os_log_type_enabled(loggingConnection4, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v91 = v32;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection4, OS_LOG_TYPE_ERROR, "Error when rolling back the previous graph library %@", buf, 0xCu);
        }
      }
    }

    if (v9)
    {
      v41 = CFAbsoluteTimeGetCurrent();
      if (v41 - v83[3] >= 0.01)
      {
        v83[3] = v41;
        v77 = 0;
        v9[2](v9, &v77, 0.6);
        v42 = *(v87 + 24) | v77;
        *(v87 + 24) = v42;
        if (v42)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v91 = 415;
            *&v91[4] = 2080;
            *&v91[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
            v43 = MEMORY[0x277D86220];
LABEL_62:
            _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_63;
          }

          goto LABEL_63;
        }
      }
    }

    if (v12)
    {
      v76 = 0;
      v44 = [(MAGraph *)PGGraph destroyPersistentStoreAtURL:v70 error:&v76];
      v45 = v76;
      if (!v44)
      {
        v46 = +[PGLogging sharedLogging];
        loggingConnection5 = [v46 loggingConnection];

        if (os_log_type_enabled(loggingConnection5, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v91 = v45;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection5, OS_LOG_TYPE_ERROR, "Error when destroying temporary library %@", buf, 0xCu);
        }
      }

      v48 = +[PGLogging sharedLogging];
      loggingConnection6 = [v48 loggingConnection];

      if (os_log_type_enabled(loggingConnection6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection6, OS_LOG_TYPE_INFO, "Updated graph successfully!", buf, 2u);
      }
    }

    v50 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v53 = v65;
    v54 = v53;
    if (v64 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v54, OS_SIGNPOST_INTERVAL_END, spid, "SwapGraph", "", buf, 2u);
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v91 = "SwapGraph";
      *&v91[8] = 2048;
      *&v91[10] = ((((v50 - v62) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if (v9)
    {
      v55 = CFAbsoluteTimeGetCurrent();
      if (v55 - v83[3] >= 0.01)
      {
        v83[3] = v55;
        v77 = 0;
        v9[2](v9, &v77, 0.8);
        v56 = *(v87 + 24) | v77;
        *(v87 + 24) = v56;
        if (v56)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v91 = 429;
            *&v91[4] = 2080;
            *&v91[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
            v43 = MEMORY[0x277D86220];
            goto LABEL_62;
          }

LABEL_63:
          LOBYTE(v12) = 0;
LABEL_75:

          goto LABEL_76;
        }
      }
    }

    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __69__PGManager_Analysis_Internal__swapInGraphAtURL_progressBlock_error___block_invoke;
    v71[3] = &unk_27888A188;
    v57 = v9;
    v72 = v57;
    v73 = &v82;
    v74 = &v86;
    v75 = 0x3F847AE147AE147BLL;
    [(PGManager *)self loadGraphWithProgressBlock:v71];
    if (*(v87 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v91 = 434;
        *&v91[4] = 2080;
        *&v91[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
        v58 = MEMORY[0x277D86220];
LABEL_67:
        _os_log_impl(&dword_22F0FC000, v58, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_74;
      }

      v59 = CFAbsoluteTimeGetCurrent();
      if (v59 - v83[3] < 0.01)
      {
        goto LABEL_74;
      }

      v83[3] = v59;
      v77 = 0;
      v57[2](v57, &v77, 1.0);
      v60 = *(v87 + 24) | v77;
      *(v87 + 24) = v60;
      if ((v60 & 1) == 0)
      {
        goto LABEL_74;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v91 = 436;
        *&v91[4] = 2080;
        *&v91[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
        v58 = MEMORY[0x277D86220];
        goto LABEL_67;
      }
    }

    LOBYTE(v12) = 0;
LABEL_74:

    goto LABEL_75;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v91 = 365;
    *&v91[4] = 2080;
    *&v91[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  LOBYTE(v12) = 0;
LABEL_77:
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);

  return v12;
}

void __69__PGManager_Analysis_Internal__swapInGraphAtURL_progressBlock_error___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.8);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (int64_t)performLibraryAnalysisWithGraphURL:(id)l withRecipe:(id)recipe processedGraphUpdate:(id *)update progressBlock:(id)block
{
  v56 = *MEMORY[0x277D85DE8];
  lCopy = l;
  recipeCopy = recipe;
  blockCopy = block;
  v12 = _Block_copy(blockCopy);
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  if (!v12 || (v13 = CFAbsoluteTimeGetCurrent(), v13 - v45[3] < 0.01) || (v45[3] = v13, v43 = 0, (*(v12 + 2))(v12, &v43, 0.0), v14 = *(v49 + 24) | v43, *(v49 + 24) = v14, (v14 & 1) == 0))
  {
    v41 = 0;
    v42 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __113__PGManager_Analysis_Internal__performLibraryAnalysisWithGraphURL_withRecipe_processedGraphUpdate_progressBlock___block_invoke;
    v36[3] = &unk_27888A188;
    v16 = v12;
    v37 = v16;
    v38 = &v44;
    v39 = &v48;
    v40 = 0x3F847AE147AE147BLL;
    v35 = 0;
    v17 = [(PGManager *)self graphForLibraryFullAnalysisAtURL:lCopy alreadyIngestedMomentIdentifiers:&v42 alreadyIngestedHighlightIdentifiers:&v41 progressBlock:v36 error:&v35];
    v27 = v42;
    v28 = v41;
    v26 = v35;
    if (*(v49 + 24) == 1)
    {
      [v17 closePersistentStore];
LABEL_9:
      v15 = 1;
LABEL_23:

      goto LABEL_24;
    }

    if (v17)
    {
      if ([v17 noFatalError])
      {
        if (v12)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v45[3] >= 0.01)
          {
            v45[3] = Current;
            buf[0] = 0;
            (*(v16 + 2))(v16, buf, 0.05);
            *(v49 + 24) |= buf[0];
          }
        }

        if (*(v49 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v53 = 318;
            v54 = 2080;
            v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        else
        {
          date = [MEMORY[0x277CBEAA8] date];
          [date timeIntervalSince1970];
          v22 = v21;

          [(PGManager *)self _invalidatePersistentCachesBeforeDateWithTimestamp:v22 + -7776000.0];
          if (v12)
          {
            v23 = CFAbsoluteTimeGetCurrent();
            if (v23 - v45[3] >= 0.01)
            {
              v45[3] = v23;
              buf[0] = 0;
              (*(v16 + 2))(v16, buf, 0.09);
              *(v49 + 24) |= buf[0];
            }
          }

          if (*(v49 + 24) != 1)
          {
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __113__PGManager_Analysis_Internal__performLibraryAnalysisWithGraphURL_withRecipe_processedGraphUpdate_progressBlock___block_invoke_264;
            v30[3] = &unk_27888A188;
            v24 = v16;
            v31 = v24;
            v32 = &v44;
            v33 = &v48;
            v34 = 0x3F847AE147AE147BLL;
            [(PGManager *)self performFullLibraryAnalysisInGraph:v17 withRecipe:recipeCopy withAlreadyIngestedMomentIdentifiers:v27 alreadyIngestedHighlightIdentifiers:v28 processedGraphUpdate:update progressBlock:v30];
            [(PGManager *)self _invalidateTransientCaches];
            if (*(v49 + 24) == 1)
            {
              [v17 closePersistentStore];
              v15 = 1;
            }

            else if ([v17 noFatalError])
            {
              [v17 closePersistentStore];
              if (v12)
              {
                v25 = CFAbsoluteTimeGetCurrent();
                if (v25 - v45[3] >= 0.01)
                {
                  v45[3] = v25;
                  buf[0] = 0;
                  (*(v24 + 2))(v24, buf, 1.0);
                  *(v49 + 24) |= buf[0];
                }
              }

              if (*(v49 + 24) == 1)
              {
                v15 = 1;
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v53 = 355;
                  v54 = 2080;
                  v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
                  v15 = 1;
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }
              }

              else
              {
                v15 = 0;
              }
            }

            else
            {
              [v17 closePersistentStore];
              v15 = 2;
            }

            goto LABEL_23;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v53 = 328;
            v54 = 2080;
            v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }

        [v17 closePersistentStore];
        goto LABEL_9;
      }

      [v17 closePersistentStore];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = 2;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not get a valid graph to perform full analysis, aborting", buf, 2u);
      goto LABEL_23;
    }

    v15 = 2;
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v53 = 291;
    v54 = 2080;
    v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v15 = 1;
LABEL_24:
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  return v15;
}

void __113__PGManager_Analysis_Internal__performLibraryAnalysisWithGraphURL_withRecipe_processedGraphUpdate_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.05);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __113__PGManager_Analysis_Internal__performLibraryAnalysisWithGraphURL_withRecipe_processedGraphUpdate_progressBlock___block_invoke_264(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.8 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)performFullLibraryAnalysisInGraph:(id)graph withRecipe:(id)recipe withAlreadyIngestedMomentIdentifiers:(id)identifiers alreadyIngestedHighlightIdentifiers:(id)highlightIdentifiers processedGraphUpdate:(id *)update progressBlock:(id)block
{
  v112 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  recipeCopy = recipe;
  identifiersCopy = identifiers;
  highlightIdentifiersCopy = highlightIdentifiers;
  blockCopy = block;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  v68 = _Block_copy(blockCopy);
  if (v68 && (v13 = CFAbsoluteTimeGetCurrent(), v13 - v97[3] >= 0.01) && ((v97[3] = v13, v95 = 0, (*(v68 + 2))(v68, &v95, 0.0), v57 = *(v101 + 24) | v95, *(v101 + 24) = v57, (v57 & 1) != 0) || ([graphCopy noFatalError] & 1) == 0))
  {
    v58 = MEMORY[0x277D86220];
    v59 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v60 = *(v101 + 24);
      noFatalError = [graphCopy noFatalError];
      *buf = 67109890;
      v107 = v60;
      v108 = 1024;
      *v109 = noFatalError ^ 1;
      *&v109[4] = 1024;
      *&v109[6] = 202;
      v110 = 2080;
      v111 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
    }
  }

  else
  {
    momentsToIngest = [recipeCopy momentsToIngest];
    updateCopy = update;
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = momentsToIngest;
    v17 = [obj countByEnumeratingWithState:&v91 objects:v105 count:16];
    if (v17)
    {
      v18 = *v92;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v92 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v91 + 1) + 8 * i);
          uuid = [v20 uuid];
          v22 = [identifiersCopy containsObject:uuid];

          if (v22)
          {
            v23 = v16;
          }

          else
          {
            v23 = v15;
          }

          [v23 addObject:v20];
        }

        v17 = [obj countByEnumeratingWithState:&v91 objects:v105 count:16];
      }

      while (v17);
    }

    v24 = [PGGraphUpdate alloc];
    photoLibrary = [(PGManager *)self photoLibrary];
    v70 = [(PGGraphUpdate *)v24 initWithPhotoLibrary:photoLibrary];

    if ([v15 count])
    {
      v26 = [[PGGraphMomentsInsertion alloc] initWithMoments:v15];
      [(PGGraphUpdate *)v70 addChange:v26];
    }

    highlightsToIngest = [recipeCopy highlightsToIngest];
    v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v73 = highlightsToIngest;
    v30 = [v73 countByEnumeratingWithState:&v87 objects:v104 count:16];
    if (v30)
    {
      v31 = *v88;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v88 != v31)
          {
            objc_enumerationMutation(v73);
          }

          v33 = *(*(&v87 + 1) + 8 * j);
          uuid2 = [v33 uuid];
          v35 = [highlightIdentifiersCopy containsObject:uuid2];

          if (v35)
          {
            v36 = v29;
          }

          else
          {
            v36 = v28;
          }

          [v36 addObject:v33];
        }

        v30 = [v73 countByEnumeratingWithState:&v87 objects:v104 count:16];
      }

      while (v30);
    }

    if ([v28 count])
    {
      v37 = [[PGGraphHighlightsInsertion alloc] initWithHighlights:v28];
      [(PGGraphUpdate *)v70 addChange:v37];
    }

    [(PGGraphUpdate *)v70 setIsResumingFullAnalysis:1];
    v38 = [[PGGraphBuilder alloc] initWithGraph:graphCopy manager:self];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __185__PGManager_Analysis_Internal__performFullLibraryAnalysisInGraph_withRecipe_withAlreadyIngestedMomentIdentifiers_alreadyIngestedHighlightIdentifiers_processedGraphUpdate_progressBlock___block_invoke;
    v82[3] = &unk_27888A188;
    v39 = v68;
    v83 = v39;
    v84 = &v96;
    v85 = &v100;
    v86 = 0x3F847AE147AE147BLL;
    [(PGManager *)self _precachePersonsInformationFromGraph:graphCopy progressBlock:v82];
    if ((v101[3] & 1) != 0 || ([graphCopy noFatalError] & 1) == 0)
    {
      v53 = MEMORY[0x277D86220];
      v54 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v55 = *(v101 + 24);
        noFatalError2 = [graphCopy noFatalError];
        *buf = 67109890;
        v107 = v55;
        v108 = 1024;
        *v109 = noFatalError2 ^ 1;
        *&v109[4] = 1024;
        *&v109[6] = 259;
        v110 = 2080;
        v111 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
        _os_log_impl(&dword_22F0FC000, v53, OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
      }
    }

    else
    {
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __185__PGManager_Analysis_Internal__performFullLibraryAnalysisInGraph_withRecipe_withAlreadyIngestedMomentIdentifiers_alreadyIngestedHighlightIdentifiers_processedGraphUpdate_progressBlock___block_invoke_263;
      v77[3] = &unk_27888A188;
      v40 = v39;
      v78 = v40;
      v79 = &v96;
      v80 = &v100;
      v81 = 0x3F847AE147AE147BLL;
      [(PGGraphBuilder *)v38 performBatchUpdatesWithGraphUpdate:v70 withRecipe:recipeCopy progressBlock:v77];
      if ((v101[3] & 1) != 0 || ([graphCopy noFatalError] & 1) == 0)
      {
        v62 = MEMORY[0x277D86220];
        v63 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          v64 = *(v101 + 24);
          noFatalError3 = [graphCopy noFatalError];
          *buf = 67109890;
          v107 = v64;
          v108 = 1024;
          *v109 = noFatalError3 ^ 1;
          *&v109[4] = 1024;
          *&v109[6] = 267;
          v110 = 2080;
          v111 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled (%d) or fatal (%d) at line %d in file %s", buf, 0x1Eu);
        }
      }

      else
      {
        if (updateCopy)
        {
          v41 = v70;
          *updateCopy = v70;
        }

        numberOfMomentNodes = [graphCopy numberOfMomentNodes];
        v43 = [v16 count];
        v44 = [v15 count];
        v45 = v44 + v43;
        if (numberOfMomentNodes != v44 + v43)
        {
          v46 = +[PGLogging sharedLogging];
          loggingConnection = [v46 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v107 = numberOfMomentNodes;
            v108 = 1024;
            *v109 = v45;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Moment nodes count & moment asset collections count are different %u - %u", buf, 0xEu);
          }
        }

        analytics = [(PGManager *)self analytics];
        photoLibrary2 = [(PGManager *)self photoLibrary];
        serviceManager = [(PGManager *)self serviceManager];
        [graphCopy reportMetricsLogsWithAnalytics:analytics photoLibrary:photoLibrary2 serviceManager:serviceManager];

        if (v68)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v97[3] >= 0.01)
          {
            v97[3] = Current;
            v95 = 0;
            (v40[2].isa)(v40, &v95, 1.0);
            v52 = *(v101 + 24) | v95;
            *(v101 + 24) = v52;
            if ((v52 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v107 = 283;
              v108 = 2080;
              *v109 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      v53 = v78;
    }
  }

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v100, 8);
}

void __185__PGManager_Analysis_Internal__performFullLibraryAnalysisInGraph_withRecipe_withAlreadyIngestedMomentIdentifiers_alreadyIngestedHighlightIdentifiers_processedGraphUpdate_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __185__PGManager_Analysis_Internal__performFullLibraryAnalysisInGraph_withRecipe_withAlreadyIngestedMomentIdentifiers_alreadyIngestedHighlightIdentifiers_processedGraphUpdate_progressBlock___block_invoke_263(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.7 + 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)graphForLibraryFullAnalysisAtURL:(id)l alreadyIngestedMomentIdentifiers:(id *)identifiers alreadyIngestedHighlightIdentifiers:(id *)highlightIdentifiers progressBlock:(id)block error:(id *)error
{
  *&v59[5] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v13 = _Block_copy(block);
  v14 = 0.0;
  if (v13)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v57 = 0;
      v13[2](v13, &v57, 0.0);
      if (v57 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v59[0] = 82;
          LOWORD(v59[1]) = 2080;
          *(&v59[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_16;
      }

      v14 = Current;
    }
  }

  v16 = [(PGGraph *)[PGMutableGraph alloc] initWithURL:lCopy persistenceOptions:32 error:error];
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = v16;
  if (![(MAGraph *)v16 version]|| [(PGManager *)self graphIsUsable:v17 error:0])
  {
LABEL_12:
    if (v13)
    {
      v20 = CFAbsoluteTimeGetCurrent();
      if (v20 - v14 >= 0.01)
      {
        buf[0] = 0;
        v13[2](v13, buf, 0.5);
        if (buf[0])
        {
          [(MAGraph *)v17 closePersistentStore];
LABEL_21:
          v21 = 0;
          goto LABEL_56;
        }

        v14 = v20;
      }
    }

    identifiersCopy = identifiers;
    highlightIdentifiersCopy = highlightIdentifiers;
    momentNodes = [(PGGraph *)v17 momentNodes];
    localIdentifiers = [momentNodes localIdentifiers];
    v27 = [localIdentifiers mutableCopy];

    v28 = [PGGraphHighlightNodeCollection dayHighlightNodesInGraph:v17];
    localIdentifiers2 = [v28 localIdentifiers];
    v54 = [localIdentifiers2 mutableCopy];

    if (!v13 || (v30 = CFAbsoluteTimeGetCurrent(), v30 - v14 < 0.01) || (buf[0] = 0, v13[2](v13, buf, 0.6), v14 = v30, buf[0] != 1))
    {
      if ([v27 count] || objc_msgSend(v54, "count"))
      {
        v51 = momentNodes;
        infoNode = [(PGGraph *)v17 infoNode];
        creationDate = [infoNode creationDate];
        date = [MEMORY[0x277CBEAA8] date];
        [creationDate timeIntervalSinceDate:date];
        v35 = v34;

        v36 = -v35;
        if (v35 >= 0.0)
        {
          v36 = v35;
        }

        v37 = v36 > 172800.0;
        if (v36 <= 172800.0)
        {
          v28 = v50;
        }

        else
        {
          [(MAGraph *)v17 closePersistentStore];
          v38 = +[PGLogging sharedLogging];
          loggingConnection = [v38 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v59 = lCopy;
            _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Invalidating graph (%@), because it needs to be rebuilt", buf, 0xCu);
          }

          v55 = 0;
          v40 = [(MAGraph *)PGGraph destroyPersistentStoreAtURL:lCopy error:&v55];
          v41 = v55;
          if (!v40)
          {
            v46 = +[PGLogging sharedLogging];
            loggingConnection2 = [v46 loggingConnection];

            if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v59 = v41;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "An error occurred while destroying temporary database %@", buf, 0xCu);
            }

            momentNodes = v51;
            if (error)
            {
              v48 = v41;
              *error = v41;
            }

            v28 = v50;
            goto LABEL_53;
          }

          [v27 removeAllObjects];
          [v54 removeAllObjects];
          v42 = [(PGGraph *)[PGMutableGraph alloc] initWithURL:lCopy persistenceOptions:32 error:error];

          v17 = v42;
          v28 = v50;
          if (!v42)
          {
            momentNodes = v51;
LABEL_53:

            goto LABEL_54;
          }
        }

        momentNodes = v51;
      }

      else
      {
        v37 = 1;
      }

      v43 = v27;
      *identifiersCopy = v27;
      *highlightIdentifiersCopy = v54;
      if (!v13 || (v44 = CFAbsoluteTimeGetCurrent(), v44 - v14 < 0.01) || (buf[0] = 0, v13[2](v13, buf, 0.8), v14 = v44, buf[0] != 1))
      {
        if (v37)
        {
          [PGGraphBuilder prepareGraphForRebuild:v17];
          curationManager = [(PGManager *)self curationManager];
          [curationManager invalidateMemoryCaches];
          [curationManager invalidateDiskCaches];
        }

        if (!v13 || CFAbsoluteTimeGetCurrent() - v14 < 0.01 || (buf[0] = 0, v13[2](v13, buf, 1.0), buf[0] != 1))
        {
          v17 = v17;
          v21 = v17;
LABEL_55:

          goto LABEL_56;
        }
      }
    }

    [(MAGraph *)v17 closePersistentStore];
LABEL_54:
    v21 = 0;
    goto LABEL_55;
  }

  [(MAGraph *)v17 closePersistentStore];

  v56 = 0;
  v18 = [(MAGraph *)PGGraph destroyPersistentStoreAtURL:lCopy error:&v56];
  v17 = v56;
  if (v18)
  {
    v19 = [(PGGraph *)[PGMutableGraph alloc] initWithURL:lCopy persistenceOptions:0 error:error];

    v17 = v19;
    if (v19)
    {
      goto LABEL_12;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_57;
  }

  v22 = +[PGLogging sharedLogging];
  loggingConnection3 = [v22 loggingConnection];

  if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v59 = v17;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "An error occurred while destroying temporary database %@", buf, 0xCu);
  }

  if (!error)
  {
    goto LABEL_21;
  }

  v24 = v17;
  v21 = 0;
  *error = v17;
LABEL_56:

LABEL_57:

  return v21;
}

- (void)_precachePersonsInformationFromGraph:(id)graph progressBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v31 = 0;
      v7[2](v7, &v31, 0.0);
      if (v31 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v34 = 56;
          v35 = 2080;
          v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_30;
      }

      v8 = Current;
    }
  }

  photoLibrary = [(PGManager *)self photoLibrary];
  v10 = [PGGraphPersonNodeCollection personNodesIncludingMeInGraph:graphCopy];
  if ([v10 count])
  {
    v25 = graphCopy;
    v11 = [v10 count];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v24 = v10;
    localIdentifiers = [v10 localIdentifiers];
    v13 = [localIdentifiers countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 1.0 / v11;
      v16 = *v28;
      v17 = 0.0;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(localIdentifiers);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v17 = v15 + v17;
          if (v7)
          {
            v20 = CFAbsoluteTimeGetCurrent();
            if (v20 - v8 >= 0.01)
            {
              v31 = 0;
              v7[2](v7, &v31, v17);
              if (v31)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v34 = 69;
                  v35 = 2080;
                  v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v10 = v24;
                graphCopy = v25;
                goto LABEL_29;
              }

              v8 = v20;
            }
          }

          if ([v19 length])
          {
            v21 = MEMORY[0x277D276E8];
            serviceManager = [(PGManager *)self serviceManager];
            v23 = [v21 clueWithPersonLocalIdentifier:v19 inPhotoLibrary:photoLibrary serviceManager:serviceManager];

            [v23 prepareIfNeeded];
          }
        }

        v14 = [localIdentifiers countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v10 = v24;
    graphCopy = v25;
    if (v7)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
      {
        v31 = 0;
        v7[2](v7, &v31, 1.0);
        if (v31)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v34 = 76;
            v35 = 2080;
            v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGManager+Analysis.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }
  }

LABEL_29:

LABEL_30:
}

- (void)startLibraryAnalysisWithRecipe:(id)recipe progressBlock:(id)block keepExistingGraph:(BOOL)graph completionBlock:(id)completionBlock
{
  recipeCopy = recipe;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (blockCopy)
  {
    v13 = blockCopy;
  }

  else
  {
    v13 = &__block_literal_global_35918;
  }

  v14 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:10000];
  [(PGManager *)self setRebuildProgress:v14];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __102__PGManager_Analysis__startLibraryAnalysisWithRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_2;
  aBlock[3] = &unk_278883948;
  aBlock[4] = self;
  v26 = v13;
  v15 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __102__PGManager_Analysis__startLibraryAnalysisWithRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_3;
  v19[3] = &unk_278883998;
  graphCopy = graph;
  v20 = recipeCopy;
  selfCopy = self;
  v22 = v15;
  v23 = completionBlockCopy;
  v16 = completionBlockCopy;
  v17 = v15;
  v18 = recipeCopy;
  [(PGManager *)self performAsynchronousGraphBarrierUsingBlock:v19];
}

void __102__PGManager_Analysis__startLibraryAnalysisWithRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_2(uint64_t a1, double a2)
{
  (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) rebuildProgress];
  [v4 setCompletedUnitCount:(a2 * 10000.0)];
}

void __102__PGManager_Analysis__startLibraryAnalysisWithRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__PGManager_Analysis__startLibraryAnalysisWithRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_4;
  v6[3] = &unk_278883970;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [a2 updateGraphWithRecipe:v4 keepExistingGraph:v3 progressBlock:v5 completionBlock:v6];
}

void __102__PGManager_Analysis__startLibraryAnalysisWithRecipe_progressBlock_keepExistingGraph_completionBlock___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  [*(a1 + 32) setRebuildProgress:0];
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v9, v7);
  }

  [*(a1 + 32) notifyCoalescingBlocksGraphAnalysisFinished:a2 error:v9];
}

- (void)startLibraryAnalysis:(id)analysis keepExistingGraph:(BOOL)graph completionBlock:(id)block
{
  graphCopy = graph;
  blockCopy = block;
  analysisCopy = analysis;
  v10 = [PGGraphIngestRecipe alloc];
  photoLibrary = [(PGManager *)self photoLibrary];
  v12 = [(PGGraphIngestRecipe *)v10 initWithPhotoLibrary:photoLibrary];

  [(PGManager *)self startLibraryAnalysisWithRecipe:v12 progressBlock:analysisCopy keepExistingGraph:graphCopy completionBlock:blockCopy];
}

- (BOOL)_supportsSemanticalDedupingForMemory:(id)memory
{
  subcategory = [memory subcategory];
  v4 = subcategory != 401;
  if (subcategory == 217)
  {
    v4 = 0;
  }

  return subcategory != 212 && v4;
}

- (id)_curationDebugInformationForHighlight:(id)highlight options:(id)options
{
  v57 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  optionsCopy = options;
  v8 = [PGHighlightTailor alloc];
  workingContextForEnrichment = [(PGManager *)self workingContextForEnrichment];
  v10 = [(PGHighlightTailor *)v8 initWithWorkingContext:workingContextForEnrichment];

  v11 = [(PGHighlightTailor *)v10 bestEnrichmentProfileForHighlight:highlightCopy options:255];
  [v11 setCollectsDebugInfo:1];
  if (v11)
  {
    v12 = [optionsCopy objectForKeyedSubscript:@"extendedCurationOptions"];
    v43 = v12;
    if (v12)
    {
      v13 = [[PGDejunkerDeduperOptions alloc] initWithDictionaryRepresentation:v12];
    }

    else
    {
      v13 = 0;
    }

    v15 = [optionsCopy objectForKeyedSubscript:@"setGlobally"];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      v17 = [(PGDejunkerDeduperOptions *)v13 dictionaryRepresentationRestrictingToGlobalOptions:1];
      [PGUserDefaults setExtendedCurationOptions:v17];
    }

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    photoLibrary = [(PGManager *)self photoLibrary];
    serviceManager = [(PGManager *)self serviceManager];
    [(PGManager *)self enrichmentLoggingConnection];
    v21 = v42 = v13;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __69__PGManager_Curation___curationDebugInformationForHighlight_options___block_invoke;
    v45[3] = &unk_278883A68;
    v46 = photoLibrary;
    v47 = serviceManager;
    v48 = v21;
    v49 = optionsCopy;
    v50 = v10;
    v22 = highlightCopy;
    v51 = v22;
    v52 = v11;
    v23 = v18;
    v53 = v23;
    selfCopy = self;
    v41 = v11;
    v24 = v21;
    v40 = serviceManager;
    v39 = photoLibrary;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v45];
    v25 = [PGCompleteEnrichmentProfile alloc];
    [(PGManager *)self curationManager];
    v44 = optionsCopy;
    v27 = v26 = highlightCopy;
    [(PGManager *)self enrichmentLoggingConnection];
    v29 = v28 = v10;
    v30 = [(PGDefaultEnrichmentProfile *)v25 initWithCurationManager:v27 loggingConnection:v29];

    [(PGDefaultEnrichmentProfile *)v30 setCollectsDebugInfo:1];
    v31 = [PGHighlightTailorHighlightInfo alloc];
    serviceManager2 = [(PGManager *)self serviceManager];
    v33 = [(PGHighlightTailorHighlightInfo *)v31 initWithHighlight:v22 serviceManager:serviceManager2 loggingConnection:v24];

    [(PGHighlightTailorHighlightInfo *)v33 setPromotionScore:0.4];
    v34 = [(PGDefaultEnrichmentProfile *)v30 summaryCurationWithHighlightInfo:v33 sharingFilter:2 progressBlock:&__block_literal_global_430];
    debugInfos = [(PGDefaultEnrichmentProfile *)v30 debugInfos];
    v36 = [debugInfos objectForKeyedSubscript:@"curation"];
    [v23 setObject:v36 forKeyedSubscript:@"onDemandCuration"];

    v10 = v28;
    highlightCopy = v26;
    optionsCopy = v44;

    v14 = v23;
    v11 = v41;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      uuid = [highlightCopy uuid];
      *buf = 138412290;
      v56 = uuid;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not find enrichment profile for highlight %@", buf, 0xCu);
    }

    v14 = MEMORY[0x277CBEC10];
  }

  return v14;
}

void __69__PGManager_Curation___curationDebugInformationForHighlight_options___block_invoke(uint64_t a1, void *a2)
{
  v47[3] = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [[PGHighlightTailorContext alloc] initWithPhotoLibrary:*(a1 + 32) graph:v3 serviceManager:*(a1 + 40) loggingConnection:*(a1 + 48)];
  v5 = [*(a1 + 56) objectForKeyedSubscript:@"includeCuration"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = 1073742079;
  }

  else
  {
    v7 = 1073742063;
  }

  v8 = [*(a1 + 56) objectForKeyedSubscript:@"includeKeyAsset"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 & 0x400000F7;
  }

  v11 = [*(a1 + 64) enrichmentValuesForHighlight:*(a1 + 72) usingEnrichmentProfile:*(a1 + 80) graph:v3 options:v10 reportChangedValuesOnly:1 highlightTailorContext:v4 progressBlock:&__block_literal_global_415];
  v12 = *(a1 + 88);
  v13 = [*(a1 + 80) debugInfos];
  [v12 addEntriesFromDictionary:v13];

  v14 = [*(a1 + 56) objectForKeyedSubscript:@"includeDetailedHighlightInfo"];
  LODWORD(v13) = [v14 BOOLValue];

  if (v13)
  {
    v35 = v11;
    v36 = v4;
    v38 = v3;
    v46[0] = @"startDate";
    v15 = [*(a1 + 72) startDate];
    v47[0] = v15;
    v46[1] = @"endDate";
    v16 = [*(a1 + 72) endDate];
    v47[1] = v16;
    v46[2] = @"estimatedAssetCount";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 72), "estimatedAssetCount")}];
    v47[2] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
    [*(a1 + 88) setObject:v18 forKeyedSubscript:@"detailedHighlightInfo"];

    v19 = [*(a1 + 96) photoLibrary];
    v20 = [v19 librarySpecificFetchOptions];

    v37 = a1;
    v34 = v20;
    v21 = [MEMORY[0x277CD97B8] fetchMomentsInHighlight:*(a1 + 72) options:v20];
    v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v21, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v39 + 1) + 8 * i);
          v43[0] = @"startDate";
          v29 = [v28 startDate];
          v44[0] = v29;
          v43[1] = @"endDate";
          v30 = [v28 endDate];
          v44[1] = v30;
          v43[2] = @"estimatedAssetCount";
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "estimatedAssetCount")}];
          v44[2] = v31;
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];
          v33 = [v28 uuid];
          [v22 setObject:v32 forKeyedSubscript:v33];
        }

        v25 = [v23 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v25);
    }

    [*(v37 + 88) setObject:v22 forKeyedSubscript:@"momentsInHighlightInfo"];
    v3 = v38;
    v11 = v35;
    v4 = v36;
  }
}

- (id)curationDebugInformationForAssetCollection:(id)collection options:(id)options curationContext:(id)context
{
  v78[1] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  optionsCopy = options;
  contextCopy = context;
  v74 = collectionCopy;
  assetCollectionType = [collectionCopy assetCollectionType];
  if (assetCollectionType == 6)
  {
    v10 = [(PGManager *)self _curationDebugInformationForHighlight:collectionCopy options:optionsCopy];
  }

  else
  {
    v11 = assetCollectionType;
    photoLibrary = [collectionCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v14 = +[PGCurationManager assetPropertySetsForCuration];
    [librarySpecificFetchOptions addFetchPropertySets:v14];

    v15 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:2];
    [v15 setPersonsPrefetchMode:2];
    [v15 setFaceInformationPrefetchMode:2];
    v69 = v15;
    v70 = librarySpecificFetchOptions;
    v16 = [MEMORY[0x277D27710] feederForAssetCollection:collectionCopy options:librarySpecificFetchOptions feederPrefetchOptions:v15 curationContext:contextCopy];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = [[PGCurationOptions alloc] initWithDuration:12];
    v19 = [optionsCopy objectForKeyedSubscript:@"includeAllFaces"];
    v68 = v19;
    if (v19)
    {
      bOOLValue = [v19 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    [(PGCurationOptions *)v18 setIncludesAllFaces:bOOLValue];
    v21 = v11 == 4 && [(PGManager *)self _supportsSemanticalDedupingForMemory:collectionCopy];
    v71 = v17;
    [(PGCurationOptions *)v18 setSemanticalDedupingEnabled:v21];
    [(PGCurationOptions *)v18 setMovieDedupingEnabled:v11 == 4];
    v22 = [optionsCopy objectForKeyedSubscript:@"includeKeyAsset"];
    bOOLValue2 = [v22 BOOLValue];

    if (bOOLValue2)
    {
      v24 = v11 == 4;
      v25 = [PGKeyCurator alloc];
      curationManager = [(PGManager *)self curationManager];
      curationCriteriaFactory = [curationManager curationCriteriaFactory];
      v28 = [(PGKeyCurator *)v25 initWithCurationCriteriaFactory:curationCriteriaFactory];

      v29 = objc_alloc(MEMORY[0x277D276A0]);
      allItems = [v16 allItems];
      v31 = [v29 initWithItems:allItems];

      v32 = objc_alloc_init(PGKeyAssetCurationOptions);
      [(PGKeyAssetCurationOptions *)v32 setIsForMemories:v24];
      v33 = [(PGKeyCurator *)v28 keyItemWithFeeder:v16 options:v32 criteria:0 debugInfo:v31 progressBlock:0];
      v34 = [v31 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
      [v71 setObject:v34 forKeyedSubscript:@"keyAsset"];
    }

    v35 = objc_alloc_init(PGCurator_PHAsset);
    curationManager2 = [(PGManager *)self curationManager];
    curationLoggingConnection = [curationManager2 curationLoggingConnection];
    [(PGCurator *)v35 setLoggingConnection:curationLoggingConnection];

    allItems2 = [v16 allItems];
    v39 = [objc_alloc(MEMORY[0x277D276A0]) initWithItems:allItems2];
    v40 = [(PGCurator_PHAsset *)v35 bestAssetsForFeeder:v16 options:v18 debugInfo:v39 progressBlock:0];
    if (v40)
    {
      v66 = v40;
      context = objc_autoreleasePoolPush();
      v67 = v35;
      v41 = objc_alloc_init(MEMORY[0x277D3C7A0]);
      photoLibrary2 = [collectionCopy photoLibrary];
      librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

      v78[0] = *MEMORY[0x277CD9BC0];
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
      [librarySpecificFetchOptions2 setFetchPropertySets:v44];

      [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_284485BC8];
      v45 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:allItems2 options:librarySpecificFetchOptions2];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __90__PGManager_Curation__curationDebugInformationForAssetCollection_options_curationContext___block_invoke;
      v75[3] = &unk_278883A40;
      v76 = v41;
      v77 = v45;
      v46 = v45;
      v64 = v41;
      [v39 dictionaryRepresentationWithAppendExtraItemInfoBlock:v75];
      v48 = v47 = v16;
      v49 = [v48 mutableCopy];
      [(PGCurationOptions *)v18 dictionaryRepresentation];
      v51 = v50 = v18;
      [v49 setObject:v51 forKeyedSubscript:@"curationOptions"];

      v18 = v50;
      v35 = v67;
      [v71 setObject:v49 forKeyedSubscript:@"summary"];

      v16 = v47;
      objc_autoreleasePoolPop(context);
      v40 = v66;
    }

    v52 = objc_alloc(MEMORY[0x277D276A0]);
    allItems3 = [v16 allItems];
    v54 = [v52 initWithItems:allItems3];

    v55 = [(PGCurationOptions *)v18 copy];
    [v55 setDuration:16];
    [v55 setFocusOnInterestingItems:0];
    v56 = [(PGCurator_PHAsset *)v35 bestAssetsForFeeder:v16 options:v55 debugInfo:v54 progressBlock:0];
    v10 = v71;
    if (v56)
    {
      [v54 dictionaryRepresentationWithAppendExtraItemInfoBlock:0];
      v58 = v57 = v35;
      v59 = [v58 mutableCopy];
      [v55 dictionaryRepresentation];
      v60 = v18;
      v62 = v61 = v16;
      [v59 setObject:v62 forKeyedSubscript:@"curationOptions"];

      v16 = v61;
      v18 = v60;
      [v71 setObject:v59 forKeyedSubscript:@"extended"];

      v35 = v57;
    }
  }

  return v10;
}

void __90__PGManager_Curation__curationDebugInformationForAssetCollection_options_curationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v82[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CCABB0];
  [v5 curationScore];
  v8 = [v7 numberWithDouble:?];
  [v6 setObject:v8 forKeyedSubscript:@"persistedCurationScore"];

  v9 = [v5 creationDate];
  [v6 setObject:v9 forKeyedSubscript:@"creationDate"];

  v10 = [v5 localCreationDate];
  [v6 setObject:v10 forKeyedSubscript:@"localCreationDate"];

  v11 = [v5 location];
  v12 = v11;
  if (v11)
  {
    [v11 coordinate];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v14 = *MEMORY[0x277CE4278];
    v16 = *(MEMORY[0x277CE4278] + 8);
  }

  v83.latitude = v14;
  v83.longitude = v16;
  v70 = v12;
  if (CLLocationCoordinate2DIsValid(v83))
  {
    v81[0] = @"latitude";
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v81[1] = @"longitude";
    v82[0] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v82[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
    [v6 setObject:v19 forKeyedSubscript:@"location"];
  }

  else
  {
    [v6 setObject:&unk_284487370 forKeyedSubscript:@"location"];
  }

  v20 = [v5 clsSceneprint];
  if (v20)
  {
    v77 = 0;
    v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v77];
    [v6 setObject:v21 forKeyedSubscript:@"sceneprint"];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingVideo", v20)}];
  [v6 setObject:v22 forKeyedSubscript:@"isInterestingVideo"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingLivePhoto")}];
  [v6 setObject:v23 forKeyedSubscript:@"isInterestingLivePhoto"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingPanorama")}];
  [v6 setObject:v24 forKeyedSubscript:@"isInterestingPanorama"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingSDOF")}];
  [v6 setObject:v25 forKeyedSubscript:@"isInterestingSDOF"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInterestingHDR")}];
  [v6 setObject:v26 forKeyedSubscript:@"isInterestingHDR"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsHasInterestingAudioClassification")}];
  [v6 setObject:v27 forKeyedSubscript:@"hasInterestingAudioClassification"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsHasCustomPlaybackVariation")}];
  [v6 setObject:v28 forKeyedSubscript:@"hasCustomPlaybackVariation"];

  v29 = MEMORY[0x277CCABB0];
  [v5 clsSharpnessScore];
  v30 = [v29 numberWithDouble:?];
  [v6 setObject:v30 forKeyedSubscript:@"sharpnessScore"];

  v31 = MEMORY[0x277CCABB0];
  [v5 clsExposureScore];
  v32 = [v31 numberWithDouble:?];
  [v6 setObject:v32 forKeyedSubscript:@"exposureScore"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsBlurry")}];
  [v6 setObject:v33 forKeyedSubscript:@"isBlurry"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsInhabited")}];
  [v6 setObject:v34 forKeyedSubscript:@"isInhabited"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsHasInterestingScenes")}];
  [v6 setObject:v35 forKeyedSubscript:@"hasInterestingScenes"];

  v36 = [v5 clsPersonLocalIdentifiers];
  [v6 setObject:v36 forKeyedSubscript:@"peopleNames"];

  v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isVideo")}];
  [v6 setObject:v37 forKeyedSubscript:@"isVideo"];

  v38 = [PGCurationManager sceneInfoWithAsset:v5 curationSession:*(a1 + 32)];
  [v6 setObject:v38 forKeyedSubscript:@"scenes"];

  v39 = MEMORY[0x277CCABB0];
  [v5 clsHighlightVisibilityScore];
  v40 = [v39 numberWithDouble:?];
  [v6 setObject:v40 forKeyedSubscript:@"highlightVisibilityScore"];

  v41 = MEMORY[0x277CCABB0];
  [v5 clsAutoplaySuggestionScore];
  v42 = [v41 numberWithDouble:?];
  [v6 setObject:v42 forKeyedSubscript:@"autoplaySuggestionScore"];

  v43 = MEMORY[0x277CCABB0];
  [v5 clsFaceScore];
  v44 = [v43 numberWithDouble:?];
  [v6 setObject:v44 forKeyedSubscript:@"faceScore"];

  v45 = MEMORY[0x277CCABB0];
  [v5 clsDuration];
  v46 = [v45 numberWithDouble:?];
  [v6 setObject:v46 forKeyedSubscript:@"duration"];

  v47 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsNonMemorable")}];
  [v6 setObject:v47 forKeyedSubscript:@"isNonMemorable"];

  v48 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsLoopOrBounce")}];
  [v6 setObject:v48 forKeyedSubscript:@"isLoopOrBounce"];

  v49 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "clsIsLongExposure")}];
  [v6 setObject:v49 forKeyedSubscript:@"isLongExposure"];

  v50 = MEMORY[0x277CCABB0];
  [v5 clsSquareCropScore];
  v51 = [v50 numberWithDouble:?];
  [v6 setObject:v51 forKeyedSubscript:@"squareCropScore"];

  v52 = [v5 clsFaceInformationSummary];
  v53 = [v52 dictionaryRepresentation];
  v71 = v6;
  [v6 setObject:v53 forKeyedSubscript:@"faceInformationSummary"];

  v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v55 = *(a1 + 40);
  v72 = v5;
  v56 = [v5 localIdentifier];
  v57 = [v55 objectForKeyedSubscript:v56];

  v58 = [v57 countByEnumeratingWithState:&v73 objects:v80 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v74;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v74 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v73 + 1) + 8 * i);
        v63 = [v62 personLocalIdentifier];
        if (v63)
        {
          v64 = [v62 faceClusteringProperties];
          v65 = [v64 faceprint];

          if (v65)
          {
            v78[0] = @"faceprintData";
            v66 = [v65 faceprintData];
            v78[1] = @"faceprintVersion";
            v79[0] = v66;
            v67 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v65, "faceprintVersion")}];
            v79[1] = v67;
            v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
            [v54 setObject:v68 forKeyedSubscript:v63];
          }
        }
      }

      v59 = [v57 countByEnumeratingWithState:&v73 objects:v80 count:16];
    }

    while (v59);
  }

  [v71 setObject:v54 forKeyedSubscript:@"faceprints"];
}

- (BOOL)isInterestingForMoment:(id)moment
{
  momentCopy = moment;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PGManager_Curation__isInterestingForMoment___block_invoke;
  v7[3] = &unk_278888EB8;
  v5 = momentCopy;
  selfCopy = self;
  v10 = &v11;
  v8 = v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v7];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __46__PGManager_Curation__isInterestingForMoment___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [v3 momentNodeForMoment:*(a1 + 32)];

  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v4 isInteresting];
  }

  else
  {
    v5 = [*(a1 + 40) graphLoggingConnection];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "Cannot find node for moment: %@", &v7, 0xCu);
    }
  }
}

- (BOOL)isSmartInterestingForMoment:(id)moment
{
  momentCopy = moment;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__PGManager_Curation__isSmartInterestingForMoment___block_invoke;
  v7[3] = &unk_278888EB8;
  v5 = momentCopy;
  selfCopy = self;
  v10 = &v11;
  v8 = v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v7];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __51__PGManager_Curation__isSmartInterestingForMoment___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [v3 momentNodeForMoment:*(a1 + 32)];

  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v4 isSmartInteresting];
  }

  else
  {
    v5 = [*(a1 + 40) graphLoggingConnection];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "Cannot find node for moment: %@", &v7, 0xCu);
    }
  }
}

- (double)neighborScoreForMoment:(id)moment
{
  momentCopy = moment;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PGManager_Curation__neighborScoreForMoment___block_invoke;
  v8[3] = &unk_278888EB8;
  v5 = momentCopy;
  selfCopy = self;
  v11 = &v12;
  v9 = v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v8];
  v6 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v6;
}

void __46__PGManager_Curation__neighborScoreForMoment___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = objc_alloc_init(PGNeighborScoreComputer);
  v5 = [v3 momentNodeForMoment:*(a1 + 32)];
  if (v5)
  {
    [(PGNeighborScoreComputer *)v4 neighborScoreWithMomentNode:v5];
    *(*(*(a1 + 48) + 8) + 24) = v6;
  }

  else
  {
    v7 = [*(a1 + 40) graphLoggingConnection];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "Cannot find node for moment: %@", &v9, 0xCu);
    }
  }
}

- (double)graphScoreForMoment:(id)moment
{
  momentCopy = moment;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PGManager_Curation__graphScoreForMoment___block_invoke;
  v8[3] = &unk_27888A570;
  v5 = momentCopy;
  v9 = v5;
  v10 = &v11;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __43__PGManager_Curation__graphScoreForMoment___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v6 = [v3 momentNodeForMoment:*(a1 + 32)];

  v4 = v6;
  if (v6)
  {
    [v6 graphScore];
    v4 = v6;
    *(*(*(a1 + 40) + 8) + 24) = v5;
  }
}

- (id)curatedKeyAssetForAssetCollection:(id)collection curatedAssetCollection:(id)assetCollection options:(id)options curationContext:(id)context
{
  collectionCopy = collection;
  assetCollectionCopy = assetCollection;
  optionsCopy = options;
  contextCopy = context;
  curationManager = [(PGManager *)self curationManager];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__36389;
  v31 = __Block_byref_object_dispose__36390;
  v32 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __104__PGManager_Curation__curatedKeyAssetForAssetCollection_curatedAssetCollection_options_curationContext___block_invoke;
  v21[3] = &unk_278883A18;
  v26 = &v27;
  v15 = curationManager;
  v22 = v15;
  v16 = collectionCopy;
  v23 = v16;
  v17 = optionsCopy;
  v24 = v17;
  v18 = contextCopy;
  v25 = v18;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v21];
  v19 = [v15 curatedKeyAssetForAssetCollection:v16 curatedAssetCollection:assetCollectionCopy options:v17 criteria:v28[5] curationContext:v18];

  _Block_object_dispose(&v27, 8);

  return v19;
}

void __104__PGManager_Curation__curatedKeyAssetForAssetCollection_curatedAssetCollection_options_curationContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v8 = [a2 graph];
  v5 = [v3 criteriaForKeyAssetCurationWithAssetCollection:v4 graph:v8 options:a1[6] curationContext:a1[7]];
  v6 = *(a1[8] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)summaryCurationForHighlight:(id)highlight
{
  v47 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  v4 = MEMORY[0x277D86220];
  v5 = MEMORY[0x277D86220];
  v6 = v4;
  v7 = os_signpost_id_generate(v4);
  info = 0;
  mach_timebase_info(&info);
  v8 = v4;
  v9 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v7, "SummaryCuration", "", buf, 2u);
  }

  spid = v7;
  v10 = MEMORY[0x277D86220];

  v34 = mach_absolute_time();
  photoLibrary = [highlightCopy photoLibrary];
  v12 = [PGManager graphServicesURLWithPhotoLibrary:photoLibrary];

  v13 = [PGCurationManager alloc];
  photoLibrary2 = [highlightCopy photoLibrary];
  v36 = v12;
  v15 = [(PGCurationManager *)v13 initWithPhotoLibrary:photoLibrary2 cacheURL:v12];

  v35 = v15;
  v16 = [(PGDefaultEnrichmentProfile *)[PGCompleteEnrichmentProfile alloc] initWithCurationManager:v15 loggingConnection:v10];
  v17 = [[PGHighlightTailorHighlightInfo alloc] initWithHighlight:highlightCopy serviceManager:0 loggingConnection:v10];
  [(PGHighlightTailorHighlightInfo *)v17 setPromotionScore:0.4];
  v18 = [(PGDefaultEnrichmentProfile *)v16 summaryCurationWithHighlightInfo:v17 sharingFilter:2 progressBlock:&__block_literal_global_36393];
  v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v20);
        }

        uuid = [*(*(&v37 + 1) + 8 * i) uuid];
        [v19 addObject:uuid];
      }

      v22 = [v20 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v22);
  }

  v26 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v29 = MEMORY[0x277D86220];
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, spid, "SummaryCuration", "", buf, 2u);
  }

  v30 = MEMORY[0x277D86220];

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v43 = "SummaryCuration";
    v44 = 2048;
    v45 = ((((v26 - v34) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v31 = MEMORY[0x277D86220];

  return v19;
}

- (BOOL)suggestsToStartSharedLibraryWithError:(id *)error
{
  suggestedPersonsForSharedLibraryParticipants = [(PGManager *)self suggestedPersonsForSharedLibraryParticipants];
  v4 = [suggestedPersonsForSharedLibraryParticipants count] != 0;

  return v4;
}

- (id)_summaryOfInferencesForMomentNodes:(id)nodes inGraph:(id)graph
{
  v68[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB38];
  graphCopy = graph;
  nodesCopy = nodes;
  v54 = objc_alloc_init(v5);
  v52 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graphCopy];
  v7 = MEMORY[0x277D22BF8];
  v8 = +[PGGraphMomentNode personInMoment];
  v49 = [v7 adjacencyWithSources:nodesCopy relation:v8 targetsClass:objc_opt_class()];

  v9 = MEMORY[0x277D22BF8];
  v10 = +[PGGraphMomentNode publicEventOfMoment];
  v47 = [v9 adjacencyWithSources:nodesCopy relation:v10 targetsClass:objc_opt_class()];

  v11 = MEMORY[0x277D22C90];
  v12 = +[PGGraphMomentNode roiOfMoment];
  v68[0] = v12;
  v13 = +[PGGraphROINode natureFilter];
  relation = [v13 relation];
  v68[1] = relation;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v53 = [v11 chain:v15];

  v45 = [MEMORY[0x277D22BF8] adjacencyWithSources:nodesCopy relation:v53 targetsClass:objc_opt_class()];
  v16 = MEMORY[0x277D22C90];
  v17 = +[PGGraphMomentNode roiOfMoment];
  v67[0] = v17;
  v18 = +[PGGraphROINode mountainFilter];
  relation2 = [v18 relation];
  v67[1] = relation2;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  v51 = [v16 chain:v20];

  v21 = [MEMORY[0x277D22BF8] adjacencyWithSources:nodesCopy relation:v51 targetsClass:objc_opt_class()];
  v22 = MEMORY[0x277D22C90];
  v23 = +[PGGraphMomentNode roiOfMoment];
  v66[0] = v23;
  v24 = +[PGGraphROINode beachFilter];
  relation3 = [v24 relation];
  v66[1] = relation3;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
  v46 = [v22 chain:v26];

  v27 = [MEMORY[0x277D22BF8] adjacencyWithSources:nodesCopy relation:v46 targetsClass:objc_opt_class()];
  v28 = MEMORY[0x277D22BF8];
  v29 = +[PGGraphMomentNode frequentLocationOfMoment];
  v30 = [v28 adjacencyWithSources:nodesCopy relation:v29 targetsClass:objc_opt_class()];

  v31 = MEMORY[0x277D22BF8];
  v32 = +[PGGraphMomentNode celebratedHolidayOfMoment];
  v33 = [v31 adjacencyWithSources:nodesCopy relation:v32 targetsClass:objc_opt_class()];

  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __70__PGManager_KnowledgeSPI___summaryOfInferencesForMomentNodes_inGraph___block_invoke;
  v56[3] = &unk_2788840A8;
  v57 = v45;
  v58 = v27;
  v59 = v21;
  v60 = v52;
  v61 = v30;
  v62 = v33;
  v63 = v47;
  v64 = v49;
  v65 = v34;
  v35 = v34;
  v50 = v49;
  v48 = v47;
  v36 = v33;
  v37 = v30;
  v38 = v52;
  v39 = v21;
  v40 = v27;
  v41 = v45;
  [nodesCopy enumerateNodesSortedByFloatPropertyForName:@"utcs" usingBlock:v56];

  [v54 setObject:v35 forKeyedSubscript:@"events"];
  infoNode = [graphCopy infoNode];

  creationDate = [infoNode creationDate];
  [v54 setObject:creationDate forKeyedSubscript:@"graphCreationDate"];

  return v54;
}

void __70__PGManager_KnowledgeSPI___summaryOfInferencesForMomentNodes_inGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([v3 hasMeanings])
  {
    v6 = [v3 meaningLabelsIncludingParents];
    [v5 unionSet:v6];
  }

  if ([v3 isTrip])
  {
    [v5 addObject:@"trip"];
  }

  if ([v3 petIsPresent])
  {
    [v5 addObject:@"pet"];
  }

  v7 = [v3 identifier];
  v29 = [*(a1 + 32) targetsForSourceIdentifier:v7];
  if ([v29 count])
  {
    [v5 addObject:@"nature"];
  }

  v28 = [*(a1 + 40) targetsForSourceIdentifier:v7];
  if ([v28 count])
  {
    [v5 addObject:@"beach"];
  }

  v27 = [*(a1 + 48) targetsForSourceIdentifier:v7];
  if ([v27 count])
  {
    [v5 addObject:@"mountain"];
  }

  if ([v3 happensPartiallyAtHomeOfPersonNodes:*(a1 + 56)])
  {
    [v5 addObject:@"home"];
  }

  if ([v3 happensPartiallyAtWorkOfPersonNodes:*(a1 + 56)])
  {
    [v5 addObject:@"work"];
  }

  v26 = [*(a1 + 64) targetsForSourceIdentifier:v7];
  if ([v26 count])
  {
    [v5 addObject:@"frequentLocation"];
  }

  v25 = [*(a1 + 72) targetsForSourceIdentifier:v7];
  v8 = [v25 holidayNames];
  if ([v8 count])
  {
    v9 = [v8 allObjects];
    [v4 setObject:v9 forKeyedSubscript:@"holidays"];
  }

  v24 = v8;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [*(a1 + 80) targetsForSourceIdentifier:v7];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __70__PGManager_KnowledgeSPI___summaryOfInferencesForMomentNodes_inGraph___block_invoke_2;
  v33[3] = &unk_278887648;
  v12 = v10;
  v34 = v12;
  v23 = v11;
  [v11 enumerateNodesUsingBlock:v33];
  if ([v12 count])
  {
    [v4 setObject:v12 forKeyedSubscript:@"publicEvents"];
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [*(a1 + 88) targetsForSourceIdentifier:{objc_msgSend(v3, "identifier")}];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __70__PGManager_KnowledgeSPI___summaryOfInferencesForMomentNodes_inGraph___block_invoke_3;
  v30[3] = &unk_278889EA0;
  v15 = v5;
  v31 = v15;
  v16 = v13;
  v32 = v16;
  [v14 enumerateNodesUsingBlock:v30];
  if ([v16 count])
  {
    [v4 setObject:v16 forKeyedSubscript:@"persons"];
  }

  v17 = objc_alloc(MEMORY[0x277CCA970]);
  v18 = [v3 universalStartDate];
  v19 = [v3 universalEndDate];
  v20 = [v17 initWithStartDate:v18 endDate:v19];

  [v4 setObject:v20 forKeyedSubscript:@"eventUniversalDateInterval"];
  v21 = [v3 localIdentifier];
  [v4 setObject:v21 forKeyedSubscript:@"localIdentifier"];

  if ([v15 count])
  {
    v22 = [v15 allObjects];
    [v4 setObject:v22 forKeyedSubscript:@"inferences"];
  }

  [*(a1 + 96) addObject:v4];
}

void __70__PGManager_KnowledgeSPI___summaryOfInferencesForMomentNodes_inGraph___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [v11 name];
  [v3 setObject:v4 forKeyedSubscript:@"name"];

  v5 = [v11 performers];
  if ([v5 count])
  {
    v6 = [v5 allObjects];
    [v3 setObject:v6 forKeyedSubscript:@"performers"];
  }

  v7 = [v11 collection];
  v8 = [v7 businessNodes];

  v9 = [v8 businessNames];
  if ([v9 count])
  {
    v10 = [v9 anyObject];
    [v3 setObject:v10 forKeyedSubscript:@"venue"];
  }

  [*(a1 + 32) addObject:v3];
}

void __70__PGManager_KnowledgeSPI___summaryOfInferencesForMomentNodes_inGraph___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [v8 localIdentifier];
  if ([v4 length])
  {
    [v3 setObject:v4 forKeyedSubscript:@"localIdentifier"];
  }

  v5 = [v8 contactIdentifier];
  if ([v5 length])
  {
    [v3 setObject:v5 forKeyedSubscript:@"contactIdentifier"];
  }

  v6 = [v8 name];
  if ([v6 length])
  {
    [v3 setObject:v6 forKeyedSubscript:@"name"];
  }

  if ([v8 isMemberOfMyFamily])
  {
    v7 = @"confirmed";
  }

  else
  {
    if (![v8 isInferredMemberOfMyFamily])
    {
      goto LABEL_12;
    }

    v7 = @"inferred";
  }

  [v3 setObject:v7 forKeyedSubscript:@"family"];
LABEL_12:
  if ([v8 ageCategory] == 1)
  {
    [*(a1 + 32) addObject:@"baby"];
  }

  if ([v3 count])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)summaryOfInferencesPerMomentInDateInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__39481;
  v17 = __Block_byref_object_dispose__39482;
  v18 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__PGManager_KnowledgeSPI__summaryOfInferencesPerMomentInDateInterval_error___block_invoke;
  v9[3] = &unk_278888EB8;
  v6 = intervalCopy;
  selfCopy = self;
  v12 = &v13;
  v10 = v6;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __76__PGManager_KnowledgeSPI__summaryOfInferencesPerMomentInDateInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 graph];
  v3 = [PGGraphMomentNodeCollection momentNodesInUniversalDateInterval:*(a1 + 32) inGraph:v7];
  v4 = [*(a1 + 40) _summaryOfInferencesForMomentNodes:v3 inGraph:v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)summaryOfInferencesPerMomentByLocalIdentifiers:(id)identifiers error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [MEMORY[0x277CD98F8] uuidFromLocalIdentifier:*(*(&v25 + 1) + 8 * i)];
        [v6 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__39481;
  v23 = __Block_byref_object_dispose__39482;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__PGManager_KnowledgeSPI__summaryOfInferencesPerMomentByLocalIdentifiers_error___block_invoke;
  v15[3] = &unk_278888EB8;
  v12 = v6;
  selfCopy = self;
  v18 = &v19;
  v16 = v12;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v15];
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __80__PGManager_KnowledgeSPI__summaryOfInferencesPerMomentByLocalIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 graph];
  v3 = [PGGraphMomentNodeCollection momentNodesForUUIDs:*(a1 + 32) inGraph:v7];
  v4 = [*(a1 + 40) _summaryOfInferencesForMomentNodes:v3 inGraph:v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)momentLocalIdentifiersInDateInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__PGManager_KnowledgeSPI__momentLocalIdentifiersInDateInterval_error___block_invoke;
  v12[3] = &unk_27888A638;
  v13 = intervalCopy;
  v7 = v6;
  v14 = v7;
  v8 = intervalCopy;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __70__PGManager_KnowledgeSPI__momentLocalIdentifiersInDateInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [PGGraphMomentNodeCollection momentNodesInUniversalDateInterval:*(a1 + 32) inGraph:v3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__PGManager_KnowledgeSPI__momentLocalIdentifiersInDateInterval_error___block_invoke_2;
  v5[3] = &unk_278889290;
  v6 = *(a1 + 40);
  [v4 enumerateNodesSortedByFloatPropertyForName:@"utcs" usingBlock:v5];
}

void __70__PGManager_KnowledgeSPI__momentLocalIdentifiersInDateInterval_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localIdentifier];
  [v2 addObject:v3];
}

- (double)libraryDuration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__PGManager_MoodKeywords__libraryDuration__block_invoke;
  v4[3] = &unk_27888A5C0;
  v4[4] = &v5;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __42__PGManager_MoodKeywords__libraryDuration__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 graph];
  [v4 libraryDuration];
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

- (id)_recentlyUsedSongAdamIDsFromCurationOptions:(id)options
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  optionsCopy = options;
  recentlyUsedSongAdamIDs = [optionsCopy recentlyUsedSongAdamIDs];
  v7 = [v4 setWithArray:recentlyUsedSongAdamIDs];

  rootMemoryLocalIdentifier = [optionsCopy rootMemoryLocalIdentifier];

  if (rootMemoryLocalIdentifier)
  {
    photoLibrary = [(PGManager *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIncludeLocalMemories:1];
    v11 = MEMORY[0x277CD98D8];
    v18[0] = rootMemoryLocalIdentifier;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v13 = [v11 fetchAssetCollectionsWithLocalIdentifiers:v12 options:librarySpecificFetchOptions];

    firstObject = [v13 firstObject];
    if (firstObject)
    {
      v15 = [PGKeySongExtractor appleMusicKeySongIDFromMemory:firstObject];
      if (v15)
      {
        [v7 addObject:v15];
      }
    }
  }

  allObjects = [v7 allObjects];

  return allObjects;
}

- (id)musicCurationInflationContextWithInflationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_musicCache || ([(PGManager *)selfCopy photoLibrary], v8 = objc_claimAutoreleasedReturnValue(), [PGMusicCache cacheWithPhotoLibrary:v8 error:error], v9 = objc_claimAutoreleasedReturnValue(), musicCache = selfCopy->_musicCache, selfCopy->_musicCache = v9, musicCache, v8, selfCopy->_musicCache))
  {
    v11 = +[PGMusicCurationInflationOptions stringFromInflationActionSource:](PGMusicCurationInflationOptions, "stringFromInflationActionSource:", [optionsCopy inflationActionSource]);
    v12 = +[PGMusicCurationInflationContext contextWithMusicCache:actionSource:shouldForceMetadataRefetch:](PGMusicCurationInflationContext, "contextWithMusicCache:actionSource:shouldForceMetadataRefetch:", selfCopy->_musicCache, v11, [optionsCopy shouldForceMetadataRefetch]);
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(selfCopy);

  return v12;
}

- (id)musicCuratorContextWithCurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_musicCache || ([(PGManager *)selfCopy photoLibrary], v8 = objc_claimAutoreleasedReturnValue(), [PGMusicCache cacheWithPhotoLibrary:v8 error:error], v9 = objc_claimAutoreleasedReturnValue(), v10 = selfCopy->_musicCache, selfCopy->_musicCache = v9, v10, v8, selfCopy->_musicCache))
  {
    musicBag = [(PGManager *)selfCopy musicBag];

    if (!musicBag)
    {
      v12 = [[PGMusicBag alloc] initWithCache:selfCopy->_musicCache];
      [(PGManager *)selfCopy setMusicBag:v12];
    }

    if (+[PGUserDefaults musicCurationAllowExplicitMusicContent])
    {
      v13 = MEMORY[0x277CBEC38];
    }

    else
    {
      v13 = MEMORY[0x277CBEC28];
    }

    musicCurationSpecificationOptions = [optionsCopy musicCurationSpecificationOptions];
    if (musicCurationSpecificationOptions && ([optionsCopy musicCurationSpecificationOptions], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "genres"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v15, musicCurationSpecificationOptions, v17))
    {
      musicCurationSpecificationOptions2 = [optionsCopy musicCurationSpecificationOptions];
      genres = [musicCurationSpecificationOptions2 genres];
      firstObject = [genres firstObject];
    }

    else
    {
      firstObject = 0;
    }

    if ([optionsCopy useMemoryCreationMusicCuratorConfiguration])
    {
      v32 = +[PGMusicCuratorConfigurationWrapper memoryCreationConfiguration];
      v20 = v13;
      errorCopy2 = error;
      v22 = MEMORY[0x277CBEC38];
    }

    else
    {
      v20 = v13;
      errorCopy2 = error;
      v32 = 0;
      v22 = MEMORY[0x277CBEC28];
    }

    photoLibrary = [(PGManager *)selfCopy photoLibrary];
    musicCache = selfCopy->_musicCache;
    musicBag2 = [(PGManager *)selfCopy musicBag];
    flexSongProviderName = [optionsCopy flexSongProviderName];
    v27 = [PGMusicCuratorContext contextWithPhotoLibrary:photoLibrary adamIDsWithNegativeUserFeedback:0 allowExplicitMusicContent:v20 cache:musicCache musicBag:musicBag2 flexProviderName:flexSongProviderName recentlyUsedSongs:0 genre:firstObject isMemoryCreationCuration:v22 configuration:v32 error:errorCopy2];

    v28 = [(PGManager *)selfCopy _recentlyUsedSongAdamIDsFromCurationOptions:optionsCopy];
    if (v28)
    {
      recentlyUsedSongs = [v27 recentlyUsedSongs];
      date = [MEMORY[0x277CBEAA8] date];
      [recentlyUsedSongs addSongIDs:v28 date:date];
    }

    [v27 setUseOnlyMusicForTopicInTopPickSuggestions:{objc_msgSend(optionsCopy, "useOnlyMusicForTopicInTopPickSuggestions")}];
    [v27 setAllowChillMixElection:{objc_msgSend(optionsCopy, "includeChillMixInMusicForYou")}];
    [v27 setAllowGetUpMixElection:{objc_msgSend(optionsCopy, "includeGetUpMixInMusicForYou")}];
    [v27 setRefreshSongMetadata:{objc_msgSend(optionsCopy, "shouldRefreshSongMetadata")}];
    [v27 setForceShareableInBestSuggestions:{objc_msgSend(optionsCopy, "shouldForceShareableInBestSuggestions")}];
  }

  else
  {
    v27 = 0;
  }

  objc_sync_exit(selfCopy);

  return v27;
}

- (id)musicCuratorContextWithRecentlyUsedSongAdamIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_musicCache || ([(PGManager *)selfCopy photoLibrary], v8 = objc_claimAutoreleasedReturnValue(), [PGMusicCache cacheWithPhotoLibrary:v8 error:error], v9 = objc_claimAutoreleasedReturnValue(), v10 = selfCopy->_musicCache, selfCopy->_musicCache = v9, v10, v8, selfCopy->_musicCache))
  {
    musicBag = [(PGManager *)selfCopy musicBag];

    if (!musicBag)
    {
      v12 = [[PGMusicBag alloc] initWithCache:selfCopy->_musicCache];
      [(PGManager *)selfCopy setMusicBag:v12];
    }

    v13 = +[PGUserDefaults musicCurationAllowExplicitMusicContent];
    v14 = MEMORY[0x277CBEC28];
    if (v13)
    {
      v15 = MEMORY[0x277CBEC38];
    }

    else
    {
      v15 = MEMORY[0x277CBEC28];
    }

    photoLibrary = [(PGManager *)selfCopy photoLibrary];
    musicCache = selfCopy->_musicCache;
    musicBag2 = [(PGManager *)selfCopy musicBag];
    v19 = [PGMusicCuratorContext contextWithPhotoLibrary:photoLibrary adamIDsWithNegativeUserFeedback:0 allowExplicitMusicContent:v15 cache:musicCache musicBag:musicBag2 flexProviderName:0 recentlyUsedSongs:0 genre:0 isMemoryCreationCuration:v14 configuration:0 error:error];

    if (dsCopy)
    {
      recentlyUsedSongs = [v19 recentlyUsedSongs];
      date = [MEMORY[0x277CBEAA8] date];
      [recentlyUsedSongs addSongIDs:dsCopy date:date];
    }
  }

  else
  {
    v19 = 0;
  }

  objc_sync_exit(selfCopy);

  return v19;
}

- (unint64_t)_numberOfAssetsMatchingInternalPredicate:(id)predicate
{
  v3 = [(PGManager *)self _fetchResultMatchingInternalPredicate:predicate];
  v4 = [v3 count];

  return v4;
}

- (id)_fetchResultMatchingInternalPredicate:(id)predicate
{
  v10[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  photoLibrary = [(PGManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v10[0] = *MEMORY[0x277CD9A80];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [librarySpecificFetchOptions addFetchPropertySets:v7];

  [librarySpecificFetchOptions setInternalPredicate:predicateCopy];
  v8 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];

  return v8;
}

- (id)_stringDescriptionForPetsWithGraph:(id)graph
{
  v25 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  _dateFormatter = [(PGManager *)self _dateFormatter];
  v6 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:graphCopy];
  v7 = [MEMORY[0x277CCAB68] stringWithFormat:@"\nNumber of Pets: %lu\n", objc_msgSend(v6, "count")];
  array = [MEMORY[0x277CBEB18] array];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__PGManager_Debug___stringDescriptionForPetsWithGraph___block_invoke;
  v21[3] = &unk_278885FE0;
  v9 = _dateFormatter;
  v22 = v9;
  v10 = array;
  v23 = v10;
  [v6 enumerateNodesUsingBlock:v21];
  [v10 sortUsingSelector:sel_caseInsensitiveCompare_];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v7 appendString:*(*(&v17 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v13);
  }

  return v7;
}

void __55__PGManager_Debug___stringDescriptionForPetsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v59[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [v2 collection];
  v5 = [v4 ownerNodes];
  v6 = +[PGGraphPersonNode personSortDescriptors];
  v7 = [v5 sortedArrayUsingDescriptors:v6];

  v8 = +[PGGraphPetNode stringFromPetSpecies:](PGGraphPetNode, "stringFromPetSpecies:", [v2 petSpecies]);
  v9 = [v2 name];
  v10 = [v2 localIdentifier];
  [v3 appendFormat:@"%@ with name %@ and local identifier %@ owned by:", v8, v9, v10];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v54;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v53 + 1) + 8 * i) name];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = @"Unnamed owner";
        }

        [v3 appendFormat:@"%@, ", v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v13);
  }

  v46 = v11;

  v47 = v2;
  v19 = [v2 collection];
  v20 = [v19 momentNodes];
  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v59[0] = v21;
  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  v59[1] = v22;
  v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v59[2] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];

  v25 = [v20 sortedArrayUsingDescriptors:v24];

  v26 = [v25 firstObject];
  v27 = [v26 localStartDate];

  v28 = [v25 lastObject];
  v29 = [v28 localStartDate];

  v30 = [v25 count];
  v45 = v27;
  v31 = [*(a1 + 32) stringFromDate:v27];
  v44 = v29;
  v32 = [*(a1 + 32) stringFromDate:v29];
  [v3 appendFormat:@"\n\t\t%lu moments from %@ to %@:\n", v30, v31, v32];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v33 = v25;
  v34 = [v33 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v50;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v49 + 1) + 8 * j);
        v39 = *(a1 + 32);
        v40 = [v38 localStartDate];
        v41 = [v39 stringFromDate:v40];
        [v3 appendFormat:@"\t\t%@", v41];

        v42 = [v38 bestAddressNode];
        v43 = [v42 keywordDescription];
        [v3 appendFormat:@"\t\t\t%@\n", v43];
      }

      v35 = [v33 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v35);
  }

  [*(a1 + 40) addObject:v3];
}

- (id)_sortedTextFeaturesFromTextFeatures:(id)features
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC98];
  featuresCopy = features;
  v5 = [v3 sortDescriptorWithKey:@"type" ascending:1];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"origin" ascending:1];
  v10[0] = v5;
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [featuresCopy sortedArrayUsingDescriptors:v7];

  return v8;
}

- (id)sharingMessageSuggestionDebugInformationForAssetCollection:(id)collection
{
  collectionCopy = collection;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__PGManager_Debug__sharingMessageSuggestionDebugInformationForAssetCollection___block_invoke;
  v10[3] = &unk_27888A4D0;
  v11 = collectionCopy;
  v6 = dictionary;
  v12 = v6;
  selfCopy = self;
  v7 = collectionCopy;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v10];
  v8 = v6;

  return v6;
}

void __79__PGManager_Debug__sharingMessageSuggestionDebugInformationForAssetCollection___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uuid];
  v6 = [v4 graph];

  v7 = [PGGraphMomentNodeCollection momentNodeForUUID:v5 inGraph:v6];
  v8 = [v7 anyNode];

  if (v8)
  {
    v22[0] = @"title";
    v9 = [*(a1 + 32) localizedTitle];
    v10 = v9;
    v11 = &stru_2843F5C58;
    if (v9)
    {
      v11 = v9;
    }

    v23[0] = v11;
    v23[1] = &unk_2844841E8;
    v22[1] = @"numberOfMoments";
    v22[2] = @"numberOfHighlights";
    v23[2] = &unk_284484200;
    v23[3] = &unk_2844840F8;
    v22[3] = @"graphSchemaVersion";
    v22[4] = @"curationAlgorithmsVersion";
    v22[5] = @"memoriesAlgorithmsVersion";
    v23[4] = &unk_284484110;
    v23[5] = &unk_284484128;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
    [*(a1 + 40) setObject:v12 forKeyedSubscript:@"info"];

    v13 = *(a1 + 48);
    v14 = [v8 naturalLanguageFeatures];
    v15 = [v13 _sortedTextFeaturesFromTextFeatures:v14];

    v16 = [MEMORY[0x277CBEB38] dictionary];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __79__PGManager_Debug__sharingMessageSuggestionDebugInformationForAssetCollection___block_invoke_1576;
    v20[3] = &unk_278885FB8;
    v21 = v16;
    v17 = v16;
    [v15 enumerateObjectsUsingBlock:v20];
    [*(a1 + 40) setObject:v17 forKeyedSubscript:@"textFeatures"];
  }

  else
  {
    v18 = +[PGLogging sharedLogging];
    v15 = [v18 loggingConnection];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v25 = v19;
      _os_log_error_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_ERROR, "No moment node found for %@", buf, 0xCu);
    }
  }
}

void __79__PGManager_Debug__sharingMessageSuggestionDebugInformationForAssetCollection___block_invoke_1576(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v8 = [v5 stringWithFormat:@"%lu", a3];
  v7 = [v6 description];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
}

- (id)_dayOfWeekStatisticsWithGraph:(id)graph
{
  v34 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"Number of moments by day of week:\n"];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = 0;
  v4 = [&unk_284486270 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = *v30;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(&unk_284486270);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        v8 = [graphCopy dayOfWeekNodeForDayOfWeek:{objc_msgSend(v7, "integerValue")}];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __50__PGManager_Debug___dayOfWeekStatisticsWithGraph___block_invoke;
        v24[3] = &unk_278885C98;
        v24[4] = &v25;
        [v8 enumerateNeighborNodesThroughEdgesWithLabel:@"DAYOFWEEK" domain:400 usingBlock:v24];
        name = [v8 name];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26[3]];
        [string appendFormat:@"\t%@: %@ moments\n", name, v10];

        v11 = v26[3];
        v3 += v11;
        _Block_object_dispose(&v25, 8);
      }

      v4 = [&unk_284486270 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v4);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  [string appendFormat:@"\n\tTotal: %@ moments\n", v12];

  v13 = [graphCopy anyNodeForLabel:@"Weekend" domain:400 properties:0];
  v14 = v13;
  if (v13)
  {
    edgesCount = [v13 edgesCount];
  }

  else
  {
    edgesCount = 0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:edgesCount];
  [string appendFormat:@"\n\tWeekend: %@ moments\n", v16];

  v17 = [graphCopy anyNodeForLabel:@"Weekday" domain:400 properties:0];
  v18 = v17;
  if (v17)
  {
    edgesCount2 = [v17 edgesCount];
  }

  else
  {
    edgesCount2 = 0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:edgesCount2];
  [string appendFormat:@"\tWeekday: %@ moments\n", v20];

  return string;
}

void __50__PGManager_Debug___dayOfWeekStatisticsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 collection];
  v4 = [v3 momentNodes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PGManager_Debug___dayOfWeekStatisticsWithGraph___block_invoke_2;
  v5[3] = &unk_278885948;
  v5[4] = *(a1 + 32);
  [v4 enumerateNodesUsingBlock:v5];
}

- (id)snapshotOuputFilePathURLForKey:(id)key
{
  keyCopy = key;
  defaultSnapshotRootPath = [(PGManager *)self defaultSnapshotRootPath];
  v6 = [(PGManager *)self _snapshotFilenameForLookupKey:keyCopy];

  if (v6)
  {
    v7 = [defaultSnapshotRootPath stringByAppendingPathComponent:v6];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:defaultSnapshotRootPath];
  }

  return v8;
}

- (id)_snapshotFilenameForLookupKey:(id)key
{
  keyCopy = key;
  if (_snapshotFilenameForLookupKey__onceToken != -1)
  {
    dispatch_once(&_snapshotFilenameForLookupKey__onceToken, &__block_literal_global_1519);
  }

  if (_snapshotFilenameForLookupKey__snapshotFilenameLookup)
  {
    v4 = [_snapshotFilenameForLookupKey__snapshotFilenameLookup valueForKey:keyCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __50__PGManager_Debug___snapshotFilenameForLookupKey___block_invoke()
{
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Graph.plist", @"snapshotFilenameForGraphState", @"photosgraph.kgdb", @"filenameForGraphKGDBSnapshot", @"CurationResult.bundle", @"snapshotFilenameForCurationResults", @"DebugInfoForRelated.plist", @"snapshotFilenameForDebugInfoForRelated", @"Memories.plist", @"snapshotFilenameForMemories", @"LibraryStatistics.plist", @"snapshotFilenameForLibraryStatistics", @"Errors.txt", @"snapshotFilenameForErrors", @"GraphStatistics.txt", @"snapshotFilenameForGraphStatistics", 0}];
  v1 = _snapshotFilenameForLookupKey__snapshotFilenameLookup;
  _snapshotFilenameForLookupKey__snapshotFilenameLookup = v0;
}

- (id)defaultPeopleClustersExportIntermediatePath
{
  v2 = [MEMORY[0x277CCACA8] stringWithString:@"/var/mobile/Media/PhotoData"];
  v3 = [v2 stringByAppendingPathComponent:@"PeopleClusters"];

  return v3;
}

- (id)fastGraphExportFullPath
{
  graphPersistenceParentDirectoryURL = [(PGManager *)self graphPersistenceParentDirectoryURL];
  path = [graphPersistenceParentDirectoryURL path];

  v4 = [path stringByAppendingPathComponent:@"Graph.plist"];

  return v4;
}

- (id)defaultGraphExportFullPath
{
  v2 = [MEMORY[0x277CCACA8] stringWithString:@"/var/mobile/Media/PhotoData"];
  v3 = [v2 stringByAppendingPathComponent:@"Graph.plist"];

  return v3;
}

- (id)_getDefaultOutputPathForMetadataSnapshot
{
  metadataSnapshotOutputPathURL = [(PGManager *)self metadataSnapshotOutputPathURL];
  v3 = metadataSnapshotOutputPathURL;
  if (metadataSnapshotOutputPathURL)
  {
    path = [metadataSnapshotOutputPathURL path];
  }

  else
  {
    v5 = NSTemporaryDirectory();
    path = [v5 stringByAppendingPathComponent:@"Caches/Internal/MemoriesRelated/Memories"];
  }

  return path;
}

- (id)utilityAssetInformation
{
  v42 = *MEMORY[0x277D85DE8];
  photoLibrary = [(PGManager *)self photoLibrary];
  v3 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary];
  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v5 = +[PGCurationManager assetPropertySetsForCuration];
  v26 = librarySpecificFetchOptions;
  [librarySpecificFetchOptions setFetchPropertySets:v5];

  v23 = photoLibrary;
  librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
  [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:3 subtype:0x7FFFFFFFFFFFFFFFLL options:?];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v27)
  {
    v25 = *v37;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v6;
        v7 = *(*(&v36 + 1) + 8 * v6);
        context = objc_autoreleasePoolPush();
        v28 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v7 options:v26];
        v8 = [MEMORY[0x277CD97A8] clsAllAssetsFromFetchResult:? prefetchOptions:? curationContext:?];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v33;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v33 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v32 + 1) + 8 * i);
              curationModel = [v13 curationModel];
              v15 = [curationModel isUtilityWithAsset:v13];
              userFeedbackCalculator = [v3 userFeedbackCalculator];
              v17 = [curationModel isUtilityForMemoriesWithAsset:v13 userFeedbackCalculator:userFeedbackCalculator blockSocialMediaImportedAssets:0];

              v18 = 4;
              if (!v17)
              {
                v18 = 0;
              }

              if (v18 | v15)
              {
                v19 = [MEMORY[0x277CCABB0] numberWithInteger:?];
                uuid = [v13 uuid];
                [v31 setObject:v19 forKeyedSubscript:uuid];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v10);
        }

        objc_autoreleasePoolPop(context);
        v6 = v30 + 1;
      }

      while (v30 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v27);
  }

  return v31;
}

- (id)sharingSuggestionDebugInformationForSuggestion:(id)suggestion
{
  v79 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  photoLibrary = [(PGManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v53 = librarySpecificFetchOptions;
  v8 = [MEMORY[0x277CD97A8] fetchKeyAssetsInAssetCollection:suggestionCopy options:librarySpecificFetchOptions];
  v9 = [MEMORY[0x277CD97A8] fetchRepresentativeAssetsInAssetCollection:suggestionCopy];
  v54 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v71;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v71 != v13)
        {
          objc_enumerationMutation(v10);
        }

        localIdentifier = [*(*(&v70 + 1) + 8 * i) localIdentifier];
        [v54 addObject:localIdentifier];
      }

      v12 = [v10 countByEnumeratingWithState:&v70 objects:v78 count:16];
    }

    while (v12);
  }

  v16 = [MEMORY[0x277CD98F8] fetchMomentsForAssetsWithLocalIdentifiers:v54 options:v53];
  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __67__PGManager_Debug__sharingSuggestionDebugInformationForSuggestion___block_invoke;
  v63[3] = &unk_278885F30;
  v18 = v16;
  v64 = v18;
  v19 = v17;
  v65 = v19;
  v51 = suggestionCopy;
  v66 = v51;
  v52 = dictionary;
  v67 = v52;
  v49 = v10;
  v68 = v49;
  v48 = v8;
  v69 = v48;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v63];
  v20 = objc_opt_new();
  [v20 setSharingStream:1];
  workingContextForSuggestions = [(PGManager *)self workingContextForSuggestions];
  v45 = [[PGSharingManager alloc] initWithWorkingContext:workingContextForSuggestions];
  v50 = v19;
  v47 = v20;
  v21 = [(PGSharingManager *)v45 suggestionResultsForAssetLocalIdentifiers:0 momentLocalIdentifiers:v19 options:v20];
  v22 = MEMORY[0x277CBEB38];
  v76 = @"numberOfPeopleSuggestions";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
  v77 = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  v25 = [v22 dictionaryWithDictionary:v24];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v26 = v21;
  v27 = [v26 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v60;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v60 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v59 + 1) + 8 * j);
        sourceNames = [v31 sourceNames];
        person = [v31 person];
        keywordDescription = [person keywordDescription];
        [v25 setObject:sourceNames forKeyedSubscript:keywordDescription];
      }

      v28 = [v26 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v28);
  }

  [v52 setObject:v25 forKeyedSubscript:@"people"];
  v35 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v36 = v18;
  v37 = [v36 countByEnumeratingWithState:&v55 objects:v74 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v56;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v56 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [(PGManager *)self keywordsForAssetCollection:*(*(&v55 + 1) + 8 * k) relatedType:63];
        if (v41)
        {
          v42 = [objc_opt_class() exportableDictionaryFromKeywords:v41];
          [v35 addEntriesFromDictionary:v42];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v55 objects:v74 count:16];
    }

    while (v38);
  }

  [v52 setObject:v35 forKeyedSubscript:@"content"];
  v43 = v52;

  return v52;
}

void __67__PGManager_Debug__sharingSuggestionDebugInformationForSuggestion___block_invoke(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v45 = a2;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v3 = objc_alloc_init(PGNeighborScoreComputer);
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v51 objects:v69 count:16];
  if (v6)
  {
    v7 = *v52;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v51 + 1) + 8 * i);
        v10 = *(a1 + 40);
        v11 = [v9 localIdentifier];
        [v10 addObject:v11];

        v12 = [v9 uuid];
        [v4 addObject:v12];
      }

      v6 = [v5 countByEnumeratingWithState:&v51 objects:v69 count:16];
    }

    while (v6);
  }

  v13 = [v45 graph];
  v44 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v4 inGraph:v13];

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __67__PGManager_Debug__sharingSuggestionDebugInformationForSuggestion___block_invoke_2;
  v46[3] = &unk_278885F08;
  v30 = v3;
  v47 = v30;
  v48 = &v63;
  v49 = &v59;
  v50 = &v55;
  [v44 enumerateNodesUsingBlock:v46];
  v14 = [*(a1 + 48) featuresProperties];
  v31 = [v14 objectForKeyedSubscript:@"deviceInformation"];

  v67[0] = @"title";
  v43 = [*(a1 + 48) localizedTitle];
  v15 = v43;
  if (!v43)
  {
    v15 = &stru_2843F5C58;
  }

  v68[0] = v15;
  v67[1] = @"subtitle";
  v42 = [*(a1 + 48) localizedSubtitle];
  v16 = v42;
  if (!v42)
  {
    v16 = &stru_2843F5C58;
  }

  v68[1] = v16;
  v67[2] = @"creationDate";
  v41 = [*(a1 + 48) creationDate];
  v17 = v41;
  if (!v41)
  {
    v17 = &stru_2843F5C58;
  }

  v68[2] = v17;
  v67[3] = @"activationDate";
  v40 = [*(a1 + 48) activationDate];
  v18 = v40;
  if (!v40)
  {
    v18 = &stru_2843F5C58;
  }

  v68[3] = v18;
  v67[4] = @"relevantUntilDate";
  v39 = [*(a1 + 48) relevantUntilDate];
  v19 = v39;
  if (!v39)
  {
    v19 = &stru_2843F5C58;
  }

  v68[4] = v19;
  v67[5] = @"expungeDate";
  v38 = [*(a1 + 48) expungeDate];
  v20 = v38;
  if (!v38)
  {
    v20 = &stru_2843F5C58;
  }

  v68[5] = v20;
  v67[6] = @"type";
  [*(a1 + 48) type];
  v37 = PHSuggestionStringWithType();
  v68[6] = v37;
  v67[7] = @"subtype";
  [*(a1 + 48) subtype];
  v36 = PHSuggestionStringWithSubtype();
  v68[7] = v36;
  v67[8] = @"state";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(*(a1 + 48), "state")}];
  v68[8] = v35;
  v67[9] = @"notificationState";
  [*(a1 + 48) notificationState];
  v34 = PHSuggestionNotificationStateStringWithNotificationState();
  v68[9] = v34;
  v67[10] = @"version";
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "version")}];
  v68[10] = v33;
  v67[11] = @"neighborScore";
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:v64[3]];
  v68[11] = v32;
  v67[12] = @"neighborScoreInteresting";
  v21 = [MEMORY[0x277CCABB0] numberWithInt:v64[3] > 0.43];
  v68[12] = v21;
  v67[13] = @"neighborScoreHighlyInteresting";
  v22 = [MEMORY[0x277CCABB0] numberWithInt:v64[3] > 0.6];
  v68[13] = v22;
  v67[14] = @"isInteresting";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:*(v60 + 24)];
  v68[14] = v23;
  v67[15] = @"isSmartInteresting";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:*(v56 + 24)];
  v68[15] = v24;
  v67[16] = @"representativeAssetsCount";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 64), "count")}];
  v68[16] = v25;
  v67[17] = @"keyAssetsCount";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 72), "count")}];
  v68[17] = v26;
  v67[18] = @"numberOfMoments";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  v68[18] = v27;
  v68[19] = &unk_2844840F8;
  v67[19] = @"graphSchemaVersion";
  v67[20] = @"curationAlgorithmsVersion";
  v68[20] = &unk_284484110;
  v68[21] = &unk_284484128;
  v67[21] = @"memoriesAlgorithmsVersion";
  v67[22] = @"deviceInfo";
  v28 = v31;
  if (!v31)
  {
    v28 = &stru_2843F5C58;
  }

  v68[22] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:23];
  [*(a1 + 56) setObject:v29 forKeyedSubscript:@"info"];

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
}

void __67__PGManager_Debug__sharingSuggestionDebugInformationForSuggestion___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v3 neighborScoreWithMomentNode:v4];
  v6 = *(a1[5] + 8);
  if (v5 > *(v6 + 24))
  {
    *(v6 + 24) = v5;
  }

  *(*(a1[6] + 8) + 24) |= [v4 isInteresting];
  v7 = [v4 isSmartInteresting];

  *(*(a1[7] + 8) + 24) |= v7;
}

- (id)_domainLabelCountStatisticsWithGraph:(id)graph
{
  v54 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = [MEMORY[0x277CCAB68] stringWithString:@"\nCounts by domain and label:\nnodes:"];
  nodesDomains = [graphCopy nodesDomains];
  nodesLabels = [graphCopy nodesLabels];
  allObjects = [nodesLabels allObjects];
  v8 = [allObjects mutableCopy];

  [v8 sortUsingComparator:&__block_literal_global_1397];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __57__PGManager_Debug___domainLabelCountStatisticsWithGraph___block_invoke_2;
  v49[3] = &unk_278889B40;
  v9 = graphCopy;
  v50 = v9;
  v10 = v4;
  v51 = v10;
  v37 = nodesDomains;
  [nodesDomains enumerateIndexesUsingBlock:v49];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v46;
    v15 = *MEMORY[0x277D22CB0];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        v18 = [v9 nodesCountForLabel:v17 domain:v15];
        if (v18)
        {
          [v10 appendFormat:@"\nlabel %@ %lu", v17, v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v13);
  }

  [v10 appendString:@"\nedges:"];
  edgesDomains = [v9 edgesDomains];
  edgesLabels = [v9 edgesLabels];
  allObjects2 = [edgesLabels allObjects];
  v22 = [allObjects2 mutableCopy];

  [v22 sortUsingComparator:&__block_literal_global_1408];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __57__PGManager_Debug___domainLabelCountStatisticsWithGraph___block_invoke_4;
  v42[3] = &unk_278889B40;
  v23 = v9;
  v43 = v23;
  v24 = v10;
  v44 = v24;
  v36 = edgesDomains;
  [edgesDomains enumerateIndexesUsingBlock:v42];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = v22;
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v39;
    v29 = *MEMORY[0x277D22CB0];
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v38 + 1) + 8 * j);
        v32 = [v23 edgesCountForLabel:v31 domain:v29];
        if (v32)
        {
          [v24 appendFormat:@"\nlabel %@ %lu", v31, v32];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v27);
  }

  v33 = v44;
  v34 = v24;

  return v24;
}

void *__57__PGManager_Debug___domainLabelCountStatisticsWithGraph___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) nodesCountForDomain:a2];
  if (result)
  {
    return [*(a1 + 40) appendFormat:@"\ndomain %lu %lu", a2, result];
  }

  return result;
}

void *__57__PGManager_Debug___domainLabelCountStatisticsWithGraph___block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) edgesCountForLabel:0 domain:a2];
  if (result)
  {
    return [*(a1 + 40) appendFormat:@"\ndomain %lu %lu", a2, result];
  }

  return result;
}

- (id)_mobilityStatisticsWithGraph:(id)graph
{
  v21 = *MEMORY[0x277D85DE8];
  momentNodesSortedByDate = [graph momentNodesSortedByDate];
  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"\nLocation Mobility:"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = momentNodesSortedByDate;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        locationMobilityType = [v10 locationMobilityType];
        if (locationMobilityType)
        {
          if (locationMobilityType > 4)
          {
            v12 = 0;
          }

          else
          {
            v12 = off_27887F2D0[locationMobilityType];
          }

          v13 = v12;
          name = [v10 name];
          [v4 appendFormat:@"\n\tMoment %@, mobility %@", name, v13, v16];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_titleStatisticsWithGraph:(id)graph titleGenerationContext:(id)context
{
  v69 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  contextCopy = context;
  v52 = graphCopy;
  momentNodesSortedByDate = [graphCopy momentNodesSortedByDate];
  array = [MEMORY[0x277CBEB18] array];
  v8 = [momentNodesSortedByDate count];
  selfCopy = self;
  photoLibrary = [(PGManager *)self photoLibrary];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = momentNodesSortedByDate;
  v9 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v9)
  {
    v10 = v9;
    v48 = v8;
    v11 = 0;
    v12 = 0;
    v13 = off_27887C000;
    v56 = *v64;
    v14 = 0.0;
    do
    {
      v15 = 0;
      v53 = v10;
      do
      {
        if (*v64 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v63 + 1) + 8 * v15);
        v17 = [objc_alloc(v13[39]) initWithMomentNode:v16 type:0 titleGenerationContext:contextCopy];
        title = [v17 title];
        stringValue = [title stringValue];

        subtitle = [v17 subtitle];
        stringValue2 = [subtitle stringValue];

        v22 = [(__CFString *)stringValue length];
        if ([(__CFString *)stringValue length]> 0x18)
        {
          ++v12;
        }

        if ([v16 isInteresting])
        {
          v23 = [v52 momentForMomentNode:v16 inPhotoLibrary:photoLibrary];
          _dateFormatter = [(PGManager *)selfCopy _dateFormatter];
          startDate = [v23 startDate];
          [_dateFormatter stringFromDate:startDate];
          v26 = v55 = v12;

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          localizedTitle = [v23 localizedTitle];
          v29 = localizedTitle;
          if (localizedTitle)
          {
            v30 = localizedTitle;
          }

          else
          {
            v30 = @"N/A";
          }

          [dictionary setObject:v30 forKeyedSubscript:@"assetCollectionTitle"];

          v13 = off_27887C000;
          if (v26)
          {
            v31 = v26;
          }

          else
          {
            v31 = @"N/A";
          }

          [dictionary setObject:v31 forKeyedSubscript:@"assetCollectionStartDate"];
          if (stringValue)
          {
            v32 = stringValue;
          }

          else
          {
            v32 = &stru_2843F5C58;
          }

          [dictionary setObject:v32 forKeyedSubscript:@"graphMomentTitle"];
          if (stringValue2)
          {
            v33 = stringValue2;
          }

          else
          {
            v33 = &stru_2843F5C58;
          }

          [dictionary setObject:v33 forKeyedSubscript:@"graphMomentSubtitle"];
          [array addObject:dictionary];

          v10 = v53;
          ++v11;
          v12 = v55;
        }

        v14 = v14 + v22;

        ++v15;
      }

      while (v10 != v15);
      v10 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v10);
    v34 = v12;
    v8 = v48;
  }

  else
  {
    v11 = 0;
    v14 = 0.0;
    v34 = 0.0;
  }

  if (v8)
  {
    v14 = v14 / v8;
    v35 = ((1.0 - (v34 / v8)) * 100.0);
  }

  else
  {
    v35 = 0.0;
  }

  v36 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n\nInteresting Moment Titles (%lu):\nAverage #characters: %f, %.f%% <= %lu characters\n", v11, v14, *&v35, 24];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v57 = array;
  v37 = [v57 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v60;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v60 != v39)
        {
          objc_enumerationMutation(v57);
        }

        v41 = *(*(&v59 + 1) + 8 * i);
        v42 = [v41 objectForKeyedSubscript:@"assetCollectionTitle"];
        v43 = [v41 objectForKeyedSubscript:@"graphMomentTitle"];
        v44 = [v41 objectForKeyedSubscript:@"graphMomentSubtitle"];
        v45 = [v42 length];
        v46 = [v41 objectForKeyedSubscript:@"assetCollectionStartDate"];
        [v36 appendFormat:@"\n\tMoment: %@ (#%lu, %@)\n\t\ttitle: %@ (#%lu)\n\t\tsubtitle: %@ (#%lu)\n", v42, v45, v46, v43, objc_msgSend(v43, "length"), v44, objc_msgSend(v44, "length")];
      }

      v38 = [v57 countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v38);
  }

  return v36;
}

- (id)_highlightTitleStatisticsWithGraph:(id)graph titleGenerationContext:(id)context
{
  v54 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  contextCopy = context;
  v39 = graphCopy;
  dayHighlightNodesSortedByDate = [graphCopy dayHighlightNodesSortedByDate];
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v8 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  [v7 setTimeZone:v8];

  v43 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n\nHighlight Titles (%lu):", objc_msgSend(dayHighlightNodesSortedByDate, "count")];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = dayHighlightNodesSortedByDate;
  v9 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v49;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v48 + 1) + 8 * i);
        v14 = [[PGHighlightTitleGenerator alloc] initWithCollection:v13 curatedAssetCollection:0 keyAsset:0 createVerboseTitle:0 titleGenerationContext:contextCopy];
        titleTuple = [(PGHighlightTitleGenerator *)v14 titleTuple];
        title = [titleTuple title];
        stringValue = [title stringValue];

        localStartDate = [v13 localStartDate];
        v19 = [v7 stringFromDate:localStartDate];

        localEndDate = [v13 localEndDate];
        v21 = [v7 stringFromDate:localEndDate];

        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\t highlight:\t[%@ - %@]", v19, v21];
        [v43 appendFormat:@"%@ \ttitle:\t%@", v22, stringValue];
      }

      v10 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v10);
  }

  highlightGroupNodesSortedByDate = [v39 highlightGroupNodesSortedByDate];
  [v43 appendFormat:@"\n\nHighlight Group Titles (%lu):", objc_msgSend(highlightGroupNodesSortedByDate, "count")];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v40 = highlightGroupNodesSortedByDate;
  v24 = [v40 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v45;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(v40);
        }

        v28 = *(*(&v44 + 1) + 8 * j);
        v29 = [[PGHighlightTitleGenerator alloc] initWithCollection:v28 curatedAssetCollection:0 keyAsset:0 createVerboseTitle:0 titleGenerationContext:contextCopy];
        titleTuple2 = [(PGHighlightTitleGenerator *)v29 titleTuple];
        title2 = [titleTuple2 title];
        stringValue2 = [title2 stringValue];

        localStartDate2 = [v28 localStartDate];
        v34 = [v7 stringFromDate:localStartDate2];

        localEndDate2 = [v28 localEndDate];
        v36 = [v7 stringFromDate:localEndDate2];

        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\t highlight:\t[%@ - %@]", v34, v36];
        [v43 appendFormat:@"%@ \ttitle:\t%@", v37, stringValue2];
      }

      v25 = [v40 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v25);
  }

  return v43;
}

- (id)_stringDescriptionForPublicEventsWithGraph:(id)graph verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  v141[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v6 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  v102 = v5;
  [v5 setTimeZone:v6];

  v79 = graphCopy;
  v7 = [graphCopy nodesForLabel:@"PublicEvent" domain:900];
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v141[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:1];
  v78 = v7;
  v10 = [v7 sortedArrayUsingDescriptors:v9];

  v100 = [MEMORY[0x277CBEB58] set];
  v106 = objc_alloc_init(MEMORY[0x277CCAB68]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v127 objects:v140 count:16];
  if (v11)
  {
    v12 = v11;
    v107 = *v128;
    do
    {
      v13 = 0;
      v14 = sel_localizedCompare_;
      do
      {
        if (*v128 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v127 + 1) + 8 * v13);
        categories = [v15 categories];
        v17 = v14;
        v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:v14];
        v139 = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v139 count:1];
        v20 = [categories sortedArrayUsingDescriptors:v19];

        if ([v20 count])
        {
          firstObject = [v20 firstObject];
        }

        else
        {
          firstObject = @"No category";
        }

        dictionary2 = [dictionary objectForKeyedSubscript:firstObject];
        if (!dictionary2)
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:dictionary2 forKeyedSubscript:firstObject];
        }

        businessNode = [v15 businessNode];
        name = [businessNode name];
        v25 = name;
        v26 = @"No business";
        if (name)
        {
          v26 = name;
        }

        v27 = v26;

        v28 = [dictionary2 objectForKeyedSubscript:v27];
        if (!v28)
        {
          v28 = [MEMORY[0x277CBEB58] set];
          [dictionary2 setObject:v28 forKeyedSubscript:v27];
        }

        [v28 addObject:v15];

        ++v13;
        v14 = v17;
      }

      while (v12 != v13);
      v12 = [obj countByEnumeratingWithState:&v127 objects:v140 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = sel_localizedCompare_;
  }

  allKeys = [dictionary allKeys];
  v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:v14];
  v138 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v138 count:1];
  v32 = [allKeys sortedArrayUsingDescriptors:v31];

  publicEventManager = [(PGManager *)self publicEventManager];
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v80 = v32;
  v83 = [v80 countByEnumeratingWithState:&v123 objects:v137 count:16];
  if (v83)
  {
    v82 = *v124;
    v94 = v14;
    v99 = publicEventManager;
    do
    {
      v34 = 0;
      do
      {
        if (*v124 != v82)
        {
          objc_enumerationMutation(v80);
        }

        v84 = v34;
        v35 = *(*(&v123 + 1) + 8 * v34);
        v36 = [v35 stringByReplacingOccurrencesOfString:@"GEOSpatialEventLookupCategory" withString:&stru_2843F5C58];
        [v106 appendFormat:@"[%@]\n", v36];

        v88 = [dictionary objectForKeyedSubscript:v35];
        allKeys2 = [v88 allKeys];
        v38 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:v14];
        v136 = v38;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
        v40 = [allKeys2 sortedArrayUsingDescriptors:v39];

        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v86 = v40;
        v89 = [v86 countByEnumeratingWithState:&v119 objects:v135 count:16];
        if (v89)
        {
          v87 = *v120;
          do
          {
            v41 = 0;
            do
            {
              if (*v120 != v87)
              {
                objc_enumerationMutation(v86);
              }

              v91 = v41;
              v42 = *(*(&v119 + 1) + 8 * v41);
              [v106 appendFormat:@"\t%@\n", v42];
              v43 = [v88 objectForKeyedSubscript:v42];
              v44 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
              v134 = v44;
              v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
              v90 = v43;
              v46 = [v43 sortedArrayUsingDescriptors:v45];

              v117 = 0u;
              v118 = 0u;
              v115 = 0u;
              v116 = 0u;
              v95 = v46;
              v105 = [v95 countByEnumeratingWithState:&v115 objects:v133 count:16];
              if (v105)
              {
                v103 = *v116;
                do
                {
                  for (i = 0; i != v105; ++i)
                  {
                    if (*v116 != v103)
                    {
                      objc_enumerationMutation(v95);
                    }

                    v48 = *(*(&v115 + 1) + 8 * i);
                    v49 = [publicEventManager cachedPublicEventsForMuid:{objc_msgSend(v48, "muid")}];
                    if (![v49 count])
                    {
                      muid = [v48 muid];
                      keywordDescription = [v48 keywordDescription];
                      [v106 appendFormat:@"\t\t! Cannot find event %lu in cache: %@\n", muid, keywordDescription];
                    }

                    v52 = [MEMORY[0x277CBEB58] set];
                    array = [MEMORY[0x277CBEB18] array];
                    collection = [v48 collection];
                    momentNodes = [collection momentNodes];
                    v109[0] = MEMORY[0x277D85DD0];
                    v109[1] = 3221225472;
                    v109[2] = __71__PGManager_Debug___stringDescriptionForPublicEventsWithGraph_verbose___block_invoke;
                    v109[3] = &unk_278885A68;
                    v110 = v100;
                    v111 = v102;
                    v56 = array;
                    v112 = v56;
                    v108 = v49;
                    v113 = v108;
                    v57 = v52;
                    v114 = v57;
                    [momentNodes enumerateNodesUsingBlock:v109];

                    [v56 sortUsingSelector:v14];
                    v58 = [v56 componentsJoinedByString:{@", "}];
                    v59 = v58;
                    if (verboseCopy)
                    {
                      v98 = v58;
                      localizedCategories = [v48 localizedCategories];
                      v61 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:v14];
                      v132 = v61;
                      v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
                      name3 = [localizedCategories sortedArrayUsingDescriptors:v62];

                      performers = [v48 performers];
                      v65 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:v14];
                      v131 = v65;
                      v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];
                      v67 = [performers sortedArrayUsingDescriptors:v66];

                      v97 = [name3 componentsJoinedByString:{@", "}];
                      v68 = [v67 componentsJoinedByString:{@", "}];
                      allObjects = [v57 allObjects];
                      v96 = [allObjects componentsJoinedByString:&stru_2843F5C58];

                      expectedAttendance = [v48 expectedAttendance];
                      v71 = expectedAttendance;
                      v72 = @"N/A";
                      if (expectedAttendance && expectedAttendance != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v93 = [MEMORY[0x277CCABB0] numberWithInteger:expectedAttendance];
                        stringValue = [v93 stringValue];
                        v72 = stringValue;
                      }

                      v73 = v72;
                      if (v71 && v71 != 0x7FFFFFFFFFFFFFFFLL)
                      {
                      }

                      name2 = [v48 name];
                      v75 = v98;
                      [v106 appendFormat:@"\t\t%@ %@\n\t\t\tattendance %@, \n\t\t\tcategories: %@, \n\t\t\tperformers: %@ -> %@ \n", name2, v96, v73, v97, v68, v98];

                      v14 = v94;
                    }

                    else
                    {
                      name3 = [v48 name];
                      [v106 appendFormat:@"\t\t%@ -> %@ \n", name3, v59];
                      v75 = v59;
                    }

                    publicEventManager = v99;
                  }

                  v105 = [v95 countByEnumeratingWithState:&v115 objects:v133 count:16];
                }

                while (v105);
              }

              v41 = v91 + 1;
            }

            while (v91 + 1 != v89);
            v89 = [v86 countByEnumeratingWithState:&v119 objects:v135 count:16];
          }

          while (v89);
        }

        v34 = v84 + 1;
      }

      while (v84 + 1 != v83);
      v83 = [v80 countByEnumeratingWithState:&v123 objects:v137 count:16];
    }

    while (v83);
  }

  v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nPublic Events: %lu, Moments %lu\n%@", objc_msgSend(v78, "count"), objc_msgSend(v100, "count"), v106];

  return v106;
}

void __71__PGManager_Debug___stringDescriptionForPublicEventsWithGraph_verbose___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) addObject:v3];
  v4 = *(a1 + 40);
  v5 = [v3 localStartDate];
  v6 = [v4 stringFromDate:v5];

  v7 = *(a1 + 40);
  v8 = [v3 localEndDate];
  v9 = [v7 stringFromDate:v8];

  v10 = *(a1 + 48);
  v11 = MEMORY[0x277CCACA8];
  v12 = [v3 uuid];
  v31 = v9;
  v32 = v6;
  v13 = [v11 stringWithFormat:@"\n\t\t\tmoment: [%@ - %@] | %@", v6, v9, v12];
  [v10 addObject:v13];

  v14 = [v3 universalStartDate];
  v33 = v3;
  v29 = [v3 universalEndDate];
  v30 = v14;
  v15 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v29];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = *(a1 + 56);
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v35;
    do
    {
      v20 = 0;
      do
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v34 + 1) + 8 * v20) universalDateIntervalIncludingTime];
        if ([v15 intersectsDateInterval:v21])
        {
          v22 = *(a1 + 40);
          v23 = [v21 startDate];
          v24 = [v22 stringFromDate:v23];

          v25 = *(a1 + 40);
          v26 = [v21 endDate];
          v27 = [v25 stringFromDate:v26];

          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ - %@]", v24, v27];
          [*(a1 + 64) addObject:v28];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v18);
  }
}

- (id)_poiStatisticsWithGraph:(id)graph
{
  graphCopy = graph;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v5 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  [v4 setTimeZone:v5];

  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  poiNodes = [graphCopy poiNodes];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __44__PGManager_Debug___poiStatisticsWithGraph___block_invoke;
  v17 = &unk_278885EC0;
  v20 = &v21;
  v8 = v6;
  v18 = v8;
  v9 = v4;
  v19 = v9;
  [poiNodes enumerateNodesUsingBlock:&v14];
  v10 = MEMORY[0x277CCACA8];
  v11 = [poiNodes count];
  v12 = [v10 stringWithFormat:@"\nPOI: %lu, Moments: %lu\n%@", v11, v22[3], v8, v14, v15, v16, v17];

  _Block_object_dispose(&v21, 8);

  return v12;
}

void __44__PGManager_Debug___poiStatisticsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 momentNodes];

  *(*(*(a1 + 48) + 8) + 24) += [v5 count];
  v6 = [v3 label];

  [*(a1 + 32) appendFormat:@"\n%@: %lu\n", v6, objc_msgSend(v5, "count")];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__PGManager_Debug___poiStatisticsWithGraph___block_invoke_2;
  v7[3] = &unk_278888B78;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  [v5 enumerateNodesUsingBlock:v7];
}

void __44__PGManager_Debug___poiStatisticsWithGraph___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 localStartDate];
  v9 = [v3 stringFromDate:v5];

  v6 = *(a1 + 32);
  v7 = [v4 localEndDate];

  v8 = [v6 stringFromDate:v7];

  [*(a1 + 40) appendFormat:@"\tmoment:\t[%@ - %@]\n", v9, v8];
}

- (id)_stringDescriptionForBusinessItemsWithGraph:(id)graph includingInferredThroughPublicEvents:(BOOL)events verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  eventsCopy = events;
  v52[2] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v8 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v8 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v9 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  v40 = v8;
  [v8 setTimeZone:v9];

  v38 = graphCopy;
  businessNodes = [graphCopy businessNodes];
  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v52[0] = v11;
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v52[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v37 = businessNodes;
  v14 = [businessNodes sortedArrayUsingDescriptors:v13];

  v15 = [MEMORY[0x277CBEB58] set];
  v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = v14;
  v18 = eventsCopy;
  obj = v17;
  v41 = [v17 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v41)
  {
    v19 = *v48;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v48 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v47 + 1) + 8 * i);
        if (!v18)
        {
          publicEventNodes = [*(*(&v47 + 1) + 8 * i) publicEventNodes];
          v23 = [publicEventNodes count];

          if (v23)
          {
            continue;
          }
        }

        array = [MEMORY[0x277CBEB18] array];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __109__PGManager_Debug___stringDescriptionForBusinessItemsWithGraph_includingInferredThroughPublicEvents_verbose___block_invoke;
        v42[3] = &unk_278885E98;
        v43 = v15;
        v44 = v40;
        v46 = verboseCopy;
        v25 = array;
        v45 = v25;
        [v21 enumerateMomentEdgesAndNodesUsingBlock:v42];
        [v25 sortUsingSelector:sel_localizedCompare_];
        keywordDescription = [v21 keywordDescription];
        if (verboseCopy)
        {
          uUID = [v21 UUID];
          [keywordDescription stringByAppendingFormat:@" [muid:%@]", uUID];
          v28 = v19;
          v29 = v16;
          v30 = verboseCopy;
          v31 = v15;
          v33 = v32 = v18;

          keywordDescription = v33;
          v18 = v32;
          v15 = v31;
          verboseCopy = v30;
          v16 = v29;
          v19 = v28;
        }

        v34 = [v25 componentsJoinedByString:{@", "}];
        [v16 appendFormat:@"\t%@ -> %@ \n", keywordDescription, v34];
      }

      v41 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v41);
  }

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nBusiness Items: %lu, Moments: %lu\n%@", objc_msgSend(v37, "count"), objc_msgSend(v15, "count"), v16];

  return v35;
}

void __109__PGManager_Debug___stringDescriptionForBusinessItemsWithGraph_includingInferredThroughPublicEvents_verbose___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = a2;
  v5 = a3;
  [*(a1 + 32) addObject:v5];
  v6 = *(a1 + 40);
  v7 = [v5 localStartDate];
  v8 = [v6 stringFromDate:v7];

  v9 = *(a1 + 40);
  v10 = [v5 localEndDate];
  v11 = [v9 stringFromDate:v10];

  if (*(a1 + 56) == 1)
  {
    v12 = [v32 universalStartDate];
    v31 = v12;
    if (v12)
    {
      v13 = [*(a1 + 40) stringFromDate:v12];
    }

    else
    {
      v13 = 0;
    }

    v15 = [v32 universalEndDate];
    if (v15)
    {
      v16 = [*(a1 + 40) stringFromDate:v15];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v32 hasRoutineInfo];
    v18 = @"location cluster";
    if (v17)
    {
      v18 = @"routine";
    }

    v19 = v18;
    v29 = v16;
    v30 = v13;
    if (v13)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v13, v16];
    }

    else
    {
      v20 = @"N/A";
    }

    v21 = *(a1 + 40);
    v22 = [v5 universalStartDate];
    v23 = [v21 stringFromDate:v22];

    v24 = *(a1 + 40);
    v25 = [v5 universalEndDate];
    v26 = [v24 stringFromDate:v25];

    v27 = MEMORY[0x277CCACA8];
    [v32 confidence];
    v14 = [v27 stringWithFormat:@"\n\t\tmoment:\t[%@ - %@], \n\t\t\tconfidence %.2f, \n\t\t\tmoment (utc): [%@ - %@], \n\t\t\t%@ visit (utc): [%@]", v8, v11, v28, v23, v26, v19, v20];
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\t\tmoment:\t[%@ - %@]", v8, v11];
  }

  [*(a1 + 48) addObject:v14];
}

- (id)_stringDescriptionForLanguagesWithGraph:(id)graph
{
  v20 = *MEMORY[0x277D85DE8];
  inferredUserLocales = [graph inferredUserLocales];
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = inferredUserLocales;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        localeIdentifier = [*(*(&v15 + 1) + 8 * i) localeIdentifier];
        [array addObject:localeIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [array componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"\nUser Languages: %@", v12];

  return v13;
}

- (id)_stringDescriptionForLocationsWithGraph:(id)graph
{
  v29 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __60__PGManager_Debug___stringDescriptionForLocationsWithGraph___block_invoke;
  v26[3] = &unk_278885E70;
  v5 = dictionary;
  v27 = v5;
  v19 = graphCopy;
  [graphCopy enumerateNodesWithLabel:@"City" domain:200 usingBlock:v26];
  allKeys = [v5 allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_compare_];

  string = [MEMORY[0x277CCAB68] string];
  array = [MEMORY[0x277CBEB18] array];
  [string appendString:@"CITIES: \n\n"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:v13];
        v15 = [v5 objectForKeyedSubscript:v13];
        allObjects = [v15 allObjects];
        v17 = [allObjects componentsJoinedByString:@"\n\t"];
        [string appendFormat:@"%@\n\t%@\n", v13, v17];

        if ([v14 count] >= 2)
        {
          [array addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  [string appendString:@"POTIENTIAL DUPLICATES: \n\n"];
  [string appendFormat:@"%@", array];

  return string;
}

void __60__PGManager_Debug___stringDescriptionForLocationsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = [v3 fullname];
  v4 = [v3 collection];
  v5 = [v4 addressNodes];
  v6 = [v5 count];

  v7 = [v3 name];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu: %@", v6, v11];
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (v9)
  {
    v10 = v9;
    [v9 addObject:v8];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB58] setWithObject:v8];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];
  }
}

- (id)_stringDescriptionForDisambiguatedPOIsInMomentNodes:(id)nodes
{
  v25 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  string = [MEMORY[0x277CCAB68] string];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = nodesCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __72__PGManager_Debug___stringDescriptionForDisambiguatedPOIsInMomentNodes___block_invoke;
        v12[3] = &unk_278885E48;
        v15 = &v20;
        v13 = string;
        v14 = v9;
        [v9 enumeratePOIEdgesAndNodesUsingBlock:v12];
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n\nDisambiguated POI Info: %lu\n%@", v21[3], string];

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __72__PGManager_Debug___stringDescriptionForDisambiguatedPOIsInMomentNodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if ([a2 poiIsImproved])
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    v5 = *(a1 + 32);
    v6 = [v8 label];
    v7 = [*(a1 + 40) name];
    [v5 appendFormat:@"- Improved: %@ - %@\n", v6, v7];
  }
}

- (id)_stringDescriptionForDisambiguatedLocationsWithGraph:(id)graph
{
  v51 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  infoNode = [graphCopy infoNode];
  v5 = infoNode;
  if (infoNode)
  {
    objc_msgSend_routineInfo(infoNode);
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
  }

  v6 = @"NO";
  if (v45)
  {
    v6 = @"YES";
  }

  v7 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n\nDisambiguated Locations Info:\nRoutine available %@ #LOI %lu, #Visits %lu, Pinning %.2f\n#Requests %lu, #timeMatches %lu, #closeByLocationMatches %lu, #remoteLocationMatches %lu\n\n", v6, *(&v45 + 1), v46, *(&v48 + 1), v48, *(&v46 + 1), v47];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke;
  v42[3] = &unk_278885E20;
  v9 = v7;
  v43 = v9;
  v10 = dictionary;
  v44 = v10;
  v30 = graphCopy;
  [graphCopy enumerateNodesWithLabel:@"Address" domain:200 usingBlock:v42];
  v33 = v10;
  allKeys = [v10 allKeys];
  v12 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = *v39;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v39 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [v33 objectForKeyedSubscript:*(*(&v38 + 1) + 8 * i)];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v34 objects:v49 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v35;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v35 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v34 + 1) + 8 * j);
              sourceNode = [v21 sourceNode];
              [v21 photoCoordinate];
              v24 = v23;
              v26 = v25;
              name = [sourceNode name];
              [v9 appendFormat:@"- Remote: %@ {%f, %f}\n", name, v24, v26];
            }

            v18 = [v16 countByEnumeratingWithState:&v34 objects:v49 count:16];
          }

          while (v18);
        }
      }

      v14 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v14);
  }

  [v9 appendString:@"\n"];
  v28 = v9;

  return v28;
}

void __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ([v3 isImproved])
  {
    [v3 coordinate];
    [*(a1 + 32) appendFormat:@"- Improved: {%f, %f}\n", v5, v6];
    v7 = [v3 edgesForLabel:@"ADDRESS" domain:200];
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 comparator:&__block_literal_global_51594];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v10 = [v7 sortedArrayUsingDescriptors:v9];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke_3;
    v13[3] = &unk_278885DD0;
    v14 = *(a1 + 32);
    [v10 enumerateObjectsUsingBlock:v13];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke_4;
  v11[3] = &unk_278885DF8;
  v12 = *(a1 + 40);
  [v3 enumerateNeighborEdgesAndNodesThroughEdgesWithLabel:@"REMOTE_ADDRESS" domain:200 usingBlock:v11];

  objc_autoreleasePoolPop(v4);
}

void __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 photoCoordinate];
  v5 = v4;
  v7 = v6;
  v10 = [v3 sourceNode];

  v8 = *(a1 + 32);
  v9 = [v10 name];
  [v8 appendFormat:@"\t %@ {%f, %f}\n", v9, v5, v7];
}

void __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = MEMORY[0x277CCABB0];
  [a3 timestampUTCStart];
  v6 = [v5 numberWithDouble:?];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
}

uint64_t __73__PGManager_Debug___stringDescriptionForDisambiguatedLocationsWithGraph___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sourceNode];
  v6 = [v4 sourceNode];

  v7 = [v5 name];
  v8 = [v6 name];
  v9 = [v7 compare:v8];

  return v9;
}

- (id)_stringDescriptionForMeNode:(id)node
{
  v3 = MEMORY[0x277CCAB68];
  nodeCopy = node;
  localIdentifier = [nodeCopy localIdentifier];
  name = [nodeCopy name];
  contactIdentifier = [nodeCopy contactIdentifier];
  v8 = [v3 stringWithFormat:@"Me node information: localIdentifier:'%@', name:'%@', contact:'%@'", localIdentifier, name, contactIdentifier];

  string = [MEMORY[0x277CCAB68] string];
  string2 = [MEMORY[0x277CCAB68] string];
  v11 = [MEMORY[0x277CBEB58] set];
  v12 = [MEMORY[0x277CBEB58] set];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__PGManager_Debug___stringDescriptionForMeNode___block_invoke;
  v20[3] = &unk_278885D88;
  v21 = string2;
  v22 = string;
  v23 = v12;
  v24 = v11;
  v13 = v11;
  v14 = v12;
  v15 = string;
  v16 = string2;
  [nodeCopy enumerateHomeOrWorkAddressNodesUsingBlock:v20];

  if ([(__CFString *)v15 length])
  {
    v17 = v15;
  }

  else
  {
    v17 = @"–";
  }

  [v8 appendFormat:@"\n\tHome addresses: %@", v17];
  if ([(__CFString *)v16 length])
  {
    v18 = v16;
  }

  else
  {
    v18 = @"–";
  }

  [v8 appendFormat:@"\n\tWork addresses: %@\n\n", v18];

  return v8;
}

void __48__PGManager_Debug___stringDescriptionForMeNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 collection];
  v8 = [v7 streetNodes];
  v20 = [v8 anyNode];

  v9 = [v20 name];
  v10 = [v6 collection];

  v11 = [v10 cityNodes];
  v12 = [v11 anyNode];

  v13 = [v12 name];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@, %@}", v9, v13];
  v15 = [v5 label];

  v16 = [v15 isEqualToString:@"Work"];
  v17 = 40;
  if (v16)
  {
    v17 = 32;
  }

  v18 = *(a1 + v17);
  if (([v18 containsString:v14] & 1) == 0)
  {
    if (![v18 length])
    {
      [v18 appendString:v14];
      if (!v13)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    [v18 appendFormat:@", %@", v14];
  }

  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = 56;
  if (v16)
  {
    v19 = 48;
  }

  [*(a1 + v19) addObject:v13];
LABEL_10:
}

- (id)_stringDescriptionForPeopleEventsWithGraph:(id)graph
{
  v3 = MEMORY[0x277CBEB38];
  graphCopy = graph;
  dictionary = [v3 dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  v10 = objc_alloc_init(MEMORY[0x277CCA968]);
  v11 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  [v10 setTimeZone:v11];

  [v10 setDateFormat:@"yyyy-MM-dd"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke;
  aBlock[3] = &unk_278885D10;
  v12 = dictionary;
  v69 = v12;
  v70 = v10;
  v13 = dictionary2;
  v71 = v13;
  v14 = dictionary3;
  v72 = v14;
  v47 = v10;
  v15 = _Block_copy(aBlock);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_2;
  v66[3] = &unk_278885D38;
  v67 = v15;
  v46 = v15;
  [graphCopy enumeratePersonNodesIncludingMe:1 withBlock:v66];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_3;
  v63[3] = &unk_278885D60;
  v16 = dictionary4;
  v64 = v16;
  v17 = dictionary5;
  v65 = v17;
  [graphCopy enumerateEdgesWithLabel:0 domain:301 usingBlock:v63];

  v18 = [MEMORY[0x277CCAB68] stringWithFormat:@"Birthday Dates: %ld\n", objc_msgSend(v12, "count")];
  allKeys = [v12 allKeys];
  v20 = [allKeys sortedArrayUsingSelector:sel_localizedCompare_];

  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_4;
  v60[3] = &unk_278886328;
  v61 = v12;
  v21 = v18;
  v62 = v21;
  v45 = v12;
  [v20 enumerateObjectsUsingBlock:v60];
  allValues = [v16 allValues];
  v23 = [allValues valueForKeyPath:@"@unionOfArrays.self"];
  [v21 appendFormat:@"\nCelebrated Birthdays: %ld\n", objc_msgSend(v23, "count")];

  allKeys2 = [v16 allKeys];
  v25 = [allKeys2 sortedArrayUsingSelector:sel_localizedCompare_];

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_5;
  v57[3] = &unk_278886328;
  v58 = v16;
  v26 = v21;
  v59 = v26;
  v44 = v16;
  [v25 enumerateObjectsUsingBlock:v57];
  [v26 appendFormat:@"\nPotential Birthday Dates: %ld\n", objc_msgSend(v13, "count")];
  allKeys3 = [v13 allKeys];
  v28 = [allKeys3 sortedArrayUsingSelector:sel_localizedCompare_];

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_6;
  v54[3] = &unk_278886328;
  v55 = v13;
  v29 = v26;
  v56 = v29;
  v30 = v13;
  [v28 enumerateObjectsUsingBlock:v54];
  [v29 appendFormat:@"\nAnniversary Dates: %ld\n", objc_msgSend(v14, "count")];
  allKeys4 = [v14 allKeys];
  v32 = [allKeys4 sortedArrayUsingSelector:sel_localizedCompare_];

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_7;
  v51[3] = &unk_278886328;
  v52 = v14;
  v33 = v29;
  v53 = v33;
  v34 = v14;
  [v32 enumerateObjectsUsingBlock:v51];
  allValues2 = [v17 allValues];
  v36 = [allValues2 valueForKeyPath:@"@unionOfArrays.self"];
  [v33 appendFormat:@"\nCelebrated Anniversaries: %ld\n", objc_msgSend(v36, "count")];

  allKeys5 = [v17 allKeys];
  v38 = [allKeys5 sortedArrayUsingSelector:sel_localizedCompare_];

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_8;
  v48[3] = &unk_278886328;
  v49 = v17;
  v39 = v33;
  v50 = v39;
  v40 = v17;
  [v38 enumerateObjectsUsingBlock:v48];
  v41 = v50;
  v42 = v39;

  return v39;
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v13 = [v3 stringDescription];
  v4 = [v3 birthdayDateComponents];
  v5 = [v3 anniversaryDateComponents];
  v6 = [v3 potentialBirthdayDateComponents];

  if (v4)
  {
    v7 = [MEMORY[0x277D27690] dateFromComponents:v4 inTimeZone:0];
    v8 = [a1[5] stringFromDate:v7];
    [a1[4] setObject:v8 forKeyedSubscript:v13];
  }

  if (v6)
  {
    v9 = [MEMORY[0x277D27690] dateFromComponents:v6 inTimeZone:0];
    v10 = [a1[5] stringFromDate:v9];
    [a1[6] setObject:v10 forKeyedSubscript:v13];
  }

  if (v5)
  {
    v11 = [MEMORY[0x277D27690] dateFromComponents:v5 inTimeZone:0];
    v12 = [a1[5] stringFromDate:v11];
    [a1[7] setObject:v12 forKeyedSubscript:v13];
  }
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 targetNode];
  v4 = [v3 stringDescription];
  v5 = [v16 sourceNode];
  v6 = [v5 name];
  v7 = [v16 label];
  v8 = [v7 isEqualToString:@"BIRTHDAY"];

  if (v8)
  {
    v9 = 32;
LABEL_5:
    v12 = *(a1 + v9);
    goto LABEL_7;
  }

  v10 = [v16 label];
  v11 = [v10 isEqualToString:@"ANNIVERSARY"];

  if (v11)
  {
    v9 = 40;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:
  v13 = [v12 objectForKeyedSubscript:v4];

  if (!v13)
  {
    v14 = [MEMORY[0x277CBEB18] array];
    [v12 setObject:v14 forKeyedSubscript:v4];
  }

  v15 = [v12 objectForKeyedSubscript:v4];
  [v15 addObject:v6];
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [*(a1 + 40) appendFormat:@"\t%@: %@\n", v4, v5];
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 objectForKeyedSubscript:v4];
  v5 = [v8 sortedArrayUsingSelector:sel_localizedCompare_];
  v6 = *(a1 + 40);
  v7 = [v5 componentsJoinedByString:{@", "}];
  [v6 appendFormat:@"\t%@: %@\n", v4, v7];
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [*(a1 + 40) appendFormat:@"\t%@: %@\n", v4, v5];
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [*(a1 + 40) appendFormat:@"\t%@: %@\n", v4, v5];
}

void __63__PGManager_Debug___stringDescriptionForPeopleEventsWithGraph___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 objectForKeyedSubscript:v4];
  v5 = [v8 sortedArrayUsingSelector:sel_localizedCompare_];
  v6 = *(a1 + 40);
  v7 = [v5 componentsJoinedByString:{@", "}];
  [v6 appendFormat:@"\t%@: %@\n", v4, v7];
}

- (id)_stringDescriptionForInterestingAreas:(id)areas
{
  v25 = *MEMORY[0x277D85DE8];
  areasCopy = areas;
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = areasCopy;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        name = [v9 name];
        if (name)
        {
          collection = [v9 collection];
          addressNodes = [collection addressNodes];
          momentNodes = [addressNodes momentNodes];

          interestingForMemoriesSubset = [momentNodes interestingForMemoriesSubset];
          v15 = MEMORY[0x277CCACA8];
          name2 = [v9 name];
          v17 = [v15 stringWithFormat:@"\t%@: %d interesting moments (out of %d moments)\n", name2, objc_msgSend(interestingForMemoriesSubset, "count"), objc_msgSend(momentNodes, "count")];
          [v19 appendString:v17];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return v19;
}

- (id)_stringDescriptionForInterestingCities:(id)cities
{
  v39 = *MEMORY[0x277D85DE8];
  citiesCopy = cities;
  v28 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = citiesCopy;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        name = [v10 name];
        if (name)
        {
          collection = [v10 collection];
          addressNodes = [collection addressNodes];
          momentNodes = [addressNodes momentNodes];

          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(momentNodes, "count")}];
          [v4 setObject:v15 forKeyedSubscript:name];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v16 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v29 + 1) + 8 * j);
        v21 = MEMORY[0x277CCACA8];
        name2 = [v20 name];
        name3 = [v20 name];
        v24 = [v4 objectForKeyedSubscript:name3];
        v25 = [v21 stringWithFormat:@"\t%@: %d moments\n", name2, objc_msgSend(v24, "intValue")];
        [v28 appendString:v25];
      }

      v17 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v17);
  }

  return v28;
}

- (id)_stringDescriptionForUrbanCities:(id)cities
{
  v30[1] = *MEMORY[0x277D85DE8];
  citiesCopy = cities;
  v22 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __53__PGManager_Debug___stringDescriptionForUrbanCities___block_invoke;
  v27[3] = &unk_278885CE8;
  v5 = v4;
  v28 = v5;
  [citiesCopy enumerateIdentifiersAsCollectionsWithBlock:v27];
  v6 = [citiesCopy set];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v30[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v9 = [v6 sortedArrayUsingDescriptors:v8];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = MEMORY[0x277CCACA8];
        name = [v14 name];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "identifier")}];
        v18 = [v5 objectForKeyedSubscript:v17];
        v19 = [v15 stringWithFormat:@"\t%@: %@ moments\n", name, v18];
        [v22 appendString:v19];
      }

      v11 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v11);
  }

  return v22;
}

void __53__PGManager_Debug___stringDescriptionForUrbanCities___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 addressNodes];
  v6 = [v5 momentNodes];
  v7 = [v6 count];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v8 setObject:v10 forKeyedSubscript:v9];
}

- (id)_dateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateStyle:1];
  [v2 setTimeStyle:0];
  v3 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  [v2 setTimeZone:v3];

  return v2;
}

- (id)_stringDescriptionForMeaningfulEvents:(id)events isTrip:(BOOL)trip forDiagnostics:(BOOL)diagnostics titleGenerationContext:(id)context
{
  tripCopy = trip;
  diagnosticsCopy = diagnostics;
  v94 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  contextCopy = context;
  v51 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v51 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v8 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
  [v51 setTimeZone:v8];

  v54 = objc_opt_new();
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = eventsCopy;
  v52 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
  if (v52)
  {
    v48 = *v87;
    do
    {
      v9 = 0;
      do
      {
        if (*v87 != v48)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v55 = v9;
        v11 = *(*(&v86 + 1) + 8 * v9);
        eventCollection = [v11 eventCollection];
        eventMomentNodes = [eventCollection eventMomentNodes];
        firstAndLastMomentNodes = [eventMomentNodes firstAndLastMomentNodes];

        firstObject = [firstAndLastMomentNodes firstObject];
        lastObject = [firstAndLastMomentNodes lastObject];
        v80 = 0;
        v81 = &v80;
        v82 = 0x3032000000;
        v83 = __Block_byref_object_copy__51600;
        v84 = __Block_byref_object_dispose__51601;
        v85 = 0;
        v74 = 0;
        v75 = &v74;
        v76 = 0x3032000000;
        v77 = __Block_byref_object_copy__51600;
        v78 = __Block_byref_object_dispose__51601;
        v79 = 0;
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke;
        v73[3] = &unk_278885C98;
        v73[4] = &v80;
        [firstObject enumerateDateNodesUsingBlock:v73];
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke_2;
        v72[3] = &unk_278885C98;
        v72[4] = &v74;
        [lastObject enumerateDateNodesUsingBlock:v72];
        v14 = [PGCollectionTitleGenerator alloc];
        enrichableEvent = [v11 enrichableEvent];
        v59 = [(PGCollectionTitleGenerator *)v14 initWithCollection:enrichableEvent titleGenerationContext:contextCopy];

        [(PGCollectionTitleGenerator *)v59 setForDiagnostics:diagnosticsCopy];
        titleTuple = [(PGCollectionTitleGenerator *)v59 titleTuple];
        title = [titleTuple title];
        stringValue = [title stringValue];
        v56 = [stringValue stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

        subtitle = [titleTuple subtitle];
        stringValue2 = [subtitle stringValue];

        localStartDate = [firstObject localStartDate];
        localEndDate = [lastObject localEndDate];
        v20 = [v51 stringFromDate:localStartDate];
        v21 = [v51 stringFromDate:localEndDate];
        if (tripCopy)
        {
          [v75[5] timeIntervalSinceDate:v81[5]];
          v23 = vcvtpd_u64_f64(v22 / 86400.0) + 1;
          if (v23 <= 1)
          {
            v24 = &stru_2843F5C58;
          }

          else
          {
            v24 = @"s";
          }

          [v54 appendFormat:@"\t[%@ - %@] Legacy title: %@, %@ (%lu day%@)", v20, v21, v56, stringValue2, v23, v24];
          highlightGroupNode = [v11 highlightGroupNode];
          meaningfulEvent = highlightGroupNode;
          if (highlightGroupNode)
          {
            collection = [highlightGroupNode collection];
            tripFeatureNodes = [collection tripFeatureNodes];
            v27 = objc_alloc_init(MEMORY[0x277CCAB68]);
            v70[0] = 0;
            v70[1] = v70;
            v70[2] = 0x2020000000;
            v71 = 1;
            v67[0] = MEMORY[0x277D85DD0];
            v67[1] = 3221225472;
            v67[2] = __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke_3;
            v67[3] = &unk_278888358;
            v28 = v27;
            v68 = v28;
            v69 = v70;
            [tripFeatureNodes enumerateIdentifiersAsCollectionsWithBlock:v67];
            locationHelper = [contextCopy locationHelper];
            v66 = 0;
            v30 = [PGTripTitleGenerator titleForTripNodeAsCollection:collection locationHelper:locationHelper error:&v66];
            v45 = v66;

            v31 = objc_alloc_init(MEMORY[0x277CCAB68]);
            v32 = v31;
            if (v30)
            {
              [v31 appendFormat:@"\n\t\tCurrent title: %@, %@ (%lu day%@)", v30, stringValue2, v23, v24];
            }

            else
            {
              v40 = MEMORY[0x277D86220];
              v41 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                localizedDescription = [v45 localizedDescription];
                *buf = 138412290;
                v92 = localizedDescription;
                _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);

                v40 = MEMORY[0x277D86220];
              }
            }

            if (v28)
            {
              [v32 appendFormat:@", with featured location nodes: [%@]", v28];
            }

            [v54 appendString:v32];

            _Block_object_dispose(v70, 8);
          }

          [v54 appendString:@"\n"];
        }

        else
        {
          meaningfulEvent = [v11 meaningfulEvent];
          if (meaningfulEvent)
          {
            v33 = [MEMORY[0x277CBEB58] set];
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke_1181;
            v64[3] = &unk_278885CC0;
            v34 = v33;
            v65 = v34;
            [meaningfulEvent enumerateMeaningEdgesAndNodesUsingBlock:v64];
            v35 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_localizedCompare_];
            v90 = v35;
            v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
            v37 = [v34 sortedArrayUsingDescriptors:v36];

            uUID = [v11 UUID];
            v39 = [v37 componentsJoinedByString:@" "];
            [v54 appendFormat:@"\t[%@ - %@] %@, %@, %@ %@\n", v20, v21, uUID, v56, stringValue2, v39];
          }

          else
          {
            [v54 appendFormat:@"\t[%@ - %@] %@, %@ Unknown event, not a trip nor a meaningful event\n", v20, v21, v56, stringValue2];
            meaningfulEvent = 0;
          }
        }

        _Block_object_dispose(&v74, 8);
        _Block_object_dispose(&v80, 8);

        v9 = v55 + 1;
      }

      while (v52 != v55 + 1);
      v52 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
    }

    while (v52);
  }

  return v54;
}

void __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localDate];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  v6 = v3;
  if (v5)
  {
    if ([v5 compare:?] != 1)
    {
      goto LABEL_5;
    }

    v4 = *(*(a1 + 32) + 8);
    v3 = v6;
  }

  objc_storeStrong((v4 + 40), v3);
LABEL_5:
}

void __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 localDate];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  obj = v3;
  if (v5)
  {
    if ([v5 compare:v3] != -1)
    {
      goto LABEL_5;
    }

    v4 = *(*(a1 + 32) + 8);
    v3 = obj;
  }

  objc_storeStrong((v4 + 40), v3);
LABEL_5:
}

void __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 anyNode];
  v8 = v4;
  v5 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v6 = @"%@";
  }

  else
  {
    v6 = @", %@";
  }

  v7 = [v4 name];
  [v5 appendFormat:v6, v7];

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __103__PGManager_Debug___stringDescriptionForMeaningfulEvents_isTrip_forDiagnostics_titleGenerationContext___block_invoke_1181(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v12 = [a3 label];
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CCACA8];
  if ([v5 isReliable])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v5 confidence];
  v10 = v9;

  v11 = [v7 stringWithFormat:@"(%@, reliable %@, %.2f)", v12, v8, v10];
  [v6 addObject:v11];
}

- (id)_stringDescriptionForSocialGroups:(id)groups includeImportance:(BOOL)importance
{
  importanceCopy = importance;
  v24 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = groupsCopy;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        collection = [v11 collection];
        memberNodes = [collection memberNodes];

        if (importanceCopy)
        {
          [v11 importance];
          [v6 appendFormat:@"\t[%.4f] ", v14];
        }

        names = [memberNodes names];
        v16 = [names componentsJoinedByString:{@", "}];
        [v6 appendString:v16];

        [v6 appendString:@"\n"];
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)_highlightEstimatesStatisticsWithCurationContext:(id)context
{
  contextCopy = context;
  workingContext = [(PGManager *)self workingContext];
  v6 = [[PGHighlightStatisticsEstimator alloc] initWithWorkingContext:workingContext];
  v7 = [(PGHighlightStatisticsEstimator *)v6 highlightEstimatesDescriptionWithCurationContext:contextCopy];

  return v7;
}

- (id)_peopleNameBiologicalSexStatisticsWithGraph:(id)graph
{
  v32 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc(MEMORY[0x277CBEB58]);
  v7 = [graphCopy nodesForLabel:@"Contact" domain:303];
  v8 = [v6 initWithSet:v7];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        contactIdentifier = [v14 contactIdentifier];
        v16 = [(PGManager *)self _sexHintForGivenNameOfContactForIdentifier:contactIdentifier inGraph:graphCopy];

        name = [v14 name];
        if (!v16)
        {
          v18 = array3;
LABEL_11:
          [v18 addObject:name];
          goto LABEL_12;
        }

        v18 = array;
        if (v16 == 1)
        {
          goto LABEL_11;
        }

        v18 = array2;
        if (v16 == 2)
        {
          goto LABEL_11;
        }

LABEL_12:
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  v19 = MEMORY[0x277CCACA8];
  v20 = [array componentsJoinedByString:@"\n\t\t"];
  v21 = [array2 componentsJoinedByString:@"\n\t\t"];
  v22 = [array3 componentsJoinedByString:@"\n\t\t"];
  v23 = [v19 stringWithFormat:@"BiologicalSex from Name\n\tFemale BiologicalSex Type:\n\t\t%@\n\tMale BiologicalSex Type:\n\t\t%@\n\tUndefined BiologicalSex Type:\n\t\t%@\n", v20, v21, v22];

  return v23;
}

- (unint64_t)_sexHintForGivenNameOfContactForIdentifier:(id)identifier inGraph:(id)graph
{
  graphCopy = graph;
  identifierCopy = identifier;
  serviceManager = [(PGManager *)self serviceManager];
  v9 = [serviceManager personForIdentifier:identifierCopy];

  inferredUserLocales = [graphCopy inferredUserLocales];

  v11 = [serviceManager sexHintForPerson:v9 usingLocales:inferredUserLocales];
  return v11;
}

- (id)_peopleVisionBiologicalSexStatisticsWithGraph:(id)graph
{
  v27 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v7 = [graphCopy personNodesIncludingMe:1];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        stringDescription = [v12 stringDescription];
        v14 = [v12 sex];
        if (!v14)
        {
          v15 = array3;
LABEL_11:
          [v15 addObject:stringDescription];
          goto LABEL_12;
        }

        v15 = array;
        if (v14 == 1)
        {
          goto LABEL_11;
        }

        v15 = array2;
        if (v14 == 2)
        {
          goto LABEL_11;
        }

LABEL_12:
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v16 = MEMORY[0x277CCACA8];
  v17 = [array componentsJoinedByString:@"\n\t\t"];
  v18 = [array2 componentsJoinedByString:@"\n\t\t"];
  v19 = [array3 componentsJoinedByString:@"\n\t\t"];
  v20 = [v16 stringWithFormat:@"BiologicalSex from Vision\n\tFemale BiologicalSex Type:\n\t\t%@\n\tMale BiologicalSex Type:\n\t\t%@\n\tUndefined BiologicalSex Type:\n\t\t%@\n", v17, v18, v19];

  return v20;
}

- (id)_peopleVisionAgeStatisticsWithGraph:(id)graph
{
  v52 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB18] array];
  v45 = v44 = graphCopy;
  v8 = [graphCopy personNodesIncludingMe:1];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = *v48;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v48 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v47 + 1) + 8 * i);
      stringDescription = [v13 stringDescription];
      ageCategory = [v13 ageCategory];
      if (ageCategory > 2)
      {
        v16 = array3;
        if (ageCategory == 3)
        {
          goto LABEL_16;
        }

        v16 = array4;
        if (ageCategory == 4)
        {
          goto LABEL_16;
        }

        v16 = array5;
        if (ageCategory == 5)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!ageCategory)
        {
          v16 = v45;
LABEL_16:
          [v16 addObject:stringDescription];
          goto LABEL_17;
        }

        v16 = array;
        if (ageCategory == 1)
        {
          goto LABEL_16;
        }

        v16 = array2;
        if (ageCategory == 2)
        {
          goto LABEL_16;
        }
      }

LABEL_17:
    }

    v10 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
  }

  while (v10);
LABEL_19:
  v17 = [MEMORY[0x277CBEB18] arrayWithObject:@"None"];
  if ([array count])
  {
    v18 = array;
  }

  else
  {
    v18 = v17;
  }

  v19 = v18;
  v43 = v19;

  if ([array2 count])
  {
    v20 = array2;
  }

  else
  {
    v20 = v17;
  }

  v21 = v20;
  v42 = v21;

  if ([array3 count])
  {
    v22 = array3;
  }

  else
  {
    v22 = v17;
  }

  v23 = v22;
  v41 = v23;

  if ([array4 count])
  {
    v24 = array4;
  }

  else
  {
    v24 = v17;
  }

  v25 = v24;
  v40 = v25;

  if ([array5 count])
  {
    v26 = array5;
  }

  else
  {
    v26 = v17;
  }

  v27 = v26;
  v39 = v27;

  if ([v45 count])
  {
    v28 = v45;
  }

  else
  {
    v28 = v17;
  }

  v29 = v28;

  v30 = MEMORY[0x277CCACA8];
  v31 = [v19 componentsJoinedByString:@"\n\t\t"];
  v32 = [v21 componentsJoinedByString:@"\n\t\t"];
  v33 = [v23 componentsJoinedByString:@"\n\t\t"];
  v34 = [v25 componentsJoinedByString:@"\n\t\t"];
  v35 = [v27 componentsJoinedByString:@"\n\t\t"];
  v36 = [v29 componentsJoinedByString:@"\n\t\t"];
  v37 = [v30 stringWithFormat:@"Age from Vision\n\tBaby Age Category:\n\t\t%@\n\tChild Age Category:\n\t\t%@\n\tYoung Adult Age Category:\n\t\t%@\n\tAdult Age Category:\n\t\t%@\n\tSenior Age Category:\n\t\t%@\n\tUnspecified Age Category:\n\t\t%@\n", v31, v32, v33, v34, v35, v36];

  return v37;
}

- (id)_oneOnOneTripsWithGraph:(id)graph
{
  v54 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  trips = [graphCopy trips];
  v5 = [MEMORY[0x277CBEB58] set];
  v34 = graphCopy;
  meNode = [graphCopy meNode];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = trips;
  v35 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v35)
  {
    v32 = v5;
    v33 = *v48;
    do
    {
      v7 = 0;
      do
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v7;
        v8 = *(*(&v47 + 1) + 8 * v7);
        v38 = [MEMORY[0x277CBEB58] set];
        v37 = [MEMORY[0x277CBEB58] set];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = *v44;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v44 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v43 + 1) + 8 * i);
              personNodes = [v15 personNodes];
              v17 = [personNodes count];
              v18 = [personNodes containsObject:meNode];
              if (!((v17 != 1) | v18 & 1) || ((v17 == 2) & v18) != 0)
              {
                allObjects = [personNodes allObjects];
                [v38 addObjectsFromArray:allObjects];

                [v37 addObject:v15];
                v19 = 1;
              }

              else
              {
                v19 = v17 > 1;
              }

              v12 += v19;
            }

            v11 = [v9 countByEnumeratingWithState:&v43 objects:v52 count:16];
          }

          while (v11);
          v21 = v12;
          v5 = v32;
        }

        else
        {
          v21 = 0.0;
        }

        v22 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:v37 graph:v34];
        v23 = [(MAElementCollection *)[PGGraphPersonNodeCollection alloc] initWithSet:v38 graph:v34];
        v24 = [PGPeopleInferencesConveniences countedPersonNodesFromMomentNodes:v22 amongPersonNodes:v23];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v25 = [v24 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v40;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v40 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v39 + 1) + 8 * j);
              if (([v29 isMeNode] & 1) == 0 && objc_msgSend(v24, "countForObject:", v29) / v21 >= 0.75)
              {
                [v5 addObject:v9];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v39 objects:v51 count:16];
          }

          while (v26);
        }

        v7 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v35);
  }

  return v5;
}

- (unint64_t)_numberOfNightOutMomentsWithGraph:(id)graph
{
  v3 = [graph momentNodesWithMeaning:8];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)_numberOfFamilyHolidayMomentsWithGraph:(id)graph
{
  graphCopy = graph;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__PGManager_Debug___numberOfFamilyHolidayMomentsWithGraph___block_invoke;
  v6[3] = &unk_278885C70;
  v6[4] = &v7;
  [graphCopy enumerateCelebratedHolidayNodesUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __59__PGManager_Debug___numberOfFamilyHolidayMomentsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 category] == 2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __59__PGManager_Debug___numberOfFamilyHolidayMomentsWithGraph___block_invoke_2;
    v4[3] = &unk_278885948;
    v4[4] = *(a1 + 32);
    [v3 enumerateCelebratingMomentNodesUsingBlock:v4];
  }
}

- (unint64_t)_numberOfMomentsOverWeekendsWithGraph:(id)graph
{
  v3 = [graph anyNodeForLabel:@"Weekend" domain:400 properties:0];
  v4 = v3;
  if (v3)
  {
    edgesCount = [v3 edgesCount];
  }

  else
  {
    edgesCount = 0;
  }

  return edgesCount;
}

- (id)_peopleRelationshipsStatisticsWithGraph:(id)graph includingDebugInfo:(BOOL)info
{
  infoCopy = info;
  v117[13] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  meNode = [graphCopy meNode];
  if (meNode)
  {
    v81 = graphCopy;
    v90 = [MEMORY[0x277CCAB68] stringWithString:@"PEOPLE RELATIONSHIPS:\n\n"];
    v116[0] = @"PARTNER";
    v116[1] = @"FAMILY";
    v117[0] = &unk_284483FD8;
    v117[1] = &unk_284483FF0;
    v116[2] = @"PARENT";
    v116[3] = @"CHILD";
    v117[2] = &unk_284484008;
    v117[3] = &unk_284484020;
    v116[4] = @"FRIEND";
    v116[5] = @"COWORKER";
    v117[4] = &unk_284484038;
    v117[5] = &unk_284484050;
    v116[6] = @"PARTNER";
    v116[7] = @"MOTHER";
    v117[6] = &unk_284483FD8;
    v117[7] = &unk_284484068;
    v116[8] = @"FATHER";
    v116[9] = @"SISTER";
    v117[8] = &unk_284484080;
    v117[9] = &unk_284484098;
    v116[10] = @"BROTHER";
    v116[11] = @"DAUGHTER";
    v117[10] = &unk_2844840B0;
    v117[11] = &unk_2844840C8;
    v116[12] = @"SON";
    v117[12] = &unk_2844840E0;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:13];
    v83 = infoCopy;
    v7 = 3;
    v108 = 0u;
    v109 = 0u;
    if (infoCopy)
    {
      v7 = 7;
    }

    v86 = v7;
    v110 = 0uLL;
    v111 = 0uLL;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v108 objects:v115 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v109;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v109 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v108 + 1) + 8 * i);
          v13 = [obj objectForKeyedSubscript:v12];
          unsignedIntegerValue = [v13 unsignedIntegerValue];

          array = [MEMORY[0x277CBEB18] array];
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v104[0] = MEMORY[0x277D85DD0];
          v104[1] = 3221225472;
          v104[2] = __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke;
          v104[3] = &unk_278885BD0;
          v17 = array;
          v105 = v17;
          v107 = v83;
          v18 = dictionary;
          v106 = v18;
          [meNode enumeratePersonNodesWithRelationship:unsignedIntegerValue matchingQuery:v86 usingBlock:v104];
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:\n", v12];
          [v90 appendString:v19];

          v20 = [v17 count];
          if (!(v20 + [v18 count]))
          {
            allObjects = [MEMORY[0x277CCACA8] stringWithFormat:@"None\n"];
            [v90 appendString:allObjects];
LABEL_15:

            goto LABEL_16;
          }

          if ([v17 count])
          {
            v22 = MEMORY[0x277CCACA8];
            v23 = [v17 componentsJoinedByString:@"\n\t"];
            v24 = [v22 stringWithFormat:@"\t%@\n", v23];
            [v90 appendString:v24];
          }

          if ([v18 count])
          {
            v25 = [v18 keysSortedByValueUsingSelector:sel_compare_];
            reverseObjectEnumerator = [v25 reverseObjectEnumerator];
            allObjects = [reverseObjectEnumerator allObjects];

            v27 = MEMORY[0x277CCACA8];
            v28 = [allObjects componentsJoinedByString:@"\n\t"];
            v29 = [v27 stringWithFormat:@"\t%@\n", v28];
            [v90 appendString:v29];

            goto LABEL_15;
          }

LABEL_16:
        }

        v9 = [obj countByEnumeratingWithState:&v108 objects:v115 count:16];
      }

      while (v9);
    }

    v82 = [MEMORY[0x277CCAB68] stringWithString:@"\nSOCIAL GROUPS RELATIONSHIPS:\n"];
    v113[0] = @"FAMILY";
    v113[1] = @"COWORKER";
    v114[0] = &unk_284483FF0;
    v114[1] = &unk_284484050;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:2];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v87 = v103 = 0u;
    v30 = [v87 countByEnumeratingWithState:&v100 objects:v112 count:16];
    v31 = v90;
    if (v30)
    {
      v32 = v30;
      v33 = *v101;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v101 != v33)
          {
            objc_enumerationMutation(v87);
          }

          v35 = *(*(&v100 + 1) + 8 * j);
          array2 = [MEMORY[0x277CBEB18] array];
          v37 = [v87 objectForKeyedSubscript:v35];
          unsignedIntegerValue2 = [v37 unsignedIntegerValue];

          v97[0] = MEMORY[0x277D85DD0];
          v97[1] = 3221225472;
          v97[2] = __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_2;
          v97[3] = &unk_278885BF8;
          v39 = array2;
          v98 = v39;
          selfCopy = self;
          [meNode enumerateSocialGroupNodesWithRelationship:unsignedIntegerValue2 usingBlock:v97];
          v40 = [v39 count];
          v41 = MEMORY[0x277CCACA8];
          if (v40)
          {
            v42 = [v39 componentsJoinedByString:@"\n\t\t"];
            v43 = [v41 stringWithFormat:@"%@ SG:\n\t\t%@\n", v35, v42];
            [v82 appendString:v43];
          }

          else
          {
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tNo %@ Social Group\n", v35];
            [v82 appendString:v42];
          }

          v31 = v90;
        }

        v32 = [v87 countByEnumeratingWithState:&v100 objects:v112 count:16];
      }

      while (v32);
    }

    collection = [meNode collection];
    ownedPetNodes = [collection ownedPetNodes];

    v46 = 0x277CCA000uLL;
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\nPETS\n"];
    [v31 appendString:v47];

    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"The user currently has %lu pets, based on the important entities inference\n", objc_msgSend(ownedPetNodes, "count")];
    [v31 appendString:v48];

    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_3;
    v95[3] = &unk_278885C20;
    v49 = v31;
    v96 = v49;
    [ownedPetNodes enumerateNodesUsingBlock:v95];
    if (v83)
    {
      graphCopy = v81;
      v50 = [(PGManager *)self _numberOfFamilyHolidayMomentsWithGraph:v81];
      v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nMISCELLANEOUS:\nNumber of family holiday moments: %lu", v50];
      v51 = [(PGManager *)self _numberOfNightOutMomentsWithGraph:v81];
      v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nNumber of night out moments: %lu", v51];
      v79 = [(PGManager *)self _oneOnOneTripsWithGraph:v81];
      v53 = [v79 count];
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nNumber of one on one trips not including short trips: %lu", v53];
      v55 = MEMORY[0x277CBEB58];
      trips = [v81 trips];
      [v81 weekends];
      v57 = v84 = ownedPetNodes;
      v58 = [trips arrayByAddingObjectsFromArray:v57];
      v59 = [v55 setWithArray:v58];

      v78 = v59;
      [v59 minusSet:v79];
      v60 = [v59 count];
      v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nNumber of non one on one trips including short trips: %lu", v60];
      v62 = [(PGManager *)self _numberOfMomentsOverWeekendsWithGraph:v81];
      v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nNumber of moments over weekends: %lu", v62];
      momentNodes = [v81 momentNodes];
      v65 = [PGPeopleInferencesConveniences momentNodesAtWorkInMomentNodes:momentNodes];

      v66 = [v65 count];
      v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nNumber of moments at work: %lu", v66];
      v68 = v82;
      v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@", v49, v82, v80, v52, v54, v61, v63, v67];

      ownedPetNodes = v84;
      v46 = 0x277CCA000;

      v70 = v69;
    }

    else
    {
      v70 = &stru_2843F5C58;
      graphCopy = v81;
      v68 = v82;
    }

    v72 = [MEMORY[0x277CCAB68] stringWithString:@"STORYTELLING (HIGH RECALL) RELATIONSHIPS:\n\n"];
    v73 = [(PGGraphEdgeCollection *)PGGraphStorytellingRelationshipEdgeCollection edgesInGraph:graphCopy];
    v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_4;
    v93[3] = &unk_2788863A0;
    v94 = v74;
    v75 = v74;
    [v73 enumerateEdgesUsingBlock:v93];
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_5;
    v91[3] = &unk_278885C48;
    v92 = v72;
    v76 = v72;
    [v75 enumerateKeysAndObjectsUsingBlock:v91];
    v71 = [*(v46 + 3240) stringWithFormat:@"%@\n\n%@\n\n%@\n\n%@", v49, v68, v70, v76];
  }

  else
  {
    v71 = @"There is no menode in the graph -> cannot generate relationship report";
  }

  return v71;
}

void __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a3;
  v5 = [a2 stringDescription];
  v6 = [v18 status];
  v7 = +[PGGraphRelationshipEdge relationshipSourceToString:](PGGraphRelationshipEdge, "relationshipSourceToString:", [v18 source]);
  if (v6)
  {
    [v18 confidence];
    v9 = v8;
    v10 = @"FILTERED OUT";
    if (v6 == 1)
    {
      v10 = @"INFERRED";
    }

    if (*(a1 + 48) == 1)
    {
      v11 = v10;
      v12 = [v18 description];
      v13 = MEMORY[0x277CCACA8];
      v14 = [(__CFString *)v12 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
      v15 = [v13 stringWithFormat:@"%@ (%@ %0.2f) (Source: %@) : %@", v5, v11, *&v9, v7, v14];
    }

    else
    {
      v16 = MEMORY[0x277CCACA8];
      v12 = v10;
      v15 = [v16 stringWithFormat:@"%@ (%@ %0.2f) (Source: %@)", v5, v12, *&v9, v7];
    }

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    [*(a1 + 40) setObject:v17 forKeyedSubscript:v15];
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (GROUND TRUTH) (Source: %@)", v5, v7];
    [*(a1 + 32) addObject:v15];
  }
}

void __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = a2;
  v4 = MEMORY[0x277CBEA60];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  v7 = [v3 _stringDescriptionForSocialGroups:v6 includeImportance:{0, v8, v9}];
  [v2 addObject:v7];
}

void __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCACA8];
  v5 = [a2 description];
  v4 = [v3 stringWithFormat:@"\t%@\n", v5];
  [v2 appendString:v4];
}

void __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = [v3 targetNode];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v14 name];
  v6 = [v14 localIdentifier];
  if (v6)
  {
    v7 = [v14 localIdentifier];
    v8 = [v4 stringWithFormat:@"%@ (%@)", v5, v7];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"%@ (%@)", v5, @"n/a"];
  }

  v9 = [v3 label];

  v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v13 = v12;

  [v13 addObject:v9];
  [*(a1 + 32) setObject:v13 forKeyedSubscript:v8];
}

void __79__PGManager_Debug___peopleRelationshipsStatisticsWithGraph_includingDebugInfo___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v9 = [a3 allObjects];
  v7 = [v9 componentsJoinedByString:{@", "}];
  v8 = [v5 stringWithFormat:@"%@ - %@\n", v6, v7];

  [v4 appendString:v8];
}

- (id)_partOfDayStatisticsWithGraph:(id)graph titleGenerationContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  contextCopy = context;
  string = [MEMORY[0x277CCAB68] string];
  v20 = graphCopy;
  [graphCopy momentNodesSortedByDate];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v22 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [[PGTitleGenerator alloc] initWithMomentNode:v10 type:0 titleGenerationContext:contextCopy];
        title = [(PGTitleGenerator *)v11 title];
        stringValue = [title stringValue];
        v14 = [stringValue stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

        subtitle = [(PGTitleGenerator *)v11 subtitle];
        stringValue2 = [subtitle stringValue];
        v17 = [stringValue2 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

        [string appendFormat:@"%@ - %@: ", v14, v17];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __73__PGManager_Debug___partOfDayStatisticsWithGraph_titleGenerationContext___block_invoke;
        v24[3] = &unk_278885BA8;
        v18 = string;
        v25 = v18;
        [v10 enumeratePartOfDayEdgesAndNodesUsingBlock:v24];
        [v18 appendString:@"\n"];
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  return string;
}

void __73__PGManager_Debug___partOfDayStatisticsWithGraph_titleGenerationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = [a3 name];
  v6 = *(a1 + 32);
  [v5 ratio];
  v8 = v7;

  [v6 appendFormat:@"[%@ %.2f] ", v9, v8];
}

- (id)_interestingStatisticsWithGraph:(id)graph
{
  v81 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  photoLibrary = [(PGManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v4 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:librarySpecificFetchOptions];
  momentNodesSortedByDate = [graphCopy momentNodesSortedByDate];
  v40 = [momentNodesSortedByDate count];
  v42 = [MEMORY[0x277CBEB58] set];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = momentNodesSortedByDate;
  v6 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v6)
  {
    v52 = 0;
    v7 = 0;
    v8 = *v76;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v76 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v75 + 1) + 8 * i);
        isInteresting = [v10 isInteresting];
        if ([v10 isSmartInteresting])
        {
          v12 = [graphCopy momentForMomentNode:v10 inPhotoLibrary:photoLibrary];
          if (v12)
          {
            [v42 addObject:v12];
          }

          ++v52;
        }

        [v10 isInterestingForMemories];
        [v10 contentScore];
        v7 += isInteresting;
      }

      v6 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v6);
  }

  else
  {
    v52 = 0;
    v7 = 0;
  }

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  [indexSet addIndex:4];
  [indexSet addIndex:10];
  v48 = objc_opt_new();
  v50 = objc_opt_new();
  librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
  v13 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions2 addFetchPropertySets:v13];

  v47 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v45 = v4;
  v14 = [v45 countByEnumeratingWithState:&v71 objects:v79 count:16];
  if (v14)
  {
    v15 = *v72;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v72 != v15)
        {
          objc_enumerationMutation(v45);
        }

        v17 = *(*(&v71 + 1) + 8 * j);
        v18 = objc_autoreleasePoolPush();
        v19 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:2];
        v20 = [MEMORY[0x277D27710] feederForAssetCollection:v17 options:librarySpecificFetchOptions2 feederPrefetchOptions:v19 curationContext:v47];
        allItems = [v20 allItems];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __52__PGManager_Debug___interestingStatisticsWithGraph___block_invoke;
        v66[3] = &unk_278885B58;
        v67 = allItems;
        v68 = v48;
        v69 = v50;
        v70 = v17;
        v22 = allItems;
        [indexSet enumerateIndexesUsingBlock:v66];

        objc_autoreleasePoolPop(v18);
      }

      v14 = [v45 countByEnumeratingWithState:&v71 objects:v79 count:16];
    }

    while (v14);
  }

  v23 = [MEMORY[0x277CCAB68] stringWithString:@"Interesting Moments Analysis:\n\n"];
  [v23 appendFormat:@"Total Smart Interesting Moments %lu/%lu\n", v52, v40];
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__51600;
  v64 = __Block_byref_object_dispose__51601;
  v65 = [MEMORY[0x277CBEB58] setWithSet:v42];
  v24 = v61[5];
  v25 = [v50 objectForKey:&unk_284483FA8];
  [v24 intersectSet:v25];

  [v23 appendFormat:@"Total Current (Related) Interesting Moments %lu/%lu (%lu)\n", v7, v40, objc_msgSend(v61[5], "count")];
  v26 = [MEMORY[0x277CBEB58] setWithSet:v42];
  v27 = v61[5];
  v61[5] = v26;

  v28 = v61[5];
  v29 = [v50 objectForKey:&unk_284483FC0];
  [v28 intersectSet:v29];

  v30 = [v48 objectForKey:&unk_284483FC0];
  v31 = [v45 count];
  [v23 appendFormat:@"Total Current (Memories) Interesting Moments %@/%lu (%lu)\n\n", v30, v31, objc_msgSend(v61[5], "count")];

  [v23 appendFormat:@"Total Interesting Moments:\n"];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __52__PGManager_Debug___interestingStatisticsWithGraph___block_invoke_1004;
  v53[3] = &unk_278885B80;
  v59 = &v60;
  v32 = v42;
  v54 = v32;
  v33 = v50;
  v55 = v33;
  v34 = v23;
  v56 = v34;
  v35 = v48;
  v57 = v35;
  v36 = v45;
  v58 = v36;
  [indexSet enumerateIndexesUsingBlock:v53];
  v37 = v58;
  v38 = v34;

  _Block_object_dispose(&v60, 8);

  return v38;
}

void __52__PGManager_Debug___interestingStatisticsWithGraph___block_invoke(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if ([PGCurationManager areAssetsInteresting:a1[4] minimumNumberOfCuratedAssets:a2 duration:2])
  {
    v5 = a1[5];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v7 = [v5 objectForKey:v6];

    v8 = a1[5];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "unsignedIntegerValue") + 1}];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    [v8 setObject:v9 forKey:v10];

    v11 = a1[6];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v13 = [v11 objectForKey:v12];

    if (!v13)
    {
      v13 = [MEMORY[0x277CBEB58] set];
      v14 = a1[6];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
      [v14 setObject:v13 forKey:v15];
    }

    [v13 addObject:a1[7]];
  }

  objc_autoreleasePoolPop(v4);
}

void __52__PGManager_Debug___interestingStatisticsWithGraph___block_invoke_1004(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEB58] setWithSet:*(a1 + 32)];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 72) + 8) + 40);
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v10 = [v8 objectForKey:v9];
  [v7 intersectSet:v10];

  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v13 = [v12 objectForKey:v14];
  [v11 appendFormat:@"\tminimumCurated=%lu %@/%lu (%lu)\n", a2, v13, objc_msgSend(*(a1 + 64), "count"), objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "count")];
}

- (id)_moodStatisticsWithGraph:(id)graph
{
  v80[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__51600;
  v77 = __Block_byref_object_dispose__51601;
  v78 = [MEMORY[0x277CCA940] set];
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__51600;
  v71 = __Block_byref_object_dispose__51601;
  v72 = [MEMORY[0x277CCA940] set];
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__51600;
  v65 = __Block_byref_object_dispose__51601;
  v66 = [MEMORY[0x277CCA940] set];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__51600;
  v59 = __Block_byref_object_dispose__51601;
  v60 = [MEMORY[0x277CCA940] set];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  photoLibrary = [(PGManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v80[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v9];

  v10 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:librarySpecificFetchOptions];
  workingContext = [(PGManager *)self workingContext];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke;
  v41[3] = &unk_278885B30;
  v12 = graphCopy;
  v42 = v12;
  v13 = workingContext;
  v43 = v13;
  v46 = &v73;
  v47 = &v67;
  v48 = &v61;
  v49 = &v55;
  v35 = v5;
  v44 = v35;
  v50 = &v51;
  v36 = v6;
  v45 = v36;
  [v10 enumerateObjectsUsingBlock:v41];
  v14 = v52[3];
  if (v14 >= 2)
  {
    [v36 multiplyByWeight:1.0 / (v14 + -1.0)];
  }

  v15 = [MEMORY[0x277CCAB68] stringWithString:@"Moods:\nMood Suggested Possible Recommended Forbidden Mean Stddev"];
  v32 = v10;
  v31 = v12;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [&unk_284486258 countByEnumeratingWithState:&v37 objects:v79 count:16];
  if (v16)
  {
    v17 = 0;
    v34 = *v38;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(&unk_284486258);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        [v15 appendFormat:@"\n%@", v19];
        v20 = v56[5];
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
        [v15 appendFormat:@" %lu", objc_msgSend(v20, "countForObject:", v21)];

        v22 = v62[5];
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
        [v15 appendFormat:@" %lu", objc_msgSend(v22, "countForObject:", v23)];

        v24 = v74[5];
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
        [v15 appendFormat:@" %lu", objc_msgSend(v24, "countForObject:", v25)];

        v26 = v68[5];
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19];
        [v15 appendFormat:@" %lu", objc_msgSend(v26, "countForObject:", v27)];

        [v35 valueForMood:1 << v17];
        [v15 appendFormat:@" %.2f", v28];
        [v36 valueForMood:1 << v17];
        [v15 appendFormat:@" %.2f", sqrt(v29)];
        ++v17;
      }

      v16 = [&unk_284486258 countByEnumeratingWithState:&v37 objects:v79 count:16];
    }

    while (v16);
  }

  [v15 appendString:@"\n\n"];

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);

  return v15;
}

void __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) momentNodeForMoment:v3];
  if ([v4 isInteresting])
  {
    context = objc_autoreleasePoolPush();
    v5 = [PGMoodGenerator alloc];
    v6 = [*(a1 + 40) photoLibrary];
    v7 = [(PGMoodGenerator *)v5 initWithAssetCollection:v3 photoLibrary:v6 options:0];

    v8 = [(PGMoodGenerator *)v7 positiveMoodVectorWithGraph:*(a1 + 32)];
    v9 = [(PGMoodGenerator *)v7 negativeMoodVectorWithGraph:*(a1 + 32)];
    [(PGMoodGenerator *)v7 positiveThreshold];
    v11 = v10;
    [(PGMoodGenerator *)v7 negativeThreshold];
    v13 = v12;
    v14 = [v8 copy];
    [v14 filterWithMoods:{~objc_msgSend(v9, "moodsWithThreshold:", v13)}];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke_2;
    v24[3] = &unk_278885B08;
    v24[5] = v11;
    v24[4] = *(a1 + 64);
    [v8 enumerateWithBlock:v24];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke_3;
    v23[3] = &unk_278885B08;
    *&v23[5] = v13;
    v23[4] = *(a1 + 72);
    [v9 enumerateWithBlock:v23];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke_4;
    v22[3] = &unk_278885B08;
    v22[5] = v11;
    v22[4] = *(a1 + 80);
    [v14 enumerateWithBlock:v22];
    v15 = *(*(*(a1 + 88) + 8) + 40);
    [(PGMoodGenerator *)v7 suggestedMoodWithGraph:*(a1 + 32)];
    v16 = PHStringForMemoryMood();
    [v15 addObject:v16];

    v17 = [v14 copy];
    [v17 substractMoodVector:*(a1 + 48)];
    v18 = [v17 copy];
    [v18 multiplyByWeight:1.0 / (*(*(*(a1 + 96) + 8) + 24) + 1.0)];
    [*(a1 + 48) addMoodVector:v18];
    v19 = [v14 copy];
    [v19 substractMoodVector:*(a1 + 48)];
    v20 = v17;

    [v20 multiplyMoodVector:v19];
    [*(a1 + 56) addMoodVector:v20];

    ++*(*(*(a1 + 96) + 8) + 24);
    objc_autoreleasePoolPop(context);
  }
}

void __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke_2(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 40) <= a3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = PHStringForMemoryMood();
    [v4 addObject:v5];
  }
}

void __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke_3(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 40) <= a3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = PHStringForMemoryMood();
    [v4 addObject:v5];
  }
}

void __45__PGManager_Debug___moodStatisticsWithGraph___block_invoke_4(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 40) <= a3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = PHStringForMemoryMood();
    [v4 addObject:v5];
  }
}

- (id)_stringDescriptionForMemoriesNotification
{
  v3 = objc_opt_new();
  _dateFormatter = [(PGManager *)self _dateFormatter];
  photoLibrary = [(PGManager *)self photoLibrary];
  v6 = [PGMemoryNotificationHelper lastTriggeredNotificationDateWithPhotoLibrary:photoLibrary];
  v7 = [_dateFormatter stringFromDate:v6];
  [v3 appendFormat:@"\tLast notification triggered: %@\n", v7];

  photoLibrary2 = [(PGManager *)self photoLibrary];
  v9 = [PGMemoryNotificationHelper nextPossibleNotificationDateWithPhotoLibrary:photoLibrary2];
  v10 = [_dateFormatter stringFromDate:v9];
  [v3 appendFormat:@"\tNext possible notification: %@\n", v10];

  memoriesOfTheDayAreWorthNotifying = [(PGManager *)self memoriesOfTheDayAreWorthNotifying];
  v12 = @"NO";
  if (memoriesOfTheDayAreWorthNotifying)
  {
    v12 = @"YES";
  }

  [v3 appendFormat:@"\tToday's Memories are worth notifying: %@\n", v12];

  return v3;
}

- (id)_socialGroupsDebugStringWithGraph:(id)graph
{
  v3 = MEMORY[0x277CCAB68];
  graphCopy = graph;
  string = [v3 string];
  array = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB18] array];
  v13 = v16 = 0.0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__PGManager_Debug___socialGroupsDebugStringWithGraph___block_invoke;
  v14[3] = &unk_278885AE0;
  v15 = array;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__PGManager_Debug___socialGroupsDebugStringWithGraph___block_invoke_2;
  v12[3] = &unk_278885AE0;
  v7 = v13;
  v8 = array;
  [PGSocialGroupsQuestionFactory enumerateSocialGroupsWithGraph:graphCopy withLinkage:4 validGroupsBlock:v14 invalidGroupsBlock:v12 averageWeight:&v16];

  [string appendFormat:@"Social Groups from new algorithm with thresholds: [avgWeight=%.2f, minCohesion=%.2f]\n", v16, 0x3FD3333333333333];
  [string appendFormat:@"Valid Social Groups: %ld\n", objc_msgSend(v8, "count")];
  v9 = [v8 componentsJoinedByString:&stru_2843F5C58];
  [string appendString:v9];

  [string appendFormat:@"Candidate Social Groups: %ld\n", objc_msgSend(v7, "count")];
  v10 = [v7 componentsJoinedByString:&stru_2843F5C58];
  [string appendString:v10];

  return string;
}

void __54__PGManager_Debug___socialGroupsDebugStringWithGraph___block_invoke(uint64_t a1, void *a2, float a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10, uint64_t a11, void *a12, void *a13, float a14, float a15)
{
  v48 = *MEMORY[0x277D85DE8];
  v23 = a12;
  v24 = a13;
  v41 = MEMORY[0x277CCACA8];
  v25 = [a2 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];
  v26 = [MEMORY[0x277CBEB18] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v27 = v25;
  v28 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v44;
    do
    {
      v31 = 0;
      do
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v43 + 1) + 8 * v31);
        v33 = [v32 name];
        if ([v33 length])
        {
          if (!v33)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v26 addObject:v33];
          goto LABEL_9;
        }

        v34 = [v32 stringDescription];
        v35 = [v34 lowercaseString];

        v33 = v35;
        if (v35)
        {
          goto LABEL_8;
        }

LABEL_9:

        ++v31;
      }

      while (v29 != v31);
      v36 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
      v29 = v36;
    }

    while (v36);
  }

  v37 = MEMORY[0x277CCACA8];
  v38 = [v26 componentsJoinedByString:{@", "}];
  v39 = [v37 stringWithFormat:@"%@ [wgt=%.4f, mom=%ld, supMom=%ld, excMomF=%.2f, supMomF=%.2f, familyF=%.2f, recF=%.2f, semCohF=%.2f, peoCohF=%.2f, rank=%.4f]", v38, a3, objc_msgSend(v23, "count"), objc_msgSend(v24, "count"), a7, a8, a9, a14, a10, *&a4, a15];

  v40 = [v41 stringWithFormat:@"\t%@\n", v39];

  [*(a1 + 32) addObject:v40];
}

void __54__PGManager_Debug___socialGroupsDebugStringWithGraph___block_invoke_2(uint64_t a1, void *a2, float a3, double a4, double a5, double a6, float a7, float a8, float a9, float a10, uint64_t a11, void *a12, void *a13, float a14, float a15)
{
  v48 = *MEMORY[0x277D85DE8];
  v23 = a12;
  v24 = a13;
  v41 = MEMORY[0x277CCACA8];
  v25 = [a2 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];
  v26 = [MEMORY[0x277CBEB18] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v27 = v25;
  v28 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v44;
    do
    {
      v31 = 0;
      do
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v43 + 1) + 8 * v31);
        v33 = [v32 name];
        if ([v33 length])
        {
          if (!v33)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v26 addObject:v33];
          goto LABEL_9;
        }

        v34 = [v32 stringDescription];
        v35 = [v34 lowercaseString];

        v33 = v35;
        if (v35)
        {
          goto LABEL_8;
        }

LABEL_9:

        ++v31;
      }

      while (v29 != v31);
      v36 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
      v29 = v36;
    }

    while (v36);
  }

  v37 = MEMORY[0x277CCACA8];
  v38 = [v26 componentsJoinedByString:{@", "}];
  v39 = [v37 stringWithFormat:@"%@ [wgt=%.4f, mom=%ld, supMom=%ld, excMomF=%.2f, supMomF=%.2f, familyF=%.2f, recF=%.2f, semCohF=%.2f, peoCohF=%.2f, rank=%.4f]", v38, a3, objc_msgSend(v23, "count"), objc_msgSend(v24, "count"), a7, a8, a9, a14, a10, *&a4, a15];

  v40 = [v41 stringWithFormat:@"\t%@\n", v39];

  [*(a1 + 32) addObject:v40];
}

- (id)_socialGroupsDebugStringIncludingMeNode:(BOOL)node withGraph:(id)graph
{
  nodeCopy = node;
  v5 = MEMORY[0x277CCAB68];
  graphCopy = graph;
  string = [v5 string];
  array = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB18] array];
  v19 = v22 = 0.0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__PGManager_Debug___socialGroupsDebugStringIncludingMeNode_withGraph___block_invoke;
  v20[3] = &unk_278885AB8;
  v21 = array;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __70__PGManager_Debug___socialGroupsDebugStringIncludingMeNode_withGraph___block_invoke_2;
  v18 = &unk_278885AB8;
  v9 = v19;
  v10 = array;
  [graphCopy enumerateSocialGroupsIncludingMeNode:nodeCopy socialGroupsVersion:1 simulateMeNodeNotSet:0 validGroupsBlock:v20 invalidGroupsBlock:&v15 averageWeight:&v22];

  v11 = @"Including MeNode ";
  if (!nodeCopy)
  {
    v11 = &stru_2843F5C58;
  }

  [string appendFormat:@"Social Groups from current algorithm %@with thresholds: [avgWeight=%.2f, minCohesion=%.2f]\n", v11, v22, 0x3FD3333333333333, v15, v16, v17, v18];
  [string appendFormat:@"Valid Social Groups: %ld\n", objc_msgSend(v10, "count")];
  v12 = [v10 componentsJoinedByString:&stru_2843F5C58];
  [string appendString:v12];

  [string appendFormat:@"Candidate Social Groups: %ld\n", objc_msgSend(v9, "count")];
  v13 = [v9 componentsJoinedByString:&stru_2843F5C58];
  [string appendString:v13];

  return string;
}

void __70__PGManager_Debug___socialGroupsDebugStringIncludingMeNode_withGraph___block_invoke(uint64_t a1, void *a2, float a3, double a4, uint64_t a5, void *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = MEMORY[0x277CCACA8];
  v11 = [a2 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];
  v12 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        v19 = [v18 name];
        if ([v19 length])
        {
          if (!v19)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v12 addObject:v19];
          goto LABEL_9;
        }

        v20 = [v18 stringDescription];
        v21 = [v20 lowercaseString];

        v19 = v21;
        if (v21)
        {
          goto LABEL_8;
        }

LABEL_9:

        ++v17;
      }

      while (v15 != v17);
      v22 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v15 = v22;
    }

    while (v22);
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = [v12 componentsJoinedByString:{@", "}];
  v25 = [v23 stringWithFormat:@"%@ [moments=%ld, weight=%.4f, cohesion=%.2f]", v24, objc_msgSend(v9, "count"), a3, *&a4];

  v26 = [v10 stringWithFormat:@"\t%@\n", v25];

  [*(a1 + 32) addObject:v26];
}

void __70__PGManager_Debug___socialGroupsDebugStringIncludingMeNode_withGraph___block_invoke_2(uint64_t a1, void *a2, float a3, double a4, uint64_t a5, void *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = MEMORY[0x277CCACA8];
  v11 = [a2 sortedArrayUsingComparator:PGManagerPersonNodeComparisonBlock];
  v12 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * v17);
        v19 = [v18 name];
        if ([v19 length])
        {
          if (!v19)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v12 addObject:v19];
          goto LABEL_9;
        }

        v20 = [v18 stringDescription];
        v21 = [v20 lowercaseString];

        v19 = v21;
        if (v21)
        {
          goto LABEL_8;
        }

LABEL_9:

        ++v17;
      }

      while (v15 != v17);
      v22 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v15 = v22;
    }

    while (v22);
  }

  v23 = MEMORY[0x277CCACA8];
  v24 = [v12 componentsJoinedByString:{@", "}];
  v25 = [v23 stringWithFormat:@"%@ [moments=%ld, weight=%.4f, cohesion=%.2f]", v24, objc_msgSend(v9, "count"), a3, *&a4];

  v26 = [v10 stringWithFormat:@"\t%@\n", v25];

  [*(a1 + 32) addObject:v26];
}

- (id)_entityTagsStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v4 = objc_opt_new();
  v5 = [(PGGraphNodeCollection *)PGGraphPersonRelationshipTagNodeCollection nodesInGraph:statisticsCopy];

  [v4 appendFormat:@"Number of person relationship tags %lu\n", objc_msgSend(v5, "count")];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PGManager_Debug___entityTagsStatistics___block_invoke;
  v8[3] = &unk_278887140;
  v6 = v4;
  v9 = v6;
  [v5 enumerateNodesUsingBlock:v8];

  return v6;
}

void __42__PGManager_Debug___entityTagsStatistics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 personNodes];

  v6 = *(a1 + 32);
  v7 = [v3 label];
  [v6 appendFormat:@"\tTag: %@. Total number of persons: %lu. List of persons:\n", v7, objc_msgSend(v5, "count")];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PGManager_Debug___entityTagsStatistics___block_invoke_2;
  v8[3] = &unk_278885A90;
  v9 = *(a1 + 32);
  [v3 enumerateNeighborEdgesAndNodesThroughInEdgesUsingBlock:v8];
}

void __42__PGManager_Debug___entityTagsStatistics___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = [a3 name];
  [v5 confidence];
  v7 = v6;

  [v4 appendFormat:@"\t\t%@, confidence: %.2f\n", v8, v7];
}

- (id)_sharedLibraryStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v4 = objc_opt_new();
  v5 = [(PGGraphNodeCollection *)PGGraphMomentNodeCollection nodesInGraph:statisticsCopy];
  subsetWithOnlyPrivateAssets = [v5 subsetWithOnlyPrivateAssets];
  v7 = [subsetWithOnlyPrivateAssets count];

  subsetWithOnlySharedAssets = [v5 subsetWithOnlySharedAssets];
  v9 = [subsetWithOnlySharedAssets count];

  subsetWithBothPrivateAndSharedAssets = [v5 subsetWithBothPrivateAndSharedAssets];
  v11 = [subsetWithBothPrivateAndSharedAssets count];

  [v4 appendFormat:@"Moment nodes with both private and shared assets:\t%lu\nMoment nodes with only private assets:\t%lu\nMoment nodes with only shared assets:\t%lu\n\n", v11, v7, v9];
  v12 = [PGGraphPersonNodeCollection personNodesForSharedLibraryParticipantsInGraph:statisticsCopy];

  [v4 appendFormat:@"Person nodes for share participants in the graph: %lu\n", objc_msgSend(v12, "count")];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__PGManager_Debug___sharedLibraryStatistics___block_invoke;
  v15[3] = &unk_278889240;
  v13 = v4;
  v16 = v13;
  [v12 enumerateNodesUsingBlock:v15];

  return v13;
}

void __45__PGManager_Debug___sharedLibraryStatistics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = *(a1 + 32);
  v6 = [v3 shareParticipantLocalIdentifier];
  v7 = [v3 description];

  [v5 appendFormat:@"\tPerson with share participant identifier: %@, Description: %@\n", v6, v7];
  v8 = [v4 authoredMomentNodes];
  [*(a1 + 32) appendFormat:@"\tMoments authored: %lu", objc_msgSend(v8, "count")];
  v9 = +[PGGraphPeoplePersonIsAroundEdge filter];
  v10 = [v9 outRelation];
  v11 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:v4 withRelation:v10];

  v12 = +[PGGraphPersonProximityEdge filter];
  v13 = [v12 outRelation];
  v14 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:v4 withRelation:v13];

  v15 = +[PGGraphPersonPresentEdge filter];
  v16 = [v15 outRelation];
  v17 = [(MANodeCollection *)PGGraphMomentNodeCollection nodesRelatedToNodes:v4 withRelation:v16];

  [*(a1 + 32) appendFormat:@"\tMoments where pressent: CoreRoutine: %lu, PeopleProximity: %lu, Face Detection: %lu", objc_msgSend(v11, "count"), objc_msgSend(v14, "count"), objc_msgSend(v17, "count")];
  v18 = [v4 momentNodesWithPresence];
  [*(a1 + 32) appendFormat:@"\tMoments where physically pressent: %lu", objc_msgSend(v18, "count")];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __45__PGManager_Debug___sharedLibraryStatistics___block_invoke_2;
  v23[3] = &unk_278885A68;
  v24 = v8;
  v25 = v11;
  v26 = v14;
  v27 = v17;
  v28 = *(a1 + 32);
  v19 = v17;
  v20 = v14;
  v21 = v11;
  v22 = v8;
  [v18 enumerateNodesUsingBlock:v23];
}

void __45__PGManager_Debug___sharedLibraryStatistics___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v9 collection];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([*(a1 + 32) intersectsCollection:v4])
  {
    [v5 addObject:@"Author"];
  }

  if ([*(a1 + 40) intersectsCollection:v4])
  {
    [v5 addObject:@"CoreRoutine"];
  }

  if ([*(a1 + 48) intersectsCollection:v4])
  {
    [v5 addObject:@"PeopleProximity"];
  }

  if ([*(a1 + 56) intersectsCollection:v4])
  {
    [v5 addObject:@"FaceDetection"];
  }

  if ([v5 count])
  {
    v6 = [v5 componentsJoinedByString:@"/"];
  }

  else
  {
    v6 = @"undefined";
  }

  v7 = *(a1 + 64);
  v8 = [v9 uuid];
  [v7 appendFormat:@"\t\t%@ - %@\n", v8, v6];

  objc_autoreleasePoolPop(v3);
}

- (id)_socialGroupsDebugStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v5 = objc_opt_new();
  v6 = [(PGManager *)self _socialGroupsDebugStringIncludingMeNode:0 withGraph:statisticsCopy];
  [v5 appendFormat:@"%@\n", v6];
  v7 = [(PGManager *)self _socialGroupsDebugStringWithGraph:statisticsCopy];

  [v5 appendFormat:@"%@\n", v7];

  return v5;
}

- (id)_socialGroupsStatistics:(id)statistics
{
  v57 = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  v42 = objc_opt_new();
  numberOfSocialGroupNodes = [statisticsCopy numberOfSocialGroupNodes];
  context = objc_autoreleasePoolPush();
  v43 = statisticsCopy;
  [statisticsCopy socialGroupNodesSortedByImportance];
  v40 = v44 = self;
  v5 = [PGManager _stringDescriptionForSocialGroups:"_stringDescriptionForSocialGroups:includeImportance:" includeImportance:?];
  v46 = [MEMORY[0x277CBEB58] set];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v39 = v5;
  v7 = [v5 componentsSeparatedByCharactersInSet:newlineCharacterSet];

  v8 = [v7 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        if ([v12 hasPrefix:@"\t["])
        {
          v13 = [v12 componentsSeparatedByString:@"] "];
          lastObject = [v13 lastObject];
          v15 = objc_msgSend(lastObject, "componentsSeparatedByString:", @" (");
          firstObject = [v15 firstObject];

          v17 = MEMORY[0x277CBEB98];
          v18 = [firstObject componentsSeparatedByString:{@", "}];
          v19 = [v17 setWithArray:v18];
          [v46 addObject:v19];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v9);
  }

  v20 = [(PGManager *)v44 _socialGroupsDebugStringIncludingMeNode:0 withGraph:v43];
  v45 = [MEMORY[0x277CBEB58] set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  newlineCharacterSet2 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v38 = v20;
  v22 = [v20 componentsSeparatedByCharactersInSet:newlineCharacterSet2];

  v23 = [v22 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v48;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v48 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v47 + 1) + 8 * j);
        if ([v28 hasPrefix:@"\t["])
        {
          v29 = [v28 componentsSeparatedByString:@"] "];
          lastObject2 = [v29 lastObject];
          v31 = objc_msgSend(lastObject2, "componentsSeparatedByString:", @" (");
          firstObject2 = [v31 firstObject];

          v33 = MEMORY[0x277CBEB98];
          v34 = [firstObject2 componentsSeparatedByString:{@", "}];
          v35 = [v33 setWithArray:v34];
          [v45 addObject:v35];
        }

        else
        {
          if (v25 > 1)
          {
            goto LABEL_21;
          }

          ++v25;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v24);
  }

LABEL_21:

  if (([v46 isEqualToSet:v45] & 1) == 0)
  {
    [v42 appendFormat:@"Social Groups in graph: %lu\n", numberOfSocialGroupNodes];
    [v42 appendFormat:@"%@\n", v39];
  }

  [v42 appendFormat:@"%@\n", v38];

  objc_autoreleasePoolPop(context);

  return v42;
}

- (id)_checkConsistencyOfGraph:(id)graph
{
  v124 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = __Block_byref_object_copy__51600;
  v117 = __Block_byref_object_dispose__51601;
  v118 = &stru_2843F5C58;
  nodesLabels = [graphCopy nodesLabels];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = nodesLabels;
  v6 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
  if (v6)
  {
    v7 = *v110;
    v8 = *MEMORY[0x277D22CB0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v110 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [graphCopy nodesForLabel:*(*(&v109 + 1) + 8 * i) domain:v8];
        if ([v10 intersectsSet:v5])
        {
          v11 = [v10 mutableCopy];
          [v11 intersectSet:v5];
          v12 = [v5 mutableCopy];
          [v12 intersectSet:v10];
          v13 = [v114[5] stringByAppendingFormat:@"Some nodes are registered for two labels:\n%@\n%@", v11, v12];
          v14 = v114[5];
          v114[5] = v13;
        }

        [v5 unionSet:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v109 objects:v123 count:16];
    }

    while (v6);
  }

  v15 = [v5 count];
  if (v15 != [graphCopy nodesCount])
  {
    v16 = [v114[5] stringByAppendingFormat:@"(nodesForLabel:@).count found %d, nodesCount found %d\n", objc_msgSend(v5, "count"), objc_msgSend(graphCopy, "nodesCount")];
    v17 = v114[5];
    v114[5] = v16;
  }

  edgesLabels = [graphCopy edgesLabels];
  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v72 = edgesLabels;
  v20 = [v72 countByEnumeratingWithState:&v105 objects:v122 count:16];
  if (v20)
  {
    v21 = *v106;
    v22 = *MEMORY[0x277D22CB0];
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v106 != v21)
        {
          objc_enumerationMutation(v72);
        }

        v24 = [graphCopy edgesForLabel:*(*(&v105 + 1) + 8 * j) domain:v22];
        if ([v24 intersectsSet:v19])
        {
          v25 = [v24 mutableCopy];
          [v25 intersectSet:v19];
          v26 = [v19 mutableCopy];
          [v26 intersectSet:v24];
          v27 = [v114[5] stringByAppendingFormat:@"Some edges are registered for two labels:\n%@\n%@", v25, v26];
          v28 = v114[5];
          v114[5] = v27;
        }

        [v19 unionSet:v24];
      }

      v20 = [v72 countByEnumeratingWithState:&v105 objects:v122 count:16];
    }

    while (v20);
  }

  v29 = [v19 count];
  if (v29 != [graphCopy edgesCount])
  {
    v30 = [v114[5] stringByAppendingFormat:@"(edgesForLabel:@).count found %d, edgesCount found %d\n", objc_msgSend(v19, "count"), objc_msgSend(graphCopy, "edgesCount")];
    v31 = v114[5];
    v114[5] = v30;
  }

  v32 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v33 = v5;
  v34 = [v33 countByEnumeratingWithState:&v101 objects:v121 count:16];
  if (v34)
  {
    v35 = *v102;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v102 != v35)
        {
          objc_enumerationMutation(v33);
        }

        identifier = [*(*(&v101 + 1) + 8 * k) identifier];
        if ([v32 containsIdentifier:identifier])
        {
          v38 = [v114[5] stringByAppendingFormat:@"Identifier %u is being used by more than one node\n", identifier];
          v39 = v114[5];
          v114[5] = v38;
        }

        [v32 addIdentifier:identifier];
      }

      v34 = [v33 countByEnumeratingWithState:&v101 objects:v121 count:16];
    }

    while (v34);
  }

  v40 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v41 = v19;
  v42 = [v41 countByEnumeratingWithState:&v97 objects:v120 count:16];
  if (v42)
  {
    v43 = *v98;
    do
    {
      for (m = 0; m != v42; ++m)
      {
        if (*v98 != v43)
        {
          objc_enumerationMutation(v41);
        }

        identifier2 = [*(*(&v97 + 1) + 8 * m) identifier];
        if ([v40 containsIdentifier:identifier2])
        {
          v46 = [v114[5] stringByAppendingFormat:@"Identifier %u is being used by more than one edge\n", identifier2];
          v47 = v114[5];
          v114[5] = v46;
        }

        [v40 addIdentifier:identifier2];
      }

      v42 = [v41 countByEnumeratingWithState:&v97 objects:v120 count:16];
    }

    while (v42);
  }

  momentNodes = [graphCopy momentNodes];
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke;
  v96[3] = &unk_278885948;
  v96[4] = &v113;
  [momentNodes enumerateNodesUsingBlock:v96];

  v49 = objc_alloc_init(MEMORY[0x277CCA940]);
  v50 = [graphCopy nodesCountForLabel:@"Me" domain:300];
  if (v50 >= 2)
  {
    v51 = [v114[5] stringByAppendingFormat:@"Graph has %d Me nodes!\n", v50];
    v52 = v114[5];
    v114[5] = v51;
  }

  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_2;
  v92[3] = &unk_278885970;
  v53 = v49;
  v93 = v53;
  v54 = graphCopy;
  v94 = v54;
  v95 = &v113;
  [v54 enumerateNodesWithLabel:@"Me" domain:300 usingBlock:v92];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_3;
  v89[3] = &unk_278889420;
  v91 = &v113;
  v55 = v53;
  v90 = v55;
  [v54 enumeratePersonNodesIncludingMe:0 withBlock:v89];
  v71 = v54;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v56 = v55;
  v57 = [v56 countByEnumeratingWithState:&v85 objects:v119 count:16];
  if (v57)
  {
    v58 = *v86;
    do
    {
      for (n = 0; n != v57; ++n)
      {
        if (*v86 != v58)
        {
          objc_enumerationMutation(v56);
        }

        v60 = *(*(&v85 + 1) + 8 * n);
        v61 = [v56 countForObject:v60];
        if (v61 >= 2)
        {
          v62 = [v114[5] stringByAppendingFormat:@"%lu people nodes found for local identifier %@\n", v61, v60];
          v63 = v114[5];
          v114[5] = v62;
        }
      }

      v57 = [v56 countByEnumeratingWithState:&v85 objects:v119 count:16];
    }

    while (v57);
  }

  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_4;
  v84[3] = &unk_278888DE0;
  v84[4] = &v113;
  [v71 enumerateNodesWithLabel:@"SocialGroup" domain:302 usingBlock:v84];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_5;
  v83[3] = &unk_278885998;
  v83[4] = &v113;
  [v71 enumerateNodesWithLabel:0 domain:200 usingBlock:v83];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_6;
  v82[3] = &unk_2788859C0;
  v82[4] = &v113;
  [v71 enumerateNodesWithLabel:@"Area" domain:201 usingBlock:v82];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_7;
  v81[3] = &unk_2788859F0;
  v81[4] = &v113;
  [v71 enumerateNodesWithLabel:0 domain:400 usingBlock:v81];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_8;
  v80[3] = &unk_2788859F0;
  v80[4] = &v113;
  [v71 enumerateNodesWithLabel:@"Holiday" domain:401 usingBlock:v80];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v65 = [(PGGraphNodeCollection *)PGGraphMemoryNodeCollection nodesInGraph:v71];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_9;
  v77[3] = &unk_278885A18;
  v66 = dictionary;
  v78 = v66;
  v79 = &v113;
  [v65 enumerateNodesUsingBlock:v77];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_10;
  v74[3] = &unk_278885A40;
  v68 = dictionary2;
  v75 = v68;
  v76 = &v113;
  [v71 enumerateNodesWithBlock:v74];
  v69 = v114[5];

  _Block_object_dispose(&v113, 8);

  return v69;
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  [v3 edgesForLabel:@"NEXT" domain:101];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v4 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [v10 sourceNode];
        v12 = [v11 isSameNodeAsNode:v3];

        v13 = [v10 targetNode];
        v14 = [v13 isSameNodeAsNode:v3];

        if ((v12 & v7) == 1)
        {
          v15 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingFormat:@"Moment node can have at most one next edge, moment %@\n", v3];
          v16 = *(*(a1 + 32) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;
        }

        if ((v14 & v6) == 1)
        {
          v18 = [*(*(*(a1 + 32) + 8) + 40) stringByAppendingFormat:@"Moment node can have at most one previous edge, moment %@\n", v3];
          v19 = *(*(a1 + 32) + 8);
          v20 = *(v19 + 40);
          *(v19 + 40) = v18;
        }

        v7 |= v12;
        v6 |= v14;
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
  }

  v21 = [v3 dateNodes];
  if (![v21 count])
  {
    v24 = *(a1 + 32);
    v22 = a1 + 32;
    [*(*(v24 + 8) + 40) stringByAppendingFormat:@"Moment node is not linked to any date node, which is not supposed to happen\n%@\n", v3, v28];
    goto LABEL_16;
  }

  if ([v21 count] >= 3)
  {
    v23 = *(a1 + 32);
    v22 = a1 + 32;
    [*(*(v23 + 8) + 40) stringByAppendingFormat:@"Moment node is linked to more than two date nodes, which is not supposed to happen\n%@ - %@\n", v3, v21];
    v25 = LABEL_16:;
    v26 = *(*v22 + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

  objc_autoreleasePoolPop(context);
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = [v24 localIdentifier];
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }

  v4 = [*(a1 + 40) infoNode];
  v5 = [v4 canAccessContactsStore];

  v6 = [v24 name];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((([v6 length] == 0) & v5) != 1)
      {
        goto LABEL_10;
      }

      v7 = a1 + 48;
      v8 = *(*(*(a1 + 48) + 8) + 40);
      v9 = @"Me node has an empty name\n";
    }

    else
    {
      v7 = a1 + 48;
      v8 = *(*(*(a1 + 48) + 8) + 40);
      v23 = v6;
      v9 = @"Me node has a non-string name '%@'\n";
    }
  }

  else
  {
    v7 = a1 + 48;
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = @"Me node has no name\n";
  }

  v10 = [v8 stringByAppendingFormat:v9, v23];
  v11 = *(*v7 + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_10:
  v13 = [v24 contactIdentifier];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((([v13 length] == 0) & v5) != 1)
      {
        goto LABEL_17;
      }

      v15 = *(a1 + 48);
      v14 = a1 + 48;
      v16 = *(*(v15 + 8) + 40);
      v17 = @"Me node has an empty cnid\n";
    }

    else
    {
      v19 = *(a1 + 48);
      v14 = a1 + 48;
      v16 = *(*(v19 + 8) + 40);
      v23 = v13;
      v17 = @"Me node has a non-string cnid '%@'\n";
    }
  }

  else
  {
    v18 = *(a1 + 48);
    v14 = a1 + 48;
    v16 = *(*(v18 + 8) + 40);
    v17 = @"Me node has no cnid\n";
  }

  v20 = [v16 stringByAppendingFormat:v17, v23];
  v21 = *(*v14 + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

LABEL_17:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = [a2 localIdentifier];
  if (!v9)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = @"People node has no uuid\n";
LABEL_8:
    [v3 stringByAppendingFormat:v4, v8];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v9 length])
    {
      [*(a1 + 32) addObject:v9];
      goto LABEL_10;
    }

    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = @"People node has an empty uuid\n";
    goto LABEL_8;
  }

  [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@"People node has a non-string uuid '%@'\n", v9];
  v5 = LABEL_9:;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

LABEL_10:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_4(uint64_t a1, void *a2)
{
  v13 = [a2 UUID];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v13 length])
      {
        goto LABEL_8;
      }

      v4 = *(a1 + 32);
      v3 = a1 + 32;
      v5 = *(*(v4 + 8) + 40);
      v6 = @"Social Group node has an empty uuid\n";
    }

    else
    {
      v8 = *(a1 + 32);
      v3 = a1 + 32;
      v5 = *(*(v8 + 8) + 40);
      v12 = v13;
      v6 = @"Social Group node has a non-string uuid '%@'\n";
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v3 = a1 + 32;
    v5 = *(*(v7 + 8) + 40);
    v6 = @"Social Group node has no uuid\n";
  }

  v9 = [v5 stringByAppendingFormat:v6, v12];
  v10 = *(*v3 + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

LABEL_8:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_5(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = [v43 label];
  if (![v3 isEqualToString:@"Address"])
  {
    if ([v3 isEqualToString:@"Country"])
    {
      v7 = [v43 name];
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v7 length])
          {
LABEL_32:

            goto LABEL_33;
          }

          v9 = *(a1 + 32);
          v8 = a1 + 32;
          v10 = *(*(v9 + 8) + 40);
          v11 = [v43 label];
          [v10 stringByAppendingFormat:@"%@ node has an empty name\n", v11, v42];
        }

        else
        {
          v21 = *(a1 + 32);
          v8 = a1 + 32;
          v22 = *(*(v21 + 8) + 40);
          v11 = [v43 label];
          [v22 stringByAppendingFormat:@"%@ node has a non-string name '%@'\n", v11, v7];
        }
      }

      else
      {
        v18 = *(a1 + 32);
        v8 = a1 + 32;
        v19 = *(*(v18 + 8) + 40);
        v11 = [v43 label];
        [v19 stringByAppendingFormat:@"%@ node has no name\n", v11, v42];
      }
      v23 = ;
      v24 = *(*v8 + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

LABEL_31:
      goto LABEL_32;
    }

    v7 = v43;
    v11 = [v7 name];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v11 length])
        {
          goto LABEL_23;
        }

        v15 = a1 + 32;
        v16 = *(*(*(a1 + 32) + 8) + 40);
        v17 = [v7 label];
        [v16 stringByAppendingFormat:@"%@ node has an empty name\n", v17, v42];
      }

      else
      {
        v15 = a1 + 32;
        v26 = *(*(*(a1 + 32) + 8) + 40);
        v17 = [v7 label];
        [v26 stringByAppendingFormat:@"%@ node has a non-string name '%@'\n", v17, v11];
      }
    }

    else
    {
      v15 = a1 + 32;
      v20 = *(*(*(a1 + 32) + 8) + 40);
      v17 = [v7 label];
      [v20 stringByAppendingFormat:@"%@ node has no name\n", v17, v42];
    }
    v27 = ;
    v28 = *(*v15 + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

LABEL_23:
    v30 = [v7 UUID];
    if (v30)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v30 length])
        {
LABEL_30:

          goto LABEL_31;
        }

        v32 = *(a1 + 32);
        v31 = a1 + 32;
        v33 = *(*(v32 + 8) + 40);
        v34 = [v7 label];
        [v33 stringByAppendingFormat:@"%@ node has an empty uuid\n", v34, v42];
      }

      else
      {
        v37 = *(a1 + 32);
        v31 = a1 + 32;
        v38 = *(*(v37 + 8) + 40);
        v34 = [v7 label];
        [v38 stringByAppendingFormat:@"%@ node has a non-string uuid '%@'\n", v34, v30];
      }
    }

    else
    {
      v35 = *(a1 + 32);
      v31 = a1 + 32;
      v36 = *(*(v35 + 8) + 40);
      v34 = [v7 label];
      [v36 stringByAppendingFormat:@"%@ node has no uuid\n", v34, v42];
    }
    v39 = ;
    v40 = *(*v31 + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v39;

    goto LABEL_30;
  }

  [v43 coordinate];
  latitude = v45.latitude;
  longitude = v45.longitude;
  if (!CLLocationCoordinate2DIsValid(v45))
  {
    v12 = *(*(*(a1 + 32) + 8) + 40);
    v7 = [v43 label];
    [v12 stringByAppendingFormat:@"%@ node has invalid coordinates\n", v7];
    goto LABEL_12;
  }

  if (longitude == 0.0 && latitude == 0.0)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = [v43 label];
    [v6 stringByAppendingFormat:@"%@ node has null latitude and longitude\n", v7];
    v13 = LABEL_12:;
    v14 = *(*(a1 + 32) + 8);
    v11 = *(v14 + 40);
    *(v14 + 40) = v13;
    goto LABEL_31;
  }

LABEL_33:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_6(uint64_t a1, void *a2)
{
  v13 = [a2 name];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v13 length])
      {
        goto LABEL_8;
      }

      v4 = *(a1 + 32);
      v3 = a1 + 32;
      v5 = *(*(v4 + 8) + 40);
      v6 = @"Area node has an empty name\n";
    }

    else
    {
      v8 = *(a1 + 32);
      v3 = a1 + 32;
      v5 = *(*(v8 + 8) + 40);
      v12 = v13;
      v6 = @"Area node has a non-string name '%@'\n";
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v3 = a1 + 32;
    v5 = *(*(v7 + 8) + 40);
    v6 = @"Area node has no name\n";
  }

  v9 = [v5 stringByAppendingFormat:v6, v12];
  v10 = *(*v3 + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

LABEL_8:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_7(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 label];
  if (([v3 isEqualToString:@"Date"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Season") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"PartOfDay") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"DayOfWeek"))
  {
    v4 = [v15 name];
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = *(a1 + 32);
        v5 = a1 + 32;
        [*(*(v7 + 8) + 40) stringByAppendingFormat:@"%@ node has a non-string name '%@'\n", v3, v4];
        goto LABEL_17;
      }

      if (![v4 length])
      {
        v6 = *(a1 + 32);
        v5 = a1 + 32;
        [*(*(v6 + 8) + 40) stringByAppendingFormat:@"%@ node has an empty name\n", v3, v14];
        v10 = LABEL_17:;
        v11 = *(*v5 + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
      }

LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (([v3 isEqualToString:@"Weekend"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"Weekday") & 1) == 0)
  {
    v4 = [v15 name];
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = *(a1 + 32);
        v5 = a1 + 32;
        [*(*(v13 + 8) + 40) stringByAppendingFormat:@"%@ node has a string name '%@'\n", v3, v4];
        goto LABEL_17;
      }

      if ([v4 integerValue] < 0)
      {
        v8 = *(a1 + 32);
        v5 = a1 + 32;
        [*(*(v8 + 8) + 40) stringByAppendingFormat:@"%@ node has negative name\n", v3, v14];
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_16:
    v9 = *(a1 + 32);
    v5 = a1 + 32;
    [*(*(v9 + 8) + 40) stringByAppendingFormat:@"%@ node has no name\n", v3, v14];
    goto LABEL_17;
  }

LABEL_19:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_8(uint64_t a1, void *a2)
{
  v13 = [a2 name];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v13 length])
      {
        goto LABEL_8;
      }

      v4 = *(a1 + 32);
      v3 = a1 + 32;
      v5 = *(*(v4 + 8) + 40);
      v6 = @"Holiday node has an empty name\n";
    }

    else
    {
      v8 = *(a1 + 32);
      v3 = a1 + 32;
      v5 = *(*(v8 + 8) + 40);
      v12 = v13;
      v6 = @"Holiday node has a non-string name '%@'\n";
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v3 = a1 + 32;
    v5 = *(*(v7 + 8) + 40);
    v6 = @"Holiday node has no name\n";
  }

  v9 = [v5 stringByAppendingFormat:v6, v12];
  v10 = *(*v3 + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

LABEL_8:
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 uniqueMemoryIdentifier];
  v4 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v4)
  {
    v5 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@"Two memory nodes have the same unique identifier %@: %@, %@\n", v7, v4, v3];

    v6 = *(*(a1 + 40) + 8);
    v3 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v7];
  }
}

void __45__PGManager_Debug___checkConsistencyOfGraph___block_invoke_10(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 conformsToProtocol:&unk_284490578];
  v4 = v11;
  if (v3)
  {
    v5 = v11;
    v6 = [v5 featureIdentifier];
    v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (v7)
    {
      v8 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingFormat:@"Two feature nodes have the same unique identifier %@: %@, %@\n", v6, v7, v5];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    else
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
    }

    v4 = v11;
  }
}

- (id)_defaultStatisticsWithGraph:(id)graph verbose:(BOOL)verbose forDiagnostics:(BOOL)diagnostics
{
  MEMORY[0x28223BE20](self);
  v380 = v5;
  v334 = v6;
  v360 = v7;
  v533[1] = *MEMORY[0x277D85DE8];
  v343 = v8;
  string = [MEMORY[0x277CCAB68] string];
  v9 = objc_autoreleasePoolPush();
  v10 = [v360 _checkConsistencyOfGraph:v343];
  v11 = v10;
  if (v10 && [v10 length])
  {
    [string appendFormat:@"Critical - Graph has inconsistencies:\n%@\n\n", v11];
  }

  objc_autoreleasePoolPop(v9);
  infoNode = [v343 infoNode];
  v12 = objc_autoreleasePoolPush();
  creationDate = [infoNode creationDate];
  [string appendFormat:@"Graph Date creation: %@\n", creationDate];

  if ([infoNode canUseLocationDomain])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [string appendFormat:@"Can Use Domain Location: %@\n", v14];
  if ([infoNode canAccessContactsStore])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [string appendFormat:@"Can Use Contacts Store: %@\n", v15];
  [string appendFormat:@"Graph Version: %lu\n", objc_msgSend(v343, "version")];
  objc_autoreleasePoolPop(v12);
  nodesCount = [v343 nodesCount];
  edgesCount = [v343 edgesCount];
  v18 = edgesCount;
  if (nodesCount)
  {
    v19 = edgesCount / nodesCount;
  }

  else
  {
    v19 = 0.0;
  }

  [string appendFormat:@"Node Count: %lu\n", nodesCount];
  [string appendFormat:@"Edge Count: %lu\n", v18];
  [string appendFormat:@"Average Edge by Node: %0.2f\n", *&v19];
  v342 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v345 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v344 = objc_alloc_init(MEMORY[0x277CBEB58]);
  photoLibrary = [v360 photoLibrary];
  v20 = "MusicKitRequestFactory";
  if ((v380 & 1) == 0)
  {
    v352 = objc_autoreleasePoolPush();
    v507 = 0;
    v508 = &v507;
    v509 = 0x2020000000;
    v510 = 0;
    v503 = 0;
    v504 = &v503;
    v505 = 0x2020000000;
    v506 = 0;
    v499 = 0;
    v500 = &v499;
    v501 = 0x2020000000;
    v502 = 0;
    v495 = 0;
    v496 = &v495;
    v497 = 0x2020000000;
    v498 = 0;
    v491 = 0;
    v492 = &v491;
    v493 = 0x2020000000;
    v494 = 0;
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v52 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v533[0] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v533 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v53];

    [librarySpecificFetchOptions setChunkSizeForFetch:100];
    [librarySpecificFetchOptions setCacheSizeForFetch:{objc_msgSend(librarySpecificFetchOptions, "chunkSizeForFetch")}];
    v389 = objc_autoreleasePoolPush();
    v54 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000301 options:librarySpecificFetchOptions];
    v350 = [v54 count];
    v55 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v490 = 0u;
    v489 = 0u;
    v488 = 0u;
    v487 = 0u;
    v395 = v54;
    v56 = [v395 countByEnumeratingWithState:&v487 objects:v532 count:16];
    if (v56)
    {
      v57 = *v488;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v488 != v57)
          {
            objc_enumerationMutation(v395);
          }

          v59 = *(*(&v487 + 1) + 8 * i);
          v60 = objc_autoreleasePoolPush();
          uuid = [v59 uuid];
          [v345 addObject:uuid];

          v62 = [MEMORY[0x277CD97B8] fetchMomentsInHighlight:v59 options:0];
          v486 = 0u;
          v485 = 0u;
          v484 = 0u;
          v483 = 0u;
          v63 = v62;
          v64 = [v63 countByEnumeratingWithState:&v483 objects:v531 count:16];
          if (v64)
          {
            v65 = *v484;
            do
            {
              for (j = 0; j != v64; ++j)
              {
                if (*v484 != v65)
                {
                  objc_enumerationMutation(v63);
                }

                uuid2 = [*(*(&v483 + 1) + 8 * j) uuid];
                [v55 addObject:uuid2];
              }

              v64 = [v63 countByEnumeratingWithState:&v483 objects:v531 count:16];
            }

            while (v64);
          }

          objc_autoreleasePoolPop(v60);
        }

        v56 = [v395 countByEnumeratingWithState:&v487 objects:v532 count:16];
      }

      while (v56);
    }

    v348 = [v55 count];
    objc_autoreleasePoolPop(v389);
    v390 = objc_autoreleasePoolPush();
    v68 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000304 options:librarySpecificFetchOptions];
    v346 = [v68 count];
    v69 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v482 = 0u;
    v481 = 0u;
    v480 = 0u;
    v479 = 0u;
    v396 = v68;
    v70 = [v396 countByEnumeratingWithState:&v479 objects:v530 count:16];
    if (v70)
    {
      v71 = *v480;
      do
      {
        for (k = 0; k != v70; ++k)
        {
          if (*v480 != v71)
          {
            objc_enumerationMutation(v396);
          }

          v73 = *(*(&v479 + 1) + 8 * k);
          v74 = objc_autoreleasePoolPush();
          uuid3 = [v73 uuid];
          [v344 addObject:uuid3];

          v76 = [MEMORY[0x277CD9958] fetchChildDayGroupHighlightsForHighlight:v73 options:librarySpecificFetchOptions];
          v478 = 0u;
          v476 = 0u;
          v477 = 0u;
          v475 = 0u;
          v77 = v76;
          v78 = [v77 countByEnumeratingWithState:&v475 objects:v529 count:16];
          if (v78)
          {
            v79 = *v476;
            do
            {
              for (m = 0; m != v78; ++m)
              {
                if (*v476 != v79)
                {
                  objc_enumerationMutation(v77);
                }

                uuid4 = [*(*(&v475 + 1) + 8 * m) uuid];
                [v69 addObject:uuid4];
              }

              v78 = [v77 countByEnumeratingWithState:&v475 objects:v529 count:16];
            }

            while (v78);
          }

          objc_autoreleasePoolPop(v74);
        }

        v70 = [v396 countByEnumeratingWithState:&v479 objects:v530 count:16];
      }

      while (v70);
    }

    v333 = [v69 count];
    objc_autoreleasePoolPop(v390);
    librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
    v82 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v528 = v82;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v528 count:1];
    [librarySpecificFetchOptions2 setSortDescriptors:v83];

    [librarySpecificFetchOptions2 setChunkSizeForFetch:100];
    [librarySpecificFetchOptions2 setCacheSizeForFetch:{objc_msgSend(librarySpecificFetchOptions2, "chunkSizeForFetch")}];
    v84 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:librarySpecificFetchOptions2];
    firstObject = [v84 firstObject];
    cls_localStartDateComponents = [firstObject cls_localStartDateComponents];

    lastObject = [v84 lastObject];
    cls_localEndDateComponents = [lastObject cls_localEndDateComponents];

    v331 = [v84 count];
    [infoNode topTierAestheticScore];
    v88 = v87;
    [PGGraphBuilder topTierAestheticScoreForRatio:photoLibrary inPhotoLibrary:0.01];
    v90 = v89;
    [infoNode topTierAestheticScoreForTripKeyAsset];
    v92 = v91;
    [PGGraphBuilder topTierAestheticScoreForRatio:photoLibrary inPhotoLibrary:0.05];
    v94 = v93;
    librarySpecificFetchOptions3 = [photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions3 setIncludeGuestAssets:1];
    v95 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curationScore > 0.0"];
    [librarySpecificFetchOptions3 setInternalPredicate:v95];

    [librarySpecificFetchOptions3 setChunkSizeForFetch:1000];
    [librarySpecificFetchOptions3 setCacheSizeForFetch:1000];
    v96 = MEMORY[0x277D86220];
    v97 = MEMORY[0x277D86220];
    v98 = os_signpost_id_generate(v96);
    v99 = v96;
    if (v98 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v98, "AssetScoreStatistics", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v326 = mach_absolute_time();
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke;
    aBlock[3] = &unk_278885800;
    aBlock[4] = &v491;
    aBlock[5] = &v495;
    aBlock[6] = &v499;
    aBlock[7] = &v507;
    aBlock[8] = &v503;
    v100 = _Block_copy(aBlock);
    contexta = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:photoLibrary];
    v472 = 0u;
    v473 = 0u;
    v470 = 0u;
    v471 = 0u;
    obja = v84;
    v101 = [obja countByEnumeratingWithState:&v470 objects:v527 count:16];
    if (v101)
    {
      v361 = v101;
      v371 = 0;
      v358 = *v471;
      v102 = MEMORY[0x277D86220];
      do
      {
        for (n = 0; n != v361; ++n)
        {
          if (*v471 != v358)
          {
            objc_enumerationMutation(obja);
          }

          v375 = *(*(&v470 + 1) + 8 * n);
          v368 = objc_autoreleasePoolPush();
          uuid5 = [v375 uuid];
          [v342 addObject:uuid5];

          v104 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v375 options:librarySpecificFetchOptions3];
          v369 = [v104 count];
          v468 = 0u;
          v469 = 0u;
          v466 = 0u;
          v467 = 0u;
          v105 = v104;
          v106 = [v105 countByEnumeratingWithState:&v466 objects:v526 count:16];
          if (v106)
          {
            v107 = *v467;
            do
            {
              for (ii = 0; ii != v106; ++ii)
              {
                if (*v467 != v107)
                {
                  objc_enumerationMutation(v105);
                }

                (*(v100 + 2))(v100, *(*(&v466 + 1) + 8 * ii), 0);
              }

              v106 = [v105 countByEnumeratingWithState:&v466 objects:v526 count:16];
            }

            while (v106);
          }

          v371 += v369;
          estimatedAssetCount = [v375 estimatedAssetCount];
          if (v369 < estimatedAssetCount)
          {
            librarySpecificFetchOptions4 = [photoLibrary librarySpecificFetchOptions];
            [librarySpecificFetchOptions4 setIncludeGuestAssets:1];
            v110 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curationScore == 0.0"];
            [librarySpecificFetchOptions4 setInternalPredicate:v110];

            v111 = +[PGCurationManager assetPropertySetsForCuration];
            [librarySpecificFetchOptions4 setFetchPropertySets:v111];

            [librarySpecificFetchOptions4 setChunkSizeForFetch:1000];
            [librarySpecificFetchOptions4 setCacheSizeForFetch:1000];
            v386 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v375 options:librarySpecificFetchOptions4];
            v397 = [v386 count];
            if (v397)
            {
              for (jj = 0; jj < v397; jj += 1000)
              {
                v391 = objc_autoreleasePoolPush();
                if (v397 - jj >= 0x3E8)
                {
                  v113 = 1000;
                }

                else
                {
                  v113 = v397 - jj;
                }

                v114 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{jj, v113}];
                v115 = [v386 objectsAtIndexes:v114];

                [MEMORY[0x277CD97A8] prefetchOnAssets:v115 options:31 curationContext:contexta];
                v464 = 0u;
                v465 = 0u;
                v462 = 0u;
                v463 = 0u;
                v116 = v115;
                v117 = [v116 countByEnumeratingWithState:&v462 objects:v525 count:16];
                if (v117)
                {
                  v118 = *v463;
                  do
                  {
                    for (kk = 0; kk != v117; ++kk)
                    {
                      if (*v463 != v118)
                      {
                        objc_enumerationMutation(v116);
                      }

                      (*(v100 + 2))(v100, *(*(&v462 + 1) + 8 * kk), 1);
                    }

                    v117 = [v116 countByEnumeratingWithState:&v462 objects:v525 count:16];
                  }

                  while (v117);
                }

                objc_autoreleasePoolPop(v391);
              }
            }

            if (v397 + v369 != estimatedAssetCount)
            {
              v120 = v102;
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109890;
                *&buf[4] = v369;
                *&buf[8] = 1024;
                *&buf[10] = v397;
                *&buf[14] = 1024;
                *&buf[16] = estimatedAssetCount;
                *&buf[20] = 2112;
                *&buf[22] = v375;
                _os_log_error_impl(&dword_22F0FC000, v102, OS_LOG_TYPE_ERROR, "Numbers of fetched assets with curation score %d and without curation score %d don't match expected number of assets %d for moment %@", buf, 0x1Eu);
              }
            }

            v371 += v397;
          }

          objc_autoreleasePoolPop(v368);
        }

        v361 = [obja countByEnumeratingWithState:&v470 objects:v527 count:16];
      }

      while (v361);
    }

    else
    {
      v371 = 0;
    }

    v314 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v317 = MEMORY[0x277D86220];
    if (v98 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v98, "AssetScoreStatistics", "", buf, 2u);
    }

    v318 = MEMORY[0x277D86220];
    v319 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v318, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "AssetScoreStatistics";
      *&buf[12] = 2048;
      *&buf[14] = ((((v314 - v326) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    [string appendFormat:@"Photo Count: %lu\n", v371];
    [string appendFormat:@"Moment Count: %lu\n", v331];
    [string appendFormat:@"Highlight Count: %lu, covering %lu moments\n", v350, v348];
    [string appendFormat:@"Highlight Group Count: %lu, covering %lu highlights\n", v346, v333];
    [string appendFormat:@"Date Range: %lu - %lu\n\n", objc_msgSend(cls_localStartDateComponents, "year"), objc_msgSend(cls_localEndDateComponents, "year")];
    v320 = *(v496 + 6);
    numberOfBetterAssets = [infoNode numberOfBetterAssets];
    v322 = *(v500 + 6);
    numberOfImprovedAssets = [infoNode numberOfImprovedAssets];
    v324 = *(v504 + 6);
    numberOfDefaultAssets = [infoNode numberOfDefaultAssets];
    [string appendFormat:@"Assets Counts:\n\tBetter: %d (graph: %d)\n\tImproved: %d (graph: %d)\n\tDefault: %d (graph: %d)\n\tUtility: %d (graph: %d)\nTotal: %d (graph: %d)\n", v320, numberOfBetterAssets, v322, numberOfImprovedAssets, v324, numberOfDefaultAssets, *(v508 + 6), objc_msgSend(infoNode, "numberOfUtilityAssets"), v371, objc_msgSend(infoNode, "numberOfAssets")];
    [string appendFormat:@"Current Graph Top-tier Aesthetic Score: %f\n", v88];
    [string appendFormat:@"Library Top-tier Aesthetic Score: %f\n\n", v90];
    [string appendFormat:@"Current Graph Top-tier Aesthetic Score for Trip Key Asset: %f\n", v92];
    [string appendFormat:@"Library Top-tier Aesthetic Score for Trip Key Asset: %f\n\n", v94];

    _Block_object_dispose(&v491, 8);
    _Block_object_dispose(&v495, 8);
    _Block_object_dispose(&v499, 8);
    _Block_object_dispose(&v503, 8);
    _Block_object_dispose(&v507, 8);

    objc_autoreleasePoolPop(v352);
    v20 = "MusicKitRequestFactory";
  }

  v367 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v507 = 0;
  v508 = &v507;
  v21 = *(v20 + 261);
  v509 = v21;
  v510 = 0;
  v503 = 0;
  v504 = &v503;
  v505 = v21;
  v506 = 0;
  v499 = 0;
  v500 = &v499;
  v501 = v21;
  v502 = 0;
  v495 = 0;
  v496 = &v495;
  v497 = v21;
  v498 = 0;
  v491 = 0;
  v492 = &v491;
  v493 = v21;
  v494 = 0;
  context = objc_autoreleasePoolPush();
  momentNodesSortedByDate = [v343 momentNodesSortedByDate];
  v23 = [momentNodesSortedByDate count];
  v394 = [MEMORY[0x277CBEB58] set];
  v388 = [MEMORY[0x277CBEB58] set];
  v460 = 0u;
  v461 = 0u;
  v458 = 0u;
  v459 = 0u;
  obj = momentNodesSortedByDate;
  v24 = [obj countByEnumeratingWithState:&v458 objects:v524 count:16];
  v385 = v23;
  v25 = 0;
  v26 = 0;
  if (v24)
  {
    v27 = *v459;
    do
    {
      for (mm = 0; mm != v24; ++mm)
      {
        if (*v459 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v458 + 1) + 8 * mm);
        uuid6 = [v29 uuid];
        [v367 addObject:uuid6];

        if ([v29 isInteresting])
        {
          [v394 addObject:v29];
        }

        if ([v29 isSmartInteresting])
        {
          [v388 addObject:v29];
        }

        isInterestingForMemories = [v29 isInterestingForMemories];
        [v29 contentScore];
        v33 = v32;
        v457[0] = MEMORY[0x277D85DD0];
        v457[1] = 3221225472;
        v457[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_391;
        v457[3] = &unk_278885828;
        v457[4] = &v507;
        v457[5] = &v503;
        v457[6] = &v499;
        v457[7] = &v495;
        v457[8] = &v491;
        [v29 enumerateAddressEdgesAndNodesUsingBlock:v457];
        v26 += isInterestingForMemories;
        if (v33 < 0.5)
        {
          ++v25;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v458 objects:v524 count:16];
    }

    while (v24);
  }

  v34 = [v394 mutableCopy];
  [v34 intersectSet:v388];
  v35 = [v394 mutableCopy];
  [v35 minusSet:v388];
  v36 = [v388 mutableCopy];
  [v36 minusSet:v394];
  v37 = [MEMORY[0x277CBEB58] setWithArray:obj];
  [v37 minusSet:v394];
  [v37 minusSet:v388];
  [string appendFormat:@"Moment nodes count: %lu\n", v385];
  [string appendFormat:@"\tInteresting: %.lu\n", objc_msgSend(v394, "count")];
  [string appendFormat:@"\tSmart: %.lu\n", objc_msgSend(v388, "count")];
  [string appendFormat:@"\tInteresting and smart: %.lu\n", objc_msgSend(v34, "count")];
  [string appendFormat:@"\tInteresting and not smart: %.lu\n", objc_msgSend(v35, "count")];
  [string appendFormat:@"\tSmart and not interesting: %.lu\n", objc_msgSend(v36, "count")];
  [string appendFormat:@"\tNot smart and not interesting: %.lu\n", objc_msgSend(v37, "count")];
  [string appendFormat:@"\tInteresting for Memories: %.lu\n", v26];
  [string appendFormat:@"\tJunk (contentScore < 0.5): %.lu\n\n", v25];

  objc_autoreleasePoolPop(context);
  if ((v380 & 1) == 0)
  {
    v38 = objc_autoreleasePoolPush();
    [string appendFormat:@"Graph <-> Library Matching\n"];
    v39 = [v367 mutableCopy];
    [v39 intersectSet:v342];
    v40 = [v39 count];
    [string appendFormat:@"\tNumber of Moments: %lu\n", objc_msgSend(v342, "count")];
    [string appendFormat:@"\tNumber of Moment nodes: %lu\n", objc_msgSend(v367, "count")];
    [string appendFormat:@"\tNumber of Moment nodes matching moments: %lu\n", v40];
    [string appendFormat:@"\tNumber of Moment nodes without moment: %lu\n", objc_msgSend(v367, "count") - v40];
    [string appendFormat:@"\tNumber of Moments without moment nodes: %lu\n\n", objc_msgSend(v342, "count") - v40];
    v41 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v455[0] = MEMORY[0x277D85DD0];
    v455[1] = 3221225472;
    v455[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_2;
    v455[3] = &unk_278885850;
    v42 = v41;
    v456 = v42;
    [v343 enumerateDayHighlightNodesWithBlock:v455];
    v43 = [v42 mutableCopy];
    [v43 intersectSet:v345];
    v44 = [v43 count];
    [string appendFormat:@"\tNumber of Highlights: %lu\n", objc_msgSend(v345, "count")];
    [string appendFormat:@"\tNumber of Highlight nodes: %lu\n", objc_msgSend(v42, "count")];
    [string appendFormat:@"\tNumber of Highlight nodes matching highlights: %lu\n", v44];
    [string appendFormat:@"\tNumber of Highlight nodes without highlights: %lu\n", objc_msgSend(v42, "count") - v44];
    [string appendFormat:@"\tNumber of Highlights without highlight nodes: %lu\n\n", objc_msgSend(v345, "count") - v44];
    v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v453[0] = MEMORY[0x277D85DD0];
    v453[1] = 3221225472;
    v453[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_3;
    v453[3] = &unk_278885878;
    v46 = v45;
    v454 = v46;
    [v343 enumerateHighlightGroupNodesWithBlock:v453];
    v47 = [v46 mutableCopy];
    [v47 intersectSet:v344];
    v48 = [v47 count];
    [string appendFormat:@"\tNumber of Highlight groups: %lu\n", objc_msgSend(v344, "count")];
    [string appendFormat:@"\tNumber of Highlight group nodes: %lu\n", objc_msgSend(v46, "count")];
    [string appendFormat:@"\tNumber of Highlight group nodes matching highlight groups: %lu\n", v48];
    [string appendFormat:@"\tNumber of Highlight group nodes without highlight groups: %lu\n", objc_msgSend(v46, "count") - v48];
    [string appendFormat:@"\tNumber of Highlight groups without highlight group nodes: %lu\n\n", objc_msgSend(v344, "count") - v48];

    objc_autoreleasePoolPop(v38);
  }

  [string appendFormat:@"People: %lu\n", objc_msgSend(v343, "numberOfPersonNodesIncludingMe:", 0)];
  v49 = [v360 _socialGroupsStatistics:v343];
  [string appendFormat:@"%@\n", v49];

  meNode = [v343 meNode];
  localIdentifier = [meNode localIdentifier];
  if (meNode)
  {
    v50 = [v360 _stringDescriptionForMeNode:?];
    [string appendString:v50];

    v51 = [v343 nodesForLabel:@"Me" domain:300];
    v449[0] = MEMORY[0x277D85DD0];
    v449[1] = 3221225472;
    v449[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_4;
    v449[3] = &unk_278888960;
    v450 = meNode;
    v451 = string;
    v452 = v360;
    [v51 enumerateObjectsUsingBlock:v449];
  }

  else
  {
    [string appendFormat:@"No Me node!!!\n"];
  }

  meNode2 = [v343 meNode];
  inferredPersonNode = [meNode2 inferredPersonNode];

  if (!inferredPersonNode)
  {
    v124 = @"No Suggested Me node.\n\n";
    goto LABEL_101;
  }

  localIdentifier2 = [inferredPersonNode localIdentifier];
  v123 = [localIdentifier isEqualToString:localIdentifier2];

  if (v123)
  {
    v124 = @"### Suggested Me node matches Me node.\n\n";
LABEL_101:
    [string appendFormat:v124];
    goto LABEL_105;
  }

  if ([localIdentifier length])
  {
    [string appendFormat:@"### Suggested Me node mismatch.\n\n"];
  }

  localIdentifier3 = [inferredPersonNode localIdentifier];
  name = [inferredPersonNode name];
  contactIdentifier = [inferredPersonNode contactIdentifier];
  [string appendFormat:@"Suggested Me node found: id:'%@', name:'%@', contact:'%@'\n\n", localIdentifier3, name, contactIdentifier];

LABEL_105:
  _dateFormatter = [v360 _dateFormatter];
  [string appendFormat:@"Persons with age category child:\n"];
  v128 = [v343 personNodesIncludingMe:0];
  v129 = +[PGGraphPersonNode personSortDescriptors];
  v130 = [v128 sortedArrayUsingDescriptors:v129];

  v447 = 0u;
  v448 = 0u;
  v445 = 0u;
  v446 = 0u;
  v355 = v130;
  v131 = [v355 countByEnumeratingWithState:&v445 objects:v523 count:16];
  if (v131)
  {
    v132 = *v446;
    do
    {
      for (nn = 0; nn != v131; ++nn)
      {
        if (*v446 != v132)
        {
          objc_enumerationMutation(v355);
        }

        v134 = *(*(&v445 + 1) + 8 * nn);
        if ([v134 ageCategory] == 2)
        {
          birthdayDate = [v134 birthdayDate];
          if (birthdayDate)
          {
            v136 = [_dateFormatter stringFromDate:birthdayDate];
            name2 = [v134 name];
            [string appendFormat:@"\t%@, with birthday:%@\n", name2, v136];
          }

          else
          {
            name3 = [v134 name];
            v136 = name3;
            if (name3)
            {
              v139 = name3;
            }

            else
            {
              v139 = @"Unnamed child";
            }

            [string appendFormat:@"\t%@\n", v139];
          }
        }
      }

      v131 = [v355 countByEnumeratingWithState:&v445 objects:v523 count:16];
    }

    while (v131);
  }

  [string appendString:@"\n"];
  if ((v380 & 1) == 0)
  {
    v140 = objc_autoreleasePoolPush();
    blockedFeatures = [v360 blockedFeatures];
    v142 = [(__CFString *)blockedFeatures count];
    v143 = @"none";
    if (v142)
    {
      v143 = blockedFeatures;
    }

    [string appendFormat:@"Blocked Memory Features: %@\n\n", v143];

    objc_autoreleasePoolPop(v140);
  }

  v144 = objc_autoreleasePoolPush();
  v145 = [v360 _stringDescriptionForPeopleEventsWithGraph:v343];
  [string appendFormat:@"%@\n", v145];

  objc_autoreleasePoolPop(v144);
  v146 = objc_autoreleasePoolPush();
  currentLocalDate = [MEMORY[0x277D27690] currentLocalDate];
  v148 = objc_opt_class();
  v149 = [currentLocalDate dateByAddingTimeInterval:604800.0];
  serviceManager = [v360 serviceManager];
  locationCache = [v360 locationCache];
  v152 = [v148 _calendarEventsBetweenDate:v149 andDate:currentLocalDate atLocation:0 withPersonLocalIdentifiers:0 inPhotoLibrary:0 serviceManager:serviceManager locationCache:locationCache];

  [string appendFormat:@"Number of significant calendar events in the past week: %d\n\n", objc_msgSend(v152, "count")];
  objc_autoreleasePoolPop(v146);
  v392 = objc_autoreleasePoolPush();
  supersets = [v343 supersets];
  [string appendFormat:@"\nSupersets: %zu\n", objc_msgSend(supersets, "count")];
  v153 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalDateInterval" ascending:1];
  v522 = v153;
  v154 = [MEMORY[0x277CBEA60] arrayWithObjects:&v522 count:1];
  v155 = [supersets sortedArrayUsingDescriptors:v154];

  v443 = 0u;
  v444 = 0u;
  v441 = 0u;
  v442 = 0u;
  v156 = v155;
  v157 = [v156 countByEnumeratingWithState:&v441 objects:v521 count:16];
  if (v157)
  {
    v158 = *v442;
    do
    {
      for (i1 = 0; i1 != v157; ++i1)
      {
        if (*v442 != v158)
        {
          objc_enumerationMutation(v156);
        }

        v160 = *(*(&v441 + 1) + 8 * i1);
        addressNode = [v160 addressNode];
        keywordDescription = [addressNode keywordDescription];

        universalStartDate = [v160 universalStartDate];
        v164 = [_dateFormatter stringFromDate:universalStartDate];

        universalEndDate = [v160 universalEndDate];
        v166 = [_dateFormatter stringFromDate:universalEndDate];

        collection = [v160 collection];
        momentNodes = [collection momentNodes];
        [string appendFormat:@"\t%@ from %@ to %@ (%lu moments)\n", keywordDescription, v164, v166, objc_msgSend(momentNodes, "count")];
      }

      v157 = [v156 countByEnumeratingWithState:&v441 objects:v521 count:16];
    }

    while (v157);
  }

  objc_autoreleasePoolPop(v392);
  v169 = [PGTitleGenerationContext alloc];
  serviceManager2 = [v360 serviceManager];
  v359 = [(PGTitleGenerationContext *)v169 initWithGraph:v343 serviceManager:serviceManager2];

  v171 = objc_autoreleasePoolPush();
  longTripNodes = [v343 longTripNodes];
  v173 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  *buf = v173;
  v174 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  *&buf[8] = v174;
  v175 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  *&buf[16] = v175;
  v176 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

  v177 = [longTripNodes sortedArrayUsingDescriptors:v176];

  [string appendFormat:@"\nTrips: %lu\n", objc_msgSend(v177, "count")];
  v178 = [v360 _stringDescriptionForMeaningfulEvents:v177 isTrip:1 forDiagnostics:v380 titleGenerationContext:v359];
  [string appendFormat:@"%@\n", v178];

  objc_autoreleasePoolPop(v171);
  v179 = objc_autoreleasePoolPush();
  shortTripNodes = [v343 shortTripNodes];
  v181 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  *buf = v181;
  v182 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
  *&buf[8] = v182;
  v183 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  *&buf[16] = v183;
  v184 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

  v185 = [shortTripNodes sortedArrayUsingDescriptors:v184];

  [string appendFormat:@"Weekends: %lu\n", objc_msgSend(v185, "count")];
  v186 = [v360 _stringDescriptionForMeaningfulEvents:v185 isTrip:1 forDiagnostics:v380 titleGenerationContext:v359];
  [string appendFormat:@"%@\n", v186];

  objc_autoreleasePoolPop(v179);
  v327 = objc_autoreleasePoolPush();
  v339 = +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
  v187 = [v343 edgesForLabel:@"MEANING" domain:700];
  contextb = [MEMORY[0x277CBEB38] dictionary];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  meaningfulEvents = [v343 meaningfulEvents];
  v370 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(meaningfulEvents, "count")}];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v347 = objc_alloc_init(PGEventLabelingConfiguration);
  if (+[PGEventLabelingConfiguration isEventLabelingEnabled])
  {
    v188 = [MEMORY[0x277CBEB58] setWithArray:v339];
    meaningLabels = [(PGEventLabelingConfiguration *)v347 meaningLabels];
    [v188 unionSet:meaningLabels];

    allObjects = [v188 allObjects];

    v339 = allObjects;
  }

  v439 = 0u;
  v440 = 0u;
  v437 = 0u;
  v438 = 0u;
  v353 = v187;
  v191 = [v353 countByEnumeratingWithState:&v437 objects:v520 count:16];
  if (v191)
  {
    v192 = *v438;
    do
    {
      for (i2 = 0; i2 != v191; ++i2)
      {
        if (*v438 != v192)
        {
          objc_enumerationMutation(v353);
        }

        v194 = *(*(&v437 + 1) + 8 * i2);
        meaningLabel = [v194 meaningLabel];
        sourceNode = [v194 sourceNode];
        if (!+[PGEventLabelingConfiguration isEventLabelingEnabled](PGEventLabelingConfiguration, "isEventLabelingEnabled") || (-[PGEventLabelingConfiguration thresholdsBy:](v347, "thresholdsBy:", meaningLabel), v197 = objc_claimAutoreleasedReturnValue(), [v197 highPrecisionThreshold], v199 = v198, v197, objc_msgSend(v194, "confidence"), v200 >= v199))
        {
          alternativeMeaningLabels = [sourceNode alternativeMeaningLabels];
          v202 = [alternativeMeaningLabels containsObject:meaningLabel];

          if (v202)
          {
            v203 = MEMORY[0x277CCABB0];
            v204 = [dictionary2 objectForKeyedSubscript:meaningLabel];
            v205 = [v203 numberWithInteger:{objc_msgSend(v204, "integerValue") + 1}];
            [dictionary2 setObject:v205 forKeyedSubscript:meaningLabel];
          }

          v206 = [dictionary3 objectForKeyedSubscript:meaningLabel];
          v207 = v206 == 0;

          if (v207)
          {
            array = [MEMORY[0x277CBEB18] array];
            [dictionary3 setObject:array forKeyedSubscript:meaningLabel];
          }

          v209 = [dictionary3 objectForKeyedSubscript:meaningLabel];
          [v209 addObject:sourceNode];

          [v370 addObject:sourceNode];
        }
      }

      v191 = [v353 countByEnumeratingWithState:&v437 objects:v520 count:16];
    }

    while (v191);
  }

  v210 = [v339 sortedArrayUsingSelector:sel_compare_];
  [string appendFormat:@"\nMeaningful Events: %lu events, %lu meanings\n", objc_msgSend(meaningfulEvents, "count"), objc_msgSend(v343, "edgesCountForLabel:domain:", @"MEANING", 700)];
  v435 = 0u;
  v436 = 0u;
  v433 = 0u;
  v434 = 0u;
  v378 = v210;
  v211 = [v378 countByEnumeratingWithState:&v433 objects:v519 count:16];
  if (v211)
  {
    v212 = *v434;
    do
    {
      for (i3 = 0; i3 != v211; ++i3)
      {
        if (*v434 != v212)
        {
          objc_enumerationMutation(v378);
        }

        v214 = *(*(&v433 + 1) + 8 * i3);
        v215 = [dictionary3 objectForKeyedSubscript:v214];
        if ([v215 count])
        {
          v216 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
          *buf = v216;
          v217 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
          *&buf[8] = v217;
          v218 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
          *&buf[16] = v218;
          v219 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];

          [v215 sortUsingDescriptors:v219];
          [string appendFormat:@"%@: %lu\n", v214, objc_msgSend(v215, "count")];
          v220 = [v360 _stringDescriptionForMeaningfulEvents:v215 isTrip:0 forDiagnostics:v380 titleGenerationContext:v359];
          [string appendFormat:@"%@\n", v220];
        }

        v221 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v215, "count")}];
        [contextb setObject:v221 forKeyedSubscript:v214];
      }

      v211 = [v378 countByEnumeratingWithState:&v433 objects:v519 count:16];
    }

    while (v211);
  }

  v222 = [v370 count];
  if (v222 < [meaningfulEvents count])
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v431 = 0u;
    v432 = 0u;
    v429 = 0u;
    v430 = 0u;
    v224 = meaningfulEvents;
    v225 = [v224 countByEnumeratingWithState:&v429 objects:v518 count:16];
    if (v225)
    {
      v226 = *v430;
      do
      {
        for (i4 = 0; i4 != v225; ++i4)
        {
          if (*v430 != v226)
          {
            objc_enumerationMutation(v224);
          }

          v228 = *(*(&v429 + 1) + 8 * i4);
          if (([v370 containsObject:v228] & 1) == 0)
          {
            [array2 addObject:v228];
          }
        }

        v225 = [v224 countByEnumeratingWithState:&v429 objects:v518 count:16];
      }

      while (v225);
    }

    [string appendFormat:@"Other meaningful events:\n"];
    v229 = [v360 _stringDescriptionForMeaningfulEvents:array2 isTrip:0 forDiagnostics:v380 titleGenerationContext:v359];
    [string appendFormat:@"%@\n", v229];
  }

  [string appendFormat:@"Number of alternative meanings: %lu \n", objc_msgSend(v343, "edgesCountForLabel:domain:", @"MEANING", 702)];
  v364 = [MEMORY[0x277CBEB58] set];
  v230 = [v343 edgesForLabel:@"MEANING" domain:702];
  v427 = 0u;
  v428 = 0u;
  v425 = 0u;
  v426 = 0u;
  v351 = v230;
  v231 = [v351 countByEnumeratingWithState:&v425 objects:v517 count:16];
  if (v231)
  {
    v232 = *v426;
    do
    {
      for (i5 = 0; i5 != v231; ++i5)
      {
        if (*v426 != v232)
        {
          objc_enumerationMutation(v351);
        }

        v234 = *(*(&v425 + 1) + 8 * i5);
        meaningLabel2 = [v234 meaningLabel];
        v236 = MEMORY[0x277CCABB0];
        v237 = [dictionary objectForKeyedSubscript:meaningLabel2];
        v238 = [v236 numberWithInteger:{objc_msgSend(v237, "integerValue") + 1}];
        [dictionary setObject:v238 forKeyedSubscript:meaningLabel2];

        sourceNode2 = [v234 sourceNode];
        [v364 addObject:sourceNode2];
      }

      v231 = [v351 countByEnumeratingWithState:&v425 objects:v517 count:16];
    }

    while (v231);
  }

  [string appendFormat:@"Number of moments connected with alternative meanings: %lu\n", objc_msgSend(v364, "count")];
  v329 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@|   A   |   B   |  A\\B  |  B\\A  |  A⋂B  |  A⋃B  |", @"Meaning (A) / Alternative (B) "];
  v240 = [&stru_2843F5C58 stringByPaddingToLength:objc_msgSend(v329 withString:"length") startingAtIndex:{@"_", 0}];
  [string appendFormat:@"%@\n%@\n", v329, v240];
  spid = v240;
  v423 = 0u;
  v424 = 0u;
  v421 = 0u;
  v422 = 0u;
  v349 = v378;
  v241 = 0;
  v242 = 0;
  v243 = 0;
  v244 = 0;
  v245 = [v349 countByEnumeratingWithState:&v421 objects:v516 count:16];
  if (v245)
  {
    v379 = 0;
    v381 = 0;
    v362 = *v422;
    do
    {
      v246 = 0;
      v366 = v245;
      do
      {
        if (*v422 != v362)
        {
          objc_enumerationMutation(v349);
        }

        v374 = v244;
        v376 = v242;
        v247 = *(*(&v421 + 1) + 8 * v246);
        v248 = [contextb objectForKeyedSubscript:v247];
        unsignedLongValue = [v248 unsignedLongValue];
        v250 = v241;

        v251 = [dictionary objectForKeyedSubscript:v247];
        unsignedLongValue2 = [v251 unsignedLongValue];

        v253 = [dictionary2 objectForKeyedSubscript:v247];
        unsignedLongValue3 = [v253 unsignedLongValue];

        v255 = [v247 stringByPaddingToLength:objc_msgSend(@"Meaning (A) / Alternative (B) " withString:"length") startingAtIndex:{@" ", 0}];
        v256 = unsignedLongValue - unsignedLongValue3;
        v257 = unsignedLongValue2 - unsignedLongValue3;
        v258 = unsignedLongValue2 - unsignedLongValue3 + unsignedLongValue;
        [string appendFormat:@"%@|%7lu|%7lu|%7lu|%7lu|%7lu|%7lu|\n", v255, unsignedLongValue, unsignedLongValue2, unsignedLongValue - unsignedLongValue3, unsignedLongValue2 - unsignedLongValue3, unsignedLongValue3, v258];

        v379 += unsignedLongValue;
        v381 += unsignedLongValue2;
        v244 = unsignedLongValue3 + v374;
        v242 = v258 + v376;
        v243 += v256;
        v241 = v257 + v250;
        ++v246;
      }

      while (v366 != v246);
      v245 = [v349 countByEnumeratingWithState:&v421 objects:v516 count:16];
    }

    while (v245);
  }

  else
  {
    v379 = 0;
    v381 = 0;
  }

  v259 = v242;

  v260 = [@"Totals" stringByPaddingToLength:objc_msgSend(@"Meaning (A) / Alternative (B) " withString:"length") startingAtIndex:{@" ", 0}];
  [string appendFormat:@"%@\n%@|%7lu|%7lu|%7lu|%7lu|%7lu|%7lu|\n", spid, v260, v379, v381, v243, v241, v244, v259];

  objc_autoreleasePoolPop(v327);
  v261 = objc_autoreleasePoolPush();
  mainUrbanCityNodes = [v343 mainUrbanCityNodes];
  [string appendFormat:@"\n\nMain Urban Cities: %lu\n", objc_msgSend(mainUrbanCityNodes, "count")];
  v263 = [v360 _stringDescriptionForUrbanCities:mainUrbanCityNodes];
  [string appendFormat:@"%@\n", v263];

  objc_autoreleasePoolPop(v261);
  v264 = objc_autoreleasePoolPush();
  interestingCityNodes = [v343 interestingCityNodes];
  v266 = [interestingCityNodes set];
  v267 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v515 = v267;
  v268 = [MEMORY[0x277CBEA60] arrayWithObjects:&v515 count:1];
  v269 = [v266 sortedArrayUsingDescriptors:v268];

  [string appendFormat:@"Interesting Cities: %lu\n", objc_msgSend(v269, "count")];
  v270 = [v360 _stringDescriptionForInterestingCities:v269];
  [string appendFormat:@"%@\n", v270];

  objc_autoreleasePoolPop(v264);
  v271 = objc_autoreleasePoolPush();
  v272 = [v343 edgesForLabel:@"CELEBRATING" domain:401];
  v273 = [v272 valueForKeyPath:@"targetNode.name"];
  allObjects2 = [v273 allObjects];

  [string appendFormat:@"Celebrated Events: %lu\n", objc_msgSend(allObjects2, "count")];
  if ([allObjects2 count])
  {
    v275 = [allObjects2 componentsJoinedByString:{@", "}];
    [string appendFormat:@"%@\n", v275];
  }

  objc_autoreleasePoolPop(v271);
  v276 = objc_autoreleasePoolPush();
  v277 = [v360 _stringDescriptionForPetsWithGraph:v343];
  [string appendString:v277];

  objc_autoreleasePoolPop(v276);
  v278 = objc_autoreleasePoolPush();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = v21;
  *&buf[24] = 0;
  info = 0;
  p_info = &info;
  v419 = v21;
  v420 = 0;
  v279 = objc_alloc_init(PGNeighborScoreComputer);
  momentNodes2 = [v343 momentNodes];
  v413[0] = MEMORY[0x277D85DD0];
  v413[1] = 3221225472;
  v413[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_5;
  v413[3] = &unk_2788858A0;
  v281 = v279;
  v414 = v281;
  v415 = buf;
  v416 = &info;
  [momentNodes2 enumerateNodesUsingBlock:v413];

  [string appendFormat:@"[Neighbor] Interesting Events: %lu\n", *(*&buf[8] + 24)];
  [string appendFormat:@"[Neighbor] Highly Interesting Events: %lu\n", *&p_info[3]];

  _Block_object_dispose(&info, 8);
  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v278);
  v282 = objc_autoreleasePoolPush();
  array3 = [MEMORY[0x277CBEB18] array];
  v411[0] = MEMORY[0x277D85DD0];
  v411[1] = 3221225472;
  v411[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_6;
  v411[3] = &unk_278888CD0;
  v284 = array3;
  v412 = v284;
  [v343 enumerateNodesWithLabel:@"Area" domain:201 usingBlock:v411];
  [v284 sortUsingSelector:sel_localizedCompare_];
  v285 = [v284 count];
  v286 = [v284 componentsJoinedByString:@"\n"];
  [string appendFormat:@"\nBlocked AOIs: %lu %@", v285, v286];

  objc_autoreleasePoolPop(v282);
  [string appendFormat:@"\nNumber of Default Addresses: %lu", v508[3]];
  [string appendFormat:@"\nNumber of Improved Addresses: %lu", v504[3]];
  [string appendFormat:@"\nNumber of Coarse Addresses: %lu", v500[3]];
  [string appendFormat:@"\nNumber of Ocean Addresses: %lu (far away from projection: %lu)", v496[3], v492[3]];
  v287 = objc_autoreleasePoolPush();
  v288 = [v360 _stringDescriptionForDisambiguatedLocationsWithGraph:v343];
  [string appendString:v288];

  objc_autoreleasePoolPop(v287);
  v289 = objc_autoreleasePoolPush();
  v290 = [v360 _stringDescriptionForDisambiguatedPOIsInMomentNodes:obj];
  [string appendString:v290];

  objc_autoreleasePoolPop(v289);
  v291 = objc_autoreleasePoolPush();
  v292 = [v360 _stringDescriptionForBusinessItemsWithGraph:v343 includingInferredThroughPublicEvents:0 verbose:v334];
  [string appendString:v292];

  objc_autoreleasePoolPop(v291);
  v293 = objc_autoreleasePoolPush();
  v294 = [v360 _stringDescriptionForPublicEventsWithGraph:v343 verbose:v334];
  [string appendString:v294];

  objc_autoreleasePoolPop(v293);
  v295 = objc_autoreleasePoolPush();
  [string appendFormat:@"\n\nPlaces:\n"];
  array4 = [MEMORY[0x277CBEB18] array];
  v409[0] = MEMORY[0x277D85DD0];
  v409[1] = 3221225472;
  v409[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_7;
  v409[3] = &unk_2788875D0;
  v297 = array4;
  v410 = v297;
  [v343 enumerateNodesWithLabel:0 domain:501 usingBlock:v409];
  v298 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"label" ascending:1];
  v513 = v298;
  v299 = [MEMORY[0x277CBEA60] arrayWithObjects:&v513 count:1];
  [v297 sortUsingDescriptors:v299];

  v407[0] = MEMORY[0x277D85DD0];
  v407[1] = 3221225472;
  v407[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_8;
  v407[3] = &unk_2788858C8;
  v300 = string;
  v408 = v300;
  [v297 enumerateObjectsUsingBlock:v407];
  [v300 appendString:@"\n"];
  array5 = [MEMORY[0x277CBEB18] array];
  v405[0] = MEMORY[0x277D85DD0];
  v405[1] = 3221225472;
  v405[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_9;
  v405[3] = &unk_2788875F8;
  v302 = array5;
  v406 = v302;
  [v343 enumerateNodesWithLabel:0 domain:502 usingBlock:v405];
  v303 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"label" ascending:1];
  v512 = v303;
  v304 = [MEMORY[0x277CBEA60] arrayWithObjects:&v512 count:1];
  [v302 sortUsingDescriptors:v304];

  v403[0] = MEMORY[0x277D85DD0];
  v403[1] = 3221225472;
  v403[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_10;
  v403[3] = &unk_2788858F0;
  v305 = v300;
  v404 = v305;
  [v302 enumerateObjectsUsingBlock:v403];

  objc_autoreleasePoolPop(v295);
  v306 = objc_autoreleasePoolPush();
  [v305 appendFormat:@"\n\nScene:\n"];
  v307 = [(PGGraphNodeCollection *)PGGraphSceneNodeCollection nodesInGraph:v343];
  v308 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"label" ascending:1];
  v511 = v308;
  v309 = [MEMORY[0x277CBEA60] arrayWithObjects:&v511 count:1];
  v310 = [v307 sortedArrayUsingDescriptors:v309];

  v401[0] = MEMORY[0x277D85DD0];
  v401[1] = 3221225472;
  v401[2] = __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_11;
  v401[3] = &unk_278885918;
  v311 = v305;
  v402 = v311;
  [v310 enumerateObjectsUsingBlock:v401];

  objc_autoreleasePoolPop(v306);
  [v311 appendFormat:@"\n\nGraph Description:\n%@", v343];
  v312 = v311;

  _Block_object_dispose(&v491, 8);
  _Block_object_dispose(&v495, 8);
  _Block_object_dispose(&v499, 8);
  _Block_object_dispose(&v503, 8);
  _Block_object_dispose(&v507, 8);

  return v312;
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v8 = v5;
  if (a3)
  {
    [v5 clsContentScore];
  }

  else
  {
    [v5 curationScore];
  }

  if (v6 >= *MEMORY[0x277D3C758])
  {
    v7 = 32;
  }

  else if (v6 >= *MEMORY[0x277D3C760])
  {
    v7 = 40;
  }

  else if (v6 >= *MEMORY[0x277D3C770])
  {
    v7 = 48;
  }

  else
  {
    v7 = 56;
    if (v6 > *MEMORY[0x277D3C778])
    {
      v7 = 64;
    }
  }

  ++*(*(*(a1 + v7) + 8) + 24);
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_391(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 locationMode];
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = a1[6];
      goto LABEL_11;
    }

    if (v7 == 3)
    {
      ++*(*(a1[7] + 8) + 24);
      [v6 coordinate];
      [v5 photoCoordinate];
      CLLocationCoordinate2DGetDistanceFrom();
      if (v9 == 0.0)
      {
        v8 = a1[8];
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (!v7)
    {
      v8 = a1[4];
      goto LABEL_11;
    }

    if (v7 == 1)
    {
      v8 = a1[5];
LABEL_11:
      ++*(*(v8 + 8) + 24);
    }
  }
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isSameNodeAsNode:*(a1 + 32)] & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) _stringDescriptionForMeNode:v5];
    [v3 appendFormat:@"### Additional %@", v4];
  }
}

void *__71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_5(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) neighborScoreWithMomentNode:a2];
  if (v4 > 0.43)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  if (v4 > 0.6)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  return result;
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_6(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 isBlocked])
  {
    v3 = *(a1 + 32);
    v4 = MEMORY[0x277CCACA8];
    v5 = [v7 name];
    v6 = [v4 stringWithFormat:@"- %@", v5];
    [v3 addObject:v6];
  }
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 label];
  v4 = [v3 edgesCount];

  [v2 appendFormat:@"[POI] Number of %@: %lu\n", v5, v4];
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 label];
  v4 = [v3 edgesCount];

  [v2 appendFormat:@"[ROI] Number of %@: %lu\n", v5, v4];
}

void __71__PGManager_Debug___defaultStatisticsWithGraph_verbose_forDiagnostics___block_invoke_11(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 edgesForLabel:@"SCENE" domain:600];
  v16 = [v3 count];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v10 += [v13 numberOfAssets];
        v7 += [v13 numberOfHighConfidenceAssets];
        v8 += [v13 numberOfSearchConfidenceAssets];
        v9 += [v13 numberOfDominantSceneAssets];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  v14 = *(a1 + 32);
  v15 = [v2 label];
  [v14 appendFormat:@"[Scene] Number of %@: %lu, all assets %lu, high conf. assets %lu, search conf. assets %lu, dominant scene assets %lu\n", v15, v16, v10, v7, v8, v9];
}

- (id)statisticsWithTypeStrings:(id)strings
{
  v35 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  if (![stringsCopy count])
  {
    v8 = 2;
    goto LABEL_60;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = stringsCopy;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:buf count:16];
  if (v6)
  {
    v7 = v6;
    v23 = stringsCopy;
    obj = v5;
    selfCopy = self;
    v8 = 0;
    v9 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 isEqualToString:{@"default", selfCopy}])
        {
          v8 |= 2uLL;
        }

        v8 |= [v11 isEqualToString:@"diagnostics"];
        if ([v11 isEqualToString:@"verbose"])
        {
          v8 |= 4uLL;
        }

        if ([v11 isEqualToString:@"mood"])
        {
          v8 |= 8uLL;
        }

        if ([v11 isEqualToString:@"title"])
        {
          v8 |= 0x10uLL;
        }

        if ([v11 isEqualToString:@"highlighttitle"])
        {
          v8 |= 0x1000000uLL;
        }

        if ([v11 isEqualToString:@"mobility"])
        {
          v8 |= 0x20uLL;
        }

        if ([v11 isEqualToString:@"interesting"])
        {
          v8 |= 0x40uLL;
        }

        if ([v11 isEqualToString:@"partofday"])
        {
          v8 |= 0x80uLL;
        }

        if ([v11 isEqualToString:@"highlightestimates"])
        {
          v8 |= 0x100uLL;
        }

        if ([v11 isEqualToString:@"relationships"])
        {
          v8 |= 0x800uLL;
        }

        if ([v11 isEqualToString:@"relationshipsdebug"])
        {
          v8 |= 0x1000uLL;
        }

        if ([v11 isEqualToString:@"dayofweek"])
        {
          v8 |= 0x8000uLL;
        }

        if ([v11 isEqualToString:@"publicevents"])
        {
          v8 |= 0x2000uLL;
        }

        if ([v11 isEqualToString:@"businessitems"])
        {
          v8 |= 0x4000uLL;
        }

        if ([v11 isEqualToString:@"poi"])
        {
          v8 |= 0x2000000uLL;
        }

        if ([v11 isEqualToString:@"locations"])
        {
          v8 |= 0x10000uLL;
        }

        if ([v11 isEqualToString:@"languages"])
        {
          v8 |= 0x8000000uLL;
        }

        if ([v11 isEqualToString:@"pets"])
        {
          v8 |= 0x20000uLL;
        }

        if ([v11 isEqualToString:@"domainlabelcounts"])
        {
          v8 |= 0x800000uLL;
        }

        if ([v11 isEqualToString:@"peopleattributes"])
        {
          v8 |= 0x4000000uLL;
        }

        if ([v11 isEqualToString:@"socialgroups"])
        {
          v8 |= 0x10000000uLL;
        }

        if ([v11 isEqualToString:@"socialgroupsdebug"])
        {
          v8 |= 0x20000000uLL;
        }

        if ([v11 isEqualToString:@"sharedlibrary"])
        {
          v8 |= 0x40000000uLL;
        }

        if ([v11 isEqualToString:@"entityTags"])
        {
          v8 |= 0xFFFFFFFF80000000;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:buf count:16];
    }

    while (v7);
    v5 = obj;

    self = selfCopy;
    if (v8 == 4)
    {
      v8 = 6;
      stringsCopy = v23;
LABEL_60:

LABEL_61:
      Current = CFAbsoluteTimeGetCurrent();
      string = [MEMORY[0x277CCAB68] string];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __46__PGManager_Debug__statisticsWithTypeStrings___block_invoke;
      v25[3] = &unk_2788857D8;
      v14 = string;
      selfCopy2 = self;
      v28 = v8;
      v26 = v14;
      [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v25];
      v15 = CFAbsoluteTimeGetCurrent();
      v16 = +[PGLogging sharedLogging];
      loggingConnection = [v16 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v34 = (v15 - Current) * 1000.0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Generating statistics took %.2f ms", buf, 0xCu);
      }

      loggingConnection2 = v14;
      v19 = loggingConnection2;
      goto LABEL_69;
    }

    stringsCopy = v23;
    if (v8)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  v20 = +[PGLogging sharedLogging];
  loggingConnection2 = [v20 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v34 = *&v5;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "No valid type specified for statistics. Input: %@", buf, 0xCu);
  }

  v19 = &stru_2843F5C58;
LABEL_69:

  return v19;
}

void __46__PGManager_Debug__statisticsWithTypeStrings___block_invoke(uint64_t a1, void *a2)
{
  v35 = [a2 graph];
  if (!v35)
  {
    [*(a1 + 32) setString:@"Graph is nil. Please retry to analyze your library."];
    goto LABEL_30;
  }

  v3 = *(a1 + 48);
  v4 = [PGTitleGenerationContext alloc];
  v5 = [*(a1 + 40) serviceManager];
  v6 = [(PGTitleGenerationContext *)v4 initWithGraph:v35 serviceManager:v5];

  v7 = objc_alloc(MEMORY[0x277D3C790]);
  v8 = [*(a1 + 40) photoLibrary];
  v9 = [v7 initWithPhotoLibrary:v8];

  if ((v3 & 3) != 0)
  {
    v10 = [*(a1 + 40) _defaultStatisticsWithGraph:v35 verbose:(v3 >> 2) & 1 forDiagnostics:v3 & 1];
    [*(a1 + 32) appendString:v10];
  }

  if ((v3 & 8) != 0)
  {
    v13 = [*(a1 + 40) _moodStatisticsWithGraph:v35];
    [*(a1 + 32) appendString:v13];

    if ((v3 & 0x10) == 0)
    {
LABEL_6:
      if ((v3 & 0x1000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_35;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  v14 = [*(a1 + 40) _titleStatisticsWithGraph:v35 titleGenerationContext:v6];
  [*(a1 + 32) appendString:v14];

  if ((v3 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  v15 = [*(a1 + 40) _highlightTitleStatisticsWithGraph:v35 titleGenerationContext:v6];
  [*(a1 + 32) appendString:v15];

  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  v16 = [*(a1 + 40) _mobilityStatisticsWithGraph:v35];
  [*(a1 + 32) appendString:v16];

  if ((v3 & 0x40) == 0)
  {
LABEL_9:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  v17 = [*(a1 + 40) _interestingStatisticsWithGraph:v35];
  [*(a1 + 32) appendString:v17];

  if ((v3 & 0x80) == 0)
  {
LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  v18 = [*(a1 + 40) _partOfDayStatisticsWithGraph:v35 titleGenerationContext:v6];
  [*(a1 + 32) appendString:v18];

  if ((v3 & 0x100) == 0)
  {
LABEL_11:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  v19 = [*(a1 + 40) _highlightEstimatesStatisticsWithCurationContext:v9];
  [*(a1 + 32) appendString:v19];

  if ((v3 & 0x800) == 0)
  {
LABEL_12:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  v20 = [*(a1 + 40) _peopleRelationshipsStatisticsWithGraph:v35 includingDebugInfo:0];
  [*(a1 + 32) appendString:v20];

  if ((v3 & 0x1000) == 0)
  {
LABEL_13:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  v21 = [*(a1 + 40) _peopleRelationshipsStatisticsWithGraph:v35 includingDebugInfo:1];
  [*(a1 + 32) appendString:v21];

  if ((v3 & 0x8000) == 0)
  {
LABEL_14:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  v22 = [*(a1 + 40) _dayOfWeekStatisticsWithGraph:v35];
  [*(a1 + 32) appendString:v22];

  if ((v3 & 0x2000) == 0)
  {
LABEL_15:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  v23 = [*(a1 + 40) _stringDescriptionForPublicEventsWithGraph:v35 verbose:1];
  [*(a1 + 32) appendString:v23];

  if ((v3 & 0x4000) == 0)
  {
LABEL_16:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  v24 = [*(a1 + 40) _stringDescriptionForBusinessItemsWithGraph:v35 includingInferredThroughPublicEvents:1 verbose:1];
  [*(a1 + 32) appendString:v24];

  if ((v3 & 0x2000000) == 0)
  {
LABEL_17:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  v25 = [*(a1 + 40) _poiStatisticsWithGraph:v35];
  [*(a1 + 32) appendString:v25];

  if ((v3 & 0x10000) == 0)
  {
LABEL_18:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  v26 = [*(a1 + 40) _stringDescriptionForLocationsWithGraph:v35];
  [*(a1 + 32) appendString:v26];

  if ((v3 & 0x8000000) == 0)
  {
LABEL_19:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  v27 = [*(a1 + 40) _stringDescriptionForLanguagesWithGraph:v35];
  [*(a1 + 32) appendString:v27];

  if ((v3 & 0x20000) == 0)
  {
LABEL_20:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  v28 = [*(a1 + 40) _stringDescriptionForPetsWithGraph:v35];
  [*(a1 + 32) appendString:v28];

  if ((v3 & 0x800000) == 0)
  {
LABEL_21:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  v29 = [*(a1 + 40) _domainLabelCountStatisticsWithGraph:v35];
  [*(a1 + 32) appendString:v29];

  if ((v3 & 0x4000000) == 0)
  {
LABEL_22:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  v30 = [*(a1 + 40) _peopleVisionAgeStatisticsWithGraph:v35];
  v31 = [*(a1 + 40) _peopleVisionBiologicalSexStatisticsWithGraph:v35];
  v32 = [*(a1 + 40) _peopleNameBiologicalSexStatisticsWithGraph:v35];
  [*(a1 + 32) appendString:v30];
  [*(a1 + 32) appendString:@"\n"];
  [*(a1 + 32) appendString:v31];
  [*(a1 + 32) appendString:@"\n"];
  [*(a1 + 32) appendString:v32];

  if ((v3 & 0x10000000) == 0)
  {
LABEL_23:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_52:
    v34 = [*(a1 + 40) _socialGroupsDebugStatistics:v35];
    [*(a1 + 32) appendString:v34];

    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_51:
  v33 = [*(a1 + 40) _socialGroupsStatistics:v35];
  [*(a1 + 32) appendString:v33];

  if ((v3 & 0x20000000) != 0)
  {
    goto LABEL_52;
  }

LABEL_24:
  if ((v3 & 0x40000000) != 0)
  {
LABEL_25:
    v11 = [*(a1 + 40) _sharedLibraryStatistics:v35];
    [*(a1 + 32) appendString:v11];
  }

LABEL_26:
  if (v3 >> 31)
  {
    v12 = [*(a1 + 40) _entityTagsStatistics:v35];
    [*(a1 + 32) appendString:v12];
  }

LABEL_30:
}

- (id)graphAndAlgorithmVersionsWithGraph:(id)graph
{
  v3 = MEMORY[0x277CCAB68];
  graphCopy = graph;
  v5 = objc_alloc_init(v3);
  infoNode = [graphCopy infoNode];
  creationDate = [infoNode creationDate];
  [v5 appendFormat:@"Graph Date creation: %@\n", creationDate];

  version = [graphCopy version];
  [v5 appendFormat:@"Graph Version: %lu\n", version];
  [v5 appendFormat:@"Graph Curation Algorithms Version: %lu\n", objc_msgSend(infoNode, "curationAlgorithmsVersion")];
  [v5 appendFormat:@"Graph Memories Algorithms Version: %lu\n", objc_msgSend(infoNode, "memoriesAlgorithmsVersion")];
  [v5 appendFormat:@"Graph Meanings Algorithms Version: %lu\n", objc_msgSend(infoNode, "meaningAlgorithmsVersion")];
  [v5 appendFormat:@"Graph EventLabelingV2 Model Version: %ld\n", objc_msgSend(infoNode, "eventLabelingV2ModelVersion")];
  [v5 appendFormat:@"Graph Personal Traits Entity Names Version: %ld\n", objc_msgSend(infoNode, "personalTraitsEntityNamesVersion")];
  [v5 appendFormat:@"Graph Memories Algorithms Version: %lu\n", objc_msgSend(infoNode, "memoriesAlgorithmsVersion")];

  return v5;
}

- (id)keywordsForAssetCollection:(id)collection relatedType:(unint64_t)type
{
  collectionCopy = collection;
  v7 = collectionCopy;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__51600;
  v19 = __Block_byref_object_dispose__51601;
  v20 = 0;
  if (collectionCopy)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__PGManager_Debug__keywordsForAssetCollection_relatedType___block_invoke;
    v11[3] = &unk_2788857B0;
    v12 = collectionCopy;
    v13 = &v15;
    typeCopy = type;
    [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v11];
    v8 = v12;
  }

  else
  {
    v8 = 0;
    v20 = MEMORY[0x277CBEC10];
  }

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __59__PGManager_Debug__keywordsForAssetCollection_relatedType___block_invoke(void *a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [v3 eventNodeForAssetCollection:a1[4]];
  v8 = [v4 relatableEvent];

  v5 = [v8 keywordsForRelatedType:a1[6] focusOnNodes:0];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)_calendarEventsBetweenDate:(id)date andDate:(id)andDate atLocation:(id)location withPersonLocalIdentifiers:(id)identifiers inPhotoLibrary:(id)library serviceManager:(id)manager locationCache:(id)cache
{
  v39[2] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  andDateCopy = andDate;
  locationCopy = location;
  identifiersCopy = identifiers;
  libraryCopy = library;
  managerCopy = manager;
  cacheCopy = cache;
  if (!managerCopy)
  {
    __assert_rtn("+[PGManager(Debug) _calendarEventsBetweenDate:andDate:atLocation:withPersonLocalIdentifiers:inPhotoLibrary:serviceManager:locationCache:]", "PGManager+Debug.m", 3803, "serviceManager != nil");
  }

  v21 = cacheCopy;
  v22 = [objc_alloc(MEMORY[0x277D27698]) initWithServiceManager:managerCopy];
  v23 = MEMORY[0x277D276F0];
  v35 = andDateCopy;
  v36 = dateCopy;
  v39[0] = dateCopy;
  v39[1] = andDateCopy;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v25 = [v23 clueWithDates:v24 serviceManager:managerCopy];

  v38 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  [v22 mergeClues:v26];

  if (locationCopy)
  {
    v27 = [v21 fetchPlacemarkForLocation:locationCopy withQueryAccuracy:*MEMORY[0x277CE4250]];
    if (v27)
    {
      v28 = [MEMORY[0x277D276E0] clueWithLocation:v27 locationCache:v21];
      v37 = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      [v22 mergeClues:v29];
    }

    else
    {
      v28 = 0;
    }

    if (!identifiersCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v28 = 0;
    if (!identifiersCopy)
    {
      goto LABEL_11;
    }
  }

  v30 = [MEMORY[0x277D276E8] cluesWithPersonLocalIdentifiers:identifiersCopy inPhotoLibrary:libraryCopy serviceManager:managerCopy];
  if (v30)
  {
    v31 = v30;
    [v22 mergeClues:v30];

LABEL_12:
    events = [managerCopy eventsForClueCollection:v22];
    goto LABEL_14;
  }

LABEL_11:
  if (v28)
  {
    goto LABEL_12;
  }

  events = [v25 events];
LABEL_14:
  v33 = events;

  return v33;
}

+ (id)exportableDictionaryFromKeywords:(id)keywords
{
  v3 = MEMORY[0x277CBEB38];
  keywordsCopy = keywords;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__PGManager_Debug__exportableDictionaryFromKeywords___block_invoke;
  v8[3] = &unk_278885788;
  v6 = dictionary;
  v9 = v6;
  [keywordsCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __53__PGManager_Debug__exportableDictionaryFromKeywords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 unsignedIntegerValue];
  if (v5 <= 7)
  {
    if (v5 == 1)
    {
      v7 = @"People";
    }

    else
    {
      v6 = v8;
      if (v5 == 2)
      {
        v7 = @"Time";
      }

      else
      {
        if (v5 != 4)
        {
          goto LABEL_18;
        }

        v7 = @"Location";
      }
    }
  }

  else if (v5 > 31)
  {
    v6 = v8;
    if (v5 == 32)
    {
      v7 = @"Scene";
    }

    else
    {
      if (v5 != 63)
      {
        goto LABEL_18;
      }

      v7 = @"Any";
    }
  }

  else
  {
    v6 = v8;
    if (v5 == 8)
    {
      v7 = @"Event";
    }

    else
    {
      if (v5 != 16)
      {
        goto LABEL_18;
      }

      v7 = @"Place";
    }
  }

  [*(a1 + 32) setObject:v8 forKey:v7];
  v6 = v8;
LABEL_18:
}

- (id)performerIdentifiersForMomentUUIDs:(id)ds withCategoryNames:(id)names
{
  dsCopy = ds;
  namesCopy = names;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__65549;
  v20 = __Block_byref_object_dispose__65550;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__PGManager_PublicEvents__performerIdentifiersForMomentUUIDs_withCategoryNames___block_invoke;
  v12[3] = &unk_278888EB8;
  v8 = dsCopy;
  v13 = v8;
  v9 = namesCopy;
  v14 = v9;
  v15 = &v16;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:v12];
  allObjects = [v17[5] allObjects];

  _Block_object_dispose(&v16, 8);

  return allObjects;
}

void __80__PGManager_PublicEvents__performerIdentifiersForMomentUUIDs_withCategoryNames___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v4 graph];
  v6 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v3 inGraph:v5];

  v7 = [v6 publicEventNodes];
  v8 = [MEMORY[0x277CBEB98] setWithArray:a1[5]];
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __80__PGManager_PublicEvents__performerIdentifiersForMomentUUIDs_withCategoryNames___block_invoke_2;
  v22 = &unk_278888E90;
  v23 = v8;
  v24 = v9;
  v10 = v9;
  v11 = v8;
  [v7 enumerateNodesUsingBlock:&v19];
  v12 = [PGGraphPublicEventNodeCollection alloc];
  v13 = [v4 graph];

  v14 = [(MAElementCollection *)v12 initWithSet:v10 graph:v13];
  v15 = [(PGGraphPublicEventNodeCollection *)v14 performerNodes];
  v16 = [v15 performerIdentifiers];
  v17 = *(a1[6] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;
}

void __80__PGManager_PublicEvents__performerIdentifiersForMomentUUIDs_withCategoryNames___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 categories];
  if ([v3 intersectsSet:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v4];
  }
}

- (id)performerIdentifiersForMomentUUIDs:(id)ds
{
  dsCopy = ds;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__65549;
  v18 = __Block_byref_object_dispose__65550;
  v19 = 0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __62__PGManager_PublicEvents__performerIdentifiersForMomentUUIDs___block_invoke;
  v11 = &unk_27888A570;
  v5 = dsCopy;
  v12 = v5;
  v13 = &v14;
  [(PGManager *)self performSynchronousConcurrentGraphReadUsingBlock:&v8];
  allObjects = [v15[5] allObjects];

  _Block_object_dispose(&v14, 8);

  return allObjects;
}

void __62__PGManager_PublicEvents__performerIdentifiersForMomentUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 graph];
  v10 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v3 inGraph:v4];

  v5 = [v10 publicEventNodes];
  v6 = [v5 performerNodes];
  v7 = [v6 performerIdentifiers];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

@end