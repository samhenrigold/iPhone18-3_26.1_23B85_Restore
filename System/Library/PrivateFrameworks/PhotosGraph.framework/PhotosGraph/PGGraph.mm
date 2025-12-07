@interface PGGraph
+ (BOOL)graphExistsAtURL:(id)l;
+ (BOOL)graphExistsWithName:(id)name parentDirectoryURL:(id)l;
+ (PGGraph)graphWithVisualString:(id)string error:(id *)error;
+ (id)_closestRelationshipEdgeLabelForPersonNode:(id)node andOtherPersonNode:(id)personNode;
+ (id)_findParentMeaningLabelForMeaningLabel:(id)label inTree:(id)tree currentParent:(id)parent;
+ (id)_graphNodePOILabelByPlaceType;
+ (id)_meaningLabelTree;
+ (id)_personClosestToMeBetweenPersonNode:(id)node andOtherPersonNode:(id)personNode;
+ (id)assetPropertySetsForIngest;
+ (id)availableInferredMeaningLabels;
+ (id)defaultSpecification;
+ (id)frequentMeaningLabels;
+ (id)graphURLForName:(id)name parentDirectoryURL:(id)l;
+ (id)lessMeaningfulMeanings;
+ (id)mostSignificantMeaningLabels;
+ (id)parentMeaningLabelForMeaningLabel:(id)label;
+ (id)poiLabelForPOIType:(id)type;
+ (id)preciseMeaningNodeForMeaningLabel:(id)label meaningfulEvent:(id)event;
+ (id)socialGroupMemberSortDescriptorForSocialGroupNode:(id)node;
+ (id)stellarMeanings;
+ (id)veryMeaningfulMeanings;
+ (int64_t)librarySizeRangeForNumberOfAssets:(unint64_t)assets;
+ (void)_traverseMeaningLabelsInTree:(id)tree usingBlock:(id)block;
+ (void)_traverseMeaningLabelsUsingBlock:(id)block;
+ (void)traverseParentMeaningsForMeaningLabel:(id)label usingBlock:(id)block;
- (BOOL)_enumerateMomentNodesForAssetCollection:(id)collection paddingTime:(double)time error:(id *)error enumerationBlock:(id)block;
- (BOOL)copyToURL:(id)l;
- (BOOL)eventIsStellar:(id)stellar;
- (BOOL)eventIsVeryMeaningful:(id)meaningful;
- (BOOL)hasSocialGroups;
- (BOOL)isBestPairSocialGroup:(id)group;
- (BOOL)isPairSocialGroup:(id)group;
- (BOOL)isSharedLibraryEnabled;
- (BOOL)saveToURL:(id)l;
- (BOOL)singlePersonBelongsToSocialGroupOfMaxSize:(id)size groups:(id)groups maxSize:(unint64_t)maxSize;
- (BOOL)singlePersonGroupIsInSocialGroups:(id)groups groups:(id)a4;
- (NSDictionary)zeroKeywordMappingByMeaningLabel;
- (NSSet)supersets;
- (NSString)localeIdentifier;
- (OS_dispatch_queue)graphQueue;
- (PGGraph)initWithSpecification:(id)specification;
- (PGGraph)initWithURL:(id)l persistenceOptions:(int64_t)options error:(id *)error;
- (PGGraphLocationCityNodeCollection)supersetCityNodes;
- (PGGraphLocationCountryNodeCollection)supersetCountryNodes;
- (PGGraphLocationCountyNodeCollection)supersetCountyNodes;
- (PGGraphLocationStateNodeCollection)supersetStateNodes;
- (double)averageTopMomentTimes:(id)times numberOfMoments:(unint64_t)moments;
- (double)libraryDuration;
- (double)longevity:(id)longevity;
- (double)momentsCountDistance:(id)distance withSecondBaseGroup:(id)group withSubsetBias:(double)bias withDistanceThreshold:(double)threshold withIntersectionBias:(double)intersectionBias withKey:(id)key;
- (double)peopleDistance:(id)distance withSecondBaseGroup:(id)group threshold:(double)threshold factor:(double)factor;
- (float)normalizeFeatureValue:(float)value average:(float)average featureValues:(id)values factor:(float)factor;
- (float)recencyFeature:(double)feature;
- (id)_createZeroKeywordMappingByMeaningLabel;
- (id)_fuzzyMomentLookupForMomentNode:(id)node inPhotoLibrary:(id)library error:(id *)error;
- (id)_fuzzyMomentNodeLookupForAssetCollection:(id)collection error:(id *)error;
- (id)_momentNodeForAssetCollection:(id)collection error:(id *)error;
- (id)_momentNodesForDateComponents:(id)components error:(id *)error;
- (id)_personNodeIntersectingSocialGroups:(id)groups;
- (id)_previousSeasonForSeason:(id)season;
- (id)_socialGroupNodeForPersonNodes:(id)nodes searchWithTolerance:(BOOL)tolerance;
- (id)_strictMomentLookupForMomentNode:(id)node inPhotoLibrary:(id)library;
- (id)_strictMomentNodeLookupForAssetCollection:(id)collection error:(id *)error;
- (id)aggregationHighlightTypeNode;
- (id)aggregationNodes;
- (id)allSocialGroupsForMemberLocalIdentifier:(id)identifier options:(id)options;
- (id)allTimeYearsNodes;
- (id)allTripNodes;
- (id)bestFittingAreaNodeFromAreaNodes:(id)nodes;
- (id)bestMeaningLabelForMeaningfulEvent:(id)event;
- (id)bestSocialGroupNodes;
- (id)celebratedHolidayNodes;
- (id)celebratedHolidays;
- (id)children;
- (id)closestMomentNodeForLocalDate:(id)date;
- (id)commonSocialGroupNodesForMemberNodes:(id)nodes withThreshold:(double)threshold;
- (id)coworkers;
- (id)dateNodeFilterForLocalDateInterval:(id)interval;
- (id)dateNodeForLocalDate:(id)date;
- (id)dateNodeNameWithDateComponents:(id)components;
- (id)dateNodeNameWithLocalDate:(id)date;
- (id)dateNodesForLocalDate:(id)date;
- (id)dateNodesForLocalDateInterval:(id)interval;
- (id)dateNodesForMonth:(int64_t)month;
- (id)dateNodesForWeekOfMonth:(int64_t)month;
- (id)dateNodesForWeekOfYear:(int64_t)year;
- (id)dateNodesForYear:(int64_t)year;
- (id)dateNodesIgnoringYearForLocalDate:(id)date;
- (id)dayHighlightNodes;
- (id)dayHighlightNodesSortedByDate;
- (id)dayNodeForDay:(int64_t)day;
- (id)dayOfWeekNodeForDayOfWeek:(int64_t)week;
- (id)dayOfWeekNodes;
- (id)defaultHighlightNodes;
- (id)defaultHighlightTypeNode;
- (id)eventNodeForAssetCollection:(id)collection;
- (id)familyMembers;
- (id)favoritedPersonNodesIncludingMe:(BOOL)me;
- (id)fetchMemberNodesBySocialGroupNodeForSocialGroupNodes:(id)nodes;
- (id)fetchMemberNodesBySocialGroupNodeForSocialGroups:(id)groups;
- (id)friends;
- (id)highlightForHighlightNode:(id)node inPhotoLibrary:(id)library;
- (id)highlightGroupNodesSortedByDate;
- (id)highlightNodeForHighlight:(id)highlight;
- (id)inferMeNodeFromSocialGroups;
- (id)inferredUserLocales;
- (id)interestingAreaNodes;
- (id)interestingCityNodes;
- (id)largeFrequentLocationNodes;
- (id)localDatesForMomentNode:(id)node;
- (id)longTripHighlightTypeNode;
- (id)longTripNodes;
- (id)mainUrbanCityNodes;
- (id)maximalSocialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers;
- (id)meNode;
- (id)meNodeCollection;
- (id)meNodeWithFallbackInferredMeNode;
- (id)meaningfulEventNodeForUUID:(id)d;
- (id)meaningfulEvents;
- (id)meaningfulMomentNodesSortedByDate;
- (id)meaningsFromMeaningfulEvent:(id)event;
- (id)memberLocalIdentifiersBySocialGroupUUIDWithMemberNodesBySocialGroupNode:(id)node shouldIncludeMeNode:(BOOL)meNode simulateMeNodeNotSet:(BOOL)set;
- (id)momentForMomentNode:(id)node inPhotoLibrary:(id)library;
- (id)momentNodeForAsset:(id)asset;
- (id)momentNodeForMoment:(id)moment;
- (id)momentNodesForPersonNodes:(id)nodes;
- (id)momentNodesOverlappingLocalDateInterval:(id)interval;
- (id)momentNodesSortedByDate;
- (id)momentNodesSortedByDateFromMomentNodes:(id)nodes;
- (id)momentNodesWithMeaning:(unint64_t)meaning;
- (id)momentsForMomentNodes:(id)nodes inPhotoLibrary:(id)library sortChronologically:(BOOL)chronologically;
- (id)momentsResultForMomentNodes:(id)nodes inPhotoLibrary:(id)library sortChronologically:(BOOL)chronologically;
- (id)monthNodeForMonth:(int64_t)month;
- (id)nodeLabelForHighlightType:(unsigned __int16)type;
- (id)onGoingTripHighlightTypeNode;
- (id)onGoingTripNodes;
- (id)parents;
- (id)partners;
- (id)personNodeForPersonLocalIdentifier:(id)identifier;
- (id)personNodesForPersonLocalIdentifiers:(id)identifiers;
- (id)personNodesIncludingMe:(BOOL)me;
- (id)previousSeasonNodeForSeasonNode:(id)node;
- (id)relevantMomentNodesForSocialGroupProcessing;
- (id)sceneNodeForSceneName:(id)name;
- (id)sceneNodesForSceneNames:(id)names;
- (id)seasonNodeForLocalDate:(id)date;
- (id)shortTripHighlightTypeNode;
- (id)shortTripNodes;
- (id)socialGroupMemberNodesForMemberLocalIdentifiers:(id)identifiers;
- (id)socialGroupNodeForMemberNodes:(id)nodes;
- (id)socialGroupNodesSortedByImportance;
- (id)socialGroupsIdentifiersFromSocialGroupNodes:(id)nodes shouldIncludeMeNode:(BOOL)node;
- (id)socialGroupsIdentifiersFromSocialGroupNodesWithMemberNodesBySocialGroupNode:(id)node shouldIncludeMeNode:(BOOL)meNode simulateMeNodeNotSet:(BOOL)set;
- (id)socialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers;
- (id)sortedSocialGroupNodesWithMomentNodes:(id)nodes;
- (id)staticGraphSchema;
- (id)trips;
- (id)weekends;
- (id)yearNodeForYear:(int64_t)year;
- (int64_t)libraryAge;
- (int64_t)librarySizeRange;
- (unint64_t)_cluePeopleForRelationships:(id)relationships;
- (unint64_t)_countOfDistinctSocialGroups:(id)groups;
- (unint64_t)numberOfPersonNodesIncludingMe:(BOOL)me;
- (void)_checkCanRead;
- (void)_enumerateMeaningfulEventsWithMeaningLabel:(id)label visitedMeaningfulEvents:(id)events usingBlock:(id)block;
- (void)_enumerateMomentForMomentNode:(id)node inPhotoLibrary:(id)library paddingTime:(double)time enumerationBlock:(id)block;
- (void)_reportBusinessItemsWithAnalytics:(id)analytics;
- (void)_reportDeviceOwnerWithAnalytics:(id)analytics photoLibrary:(id)library serviceManager:(id)manager;
- (void)_reportDisambiguatedLocationsWithAnalytics:(id)analytics;
- (void)_reportLibraryWithAnalytics:(id)analytics;
- (void)_reportMobilityWithAnalytics:(id)analytics;
- (void)enableInTransactionCheck;
- (void)enumerateCelebratedHolidayNodesUsingBlock:(id)block;
- (void)enumerateMeaningfulEventsWithMeaning:(unint64_t)meaning usingBlock:(id)block;
- (void)enumerateMeaningsFromMeaningfulEvent:(id)event usingBlock:(id)block;
- (void)enumerateMomentNodesWithMeaning:(unint64_t)meaning usingBlock:(id)block;
- (void)enumeratePeopleClustersIncludingMeNode:(BOOL)node socialGroupsVersion:(unint64_t)version singlePersonGroups:(id *)groups withBlock:(id)block;
- (void)enumeratePeopleClustersWithLinkage:(unint64_t)linkage threshold:(double)threshold includingMeNode:(BOOL)node socialGroupsVersion:(unint64_t)version singlePersonGroups:(id *)groups withBlock:(id)block;
- (void)enumeratePersonNodesIncludingMe:(BOOL)me withBlock:(id)block;
- (void)enumerateSocialGroupsIncludingMeNode:(BOOL)node socialGroupsVersion:(unint64_t)version simulateMeNodeNotSet:(BOOL)set validGroupsBlock:(id)block invalidGroupsBlock:(id)groupsBlock averageWeight:(float *)weight;
- (void)enumerateSocialGroupsIncludingMeNode:(BOOL)node validGroupsBlock:(id)block invalidGroupsBlock:(id)groupsBlock averageWeight:(float *)weight;
- (void)enumerateSocialGroupsWithBlock:(id)block includeInvalidGroups:(BOOL)groups;
- (void)invalidateMemoryCaches;
- (void)invalidateProcessingCaches;
- (void)invalidateSupersetCaches;
- (void)reportMetricsLogsWithAnalytics:(id)analytics photoLibrary:(id)library serviceManager:(id)manager;
- (void)setGraphQueue:(id)queue;
@end

@implementation PGGraph

- (int64_t)libraryAge
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x7FFFFFFFLL;
  allTimeYearsNodes = [(PGGraph *)self allTimeYearsNodes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__PGGraph_Lookup__libraryAge__block_invoke;
  v8[3] = &unk_2788801D0;
  v8[4] = &v9;
  [allTimeYearsNodes enumerateObjectsUsingBlock:v8];
  v3 = MEMORY[0x277D27690];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 yearFromDate:date];

  if (v5 - v10[3] <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 - v10[3];
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

void *__29__PGGraph_Lookup__libraryAge__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 calendarUnitValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (result < v5)
  {
    v5 = result;
  }

  *(v4 + 24) = v5;
  return result;
}

- (id)dayOfWeekNodeForDayOfWeek:(int64_t)week
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [PGGraphDayOfWeekNode nameForDayOfWeek:week];
  v8 = @"name";
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [(MAGraph *)self anyNodeForLabel:@"DayOfWeek" domain:400 properties:v5];

  return v6;
}

- (id)momentNodesOverlappingLocalDateInterval:(id)interval
{
  intervalCopy = interval;
  [(PGGraph *)self _checkCanRead];
  v5 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:intervalCopy inGraph:self];

  v6 = [v5 set];

  return v6;
}

- (id)_momentNodeForAssetCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  v7 = [(PGGraph *)self _strictMomentNodeLookupForAssetCollection:collectionCopy error:error];
  if (!v7)
  {
    v7 = [(PGGraph *)self _fuzzyMomentNodeLookupForAssetCollection:collectionCopy error:error];
  }

  return v7;
}

- (id)localDatesForMomentNode:(id)node
{
  nodeCopy = node;
  [(PGGraph *)self _checkCanRead];
  v5 = [MEMORY[0x277CBEB58] set];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PGGraph_Lookup__localDatesForMomentNode___block_invoke;
  v8[3] = &unk_2788875A8;
  v6 = v5;
  v9 = v6;
  [nodeCopy enumerateDateNodesUsingBlock:v8];

  return v6;
}

void __43__PGGraph_Lookup__localDatesForMomentNode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 localDate];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (id)closestMomentNodeForLocalDate:(id)date
{
  dateCopy = date;
  [(PGGraph *)self _checkCanRead];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12216;
  v25 = __Block_byref_object_dispose__12217;
  v26 = 0;
  v5 = [(PGGraph *)self dateNodeForLocalDate:dateCopy];
  collection = [v5 collection];
  momentNodes = [collection momentNodes];

  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0x7FEFFFFFFFFFFFFFLL;
  if ([momentNodes count])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__PGGraph_Lookup__closestMomentNodeForLocalDate___block_invoke;
    v16[3] = &unk_2788858A0;
    v17 = dateCopy;
    v18 = &v21;
    v19 = v20;
    [momentNodes enumerateNodesUsingBlock:v16];
    v8 = v17;
  }

  else
  {
    momentNodes2 = [(PGGraph *)self momentNodes];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__PGGraph_Lookup__closestMomentNodeForLocalDate___block_invoke_2;
    v12[3] = &unk_2788858A0;
    v13 = dateCopy;
    v14 = &v21;
    v15 = v20;
    [momentNodes2 enumerateNodesUsingBlock:v12];

    v8 = v13;
  }

  _Block_object_dispose(v20, 8);
  v10 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v10;
}

void __49__PGGraph_Lookup__closestMomentNodeForLocalDate___block_invoke(void *a1, void *a2)
{
  v10 = a2;
  v4 = [v10 localStartDate];
  [v4 timeIntervalSinceDate:a1[4]];
  v6 = fabs(v5);

  v7 = *(a1[5] + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9 || v6 < *(*(a1[6] + 8) + 24))
  {
    objc_storeStrong(v8, a2);
    *(*(a1[6] + 8) + 24) = v6;
  }
}

void __49__PGGraph_Lookup__closestMomentNodeForLocalDate___block_invoke_2(void *a1, void *a2)
{
  v10 = a2;
  v4 = [v10 localStartDate];
  [v4 timeIntervalSinceDate:a1[4]];
  v6 = fabs(v5);

  v7 = *(a1[5] + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  if (!v9 || v6 < *(*(a1[6] + 8) + 24))
  {
    objc_storeStrong(v8, a2);
    *(*(a1[6] + 8) + 24) = v6;
  }
}

- (id)yearNodeForYear:(int64_t)year
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"name";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:year];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [(MAGraph *)self anyNodeForLabel:@"Year" domain:400 properties:v5];

  return v6;
}

- (id)monthNodeForMonth:(int64_t)month
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"name";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:month];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [(MAGraph *)self anyNodeForLabel:@"Month" domain:400 properties:v5];

  return v6;
}

- (id)dayNodeForDay:(int64_t)day
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"name";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:day];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [(MAGraph *)self anyNodeForLabel:@"Day" domain:400 properties:v5];

  return v6;
}

- (id)_previousSeasonForSeason:(id)season
{
  v11 = *MEMORY[0x277D85DE8];
  seasonCopy = season;
  if (_previousSeasonForSeason__onceToken != -1)
  {
    dispatch_once(&_previousSeasonForSeason__onceToken, &__block_literal_global_12219);
  }

  v4 = [_previousSeasonForSeason__seasons indexOfObject:seasonCopy];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  if (v4)
  {
    [_previousSeasonForSeason__seasons objectAtIndex:v4 - 1];
  }

  else
  {
    [_previousSeasonForSeason__seasons lastObject];
  }
  v5 = ;
  if (!v5)
  {
LABEL_8:
    v6 = +[PGLogging sharedLogging];
    loggingConnection = [v6 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = seasonCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error: could not find _previousSeasonForSeason: string %@", &v9, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

void __44__PGGraph_Lookup___previousSeasonForSeason___block_invoke()
{
  v0 = _previousSeasonForSeason__seasons;
  _previousSeasonForSeason__seasons = &unk_284485670;
}

- (id)previousSeasonNodeForSeasonNode:(id)node
{
  v11[1] = *MEMORY[0x277D85DE8];
  name = [node name];
  v5 = [(PGGraph *)self _previousSeasonForSeason:name];

  if (v5)
  {
    v10 = @"name";
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [(MAGraph *)self nodesForLabel:@"Season" domain:400 properties:v6];
    anyObject = [v7 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)seasonNodeForLocalDate:(id)date
{
  v13[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [(PGGraph *)self _checkCanRead];
  infoNode = [(PGGraph *)self infoNode];
  locale = [infoNode locale];

  v7 = [MEMORY[0x277D27690] seasonNameForLocalDate:dateCopy locale:locale];

  if (v7)
  {
    v12 = @"name";
    v13[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [(MAGraph *)self nodesForLabel:@"Season" domain:400 properties:v8];
    anyObject = [v9 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)dateNodesForWeekOfMonth:(int64_t)month
{
  [(PGGraph *)self _checkCanRead];
  v5 = [PGGraphWeekOfMonthNodeCollection weekOfMonthNodesForWeekOfMonth:month inGraph:self];
  dateNodes = [v5 dateNodes];
  temporarySet = [dateNodes temporarySet];

  return temporarySet;
}

- (id)dateNodesForWeekOfYear:(int64_t)year
{
  [(PGGraph *)self _checkCanRead];
  v5 = [PGGraphWeekOfYearNodeCollection weekOfYearNodesForWeekOfYear:year inGraph:self];
  dateNodes = [v5 dateNodes];
  temporarySet = [dateNodes temporarySet];

  return temporarySet;
}

- (id)dateNodesForYear:(int64_t)year
{
  [(PGGraph *)self _checkCanRead];
  v5 = [PGGraphYearNodeCollection yearNodesForYear:year inGraph:self];
  dateNodes = [v5 dateNodes];
  temporarySet = [dateNodes temporarySet];

  return temporarySet;
}

- (id)dateNodesForMonth:(int64_t)month
{
  v3 = [PGGraphMonthNodeCollection monthNodesForMonth:month inGraph:self];
  dateNodes = [v3 dateNodes];
  temporarySet = [dateNodes temporarySet];

  return temporarySet;
}

- (id)dateNodesIgnoringYearForLocalDate:(id)date
{
  dateCopy = date;
  [(PGGraph *)self _checkCanRead];
  v5 = [PGGraphMonthDayNodeCollection monthDayNodesForLocalDate:dateCopy inGraph:self];

  dateNodes = [v5 dateNodes];

  return dateNodes;
}

- (id)dateNodesForLocalDateInterval:(id)interval
{
  v4 = [(PGGraph *)self dateNodeFilterForLocalDateInterval:interval];
  v5 = [(MANodeCollection *)PGGraphDateNodeCollection nodesMatchingFilter:v4 inGraph:self];

  return v5;
}

- (id)dateNodeFilterForLocalDateInterval:(id)interval
{
  v19[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSince1970];
  v8 = v7;

  endDate = [intervalCopy endDate];
  [endDate timeIntervalSince1970];
  v11 = v10;

  while (v8 <= v11)
  {
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v8];
    v13 = [(PGGraph *)self dateNodeNameWithLocalDate:v12];
    [v5 addObject:v13];

    v8 = v8 + 86400.0;
  }

  v14 = objc_alloc(MEMORY[0x277D22C78]);
  v18 = @"name";
  v19[0] = v5;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v16 = [v14 initWithLabel:@"Date" domain:400 properties:v15];

  return v16;
}

- (id)dateNodeForLocalDate:(id)date
{
  dateCopy = date;
  [(PGGraph *)self _checkCanRead];
  v5 = [(PGGraph *)self dateNodesForLocalDate:dateCopy];

  anyNode = [v5 anyNode];

  return anyNode;
}

- (id)dateNodesForLocalDate:(id)date
{
  v20[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [(PGGraph *)self _checkCanRead];
  v5 = [(PGGraph *)self dateNodeNameWithLocalDate:dateCopy];

  v6 = objc_alloc(MEMORY[0x277D22C78]);
  v19 = @"name";
  v20[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v8 = [v6 initWithLabel:@"Date" domain:400 properties:v7];

  v9 = [(MANodeCollection *)PGGraphDateNodeCollection nodesMatchingFilter:v8 inGraph:self];
  v10 = [v9 count];
  if (v10 >= 2)
  {
    v11 = v10;
    v12 = +[PGLogging sharedLogging];
    loggingConnection = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412546;
      v16 = v5;
      v17 = 2048;
      v18 = v11;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error: too many date nodes for local date %@, count: %lu", &v15, 0x16u);
    }
  }

  return v9;
}

- (id)momentsResultForMomentNodes:(id)nodes inPhotoLibrary:(id)library sortChronologically:(BOOL)chronologically
{
  chronologicallyCopy = chronologically;
  v25[1] = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  if (chronologicallyCopy)
  {
    v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v25[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v10];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = nodesCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        localIdentifier = [*(*(&v20 + 1) + 8 * i) localIdentifier];
        [v11 addObject:localIdentifier];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithLocalIdentifiers:v11 options:librarySpecificFetchOptions];

  return v18;
}

- (id)momentsForMomentNodes:(id)nodes inPhotoLibrary:(id)library sortChronologically:(BOOL)chronologically
{
  v5 = [(PGGraph *)self momentsResultForMomentNodes:nodes inPhotoLibrary:library sortChronologically:chronologically];
  fetchedObjects = [v5 fetchedObjects];

  return fetchedObjects;
}

- (id)momentForMomentNode:(id)node inPhotoLibrary:(id)library
{
  v24[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  libraryCopy = library;
  [(PGGraph *)self _checkCanRead];
  localIdentifier = [nodeCopy localIdentifier];
  if (!localIdentifier || ([libraryCopy librarySpecificFetchOptions], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "setFetchLimit:", 1), v10 = MEMORY[0x277CD97B8], v24[0] = localIdentifier, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v24, 1), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "fetchAssetCollectionsWithLocalIdentifiers:options:", v11, v9), v12 = objc_claimAutoreleasedReturnValue(), v11, objc_msgSend(v12, "firstObject"), v13 = objc_claimAutoreleasedReturnValue(), v12, v9, !v13))
  {
    v14 = [(PGGraph *)self _strictMomentLookupForMomentNode:nodeCopy inPhotoLibrary:libraryCopy];
    if (v14)
    {
      v13 = v14;
      v15 = 0;
    }

    else
    {
      v19 = 0;
      v13 = [(PGGraph *)self _fuzzyMomentLookupForMomentNode:nodeCopy inPhotoLibrary:libraryCopy error:&v19];
      v15 = v19;
      if (!v13)
      {
        v16 = +[PGLogging sharedLogging];
        loggingConnection = [v16 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v21 = "[PGGraph(Lookup) momentForMomentNode:inPhotoLibrary:]";
          v22 = 2112;
          v23 = v15;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "error: %s %@", buf, 0x16u);
        }

        v13 = 0;
      }
    }
  }

  return v13;
}

- (id)highlightForHighlightNode:(id)node inPhotoLibrary:(id)library
{
  v22 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  nodeCopy = node;
  [(PGGraph *)self _checkCanRead];
  localIdentifier = [nodeCopy localIdentifier];

  if (localIdentifier)
  {
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier == %@", localIdentifier];
    [librarySpecificFetchOptions setPredicate:v10];

    [librarySpecificFetchOptions setFetchLimit:1];
    v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
    firstObject = [v11 firstObject];
    if ([v11 count] != 1)
    {
      v13 = +[PGLogging sharedLogging];
      loggingConnection = [v13 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315651;
        v17 = "[PGGraph(Lookup) highlightForHighlightNode:inPhotoLibrary:]";
        v18 = 2112;
        v19 = localIdentifier;
        v20 = 2113;
        v21 = v11;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "error: %s Didn't find highlight with identifier %@. %{private}@", buf, 0x20u);
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_fuzzyMomentLookupForMomentNode:(id)node inPhotoLibrary:(id)library error:(id *)error
{
  nodeCopy = node;
  libraryCopy = library;
  v10 = [MEMORY[0x277CBEB58] set];
  v11 = objc_autoreleasePoolPush();
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __72__PGGraph_Lookup___fuzzyMomentLookupForMomentNode_inPhotoLibrary_error___block_invoke;
  v19 = &unk_2788801A8;
  selfCopy = self;
  v12 = nodeCopy;
  v21 = v12;
  v13 = v10;
  v22 = v13;
  [(PGGraph *)self _enumerateMomentForMomentNode:v12 inPhotoLibrary:libraryCopy paddingTime:&v16 enumerationBlock:10800.0];

  objc_autoreleasePoolPop(v11);
  if ([v13 count] == 1)
  {
    error = [v13 anyObject];
  }

  else if (error)
  {
    if ([v13 count])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Event node %@ matching multiple moments", v12, v16, v17, v18, v19, selfCopy];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Event node %@ matching 0 moment", v12, v16, v17, v18, v19, selfCopy];
    }
    v14 = ;
    *error = [PGError errorWithCode:-3 description:v14];

    error = 0;
  }

  return error;
}

void __72__PGGraph_Lookup___fuzzyMomentLookupForMomentNode_inPhotoLibrary_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) _strictMomentNodeLookupForAssetCollection:? error:?];
  v4 = v3;
  if (!v3 || [v3 isSameNodeAsNode:*(a1 + 40)])
  {
    [*(a1 + 48) addObject:v5];
  }
}

- (id)_strictMomentLookupForMomentNode:(id)node inPhotoLibrary:(id)library
{
  nodeCopy = node;
  libraryCopy = library;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12216;
  v16 = __Block_byref_object_dispose__12217;
  v17 = 0;
  v8 = objc_autoreleasePoolPush();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__PGGraph_Lookup___strictMomentLookupForMomentNode_inPhotoLibrary___block_invoke;
  v11[3] = &unk_278880180;
  v11[4] = &v12;
  [(PGGraph *)self _enumerateMomentForMomentNode:nodeCopy inPhotoLibrary:libraryCopy paddingTime:v11 enumerationBlock:0.001];
  objc_autoreleasePoolPop(v8);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)momentNodeForMoment:(id)moment
{
  v20 = *MEMORY[0x277D85DE8];
  momentCopy = moment;
  [(PGGraph *)self _checkCanRead];
  uuid = [momentCopy uuid];
  v6 = [PGGraphMomentNodeCollection momentNodeForUUID:uuid inGraph:self];
  anyNode = [v6 anyNode];

  if (anyNode)
  {
    v8 = 0;
  }

  else
  {
    v13 = 0;
    anyNode = [(PGGraph *)self _momentNodeForAssetCollection:momentCopy error:&v13];
    v8 = v13;
    if (!anyNode)
    {
      v9 = +[PGLogging sharedLogging];
      loggingConnection = [v9 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [momentCopy uuid];
        *buf = 136315650;
        v15 = "[PGGraph(Lookup) momentNodeForMoment:]";
        v16 = 2112;
        v17 = uuid2;
        v18 = 2112;
        v19 = v8;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "%s - Can't get node for moment (%@), error:%@", buf, 0x20u);
      }

      anyNode = 0;
    }
  }

  return anyNode;
}

- (id)highlightNodeForHighlight:(id)highlight
{
  uuid = [highlight uuid];
  v5 = [PGGraphHighlightNodeCollection highlightNodeForUUID:uuid inGraph:self];
  anyNode = [v5 anyNode];

  return anyNode;
}

- (id)momentNodeForAsset:(id)asset
{
  v13 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  [(PGGraph *)self _checkCanRead];
  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:assetCopy withType:3 options:0];
  if ([v5 count] == 1)
  {
    firstObject = [v5 firstObject];
    v7 = [(PGGraph *)self momentNodeForMoment:firstObject];
  }

  else
  {
    v8 = +[PGLogging sharedLogging];
    loggingConnection = [v8 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = assetCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Multiple moment for asset %@", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)eventNodeForAssetCollection:(id)collection
{
  v13 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  assetCollectionType = [collectionCopy assetCollectionType];
  v6 = 0;
  if (assetCollectionType <= 0xD)
  {
    if (((1 << assetCollectionType) & 0x3F97) != 0)
    {
      v7 = +[PGLogging sharedLogging];
      loggingConnection = [v7 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = collectionCopy;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Requesting event node for unsupported asset collection type: %@", &v11, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      if (assetCollectionType == 3)
      {
        v10 = [(PGGraph *)self momentNodeForMoment:collectionCopy];
      }

      else
      {
        if (assetCollectionType != 6)
        {
          goto LABEL_6;
        }

        v10 = [(PGGraph *)self highlightNodeForHighlight:collectionCopy];
      }

      v6 = v10;
    }
  }

LABEL_6:

  return v6;
}

- (id)_fuzzyMomentNodeLookupForAssetCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  v7 = [MEMORY[0x277CBEB58] set];
  photoLibrary = [collectionCopy photoLibrary];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __66__PGGraph_Lookup___fuzzyMomentNodeLookupForAssetCollection_error___block_invoke;
  v17 = &unk_278883C98;
  v9 = collectionCopy;
  v18 = v9;
  selfCopy = self;
  v10 = photoLibrary;
  v20 = v10;
  v11 = v7;
  v21 = v11;
  [(PGGraph *)self _enumerateMomentNodesForAssetCollection:v9 paddingTime:error error:&v14 enumerationBlock:10800.0];
  if ([v11 count] == 1)
  {
    anyObject = [v11 anyObject];
  }

  else if (error)
  {
    [PGError errorWithCode:-3 description:@"Fuzzy event find multiple events"];
    *error = anyObject = 0;
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

void __66__PGGraph_Lookup___fuzzyMomentNodeLookupForAssetCollection_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) assetCollectionType] == 3)
  {
    v4 = [*(a1 + 40) _strictMomentLookupForMomentNode:v5 inPhotoLibrary:*(a1 + 48)];
    if (!v4 || [*(a1 + 32) isEqual:v4])
    {
      [*(a1 + 56) addObject:v5];
    }
  }

  else
  {
    [*(a1 + 56) addObject:v5];
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_strictMomentNodeLookupForAssetCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__12216;
  v14 = __Block_byref_object_dispose__12217;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__PGGraph_Lookup___strictMomentNodeLookupForAssetCollection_error___block_invoke;
  v9[3] = &unk_278885948;
  v9[4] = &v10;
  [(PGGraph *)self _enumerateMomentNodesForAssetCollection:collectionCopy paddingTime:error error:v9 enumerationBlock:0.001];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)_momentNodesForDateComponents:(id)components error:(id *)error
{
  v6 = MEMORY[0x277D27690];
  componentsCopy = components;
  timeZone = [componentsCopy timeZone];
  v9 = [v6 dateFromComponents:componentsCopy inTimeZone:timeZone];

  v10 = [(PGGraph *)self dateNodeForLocalDate:v9];
  v11 = v10;
  if (v10)
  {
    collection = [v10 collection];
    momentNodes = [collection momentNodes];
LABEL_5:

    goto LABEL_6;
  }

  if (error)
  {
    collection = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - Cannot find node with date: %@", "-[PGGraph(Lookup) _momentNodesForDateComponents:error:]", v9];
    [PGError errorWithCode:-3 description:collection];
    *error = momentNodes = 0;
    goto LABEL_5;
  }

  momentNodes = 0;
LABEL_6:

  return momentNodes;
}

- (void)_enumerateMomentForMomentNode:(id)node inPhotoLibrary:(id)library paddingTime:(double)time enumerationBlock:(id)block
{
  v27[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v10 = MEMORY[0x277CBEAA8];
  libraryCopy = library;
  nodeCopy = node;
  [nodeCopy timestampUTCStart];
  time = [v10 dateWithTimeIntervalSince1970:v13 - time];
  v15 = MEMORY[0x277CBEAA8];
  [nodeCopy timestampUTCEnd];
  v17 = v16;

  time2 = [v15 dateWithTimeIntervalSince1970:v17 + time];
  v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(startDate >= %@) AND (endDate <= %@)", time, time2];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v27[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v22];

  [librarySpecificFetchOptions setPredicate:v19];
  v23 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:librarySpecificFetchOptions];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __93__PGGraph_Lookup___enumerateMomentForMomentNode_inPhotoLibrary_paddingTime_enumerationBlock___block_invoke;
  v25[3] = &unk_278880158;
  v26 = blockCopy;
  v24 = blockCopy;
  [v23 enumerateObjectsUsingBlock:v25];
}

- (BOOL)_enumerateMomentNodesForAssetCollection:(id)collection paddingTime:(double)time error:(id *)error enumerationBlock:(id)block
{
  collectionCopy = collection;
  blockCopy = block;
  cls_localStartDateComponents = [collectionCopy cls_localStartDateComponents];
  if (cls_localStartDateComponents)
  {
    v14 = [(PGGraph *)self _momentNodesForDateComponents:cls_localStartDateComponents error:error];
    v15 = v14;
    if (v14 && [v14 count])
    {
      cls_universalStartDate = [collectionCopy cls_universalStartDate];
      [cls_universalStartDate timeIntervalSince1970];
      v18 = v17;

      cls_universalEndDate = [collectionCopy cls_universalEndDate];
      [cls_universalEndDate timeIntervalSince1970];
      v21 = v20;

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __94__PGGraph_Lookup___enumerateMomentNodesForAssetCollection_paddingTime_error_enumerationBlock___block_invoke;
      v25[3] = &unk_278880130;
      v27 = v18;
      timeCopy = time;
      v29 = v21;
      v26 = blockCopy;
      [v15 enumerateNodesUsingBlock:v25];

      v22 = 1;
    }

    else
    {
      v22 = 0;
      v6 = v15 != 0;
    }

    v23 = v22 | v6;
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDescription:@"Couldn't get asset collection's dates"];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

void __94__PGGraph_Lookup___enumerateMomentNodesForAssetCollection_paddingTime_error_enumerationBlock___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  [v15 timestampUTCStart];
  v4 = v3;
  [v15 timestampUTCEnd];
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v7 - v6;
  v9 = v7 + v6;
  if (v4 >= v8 && v4 <= v9)
  {
    v11 = *(a1 + 56);
    v12 = v11 - v6;
    v13 = v6 + v11;
    if (v5 >= v12 && v5 <= v13)
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (id)largeFrequentLocationNodes
{
  v55[2] = *MEMORY[0x277D85DE8];
  supersets = [(PGGraph *)self supersets];
  allObjects = [supersets allObjects];

  if ([allObjects count] > 2)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = MEMORY[0x277D27688];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __51__PGGraph_Conveniences__largeFrequentLocationNodes__block_invoke_2;
    v50[3] = &unk_278880D10;
    v36 = allObjects;
    v51 = allObjects;
    v7 = v5;
    v52 = v7;
    [v6 calculateStandardDeviationForItems:v51 valueBlock:&__block_literal_global_273 result:v50];
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"numberOfMomentNodes" ascending:0];
    v55[0] = v8;
    v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:0];
    v55[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v11 = [v7 sortedArrayUsingDescriptors:v10];

    v12 = [v11 mutableCopy];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v11;
    v40 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v40)
    {
      v39 = *v47;
      v38 = v12;
LABEL_5:
      v13 = 0;
      while (1)
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v46 + 1) + 8 * v13);
        collection = [v14 collection];
        momentNodes = [collection momentNodes];
        v17 = [momentNodes count];

        [v12 removeObject:v14];
        if (!v17)
        {
          break;
        }

        v41 = v13;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        reverseObjectEnumerator = [v12 reverseObjectEnumerator];
        v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v42 objects:v53 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v43;
          v22 = v17;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v43 != v21)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              v24 = *(*(&v42 + 1) + 8 * i);
              if ([v7 containsObject:v24])
              {
                collection2 = [v24 collection];
                momentNodes2 = [collection2 momentNodes];
                v27 = [momentNodes2 count];

                if (v27 / v22 >= 0.2)
                {
                  goto LABEL_21;
                }

                universalDateInterval = [v24 universalDateInterval];
                [universalDateInterval duration];
                v30 = v29;
                universalDateInterval2 = [v14 universalDateInterval];
                v32 = [universalDateInterval intersectionWithDateInterval:universalDateInterval2];
                [v32 duration];
                v34 = v33;

                if (v34 / v30 >= 0.5)
                {
                  [v7 removeObject:{v24, v34 / v30}];
                }
              }
            }

            v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v42 objects:v53 count:16];
          }

          while (v20);
        }

LABEL_21:

        v13 = v41 + 1;
        v12 = v38;
        if (v41 + 1 == v40)
        {
          v40 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (v40)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v4 = v7;
    allObjects = v36;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:allObjects];
  }

  return v4;
}

void __51__PGGraph_Conveniences__largeFrequentLocationNodes__block_invoke_2(uint64_t a1, double a2, double a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = ceil(a3 - a2);
  if (v4 >= 1.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 collection];
        v13 = [v12 momentNodes];
        v14 = [v13 count];

        if (v14 >= v5)
        {
          [*(a1 + 40) addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

double __51__PGGraph_Conveniences__largeFrequentLocationNodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 collection];
  v3 = [v2 momentNodes];
  v4 = [v3 count];

  return v4;
}

- (id)sceneNodesForSceneNames:(id)names
{
  v21 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = namesCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        capitalizedString = [*(*(&v16 + 1) + 8 * i) capitalizedString];
        [v5 addObject:capitalizedString];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = objc_alloc(MEMORY[0x277D22C78]);
  v13 = [v12 initWithLabels:v5 domain:600 properties:MEMORY[0x277CBEC10]];
  v14 = [(MANodeCollection *)PGGraphSceneNodeCollection nodesMatchingFilter:v13 inGraph:self];

  return v14;
}

- (id)sceneNodeForSceneName:(id)name
{
  capitalizedString = [name capitalizedString];
  v5 = [(MAGraph *)self anyNodeForLabel:capitalizedString domain:600];

  return v5;
}

- (id)dayOfWeekNodes
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__PGGraph_Conveniences__dayOfWeekNodes__block_invoke;
  v6[3] = &unk_278880CC8;
  v4 = array;
  v7 = v4;
  [(MAGraph *)self enumerateNodesWithLabel:@"DayOfWeek" domain:400 usingBlock:v6];

  return v4;
}

- (void)enumerateCelebratedHolidayNodesUsingBlock:(id)block
{
  blockCopy = block;
  [(PGGraph *)self _checkCanRead];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PGGraph_Conveniences__enumerateCelebratedHolidayNodesUsingBlock___block_invoke;
  v6[3] = &unk_278880CA0;
  v7 = blockCopy;
  v5 = blockCopy;
  [(MAGraph *)self enumerateEdgesWithLabel:@"CELEBRATING" domain:401 usingBlock:v6];
}

void __67__PGGraph_Conveniences__enumerateCelebratedHolidayNodesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 targetNode];
  (*(v4 + 16))(v4, v5, a3);
}

- (id)bestFittingAreaNodeFromAreaNodes:(id)nodes
{
  nodesCopy = nodes;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__17132;
  v13 = __Block_byref_object_dispose__17133;
  v14 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0x7FEFFFFFFFFFFFFFLL;
  v4 = [(PGGraphEdgeCollection *)PGGraphAreaEdgeCollection edgesToNodes:nodesCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__PGGraph_Conveniences__bestFittingAreaNodeFromAreaNodes___block_invoke;
  v7[3] = &unk_278880C78;
  v7[4] = v8;
  v7[5] = &v9;
  [v4 enumerateEdgesUsingBlock:v7];
  v5 = v10[5];

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __58__PGGraph_Conveniences__bestFittingAreaNodeFromAreaNodes___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 relevance];
  v4 = v3;
  if (v3 < *(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [v8 targetNode];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *(*(*(a1 + 32) + 8) + 24) = v4;
  }
}

- (BOOL)isSharedLibraryEnabled
{
  v2 = [PGGraphPersonNodeCollection personNodesForSharedLibraryParticipantsInGraph:self];
  v3 = [v2 count] != 0;

  return v3;
}

- (double)libraryDuration
{
  momentNodesSortedByDate = [(PGGraph *)self momentNodesSortedByDate];
  lastObject = [momentNodesSortedByDate lastObject];
  universalEndDate = [lastObject universalEndDate];
  firstObject = [momentNodesSortedByDate firstObject];
  universalStartDate = [firstObject universalStartDate];
  [universalEndDate timeIntervalSinceDate:universalStartDate];
  v8 = v7;

  return v8;
}

- (id)celebratedHolidayNodes
{
  [(PGGraph *)self _checkCanRead];
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PGGraph_Conveniences__celebratedHolidayNodes__block_invoke;
  v6[3] = &unk_278888D00;
  v4 = v3;
  v7 = v4;
  [(PGGraph *)self enumerateCelebratedHolidayNodesUsingBlock:v6];

  return v4;
}

- (id)allTimeYearsNodes
{
  [(PGGraph *)self _checkCanRead];

  return [(MAGraph *)self nodesForLabel:@"Year" domain:400];
}

- (id)dateNodeNameWithDateComponents:(id)components
{
  componentsCopy = components;
  if ([componentsCopy month] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "day") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(componentsCopy, "year") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = +[PGLogging sharedLogging];
    loggingConnection = [v4 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Invalid date components", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02ld-%02ld-%04ld", objc_msgSend(componentsCopy, "month"), objc_msgSend(componentsCopy, "day"), objc_msgSend(componentsCopy, "year")];
  }

  return v6;
}

- (id)dateNodeNameWithLocalDate:(id)date
{
  dateCopy = date;
  dateFormatter = [(PGGraph *)self dateFormatter];
  v6 = [dateFormatter stringFromDate:dateCopy];

  return v6;
}

- (id)coworkers
{
  v3 = objc_opt_new();
  meNode = [(PGGraph *)self meNode];
  if (meNode)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__PGGraph_Conveniences__coworkers__block_invoke;
    v6[3] = &unk_278880C50;
    v7 = v3;
    [meNode enumeratePersonNodesWithRelationship:1 matchingQuery:3 usingBlock:v6];
  }

  return v3;
}

- (id)friends
{
  v3 = objc_opt_new();
  meNode = [(PGGraph *)self meNode];
  if (meNode)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__PGGraph_Conveniences__friends__block_invoke;
    v6[3] = &unk_278880C50;
    v7 = v3;
    [meNode enumeratePersonNodesWithRelationship:2 matchingQuery:3 usingBlock:v6];
  }

  return v3;
}

- (id)children
{
  v3 = objc_opt_new();
  meNode = [(PGGraph *)self meNode];
  if (meNode)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__PGGraph_Conveniences__children__block_invoke;
    v6[3] = &unk_278880C50;
    v7 = v3;
    [meNode enumeratePersonNodesWithRelationship:5 matchingQuery:3 usingBlock:v6];
  }

  return v3;
}

- (id)parents
{
  v3 = objc_opt_new();
  meNode = [(PGGraph *)self meNode];
  if (meNode)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __32__PGGraph_Conveniences__parents__block_invoke;
    v6[3] = &unk_278880C50;
    v7 = v3;
    [meNode enumeratePersonNodesWithRelationship:8 matchingQuery:3 usingBlock:v6];
  }

  return v3;
}

- (id)partners
{
  v3 = objc_opt_new();
  meNode = [(PGGraph *)self meNode];
  if (meNode)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__PGGraph_Conveniences__partners__block_invoke;
    v6[3] = &unk_278880C50;
    v7 = v3;
    [meNode enumeratePersonNodesWithRelationship:13 matchingQuery:3 usingBlock:v6];
  }

  return v3;
}

- (id)familyMembers
{
  v3 = objc_opt_new();
  meNode = [(PGGraph *)self meNode];
  if (meNode)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__PGGraph_Conveniences__familyMembers__block_invoke;
    v6[3] = &unk_278880C50;
    v7 = v3;
    [meNode enumeratePersonNodesWithRelationship:4 matchingQuery:3 usingBlock:v6];
  }

  return v3;
}

- (id)meNodeCollection
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:self];
  if ([v2 count] >= 2)
  {
    v3 = +[PGLogging sharedLogging];
    loggingConnection = [v3 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v6 = [v2 set];
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Graph has multiple meNodes: %@", &v7, 0xCu);
    }
  }

  return v2;
}

- (id)meNode
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(MAGraph *)self nodesForLabel:@"Me" domain:300];
  if ([v2 count] >= 2)
  {
    v3 = +[PGLogging sharedLogging];
    loggingConnection = [v3 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Graph has multiple meNodes: %@", &v7, 0xCu);
    }
  }

  anyObject = [v2 anyObject];

  return anyObject;
}

+ (id)poiLabelForPOIType:(id)type
{
  typeCopy = type;
  _graphNodePOILabelByPlaceType = [self _graphNodePOILabelByPlaceType];
  v6 = [_graphNodePOILabelByPlaceType objectForKeyedSubscript:typeCopy];

  return v6;
}

+ (id)_graphNodePOILabelByPlaceType
{
  if (_graphNodePOILabelByPlaceType_onceToken != -1)
  {
    dispatch_once(&_graphNodePOILabelByPlaceType_onceToken, &__block_literal_global_17142);
  }

  v3 = _graphNodePOILabelByPlaceType_graphNodePOILabelByPlaceType;

  return v3;
}

void __54__PGGraph_Conveniences___graphNodePOILabelByPlaceType__block_invoke()
{
  v17[14] = *MEMORY[0x277D85DE8];
  v15 = +[PGPhotosGraphProfile poiHospital];
  v16[0] = v15;
  v17[0] = @"Hospital";
  v14 = +[PGPhotosGraphProfile poiHiking];
  v16[1] = v14;
  v17[1] = @"Hiking";
  v13 = +[PGPhotosGraphProfile poiDiving];
  v16[2] = v13;
  v17[2] = @"Diving";
  v12 = +[PGPhotosGraphProfile poiActivity];
  v16[3] = v12;
  v17[3] = @"Activity";
  v0 = +[PGPhotosGraphProfile poiStadium];
  v16[4] = v0;
  v17[4] = @"Stadium";
  v1 = +[PGPhotosGraphProfile poiPerformance];
  v16[5] = v1;
  v17[5] = @"Performance";
  v2 = +[PGPhotosGraphProfile poiPark];
  v16[6] = v2;
  v17[6] = @"Park";
  v3 = +[PGPhotosGraphProfile poiAmusementPark];
  v16[7] = v3;
  v17[7] = @"AmusementPark";
  v4 = +[PGPhotosGraphProfile poiEntertainment];
  v16[8] = v4;
  v17[8] = @"Entertainment";
  v5 = +[PGPhotosGraphProfile poiMuseum];
  v16[9] = v5;
  v17[9] = @"Museum";
  v6 = +[PGPhotosGraphProfile poiCulture];
  v16[10] = v6;
  v17[10] = @"Culture";
  v7 = +[PGPhotosGraphProfile poiTravel];
  v16[11] = v7;
  v17[11] = @"Travel";
  v8 = +[PGPhotosGraphProfile poiNightlife];
  v16[12] = v8;
  v17[12] = @"Nightlife";
  v9 = +[PGPhotosGraphProfile poiRestaurant];
  v16[13] = v9;
  v17[13] = @"Restaurant";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:14];
  v11 = _graphNodePOILabelByPlaceType_graphNodePOILabelByPlaceType;
  _graphNodePOILabelByPlaceType_graphNodePOILabelByPlaceType = v10;
}

- (OS_dispatch_queue)graphQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_graphQueue);

  return WeakRetained;
}

- (int64_t)librarySizeRange
{
  v3 = objc_opt_class();
  infoNode = [(PGGraph *)self infoNode];
  v5 = [v3 librarySizeRangeForNumberOfAssets:{objc_msgSend(infoNode, "numberOfAssets")}];

  return v5;
}

- (NSString)localeIdentifier
{
  infoNode = [(PGGraph *)self infoNode];
  localeIdentifier = [infoNode localeIdentifier];

  return localeIdentifier;
}

- (void)invalidateMemoryCaches
{
  v3.receiver = self;
  v3.super_class = PGGraph;
  [(MAGraph *)&v3 invalidateMemoryCaches];
  [(PGGraph *)self invalidateProcessingCaches];
}

- (BOOL)copyToURL:(id)l
{
  lCopy = l;
  [(PGGraph *)self _checkCanRead];
  if (lCopy)
  {
    databaseURL = [(MAGraph *)self databaseURL];
    v11 = 0;
    v6 = [(MAGraph *)PGGraph copyPersistentStoreFromURL:databaseURL toURL:lCopy error:&v11];
    loggingConnection = v11;
  }

  else
  {
    v8 = +[PGLogging sharedLogging];
    loggingConnection = [v8 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "URL is nil", v10, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)saveToURL:(id)l
{
  lCopy = l;
  [(PGGraph *)self _checkCanRead];
  if (lCopy)
  {
    v10 = 0;
    v5 = [(MAGraph *)self writeDataToURL:lCopy error:&v10];
    loggingConnection = v10;
  }

  else
  {
    v7 = +[PGLogging sharedLogging];
    loggingConnection = [v7 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Url is nil", v9, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)enableInTransactionCheck
{
  graph = [(MAGraph *)self graph];
  store = [graph store];
  [store enableInTransactionCheck];
}

- (PGGraph)initWithSpecification:(id)specification
{
  v8.receiver = self;
  v8.super_class = PGGraph;
  v3 = [(MAGraph *)&v8 initWithSpecification:specification];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v3->_dateFormatter;
    v3->_dateFormatter = v4;

    v6 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"GMT"];
    [(NSDateFormatter *)v3->_dateFormatter setTimeZone:v6];

    [(NSDateFormatter *)v3->_dateFormatter setDateFormat:@"MM-dd-yyyy"];
    v3->_supersetLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (PGGraph)initWithURL:(id)l persistenceOptions:(int64_t)options error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v9 = [(MAGraph *)self initWithPersistentStoreURL:lCopy options:options error:error];
  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v11 = *MEMORY[0x277CBE878];
    v17 = 0;
    v12 = [lCopy setResourceValue:v10 forKey:v11 error:&v17];
    v13 = v17;

    if ((v12 & 1) == 0)
    {
      v14 = +[PGLogging sharedLogging];
      loggingConnection = [v14 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = lCopy;
        v20 = 2112;
        v21 = v13;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error excluding %@ from backup: %@", buf, 0x16u);
      }
    }
  }

  return v9;
}

- (void)_checkCanRead
{
  WeakRetained = objc_loadWeakRetained(&self->_graphQueue);
  if (WeakRetained && ![(PGGraph *)self isOnGraphQueue])
  {
    v4 = +[PGLogging sharedLogging];
    loggingConnection = [v4 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Accessing graph on the wrong queue!", v6, 2u);
    }
  }
}

- (void)setGraphQueue:(id)queue
{
  obj = queue;
  WeakRetained = objc_loadWeakRetained(&self->_graphQueue);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      dispatch_queue_set_specific(WeakRetained, self, 0, 0);
    }

    objc_storeWeak(&self->_graphQueue, obj);
    if (obj)
    {
      dispatch_queue_set_specific(obj, self, self, 0);
    }
  }
}

+ (int64_t)librarySizeRangeForNumberOfAssets:(unint64_t)assets
{
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (assets >> 4 >= 0xC35)
  {
    v6 = 5;
  }

  if (assets >> 4 >= 0x271)
  {
    v5 = v6;
  }

  if (assets >= 0x7D0)
  {
    v4 = v5;
  }

  if (assets >= 0x1F4)
  {
    v3 = v4;
  }

  if (assets)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (id)defaultSpecification
{
  v2 = objc_alloc_init(PGGraphSpecification);

  return v2;
}

+ (PGGraph)graphWithVisualString:(id)string error:(id *)error
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___PGGraph;
  v4 = objc_msgSendSuper2(&v6, sel_graphWithVisualString_error_, string, error);

  return v4;
}

+ (BOOL)graphExistsWithName:(id)name parentDirectoryURL:(id)l
{
  selfCopy = self;
  v5 = [self graphURLForName:name parentDirectoryURL:l];
  LOBYTE(selfCopy) = [selfCopy graphExistsAtURL:v5];

  return selfCopy;
}

+ (BOOL)graphExistsAtURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_new();
  v9 = 0;
  relativePath = [lCopy relativePath];

  v6 = [v4 fileExistsAtPath:relativePath isDirectory:&v9];
  if (v9)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

+ (id)graphURLForName:(id)name parentDirectoryURL:(id)l
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = MEMORY[0x277CCAA00];
  lCopy = l;
  v8 = objc_alloc_init(v6);
  path = [lCopy path];

  v10 = [path stringByAppendingPathComponent:@"PhotosGraph"];

  if (([v8 fileExistsAtPath:v10 isDirectory:0] & 1) != 0 || (v17 = 0, objc_msgSend(v8, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v10, 1, 0, &v17), (v11 = v17) == 0))
  {
    v15 = [objc_opt_class() persistentStoreURLWithPath:v10 andName:nameCopy];
  }

  else
  {
    v12 = v11;
    v13 = +[PGLogging sharedLogging];
    loggingConnection = [v13 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

+ (id)assetPropertySetsForIngest
{
  v13[14] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = *MEMORY[0x277CD9B10];
  v13[0] = *MEMORY[0x277CD9B28];
  v13[1] = v3;
  v4 = *MEMORY[0x277CD9AD0];
  v13[2] = *MEMORY[0x277CD9B18];
  v13[3] = v4;
  v5 = *MEMORY[0x277CD9A80];
  v13[4] = *MEMORY[0x277CD9B08];
  v13[5] = v5;
  v6 = *MEMORY[0x277CD9A60];
  v13[6] = *MEMORY[0x277CD9AC0];
  v13[7] = v6;
  v7 = *MEMORY[0x277CD9A90];
  v13[8] = *MEMORY[0x277CD9A70];
  v13[9] = v7;
  v8 = *MEMORY[0x277CD9A98];
  v13[10] = *MEMORY[0x277CD9AB8];
  v13[11] = v8;
  v9 = *MEMORY[0x277CD9AF0];
  v13[12] = *MEMORY[0x277CD9B20];
  v13[13] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:14];
  v11 = [v2 initWithArray:v10];

  if (+[PGEventLabelingConfiguration isEventLabelingEnabled])
  {
    [v11 addObject:*MEMORY[0x277CD9AD8]];
  }

  return v11;
}

- (id)sortedSocialGroupNodesWithMomentNodes:(id)nodes
{
  socialGroupNodes = [nodes socialGroupNodes];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__PGGraph_OnDiskQueries__sortedSocialGroupNodesWithMomentNodes___block_invoke;
  v13[3] = &unk_278882150;
  v7 = v6;
  v14 = v7;
  [socialGroupNodes enumerateIdentifiersAsCollectionsWithBlock:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__PGGraph_OnDiskQueries__sortedSocialGroupNodesWithMomentNodes___block_invoke_2;
  v10[3] = &unk_278882178;
  v11 = v7;
  selfCopy = self;
  v8 = v7;
  [v5 sortUsingComparator:v10];

  return v5;
}

void __64__PGGraph_OnDiskQueries__sortedSocialGroupNodesWithMomentNodes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v9 = [a3 momentNodes];
  v6 = [v5 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v7 setObject:v6 forKeyedSubscript:v8];
}

uint64_t __64__PGGraph_OnDiskQueries__sortedSocialGroupNodesWithMomentNodes___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "identifier")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "identifier")}];
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = [v12 compare:v9];
  if (!v13)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "rankInGraph:", *(a1 + 40))}];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "rankInGraph:", *(a1 + 40))}];
    v13 = [v15 compare:v14];
  }

  return v13;
}

- (id)maximalSocialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers
{
  v52 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB58] set];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(PGGraph *)self allSocialGroupsForMemberLocalIdentifier:v11 options:0];
        if (v13)
        {
          [v5 addObjectsFromArray:v13];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v8);
  }

  v29 = v6;

  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"@count" ascending:0];
  v50 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v30 = v5;
  v16 = [v5 sortedArrayUsingDescriptors:v15];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v16;
  v32 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v32)
  {
    v31 = *v41;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v40 + 1) + 8 * j);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v19 = obj;
        v20 = [v19 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v37;
LABEL_17:
          v23 = 0;
          while (1)
          {
            if (*v37 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v36 + 1) + 8 * v23);
            v25 = [v18 count];
            if (v25 >= [v24 count])
            {
              break;
            }

            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = __72__PGGraph_People__maximalSocialGroupsOverlappingMemberLocalIdentifiers___block_invoke;
            v35[3] = &unk_278882440;
            v35[4] = v24;
            v26 = [v18 indexesOfObjectsPassingTest:v35];
            v27 = [v26 count];
            if (v27 != [v18 count])
            {
              [array addObject:v18];
            }

            if (v21 == ++v23)
            {
              v21 = [v19 countByEnumeratingWithState:&v36 objects:v48 count:16];
              if (v21)
              {
                goto LABEL_17;
              }

              break;
            }
          }
        }
      }

      v32 = [v19 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v32);
  }

  return array;
}

- (id)socialGroupsOverlappingMemberLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [PGGraphPersonNodeCollection personNodesForLocalIdentifiers:identifiersCopy inGraph:self];
  if ([v5 count])
  {
    asSocialGroupMemberNodeCollection = [v5 asSocialGroupMemberNodeCollection];
    v7 = [(PGGraph *)self commonSocialGroupNodesForMemberNodes:asSocialGroupMemberNodeCollection];

    if ([v7 count])
    {
      meNode = [(PGGraph *)self meNode];
      v9 = meNode;
      if (meNode)
      {
        localIdentifier = [meNode localIdentifier];
        v11 = [identifiersCopy containsObject:localIdentifier];
      }

      else
      {
        v11 = 0;
      }

      v12 = [(PGGraph *)self socialGroupsIdentifiersFromSocialGroupNodes:v7 shouldIncludeMeNode:v11];
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (id)allSocialGroupsForMemberLocalIdentifier:(id)identifier options:(id)options
{
  identifierCopy = identifier;
  v7 = [options objectForKeyedSubscript:*MEMORY[0x277D3AFF0]];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D3AFF8]];
    bOOLValue = [v9 BOOLValue];

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __67__PGGraph_People__allSocialGroupsForMemberLocalIdentifier_options___block_invoke;
    v23 = &unk_2788885C8;
    socialGroupNodes = v11;
    v24 = socialGroupNodes;
    selfCopy = self;
    [(PGGraph *)self enumerateSocialGroupsIncludingMeNode:1 socialGroupsVersion:0 simulateMeNodeNotSet:bOOLValue validGroupsBlock:&v20 invalidGroupsBlock:0 averageWeight:0];
    if ([socialGroupNodes count])
    {
      v13 = [(PGGraph *)self socialGroupsIdentifiersFromSocialGroupNodesWithMemberNodesBySocialGroupNode:socialGroupNodes shouldIncludeMeNode:1 simulateMeNodeNotSet:bOOLValue];
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    goto LABEL_17;
  }

  if (identifierCopy)
  {
    meNode = [(PGGraph *)self meNode];
    v15 = meNode;
    if (meNode && ([meNode localIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", identifierCopy), v16, v17))
    {
      socialGroupNodes = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:self];
    }

    else
    {
      v18 = [PGGraphPersonNodeCollection personNodesForLocalIdentifier:identifierCopy inGraph:self];
      socialGroupNodes = [v18 socialGroupNodes];
    }

    if (!socialGroupNodes)
    {
      goto LABEL_16;
    }
  }

  else
  {
    socialGroupNodes = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:self];
    if (!socialGroupNodes)
    {
      goto LABEL_16;
    }
  }

  if ([socialGroupNodes count])
  {
    v13 = [(PGGraph *)self socialGroupsIdentifiersFromSocialGroupNodes:socialGroupNodes shouldIncludeMeNode:1];
    goto LABEL_17;
  }

LABEL_16:
  v13 = MEMORY[0x277CBEBF8];
LABEL_17:

  return v13;
}

void __67__PGGraph_People__allSocialGroupsForMemberLocalIdentifier_options___block_invoke(uint64_t a1, void *a2, float a3)
{
  v5 = MEMORY[0x277CCAD78];
  v6 = a2;
  v7 = [v5 UUID];
  v8 = [v7 hash];

  v10 = [[PGGraphSocialGroupNode alloc] initWithSocialGroupIdentifier:v8 importance:a3];
  [(MANode *)v10 resolveIdentifier:v8];
  v9 = [(MAElementCollection *)[PGGraphSocialGroupMemberNodeCollection alloc] initWithArray:v6 graph:*(a1 + 40)];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
}

- (unint64_t)_countOfDistinctSocialGroups:(id)groups
{
  v60 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v33 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = groupsCopy;
  v34 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v34)
  {
    v32 = *v53;
    do
    {
      v4 = 0;
      do
      {
        if (*v53 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v4;
        v5 = *(*(&v52 + 1) + 8 * v4);
        v38 = [MEMORY[0x277CBEB58] setWithObject:{v5, v32}];
        v6 = [v5 count];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v7 = obj;
        v8 = [v7 countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = vcvtpd_u64_f64(vcvtd_n_f64_u64(v6, 1uLL));
          v11 = *v49;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v49 != v11)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v48 + 1) + 8 * i);
              if (v13 != v5)
              {
                v14 = [MEMORY[0x277CBEB58] setWithSet:v5];
                [v14 intersectSet:v13];
                if ([v14 count] > v10 || (v15 = objc_msgSend(v14, "count"), v15 == objc_msgSend(v5, "count")))
                {
                  [v38 addObject:v13];
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v48 objects:v58 count:16];
          }

          while (v9);
        }

        [v33 addObject:v38];
        v4 = v36 + 1;
      }

      while (v36 + 1 != v34);
      v34 = [v7 countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v34);
  }

  v16 = [v33 mutableCopy];
  v17 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = v33;
  v18 = [v37 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v18)
  {
    v19 = v18;
    v39 = *v45;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(v37);
        }

        v21 = *(*(&v44 + 1) + 8 * j);
        [v16 removeObject:v21];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v22 = v16;
        v23 = [v22 countByEnumeratingWithState:&v40 objects:v56 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v41;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v41 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v40 + 1) + 8 * k);
              if (([v21 isSubsetOfSet:v27] & 1) == 0)
              {
                v28 = [v27 isSubsetOfSet:v21];
                v27 = v21;
                if (!v28)
                {
                  continue;
                }
              }

              [v17 addObject:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v40 objects:v56 count:16];
          }

          while (v24);
        }
      }

      v19 = [v37 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v19);
  }

  v29 = [v37 count];
  v30 = [v17 count];

  return v29 - v30;
}

- (id)_personNodeIntersectingSocialGroups:(id)groups
{
  v44 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v4 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = groupsCopy;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 unionSet:*(*(&v34 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v7);
  }

  v10 = vcvtmd_u64_f64([v5 count] * 0.8);
  if (v10 <= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (!v13)
  {

    v15 = 0;
    goto LABEL_29;
  }

  v14 = v13;
  v29 = v5;
  v15 = 0;
  loggingConnection = 0;
  v17 = *v31;
  v18 = 1;
  do
  {
    for (j = 0; j != v14; ++j)
    {
      if (*v31 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v20 = *(*(&v30 + 1) + 8 * j);
      v21 = [v12 countForObject:v20];
      v22 = v21;
      if (v21 >= v11 && v21 > v15)
      {
        v24 = v20;

        v18 = 1;
        v15 = v22;
        loggingConnection = v24;
      }

      else
      {
        v18 &= v21 != v15;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v30 objects:v42 count:16];
  }

  while (v14);

  if (!loggingConnection)
  {
    v5 = v29;
LABEL_29:
    v25 = +[PGLogging sharedLogging];
    loggingConnection = [v25 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v39 = v15;
      v40 = 2112;
      v41 = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Can't suggest Me Person: Not getting 1 person intersect between social groups. Highest overlap count %lu for person %@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  if (v18)
  {
    v5 = v29;
    goto LABEL_35;
  }

  v26 = +[PGLogging sharedLogging];
  loggingConnection2 = [v26 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v39 = v15;
    v40 = 2112;
    v41 = loggingConnection;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "Can't suggest Me Person: Not getting a unique person intersecting between the social groups. Highest overlap count %lu for person %@", buf, 0x16u);
  }

  v5 = v29;
LABEL_34:

  loggingConnection = 0;
LABEL_35:

  return loggingConnection;
}

- (id)_socialGroupNodeForPersonNodes:(id)nodes searchWithTolerance:(BOOL)tolerance
{
  toleranceCopy = tolerance;
  nodesCopy = nodes;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__28669;
  v23 = __Block_byref_object_dispose__28670;
  asSocialGroupMemberNodeCollection = [nodesCopy asSocialGroupMemberNodeCollection];
  v24 = [(PGGraph *)self socialGroupNodeForMemberNodes:asSocialGroupMemberNodeCollection];

  v8 = v20[5];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !toleranceCopy;
  }

  if (!v9)
  {
    asSocialGroupMemberNodeCollection2 = [nodesCopy asSocialGroupMemberNodeCollection];
    v11 = [(PGGraph *)self commonSocialGroupNodesForMemberNodes:asSocialGroupMemberNodeCollection2];

    if ([v11 count])
    {
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x2020000000;
      v18[3] = 0;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __70__PGGraph_People___socialGroupNodeForPersonNodes_searchWithTolerance___block_invoke;
      v14[3] = &unk_278882418;
      v15 = nodesCopy;
      v16 = v18;
      v17 = &v19;
      [v11 enumerateIdentifiersAsCollectionsWithBlock:v14];

      _Block_object_dispose(v18, 8);
    }

    v8 = v20[5];
  }

  v12 = v8;
  _Block_object_dispose(&v19, 8);

  return v12;
}

void __70__PGGraph_People___socialGroupNodeForPersonNodes_searchWithTolerance___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [v7 personNodes];
  v6 = [v5 count];

  if (v6 > [*(a1 + 32) count] && v6 > *(*(*(a1 + 40) + 8) + 24))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }
}

- (id)fetchMemberNodesBySocialGroupNodeForSocialGroupNodes:(id)nodes
{
  v25 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    v4 = [PGGraphSocialGroupNodeCollection alloc];
    firstObject = [nodesCopy firstObject];
    graph = [firstObject graph];
    v7 = [(MAElementCollection *)v4 initWithArray:nodesCopy graph:graph];

    v8 = MEMORY[0x277D22BF8];
    v9 = +[PGGraphSocialGroupNode memberOfSocialGroup];
    v10 = [v8 adjacencyWithSources:v7 relation:v9 targetsClass:objc_opt_class()];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = nodesCopy;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = [v10 targetsForSourceIdentifier:{objc_msgSend(v17, "identifier", v20)}];
          [dictionary setObject:v18 forKeyedSubscript:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  else
  {
    dictionary = MEMORY[0x277CBEC10];
  }

  return dictionary;
}

- (id)fetchMemberNodesBySocialGroupNodeForSocialGroups:(id)groups
{
  array = [groups array];
  v5 = [(PGGraph *)self fetchMemberNodesBySocialGroupNodeForSocialGroupNodes:array];

  return v5;
}

- (id)socialGroupsIdentifiersFromSocialGroupNodes:(id)nodes shouldIncludeMeNode:(BOOL)node
{
  nodeCopy = node;
  v6 = [(PGGraph *)self fetchMemberNodesBySocialGroupNodeForSocialGroups:nodes];
  v7 = [(PGGraph *)self socialGroupsIdentifiersFromSocialGroupNodesWithMemberNodesBySocialGroupNode:v6 shouldIncludeMeNode:nodeCopy simulateMeNodeNotSet:0];

  return v7;
}

- (id)socialGroupsIdentifiersFromSocialGroupNodesWithMemberNodesBySocialGroupNode:(id)node shouldIncludeMeNode:(BOOL)meNode simulateMeNodeNotSet:(BOOL)set
{
  setCopy = set;
  meNodeCopy = meNode;
  v30 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v9 = [(PGGraph *)self memberLocalIdentifiersBySocialGroupUUIDWithMemberNodesBySocialGroupNode:nodeCopy shouldIncludeMeNode:meNodeCopy simulateMeNodeNotSet:setCopy];
  array = [MEMORY[0x277CBEB18] array];
  allKeys = [nodeCopy allKeys];
  v12 = +[PGGraphSocialGroupNode importanceSortDescriptors];
  v13 = [allKeys sortedArrayUsingDescriptors:v12];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        uUID = [v19 UUID];
        v21 = [v9 objectForKey:uUID];

        if (v21)
        {
          uUID2 = [v19 UUID];
          v23 = [v9 objectForKeyedSubscript:uUID2];

          if (v23)
          {
            [array addObject:v23];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  return array;
}

- (id)memberLocalIdentifiersBySocialGroupUUIDWithMemberNodesBySocialGroupNode:(id)node shouldIncludeMeNode:(BOOL)meNode simulateMeNodeNotSet:(BOOL)set
{
  meNodeCopy = meNode;
  v33 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(nodeCopy, "count")}];
  if (!set)
  {
    meNode = [(PGGraph *)self meNode];
    localIdentifier = [meNode localIdentifier];

    if ([localIdentifier length])
    {
      goto LABEL_6;
    }

    meNode2 = [(PGGraph *)self meNode];
    inferredPersonNode = [meNode2 inferredPersonNode];
    localIdentifier2 = [inferredPersonNode localIdentifier];

    if ([localIdentifier2 length])
    {
      localIdentifier = localIdentifier2;
      goto LABEL_6;
    }
  }

  localIdentifier = 0;
LABEL_6:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = nodeCopy;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16;
  v18 = *v29;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v29 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v28 + 1) + 8 * i);
      v21 = [v15 objectForKeyedSubscript:{v20, v28}];
      localIdentifiers = [v21 localIdentifiers];

      if ([localIdentifiers count] == 1 && meNodeCopy)
      {
        if (!localIdentifier)
        {
          goto LABEL_18;
        }

        v24 = [localIdentifiers setByAddingObject:localIdentifier];

        localIdentifiers = v24;
      }

      allObjects = [localIdentifiers allObjects];
      uUID = [v20 UUID];
      [v9 setObject:allObjects forKeyedSubscript:uUID];

LABEL_18:
    }

    v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v17);
LABEL_20:

  return v9;
}

- (id)personNodeForPersonLocalIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [PGGraphPersonNodeCollection personNodesForLocalIdentifier:identifierCopy inGraph:self];
  if (![v5 count])
  {
    v6 = +[PGLogging sharedLogging];
    loggingConnection = [v6 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[PGGraph(People) personNodeForPersonLocalIdentifier:]";
      v12 = 2112;
      v13 = identifierCopy;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%s - Cannot find person node for person local identifier: %@", &v10, 0x16u);
    }
  }

  anyNode = [v5 anyNode];

  return anyNode;
}

- (id)momentNodesForPersonNodes:(id)nodes
{
  nodesCopy = nodes;
  v5 = nodesCopy;
  if (nodesCopy && [nodesCopy count])
  {
    if ([v5 count] == 1)
    {
      momentNodes = [v5 momentNodes];
    }

    else
    {
      v7 = [(PGGraph *)self _socialGroupNodeForPersonNodes:v5 searchWithTolerance:1];
      v8 = v7;
      if (v7)
      {
        momentNodes = [v7 momentNodes];
      }

      else
      {
        momentNodes = 0;
      }
    }
  }

  else
  {
    momentNodes = 0;
  }

  return momentNodes;
}

- (id)socialGroupMemberNodesForMemberLocalIdentifiers:(id)identifiers
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:identifiersCopy];
  v6 = [PGGraphSocialGroupMemberNodeCollection memberNodesForLocalIdentifiers:v5 inGraph:self];

  memberNodeByLocalIdentifier = [v6 memberNodeByLocalIdentifier];
  v8 = [v6 count];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = identifiersCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [memberNodeByLocalIdentifier objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * i), v17}];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (id)personNodesForPersonLocalIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [PGGraphPersonNodeCollection personNodesForArrayOfLocalIdentifiers:identifiersCopy inGraph:self];
  personNodeByLocalIdentifier = [v5 personNodeByLocalIdentifier];
  v7 = [v5 count];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = identifiersCopy;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [personNodeByLocalIdentifier objectForKeyedSubscript:{*(*(&v16 + 1) + 8 * i), v16}];
          if (v14)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)enumeratePersonNodesIncludingMe:(BOOL)me withBlock:(id)block
{
  meCopy = me;
  blockCopy = block;
  v7 = blockCopy;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (!meCopy || (v8 = MEMORY[0x277D85DD0], v9 = 3221225472, v10 = __61__PGGraph_People__enumeratePersonNodesIncludingMe_withBlock___block_invoke, v11 = &unk_2788823F0, v12 = blockCopy, v13 = &v14, [(MAGraph *)self enumerateNodesWithLabel:@"Me" domain:300 usingBlock:&v8], v12, !*(v15 + 24)))
  {
    [(MAGraph *)self enumerateNodesWithLabel:@"People" domain:300 usingBlock:v7, v8, v9, v10, v11];
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __61__PGGraph_People__enumeratePersonNodesIncludingMe_withBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (id)favoritedPersonNodesIncludingMe:(BOOL)me
{
  meCopy = me;
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = @"fav";
  v5 = MEMORY[0x277CBEC38];
  v15[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = [(MAGraph *)self nodesForLabel:@"People" domain:300 properties:v6];

  if (meCopy)
  {
    v12 = @"fav";
    v13 = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [(MAGraph *)self nodesForLabel:@"Me" domain:300 properties:v8];

    if ([v9 count])
    {
      v10 = [v7 mutableCopy];
      [v10 unionSet:v9];

      v7 = v10;
    }
  }

  return v7;
}

- (id)personNodesIncludingMe:(BOOL)me
{
  meCopy = me;
  v5 = [(MAGraph *)self nodesForLabel:@"People" domain:300];
  if (meCopy)
  {
    v6 = [(MAGraph *)self nodesForLabel:@"Me" domain:300];
    if ([v6 count])
    {
      v7 = [v5 mutableCopy];
      [v7 unionSet:v6];

      v5 = v7;
    }
  }

  return v5;
}

- (unint64_t)numberOfPersonNodesIncludingMe:(BOOL)me
{
  meCopy = me;
  v5 = [(MAGraph *)self nodesCountForLabel:@"People" domain:300];
  if (meCopy)
  {
    v5 += [(MAGraph *)self nodesCountForLabel:@"Me" domain:300];
  }

  return v5;
}

- (id)commonSocialGroupNodesForMemberNodes:(id)nodes withThreshold:(double)threshold
{
  nodesCopy = nodes;
  meNode = [(PGGraph *)self meNode];
  v8 = meNode;
  if (meNode)
  {
    collection = [meNode collection];
    v10 = [nodesCopy collectionBySubtracting:collection];

    nodesCopy = v10;
  }

  socialGroupNodes = [nodesCopy socialGroupNodes];
  v12 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__PGGraph_People__commonSocialGroupNodesForMemberNodes_withThreshold___block_invoke;
  v17[3] = &unk_2788823C8;
  thresholdCopy = threshold;
  v18 = nodesCopy;
  v19 = v12;
  v13 = v12;
  v14 = nodesCopy;
  [socialGroupNodes enumerateIdentifiersAsCollectionsWithBlock:v17];
  v15 = [(MAElementCollection *)[PGGraphSocialGroupNodeCollection alloc] initWithGraph:self elementIdentifiers:v13];

  return v15;
}

void __70__PGGraph_People__commonSocialGroupNodesForMemberNodes_withThreshold___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = [a3 memberNodes];
  v5 = [v10 collectionByIntersecting:*(a1 + 32)];
  v6 = [v10 count];
  v7 = [v5 count];
  v8 = vcvtmd_u64_f64(*(a1 + 48) * v6);
  if (v8 <= 2)
  {
    v8 = 2;
  }

  if (v7 >= v8 || v7 == v6)
  {
    [*(a1 + 40) addIdentifier:a2];
  }
}

- (BOOL)isBestPairSocialGroup:(id)group
{
  groupCopy = group;
  [groupCopy importance];
  v6 = v5 == 1.0 && [(PGGraph *)self isPairSocialGroup:groupCopy];

  return v6;
}

- (BOOL)isPairSocialGroup:(id)group
{
  groupCopy = group;
  meNode = [(PGGraph *)self meNode];
  v6 = [groupCopy countOfEdgesWithLabel:@"BELONGSTO" domain:302];

  v7 = 1;
  if (!meNode)
  {
    v7 = 2;
  }

  v8 = v6 == v7;

  return v8;
}

- (BOOL)hasSocialGroups
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__PGGraph_People__hasSocialGroups__block_invoke;
  v4[3] = &unk_2788823A0;
  v4[4] = &v5;
  [(MAGraph *)self enumerateEdgesWithLabel:@"SOCIALGROUP" domain:302 properties:0 usingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __34__PGGraph_People__hasSocialGroups__block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- (id)bestSocialGroupNodes
{
  socialGroupNodesSortedByImportance = [(PGGraph *)self socialGroupNodesSortedByImportance];
  v3 = [socialGroupNodesSortedByImportance count];
  if (v3 >= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = v3;
  }

  v5 = [socialGroupNodesSortedByImportance subarrayWithRange:{0, v4}];

  return v5;
}

- (id)socialGroupNodesSortedByImportance
{
  v2 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:self];
  v3 = +[PGGraphSocialGroupNode importanceSortDescriptors];
  v4 = [v2 sortedArrayUsingDescriptors:v3];

  return v4;
}

- (id)socialGroupNodeForMemberNodes:(id)nodes
{
  v33 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  meNode = [(PGGraph *)self meNode];
  v6 = meNode;
  if (meNode)
  {
    collection = [meNode collection];
    v8 = [nodesCopy collectionBySubtracting:collection];

    nodesCopy = v8;
  }

  socialGroupNodes = [nodesCopy socialGroupNodes];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__28669;
  v27 = __Block_byref_object_dispose__28670;
  v28 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __49__PGGraph_People__socialGroupNodeForMemberNodes___block_invoke;
  v20 = &unk_278882378;
  v10 = nodesCopy;
  v21 = v10;
  v22 = &v23;
  [socialGroupNodes enumerateIdentifiersAsCollectionsWithBlock:&v17];
  v11 = v24[5];
  if (!v11)
  {
    v12 = [PGLogging sharedLogging:v17];
    loggingConnection = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v16 = [v10 set];
      *buf = 136315394;
      v30 = "[PGGraph(People) socialGroupNodeForMemberNodes:]";
      v31 = 2112;
      v32 = v16;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "%s - Cannot find social group for people nodes %@", buf, 0x16u);
    }

    v11 = v24[5];
  }

  v14 = v11;

  _Block_object_dispose(&v23, 8);

  return v14;
}

void __49__PGGraph_People__socialGroupNodeForMemberNodes___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [v9 memberNodes];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (id)inferMeNodeFromSocialGroups
{
  v23 = *MEMORY[0x277D85DE8];
  [(PGGraph *)self libraryDuration];
  v4 = v3;
  if (v3 >= 15552000.0)
  {
    v8 = objc_opt_new();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__PGGraph_People__inferMeNodeFromSocialGroups__block_invoke;
    v15[3] = &unk_278885AB8;
    loggingConnection2 = v8;
    v16 = loggingConnection2;
    [(PGGraph *)self enumerateSocialGroupsIncludingMeNode:1 socialGroupsVersion:0 simulateMeNodeNotSet:0 validGroupsBlock:v15 invalidGroupsBlock:0 averageWeight:0];
    v9 = [(PGGraph *)self _countOfDistinctSocialGroups:loggingConnection2];
    if (v9 > 2)
    {
      v7 = [(PGGraph *)self _personNodeIntersectingSocialGroups:loggingConnection2];
    }

    else
    {
      v10 = v9;
      v11 = +[PGLogging sharedLogging];
      loggingConnection = [v11 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        v13 = [loggingConnection2 count];
        *buf = 134218496;
        v18 = v13;
        v19 = 2048;
        v20 = v10;
        v21 = 2048;
        v22 = 3;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Can't suggest Me Person: Not enough distinct social groups (%lu social groups, %lu distinct < %lu)", buf, 0x20u);
      }

      v7 = 0;
    }
  }

  else
  {
    v5 = +[PGLogging sharedLogging];
    loggingConnection2 = [v5 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v18 = *&v4;
      v19 = 2048;
      v20 = 0x416DA9C000000000;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "Can't suggest Me Person: Library time interval too small (%.2f < %.2f)", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

void __46__PGGraph_People__inferMeNodeFromSocialGroups__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB98] setWithArray:a2];
  [v2 addObject:v3];
}

- (id)meNodeWithFallbackInferredMeNode
{
  meNode = [(PGGraph *)self meNode];
  localIdentifier = [meNode localIdentifier];
  if ([localIdentifier length])
  {
    inferredPersonNode = meNode;
  }

  else
  {
    inferredPersonNode = [meNode inferredPersonNode];
  }

  v5 = inferredPersonNode;

  return v5;
}

+ (id)socialGroupMemberSortDescriptorForSocialGroupNode:(id)node
{
  nodeCopy = node;
  v4 = MEMORY[0x277CCAC98];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__PGGraph_People__socialGroupMemberSortDescriptorForSocialGroupNode___block_invoke;
  v8[3] = &unk_278882350;
  v9 = nodeCopy;
  v5 = nodeCopy;
  v6 = [v4 sortDescriptorWithKey:@"self" ascending:0 comparator:v8];

  return v6;
}

uint64_t __69__PGGraph_People__socialGroupMemberSortDescriptorForSocialGroupNode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 anyEdgeTowardNode:*(a1 + 32)];
  [v7 importance];
  v9 = v8;

  v10 = [v6 anyEdgeTowardNode:*(a1 + 32)];
  [v10 importance];
  v12 = v11;

  if (v9 < v12)
  {
    goto LABEL_2;
  }

  if (v9 > v12)
  {
LABEL_4:
    v13 = 1;
    goto LABEL_5;
  }

  v15 = [v5 edgesCount];
  v16 = [v6 edgesCount];
  if (v15 >= v16)
  {
    if (v15 <= v16)
    {
      v17 = [v5 localIdentifier];
      v18 = [v6 localIdentifier];
      v13 = [v17 compare:v18];

      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_2:
  v13 = -1;
LABEL_5:

  return v13;
}

- (id)staticGraphSchema
{
  v2 = objc_alloc_init(MEMORY[0x277D22C48]);
  v123 = [v2 nodeSchemeWithLabel:@"Info" domain:1];
  v3 = [v2 nodeSchemeWithLabel:@"Moment" domain:100];
  v4 = [v2 nodeSchemeWithLabel:@"Highlight" domain:102];
  v5 = [v2 nodeSchemeWithLabel:@"HighlightGroup" domain:102];
  v120 = [v2 nodeSchemeWithLabel:0 domain:103];
  v6 = [v2 nodeSchemeWithLabel:@"Address" domain:200];
  v7 = [v2 nodeSchemeWithLabel:@"Number" domain:200];
  v8 = [v2 nodeSchemeWithLabel:@"Street" domain:200];
  v9 = [v2 nodeSchemeWithLabel:@"District" domain:200];
  v136 = [v2 nodeSchemeWithLabel:@"City" domain:200];
  v171 = [v2 nodeSchemeWithLabel:@"County" domain:200];
  v170 = [v2 nodeSchemeWithLabel:@"State" domain:200];
  v135 = [v2 nodeSchemeWithLabel:@"Country" domain:200];
  v169 = [v2 nodeSchemeWithLabel:@"Language" domain:205];
  v168 = [v2 nodeSchemeWithLabel:@"Area" domain:201];
  v134 = [v2 nodeSchemeWithLabel:@"Home" domain:202];
  v133 = [v2 nodeSchemeWithLabel:@"Work" domain:202];
  v167 = [v2 nodeSchemeWithLabel:0 domain:203];
  v132 = [v2 nodeSchemeWithLabel:@"FrequentLocation" domain:204];
  v130 = [v2 nodeSchemeWithLabel:@"Me" domain:300];
  v126 = [v2 nodeSchemeWithLabel:@"People" domain:300];
  v131 = [v2 nodeSchemeWithLabel:@"SocialGroup" domain:302];
  v127 = [v2 nodeSchemeWithLabel:@"Contact" domain:303];
  v166 = [v2 nodeSchemeWithLabel:0 domain:305];
  v124 = [v2 nodeSchemeWithLabel:@"Date" domain:400];
  v165 = [v2 nodeSchemeWithLabel:@"Day" domain:400];
  v164 = [v2 nodeSchemeWithLabel:@"Month" domain:400];
  v163 = [v2 nodeSchemeWithLabel:@"Year" domain:400];
  v162 = [v2 nodeSchemeWithLabel:@"WeekMonth" domain:400];
  v161 = [v2 nodeSchemeWithLabel:@"WeekYear" domain:400];
  v160 = [v2 nodeSchemeWithLabel:@"Season" domain:400];
  v159 = [v2 nodeSchemeWithLabel:@"Weekend" domain:400];
  v158 = [v2 nodeSchemeWithLabel:@"Weekday" domain:400];
  v125 = [v2 nodeSchemeWithLabel:@"Holiday" domain:401];
  v157 = [v2 nodeSchemeWithLabel:@"PartOfDay" domain:400];
  v156 = [v2 nodeSchemeWithLabel:@"DayOfWeek" domain:400];
  v155 = [v2 nodeSchemeWithLabel:@"Urban" domain:502];
  v154 = [v2 nodeSchemeWithLabel:@"Beach" domain:502];
  v153 = [v2 nodeSchemeWithLabel:@"Water" domain:502];
  v152 = [v2 nodeSchemeWithLabel:@"Nature" domain:502];
  v151 = [v2 nodeSchemeWithLabel:@"Mountain" domain:502];
  v150 = [v2 nodeSchemeWithLabel:@"Restaurant" domain:501];
  v149 = [v2 nodeSchemeWithLabel:@"Nightlife" domain:501];
  v148 = [v2 nodeSchemeWithLabel:@"Travel" domain:501];
  v147 = [v2 nodeSchemeWithLabel:@"Culture" domain:501];
  v146 = [v2 nodeSchemeWithLabel:@"Entertainment" domain:501];
  v145 = [v2 nodeSchemeWithLabel:@"Park" domain:501];
  v144 = [v2 nodeSchemeWithLabel:@"AmusementPark" domain:501];
  v143 = [v2 nodeSchemeWithLabel:@"Museum" domain:501];
  v142 = [v2 nodeSchemeWithLabel:@"Stadium" domain:501];
  v128 = [v2 nodeSchemeWithLabel:@"Business" domain:503];
  v141 = [v2 nodeSchemeWithLabel:0 domain:504];
  v129 = [v2 nodeSchemeWithLabel:@"PublicEvent" domain:900];
  v140 = [v2 nodeSchemeWithLabel:@"Performer" domain:900];
  v139 = [v2 nodeSchemeWithLabel:0 domain:901];
  v138 = [v2 nodeSchemeWithLabel:0 domain:902];
  v137 = [v2 nodeSchemeWithLabel:0 domain:600];
  v10 = objc_opt_class();
  v176[0] = MEMORY[0x277D85DD0];
  v176[1] = 3221225472;
  v176[2] = __36__PGGraph_Schema__staticGraphSchema__block_invoke;
  v176[3] = &unk_278887698;
  v11 = v2;
  v177 = v11;
  [v10 _traverseMeaningLabelsUsingBlock:v176];
  v119 = [v11 edgeSchemeWithLabel:@"NEXT" domain:101 sourceNode:v3 targetNode:v3];
  v122 = v4;
  v118 = [v11 edgeSchemeWithLabel:@"CONTAINS" domain:102 sourceNode:v4 targetNode:v3];
  v121 = v5;
  v117 = [v11 edgeSchemeWithLabel:@"GROUP_CONTAINS" domain:102 sourceNode:v5 targetNode:v4];
  v115 = [v11 edgeSchemeWithLabel:@"HAS_TYPE" domain:103 sourceNode:v5 targetNode:v120];
  v114 = [v11 edgeSchemeWithLabel:@"ADDRESS" domain:200 sourceNode:v3 targetNode:v6];
  v112 = [v11 edgeSchemeWithLabel:@"NUMBER" domain:200 sourceNode:v6 targetNode:v7];
  v111 = [v11 edgeSchemeWithLabel:@"STREET" domain:200 sourceNode:v6 targetNode:v8];
  v110 = [v11 edgeSchemeWithLabel:@"STREET" domain:200 sourceNode:v7 targetNode:v8];
  v109 = [v11 edgeSchemeWithLabel:@"DISTRICT" domain:200 sourceNode:v6 targetNode:v9];
  v108 = [v11 edgeSchemeWithLabel:@"DISTRICT" domain:200 sourceNode:v7 targetNode:v9];
  v107 = [v11 edgeSchemeWithLabel:@"DISTRICT" domain:200 sourceNode:v8 targetNode:v9];
  v106 = [v11 edgeSchemeWithLabel:@"CITY" domain:200 sourceNode:v6 targetNode:v136];
  v105 = [v11 edgeSchemeWithLabel:@"CITY" domain:200 sourceNode:v7 targetNode:v136];
  v104 = [v11 edgeSchemeWithLabel:@"CITY" domain:200 sourceNode:v8 targetNode:v136];
  v102 = [v11 edgeSchemeWithLabel:@"CITY" domain:200 sourceNode:v9 targetNode:v136];
  v101 = [v11 edgeSchemeWithLabel:@"COUNTY" domain:200 sourceNode:v6 targetNode:v171];
  v100 = [v11 edgeSchemeWithLabel:@"COUNTY" domain:200 sourceNode:v7 targetNode:v171];
  v99 = [v11 edgeSchemeWithLabel:@"COUNTY" domain:200 sourceNode:v8 targetNode:v171];
  v98 = [v11 edgeSchemeWithLabel:@"COUNTY" domain:200 sourceNode:v9 targetNode:v171];
  v97 = [v11 edgeSchemeWithLabel:@"COUNTY" domain:200 sourceNode:v136 targetNode:v171];
  v96 = [v11 edgeSchemeWithLabel:@"STATE" domain:200 sourceNode:v6 targetNode:v170];
  v116 = v7;
  v95 = [v11 edgeSchemeWithLabel:@"STATE" domain:200 sourceNode:v7 targetNode:v170];
  v94 = [v11 edgeSchemeWithLabel:@"STATE" domain:200 sourceNode:v8 targetNode:v170];
  v113 = v9;
  v93 = [v11 edgeSchemeWithLabel:@"STATE" domain:200 sourceNode:v9 targetNode:v170];
  v92 = [v11 edgeSchemeWithLabel:@"STATE" domain:200 sourceNode:v136 targetNode:v170];
  v91 = [v11 edgeSchemeWithLabel:@"STATE" domain:200 sourceNode:v171 targetNode:v170];
  v90 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v6 targetNode:v135];
  v89 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v7 targetNode:v135];
  v88 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v8 targetNode:v135];
  v87 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v9 targetNode:v135];
  v86 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v136 targetNode:v135];
  v84 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v171 targetNode:v135];
  v83 = [v11 edgeSchemeWithLabel:@"COUNTRY" domain:200 sourceNode:v170 targetNode:v135];
  v82 = [v11 edgeSchemeWithLabel:@"POPULAR_LANGUAGE" domain:205 sourceNode:v135 targetNode:v169];
  v81 = [v11 edgeSchemeWithLabel:@"AREA" domain:201 sourceNode:v6 targetNode:v168];
  v80 = [v11 edgeSchemeWithLabel:@"IS_HOME_WORK" domain:202 sourceNode:v6 targetNode:v134];
  v103 = v6;
  v79 = [v11 edgeSchemeWithLabel:@"IS_HOME_WORK" domain:202 sourceNode:v6 targetNode:v133];
  v78 = [v11 edgeSchemeWithLabel:@"IS_OWNED_BY" domain:202 sourceNode:v134 targetNode:v126];
  v77 = [v11 edgeSchemeWithLabel:@"IS_OWNED_BY" domain:202 sourceNode:v133 targetNode:v126];
  v76 = [v11 edgeSchemeWithLabel:@"IS_OWNED_BY" domain:202 sourceNode:v134 targetNode:v130];
  v75 = [v11 edgeSchemeWithLabel:@"IS_OWNED_BY" domain:202 sourceNode:v133 targetNode:v130];
  v74 = [v11 edgeSchemeWithLabel:@"MOBILITY" domain:203 sourceNode:v3 targetNode:v167];
  v73 = [v11 edgeSchemeWithLabel:@"IN" domain:204 sourceNode:v3 targetNode:v132];
  v72 = [v11 edgeSchemeWithLabel:@"AT" domain:204 sourceNode:v132 targetNode:v6];
  v71 = [v11 edgeSchemeWithLabel:@"PRESENT" domain:300 sourceNode:v126 targetNode:v3];
  v70 = [v11 edgeSchemeWithLabel:@"PRESENT" domain:300 sourceNode:v130 targetNode:v3];
  v69 = [v11 edgeSchemeWithLabel:@"FAMILY" domain:300 sourceNode:v130 targetNode:v126];
  v68 = [v11 edgeSchemeWithLabel:@"CHILD" domain:300 sourceNode:v130 targetNode:v126];
  v67 = [v11 edgeSchemeWithLabel:@"PARENT" domain:300 sourceNode:v130 targetNode:v126];
  v66 = [v11 edgeSchemeWithLabel:@"FRIEND" domain:300 sourceNode:v130 targetNode:v126];
  v65 = [v11 edgeSchemeWithLabel:@"PARTNER" domain:300 sourceNode:v130 targetNode:v126];
  v64 = [v11 edgeSchemeWithLabel:@"VIP" domain:300 sourceNode:v130 targetNode:v126];
  v63 = [v11 edgeSchemeWithLabel:@"COWORKER" domain:300 sourceNode:v130 targetNode:v126];
  v62 = [v11 edgeSchemeWithLabel:@"BELONGSTO" domain:302 sourceNode:v126 targetNode:v131];
  v61 = [v11 edgeSchemeWithLabel:@"SOCIALGROUP" domain:302 sourceNode:v3 targetNode:v131];
  v60 = [v11 edgeSchemeWithLabel:@"FAMILY_SOCIALGROUP" domain:302 sourceNode:v130 targetNode:v131];
  v59 = [v11 edgeSchemeWithLabel:@"COWORKER_SOCIALGROUP" domain:302 sourceNode:v130 targetNode:v131];
  v58 = [v11 edgeSchemeWithLabel:@"BIRTHDAY" domain:301 sourceNode:v3 targetNode:v126];
  v57 = [v11 edgeSchemeWithLabel:@"ANNIVERSARY" domain:301 sourceNode:v3 targetNode:v126];
  v56 = [v11 edgeSchemeWithLabel:@"BIRTHDAY" domain:301 sourceNode:v3 targetNode:v130];
  v55 = [v11 edgeSchemeWithLabel:@"ANNIVERSARY" domain:301 sourceNode:v3 targetNode:v130];
  v54 = [v11 edgeSchemeWithLabel:@"PEOPLE_CONTACT_SUGGESTION" domain:303 sourceNode:v126 targetNode:v127];
  v53 = [v11 edgeSchemeWithLabel:@"PEOPLE_CONTACT_SUGGESTION" domain:303 sourceNode:v130 targetNode:v127];
  v52 = [v11 edgeSchemeWithLabel:@"RELATIONSHIP_TAG" domain:305 sourceNode:v126 targetNode:v166];
  v51 = [v11 edgeSchemeWithLabel:@"DATE" domain:400 sourceNode:v3 targetNode:v124];
  v50 = [v11 edgeSchemeWithLabel:@"DAY" domain:400 sourceNode:v124 targetNode:v165];
  v49 = [v11 edgeSchemeWithLabel:@"MONTH" domain:400 sourceNode:v124 targetNode:v164];
  v48 = [v11 edgeSchemeWithLabel:@"YEAR" domain:400 sourceNode:v124 targetNode:v163];
  v47 = [v11 edgeSchemeWithLabel:@"WEEKMONTH" domain:400 sourceNode:v124 targetNode:v162];
  v46 = [v11 edgeSchemeWithLabel:@"WEEKYEAR" domain:400 sourceNode:v124 targetNode:v161];
  v45 = [v11 edgeSchemeWithLabel:@"SEASON" domain:400 sourceNode:v124 targetNode:v160];
  v44 = [v11 edgeSchemeWithLabel:@"PARTOFWEEK" domain:400 sourceNode:v3 targetNode:v159];
  v43 = [v11 edgeSchemeWithLabel:@"PARTOFWEEK" domain:400 sourceNode:v3 targetNode:v158];
  v42 = [v11 edgeSchemeWithLabel:@"CELEBRATING" domain:401 sourceNode:v3 targetNode:v125];
  v41 = [v11 edgeSchemeWithLabel:@"HOLIDAY" domain:401 sourceNode:v124 targetNode:v125];
  v40 = [v11 edgeSchemeWithLabel:@"PARTOFDAY" domain:400 sourceNode:v3 targetNode:v157];
  v39 = [v11 edgeSchemeWithLabel:@"DAYOFWEEK" domain:400 sourceNode:v124 targetNode:v156];
  v38 = [v11 edgeSchemeWithLabel:@"ROI" domain:502 sourceNode:v3 targetNode:v155];
  v37 = [v11 edgeSchemeWithLabel:@"ROI" domain:502 sourceNode:v3 targetNode:v154];
  v36 = [v11 edgeSchemeWithLabel:@"ROI" domain:502 sourceNode:v3 targetNode:v153];
  v35 = [v11 edgeSchemeWithLabel:@"ROI" domain:502 sourceNode:v3 targetNode:v152];
  v34 = [v11 edgeSchemeWithLabel:@"ROI" domain:502 sourceNode:v3 targetNode:v151];
  v33 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v150];
  v32 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v149];
  v31 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v148];
  v30 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v147];
  v29 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v146];
  v28 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v145];
  v27 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v144];
  v26 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v143];
  v25 = [v11 edgeSchemeWithLabel:@"POI" domain:501 sourceNode:v3 targetNode:v142];
  v24 = [v11 edgeSchemeWithLabel:@"BUSINESS" domain:503 sourceNode:v3 targetNode:v128];
  v23 = [v11 edgeSchemeWithLabel:@"BUSINESSCATEGORY" domain:504 sourceNode:v128 targetNode:v141];
  v12 = [v11 edgeSchemeWithLabel:@"PUBLIC_EVENT" domain:900 sourceNode:v3 targetNode:v129];
  v13 = [v11 edgeSchemeWithLabel:@"PERFORMER" domain:900 sourceNode:v129 targetNode:v140];
  v14 = [v11 edgeSchemeWithLabel:@"CATEGORY" domain:901 sourceNode:v129 targetNode:v139];
  v15 = [v11 edgeSchemeWithLabel:@"LOCALIZED_SUBCATEGORY" domain:900 sourceNode:v129 targetNode:v138];
  v16 = [v11 edgeSchemeWithLabel:@"PUBLIC_EVENT_BUSINESS" domain:900 sourceNode:v129 targetNode:v128];
  v17 = [v11 edgeSchemeWithLabel:@"SCENE" domain:600 sourceNode:v3 targetNode:v137];
  v18 = objc_opt_class();
  v172[0] = MEMORY[0x277D85DD0];
  v172[1] = 3221225472;
  v172[2] = __36__PGGraph_Schema__staticGraphSchema__block_invoke_2;
  v172[3] = &unk_278882B00;
  v19 = v11;
  v173 = v19;
  v174 = v3;
  selfCopy = self;
  v20 = v3;
  [v18 _traverseMeaningLabelsUsingBlock:v172];
  v21 = v19;

  return v19;
}

void __36__PGGraph_Schema__staticGraphSchema__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) nodeSchemeWithLabel:a2 domain:700];
}

void __36__PGGraph_Schema__staticGraphSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) nodesForLabel:v3 domain:700];
  v5 = [v4 anyObject];

  if (v5)
  {
    v6 = [*(a1 + 32) edgeSchemeWithLabel:@"MEANING" domain:700 sourceNode:*(a1 + 40) targetNode:v5];
    v7 = [objc_opt_class() parentMeaningLabelForMeaningLabel:v3];
    if (v7)
    {
      v8 = [*(a1 + 32) nodesForLabel:v7 domain:700];
      v9 = [v8 anyObject];

      if (v9)
      {
        [*(a1 + 32) edgeSchemeWithLabel:@"SUBMEANING_OF" domain:700 sourceNode:v5 targetNode:v9];
      }

      else
      {
        v11 = +[PGLogging sharedLogging];
        v12 = [v11 loggingConnection];

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = 138412290;
          v14 = v3;
          _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "Cannot find meaning node for meaning %@", &v13, 0xCu);
        }
      }
    }
  }

  else
  {
    v10 = +[PGLogging sharedLogging];
    v6 = [v10 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "Cannot find meaning node for meaning %@", &v13, 0xCu);
    }
  }
}

+ (id)_meaningLabelTree
{
  v18[5] = *MEMORY[0x277D85DE8];
  v17[0] = @"Activity";
  v2 = MEMORY[0x277CBEC10];
  v15[0] = @"Hiking";
  v15[1] = @"Climbing";
  v16[0] = MEMORY[0x277CBEC10];
  v16[1] = MEMORY[0x277CBEC10];
  v15[2] = @"Beaching";
  v15[3] = @"Diving";
  v16[2] = MEMORY[0x277CBEC10];
  v16[3] = MEMORY[0x277CBEC10];
  v15[4] = @"WinterSport";
  v16[4] = MEMORY[0x277CBEC10];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
  v18[0] = v3;
  v17[1] = @"Entertainment";
  v13[0] = @"AmusementPark";
  v13[1] = @"SportEvent";
  v14[0] = v2;
  v14[1] = v2;
  v13[2] = @"Performance";
  v13[3] = @"Concert";
  v14[2] = v2;
  v14[3] = v2;
  v13[4] = @"Festival";
  v13[5] = @"NightOut";
  v14[4] = v2;
  v14[5] = v2;
  v13[6] = @"Museum";
  v13[7] = @"Theater";
  v14[6] = v2;
  v14[7] = v2;
  v13[8] = @"Dance";
  v14[8] = v2;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:9];
  v18[1] = v4;
  v17[2] = @"Celebration";
  v11[0] = @"Birthday";
  v11[1] = @"Anniversary";
  v12[0] = v2;
  v12[1] = v2;
  v11[2] = @"Wedding";
  v11[3] = @"HolidayEvent";
  v12[2] = v2;
  v12[3] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v18[2] = v5;
  v17[3] = @"Restaurant";
  v9[0] = @"Breakfast";
  v9[1] = @"Lunch";
  v10[0] = v2;
  v10[1] = v2;
  v9[2] = @"Dinner";
  v10[2] = v2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v17[4] = @"Gathering";
  v18[3] = v6;
  v18[4] = v2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];

  return v7;
}

+ (void)_traverseMeaningLabelsInTree:(id)tree usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__PGGraph_Schema___traverseMeaningLabelsInTree_usingBlock___block_invoke;
  v8[3] = &unk_278882B50;
  v9 = blockCopy;
  selfCopy = self;
  v7 = blockCopy;
  [tree enumerateKeysAndObjectsUsingBlock:v8];
}

void __59__PGGraph_Schema___traverseMeaningLabelsInTree_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  (*(*(a1 + 32) + 16))();
  *a4 = 0;
  if ([v6 count])
  {
    [*(a1 + 40) _traverseMeaningLabelsInTree:v6 usingBlock:*(a1 + 32)];
  }
}

+ (void)_traverseMeaningLabelsUsingBlock:(id)block
{
  blockCopy = block;
  _meaningLabelTree = [self _meaningLabelTree];
  [self _traverseMeaningLabelsInTree:_meaningLabelTree usingBlock:blockCopy];
}

+ (id)_findParentMeaningLabelForMeaningLabel:(id)label inTree:(id)tree currentParent:(id)parent
{
  labelCopy = label;
  treeCopy = tree;
  parentCopy = parent;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__30964;
  v24 = __Block_byref_object_dispose__30965;
  v25 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__PGGraph_Schema___findParentMeaningLabelForMeaningLabel_inTree_currentParent___block_invoke;
  v15[3] = &unk_278882B28;
  v11 = labelCopy;
  v16 = v11;
  v18 = &v20;
  v12 = parentCopy;
  v17 = v12;
  selfCopy = self;
  [treeCopy enumerateKeysAndObjectsUsingBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __79__PGGraph_Schema___findParentMeaningLabelForMeaningLabel_inTree_currentParent___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  if ([v13 isEqualToString:*(a1 + 32)])
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = *(a1 + 40);
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = [*(a1 + 56) _findParentMeaningLabelForMeaningLabel:*(a1 + 32) inTree:v7 currentParent:v13];
    v12 = *(*(a1 + 48) + 8);
    v10 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

+ (id)parentMeaningLabelForMeaningLabel:(id)label
{
  labelCopy = label;
  _meaningLabelTree = [self _meaningLabelTree];
  v6 = [self _findParentMeaningLabelForMeaningLabel:labelCopy inTree:_meaningLabelTree currentParent:0];

  return v6;
}

+ (void)traverseParentMeaningsForMeaningLabel:(id)label usingBlock:(id)block
{
  blockCopy = block;
  v7 = [self parentMeaningLabelForMeaningLabel:label];
  if (v7)
  {
    v8 = 0;
    blockCopy[2](blockCopy, v7, &v8);
    if ((v8 & 1) == 0)
    {
      [self traverseParentMeaningsForMeaningLabel:v7 usingBlock:blockCopy];
    }
  }
}

- (id)_createZeroKeywordMappingByMeaningLabel
{
  v23[9] = *MEMORY[0x277D85DE8];
  v23[0] = @"AmusementPark";
  v23[1] = @"Concert";
  v23[2] = @"Festival";
  v23[3] = @"SportEvent";
  v23[4] = @"Museum";
  v23[5] = @"Wedding";
  v23[6] = @"Birthday";
  v23[7] = @"Anniversary";
  v23[8] = @"Restaurant";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:9];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(MAGraph *)self anyNodeForLabel:v9 domain:700 properties:0];
        if (v10)
        {
          v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __58__PGGraph_Search___createZeroKeywordMappingByMeaningLabel__block_invoke;
          v16[3] = &unk_2788877E0;
          v17 = v11;
          v12 = v11;
          [v10 traverseSubmeaningHierarchyUsingBlock:v16];
          v13 = [[PGZeroKeywordMapping alloc] initWithDisplayNode:v10 mappedMeaningNodes:v12];
          [dictionary setObject:v13 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return dictionary;
}

void __58__PGGraph_Search___createZeroKeywordMappingByMeaningLabel__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 label];
  v4 = [v3 isEqualToString:@"HolidayEvent"];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (NSDictionary)zeroKeywordMappingByMeaningLabel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  zeroKeywordMappingByMeaningLabel = selfCopy->_zeroKeywordMappingByMeaningLabel;
  if (!zeroKeywordMappingByMeaningLabel)
  {
    _createZeroKeywordMappingByMeaningLabel = [(PGGraph *)selfCopy _createZeroKeywordMappingByMeaningLabel];
    v5 = selfCopy->_zeroKeywordMappingByMeaningLabel;
    selfCopy->_zeroKeywordMappingByMeaningLabel = _createZeroKeywordMappingByMeaningLabel;

    zeroKeywordMappingByMeaningLabel = selfCopy->_zeroKeywordMappingByMeaningLabel;
  }

  v6 = zeroKeywordMappingByMeaningLabel;
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)nodeLabelForHighlightType:(unsigned __int16)type
{
  if (type > 7u)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_278883EA8[type];
  }

  return v4;
}

- (id)onGoingTripNodes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  onGoingTripHighlightTypeNode = [(PGGraph *)self onGoingTripHighlightTypeNode];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PGGraph_Highlight__onGoingTripNodes__block_invoke;
  v7[3] = &unk_278885850;
  v5 = v3;
  v8 = v5;
  [onGoingTripHighlightTypeNode enumerateNeighborNodesThroughEdgesWithLabel:@"HAS_TYPE" domain:103 usingBlock:v7];

  return v5;
}

- (id)highlightGroupNodesSortedByDate
{
  v9[3] = *MEMORY[0x277D85DE8];
  highlightGroupNodes = [(PGGraph *)self highlightGroupNodes];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v3}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];

  v7 = [highlightGroupNodes sortedArrayUsingDescriptors:v6];

  return v7;
}

- (id)dayHighlightNodesSortedByDate
{
  v9[3] = *MEMORY[0x277D85DE8];
  dayHighlightNodes = [(PGGraph *)self dayHighlightNodes];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v3}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];

  v7 = [dayHighlightNodes sortedArrayUsingDescriptors:v6];

  return v7;
}

- (id)dayHighlightNodes
{
  v2 = [PGGraphHighlightNodeCollection dayHighlightNodesInGraph:self];
  temporarySet = [v2 temporarySet];

  return temporarySet;
}

- (id)defaultHighlightNodes
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dayHighlightNodes = [(PGGraph *)self dayHighlightNodes];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [dayHighlightNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(dayHighlightNodes);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 isPartOfTrip] & 1) == 0 && (objc_msgSend(v9, "isPartOfAggregation") & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [dayHighlightNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)aggregationNodes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aggregationHighlightTypeNode = [(PGGraph *)self aggregationHighlightTypeNode];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PGGraph_Highlight__aggregationNodes__block_invoke;
  v7[3] = &unk_278885850;
  v5 = v3;
  v8 = v5;
  [aggregationHighlightTypeNode enumerateNeighborNodesThroughEdgesWithLabel:@"HAS_TYPE" domain:103 usingBlock:v7];

  return v5;
}

- (id)allTripNodes
{
  longTripNodes = [(PGGraph *)self longTripNodes];
  shortTripNodes = [(PGGraph *)self shortTripNodes];
  v5 = [longTripNodes arrayByAddingObjectsFromArray:shortTripNodes];

  return v5;
}

- (id)shortTripNodes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  shortTripHighlightTypeNode = [(PGGraph *)self shortTripHighlightTypeNode];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__PGGraph_Highlight__shortTripNodes__block_invoke;
  v7[3] = &unk_278885850;
  v5 = v3;
  v8 = v5;
  [shortTripHighlightTypeNode enumerateNeighborNodesThroughEdgesWithLabel:@"HAS_TYPE" domain:103 usingBlock:v7];

  return v5;
}

- (id)longTripNodes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  longTripHighlightTypeNode = [(PGGraph *)self longTripHighlightTypeNode];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__PGGraph_Highlight__longTripNodes__block_invoke;
  v7[3] = &unk_278885850;
  v5 = v3;
  v8 = v5;
  [longTripHighlightTypeNode enumerateNeighborNodesThroughEdgesWithLabel:@"HAS_TYPE" domain:103 usingBlock:v7];

  return v5;
}

- (id)defaultHighlightTypeNode
{
  v2 = [(MAGraph *)self nodesForLabel:@"Default" domain:103];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (id)onGoingTripHighlightTypeNode
{
  v2 = [(MAGraph *)self nodesForLabel:@"OngoingTrip" domain:103];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (id)aggregationHighlightTypeNode
{
  v2 = [(MAGraph *)self nodesForLabel:@"Aggregation" domain:103];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (id)shortTripHighlightTypeNode
{
  v2 = [(MAGraph *)self nodesForLabel:@"ShortTrip" domain:103];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (id)longTripHighlightTypeNode
{
  v2 = [(MAGraph *)self nodesForLabel:@"LongTrip" domain:103];
  anyObject = [v2 anyObject];

  return anyObject;
}

- (id)meaningfulMomentNodesSortedByDate
{
  v10[3] = *MEMORY[0x277D85DE8];
  meaningfulEvents = [(PGGraph *)self meaningfulEvents];
  allObjects = [meaningfulEvents allObjects];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v4}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  v8 = [allObjects sortedArrayUsingDescriptors:v7];

  return v8;
}

- (id)momentNodesSortedByDateFromMomentNodes:(id)nodes
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC98];
  nodesCopy = nodes;
  v5 = [v3 sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v5}];
  v11[1] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

  v9 = [nodesCopy sortedArrayUsingDescriptors:v8];

  return v9;
}

- (id)momentNodesSortedByDate
{
  v10[3] = *MEMORY[0x277D85DE8];
  momentNodes = [(PGGraph *)self momentNodes];
  v3 = [momentNodes set];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v4}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  v8 = [v3 sortedArrayUsingDescriptors:v7];

  return v8;
}

- (id)interestingAreaNodes
{
  v59 = *MEMORY[0x277D85DE8];
  [(PGGraph *)self _checkCanRead];
  v2 = MEMORY[0x277D86220];
  v3 = MEMORY[0x277D86220];
  v4 = os_signpost_id_generate(v2);
  v5 = v2;
  spid = v4;
  v39 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v4, "InterestingAreaNodes", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v36 = mach_absolute_time();
  context = objc_autoreleasePoolPush();
  supersetCityNodes = [(PGGraph *)self supersetCityNodes];
  addressNodes = [supersetCityNodes addressNodes];
  v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
  v8 = +[PGGraphAreaNode nonBlockedFilter];
  v9 = [(MANodeCollection *)PGGraphAreaNodeCollection nodesMatchingFilter:v8 inGraph:self];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v58 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __43__PGGraph_Processing__interestingAreaNodes__block_invoke;
  v50[3] = &unk_2788862D8;
  v10 = addressNodes;
  v51 = v10;
  v53 = buf;
  v11 = v7;
  v52 = v11;
  [v9 enumerateIdentifiersAsCollectionsWithBlock:v50];
  v12 = [v11 count];
  if (v12)
  {
    *(*&buf[8] + 24) = *(*&buf[8] + 24) / v12;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    objectEnumerator = [v11 objectEnumerator];
    v14 = [objectEnumerator countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v14)
    {
      v15 = *v47;
      v16 = 0.0;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v46 + 1) + 8 * i) doubleValue];
          v16 = v16 + (v18 - *(*&buf[8] + 24)) * (v18 - *(*&buf[8] + 24));
        }

        v14 = [objectEnumerator countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 0.0;
    }

    v20 = [v11 count];
    v21 = *(*&buf[8] + 24);
    v22 = objc_alloc_init(MEMORY[0x277D22BD0]);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    keyEnumerator = [v11 keyEnumerator];
    v24 = [keyEnumerator countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v24)
    {
      v25 = v21 + sqrt(v16 / v20) * 0.5;
      v26 = *v43;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v28 = *(*(&v42 + 1) + 8 * j);
          v29 = [v11 objectForKey:{v28, v36}];
          [v29 doubleValue];
          if (v30 >= v25)
          {
            [v22 addIdentifier:{objc_msgSend(v28, "unsignedIntegerValue")}];
          }
        }

        v24 = [keyEnumerator countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v24);
    }

    if ([v22 count])
    {
      v19 = [(MAElementCollection *)[PGGraphAreaNodeCollection alloc] initWithGraph:self elementIdentifiers:v22];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(context);
  v31 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v34 = MEMORY[0x277D86220];
  if (v39 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, spid, "InterestingAreaNodes", "", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "InterestingAreaNodes";
    *&buf[12] = 2048;
    *&buf[14] = ((((v31 - v36) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  if (!v19)
  {
    v19 = [(MAElementCollection *)[PGGraphAreaNodeCollection alloc] initWithGraph:self];
  }

  return v19;
}

void __43__PGGraph_Processing__interestingAreaNodes__block_invoke(void *a1, uint64_t a2, void *a3)
{
  v16 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v16 addressNodes];
  v7 = [v6 collectionBySubtracting:a1[4]];
  v8 = [v7 momentNodes];
  v9 = [v8 count];
  if (v9 >= 3)
  {
    v10 = v9;
    v11 = [v8 universalDateInterval];
    [v11 duration];
    if (v12 >= 7776000.0)
    {
      *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + v10;
      v13 = a1[5];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
      [v13 setObject:v14 forKey:v15];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (id)interestingCityNodes
{
  v25 = *MEMORY[0x277D85DE8];
  [(PGGraph *)self _checkCanRead];
  supersets = [(PGGraph *)self supersets];
  objc_sync_enter(supersets);
  interestingCityNodes = self->_interestingCityNodes;
  if (!interestingCityNodes)
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
    v7 = os_signpost_id_generate(v5);
    v8 = v5;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v7, "InterestingCityNodes", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v9 = mach_absolute_time();
    v10 = objc_autoreleasePoolPush();
    mainUrbanCityNodes = [(PGGraph *)self mainUrbanCityNodes];
    supersetCityNodes = [(PGGraph *)self supersetCityNodes];
    v13 = [mainUrbanCityNodes collectionBySubtracting:supersetCityNodes];
    v14 = self->_interestingCityNodes;
    self->_interestingCityNodes = v13;

    objc_autoreleasePoolPop(v10);
    v15 = mach_absolute_time();
    v16 = info;
    v17 = MEMORY[0x277D86220];
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v7, "InterestingCityNodes", "", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "InterestingCityNodes";
      v23 = 2048;
      v24 = ((((v15 - v9) * v16.numer) / v16.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    interestingCityNodes = self->_interestingCityNodes;
  }

  v18 = interestingCityNodes;
  objc_sync_exit(supersets);

  return v18;
}

- (id)mainUrbanCityNodes
{
  v31 = *MEMORY[0x277D85DE8];
  [(PGGraph *)self _checkCanRead];
  v3 = objc_alloc_init(MEMORY[0x277D22BD0]);
  v4 = MEMORY[0x277D86220];
  v5 = MEMORY[0x277D86220];
  v6 = os_signpost_id_generate(v4);
  v7 = v4;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v6, "MainUrbanCityNodes", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v22 = mach_absolute_time();
  v8 = objc_autoreleasePoolPush();
  v9 = +[PGGraphROINode urbanFilter];
  v10 = [(MANodeCollection *)PGGraphROINodeCollection nodesMatchingFilter:v9 inGraph:self];

  momentNodes = [v10 momentNodes];
  v12 = +[PGGraphLocationCityNode filter];
  v13 = [(MANodeCollection *)PGGraphLocationCityNodeCollection nodesMatchingFilter:v12 inGraph:self];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __41__PGGraph_Processing__mainUrbanCityNodes__block_invoke;
  v23[3] = &unk_2788862B0;
  v24 = momentNodes;
  v14 = v3;
  v25 = v14;
  v15 = momentNodes;
  [v13 enumerateIdentifiersAsCollectionsWithBlock:v23];

  objc_autoreleasePoolPop(v8);
  v16 = mach_absolute_time();
  v17 = info;
  v18 = v4;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v6, "MainUrbanCityNodes", "", buf, 2u);
  }

  v19 = MEMORY[0x277D86220];

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "MainUrbanCityNodes";
    v29 = 2048;
    v30 = ((((v16 - v22) * v17.numer) / v17.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v20 = [(MAElementCollection *)[PGGraphLocationCityNodeCollection alloc] initWithGraph:self elementIdentifiers:v14];

  return v20;
}

void __41__PGGraph_Processing__mainUrbanCityNodes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = [a3 momentNodes];
  v5 = [v8 collectionByIntersecting:*(a1 + 32)];
  if ([v5 count] >= 3)
  {
    v6 = [v5 universalDateInterval];
    [v6 duration];
    if (v7 >= 7776000.0)
    {
      [*(a1 + 40) addIdentifier:a2];
    }
  }
}

- (unint64_t)_cluePeopleForRelationships:(id)relationships
{
  relationshipsCopy = relationships;
  if ([relationshipsCopy containsObject:@"FAMILY"])
  {
    v4 = 1;
  }

  else if ([relationshipsCopy containsObject:@"FRIEND"])
  {
    v4 = 2;
  }

  else if ([relationshipsCopy containsObject:@"PARTNER"])
  {
    v4 = 8;
  }

  else if ([relationshipsCopy containsObject:@"COWORKER"])
  {
    v4 = 16;
  }

  else if ([relationshipsCopy containsObject:@"ACQUAINTANCE"])
  {
    v4 = 32;
  }

  else if ([relationshipsCopy containsObject:@"VIP"])
  {
    v4 = 64;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)inferredUserLocales
{
  supersetCountryNodes = [(PGGraph *)self supersetCountryNodes];
  languageNodes = [supersetCountryNodes languageNodes];
  locales = [languageNodes locales];
  v5 = [locales mutableCopy];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  if (currentLocale)
  {
    [v5 addObject:currentLocale];
  }

  return v5;
}

- (id)celebratedHolidays
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PGGraphNodeCollection *)PGGraphHolidayNodeCollection nodesInGraph:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__PGGraph_Processing__celebratedHolidays__block_invoke;
  v7[3] = &unk_278886278;
  v5 = v3;
  v8 = v5;
  [v4 enumerateIdentifiersAsCollectionsWithBlock:v7];

  return v5;
}

void __41__PGGraph_Processing__celebratedHolidays__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v4 = [a3 celebratingMomentNodes];
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v5}];
    v10[1] = v6;
    v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
    v10[2] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

    v9 = [v4 sortedArrayUsingDescriptors:v8];

    [*(a1 + 32) addObject:v9];
  }
}

- (id)weekends
{
  v22[3] = *MEMORY[0x277D85DE8];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(PGGraph *)self shortTripNodes];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        collection = [*(*(&v17 + 1) + 8 * i) collection];
        momentNodes = [collection momentNodes];
        v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
        v22[0] = v9;
        v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
        v22[1] = v10;
        v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
        v22[2] = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];

        v13 = [momentNodes sortedArrayUsingDescriptors:v12];
        [v16 addObject:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  return v16;
}

- (id)trips
{
  v22[3] = *MEMORY[0x277D85DE8];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(PGGraph *)self longTripNodes];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        collection = [*(*(&v17 + 1) + 8 * i) collection];
        momentNodes = [collection momentNodes];
        v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
        v22[0] = v9;
        v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:1];
        v22[1] = v10;
        v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
        v22[2] = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];

        v13 = [momentNodes sortedArrayUsingDescriptors:v12];
        [v16 addObject:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  return v16;
}

- (PGGraphLocationCountryNodeCollection)supersetCountryNodes
{
  [(PGGraph *)self _checkCanRead];
  os_unfair_lock_lock(&self->_supersetLock);
  supersetCountryNodes = self->_supersetCountryNodes;
  if (!supersetCountryNodes)
  {
    v4 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self];
    addressNodes = [v4 addressNodes];
    countryNodes = [addressNodes countryNodes];
    v7 = self->_supersetCountryNodes;
    self->_supersetCountryNodes = countryNodes;

    supersetCountryNodes = self->_supersetCountryNodes;
  }

  v8 = supersetCountryNodes;
  os_unfair_lock_unlock(&self->_supersetLock);

  return v8;
}

- (PGGraphLocationStateNodeCollection)supersetStateNodes
{
  [(PGGraph *)self _checkCanRead];
  os_unfair_lock_lock(&self->_supersetLock);
  supersetStateNodes = self->_supersetStateNodes;
  if (!supersetStateNodes)
  {
    v4 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self];
    addressNodes = [v4 addressNodes];
    stateNodes = [addressNodes stateNodes];
    v7 = self->_supersetStateNodes;
    self->_supersetStateNodes = stateNodes;

    supersetStateNodes = self->_supersetStateNodes;
  }

  v8 = supersetStateNodes;
  os_unfair_lock_unlock(&self->_supersetLock);

  return v8;
}

- (PGGraphLocationCountyNodeCollection)supersetCountyNodes
{
  [(PGGraph *)self _checkCanRead];
  os_unfair_lock_lock(&self->_supersetLock);
  supersetCountyNodes = self->_supersetCountyNodes;
  if (!supersetCountyNodes)
  {
    v4 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self];
    addressNodes = [v4 addressNodes];
    countyNodes = [addressNodes countyNodes];
    v7 = self->_supersetCountyNodes;
    self->_supersetCountyNodes = countyNodes;

    supersetCountyNodes = self->_supersetCountyNodes;
  }

  v8 = supersetCountyNodes;
  os_unfair_lock_unlock(&self->_supersetLock);

  return v8;
}

- (PGGraphLocationCityNodeCollection)supersetCityNodes
{
  [(PGGraph *)self _checkCanRead];
  os_unfair_lock_lock(&self->_supersetLock);
  supersetCityNodes = self->_supersetCityNodes;
  if (!supersetCityNodes)
  {
    v4 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self];
    addressNodes = [v4 addressNodes];
    cityNodes = [addressNodes cityNodes];
    v7 = self->_supersetCityNodes;
    self->_supersetCityNodes = cityNodes;

    supersetCityNodes = self->_supersetCityNodes;
  }

  v8 = supersetCityNodes;
  os_unfair_lock_unlock(&self->_supersetLock);

  return v8;
}

- (NSSet)supersets
{
  [(PGGraph *)self _checkCanRead];
  v3 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:self];
  temporarySet = [v3 temporarySet];

  return temporarySet;
}

- (BOOL)singlePersonBelongsToSocialGroupOfMaxSize:(id)size groups:(id)groups maxSize:(unint64_t)maxSize
{
  v26 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v8 = MEMORY[0x277CBEB98];
  v9 = [size objectForKeyedSubscript:@"personNodes"];
  v10 = [v8 setWithArray:v9];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = groupsCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = MEMORY[0x277CBEB98];
        v17 = [*(*(&v21 + 1) + 8 * i) objectForKeyedSubscript:{@"personNodes", v21}];
        v18 = [v16 setWithArray:v17];

        if ([v18 count] <= maxSize && objc_msgSend(v10, "isSubsetOfSet:", v18))
        {

          v19 = 1;
          goto LABEL_12;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_12:

  return v19;
}

- (BOOL)singlePersonGroupIsInSocialGroups:(id)groups groups:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277CBEB98];
  v7 = [groups objectForKeyedSubscript:@"personNodes"];
  v8 = [v6 setWithArray:v7];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = MEMORY[0x277CBEB98];
        v15 = [*(*(&v19 + 1) + 8 * i) objectForKeyedSubscript:{@"personNodes", v19}];
        v16 = [v14 setWithArray:v15];

        LOBYTE(v15) = [v16 isEqualToSet:v8];
        if (v15)
        {
          v17 = 1;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (double)longevity:(id)longevity
{
  longevityCopy = longevity;
  if ([longevityCopy count])
  {
    v4 = [longevityCopy sortedArrayUsingComparator:&__block_literal_global_352_54206];
    v5 = 0.0;
    if ([v4 count] >= 2)
    {
      v6 = [v4 objectAtIndexedSubscript:0];
      universalStartDate = [v6 universalStartDate];
      [universalStartDate timeIntervalSince1970];
      v9 = v8;
      lastObject = [v4 lastObject];
      universalStartDate2 = [lastObject universalStartDate];
      [universalStartDate2 timeIntervalSince1970];
      v5 = v9 - v12;
    }
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

uint64_t __33__PGGraph_Processing__longevity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 universalStartDate];
  v6 = [v4 universalEndDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (float)recencyFeature:(double)feature
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v6 = v5;

  date2 = [MEMORY[0x277CBEAA8] date];
  v8 = [date2 dateByAddingTimeInterval:-157680000.0];

  [v8 timeIntervalSince1970];
  *&feature = (feature - v9) / (v6 - v9);

  return *&feature;
}

- (double)averageTopMomentTimes:(id)times numberOfMoments:(unint64_t)moments
{
  timesCopy = times;
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [date dateByAddingTimeInterval:-315360000.0];

  [v7 timeIntervalSince1970];
  v9 = v8;
  v10 = [timesCopy sortedArrayUsingComparator:&__block_literal_global_350];
  v11 = [timesCopy count];
  if (v11 >= moments)
  {
    momentsCopy = moments;
  }

  else
  {
    momentsCopy = v11;
  }

  if (momentsCopy)
  {
    v13 = 0;
    v14 = 0.0;
    do
    {
      v15 = [v10 objectAtIndexedSubscript:v13];
      universalStartDate = [v15 universalStartDate];
      [universalStartDate timeIntervalSince1970];
      v14 = v14 + v17;

      ++v13;
    }

    while (momentsCopy != v13);
    v18 = v14 / momentsCopy;
  }

  else
  {
    v18 = 0.0;
  }

  if (v18 >= v9)
  {
    v9 = v18;
  }

  return v9;
}

uint64_t __61__PGGraph_Processing__averageTopMomentTimes_numberOfMoments___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 universalStartDate];
  v6 = [v4 universalEndDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (float)normalizeFeatureValue:(float)value average:(float)average featureValues:(id)values factor:(float)factor
{
  valuesCopy = values;
  if ([valuesCopy count])
  {
    lastObject = [valuesCopy lastObject];
    [lastObject floatValue];
    v12 = v11;

    v13 = -1.0;
    if (v12 <= value)
    {
      v14 = [valuesCopy objectAtIndexedSubscript:0];
      [v14 floatValue];
      v16 = v15;

      v13 = 1.0;
      if (v16 >= value)
      {
        if (value < average)
        {
          v17 = value - average;
          lastObject2 = [valuesCopy lastObject];
          [lastObject2 floatValue];
          v20 = average - v19;
LABEL_9:
          v13 = (v17 / v20) * factor;

          goto LABEL_10;
        }

        v21 = [valuesCopy objectAtIndexedSubscript:0];
        [v21 floatValue];
        v23 = v22;

        v13 = 0.0;
        if (v23 != average)
        {
          v17 = value - average;
          lastObject2 = [valuesCopy objectAtIndexedSubscript:0];
          [lastObject2 floatValue];
          v20 = v24 - average;
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    v13 = -0.1;
  }

LABEL_10:

  return v13;
}

- (void)enumerateSocialGroupsIncludingMeNode:(BOOL)node socialGroupsVersion:(unint64_t)version simulateMeNodeNotSet:(BOOL)set validGroupsBlock:(id)block invalidGroupsBlock:(id)groupsBlock averageWeight:(float *)weight
{
  nodeCopy = node;
  v391 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  groupsBlockCopy = groupsBlock;
  v12 = os_log_create("com.apple.PhotosGraph", "graph");
  v13 = os_signpost_id_generate(v12);
  v14 = v12;
  v15 = v14;
  spid = v13;
  v287 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SocialGroupsV2", "", buf, 2u);
  }

  v293 = v15;

  info = 0;
  mach_timebase_info(&info);
  v281 = mach_absolute_time();
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (set)
  {
    meNodeCollection = [(MAElementCollection *)[PGGraphMeNodeCollection alloc] initWithGraph:self];
  }

  else
  {
    meNodeCollection = [(PGGraph *)self meNodeCollection];
  }

  v292 = meNodeCollection;

  momentNodes = [(PGGraphPersonNodeCollection *)v292 momentNodes];
  v364 = 0;
  v365 = &v364;
  v366 = 0x2020000000;
  v367 = 0;
  v360 = 0;
  v361 = &v360;
  v362 = 0x2020000000;
  v363 = 0;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v356 = 0;
  v357 = &v356;
  v358 = 0x2020000000;
  v359 = 0;
  v355 = 0;
  v344[0] = MEMORY[0x277D85DD0];
  v344[1] = 3221225472;
  v344[2] = __151__PGGraph_Processing__enumerateSocialGroupsIncludingMeNode_socialGroupsVersion_simulateMeNodeNotSet_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke;
  v344[3] = &unk_278886230;
  v351 = &v356;
  v352 = &v364;
  v353 = &v360;
  versionCopy = version;
  v290 = v19;
  v345 = v290;
  v289 = v20;
  v346 = v289;
  v286 = v21;
  v347 = v286;
  v285 = momentNodes;
  v348 = v285;
  v304 = groupsBlockCopy;
  v350 = v304;
  v291 = v16;
  v349 = v291;
  [(PGGraph *)self enumeratePeopleClustersIncludingMeNode:nodeCopy socialGroupsVersion:version singlePersonGroups:&v355 withBlock:v344];
  v284 = v355;
  v288 = [MEMORY[0x277CBEB18] arrayWithArray:?];
  if (v357[3])
  {
    v22 = MEMORY[0x277D86220];
    v23 = MEMORY[0x277D86220];
    v24 = os_signpost_id_generate(v22);
    v25 = v22;
    v279 = v24;
    v280 = v24 - 1;
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v24, "CandidatesValidation", "", buf, 2u);
    }

    v343 = 0;
    mach_timebase_info(&v343);
    v278 = mach_absolute_time();
    v365[6] = v365[6] / v357[3];
    v318 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v317 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (version == 1)
    {
      v26 = [v290 sortedArrayUsingComparator:&__block_literal_global_338_54219];
      v27 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v26];
      [v27 mean];
      v29 = v28;
      [v27 standardDeviation];
      v31 = v30;
      v341 = 0u;
      v342 = 0u;
      v339 = 0u;
      v340 = 0u;
      v32 = v26;
      v33 = [v32 countByEnumeratingWithState:&v339 objects:v386 count:16];
      if (v33)
      {
        v34 = *v340;
        v35 = v29 - v31;
        v36 = v29 + v31;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v340 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v38 = *(*(&v339 + 1) + 8 * i);
            [v38 floatValue];
            if (v39 >= v35)
            {
              [v38 floatValue];
              if (v40 <= v36)
              {
                [v318 addObject:v38];
              }
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v339 objects:v386 count:16];
        }

        while (v33);
      }

      v41 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v318];
      [v41 mean];
      v310 = v42;
      v43 = [v289 sortedArrayUsingComparator:&__block_literal_global_341_54220];
      v44 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v43];
      [v44 mean];
      v46 = v45;
      [v44 standardDeviation];
      v48 = v47;
      v337 = 0u;
      v338 = 0u;
      v335 = 0u;
      v336 = 0u;
      v49 = v43;
      v50 = [v49 countByEnumeratingWithState:&v335 objects:v385 count:16];
      if (v50)
      {
        v51 = *v336;
        v52 = (v46 - v48);
        v53 = (v46 + v48);
        do
        {
          for (j = 0; j != v50; ++j)
          {
            if (*v336 != v51)
            {
              objc_enumerationMutation(v49);
            }

            v55 = *(*(&v335 + 1) + 8 * j);
            [v55 doubleValue];
            if (v56 >= v52)
            {
              [v55 doubleValue];
              if (v57 <= v53)
              {
                [v317 addObject:v55];
              }
            }
          }

          v50 = [v49 countByEnumeratingWithState:&v335 objects:v385 count:16];
        }

        while (v50);
      }

      v58 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:v317];
      [v58 mean];
      v309 = v59;
      v60 = v357[3];
      if (v60 <= 0x4F)
      {
        v295 = ((v60 / 80.0) * 0.48) + -0.65;
        v66 = vcvtps_u32_f32((v60 * 0.15) + 6.0);
        if (v66 <= 7)
        {
          v66 = 7;
        }

        v296 = v66;
      }

      else
      {
        v296 = 18;
        v295 = -0.17;
      }
    }

    else
    {
      v296 = 0;
      v309 = 0;
      v310 = 0;
      v295 = 0.0;
    }

    v308 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v298 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v294 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v299 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v302 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v297 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v333 = 0u;
    v334 = 0u;
    v331 = 0u;
    v332 = 0u;
    obj = v291;
    v67 = [obj countByEnumeratingWithState:&v331 objects:v384 count:16];
    if (v67)
    {
      v311 = *v332;
      do
      {
        v68 = 0;
        v315 = v67;
        do
        {
          if (*v332 != v311)
          {
            objc_enumerationMutation(obj);
          }

          v69 = *(*(&v331 + 1) + 8 * v68);
          context = objc_autoreleasePoolPush();
          v70 = [v69 objectForKeyedSubscript:@"isSubset"];
          bOOLValue = [v70 BOOLValue];

          v72 = [v69 objectForKeyedSubscript:@"personNodes"];
          v73 = [v69 objectForKeyedSubscript:@"peopleWeights"];
          v74 = [v69 objectForKeyedSubscript:@"momentNodes"];
          v75 = [v69 objectForKeyedSubscript:@"frequency"];
          [v75 floatValue];
          v77 = v76;

          v78 = [v69 objectForKeyedSubscript:@"longevity"];
          [v78 floatValue];
          v80 = v79;

          v81 = v72;
          v82 = v73;
          v83 = v74;
          v84 = 0;
          v85 = 0.0;
          while (v84 < [v81 count])
          {
            v86 = [v81 objectAtIndexedSubscript:v84];
            v87 = [v82 objectAtIndexedSubscript:v84];
            [v87 doubleValue];
            v89 = v88;

            numberOfMomentNodes = [v86 numberOfMomentNodes];
            if (numberOfMomentNodes)
            {
              v91 = [v83 count];
              v92 = -(v91 * v89 - numberOfMomentNodes);
              if (-(numberOfMomentNodes - v91 * v89) >= 0.0)
              {
                v92 = -(numberOfMomentNodes - v91 * v89);
              }

              v93 = v92 / numberOfMomentNodes;
            }

            else
            {
              v93 = 0.0;
            }

            v85 = v85 + v93;
            ++v84;
          }

          v94 = [v81 count];

          v95 = 1.0 - v85 / v94;
          v96 = v77 / v361[6];
          if (version == 1)
          {
            *&v97 = [v83 count];
            LODWORD(v98) = v310;
            LODWORD(v99) = 1060320051;
            [(PGGraph *)self normalizeFeatureValue:v318 average:v97 featureValues:v98 factor:v99];
            v101 = v100;
            LODWORD(v102) = v80;
            LODWORD(v103) = v309;
            LODWORD(v104) = 1060320051;
            [(PGGraph *)self normalizeFeatureValue:v317 average:v102 featureValues:v103 factor:v104];
            v106 = v105;
            [(PGGraph *)self averageTopMomentTimes:v83 numberOfMoments:5];
            [(PGGraph *)self recencyFeature:?];
            v108 = v107;
            v109 = v82;
            v369 = 0u;
            v370 = 0u;
            v371 = 0u;
            v372 = 0u;
            v110 = v109;
            v111 = [v110 countByEnumeratingWithState:&v369 objects:buf count:16];
            if (v111)
            {
              v112 = *v370;
              v113 = 0.0;
              do
              {
                for (k = 0; k != v111; ++k)
                {
                  if (*v370 != v112)
                  {
                    objc_enumerationMutation(v110);
                  }

                  [*(*(&v369 + 1) + 8 * k) doubleValue];
                  v113 = v113 + v115;
                }

                v111 = [v110 countByEnumeratingWithState:&v369 objects:buf count:16];
              }

              while (v111);
            }

            else
            {
              v113 = 0.0;
            }

            v119 = [v110 count];
            v120 = v113 / v119 + -0.5 + v113 / v119 + -0.5;
            *&v120 = v120;
            *&v120 = (((v101 + (v108 * 0.0)) + (v106 * 0.0)) + (*&v120 * 0.0)) + 0.0;
            if (*&v120 < 1.0)
            {
              v121 = *&v120;
            }

            else
            {
              v121 = 1.0;
            }

            v382[0] = @"personNodes";
            v382[1] = @"peopleWeights";
            v383[0] = v81;
            v383[1] = v110;
            v383[2] = v83;
            v382[2] = @"momentNodes";
            v382[3] = @"socialGroupWeight";
            *&v120 = v96;
            v122 = [MEMORY[0x277CCABB0] numberWithFloat:v120];
            v383[3] = v122;
            v382[4] = @"groupCohesionScore";
            v123 = [MEMORY[0x277CCABB0] numberWithDouble:v95];
            v383[4] = v123;
            v382[5] = @"recencyFeature";
            *&v124 = v108;
            v125 = [MEMORY[0x277CCABB0] numberWithFloat:v124];
            v383[5] = v125;
            v382[6] = @"longevity";
            LODWORD(v126) = v80;
            v127 = [MEMORY[0x277CCABB0] numberWithFloat:v126];
            v383[6] = v127;
            v382[7] = @"ranking";
            *&v128 = v121;
            v129 = [MEMORY[0x277CCABB0] numberWithFloat:v128];
            v383[7] = v129;
            v130 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v383 forKeys:v382 count:8];
            [v308 addObject:v130];
          }

          else if ((blockCopy == 0) | bOOLValue & 1)
          {
            v116 = (v304 + 16);
            v117 = v304;
            if (v304)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v118 = v95 >= 0.3 || v77 >= v365[6];
            v116 = (blockCopy + 16);
            if (v118)
            {
              v117 = blockCopy;
            }

            else
            {
              v116 = (v304 + 16);
              v117 = v304;
            }

            if (v118 || v304)
            {
LABEL_77:
              (*v116)(v117, v81, v82, v83, v96, v95);
            }
          }

          objc_autoreleasePoolPop(context);
          ++v68;
        }

        while (v68 != v315);
        v67 = [obj countByEnumeratingWithState:&v331 objects:v384 count:16];
      }

      while (v67);
    }

    if (version == 1)
    {
      v303 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"ranking" ascending:0];
      v301 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"momentNodes" ascending:0 comparator:&__block_literal_global_343];
      v300 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personNodes" ascending:1 comparator:&__block_literal_global_345];
      v381[0] = v303;
      v381[1] = v301;
      v381[2] = v300;
      v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v381 count:3];
      [v308 sortUsingDescriptors:v131];

      v132 = 0;
      obja = 0;
      while (v132 < [v308 count])
      {
        v133 = [v308 objectAtIndexedSubscript:v132];
        v134 = [v133 objectForKeyedSubscript:@"momentNodes"];
        v135 = [v133 objectForKeyedSubscript:@"personNodes"];
        v136 = [v133 objectForKeyedSubscript:@"ranking"];
        [v136 floatValue];
        v138 = v137;

        v139 = [v133 objectForKeyedSubscript:@"longevity"];
        [v139 floatValue];
        v141 = v140;

        v142 = [v134 count];
        LODWORD(v143) = v141;
        if ([(PGGraph *)self isSocialGroupEligible:v142 longevity:v143])
        {
          if (v138 < v295 || v132 >= v296)
          {
            [v298 addObject:v133];
          }

          else
          {
            [v294 addObject:v133];
            v144 = [v135 count];
            v145 = obja;
            if (v144 == 1)
            {
              v145 = obja + 1;
            }

            obja = v145;
          }
        }

        ++v132;
      }

      v380[0] = v303;
      v380[1] = v301;
      v380[2] = v300;
      v146 = [MEMORY[0x277CBEA60] arrayWithObjects:v380 count:3];
      [v298 sortUsingDescriptors:v146];

      for (m = 0; m < [v298 count]; ++m)
      {
        v148 = [v298 objectAtIndexedSubscript:m];
        if (m < v296)
        {
          [v299 addObject:v148];
        }
      }

      v314 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v329 = 0u;
      v330 = 0u;
      v327 = 0u;
      v328 = 0u;
      v312 = v288;
      v149 = [v312 countByEnumeratingWithState:&v327 objects:v379 count:16];
      if (v149)
      {
        contexta = *v328;
        do
        {
          for (n = 0; n != v149; ++n)
          {
            if (*v328 != contexta)
            {
              objc_enumerationMutation(v312);
            }

            v151 = *(*(&v327 + 1) + 8 * n);
            v152 = [v151 objectForKeyedSubscript:@"momentNodes"];
            v153 = MEMORY[0x277CBEA60];
            v154 = [v151 objectForKeyedSubscript:@"personNodes"];
            allObjects = [v154 allObjects];
            v156 = [v153 arrayWithArray:allObjects];

            *&v157 = [v152 count];
            LODWORD(v158) = v310;
            LODWORD(v159) = 1060320051;
            [(PGGraph *)self normalizeFeatureValue:v318 average:v157 featureValues:v158 factor:v159];
            v161 = v160;
            [(PGGraph *)self longevity:v152];
            v163 = v162 / 31536000.0;
            v164 = v163;
            *&v163 = v164;
            LODWORD(v165) = 1060320051;
            [(PGGraph *)self normalizeFeatureValue:v317 average:v163 featureValues:COERCE_DOUBLE(v309 | 0x417E133800000000) factor:v165];
            v167 = v166;
            [(PGGraph *)self averageTopMomentTimes:v152 numberOfMoments:5];
            [(PGGraph *)self recencyFeature:?];
            v169 = v168;
            v170 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v171 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
            [v170 addObject:v171];

            v172 = v170;
            v369 = 0u;
            v370 = 0u;
            v371 = 0u;
            v372 = 0u;
            v173 = v172;
            v174 = [v173 countByEnumeratingWithState:&v369 objects:buf count:16];
            if (v174)
            {
              v175 = *v370;
              v176 = 0.0;
              do
              {
                for (ii = 0; ii != v174; ++ii)
                {
                  if (*v370 != v175)
                  {
                    objc_enumerationMutation(v173);
                  }

                  [*(*(&v369 + 1) + 8 * ii) doubleValue];
                  v176 = v176 + v178;
                }

                v174 = [v173 countByEnumeratingWithState:&v369 objects:buf count:16];
              }

              while (v174);
            }

            else
            {
              v176 = 0.0;
            }

            v179 = [v173 count];
            if (((v161 + (v169 * 0.0)) + (v167 * 0.0)) + (v176 / v179 + -0.5 + v176 / v179 + -0.5) * 0.0 + 0.0 < 1.0)
            {
              v180 = ((v161 + (v169 * 0.0)) + (v167 * 0.0)) + (v176 / v179 + -0.5 + v176 / v179 + -0.5) * 0.0 + 0.0;
            }

            else
            {
              v180 = 1.0;
            }

            v181 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v181 setObject:v152 forKeyedSubscript:@"momentNodes"];
            [v181 setObject:v156 forKeyedSubscript:@"personNodes"];
            v182 = [MEMORY[0x277CCABB0] numberWithDouble:v180];
            [v181 setObject:v182 forKeyedSubscript:@"socialGroupWeight"];

            [v181 setObject:v173 forKeyedSubscript:@"peopleWeights"];
            v183 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
            [v181 setObject:v183 forKeyedSubscript:@"groupCohesionScore"];

            *&v184 = v164;
            v185 = [MEMORY[0x277CCABB0] numberWithFloat:v184];
            [v181 setObject:v185 forKeyedSubscript:@"longevity"];

            *&v186 = v169;
            v187 = [MEMORY[0x277CCABB0] numberWithFloat:v186];
            [v181 setObject:v187 forKeyedSubscript:@"recencyFeature"];

            v188 = [MEMORY[0x277CCABB0] numberWithDouble:v180];
            [v181 setObject:v188 forKeyedSubscript:@"ranking"];

            v189 = [v152 count];
            *&v190 = v164;
            if ([(PGGraph *)self isSocialGroupEligible:v189 longevity:v190])
            {
              [v314 addObject:v181];
            }
          }

          v149 = [v312 countByEnumeratingWithState:&v327 objects:v379 count:16];
        }

        while (v149);
      }

      if ([v314 count])
      {
        v378[0] = v303;
        v378[1] = v301;
        v191 = [MEMORY[0x277CBEA60] arrayWithObjects:v378 count:2];
        [v314 sortUsingDescriptors:v191];
      }

      contextb = objc_alloc_init(MEMORY[0x277CBEB18]);
      v192 = 0;
      v193 = 0;
      v194 = vcvtps_u32_f32([v294 count] / 3.0);
      if (v194 > 3)
      {
        v195 = 1;
      }

      else
      {
        v194 = 3;
        v195 = 0;
      }

      if (v296 > 7)
      {
        v196 = 1;
      }

      else
      {
        v196 = v195;
      }

      v197 = v194 + 1;
      while (v192 < [v314 count])
      {
        v198 = [v314 objectAtIndexedSubscript:v192];
        v199 = [v198 objectForKeyedSubscript:@"ranking"];
        [v199 floatValue];
        v201 = v200;

        v202 = [v314 objectAtIndexedSubscript:v192];
        if ([(PGGraph *)self singlePersonGroupIsInSocialGroups:v202 groups:v294])
        {
        }

        else if (v201 >= -0.65)
        {
          v204 = [v314 objectAtIndexedSubscript:v192];
          v205 = [(PGGraph *)self singlePersonBelongsToSocialGroupOfMaxSize:v204 groups:v294 maxSize:2];

          if (v205 & v196)
          {
LABEL_141:
            v206 = [v314 objectAtIndexedSubscript:v192];
            v207 = [(PGGraph *)self singlePersonGroupIsInSocialGroups:v206 groups:v297];

            if (!v207)
            {
              v208 = [v314 objectAtIndexedSubscript:v192];
              [v297 addObject:v208];
            }

            goto LABEL_135;
          }
        }

        else
        {

          if (v196)
          {
            goto LABEL_141;
          }
        }

        v203 = [v314 objectAtIndexedSubscript:v192];
        [contextb addObject:v203];

        ++v193;
LABEL_135:
        ++v192;
        if (v193 == v197)
        {
          break;
        }
      }

      v316 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"recencyFeature" ascending:0];
      v377[0] = v316;
      v377[1] = v303;
      v377[2] = v301;
      v209 = [MEMORY[0x277CBEA60] arrayWithObjects:v377 count:3];
      [contextb sortUsingDescriptors:v209];

      v210 = [contextb count];
      v211 = 0;
      v212 = v210;
      if (v210)
      {
        v213 = 0;
        v214 = v210 - 1;
        do
        {
          if (v212 < 4 || v213 < v214)
          {
            v218 = [contextb objectAtIndexedSubscript:v213];
            [v302 addObject:v218];

            ++v211;
          }

          else
          {
            v215 = [contextb objectAtIndexedSubscript:v213];
            v216 = [(PGGraph *)self singlePersonGroupIsInSocialGroups:v215 groups:v297];

            if (!v216)
            {
              v217 = [contextb objectAtIndexedSubscript:v213];
              [v297 addObject:v217];
            }
          }

          ++v213;
        }

        while (v212 != v213);
      }

      v219 = [v302 count];
      v325 = 0u;
      v326 = 0u;
      v323 = 0u;
      v324 = 0u;
      v220 = v294;
      v221 = [v220 countByEnumeratingWithState:&v323 objects:v376 count:16];
      if (v221)
      {
        v222 = 0;
        v223 = *v324;
        do
        {
          for (jj = 0; jj != v221; ++jj)
          {
            if (*v324 != v223)
            {
              objc_enumerationMutation(v220);
            }

            v225 = *(*(&v323 + 1) + 8 * jj);
            v226 = [v225 objectForKeyedSubscript:@"personNodes"];
            if ([v226 count] >= 2)
            {
              if (v222 < v296 - v219)
              {
                [v302 addObject:v225];
                ++v222;
                goto LABEL_162;
              }

LABEL_161:
              [v299 addObject:v225];
              goto LABEL_162;
            }

            if ([v226 count] == 1 && !-[PGGraph singlePersonGroupIsInSocialGroups:groups:](self, "singlePersonGroupIsInSocialGroups:groups:", v225, v302))
            {
              goto LABEL_161;
            }

LABEL_162:
          }

          v221 = [v220 countByEnumeratingWithState:&v323 objects:v376 count:16];
        }

        while (v221);
      }

      v375[0] = v303;
      v375[1] = v301;
      v375[2] = v300;
      v227 = [MEMORY[0x277CBEA60] arrayWithObjects:v375 count:3];
      [v299 sortUsingDescriptors:v227];

      v228 = 0;
      v229 = 0;
      v230 = &obja[-v211];
      while (v229 < [v299 count])
      {
        v231 = [v299 objectAtIndexedSubscript:v229];
        v232 = [v231 objectForKeyedSubscript:@"personNodes"];
        v233 = [v231 objectForKeyedSubscript:@"momentNodes"];
        v234 = [v231 objectForKeyedSubscript:@"ranking"];
        [v234 floatValue];
        v236 = v235;

        v237 = [v231 objectForKeyedSubscript:@"longevity"];
        [v237 floatValue];
        v239 = v238;

        if ([v232 count] >= 2 && v228 < v230 && v236 >= v295 && (v240 = objc_msgSend(v233, "count"), LODWORD(v241) = v239, -[PGGraph isSocialGroupEligible:longevity:](self, "isSocialGroupEligible:longevity:", v240, v241)))
        {
          [v302 addObject:v231];
          ++v228;
        }

        else
        {
          v242 = [(PGGraph *)self singlePersonGroupIsInSocialGroups:v231 groups:v302];
          v243 = [(PGGraph *)self singlePersonGroupIsInSocialGroups:v231 groups:v297];
          if (!v242 && ([v232 count] >= 2 || !v243))
          {
            [v297 addObject:v231];
          }
        }

        ++v229;
      }

      v374[0] = v316;
      v374[1] = v303;
      v244 = [MEMORY[0x277CBEA60] arrayWithObjects:v374 count:2];
      [v302 sortUsingDescriptors:v244];

      v373[0] = v316;
      v373[1] = v303;
      v245 = [MEMORY[0x277CBEA60] arrayWithObjects:v373 count:2];
      [v297 sortUsingDescriptors:v245];

      if (blockCopy)
      {
        for (kk = 0; kk < [v302 count]; ++kk)
        {
          v247 = [v302 objectAtIndexedSubscript:kk];
          v248 = [v247 objectForKeyedSubscript:@"recencyFeature"];
          [v248 floatValue];
          v250 = v249;

          v251 = [v247 objectForKeyedSubscript:@"personNodes"];
          v252 = [v247 objectForKeyedSubscript:@"peopleWeights"];
          v253 = [v247 objectForKeyedSubscript:@"momentNodes"];
          v254 = [v247 objectForKeyedSubscript:@"groupCohesionScore"];
          [v254 floatValue];
          (*(blockCopy + 2))(blockCopy, v251, v252, v253, v250, v255);
        }
      }

      if (v304)
      {
        for (mm = 0; mm < [v297 count]; ++mm)
        {
          v257 = [v297 objectAtIndexedSubscript:mm];
          v258 = [v257 objectForKeyedSubscript:@"recencyFeature"];
          [v258 floatValue];
          v260 = v259;

          v261 = [v257 objectForKeyedSubscript:@"personNodes"];
          v262 = [v257 objectForKeyedSubscript:@"peopleWeights"];
          v263 = [v257 objectForKeyedSubscript:@"momentNodes"];
          v264 = [v257 objectForKeyedSubscript:@"groupCohesionScore"];
          [v264 floatValue];
          (*(v304 + 2))(v304, v261, v262, v263, v260, v265);
        }
      }
    }

    v266 = mach_absolute_time();
    numer = v343.numer;
    denom = v343.denom;
    v269 = MEMORY[0x277D86220];
    if (v280 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v279, "CandidatesValidation", "", buf, 2u);
    }

    v270 = MEMORY[0x277D86220];
    v271 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v270, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v388 = "CandidatesValidation";
      v389 = 2048;
      v390 = ((((v266 - v278) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v272 = mach_absolute_time();
    v273 = info.numer;
    v274 = info.denom;
    v275 = v293;
    v276 = v275;
    if (v287 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v275))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v276, OS_SIGNPOST_INTERVAL_END, spid, "SocialGroupsV2", "", buf, 2u);
    }

    v277 = v276;
    if (os_log_type_enabled(v277, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v388 = "SocialGroupsV2";
      v389 = 2048;
      v390 = ((((v272 - v281) * v273) / v274) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v277, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if (weight)
    {
      *weight = v365[6] / v361[6];
    }
  }

  else
  {
    v61 = mach_absolute_time();
    v62 = info.numer;
    v63 = info.denom;
    v64 = v293;
    v65 = v64;
    if (v287 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v65, OS_SIGNPOST_INTERVAL_END, spid, "SocialGroupsV2", "", buf, 2u);
    }

    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v388 = "SocialGroupsV2";
      v389 = 2048;
      v390 = ((((v61 - v281) * v62) / v63) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v65, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v356, 8);
  _Block_object_dispose(&v360, 8);
  _Block_object_dispose(&v364, 8);
}

void __151__PGGraph_Processing__enumerateSocialGroupsIncludingMeNode_socialGroupsVersion_simulateMeNodeNotSet_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, float a5, float a6)
{
  v55 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = v13;
  ++*(*(*(a1 + 80) + 8) + 24);
  *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24) + a5;
  v15 = *(*(a1 + 96) + 8);
  if (*(v15 + 24) == 0.0)
  {
    *(v15 + 24) = a5;
  }

  v16 = *(a1 + 104);
  if (v16 == 1)
  {
    v17 = *(a1 + 32);
    v18 = MEMORY[0x277CCABB0];
    *&v19 = [v13 count];
    v20 = [v18 numberWithFloat:v19];
    [v17 addObject:v20];

    v21 = *(a1 + 40);
    *&v22 = a6;
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
    [v21 addObject:v23];

    v16 = *(a1 + 104);
  }

  if (v16)
  {
    if (![v11 count])
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v25 = [MEMORY[0x277CBEB98] setWithArray:v11];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v26 = *(a1 + 48);
  v27 = [v26 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v48;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v48 != v29)
        {
          objc_enumerationMutation(v26);
        }

        if ([v25 isSubsetOfSet:*(*(&v47 + 1) + 8 * i)])
        {

          v31 = 1;
          goto LABEL_18;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 48) addObject:v25];
  v31 = 0;
LABEL_18:

  if (*(a1 + 104) || [v11 count] != 1)
  {
LABEL_31:
    if ([v11 count])
    {
      if (!v31)
      {
LABEL_35:
        v37 = 0;
        goto LABEL_36;
      }

      if (*(a1 + 72))
      {
        v37 = 1;
LABEL_36:
        v38 = *(a1 + 64);
        v51[0] = @"personNodes";
        v51[1] = @"peopleWeights";
        v52[0] = v11;
        v52[1] = v12;
        v52[2] = v14;
        v51[2] = @"momentNodes";
        v51[3] = @"frequency";
        *&v24 = a5;
        v32 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
        v52[3] = v32;
        v51[4] = @"longevity";
        *&v39 = a6;
        v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
        v52[4] = v40;
        v51[5] = @"isSubset";
        v41 = [MEMORY[0x277CCABB0] numberWithBool:v37];
        v52[5] = v41;
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:6];
        [v38 addObject:v42];

LABEL_37:
      }
    }
  }

  else if ([*(a1 + 56) count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v32 = v14;
    v33 = [v32 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v44;
      while (2)
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(v32);
          }

          if ([*(a1 + 56) containsNode:{*(*(&v43 + 1) + 8 * j), v43}])
          {

            goto LABEL_31;
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_37;
  }

LABEL_38:
}

uint64_t __151__PGGraph_Processing__enumerateSocialGroupsIncludingMeNode_socialGroupsVersion_simulateMeNodeNotSet_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    if (v8 <= [v5 count])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __151__PGGraph_Processing__enumerateSocialGroupsIncludingMeNode_socialGroupsVersion_simulateMeNodeNotSet_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)enumerateSocialGroupsIncludingMeNode:(BOOL)node validGroupsBlock:(id)block invalidGroupsBlock:(id)groupsBlock averageWeight:(float *)weight
{
  nodeCopy = node;
  blockCopy = block;
  groupsBlockCopy = groupsBlock;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __110__PGGraph_Processing__enumerateSocialGroupsIncludingMeNode_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke;
  v15[3] = &unk_2788861E0;
  v16 = blockCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __110__PGGraph_Processing__enumerateSocialGroupsIncludingMeNode_validGroupsBlock_invalidGroupsBlock_averageWeight___block_invoke_2;
  v13[3] = &unk_2788861E0;
  v11 = groupsBlockCopy;
  v12 = blockCopy;
  [(PGGraph *)self enumerateSocialGroupsIncludingMeNode:nodeCopy socialGroupsVersion:0 simulateMeNodeNotSet:0 validGroupsBlock:v15 invalidGroupsBlock:v13 averageWeight:weight];
}

- (void)enumerateSocialGroupsWithBlock:(id)block includeInvalidGroups:(BOOL)groups
{
  blockCopy = block;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__PGGraph_Processing__enumerateSocialGroupsWithBlock_includeInvalidGroups___block_invoke;
  v11[3] = &unk_2788861E0;
  v12 = blockCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__PGGraph_Processing__enumerateSocialGroupsWithBlock_includeInvalidGroups___block_invoke_2;
  v8[3] = &unk_278886208;
  groupsCopy = groups;
  v9 = v12;
  v7 = v12;
  [(PGGraph *)self enumerateSocialGroupsIncludingMeNode:0 socialGroupsVersion:1 simulateMeNodeNotSet:0 validGroupsBlock:v11 invalidGroupsBlock:v8 averageWeight:0];
}

uint64_t __75__PGGraph_Processing__enumerateSocialGroupsWithBlock_includeInvalidGroups___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)relevantMomentNodesForSocialGroupProcessing
{
  v12[3] = *MEMORY[0x277D85DE8];
  meNodeCollection = [(PGGraph *)self meNodeCollection];
  if (-[PGGraph isSharedLibraryEnabled](self, "isSharedLibraryEnabled") && [meNodeCollection count])
  {
    momentNodesWithPresence = [meNodeCollection momentNodesWithPresence];
  }

  else
  {
    momentNodesWithPresence = [(PGGraph *)self momentNodes];
  }

  v5 = momentNodesWithPresence;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalStartDate" ascending:1];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"universalEndDate" ascending:{1, v6}];
  v12[1] = v7;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"UUID" ascending:1];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  v10 = [v5 sortedArrayUsingDescriptors:v9];

  return v10;
}

- (double)momentsCountDistance:(id)distance withSecondBaseGroup:(id)group withSubsetBias:(double)bias withDistanceThreshold:(double)threshold withIntersectionBias:(double)intersectionBias withKey:(id)key
{
  keyCopy = key;
  groupCopy = group;
  distanceCopy = distance;
  v16 = [groupCopy objectForKeyedSubscript:@"personNodes"];
  v17 = [distanceCopy objectForKeyedSubscript:@"personNodes"];
  v18 = [MEMORY[0x277CBEB58] setWithSet:v16];
  [v18 intersectSet:v17];
  v19 = [groupCopy objectForKeyedSubscript:keyCopy];

  v20 = [distanceCopy objectForKeyedSubscript:keyCopy];

  v21 = [v19 count];
  v22 = [v20 count];
  if (([v16 isSubsetOfSet:v17] & 1) != 0 || objc_msgSend(v17, "isSubsetOfSet:", v16))
  {
    v23 = [v16 isSubsetOfSet:v17];
    v24 = v21 + v22;
    v25 = v22 / v24 + bias;
    if (v23)
    {
      v25 = v21 / v24 + bias;
    }
  }

  else
  {
    v26 = v22 - v21;
    if (v21 >= v22)
    {
      v26 = v21 - v22;
    }

    if (v21 <= v22)
    {
      v27 = v22;
    }

    else
    {
      v27 = v21;
    }

    v25 = threshold - intersectionBias + v26 / v27;
  }

  v28 = v25 - threshold;

  return v28;
}

- (double)peopleDistance:(id)distance withSecondBaseGroup:(id)group threshold:(double)threshold factor:(double)factor
{
  distanceCopy = distance;
  v10 = [group objectForKeyedSubscript:@"personNodes"];
  v11 = [distanceCopy objectForKeyedSubscript:@"personNodes"];

  v12 = [MEMORY[0x277CBEB58] setWithSet:v10];
  [v12 intersectSet:v11];
  v13 = [v10 count];
  v14 = [v11 count];
  v15 = [v12 count];
  v16 = -(threshold - ((v14 - v15) / v14 + (v13 - v15) / v13) * factor);

  return v16;
}

- (void)enumeratePeopleClustersWithLinkage:(unint64_t)linkage threshold:(double)threshold includingMeNode:(BOOL)node socialGroupsVersion:(unint64_t)version singlePersonGroups:(id *)groups withBlock:(id)block
{
  nodeCopy = node;
  v276 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  [(PGGraph *)self _checkCanRead];
  v11 = MEMORY[0x277D86220];
  v12 = MEMORY[0x277D86220];
  v13 = os_signpost_id_generate(v11);
  v14 = v11;
  spid = v13;
  v204 = (v13 - 1);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v13, "BaseGroupsCreation", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v194 = mach_absolute_time();
  v15 = MEMORY[0x277D86220];
  v16 = MEMORY[0x277D86220];
  v17 = os_signpost_id_generate(v15);
  v18 = v15;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v17, "GatherExclusiveMoments", "", buf, 2u);
  }

  v253 = 0;
  mach_timebase_info(&v253);
  v19 = mach_absolute_time();
  v196 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v192 = objc_alloc_init(MEMORY[0x277CBEB18]);
  relevantMomentNodesForSocialGroupProcessing = [(PGGraph *)selfCopy relevantMomentNodesForSocialGroupProcessing];
  v176 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithArray:relevantMomentNodesForSocialGroupProcessing graph:selfCopy];
  *buf = 0;
  v250 = buf;
  v251 = 0x2020000000;
  v252 = 0;
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (nodeCopy)
  {
    +[PGGraphMomentNode personInMoment];
  }

  else
  {
    +[PGGraphMomentNode personExcludingMeInMoment];
  }
  v175 = ;
  v21 = MEMORY[0x277D22BF8];
  v22 = objc_opt_self();
  v23 = [v21 adjacencyWithSources:v176 relation:v175 targetsClass:v22];

  v245[0] = MEMORY[0x277D85DD0];
  v245[1] = 3221225472;
  v245[2] = __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke;
  v245[3] = &unk_278886190;
  v170 = v23;
  v246 = v170;
  v24 = v20;
  v247 = v24;
  v248 = buf;
  [relevantMomentNodesForSocialGroupProcessing enumerateObjectsUsingBlock:v245];
  v25 = mach_absolute_time();
  numer = v253.numer;
  denom = v253.denom;
  v28 = MEMORY[0x277D86220];
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v272 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v17, "GatherExclusiveMoments", "", v272, 2u);
  }

  v29 = MEMORY[0x277D86220];
  v30 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *v272 = 136315394;
    v273 = "GatherExclusiveMoments";
    v274 = 2048;
    v275 = ((((v25 - v19) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v272, 0x16u);
  }

  v243 = 0u;
  v244 = 0u;
  v241 = 0u;
  v242 = 0u;
  obj = v24;
  v31 = [obj countByEnumeratingWithState:&v241 objects:v271 count:16];
  if (!v31)
  {
    v46 = 0.0;
    goto LABEL_33;
  }

  v32 = 0;
  v33 = *v242;
  do
  {
    for (i = 0; i != v31; ++i)
    {
      if (*v242 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v241 + 1) + 8 * i);
      v36 = [obj objectForKeyedSubscript:v35];
      v37 = v36;
      if (version != 1)
      {
        relationshipEdges = [v35 relationshipEdges];
        labels = [relationshipEdges labels];

        v44 = [v37 count];
        v266[0] = v37;
        v265[0] = @"momentNodes";
        v265[1] = @"personNodes";
        temporarySet = [v35 temporarySet];
        v265[2] = @"relationships";
        v266[1] = temporarySet;
        v266[2] = labels;
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v266 forKeys:v265 count:3];
        [v196 addObject:v45];

        v32 += v44;
        goto LABEL_28;
      }

      if ([v36 count] && objc_msgSend(v35, "count"))
      {
        v38 = [v37 count];
        v270[0] = v37;
        v269[0] = @"momentNodes";
        v269[1] = @"personNodes";
        temporarySet2 = [v35 temporarySet];
        v270[1] = temporarySet2;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v270 forKeys:v269 count:2];
        [v196 addObject:v40];

        v32 += v38;
      }

      if ([v35 count] == 1 && objc_msgSend(v37, "count"))
      {
        v268[0] = v37;
        v267[0] = @"momentNodes";
        v267[1] = @"personNodes";
        labels = [v35 temporarySet];
        v268[1] = labels;
        temporarySet = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v268 forKeys:v267 count:2];
        [v192 addObject:temporarySet];
LABEL_28:
      }
    }

    v31 = [obj countByEnumeratingWithState:&v241 objects:v271 count:16];
  }

  while (v31);
  v46 = v32;
LABEL_33:
  v166 = v46;

  v47 = mach_absolute_time();
  v48 = info.numer;
  v49 = info.denom;
  v50 = MEMORY[0x277D86220];
  if (v204 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v272 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, spid, "BaseGroupsCreation", "", v272, 2u);
  }

  v51 = MEMORY[0x277D86220];
  v52 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    *v272 = 136315394;
    v273 = "BaseGroupsCreation";
    v274 = 2048;
    v275 = ((((v47 - v194) * v48) / v49) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v272, 0x16u);
  }

  if (groups)
  {
    v53 = v192;
    *groups = v192;
  }

  v54 = v51;
  v55 = os_signpost_id_generate(v51);
  v56 = v51;
  if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v272 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v55, "BaseGroupsClustering", "", v272, 2u);
  }

  v240 = 0;
  mach_timebase_info(&v240);
  v57 = mach_absolute_time();
  v174 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personNodes" ascending:1 comparator:&__block_literal_global_54246];
  v177 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"momentNodes" ascending:0 comparator:&__block_literal_global_300];
  if (version == 1)
  {
    v264[0] = v174;
    v264[1] = v177;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v264 count:2];
    [v196 sortUsingDescriptors:v58];
  }

  else
  {
    v58 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"momentNodes" ascending:0 comparator:&__block_literal_global_303];
    v263[0] = v174;
    v263[1] = v58;
    v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v263 count:2];
    [v196 sortUsingDescriptors:v59];
  }

  v60 = objc_alloc(MEMORY[0x277D3AC88]);
  v239[0] = MEMORY[0x277D85DD0];
  v239[1] = 3221225472;
  v239[2] = __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_4;
  v239[3] = &unk_2788861B8;
  v239[5] = version;
  v239[4] = selfCopy;
  v61 = [v60 initWithDistanceBlock:v239];
  [v61 setK:1];
  [v61 setLinkage:linkage];
  [v61 setThreshold:threshold];
  if (version == 1)
  {
    if ([v61 linkage] == 5)
    {
      [v61 setClusterKeyElementBlock:&__block_literal_global_309];
    }

    if ([v61 linkage] == 4)
    {
      [v61 setClusterConsolidationBlock:&__block_literal_global_312];
    }
  }

  v169 = v61;
  v62 = [v61 performWithDataset:v196 progressBlock:0];
  v63 = [v62 sortedArrayUsingComparator:&__block_literal_global_315];

  v64 = mach_absolute_time();
  v65 = v240.numer;
  v66 = v240.denom;
  v67 = MEMORY[0x277D86220];
  if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v272 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v55, "BaseGroupsClustering", "", v272, 2u);
  }

  v68 = MEMORY[0x277D86220];
  v69 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    *v272 = 136315394;
    v273 = "BaseGroupsClustering";
    v274 = 2048;
    v275 = ((((v64 - v57) * v65) / v66) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v272, 0x16u);
  }

  v70 = v68;
  v71 = os_signpost_id_generate(v68);
  v72 = v68;
  v167 = v71;
  v168 = v71 - 1;
  if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v272 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v71, "ClusterConsolidation", "", v272, 2u);
  }

  v238 = 0;
  mach_timebase_info(&v238);
  v163 = mach_absolute_time();
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v173 = v63;
  v73 = [v173 countByEnumeratingWithState:&v234 objects:v262 count:16];
  if (v73)
  {
    v74 = *v235;
    v164 = *v235;
    do
    {
      v178 = 0;
      v165 = v73;
      do
      {
        if (*v235 != v74)
        {
          objc_enumerationMutation(v173);
        }

        v75 = *(*(&v234 + 1) + 8 * v178);
        context = objc_autoreleasePoolPush();
        objects = [v75 objects];
        v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v77 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v182 = v76;
        if (version == 1)
        {
          v183 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"personNodes" ascending:1 comparator:&__block_literal_global_322];
          v195 = [MEMORY[0x277CBEB18] arrayWithArray:objects];
          v261[0] = v183;
          v261[1] = v177;
          v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v261 count:2];
          [v195 sortUsingDescriptors:v78];

          v162 = [v195 objectAtIndexedSubscript:0];
          v161 = [v162 objectForKeyedSubscript:@"personNodes"];
          if ([v161 count] > 3)
          {
            v181 = 3;
            v80 = 0.05;
            v81 = 0.3;
            v79 = 0.8;
          }

          else
          {
            v79 = 1.0;
            v80 = 0.0;
            v181 = 1;
            v81 = 0.0;
          }

          v184 = 0;
          v99 = 0;
LABEL_91:
          if (((v184 < [v195 count]) & (v99 ^ 1)) != 0)
          {
            v100 = [v195 objectAtIndexedSubscript:?];
            v101 = [v100 objectForKeyedSubscript:@"personNodes"];
            v191 = v100;
            v102 = [v100 objectForKeyedSubscript:@"momentNodes"];
            v209 = [v102 count];
            v185 = v102;
            v187 = [MEMORY[0x277CBEB18] arrayWithArray:v102];
            v103 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v232 = 0u;
            v233 = 0u;
            v230 = 0u;
            v231 = 0u;
            v206 = v101;
            v104 = [v206 countByEnumeratingWithState:&v230 objects:v260 count:16];
            if (v104)
            {
              v105 = *v231;
              do
              {
                for (j = 0; j != v104; ++j)
                {
                  if (*v231 != v105)
                  {
                    objc_enumerationMutation(v206);
                  }

                  v107 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v230 + 1) + 8 * j), "identifier")}];
                  v108 = [v103 objectForKeyedSubscript:v107];
                  unsignedIntegerValue = [v108 unsignedIntegerValue];

                  v209 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + v209];
                  [v103 setObject:v209 forKeyedSubscript:v107];
                }

                v104 = [v206 countByEnumeratingWithState:&v230 objects:v260 count:16];
              }

              while (v104);
            }

            spida = ++v184;
            v190 = [v185 count];
            v186 = v190;
            while (1)
            {
              if (spida >= [v195 count])
              {
LABEL_116:
                if (v190)
                {
                  v123 = v186 / v190;
                  v124 = v209 / v190;
                }

                else
                {
                  v123 = 0.0;
                  v124 = 0.0;
                }

                [(PGGraph *)selfCopy longevity:v185];
                if (v123 < v81 || v124 < v80)
                {
                  v99 = 0;
                }

                else
                {
                  v99 = 0;
                  if (v209 >= v181)
                  {
                    v127 = v125 / 31536000.0;
                    if (v127 >= 0.083333)
                    {
                      v128 = v103;

                      v129 = v187;
                      v99 = 1;
                      v77 = v128;
                      v182 = v129;
                    }
                  }
                }

                goto LABEL_91;
              }

              v111 = [v195 objectAtIndexedSubscript:?];
              v201 = [v111 objectForKeyedSubscript:@"personNodes"];
              v112 = [v111 objectForKeyedSubscript:@"momentNodes"];
              v193 = v111;
              if ([v201 isSubsetOfSet:v206])
              {
                [(PGGraph *)selfCopy peopleDistance:v191 withSecondBaseGroup:v111 threshold:0.0 factor:1.0];
                if (v113 > v79)
                {
                  v122 = 0;
                  goto LABEL_115;
                }

                if (v113 <= 0.6)
                {
                  v186 += [v112 count];
                }

                v188 = [v112 count];
                [v187 addObjectsFromArray:v112];
                v228 = 0u;
                v229 = 0u;
                v226 = 0u;
                v227 = 0u;
                v114 = v201;
                v115 = [v114 countByEnumeratingWithState:&v226 objects:v259 count:16];
                if (v115)
                {
                  v116 = *v227;
                  do
                  {
                    for (k = 0; k != v115; ++k)
                    {
                      if (*v227 != v116)
                      {
                        objc_enumerationMutation(v114);
                      }

                      v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v226 + 1) + 8 * k), "identifier")}];
                      v119 = [v103 objectForKeyedSubscript:v118];
                      unsignedIntegerValue2 = [v119 unsignedIntegerValue];

                      v121 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v112, "count") + unsignedIntegerValue2}];
                      [v103 setObject:v121 forKeyedSubscript:v118];
                    }

                    v115 = [v114 countByEnumeratingWithState:&v226 objects:v259 count:16];
                  }

                  while (v115);
                }

                v190 += v188;
              }

              v122 = 1;
LABEL_115:

              ++spida;
              if ((v122 & 1) == 0)
              {
                goto LABEL_116;
              }
            }
          }
        }

        else
        {
          v224 = 0u;
          v225 = 0u;
          v222 = 0u;
          v223 = 0u;
          v82 = [objects valueForKey:@"momentNodes"];
          v83 = [v82 countByEnumeratingWithState:&v222 objects:v258 count:16];
          if (v83)
          {
            v84 = *v223;
            do
            {
              for (m = 0; m != v83; ++m)
              {
                if (*v223 != v84)
                {
                  objc_enumerationMutation(v82);
                }

                [v76 addObjectsFromArray:*(*(&v222 + 1) + 8 * m)];
              }

              v83 = [v82 countByEnumeratingWithState:&v222 objects:v258 count:16];
            }

            while (v83);
          }

          v220 = 0u;
          v221 = 0u;
          v218 = 0u;
          v219 = 0u;
          v183 = objects;
          v86 = [v183 countByEnumeratingWithState:&v218 objects:v257 count:16];
          if (v86)
          {
            v200 = *v219;
            do
            {
              v87 = 0;
              v205 = v86;
              do
              {
                if (*v219 != v200)
                {
                  objc_enumerationMutation(v183);
                }

                v208 = v87;
                v88 = *(*(&v218 + 1) + 8 * v87);
                v214 = 0u;
                v215 = 0u;
                v216 = 0u;
                v217 = 0u;
                v89 = [v88 objectForKeyedSubscript:@"personNodes"];
                v90 = [v89 countByEnumeratingWithState:&v214 objects:v256 count:16];
                if (v90)
                {
                  v91 = *v215;
                  do
                  {
                    for (n = 0; n != v90; ++n)
                    {
                      if (*v215 != v91)
                      {
                        objc_enumerationMutation(v89);
                      }

                      v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v214 + 1) + 8 * n), "identifier")}];
                      v94 = [v77 objectForKeyedSubscript:v93];
                      unsignedIntegerValue3 = [v94 unsignedIntegerValue];

                      v96 = MEMORY[0x277CCABB0];
                      v97 = [v88 objectForKeyedSubscript:@"momentNodes"];
                      v98 = [v96 numberWithUnsignedInteger:{objc_msgSend(v97, "count") + unsignedIntegerValue3}];
                      [v77 setObject:v98 forKeyedSubscript:v93];
                    }

                    v90 = [v89 countByEnumeratingWithState:&v214 objects:v256 count:16];
                  }

                  while (v90);
                }

                v87 = v208 + 1;
              }

              while ((v208 + 1) != v205);
              v86 = [v183 countByEnumeratingWithState:&v218 objects:v257 count:16];
            }

            while (v86);
          }
        }

        if (![v182 count])
        {
          goto LABEL_135;
        }

        if (version == 1)
        {
          [(PGGraph *)selfCopy longevity:v182];
          v131 = v130 / 31536000.0;
        }

        else
        {
          v131 = 0.0;
          if (!version && [v182 count] < 3)
          {
LABEL_135:
            v132 = 5;
            goto LABEL_161;
          }
        }

        v133 = [v77 keysSortedByValueUsingComparator:&__block_literal_global_327];
        v134 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v135 = objc_alloc_init(MEMORY[0x277CBEB18]);
        firstObject = [v133 firstObject];
        v137 = [v77 objectForKeyedSubscript:firstObject];
        [v137 floatValue];
        v139 = v138;

        v212 = 0u;
        v213 = 0u;
        v210 = 0u;
        v211 = 0u;
        v140 = v133;
        v141 = [v140 countByEnumeratingWithState:&v210 objects:v255 count:16];
        if (!v141)
        {
          goto LABEL_151;
        }

        v142 = *v211;
        while (2)
        {
          for (ii = 0; ii != v141; ++ii)
          {
            if (*v211 != v142)
            {
              objc_enumerationMutation(v140);
            }

            v144 = *(*(&v210 + 1) + 8 * ii);
            if (v139 <= 0.0)
            {
              v148 = 0.0;
              if (version != 1)
              {
                goto LABEL_153;
              }
            }

            else
            {
              v145 = [v77 objectForKeyedSubscript:*(*(&v210 + 1) + 8 * ii)];
              [v145 floatValue];
              v147 = v146;

              v148 = (v147 / v139);
              if (version != 1)
              {
                if (v148 < 0.35)
                {
LABEL_153:

                  v151 = v182;
                  goto LABEL_159;
                }

                goto LABEL_149;
              }

              if (v148 >= 0.35)
              {
                goto LABEL_149;
              }
            }

            if ([v77 count] != 1)
            {

              v151 = v182;
              goto LABEL_155;
            }

LABEL_149:
            v149 = -[MAGraph nodeForIdentifier:](selfCopy, "nodeForIdentifier:", [v144 unsignedIntegerValue]);
            [v134 addObject:v149];

            v150 = [MEMORY[0x277CCABB0] numberWithDouble:v148];
            [v135 addObject:v150];
          }

          v141 = [v140 countByEnumeratingWithState:&v210 objects:v255 count:16];
          if (v141)
          {
            continue;
          }

          break;
        }

LABEL_151:

        v151 = v182;
        if (version == 1)
        {
LABEL_155:
          if ([v134 count] == 1)
          {
            v152 = [v134 objectAtIndexedSubscript:0];
            v153 = [v152 numberOfMomentNodes] > 1;

            v151 = v182;
            if (v153)
            {
              goto LABEL_159;
            }
          }

          else if ([v151 count] >= 2)
          {
            goto LABEL_159;
          }

          v132 = 5;
        }

        else
        {
LABEL_159:
          v154 = [v151 count];
          v272[0] = 0;
          blockCopy[2](blockCopy, v134, v135, v151, v272, v154 / v166, v131);
          v132 = v272[0];
        }

LABEL_161:
        objc_autoreleasePoolPop(context);
        v74 = v164;
        if (v132 != 5 && v132)
        {
          v159 = v173;
          goto LABEL_170;
        }

        ++v178;
      }

      while (v178 != v165);
      v73 = [v173 countByEnumeratingWithState:&v234 objects:v262 count:16];
    }

    while (v73);
  }

  v155 = mach_absolute_time();
  v156 = v238.numer;
  v157 = v238.denom;
  v158 = MEMORY[0x277D86220];
  if (v168 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v272 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v167, "ClusterConsolidation", "", v272, 2u);
  }

  v159 = MEMORY[0x277D86220];
  v160 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v159, OS_LOG_TYPE_INFO))
  {
    *v272 = 136315394;
    v273 = "ClusterConsolidation";
    v274 = 2048;
    v275 = ((((v155 - v163) * v156) / v157) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v159, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v272, 0x16u);
  }

LABEL_170:

  _Block_object_dispose(buf, 8);
}

void __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v10 = a2;
  v6 = [*(a1 + 32) targetsForSourceIdentifier:{objc_msgSend(v10, "identifier")}];
  if ([v6 count])
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = [*(a1 + 40) objectForKeyedSubscript:v6];
      [v8 addObject:v10];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v6];

      ++*(*(*(a1 + 48) + 8) + 24);
    }

    *a4 = *(*(*(a1 + 48) + 8) + 24) > 0x3E8uLL;
  }
}

double __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"personNodes"];
  v8 = [v5 objectForKeyedSubscript:@"personNodes"];
  if (*(a1 + 40) == 1)
  {
    if (([v7 isSubsetOfSet:v8] & 1) != 0 || (v9 = 3.0, objc_msgSend(v8, "isSubsetOfSet:", v7)))
    {
      [*(a1 + 32) peopleDistance:v5 withSecondBaseGroup:v6 threshold:0.28 factor:0.5];
      v11 = v10 + 0.0;
      [*(a1 + 32) momentsCountDistance:v5 withSecondBaseGroup:v6 withSubsetBias:@"momentNodes" withDistanceThreshold:0.0 withIntersectionBias:0.66 withKey:0.2];
      v9 = v11 + v12;
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [v5 objectForKeyedSubscript:@"relationships"];
    v15 = [v13 _cluePeopleForRelationships:v14];

    v16 = *(a1 + 32);
    v17 = [v6 objectForKeyedSubscript:@"relationships"];
    v18 = [v16 _cluePeopleForRelationships:v17];

    if (v18 | v15)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 0.33;
    }

    v19 = [MEMORY[0x277CBEB58] setWithSet:v7];
    [v19 unionSet:v8];
    v20 = [v19 count];
    if (v20)
    {
      v21 = v20;
      v22 = [MEMORY[0x277CBEB58] setWithSet:v7];
      [v22 intersectSet:v8];
      v23 = v19;
      [v23 minusSet:v22];
      v9 = v9 + ((v21 + 1) / (v21 + 1 - [v23 count]) + -1.0) / v21;
    }

    else
    {
      v23 = 0;
    }
  }

  return v9;
}

uint64_t __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_320(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    if (v8 <= [v5 count])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objects];
  v6 = [v5 valueForKeyPath:@"@sum.momentNodes.@count"];

  v7 = [v4 objects];

  v8 = [v7 valueForKeyPath:@"@sum.momentNodes.@count"];

  v9 = [v8 compare:v6];
  return v9;
}

id __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = a5;
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (a4)
  {
    v9 = 0;
    do
    {
      v10 = [v20 objectAtIndexedSubscript:*(*(a2 + 8 * a3) + 8 * v9)];
      v11 = [v10 objectForKeyedSubscript:@"momentNodes"];
      [v7 addObjectsFromArray:v11];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = [v10 objectForKeyedSubscript:@"personNodes"];
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [v8 addObject:*(*(&v21 + 1) + 8 * i)];
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v14);
      }

      ++v9;
    }

    while (v9 != a4);
  }

  [v18 setObject:v8 forKeyedSubscript:@"personNodes"];
  [v18 setObject:v7 forKeyedSubscript:@"momentNodes"];

  return v18;
}

uint64_t __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a2 + 8 * a3);
  if (a4)
  {
    v8 = 0;
    v9 = 0;
    for (i = 0; i != a4; ++i)
    {
      v11 = [a5 objectAtIndexedSubscript:*(v5 + 8 * i)];
      v12 = [v11 objectForKeyedSubscript:@"personNodes"];
      if ([v12 count] > v8)
      {
        v8 = [v12 count];
        v9 = i;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return *(v5 + 8 * v9);
}

uint64_t __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 firstObject];
  v6 = [v5 universalStartDate];
  v7 = [v4 firstObject];

  v8 = [v7 universalEndDate];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __133__PGGraph_Processing__enumeratePeopleClustersWithLinkage_threshold_includingMeNode_socialGroupsVersion_singlePersonGroups_withBlock___block_invoke_296(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    v7 = v8 > [v5 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)enumeratePeopleClustersIncludingMeNode:(BOOL)node socialGroupsVersion:(unint64_t)version singlePersonGroups:(id *)groups withBlock:(id)block
{
  nodeCopy = node;
  if (version == 1)
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  v9 = 0.7;
  if (version == 1)
  {
    v9 = 0.0;
  }

  [PGGraph enumeratePeopleClustersWithLinkage:"enumeratePeopleClustersWithLinkage:threshold:includingMeNode:socialGroupsVersion:singlePersonGroups:withBlock:" threshold:v8 includingMeNode:nodeCopy socialGroupsVersion:v9 singlePersonGroups:? withBlock:?];
}

- (void)invalidateSupersetCaches
{
  os_unfair_lock_lock(&self->_supersetLock);
  supersetCityNodes = self->_supersetCityNodes;
  self->_supersetCityNodes = 0;

  supersetCountyNodes = self->_supersetCountyNodes;
  self->_supersetCountyNodes = 0;

  supersetStateNodes = self->_supersetStateNodes;
  self->_supersetStateNodes = 0;

  supersetCountryNodes = self->_supersetCountryNodes;
  self->_supersetCountryNodes = 0;

  os_unfair_lock_unlock(&self->_supersetLock);
}

- (void)invalidateProcessingCaches
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  zeroKeywordMappingByMeaningLabel = selfCopy->_zeroKeywordMappingByMeaningLabel;
  selfCopy->_zeroKeywordMappingByMeaningLabel = 0;

  objc_sync_exit(selfCopy);
  interestingCityNodes = selfCopy->_interestingCityNodes;
  selfCopy->_interestingCityNodes = 0;
}

+ (id)_personClosestToMeBetweenPersonNode:(id)node andOtherPersonNode:(id)personNode
{
  v28[5] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  personNodeCopy = personNode;
  graph = [nodeCopy graph];
  v8 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];
  anyNode = [v8 anyNode];

  v10 = [nodeCopy anyEdgeFromNode:anyNode];
  label = [v10 label];

  v12 = [personNodeCopy anyEdgeFromNode:anyNode];
  label2 = [v12 label];

  v28[0] = @"PARTNER";
  v28[1] = @"FAMILY";
  v28[2] = @"FRIEND";
  v28[3] = @"COWORKER";
  v28[4] = @"ACQUAINTANCE";
  [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:5];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v26 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v15)
  {
    v20 = 0;
    goto LABEL_15;
  }

  v16 = v15;
  v17 = *v24;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v24 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v23 + 1) + 8 * i);
      if ([label isEqualToString:{v19, v23}])
      {
        v21 = nodeCopy;
LABEL_14:
        v20 = v21;
        goto LABEL_15;
      }

      if ([label2 isEqualToString:v19])
      {
        v21 = personNodeCopy;
        goto LABEL_14;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    v20 = 0;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_15:

  return v20;
}

+ (id)_closestRelationshipEdgeLabelForPersonNode:(id)node andOtherPersonNode:(id)personNode
{
  nodeCopy = node;
  personNodeCopy = personNode;
  graph = [nodeCopy graph];
  v8 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:graph];
  anyNode = [v8 anyNode];

  v10 = [objc_opt_class() _personClosestToMeBetweenPersonNode:nodeCopy andOtherPersonNode:personNodeCopy];
  if (v10)
  {
    if ([nodeCopy isSameNodeAsNode:v10])
    {
      v11 = personNodeCopy;
    }

    else
    {
      v11 = nodeCopy;
    }

    v12 = v11;
    v13 = [v10 anyEdgeFromNode:anyNode];
    label = [v13 label];

    v15 = [v12 anyEdgeFromNode:anyNode];

    label2 = [v15 label];

    v17 = @"ACQUAINTANCE";
    if ([label isEqualToString:@"PARTNER"] && !-[__CFString isEqualToString:](label2, "isEqualToString:", @"COWORKER"))
    {
      v17 = label2;
    }

    v14Label = v17;
  }

  else
  {
    label = [nodeCopy anyEdgeFromNode:anyNode];
    v14Label = [label label];
  }

  return v14Label;
}

- (void)_enumerateMeaningfulEventsWithMeaningLabel:(id)label visitedMeaningfulEvents:(id)events usingBlock:(id)block
{
  eventsCopy = events;
  blockCopy = block;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke;
  v12[3] = &unk_278886AD0;
  selfCopy = self;
  v15 = blockCopy;
  v13 = eventsCopy;
  v10 = blockCopy;
  v11 = eventsCopy;
  [(MAGraph *)self enumerateNodesWithLabel:label domain:700 usingBlock:v12];
}

void __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke_2;
  v13[3] = &unk_278886A58;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = &v17;
  [v5 enumerateMeaningfulEventsUsingBlock:v13];
  if (v18[3])
  {
    v6 = 1;
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke_3;
    v9[3] = &unk_278886AA8;
    v8 = *(a1 + 32);
    v7 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    v11 = *(a1 + 48);
    v12 = &v17;
    [v5 enumerateSubmeaningsUsingBlock:v9];

    v6 = *(v18 + 24);
  }

  *a3 = v6;

  _Block_object_dispose(&v17, 8);
}

void __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) addObject:v5];
    *a3 = *(*(*(a1 + 48) + 8) + 24);
  }
}

void __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = [a3 label];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke_4;
  v11[3] = &unk_278886A80;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = v9;
  v13 = v10;
  v14 = a4;
  [v6 _enumerateMeaningfulEventsWithMeaningLabel:v7 visitedMeaningfulEvents:v8 usingBlock:v11];
}

uint64_t __98__PGGraph_Meaning___enumerateMeaningfulEventsWithMeaningLabel_visitedMeaningfulEvents_usingBlock___block_invoke_4(void *a1, uint64_t a2, _BYTE *a3)
{
  result = (*(a1[4] + 16))();
  v6 = a1[6];
  *a3 = *(*(a1[5] + 8) + 24);
  *v6 = *(*(a1[5] + 8) + 24);
  return result;
}

- (id)meaningfulEventNodeForUUID:(id)d
{
  v3 = [PGGraphMomentNodeCollection momentNodeForUUID:d inGraph:self];
  anyNode = [v3 anyNode];

  return anyNode;
}

- (id)bestMeaningLabelForMeaningfulEvent:(id)event
{
  eventCopy = event;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__56365;
  v17 = __Block_byref_object_dispose__56366;
  v18 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0x7FFFFFFFFFFFFFFFLL;
  availableInferredMeaningLabels = [objc_opt_class() availableInferredMeaningLabels];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__PGGraph_Meaning__bestMeaningLabelForMeaningfulEvent___block_invoke;
  v8[3] = &unk_278886A30;
  v5 = availableInferredMeaningLabels;
  v9 = v5;
  v10 = v12;
  v11 = &v13;
  [eventCopy enumerateMeaningNodesUsingBlock:v8];
  v6 = v14[5];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v13, 8);

  return v6;
}

void __55__PGGraph_Meaning__bestMeaningLabelForMeaningfulEvent___block_invoke(uint64_t a1, void *a2)
{
  obj = [a2 label];
  v3 = [*(a1 + 32) indexOfObject:?];
  if (v3 < *(*(*(a1 + 40) + 8) + 24))
  {
    v4 = v3;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }
}

- (void)enumerateMomentNodesWithMeaning:(unint64_t)meaning usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__PGGraph_Meaning__enumerateMomentNodesWithMeaning_usingBlock___block_invoke;
  v8[3] = &unk_278886A08;
  v9 = blockCopy;
  v7 = blockCopy;
  [(PGGraph *)self enumerateMeaningfulEventsWithMeaning:meaning usingBlock:v8];
}

void __63__PGGraph_Meaning__enumerateMomentNodesWithMeaning_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 eventCollection];
  v6 = [v5 eventMomentNodes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__PGGraph_Meaning__enumerateMomentNodesWithMeaning_usingBlock___block_invoke_2;
  v7[3] = &unk_2788869E0;
  v8 = *(a1 + 32);
  v9 = a3;
  [v6 enumerateNodesUsingBlock:v7];
}

uint64_t __63__PGGraph_Meaning__enumerateMomentNodesWithMeaning_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  **(a1 + 40) = *a3;
  return result;
}

- (id)momentNodesWithMeaning:(unint64_t)meaning
{
  v5 = [MEMORY[0x277CBEB58] set];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PGGraph_Meaning__momentNodesWithMeaning___block_invoke;
  v8[3] = &unk_278889290;
  v6 = v5;
  v9 = v6;
  [(PGGraph *)self enumerateMomentNodesWithMeaning:meaning usingBlock:v8];

  return v6;
}

- (void)enumerateMeaningsFromMeaningfulEvent:(id)event usingBlock:(id)block
{
  blockCopy = block;
  v6 = MEMORY[0x277CCAB58];
  eventCopy = event;
  indexSet = [v6 indexSet];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__PGGraph_Meaning__enumerateMeaningsFromMeaningfulEvent_usingBlock___block_invoke;
  v11[3] = &unk_2788869B8;
  v12 = indexSet;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = indexSet;
  [eventCopy enumerateMeaningNodesUsingBlock:v11];
}

void __68__PGGraph_Meaning__enumerateMeaningsFromMeaningfulEvent_usingBlock___block_invoke(uint64_t a1, void *a2, char *a3)
{
  v5 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PGGraph_Meaning__enumerateMeaningsFromMeaningfulEvent_usingBlock___block_invoke_2;
  aBlock[3] = &unk_278886968;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = &v18;
  v6 = _Block_copy(aBlock);
  v7 = [v5 label];
  v6[2](v6, v7);

  if (v19[3])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v5 collection];
    v10 = [v9 parentMeaningNodes];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__PGGraph_Meaning__enumerateMeaningsFromMeaningfulEvent_usingBlock___block_invoke_3;
    v11[3] = &unk_278886990;
    v12 = v6;
    v13 = &v18;
    [v10 enumerateNodesUsingBlock:v11];

    v8 = *(v19 + 24);
  }

  *a3 = v8;

  _Block_object_dispose(&v18, 8);
}

uint64_t __68__PGGraph_Meaning__enumerateMeaningsFromMeaningfulEvent_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  result = PGMeaningForMeaningLabel(a2);
  if (result)
  {
    v4 = result;
    result = [*(a1 + 32) containsIndex:result];
    if ((result & 1) == 0)
    {
      [*(a1 + 32) addIndex:v4];
      v5 = *(*(a1 + 40) + 16);

      return v5();
    }
  }

  return result;
}

void __68__PGGraph_Meaning__enumerateMeaningsFromMeaningfulEvent_usingBlock___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 label];
  (*(v5 + 16))(v5, v6);

  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

- (id)meaningsFromMeaningfulEvent:(id)event
{
  v4 = MEMORY[0x277CCAB58];
  eventCopy = event;
  indexSet = [v4 indexSet];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__PGGraph_Meaning__meaningsFromMeaningfulEvent___block_invoke;
  v9[3] = &unk_27888A200;
  v7 = indexSet;
  v10 = v7;
  [(PGGraph *)self enumerateMeaningsFromMeaningfulEvent:eventCopy usingBlock:v9];

  return v7;
}

- (void)enumerateMeaningfulEventsWithMeaning:(unint64_t)meaning usingBlock:(id)block
{
  blockCopy = block;
  v6 = PGMeaningLabelForMeaning(meaning);
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [(PGGraph *)self _enumerateMeaningfulEventsWithMeaningLabel:v6 visitedMeaningfulEvents:v7 usingBlock:blockCopy];
  }
}

- (BOOL)eventIsStellar:(id)stellar
{
  stellarCopy = stellar;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  stellarMeanings = [objc_opt_class() stellarMeanings];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__PGGraph_Meaning__eventIsStellar___block_invoke;
  v8[3] = &unk_278886940;
  v10 = &v11;
  v6 = stellarMeanings;
  v9 = v6;
  [(PGGraph *)self enumerateMeaningsFromMeaningfulEvent:stellarCopy usingBlock:v8];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void *__35__PGGraph_Meaning__eventIsStellar___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsIndex:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (BOOL)eventIsVeryMeaningful:(id)meaningful
{
  meaningfulCopy = meaningful;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  veryMeaningfulMeanings = [objc_opt_class() veryMeaningfulMeanings];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PGGraph_Meaning__eventIsVeryMeaningful___block_invoke;
  v8[3] = &unk_278886940;
  v10 = &v11;
  v6 = veryMeaningfulMeanings;
  v9 = v6;
  [(PGGraph *)self enumerateMeaningsFromMeaningfulEvent:meaningfulCopy usingBlock:v8];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void *__42__PGGraph_Meaning__eventIsVeryMeaningful___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsIndex:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (id)meaningfulEvents
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [objc_opt_class() availableInferredMeaningLabels];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v17 = 0u;
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(MAGraph *)self nodesForLabel:*(*(&v14 + 1) + 8 * i) domain:700];
        anyObject = [v8 anyObject];

        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __36__PGGraph_Meaning__meaningfulEvents__block_invoke;
        v12[3] = &unk_278886918;
        v13 = v3;
        [anyObject enumerateMeaningfulEventsUsingBlock:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v3;
}

+ (id)availableInferredMeaningLabels
{
  v2 = MEMORY[0x277CBEB58];
  availableMeaningLabels = [objc_opt_class() availableMeaningLabels];
  v4 = [v2 setWithArray:availableMeaningLabels];

  if (+[PGEventLabelingConfiguration isEventLabelingEnabled])
  {
    v5 = objc_alloc_init(PGEventLabelingConfiguration);
    meaningLabels = [(PGEventLabelingConfiguration *)v5 meaningLabels];
    [v4 unionSet:meaningLabels];
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

+ (id)preciseMeaningNodeForMeaningLabel:(id)label meaningfulEvent:(id)event
{
  labelCopy = label;
  eventCopy = event;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__56365;
  v17 = __Block_byref_object_dispose__56366;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__PGGraph_Meaning__preciseMeaningNodeForMeaningLabel_meaningfulEvent___block_invoke;
  v10[3] = &unk_278887670;
  v12 = &v13;
  v7 = labelCopy;
  v11 = v7;
  [eventCopy enumerateMeaningNodesUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __70__PGGraph_Meaning__preciseMeaningNodeForMeaningLabel_meaningfulEvent___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v6 = a2;
  v7 = [v6 label];
  v8 = v6;
  v14 = v8;
  if (v8)
  {
    v9 = v8;
    do
    {
      if (*(*(*(a1 + 40) + 8) + 40))
      {
        break;
      }

      v10 = [v9 parentMeaningNode];
      v11 = [v10 label];
      if ([*(a1 + 32) isEqualToString:v11])
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
      }

      v9 = v10;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
  }

  v12 = *(a1 + 40);
  if (!*(*(v12 + 8) + 40))
  {
    v13 = [*(a1 + 32) isEqualToString:v7];
    v12 = *(a1 + 40);
    if (v13)
    {
      objc_storeStrong((*(v12 + 8) + 40), a2);
      v12 = *(a1 + 40);
    }
  }

  *a3 = *(*(v12 + 8) + 40) != 0;
}

+ (id)mostSignificantMeaningLabels
{
  if (mostSignificantMeaningLabels_onceToken != -1)
  {
    dispatch_once(&mostSignificantMeaningLabels_onceToken, &__block_literal_global_256);
  }

  v3 = mostSignificantMeaningLabels_mostSignificantMeaningLabels;

  return v3;
}

void __48__PGGraph_Meaning__mostSignificantMeaningLabels__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"Wedding", @"Celebration", @"Birthday", @"HolidayEvent", 0}];
  v1 = mostSignificantMeaningLabels_mostSignificantMeaningLabels;
  mostSignificantMeaningLabels_mostSignificantMeaningLabels = v0;
}

+ (id)frequentMeaningLabels
{
  if (frequentMeaningLabels_onceToken != -1)
  {
    dispatch_once(&frequentMeaningLabels_onceToken, &__block_literal_global_253);
  }

  v3 = frequentMeaningLabels_frequentMeaningLabels;

  return v3;
}

void __41__PGGraph_Meaning__frequentMeaningLabels__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"Restaurant", @"Lunch", @"Dinner", @"Breakfast", 0}];
  v1 = frequentMeaningLabels_frequentMeaningLabels;
  frequentMeaningLabels_frequentMeaningLabels = v0;
}

+ (id)stellarMeanings
{
  allMeaningfulMeanings = [self allMeaningfulMeanings];
  v3 = [allMeaningfulMeanings mutableCopy];
  [v3 removeIndex:16];
  [v3 removeIndex:15];
  [v3 removeIndex:0];

  return v3;
}

+ (id)lessMeaningfulMeanings
{
  allMeaningfulMeanings = [self allMeaningfulMeanings];
  veryMeaningfulMeanings = [self veryMeaningfulMeanings];
  v5 = [allMeaningfulMeanings mutableCopy];
  [v5 removeIndexes:veryMeaningfulMeanings];

  return v5;
}

+ (id)veryMeaningfulMeanings
{
  if (veryMeaningfulMeanings_onceToken != -1)
  {
    dispatch_once(&veryMeaningfulMeanings_onceToken, &__block_literal_global_56370);
  }

  v3 = veryMeaningfulMeanings_meanings;

  return v3;
}

uint64_t __42__PGGraph_Meaning__veryMeaningfulMeanings__block_invoke()
{
  v0 = [MEMORY[0x277CCAB58] indexSet];
  v1 = veryMeaningfulMeanings_meanings;
  veryMeaningfulMeanings_meanings = v0;

  [veryMeaningfulMeanings_meanings addIndex:12];
  [veryMeaningfulMeanings_meanings addIndex:11];
  [veryMeaningfulMeanings_meanings addIndex:14];
  v2 = veryMeaningfulMeanings_meanings;

  return [v2 addIndex:10];
}

- (void)_reportBusinessItemsWithAnalytics:(id)analytics
{
  v28[4] = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__PGGraph_Metrics___reportBusinessItemsWithAnalytics___block_invoke;
  v10[3] = &unk_27888A0C0;
  v10[4] = &v23;
  v10[5] = &v19;
  v10[6] = &v15;
  v10[7] = &v11;
  [(MAGraph *)self enumerateNodesWithLabel:@"Business" domain:503 usingBlock:v10];
  v27[0] = @"businessItemsCount";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24[3]];
  v28[0] = v5;
  v27[1] = @"businessItemsCountFromPublicEvent";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20[3]];
  v28[1] = v6;
  v27[2] = @"businessItemsCountFromRoutine";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16[3]];
  v28[2] = v7;
  v27[3] = @"businessItemsCountFromMeaningInference";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12[3]];
  v28[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
  [analyticsCopy sendEvent:@"com.apple.Photos.Intelligence.businessItems" withPayload:v9];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void __54__PGGraph_Metrics___reportBusinessItemsWithAnalytics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 32) + 8) + 24);
  v4 = [v3 collection];
  v5 = [v4 publicEventNodes];
  v6 = [v5 count];

  if (v6)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__PGGraph_Metrics___reportBusinessItemsWithAnalytics___block_invoke_2;
    v8[3] = &unk_27888A098;
    v8[4] = &v9;
    [v3 enumerateMomentEdgesAndNodesUsingBlock:v8];
    v7 = 56;
    if (*(v10 + 24))
    {
      v7 = 48;
    }

    ++*(*(*(a1 + v7) + 8) + 24);
    _Block_object_dispose(&v9, 8);
  }
}

void __54__PGGraph_Metrics___reportBusinessItemsWithAnalytics___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  [v8 confidence];
  if (v6 >= 0.6)
  {
    v7 = [v8 hasRoutineInfo];
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

- (void)_reportDisambiguatedLocationsWithAnalytics:(id)analytics
{
  v32[10] = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__PGGraph_Metrics___reportDisambiguatedLocationsWithAnalytics___block_invoke;
  v22[3] = &unk_27888A068;
  v22[4] = &v27;
  v22[5] = &v23;
  [(MAGraph *)self enumerateNodesWithLabel:@"Address" domain:200 usingBlock:v22];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  infoNode = [(PGGraph *)self infoNode];
  v5 = infoNode;
  if (infoNode)
  {
    objc_msgSend_routineInfo(infoNode);
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
  }

  v31[0] = @"improvedLocationsCount";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28[3]];
  v32[0] = v17;
  v31[1] = @"remoteLocationsCount";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24[3]];
  v32[1] = v6;
  v31[2] = @"routineAvailable";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v18];
  v32[2] = v7;
  v31[3] = @"routineNumberOfLocationsOfInterest";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(&v18 + 1)];
  v32[3] = v8;
  v31[4] = @"routineNumberOfVisits";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  v32[4] = v9;
  v31[5] = @"routineNumberOfTimeMatches";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(&v19 + 1)];
  v32[5] = v10;
  v31[6] = @"routineNumberOfCloseByLocationMatches";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
  v32[6] = v11;
  v31[7] = @"routineNumberOfRemoteLocationMatches";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(&v20 + 1)];
  v32[7] = v12;
  v31[8] = @"routineNumberOfMatchRequests";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
  v32[8] = v13;
  v31[9] = @"routinePinningVisitsRatio";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v21 + 1) * 100.0];
  v32[9] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:10];
  [analyticsCopy sendEvent:@"com.apple.Photos.Intelligence.disambiguatedLocations" withPayload:v15];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

void __63__PGGraph_Metrics___reportDisambiguatedLocationsWithAnalytics___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v6 isImproved])
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  v4 = [v6 collection];
  v5 = [v4 momentNodes];
  *(*(*(a1 + 40) + 8) + 24) += [v5 count];

  objc_autoreleasePoolPop(v3);
}

- (void)_reportMobilityWithAnalytics:(id)analytics
{
  v29[4] = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  momentNodes = [(PGGraph *)self momentNodes];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__PGGraph_Metrics___reportMobilityWithAnalytics___block_invoke;
  v11[3] = &unk_27888A040;
  v11[4] = &v24;
  v11[5] = &v20;
  v11[6] = &v16;
  v11[7] = &v12;
  [momentNodes enumerateNodesUsingBlock:v11];

  v28[0] = @"locationMobilityPedestrianCount";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25[3]];
  v29[0] = v6;
  v28[1] = @"locationMobilityBicycleCount";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21[3]];
  v29[1] = v7;
  v28[2] = @"locationMobilityCarCount";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17[3]];
  v29[2] = v8;
  v28[3] = @"locationMobilityPlaneCount";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13[3]];
  v29[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  [analyticsCopy sendEvent:@"com.apple.Photos.Intelligence.locationMobility" withPayload:v10];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

char *__49__PGGraph_Metrics___reportMobilityWithAnalytics___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 locationMobilityType];
  if ((result - 1) <= 3)
  {
    v4 = *(*(a1 + 8 * (result - 1) + 32) + 8);
    ++*(v4 + 24);
  }

  return result;
}

- (void)_reportDeviceOwnerWithAnalytics:(id)analytics photoLibrary:(id)library serviceManager:(id)manager
{
  v40[1] = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  libraryCopy = library;
  managerCopy = manager;
  meNode = [(PGGraph *)self meNode];
  localIdentifier = [meNode localIdentifier];

  [libraryCopy ratioOfAssetsWithFacesProcessed];
  v14 = v13;
  if ([localIdentifier length] && v14 >= 0.9)
  {
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    [librarySpecificFetchOptions setPersonContext:1];
    [librarySpecificFetchOptions setFetchLimit:1];
    [librarySpecificFetchOptions setShouldPrefetchCount:1];
    v16 = MEMORY[0x277CD9938];
    v40[0] = localIdentifier;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    v18 = [v16 fetchPersonsWithLocalIdentifiers:v17 options:librarySpecificFetchOptions];

    if ([v18 count])
    {
      v34 = v18;
      v35 = managerCopy;
      v19 = [managerCopy inferredDeviceOwnerForPhotoLibrary:libraryCopy ignoreContactLinking:1];
      localIdentifier2 = [v19 localIdentifier];

      inferMeNodeFromSocialGroups = [(PGGraph *)self inferMeNodeFromSocialGroups];
      localIdentifier3 = [inferMeNodeFromSocialGroups localIdentifier];

      v23 = [localIdentifier3 length];
      if (v23)
      {
        v24 = [localIdentifier3 isEqualToString:localIdentifier];
      }

      else
      {
        v24 = 0;
      }

      v26 = [localIdentifier2 length];
      if (v26)
      {
        v27 = [localIdentifier2 isEqualToString:localIdentifier];
      }

      else
      {
        v27 = 0;
      }

      v37[0] = MEMORY[0x277CBEC38];
      v36[0] = @"VUEnabled";
      v36[1] = @"graphInferenceAvailable";
      v28 = [MEMORY[0x277CCABB0] numberWithBool:v23 != 0];
      v37[1] = v28;
      v36[2] = @"graphInferenceMatchesGroundTruth";
      v29 = [MEMORY[0x277CCABB0] numberWithBool:v24];
      v37[2] = v29;
      v36[3] = @"vuInferenceAvailable";
      v30 = [MEMORY[0x277CCABB0] numberWithBool:v26 != 0];
      v37[3] = v30;
      v36[4] = @"vuInferenceMatchesGroundTruth";
      v31 = [MEMORY[0x277CCABB0] numberWithBool:v27];
      v37[4] = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:5];
      [analyticsCopy sendEvent:@"com.apple.Photos.Intelligence.deviceOwnerInference" withPayload:v32];

      v18 = v34;
      managerCopy = v35;
    }

    else
    {
      v25 = +[PGLogging sharedLogging];
      localIdentifier2 = [v25 loggingConnection];

      if (os_log_type_enabled(localIdentifier2, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = localIdentifier;
        _os_log_impl(&dword_22F0FC000, localIdentifier2, OS_LOG_TYPE_INFO, "No person node for local identifier %@, skipping device owner metric reporting.", buf, 0xCu);
      }
    }
  }
}

- (void)_reportLibraryWithAnalytics:(id)analytics
{
  v12[4] = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  infoNode = [(PGGraph *)self infoNode];
  v11[0] = @"numberOfUtilityAssets";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(infoNode, "numberOfUtilityAssets")}];
  v12[0] = v6;
  v11[1] = @"numberOfDefaultAssets";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(infoNode, "numberOfDefaultAssets")}];
  v12[1] = v7;
  v11[2] = @"numberOfImprovedAssets";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(infoNode, "numberOfImprovedAssets")}];
  v12[2] = v8;
  v11[3] = @"numberOfBetterAssets";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(infoNode, "numberOfBetterAssets")}];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  [analyticsCopy sendEvent:@"com.apple.Photos.Intelligence.library" withPayload:v10];
}

- (void)reportMetricsLogsWithAnalytics:(id)analytics photoLibrary:(id)library serviceManager:(id)manager
{
  managerCopy = manager;
  libraryCopy = library;
  analyticsCopy = analytics;
  [(PGGraph *)self _reportLibraryWithAnalytics:analyticsCopy];
  [(PGGraph *)self _reportMobilityWithAnalytics:analyticsCopy];
  [(PGGraph *)self _reportDisambiguatedLocationsWithAnalytics:analyticsCopy];
  [(PGGraph *)self _reportBusinessItemsWithAnalytics:analyticsCopy];
  [(PGGraph *)self _reportDeviceOwnerWithAnalytics:analyticsCopy photoLibrary:libraryCopy serviceManager:managerCopy];
}

@end